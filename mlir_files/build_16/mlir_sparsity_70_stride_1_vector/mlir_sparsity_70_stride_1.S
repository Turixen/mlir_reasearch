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
	.quad	27                              # 0x1b
	.quad	56                              # 0x38
	.quad	90                              # 0x5a
	.quad	119                             # 0x77
	.quad	152                             # 0x98
	.quad	183                             # 0xb7
	.quad	217                             # 0xd9
	.quad	255                             # 0xff
	.quad	285                             # 0x11d
	.quad	310                             # 0x136
	.quad	335                             # 0x14f
	.quad	362                             # 0x16a
	.quad	394                             # 0x18a
	.quad	424                             # 0x1a8
	.quad	443                             # 0x1bb
	.quad	469                             # 0x1d5
	.quad	502                             # 0x1f6
	.quad	533                             # 0x215
	.quad	561                             # 0x231
	.quad	598                             # 0x256
	.quad	632                             # 0x278
	.quad	660                             # 0x294
	.quad	684                             # 0x2ac
	.quad	711                             # 0x2c7
	.quad	743                             # 0x2e7
	.quad	778                             # 0x30a
	.quad	809                             # 0x329
	.quad	840                             # 0x348
	.quad	868                             # 0x364
	.quad	898                             # 0x382
	.quad	930                             # 0x3a2
	.quad	961                             # 0x3c1
	.quad	985                             # 0x3d9
	.quad	1024                            # 0x400
	.quad	1044                            # 0x414
	.quad	1070                            # 0x42e
	.quad	1101                            # 0x44d
	.quad	1131                            # 0x46b
	.quad	1161                            # 0x489
	.quad	1189                            # 0x4a5
	.quad	1221                            # 0x4c5
	.quad	1245                            # 0x4dd
	.quad	1276                            # 0x4fc
	.quad	1304                            # 0x518
	.quad	1335                            # 0x537
	.quad	1365                            # 0x555
	.quad	1397                            # 0x575
	.quad	1427                            # 0x593
	.quad	1460                            # 0x5b4
	.quad	1491                            # 0x5d3
	.quad	1523                            # 0x5f3
	.quad	1549                            # 0x60d
	.quad	1585                            # 0x631
	.quad	1616                            # 0x650
	.quad	1649                            # 0x671
	.quad	1679                            # 0x68f
	.quad	1709                            # 0x6ad
	.quad	1738                            # 0x6ca
	.quad	1767                            # 0x6e7
	.quad	1808                            # 0x710
	.quad	1839                            # 0x72f
	.quad	1868                            # 0x74c
	.quad	1903                            # 0x76f
	.quad	1936                            # 0x790
	.quad	1966                            # 0x7ae
	.quad	1996                            # 0x7cc
	.quad	2022                            # 0x7e6
	.quad	2054                            # 0x806
	.quad	2084                            # 0x824
	.quad	2114                            # 0x842
	.quad	2145                            # 0x861
	.quad	2173                            # 0x87d
	.quad	2202                            # 0x89a
	.quad	2232                            # 0x8b8
	.quad	2259                            # 0x8d3
	.quad	2291                            # 0x8f3
	.quad	2325                            # 0x915
	.quad	2349                            # 0x92d
	.quad	2383                            # 0x94f
	.quad	2412                            # 0x96c
	.quad	2436                            # 0x984
	.quad	2463                            # 0x99f
	.quad	2483                            # 0x9b3
	.quad	2517                            # 0x9d5
	.quad	2545                            # 0x9f1
	.quad	2575                            # 0xa0f
	.quad	2601                            # 0xa29
	.quad	2635                            # 0xa4b
	.quad	2675                            # 0xa73
	.quad	2701                            # 0xa8d
	.quad	2736                            # 0xab0
	.quad	2763                            # 0xacb
	.quad	2794                            # 0xaea
	.quad	2819                            # 0xb03
	.quad	2858                            # 0xb2a
	.quad	2891                            # 0xb4b
	.quad	2920                            # 0xb68
	.quad	2954                            # 0xb8a
	.quad	2974                            # 0xb9e
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	85                              # 0x55
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	0x3faf96de56d4dd40              # double 0.061697910403774703
	.quad	0x3fb1f631e2a804d8              # double 0.070162885509506778
	.quad	0x3fccde04e2f2a6d0              # double 0.22552548486173984
	.quad	0x3fe46d424883768d              # double 0.63833727038191201
	.quad	0x3fe1b8850b0eaca3              # double 0.55377437743790769
	.quad	0x3fc4851404eba1fc              # double 0.16031122436767464
	.quad	0x3fc384272a8e603c              # double 0.15247048929154683
	.quad	0x3fe2bd0918122893              # double 0.58557562543252784
	.quad	0x3fefab5f0ceaff69              # double 0.98966934702910436
	.quad	0x3fd554aff9ff3bc6              # double 0.33329390920419788
	.quad	0x3fe0971d65e60a55              # double 0.51844663526601187
	.quad	0x3fae082b82b6eb90              # double 0.058656081873286969
	.quad	0x3fe1716ffc6e47b7              # double 0.54509734442603175
	.quad	0x3fee810945657b2d              # double 0.95325149110781171
	.quad	0x3f940f043410ff20              # double 0.019588533094292093
	.quad	0x3fe534b744ad172a              # double 0.66268504536922035
	.quad	0x3fd0a3eff897d404              # double 0.2600059440295015
	.quad	0x3fe19baa4bf9bf5e              # double 0.55025210226993315
	.quad	0x3f8019ca4d4e38c0              # double 0.0078616909829886116
	.quad	0x3fe7fff80474e194              # double 0.74999619360373737
	.quad	0x3fb5b10065aa59f0              # double 0.08473207933489113
	.quad	0x3fe2324f7722a043              # double 0.56864140766720828
	.quad	0x3fc60e734fd780e8              # double 0.17231599234128869
	.quad	0x3fea5c1a57c46525              # double 0.82374302999520366
	.quad	0x3fefcd976a21f029              # double 0.99384661416070685
	.quad	0x3f724302ff4a8300              # double 0.0044584385947536997
	.quad	0x3fe0f18ac99c42ba              # double 0.5294851243689529
	.quad	0x3faa7da3ac566980              # double 0.051739802157686476
	.quad	0x3fdd4fe1fcfc94f4              # double 0.45800065713622407
	.quad	0x3fe80571f930877f              # double 0.75066469831311611
	.quad	0x3fd2fe998e7342a8              # double 0.29678954039722294
	.quad	0x3fd7a0e5a25ad25e              # double 0.36919537405927894
	.quad	0x3feb2bfcf08cbcb0              # double 0.84911963446019989
	.quad	0x3fe9fc9900473afa              # double 0.81208467535347428
	.quad	0x3fe127a1b987a5aa              # double 0.53608785854628604
	.quad	0x3fe7ec8ce6938e46              # double 0.74762578043414218
	.quad	0x3fe857fbde85f92f              # double 0.7607402177962167
	.quad	0x3fd8a89989fed438              # double 0.38529051281085769
	.quad	0x3fe3e29bb165aacd              # double 0.62141213081243907
	.quad	0x3fde2ea0a0f33384              # double 0.47159591405652912
	.quad	0x3fd816e0dcd715fa              # double 0.37639638487266291
	.quad	0x3fde5c0ef6ad21f8              # double 0.47436880197031384
	.quad	0x3feb653be7678005              # double 0.85610766597892562
	.quad	0x3fc468e142998908              # double 0.15945068122807293
	.quad	0x3fd0322b1090edc4              # double 0.25306202523981036
	.quad	0x3fd05defda77c4e4              # double 0.255733455035694
	.quad	0x3fd2617e61a16c9c              # double 0.28720054182276455
	.quad	0x3fe0ec4fff8fbf22              # double 0.52884673990590536
	.quad	0x3fceb40ff668e0bc              # double 0.23987006694529167
	.quad	0x3fe991b9315b6630              # double 0.79903850212139638
	.quad	0x3fdbb580c6ae34a2              # double 0.43295306589500104
	.quad	0x3feca4152bd2d3db              # double 0.89502962645803608
	.quad	0x3fef475d8f4edb9d              # double 0.9774616049752357
	.quad	0x3fa8fa336303f310              # double 0.048783880078167141
	.quad	0x3fe1bb6790634a28              # double 0.55412653160812386
	.quad	0x3feb36b24d2612a3              # double 0.85042681758985272
	.quad	0x3fed4b5abc656fc8              # double 0.91544853969707507
	.quad	0x3fe4d5cb7ff984d9              # double 0.65109801287703839
	.quad	0x3fe9a0d7dd5329cb              # double 0.80088418223868396
	.quad	0x3fe920583334a484              # double 0.78519830704785009
	.quad	0x3feb885a7eb07187              # double 0.86039471382132227
	.quad	0x3fe2507352b9de05              # double 0.57232061536245793
	.quad	0x3fe1d4db42ff5218              # double 0.55723345837992877
	.quad	0x3fd8479aae297e9e              # double 0.37937037475601609
	.quad	0x3fe0800537e24804              # double 0.51562748827768745
	.quad	0x3fec5c7a99eff7ad              # double 0.88628892961400185
	.quad	0x3fd6817d1a647576              # double 0.35165336205849174
	.quad	0x3fd99db1a9081bb4              # double 0.4002498770427636
	.quad	0x3fa59253ca4e41e0              # double 0.042132013745802999
	.quad	0x3fe625afbc0f0348              # double 0.69210039835170623
	.quad	0x3fd9c474801f7898              # double 0.40261566650395642
	.quad	0x3fd19319af6d8b56              # double 0.27460329181319787
	.quad	0x3fd235d100787926              # double 0.28453469320256131
	.quad	0x3fd98a98c35782f4              # double 0.3990842731127906
	.quad	0x3fef44a00e980771              # double 0.97712710237850164
	.quad	0x3fe8278bcccaa474              # double 0.75482740400651815
	.quad	0x3fd158a4d572af34              # double 0.27103539318590042
	.quad	0x3fe37c0b70ca236b              # double 0.60889217404574703
	.quad	0x3fee9366e6330d66              # double 0.95549340210747569
	.quad	0x3fe95cffe4003ad2              # double 0.7926024869101076
	.quad	0x3fd2300e99e0fa36              # double 0.2841831686709243
	.quad	0x3fdfe9e249bc4de8              # double 0.49865014267672203
	.quad	0x3fe1ef5e55469789              # double 0.5604697862188327
	.quad	0x3fdffbec3576e89c              # double 0.4997511407961015
	.quad	0x3fede7e434035b52              # double 0.93455705794154142
	.quad	0x3fe63f33368547fe              # double 0.69521484993515492
	.quad	0x3fe2577d1bbd07de              # double 0.57317977349907401
	.quad	0x3fe9ec89c84822da              # double 0.81012429349456316
	.quad	0x3fea6b6d5d0f5f43              # double 0.82561367202558988
	.quad	0x3fd849e81ebe64fc              # double 0.37951090814892985
	.quad	0x3fd0e1fec673fe5c              # double 0.2637936532991938
	.quad	0x3fdcc18648e0b7d8              # double 0.44931180111859481
	.quad	0x3fc1de845fd6bfc4              # double 0.13960318259841931
	.quad	0x3fe0fee2162d58e1              # double 0.53111366588089137
	.quad	0x3fcd159322bd4780              # double 0.22722090908296977
	.quad	0x3fd705f071582976              # double 0.35973750180041664
	.quad	0x3fdf4f3297281420              # double 0.48920883904821899
	.quad	0x3fc4179379d48028              # double 0.15696948479399109
	.quad	0x3fba06da328d3520              # double 0.10166705831689571
	.quad	0x3fef51c4fb973426              # double 0.97873162401959202
	.quad	0x3fe18b2d61b07fb7              # double 0.54823941307039703
	.quad	0x3fcec7f1bfce1298              # double 0.24047681680180655
	.quad	0x3fe01ca0979d152f              # double 0.50349454509765745
	.quad	0x3fa23bd61136f730              # double 0.035612763978390638
	.quad	0x3fe54da0c2e59238              # double 0.66572607103132153
	.quad	0x3fc0741cbddf7d64              # double 0.12854346533911631
	.quad	0x3fc41935c2501e84              # double 0.15701934802949691
	.quad	0x3feb2b0f94b4304e              # double 0.84900645297740041
	.quad	0x3febaefaf1bc6394              # double 0.86510989393274195
	.quad	0x3fca748fab949784              # double 0.20668216588927291
	.quad	0x3fd823a1f8e8abe2              # double 0.37717484767443754
	.quad	0x3fd3c30dd0562ce2              # double 0.30878014893887784
	.quad	0x3fe0a9ab9401bc9f              # double 0.52071169765067171
	.quad	0x3fc14342402a5c94              # double 0.1348650754268631
	.quad	0x3fd1429b82cc4f22              # double 0.26969039700746766
	.quad	0x3fc4e4a79f5711c4              # double 0.16322798996237797
	.quad	0x3fed27da2f900e15              # double 0.91111478128044843
	.quad	0x3fe49a4053b5aba5              # double 0.64382950162449915
	.quad	0x3fe97de008581403              # double 0.79661561612795173
	.quad	0x3fde668b06f2a85a              # double 0.47500873259071386
	.quad	0x3fb17409251641d0              # double 0.06817681460802949
	.quad	0x3fef0ec11e9c7c4f              # double 0.97055107096447013
	.quad	0x3fe5c18cdbb8703c              # double 0.67987673677590221
	.quad	0x3fd5fabe21149296              # double 0.34342911940101695
	.quad	0x3fee6d3297e1c525              # double 0.95082978882252134
	.quad	0x3fcdc7a2eac34608              # double 0.23265491927172399
	.quad	0x3fee814dd527f552              # double 0.9532841838078332
	.quad	0x3fee70a0f13fe23c              # double 0.95124861830760876
	.quad	0x3fec34976f345851              # double 0.88141986579536014
	.quad	0x3fe2cad3a5858074              # double 0.5872591240731837
	.quad	0x3fe8cbdc791cc780              # double 0.77488540320176469
	.quad	0x3fc145e73a08f244              # double 0.13494577726113921
	.quad	0x3fd3011dcebfec30              # double 0.29694314184570469
	.quad	0x3fc8e7113d57a4bc              # double 0.19455161566955848
	.quad	0x3fc58baf4aa726c8              # double 0.16832533974802844
	.quad	0x3fe2e0d623165ba4              # double 0.58994585850711134
	.quad	0x3fd5289fa3e8cbea              # double 0.33060446745656569
	.quad	0x3fe4990a65bf1609              # double 0.64368171570157628
	.quad	0x3fe6cd4452ab47cf              # double 0.71255699297238972
	.quad	0x3fe3af752748e15c              # double 0.61516816780844463
	.quad	0x3fe6e95bbc92a5e1              # double 0.71598612623818891
	.quad	0x3fc92db8a9d6d038              # double 0.19670780461240311
	.quad	0x3fa82c80571488b0              # double 0.047214518194111377
	.quad	0x3fd2954de8e8e5aa              # double 0.29036281342595294
	.quad	0x3fe89999fe68a58c              # double 0.76875018777097769
	.quad	0x3fd33f7477776fee              # double 0.30074798266082226
	.quad	0x3fd11b5b3e599768              # double 0.26729470337737959
	.quad	0x3fef59d684b2bb0f              # double 0.97971654813395214
	.quad	0x3fc25f8740bcddb4              # double 0.14354029332183205
	.quad	0x3fee658e6ec9f726              # double 0.94989701879942312
	.quad	0x3fd2545a425c638a              # double 0.28639847260051765
	.quad	0x3fc0391b04669a8c              # double 0.12674272265322306
	.quad	0x3fe2a13b88a4feb4              # double 0.58218170822507043
	.quad	0x3feffe55ed3dc0e6              # double 0.99979683242966355
	.quad	0x3feb5ebb8056638b              # double 0.85531401697072462
	.quad	0x3fea3d11e7625fb4              # double 0.81995482628098281
	.quad	0x3fd9ac781ca15c68              # double 0.40115168376855204
	.quad	0x3fd2c9c3ffe1c0e6              # double 0.29356479633771781
	.quad	0x3fc23f0f83bf57bc              # double 0.14254945691089727
	.quad	0x3fedffc68c95a8d6              # double 0.9374726053040614
	.quad	0x3fe17ee9680a27ce              # double 0.54674215622184774
	.quad	0x3fe7b268e1cec276              # double 0.74052852728898588
	.quad	0x3fba7f16f69c8cf0              # double 0.10350173493184278
	.quad	0x3fcf85766abc1cdc              # double 0.24626045428906351
	.quad	0x3fe598d6b106d008              # double 0.67490706038961523
	.quad	0x3fe63cd79cc19067              # double 0.69492703072002093
	.quad	0x3fe3fd676160e104              # double 0.62468308467126166
	.quad	0x3fec003dc3e5114c              # double 0.87502945194914039
	.quad	0x3fc2aa8166501e3c              # double 0.14582841392278734
	.quad	0x3fe9fc47aebf51e5              # double 0.81204589968052387
	.quad	0x3feab22212f2b243              # double 0.83424476338183984
	.quad	0x3fe29cbf7cd521cf              # double 0.58163427716595517
	.quad	0x3fd9f63ab062773a              # double 0.40565364098607726
	.quad	0x3fe5a5781063a989              # double 0.67644885254894505
	.quad	0x3fed9e77e0fdf5f9              # double 0.92559427207714784
	.quad	0x3fa750622d0ed570              # double 0.04553515243552908
	.quad	0x3fcbcea248494c88              # double 0.21724346665959993
	.quad	0x3fee69bfdf14b351              # double 0.95040887423020071
	.quad	0x3fdee12225b9fa24              # double 0.48249105152345551
	.quad	0x3fd954290ac210bc              # double 0.39576173830597461
	.quad	0x3fe2f20df5abe43c              # double 0.59204767210679377
	.quad	0x3fea8473a265b443              # double 0.8286684200117026
	.quad	0x3fe88e6b119f552e              # double 0.76738503877519348
	.quad	0x3fe28dd60289ef66              # double 0.57981396194325607
	.quad	0x3fe9d734e9bcf888              # double 0.80752034809099005
	.quad	0x3fe7b3026811320e              # double 0.74060173345202585
	.quad	0x3fc6142a27ee0420              # double 0.17249037694640013
	.quad	0x3fd901e8c9724c82              # double 0.39074153587825589
	.quad	0x3fe8fc13ac8b9115              # double 0.78077110004645311
	.quad	0x3fec064b728ee8a8              # double 0.87576839804321072
	.quad	0x3fed7a2a4a1a25e4              # double 0.92116274331163738
	.quad	0x3fd584f4a0445016              # double 0.33623996401843337
	.quad	0x3fb4b182b7939db8              # double 0.08083359701014714
	.quad	0x3fa65f92c6326be0              # double 0.043697916692700067
	.quad	0x3fd3a455393efa62              # double 0.30690508451872323
	.quad	0x3feb2f8482f8de47              # double 0.8495504911470072
	.quad	0x3fea86fd72ee1aaa              # double 0.82897827575000815
	.quad	0x3f7017cbf3c37b80              # double 0.0039289442904352212
	.quad	0x3fead06d9aa0cfc0              # double 0.83794288826765495
	.quad	0x3feb3a8c4b0e55d8              # double 0.85089697512983786
	.quad	0x3fbd8c270ac79d78              # double 0.11541980755975156
	.quad	0x3fd710b9b0d61d4e              # double 0.36039583462885083
	.quad	0x3fe5ff602ae02678              # double 0.68742378591669162
	.quad	0x3fc1dfc37c82d80c              # double 0.13964122371334076
	.quad	0x3fee8694d1f8c4c9              # double 0.95392838487728071
	.quad	0x3f840198dbc4f000              # double 0.0097686712330116166
	.quad	0x3fe57e334e9120d1              # double 0.67165532441233655
	.quad	0x3fd32632d96e95c6              # double 0.29920645936575985
	.quad	0x3fc4477741a02b04              # double 0.15843096451165917
	.quad	0x3fdcbedfa6c8fff2              # double 0.44915000236142
	.quad	0x3fe7f8d1df0ee722              # double 0.74912351194436533
	.quad	0x3feeb8e60940b0bb              # double 0.96007062728087733
	.quad	0x3f9f66498d55cb00              # double 0.030663632632648152
	.quad	0x3fe0d006b1240155              # double 0.52539381597311297
	.quad	0x3fef199bef1737ae              # double 0.97187611291314169
	.quad	0x3fdf143a0358120a              # double 0.4856095345169541
	.quad	0x3fe3053dd53b136b              # double 0.59438983580240057
	.quad	0x3fe5f2be5a153639              # double 0.68588178247745824
	.quad	0x3fb5d33ae972eaf0              # double 0.085254365915641505
	.quad	0x3fb05fc2a9a97b28              # double 0.063961187764544847
	.quad	0x3fe54e44008c00e3              # double 0.66580391032041708
	.quad	0x3fd14503068c93c4              # double 0.26983714713633966
	.quad	0x3fbf018326a1e528              # double 0.12111682599233531
	.quad	0x3fe9013aa4a72cdd              # double 0.78140003355784027
	.quad	0x3fdef15c762de4ba              # double 0.48348151722855059
	.quad	0x3febc4b11a97ec1d              # double 0.86776023096115618
	.quad	0x3fc4cf55348417e8              # double 0.16257729591615022
	.quad	0x3fea988161416c1d              # double 0.83111638064599769
	.quad	0x3fd9987726086460              # double 0.39993075098170117
	.quad	0x3fdb39bb153512a2              # double 0.42539860793139372
	.quad	0x3f7266c4664f3d00              # double 0.0044925376759714641
	.quad	0x3fe4384ec329278e              # double 0.63187349431358242
	.quad	0x3fecf6ebe8fcd7c4              # double 0.9051417875805261
	.quad	0x3fe00195711caf8f              # double 0.50019332973669062
	.quad	0x3fdeb2981ca7c00e              # double 0.47965052412382725
	.quad	0x3fdb47a04530a094              # double 0.42624670750456883
	.quad	0x3fe4a17674233baa              # double 0.64470980342035955
	.quad	0x3fee81e871c98cba              # double 0.95335790847857216
	.quad	0x3faf103749bea330              # double 0.060670593025241693
	.quad	0x3fd8d82c4d850814              # double 0.38819415636328469
	.quad	0x3fd3bbfcb2beebe2              # double 0.30834882217066995
	.quad	0x3fb3c1c731d59a98              # double 0.077175569216345941
	.quad	0x3fdbbbc4ddb8654c              # double 0.43333551075337051
	.quad	0x3fe9580062f8091e              # double 0.79199237184392124
	.quad	0x3fea62cea96e2fbc              # double 0.82456143466833209
	.quad	0x3fe52edb636b9b51              # double 0.66196984689745808
	.quad	0x3fd6a7f020e6bdd0              # double 0.35400012219448929
	.quad	0x3fe9dcb3e2d7fcd9              # double 0.80819124513063934
	.quad	0x3fe9c435838676c5              # double 0.80520129860425327
	.quad	0x3fc731a7b8bc64ac              # double 0.18120285530384217
	.quad	0x3fef59591e5ef0e1              # double 0.97965675288972076
	.quad	0x3fc661ca88f2bc4c              # double 0.1748593491260827
	.quad	0x3fe742892cf0489a              # double 0.72687205102035368
	.quad	0x3fe41d7ad0e1eb18              # double 0.62859860226976405
	.quad	0x3fe0b4e8f8e77706              # double 0.52208374609082919
	.quad	0x3fc12da621622f68              # double 0.13420559530311071
	.quad	0x3febaa560d99ba0a              # double 0.86454298645350147
	.quad	0x3feac930346d58a2              # double 0.83705911864923999
	.quad	0x3f679eadecf74c00              # double 0.0028832814202615076
	.quad	0x3fc1a11081b32ff0              # double 0.13772779782300359
	.quad	0x3fea1af60d57777b              # double 0.81579115491670906
	.quad	0x3fc4e32981440ab4              # double 0.16318243800931997
	.quad	0x3fcf1367c12a0bd4              # double 0.24277970249030878
	.quad	0x3f9fbb7e3e3e1a60              # double 0.03098866705797787
	.quad	0x3fec44dc71f2fd87              # double 0.88340589767169397
	.quad	0x3fc8168eac21e60c              # double 0.18818839459326886
	.quad	0x3fe455cf67da76b6              # double 0.63547487529623115
	.quad	0x3fe6d5509eb73cfd              # double 0.71353941916632346
	.quad	0x3fb0463a886137d8              # double 0.063571604057158893
	.quad	0x3fd3e6b4909dc44a              # double 0.31095613596614113
	.quad	0x3fe78719c5a9f32f              # double 0.73524178129409801
	.quad	0x3fe95ab3fdf51889              # double 0.79232215500884806
	.quad	0x3fe19a0d4780cdc4              # double 0.55005516019303302
	.quad	0x3febe36afb85e23b              # double 0.87151097417433421
	.quad	0x3fe60a0d9aff6d9d              # double 0.68872719071389421
	.quad	0x3fe8d0716c8f6249              # double 0.77544470980780844
	.quad	0x3fcc5263627a8280              # double 0.22126428898356565
	.quad	0x3fe172a66c54f814              # double 0.54524537237716908
	.quad	0x3fb39291af420840              # double 0.076455216682036031
	.quad	0x3fd92e1a53b3de72              # double 0.39343889402468968
	.quad	0x3fdbc05151dd0056              # double 0.43361313814603386
	.quad	0x3fe52d22d9e96934              # double 0.66175978241816447
	.quad	0x3fdbf4dfe900015e              # double 0.43682096246631896
	.quad	0x3fe8eda8366921a0              # double 0.77901087405284741
	.quad	0x3fe4313d48081a78              # double 0.63101066654856108
	.quad	0x3fe3f30c8043706a              # double 0.6234190468926617
	.quad	0x3fcade8428731480              # double 0.20991565680575164
	.quad	0x3fd7ce7a57a7cf16              # double 0.37197741088969971
	.quad	0x3fec69d2672a78fb              # double 0.88791771077720172
	.quad	0x3fdb31e09f574544              # double 0.42491927681574659
	.quad	0x3fb97647b4d04a38              # double 0.099461061138108486
	.quad	0x3fddf307aaee0980              # double 0.46795837108961535
	.quad	0x3fe8f3a914dbb518              # double 0.77974371026872102
	.quad	0x3faf9b1ac43a5cb0              # double 0.061730228856668901
	.quad	0x3fd0da03ad0ecce0              # double 0.26330654049088587
	.quad	0x3fd69bc5ce87d18a              # double 0.35325761002538825
	.quad	0x3fdfb19c8aad4cb6              # double 0.4952155451075656
	.quad	0x3fc7821dff13f300              # double 0.18365836100556265
	.quad	0x3fe21edf8a37d823              # double 0.56626870151263053
	.quad	0x3fe39affd55f0185              # double 0.61267081903501774
	.quad	0x3fbb9a0dbcad2558              # double 0.10781942230564334
	.quad	0x3fec8b03f9924851              # double 0.89196966881196194
	.quad	0x3fe6dd538a19db0d              # double 0.71451737377978619
	.quad	0x3fe6363ad3d71945              # double 0.69411984801335136
	.quad	0x3fdccfccc7bd77ea              # double 0.45018310075636114
	.quad	0x3fc7878d94537cc8              # double 0.18382425062643493
	.quad	0x3feafaccd3a0a1d3              # double 0.84311524709215246
	.quad	0x3feb2300b030b2f4              # double 0.84802278911737838
	.quad	0x3fed56b49fe796be              # double 0.91683417540908585
	.quad	0x3fe9871aaa9caf91              # double 0.79774220774332794
	.quad	0x3fe41bc6e31555af              # double 0.62839073517050348
	.quad	0x3fe3335cfbe95cc3              # double 0.60001992417792172
	.quad	0x3fcbbb89d425ccfc              # double 0.21666071757099548
	.quad	0x3fece1a0df37e2a2              # double 0.90254253003429974
	.quad	0x3fde248e93cef814              # double 0.47098125872059993
	.quad	0x3fe8c99c5e605d14              # double 0.77461069519896108
	.quad	0x3fe32846c4dade1e              # double 0.59866655777199518
	.quad	0x3fbc647f8879bda8              # double 0.11090848047182666
	.quad	0x3feecd549bc909d6              # double 0.96256475855653423
	.quad	0x3fb3e2713ef61040              # double 0.077673986312277954
	.quad	0x3feeb9db72a7eebe              # double 0.96018764871356388
	.quad	0x3fe37c28c4efd2ac              # double 0.6089061590597189
	.quad	0x3fdfae9f4677955c              # double 0.49503309136919937
	.quad	0x3feceff9592f05f6              # double 0.90429370325745029
	.quad	0x3fd2b663c8428c64              # double 0.29238218838344765
	.quad	0x3fbd7d1fb44dd7e0              # double 0.11519048835711443
	.quad	0x3fef11e9178ff003              # double 0.97093634225848324
	.quad	0x3feda10b861aca58              # double 0.92590881531061608
	.quad	0x3fecb86f0e9be7af              # double 0.89751389363595091
	.quad	0x3fe371508fa65868              # double 0.60758235985373421
	.quad	0x3fe7e16876e4fe95              # double 0.74626563283523473
	.quad	0x3feb30b69de80b8a              # double 0.84969645348643152
	.quad	0x3fe057e7d623ed3b              # double 0.51073066543850787
	.quad	0x3fe07602ddb7e3cc              # double 0.51440566353186901
	.quad	0x3fef102d796b2ab2              # double 0.97072480883192314
	.quad	0x3feac170dead9b77              # double 0.83611339084460112
	.quad	0x3fd6bf7281b8e0fe              # double 0.35543501537496514
	.quad	0x3fac3f4ba44d8f70              # double 0.055170406157030949
	.quad	0x3fea8393157d9b14              # double 0.82856134602920628
	.quad	0x3fc2987be0796418              # double 0.14527843914655203
	.quad	0x3fe4ef6c05ea31eb              # double 0.65422631411780452
	.quad	0x3fe7483d7258f3ab              # double 0.72756836255540713
	.quad	0x3fefa2120f6e02f0              # double 0.98853400243396372
	.quad	0x3fd797bdd944507e              # double 0.36863657205072531
	.quad	0x3fe1fbd8e72b86e3              # double 0.56199307585140124
	.quad	0x3fdeeb9cbcead5bc              # double 0.48313063096005826
	.quad	0x3fec6557d9171299              # double 0.88737099075713666
	.quad	0x3fb891218edf0a30              # double 0.095964524632144998
	.quad	0x3fce55bf429227ac              # double 0.2369917941144285
	.quad	0x3fe6efe9dd10a4da              # double 0.71678631951103999
	.quad	0x3fd9134ddcec21d8              # double 0.39180323194935118
	.quad	0x3fb0d964c0e15120              # double 0.065817162599448142
	.quad	0x3fefb94ae6209836              # double 0.99136872240774809
	.quad	0x3fedf47a1201f526              # double 0.93609336392515696
	.quad	0x3fef577b1cbcf740              # double 0.97942882168693046
	.quad	0x3f89fc3a9fad6d00              # double 0.012688119886368643
	.quad	0x3fdc4e5bd4beac7e              # double 0.4422826364122513
	.quad	0x3fe5420937437be1              # double 0.66431103509591705
	.quad	0x3fea58e552a063e7              # double 0.82335153711312337
	.quad	0x3fdafe0c7bdc88c4              # double 0.42175590606542479
	.quad	0x3fc02852524ac75c              # double 0.12623051660699047
	.quad	0x3fde2763662b12d6              # double 0.47115406968468443
	.quad	0x3fa2888719177870              # double 0.036197873890828514
	.quad	0x3fd7e7d8c3a6235a              # double 0.37352580171914485
	.quad	0x3fc19e62b915cce4              # double 0.13764604604111874
	.quad	0x3f880ce9515ea100              # double 0.011743376537041161
	.quad	0x3fd657e17dfeb7b6              # double 0.34911382011602698
	.quad	0x3fccb227da9b3924              # double 0.22418687986505248
	.quad	0x3fc84e0291b1a9f0              # double 0.18988067735638436
	.quad	0x3fe86682693c1afe              # double 0.7625133567206317
	.quad	0x3fe04c013f5566a7              # double 0.50927793855517656
	.quad	0x3fe929af031659fd              # double 0.78633833506574968
	.quad	0x3fe35a41f465f8b5              # double 0.60476777776764001
	.quad	0x3fe971c166f10aec              # double 0.79513616662765462
	.quad	0x3fe23e63ff73d52d              # double 0.57011604207096911
	.quad	0x3fe850b2eaa0470d              # double 0.75985093903929768
	.quad	0x3fdf2d4967b9484c              # double 0.48713908318780308
	.quad	0x3f80424cb1f7efc0              # double 0.0079389564334561013
	.quad	0x3fb3e4a8c45da7f8              # double 0.077707813206558174
	.quad	0x3fc77f168d2cda78              # double 0.18356592076607448
	.quad	0x3fd75edc4a4a6ad0              # double 0.36516482596350119
	.quad	0x3fc8b7a4db70e760              # double 0.19310436930555408
	.quad	0x3fd5f02f8425cdb2              # double 0.34278476624532594
	.quad	0x3fe862ab0a8146e9              # double 0.76204444934611815
	.quad	0x3f81d01fb6669980              # double 0.0086977460421848729
	.quad	0x3fe90e601b75c8a4              # double 0.78300481189059611
	.quad	0x3fb726e35ba117a0              # double 0.090437135572840166
	.quad	0x3fd302184e32c088              # double 0.29700286518619423
	.quad	0x3fd223bc668d78e4              # double 0.28343114867119668
	.quad	0x3fe32de7cbf7e68b              # double 0.59935369336672417
	.quad	0x3fe8beab338eddf9              # double 0.77327499456345017
	.quad	0x3fca1dd3ba1f5bc0              # double 0.20403524959576025
	.quad	0x3fe66fea84e58150              # double 0.70116163212154881
	.quad	0x3fe887bb5a0955bd              # double 0.76656882844206786
	.quad	0x3fe679057dacd2e7              # double 0.70227312608639358
	.quad	0x3fd3bf496b4ac1fa              # double 0.3085502193235069
	.quad	0x3fca73b05f984e1c              # double 0.20665554683419962
	.quad	0x3facd45dcd9c8570              # double 0.05630772719292565
	.quad	0x3fd196a3641880ec              # double 0.2748192288872946
	.quad	0x3fe2178de5941539              # double 0.56537527884999073
	.quad	0x3fe48fd0907e4ff0              # double 0.64255550595635036
	.quad	0x3fe1c7960a990c2c              # double 0.55561353750124942
	.quad	0x3fe482faacae9722              # double 0.64098867155982853
	.quad	0x3fcda061d3d6f2b0              # double 0.23145697444660618
	.quad	0x3f80882981e2ce40              # double 0.0080722086680459215
	.quad	0x3fd943b1ea419e70              # double 0.39475677372545359
	.quad	0x3fe155b30ebc7d7f              # double 0.54171135786229729
	.quad	0x3fca748cf7201ddc              # double 0.2066818434397949
	.quad	0x3fee9cd5776e0e62              # double 0.95664475752023415
	.quad	0x3fe8f5347e2707f6              # double 0.77993225707200398
	.quad	0x3fe15fedf4fe553e              # double 0.54296014642992652
	.quad	0x3fde1b93c74a55b0              # double 0.4704331823534984
	.quad	0x3fd139892b23cf3a              # double 0.26913670742873175
	.quad	0x3fe221c1f6a8698c              # double 0.56662080932010062
	.quad	0x3feb5856a94af6dc              # double 0.85453351082807271
	.quad	0x3fef2d111350d389              # double 0.97425130627253608
	.quad	0x3fc99bbfe1790924              # double 0.20006559857763151
	.quad	0x3fdde77849aa8d3c              # double 0.46725279993025359
	.quad	0x3fc2cec426157c10              # double 0.14693500384871117
	.quad	0x3fe6410784598d8a              # double 0.69543815469335013
	.quad	0x3fd888790cf1c50c              # double 0.38332964195349528
	.quad	0x3fd5204855394446              # double 0.33009537050844917
	.quad	0x3feef4f12dce4fb6              # double 0.96740015932527146
	.quad	0x3feda1e4acaf101d              # double 0.92601236083328653
	.quad	0x3fc16fde772e9434              # double 0.13622647113257502
	.quad	0x3fdba15c42d5f59c              # double 0.43172365691119707
	.quad	0x3fd348b34cf7267a              # double 0.3013122798553024
	.quad	0x3fe6d256c03d833f              # double 0.71317613169603777
	.quad	0x3fee9d6652fb1a83              # double 0.95671383101655783
	.quad	0x3fc5031670bc6524              # double 0.16415672783549795
	.quad	0x3fdb1fecc2e774d8              # double 0.423823538147031
	.quad	0x3fb40f8e2f6b85a0              # double 0.078362356736326522
	.quad	0x3fe107b3a6a191e6              # double 0.53219015641348899
	.quad	0x3fc75006123054d4              # double 0.18212962997555471
	.quad	0x3fce0f34a2a28b0c              # double 0.23483903828772446
	.quad	0x3fddcce8577f332e              # double 0.46563156647316617
	.quad	0x3fda112d747bd0ec              # double 0.40729843497616858
	.quad	0x3fe0cf5e4150a7b2              # double 0.52531349903914859
	.quad	0x3fa289cc1e1b84a0              # double 0.036207560229521762
	.quad	0x3fa1ab8c653fe880              # double 0.034511935576987618
	.quad	0x3fe24eb6e35dafd8              # double 0.57210869223990368
	.quad	0x3fc8cc1893787e40              # double 0.19372851563183424
	.quad	0x3fc03ab363cddae8              # double 0.12679140446899528
	.quad	0x3fe9f82aba0c61de              # double 0.81154381120273533
	.quad	0x3fe9a25d056ba608              # double 0.80106974657718499
	.quad	0x3fe6d8436523b2da              # double 0.71389932397650147
	.quad	0x3fc34649515ff6dc              # double 0.15058247064000951
	.quad	0x3fed636edfe4ccdf              # double 0.91838783005951174
	.quad	0x3f9f53ebdaffa980              # double 0.030593571893328342
	.quad	0x3fe7786b1f261177              # double 0.73344951709491013
	.quad	0x3fd242ec58e803f0              # double 0.28533466989762157
	.quad	0x3fe5f3b7d90d53a2              # double 0.68600075142841299
	.quad	0x3fe7a56286d9a724              # double 0.73893858278208713
	.quad	0x3faea3c0c5a80950              # double 0.059843086364724685
	.quad	0x3fa137f1184c8980              # double 0.033629926887686956
	.quad	0x3fb2d39b51ad3cc8              # double 0.073541362228968343
	.quad	0x3fa0d72fd73ab780              # double 0.032891745589366472
	.quad	0x3fed23e3a98573b8              # double 0.91063101873043362
	.quad	0x3fce98353f9c8e64              # double 0.23902001958878138
	.quad	0x3fce809be04d44d8              # double 0.23829983188856008
	.quad	0x3fd32cfe60114b66              # double 0.29962119466397608
	.quad	0x3fd079b3a3f28c18              # double 0.25742808351987057
	.quad	0x3fbc13f398e05728              # double 0.10967943651516221
	.quad	0x3fe59f2e93b1b1f2              # double 0.67568138929851629
	.quad	0x3fe5df769abed499              # double 0.68352823470799529
	.quad	0x3fe9ce48db2b8e99              # double 0.80643122488659735
	.quad	0x3fd4cf3f198b877c              # double 0.32514932150490217
	.quad	0x3fd7a53cf96f2b2e              # double 0.36946033819974644
	.quad	0x3fc5ed927437f700              # double 0.1713126246904082
	.quad	0x3fe27b25e5c64900              # double 0.57753271940080708
	.quad	0x3fd80a997ff860d6              # double 0.37564694878666438
	.quad	0x3fe051bdccb63fa3              # double 0.50997819884104378
	.quad	0x3fed35f43579e105              # double 0.91283617443608078
	.quad	0x3fb3a2e3a9c7bff8              # double 0.076704243612539247
	.quad	0x3fb22eadfc6cede8              # double 0.071024774672813984
	.quad	0x3fe0e585b29d9b7a              # double 0.52801785360212183
	.quad	0x3fdc00427007a8ec              # double 0.43751583996221544
	.quad	0x3fe7099b5081b95a              # double 0.71992269252749996
	.quad	0x3fc8cf38a62346b4              # double 0.19382389175603054
	.quad	0x3fe974dd32a349e4              # double 0.79551563158230154
	.quad	0x3fe7fb5af18fd2be              # double 0.74943301372567084
	.quad	0x3fe52792d24fe84d              # double 0.66108075214948203
	.quad	0x3fd364563c98afce              # double 0.30299907605762832
	.quad	0x3fcb8db3d9aad1f0              # double 0.21526191833767383
	.quad	0x3fdb154d3836e1d0              # double 0.42317514886556484
	.quad	0x3fe6b5b2b5e86b73              # double 0.70967994240650822
	.quad	0x3fef3518a61ed6b0              # double 0.97523148007777216
	.quad	0x3fd82e4135a1d67a              # double 0.37782316434400054
	.quad	0x3fe63ea98ded2dc3              # double 0.69514920921340495
	.quad	0x3fe9ef03b328697a              # double 0.81042656890649245
	.quad	0x3fe43745990b1d6a              # double 0.63174705401699538
	.quad	0x3fcc1756f4663ad4              # double 0.21946227010308539
	.quad	0x3feef41c2f217783              # double 0.96729859547825502
	.quad	0x3feaa8c30717f29e              # double 0.83310080895860827
	.quad	0x3fdc6ab017b35d1c              # double 0.44401171030536246
	.quad	0x3fe64323f55c5a70              # double 0.69569585725805716
	.quad	0x3fe76b453a4219fd              # double 0.7318445337157865
	.quad	0x3fd95bbad9636ab0              # double 0.3962237475331376
	.quad	0x3fe83d43cc3110c2              # double 0.75747861748870826
	.quad	0x3fd7279b1fecec72              # double 0.36179235570643364
	.quad	0x3fd3f1c682a540bc              # double 0.31163180120803324
	.quad	0x3fd2da09bcce946e              # double 0.29455798566988889
	.quad	0x3fede94dceed7591              # double 0.93472948470632578
	.quad	0x3fc20e4647ba5f58              # double 0.14106062414497944
	.quad	0x3fe184fc0650bc0e              # double 0.54748345597715953
	.quad	0x3fef62b8444791fa              # double 0.98080075584272142
	.quad	0x3fd65ba3d7aedf7a              # double 0.3493432623176812
	.quad	0x3fbabca6abcb1bd8              # double 0.10444108671354912
	.quad	0x3fe8d3a600346ada              # double 0.77583599128714842
	.quad	0x3fdcad2714cd5b50              # double 0.44806839972936974
	.quad	0x3fe0b618d7743bb1              # double 0.52222864228121157
	.quad	0x3fd9d393886ca4ba              # double 0.40353859255499069
	.quad	0x3fdf5b5b33969d5e              # double 0.48995094335483269
	.quad	0x3fd8904f420776a8              # double 0.38380795906219101
	.quad	0x3feece1c789a7e26              # double 0.96266006045693042
	.quad	0x3fb210e2b5cb7fd0              # double 0.070570153602147245
	.quad	0x3fec70c2ac14b662              # double 0.88876470193435986
	.quad	0x3fa50afb06ef3fa0              # double 0.04109940013552138
	.quad	0x3fe558b3648ba9e8              # double 0.66707772863202042
	.quad	0x3fc987f65eef00b4              # double 0.19946174273900896
	.quad	0x3fd3873523ceb31a              # double 0.30512741562670131
	.quad	0x3fe14d85e6b0ede5              # double 0.54071326310025525
	.quad	0x3fc79eb4bcfc06f4              # double 0.18453082301862589
	.quad	0x3fd389862d787650              # double 0.30526880684360425
	.quad	0x3fec293720fcb973              # double 0.88003117029965805
	.quad	0x3fe8c2a57d77909a              # double 0.77376055245669595
	.quad	0x3fe4e0db76113c42              # double 0.652448397255178
	.quad	0x3fe746a5d9424578              # double 0.72737400468228852
	.quad	0x3fd8c99d94c6288c              # double 0.387305636679806
	.quad	0x3fd48cab18b9e54e              # double 0.32108571448005285
	.quad	0x3fe661b6af42f7da              # double 0.69942793112545165
	.quad	0x3fdb626a4a7e031a              # double 0.42788178705818469
	.quad	0x3fe0ab2280f37197              # double 0.52089047609074413
	.quad	0x3fee8828bd25bf01              # double 0.95412098830090042
	.quad	0x3feebf3bb9d4d98e              # double 0.96084390921787288
	.quad	0x3fa09ce957e42a50              # double 0.03244713971988189
	.quad	0x3fe324301076911e              # double 0.59816745009860361
	.quad	0x3fd74e5d7219f80c              # double 0.36415802138060438
	.quad	0x3fe15f796b98aec2              # double 0.54290457739758602
	.quad	0x3fe6f1b1a183d2c0              # double 0.7170036463345113
	.quad	0x3fe8b369cb770d7c              # double 0.77190103282229882
	.quad	0x3fdef7a46e8b86ec              # double 0.48386488719380227
	.quad	0x3feaae73e3d5c0a4              # double 0.83379549502389638
	.quad	0x3fa50faeb44709d0              # double 0.04113527250912663
	.quad	0x3fe86eef52884a1d              # double 0.76354185218434945
	.quad	0x3fe8a69ec4618198              # double 0.77033937793389651
	.quad	0x3fec2da8804a61ed              # double 0.88057351166486131
	.quad	0x3fec337e872e1d57              # double 0.88128591921205668
	.quad	0x3fd2c78949c8e6ec              # double 0.29342872815651222
	.quad	0x3fe670a6678f6aaf              # double 0.70125122286420616
	.quad	0x3fd87dc716ae4f5a              # double 0.38267686095172382
	.quad	0x3fb7064e96cb1610              # double 0.089939987005969834
	.quad	0x3fea4687111acac5              # double 0.82110932675126291
	.quad	0x3fd9642f32a17f3c              # double 0.3967397684518692
	.quad	0x3fe8b93495012eb2              # double 0.77260808088745692
	.quad	0x3feee1b92e5b277b              # double 0.96505412153167868
	.quad	0x3fe9423cd90c722a              # double 0.7893356551390458
	.quad	0x3fccf108b496bde0              # double 0.22610577409567068
	.quad	0x3fe54424319cc401              # double 0.66456803979792778
	.quad	0x3feb4af46438331d              # double 0.85289973806502284
	.quad	0x3fe8e85f856510d2              # double 0.77836586049718393
	.quad	0x3fc9239a1bc559bc              # double 0.19639898639679909
	.quad	0x3fe69a38a30329c6              # double 0.70632583464003384
	.quad	0x3fe9ecc34f2ac82c              # double 0.81015172445609584
	.quad	0x3fd10e39690b9b5a              # double 0.26649317987760457
	.quad	0x3fd9961f39b86c40              # double 0.39978771816976533
	.quad	0x3feada8de6f45ab8              # double 0.839178992350603
	.quad	0x3fec210506a5242a              # double 0.87903071687572276
	.quad	0x3fb929c194914820              # double 0.098293398639072382
	.quad	0x3fd59237ebc86500              # double 0.33704946542418668
	.quad	0x3fd2ce906924bcdc              # double 0.29385767238541205
	.quad	0x3fc8c2873f26c5ec              # double 0.19343653281752837
	.quad	0x3fd80e5a23cf9d1a              # double 0.37587598321120341
	.quad	0x3fd8457a9bded326              # double 0.37924065801353135
	.quad	0x3fd0392b69bb628c              # double 0.25348935437572417
	.quad	0x3fe4811eb466bbec              # double 0.64076171145086169
	.quad	0x3fe007bae97faa57              # double 0.50094361882413352
	.quad	0x3fc59a406e1da3a0              # double 0.16876988770243617
	.quad	0x3fd5b7f507aecb42              # double 0.33935285330078468
	.quad	0x3feecb5ef1b1dc70              # double 0.96232554632196177
	.quad	0x3fd8813f22e44eda              # double 0.38288858802228065
	.quad	0x3fe2e54d943ecc47              # double 0.59049109415207901
	.quad	0x3fba6473a0db11a8              # double 0.10309527089254422
	.quad	0x3fe6b745d5ff6bda              # double 0.70987216755326732
	.quad	0x3fe71ad8c9ca458d              # double 0.72202720081456706
	.quad	0x3fc676372d3694bc              # double 0.17548265178371547
	.quad	0x3fed7406a277fb61              # double 0.92041331989444697
	.quad	0x3fc28828c017ef54              # double 0.14478024844708648
	.quad	0x3fe7a2182ada2fb3              # double 0.7385369145354076
	.quad	0x3feb9f4528beafd4              # double 0.86319215734465126
	.quad	0x3fe77ac783681398              # double 0.73373771348325345
	.quad	0x3fd8e7f4c41b8eb8              # double 0.38915747786652899
	.quad	0x3fdeab1bf2a9e2a0              # double 0.47919367501848775
	.quad	0x3fec0ae45ecdd28d              # double 0.87632959858326986
	.quad	0x3f86e7b3760cd500              # double 0.011184122123817364
	.quad	0x3fee8cdbb4d69d7d              # double 0.95469460792530436
	.quad	0x3fe89031cabda730              # double 0.76760186765497984
	.quad	0x3fe23482ea423f15              # double 0.56891008142153743
	.quad	0x3fec04d8f855d99d              # double 0.87559174063681022
	.quad	0x3fe83e5632543c8e              # double 0.75760946111576444
	.quad	0x3fda092b4561c55e              # double 0.40680963302209772
	.quad	0x3fb77e86f0f4e310              # double 0.091774400546352774
	.quad	0x3fd091a3938245b8              # double 0.25888909726299003
	.quad	0x3fc5143ef8bf51b8              # double 0.16468035837045902
	.quad	0x3fdbb1ae66004d2a              # double 0.43271980248501285
	.quad	0x3fd7df887840be44              # double 0.37301837676475125
	.quad	0x3fcb21e6ce60f088              # double 0.21197209431727893
	.quad	0x3fe2a3392bc9ee58              # double 0.58242472221850061
	.quad	0x3fe2ceb956a74823              # double 0.58773486065388558
	.quad	0x3fc10d9f94659920              # double 0.13322825189534004
	.quad	0x3f9557de6cebb420              # double 0.020843005559914585
	.quad	0x3fc015d9ae2bd634              # double 0.12566681866126006
	.quad	0x3fec41e3ea510236              # double 0.88304324879579243
	.quad	0x3fe408dcfcd59883              # double 0.62608193761549591
	.quad	0x3fe8034f59bdc068              # double 0.75040404822904083
	.quad	0x3fb52c6df3d40c08              # double 0.082709190395732546
	.quad	0x3f987c98763d1780              # double 0.023912794319833619
	.quad	0x3fca783e1cd40a58              # double 0.20679451377516744
	.quad	0x3fc58c9d8e1fd898              # double 0.16835374297778993
	.quad	0x3fe460da396a1203              # double 0.63682280744302522
	.quad	0x3fc1bc31c501f220              # double 0.13855573768150098
	.quad	0x3fd4a32aa8ddfdaa              # double 0.3224589013188629
	.quad	0x3fd1013d78e72552              # double 0.26570069128918761
	.quad	0x3fe070a1d6f13aa9              # double 0.51374904614370565
	.quad	0x3fd484fe4218c202              # double 0.32061726050145023
	.quad	0x3fe844f6910381b4              # double 0.75841835329997886
	.quad	0x3fe7033e4aa52c68              # double 0.71914591387884474
	.quad	0x3fca181a0a00cc38              # double 0.20386052597459225
	.quad	0x3fe03f3704e27880              # double 0.50771666482957301
	.quad	0x3fe61568726f7f8d              # double 0.69011328077975664
	.quad	0x3fe4222506c37067              # double 0.62916804619773081
	.quad	0x3fdb2e0e0bdb688c              # double 0.4246859660903588
	.quad	0x3fc3049efd519a1c              # double 0.14857852334098787
	.quad	0x3fd585c2ac0bd17a              # double 0.33628908921607314
	.quad	0x3fc9e3e2b6db87e8              # double 0.20226701668349212
	.quad	0x3fea49eeac575475              # double 0.82152494106652674
	.quad	0x3fe154f694c1f19e              # double 0.54162148527352705
	.quad	0x3fe48d435152dcb9              # double 0.64224401362925854
	.quad	0x3fc68ad8e4181618              # double 0.17611228120237921
	.quad	0x3feb5ffc883ba714              # double 0.85546709640513762
	.quad	0x3fb957ea1257d028              # double 0.098997716406132086
	.quad	0x3fe4f2ccedacb3fc              # double 0.65463873310875398
	.quad	0x3fc2d64fd107689c              # double 0.14716527658930978
	.quad	0x3fdd27bb9b862176              # double 0.45555010021100573
	.quad	0x3f99ed90b00adae0              # double 0.025320301766181497
	.quad	0x3fe8b03a1c4d971e              # double 0.7715120842737837
	.quad	0x3fa62e622e7b35c0              # double 0.043322628187165702
	.quad	0x3fdcdf75066c898e              # double 0.45113874080029681
	.quad	0x3fe5760ba137a29f              # double 0.6706598423744089
	.quad	0x3fbb322d898e31f0              # double 0.10623440368926373
	.quad	0x3fe2a299be0b9c67              # double 0.58234870069726419
	.quad	0x3fe494ff3a74fb0a              # double 0.64318810860990649
	.quad	0x3fdcee9099a856d2              # double 0.45206084256765877
	.quad	0x3fe521ed00a7aee8              # double 0.6603913319390502
	.quad	0x3fb097e518679e48              # double 0.064817732294266794
	.quad	0x3fdea42a39fe909a              # double 0.47876983321681055
	.quad	0x3fe1247c4545649b              # double 0.53570378808503294
	.quad	0x3fd51a5dbd821922              # double 0.32973426348361745
	.quad	0x3feff9b4dbd95481              # double 0.99923174800154879
	.quad	0x3fd84094909e2464              # double 0.37894167063547557
	.quad	0x3fa778800acbfb90              # double 0.04584121829792942
	.quad	0x3fc6bea5b15b94c8              # double 0.17769309196515892
	.quad	0x3fe8c84504ab2270              # double 0.77444697295966414
	.quad	0x3fe0a8e7c39d1bb5              # double 0.52061832624246185
	.quad	0x3fb5af511d7fc1a8              # double 0.084706372930446805
	.quad	0x3fdda4e06618b152              # double 0.46318826647145273
	.quad	0x3fcdb59b211c227c              # double 0.23210467449850458
	.quad	0x3fea3aebf41431b2              # double 0.81969258948952572
	.quad	0x3fedc0b5c27c62bf              # double 0.92977416978381899
	.quad	0x3fdc04671fbf8b7c              # double 0.43776872730648342
	.quad	0x3fcc8654d49d3ad4              # double 0.22284946805526451
	.quad	0x3fce77ae7f7066dc              # double 0.238027393556698
	.quad	0x3fe6c0a65e4164c2              # double 0.7110168305327067
	.quad	0x3fedf92fc6e312dc              # double 0.93666828961485348
	.quad	0x3f9ff8cc527b2380              # double 0.031222527059785232
	.quad	0x3fdf7e571ffc596c              # double 0.49208620189292307
	.quad	0x3fe802c183d6e29a              # double 0.75033641576654309
	.quad	0x3fc6b176d8e47764              # double 0.17729077902270796
	.quad	0x3fd92b2aa1c04618              # double 0.3932596759414948
	.quad	0x3fe2741539550f6a              # double 0.57667027661999026
	.quad	0x3fe1a1b25e08d651              # double 0.55098837247960308
	.quad	0x3fd31e176684aa5a              # double 0.29871163379235599
	.quad	0x3fd20a2c0c0bbd72              # double 0.28187085319856131
	.quad	0x3fd3d069b7cca1e0              # double 0.30959551762728488
	.quad	0x3fea545e7265eee6              # double 0.82279894202607973
	.quad	0x3fcefc013c12e99c              # double 0.24206557687086849
	.quad	0x3fc70e76cb75e554              # double 0.18012890753360955
	.quad	0x3fbef8f96b69ddd0              # double 0.12098654625321292
	.quad	0x3fee06637ca22199              # double 0.93827986090132065
	.quad	0x3fe98b76724fb636              # double 0.79827425314369438
	.quad	0x3fdef31de641cb9e              # double 0.4835886715510983
	.quad	0x3f94095b9ff72080              # double 0.019566947592267514
	.quad	0x3fe34db8f1aa1bef              # double 0.60323760223479705
	.quad	0x3fbe5e514d5cfe40              # double 0.11862667216063816
	.quad	0x3fe10ff1bc0d20b5              # double 0.53319632271543205
	.quad	0x3fe8755a52c2d014              # double 0.76432529606109023
	.quad	0x3fe732a589bbe506              # double 0.72493245030560227
	.quad	0x3fe1941b9fff5296              # double 0.54932957887156664
	.quad	0x3feaa4475fb0ee7b              # double 0.83255356492686816
	.quad	0x3fd03cead301d956              # double 0.25371809583829952
	.quad	0x3fb859a5c70c9b68              # double 0.095117913337714577
	.quad	0x3fe3380aac3e7511              # double 0.6005910267009843
	.quad	0x3fd06b1dadfcf16a              # double 0.25653783789655071
	.quad	0x3fc2b60060b14418              # double 0.14617924424467854
	.quad	0x3fe6a586186c06e3              # double 0.70770554323118195
	.quad	0x3fdf1a059692e918              # double 0.48596324638823907
	.quad	0x3fe640110e8ecde5              # double 0.6953206333477594
	.quad	0x3fefb9b9e79070e1              # double 0.99142165400874315
	.quad	0x3fc642e6e391f54c              # double 0.1739166842634553
	.quad	0x3fe9da7102c50f62              # double 0.80791521588296811
	.quad	0x3fdd1f1a4aa9fcb0              # double 0.45502335826308649
	.quad	0x3fe5b25b939d5490              # double 0.67802218275996218
	.quad	0x3fd1fcc2a6393ac0              # double 0.28105226738709277
	.quad	0x3fe6830dd7af3128              # double 0.70349781156395341
	.quad	0x3fba588f6b654bf8              # double 0.10291382190671061
	.quad	0x3fe689c852ddadf2              # double 0.70431915459397332
	.quad	0x3f9634852a9498a0              # double 0.021684723590759902
	.quad	0x3fe8f187cdfa0d47              # double 0.77948370199047978
	.quad	0x3fdc6532c5b5a2ae              # double 0.44367665584153826
	.quad	0x3fd3c99834770c4a              # double 0.30917935489214143
	.quad	0x3fee7fe37525af0d              # double 0.95311138992608024
	.quad	0x3fe68859303d7bfb              # double 0.70414409086140439
	.quad	0x3fe27968fd148e6c              # double 0.57732057027574291
	.quad	0x3fe50a7e51c07180              # double 0.65753093688140041
	.quad	0x3fea82ce30617f44              # double 0.828467459195942
	.quad	0x3fdbf77c54ebe64a              # double 0.43698032658685249
	.quad	0x3fcc4e678a1297d4              # double 0.22114271394565199
	.quad	0x3fd85240db10c556              # double 0.38002034562221831
	.quad	0x3fda8eb832837236              # double 0.41496090825038168
	.quad	0x3fe088546ecbd21a              # double 0.51664182319524632
	.quad	0x3fe17c0f6df265ae              # double 0.54639407609936597
	.quad	0x3feac65023aa00b0              # double 0.83670813527716881
	.quad	0x3fc5c078d8947584              # double 0.16993628096762958
	.quad	0x3fb9bb7997552df8              # double 0.10051689095160288
	.quad	0x3fc0503115d5ffa8              # double 0.12744725767333631
	.quad	0x3fd4bf4467e0ce08              # double 0.32417402405118922
	.quad	0x3fd9192dd5dd64e2              # double 0.39216180691944491
	.quad	0x3fe0a7c874ad92d2              # double 0.52048132694889149
	.quad	0x3fd83cf76a83fa26              # double 0.37872109796436104
	.quad	0x3fe08566779328bb              # double 0.51628421167813288
	.quad	0x3fe13961848bc8ec              # double 0.53825450790307405
	.quad	0x3fe1d12798a4911a              # double 0.55678157628111369
	.quad	0x3fe029c8ad6d5b50              # double 0.50510057327742608
	.quad	0x3fd1916c7587d370              # double 0.27450095632166605
	.quad	0x3feaf048af2f254d              # double 0.8418315335813219
	.quad	0x3fe1d2d9fa4c570a              # double 0.55698870550506396
	.quad	0x3fe7f785e1c467e0              # double 0.74896520705373959
	.quad	0x3fe60a41b2718474              # double 0.68875202991706752
	.quad	0x3fe00837ca8fd993              # double 0.50100316584466709
	.quad	0x3fdbc05bec7b67b0              # double 0.43361566633177073
	.quad	0x3fdc8ae064dd7910              # double 0.44597635126218993
	.quad	0x3fe2f6e91f00cc9d              # double 0.59264045768067641
	.quad	0x3fea3f3b399c8697              # double 0.82021867038948215
	.quad	0x3fe6d52cdd786965              # double 0.71352236991814932
	.quad	0x3feb48dbf331eb8b              # double 0.8526439428236342
	.quad	0x3fe5cfe90bef3ef5              # double 0.68162967997520119
	.quad	0x3fde169e4ade015e              # double 0.47013051329851929
	.quad	0x3fe3f4cd6ac51d92              # double 0.62363310674202155
	.quad	0x3feea285027116e5              # double 0.95733881451516523
	.quad	0x3feb09c3376c3720              # double 0.84494171929120298
	.quad	0x3fd6d3af48cebd22              # double 0.35667020902742952
	.quad	0x3fdfecec84f2f1c2              # double 0.49883568747807427
	.quad	0x3fa7c0053ab76490              # double 0.046386874597098005
	.quad	0x3fb36e0965cbe048              # double 0.075897776939997219
	.quad	0x3f9b7b9ecd053540              # double 0.026838761580895154
	.quad	0x3fe0a1f9a7e1f6d7              # double 0.51977236547073857
	.quad	0x3fe82899b33f878c              # double 0.75495610246092459
	.quad	0x3fe63fbdd80ae28d              # double 0.69528095432095116
	.quad	0x3fadf7cb26052cb0              # double 0.058531139746798799
	.quad	0x3fe6bad055a78e80              # double 0.71030441979787895
	.quad	0x3fd4036ead4ac026              # double 0.31270949290319761
	.quad	0x3fd6b4721e809baa              # double 0.35476353625056822
	.quad	0x3fe488f7d193a750              # double 0.64171973164523344
	.quad	0x3fb32cb209a535f0              # double 0.074900748591254062
	.quad	0x3fe38f354aced5fd              # double 0.61123146639755499
	.quad	0x3fb1a20362236fc8              # double 0.068878375491691846
	.quad	0x3fe1ed2b4402d954              # double 0.56020129474090163
	.quad	0x3fe17441233ef73f              # double 0.54544121631599995
	.quad	0x3fd100c8b0654fec              # double 0.26567284799716506
	.quad	0x3fe153f0d0263d73              # double 0.54149666456389267
	.quad	0x3fd9f76e8ba8ad38              # double 0.40572703970493107
	.quad	0x3feb30160805c48a              # double 0.84961988036060743
	.quad	0x3fe60a81c6134a0c              # double 0.68878258406249548
	.quad	0x3fc8360ba49caf94              # double 0.18914933717439608
	.quad	0x3fe8818d9d0f2d94              # double 0.76581459689752984
	.quad	0x3f839cbb6027de80              # double 0.0095762861937906951
	.quad	0x3fed51a30a8d156d              # double 0.91621543942225758
	.quad	0x3feecb0b4f025b63              # double 0.9622856658123563
	.quad	0x3fde88108002e742              # double 0.4770547151671175
	.quad	0x3fe70042ec6f4274              # double 0.71878191164621663
	.quad	0x3fbc180d66caff40              # double 0.10974200973123249
	.quad	0x3fd00a3c0bddbe6e              # double 0.2506246677284939
	.quad	0x3feff1fa90ae9866              # double 0.99828842409330032
	.quad	0x3fe9900f662f9d5a              # double 0.79883546789362048
	.quad	0x3fe7dba3a0fbf4f1              # double 0.745561422750738
	.quad	0x3fe3464b9596ae17              # double 0.60233096329233404
	.quad	0x3fea9f03e6e13a1b              # double 0.83191104024610085
	.quad	0x3fbe2875d3ab1d30              # double 0.11780487458883182
	.quad	0x3febc7bc53526a29              # double 0.86813179277243535
	.quad	0x3fee01813519925f              # double 0.93768368121216017
	.quad	0x3fd15974b68e09c4              # double 0.27108495547886613
	.quad	0x3feb69e59b3713ba              # double 0.85667686763246498
	.quad	0x3fe6d643ab7d2d2f              # double 0.71365531438769902
	.quad	0x3feec3eb6fe647b1              # double 0.96141597609879714
	.quad	0x3fd2b71ce6e3117c              # double 0.29242632434422666
	.quad	0x3fedd05ec1276512              # double 0.93168580747001983
	.quad	0x3fe0aaa0744245cb              # double 0.52082846361934665
	.quad	0x3fcfd96b9a20be50              # double 0.24882264161850509
	.quad	0x3fe160f4d3fbd234              # double 0.54308549311696774
	.quad	0x3fe7e3632b1b8892              # double 0.74650724811023594
	.quad	0x3fe87c4243bb99e2              # double 0.76516831616464409
	.quad	0x3fc4b984965e83b4              # double 0.16191155760045961
	.quad	0x3fe209719d0245b6              # double 0.5636528078631986
	.quad	0x3fe71adea97847cc              # double 0.72203000163630682
	.quad	0x3feed709aefe0d6f              # double 0.96374973467065483
	.quad	0x3f81467a4c8c2d40              # double 0.0084352068529570667
	.quad	0x3fe255e92472b321              # double 0.57298714751013702
	.quad	0x3fc70d48beb7c2e4              # double 0.18009290039437709
	.quad	0x3febf8d717e8799f              # double 0.87412600202133095
	.quad	0x3fe5701f0d94b9d6              # double 0.66993668224841474
	.quad	0x3fb7ff5763937568              # double 0.093739949999379513
	.quad	0x3fd2321f04586e38              # double 0.28430915283545088
	.quad	0x3fe3b71105e9781b              # double 0.61609698443112693
	.quad	0x3fe67d1371309129              # double 0.70276805980077939
	.quad	0x3fd8d873518c1842              # double 0.38821108783338698
	.quad	0x3fe308193228eadd              # double 0.59473857685892606
	.quad	0x3fb0c5a8fc0d8080              # double 0.065516053711236921
	.quad	0x3fc047874ede730c              # double 0.12718287802717787
	.quad	0x3feb45a74cc71516              # double 0.85225262637746613
	.quad	0x3fd4577c7c09ca60              # double 0.31783973801717558
	.quad	0x3feca7feb1cce029              # double 0.89550719000454138
	.quad	0x3fdd80228d071eea              # double 0.46094573757407764
	.quad	0x3feb21f802a0fc4a              # double 0.84789658082434838
	.quad	0x3fcd7174a6a5d80c              # double 0.23002489220715494
	.quad	0x3fe7d79ab628157d              # double 0.74506888940292948
	.quad	0x3fefc91c61657b12              # double 0.99329966566787875
	.quad	0x3fdb4a3f2fde4510              # double 0.42640666651375714
	.quad	0x3fe79b66d95990c6              # double 0.73771994067330904
	.quad	0x3fd2d1f00808447a              # double 0.29406357559589191
	.quad	0x3fbdf19180349ae0              # double 0.11696729068772127
	.quad	0x3fd09eef93302492              # double 0.25970067380746642
	.quad	0x3fd9ed377a073a78              # double 0.40510355870075143
	.quad	0x3fd1a8949c7364c2              # double 0.27591433790582809
	.quad	0x3fe16f33a016590a              # double 0.54482442156839395
	.quad	0x3fa81f444f4847b0              # double 0.047113547018070689
	.quad	0x3fd2f7f36e6ba88a              # double 0.2963837221456137
	.quad	0x3fd3ff67edc7ddb8              # double 0.31246374340795624
	.quad	0x3fe1cf63b00bfd70              # double 0.55656608947894703
	.quad	0x3fd7fd72a3b0cd48              # double 0.37484422669804873
	.quad	0x3fe1b99eabb93333              # double 0.55390866794332394
	.quad	0x3feab03b64dcc95e              # double 0.83401269626328278
	.quad	0x3fef16e5a90ccbda              # double 0.97154505746436404
	.quad	0x3fe7e89b75fb93aa              # double 0.74714444201946617
	.quad	0x3fe0545d6b396ca7              # double 0.51029845182656153
	.quad	0x3fe7fb1ac56f612c              # double 0.74940241395510076
	.quad	0x3fecdce72da49b2f              # double 0.90196570315024427
	.quad	0x3f9928667090ab80              # double 0.024568176861218927
	.quad	0x3fe6b84fe162a0f2              # double 0.70999902744827481
	.quad	0x3fe34d3e8c6dfb27              # double 0.60317923953684704
	.quad	0x3fd3018390b8ad94              # double 0.29696740277241784
	.quad	0x3fe8795d1656bbfc              # double 0.76481489527748136
	.quad	0x3fe34787ac7b8708              # double 0.6024816864776037
	.quad	0x3fe1cc3125922b22              # double 0.55617577875213819
	.quad	0x3fd6ea4d00c13dca              # double 0.35805058549609881
	.quad	0x3fdaddd5cb3facf2              # double 0.41978974197873165
	.quad	0x3fe4f739566521d2              # double 0.65517870782883336
	.quad	0x3fee41b5f2ffd598              # double 0.94552133045970077
	.quad	0x3fcb00f5a22731e8              # double 0.21096678178436368
	.quad	0x3fe4d07010f63f48              # double 0.65044406235572527
	.quad	0x3fea1989b4cf7dec              # double 0.81561742128900283
	.quad	0x3febacdc514957e9              # double 0.86485114933270524
	.quad	0x3f9f7b38c8567f60              # double 0.030743491389898181
	.quad	0x3fdc77a891b0421c              # double 0.44480337359803612
	.quad	0x3fe0ce4716da5e2d              # double 0.5251803823802611
	.quad	0x3fe1425809c79ba6              # double 0.53934862051106758
	.quad	0x3fd07f1cb3372b56              # double 0.25775830747141038
	.quad	0x3fe5a4f57be32621              # double 0.67638658711183919
	.quad	0x3fc9abb5d7ec7d50              # double 0.20055268328813236
	.quad	0x3fdb9950e430496e              # double 0.43123266490979162
	.quad	0x3fdbbb0f46fa5c44              # double 0.43329221660082262
	.quad	0x3fef7c20fa7faa25              # double 0.98390244412923222
	.quad	0x3fcc24e39a8754c8              # double 0.21987576527923225
	.quad	0x3fd9956f136aa9a0              # double 0.39974572082669546
	.quad	0x3fea53b1e4b58475              # double 0.82271666211830896
	.quad	0x3fe5017247cca84a              # double 0.65642656348541917
	.quad	0x3fec85093e56c165              # double 0.89123975921215204
	.quad	0x3fdcd17bf5fd017a              # double 0.45028590223593989
	.quad	0x3fdc942aa35299c2              # double 0.44654336881140122
	.quad	0x3fe687dd6de22635              # double 0.70408507787323649
	.quad	0x3fe7a4cd97431b16              # double 0.73886756461510816
	.quad	0x3fe4738972d5c59c              # double 0.63910362652511621
	.quad	0x3fe9eac494acd53c              # double 0.80990819013701509
	.quad	0x3fdee28ce1ec4fb4              # double 0.48257753432084916
	.quad	0x3fd375b139f16870              # double 0.30405836733337477
	.quad	0x3fe87604a619e80c              # double 0.76440651361122169
	.quad	0x3fb9220c15f18c98              # double 0.098175769192993534
	.quad	0x3fec2ed424e376a8              # double 0.88071639256277923
	.quad	0x3fee54fa353ebcc1              # double 0.94787321471621777
	.quad	0x3fba44b474e34a78              # double 0.1026108537073841
	.quad	0x3fdd2c8c5aaf2c82              # double 0.45584400993238472
	.quad	0x3fd0bc7489f96470              # double 0.26150239442865253
	.quad	0x3fe560de1da8eddf              # double 0.668074663094952
	.quad	0x3fe5a8d462851e33              # double 0.67685908548532436
	.quad	0x3fe25479a1af5604              # double 0.5728119047077489
	.quad	0x3fd706da2a113484              # double 0.35979322536588421
	.quad	0x3fcf6695d1622540              # double 0.24531815265462775
	.quad	0x3fea3d4d7da5ec2a              # double 0.81998323956157049
	.quad	0x3fd0783263fd5c74              # double 0.25733623280161244
	.quad	0x3fec11cfb4f7b487              # double 0.87717423768266733
	.quad	0x3fb8553327d55b78              # double 0.095050046181638481
	.quad	0x3fe0ffcd2aa62e41              # double 0.53122576074515149
	.quad	0x3fe697318b080bec              # double 0.7059562411744742
	.quad	0x3febd15b9e341cec              # double 0.86930638217100186
	.quad	0x3fd9195ecca8526a              # double 0.39217348085484238
	.quad	0x3fedc03bcde8198a              # double 0.92971601692333761
	.quad	0x3fe877fa1683be56              # double 0.76464561841380418
	.quad	0x3fea2ddb7be6fe7b              # double 0.81809782218620286
	.quad	0x3f8e9778105da540              # double 0.014937341689533867
	.quad	0x3fe0dc3db7ecb490              # double 0.52688489840297059
	.quad	0x3fe835a9479d6682              # double 0.75655044543528072
	.quad	0x3fd2f0571f56ce2a              # double 0.29591920910317759
	.quad	0x3fe316966a89ba58              # double 0.59650727089121869
	.quad	0x3fd4b1002183931e              # double 0.32330325386856085
	.quad	0x3fe333fcf5e31c3d              # double 0.60009620690187371
	.quad	0x3fd5c3fed9f0461e              # double 0.34008761675895183
	.quad	0x3fea7f082e148da5              # double 0.82800683021598742
	.quad	0x3fe383a5ca139048              # double 0.60982026546526757
	.quad	0x3f7bb67d90252880              # double 0.0067658333594612374
	.quad	0x3fec94136e2e4d11              # double 0.89307567138385668
	.quad	0x3fe3f752d8361549              # double 0.62394087055933156
	.quad	0x3fee51b5d4f6e5e5              # double 0.94747439951532597
	.quad	0x3fe6f3934a468cfc              # double 0.71723331934882095
	.quad	0x3fd98589b64dc4d8              # double 0.39877550891021718
	.quad	0x3feaa799b42dbb2d              # double 0.83295903388156989
	.quad	0x3fd681107478ef7c              # double 0.35162745832689501
	.quad	0x3feddadc0365c839              # double 0.93296623862830252
	.quad	0x3fe3b443f5af467e              # double 0.61575506196295726
	.quad	0x3fe8614376993c89              # double 0.76187298930916925
	.quad	0x3fae7aad2a10ae50              # double 0.059529696831614687
	.quad	0x3fe6c6d4b0de7624              # double 0.71177134079670568
	.quad	0x3fee57a77950c333              # double 0.94819997496060748
	.quad	0x3fdb819bbe252d2e              # double 0.42978566712254718
	.quad	0x3fd3b78d42582d16              # double 0.30807811240147609
	.quad	0x3fef28efa2d8fd9d              # double 0.97374707990813968
	.quad	0x3fd3be72a5ec8af8              # double 0.30849901393428025
	.quad	0x3fe5c3cd3dd5dd3a              # double 0.68015157773235235
	.quad	0x3fce6bac8ab2c144              # double 0.23766094944358873
	.quad	0x3fcb788bbfc060f8              # double 0.2146162687574884
	.quad	0x3fe2117b8ef539ec              # double 0.56463411256282603
	.quad	0x3fd5758afd15e9b8              # double 0.33529925074949629
	.quad	0x3fe877d6143d972b              # double 0.76462844804038832
	.quad	0x3fe7d3e6b80168c3              # double 0.74461685122084764
	.quad	0x3fdeb7a481a2bb48              # double 0.47995865497334878
	.quad	0x3fdb3a059a65273e              # double 0.42541637494706552
	.quad	0x3fefc74bff4a14b6              # double 0.99307823048788779
	.quad	0x3fe73e8a32e9cecc              # double 0.72638425773626514
	.quad	0x3fe9a7257f1bb4e9              # double 0.8016536219198801
	.quad	0x3fc326e9087efb8c              # double 0.14962494768948564
	.quad	0x3fde59f4d763d882              # double 0.47424050363714099
	.quad	0x3fd0079283c08fae              # double 0.25046217791008984
	.quad	0x3fc64c8e2a47476c              # double 0.17421128334404601
	.quad	0x3fc0444f85a35970              # double 0.12708467507645649
	.quad	0x3f650f14452c9b00              # double 0.0025706668760848705
	.quad	0x3fef782365abcbfe              # double 0.98341531617768374
	.quad	0x3fe4d8943e249dd4              # double 0.65143787514983353
	.quad	0x3fcede7c67535a18              # double 0.24116473241038316
	.quad	0x3fec148a16e72aba              # double 0.87750725243798589
	.quad	0x3fb35c1c3c568798              # double 0.0756242415723406
	.quad	0x3f931876a31e1680              # double 0.018648008066085797
	.quad	0x3fc4c2276374560c              # double 0.16217510563062409
	.quad	0x3fee04b03a5b11de              # double 0.93807231328588236
	.quad	0x3fd2db5a50943f7a              # double 0.29463823193599803
	.quad	0x3fe86fa13a94dd25              # double 0.76362668458651639
	.quad	0x3facc3205f709ca0              # double 0.056176196718575655
	.quad	0x3f9a6ee472a8fcc0              # double 0.025813645838067556
	.quad	0x3fde33e53ac31858              # double 0.4719174455498254
	.quad	0x3fe0886eeb887be2              # double 0.51665445330206361
	.quad	0x3fea33abed06b8d4              # double 0.81880756658736197
	.quad	0x3fe78dc43bfba4e1              # double 0.73605548587252312
	.quad	0x3fd159bd599a30a6              # double 0.27110227346634941
	.quad	0x3fe1f89e6f04a03e              # double 0.56159898455826585
	.quad	0x3fe508aa3b352251              # double 0.65730773509955942
	.quad	0x3feb68f0a3325199              # double 0.8565600573952451
	.quad	0x3fd662134373f9c4              # double 0.34973603808603237
	.quad	0x3fecb070a82d687d              # double 0.89653809401649165
	.quad	0x3fef9d1da9314df3              # double 0.98792918248585548
	.quad	0x3fc572bbce100148              # double 0.16756389199873412
	.quad	0x3fce0ee6ae78fe14              # double 0.23482974547549473
	.quad	0x3fdd9835442c6048              # double 0.46241504342606676
	.quad	0x3fe36d506b81e6a4              # double 0.60709401128334095
	.quad	0x3fda4a57953bd4ae              # double 0.41078748296360856
	.quad	0x3fc65a3b4ed24064              # double 0.1746286520833592
	.quad	0x3fdaa409752b26e6              # double 0.41626202051393901
	.quad	0x3fe0494b314e71d5              # double 0.50894698743973754
	.quad	0x3fcabe48fa4905b4              # double 0.20893203946074623
	.quad	0x3feb3f69a8fae613              # double 0.85149081233902491
	.quad	0x3fa64575517b4610              # double 0.043498674580075058
	.quad	0x3fe66481d67ecc63              # double 0.69976894277204982
	.quad	0x3fe197b82c0a17bb              # double 0.54977043725442998
	.quad	0x3fdefa02d43bdf62              # double 0.48400946355785923
	.quad	0x3fd1893bfeb56b1a              # double 0.27400112031834711
	.quad	0x3fea11f24c5c316e              # double 0.81469073213660947
	.quad	0x3fd31ae11934a6c6              # double 0.29851558171740711
	.quad	0x3fdb524b55d22944              # double 0.42689784413291343
	.quad	0x3fcbe5b752113f4c              # double 0.21794787890621092
	.quad	0x3fef626e5186c53a              # double 0.98076549456724327
	.quad	0x3fd411ecf1ffbdae              # double 0.31359408982003856
	.quad	0x3fa4caef96dfe3c0              # double 0.040610778014474658
	.quad	0x3fe6eab5781adfc6              # double 0.71615098436358759
	.quad	0x3fa21831f0b4cc80              # double 0.035340843804442024
	.quad	0x3fe8f17ddd95c1d7              # double 0.77947896269148031
	.quad	0x3fdbd5ef3c5fbe26              # double 0.43493252654931991
	.quad	0x3fda20a2b09ad38a              # double 0.40824191328584247
	.quad	0x3fee424a67817f64              # double 0.94559211936937659
	.quad	0x3fc9a1c6019979dc              # double 0.20024943426228858
	.quad	0x3fd47b034a1557b4              # double 0.32000810847000172
	.quad	0x3fec76ac74b4690d              # double 0.88948653024570634
	.quad	0x3fd64267b55cc772              # double 0.3478030463330618
	.quad	0x3feee1cb99ea341b              # double 0.96506290494437807
	.quad	0x3feed4f9b136c2df              # double 0.96349796878902427
	.quad	0x3fc92dca037c1b10              # double 0.1967098729148451
	.quad	0x3fee18ed51a5eaf4              # double 0.940542849987962
	.quad	0x3fccebde3e90129c              # double 0.22594812445472179
	.quad	0x3fe405e4fb6b06bc              # double 0.62571953873722164
	.quad	0x3fe26f15512e136c              # double 0.57605996947732541
	.quad	0x3feb606116018c89              # double 0.85551504419380919
	.quad	0x3fe26a0f1d03c016              # double 0.57544665972636966
	.quad	0x3feb57aecd8b2981              # double 0.85445346970782066
	.quad	0x3febfa5b2ab63561              # double 0.87431104986323416
	.quad	0x3fe79c7e0fb17c5a              # double 0.73785307946298961
	.quad	0x3fee15d22d857de8              # double 0.9401636971560352
	.quad	0x3fe53c37573a0c65              # double 0.66360060726618697
	.quad	0x3fe89eead00504b7              # double 0.76939907673672436
	.quad	0x3fa00152d5ca9fa0              # double 0.031260098073573106
	.quad	0x3fe05664726d1978              # double 0.51054594372617057
	.quad	0x3fefdd2dc80ac708              # double 0.99574936934206537
	.quad	0x3fe3be19ca2793ae              # double 0.61695565684623488
	.quad	0x3fe831b55603d84c              # double 0.75606791305359299
	.quad	0x3feb380284a6752f              # double 0.85058713825461563
	.quad	0x3fe1501ad3ff99fd              # double 0.54102841764398557
	.quad	0x3fe60740fb7db8b6              # double 0.68838547820430196
	.quad	0x3fee51a74d4d8b68              # double 0.94746747110580731
	.quad	0x3fefbcdc5eac8b03              # double 0.99180429926886437
	.quad	0x3fdb3a51416f6b24              # double 0.42543441190871278
	.quad	0x3fc8e4e7658e2674              # double 0.19448559244874597
	.quad	0x3fe69c587eac1405              # double 0.70658516636524438
	.quad	0x3fb58c0b9eba1be8              # double 0.084168173076349384
	.quad	0x3fb583e208b3fe00              # double 0.084043624043253828
	.quad	0x3fe6a089b150cc5c              # double 0.70709690696675009
	.quad	0x3feca516de644e73              # double 0.89515250621702902
	.quad	0x3fbe471b8a76f7d0              # double 0.11827251558767604
	.quad	0x3fe82316089a50bd              # double 0.75428296737893386
	.quad	0x3fe2d8f8749eae1e              # double 0.5889856603366217
	.quad	0x3fdbc92212f69a5c              # double 0.43415119029888216
	.quad	0x3fbbd976f34216f0              # double 0.10878699721260054
	.quad	0x3fd8749d7f773124              # double 0.38211762855350373
	.quad	0x3fe250a81b44b721              # double 0.57234578443396711
	.quad	0x3fb20e5c56f92308              # double 0.070531626924218327
	.quad	0x3fdbb8dd5eec5006              # double 0.43315824766000366
	.quad	0x3fd98377f6f0fa70              # double 0.39864920726169029
	.quad	0x3fe78087c34d9224              # double 0.73443973679656382
	.quad	0x3fef46dd1dd3baec              # double 0.97740035844421191
	.quad	0x3fea7640708f3b84              # double 0.82693502411153518
	.quad	0x3fe5c51d704450f8              # double 0.68031188895341099
	.quad	0x3fd2027474cc2762              # double 0.28139983564380178
	.quad	0x3feb47fd34e42ecb              # double 0.85253773050632142
	.quad	0x3fd5ca662461b770              # double 0.34047845414067179
	.quad	0x3fd5f5d33174f188              # double 0.34312896566168449
	.quad	0x3f7264676780b180              # double 0.0044902838927040056
	.quad	0x3fdfc98ebd13a4f8              # double 0.49667709793591497
	.quad	0x3fdb4acecd2c2d46              # double 0.42644090687163716
	.quad	0x3fdb5b920daa1f66              # double 0.42746402105739489
	.quad	0x3fe7a43e8f247718              # double 0.73879936177738426
	.quad	0x3fbd95ba29f659a8              # double 0.11556590580435133
	.quad	0x3fe26a37d2cd6c07              # double 0.57546607181882414
	.quad	0x3fd87d127f872f3e              # double 0.3826338048354393
	.quad	0x3fd2734fef4d268a              # double 0.2882881009032664
	.quad	0x3fe8e8368c23f953              # double 0.7783463227386086
	.quad	0x3fe9e288af2327f7              # double 0.80890306669721113
	.quad	0x3fe734ecf556dd48              # double 0.72521064679941905
	.quad	0x3fe5d83e094acfff              # double 0.6826467687119474
	.quad	0x3fce149d6339fea8              # double 0.23500411362691875
	.quad	0x3fd85f739b01c2b8              # double 0.38082590234175084
	.quad	0x3fd796ddc9d0cf6c              # double 0.36858315189896618
	.quad	0x3fd172bb53798ede              # double 0.27262766982879139
	.quad	0x3fd621bba5995416              # double 0.34580889865657249
	.quad	0x3fe353145667dc0f              # double 0.60389153362382497
	.quad	0x3fdb613a9980c2a8              # double 0.42780938139461933
	.quad	0x3fc4a8acc0de8e0c              # double 0.16139754693459485
	.quad	0x3fc2cfe11eb2d508              # double 0.14696897505715634
	.quad	0x3fda83005cc9dcb6              # double 0.4142456918847971
	.quad	0x3fdfc1505aaa9256              # double 0.4961739430821458
	.quad	0x3f5638e0b06adc00              # double 0.0013563341359892345
	.quad	0x3fd30314bf81e12a              # double 0.29706305219544282
	.quad	0x3fbbf94849ef8610              # double 0.10927249722546883
	.quad	0x3fe80a54e2b3b0ec              # double 0.75126117971151762
	.quad	0x3fd6e660784510dc              # double 0.35781108613106283
	.quad	0x3fe44fe337069013              # double 0.6347518992156459
	.quad	0x3fd8a67552533bd0              # double 0.38515980758250823
	.quad	0x3fedfac29bac42f0              # double 0.93686037449705672
	.quad	0x3fe313535d171ed9              # double 0.59610908681585351
	.quad	0x3fdfb8cba59b9ee0              # double 0.49565402195592689
	.quad	0x3fb8ed452b3027c8              # double 0.097370455783816756
	.quad	0x3fc48f9be6140d58              # double 0.16063259825032605
	.quad	0x3fc3d70cba775a10              # double 0.15500029663844872
	.quad	0x3fb3994f10090b40              # double 0.076558057227015475
	.quad	0x3fc2f476dd19d5c8              # double 0.14808545871680523
	.quad	0x3fe1830baef2055e              # double 0.54724678200743049
	.quad	0x3fcebe98c40fb460              # double 0.24019155095394051
	.quad	0x3fe271a5115c200c              # double 0.57637265577886998
	.quad	0x3fe963e326dd3d62              # double 0.79344327536265902
	.quad	0x3fd79fab90d03320              # double 0.36912049428865323
	.quad	0x3fd9809b1bd27bb0              # double 0.39847448079120351
	.quad	0x3fe378db0fcc68dc              # double 0.60850289426459936
	.quad	0x3fe96a2472adc498              # double 0.79420683286857052
	.quad	0x3fe7d6b22df31884              # double 0.74495800947694635
	.quad	0x3fac9dbef0c33f00              # double 0.055891005411124794
	.quad	0x3f973662e5c904a0              # double 0.022668404841401313
	.quad	0x3fed646dbc463f87              # double 0.91850935718865478
	.quad	0x3fdbfe4d9ec3621e              # double 0.43739643577785781
	.quad	0x3fdc8488bd9e31b4              # double 0.44558924214723139
	.quad	0x3fe6a284c94476e8              # double 0.70733870801970244
	.quad	0x3fe5106cc88893ab              # double 0.658254996935843
	.quad	0x3fd4ad3597875ed4              # double 0.32307185933812588
	.quad	0x3fdb56e82ed43520              # double 0.42717938016069645
	.quad	0x3fea85ba3357aa26              # double 0.82882413890667261
	.quad	0x3fb642cb83c92f48              # double 0.086956710504805135
	.quad	0x3fe7f902064fe9d9              # double 0.7491464732441343
	.quad	0x3fe22daa816dddfb              # double 0.56807446746000723
	.quad	0x3fe114636ddbc155              # double 0.53373881775591292
	.quad	0x3fc44b8f6c895d70              # double 0.15855591582906525
	.quad	0x3fe46462c5bd53da              # double 0.6372541296101375
	.quad	0x3fe13e24af7b63e6              # double 0.5388358523733785
	.quad	0x3fd52a39c8f7e5ca              # double 0.33070225358786998
	.quad	0x3fdb3a93fed01a1e              # double 0.42545032390663262
	.quad	0x3fe95c26021383b3              # double 0.79249859242928833
	.quad	0x3fd3a2deeeb28042              # double 0.30681584654121619
	.quad	0x3fd6a79940c8a250              # double 0.35397940947089968
	.quad	0x3fe4f79e43738219              # double 0.65522683309615382
	.quad	0x3fedf6a02080c7bf              # double 0.93635565136195698
	.quad	0x3fd98b3f207adeca              # double 0.39912393733855522
	.quad	0x3fe973c69c8a18c7              # double 0.79538279127225386
	.quad	0x3fe7fe75ee24b428              # double 0.74981209289911011
	.quad	0x3fec808cc9dc7aba              # double 0.89069213319802221
	.quad	0x3fe2860175e259c4              # double 0.57885811828855838
	.quad	0x3fe3000498e43702              # double 0.59375219213117725
	.quad	0x3fc1b0f5d5ab423c              # double 0.13821289952331195
	.quad	0x3fd95108bca3b060              # double 0.39557093068902383
	.quad	0x3fe2ac5f60d3a1f3              # double 0.58354157363379355
	.quad	0x3fe632da309348c1              # double 0.693707556604089
	.quad	0x3fe21ba7e7eeba9b              # double 0.56587596225093095
	.quad	0x3fe0fb7a9f0af091              # double 0.53069811881097639
	.quad	0x3fe30074cd4b95de              # double 0.59380569550256346
	.quad	0x3fde03ac0dd6dba6              # double 0.4689741263531978
	.quad	0x3fde95835b55c316              # double 0.47787555617746713
	.quad	0x3fef6a3124a23eee              # double 0.98171288638147103
	.quad	0x3f86b97ce7b8dc40              # double 0.011095977613065355
	.quad	0x3fc4c090270d7f80              # double 0.16212655932303832
	.quad	0x3fdd0c3b7762c27e              # double 0.45387159975783919
	.quad	0x3fe7b1346c4932f3              # double 0.74038144254299565
	.quad	0x3fb2d1319d38edc8              # double 0.07350454414784402
	.quad	0x3fd5647dfa675584              # double 0.33425855115395842
	.quad	0x3fc5d770c35b353c              # double 0.170637221707162
	.quad	0x3fea37239b1331b9              # double 0.81923084533769164
	.quad	0x3fde4ad69a8063e2              # double 0.47331776702918493
	.quad	0x3fe3cf52bbecd3c5              # double 0.61905800537226041
	.quad	0x3feecf9989a88737              # double 0.96284176718129443
	.quad	0x3fcb2bc610d367fc              # double 0.21227336713383227
	.quad	0x3fb8c258414611e8              # double 0.096715465484585317
	.quad	0x3feb70029212e254              # double 0.85742310075790806
	.quad	0x3fe0d5616090476c              # double 0.52604740963054786
	.quad	0x3fe47d2cd90af009              # double 0.64028017417104011
	.quad	0x3fdd5f63e0bb259e              # double 0.45894715258017438
	.quad	0x3fbea80976467cb0              # double 0.11975154054242654
	.quad	0x3fe87e9402073de8              # double 0.76545143505239555
	.quad	0x3fec71981089d4d7              # double 0.88886645536572473
	.quad	0x3fee442e713a31ca              # double 0.94582292666159984
	.quad	0x3f8ce13eabe19400              # double 0.014101495380780094
	.quad	0x3fded1081de52f18              # double 0.48150828284700387
	.quad	0x3fe8a51bd55d4351              # double 0.77015487358776558
	.quad	0x3fda849235e827fe              # double 0.41434149994222469
	.quad	0x3fe0ba3b065151e1              # double 0.52273322328488458
	.quad	0x3fe9b6151cfa43b2              # double 0.80347686443029986
	.quad	0x3fd9997fbb8704fa              # double 0.39999383271431521
	.quad	0x3fe5f974b5944fe8              # double 0.68670115914073637
	.quad	0x3fd100bae7c58420              # double 0.26566956170978706
	.quad	0x3fef148705902ef6              # double 0.97125578962865577
	.quad	0x3fec68da74483969              # double 0.88779947959282624
	.quad	0x3feba85e9391655d              # double 0.8643029100596028
	.quad	0x3febaa01a3f7b6fa              # double 0.86450273537567957
	.quad	0x3fe3a61142fd2e56              # double 0.61402190288340353
	.quad	0x3fed0f6369c4a12b              # double 0.90812845857457114
	.quad	0x3fd2bda0b5f1b9f6              # double 0.29282396095268781
	.quad	0x3fd81b8f65f5ba90              # double 0.37668213803309758
	.quad	0x3fc5ea69cac3da38              # double 0.17121622467648634
	.quad	0x3fe64f6da0180749              # double 0.69719582813579806
	.quad	0x3fb9326b3ade9080              # double 0.098425580856714489
	.quad	0x3fe2a9a580a61e68              # double 0.58320880057085578
	.quad	0x3fe4993d23ee5ef0              # double 0.64370591180610681
	.quad	0x3fe89e66de96f499              # double 0.76933616137070537
	.quad	0x3fe99a71f695b545              # double 0.80010317002385334
	.quad	0x3fec3f6e37cc07ca              # double 0.88274298570490228
	.quad	0x3fe49030c71cb9e5              # double 0.6426013840589887
	.quad	0x3fe52828c2d17d70              # double 0.66115224886372737
	.quad	0x3fec9e202a428613              # double 0.89430244687918259
	.quad	0x3fef0c9427669629              # double 0.97028548903899036
	.quad	0x3feb30ab8125399d              # double 0.84969115470612488
	.quad	0x3fc7bbd02ac2e858              # double 0.18541910255391048
	.quad	0x3fdd294c45fb66dc              # double 0.45564562639411377
	.quad	0x3fe9aa204c56bbd8              # double 0.80201735410616504
	.quad	0x3f64201c6be45100              # double 0.0024567179781432857
	.quad	0x3fe30df72ab19f4e              # double 0.59545477236404465
	.quad	0x3fd45da65e818d56              # double 0.31821593503101064
	.quad	0x3fe24993a3bc4088              # double 0.5714815328556293
	.quad	0x3fc01f56fdf359f0              # double 0.12595641517573553
	.quad	0x3fe2c297bb9b3561              # double 0.58625399247982213
	.quad	0x3fcd3b31054ab6a4              # double 0.22836888082877238
	.quad	0x3fe97c9251198e7a              # double 0.79645648803530311
	.quad	0x3fecbfff9d3cedb0              # double 0.89843731604144317
	.quad	0x3fedd6e524d56e3e              # double 0.93248231119236613
	.quad	0x3f9d27d81e9541e0              # double 0.02847230612434426
	.quad	0x3fe03cfb7e57df08              # double 0.50744414020934503
	.quad	0x3fe4294ff1a2c27d              # double 0.63004300302971183
	.quad	0x3fe218c65157d4f9              # double 0.56552425277064267
	.quad	0x3fdf47b7b5204860              # double 0.48875229538055542
	.quad	0x3fc9e743df71be38              # double 0.20237015161863936
	.quad	0x3fec01164faf9483              # double 0.8751327091564608
	.quad	0x3fe15d777e71d007              # double 0.54265951820571068
	.quad	0x3fe6dca119d511f0              # double 0.71443228764888822
	.quad	0x3fdf449e41a6363a              # double 0.48856312190114048
	.quad	0x3fbe6e8ab9dbda50              # double 0.11887423551147802
	.quad	0x3fde769178efa792              # double 0.47598683176203693
	.quad	0x3fd4bd56a84671c4              # double 0.32405630524752049
	.quad	0x3fe7abdf17deaf41              # double 0.73973040258486134
	.quad	0x3fecf17711b63551              # double 0.90447572192503334
	.quad	0x3fea74cc5d372a13              # double 0.82675760465764581
	.quad	0x3fc2a35cf41248cc              # double 0.14561044614362684
	.quad	0x3feb87f40fde021d              # double 0.86034587000910145
	.quad	0x3fecf51bc7030b7c              # double 0.90492047185431045
	.quad	0x3fd3220754ed8aca              # double 0.29895194333782327
	.quad	0x3fc5f99ada637f6c              # double 0.17167983687886179
	.quad	0x3fbcab442d807448              # double 0.11198831663973963
	.quad	0x3fc3b811b10a6df4              # double 0.15405484337394137
	.quad	0x3fc79823e8484aa0              # double 0.18433045236505041
	.quad	0x3fee5621b933c9b0              # double 0.94801412746737945
	.quad	0x3fba79c7535d6b40              # double 0.10342069421078026
	.quad	0x3fe737585755539f              # double 0.72550599152838291
	.quad	0x3fc46754e7384614              # double 0.15940343179731598
	.quad	0x3fdb87086e77f2e6              # double 0.43011675632423729
	.quad	0x3fef6ca5d4c51679              # double 0.98201266819587751
	.quad	0x3fdfe347d3f78fe6              # double 0.49824710559755514
	.quad	0x3fecc22bcbdba8f7              # double 0.89870252433800502
	.quad	0x3fbbfba26abc97b0              # double 0.10930838685871325
	.quad	0x3fe475bc322edfe0              # double 0.63937196542155661
	.quad	0x3fecd6267790c86f              # double 0.90114138939521904
	.quad	0x3fe6efd18f0cfb97              # double 0.7167747301062829
	.quad	0x3f96c232746bac60              # double 0.022225178104161691
	.quad	0x3fe11877842e4aba              # double 0.53423667732780378
	.quad	0x3fdcdd920f868a96              # double 0.45102359310309603
	.quad	0x3fb8efd15779c028              # double 0.09740932832369309
	.quad	0x3faf2e51e0030160              # double 0.060900267214949677
	.quad	0x3fa12a73e1a5d7f0              # double 0.033527013106251391
	.quad	0x3fc77597f1eccba0              # double 0.18327616989844575
	.quad	0x3fe409e7244ffa95              # double 0.62620884983319292
	.quad	0x3fe5a925b5c89d3c              # double 0.67689786438578592
	.quad	0x3fd71d2473841d8a              # double 0.36115371018282671
	.quad	0x3feb5fb6394e2f63              # double 0.85543357078993798
	.quad	0x3fcc7115688bd900              # double 0.22220103840636085
	.quad	0x3fc074d0761eff20              # double 0.12856488959914092
	.quad	0x3fec22be1b774eef              # double 0.87924104084456001
	.quad	0x3fc30592d9a48054              # double 0.14860759379462485
	.quad	0x3fd406e25d85f7fe              # double 0.31292018063675175
	.quad	0x3fdff4bb225f6cea              # double 0.49931219441141528
	.quad	0x3facb66c866acac0              # double 0.056079284103721871
	.quad	0x3feaaba4a430040f              # double 0.8334525305546111
	.quad	0x3fb636b1f4fc5250              # double 0.086772081671662393
	.quad	0x3fee8eedb495dc49              # double 0.95494733114799957
	.quad	0x3fc4045bcc25665c              # double 0.15638301342078165
	.quad	0x3fcedb7175ab2b44              # double 0.24107187505281946
	.quad	0x3fe0a5de892df872              # double 0.52024771492848587
	.quad	0x3fdaf1c2d4f35bc4              # double 0.42100592418631444
	.quad	0x3fdf32a469704854              # double 0.48746595665682446
	.quad	0x3fde2458c7ee18a8              # double 0.47096843265934263
	.quad	0x3fc53e1f3a6942e8              # double 0.16595831253155002
	.quad	0x3fea5214d20a332b              # double 0.82251969359785926
	.quad	0x3fa7d6e554d921b0              # double 0.046561400039141332
	.quad	0x3fe801f4faa137c7              # double 0.75023888541340333
	.quad	0x3fe51905a7c36f0e              # double 0.65930445448199904
	.quad	0x3fec0f014ac02004              # double 0.87683167075829304
	.quad	0x3fe4446bcd65ceef              # double 0.63335218540893645
	.quad	0x3feb1835bcb30dcb              # double 0.84670531134946125
	.quad	0x3fe4381357b68926              # double 0.63184516078425612
	.quad	0x3fc721d071ff3f40              # double 0.18071942869436874
	.quad	0x3fad0be0c8187cc0              # double 0.056731247354258496
	.quad	0x3fbdd05172c2f120              # double 0.1164599328212188
	.quad	0x3fe44e2f80d71996              # double 0.63454413570507273
	.quad	0x3fd7b6adeb5f9ae2              # double 0.37052486406029861
	.quad	0x3fd90dde534b24b8              # double 0.39147146352895446
	.quad	0x3fe0f43d9c04f02f              # double 0.52981453392522393
	.quad	0x3fee0f77c9b91224              # double 0.93938817404756891
	.quad	0x3fc16dc624367cd4              # double 0.13616253631787478
	.quad	0x3fb64af308499028              # double 0.087081136248855828
	.quad	0x3fe5c862df85b545              # double 0.68071120888422654
	.quad	0x3feb3dc70c358f23              # double 0.85129120239841816
	.quad	0x3fedae4c5f0211b5              # double 0.92752665096536779
	.quad	0x3fe12b9f8cb614a2              # double 0.53657510264078589
	.quad	0x3fef85e1fe9907e4              # double 0.98509311414840938
	.quad	0x3fdd57c848b1ea40              # double 0.45848281001204683
	.quad	0x3fd191aa215d6a36              # double 0.27451565988818361
	.quad	0x3fc1a794fcf11ba0              # double 0.13792669630694565
	.quad	0x3fdec7e64baa341a              # double 0.48095090283533326
	.quad	0x3fe31c838a56f69a              # double 0.5972306920954964
	.quad	0x3fe46ffca0ad573e              # double 0.6386702669358113
	.quad	0x3fddde0301568f86              # double 0.46667552118946565
	.quad	0x3fe61b1227d620e9              # double 0.69080455570749877
	.quad	0x3fef066b659d8e08              # double 0.96953363272444992
	.quad	0x3fbe6894f61124f0              # double 0.11878329284185773
	.quad	0x3fe6af025e5f1129              # double 0.70886343414216413
	.quad	0x3fd52f5956faf310              # double 0.33101495260398028
	.quad	0x3febbb02ef5d5ef1              # double 0.86657854796336953
	.quad	0x3fdb18daa00a0bf4              # double 0.42339196804840573
	.quad	0x3fa3e40167921d10              # double 0.038848918812670274
	.quad	0x3fed64a023150eea              # double 0.91853339054111172
	.quad	0x3fe35f2050528e91              # double 0.60536208808885494
	.quad	0x3fb237bd1ec0e190              # double 0.0711630058366437
	.quad	0x3fe9ccf4dd051db4              # double 0.80626910369840354
	.quad	0x3fed2d200ee8c8ee              # double 0.91175845062232752
	.quad	0x3fea7e0b635c92f5              # double 0.82788628965917488
	.quad	0x3fe307f1f6bf394d              # double 0.59471986954467015
	.quad	0x3fa925e3f079b650              # double 0.049117205719863777
	.quad	0x3fecbf7ecbb82dbf              # double 0.89837589062647527
	.quad	0x3fd00d0c03e088b8              # double 0.25079632166501709
	.quad	0x3fd5b76a1419a58c              # double 0.33931972468288829
	.quad	0x3fcb2b565035f0bc              # double 0.21226004520929631
	.quad	0x3fe719edd35a0325              # double 0.72191516189204619
	.quad	0x3fe33a0907cf50f0              # double 0.60083438420636348
	.quad	0x3fe40e96b71869d7              # double 0.62678085099042391
	.quad	0x3fd2956079af6752              # double 0.29036723979298984
	.quad	0x3fd662e84c8d40f8              # double 0.34978682971724551
	.quad	0x3fead1196854cfc2              # double 0.83802481057363587
	.quad	0x3f89b73347a3c600              # double 0.012556458114405977
	.quad	0x3fe83fb987a810f4              # double 0.75777889724170544
	.quad	0x3f98bbb0307b4100              # double 0.02415347381503441
	.quad	0x3fde6fe25fc394ea              # double 0.47557887412979361
	.quad	0x3fc3aa1f327228f0              # double 0.15362920725994611
	.quad	0x3fef840fcbd1b6ec              # double 0.98487081345021243
	.quad	0x3feafb45ce0a374a              # double 0.84317293398064774
	.quad	0x3fd21a79a82265ce              # double 0.28286591929790184
	.quad	0x3fb7217ada7f0df0              # double 0.090354612678360757
	.quad	0x3fe62d395485d1a4              # double 0.69302050121637082
	.quad	0x3fd30526ebdc0070              # double 0.29718945534842245
	.quad	0x3fec83afeb382ad2              # double 0.89107509557046627
	.quad	0x3fe18f24a7a28e8b              # double 0.54872353306969168
	.quad	0x3fe5d2e4f77c675c              # double 0.68199394547557857
	.quad	0x3fed481780413844              # double 0.91505026864775418
	.quad	0x3faf1ca91be73e00              # double 0.060765537887728982
	.quad	0x3fc06c3749918fcc              # double 0.12830248920647447
	.quad	0x3fd53fa6dd3a0116              # double 0.33200999836118805
	.quad	0x3fe7a76100723a65              # double 0.73918199622296454
	.quad	0x3fdd848f66ce7070              # double 0.4612158302277356
	.quad	0x3fe02150cbb032ce              # double 0.50406684668413404
	.quad	0x3fe383aafecaf662              # double 0.60982274784300849
	.quad	0x3fe47375d976011a              # double 0.63909428093760146
	.quad	0x3fe17409de0e001e              # double 0.54541486139351369
	.quad	0x3fb95debd3e01710              # double 0.099089373805409275
	.quad	0x3fd976d3eb36a6a6              # double 0.39787767381731454
	.quad	0x3fe0e1ce22a3ea47              # double 0.52756411328966457
	.quad	0x3fdd711c0a316220              # double 0.46002865786934599
	.quad	0x3fe2117ab32865ff              # double 0.5646337031532197
	.quad	0x3fe9e49d1063d367              # double 0.8091569252124885
	.quad	0x3fe8a71e048ac180              # double 0.77040005576240844
	.quad	0x3fee561723c3cf55              # double 0.94800908074692336
	.quad	0x3fd1a9a319da0d7c              # double 0.27597882771097892
	.quad	0x3fe3602f42030932              # double 0.60549128430310462
	.quad	0x3fd72db8ebb9f598              # double 0.3621656705871259
	.quad	0x3fcb4455de6b2a9c              # double 0.21302293167385222
	.quad	0x3fe8ecb9121cc51a              # double 0.77889684236120904
	.quad	0x3fc793d446aa2af0              # double 0.18419888925958317
	.quad	0x3fdf972c9a986bb4              # double 0.49360194298941029
	.quad	0x3fe706f6f023debd              # double 0.7196001711117429
	.quad	0x3fe71c80ad5dfa7a              # double 0.72222932682764385
	.quad	0x3fca6940a6e37cac              # double 0.20633705281122638
	.quad	0x3fd09b5ebde95db8              # double 0.25948303743413303
	.quad	0x3fc859046b17a740              # double 0.19021659115906608
	.quad	0x3fed17ff4cef98e1              # double 0.90917935396717209
	.quad	0x3fc715b1dd492ebc              # double 0.18034957222913828
	.quad	0x3fed10cdf63a116e              # double 0.90830133525063927
	.quad	0x3fd761e0caaeee38              # double 0.36534900468152243
	.quad	0x3f66a33046087b00              # double 0.0027633612483123349
	.quad	0x3f97d9632e403880              # double 0.023290204713753315
	.quad	0x3f9629538fbe35c0              # double 0.021642022751213963
	.quad	0x3fd4572cc4b623ec              # double 0.31782073221307772
	.quad	0x3fcd65ecd1690ea0              # double 0.22967300629726584
	.quad	0x3fef70e4f1644314              # double 0.98253104349905351
	.quad	0x3fecff5a80c227b9              # double 0.90617108486298215
	.quad	0x3fa4f16f3bc07150              # double 0.040904499095833047
	.quad	0x3fbd6bc52e075130              # double 0.11492569326157276
	.quad	0x3faef316676f3df0              # double 0.060448360563551407
	.quad	0x3fe4d067b21151b1              # double 0.65044007090414457
	.quad	0x3fefacfc9255267f              # double 0.98986652927960949
	.quad	0x3fb5bcc25f2dcba0              # double 0.084911487805398256
	.quad	0x3fedf81780572adb              # double 0.93653464380744411
	.quad	0x3fe333c449670b99              # double 0.60006918274335697
	.quad	0x3fccf718261a097c              # double 0.22629072056231425
	.quad	0x3fa61211e5cd07c0              # double 0.043106612493388763
	.quad	0x3fd0da7ad64a561c              # double 0.26333495070261548
	.quad	0x3fe61ae8c09a4896              # double 0.69078481309613227
	.quad	0x3fe4485ecf4ce7b1              # double 0.63383427131997483
	.quad	0x3fc3fc66c8ed283c              # double 0.15614018259867801
	.quad	0x3fe63f55450a50b9              # double 0.69523108944351641
	.quad	0x3fd4ccb9b358d904              # double 0.32499544634210076
	.quad	0x3fe0d4becb82e1bf              # double 0.52596988437931447
	.quad	0x3fba2bb269aab288              # double 0.10222926215892347
	.quad	0x3fe4cf8f4e3fa18d              # double 0.65033688815042157
	.quad	0x3fe386577c17e7f4              # double 0.61014913784970171
	.quad	0x3fe93ed3a1bcc4ae              # double 0.78891927327471989
	.quad	0x3fef5311c0e12375              # double 0.97889030143515631
	.quad	0x3fe823196f49276b              # double 0.75428458915233187
	.quad	0x3fe27541a98340c5              # double 0.57681353671980473
	.quad	0x3fe8a40e6e83fa49              # double 0.77002641282144524
	.quad	0x3fce39d0af5c2bec              # double 0.23613937914373595
	.quad	0x3fd6d4ee3975cd7e              # double 0.35674625026077667
	.quad	0x3fd4e2e6cb77f190              # double 0.32634897108052829
	.quad	0x3fdc8855536f3ffc              # double 0.44582112453372225
	.quad	0x3fed6b9dbbc46a30              # double 0.91938673661508652
	.quad	0x3fda11466c226728              # double 0.40730438766478239
	.quad	0x3fc9e5a9d793ce4c              # double 0.20232127214659312
	.quad	0x3fd38d3ebab75954              # double 0.30549591287617273
	.quad	0x3fc1c7d44e859378              # double 0.13891080698081359
	.quad	0x3fe7a2b88f9e8ee6              # double 0.73861339617402844
	.quad	0x3fc68ea5f51650cc              # double 0.17622827975413313
	.quad	0x3fdc97317f43736c              # double 0.44672810962747778
	.quad	0x3feb8fefee6b0a4d              # double 0.86132046285667629
	.quad	0x3fe73cc9b697970c              # double 0.7261704031231786
	.quad	0x3fdee93d234dab24              # double 0.48298576781842173
	.quad	0x3fdfef2597d81c0c              # double 0.49897136524708752
	.quad	0x3fe7309d10f2ef76              # double 0.72468427000374791
	.quad	0x3fe8c2e5eb7ea3b5              # double 0.77379127497726208
	.quad	0x3fdc648cb65938e0              # double 0.44363706405137115
	.quad	0x3fc14a445669aae4              # double 0.1350789472520183
	.quad	0x3fe4d2ae92d8faae              # double 0.65071800881545072
	.quad	0x3fa5488d04f44e90              # double 0.041569144110465861
	.quad	0x3fe96ee128c9dab2              # double 0.79478509871008485
	.quad	0x3fda2c48055ce798              # double 0.40895271800729338
	.quad	0x3fd0470aaa4cb5fe              # double 0.25433603888345135
	.quad	0x3fe1dd5330e932b6              # double 0.55826720765033744
	.quad	0x3fe35c0b19584c63              # double 0.60498576116732428
	.quad	0x3fe89fff83150394              # double 0.76953101732225315
	.quad	0x3fc304a56dd2b2c8              # double 0.14857929098561429
	.quad	0x3fe35a79a576a27c              # double 0.60479433362077328
	.quad	0x3fd86463577dc84e              # double 0.3811272005469889
	.quad	0x3fe8dd0e20a5bdfc              # double 0.7769842755932923
	.quad	0x3fdfc70e2c7a0158              # double 0.49652437537590322
	.quad	0x3fd65b1ed2e8f888              # double 0.34931154820140664
	.quad	0x3f919dc879193540              # double 0.017203457251800502
	.quad	0x3fee25e7ccae1ca4              # double 0.942127132192486
	.quad	0x3fd89df77c88e29a              # double 0.38464152490227266
	.quad	0x3fc67f3b914c5ba4              # double 0.1757578334297395
	.quad	0x3fd5be88791d48e8              # double 0.33975421741082679
	.quad	0x3fded78f1740fd50              # double 0.48190667410741117
	.quad	0x3fe2a26de4d5a3fe              # double 0.58232779211277808
	.quad	0x3fecbdf9b4b026f4              # double 0.89819035807269509
	.quad	0x3fc64a1a858686e8              # double 0.17413646240043268
	.quad	0x3fecf83762d4ee27              # double 0.90529984763219751
	.quad	0x3fd08f4b0ead0062              # double 0.25874592240507444
	.quad	0x3fe3de223799b2e9              # double 0.62086592540216856
	.quad	0x3fdd8ddc6d917c1a              # double 0.46178351116208349
	.quad	0x3fe9a237d25281f4              # double 0.80105200842450452
	.quad	0x3fa71c42d4173f80              # double 0.045137489690772803
	.quad	0x3fe4921da1844b99              # double 0.64283639475103194
	.quad	0x3fdf4632e1b47c84              # double 0.48865959207064003
	.quad	0x3fefe9af3c381b4e              # double 0.99727594148212417
	.quad	0x3fe225d93e5f1fc7              # double 0.56712019140194847
	.quad	0x3feaed46be6fe5e4              # double 0.84146439738031775
	.quad	0x3fe9d7381aafff89              # double 0.80752186977768858
	.quad	0x3fde61765992ae88              # double 0.47469862696991827
	.quad	0x3feb08f34249a495              # double 0.84484255739984582
	.quad	0x3feb2303dd519bd5              # double 0.84802430368733417
	.quad	0x3fd41b4f5af9676a              # double 0.31416686901285706
	.quad	0x3fe2c4c0e21ef51a              # double 0.58651775516742366
	.quad	0x3fb6f981bcb05520              # double 0.089744671408273025
	.quad	0x3fe61b5a7121a56f              # double 0.69083902450544865
	.quad	0x3fd3c92ea2d61b1e              # double 0.30915418531405858
	.quad	0x3fb90d3db1ab1df8              # double 0.09785829150779779
	.quad	0x3fe62666d77561c6              # double 0.69218771058790973
	.quad	0x3fe3e089dd430c32              # double 0.62115948882308758
	.quad	0x3fdcdd404dcf21be              # double 0.45100410078569186
	.quad	0x3fe4565144b8ab33              # double 0.63553679868832658
	.quad	0x3fda5a7342fa3752              # double 0.41177064457666746
	.quad	0x3fe6698ef3deb74c              # double 0.70038554793220831
	.quad	0x3fe9e992ffaef649              # double 0.80976247728512718
	.quad	0x3fca01dca294f6e8              # double 0.20318181932991952
	.quad	0x3fab2e0277aa4180              # double 0.053085400683928974
	.quad	0x3fe260207346b30b              # double 0.5742342235076604
	.quad	0x3fa7029a28724bb0              # double 0.044941728055298724
	.quad	0x3fd4fe421c4334de              # double 0.32801869163524866
	.quad	0x3fd176340d25dc04              # double 0.27283955844853858
	.quad	0x3fcf69ed8d2e0f2c              # double 0.24542016404677136
	.quad	0x3fdb3b42efd1bbf0              # double 0.42549203319407436
	.quad	0x3fe2ee5c3f18b213              # double 0.59159672091988325
	.quad	0x3fe06fa04c8d8654              # double 0.5136262412235717
	.quad	0x3fcc78ce05394da8              # double 0.22243666892118807
	.quad	0x3fe4404041f3514d              # double 0.63284314042042811
	.quad	0x3fc192a677c413ac              # double 0.13728791091867032
	.quad	0x3fd44a5506549734              # double 0.31703687303739803
	.quad	0x3fd9cf67ce00bebc              # double 0.40328402631255833
	.quad	0x3fed62f8065c5be1              # double 0.91833115808810473
	.quad	0x3fdd515e87197b7a              # double 0.4580913848239373
	.quad	0x3fdde9b0b832f480              # double 0.4673883246248991
	.quad	0x3fe9b5bd0fc2830c              # double 0.80343487814033798
	.quad	0x3fb639498f4ed220              # double 0.086811635482100247
	.quad	0x3fc6be1814825dd8              # double 0.17767621041706039
	.quad	0x3feb9e19cfdca44e              # double 0.86304941747688146
	.quad	0x3fe9ed34c35522c6              # double 0.81020582342997538
	.quad	0x3fc2ea49a7b3a3f8              # double 0.14777489365158636
	.quad	0x3fc0b0331fce8bb0              # double 0.13037718823497135
	.quad	0x3fdf1534e7a7b024              # double 0.48566935179292359
	.quad	0x3fefb956d4293dc7              # double 0.99137441098894718
	.quad	0x3fd6479cdbc88386              # double 0.34812089408119851
	.quad	0x3fd1f0a49624f722              # double 0.28031267797983805
	.quad	0x3fd0e0a0a5dfb026              # double 0.26371017645465356
	.quad	0x3fe543fa46180e13              # double 0.66454805078723422
	.quad	0x3fe11b67d019a875              # double 0.53459540028167274
	.quad	0x3fd35d360e4b167a              # double 0.30256415744620535
	.quad	0x3fd6c636b90e2e3c              # double 0.35584800788703652
	.quad	0x3fc72514039b0b40              # double 0.18081903625542317
	.quad	0x3fdcf61ca53a283a              # double 0.45252147803751408
	.quad	0x3fd3b9a4dcc5946e              # double 0.30820581016298021
	.quad	0x3fd6db897dd3ef40              # double 0.35714947975042222
	.quad	0x3fdebbeb31e551c6              # double 0.48021964905390424
	.quad	0x3fe877bb9f8bbd3a              # double 0.76461583291339896
	.quad	0x3fe0c7a7e76f2180              # double 0.52437205507253282
	.quad	0x3fedfbcfbe0a28ba              # double 0.9369887077057435
	.quad	0x3fe15da3714deb95              # double 0.54268047456513335
	.quad	0x3fdaafa3e5785abc              # double 0.41697022828286001
	.quad	0x3fd130e435b0f396              # double 0.26860909693987745
	.quad	0x3fd5ecfbd88b22c0              # double 0.34258934161020349
	.quad	0x3fd2314b2575038a              # double 0.28425863893431169
	.quad	0x3fe56cbd55a141d6              # double 0.66952387547103842
	.quad	0x3fe1a878206ea6cd              # double 0.55181509336872525
	.quad	0x3fecbaf15591b74f              # double 0.89782015526518844
	.quad	0x3f8bda1a26dd52c0              # double 0.013599590598155742
	.quad	0x3fd6447d827c630e              # double 0.34793031447183942
	.quad	0x3fe8ee94cf0ce34b              # double 0.7791236919357315
	.quad	0x3fe3d4054351fbea              # double 0.61963141582952841
	.quad	0x3f8799cb401fc5c0              # double 0.011523807424938748
	.quad	0x3fec98b65516a576              # double 0.8936416303524044
	.quad	0x3fc268e0861d683c              # double 0.1438255934579632
	.quad	0x3fba381b27c062b0              # double 0.10241861076827763
	.quad	0x3fc2af9fb53c7048              # double 0.14598461484354375
	.quad	0x3fdd183e0aa45e20              # double 0.45460463561309616
	.quad	0x3fe16eed4343b744              # double 0.54479087007141702
	.quad	0x3fe4ba73b861718a              # double 0.64776025783389568
	.quad	0x3fe62ca67ef429a9              # double 0.69295048518806823
	.quad	0x3fe899d57b25ddc6              # double 0.76877855350806423
	.quad	0x3fe9ac5b31beb443              # double 0.80228957858856409
	.quad	0x3fef921cb08d394e              # double 0.98658594591851467
	.quad	0x3fd0f762c6f25250              # double 0.26509923389793233
	.quad	0x3fa97c2fee972f30              # double 0.049775598406624488
	.quad	0x3fdb283abce19ccc              # double 0.42433041043700537
	.quad	0x3fb6ff6e6b5373e8              # double 0.089835072710641506
	.quad	0x3feee29f8d2f8b72              # double 0.96516397071205362
	.quad	0x3fe8e7d4cfc1a710              # double 0.77829971864159297
	.quad	0x3f931d2473fa2f40              # double 0.018665856913272494
	.quad	0x3fdee1a7534ac614              # double 0.48252280363075895
	.quad	0x3fc3bb50b495f914              # double 0.15415390794437001
	.quad	0x3fea2fd8115e06c2              # double 0.8183403338627715
	.quad	0x3fca7de82fba9770              # double 0.20696737604628934
	.quad	0x3fe527409292a382              # double 0.66104153277875377
	.quad	0x3fd5cceb7e396732              # double 0.34063231779656455
	.quad	0x3fde10b0807b4f64              # double 0.46976864382781103
	.quad	0x3fb9071b97f4dd68              # double 0.097764706228976928
	.quad	0x3febf8ef05249b74              # double 0.87413741116038901
	.quad	0x3fe82b3a42b4f4cb              # double 0.75527680424388544
	.quad	0x3fb040ecdf12fbf0              # double 0.063490681134666493
	.quad	0x3fd299a517a825e0              # double 0.29062774000393965
	.quad	0x3fef880ae5e9946c              # double 0.98535675911683773
	.quad	0x3fedd087aa44da9a              # double 0.93170531516701094
	.quad	0x3fd4c146c3e79f96              # double 0.32429665690733012
	.quad	0x3fedcbcdba6329fc              # double 0.93112837222844246
	.quad	0x3fde692a0feecbb2              # double 0.47516871982514453
	.quad	0x3fd1c11c96a08d46              # double 0.27741160115893526
	.quad	0x3fdf126776f56daa              # double 0.48549830071507449
	.quad	0x3fedaa601f9863b4              # double 0.92704778834296641
	.quad	0x3fe11e19376a767f              # double 0.53492413352405765
	.quad	0x3fe400826f8f7186              # double 0.62506219662786644
	.quad	0x3feecdb035734554              # double 0.9626084369612422
	.quad	0x3feff54db57f9241              # double 0.99869428109065705
	.quad	0x3fe939e7c9b9505f              # double 0.78831853293605636
	.quad	0x3fcc79c232c53b44              # double 0.22246577719712424
	.quad	0x3fe2cfd3395ef39b              # double 0.58786927418951807
	.quad	0x3fe50bfb2b10dfe6              # double 0.6577125397807293
	.quad	0x3fc941085120a908              # double 0.19729713403041438
	.quad	0x3fddfc6ea7798cc8              # double 0.46853224139176719
	.quad	0x3feeccdab86c5caa              # double 0.96250663776563283
	.quad	0x3fe0141a687e3c78              # double 0.50245399864969809
	.quad	0x3fd2788bf717bbf0              # double 0.28860758905551531
	.quad	0x3feebbf3b6b6f2a8              # double 0.96044336019948151
	.quad	0x3fcb36fff40baea4              # double 0.21261596123018933
	.quad	0x3fc7792c0eb9affc              # double 0.18338537901888674
	.quad	0x3feeeeb5f52a678c              # double 0.96663949855722952
	.quad	0x3fea53d30e4b227f              # double 0.82273247520159021
	.quad	0x3fef52247370dbd4              # double 0.97877714678804261
	.quad	0x3fd16137855e781a              # double 0.27155864738767976
	.quad	0x3fea3802274464a4              # double 0.81933696431510272
	.quad	0x3fea491c1af6f75b              # double 0.82142453447861941
	.quad	0x3fd29e377898e566              # double 0.29090678002429227
	.quad	0x3fbebdd598d3fff0              # double 0.12008414250522015
	.quad	0x3fefab69613bf568              # double 0.98967427245194716
	.quad	0x3fe0b6f1f0cd892f              # double 0.52233216316043307
	.quad	0x3fe5b2a3e07d6c9c              # double 0.6780566582268821
	.quad	0x3fe433f05cd4679a              # double 0.63134019976427003
	.quad	0x3fe272a67ce07587              # double 0.57649540319441506
	.quad	0x3fe18bf563715488              # double 0.54833478376771527
	.quad	0x3fe8e955b7130686              # double 0.77848325497343818
	.quad	0x3fb878904b917520              # double 0.095589655350938773
	.quad	0x3fec7385499bd0fc              # double 0.88910164238635003
	.quad	0x3fe3f5d9d7115007              # double 0.62376110082050296
	.quad	0x3feeee3a01d37ba5              # double 0.96658039433156217
	.quad	0x3fc435157f492df4              # double 0.1578699943078018
	.quad	0x3fb6c3574b2f5138              # double 0.088918166976616031
	.quad	0x3fe06646d5d3b170              # double 0.51248494875976114
	.quad	0x3fe23b01f85e4379              # double 0.56970308789651292
	.quad	0x3fe8ee4b680a4c3c              # double 0.77908869095188704
	.quad	0x3fdedcbfebc5eac0              # double 0.48222349190443126
	.quad	0x3fbc3e2c17577988              # double 0.11032367296090773
	.quad	0x3fb16b9db13c09a0              # double 0.06804833962454504
	.quad	0x3fd2de80a150baa6              # double 0.29483047250225025
	.quad	0x3fea60bf3a4be865              # double 0.82430993448293732
	.quad	0x3fe18e9a82f646cb              # double 0.54865766123313031
	.quad	0x3fe4fe09772cea3d              # double 0.65601037289099617
	.quad	0x3fe84df9c8bd210e              # double 0.75951852042001788
	.quad	0x3fd4c04918761586              # double 0.32423617733760357
	.quad	0x3fee3a772f0c992d              # double 0.94463690938281319
	.quad	0x3fdce76afa05a53a              # double 0.45162462631431632
	.quad	0x3fdafe8dc7c0f4d6              # double 0.42178673274231693
	.quad	0x3feafc1e11bcf24f              # double 0.84327605690448049
	.quad	0x3fe963643ddfa901              # double 0.79338275990201634
	.quad	0x3fe34b15fd3c3aaf              # double 0.60291575870527037
	.quad	0x3fdfbccc0808c6ba              # double 0.49589825424764522
	.quad	0x3feaf3da6d3dfbee              # double 0.84226723991730323
	.quad	0x3fd43ee2d5871208              # double 0.31633826114946872
	.quad	0x3fede577ddb4ed36              # double 0.93426125814531846
	.quad	0x3f6692f33a656600              # double 0.0027556181477563779
	.quad	0x3faabadb96187170              # double 0.052206861564829121
	.quad	0x3fed9db50f775832              # double 0.92550137539615762
	.quad	0x3fdaf355e818b8f6              # double 0.42110202470475089
	.quad	0x3fe4559cae80013e              # double 0.63545068819079353
	.quad	0x3fed02302a72645e              # double 0.90651710787200179
	.quad	0x3fe0792dad734988              # double 0.51479228856105497
	.quad	0x3fe884bfb0820dc7              # double 0.76620468591902913
	.quad	0x3fe89d393f84be0a              # double 0.76919233709298962
	.quad	0x3febfb6368b21c1d              # double 0.87443705032717711
	.quad	0x3fd6a0f826727c9c              # double 0.35357478861437541
	.quad	0x3fd17f67cf3c7806              # double 0.27340121496115477
	.quad	0x3fc78cbe666838a0              # double 0.1839826583895432
	.quad	0x3fcd8b6b67cf7090              # double 0.23081724709380014
	.quad	0x3fdacf86ee951b80              # double 0.41891644763057201
	.quad	0x3fdca1b78bc677a4              # double 0.44737042093208346
	.quad	0x3fcf7eb56d71b650              # double 0.24605434268908022
	.quad	0x3fdfe135c28d3734              # double 0.49812072753126135
	.quad	0x3fc7f1125ac6d5f4              # double 0.1870444243665329
	.quad	0x3fc13079d718268c              # double 0.13429186823514205
	.quad	0x3fe20447e988155d              # double 0.56302257167468961
	.quad	0x3fe8f95d956b8bf2              # double 0.78044013198484508
	.quad	0x3fdf9f47aa851612              # double 0.49409667637186871
	.quad	0x3fd87ac58e69daf2              # double 0.38249339015548778
	.quad	0x3fe55aa8e6360e8f              # double 0.66731686556927794
	.quad	0x3fcc9b7eb3fbab70              # double 0.2234953287910133
	.quad	0x3fdcf229f60e294e              # double 0.4522805121311152
	.quad	0x3fe3069fe6265d60              # double 0.59455866767067889
	.quad	0x3fc2b3b833b11b90              # double 0.14610960506453496
	.quad	0x3fc24583562da4dc              # double 0.14274636943745278
	.quad	0x3fd3c31fb82cfd24              # double 0.30878441797172429
	.quad	0x3feb0d59cdb60f24              # double 0.84537973573649027
	.quad	0x3fd538181186516c              # double 0.33154870711702844
	.quad	0x3fea7afee4ab0b65              # double 0.82751412069079022
	.quad	0x3fefb58dd43cdd31              # double 0.99091235592542237
	.quad	0x3febbc7dd210107c              # double 0.86675921466714056
	.quad	0x3fe94e9ac629825d              # double 0.79084528640312224
	.quad	0x3fe9714889bd1b79              # double 0.79507853414621288
	.quad	0x3fe9d8881cce7c6e              # double 0.80768209100996358
	.quad	0x3fe06a2085748e95              # double 0.51295496049393086
	.quad	0x3fe4c514e7683481              # double 0.64905781933488538
	.quad	0x3fd97f14fcdd6522              # double 0.39838146871405133
	.quad	0x3fc2ba7963e4d3bc              # double 0.14631574037198714
	.quad	0x3fbbac5bedf64bf0              # double 0.10809874114629259
	.quad	0x3fc527d9153cd558              # double 0.16527856385224982
	.quad	0x3fe1ea65aeec40b0              # double 0.55986293949719901
	.quad	0x3fe792162c668e55              # double 0.73658283874506003
	.quad	0x3fef8f2d7600322c              # double 0.98622773215317272
	.quad	0x3fbc60fe609677f8              # double 0.11085500581836516
	.quad	0x3fe5d4fb4c4c7bf6              # double 0.68224873449423629
	.quad	0x3fe2ed398c670472              # double 0.59145810530038845
	.quad	0x3fb07c4970f60bb8              # double 0.064396467283628023
	.quad	0x3fe756aec8b99623              # double 0.72933139041987649
	.quad	0x3fa5457f66429d40              # double 0.041545850022254971
	.quad	0x3fde551822f814be              # double 0.47394374289462948
	.quad	0x3fef4acf500cab90              # double 0.97788205752054758
	.quad	0x3fde365be5c45c16              # double 0.4720678085154203
	.quad	0x3fe8f5ca55d5876e              # double 0.78000370754692283
	.quad	0x3fc458d9ce9be58c              # double 0.15896151150063209
	.quad	0x3fba76d0fb75edf8              # double 0.10337549342323615
	.quad	0x3fec6c7462bac874              # double 0.88823909075860152
	.quad	0x3fee177aabed28f7              # double 0.94036611155868755
	.quad	0x3fc42601434e43e8              # double 0.15740981851970948
	.quad	0x3feb8fe8662bd2f8              # double 0.86131687121687062
	.quad	0x3fd52e986fb3b04c              # double 0.33096896084203276
	.quad	0x3fe569be32297c31              # double 0.66915807530666005
	.quad	0x3fe5f154766dae67              # double 0.68570922022395286
	.quad	0x3feee11f0dcae815              # double 0.96498062795513084
	.quad	0x3fc429afe3148240              # double 0.15752218807121388
	.quad	0x3fc2232584bc08a0              # double 0.1416975877874096
	.quad	0x3fe68d059b16d174              # double 0.70471458712431323
	.quad	0x3fdbe66ee7414b8a              # double 0.43593952735425801
	.quad	0x3fdaa01d83da3d70              # double 0.41602266193600368
	.quad	0x3fef8a25bb71a915              # double 0.98561369524148523
	.quad	0x3fefdde279f3fdcf              # double 0.99583553141558833
	.quad	0x3feea9bc6c7eee90              # double 0.95821973028746932
	.quad	0x3fb627345d6c6b48              # double 0.086535713966822247
	.quad	0x3fcd25997dcf1974              # double 0.22770994799629884
	.quad	0x3fe675f8a424dc2a              # double 0.70190078791973076
	.quad	0x3fe8e52491a3c009              # double 0.77797153897518101
	.quad	0x3fe581c3f4321805              # double 0.67209050840824658
	.quad	0x3fa9910243207e10              # double 0.049934454626278435
	.quad	0x3feba0640ce65678              # double 0.86332895774348994
	.quad	0x3fef1bf77c691e02              # double 0.9721639089484031
	.quad	0x3fb307617b39a170              # double 0.074331371864564622
	.quad	0x3fe6d0b58f034eda              # double 0.71297719890796007
	.quad	0x3fc84ca88ec3da1c              # double 0.18983942957830002
	.quad	0x3fbc189102952608              # double 0.10974985421230354
	.quad	0x3fdf42e4a2094e58              # double 0.48845783065664738
	.quad	0x3fe5347f7d7593b6              # double 0.66265844825522069
	.quad	0x3fd8ebcc4de2f1d4              # double 0.38939197164634476
	.quad	0x3f96bf29cb84f320              # double 0.022213604971727752
	.quad	0x3fb69f86f7bb9fe0              # double 0.088371692163149884
	.quad	0x3fea8eebc3b7a920              # double 0.82994640565928889
	.quad	0x3fe892ae99240026              # double 0.76790552053717387
	.quad	0x3faaca293d313a90              # double 0.052323616714251675
	.quad	0x3fea107e9c141142              # double 0.81451349720058652
	.quad	0x3fbba6afb592f460              # double 0.10801218207321162
	.quad	0x3fb16a863f2e3578              # double 0.068031683373382168
	.quad	0x3fe70cd27c6da315              # double 0.72031521131893561
	.quad	0x3fe781df2dfb4cd7              # double 0.73460349064626029
	.quad	0x3fec51d5494fd96d              # double 0.88498939818127342
	.quad	0x3fce46573047a8dc              # double 0.23652162415903077
	.quad	0x3fdf0dcb8be09d96              # double 0.48521698627379217
	.quad	0x3fc069906e407f58              # double 0.12822156318088207
	.quad	0x3fd70c1038ba54b2              # double 0.36011128940419745
	.quad	0x3fe210b9002c7037              # double 0.56454134019759905
	.quad	0x3fe473fef293da3c              # double 0.63915965441157807
	.quad	0x3feec56df1e16540              # double 0.96160027735019326
	.quad	0x3fb3f8fe42c7fe80              # double 0.078018084815989041
	.quad	0x3fde15288b1806b6              # double 0.47004140456565879
	.quad	0x3fe1f616cb58fbaa              # double 0.56129016605688276
	.quad	0x3fa0d4fe9765ad80              # double 0.032875019055462751
	.quad	0x3fe95cb4f261ab96              # double 0.79256675090924733
	.quad	0x3fe2691156ffe24f              # double 0.57532565109347356
	.quad	0x3fecae1c8ba9801f              # double 0.89625384595638369
	.quad	0x3fd3242385fadb18              # double 0.29908073505377919
	.quad	0x3fe2e698445979f3              # double 0.59064877843394326
	.quad	0x3fe7ad999111cf63              # double 0.73994139036083728
	.quad	0x3feb50cdd73c4a0c              # double 0.85361377752480072
	.quad	0x3fe285cd6990b1ac              # double 0.57883329981045994
	.quad	0x3fc68437d874cae8              # double 0.17590997761870786
	.quad	0x3fe04c0038c0b3f7              # double 0.50927744946022713
	.quad	0x3fd141cfced8b5ce              # double 0.26964183044296142
	.quad	0x3fc716b595823070              # double 0.18038053322050329
	.quad	0x3fb31d4a414657e0              # double 0.07466568082449454
	.quad	0x3fe3b1e7f806cbce              # double 0.61546705668149015
	.quad	0x3fe2095d2661805e              # double 0.56364305015814486
	.quad	0x3feb10e8739f359a              # double 0.845813966583296
	.quad	0x3fe95f2c089d3149              # double 0.79286767656734825
	.quad	0x3fe96e579297535b              # double 0.79471949225499416
	.quad	0x3feb4c6039547f19              # double 0.85307322690275378
	.quad	0x3fe52e11877515ec              # double 0.6618735929156947
	.quad	0x3feea02691e2053e              # double 0.95704964154007377
	.quad	0x3fcc933aae21a7a0              # double 0.22324307920945063
	.quad	0x3fe135326265b586              # double 0.53774375169966571
	.quad	0x3fe62f60ec7a1161              # double 0.69328352152710349
	.quad	0x3fc7910f6502be78              # double 0.18411438400424962
	.quad	0x3fd75bcf4e7f55d2              # double 0.36497862497102773
	.quad	0x3fe068665e359c48              # double 0.51274412536884828
	.quad	0x3fda7d66bff96fe0              # double 0.41390389201637667
	.quad	0x3fe07a32b965190c              # double 0.51491676530784636
	.quad	0x3fee62112621b5f0              # double 0.9494710678824827
	.quad	0x3fc1fbd887a35218              # double 0.14049822447727034
	.quad	0x3feac4187841836d              # double 0.83643744933588737
	.quad	0x3fd2f08f7efccc5a              # double 0.29593264962313059
	.quad	0x3fbd506f917465a0              # double 0.11450860310687583
	.quad	0x3fca4ab911498b0c              # double 0.20540536254983299
	.quad	0x3fe82f4cae069c6f              # double 0.75577386845988126
	.quad	0x3fde895c0ea248b4              # double 0.47713376454442913
	.quad	0x3fc4f4db00d62518              # double 0.16372239628643892
	.quad	0x3fec9ce6dac1c2ea              # double 0.89415304876282886
	.quad	0x3fbdee8387378d68              # double 0.11692068148800205
	.quad	0x3fda6bae8b6371ee              # double 0.41282237636713048
	.quad	0x3fa698c043699bf0              # double 0.044134147862500472
	.quad	0x3fbbb7315ae54d48              # double 0.10826405018933827
	.quad	0x3fd4ba449423e71a              # double 0.32386888949223336
	.quad	0x3fccc738da2711d8              # double 0.22482977535231785
	.quad	0x3fea92c8c5213a5f              # double 0.83041800023950063
	.quad	0x3fd5a73ae2e59592              # double 0.33833191068546242
	.quad	0x3fe48479ae26f44b              # double 0.64117130292982816
	.quad	0x3fd41c1be879366c              # double 0.31421563818444187
	.quad	0x3fe3de62c8fa2b50              # double 0.62089671376575417
	.quad	0x3fefe1922cf7c9b5              # double 0.99628552229687861
	.quad	0x3fdfce420113f50c              # double 0.4969639788176472
	.quad	0x3fdb9ef7de46bacc              # double 0.43157765108746271
	.quad	0x3fe1271ee911bbd1              # double 0.53602548142759521
	.quad	0x3fbc2a0569715a78              # double 0.11001619171416077
	.quad	0x3fe3e6b48cdb43c3              # double 0.62191226492915808
	.quad	0x3fdf371a76609296              # double 0.48773824272419952
	.quad	0x3fee7da66fd26e7c              # double 0.95283815231546453
	.quad	0x3fcf4d0726f7308c              # double 0.2445382061254161
	.quad	0x3fd3c81be091e4b2              # double 0.30908867769864934
	.quad	0x3fd43535c199d5cc              # double 0.31574767977084828
	.quad	0x3fe4e5b419e1c70e              # double 0.65303998045985323
	.quad	0x3fdb627b846300e2              # double 0.42788589409248179
	.quad	0x3fec71fc885139f9              # double 0.88891436218710773
	.quad	0x3fda80a9dff669be              # double 0.41410300132124778
	.quad	0x3fe1917ebbd47d93              # double 0.54901062665514855
	.quad	0x3fd4bb8f7c7bf774              # double 0.32394778401054869
	.quad	0x3fc1fae604789094              # double 0.14046931474979785
	.quad	0x3fe9e6300a87eb09              # double 0.80934907967397962
	.quad	0x3fb0f15323891e90              # double 0.066182323623360739
	.quad	0x3fb299d84b219980              # double 0.072659986822690925
	.quad	0x3fe5ffa41b0e97ca              # double 0.68745618137904185
	.quad	0x3fdfae003c010d64              # double 0.49499517307068275
	.quad	0x3fd8daa474be45cc              # double 0.38834487343509916
	.quad	0x3fe51129d0f74c3d              # double 0.65834513486550572
	.quad	0x3fb88aa85c7c4868              # double 0.095865748004401063
	.quad	0x3fd90015df932964              # double 0.39063021501046635
	.quad	0x3fc9020d17ccca5c              # double 0.19537509595973546
	.quad	0x3fb126b2b0f4a0b0              # double 0.066996734811825887
	.quad	0x3fced966980018f0              # double 0.24100954458135204
	.quad	0x3fef504d2a4a5d97              # double 0.97855242023335875
	.quad	0x3fdabba1644fabf6              # double 0.41770205303208685
	.quad	0x3fe519d67bdaa169              # double 0.65940403166045514
	.quad	0x3fe7738c7da7d7ad              # double 0.73285507719150689
	.quad	0x3fe59e53eb112d13              # double 0.67557712470571329
	.quad	0x3fc99abbc097854c              # double 0.20003458885097769
	.quad	0x3fce140f69d7e2c8              # double 0.23498718898897253
	.quad	0x3fd9df9b53599450              # double 0.4042728723491722
	.quad	0x3fd55dc3942b9be0              # double 0.33384789914856405
	.quad	0x3fc76b184fd51e94              # double 0.18295577905722793
	.quad	0x3fe38d6b73574141              # double 0.61101315047748284
	.quad	0x3fc3acd9de0b52fc              # double 0.15371249525073682
	.quad	0x3feaf4182a106707              # double 0.84229667869223668
	.quad	0x3fecfdffaec089ab              # double 0.90600570803899438
	.quad	0x3fe4f6a5141b5216              # double 0.65510801245779038
	.quad	0x3f9169f173cc39e0              # double 0.01700570363305498
	.quad	0x3fbbad212c336388              # double 0.10811049775237624
	.quad	0x3fe7ee91f7856dd2              # double 0.74787233680711496
	.quad	0x3fe5984c665a0616              # double 0.67484111776883782
	.quad	0x3fe78bc652ea2826              # double 0.73581234163544162
	.quad	0x3fdf81c2c910f71e              # double 0.49229497561815261
	.quad	0x3fca844c8ce28d04              # double 0.20716244582317966
	.quad	0x3fe87943354862b5              # double 0.76480255514896689
	.quad	0x3fb0528cc8eb28d0              # double 0.063759612133398536
	.quad	0x3feb41f862b796c7              # double 0.85180300980274459
	.quad	0x3fe5b7556721a1fe              # double 0.67862959044310833
	.quad	0x3fe91f60b4c82e86              # double 0.78508029278732816
	.quad	0x3fd312e3fddd103a              # double 0.29802799025879134
	.quad	0x3fe9a6ee57dce165              # double 0.8016273227758971
	.quad	0x3fe558ffe2164deb              # double 0.66711420209543115
	.quad	0x3fe92d8357c3e444              # double 0.78680579320565202
	.quad	0x3fdde24eea4bc99c              # double 0.46693776016686583
	.quad	0x3fed4073021e1b24              # double 0.91411734021753376
	.quad	0x3feeb9e2c5ab7580              # double 0.96019114119887661
	.quad	0x3fd68e2a37fe524c              # double 0.35242705791578
	.quad	0x3fea3731f085db05              # double 0.81923768021701504
	.quad	0x3fef767668b2253e              # double 0.98321075867094243
	.quad	0x3fed3afe870dab54              # double 0.91345144631973562
	.quad	0x3fc28c4240157bf0              # double 0.14490535859201215
	.quad	0x3fb2858292502e30              # double 0.072349701615330941
	.quad	0x3fd78bca9a52d02a              # double 0.36790719099667746
	.quad	0x3fee2f7ce658e838              # double 0.94329686155038583
	.quad	0x3fd2fa46a1bf74dc              # double 0.29652562900248625
	.quad	0x3fd7c773d4012960              # double 0.37154861167495845
	.quad	0x3fc5a6c61cb0ba30              # double 0.16915203476806218
	.quad	0x3fe42d5cedb238ee              # double 0.63053747582469355
	.quad	0x3fe5fe27884dd44c              # double 0.68727470991019279
	.quad	0x3fd6fe2185f68724              # double 0.35926092226337603
	.quad	0x3fe733fe95121143              # double 0.72509698024126867
	.quad	0x3feff4ef18b90331              # double 0.99864916638043699
	.quad	0x3fdc76bcbf0ce606              # double 0.44474714905990742
	.quad	0x3fe17e87bd567bae              # double 0.54669558506053817
	.quad	0x3fc8ebe687f95578              # double 0.19469911231378112
	.quad	0x3fd3c68286d9b9e6              # double 0.30899108094209138
	.quad	0x3fe9d4a7220e0502              # double 0.80720860148736073
	.quad	0x3fa74a58f2f40e60              # double 0.045489101083174388
	.quad	0x3fd1a5adfe2234f4              # double 0.27573728387581231
	.quad	0x3fe6c287947d7b8c              # double 0.71124629022584562
	.quad	0x3fd72db102030f56              # double 0.362163783993528
	.quad	0x3f83e8d083a3f740              # double 0.0097214021848192055
	.quad	0x3fdf755f9b11584a              # double 0.49153890746436402
	.quad	0x3fd615d755142a58              # double 0.345083077511537
	.quad	0x3fe644ff364076a1              # double 0.69592247577721278
	.quad	0x3fef4837ffac67f0              # double 0.97756576477263302
	.quad	0x3fe51bde5452dc8b              # double 0.65965191335171036
	.quad	0x3fcb53acf945f440              # double 0.21349107905908404
	.quad	0x3fe9e6d7eeb77f29              # double 0.80942913650867354
	.quad	0x3fda4db77b5a7a54              # double 0.41099345251305874
	.quad	0x3fbc3cf9de070658              # double 0.11030542059509096
	.quad	0x3fe37e85bef1bf50              # double 0.60919463437856258
	.quad	0x3fec52e91e942916              # double 0.88512092564022526
	.quad	0x3f9f557d081fd620              # double 0.030599549885627408
	.quad	0x3fe5e59967926576              # double 0.68427725056532895
	.quad	0x3fef70b7d925ce0b              # double 0.98250954066901508
	.quad	0x3fc20f4fc2bd12d4              # double 0.14109227188796203
	.quad	0x3fa33c939e1d3650              # double 0.037571538020170991
	.quad	0x3feb667b8856fe53              # double 0.85626007679815996
	.quad	0x3fe8fe20f7977685              # double 0.78102157933945249
	.quad	0x3fd62793af87ed0e              # double 0.34616558210082438
	.quad	0x3fe91092cad6a914              # double 0.78327312104127821
	.quad	0x3fe474d16e09ae68              # double 0.63926002017747141
	.quad	0x3fd06b926cfb9b36              # double 0.25656567232947525
	.quad	0x3fe133530ff4486a              # double 0.53751519313869989
	.quad	0x3fe924e4c605a410              # double 0.78575361896685259
	.quad	0x3fe26f8b5cbdc3cd              # double 0.57611625779656495
	.quad	0x3fd7c1bf261bfc14              # double 0.37120035859692391
	.quad	0x3fef2000a11084d7              # double 0.97265655000605988
	.quad	0x3f434e189671e800              # double 5.8914375848861944E-4
	.quad	0x3fe655c448d1faf8              # double 0.69796957228376666
	.quad	0x3fdb79c27c14f826              # double 0.42930662267088093
	.quad	0x3fb3a974c34c7048              # double 0.076804444961852458
	.quad	0x3fdaabed9afbc890              # double 0.41674366126165641
	.quad	0x3fc7d9e9cf118414              # double 0.1863376866413381
	.quad	0x3fd26b1434c39a34              # double 0.28778557923070314
	.quad	0x3fdd5fc495af2c4c              # double 0.45897020928959331
	.quad	0x3fc625a7101c6904              # double 0.17302406584423846
	.quad	0x3fef9bbff9b34b40              # double 0.9877624394378941
	.quad	0x3fdcecb7d074271a              # double 0.45194812161263231
	.quad	0x3fed79185d203c13              # double 0.92103212536483381
	.quad	0x3fe014327cc4d775              # double 0.50246548050812001
	.quad	0x3feb77f5b3fee9f9              # double 0.85839352755948461
	.quad	0x3feb49394443334e              # double 0.85268843967933505
	.quad	0x3fe08235b1584a39              # double 0.51589474332496998
	.quad	0x3fb48c6c59670d38              # double 0.080267688586037944
	.quad	0x3fdc25a15ddb2678              # double 0.43979677358274882
	.quad	0x3fc63bb7d2941154              # double 0.17369745046756668
	.quad	0x3fe38cf299b00222              # double 0.61095552460762215
	.quad	0x3fdcbe1232e30f18              # double 0.44910101861408824
	.quad	0x3fa41c5e8ac77cb0              # double 0.039278940621210068
	.quad	0x3fd48531d18576ca              # double 0.32062955342358335
	.quad	0x3fd3f77c3500bba4              # double 0.31198029686032158
	.quad	0x3fc7c287dd5f7984              # double 0.18562410649515126
	.quad	0x3feec00f97fef8f4              # double 0.96094493567195948
	.quad	0x3fac859c32e35e20              # double 0.05570686455910967
	.quad	0x3fcff19da85b799c              # double 0.24956103058407286
	.quad	0x3fcfa4b878c90c8c              # double 0.24721437356683784
	.quad	0x3fed4578af56247d              # double 0.9147303986111549
	.quad	0x3fc2c8397c548fa8              # double 0.14673536845031987
	.quad	0x3fd02949d40b1ae4              # double 0.25252004344331014
	.quad	0x3fe97681258ae6ed              # double 0.79571587879692418
	.quad	0x3fc944b192c30c64              # double 0.19740886369808941
	.quad	0x3fe4677ea7d90086              # double 0.63763363631007119
	.quad	0x3fe77d25bfb9378f              # double 0.73402678915020825
	.quad	0x3fe0451191d778e4              # double 0.5084312294455029
	.quad	0x3fe7e6c45db516dc              # double 0.74691980650160472
	.quad	0x3fb89bb6a1065818              # double 0.096125997841540189
	.quad	0x3fe6b6e0995b10e2              # double 0.70982389404573731
	.quad	0x3fed558d0613cefd              # double 0.91669322192180369
	.quad	0x3fe3c8838ed68e8c              # double 0.61822679422444216
	.quad	0x3fd7d3ab0f33ce4a              # double 0.37229420170408345
	.quad	0x3fdf32b8fd713426              # double 0.48747086286749874
	.quad	0x3fd695499ceb6eb8              # double 0.35286178898034448
	.quad	0x3fe74544ae630e4c              # double 0.72720560131023992
	.quad	0x3fdbb958a606ca04              # double 0.43318763936545701
	.quad	0x3fcf363264a764c0              # double 0.24384145655384337
	.quad	0x3fed0bac2837320b              # double 0.90767486433611688
	.quad	0x3fefc3fd7fdca7ca              # double 0.99267458889993887
	.quad	0x3fea0d7ca06a1cda              # double 0.81414634066541258
	.quad	0x3fe3f390ea35f36d              # double 0.6234821867397905
	.quad	0x3fe2a99662ec9f5b              # double 0.58320159264711025
	.quad	0x3fe589e0c20db553              # double 0.67308080578883744
	.quad	0x3fcbe45335887354              # double 0.21790542711178296
	.quad	0x3fd57a14aa1ef192              # double 0.335576215871492
	.quad	0x3feda32b2bac2898              # double 0.9261680462816626
	.quad	0x3fdf3dd5f66c2f80              # double 0.48814915718752871
	.quad	0x3fc91988f503eb74              # double 0.19609176601064926
	.quad	0x3feaf8cb2fccb44a              # double 0.84287032447685672
	.quad	0x3fe80a9807040271              # double 0.75129319544073614
	.quad	0x3fc0b396375b20d4              # double 0.13048055365493971
	.quad	0x3fedd6d0a455d3b1              # double 0.93247253510218375
	.quad	0x3fcd9da5665ab91c              # double 0.23137347696087651
	.quad	0x3fdcffe05581d18c              # double 0.4531174502401647
	.quad	0x3fe51f71231d9b29              # double 0.66008812769436986
	.quad	0x3fc95a4d308458a4              # double 0.19806828373902363
	.quad	0x3fdef271ddb65ae4              # double 0.48354765559763124
	.quad	0x3fe6a34587705bf1              # double 0.70743061497603155
	.quad	0x3fdc332260dbb4b4              # double 0.44062098940669192
	.quad	0x3fe6c57e774d6bb5              # double 0.71160815526251631
	.quad	0x3fdb0e96fd29446c              # double 0.42276549074910608
	.quad	0x3fe3fd32b9cefb7d              # double 0.62465797701575776
	.quad	0x3fe1b5ef34d45292              # double 0.55345878904570811
	.quad	0x3feefc4b13102e96              # double 0.96829751704486244
	.quad	0x3fea89765e632116              # double 0.82928007540707216
	.quad	0x3fd49b7e8e78bd36              # double 0.3219906226467687
	.quad	0x3fd94e3f311264c2              # double 0.39540080825970503
	.quad	0x3f8124325fc651c0              # double 0.0083698211172212877
	.quad	0x3fed2cd74b816413              # double 0.91172375437884268
	.quad	0x3fc9198a27d63b84              # double 0.19609190888555983
	.quad	0x3fd009e1640e4a16              # double 0.25060305377078984
	.quad	0x3feeba8af261d029              # double 0.9602713331246423
	.quad	0x3fe39b134999b273              # double 0.6126800954348951
	.quad	0x3fe1b2515ec46714              # double 0.55301731595247583
	.quad	0x3fe9b64997af842d              # double 0.80350188852401561
	.quad	0x3fc5e7cc6843642c              # double 0.17113642779330129
	.quad	0x3fd94bdae104eb3c              # double 0.39525482153446823
	.quad	0x3fb2d17873dd4c60              # double 0.073508766448229235
	.quad	0x3fe9c5d3b4ba033c              # double 0.80539880083242776
	.quad	0x3fb572feaa596d68              # double 0.083785931195441088
	.quad	0x3feecd25f5a7734c              # double 0.96254251460377693
	.quad	0x3fc1b043305cd050              # double 0.13819160329296887
	.quad	0x3fbc617ef036a2d8              # double 0.11086266865334993
	.quad	0x3fc0e3ecb024d988              # double 0.13195570565012482
	.quad	0x3fe1b053671a5fd2              # double 0.55277414452847951
	.quad	0x3fbacccfe3a8f9c0              # double 0.10468768413645702
	.quad	0x3fe389072c7ba8b7              # double 0.61047705352873194
	.quad	0x3feb35dfb0d2c719              # double 0.85032639060793536
	.quad	0x3feb3f1a425821ed              # double 0.85145295102944163
	.quad	0x3fd025630c51fa2a              # double 0.25228191569468328
	.quad	0x3fcd5a401875def0              # double 0.22931672281605797
	.quad	0x3fdd0bc9494eb946              # double 0.4538443771260926
	.quad	0x3fd7b854d1f4f114              # double 0.37062569144815538
	.quad	0x3febfc4973a33f69              # double 0.87454674325452431
	.quad	0x3feb48b5e284f01e              # double 0.85262579195068944
	.quad	0x3fc2f61b026b8bd0              # double 0.14813554399651574
	.quad	0x3fe8df1ec3e152bb              # double 0.777236349657492
	.quad	0x3fc935ee6077d3d4              # double 0.19695834837298654
	.quad	0x3fe0425cb2c0fae0              # double 0.50810084259850541
	.quad	0x3feb8834c77e925f              # double 0.86037672961954204
	.quad	0x3fe869fa384397e7              # double 0.76293669690198562
	.quad	0x3fe9763290ad6557              # double 0.79567840821543256
	.quad	0x3fd32151a7b52498              # double 0.29890862825102138
	.quad	0x3fbb88ef242b16a8              # double 0.10755819924369325
	.quad	0x3fe26df1942e77ad              # double 0.57592085782720448
	.quad	0x3fcb4a8de0e2c168              # double 0.21321271401167086
	.quad	0x3fdeb69e63e95426              # double 0.47989616162277782
	.quad	0x3fe13644ef8b6ebd              # double 0.53787466798845396
	.quad	0x3fd6c1287277ff1a              # double 0.35553942850673226
	.quad	0x3fe0b83a00eed561              # double 0.52248859579291829
	.quad	0x3fdc328a3b5975d8              # double 0.44058471484990269
	.quad	0x3f79f0e36a473280              # double 0.0063332446483853611
	.quad	0x3fde716178aa8a9a              # double 0.47567021163755785
	.quad	0x3fe498ad95438fa6              # double 0.64363745835406827
	.quad	0x3fbc375d9ec29028              # double 0.11021981359459743
	.quad	0x3fe5315077c0c166              # double 0.66226981534240958
	.quad	0x3fe2cff05aee648d              # double 0.58788316497806792
	.quad	0x3fd1ee129d4bc410              # double 0.28015580521520267
	.quad	0x3fe0dceb41130002              # double 0.52696764669235585
	.quad	0x3fedab676621baf1              # double 0.92717332790001994
	.quad	0x3fd1f63e714e40ee              # double 0.28065453591354028
	.quad	0x3f8734b177a9fe00              # double 0.011330973114353604
	.quad	0x3fa38c16bdc76600              # double 0.038178167978639266
	.quad	0x3fe582af11894841              # double 0.67220261979151286
	.quad	0x3fec586c7d1b492d              # double 0.88579391894226023
	.quad	0x3fef1d9a93dded65              # double 0.972363747408434
	.quad	0x3feef41715f39310              # double 0.96729616439242427
	.quad	0x3fd338083f1d10dc              # double 0.30029493487769598
	.quad	0x3fe64faaa371328a              # double 0.69722492143917347
	.quad	0x3fe9ee04e34e2e05              # double 0.81030506511291434
	.quad	0x3fc3b8843a08ff58              # double 0.15406849702594161
	.quad	0x3fb7bd5c542724b0              # double 0.092733164353506536
	.quad	0x3feede7cb908ec06              # double 0.96465908183688565
	.quad	0x3fee5c00ce5eaad7              # double 0.94873085314369632
	.quad	0x3fe0c2342250f957              # double 0.52370650007632491
	.quad	0x3fd77a45ab0032e0              # double 0.36683789920134124
	.quad	0x3fda03a7771a2636              # double 0.4064730322939768
	.quad	0x3fa1baa06bf87cd0              # double 0.034626973323833021
	.quad	0x3fcf3ba736a9fb64              # double 0.24400797051563494
	.quad	0x3fe58637e9f1d3bd              # double 0.67263408367454469
	.quad	0x3fd7433ce19602fe              # double 0.36347887067681472
	.quad	0x3fe4a7bb77761307              # double 0.64547513324996053
	.quad	0x3fea787fef940ff8              # double 0.82720944206857805
	.quad	0x3fe0af6d74e1627e              # double 0.52141449764447123
	.quad	0x3fde35aec82b081c              # double 0.47202653453507692
	.quad	0x3fd588b558674464              # double 0.33646901734488766
	.quad	0x3fed654bcef7993d              # double 0.9186152498557828
	.quad	0x3fde5b33cab5e18e              # double 0.47431654735512374
	.quad	0x3fef51fff9b06a52              # double 0.9787597538700743
	.quad	0x3fd74b2453ddb88e              # double 0.36396129789398735
	.quad	0x3fe5b54319511865              # double 0.67837672180827424
	.quad	0x3fc03cddd20f6370              # double 0.12685749775735244
	.quad	0x3fe58b680e539a69              # double 0.6732673911872783
	.quad	0x3fe09e2b7171bd0b              # double 0.51930782467926073
	.quad	0x3fea8804242a7ce6              # double 0.82910353721299823
	.quad	0x3fdcd54c1b9b8206              # double 0.45051863380470569
	.quad	0x3fc8d9d59d4f3470              # double 0.19414777928469418
	.quad	0x3fd1ca667f17e98e              # double 0.27797853862252786
	.quad	0x3fefda2a9241a73a              # double 0.99538162770952643
	.quad	0x3fc4180bfd209288              # double 0.15698385104873958
	.quad	0x3fefd5e3a1e96c4e              # double 0.99485952018165746
	.quad	0x3fe8f60560ad5f54              # double 0.78003186113617539
	.quad	0x3fddd1d8387e8fa2              # double 0.46593289868382659
	.quad	0x3fe8a527eab775e9              # double 0.77016063540548629
	.quad	0x3fe3e7a6a4a874b8              # double 0.62202770385524442
	.quad	0x3fd2ee4e731ac852              # double 0.29579507103620017
	.quad	0x3fedde560b43b9f2              # double 0.93339063835247615
	.quad	0x3fdce4c38da3c502              # double 0.45146263916019802
	.quad	0x3fe0142400c60761              # double 0.50245857382854464
	.quad	0x3fd2eae69d9bf4f8              # double 0.2955872096207055
	.quad	0x3fa630ff73d3c160              # double 0.043342574013766066
	.quad	0x3fe71181a7b471c1              # double 0.72088701968055358
	.quad	0x3fe77b85bbc01263              # double 0.73382841749169037
	.quad	0x3fa0bcb336814db0              # double 0.032689667132810185
	.quad	0x3fb3ae8a798c51a8              # double 0.076882033037981246
	.quad	0x3fe770de50e7521c              # double 0.73252788354381293
	.quad	0x3fcc3776daf64054              # double 0.2204426354551311
	.quad	0x3fee9a60895b84a0              # double 0.95634486034045451
	.quad	0x3fe6bc9600e9d5a0              # double 0.71052074602510018
	.quad	0x3fde98d03f7edbe0              # double 0.47807699394928527
	.quad	0x3fb2776e48182f08              # double 0.072134869195164097
	.quad	0x3fe8a7bd4e029894              # double 0.77047600971561047
	.quad	0x3f6dd3f763cf3c00              # double 0.0036411125024424784
	.quad	0x3fcf952c820ffe64              # double 0.24673992491442498
	.quad	0x3fead6a96ccda6f2              # double 0.83870383501672863
	.quad	0x3fe98cfffe228ac2              # double 0.79846191058853599
	.quad	0x3fcdd8399f83fbc0              # double 0.23316116608472548
	.quad	0x3fe1218739399dd7              # double 0.53534279991884659
	.quad	0x3fe0c35897b34f52              # double 0.52384595517149024
	.quad	0x3f96bef665b2a3a0              # double 0.022212839085714031
	.quad	0x3fe395da03c739da              # double 0.61204243410048353
	.quad	0x3fdb52e2948a0916              # double 0.42693390374928819
	.quad	0x3fb627d4f3e5e4f8              # double 0.086545285745064038
	.quad	0x3fef237d83f9bc83              # double 0.97308231140586121
	.quad	0x3fdb888875783788              # double 0.43020831557884565
	.quad	0x3fd2f9ae4ac6a666              # double 0.29648930837956866
	.quad	0x3faa930da4338df0              # double 0.051903177541841816
	.quad	0x3fd44dc71b9cfbb2              # double 0.31724717804530222
	.quad	0x3fd61f6ccb7cde8c              # double 0.34566802856304757
	.quad	0x3fdfa87ae03fa2d4              # double 0.4946582021644137
	.quad	0x3fe6556799544405              # double 0.69792537638761643
	.quad	0x3fdf3223403163c6              # double 0.48743516224709216
	.quad	0x3fa2164a34d9e4c0              # double 0.035326308204227441
	.quad	0x3fde16986433ac62              # double 0.47012910638176753
	.quad	0x3fee5eb462525f50              # double 0.94906062320203866
	.quad	0x3feae6bdcac1939a              # double 0.84066667176067544
	.quad	0x3fe53a1cb484da04              # double 0.66334376580817933
	.quad	0x3fe0706dd6ebcbf2              # double 0.51372425057195259
	.quad	0x3fed089792a169ee              # double 0.90729883803152034
	.quad	0x3fda2ef4e8b3c16a              # double 0.40911600804158488
	.quad	0x3fb032382831e6f0              # double 0.063266286671843863
	.quad	0x3fe7aa8a6b8b2d38              # double 0.7395679569685063
	.quad	0x3facd7d1793bcb20              # double 0.056334062623042636
	.quad	0x3fee52e54f4efe9d              # double 0.94761910905795654
	.quad	0x3fbbfcf316b4efa0              # double 0.10932845405926495
	.quad	0x3feff338dd32be9e              # double 0.9984402008321529
	.quad	0x3fe2e8431a3e2de5              # double 0.59085230947078726
	.quad	0x3fe0693e905a8f2a              # double 0.51284721559611524
	.quad	0x3fbb54213c91e250              # double 0.10675246933704696
	.quad	0x3fe376071684b799              # double 0.60815767667894527
	.quad	0x3fc0f81de22e5174              # double 0.13257192176810018
	.quad	0x3fd2f3f60a09c37e              # double 0.29614020328795465
	.quad	0x3fecd2a6c853bd51              # double 0.90071429373157674
	.quad	0x3fcc7d3335ac76c4              # double 0.22257080193315038
	.quad	0x3fed91589510636d              # double 0.92399243463579028
	.quad	0x3fefa38aaa8328d0              # double 0.98871358206931781
	.quad	0x3fe5504d22e5c560              # double 0.66605240646292074
	.quad	0x3fe8c87ec78786d9              # double 0.77447451563440517
	.quad	0x3fe420decfd3ec3b              # double 0.62901249495860811
	.quad	0x3fd46c9e096e4370              # double 0.31912947579353723
	.quad	0x3fe6e24ad8cbe73b              # double 0.71512358038965063
	.quad	0x3fcdd076911145bc              # double 0.23292429049847196
	.quad	0x3fe0759dacb446c0              # double 0.51435741168298676
	.quad	0x3fe754ddcb5ad6ac              # double 0.72910966603986571
	.quad	0x3fe61c5969a2249c              # double 0.69096060401456638
	.quad	0x3fca72637dfe07bc              # double 0.20661586429565471
	.quad	0x3fb4c5788d97c390              # double 0.081138166969834779
	.quad	0x3fb6342e34a339a0              # double 0.086733711100555499
	.quad	0x3fe22d7745746d77              # double 0.56805003705396373
	.quad	0x3fec8f06c2e99540              # double 0.89245927876314823
	.quad	0x3fdc37213ecc2110              # double 0.4408648598914775
	.quad	0x3fcc015003e5e8e8              # double 0.2187900561364764
	.quad	0x3fe2cccec1bb4e34              # double 0.58750093305793039
	.quad	0x3fa655145fc9f8b0              # double 0.043617855732905553
	.quad	0x3fc3f881612b32e8              # double 0.15602128262107517
	.quad	0x3fbf7a175c3698b0              # double 0.12295671464252922
	.quad	0x3f9dc972438717c0              # double 0.029088769313396545
	.quad	0x3fce5913450f80e4              # double 0.23709336158845595
	.quad	0x3fe25315d7ffb1a9              # double 0.57264225184694795
	.quad	0x3feaa16b38952095              # double 0.83220444728159981
	.quad	0x3fa57d453de06770              # double 0.041971362880032781
	.quad	0x3fd1068df4872ab8              # double 0.26602505569159574
	.quad	0x3feb7b62056672f2              # double 0.85881138853764427
	.quad	0x3fef147a3a17848f              # double 0.971249688587834
	.quad	0x3fd0b7b2487585a6              # double 0.26121193958359823
	.quad	0x3fed0d773ba1c1a0              # double 0.9078937687573223
	.quad	0x3fc1805c22dfb89c              # double 0.13672973349406881
	.quad	0x3fdfc54b60df7564              # double 0.49641689739458728
	.quad	0x3fd7482064f731ca              # double 0.36377725467607702
	.quad	0x3fc0034b41eaf854              # double 0.12510052412648298
	.quad	0x3fec944acc803d70              # double 0.89310207311238621
	.quad	0x3fe5bdc552bf0cdb              # double 0.67941538010964153
	.quad	0x3fe37d651c50b9a4              # double 0.60905700235689553
	.quad	0x3fea92c51fc56e33              # double 0.83041626172366134
	.quad	0x3fe2a8b11c4237f0              # double 0.58309226531286917
	.quad	0x3fe6ce158d8e686d              # double 0.71265676162444225
	.quad	0x3fa141ba77e18c40              # double 0.033704592832485947
	.quad	0x3fc9377a01fee4a0              # double 0.19700551125950927
	.quad	0x3fd780a04eab92d8              # double 0.36722572023999822
	.quad	0x3fc46b8319350c08              # double 0.15953100901433026
	.quad	0x3fd6d7df97e95fbe              # double 0.35692586741560806
	.quad	0x3fe80a304788dddc              # double 0.7512437245522352
	.quad	0x3feb78b9af5ba947              # double 0.85848697900409199
	.quad	0x3fee483046a03763              # double 0.9463120822344816
	.quad	0x3fcad76830741ee0              # double 0.20969869962595222
	.quad	0x3fed9cfdbd81acca              # double 0.92541396153446809
	.quad	0x3fee2df9b4e7fd30              # double 0.94311223347896167
	.quad	0x3fe22131dd813a4b              # double 0.56655209791808525
	.quad	0x3fdbd90130799c9a              # double 0.43511991247073356
	.quad	0x3fe7ce023962dfdc              # double 0.74389754493949622
	.quad	0x3fb72b25949a2238              # double 0.090502117900663204
	.quad	0x3fe69bb90637c1a6              # double 0.70650912489331996
	.quad	0x3fe23d787227546d              # double 0.57000372214919326
	.quad	0x3fcf3efae5305350              # double 0.24410949889047595
	.quad	0x3feb6d00dca4662f              # double 0.85705607504059411
	.quad	0x3feb874c2f5346bc              # double 0.86026581996176032
	.quad	0x3feef6fbd42ddd83              # double 0.96764937821619445
	.quad	0x3fde5a3eb2b16ea0              # double 0.4742581124353169
	.quad	0x3fd34f68f523626c              # double 0.30172180117873526
	.quad	0x3fe28089e69bcba9              # double 0.57819075623261995
	.quad	0x3fdb7c537bc783ec              # double 0.42946326339557461
	.quad	0x3fe994c67770029c              # double 0.79941104247707839
	.quad	0x3fb3ce016b4980e8              # double 0.077362145131249727
	.quad	0x3fb842b1281453e8              # double 0.094767639431963979
	.quad	0x3fe9677045c729ae              # double 0.79387677792083422
	.quad	0x3fd504097390f05a              # double 0.32837139402159254
	.quad	0x3feadbd04650f393              # double 0.8393327115405661
	.quad	0x3fe622ec9dbb5a9f              # double 0.69176321799280405
	.quad	0x3fdfb1b7bd6440b4              # double 0.49522202964090956
	.quad	0x3fefd5280b8d9cb5              # double 0.99477007156828867
	.quad	0x3fac1e074cdaa120              # double 0.054916599399179811
	.quad	0x3fe9c7fa4afdf012              # double 0.80566134116043231
	.quad	0x3fee7362e031bf9e              # double 0.95158523357348535
	.quad	0x3fee65a7c83da913              # double 0.94990910634558856
	.quad	0x3fd2b954824e1b04              # double 0.29256165242297549
	.quad	0x3fe2f0bb237c64dd              # double 0.59188610964624966
	.quad	0x3fe3b40e146fe3e2              # double 0.61572937003722594
	.quad	0x3fe2cfab77906b07              # double 0.58785031654710529
	.quad	0x3fd218b5a5f2725c              # double 0.28275815206305821
	.quad	0x3fe19172b5bc9d18              # double 0.54900489325965207
	.quad	0x3fef1a5fbedfd7f5              # double 0.97196948318628406
	.quad	0x3fd2d3b850c10170              # double 0.29417236219526099
	.quad	0x3fe2c72f39c9fe54              # double 0.58681451117440497
	.quad	0x3fed8a78b8de2eb7              # double 0.92315326792728214
	.quad	0x3fc97f4010fb6674              # double 0.19919586972428116
	.quad	0x3fd0f167d4e0ef10              # double 0.26473422802858781
	.quad	0x3fe8f714e91c588a              # double 0.78016133813322708
	.quad	0x3fb0a3ec8b584828              # double 0.065001281757105844
	.quad	0x3fd1f9c62ec5539e              # double 0.28087000434362064
	.quad	0x3fd5f2873fe78540              # double 0.34292775383626761
	.quad	0x3fc23d42b0e30aa0              # double 0.14249452244810801
	.quad	0x3feb1566fc85fc70              # double 0.84636258431409139
	.quad	0x3fd8bfa75f7f4e5a              # double 0.3866976196852413
	.quad	0x3fa02bd0f7bf2490              # double 0.031584291689406574
	.quad	0x3fc5f629f98183c0              # double 0.17157482798486789
	.quad	0x3feeb25ba9e6d1a1              # double 0.95927222427285496
	.quad	0x3f84a80883291580              # double 0.010086122992229773
	.quad	0x3fc79f84c49b454c              # double 0.18455562210014376
	.quad	0x3fed9d7340ce93cd              # double 0.92546999604803093
	.quad	0x3fc4f2d98ba1a61c              # double 0.16366118734303903
	.quad	0x3fe23be67610b572              # double 0.56981204089758664
	.quad	0x3fc9cd852de4ed34              # double 0.2015844797223082
	.quad	0x3fd240d8bfacddfa              # double 0.28520792692458452
	.quad	0x3feb5e5103534f53              # double 0.85526323937890891
	.quad	0x3fc8087c533dd55c              # double 0.18775896133926551
	.quad	0x3fe522ead820c7b2              # double 0.66051237308987809
	.quad	0x3fe206afbbd76499              # double 0.5633162182595185
	.quad	0x3fee77ad2ba00169              # double 0.95210894127380385
	.quad	0x3fd974472f4cc44e              # double 0.39772204989555326
	.quad	0x3fed484bd7d1b1dd              # double 0.91507522728130264
	.quad	0x3fe5c3a0e82abc70              # double 0.68013043732743306
	.quad	0x3fde5ed3b59c2a32              # double 0.47453778014520076
	.quad	0x3fc2eee43a114b08              # double 0.14791539035157819
	.quad	0x3fdcccd310cd6096              # double 0.45000149384350985
	.quad	0x3fdef6c09c9f933e              # double 0.48381057067154021
	.quad	0x3fbfca90b3702cd0              # double 0.12418465023818048
	.quad	0x3fd6f106d6f84fb0              # double 0.35846110337410675
	.quad	0x3fda3c0575924ada              # double 0.40991341096484535
	.quad	0x3fb9411de5130798              # double 0.098649853159285761
	.quad	0x3fe7e249e2d0ea88              # double 0.74637312221541752
	.quad	0x3fed61347391bdbb              # double 0.91811583110932504
	.quad	0x3fd9b6d93e1767ba              # double 0.40178519309631222
	.quad	0x3fb3d33efedde918              # double 0.077442109320973507
	.quad	0x3fdf956d151fb49c              # double 0.49349524557949009
	.quad	0x3fe5be8b39dcad4f              # double 0.67950974751640014
	.quad	0x3fa2356f90ae8430              # double 0.035563932811108478
	.quad	0x3fe7216e9161e36d              # double 0.7228310431956807
	.quad	0x3fdaa5c9340ba49e              # double 0.41636877138678041
	.quad	0x3fcbe7b12d577270              # double 0.21800818170494862
	.quad	0x3fe520da6023a263              # double 0.66026037957369643
	.quad	0x3fe73150ee4ed560              # double 0.72477003616829094
	.quad	0x3f9a16602e791360              # double 0.025475981556400185
	.quad	0x3fe8bf8cab11274f              # double 0.77338250552677745
	.quad	0x3fe709f8721adc9e              # double 0.7199671009647266
	.quad	0x3fea99ef0b9e95a4              # double 0.83129074353626153
	.quad	0x3fe8d01a9fc46e99              # double 0.77540332035592308
	.quad	0x3f92f659bd7c55a0              # double 0.018517877760208301
	.quad	0x3fd6b9314fbd15c6              # double 0.35505326067899678
	.quad	0x3fe8b3546c7c9b70              # double 0.77189084233110172
	.quad	0x3fe7ba0c3713f14d              # double 0.74146090276148302
	.quad	0x3fe087644b20b0cc              # double 0.51652731583956202
	.quad	0x3fe7ea4b048b129f              # double 0.74735022437433318
	.quad	0x3fecd7b31c302675              # double 0.90133052354322152
	.quad	0x3fe014b1d958545c              # double 0.50252621126368124
	.quad	0x3fa32ef502866f60              # double 0.037467629011387116
	.quad	0x3fd711f04524a362              # double 0.36046988250978107
	.quad	0x3fecece12274e0d6              # double 0.90391594629093208
	.quad	0x3feee6a04f2e32a1              # double 0.96565261330541229
	.quad	0x3fe1bff5f4b09f71              # double 0.55468271056177632
	.quad	0x3fe687fa2b4485ec              # double 0.7040987820693636
	.quad	0x3fc5c24708c4696c              # double 0.16999137809836939
	.quad	0x3fd639fa0446c1fc              # double 0.34728861253373089
	.quad	0x3fcb1a81dfe88eb8              # double 0.21174643929508874
	.quad	0x3fd2893f11308334              # double 0.28962685278570466
	.quad	0x3fe1b4e52703150d              # double 0.55333192462481551
	.quad	0x3fe9b2be8667ea5a              # double 0.8030693650355929
	.quad	0x3fa6d52dc2b66a30              # double 0.044595174807188775
	.quad	0x3fdd1a1eb6340a2c              # double 0.45471923630990108
	.quad	0x3f64d926cff55200              # double 0.0025449522069413977
	.quad	0x3fe71ec0cb631ef6              # double 0.72250404094754006
	.quad	0x3fc5f5930ac6fa18              # double 0.17155683542473876
	.quad	0x3fce6a33f86489fc              # double 0.23761605862189572
	.quad	0x3fe5250e7e5c1280              # double 0.66077351264591755
	.quad	0x3fe7f0f106a0a3bf              # double 0.74816180509980501
	.quad	0x3f876afff959a600              # double 0.011434554860175972
	.quad	0x3fbcf481f562ea88              # double 0.11310589066389742
	.quad	0x3fbb6e9dd49562f8              # double 0.10715662422206751
	.quad	0x3fdd97605a5271ac              # double 0.4623642808963051
	.quad	0x3fcbd146e26a1b68              # double 0.2173241239108521
	.quad	0x3fa4c9e1f65ba690              # double 0.040602742503165534
	.quad	0x3fcac9c04da503cc              # double 0.2092819575427981
	.quad	0x3fe1891e3615f3de              # double 0.54798803866981038
	.quad	0x3fefba159f93039b              # double 0.99146538893556923
	.quad	0x3fd048e6b92b59a8              # double 0.25444953997557684
	.quad	0x3fe67479b6750bd3              # double 0.70171819339918284
	.quad	0x3fed10cc7c81b5c0              # double 0.90830063169203612
	.quad	0x3fe0cdd47719c0d6              # double 0.52512572538219149
	.quad	0x3fab75a548b011a0              # double 0.053631940005320233
	.quad	0x3fd1af04a5f25194              # double 0.27630726056784138
	.quad	0x3fce47457e16aa84              # double 0.23655003220240556
	.quad	0x3fe6002afca00b9d              # double 0.68752049771170543
	.quad	0x3fa0dbdfa300a0c0              # double 0.032927502296219213
	.quad	0x3fea94b473924df5              # double 0.83065245220717421
	.quad	0x3fe5ea643d38e3d2              # double 0.68486225087610308
	.quad	0x3fed5c278665e8c9              # double 0.91749931573510779
	.quad	0x3fe5473dda4810cd              # double 0.66494648583513938
	.quad	0x3fe4fc6b216291d8              # double 0.65581280251040663
	.quad	0x3fe58ea4f79e0b4a              # double 0.67366264689221933
	.quad	0x3f8c6af2b5909780              # double 0.013875862279814077
	.quad	0x3fd1aa2990f01a56              # double 0.27601088670818308
	.quad	0x3fe5e1431ec6d74a              # double 0.68374782572821258
	.quad	0x3fdf3f527bbd9fb8              # double 0.48823988040976074
	.quad	0x3fded51fd824982a              # double 0.48175808055600788
	.quad	0x3f9a61e90cfadec0              # double 0.025764123360856983
	.quad	0x3fe87bd3425e2b82              # double 0.76511538469763729
	.quad	0x3fddc25efcee6f9e              # double 0.46498846721964948
	.quad	0x3fd698ff584246e4              # double 0.35308822268517148
	.quad	0x3fd829b3ea7b81ec              # double 0.37754533671070933
	.quad	0x3fd6b19831f7e1c2              # double 0.35458950881686857
	.quad	0x3fe3f1f55916ca0f              # double 0.62328593635749197
	.quad	0x3fd100938fd6f376              # double 0.26566018149224335
	.quad	0x3fce6affe12fe844              # double 0.23764036651101794
	.quad	0x3fc43b120aea7bdc              # double 0.15805268795972338
	.quad	0x3feceea0da596f97              # double 0.90412943502768683
	.quad	0x3fd0bf8ecf6e8e9c              # double 0.26169176346795964
	.quad	0x3fd6bc04bbe22b3e              # double 0.35522573802943558
	.quad	0x3fd5cff5574bc560              # double 0.34081777119634715
	.quad	0x3fde294b45f08b08              # double 0.47127038793603093
	.quad	0x3fcccde424c596bc              # double 0.22503330035686087
	.quad	0x3fea24de499e6397              # double 0.8170005262246488
	.quad	0x3fd3c6c211eb8e1e              # double 0.3090062308312741
	.quad	0x3fd72f31a1250d82              # double 0.36225548493185766
	.quad	0x3fdfabe49dfcbd32              # double 0.49486651829188866
	.quad	0x3fed46ef408c77a8              # double 0.914909006187135
	.quad	0x3fe707cce2dd1f49              # double 0.71970218953445297
	.quad	0x3fed562dcf8e05e1              # double 0.9167698911480181
	.quad	0x3fe70fb1b287c24a              # double 0.72066578740311482
	.quad	0x3fe6e89d461560cf              # double 0.71589530647454491
	.quad	0x3fa61a58cb0e3fd0              # double 0.043169760500972765
	.quad	0x3fddd4399da73564              # double 0.46607818980995419
	.quad	0x3fed39e7d2a22282              # double 0.91331854953121216
	.quad	0x3fe283c027341d50              # double 0.57858283669421873
	.quad	0x3fe33e38a0e6263b              # double 0.60134536195364008
	.quad	0x3fed86bf6ed1aa81              # double 0.92269870418870437
	.quad	0x3fdfc512b1238f0c              # double 0.49640338228913161
	.quad	0x3fe1ff2c257f2042              # double 0.5623989803652949
	.quad	0x3fed1b836456d8a7              # double 0.90960855100162952
	.quad	0x3f82ef3505fb22c0              # double 0.0092453138780838051
	.quad	0x3fdfc2ed2facba5a              # double 0.49627236991628865
	.quad	0x3fae3178078eeca0              # double 0.05897116749061948
	.quad	0x3fec2a84dc1c0d22              # double 0.88019030561591571
	.quad	0x3fea316baf2fca31              # double 0.81853279319904548
	.quad	0x3fd71e4fd7ff80d2              # double 0.36122509091911781
	.quad	0x3fe401a1836bed1f              # double 0.6251990858867521
	.quad	0x3fbdbb5228ab6530              # double 0.11613954060466791
	.quad	0x3fb072180d55c0e8              # double 0.064240935569390367
	.quad	0x3fe3ce55f537749a              # double 0.61893747228500051
	.quad	0x3fec5bcabcad0839              # double 0.88620507097971946
	.quad	0x3fdac64f0777e316              # double 0.41835380296065361
	.quad	0x3fe118dedfa0e273              # double 0.53428596188957866
	.quad	0x3feebbbf800ff127              # double 0.96041846286928922
	.quad	0x3fc7118fe9775d6c              # double 0.18022345447273425
	.quad	0x3fe4e2e0144b9322              # double 0.65269473995121907
	.quad	0x3fc3e816ca9fe704              # double 0.15552029508381093
	.quad	0x3fe23266f86e0324              # double 0.56865261575157833
	.quad	0x3fc6287b4520ed50              # double 0.17311039805813744
	.quad	0x3fee1db69fca30a7              # double 0.94112712105699792
	.quad	0x3fdc19edfc7983b8              # double 0.43908261924485315
	.quad	0x3fe3e4aad3838511              # double 0.62166348754195344
	.quad	0x3fc543bf0c6e42fc              # double 0.16612995249717943
	.quad	0x3fa10759f58b3dd0              # double 0.033259211753484785
	.quad	0x3fdd42912c56f036              # double 0.45718793230094279
	.quad	0x3fda971be07cb8ec              # double 0.41547295496537973
	.quad	0x3fe00600e1b715c7              # double 0.50073284230227777
	.quad	0x3fc11127db304c70              # double 0.13333605005809401
	.quad	0x3fe8f0c1c7fff7f3              # double 0.77938927710033423
	.quad	0x3fe7327fc1fd084d              # double 0.7249144352756588
	.quad	0x3fa837c334b9a840              # double 0.047300434290108218
	.quad	0x3fe5284e78bd9fa3              # double 0.66117023069545089
	.quad	0x3fc141cb6c7ba128              # double 0.13482039258020362
	.quad	0x3fe324d57a1f5ea3              # double 0.5982463250356499
	.quad	0x3f8c4a496bf9c600              # double 0.013813565833717512
	.quad	0x3fe1c28b2c78122c              # double 0.55499800382000819
	.quad	0x3fdd2ec459bd9bb0              # double 0.45597943080650349
	.quad	0x3fddd2fa09b849ca              # double 0.46600199650961527
	.quad	0x3fe30b3b01962db2              # double 0.59512090978517151
	.quad	0x3fd372b6efa44146              # double 0.30387662317754793
	.quad	0x3fd252b15f90abc4              # double 0.28629717190295545
	.quad	0x3f6f88c8fdb28300              # double 0.0038494039159363558
	.quad	0x3fef0000812d6125              # double 0.96875024061140335
	.quad	0x3fe884e43d859665              # double 0.76622211471540125
	.quad	0x3fe4f22fe0d007dc              # double 0.65456384571757154
	.quad	0x3fd538163ff515f4              # double 0.33154827352367922
	.quad	0x3fe283c18e7526e8              # double 0.57858350585703722
	.quad	0x3febb759ad95a9e6              # double 0.86613162902113738
	.quad	0x3fe09f09bb6fbd1a              # double 0.51941382034957262
	.quad	0x3fe1a0be7d01c51d              # double 0.5508720819035805
	.quad	0x3fe4d34c3f917702              # double 0.6507931939665641
	.quad	0x3fe428a70f2ddfa1              # double 0.62996247257887117
	.quad	0x3fc1588d74b69320              # double 0.13551490973363745
	.quad	0x3fc8818d2107d6a4              # double 0.19145359146903218
	.quad	0x3fd65a6e58fd8f1a              # double 0.34926947298502997
	.quad	0x3fd2490893138458              # double 0.2857076107303036
	.quad	0x3fd47c032c96fb5a              # double 0.32006911615819933
	.quad	0x3feaee53ac3f4aaf              # double 0.84159263269460449
	.quad	0x3fc124aaf67a508c              # double 0.13393151316688934
	.quad	0x3fb47f6ef6c7bbd8              # double 0.080069480179857933
	.quad	0x3fedc1ccef6d4384              # double 0.92990729105996239
	.quad	0x3fc135f3ecb4a094              # double 0.13445900972260871
	.quad	0x3fe0267c822e5cc8              # double 0.50469804216381764
	.quad	0x3fec9e0e1e70a5da              # double 0.89429384179419036
	.quad	0x3fea4391c001ecc7              # double 0.82074820996731368
	.quad	0x3fea34e35fb1da01              # double 0.81895607653024183
	.quad	0x3fadce00d6a3f470              # double 0.058212305260874397
	.quad	0x3f9d1fd9c8045360              # double 0.028441813309729169
	.quad	0x3fed1a7df4537191              # double 0.90948388786232404
	.quad	0x3fe303e4ffa6d2b6              # double 0.5942254059978811
	.quad	0x3fe6b5c238633968              # double 0.70968733800127115
	.quad	0x3fecf2ea1187e00f              # double 0.90465262817360947
	.quad	0x3fdb6fe2f9b5f718              # double 0.42870401750393361
	.quad	0x3fb7549522a71870              # double 0.091134377441535852
	.quad	0x3fe3b7bf4ae40012              # double 0.61618008257937817
	.quad	0x3fa90ac7e015a4f0              # double 0.048910375694342423
	.quad	0x3fb3fc17ebd62558              # double 0.07806539066054563
	.quad	0x3fb24e2ea35230a8              # double 0.071505465386681011
	.quad	0x3fe9e4ee31824d99              # double 0.8091956107113446
	.quad	0x3fdeef51fce6dde0              # double 0.48335694978183419
	.quad	0x3fd797a9b46d6880              # double 0.36863176936970632
	.quad	0x3fd20e9709350f2a              # double 0.28214050196787588
	.quad	0x3fce29880d94f9fc              # double 0.23564243949108732
	.quad	0x3fe25023fe9dc834              # double 0.57228278856042047
	.quad	0x3f994e425d420240              # double 0.02471259779167867
	.quad	0x3fc472f091dc15fc              # double 0.15975768205696272
	.quad	0x3fe5cadf4d9e5902              # double 0.68101468238708684
	.quad	0x3fe1849ac5ad7a4a              # double 0.54743708237567401
	.quad	0x3fb13493c274e420              # double 0.067208514189488699
	.quad	0x3fe61e09b6e65f53              # double 0.69116674158702052
	.quad	0x3fd18f80b9ad3e8a              # double 0.27438371784681037
	.quad	0x3fda99ee16a0f5c0              # double 0.41564514360274174
	.quad	0x3fe86eebc0118058              # double 0.76354014886238541
	.quad	0x3fd047c0ffccda56              # double 0.25437951069344444
	.quad	0x3f79200d62788f80              # double 0.006134083064839646
	.quad	0x3fb21c9b683a9410              # double 0.070749009081353842
	.quad	0x3fae07a653d0ac40              # double 0.058652112704600246
	.quad	0x3fe9f88213f0c18f              # double 0.81158546347255534
	.quad	0x3fd8264fa72c9c6c              # double 0.37733832669841294
	.quad	0x3fdf8548b8ddecd8              # double 0.49251001408965811
	.quad	0x3fc9427492d97ccc              # double 0.19734055681599327
	.quad	0x3fdf16b7fe4ab8fa              # double 0.48576164086524865
	.quad	0x3fd5be9149921e56              # double 0.33975631889959368
	.quad	0x3fd539472a9b1222              # double 0.33162097130505874
	.quad	0x3fe97f666dfde265              # double 0.79680177195320978
	.quad	0x3fc12fe8efd3a324              # double 0.1342745944050644
	.quad	0x3fe50b50de127e0e              # double 0.65763133405192931
	.quad	0x3fe2cb994d2722f2              # double 0.58735337323113712
	.quad	0x3fd2a0b641bc59b8              # double 0.29105907840257883
	.quad	0x3feb1e17812c6a4d              # double 0.84742331723402631
	.quad	0x3fe7728acf384b2a              # double 0.73273220512996784
	.quad	0x3fa73fe4033f4f30              # double 0.045409322163008858
	.quad	0x3fe7c3d29e782560              # double 0.7426541419128334
	.quad	0x3fd4db8b94242d4e              # double 0.32589997736859722
	.quad	0x3fdb78855420d9e0              # double 0.42923100677162829
	.quad	0x3fad9e5432a64040              # double 0.057848578627386349
	.quad	0x3fdfc45977c37510              # double 0.49635922141699584
	.quad	0x3fb3965bd0e7c650              # double 0.076513041021621264
	.quad	0x3fe848116f144ddc              # double 0.75879737563303306
	.quad	0x3fe59a9b4cbfaf8e              # double 0.67512288084025029
	.quad	0x3fd665c9e5642ba8              # double 0.34996268655293727
	.quad	0x3fe6ae8047a152ac              # double 0.70880140295283445
	.quad	0x3fb9ea64032e27a8              # double 0.10123276784557211
	.quad	0x3fd7de3e4f03debe              # double 0.37293966022796698
	.quad	0x3fc24123a638a7e0              # double 0.1426128923060892
	.quad	0x3fed050bd3cf6875              # double 0.9068659912984588
	.quad	0x3fde635cd91b2ba4              # double 0.47481461717387163
	.quad	0x3fd4e1a8a2e82e80              # double 0.32627311619646804
	.quad	0x3fde2a3f69ad4eda              # double 0.47132859535234461
	.quad	0x3fd9559cb7974190              # double 0.3958503525618875
	.quad	0x3fd40a74e4fd6dac              # double 0.31313822138118996
	.quad	0x3feea733eae23cbd              # double 0.95791049838762598
	.quad	0x3fea452b072e6c04              # double 0.82094336893658281
	.quad	0x3fe3ebe1420b49c5              # double 0.62254393481480774
	.quad	0x3feb1b5b6c48c7d3              # double 0.8470894923141209
	.quad	0x3fd31804b51859f0              # double 0.29834096608229199
	.quad	0x3fe30dc1becfcc33              # double 0.59542929904853847
	.quad	0x3fc4c68ad2f47be8              # double 0.16230902958429216
	.quad	0x3fdbbd83dcf5e332              # double 0.43344208315061217
	.quad	0x3fedead411dbc030              # double 0.93491557586640361
	.quad	0x3fe2f150ec530c4e              # double 0.59195753247366567
	.quad	0x3fe0bf35e967c22d              # double 0.52334113680814698
	.quad	0x3fd29e60420840e8              # double 0.29091650436840988
	.quad	0x3fd377fd2ec09646              # double 0.30419854703572857
	.quad	0x3fcd2b41acf9fe40              # double 0.22788258501167213
	.quad	0x3fd5fd55e76dd2ac              # double 0.34358737564552189
	.quad	0x3fe5fbc983c9c34b              # double 0.68698573818083142
	.quad	0x3fe74945cf365ef1              # double 0.72769442053956201
	.quad	0x3fd896bcc7e80c2c              # double 0.3842002823077475
	.quad	0x3fed90c138274c1a              # double 0.92392025916558684
	.quad	0x3fe68b013a21f872              # double 0.7044683585552447
	.quad	0x3fed711879eeca70              # double 0.92005561652179146
	.quad	0x3fdf627547345084              # double 0.49038440660047677
	.quad	0x3fecc6b4654cc000              # double 0.89925594124906638
	.quad	0x3fb89054cfbfa4a0              # double 0.095952320785402722
	.quad	0x3fef8758b614352f              # double 0.98527179300586975
	.quad	0x3fec3c044ecb7896              # double 0.88232627286540111
	.quad	0x3fe8a3b3f4d6b4aa              # double 0.76998327083642448
	.quad	0x3fc57ba57e5b6f8c              # double 0.1678358904817937
	.quad	0x3fd2f8c4a918e8b2              # double 0.29643360627563731
	.quad	0x3fc1d0889385a8f8              # double 0.13917643740871433
	.quad	0x3fd5dabba7c2b0ae              # double 0.34147540457594061
	.quad	0x3fe2bd7d0905fdcc              # double 0.58563091051467486
	.quad	0x3fed2391fd0671ca              # double 0.91059207362155203
	.quad	0x3fe7eda03565bb9c              # double 0.74775705746820931
	.quad	0x3fefc05a09fb7852              # double 0.99223043393772969
	.quad	0x3fddf97d5edcb27c              # double 0.46835264457585146
	.quad	0x3fd2f03e01fef25e              # double 0.29591322131071773
	.quad	0x3fe99b20554e618d              # double 0.80018631612169744
	.quad	0x3fe25b2fb348668b              # double 0.57363114372420065
	.quad	0x3fed751ac4928f9e              # double 0.92054499047343419
	.quad	0x3fee6bc408964e25              # double 0.95065499951528365
	.quad	0x3fe994d12a281e73              # double 0.79941614373906444
	.quad	0x3fcbeac49c8afdec              # double 0.21810205119798753
	.quad	0x3fdba786e75fcc74              # double 0.43210003466737779
	.quad	0x3fdc5307ca8c5020              # double 0.44256777553641946
	.quad	0x3fde4ed371f0fba4              # double 0.4735611546238323
	.quad	0x3fd347d88401e2be              # double 0.30126011744827597
	.quad	0x3fee3a5a5e8839bc              # double 0.94462316954905345
	.quad	0x3fd89861e376fb0e              # double 0.38430068219524649
	.quad	0x3fdf103b99b301b8              # double 0.48536577233974354
	.quad	0x3fee9b8ebc3d0ec9              # double 0.95648895993550653
	.quad	0x3fc8bda1c94df990              # double 0.19328710870099686
	.quad	0x3fd718668f4da396              # double 0.36086429590664559
	.quad	0x3fe079fae20a02ca              # double 0.51489013813269335
	.quad	0x3fd2307490c2cf64              # double 0.28420747887434161
	.quad	0x3fe12ab145f5a0ea              # double 0.53646148361170032
	.quad	0x3fda950511da1406              # double 0.41534544699999321
	.quad	0x3feb0c4ca3777494              # double 0.84525138785433506
	.quad	0x3fdffa920e5685d6              # double 0.49966861152833297
	.quad	0x3fd5f9bc9a6da0a8              # double 0.34336772042162034
	.quad	0x3fdb6f6962ae05a4              # double 0.42867502819725645
	.quad	0x3fcc04d022728a78              # double 0.218896881885559
	.quad	0x3fea03f6d57de127              # double 0.81298391053772867
	.quad	0x3fe820f942d614d0              # double 0.75402510694461888
	.quad	0x3fe17053bab33131              # double 0.54496180023992313
	.quad	0x3fa34e7d3802e1c0              # double 0.037708199584304491
	.quad	0x3fea6c128916c363              # double 0.82569243216685739
	.quad	0x3feb7fbd7bbd92a9              # double 0.85934328239507807
	.quad	0x3fe6b6a727793b60              # double 0.70979650220565915
	.quad	0x3fd33340de2d0472              # double 0.30000325867519628
	.quad	0x3fed51c1d9389f68              # double 0.91623012949001481
	.quad	0x3fef555a3692c1f6              # double 0.97916899355737885
	.quad	0x3fe73eda5f682803              # double 0.72642248758461425
	.quad	0x3fdc6285ed86e9b0              # double 0.44351337619778075
	.quad	0x3fe4e1f066a93d7d              # double 0.65258045245165841
	.quad	0x3fd827393d5dbaae              # double 0.37739401810442075
	.quad	0x3fd6e8950d23e2c4              # double 0.35794569285603139
	.quad	0x3fe5f5f7aa943559              # double 0.6862753230686095
	.quad	0x3fedb1618f3a1423              # double 0.9279029652976799
	.quad	0x3fbe5d4dec84aa70              # double 0.11861121200915092
	.quad	0x3f93d24f16e5bdc0              # double 0.019356952450321208
	.quad	0x3fa0f91538f18380              # double 0.033150351716137116
	.quad	0x3fd45572595150b6              # double 0.31771525118279997
	.quad	0x3fecfd94cd2c939f              # double 0.90595474312850743
	.quad	0x3f979aae53536ce0              # double 0.023050998531158551
	.quad	0x3fde23ed6074e7ea              # double 0.47094282550426547
	.quad	0x3fd7321cbd5a54ce              # double 0.36243360988130469
	.quad	0x3f8147e19d61f100              # double 0.0084378839640000258
	.quad	0x3fe72b6d4fe09ad1              # double 0.72405114747092558
	.quad	0x3fd19baab3e91358              # double 0.27512614793186208
	.quad	0x3fea5c36a25bd38f              # double 0.82375652037318214
	.quad	0x3fe2e69d27f643e5              # double 0.59065110974381396
	.quad	0x3fc485cf181cd9ec              # double 0.16033352544191304
	.quad	0x3fc690fb5dc84e24              # double 0.17629949645253007
	.quad	0x3fd26bda62989f42              # double 0.28783282879384242
	.quad	0x3fe7a92beafe6997              # double 0.73940082452036193
	.quad	0x3fee6f175b18a083              # double 0.95106094162203225
	.quad	0x3fe0964886c9b1c7              # double 0.51834513021236084
	.quad	0x3febe4a976b455bc              # double 0.87166283783397302
	.quad	0x3fb434e38bcbe208              # double 0.07893201983450393
	.quad	0x3fea3047c706a1f3              # double 0.81839360115287574
	.quad	0x3fa48ba32618fc70              # double 0.040127848053537529
	.quad	0x3fe0e82e6051bbf8              # double 0.52834242641790663
	.quad	0x3fe8b38930fbdded              # double 0.77191600386771386
	.quad	0x3fcb3627b83ac408              # double 0.21259018416961362
	.quad	0x3fef0f68e6e7fe6b              # double 0.97063107584831465
	.quad	0x3fc9603a7c6d73d0              # double 0.19824915957988631
	.quad	0x3fc925628dfe2170              # double 0.19645339902150338
	.quad	0x3fdc2f7e553bbfba              # double 0.44039877246450099
	.quad	0x3fc4a08bec387e0c              # double 0.16114949259007039
	.quad	0x3fdcf138e39d8dcc              # double 0.45222303608008185
	.quad	0x3fd22d5ca5510d8e              # double 0.28401867050362106
	.quad	0x3fe5e9309d7a4776              # double 0.68471556432108005
	.quad	0x3fda63bd4b39118a              # double 0.41233761163700733
	.quad	0x3fe5c7fd5874e139              # double 0.68066279675171082
	.quad	0x3fecaaf6a5b6a1cf              # double 0.89586956373119075
	.quad	0x3fdcc556886afcc8              # double 0.44954455682814087
	.quad	0x3feadee1fe84375c              # double 0.83970737180946342
	.quad	0x3f7c8cf3c9972800              # double 0.0069703600833666002
	.quad	0x3fea0a2f4cbd5bb4              # double 0.81374325741022923
	.quad	0x3fe2a5f84c7e4b16              # double 0.58275999965767045
	.quad	0x3fd152c8f3ab565c              # double 0.27067779346302756
	.quad	0x3fc88e2b1a9173c8              # double 0.19183863446497029
	.quad	0x3fbf10bbcc146538              # double 0.1213490842095738
	.quad	0x3fedf3d6eb744380              # double 0.93601556765689509
	.quad	0x3fd9dd6f97652020              # double 0.40414037499113142
	.quad	0x3fdae888c786bd64              # double 0.42044276700013072
	.quad	0x3fe95c0c7bf66762              # double 0.79248642169407568
	.quad	0x3fed8a94352ec777              # double 0.92316637408497015
	.quad	0x3fe23a5045501a34              # double 0.56961835420299289
	.quad	0x3fd0df1303bec1da              # double 0.26361537328469142
	.quad	0x3fed8ff558a671d6              # double 0.92382304491507727
	.quad	0x3fe3f6522157588a              # double 0.62381845962478732
	.quad	0x3fe54fcf2fa593c8              # double 0.66599234872830326
	.quad	0x3fd70466c9b13482              # double 0.35964364716057429
	.quad	0x3fc797bb7e1ec90c              # double 0.1843180051633414
	.quad	0x3fefb4130363eba1              # double 0.99073172247095808
	.quad	0x3fd825475271ba7e              # double 0.37727530528255915
	.quad	0x3fe3058d5fa70359              # double 0.59442776376827589
	.quad	0x3fef06d3871c307f              # double 0.96958328617758116
	.quad	0x3f9b9c7941b28f40              # double 0.026964087138039661
	.quad	0x3fe492bcb9cf05bd              # double 0.64291225710638111
	.quad	0x3fc5c1bac883acdc              # double 0.16997465887775476
	.quad	0x3faf30aa547852a0              # double 0.060918162165909395
	.quad	0x3fe32126fa39da11              # double 0.59779690620672643
	.quad	0x3fd13993e94cd718              # double 0.26913926871508087
	.quad	0x3fe6bbc4938b028a              # double 0.71042088334077502
	.quad	0x3fdd36995307427e              # double 0.45645745380628699
	.quad	0x3fe605bc3644e1d9              # double 0.68820009803226434
	.quad	0x3fde6c9774937336              # double 0.47537790665028312
	.quad	0x3fea0d5ce08b678c              # double 0.8141312013278692
	.quad	0x3fe395b550e4d940              # double 0.61202493476483966
	.quad	0x3fb1d004c7a3f7b8              # double 0.069580363026004899
	.quad	0x3fea5f53636d6e66              # double 0.82413644236971773
	.quad	0x3fea6f35310f35af              # double 0.82607516843716222
	.quad	0x3fe1dc9d301b9989              # double 0.55818042179161964
	.quad	0x3fd45508e2f721c4              # double 0.31769010700784528
	.quad	0x3fda1f5dc3c4ea66              # double 0.40816444509588334
	.quad	0x3fe9d666cdc34637              # double 0.80742206752819967
	.quad	0x3fb407da1c033508              # double 0.078244811858173446
	.quad	0x3fe51ea5649304de              # double 0.65999097484032254
	.quad	0x3fce94e14d59bb44              # double 0.23891845967178871
	.quad	0x3fbd81d1804df2d8              # double 0.11526212103303679
	.quad	0x3fe33069f09aaab4              # double 0.59965989106179629
	.quad	0x3f9aa17e03d9cd40              # double 0.026006669030221419
	.quad	0x3fe47ea61773b031              # double 0.64046005802584294
	.quad	0x3fe03db887c1a1bf              # double 0.50753427996556144
	.quad	0x3fed52b6128852b2              # double 0.91634658450728623
	.quad	0x3fefc58dc0dcf07a              # double 0.99286544483722072
	.quad	0x3fcb2db8f24b8468              # double 0.21233283835229888
	.quad	0x3fe57ebd8c112ee3              # double 0.67172124249324516
	.quad	0x3fd861b5b8f4e0fc              # double 0.38096373617328516
	.quad	0x3fca9f0fd951cf7c              # double 0.20797918425853001
	.quad	0x3fdd478c95712ed4              # double 0.45749201387364491
	.quad	0x3fe5aa234b0025c5              # double 0.67701878212499678
	.quad	0x3fe1df12fde22843              # double 0.55848073565108114
	.quad	0x3fd5bc23cd416942              # double 0.33960814518436078
	.quad	0x3fda64792408a78e              # double 0.4123823978321689
	.quad	0x3fc253c9f2bfc524              # double 0.14318203309043398
	.quad	0x3fdcfcb5431489ee              # double 0.45292407561114956
	.quad	0x3fb499f272df6478              # double 0.080474045796465776
	.quad	0x3f9495940826a400              # double 0.020101845738881963
	.quad	0x3fd0b4ae6e0ea7d6              # double 0.26102791545656368
	.quad	0x3fd636f1c4d078a6              # double 0.34710354061270221
	.quad	0x3fd368bc8d7f40a8              # double 0.30326761072229624
	.quad	0x3fc922fd800c9798              # double 0.19638031723405613
	.quad	0x3fe6e093b9a30619              # double 0.71491419083776286
	.quad	0x3fd13bcf9b640dd6              # double 0.26927557158361759
	.quad	0x3fa499feb1f90ca0              # double 0.040237387871934205
	.quad	0x3fec6b6702f7fb50              # double 0.88811064319438948
	.quad	0x3fecbcf4f1e54bb9              # double 0.89806601758242899
	.quad	0x3fe9bbf3f2399e5c              # double 0.8041934710462999
	.quad	0x3fda99ea57ebeef6              # double 0.41564425073714462
	.quad	0x3fcf597b82cfcf58              # double 0.24491828810971117
	.quad	0x3fdd3a3f3b7b17e2              # double 0.45668011482882609
	.quad	0x3fe04330467a2f8f              # double 0.50820173039527272
	.quad	0x3fe46cebf49546e4              # double 0.63829610605372666
	.quad	0x3feb81bd740c027a              # double 0.85958740868961958
	.quad	0x3fcef788ed6b9a48              # double 0.2419291648177071
	.quad	0x3fe0c1df595dd952              # double 0.52366607145703825
	.quad	0x3f932c74720ddc00              # double 0.018724269353210587
	.quad	0x3fb480e8ff024c60              # double 0.08009201265149235
	.quad	0x3fe9c9235d76406c              # double 0.80580299619942996
	.quad	0x3f80f37bfbf8a880              # double 0.0082769094725174686
	.quad	0x3fcafb5f1865ab80              # double 0.21079624835268973
	.quad	0x3fead5058ec5938d              # double 0.8385036266814595
	.quad	0x3fdc55bb423ba5d0              # double 0.442732634239829
	.quad	0x3fee2b0b00b5ac7a              # double 0.94275426996809064
	.quad	0x3fe5d3fbd84adbbd              # double 0.68212692494022742
	.quad	0x3fe4003ccdd435bd              # double 0.62502899361577813
	.quad	0x3f872f1bf5e458c0              # double 0.011320322457816778
	.quad	0x3f7098bc8379e100              # double 0.0040519107638987695
	.quad	0x3fc446935cc8f224              # double 0.15840379744067079
	.quad	0x3fd9e328e280064c              # double 0.4044897281565667
	.quad	0x3fa4d47778a9ced0              # double 0.04068349216404743
	.quad	0x3fee392327e68a61              # double 0.94447477143360115
	.quad	0x3fa67d3e2d85f9e0              # double 0.043924277360009034
	.quad	0x3fcd8525f458624c              # double 0.23062586241646199
	.quad	0x3fe0811b6ce88630              # double 0.51576014777328361
	.quad	0x3fd5516fb65df9f4              # double 0.33309548196112293
	.quad	0x3fce1ad293703c30              # double 0.23519355963841937
	.quad	0x3fe18f4b3d00007e              # double 0.54874193109573333
	.quad	0x3fcc121951c5f23c              # double 0.21930233471711513
	.quad	0x3fc5cba5a4b3a780              # double 0.17027731458739126
	.quad	0x3fca998079344f64              # double 0.20780950468235482
	.quad	0x3fe580ed20f93f4a              # double 0.67198807182465115
	.quad	0x3fcef71ce051e87c              # double 0.24191628411410082
	.quad	0x3fc711a445f048f4              # double 0.18022588171931597
	.quad	0x3fe74cadeddc66fe              # double 0.7281102796289074
	.quad	0x3fe832da21c71ee8              # double 0.75620752904157218
	.quad	0x3f726485c575cd00              # double 0.0044903970186738196
	.quad	0x3fea97f05be6e683              # double 0.83104722928619912
	.quad	0x3fe54d1353d6387c              # double 0.66565863012671356
	.quad	0x3fcaacdd7b7a4b1c              # double 0.20840042618927945
	.quad	0x3fb1f36ca5424a40              # double 0.070120611521169884
	.quad	0x3fe104be786b3911              # double 0.53182910460762589
	.quad	0x3fe0179cc20525c5              # double 0.5028823651747919
	.quad	0x3feae6de66dcbc35              # double 0.84068222131998616
	.quad	0x3fd0d7a7a53e246e              # double 0.26316252839075716
	.quad	0x3f85801dd467e1c0              # double 0.010498269123659365
	.quad	0x3feb578040232ec4              # double 0.85443127180902722
	.quad	0x3fe5eebb6c9c4711              # double 0.68539210522632932
	.quad	0x3fe7c7280137c918              # double 0.74306106794236637
	.quad	0x3fe694da96c2f7d5              # double 0.70567063756584025
	.quad	0x3fd76d3672f17ffc              # double 0.36604081368386665
	.quad	0x3fe6bae8dcaf4829              # double 0.71031611540297945
	.quad	0x3fd4418be225e590              # double 0.31650063595551448
	.quad	0x3fd10464bd13d1be              # double 0.26589315857497897
	.quad	0x3fc0336439309268              # double 0.12656834404437523
	.quad	0x3fe1b05967d712cc              # double 0.55277700692439558
	.quad	0x3fdaeb88cce39f28              # double 0.42062587746339597
	.quad	0x3fe091ead882b9e6              # double 0.51781217849002981
	.quad	0x3fef8b52446495a3              # double 0.98575700147619149
	.quad	0x3fe2938b3d1451fd              # double 0.58051073007169374
	.quad	0x3f7ed4914f4d2c80              # double 0.0075269390261595292
	.quad	0x3fe7cece8dabd707              # double 0.74399497671285608
	.quad	0x3fb14736d99f1f00              # double 0.067492893343224836
	.quad	0x3feb55d071c09f86              # double 0.8542253705718259
	.quad	0x3f97d33e3c70fac0              # double 0.023266766013189111
	.quad	0x3fee1b5464f02b28              # double 0.94083614077076038
	.quad	0x3fecf99afe4a1a16              # double 0.90546941438589346
	.quad	0x3fce7a34fc4baf3c              # double 0.23810446089862036
	.quad	0x3fd199e23ca2c544              # double 0.27501731797663731
	.quad	0x3fd480f2b22db6dc              # double 0.32037036323786849
	.quad	0x3fd3c4c8e979895c              # double 0.30888579178112763
	.quad	0x3fb3a5967d7ab148              # double 0.076745420107447448
	.quad	0x3fc3608997f5ca58              # double 0.15138358993461298
	.quad	0x3fb513ffe50a74b8              # double 0.082336419504332237
	.quad	0x3fea897d64d4fb31              # double 0.82928342527143262
	.quad	0x3fefb2b2c2d9253c              # double 0.99056375557226017
	.quad	0x3fab41f8387ac170              # double 0.053237683195564212
	.quad	0x3fee94b401025c06              # double 0.95565223881828909
	.quad	0x3fe8746e4a6b02a8              # double 0.76421274695174635
	.quad	0x3fc5dd84b831911c              # double 0.17082270616368411
	.quad	0x3fc63d3986845dac              # double 0.17374342983451407
	.quad	0x3fd62a0dff6e86fe              # double 0.34631681389338087
	.quad	0x3fd717c662949c62              # double 0.36082610728266762
	.quad	0x3fe0325c91b67764              # double 0.5061476560547189
	.quad	0x3fe1606aff2e62c2              # double 0.5430197700507835
	.quad	0x3fe005e42c7ed013              # double 0.50071915331364136
	.quad	0x3fe0f4191d7a1aba              # double 0.52979713208409085
	.quad	0x3fedb93c1b8d1b12              # double 0.92886166936009062
	.quad	0x3fd5f7c82a643338              # double 0.34324840678964419
	.quad	0x3fe99e6beb93b4ee              # double 0.8005885697472459
	.quad	0x3f9661210ca6ee00              # double 0.02185489310953237
	.quad	0x3feca6296023aeb3              # double 0.89528340127204442
	.quad	0x3fe1ab72f378da8e              # double 0.55217883637563303
	.quad	0x3fddb88f6c9929d6              # double 0.46438966374685486
	.quad	0x3fd968c6e04995d6              # double 0.39702007201262057
	.quad	0x3fdcee6cf4814814              # double 0.45205234410707473
	.quad	0x3fcdb486dc0b7260              # double 0.23207174057360458
	.quad	0x3feb5f7fea7ceeb2              # double 0.85540767477455959
	.quad	0x3feeadcaddc32410              # double 0.9587148982328717
	.quad	0x3fef2e0728303865              # double 0.97436864709176218
	.quad	0x3fe97d790c84798e              # double 0.79656650967426557
	.quad	0x3fe982ac8db55db9              # double 0.79720142056878907
	.quad	0x3fbcfc18805bd738              # double 0.11322167524107563
	.quad	0x3feeba49323db5c5              # double 0.9602399808188059
	.quad	0x3f93e9ad78b1e520              # double 0.019446096889145115
	.quad	0x3fdf273449f42a36              # double 0.48676783773467791
	.quad	0x3feff0e9d1980c0d              # double 0.99815836845698557
	.quad	0x3fb402da1c9f11e8              # double 0.078168518054617331
	.quad	0x3fef069ca05b93f2              # double 0.96955710716122057
	.quad	0x3fe948030a69275d              # double 0.79004051240302042
	.quad	0x3fcd7aac83fdb49c              # double 0.230306209992169
	.quad	0x3fd0a71cce9a3d88              # double 0.26019973922753836
	.quad	0x3feabcca141fe76a              # double 0.83554557734099189
	.quad	0x3fe0d271916f1ac6              # double 0.52568891911581583
	.quad	0x3fe8aa52a854525f              # double 0.77079136730987929
	.quad	0x3fd589cc94afaeb4              # double 0.33653559227125673
	.quad	0x3feb8850bd4d05ad              # double 0.86039006207299951
	.quad	0x3fd0eed48b9ce93e              # double 0.26457704195094667
	.quad	0x3fec86ef2199e574              # double 0.89147144854284343
	.quad	0x3fcd4cbb3e8cee08              # double 0.22890415720199564
	.quad	0x3fe4cb000c9f54ca              # double 0.6497802969485289
	.quad	0x3fe3162d421d15f1              # double 0.59645712769332537
	.quad	0x3fb1f09e8518c5b8              # double 0.070077807897880429
	.quad	0x3fe7b3202d691d7e              # double 0.74061592931040798
	.quad	0x3fd9924abeaf271e              # double 0.39955395337584487
	.quad	0x3fe5192c85037433              # double 0.65932298640439624
	.quad	0x3fecf740d88940e1              # double 0.9051822880956274
	.quad	0x3fd70c166bd02902              # double 0.36011276749253807
	.quad	0x3fee7545a198a5e8              # double 0.95181542932294593
	.quad	0x3fe0ab3ba2ad06ed              # double 0.52090245983728567
	.quad	0x3febede3a4258dbb              # double 0.87278921184445524
	.quad	0x3fe6e530c0d6f124              # double 0.71547734893787096
	.quad	0x3fd15dfe92163720              # double 0.2713619639042566
	.quad	0x3fd57017d6cfd190              # double 0.33496662118638998
	.quad	0x3fecbbd3a90ad7c7              # double 0.89792807594380342
	.quad	0x3fdaffe90a98d3ec              # double 0.42186952624189078
	.quad	0x3fcd01bdba7164e8              # double 0.22661563495311232
	.quad	0x3fe1634029ddb00d              # double 0.54336555649706642
	.quad	0x3fc27b1754865904              # double 0.14438144328295988
	.quad	0x3fe5fdd5ea6cf5a6              # double 0.68723579202894736
	.quad	0x3fd13ef155b66496              # double 0.26946671839102387
	.quad	0x3fd59c9ac84d9354              # double 0.33768338738291459
	.quad	0x3fea97d12525957b              # double 0.8310323453448939
	.quad	0x3fe41ac0effc94b4              # double 0.62826582786933338
	.quad	0x3fd19d3f0bafae70              # double 0.27522255078540692
	.quad	0x3fda137982341c9a              # double 0.40743863787833734
	.quad	0x3fdf8b309a0e4574              # double 0.49287047428614206
	.quad	0x3febee6ee2d18905              # double 0.87285560894477554
	.quad	0x3fea8a454eba4593              # double 0.82937875153054319
	.quad	0x3fe6b6084e2a81e0              # double 0.70972075716786875
	.quad	0x3fcee780b184e3b4              # double 0.24143990199970988
	.quad	0x3fe9a5aa8739b1c5              # double 0.80147291575627178
	.quad	0x3fe78d691ab1fe70              # double 0.73601203168796125
	.quad	0x3fe2cde1ab6f0f0e              # double 0.5876320217434754
	.quad	0x3fddcf11a419c84a              # double 0.46576348329029271
	.quad	0x3fe3e663f7503788              # double 0.62187383941066887
	.quad	0x3feca5b67a9782a7              # double 0.89522861427038414
	.quad	0x3fdaed7923da94fc              # double 0.42074421407080798
	.quad	0x3fe16cd7ed9141f9              # double 0.54453655624280295
	.quad	0x3fe2dae3e33d2bc4              # double 0.58921999342543829
	.quad	0x3fb6d08c5c678688              # double 0.089119694289843676
	.quad	0x3fe89a83f91c33da              # double 0.76886175779656729
	.quad	0x3fe20732aaa328ee              # double 0.56337865188222991
	.quad	0x3fdb6ef9b1b106d4              # double 0.42864839890181128
	.quad	0x3fd0b19ba4bf01ee              # double 0.26084033096779435
	.quad	0x3fb82464a2221680              # double 0.094305314620294566
	.quad	0x3fd3e2fb52f2cca0              # double 0.31072886562760438
	.quad	0x3fe6eca455f3e06f              # double 0.71638695514321948
	.quad	0x3fde5c6b58927756              # double 0.4743908276521912
	.quad	0x3fe4a12e21dfd6ac              # double 0.64467531791770716
	.quad	0x3fd593099c4b791a              # double 0.33709945929685292
	.quad	0x3fba05cf82a3eea0              # double 0.10165116252386008
	.quad	0x3fe61a8840ff5d3a              # double 0.69073879904582403
	.quad	0x3fb9950797948e18              # double 0.099930262095363154
	.quad	0x3fc5f4ff670c70e0              # double 0.17153923541707794
	.quad	0x3fc1c6cf6505f78c              # double 0.1388797038343309
	.quad	0x3fdd3ea0a464e422              # double 0.45694747976409833
	.quad	0x3fe4e6e6fc8cf491              # double 0.65318631483354939
	.quad	0x3fdd9475934d4334              # double 0.46218623528425273
	.quad	0x3feaac6d50601c96              # double 0.83354821871116047
	.quad	0x3fd0fbdadd82db9c              # double 0.26537200576734121
	.quad	0x3fd3f9763e86d370              # double 0.31210094553107748
	.quad	0x3fec26fee0e2920a              # double 0.87976020739421412
	.quad	0x3fbc09723dd76f70              # double 0.10951913842967342
	.quad	0x3fd40a700d153748              # double 0.31313706662773599
	.quad	0x3fcc3dc9388dd560              # double 0.22063555966785042
	.quad	0x3fed95b64d4fbe98              # double 0.92452540492918711
	.quad	0x3fe416b6848e3353              # double 0.62777257814159737
	.quad	0x3fddaad513f1150c              # double 0.46355177829202954
	.quad	0x3fe334d37cc43de6              # double 0.60019850128622632
	.quad	0x3fd20b8901be9728              # double 0.28195405168877352
	.quad	0x3fe62f89bce0f543              # double 0.69330298319224715
	.quad	0x3fcc07a06a439904              # double 0.21898274601625911
	.quad	0x3fead1645cc246d4              # double 0.83806055180522287
	.quad	0x3fcfc8b3b19bee50              # double 0.24831243679351411
	.quad	0x3fdea4b65e2aff0e              # double 0.47880324550713815
	.quad	0x3fdad124bc075ae2              # double 0.41901510584049906
	.quad	0x3fd6e9547bfd3770              # double 0.35799133404076766
	.quad	0x3fe97b07b8057902              # double 0.79626832906413392
	.quad	0x3fda7a8fcc59cb62              # double 0.4137305732357871
	.quad	0x3feff9e88417c883              # double 0.99925638007540873
	.quad	0x3fd11acabb690cb0              # double 0.26726024915496804
	.quad	0x3fe1cd0753288f98              # double 0.55627790681727429
	.quad	0x3fd87b1404d6814a              # double 0.3825120970959871
	.quad	0x3fe60b39d14e9307              # double 0.68887034302005723
	.quad	0x3fe6563431bae742              # double 0.69802293503673973
	.quad	0x3fb5111003f63bd8              # double 0.082291604010819142
	.quad	0x3f938f02d4e3c220              # double 0.019100231403117118
	.quad	0x3fddf98285a126ca              # double 0.46835387277370144
	.quad	0x3f3bbd1330e0d000              # double 4.2325705078671838E-4
	.quad	0x3fe6928330ad9507              # double 0.70538482196266805
	.quad	0x3fddb2d71a66ea4e              # double 0.46404054239579728
	.quad	0x3fd571f58d44858e              # double 0.33508051677389339
	.quad	0x3fe8a084797e81ee              # double 0.76959441880540935
	.quad	0x3fe2701cf02c5f5a              # double 0.57618567379811769
	.quad	0x3fe49f1a717fb9f8              # double 0.64442178886184731
	.quad	0x3fe6585a7c2c4bd6              # double 0.69828533413453431
	.quad	0x3fd3aeac94c15c48              # double 0.30753626372228782
	.quad	0x3fb19dfc1353cc28              # double 0.068816904753291497
	.quad	0x3fd30c33613a3f0a              # double 0.29761967177272253
	.quad	0x3fe7c01f9e20b423              # double 0.74220257648778831
	.quad	0x3fd4b9770e07283e              # double 0.32381988878171686
	.quad	0x3fe79d815699800b              # double 0.73797671236025175
	.quad	0x3fa65608a7436b30              # double 0.043625135820283822
	.quad	0x3fb81bc7123c1258              # double 0.094173852874584241
	.quad	0x3fce81d3f6402264              # double 0.23833703540755657
	.quad	0x3fe7eadcf6324ac6              # double 0.74741981587643447
	.quad	0x3fc7faa605c83958              # double 0.1873366859658272
	.quad	0x3fee0d7a20e82657              # double 0.93914514948955741
	.quad	0x3fe5934c14cb1483              # double 0.6742306142920288
	.quad	0x3fb2a047476a17f8              # double 0.072758154807246345
	.quad	0x3feb1f669932478a              # double 0.84758310242817569
	.quad	0x3fd7fbc5eca6ac32              # double 0.37474201307731214
	.quad	0x3fb27dcfc5052d28              # double 0.072232232666625706
	.quad	0x3fd184c390f43998              # double 0.27372826724686083
	.quad	0x3fe385419ee08a1d              # double 0.6100166419094567
	.quad	0x3fe3184cdc6e8e5f              # double 0.59671633771035804
	.quad	0x3fe3cc053b59aee1              # double 0.61865483848438541
	.quad	0x3fe872336dfc5860              # double 0.76394053918444271
	.quad	0x3fc1d427f5bf9c90              # double 0.13928699016034729
	.quad	0x3fb4bd524b9944e8              # double 0.08101381631537985
	.quad	0x3f8b981cd1b64a40              # double 0.013473725461868757
	.quad	0x3fe18af1f362ddf4              # double 0.54821107422225035
	.quad	0x3fa7963826121b20              # double 0.046067957541757076
	.quad	0x3fe1a3ca76f86354              # double 0.5512440036428452
	.quad	0x3fe23c4676d16a18              # double 0.56985781866689234
	.quad	0x3fea0e285ac44bd0              # double 0.81422822692763397
	.quad	0x3fa39b2cd754e310              # double 0.038293267522425123
	.quad	0x3fee659c6a326b56              # double 0.94990368596641406
	.quad	0x3fe3269f0a7b5395              # double 0.59846450850692412
	.quad	0x3fb682f493497408              # double 0.087935720404360151
	.quad	0x3fd2eb1e3d8270ae              # double 0.29560047156133862
	.quad	0x3fb32b4ddf2e9320              # double 0.074879519450928189
	.quad	0x3fec39a5e3602fa7              # double 0.88203710946389868
	.quad	0x3fe5b1226028f68e              # double 0.67787283688785904
	.quad	0x3fee6d7859470ada              # double 0.95086305081380407
	.quad	0x3fc95f1f8d72c420              # double 0.19821543127685093
	.quad	0x3fc61b6dc916feec              # double 0.17271206206168388
	.quad	0x3fc284a8cb7410b0              # double 0.1446734422135072
	.quad	0x3fef51b2258f93cf              # double 0.97872264228919358
	.quad	0x3fec4b5190b03207              # double 0.88419416675020635
	.quad	0x3fe89cbcfabaebe3              # double 0.76913308115706192
	.quad	0x3fd21c9f8233a2a4              # double 0.28299701418886003
	.quad	0x3fdb32d2547c538a              # double 0.42497690439750413
	.quad	0x3fefe889e03162c1              # double 0.99713605678251593
	.quad	0x3fe867a498eec44d              # double 0.76265172834076511
	.quad	0x3fa0e0da6c316730              # double 0.032965493876601193
	.quad	0x3fd9bcc22e311c98              # double 0.40214590559885144
	.quad	0x3fb2816c244f7340              # double 0.072287329544860945
	.quad	0x3fd4547664b9bbbc              # double 0.31765518032528539
	.quad	0x3fba2daf9ad10498              # double 0.10225961236666803
	.quad	0x3fe463255599efae              # double 0.63710276335722482
	.quad	0x3fe2acc9e5b466e3              # double 0.58359236587713459
	.quad	0x3fe80a68749e3479              # double 0.7512705114073831
	.quad	0x3fa11749088e8810              # double 0.033380777639891446
	.quad	0x3fe93e32a73b0545              # double 0.78884251272408135
	.quad	0x3fdf2cefd77cade4              # double 0.48711772960333932
	.quad	0x3fdcb3b8c30d0414              # double 0.44846934364255842
	.quad	0x3fe625abc844c404              # double 0.6920985137459188
	.quad	0x3fe45e7d8ed64741              # double 0.63653448007446667
	.quad	0x3f79f71145923d00              # double 0.0063391375234822522
	.quad	0x3fddc81387711456              # double 0.4653366873429311
	.quad	0x3fefe58dab49c807              # double 0.99677165465095718
	.quad	0x3fea48c74c5f5fc7              # double 0.82138409534945189
	.quad	0x3feebeb3315aeb11              # double 0.96077880515744784
	.quad	0x3fe88701cabeccb3              # double 0.7664803466672282
	.quad	0x3fee987abc148e9e              # double 0.95611321196016141
	.quad	0x3fe66bb8394a474f              # double 0.70064936818583046
	.quad	0x3fc6f1b6792cdf4c              # double 0.17925148884546116
	.quad	0x3fe4b1b3bb2d2d21              # double 0.646692147807162
	.quad	0x3f951f2aa6d6c7c0              # double 0.020626703675311608
	.quad	0x3fac2d2d084bf3f0              # double 0.055032164824275642
	.quad	0x3fe6deb40dff936f              # double 0.71468546613742301
	.quad	0x3fdebe0294aa9f3a              # double 0.48034729498111839
	.quad	0x3fdad236560d0e40              # double 0.41908033755700913
	.quad	0x3fe1d1d5b1aec8b1              # double 0.5568645925871093
	.quad	0x3f857aac5f2a5ec0              # double 0.010487887052746614
	.quad	0x3fd11d19a770aa24              # double 0.26740113593646897
	.quad	0x3fee60c876b7f444              # double 0.94931433856221092
	.quad	0x3fe78440973e816a              # double 0.73489408054233007
	.quad	0x3fd8c6f0c161a09a              # double 0.38714236149690751
	.quad	0x3fda91d0ccd865d8              # double 0.41514987949775906
	.quad	0x3fc47e5d94347c70              # double 0.16010637032102037
	.quad	0x3fc86bbcad984584              # double 0.19078787304219358
	.quad	0x3fc1afe5dd90b604              # double 0.1381804782735544
	.quad	0x3fef8e1c8ddbf625              # double 0.98609760004882629
	.quad	0x3fef725efcae6ea3              # double 0.9827113089736098
	.quad	0x3fd3b5618bc3528c              # double 0.30794562004783965
	.quad	0x3fe5dff2079cc316              # double 0.68358708845889526
	.quad	0x3fdc8db3b2114e2e              # double 0.4461487997952841
	.quad	0x3fd1c63e359fce54              # double 0.27772479283087148
	.quad	0x3fcbe7c3144a91bc              # double 0.21801031580720387
	.quad	0x3fd38a934d8d3684              # double 0.3053329713191959
	.quad	0x3fe33833f9ddd957              # double 0.60061072160787432
	.quad	0x3fe8adfeb1b1bb9e              # double 0.77123961168205191
	.quad	0x3fc34ffbdd63dab8              # double 0.15087841329633078
	.quad	0x3f916d4493e5d620              # double 0.017018386389699214
	.quad	0x3fece433cd78c618              # double 0.90285673266606903
	.quad	0x3fe0e82e9895e5ca              # double 0.52834253122198871
	.quad	0x3fd7bd19bc0b9fe8              # double 0.37091678012666174
	.quad	0x3fe7ecf893943ade              # double 0.74767712425258614
	.quad	0x3fdd700e6b09169a              # double 0.4599643750446859
	.quad	0x3fd5b2bb396dd1f8              # double 0.33903389557170227
	.quad	0x3fd940c480888e60              # double 0.39457809974758185
	.quad	0x3fed332f0b3dadd1              # double 0.91249801822180576
	.quad	0x3fc96a50471397c8              # double 0.19855693312200473
	.quad	0x3fe0a8b66fcab401              # double 0.52059480509126399
	.quad	0x3fde1eb1f2f9c52e              # double 0.47062348106472285
	.quad	0x3fe6a1eb6c489d69              # double 0.70726557873869667
	.quad	0x3fdf190699fdd216              # double 0.48590245283347266
	.quad	0x3fef237da3e50bfb              # double 0.97308237085996951
	.quad	0x3fedd54d6f42b5b7              # double 0.93228790026267105
	.quad	0x3fe22cb7441f34f2              # double 0.5679584818368808
	.quad	0x3fe24e72530c3371              # double 0.57207599849935609
	.quad	0x3fde93c02fc7a4c0              # double 0.47776798883439753
	.quad	0x3feb594be8b62da8              # double 0.85465045405856177
	.quad	0x3fd4fd80ab804bf8              # double 0.32797257183227613
	.quad	0x3fee69a185d7e746              # double 0.95039440289767962
	.quad	0x3fdf49628f6e25b2              # double 0.48885406500684347
	.quad	0x3fd2edefd7fbfe06              # double 0.29577251522275139
	.quad	0x3fe0e122a16a0af7              # double 0.52748233343331108
	.quad	0x3fe8eee8f2972b6a              # double 0.77916381245573274
	.quad	0x3fd6c90c769e117e              # double 0.35602103790031225
	.quad	0x3fe6dbcb6af4a2a9              # double 0.71433039560095779
	.quad	0x3fb5950fd8770460              # double 0.084305754039648573
	.quad	0x3fe1d0e948efc34d              # double 0.55675186391281672
	.quad	0x3fc698b4cbc843cc              # double 0.17653522444064007
	.quad	0x3fe867772db637d7              # double 0.76263007095416924
	.quad	0x3fd0fde5881fc56c              # double 0.26549661916131728
	.quad	0x3fe2bdac4cb1130e              # double 0.58565344790312834
	.quad	0x3fd71adc80b2b240              # double 0.36101448600928521
	.quad	0x3fd3b1bf62d490cc              # double 0.30772385264777991
	.quad	0x3fd4dcfaf2675760              # double 0.32598756477579194
	.quad	0x3fe6bf23cbe067cb              # double 0.71083249873776688
	.quad	0x3f64008299e14700              # double 0.0024416495134936822
	.quad	0x3fb084e701da0100              # double 0.064527929260297157
	.quad	0x3fea85a098a65940              # double 0.82881192984022078
	.quad	0x3fe2c7a83f0eaa8a              # double 0.58687221828343294
	.quad	0x3fe769d397935c2e              # double 0.73166827778448407
	.quad	0x3fdfc6f0e5087c4e              # double 0.49651739470022427
	.quad	0x3f8d03de3f198200              # double 0.014167534161232176
	.quad	0x3f92a7eb339b3cc0              # double 0.018218684220127512
	.quad	0x3fd03b30d7d320a0              # double 0.25361271931297757
	.quad	0x3fa189d2732eebf0              # double 0.034254623947582163
	.quad	0x3fe516692a46a74b              # double 0.65898569352177938
	.quad	0x3fc2bfc997573fd8              # double 0.14647788896263481
	.quad	0x3fde3e081fa51b58              # double 0.47253611650778771
	.quad	0x3fef19d678b6b579              # double 0.97190402581115542
	.quad	0x3f8d2b4d2c1be380              # double 0.014242747219656016
	.quad	0x3fe2bde1f122cf3c              # double 0.58567902657384918
	.quad	0x3fc72d0bc5d9d3c0              # double 0.18106219444930893
	.quad	0x3fdbf9f18a5d4d90              # double 0.43713034164576303
	.quad	0x3fe38826f47c2763              # double 0.61037013770076631
	.quad	0x3fe7d50fa2983085              # double 0.74475843197571179
	.quad	0x3fb4805adfd22158              # double 0.080083541530375668
	.quad	0x3fef8c6e44a067a0              # double 0.9858924236643709
	.quad	0x3fe0627ba8901153              # double 0.51202185556807434
	.quad	0x3fbbb88bd0bb8440              # double 0.10828470083244301
	.quad	0x3fb03157c1a5e290              # double 0.063252911355343722
	.quad	0x3feac70ab5a09c54              # double 0.83679709886645037
	.quad	0x3fd77beb4ebaa7fc              # double 0.36693842590705095
	.quad	0x3fead7277adb3702              # double 0.83876394267437626
	.quad	0x3fee35e44e3b2c9f              # double 0.94407859115144166
	.quad	0x3fe51911a6ce97e1              # double 0.65931017474644815
	.quad	0x3fce82298e013ee0              # double 0.23834723886329012
	.quad	0x3fd4b61841d5a432              # double 0.32361418179658863
	.quad	0x3f81bc55d9e3e980              # double 0.0086600024337613046
	.quad	0x3fc1c44793c7cab4              # double 0.13880247798768652
	.quad	0x3fccb6f8114d5000              # double 0.2243337711794311
	.quad	0x3fd869138522aeaa              # double 0.38141334535132876
	.quad	0x3febc7214facd3c7              # double 0.86805787622017128
	.quad	0x3fdcaaeaf366728c              # double 0.44793199319409704
	.quad	0x3fd1f74c1210430e              # double 0.28071882022872863
	.quad	0x3fec9ecc6da06bb1              # double 0.8943845883508087
	.quad	0x3fda264857d9e094              # double 0.40858658389289215
	.quad	0x3fde54eac21bed82              # double 0.47393292385068986
	.quad	0x3fe0ea3601fb4727              # double 0.52859020602247575
	.quad	0x3fef60b06b281a0e              # double 0.98055287293465354
	.quad	0x3fb443e008b1f140              # double 0.079160692332099991
	.quad	0x3fe4cd3723a7e4f7              # double 0.65005070652037389
	.quad	0x3fcd784d3e8708d8              # double 0.23023381760692163
	.quad	0x3fc26db58a4eaf7c              # double 0.1439730573014194
	.quad	0x3fda27b0b83a40ce              # double 0.40867250433894931
	.quad	0x3fd22f6ba209b1aa              # double 0.28414431404123752
	.quad	0x3fba95295ace0cb8              # double 0.10383852450290731
	.quad	0x3fc5f1b75decd22c              # double 0.17143909536538737
	.quad	0x3fc0f3588e813940              # double 0.13242632826081469
	.quad	0x3fd048d172650966              # double 0.25444446727137515
	.quad	0x3febd6970a788456              # double 0.86994506878921629
	.quad	0x3fc9a9b987821c78              # double 0.20049208752263659
	.quad	0x3fc8206680ed112c              # double 0.18848878188340146
	.quad	0x3fec912f48c6b9ee              # double 0.89272274221531034
	.quad	0x3fc2ab4171afa2e0              # double 0.14585130740240171
	.quad	0x3fede82f18c32195              # double 0.93459276996968532
	.quad	0x3fd62d4393fe4584              # double 0.34651269390550277
	.quad	0x3fd3e780deb68ac8              # double 0.31100484608957091
	.quad	0x3fee42e73076e8d1              # double 0.94566688028069212
	.quad	0x3fe8696ee5521b1b              # double 0.76287026204304043
	.quad	0x3feed71bd81f5b41              # double 0.96375839435027199
	.quad	0x3fedcf6790d2af23              # double 0.9315679386686252
	.quad	0x3fe91374824d5511              # double 0.78362489175438743
	.quad	0x3fe809dee8e58a0e              # double 0.75120492446541376
	.quad	0x3fd0a5e7c2261a1e              # double 0.26012605628821628
	.quad	0x3fcc6ace05b4fb90              # double 0.22200942305240945
	.quad	0x3fe347ce8f78d00a              # double 0.60251548787937392
	.quad	0x3fe3d640c0d8fc95              # double 0.61990392365977931
	.quad	0x3fe2354db619cd6a              # double 0.56900678221283596
	.quad	0x3fdc038971649550              # double 0.43771587441945758
	.quad	0x3fde3d0547a9cc1e              # double 0.4724744033657674
	.quad	0x3f9285a9ef0d1b80              # double 0.018088011947181126
	.quad	0x3fcc88ee846c5ca4              # double 0.22292882410031212
	.quad	0x3fdef178dd8a31a6              # double 0.4834882892107778
	.quad	0x3fd0372af43756d0              # double 0.25336717461810299
	.quad	0x3fe1a43c07014deb              # double 0.55129815452749875
	.quad	0x3fda578196dec28e              # double 0.41159095509923638
	.quad	0x3fb455d60a76e1b8              # double 0.079434754900723159
	.quad	0x3fd58058c983852a              # double 0.33595866850926603
	.quad	0x3fdfc710087a8610              # double 0.49652481868733478
	.quad	0x3fba376ddce58d40              # double 0.10240828173623573
	.quad	0x3fecb041fdefecb7              # double 0.89651584241018767
	.quad	0x3fb003316ffca520              # double 0.062548723068762246
	.quad	0x3fea495adb657b27              # double 0.82145445681439788
	.quad	0x3feedd6518b1856a              # double 0.96452574561059845
	.quad	0x3fccbabc3b5574e0              # double 0.22444870850714604
	.quad	0x3fde19dc15d4951e              # double 0.470328351324797
	.quad	0x3fe49088c5ecefef              # double 0.64264334351855534
	.quad	0x3fc61031edfcdbf4              # double 0.17236923332686127
	.quad	0x3fc1442ce83f6dc4              # double 0.13489304867003515
	.quad	0x3fd678f5f727780a              # double 0.35113286148214284
	.quad	0x3fed93958a5fcad7              # double 0.92426564241608389
	.quad	0x3fdc715ca52b1b92              # double 0.44441906099057704
	.quad	0x3fdfeafe1179f5c2              # double 0.49871780115776343
	.quad	0x3fdf80db0807bb58              # double 0.49223972114753201
	.quad	0x3fef48390b8291c8              # double 0.97756626365713206
	.quad	0x3fc78785d5a15d64              # double 0.18382332736176032
	.quad	0x3fdfefa0600240e8              # double 0.49900063873157174
	.quad	0x3f987639a7c54dc0              # double 0.023888493409072842
	.quad	0x3fe0f52eace00f89              # double 0.52992948307699905
	.quad	0x3fc12d2c28054290              # double 0.13419105486038463
	.quad	0x3fec4bd8c3f25c3d              # double 0.88425863524287929
	.quad	0x3fe569025a608827              # double 0.66906850482724145
	.quad	0x3fe59e799fc05723              # double 0.67559510423118174
	.quad	0x3fcd0ef6ffcec668              # double 0.22701919069872933
	.quad	0x3feddb034a29e5c5              # double 0.93298496708956036
	.quad	0x3fef1398bcf35644              # double 0.97114216713334444
	.quad	0x3fe23bf5b4b9a171              # double 0.56981931016802723
	.quad	0x3fcb0683ffffaa88              # double 0.21113634109436341
	.quad	0x3fd6fa6344f7199a              # double 0.35903245673071071
	.quad	0x3fd2c7fffc55df9a              # double 0.29345702783711547
	.quad	0x3fd3214b3b9a8178              # double 0.29890709705980312
	.quad	0x3fe0cf189343f315              # double 0.52528027308253178
	.quad	0x3fefb97f1f878d8c              # double 0.9913936248598687
	.quad	0x3fe867e513696f97              # double 0.76268247405413347
	.quad	0x3fd29c9a4880d01c              # double 0.29080826836002571
	.quad	0x3fe6e1c70991d210              # double 0.71506072873177295
	.quad	0x3fe98a6fa9a573fe              # double 0.79814894804042047
	.quad	0x3fc34f1790ee6d18              # double 0.15085119797445468
	.quad	0x3fe0e37ea5fce97d              # double 0.52777035159606067
	.quad	0x3fe3928e2be01229              # double 0.61164005822553691
	.quad	0x3fe8477cc2e8f692              # double 0.75872648304330625
	.quad	0x3f7b4c95138d8f80              # double 0.0066648314758345206
	.quad	0x3fe5988c8ad4d747              # double 0.6748717032958006
	.quad	0x3fd70c469ea86356              # double 0.36012425893709599
	.quad	0x3fc6b1c5e86ecf60              # double 0.17730020379314748
	.quad	0x3fed5779947d2418              # double 0.91692809106564521
	.quad	0x3f8ad07640d0d740              # double 0.013092922070523039
	.quad	0x3fca7bbb21185644              # double 0.20690096965761218
	.quad	0x3fb89ca5c697b4b8              # double 0.096140252098581125
	.quad	0x3fbbbb3cba3ca560              # double 0.10832576319503096
	.quad	0x3fc37aaea39a3b64              # double 0.15218146313096803
	.quad	0x3fc4bed268db654c              # double 0.16207342262240798
	.quad	0x3fdd0ff3d073854e              # double 0.45409865719382914
	.quad	0x3fd8ac3a349def26              # double 0.38551192415592295
	.quad	0x3fe76b5e984e68b7              # double 0.73185662982293465
	.quad	0x3fecfb6d0b79b8eb              # double 0.90569164506248734
	.quad	0x3fb24d442130ff48              # double 0.071491487601631154
	.quad	0x3fef0883cba54d3d              # double 0.96978940748741815
	.quad	0x3fe08812d98183c2              # double 0.51661055070518835
	.quad	0x3fddaef5d835ecfa              # double 0.46380373110123652
	.quad	0x3fe0b2e24a5f15d8              # double 0.52183641935033176
	.quad	0x3fd523924d5a3336              # double 0.33029611162128292
	.quad	0x3fe0a1cc4453cb81              # double 0.519750722362332
	.quad	0x3fbde262d7363a38              # double 0.11673562769122092
	.quad	0x3fe1bd562fd5799d              # double 0.55436238615566291
	.quad	0x3fecbb944427967e              # double 0.8978978472848238
	.quad	0x3fe3773bb7aac5ed              # double 0.60830484268643448
	.quad	0x3fe8b4b227dd8946              # double 0.77205760751920915
	.quad	0x3fd6dd0a5c50caae              # double 0.35724123969263644
	.quad	0x3fdff6a72ef8f4a0              # double 0.49942950808674347
	.quad	0x3fd8fd181141c10a              # double 0.39044763264884408
	.quad	0x3feba301bd128cff              # double 0.86364828994956599
	.quad	0x3feeae5f76754ca9              # double 0.95878575455062275
	.quad	0x3fb60913838614d0              # double 0.086075992212573781
	.quad	0x3fd2a557de6c375c              # double 0.29134175034493182
	.quad	0x3fe9df8c6383d25e              # double 0.80853862225064765
	.quad	0x3fe7ecca4650f766              # double 0.74765504583022557
	.quad	0x3fc3b267eb09a3bc              # double 0.15388201691101056
	.quad	0x3fe751cf5ce163fb              # double 0.72873657360753386
	.quad	0x3fe2c8a0928760f1              # double 0.58699062937651381
	.quad	0x3fc4a398d8f6f19c              # double 0.16124258607841291
	.quad	0x3fbeff3725129c28              # double 0.12108177809805964
	.quad	0x3fb583bb33d377f8              # double 0.084041309502452921
	.quad	0x3fe2494051304120              # double 0.57144180161597902
	.quad	0x3fccddcf3cec193c              # double 0.22551908945770005
	.quad	0x3fd9a1cc41670586              # double 0.40050035845714438
	.quad	0x3fca5d44196ee970              # double 0.20597125284059414
	.quad	0x3fdfc08d390b11de              # double 0.49612742014531175
	.quad	0x3fdab244f4f76702              # double 0.41713069841863171
	.quad	0x3fcabb3a59a463b8              # double 0.20883874299104632
	.quad	0x3fd33f4e557dbf70              # double 0.30073889111280661
	.quad	0x3fcd22278605d148              # double 0.22760480922773696
	.quad	0x3fe4479fcbbd1c72              # double 0.63374318878858404
	.quad	0x3fc4be4146a99098              # double 0.16205612135229752
	.quad	0x3fe1ac7eadeb67f9              # double 0.55230649918234953
	.quad	0x3fe17c1e5faee23c              # double 0.54640120208848186
	.quad	0x3fe81fe325f8bcd6              # double 0.75389249245008716
	.quad	0x3f43164844cbf400              # double 5.824902414982569E-4
	.quad	0x3fd36536fb9f661c              # double 0.3030526597263774
	.quad	0x3fdddce777812616              # double 0.46660792036399934
	.quad	0x3fe1d7d85beabcc7              # double 0.55759828522231991
	.quad	0x3fe1d8c28b0ab520              # double 0.55770995289427461
	.quad	0x3fc17d13de71ebb4              # double 0.13662956582615282
	.quad	0x3fd4e967a1334ef4              # double 0.32674589864949088
	.quad	0x3fd4d1e87e61ba8c              # double 0.3253117784687809
	.quad	0x3fd15465fcc44b74              # double 0.27077626880889416
	.quad	0x3fe5f8045f609dca              # double 0.68652552250289856
	.quad	0x3fe2088801df3acf              # double 0.56354141584037076
	.quad	0x3fd08fa28600ee62              # double 0.25876677595417708
	.quad	0x3fee3dbbecf684ff              # double 0.94503589898900475
	.quad	0x3feac096c3267fd6              # double 0.83600938906965427
	.quad	0x3fd3a40630c481d6              # double 0.30688624155484712
	.quad	0x3fc31e43e6a70834              # double 0.1493611217720755
	.quad	0x3fd9c6e6b7210872              # double 0.40276496776289783
	.quad	0x3fe1d560dd99a029              # double 0.55729716569203902
	.quad	0x3fe4479b7678015f              # double 0.63374112261230298
	.quad	0x3fef11c206cf5462              # double 0.97091771440558383
	.quad	0x3fe784e56983eb85              # double 0.7349726734968135
	.quad	0x3fd57418ea33f7ac              # double 0.33521101828943745
	.quad	0x3fd11ecc2c76aa9e              # double 0.26750473348753612
	.quad	0x3fd67de2d19fc37a              # double 0.35143347235776157
	.quad	0x3fdae6c4101fbf5a              # double 0.42033483099566171
	.quad	0x3feadb33b8b86bea              # double 0.83925806120111912
	.quad	0x3fb99835e2a99068              # double 0.0999787977576162
	.quad	0x3fd5bd4e4180e294              # double 0.33967930218526843
	.quad	0x3fc4d6bf18c9fc7c              # double 0.16280354223633597
	.quad	0x3fe51f807a446818              # double 0.66009544258418185
	.quad	0x3fc564780f081c04              # double 0.16712856992691638
	.quad	0x3fe132009232c5cd              # double 0.5373537879406115
	.quad	0x3fedef8ca0bdf3f0              # double 0.93549186129496142
	.quad	0x3febccb9f06adc44              # double 0.86874100643661522
	.quad	0x3fdab6324fd3d94e              # double 0.41737039371164009
	.quad	0x3fe4397e362a3c22              # double 0.63201819018457095
	.quad	0x3fa20ae77939f950              # double 0.035239442394401466
	.quad	0x3fed9e195fe5b711              # double 0.92554920892664161
	.quad	0x3fec7254b9ba6264              # double 0.88895641589176621
	.quad	0x3fee4c9dabb56493              # double 0.94685252701596523
	.quad	0x3fdd8ee7118c0a90              # double 0.46184708322122336
	.quad	0x3feb2a2f7e53ce93              # double 0.84889959977450002
	.quad	0x3fec14496bb6d2a9              # double 0.8774764159957914
	.quad	0x3fe2b61442dd9ecf              # double 0.58472645816524416
	.quad	0x3fe23bb44dd75314              # double 0.56978812411634516
	.quad	0x3fcb31a8aed73620              # double 0.21245296990530083
	.quad	0x3fe91e56ca4d361a              # double 0.78495349418671201
	.quad	0x3fdd01c1c47ac756              # double 0.45323223292790737
	.quad	0x3fc35dc86e24f2bc              # double 0.15129952791348511
	.quad	0x3fce6135324353fc              # double 0.23734154657600459
	.quad	0x3fd84ec4b50ba024              # double 0.37980764084068341
	.quad	0x3fd7a55b338bc9ae              # double 0.36946754487794464
	.quad	0x3fefd36785dcb250              # double 0.99455619950237839
	.quad	0x3fe0bbf60d6259f6              # double 0.5229444753084056
	.quad	0x3fe56ec54cc093f8              # double 0.66977181425738674
	.quad	0x3fbddddc12610c70              # double 0.11666655968387984
	.quad	0x3fee070673ad4191              # double 0.93835756867524556
	.quad	0x3fd580da8dcaf656              # double 0.33598960730509952
	.quad	0x3fea8cd66f352198              # double 0.82969209404204758
	.quad	0x3fa561a18864bbb0              # double 0.041760490321727572
	.quad	0x3fe500f730a5a380              # double 0.65636786939022329
	.quad	0x3fcbda88fbcc3cc0              # double 0.21760666174711751
	.quad	0x3fa0b1819df0a850              # double 0.032604265718263137
	.quad	0x3fd4291b3ef53cf0              # double 0.31500893734205615
	.quad	0x3fb4c6b07d931748              # double 0.081156759889464358
	.quad	0x3fe91464db923aeb              # double 0.78373949894907236
	.quad	0x3fead4c5340d7d7e              # double 0.83847294012586793
	.quad	0x3fe6ecf8fc832f12              # double 0.71642731970630025
	.quad	0x3feecc0089e6d42b              # double 0.96240260061188587
	.quad	0x3fe0c7a9c1737c5c              # double 0.52437293799801976
	.quad	0x3fec69e791e7beae              # double 0.88792780396575721
	.quad	0x3f9ca329976d2600              # double 0.027966165416080102
	.quad	0x3fef97f040de739c              # double 0.9872971789333067
	.quad	0x3f9a0c89e7615080              # double 0.025438456294367473
	.quad	0x3fe5947ae4878f09              # double 0.67437500605271439
	.quad	0x3fcb7dd03977f834              # double 0.21477701955876827
	.quad	0x3fd84ed3b03a1e9e              # double 0.37981121263190143
	.quad	0x3fec83aa14081a43              # double 0.89107231056625158
	.quad	0x3fe97d42020d8d55              # double 0.79654026413883605
	.quad	0x3fe35684139e8300              # double 0.60431102592346519
	.quad	0x3fe0dc0e3098ad7e              # double 0.52686223498805851
	.quad	0x3fde6ed1c545bdac              # double 0.47551388039479536
	.quad	0x3fed2971e28c0627              # double 0.91130918738798961
	.quad	0x3fbef5d848d27bb8              # double 0.12093879487882375
	.quad	0x3fea1203d5ef6d71              # double 0.81469909462195578
	.quad	0x3fd4df362339ec7e              # double 0.32612374725403714
	.quad	0x3fde5263fb58d83e              # double 0.4737787203370124
	.quad	0x3fdbe61c55f550ba              # double 0.43591984171258569
	.quad	0x3fd94d235494a396              # double 0.39533313045336038
	.quad	0x3fd81ece0ebda804              # double 0.37688018264327661
	.quad	0x3fd247cd7bc5dbe8              # double 0.28563248717494938
	.quad	0x3fbb69c0c9cb3868              # double 0.10708241392714657
	.quad	0x3fe37187d43df452              # double 0.60760871366040647
	.quad	0x3fca53c493802f64              # double 0.20568139269050356
	.quad	0x3fe5f3c43721ef6e              # double 0.68600664871290262
	.quad	0x3fc74edca2c058e0              # double 0.18209417292445718
	.quad	0x3fa708d02a9570e0              # double 0.044989113996708019
	.quad	0x3feef2fe7744a4a5              # double 0.96716235441740094
	.quad	0x3fd0d3c3686eaa6a              # double 0.26292500685182196
	.quad	0x3fee76701ccb5e08              # double 0.95195775627047485
	.quad	0x3fc04136efcbef48              # double 0.12699019154376345
	.quad	0x3fe1bc7be62e6878              # double 0.55425829846650654
	.quad	0x3fe78978e0cd42c3              # double 0.7355312719974666
	.quad	0x3fc8ad73e479f79c              # double 0.19279335647655393
	.quad	0x3fec7bf301449249              # double 0.8901305222285113
	.quad	0x3fc8dbc4b8d89138              # double 0.19420680070573737
	.quad	0x3fd2786ec7a0a952              # double 0.28860063071137632
	.quad	0x3fc4c10d7575f724              # double 0.16214149699583758
	.quad	0x3fe27f9d6ec7f001              # double 0.57807799946704119
	.quad	0x3fdf9126e1c2b7a6              # double 0.49323436781821284
	.quad	0x3fdd55220341fa8c              # double 0.45832109754693628
	.quad	0x3fd8d2f9442241de              # double 0.38787681249325867
	.quad	0x3fe2a4d221f0964b              # double 0.58261973027101399
	.quad	0x3fc28710654d9ae8              # double 0.14474682756846069
	.quad	0x3fd1e1224494ea92              # double 0.27936608025962884
	.quad	0x3fbc6e9ac3ca3f30              # double 0.11106269149808834
	.quad	0x3fe02220feab1104              # double 0.50416612377060277
	.quad	0x3feb916602df7ae6              # double 0.86149883805395855
	.quad	0x3fe3f042cf43efb3              # double 0.62307873231428912
	.quad	0x3feb1477e4d24f7a              # double 0.84624857608513016
	.quad	0x3fe8aae8e8d389c1              # double 0.77086301301852
	.quad	0x3fc16824c93b002c              # double 0.13599071336466417
	.quad	0x3fcef309b3b8eaa8              # double 0.24179192805771277
	.quad	0x3fbf25608f2df130              # double 0.12166408057777711
	.quad	0x3fd0c52f1ca27442              # double 0.26203515812250455
	.quad	0x3fdff99d85b8a0c4              # double 0.49961031016074409
	.quad	0x3fef77531bee530f              # double 0.98331599669708846
	.quad	0x3f9022b6c7cbc980              # double 0.015757423348028876
	.quad	0x3fedf318a0e15a16              # double 0.93592482969217161
	.quad	0x3feb864e81910a44              # double 0.86014485650986971
	.quad	0x3fc8038fa0512ec0              # double 0.18760867431625705
	.quad	0x3fe084cf6d02276a              # double 0.51621218958574144
	.quad	0x3fb10565dc701798              # double 0.066488615339123647
	.quad	0x3fec8d559dd9e5e4              # double 0.89225273924165238
	.quad	0x3febecae6b31e5be              # double 0.8726417630816099
	.quad	0x3fe5ae2bfe0dbe80              # double 0.67751121158467242
	.quad	0x3fe5c07db6ea90cd              # double 0.67974744535288212
	.quad	0x3fd57cd5b0c27f6a              # double 0.33574430715270032
	.quad	0x3fe9ac273d1419e6              # double 0.80226480416677926
	.quad	0x3fb1d50b378abe20              # double 0.069657040653276159
	.quad	0x3fea58082190bc54              # double 0.82324606471764605
	.quad	0x3feb6c3490ec7200              # double 0.85695865922349412
	.quad	0x3fc3ada18859be60              # double 0.1537362972044205
	.quad	0x3fd2168bb31edeb8              # double 0.28262608043904036
	.quad	0x3fc421174be46754              # double 0.15725985723184499
	.quad	0x3fd9304fa75eb378              # double 0.3935736784431394
	.quad	0x3fd87800ba982292              # double 0.38232439252946293
	.quad	0x3fe5ec7e8e93056f              # double 0.68511894079726499
	.quad	0x3fd164211e3941e0              # double 0.27173641158608852
	.quad	0x3fe07747f2a5ac21              # double 0.51456067459128374
	.quad	0x3fef5de41cd9585f              # double 0.98021131167002895
	.quad	0x3fcb2a05cc9d0300              # double 0.21221992960820302
	.quad	0x3fe2961e2c801408              # double 0.58082493487802456
	.quad	0x3fda98205a90fb46              # double 0.41553505749100272
	.quad	0x3fc9bc3ac2e157e8              # double 0.20105680957448091
	.quad	0x3fdfbd632ef7f446              # double 0.49593429171347159
	.quad	0x3fa451d54d6ccc30              # double 0.039686837865155034
	.quad	0x3fe71e3fc34c5ba6              # double 0.72244251388734848
	.quad	0x3fc49030b1d7669c              # double 0.1606503361097581
	.quad	0x3fdcae2bb18f8332              # double 0.44813053455259244
	.quad	0x3feefe8f91841d50              # double 0.9685743181334292
	.quad	0x3fdd36963efcadb6              # double 0.4564567198856041
	.quad	0x3fee85923ca20223              # double 0.95380508272507247
	.quad	0x3fe2b6303819d076              # double 0.58473978955454586
	.quad	0x3fb84acc96ab6c20              # double 0.094891344818663458
	.quad	0x3fe48dbc529ff730              # double 0.64230171334904718
	.quad	0x3fdde46739272778              # double 0.46706562596647627
	.quad	0x3fe0d9b366978742              # double 0.52657480275613744
	.quad	0x3fd99e62af3986dc              # double 0.40029208289898377
	.quad	0x3fe1affef4628467              # double 0.55273387652790695
	.quad	0x3fea7a88878a7463              # double 0.82745768044300083
	.quad	0x3fe277263019432c              # double 0.57704457659028696
	.quad	0x3fe700140739b56a              # double 0.71875955020156579
	.quad	0x3fc49cfe2364dfd4              # double 0.16104103782868029
	.quad	0x3fe31a70a68a7763              # double 0.59697754409328885
	.quad	0x3fb4c5fd54d76c00              # double 0.081146081174139795
	.quad	0x3fedf45687cb0cb4              # double 0.93607641718008105
	.quad	0x3fe51841975224b0              # double 0.65921096377237198
	.quad	0x3f85e3ee4c210500              # double 0.010688649843475506
	.quad	0x3fedf33dd0ab6ff1              # double 0.93594256168171175
	.quad	0x3fec4ceff2995d01              # double 0.88439175970680151
	.quad	0x3feed600ddbfef58              # double 0.96362345991608844
	.quad	0x3fe8207bd5e77dab              # double 0.75396529939819368
	.quad	0x3fe977baa43b1326              # double 0.79586536480255599
	.quad	0x3fe77760d55ed313              # double 0.73332254098804339
	.quad	0x3fee91bf7afdc59a              # double 0.95529150029885845
	.quad	0x3fe13c068fd0505b              # double 0.53857734764688858
	.quad	0x3fd3ca85f2d6771c              # double 0.30923603739380368
	.quad	0x3fbffe297c2b6a88              # double 0.12497195512279735
	.quad	0x3fc42464c4377f60              # double 0.15736064511201686
	.quad	0x3fe6204198bec66f              # double 0.69143752892541765
	.quad	0x3fe17affb6449306              # double 0.54626451110070273
	.quad	0x3fc33f168fa32124              # double 0.15036279691253995
	.quad	0x3feb9f804a33356c              # double 0.86322035305208322
	.quad	0x3fe53971b2f15a54              # double 0.66326222371828658
	.quad	0x3fd74ecefe77722a              # double 0.36418509340527072
	.quad	0x3fdce3c86965c1bc              # double 0.45140276234362964
	.quad	0x3fa0dc58ee339790              # double 0.032931117131553056
	.quad	0x3fcfcc92825e0d0c              # double 0.24843055120081947
	.quad	0x3fed6b047c108154              # double 0.91931366187422236
	.quad	0x3fda805743155ed0              # double 0.41408330489273926
	.quad	0x3fc9854ea8447e5c              # double 0.19938071457089535
	.quad	0x3fe8dead5b403221              # double 0.77718227217116376
	.quad	0x3fedcaa2ef09996e              # double 0.93098589598666392
	.quad	0x3fe3cf36ebb5e8e4              # double 0.61904474293922052
	.quad	0x3fe6b6be82f9c22b              # double 0.70980763989616003
	.quad	0x3fb548aa19529f30              # double 0.08314002149802202
	.quad	0x3feb10274ca2ec11              # double 0.84572186439561581
	.quad	0x3fdc6473554dd6a0              # double 0.44363101320718989
	.quad	0x3fe5629c5a559ad0              # double 0.66828744548259955
	.quad	0x3fe577b284904aee              # double 0.67086149112068738
	.quad	0x3fbf25fbabb7a930              # double 0.12167332594222979
	.quad	0x3fb845bc9b9b2508              # double 0.09481409834838328
	.quad	0x3fe65ea95a9e71f3              # double 0.69905536364563969
	.quad	0x3fd6a59625347656              # double 0.35385659821790705
	.quad	0x3fe6cea3144f1cad              # double 0.71272424666030576
	.quad	0x3fdc443cc710e31e              # double 0.44166488113437363
	.quad	0x3fed24b31d62f2c0              # double 0.9107299398379709
	.quad	0x3fe9ff711495307a              # double 0.81243185062477541
	.quad	0x3fa65007f3e1f200              # double 0.04357933857042795
	.quad	0x3f9698810341a3a0              # double 0.022066131423716606
	.quad	0x3fe5b68059e41490              # double 0.67852799946617104
	.quad	0x3feb4b3ae15c7791              # double 0.85293334976062074
	.quad	0x3fec267711a8b018              # double 0.87969544838915947
	.quad	0x3faf8f92be587520              # double 0.061642251716174323
	.quad	0x3fec38774beafc91              # double 0.88189282252996481
	.quad	0x3fdc6260465e0a86              # double 0.44350439903079353
	.quad	0x3fd010118889ab68              # double 0.2509807427765538
	.quad	0x3fe7463409d0293c              # double 0.72731973568560404
	.quad	0x3fde82797ee8d466              # double 0.47671353715424514
	.quad	0x3feec32b7559a247              # double 0.96132443351695762
	.quad	0x3fe05e3f6a925a9d              # double 0.51150484862121781
	.quad	0x3f912d404f278240              # double 0.016774182158658002
	.quad	0x3fd12ebd384c9b6c              # double 0.26847773073170944
	.quad	0x3fe0d9e3ac2080e6              # double 0.52659782045887193
	.quad	0x3fb5f15356010590              # double 0.085713585373943468
	.quad	0x3fe00c9d461c4cc3              # double 0.50153983777490685
	.quad	0x3f98d1f74bd06860              # double 0.024238456728291502
	.quad	0x3fd681f690b9ef8e              # double 0.35168232091359009
	.quad	0x3fae99c7d74c5240              # double 0.059767003089437498
	.quad	0x3fe90b7ea3989404              # double 0.78265315964074533
	.quad	0x3fd7820164101cb0              # double 0.3673099019219519
	.quad	0x3fe8f22e32810c2e              # double 0.77956304420547951
	.quad	0x3fd8e288e3411cb4              # double 0.38882658188635877
	.quad	0x3fed33cdc35d4e15              # double 0.91257370144961902
	.quad	0x3fd8659385c082e2              # double 0.38119972287863224
	.quad	0x3fe22a8a12bd0ce5              # double 0.56769279155596719
	.quad	0x3fe29a0996dca356              # double 0.58130340066154917
	.quad	0x3fdc9dc8319ff846              # double 0.44713024946384328
	.quad	0x3fefb95f83faad18              # double 0.99137855317295286
	.quad	0x3fe0ce79eb163cc1              # double 0.52520461955455044
	.quad	0x3fece5e59cf82388              # double 0.90306358964981914
	.quad	0x3fe05a00838938c7              # double 0.51098657312993445
	.quad	0x3fe737c59be85634              # double 0.72555809450813635
	.quad	0x3fc1e75fa062e884              # double 0.13987346011510138
	.quad	0x3fd62ce326a75394              # double 0.34648970389144407
	.quad	0x3fe8864283c0a9fd              # double 0.76638913853577117
	.quad	0x3fd3b13fce8e10f0              # double 0.30769343539601746
	.quad	0x3fe63ce68ed3b3bb              # double 0.69493415733233321
	.quad	0x3fb8e159a9e01ee8              # double 0.097188571904662902
	.quad	0x3fdce569ebea663e              # double 0.45150230444560069
	.quad	0x3fda735df40ffd26              # double 0.41329144319748179
	.quad	0x3fb7ffb53066d8d0              # double 0.093745540921051473
	.quad	0x3fd99bb59da764d4              # double 0.40012874980818691
	.quad	0x3fe30503ff163550              # double 0.59436225721007396
	.quad	0x3feb965801342050              # double 0.8621025107868352
	.quad	0x3fc95044d37089a8              # double 0.19776211094092599
	.quad	0x3fefb0fec4455462              # double 0.99035585722107222
	.quad	0x3fd35f1eded109c8              # double 0.30268069991521118
	.quad	0x3fdfe83758536952              # double 0.49854835153168608
	.quad	0x3feb99141097dd44              # double 0.86243632546294479
	.quad	0x3fca7afe17a9ca1c              # double 0.20687843470985079
	.quad	0x3fe8635120461663              # double 0.76212364486191253
	.quad	0x3fe4ea39da088ed2              # double 0.65359203896192697
	.quad	0x3fded1e87f32daea              # double 0.48156177922957843
	.quad	0x3fe5034ee8229294              # double 0.65665383662106303
	.quad	0x3fe866ec0545a0f7              # double 0.76256371526417766
	.quad	0x3fda78420f5ab578              # double 0.41358996867605624
	.quad	0x3fde83cc47896cdc              # double 0.4767943094827396
	.quad	0x3feb983fdb0e6967              # double 0.8623351362651136
	.quad	0x3fee9a56251fe758              # double 0.95633990527060586
	.quad	0x3fcdc087d8482730              # double 0.23243806896817309
	.quad	0x3fe45a02aac1b57d              # double 0.6359875998584098
	.quad	0x3fe59f1a5d5f2155              # double 0.67567175137177549
	.quad	0x3feff343c103ff15              # double 0.99844539354669115
	.quad	0x3fe93bad80d1d51f              # double 0.78853488121118065
	.quad	0x3fef185f9f35067e              # double 0.9717252835764183
	.quad	0x3feeddbe5f464c63              # double 0.96456831558533584
	.quad	0x3fed2864c1888f08              # double 0.91118085669992954
	.quad	0x3fe13fe65773e6f6              # double 0.53905026512731413
	.quad	0x3fb03df617e113c8              # double 0.063445454435238635
	.quad	0x3feab31ee34dac3d              # double 0.83436531443783901
	.quad	0x3fd4d1a857601e8e              # double 0.32529648335228323
	.quad	0x3fba3d488aea34c0              # double 0.10249761001087432
	.quad	0x3fe4544d450ac7b9              # double 0.63529075131213297
	.quad	0x3fd3d02dcbd83dce              # double 0.30958123118122394
	.quad	0x3fe48e953f1a38e6              # double 0.64240515064900872
	.quad	0x3fc8dee3155c4fec              # double 0.19430197279927997
	.quad	0x3fd07da10b57a082              # double 0.25766779048581878
	.quad	0x3feeb4cd2e724df5              # double 0.95957049438078334
	.quad	0x3f7232b9ed2c7500              # double 0.0044429075958565267
	.quad	0x3fd71a66f5891454              # double 0.36098646143029112
	.quad	0x3fe383e6e86f87b1              # double 0.60985131642904922
	.quad	0x3fc8a6fee6689ad8              # double 0.19259630442066711
	.quad	0x3fea431c4600a609              # double 0.82069219276780914
	.quad	0x3fc613aa60f75668              # double 0.17247514471698655
	.quad	0x3fd30ead70279a72              # double 0.2977708430538889
	.quad	0x3fdc8f1dfa6dc0a8              # double 0.4462351747124651
	.quad	0x3fe5236b1c9a8059              # double 0.66057353579163725
	.quad	0x3fe4f972dbdd6d33              # double 0.6554502767789131
	.quad	0x3fd429b4a49cdef0              # double 0.31504551005808334
	.quad	0x3fe1607dea6bcf2e              # double 0.54302879128815618
	.quad	0x3f5bdfea76aa5a00              # double 0.001701334923074449
	.quad	0x3fe25529531d164e              # double 0.57289568169717042
	.quad	0x3fe46faa30fdad0b              # double 0.63863095825709715
	.quad	0x3fb5ce32fccd6090              # double 0.085177599639225443
	.quad	0x3fcd1a15047a66e8              # double 0.22735846251162362
	.quad	0x3fd9490dba1abc4e              # double 0.39508383917104062
	.quad	0x3fbe638324554ce0              # double 0.11870593678513641
	.quad	0x3fe29ac78b2dfa0b              # double 0.58139397796168291
	.quad	0x3fdf8c6a50354dce              # double 0.49294526894410928
	.quad	0x3fdfb591d463c886              # double 0.49545713177861506
	.quad	0x3fe17e51d667761e              # double 0.54666988254365712
	.quad	0x3fb9cca578fcbd58              # double 0.10077890590468053
	.quad	0x3fd64b30160b7e68              # double 0.34833910134145762
	.quad	0x3fb2aee56ac25af8              # double 0.07298120361734195
	.quad	0x3fe83c411c586b94              # double 0.7573552659626892
	.quad	0x3f8b258fc9fef840              # double 0.013255236961296046
	.quad	0x3fc9e914413e8f3c              # double 0.20242551027069478
	.quad	0x3fd26392691da938              # double 0.28732738747807529
	.quad	0x3fdf03191301fbc2              # double 0.48456408363557213
	.quad	0x3fc5427b29e240a4              # double 0.16609134240252843
	.quad	0x3fa41999fd390cd0              # double 0.039257824097626348
	.quad	0x3fd9462e37a52886              # double 0.39490848001572265
	.quad	0x3fde0b89487912ca              # double 0.46945411755977473
	.quad	0x3fe393a900f1ad19              # double 0.61177492317566184
	.quad	0x3fe23ef32a60e1bd              # double 0.57018430974044743
	.quad	0x3fe092810503b5de              # double 0.5178837869586308
	.quad	0x3febc788f60a7ce2              # double 0.86810730032803129
	.quad	0x3feb429bc5dd08be              # double 0.85188091893385098
	.quad	0x3fe6bb0b3bc5549d              # double 0.71033250497807254
	.quad	0x3fd9ece02a6668c6              # double 0.40508274212482964
	.quad	0x3fd8e8dd4ca9592c              # double 0.38921291815258274
	.quad	0x3fefb3980b896e54              # double 0.99067308667458542
	.quad	0x3fe1232a0f8fc078              # double 0.535542517083754
	.quad	0x3fd878ea64395be8              # double 0.38238010203843809
	.quad	0x3fec25a2a7511e71              # double 0.87959416083408659
	.quad	0x3f8836d7e635e540              # double 0.011823355401008429
	.quad	0x3fe1a5c369430529              # double 0.5514847808737261
	.quad	0x3fef4046e1507fe7              # double 0.9765962982819446
	.quad	0x3fe33b91e8e7166d              # double 0.60102172364049766
	.quad	0x3f9d88ff4ecbbf00              # double 0.028842915710753481
	.quad	0x3fb6f667d52a9a98              # double 0.089697351019461968
	.quad	0x3fce6ef2432545e8              # double 0.23776081350892686
	.quad	0x3fddf58b3dc5a118              # double 0.46811181099339327
	.quad	0x3fe1236a58703e92              # double 0.53557317040572827
	.quad	0x3fede3b2089c0236              # double 0.93404485398793358
	.quad	0x3feec008b7454c79              # double 0.96094165606554249
	.quad	0x3fe1f88f63651f37              # double 0.56159181035125172
	.quad	0x3fe448b0fa58d446              # double 0.6338734521474485
	.quad	0x3feb2e4523a1f457              # double 0.84939820250986997
	.quad	0x3fe68beb79456631              # double 0.70458005605468632
	.quad	0x3fec8467f2861caf              # double 0.89116284721321459
	.quad	0x3fed8e3357226865              # double 0.92360846537054597
	.quad	0x3fd0c1c84d67db3e              # double 0.26182754096173599
	.quad	0x3fd10b973b4a873c              # double 0.26633244314335847
	.quad	0x3fc216bc7dc6a800              # double 0.14131885663420007
	.quad	0x3fdd008b0b552e7a              # double 0.45315815073693211
	.quad	0x3fbe7e59dc33d020              # double 0.11911546350512525
	.quad	0x3fd563024b8d8218              # double 0.33416802766990505
	.quad	0x3fe069b91aa5a90d              # double 0.51290564732087918
	.quad	0x3fd27492a1757354              # double 0.28836503760776577
	.quad	0x3fd989ecb3e758f2              # double 0.39904325073929592
	.quad	0x3fef18a8edaad7d2              # double 0.97176023883252527
	.quad	0x3fee5429c1f5ce28              # double 0.94777381785246905
	.quad	0x3fed5f1ecb53ad6a              # double 0.91786136352804459
	.quad	0x3feb0b591c944682              # double 0.84513526517748994
	.quad	0x3fe74d502331ab56              # double 0.72818762658912806
	.quad	0x3fd4de9da1b9e796              # double 0.32608738702367057
	.quad	0x3fd3acff9a938964              # double 0.30743398757308271
	.quad	0x3fe33fc6e45ad878              # double 0.60153526878890684
	.quad	0x3fb76940e408dae8              # double 0.091449790642268547
	.quad	0x3fd0c1ed0925a9ba              # double 0.26183629887841742
	.quad	0x3fc7f6b6a4924320              # double 0.18721659694394877
	.quad	0x3fe7666778ee7b39              # double 0.73125051135489294
	.quad	0x3fe41cc0e7369541              # double 0.62850995215254823
	.quad	0x3f7c778e31d4c600              # double 0.0069499544600133412
	.quad	0x3fe8a0abe2349ccb              # double 0.76961321049466258
	.quad	0x3fbbd55671de8a50              # double 0.10872402458202512
	.quad	0x3fe7f0843c8dedc1              # double 0.74810993029625916
	.quad	0x3fed8fb98986fc14              # double 0.92379452572629583
	.quad	0x3f7026d685f19480              # double 0.0039432887852842713
	.quad	0x3fae4de62726cfc0              # double 0.059188072470902409
	.quad	0x3febf3a0b0201355              # double 0.87348970794173886
	.quad	0x3fceaa2e9cfe4800              # double 0.23956854501426506
	.quad	0x3fd07bd8029718ec              # double 0.25755882504417005
	.quad	0x3fbc25f036dfca48              # double 0.10995389308644932
	.quad	0x3fe48ef474809e20              # double 0.64245054964425563
	.quad	0x3fea9401c0d1dd2a              # double 0.83056724224198786
	.quad	0x3fd18522c47bad70              # double 0.27375096500210017
	.quad	0x3fd795a372f80302              # double 0.36850820758267855
	.quad	0x3fd9e28197bb47f0              # double 0.4044498426202372
	.quad	0x3fd7da7273df41e2              # double 0.37270795169481918
	.quad	0x3fec1b8c7bb89c05              # double 0.87836288608821234
	.quad	0x3f8f7a1973a8ed00              # double 0.015369604913863189
	.quad	0x3febd8a8af255adc              # double 0.87019762237727205
	.quad	0x3fee7d2de76deee7              # double 0.95278067780551801
	.quad	0x3fc29b1aca707638              # double 0.14535841831905016
	.quad	0x3fe02cf3d7b4a523              # double 0.50548736696251628
	.quad	0x3fdca316102ebd18              # double 0.44745399074868564
	.quad	0x3fe0eef0fd1a5c90              # double 0.52916764673399719
	.quad	0x3fd2490ff05e6864              # double 0.28570936654580792
	.quad	0x3fabcdf3a30bda60              # double 0.054305661824334051
	.quad	0x3fe97da9f8bdcc86              # double 0.79658983785920223
	.quad	0x3fe91352e4164536              # double 0.78360886142960484
	.quad	0x3fa0d47b3a0a30a0              # double 0.032871104083001201
	.quad	0x3fd3a412e65b9a22              # double 0.30688927169686242
	.quad	0x3fd369f7ffd06480              # double 0.3033428190406724
	.quad	0x3fedbc16644f3688              # double 0.92920989600834591
	.quad	0x3fc278a358c1957c              # double 0.14430658181951717
	.quad	0x3fd1919254fb595a              # double 0.27450998591429754
	.quad	0x3fe088a9dea6018c              # double 0.51668256269481239
	.quad	0x3fa7245bb68df5a0              # double 0.045199266466606547
	.quad	0x3fccac37b6017648              # double 0.22400566470143901
	.quad	0x3fe56213fa63c5ab              # double 0.66822241691823103
	.quad	0x3fe4a374be18d769              # double 0.64495312813117522
	.quad	0x3fe0fc5a74d175f0              # double 0.53080485168510272
	.quad	0x3f82d2861bd1a000              # double 0.0091906049003256384
	.quad	0x3fed1fbec0641ff9              # double 0.91012513710393173
	.quad	0x3fd90e149e48825e              # double 0.39148440797183592
	.quad	0x3fd2a19b1f4e3d88              # double 0.29111364419164731
	.quad	0x3f2b936cc24ca000              # double 2.1038725494659793E-4
	.quad	0x3fbf4906dc7fed18              # double 0.12220805056852091
	.quad	0x3fadcf426331dbb0              # double 0.058221888169036062
	.quad	0x3fbccffc480b9568              # double 0.11254860648076248
	.quad	0x3fd9e55a19b33ed4              # double 0.40462353238852455
	.quad	0x3feb3b4c22a82840              # double 0.85098845261496336
	.quad	0x3fe0bd28994f59b3              # double 0.52309064811088601
	.quad	0x3fcd060e108f99c0              # double 0.22674728211059225
	.quad	0x3fd0d745a3930b36              # double 0.26313916181622987
	.quad	0x3fe55679f59888f2              # double 0.66680620162904192
	.quad	0x3fc53ec258111dd0              # double 0.16597775745525079
	.quad	0x3fe30004cea76641              # double 0.59375229227152471
	.quad	0x3fe8dfdbc77ecee4              # double 0.77732647861418202
	.quad	0x3fe293415bd883ca              # double 0.5804755014288443
	.quad	0x3fd1edd4d1acf20a              # double 0.28014107204560956
	.quad	0x3fe8f5f384443f0a              # double 0.78002334435765985
	.quad	0x3f5249023ac1a200              # double 0.0011160394451740219
	.quad	0x3fea393c241a228f              # double 0.81948668528737467
	.quad	0x3fe58e067dd8a0a0              # double 0.67358707980476495
	.quad	0x3fe09b52b7dde719              # double 0.51896034156308979
	.quad	0x3fe3973463c6eba8              # double 0.6122075985689337
	.quad	0x3fee635055507bd3              # double 0.94962326682058984
	.quad	0x3fc8692280340344              # double 0.19070845851822515
	.quad	0x3fe1c491e7ffdd64              # double 0.55524535477063042
	.quad	0x3fe7460c5d13d2e8              # double 0.72730081729113483
	.quad	0x3fe2be43019e2066              # double 0.58572531047776688
	.quad	0x3fed8239ad1c227d              # double 0.92214664278533542
	.quad	0x3fe6f99a82e92b23              # double 0.71796918457525682
	.quad	0x3fe8657cbd613f07              # double 0.76238858211760963
	.quad	0x3fc933130ac4986c              # double 0.19687116647509428
	.quad	0x3fe54ba857be5a65              # double 0.66548554551520722
	.quad	0x3fe26dac56cdf00a              # double 0.5758878417395874
	.quad	0x3fea04028122d304              # double 0.81298947545892064
	.quad	0x3fea635e26647025              # double 0.82462985514166987
	.quad	0x3fe422fe484e4fee              # double 0.62927164194343077
	.quad	0x3fef1918c1da696b              # double 0.97181356298396559
	.quad	0x3fe2e1f18a598ae3              # double 0.59008099576416517
	.quad	0x3fd99407df6c0bd8              # double 0.39966008013305787
	.quad	0x3fc850a2381cfd68              # double 0.18996074428467158
	.quad	0x3fe979ce8630f46e              # double 0.79611898621773292
	.quad	0x3fd1bf02cec9d99a              # double 0.27728338426768462
	.quad	0x3fa90b3ec703c3e0              # double 0.048913919252193017
	.quad	0x3fd995554b9bb36e              # double 0.39973957427610329
	.quad	0x3feb76f60470356f              # double 0.85827160708292449
	.quad	0x3fd11962c43abd9e              # double 0.26717442667992397
	.quad	0x3fe146cc6520705e              # double 0.53989238501845782
	.quad	0x3fc7b6d5b1ca6b7c              # double 0.18526717358767175
	.quad	0x3fe1ccd834c315a7              # double 0.55625543885314677
	.quad	0x3fe62fb01298b7f6              # double 0.69332126266613048
	.quad	0x3fdef0b234b7919a              # double 0.4834409251036732
	.quad	0x3fe350e08693f1fe              # double 0.6036226871943311
	.quad	0x3fe2fa23b42378e3              # double 0.59303460295975829
	.quad	0x3fb845c9f4368bd0              # double 0.094814893839198832
	.quad	0x3fd8d1a35fcda368              # double 0.38779529910839594
	.quad	0x3fd9b16d5373af80              # double 0.40145428800200733
	.quad	0x3fcd68712095a6a8              # double 0.22974981394809402
	.quad	0x3fc2e06dc0568b40              # double 0.14747402087695072
	.quad	0x3fec15e817c8a70c              # double 0.87767414708398083
	.quad	0x3febb6b783b93a0c              # double 0.86605430342916767
	.quad	0x3fd0530fc64ac6de              # double 0.2550696789213428
	.quad	0x3fe1f9c0f4121294              # double 0.56173751516378667
	.quad	0x3fed4d5a924fe693              # double 0.91569260193428403
	.quad	0x3fecd3096600cc2a              # double 0.90076131746753174
	.quad	0x3fdd7f662f53014c              # double 0.46090082761295004
	.quad	0x3febd20e3c70001c              # double 0.86939155391883415
	.quad	0x3fe74a678a66eeef              # double 0.72783257514626409
	.quad	0x3f9d24a20baee7c0              # double 0.028460056269729028
	.quad	0x3fe674f01507ecf5              # double 0.70177463634118331
	.quad	0x3fe674b416fd72d3              # double 0.70174602976075062
	.quad	0x3fe3c3c0a6739ef0              # double 0.61764557371222217
	.quad	0x3f6b45cf6bf1d800              # double 0.0033291865543629839
	.quad	0x3fecb8ef3f477213              # double 0.89757501944729012
	.quad	0x3fa170a3139d08a0              # double 0.034062477249350964
	.quad	0x3fe6f25c5a8fab4c              # double 0.71708505332694861
	.quad	0x3fdd53a2c1e2fa80              # double 0.45822972234956438
	.quad	0x3feb22efcaa2ca98              # double 0.84801473214459389
	.quad	0x3fe082a1326a3db8              # double 0.51594600531273382
	.quad	0x3fe7a82a6d4449ae              # double 0.73927804318582502
	.quad	0x3fe9a906d2ad4602              # double 0.80188313625166097
	.quad	0x3fe26a8ee67d4863              # double 0.57550759332140122
	.quad	0x3fe64c7044176761              # double 0.69683087634187413
	.quad	0x3fefc6ac86b152f2              # double 0.99300218875086288
	.quad	0x3fb5db57c2476dc8              # double 0.085378155642891973
	.quad	0x3fee4684af5a2e94              # double 0.94610819099894394
	.quad	0x3fe861ef40792093              # double 0.76195490448391678
	.quad	0x3fb2801ac82d3b58              # double 0.072267221328030984
	.quad	0x3fe86de40bfda5ee              # double 0.76341440526920024
	.quad	0x3fd8637a702a898a              # double 0.38107167199827841
	.quad	0x3fc78f626069a03c              # double 0.18406324107786698
	.quad	0x3fe4d0c33d867d87              # double 0.65048372284574973
	.quad	0x3fc4e7403bf6d8ac              # double 0.16330721786443314
	.quad	0x3febe4fd0b5bcd0a              # double 0.87170269220806174
	.quad	0x3fbde0c3c003cf50              # double 0.11671088636267979
	.quad	0x3fe5ee673fba75b3              # double 0.68535196730561265
	.quad	0x3fb4d19141d480e8              # double 0.081322744914817613
	.quad	0x3fd546e3f36474aa              # double 0.33245180863179746
	.quad	0x3fa47fe49f7e9340              # double 0.04003824660256905
	.quad	0x3fc8297051a7a100              # double 0.18876461016703416
	.quad	0x3fee5bacc2941035              # double 0.94869077685917225
	.quad	0x3fe96d595456e1c1              # double 0.79459825966392128
	.quad	0x3fe0b17ed31bdb93              # double 0.52166692001525161
	.quad	0x3fbf7117aedbfb48              # double 0.1228194047834964
	.quad	0x3fe9e9e2dfa7a009              # double 0.80980056459975558
	.quad	0x3fe37f9378a842c7              # double 0.60932324949143257
	.quad	0x3fdc59e2b6e57784              # double 0.4429861818406311
	.quad	0x3fdc770430c2245e              # double 0.44476418267783469
	.quad	0x3f85d64e8361d600              # double 0.010662663826432883
	.quad	0x3fa9265d711cafd0              # double 0.049120826776146154
	.quad	0x3fef34a12907b441              # double 0.97517450345697664
	.quad	0x3fe3310edec7f827              # double 0.59973853599490645
	.quad	0x3fcba4b1e0cac718              # double 0.21596358753372935
	.quad	0x3fe5a95417685b33              # double 0.67691998073391912
	.quad	0x3fb1a0030abc0a58              # double 0.068847837563262515
	.quad	0x3fb8717db8f0bbe8              # double 0.095481736804444162
	.quad	0x3fea0d5cb09d2dcd              # double 0.81413111205022803
	.quad	0x3fe37aa062086c15              # double 0.60871905467081666
	.quad	0x3fe78db2d98815f9              # double 0.73604719626081228
	.quad	0x3fd89758d4503562              # double 0.38423748716089368
	.quad	0x3fdf5041901cebaa              # double 0.48927344392330474
	.quad	0x3fe8a5c03ecb9381              # double 0.77023327126208596
	.quad	0x3fecc99bdefe12ee              # double 0.89961045792787586
	.quad	0x3febc2fc2ab56490              # double 0.86755188313976994
	.quad	0x3fda6a6ea0b95ac2              # double 0.41274610229212894
	.quad	0x3febdefdfb13a4ad              # double 0.87097071684288141
	.quad	0x3fc3cb8bf8bd5e08              # double 0.15464925427907894
	.quad	0x3fe93d0e02589c24              # double 0.78870296915272719
	.quad	0x3fe52d2fa6d25ff6              # double 0.66176588613870879
	.quad	0x3fd7afa33d8560dc              # double 0.37009507186804824
	.quad	0x3fce148326856394              # double 0.23500098591719321
	.quad	0x3feb458bd3510031              # double 0.85223952553497473
	.quad	0x3fb2eff548ec4470              # double 0.073973970702597702
	.quad	0x3fd0209dd22d29dc              # double 0.25199075245896352
	.quad	0x3f89517df6084340              # double 0.01236246497231408
	.quad	0x3fe0024e72b9254e              # double 0.50028154761199928
	.quad	0x3fe9ce71bfcb8910              # double 0.8064507242200154
	.quad	0x3fe55adf40c64944              # double 0.66734278346329079
	.quad	0x3fc1afc7887f1db4              # double 0.13817686238165339
	.quad	0x3fdf8e8016020052              # double 0.49307253026200215
	.quad	0x3fdf24af03180acc              # double 0.48661399175777542
	.quad	0x3f9ec87389898ec0              # double 0.030061536092388819
	.quad	0x3fb41209b2bef018              # double 0.078400236262439527
	.quad	0x3fe56e8b1632e834              # double 0.66974405608858101
	.quad	0x3febac216d072c88              # double 0.86476203245673933
	.quad	0x3fd1680bc4fbbc2a              # double 0.27197546230940139
	.quad	0x3fc11934b938df2c              # double 0.13358172458696893
	.quad	0x3fecbc7f8313349a              # double 0.89801002121534457
	.quad	0x3f90c60295b5e640              # double 0.016380348575216752
	.quad	0x3fb373c1d356b338              # double 0.075985063644748219
	.quad	0x3fe5b2b6c241a390              # double 0.67806566181853789
	.quad	0x3fb23254255178d0              # double 0.071080454932118231
	.quad	0x3fe59e39e95bbf04              # double 0.67556472375687848
	.quad	0x3fcbd07c884baf00              # double 0.21730000166950703
	.quad	0x3fd98d0d6b32d414              # double 0.39923415630920656
	.quad	0x3fb2e5d267a790d0              # double 0.073819303804671721
	.quad	0x3fec4020d0373424              # double 0.88282814662091313
	.quad	0x3fe8a80962d86739              # double 0.77051228814818906
	.quad	0x3fc1e1cbe75d92e0              # double 0.1397032623018708
	.quad	0x3fe40a9abbbe3066              # double 0.6262944857458137
	.quad	0x3fd9ba9156767402              # double 0.40201219028114121
	.quad	0x3fe05054d6076327              # double 0.50980607798110078
	.quad	0x3fdfc9c1dd2d6c6a              # double 0.49668928717955529
	.quad	0x3fedcf18830fc124              # double 0.93153024290044017
	.quad	0x3fae6c1cccc09b10              # double 0.059418582910714446
	.quad	0x3fb047222f7d82b8              # double 0.063585411638551359
	.quad	0x3fd96face331dce2              # double 0.3974411219309798
	.quad	0x3fdeb0d18a4bb4f8              # double 0.47954214578096765
	.quad	0x3fe3ce431ffcb42c              # double 0.61892849204526135
	.quad	0x3fd9a61c3e6a76ec              # double 0.4007635697870302
	.quad	0x3fe4d1b0ad53cd9f              # double 0.65059694149970315
	.quad	0x3fef791348513278              # double 0.98352970241974357
	.quad	0x3fdb179af4625a90              # double 0.42331575265544874
	.quad	0x3fed65c49e523c8f              # double 0.91867285654179109
	.quad	0x3feadaf594f7c3bf              # double 0.83922843070296682
	.quad	0x3fcfe9919aa5c7d8              # double 0.24931545306350134
	.quad	0x3fdc7df80228615a              # double 0.44518852434841494
	.quad	0x3fd3882971e77f12              # double 0.30518566249337298
	.quad	0x3fdb3797a576d698              # double 0.42526808889975021
	.quad	0x3fe99ea19d929dee              # double 0.80061417365953758
	.quad	0x3fe9ff20ed0465e7              # double 0.81239362995546294
	.quad	0x3fd8b8e6074a39e4              # double 0.38628531181248449
	.quad	0x3fd136d0e3fa7536              # double 0.26897070182333793
	.quad	0x3fec3fd44d4b6d39              # double 0.88279166313751667
	.quad	0x3fe170e14a7e7261              # double 0.54502930211635825
	.quad	0x3fd2105c2509acfa              # double 0.28224853150341256
	.quad	0x3fd83763ce54d88c              # double 0.37838072919419896
	.quad	0x3fdb0ae4c1b26c2a              # double 0.42253989139288939
	.quad	0x3fdb23ba10205440              # double 0.42405559134323667
	.quad	0x3faa901d5ed7f010              # double 0.051880758121086612
	.quad	0x3fe250ed95fb8058              # double 0.57237891477053449
	.quad	0x3fef4246bba97e02              # double 0.97684036877393532
	.quad	0x3fcb16b46158f174              # double 0.2116303897218007
	.quad	0x3feb6391bca42e27              # double 0.85590445369729629
	.quad	0x3fe603393b544d86              # double 0.68789350116496517
	.quad	0x3fb8c87daca705b0              # double 0.096809248591873453
	.quad	0x3fe199bdef2f6211              # double 0.55001732555234828
	.quad	0x3feace49b1281b2f              # double 0.83768162346755115
	.quad	0x3fe4c84d2e322373              # double 0.64945086500766391
	.quad	0x3f6a5ae82ebcdf00              # double 0.0032171759429749924
	.quad	0x3fe940129e86bca1              # double 0.78907137834712071
	.quad	0x3fd1d65c406065b8              # double 0.27870851790211359
	.quad	0x3fe025431d2754a1              # double 0.50454860395497658
	.quad	0x3fe73720c5c8044c              # double 0.72547949437297055
	.quad	0x3fe3eaa6bdc645ba              # double 0.62239396157581628
	.quad	0x3fd39a72bef08c6a              # double 0.30630177160691707
	.quad	0x3fcd52831e5cc884              # double 0.22908057196179155
	.quad	0x3fc598977cce0228              # double 0.16871923059444893
	.quad	0x3fa24be38fb9bd40              # double 0.035735236448881214
	.quad	0x3fe2595e68a56abf              # double 0.57340927542403353
	.quad	0x3fd4caa32d052362              # double 0.32486800571910213
	.quad	0x3fdca51f6638d4e2              # double 0.44757828695885682
	.quad	0x3fc36a245429c414              # double 0.15167669400719375
	.quad	0x3fefbf30b8795bab              # double 0.99208866148079744
	.quad	0x3fe34c0d1db32524              # double 0.60303359795321798
	.quad	0x3fe169561d2d0b40              # double 0.54410844515255263
	.quad	0x3feea33e7c2ec58b              # double 0.95742725614961566
	.quad	0x3fd3498855ea56a0              # double 0.30136307134794471
	.quad	0x3fe320dd6ea68417              # double 0.59776183711449249
	.quad	0x3fd92202a6d9b6ac              # double 0.39270082754124291
	.quad	0x3fef8e7a4ef4638d              # double 0.98614230557278548
	.quad	0x3febfb03f965c5cb              # double 0.8743915434881101
	.quad	0x3fe212c1e6284c67              # double 0.56478972389812732
	.quad	0x3fe1bbcc916905a1              # double 0.55417469406545561
	.quad	0x3fe9bd1cec22ce53              # double 0.80433508034043155
	.quad	0x3feb408ed2c78544              # double 0.85163060348364938
	.quad	0x3fdaa203e278aec4              # double 0.41613862148618019
	.quad	0x3fb55d25709930d0              # double 0.083452548971027384
	.quad	0x3feb337d6133f21d              # double 0.85003537163680998
	.quad	0x3fbc0061202852b0              # double 0.10938078913779736
	.quad	0x3fc0ccaa12d52e2c              # double 0.13124586028639962
	.quad	0x3fecec94c63c6029              # double 0.9038795348924441
	.quad	0x3fc9232846f1b8c8              # double 0.19638541664193654
	.quad	0x3fd7d5b2fd21d17c              # double 0.37241816253597171
	.quad	0x3fc8ead60089c3a4              # double 0.19466662431980553
	.quad	0x3fefe3b0b405c56c              # double 0.99654421959546146
	.quad	0x3fecfcf5a96db6e7              # double 0.90587885943906776
	.quad	0x3fd5455c333cc820              # double 0.33235840800910132
	.quad	0x3fe49c9db0bb8658              # double 0.64411816137380651
	.quad	0x3fe3a9ad64f86bc3              # double 0.61446256371288432
	.quad	0x3fd05e2cc57fdd60              # double 0.2557479790406969
	.quad	0x3fcdce33eb6a709c              # double 0.23285531039153262
	.quad	0x3fdd3216886e6e38              # double 0.45618213008285435
	.quad	0x3fbf7e0b5e7cf7e8              # double 0.12301703507270612
	.quad	0x3fd5743e8602b95c              # double 0.33521998488403937
	.quad	0x3fee0558bcc816d4              # double 0.93815266486555026
	.quad	0x3f96f15ff63136a0              # double 0.022405146981603452
	.quad	0x3fcbd034d0b93774              # double 0.21729145232751146
	.quad	0x3fe907b3ed2eed53              # double 0.78219028782715794
	.quad	0x3fe029d27494e05c              # double 0.50510523576577837
	.quad	0x3fd41bcae763d6ac              # double 0.31419632527045382
	.quad	0x3fe3853543fc35c9              # double 0.61001075056417975
	.quad	0x3fefb58ce4d39f9d              # double 0.990911909987506
	.quad	0x3fe03492e01a324c              # double 0.50641769189821551
	.quad	0x3fddc1372ea0d466              # double 0.46491794160403399
	.quad	0x3fd4ffff187b171e              # double 0.3281247843809626
	.quad	0x3fe0c9b578716303              # double 0.52462266468054997
	.quad	0x3fad7d24e2236400              # double 0.057595398525968733
	.quad	0x3fe2093d8cfd5d58              # double 0.56362798249294155
	.quad	0x3fe824f8d4a82a27              # double 0.75451318296956493
	.quad	0x3fed0e16f9cd54a7              # double 0.9079699400850999
	.quad	0x3fe48e252aeda366              # double 0.6423517073099958
	.quad	0x3fba5055e4cbb6b8              # double 0.10278832279046923
	.quad	0x3fe42b1fdcfa8aa4              # double 0.63026421699426693
	.quad	0x3fc6da78bdcf35d0              # double 0.17854222553289256
	.quad	0x3fe000b6fd6bb260              # double 0.50008725639561291
	.quad	0x3fd3feceda77a142              # double 0.31242724737832728
	.quad	0x3fe46c6cb9d91e58              # double 0.63823543833218377
	.quad	0x3fe7f3a80bc9ca8b              # double 0.74849321653739886
	.quad	0x3fd881cfc4a604ee              # double 0.38292307094532319
	.quad	0x3fcfffe21dacbc50              # double 0.24999643753969503
	.quad	0x3fe4bd8cec1f7534              # double 0.64813848607778946
	.quad	0x3fcceb408c985b1c              # double 0.22592932572362023
	.quad	0x3fdc733179197ff2              # double 0.44453083826192519
	.quad	0x3fcb7061fba4b300              # double 0.21436714923165567
	.quad	0x3fdda36a189f44e2              # double 0.46309902576929407
	.quad	0x3fd727e02a3ae850              # double 0.36180881618532101
	.quad	0x3fd1449252a6534e              # double 0.26981027671108826
	.quad	0x3feaa74d19948225              # double 0.83292250629535103
	.quad	0x3fdabaa1efaa7ad0              # double 0.41764114766003235
	.quad	0x3fcbe2a2cbecc074              # double 0.21785387952104751
	.quad	0x3fec540f754fa2db              # double 0.88526127731628479
	.quad	0x3fb3d0a315da5dc8              # double 0.077402298770144928
	.quad	0x3fe607893a75f465              # double 0.68841992776982563
	.quad	0x3fb34a62edd834a0              # double 0.075353797023313351
	.quad	0x3fd8716ded003942              # double 0.38192318100563594
	.quad	0x3fd5da4c2b7df10c              # double 0.34144882437955526
	.quad	0x3fac164afbf50a80              # double 0.054857581383221721
	.quad	0x3fd64b4e28162020              # double 0.34834627070131496
	.quad	0x3fdd13f06586bff8              # double 0.45434198298153161
	.quad	0x3fd2d26c4a42eb3e              # double 0.29409320118036308
	.quad	0x3fe46047b66eb571              # double 0.63675294524516179
	.quad	0x3fe79906ef5fefd1              # double 0.73743006470567185
	.quad	0x3fcd24d9dec968cc              # double 0.2276871049714998
	.quad	0x3fc01b870798beac              # double 0.12584007140093456
	.quad	0x3fe59ff4b6c6c1f5              # double 0.67577586840167092
	.quad	0x3fe036ddbda05a5e              # double 0.5066975310936177
	.quad	0x3fc17f18ddd96b44              # double 0.13669119675145158
	.quad	0x3fe3c1870be13d71              # double 0.6173739654567908
	.quad	0x3fe4b57e05162110              # double 0.6471548175186701
	.quad	0x3fea00b20be8c84c              # double 0.81258489919697174
	.quad	0x3f5c66cfb876cc00              # double 0.0017334965249176104
	.quad	0x3fe08640c6d76076              # double 0.51638830982393702
	.quad	0x3fd362ec972cd4de              # double 0.30291285288997283
	.quad	0x3fe5d430faa62abd              # double 0.68215226130390472
	.quad	0x3feb9f0f24f90f0a              # double 0.8631664011122393
	.quad	0x3fdb1aa4fce3b3b0              # double 0.42350125023113616
	.quad	0x3fe870fe3acd389f              # double 0.76379310116478283
	.quad	0x3fe9d183f57e7484              # double 0.8068256182483684
	.quad	0x3fdaf70193ed59d6              # double 0.42132605978022519
	.quad	0x3fd059500d1bbdfa              # double 0.25545121460069675
	.quad	0x3fd649849950c890              # double 0.34823718044493379
	.quad	0x3fef1c8d307ec0bb              # double 0.97223529311852219
	.quad	0x3fd07bee72be7e76              # double 0.25756417470436277
	.quad	0x3fe93fee37fa96fc              # double 0.78905402119991618
	.quad	0x3f7bdc091b8bdd00              # double 0.0068016391530740794
	.quad	0x3fe138636a54b6a4              # double 0.53813334243541933
	.quad	0x3fec4887611b9fee              # double 0.88385361639393323
	.quad	0x3fdce34430426440              # double 0.45137123787714373
	.quad	0x3fd5eae7d9fdb140              # double 0.34246250427419866
	.quad	0x3fdf1c99e2d6c630              # double 0.48612067367784828
	.quad	0x3fc21e13c329b4c4              # double 0.14154288320006547
	.quad	0x3fded1ec17e372fe              # double 0.48156263668879251
	.quad	0x3fd393066d5fec60              # double 0.30584870034335232
	.quad	0x3fd5d3b7f5aeeaae              # double 0.34104727737909968
	.quad	0x3fe1db0be0f8c1e0              # double 0.55798906268870141
	.quad	0x3fcbe9572bdc80e8              # double 0.21805848733584487
	.quad	0x3fb564efdfe97b00              # double 0.083571426549934102
	.quad	0x3fb80aae5368c270              # double 0.09391297851903757
	.quad	0x3fcbc9e456c2163c              # double 0.21709875332105522
	.quad	0x3fcff5f0c7429444              # double 0.24969300965782015
	.quad	0x3fefad7110087762              # double 0.98992207652530007
	.quad	0x3fe5bbaadba5c15a              # double 0.6791586198797106
	.quad	0x3fd6b61039b07956              # double 0.35486226686216094
	.quad	0x3fec1f6e64969d1a              # double 0.878836819135276
	.quad	0x3fe58c93e2b0a1a4              # double 0.67341036105522223
	.quad	0x3fde103ba296d940              # double 0.46974078061920821
	.quad	0x3fc989fc3b174120              # double 0.19952347646040725
	.quad	0x3fe25c54da6ac752              # double 0.57377092990484813
	.quad	0x3fa6dace72bf3000              # double 0.044638110644513063
	.quad	0x3fd15051781b778e              # double 0.27052723626354058
	.quad	0x3fe3c039dfc9f6cb              # double 0.61721509655736762
	.quad	0x3fbb1301e972acb8              # double 0.10575878095066826
	.quad	0x3feecd055dfa83eb              # double 0.96252697329702863
	.quad	0x3fd097692ed0c614              # double 0.25924138614490855
	.quad	0x3fe89d83e0ae52d9              # double 0.76922792323110933
	.quad	0x3fe03f4df78f04b9              # double 0.50772760726262967
	.quad	0x3f8713ebb0b84580              # double 0.011268464403687117
	.quad	0x3fe6f6f35b293fe3              # double 0.71764533810528197
	.quad	0x3fe7055f595fecd2              # double 0.71940581756589439
	.quad	0x3fe59653c3ac2184              # double 0.67460048882735224
	.quad	0x3fdde3d12cd38416              # double 0.46702985169946609
	.quad	0x3fdea1921b203210              # double 0.4786114945316351
	.quad	0x3fb9f4b5fb1d4d98              # double 0.10139024143909692
	.quad	0x3fec3ccfa4399d97              # double 0.88242322993476108
	.quad	0x3fe5aa745b576775              # double 0.67705743637200888
	.quad	0x3feca7ab8fb0a782              # double 0.89546754898513847
	.quad	0x3faa93dd09b10bf0              # double 0.051909358437590813
	.quad	0x3fed91c72ea13d3f              # double 0.92404517276182918
	.quad	0x3fe3f524999b651b              # double 0.62367467881555017
	.quad	0x3fdc6d43840fe746              # double 0.44416892906848593
	.quad	0x3febaa6f05b82e03              # double 0.86455489270287023
	.quad	0x3fe1121060061403              # double 0.53345507387769009
	.quad	0x3fd78fb1c6360cd4              # double 0.3681454120307539
	.quad	0x3fd5a8831c0e1102              # double 0.33841016521206779
	.quad	0x3fef50ae74c4687e              # double 0.97859881216142219
	.quad	0x3fbac636456a2d78              # double 0.10458697504707526
	.quad	0x3fcf660e47feee08              # double 0.24530199542446973
	.quad	0x3fd86d3803325b5c              # double 0.38166618644884465
	.quad	0x3fe45ee290c8888a              # double 0.63658264425272759
	.quad	0x3fea4ac5322e077f              # double 0.82162723351233058
	.quad	0x3fd7658deaa74308              # double 0.36557338633888081
	.quad	0x3fce9c7d0938a948              # double 0.23915064764271166
	.quad	0x3fe14eed9dec0ed5              # double 0.54088478893433012
	.quad	0x3fe89fb4d691e6ad              # double 0.76949541004360855
	.quad	0x3fc2d00936361770              # double 0.14697375437770743
	.quad	0x3fe88f9804dee9b6              # double 0.76752854300803253
	.quad	0x3fe80101ee818c50              # double 0.75012299140179017
	.quad	0x3fc71848052d53b8              # double 0.18042850735460347
	.quad	0x3fb965d2b05ae790              # double 0.099209945731585813
	.quad	0x3fe6dc426c0f016c              # double 0.7143871412772973
	.quad	0x3fb5baa8527fe9a0              # double 0.084879417554395875
	.quad	0x3fd63da17e7b3fc6              # double 0.34751164771750742
	.quad	0x3fea73de93436c25              # double 0.82664421808602084
	.quad	0x3fd8777ac80d1e50              # double 0.3822924569726398
	.quad	0x3fc0959a7e371278              # double 0.12956553614471367
	.quad	0x3fb0afff548da1f8              # double 0.065185506956943473
	.quad	0x3fd1133384afb48a              # double 0.26679695089007593
	.quad	0x3fe8f7d908c52f21              # double 0.78025485718669441
	.quad	0x3fde22463a1f399c              # double 0.47084193874334246
	.quad	0x3fee6eeadd4a87ee              # double 0.95103972645688173
	.quad	0x3fe4acddec7b88b1              # double 0.6461019152450459
	.quad	0x3fd7c96df13559a6              # double 0.37166927867419941
	.quad	0x3fe0a5228488ee69              # double 0.52015806089134486
	.quad	0x3fb8178f50cbea58              # double 0.094109494424551854
	.quad	0x3fe433d4a0c46b7f              # double 0.63132697486740585
	.quad	0x3fe39c7374cd6065              # double 0.61284802258434168
	.quad	0x3fe4bf9b7ce4bff6              # double 0.64838957207939418
	.quad	0x3fe2b7be54925e46              # double 0.58492962377472035
	.quad	0x3fdb1982fb9b348e              # double 0.42343210764813299
	.quad	0x3fe38970d4ad6da2              # double 0.61052743471684701
	.quad	0x3fe1fc4ecaf91008              # double 0.56204929011482907
	.quad	0x3fe96904db713c48              # double 0.794069698904317
	.quad	0x3fdb7e850fb4117a              # double 0.42959715398344367
	.quad	0x3fe5fadd3bb94a82              # double 0.68687307038119649
	.quad	0x3fd6972df2cfd5a6              # double 0.35297726356597037
	.quad	0x3fd686b1b03d3748              # double 0.35197107516147641
	.quad	0x3feb215057c18f31              # double 0.8478166307436138
	.quad	0x3fd71ec26087631e              # double 0.36125239779134855
	.quad	0x3fee71fc4600e416              # double 0.95141423866801023
	.quad	0x3fe4b528a08c052d              # double 0.64711409909083317
	.quad	0x3fed3a0c722f7db4              # double 0.91333601285798815
	.quad	0x3fd7c1e5c21d6d64              # double 0.37120956379449965
	.quad	0x3fe1195f3cf85477              # double 0.53434717090807637
	.quad	0x3fe18ddc28b96b47              # double 0.54856689409221182
	.quad	0x3fe6dc0b676d13aa              # double 0.71436090660482887
	.quad	0x3fd659cec1d2bdc8              # double 0.34923142364547433
	.quad	0x3fc7953a4528f568              # double 0.18424156548455106
	.quad	0x3fec49b2c081d122              # double 0.88399636839907125
	.quad	0x3feb2d7cbf475287              # double 0.84930264815427925
	.quad	0x3fe911d41d0fcf48              # double 0.78342633892177904
	.quad	0x3fee4af3159f7059              # double 0.94664911483006187
	.quad	0x3fdb4de05b33416c              # double 0.42662819772978966
	.quad	0x3fcb35537e9102c8              # double 0.21256488494875314
	.quad	0x3fed03b311673be9              # double 0.90670159720491228
	.quad	0x3fdadfaeeec9c9fa              # double 0.41990254706539043
	.quad	0x3fe73c5696288a2c              # double 0.72611550643734324
	.quad	0x3fe74144fe4c3da9              # double 0.72671746890585098
	.quad	0x3fdcfeca39415924              # double 0.45305114356360066
	.quad	0x3fe83cf946cbde64              # double 0.75744308307089314
	.quad	0x3fe373be366e6ce5              # double 0.60787878638384696
	.quad	0x3feb07d479ed9f7b              # double 0.84470580877403678
	.quad	0x3fecb6691ea742d1              # double 0.89726692187294976
	.quad	0x3f71ca92d478d280              # double 0.004343579821171617
	.quad	0x3fe98676121bafc2              # double 0.79766372238872685
	.quad	0x3fe497694e8942fe              # double 0.64348283137414319
	.quad	0x3fdbe7d251544f84              # double 0.43602426473921008
	.quad	0x3fdbd3356238b3ac              # double 0.4347661456293348
	.quad	0x3fe742504e7a9ac9              # double 0.72684493377604398
	.quad	0x3fed9abecfc292f3              # double 0.92513981416831681
	.quad	0x3feb5a815cb82cb3              # double 0.85479801282180856
	.quad	0x3fec774f32571e21              # double 0.88956413108912014
	.quad	0x3feb368d6b0b2f94              # double 0.85040923029872539
	.quad	0x3fc98598406586b8              # double 0.19938948768963427
	.quad	0x3fe75974e54ce4e6              # double 0.7296699980280692
	.quad	0x3fe1c7d4ef3e7c90              # double 0.55564352729187938
	.quad	0x3fc64cce9fe6d044              # double 0.17421896751113952
	.quad	0x3fea766af2a79d4d              # double 0.82695529359345132
	.quad	0x3fde29a558aa2004              # double 0.47129186304709969
	.quad	0x3fa8542ccefd2f20              # double 0.047517204539501146
	.quad	0x3fe1e7bdcd20fda1              # double 0.55953874649269519
	.quad	0x3fe08bc348051e7c              # double 0.51706089083104656
	.quad	0x3fea0507f1a58c53              # double 0.81311413952460965
	.quad	0x3fed94673a7bdd61              # double 0.92436562941194833
	.quad	0x3feca88f62c4d0c5              # double 0.89557618418486895
	.quad	0x3fe8468eb4408990              # double 0.75861296849716275
	.quad	0x3fdfeb730c9f388a              # double 0.49874569161045967
	.quad	0x3f886f0670f4c080              # double 0.011930513689179856
	.quad	0x3fe8dcc5d47ac2d9              # double 0.77694980144414238
	.quad	0x3fea4192ebcabbfd              # double 0.82050462773429411
	.quad	0x3fe063e395a6fb83              # double 0.5121934817214967
	.quad	0x3fd6a7775dae26ec              # double 0.35397133015122395
	.quad	0x3fde771a547a691c              # double 0.47601946115323002
	.quad	0x3fb515e377946a38              # double 0.082365242666505689
	.quad	0x3feadfd5a142377f              # double 0.83982354636985679
	.quad	0x3feae349811e19e5              # double 0.84024501055028777
	.quad	0x3fb903a8cec890b8              # double 0.097712088093035443
	.quad	0x3fe8d515627fd377              # double 0.7760111736121037
	.quad	0x3feda887b52782df              # double 0.92682252294261136
	.quad	0x3fc462a1cc03fd30              # double 0.15926001035402626
	.quad	0x3fbe1ac85d8fbf88              # double 0.11759617122856814
	.quad	0x3fd4d1cf823a290c              # double 0.32530582158564481
	.quad	0x3fb737b4cb898a60              # double 0.090693759624210113
	.quad	0x3fe3adc9a085692b              # double 0.61496430732521412
	.quad	0x3fd692812345d4fa              # double 0.35269192165954133
	.quad	0x3fef31b8a0ebf717              # double 0.974819483089706
	.quad	0x3fe2bea288c53e5c              # double 0.58577086174950521
	.quad	0x3fcb5f8d936aa7c8              # double 0.21385354707791593
	.quad	0x3fe90a55b3457b55              # double 0.78251156820247536
	.quad	0x3fc70385620747e4              # double 0.17979495321793515
	.quad	0x3fcdb488ec444924              # double 0.23207198654615369
	.quad	0x3fddd45d6cd33e6c              # double 0.4660867274041951
	.quad	0x3fe37a5ba545395e              # double 0.60868627814651766
	.quad	0x3fe6d43f61356fd8              # double 0.71340912805635082
	.quad	0x3fd8880e517c906a              # double 0.38330419500039759
	.quad	0x3fd080fce8d3bc5a              # double 0.25787279831906107
	.quad	0x3fed5f85d4a7d8ca              # double 0.91791049513155909
	.quad	0x3fe67dc7a311fac0              # double 0.70285398339895977
	.quad	0x3fdc5895940ccb8a              # double 0.44290675600057539
	.quad	0x3feccd61aae5d584              # double 0.90007098558878384
	.quad	0x3fe8315a340543c2              # double 0.75602445755259162
	.quad	0x3fbd88824f2fd9f0              # double 0.11536421235346217
	.quad	0x3fe34f5a89491b62              # double 0.6034367257460469
	.quad	0x3fe7b01096118a6c              # double 0.7402422839189291
	.quad	0x3f7c94b1985a4700              # double 0.0069777428922337403
	.quad	0x3fc116e8b02cf2f8              # double 0.13351162531207428
	.quad	0x3fef97797fa669bd              # double 0.98724055225039075
	.quad	0x3fc4b6d45268e540              # double 0.16182950996316414
	.quad	0x3feebd3a76b4180e              # double 0.96059916672015944
	.quad	0x3fdc4474e6a2c77e              # double 0.44167826197655546
	.quad	0x3fefaa398b580112              # double 0.98952939239100801
	.quad	0x3fdf63d23325848a              # double 0.49046759600430134
	.quad	0x3fe2536a855b7248              # double 0.57268262907343459
	.quad	0x3fc63378a1b388fc              # double 0.17344577689716079
	.quad	0x3fe39449b77864d7              # double 0.61185155710259209
	.quad	0x3fe7f5702376ef17              # double 0.74871069838215731
	.quad	0x3f926a39e778c7a0              # double 0.017983345749776114
	.quad	0x3fe050f60db22257              # double 0.50988295245140136
	.quad	0x3fe5d4647710d601              # double 0.68217681174309075
	.quad	0x3fea4e80caba91ef              # double 0.82208289714304594
	.quad	0x3fc5cef4d0c7ce3c              # double 0.17037830538139243
	.quad	0x3fe2c68109d24213              # double 0.58673145216204359
	.quad	0x3fe6f1873a7e9acf              # double 0.71698342728344666
	.quad	0x3fe05041e318b697              # double 0.50979704241554458
	.quad	0x3fe5e6843455b7d4              # double 0.68438921186111168
	.quad	0x3fafe2693b4c5fe0              # double 0.062274254311148303
	.quad	0x3febafa87a82d24d              # double 0.86519264152463793
	.quad	0x3fc8af03a1f34918              # double 0.1928410092137447
	.quad	0x3fec919359e11b55              # double 0.89277045778804143
	.quad	0x3fec2f2071d241d3              # double 0.8807527754852863
	.quad	0x3fcde4b38d36c62c              # double 0.23354191203320462
	.quad	0x3feed20073074ebe              # double 0.96313497988236185
	.quad	0x3fe37ccf70cb46bb              # double 0.60898563413703444
	.quad	0x3fe3e5e7b5bd271d              # double 0.62181458946108459
	.quad	0x3fedae608e619aa9              # double 0.92753627594796229
	.quad	0x3fe4c968bf61b221              # double 0.64958608035300724
	.quad	0x3feed981b290659c              # double 0.96405110240737057
	.quad	0x3fe8472fd029abfe              # double 0.75868979126732916
	.quad	0x3fd3d56100e5bb60              # double 0.30989861571918276
	.quad	0x3fe42bda908918ac              # double 0.63035324315639718
	.quad	0x3fe2d62d38b818d7              # double 0.58864461019472969
	.quad	0x3fe1bd28adf70c69              # double 0.55434068658395319
	.quad	0x3fe53bc415a32744              # double 0.66354564882315303
	.quad	0x3fd6a3ba7eb6c13c              # double 0.35374319433596546
	.quad	0x3fe3bd7f2cd26c0f              # double 0.61688193086900067
	.quad	0x3fec88ad14d980b3              # double 0.89168409416381278
	.quad	0x3fd05dc0f38fbb10              # double 0.25572227273271242
	.quad	0x3fd4eebb0deaae5a              # double 0.32707096442275019
	.quad	0x3fde6b6787f46918              # double 0.47530544545010533
	.quad	0x3fdc1169b6b87e4e              # double 0.43856280177894724
	.quad	0x3fe1bce034bc68e6              # double 0.55430612850184668
	.quad	0x3fde4fdacfe9cc88              # double 0.47362394622832271
	.quad	0x3fe04386d0926045              # double 0.50824299561191622
	.quad	0x3fc8439cfc565c98              # double 0.18956339188728033
	.quad	0x3fcf1c3fccaac304              # double 0.24304959767825818
	.quad	0x3fef537f80b4b25c              # double 0.97894263398991254
	.quad	0x3fe2404c5ef6818d              # double 0.57034891650623509
	.quad	0x3fe0b274450a6a07              # double 0.52178395733363991
	.quad	0x3fed3fb19b8412b2              # double 0.91402511953545784
	.quad	0x3fe51449fda6a01c              # double 0.65872668782413113
	.quad	0x3feb77c9fd5cde40              # double 0.85837268338122641
	.quad	0x3fd44ea3baa2ab4c              # double 0.31729977823367927
	.quad	0x3fd9f0cff440c594              # double 0.40532301762422063
	.quad	0x3fe50f45bd16f1ab              # double 0.6581143086582889
	.quad	0x3fc3e478f5265a34              # double 0.15540992708402401
	.quad	0x3fddc9fa0b5d04e6              # double 0.46545268163397535
	.quad	0x3fd193836146e998              # double 0.27462849139888013
	.quad	0x3fe4481ec8129d4e              # double 0.63380374027921405
	.quad	0x3fc7c41efbf787d0              # double 0.18567263892242503
	.quad	0x3fe435f89651dfb5              # double 0.63158826217021746
	.quad	0x3fd28a2093be42de              # double 0.28968061855361593
	.quad	0x3fe6648ce00bd683              # double 0.69977420577079419
	.quad	0x3fe77ccb278c223d              # double 0.73398359035588323
	.quad	0x3fd987186cbb7800              # double 0.39887056940449384
	.quad	0x3fd56ee3e13d41a8              # double 0.33489319797538508
	.quad	0x3fd5c230aeaed83e              # double 0.33997742709050616
	.quad	0x3fe18fdf2b770b16              # double 0.54881247033367475
	.quad	0x3fc4b2ea7bf45bd8              # double 0.16171008160082923
	.quad	0x3fef727923189662              # double 0.98272377829261992
	.quad	0x3feba1b1fefec804              # double 0.86348819545514787
	.quad	0x3fd20e4ba93a3052              # double 0.28212253118613717
	.quad	0x3faab38cf6764eb0              # double 0.052151112638197161
	.quad	0x3fe41032466980c6              # double 0.62697709801070611
	.quad	0x3fe656029176c63b              # double 0.69799927149706009
	.quad	0x3fe5d7e24283cd40              # double 0.68260300627881776
	.quad	0x3fca0ed36f165178              # double 0.20357745098284474
	.quad	0x3fe555735cb579fd              # double 0.66668098551946253
	.quad	0x3fb79231a71d80e0              # double 0.092074492740269687
	.quad	0x3fd43627dd0ba594              # double 0.31580540262674472
	.quad	0x3fe49c0735589651              # double 0.64404640597485685
	.quad	0x3fed8aa188243d3d              # double 0.92317272749088597
	.quad	0x3fc72ca014b2ca48              # double 0.18104935656227128
	.quad	0x3fe4f85c00e48187              # double 0.65531730818115441
	.quad	0x3fd8592c11c0def6              # double 0.38044263585787463
	.quad	0x3fef366e909cc7fe              # double 0.97539451832403734
	.quad	0x3fe3215cb401f718              # double 0.59782252462148033
	.quad	0x3fcf001e9a9a63e8              # double 0.24219114827135901
	.quad	0x3fc554808fd4e574              # double 0.1666413023283827
	.quad	0x3fecee4db0373bd3              # double 0.90408977906360588
	.quad	0x3f91ab9353805340              # double 0.017256071063530998
	.quad	0x3fde1e4c566f76fa              # double 0.47059925499875954
	.quad	0x3fed38902663ac10              # double 0.91315467355650703
	.quad	0x3fdd3602228c0408              # double 0.45642140744900006
	.quad	0x3fb1f10af5eadd50              # double 0.070084271467625969
	.quad	0x3fdb7b689585aeb2              # double 0.42940725900437393
	.quad	0x3fe97bc87e81e0f6              # double 0.79636025150742173
	.quad	0x3fdb1a22dcec341e              # double 0.4234702260444595
	.quad	0x3fe522d473082c3a              # double 0.66050169436619588
	.quad	0x3fe31ac19bb8a29e              # double 0.59701614774992939
	.quad	0x3fe01dbbb3aa6dc1              # double 0.50362954226459788
	.quad	0x3fed9c25858a504b              # double 0.92531086046302258
	.quad	0x3fced881ccc5c20c              # double 0.24098227022797436
	.quad	0x3fc70eb42da6b51c              # double 0.18013622502386617
	.quad	0x3fe021406ee1a89f              # double 0.50405904442347438
	.quad	0x3fc073c45c041d60              # double 0.12853292935345006
	.quad	0x3fcfdce8c0cac774              # double 0.248929113518496
	.quad	0x3fc2099b9d6fbad4              # double 0.1409182089550628
	.quad	0x3fe2ed81798a5144              # double 0.59149240244236312
	.quad	0x3fdd0df69dbadacc              # double 0.45397725489912655
	.quad	0x3fe6a45ff9c91198              # double 0.70756529604163898
	.quad	0x3fb735d188a2e548              # double 0.090664955004190806
	.quad	0x3f7d9d65bb043400              # double 0.0072301839684429936
	.quad	0x3fda2a5207cc4428              # double 0.40883303414836059
	.quad	0x3fdfcbebec962440              # double 0.49682138542317844
	.quad	0x3fe17b0ff530b4a6              # double 0.54627225769731491
	.quad	0x3feeeee39617f6ee              # double 0.96666125598104968
	.quad	0x3fd9bd6606302746              # double 0.4021849689894349
	.quad	0x3fd8e98c9f0ac05a              # double 0.38925471812672685
	.quad	0x3fe124323e454b48              # double 0.53566848909609011
	.quad	0x3fe9030e265905a6              # double 0.78162295808595128
	.quad	0x3fe1b33d14c42a6c              # double 0.55312971168434677
	.quad	0x3fc45cad60350990              # double 0.15907828519455025
	.quad	0x3fafa9d39f5b89a0              # double 0.061842549517467704
	.quad	0x3fc44f7909e0d778              # double 0.15867531759584685
	.quad	0x3fe22e089e8719b0              # double 0.56811934435318356
	.quad	0x3fdf7348c36edef4              # double 0.49141139111769339
	.quad	0x3fcbdc2ebce4ce40              # double 0.21765693877533643
	.quad	0x3fd006f3954ec00c              # double 0.25042428570577679
	.quad	0x3fe5c97ab67a8dc6              # double 0.68084464683891421
	.quad	0x3fef874ec89b935b              # double 0.98526705914683121
	.quad	0x3fa6e61a7c6488c0              # double 0.044724300083787139
	.quad	0x3fe6a9ff10043e7e              # double 0.70825150612104415
	.quad	0x3fde69581f5ac19a              # double 0.47517970144238009
	.quad	0x3fe48c9f3e27b262              # double 0.64216577663098584
	.quad	0x3fefd7cc8a0be458              # double 0.99509264909932948
	.quad	0x3fb63874018699d8              # double 0.086798906681543442
	.quad	0x3fe6a98653efef8a              # double 0.70819393533700858
	.quad	0x3fe4544fc3872338              # double 0.6352919405845574
	.quad	0x3feba6057831a3ad              # double 0.86401627993938279
	.quad	0x3fed515fd50ef6c0              # double 0.91618339169482254
	.quad	0x3fbf2a232c609c18              # double 0.12173671563560651
	.quad	0x3fe8ba7722a2628b              # double 0.77276188625826714
	.quad	0x3fd81ad5d82de51e              # double 0.37663789855248975
	.quad	0x3fe605d8eaedb254              # double 0.68821378597710714
	.quad	0x3fa31a263a7151e0              # double 0.037308878549683788
	.quad	0x3fd1d17797fbc688              # double 0.27840986101282583
	.quad	0x3fe52ef862a8197e              # double 0.66198367375254441
	.quad	0x3fe562dd29e71a74              # double 0.66831834968691206
	.quad	0x3fe2c297b93a4912              # double 0.5862539880493236
	.quad	0x3fd007f0f369c42c              # double 0.25048469324889555
	.quad	0x3feb8aa91d6bbb50              # double 0.86067634340529686
	.quad	0x3fe7558cde38b486              # double 0.72919314768445598
	.quad	0x3feafa46203888c0              # double 0.84305101674205929
	.quad	0x3fddc68ff4c349d2              # double 0.46524428274747465
	.quad	0x3fdcf037421cef12              # double 0.45216161209440131
	.quad	0x3fd2279adc146186              # double 0.28366729252004352
	.quad	0x3fe27528702ac8a7              # double 0.57680150897637794
	.quad	0x3fe176b48effe375              # double 0.54574039392092166
	.quad	0x3fce1ad38709a408              # double 0.23519367307315542
	.quad	0x3fbe16c3bb7ec2c0              # double 0.11753485991972479
	.quad	0x3fdb2f96c0a2ffee              # double 0.42477959453753911
	.quad	0x3fd7feda94a00428              # double 0.37493004335562086
	.quad	0x3fe00da295589174              # double 0.50166443986067444
	.quad	0x3fe9057780a80530              # double 0.78191733482541359
	.quad	0x3fd4bff745a4ec5e              # double 0.32421666909403324
	.quad	0x3fd70469ee01bd8e              # double 0.35964439623691014
	.quad	0x3fee249b546c6614              # double 0.94196859826041867
	.quad	0x3febf4a9bf4b0308              # double 0.87361609804074281
	.quad	0x3f90fcde9d295620              # double 0.016589620916724113
	.quad	0x3fdae4adc23a576a              # double 0.42020744292800905
	.quad	0x3fe1cbfaaad15f2f              # double 0.55614980090010657
	.quad	0x3fd7f66eb51ecbf6              # double 0.374416043162625
	.quad	0x3fdba44a1d1c81fc              # double 0.43190243571191878
	.quad	0x3fa99ae778836d50              # double 0.050009950123888758
	.quad	0x3fe4a47cc96f98c2              # double 0.64507903426126512
	.quad	0x3fe4e73d02bd3481              # double 0.65322733435608893
	.quad	0x3fe66696d6b95651              # double 0.70002309740329782
	.quad	0x3feec1e98d68b2a2              # double 0.96117093676510401
	.quad	0x3fd9f1c2103daa36              # double 0.40538074098609245
	.quad	0x3feee2ba3a45112b              # double 0.96517669087237345
	.quad	0x3fc0973531e5bba8              # double 0.12961449562450622
	.quad	0x3fed39f2c899dad1              # double 0.91332377605325565
	.quad	0x3fd0903496df2bfa              # double 0.25880160077639369
	.quad	0x3fe35062f08a507e              # double 0.6035628030827096
	.quad	0x3feab4917c13d5f8              # double 0.83454202875026251
	.quad	0x3fc124a4765a30c0              # double 0.13393073824807367
	.quad	0x3fdbebc309cfed74              # double 0.436264762480014
	.quad	0x3fe36f4a2e9f8400              # double 0.60733517747951282
	.quad	0x3fb07dadb939a158              # double 0.064417703362442125
	.quad	0x3fde65e8846525dc              # double 0.47496998719415529
	.quad	0x3fdf4faf35fd51ce              # double 0.48923855087676038
	.quad	0x3fe5e0341dd701a2              # double 0.68361860111331318
	.quad	0x3fe4a5a6e60e1c3a              # double 0.6452211850418117
	.quad	0x3fea3c74025cf769              # double 0.81987953626206178
	.quad	0x3fc84408465e0de4              # double 0.18957618175419022
	.quad	0x3fda5266ac4e14b6              # double 0.41127936197910786
	.quad	0x3fbed4487589c608              # double 0.12042668218216346
	.quad	0x3fddb9479c2a5f5a              # double 0.46443357706583799
	.quad	0x3fee4eed24834043              # double 0.94713456279169639
	.quad	0x3fed9e2f58266f42              # double 0.92555968491385721
	.quad	0x3fa058437cc2d430              # double 0.031923397998447789
	.quad	0x3fdbd825ed4cc99c              # double 0.43506763624022837
	.quad	0x3fd7ac1cf77df306              # double 0.3698799530900917
	.quad	0x3fdcc60be0d657c6              # double 0.44958779293790163
	.quad	0x3fef44862f295539              # double 0.97711476527425766
	.quad	0x3fea2f5868afb97a              # double 0.81827946135108154
	.quad	0x3fe68d4e86492f85              # double 0.70474935748778533
	.quad	0x3fe5b10741ac49e7              # double 0.67785990549810726
	.quad	0x3fe69ce824e28f5d              # double 0.70665366367436955
	.quad	0x3fe3aed34cd1a74d              # double 0.61509099010184232
	.quad	0x3feb824e4ab1499c              # double 0.85965647304901748
	.quad	0x3fa024657e0baa60              # double 0.031527682911321575
	.quad	0x3fcca00f58e3f6dc              # double 0.22363464203220118
	.quad	0x3fd9943f18d281f6              # double 0.39967324661304759
	.quad	0x3fe1dd84d3db0d8f              # double 0.55829087617932938
	.quad	0x3fb276f7cf234608              # double 0.072127807684658873
	.quad	0x3fe4e4d7f4706003              # double 0.65293500654206615
	.quad	0x3fecd89611506bb4              # double 0.90143874532383572
	.quad	0x3fdf64d10c27ade6              # double 0.49052835642825554
	.quad	0x3fe1de6c60dd3931              # double 0.55840128821163237
	.quad	0x3fda6b7052fd18b4              # double 0.41280754188882018
	.quad	0x3fece54b5dde8155              # double 0.90299003919430254
	.quad	0x3fe7ac89f7e3c260              # double 0.73981188217119253
	.quad	0x3fddf5995903b066              # double 0.46811517422498239
	.quad	0x3fec775c821390e8              # double 0.88957047849228577
	.quad	0x3fddc0946539d174              # double 0.46487913022362837
	.quad	0x3fc30b677bf7685c              # double 0.14878552964256897
	.quad	0x3fe19241a3b8ad43              # double 0.54910356499514312
	.quad	0x3fd1555a6cb12a74              # double 0.27083454718073274
	.quad	0x3fe0bd1c439c5a6b              # double 0.52308476643777391
	.quad	0x3fdf244ccdecdc20              # double 0.48659057721983068
	.quad	0x3fc755092b4e7c68              # double 0.18228258719043144
	.quad	0x3feda5e209492575              # double 0.92649938405626975
	.quad	0x3fe09925c5f6d0d7              # double 0.51869476952426907
	.quad	0x3fec5c2d041c9972              # double 0.88625193408078773
	.quad	0x3fc5dcc0de093028              # double 0.17079935876461261
	.quad	0x3fd60dd776aad0a0              # double 0.34459482754324178
	.quad	0x3fea91703f1c0835              # double 0.83025371862482322
	.quad	0x3feba8297aca7666              # double 0.86427759153930306
	.quad	0x3fd70c680762992e              # double 0.36013222428518332
	.quad	0x3f8f3329599dd080              # double 0.015234301612260248
	.quad	0x3fd82d5f450bdcca              # double 0.37776929610067767
	.quad	0x3fc2ce5c0536ab28              # double 0.14692259077613667
	.quad	0x3fe48799f0405fd9              # double 0.64155289577592634
	.quad	0x3fe66a2fb04efbe1              # double 0.70046219287166533
	.quad	0x3fdae8856f4b860a              # double 0.42044196957257951
	.quad	0x3fab111e51384830              # double 0.052864978231938031
	.quad	0x3fc4fec92354e028              # double 0.1640254423634826
	.quad	0x3fe60a064ca6a023              # double 0.68872370692134088
	.quad	0x3fe895255e154297              # double 0.76820629478068525
	.quad	0x3fe96c3eb10cf011              # double 0.7944634874361346
	.quad	0x3fe03350c76b6b50              # double 0.50626410435811842
	.quad	0x3f9cbb4e11c75ae0              # double 0.028058261714103305
	.quad	0x3fe677a266e8c2f0              # double 0.70210380649049675
	.quad	0x3fae450157730c50              # double 0.059120218205429453
	.quad	0x3fd82ba9750a58b0              # double 0.37766491346099951
	.quad	0x3fee3e3034afc6ec              # double 0.94509134569508779
	.quad	0x3fb9c196a40cc4e8              # double 0.10061017518161786
	.quad	0x3fc948de3a4c7fe8              # double 0.19753625723478696
	.quad	0x3fe7fb5886ea6fdc              # double 0.74943186140762518
	.quad	0x3fd2250576141d0c              # double 0.28350960284338167
	.quad	0x3fe6e1197e212b10              # double 0.71497797617607439
	.quad	0x3fe7e9fea139e5f1              # double 0.74731379975781753
	.quad	0x3fe5365a44e7d385              # double 0.66288484056586638
	.quad	0x3fd45dea7f56b0d6              # double 0.31823217807210591
	.quad	0x3fe125e6ca4fdb15              # double 0.5358766509442342
	.quad	0x3fd2db6e8ccedcfa              # double 0.29464305640017552
	.quad	0x3fd3390cdf32122a              # double 0.30035707279629043
	.quad	0x3fe3a29bf14c8672              # double 0.61359974983879639
	.quad	0x3fe20df56a017437              # double 0.56420393661722457
	.quad	0x3fe9cd1c0eadd161              # double 0.80628779284465335
	.quad	0x3fc71d66c06e3fe4              # double 0.18058475872066915
	.quad	0x3fe629bbb28b5235              # double 0.69259438392561512
	.quad	0x3fe2a2093a135b1b              # double 0.58227979033367505
	.quad	0x3fadc89c5ca09ae0              # double 0.058171163851786778
	.quad	0x3fdc8d319154ebf8              # double 0.44611777489234283
	.quad	0x3fd5da3025fc70e8              # double 0.34144214353160729
	.quad	0x3fefd5f3181380ef              # double 0.99486689283733464
	.quad	0x3fb199f2bd427d78              # double 0.0687553131160622
	.quad	0x3fd07ffb2c65fffc              # double 0.25781134925637139
	.quad	0x3fedeeeedee2f6e0              # double 0.9354166367772585
	.quad	0x3fd24ad67507804e              # double 0.28581773213045814
	.quad	0x3fe391ddd1ec4718              # double 0.61155596733644568
	.quad	0x3fdc2c505a875c7a              # double 0.44020470467280115
	.quad	0x3fd64f7f91619bb4              # double 0.34860219190016584
	.quad	0x3fd644af69455724              # double 0.34794221191747199
	.quad	0x3fdf5805e5cd3170              # double 0.4897474998622533
	.quad	0x3fed90dfd8a43b00              # double 0.92393486321256546
	.quad	0x3fe0acadd740163d              # double 0.52107898751336956
	.quad	0x3fcb81c3f7196888              # double 0.21489762845414284
	.quad	0x3fc42d52930475cc              # double 0.15763313463769035
	.quad	0x3fc948a66b5f6064              # double 0.19752960436631206
	.quad	0x3fe5a49790238d1a              # double 0.67634180214045903
	.quad	0x3fe180e116924a4c              # double 0.54698233040319044
	.quad	0x3fe18a187a340661              # double 0.54810737483803618
	.quad	0x3fd89fcae7e7f24a              # double 0.38475296637605949
	.quad	0x3fd9d0a9f1ef8bb2              # double 0.40336083056007077
	.quad	0x3f99b206e5822940              # double 0.025093181379397977
	.quad	0x3fdb99e64f6c2fd6              # double 0.43126828914750825
	.quad	0x3fd228f6ad527746              # double 0.28375021863927363
	.quad	0x3fe9ec0e4644f020              # double 0.81006540035696517
	.quad	0x3fed98438e59a2b0              # double 0.92483690073739488
	.quad	0x3fe365aad050fad9              # double 0.6061605518987917
	.quad	0x3fdc545b2d3e3634              # double 0.44264869135153906
	.quad	0x3fdbff65d3ca820c              # double 0.4374632423660223
	.quad	0x3fd4b732506e970c              # double 0.32368142943083522
	.quad	0x3fddbe2c9f5df1de              # double 0.464732318527039
	.quad	0x3fed9a2243393310              # double 0.92506516580178477
	.quad	0x3fb97b57488cb110              # double 0.099538283550547612
	.quad	0x3fe744dab9c8ced5              # double 0.72715507780091093
	.quad	0x3fe2169c527a950c              # double 0.56526008710048492
	.quad	0x3fe6ceb3569adf95              # double 0.71273199954065325
	.quad	0x3fd390e2bbbe1dd0              # double 0.30571811994783804
	.quad	0x3feeb6124e3242e4              # double 0.95972552559586832
	.quad	0x3fdf5d166411198a              # double 0.49005660793445627
	.quad	0x3fcf5ee15594a664              # double 0.24508301428550106
	.quad	0x3fa5fd8820274320              # double 0.04294991867539566
	.quad	0x3fdeb3841ab69164              # double 0.47970678909975661
	.quad	0x3fda98a9765dc8ee              # double 0.41556774672711938
	.quad	0x3fe837036a87b746              # double 0.75671549612682365
	.quad	0x3fb43841c8584500              # double 0.078983413135819802
	.quad	0x3fe3f2d00d557771              # double 0.62339022259014432
	.quad	0x3fed7a954b9d5b88              # double 0.92121376770488528
	.quad	0x3fdd4ffcfdd0d4ea              # double 0.45800709521002025
	.quad	0x3fd85847bfad6bb4              # double 0.38038819998262885
	.quad	0x3fc74bdd9dd0aea4              # double 0.18200273710077852
	.quad	0x3fe78d6b3347e4cf              # double 0.73601303115642647
	.quad	0x3fd97e6487d3fd26              # double 0.39833939804516871
	.quad	0x3fe8546960e97af5              # double 0.76030415466433843
	.quad	0x3fef95a8e3948298              # double 0.98701900910608042
	.quad	0x3fab80613c479f10              # double 0.05371383534276053
	.quad	0x3fe94631faaa2da7              # double 0.78981875379524957
	.quad	0x3fb1806370a474d0              # double 0.068365302086436985
	.quad	0x3fcdb2ec2744f418              # double 0.23202278058479986
	.quad	0x3fea5f7a957780d2              # double 0.82415513222442827
	.quad	0x3fc4c8287b6579ac              # double 0.16235834145750283
	.quad	0x3fe58dbae29187fe              # double 0.67355102779060849
	.quad	0x3fd65bd4203e276a              # double 0.34935477398595671
	.quad	0x3fef4daaf911736a              # double 0.97823094030500823
	.quad	0x3fe9ff8177a2a50e              # double 0.81243966451907723
	.quad	0x3fd36bdb26751bbc              # double 0.30345801120386873
	.quad	0x3fdb5ffd1caa3612              # double 0.42773368644051957
	.quad	0x3fe70e73fed25e30              # double 0.72051429529068933
	.quad	0x3fd5bb2b552680a0              # double 0.33954890552014128
	.quad	0x3fe2a8fa723e1715              # double 0.5831272345828632
	.quad	0x3fc80e9d61feb32c              # double 0.18794600758465074
	.quad	0x3fe5ae2408023b29              # double 0.67750741543008985
	.quad	0x3fed83d12f8bbe13              # double 0.92234095846464681
	.quad	0x3fd17047c23d36b2              # double 0.27247804611838966
	.quad	0x3fe68a980eb322e7              # double 0.70441820975346736
	.quad	0x3f9a85ce95d53900              # double 0.025901058096956753
	.quad	0x3fe17c87378a0451              # double 0.54645119521604546
	.quad	0x3fd9356a276dccde              # double 0.3938851723716662
	.quad	0x3fe58f45f40ba1b9              # double 0.6737394110214644
	.quad	0x3fd1a1f9ec78bc6e              # double 0.2755112466138091
	.quad	0x3fdb952ce8c0bbd2              # double 0.4309799454667288
	.quad	0x3fdad46a00ff206a              # double 0.41921472642252999
	.quad	0x3fcb3a3e09a07b94              # double 0.21271491499007011
	.quad	0x3feb04998e120efd              # double 0.8443115019622095
	.quad	0x3fd7868049a95bbe              # double 0.3675842971182951
	.quad	0x3fd53b22f4d8ceca              # double 0.33173440848188973
	.quad	0x3fda3159a9300270              # double 0.40926209947796277
	.quad	0x3f98f1b25fd7a820              # double 0.024359500026470582
	.quad	0x3fdc5209bf32ca20              # double 0.44250720664709497
	.quad	0x3fb4345d80fa0538              # double 0.078924030292928715
	.quad	0x3fda69550333fa16              # double 0.41267895996853221
	.quad	0x3fe5f4a686afeec8              # double 0.68611456209279087
	.quad	0x3fe1f81e491131b7              # double 0.56153787871294625
	.quad	0x3fdd7b3adab0f13a              # double 0.46064635616837146
	.quad	0x3fe4b437e3b1e665              # double 0.64699930640854275
	.quad	0x3fe50cb053cc5e6d              # double 0.65779892317637023
	.quad	0x3fbd242589b81fc0              # double 0.11383280384336469
	.quad	0x3fe45ca11b2d8e37              # double 0.63630729015534981
	.quad	0x3fed1380cd8a1954              # double 0.90863075394080761
	.quad	0x3fdce21ad50c1978              # double 0.45130034261128271
	.quad	0x3fecc9070e280430              # double 0.89953949704079683
	.quad	0x3feeaa10281334ed              # double 0.95825965716508465
	.quad	0x3fd7f9130509e0e2              # double 0.37457728855180339
	.quad	0x3fd4eedc7a7e1f22              # double 0.3270789333550842
	.quad	0x3fed757bf255c0aa              # double 0.92059132891701734
	.quad	0x3fb5ff0cb8966290              # double 0.085922999444287606
	.quad	0x3fd469ecf2ffc54e              # double 0.31896518450146949
	.quad	0x3fe3d726e721b30a              # double 0.62001366751573639
	.quad	0x3fb4515662c2e5c0              # double 0.07936611090817447
	.quad	0x3fe26286a50ecc4c              # double 0.57452709424831871
	.quad	0x3fd96bef97133648              # double 0.39721288445875702
	.quad	0x3f93d7a1fe027b20              # double 0.019377261284371561
	.quad	0x3fd7c1cf03169b6c              # double 0.37120414067833596
	.quad	0x3fb72b9cb7af3f70              # double 0.090509219021667197
	.quad	0x3fe09483b209af97              # double 0.51812920353903535
	.quad	0x3feb3e95245891ec              # double 0.85138947581122925
	.quad	0x3fda4d5164b779e0              # double 0.41096911273589676
	.quad	0x3fe47b98f9798bdf              # double 0.64008759236855528
	.quad	0x3fe52837af183100              # double 0.66115936468261793
	.quad	0x3fca40987de74dd8              # double 0.2050963034404123
	.quad	0x3fca10ec3efb46e8              # double 0.20364144397040396
	.quad	0x3fd1dcf4ad4b75f0              # double 0.27911106990163059
	.quad	0x3fd57d111cd2aef8              # double 0.33575847449058882
	.quad	0x3fe378f7880beece              # double 0.60851646968463924
	.quad	0x3fbd96dce8ab0058              # double 0.11558323555345973
	.quad	0x3fefe9fb0d75eb47              # double 0.99731209401156994
	.quad	0x3fda8e86ca48bcf4              # double 0.41494912866887934
	.quad	0x3fe01943acd20e28              # double 0.50308402780541872
	.quad	0x3fb8b0da09782550              # double 0.096448542892308752
	.quad	0x3fd2db2a4dc07f6e              # double 0.29462678521121333
	.quad	0x3fd2bc0918d3ff86              # double 0.29272677826519844
	.quad	0x3fe7630ac30d911e              # double 0.73084009262359806
	.quad	0x3fe50ba169915622              # double 0.65766974085517327
	.quad	0x3fc2668a8f5a8ce0              # double 0.14375431060498212
	.quad	0x3fb065c13240ac70              # double 0.064052653092106615
	.quad	0x3fdd147f9c0e5732              # double 0.45437612762303836
	.quad	0x3fdc6bb93378739c              # double 0.44407491709153546
	.quad	0x3fea1b19ba212553              # double 0.81580816605962025
	.quad	0x3fc3acddbf9539b0              # double 0.15371295790323591
	.quad	0x3fe330181a0f296c              # double 0.5996208676308874
	.quad	0x3fe38e00e52b3a0a              # double 0.61108441123525492
	.quad	0x3f6f33b1cbaefe00              # double 0.003808829552752746
	.quad	0x3fe10062caccac4a              # double 0.53129710778501615
	.quad	0x3fd9db5aa9f511ae              # double 0.4040133151759403
	.quad	0x3fe3575116cc48e4              # double 0.60440878346187477
	.quad	0x3fe67a55c2de55a1              # double 0.70243347225430253
	.quad	0x3fc5aa642f31e624              # double 0.16926243118705131
	.quad	0x3fe1e60861e38898              # double 0.55933016890436971
	.quad	0x3fe895e07734da81              # double 0.76829551012527031
	.quad	0x3fce4e59f0847700              # double 0.23676609272018112
	.quad	0x3fc24d4b21a37114              # double 0.14298380987646253
	.quad	0x3fe684194510429f              # double 0.70362533081977918
	.quad	0x3fe8450f635a60be              # double 0.75843018917932858
	.quad	0x3fbd4f0efa333930              # double 0.11448758705521267
	.quad	0x3fea976629c8992c              # double 0.83098133240563276
	.quad	0x3feee254c2af4d32              # double 0.96512830757493462
	.quad	0x3fd63a2248356158              # double 0.34729821254361104
	.quad	0x3fefba01ef6742a5              # double 0.99145600088566665
	.quad	0x3fe658069f63803f              # double 0.69824534540749272
	.quad	0x3fc0ae46b9432d74              # double 0.13031848951355196
	.quad	0x3fe1496877f112df              # double 0.54021094728576802
	.quad	0x3fdf0c34ecee9a7e              # double 0.48512004030127531
	.quad	0x3fa971af2eb34020              # double 0.049695467425067585
	.quad	0x3fc165248147c6e4              # double 0.13589912712591634
	.quad	0x3fe59197637ded0d              # double 0.67402238304149054
	.quad	0x3fa4f14d19caf0f0              # double 0.040903481863525104
	.quad	0x3fef3e2de6b2c638              # double 0.97634024675625763
	.quad	0x3fed601e7d723fc3              # double 0.91798328877666113
	.quad	0x3fc07d6a8695db34              # double 0.12882739612151684
	.quad	0x3fd925066e107ecc              # double 0.39288483379821737
	.quad	0x3fb6b0f677df5d08              # double 0.088637737527609173
	.quad	0x3fdd283702d225ec              # double 0.45557952189901019
	.quad	0x3fd9772a80f5ca64              # double 0.39789831727754277
	.quad	0x3fd48b0c1e17bde8              # double 0.3209867757677487
	.quad	0x3fdf1646e34869c4              # double 0.48573467441169904
	.quad	0x3fbce048bff34360              # double 0.11279730497632334
	.quad	0x3fee8a42206b7a47              # double 0.95437723476408898
	.quad	0x3fd5ccdfe073a8ba              # double 0.34062954825516167
	.quad	0x3fd7cc39e94613d6              # double 0.37183997898710908
	.quad	0x3fea4e25b2e410c0              # double 0.82203946056008448
	.quad	0x3fc47b76494b9404              # double 0.16001776293629189
	.quad	0x3feee94febfa4f55              # double 0.96598049249085227
	.quad	0x3fe61790d6771610              # double 0.6903766812108092
	.quad	0x3febb3ab4fef0770              # double 0.86568227397968478
	.quad	0x3fe39e84ea422a8b              # double 0.61310048822027008
	.quad	0x3feaebf381681fa5              # double 0.84130263590576659
	.quad	0x3fe6b4c2787653ac              # double 0.70956538703705041
	.quad	0x3fef2b96b63f0cad              # double 0.97407088847139322
	.quad	0x3fc6ed0a467f1508              # double 0.17910889093597171
	.quad	0x3fda3670f3ff40a4              # double 0.4095728285583482
	.quad	0x3fcb5bdfb6274b04              # double 0.21374126810277272
	.quad	0x3fde2b6dc611846e              # double 0.47140068380946942
	.quad	0x3fcb36c5782c0cc0              # double 0.21260898940827211
	.quad	0x3fea6bc1e4142279              # double 0.82565397783862615
	.quad	0x3feb1c636207ca5f              # double 0.84721535822457017
	.quad	0x3fbec1f3eae09ff8              # double 0.12014698490440867
	.quad	0x3fddc26bf3ed3e4c              # double 0.46499155827493577
	.quad	0x3fe326eba335675d              # double 0.59850103260690057
	.quad	0x3fdc50cf92cf39fe              # double 0.44243230187285565
	.quad	0x3fe1d4442ddea1da              # double 0.55716141661565222
	.quad	0x3fe9b765db7a63de              # double 0.80363743655027142
	.quad	0x3fe6b41309f73807              # double 0.70948173471856613
	.quad	0x3fd001026eb9e7b2              # double 0.25006161511521008
	.quad	0x3fa9268e579e3060              # double 0.049122284122035564
	.quad	0x3fb35b005ea3d6b0              # double 0.075607321839778363
	.quad	0x3fe1510576d4608c              # double 0.54114030083566567
	.quad	0x3fef46e61c9908d7              # double 0.97740464768892365
	.quad	0x3fd66d79f04707fe              # double 0.35043190445514927
	.quad	0x3fcfee17b52c3810              # double 0.24945350977253655
	.quad	0x3feeaa27aaeb8594              # double 0.95827086813749184
	.quad	0x3fe8faad6df15526              # double 0.78060027573761626
	.quad	0x3fe6683623a26d1f              # double 0.70022112808092973
	.quad	0x3fd450e5752b2178              # double 0.3174375194762642
	.quad	0x3fed2da9c2feff38              # double 0.91182411275074227
	.quad	0x3fed852dde6f262a              # double 0.92250722355055825
	.quad	0x3fe15900d9f8025a              # double 0.54211466381100171
	.quad	0x3fdd68049f2bd48e              # double 0.45947375816405944
	.quad	0x3fd020e12c0f10f8              # double 0.25200681021330196
	.quad	0x3feb4159cfbb6d9c              # double 0.85172739575084532
	.quad	0x3fc0dc9cf34267a8              # double 0.13173257711315256
	.quad	0x3fd50e042563a20e              # double 0.3289804806832145
	.quad	0x3fc1a401acc3df88              # double 0.13781758247182219
	.quad	0x3fe1097ac360abf7              # double 0.53240717086498435
	.quad	0x3fe453c65143df95              # double 0.63522640106292505
	.quad	0x3fc73b631678d688              # double 0.18149984929339191
	.quad	0x3fc505d339af51a0              # double 0.16424026791231672
	.quad	0x3fd3867ebb459b3e              # double 0.30508392608901491
	.quad	0x3fbaea25c97a0ee0              # double 0.10513530892245226
	.quad	0x3fd3b9e42e2988c6              # double 0.30822090633422439
	.quad	0x3fe2e7bf9160f2ec              # double 0.59078958887365962
	.quad	0x3fee27f6d55080b1              # double 0.94237844145756899
	.quad	0x3fee4e8573b1de91              # double 0.94708511921540339
	.quad	0x3fee57787df57e84              # double 0.94817757226333343
	.quad	0x3fe10b4c968cac33              # double 0.53262929348182408
	.quad	0x3fe5b4d3c422b418              # double 0.67832363422133124
	.quad	0x3fd229d8df017a06              # double 0.28380414750964211
	.quad	0x3fd4c306191fc656              # double 0.32440330937888484
	.quad	0x3fd92f4f707e5396              # double 0.39351259217920054
	.quad	0x3fea2da551f2009e              # double 0.81807199482865989
	.quad	0x3fc176b9b30bb410              # double 0.13643571131197563
	.quad	0x3fe05898e9f0b6a0              # double 0.51081510249578699
	.quad	0x3fce8cef3a26a1ac              # double 0.23867597903632765
	.quad	0x3fe5af1fb8d33b5d              # double 0.67762743090302602
	.quad	0x3fddd92c104dd480              # double 0.46638013450803584
	.quad	0x3fc5f038969b0d50              # double 0.17139346460144589
	.quad	0x3feb2285998b1f79              # double 0.84796409596400146
	.quad	0x3fa9b93152e7a330              # double 0.050241032953471154
	.quad	0x3feb1a237933371c              # double 0.8469407431782403
	.quad	0x3fbbd747c30064b0              # double 0.10875366698054978
	.quad	0x3fd6c5d3c3a6777e              # double 0.35582441431494505
	.quad	0x3fafd72479edaab0              # double 0.062188281902156972
	.quad	0x3fce79633f149760              # double 0.238079458046907
	.quad	0x3fcae5b53bf786bc              # double 0.21013513019629737
	.quad	0x3fe9edbd5560c0ea              # double 0.81027094531421295
	.quad	0x3fcdb065cc7f6750              # double 0.23194572911489297
	.quad	0x3fec23be3d987540              # double 0.8793631747281907
	.quad	0x3fe415d5d0754c05              # double 0.62766543116083595
	.quad	0x3fde3ffe3d4ba86a              # double 0.47265583024876057
	.quad	0x3fc8b576fba08a48              # double 0.19303786550979596
	.quad	0x3fe21383693c37b5              # double 0.56488199762110602
	.quad	0x3fdb351f9d8370dc              # double 0.42511740095302541
	.quad	0x3fe6cab5b196a0e6              # double 0.71224484143479283
	.quad	0x3fadca6f5449a480              # double 0.058185080565473335
	.quad	0x3fd3c68e114a0d52              # double 0.30899383247761592
	.quad	0x3fbee4d908bfaaf8              # double 0.1206794401511323
	.quad	0x3fdc515ebf47a342              # double 0.44246643714591383
	.quad	0x3fee87b9534f5dee              # double 0.95406786223878526
	.quad	0x3fd48a2e0c0cf502              # double 0.32093383004014708
	.quad	0x3fe219f8c34e52af              # double 0.56567037721341318
	.quad	0x3fd183defeb044c8              # double 0.27367377159050621
	.quad	0x3fc12409b1fc0bf0              # double 0.13391228857662396
	.quad	0x3fec991f383daaab              # double 0.89369164452121674
	.quad	0x3fe1db8b559f8130              # double 0.55804983828787691
	.quad	0x3fa69729f2c21b70              # double 0.044122038730214252
	.quad	0x3fe8a7d0cc22adc6              # double 0.77048530454833819
	.quad	0x3fdaae3b6b9a3d32              # double 0.41688428409630085
	.quad	0x3fcc60a51169807c              # double 0.22169936514092459
	.quad	0x3fc9f7cc9e2cf530              # double 0.20287473414820445
	.quad	0x3fe666fc201d5157              # double 0.70007139465682655
	.quad	0x3fd618e8bf35d0f2              # double 0.34527033493874548
	.quad	0x3fe9d8b0416bb00f              # double 0.8077012326953098
	.quad	0x3feca38f8805e96c              # double 0.89496590201387737
	.quad	0x3fe63257a9a48db4              # double 0.69364531644207839
	.quad	0x3fdef33b8cb348ba              # double 0.48359574070230915
	.quad	0x3fe62ea880393480              # double 0.69319558185237895
	.quad	0x3febb7b20df3f954              # double 0.86617377019119112
	.quad	0x3fe4f87f0299ddbc              # double 0.65533400066390568
	.quad	0x3fa30ce0ce1c1340              # double 0.037207627448913261
	.quad	0x3feb5da907fd33e1              # double 0.85518313942304414
	.quad	0x3f9eac5dcf597020              # double 0.029954400807000181
	.quad	0x3fdb814f1ff21a6e              # double 0.4297673999757653
	.quad	0x3fcee316ae73a1ac              # double 0.24130519407414164
	.quad	0x3fea45c65d220e16              # double 0.821017438793606
	.quad	0x3fee05ee664b172f              # double 0.9382240293423133
	.quad	0x3fe9515d081601ef              # double 0.79118205622950011
	.quad	0x3fe3468967981508              # double 0.6023604415246675
	.quad	0x3febd81c1313c80a              # double 0.87013057447461617
	.quad	0x3fceb2b44608796c              # double 0.23982861919007392
	.quad	0x3fe491211041ad47              # double 0.64271596121890517
	.quad	0x3fdce3fe2470b506              # double 0.45141557272548061
	.quad	0x3fdb047353c92014              # double 0.42214663679305997
	.quad	0x3fe5ae0165a7363e              # double 0.67749090055594485
	.quad	0x3fe589b0e4c2bba1              # double 0.67305798225230629
	.quad	0x3fab45236e559370              # double 0.053261859148540647
	.quad	0x3fe855f6dbcc8372              # double 0.7604936879107369
	.quad	0x3fbc54baa0568298              # double 0.11066786207676171
	.quad	0x3fd9200fedb54fb0              # double 0.3925819226617433
	.quad	0x3fab37183641de70              # double 0.05315471327133714
	.quad	0x3fd365fdd38b1b26              # double 0.3031000676968908
	.quad	0x3fe42f7cb7dbbe75              # double 0.63079677495802733
	.quad	0x3fcbe11272a3e16c              # double 0.21780615422882066
	.quad	0x3fee61ebcd0c69b8              # double 0.94945325897724952
	.quad	0x3feb0bc31524fc2d              # double 0.84518579606799948
	.quad	0x3fdf70dc44824db8              # double 0.49126345339137911
	.quad	0x3fe3305c7aece5d5              # double 0.59965347298492111
	.quad	0x3fd27d531a7d3886              # double 0.28889920794325297
	.quad	0x3fb1a00804072a70              # double 0.068848134024998009
	.quad	0x3fe0e1c79dbe8cbc              # double 0.52756100472870271
	.quad	0x3fe84a5b966b0b59              # double 0.75907687548201885
	.quad	0x3fe8bbfcd80f8c91              # double 0.77294771384585392
	.quad	0x3fe1226ef0b014ab              # double 0.53545329102839412
	.quad	0x3fafbba9a7517680              # double 0.061978627848231049
	.quad	0x3fe6736361021806              # double 0.70158547350797629
	.quad	0x3fe5166f108a1666              # double 0.65898850660660169
	.quad	0x3fe19eda9cd13e6d              # double 0.55064135197058095
	.quad	0x3fe36520dbc6ce84              # double 0.60609476971735932
	.quad	0x3f9c8942c2d12500              # double 0.027867358341869597
	.quad	0x3fe07f759aa5d30a              # double 0.51555900768889384
	.quad	0x3fe71ebb4c765330              # double 0.72250142034554266
	.quad	0x3fe5330510d74838              # double 0.66247800149199687
	.quad	0x3fde3072db7349fe              # double 0.47170707159708047
	.quad	0x3fdbc464396b57fe              # double 0.43386178595881109
	.quad	0x3fb0615e51d7c920              # double 0.063985724431209423
	.quad	0x3f78887c7ffb2700              # double 0.0059895385053978512
	.quad	0x3fe3f46d1042bf89              # double 0.62358716178822349
	.quad	0x3fe444b660585b07              # double 0.63338774506959872
	.quad	0x3f8d24da3b0e4c00              # double 0.014230446746102743
	.quad	0x3fc3581792cc7a5c              # double 0.15112585704715087
	.quad	0x3fdc9e263252373e              # double 0.44715266145873389
	.quad	0x3fa30997c796e780              # double 0.037182562936734165
	.quad	0x3fec4593c8b86b8b              # double 0.88349332049561846
	.quad	0x3fe9a145316b7e9e              # double 0.80093631412815447
	.quad	0x3fe57b7664cf208c              # double 0.67132110299373116
	.quad	0x3fe12dd95ee965f3              # double 0.5368468145126698
	.quad	0x3fc9626f427c3260              # double 0.19831648584694772
	.quad	0x3fea703a75740f93              # double 0.82619975032911197
	.quad	0x3fc9ce0f707102c4              # double 0.20160096159272289
	.quad	0x3fe319e987c8bb28              # double 0.5969131137879673
	.quad	0x3fe516c01da2a82f              # double 0.65902715480956953
	.quad	0x3fde47b375f94700              # double 0.4731262828910161
	.quad	0x3febe8aca6eeb7a5              # double 0.87215263942720311
	.quad	0x3fca3dd24859b494              # double 0.20501163990721649
	.quad	0x3febdda3ff2773d9              # double 0.8708057387808551
	.quad	0x3fe530fb34d107f5              # double 0.66222915950515804
	.quad	0x3fb3481b78098340              # double 0.07531902008623792
	.quad	0x3fd418cb0ac3aa66              # double 0.31401325274661074
	.quad	0x3fb1267e89f86fa8              # double 0.066993626293366249
	.quad	0x3feb1fc9a97b99e9              # double 0.84763033964264622
	.quad	0x3fe39c762e58a6ab              # double 0.61284932186136609
	.quad	0x3fedbe78a3090a15              # double 0.92950088351091387
	.quad	0x3fecc355e4a07620              # double 0.89884466794655182
	.quad	0x3fd74d46a166d334              # double 0.36409154664879684
	.quad	0x3fd1c90f211061f0              # double 0.27789667347818092
	.quad	0x3f9a27869f59fbe0              # double 0.025541404224437403
	.quad	0x3fefdcb1a4d91456              # double 0.99569017598026721
	.quad	0x3fe9d74a90b57422              # double 0.80753067267835754
	.quad	0x3fbc148872afeda8              # double 0.10968830871563873
	.quad	0x3fd36a3ab63c6d7e              # double 0.30335872456063118
	.quad	0x3feab5af805336fc              # double 0.83467841208923188
	.quad	0x3fd9e38ef758a3b8              # double 0.40451406626612707
	.quad	0x3fe6f0f08a9aa7b8              # double 0.71691157408826367
	.quad	0x3fbc72b4747938b0              # double 0.11112525790778949
	.quad	0x3fed8a1c6cd968f1              # double 0.92310925731297122
	.quad	0x3fe616fc3c631fd0              # double 0.69030582231880011
	.quad	0x3fea0291b7b0c178              # double 0.81281362416306902
	.quad	0x3fd307b999e8c1b2              # double 0.29734649687000136
	.quad	0x3fe9832d0524afea              # double 0.79726267818977914
	.quad	0x3fc287ff379238fc              # double 0.1447752972930586
	.quad	0x3fd65c2dc1a139d6              # double 0.34937614354285296
	.quad	0x3feb23dfb69709af              # double 0.84812913572414128
	.quad	0x3fefde047bce22a8              # double 0.99585174732881842
	.quad	0x3fa882ea198be100              # double 0.047873798006493828
	.quad	0x3fec5e8b0e9fe20e              # double 0.88654091698032444
	.quad	0x3fee84c6ada482d4              # double 0.95370801844191044
	.quad	0x3fcd0a3cb9a6f7cc              # double 0.22687491478967414
	.quad	0x3fdcb89be7b62b58              # double 0.44876763942800357
	.quad	0x3fdff50ef69218d8              # double 0.49933218077820873
	.quad	0x3feb06edbdf60bc5              # double 0.84459578611164743
	.quad	0x3fe5fa1ee62c3642              # double 0.68678231196981465
	.quad	0x3fe4aa174c5b3a6f              # double 0.64576306260444294
	.quad	0x3fe74a3fdc3975b3              # double 0.72781365406597442
	.quad	0x3fe597f6c86dde5e              # double 0.67480029245684725
	.quad	0x3fc30f95a68de428              # double 0.14891310341389041
	.quad	0x3fed8c631b5870b5              # double 0.92338710156356874
	.quad	0x3fd52e90853f56e8              # double 0.33096707355922073
	.quad	0x3fe1b9915b29ea94              # double 0.55390231900612941
	.quad	0x3fefa21a2e8ce9fc              # double 0.98853787509807444
	.quad	0x3fdd68ad7cdb2788              # double 0.45951401894546295
	.quad	0x3fe76f8cf868b809              # double 0.73236702458757563
	.quad	0x3fe1f176c54c2356              # double 0.56072557959223945
	.quad	0x3fe52d324a17dd7a              # double 0.66176714392979297
	.quad	0x3fecba4cd9c8e7e5              # double 0.89774172340480318
	.quad	0x3fd8bb09ecae61c8              # double 0.38641594041248739
	.quad	0x3fe891a44f7a8450              # double 0.76777854464683948
	.quad	0x3fc848d67b1dea18              # double 0.18972283374371623
	.quad	0x3fd9c4b1bbaaa1c0              # double 0.40263026549157743
	.quad	0x3fe24014eba96e94              # double 0.57032247569755379
	.quad	0x3fe581b5ca44e3fe              # double 0.67208375459369996
	.quad	0x3fef1313549350f3              # double 0.97107855337756487
	.quad	0x3fdf87bcea90f0ee              # double 0.49265978724339632
	.quad	0x3feaeac8a6bb40f9              # double 0.84116013111818611
	.quad	0x3feb116cdeeb71d9              # double 0.84587710894589485
	.quad	0x3fcb498bcd0098a4              # double 0.21318194875602103
	.quad	0x3feb47460def62f0              # double 0.852450396744727
	.quad	0x3febe698a51ffcce              # double 0.87189895869223633
	.quad	0x3fd209fb4c8f1e9a              # double 0.28185923077078601
	.quad	0x3fb375b6a2ae9640              # double 0.076014914243011766
	.quad	0x3fd74814dd43b63e              # double 0.36377450569020542
	.quad	0x3fe017d3ff05b005              # double 0.50290870484377648
	.quad	0x3fe888b1130aa71b              # double 0.76668599814476879
	.quad	0x3fef525d1eecd7d4              # double 0.97880416908332756
	.quad	0x3fdf2f5c2b49348a              # double 0.48726562716621713
	.quad	0x3fcf4837ac5775c8              # double 0.24439140238875567
	.quad	0x3fe9c0afe5aeff4a              # double 0.8047713743216971
	.quad	0x3feefbfe6db79ce2              # double 0.96826096943996398
	.quad	0x3fd1fbef3df5ee32              # double 0.28100186396452209
	.quad	0x3fe3ec8a104f4212              # double 0.6226244276568329
	.quad	0x3fd41f2551c7e706              # double 0.31440098749554612
	.quad	0x3fe565c8aa3fbadf              # double 0.66867478610751252
	.quad	0x3fc1bd279b578824              # double 0.13858504376463643
	.quad	0x3fc58314613b6078              # double 0.16806273219731671
	.quad	0x3fe64db33a6bd634              # double 0.6969848767318525
	.quad	0x3fea08975dd11689              # double 0.81354873965820318
	.quad	0x3fee05f36d1a9024              # double 0.93822642621353624
	.quad	0x3fc25930a3b3eecc              # double 0.14334686272910913
	.quad	0x3fb80fbfa4a398f8              # double 0.093990304656106249
	.quad	0x3fe71335ea495c71              # double 0.72109504469962193
	.quad	0x3fc33915b8a07994              # double 0.1501795913217846
	.quad	0x3feeda35165c12ef              # double 0.96413664214250427
	.quad	0x3fe67318567d60c3              # double 0.70154969112902454
	.quad	0x3fee60bac7041ae1              # double 0.94930781240767825
	.quad	0x3fbfef529377bf38              # double 0.12474552250182291
	.quad	0x3fe248e4063bc762              # double 0.57139779298288951
	.quad	0x3fe645ad347edccb              # double 0.69600544217146287
	.quad	0x3fd1f5585159a032              # double 0.28059966987939611
	.quad	0x3fe430ff8dfccb3b              # double 0.63098123294762531
	.quad	0x3fe1cd4ac36a14f7              # double 0.5563100639998585
	.quad	0x3f90f8880bbc7560              # double 0.016573072162932134
	.quad	0x3fac403361f75ab0              # double 0.055177312573211679
	.quad	0x3fcec8dcae7daa38              # double 0.24050482292234832
	.quad	0x3fe11b06f36bba7c              # double 0.53454921286704815
	.quad	0x3fe372bc12984650              # double 0.60775569564629883
	.quad	0x3fde3761e94dba06              # double 0.47213027747685066
	.quad	0x3fe4cb3e8987b0d4              # double 0.64981009351097407
	.quad	0x3fe1da732472f370              # double 0.55791623228979681
	.quad	0x3fe0623631b4f3d7              # double 0.511988732417758
	.quad	0x3fead4290c9761b4              # double 0.8383984800266746
	.quad	0x3fd179ab066502a6              # double 0.27305102943868531
	.quad	0x3fd6bacec8834e1e              # double 0.35515184003199518
	.quad	0x3fe0cf47c6c6a55f              # double 0.52530278037481171
	.quad	0x3fe73d3e594a4c43              # double 0.72622601928231523
	.quad	0x3fd0d0e2e34e57b2              # double 0.26274940679410996
	.quad	0x3fec1ae0dd69efec              # double 0.87828105206381001
	.quad	0x3fd29b26b72dc6fe              # double 0.29071967972332391
	.quad	0x3fedc6849897c665              # double 0.93048314860625381
	.quad	0x3fdd25c2d1d9adcc              # double 0.455429749423925
	.quad	0x3fc65aae1951e1b4              # double 0.17464233623810588
	.quad	0x3fc316bfdf198d84              # double 0.14913175958200153
	.quad	0x3fe49df97cc76c32              # double 0.64428400393388174
	.quad	0x3fe85eecad5d35c8              # double 0.76158746586013937
	.quad	0x3fcf0feccfc616f8              # double 0.24267349381641856
	.quad	0x3fe869e684c01d0c              # double 0.76292730262585584
	.quad	0x3fc2a66fd2d234bc              # double 0.14570424837112295
	.quad	0x3fd44645671afe6a              # double 0.31678900784388608
	.quad	0x3feab65b3904ea97              # double 0.83476029526294127
	.quad	0x3fef0639705119b1              # double 0.96950981079935705
	.quad	0x3fe262b1839c297a              # double 0.57454753594474473
	.quad	0x3fe4687d0ca47184              # double 0.63775494069300054
	.quad	0x3fe906b712c26edb              # double 0.78206971801725034
	.quad	0x3fe3212ee5a27edd              # double 0.59780068254982732
	.quad	0x3fbefed635f87a68              # double 0.12107600038187061
	.quad	0x3fe47d5b53fba169              # double 0.64030233767429678
	.quad	0x3fd3eed0cd5f790a              # double 0.31145114952040898
	.quad	0x3fcf2e2bb0a9a7b4              # double 0.24359651685818806
	.quad	0x3fe4069a7966197e              # double 0.62580608092029855
	.quad	0x3fe487a8fc5111fc              # double 0.64156007080651944
	.quad	0x3fe2ff3207d5e988              # double 0.59365178614034253
	.quad	0x3fe185046038d174              # double 0.54748743813847378
	.quad	0x3fd73ad17a641cb8              # double 0.36296498253109233
	.quad	0x3fe62bf453d3f00e              # double 0.69286552784569877
	.quad	0x3fe97d5a4f0edfed              # double 0.79655185166393283
	.quad	0x3fc4df50dd48eca0              # double 0.16306505970883212
	.quad	0x3fee54a3aadd5f8f              # double 0.94783194896716505
	.quad	0x3fd6832711f58b1c              # double 0.3517549205191004
	.quad	0x3fc96ce14a507798              # double 0.1986352551329531
	.quad	0x3fe170efd238722c              # double 0.54503623064699047
	.quad	0x3fe9ffe6450f11a6              # double 0.81248773086604298
	.quad	0x3fc3d4142bb706b4              # double 0.15490963110464906
	.quad	0x3fe810c5a26306f6              # double 0.75204736438919784
	.quad	0x3fe1c000a5fd4673              # double 0.55468780917926919
	.quad	0x3fa95ba85ab08130              # double 0.049527417250148864
	.quad	0x3fcd38d815884f6c              # double 0.22829724360837689
	.quad	0x3f9afc1f66db7640              # double 0.026352396634015784
	.quad	0x3fda5b96b91684b0              # double 0.41184013438221267
	.quad	0x3fb76b1013878178              # double 0.091477398651027886
	.quad	0x3fdfb02a09a5278e              # double 0.49512721006305405
	.quad	0x3fdfcf6323231788              # double 0.49703291350703482
	.quad	0x3fec3fae89846e4d              # double 0.88277365549897413
	.quad	0x3fd4f905a996eb46              # double 0.32769910394170088
	.quad	0x3fd86f9542c10a4a              # double 0.38181048888160218
	.quad	0x3fbea5785d625058              # double 0.11971237449535133
	.quad	0x3fe2f676d8a05a83              # double 0.59258596715774592
	.quad	0x3fe3f3167506e59e              # double 0.62342379433464479
	.quad	0x3fd470c9863cb8cc              # double 0.31938398465252926
	.quad	0x3fe9ae8c02c53f55              # double 0.80255699673760239
	.quad	0x3fd71a6d4c83da4a              # double 0.36098797294781504
	.quad	0x3fd254e293369b70              # double 0.28643097282695518
	.quad	0x3facfe2f80174680              # double 0.056626781831835338
	.quad	0x3fdd9d6594e2fdec              # double 0.46273173846927196
	.quad	0x3fcd5cfc2fe1d7d8              # double 0.22940018022535358
	.quad	0x3fba28cbe0778498              # double 0.10218500356815452
	.quad	0x3fe0febd553d3079              # double 0.53109614036794917
	.quad	0x3fc9aea5a08f4700              # double 0.20064230289295182
	.quad	0x3fe7af423c97a4b5              # double 0.74014388880200122
	.quad	0x3feb973c024ac82c              # double 0.86221123168639257
	.quad	0x3fe03afb93b7cf5d              # double 0.50720003939793978
	.quad	0x3fe151eb4dda1702              # double 0.54124989705516691
	.quad	0x3feb8d89a61bcec6              # double 0.86102755015459631
	.quad	0x3fe7d90b3bef9c2b              # double 0.74524461466069647
	.quad	0x3fbf5742e82602d8              # double 0.12242525260627291
	.quad	0x3fd20a3c9c78da56              # double 0.28187480240322793
	.quad	0x3fbad499db307940              # double 0.10480653382589811
	.quad	0x3fe00c060030342e              # double 0.50146770512367822
	.quad	0x3fe89628d1c14856              # double 0.76833001106048004
	.quad	0x3fe7dcfc8246be6c              # double 0.74572587437246574
	.quad	0x3fe30efbb88aeadf              # double 0.59557901423917403
	.quad	0x3fcc37bffcedb90c              # double 0.22045135355023893
	.quad	0x3fed75cca26cfa44              # double 0.92062980388420401
	.quad	0x3fe0fb66281e20d4              # double 0.53068836055265445
	.quad	0x3fe2d66e452f8b07              # double 0.58867562783083904
	.quad	0x3fd29e9b8326680c              # double 0.29093063171023981
	.quad	0x3fd146cc318f2b50              # double 0.26994614448328935
	.quad	0x3fdf59c7a95aa116              # double 0.48985473192671358
	.quad	0x3fdffb0a991d8524              # double 0.49969735100428836
	.quad	0x3fe736dde19aa698              # double 0.72544759810735382
	.quad	0x3fe8bc213c88ca27              # double 0.77296506713020541
	.quad	0x3fe95abe6f648e30              # double 0.79232713467030713
	.quad	0x3fe68a362f7c2dd3              # double 0.70437154077938613
	.quad	0x3fd44952afd9886e              # double 0.31697528050256707
	.quad	0x3fe9ee95166820f7              # double 0.81037382484740206
	.quad	0x3fee4ca71504cf68              # double 0.94685701470596672
	.quad	0x3fc1eeb87ff3d550              # double 0.14009767768554093
	.quad	0x3fef9eb8e17cb560              # double 0.98812526741464168
	.quad	0x3feb1ea00ecad220              # double 0.84748843087306013
	.quad	0x3fc6ac8334c17504              # double 0.17713966442071449
	.quad	0x3fc4053a4ca0aae8              # double 0.15640953771192945
	.quad	0x3fef9184da2f6538              # double 0.98651354421887216
	.quad	0x3fe6a219f378fafe              # double 0.70728776505697488
	.quad	0x3fc8674d65607ff8              # double 0.19065253686949268
	.quad	0x3fd61e4014cc1b58              # double 0.34559633284555025
	.quad	0x3fe5edbe12ea7081              # double 0.68527129835594291
	.quad	0x3fdfa4af3d3a4470              # double 0.49442654589899515
	.quad	0x3fe2744d4a355a97              # double 0.57669701093512316
	.quad	0x3fd5ca4fc1c7a64e              # double 0.34047311710182704
	.quad	0x3fef7a0ca654714a              # double 0.98364860998439352
	.quad	0x3fed3e0905251664              # double 0.91382266049249638
	.quad	0x3fd5685204629c30              # double 0.33449221065751811
	.quad	0x3fe6d1981324031f              # double 0.71308521021282789
	.quad	0x3f8e4ba01669a280              # double 0.014792681392649998
	.quad	0x3fe8da450dca71e6              # double 0.77664425557628358
	.quad	0x3fd18b7840a1a954              # double 0.27413755714100785
	.quad	0x3fd678d6d06e436c              # double 0.35112543444215905
	.quad	0x3fbf6c43f96db900              # double 0.1227457508045724
	.quad	0x3fc5cb446238e6b0              # double 0.17026572032937315
	.quad	0x3feefcace48ad85a              # double 0.96834416043453619
	.quad	0x3febbabac1e3c909              # double 0.86654413098429572
	.quad	0x3fd44aa3e77f1166              # double 0.31705567938867885
	.quad	0x3fe3115a2cecfab8              # double 0.5958681943373767
	.quad	0x3fc3e0b3e3913964              # double 0.15529488193210306
	.quad	0x3fef23593752e12f              # double 0.97306500249309191
	.quad	0x3fe4cd990d53a3bb              # double 0.65009739497065
	.quad	0x3fe038d6516aa685              # double 0.50693813230209683
	.quad	0x3fe0dff33fa66cdf              # double 0.52733766967449103
	.quad	0x3feadbb77a599e2c              # double 0.83932088753221512
	.quad	0x3fe9eff9a2514f0e              # double 0.81054383948000619
	.quad	0x3fe340da69bddf6a              # double 0.60166664745973475
	.quad	0x3fe81850a19ecf5c              # double 0.75296813551402008
	.quad	0x3fe2cec0a5d0420d              # double 0.58773834596110108
	.quad	0x3fe7be8f783d6922              # double 0.74201177105286242
	.quad	0x3fd9d75e66d63fc8              # double 0.40377006571452201
	.quad	0x3fb96b92ce6c39e0              # double 0.09929769076936834
	.quad	0x3feac5fd3a150878              # double 0.83666859954997985
	.quad	0x3fec7e3b9c635cd5              # double 0.89040928406293551
	.quad	0x3fd0bd717ad2e1b0              # double 0.26156270021922534
	.quad	0x3fc745889b2c7670              # double 0.18180949761238052
	.quad	0x3fac547765d6b420              # double 0.05533192747257254
	.quad	0x3fd13d7bd3e53e8a              # double 0.26937766735952862
	.quad	0x3faf795d52d71e30              # double 0.061472812998144
	.quad	0x3feb8a3f230bb659              # double 0.86062580914376519
	.quad	0x3fdbdf0a093fe014              # double 0.43548823264382119
	.quad	0x3fe02b50197d7673              # double 0.50528721788914621
	.quad	0x3fc6fc35b98c8be4              # double 0.17957183418283684
	.quad	0x3feeade7b7dca63d              # double 0.95872865591554268
	.quad	0x3fda681d3d4b86a6              # double 0.41260462747423288
	.quad	0x3fe2af4d2e94a931              # double 0.58389910791200894
	.quad	0x3fdef6d0d2d33b38              # double 0.48381443584814887
	.quad	0x3fe826e3671eec43              # double 0.75474710598735617
	.quad	0x3fc36a5ae4357298              # double 0.15168319838530375
	.quad	0x3fedf1e36c667da7              # double 0.93577738925880716
	.quad	0x3fec98addd8a5b13              # double 0.89363759297961776
	.quad	0x3fdc566df998e1b6              # double 0.44277524351812347
	.quad	0x3fd4b591697fd74a              # double 0.32358203222917281
	.quad	0x3fe8154d89329463              # double 0.75260044857408237
	.quad	0x3fec7d61b106b071              # double 0.89030537200370763
	.quad	0x3fe4848a8d7bac06              # double 0.64117934831063006
	.quad	0x3fd002170c96104e              # double 0.25012756566161876
	.quad	0x3fc1a959cb3848a4              # double 0.13798067496151589
	.quad	0x3fe260aaad1f338a              # double 0.57430013478152486
	.quad	0x3fe42cf18a4fc8a4              # double 0.63048626913066075
	.quad	0x3fe8205ecb081d61              # double 0.75395145086887905
	.quad	0x3f7285de13b7e380              # double 0.0045221972354675399
	.quad	0x3fc03f49a718f4a8              # double 0.12693138751084132
	.quad	0x3fd527eea16a587c              # double 0.33056226504539388
	.quad	0x3fdfd1d196375d06              # double 0.4971813170390792
	.quad	0x3fed82ccde5d0ba7              # double 0.9222168295894918
	.quad	0x3fedf8b9ae3c1da6              # double 0.93661197691192366
	.quad	0x3fcd0558c0be86e0              # double 0.22672566806163896
	.quad	0x3fcd258923674900              # double 0.22770799854931312
	.quad	0x3fe757fddae8e3bb              # double 0.72949116473966258
	.quad	0x3fcb837755e4b008              # double 0.21494952863702133
	.quad	0x3fde8f895af8c402              # double 0.47751077541312281
	.quad	0x3fae335d46031df0              # double 0.058985628887565755
	.quad	0x3fe05e70d57cfd89              # double 0.51152841278956018
	.quad	0x3fea119a32273f72              # double 0.81464872165268631
	.quad	0x3fed133544bf5a44              # double 0.90859473635902832
	.quad	0x3fef65d67917a966              # double 0.98118137026658014
	.quad	0x3fdd3a5b17c51ca8              # double 0.45668675729070651
	.quad	0x3fee11f47c8ee6b9              # double 0.93969177558684358
	.quad	0x3fec5d8afda52b60              # double 0.88641881504132058
	.quad	0x3fe5ab746f4b420c              # double 0.67717954384903711
	.quad	0x3fef1cc0fb4f314d              # double 0.97225998958450932
	.quad	0x3fec107b1e481cf4              # double 0.8770118323745053
	.quad	0x3fd760a22d9379a2              # double 0.3652730412558417
	.quad	0x3fe699d10dc712d6              # double 0.70627644244140231
	.quad	0x3fd1e9db06b4d28a              # double 0.27989841132083682
	.quad	0x3fc3ea6d40cf13c4              # double 0.15559163727280467
	.quad	0x3fe5c5263787f39e              # double 0.68031607480917322
	.quad	0x3fecbca8d934afe4              # double 0.89802973196992441
	.quad	0x3fdfd4d80d5c6990              # double 0.49736596398147359
	.quad	0x3fdcd7d822f158a4              # double 0.45067408954981603
	.quad	0x3fcb4b284b3ec87c              # double 0.21323112176975545
	.quad	0x3fa2259048f21790              # double 0.035442837624073964
	.quad	0x3fe3751d7db331c5              # double 0.60804628897454249
	.quad	0x3fecde55fcd857b6              # double 0.90214061149412461
	.quad	0x3fc0c4d7be5bc94c              # double 0.13100716395235634
	.quad	0x3fd8633ab8c775b8              # double 0.38105648083532229
	.quad	0x3fecbba4cd85622b              # double 0.89790573254419337
	.quad	0x3fd9680160fff1dc              # double 0.39697298500666789
	.quad	0x3fe38adc7bfb7d0e              # double 0.61070083823497767
	.quad	0x3fe2febbe7cedca5              # double 0.59359545969973182
	.quad	0x3fedcaa40dac2aae              # double 0.93098642988600999
	.quad	0x3fe5db2e7d878b49              # double 0.683005566763634
	.quad	0x3fcfbc352b9ce248              # double 0.24793114308865172
	.quad	0x3fef70880fcb6934              # double 0.98248675427320231
	.quad	0x3fecf7b62cb824bc              # double 0.90523823484649978
	.quad	0x3fb8b251bdbeae18              # double 0.096470936607765956
	.quad	0x3fc024a92d0cd674              # double 0.12611880016054366
	.quad	0x3fe7e65848639fcd              # double 0.74686826838023423
	.quad	0x3fad0614a928cda0              # double 0.0566870171063798
	.quad	0x3fe2115be3431c9a              # double 0.56461901080264743
	.quad	0x3fea26237b057cc6              # double 0.81715559032081653
	.quad	0x3fec818d59be30ee              # double 0.89081447151104753
	.quad	0x3fcc77ecc355e18c              # double 0.22240981614937672
	.quad	0x3fd2a7f43b4d6532              # double 0.29150110045664512
	.quad	0x3fe9ce1adf6db256              # double 0.80640929830912955
	.quad	0x3fda3c9e013445f6              # double 0.40994978063198972
	.quad	0x3fef5e3825c0bef3              # double 0.98025138257614086
	.quad	0x3fdf7836593154e8              # double 0.49171217642044818
	.quad	0x3feb0f1c8a8da92b              # double 0.84559466420367835
	.quad	0x3fda6e5d9033ec00              # double 0.41298617441469787
	.quad	0x3fd8a4276fb229ec              # double 0.38501916797454672
	.quad	0x3fe5444e3c867311              # double 0.6645880872852975
	.quad	0x3fb9abf6df63c068              # double 0.10028021768425932
	.quad	0x3fce46180787f9a0              # double 0.23651409499866549
	.quad	0x3fda38157779bf28              # double 0.40967308681045944
	.quad	0x3fe92971ad2cf18a              # double 0.78630908797599486
	.quad	0x3f44c2702ab50000              # double 6.3353039642066733E-4
	.quad	0x3fe20ba6d493ba4c              # double 0.563922324361394
	.quad	0x3fd0fa30c65b24a0              # double 0.26527041788774319
	.quad	0x3fee3c7c15d99148              # double 0.94488338725617726
	.quad	0x3fef1be2d390108a              # double 0.97215405770158836
	.quad	0x3fe7eff0c9e4e659              # double 0.74803962166260896
	.quad	0x3fd9554a927de45a              # double 0.39583076768719183
	.quad	0x3fd44c70142bde2a              # double 0.3171653935419011
	.quad	0x3feac6d06e3e21e3              # double 0.83676930934694516
	.quad	0x3fe988f4f3052c7e              # double 0.79796836342701716
	.quad	0x3fea9e8ea400876a              # double 0.83185512572911802
	.quad	0x3fe72ca0635d1c07              # double 0.72419757277464292
	.quad	0x3fc42b639663dc98              # double 0.15757412760988099
	.quad	0x3fe1c2361525c763              # double 0.55495742922196845
	.quad	0x3fe3fbfa13cba8e7              # double 0.62450889459912851
	.quad	0x3feb0a606941f983              # double 0.84501667554995696
	.quad	0x3fd5eb126afd860a              # double 0.34247265289568019
	.quad	0x3fe2c054c89d2ba1              # double 0.58597792799388426
	.quad	0x3fd53e7bd80531ec              # double 0.33193870635730494
	.quad	0x3fe66f645e16c94b              # double 0.7010976636577565
	.quad	0x3febd5c854b0470b              # double 0.86984650173892086
	.quad	0x3feb9f268cc7baf0              # double 0.86317756172306126
	.quad	0x3fe6ccbc16b5859c              # double 0.71249203143468121
	.quad	0x3febedc5abe86693              # double 0.87277492118592404
	.quad	0x3fda0570d79de87c              # double 0.40658207947092939
	.quad	0x3fc391d565682020              # double 0.15288798762799249
	.quad	0x3fd2d9ea82ad2d88              # double 0.29455054055571184
	.quad	0x3fe796b16bdf80d9              # double 0.73714514798123354
	.quad	0x3fd3ac23e515bc80              # double 0.30738160487721444
	.quad	0x3fe607739de09b7f              # double 0.68840962253021576
	.quad	0x3fe8a1133cab0989              # double 0.76966249322167457
	.quad	0x3fc3454ab9df18bc              # double 0.1505521209312003
	.quad	0x3fa8162b11bf37e0              # double 0.04704413024556664
	.quad	0x3fe7be88c398c905              # double 0.7420085735559786
	.quad	0x3fdd2b5497d5b940              # double 0.45576968028662534
	.quad	0x3fe8196f96b82bfd              # double 0.75310496747385935
	.quad	0x3fe4b0c7b01df3aa              # double 0.64657959363795681
	.quad	0x3fd60340fc9a0edc              # double 0.3439485995115612
	.quad	0x3fe3ecdfc499890a              # double 0.62266529463184495
	.quad	0x3fe2e1d5c45eab22              # double 0.59006775239445042
	.quad	0x3fcc43540bc1e890              # double 0.22080469678968884
	.quad	0x3fb87b65df3cf478              # double 0.095632903100481559
	.quad	0x3fec65a137f20164              # double 0.88740597655127517
	.quad	0x3fa559e99b955fe0              # double 0.04170160316670013
	.quad	0x3fc5b3ec91b2ceac              # double 0.16955334772284425
	.quad	0x3fdca90235cac826              # double 0.44781546834122066
	.quad	0x3fd6eb1c9d77ce7a              # double 0.35810008409246274
	.quad	0x3fe535b3cc8a5e22              # double 0.66280546140018637
	.quad	0x3fc0aa74b7e98fe0              # double 0.13020190219970029
	.quad	0x3febbf779910a6a0              # double 0.86712245841518509
	.quad	0x3fcda0f529f9018c              # double 0.23147453832099207
	.quad	0x3fe86f1b1b1b808c              # double 0.76356272978229489
	.quad	0x3fe832f12211045d              # double 0.75621849683387732
	.quad	0x3fe7dc9efb01ff61              # double 0.74568127655946281
	.quad	0x3fbcee0002eae878              # double 0.11300659247618394
	.quad	0x3fede489ad70eccd              # double 0.93414768099992218
	.quad	0x3fe47d2925713168              # double 0.64027840912744427
	.quad	0x3fd06d19fcd09232              # double 0.25665902794779349
	.quad	0x3fdae4fcf6b57892              # double 0.42022632687247452
	.quad	0x3fed8c8cd40ca2aa              # double 0.92340699592485476
	.quad	0x3fe302a5f56e6ede              # double 0.59407327590767145
	.quad	0x3feb80d06290df44              # double 0.85947436572221436
	.quad	0x3fd6267f17777cfa              # double 0.34609963695216062
	.quad	0x3fd22f40effda70a              # double 0.28413413464169024
	.quad	0x3fd2e40be1e12690              # double 0.29516884859604264
	.quad	0x3fec51c19f749653              # double 0.88498002189289549
	.quad	0x3fddff13b4510bea              # double 0.46869366272966195
	.quad	0x3fc7109f70fff604              # double 0.1801947881466931
	.quad	0x3fd0d30e947e0968              # double 0.26288189412311747
	.quad	0x3fe15b639585144b              # double 0.54240588381856847
	.quad	0x3fe1413c1420eae1              # double 0.53921321803440148
	.quad	0x3fef5c175ce8fcb2              # double 0.9799916090631966
	.quad	0x3fe581a9f1380a43              # double 0.67207810509746257
	.quad	0x3fb5f1f182f4b9d0              # double 0.085723013374013889
	.quad	0x3fdf63b640645adc              # double 0.49046093261988033
	.quad	0x3feca5b0f0690878              # double 0.89522597270139581
	.quad	0x3fc49c83c1d67708              # double 0.1610264488671691
	.quad	0x3fdc4d69675ddf56              # double 0.44222483724978667
	.quad	0x3fd9b54dd0d53412              # double 0.40169091600256579
	.quad	0x3fecae04bdba03e8              # double 0.89624249511700516
	.quad	0x3fc4b94ab8f5f280              # double 0.16190465956960409
	.quad	0x3fdd0197d893ecca              # double 0.45322223806551831
	.quad	0x3fe95bed08cf77e3              # double 0.79247142525468595
	.quad	0x3fd9014ca2c4615c              # double 0.39070430655694621
	.quad	0x3fc653f9fbff9800              # double 0.17443775944337858
	.quad	0x3fe218e602b4fff2              # double 0.56553936508862379
	.quad	0x3fe41ba7f0cdc67a              # double 0.62837597877496809
	.quad	0x3fe97d0b29815df5              # double 0.7965141115809603
	.quad	0x3fe8c4784cbc2fcc              # double 0.77398314463925421
	.quad	0x3fecfd8f0d67fbe0              # double 0.90595200174709233
	.quad	0x3fd0e241d4521e58              # double 0.26380964025927289
	.quad	0x3fe61cc541edf637              # double 0.69101202847350052
	.quad	0x3fdb95023e87ae88              # double 0.43096977335401521
	.quad	0x3fee79df199fee1d              # double 0.95237689022855287
	.quad	0x3fe873bbda799b97              # double 0.76412766142753952
	.quad	0x3fef35dea9feec20              # double 0.97532590105345562
	.quad	0x3fad653ab1d4a140              # double 0.057412943084559576
	.quad	0x3fe781df5b9472d2              # double 0.73460357557959299
	.quad	0x3fdbae11b5ad2550              # double 0.43249933950263131
	.quad	0x3fc3d35f22476704              # double 0.15488804982924631
	.quad	0x3fe540c4049d4212              # double 0.66415596867779159
	.quad	0x3fe7fae0fe529486              # double 0.74937486336115522
	.quad	0x3febaf9e565471ea              # double 0.865187805760397
	.quad	0x3fdf60847983f71e              # double 0.4902659594225599
	.quad	0x3fee770d3825e0c3              # double 0.95203267065428354
	.quad	0x3fc94b9b3e08be68              # double 0.19761982468616002
	.quad	0x3fea926a66f6841e              # double 0.83037300214721532
	.quad	0x3fe6bcc372c5fb81              # double 0.71054241577790844
	.quad	0x3fd057761a9da45c              # double 0.25533821677396928
	.quad	0x3fd11ee4774df610              # double 0.26751052523454266
	.quad	0x3fe89e15ae54f984              # double 0.76929744767385033
	.quad	0x3fdec3ebda1827ae              # double 0.48070808695103551
	.quad	0x3fe8334c20215af0              # double 0.75626188540885941
	.quad	0x3fcb61470f2b4218              # double 0.21390617600128858
	.quad	0x3fe4e1f7dbe7f83f              # double 0.65258400869766564
	.quad	0x3fda5f5ab7e6a5e8              # double 0.41206996878699309
	.quad	0x3faaf853eb5a49f0              # double 0.052675840835167409
	.quad	0x3fd700edda6b583e              # double 0.35943170862208607
	.quad	0x3fefc219c62cbbee              # double 0.99244393068317804
	.quad	0x3fe745c7a90a14e2              # double 0.72726805701736574
	.quad	0x3fea58e29629d193              # double 0.82335023239879701
	.quad	0x3fecbc0a8770d5d6              # double 0.89795423939966201
	.quad	0x3fa2706ae92db800              # double 0.036013928379233562
	.quad	0x3fed12eb7158a0d9              # double 0.90855953348093543
	.quad	0x3fd5736d950268f2              # double 0.33517016936970301
	.quad	0x3fec4a0b0870d592              # double 0.88403846405587871
	.quad	0x3fe19add87759ddf              # double 0.55015446144983204
	.quad	0x3fe39d8e034c1576              # double 0.61298275608048303
	.quad	0x3fef1e6585e0108e              # double 0.97246051929006838
	.quad	0x3fe862a142c38628              # double 0.76203978576467524
	.quad	0x3f9367d180bfdea0              # double 0.018950723155255589
	.quad	0x3fd0e4538c2a5a34              # double 0.26393593490630285
	.quad	0x3fe0fc7298e95578              # double 0.53081636300582513
	.quad	0x3feab89d56b835b9              # double 0.83503596246162382
	.quad	0x3fe64fccc55ea535              # double 0.69724119709750332
	.quad	0x3febc754947d6022              # double 0.86808232309249811
	.quad	0x3fd446cb7e768ae0              # double 0.31682097768695705
	.quad	0x3fdf233908b99bb0              # double 0.48652482845357792
	.quad	0x3fdc9671130eaf78              # double 0.44668223248549266
	.quad	0x3fd3d7550fc2d150              # double 0.31001783885155465
	.quad	0x3fe3e758e5d5dad7              # double 0.62199063195915982
	.quad	0x3fe329f96e09d610              # double 0.59887382022742663
	.quad	0x3fed6eeb17a664d7              # double 0.91978983515869117
	.quad	0x3fda11969493c8c0              # double 0.40732349881649199
	.quad	0x3febd5ad5f1016fd              # double 0.86983364645922701
	.quad	0x3fddb8c50bdb8890              # double 0.46440244825328936
	.quad	0x3fd218b3a35df1b0              # double 0.28275767282300546
	.quad	0x3fc3ff9b0e4ec400              # double 0.15623796652428723
	.quad	0x3fc846012a95681c              # double 0.18963636950758278
	.quad	0x3fd7882369e555c6              # double 0.36768422452345495
	.quad	0x3fddf4a33441ae82              # double 0.46805648902111596
	.quad	0x3fea789922673ddd              # double 0.82722145766632205
	.quad	0x3fc6036578be06c8              # double 0.17197864909763028
	.quad	0x3fde2a70e91d7548              # double 0.47134039654868731
	.quad	0x3feb6f04f5334d2c              # double 0.85730216875746156
	.quad	0x3fe14b57204d0170              # double 0.54044681843519804
	.quad	0x3fce84205b9e1ca8              # double 0.23840717767254671
	.quad	0x3fb23aaac7e17e18              # double 0.071207689093619186
	.quad	0x3fdd35a8722a783c              # double 0.45640002392781631
	.quad	0x3fe3cab794332cf8              # double 0.61849574036878519
	.quad	0x3fe0920dc0491076              # double 0.51782882266753805
	.quad	0x3fb23da6f1f06050              # double 0.071253236834651235
	.quad	0x3fd4b1e9300e16c4              # double 0.32335881893991947
	.quad	0x3f6f29e5f1617d00              # double 0.0038041583130020706
	.quad	0x3fdc6cf5374ca1e6              # double 0.44415026092840859
	.quad	0x3fdf0cbd55c0cd42              # double 0.48515256285027786
	.quad	0x3fa39c8317d2fbc0              # double 0.038303467424604332
	.quad	0x3fece1d57e3aa763              # double 0.90256762174724903
	.quad	0x3fd67f93543366ce              # double 0.35153659079297206
	.quad	0x3fe602d270e9328d              # double 0.68784448674121423
	.quad	0x3fb702f71a542550              # double 0.089888996055511372
	.quad	0x3fe34c34cf30def9              # double 0.60305252520535568
	.quad	0x3f8051f1d6ed4f00              # double 0.0079687970843802525
	.quad	0x3fe43ed340f29647              # double 0.63266909298972329
	.quad	0x3fd3429aa83cf502              # double 0.30094019345763467
	.quad	0x3fe8649601cbcd70              # double 0.7622785601692339
	.quad	0x3fed0a77d3ab1d8c              # double 0.90752784100998118
	.quad	0x3fd05210c1c6863a              # double 0.2550088779772498
	.quad	0x3f9c5bfc73b1a9e0              # double 0.02769464927806975
	.quad	0x3fd93c056164cb38              # double 0.39428839217287104
	.quad	0x3fea17f2eb3127b2              # double 0.81542344985904536
	.quad	0x3fea78592001f16b              # double 0.82719093562586232
	.quad	0x3fb95aa32d789618              # double 0.099039267159774957
	.quad	0x3fabc8c3466deda0              # double 0.054266073558177697
	.quad	0x3fcf6bb61310ac7c              # double 0.24547458582796711
	.quad	0x3fa669ed0a01c9c0              # double 0.043776900741153479
	.quad	0x3feeb62e9dc37877              # double 0.95973902524180132
	.quad	0x3fec4a1a322ddc6f              # double 0.88404569435705393
	.quad	0x3fe627fc5798335c              # double 0.69238106830890045
	.quad	0x3fe0165a6f4196c1              # double 0.50272866945007177
	.quad	0x3fe67b2617e109ee              # double 0.70253281272772283
	.quad	0x3fe15eb376c41f51              # double 0.54281018444542373
	.quad	0x3fec8ec1d31540de              # double 0.89242640711929844
	.quad	0x3fd6b5ce0c03ce46              # double 0.35484648869826108
	.quad	0x3fdfd7aabe3a16d0              # double 0.4975382669148134
	.quad	0x3fda684140dafa80              # double 0.41261321385892558
	.quad	0x3fe70efbbdb18b68              # double 0.72057902383344885
	.quad	0x3fa4262366658870              # double 0.03935347199400574
	.quad	0x3feefb5045e99ec8              # double 0.9681779256324825
	.quad	0x3fc343a12fb92614              # double 0.15050139265285678
	.quad	0x3fc278dacc02ed74              # double 0.14431319200034987
	.quad	0x3fdb0cad194d1182              # double 0.4226486918526221
	.quad	0x3fc693cefe1dfa6c              # double 0.17638575943051948
	.quad	0x3fc6b3a8827b951c              # double 0.17735773440578206
	.quad	0x3fea67271551d316              # double 0.82509187854757005
	.quad	0x3fc7e6310cc62288              # double 0.1867123901722787
	.quad	0x3fe13bfdc8ebd6ed              # double 0.53857316248351383
	.quad	0x3fe71dc657483048              # double 0.72238461539519339
	.quad	0x3fec537c8122bc0e              # double 0.88519120427906883
	.quad	0x3fcc05e7fc259b5c              # double 0.21893024265156213
	.quad	0x3fdb9c21476a918c              # double 0.43140441869970725
	.quad	0x3fce830da8ea2bd8              # double 0.23837443111219048
	.quad	0x3fcb9ad6ae324b60              # double 0.2156627989357629
	.quad	0x3fea0907c19b4055              # double 0.81360233129272308
	.quad	0x3fe1a5da4729e26f              # double 0.55149568461554377
	.quad	0x3fdca591caa281dc              # double 0.44760556019357778
	.quad	0x3fd43835ada7c84a              # double 0.31593076666388653
	.quad	0x3fde27d3b58d32fc              # double 0.47118084649700598
	.quad	0x3feed0fd5d0d0d13              # double 0.9630114381219833
	.quad	0x3fd1a77fdb4d5924              # double 0.27584835449433087
	.quad	0x3fe2679da0f1a032              # double 0.57514840540262058
	.quad	0x3fba37ccc3dadb20              # double 0.10241393834699553
	.quad	0x3fe951d061684512              # double 0.79123705887664841
	.quad	0x3fe8887ebbbf8d06              # double 0.76666199369029253
	.quad	0x3fee8b1244a3337f              # double 0.9544764843536625
	.quad	0x3fea87ce263f980d              # double 0.82907779188531239
	.quad	0x3fd536cbe5499de4              # double 0.33146951094974342
	.quad	0x3fecffce99ba3b03              # double 0.90622644448180301
	.quad	0x3fe4552634ac0260              # double 0.63539419448359169
	.quad	0x3fa1e80e20058840              # double 0.034973565491569492
	.quad	0x3fdf7be4157cb4ec              # double 0.49193670366623965
	.quad	0x3fe3bfbdc5e5440a              # double 0.61715592051962287
	.quad	0x3fef97b84be599ae              # double 0.9872704965935577
	.quad	0x3fdad981ba115a8c              # double 0.41952555819208537
	.quad	0x3fda9723ac890b1e              # double 0.41547481393006247
	.quad	0x3fd314befd2aab92              # double 0.29814123843487395
	.quad	0x3fee84790b6fdbbe              # double 0.95367099984911596
	.quad	0x3fd7145862b4c286              # double 0.36061677588717378
	.quad	0x3fd1f988f511857c              # double 0.28085540707078116
	.quad	0x3f4b583100079400              # double 8.3448784431239265E-4
	.quad	0x3fc2e7730eaaf664              # double 0.14768827644541027
	.quad	0x3fd54a338f09f69a              # double 0.33265389412540858
	.quad	0x3fe0e8b6ca64a064              # double 0.52840747384926745
	.quad	0x3fe13c0f06c54769              # double 0.53858138391863719
	.quad	0x3fc332f5df6a9014              # double 0.14999268921849362
	.quad	0x3fd6c9403732c67a              # double 0.35603337660277357
	.quad	0x3fccdb9907c59dd4              # double 0.22545159224976763
	.quad	0x3fd6ccfa62d960b4              # double 0.35626086858020334
	.quad	0x3fcb390de95275ec              # double 0.21267866032296412
	.quad	0x3fde14d54db98d9c              # double 0.47002155866922535
	.quad	0x3fd0b3874e9b188c              # double 0.26095755268432508
	.quad	0x3fe1a778990abfd8              # double 0.55169324770940431
	.quad	0x3fe9f383f77b4bb9              # double 0.81097601257567142
	.quad	0x3fcdd0f6ea217c0c              # double 0.23293959076087878
	.quad	0x3fe1130046c5f3a3              # double 0.53356946776294867
	.quad	0x3fec0070de9768bb              # double 0.8750538203705881
	.quad	0x3fdcc706759bd99a              # double 0.44964753613694486
	.quad	0x3fe87133090992fa              # double 0.76381828084103565
	.quad	0x3fe0ac6b8421cb12              # double 0.52104736144096564
	.quad	0x3fe211665dec0839              # double 0.5646240076459953
	.quad	0x3feef2c9b0ea7c48              # double 0.96713718942545146
	.quad	0x3fc032dccd1730bc              # double 0.1265522004526981
	.quad	0x3fe73f07b77fd04c              # double 0.7264441093416365
	.quad	0x3fe95fb4e88ecbe9              # double 0.79293294354863264
	.quad	0x3fe646b055ac177e              # double 0.69612900479181383
	.quad	0x3fd7ae9c186aa3b8              # double 0.37003233322553397
	.quad	0x3fe38cc746c3eb86              # double 0.61093486615514858
	.quad	0x3fd7d4d7947b586e              # double 0.37236585140397593
	.quad	0x3febe1ff4e8a1647              # double 0.87133756007887875
	.quad	0x3fdd0bad5c2dbae6              # double 0.45383771898097647
	.quad	0x3fe24bbd7e45c9af              # double 0.57174563086146246
	.quad	0x3fddbdb40d0cc18a              # double 0.46470357202908785
	.quad	0x3fe13ce0f5bc6e0d              # double 0.53868148799250692
	.quad	0x3fe84ec61c223eba              # double 0.75961595053555375
	.quad	0x3feb57127d5b2fa1              # double 0.85437893375045715
	.quad	0x3fef3b0546073099              # double 0.97595466306076439
	.quad	0x3fd76548cedc9120              # double 0.36555690957381337
	.quad	0x3fcd4820d4d01d98              # double 0.22876367942101861
	.quad	0x3feb9c8313bdd57b              # double 0.86285547118920591
	.quad	0x3f8d6c548ca40740              # double 0.014366779844298017
	.quad	0x3fe58822347e47b5              # double 0.67286787273973536
	.quad	0x3f9aa0fa8f2dc940              # double 0.026004710186904534
	.quad	0x3fee9b148067e22e              # double 0.95643067435509521
	.quad	0x3fd88e2c95c313f8              # double 0.38367762208173373
	.quad	0x3fe4a2b11af90acf              # double 0.64485984104279648
	.quad	0x3feff170b7783b62              # double 0.99822269281308373
	.quad	0x3fe0798bdbef04c4              # double 0.51483719783586723
	.quad	0x3fc8128325210cb8              # double 0.18806495011276581
	.quad	0x3fed82ae63351973              # double 0.92220229507874618
	.quad	0x3fa3f1dd0c846610              # double 0.038954646852470742
	.quad	0x3febeda00bafa00e              # double 0.87275697977475075
	.quad	0x3fe74ba1fc68a115              # double 0.72798251436782613
	.quad	0x3fc2005feac25c5c              # double 0.14063643420078875
	.quad	0x3fcd440c7684d448              # double 0.22863918101362146
	.quad	0x3fedbcc0f18987d0              # double 0.92929122138252218
	.quad	0x3fd489058d8b9476              # double 0.32086314032341734
	.quad	0x3fd93793b95a870c              # double 0.39401715374889146
	.quad	0x3fdb0d29995d30f4              # double 0.42267837502437478
	.quad	0x3fee5a4c0a34035e              # double 0.94852258675392043
	.quad	0x3fc69652db4a16e4              # double 0.17646251399508295
	.quad	0x3fea9bdc216a978b              # double 0.83152586485515323
	.quad	0x3fe702e211236a59              # double 0.71910193774540254
	.quad	0x3fd2a7ce0a3d428a              # double 0.29149199485713295
	.quad	0x3fed0661bea00e6e              # double 0.90702903014648739
	.quad	0x3fc0bd2cd246f2ac              # double 0.13077316539228911
	.quad	0x3fc6d5d1d72532c0              # double 0.17840025906698109
	.quad	0x3fe27dafe9d12189              # double 0.57784267108313359
	.quad	0x3fe87b127f074617              # double 0.76502346811520539
	.quad	0x3fcc5ab1d59bc7f4              # double 0.22151778154471879
	.quad	0x3fdc75293645d25a              # double 0.44465093898842201
	.quad	0x3fea67e5c4496212              # double 0.82518280350911
	.quad	0x3fe2d27e63b70d6e              # double 0.58819503284068531
	.quad	0x3fe8a0b81e4448ff              # double 0.76961904441330364
	.quad	0x3fcf058cc3d08a70              # double 0.24235686837444659
	.quad	0x3fc3e6c220c55564              # double 0.15547968483103169
	.quad	0x3fc0f52ebe568c3c              # double 0.13248237890101844
	.quad	0x3fd868b9a326813e              # double 0.38139191563279329
	.quad	0x3fd9a4547120604c              # double 0.40065489814287925
	.quad	0x3fd69fd5f37d5b6c              # double 0.3535055997685308
	.quad	0x3f73ec80ee192480              # double 0.0048642193156150926
	.quad	0x3fc8f802f9c1dd14              # double 0.19506871409587545
	.quad	0x3fd482bf2a55265e              # double 0.32048014768642996
	.quad	0x3fa97baff4afcdf0              # double 0.049771784419046727
	.quad	0x3fafc199c72a6de0              # double 0.062023931085800177
	.quad	0x3fe69fe6db978161              # double 0.70701926125552117
	.quad	0x3fde43581aebb988              # double 0.47286036137565945
	.quad	0x3fbf4b03d6c667b8              # double 0.122238387999828
	.quad	0x3fe4911b4401f468              # double 0.64271319658986403
	.quad	0x3fc15ae3e799da44              # double 0.13558625038759164
	.quad	0x3f7b3c280c49bc00              # double 0.0066491665244106102
	.quad	0x3fd316500a7179ca              # double 0.2982368566498762
	.quad	0x3feb7847317f3938              # double 0.85843238513351761
	.quad	0x3fef689f61b9cfd2              # double 0.98152131163669254
	.quad	0x3fec540d51a9d5f1              # double 0.88526025724303115
	.quad	0x3febc88fc3228411              # double 0.86823261368056326
	.quad	0x3fe2255fe5f0b70d              # double 0.56706232938970091
	.quad	0x3fcf24348bd3e7e8              # double 0.24329239680793013
	.quad	0x3fddd08b27673d60              # double 0.46585348937965954
	.quad	0x3fcd58f228a41a98              # double 0.229276914448026
	.quad	0x3fe55677533dea7a              # double 0.6668049455468712
	.quad	0x3fe326168ea5aa99              # double 0.59839942799347334
	.quad	0x3fefe8ba909be265              # double 0.99715927356653522
	.quad	0x3fd48654bffd0da4              # double 0.32069891690135877
	.quad	0x3fd06a30f08427a4              # double 0.25648139465249131
	.quad	0x3fabbfae08942a30              # double 0.054196775958264332
	.quad	0x3fe1dc674014bf5d              # double 0.5581547023375425
	.quad	0x3fc62f96bdebc888              # double 0.17332729600417829
	.quad	0x3fd7bdc94139dc5e              # double 0.37095862741211316
	.quad	0x3fee940a4487cf1c              # double 0.95557130226959285
	.quad	0x3fe190fbe4fe24fc              # double 0.5489482376589474
	.quad	0x3fe543b3dfb935c7              # double 0.66451448150626724
	.quad	0x3fe454ef715135f2              # double 0.63536808140059819
	.quad	0x3fe6b3fe2b14b6d3              # double 0.70947178282014034
	.quad	0x3fd31d793fb8c094              # double 0.29867392752476829
	.quad	0x3fdd4c638bf462ba              # double 0.45778740565723874
	.quad	0x3fe3828acf46c31a              # double 0.60968533023524007
	.quad	0x3fcb29cc8fbfe720              # double 0.21221310633682666
	.quad	0x3fe32bb7a9022f00              # double 0.59908659944036913
	.quad	0x3fa2a413c167b230              # double 0.036408059462562981
	.quad	0x3fc9dd1d8b8f2ff0              # double 0.20206040682239701
	.quad	0x3feab9e6e3492109              # double 0.83519310371141942
	.quad	0x3fea61702dcb6b62              # double 0.82439431137332186
	.quad	0x3fe9a6f8f55660bf              # double 0.80163238446677798
	.quad	0x3fd45f69d7fbab30              # double 0.31832357494447461
	.quad	0x3fe842d66469ce54              # double 0.75815887081121013
	.quad	0x3fec0d4744d0e92c              # double 0.87662089768062889
	.quad	0x3fd56d50dfd420dc              # double 0.33479711397423073
	.quad	0x3fa58eca8a503ba0              # double 0.04210503519435993
	.quad	0x3f8672b52dadca80              # double 0.01096097512865879
	.quad	0x3fd53a30e237cbe2              # double 0.33167669383618492
	.quad	0x3fe2886192ed1855              # double 0.579148089375631
	.quad	0x3fe038dce00f6181              # double 0.50694125901922871
	.quad	0x3fce4ad88cdea8f0              # double 0.23665911558538921
	.quad	0x3fa4e867933d6ac0              # double 0.040835606311437456
	.quad	0x3fa873e882e763f0              # double 0.047759309749103696
	.quad	0x3fed9ce8ee0b9284              # double 0.9254040383644484
	.quad	0x3fee31a3ff06f56a              # double 0.943559644794431
	.quad	0x3fdcda1dd2ba0850              # double 0.4508127744558168
	.quad	0x3fe73698bdb38afb              # double 0.72541462946932656
	.quad	0x3fd23152cc632ef0              # double 0.28426046333036847
	.quad	0x3fefe70ca9f5ccf1              # double 0.99695428080886305
	.quad	0x3f9d816f59dc7ca0              # double 0.028814067706772861
	.quad	0x3fb9a4266d740688              # double 0.10016098186681621
	.quad	0x3fe574c74d388db9              # double 0.67050519067964054
	.quad	0x3fec2333d9ad0c42              # double 0.8792971850856548
	.quad	0x3fdb389bf95c8aa8              # double 0.4253301558657463
	.quad	0x3fd48ffe7ad9a06a              # double 0.32128870007591692
	.quad	0x3fcde12974ed8b48              # double 0.23343389710779605
	.quad	0x3fe2cbfdd5367d79              # double 0.58740131037841004
	.quad	0x3fbe2210aa2bebe0              # double 0.1177072921235971
	.quad	0x3fdd73ea6c685352              # double 0.46019993387863167
	.quad	0x3fd5053ab9c5b13c              # double 0.32844417707271467
	.quad	0x3fef77ce5c88deeb              # double 0.98337476800130951
	.quad	0x3fd557d4836a9b0a              # double 0.3334857257236058
	.quad	0x3fe9c341ddc54898              # double 0.80508511843278807
	.quad	0x3fc854096a60c79c              # double 0.1900645989822437
	.quad	0x3feb18383d0537b3              # double 0.84670650404017633
	.quad	0x3fce51081100f42c              # double 0.23684788542041824
	.quad	0x3fccc733e5e8f20c              # double 0.22482918478080227
	.quad	0x3fe19521590c232b              # double 0.54945437805245001
	.quad	0x3fdbb1f4427ba562              # double 0.43273645870666233
	.quad	0x3fdfc76bd3fdc4ae              # double 0.49654670431398074
	.quad	0x3fcbfe6ff7b99294              # double 0.21870231243078264
	.quad	0x3f95432749ad33c0              # double 0.020763982650624291
	.quad	0x3fd48c13c61a9ad2              # double 0.32104963632666028
	.quad	0x3fede2f7f56291fc              # double 0.9339561264683307
	.quad	0x3fd5de55f0419760              # double 0.34169529402276133
	.quad	0x3fe50614e5dcb559              # double 0.65699238676976812
	.quad	0x3fe792cbae60c3bc              # double 0.73666938837242624
	.quad	0x3fcf7749f9347d04              # double 0.24582791012014849
	.quad	0x3fe315da5fe38593              # double 0.59641760566971624
	.quad	0x3fd9732601a353ec              # double 0.39765310440026158
	.quad	0x3feb490489ad3480              # double 0.85266329660375106
	.quad	0x3fb41d30e04519d8              # double 0.078570418122672847
	.quad	0x3f96195f56556320              # double 0.021581163067227682
	.quad	0x3fd89feed2229ac8              # double 0.38476152916920769
	.quad	0x3fe92ca8407015a0              # double 0.78670132241738954
	.quad	0x3fb9857902fc7cf0              # double 0.099692881802628141
	.quad	0x3fed7097892da9a5              # double 0.9199941329255138
	.quad	0x3fd5e52ef8559224              # double 0.34211324931519216
	.quad	0x3fe12cf2eb5ada5d              # double 0.53673692672493767
	.quad	0x3fb8260fd0d462d0              # double 0.09433077667598444
	.quad	0x3fa76ebbc2157780              # double 0.045766704027058402
	.quad	0x3feaa10fd1d7a21c              # double 0.83216086373164754
	.quad	0x3fe1ba9e2846b43a              # double 0.55403049341624144
	.quad	0x3fe1413b95239272              # double 0.53921298149778196
	.quad	0x3fe0e208e75742fa              # double 0.527592136228207
	.quad	0x3feac2fe21a95638              # double 0.83630281996256084
	.quad	0x3feb39fd26312ef8              # double 0.85082871875189792
	.quad	0x3fe0c4ae3d34d4a0              # double 0.52400886492127441
	.quad	0x3fbca129802c42a0              # double 0.11183413867207515
	.quad	0x3fa43367f452cc30              # double 0.039454697203290201
	.quad	0x3fc16eb0990908e4              # double 0.13619048569132197
	.quad	0x3fec7d3c7e9a9a0c              # double 0.89028763511015673
	.quad	0x3f833010b173ccc0              # double 0.0093690208582074552
	.quad	0x3fd4e6634af95bd2              # double 0.32656175920186314
	.quad	0x3fe5a0cece59a86b              # double 0.67587986281183754
	.quad	0x3f9816f217d2e340              # double 0.023525030807579173
	.quad	0x3fd6affedaab914c              # double 0.35449191431532223
	.quad	0x3fd06dbcdba55d8a              # double 0.25669785928536071
	.quad	0x3fe1589730b2da85              # double 0.54206428061918699
	.quad	0x3fe0c6b819f0caac              # double 0.52425770823022821
	.quad	0x3fe8d8a213ac619b              # double 0.77644447176412557
	.quad	0x3fe11458ee3a48c9              # double 0.53373381165354161
	.quad	0x3fe7ddeeb2c7f7a4              # double 0.74584135931194284
	.quad	0x3fba3e5179e06570              # double 0.10251340127469688
	.quad	0x3fe078a960424a8a              # double 0.51472920227600238
	.quad	0x3fd8d6766e71f45a              # double 0.38808975968988124
	.quad	0x3fdb0f0bd57c60ee              # double 0.42279334877231534
	.quad	0x3fedf9fef179de30              # double 0.93676707423487038
	.quad	0x3fdb6d32736e678e              # double 0.42853986046395043
	.quad	0x3f996ed7463ba820              # double 0.024836887036976063
	.quad	0x3fe09fe0653e9cf1              # double 0.51951617979366749
	.quad	0x3fd0d750b96070aa              # double 0.26314180472560145
	.quad	0x3fe22a7742ecb491              # double 0.56768382140366402
	.quad	0x3febac3991fb0dcc              # double 0.8647735453782217
	.quad	0x3fd4a45826c1f124              # double 0.3225307825557755
	.quad	0x3fc229318b979910              # double 0.1418821269609869
	.quad	0x3fde2d9a4ff7ff00              # double 0.47153337296911957
	.quad	0x3feba1528afc1ccb              # double 0.86344267983886291
	.quad	0x3fd716d24996c2f2              # double 0.36076790987412644
	.quad	0x3fdd5a1a39d5c206              # double 0.45862441680859012
	.quad	0x3fe9425caebfe415              # double 0.78935083514000104
	.quad	0x3fb1ebf945280e40              # double 0.070006923087981399
	.quad	0x3fd9fa9a4c3bd068              # double 0.40592057652179969
	.quad	0x3fc8af30e5ff94b8              # double 0.19284640531910724
	.quad	0x3fec7a628ebe5f50              # double 0.88993957404725599
	.quad	0x3fd8e183e406df40              # double 0.38876435535665976
	.quad	0x3fe99e49b24ae8ce              # double 0.80057225058342296
	.quad	0x3facb3244ccf0a90              # double 0.05605424344641563
	.quad	0x3fed84e6016b7fe0              # double 0.92247295644119375
	.quad	0x3fce10029bd186b0              # double 0.23486359222720443
	.quad	0x3fd15f5b743a317c              # double 0.27144514417957288
	.quad	0x3fec6f3b3bbc6377              # double 0.88857804934660478
	.quad	0x3fc95af920ce7a10              # double 0.19808878042108846
	.quad	0x3f6f5a08dc90d700              # double 0.0038271115377267462
	.quad	0x3fd33c76e1ee5fe0              # double 0.30056545318211469
	.quad	0x3fdb17677624b0f6              # double 0.42330347573694327
	.quad	0x3fe4c0abf0a23ae2              # double 0.64851948736926723
	.quad	0x3fcdc79a4e456fe8              # double 0.23265389272535164
	.quad	0x3f74eb5d522ee780              # double 0.005107273612276475
	.quad	0x3fedf564843b7cf2              # double 0.93620515658031267
	.quad	0x3f92adac2ac69f00              # double 0.018240633116561433
	.quad	0x3fe6d2e060d1eb9f              # double 0.71324175748974372
	.quad	0x3fe1c8f41606321d              # double 0.5557804517898749
	.quad	0x3fdf45dd6203c8da              # double 0.48863920757061197
	.quad	0x3fddf92e2c6305b2              # double 0.46833376249932279
	.quad	0x3fec65a1331d1f45              # double 0.88740596755176482
	.quad	0x3faa18c489008b40              # double 0.050970212673084436
	.quad	0x3feede5087c63546              # double 0.96463800924690513
	.quad	0x3fe733df37ebc2ae              # double 0.72508202478464567
	.quad	0x3fe4f12b883e3655              # double 0.65443970308269661
	.quad	0x3fe0e35ae6ace285              # double 0.52775330594802539
	.quad	0x3fb06cc9077dd1e0              # double 0.064159931496596823
	.quad	0x3fd4fc9ade8ddb70              # double 0.32791778310586661
	.quad	0x3fea659b9b0b90c1              # double 0.8249033001161693
	.quad	0x3fe2f4e0d5e43597              # double 0.59239236617729574
	.quad	0x3fd38d192c016db6              # double 0.30548695847911789
	.quad	0x3fdea6584c419496              # double 0.47890288779155676
	.quad	0x3fc5b5389456627c              # double 0.16959292643584323
	.quad	0x3fc03826270a8988              # double 0.12671353250796025
	.quad	0x3f8aad44a9378b40              # double 0.013025795377819116
	.quad	0x3fe84ae6df7ad122              # double 0.75914329193486574
	.quad	0x3fe59e09015a08b8              # double 0.67554140342715296
	.quad	0x3fe452ebf8ca4187              # double 0.63512228576478058
	.quad	0x3fb35a39d86457e0              # double 0.075595488863057891
	.quad	0x3fc8864dd0c9cb28              # double 0.19159863180865355
	.quad	0x3fe89a4589829682              # double 0.76883198602145364
	.quad	0x3fec71605e5db3fc              # double 0.88883989745011104
	.quad	0x3fe34ce6ab13af33              # double 0.60313733495192989
	.quad	0x3fe1cede221c3b9a              # double 0.55650240575947696
	.quad	0x3fdce9f918f3ba48              # double 0.45178058087086415
	.quad	0x3fe12d26e797033f              # double 0.53676171524430305
	.quad	0x3fec9925ccb65009              # double 0.89369478209346298
	.quad	0x3fcea8bba19b3fec              # double 0.2395243205160108
	.quad	0x3fceb58206bb8860              # double 0.23991418198335435
	.quad	0x3fcc16c2f9c42778              # double 0.21944462962738576
	.quad	0x3fe2d90549af9d7d              # double 0.58899177924915558
	.quad	0x3fde9f36d0720bc6              # double 0.4784676585770139
	.quad	0x3fe289b55370d10d              # double 0.57931009575853099
	.quad	0x3febd822a567948d              # double 0.87013370805347423
	.quad	0x3fd5ffc601ab7e0c              # double 0.34373617327762029
	.quad	0x3fbdb9234c943178              # double 0.11610622996903952
	.quad	0x3fed0deb0f8bdfb7              # double 0.90794899975207144
	.quad	0x3fd5490d512923cc              # double 0.3325837414345727
	.quad	0x3fe6157677a99827              # double 0.69011996623590199
	.quad	0x3fde868a506783f8              # double 0.47696168758380919
	.quad	0x3feb15826ce7f866              # double 0.84637566824654864
	.quad	0x3fe459edd1470418              # double 0.63597765802853967
	.quad	0x3fe8ffdd9b2b4ff3              # double 0.78123359972459949
	.quad	0x3fe8754537f2221a              # double 0.76431523253365019
	.quad	0x3fe679ac0fce5d6e              # double 0.70235255324489088
	.quad	0x3fe15438a8e38e07              # double 0.54153092371092348
	.quad	0x3fb2022c35ed4fd8              # double 0.070345652738353137
	.quad	0x3fedb567b16524e5              # double 0.92839417121390666
	.quad	0x3feeb8946d36c14b              # double 0.96003171282613075
	.quad	0x3fbdf8303d58eb78              # double 0.11706830499399057
	.quad	0x3feffcd30e47624b              # double 0.99961235798679959
	.quad	0x3fe397bffe7196da              # double 0.61227416702305537
	.quad	0x3fccc5b294a94680              # double 0.2247832513699457
	.quad	0x3fbd1cd1337f4fb0              # double 0.11372096545465982
	.quad	0x3fe9b3ddfa4679c2              # double 0.8032064331235278
	.quad	0x3fe32cbfba8ba731              # double 0.59921251711532453
	.quad	0x3fde6eaf8c96cc46              # double 0.47550572137260294
	.quad	0x3fef77d19a52b999              # double 0.98337631360282096
	.quad	0x3fcc808fefc40c5c              # double 0.22267340857806317
	.quad	0x3fef0faf4e594e4e              # double 0.97066464712629297
	.quad	0x3fc7ecd8b4c83bf8              # double 0.18691548182729867
	.quad	0x3fa9f24d4705bc20              # double 0.050676741523482116
	.quad	0x3fd31cc20f6f5d18              # double 0.29863025195432291
	.quad	0x3fd7a575b01dbfe6              # double 0.36947385977600644
	.quad	0x3fe25df5f44480da              # double 0.57396981915010348
	.quad	0x3fe519708650074b              # double 0.65935541375095263
	.quad	0x3fe79ad3c5b0ecb9              # double 0.73764980899377186
	.quad	0x3fe736437fd94457              # double 0.7253739831013587
	.quad	0x3fe59ec81c6f7ffa              # double 0.67563252977197341
	.quad	0x3fe02eda466ecae2              # double 0.50571931606677034
	.quad	0x3fc7ffac75b6d1b0              # double 0.18749004123459434
	.quad	0x3fefa6fafc143361              # double 0.98913335069810781
	.quad	0x3fea2a5834fbbabc              # double 0.8176690134840423
	.quad	0x3fd20b251c1167c6              # double 0.2819302343465292
	.quad	0x3fbbdd40ca07d268              # double 0.10884480411898212
	.quad	0x3fe9e5c2c3fd22c0              # double 0.80929697302880044
	.quad	0x3fe94fd5d6d28ca1              # double 0.79099552114020721
	.quad	0x3f8dc917dd39ca80              # double 0.014543711127065651
	.quad	0x3fe64a0df633dc56              # double 0.69653986059609951
	.quad	0x3f9c71a4b06554a0              # double 0.02777726484903964
	.quad	0x3fec7a960fd16c57              # double 0.88996413316216205
	.quad	0x3fe88e7fb49fcc2b              # double 0.76739487913289872
	.quad	0x3f9b6ce8fb7fd540              # double 0.026782646513273223
	.quad	0x3fdd922e786be816              # double 0.4620472122184095
	.quad	0x3fea0a90ef56819f              # double 0.81378981347738832
	.quad	0x3fe6216a9394909a              # double 0.69157913994105802
	.quad	0x3fe8f340ee4473ca              # double 0.77969404732322656
	.quad	0x3fe49a3507060408              # double 0.64382411357667113
	.quad	0x3fc2d89f5dc321f8              # double 0.14723579481348259
	.quad	0x3fe440f700611e64              # double 0.63293027948470781
	.quad	0x3fedd4c9a39243fb              # double 0.93222505519418009
	.quad	0x3fd595b9989c3bea              # double 0.33726348784779125
	.quad	0x3fde834910b88298              # double 0.47676302559742956
	.quad	0x3fbda358f41d3470              # double 0.11577373466316643
	.quad	0x3fdb68c32b7d1efa              # double 0.42826918837498307
	.quad	0x3fd45ca7503fad9a              # double 0.31815512501517562
	.quad	0x3f9f991e0710f7e0              # double 0.030857533627788203
	.quad	0x3fdee0052e1c501c              # double 0.48242311003673577
	.quad	0x3fd6d39579be5c1a              # double 0.35666405571959248
	.quad	0x3fd7ff6ce2240e72              # double 0.37496492466036735
	.quad	0x3fdfa9b49b37e4e2              # double 0.4947330013088288
	.quad	0x3fd1c015b75ded42              # double 0.27734892756389595
	.quad	0x3fe48d273bccbd7f              # double 0.64223062209741488
	.quad	0x3fd76cf3910fc392              # double 0.3660248676888439
	.quad	0x3fe8b9a2b3e01f74              # double 0.77266059047631907
	.quad	0x3fc720b0b6f47aa4              # double 0.18068512853002006
	.quad	0x3fec419509c30976              # double 0.88300563723195924
	.quad	0x3fdd0aeaa6754260              # double 0.45379129653614392
	.quad	0x3fe6edca465a88b8              # double 0.71652711621233944
	.quad	0x3fe2e84a86d4a878              # double 0.59085584959144821
	.quad	0x3fe4db7a16e9d5b8              # double 0.65179161525036644
	.quad	0x3fe5d015f3b45b97              # double 0.68165109251536904
	.quad	0x3fec1a18b55b80c2              # double 0.87818561002134055
	.quad	0x3fe24738dc3436a2              # double 0.57119410523019476
	.quad	0x3fef593e01261a32              # double 0.97964382385618465
	.quad	0x3fc27ab055acc47c              # double 0.14436916526168264
	.quad	0x3fc797f5cc25959c              # double 0.1843249556360832
	.quad	0x3fedbcac82de150f              # double 0.92928147850094145
	.quad	0x3fc44e1b4720ee9c              # double 0.15863362286642235
	.quad	0x3fd1c5d85ab6a904              # double 0.27770050867788165
	.quad	0x3fe229a59e68e01f              # double 0.56758385600460659
	.quad	0x3feb1cd68f1c07e8              # double 0.84727027846406333
	.quad	0x3fb8ff1c59fffaf0              # double 0.097642681095731154
	.quad	0x3fe02379ba2ed0fa              # double 0.50433050502627386
	.quad	0x3fe315f73b406c31              # double 0.59643136570537625
	.quad	0x3fe9b2d3a05c54d7              # double 0.80307942696040413
	.quad	0x3fe77eccf37b131c              # double 0.73422858767353061
	.quad	0x3fd4826d69db74a8              # double 0.32046065652486755
	.quad	0x3f7fe3175896f900              # double 0.0077849304156514254
	.quad	0x3fdb5fe042938b3a              # double 0.42772680760952009
	.quad	0x3fc209c56d95aa58              # double 0.14092319346248661
	.quad	0x3fe2ac1b623618be              # double 0.58350915128610104
	.quad	0x3fd3e48b9bc5fd74              # double 0.31082430088277779
	.quad	0x3fc2410a6f63e70c              # double 0.14260988654114504
	.quad	0x3fcab9fc1d5e6ba8              # double 0.20880080637001908
	.quad	0x3fd3ce287961a05e              # double 0.30945789197585849
	.quad	0x3fbb248740dc2cd0              # double 0.10602612813470391
	.quad	0x3fd03ed183537b64              # double 0.25383413147749523
	.quad	0x3fef00dc2ae206c7              # double 0.96885498405045999
	.quad	0x3fee243c3642d1e6              # double 0.94192324254850912
	.quad	0x3fef1636612c38a6              # double 0.97146147707987462
	.quad	0x3fb636079d1d6bb0              # double 0.08676192842305741
	.quad	0x3fed7a7570e67945              # double 0.92119857836568342
	.quad	0x3fef08d982d8ea0e              # double 0.96983027988545856
	.quad	0x3fecef4b53f9953d              # double 0.90421072388986767
	.quad	0x3fed1fab4f718053              # double 0.91011586681634993
	.quad	0x3fe730f7ea423bf6              # double 0.72472759011895849
	.quad	0x3fecbfa50a3aebf3              # double 0.89839412687376663
	.quad	0x3fd99ec3756b66d6              # double 0.40031515566589115
	.quad	0x3f935cdcdb3014c0              # double 0.018908930662310253
	.quad	0x3fc02dc198c19a14              # double 0.12639636954118372
	.quad	0x3fd24cc1a0eed522              # double 0.2859348365412463
	.quad	0x3fe09b8d6ab7a5c9              # double 0.5189883312534046
	.quad	0x3fde5224e9513932              # double 0.47376368317499662
	.quad	0x3fc21076d9a2951c              # double 0.14112744929040211
	.quad	0x3feca4307b4252de              # double 0.89504264902151554
	.quad	0x3fe37152071920ea              # double 0.60758305918082312
	.quad	0x3fd6a3792b621c10              # double 0.35372761952061271
	.quad	0x3fea193a91a4cda4              # double 0.81557968565032412
	.quad	0x3fc23a7c2e23901c              # double 0.1424098229682621
	.quad	0x3fe96377865c8711              # double 0.79339195482700309
	.quad	0x3fe21410e5efc3b4              # double 0.56494946393478651
	.quad	0x3fd30efe72171f58              # double 0.29779015676148424
	.quad	0x3feb391af55f520f              # double 0.85072086262022306
	.quad	0x3fe8d0d105b739cc              # double 0.77549029461243312
	.quad	0x3fd70ff14cf4c8ca              # double 0.36034805789234936
	.quad	0x3fe2b604e4462a64              # double 0.58471912941724868
	.quad	0x3fe1ab398e384b78              # double 0.55215146806072735
	.quad	0x3feda1dde1b2a78f              # double 0.92600912171950422
	.quad	0x3fecd7961168a5cb              # double 0.90131667518760972
	.quad	0x3fefc71189fc100e              # double 0.99305035543557252
	.quad	0x3fb183715399f058              # double 0.068411906156997104
	.quad	0x3fe58fa21bf8b8b4              # double 0.673783354408235
	.quad	0x3fc60e87c4afa86c              # double 0.17231843093697152
	.quad	0x3fe0a5e1ab6a5b42              # double 0.52024920920926143
	.quad	0x3febdd11b350ccfa              # double 0.87073597929557356
	.quad	0x3fccf937c11bc07c              # double 0.22635552338715914
	.quad	0x3feaed297fe84b0f              # double 0.84145045263207574
	.quad	0x3fdd9c2f03fb910a              # double 0.46265769375737931
	.quad	0x3febb4c4afec187f              # double 0.86581644401373115
	.quad	0x3fcfbed7ce502e78              # double 0.24801156591307794
	.quad	0x3fdbe5bf6aa39f92              # double 0.43589768804530948
	.quad	0x3fd5a97e313badb0              # double 0.33847002799913195
	.quad	0x3fdf6ce05bd02fd8              # double 0.49102028814445253
	.quad	0x3fd65efbb3a635c6              # double 0.349547315062264
	.quad	0x3fd1228cd622d29a              # double 0.26773377334328929
	.quad	0x3fccd00ed6f677f0              # double 0.2250994252798928
	.quad	0x3fe6db5811384fb3              # double 0.71427539218210823
	.quad	0x3fe547952d6790ee              # double 0.66498812549664676
	.quad	0x3fb6e02a9dd351e8              # double 0.089358008891685992
	.quad	0x3fd0aa70f81fc3c6              # double 0.26040291052691733
	.quad	0x3fe1ce7099e14599              # double 0.55645017676049513
	.quad	0x3fa226f4706dd5d0              # double 0.035453451847313411
	.quad	0x3fb8080beb551ba8              # double 0.093872780756199092
	.quad	0x3fb8de39ccf70028              # double 0.097140896358724249
	.quad	0x3fe5a6b109444b10              # double 0.67659808931270682
	.quad	0x3fd43d5bfee594a0              # double 0.31624507801309143
	.quad	0x3fefa5eebb8dff89              # double 0.98900543815396801
	.quad	0x3fdb7e6531ff2960              # double 0.42958955652706798
	.quad	0x3fe89291973fc56d              # double 0.76789168873635349
	.quad	0x3fd26e0638cdc51e              # double 0.28796535060162565
	.quad	0x3fc33e5fd9bfd940              # double 0.1503410161237273
	.quad	0x3fe46f44e9bc71bc              # double 0.63858266498169014
	.quad	0x3fd2baa8f49ac256              # double 0.29264282118950768
	.quad	0x3fe11aaadcba97c2              # double 0.53450530158146869
	.quad	0x3fe58d8a7af78cf0              # double 0.67352794663420745
	.quad	0x3feaa3f61079d530              # double 0.83251479356719038
	.quad	0x3fd381aa956ce988              # double 0.30478920547798127
	.quad	0x3fd476f9e60bc4f2              # double 0.31976172891070498
	.quad	0x3fc46f12d2677450              # double 0.15963969491613961
	.quad	0x3fcbe59b31ffe72c              # double 0.21794452611339332
	.quad	0x3fe45cb076fbced8              # double 0.63631461371411557
	.quad	0x3fdba6eab78909a0              # double 0.4320627968155808
	.quad	0x3fd53200249bdd70              # double 0.33117679190714622
	.quad	0x3fc3c438007b1580              # double 0.15442562125660331
	.quad	0x3febf77c10bd8473              # double 0.87396052617636
	.quad	0x3fed81baad35a4e4              # double 0.92208608465184882
	.quad	0x3fd2f0547feb41c2              # double 0.295918583794471
	.quad	0x3fe7b7f00ebe589d              # double 0.74120333556745133
	.quad	0x3fe80591836eb593              # double 0.75067973776246999
	.quad	0x3fe86bd72ebc2c5c              # double 0.76316413047733133
	.quad	0x3feecab7b52ab00e              # double 0.96224580177431718
	.quad	0x3fe2a2b3ba7383fe              # double 0.58236109176880269
	.quad	0x3fdfbb79d749befc              # double 0.49581762336946134
	.quad	0x3fe64b1a0cdbea56              # double 0.69666769515545002
	.quad	0x3fd6ca48bc12f820              # double 0.35609644285784903
	.quad	0x3fd4706868571d6c              # double 0.31936083020669659
	.quad	0x3fd2795b82b7a250              # double 0.28865707173693966
	.quad	0x3feaec80ef402793              # double 0.84137007454522672
	.quad	0x3fd60742b9543e0e              # double 0.34419315432111908
	.quad	0x3fd4530b1dd6f02c              # double 0.31756856836341529
	.quad	0x3fb2fdcc73d7c6b8              # double 0.074185159952118052
	.quad	0x3fe20e9c00cc3e93              # double 0.56428337245775351
	.quad	0x3fe5bc43f7b05e62              # double 0.67923162819620253
	.quad	0x3fa637e3f5db7640              # double 0.043395160447954328
	.quad	0x3feb30b787bf8ba3              # double 0.84969688905072294
	.quad	0x3fe1e57acc913f75              # double 0.55926265673222864
	.quad	0x3f96e9a03142a0e0              # double 0.022375586516006574
	.quad	0x3fdd7aa1f3b1330a              # double 0.46060990140976854
	.quad	0x3fddf88accac99ea              # double 0.46829481113164084
	.quad	0x3fcf1dafc4a35cfc              # double 0.24309346295806467
	.quad	0x3fc872d8803b9030              # double 0.19100481282578263
	.quad	0x3fc089cbdf33e1c8              # double 0.12920521162574361
	.quad	0x3feebfb944e8842a              # double 0.96090377291341622
	.quad	0x3fee430eadbc897b              # double 0.94568571026711312
	.quad	0x3fdd17167c2dace0              # double 0.45453416945265523
	.quad	0x3fb12b62ed420720              # double 0.067068274425789998
	.quad	0x3fe6ecf0e7396998              # double 0.71642346535672896
	.quad	0x3fd3eecc0e77be2e              # double 0.31145001805177486
	.quad	0x3fef1a3050fb32b7              # double 0.97194686714791245
	.quad	0x3fe45ba087eb32da              # double 0.63618494555120297
	.quad	0x3fe5d109a05244f1              # double 0.68176728546873566
	.quad	0x3fee66b6aec4f13a              # double 0.9500382817709927
	.quad	0x3feb3723ad78e76a              # double 0.85048087960534002
	.quad	0x3fe9b0fd9efa5989              # double 0.80285531092049311
	.quad	0x3fe290c79c3bec59              # double 0.58017330660312461
	.quad	0x3fdbc245a28ab0b2              # double 0.43373242257326716
	.quad	0x3fef801f9cdef30c              # double 0.98439007414671797
	.quad	0x3fdd2b466b799afa              # double 0.45576630111320038
	.quad	0x3fc24b8312f55220              # double 0.14292944360444526
	.quad	0x3feaf687f0f0ceb5              # double 0.84259411867829803
	.quad	0x3fdcd16121be4aba              # double 0.45027950568434572
	.quad	0x3fe7c2569fda01f5              # double 0.74247294636739858
	.quad	0x3fe4f6bbee0bd9ba              # double 0.6551189088193532
	.quad	0x3fdc6fde7637aea6              # double 0.44432794136694509
	.quad	0x3fe96eff0439d065              # double 0.79479933572157491
	.quad	0x3feb6b863e66c28d              # double 0.85687553584837561
	.quad	0x3fe99582934a33dc              # double 0.79950073974179813
	.quad	0x3fecb903d4e73443              # double 0.89758483488697782
	.quad	0x3fb9c4e3178d9d78              # double 0.10066050839451701
	.quad	0x3fe2fb2c54577baf              # double 0.59316078637117708
	.quad	0x3fe0e8224a29217f              # double 0.52833666309838623
	.quad	0x3fecaf3a79b29457              # double 0.89639018792207537
	.quad	0x3f89e6d80e8887c0              # double 0.012647331183931132
	.quad	0x3fb9d163d425ddd8              # double 0.10085128716843117
	.quad	0x3fea80b75f6688cb              # double 0.82821243889727592
	.quad	0x3fd6a4f55c213384              # double 0.35381826397934213
	.quad	0x3fe6277630628b3b              # double 0.69231709909613615
	.quad	0x3feeea4d7d35c06b              # double 0.96610140280791989
	.quad	0x3fedf6cb29354ef4              # double 0.93637617157443608
	.quad	0x3fd3e6b248061564              # double 0.3109555915219373
	.quad	0x3fae4616c31cc5b0              # double 0.059128485982351875
	.quad	0x3fd11e9af5319efc              # double 0.26749299950323269
	.quad	0x3fed89c01ae44224              # double 0.92306523563644704
	.quad	0x3fe8c3b8601ee89f              # double 0.77389162801343392
	.quad	0x3fe378527b40aab2              # double 0.60843776772283875
	.quad	0x3fd16cf94ce07700              # double 0.2722762346983103
	.quad	0x3fe284a5eb67b963              # double 0.57869239785740623
	.quad	0x3fd38a7727edac68              # double 0.30532626055964451
	.quad	0x3fe555fbc689b33b              # double 0.66674603249484876
	.quad	0x3fa9b8957bcaf4b0              # double 0.050236388551163969
	.quad	0x3fe9ab4919a9cba4              # double 0.80215888035160221
	.quad	0x3fe805e3547fbb4f              # double 0.75071875098897489
	.quad	0x3fda94600ec06990              # double 0.41530610504710186
	.quad	0x3fe4ff1d170b671e              # double 0.65614180088889262
	.quad	0x3fd972c3298909c2              # double 0.39762953811819213
	.quad	0x3feb8c685ae7c7eb              # double 0.86088960413894478
	.quad	0x3fe4ed1bf9e1820d              # double 0.65394400410520037
	.quad	0x3fe3cffe886a7b9c              # double 0.61913992542018859
	.quad	0x3fd854dcfa77b508              # double 0.38017963847853808
	.quad	0x3fe804b2030ae0c6              # double 0.75057316393124363
	.quad	0x3fddd7d8909853a2              # double 0.46629919167144795
	.quad	0x3fe65bd2e198c1f4              # double 0.69870895444733927
	.quad	0x3fec631b1767d505              # double 0.88709787913708793
	.quad	0x3fe883496a9422c1              # double 0.76602621856826414
	.quad	0x3fe14f93411cd65f              # double 0.54096377103151017
	.quad	0x3fd1241445daaa72              # double 0.26782709905334123
	.quad	0x3fb4382fb34c7450              # double 0.078982335352024479
	.quad	0x3fb39c887bb4c7b0              # double 0.076607256128027101
	.quad	0x3fefd69f99ba5792              # double 0.99494915032367914
	.quad	0x3fe87088cdda91d1              # double 0.76373710828607433
	.quad	0x3fc3dc8a83f224d4              # double 0.15516787951154376
	.quad	0x3fe701a585ed3f59              # double 0.71895099790161077
	.quad	0x3fd44f58dd244674              # double 0.31734296413296836
	.quad	0x3fd1455eeb554b38              # double 0.2698590562987877
	.quad	0x3fe5c768f36a3b2e              # double 0.68059203664765788
	.quad	0x3fef7a7104c1e0ad              # double 0.98369646958510303
	.quad	0x3fcacd250e3d06b8              # double 0.20938552088960249
	.quad	0x3febd07ebdfcbc62              # double 0.86920106036076228
	.quad	0x3fdccd9ab8f34934              # double 0.4500490957408545
	.quad	0x3fe1d7b5088155c1              # double 0.55758144055533176
	.quad	0x3fe8f761cd3b464f              # double 0.78019800266538109
	.quad	0x3fc1d044a7cf8efc              # double 0.13916834062467121
	.quad	0x3fd3d8789b4035a4              # double 0.31008734856808418
	.quad	0x3fd20cea3e30f3ca              # double 0.28203826974259683
	.quad	0x3fedac03aef86d6b              # double 0.92724785016927791
	.quad	0x3fee52aa2b42f5b9              # double 0.94759090852283301
	.quad	0x3fe7b5204d6fc0db              # double 0.74086012958835157
	.quad	0x3fdb7132d41d1f2c              # double 0.42878409113153526
	.quad	0x3fe0ad4f239685e2              # double 0.52115590048577709
	.quad	0x3fc474f35ee436f0              # double 0.15981905110714179
	.quad	0x3fe7fc199d8c5783              # double 0.74952393313536481
	.quad	0x3fefa287e2f0ecbb              # double 0.98859018635211926
	.quad	0x3fee715d5c715a19              # double 0.95133846335631056
	.quad	0x3fefdd94bc938f15              # double 0.99579846221283452
	.quad	0x3fdcf58cfee6153e              # double 0.45248722927529517
	.quad	0x3fe79455231424ef              # double 0.73685700274759636
	.quad	0x3fdec4553bf300e0              # double 0.48073321203629682
	.quad	0x3fd1c8b94db882a6              # double 0.27787621107021676
	.quad	0x3fe841b82adbc927              # double 0.75802238817985745
	.quad	0x3feb5c434dbeb77b              # double 0.85501256165092288
	.quad	0x3fe9c62d1c3a966e              # double 0.80544143212746433
	.quad	0x3fb256129cf518d8              # double 0.071625865287475832
	.quad	0x3fd3ec0e0bf92d2e              # double 0.31128264588615451
	.quad	0x3fdec7bbd3b7030c              # double 0.48094077754289866
	.quad	0x3fc86f0a417291f4              # double 0.19088867374115603
	.quad	0x3fe68ceed7adfe56              # double 0.70470373272832876
	.quad	0x3fe778340b1c9aee              # double 0.73342325372945338
	.quad	0x3fd3fc985e14aad6              # double 0.31229218661853275
	.quad	0x3fe0b9444a789a35              # double 0.5226155714524966
	.quad	0x3fbc6e42912be000              # double 0.11105743450377759
	.quad	0x3fe22db76308f862              # double 0.56808060972958807
	.quad	0x3fd0c946d7224c00              # double 0.26228495606591196
	.quad	0x3fe3fcaf52fdf965              # double 0.62459531983749328
	.quad	0x3fba21d1679d59c8              # double 0.10207852153448649
	.quad	0x3fe7441c875003e5              # double 0.72706438472971213
	.quad	0x3f87399ae83392c0              # double 0.011340341769434104
	.quad	0x3fcaa833766e6698              # double 0.2082580879476168
	.quad	0x3fd6c48704e367ea              # double 0.35574508168576691
	.quad	0x3fe5fa9793eabc4e              # double 0.68683985605265163
	.quad	0x3fd5dda8bb926948              # double 0.34165399854250156
	.quad	0x3fc31936f9d9837c              # double 0.14920699310007624
	.quad	0x3fe6518b93e30569              # double 0.69745425113812332
	.quad	0x3fd5ba84cd98a984              # double 0.33950920179145094
	.quad	0x3fea5db50cf4c87b              # double 0.82393887072090821
	.quad	0x3fc8ff244507ddec              # double 0.19528630610123743
	.quad	0x3fd2622ec0e6b3a0              # double 0.28724259222036075
	.quad	0x3fd973f98641eac0              # double 0.39770353423197591
	.quad	0x3fe3c3cb1e64de68              # double 0.61765056549388664
	.quad	0x3fe05e57080ab705              # double 0.51151610918688617
	.quad	0x3fe0557743c6f653              # double 0.51043284642919173
	.quad	0x3fbceecb2a580780              # double 0.11301870139871362
	.quad	0x3fc515206f019314              # double 0.16470723552915756
	.quad	0x3fe1b96687080be9              # double 0.55388189671827803
	.quad	0x3fc4f3c69217a2d0              # double 0.16368944295324761
	.quad	0x3fe28fcbaaf53706              # double 0.58005317106446408
	.quad	0x3fe5ee0d5246c3d5              # double 0.68530908650984179
	.quad	0x3fe57c784eb29a1b              # double 0.67144408579480641
	.quad	0x3fd5c84cea8c2ba8              # double 0.3403503695014316
	.quad	0x3fe4a35765ea45e0              # double 0.64493913560198379
	.quad	0x3fe25ca8b62ee904              # double 0.57381091673531204
	.quad	0x3fb2ebbc4dee8088              # double 0.073909539247781209
	.quad	0x3fe07b4339ba609c              # double 0.51504670405394704
	.quad	0x3fe9f91f793fc55d              # double 0.81166051560846209
	.quad	0x3fef3f4a2242c2e4              # double 0.97647577945289443
	.quad	0x3fea26a39f484685              # double 0.81721669301823907
	.quad	0x3fb5d4ecb5d92848              # double 0.085280222317266952
	.quad	0x3fd8aa1dd686171c              # double 0.38538309049214248
	.quad	0x3fdbcf3f9edcc14c              # double 0.43452444566630244
	.quad	0x3fb27c8e44f7d0d8              # double 0.072213069761179027
	.quad	0x3fa1c9d3e2161180              # double 0.034742947910703315
	.quad	0x3fe47e279ae4f725              # double 0.64039974453746551
	.quad	0x3fcbf942ae4db410              # double 0.21854432593264095
	.quad	0x3fd5bc2aa0ecbf84              # double 0.3396097728282188
	.quad	0x3fe6307be07ee644              # double 0.69341844412628761
	.quad	0x3feaae47a8868a8f              # double 0.83377440371653389
	.quad	0x3fd336b1458144d0              # double 0.30021316325753578
	.quad	0x3fdced301215f06c              # double 0.45197679296666737
	.quad	0x3fccd1d33c75cd08              # double 0.22515335514217605
	.quad	0x3feef5459a883c4f              # double 0.9674404161650133
	.quad	0x3fda2978517969c4              # double 0.40878112751456919
	.quad	0x3fd889be03b63f24              # double 0.38340711939325645
	.quad	0x3fbf67763e009928              # double 0.12267245305756502
	.quad	0x3fe8c921f569bc1d              # double 0.77455232555610432
	.quad	0x3fedbafdbd76a948              # double 0.92907607082933286
	.quad	0x3fec31f7eb284b1c              # double 0.88109966210535928
	.quad	0x3fed9ce1b7373165              # double 0.92540059837623956
	.quad	0x3fe56d85d3bb0b80              # double 0.66961947778359843
	.quad	0x3fe2dd6399af5b3f              # double 0.58952503220175589
	.quad	0x3fc9143aca9c6e64              # double 0.1959298600494207
	.quad	0x3fe322391b7ba8bd              # double 0.59792762153417522
	.quad	0x3feb919930c880f6              # double 0.86152324226352905
	.quad	0x3fdece8f4a6a2f7a              # double 0.48135740534848248
	.quad	0x3fe21d54e16d803c              # double 0.56608051327567166
	.quad	0x3fd03ebb417b0fa8              # double 0.25382882494545322
	.quad	0x3fee05f102ba3f3d              # double 0.93822527439804271
	.quad	0x3fb94426f4c16cb8              # double 0.09869616961934724
	.quad	0x3fd1a1f5f4aebfb4              # double 0.27551030058657067
	.quad	0x3fdb7270abb13658              # double 0.42885987059421415
	.quad	0x3fa487a6ba774750              # double 0.040097437154726578
	.quad	0x3fdfcf78eb43aba6              # double 0.49703810668023107
	.quad	0x3fec6f7e0abd187b              # double 0.88860990617173685
	.quad	0x3fdb9d9a6156ec16              # double 0.43149432664694254
	.quad	0x3feb12b1e82bc93a              # double 0.84603209825426196
	.quad	0x3fc0c209e845b204              # double 0.13092159120004976
	.quad	0x3fd22dbf5367c038              # double 0.2840421976570755
	.quad	0x3fe04a725d1ffd89              # double 0.50908773601979462
	.quad	0x3feb252e97e2c517              # double 0.84828881898116293
	.quad	0x3fed1275e1de7e0b              # double 0.90850347628651329
	.quad	0x3fec7914d729a11e              # double 0.88978044532726464
	.quad	0x3fe880b98e8098a9              # double 0.76571348030554021
	.quad	0x3fdd2bec6880127a              # double 0.45580587582688958
	.quad	0x3fc67a58a7872ec4              # double 0.17560871296006131
	.quad	0x3fb3eab91349a7a8              # double 0.077800337990679425
	.quad	0x3fe800d0c0a7d68a              # double 0.75009954097795739
	.quad	0x3fdf66d45c9300be              # double 0.49065121689273983
	.quad	0x3fd4989348aef378              # double 0.32181245897282151
	.quad	0x3fdb204825e2bf62              # double 0.4238453264215335
	.quad	0x3fadedc615b297c0              # double 0.058454694889675363
	.quad	0x3fe14c48dfcde763              # double 0.54056209289340662
	.quad	0x3fc81acc46f361bc              # double 0.18831780876531734
	.quad	0x3fe7e4c6531d35c1              # double 0.74667659981940215
	.quad	0x3fe76225edc58b6c              # double 0.73073097648408014
	.quad	0x3fe0ca54c2d66afc              # double 0.52469862035954362
	.quad	0x3fe17334695c7a14              # double 0.545313077720325
	.quad	0x3fe3884e2914225b              # double 0.61038883231328656
	.quad	0x3fe8101bd996e1a9              # double 0.75196640489507616
	.quad	0x3fc6553767bb4748              # double 0.17447559895532039
	.quad	0x3fe60b98c5aeb50a              # double 0.68891562089780334
	.quad	0x3fd7eefa3e360ac6              # double 0.37396102977087897
	.quad	0x3feb920f784110b5              # double 0.86157964217320304
	.quad	0x3fda36e9b92e1d12              # double 0.40960162242886711
	.quad	0x3fca060864c9fe2c              # double 0.20330910607661801
	.quad	0x3fcf3758dae39478              # double 0.24387655914248163
	.quad	0x3fde8a9937cdd9ea              # double 0.47720938157672654
	.quad	0x3fd92340d9fd0d44              # double 0.39277669227540835
	.quad	0x3fcb184577f8ab0c              # double 0.21167820318199693
	.quad	0x3feea49cf2f2eeaa              # double 0.95759437037437078
	.quad	0x3fe3e52b6026c828              # double 0.62172478465641223
	.quad	0x3fea0a19aa8824e3              # double 0.81373294169420907
	.quad	0x3fd0a328a933d9ee              # double 0.25995842479406306
	.quad	0x3fd2c1ecf159e7a2              # double 0.29308627671673027
	.quad	0x3fee476efffeee99              # double 0.94621992110428998
	.quad	0x3fda5de1597e841e              # double 0.41197999705951982
	.quad	0x3fe77fbd96fd316c              # double 0.73434333314939471
	.quad	0x3fcfa8be964a29d8              # double 0.24733717287411028
	.quad	0x3fd932ada27d2212              # double 0.39371815555617318
	.quad	0x3febdfd6070892b3              # double 0.87107373594024862
	.quad	0x3fc742c37095235c              # double 0.18172495839305725
	.quad	0x3fb287404e91fe50              # double 0.072376269514273561
	.quad	0x3fd4bf2a59ce04e8              # double 0.32416781206127476
	.quad	0x3faa5ed408523e10              # double 0.051504732147005794
	.quad	0x3fe00df678d48dfa              # double 0.50170444106737411
	.quad	0x3feeaa429225be90              # double 0.95828369659825974
	.quad	0x3fc4d5473fb9b5fc              # double 0.16275873767465032
	.quad	0x3fe33015a5a4414c              # double 0.59961969711188479
	.quad	0x3fe19fac5a5e3ccb              # double 0.55074136400244222
	.quad	0x3fb1ac4afd7f6870              # double 0.069035231484493087
	.quad	0x3fe301811d869c5a              # double 0.59393363730203963
	.quad	0x3f95e4a1f3df75c0              # double 0.021379976758785224
	.quad	0x3fe2886c7d3590d5              # double 0.57915329413347172
	.quad	0x3fdc1f3460805396              # double 0.43940457748367956
	.quad	0x3fe5557590c6998c              # double 0.66668203617591493
	.quad	0x3fb19493d14f3020              # double 0.068673361397657562
	.quad	0x3fe4b90e0e910a5c              # double 0.64758971066505522
	.quad	0x3fe279f0d063a43a              # double 0.57738533688564719
	.quad	0x3fe0dc6adf094a1d              # double 0.52690642892622785
	.quad	0x3fd949f299c3c9a0              # double 0.39513840690701763
	.quad	0x3fbdc46b01c2e728              # double 0.11627835076333481
	.quad	0x3fca7772946de940              # double 0.2067702507736815
	.quad	0x3fd8a8f7a9d990fa              # double 0.38531295382405484
	.quad	0x3fdea93ab4cd1f22              # double 0.4790789380681294
	.quad	0x3fedd96006f3b8ad              # double 0.9327850471288649
	.quad	0x3fdcd13f48448746              # double 0.45027143533126368
	.quad	0x3fef005b4f582e4c              # double 0.96879353997196337
	.quad	0x3fcc1355cc87a020              # double 0.21934006201559075
	.quad	0x3fd3fb7e6b422edc              # double 0.31222496485200479
	.quad	0x3fe292d30c8f273e              # double 0.58042290165869992
	.quad	0x3fdc39c1fef94e82              # double 0.44102525615492294
	.quad	0x3fe0366669052444              # double 0.50664062988028791
	.quad	0x3fe46200d3525c03              # double 0.63696328424237014
	.quad	0x3fa39acefc451930              # double 0.038290470404307775
	.quad	0x3fe5363f9364ffbf              # double 0.66287211215966824
	.quad	0x3fd890b3ceff5ae2              # double 0.38383193220708567
	.quad	0x3fe2cb7755532def              # double 0.58733717598937385
	.quad	0x3fe78ddb1a68ebb2              # double 0.73606639059231882
	.quad	0x3fdebeed91401120              # double 0.48040332016559439
	.quad	0x3fea6408e54c23ee              # double 0.82471127304699876
	.quad	0x3fec5148ed5a05b1              # double 0.88492246968978894
	.quad	0x3fe70093356db53b              # double 0.71882019458067903
	.quad	0x3fe93c6d9449bc5f              # double 0.78862647020822496
	.quad	0x3fdfdd6ff0604c56              # double 0.49789045786127895
	.quad	0x3fee1939ca10aadd              # double 0.94057931390610927
	.quad	0x3fe26d40fa8dc192              # double 0.57583664833332393
	.quad	0x3fc008f0bf3aef90              # double 0.12527283990300164
	.quad	0x3fdd4f77f7bf1996              # double 0.45797537988655657
	.quad	0x3fd78d1dedee3e6a              # double 0.36798809276022004
	.quad	0x3fe8110584e6452f              # double 0.75207782704288728
	.quad	0x3fec95d3bfcd6a4e              # double 0.89328944646269703
	.quad	0x3fc6a2d95ce41754              # double 0.17684475932781629
	.quad	0x3feee3602c42815b              # double 0.96525581974496377
	.quad	0x3fe2d095b18aa7e5              # double 0.58796200443361768
	.quad	0x3feeec695660d338              # double 0.96635882254358929
	.quad	0x3fdbffa8bc7fc24e              # double 0.43747919471846763
	.quad	0x3feaddcca75b56b3              # double 0.83957512556908964
	.quad	0x3fd225418e56e2ac              # double 0.28352393055278458
	.quad	0x3fb970db08f164a8              # double 0.099378289874396786
	.quad	0x3fe0a0655c704703              # double 0.51957958273325777
	.quad	0x3fbe9b70d12994d0              # double 0.11955933672432484
	.quad	0x3fb9e575f2fdc8e0              # double 0.1011575430145828
	.quad	0x3fd89d9da15f159a              # double 0.38462010153701842
	.quad	0x3fdbd45a6f452f76              # double 0.43483601442561992
	.quad	0x3fe99af6ea8c4447              # double 0.80016656694545751
	.quad	0x3fe2a196fb5c9b13              # double 0.5822253140839585
	.quad	0x3fd2767b0f9ce70a              # double 0.28848148846337607
	.quad	0x3fce02489598af2c              # double 0.23444468788636053
	.quad	0x3febf12150021b79              # double 0.87318482996566538
	.quad	0x3fcc5700fd4ba70c              # double 0.22140514724679183
	.quad	0x3fd1539ec1729a3e              # double 0.27072876826642644
	.quad	0x3fe697aa7082462e              # double 0.70601388906852036
	.quad	0x3fba297d8d023d50              # double 0.10219559376331699
	.quad	0x3fe51bc7028ff565              # double 0.65964079380470919
	.quad	0x3fe5d6231028aa73              # double 0.68238976627374226
	.quad	0x3fe6eeb72d284ea6              # double 0.71664007968725651
	.quad	0x3fe912a6007091c5              # double 0.78352642141231199
	.quad	0x3fe4c16069ac0f86              # double 0.64860554350933408
	.quad	0x3fd1b783767e8c56              # double 0.27682577678405573
	.quad	0x3feeb25b6e4f1357              # double 0.95927211327271322
	.quad	0x3fee2768ee3a1087              # double 0.94231077698397392
	.quad	0x3fe475e64ab444cf              # double 0.63939203825625579
	.quad	0x3fdb0a9cae9e2100              # double 0.42252270748623744
	.quad	0x3fd233a36833ba68              # double 0.28440175224287723
	.quad	0x3fee47a3aaa5df74              # double 0.9462450345008464
	.quad	0x3fa71a7ee75bc160              # double 0.045124021284098204
	.quad	0x3fe22504aa64cd05              # double 0.56701882629423095
	.quad	0x3fec9361c4a4cd4c              # double 0.89299095541938688
	.quad	0x3fe625f1a77a6d7f              # double 0.69213183127014577
	.quad	0x3fd5cc887f839790              # double 0.34060871555845385
	.quad	0x3fd86f48040bddd8              # double 0.38179207224990597
	.quad	0x3fb180cc1a7723e0              # double 0.068371540509488238
	.quad	0x3f726b5bc094f780              # double 0.0044969162057081347
	.quad	0x3fd25b7b1d6aa29e              # double 0.28683355210027084
	.quad	0x3fceb1710fe480e8              # double 0.23979008937840907
	.quad	0x3fea4a2836486716              # double 0.82155237772096501
	.quad	0x3fee25b836564a65              # double 0.94210444081029421
	.quad	0x3fdf2d4c92443b84              # double 0.48713983806458594
	.quad	0x3fef2653bfd5442c              # double 0.97342860667607089
	.quad	0x3fe03eb6f796e6c3              # double 0.50765560490909711
	.quad	0x3fdec3b22f9480d2              # double 0.4806943382882426
	.quad	0x3fed8719d270089b              # double 0.92274180508708825
	.quad	0x3fe6053a27e8ffcc              # double 0.68813808245612895
	.quad	0x3fe9ce4e6408aec6              # double 0.80643386400102979
	.quad	0x3fea817e8a296fdb              # double 0.82830740914095757
	.quad	0x3fdbf4e8ada9f55c              # double 0.43682305297246216
	.quad	0x3fda6138ce8c035e              # double 0.41218395395849494
	.quad	0x3fed9abd567e599a              # double 0.92513911145470051
	.quad	0x3fd01abe9f468d68              # double 0.25163236192948668
	.quad	0x3fe36848796e213b              # double 0.60647987095675349
	.quad	0x3fe58ff49c849880              # double 0.67382269449150556
	.quad	0x3fe55791e43674f8              # double 0.66693968365475964
	.quad	0x3fd59a728fb18dae              # double 0.33755172760558139
	.quad	0x3fe842fe753da535              # double 0.75817797564119493
	.quad	0x3fba2f4e2743d650              # double 0.10228432139032262
	.quad	0x3fe2bf14bce8691b              # double 0.58582531829896156
	.quad	0x3fea7483988ff9e7              # double 0.82672290608735188
	.quad	0x3feda5b30935a6bb              # double 0.92647697256798922
	.quad	0x3fe3f5f8c0942a7f              # double 0.62377584088365257
	.quad	0x3fddc5e4277bb05a              # double 0.46520332198884307
	.quad	0x3fc1d978b4300d04              # double 0.13944920347430678
	.quad	0x3fe248b9b1256a93              # double 0.57137760733469845
	.quad	0x3fe53bf12f5432cd              # double 0.66356715434957325
	.quad	0x3fe37f12172216d4              # double 0.60926155584521746
	.quad	0x3fda401388b8f420              # double 0.4101609072857304
	.quad	0x3fd2dd8ef8ca14cc              # double 0.29477285667264819
	.quad	0x3fe78061d697d6b5              # double 0.73442165291517958
	.quad	0x3fe2cc948d1ac5aa              # double 0.58747317847717295
	.quad	0x3f4a40f984773400              # double 8.0120261639538004E-4
	.quad	0x3fe6b67ce65fb649              # double 0.70977635378739834
	.quad	0x3fc019340eb41d9c              # double 0.12576914518306814
	.quad	0x3fc6d01872d120e4              # double 0.17822557073873846
	.quad	0x3fd019e6de2b5742              # double 0.25158092209072802
	.quad	0x3fd5ea6408b8f7c8              # double 0.34243107654390004
	.quad	0x3f40530a8bdbb000              # double 4.9818053204608859E-4
	.quad	0x3fe92454736d1934              # double 0.78568480056927691
	.quad	0x3fd2b8af1876399a              # double 0.29252221478318463
	.quad	0x3fc9d6a67d25e1e4              # double 0.201863108737384
	.quad	0x3fc8f1c932f1d14c              # double 0.19487872111825266
	.quad	0x3fbc497e6c5ac670              # double 0.11049642701507323
	.quad	0x3fbebf6fd3afa580              # double 0.12010859411352293
	.quad	0x3fee9cfcd71a56de              # double 0.95666353237421808
	.quad	0x3fe99af8f4802ef3              # double 0.80016753915830774
	.quad	0x3fcbf627b5dd5dc8              # double 0.2184495580683985
	.quad	0x3fc259a9441e2f84              # double 0.14336124254293392
	.quad	0x3fe79efcea47f47e              # double 0.73815770872137398
	.quad	0x3feaa6b9564fff77              # double 0.83285204751881181
	.quad	0x3fe16d2b9382e45a              # double 0.5445764428215043
	.quad	0x3fc4e67d4283b840              # double 0.1632839751031856
	.quad	0x3fe763b05f943e29              # double 0.73091906230724135
	.quad	0x3fdb21860c9e10f2              # double 0.42392111999676196
	.quad	0x3fe7669f70859f19              # double 0.7312771985716352
	.quad	0x3feb25e5335d0dfa              # double 0.84837589294369242
	.quad	0x3fd7991ac259aa9c              # double 0.36871975879209073
	.quad	0x3fe95f20f3d6a8f0              # double 0.79286239266119019
	.quad	0x3fcde541e95edf28              # double 0.23355888266609637
	.quad	0x3fe83326d1baf936              # double 0.75624409640275903
	.quad	0x3fe993ef3d4d91bb              # double 0.7993084142040553
	.quad	0x3fc1cddaee33e7c0              # double 0.13909470206254859
	.quad	0x3fa2b748c68a4140              # double 0.036554598079535428
	.quad	0x3fe448af63b69ddf              # double 0.63387269473326657
	.quad	0x3fc685aed6ec98e8              # double 0.17595468038889028
	.quad	0x3fdab50bc4e207cc              # double 0.41730016924713875
	.quad	0x3fa3696c066b86f0              # double 0.037913680823988716
	.quad	0x3fec85c6dd239686              # double 0.89133017722333885
	.quad	0x3fee6a107aa913ae              # double 0.95044731099243562
	.quad	0x3feffaa489cfebc2              # double 0.99934603611415462
	.quad	0x3fee5feaf21796d9              # double 0.94920871051428002
	.quad	0x3fe69bbbbae24163              # double 0.70651041508430656
	.quad	0x3fec6d17abcc015a              # double 0.88831695131379296
	.quad	0x3fe3a8fafae44f30              # double 0.61437748911200707
	.quad	0x3fe897f3ee54d535              # double 0.76854893254372902
	.quad	0x3fef5c5713d6afff              # double 0.98002199053507854
	.quad	0x3fe09703f94ec240              # double 0.51843451207066238
	.quad	0x3fdbf1475895f4be              # double 0.43660148287728962
	.quad	0x3fe70973b44ac1f8              # double 0.71990380490575401
	.quad	0x3fe6133636fbbb19              # double 0.68984518755846402
	.quad	0x3fec3f25395d04f0              # double 0.88270817950993141
	.quad	0x3fd11748ccb9472a              # double 0.26704616539528792
	.quad	0x3fdc24e47abb2520              # double 0.43975173936321887
	.quad	0x3fe7b594704e1c5a              # double 0.74091550764650127
	.quad	0x3fe7490b6ff62584              # double 0.72766658656580363
	.quad	0x3fe3304b18e2c6a1              # double 0.59964518414036061
	.quad	0x3fe1214d8caf418c              # double 0.53531529881915807
	.quad	0x3fd54cc3e2a14a52              # double 0.33281037456359741
	.quad	0x3fd9ad1cf7c2c4f6              # double 0.40119098849670765
	.quad	0x3fe4bc5864f1e1f1              # double 0.64799136844436422
	.quad	0x3fc66bbfeb8a2218              # double 0.1751632595153445
	.quad	0x3fe8b0ec9340cd56              # double 0.77159718284967016
	.quad	0x3fc499709625cff8              # double 0.1609326108115281
	.quad	0x3fd6cc3987f56ef6              # double 0.35621488835543802
	.quad	0x3fe7d4aa95fe1c6b              # double 0.74471024794992269
	.quad	0x3fdf2549d02d5c50              # double 0.48665089921764082
	.quad	0x3fe1c8b7fc2e84f8              # double 0.55575179342500203
	.quad	0x3fc3baaf2aff85f4              # double 0.15413465117948955
	.quad	0x3fde95f0fe126242              # double 0.47790169536304827
	.quad	0x3fec688890468265              # double 0.88776043108744018
	.quad	0x3fe02c0ef5bff9e0              # double 0.50537822721508618
	.quad	0x3fe3dcf8b5bc6278              # double 0.62072406287468507
	.quad	0x3fd5e2e7787960b4              # double 0.34197413220455108
	.quad	0x3fe886e9ebf62e17              # double 0.76646896444566692
	.quad	0x3fd5a2170a18cc0e              # double 0.33801818834325636
	.quad	0x3feb5364fffab4f7              # double 0.8539299964519661
	.quad	0x3fc2fb9c831f3024              # double 0.14830356981690429
	.quad	0x3fe5d477d3a60ca0              # double 0.68218604409812045
	.quad	0x3fc8cb6f1063985c              # double 0.19370830822225826
	.quad	0x3fe345fc408eb742              # double 0.60229313477405122
	.quad	0x3fd143cb831e86f8              # double 0.26976287655462228
	.quad	0x3fed7f564f51297b              # double 0.92179408542260377
	.quad	0x3fbaf6eb31c2a0c0              # double 0.10533018078661183
	.quad	0x3fd2ffc0cb6f048c              # double 0.29685993067330041
	.quad	0x3fcbeffb5fd342a0              # double 0.2182611673256547
	.quad	0x3fefaf9c6dc334b9              # double 0.99018689573281115
	.quad	0x3fa3e67efb720250              # double 0.038867920106899434
	.quad	0x3fd51771ab05e450              # double 0.32955590917078315
	.quad	0x3fe8317a8311c0b7              # double 0.7560398635814839
	.quad	0x3fb4a3ce5e00f0e8              # double 0.080624483060947605
	.quad	0x3fed343ae6e93160              # double 0.91262574291026155
	.quad	0x3fd42e57c8dd8b30              # double 0.31532854667436805
	.quad	0x3f9132710a1cd4c0              # double 0.016793981783128187
	.quad	0x3fd4f8e4becba71a              # double 0.32769125587820869
	.quad	0x3fdf569d70b1e482              # double 0.48966156010971684
	.quad	0x3fd2632637cf47fa              # double 0.28730159235158192
	.quad	0x3fd5cc83904a6aee              # double 0.34060753909004304
	.quad	0x3fe001cd8a842d25              # double 0.50022007993667172
	.quad	0x3fbb01700da0d208              # double 0.10549068768234104
	.quad	0x3fe341f3058f16cf              # double 0.6018004520962793
	.quad	0x3fe84e42bff33fb4              # double 0.75955331316253316
	.quad	0x3fed7eca027b6bad              # double 0.92172718510425045
	.quad	0x3fb198268a92fd00              # double 0.068727883178315352
	.quad	0x3fde0adca42c89e8              # double 0.46941295654883541
	.quad	0x3fea71b1f5f288d5              # double 0.82637880360223426
	.quad	0x3fd9f53e2e7528fe              # double 0.40559343850021878
	.quad	0x3febcb442fb84458              # double 0.86856278724929847
	.quad	0x3fe1241f95a1aa93              # double 0.53565959191230872
	.quad	0x3fb373fce924e188              # double 0.075988585395753927
	.quad	0x3fc6f99cbccea924              # double 0.17949256152253057
	.quad	0x3fd975cd321ba700              # double 0.39781503575669319
	.quad	0x3fe8386d76363ffb              # double 0.7568881329370919
	.quad	0x3fca265541ac3614              # double 0.20429483133959592
	.quad	0x3fee119dd241c85c              # double 0.93965045038045102
	.quad	0x3fd10e405d54cd5c              # double 0.26649483789807049
	.quad	0x3fd9c2ed30a12bf2              # double 0.40252237080556974
	.quad	0x3fc19aaf8a30fc88              # double 0.13753313300728487
	.quad	0x3fe46b1eecb386c0              # double 0.63807626944272755
	.quad	0x3fdfb3e889fba222              # double 0.49535573458573101
	.quad	0x3fe18b3b3345234c              # double 0.54824600232778087
	.quad	0x3fedc2d853912955              # double 0.93003479310690784
	.quad	0x3fcddaf46a48fc3c              # double 0.23324446859075632
	.quad	0x3fd525d53e457694              # double 0.33043414193330389
	.quad	0x3fe4a744b6e81967              # double 0.64541850780441912
	.quad	0x3fdb4bb94baeb5ba              # double 0.42649681464066769
	.quad	0x3fd0b57f19c8f152              # double 0.26107766645488539
	.quad	0x3fe900114183c94a              # double 0.78125822826249558
	.quad	0x3fcd738a296eeacc              # double 0.23008849166020295
	.quad	0x3fe6719f6a1f9a63              # double 0.70136996009098274
	.quad	0x3fdc172ad0496360              # double 0.43891401615615244
	.quad	0x3fd741a26d438a10              # double 0.36338101072593165
	.quad	0x3fdef3bb7e4a0100              # double 0.48362624485891104
	.quad	0x3fdf6a0da2ad56be              # double 0.49084797750888842
	.quad	0x3fd70d1f32728332              # double 0.36017589498992486
	.quad	0x3fe2fa737385ddc6              # double 0.59307262957639106
	.quad	0x3fd4bf7d0027e9a2              # double 0.32418751731133899
	.quad	0x3fdbfc56c7cf8854              # double 0.43727654946099404
	.quad	0x3fe108a9568b57b5              # double 0.53230730918107005
	.quad	0x3fc96da6ada1ac40              # double 0.19865878561117434
	.quad	0x3fd712e13a92e662              # double 0.36052733154392602
	.quad	0x3fe6639760463a86              # double 0.69965714267330337
	.quad	0x3feeb387ba42c15f              # double 0.95941530589156431
	.quad	0x3fe92202504c1799              # double 0.78540149386457181
	.quad	0x3facd6e885fd00e0              # double 0.056327120166771882
	.quad	0x3feeb3af733ec7f7              # double 0.95943424710117042
	.quad	0x3fefe05ba86c4c2f              # double 0.99613745589375024
	.quad	0x3fedfbd2673f884e              # double 0.93698997655543237
	.quad	0x3fee2e2d88dc2167              # double 0.94313694696851946
	.quad	0x3fd9614b0364635c              # double 0.3965632947088602
	.quad	0x3fe3634816923e7d              # double 0.60586933525514974
	.quad	0x3f9c94d347e2bbc0              # double 0.027911473524621533
	.quad	0x3fc1c9c5ba099e44              # double 0.13897010406366139
	.quad	0x3fc65729b5d919dc              # double 0.17453500155734403
	.quad	0x3fe840a1391019fb              # double 0.75788937707039794
	.quad	0x3fe1953a09569533              # double 0.54946615051145498
	.quad	0x3fd11093f126cc36              # double 0.26663683462101362
	.quad	0x3fef024f44a36f12              # double 0.96903193860950609
	.quad	0x3fe121190035f08d              # double 0.5352902416339177
	.quad	0x3fd02eee3a9272f0              # double 0.25286441535881377
	.quad	0x3feb0e837c8c2457              # double 0.84552168203039002
	.quad	0x3fde458c83361330              # double 0.47299492658230502
	.quad	0x3fb97731af1476e8              # double 0.099475007290006467
	.quad	0x3fdeace6a486f79e              # double 0.47930303637610361
	.quad	0x3fee245586b24a90              # double 0.94193531330013691
	.quad	0x3fef12a2d0af1ec7              # double 0.97102490194898727
	.quad	0x3fe75fae6a699b12              # double 0.73042984756179608
	.quad	0x3fea624cb58511eb              # double 0.82449946835600707
	.quad	0x3fd4c96c806f55e8              # double 0.32479393522711897
	.quad	0x3fd5f3b48de7d956              # double 0.34299959047293294
	.quad	0x3fcf93804ca922e8              # double 0.24668887847135257
	.quad	0x3feb69268de3b024              # double 0.85658576691412635
	.quad	0x3fa86b28990a8fa0              # double 0.0476925551240861
	.quad	0x3fd1eb4fe4bcb684              # double 0.27998730981457975
	.quad	0x3fda5294d4f0105c              # double 0.41129036707594024
	.quad	0x3fea26f73ecfcc1f              # double 0.81725656764900012
	.quad	0x3fd68e12f5032f52              # double 0.35242151190754101
	.quad	0x3fe832d77f2241bd              # double 0.75620627241919858
	.quad	0x3fe8f17079c32fc8              # double 0.77947257787445157
	.quad	0x3fbad9ac50182680              # double 0.10488392787388001
	.quad	0x3fd2680c5a5aa840              # double 0.28760060142179
	.quad	0x3fe945685edb9ebf              # double 0.78972261931354371
	.quad	0x3fc11fbfff0d7600              # double 0.13378143266429277
	.quad	0x3fd717b71a21041e              # double 0.36082246352822434
	.quad	0x3fe2e95b0d333d9e              # double 0.59098579958110853
	.quad	0x3fe052671678461d              # double 0.51005892170559586
	.quad	0x3fcc478616fbfdc4              # double 0.22093273279459258
	.quad	0x3fe4054a66283d5b              # double 0.62564582779479438
	.quad	0x3feb23f6348b5211              # double 0.8481398607496563
	.quad	0x3feb9a9efd26c93b              # double 0.86262463992742455
	.quad	0x3fce230e3fdf04f8              # double 0.23544481390675975
	.quad	0x3fea6ee71000749a              # double 0.82603791356418133
	.quad	0x3fe59259afb3bcb6              # double 0.67411503140274109
	.quad	0x3fe9375d7d9cf000              # double 0.78800844701572714
	.quad	0x3fa94622b3eec2d0              # double 0.049363216843067215
	.quad	0x3fc8db9798e0575c              # double 0.19420142140068719
	.quad	0x3fcf316d55a86d30              # double 0.2436958950282615
	.quad	0x3fec0e4c9471ea26              # double 0.87674550049934363
	.quad	0x3fe5980d5605c436              # double 0.67481104661249591
	.quad	0x3fe9017f8e540b0d              # double 0.78143289373869751
	.quad	0x3fc00940cb77d17c              # double 0.12528238234484579
	.quad	0x3fe075b453879a0b              # double 0.51436821283715639
	.quad	0x3feaf601bc815fd0              # double 0.84253012483076795
	.quad	0x3fe615081e3a535e              # double 0.69006734756349508
	.quad	0x3fd28f1c8ab2454e              # double 0.28998483223502525
	.quad	0x3fe8ff84cb822eb6              # double 0.7811912512565502
	.quad	0x3fe6f9623f5f1760              # double 0.71794235589252864
	.quad	0x3fd4e2e7c6642510              # double 0.32634920477046681
	.quad	0x3feea9349b45e4f5              # double 0.95815496756327311
	.quad	0x3fee12778fa21262              # double 0.93975427678431012
	.quad	0x3fe0f024d5956fee              # double 0.52931443896841102
	.quad	0x3fc942f73d079e6c              # double 0.19735613326996615
	.quad	0x3fda50153828a488              # double 0.41113787159208259
	.quad	0x3feaf471d211323e              # double 0.84233943012947754
	.quad	0x3fbd69d8add14220              # double 0.11489633792485465
	.quad	0x3fe8c16e0ff8aa37              # double 0.77361205214885487
	.quad	0x3fd617d815ac0e74              # double 0.34520532719054775
	.quad	0x3fd35ac588abddf0              # double 0.30241525980770145
	.quad	0x3fe4be80751ab632              # double 0.64825461265508566
	.quad	0x3fdea23227d0a166              # double 0.47864965332202869
	.quad	0x3fe01e312191f7e0              # double 0.50368553692510076
	.quad	0x3f84c928b5ae7500              # double 0.01014930538604597
	.quad	0x3fe5aed86418081b              # double 0.67759341764054015
	.quad	0x3fc42f52ea9c725c              # double 0.15769421058293431
	.quad	0x3fd48e22c68dac46              # double 0.32117528333646239
	.quad	0x3fc0a807becefde8              # double 0.13012787644218737
	.quad	0x3fef2cdbc15c0e91              # double 0.97422588124796238
	.quad	0x3fc8936713048948              # double 0.19199837139701459
	.quad	0x3fd64488473d9ece              # double 0.34793288189983407
	.quad	0x3fe5293d60792dbf              # double 0.66128414957477577
	.quad	0x3febb323c3b76fb3              # double 0.86561763978851614
	.quad	0x3fd0098fd5d5e44a              # double 0.25058360941290359
	.quad	0x3fcc53c7486407c0              # double 0.2213067153425623
	.quad	0x3fdd51a43606c01c              # double 0.4581079986191996
	.quad	0x3fde21770dac787c              # double 0.4707925447018011
	.quad	0x3fd6fea42b150260              # double 0.35929207045777467
	.quad	0x3fda713ce2e78936              # double 0.41316148909222095
	.quad	0x3fa85b13feb09c60              # double 0.047569870796274172
	.quad	0x3fe7e54ca3635150              # double 0.74674064552031361
	.quad	0x3fc1cf87b6623c30              # double 0.13914581685500726
	.quad	0x3fe27d3421ff7929              # double 0.57778364792082926
	.quad	0x3fe2dad45000c04a              # double 0.58921256661961618
	.quad	0x3fe895e5b9b822ca              # double 0.76829801820084609
	.quad	0x3fab13d11a8558b0              # double 0.052885565268910084
	.quad	0x3fcba47c450fe968              # double 0.21595719692397641
	.quad	0x3fdc3bcceddc8e72              # double 0.44114993313471651
	.quad	0x3fe70e376034fbdf              # double 0.7204853896181439
	.quad	0x3fe13e1d97655e68              # double 0.53883246964956033
	.quad	0x3fe9f4147399d80e              # double 0.81104490831671838
	.quad	0x3fd96ed7a7717902              # double 0.39739028312568803
	.quad	0x3fef047e6323d32b              # double 0.96929854739446363
	.quad	0x3fd4c678497ebc46              # double 0.32461363961460099
	.quad	0x3f9348ced7d384e0              # double 0.018832427905071891
	.quad	0x3fd0e31a7ca6a28c              # double 0.2638612954420203
	.quad	0x3fcbbbb96a93b3ac              # double 0.21666639045670644
	.quad	0x3fea245c5243a000              # double 0.81693855349749356
	.quad	0x3fd392f5bb1d12de              # double 0.30584471962747084
	.quad	0x3fad87396f0e6060              # double 0.057672304922733231
	.quad	0x3fb5260ba1149220              # double 0.082611777139910192
	.quad	0x3fd7f87f43cc86ee              # double 0.37454206105222354
	.quad	0x3fed4f568dd5f55b              # double 0.9159348268728239
	.quad	0x3fef3aebf9aac0ca              # double 0.97594259989821208
	.quad	0x3fe2d194d57ed1cf              # double 0.58808366487806463
	.quad	0x3fe28d843e9ed960              # double 0.57977497320716154
	.quad	0x3fe030df667e6e51              # double 0.50596590059599056
	.quad	0x3fea1991238f21a8              # double 0.81562096543443818
	.quad	0x3fb459206a602328              # double 0.079484964342679931
	.quad	0x3fb9672c33be6868              # double 0.099230539925345362
	.quad	0x3fe34af043cb08d1              # double 0.60289777031746372
	.quad	0x3fd08a788e4bc540              # double 0.25845159431544928
	.quad	0x3fc4047b487ea9f0              # double 0.15638676681312758
	.quad	0x3fe3e2d6168f720a              # double 0.62143997579875188
	.quad	0x3fde4c705af1b322              # double 0.47341545945418961
	.quad	0x3fe72bb7027e11dc              # double 0.72408628928001972
	.quad	0x3fc226342de47094              # double 0.14179088822209407
	.quad	0x3feb0904f1b3de30              # double 0.84485099036732514
	.quad	0x3fef6fde544a5ca1              # double 0.98240581953986716
	.quad	0x3fc9596758275b6c              # double 0.19804088405973219
	.quad	0x3feb3b822144773f              # double 0.85101419923351063
	.quad	0x3fbfd17cd83fc960              # double 0.12429027823944727
	.quad	0x3fe38b779bbbe122              # double 0.61077480713632704
	.quad	0x3fc7df923f03bec0              # double 0.18651035382162284
	.quad	0x3fdc56cb30645978              # double 0.44279746747761051
	.quad	0x3fc64127fc6f8d3c              # double 0.17386340928997324
	.quad	0x3fe37d2c04c38ed7              # double 0.60902977877091302
	.quad	0x3fd06917e2ac6820              # double 0.25641438613968326
	.quad	0x3fdd333160f720b6              # double 0.45624956578513876
	.quad	0x3fe42f5002cfd80c              # double 0.6307754568977102
	.quad	0x3f8cdd7121af8c80              # double 0.014094241943843011
	.quad	0x3fec590ee6cd1cc6              # double 0.88587136343348827
	.quad	0x3fdb6903f1d097e0              # double 0.42828463186958565
	.quad	0x3fe110640b11ae3f              # double 0.53325082933356061
	.quad	0x3fe8546c2c95f77f              # double 0.76030548771062445
	.quad	0x3fee134a1343b62a              # double 0.93985465777013144
	.quad	0x3fd2c029bf7018c0              # double 0.29297870345216026
	.quad	0x3faed31af8524840              # double 0.060204356014893268
	.quad	0x3fbf148726099a28              # double 0.12140698126459226
	.quad	0x3fd83c5840596aca              # double 0.37868315013990339
	.quad	0x3fe08ceb39be9d7d              # double 0.51720200803985927
	.quad	0x3fe2223af632e571              # double 0.56667850576120149
	.quad	0x3fe0518ca8bf2c56              # double 0.50995476683000152
	.quad	0x3fe6a957b9fe5e93              # double 0.70817171408539747
	.quad	0x3fec64823dfbb6ef              # double 0.88726913553338516
	.quad	0x3fe0a91cfd5136a9              # double 0.52064370609305854
	.quad	0x3f83d632bf8960c0              # double 0.0096858944609014008
	.quad	0x3f8ca730ee4b3100              # double 0.013990766784808262
	.quad	0x3fe18e4b16b7ad1f              # double 0.54861978947647916
	.quad	0x3fdda1e0c0c3da84              # double 0.46300524544441424
	.quad	0x3fc22cbb014f9bd0              # double 0.14199006618511456
	.quad	0x3fe67d8100acc471              # double 0.70282030231295611
	.quad	0x3fd412ce6a0c672e              # double 0.31364784580510985
	.quad	0x3fce8acd677a7704              # double 0.23861091187148287
	.quad	0x3fe7a6033aa99366              # double 0.73901521165371942
	.quad	0x3fd255096b3413c4              # double 0.28644023388943318
	.quad	0x3fda5641ec26fbb8              # double 0.41151474057908954
	.quad	0x3fef9858d99aef86              # double 0.9873470544912244
	.quad	0x3feff36ad67508d9              # double 0.99846403013386997
	.quad	0x3fe71bb305b0985c              # double 0.72213126288694296
	.quad	0x3fb5429892ad9498              # double 0.083047424135275327
	.quad	0x3fed507d8e00d2ea              # double 0.91607549414638112
	.quad	0x3fe3cf3648264e40              # double 0.6190444382832041
	.quad	0x3fc78f033293824c              # double 0.18405189485112528
	.quad	0x3fe5e40e52026bd7              # double 0.68408885972473399
	.quad	0x3fd1002fe5b8e088              # double 0.26563641961866624
	.quad	0x3fd460c774ff9100              # double 0.31840692926040504
	.quad	0x3fd724645796a7fe              # double 0.36159618905605828
	.quad	0x3fe6352d108313ab              # double 0.69399121499065097
	.quad	0x3feb5514e7832cf0              # double 0.85413594453112118
	.quad	0x3fea7880bac87a76              # double 0.82720982056691983
	.quad	0x3fc5eb840d36677c              # double 0.17124987263815317
	.quad	0x3fd8411ccee71676              # double 0.37897415356960751
	.quad	0x3fe8cc16584ab964              # double 0.77491299862394358
	.quad	0x3fe30c7fd0fc99db              # double 0.59527579133719699
	.quad	0x3fb57aa067930268              # double 0.083902383124049629
	.quad	0x3fe162bb2449b77f              # double 0.54330212676516954
	.quad	0x3fc5c2e387ffdb68              # double 0.17001003399465309
	.quad	0x3fdf30fd5991b34a              # double 0.48736509081827661
	.quad	0x3fd1c3403812ab02              # double 0.27754216647979046
	.quad	0x3fd5a3d7637eb6b6              # double 0.33812508312517353
	.quad	0x3fee4c0591880c2c              # double 0.94677999900921383
	.quad	0x3fe0e2d80c8bb8c5              # double 0.52769091081952324
	.quad	0x3fd12cc5d0f18af2              # double 0.26835770992890595
	.quad	0x3fd0ce37d9f9557e              # double 0.26258655821342092
	.quad	0x3fe064b02675a537              # double 0.51229102622634215
	.quad	0x3fed46e5d769db9c              # double 0.91490451882315282
	.quad	0x3f78066242556800              # double 0.0058654630896288751
	.quad	0x3fe956622e5ef3bb              # double 0.79179486328904802
	.quad	0x3f922675b0ebd440              # double 0.017724837230123081
	.quad	0x3fea8fd12a963864              # double 0.83005579297765708
	.quad	0x3fc185e705daf75c              # double 0.13689887796311495
	.quad	0x3fb4db85817cf2e0              # double 0.081474632371235867
	.quad	0x3fee80716e9f9e8e              # double 0.95317908865122702
	.quad	0x3fe4ba449d23f070              # double 0.6477377957485384
	.quad	0x3fe56c75778d3637              # double 0.66948960637973343
	.quad	0x3fc077bb83cf95bc              # double 0.12865394531324437
	.quad	0x3fe53ec625573345              # double 0.66391284268466022
	.quad	0x3fc13c20891efd9c              # double 0.13464743323673367
	.quad	0x3fd190c248ec44c2              # double 0.27446038361911118
	.quad	0x3feaaf34ce750f7c              # double 0.83388748477635443
	.quad	0x3fe6906ce6c887ab              # double 0.7051300532805177
	.quad	0x3fea004513f81104              # double 0.81253293895909495
	.quad	0x3fbe61ba1c976040              # double 0.11867869565992439
	.quad	0x3fafbc21bddfa6f0              # double 0.061982206752714819
	.quad	0x3fe43d9ed0fb6a19              # double 0.63252201859296797
	.quad	0x3fe8c7b59f461dcb              # double 0.77437859638387729
	.quad	0x3fb8ba5848826b18              # double 0.096593396856786362
	.quad	0x3fea8c4e40ae10d4              # double 0.8296271575241243
	.quad	0x3fca8f715c89baf4              # double 0.2075025274129626
	.quad	0x3fa78252ff29c5a0              # double 0.045916169784401051
	.quad	0x3feec66e8713baf4              # double 0.96172262556305421
	.quad	0x3fe1a6c9f7af4ea0              # double 0.55160997749267793
	.quad	0x3fcf47182c1615f8              # double 0.24435712959909472
	.quad	0x3fe6fa3ed669bd2e              # double 0.71804754140422289
	.quad	0x3fdaae519ade74f8              # double 0.41688957332537724
	.quad	0x3fe6ba134c6781b8              # double 0.71021428034514766
	.quad	0x3fe9063e9bf51757              # double 0.7820122762720797
	.quad	0x3fb4d7c4864e1a20              # double 0.081417353429153128
	.quad	0x3fe757928ff66913              # double 0.72944000356372596
	.quad	0x3fe9e6f8862a3124              # double 0.80944467739167125
	.quad	0x3fe97506c9342435              # double 0.79553546235650308
	.quad	0x3fc20ff728fb2bb8              # double 0.14111222744972252
	.quad	0x3fea2c102daaaa56              # double 0.817878808205317
	.quad	0x3fe30da1b418c947              # double 0.59541402030144119
	.quad	0x3fdd2a0ee946f91e              # double 0.45569203167896599
	.quad	0x3fe1edd1f2d9857a              # double 0.560280775371367
	.quad	0x3fe901d9cd33a10f              # double 0.78147592619373707
	.quad	0x3fd0789bff99f75a              # double 0.2573614116771431
	.quad	0x3fecb4e2878e1210              # double 0.8970806739385484
	.quad	0x3fd5e4d284e1749e              # double 0.34209120728139364
	.quad	0x3fc1c6087f104838              # double 0.13885599331166687
	.quad	0x3fd455542c4a1b4a              # double 0.31770805668968605
	.quad	0x3fd35217888abe28              # double 0.30188549360443284
	.quad	0x3fe4457afb951d72              # double 0.63348149430468781
	.quad	0x3fd2d7dcf8ad197c              # double 0.29442524227888334
	.quad	0x3fcb138dcd91a2bc              # double 0.21153423821967532
	.quad	0x3fd396042c0cb8c8              # double 0.30603126813629133
	.quad	0x3fdd9c59254a81b0              # double 0.4626677383585287
	.quad	0x3fe5d42c588484b0              # double 0.68215005196193168
	.quad	0x3fc3abf0f0559640              # double 0.15368472800325783
	.quad	0x3fde8f4e8f451b16              # double 0.47749675742345354
	.quad	0x3fed12ece8a712e6              # double 0.90856023254363261
	.quad	0x3fd98bb63ba1695c              # double 0.39915233443539022
	.quad	0x3fe0131fa595db52              # double 0.50233442631620506
	.quad	0x3fa305fb8deeb700              # double 0.037155018878690882
	.quad	0x3fee364ccd2127e9              # double 0.94412841858251995
	.quad	0x3fe5b553cc19810c              # double 0.67838468421180798
	.quad	0x3fedddfcfab11a0c              # double 0.93334816897623928
	.quad	0x3fe4ff71bffb779f              # double 0.65618216988126565
	.quad	0x3fe94abd3cb33071              # double 0.79037343841038254
	.quad	0x3fe2131bee0e72cd              # double 0.56483265395544324
	.quad	0x3fbc10236d89b9a0              # double 0.10962125229136754
	.quad	0x3feb2b0895a5f187              # double 0.84900311687629049
	.quad	0x3fe31ca1e5fce9db              # double 0.59724516791839777
	.quad	0x3fd37e145b1c43ac              # double 0.3045702829122614
	.quad	0x3fefcf8ae8ba8e5c              # double 0.99408479170638086
	.quad	0x3fedc6e3fea46594              # double 0.93052863821792408
	.quad	0x3fee4e654422f1a5              # double 0.94706977184209917
	.quad	0x3fe2e9086cb4ecf1              # double 0.59094639999184839
	.quad	0x3fe35938fc853361              # double 0.60464143104909962
	.quad	0x3fd6be84fbdb3630              # double 0.35537838549939504
	.quad	0x3fd925f2c1a4431c              # double 0.39294117842023168
	.quad	0x3fccbb79d92f6164              # double 0.22447131256809449
	.quad	0x3fe887953ba78712              # double 0.76655065203905992
	.quad	0x3fc382511379b2cc              # double 0.15241445017763622
	.quad	0x3fbf4f80b9a572a0              # double 0.12230686695461168
	.quad	0x3fd298ec78317abc              # double 0.29058372247338204
	.quad	0x3fe4284bf388166b              # double 0.62991902889980389
	.quad	0x3fe2b5590b3291a2              # double 0.58463718592661373
	.quad	0x3fdeb2a011c77fca              # double 0.47965242134341379
	.quad	0x3fd9b302410775ba              # double 0.4015508303690144
	.quad	0x3fc82cc08d4ffe80              # double 0.18886572742484375
	.quad	0x3fd1e9de5b85d442              # double 0.27989920556803238
	.quad	0x3fbba88414655c58              # double 0.10804009912441026
	.quad	0x3fe940af467e7d34              # double 0.78914607780817513
	.quad	0x3fecb393daaba74e              # double 0.89692108830534223
	.quad	0x3fe0be6f796b0210              # double 0.52324651445820969
	.quad	0x3fb38f4693b6c7f0              # double 0.07640496355341475
	.quad	0x3fc56bcdb5f350cc              # double 0.16735240349101443
	.quad	0x3fdc1cbd3f9d563e              # double 0.43925410473216064
	.quad	0x3fd517fef739a764              # double 0.32958959715926128
	.quad	0x3fc6e986d2233bf0              # double 0.17900166760088565
	.quad	0x3fd735c08500ee3a              # double 0.36265576351772533
	.quad	0x3fd862ab8cc43a90              # double 0.38102234598856288
	.quad	0x3fddf0c5f85e6c22              # double 0.46782063727158818
	.quad	0x3fbf9d3ace4120c0              # double 0.12349288497455557
	.quad	0x3fef9d6171417a31              # double 0.98796150322215769
	.quad	0x3fe56d629625f513              # double 0.66960267377695215
	.quad	0x3fe94ae5df03939a              # double 0.79039281423011976
	.quad	0x3fd7a334c80ac286              # double 0.36933631453852234
	.quad	0x3fe88f27d1875d28              # double 0.76747504161440805
	.quad	0x3fe4fbe5fe963794              # double 0.65574931835156969
	.quad	0x3fec59240baae0cd              # double 0.88588144568259397
	.quad	0x3fd7f9eaff51260c              # double 0.37462878163623325
	.quad	0x3fe459f812a2e30c              # double 0.63598254814050525
	.quad	0x3fdc412f01a8d858              # double 0.44147849237504522
	.quad	0x3fe4452e0d38ab8b              # double 0.63344481069849345
	.quad	0x3fdb33211c50e66e              # double 0.42499568715320535
	.quad	0x3fb11050ab04ee40              # double 0.066655198815106509
	.quad	0x3fafcf894c3b4b90              # double 0.062130251460664643
	.quad	0x3fc464b714bc44cc              # double 0.15932358276817238
	.quad	0x3feb651bffbf0654              # double 0.85609245253017229
	.quad	0x3fece448032c9a80              # double 0.90286636943785936
	.quad	0x3fe60dba692f4438              # double 0.68917580169557535
	.quad	0x3fda62c7878cd9e2              # double 0.41227901685070212
	.quad	0x3fe0902c5419516e              # double 0.51759926248136678
	.quad	0x3fe41777659f2be2              # double 0.62786455009461073
	.quad	0x3fd394559ac0519e              # double 0.3059286128275519
	.quad	0x3fe59fab4e7dc58b              # double 0.67574086504298359
	.quad	0x3fe0d3fd5e0dbc46              # double 0.52587765092710792
	.quad	0x3fb73b26e1a39fe0              # double 0.090746336066899413
	.quad	0x3fdca08a3f8e6600              # double 0.44729858595528071
	.quad	0x3fc10cdf4a5e601c              # double 0.13320532923967299
	.quad	0x3fc4c808ab450b1c              # double 0.16235454905298574
	.quad	0x3fef5f70ce1e1caa              # double 0.9804004693732129
	.quad	0x3fec5ddc797d5e57              # double 0.88645766952954375
	.quad	0x3feacb83a81cb2cd              # double 0.83734305223841832
	.quad	0x3fe07834b3f56aa5              # double 0.51467356823134891
	.quad	0x3fdac47da333a3ba              # double 0.41824284494083097
	.quad	0x3fb211165eed9cd0              # double 0.070573232818435416
	.quad	0x3feaead31f4cf911              # double 0.84116512406743216
	.quad	0x3fe882160a7bdcbe              # double 0.76587965057014862
	.quad	0x3fce8bb0b840a0dc              # double 0.2386380099935711
	.quad	0x3fd8eeb8eee51696              # double 0.38957045869424556
	.quad	0x3fee01e4d97f2850              # double 0.93773119430376006
	.quad	0x3fe4ecdd15702a1c              # double 0.6539140146936151
	.quad	0x3fd1672a0117159a              # double 0.27192163568937533
	.quad	0x3fe37f2f15cbf3a8              # double 0.6092753816334282
	.quad	0x3fcfdaa9d9f483a0              # double 0.24886057989445209
	.quad	0x3fef862ef4748393              # double 0.9851298117174444
	.quad	0x3fd9c1eb6211a7a0              # double 0.40246090485617891
	.quad	0x3fd1e8cfd26ae484              # double 0.27983470486248785
	.quad	0x3fdae8b2e1f962c0              # double 0.42045280521191941
	.quad	0x3fbe86091785b170              # double 0.11923271965287596
	.quad	0x3fe62027531a40d5              # double 0.69142500143973484
	.quad	0x3fc8011de52fd9c0              # double 0.18753408137099647
	.quad	0x3fea7f7c6eb44cdf              # double 0.82806226369794078
	.quad	0x3fef3e1f2e22d175              # double 0.97633322726191684
	.quad	0x3fe983a44e5b9035              # double 0.79731955818397771
	.quad	0x3fd98ab148c2bad8              # double 0.39909011941464945
	.quad	0x3fbe36f4fd2cc5e8              # double 0.11802607708957391
	.quad	0x3fc709c3d15807dc              # double 0.17998550149792336
	.quad	0x3fe766ac9cd5848b              # double 0.73128347999240029
	.quad	0x3fa0ea9f2a0ed400              # double 0.033040021785758711
	.quad	0x3fdacb8e8a8d41bc              # double 0.41867412119338687
	.quad	0x3fcd40f1e0e5a478              # double 0.22854445916462729
	.quad	0x3fe336726f51e6a9              # double 0.60039636366055504
	.quad	0x3fc1d59033541a84              # double 0.13932993418002948
	.quad	0x3fe11797d9d0f7e3              # double 0.5341300253128306
	.quad	0x3fe238034fbe687d              # double 0.56933751654584308
	.quad	0x3fd2ca59689ba9cc              # double 0.29360041823988747
	.quad	0x3feec0a25baa1172              # double 0.96101491835774611
	.quad	0x3fa7bd526f5085e0              # double 0.046366287315560362
	.quad	0x3fe89d39a8c71bd3              # double 0.76919253315360903
	.quad	0x3fe29b653a29411a              # double 0.58146916732406173
	.quad	0x3fe6628c15034c98              # double 0.69952968696670137
	.quad	0x3feabb9119b7dbfb              # double 0.83539633772932065
	.quad	0x3fe43febd4211279              # double 0.632802881541081
	.quad	0x3fc93dadf0d1b33c              # double 0.19719480761286856
	.quad	0x3fe58ed20ce3f01f              # double 0.67368414418843148
	.quad	0x3fcde45a334485cc              # double 0.23353126052192719
	.quad	0x3fa4ef267a756ef0              # double 0.04088707203729125
	.quad	0x3fdbc61beae2b772              # double 0.43396661699340833
	.quad	0x3fe66c6059dd13ce              # double 0.7007295375011553
	.quad	0x3fe9cdd0bd0807ab              # double 0.80637394828976505
	.quad	0x3fecf4564a4defcd              # double 0.9048263026484108
	.quad	0x3fd6b7f3cc844258              # double 0.35497755977943291
	.quad	0x3fe3110dfef32982              # double 0.59583186907666197
	.quad	0x3fec36dda1535bce              # double 0.88169747837934564
	.quad	0x3fc4fae5b09d12d4              # double 0.16390677570065881
	.quad	0x3fedb8a006789700              # double 0.92878724349858999
	.quad	0x3fd3a435ac359680              # double 0.30689756219212683
	.quad	0x3fb83821147aea30              # double 0.094606463909180815
	.quad	0x3fde94959334f632              # double 0.47781886459037815
	.quad	0x3fccbf63bf2da860              # double 0.2245907481658973
	.quad	0x3feb08a1f2267b76              # double 0.84480378432259218
	.quad	0x3feb0fa77979de94              # double 0.8456609127596999
	.quad	0x3fd969fb73fbd952              # double 0.39709364248792156
	.quad	0x3fefcc302b734810              # double 0.99367531286611843
	.quad	0x3fe34dc39bde384c              # double 0.60324268763521038
	.quad	0x3fec19daf4b518c8              # double 0.87815616411605735
	.quad	0x3fe1840fb84a9621              # double 0.54737077707676829
	.quad	0x3fe84a78f0d551ff              # double 0.75909087217092963
	.quad	0x3fe7516a6780212b              # double 0.72868843283598517
	.quad	0x3fe686ec9e0c0257              # double 0.70397024982964751
	.quad	0x3febec6e089d224d              # double 0.87261106188186377
	.quad	0x3fd10b03019e9378              # double 0.26629710348270619
	.quad	0x3fdbd3543e065fd6              # double 0.43477350289458394
	.quad	0x3fb534b403d5efa0              # double 0.082835436760375192
	.quad	0x3fd7dbbee8f7b50a              # double 0.37278721571677009
	.quad	0x3fef3f26781ee15b              # double 0.97645877324161334
	.quad	0x3fe7f285db23e183              # double 0.74835484314739664
	.quad	0x3fc7f5689aa118d8              # double 0.18717677641161035
	.quad	0x3fe7bc93f2ae03af              # double 0.74176976583850329
	.quad	0x3fe6091f9bbec5f9              # double 0.6886137048624611
	.quad	0x3fdec22427c0a51e              # double 0.48059944040376645
	.quad	0x3fcfedc82db478bc              # double 0.24944402915656905
	.quad	0x3fe644a68a6f643b              # double 0.69588019407377233
	.quad	0x3fe34b2b96d776e8              # double 0.60292605839978552
	.quad	0x3f7809cc448a9f00              # double 0.0058687190254784749
	.quad	0x3fedc34c0aed52d4              # double 0.930089970914731
	.quad	0x3fe4b88a5f44cb4e              # double 0.64752691847966459
	.quad	0x3feed17ccd4cfd5a              # double 0.96307220552254624
	.quad	0x3feec6a185d0a916              # double 0.96174694190748045
	.quad	0x3fef61e789520379              # double 0.98070122547515758
	.quad	0x3fd0c46c01c00a70              # double 0.2619886414615058
	.quad	0x3fe7f667bd440689              # double 0.74882876363717898
	.quad	0x3fd424e7c63c1532              # double 0.31475252493722217
	.quad	0x3fd1148f99ec6186              # double 0.26687994033411433
	.quad	0x3fe113368fa4b462              # double 0.53359535270068315
	.quad	0x3fe945869314b983              # double 0.78973702170132787
	.quad	0x3fed0d5a1aa2ea4d              # double 0.90787987902087652
	.quad	0x3f8d9a0e4d977e80              # double 0.014453994505799317
	.quad	0x3fcd12e6fd44c7d4              # double 0.22713935248026351
	.quad	0x3fe619485e3e34eb              # double 0.69058626562914804
	.quad	0x3fd691a3fb2962d6              # double 0.35263919379717146
	.quad	0x3fe768ba90da387c              # double 0.73153427402009141
	.quad	0x3fe06a6a02fe1cf6              # double 0.51299000343797618
	.quad	0x3fbb5b1b98cecd28              # double 0.10685894470843904
	.quad	0x3fe3d4f35cf63855              # double 0.61974495083428371
	.quad	0x3feb8f16b5c9a568              # double 0.86121688371092109
	.quad	0x3fe59182ebede93e              # double 0.67401262359570757
	.quad	0x3fd7593d99329b60              # double 0.36482181511603606
	.quad	0x3fe793f589234f4c              # double 0.73681141648055748
	.quad	0x3fee434eaaf9c272              # double 0.94571622270275513
	.quad	0x3fe724f767960dc0              # double 0.72326250297231098
	.quad	0x3feb92fad398e65d              # double 0.86169186904517014
	.quad	0x3febb204a528b0cc              # double 0.8654807306061456
	.quad	0x3fdff3d393514a7a              # double 0.49925698648909356
	.quad	0x3fefe59d7591ea95              # double 0.99677918398750142
	.quad	0x3fe4dd32bb7dfb63              # double 0.6520017301516926
	.quad	0x3fd2877c3a65505a              # double 0.28951936438284565
	.quad	0x3fe3f37a92cbca9d              # double 0.62347153349977058
	.quad	0x3fdb0725621fcdd4              # double 0.42231115896649141
	.quad	0x3fe0020834323f28              # double 0.50024805254540627
	.quad	0x3feaed90e09bb956              # double 0.84149974697883567
	.quad	0x3fe3da37e4d4b997              # double 0.62038798039957299
	.quad	0x3fe40a888b18d214              # double 0.62628581206678513
	.quad	0x3fb848d1fe5b0d28              # double 0.094861149405052303
	.quad	0x3fea1dc418071be2              # double 0.81613354390071557
	.quad	0x3fbffafa0ea58a88              # double 0.12492335183700665
	.quad	0x3f9497679f539860              # double 0.020108813380737778
	.quad	0x3fde8a7552d45ae4              # double 0.47720082367724914
	.quad	0x3fc93bb549144f90              # double 0.19713464802100278
	.quad	0x3fd920ccac703f80              # double 0.39262692298597557
	.quad	0x3fa1468628a18580              # double 0.033741180858451791
	.quad	0x3febab16f7c58d95              # double 0.86463497536571998
	.quad	0x3fe1e95548d7eb44              # double 0.55973304965241555
	.quad	0x3faa67bc1640e220              # double 0.051572683063970226
	.quad	0x3fd799972f80ff58              # double 0.36874942435314528
	.quad	0x3fe9b45de2a4e103              # double 0.80326742426316888
	.quad	0x3fefb25cf6823663              # double 0.99052284380168165
	.quad	0x3fd97ebfb7acdb76              # double 0.39836113869699064
	.quad	0x3fe2871de2002eec              # double 0.57899374142422522
	.quad	0x3fdec5afc852a03e              # double 0.48081583559769914
	.quad	0x3fdfe0a06b7ea8f0              # double 0.49808512208495781
	.quad	0x3fc69457752c90b4              # double 0.17640202733412524
	.quad	0x3fe0feb28058caeb              # double 0.5310909754537908
	.quad	0x3fd8d8eea3d66b9e              # double 0.38824048995746263
	.quad	0x3f9467dd85705060              # double 0.019927464742139356
	.quad	0x3fabc234b6e67970              # double 0.05421604855222284
	.quad	0x3fbd95867dbf0fb8              # double 0.11556282587031219
	.quad	0x3fa017319480bc60              # double 0.03142695367602566
	.quad	0x3fe4e1274f70b4fb              # double 0.65248456493068774
	.quad	0x3f9017ae787806e0              # double 0.015715337851367361
	.quad	0x3fea1ae94ede3855              # double 0.81578507808604661
	.quad	0x3fee7bef03799871              # double 0.95262861899096951
	.quad	0x3fd3fae42acb61d4              # double 0.31218818835398321
	.quad	0x3fbc644eef4352f0              # double 0.11090558377629711
	.quad	0x3fe7fccea6b42672              # double 0.74961025771444967
	.quad	0x3fecd6817f1e4174              # double 0.90118479564448117
	.quad	0x3fd6db17986f5d74              # double 0.35712232481224437
	.quad	0x3fe49b902f2968cc              # double 0.64398965083389603
	.quad	0x3fdcf7336ad5863a              # double 0.45258794243827405
	.quad	0x3fdf2bdc00f971d8              # double 0.48705196471362688
	.quad	0x3fe8091171591c4c              # double 0.75110695017145578
	.quad	0x3fc7b41672e14cd4              # double 0.18518334016207538
	.quad	0x3fed79ebfe5626f4              # double 0.9211330382833851
	.quad	0x3fea617bf93f1349              # double 0.82439993554053459
	.quad	0x3fb5109ab838fcb8              # double 0.082284612632963383
	.quad	0x3fe6ef3d96d6e797              # double 0.71670417271455988
	.quad	0x3fe14dafb70c9eb1              # double 0.54073320152106963
	.quad	0x3fe3b490325ed962              # double 0.61579141462315712
	.quad	0x3fb1730676900440              # double 0.06816139597505444
	.quad	0x3fdce52e4d47cf9c              # double 0.45148809000897372
	.quad	0x3fe47570b156cff2              # double 0.63933596264405268
	.quad	0x3feeb90f788964d2              # double 0.96009038488696263
	.quad	0x3f9a5dbb7cb8ce00              # double 0.025748185622616049
	.quad	0x3fd07135b4d0e858              # double 0.25690977723900721
	.quad	0x3fee26158662cbab              # double 0.9421489357686047
	.quad	0x3fe617fcc86889fb              # double 0.69042815344101827
	.quad	0x3fe2b59949b22df4              # double 0.58466781991722749
	.quad	0x3fec76265d3adb83              # double 0.88942259034125504
	.quad	0x3fdf64212240f33c              # double 0.4904864153393651
	.quad	0x3fe94e9be0c1d6b2              # double 0.79084581277739674
	.quad	0x3fefab63433d1ae5              # double 0.98967135555798491
	.quad	0x3febe221393863b0              # double 0.87135373283228112
	.quad	0x3fcfd93a760e772c              # double 0.24881678356626347
	.quad	0x3fe2e57e54377e03              # double 0.59051433991038527
	.quad	0x3fe42fc9f2215b15              # double 0.63083359995912025
	.quad	0x3f9eb23dd52fed40              # double 0.029976812493243132
	.quad	0x3fc5a11a5b4af9b4              # double 0.16897897203120993
	.quad	0x3fd053cbb0b6f020              # double 0.25511448151860527
	.quad	0x3fd244bcddc4b0a0              # double 0.28544541985571392
	.quad	0x3fe17494abc5762f              # double 0.54548104809845721
	.quad	0x3fde6213e8173b34              # double 0.47473619141685508
	.quad	0x3fd8728009ce35e4              # double 0.38198853452271764
	.quad	0x3fe59a2faa69e2a9              # double 0.67507155689152853
	.quad	0x3fefde18ab93108d              # double 0.99586137304915356
	.quad	0x3fd2df0d2336f7b0              # double 0.29486397208153914
	.quad	0x3fc9decd0132a4cc              # double 0.20211184080588962
	.quad	0x3fd4b1b7228cd758              # double 0.32334688543357037
	.quad	0x3fee1eab0df8eeb5              # double 0.94124367455466162
	.quad	0x3fe24c8fbb2d83dc              # double 0.57184588010943171
	.quad	0x3feb8395824fdce8              # double 0.85981250239902085
	.quad	0x3fc83cca081e47d8              # double 0.18935513874435972
	.quad	0x3fe41baf791f699c              # double 0.62837957054880489
	.quad	0x3fe3ab1bbe456b06              # double 0.6146372524484327
	.quad	0x3fe4bd39c9c0a83c              # double 0.64809884457395794
	.quad	0x3fd8ddf2c227f86a              # double 0.3885466476493834
	.quad	0x3fec86b80de04104              # double 0.89144518575815867
	.quad	0x3f918d896f5268c0              # double 0.017141482753324722
	.quad	0x3fae3afdc2ab67e0              # double 0.059043817532895337
	.quad	0x3fe2e31e5b617a8b              # double 0.59022443626220544
	.quad	0x3fe25d32e495caba              # double 0.5738768066933837
	.quad	0x3faa269130128690              # double 0.051075493925293647
	.quad	0x3fee6736827ef77f              # double 0.95009923446171729
	.quad	0x3fd959612f102a86              # double 0.39608029933939581
	.quad	0x3fd5ef80352d49e6              # double 0.34274296944673066
	.quad	0x3fe9a1eaefd112be              # double 0.80101534690091802
	.quad	0x3fe30df2adea78e5              # double 0.59545263259840608
	.quad	0x3fda086b4b7f3860              # double 0.40676386234998141
	.quad	0x3fd6d8865bf88800              # double 0.35696562749410532
	.quad	0x3fe63c896732e60b              # double 0.69488973766346029
	.quad	0x3febe995c5cc5c20              # double 0.87226379997708036
	.quad	0x3fd71d2ade3cb1be              # double 0.36115524008598843
	.quad	0x3fd5b6ec47645ffa              # double 0.33928973171123256
	.quad	0x3fce570d33f70f5c              # double 0.23703160321576433
	.quad	0x3f95b6ae8e558c20              # double 0.021204688489330548
	.quad	0x3fcd6034608d3004              # double 0.2294984313433589
	.quad	0x3fe0d53d306fef0d              # double 0.52603015385054308
	.quad	0x3fead74ae1467272              # double 0.83878082274493537
	.quad	0x3fe4fe2b693ea967              # double 0.65602655940646748
	.quad	0x3fe0482e29b96f75              # double 0.50881107472694842
	.quad	0x3fef87892eae891d              # double 0.98529490582976431
	.quad	0x3fdd1bcccb43de20              # double 0.45482177591427053
	.quad	0x3fe57b803dca0870              # double 0.67132579868508735
	.quad	0x3fd622b585777e92              # double 0.34586847337593796
	.quad	0x3fea8b9d1cfe12c4              # double 0.82954269087402865
	.quad	0x3fe5e88c3c3436cc              # double 0.68463718184076461
	.quad	0x3fd75f4314141a22              # double 0.36518933258813224
	.quad	0x3fd646a605e9bb18              # double 0.34806204392855156
	.quad	0x3fee1481149f80f9              # double 0.94000295665685407
	.quad	0x3fee2fbc9caf4cee              # double 0.94332724192136452
	.quad	0x3fed7b828bd42fae              # double 0.9213268977196003
	.quad	0x3fe148ba5d54bb37              # double 0.54012792805392607
	.quad	0x3fd4002682db4bc0              # double 0.31250918177573439
	.quad	0x3fe9f21f4689d7a2              # double 0.81080592896499959
	.quad	0x3fd7c4f041a97dde              # double 0.37139517223655882
	.quad	0x3fd4b161a6a0e234              # double 0.32332650444326139
	.quad	0x3fd10def01d68614              # double 0.26647544078341068
	.quad	0x3fd941d1fb88ee62              # double 0.3946423488994012
	.quad	0x3fb10662b2054c30              # double 0.066503685438235705
	.quad	0x3f98647744d005a0              # double 0.02382074697016423
	.quad	0x3feb86da0523ac7d              # double 0.86021138194827496
	.quad	0x3fe30b0653ea24b5              # double 0.59509579076361396
	.quad	0x3fee2b25a7f4d741              # double 0.94276697925554498
	.quad	0x3fe8b0a9332b1467              # double 0.77156505578808499
	.quad	0x3fc16de99434a2c4              # double 0.13616676079370482
	.quad	0x3feca8511bfeb600              # double 0.89554648845449946
	.quad	0x3feaab6185aef4af              # double 0.8334205256466215
	.quad	0x3f7b8f3694926f00              # double 0.0067283756299294506
	.quad	0x3fbbe013a34d3c10              # double 0.10888788925989012
	.quad	0x3fe4c00c13650fe3              # double 0.64844325817147952
	.quad	0x3feae2d964784c2b              # double 0.84019155142812474
	.quad	0x3fdda7120498ab3e              # double 0.4633221669088704
	.quad	0x3feca14128be415e              # double 0.89468439061787897
	.quad	0x3fef021e99b91aa1              # double 0.96900873207126292
	.quad	0x3fe44ed66bc66835              # double 0.63462372827348779
	.quad	0x3fd0eb3a5c2703dc              # double 0.26435717581995077
	.quad	0x3fd9f6609c2c3028              # double 0.4056626820681708
	.quad	0x3fe32e0e1c4bf662              # double 0.59937196280197846
	.quad	0x3fe4e08bdd4e9330              # double 0.65241044258127623
	.quad	0x3fc0e48a08ac1808              # double 0.13197446273278524
	.quad	0x3fd2fbb54fa1f6c4              # double 0.29661305214527212
	.quad	0x3fe9f3bb5e1ff413              # double 0.8110024298072197
	.quad	0x3fd04ca46c1ce0f0              # double 0.25467787320987068
	.quad	0x3fc0d9b0515233ac              # double 0.13164333315617449
	.quad	0x3feec3cc11586848              # double 0.96140101802598909
	.quad	0x3fdeba7678aedcd0              # double 0.48013078484968919
	.quad	0x3fe3cbdf80eaabcc              # double 0.61863684824981524
	.quad	0x3fe256d53759f324              # double 0.57309971628965117
	.quad	0x3fe71d240338007a              # double 0.72230721119559793
	.quad	0x3fe2ba33cf49138e              # double 0.58522978291931493
	.quad	0x3fed6bd085f8242a              # double 0.91941095510367643
	.quad	0x3fe21e8056c62c2c              # double 0.56622330616062788
	.quad	0x3fc765b6436ebfdc              # double 0.18279150288208157
	.quad	0x3fd6fdaf003888b6              # double 0.35923361798826237
	.quad	0x3feb0f37d78b445d              # double 0.84560768221320937
	.quad	0x3fee55f6c4dbbca4              # double 0.94799364518066342
	.quad	0x3fb3227aad99a248              # double 0.074744861014218178
	.quad	0x3fe2afefe9ec57a9              # double 0.58397670448424777
	.quad	0x3fe42ef3b2373385              # double 0.63073143775692186
	.quad	0x3fb3521a611eab08              # double 0.075471543036354061
	.quad	0x3fe248058370dbde              # double 0.57129169151346182
	.quad	0x3feb0636b802ac0e              # double 0.84450851382769243
	.quad	0x3fc3c07377db0348              # double 0.15431063988037352
	.quad	0x3fb813e09d70b6d0              # double 0.094053305089541128
	.quad	0x3fc04a42448d1dc4              # double 0.12726620051601689
	.quad	0x3f9385f5af708d80              # double 0.019065703232752806
	.quad	0x3fefba4f6e52a735              # double 0.99149295375284529
	.quad	0x3fea61c04eca2270              # double 0.82443251980391885
	.quad	0x3fe25c8f33381ef4              # double 0.57379875186685902
	.quad	0x3f9def70770e0460              # double 0.029233701006436852
	.quad	0x3fc543ad0ac884e4              # double 0.16612780596282228
	.quad	0x3fd79b0fb3d275f4              # double 0.36883919296982914
	.quad	0x3fc4cb4366a621a0              # double 0.16245310318141737
	.quad	0x3fef94e524075fe9              # double 0.98692566906811152
	.quad	0x3fd7e6d669244410              # double 0.37346420543423253
	.quad	0x3feb20626ba5ec7d              # double 0.84770318055178928
	.quad	0x3fd4dd993b759968              # double 0.326025302949708
	.quad	0x3fe253b6056790d0              # double 0.57271863036705817
	.quad	0x3fd37aafd4799fdc              # double 0.30436321019669577
	.quad	0x3fe4b18b9f405a33              # double 0.64667302230629387
	.quad	0x3fe1af6fe8995293              # double 0.55266566686130358
	.quad	0x3fe85f132ccb1545              # double 0.76160582302751634
	.quad	0x3fd40b97e6670afa              # double 0.3132076025032543
	.quad	0x3fee66e3982669b5              # double 0.95005969731146556
	.quad	0x3fa2528a0cdaf7a0              # double 0.035785974568610657
	.quad	0x3fd5cfb7bdfd8a76              # double 0.34080308488606847
	.quad	0x3fd7d52c8a798386              # double 0.37238610766331026
	.quad	0x3fe05bff3d34a869              # double 0.5112301059173322
	.quad	0x3fe5d8df254f448e              # double 0.68272359168089891
	.quad	0x3fec312aa198c5ea              # double 0.88100177347058417
	.quad	0x3fd44a6441e6f488              # double 0.31704050479658763
	.quad	0x3fc4f519f946611c              # double 0.16372990295054357
	.quad	0x3fd32f3ed8b641de              # double 0.29975863612437859
	.quad	0x3fe63edeb3a66d64              # double 0.69517455184852084
	.quad	0x3fe23891762ae34f              # double 0.56940529899211778
	.quad	0x3fe4470bb03cab93              # double 0.63367256566322039
	.quad	0x3fd06f12ff04e6c0              # double 0.25677943138326143
	.quad	0x3fd03112130cc612              # double 0.25299503193227324
	.quad	0x3fadc4db03b88b30              # double 0.05814251346989463
	.quad	0x3fd11d53d0a03c3e              # double 0.26741500257134365
	.quad	0x3fdd7faf6daec5a8              # double 0.46091829024507058
	.quad	0x3fe537bd678d3161              # double 0.66305418229016422
	.quad	0x3fdebcfadb2c5600              # double 0.48028441814071243
	.quad	0x3fc0c4bc8bbb2cdc              # double 0.13100392172632425
	.quad	0x3fabdc82a0fa26f0              # double 0.054416734838992897
	.quad	0x3fd3902b952ad542              # double 0.30567445342179067
	.quad	0x3fecf25f03dbfe68              # double 0.90458632234363012
	.quad	0x3fea3885b80931ef              # double 0.81939969963565129
	.quad	0x3feb78a9d853f1e0              # double 0.85847942592186754
	.quad	0x3fa0ea211c2cea50              # double 0.033036265077005411
	.quad	0x3fc7160e15d34674              # double 0.18036056581199811
	.quad	0x3fe3496777fc12d7              # double 0.60271047052864446
	.quad	0x3fedbbb8384380aa              # double 0.92916499127388374
	.quad	0x3fe5f65c7f70077d              # double 0.68632340326460872
	.quad	0x3fde6c3817da4d28              # double 0.47535517053002474
	.quad	0x3fadd4dc9c241050              # double 0.058264631328740379
	.quad	0x3fed70931a2593e5              # double 0.91999201876444359
	.quad	0x3fd122bcb63c8078              # double 0.26774518772618405
	.quad	0x3f8bc3a10fd35b00              # double 0.013556726737460334
	.quad	0x3fe3138a99fc4005              # double 0.59613542628540073
	.quad	0x3fe4e1f785f945cb              # double 0.6525838486360781
	.quad	0x3fde508a8d813c10              # double 0.47366584605055184
	.quad	0x3fe248ff88dfd328              # double 0.57141091092362206
	.quad	0x3fedf4a89ca9c0c8              # double 0.93611555670033741
	.quad	0x3fdf4d77bbb68cb8              # double 0.48910325366359642
	.quad	0x3faadf18c6dfaaa0              # double 0.052483343388151527
	.quad	0x3fd09078d4ae50c4              # double 0.25881787080403407
	.quad	0x3fd49a226b99b334              # double 0.32190762050486232
	.quad	0x3fb12be22665c7d0              # double 0.067075857519540039
	.quad	0x3fef0c022e70a164              # double 0.97021588392548752
	.quad	0x3fa5842667bc86a0              # double 0.042023849642885525
	.quad	0x3fe9119186681f5c              # double 0.78339458705248032
	.quad	0x3fec09372d184882              # double 0.87612494285191667
	.quad	0x3fee53136e0f3dbd              # double 0.94764110084536635
	.quad	0x3f4351c46b5a0c00              # double 5.8958140171261331E-4
	.quad	0x3fe26b4b94e8fca1              # double 0.57559756359104963
	.quad	0x3fcb88a61b05fd40              # double 0.21510769195081458
	.quad	0x3fe68c5a8a6ec307              # double 0.70463301694516722
	.quad	0x3fe4a834ea2bc104              # double 0.64553304420954349
	.quad	0x3fb2298e6950b118              # double 0.070946598731726929
	.quad	0x3fb8ccdb842579e8              # double 0.096875877153685175
	.quad	0x3fb3c13bbcd4a018              # double 0.077167256928646899
	.quad	0x3fea202f4d6a1dd8              # double 0.81642880554221176
	.quad	0x3f68a61bbe379a00              # double 0.0030088941436929861
	.quad	0x3fef1eb9f2225a10              # double 0.97250077525933598
	.quad	0x3fcfc9270e6b6328              # double 0.24832618908001192
	.quad	0x3fcd101541e22354              # double 0.22705331532440687
	.quad	0x3f9cea510b862e40              # double 0.028237596825006372
	.quad	0x3fb5bf74f6e28760              # double 0.084952650332096535
	.quad	0x3fb1e9a92a337cb0              # double 0.069971630862243783
	.quad	0x3fefd15ed0ba6e1f              # double 0.99430790679202007
	.quad	0x3fe329ccc957c6e8              # double 0.59885253262311
	.quad	0x3fe87060f41c4cbf              # double 0.76371810605851198
	.quad	0x3fe41586d72eba7d              # double 0.62762777355040067
	.quad	0x3febeef3768bbb66              # double 0.87291882661325526
	.quad	0x3fcc016f16e8c96c              # double 0.21879376047725019
	.quad	0x3fe0ecb0cb3bd8d7              # double 0.5288928956422535
	.quad	0x3fbdcd5ea2e94cc8              # double 0.11641494252517071
	.quad	0x3fec7b6a38019a29              # double 0.89006529749605534
	.quad	0x3fe2690aec41e28c              # double 0.57532259124771334
	.quad	0x3fe7c83604cb4c53              # double 0.74318982063631223
	.quad	0x3fdcf33011d642ee              # double 0.45234300367250924
	.quad	0x3fbdadc57b75a140              # double 0.11593279136798618
	.quad	0x3fb758e81517dcc8              # double 0.091200356626234158
	.quad	0x3fd471d89950f306              # double 0.31944861385618173
	.quad	0x3fc214df7acfdf90              # double 0.14126199242286619
	.quad	0x3fdaffaa39b57980              # double 0.4218545497477848
	.quad	0x3fe6ce5f1bfc7068              # double 0.71269183603318442
	.quad	0x3fe5f6dd8261cf54              # double 0.6863849207424928
	.quad	0x3fde3887420d2f9a              # double 0.47220021677343882
	.quad	0x3fec482e3948367a              # double 0.88381110370546812
	.quad	0x3fd139f9158eb764              # double 0.26916339020941948
	.quad	0x3fbdebd53c5a5cc0              # double 0.11687977527104731
	.quad	0x3fcfb386c37d27dc              # double 0.24766621156078272
	.quad	0x3f9d53abcb458500              # double 0.0286394923035731
	.quad	0x3fed4498c1dcaef5              # double 0.91462362159424393
	.quad	0x3fc1c5d0bd077098              # double 0.13884934644636782
	.quad	0x3fd29e85962e3dda              # double 0.29092540422513269
	.quad	0x3fe1d6513a63032d              # double 0.55741177943864317
	.quad	0x3fe2599e8cd57151              # double 0.5734398604068166
	.quad	0x3fda02f344551ac4              # double 0.40643006966676531
	.quad	0x3fb0b985bc9f3670              # double 0.065330847311281692
	.quad	0x3fea839558b1d0d9              # double 0.8285624248806257
	.quad	0x3fdf2cd1359a9cae              # double 0.48711042628060397
	.quad	0x3feb7c34d6db89e6              # double 0.85891191448564252
	.quad	0x3fea785e0e7ef5c7              # double 0.82719328719365925
	.quad	0x3fb2e7343201f3a8              # double 0.073840391358273139
	.quad	0x3fe3d1df9adac83e              # double 0.61936931843798226
	.quad	0x3fee627934d777f8              # double 0.94952068634643094
	.quad	0x3fee604ab1ad9a08              # double 0.94925436690101694
	.quad	0x3f5ef976d5ee7000              # double 0.0018905315880379803
	.quad	0x3fd86b92f6c0465a              # double 0.38156580063614387
	.quad	0x3fe277068946dbc9              # double 0.57702948390839837
	.quad	0x3fd6175c819170e0              # double 0.34517586377275045
	.quad	0x3fd08696853184ca              # double 0.25821459777041567
	.quad	0x3fb634fd73659500              # double 0.086746063874290513
	.quad	0x3fed88ebb9567109              # double 0.92296396445047535
	.quad	0x3fda424fd3958b4a              # double 0.41029735243335053
	.quad	0x3fa9c22788514bf0              # double 0.050309405699088816
	.quad	0x3fd4dc936ccf36bc              # double 0.32596288324280542
	.quad	0x3fd0c166bd2e3492              # double 0.26180428003937906
	.quad	0x3fd01dc94225fdd4              # double 0.25181800327115167
	.quad	0x3febbf4e08208c08              # double 0.86710263812381161
	.quad	0x3fd255eb993665ae              # double 0.28649415933758859
	.quad	0x3fd5881999ccd882              # double 0.33643188495205589
	.quad	0x3fc498b4804570f0              # double 0.16091018927807665
	.quad	0x3fea91ab17b3fc90              # double 0.83028177861696584
	.quad	0x3fcfd500151296d0              # double 0.24868775395332543
	.quad	0x3fd0c86a18db7a10              # double 0.26223232676957853
	.quad	0x3fdc29845b59492c              # double 0.44003399773386564
	.quad	0x3fecd3b4084dcb2b              # double 0.90084268209316087
	.quad	0x3fe7f8c6f9eb79c3              # double 0.74911831676927709
	.quad	0x3fd52dd9d78fc470              # double 0.3309235196202911
	.quad	0x3fbafbb63a01fd20              # double 0.10540331760602273
	.quad	0x3fea261726264b9e              # double 0.8171497101887899
	.quad	0x3fe9b83ba8f80a50              # double 0.80373938562144964
	.quad	0x3fdb14f1636b0038              # double 0.4231532545927652
	.quad	0x3fee49ae94ca5463              # double 0.94649437962165128
	.quad	0x3feb2b5285173015              # double 0.8490383719849911
	.quad	0x3fe4430cb5a69b07              # double 0.63318477133438555
	.quad	0x3fc5e7203f67c954              # double 0.17111590476958816
	.quad	0x3fc37f69195ce55c              # double 0.15232576120778674
	.quad	0x3fd5d33887f212b6              # double 0.34101689601838403
	.quad	0x3fb6efbe37a75a48              # double 0.089595688426336584
	.quad	0x3fec96ad6601adbd              # double 0.89339322970538826
	.quad	0x3fe5040f5e3f40f0              # double 0.65674560935624804
	.quad	0x3fe91bbe762b37a0              # double 0.78463671760413333
	.quad	0x3fa29316b280c260              # double 0.036278447427666505
	.quad	0x3fd8bf4a931a2788              # double 0.38667549481817121
	.quad	0x3fe531d09add49cc              # double 0.6623309158988433
	.quad	0x3fec62449e77b3d6              # double 0.88699561072064159
	.quad	0x3fc71d9e54a74b70              # double 0.1805913842532294
	.quad	0x3fedeb9fced587d2              # double 0.93501272580419426
	.quad	0x3f9ebf6e1d657880              # double 0.030027123016559631
	.quad	0x3fe9e1fdd3990ae6              # double 0.80883685424518315
	.quad	0x3fe40f8eb063215d              # double 0.62689909411077915
	.quad	0x3fea508447558a0d              # double 0.82232870037506844
	.quad	0x3feea74e5a28afba              # double 0.95792310341993603
	.quad	0x3fea8fd68dc78af9              # double 0.83005836192418692
	.quad	0x3fde034c37f433ca              # double 0.46895127739190612
	.quad	0x3fe5d2b0c1f085bf              # double 0.68196905020538867
	.quad	0x3fe62ecdd746cc21              # double 0.69321338697625745
	.quad	0x3fc4a50be4ac1d54              # double 0.16128681817665813
	.quad	0x3fddbdf314cd2dec              # double 0.46471859961886142
	.quad	0x3f856a59ea20a7c0              # double 0.010456755120760053
	.quad	0x3febffa7c0328788              # double 0.87495791948843848
	.quad	0x3fdb1cf6f00a5486              # double 0.42364285890045783
	.quad	0x3fea751eb224f3b4              # double 0.82679686349694359
	.quad	0x3fd83b6640578b42              # double 0.37862545283694626
	.quad	0x3fa2ff96a55176e0              # double 0.037106235199400706
	.quad	0x3fa205710b51d7d0              # double 0.035197765952872495
	.quad	0x3feb4429ff400522              # double 0.85207080701380655
	.quad	0x3fedb35e0d802ce6              # double 0.9281454337773567
	.quad	0x3fe83ac5de331805              # double 0.75717442892414566
	.quad	0x3feda10dec763c0b              # double 0.92590995964008138
	.quad	0x3fe6dce0a086bc26              # double 0.7144625792769872
	.quad	0x3fd44f5f847795b2              # double 0.31734455047839127
	.quad	0x3fb6957f08d0d928              # double 0.088218631412790516
	.quad	0x3fe538ef15ce86dd              # double 0.66319994219903899
	.quad	0x3fe965714c2fae0a              # double 0.79363312606932479
	.quad	0x3fe66958d01b9297              # double 0.7003597321132301
	.quad	0x3fecae1c60c846fe              # double 0.89625376608657326
	.quad	0x3fe3360698945ad9              # double 0.60034494209943567
	.quad	0x3fe61f722f705115              # double 0.69133862748506891
	.quad	0x3fc2cacd686d3c8c              # double 0.14681403731308185
	.quad	0x3fd37cfa207163ba              # double 0.30450299423460658
	.quad	0x3fd898669a1dd264              # double 0.38430180597723607
	.quad	0x3fc7b05414bfad84              # double 0.18506861699220789
	.quad	0x3fe8b4fd950788db              # double 0.772093573639974
	.quad	0x3fe15713abb5b01f              # double 0.54187949692778037
	.quad	0x3fe3b57739e1ee29              # double 0.61590157799895906
	.quad	0x3fde952d74926a14              # double 0.47785507568338059
	.quad	0x3fdbd6f4d037e858              # double 0.43499489148928694
	.quad	0x3fd7718ba4895d16              # double 0.36630526607537328
	.quad	0x3fb72b8dd205d378              # double 0.090508331084334759
	.quad	0x3fe71664db300582              # double 0.7214836388595105
	.quad	0x3fe6b8211564d0a1              # double 0.70997671297529419
	.quad	0x3feca1d9e7494240              # double 0.89475722477988739
	.quad	0x3fe9f9d5083ec362              # double 0.81174708948502095
	.quad	0x3faa3a470a91f2d0              # double 0.051225872078224932
	.quad	0x3fd64dbbb556abb2              # double 0.34849446019023411
	.quad	0x3fe4bc035a8b3b18              # double 0.64795081791257569
	.quad	0x3fe414b623d3d7cc              # double 0.62752825734673356
	.quad	0x3fdeca23bda62a28              # double 0.48108762283723872
	.quad	0x3fb88376cdbb6d60              # double 0.095755982616017032
	.quad	0x3fdd4e09b911b200              # double 0.45788806031376339
	.quad	0x3fe740d702d476dd              # double 0.72666502526018528
	.quad	0x3fe165d8be08852b              # double 0.54368245235324275
	.quad	0x3fc207caaf352f40              # double 0.14086278491083171
	.quad	0x3feff142ba97228e              # double 0.99820076411659087
	.quad	0x3fd2b61e1194113a              # double 0.29236556736602248
	.quad	0x3fd72dc6bb4e906e              # double 0.36216896335304838
	.quad	0x3fedb43faefe88bd              # double 0.92825302294320233
	.quad	0x3fd0ae9347b23f72              # double 0.26065523149099257
	.quad	0x3fc268a9bb683ca8              # double 0.1438190617632007
	.quad	0x3fcf99fcde188148              # double 0.24688683361547192
	.quad	0x3fd2e17a03f33076              # double 0.29501200090158564
	.quad	0x3fcaf5121222a3d8              # double 0.21060396085274991
	.quad	0x3fe7090682c1d638              # double 0.7198517373896669
	.quad	0x3fccb82bd2733834              # double 0.22437045837290415
	.quad	0x3fed27701880e250              # double 0.91106419359045709
	.quad	0x3fc3d3d56b0f2c84              # double 0.1549021504164082
	.quad	0x3fe21ec8ac3d78a0              # double 0.56625779762886808
	.quad	0x3fe6fce9d3642377              # double 0.71837321555459155
	.quad	0x3fe1b8dbbca6ffdf              # double 0.5538157162300158
	.quad	0x3fd2b2a69ab20e6c              # double 0.29215397936807252
	.quad	0x3fd3bdfd99ed9ca0              # double 0.30847110778854336
	.quad	0x3fe2222e2448861f              # double 0.56667239271718362
	.quad	0x3fbd4939612b6670              # double 0.11439856169035933
	.quad	0x3fd5cec5bcc0c124              # double 0.34074538643746366
	.quad	0x3fe348903d4c23a0              # double 0.60260784122612066
	.quad	0x3fc1efaffe3ab0f8              # double 0.14012718118227219
	.quad	0x3fe36e4a603414d6              # double 0.60721319951758335
	.quad	0x3fe2d5787e4d9c3d              # double 0.58855843227946247
	.quad	0x3fee1caef7fa399a              # double 0.94100140030950574
	.quad	0x3fd9c5849c7e5aba              # double 0.40268054277968768
	.quad	0x3f9afda911343640              # double 0.026358262705846736
	.quad	0x3fd6e82685a2fb16              # double 0.357919340614829
	.quad	0x3fd178571d8c4e6a              # double 0.27296998868516786
	.quad	0x3fde331f99af9bf6              # double 0.47187032707591869
	.quad	0x3fdb3f23996c2084              # double 0.42572870237973626
	.quad	0x3fe6e337b9fab6e2              # double 0.71523653339474103
	.quad	0x3fd52d1591a72e0c              # double 0.33087672447138128
	.quad	0x3fe0868a46d89088              # double 0.51642335736370715
	.quad	0x3fd54da3367c5e50              # double 0.33286362000351222
	.quad	0x3fd540d3be53027a              # double 0.33208173357346704
	.quad	0x3feefdea96759e08              # double 0.96849564921007047
	.quad	0x3fed176cd37b6432              # double 0.90910950951650293
	.quad	0x3fe2319166ea811d              # double 0.56855077839648838
	.quad	0x3fe58ff42784b721              # double 0.67382247656289362
	.quad	0x3fd1605ac634a99a              # double 0.271506017265574
	.quad	0x3fec539536d4ed10              # double 0.88520298680615106
	.quad	0x3fd82d4bac963d92              # double 0.37776462415873724
	.quad	0x3fed70460cbcdad4              # double 0.91995527732691551
	.quad	0x3fa01583401597d0              # double 0.031414128849789003
	.quad	0x3fe0d5723331f273              # double 0.52605543135685051
	.quad	0x3fda32e655a2c2d2              # double 0.40935667384023333
	.quad	0x3feeb6cce50561d9              # double 0.95981449824017339
	.quad	0x3fecaecbe2431135              # double 0.89633745376389717
	.quad	0x3fea1c1aa717cdfa              # double 0.81593067775105443
	.quad	0x3fca0b74ad68908c              # double 0.20347460238656756
	.quad	0x3fcabaea7323b8c8              # double 0.2088292181210305
	.quad	0x3f97484dc5bb0d60              # double 0.022736754601976883
	.quad	0x3fdd529680c8f812              # double 0.45816576553977584
	.quad	0x3fd50bf62725b572              # double 0.3288550741479731
	.quad	0x3febb0d6565397f4              # double 0.86533657894756155
	.quad	0x3fbbae7fbe762158              # double 0.1081313934320226
	.quad	0x3fd5818ec1215d4a              # double 0.33603257046111834
	.quad	0x3fd8c224fdc52b8a              # double 0.38684963972325959
	.quad	0x3fd02620d1cabb56              # double 0.25232716071598327
	.quad	0x3fe187a78beb7798              # double 0.54780938461384476
	.quad	0x3fdbee7589b65b7c              # double 0.43642939041585982
	.quad	0x3fb8af66032549b8              # double 0.096426368492109726
	.quad	0x3fe8c410a7ce2633              # double 0.77393372320620413
	.quad	0x3fd507ee8f0227f8              # double 0.32860912290254829
	.quad	0x3febaac10586093a              # double 0.8645939929849995
	.quad	0x3fdb69d9a6f32400              # double 0.42833558372200287
	.quad	0x3fb629f067638d98              # double 0.086577439538407908
	.quad	0x3fb9ff8de9125920              # double 0.10155569973207834
	.quad	0x3f885b1f26004340              # double 0.011892550799559864
	.quad	0x3fe1ea38976b8269              # double 0.55984143804751085
	.quad	0x3fe71f82404b270e              # double 0.72259628827416278
	.quad	0x3fed664de521f3a7              # double 0.91873831512895243
	.quad	0x3fea70deb231a6d8              # double 0.82627806476122156
	.quad	0x3fe1c3a85dc444a6              # double 0.5551339942341158
	.quad	0x3fe9c1ee1617909b              # double 0.80492309870580259
	.quad	0x3fe978c438437029              # double 0.79599200238181311
	.quad	0x3feb60947d2f76d4              # double 0.85553955507540502
	.quad	0x3fd4f8f37a220324              # double 0.32769476820981169
	.quad	0x3fc4fb8481cd8330              # double 0.16392570817972674
	.quad	0x3fc9d992b5dd36f4              # double 0.20195230369647954
	.quad	0x3fe1fc6860643e80              # double 0.56206148935775957
	.quad	0x3fc2769f81c362b0              # double 0.14424508892149879
	.quad	0x3fdec6d683313888              # double 0.48088610469574933
	.quad	0x3fdc730b58e116fe              # double 0.44452174834837865
	.quad	0x3fee8c502d6f81a8              # double 0.95462807535300431
	.quad	0x3fe9a90eebc740ba              # double 0.80188699770408012
	.quad	0x3fe958075872c249              # double 0.79199569010786164
	.quad	0x3fe39ca053ea735b              # double 0.61286941900071257
	.quad	0x3fe1cd806e24330c              # double 0.55633565437310173
	.quad	0x3fe6e5f25f441ca6              # double 0.71556967360165369
	.quad	0x3fd80cd9a764f5b2              # double 0.37578431460482442
	.quad	0x3feba6906fa81cc3              # double 0.86408254440257115
	.quad	0x3fe64eb38984d474              # double 0.69710709437516849
	.quad	0x3fca3e228828e01c              # double 0.20502120636388177
	.quad	0x3fb810913c335270              # double 0.094002797315008157
	.quad	0x3feed8c3ec6b2fa7              # double 0.96396061110998665
	.quad	0x3fc246c23b515b00              # double 0.14278438469292354
	.quad	0x3fcfed97922f8cf4              # double 0.24943823469138915
	.quad	0x3fe94d370ac1628d              # double 0.79067566013971347
	.quad	0x3fd100ffd51b9aa8              # double 0.26568599520980252
	.quad	0x3fed511f7f36a419              # double 0.9161527142179039
	.quad	0x3fd49e8c766b7898              # double 0.3221770435756155
	.quad	0x3fee5a9f4c4a0ae3              # double 0.94856228733291592
	.quad	0x3fe1175abdb4e125              # double 0.53410088588774285
	.quad	0x3fd880963f0d353e              # double 0.38284832150823778
	.quad	0x3fe3c4590a8572d0              # double 0.6177182393544971
	.quad	0x3fe571c86b58f1aa              # double 0.67013951269432437
	.quad	0x3fadb1e6b91b93c0              # double 0.057997903915555593
	.quad	0x3feccfa328f28355              # double 0.9003463554146075
	.quad	0x3fda7b18ae7f08d8              # double 0.41376320877692541
	.quad	0x3fcad7b55da79c8c              # double 0.20970789978966697
	.quad	0x3fe7d2f408e46e31              # double 0.74450113045481292
	.quad	0x3fdb10aeade74820              # double 0.42289320929296714
	.quad	0x3fed74a2f1e77c98              # double 0.92048785445139725
	.quad	0x3feac827e1050747              # double 0.83693307828091512
	.quad	0x3fe628bfaabbdc34              # double 0.69247420641375479
	.quad	0x3fe6b4269062bf86              # double 0.70949104500140048
	.quad	0x3fd7ff22735e4944              # double 0.37494717852054671
	.quad	0x3fe0cd488308bbd7              # double 0.52505899040795156
	.quad	0x3fe9d3adad672e04              # double 0.80708965175421143
	.quad	0x3fcad0743fea8b0c              # double 0.2094865142908805
	.quad	0x3fd20e054a9cb7ec              # double 0.28210575376840441
	.quad	0x3fcb99310a1871d8              # double 0.21561253540939052
	.quad	0x3fed6276d714c9cd              # double 0.91826955802962973
	.quad	0x3feabbfd86431126              # double 0.83544803832095194
	.quad	0x3fe9885fbd393a3d              # double 0.79789721448634732
	.quad	0x3f925ce9f7ac84a0              # double 0.017932563535513979
	.quad	0x3fe03a53c7fe040a              # double 0.50712002812372359
	.quad	0x3fee4eb1265b1613              # double 0.94710595599525715
	.quad	0x3fec0ba4bdbb4058              # double 0.87642132813381135
	.quad	0x3fd3b40491d19bbc              # double 0.30786241760364041
	.quad	0x3fe0e35a37b773f9              # double 0.52775298006201787
	.quad	0x3fd93b1e9dbdc3fc              # double 0.39423337368413036
	.quad	0x3fe53a073379af45              # double 0.66333351186538236
	.quad	0x3febb9b919053b19              # double 0.86642126929095575
	.quad	0x3fd9ca12e5330d22              # double 0.40295860655551696
	.quad	0x3fb5297c190944a0              # double 0.082664257156709997
	.quad	0x3feb2049d88628af              # double 0.84769146242003568
	.quad	0x3fdecc110b6f4c12              # double 0.48120523564028972
	.quad	0x3f7b52c6a5257b80              # double 0.0066707381796210496
	.quad	0x3fecc5f437b7bb93              # double 0.89916430361141619
	.quad	0x3fedfee61db5dea5              # double 0.93736558726137231
	.quad	0x3fd7371bfc0c55e4              # double 0.36273860563355087
	.quad	0x3fd2cd869c007cda              # double 0.2937943004089455
	.quad	0x3feb4faea524dbe6              # double 0.85347683195766133
	.quad	0x3fe9d9e7502f883f              # double 0.80784955655349922
	.quad	0x3fc718a50851a350              # double 0.18043959528156472
	.quad	0x3fec99104bca7a42              # double 0.89368452837863566
	.quad	0x3fe3d6f47159059b              # double 0.61998960626822297
	.quad	0x3fdeacd2d6ca7686              # double 0.47929831481619833
	.quad	0x3fcb06e8b0a9e348              # double 0.21114834428933649
	.quad	0x3fe90a418d142f90              # double 0.7825019603201202
	.quad	0x3fdf0e68ad98d0da              # double 0.48525444939447271
	.quad	0x3fe67ad0c4556d9b              # double 0.70249212595392707
	.quad	0x3fe845767c96b77d              # double 0.75847935041177517
	.quad	0x3feade04cc75fb61              # double 0.83960189756167491
	.quad	0x3fe41022bd11e76e              # double 0.62696968963358102
	.quad	0x3fea5173ea1bad32              # double 0.82244296764603164
	.quad	0x3fe00b4818bc0138              # double 0.50137715178428888
	.quad	0x3fcbe76ff993b704              # double 0.21800040899636752
	.quad	0x3fe54597b971194d              # double 0.66474519938564358
	.quad	0x3fee9c3ffab51805              # double 0.95657347646988511
	.quad	0x3fd4bdecca7eebca              # double 0.32409209990481413
	.quad	0x3fdc0de5366765da              # double 0.4383481055534425
	.quad	0x3fe8631b761f969a              # double 0.76209805556273413
	.quad	0x3fce2b4edfefcf5c              # double 0.23569665846263887
	.quad	0x3fe1b2e96101df3c              # double 0.55308979937306146
	.quad	0x3fe0b028614475bc              # double 0.52150362966101893
	.quad	0x3fbcef77cf3913d0              # double 0.11302899178652059
	.quad	0x3fa921ae64879e00              # double 0.049085092326830448
	.quad	0x3fd46f7b45457562              # double 0.31930429234292579
	.quad	0x3feb32ac5936ea15              # double 0.84993569779118394
	.quad	0x3fe3c8e68739d799              # double 0.6182739869243391
	.quad	0x3fe909341da643f5              # double 0.78237348357117631
	.quad	0x3fdbb2d2bb2fbdb6              # double 0.43278950004511374
	.quad	0x3fe347500ad17830              # double 0.60245515931069882
	.quad	0x3fc67c446867eccc              # double 0.17566733453700178
	.quad	0x3feb5d59e8be2f24              # double 0.85514541108702646
	.quad	0x3fe2b0c46ccb5227              # double 0.58407803772803824
	.quad	0x3fe74ec7a561b90e              # double 0.7283666830169595
	.quad	0x3fc9edd255853ee0              # double 0.20257023979001243
	.quad	0x3fee3f504eb3f8bc              # double 0.94522872325594375
	.quad	0x3fedf4db0947c85e              # double 0.9361396008737406
	.quad	0x3febb9d9ade207d4              # double 0.8664368053580298
	.quad	0x3fe457e81a2c77a3              # double 0.63573079216051942
	.quad	0x3fe6efc5cf207617              # double 0.71676912741139887
	.quad	0x3fe436b1856b47fe              # double 0.63167644556438041
	.quad	0x3fd5ae74ce22ccea              # double 0.33877296572172944
	.quad	0x3fa8968e7240bbf0              # double 0.048023654410250916
	.quad	0x3feee1b558a5bc1a              # double 0.96505229295678707
	.quad	0x3fc47cf477556c5c              # double 0.16006332232322762
	.quad	0x3fd47cdc67592dd2              # double 0.32012090771305879
	.quad	0x3fd62e9cdb857f6a              # double 0.34659501493114553
	.quad	0x3fcc328e5c880e30              # double 0.22029284971368801
	.quad	0x3fdc2914aa4be0c6              # double 0.44000736837871235
	.quad	0x3fe5303e26f72311              # double 0.66213901148248244
	.quad	0x3fcc581756455684              # double 0.22143832886165538
	.quad	0x3fe42f1af390a10a              # double 0.63075015612869945
	.quad	0x3fe28dec0d36a8ec              # double 0.57982447224392564
	.quad	0x3fe420bc206b9958              # double 0.62899595577327272
	.quad	0x3fbcc20a44336ef8              # double 0.11233581700383499
	.quad	0x3fe310b472d9d225              # double 0.59578916961487904
	.quad	0x3fd12c71372995c4              # double 0.26833753954846551
	.quad	0x3fca1da93ce4a68c              # double 0.20403018449114929
	.quad	0x3feecafb9a54ce72              # double 0.96227817671610993
	.quad	0x3fd25d3a92488726              # double 0.28694023404578883
	.quad	0x3fe0868f5e28d08f              # double 0.51642578497423297
	.quad	0x3fda5ee7d893db92              # double 0.41204258108285174
	.quad	0x3feea0f067eedafc              # double 0.95714588450832094
	.quad	0x3fc326b3cea8bf60              # double 0.1496186026647548
	.quad	0x3fdcb8c816591caa              # double 0.44877817327910441
	.quad	0x3fde88fe0ef05ece              # double 0.47711135348207001
	.quad	0x3feadf282399f49f              # double 0.83974081948658241
	.quad	0x3fd45644cfab2cfe              # double 0.31776542930738561
	.quad	0x3fe0e3431eca4024              # double 0.52774196637802051
	.quad	0x3fa0f6cc8ee22230              # double 0.03313292736226392
	.quad	0x3fefb9a0b95bea42              # double 0.99140964701593526
	.quad	0x3faec38ecea0e650              # double 0.060085737918097792
	.quad	0x3fdea2d985450428              # double 0.47868955626114706
	.quad	0x3feb586b8358bf62              # double 0.85454345372816598
	.quad	0x3fc423aefa828370              # double 0.1573389743034812
	.quad	0x3fdc7961dc10c070              # double 0.44490858546033163
	.quad	0x3febdd75879f602d              # double 0.87078358162671565
	.quad	0x3fe63fee3736be0e              # double 0.69530401977493894
	.quad	0x3feb4e304b20d0b5              # double 0.8532945124957424
	.quad	0x3fe468a196d40673              # double 0.6377723642219294
	.quad	0x3fea71cc8ca337d6              # double 0.82639148205066237
	.quad	0x3fd1fa05a5bb7a88              # double 0.28088513550566363
	.quad	0x3fec439988dc0770              # double 0.88325192194336744
	.quad	0x3fcd525f718e3980              # double 0.22907631916718785
	.quad	0x3fdcaafb30af6950              # double 0.44793586496748095
	.quad	0x3fd6006eb19664c4              # double 0.34377639143492567
	.quad	0x3fe77358a5c07b8d              # double 0.73283035634436688
	.quad	0x3fc905fb4c98ede8              # double 0.1954950450907369
	.quad	0x3feb99f9c12a6ca9              # double 0.86254585006408491
	.quad	0x3fe80903df80b971              # double 0.75110047963043602
	.quad	0x3fe98304e62a8107              # double 0.79724354700377453
	.quad	0x3fea487226408283              # double 0.82134349318592148
	.quad	0x3fe7a9058dd05ee8              # double 0.73938253114735364
	.quad	0x3f899a7a18138380              # double 0.012501672610996328
	.quad	0x3f84563e7f0c7580              # double 0.0099301226160217748
	.quad	0x3f878baaed5a53c0              # double 0.011496863716539241
	.quad	0x3fcf22210fbb3284              # double 0.24322903888823444
	.quad	0x3fdd4bde31530c92              # double 0.45775561158024758
	.quad	0x3fc04549e98968bc              # double 0.12711452391778788
	.quad	0x3fe08fe2f0003a8f              # double 0.51756426692175406
	.quad	0x3fbb730a002f2cd8              # double 0.10722410683154082
	.quad	0x3fdd377b9abc44fa              # double 0.45651140318757621
	.quad	0x3fe1db00aca79421              # double 0.55798372003176067
	.quad	0x3fd716d19325f77c              # double 0.36076773996307288
	.quad	0x3facba5f4466eaa0              # double 0.056109406566482223
	.quad	0x3fd33fa473d97334              # double 0.30075942338389727
	.quad	0x3febc00cba1c4818              # double 0.86719356870367204
	.quad	0x3fee8fa5aeed698e              # double 0.95503505864626148
	.quad	0x3fc8ed8e68919460              # double 0.19474964242832282
	.quad	0x3fe9157cbb197b4f              # double 0.78387295287016368
	.quad	0x3fe4155c142a6bd6              # double 0.62760738314261277
	.quad	0x3fee61de9b0908d3              # double 0.94944696693735364
	.quad	0x3fec00fc36930fa7              # double 0.87512026461671588
	.quad	0x3fc6553f2c00dd6c              # double 0.17447652481653664
	.quad	0x3fc97293f3553f94              # double 0.19880914098257263
	.quad	0x3fdd8f7a22e72456              # double 0.4618821469162574
	.quad	0x3fe9b8a078d8fb9b              # double 0.80378745654148831
	.quad	0x3fd0dbdb0a718558              # double 0.26341892261378552
	.quad	0x3fe8d229f943a06c              # double 0.77565478023917711
	.quad	0x3fba29cd002c5288              # double 0.10220032934405243
	.quad	0x3fe14e55b27ca963              # double 0.54081234799131683
	.quad	0x3fc4f0fe4aa0c60c              # double 0.16360453266092667
	.quad	0x3fe30b3def42ca2c              # double 0.59512230616230033
	.quad	0x3fdd3ce6aa1e2448              # double 0.456842104082686
	.quad	0x3fd7300ce036a61c              # double 0.36230775733801734
	.quad	0x3fb781e33be1b2c8              # double 0.091825677985705956
	.quad	0x3fdc294ea1bf46dc              # double 0.44002118869421536
	.quad	0x3fed0b29262986fb              # double 0.90761239484365264
	.quad	0x3fe936abe84ce782              # double 0.78792376872227998
	.quad	0x3fd5983d280911fe              # double 0.33741692456922567
	.quad	0x3fbf69446625beb8              # double 0.12269999975046175
	.quad	0x3fd8116a8821c3fc              # double 0.37606299680834332
	.quad	0x3fea144362364f72              # double 0.81497353727398392
	.quad	0x3fcfbd3e7b2d0b00              # double 0.24796277059984817
	.quad	0x3fd82d30d308cf50              # double 0.37775822266416004
	.quad	0x3fceeef726661104              # double 0.24166764616905578
	.quad	0x3fd2aa429e912f20              # double 0.29164185986586411
	.quad	0x3fc697309c3e5b20              # double 0.17648894909935908
	.quad	0x3fe5af4f12164403              # double 0.67765000851261481
	.quad	0x3fead45ed63d8641              # double 0.83842412799658217
	.quad	0x3faa3de21c095cc0              # double 0.051253381655152364
	.quad	0x3fe5e8a55597b253              # double 0.68464915005967908
	.quad	0x3fd46435b89351ec              # double 0.31861632370899318
	.quad	0x3fe49bb97b80e5a4              # double 0.64400934335497029
	.quad	0x3fcdd37c887a53f4              # double 0.2330165544887276
	.quad	0x3fee51bea0723812              # double 0.94747859322683525
	.quad	0x3fe65e667093182e              # double 0.69902345645164643
	.quad	0x3fe4960131e24fcf              # double 0.64331111662840523
	.quad	0x3fcc4460d4252bfc              # double 0.22083673819210492
	.quad	0x3feac6e3585f0eb8              # double 0.83677832851431955
	.quad	0x3fed29a5a47b73bf              # double 0.91133386731564048
	.quad	0x3fc2411237847e0c              # double 0.14261081419770993
	.quad	0x3fc6965d1cd95c14              # double 0.17646373661656922
	.quad	0x3fcaf5d5a711a390              # double 0.2106272760168193
	.quad	0x3fdd9f9a13af0c30              # double 0.46286632463688004
	.quad	0x3fd350022b94194a              # double 0.30175832992280915
	.quad	0x3fe03ed07fe68fe4              # double 0.50766777973740007
	.quad	0x3fe2ec78555102cb              # double 0.59136597312325401
	.quad	0x3fd67920953c60c0              # double 0.3511430222874985
	.quad	0x3fc1457c6da11230              # double 0.13493304589259614
	.quad	0x3feb92a6623db229              # double 0.86165160358138337
	.quad	0x3fdaeef6ea641338              # double 0.42083523645151244
	.quad	0x3feb4457b8c4c4b1              # double 0.85209261024114913
	.quad	0x3fd76fa1738b0fac              # double 0.3661883953429832
	.quad	0x3fcffb9782ae02cc              # double 0.24986547356458855
	.quad	0x3fd2268377f223e4              # double 0.28360068047964959
	.quad	0x3fd99f698e0740fa              # double 0.40035475606875048
	.quad	0x3fd4a5d30af1a2e8              # double 0.32262111729373411
	.quad	0x3fe357673cf9e308              # double 0.60441934499166994
	.quad	0x3fd4e342e47c80a8              # double 0.3263709288894554
	.quad	0x3fd1322ca2ad9476              # double 0.26868739973571765
	.quad	0x3fe934232c6d828e              # double 0.78761442830371364
	.quad	0x3fea4ca5c9ee507d              # double 0.82185639800674404
	.quad	0x3fe9a366b17cc736              # double 0.80119642892370879
	.quad	0x3feef725bd09c5b7              # double 0.96766936227338973
	.quad	0x3fe06aa70bcbcbbd              # double 0.51301910690232655
	.quad	0x3fc0316744cfb384              # double 0.12650767192772261
	.quad	0x3fee400933d84ce6              # double 0.94531688810311887
	.quad	0x3feee46f747251a8              # double 0.96538517707317783
	.quad	0x3fbe9d86b7634148              # double 0.11959115960349209
	.quad	0x3fe615057eeca16d              # double 0.69006609716329381
	.quad	0x3fd0c181e87201c4              # double 0.26181075763454609
	.quad	0x3fc41725166521fc              # double 0.1569563254690961
	.quad	0x3fd9c6a28040f824              # double 0.40274870419296094
	.quad	0x3fc90c3e10bfd198              # double 0.19568610971294897
	.quad	0x3fd5927022450d26              # double 0.3370628676095343
	.quad	0x3fe7968944614359              # double 0.737126000933226
	.quad	0x3fe09889d3cbba33              # double 0.51862040869111181
	.quad	0x3fe636e31aea8154              # double 0.6942000890449358
	.quad	0x3feea2f5f0737fd1              # double 0.95739266360396347
	.quad	0x3fd047d220981cae              # double 0.25438359435106406
	.quad	0x3fd5e7ae9d4d9f06              # double 0.34226575242654211
	.quad	0x3fb722142c34fb50              # double 0.090363751213755394
	.quad	0x3fd4ee061cab542c              # double 0.32702782439929723
	.quad	0x3fe1d2003b2b882e              # double 0.55688487583780044
	.quad	0x3fec42b93004eb32              # double 0.88314494494202322
	.quad	0x3fec664ee3ab9fc9              # double 0.88748878924251884
	.quad	0x3fea39689c2e961c              # double 0.81950788978855682
	.quad	0x3fe8a1d008f62df9              # double 0.76975251913375964
	.quad	0x3fdd30c153afc99e              # double 0.45610078022505174
	.quad	0x3fb89263e25d9d40              # double 0.095983736767824901
	.quad	0x3fdda114a08dbc70              # double 0.46295657805507684
	.quad	0x3feb7fbb74a2c01c              # double 0.8593423154870865
	.quad	0x3fb8102a39f09d78              # double 0.093996657510265424
	.quad	0x3fe4c957cc612b5d              # double 0.64957799833187446
	.quad	0x3fc4a70dd92e1da8              # double 0.16134808640002274
	.quad	0x3fd6415e2d786fde              # double 0.34773973885034859
	.quad	0x3fd6bb59531f8fd6              # double 0.35518487088688511
	.quad	0x3f9a0be673b632c0              # double 0.025436020672304549
	.quad	0x3fe765b8a924ddef              # double 0.7311671546548818
	.quad	0x3f952793ffff73c0              # double 0.020658791065091497
	.quad	0x3fc46714183d7a24              # double 0.15939570602036313
	.quad	0x3fe647f3e62f3b9c              # double 0.69628329236899189
	.quad	0x3fed077e1a60b8fc              # double 0.90716462280195697
	.quad	0x3fd60ea3c1f974f0              # double 0.34464353506866896
	.quad	0x3febda6adf72c917              # double 0.87041228906881229
	.quad	0x3fd3778957b76588              # double 0.30417092863134387
	.quad	0x3fefb1db9f92decd              # double 0.9904611698793474
	.quad	0x3fe3d320cfe2a32e              # double 0.61952248194311266
	.quad	0x3fec1a0bdedb1665              # double 0.87817948843503457
	.quad	0x3fd2d6f607b534a8              # double 0.29437018158643946
	.quad	0x3fee0982d8e7b772              # double 0.93866102566037868
	.quad	0x3febd532de707370              # double 0.86977523274582147
	.quad	0x3fecc86037400066              # double 0.89945994177834332
	.quad	0x3fe6c2573e8e17a8              # double 0.71122324197562126
	.quad	0x3fe21ea6b8e64102              # double 0.56624160874528706
	.quad	0x3fd23b6c8e15184a              # double 0.28487695574984129
	.quad	0x3fc79d547b07ea44              # double 0.18448883063668309
	.quad	0x3fefe63cfd312aa5              # double 0.99685525371144889
	.quad	0x3fe99cd5a543a598              # double 0.80039484289334251
	.quad	0x3fd382f1d6b2dc50              # double 0.3048672291437855
	.quad	0x3fe6bbab76bf57de              # double 0.71040890877588558
	.quad	0x3fed171e10dd451b              # double 0.90907195371451921
	.quad	0x3feab834842eb217              # double 0.83498597924114193
	.quad	0x3eda90614bf40000              # double 6.3333474706883663E-6
	.quad	0x3fde7f7ac11d393c              # double 0.47653073176197203
	.quad	0x3fcf5f997531d144              # double 0.24510496351616429
	.quad	0x3fb6e0b1d1bfc758              # double 0.089366067608151467
	.quad	0x3fee1a0a9d8b684d              # double 0.94067888994619298
	.quad	0x3fc515cace373f64              # double 0.16472754544383428
	.quad	0x3feaedd098e1ac75              # double 0.84153013095546092
	.quad	0x3fe4b1ca63fb4692              # double 0.6467029526485979
	.quad	0x3fb5cf42e49d3680              # double 0.085193806470863719
	.quad	0x3fe3adc9d02e1536              # double 0.61496439609678677
	.quad	0x3feb72e132f39661              # double 0.85777339889018489
	.quad	0x3febd821a1f8f135              # double 0.87013322482338273
	.quad	0x3fe70e5ccd236c9f              # double 0.72050323549355599
	.quad	0x3fe95aed8ba53e9e              # double 0.79234959864148258
	.quad	0x3fe0f62edc13a5a1              # double 0.53005164130916083
	.quad	0x3fd83dd224cf8c48              # double 0.37877324671552914
	.quad	0x3fdaabbb645c7276              # double 0.41673168946162009
	.quad	0x3fee4eb1f74055fb              # double 0.94710634509345881
	.quad	0x3feb25de1aca8453              # double 0.84837250931389929
	.quad	0x3fe3184588c75c8f              # double 0.59671284403420255
	.quad	0x3f964d1b51f1b7a0              # double 0.02177851379058604
	.quad	0x3fdcf55beabd0dc0              # double 0.4524755279892041
	.quad	0x3fee4a985a058a56              # double 0.94660585005142184
	.quad	0x3fe465c71486145b              # double 0.63742403038544226
	.quad	0x3fbf33c7d20de7a0              # double 0.1218838584735793
	.quad	0x3fefc00fa08d4791              # double 0.99219495160854098
	.quad	0x3fd795b35325276a              # double 0.3685119926418482
	.quad	0x3fc765de782b85d4              # double 0.1827962958114272
	.quad	0x3fac53c77209ae60              # double 0.055326683683998068
	.quad	0x3f5c512c29f73400              # double 0.0017283374107706084
	.quad	0x3fe8eb8741b29c14              # double 0.77875101882534858
	.quad	0x3fecf15aa26e495e              # double 0.90446216320769302
	.quad	0x3fefd8dd43bc3bfe              # double 0.995222694678773
	.quad	0x3fd08d2724b0a810              # double 0.25861528952612023
	.quad	0x3fd02744015409f6              # double 0.25239658479418325
	.quad	0x3fb60711752d76b8              # double 0.086045352084933024
	.quad	0x3fd00b4345cfce7e              # double 0.2506874257808035
	.quad	0x3fc285869e2ccf5c              # double 0.14469988559141711
	.quad	0x3fe8ab57fa38b18c              # double 0.77091597434405079
	.quad	0x3fc351813a89a8f4              # double 0.15092482908523375
	.quad	0x3fd314f89195a88a              # double 0.29815496651884443
	.quad	0x3fd4a4c540ce14dc              # double 0.32255679443944785
	.quad	0x3fc3fa9f342a0c84              # double 0.156085873099162
	.quad	0x3fe52181417f17fb              # double 0.66033995430257109
	.quad	0x3fdd4406a8eaf792              # double 0.45727697845347237
	.quad	0x3fe554c31338ec36              # double 0.66659692530027459
	.quad	0x3fd5536df084f922              # double 0.33321712959504357
	.quad	0x3fde0c069836b0f8              # double 0.46948399414647168
	.quad	0x3fecce1640b0755f              # double 0.90015709528567445
	.quad	0x3fdb08200dd2cede              # double 0.42237092351864003
	.quad	0x3fcaeb2ee5f06520              # double 0.21030222156040512
	.quad	0x3fee775bee201bed              # double 0.95207020291206634
	.quad	0x3fea67bfe5282d6f              # double 0.82516474492278558
	.quad	0x3fde358d244c1ba4              # double 0.47201851410539519
	.quad	0x3fc22f59284ed36c              # double 0.14206995456847993
	.quad	0x3fe8f6d8d088f9ce              # double 0.78013268212799303
	.quad	0x3fd0892e1bb38730              # double 0.25837280945971752
	.quad	0x3fe3f76f1bb0f594              # double 0.62395434769102787
	.quad	0x3fe4419e1c3f6b27              # double 0.63300996319899105
	.quad	0x3fe308c30e791198              # double 0.59481957270377261
	.quad	0x3f94eb52f2600420              # double 0.020428939860725248
	.quad	0x3feba9e8ea73d3bf              # double 0.86449094573492136
	.quad	0x3fcd219604aa5114              # double 0.22758746364400706
	.quad	0x3fd9c4b9093171c2              # double 0.40263200662391452
	.quad	0x3fe986a3ad507d17              # double 0.7976854691550298
	.quad	0x3fd237e58b70666c              # double 0.28466166131111126
	.quad	0x3fce8fca6ec05680              # double 0.23876314552096645
	.quad	0x3fca29eb737aa048              # double 0.20440428866027305
	.quad	0x3fea1a7a1d5dd26f              # double 0.81573205695765505
	.quad	0x3fdcfeefec437cf8              # double 0.45306013176555338
	.quad	0x3fe2f207b89e5786              # double 0.59204469736390375
	.quad	0x3fe4e998737500dd              # double 0.65351507711605061
	.quad	0x3feb09244dac1c9d              # double 0.84486594362614975
	.quad	0x3fdfca53b9ac6814              # double 0.49672406322645313
	.quad	0x3fda1da93891cee6              # double 0.40806036495562947
	.quad	0x3fc161360ff25b8c              # double 0.13577914980552597
	.quad	0x3fed7e7f5e1d9a75              # double 0.92169159299812853
	.quad	0x3fde75f507bb7b6e              # double 0.47594953303444398
	.quad	0x3fd341201b96482e              # double 0.30084994024321332
	.quad	0x3fd1d05124894c58              # double 0.27833965843200792
	.quad	0x3fd992f0f52b4c86              # double 0.39959358160303571
	.quad	0x3feb6363dc36f0f7              # double 0.85588257799784528
	.quad	0x3fd63d3c496dd902              # double 0.3474875180321676
	.quad	0x3feb5729857e1b19              # double 0.854389916160332
	.quad	0x3fe725f480cdad72              # double 0.72338318974418159
	.quad	0x3fd9690f848fce94              # double 0.39703739114268299
	.quad	0x3fc7d79a3e463c78              # double 0.18626716652622455
	.quad	0x3fa1f18736dfb500              # double 0.035045838783711147
	.quad	0x3fd551ea492dba54              # double 0.33312470575666464
	.quad	0x3fbf5f6dda181ab8              # double 0.12254988264622113
	.quad	0x3fcf42ae78f4ab90              # double 0.24422245889703875
	.quad	0x3fe31b40f6c63dc1              # double 0.59707687566872647
	.quad	0x3fedadbd99200800              # double 0.92745857150316624
	.quad	0x3fb2030493ba21b0              # double 0.070358549181156915
	.quad	0x3fe01fc01bf07ebe              # double 0.50387578446312609
	.quad	0x3fc25797259792c8              # double 0.14329804740477514
	.quad	0x3fe1e5431780e2ff              # double 0.55923609343071223
	.quad	0x3fb0b7f7c9d317d0              # double 0.065307127736644377
	.quad	0x3fcc3228dcfc6088              # double 0.22028075018238646
	.quad	0x3fe5c02a40a52ed5              # double 0.67970764757179813
	.quad	0x3fe8a35d2489e133              # double 0.769941874851645
	.quad	0x3fe991c260e75b6b              # double 0.7990428822184702
	.quad	0x3fe074f08d3be624              # double 0.51427486023675728
	.quad	0x3fe97e7508850a31              # double 0.79668666519166298
	.quad	0x3fdf7d93ba203020              # double 0.49203961540547603
	.quad	0x3fe17cd577543522              # double 0.54648850733216059
	.quad	0x3fe4aa0ee62c84db              # double 0.64575905757751728
	.quad	0x3fed29c7faee6cee              # double 0.91135024080304361
	.quad	0x3fdb60a283761284              # double 0.42777312124261635
	.quad	0x3fdd1d9babce51cc              # double 0.45493213441775704
	.quad	0x3fd2b3989440f1ac              # double 0.29221167066477949
	.quad	0x3fe19109a778f726              # double 0.54895479878880304
	.quad	0x3fea105075cf6f5c              # double 0.81449149141142695
	.quad	0x3fd312ef973c64fc              # double 0.29803075570232784
	.quad	0x3fa6c20f77b82fd0              # double 0.044449313511080057
	.quad	0x3fec3810f90a8144              # double 0.88184403076960693
	.quad	0x3f9fe3363771e100              # double 0.031140181669315758
	.quad	0x3fd72c21631b35b4              # double 0.36206850698803383
	.quad	0x3fe3284c3714a923              # double 0.59866915471983295
	.quad	0x3fd58f4767620f82              # double 0.3368700513458337
	.quad	0x3fef04a4c5e097ab              # double 0.96931685111916487
	.quad	0x3fe3e9da594bee4b              # double 0.62229649964087608
	.quad	0x3fee6342adfbf134              # double 0.94961675626067298
	.quad	0x3feadba94f0569b6              # double 0.83931413110558739
	.quad	0x3fe621e7d3063ebc              # double 0.69163886275961017
	.quad	0x3fed21a831fa1092              # double 0.9103585220441508
	.quad	0x3fe2989d9a94d7a9              # double 0.58112983886416203
	.quad	0x3feb1b33df1235ca              # double 0.84707063263493265
	.quad	0x3fe5880f71fb5a56              # double 0.67285892736510777
	.quad	0x3fe7e1a5bd3874e9              # double 0.74629485089431313
	.quad	0x3fdb2256f8c48122              # double 0.42397093099318017
	.quad	0x3fe66893cc4d09a7              # double 0.70026578810238937
	.quad	0x3fe111d9a6741d4a              # double 0.53342897901976838
	.quad	0x3fc45ea7b755c1d4              # double 0.15913864566711189
	.quad	0x3fe2873070bf017d              # double 0.57900259037710067
	.quad	0x3fd697b398a2a454              # double 0.35300912767212833
	.quad	0x3fcfb6896f16ca08              # double 0.24775808262127463
	.quad	0x3fee937597cc3ab0              # double 0.95550040863039065
	.quad	0x3fef078ec2e1070b              # double 0.96967256605441443
	.quad	0x3fe750893c6a873e              # double 0.7285810642244781
	.quad	0x3fe3ce874ed7c8a0              # double 0.61896100424771205
	.quad	0x3fe9ff8e2924f607              # double 0.81244571720134295
	.quad	0x3fb5331169c76bb0              # double 0.082810486149738293
	.quad	0x3fce4c87cb308b54              # double 0.23671052380913216
	.quad	0x3fefca09e1c0c83c              # double 0.99341291515725727
	.quad	0x3feabf48be4b4617              # double 0.83585011641315787
	.quad	0x3fdc3a5ffe3c21d4              # double 0.44106292560220806
	.quad	0x3fe64e76062f790b              # double 0.69707776268094912
	.quad	0x3fcb248b03e3d210              # double 0.2120527047151346
	.quad	0x3fee8d3811d33a41              # double 0.95473865014520964
	.quad	0x3fde964c109ec5ec              # double 0.4779234087282862
	.quad	0x3fcbbcab3ef9d620              # double 0.21669521880146281
	.quad	0x3fe05dbe6f46c10e              # double 0.51144334539097414
	.quad	0x3feefc95edecba48              # double 0.96833321065589306
	.quad	0x3fe65dff80c66bdf              # double 0.69897437240012639
	.quad	0x3fb25ea0c9723970              # double 0.071756409817884892
	.quad	0x3fe68c4f575cf13f              # double 0.70462767661187076
	.quad	0x3fe7a90b7d68acf7              # double 0.73938536161349944
	.quad	0x3fca13a54f10a750              # double 0.20372454033468523
	.quad	0x3fdeef1dbaf6a958              # double 0.48334449060589213
	.quad	0x3fe37829528c0990              # double 0.60841814157929441
	.quad	0x3feb009cd5d07a1e              # double 0.84382478485696644
	.quad	0x3fe56ce8b3bff2c8              # double 0.669544554780793
	.quad	0x3fe9102b213e651a              # double 0.78322369091907551
	.quad	0x3fc536de0889be8c              # double 0.16573691765687604
	.quad	0x3fea592b7057b1f8              # double 0.82338497106462594
	.quad	0x3feff7bb6a63400e              # double 0.99899073389861015
	.quad	0x3fc6a0bd0be9c624              # double 0.17678034860323166
	.quad	0x3fca50bbb814e6c4              # double 0.20558878410684234
	.quad	0x3fe9d59d545d58c1              # double 0.80732599713771702
	.quad	0x3febc39546fe06d8              # double 0.86762489190752046
	.quad	0x3feaf71dad90dc39              # double 0.84266551875669571
	.quad	0x3fd814f496ace1ce              # double 0.37627901758562821
	.quad	0x3fe6aa4a3abc8e66              # double 0.70828734848005293
	.quad	0x3fd23f6b39953bdc              # double 0.28512077926001012
	.quad	0x3fef08ba7cb96fa5              # double 0.96981548652864957
	.quad	0x3fa37dbfdaf65630              # double 0.038068767050543406
	.quad	0x3fe214a30bc395d7              # double 0.56501915261895419
	.quad	0x3fcb8619bd09c3cc              # double 0.2150299237287342
	.quad	0x3fed830e18172526              # double 0.92224793152960127
	.quad	0x3fdaabb85ba598dc              # double 0.41673096609009774
	.quad	0x3fc9d5c514ebe68c              # double 0.20183623811299289
	.quad	0x3fee3414817c6723              # double 0.94385743417953838
	.quad	0x3fb8bd4ae4780528              # double 0.096638375071070315
	.quad	0x3fda8cd11ddd4422              # double 0.41484477917134843
	.quad	0x3fc41dbc04550a1c              # double 0.15715742312939163
	.quad	0x3f91518cc7b19a20              # double 0.016912650764789317
	.quad	0x3fdae32813ff4726              # double 0.42011453583573866
	.quad	0x3fedf01a9432bc8d              # double 0.93555954880675218
	.quad	0x3fef436edf1ee612              # double 0.97698157861958834
	.quad	0x3fdd13605afab5dc              # double 0.45430764088345454
	.quad	0x3feae711ed6feed5              # double 0.84070679068050913
	.quad	0x3febe0e12b08ab6b              # double 0.87120111851741677
	.quad	0x3fe242921d3e55f7              # double 0.57062631332035962
	.quad	0x3fe6c3cd2c5f61fd              # double 0.71140154520531917
	.quad	0x3fcadba746db27f0              # double 0.20982829055566254
	.quad	0x3fdd611e1d8d3690              # double 0.4590525902357081
	.quad	0x3fdc9054f9abf380              # double 0.44630932218552033
	.quad	0x3fdffdfa5aecb816              # double 0.49987658385623612
	.quad	0x3fe4e6c77cd5fdeb              # double 0.65317129499447668
	.quad	0x3fe4b89d9658611b              # double 0.64753608097365445
	.quad	0x3fe542243f237512              # double 0.66432392436732557
	.quad	0x3fec9727e3a90118              # double 0.89345163788678672
	.quad	0x3fe8c0e92b62fffb              # double 0.77354868387192199
	.quad	0x3fbb93c25f0e0748              # double 0.10772337742494387
	.quad	0x3fe2a26a6dd2e441              # double 0.58232613992652926
	.quad	0x3fe58da4525d6cf6              # double 0.67354026877310846
	.quad	0x3fe41ecf25079035              # double 0.62876088363964888
	.quad	0x3fddc03a2a4fae26              # double 0.46485761768301115
	.quad	0x3fd5928f43815548              # double 0.33707028953843521
	.quad	0x3fe7963af2870e2f              # double 0.7370886551729593
	.quad	0x3fc7180813310428              # double 0.18042088448604088
	.quad	0x3fdacef2410a20c0              # double 0.41888100005645512
	.quad	0x3fdcc61db6179d0c              # double 0.44959204466290781
	.quad	0x3fe1ae51e1227ced              # double 0.55252927753090619
	.quad	0x3fedb6ddd5a2cb9d              # double 0.92857257581487185
	.quad	0x3fe6038d64ae7513              # double 0.68793363251066564
	.quad	0x3fe11c43f84d2b35              # double 0.53470037933707337
	.quad	0x3fe73b83856e7a5f              # double 0.72601486264086279
	.quad	0x3fce3fc43f606f6c              # double 0.23632100195470274
	.quad	0x3fde35d7cd530736              # double 0.47203631449893935
	.quad	0x3fcc697b3968d93c              # double 0.22196903517915156
	.quad	0x3fdf5abceaa788de              # double 0.48991320529434101
	.quad	0x3fd1081e9701cc5a              # double 0.2661205744436238
	.quad	0x3fec615e71e1ce64              # double 0.88688585512722939
	.quad	0x3fcfb8c516accaac              # double 0.24782622916389607
	.quad	0x3fd6e4cac3c26d0c              # double 0.3577143584931981
	.quad	0x3fa7d44800b4bcc0              # double 0.046541452490026725
	.quad	0x3fe296b81fa6545c              # double 0.5808983438643156
	.quad	0x3feadacdd62f147c              # double 0.83920947869104578
	.quad	0x3fc56beb4d9b85a0              # double 0.16735593118123138
	.quad	0x3fe7acd9d0a46fcf              # double 0.73984995603995596
	.quad	0x3fe05e98106ecd7d              # double 0.51154711923156493
	.quad	0x3fd689bad8a27166              # double 0.35215636401860306
	.quad	0x3fe780ad3bc9590d              # double 0.7344576041894314
	.quad	0x3fd6b1ad89aaf594              # double 0.35459459728357356
	.quad	0x3fc14af3dd4282ac              # double 0.13509987167073712
	.quad	0x3fe47609e7833947              # double 0.63940901963523167
	.quad	0x3fed87d7bc6a8cf1              # double 0.92283236312905903
	.quad	0x3fdea5fbc09b17ee              # double 0.47888082322276559
	.quad	0x3fa8c55b19a2bd10              # double 0.048380705718381489
	.quad	0x3fe67427f922006f              # double 0.70167921694520696
	.quad	0x3fd15d10291ffbc0              # double 0.27130512252909611
	.quad	0x3fe2ee692920dcd5              # double 0.59160287888416951
	.quad	0x3fc932cc3272ac20              # double 0.19686272109297054
	.quad	0x3fd0ec60457821f4              # double 0.26442724975689136
	.quad	0x3fdc0a139e9553bc              # double 0.4381150292077185
	.quad	0x3feb87f9a76006b7              # double 0.86034853640031528
	.quad	0x3fe1a8b5d6436432              # double 0.55184451912203358
	.quad	0x3fdb762e8b1fd36e              # double 0.42908824526175848
	.quad	0x3fcf416be3771fac              # double 0.24418400389390393
	.quad	0x3fe857af87e1bc2c              # double 0.76070381678971932
	.quad	0x3fd0783ac63e5978              # double 0.25733823165628378
	.quad	0x3fe45b602d760131              # double 0.63615425948231608
	.quad	0x3feb78c1f022b4ee              # double 0.85849091435889391
	.quad	0x3fd2dffcb1bbfd3a              # double 0.2949210868536799
	.quad	0x3f87c70a2b787fc0              # double 0.011610106898899519
	.quad	0x3fad46f857980c00              # double 0.057182083790415561
	.quad	0x3fe70bb6c288dbf8              # double 0.72017992014923404
	.quad	0x3fb63109f1d51398              # double 0.086685773411842582
	.quad	0x3fe2575d371fe103              # double 0.573164565720646
	.quad	0x3fc17d094633836c              # double 0.13662830283922334
	.quad	0x3f9e23cddd12aca0              # double 0.029433457010480724
	.quad	0x3fe87b4f40964290              # double 0.76505243887557306
	.quad	0x3fc58b0fab7e3f94              # double 0.16830631135644281
	.quad	0x3f945cd540c932c0              # double 0.019885379866809272
	.quad	0x3fbf40ddd52d1298              # double 0.12208353476041578
	.quad	0x3fc5177d11b824a8              # double 0.16477931370926524
	.quad	0x3fd9cd65b0105490              # double 0.40316145127992176
	.quad	0x3fb98b13d06264e8              # double 0.099778402686201084
	.quad	0x3fea9f88e41b9d4b              # double 0.83197445442503104
	.quad	0x3fd5c0d4f66f6c6e              # double 0.33989452424947941
	.quad	0x3fe55727fd3534c9              # double 0.66688918547301868
	.quad	0x3fc7024ae3e78c40              # double 0.17975746276997207
	.quad	0x3fee2d2f97572a32              # double 0.94301585730256066
	.quad	0x3fad98077670ec20              # double 0.057800515373365835
	.quad	0x3fd27858e88f207a              # double 0.28859541617249074
	.quad	0x3fde10b65434efa4              # double 0.46977003310507315
	.quad	0x3fe317f26c67108c              # double 0.5966732136953552
	.quad	0x3fea50b656dcd5ad              # double 0.82235257115705951
	.quad	0x3fda64964950d220              # double 0.41238934669243754
	.quad	0x3fd2dc07d7bc9402              # double 0.29467960422545059
	.quad	0x3feb801248cade85              # double 0.85938371865536622
	.quad	0x3fd5d535fc41be0e              # double 0.34113835939840065
	.quad	0x3fe8d616aadca704              # double 0.77613385554761338
	.quad	0x3fe3d5fd2514d9ed              # double 0.61987168543310889
	.quad	0x3fb6bfca076082e0              # double 0.088863970566773087
	.quad	0x3fe4abe94d2b4b1e              # double 0.64598527023403896
	.quad	0x3f92981a18db6a60              # double 0.018158347861439217
	.quad	0x3fb0e6f31d640ef8              # double 0.066024012256146736
	.quad	0x3fdb8f6c915b971a              # double 0.43062891192526964
	.quad	0x3fc2f56e3f9a7280              # double 0.14811494928007463
	.quad	0x3fe9a13b6383f6dc              # double 0.80093163906687037
	.quad	0x3fdb185ed54ab0be              # double 0.42336245373986603
	.quad	0x3fe1594ce77df9c2              # double 0.54215092862414616
	.quad	0x3fe1522b01223129              # double 0.54128027173422766
	.quad	0x3fe61ae632e3f586              # double 0.69078359546226475
	.quad	0x3f9cd0d8d761bae0              # double 0.028140438218936192
	.quad	0x3fd9388db76585c8              # double 0.39407675657102148
	.quad	0x3fde9923f59d31d2              # double 0.47809695230242
	.quad	0x3f9e33c8bd70e240              # double 0.029494415819700359
	.quad	0x3fdaf5e680071a6e              # double 0.42125856878957435
	.quad	0x3fda2c8db8cae5de              # double 0.40896933599614538
	.quad	0x3fe20ad065211dea              # double 0.56382007362202313
	.quad	0x3fe9d68f424f2dcd              # double 0.80744135809930528
	.quad	0x3fd79af94f8da63c              # double 0.36883385437849703
	.quad	0x3fee1593486c1830              # double 0.94013370652169748
	.quad	0x3fb02f07d359d3b8              # double 0.063217629527413943
	.quad	0x3fe26e78bbfdc7dd              # double 0.57598530499512501
	.quad	0x3fcab14b884db084              # double 0.20853561549609279
	.quad	0x3fa6b83318757ad0              # double 0.044374081359583095
	.quad	0x3fc6a74085677164              # double 0.17697912706251906
	.quad	0x3fe6dc3ccef686f8              # double 0.71438446447811454
	.quad	0x3fdeef5de9145e9c              # double 0.48335979234387039
	.quad	0x3fd5cd03ac5efdfe              # double 0.34063808282004959
	.quad	0x3fea00ff663abc14              # double 0.81262178389249806
	.quad	0x3fcac514b8d27014              # double 0.20913943314087702
	.quad	0x3f9c7b58788b9880              # double 0.027814276082516631
	.quad	0x3feb9318e3bf66f6              # double 0.86170620424237998
	.quad	0x3fe806a988a3a4c7              # double 0.75081326186514097
	.quad	0x3fe0114b7d77ec8b              # double 0.5021111918025708
	.quad	0x3fe034e377f844b6              # double 0.50645612174607524
	.quad	0x3fec5fe9afd10200              # double 0.88670811022899443
	.quad	0x3fefb948fd5ec185              # double 0.99136781202655355
	.quad	0x3febda90cc53b2b2              # double 0.870430373264375
	.quad	0x3fc4bcef11af33ec              # double 0.16201580394263659
	.quad	0x3fd019ba196a60a0              # double 0.25157024843202613
	.quad	0x3fe8945bd0136669              # double 0.76811018600274139
	.quad	0x3feadbc0d65cced3              # double 0.83932535045320333
	.quad	0x3fe91aeaf468488e              # double 0.78453586326419766
	.quad	0x3fe982a4396014cb              # double 0.79719744878880172
	.quad	0x3fc0818f3a66b04c              # double 0.12895384170167501
	.quad	0x3f8045ffdd138dc0              # double 0.0079460133878858085
	.quad	0x3fd4c2e3363470f0              # double 0.32439499181215492
	.quad	0x3fe9a9bb38793c7f              # double 0.80196915655132262
	.quad	0x3fe5bed86f9438c0              # double 0.6795465640332381
	.quad	0x3fd4b3cbf63e9458              # double 0.32347392127332375
	.quad	0x3fdbb295d0afb5b4              # double 0.4327749765351101
	.quad	0x3fe3c2b9d4849f5d              # double 0.617520251344995
	.quad	0x3fee47a7e4f1f0ed              # double 0.94624705043636725
	.quad	0x3fea084a4e88d1c2              # double 0.81351199473152058
	.quad	0x3fd485c90ecb843c              # double 0.32066561169455432
	.quad	0x3fe3e395aa9e50e6              # double 0.62153132747564821
	.quad	0x3fe92ad2f689c3cb              # double 0.78647754814130033
	.quad	0x3fdcb0c19d1442dc              # double 0.44828834857712052
	.quad	0x3fe32600aa68e2fa              # double 0.59838898928782602
	.quad	0x3fc8bc97ef50fa28              # double 0.19325541673056645
	.quad	0x3fd7fcd2643e73e2              # double 0.37480602063607027
	.quad	0x3fe5cd8604072ceb              # double 0.68133831774448816
	.quad	0x3fb0c075ef2e8858              # double 0.065436716932283701
	.quad	0x3fda7135467afd2e              # double 0.41315967448095392
	.quad	0x3fdbb820528baf56              # double 0.4331131750211531
	.quad	0x3fd1d04b751998a2              # double 0.27833830295129236
	.quad	0x3fad06383248e580              # double 0.056688076151156785
	.quad	0x3fdd95d64ee52ea0              # double 0.46227033333409828
	.quad	0x3fe9aa10c51b447b              # double 0.80200994965902284
	.quad	0x3fcd3f484cfe84ec              # double 0.22849372634394827
	.quad	0x3fd8ad636b48ac5a              # double 0.38558278538648028
	.quad	0x3fda69140a5b3364              # double 0.41266346942284415
	.quad	0x3feac15a4f8849bd              # double 0.83610263379733107
	.quad	0x3fee09239a3067e3              # double 0.93861560931258869
	.quad	0x3fe3d8f9c0ff31cb              # double 0.62023627943704562
	.quad	0x3fd5e990dc08d22c              # double 0.34238072860469759
	.quad	0x3feb8b6bd81666c7              # double 0.86076919750777214
	.quad	0x3fb13cd709d756d0              # double 0.067334594633702283
	.quad	0x3fee2bd75c8d93fc              # double 0.94285171581998339
	.quad	0x3fb24719365ea468              # double 0.071397376798488232
	.quad	0x3fd3e5fb415412d8              # double 0.31091195468642985
	.quad	0x3fdd91380f8920fc              # double 0.46198846356539014
	.quad	0x3fdb6833cdb29360              # double 0.42823500716831653
	.quad	0x3fea751b3aa7369d              # double 0.82679521041582726
	.quad	0x3fd7f9616698e4d6              # double 0.3745959760595502
	.quad	0x3fc0a5d980e99628              # double 0.13006132883599375
	.quad	0x3fd852c88bdf0498              # double 0.38005269679349274
	.quad	0x3febf9f35bc3c483              # double 0.87426155016704887
	.quad	0x3fe729972f790a6b              # double 0.72382697364839765
	.quad	0x3fe46323c4cd2287              # double 0.637102016809039
	.quad	0x3fd0a9b5bfde6b90              # double 0.26035827386083898
	.quad	0x3fd3dcb7fecb121a              # double 0.31034660226967647
	.quad	0x3fe92bfe6d79affd              # double 0.78662034398939762
	.quad	0x3fed2fc6fe85a9e0              # double 0.91208219252922262
	.quad	0x3fe4c25ec85ca16c              # double 0.64872683652087693
	.quad	0x3fe74c918d317988              # double 0.72809674813088154
	.quad	0x3fce7712be6c9f8c              # double 0.23800882623731601
	.quad	0x3fe13bd1f894216b              # double 0.53855227041735299
	.quad	0x3fc5aaa38a7ca8b0              # double 0.16926998388345771
	.quad	0x3fd61eba9d2e2d6a              # double 0.3456255469288495
	.quad	0x3fd7c32ad1f7fbd4              # double 0.37128706459764982
	.quad	0x3fc1ba8d900560c8              # double 0.13850564510608465
	.quad	0x3feb47d913cb22f7              # double 0.85252050271910107
	.quad	0x3fead1dcc228b72a              # double 0.83811796113670778
	.quad	0x3fe23614f581b557              # double 0.56910179090997814
	.quad	0x3fec6770172473f0              # double 0.8876266910552868
	.quad	0x3fb157818a48f620              # double 0.06774148584460038
	.quad	0x3fb518bb92b10830              # double 0.082408641160356621
	.quad	0x3fdee321924b0a36              # double 0.48261298452794976
	.quad	0x3fe4b1e33ee9115e              # double 0.64671480452720309
	.quad	0x3fe21041a3a77101              # double 0.56448442424473921
	.quad	0x3fbf831512422248              # double 0.12309390731582781
	.quad	0x3fd171f3a29bc74e              # double 0.27258005981194777
	.quad	0x3fe79c276b76a047              # double 0.73781176556531924
	.quad	0x3fdacc0fcf0da636              # double 0.41870494098711519
	.quad	0x3fe73395dc3be1d7              # double 0.72504704489170535
	.quad	0x3fd728887e800f30              # double 0.36184894898927933
	.quad	0x3fc9bc0aae8626e0              # double 0.2010510780494803
	.quad	0x3fdd5822c4565f3c              # double 0.45850438283513362
	.quad	0x3fe6b6327b7ade75              # double 0.70974086873225295
	.quad	0x3fce05a71ecc91f4              # double 0.2345475101839295
	.quad	0x3fc7d655c2416d68              # double 0.18622848496566324
	.quad	0x3fef4635326a4964              # double 0.97732028814997962
	.quad	0x3fc66c8253b1fe4c              # double 0.17518643461879646
	.quad	0x3f9a2737f0a3d9e0              # double 0.025540231764319077
	.quad	0x3feed195bea8955f              # double 0.96308409917825688
	.quad	0x3fef982dff7a5c5b              # double 0.98732662103692392
	.quad	0x3fd9d73dd87f2234              # double 0.40376230375526068
	.quad	0x3fd0ae8de0cb549a              # double 0.26065394356312199
	.quad	0x3fe33bda0f4315dc              # double 0.60105612736577596
	.quad	0x3fdf181017764d84              # double 0.4858436802980679
	.quad	0x3fe28b7f15cfc9e2              # double 0.57952837238400101
	.quad	0x3fdf4cf3aab07a9e              # double 0.48907176655658613
	.quad	0x3fe60757de5af1de              # double 0.68839639118919727
	.quad	0x3f9e5b712d198160              # double 0.029645698907530771
	.quad	0x3faba70ad57bda70              # double 0.054008806762728123
	.quad	0x3fe1a5243877741c              # double 0.55140887287746265
	.quad	0x3fbf28b168807da8              # double 0.12171467591587393
	.quad	0x3fc3cca49f1c3fd4              # double 0.15468271035251624
	.quad	0x3fe442820f7a76e7              # double 0.63311865828628988
	.quad	0x3fd6cb143d11adc2              # double 0.35614496196532397
	.quad	0x3fee97de96a97e92              # double 0.95603875566662766
	.quad	0x3fdafc9df5e2252a              # double 0.42166852008866107
	.quad	0x3fef9af68ca47df3              # double 0.9876663920330756
	.quad	0x3fea186f0d646ecc              # double 0.81548264136969228
	.quad	0x3fda4562acf58d80              # double 0.41048495188280043
	.quad	0x3fec9dc123e1ff26              # double 0.89425713547095564
	.quad	0x3fe104fcde9cc434              # double 0.53185885886171613
	.quad	0x3fec68ca9d8373c3              # double 0.88779192699768605
	.quad	0x3f9fdbea0974a260              # double 0.031112343623279748
	.quad	0x3fe7255bf2558972              # double 0.72331044512638543
	.quad	0x3fad99f77fb53790              # double 0.057815298404064852
	.quad	0x3feb509dcce2903a              # double 0.85359087006191392
	.quad	0x3fe0d18f5c8f9a7b              # double 0.52558105543432931
	.quad	0x3fb5a47b4a24ac48              # double 0.084541040040378879
	.quad	0x3fc25a364e0eeddc              # double 0.1433780556816221
	.quad	0x3fef44ac27dec0e1              # double 0.97713287150511629
	.quad	0x3fddcdb6ea624794              # double 0.46568081749966805
	.quad	0x3fab2017d4975e50              # double 0.052979225827297527
	.quad	0x3fc38c204597c0ac              # double 0.15271380804143087
	.quad	0x3fed7ce36893d0a0              # double 0.92149515557550287
	.quad	0x3fdaaf945aff8c3e              # double 0.4169665230421663
	.quad	0x3fe7b1f0461063be              # double 0.74047101673487936
	.quad	0x3fe9752df20b4439              # double 0.79555413507671979
	.quad	0x3fc5c69a6b805918              # double 0.17012338875856226
	.quad	0x3fe7f1ae721bb8b9              # double 0.74825212752127535
	.quad	0x3fed1470cb8f64b2              # double 0.90874519117200792
	.quad	0x3fd5f9f1852dc302              # double 0.34338033681619617
	.quad	0x3fe925abdd1369dd              # double 0.78584855250238272
	.quad	0x3fce86ab582886c0              # double 0.2384847813091735
	.quad	0x3fecfdf7df11706e              # double 0.90600198333733117
	.quad	0x3fea9af9dbe520ab              # double 0.83141797016380303
	.quad	0x3fc66c3f28f37cd4              # double 0.17517842769209457
	.quad	0x3fd27b31df32996a              # double 0.2887692145981392
	.quad	0x3fe8a9efdc49be74              # double 0.77074425721180128
	.quad	0x3fef8120a0e80e7d              # double 0.98451262881322032
	.quad	0x3fd654dbee8f9312              # double 0.34892938897091696
	.quad	0x3fdf4d44b2a23f18              # double 0.48909108586029637
	.quad	0x3fa7e6f603bebed0              # double 0.046683967549481786
	.quad	0x3fd44c0c6d64f536              # double 0.31714163477939239
	.quad	0x3fda50f6bf300e5a              # double 0.41119164152789767
	.quad	0x3fd4ffc58a64e5a4              # double 0.32811106219340958
	.quad	0x3feedaa5c3f07acc              # double 0.96419037122162754
	.quad	0x3fad565dbfebd280              # double 0.057299546888235575
	.quad	0x3fee3b59cb9d5f72              # double 0.94474496620658344
	.quad	0x3fd4c11f5c0cf29c              # double 0.32428726186098245
	.quad	0x3fe91040b301a7d9              # double 0.78323397600365319
	.quad	0x3fb3a1cf28f10410              # double 0.076687762732959408
	.quad	0x3fb9da7166a1ca90              # double 0.10098942523635857
	.quad	0x3fdc04d60ecb2d04              # double 0.43779517597859319
	.quad	0x3fe21fc00197d8d0              # double 0.56637573538935193
	.quad	0x3fe515df2eedc252              # double 0.65891989866038103
	.quad	0x3fea28b21d69761b              # double 0.81746774429820179
	.quad	0x3fd313f1f8fd7782              # double 0.29809235873641893
	.quad	0x3fa330406a057d30              # double 0.037477505628653041
	.quad	0x3fed67ab8c10ee72              # double 0.91890504223506597
	.quad	0x3fe5b1b6ba57d323              # double 0.6779435767662999
	.quad	0x3fd58f6ebacdd5f4              # double 0.33687942736227616
	.quad	0x3fe735f62ce6f22c              # double 0.72533711214015772
	.quad	0x3fed0b5417b9eebd              # double 0.907632871952465
	.quad	0x3fd1e0e87028aabc              # double 0.27935229256642535
	.quad	0x3fe00396903b2b19              # double 0.50043800516263837
	.quad	0x3fe4781036648f4f              # double 0.63965616820903815
	.quad	0x3fe776e9d4631244              # double 0.73326579553447191
	.quad	0x3fd6a704d6ff37bc              # double 0.353944024999574
	.quad	0x3fdde4bab7be4ef2              # double 0.4670855326050819
	.quad	0x3fe6c72fb08c6e10              # double 0.71181473238124404
	.quad	0x3fefd11d9481b906              # double 0.99427680020542719
	.quad	0x3fe287dff0f1673a              # double 0.57908627566505477
	.quad	0x3fe953875ec8beed              # double 0.79144638550311941
	.quad	0x3fe16fb2fef5d9ae              # double 0.54488515660232451
	.quad	0x3fe8c0b1b8e40b1f              # double 0.77352224456294383
	.quad	0x3fd3a39d3330d090              # double 0.30686120986070708
	.quad	0x3fbc94ff00e93a30              # double 0.11164850017778671
	.quad	0x3fded1f974318f26              # double 0.48156582209616017
	.quad	0x3fef43ee9254dd6c              # double 0.97704247074481775
	.quad	0x3fddaa0a0f3df2a0              # double 0.46350337494349425
	.quad	0x3fcc49d13e050094              # double 0.22100272682473998
	.quad	0x3fd81acd8f944dde              # double 0.37663592358987141
	.quad	0x3fec60274181d597              # double 0.88673746866577374
	.quad	0x3fe62074df5b0be7              # double 0.69146197914267027
	.quad	0x3feb7723bb40f688              # double 0.85829340527534814
	.quad	0x3fe1d8fd1717d76e              # double 0.55773787031533373
	.quad	0x3fc1b35d686d9090              # double 0.13828628157637413
	.quad	0x3fe1f1f1d0c1a034              # double 0.56078425190663106
	.quad	0x3fb187ab10827ef0              # double 0.068476382761669674
	.quad	0x3fd46d62cfa9d2b8              # double 0.31917639045358781
	.quad	0x3fc9ff8ce8bd88ac              # double 0.20311128010059087
	.quad	0x3fdeaaf133ac4b9a              # double 0.4791834835643215
	.quad	0x3fb557b456868bb8              # double 0.083369513630301095
	.quad	0x3fd053cd2c3b6fee              # double 0.25511483497189047
	.quad	0x3fe0d9e330127b6a              # double 0.52659758938885415
	.quad	0x3fc2fabf2c4cf598              # double 0.14827718413463908
	.quad	0x3fd4b3e347385cce              # double 0.3234794803151545
	.quad	0x3fd13cf4b1c7b3d0              # double 0.26934544907890956
	.quad	0x3febecea30606fd3              # double 0.87267026375365686
	.quad	0x3febea0bf3db663a              # double 0.87232015255285167
	.quad	0x3feed41d5c8c0b53              # double 0.96339290690989753
	.quad	0x3fee314367684453              # double 0.94351358601319146
	.quad	0x3fed5fb4c28f3918              # double 0.91793287277122015
	.quad	0x3fba2d20b94856f0              # double 0.10225109599590687
	.quad	0x3fc8f7196632179c              # double 0.1950408696176823
	.quad	0x3fd775d7b95f7900              # double 0.36656754591776064
	.quad	0x3fece590c8908464              # double 0.90302313969381176
	.quad	0x3fe2bdc8f33ff4ac              # double 0.58566710958225121
	.quad	0x3fe5ffa69793b203              # double 0.68745736698980442
	.quad	0x3fd74866a916f02e              # double 0.36379400742203216
	.quad	0x3fa4d87f4b9099d0              # double 0.040714242910599219
	.quad	0x3fee918b3f1fd68c              # double 0.95526659325578711
	.quad	0x3fd609b2760a1bc4              # double 0.34434186484616824
	.quad	0x3fde709df00ab2a8              # double 0.4756235927732555
	.quad	0x3fdafb202514e21c              # double 0.42157748814818929
	.quad	0x3fa6c7b75d351dd0              # double 0.044492464187495195
	.quad	0x3fd2525fb89ca97e              # double 0.2862777045108017
	.quad	0x3fef86f23c949c99              # double 0.98522292930728661
	.quad	0x3fda90da942e4a64              # double 0.41509117575438936
	.quad	0x3feff89b88cf177d              # double 0.99909760208605258
	.quad	0x3fdefa962af2b2c8              # double 0.48404459184784487
	.quad	0x3fe9c38548fc98b4              # double 0.80511726622787316
	.quad	0x3fed3de7f8186113              # double 0.91380690055942393
	.quad	0x3fcfea856ddc5944              # double 0.24934451927465251
	.quad	0x3fddd7d3929538d0              # double 0.46629800142990252
	.quad	0x3fbd867e3adccc18              # double 0.11533345162460795
	.quad	0x3feeb0a5af51ee11              # double 0.95906337969012345
	.quad	0x3fee6c2f3405debd              # double 0.9507061019966937
	.quad	0x3fedeb5bae8c74c0              # double 0.93498024074110475
	.quad	0x3fec72e8a57d6c67              # double 0.88902695009472843
	.quad	0x3fe327d9a20bbfa0              # double 0.5986145176848261
	.quad	0x3fda5d17d78ebd50              # double 0.41193195391220616
	.quad	0x3fd77f3a92eb9962              # double 0.36714042995153851
	.quad	0x3faa66aadaff0640              # double 0.051564540131505243
	.quad	0x3fd561675e0f38e8              # double 0.33407005486959784
	.quad	0x3fe8405ca136f706              # double 0.75785666930434625
	.quad	0x3fbe3e832daec3f0              # double 0.11814136376666773
	.quad	0x3fe710ab3dbc4403              # double 0.72078477914521988
	.quad	0x3fe2b45ae66aec34              # double 0.58451600078058741
	.quad	0x3fd0bc8856693a78              # double 0.2615071147783179
	.quad	0x3fb75040b4382478              # double 0.091068309782842749
	.quad	0x3fe3a025318ab407              # double 0.61329898525366466
	.quad	0x3fe00805760ff131              # double 0.50097916659391306
	.quad	0x3fa0466df8f4f8d0              # double 0.031787335052727905
	.quad	0x3fbc4919645b57f8              # double 0.1104904050838228
	.quad	0x3fe0136787d422a6              # double 0.50236870316537785
	.quad	0x3fea41434565ab68              # double 0.82046664766435828
	.quad	0x3fc1998642a20f78              # double 0.13749769452635596
	.quad	0x3fdc6e150eb525a6              # double 0.44421888767518636
	.quad	0x3fd20c8eb1edbab2              # double 0.28201644302218221
	.quad	0x3fe38e3b08e145f4              # double 0.61111213430757383
	.quad	0x3fe322ed269b86a2              # double 0.59801347294360974
	.quad	0x3fe1ff908d4953cd              # double 0.56244685740477396
	.quad	0x3fd112310e6b2d1a              # double 0.26673532875129669
	.quad	0x3fe197b0d14de064              # double 0.54976693038680624
	.quad	0x3fd67f3f56348d94              # double 0.35151656549916166
	.quad	0x3fd0760948bb703a              # double 0.25720436194183416
	.quad	0x3fe57d7d42cb30ca              # double 0.6715685181202613
	.quad	0x3fececc9d222364c              # double 0.90390482942320593
	.quad	0x3fd47a93dfadd678              # double 0.31998154491098019
	.quad	0x3fe39aead7589131              # double 0.61266080913313747
	.quad	0x3fd3cc74ec589910              # double 0.30935404854462067
	.quad	0x3fd33c591b1397da              # double 0.30055835384552909
	.quad	0x3fbb9fc6e066a0e8              # double 0.10790675142800732
	.quad	0x3fef46297f3d7948              # double 0.97731470920170071
	.quad	0x3fdfed840afd06ee              # double 0.49887181351742427
	.quad	0x3fc04df80c31223c              # double 0.12737942309674277
	.quad	0x3fd1b59bfb359dfe              # double 0.27670955211803505
	.quad	0x3fb11d49dde225a8              # double 0.066853157683132935
	.quad	0x3feb405283e3a471              # double 0.85160184630980329
	.quad	0x3fad515ec887d9a0              # double 0.057261430720177531
	.quad	0x3fe19aebbfbebfdf              # double 0.55016124201028649
	.quad	0x3feb5c8c986a5aaf              # double 0.85504750984804001
	.quad	0x3fb76f0d086df8a8              # double 0.091538252408983056
	.quad	0x3fe8f002bce92ae3              # double 0.7792981805481215
	.quad	0x3fe74fb4247ab34e              # double 0.72847945332396491
	.quad	0x3fe915a2f799466d              # double 0.7838911853707039
	.quad	0x3fd1f2c15210a126              # double 0.28044159902721544
	.quad	0x3fec7519075a6648              # double 0.88929416118771432
	.quad	0x3fb2ff973e9aedb0              # double 0.07421250608870511
	.quad	0x3fd7b742a5672d78              # double 0.37056032326355348
	.quad	0x3fd8e8a0e9fc827c              # double 0.38919852113944109
	.quad	0x3fee9f7108f86f29              # double 0.956963078995135
	.quad	0x3fd695e18fee3ef6              # double 0.35289801650740971
	.quad	0x3fc956afc9f0e4ec              # double 0.19795796738052418
	.quad	0x3febe597ae652d96              # double 0.87177642880981199
	.quad	0x3fdfe50c2f95c226              # double 0.49835495612117808
	.quad	0x3fe6290cc779515d              # double 0.69251097640748649
	.quad	0x3fe771dede28c920              # double 0.73265021696559884
	.quad	0x3fc38f84300fd2e4              # double 0.1528172716786208
	.quad	0x3feb8d61bed57c72              # double 0.86100852272273998
	.quad	0x3fe79d2afef1a8b3              # double 0.73793554109331294
	.quad	0x3fb6b048a02b3c00              # double 0.088627375701648248
	.quad	0x3fcd91b5a7b2a0c0              # double 0.23100920379989098
	.quad	0x3fa555fe4b56c070              # double 0.041671702095641971
	.quad	0x3fe1a015a4ef6db5              # double 0.55079157079619867
	.quad	0x3fe152f779cc533d              # double 0.54137777126980036
	.quad	0x3fd958454912ebf4              # double 0.39601261268734267
	.quad	0x3feeefb843e82544              # double 0.96676266921091569
	.quad	0x3fe776192aff0b73              # double 0.73316629789074594
	.quad	0x3fe1d56c77144965              # double 0.55730269677796385
	.quad	0x3fe258d43da320d4              # double 0.57334339178580729
	.quad	0x3fa3a954ede7f310              # double 0.038401273766771493
	.quad	0x3fd4d2c66cc1eea0              # double 0.32536469097952114
	.quad	0x3fe7c19c61bccc3c              # double 0.74238413895944388
	.quad	0x3fe34b68ff77a01f              # double 0.60295534034685605
	.quad	0x3fd818daad80dc10              # double 0.37651698058783811
	.quad	0x3fee4665a6988575              # double 0.94609339273681192
	.quad	0x3fe78a1eea5b72ff              # double 0.73561044476409154
	.quad	0x3feff15b7c4c655a              # double 0.99821256901774835
	.quad	0x3fe3f14d089b97df              # double 0.6232056778069327
	.quad	0x3fbf5a4d728b0dc0              # double 0.12247165724243469
	.quad	0x3fd06b41adf81b02              # double 0.25654642094779956
	.quad	0x3fea341f6e5c825e              # double 0.81886264376596407
	.quad	0x3fe1b4d419f5409b              # double 0.55332379407811361
	.quad	0x3fe46b7263f40b68              # double 0.63811606905106277
	.quad	0x3fe1f7f8a317af02              # double 0.56151992658621475
	.quad	0x3fed305c8add2dfd              # double 0.91215350267287898
	.quad	0x3fd651bc3c6eff46              # double 0.34873872663228089
	.quad	0x3faabbd410c5e360              # double 0.052214266822324218
	.quad	0x3fc5de894425e6b0              # double 0.17085376575032774
	.quad	0x3fb20467ad19c0a8              # double 0.070379714737785037
	.quad	0x3fd2e3b2a5e53112              # double 0.29514757347784937
	.quad	0x3fcf673d82a07060              # double 0.24533814314134172
	.quad	0x3fdd2bf23704e4ba              # double 0.4558072602554365
	.quad	0x3fc4eb5cf694758c              # double 0.163432712936736
	.quad	0x3fbab9301907cc50              # double 0.10438824282737014
	.quad	0x3fee5fd7f0151641              # double 0.94919964686477709
	.quad	0x3fbe0e98f008f388              # double 0.11741023884037649
	.quad	0x3f96faed4aea9640              # double 0.022441585252314988
	.quad	0x3fd3d68b75e00578              # double 0.30996977339972132
	.quad	0x3f6cd5707b33bb00              # double 0.0035197445773670344
	.quad	0x3fda3743b91cfa5a              # double 0.40962308003864722
	.quad	0x3fe00c2cf8349ad1              # double 0.50148628690370789
	.quad	0x3fc3c686157b94f8              # double 0.15449596451723102
	.quad	0x3fe98e6feb8dd237              # double 0.7986373520530553
	.quad	0x3fcbe814406d948c              # double 0.21801999231243874
	.quad	0x3fad1efc1a219dc0              # double 0.05687702006326445
	.quad	0x3fd9ec7d4ae3de72              # double 0.40505916894424054
	.quad	0x3fbe885971cd7520              # double 0.11926802662261027
	.quad	0x3fd8a5bacdea8be2              # double 0.38511533841136558
	.quad	0x3fe4a9e8acf45e5c              # double 0.64574083118618431
	.quad	0x3fe9df2ddc2736b7              # double 0.80849354742686941
	.quad	0x3fd00e7260af1d0c              # double 0.25088176194954381
	.quad	0x3fe1e8b22d1620ab              # double 0.55965527349419142
	.quad	0x3fc23a0f63660e14              # double 0.14239685395669766
	.quad	0x3fde57c3dff96592              # double 0.47410675880890907
	.quad	0x3fdd811b1964e93a              # double 0.46100499610806234
	.quad	0x3fe5b4326831f27c              # double 0.67824669218641942
	.quad	0x3fe850cc2a374de3              # double 0.75986297841376105
	.quad	0x3fe6d1174a887efb              # double 0.71302380139601895
	.quad	0x3fe962408e9c2398              # double 0.79324367383479721
	.quad	0x3fb042390750aa90              # double 0.063510479246057239
	.quad	0x3fed9329120d6d4c              # double 0.92421391988629286
	.quad	0x3fe2fb3e2b1b2c24              # double 0.59316929263275542
	.quad	0x3feac328380cc4f1              # double 0.83632288882486538
	.quad	0x3fe9004373920ddd              # double 0.7812821633564756
	.quad	0x3fee9b0accddc7e7              # double 0.95642604840236067
	.quad	0x3f985ce5bb08f820              # double 0.023791875401222851
	.quad	0x3fe277196a2329d2              # double 0.57703848581268802
	.quad	0x3febb71ef31472c0              # double 0.8661036250737979
	.quad	0x3fcd6d729e6bdefc              # double 0.22990257964533345
	.quad	0x3fc2ff0b11a2ffc8              # double 0.14840830193679566
	.quad	0x3fd99e52eb1af4ac              # double 0.40028832396985581
	.quad	0x3fb8d76bacff0430              # double 0.097037057624235201
	.quad	0x3fcc5f6406bffd34              # double 0.22166109399402389
	.quad	0x3fc6d5a568643784              # double 0.17839496228446816
	.quad	0x3fe6b9caab80888c              # double 0.71017964836598102
	.quad	0x3fe9a024497fc058              # double 0.80079855304030456
	.quad	0x3fef34aa4799c256              # double 0.975178851933445
	.quad	0x3fc327537189037c              # double 0.14963763278685949
	.quad	0x3fe5b135902829a9              # double 0.67788198619500861
	.quad	0x3fe70fbe470bd5a0              # double 0.72067178608147131
	.quad	0x3fec58f472cd60ed              # double 0.88585874960247468
	.quad	0x3fc69e302072b4bc              # double 0.17670251449945862
	.quad	0x3fde38320989d45a              # double 0.47217989856227904
	.quad	0x3fb8791be5ed72a0              # double 0.095597976336146306
	.quad	0x3fe08522d92086cd              # double 0.5162519684565382
	.quad	0x3fd45bab798d4734              # double 0.31809508199977476
	.quad	0x3fe29502b1a9fbd9              # double 0.5806897611618026
	.quad	0x3fe82fb0b0748cfd              # double 0.75582155670090823
	.quad	0x3fd6f2fcf06c3124              # double 0.35858081320545154
	.quad	0x3fe4dd8387384403              # double 0.65204025659670639
	.quad	0x3fd35c6cd626382e              # double 0.30251618302361549
	.quad	0x3fed5c3b95420b88              # double 0.91750888015700216
	.quad	0x3fb256f88ee04570              # double 0.0716395710772042
	.quad	0x3fe8766274c3510f              # double 0.76445124440445678
	.quad	0x3fde88c14bf973e8              # double 0.47709686679246355
	.quad	0x3fca1aa8a8303114              # double 0.20393856251065101
	.quad	0x3fe46e14f608ad16              # double 0.63843772939199783
	.quad	0x3fd9c92e57e3f928              # double 0.40290411551531458
	.quad	0x3f7ee2d84de88a80              # double 0.0075405549419281792
	.quad	0x3fec6d9230dcdb92              # double 0.88837537330151606
	.quad	0x3fc64c10a1d56ec8              # double 0.17419631864583196
	.quad	0x3fdb6be0c78fedf8              # double 0.42845935333727381
	.quad	0x3fe374190c6b1c2d              # double 0.60792210031002514
	.quad	0x3fddd609d5c76620              # double 0.46618886830182937
	.quad	0x3fd97b97ea057408              # double 0.39816854337351559
	.quad	0x3fec7d2f80ee268e              # double 0.89028144056028835
	.quad	0x3feef5a1c3d0e2eb              # double 0.96748436208062338
	.quad	0x3fb3adb75d59c380              # double 0.07686944989269584
	.quad	0x3fe5432fda59fa18              # double 0.6644515289952464
	.quad	0x3fd682f5dcb04478              # double 0.35174318839660357
	.quad	0x3f77af4cc5c71900              # double 0.0057824133804784683
	.quad	0x3fe03fe41eae38a0              # double 0.50779920570655079
	.quad	0x3fdf0926556a162a              # double 0.48493345586061543
	.quad	0x3fe7a5982c468481              # double 0.73896416328001646
	.quad	0x3fcb9f2e8487ebf0              # double 0.21579534026372427
	.quad	0x3fc88c156e94cb7c              # double 0.19177501582597845
	.quad	0x3fec908780773df1              # double 0.89264273730253596
	.quad	0x3fcc69c9dcc564f4              # double 0.22197840957486614
	.quad	0x3fddf8f6c305658a              # double 0.46832055134799389
	.quad	0x3fe975d3e588313e              # double 0.79563326673954982
	.quad	0x3fecf1c8e2d072f1              # double 0.90451473521861037
	.quad	0x3fd9d8e0ee9c5350              # double 0.40386222173520014
	.quad	0x3fe3e2040f550664              # double 0.62133982653194808
	.quad	0x3fdd848cc585157e              # double 0.46121520318077802
	.quad	0x3fe497eec70c2a71              # double 0.64354647518605479
	.quad	0x3fd232925dcd67e8              # double 0.28433665428531052
	.quad	0x3fd4612bf3993a56              # double 0.31843088902397676
	.quad	0x3fdc20320cecc818              # double 0.43946505796623248
	.quad	0x3fc069f15cd1de58              # double 0.1282331183644938
	.quad	0x3fe59d59e8f1c496              # double 0.67545791146234779
	.quad	0x3fe93d5f231d36bf              # double 0.78874165399766827
	.quad	0x3fb95e95ccebcf58              # double 0.099099504975865726
	.quad	0x3fea3b9dddddea18              # double 0.81977742513055585
	.quad	0x3fca94a14cb23500              # double 0.20766082997253221
	.quad	0x3fe4728cc230b423              # double 0.63898313453467315
	.quad	0x3f6b156dcf3ed300              # double 0.0033061165540523296
	.quad	0x3fe1112ea9204deb              # double 0.53334744484385277
	.quad	0x3fef124725dffc06              # double 0.97098119161080443
	.quad	0x3fccdd0fbc6a3588              # double 0.22549626064248351
	.quad	0x3fb4badfe46da6a8              # double 0.08097647978652367
	.quad	0x3fd8b066f809b24e              # double 0.38576673719834254
	.quad	0x3fe2a0150cca058f              # double 0.58204128740196548
	.quad	0x3fef2c74895dde71              # double 0.97417666272572323
	.quad	0x3fe88cfaa5f5d4e6              # double 0.76720936216466096
	.quad	0x3fe251f26db8e460              # double 0.57250329427837343
	.quad	0x3fec1bc20f3e2718              # double 0.87838843323808913
	.quad	0x3fc9ce001e6be68c              # double 0.20159913525985862
	.quad	0x3fd7597b143aea20              # double 0.36483647323226087
	.quad	0x3fd49cf1ddb7d6b0              # double 0.32207914974365348
	.quad	0x3febc266e7532387              # double 0.86748070889108042
	.quad	0x3fd2fdfb7dcf9e0c              # double 0.29675185476523391
	.quad	0x3fe03d8bc713a4e7              # double 0.50751294023680493
	.quad	0x3fdda13b518b0dc4              # double 0.46296580279542021
	.quad	0x3fc2e24a8b40c290              # double 0.14753085898839347
	.quad	0x3fdf3c22bf00f99c              # double 0.48804539349284837
	.quad	0x3fdb0a7c830f4a74              # double 0.42251503752519359
	.quad	0x3fc8076013d4c674              # double 0.18772507637327218
	.quad	0x3fd8563269629b3c              # double 0.38026104251405335
	.quad	0x3fe07fc8f1a16046              # double 0.51559874719078702
	.quad	0x3fdeec0511745d8a              # double 0.48315550522371409
	.quad	0x3fd7317c003f4a6a              # double 0.36239528679030875
	.quad	0x3feaf00a84eeb168              # double 0.84180189097746183
	.quad	0x3fd2529ba6abe14e              # double 0.28629199291710428
	.quad	0x3fea5970008f8306              # double 0.8234176646184046
	.quad	0x3fb69833a578ca40              # double 0.088259914301297648
	.quad	0x3fbeaed71aa7aef8              # double 0.11985535050160567
	.quad	0x3fec6c6bde0cd676              # double 0.8882350289265577
	.quad	0x3feb825b56a78034              # double 0.85966269421260799
	.quad	0x3fe7a9651adef3d6              # double 0.73942809341644522
	.quad	0x3fe97e9d588ba80e              # double 0.79670588773774553
	.quad	0x3fd14e38a4f0e8f2              # double 0.27039924724125719
	.quad	0x3fd12f5f0ac5c0fa              # double 0.26851631214141458
	.quad	0x3fec2e362114bb93              # double 0.88064104519968323
	.quad	0x3fa521c14cfa5d60              # double 0.041273155829169239
	.quad	0x3fdc1264e5419142              # double 0.4386226881818126
	.quad	0x3fbb46fd65eb5170              # double 0.10655196893941876
	.quad	0x3feb86bb1bd3b2bc              # double 0.86019664225531
	.quad	0x3fed9045f7dc26d3              # double 0.923861488439082
	.quad	0x3fcfaf1c7b6b44f8              # double 0.24753147150344268
	.quad	0x3fd287e4a6a09c0e              # double 0.28954426071362682
	.quad	0x3fce3e21dab1eae0              # double 0.23627112558809582
	.quad	0x3fe7368a0ca1c704              # double 0.72540762393165936
	.quad	0x3fc627b7772bd4c4              # double 0.17308705634028432
	.quad	0x3fc3c5f04c5b763c              # double 0.15447810867674316
	.quad	0x3fe0c3c3ffb07c1e              # double 0.52389717044195883
	.quad	0x3fd76bc2794684b4              # double 0.36595212786967157
	.quad	0x3fe9bdb560af6de7              # double 0.80440777667848529
	.quad	0x3fcf129bdbdc7fa4              # double 0.2427553962270369
	.quad	0x3fe2b747a60cd067              # double 0.58487303191806184
	.quad	0x3fe76ea8712fcb0d              # double 0.73225805384422105
	.quad	0x3fa43a5fdc265d80              # double 0.039507861732256622
	.quad	0x3fe8d02dfa502c50              # double 0.77541254891674249
	.quad	0x3fd215590cf0488a              # double 0.28255296958480669
	.quad	0x3f9df2b6a66d0980              # double 0.02924619093688241
	.quad	0x3fa2510b6e954430              # double 0.035774571656141396
	.quad	0x3fa3d53b5a7d5d70              # double 0.038736204906565486
	.quad	0x3fe6fa3d3dd7c207              # double 0.71804678038284997
	.quad	0x3fe1f638791951f7              # double 0.56130622532015095
	.quad	0x3fe3ea99092f4526              # double 0.62238742631794675
	.quad	0x3fe9a2690b0775bd              # double 0.801075479069986
	.quad	0x3fce093839016f14              # double 0.23465636046864147
	.quad	0x3fe4b420ffa97b1b              # double 0.64698839124671126
	.quad	0x3fc42c2f659ac2a0              # double 0.15759842358740617
	.quad	0x3fec0c58b944bb97              # double 0.87650715050937122
	.quad	0x3fee6dfdb67db132              # double 0.95092664377947345
	.quad	0x3fb9c96976a46ff0              # double 0.10072955271283468
	.quad	0x3fe47c317f5c1137              # double 0.64016032099656328
	.quad	0x3fe9584c690c1104              # double 0.79202862278955921
	.quad	0x3fe2eea9db7c4a27              # double 0.59163372867835029
	.quad	0x3fe4e9572af11616              # double 0.65348394763049344
	.quad	0x3fbf27050db71ec0              # double 0.12168914399000652
	.quad	0x3febf27e2864cdc5              # double 0.87335117234618365
	.quad	0x3fecceb3cae6345c              # double 0.90023221615559689
	.quad	0x3fe56fa74db6b45d              # double 0.66987958124594693
	.quad	0x3feb80331d6213f9              # double 0.85939937342538919
	.quad	0x3fe9338db508459d              # double 0.78754315717576484
	.quad	0x3fe9efa5ba70ae79              # double 0.81050383009046734
	.quad	0x3fcabc8728d10450              # double 0.20887841694824028
	.quad	0x3fe07ec0808231c9              # double 0.51547265147524357
	.quad	0x3fe0850640b285eb              # double 0.5162383330936654
	.quad	0x3fd74f07651ca2c6              # double 0.3641985404415603
	.quad	0x3fd4557a5d625f06              # double 0.31771716231877212
	.quad	0x3f96be2299e81700              # double 0.022209683078492581
	.quad	0x3feb792da869a85c              # double 0.85854227917776482
	.quad	0x3fd25c3ff1a7a63a              # double 0.28688047980412856
	.quad	0x3fe793d5b96ac1a0              # double 0.73679624761830453
	.quad	0x3fcc8e4232c17cf0              # double 0.22309138754187741
	.quad	0x3fef4adce092e788              # double 0.97788852560118844
	.quad	0x3fd7d40775875d4c              # double 0.37231623151224791
	.quad	0x3fb3155fc4271bf8              # double 0.074544892681941977
	.quad	0x3fe11d6b9e1f254a              # double 0.53484135516297582
	.quad	0x3fd222c9ba71bae6              # double 0.28337329108664588
	.quad	0x3fe9d1d8217bf06d              # double 0.8068657545077379
	.quad	0x3fdde0f9ac4e0f64              # double 0.46685640169766018
	.quad	0x3fd2c969c4e7c83a              # double 0.29354328373949878
	.quad	0x3fe9b22c3ec27703              # double 0.80299961335887848
	.quad	0x3fe5a18e8a5f5a1a              # double 0.67597128892777225
	.quad	0x3f83c30ee3587b00              # double 0.0096493876581553728
	.quad	0x3fe555a149f2e948              # double 0.66670288508547859
	.quad	0x3fdeeec5ab91d956              # double 0.48332349543433872
	.quad	0x3fe8737259963c9c              # double 0.7640926122420697
	.quad	0x3feb61f30031840f              # double 0.85570669210221861
	.quad	0x3fb8ce680bedd968              # double 0.096899512207391347
	.quad	0x3fe7224a73c2aaea              # double 0.72293589219529264
	.quad	0x3fdecf0a8acab7ea              # double 0.48138679078954161
	.quad	0x3fd1440ac9c75fda              # double 0.26977796273194843
	.quad	0x3fe6dc1a1f920b66              # double 0.71436792532072668
	.quad	0x3fd0e7f39a6bbb1a              # double 0.26415720062407078
	.quad	0x3fe9f12cc6f2a614              # double 0.81069029671670245
	.quad	0x3fd6ba288f3fe6ce              # double 0.35511220921726483
	.quad	0x3fda5323762caf8a              # double 0.41132437267764799
	.quad	0x3fe389425d59c55c              # double 0.6105052779441098
	.quad	0x3fd93bfc721c46f6              # double 0.39428626197432892
	.quad	0x3fd324870532e422              # double 0.29910445697493249
	.quad	0x3fed373069c564bf              # double 0.91298695238506145
	.quad	0x3fe1106fc4ff4e3b              # double 0.53325642086060243
	.quad	0x3f97b1b0d0c6aa20              # double 0.023138773672750301
	.quad	0x3fdc170ee6b87712              # double 0.43890736132912977
	.quad	0x3fc3f13a4003f730              # double 0.15579918027645467
	.quad	0x3fe7a9e3606ea521              # double 0.73948830446639502
	.quad	0x3fcd7951846a5578              # double 0.23026484456628871
	.quad	0x3fe48bf0c8fc22ba              # double 0.6420825887190269
	.quad	0x3fe98172a1d7edf9              # double 0.79705173120549866
	.quad	0x3fcaa8ff6882d764              # double 0.20828240016060839
	.quad	0x3fd96f550874edb0              # double 0.39742017579893751
	.quad	0x3fecd5497f4c7e98              # double 0.90103602278755357
	.quad	0x3fe3c2d0070d4ee5              # double 0.61753083588925206
	.quad	0x3fe64f66a1244a89              # double 0.69719249222755864
	.quad	0x3fdc610ae809523e              # double 0.44342301044278887
	.quad	0x3fe21095d4081c4d              # double 0.56452456867635592
	.quad	0x3fec71c0003beb94              # double 0.88888549848285203
	.quad	0x3fdc8c5eda1793a8              # double 0.44606753633552865
	.quad	0x3fd89703d7c962f6              # double 0.38421722481648091
	.quad	0x3fda547ea0c84ee6              # double 0.41140714360629571
	.quad	0x3fe8f13e9befdf13              # double 0.77944879967160074
	.quad	0x3fee3c4809e7d529              # double 0.94485856947600155
	.quad	0x3fbe1d11301ebb48              # double 0.11763102936559477
	.quad	0x3fe1796fd772eda0              # double 0.54607383804198051
	.quad	0x3fe8d5e08a57af64              # double 0.7761080457689613
	.quad	0x3fe499dad97f0e27              # double 0.64378111343143452
	.quad	0x3fe4ba5e17689c55              # double 0.64774994441985234
	.quad	0x3fdb050c02ffb80e              # double 0.42218303959714454
	.quad	0x3fdfb07e7df3b728              # double 0.49514734554292028
	.quad	0x3fa6476b2ff4d6f0              # double 0.043513631443074519
	.quad	0x3fc1f5b8277d9558              # double 0.14031125953912738
	.quad	0x3fd7ad56d1d272e2              # double 0.36995478144107896
	.quad	0x3fee7b60cd6bcf1f              # double 0.95256080743135729
	.quad	0x3feae9995417037f              # double 0.841015495527344
	.quad	0x3fe0ab50cf3d26be              # double 0.52091255642263667
	.quad	0x3fc1490d00fa9468              # double 0.135041833379691
	.quad	0x3fea738cb5c4cba4              # double 0.82660518171029595
	.quad	0x3fd90c939bd21dec              # double 0.39139261452552776
	.quad	0x3feb8004db696146              # double 0.85937731603466072
	.quad	0x3fc00213cfa87080              # double 0.12506339683102752
	.quad	0x3fa7662b38b0e540              # double 0.045701361341750957
	.quad	0x3fecd9fdfb354bd1              # double 0.90161036552523843
	.quad	0x3fedee9316591e93              # double 0.93537287106387834
	.quad	0x3fed0e2161b2d224              # double 0.90797490197889318
	.quad	0x3fef43ee7f022ba6              # double 0.97704243475287877
	.quad	0x3fb1558f15010f70              # double 0.067711775424923237
	.quad	0x3fe5c16c10c29249              # double 0.67986109994360178
	.quad	0x3fe12b689b0a1cf2              # double 0.53654890328553351
	.quad	0x3fef9a8cfd58de75              # double 0.98761605722297807
	.quad	0x3fe04e0b18387ada              # double 0.50952677469816909
	.quad	0x3fe8139079876b43              # double 0.75238822685364715
	.quad	0x3fe7cb02fa95a24d              # double 0.74353169386183426
	.quad	0x3fd913c8ce7a8692              # double 0.39183254398276646
	.quad	0x3fcfd7f71680b514              # double 0.24877823447005964
	.quad	0x3fc6b4d951cf6ecc              # double 0.17739407057421486
	.quad	0x3fed0d892d0c4237              # double 0.90790232466139897
	.quad	0x3fe7d666cd2db104              # double 0.74492206643984149
	.quad	0x3fdf1690c959e8ba              # double 0.48575229323581548
	.quad	0x3fc452206a5c54d8              # double 0.15875630563156196
	.quad	0x3fdb460c7fad01ea              # double 0.42615044086781373
	.quad	0x3fca8b0630a559dc              # double 0.20736768126762584
	.quad	0x3fdc713265eb00ac              # double 0.44440898850371968
	.quad	0x3fe81172c5a30d35              # double 0.75212992287598601
	.quad	0x3fcd476a7c6a3df4              # double 0.22874194216682009
	.quad	0x3fe25c75562d07a1              # double 0.57378641921262752
	.quad	0x3fdc39ab8089b48c              # double 0.44101989319353474
	.quad	0x3feb65e39cb337ed              # double 0.85618763547404131
	.quad	0x3fdd07fe322af506              # double 0.45361285113524763
	.quad	0x3fd21f57220e099c              # double 0.28316286397616763
	.quad	0x3fb33830f908a1b0              # double 0.075076161193129875
	.quad	0x3fa8f1a432716400              # double 0.04871857753523301
	.quad	0x3fee49e9ab593a8b              # double 0.94652255503190597
	.quad	0x3fe22de8f5e1a9de              # double 0.56810424827318307
	.quad	0x3fe085f09106d8f4              # double 0.51635006261383731
	.quad	0x3fe1a20e4178e7dc              # double 0.5510321882968543
	.quad	0x3fc56fb73eeacfc0              # double 0.16747179576998228
	.quad	0x3fcb8e6c109c69bc              # double 0.21528387843211572
	.quad	0x3fdc1eed491676d8              # double 0.43938762795901942
	.quad	0x3fe56f822423e7a2              # double 0.6698618608345337
	.quad	0x3fe0941fae426149              # double 0.51808151278513848
	.quad	0x3fb66eae9a6a4448              # double 0.087626373957634063
	.quad	0x3fcf9d207d84f098              # double 0.24698263291236766
	.quad	0x3fe04b4fc55d9780              # double 0.50919331119506239
	.quad	0x3fc48d5daa8ed620              # double 0.16056414440179001
	.quad	0x3fe7512ad08d68f9              # double 0.7286581109322291
	.quad	0x3fcef7fa64b0fe04              # double 0.24194269100733845
	.quad	0x3fe4b77669eef198              # double 0.64739533128845306
	.quad	0x3fed376bc4904391              # double 0.91301525489153523
	.quad	0x3fe6cbe16a175f37              # double 0.71238775940853472
	.quad	0x3fe15145c9d3717a              # double 0.54117097300654327
	.quad	0x3fc3c17dae4386b4              # double 0.15434237488721225
	.quad	0x3fe2aa5757ea2c55              # double 0.58329360171172573
	.quad	0x3fe52c716c58df20              # double 0.66167517816117893
	.quad	0x3fecd0d8b8fb2cf8              # double 0.90049396638042278
	.quad	0x3fcf1e7b277be504              # double 0.2431177084725179
	.quad	0x3fdaad2ddc3de316              # double 0.41682001598341978
	.quad	0x3f7487f17845e000              # double 0.0050124580778785344
	.quad	0x3fe554ae1fb4e8f5              # double 0.66658693497382038
	.quad	0x3fe2d18ec3b66850              # double 0.58808077073195797
	.quad	0x3f9e928d541c1f00              # double 0.029855926760347096
	.quad	0x3fe549047331c40c              # double 0.66516325472741888
	.quad	0x3fd957bb287f2274              # double 0.39597968058345789
	.quad	0x3fea9cd6d8d41d0d              # double 0.83164541577653639
	.quad	0x3fc9909d7fe1f118              # double 0.19972580665842865
	.quad	0x3fec245cfa81137b              # double 0.8794388668689942
	.quad	0x3fe7d81d40547ade              # double 0.74513113560154998
	.quad	0x3fe6bfc783ccdba5              # double 0.710910565779035
	.quad	0x3fc26d739f31515c              # double 0.1439651992137766
	.quad	0x3fdd21543b6c8d78              # double 0.45515924265983854
	.quad	0x3f8c2b402a891340              # double 0.013754369066313665
	.quad	0x3fee6fad4c58d740              # double 0.95113243972330252
	.quad	0x3fbefd63f0036b98              # double 0.12105393037511047
	.quad	0x3fc68fcd5aafb20c              # double 0.17626349380533701
	.quad	0x3fee083bd89c3f17              # double 0.93850509936052873
	.quad	0x3fe8605cdc5922fc              # double 0.76176302944904206
	.quad	0x3fec6f0dd8e711c4              # double 0.88855640758316001
	.quad	0x3fe4f03742e4e28b              # double 0.6543232256436381
	.quad	0x3feb816c0f0d5536              # double 0.85954859676227247
	.quad	0x3fca1f5de25aafe4              # double 0.20408223679021298
	.quad	0x3fe1dda102069c99              # double 0.55830431361836752
	.quad	0x3fc24086b06222e8              # double 0.14259418117969536
	.quad	0x3fe2f1c2cba6fc25              # double 0.59201183105313204
	.quad	0x3fd959eb04e33c2e              # double 0.39611316182430556
	.quad	0x3fd50bb3aa211a18              # double 0.32883922208967098
	.quad	0x3fe493ec4c119c29              # double 0.6430570111959969
	.quad	0x3fd98f99b9fd64c2              # double 0.39938967860286934
	.quad	0x3fdb9c1b28d01a2c              # double 0.43140295968661024
	.quad	0x3fbae36f581610d0              # double 0.10503288174192282
	.quad	0x3fee95b2849451d3              # double 0.95577360052498717
	.quad	0x3fbf76ed2a7d56c0              # double 0.12290842330306884
	.quad	0x3fe64b1366e77944              # double 0.69666452501750387
	.quad	0x3fe7cc9771d090ef              # double 0.74372455815730898
	.quad	0x3fedb5c7e0ae7498              # double 0.92844003565882627
	.quad	0x3fc0232baee18794              # double 0.12607332266912563
	.quad	0x3fe5246f5cb68631              # double 0.66069763286595251
	.quad	0x3fefe3da4a385d68              # double 0.99656404968383771
	.quad	0x3fcc4e82c6d05518              # double 0.22114596088128091
	.quad	0x3fdbeff91c137486              # double 0.43652179471775587
	.quad	0x3feadeab42297a32              # double 0.83968127176541985
	.quad	0x3fe1b3a6369d052b              # double 0.55317984263107201
	.quad	0x3fe4c340392c0fb9              # double 0.64883433500698751
	.quad	0x3fef2940ef36f478              # double 0.97378584596266559
	.quad	0x3fe8f810fa3d6a12              # double 0.78028153300266667
	.quad	0x3feb58ffefce7955              # double 0.8546142276498282
	.quad	0x3fc559e8adc17d50              # double 0.16680630191965884
	.quad	0x3fce267454f14438              # double 0.23554853580074719
	.quad	0x3fed5334285325c4              # double 0.91640670658051037
	.quad	0x3fef295b2dfb4d27              # double 0.97379836064138636
	.quad	0x3fedda41a0733b0b              # double 0.93289262140192031
	.quad	0x3fde56080d5e1780              # double 0.47400094323563025
	.quad	0x3fee5ea6ce999ae9              # double 0.94905414916578679
	.quad	0x3fd797b3af4309f4              # double 0.36863414874474576
	.quad	0x3fecc76e649456e6              # double 0.8993446316187288
	.quad	0x3fdf4b401ac75f72              # double 0.48896792044751358
	.quad	0x3fbd465851631420              # double 0.11435462939250884
	.quad	0x3fd6186a08416756              # double 0.34524012380790248
	.quad	0x3fd753a86e933780              # double 0.36448107527109386
	.quad	0x3fd0e0628cb67d8c              # double 0.26369537106980867
	.quad	0x3fef57d9f3bdf101              # double 0.97947404485560707
	.quad	0x3feac084ac5d4ba2              # double 0.83600076355866215
	.quad	0x3fe22dad94ea75d6              # double 0.56807593426827441
	.quad	0x3fea7968bcbd32d7              # double 0.82732045043084212
	.quad	0x3fed214851b787f3              # double 0.91031280479751187
	.quad	0x3fdc7803ef9f2ddc              # double 0.44482515717092297
	.quad	0x3fe3e1808e3f2e3e              # double 0.6212771204240608
	.quad	0x3fd99d5816a68220              # double 0.40022852146106125
	.quad	0x3fdb6cb3a7cbbb14              # double 0.42850963007269738
	.quad	0x3fd176b4b2769020              # double 0.2728702299884862
	.quad	0x3fe896b91247b00b              # double 0.7683987957984767
	.quad	0x3fd2cde593b23d1e              # double 0.29381694243871148
	.quad	0x3fe5369fe015a7dc              # double 0.66291803137323368
	.quad	0x3fe55535371132d9              # double 0.66665135150250443
	.quad	0x3fe83257565cdbb1              # double 0.75614516132087861
	.quad	0x3fe4c8245195754f              # double 0.6494313805994042
	.quad	0x3fb6eb9ecebc3650              # double 0.089532781097852565
	.quad	0x3feb3ba5d683cd51              # double 0.85103122613365134
	.quad	0x3fd11a6584aa494e              # double 0.26723611789306723
	.quad	0x3fe817362b922ed5              # double 0.75283344755140524
	.quad	0x3f6505f16ff5c700              # double 0.0025663104603886877
	.quad	0x3fe973e99d7c121d              # double 0.79539948233338331
	.quad	0x3fe2e0e261b58cf1              # double 0.58995169719528751
	.quad	0x3fd8f3ac5d656d7a              # double 0.38987263794634652
	.quad	0x3fe8ea13098d3281              # double 0.77857353082215763
	.quad	0x3fed1d67968dbce6              # double 0.90983943371784615
	.quad	0x3febc8b9ff79c8a7              # double 0.86825275323487439
	.quad	0x3fc3227035e90854              # double 0.14948847420061162
	.quad	0x3fe5c648b4bde454              # double 0.68045459080816295
	.quad	0x3fe255b3baf772ca              # double 0.57296167866624015
	.quad	0x3fc6de927fb6283c              # double 0.17866736637034986
	.quad	0x3fe121a80233967b              # double 0.53535843305571917
	.quad	0x3fec06c930f82a13              # double 0.8758283573563993
	.quad	0x3fefa49689ce64f5              # double 0.98884131350783255
	.quad	0x3fefda06b8db9f55              # double 0.99536453347261988
	.quad	0x3fa2b4aa54ef6e50              # double 0.036534617298198513
	.quad	0x3fe12f49376ce32f              # double 0.5370222170377924
	.quad	0x3f9bf1722264f9c0              # double 0.027288230275411385
	.quad	0x3fe97e62caa6070a              # double 0.79667796687883308
	.quad	0x3fc75b34472d9d54              # double 0.18247083163735545
	.quad	0x3fdf29263b76d1de              # double 0.48688655669255165
	.quad	0x3fd723f6bc770ba8              # double 0.36157005696093814
	.quad	0x3fd3c0c6efcd1382              # double 0.30864118021082032
	.quad	0x3fe4aa927d3b42f9              # double 0.64582180461192629
	.quad	0x3fcdb2ebfe92e330              # double 0.23202276163444813
	.quad	0x3feec93aa484db30              # double 0.96206409580813634
	.quad	0x3fc6d9120ea54ecc              # double 0.17849946704028807
	.quad	0x3fee996416087393              # double 0.95622448256800607
	.quad	0x3fd254849b3524e6              # double 0.28640856892577771
	.quad	0x3fd3f99c6447bca2              # double 0.31211004059782443
	.quad	0x3fe423c77d5a6d9b              # double 0.62936758502057744
	.quad	0x3feac583c607532e              # double 0.83661068608725997
	.quad	0x3fd793379713418e              # double 0.36836042169036254
	.quad	0x3fe17efbef038571              # double 0.54675099069952016
	.quad	0x3fe29d0343267c04              # double 0.58166659465121073
	.quad	0x3fceb738124a84bc              # double 0.23996640103454137
	.quad	0x3fc201785aebbcf0              # double 0.14066986503119194
	.quad	0x3fe8e759e4d66715              # double 0.7782411069376588
	.quad	0x3fd723fa233a67bc              # double 0.36157086792229243
	.quad	0x3fe820c1f489b123              # double 0.75399873505879034
	.quad	0x3fe1c1116e32cddc              # double 0.55481788180480462
	.quad	0x3f8784023a6ec4c0              # double 0.011482255371307537
	.quad	0x3feb747c8811a863              # double 0.8579695375058346
	.quad	0x3fd3b7c381a62afe              # double 0.30809104596180237
	.quad	0x3feb01e97dd21385              # double 0.84398340772951086
	.quad	0x3fe88d518eca0c53              # double 0.76725080383801936
	.quad	0x3fe6930b6f8af6ce              # double 0.70544978891094856
	.quad	0x3feb6f1a1e540d59              # double 0.85731225894452756
	.quad	0x3feab0924ca00df3              # double 0.83405413595067868
	.quad	0x3fcfbd3f285cede4              # double 0.24796285124635553
	.quad	0x3fedaf0c211eb984              # double 0.92761808842423976
	.quad	0x3fd01038ceb48e16              # double 0.25099010644973541
	.quad	0x3fd2bc164e11f09a              # double 0.29272992729216585
	.quad	0x3fceddcb59792e48              # double 0.24114362591568494
	.quad	0x3fe03726cb004b6a              # double 0.50673236511862041
	.quad	0x3fe17f4b804c69d9              # double 0.54678893144892549
	.quad	0x3fb0a6b2e17c9948              # double 0.065043621111361749
	.quad	0x3fca00cd78754e34              # double 0.20314949399708981
	.quad	0x3feba41436292b22              # double 0.86377916887554229
	.quad	0x3fd1091d4ab2cc02              # double 0.26618130011337382
	.quad	0x3fe9c58cc8969da3              # double 0.80536498238955223
	.quad	0x3fe6a43d4fc8e1d3              # double 0.70754876692722701
	.quad	0x3fda4a39342039a8              # double 0.41078023996751734
	.quad	0x3fec9a44f62fdd64              # double 0.89383171161072683
	.quad	0x3fe11d1d0c6766cd              # double 0.53480389044417509
	.quad	0x3fe0311990c40e6b              # double 0.50599363588885404
	.quad	0x3fde5d115cad3fa4              # double 0.47443040895904631
	.quad	0x3fe6d58f0651bba0              # double 0.71356917604667913
	.quad	0x3fd08611670b2b84              # double 0.25818286002020607
	.quad	0x3fe8dcf1f7cae5db              # double 0.77697084805475514
	.quad	0x3fe624197218417f              # double 0.69190666469698658
	.quad	0x3fc4ef53fec7d534              # double 0.16355371418436848
	.quad	0x3fe1fd4270e8beec              # double 0.56216547062464661
	.quad	0x3fe16a086eb59169              # double 0.54419347403431317
	.quad	0x3feff61d4d6587a8              # double 0.99879326931499168
	.quad	0x3feac84a131d70bf              # double 0.83694938405417207
	.quad	0x3fdd7e29b5157f64              # double 0.46082537349683705
	.quad	0x3fe2a07b40ddf625              # double 0.58209002179473102
	.quad	0x3fe85cadf9e40bfb              # double 0.76131342703627014
	.quad	0x3fd36a1b71ffb33a              # double 0.30335127003381823
	.quad	0x3fe5d41fe1c3ad25              # double 0.68214410872079567
	.quad	0x3fe848fe4f71690c              # double 0.7589103271123192
	.quad	0x3fe8d073fc1888e6              # double 0.77544593083828484
	.quad	0x3f71b9b279195180              # double 0.0043274852374292072
	.quad	0x3fddcbee00ef1e58              # double 0.46557188121048432
	.quad	0x3fdeabdc76d3e460              # double 0.47923957447307508
	.quad	0x3fc7943c684daad4              # double 0.18421130268992292
	.quad	0x3fc0cbb86c4da8f8              # double 0.13121705330133415
	.quad	0x3fcc569849793a38              # double 0.22139266574454708
	.quad	0x3fd3f0cfaf8dd03e              # double 0.31157295364323889
	.quad	0x3feec4a921d5c527              # double 0.96150642975240863
	.quad	0x3fe03d58d7d38f74              # double 0.5074886527404332
	.quad	0x3fdaacccfcb218dc              # double 0.41679691960633902
	.quad	0x3fd622771b0f0210              # double 0.34585359232372159
	.quad	0x3fe203827a809e4a              # double 0.56292842794659603
	.quad	0x3fdb79386504ef5a              # double 0.42927369942821303
	.quad	0x3fe59e800b138557              # double 0.67559816516237958
	.quad	0x3fe7529765521ecc              # double 0.72883195676055257
	.quad	0x3fb02f1edad7adc8              # double 0.063219002178519834
	.quad	0x3fd0b11fb17748e6              # double 0.26081077891025328
	.quad	0x3fd1c46366c3586a              # double 0.27761158976989597
	.quad	0x3fe07d022bacc6bd              # double 0.51525982408767101
	.quad	0x3fd9a9db0b045e58              # double 0.40099216533551418
	.quad	0x3fd987d99b1ec91a              # double 0.39891662739241129
	.quad	0x3fe0dd8e543ad76e              # double 0.5270454068292858
	.quad	0x3fe5ffce6a3a39be              # double 0.68747635600612234
	.quad	0x3f9b6857112ed140              # double 0.026765213416824141
	.quad	0x3fb2b1ef20fe4fd0              # double 0.07302755885603962
	.quad	0x3fc46d302deccf44              # double 0.15958215944703558
	.quad	0x3fe5c3f7c6089457              # double 0.68017185858173945
	.quad	0x3feaa8ab7b5bf94f              # double 0.83308958142860401
	.quad	0x3fe7ecf12a58e49a              # double 0.74767359038300474
	.quad	0x3fe13a788cc977d4              # double 0.53838756082017847
	.quad	0x3fe7ae0aa1a2d12c              # double 0.73999530381710121
	.quad	0x3fe7224206b48fe3              # double 0.72293187436707418
	.quad	0x3f749578e186cb00              # double 0.0050253602898233662
	.quad	0x3fed77f82306eb66              # double 0.92089468804566077
	.quad	0x3feb9dc2e2f387ec              # double 0.86300796820091596
	.quad	0x3fed5ad92c7286c3              # double 0.91733988457800597
	.quad	0x3fd7eca3478920c8              # double 0.3738182257261653
	.quad	0x3fdb1baaecdae962              # double 0.42356370096572082
	.quad	0x3fd4240dab6e527a              # double 0.31470052472403831
	.quad	0x3fd5565a2b4e3f62              # double 0.33339552144115292
	.quad	0x3fb44cde606865b8              # double 0.079297922646580754
	.quad	0x3fe876093e44665d              # double 0.76440870439109754
	.quad	0x3fe917df278eca4d              # double 0.78416402555587583
	.quad	0x3fde140514d1233a              # double 0.46997191460518517
	.quad	0x3febbdd147c49332              # double 0.86692108170664128
	.quad	0x3fe430019b43d7a2              # double 0.63086014104077415
	.quad	0x3fedad79d7813e24              # double 0.92742626276771433
	.quad	0x3feac09b86a9a051              # double 0.83601166058816478
	.quad	0x3f9d6a4caaca16e0              # double 0.028725812839659137
	.quad	0x3fe4dcaec3bdb0d8              # double 0.65193880301151363
	.quad	0x3fe0fe9df16b0356              # double 0.53108117248494113
	.quad	0x3fcf816d7b6cf9f0              # double 0.24613731886525114
	.quad	0x3fd64fc74945130a              # double 0.34861929087883026
	.quad	0x3fcb316ce89c51e0              # double 0.21244584424915924
	.quad	0x3fde83185c6274e0              # double 0.47675141355450812
	.quad	0x3fede44643f4f9f4              # double 0.93411553643073697
	.quad	0x3fb706ba4cd15b38              # double 0.089946407083840607
	.quad	0x3fe4ba9592a73101              # double 0.64777640002424175
	.quad	0x3fe06662a460f496              # double 0.51249820809575186
	.quad	0x3fa83d4454e107f0              # double 0.047342429505547901
	.quad	0x3fc69dfbdd24d04c              # double 0.1766962842754104
	.quad	0x3fe53b985030abc0              # double 0.66352477705128621
	.quad	0x3fcae91f51744268              # double 0.21023932912113996
	.quad	0x3fec81f60fdd8033              # double 0.89086440180472548
	.quad	0x3fd500b676f01a10              # double 0.32816850295094557
	.quad	0x3fc57babe277a174              # double 0.16783665235494605
	.quad	0x3febc955ae0dfbf0              # double 0.86832698817295118
	.quad	0x3fe9712f178f5364              # double 0.79506640054260602
	.quad	0x3fe27848c6fd7978              # double 0.5771831404233998
	.quad	0x3fe294fedb8fab0f              # double 0.58068793185279499
	.quad	0x3fb76c74dbbe86a0              # double 0.091498664520737183
	.quad	0x3fd01c5003a6fd7a              # double 0.25172806126280245
	.quad	0x3fefead0e90b3102              # double 0.99741406933165444
	.quad	0x3fe004fa3fe989b6              # double 0.50060760958540729
	.quad	0x3fe523f648dcf918              # double 0.66063989859665906
	.quad	0x3fd0d17fa13ed4b4              # double 0.26278677698730779
	.quad	0x3fe911b8197e9d66              # double 0.7834129808369823
	.quad	0x3f9a36e860905180              # double 0.025600081342490366
	.quad	0x3fd5fb8e64aa55a8              # double 0.34347877340891353
	.quad	0x3fbc64e044f080c8              # double 0.11091424639789971
	.quad	0x3fc610c929abd38c              # double 0.17238726172186281
	.quad	0x3fe9bbc07181e1d7              # double 0.80416891259579415
	.quad	0x3fed3a85980df49b              # double 0.91339378069064325
	.quad	0x3fefa5ae9bddaa18              # double 0.98897486155084646
	.quad	0x3fdfba907fc500be              # double 0.49576199033254997
	.quad	0x3fe8225e19c2525b              # double 0.75419526129787628
	.quad	0x3fedd276c509f76f              # double 0.93194139942327847
	.quad	0x3fe8f09b4e0d0cd4              # double 0.77937093014079517
	.quad	0x3fe89828cc302731              # double 0.76857414131629842
	.quad	0x3fee948e894b6fcb              # double 0.95563437285772446
	.quad	0x3faafbe0366c9160              # double 0.052702910083356924
	.quad	0x3fdf137a49896744              # double 0.48556382352181893
	.quad	0x3fd2fea83f671766              # double 0.29679304305715559
	.quad	0x3fd285d1dca9a1bc              # double 0.28941771077236544
	.quad	0x3f9c2b38fa536c00              # double 0.027508631018331897
	.quad	0x3fd607ebba7c3cfc              # double 0.34423344813781376
	.quad	0x3fcffc82be030574              # double 0.24989351537628191
	.quad	0x3f847d742fa4c800              # double 0.010004909233064296
	.quad	0x3feedf4a6c6b0a7e              # double 0.96475716758170882
	.quad	0x3fed2c4e5a0b22de              # double 0.91165845476742979
	.quad	0x3fe472b0247eb440              # double 0.63900000694196279
	.quad	0x3feb159bba87d237              # double 0.84638773376224818
	.quad	0x3feb85bede6621da              # double 0.86007636487289152
	.quad	0x3fe3e9af473e540b              # double 0.62227596201648916
	.quad	0x3fd83aed31a60d4c              # double 0.37859659050464667
	.quad	0x3fec101d3f1de044              # double 0.87696707084160907
	.quad	0x3fe8ddc12ebf5264              # double 0.77706965570775965
	.quad	0x3f96ed92b4fae140              # double 0.022390644355909872
	.quad	0x3fd4755e853a9cfa              # double 0.31966364870682151
	.quad	0x3fcd64b6a9a9d944              # double 0.22963603290890877
	.quad	0x3fe06d69baad811d              # double 0.51335607967851937
	.quad	0x3fe1bd5c17e5886f              # double 0.55436520259196509
	.quad	0x3fded0e7bf41323e              # double 0.48150056531156682
	.quad	0x3fc1a089983f3e3c              # double 0.13771171506822266
	.quad	0x3fecb2b429bbf5e1              # double 0.89681442404952005
	.quad	0x3fe1eba1d77580b5              # double 0.5600136955436229
	.quad	0x3fdacbacd8792e6c              # double 0.41868134632088672
	.quad	0x3fedabd0fc0328aa              # double 0.92722367497596747
	.quad	0x3fe17515222fa6ef              # double 0.54554230381947189
	.quad	0x3fd5539df262f962              # double 0.33322857542579787
	.quad	0x3fe08e2797b7eede              # double 0.51735286362187671
	.quad	0x3fe8bdd125da8b18              # double 0.77317101853654702
	.quad	0x3fd7ef8f236b1872              # double 0.37399652918646276
	.quad	0x3fe5a9f2186372b9              # double 0.67699532283184916
	.quad	0x3fe3645c6d4c0eba              # double 0.60600110385026729
	.quad	0x3fe8e4cfc95f8273              # double 0.77793111162834661
	.quad	0x3fe9eaa4e6878306              # double 0.80989308381330782
	.quad	0x3fd9701e68364fc0              # double 0.39746818711250498
	.quad	0x3fd379902335923e              # double 0.30429461897282184
	.quad	0x3fe15bf10c81e736              # double 0.54247333948953869
	.quad	0x3fa6e5867c206c30              # double 0.044719889309100203
	.quad	0x3fe62ee72841f629              # double 0.69322545874428443
	.quad	0x3feaeed1eac4e1fb              # double 0.84165283063253982
	.quad	0x3f859d0b1a3b60c0              # double 0.01055344270518821
	.quad	0x3fdded6296177f92              # double 0.46761383683587454
	.quad	0x3fe5adc7953a4ffa              # double 0.67746333261538827
	.quad	0x3fe3ab6d5c5ff3d5              # double 0.61467617074924397
	.quad	0x3fb9e8a99e3fae98              # double 0.10120639909262719
	.quad	0x3fbf1f8bfe01beb0              # double 0.12157511664713172
	.quad	0x3fe05fa3bcd3b28b              # double 0.51167475586187672
	.quad	0x3fe1ec6aebc74b5d              # double 0.56010957766043712
	.quad	0x3fefd6cc8c7016de              # double 0.99497058324115151
	.quad	0x3fe31159886552b2              # double 0.59586788787654243
	.quad	0x3fe3310ab46774fb              # double 0.59973654971295731
	.quad	0x3fec7d4c041d18cf              # double 0.89029503634881191
	.quad	0x3fe913aade010142              # double 0.78365081176892937
	.quad	0x3fe061279a2112cf              # double 0.51185970404966408
	.quad	0x3fc7207216e3c56c              # double 0.18067766301787047
	.quad	0x3fee4643e406b258              # double 0.94607729469641821
	.quad	0x3fe11f7fe401b71b              # double 0.53509516270216595
	.quad	0x3fc39e115894cd24              # double 0.15326134515053369
	.quad	0x3fe486b268bde77c              # double 0.64144249398599085
	.quad	0x3fe004617357c9c7              # double 0.50053474929728103
	.quad	0x3fba008b4f635440              # double 0.10157080352958392
	.quad	0x3fe1ab09a5a1a275              # double 0.55212862348441993
	.quad	0x3fed5687fe75705a              # double 0.91681289385770559
	.quad	0x3fdffe7e78c3b3e8              # double 0.49990808289913824
	.quad	0x3fdefb634a0986d8              # double 0.48409349661060963
	.quad	0x3fba7af61e5439e8              # double 0.10343874206976233
	.quad	0x3fd7b6fd6f5c1212              # double 0.37054382204976932
	.quad	0x3fe6f753261872fd              # double 0.71769101563003768
	.quad	0x3fe0ccd73a3484db              # double 0.5250049721545581
	.quad	0x3fe2ae5244c1b0dc              # double 0.58377946309112927
	.quad	0x3fe4b2f7b6446b7f              # double 0.64684663390231367
	.quad	0x3fbba40221ef5688              # double 0.10797131851662745
	.quad	0x3feedd1b66442355              # double 0.96449060415134602
	.quad	0x3fea6a46049996e7              # double 0.82547284029416523
	.quad	0x3fef199223547930              # double 0.97187144184480267
	.quad	0x3fe9d64dd092d12b              # double 0.8074101518346074
	.quad	0x3fedfb364412464a              # double 0.93691552443687809
	.quad	0x3fe34b529eee74e0              # double 0.60294467011740593
	.quad	0x3f7031939d2d4e80              # double 0.0039535299464038554
	.quad	0x3fef5c0790c35fdd              # double 0.97998407625254524
	.quad	0x3fbf66e413e50558              # double 0.12266374097545929
	.quad	0x3fbb466f98a301a8              # double 0.10654351688845642
	.quad	0x3fd3c7321c6e2d3a              # double 0.30903294350055754
	.quad	0x3fefbae3471ad46c              # double 0.99156345260292999
	.quad	0x3fddcf8c30985ea0              # double 0.46579270120262528
	.quad	0x3fe4eac049147433              # double 0.65365614198129263
	.quad	0x3fe4ea1334f29035              # double 0.65357361165343397
	.quad	0x3fb29040186f77b8              # double 0.072513586011580311
	.quad	0x3fd80a9bd8fc0876              # double 0.37564750852482776
	.quad	0x3fb26872622ee710              # double 0.071906231852065128
	.quad	0x3fbdd5ab951a84b0              # double 0.11654159918045326
	.quad	0x3fe411235f506316              # double 0.62709206214921909
	.quad	0x3f81718316915b40              # double 0.0085172883283753941
	.quad	0x3fd4fbda037ab016              # double 0.32787180270929761
	.quad	0x3fe7c983bfcd0ce8              # double 0.74334895573738624
	.quad	0x3fe30f5f85ab1fef              # double 0.5956266031944305
	.quad	0x3fe853a00c4da9b8              # double 0.76020815279962672
	.quad	0x3fec487477a27543              # double 0.88384459844716223
	.quad	0x3fea34100bb83edf              # double 0.818855307474191
	.quad	0x3fd4a19a8b0dc442              # double 0.32236350612135223
	.quad	0x3fc52d6ba0512dc0              # double 0.16544862106307612
	.quad	0x3fad328172a0d8e0              # double 0.057025952570642024
	.quad	0x3fb38299beafb8a0              # double 0.076211556486415422
	.quad	0x3f583acbbb9f1c00              # double 0.0014788617686336547
	.quad	0x3fe1d8bf70a2ad2c              # double 0.55770847319710048
	.quad	0x3fe10193a3ef0b30              # double 0.53144247072518702
	.quad	0x3fe84e54330de2ff              # double 0.75956163379223074
	.quad	0x3feeb0af45256a63              # double 0.95906795029743496
	.quad	0x3fe8ec5dbf205185              # double 0.77885329560608396
	.quad	0x3fe8b9759ef3747e              # double 0.77263909382931195
	.quad	0x3feaab024252e4c4              # double 0.83337510064952668
	.quad	0x3fa1fedbdafc9dd0              # double 0.035147543412957227
	.quad	0x3fe1f59b52198ad2              # double 0.56123128924476817
	.quad	0x3feacf8ac37fafc3              # double 0.8378347223601782
	.quad	0x3fe2091120154f0b              # double 0.56360679880387587
	.quad	0x3fed4f069f76d6ea              # double 0.91589671273569917
	.quad	0x3fdee00589bae712              # double 0.48242319536403599
	.quad	0x3fddf86928ba58ba              # double 0.46828679063163359
	.quad	0x3fe1bd872edb5e6c              # double 0.55438574935665264
	.quad	0x3fe2887dc5961eb4              # double 0.57916153517813607
	.quad	0x3fcafb7a8c8df120              # double 0.21079952109347122
	.quad	0x3fe3e5d04b5615c8              # double 0.62180342401614386
	.quad	0x3fd29f6162e169d2              # double 0.29097780853558419
	.quad	0x3fe464da8ff23a81              # double 0.63731124987118914
	.quad	0x3fed5a97a22c11df              # double 0.91730863260505291
	.quad	0x3fe992c009b6556f              # double 0.7991638364498338
	.quad	0x3fefe6baae3dd8a0              # double 0.99691518813667201
	.quad	0x3fdef4e7c28e9590              # double 0.48369783401207034
	.quad	0x3fe564a6be70bcf3              # double 0.66853654094111759
	.quad	0x3fe741954d075c0d              # double 0.7267557625262967
	.quad	0x3feeb810fb7b39a8              # double 0.95996903531504518
	.quad	0x3fa3eb879ece1360              # double 0.038906324515699309
	.quad	0x3fe4b3304b900340              # double 0.64687361486731021
	.quad	0x3fdef230045c7b52              # double 0.48353195596603371
	.quad	0x3fdd6fe83e891e22              # double 0.4599552736949325
	.quad	0x3fe5b928ea36d213              # double 0.67885251755666542
	.quad	0x3fd7e7f7c0bb5190              # double 0.37353318997818352
	.quad	0x3fe904a98adcc07f              # double 0.78181912538094867
	.quad	0x3fe664008053326d              # double 0.69970727027391677
	.quad	0x3fed8210a16a9584              # double 0.92212707068090127
	.quad	0x3fc8fd3718b7e6c8              # double 0.19522751528693605
	.quad	0x3fcf89c732db2538              # double 0.24639215453343311
	.quad	0x3fe8c23ea310030b              # double 0.77371150825646973
	.quad	0x3fe3ed6c6878495f              # double 0.6227323570658817
	.quad	0x3fd1428bae642d1e              # double 0.26968662290956213
	.quad	0x3fe34caf484d2132              # double 0.6031109249243285
	.quad	0x3feafef4cc881123              # double 0.8436225886112293
	.quad	0x3fe7eb7625e8a81d              # double 0.74749286083283872
	.quad	0x3fdd0cb57e821a38              # double 0.45390069345777162
	.quad	0x3fe4e2547759d9cf              # double 0.65262816725481254
	.quad	0x3fbc16c2b3f30808              # double 0.10972229855818239
	.quad	0x3fbecac0a00e0f10              # double 0.1202812567481113
	.quad	0x3fded05d9db8978e              # double 0.48146763231704248
	.quad	0x3fc8c9b916ebf058              # double 0.19365609759541047
	.quad	0x3feececc5279df22              # double 0.96274391277890836
	.quad	0x3fd0b558935be0f0              # double 0.26106848135488203
	.quad	0x3fea3ca006725bf1              # double 0.8199005247032557
	.quad	0x3fe895a879d3cc3a              # double 0.76826881212617271
	.quad	0x3fe37c4db3ecc04b              # double 0.60892377034725464
	.quad	0x3fe684fd57f9d29d              # double 0.70373408491885281
	.quad	0x3fdb29316768a592              # double 0.42438922022355385
	.quad	0x3fd0cd9f1a678110              # double 0.26255014017625999
	.quad	0x3feb710404eb1b6d              # double 0.85754586182234294
	.quad	0x3fe884fd8eb6f1d7              # double 0.76623418687773437
	.quad	0x3fe89dc257e57e6d              # double 0.76925770919110692
	.quad	0x3feab19da2bfcc3c              # double 0.83418161189036466
	.quad	0x3fb9dc96e28cac88              # double 0.10102217703813399
	.quad	0x3fe8264f04f1e744              # double 0.75467635122115739
	.quad	0x3fc3218cf0f179a4              # double 0.14946138157661182
	.quad	0x3fbc05c6f820c978              # double 0.10946315343679724
	.quad	0x3fcdf0fc127dbb58              # double 0.2339167681015748
	.quad	0x3fe2ac1c9a9df5db              # double 0.58350973318709565
	.quad	0x3fd38ff11cffddf4              # double 0.30566051322918431
	.quad	0x3fecbac925810fd8              # double 0.89780099225071819
	.quad	0x3fe9797c977cb4eb              # double 0.79607991778689546
	.quad	0x3fee63d56dfb99c8              # double 0.94968673211115461
	.quad	0x3fe17237a73d5d64              # double 0.54519255317692883
	.quad	0x3fe9f6478ca48a32              # double 0.81131341428073811
	.quad	0x3fed9d750985e36f              # double 0.92547084674798252
	.quad	0x3fe67468d9aec32a              # double 0.70171015278001403
	.quad	0x3fe7253c2491a2fb              # double 0.7232952799068636
	.quad	0x3fbdca38eeff8b40              # double 0.11636691889684148
	.quad	0x3fbe4db7def45aa8              # double 0.11837338631844807
	.quad	0x3f89e65edef641c0              # double 0.012646428279169508
	.quad	0x3fdec82fdff5a334              # double 0.48096844550177598
	.quad	0x3fbae17a1e1982f0              # double 0.10500300631384696
	.quad	0x3fe6047e309a47b4              # double 0.68804845326143615
	.quad	0x3fe8125bdcbe0b15              # double 0.75224106897107623
	.quad	0x3fef6cff54b2d7a9              # double 0.98205534498878421
	.quad	0x3fea7088c6bd2092              # double 0.82623709503333687
	.quad	0x3fdb86f5139c9bec              # double 0.43011214175424928
	.quad	0x3fef95031f637585              # double 0.98693996553963414
	.quad	0x3fe3477b7c7f9249              # double 0.60247587505416178
	.quad	0x3fc11e5985779500              # double 0.13373869912098968
	.quad	0x3fe5a735ec881569              # double 0.67666145513127873
	.quad	0x3fe7ddcb3ae6c5f9              # double 0.74582444671813086
	.quad	0x3fc9f53a6563b9fc              # double 0.20279626799261041
	.quad	0x3fe3c49d882a85c7              # double 0.61775089831297059
	.quad	0x3fda51ad0c8e8822              # double 0.41123510576483302
	.quad	0x3fa9ac166a15bbf0              # double 0.050141048860375181
	.quad	0x3fc8fba4fefd4c10              # double 0.19517958117157308
	.quad	0x3fc8d8ddf020ce64              # double 0.19411825394637383
	.quad	0x3fce43dd8ec07264              # double 0.23644608946132728
	.quad	0x3fcc790a3f04a0b4              # double 0.22244384839109943
	.quad	0x3fd1d568d2c287de              # double 0.27865048009891591
	.quad	0x3fe9f9b4e014879c              # double 0.81173175588286339
	.quad	0x3fe76b905e4836ef              # double 0.73188036360235553
	.quad	0x3fbc32b295652718              # double 0.11014858386365878
	.quad	0x3fc6af378e0bfbf4              # double 0.17722219882850221
	.quad	0x3fed9e4ef5616025              # double 0.92557475972990189
	.quad	0x3fe7dd146b9e9fd6              # double 0.74573727626283914
	.quad	0x3fd93da25820bd08              # double 0.39438685041655264
	.quad	0x3fb36292aaad6210              # double 0.075722853345162599
	.quad	0x3fd1b726daf5866e              # double 0.27680369742129229
	.quad	0x3fe9102de9918921              # double 0.7832250177273502
	.quad	0x3faf0ec6ef404860              # double 0.060659615235764575
	.quad	0x3fe3a9df2b1823c9              # double 0.61448629776816077
	.quad	0x3fe5ca2755b8e883              # double 0.68092695944439219
	.quad	0x3fc336382a576260              # double 0.15009214465568999
	.quad	0x3fe2383a1228b0c2              # double 0.56936362787885053
	.quad	0x3fdeec27bfc28dbc              # double 0.48316377378997877
	.quad	0x3feda5dd8c4c8157              # double 0.92649724390143262
	.quad	0x3fedab39c56fb86e              # double 0.92715157090948508
	.quad	0x3fc7decca533c84c              # double 0.18648679796712242
	.quad	0x3fea123f50987d47              # double 0.81472745648708489
	.quad	0x3fea427b1ee229a5              # double 0.82061534912036349
	.quad	0x3fed9665bdf62b3a              # double 0.92460906125902587
	.quad	0x3fd43c3cfe2c5bc4              # double 0.31617665120705518
	.quad	0x3fd43c526d0ee01e              # double 0.31618176126676356
	.quad	0x3feb122e4ff48220              # double 0.84596934906227616
	.quad	0x3fe71ba79aae380e              # double 0.7221258183578827
	.quad	0x3fdf9f6d0c9ad43e              # double 0.49410558920800784
	.quad	0x3fe091c29bec27fd              # double 0.51779299214945207
	.quad	0x3fe7dd76ba914db0              # double 0.74578415335638759
	.quad	0x3fd239fadfc2b5a4              # double 0.28478881694430869
	.quad	0x3fdee828ff0c12a4              # double 0.48291993052434123
	.quad	0x3fe8fbdab1dc9194              # double 0.78074393023102794
	.quad	0x3fe07b98b4c5edd7              # double 0.5150874644017972
	.quad	0x3fd27e79b2c19f14              # double 0.28896944481538012
	.quad	0x3fe17b28fc932569              # double 0.54628419238103476
	.quad	0x3fbc4ec8073355f0              # double 0.11057710815233412
	.quad	0x3fef9a2c71d270d3              # double 0.98757002097002055
	.quad	0x3fb263caeb034070              # double 0.0718352149735908
	.quad	0x3fd8ec585711d550              # double 0.38942535879990192
	.quad	0x3fdd1ba97d41d34c              # double 0.45481335861341132
	.quad	0x3fd7dba2a554163c              # double 0.37278047700269545
	.quad	0x3fca188df2ca2270              # double 0.20387434344253874
	.quad	0x3fbd557af86e3560              # double 0.11458557667920877
	.quad	0x3fa3bb7ced99da20              # double 0.03853979492571491
	.quad	0x3fe9d6df80f81840              # double 0.80747962178498511
	.quad	0x3feb3cab82cf9233              # double 0.85115600155820059
	.quad	0x3fe10503a06ae978              # double 0.53186208087508557
	.quad	0x3fea3374de7bfa83              # double 0.81878131345713745
	.quad	0x3fe8d7301ed1710c              # double 0.77626806277433635
	.quad	0x3feee57ea0de5836              # double 0.96551448268542717
	.quad	0x3fe64d07ca15c580              # double 0.69690312833533596
	.quad	0x3fca0547eee4b6e8              # double 0.2032861629935987
	.quad	0x3fe2df90d47a476f              # double 0.58979074000874998
	.quad	0x3feeb84e5d1aea25              # double 0.9599983042201684
	.quad	0x3fc4b54ecb1a6120              # double 0.16178307454243512
	.quad	0x3fe875bc85a29a04              # double 0.76437212086312955
	.quad	0x3fe9fcdc5d5d5332              # double 0.81211679682983218
	.quad	0x3fd32af809d0547e              # double 0.29949761350992066
	.quad	0x3fedf70227acd057              # double 0.93640239476236331
	.quad	0x3feb27e84a8dd270              # double 0.84862150727583519
	.quad	0x3fcab018138047fc              # double 0.2084989638538558
	.quad	0x3fd7b3cd41c7300c              # double 0.37034923003807374
	.quad	0x3fd97073cf7783bc              # double 0.39748854885516116
	.quad	0x3fef852fc3ce7b00              # double 0.98500812762708279
	.quad	0x3febf6d85c056b8a              # double 0.87388246510396184
	.quad	0x3fee3dfd4f1e96ef              # double 0.9450670762350607
	.quad	0x3fedfdd32330f89e              # double 0.93723446725177317
	.quad	0x3fd51792c2be0320              # double 0.32956379907413869
	.quad	0x3fdf5e9a41163d12              # double 0.49014908176555239
	.quad	0x3fe10b53753ab2c7              # double 0.53263256927820002
	.quad	0x3feb9051669ccc11              # double 0.86136693994046898
	.quad	0x3fbbf01e96cb66f8              # double 0.10913268262393305
	.quad	0x3fe358d4a7bc2005              # double 0.60459358940806907
	.quad	0x3fa8027fefd57150              # double 0.046894071604330123
	.quad	0x3fe5014a679ebcc1              # double 0.65640754926962341
	.quad	0x3fc740a97bc2a0f0              # double 0.18166082900029989
	.quad	0x3fde51152bcdbd9a              # double 0.4736988952417619
	.quad	0x3fe19f78db14254f              # double 0.55071680821235158
	.quad	0x3fe85e56851c0442              # double 0.76151586530625814
	.quad	0x3fe141cd293d21c9              # double 0.53928239874317641
	.quad	0x3fdf940fa85bb5aa              # double 0.49341193619951673
	.quad	0x3fd9e4dc1a3884ae              # double 0.40459349213240159
	.quad	0x3fe6b96fd3b02577              # double 0.71013633103682039
	.quad	0x3fdfaa77ad4958a0              # double 0.49477950975905038
	.quad	0x3fee3973a4b68077              # double 0.94451315088737331
	.quad	0x3feb49699308664c              # double 0.85271147458406337
	.quad	0x3fe180142039b0d1              # double 0.54688459676756385
	.quad	0x3fe809c9eb704511              # double 0.75119491561977914
	.quad	0x3fe440cb819cdb12              # double 0.63290953936561523
	.quad	0x3fc8d0289465e3f8              # double 0.1938524937247903
	.quad	0x3fef8c62629c64b1              # double 0.98588675746863974
	.quad	0x3fef8bd8520b1c46              # double 0.98582092308141323
	.quad	0x3fdcca7a9d4fc3c4              # double 0.44985833513697693
	.quad	0x3feb0800986d04da              # double 0.84472684641527995
	.quad	0x3fd393dcb29b8768              # double 0.30589978639738158
	.quad	0x3fd935a6aa441178              # double 0.39389959933784935
	.quad	0x3feecc28bc8f6821              # double 0.96242176845703764
	.quad	0x3fee51fba96f96bc              # double 0.94750769703815462
	.quad	0x3fecac4b4e390a33              # double 0.89603200223820634
	.quad	0x3fdb507dd9e9fc56              # double 0.42678781777062136
	.quad	0x3fc409883d4fadc8              # double 0.15654089921677738
	.quad	0x3fe1ef7717666aca              # double 0.56048159189534741
	.quad	0x3fea122257a4a788              # double 0.81471364133652546
	.quad	0x3fee81ca0770c320              # double 0.95334340527742611
	.quad	0x3fe14bfcc517a6fc              # double 0.54052580351455459
	.quad	0x3fdc8c807cdf5b22              # double 0.4460755557496886
	.quad	0x3fef1b75f278ee3f              # double 0.97210214002502215
	.quad	0x3fd1998b6acaf7a4              # double 0.27499661854732893
	.quad	0x3fdbfe384c715416              # double 0.4373913523207319
	.quad	0x3fdf49f8f8a72634              # double 0.48888992578995105
	.quad	0x3fe822d32826c6e2              # double 0.75425107805332581
	.quad	0x3fb78d29a20e8718              # double 0.091997720780025438
	.quad	0x3fe9d8a0997245d0              # double 0.80769376726146369
	.quad	0x3feab961dd466f41              # double 0.83512967317390274
	.quad	0x3fa0ab8fcd926b70              # double 0.032558912128670126
	.quad	0x3fda79eff12dd782              # double 0.41369246056216735
	.quad	0x3fedda23b08831bb              # double 0.93287834624202703
	.quad	0x3fd47feee3247354              # double 0.32030842000840676
	.quad	0x3fee54c5b760e9c9              # double 0.94784818473936483
	.quad	0x3fcdf68f3846eb8c              # double 0.23408689735319077
	.quad	0x3fe56562e223228d              # double 0.66862625281744814
	.quad	0x3fdf63f8aa873e02              # double 0.4904767670932132
	.quad	0x3fcca36d7e288a98              # double 0.22373741779400258
	.quad	0x3fdecb63eb152c5c              # double 0.48116395909591403
	.quad	0x3fc622476a736e30              # double 0.17292111108587127
	.quad	0x3fdb7197fc3226e6              # double 0.42880820873743486
	.quad	0x3fcf47bf0a468714              # double 0.24437702180608112
	.quad	0x3fe864774e98e4e4              # double 0.76226392127059883
	.quad	0x3fee9ea37fc27e0e              # double 0.95686507180283953
	.quad	0x3fef4d28479c9f58              # double 0.97816862093621192
	.quad	0x3fd2f7240889ad34              # double 0.29633427461404271
	.quad	0x3fc6517136eb0454              # double 0.17436042005104702
	.quad	0x3fe36c98cb867f9a              # double 0.60700645209361714
	.quad	0x3fe146a809cc14c8              # double 0.53987504876627046
	.quad	0x3fd0ae211f1b6c98              # double 0.2606280139713788
	.quad	0x3fd7f6ccf731b214              # double 0.37443851604510425
	.quad	0x3fe8b5d3c9af576f              # double 0.77219571487033345
	.quad	0x3fe7b388983d4a76              # double 0.74066571935902803
	.quad	0x3fe2236ec8eeb16d              # double 0.56682528729065285
	.quad	0x3fcaaa1052f69e60              # double 0.20831493426270509
	.quad	0x3fd38cd942f66e98              # double 0.30547172107046938
	.quad	0x3fe8c749269bf79e              # double 0.77432687321537563
	.quad	0x3fdcd0af899e0600              # double 0.45023716391742141
	.quad	0x3febec67d6f169ed              # double 0.87260810833987323
	.quad	0x3fde169d20abf7d6              # double 0.47013023558235767
	.quad	0x3fe407917b699dfb              # double 0.62592386344925843
	.quad	0x3fed93cd40e9b1f8              # double 0.92429220846457749
	.quad	0x3fe09fcfc3fe34b5              # double 0.5195082500446434
	.quad	0x3fc2783fd9ec66e4              # double 0.14429472103875363
	.quad	0x3fd91c09c9fa2a66              # double 0.39233631824814663
	.quad	0x3fec8c4813f247eb              # double 0.89212421317847423
	.quad	0x3fd21516ea883b94              # double 0.28253720191508447
	.quad	0x3fe09798ef1d7d08              # double 0.51850554182229391
	.quad	0x3fd480950621d994              # double 0.32034803007936685
	.quad	0x3fe7f31ed8681ae4              # double 0.74842779414106219
	.quad	0x3fef95b8c3e1e3f9              # double 0.98702657945898331
	.quad	0x3fe992bd2a9583f5              # double 0.79916246716686479
	.quad	0x3fdc6ab31d358ed4              # double 0.44401243069135643
	.quad	0x3fd90e4ef000a9e2              # double 0.39149831235650201
	.quad	0x3fe2ccccbed5f132              # double 0.58749997398948595
	.quad	0x3fc840363bbe5874              # double 0.18945959012188818
	.quad	0x3fc416971c604dd4              # double 0.1569394005351642
	.quad	0x3fde788afb495c4c              # double 0.47610735454276631
	.quad	0x3fd4cacfbfd15da0              # double 0.32487863285265384
	.quad	0x3fa76c24c9cb9890              # double 0.045746945985045362
	.quad	0x3fbf7c71ade2e9b0              # double 0.122992615654687
	.quad	0x3fc0606b1fe16b24              # double 0.12794245773951574
	.quad	0x3fd5c88792889ac8              # double 0.3403643542282393
	.quad	0x3fe0643b8f95e52c              # double 0.51223543209122147
	.quad	0x3fd11d399625a63a              # double 0.26740874922561242
	.quad	0x3fe1af6f736135f3              # double 0.55266544852355393
	.quad	0x3fe34768640e1a0d              # double 0.60246676961907186
	.quad	0x3fdcde27901bea84              # double 0.4510592372240938
	.quad	0x3fe4da2eb0f0c1f5              # double 0.65163359221156603
	.quad	0x3fd7a5b94818b3f6              # double 0.36948997536347805
	.quad	0x3fcbec9eee00f380              # double 0.21815859433436557
	.quad	0x3fcb23f688ba44d4              # double 0.21203500438836065
	.quad	0x3fed6a45492007c2              # double 0.91922249109506304
	.quad	0x3fe5e67fcbb5453a              # double 0.68438710962997296
	.quad	0x3fe6c2b26132fe2c              # double 0.71126669868676151
	.quad	0x3fd2dd39a8a09a2c              # double 0.29475251643671885
	.quad	0x3feec17e8654bf87              # double 0.96111990200550756
	.quad	0x3fe42541c642f420              # double 0.6295479652686744
	.quad	0x3fcf72122b891074              # double 0.24566866994621572
	.quad	0x3fe30a6c9338a4be              # double 0.59502247575905876
	.quad	0x3fab209612ca1300              # double 0.052982988160726663
	.quad	0x3fd576609477cf78              # double 0.33535017489270258
	.quad	0x3fe52a2bc2ead71c              # double 0.66139782018464954
	.quad	0x3feededff94b3ae6              # double 0.96470640840729227
	.quad	0x3fdabd353b83dd84              # double 0.41779833614369744
	.quad	0x3fe07b669772fe96              # double 0.51506356792374919
	.quad	0x3fd114618fd7bf5c              # double 0.26686896369118585
	.quad	0x3fdb5e825c549860              # double 0.42764338509221567
	.quad	0x3fe3e2ea4a36af65              # double 0.6214496087536473
	.quad	0x3fd7c908d128b01a              # double 0.37164516854932261
	.quad	0x3fd581603a82c58c              # double 0.33602147783229763
	.quad	0x3fe3f247e4c4101b              # double 0.62332529717287188
	.quad	0x3fc3d0c44f1a7140              # double 0.15480855810609206
	.quad	0x3fcb9f49a347f860              # double 0.2157985732337151
	.quad	0x3fd00d8a5e767734              # double 0.25082644677046351
	.quad	0x3fc9c1c590d385dc              # double 0.20122594424814977
	.quad	0x3fe5883d515c3fc1              # double 0.67288080111210757
	.quad	0x3fc85caa8c282e14              # double 0.19032794803239084
	.quad	0x3fc069f99c32e6dc              # double 0.12823410155197379
	.quad	0x3fdbbe9b971b4b16              # double 0.43350877529626197
	.quad	0x3fef46fe8b460374              # double 0.97741629793027451
	.quad	0x3fb9451d11ae9bc0              # double 0.098710839096937342
	.quad	0x3fb8a8d010d22a28              # double 0.096325878245047236
	.quad	0x3fcfb7f51bd2b660              # double 0.24780143602895333
	.quad	0x3fdd11b12cd97b3c              # double 0.45420483951413693
	.quad	0x3fbfdce5716a1a40              # double 0.12446435946376599
	.quad	0x3fcd16a978b5b7b0              # double 0.22725408929858082
	.quad	0x3fe3b52628ea032b              # double 0.61586292258298181
	.quad	0x3fea65c97ab23719              # double 0.82492517437069346
	.quad	0x3fdc676e17618e3e              # double 0.44381286891277572
	.quad	0x3fcda18106d71464              # double 0.23149121126167238
	.quad	0x3fd17f221889c7d4              # double 0.27338459392842407
	.quad	0x3fe2242a9af76833              # double 0.56691484705812056
	.quad	0x3fddd84f2dda263a              # double 0.46632747152088749
	.quad	0x3fed456a68ba073d              # double 0.91472359136989889
	.quad	0x3fc7566850ee7dc0              # double 0.18232444717157925
	.quad	0x3fedcfeb17072f42              # double 0.93163065431279102
	.quad	0x3fd99a3d8112d1aa              # double 0.40003907780490044
	.quad	0x3fddd6387398166e              # double 0.46619998253331729
	.quad	0x3fdf18be09ddbed8              # double 0.48588515246863784
	.quad	0x3fe818fee2997ec9              # double 0.75305122621281229
	.quad	0x3fedfe737b321da6              # double 0.93731092511818725
	.quad	0x3fb7ab8c2f60f980              # double 0.092461358611194199
	.quad	0x3fbf58ada8c4fd68              # double 0.12244687433575552
	.quad	0x3fd5cc7fc6785d90              # double 0.34060663587430273
	.quad	0x3fddbf5008346c2c              # double 0.46480179597137083
	.quad	0x3fc7e97723221588              # double 0.18681229796872523
	.quad	0x3fed511bcf24e7ec              # double 0.91615095575184346
	.quad	0x3fd5ad0a1ff2f5f4              # double 0.3386864959719269
	.quad	0x3fdc753cf79c469e              # double 0.44465564900120025
	.quad	0x3fe468c1ab0f3d2d              # double 0.63778766069473181
	.quad	0x3fee7ec825d134a5              # double 0.95297629724668254
	.quad	0x3fefee98c972e878              # double 0.99787558885078819
	.quad	0x3fe43e725744d720              # double 0.63262288136204248
	.quad	0x3fe6bc869b8efb2f              # double 0.7105134046795224
	.quad	0x3fd851337dd54772              # double 0.37995612419501079
	.quad	0x3fe53a666b5e0170              # double 0.66337891550214856
	.quad	0x3fdcb0d32727334a              # double 0.44829253028438087
	.quad	0x3fe92df77b090b24              # double 0.78686117201172978
	.quad	0x3f7a4ba8440b8100              # double 0.0064198086626847672
	.quad	0x3fd1ddfa48ce836c              # double 0.27917344198254201
	.quad	0x3fec77a3a0502198              # double 0.88960439025054239
	.quad	0x3fe8dd5a1fb7f08a              # double 0.77702051348707468
	.quad	0x3fef83f033fb1bf2              # double 0.98485574867743098
	.quad	0x3fe44ccf5272c82d              # double 0.63437620261379879
	.quad	0x3fe851e70248b773              # double 0.75999784895041811
	.quad	0x3fa1bd61beb64880              # double 0.034647993593481807
	.quad	0x3f9e76559e1fc580              # double 0.029748285080079651
	.quad	0x3fe33fa1f0826d72              # double 0.60151764845379163
	.quad	0x3fb82ebaf6bd8180              # double 0.094463048209496136
	.quad	0x3fe3daf92fa4d381              # double 0.62048014932098294
	.quad	0x3fe5b6a10fc2d06d              # double 0.67854359701460754
	.quad	0x3feb1dc229b8421f              # double 0.847382623180298
	.quad	0x3feeff606b1fbcbe              # double 0.96867390558863753
	.quad	0x3fed99790596630a              # double 0.92498446551607683
	.quad	0x3feec5e2c9865761              # double 0.96165599212939067
	.quad	0x3fbc48ae8abf7c60              # double 0.1104840363254751
	.quad	0x3fd95058f710c2e6              # double 0.3955290234326142
	.quad	0x3feee5d261e71cdd              # double 0.96555441972386868
	.quad	0x3fbfd6dff2f69c18              # double 0.12437247926446593
	.quad	0x3fd8e150141d8cc8              # double 0.38875200237653162
	.quad	0x3fe99c1d3a8d58ac              # double 0.80030690608943677
	.quad	0x3fe2d1605c47a70e              # double 0.5880586435643822
	.quad	0x3f83165e33c61bc0              # double 0.0093200072813156564
	.quad	0x3fec8b0346aaba58              # double 0.89196933557634406
	.quad	0x3fd3878e3ff94cd4              # double 0.30514866111225314
	.quad	0x3fe4154cbf5a411a              # double 0.62760007260843342
	.quad	0x3fed72ca897b44f8              # double 0.92026259281024547
	.quad	0x3fd7c1edd86ef3d6              # double 0.37121149192881597
	.quad	0x3fbd61b1c4121308              # double 0.11477194821243242
	.quad	0x3fe6622c1a98dd44              # double 0.69948392100096912
	.quad	0x3fe489dc739d70b6              # double 0.64182875233702563
	.quad	0x3fdeda179782396e              # double 0.48206128879328147
	.quad	0x3fede1a95cbde0fc              # double 0.93379657853714048
	.quad	0x3feb81be0eadb420              # double 0.85958769671345081
	.quad	0x3f9621fa635288e0              # double 0.021613991081388728
	.quad	0x3fec8b8c673caf27              # double 0.89203472293363439
	.quad	0x3fd74ebae9c75210              # double 0.36418030576649674
	.quad	0x3fd31bae7eda8842              # double 0.29856455219317379
	.quad	0x3fb311188a1f5888              # double 0.074479612084674796
	.quad	0x3feff7a91732a377              # double 0.99898199587651859
	.quad	0x3fdb360fb60157b2              # double 0.42517464422177931
	.quad	0x3fd35550dbfcadb2              # double 0.30208226664646098
	.quad	0x3fe89922b95900e3              # double 0.76869331551281694
	.quad	0x3fed93d2fbfcd4b8              # double 0.92429494110424226
	.quad	0x3fec63cbb2440777              # double 0.88718209092642908
	.quad	0x3f8aa55d83fbb340              # double 0.013010721769626366
	.quad	0x3f927b61d8827600              # double 0.018048790778825818
	.quad	0x3fdb4b627757b440              # double 0.426476112885954
	.quad	0x3fe02b05f0e26bb7              # double 0.50525185630555469
	.quad	0x3fd332a0825c80e8              # double 0.29996502619361687
	.quad	0x3fded5983cf54b58              # double 0.48178678467700342
	.quad	0x3fa216740a6b7ed0              # double 0.035327554962120922
	.quad	0x3fc9669da8be51cc              # double 0.19844408740449493
	.quad	0x3fd8319a0a10d27e              # double 0.37802744849185632
	.quad	0x3fe385a63c10ad2f              # double 0.61006461841080817
	.quad	0x3fb94da67a11c000              # double 0.098841099550327271
	.quad	0x3fd7d08595e4d6a2              # double 0.37210216177059341
	.quad	0x3fc58d53dd848c68              # double 0.16837547603890646
	.quad	0x3fd41e66c6ded8fe              # double 0.31435555859515307
	.quad	0x3fe251b63ff67cb5              # double 0.57247459881536733
	.quad	0x3fd90f4812465a82              # double 0.39155771050119637
	.quad	0x3fda06e36429f3f6              # double 0.40667042523983754
	.quad	0x3fc322360bf619d8              # double 0.14948154052781493
	.quad	0x3fad02a097d94580              # double 0.056660669838161759
	.quad	0x3fd09ee25658da56              # double 0.25969751770336325
	.quad	0x3fe592849f8d2e94              # double 0.67413550531769539
	.quad	0x3febebb5f903c9df              # double 0.87252329478934232
	.quad	0x3fc5ffb69ffd9530              # double 0.17186625301398228
	.quad	0x3fd859cf99f35e4a              # double 0.38048162492984672
	.quad	0x3fd36f1a737dc4a2              # double 0.30365620878644439
	.quad	0x3fdbc99962611a10              # double 0.43417963607171917
	.quad	0x3fd534589019c062              # double 0.33131994316409508
	.quad	0x3fc6e746b94b9698              # double 0.17893299148197594
	.quad	0x3feaf0a4cc32aaf1              # double 0.84187545664221208
	.quad	0x3fef48f2e30fb8d0              # double 0.97765488002712608
	.quad	0x3fba682e29735660              # double 0.10315216552711481
	.quad	0x3fde67791bcabd66              # double 0.47506549562509404
	.quad	0x3fed9f97cfff80e6              # double 0.92573156952496727
	.quad	0x3fe39af7447cb0c8              # double 0.61266673447018949
	.quad	0x3fd988c790102e82              # double 0.39897336071656053
	.quad	0x3fef93df4bb34c04              # double 0.98680081162672239
	.quad	0x3fa0412dbd3ceec0              # double 0.031747273779243468
	.quad	0x3fb1b1980ac88d50              # double 0.069116118080775779
	.quad	0x3fd0e3fa93fd6d96              # double 0.26391472293990981
	.quad	0x3fdf23ea3c2f235c              # double 0.48656707646710173
	.quad	0x3fd2e61424665660              # double 0.29529288820899602
	.quad	0x3feb12b402e940b1              # double 0.84603310173590363
	.quad	0x3fdf247bbfaec70c              # double 0.48660176962867818
	.quad	0x3fefc0d9183bedea              # double 0.99229101880285708
	.quad	0x3fe0f9ac83afea5f              # double 0.5304777690901793
	.quad	0x3fdf2ac832d4057e              # double 0.4869862076157786
	.quad	0x3fcfcea15d79cbfc              # double 0.24849335731741451
	.quad	0x3fe9b4fb4d3e9d8d              # double 0.80334248625597271
	.quad	0x3fe0889cee4a9a86              # double 0.51667639294903789
	.quad	0x3f8d6b4cefa4ea00              # double 0.014364815772400341
	.quad	0x3f939e7d3a983ce0              # double 0.01915927572377718
	.quad	0x3fe178646ec1da32              # double 0.54594632751724803
	.quad	0x3fd2cf58d2b3fa72              # double 0.29390545441120886
	.quad	0x3fd862da75676762              # double 0.38103352990366635
	.quad	0x3fdad99019c77e48              # double 0.41952898519045734
	.quad	0x3fdd96000e0f76fc              # double 0.4622802865322766
	.quad	0x3fc6cabb75a8f5e0              # double 0.17806189770810388
	.quad	0x3fd0ddda88c23964              # double 0.26354087214794775
	.quad	0x3feb8d41c04b1974              # double 0.86099326665207209
	.quad	0x3fdb87a49a242d40              # double 0.43015399029600943
	.quad	0x3fc48f35e4c2843c              # double 0.16062043828881822
	.quad	0x3fe84aa4602049f0              # double 0.75911158346781171
	.quad	0x3fcfbe61c6c53cd0              # double 0.24799749570454432
	.quad	0x3fa5b956d2254940              # double 0.042429650452179946
	.quad	0x3fdb8ded2644a4ce              # double 0.43053749787447948
	.quad	0x3fe98bc1b27c17cd              # double 0.79831013546276497
	.quad	0x3f68102b5c901300              # double 0.002937397661755603
	.quad	0x3fedbe7ec2e8c87d              # double 0.92950380390381293
	.quad	0x3fb0dcad8cf0b600              # double 0.065867278012511576
	.quad	0x3f9cd573c4bdf1a0              # double 0.028158005603005187
	.quad	0x3fe80639bd46658e              # double 0.75075995414515417
	.quad	0x3fd45dc1a2cb6f0a              # double 0.31822243593136135
	.quad	0x3fa62fc8f201bfb0              # double 0.043333320180749424
	.quad	0x3fd1408cbbc219fe              # double 0.26956480346453293
	.quad	0x3f82fb4ec3736e00              # double 0.0092683938404922727
	.quad	0x3fd8dface7b3bf56              # double 0.38865206362878746
	.quad	0x3fe1df94db64d20f              # double 0.55854266023976773
	.quad	0x3fd26dbfc233b212              # double 0.28794855084450532
	.quad	0x3fe3b2bd38ca77f9              # double 0.61556874362918201
	.quad	0x3fdacd50da8953c4              # double 0.41878148404549287
	.quad	0x3f89c077e4c2b000              # double 0.012574135464397784
	.quad	0x3fe84af7cd287567              # double 0.75915136403970684
	.quad	0x3fc2c3b4d4eafe38              # double 0.1465974845541369
	.quad	0x3fed0f05264135b0              # double 0.90808351012826982
	.quad	0x3feaae8fb82bb6dc              # double 0.83380876513339385
	.quad	0x3fe9df5c6334f549              # double 0.80851573349324568
	.quad	0x3fe4b422204dfd04              # double 0.64698892888546355
	.quad	0x3fb8c038b9cea830              # double 0.096683068621729928
	.quad	0x3feb8e9865cb5330              # double 0.86115665322959067
	.quad	0x3feeb67ff21f8f9e              # double 0.95977780618385444
	.quad	0x3fd2161a50c0fa38              # double 0.28259904752841036
	.quad	0x3fec64e43138b342              # double 0.88731584180423106
	.quad	0x3fb7c6d1dc5d8660              # double 0.092877498912935064
	.quad	0x3fe54308f0cf439f              # double 0.66443297417764657
	.quad	0x3fd50a24ca1ae970              # double 0.32874412285641252
	.quad	0x3fd85f8b6c465d52              # double 0.38083158086506785
	.quad	0x3fe368e96f0dc929              # double 0.60655662241177766
	.quad	0x3fa66fa18e1bce70              # double 0.043820427510493754
	.quad	0x3fe1787d7be4919e              # double 0.54595827291318577
	.quad	0x3fd4c58a2c8c2184              # double 0.32455686903315262
	.quad	0x3fb709bc4de7a240              # double 0.089992302913409539
	.quad	0x3fef9b3807efb375              # double 0.98769761610092976
	.quad	0x3fdd42a00ae27240              # double 0.4571914774221888
	.quad	0x3fac2ef9aadf7570              # double 0.055045892818934017
	.quad	0x3fec14d2afb7a64d              # double 0.87754186935235057
	.quad	0x3f9246dc14c88e80              # double 0.017848433273810915
	.quad	0x3fe00a91c055c562              # double 0.50129020276487446
	.quad	0x3fa2e49bfe820990              # double 0.036900400941720979
	.quad	0x3fe5c65a9dc0b819              # double 0.68046313105674294
	.quad	0x3fee3b02abab3cd3              # double 0.94470342187005441
	.quad	0x3fdeafd74909bdf8              # double 0.47948248036024621
	.quad	0x3fe9cce5a94791ce              # double 0.80626185476699574
	.quad	0x3f697c864a7adb00              # double 0.0031111357564798103
	.quad	0x3fd6b43cd6965a1c              # double 0.35475083308975441
	.quad	0x3feb41c11df2cfda              # double 0.85177665566743177
	.quad	0x3fed15fbf809550b              # double 0.90893362469310668
	.quad	0x3fbda63a283689e0              # double 0.11581767541660026
	.quad	0x3fedf05ebd4d44a7              # double 0.93559205029500425
	.quad	0x3fccf3b80e62f1ec              # double 0.22618771269289029
	.quad	0x3fe54cec87c247e9              # double 0.66564013019001067
	.quad	0x3fd0af99c2a48b10              # double 0.26071781166153674
	.quad	0x3fe4913b55906c30              # double 0.64272848808048444
	.quad	0x3fee6ac7125b0955              # double 0.95053437790947248
	.quad	0x3fd415dc8f0a399c              # double 0.31383432358497898
	.quad	0x3fe836a356d48c48              # double 0.75666968306575999
	.quad	0x3fd30208fffe8f26              # double 0.29699921607447022
	.quad	0x3fe8ab28853624e6              # double 0.7708933450495834
	.quad	0x3fb73dc935ce35a8              # double 0.090786529193983001
	.quad	0x3fcd9f50c4692444              # double 0.23142442312590294
	.quad	0x3fe52e6cb7782ddd              # double 0.66191707452656667
	.quad	0x3fd1a1ef9f79ab50              # double 0.27550879071957457
	.quad	0x3fd4882ca3ccd8fa              # double 0.32081142421829123
	.quad	0x3fe28724ca41017e              # double 0.57899703505249511
	.quad	0x3fe38975d7b37bb1              # double 0.61052982453462878
	.quad	0x3fba737ce427e140              # double 0.10332470483979694
	.quad	0x3fd3b8e448709154              # double 0.30815989565077939
	.quad	0x3fd4eb9b3c42b5f6              # double 0.32688027272055764
	.quad	0x3fd12cc21c36268c              # double 0.26835682635337643
	.quad	0x3fe6c1fa67c2f02d              # double 0.71117897287286314
	.quad	0x3fd11a21a67adf42              # double 0.26721993692216384
	.quad	0x3fd412be6a7d63f4              # double 0.31364403151888998
	.quad	0x3fe20c758a3302f9              # double 0.56402089111369869
	.quad	0x3fea7ed59e26a8f4              # double 0.82798272026891917
	.quad	0x3fe2f86506c15190              # double 0.59282161063542738
	.quad	0x3feb9403f90a9b65              # double 0.86181830063729292
	.quad	0x3fc10171e4ef6950              # double 0.1328565948341045
	.quad	0x3fec4edd8fb0a15a              # double 0.88462713303037366
	.quad	0x3fe069641451a3bc              # double 0.51286510437522947
	.quad	0x3fef1ff34ee16ef4              # double 0.97265019804350894
	.quad	0x3fe2900b9ea5ac34              # double 0.58008366571210113
	.quad	0x3fd8ab857c0649c8              # double 0.38546883689664613
	.quad	0x3fd225a92acfb8c8              # double 0.28354863339235381
	.quad	0x3fe0bb52c243fccc              # double 0.52286661093230569
	.quad	0x3fd11b9e4e7fd680              # double 0.2673106924624804
	.quad	0x3fd7fc69a11c660a              # double 0.37478104337205365
	.quad	0x3fc4f0409f16283c              # double 0.16358192222497958
	.quad	0x3fded225bbb33680              # double 0.48157637910922091
	.quad	0x3fd86f8521b36080              # double 0.38180664340098502
	.quad	0x3fa0ee0809bce6b0              # double 0.033066035450656783
	.quad	0x3fbee0285fdbf998              # double 0.12060787525476824
	.quad	0x3fe64640017612d5              # double 0.69607544217486839
	.quad	0x3fe929ceb258d40c              # double 0.78635344346423741
	.quad	0x3fe075484fe774ff              # double 0.51431670767092885
	.quad	0x3fda55ed255a9ce8              # double 0.4114945282730802
	.quad	0x3fbf138512d37c90              # double 0.12139159879324013
	.quad	0x3fef7aabb9a8bdba              # double 0.98372446309615857
	.quad	0x3fcae9735a41c388              # double 0.21024934680056284
	.quad	0x3fe5d7fe23c923c0              # double 0.68261630048174737
	.quad	0x3fe2482d420b2b5b              # double 0.57131064318796676
	.quad	0x3fe11ea83b078d79              # double 0.53499232796859453
	.quad	0x3fe354eafb2bf0d3              # double 0.6041159539886628
	.quad	0x3fe9c3f570cec6a3              # double 0.80517074616200934
	.quad	0x3fe04744f613d8ff              # double 0.50869987546937512
	.quad	0x3fd5219879d10dd8              # double 0.33017551323083927
	.quad	0x3feceb6b84b7dc62              # double 0.90373779222035133
	.quad	0x3fe7f16dc5f5110d              # double 0.74822128928693277
	.quad	0x3fe4708be4c7d1c1              # double 0.63873858150196139
	.quad	0x3fec78f7a3e65037              # double 0.88976652156498559
	.quad	0x3fec9fa54b5b91f8              # double 0.89448799818325053
	.quad	0x3fd937e4dbe7cbb0              # double 0.39403649783269667
	.quad	0x3fe77f4bf792af51              # double 0.7342891536149897
	.quad	0x3fe6e82f343e3cd7              # double 0.71584282115682185
	.quad	0x3fe8999be1abcb25              # double 0.76875108791714253
	.quad	0x3f76658cb37b4f80              # double 0.0054679390084010349
	.quad	0x3fe8d32bc2eb3f17              # double 0.77577770300010485
	.quad	0x3fd8962c9dd951d0              # double 0.38416591086322871
	.quad	0x3feb5b569eae4a5b              # double 0.85489970199916898
	.quad	0x3fef3b442f86df15              # double 0.97598466188989851
	.quad	0x3fd44c65715763bc              # double 0.31716285770886166
	.quad	0x3fcd2454d0ae68c0              # double 0.22767124356761848
	.quad	0x3fe50afeb2a0fe3d              # double 0.65759215248539926
	.quad	0x3fe15427baecf47f              # double 0.54152285107524267
	.quad	0x3fef222715ac5b5c              # double 0.97291902764377935
	.quad	0x3fec0bc783b6258b              # double 0.87643790936378829
	.quad	0x3fb10955f4799bf0              # double 0.06654870241764832
	.quad	0x3fd4475057099f42              # double 0.31685265064014712
	.quad	0x3fe8dd5722af4fa6              # double 0.77701908850075507
	.quad	0x3fcd7a0c71ba6978              # double 0.2302871280015315
	.quad	0x3fd79cebc0318c58              # double 0.36895269173527856
	.quad	0x3fc81babfe2bdfb8              # double 0.18834447775566132
	.quad	0x3fe92a0d6ff06d09              # double 0.786383360510997
	.quad	0x3fdfd08e7e0dba60              # double 0.4971042853348191
	.quad	0x3f98470e52d37040              # double 0.023708556943219827
	.quad	0x3fe764157bd1202d              # double 0.73096727545726525
	.quad	0x3fc280d013caa930              # double 0.14455605474842903
	.quad	0x3fe5cce86b2507fe              # double 0.68126316954317168
	.quad	0x3fe6f21934df130c              # double 0.71705303503458273
	.quad	0x3febae39fded0f8c              # double 0.86501788706708415
	.quad	0x3fdd022c8c97426c              # double 0.45325769166541963
	.quad	0x3fbc0a9dcc60c068              # double 0.1095369934053011
	.quad	0x3fe6783088ba2649              # double 0.70217158035775029
	.quad	0x3fe70f450f95428a              # double 0.72061398547710209
	.quad	0x3fe49f5fe5cde801              # double 0.64445490726143373
	.quad	0x3fd25cef7f81f3d8              # double 0.28692233516613674
	.quad	0x3fd3f24f9785494c              # double 0.31166448399485058
	.quad	0x3fedde9e8937bba0              # double 0.93342520523389183
	.quad	0x3febcf4b4b828e3a              # double 0.86905445812266824
	.quad	0x3fbe4220f323e240              # double 0.11819654403724034
	.quad	0x3fc6937d9335f240              # double 0.17637605369590581
	.quad	0x3fdeb3dd71f8d98c              # double 0.47972808961949265
	.quad	0x3fb3fb5e654eda60              # double 0.078054332478907806
	.quad	0x3fd18d3f8c72f2c4              # double 0.27424610820507334
	.quad	0x3fe9f6ede0770fbc              # double 0.81139272538029372
	.quad	0x3fe39a1dab04b33b              # double 0.61256297494910628
	.quad	0x3faf4a1e9dce2c70              # double 0.061112362635946549
	.quad	0x3fc387e35311a3d8              # double 0.15258447223757687
	.quad	0x3feebfca7856eb36              # double 0.96091197494329239
	.quad	0x3feea84dbdeb92df              # double 0.95804488271513921
	.quad	0x3fe7f0ed5fe17e92              # double 0.74816006399847113
	.quad	0x3feb900b234c5cb4              # double 0.86133343595692801
	.quad	0x3fee5ed3dee996c3              # double 0.94907563722218702
	.quad	0x3fe0d72b8810d476              # double 0.52626587462749685
	.quad	0x3fe3861e9868e4ec              # double 0.61012201087501472
	.quad	0x3fd25b96c96126b2              # double 0.28684014955488657
	.quad	0x3fca5a7eaebe0e64              # double 0.20588668377250763
	.quad	0x3fe2e13ed089766b              # double 0.58999577264667147
	.quad	0x3fef1ceaaae512c5              # double 0.97227986696142265
	.quad	0x3fd585e961e6d342              # double 0.33629831848820768
	.quad	0x3fd14f97d3f33990              # double 0.27048297594310444
	.quad	0x3fe4dd46e5adb569              # double 0.65201134547321005
	.quad	0x3fea5a9c2ad107b0              # double 0.82356079447366959
	.quad	0x3fbfd42224902ff0              # double 0.12433064835221308
	.quad	0x3fe96eabe9945182              # double 0.79475970860453082
	.quad	0x3fdae1052656b0b6              # double 0.41998413795478073
	.quad	0x3fd622e49a0fed48              # double 0.3458796982301533
	.quad	0x3fee0ace74b8e5ca              # double 0.93881914899173435
	.quad	0x3fedfd3a3c232609              # double 0.93716155763212428
	.quad	0x3fee1f1375b9f356              # double 0.9412934588759565
	.quad	0x3fe225bac3af8c05              # double 0.56710565776700206
	.quad	0x3feac9858fe4f20c              # double 0.83709982017859507
	.quad	0x3fb116059956d898              # double 0.066742277084673396
	.quad	0x3fcd96e0e22ec1cc              # double 0.23116694492411083
	.quad	0x3f77f6499be66680              # double 0.0058501124716713315
	.quad	0x3fd52b16fe631d8e              # double 0.33075499384400409
	.quad	0x3fdebd6be28efd38              # double 0.48031136631830718
	.quad	0x3fa857197a3a3570              # double 0.047539516611417976
	.quad	0x3fe5a6a72188123f              # double 0.67659336613775867
	.quad	0x3fc1d60b0a7c7c80              # double 0.13934457790398724
	.quad	0x3fcb7128c35782a0              # double 0.21439084566283828
	.quad	0x3fd3336ab71302e2              # double 0.30001323583932848
	.quad	0x3feb39b24cfd8ff5              # double 0.85079302823260028
	.quad	0x3fef554b10635199              # double 0.97916176987432657
	.quad	0x3fc8daefc14a20d0              # double 0.19418141305891945
	.quad	0x3fb1983b44125018              # double 0.068729118460680971
	.quad	0x3fc35ee8d27d02e0              # double 0.15133390691519022
	.quad	0x3fc10a1d0b2fb7fc              # double 0.13312113805972092
	.quad	0x3fb4a6869f6aed38              # double 0.080665983124096452
	.quad	0x3fe734d6946992de              # double 0.72519997584148732
	.quad	0x3fd1b79c27add5e6              # double 0.27683166384608027
	.quad	0x3fe2ccece859f5c3              # double 0.58751531010755575
	.quad	0x3fef3d1b01552ed7              # double 0.97620916614820429
	.quad	0x3fc7a8ed8b546be8              # double 0.1848427706071043
	.quad	0x3fd80fff5c697e3c              # double 0.37597641014687944
	.quad	0x3fec4580ac80a476              # double 0.8834842080297125
	.quad	0x3fe96f067a4b0c14              # double 0.79480289349919752
	.quad	0x3fe04b32d8685e1e              # double 0.50917951838613695
	.quad	0x3fd75817a37a7ca0              # double 0.36475172962850344
	.quad	0x3fdc83793817a74c              # double 0.44552450635693641
	.quad	0x3fdaf829026c371a              # double 0.42139649616807306
	.quad	0x3fd544fff740da60              # double 0.33233641763528077
	.quad	0x3fd0157a50d48e46              # double 0.25131090062697969
	.quad	0x3fda0c73ea5565c8              # double 0.40701005825175374
	.quad	0x3fb018c4033c8530              # double 0.062877894201410767
	.quad	0x3feb6fb15d2d83d1              # double 0.85738437842166537
	.quad	0x3fe682c0dc081fd4              # double 0.7034611032004201
	.quad	0x3fcb4ebfd30968bc              # double 0.21334073833970091
	.quad	0x3fee8e3155b3807b              # double 0.95485750902663769
	.quad	0x3f73ec0317bf0a00              # double 0.0048637505350961341
	.quad	0x3fbc4a8eb2818aa8              # double 0.1105126558118551
	.quad	0x3fc77e66f167ffe0              # double 0.18354498660482843
	.quad	0x3fe7e7a5378d5b53              # double 0.74702702379259234
	.quad	0x3fe40c133664199f              # double 0.62647400496716787
	.quad	0x3fcc3f6251cbb970              # double 0.22068432802138771
	.quad	0x3fefdff1d43be2af              # double 0.99608699275912282
	.quad	0x3fd7aea2b8795ae2              # double 0.37003391280215514
	.quad	0x3fb4a76bbe309490              # double 0.080679639752434306
	.quad	0x3fd2706977f2afb0              # double 0.28811108316107958
	.quad	0x3feea1d6714e0e3c              # double 0.95725557451118659
	.quad	0x3fb4dee69aa81360              # double 0.081526196248956406
	.quad	0x3fd588778e77087a              # double 0.33645428574175862
	.quad	0x3f8cb72d197c5e00              # double 0.014021255817666223
	.quad	0x3fef0dd7447b0d5e              # double 0.97043956160670652
	.quad	0x3fedc20c48b6647a              # double 0.92993749810842918
	.quad	0x3fd4c06d15930a78              # double 0.32424475771782779
	.quad	0x3fd2bd0a5859f536              # double 0.29278811100069235
	.quad	0x3febfd2bf524402a              # double 0.87465474967212242
	.quad	0x3fd251677264644e              # double 0.28621851130589426
	.quad	0x3fb2252f0125a4f0              # double 0.070879876880684867
	.quad	0x3fc02a2594b821c0              # double 0.12628621827776776
	.quad	0x3fdfd4223eddc920              # double 0.49732261790554055
	.quad	0x3fea35db460db680              # double 0.81907428438508134
	.quad	0x3f9fabe3b65d57c0              # double 0.030929143911030854
	.quad	0x3fd734b0138aad72              # double 0.36259080799455667
	.quad	0x3fd6f1151e820280              # double 0.35846450785906114
	.quad	0x3fd0be45616a3c5e              # double 0.26161322129423137
	.quad	0x3fcd3529a1481e24              # double 0.22818489432414524
	.quad	0x3fd1f6d6b3aebade              # double 0.28069083735583245
	.quad	0x3fd1ee55373291c0              # double 0.28017168417343541
	.quad	0x3fdaa1b1acb1ad54              # double 0.4161190210786192
	.quad	0x3feda6f3b138ffac              # double 0.92662987340735503
	.quad	0x3feda8744e380936              # double 0.92681327130438862
	.quad	0x3fc97ab28d955908              # double 0.19905692971469358
	.quad	0x3fcbb73fa2f9901c              # double 0.21652980287319756
	.quad	0x3feea57b7616ee8a              # double 0.95770047249193735
	.quad	0x3fe40cc2076fbd18              # double 0.62655736401021311
	.quad	0x3fe93731201f6523              # double 0.78798729204132589
	.quad	0x3fe63f68a99ad6a9              # double 0.69524033666558183
	.quad	0x3fecca03dd2102c0              # double 0.89966004552123735
	.quad	0x3fb0915b705e5730              # double 0.064717974599571404
	.quad	0x3feff59aa9cc1a12              # double 0.99873097575692982
	.quad	0x3fd6fbeb0cadc4d8              # double 0.35912586439287741
	.quad	0x3febbbcc790c7e5b              # double 0.86667464868873922
	.quad	0x3fd5edd78832351e              # double 0.34264171886828076
	.quad	0x3fea81362238893b              # double 0.82827288326033199
	.quad	0x3fe01dab40a86d69              # double 0.50362169865131279
	.quad	0x3fe9ddd2dc6f02f9              # double 0.80832808545537127
	.quad	0x3fd9a1cb87e607d8              # double 0.40050018569320178
	.quad	0x3fedc5da930e07ec              # double 0.93040207597391377
	.quad	0x3fb9547cbb32edf8              # double 0.098945422842852682
	.quad	0x3fe874cff84e695f              # double 0.76425932404826458
	.quad	0x3fa32e3bb8ebfe10              # double 0.037462107013194523
	.quad	0x3fed252a2b0d6a61              # double 0.91078670891449687
	.quad	0x3fb69d628815ea58              # double 0.08833900282289997
	.quad	0x3fbda21be8ee4e38              # double 0.11575483738698089
	.quad	0x3fd9439159f1cfea              # double 0.3947490099301364
	.quad	0x3fd1436cd95a1fd0              # double 0.26974030710016184
	.quad	0x3fc5d21d3f21abe4              # double 0.17047467787355608
	.quad	0x3fe830ee115d9d38              # double 0.75597289458975236
	.quad	0x3fdefab62d7307fc              # double 0.48405222357189337
	.quad	0x3fe4cc192c4a8eee              # double 0.64991434717782481
	.quad	0x3fd518f358ee81e6              # double 0.32964786228879317
	.quad	0x3fec0aedfdeebdb1              # double 0.87633418651778616
	.quad	0x3fe29ea7573a07bc              # double 0.58186690365277327
	.quad	0x3fef46287fc50ad6              # double 0.9773142333509337
	.quad	0x3fe296d26559986b              # double 0.58091087145727494
	.quad	0x3fcb543d98c7964c              # double 0.21350831947272508
	.quad	0x3fb7cc978c25fea8              # double 0.09296557590095722
	.quad	0x3fef64f9eeec29e7              # double 0.98107620873025502
	.quad	0x3fe5e03ffa5b903d              # double 0.68362425706846575
	.quad	0x3fd186b402eb6a90              # double 0.27384662900082279
	.quad	0x3fe3f78a20ef8a44              # double 0.62396723206286042
	.quad	0x3fd3cc461e4d809c              # double 0.30934288939716637
	.quad	0x3fd9237b058ace8e              # double 0.39279056111556876
	.quad	0x3fed125f4198fc57              # double 0.90849268734008148
	.quad	0x3fec3fb9e388700e              # double 0.88277906837493147
	.quad	0x3feb9e47068dedb0              # double 0.86307097702176883
	.quad	0x3fc932c774ba61e8              # double 0.19686215591060763
	.quad	0x3fc064ac67a96804              # double 0.12807231008156361
	.quad	0x3fe8f7bf7c06836b              # double 0.78024267410010617
	.quad	0x3fdac85a23fe128c              # double 0.41847852244271944
	.quad	0x3fe423c445a4c4e1              # double 0.62936605074187579
	.quad	0x3fc7792d8f21be48              # double 0.18338555802209755
	.quad	0x3feb83a43ad16624              # double 0.85981952178844212
	.quad	0x3f5822a9bc715200              # double 0.0014731080607549574
	.quad	0x3fee6dbf058c223b              # double 0.9508967502925495
	.quad	0x3fedc20f8b5a7a86              # double 0.9299390527483673
	.quad	0x3fdf1f33bfd2a0f8              # double 0.48627942784015898
	.quad	0x3fb6c29fe3553c58              # double 0.08890723514672183
	.quad	0x3fe4214bf7fd5acb              # double 0.62906454501611486
	.quad	0x3fd6d2c1086a0362              # double 0.35661340543452102
	.quad	0x3f99241bf95e4840              # double 0.024551808448059598
	.quad	0x3fe8bfff94e40c70              # double 0.77343730049359571
	.quad	0x3fe83834e8c193de              # double 0.75686116657436364
	.quad	0x3fea357a4bc6f892              # double 0.81902804184189137
	.quad	0x3fcde178148b76ec              # double 0.23344326975978136
	.quad	0x3fea8a1761e513ac              # double 0.82935685272297154
	.quad	0x3fe685aff989f095              # double 0.70381926286747165
	.quad	0x3fdd7ee4ae47e7ca              # double 0.46086995143525356
	.quad	0x3fe0c30264a78d0d              # double 0.52380485209542516
	.quad	0x3f7c8dc2d056db00              # double 0.0069711313166667122
	.quad	0x3fe663a8c68fd453              # double 0.69966543943031423
	.quad	0x3fea2984c24bb510              # double 0.81756818722138469
	.quad	0x3fe9c8b8e4f2dcfe              # double 0.80575222698726612
	.quad	0x3fdc97effcab13c4              # double 0.44677352594981934
	.quad	0x3fc2b9198129740c              # double 0.14627379233107296
	.quad	0x3fd1e5069a82f024              # double 0.27960362519275095
	.quad	0x3fe650f7924828a3              # double 0.69738367624929187
	.quad	0x3fd56881fed0b24c              # double 0.3345036495618714
	.quad	0x3fdd074dd984b304              # double 0.45357080690409668
	.quad	0x3fd62841615708fa              # double 0.34620699411256306
	.quad	0x3fcda4d9789f5eb0              # double 0.23159330739757911
	.quad	0x3fce264591f30e74              # double 0.23554296137273278
	.quad	0x3fd5d45d6e7397e0              # double 0.34108672891886549
	.quad	0x3fdeb48d686fe5ba              # double 0.47977004240928134
	.quad	0x3fc8a754a0f27e50              # double 0.19260652407409617
	.quad	0x3fea2a77a9be05af              # double 0.81768401291644988
	.quad	0x3fcd9f8cf5377320              # double 0.23143159841028993
	.quad	0x3feaaee937abbd77              # double 0.8338514411279182
	.quad	0x3fd279a314146d30              # double 0.28867413483540627
	.quad	0x3fcae641f6d9e044              # double 0.21015190652156168
	.quad	0x3fe26d68b4715ebc              # double 0.57585559122795571
	.quad	0x3fcc533939d8e8c8              # double 0.22128978085112849
	.quad	0x3fe4ecf14804d9d7              # double 0.65392364565087291
	.quad	0x3fe6fa9f294ea71d              # double 0.71809347217387975
	.quad	0x3fdb80f73d994494              # double 0.42974644675730045
	.quad	0x3fe4a8d9faebc546              # double 0.64561175354007427
	.quad	0x3fe828de118f9a79              # double 0.75498870305894095
	.quad	0x3fcb15a6ca87ab2c              # double 0.21159825219305028
	.quad	0x3fe8e6d36d4c979a              # double 0.77817698810098368
	.quad	0x3fea3d1d89aade4d              # double 0.8199603737657043
	.quad	0x3fe038ef6f5b090e              # double 0.5069501089967916
	.quad	0x3feb29ce10f7fea5              # double 0.8488531428738112
	.quad	0x3fde6f65cc940960              # double 0.47554917314859857
	.quad	0x3fe75c90538ba7d2              # double 0.73004928891645648
	.quad	0x3fe76100e38834f9              # double 0.73059124412398468
	.quad	0x3fe5a2e89626249b              # double 0.67613629652000229
	.quad	0x3fd7d0732450565c              # double 0.37209776445647491
	.quad	0x3fe38c7a6abac505              # double 0.61089821668261435
	.quad	0x3fa6a0405832bcc0              # double 0.044191370741253788
	.quad	0x3fd1d8ca24c5fe78              # double 0.27885678855088925
	.quad	0x3fec809615ebfc04              # double 0.89069656640629135
	.quad	0x3fef9ca70098928e              # double 0.98787260166553081
	.quad	0x3fe0ec8a8ebb8713              # double 0.52887466313788634
	.quad	0x3fec86bec33cf674              # double 0.89144838459442476
	.quad	0x3fb6866e5d7227b0              # double 0.087988756002373547
	.quad	0x3fd1851a943c7fb8              # double 0.2737490127201414
	.quad	0x3fe27b7813151f5c              # double 0.57757190444042861
	.quad	0x3feba503136404f4              # double 0.86389306819196898
	.quad	0x3fe2bbe08c29b198              # double 0.58543422103462017
	.quad	0x3feccecedac9764d              # double 0.90024512035206217
	.quad	0x3fc720e7f769430c              # double 0.18069171505569448
	.quad	0x3fdb2d42682a2fe6              # double 0.42463741466849425
	.quad	0x3feb8baa72854995              # double 0.86079904906573523
	.quad	0x3fd5202f13cdbb8c              # double 0.33008934911679755
	.quad	0x3fe3e4830222f83e              # double 0.62164450089745293
	.quad	0x3fec6aea0492684f              # double 0.88805104153585457
	.quad	0x3fc26f63bcf6aa68              # double 0.14402434088454474
	.quad	0x3feb8e7bc6c7c12a              # double 0.86114300560260415
	.quad	0x3febaeb881f7aec9              # double 0.86507821449546285
	.quad	0x3fd5b0fd31b01f62              # double 0.3389275536760491
	.quad	0x3fc06f43894c1104              # double 0.12839550212823536
	.quad	0x3fe54e9688268d1a              # double 0.6658432635489675
	.quad	0x3fe14966bb50e2ac              # double 0.54021011910579864
	.quad	0x3fe59a0dd4200294              # double 0.6750554221217322
	.quad	0x3fe9dd119fdaa5c6              # double 0.80823594304563851
	.quad	0x3fc0f6b8f1479ba4              # double 0.13252937108265173
	.quad	0x3fd25c92100c5f48              # double 0.2869000584337198
	.quad	0x3fd644b909b397b2              # double 0.34794450709739089
	.quad	0x3fc0a154f1b7c180              # double 0.12992345621706747
	.quad	0x3fd522d911c50962              # double 0.33025194869346397
	.quad	0x3fd9c370b2ab7742              # double 0.40255372474881679
	.quad	0x3feea8708d85baa5              # double 0.95806148186769191
	.quad	0x3fe4d9983372ae33              # double 0.65156183288985969
	.quad	0x3fe72bb67a76d4b7              # double 0.72408603590760989
	.quad	0x3fd91ff27da9ad98              # double 0.39257490417249974
	.quad	0x3fd4c625c473a4ea              # double 0.32459396538486252
	.quad	0x3fd1e2cf4eb51aee              # double 0.2794683712603917
	.quad	0x3fd91d22940f995e              # double 0.39240326365542966
	.quad	0x3feca1bc046e153a              # double 0.89474297394978142
	.quad	0x3fd3fab9e1ed0e56              # double 0.31217810690961778
	.quad	0x3fa1d4b5a4cf6690              # double 0.034825970047404842
	.quad	0x3fe4f8bfe550b00d              # double 0.65536494053003624
	.quad	0x3fe1b19510715657              # double 0.55292752467603179
	.quad	0x3fdd674ce77afc40              # double 0.45942995648869456
	.quad	0x3feb17f7020b6c76              # double 0.84667539977398465
	.quad	0x3fd051dbb5ac4862              # double 0.25499623052122022
	.quad	0x3fe17c0f69fce01a              # double 0.54639406872502438
	.quad	0x3fe19613acd520ac              # double 0.54956992870667909
	.quad	0x3fce7ec09c927f80              # double 0.23824317593698296
	.quad	0x3fe148a10942e717              # double 0.54011585053305822
	.quad	0x3fe964ef2c467e65              # double 0.79357107780010649
	.quad	0x3feade83aae0e800              # double 0.83966239332880832
	.quad	0x3f953042a6ee46e0              # double 0.02069191116203839
	.quad	0x3fedaef4530729c0              # double 0.92760673729326725
	.quad	0x3fec35209a153179              # double 0.88148527235311669
	.quad	0x3fb50246fcb3e208              # double 0.082065998740184054
	.quad	0x3fd28592d444b548              # double 0.28940268258414337
	.quad	0x3fe1ae45cfec6596              # double 0.55252352342647515
	.quad	0x3fae46a4a26a0bb0              # double 0.059132714105565198
	.quad	0x3fc45b9b071523cc              # double 0.15904558034733751
	.quad	0x3fd664ab95e05b22              # double 0.34989442478529231
	.quad	0x3faf9e26160d8a20              # double 0.061753454391482387
	.quad	0x3fd109bbf1b32bc8              # double 0.26621912578110285
	.quad	0x3fe7f824e9a0518d              # double 0.74904103880048611
	.quad	0x3fd0a397316380f6              # double 0.25998477767099304
	.quad	0x3fd585d9f5b16caa              # double 0.33629464143241228
	.quad	0x3fe9560db49f2699              # double 0.79175458219215777
	.quad	0x3fd3917977bc823a              # double 0.30575405781749831
	.quad	0x3fed69588892f0e6              # double 0.91910959887129873
	.quad	0x3fc9bab3e1176278              # double 0.20101021281040565
	.quad	0x3fd7941511492a76              # double 0.36841322601382076
	.quad	0x3fe619ca3996a215              # double 0.69064818618523083
	.quad	0x3fec5ae0475937ae              # double 0.88609327254538583
	.quad	0x3fe40e6f735ae305              # double 0.62676212816504118
	.quad	0x3f9ceb5e19591e80              # double 0.028241606042028966
	.quad	0x3fe041709e79df1e              # double 0.50798827125888457
	.quad	0x3fe6df5dfc413ae3              # double 0.7147664954044014
	.quad	0x3fee605114f10e37              # double 0.94925741281662723
	.quad	0x3feaaba33a12dc41              # double 0.83345185606493299
	.quad	0x3fdd9b454a93eac8              # double 0.46260196955669786
	.quad	0x3fefd965e3726401              # double 0.99528784201822884
	.quad	0x3fe387be83cfa9de              # double 0.61032033676502428
	.quad	0x3fd026d290029eca              # double 0.25236953795909456
	.quad	0x3fbab895323f7128              # double 0.10437900997880389
	.quad	0x3feef5bc29e0d9a0              # double 0.96749694995269308
	.quad	0x3fdcd377a8e969fa              # double 0.4504069470910107
	.quad	0x3fed636de712413e              # double 0.91838736659159514
	.quad	0x3fe221c4c81cf0db              # double 0.56662215313511
	.quad	0x3fd2e6e1ed3fcaa6              # double 0.29534195107332051
	.quad	0x3fd9bdf0ad4a4810              # double 0.40221802637927428
	.quad	0x3fcb2a2d3c7a931c              # double 0.21222463086191901
	.quad	0x3fea0a99d1930eba              # double 0.81379404957302559
	.quad	0x3fe5da431ad99275              # double 0.68289332622641885
	.quad	0x3fdd8f05c60fb0d6              # double 0.46185440389559795
	.quad	0x3fbac35991cac638              # double 0.10454330262543798
	.quad	0x3fdb3389b6917dec              # double 0.42502062634409188
	.quad	0x3feef88ed9fef7d7              # double 0.96784155442559949
	.quad	0x3fda49c5718e0d40              # double 0.41075264062256522
	.quad	0x3fd90fa070ffdc74              # double 0.39157877955535203
	.quad	0x3fee7658acea9d7b              # double 0.95194658062693749
	.quad	0x3fdfb8c5468a8b66              # double 0.49565250290668528
	.quad	0x3fcb909b71b3000c              # double 0.21535056163520527
	.quad	0x3fca4669f9efce44              # double 0.20527386383001744
	.quad	0x3fe0e97b8650e475              # double 0.52850128396597873
	.quad	0x3fecea4a4d837f49              # double 0.90359988345515163
	.quad	0x3fe245fb2c537f48              # double 0.57104262025311758
	.quad	0x3fb8a481fdc1dfb8              # double 0.096260189487906156
	.quad	0x3fe978376a8e2f2a              # double 0.79592486201861345
	.quad	0x3fd7652c59dce48a              # double 0.36555012489004268
	.quad	0x3fded6f9bfaad020              # double 0.48187106816772207
	.quad	0x3fee3543a9ad97d5              # double 0.94400199070218582
	.quad	0x3fe0a048ef9279fe              # double 0.51956602851333833
	.quad	0x3fe4bbe30b7b58e6              # double 0.64793541185897818
	.quad	0x3fe91ace9cff2d29              # double 0.78452234900888584
	.quad	0x3fee0a448cce31cf              # double 0.93875339032234162
	.quad	0x3fdc75d4479e46ee              # double 0.44469172471973095
	.quad	0x3fd200a495785562              # double 0.28128923985180709
	.quad	0x3f8b3adf30ac7bc0              # double 0.013295882866769193
	.quad	0x3fe84a063f60c183              # double 0.75903618219858549
	.quad	0x3fd13b5c4ee00104              # double 0.26924808218610985
	.quad	0x3fe2b262062ed80e              # double 0.5842752571832095
	.quad	0x3fe84a8943f4dff2              # double 0.75909865639459739
	.quad	0x3fa94437e2e802d0              # double 0.049348589371225438
	.quad	0x3fd528f97e6037a2              # double 0.33062589017287725
	.quad	0x3febf6756a589027              # double 0.87383528490727691
	.quad	0x3fe1868199eee6a5              # double 0.54766922059134926
	.quad	0x3fe6f95d1c9a6cfd              # double 0.71793990694587217
	.quad	0x3fed2cefbf979fda              # double 0.9117354146992469
	.quad	0x3fed0403e9ccdd0f              # double 0.9067401472483726
	.quad	0x3fe212eb1a02cfdb              # double 0.56480937080641114
	.quad	0x3fdb3fab9f35838c              # double 0.425761132695748
	.quad	0x3fdbc716d372d5e2              # double 0.43402643822932252
	.quad	0x3fc8c39fb85b4b64              # double 0.19346996785915416
	.quad	0x3fdfca7233a428a6              # double 0.49673132937517506
	.quad	0x3fc1f248b7782644              # double 0.14020642240966386
	.quad	0x3fd882eb046a240a              # double 0.38299060279001707
	.quad	0x3fa8de69f687f710              # double 0.048571883529787141
	.quad	0x3fe94cd643a6f3a2              # double 0.79062951291381389
	.quad	0x3fd5822ec4be14d4              # double 0.33607072079787526
	.quad	0x3fa539823bc6edf0              # double 0.041454381749158276
	.quad	0x3feafca8fe97f6ba              # double 0.84334230161012802
	.quad	0x3fe5bd257a5261cb              # double 0.67933915987946969
	.quad	0x3fe3289d1ad9098f              # double 0.59870772594176624
	.quad	0x3fdc62cfbf526508              # double 0.44353097614073578
	.quad	0x3fbba4deaa52bb48              # double 0.10798446329384348
	.quad	0x3fe2e6629397c472              # double 0.59062317682959375
	.quad	0x3fdbcdb39383dce4              # double 0.43443002134104192
	.quad	0x3fd5f1cce51b1028              # double 0.34288332341771133
	.quad	0x3fe5aa6f6d4043ac              # double 0.67705508554546645
	.quad	0x3f9ee1cd7b75de40              # double 0.030158243809152774
	.quad	0x3fec0734aa34a353              # double 0.87587960475239368
	.quad	0x3fe228e3a7734290              # double 0.56749136643527898
	.quad	0x3fdfbf6a84101060              # double 0.49605811020615498
	.quad	0x3fa93fe4c2417c20              # double 0.049315594399324647
	.quad	0x3fd50ed02b3f2566              # double 0.32902912352854796
	.quad	0x3fc80eeee9e69cd0              # double 0.18795572682322481
	.quad	0x3fe79828108a1724              # double 0.73732379179339036
	.quad	0x3fe76e5c3631e774              # double 0.73222170433949296
	.quad	0x3fd89f108b41352a              # double 0.38470853423207763
	.quad	0x3fd811fc63c0f82c              # double 0.37609777204113715
	.quad	0x3fdf2221f48ba5d6              # double 0.48645829087635428
	.quad	0x3fd66762e8015eb0              # double 0.35006020218632283
	.quad	0x3fb9441a6c78ec10              # double 0.098695422632701701
	.quad	0x3fe977baca554c39              # double 0.7958654357738687
	.quad	0x3fe7287f1d7abc73              # double 0.723693425728824
	.quad	0x3fe851c93b5deef7              # double 0.75998365016081848
	.quad	0x3feb993ce5a4b4fa              # double 0.86245579578613207
	.quad	0x3fec88accada228f              # double 0.89168395633267206
	.quad	0x3fec597919deab4d              # double 0.88592200329490256
	.quad	0x3fe075357583c133              # double 0.51430771782000873
	.quad	0x3fb78dabddbdd2b0              # double 0.09200548328028435
	.quad	0x3fdc4dc2e303f910              # double 0.44224617166027347
	.quad	0x3fa4ef197b553180              # double 0.040886684708854482
	.quad	0x3fe3a42cf9a7d0fb              # double 0.6137909771046276
	.quad	0x3feef7f7e02832ba              # double 0.96776956349056964
	.quad	0x3fdd3ae5a62e2faa              # double 0.45671979168468602
	.quad	0x3fb613b757af1600              # double 0.086238345057687127
	.quad	0x3fa1181f63dfb710              # double 0.033387165967594723
	.quad	0x3fe4e01303c43cf1              # double 0.65235281692176106
	.quad	0x3fc01d804c69882c              # double 0.12590030413690678
	.quad	0x3fbb42e77f333628              # double 0.10648962836713649
	.quad	0x3fe52104c99becd4              # double 0.6602806031873123
	.quad	0x3fec6327ad88e3a5              # double 0.88710388082028102
	.quad	0x3fd88451c409f1de              # double 0.3830761351053108
	.quad	0x3fef29ea8fea259b              # double 0.97386673076941876
	.quad	0x3f7b54093a994380              # double 0.0066719398979139255
	.quad	0x3fe30f7565d84c78              # double 0.59563703433595006
	.quad	0x3fe2b003bb1e4980              # double 0.58398615404648524
	.quad	0x3fe9bd6e53d9a9b6              # double 0.80437389733315601
	.quad	0x3fc44292187dcae4              # double 0.15828157611721061
	.quad	0x3fb7be7767137310              # double 0.092750036873848751
	.quad	0x3fe1f667804a8e79              # double 0.5613286500633442
	.quad	0x3fd3067684e91892              # double 0.29726946811241206
	.quad	0x3fe8c57be706030c              # double 0.77410693284773079
	.quad	0x3f8c41fee2baef40              # double 0.013797751707322115
	.quad	0x3fe259ee11a0d568              # double 0.57347777789133847
	.quad	0x3fe5545c60f8fb8e              # double 0.66654795589407612
	.quad	0x3fedf9469e39539a              # double 0.93667918112861348
	.quad	0x3fe53e4540970484              # double 0.66385138144700351
	.quad	0x3fdd1eac5781ceb0              # double 0.45499714418040593
	.quad	0x3fb77f21399260c0              # double 0.091783596568691728
	.quad	0x3fedd49ab8cd5fa2              # double 0.9322026833933601
	.quad	0x3fe83735751ae8cc              # double 0.7567393576821586
	.quad	0x3fe7e703a92726b3              # double 0.74694998777086707
	.quad	0x3fe24ed01aa454fd              # double 0.57212071612835269
	.quad	0x3febd342b781b869              # double 0.8695386489978435
	.quad	0x3fae7c6ca3855e50              # double 0.059543032609039259
	.quad	0x3fe4403df4bb96a6              # double 0.63284204291695256
	.quad	0x3fdce19dc6998cba              # double 0.45127052683364932
	.quad	0x3fb2b801e7690dd0              # double 0.073120230671569475
	.quad	0x3fdd7801ff03acf6              # double 0.46044969466920749
	.quad	0x3fe0173e30d706a2              # double 0.50283727206279516
	.quad	0x3fe59ae7b73fd720              # double 0.67515931883710678
	.quad	0x3fba8d90d08221e8              # double 0.10372262087378881
	.quad	0x3fd020c81f0619ac              # double 0.25200083760901282
	.quad	0x3fb024b9cff50e90              # double 0.063060391684354622
	.quad	0x3fef58f72ea83c12              # double 0.97961005318382122
	.quad	0x3fed8b14cc4cdd23              # double 0.92322769071953237
	.quad	0x3fd726a684f69e60              # double 0.36173403725340414
	.quad	0x3fd645156dc7fbea              # double 0.34796653481310946
	.quad	0x3fe445c570676302              # double 0.63351699785116034
	.quad	0x3fec6a09e345ba12              # double 0.88794416798720222
	.quad	0x3fe64b1547241bb8              # double 0.69666541952835015
	.quad	0x3fc3db4a9c3f4ea4              # double 0.15512974385511769
	.quad	0x3fe019ce4374a5fe              # double 0.50315011191304371
	.quad	0x3fd3b8923a1ef914              # double 0.30814033199193713
	.quad	0x3fe7cb263173ddf7              # double 0.74354848536216778
	.quad	0x3fcff14504722e18              # double 0.24955046383944146
	.quad	0x3fb5492bfb3d18f0              # double 0.083147763097347171
	.quad	0x3fe4712699f54b25              # double 0.6388123518939649
	.quad	0x3fd1a54855ee8e40              # double 0.2757130469492246
	.quad	0x3fd511b50504d6e6              # double 0.32920575609328606
	.quad	0x3fe7ff4597de85ee              # double 0.74991111432990265
	.quad	0x3fe58d71361500aa              # double 0.673515897397029
	.quad	0x3fd5dfc2f3a40aa6              # double 0.34178231995626118
	.quad	0x3fdad632427aaaa0              # double 0.41932350628000314
	.quad	0x3febaa8899f81493              # double 0.8645670897682457
	.quad	0x3fe6a3e69adf98c4              # double 0.70750742195812011
	.quad	0x3fc2692109937b90              # double 0.14383328406890117
	.quad	0x3fe54c4144d8cc8c              # double 0.66555846640257377
	.quad	0x3fea693fe0b2cdb6              # double 0.82534784208694734
	.quad	0x3fc3888e3e7ca3b8              # double 0.152604847441834
	.quad	0x3fdf20e88fe5f2f8              # double 0.48638357212602967
	.quad	0x3fc44630f23850a0              # double 0.15839206530711625
	.quad	0x3f953bfd3a376240              # double 0.020736653021091067
	.quad	0x3fedcbbb42847670              # double 0.93111956588445643
	.quad	0x3fe33d39a2966ee1              # double 0.60122377162357676
	.quad	0x3fcdc8ca25c6d86c              # double 0.23269011349265456
	.quad	0x3feb586f2eb1383b              # double 0.85454520339568008
	.quad	0x3fe57a1f430444cb              # double 0.67115748490518834
	.quad	0x3fd81193a5775838              # double 0.37607279928977588
	.quad	0x3fd6e1fcec60cda6              # double 0.35754321178247961
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
