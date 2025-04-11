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
	.quad	999                             # 0x3e7
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	999                             # 0x3e7
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
	lui	a7, %hi(.L__constant_999xindex)
	addi	a7, a7, %lo(.L__constant_999xindex)
	lui	t0, %hi(.L__constant_999xf64)
	addi	t0, t0, %lo(.L__constant_999xf64)
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
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	107                             # 0x6b
	.quad	111                             # 0x6f
	.quad	119                             # 0x77
	.quad	133                             # 0x85
	.quad	145                             # 0x91
	.quad	154                             # 0x9a
	.quad	168                             # 0xa8
	.quad	179                             # 0xb3
	.quad	187                             # 0xbb
	.quad	194                             # 0xc2
	.quad	206                             # 0xce
	.quad	219                             # 0xdb
	.quad	229                             # 0xe5
	.quad	233                             # 0xe9
	.quad	245                             # 0xf5
	.quad	259                             # 0x103
	.quad	270                             # 0x10e
	.quad	278                             # 0x116
	.quad	288                             # 0x120
	.quad	294                             # 0x126
	.quad	306                             # 0x132
	.quad	319                             # 0x13f
	.quad	332                             # 0x14c
	.quad	339                             # 0x153
	.quad	354                             # 0x162
	.quad	366                             # 0x16e
	.quad	375                             # 0x177
	.quad	388                             # 0x184
	.quad	401                             # 0x191
	.quad	411                             # 0x19b
	.quad	418                             # 0x1a2
	.quad	426                             # 0x1aa
	.quad	440                             # 0x1b8
	.quad	447                             # 0x1bf
	.quad	456                             # 0x1c8
	.quad	459                             # 0x1cb
	.quad	466                             # 0x1d2
	.quad	477                             # 0x1dd
	.quad	484                             # 0x1e4
	.quad	490                             # 0x1ea
	.quad	502                             # 0x1f6
	.quad	509                             # 0x1fd
	.quad	517                             # 0x205
	.quad	531                             # 0x213
	.quad	544                             # 0x220
	.quad	553                             # 0x229
	.quad	567                             # 0x237
	.quad	576                             # 0x240
	.quad	586                             # 0x24a
	.quad	600                             # 0x258
	.quad	612                             # 0x264
	.quad	622                             # 0x26e
	.quad	630                             # 0x276
	.quad	637                             # 0x27d
	.quad	648                             # 0x288
	.quad	662                             # 0x296
	.quad	672                             # 0x2a0
	.quad	681                             # 0x2a9
	.quad	689                             # 0x2b1
	.quad	697                             # 0x2b9
	.quad	706                             # 0x2c2
	.quad	722                             # 0x2d2
	.quad	729                             # 0x2d9
	.quad	736                             # 0x2e0
	.quad	740                             # 0x2e4
	.quad	753                             # 0x2f1
	.quad	762                             # 0x2fa
	.quad	768                             # 0x300
	.quad	782                             # 0x30e
	.quad	798                             # 0x31e
	.quad	810                             # 0x32a
	.quad	821                             # 0x335
	.quad	830                             # 0x33e
	.quad	840                             # 0x348
	.quad	852                             # 0x354
	.quad	864                             # 0x360
	.quad	872                             # 0x368
	.quad	881                             # 0x371
	.quad	894                             # 0x37e
	.quad	904                             # 0x388
	.quad	914                             # 0x392
	.quad	925                             # 0x39d
	.quad	936                             # 0x3a8
	.quad	945                             # 0x3b1
	.quad	956                             # 0x3bc
	.quad	964                             # 0x3c4
	.quad	970                             # 0x3ca
	.quad	975                             # 0x3cf
	.quad	986                             # 0x3da
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	3                               # 0x3
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	11                              # 0xb
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	4                               # 0x4
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	48                              # 0x30
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	45                              # 0x2d
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	47                              # 0x2f
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	89                              # 0x59
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	97                              # 0x61
	.quad	11                              # 0xb
	.quad	59                              # 0x3b
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	86                              # 0x56
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	32                              # 0x20
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	69                              # 0x45
	.quad	97                              # 0x61
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	5                               # 0x5
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	9                               # 0x9
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	3                               # 0x3
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	84                              # 0x54
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	81                              # 0x51
	.quad	4                               # 0x4
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	26                              # 0x1a
	.quad	43                              # 0x2b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	63                              # 0x3f
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	18                              # 0x12
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	92                              # 0x5c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	12                              # 0xc
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	93                              # 0x5d
	.quad	15                              # 0xf
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	95                              # 0x5f
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	74                              # 0x4a
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	80                              # 0x50
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	32                              # 0x20
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	85                              # 0x55
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	60                              # 0x3c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	39                              # 0x27
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	59                              # 0x3b
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	27                              # 0x1b
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	22                              # 0x16
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	2                               # 0x2
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	72                              # 0x48
	.quad	91                              # 0x5b
	.quad	10                              # 0xa
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.size	.L__constant_999xindex, 7992

	.type	.L__constant_999xf64,@object    # @__constant_999xf64
	.p2align	6, 0x0
.L__constant_999xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_999xf64, 7992

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fc135590038b484              # double 0.13444054137054107
	.quad	0x3fe48b9e25625aa4              # double 0.64204318334198662
	.quad	0x3fe2ed02a37361a3              # double 0.59143192218748586
	.quad	0x3fd3560cd58df924              # double 0.30212708334865312
	.quad	0x3fe6592030a63c91              # double 0.69837960721806003
	.quad	0x3fb68f24b019d550              # double 0.088121693604837902
	.quad	0x3fe270b268c061a6              # double 0.57625694712901487
	.quad	0x3fc56bf3cb841810              # double 0.16735694348625474
	.quad	0x3fc8a443b3f9c348              # double 0.19251295364258625
	.quad	0x3fc14bb8729db980              # double 0.13512330624093849
	.quad	0x3fda45f3361fb726              # double 0.41051941190277075
	.quad	0x3fe38e8ed6683196              # double 0.61115209461563569
	.quad	0x3fe8ba98002c161f              # double 0.77277755769381773
	.quad	0x3fc15e9e980b7978              # double 0.13570005821288667
	.quad	0x3fd2e73b703047d2              # double 0.29536329227368896
	.quad	0x3fd95752c0cf9392              # double 0.39595478848632937
	.quad	0x3fd1eb7afb01d2c0              # double 0.27999758255399954
	.quad	0x3fa718c15776e6f0              # double 0.045110742499174239
	.quad	0x3fe280455205ac9d              # double 0.57815805454210401
	.quad	0x3fe3dea39f1a3cb5              # double 0.62092763018326613
	.quad	0x3fc4ec6c89f1c6cc              # double 0.16346508727615683
	.quad	0x3fe093e40b538baf              # double 0.51805307590654148
	.quad	0x3fe77b18a36a9974              # double 0.73377639691606911
	.quad	0x3fefbcaa89d1a66f              # double 0.99178053777468544
	.quad	0x3fd6d4a998850aa2              # double 0.35672988790990179
	.quad	0x3fcff5bb0942932c              # double 0.2496866030898216
	.quad	0x3fe8672482a166d2              # double 0.76259065164341622
	.quad	0x3fbd49544f611160              # double 0.1144001668736272
	.quad	0x3fd70f3a2a2c706c              # double 0.3603043948985547
	.quad	0x3f2cbb8da1c65000              # double 2.1921256928847388E-4
	.quad	0x3fdcef1d308185fc              # double 0.45209436165723083
	.quad	0x3fdce9cd2c09ba16              # double 0.45177010822854535
	.quad	0x3fddd8648762f4fe              # double 0.4663325616964612
	.quad	0x3fd28ce103e7bf12              # double 0.28984856969235395
	.quad	0x3fd138a80b20cff8              # double 0.26908303343520812
	.quad	0x3fee4f71d8739b47              # double 0.94719784045887756
	.quad	0x3fdf691cd517b6b0              # double 0.49079056558444289
	.quad	0x3fd97c75d6d49876              # double 0.39822145442520396
	.quad	0x3fbd145e31083058              # double 0.11359204003400813
	.quad	0x3fe842f6292a2df7              # double 0.75817401924126571
	.quad	0x3fc5f6c399f3fe44              # double 0.17159314172021045
	.quad	0x3fd10d8d02527c7e              # double 0.26645207621363187
	.quad	0x3fead6cb16262186              # double 0.8387198860737477
	.quad	0x3fe62ce08a3e1363              # double 0.69297816277012847
	.quad	0x3fe95aaf64757f78              # double 0.79231996174711039
	.quad	0x3fe41d96d6aa60d7              # double 0.62861196448195755
	.quad	0x3feed5b3ac453297              # double 0.96358665129226295
	.quad	0x3fe5850a3023f91c              # double 0.67249020960278783
	.quad	0x3fe58b458a16a6ec              # double 0.67325093241126188
	.quad	0x3fee0162d81f6350              # double 0.93766920291373346
	.quad	0x3fd173bd03f0a6d0              # double 0.27268910774965338
	.quad	0x3fd9a03c0a9ad88c              # double 0.40040493999129789
	.quad	0x3fec47cea99bc1ef              # double 0.88376553656240542
	.quad	0x3fe1a2049ad78ddc              # double 0.55102758638934857
	.quad	0x3fcfacfabb595e3c              # double 0.24746641300110805
	.quad	0x3fd1a39af856e298              # double 0.27561067821401641
	.quad	0x3fe0b136fcadd73d              # double 0.52163266517047868
	.quad	0x3fd2d114d4f5f7ec              # double 0.29401131436304584
	.quad	0x3fe4718b1fd89bd4              # double 0.63886028499552561
	.quad	0x3fd1c96e02a824b4              # double 0.27791929492429834
	.quad	0x3fdcb5ead3b9962a              # double 0.44860335041298305
	.quad	0x3fd726ceecf5fefa              # double 0.36174367085185077
	.quad	0x3fdb43b90b344102              # double 0.42600847334053082
	.quad	0x3fddfe4277ce4720              # double 0.46864377689154146
	.quad	0x3fd8e0d23324a818              # double 0.38872199053241863
	.quad	0x3fe84d5a60f59180              # double 0.75944251000741758
	.quad	0x3fe2d4981b76ac76              # double 0.58845143665293054
	.quad	0x3fbfe412d16d22f0              # double 0.12457387555071953
	.quad	0x3fe683fe5e929fb7              # double 0.7036125037311568
	.quad	0x3fe9f2377ea22244              # double 0.81081747754166899
	.quad	0x3fd8e789e14790b4              # double 0.38913199424701905
	.quad	0x3fe4108aed0c49a6              # double 0.6270193700641371
	.quad	0x3feb0edb548210e7              # double 0.8455635691211939
	.quad	0x3fc4e5890860f770              # double 0.16325486096496489
	.quad	0x3fe754e19424ee23              # double 0.72911147055078052
	.quad	0x3fe6b8aa96e009e5              # double 0.71004228084376264
	.quad	0x3feb72eca6771978              # double 0.85777885925999353
	.quad	0x3fee6752d225aa07              # double 0.95011273426399689
	.quad	0x3fe55a87e80ddf28              # double 0.66730113337596197
	.quad	0x3f4f6ebab3bdd400              # double 9.5924488367293836E-4
	.quad	0x3fe85f8aa4b309db              # double 0.76166278999181303
	.quad	0x3fefe0929b6af15c              # double 0.99616365771320714
	.quad	0x3feeadb425d311ad              # double 0.95870406520457651
	.quad	0x3fc30a2429afb5a4              # double 0.14874698672740039
	.quad	0x3fe03f38f3bb18f8              # double 0.50771758655244437
	.quad	0x3fd45ac95167457c              # double 0.31804116200972721
	.quad	0x3fee447c86c85dac              # double 0.94586016010992102
	.quad	0x3fda85dd391be07c              # double 0.41442041947403374
	.quad	0x3fc217515fc0a9bc              # double 0.14133660483760291
	.quad	0x3fb0e3d39d599ec8              # double 0.065976358333155294
	.quad	0x3feb44e3c3780ab6              # double 0.85215938737413555
	.quad	0x3feb2de1a747f88c              # double 0.84935076400849274
	.quad	0x3fc8995f3231399c              # double 0.19218053770823651
	.quad	0x3fe891aeb77441aa              # double 0.76778350668796702
	.quad	0x3fe344dac5aae130              # double 0.60215509993489569
	.quad	0x3fdd9f0ea3c18152              # double 0.46283308021340475
	.quad	0x3fc89c32dae82dc8              # double 0.19226680458846901
	.quad	0x3feb28ff5803459c              # double 0.84875456991192121
	.quad	0x3fe29476dad9e3e3              # double 0.58062308067667023
	.quad	0x3fed7fa29fd67453              # double 0.9218304750280687
	.quad	0x3fe1a2dc6a74155c              # double 0.55113049308480866
	.quad	0x3fe9261ec7c74eb3              # double 0.78590334910628312
	.quad	0x3fe2c6b264ac2400              # double 0.58675498640616297
	.quad	0x3fd30ff347d869fc              # double 0.29784852996968403
	.quad	0x3fca51abab5a43dc              # double 0.20561738840890953
	.quad	0x3fe30d0555a1ee3f              # double 0.59533945775132924
	.quad	0x3fe5d94c72c24442              # double 0.68277571119154623
	.quad	0x3fe2b8ef8153f5c4              # double 0.58507514247292436
	.quad	0x3fcb6e487ad651b4              # double 0.21430307386311898
	.quad	0x3fe02494689ee30e              # double 0.50446529802056417
	.quad	0x3fe60ce60c5b3e2f              # double 0.68907453931200802
	.quad	0x3fc29f6c3b2fc70c              # double 0.14549019708606925
	.quad	0x3fe952535d66d4fb              # double 0.79129951708333068
	.quad	0x3fe9adaa99516593              # double 0.80244951195634184
	.quad	0x3fa03436268c8fe0              # double 0.031648342328736367
	.quad	0x3fd98346ffef6ec0              # double 0.39863753312759442
	.quad	0x3feb2e1dc455ee70              # double 0.84937942835627034
	.quad	0x3febb62830cdd7d6              # double 0.86598596126600103
	.quad	0x3fe3505eb82015da              # double 0.60356079065303025
	.quad	0x3fea70fd8d0746b1              # double 0.82629277748693231
	.quad	0x3fd7840444fb7ac4              # double 0.36743265854412877
	.quad	0x3f8007dcf1e9c0c0              # double 0.0078274976087587821
	.quad	0x3fc00db052d74560              # double 0.12541774792638716
	.quad	0x3fe6557efea5bfb5              # double 0.69793653236228315
	.quad	0x3fc24d313f3261ac              # double 0.14298072419911756
	.quad	0x3fe8f36fd1183e5c              # double 0.77971640433129207
	.quad	0x3f2d9bdc61b28000              # double 2.2589745717471743E-4
	.quad	0x3fc85cc29265c9ec              # double 0.19033081196137347
	.quad	0x3feb63814328bb75              # double 0.85589659802449936
	.quad	0x3f65d73ea03f5600              # double 0.0026661132014662581
	.quad	0x3fbdc62ef9e17e48              # double 0.11630529022794989
	.quad	0x3feaf704251c1468              # double 0.84265334365831013
	.quad	0x3fc58c8faef03854              # double 0.16835208932792745
	.quad	0x3fda37c63fa8a0b2              # double 0.40965419975919837
	.quad	0x3fe9b8354cfcff07              # double 0.80373635327120574
	.quad	0x3fef2af1e8addc2c              # double 0.9739923042787999
	.quad	0x3fdb1f1d7ccbd8d8              # double 0.42377412020813443
	.quad	0x3fee492d9286a808              # double 0.94643286341056498
	.quad	0x3fca1891de64bd70              # double 0.20387481078203562
	.quad	0x3fe06f3a89d2eb25              # double 0.51357771795969553
	.quad	0x3fe284c07418fa8d              # double 0.57870505023295638
	.quad	0x3fe1faf17cca1923              # double 0.56188272831858332
	.quad	0x3fea52e3e8c03a6b              # double 0.82261844119223093
	.quad	0x3fe0e395671d8549              # double 0.5277812017413136
	.quad	0x3fc7a17c168ac8f4              # double 0.18461562252702601
	.quad	0x3fc32eba2c3f91a4              # double 0.14986350212633426
	.quad	0x3fd869bbfe2dbc18              # double 0.38145351240285796
	.quad	0x3f7ba9cc109b7f80              # double 0.0067537280353632267
	.quad	0x3fe4491705880437              # double 0.63392211037001445
	.quad	0x3fe19e7b74fe6a56              # double 0.55059597826341178
	.quad	0x3fc9fcf8d9af9670              # double 0.20303259495920001
	.quad	0x3fdf5b218bca096c              # double 0.48993719722070384
	.quad	0x3fe2706237ad7a4e              # double 0.57621870874920389
	.quad	0x3fedcd51fb583027              # double 0.93131350603789975
	.quad	0x3fb816b2e976f6a0              # double 0.094096357343881553
	.quad	0x3fe349cd67e73b92              # double 0.60275907796482131
	.quad	0x3fdf1f00218f911a              # double 0.48626712109968795
	.quad	0x3fdc550b147a667a              # double 0.4426906299573613
	.quad	0x3fef3a1c05b4d1e0              # double 0.97584344019429281
	.quad	0x3fe19fa4a6575b72              # double 0.55073769081614743
	.quad	0x3fc619e444cc6dd8              # double 0.17266515120796444
	.quad	0x3fecece3a020aadc              # double 0.90391713404582274
	.quad	0x3fe092c2ab4521c6              # double 0.5179150910490129
	.quad	0x3fc9c4061359f884              # double 0.20129466957945763
	.quad	0x3fe3f79bce86a9fb              # double 0.62397566163173168
	.quad	0x3fd020695eded0f4              # double 0.25197824730572838
	.quad	0x3fc6bfbb060b72f4              # double 0.17772615237381439
	.quad	0x3fecd7c22a46594c              # double 0.90133770233914267
	.quad	0x3fe878efe261792a              # double 0.76476282324782585
	.quad	0x3fdb46f41a50d82e              # double 0.42620565957929812
	.quad	0x3fec5d891637a286              # double 0.88641790713616397
	.quad	0x3fdaeba574fd29ca              # double 0.42063270973872291
	.quad	0x3fec5988d3a85a15              # double 0.88592950190906328
	.quad	0x3feeae4c1f69ee85              # double 0.95877653251177774
	.quad	0x3fe96c36f6e6e90b              # double 0.79445980284734341
	.quad	0x3fe8530342451065              # double 0.76013338988606149
	.quad	0x3fc2f74c8ba37258              # double 0.14817196672710753
	.quad	0x3fa02835e1271440              # double 0.031556781515555077
	.quad	0x3fbf06fa01d79f80              # double 0.12120020432450751
	.quad	0x3fda31a12bd95c52              # double 0.40927914888510941
	.quad	0x3fedc706e7159e02              # double 0.93054528363876465
	.quad	0x3fc0c39bcda3edd4              # double 0.13096950093300441
	.quad	0x3feb465c5d929a66              # double 0.85233896518623165
	.quad	0x3fe0c143a848da0e              # double 0.52359183185655112
	.quad	0x3fefad7e3c868bd6              # double 0.98992835828209524
	.quad	0x3fdea050eef5ef72              # double 0.47853492103580841
	.quad	0x3fd76ffcfb32ebe6              # double 0.36621021777290108
	.quad	0x3fdbe6ea4311ad0c              # double 0.43596893834792705
	.quad	0x3febeace5d0c57c9              # double 0.87241285489539522
	.quad	0x3fcedde580974ddc              # double 0.24114674357279753
	.quad	0x3fcd4c6579c15294              # double 0.2288939327724121
	.quad	0x3fdf131d2a043b18              # double 0.48554162123848377
	.quad	0x3fe0b36d5e6efd01              # double 0.52190273708393431
	.quad	0x3fe98cff78850423              # double 0.79846166171057964
	.quad	0x3fef568f04a865b7              # double 0.97931624326445543
	.quad	0x3fe0054d3209f300              # double 0.5006471612283292
	.quad	0x3fc4ccbe02964cb4              # double 0.16249823690723064
	.quad	0x3f75fb709920dd80              # double 0.0053667448392425987
	.quad	0x3feb4bf453af2ecc              # double 0.85302177757827157
	.quad	0x3fd83d5af9dc134c              # double 0.37874483490331978
	.quad	0x3fd178bd89aabffe              # double 0.27299440807382769
	.quad	0x3fe6b0467043fae7              # double 0.70901796271195117
	.quad	0x3fa1b4b4d7735e80              # double 0.034581805515412789
	.quad	0x3fdb49ee82984c7a              # double 0.42638743165407045
	.quad	0x3fce435434f16678              # double 0.23642971596818874
	.quad	0x3fb658b9368384b0              # double 0.087291312989253411
	.quad	0x3fd0952acaad7ad8              # double 0.25910444061984839
	.quad	0x3fd891221e7576ce              # double 0.38385823225494853
	.quad	0x3feaad833b578db7              # double 0.8336807402633245
	.quad	0x3fe8b644bc2e7125              # double 0.77224957231695568
	.quad	0x3fc7b8d03007b6ec              # double 0.18532755227300102
	.quad	0x3fd07101202e6b0e              # double 0.25689724104601985
	.quad	0x3fe9d77b59b42453              # double 0.80755393524408203
	.quad	0x3feafa05c5d2fefc              # double 0.8430203307870836
	.quad	0x3fc9e0439a0d0510              # double 0.20215649625792098
	.quad	0x3fc184ed79a3fda0              # double 0.13686912955743669
	.quad	0x3fee171af51dd8d5              # double 0.94032047151884035
	.quad	0x3fcf6019fe1fbe78              # double 0.24512028606794778
	.quad	0x3fd6fadbaf21ff94              # double 0.35906116583645908
	.quad	0x3fd4dbde8bf61cec              # double 0.32591975849250221
	.quad	0x3fea9c7297a3b056              # double 0.83159761063644555
	.quad	0x3fea5ab4d66e0501              # double 0.82357255822003606
	.quad	0x3fd8c57128e7a81a              # double 0.38705090517635343
	.quad	0x3fefbf10397c6872              # double 0.99207316615799201
	.quad	0x3feecb5152024b49              # double 0.96231905000090833
	.quad	0x3fccf4131c3a4238              # double 0.22619856718348941
	.quad	0x3fef2e8e64f9157e              # double 0.97443313332830406
	.quad	0x3fe68334d7da04f5              # double 0.70351640852473329
	.quad	0x3fde0365d42a7816              # double 0.46895738334012671
	.quad	0x3fe423e532792cca              # double 0.62938175066064983
	.quad	0x3fe0de2165f3600f              # double 0.52711553489916863
	.quad	0x3fe1fa8463412e57              # double 0.56183070550600689
	.quad	0x3fe68e5f16c3ca17              # double 0.70487932630777805
	.quad	0x3fee6648d3ba93ca              # double 0.94998589852604565
	.quad	0x3fe51c65ec4c3108              # double 0.65971656944160006
	.quad	0x3fe5389b0c963217              # double 0.66315987070408056
	.quad	0x3fe2f6752fe95760              # double 0.59258517606461325
	.quad	0x3fef00f8ca903fa9              # double 0.96886863291910174
	.quad	0x3fd180f649e361ca              # double 0.27349621978421779
	.quad	0x3fd1723baf49f41c              # double 0.27259723775915901
	.quad	0x3fe37e40a8acaeda              # double 0.60916169113394436
	.quad	0x3feaadeb4c6d49d3              # double 0.83373036315088667
	.quad	0x3fe2da35d08996e7              # double 0.5891369889256709
	.quad	0x3feda9e83ad27fbe              # double 0.92699061859820353
	.quad	0x3fb230a72bbfd5c0              # double 0.071054886036868048
	.quad	0x3fdd18d40f9c6980              # double 0.45464040302763209
	.quad	0x3fe3a75367033cf6              # double 0.61417551154764172
	.quad	0x3fee524b9929ff52              # double 0.94754581370214397
	.quad	0x3fe9d316d18e1dea              # double 0.80701771668185285
	.quad	0x3fe0719a6411c86b              # double 0.51386756462876571
	.quad	0x3fd1e063f77b9b2a              # double 0.27932070892568339
	.quad	0x3fd2e1adc30ce8d6              # double 0.29502433822530116
	.quad	0x3fcc37aa71832e24              # double 0.22044878523443956
	.quad	0x3fc9cd909868568c              # double 0.20158584062362583
	.quad	0x3fb28ba215f7bb78              # double 0.072443132746895844
	.quad	0x3fb34f5f48550940              # double 0.075429873618337417
	.quad	0x3fe9d12d8ba3e095              # double 0.80678441308465898
	.quad	0x3fedba4ecd0e5725              # double 0.92899265336993564
	.quad	0x3fc3a32a21e46330              # double 0.15341688780679297
	.quad	0x3fd409fd394f6f62              # double 0.31310968968113262
	.quad	0x3fef6c91b7ab373e              # double 0.98200307724776059
	.quad	0x3fe2b3b4d36f0eca              # double 0.58443681045215468
	.quad	0x3fe63afd6247f964              # double 0.69470090098893111
	.quad	0x3fe79c712d4156a0              # double 0.73784693564330794
	.quad	0x3fba80a667b54408              # double 0.10352554351744925
	.quad	0x3fd7f8e6f39323bc              # double 0.37456678186986969
	.quad	0x3fdff4f8309f6264              # double 0.49932675121593761
	.quad	0x3fdf9eb3160847b2              # double 0.4940612521323785
	.quad	0x3fe481b7b80cd53b              # double 0.6408346743325305
	.quad	0x3fe3f1d536f0815b              # double 0.62327061395994166
	.quad	0x3fee42f94f921f7e              # double 0.94567552128954424
	.quad	0x3feae766ff83bf50              # double 0.84074735551073765
	.quad	0x3fea639c59c8199b              # double 0.82465951476551724
	.quad	0x3fe6951ead501ca6              # double 0.70570310449774776
	.quad	0x3fed521afbcb98ea              # double 0.91627263239641121
	.quad	0x3fe027b13d8c4979              # double 0.50484525700657834
	.quad	0x3fe0c154eaef46eb              # double 0.52360006223372346
	.quad	0x3fc0c571121edd14              # double 0.13102544197838795
	.quad	0x3fe791cdfa4e5808              # double 0.73654841316124564
	.quad	0x3fd1403df24c99c0              # double 0.26954601919205956
	.quad	0x3fe93cbbb78bac01              # double 0.78866372917889305
	.quad	0x3fcb019d5c456c40              # double 0.21098677640370234
	.quad	0x3fef47ca4c75760f              # double 0.97751345570913084
	.quad	0x3fef324282d5da3e              # double 0.97488523057729259
	.quad	0x3fdbd8c619e2ab50              # double 0.43510582473634418
	.quad	0x3fe324269c16d41b              # double 0.59816294180075447
	.quad	0x3fc2e0c78636c794              # double 0.14748472264687662
	.quad	0x3fe7420864b8dd8d              # double 0.7268106429318536
	.quad	0x3fd86bd9a9ba51ce              # double 0.38158265662175672
	.quad	0x3fec253f88589a0b              # double 0.87954689626786953
	.quad	0x3fedae7a6e5450bc              # double 0.92754861401274224
	.quad	0x3fd1794a301c1f70              # double 0.27302794168689726
	.quad	0x3fc2354d6a112ac4              # double 0.14225166014724355
	.quad	0x3fe02dd5f468e5f4              # double 0.50559518562584893
	.quad	0x3feff04e07d9d0cd              # double 0.99808408292167316
	.quad	0x3fe1614aed3db001              # double 0.54312654815794315
	.quad	0x3fd696b690ee9a8e              # double 0.35294880059738254
	.quad	0x3fd3e7e77fd6cbe2              # double 0.31102931484491425
	.quad	0x3fdabd1c8af1f166              # double 0.41779244965416351
	.quad	0x3fef737ab2063caa              # double 0.98284659166701727
	.quad	0x3fd4b9e2512e66ee              # double 0.32384546211106524
	.quad	0x3fd98a71ae33a71a              # double 0.39907495509997803
	.quad	0x3fd47aa9bff8d78e              # double 0.31998676059026188
	.quad	0x3fccaa2a538ef6a0              # double 0.22394303398134685
	.quad	0x3fef8e50b07632a3              # double 0.98612246003320469
	.quad	0x3fea4cdfab875ca7              # double 0.82188399793348743
	.quad	0x3fb04f2f37164790              # double 0.063708258580190469
	.quad	0x3fa12f3930709430              # double 0.033563410914475234
	.quad	0x3fc04d85d5c6e448              # double 0.12736580789877139
	.quad	0x3fe10c2842f24f23              # double 0.53273404193393892
	.quad	0x3fd3f8996fd82e0e              # double 0.31204830095586622
	.quad	0x3fdeffec51fb19be              # double 0.48437030797904501
	.quad	0x3fd4d8fb359721f2              # double 0.32574348672326814
	.quad	0x3fe8161326de9049              # double 0.75269467918088495
	.quad	0x3fd853243595c7b0              # double 0.38007455094259068
	.quad	0x3fd5a68746a1fa16              # double 0.33828908822752746
	.quad	0x3fe073bef926818c              # double 0.51412914907636909
	.quad	0x3fea141cc62c244e              # double 0.81495512681534321
	.quad	0x3fe87498474c3f0b              # double 0.76423276830061704
	.quad	0x3fe2e377fe4d458f              # double 0.59026717823341979
	.quad	0x3fb7f8d75b80db50              # double 0.093640765990909757
	.quad	0x3f9fdc7b93bf67a0              # double 0.031114512341310907
	.quad	0x3fe6fea654109e81              # double 0.71858517092637453
	.quad	0x3fdcf2cfd0b3aad2              # double 0.45232005482709525
	.quad	0x3fd796c0f4a188d2              # double 0.36857627763505463
	.quad	0x3fe89227e6bf4485              # double 0.76784129207420959
	.quad	0x3fa0140ad52d5980              # double 0.031402910730935041
	.quad	0x3fcb635af30b7ab8              # double 0.21396958224700824
	.quad	0x3fe8aa0dab3864d0              # double 0.77075847093069605
	.quad	0x3fe953de94c311d7              # double 0.79148797087742195
	.quad	0x3fee43dfcd06d792              # double 0.94578542751581751
	.quad	0x3fe3c9697798a954              # double 0.61833642347964224
	.quad	0x3fd90f5ad9fd2de4              # double 0.39156218803392862
	.quad	0x3fe96cb849e1764a              # double 0.79452146940065771
	.quad	0x3fead3777df6ea17              # double 0.83831381418650863
	.quad	0x3fe22cc9071cb673              # double 0.5679669512662272
	.quad	0x3fdc5fd6248ffbf6              # double 0.44334939547110197
	.quad	0x3fed255cd2d8b3c0              # double 0.91081086331325167
	.quad	0x3fea97a12f512746              # double 0.8310094761047615
	.quad	0x3fcdf7fd43b2450c              # double 0.23413053327070832
	.quad	0x3fcff94c9233b288              # double 0.24979550493971581
	.quad	0x3fee6cf5639d5d63              # double 0.9508006044006091
	.quad	0x3fe668a652615a0e              # double 0.70027462091349135
	.quad	0x3fed3ded6c483af0              # double 0.91380950116021431
	.quad	0x3fc8f2c17394dc58              # double 0.19490831512095741
	.quad	0x3fe978c72354c0a4              # double 0.79599339390371826
	.quad	0x3fece1b3507bfa54              # double 0.90255132407748783
	.quad	0x3fe78b772fcad34a              # double 0.73577460607939682
	.quad	0x3fe44c7cac823394              # double 0.63433679287992328
	.quad	0x3fe9a3c3468ddfd0              # double 0.80124057560078121
	.quad	0x3f8d17dda6804540              # double 0.014205676692685132
	.quad	0x3fe948f9641cc6ad              # double 0.79015798142628102
	.quad	0x3fb6239aeebaa880              # double 0.086480792315940746
	.quad	0x3fd35c712e491230              # double 0.30251721878110782
	.quad	0x3fcca89fc6cdc100              # double 0.22389599997723764
	.quad	0x3fec174bffe11a90              # double 0.8778438565867237
	.quad	0x3fe7375a601ad700              # double 0.72550696154095817
	.quad	0x3fc8a52007f277dc              # double 0.19253921878856672
	.quad	0x3fe701b445a9752b              # double 0.71895803075645881
	.quad	0x3fc7fed878b09194              # double 0.18746477025082398
	.quad	0x3fe1c5bbee70938c              # double 0.55538746423973029
	.quad	0x3fd2164f926ef4ec              # double 0.28261174488200314
	.quad	0x3fcde8a5462480b8              # double 0.23366228032046421
	.quad	0x3fb306ec549ec228              # double 0.074324389132706004
	.quad	0x3fe3014f1fe19b63              # double 0.59390979983150449
	.quad	0x3fe10e8db6106df9              # double 0.53302655753526473
	.quad	0x3fcc9cea77a98ca8              # double 0.2235386928833567
	.quad	0x3fae13e5c0539b30              # double 0.058745555617682021
	.quad	0x3fe1c9ea3c1f306e              # double 0.55589782469315963
	.quad	0x3fc3ebf30461776c              # double 0.1556381007566715
	.quad	0x3fc4d554747d0080              # double 0.16276031196503382
	.quad	0x3fe22addbae3c753              # double 0.56773268224626816
	.quad	0x3fe39a555c96417d              # double 0.61258953174005593
	.quad	0x3feca7a2c7f9062c              # double 0.89546336228540246
	.quad	0x3fd44d5c69d9a156              # double 0.3172217401211318
	.quad	0x3fe54a3be8423d89              # double 0.66531176913297074
	.quad	0x3fecb45cab6761d7              # double 0.89701684453307962
	.quad	0x3fb43e271be42980              # double 0.079073375996960848
	.quad	0x3fef6968118937cb              # double 0.98161700654031258
	.quad	0x3fe7e1ea753449fc              # double 0.74632761851745455
	.quad	0x3fcb74a1b9fcc14c              # double 0.21449681836521461
	.quad	0x3fe7a75b04d843f8              # double 0.73917914339301571
	.quad	0x3fe5ad32c80110c6              # double 0.67739237845719269
	.quad	0x3fdb098acbc9eb3c              # double 0.42245740796322528
	.quad	0x3fe815b2d46d4253              # double 0.75264874925239622
	.quad	0x3fbadebda7c19720              # double 0.10496125550852442
	.quad	0x3fc0204b49f74170              # double 0.12598553763974563
	.quad	0x3fcbe9232132ce58              # double 0.21805228348749739
	.quad	0x3fba9b600032a730              # double 0.10393333439665464
	.quad	0x3fd25d9927f08658              # double 0.286962784770457
	.quad	0x3fc37eb2cda7ecb8              # double 0.15230402986330716
	.quad	0x3feb340a8a705b06              # double 0.85010268248410692
	.quad	0x3fca24202d6b0e6c              # double 0.20422746865925789
	.quad	0x3fdc0cacd8b7fe42              # double 0.43827363170564493
	.quad	0x3fc3a1e568e7d608              # double 0.15337817785591334
	.quad	0x3fd944ec9c4c3e06              # double 0.3948318029733574
	.quad	0x3fd232fc74b1c010              # double 0.28436194797450387
	.quad	0x3fed43fde35be7cd              # double 0.91454977422767458
	.quad	0x3fcf36b807dac868              # double 0.24385738738562002
	.quad	0x3fe25295bc3406f5              # double 0.57258116491740785
	.quad	0x3fe1fc002e12972f              # double 0.562011804566941
	.quad	0x3fe73899b1590b6e              # double 0.72565922392128157
	.quad	0x3fd7ff50a7fae9fe              # double 0.37495819477376802
	.quad	0x3fe0681baefc3e4d              # double 0.51270851303883946
	.quad	0x3fbdf270330a29a0              # double 0.1169805645569455
	.quad	0x3fcff12735c2b044              # double 0.24954691052460209
	.quad	0x3fc5fca86b882228              # double 0.17177300692152753
	.quad	0x3fc2123adfafecd0              # double 0.14118133470751681
	.quad	0x3feb51805e36d513              # double 0.85369890595635167
	.quad	0x3fd843744c9a6c68              # double 0.37911708336623073
	.quad	0x3fdb22d4f8f76f54              # double 0.42400097191943087
	.quad	0x3f87525939860740              # double 0.011387536113719343
	.quad	0x3fef85eaa9f3c5fb              # double 0.98509724801823439
	.quad	0x3fcefd74e7b73a40              # double 0.24210988344425921
	.quad	0x3fed6ecae35f6480              # double 0.91977447899547826
	.quad	0x3fe25ee4785ce08c              # double 0.57408355244025833
	.quad	0x3fee7d9ed92f36cc              # double 0.9528345338710209
	.quad	0x3feb71223048198c              # double 0.8575602477074411
	.quad	0x3febd7c4d8d84cd3              # double 0.87008898117565037
	.quad	0x3f97a6088760e340              # double 0.023094304335447235
	.quad	0x3fd2a7d35771450c              # double 0.29149325885107724
	.quad	0x3fe9ce207a808ef2              # double 0.80641197134215603
	.quad	0x3fdc0919677a5bf2              # double 0.43805537324209276
	.quad	0x3fb5382125a3a3a8              # double 0.082887717904340463
	.quad	0x3fa3d098473ba390              # double 0.038700827308111418
	.quad	0x3fe3fd044125edce              # double 0.62463581775903676
	.quad	0x3fc2d24374478d58              # double 0.14704173257551179
	.quad	0x3fe5c7f348123bf4              # double 0.68065799786006531
	.quad	0x3fd12bd5cfc994aa              # double 0.26830048839321796
	.quad	0x3fd59d4f98655880              # double 0.33772649652872389
	.quad	0x3fe87bdee408abbd              # double 0.76512093103280387
	.quad	0x3fe1e18723e7133c              # double 0.55878026020273053
	.quad	0x3fef2d64c947cd8c              # double 0.97429122269243029
	.quad	0x3fdc6deb546a9b4c              # double 0.44420893901626779
	.quad	0x3fb86869b3506aa8              # double 0.095343214300025125
	.quad	0x3fc777dd716725f8              # double 0.18334548985721688
	.quad	0x3fc918dde950e290              # double 0.19607137577419964
	.quad	0x3fd86ce34bb4b0bc              # double 0.38164598839899688
	.quad	0x3fdcc2d64239a254              # double 0.44939190356538927
	.quad	0x3fd1f18a6a798676              # double 0.28036747358246517
	.quad	0x3fdaabe4de3a5d2e              # double 0.41674157812072365
	.quad	0x3fe18f6359777fad              # double 0.54875342821104811
	.quad	0x3fe6b94fdf1e9065              # double 0.71012109354024899
	.quad	0x3fea97c83043fc27              # double 0.83102807452076355
	.quad	0x3fdb28c76704af22              # double 0.4243639474905071
	.quad	0x3feefe4583d7db0a              # double 0.96853900671598692
	.quad	0x3feef388bc39c93f              # double 0.96722828638875302
	.quad	0x3fdfa526dc7883bc              # double 0.49445506601665179
	.quad	0x3fe74051f7b93f6a              # double 0.72660158523102081
	.quad	0x3fe2c4f509d5739f              # double 0.58654262467063123
	.quad	0x3fcfa653233db0fc              # double 0.24726332875014367
	.quad	0x3fedc06c931c284a              # double 0.92973927242679477
	.quad	0x3fe0ba51199fa8f4              # double 0.52274374966262238
	.quad	0x3fd14f2132f42cc4              # double 0.27045469261129207
	.quad	0x3fecbfa97349f0ac              # double 0.8983962299094137
	.quad	0x3fe0c80c89a69fd1              # double 0.5244200409406351
	.quad	0x3fd01a2be04ff5c6              # double 0.25159737496855106
	.quad	0x3fef5382f15db141              # double 0.97894427434724928
	.quad	0x3fd6cec446f46af0              # double 0.35637003831077063
	.quad	0x3fd3379c5ba18ef0              # double 0.30026921223018999
	.quad	0x3fe0deec147dfa64              # double 0.52721218111385015
	.quad	0x3fecf074427ab513              # double 0.90435231193774468
	.quad	0x3feb9283cd322cbf              # double 0.86163511350004984
	.quad	0x3fdfaa8bcb75317e              # double 0.49478430622982461
	.quad	0x3fbe029ac550d3b8              # double 0.11722724263456896
	.quad	0x3fc412c77b027044              # double 0.15682309633564462
	.quad	0x3fe3e001272c89fc              # double 0.62109429980438291
	.quad	0x3fd5e5790ce41d6e              # double 0.34213091143506957
	.quad	0x3fd3e9d1d7c634a8              # double 0.31114622184470386
	.quad	0x3fbc3d16a10d9088              # double 0.1103071349330681
	.quad	0x3fe7770f7a6698e5              # double 0.73328374773407445
	.quad	0x3fd015d5ee6408dc              # double 0.25133274345729517
	.quad	0x3fc3116571cf71f4              # double 0.14896839196343559
	.quad	0x3fe3875e43c590ca              # double 0.61027444111507489
	.quad	0x3fe665e8e6d5ef96              # double 0.69994015774817586
	.quad	0x3fca5e86bdb496ac              # double 0.20600971472702179
	.quad	0x3fe135dc6f58894c              # double 0.53782483813510273
	.quad	0x3fd6f709c3737552              # double 0.35882801138889875
	.quad	0x3fc55a1375056824              # double 0.16681140149995699
	.quad	0x3fe878df069da033              # double 0.76475478450902867
	.quad	0x3fc600f29b5aca18              # double 0.17190392099071583
	.quad	0x3fe1b8728c33fe76              # double 0.5537655580846621
	.quad	0x3fe1a5282ec7fba3              # double 0.5514107621855725
	.quad	0x3fe4c70386426ed0              # double 0.64929367277678729
	.quad	0x3fdea0b44904d294              # double 0.47855860834833064
	.quad	0x3fd067a87c3090b0              # double 0.25632679107571743
	.quad	0x3feebd4f008b17ba              # double 0.9606089602100305
	.quad	0x3fdd0bc2e4d1f1bc              # double 0.45384285302841554
	.quad	0x3fe8f61fa233bc5a              # double 0.78004438095184558
	.quad	0x3fca89d5d31612e0              # double 0.20733139807648282
	.quad	0x3fc9e2a89de1cab0              # double 0.20222957333642944
	.quad	0x3fc91c58b1f6852c              # double 0.19617756547544596
	.quad	0x3febfd112e7dfaf1              # double 0.8746419818924932
	.quad	0x3fcc02cfd7bc3d30              # double 0.21883581193876855
	.quad	0x3fd0f665daaa59c6              # double 0.26503893236204268
	.quad	0x3fe4e5a4bdea36f4              # double 0.65303265660051446
	.quad	0x3fe1fa1c25738877              # double 0.5617809993239139
	.quad	0x3fccb67721969a3c              # double 0.22431840076497334
	.quad	0x3fe1c7ee5c08462a              # double 0.55565565085470792
	.quad	0x3fe4e504f05bb093              # double 0.65295645661309931
	.quad	0x3fc97160a34ffbc0              # double 0.19877250646820066
	.quad	0x3fd971758d3b4642              # double 0.39754999916212708
	.quad	0x3fcd213edf4edc34              # double 0.22757707503999003
	.quad	0x3fb945f768f27720              # double 0.098723853227479896
	.quad	0x3fec3ad178733d96              # double 0.88217996144696786
	.quad	0x3fe958cf982899a3              # double 0.79209117620921565
	.quad	0x3fd359f48e8c0ede              # double 0.30236543579688469
	.quad	0x3feec96b059359e2              # double 0.96208716477377387
	.quad	0x3fccd52416dceeb0              # double 0.22525454632147079
	.quad	0x3fd22b6fb64eb65e              # double 0.28390114596809279
	.quad	0x3fe612adf65b2f37              # double 0.68978021732752992
	.quad	0x3fd08a9175f98ab4              # double 0.25845753212903877
	.quad	0x3fe868b11aac8581              # double 0.76277976236103495
	.quad	0x3fbd7e47d00b4760              # double 0.11520813779068595
	.quad	0x3fd39645f3459bee              # double 0.30604695088408007
	.quad	0x3fe99a0a9f6b6657              # double 0.8000538934385969
	.quad	0x3fd2428f34231474              # double 0.28531246272570532
	.quad	0x3fe6cff73cb54662              # double 0.71288644654323385
	.quad	0x3fea90c72d0e4482              # double 0.83017309951732465
	.quad	0x3fe51b6e203cb139              # double 0.65959841057114155
	.quad	0x3fdf00d3cab0cb3c              # double 0.48442549509052291
	.quad	0x3fec732ef099da83              # double 0.88906046860104515
	.quad	0x3fecbf81acd0501e              # double 0.89837726357155012
	.quad	0x3fe1f96358edd32b              # double 0.56169288033433895
	.quad	0x3fbc16085ff45b38              # double 0.10971119253768513
	.quad	0x3fc8dd12f710f930              # double 0.19424664558204929
	.quad	0x3fe0794787f408f1              # double 0.51480461648341536
	.quad	0x3fe08d1635f9b588              # double 0.51722250501704625
	.quad	0x3fe71be0917f707c              # double 0.72215298097172775
	.quad	0x3fec528a0c80126c              # double 0.88507559243641997
	.quad	0x3fc36fe845e4e6f4              # double 0.15185264027405021
	.quad	0x3fcd6bc03d91e964              # double 0.22985079771371908
	.quad	0x3fea7835c318e6ae              # double 0.82717407326636816
	.quad	0x3fc8dbc731ab57f0              # double 0.19420709538707071
	.quad	0x3fef6963f21c32de              # double 0.98161504065646077
	.quad	0x3fd9cd7c639f82f8              # double 0.40316686371629329
	.quad	0x3fde3c8c810046e6              # double 0.47244560811769387
	.quad	0x3feb2931b99b0f61              # double 0.84877859355081509
	.quad	0x3fcfa3fbfb0b6848              # double 0.24719190366778521
	.quad	0x3fed02787ddb6099              # double 0.90655159551080822
	.quad	0x3fda0b8bbe08ca80              # double 0.40695470388451582
	.quad	0x3fce3b0e3f13b1bc              # double 0.23617723541191349
	.quad	0x3fe6f76caa90873a              # double 0.71770318330184257
	.quad	0x3fde34561697082c              # double 0.47194435316135031
	.quad	0x3fdef63d24dcce2a              # double 0.48377922630172299
	.quad	0x3fe86ee69b5e3b6c              # double 0.76353769631701373
	.quad	0x3fda61e9ae8fd148              # double 0.41222612425851368
	.quad	0x3fd321cfe4237d62              # double 0.29893872527278209
	.quad	0x3fe0c4efa5080da0              # double 0.52404005272585508
	.quad	0x3fefd0ba94b9e200              # double 0.99422959373538333
	.quad	0x3feb052307c5260a              # double 0.84437705533599794
	.quad	0x3fa431aa85d18f70              # double 0.039441422305371954
	.quad	0x3fe262f3bf128bdd              # double 0.57457911795460925
	.quad	0x3fe9429e7ba58f28              # double 0.7893822112059512
	.quad	0x3fe4a002826eb54e              # double 0.64453244662369413
	.quad	0x3fd001400216d2d4              # double 0.25007629589098923
	.quad	0x3feccf5c93c35d5a              # double 0.90031269893635657
	.quad	0x3fe688d263931561              # double 0.70420188377526582
	.quad	0x3febbadb37699c2f              # double 0.86655960867654425
	.quad	0x3feddcdf4330eac4              # double 0.9332119285894227
	.quad	0x3fb2a715cc512888              # double 0.072862017042242155
	.quad	0x3fd920c63aef8a80              # double 0.39262538676681658
	.quad	0x3fe1002d37e7bd20              # double 0.53127156180372381
	.quad	0x3fedef3638ee105f              # double 0.93545065993431453
	.quad	0x3fd5bf2224338cea              # double 0.33979085479059157
	.quad	0x3fcd0578d2ed98d8              # double 0.22672949122642794
	.quad	0x3fc786ef145e399c              # double 0.18380535597357273
	.quad	0x3fe807295f487596              # double 0.75087421998948645
	.quad	0x3fe410b3a7bff7b0              # double 0.62703879130980589
	.quad	0x3fe5a5e82780e7a6              # double 0.67650230136427036
	.quad	0x3fee1ce99a407b90              # double 0.94102935912438745
	.quad	0x3fe91e548facefb3              # double 0.78495243131282277
	.quad	0x3f9a2bcd40ef9700              # double 0.025557715500233336
	.quad	0x3fe0e403042dccb6              # double 0.52783346954529153
	.quad	0x3feee2d810b50dcb              # double 0.96519091857083461
	.quad	0x3fe5d493fef47ede              # double 0.6821994762030632
	.quad	0x3feff0afafe9ecc0              # double 0.99813064916761362
	.quad	0x3fef50cfea216423              # double 0.97861476639366562
	.quad	0x3fd53b52d08af36e              # double 0.33174581876283227
	.quad	0x3fce2cde6aa812b4              # double 0.23574428756559984
	.quad	0x3fecc70066a4b961              # double 0.89929218337583106
	.quad	0x3fe32e621d37cd45              # double 0.59941201883922501
	.quad	0x3f5514619b04a600              # double 0.0012865975550745423
	.quad	0x3fe69d8b1de32756              # double 0.70673137509695994
	.quad	0x3fe1bd38b3fb8b57              # double 0.55434832718706673
	.quad	0x3f97cd986fc787e0              # double 0.023245221922372994
	.quad	0x3fe1f35d9a71f2f9              # double 0.56095771946965478
	.quad	0x3fe843031950b367              # double 0.75818018860227887
	.quad	0x3f8b469f72db5880              # double 0.013318296139385177
	.quad	0x3fd4538758dacffe              # double 0.3175981872293504
	.quad	0x3fe6b8563fc411f8              # double 0.71000206426884827
	.quad	0x3fdcbebd6016fbd2              # double 0.44914183028953147
	.quad	0x3feba8da143f07b2              # double 0.86436180071199531
	.quad	0x3fc5511a7d0bcd44              # double 0.16653758149878162
	.quad	0x3fef4b6b35ca621b              # double 0.9779563952061524
	.quad	0x3fb0d1fee3a531b0              # double 0.06570427949663471
	.quad	0x3fdf54bf481a5a2e              # double 0.48954755822470275
	.quad	0x3fb8e3ada9d33ad8              # double 0.097224096261224857
	.quad	0x3fe2d95a6fc6e758              # double 0.58903238135756464
	.quad	0x3fe5252d31175b6b              # double 0.66078815067417673
	.quad	0x3fbf33223d6927d8              # double 0.12187398909841762
	.quad	0x3fd090f9afe7b052              # double 0.25884859255052561
	.quad	0x3fd20e85d3ce7b40              # double 0.28213639911875887
	.quad	0x3fe1b4874ad28ae6              # double 0.55328716863399729
	.quad	0x3fdd6d8ebada2da0              # double 0.45981186148920905
	.quad	0x3fdf85e5b0743f76              # double 0.49254743797154477
	.quad	0x3fd4295a408bef16              # double 0.31502395919209059
	.quad	0x3fe071ef88c1bff2              # double 0.51390816412276608
	.quad	0x3fac055ab1c676c0              # double 0.054728349877434024
	.quad	0x3febf8a0238b473f              # double 0.87409979765127577
	.quad	0x3fda69617da2120a              # double 0.4126819350133536
	.quad	0x3fe71bd8c92f3b54              # double 0.72214926999900309
	.quad	0x3fe077fd00856e11              # double 0.51464700795935603
	.quad	0x3fed73c848432ad4              # double 0.92038358796829777
	.quad	0x3fd894c5f4dcd148              # double 0.38408039963112062
	.quad	0x3fee32e9f627f421              # double 0.94371507718426895
	.quad	0x3fefdf41f5c4b8a5              # double 0.99600313188218037
	.quad	0x3fd5f354316f8caa              # double 0.34297661617001529
	.quad	0x3fdb7f625ecadcde              # double 0.4296499181468344
	.quad	0x3fa35903dab0c6f0              # double 0.037788505979177489
	.quad	0x3fe69aae5ae8cf6f              # double 0.70638196712250856
	.quad	0x3fecf0815d9d7287              # double 0.90435856136498749
	.quad	0x3fdb0a9c032aded8              # double 0.42252254781076948
	.quad	0x3fdd19a268ae9dfa              # double 0.45468960020886551
	.quad	0x3fdf10cfa042633c              # double 0.48540106439900277
	.quad	0x3fc28d7b34d621e4              # double 0.14494266586213123
	.quad	0x3fdc1dc4fd0e2208              # double 0.4393169852487806
	.quad	0x3fd3ed38bbff5de4              # double 0.31135385855802
	.quad	0x3fe0d61beb24db22              # double 0.52613635946804416
	.quad	0x3fef0b0a1fb331e2              # double 0.97009760085489583
	.quad	0x3fc90ea8546c3918              # double 0.1957598125667992
	.quad	0x3f9fc567dafcc8a0              # double 0.031026480427677527
	.quad	0x3fe77bffba9c9521              # double 0.73388658950412744
	.quad	0x3fdd6739a11beb9a              # double 0.45942536099726683
	.quad	0x3fee1d59c6da126e              # double 0.94108284796000219
	.quad	0x3fd51e91fcaa6570              # double 0.32999086069465644
	.quad	0x3fec7b84a1a36613              # double 0.89007789201713405
	.quad	0x3fd4dd6b19b4baea              # double 0.32601430425977063
	.quad	0x3fc7f68ca85b0b54              # double 0.1872115919159919
	.quad	0x3feaf225908dc0e8              # double 0.84205892785214775
	.quad	0x3fea9580b32d70c3              # double 0.83074984546285469
	.quad	0x3fedbfdb7a2831d6              # double 0.92967008456030942
	.quad	0x3fe09307fa7eb010              # double 0.51794814038066939
	.quad	0x3fe44f2aaa067177              # double 0.63466389854470051
	.quad	0x3fec76993218a5ce              # double 0.88947734627179798
	.quad	0x3feccfea44cdf987              # double 0.90038026274105298
	.quad	0x3fe27f24d7e64e5d              # double 0.57802049796959987
	.quad	0x3fe5dac32c925d2e              # double 0.68295439439217431
	.quad	0x3fbf413c8c550bd0              # double 0.12208918024138815
	.quad	0x3fe68d73a2b4c174              # double 0.70476705339937817
	.quad	0x3fdaeafa5820d3e6              # double 0.42059191328308854
	.quad	0x3feabb80d8adbe20              # double 0.83538858718924657
	.quad	0x3fe38cbf611fca8d              # double 0.6109311005551078
	.quad	0x3fea0f05c4ab3a87              # double 0.81433380519759246
	.quad	0x3fe3049117570c79              # double 0.59430746611214069
	.quad	0x3feb851219a90e54              # double 0.85999398242752045
	.quad	0x3fe092af61315bf1              # double 0.51790589316340008
	.quad	0x3fe9dc98395fd63c              # double 0.80817805486612526
	.quad	0x3fed370982fca0a0              # double 0.91296840270389978
	.quad	0x3fd35c57f8210832              # double 0.3025112078795501
	.quad	0x3fde3484464ef3b4              # double 0.47195536485724721
	.quad	0x3fa81cf1acd41e60              # double 0.047095825526466184
	.quad	0x3fdbe8e76d0b839a              # double 0.43609033249782103
	.quad	0x3fe9ae17b10821e5              # double 0.80250153137700109
	.quad	0x3fc3fe271e86a8e8              # double 0.15619362822082583
	.quad	0x3fe48146d7b31da9              # double 0.64078085068552071
	.quad	0x3fcea0b8c1cf8a4c              # double 0.23927983725941926
	.quad	0x3fe76dadd339dc20              # double 0.73213855032998154
	.quad	0x3fe7fd5fe544d8d9              # double 0.74967951563919677
	.quad	0x3fe4131a561a178d              # double 0.62733189408094037
	.quad	0x3fab6bfa79d47af0              # double 0.053558184978319434
	.quad	0x3feb0f55736b1868              # double 0.84562180082936056
	.quad	0x3fe8e80d72620580              # double 0.77832672443780382
	.quad	0x3fd815b309d60b8c              # double 0.37632442436750391
	.quad	0x3fc2581c865ca4c4              # double 0.14331394730223768
	.quad	0x3fe4d9d2ceccb200              # double 0.65158977880997782
	.quad	0x3fe5fadcdd79d7d8              # double 0.68687289483090819
	.quad	0x3fe8405feac38615              # double 0.75785823681161679
	.quad	0x3fdb92303fe98426              # double 0.43079763642714608
	.quad	0x3fe1096de5be893d              # double 0.53240103599481581
	.quad	0x3fd642a1b8de713c              # double 0.34781687787632953
	.quad	0x3fe870f168a753a9              # double 0.76378698768768516
	.quad	0x3febf60833407def              # double 0.87378320703640877
	.quad	0x3feab33e2abe1af6              # double 0.83438022945560308
	.quad	0x3feaf8faff7ddd3d              # double 0.84289312267984651
	.quad	0x3feb41635cd2af91              # double 0.85173195008745683
	.quad	0x3fedd9fbfb8d123d              # double 0.93285941248956983
	.quad	0x3fd428251f5f5bae              # double 0.3149502569553374
	.quad	0x3fe659c2aea4fa28              # double 0.69845708952181429
	.quad	0x3fe6fc8e2d0aebf4              # double 0.71832951352496233
	.quad	0x3fd29bfc4e78402a              # double 0.2907706037813137
	.quad	0x3fe78bc0f453afb3              # double 0.73580978126618957
	.quad	0x3fd71bfcb289a424              # double 0.36108319697683755
	.quad	0x3fe3f28257c8a5b6              # double 0.6233531679655957
	.quad	0x3fcfddfc05f6ac14              # double 0.24896192828359232
	.quad	0x3fdbe35b62364b14              # double 0.43575176802657833
	.quad	0x3fe22744b6fabecf              # double 0.56729350794008748
	.quad	0x3fe771d7f86f0ebc              # double 0.73264692804556075
	.quad	0x3fe6c4bc444d9bea              # double 0.71151555386029242
	.quad	0x3fecac040ccbb622              # double 0.89599802493257052
	.quad	0x3fda705a91983156              # double 0.41310753076756634
	.quad	0x3feca730516011ec              # double 0.89540878194435213
	.quad	0x3fe6c24b77870c37              # double 0.71121762604923944
	.quad	0x3fbe828508571fc0              # double 0.11917907193776411
	.quad	0x3fe3d5753c5e5cde              # double 0.61980687895529818
	.quad	0x3fca39e4615c8964              # double 0.20489172700861069
	.quad	0x3fe2af3ff82459d3              # double 0.58389280762895124
	.quad	0x3fe3f4466744e4be              # double 0.62356872720479095
	.quad	0x3fde8a8adbc46dfe              # double 0.47720595800066679
	.quad	0x3fc488afad95b2e8              # double 0.16042133308237472
	.quad	0x3fe838c906f64ec0              # double 0.75693179473679351
	.quad	0x3fe88460648e30ed              # double 0.76615924491627896
	.quad	0x3fe94cfc340f092f              # double 0.79064760368081533
	.quad	0x3fe2916fa79008ee              # double 0.58025343634679216
	.quad	0x3fdf9c51f7d787f8              # double 0.49391602710068083
	.quad	0x3f8369bd270f43c0              # double 0.0094790246529629085
	.quad	0x3fe4c7ca7c61eaab              # double 0.64938854497389309
	.quad	0x3fab6374c95763b0              # double 0.05349316556721051
	.quad	0x3fc59c392222a928              # double 0.16883005301253573
	.quad	0x3fd34c3bddd732e4              # double 0.30152794517634463
	.quad	0x3fe022b9ac3cab0a              # double 0.50423892631565193
	.quad	0x3fe3f0ebed25ab77              # double 0.62315937345316186
	.quad	0x3fc12a2af1285a2c              # double 0.13409935736918166
	.quad	0x3fc207374c1702a0              # double 0.14084521498991354
	.quad	0x3f8ccaeb82616300              # double 0.01405891410483795
	.quad	0x3fd28df83ddbeb88              # double 0.2899151424496087
	.quad	0x3fc3c1b98a7fa5f8              # double 0.15434951079014048
	.quad	0x3fee3f2e6d7a59d3              # double 0.9452125681153184
	.quad	0x3fc1572f985d9690              # double 0.13547320308423538
	.quad	0x3fe279310bf1856c              # double 0.57729389507964646
	.quad	0x3fdd5cce0b606f5e              # double 0.45878935919767183
	.quad	0x3fa1ea34a7b6a4b0              # double 0.034989972565491967
	.quad	0x3fb1f73c9801dd78              # double 0.070178782569078169
	.quad	0x3fed2bff848e9029              # double 0.91162086381928475
	.quad	0x3fe8d7bee1b46089              # double 0.77633613665513324
	.quad	0x3feeda40d1691eee              # double 0.96414223576081581
	.quad	0x3fc70292211aeee0              # double 0.17976595512833793
	.quad	0x3fcd86c2d6648ee4              # double 0.23067508190535257
	.quad	0x3fd02df29dc81566              # double 0.25280442627293664
	.quad	0x3fb18f5f38973398              # double 0.068593932453224205
	.quad	0x3fca53a8982a41c0              # double 0.20567805700239994
	.quad	0x3fe3aec9a3767b6f              # double 0.61508638311702934
	.quad	0x3fea04c78587813f              # double 0.81308342056221494
	.quad	0x3fe9d0911f86b071              # double 0.80670982510993217
	.quad	0x3fe64f33dabc004d              # double 0.69716828080709947
	.quad	0x3fedbc67683776af              # double 0.9292485270959413
	.quad	0x3fee0b4902a27232              # double 0.93887758745728989
	.quad	0x3fe53beebf3f4929              # double 0.66356599190684051
	.quad	0x3fe613b50f2d2bec              # double 0.68990567173147843
	.quad	0x3fea636cdfdb935f              # double 0.82463687631807747
	.quad	0x3fee203ff98872b0              # double 0.94143675553239881
	.quad	0x3fc2b0a9fdaa765c              # double 0.14601635824230896
	.quad	0x3fa2df09426309e0              # double 0.036857880929819009
	.quad	0x3fd05b7705ed629c              # double 0.25558257654987826
	.quad	0x3fe9c7ff9ece5c29              # double 0.80566388146224199
	.quad	0x3fea6a69ad66a9c8              # double 0.8254898440111953
	.quad	0x3fe690ba23d5c0c3              # double 0.70516688345926359
	.quad	0x3fe66ff0ddf3c808              # double 0.70116465902378966
	.quad	0x3fd2f19c9009a1c6              # double 0.29599680010008134
	.quad	0x3fed746c0b95608e              # double 0.92046167623904451
	.quad	0x3febdbdeda9f6163              # double 0.87058966350290878
	.quad	0x3fe8c441e7afb454              # double 0.77395720721473049
	.quad	0x3fe603cf4dcab19f              # double 0.68796506112771627
	.quad	0x3fc5181c300c5ea0              # double 0.16479828210934944
	.quad	0x3fcaad2fefac1f68              # double 0.20841025545837089
	.quad	0x3fe4034002fafddb              # double 0.62539673406711971
	.quad	0x3fc91006856fbac4              # double 0.19580155864192339
	.quad	0x3fdf5d66f57ceb7e              # double 0.49007581685480506
	.quad	0x3fec46b6f5dbc8ca              # double 0.88363216418499602
	.quad	0x3faa267575b86f60              # double 0.051074667568370868
	.quad	0x3fd35fc952a62894              # double 0.30272133895108166
	.quad	0x3fe4ea5cf2353e47              # double 0.65360877329107658
	.quad	0x3f9e7e84bf500b60              # double 0.029779504944609569
	.quad	0x3fe0bda6f4290267              # double 0.52315089881456067
	.quad	0x3fe8b5e5f845f64e              # double 0.772204384716767
	.quad	0x3f9f1d483be9aa60              # double 0.030385140091690466
	.quad	0x3feb9ace4305bd86              # double 0.86264718141858121
	.quad	0x3fe3f13d481b3264              # double 0.62319816668748418
	.quad	0x3fe33ac7254d795f              # double 0.60092503820105125
	.quad	0x3fef62b37e709bff              # double 0.98079847998894809
	.quad	0x3fc3fb250055e848              # double 0.15610182300935294
	.quad	0x3fd51e5772b91d14              # double 0.32997690394809465
	.quad	0x3fe7a64ce6d45c60              # double 0.73905034145253623
	.quad	0x3fe71e6a9488432d              # double 0.7224629307766911
	.quad	0x3fd348a95ae8c2ae              # double 0.30130990865567753
	.quad	0x3fdb8788202fd31e              # double 0.43014720099681536
	.quad	0x3fd84a15984415b0              # double 0.37952175016138323
	.quad	0x3fe55f00d74b5c90              # double 0.66784708070453469
	.quad	0x3f94a9bb150a68c0              # double 0.020178721579761527
	.quad	0x3fd8f3a655ce960c              # double 0.38987120036685563
	.quad	0x3fed3cf4330ae5ef              # double 0.91369066209079886
	.quad	0x3fbc44ddb3349ad8              # double 0.11042581200727442
	.quad	0x3fcedc6718a94204              # double 0.2411011572280729
	.quad	0x3fc50bcccc2c7188              # double 0.16442260713018819
	.quad	0x3fe566561948c032              # double 0.66874222696606567
	.quad	0x3fe42f201815fdd3              # double 0.63075260834005531
	.quad	0x3fccbd5e7705c308              # double 0.22452908336301669
	.quad	0x3fd409f473fbaa94              # double 0.3131075985572036
	.quad	0x3fccfb2e0487744c              # double 0.22641539784572939
	.quad	0x3fe4576f8cf34902              # double 0.63567330865251415
	.quad	0x3fdc012b153374ba              # double 0.43757130690012114
	.quad	0x3fd6230374a0b712              # double 0.34588705434258415
	.quad	0x3fb427ce03d5ef08              # double 0.078732372223324742
	.quad	0x3fea39ac50bb56ce              # double 0.81954017417839409
	.quad	0x3fd6aeb629749ab0              # double 0.35441354797732583
	.quad	0x3fda96ef1edcd38e              # double 0.41546228422094422
	.quad	0x3fed569139df5dcd              # double 0.91681729605891749
	.quad	0x3fdcdaf61ac6c20c              # double 0.4508643399704233
	.quad	0x3fe84f6170ec5cb3              # double 0.75969001822786308
	.quad	0x3fb9ae362207c088              # double 0.10031450587098523
	.quad	0x3fe82bd6188d26bc              # double 0.75535111231984997
	.quad	0x3fd7cb8bf75849f2              # double 0.37179850725911401
	.quad	0x3fe6ddadf104d92b              # double 0.71456048082362622
	.quad	0x3fec5b6b8b8a9fb3              # double 0.88615967992972455
	.quad	0x3fc962985bb75f14              # double 0.1983213851769895
	.quad	0x3fdb05e6b75903e4              # double 0.42223518281030992
	.quad	0x3fddc22f4fb9bc26              # double 0.464977100235901
	.quad	0x3feddd443d4fc00b              # double 0.93326007819087076
	.quad	0x3fb11ca8469e62e0              # double 0.066843526116268759
	.quad	0x3fecb92043b3e898              # double 0.89759839270779462
	.quad	0x3fe892ff6aa68f55              # double 0.76794405775261032
	.quad	0x3fcb476b37c963fc              # double 0.21311702941855504
	.quad	0x3fd2f42bc668b766              # double 0.29615301490672719
	.quad	0x3fcac2eaf784abe4              # double 0.20907342038967081
	.quad	0x3feadd5ac161f093              # double 0.8395208146098575
	.quad	0x3fb56272c68bcd28              # double 0.083533452485245463
	.quad	0x3feae45389e017c5              # double 0.84037186554700638
	.quad	0x3fe0b22ef1ef0217              # double 0.52175090077077158
	.quad	0x3fea08fdc5e984ab              # double 0.81359757094118856
	.quad	0x3fe3dfdabde1b28c              # double 0.62107598387008656
	.quad	0x3fefffc2f40a36b6              # double 0.99997089065592237
	.quad	0x3fde8ac9d1f37114              # double 0.4772209692289533
	.quad	0x3fe5d69e151ac8db              # double 0.68244842645642778
	.quad	0x3fecfe376b58c04d              # double 0.90603228536748193
	.quad	0x3fde64029b0d2d8e              # double 0.47485413686509836
	.quad	0x3fe2bfb4b01634ad              # double 0.58590158836309103
	.quad	0x3fe904437f0d848e              # double 0.78177046599388844
	.quad	0x3fb14ca0c6c3b7f0              # double 0.06757550099038645
	.quad	0x3fd7ca0759948b74              # double 0.37170585392066546
	.quad	0x3fef4fb37b260084              # double 0.97847913792067275
	.quad	0x3fe8cfea4d124569              # double 0.77538027813913601
	.quad	0x3fea6675604cefdd              # double 0.82500714119623419
	.quad	0x3fcd82b583aa2850              # double 0.23055142334880196
	.quad	0x3fc0e26229091d44              # double 0.13190867427531761
	.quad	0x3fee7c3a3f4a2ba7              # double 0.95266449319148172
	.quad	0x3fdf689db30061a4              # double 0.49076025467504736
	.quad	0x3fee04c9182ebc01              # double 0.93808417056231985
	.quad	0x3feb3e5224890f54              # double 0.85135752807443987
	.quad	0x3fa597686c8f22a0              # double 0.042170775653692205
	.quad	0x3fe255e20ee057d3              # double 0.57298376946959662
	.quad	0x3fda7a1e58820ff0              # double 0.41370352404942334
	.quad	0x3fe8588e487638ac              # double 0.76081003334708929
	.quad	0x3fe93bc30a378bf5              # double 0.78854515071395659
	.quad	0x3fcc25c2f571a350              # double 0.21990239128651945
	.quad	0x3fe8ade9ff5344c6              # double 0.77122974270073352
	.quad	0x3fa9e426e5cded50              # double 0.050568786194129189
	.quad	0x3fe06e194b0cb363              # double 0.51343979509475124
	.quad	0x3fcab7c909420790              # double 0.20873368217513333
	.quad	0x3fef4f6a94ba5503              # double 0.97844437645349591
	.quad	0x3fdd510bd071080a              # double 0.45807166438692148
	.quad	0x3fcd5864b6abfd0c              # double 0.22926005286715456
	.quad	0x3fe8e5f78c474cff              # double 0.77807214162967842
	.quad	0x3fe1c57b1dfc19dd              # double 0.55535655838394471
	.quad	0x3fb84a0552ee8ac0              # double 0.094879467722914335
	.quad	0x3fc21f9f141d08b4              # double 0.14159000856495185
	.quad	0x3fb17c6fef7e1e78              # double 0.068305011720548481
	.quad	0x3fcb23637616b580              # double 0.21201747194337983
	.quad	0x3fd78493fce58e3e              # double 0.36746692368453526
	.quad	0x3fed91aa20ac4777              # double 0.92403131848753517
	.quad	0x3fe97832ecc1ed88              # double 0.79592272035317624
	.quad	0x3fea6040c8200d57              # double 0.82424964034036463
	.quad	0x3fd60392ee8c938a              # double 0.34396813674748528
	.quad	0x3f6a8b596a31a000              # double 0.0032402750380704504
	.quad	0x3fbc6a36b82fd998              # double 0.1109956931758006
	.quad	0x3fe404a54b70ece6              # double 0.62556709990113002
	.quad	0x3fe55ed2064f1200              # double 0.66782475692940579
	.quad	0x3fdce4a96064b138              # double 0.45145639813815164
	.quad	0x3fe05b040dcc2821              # double 0.51111033148595564
	.quad	0x3fc0bc7a7b9ea778              # double 0.1307519057857538
	.quad	0x3fbc6f426e50ae40              # double 0.11107268517724211
	.quad	0x3fec98dd52e8809f              # double 0.89366022294054293
	.quad	0x3fcfc87123624f24              # double 0.24830450275168758
	.quad	0x3fedc12e01307294              # double 0.92983150703692496
	.quad	0x3fe6d928773abd86              # double 0.71400855338099301
	.quad	0x3fe9dcb5d04ff2a9              # double 0.80819216428752327
	.quad	0x3fe01f7507c1e19a              # double 0.50383998408419761
	.quad	0x3fb0fef47dca3278              # double 0.066390305242927883
	.quad	0x3fd3041e6834fa74              # double 0.29712639023265486
	.quad	0x3fc6d38f129f6d18              # double 0.17833126458467841
	.quad	0x3fe1c2434209f49c              # double 0.55496371172161529
	.quad	0x3feea6e3b561da0f              # double 0.9578722517606496
	.quad	0x3fe264d399c2e0da              # double 0.57480793029301513
	.quad	0x3feb022890ed5464              # double 0.84401348405903009
	.quad	0x3fde97d1c49f8956              # double 0.47801632119639714
	.quad	0x3fd33174ffdb79e2              # double 0.29989361749713173
	.quad	0x3fe4dbd84e49355a              # double 0.65183654108265476
	.quad	0x3fa3b2ae29421a00              # double 0.038472597633745664
	.quad	0x3fdeb2e5423432ce              # double 0.47966891732430106
	.quad	0x3fe251f171ce3fda              # double 0.57250282504719086
	.quad	0x3fec34c184e0eed3              # double 0.8814399333272952
	.quad	0x3feec560eb297a8c              # double 0.96159406595309482
	.quad	0x3fe6e9919e862be1              # double 0.71601181947459847
	.quad	0x3fe620a7e8d926c0              # double 0.69148631551907869
	.quad	0x3fd4f12bea4a3b9a              # double 0.32721994285469125
	.quad	0x3fd7bb039daa4960              # double 0.37078943631163064
	.quad	0x3fec10d586a054c2              # double 0.87705494207570944
	.quad	0x3fd01a25e7ab6212              # double 0.25159595130892953
	.quad	0x3fea48bcb8afe4a4              # double 0.82137905189224058
	.quad	0x3fe93262931a1e26              # double 0.78740051966537261
	.quad	0x3fd682f664cac958              # double 0.35174331515294943
	.quad	0x3fd8190154a26726              # double 0.37652619614674376
	.quad	0x3fed208a55f801cb              # double 0.91022221365715816
	.quad	0x3fb64901294f52b0              # double 0.087051460824407511
	.quad	0x3fe1d75ff9ef47f2              # double 0.55754088225717013
	.quad	0x3fd932b54bc24328              # double 0.39371998213123272
	.quad	0x3fbf8e830aea91a8              # double 0.12326830879698625
	.quad	0x3fd3749e1a238fb0              # double 0.30399277260425617
	.quad	0x3fbc7934460cbc38              # double 0.1112244292278185
	.quad	0x3fd1e9998749b0d6              # double 0.27988279544548555
	.quad	0x3fbc6590df445df0              # double 0.11092477274757306
	.quad	0x3fe5daef8a84eafa              # double 0.68297555021794598
	.quad	0x3fee6a622702ca97              # double 0.95048625582997459
	.quad	0x3fe47ca4aefbf61f              # double 0.64021524597746182
	.quad	0x3fc8ef75637cca48              # double 0.19480769498621187
	.quad	0x3fec686b80632769              # double 0.88774657321594674
	.quad	0x3fd6770889f034d4              # double 0.35101521940744118
	.quad	0x3fe9997cc9eab25f              # double 0.79998626171943588
	.quad	0x3fefe36ec4589017              # double 0.99651277874773114
	.quad	0x3fe56d55f965fea5              # double 0.66959665976169858
	.quad	0x3fb070756de814c8              # double 0.06421598370805548
	.quad	0x3fc9ac956e6fad6c              # double 0.20057933704752473
	.quad	0x3fc34389bce8e988              # double 0.15049859737503035
	.quad	0x3fe41a0c11e93de3              # double 0.62817958353292302
	.quad	0x3f73e49f10937800              # double 0.004856702181511352
	.quad	0x3fe2fde046dba986              # double 0.59349073256935081
	.quad	0x3fb75a0d3c907090              # double 0.091217829977212838
	.quad	0x3fe95269da638fa3              # double 0.79131024030765607
	.quad	0x3fe27f466404c8f7              # double 0.57803649458790474
	.quad	0x3fe280f04bd81a1a              # double 0.57823958218870364
	.quad	0x3fe0f2822aaff8c0              # double 0.52960308396702516
	.quad	0x3fe36390995c2660              # double 0.60590391114346787
	.quad	0x3fe86122e19312c1              # double 0.76185745294113627
	.quad	0x3fd2ee33baea826c              # double 0.29578870061417351
	.quad	0x3fd04d6191c392b0              # double 0.25472296938668659
	.quad	0x3fd0f92d3d2d5086              # double 0.26520853971783998
	.quad	0x3fda5b4ff51f52dc              # double 0.41182326257448465
	.quad	0x3fb59071b59d69b8              # double 0.084235293235372377
	.quad	0x3fd8ec49af10abdc              # double 0.3894218644733749
	.quad	0x3fd6239b458263ce              # double 0.34592325008412395
	.quad	0x3fb53a9bfc0de830              # double 0.082925557171535713
	.quad	0x3fe0b30e25a146ff              # double 0.52185733174903237
	.quad	0x3fd9b621d95ab082              # double 0.40174146867753546
	.quad	0x3fe8056feda6005d              # double 0.7506637231417802
	.quad	0x3fe08b952e6011de              # double 0.51703890855474888
	.quad	0x3fcfb1000b171598              # double 0.24758911649238935
	.quad	0x3fd1971372010506              # double 0.2748459447212358
	.quad	0x3fe2849ef2461b81              # double 0.57868907279122095
	.quad	0x3fc15a473a640704              # double 0.13556757308111156
	.quad	0x3fe766d75fa9d1fd              # double 0.73130387005090791
	.quad	0x3fe9662879c82947              # double 0.79372047219775588
	.quad	0x3fc5f191b23f5a7c              # double 0.17143460467805827
	.quad	0x3fd7820424be395a              # double 0.36731055820646008
	.quad	0x3fe5ea2773afee3f              # double 0.68483326525842603
	.quad	0x3fb9f5d85bc4c9c0              # double 0.10140754929015028
	.quad	0x3f8d73bd85309600              # double 0.014380913378839288
	.quad	0x3fe0199f9e995637              # double 0.50312787033425976
	.quad	0x3feb31069a9d4e96              # double 0.84973459432736109
	.quad	0x3fe05eb16cb38015              # double 0.51155921202371479
	.quad	0x3fb045221225d028              # double 0.063554887228577273
	.quad	0x3fe921114e7ccc6d              # double 0.78528657273853997
	.quad	0x3fd7d7d47bf356de              # double 0.37254821877045952
	.quad	0x3fefefb7bb304b9a              # double 0.99801241455348877
	.quad	0x3feafaed3ea59e86              # double 0.84313070522053191
	.quad	0x3fdef15095e85e58              # double 0.48347868575499353
	.quad	0x3fba11a555d31e80              # double 0.10183175416306689
	.quad	0x3fe23f2be165c92f              # double 0.57021135352105101
	.quad	0x3fce30f2afbb05fc              # double 0.23586877422899011
	.quad	0x3fcbaaab3126a690              # double 0.21614589595747136
	.quad	0x3feaeeeed40e0fea              # double 0.84166661660173969
	.quad	0x3fe6ad0299cdde2d              # double 0.70861940421941016
	.quad	0x3fe08f8f89e34bbc              # double 0.51752449923730337
	.quad	0x3fdb9a7e95c1e456              # double 0.43130459427590517
	.quad	0x3feb1ba5990cdee9              # double 0.84712486164695833
	.quad	0x3fc51cc5c833bde4              # double 0.16494056964391668
	.quad	0x3fb11af122607de0              # double 0.066817351239016443
	.quad	0x3fc052db9a44b964              # double 0.12752862007750843
	.quad	0x3fe9b400d44c132f              # double 0.80322305168428965
	.quad	0x3fa56733ea6efec0              # double 0.041802999846820565
	.quad	0x3fc9c1b14267da4c              # double 0.20122352354492745
	.quad	0x3fe752405daf165e              # double 0.72879045770305217
	.quad	0x3fe18a26ed84abce              # double 0.54811426534922147
	.quad	0x3fe7d43c308bd914              # double 0.74465760690398719
	.quad	0x3fefc3fed3f6d4fb              # double 0.99267522238974892
	.quad	0x3fe561c2b3693b1a              # double 0.66818366090032844
	.quad	0x3fe821625be69b25              # double 0.75407522153259221
	.quad	0x3fc6a5555b7cc430              # double 0.17692057578236264
	.quad	0x3fe853d8748f50e2              # double 0.76023504987326995
	.quad	0x3feb3ae2b4e08965              # double 0.85093818023260026
	.quad	0x3fc86634a5c083e0              # double 0.19061906903610204
	.quad	0x3febf28f7a42e1a7              # double 0.87335943106795788
	.quad	0x3f9f8076e0ecbae0              # double 0.030763490179363084
	.quad	0x3fe9218ce72f7d2f              # double 0.78534550813120585
	.quad	0x3fea427eb99d6723              # double 0.82061706784154287
	.quad	0x3fe82bacdd552d1b              # double 0.75533145169302729
	.quad	0x3fb22a35e755bfb0              # double 0.07095658204866484
	.quad	0x3fe02f43db8847b0              # double 0.50576966168795501
	.quad	0x3fcf71d50a642228              # double 0.24566138274555382
	.quad	0x3fec22c3d40cddb4              # double 0.87924376884523391
	.quad	0x3fed3078f781ec8f              # double 0.91216705647765817
	.quad	0x3fdec8f958587966              # double 0.48101647975445017
	.quad	0x3fe50801b81adce8              # double 0.65722738225931909
	.quad	0x3fd2f02c36b52fd2              # double 0.29590897886805323
	.quad	0x3fe4b89b1394b293              # double 0.64753488373169643
	.quad	0x3fd5ac00278fd9a0              # double 0.33862308371990402
	.quad	0x3fe2e8e8c0ae138f              # double 0.59093129761514429
	.quad	0x3fc88fb9432eeecc              # double 0.19188609867511841
	.quad	0x3fdf038be2579e78              # double 0.48459145644890311
	.quad	0x3fd24468a5f46976              # double 0.28542534071461689
	.quad	0x3fcc1f98e72fb968              # double 0.21971427238845398
	.quad	0x3fcd5f7668a95e70              # double 0.2294757853548961
	.quad	0x3fdf8af842729ee2              # double 0.49285704125439456
	.quad	0x3fdc5f56a0a967d8              # double 0.4433189934694588
	.quad	0x3fcbfc838329f578              # double 0.21864360718238252
	.quad	0x3fae634619bee040              # double 0.059351149218344279
	.quad	0x3fc81d52bb382c9c              # double 0.18839487210820927
	.quad	0x3fe42c769062b12c              # double 0.63042762947364883
	.quad	0x3fdf20587986a910              # double 0.48634921901488415
	.quad	0x3fef92aa337a602d              # double 0.98665342382719745
	.quad	0x3fe98f9ee3238ffc              # double 0.79878181803769576
	.quad	0x3fd7c87740bb4bbc              # double 0.37161046334693615
	.quad	0x3fea33f7f460325a              # double 0.81884381990091559
	.quad	0x3fe32b24ea0f20f5              # double 0.59901662554423629
	.quad	0x3feacae422933f4c              # double 0.83726698639837016
	.quad	0x3fda003867410f7e              # double 0.40626344760334365
	.quad	0x3fc62aa9f8de0790              # double 0.17317700053905272
	.quad	0x3fe071ca80f330e7              # double 0.51389050660648372
	.quad	0x3fca17ce13cbff80              # double 0.20385147062915721
	.quad	0x3feae12c53c48377              # double 0.83998695717683247
	.quad	0x3fee0643e714fb9a              # double 0.93826480038829918
	.quad	0x3fe4db1b00e592c0              # double 0.65174627471113666
	.quad	0x3fe682633efef6e2              # double 0.70341646484277143
	.quad	0x3fd724de08fc04cc              # double 0.36162520291697997
	.quad	0x3fe21cd0c23c170e              # double 0.56601751266927791
	.quad	0x3fe5ebe8831a098e              # double 0.68504739385416413
	.quad	0x3fb7f90b54c86330              # double 0.093643863867680421
	.quad	0x3faee14bcfc55750              # double 0.060312623131422272
	.quad	0x3feb83da05166427              # double 0.8598451709141316
	.quad	0x3fbe88079e527f00              # double 0.11926314940728489
	.quad	0x3fc56d83aa6ee9c8              # double 0.16740461179672494
	.quad	0x3febccae28d58ab1              # double 0.86873538947505413
	.quad	0x3fc59238c27b7c3c              # double 0.16852483268937302
	.quad	0x3fc4f9b602055d00              # double 0.16387057398490157
	.quad	0x3fe2dd8b1fdccb75              # double 0.58954387877598313
	.quad	0x3fe17e6ddbd672c8              # double 0.54668324410484903
	.quad	0x3fb5d8c26f36fc18              # double 0.085338737632796202
	.quad	0x3fd8f55784258082              # double 0.38997447876864311
	.quad	0x3fedcd95218c448c              # double 0.93134552528694447
	.quad	0x3fd31418e1ba4d9c              # double 0.29810163539624468
	.quad	0x3feac5f5d7d7ec1b              # double 0.83666507870600826
	.quad	0x3f90ebdf415b4360              # double 0.016524780620616908
	.quad	0x3fe9a352b7998d4d              # double 0.80118690356577249
	.quad	0x3fd9b6f2e9e6e128              # double 0.40179131357173725
	.quad	0x3fd612c63b5b968e              # double 0.34489589497238959
	.quad	0x3fe6b5152f3bee70              # double 0.70960482812320258
	.quad	0x3fd7afbc7facb528              # double 0.37010109394289481
	.quad	0x3fdcfac06d08c86e              # double 0.45280466697580024
	.quad	0x3fd50b1da35e0498              # double 0.3288034530051589
	.quad	0x3fe4292a7c1324a4              # double 0.63002514108042762
	.quad	0x3fea459f4c180601              # double 0.82099881040647926
	.quad	0x3fa5b7e9ba18fd30              # double 0.042418769804948631
	.quad	0x3fa44ff7cb817e20              # double 0.039672607032795293
	.quad	0x3fe330cc4615ed76              # double 0.59970678032497804
	.quad	0x3fe2b2a6aec64dac              # double 0.58430799613636486
	.quad	0x3fc2eb41dad7d30c              # double 0.14780448136993873
	.quad	0x3fc4d676cd834340              # double 0.16279492411424634
	.quad	0x3fec43a6607b4baa              # double 0.88325804561678933
	.quad	0x3fe2f48f3f11bb7d              # double 0.59235346143928747
	.quad	0x3fe736f0f1a76ca0              # double 0.72545668790862194
	.quad	0x3fddc335e03d667e              # double 0.46503970049307231
	.quad	0x3fe4d1e47b369268              # double 0.65062164368698649
	.quad	0x3fecbc3c652532b5              # double 0.89797801737730387
	.quad	0x3fe5a782a6b88edd              # double 0.6766980415599978
	.quad	0x3fbe3441f5ba8238              # double 0.11798488854629674
	.quad	0x3fe5b062732056c4              # double 0.67778131948099274
	.quad	0x3fdb996bac698758              # double 0.43123905026560783
	.quad	0x3fafa476d69e4710              # double 0.061801637362021933
	.quad	0x3fe1b0025c131a33              # double 0.55273550017665796
	.quad	0x3fe3b65be256df27              # double 0.61601061064627494
	.quad	0x3fe948190de4ebbb              # double 0.79005100930896022
	.quad	0x3fe4bb980d39029b              # double 0.64789965231473745
	.quad	0x3feed2632e8bebb2              # double 0.96318205920339595
	.quad	0x3fb0b630585cdb50              # double 0.065279981205873527
	.quad	0x3feae7e18f05baf7              # double 0.84080579694804569
	.quad	0x3fded3c0fa311aa0              # double 0.48167442734522048
	.quad	0x3fcea9e261225ad4              # double 0.23955945723419936
	.quad	0x3fe08c373fdbb1d1              # double 0.51711618873883414
	.quad	0x3fc5e1c0f36a8f54              # double 0.17095195661124285
	.quad	0x3fe38df83cca07ce              # double 0.61108028290640859
	.quad	0x3fe465ad94507562              # double 0.63741187064776406
	.quad	0x3fe6cad8c78e4d7b              # double 0.71226157165294468
	.quad	0x3fab5679485093f0              # double 0.053394117429242161
	.quad	0x3fe7a1c4a4b2ffd5              # double 0.73849708717170393
	.quad	0x3fe09cb4a771823b              # double 0.51912911132610107
	.quad	0x3fb38509b24e7e98              # double 0.076248746902360387
	.quad	0x3fdf137a3bb66d7c              # double 0.4855638106471003
	.quad	0x3fd9b44f2749a4f0              # double 0.40163019978224579
	.quad	0x3fe5e71f663979f1              # double 0.68446321454740489
	.quad	0x3fe4622152599ddf              # double 0.63697877964017013
	.quad	0x3fca940a3534ff38              # double 0.20764281843184462
	.quad	0x3fc230ce3ec622c4              # double 0.1421144300950542
	.quad	0x3fb94ba148275130              # double 0.09881027232706141
	.quad	0x3fd43d483c7f787c              # double 0.31624036701203528
	.quad	0x3fe116a987d5abd2              # double 0.53401638536649387
	.quad	0x3fc3033d67c10870              # double 0.1485363728152751
	.quad	0x3fc7b44687986dcc              # double 0.18518907185430888
	.quad	0x3f975eb3a9953320              # double 0.022822196221841229
	.quad	0x3fea7fc4f4da92d3              # double 0.82809684584625598
	.quad	0x3fdce7777fc4b7d2              # double 0.45162761189828615
	.quad	0x3fd84deb7cbc0124              # double 0.37975585156529434
	.quad	0x3fe7221696624eae              # double 0.72291116115453291
	.quad	0x3fe1b1683abd3000              # double 0.55290614578689201
	.quad	0x3fe72c5462ccdd01              # double 0.72416133210109035
	.quad	0x3fd572aa112d21f4              # double 0.33512355496762258
	.quad	0x3fc777d18b37f83c              # double 0.18334407136711828
	.quad	0x3fc2479f62f44220              # double 0.14281074840302299
	.quad	0x3fe760e25265aaf4              # double 0.73057666867438664
	.quad	0x3fee095f5774cecb              # double 0.93864409524254577
	.quad	0x3fe4df3d5918373b              # double 0.6522509327057614
	.quad	0x3f817d2b27229a80              # double 0.0085395213430505823
	.quad	0x3fee102141fbed63              # double 0.9394689835311677
	.quad	0x3fdef0eff245bb3e              # double 0.48345564517414974
	.quad	0x3fcdbda4007d3e64              # double 0.23234987281692832
	.quad	0x3fe4a8f82534cfb1              # double 0.64562613741735764
	.quad	0x3fe46efc8a1808a0              # double 0.6385481545587659
	.quad	0x3fa0259535ce9290              # double 0.031536734407642375
	.quad	0x3fcd78488da8bd08              # double 0.23023325840902253
	.quad	0x3fe4a354460faca9              # double 0.64493764575799617
	.quad	0x3fe702362e81d2c0              # double 0.71901997645780824
	.quad	0x3fefb46a954d672e              # double 0.99077347908607805
	.quad	0x3fea6cce8baa7955              # double 0.82578208235262685
	.quad	0x3fd9cddb40466e86              # double 0.40318948056094717
	.quad	0x3fec297df46e18cf              # double 0.88006494274375224
	.quad	0x3fbf1c8d35003f20              # double 0.12152941268891171
	.quad	0x3fe6fb812735b111              # double 0.71820123346472731
	.quad	0x3fec62e36f58f8a3              # double 0.88707134006087462
	.quad	0x3fe886da6350736a              # double 0.76646155736271493
	.quad	0x3fe501ec9944a38c              # double 0.65648488936595717
	.quad	0x3fd6cca0f7ddb052              # double 0.35623954969083116
	.quad	0x3fd5512cb3e79748              # double 0.33307950562299427
	.quad	0x3fe26486f32f0638              # double 0.57477138039411724
	.quad	0x3fdfb9942aca7712              # double 0.49570182970806898
	.quad	0x3fe7549346658ce0              # double 0.72907413243629193
	.quad	0x3fc0fff9a0951bc0              # double 0.13281174031200571
	.quad	0x3fe4b45be326a790              # double 0.64701647153309416
	.quad	0x3fe26fd2ccca23f0              # double 0.57615032194109794
	.quad	0x3fe0b62ad4119450              # double 0.52223721904432274
	.quad	0x3fecac27dee5a463              # double 0.8960151055772595
	.quad	0x3fe5df69484a5352              # double 0.68352188224035104
	.quad	0x3fc9b8dc32ff37e8              # double 0.20095398416600507
	.quad	0x3fecac073f56a8a2              # double 0.89599954958727701
	.quad	0x3fc4b2dcbfffd45c              # double 0.16170844435660825
	.quad	0x3fc24d08fcbe09b4              # double 0.14297592488226274
	.quad	0x3fb877bf037535a8              # double 0.095577181190683036
	.quad	0x3fe0fe8be3aa2eb1              # double 0.53107256379867895
	.quad	0x3fb9365bf30a9bb8              # double 0.09848570521954414
	.quad	0x3fc3db12aa9e5e40              # double 0.15512307482707577
	.quad	0x3fc37459ba8ddabc              # double 0.15198823556030117
	.quad	0x3fed516f3e29da52              # double 0.9161907400255791
	.quad	0x3fe0e871761b37f7              # double 0.52837441508904603
	.quad	0x3fd6698955124fb8              # double 0.35019143398062225
	.quad	0x3fc8cb0fe1420bc4              # double 0.19369696139264481
	.quad	0x3fc51e103a227808              # double 0.16497996176343599
	.quad	0x3fc3628b69433790              # double 0.15144484176419981
	.quad	0x3fd8ec59e62b7f16              # double 0.38942573049097129
	.quad	0x3fedf9962dab8531              # double 0.93671711845323646
	.quad	0x3fdfe06268f89170              # double 0.49807033778258525
	.quad	0x3f77236779dc4c00              # double 0.0056489984542791305
	.quad	0x3fbd349b72b50170              # double 0.11408397245850721
	.quad	0x3fa3de1dc0580250              # double 0.038803987245050409
	.quad	0x3fd4e58b321d10f4              # double 0.32651023763561615
	.quad	0x3faee0534a7e30a0              # double 0.060305216639876535
	.quad	0x3fe5f4a8af7f0c52              # double 0.68611559177987602
	.quad	0x3fe51fabbbeec5ef              # double 0.66011606889349916
	.quad	0x3fd3ef52aaa1deee              # double 0.31148211158095662
	.quad	0x3fe6dd461c060713              # double 0.7145109698614952
	.quad	0x3fcd8f82c4cc6938              # double 0.23094210252095038
	.quad	0x3fe636460de08f37              # double 0.69412520132434608
	.quad	0x3fe3e8b4d1c75f7d              # double 0.62215653393194226
	.quad	0x3fc51c7392801314              # double 0.16493076947531249
	.quad	0x3fdcecbd99064694              # double 0.45194950050163496
	.quad	0x3fd89860b4e86282              # double 0.38430040041706814
	.quad	0x3fec8e0db3da8fca              # double 0.89234051826178384
	.quad	0x3fa6d28b75024940              # double 0.044575078996006656
	.quad	0x3fe9ee4c3b282362              # double 0.81033908418713119
	.quad	0x3fd6ea40d20c0b44              # double 0.35804768097311901
	.quad	0x3fec4cdeabd3bc33              # double 0.88438352165201761
	.quad	0x3fe56c897bf1671b              # double 0.6694991513024634
	.quad	0x3fd855aef2d188d6              # double 0.38022969925635886
	.quad	0x3fd47c382f17c8e2              # double 0.32008175467411892
	.quad	0x3fc758e5d8e553c8              # double 0.18240044680228906
	.quad	0x3fd4c9156ce61a98              # double 0.32477317461636224
	.quad	0x3fe98ef91b67d2c6              # double 0.79870276787422578
	.quad	0x3fde27741b0fc440              # double 0.47115805285199386
	.quad	0x3fb1e474cd658e40              # double 0.069892215867690233
	.quad	0x3fed35df24978484              # double 0.91282612940644058
	.quad	0x3fc24bce9d79b288              # double 0.14293844880321083
	.quad	0x3fe78c217e76dc6b              # double 0.73585581493433716
	.quad	0x3fef3962c143c823              # double 0.97575509783769509
	.quad	0x3f77321ac00bf880              # double 0.005663017743016252
	.quad	0x3fee74f32ed3c3b5              # double 0.95177611490190961
	.quad	0x3fd9d1f71ca5d1ee              # double 0.40344026372556996
	.quad	0x3fde01c152767ff8              # double 0.46885712674156776
	.quad	0x3fea5ce88d5f130a              # double 0.82384135829542626
	.quad	0x3fec1c66662ea896              # double 0.87846679646942749
	.quad	0x3fe59ce16586286c              # double 0.67540044621388295
	.quad	0x3fba5bdd985e1d30              # double 0.10296425790703689
	.quad	0x3f757b8639c96080              # double 0.0052447550957240852
	.quad	0x3fed9036d5fca329              # double 0.92385427278813836
	.quad	0x3fb8ee369c53f038              # double 0.09738484684561477
	.quad	0x3fec27708e7875e3              # double 0.8798144133212954
	.quad	0x3feb852c1215f5d5              # double 0.8600063660848557
	.quad	0x3fc0e4c64f8547d0              # double 0.1319816482815086
	.quad	0x3fec8d18f64312e0              # double 0.8922238168530292
	.quad	0x3fd6b8ed895cefb8              # double 0.35503710188254045
	.quad	0x3fe5e7ac3fde32ad              # double 0.68453037714205822
	.quad	0x3fca17f4180e8d80              # double 0.20385600256586756
	.quad	0x3fe33a4dc6d40412              # double 0.60086716493253989
	.quad	0x3fd53e702912f7f2              # double 0.33193592082159207
	.quad	0x3fd3c56ce7eff3f0              # double 0.3089248909962512
	.quad	0x3fdf53f3ba8eeb20              # double 0.48949902742940488
	.quad	0x3fc1a82e0d3b74e0              # double 0.13794494291406689
	.quad	0x3fe197277ed1eafd              # double 0.54970145005731263
	.quad	0x3fc32b5131ed9a34              # double 0.14975943506142786
	.quad	0x3fe8c854d01f5143              # double 0.77445450447934439
	.quad	0x3febdae4bae927f0              # double 0.87047039514550129
	.quad	0x3fc33acedb787160              # double 0.15023217884380369
	.quad	0x3fe3e683525d469e              # double 0.62188879095829797
	.quad	0x3fe952b2d5a81aec              # double 0.79134504060570298
	.quad	0x3f877f4014eb1400              # double 0.011473179472327288
	.quad	0x3fecb7e8f6b600ea              # double 0.8974499529431601
	.quad	0x3fd298c345a07ad0              # double 0.29057390021800433
	.quad	0x3fbda7ce803b62c8              # double 0.11584177618659475
	.quad	0x3fa4cc8e816cdee0              # double 0.040623143481239188
	.quad	0x3fcb8139a4617688              # double 0.2148811390533647
	.quad	0x3fc8acf9ae7ccc3c              # double 0.19277878780266799
	.quad	0x3fe2f2203bc62f1b              # double 0.59205638575210473
	.quad	0x3fb691d9335fc040              # double 0.088162970583426592
	.quad	0x3fafa9733f265c50              # double 0.061839677294465489
	.quad	0x3fcd093bd1ef4e24              # double 0.22684428930971123
	.quad	0x3fc1f6cac88bd2ec              # double 0.14034399788183494
	.quad	0x3fedfa1f9578e5a1              # double 0.93678263849067289
	.quad	0x3fde8a24a62c17f4              # double 0.4771815893913065
	.quad	0x3fe70816501b1e1e              # double 0.71973720212639924
	.quad	0x3fe53b49a0b43f15              # double 0.66348725688473797
	.quad	0x3fe70bd81d0ac433              # double 0.7201958243587171
	.quad	0x3fe794f8c165406b              # double 0.73693502209245076
	.quad	0x3fe0e570765b541a              # double 0.52800772778084881
	.quad	0x3fdec7094ea9064a              # double 0.48089821511903053
	.quad	0x3fd479a3d05bbdf4              # double 0.31992431018349454
	.quad	0x3fd4918483ec7006              # double 0.32138169177210363
	.quad	0x3fe1558ee6fbd8b1              # double 0.54169411767977327
	.quad	0x3fdddff657a2bab8              # double 0.46679457243127898
	.quad	0x3fd5436f00be6de4              # double 0.33224082062380789
	.quad	0x3fec604e356fedd8              # double 0.88675604283292397
	.quad	0x3fee82cbfc9eb791              # double 0.95346640910951141
	.quad	0x3fe60babdabc99df              # double 0.68892472002044858
	.quad	0x3fd9f11817baa028              # double 0.40534021680150767
	.quad	0x3fcfda4e45a3dcc8              # double 0.2488496627845278
	.quad	0x3fb6356b8ee49990              # double 0.086752626787165221
	.quad	0x3fdbdf9ed3c292dc              # double 0.43552370719616618
	.quad	0x3feeeeebb6d1cad5              # double 0.96666513163503486
	.quad	0x3fb7128a294c4e40              # double 0.090126643259559991
	.quad	0x3fdfaa435b412ac4              # double 0.49476703559473045
	.quad	0x3fe3dd578993704d              # double 0.62076928015040667
	.quad	0x3fe6fe3d96b54b52              # double 0.71853522715751184
	.quad	0x3facb1effa9f3b20              # double 0.056045054763322222
	.quad	0x3fe09a6f34633009              # double 0.51885185462879335
	.quad	0x3fb5568c649b4bb0              # double 0.083351873933948494
	.quad	0x3fdb7670a42c1466              # double 0.42910400421562256
	.quad	0x3fba1923ee33e208              # double 0.10194611135001008
	.quad	0x3fe6ad08c11ce08f              # double 0.70862233846038858
	.quad	0x3fbc5d075d6423c8              # double 0.11079450635965238
	.quad	0x3feeea365f3b9855              # double 0.96609037971644318
	.quad	0x3fba1f0e1b1df170              # double 0.10203636323962484
	.quad	0x3fdb050eb9d13396              # double 0.42218368669710438
	.quad	0x3fd4e568f5107a36              # double 0.32650207454745173
	.quad	0x3fec862dcbc6515c              # double 0.89137925910703641
	.quad	0x3feb2411f9301634              # double 0.84815310163020862
	.quad	0x3fb2e2d342230ed0              # double 0.073773578306880028
	.quad	0x3fe51aaeba000339              # double 0.65950714424261669
	.quad	0x3fda6236c4ab2882              # double 0.41224450307766614
	.quad	0x3fd3a0e5a2c0648c              # double 0.30669537442879213
	.quad	0x3fe54df8fdb0955b              # double 0.66576814221177061
	.quad	0x3fa772971a4d2940              # double 0.04579612918913023
	.quad	0x3fed6ede4f636366              # double 0.91978374009623276
	.quad	0x3fdbc486dca663a2              # double 0.43387004421088637
	.quad	0x3fe2f7dd273c6c87              # double 0.5927568212822657
	.quad	0x3fe14f730d6f62c6              # double 0.5409484159855189
	.quad	0x3f928cc9b7bd2ca0              # double 0.01811518844560267
	.quad	0x3fc2f1187c43657c              # double 0.14798265521566722
	.quad	0x3fecf792b30b5e58              # double 0.90522131890879631
	.quad	0x3fde96d3ec44546e              # double 0.47795579979840042
	.quad	0x3f9e7739fee68fc0              # double 0.029751688177966917
	.quad	0x3fe0693288510bbe              # double 0.51284147857983675
	.quad	0x3fc7bca0ae9e6f00              # double 0.18544395948708114
	.quad	0x3fd59960d1b24ef6              # double 0.33748646238494417
	.quad	0x3feaac42de0f22bc              # double 0.83352797861979111
	.quad	0x3fe7aa42cf087c74              # double 0.73953381000673213
	.quad	0x3fe77eb04eb0c008              # double 0.73421492928719179
	.quad	0x3fc6f4da16f80c00              # double 0.17934728738336503
	.quad	0x3fcea147be055644              # double 0.2392968824230356
	.quad	0x3fe059b043281f75              # double 0.51094830624150112
	.quad	0x3fe6ce9842d49e7f              # double 0.71271908810463447
	.quad	0x3fe75547a2fd78be              # double 0.72916013559349557
	.quad	0x3fa68ffc504de710              # double 0.044067272951862191
	.quad	0x3fe87e0ffe4926af              # double 0.76538848557648531
	.quad	0x3fe01a40ae77e927              # double 0.50320467067584651
	.quad	0x3feb8e370b6c092b              # double 0.86111023169386181
	.quad	0x3fe8a16aa5ecf9c7              # double 0.76970417411194425
	.quad	0x3fe18d2024a9ae84              # double 0.54847724114138474
	.quad	0x3fe0ad381fbf7209              # double 0.52114492607830798
	.quad	0x3fe33df0b8c1893c              # double 0.60131107411533646
	.quad	0x3feb55a4d2dbe011              # double 0.85420457061172972
	.quad	0x3fdce95191d119fe              # double 0.45174063911363749
	.quad	0x3fe5563c343b56a9              # double 0.66677675439378448
	.quad	0x3fe246d50458ad04              # double 0.57114649628547953
	.quad	0x3fccb2e233dcf8a0              # double 0.22420909435635838
	.quad	0x3fd45e179f9e1fae              # double 0.31824293697035955
	.quad	0x3fdcd92f015eb8ee              # double 0.45075583585538836
	.quad	0x3fe90e39c254e60c              # double 0.78298652606389529
	.quad	0x3fe9b7170577b40b              # double 0.8035998446263205
	.quad	0x3fbe367c2297c3e8              # double 0.11801887363959873
	.quad	0x3fe034fbf31fb07c              # double 0.50646779523005092
	.quad	0x3f9a94563b1a93c0              # double 0.025956485135470109
	.quad	0x3fb73f6916622d10              # double 0.090811317410203651
	.quad	0x3fdd1b19e120695e              # double 0.45477911934871951
	.quad	0x3fe9eecc98f44a05              # double 0.81040029405477354
	.quad	0x3fd5e32adf4ec050              # double 0.34199020202050168
	.quad	0x3fd209bacc305afa              # double 0.28184385242768395
	.quad	0x3f9864abc0a7eda0              # double 0.023821529039180001
	.quad	0x3fe6d0554836b3d8              # double 0.71293129066691119
	.quad	0x3fea0d1777862b75              # double 0.81409810394812487
	.quad	0x3fec3f062012fcd3              # double 0.88269335045324693
	.quad	0x3fc80b9f73004070              # double 0.18785470118791947
	.quad	0x3fe90d769cbdc3fd              # double 0.78289347280053756
	.quad	0x3fc61b13b12c8ef4              # double 0.1727013220889756
	.quad	0x3fb37791bfbfcf78              # double 0.076043233217033435
	.quad	0x3fd720db1adf53a0              # double 0.36138036369566784
	.quad	0x3fb9a76e6eb42e48              # double 0.10021105005960707
	.quad	0x3fd7b238586d6b3c              # double 0.37025269160737984
	.quad	0x3fd747ebcd1fc4e8              # double 0.36376471549654221
	.quad	0x3fd934fe84521a68              # double 0.39385950967736116
	.quad	0x3fd95566d25dba52              # double 0.39583750289503883
	.quad	0x3fb7b992ebfdae90              # double 0.092675383200623295
	.quad	0x3fd96e6291fff920              # double 0.39736236818125015
	.quad	0x3fe681e3e4e9f8c3              # double 0.70335573873287449
	.quad	0x3fe9497f32ae2cb8              # double 0.79022178553113687
	.quad	0x3febd53d7278b44a              # double 0.86978027684893644
	.quad	0x3fd4ccd2e1189e82              # double 0.32500144941375464
	.quad	0x3fe67a39acb06c32              # double 0.70242007950162688
	.quad	0x3fab67da0ee088d0              # double 0.053526701274920208
	.quad	0x3fe3da2b128023b3              # double 0.62038186658275263
	.quad	0x3fd912f141a6a0dc              # double 0.39178115283222126
	.quad	0x3fc1170ca7b7b428              # double 0.13351591290793974
	.quad	0x3fe54ea41cf528b1              # double 0.66584973960677563
	.quad	0x3fb73af96ab89150              # double 0.090743626170085578
	.quad	0x3fe16ab0470c6333              # double 0.54427350880278025
	.quad	0x3fe9c2d79438e212              # double 0.80503443669937469
	.quad	0x3fde6207bdfb0950              # double 0.47473329117578533
	.quad	0x3feafafeeec9136e              # double 0.84313913953574882
	.quad	0x3f960bffe10b4aa0              # double 0.021530149565317402
	.quad	0x3fe5238d1f6ca05d              # double 0.66058975350916749
	.quad	0x3fe2ef7932822b9b              # double 0.59173259606301387
	.quad	0x3fe0cc3a40b59b11              # double 0.52493012083582091
	.quad	0x3fea4f7dda59054e              # double 0.82220356603662892
	.quad	0x3fe0cd64b649906b              # double 0.52507243731498698
	.quad	0x3fe36f43e973cdd3              # double 0.60733218761600438
	.quad	0x3fc82f5fb0eb7e5c              # double 0.18894573343912924
	.quad	0x3fefa9f9c87f0a06              # double 0.98949898871825392
	.quad	0x3fe6c11ca20f441c              # double 0.71107322361251901
	.quad	0x3fe6726e22f1c5fc              # double 0.70146853280147026
	.quad	0x3fee9b62b48a1389              # double 0.95646796475976814
	.quad	0x3fe3234957ecb1b5              # double 0.59805743382235355
	.quad	0x3fc408f28bbf5c60              # double 0.15652305434807356
	.quad	0x3fb3666a818f5b18              # double 0.075781494742255595
	.quad	0x3fe7be71ea20ac7f              # double 0.74199767807057515
	.quad	0x3fd01ed7caccf346              # double 0.25188250355477171
	.quad	0x3fe069e391b09344              # double 0.51292589621571283
	.quad	0x3fe97bf443666e7b              # double 0.79638112224661428
	.quad	0x3fe9a1892398c8c7              # double 0.80096871330740604
	.quad	0x3fd38d1525b20742              # double 0.30548599892800976
	.quad	0x3fe447eabb556840              # double 0.6337789210185818
	.quad	0x3fd681ab238a975e              # double 0.35166433783375861
	.quad	0x3fefe319358dbd36              # double 0.99647198161793571
	.quad	0x3feb1fa3869ab1f6              # double 0.84761215486429253
	.quad	0x3fb38850d0d2bd18              # double 0.076298762304521595
	.quad	0x3feac389f1b34bee              # double 0.83636948783020926
	.quad	0x3f839ec0e837b2c0              # double 0.0095801421038798073
	.quad	0x3fb58f6f31745aa0              # double 0.084219884466032457
	.quad	0x3febdb0f75af3770              # double 0.87049077019922372
	.quad	0x3f9e646acd3d2fc0              # double 0.02967993619613174
	.quad	0x3fecface95ed193a              # double 0.90561608583883602
	.quad	0x3fe0d023b68439d6              # double 0.52540765426402447
	.quad	0x3fb44a6f4f7425e8              # double 0.079260785005451972
	.quad	0x3fedd2de90139d0c              # double 0.93199089183772931
	.quad	0x3fecacf49e1155a3              # double 0.89611273644066036
	.quad	0x3fd4093f0dd26232              # double 0.31306434964929786
	.quad	0x3fed0f9fbf28f5fe              # double 0.90815722785890762
	.quad	0x3fd0f1ace6417046              # double 0.26475069509411175
	.quad	0x3faec261b70d1170              # double 0.060076764674280692
	.quad	0x3fec07dcbaa71aa4              # double 0.87595974403014453
	.quad	0x3fee19a59b210c6e              # double 0.94063072489406152
	.quad	0x3fe6d61ba83df3d8              # double 0.71363623485342043
	.quad	0x3f68d594d6f90f00              # double 0.0030315310503129522
	.quad	0x3fd33a2f0cfc1408              # double 0.30042625682864399
	.quad	0x3fee5b3772d5f656              # double 0.94863483837952844
	.quad	0x3feb52dc4424d124              # double 0.85386479672755344
	.quad	0x3fe41e1012d3c44e              # double 0.62866977383795031
	.quad	0x3fe5f60df516800c              # double 0.68628595226982858
	.quad	0x3fe9a6b19bbaa1e1              # double 0.80159836211992908
	.quad	0x3fdd80794354c30e              # double 0.4609664113550459
	.quad	0x3fe9de4d2dd18fcd              # double 0.80838641117997556
	.quad	0x3fc81d8aeb82dcf0              # double 0.188401570316024
	.quad	0x3fced82b9a1123f0              # double 0.2409719946174671
	.quad	0x3fc0b93051899388              # double 0.13065151196783753
	.quad	0x3fee8f3745584de3              # double 0.95498240989621441
	.quad	0x3fe16e3e8cad11eb              # double 0.54470756030837941
	.quad	0x3fd61f8a97355a6c              # double 0.34567513243147263
	.quad	0x3fe032ae02ce04d9              # double 0.50618649051480269
	.quad	0x3fc8dffa170025a4              # double 0.19433523295473976
	.quad	0x3fe0d63dd76b9f22              # double 0.52615253519340777
	.quad	0x3fd9a533bfbfe88c              # double 0.40070813870955457
	.quad	0x3fdcdc71f48f8706              # double 0.45095490343929645
	.quad	0x3f927725f5541cc0              # double 0.018032639597575395
	.quad	0x3fe14c7ba1e67653              # double 0.54058629628316124
	.quad	0x3fc55e17d84cc068              # double 0.16693399487985805
	.quad	0x3fe066a906b3f37d              # double 0.51253176983992399
	.quad	0x3fddbcf333eedb54              # double 0.46465759345612878
	.quad	0x3fe27921555283c3              # double 0.57728640236393181
	.quad	0x3fd202f155b3a4c8              # double 0.28142960900602221
	.quad	0x3fe8f6f49680e3c4              # double 0.78014592547617001
	.quad	0x3fd91e81dfb18104              # double 0.39248701901489391
	.quad	0x3fe2b664bfcfbe8a              # double 0.58476483786758249
	.quad	0x3fb3d6cd7465d750              # double 0.077496376912532527
	.quad	0x3fefaba887787ea8              # double 0.98970438441388797
	.quad	0x3feb99d603fe8dc5              # double 0.86252880840441348
	.quad	0x3fdec766d030af14              # double 0.48092050868102487
	.quad	0x3fef80c157bc31bb              # double 0.98446719299095464
	.quad	0x3fee81df99017f71              # double 0.95335368999438519
	.quad	0x3fd725e07f5412ea              # double 0.36168682512679473
	.quad	0x3fe7f0a2ee5d51aa              # double 0.74812456660815951
	.quad	0x3fce3cbe17f0849c              # double 0.23622871560022396
	.quad	0x3fc3572fd37ba414              # double 0.15109823061291705
	.quad	0x3febb0edff6f64e7              # double 0.86534786119150631
	.quad	0x3fedbbadc32eea6c              # double 0.92916000482302996
	.quad	0x3fe2dfed5bba6faf              # double 0.58983486095120508
	.quad	0x3fcefed8f717baa0              # double 0.24215232911179374
	.quad	0x3feea904204f1c51              # double 0.95813185034138304
	.quad	0x3fa4a64176b17830              # double 0.040330930460854453
	.quad	0x3fdcadba18bc0536              # double 0.44810345092271875
	.quad	0x3fdda93ed7cae8c0              # double 0.46345492433068713
	.quad	0x3fe0b0ee170028ec              # double 0.52159790508565385
	.quad	0x3fd5ab8a3ed6bcfe              # double 0.33859497200587885
	.quad	0x3feb3b7902807885              # double 0.85100985039368082
	.quad	0x3fe1d6b59893da36              # double 0.55745963859846515
	.quad	0x3fe14488e588cbad              # double 0.53961605864457385
	.quad	0x3fc2966e2f55d45c              # double 0.14521577178280409
	.quad	0x3fea89a8913afa79              # double 0.82930401196774917
	.quad	0x3fed6e754aa86083              # double 0.91973366338335472
	.quad	0x3fc286af0dae30fc              # double 0.14473522346487033
	.quad	0x3febf77f0857b812              # double 0.8739619410459929
	.quad	0x3fe1a8cc940dcc7b              # double 0.55185536305215466
	.quad	0x3feabeea18fd8b5a              # double 0.835804985818281
	.quad	0x3fec35a4f81a8609              # double 0.88154838998542673
	.quad	0x3fe699492c2d517d              # double 0.70621164921116952
	.quad	0x3fe64158dd3dda34              # double 0.69547694407703498
	.quad	0x3fa3407b94a332a0              # double 0.037601339239335063
	.quad	0x3febee2d821e324e              # double 0.87282443441069701
	.quad	0x3f98f2499092fae0              # double 0.024361752938370951
	.quad	0x3fae1dcd9706dfd0              # double 0.058821129499335378
	.quad	0x3faa0a01e2403e50              # double 0.05085760008671214
	.quad	0x3fda008da8875220              # double 0.40628377397414006
	.quad	0x3fe2e96198a4d444              # double 0.59098892033819839
	.quad	0x3fedb4279341b7a0              # double 0.92824152718616304
	.quad	0x3fece1fc485805d5              # double 0.90258611802726796
	.quad	0x3fd207ee931efd88              # double 0.2817341267327369
	.quad	0x3fa3b6bdb2c2fa90              # double 0.038503578254212134
	.quad	0x3fdbb6d31c70d650              # double 0.43303373124522171
	.quad	0x3fe0277cf9c50638              # double 0.50482033522729974
	.quad	0x3fe1f1e6fd71baa4              # double 0.56077908993559733
	.quad	0x3fb6c3daf26054d8              # double 0.088926014112377216
	.quad	0x3fe3e7c0c855dc25              # double 0.62204016807561813
	.quad	0x3fe51d64bab6e1d0              # double 0.65983807056096033
	.quad	0x3fe48dc276a13914              # double 0.64230464143637045
	.quad	0x3fe9c66f235f10c0              # double 0.80547291668383281
	.quad	0x3fe823e1590d9f4a              # double 0.7543799151726287
	.quad	0x3fef173143920f5b              # double 0.97158110806820319
	.quad	0x3fec3129b920b548              # double 0.8810013404633219
	.quad	0x3fbef264d9440478              # double 0.12088613800371373
	.quad	0x3fd4082a2fe1237a              # double 0.31299833942153266
	.quad	0x3fed18b41c3e7e6f              # double 0.90926557079724357
	.quad	0x3fe5237199651eae              # double 0.66057662925682847
	.quad	0x3fea104245527a54              # double 0.814484725375062
	.quad	0x3fd583dbab3c0428              # double 0.33617297861207129
	.quad	0x3fd862ea0c22128c              # double 0.38103724655983551
	.quad	0x3fe2b6741de9f248              # double 0.58477216570424506
	.quad	0x3fd47c19c3b7ceee              # double 0.32007450211607036
	.quad	0x3fd10bd466f645c2              # double 0.26634702734835625
	.quad	0x3fda75fbde57dabe              # double 0.41345116341782873
	.quad	0x3fe47beaef45bfd4              # double 0.64012667401220336
	.quad	0x3febba6e02116c64              # double 0.86650753406446456
	.quad	0x3fc34e5be464402c              # double 0.15082882549222754
	.quad	0x3fd2939c8059cf1e              # double 0.29025948080310282
	.quad	0x3fe25ca42783d7d0              # double 0.57380874364639034
	.quad	0x3fe6dfc58ac021d4              # double 0.71481587505064192
	.quad	0x3fe1f7ce68d983d0              # double 0.5614997909398145
	.quad	0x3fe4179f291286c5              # double 0.62788351079890303
	.quad	0x3fe82681f1c749f6              # double 0.75470063421590683
	.quad	0x3fdc21a8307860b2              # double 0.43955425961895422
	.quad	0x3fd6516e07ab09c8              # double 0.34872008084144257
	.quad	0x3fec36a9624ba211              # double 0.88167256544426398
	.quad	0x3fc0577273a66d60              # double 0.12766867300966123
	.quad	0x3fe31084a381e81b              # double 0.5957663720612375
	.quad	0x3fe4f0951280ae24              # double 0.6543679582004569
	.quad	0x3fc506cd8f23becc              # double 0.16427011002769232
	.quad	0x3fe4c2ea510a5692              # double 0.64879337146949667
	.quad	0x3fed176dce574b55              # double 0.90910997677779426
	.quad	0x3fdd3f5d84bf2ad6              # double 0.45699251140164898
	.quad	0x3fb8067fb650c108              # double 0.093849164972883981
	.quad	0x3fb37e6bb3aa1850              # double 0.076147776950251655
	.quad	0x3fc2218f5a65d874              # double 0.14164916910130254
	.quad	0x3fef0e656b8e4648              # double 0.97050734526619297
	.quad	0x3fef5b8ac0420505              # double 0.97992456007355654
	.quad	0x3fe1491a079ab518              # double 0.54017354474277379
	.quad	0x3fca689cba95f844              # double 0.20631751165996282
	.quad	0x3fe09dc800c38a74              # double 0.51926040791688743
	.quad	0x3fc4942cf9b5ec58              # double 0.16077196305181718
	.quad	0x3fdb055c793a6284              # double 0.42220222319296163
	.quad	0x3feeecdd46b4008e              # double 0.96641410645681147
	.quad	0x3fea9602e7ab78a4              # double 0.83081193206796344
	.quad	0x3f9bf373ab0a5640              # double 0.027295882524944526
	.quad	0x3fe109bacc297124              # double 0.53243770480506614
	.quad	0x3fe40ec87e4c4a45              # double 0.62680458705501307
	.quad	0x3fdca388a1a8ee56              # double 0.44748130595300972
	.quad	0x3fd4b6825c5e3976              # double 0.32363947887724664
	.quad	0x3fea424ba7fd3680              # double 0.82059271631597142
	.quad	0x3febbaa776e873d6              # double 0.86653493141386195
	.quad	0x3fe85a3bcf83beb5              # double 0.76101484804345054
	.quad	0x3fe560aa23074f09              # double 0.66804987756265277
	.quad	0x3fd3928862ccac38              # double 0.30581864975346518
	.quad	0x3fe24b86b2e90614              # double 0.57171950286300666
	.quad	0x3fb3732135b22760              # double 0.075975490197519147
	.quad	0x3feee7c4524f526d              # double 0.96579185558455338
	.quad	0x3fd94003e6271818              # double 0.39453217960215303
	.quad	0x3fc221aea0f9ef74              # double 0.14165289745494258
	.quad	0x3fe2cee31977bd63              # double 0.58775477384726249
	.quad	0x3fd31efc38a09294              # double 0.29876618890765738
	.quad	0x3fb2614bb1bbacd8              # double 0.071797114269134155
	.quad	0x3feb12b28bd20428              # double 0.84603240307490513
	.quad	0x3fecacc3327f5fdc              # double 0.89608917105487817
	.quad	0x3fe89c843c5f6e9f              # double 0.76910602370795178
	.quad	0x3fe13d660651000c              # double 0.53874493821786151
	.quad	0x3fdc68f9d937cfcc              # double 0.44390722477623679
	.quad	0x3fec18290496bdff              # double 0.87794924637086058
	.quad	0x3f607404cf6b0200              # double 0.0020084470700967305
	.quad	0x3fef2d1553a45819              # double 0.97425333343813058
	.quad	0x3fc23b03fc5b5048              # double 0.14242601224998652
	.quad	0x3fe9fa98fe4da922              # double 0.81184053104997056
	.quad	0x3fcfe229fde4e180              # double 0.24908947846575913
	.quad	0x3fbb69886415b640              # double 0.10707905238606319
	.quad	0x3fc015bcea018e68              # double 0.12566338945463262
	.quad	0x3feca736e24fda77              # double 0.89541191293285649
	.quad	0x3feaf80cdc6e20c5              # double 0.84277957012911797
	.quad	0x3fec2ea45d125a9c              # double 0.8806936090284867
	.quad	0x3fe78b4f8bdd1b01              # double 0.73575570408942792
	.quad	0x3fd0f419a2aed7a4              # double 0.26489869009980738
	.quad	0x3fbe84c522530ec0              # double 0.1192134102630531
	.quad	0x3feb90982109a7bd              # double 0.86140066578558783
	.quad	0x3fe43e8a1a0c4685              # double 0.63263421142092169
	.quad	0x3fe301c2103adac7              # double 0.59396460695173736
	.quad	0x3fe9cf9152f04939              # double 0.80658785056065263
	.quad	0x3fccda9ca68c7f7c              # double 0.22542150623575796
	.quad	0x3fea00136e596926              # double 0.812509265447521
	.quad	0x3feb5e9c750d06c9              # double 0.85529921399594244
	.quad	0x3feba86d5555eada              # double 0.86430994670021311
	.quad	0x3fed8246a69dbb74              # double 0.92215282957282207
	.quad	0x3fd867c68d3d2b80              # double 0.38133395951143001
	.quad	0x3fe9078075897751              # double 0.78216574627342983
	.quad	0x3fc2f4cb8884ec14              # double 0.14809555211999792
	.quad	0x3fe1d657c4e351d4              # double 0.55741489844018099
	.quad	0x3fe5f358d4ddd276              # double 0.6859554441021618
	.quad	0x3fef33255e0d449c              # double 0.97499340409753498
	.quad	0x3fe686e7b271f5df              # double 0.70396790363855277
	.quad	0x3fe6f45bd7121af0              # double 0.71732894903183642
	.quad	0x3fdab3fbbc6182f6              # double 0.41723531147549353
	.quad	0x3fea42dc6250b500              # double 0.82066172792625025
	.quad	0x3fe4f4061db02a3b              # double 0.65478807257142735
	.quad	0x3fe2f52fe45a3756              # double 0.5924300632484385
	.quad	0x3fd8c0f75920db4c              # double 0.38677772239627894
	.quad	0x3fe894efe6f0a981              # double 0.76818080049024229
	.quad	0x3fe87ff83df43128              # double 0.76562130070081924
	.quad	0x3fc1d92b0b301274              # double 0.13943994566229245
	.quad	0x3fdf9823884314c4              # double 0.49366081530417838
	.quad	0x3fe82410a9662648              # double 0.75440247617479717
	.quad	0x3fe147ee6a6d8caa              # double 0.54003067766861546
	.quad	0x3f9f788ca745b8e0              # double 0.030733297070974497
	.quad	0x3fcd67333fccdfd8              # double 0.22971191992996753
	.quad	0x3fe94500add783d6              # double 0.78967317536818871
	.quad	0x3fe6f8b4a2f0b892              # double 0.71785957168846637
	.quad	0x3fbcffea136cabc8              # double 0.11327994322043289
	.quad	0x3fcea88e36714c44              # double 0.23951890619591343
	.quad	0x3fe55068914673a5              # double 0.66606548666060361
	.quad	0x3fd876fc9faa55a4              # double 0.38226237861939638
	.quad	0x3fe6ef354825207b              # double 0.71670021143746909
	.quad	0x3fe131ddf09ba943              # double 0.53733727449188284
	.quad	0x3fcb9f9a4698e694              # double 0.21580818602688068
	.quad	0x3fda74b890455bb2              # double 0.41337408150632904
	.quad	0x3fd4f1461ae24978              # double 0.32722618699440131
	.quad	0x3fd49ae38c48b832              # double 0.32195366572966855
	.quad	0x3fb80e81c8c09618              # double 0.093971358787335979
	.quad	0x3fe15e53e48bc31a              # double 0.54276461255912811
	.quad	0x3fce6032c20c7944              # double 0.23731073832545679
	.quad	0x3fdda3f09f6525c6              # double 0.46313109937599639
	.quad	0x3fda8b2921f793f2              # double 0.41474369351482132
	.quad	0x3fefd064e4d28c09              # double 0.99418873493084547
	.quad	0x3fe7369f1d71ea52              # double 0.72541766882870662
	.quad	0x3fdb47060d542dc4              # double 0.42620993901865867
	.quad	0x3fb7b653fff8b588              # double 0.092625856392905104
	.quad	0x3fe3f1b62f988c2e              # double 0.62325581832954469
	.quad	0x3fce540ca6e2a91c              # double 0.2369399847860415
	.quad	0x3fe85f1976875969              # double 0.76160882139337815
	.quad	0x3fe18d1a49c3f332              # double 0.54847444922743294
	.quad	0x3fda1bfb85e311c0              # double 0.40795791697408035
	.quad	0x3fdc14aa665f1604              # double 0.43876132962427072
	.quad	0x3fda7ebeace2f274              # double 0.41398589023064081
	.quad	0x3f7b710ff97f7080              # double 0.0066996215827793693
	.quad	0x3f8295d27f01f4c0              # double 0.0090748257646232621
	.quad	0x3fed58e600cf25d3              # double 0.91710186155358497
	.quad	0x3fc657c8149fc41c              # double 0.17455388075862366
	.quad	0x3fc28076b6adfda0              # double 0.14454540176300856
	.quad	0x3fee7485456ffa0b              # double 0.95172370492929426
	.quad	0x3fb85dbe22748980              # double 0.095180400287551591
	.quad	0x3fe819e061211762              # double 0.75315875025328816
	.quad	0x3fc30d969fc995e4              # double 0.14885218431588421
	.quad	0x3fe898b38de8a223              # double 0.76864030567691477
	.quad	0x3fe21b074638a8f3              # double 0.56579936709502332
	.quad	0x3fdab5c65ea43050              # double 0.41734465830154921
	.quad	0x3fd611074e4305ec              # double 0.34478933947329327
	.quad	0x3fa9ce66e26d3200              # double 0.050402846469840057
	.quad	0x3fe59bac7b385e03              # double 0.67525314394418989
	.quad	0x3fc39dceb494690c              # double 0.15325340096826101
	.quad	0x3fdca4827cb77742              # double 0.44754087619172733
	.quad	0x3fbae228f37861d8              # double 0.1050134272012494
	.quad	0x3fc0f71278f4ba38              # double 0.13254004388859797
	.quad	0x3fd96bd9963f5a0c              # double 0.39720763847927354
	.quad	0x3fe9307d35c871e6              # double 0.78716907982339701
	.quad	0x3fd9da41eacc0f90              # double 0.40394637994199289
	.quad	0x3fee14a55492528e              # double 0.94002024190793221
	.quad	0x3fe49a05ff22524f              # double 0.64380168753502598
	.quad	0x3fcf4db413242608              # double 0.24455882010106245
	.quad	0x3fdff285c9dd8572              # double 0.49917740548524769
	.quad	0x3fc2009f23cf6640              # double 0.14064397095244097
	.quad	0x3fdd5fb10d4a2ba8              # double 0.45896555230927527
	.quad	0x3fc083b7d4f01160              # double 0.12901971719123662
	.quad	0x3fecfedd560111ff              # double 0.90611140058223316
	.quad	0x3fc037ecde2c2a64              # double 0.1267067036463515
	.quad	0x3fd513a6a6422a2a              # double 0.32932440029313403
	.quad	0x3fee3bbe0e7c5c9e              # double 0.94479277447944177
	.quad	0x3fd1fd9c9e9619f8              # double 0.28110423552462249
	.quad	0x3f90dd8251717240              # double 0.016469989987273559
	.quad	0x3fe0aa16623c0c30              # double 0.52076262651860894
	.quad	0x3fe21ecbc22f892f              # double 0.56625926901714319
	.quad	0x3fd43e957bf6f9ca              # double 0.31631981950695531
	.quad	0x3fe7688f2622d4a1              # double 0.73151357124756455
	.quad	0x3fc9013a61ddfbc8              # double 0.19534997728984949
	.quad	0x3fc337cccf89f5c0              # double 0.15014038213477754
	.quad	0x3fd132657cd28fae              # double 0.26870095433900587
	.quad	0x3febd83553e6fe08              # double 0.87014261614962241
	.quad	0x3fdcad9f8e32b3fc              # double 0.44809712301758942
	.quad	0x3faa4e63c3e68340              # double 0.051379316009166676
	.quad	0x3fdcce35bd87b8ce              # double 0.45008605488591236
	.quad	0x3fd98859e4506686              # double 0.3989472131375823
	.quad	0x3fa182560366e810              # double 0.034197509684830263
	.quad	0x3fe15267075fa95a              # double 0.5413088935868402
	.quad	0x3fe04aa92e7000c6              # double 0.50911387510134243
	.quad	0x3fd65e1d7baa55b2              # double 0.34949433399864482
	.quad	0x3fecacec02205d9d              # double 0.89610863128011753
	.quad	0x3fec4c2f867514a2              # double 0.884300005542759
	.quad	0x3fe2829d08b01974              # double 0.57844402024129105
	.quad	0x3fe7defa3f2a3db3              # double 0.745968936318539
	.quad	0x3fef69f966f425b0              # double 0.9816863070311026
	.quad	0x3fbc7fef825275d8              # double 0.11132714206401972
	.quad	0x3feb8da7485c3d4f              # double 0.86104168064950126
	.quad	0x3fe3bedb09ef6162              # double 0.61704780521817448
	.quad	0x3fbc3af3c5028b78              # double 0.1102745395642567
	.quad	0x3fc113042db6cbb0              # double 0.13339283210879449
	.quad	0x3fd41fed62e7c9f6              # double 0.31444868715985252
	.quad	0x3fe90cb0ee8199a9              # double 0.78279921134235508
	.quad	0x3fe1fa8cde12d140              # double 0.56183474897128605
	.quad	0x3f75fb0d195ba900              # double 0.0053663741762000061
	.quad	0x3fe236710f1debf6              # double 0.56914570763126338
	.quad	0x3fc32e049f5aec50              # double 0.14984185963644103
	.quad	0x3fc597fd613e5a70              # double 0.16870085952969616
	.quad	0x3fc3568a632ec690              # double 0.15107850878625984
	.quad	0x3fc9acc1b6fea99c              # double 0.20058461604396605
	.quad	0x3fbc66d22fb08de8              # double 0.1109439245633933
	.quad	0x3feb07689fa1dbad              # double 0.84465438059020459
	.quad	0x3fe024b801730bfc              # double 0.50448227198683027
	.quad	0x3fd8a44d65f3df04              # double 0.38502821880636895
	.quad	0x3fe84ceb0909bdf3              # double 0.75938941731686638
	.quad	0x3fe1a1f330eb59cd              # double 0.55101928286131285
	.quad	0x3fe0949bfec84f81              # double 0.51814079057884055
	.quad	0x3f6f839698578200              # double 0.003846925860429673
	.quad	0x3fe9e82c8dd99a8d              # double 0.80959155755120238
	.quad	0x3fd08947c0943472              # double 0.25837892347846669
	.quad	0x3fdc6f70f4027a56              # double 0.44430183247633204
	.quad	0x3fd374004ca8a896              # double 0.30395514951909186
	.quad	0x3fe4330a341733f5              # double 0.63123045133545352
	.quad	0x3fedfe1cd6cd8b97              # double 0.93726961091703032
	.quad	0x3fd6b7eea2909d0c              # double 0.35497632861593398
	.quad	0x3fcbf30b1b585e64              # double 0.21835459552015657
	.quad	0x3fd771b6a940accc              # double 0.36631552246644783
	.quad	0x3fc5ffe452ce552c              # double 0.17187170069943514
	.quad	0x3fd5b8ad6b32c358              # double 0.339396815000375
	.quad	0x3fc53012a202f358              # double 0.1655295649597075
	.quad	0x3fe6ed45d0e333c8              # double 0.71646395490972115
	.quad	0x3fe290835ff1a45f              # double 0.58014076937719128
	.quad	0x3fed0fe27795426e              # double 0.90818904262603239
	.quad	0x3fe43fba39563e02              # double 0.63277922819719401
	.quad	0x3fe80b4401947b5d              # double 0.75137520130725088
	.quad	0x3fe4664984d6292e              # double 0.63748622841493385
	.quad	0x3fccf55d223604f0              # double 0.2262379090352975
	.quad	0x3fe1c289ff7039f1              # double 0.55499744310674093
	.quad	0x3fef704fb65f7a56              # double 0.98245988483160818
	.quad	0x3fcc884638499a6c              # double 0.2229087614861841
	.quad	0x3fc1a41994947100              # double 0.13782043223262264
	.quad	0x3fe7fbe2cc678f88              # double 0.74949779436836739
	.quad	0x3fe4cf32d0a4db52              # double 0.6502927851750917
	.quad	0x3fedc9a4071407a7              # double 0.930864347290698
	.quad	0x3fee966010203107              # double 0.95585635327873397
	.quad	0x3fecef40739d254e              # double 0.90420553761320277
	.quad	0x3febc292f5bec83c              # double 0.86750171658628216
	.quad	0x3fdf980aa45aafd0              # double 0.49365488100260979
	.quad	0x3fd07785010dc572              # double 0.25729489424619267
	.quad	0x3fd0e8352cb00024              # double 0.26417283405317193
	.quad	0x3fc156ca4d1887b4              # double 0.13546112789577835
	.quad	0x3fe52f84113403c1              # double 0.66205027923580684
	.quad	0x3fe3efeafea1190a              # double 0.62303685886652826
	.quad	0x3fd2820c5b5d6350              # double 0.28918751642554685
	.quad	0x3fae737f998eb410              # double 0.059474933142475206
	.quad	0x3fe951e1f42ac508              # double 0.7912454384697023
	.quad	0x3fb965f013eb5a48              # double 0.099211697447892822
	.quad	0x3fea00b2db23fb02              # double 0.81258528519524043
	.quad	0x3fe6bb10c3596959              # double 0.71033514169838974
	.quad	0x3fe845b0f295b6d1              # double 0.7585072267517835
	.quad	0x3fd236c2d0eb9686              # double 0.28459234621400531
	.quad	0x3fc6adcb10446fe4              # double 0.17717874807647072
	.quad	0x3fe0fdf95e213c27              # double 0.53100269684535284
	.quad	0x3f55ca96a3fbec00              # double 0.0013300391291852787
	.quad	0x3fee8e5689023f5b              # double 0.9548752475693435
	.quad	0x3fe7037de0aa0f7a              # double 0.71917623405214148
	.quad	0x3fe39298c3355eff              # double 0.61164510847717668
	.quad	0x3fe21049bf7eb6a9              # double 0.5644882907997345
	.quad	0x3fec38741164fd61              # double 0.88189128301011632
	.quad	0x3fea2736127ecef9              # double 0.81728652584430883
	.quad	0x3fe6395ad60d3373              # double 0.69450132185884994
	.quad	0x3fc823f8b0546d7c              # double 0.1885977612481432
	.quad	0x3fd69d65d780fcc4              # double 0.3533568005113461
	.quad	0x3fdabae322af1920              # double 0.41765669238192693
	.quad	0x3f8609cf421e4300              # double 0.010760897832172045
	.quad	0x3fe8419e45c3a252              # double 0.75801004052943655
	.quad	0x3fe04f12f46b7dbb              # double 0.50965259302386501
	.quad	0x3febbc3988a1bd80              # double 0.86672665296457296
	.quad	0x3fc8ca021f00f5a0              # double 0.19366480363707428
	.quad	0x3fd7eef0de78bf10              # double 0.37395879483936856
	.quad	0x3fe045e6798b422a              # double 0.50853275050218838
	.quad	0x3fe8cd9f81d6afd0              # double 0.77510047301393037
	.quad	0x3feb59a3ebee5cca              # double 0.85469242172521231
	.quad	0x3fe4f298d0d0b403              # double 0.65461388382175334
	.quad	0x3f9635451193b7c0              # double 0.021687583158317869
	.quad	0x3fd596d5eb344ef4              # double 0.33733127564595056
	.quad	0x3fe7c542fe2b9729              # double 0.74282979624397172
	.quad	0x3fc8663fe45fedb8              # double 0.19062040949925829
	.quad	0x3fca48a75d1437c4              # double 0.20534221691963073
	.quad	0x3fe7c0861aaa4519              # double 0.74225144584684977
	.quad	0x3fac700662d49930              # double 0.055542182506814419
	.quad	0x3feef81016319736              # double 0.96778110823354413
	.quad	0x3fc1e02c848ed188              # double 0.13965374443581546
	.quad	0x3fbe350721845360              # double 0.11799664085658668
	.quad	0x3f9fcf6bbd694760              # double 0.031064685283417659
	.quad	0x3fba07bf8ba70988              # double 0.10168072852596854
	.quad	0x3fe79e7cd41062b8              # double 0.7380966321826099
	.quad	0x3fe6960c4f8244c7              # double 0.70581641701769449
	.quad	0x3fe0446555106c2e              # double 0.50834910024730617
	.quad	0x3fe69fa3a3507d90              # double 0.70698720834109174
	.quad	0x3fc0800e05d88b70              # double 0.12890792165225262
	.quad	0x3f6d415456b02e00              # double 0.0035711905707154212
	.quad	0x3fcda40e41443cb4              # double 0.23156908213465999
	.quad	0x3fe09920ed47e2a6              # double 0.51869245857149759
	.quad	0x3fc1a1a194323eb8              # double 0.13774509178300831
	.quad	0x3fdba0aaaec5284c              # double 0.43168131892582973
	.quad	0x3fc748ad7b18e5f0              # double 0.18190544615372017
	.quad	0x3fd6ab7e6e5e04e0              # double 0.35421715524723929
	.quad	0x3feafedca6fc6bd6              # double 0.84361107458550566
	.quad	0x3fe5ea98c91bbfa4              # double 0.68488730696661948
	.quad	0x3feaf423a5ef5e5f              # double 0.84230215462862279
	.quad	0x3fea738330930d2d              # double 0.82660064208213202
	.quad	0x3fe560098846275c              # double 0.66797329536459982
	.quad	0x3f9154bc202c89a0              # double 0.01692480036138877
	.quad	0x3fda89ccb00220c6              # double 0.41466061771690155
	.quad	0x3fb5e4711f6c5f18              # double 0.085516996547422841
	.quad	0x3fd1cb588059db7e              # double 0.27803623708989977
	.quad	0x3fdf929cf3aca452              # double 0.49332355305029296
	.quad	0x3fd0605b1e7de3c2              # double 0.25588109948835946
	.quad	0x3fe2e3cb11286cdd              # double 0.59030679083971516
	.quad	0x3fd6cf6656e0705c              # double 0.35640867694906375
	.quad	0x3fc953a345fb08c8              # double 0.19786492268582934
	.quad	0x3fe15ba087fea3c2              # double 0.54243494569265516
	.quad	0x3fc0b8d7c454a954              # double 0.13064095579586399
	.quad	0x3fe0e4b67e00d332              # double 0.5279190503120843
	.quad	0x3fda60c07571e98e              # double 0.41215526074633935
	.quad	0x3fd994a7193f87f8              # double 0.39969804254189922
	.quad	0x3feb63720bb77701              # double 0.85588934219751434
	.quad	0x3feb22a56a2039f2              # double 0.84797926643096688
	.quad	0x3fce7a9fb1261ed8              # double 0.23811718129967718
	.quad	0x3fd146ccc647a51e              # double 0.26994628299014944
	.quad	0x3fe16b74f7d782f9              # double 0.54436729818925678
	.quad	0x3fd59066b69667f4              # double 0.33693855124295102
	.quad	0x3fd21d2a38d4b23e              # double 0.28303008603942093
	.quad	0x3fe618bef47f3e1d              # double 0.69052074197128699
	.quad	0x3fc1593a52192468              # double 0.13553551682187792
	.quad	0x3fd9cb558d49b094              # double 0.40303553388253843
	.quad	0x3fd0a3107d9e6998              # double 0.25995266215763868
	.quad	0x3fb9b6d34b1d8898              # double 0.10044594367858151
	.quad	0x3fdeb648cd3b47c0              # double 0.47987575571198349
	.quad	0x3fd5ab46e9a9b590              # double 0.33857891863484557
	.quad	0x3fe1a8b1f6e4b958              # double 0.55184267255189479
	.quad	0x3fe6b7af1c16a642              # double 0.70992236600904612
	.quad	0x3fbcad935bf907b0              # double 0.11202355380467455
	.quad	0x3fbe6800862cacf8              # double 0.11877444530243852
	.quad	0x3fe630e171ff52b7              # double 0.69346687569721766
	.quad	0x3fc09f2e668abf5c              # double 0.12985782629902587
	.quad	0x3fd0ead2863d9edc              # double 0.26433241948551056
	.quad	0x3fe87003e1f782ce              # double 0.76367372640751241
	.quad	0x3fd067ea61367f6e              # double 0.25634250157781124
	.quad	0x3fe8bbeb1a05a78d              # double 0.77293925363959348
	.quad	0x3fdaf01dc09188dc              # double 0.42090553098218009
	.quad	0x3fd0b65f204f872a              # double 0.26113107829415816
	.quad	0x3fc7ebc629229938              # double 0.18688275345375316
	.quad	0x3fe96f3781088b39              # double 0.79482627107459003
	.quad	0x3fea4a9d34fe9953              # double 0.82160816526883662
	.quad	0x3fcd52de97ececf0              # double 0.2290914766143497
	.quad	0x3fe86f9a2420ec27              # double 0.76362330490463115
	.quad	0x3fe0f35ef706e998              # double 0.52970836875401783
	.quad	0x3fe558746b49195b              # double 0.66704770044524808
	.quad	0x3fb12dba00ec9378              # double 0.067103982186905387
	.quad	0x3fecbf724700c1b4              # double 0.89836992137684612
	.quad	0x3fe60ba38794a1ae              # double 0.6889207504328192
	.quad	0x3fe0347f32ad5283              # double 0.50640830896243505
	.quad	0x3fd600bb9d18b8f2              # double 0.34379473058187593
	.quad	0x3feb707f868b1997              # double 0.85748268392562721
	.quad	0x3fe24c45013bd6a4              # double 0.57181024781194312
	.quad	0x3fe4e9878795c1bc              # double 0.65350700837557651
	.quad	0x3f5f29711065f200              # double 0.0019019703046004865
	.quad	0x3fb4dfa6367038a0              # double 0.081537617006889551
	.quad	0x3fd86cd727935784              # double 0.3816430937271138
	.quad	0x3fef6cc97ada9af7              # double 0.98202966685207015
	.quad	0x3fe6bb2bb752442b              # double 0.71034799389793102
	.quad	0x3fa533e318ec7ba0              # double 0.041411492149783458
	.quad	0x3fdbff41ca1b8a20              # double 0.43745465027873998
	.quad	0x3fdaa272d45b18e4              # double 0.41616507280231319
	.quad	0x3fe30d9aa5575fdf              # double 0.59541065495704604
	.quad	0x3fe08d53095b4744              # double 0.51725150897457484
	.quad	0x3fd42fba223d15ec              # double 0.31541303008665866
	.quad	0x3fd3153b950f82a8              # double 0.29817094380090703
	.quad	0x3fed9edf078781c2              # double 0.92564345808573756
	.quad	0x3fcbbe092eee82c0              # double 0.21673693458162369
	.quad	0x3fec05e82d2bb633              # double 0.87572106192027943
	.quad	0x3fee7053c89f1d73              # double 0.95121182617087496
	.quad	0x3fe16cdfbb55f05e              # double 0.54454027737621025
	.quad	0x3fcf263ddae0094c              # double 0.24335454165709292
	.quad	0x3fda5c90ad2c051a              # double 0.4118997279293396
	.quad	0x3fdf48a73c0f08d2              # double 0.48880940308675946
	.quad	0x3fcb87a537162630              # double 0.21507706823131079
	.quad	0x3fe778610bdb803e              # double 0.73344471279052192
	.quad	0x3fe686236f562d88              # double 0.7038743185561751
	.quad	0x3fb295a98536de38              # double 0.07259616377165734
	.quad	0x3feafc3544ac992b              # double 0.84328711903507292
	.quad	0x3fe16d5966dc6120              # double 0.54459829416285643
	.quad	0x3fe1a6bceec89894              # double 0.55160376202981576
	.quad	0x3fccd04b48f22118              # double 0.22510663091475958
	.quad	0x3fe74d8d7ee70770              # double 0.72821688447605304
	.quad	0x3fd9dfe14780bdf8              # double 0.40428955061631155
	.quad	0x3fe4537c9b978e92              # double 0.63519125355783701
	.quad	0x3fe4aeda1d23ef46              # double 0.64634423915365669
	.quad	0x3fd6f5ffdf2c95cc              # double 0.35876461786605485
	.quad	0x3feee2a449ea3219              # double 0.96516622959603914
	.quad	0x3fc67d7eac306bb0              # double 0.17570479781792647
	.quad	0x3fda3bd78ca87ba2              # double 0.40990246521135465
	.quad	0x3fb8a547bfc3ea98              # double 0.096271976773929402
	.quad	0x3fe5f5f923b616c1              # double 0.68627602553234379
	.quad	0x3fd154e4b1d89848              # double 0.27080647819309833
	.quad	0x3feec544ba5a7612              # double 0.96158062359944751
	.quad	0x3fdaf0225f4197f8              # double 0.42090663244596227
	.quad	0x3fe105fd0b464b51              # double 0.53198101236407969
	.quad	0x3fe0b4142600fa92              # double 0.52198226378080137
	.quad	0x3fefc4103126e0cf              # double 0.99268350219701939
	.quad	0x3fa3342ebeee25c0              # double 0.037507496649662908
	.quad	0x3feb52ce2560e5aa              # double 0.85385806370247974
	.quad	0x3fefaf91e74fce53              # double 0.99018187692713366
	.quad	0x3fe16ab3173b528c              # double 0.54427485024878441
	.quad	0x3feed33436d9419e              # double 0.96328173363331238
	.quad	0x3fdbaa4853db8a1e              # double 0.43226822079864913
	.quad	0x3fea837a70d68e76              # double 0.82854959524816141
	.quad	0x3fba1e743bbc7180              # double 0.10202719171906516
	.quad	0x3fe265f101d11838              # double 0.57494402270163558
	.quad	0x3fd7bfc8d6954e28              # double 0.37108059840577079
	.quad	0x3fdcc02688e851fe              # double 0.44922793741105227
	.quad	0x3fdb724a882ce358              # double 0.42885077761052548
	.quad	0x3fe24e9807f6ccee              # double 0.57209397845727294
	.quad	0x3fe6d59e50d80880              # double 0.71357646741695646
	.quad	0x3fd1801ff77767aa              # double 0.27344512144702071
	.quad	0x3fea9286a57dad57              # double 0.83038647005507016
	.quad	0x3fb1a1035dd67758              # double 0.068863115701302546
	.quad	0x3fb3c32a6881e6a0              # double 0.077196741594799168
	.quad	0x3fe9dfaa0240094e              # double 0.80855274619561057
	.quad	0x3fc87a89c3d889b8              # double 0.19123956740174974
	.quad	0x3f871995108bf9c0              # double 0.011279263083903923
	.quad	0x3fc12a3ba74f1108              # double 0.13410134953858965
	.quad	0x3fc530d5d5858998              # double 0.16555283475743177
	.quad	0x3fea5e478be5482d              # double 0.82400872538915382
	.quad	0x3f2867ec80197000              # double 1.8620264022473076E-4
	.quad	0x3fe2a9b97dfbd106              # double 0.5832183323496174
	.quad	0x3feeae7f7bed1aea              # double 0.95880102352461205
	.quad	0x3fec8ce65e8ad48e              # double 0.89219969239515406
	.quad	0x3fe67ccdea3c8b66              # double 0.70273490666691596
	.quad	0x3fd8257b7c14b2b8              # double 0.37728774182577807
	.quad	0x3fefcc172b67f2aa              # double 0.99366339185470065
	.quad	0x3fe8096213976b00              # double 0.75114539934597246
	.quad	0x3fdba235e49c8b74              # double 0.43177554440824584
	.quad	0x3feef6fa6bfa7d4f              # double 0.96764870729013263
	.quad	0x3fb3e84ab82656e0              # double 0.077763242681921252
	.quad	0x3fe036af1c57734c              # double 0.50667529616803497
	.quad	0x3fd24ec8ab1d7a74              # double 0.28605858526672212
	.quad	0x3fcbdeee67194694              # double 0.2177408221637519
	.quad	0x3fc9d0407e7fd2cc              # double 0.20166784455036291
	.quad	0x3fe002a9d9d93ac6              # double 0.50032513187928696
	.quad	0x3fe6338203f8dd2a              # double 0.6937875821667252
	.quad	0x3fd7032be9296456              # double 0.35956857461639424
	.quad	0x3fe3805a9b149f15              # double 0.60941820420427695
	.quad	0x3fdb7c4af81e5ede              # double 0.42946123342833953
	.quad	0x3fd9c0913e2e8258              # double 0.40237837860516867
	.quad	0x3fe4b0c80e2887d0              # double 0.64657976880357104
	.quad	0x3fd296a63ea7b8b0              # double 0.29044490927379751
	.quad	0x3fdd4bacb2b88152              # double 0.4577438111609996
	.quad	0x3fc3dd81115ead80              # double 0.15519727085243673
	.quad	0x3fd3c114e7030f6e              # double 0.30865976867447997
	.quad	0x3fc4741615e405b8              # double 0.15979267186052737
	.quad	0x3fbad8619467bf88              # double 0.10486421464133688
	.quad	0x3fdf644ad82f218a              # double 0.49049635993699126
	.quad	0x3fef2953a4dd0ca5              # double 0.97379476737878134
	.quad	0x3fe14a48a0b71d2f              # double 0.54031783475594419
	.quad	0x3fe9f2229794cc70              # double 0.81080751043044863
	.quad	0x3fe9c8a57a3ebbe3              # double 0.80574296833026116
	.quad	0x3fc6c0e07a4f18d8              # double 0.17776113483541311
	.quad	0x3fe38a1fdfd7bfff              # double 0.61061090201656032
	.quad	0x3fd5e119b05eea6a              # double 0.3418640348788019
	.quad	0x3fefcddd7c01e06f              # double 0.99388002605611613
	.quad	0x3fd59d1955d0f8da              # double 0.33771355991838237
	.quad	0x3fe6b667e0e3be4a              # double 0.70976632999185907
	.quad	0x3fea6fcda9f588b1              # double 0.82614787287845648
	.quad	0x3fa42b24d298ca90              # double 0.039391661365148711
	.quad	0x3fea09e2f0430719              # double 0.81370684553278061
	.quad	0x3fda5e295fb82994              # double 0.41199716899486671
	.quad	0x3fc3dc27d2458ef0              # double 0.15515611426518872
	.quad	0x3fe513d6771a7736              # double 0.6586716009366913
	.quad	0x3fec55fd9c653359              # double 0.88549690767249978
	.quad	0x3fd859002117e2c0              # double 0.38043215972679079
	.quad	0x3fca55979db6f940              # double 0.20573706818499637
	.quad	0x3fee052c1184d0f6              # double 0.93813136502879391
	.quad	0x3fef8c2dda83f575              # double 0.98586170843888842
	.quad	0x3fcf4e516ad86540              # double 0.2445775767999212
	.quad	0x3fc606f3c579fcd0              # double 0.1720871652832785
	.quad	0x3fc6af17c46d3658              # double 0.17721840945380296
	.quad	0x3fd38f9fa2190a2c              # double 0.30564108686317826
	.quad	0x3fd6a6d159893266              # double 0.35393174880736067
	.quad	0x3fdfbd57ce81e12e              # double 0.49593157927258147
	.quad	0x3fd9cd0347332190              # double 0.40313798859690397
	.quad	0x3fef0fe5f034eecf              # double 0.97069069781670147
	.quad	0x3fec296c4d0f5cfb              # double 0.88005652476104446
	.quad	0x3fd2d74993eac79c              # double 0.29439010090856654
	.quad	0x3fc4acad661ba038              # double 0.16151969419229473
	.quad	0x3fd9b294b719e3c0              # double 0.40152471428842418
	.quad	0x3fd0c197e20175c4              # double 0.26181599684590773
	.quad	0x3fdee8f32bd60f5c              # double 0.48296813279033812
	.quad	0x3fd51e88ff8de53a              # double 0.32998871761772686
	.quad	0x3fc183e6b9e50c84              # double 0.13683780743494733
	.quad	0x3fddcb1faf355f10              # double 0.4655226908703165
	.quad	0x3fc87c1ad972999c              # double 0.19128738038598392
	.quad	0x3fd27159833f853c              # double 0.28816831414413335
	.quad	0x3fd5eacc51a7344a              # double 0.3424559399980508
	.quad	0x3fed24a23604112b              # double 0.91072187948205874
	.quad	0x3fdb51dda908d642              # double 0.42687169558789517
	.quad	0x3fd154822e88b450              # double 0.27078299087844915
	.quad	0x3fedd74afa6ca540              # double 0.93253086958899444
	.quad	0x3faec1deb5df4d80              # double 0.060072860432820896
	.quad	0x3fe1acba0abc83de              # double 0.5523348054595052
	.quad	0x3fc0894355957ab0              # double 0.12918893507863549
	.quad	0x3fd12b458da2dc92              # double 0.26826609450967809
	.quad	0x3fd02bdf62bd9268              # double 0.25267777102116051
	.quad	0x3fef89254b780f34              # double 0.98549141635928672
	.quad	0x3fc7a019d9243634              # double 0.18457339384660687
	.quad	0x3fe8f9fc6cd0d247              # double 0.78051587346141893
	.quad	0x3fea64634986141e              # double 0.82475437507730809
	.quad	0x3fdf6a724a368c82              # double 0.49087197539683569
	.quad	0x3fd8e0ee5d987258              # double 0.38872870578942331
	.quad	0x3fd3d5cba0029c8a              # double 0.30992403627392007
	.quad	0x3fe1bd1bcd782233              # double 0.55433454638211399
	.quad	0x3feed0468ea722ea              # double 0.96292426931276265
	.quad	0x3febad465c77c6da              # double 0.86490171489841861
	.quad	0x3faff0e09f87eaa0              # double 0.062384623979558684
	.quad	0x3fc0e9fd94f8fbd0              # double 0.13214082502415048
	.quad	0x3fc9708fd06aa0a8              # double 0.19874761272990793
	.quad	0x3fcc5b466f7ca780              # double 0.22153549617479129
	.quad	0x3fc45c097a65d72c              # double 0.15905874706702983
	.quad	0x3fee25d99d111ce2              # double 0.94212036778563069
	.quad	0x3fd519b27a563b9e              # double 0.32969343134839757
	.quad	0x3fd63d7696d92c64              # double 0.34750141841204241
	.quad	0x3fe50109698b23e6              # double 0.6563765584370429
	.quad	0x3fe88a9514eaffd3              # double 0.76691679082432029
	.quad	0x3feaac031c162170              # double 0.83349757657656021
	.quad	0x3fd89911ceeccad4              # double 0.38434262473599046
	.quad	0x3feda6bbaf0d2799              # double 0.92660316648219798
	.quad	0x3fbeb08bfaceb9f8              # double 0.1198813903163013
	.quad	0x3fd8a20e47b66134              # double 0.3848910999600037
	.quad	0x3fe8f5bc7c6c06d1              # double 0.77999710370223785
	.quad	0x3fe1612c71243a52              # double 0.54311201188995484
	.quad	0x3fe804075f44d604              # double 0.7504917965622444
	.quad	0x3f924d4417512200              # double 0.017872871325637973
	.quad	0x3fc3fb895a49e770              # double 0.15611378582599
	.quad	0x3fe570c4a6c468ca              # double 0.67001564571116856
	.quad	0x3fcaf75bb0bb2a28              # double 0.21067377213906124
	.quad	0x3fc3c019a14ee26c              # double 0.15429993034719602
	.quad	0x3fd2538c84179130              # double 0.28634941959014082
	.quad	0x3fc5ebb113b9bb80              # double 0.17125524008903525
	.quad	0x3fda568d98576520              # double 0.41153278233612589
	.quad	0x3fd02d762df9f2ea              # double 0.25277475824240858
	.quad	0x3fefbede6a4d8bcc              # double 0.99204941522872891
	.quad	0x3fe225433080ec96              # double 0.56704863999711352
	.quad	0x3fe556af72d26475              # double 0.66683170725003882
	.quad	0x3febfb4e171106c6              # double 0.87442688470056207
	.quad	0x3fee10dabc8df491              # double 0.93955742671063736
	.quad	0x3fea242cb63aaade              # double 0.81691585151323998
	.quad	0x3fe0e470003c719a              # double 0.52788543745150496
	.quad	0x3feb158aee546291              # double 0.84637972401385941
	.quad	0x3febd1fc4be55453              # double 0.86938299964334431
	.quad	0x3fe10bcb9c685f42              # double 0.5326898627126655
	.quad	0x3fe76da76a578843              # double 0.73213549394518684
	.quad	0x3fe5c5adc53147ef              # double 0.68038071169052994
	.quad	0x3feafd7d3859d499              # double 0.84344349866900636
	.quad	0x3fefcdc8e1eccf77              # double 0.9938702023123217
	.quad	0x3fc3d2b296b5ea98              # double 0.15486748083988711
	.quad	0x3fe4008161ac4b49              # double 0.62506169392359212
	.quad	0x3fa788211a1e46e0              # double 0.045960459173455481
	.quad	0x3fce1cc42cbc1674              # double 0.23525287803947814
	.quad	0x3fe45a7ce1bbf7b2              # double 0.63604587639541976
	.quad	0x3fb237a482ff0bd0              # double 0.071161539060127454
	.quad	0x3fc74193662e7d50              # double 0.18168871392570418
	.quad	0x3fa48fdc62bfe770              # double 0.040160071424863442
	.quad	0x3fe11d39db7f97c8              # double 0.53481762762816576
	.quad	0x3febfc2862a4dc71              # double 0.87453097597507512
	.quad	0x3fd3c5553bb106fc              # double 0.30891924695252704
	.quad	0x3fe321fd2d23ac7a              # double 0.5978990441921177
	.quad	0x3fc342ff9ac623d0              # double 0.15048213059733806
	.quad	0x3fe2c98acad8c27c              # double 0.5871023141717866
	.quad	0x3fe2dbfde9fc27ba              # double 0.58935447406951558
	.quad	0x3fd69f668ff78dda              # double 0.35347904261854313
	.quad	0x3fef370c6e4d7531              # double 0.97546979468794436
	.quad	0x3fee12dbec65e9bd              # double 0.93980213328841666
	.quad	0x3fea25058c2f199e              # double 0.81701924686131
	.quad	0x3fedafcc923804f9              # double 0.92770985182156018
	.quad	0x3fdf426465b951a4              # double 0.48842725690817645
	.quad	0x3fde3ba4b86dd13e              # double 0.47239034662858959
	.quad	0x3fe972beedb8cc0a              # double 0.7952570574765343
	.quad	0x3fd7011a29081ac2              # double 0.35944227225301628
	.quad	0x3fc77e4434380294              # double 0.18354084539170812
	.quad	0x3fe48bb5de1b8908              # double 0.64205449467070341
	.quad	0x3fb51d63fe72aba0              # double 0.082479714985920882
	.quad	0x3fe2fcb7f58f5927              # double 0.59334943734100853
	.quad	0x3fe9e8f115142b3d              # double 0.80968526951742315
	.quad	0x3fdf9a4c1e5babfc              # double 0.49379256214768907
	.quad	0x3fe70f2d246c1ab6              # double 0.72060258020140711
	.quad	0x3feb0a67fe4ca2a0              # double 0.84502029102175768
	.quad	0x3fee6a1f254cb817              # double 0.95045430455297975
	.quad	0x3feccb780de88a9b              # double 0.89983751980283289
	.quad	0x3fde4dcd46d8c504              # double 0.47349864882114923
	.quad	0x3fd07d51b5f3101a              # double 0.2576488758898009
	.quad	0x3fe7c6948a13c51e              # double 0.74299075096329026
	.quad	0x3fe4b06f67c55ced              # double 0.64653749721301568
	.quad	0x3fdafc0bd4ea08de              # double 0.42163368027116899
	.quad	0x3fea134893e3e1c9              # double 0.81485394367978714
	.quad	0x3fce1940e240951c              # double 0.23514567420458199
	.quad	0x3fe21d9a1cd1b81c              # double 0.5661135256648353
	.quad	0x3fda69018b6873c8              # double 0.41265905965866212
	.quad	0x3fe135b8ec5c4022              # double 0.53780790485507546
	.quad	0x3feaa0b17c7cb833              # double 0.83211588205245446
	.quad	0x3fe0640e30773d4e              # double 0.51221379724476335
	.quad	0x3fe209a6331fc84a              # double 0.56367788300691157
	.quad	0x3fea746157b92300              # double 0.8267065728515206
	.quad	0x3fa3d92fb2bc6910              # double 0.038766375130039887
	.quad	0x3fdac902e4e9b5c4              # double 0.41851875643518732
	.quad	0x3fdd6452849eb782              # double 0.45924818946047463
	.quad	0x3fef38d0106869fd              # double 0.97568515019094059
	.quad	0x3fe1f47f03f451f6              # double 0.56109572193469037
	.quad	0x3fb444c6cc93b360              # double 0.079174447007699822
	.quad	0x3fe824e074e8f695              # double 0.75450156053530526
	.quad	0x3fd94c747c29b346              # double 0.39529144406587979
	.quad	0x3fd925349ad52f2c              # double 0.39289584274659961
	.quad	0x3fcd25088919dfe4              # double 0.22769266790760334
	.quad	0x3fc2465b3d148554              # double 0.14277210695676479
	.quad	0x3fd325f3e1608e8c              # double 0.29919144639482265
	.quad	0x3fb21ba959e3e6c0              # double 0.070734581418856912
	.quad	0x3fc944040444c908              # double 0.19738817413742304
	.quad	0x3fea4ce84307dc08              # double 0.82188809482511349
	.quad	0x3fceb385314cba28              # double 0.23985352427685425
	.quad	0x3fd5efc5fa3023ca              # double 0.34275960380960824
	.quad	0x3fd8f712c25d14f4              # double 0.39008015614338309
	.quad	0x3fe5977e70d8c158              # double 0.67474290886279231
	.quad	0x3fe02e729b596b49              # double 0.50566988317164274
	.quad	0x3fe186d4f4fbda40              # double 0.54770896767042387
	.quad	0x3fe91827852968ba              # double 0.78419853218226554
	.quad	0x3fc4c99f273f9f0c              # double 0.16240300575668021
	.quad	0x3fa48dbe30f582a0              # double 0.040143912769740497
	.quad	0x3fe3211bbee6f639              # double 0.59779155049881816
	.quad	0x3fe3a09a485a03a6              # double 0.61335481768775391
	.quad	0x3fdcf8137438435c              # double 0.45264135694110563
	.quad	0x3fc154db1dbf7318              # double 0.13540209724933372
	.quad	0x3fef7d096da1b926              # double 0.98401328480193651
	.quad	0x3fd404a4e72102d0              # double 0.31278345652758066
	.quad	0x3fed6aef5c2b41bd              # double 0.91930358888389885
	.quad	0x3f635cbb2d3a8a00              # double 0.0023635535997794666
	.quad	0x3fea2a4cc98b6d9e              # double 0.81766356815517205
	.quad	0x3fd1db46c0df0a0c              # double 0.27900856814463348
	.quad	0x3fd0444edc61bbb8              # double 0.25416919252068793
	.quad	0x3fe990e80e9b3294              # double 0.79893877842694616
	.quad	0x3fdaf29ad9d9b19e              # double 0.42105742716264583
	.quad	0x3fdbaf775785c894              # double 0.43258460566642865
	.quad	0x3feabb429b7698b3              # double 0.83535890926284251
	.quad	0x3f984f999c859b20              # double 0.023741150072420614
	.quad	0x3fd654f017a5c2de              # double 0.34893419560743932
	.quad	0x3fccd0ce082c2bd0              # double 0.2251222171692846
	.quad	0x3fd24da8eea9fada              # double 0.28598998362569505
	.quad	0x3fd2dc494852d61e              # double 0.29469520628785684
	.quad	0x3fc9266c23832650              # double 0.19648505910872638
	.quad	0x3fe71561a09d7372              # double 0.72136002893567608
	.quad	0x3fdd517d87aced1c              # double 0.45809877633628715
	.quad	0x3fef94e4574c4fa0              # double 0.98692528772743415
	.quad	0x3fd90be7f76821e0              # double 0.39135169182602958
	.quad	0x3fc42dd1cb9ef4dc              # double 0.15764830057552259
	.quad	0x3fd88e683fb412d2              # double 0.3836918470481524
	.quad	0x3fe41086a050146e              # double 0.62701731978508035
	.quad	0x3f839b805a3f08c0              # double 0.0095739390889132414
	.quad	0x3fdc6a2325934088              # double 0.44397810620740374
	.quad	0x3fec9f16a529b174              # double 0.89441997774478787
	.quad	0x3fcff33d42df79d8              # double 0.24961057439118295
	.quad	0x3fd93ebd8b7c5eb8              # double 0.39445437070524347
	.quad	0x3fc1824843009b68              # double 0.13678839942550813
	.quad	0x3fbf81229bfedac0              # double 0.12306419666752344
	.quad	0x3fe048fc5c7ad19c              # double 0.5089093977208452
	.quad	0x3fe09e275698231a              # double 0.51930586731859596
	.quad	0x3fd6f5a117c04cd2              # double 0.35874202079248818
	.quad	0x3fd842d392597c1c              # double 0.37907876293133014
	.quad	0x3fddfa628315d190              # double 0.46840727616588484
	.quad	0x3fe7493b9d1bc46b              # double 0.7276895588421558
	.quad	0x3fde420fc5c20c84              # double 0.47278208076767947
	.quad	0x3fe5033b78b145a7              # double 0.65664456913707603
	.quad	0x3fed0b51cbdba241              # double 0.907631776962326
	.quad	0x3fd4ecdfb0ac296e              # double 0.32695762875723389
	.quad	0x3fb9370eeafa14f0              # double 0.09849637257328303
	.quad	0x3fdd21833750397c              # double 0.45517044450470912
	.quad	0x3fe11aedf8555ed8              # double 0.53453730108864317
	.quad	0x3fbb3b5595fab068              # double 0.10637411986925971
	.quad	0x3fe4297ca5abdb9a              # double 0.63006431920699701
	.quad	0x3fdba381c37bd33c              # double 0.43185466852382937
	.quad	0x3fea6a7996b624ee              # double 0.82549743114318885
	.quad	0x3fe5982fef796b4e              # double 0.67482754490206687
	.quad	0x3fce04321f15ecb0              # double 0.23450304525235799
	.quad	0x3fe72c5f9c516f21              # double 0.72416668444518362
	.quad	0x3fe42e9e2554286f              # double 0.63069064417619625
	.quad	0x3fe8a382d312fc56              # double 0.76995984292433195
	.quad	0x3feecb304589ee6a              # double 0.96230329114719138
	.quad	0x3fdea596bf17e668              # double 0.47885674153767477
	.quad	0x3fea18707bf4a849              # double 0.81548332414718872
	.quad	0x3fc17d7e09ca480c              # double 0.13664222219500777
	.quad	0x3fedc7287901edc3              # double 0.93056129106792473
	.quad	0x3fed40288faedc35              # double 0.91408184111685975
	.quad	0x3fdaf4c381725dcc              # double 0.42118919030459945
	.quad	0x3fe8fd24cbf8f7fd              # double 0.78090133512864635
	.quad	0x3fe3cbcccab42cc8              # double 0.61862792578303871
	.quad	0x3fe090c7b6baf1d1              # double 0.51767335595610053
	.quad	0x3fcd8f873fd7d434              # double 0.23094263665521597
	.quad	0x3fd75e45f15720a8              # double 0.36512898033516672
	.quad	0x3fc361aed83f3314              # double 0.15141854819230416
	.quad	0x3fec283ac1fb6c6d              # double 0.87991083037503659
	.quad	0x3fd4e4b52c6aea5c              # double 0.32645921075496687
	.quad	0x3fef57df5bd0dc17              # double 0.97947662289414239
	.quad	0x3fce29ff15fea970              # double 0.23565662931407472
	.quad	0x3fcf15258ace7390              # double 0.24283284452112897
	.quad	0x3fc17a9ed9521bcc              # double 0.13655458079685301
	.quad	0x3fd0d12fb7ba1f44              # double 0.2627677244386073
	.quad	0x3fef77c066b242d3              # double 0.98336811120869993
	.quad	0x3fe6b74e54ca16d9              # double 0.70987621841842519
	.quad	0x3fe45c70daaa36e9              # double 0.63628428180683472
	.quad	0x3fde4a3c7cce9cf0              # double 0.4732810229128992
	.quad	0x3feb3bfd6440355a              # double 0.85107297497021794
	.quad	0x3fd68ba63462e03c              # double 0.35227351299136322
	.quad	0x3fd195988b12a2a6              # double 0.2747556074269063
	.quad	0x3f8afee180054a40              # double 0.013181459159260389
	.quad	0x3fe664f1113f0c7b              # double 0.69982198112883454
	.quad	0x3fda9af3105e9980              # double 0.41570736502253425
	.quad	0x3fe7f73db8040210              # double 0.7489307970100203
	.quad	0x3fe9e7221b088b2b              # double 0.80946450500446099
	.quad	0x3fee9eab6d3c4260              # double 0.95686885199581794
	.quad	0x3fe251d25d292e9e              # double 0.57248800464136074
	.quad	0x3f7d974b599efd80              # double 0.0072243636477077322
	.quad	0x3fd562c771db8400              # double 0.33415399664778533
	.quad	0x3fefb1e7f2a9a78a              # double 0.99046704669056962
	.quad	0x3fdc38cee42a4d82              # double 0.4409672954727385
	.quad	0x3fd8250bc93d3300              # double 0.37726111080409908
	.quad	0x3fb3c96ad4900198              # double 0.077292134184978045
	.quad	0x3feab7cea1daba32              # double 0.83493739711940962
	.quad	0x3f80d4a928f8e6c0              # double 0.0082181182507271577
	.quad	0x3fe1bc2f44bd310d              # double 0.55422175813285579
	.quad	0x3fe0dc5861744cfd              # double 0.52689761194270057
	.quad	0x3fd00912f40a4db0              # double 0.25055383522086583
	.quad	0x3fdb0a5cf5b65df0              # double 0.4225075149092552
	.quad	0x3fe559c784c7ed4e              # double 0.66720939573080229
	.quad	0x3fe33192e0fbe0e2              # double 0.599801482602768
	.quad	0x3fe228fa2acb458b              # double 0.56750210149964297
	.quad	0x3fed99db05e11b49              # double 0.92503119610123818
	.quad	0x3fed8f5038e9c679              # double 0.92374430766922366
	.quad	0x3fd1f56d18e13ad4              # double 0.28060462407749509
	.quad	0x3fea6c743be473fd              # double 0.82573901841863029
	.quad	0x3febf69f8564c78f              # double 0.8738553624482267
	.quad	0x3fe1173906179f4e              # double 0.53408480825326321
	.quad	0x3fe52d8804a953ee              # double 0.66180802259861848
	.quad	0x3fe9a2a2bbc55e28              # double 0.80110298799531154
	.quad	0x3fe590d8cede760f              # double 0.67393150714969063
	.quad	0x3fefeef589e81b21              # double 0.99791981634993842
	.quad	0x3fd83f011db596ba              # double 0.37884548093129988
	.quad	0x3fe6257ed6761872              # double 0.69207708250975331
	.quad	0x3fd099cbf1201282              # double 0.25938700244322643
	.quad	0x3fa55bdeb55cecb0              # double 0.041716537131344267
	.quad	0x3fd0385996131ac0              # double 0.25343932777142797
	.quad	0x3fcb051f4e52aeec              # double 0.21109381985058151
	.quad	0x3fe15b9cc0ba2a83              # double 0.54243314401658471
	.quad	0x3fd68e8896dfb3f4              # double 0.35244955762647057
	.quad	0x3fc92b27a352d094              # double 0.19662948107509648
	.quad	0x3f98375e9a8fadc0              # double 0.023648718055410134
	.quad	0x3fcf5c628d9ac81c              # double 0.24500686563766372
	.quad	0x3feddd3c071a1330              # double 0.93325616252022847
	.quad	0x3fe3816750f37d52              # double 0.60954633532302638
	.quad	0x3fe4bbe9bd61760f              # double 0.64793860424441785
	.quad	0x3fb0034e5ded41a8              # double 0.062550447398513342
	.quad	0x3fd1f1d89395efa2              # double 0.28038610851921864
	.quad	0x3f8cc49d36befd00              # double 0.014046886666504665
	.quad	0x3fec8dee529a83e6              # double 0.89232555516730083
	.quad	0x3fecded3a7ffcb75              # double 0.90220053493827257
	.quad	0x3fd428e9881d114e              # double 0.31499708454454811
	.quad	0x3fbaeebffc8131f8              # double 0.10520553507485164
	.quad	0x3fe07a2354a9838d              # double 0.51490942512110538
	.quad	0x3fee3cc06b943ae6              # double 0.94491597186592169
	.quad	0x3fb57020a4aee2e8              # double 0.083742180066916583
	.quad	0x3fee591a458d371d              # double 0.94837678512860502
	.quad	0x3f9d6345fe0beb80              # double 0.028699010496875399
	.quad	0x3fe23138cdeea3ed              # double 0.56850853177195193
	.quad	0x3fda1235597a4a12              # double 0.40736135232978754
	.quad	0x3fecebf777b5d0fc              # double 0.90380452519323695
	.quad	0x3fc0d4c08d7698c8              # double 0.13149268062006159
	.quad	0x3fe8b214a38b7160              # double 0.7717383569939038
	.quad	0x3fb9a77776ebcdb0              # double 0.10021158841464373
	.quad	0x3fe0c0e04c603eb5              # double 0.52354445378474301
	.quad	0x3fbfd8130447a6f0              # double 0.12439078192224051
	.quad	0x3fe852eaf0781185              # double 0.7601217934284682
	.quad	0x3f843401911391c0              # double 0.009864818801767039
	.quad	0x3febbf4b88ecb6a8              # double 0.86710144751642293
	.quad	0x3f9cc61491ab1360              # double 0.028099366560826566
	.quad	0x3fde7772f08776f2              # double 0.47604058732200294
	.quad	0x3fe940261da51808              # double 0.78908067502993706
	.quad	0x3fe219b7c4043754              # double 0.56563938412157677
	.quad	0x3fec60b19f4d3c80              # double 0.88680344689954893
	.quad	0x3fc5f84aa9e22f2c              # double 0.17163975997061109
	.quad	0x3fbc698a26a798d8              # double 0.11098540729253459
	.quad	0x3fa816b8e4e5aeb0              # double 0.047048356954147663
	.quad	0x3fdc059dcdbf3d6a              # double 0.43784279911502344
	.quad	0x3fe86fa0701c41bb              # double 0.7636263074546642
	.quad	0x3fe9beb89d53d410              # double 0.80453139045732946
	.quad	0x3fe11a70ce0b3ab4              # double 0.53447761767332347
	.quad	0x3fe027328200cdbb              # double 0.50478482619512677
	.quad	0x3fe121f1cb6c2504              # double 0.53539361697144772
	.quad	0x3fd4b272fe7aa22a              # double 0.32339167453258943
	.quad	0x3fb0b9af799c4a00              # double 0.06533333510405015
	.quad	0x3f99de42e36e4d40              # double 0.025261922007826287
	.quad	0x3fe623f112be8bb7              # double 0.69188741360664252
	.quad	0x3fe403ed5493687c              # double 0.62547937887872207
	.quad	0x3fc05bbab33eb438              # double 0.12779935600465975
	.quad	0x3fb3e54e2677a570              # double 0.07771767081398706
	.quad	0x3fd01066c4d17f8a              # double 0.25100106449644299
	.quad	0x3fde425468e22f06              # double 0.47279844515354374
	.quad	0x3fe0f4cde78c3a06              # double 0.5298833391587443
	.quad	0x3fed340f70990e73              # double 0.91260501853726195
	.quad	0x3febddf70fad9b92              # double 0.87084534704341565
	.quad	0x3fc546b61c46ac4c              # double 0.16622043972651779
	.quad	0x3feb52d187e50f57              # double 0.85385967771478988
	.quad	0x3fefc9a5d650f9d6              # double 0.99336521013884282
	.quad	0x3fef8ad7d80c657e              # double 0.98569862553556198
	.quad	0x3fdcf416d3f55432              # double 0.45239802073530477
	.quad	0x3fd1b48661fa42b6              # double 0.27664336746333207
	.quad	0x3fef04bf0730bde0              # double 0.96932937054037537
	.quad	0x3fe56752111a2b58              # double 0.66886237468984699
	.quad	0x3fe99d582fdb7a9b              # double 0.80045708987366326
	.quad	0x3fca2bf969c4b18c              # double 0.20446698822469178
	.quad	0x3fca57a2680ae8a8              # double 0.20579938965039912
	.quad	0x3fe781bb81c04864              # double 0.73458648054134956
	.quad	0x3fb05a153f2244f8              # double 0.063874557412663679
	.quad	0x3fe89f7106fa223f              # double 0.76946307528221058
	.quad	0x3fc3fa90f7061630              # double 0.15608417569835487
	.quad	0x3fd93831b381e7fa              # double 0.39405481843971268
	.quad	0x3fed3a1a923db99c              # double 0.91334274828641381
	.quad	0x3fcb527433e6bfc4              # double 0.21345379385229368
	.quad	0x3fe73c227cce5139              # double 0.72609066368253317
	.quad	0x3fb362336136fe68              # double 0.075717173799597526
	.quad	0x3fd939dfe0e31acc              # double 0.39415738069184836
	.quad	0x3fe8e1030dad7f14              # double 0.77746727630071399
	.quad	0x3fec585b83d0a6da              # double 0.88578582520605242
	.quad	0x3fe8acd219fb5900              # double 0.77109627794814628
	.quad	0x3fa757034712cc70              # double 0.045585730005222369
	.quad	0x3fde01608a57d702              # double 0.46883405218191865
	.quad	0x3fb7e3657928a618              # double 0.093313543395787568
	.quad	0x3fea9b0ad56e49de              # double 0.83142606435495359
	.quad	0x3fcb92ee871c73b4              # double 0.2154215011331907
	.quad	0x3fee26d203903942              # double 0.94223881431552337
	.quad	0x3fd8aaf582bc48e6              # double 0.38543451087129055
	.quad	0x3fea5ca5d1e05295              # double 0.82380953780610133
	.quad	0x3fdf212c59d7b0ca              # double 0.48639973424611738
	.quad	0x3fef6ed964023407              # double 0.98228139431887562
	.quad	0x3fe4c585143e2bf1              # double 0.64911130860980226
	.quad	0x3fc9ae00303335a8              # double 0.2006225810386415
	.quad	0x3f8c69a0e8c49a00              # double 0.013873345473780496
	.quad	0x3fdf8c43862ee3b2              # double 0.49293602088760757
	.quad	0x3fef50db552dea2c              # double 0.97862021099655782
	.quad	0x3fce3c9dffd37bc8              # double 0.23622488967427402
	.quad	0x3fe18d14c74c41ef              # double 0.54847182202689548
	.quad	0x3fe746d57c96320b              # double 0.72739672025051172
	.quad	0x3fb0b7fc36bc5510              # double 0.065307391513062862
	.quad	0x3fbeeb7c5227c228              # double 0.1207807255339125
	.quad	0x3fdcc5449c70c832              # double 0.44954028394124912
	.quad	0x3fdab458188156de              # double 0.41725733178223645
	.quad	0x3fe560c3b4b69bf8              # double 0.66806206985063366
	.quad	0x3fc3f70d1767f504              # double 0.15597690241694562
	.quad	0x3fbafd4b1191a5e8              # double 0.10542744807175775
	.quad	0x3fc64c1653e52cf4              # double 0.17419699760862495
	.quad	0x3fec96bfd7e0d49a              # double 0.89340202487678089
	.quad	0x3fed6ccbd03d1370              # double 0.91953077956769214
	.quad	0x3fe49f143d26d174              # double 0.64441883033445757
	.quad	0x3fe52a7d8742aae3              # double 0.66143680971194063
	.quad	0x3fef53f62401df15              # double 0.97899920494725967
	.quad	0x3fd39904cd26f1e4              # double 0.30621452364337487
	.quad	0x3fe7ba0349dc6cc8              # double 0.74145664621337293
	.quad	0x3fe1f85e6f5b6c79              # double 0.56156846761167778
	.quad	0x3fe53190d59e6934              # double 0.66230050775928939
	.quad	0x3feb25fb737c1ca3              # double 0.84838650279643379
	.quad	0x3f93e02b14842300              # double 0.019409821631628965
	.quad	0x3fd66fa14d616aac              # double 0.35056335980122344
	.quad	0x3fd3c015c03de94c              # double 0.30859893582932751
	.quad	0x3fe2830cffa0a0f2              # double 0.57849740912663905
	.quad	0x3feeaa52f8dbe7a5              # double 0.95829151730798811
	.quad	0x3feece128e0cf60b              # double 0.9626553320337633
	.quad	0x3fdaa71e907e047a              # double 0.41645015822002274
	.quad	0x3fdd55909fe49c78              # double 0.45834746946861271
	.quad	0x3fed77d29d3d4aa7              # double 0.92087679587196625
	.quad	0x3fed8888fc47d700              # double 0.92291688226279689
	.quad	0x3fe4674c79cffaf8              # double 0.63760970870484268
	.quad	0x3fcad591579b1ae4              # double 0.20964257028227629
	.quad	0x3fd3ecde0e919024              # double 0.31133223936763188
	.quad	0x3fe41df0624bf2e2              # double 0.62865466307229334
	.quad	0x3fd8189488eff72a              # double 0.37650025723256653
	.quad	0x3fc7fc3ae56eefb0              # double 0.18738495066452066
	.quad	0x3fa4642ab715a6b0              # double 0.039826712464514968
	.quad	0x3fe296511271e4e5              # double 0.58084920504111592
	.quad	0x3facc67742262960              # double 0.056201674294316772
	.quad	0x3fe18b4d00418819              # double 0.54825449037548701
	.quad	0x3fb390b2fb593400              # double 0.076426683773391346
	.quad	0x3fdbc73c849e8f96              # double 0.43403542471991707
	.quad	0x3fed4cec88e149e9              # double 0.91564013227826735
	.quad	0x3fdc90abe911bdf0              # double 0.44633004913973107
	.quad	0x3fe42597ed11decf              # double 0.62958904555031292
	.quad	0x3fef0f9a8411cf2f              # double 0.97065473360860277
	.quad	0x3fb40d14d4f1e108              # double 0.078324605930792157
	.quad	0x3feb0230df5695a0              # double 0.84401744480844698
	.quad	0x3fe66e8875aa5128              # double 0.70099280339721748
	.quad	0x3fec709409b6709e              # double 0.88874246499064546
	.quad	0x3fe4d5785c55ce92              # double 0.65105836900916558
	.quad	0x3fe5a6bb5d7d222f              # double 0.67660301456004912
	.quad	0x3fe8f92b6ea046bb              # double 0.78041621786743265
	.quad	0x3fd45d200720ef08              # double 0.31818390556485143
	.quad	0x3fcb0cab32c89408              # double 0.21132411937392725
	.quad	0x3fc91fe2481c4c80              # double 0.19628551980040143
	.quad	0x3fdb0d2744c7b68c              # double 0.42267781941232196
	.quad	0x3fd6d078e81f4256              # double 0.35647413891004953
	.quad	0x3fc1a2010edd11d4              # double 0.13775647378692091
	.quad	0x3fcde376adb0f430              # double 0.23350413781182189
	.quad	0x3fe6c38a9a3f13e0              # double 0.71136980177163522
	.quad	0x3fdee8001f83caec              # double 0.48291018560045873
	.quad	0x3fe8b5096a5acd00              # double 0.77209921619797228
	.quad	0x3fedd78e06197fda              # double 0.93256283942536844
	.quad	0x3fbfc92f0f68b7b8              # double 0.12416357160756675
	.quad	0x3fe8bcf34685439f              # double 0.77306522153422808
	.quad	0x3feed3179d3bb206              # double 0.96326809606176833
	.quad	0x3fd9608df3df5ff6              # double 0.39651821914367191
	.quad	0x3fd0403ee0d962f0              # double 0.2539212413590084
	.quad	0x3fe6e060be9a6cfb              # double 0.71488988139336074
	.quad	0x3fb6ca299fff2ef0              # double 0.089022256433221036
	.quad	0x3fcdb0fcfef0fc98              # double 0.23196375320728602
	.quad	0x3fd2e932f39d881e              # double 0.29548333921968772
	.quad	0x3feb921a9b7f8914              # double 0.86158495302905402
	.quad	0x3fc9a49edc8a04c0              # double 0.20033632057678652
	.quad	0x3fda336b166cdf54              # double 0.4093883246418859
	.quad	0x3fc8858e14abd778              # double 0.19157577523554514
	.quad	0x3fdbbf021240d0fc              # double 0.43353320868051504
	.quad	0x3fe39930d5d7bcec              # double 0.61245004430921091
	.quad	0x3fcef2035672fe80              # double 0.24176065179016248
	.quad	0x3fbe68844de57e68              # double 0.11878230001229328
	.quad	0x3fc29772a47c3ec0              # double 0.14524682075033546
	.quad	0x3fe905cfa3e12aba              # double 0.7819593621037122
	.quad	0x3feabd6b4e6f0601              # double 0.83562245673255131
	.quad	0x3fbddce30dd3b380              # double 0.11665171706745348
	.quad	0x3fc4dcf901b9d470              # double 0.16299355110428193
	.quad	0x3fe2c689fd5c81b2              # double 0.58673572048797085
	.quad	0x3fd12dbe2a8ab1b0              # double 0.2684169211813936
	.quad	0x3fc666bb7f336ac8              # double 0.17501014433840667
	.quad	0x3fe1b9387063e9bd              # double 0.55385992003657913
	.quad	0x3fe1e95103489acb              # double 0.55973101273851833
	.quad	0x3fdc1bfa565ac906              # double 0.43920763428754162
	.quad	0x3fefaed0393cab14              # double 0.99008952311609954
	.quad	0x3fc2c1e87abd382c              # double 0.14654260628816596
	.quad	0x3fd29046beddcaf0              # double 0.29005592955870352
	.quad	0x3fdd3637ae9a36fc              # double 0.45643417407050868
	.quad	0x3fece1e880f0e415              # double 0.90257668670449454
	.quad	0x3fef80243fbe8528              # double 0.98439228487055618
	.quad	0x3fb40746c12d4250              # double 0.078236028826048853
	.quad	0x3fef5c356dccd95b              # double 0.98000594563817899
	.quad	0x3fe66a4bc4e3f583              # double 0.70047558264893472
	.quad	0x3f8b24f8d9fd7700              # double 0.013254112389116113
	.quad	0x3fd55df847f52370              # double 0.33386046435457839
	.quad	0x3fe14962b2d4d03b              # double 0.54020819595326175
	.quad	0x3fe8750e4a9d8a6e              # double 0.76428904126471564
	.quad	0x3fe18bbdc5fd02ea              # double 0.54830826444239489
	.quad	0x3fd995d321e31c14              # double 0.3997695761613056
	.quad	0x3fd7ea5f9ffbf326              # double 0.37368002532439204
	.quad	0x3fd944abe8dace28              # double 0.39481637706487271
	.quad	0x3fe78aebcaabd8f9              # double 0.73570813736185336
	.quad	0x3fe184d096a9a8ec              # double 0.54746274401011652
	.quad	0x3fe6303f941307cd              # double 0.69338969155091379
	.quad	0x3feb66094c0f6669              # double 0.85620560508250521
	.quad	0x3fece5e2de05da35              # double 0.90306228031005864
	.quad	0x3fb411adf45d4198              # double 0.078394767913101737
	.quad	0x3fdf37e7b104a772              # double 0.48778717314654962
	.quad	0x3fe54d5003d0e641              # double 0.66568756814303509
	.quad	0x3fee6e74f93ede33              # double 0.95098351174141837
	.quad	0x3fd5720758f594e4              # double 0.33508475959236095
	.quad	0x3fdc07157ed2fb30              # double 0.43793237099810067
	.quad	0x3fdcb6d0c5e1f528              # double 0.44865817379452944
	.quad	0x3fe50f859103aff4              # double 0.65814474413991642
	.quad	0x3fcde92adf340a94              # double 0.23367820643041581
	.quad	0x3fe5a27035732a59              # double 0.67607889594485038
	.quad	0x3fe44bd86a28ae05              # double 0.63425846800004193
	.quad	0x3fd3e03ad7d00e5c              # double 0.31056090426884508
	.quad	0x3fee652efee0474b              # double 0.94985151081548602
	.quad	0x3fa9a10c2d861fd0              # double 0.05005682044708204
	.quad	0x3fe0623b314ef0a7              # double 0.51199111586131074
	.quad	0x3fe1fe84b3acb66a              # double 0.56231913655001375
	.quad	0x3fa2f5c40b249d40              # double 0.037031294212563015
	.quad	0x3fe40c4defed9097              # double 0.62650200711188375
	.quad	0x3fddafe12e2970c6              # double 0.46385983951564602
	.quad	0x3f739c653062d180              # double 0.004787822026788624
	.quad	0x3f856b779765eb80              # double 0.010458883579067324
	.quad	0x3fed65b8a4497f6a              # double 0.91866714560818008
	.quad	0x3fc2a6e9c99c50dc              # double 0.14571878761547097
	.quad	0x3fde256a5487e6be              # double 0.47103365187613722
	.quad	0x3fe94437e7c24b11              # double 0.78957743897839994
	.quad	0x3fe58eb6454c0638              # double 0.67367089781345779
	.quad	0x3fd39631f42a9436              # double 0.3060421833454855
	.quad	0x3fecef4b984f8057              # double 0.90421085117487621
	.quad	0x3fe6d27c3033c564              # double 0.71319398321626837
	.quad	0x3fbc5d1856b4eec8              # double 0.11079551808227983
	.quad	0x3f6a98ca44058500              # double 0.0032466841222890119
	.quad	0x3fd96fc28f67e064              # double 0.39744628910512447
	.quad	0x3fe6177c7e4d44ee              # double 0.69036698025061383
	.quad	0x3fee0ce25491821e              # double 0.93907276646865845
	.quad	0x3fbe0736772242e8              # double 0.11729755791226248
	.quad	0x3fda465bbb3ef348              # double 0.41054433141453162
	.quad	0x3fcfcd2174dab7c4              # double 0.24844759183673493
	.quad	0x3fb44e0017c328a8              # double 0.079315191079475711
	.quad	0x3fbb9bd38764bcf0              # double 0.10784647040849271
	.quad	0x3fd4bef9338c7938              # double 0.32415609392218725
	.quad	0x3fed6b252571c9f4              # double 0.9193292361581471
	.quad	0x3fec64b80ca2c04a              # double 0.88729479282302148
	.quad	0x3fa81aed721065d0              # double 0.047080440687021885
	.quad	0x3fe536729d5e9b5c              # double 0.66289644943467918
	.quad	0x3fef050d145538c2              # double 0.96936658831852918
	.quad	0x3fe8b10a2e9ab515              # double 0.77161130049140303
	.quad	0x3fe2445645286bdc              # double 0.57084191806222462
	.quad	0x3fbf3ae8943a1918              # double 0.121992622554988
	.quad	0x3fe62acca2595d6e              # double 0.69272453030400327
	.quad	0x3fe4986af0b07597              # double 0.64360568055751599
	.quad	0x3fe74d1bccc971cc              # double 0.72816267011108371
	.quad	0x3fe12c7d46c8174d              # double 0.53668083023578961
	.quad	0x3fe9e799ff236611              # double 0.80952167350477755
	.quad	0x3fba3c8f43af74c8              # double 0.10248656656718247
	.quad	0x3fb30beb960f08d0              # double 0.074400638709479994
	.quad	0x3fea5189f5724839              # double 0.82245347918274725
	.quad	0x3fa0dc75aadee170              # double 0.03293197356055344
	.quad	0x3fee06cce978409d              # double 0.93833013152654454
	.quad	0x3feb4a86255b6c63              # double 0.85284716888726242
	.quad	0x3fe0683385273882              # double 0.5127198792122416
	.quad	0x3fe787952d9b2a17              # double 0.73530062587207368
	.quad	0x3f97a6ba51d0f980              # double 0.023096953624411665
	.quad	0x3fedf8ec9f2429fb              # double 0.9366362674930423
	.quad	0x3fda742f4c07f676              # double 0.41334135460770172
	.quad	0x3fc5b3b36ab175f4              # double 0.16954653463010028
	.quad	0x3fb8c695585e75b8              # double 0.096780141901453898
	.quad	0x3fd04376796affae              # double 0.25411760194037469
	.quad	0x3fe16b30d10fe625              # double 0.5443348010296104
	.quad	0x3fe8bf4a1b199e8e              # double 0.7733507661150314
	.quad	0x3fd03111483a7d30              # double 0.25299484304010189
	.quad	0x3fe59608b70c69be              # double 0.6745647025266448
	.quad	0x3fe826eda44932c2              # double 0.75475198828788614
	.quad	0x3fc1dd7b6cb192a4              # double 0.13957159812266184
	.quad	0x3fb5f12242f19340              # double 0.085710660308518705
	.quad	0x3fd005b7d295af4e              # double 0.25034900250351633
	.quad	0x3fed9ed4adf32f09              # double 0.9256385228595444
	.quad	0x3fb04a69b32626f0              # double 0.063635450589710763
	.quad	0x3fe16e892bd08d80              # double 0.5447431426768361
	.quad	0x3fe6ef64f27f6a0b              # double 0.71672294009050697
	.quad	0x3fe8870f155c733d              # double 0.76648668453308455
	.quad	0x3faee9c315061f50              # double 0.060377212826152715
	.quad	0x3f9bd2b4f13f54e0              # double 0.027170970177242348
	.quad	0x3febe92b8ff81540              # double 0.87221315497360052
	.quad	0x3fe7fdbf410d5679              # double 0.74972498612869665
	.quad	0x3fdfe9cbf399df86              # double 0.49864481724898047
	.quad	0x3fd432b5d2e00e02              # double 0.31559510796816437
	.quad	0x3f99262487222c60              # double 0.02455956530370107
	.quad	0x3fcd73f510a4f248              # double 0.23010123551093131
	.quad	0x3fe0e8ccb730730c              # double 0.52841792849685154
	.quad	0x3fd64df00f559580              # double 0.34850694177142572
	.quad	0x3f828a1da7cef480              # double 0.0090524975620331904
	.quad	0x3fa5a3e0cf54b5b0              # double 0.042265916165301731
	.quad	0x3fec8e812000bb6f              # double 0.89239555597838016
	.quad	0x3fef84ed0da6b13d              # double 0.98497631708372745
	.quad	0x3fed24651194bcd7              # double 0.91069272455015493
	.quad	0x3fd2642c59baa50e              # double 0.28736408960919924
	.quad	0x3fcd67ce028f4dfc              # double 0.22973036885251463
	.quad	0x3fe04d61842e74ed              # double 0.50944591347402268
	.quad	0x3fe7590d93737090              # double 0.72962073134432792
	.quad	0x3fd37f79763498f2              # double 0.30465542357923348
	.quad	0x3fea67f181b630eb              # double 0.82518840154946582
	.quad	0x3fda02dfe55e3684              # double 0.40642545127125396
	.quad	0x3fd882a02b442bca              # double 0.3829727575800318
	.quad	0x3fd58813069eb4ae              # double 0.33643031736830664
	.quad	0x3fdd950771744bde              # double 0.46222101287383832
	.quad	0x3fb65146ec871c10              # double 0.087177689310110162
	.quad	0x3fe6ad57f57a6193              # double 0.70866010613376529
	.quad	0x3fedcd0e925f6bd1              # double 0.93128136242318693
	.quad	0x3fe43434bc484850              # double 0.63137280248543881
	.quad	0x3fb0bf2735347510              # double 0.065416765679817468
	.quad	0x3fda7d0fccf90758              # double 0.41388316170570283
	.quad	0x3feaa1f6c46fd67d              # double 0.83227098814559464
	.quad	0x3f96e3eb92235220              # double 0.022353821558526943
	.quad	0x3fe378a540c395e3              # double 0.60847723626346484
	.quad	0x3fe11caec7010ef3              # double 0.53475130908961288
	.quad	0x3fe8d20398f200a2              # double 0.77563648101933702
	.quad	0x3fc46cb9ac8cc0a0              # double 0.15956803250583551
	.quad	0x3fd7cdc975c04262              # double 0.37193523882982593
	.quad	0x3fd9527d7b7f06a8              # double 0.39565980014968227
	.quad	0x3fd7a8ba40edc768              # double 0.36967331257539238
	.quad	0x3fbddf51a7703f08              # double 0.11668882692196914
	.quad	0x3fedb483bd9e35f2              # double 0.92828547510879234
	.quad	0x3fda5724d7c614c8              # double 0.41156884261756632
	.quad	0x3fa7ce99d63d5120              # double 0.046498114969525384
	.quad	0x3fed265d0772a9b4              # double 0.91093303160351135
	.quad	0x3fed380440f6a131              # double 0.91308796585238927
	.quad	0x3feaff05ba17e273              # double 0.84363066049907187
	.quad	0x3fc1b383a028cca0              # double 0.13829083748132565
	.quad	0x3fd5dd8aef4d61b4              # double 0.34164689416277416
	.quad	0x3fe39a2b1d91ed27              # double 0.61256938720126619
	.quad	0x3fd7a4fcc90209b2              # double 0.36944503431018483
	.quad	0x3fe98e034247a24b              # double 0.79858553834226009
	.quad	0x3fe6789d79c872a7              # double 0.70222352777235109
	.quad	0x3fbcf038cd1d9d98              # double 0.1130404949923246
	.quad	0x3fe741beabc8a43b              # double 0.72677548934473835
	.quad	0x3fd498a042fd58dc              # double 0.32181555311161758
	.quad	0x3fcd4d4bfb5ac6c0              # double 0.22892141125844567
	.quad	0x3fd7e4ca847d86ae              # double 0.37333929956921963
	.quad	0x3fee998605a5c696              # double 0.95624066451110212
	.quad	0x3fec5f46a5c54993              # double 0.8866303670604786
	.quad	0x3feb062f3b246d2c              # double 0.84450494338253667
	.quad	0x3fea3cb1f2579a1e              # double 0.81990907032451665
	.quad	0x3feab350d2c51c83              # double 0.83438912549981159
	.quad	0x3fd5529039c75f9a              # double 0.33316426889859374
	.quad	0x3fec4f0249bf2bf9              # double 0.88464464572586998
	.quad	0x3feb99c2e12c8a5c              # double 0.86251968364042452
	.quad	0x3fea823934703225              # double 0.82839641801689778
	.quad	0x3fedd3bd1eab26f8              # double 0.93209701528505118
	.quad	0x3fec426231944aaf              # double 0.88310346301508058
	.quad	0x3fec1fe56db8b3fa              # double 0.87889357976894122
	.quad	0x3fee3bb0243c54e0              # double 0.94478613927153887
	.quad	0x3fa46536ed776e40              # double 0.039834705817807237
	.quad	0x3fe7679e3513d583              # double 0.73139868132300057
	.quad	0x3fb24581d0af0308              # double 0.071373094032434747
	.quad	0x3fecca1a09a453d4              # double 0.89967061885055921
	.quad	0x3fe8805f094b9466              # double 0.7656703168437502
	.quad	0x3feb827b20573371              # double 0.85967785183457412
	.quad	0x3feaec2f947b744c              # double 0.84133128166616577
	.quad	0x3f7b337fec224080              # double 0.0066409108132036154
	.quad	0x3fc0696afe2dfbf4              # double 0.12821710024942912
	.quad	0x3fcd1b1d1774637c              # double 0.22738994260069123
	.quad	0x3feb6ac031fe7c71              # double 0.85678109898061738
	.quad	0x3fc70bde3552166c              # double 0.18004968265101995
	.quad	0x3fb3ea071a0165c8              # double 0.077789729928006257
	.quad	0x3fbb0a4d13889040              # double 0.10562593199625869
	.quad	0x3fe92262f1bab6a9              # double 0.7854475709225045
	.quad	0x3fddf5d1e25a3e20              # double 0.46812865357148503
	.quad	0x3fe16676398accba              # double 0.5437575458403423
	.quad	0x3fed7f051729d012              # double 0.92175535701835742
	.quad	0x3fccecd2835d6504              # double 0.22597724355981808
	.quad	0x3fd660894d452742              # double 0.34964211030875358
	.quad	0x3fe8ee882153b218              # double 0.77911764630477176
	.quad	0x3fdfdc850fa5423a              # double 0.49783445861706677
	.quad	0x3fef65fa017a3bf9              # double 0.98119831360406728
	.quad	0x3fd1569a97e735be              # double 0.27091088136952723
	.quad	0x3feebad3fe60729a              # double 0.96030616457899787
	.quad	0x3fe506f746c97c30              # double 0.65710033250423372
	.quad	0x3f71ba2178e65b80              # double 0.0043278987417555426
	.quad	0x3fcbcced20175eac              # double 0.21719135348279417
	.quad	0x3fcb8469daaecb94              # double 0.21497843912001413
	.quad	0x3fec238dd5f2c1ec              # double 0.87934009348651676
	.quad	0x3fd39b7a0cba692a              # double 0.30636454813942982
	.quad	0x3fe6669c2718c9d9              # double 0.70002563129520035
	.quad	0x3fe92724bc11982b              # double 0.78602825863049952
	.quad	0x3fbc470caaefc388              # double 0.11045912907844813
	.quad	0x3fd2d571bc4db682              # double 0.29427760495205046
	.quad	0x3fe61407fba665ea              # double 0.68994521284474541
	.quad	0x3feed560d0240bcf              # double 0.96354714062214863
	.quad	0x3fc27474c148e1e4              # double 0.14417895734528863
	.quad	0x3fc37ffa86b7b118              # double 0.15234309747700858
	.quad	0x3fc77d30d060f684              # double 0.18350801634544578
	.quad	0x3fc963381bfea980              # double 0.19834042899067228
	.quad	0x3fee7391e562d542              # double 0.95160765459028362
	.quad	0x3fa0869288542620              # double 0.032276705877006373
	.quad	0x3fd1b23c61881cee              # double 0.27650365376071206
	.quad	0x3fe4b3bfdffaec9c              # double 0.64694207903029932
	.quad	0x3fc99dbf625ad7a4              # double 0.20012657453997662
	.quad	0x3fcfc6f4b09aa198              # double 0.24825914977305952
	.quad	0x3fe24f4fdd6fe8f8              # double 0.57218163728182869
	.quad	0x3fdf357b6941dd7e              # double 0.48763928679496604
	.quad	0x3fe74489c4f3bbea              # double 0.72711647479252162
	.quad	0x3fe5ebab4bb2db42              # double 0.68501820359129106
	.quad	0x3fde5e4b582f5478              # double 0.47450526820950456
	.quad	0x3fd3cb21efb091ec              # double 0.30927322776031363
	.quad	0x3fefe566802c61f7              # double 0.99675297769414228
	.quad	0x3fdfa58e42c18e4c              # double 0.49447971839092442
	.quad	0x3fc9feca32e85fbc              # double 0.2030880688259894
	.quad	0x3fed2886d113bd51              # double 0.9111970981156593
	.quad	0x3fee1088b9f6aafc              # double 0.93951832123761347
	.quad	0x3fee846b636ce805              # double 0.95366448802019532
	.quad	0x3fa74ef3b7cbb120              # double 0.045524231134409954
	.quad	0x3fdf14943780e6c6              # double 0.48563104076638941
	.quad	0x3fe1782ae6aacfc3              # double 0.54591889431184659
	.quad	0x3fab97769cb2f4a0              # double 0.053889948490430273
	.quad	0x3fe47f7cc21a97e7              # double 0.64056241904176836
	.quad	0x3fe4e122c1867f9e              # double 0.65248239324499813
	.quad	0x3fe2f60f858acccf              # double 0.59253669817408106
	.quad	0x3fd661d404f23bfe              # double 0.34972095950155324
	.quad	0x3febb1b42e5089ef              # double 0.86544236226865034
	.quad	0x3f970e48eccf4900              # double 0.02251542992946387
	.quad	0x3fc06b9301793864              # double 0.12828290531109865
	.quad	0x3fe65cfee34b0fb6              # double 0.69885200875477582
	.quad	0x3fe38d7e183b20a6              # double 0.6110220406781266
	.quad	0x3fec038c5c6b1c39              # double 0.87543314028233177
	.quad	0x3fd6a2e575b7a1ce              # double 0.35369240279990499
	.quad	0x3fdb0457ee0a9a44              # double 0.42214010473472663
	.quad	0x3fc2c582cc312ef8              # double 0.14665255518263343
	.quad	0x3fcb3f514943cc04              # double 0.21286979749092449
	.quad	0x3fd1e9c3574d9fa2              # double 0.27989276433663168
	.quad	0x3fe6f6647ba79e0d              # double 0.71757721091575066
	.quad	0x3fe52aa04b2191a6              # double 0.66145338701294487
	.quad	0x3fe35b5fdaa1907e              # double 0.60490410519970772
	.quad	0x3feae72aceef1c59              # double 0.84071865479280483
	.quad	0x3fd5b59c76d7665e              # double 0.33920966725927382
	.quad	0x3fa5cc0c18ea3d40              # double 0.042572382012731058
	.quad	0x3fe6b77ae7c28892              # double 0.70989747300724759
	.quad	0x3fe0f1730f4e6bbf              # double 0.52947381009595762
	.quad	0x3fe94a0aa85555e4              # double 0.79028828504186465
	.quad	0x3fe9a38e500b0ba0              # double 0.80121532090594271
	.quad	0x3fa354e51f8d6f00              # double 0.037757072545643311
	.quad	0x3fe36ab3a469f323              # double 0.60677511322100874
	.quad	0x3fdcf73d350c00a8              # double 0.45259027653083672
	.quad	0x3fd252fed49a9e90              # double 0.28631563913447966
	.quad	0x3f985d67b65a9380              # double 0.023793812279695015
	.quad	0x3fdc7a038065d8dc              # double 0.44494712389804447
	.quad	0x3fe80f2b3a25b22b              # double 0.75185166699299566
	.quad	0x3fdfaa5dda373dfc              # double 0.4947733527196474
	.quad	0x3fcbe99271af3598              # double 0.21806555319782883
	.quad	0x3fc0c1357aaa50a0              # double 0.13089626779094932
	.quad	0x3fec058f68fe1f48              # double 0.87567873484020087
	.quad	0x3fde292358a4959c              # double 0.47126086861165972
	.quad	0x3fe5720290078b62              # double 0.6701672375751111
	.quad	0x3fec1296674a2427              # double 0.87726898359062921
	.quad	0x3fc9410c0108dfcc              # double 0.19729757357140298
	.quad	0x3f813cfd20a6c080              # double 0.0084171081151398486
	.quad	0x3fb0008be69a0b68              # double 0.062508338736774527
	.quad	0x3fec870e7dc9a541              # double 0.89148640220552278
	.quad	0x3fe61b877ac7deed              # double 0.69086050015081713
	.quad	0x3fedde83e032afe5              # double 0.93341249264403514
	.quad	0x3fdd6e2d1692094a              # double 0.45984961704393312
	.quad	0x3fdeaa1bfffd4546              # double 0.47913265227278534
	.quad	0x3fa294224ae66ad0              # double 0.036286422389101625
	.quad	0x3fe498055c29b193              # double 0.64355724335250597
	.quad	0x3fd3a5f40f0f84a0              # double 0.3070039889408438
	.quad	0x3fe7e3ef3f84126d              # double 0.74657404332590505
	.quad	0x3fd130572dd7b7a4              # double 0.26857547261067283
	.quad	0x3fcd674b17a9cd70              # double 0.22971476226266985
	.quad	0x3fd04cc1be73c18e              # double 0.25468486403317392
	.quad	0x3fc39cd590b1dad4              # double 0.15322370114491568
	.quad	0x3fe12326fe2abb37              # double 0.53554105417229081
	.quad	0x3fe6793cf38fcea2              # double 0.70229957171109825
	.quad	0x3fe389f86bbc3fb2              # double 0.6105920891004557
	.quad	0x3fcb60fb97803d58              # double 0.21389717957979815
	.quad	0x3fea8afa71b8dae8              # double 0.82946512423845054
	.quad	0x3fc5246d58611660              # double 0.16517416777985527
	.quad	0x3fe29df7bc3d8c13              # double 0.58178316846567879
	.quad	0x3fce876f85afcb54              # double 0.23850816753073423
	.quad	0x3fdf73d50c35255c              # double 0.49144483749531331
	.quad	0x3fec42682805bdc9              # double 0.8831063062370329
	.quad	0x3f547a9d32798800              # double 0.0012499365929206085
	.quad	0x3fe1ef0dae246109              # double 0.56043132793550499
	.quad	0x3fbfcd3e840fca10              # double 0.12422552799379383
	.quad	0x3fd39ee9e22f4c56              # double 0.30657431686740233
	.quad	0x3fe2cc1114e04704              # double 0.58741048886642533
	.quad	0x3fd3be1a62456bb0              # double 0.30847797009271982
	.quad	0x3fe59bf32d7d8fdc              # double 0.67528685459955851
	.quad	0x3fcdae6891500d24              # double 0.23188502402636246
	.quad	0x3fe6c5350f6beaf4              # double 0.71157315265676724
	.quad	0x3fc1c993c2b44278              # double 0.13896414763486908
	.quad	0x3fc4f4119194fc8c              # double 0.16369838341231391
	.quad	0x3fd607904a64de60              # double 0.34421164765396917
	.quad	0x3fe6671e413af974              # double 0.70008766880327622
	.quad	0x3fb24c97cfac1898              # double 0.071481216622574784
	.quad	0x3fd96d29ac55d25c              # double 0.39728776769269358
	.quad	0x3fd45d0d6f68fbb8              # double 0.31817947273151104
	.quad	0x3fdedbc199720e1a              # double 0.4821628569118005
	.quad	0x3fe63e954a74763a              # double 0.69513954679468459
	.quad	0x3fc63984ca98dd10              # double 0.17363033192098287
	.quad	0x3fec160cd769a820              # double 0.87769167015835947
	.quad	0x3fe9a803366fdfef              # double 0.80175934440830854
	.quad	0x3fe676c024254b18              # double 0.7019959169359451
	.quad	0x3fea4f6ca1111764              # double 0.82219535311081104
	.quad	0x3fed88169503a90c              # double 0.92286233047824017
	.quad	0x3febec1cef035d93              # double 0.87257239038710777
	.quad	0x3fe79f39bb2be9a9              # double 0.73818670803966768
	.quad	0x3fb84c2d5a12b898              # double 0.094912371149549535
	.quad	0x3fe272e1f5d2867c              # double 0.57652376186543064
	.quad	0x3fd05713d004a878              # double 0.25531478227879445
	.quad	0x3fde9307d67e3f62              # double 0.47772403666112073
	.quad	0x3fd11c0e77687550              # double 0.26733743344251071
	.quad	0x3fd991a8a30e0804              # double 0.39951530383416434
	.quad	0x3fe9e618f7d699ff              # double 0.8093380776015805
	.quad	0x3fc24a794d4a48b4              # double 0.14289776109632657
	.quad	0x3fed61bf13926c32              # double 0.91818193266533954
	.quad	0x3fe4180f6f813b10              # double 0.6279370477512618
	.quad	0x3fb059bc70f24278              # double 0.063869264197146225
	.quad	0x3fc622d205a00de0              # double 0.17293763422649899
	.quad	0x3fad310df2cecac0              # double 0.057014881028768283
	.quad	0x3fe58f78bfa260ff              # double 0.67376363209316981
	.quad	0x3fda8d20c1e260d4              # double 0.41486376699459737
	.quad	0x3fd3aecf4086e8ac              # double 0.30754452992881443
	.quad	0x3fe57714e948c127              # double 0.6707863384563425
	.quad	0x3fdc3e725f0177fe              # double 0.44131144788650534
	.quad	0x3fe4d80b8418c2d9              # double 0.65137267875806082
	.quad	0x3fd1490b19864cc4              # double 0.27008321278226455
	.quad	0x3fbdaa22b89c0720              # double 0.11587731368129228
	.quad	0x3fedce726740a2d9              # double 0.93145103613377522
	.quad	0x3fe0c7a4e58b8a48              # double 0.52437062104247278
	.quad	0x3fee3d01ec99fe60              # double 0.9449472066043647
	.quad	0x3fe54d72883963ce              # double 0.66570402723584166
	.quad	0x3fd0576d9e4b7c9c              # double 0.25533619364245808
	.quad	0x3fe3ae1da82f604a              # double 0.61500437592167967
	.quad	0x3fe2f5d000b647ad              # double 0.59250641001766768
	.quad	0x3fc7c4dc56c2fcc8              # double 0.18569521175775194
	.quad	0x3fe6ebcedeaf11cd              # double 0.71628516667311148
	.quad	0x3fe59f3feb35b539              # double 0.67568965854085328
	.quad	0x3fe4a569e20c13fa              # double 0.64519209050979431
	.quad	0x3fed83b9c12904fc              # double 0.9223297856007373
	.quad	0x3fc2a76ff88e6c4c              # double 0.14573478352108038
	.quad	0x3fdeffc099716e64              # double 0.48435988411595177
	.quad	0x3fef16569e106944              # double 0.97147684928794619
	.quad	0x3fef2d037922b151              # double 0.97424482020645986
	.quad	0x3fb12f24d5f53f38              # double 0.067125608669127312
	.quad	0x3fd249c9272a6390              # double 0.2857535250164398
	.quad	0x3fef5856d3b10df1              # double 0.97953358980197269
	.quad	0x3fd1e524f6bae312              # double 0.27961086363534193
	.quad	0x3fca2f5cb52e537c              # double 0.20457037779547338
	.quad	0x3fef1d79748e812e              # double 0.97234795346233738
	.quad	0x3feffec09f3532ad              # double 0.99984770865701977
	.quad	0x3fb74a6ca10e9f20              # double 0.090979375191292622
	.quad	0x3fd16b2ea33c05da              # double 0.27216688099733022
	.quad	0x3fe1c81753ac0def              # double 0.55567518560604678
	.quad	0x3fe40cbf3223c1d8              # double 0.62655601303964215
	.quad	0x3fef4ad70ad88995              # double 0.97788574331598232
	.quad	0x3fcbf1ce24319f38              # double 0.2183168102958406
	.quad	0x3fde5329c1917638              # double 0.47382587340493698
	.quad	0x3f970d81600656e0              # double 0.022512456403623982
	.quad	0x3fcfe6d8d15f2a50              # double 0.24923238967160666
	.quad	0x3fe8cd42e4f82994              # double 0.77505631180365464
	.quad	0x3fe7294541c15fd7              # double 0.72378790705533447
	.quad	0x3fe84bc436162d39              # double 0.75924883426470224
	.quad	0x3fcba8144acb20dc              # double 0.21606687213921461
	.quad	0x3fca9b53a16ed4a4              # double 0.20786519415347471
	.quad	0x3fdf806e6de498d8              # double 0.49221382838949301
	.quad	0x3fb84daae44b5ed0              # double 0.094935112701360013
	.quad	0x3fe90d34c46aec29              # double 0.78286207545113939
	.quad	0x3fc7a47b0a08a65c              # double 0.18470705022746159
	.quad	0x3fe2cbd5350ace0a              # double 0.58738193855100573
	.quad	0x3fe666707a5357ce              # double 0.700004805485827
	.quad	0x3fe9570c89a4bcf9              # double 0.79187609561441186
	.quad	0x3fbd4d648ea6f9a0              # double 0.1144621704361044
	.quad	0x3fdbca9767c61a04              # double 0.43424019941485903
	.quad	0x3fbfeb5eb5719f98              # double 0.12468521051198278
	.quad	0x3fd5d65b535c842c              # double 0.34120829716454426
	.quad	0x3fe449a82bd443f7              # double 0.63399132309325423
	.quad	0x3fefe63f99fb96b9              # double 0.99685649943122378
	.quad	0x3fd2f51dc3da6f6c              # double 0.29621070982260878
	.quad	0x3fe0fd1c54ee6b54              # double 0.53089729869985058
	.quad	0x3fede7ad7e45423a              # double 0.93453097021308129
	.quad	0x3fef082c239a7ff7              # double 0.96974760965167561
	.quad	0x3fd314cdd608ab44              # double 0.29814477826828445
	.quad	0x3fe549d147f50e2b              # double 0.66526092580938234
	.quad	0x3fed930669ba3cb7              # double 0.92419739389324362
	.quad	0x3fec0fcb3208e526              # double 0.87692794582759315
	.quad	0x3fe5f15d4f59a37e              # double 0.68571343896938663
	.quad	0x3fbadae732dc6738              # double 0.10490269653055584
	.quad	0x3fc19fa08c2007d0              # double 0.13768393365904652
	.quad	0x3fd09bfeed008398              # double 0.25952122826316204
	.quad	0x3fc8d24f32d27e68              # double 0.19391813260607482
	.quad	0x3fdedf8ac8079dae              # double 0.48239392789988755
	.quad	0x3fb7626547562130              # double 0.091345148006557463
	.quad	0x3fdb09341cd2375c              # double 0.42243674101415762
	.quad	0x3fe7440a2ecfa984              # double 0.72705563681420005
	.quad	0x3feac95cb981916c              # double 0.83708034736313896
	.quad	0x3fe32e1320f4fe83              # double 0.59937435566821795
	.quad	0x3fdf561f39c34154              # double 0.48963146820917314
	.quad	0x3fec3bcfb74a9205              # double 0.88230119513588134
	.quad	0x3fea1c76053b4e82              # double 0.81597424527940654
	.quad	0x3fec12a431569a15              # double 0.87727555881866925
	.quad	0x3fce8fd6a7376d84              # double 0.23876460232609642
	.quad	0x3fea77ad5be612f2              # double 0.82710903119058643
	.quad	0x3fd03d82d417be14              # double 0.25375433647329371
	.quad	0x3fdb37bd59e46f50              # double 0.42527707842395035
	.quad	0x3fadf62922ecee20              # double 0.058518682015769707
	.quad	0x3fc0a5e39b7b7048              # double 0.13006253330138606
	.quad	0x3fe966834af5f494              # double 0.79376377716802659
	.quad	0x3fc5e3cf8ec5d944              # double 0.17101473304109949
	.quad	0x3fd28cc923b2096c              # double 0.28984287725338365
	.quad	0x3fccd5d6270fd9f8              # double 0.22527577311821267
	.quad	0x3fd4ae0b68aa93d4              # double 0.32312283726997504
	.quad	0x3fe80d7f03423797              # double 0.75164747845132041
	.quad	0x3fcd190f599b5948              # double 0.22732726931890057
	.quad	0x3fea190bd54af335              # double 0.81555740030999024
	.quad	0x3fe6ed8caf1105e0              # double 0.71649774735140781
	.quad	0x3faa08552933b050              # double 0.050844823150186458
	.quad	0x3fc7ea05cb3f9620              # double 0.18682930397260211
	.quad	0x3fefae879b133f35              # double 0.99005489624139519
	.quad	0x3fd7e2179f5ecd62              # double 0.37317457736499737
	.quad	0x3fe2546219db9295              # double 0.57280068445523347
	.quad	0x3fc4f8fda899a5a4              # double 0.16384859783583494
	.quad	0x3fc48444365c6924              # double 0.16028645185799306
	.quad	0x3fc92795c39a3684              # double 0.19652053881548082
	.quad	0x3fc94b3e70316b00              # double 0.19760876157928209
	.quad	0x3fef4e3bcac95dff              # double 0.97829999548679313
	.quad	0x3fd010019a55ebea              # double 0.25097694465483633
	.quad	0x3fd1de894f07126e              # double 0.27920754163304806
	.quad	0x3fd1b2231a9ce24e              # double 0.27649762724789617
	.quad	0x3f93cdbc3638aca0              # double 0.019339505013857505
	.quad	0x3fba6fe311193e48              # double 0.10326975982138109
	.quad	0x3fdc027c8237920c              # double 0.43765175549040758
	.quad	0x3fe674735852209a              # double 0.70171515703352161
	.quad	0x3fc68757306f7858              # double 0.17600526680957063
	.quad	0x3fe810c74ae82142              # double 0.75204815511919088
	.quad	0x3fdee4b87e5b90ea              # double 0.48271000232331451
	.quad	0x3fb14c26aa0bf950              # double 0.067568222537351064
	.quad	0x3fdb49b0f1289ae4              # double 0.42637275267263264
	.quad	0x3febbf9f1e39890a              # double 0.86714130309363324
	.quad	0x3fea6663e5f64c9f              # double 0.82499880709146456
	.quad	0x3fd6dfa752b3a012              # double 0.35740073276838402
	.quad	0x3fe74d73cdae3107              # double 0.72820463344535902
	.quad	0x3feff830d90b9426              # double 0.9990467299618373
	.quad	0x3fee36bbc0a2fcfc              # double 0.94418132423734801
	.quad	0x3febf2fa3e374ce4              # double 0.87341034080091306
	.quad	0x3feee64953fb7a4f              # double 0.96561113741683779
	.quad	0x3fea2133f12691af              # double 0.81655308818567629
	.quad	0x3fe5fd4f8d61936a              # double 0.68717172254092174
	.quad	0x3feaf8aa8f9cb291              # double 0.84285476731527542
	.quad	0x3fcbd7ccc3d269d8              # double 0.21752318917863422
	.quad	0x3fe949c2e5c218aa              # double 0.79025406717916735
	.quad	0x3fda02b8449c478c              # double 0.4064160032295312
	.quad	0x3fb7b2502719d730              # double 0.092564591928604
	.quad	0x3fed42c5f27fcb4a              # double 0.91440102923511657
	.quad	0x3fc195ed28dc84fc              # double 0.13738789076982261
	.quad	0x3fc285d14a6f2a7c              # double 0.14470878729328607
	.quad	0x3fec9ba6717b8a17              # double 0.89400026478353112
	.quad	0x3fe62558a467db59              # double 0.69205886946188422
	.quad	0x3fd6c389a2109f7c              # double 0.35568466974881807
	.quad	0x3fdf8753b4cc4bcc              # double 0.49263470321710368
	.quad	0x3fe5a7c35822ace0              # double 0.6767288895984187
	.quad	0x3fefb44f56ae01bf              # double 0.99076048783904713
	.quad	0x3fe0ac55e4c51002              # double 0.52103705102535991
	.quad	0x3fd591253f81fc64              # double 0.33698397828988491
	.quad	0x3fe7ffaa62be01df              # double 0.74995917592610428
	.quad	0x3fc930fe25c9e5f0              # double 0.1968076405062642
	.quad	0x3fe92b34231373bb              # double 0.78652388430383924
	.quad	0x3fd52f0260dee81e              # double 0.33099421939880525
	.quad	0x3fee1273cd8fc63b              # double 0.93975248478654494
	.quad	0x3fe2720b40ef3af0              # double 0.57642138178365876
	.quad	0x3fc746e6678a75a4              # double 0.1818511968203157
	.quad	0x3fef662ad208c5ac              # double 0.9812215902549517
	.quad	0x3fe00ec8725cce80              # double 0.50180456482344482
	.quad	0x3fe901a530e47f39              # double 0.7814508395131049
	.quad	0x3fd9b867a509a212              # double 0.40188017956691724
	.quad	0x3fefc7a25d83762a              # double 0.99311941398963666
	.quad	0x3fef1daa864d51e7              # double 0.97237135153642106
	.quad	0x3fe9ed943b5c632c              # double 0.8102513465301846
	.quad	0x3fe4d76a03a0956e              # double 0.65129566868260524
	.quad	0x3fe79812d1b4c01a              # double 0.73731366117681607
	.quad	0x3fc27f68aa95c33c              # double 0.14451320962282377
	.quad	0x3fc013c9301a1c1c              # double 0.12560381745080995
	.quad	0x3fb8a575988ad880              # double 0.096274709455288487
	.quad	0x3fe0e1259b12c498              # double 0.52748375213390641
	.quad	0x3fd6acad060f2cda              # double 0.35428929893232708
	.quad	0x3fdcd9474d948f3a              # double 0.45076162887766069
	.quad	0x3fd8eacd517583fc              # double 0.3893311782358635
	.quad	0x3fd223665286a98e              # double 0.28341062602216816
	.quad	0x3fbf7981e3353fd0              # double 0.12294780537672456
	.quad	0x3fa43053a20e5f90              # double 0.039431203396076531
	.quad	0x3fe389346ae864a6              # double 0.61049862747599515
	.quad	0x3fed8c8775233883              # double 0.92340443495210456
	.quad	0x3fc150812c646a58              # double 0.13526930492010325
	.quad	0x3f9fc7bbb5a6c6a0              # double 0.031035359346509694
	.quad	0x3fd3f69ee0e778ec              # double 0.31192752803134627
	.quad	0x3fed088b70090728              # double 0.90729305154693396
	.quad	0x3fa57853cfbf9a20              # double 0.041933650121610322
	.quad	0x3fea7b7abcf24ceb              # double 0.82757317451105672
	.quad	0x3fe3eab51012f68d              # double 0.62240079059093179
	.quad	0x3fe4f2b98a27fad9              # double 0.65462948783519004
	.quad	0x3fe5938e20297459              # double 0.67426210672023068
	.quad	0x3fd09d301b48585a              # double 0.25959398903194641
	.quad	0x3fd8b44b384c38d2              # double 0.38600426194979065
	.quad	0x3fea3529de5321cc              # double 0.8189896909980745
	.quad	0x3fe998e2f2e69c96              # double 0.79991290513580071
	.quad	0x3fdff7e019091ca2              # double 0.49950411267168182
	.quad	0x3fedab2ceaec6790              # double 0.92714544185149528
	.quad	0x3fe01e532eb79ff7              # double 0.50370177387685444
	.quad	0x3fe404039c615a35              # double 0.62549000304244962
	.quad	0x3fd2f3fc40cba008              # double 0.29614168479611225
	.quad	0x3fed2ed32a541513              # double 0.91196592585825653
	.quad	0x3fe8216ca777fece              # double 0.7540801306604068
	.quad	0x3f5c103e6a5cf400              # double 0.0017128572012119481
	.quad	0x3fb2c4cd39ef9c78              # double 0.073315455097700766
	.quad	0x3fd3a5d97eb48a7a              # double 0.3069976556163635
	.quad	0x3fc6d56b968d2444              # double 0.17838806964053522
	.quad	0x3fc2ed6ec92cf98c              # double 0.14787087271720301
	.quad	0x3fefa6dbbeaff0d1              # double 0.98911845439536183
	.quad	0x3f953edcd62e11c0              # double 0.020747614452845786
	.quad	0x3fe85c8412fbeca1              # double 0.76129344661548626
	.quad	0x3fdce0744dbda892              # double 0.45119960395698755
	.quad	0x3fd3914fa19d3eee              # double 0.30574408323899049
	.quad	0x3fe2ec3867a2eef8              # double 0.59133548966880678
	.quad	0x3febd6d593e4e6e0              # double 0.8699748886640144
	.quad	0x3fdbb4ac69654dac              # double 0.43290243427801545
	.quad	0x3fb5c7e1bedc67f8              # double 0.085081204506792463
	.quad	0x3fd69cc5caedd136              # double 0.35331864182741712
	.quad	0x3fe48def3f9da167              # double 0.64232599663686762
	.quad	0x3fe9f086deb061f3              # double 0.81061118596977477
	.quad	0x3fd54174a8a3ac08              # double 0.33212009876905357
	.quad	0x3fa385e4b9d21dc0              # double 0.038130901034544973
	.quad	0x3fe1d1c5ba527fa2              # double 0.55685697928491984
	.quad	0x3f5d788ac0f09e00              # double 0.0017987589851687913
	.quad	0x3fce1a95563c5468              # double 0.23518625937200288
	.quad	0x3fd328499dc69c58              # double 0.29933395774646021
	.quad	0x3fe8c83ca181efd5              # double 0.77444297356077618
	.quad	0x3fe8a4ca6a20a847              # double 0.77011605003395622
	.quad	0x3fe835a7ffc9cb51              # double 0.75654983481067906
	.quad	0x3fefbee99cc61ec8              # double 0.99205475444701907
	.quad	0x3fcde502cc97a9fc              # double 0.23355135907998192
	.quad	0x3fd577d9350d187c              # double 0.33543996983315316
	.quad	0x3fe421f1d2299fb6              # double 0.62914362952596181
	.quad	0x3fc8d5c941cb1c74              # double 0.1940242358452654
	.quad	0x3fc310eb39286548              # double 0.14895382204921703
	.quad	0x3feca0ee06ca5edc              # double 0.89464474989196274
	.quad	0x3fccda94988849c8              # double 0.22542054603452599
	.quad	0x3fcf87a66c0ad9fc              # double 0.24632721210009823
	.quad	0x3fd3afed40122904              # double 0.30761271721770833
	.quad	0x3fed5248da2daf92              # double 0.91629450428944126
	.quad	0x3fe3c2da2c4e65ab              # double 0.61753567365228912
	.quad	0x3fa8f1a1ded8a040              # double 0.048718508198647203
	.quad	0x3fdb7bbb48903df0              # double 0.4294269760730165
	.quad	0x3fead32412496ca9              # double 0.83827403613704121
	.quad	0x3fdeb02d838cd8be              # double 0.47950303885171397
	.quad	0x3fedbf7550d9d4c7              # double 0.929621370231552
	.quad	0x3fc14ae26c855ce8              # double 0.13509779261469324
	.quad	0x3fc381971ea744c0              # double 0.15239228245494552
	.quad	0x3fc4383e2bc7bf84              # double 0.15796639573772719
	.quad	0x3fc35921d1ffb618              # double 0.15115759614802537
	.quad	0x3fee64d804a0fc94              # double 0.94981003669808439
	.quad	0x3feecf33e42b1210              # double 0.96279329837904193
	.quad	0x3fe9c13d933af588              # double 0.80483893161697129
	.quad	0x3fe5e3e4fbf6a36e              # double 0.68406914912803329
	.quad	0x3fa8dc1c57de4b90              # double 0.048554311491122992
	.quad	0x3fd890dc43ee8618              # double 0.38384157785375939
	.quad	0x3fe995d2faf906ba              # double 0.79953907983891459
	.quad	0x3feefbac228af8f8              # double 0.96822172876980427
	.quad	0x3fea7ec1abf512fa              # double 0.82797320924200268
	.quad	0x3fbb552aba4b3400              # double 0.10676829384028963
	.quad	0x3fee1af5949093ad              # double 0.94079092995217695
	.quad	0x3fd1d9b36c11eddc              # double 0.27891240647997306
	.quad	0x3fca7ebf259c2e84              # double 0.20699300133161469
	.quad	0x3fe294037b51e2a6              # double 0.58056806646262227
	.quad	0x3fe350f57c89d956              # double 0.60363268207474152
	.quad	0x3fda3677ea1cf926              # double 0.40957448828329956
	.quad	0x3fef1162c102d46a              # double 0.97087228486510679
	.quad	0x3fcab9056539b300              # double 0.20877139513631704
	.quad	0x3fedc4c6902590a6              # double 0.9302704635015473
	.quad	0x3fe9b510df90ecbd              # double 0.80335277238136593
	.quad	0x3fde7673dd41f02a              # double 0.47597977263626723
	.quad	0x3febbbbd39973619              # double 0.86666737793138104
	.quad	0x3feb8ffeea2702f2              # double 0.86132760746849457
	.quad	0x3fd7594da91bc580              # double 0.364825644631388
	.quad	0x3fe9cef042705d65              # double 0.80651104904511028
	.quad	0x3fda9915a05beaca              # double 0.4155935350424157
	.quad	0x3fe1e1fb5b1806a8              # double 0.55883567611472973
	.quad	0x3fa960161e6af4e0              # double 0.049561206067190389
	.quad	0x3fae0c46c2888c10              # double 0.058687411543609014
	.quad	0x3fe8009637e70738              # double 0.75007162970016505
	.quad	0x3fb5f57d3882bad0              # double 0.08577711705832347
	.quad	0x3fb93a7a947a57d8              # double 0.098548566102493296
	.quad	0x3feac634f6d56262              # double 0.83669517717050845
	.quad	0x3fbdd80f271aebf0              # double 0.11657805161205181
	.quad	0x3f77f691997e6380              # double 0.0058503806575566086
	.quad	0x3fe1495f679d364c              # double 0.54020662533884822
	.quad	0x3fe79447d27fa97a              # double 0.73685065377257719
	.quad	0x3fe8b489bdd1782c              # double 0.77203833650469766
	.quad	0x3fea0b8b2dc24638              # double 0.81390913903505346
	.quad	0x3fd05b7f719dff0a              # double 0.25558458419253383
	.quad	0x3fdccbf897d6c688              # double 0.44994940593742472
	.quad	0x3fdb20ef62a0bf86              # double 0.42388519889481591
	.quad	0x3fb92a2e054decd8              # double 0.098299862189310416
	.quad	0x3f865a3253608f00              # double 0.01091422383257834
	.quad	0x3fe5704db7066b4c              # double 0.66995893237194926
	.quad	0x3fe20e8b9dfbfd15              # double 0.56427555900873705
	.quad	0x3fedc6e1444bd8d8              # double 0.93052733744732574
	.quad	0x3fe9bc905bf7fc2c              # double 0.80426805460581851
	.quad	0x3fe29b7cfde34bba              # double 0.5814804991481346
	.quad	0x3feebd7610bf487d              # double 0.9606275870412585
	.quad	0x3fa47c7301dcd130              # double 0.040011972405780916
	.quad	0x3fe82dfed3f36639              # double 0.75561467548977312
	.quad	0x3fd9be5568954b84              # double 0.40224204266740338
	.quad	0x3fe37d8de4116bb0              # double 0.60907644791165261
	.quad	0x3fd96cc9f005a9e2              # double 0.3972649425474214
	.quad	0x3fe77372ba6fa0ff              # double 0.73284279263773999
	.quad	0x3fdc66445bb7d13a              # double 0.44374188381995661
	.quad	0x3fd3ccd2e968a9ac              # double 0.30937645715553219
	.quad	0x3fed29fe54e4d05a              # double 0.91137615757771617
	.quad	0x3fe80400e8fcd485              # double 0.75048871522325611
	.quad	0x3fca7dc094141a80              # double 0.20696265440365735
	.quad	0x3fe8e526500d2b48              # double 0.77797237048194123
	.quad	0x3fc838e0f733e58c              # double 0.18923580236859683
	.quad	0x3fd2088ef34cefe8              # double 0.28177236327951372
	.quad	0x3fef5a3a2a68c5b2              # double 0.97976406367359048
	.quad	0x3fc7437bd4824d04              # double 0.18174693943419851
	.quad	0x3fec3a33020ace12              # double 0.8821044006239751
	.quad	0x3feb15813217e3a7              # double 0.84637508186198296
	.quad	0x3fcf2d7e530bf230              # double 0.24357585005772497
	.quad	0x3fdac147c66b5ef4              # double 0.41804689766784908
	.quad	0x3fe4b2cc61cd66ba              # double 0.64682597257634389
	.quad	0x3fd191c664bab68e              # double 0.27452239834642789
	.quad	0x3fdcf6bfec276bea              # double 0.45256040632165073
	.quad	0x3fec4fade11fa0a4              # double 0.88472646684114808
	.quad	0x3fdfd9e2bd876574              # double 0.49767368801766243
	.quad	0x3fd6abb310b00fb2              # double 0.35422970418607769
	.quad	0x3fbf7b7cafb672e8              # double 0.12297801294193855
	.quad	0x3fe1d7cc81dbff75              # double 0.55759263384969293
	.quad	0x3fe635ebb67b703d              # double 0.69408212319422768
	.quad	0x3fdd77122147d566              # double 0.46039250612314786
	.quad	0x3fe78afabc9f2351              # double 0.73571526374971985
	.quad	0x3fd0c32011bac6b8              # double 0.26190950137525304
	.quad	0x3fe5aabf5dc3be57              # double 0.67709320367243719
	.quad	0x3fd89e06803db860              # double 0.38464510463280099
	.quad	0x3feba7bdf6265b66              # double 0.86422632290019119
	.quad	0x3fc313f79fe82a0c              # double 0.14904685314134303
	.quad	0x3feef506321a80e4              # double 0.96741018091054487
	.quad	0x3fe2dc7ba83e42b9              # double 0.5894144330978498
	.quad	0x3fe9d9a66b2d4e5e              # double 0.80781861241343811
	.quad	0x3fbf03ce73428428              # double 0.12115183176003141
	.quad	0x3fb214e6d7f4a358              # double 0.070631435130633746
	.quad	0x3fdb506395aaa36e              # double 0.42678155532717355
	.quad	0x3fd12df6b602d786              # double 0.26843040251275629
	.quad	0x3fc3ba7e78593a00              # double 0.15412884594339005
	.quad	0x3fb0d3f731b2daf0              # double 0.06573433841081644
	.quad	0x3fe81ebac93034cc              # double 0.75375117582884731
	.quad	0x3fee4598b79b70df              # double 0.9459956728055906
	.quad	0x3fe3c3a1cd416901              # double 0.61763086403814793
	.quad	0x3fe12745fc36040e              # double 0.53604411373101057
	.quad	0x3feade90ad7d69f2              # double 0.83966859707589792
	.quad	0x3fea695827da4477              # double 0.82535941871368734
	.quad	0x3fec4091e7cf27c6              # double 0.88288207316622258
	.quad	0x3fdb7110d96f317c              # double 0.42877598985503318
	.quad	0x3f9981fbe5f3ae00              # double 0.024909912023685976
	.quad	0x3feffa0cba7ef763              # double 0.999273647546698
	.quad	0x3fdb094a3919183c              # double 0.42244201255778413
	.quad	0x3fb55e57f9842bd8              # double 0.083470819871009794
	.quad	0x3feaed4718dfc09c              # double 0.84146456583222883
	.quad	0x3fe48527f95e4c97              # double 0.64125441269642891
	.quad	0x3fecb9b5164f6856              # double 0.89766935689409411
	.quad	0x3fc9c0fa0f2a0330              # double 0.20120168438372721
	.quad	0x3fe1f5f2c09af2c3              # double 0.56127297991005098
	.quad	0x3fbdb848794768f8              # double 0.11609318695937876
	.quad	0x3fe6f3746bc46fcb              # double 0.71721859978014757
	.quad	0x3fd7105844c260a2              # double 0.36037260737203713
	.quad	0x3fc965aeb583a5ac              # double 0.19841560233116462
	.quad	0x3fa082bb50be2750              # double 0.032247403723046575
	.quad	0x3fddcbfdc8344118              # double 0.46557564307387755
	.quad	0x3fe6afef685bb14c              # double 0.70897646315055729
	.quad	0x3fd7e21046096c1e              # double 0.37317282523662409
	.quad	0x3fdb6a8802993318              # double 0.42837715390923981
	.quad	0x3fe3e32de728d902              # double 0.62148184917785465
	.quad	0x3fd6ed17cb4b9c26              # double 0.3582210049921194
	.quad	0x3fee1f92c985d139              # double 0.94135417327792148
	.quad	0x3fc0dcc013fe0124              # double 0.13173676468068962
	.quad	0x3febf2b4b97fd54a              # double 0.87337719183293783
	.quad	0x3fce2ea547286df4              # double 0.23579851126201812
	.quad	0x3fd473f89f6ac05c              # double 0.3195783192450159
	.quad	0x3fdeb01e3864413c              # double 0.47949939257616214
	.quad	0x3fe879122b22913a              # double 0.76477917122659922
	.quad	0x3fec4b2dde96d584              # double 0.88417714571430439
	.quad	0x3fe18bb0d012d86d              # double 0.54830208434465322
	.quad	0x3f8f0e7353a0f540              # double 0.015164280881544756
	.quad	0x3fedfa2c0182988c              # double 0.93678856177281621
	.quad	0x3fe8381d80b085c9              # double 0.75685000548053794
	.quad	0x3fe9a587310226a6              # double 0.8014560658641201
	.quad	0x3fbbb82b542ec608              # double 0.10827894978753971
	.quad	0x3fd53d89ddc319f2              # double 0.33188101440865048
	.quad	0x3feca9134996fe07              # double 0.89563907979021529
	.quad	0x3fe566609ceebf8a              # double 0.66874724055195256
	.quad	0x3fe25ee582381839              # double 0.57408404763623999
	.quad	0x3fd190d885da0212              # double 0.27446568557209716
	.quad	0x3fb3ea835cc68030              # double 0.077797136450045156
	.quad	0x3fd2b4594465b1e8              # double 0.29225761107843917
	.quad	0x3feb6f50f138adfc              # double 0.85733840097003577
	.quad	0x3febd94c536536f4              # double 0.8702756527725044
	.quad	0x3fd6a0635afb6562              # double 0.35353931317293619
	.quad	0x3fe4a35ece97dc75              # double 0.6449426684402072
	.quad	0x3fbd8049461a1b40              # double 0.11523874246095733
	.quad	0x3fe7d958560b9261              # double 0.74528137975410058
	.quad	0x3fcb90593706cc74              # double 0.21534266650050748
	.quad	0x3fd562bf72989376              # double 0.33415208998695023
	.quad	0x3fb0ced3df5a5848              # double 0.065655939130324303
	.quad	0x3fe33110ed623f32              # double 0.59973951686877158
	.quad	0x3fd439ef7b5eae58              # double 0.31603610084377953
	.quad	0x3fe6f31391ed5258              # double 0.7171724176537948
	.quad	0x3fbe7246013b1ae0              # double 0.11893117456484559
	.quad	0x3fe17a1ee369ba4c              # double 0.54615730682946539
	.quad	0x3fe1d7a6215eb09c              # double 0.5575743343120112
	.quad	0x3fef872f86b4436e              # double 0.98525215443997438
	.quad	0x3fe5d1ae30cf6c2c              # double 0.68184575589419216
	.quad	0x3fe0ef8ce31b2665              # double 0.52924198490763941
	.quad	0x3febf54ef67d661a              # double 0.87369487898394316
	.quad	0x3feefeb0273dc1d0              # double 0.96858985580734647
	.quad	0x3fce14169e7e11a0              # double 0.23498804797067141
	.quad	0x3fcc43036c2e38d8              # double 0.22079508573774009
	.quad	0x3fe16f52dfb3e91d              # double 0.54483932201336283
	.quad	0x3fe0205bb647e709              # double 0.50394998170597305
	.quad	0x3fdf914df25b7644              # double 0.4932436815996406
	.quad	0x3fdc2ee54dc918dc              # double 0.44036228748553952
	.quad	0x3fe1f76b60b0ef0a              # double 0.5614525688647245
	.quad	0x3fe6a8e11764a92d              # double 0.70811514443383816
	.quad	0x3fdc0287c1bbba64              # double 0.43765443724888642
	.quad	0x3fefb8753dcbb7d3              # double 0.99126684255110786
	.quad	0x3fe388d0764705aa              # double 0.61045096493778783
	.quad	0x3fefb92315462cbf              # double 0.99134973673917403
	.quad	0x3fc89bf9eb97eda8              # double 0.19226001742923171
	.quad	0x3fe882acee4ba028              # double 0.76595160047600519
	.quad	0x3fe5ba570253ebbb              # double 0.67899656729365832
	.quad	0x3fd20704ca26a498              # double 0.28167838803580869
	.quad	0x3feffc0527b133b8              # double 0.99951417686826626
	.quad	0x3fd7cf662bb78a88              # double 0.37203363675340784
	.quad	0x3fe17852268df12d              # double 0.54593760996025298
	.quad	0x3fce7063947b88cc              # double 0.23780483961224375
	.quad	0x3fea5c31e25ddbf9              # double 0.82375425541147174
	.quad	0x3fb8bd56a1df3fc8              # double 0.096639074821040727
	.quad	0x3fd508abc25d03e0              # double 0.32865423184199294
	.quad	0x3fdf89322dc82524              # double 0.4927487799728445
	.quad	0x3fe0468182afcca3              # double 0.50860667729138631
	.quad	0x3fb57ee11a541e60              # double 0.083967274597051667
	.quad	0x3fe7e1348caa6268              # double 0.74624087785475712
	.quad	0x3fd710a2cf4c0512              # double 0.36039037937014584
	.quad	0x3fd1595f57dd0378              # double 0.27107986050037125
	.quad	0x3fea47e3816ce7f7              # double 0.82127547529603262
	.quad	0x3fec8815bde827bc              # double 0.89161192980940695
	.quad	0x3fe4ad07f61afc64              # double 0.6461219603296624
	.quad	0x3fee7ff345b2006e              # double 0.95311893093459132
	.quad	0x3fbc91925a26b0c0              # double 0.11159624768214638
	.quad	0x3fe33b8cd60dfa58              # double 0.60101930434741302
	.quad	0x3fee06de65bceea3              # double 0.93833846922594366
	.quad	0x3f9d0a3f7d5771c0              # double 0.028359405541651617
	.quad	0x3fd2572464dddfa8              # double 0.28656873560202678
	.quad	0x3fe6b1e49342420d              # double 0.70921543847549773
	.quad	0x3fcf790b22474030              # double 0.24588145421739815
	.quad	0x3feebbf8dfc7a88d              # double 0.96044582087530872
	.quad	0x3fcd32402a9f25f8              # double 0.22809602814804442
	.quad	0x3fea1901f33eeb79              # double 0.81555268773023137
	.quad	0x3fbe4db8fe710dd0              # double 0.11837345325425663
	.quad	0x3fdfe2d025958a3e              # double 0.49821857137991177
	.quad	0x3fe828f307715b1d              # double 0.75499869779273221
	.quad	0x3fdbb1d541b8d968              # double 0.43272906702204361
	.quad	0x3fe937bfafca9ce2              # double 0.78805527052182023
	.quad	0x3fea1c22e4ef1f8a              # double 0.81593460763632319
	.quad	0x3fea1a3cd4089a0b              # double 0.81570283329784965
	.quad	0x3fea802fee1a74e4              # double 0.82814785484847819
	.quad	0x3feb19428d0d6614              # double 0.84683349179539613
	.quad	0x3fc9dd04c88e9fec              # double 0.20205745499447347
	.quad	0x3fe6d5f7a5d2a23f              # double 0.71361906420958821
	.quad	0x3feca7b8f2dad28a              # double 0.89547393257687813
	.quad	0x3f93433354992f40              # double 0.018811037100291417
	.quad	0x3fd247193aa2296c              # double 0.28558951116487807
	.quad	0x3fb03cc98db04168              # double 0.063427540866774046
	.quad	0x3fe6e47122c4f7c8              # double 0.71538597861194209
	.quad	0x3fc88c4319d175fc              # double 0.1917804599824392
	.quad	0x3fe52b2335ddf3e5              # double 0.66151581307314855
	.quad	0x3fedac7d80223283              # double 0.92730593706217268
	.quad	0x3fe8e9b5a1d358f5              # double 0.77852899176175916
	.quad	0x3fd0130d95e65216              # double 0.25116290701524357
	.quad	0x3fdb4ef05be1685e              # double 0.42669304821686704
	.quad	0x3fac99bae10278d0              # double 0.055860366789816873
	.quad	0x3fedeffe0ddc6b4d              # double 0.93554594714383088
	.quad	0x3febf57c9b1c55cd              # double 0.87371664328628074
	.quad	0x3feb48c3da000419              # double 0.8526324518026086
	.quad	0x3fd24b84198a561e              # double 0.28585913175752065
	.quad	0x3fcb716b701f44c0              # double 0.21439879393304828
	.quad	0x3fce19497c0ad6a0              # double 0.23514669949297673
	.quad	0x3fb3a8a8c0659e50              # double 0.076792284938727251
	.quad	0x3fef1dbf8132d25a              # double 0.97238135561071748
	.quad	0x3fd2ebe5e379c43c              # double 0.29564807142657279
	.quad	0x3fc69fc6048eb1ac              # double 0.17675090048341013
	.quad	0x3fdff74ff3a42fa6              # double 0.4994697455701903
	.quad	0x3fe438da889577ef              # double 0.63194014240775498
	.quad	0x3fe2bbd3e5b14af3              # double 0.58542818891359472
	.quad	0x3fe16ccc2eb77685              # double 0.54453095554681907
	.quad	0x3fe064690a01e8f5              # double 0.51225711779195982
	.quad	0x3fdcd9195a956ccc              # double 0.45075067373336419
	.quad	0x3fefdbb08ddca67c              # double 0.99556758601575223
	.quad	0x3fe54f7393d81116              # double 0.66594866634162275
	.quad	0x3f9651808a574f40              # double 0.021795280879657541
	.quad	0x3fe176860599ed43              # double 0.54571820348738986
	.quad	0x3fee82227784ee60              # double 0.95338557571035309
	.quad	0x3fe78bbfdc676c79              # double 0.73580925986915624
	.quad	0x3fa6e410156e32e0              # double 0.044708731285117542
	.quad	0x3fa0ef4155c1ef60              # double 0.03307537242741776
	.quad	0x3fbb03e39c6fdc90              # double 0.10552809304486943
	.quad	0x3fdfc675ce5cfec8              # double 0.49648804810201996
	.quad	0x3fe2327cd17f20aa              # double 0.56866303365042836
	.quad	0x3fedb25ba5ff6756              # double 0.92802221700115228
	.quad	0x3fd6822714afb97a              # double 0.35169388790281852
	.quad	0x3fd273d21750b54a              # double 0.28831913258439512
	.quad	0x3fe3c34b4f62a468              # double 0.61758962159104858
	.quad	0x3fe516bf4533bf53              # double 0.65902675167124369
	.quad	0x3fefd68dda2d083c              # double 0.9949406872986013
	.quad	0x3fe37392c043fee6              # double 0.60785806228520012
	.quad	0x3fd513cc2180e046              # double 0.32933333656138009
	.quad	0x3fe5be444cbbcff5              # double 0.67947592722930372
	.quad	0x3fe32133e8b56c05              # double 0.59780307246126141
	.quad	0x3fe14c702e815ca8              # double 0.5405808361346276
	.quad	0x3fd48bbc923bb01e              # double 0.32102884560186051
	.quad	0x3fe4b2ad75bcc08b              # double 0.64681122775620403
	.quad	0x3fd68131333026f4              # double 0.35163526533925382
	.quad	0x3fe6bc0e9f0953cd              # double 0.71045619069865895
	.quad	0x3fec253e3d41e0c3              # double 0.87954627956698805
	.quad	0x3fca1bffd0a6a7b8              # double 0.20397947013890216
	.quad	0x3fb9f8a9a31031c0              # double 0.10145054083859062
	.quad	0x3fabef3044129820              # double 0.054559238729140924
	.quad	0x3fb72f8f030efdc8              # double 0.09056943726226685
	.quad	0x3fe8eff01a843b36              # double 0.77928929499635191
	.quad	0x3fe060174c2f1449              # double 0.51172985915821656
	.quad	0x3fb69ee837a45fd0              # double 0.088362229904645817
	.quad	0x3fe20068b0fd2d06              # double 0.56254992073209631
	.quad	0x3fea084b92f36ee3              # double 0.81351259900426631
	.quad	0x3fea840032fbfbcb              # double 0.82861337621567921
	.quad	0x3fb2f003ff94b120              # double 0.073974847695982948
	.quad	0x3fdf4f282bf0e714              # double 0.4892063550101835
	.quad	0x3faf1042fb7e8490              # double 0.060670941543557011
	.quad	0x3fd362f84bdcfa36              # double 0.30291564377322133
	.quad	0x3fc47b54197a8bf8              # double 0.16001368755414069
	.quad	0x3f743ed30f866c00              # double 0.0049427265697898903
	.quad	0x3feb171705927813              # double 0.84656859482106694
	.quad	0x3fd526221df60aa8              # double 0.33045247007263834
	.quad	0x3fdc168b1c4def64              # double 0.43887593998055352
	.quad	0x3fc22510ba4d108c              # double 0.14175614449243701
	.quad	0x3fe4758c08ffab7c              # double 0.6393490005260527
	.quad	0x3fa512e9461e9f80              # double 0.04115990620567711
	.quad	0x3fc0cadc7c852e60              # double 0.1311908348092059
	.quad	0x3fdc6991be733e9a              # double 0.44394343947076609
	.quad	0x3fdb4b49cd61b2b0              # double 0.42647023255157546
	.quad	0x3fee7dac35dbbaa0              # double 0.95284090537264276
	.quad	0x3fe44670d4bfd1af              # double 0.63359872391315786
	.quad	0x3fe2125e50728b4f              # double 0.56474223816290159
	.quad	0x3fd2f7edf87f5a46              # double 0.29638242022830175
	.quad	0x3fd0ed9f28a44000              # double 0.26450327843576815
	.quad	0x3fe74b01e3245bc8              # double 0.72790617335965013
	.quad	0x3fd1a2e117646ca4              # double 0.27556636127855882
	.quad	0x3fd4307bea7c2696              # double 0.31545923136636966
	.quad	0x3fca6dda80a129a4              # double 0.20647746353854501
	.quad	0x3fdaa3e0e57b030e              # double 0.41625234995085314
	.quad	0x3fccfb7e3be86074              # double 0.22642496037656523
	.quad	0x3fd50bb1f4e023d8              # double 0.32883881486537581
	.quad	0x3feb8394af7d2e9b              # double 0.85981210971063449
	.quad	0x3fe419fc829310ba              # double 0.62817216399027775
	.quad	0x3fe0a7b3980968d9              # double 0.52047137922934461
	.quad	0x3fc5a4ed5956d258              # double 0.16909567701590578
	.quad	0x3fe711234365244f              # double 0.72084201014616578
	.quad	0x3feb160e4a08c99f              # double 0.84644236049489396
	.quad	0x3fd4129edf8326a2              # double 0.31363651111005642
	.quad	0x3fd438db65f65374              # double 0.31597027737853201
	.quad	0x3fd66dab4101f626              # double 0.35044366215137968
	.quad	0x3fea10d77a5b7538              # double 0.81455587289716558
	.quad	0x3fb809da401ca628              # double 0.093900337841340886
	.quad	0x3fd89cd7482b8dba              # double 0.38457281158317935
	.quad	0x3fe98339285220bf              # double 0.79726846575888277
	.quad	0x3f9bd2a0f73922a0              # double 0.027170672501855564
	.quad	0x3fdb20ad1e94f6ea              # double 0.42386939989579153
	.quad	0x3fd885e9a190e4ea              # double 0.38317337778023719
	.quad	0x3fc9f6bb9d1b0610              # double 0.20284218951387389
	.quad	0x3fe27cf8177454c3              # double 0.57775501805249296
	.quad	0x3fe61f32bf9f2de1              # double 0.69130837846881488
	.quad	0x3fe0b659576ff683              # double 0.52225939824684564
	.quad	0x3fea1fea29b4ee47              # double 0.81639583726741527
	.quad	0x3fe14f855e11ce9c              # double 0.54095714924774851
	.quad	0x3fe71f66cbf1b055              # double 0.72258319695311946
	.quad	0x3fb174073551f108              # double 0.068176699178312927
	.quad	0x3fbbea6ce4279ba0              # double 0.10904579706367068
	.quad	0x3fcebcaf6fec8230              # double 0.24013321843178081
	.quad	0x3fea07d2a2ffddd8              # double 0.8134549316009112
	.quad	0x3fed93d4654df6eb              # double 0.9242956141094657
	.quad	0x3fecedce1743acfe              # double 0.90402893585033417
	.quad	0x3fbf9b3343ecf040              # double 0.12346191795671846
	.quad	0x3fc03394aae85f4c              # double 0.12657411904433002
	.quad	0x3fef398dee8e596d              # double 0.97577568619707977
	.quad	0x3fee4772f8f2f4ac              # double 0.9462218153272679
	.quad	0x3fcfcb2d2398df44              # double 0.24838794935362263
	.quad	0x3fe9fd5a66d20c7a              # double 0.81217689592484921
	.quad	0x3fd4051bb7f977b4              # double 0.3128117844224747
	.quad	0x3fe0a72d77ff4063              # double 0.52040742337159107
	.quad	0x3fefac98be8b551f              # double 0.98981892791440262
	.quad	0x3fda36cc9e8615bc              # double 0.40959468346440153
	.quad	0x3fdb57dbe52090fc              # double 0.4272374856539185
	.quad	0x3fef01211e633a9e              # double 0.96888786254006098
	.quad	0x3fe824faf70ce26b              # double 0.75451420070664932
	.quad	0x3fe501f00df9e2df              # double 0.6564865372630172
	.quad	0x3f83c5560c51f640              # double 0.0096537325391593542
	.quad	0x3fd7aaea53d87bec              # double 0.36980684459734792
	.quad	0x3fecf47b4efe0b8c              # double 0.90484395435520204
	.quad	0x3fe854a8d8a78663              # double 0.76033441844283478
	.quad	0x3faeb26a8cd7d050              # double 0.059954957669021369
	.quad	0x3fe7c77f751532a2              # double 0.74310276859030844
	.quad	0x3fef716203b4d553              # double 0.98259068225767476
	.quad	0x3fe2719f5cf53499              # double 0.57636993556811256
	.quad	0x3fe4230ff5b1641c              # double 0.62928007113362439
	.quad	0x3fe142b17fda3fe0              # double 0.5393912789459101
	.quad	0x3fdb09fea7d5ca14              # double 0.42248503103397295
	.quad	0x3fe9bebb21c45d34              # double 0.80453259081961059
	.quad	0x3feee822c9985680              # double 0.96583690046345794
	.quad	0x3fb7b974ef898198              # double 0.092673595886941462
	.quad	0x3fea0e651a1e449b              # double 0.81425719357698101
	.quad	0x3feb353ce7f72649              # double 0.85024876886127132
	.quad	0x3fcad0def7be2248              # double 0.20949923607646981
	.quad	0x3fd70a05a6b20b4e              # double 0.35998669890266377
	.quad	0x3fe7cf0b70424d31              # double 0.74402400899490406
	.quad	0x3fd98c3481d6a380              # double 0.39918244056257635
	.quad	0x3fdc5db4d417f8b2              # double 0.44321938240308179
	.quad	0x3fe63464ec1e4104              # double 0.69389577977020211
	.quad	0x3fee93f5a8d71fca              # double 0.95556147553087922
	.quad	0x3fe5d26e5741e37e              # double 0.68193738024193329
	.quad	0x3fe5b39ccac26b93              # double 0.67817535020309305
	.quad	0x3fdf3a313a3aa4fc              # double 0.48792677580293264
	.quad	0x3fe012c97aa73208              # double 0.50229333835301393
	.quad	0x3fd765b8a4144a8a              # double 0.36558357261052576
	.quad	0x3fe1764fdd9eb04f              # double 0.54569237980968832
	.quad	0x3fd41a459b7ff964              # double 0.31410350976502444
	.quad	0x3fed4f6b2804074d              # double 0.91594465079854503
	.quad	0x3fed2d086e2ce110              # double 0.91174718397727084
	.quad	0x3fe3e02221a0b9d5              # double 0.62111002510010371
	.quad	0x3fe16becd943badf              # double 0.54442446169363368
	.quad	0x3fbef1262e1beac8              # double 0.12086714387616404
	.quad	0x3fd93bdc1694d1a2              # double 0.39427854733664891
	.quad	0x3fe10e4d6c471e4c              # double 0.53299590251931184
	.quad	0x3fb736eca8f73e40              # double 0.090681830645956474
	.quad	0x3fa240faf3ff1270              # double 0.035652010235513454
	.quad	0x3fdbdccb58c6fab0              # double 0.43535121602682647
	.quad	0x3fef5333eb2c8c8e              # double 0.97890659267831537
	.quad	0x3fe28681f8852916              # double 0.57891939677327531
	.quad	0x3fef6e35cbdfe366              # double 0.98220338649035166
	.quad	0x3fc03c921f5b5358              # double 0.12684847384539455
	.quad	0x3fedaa77f73acece              # double 0.92705915724806132
	.quad	0x3fc439ef3d122f34              # double 0.15801802141174337
	.quad	0x3fe5f558856d7ab7              # double 0.68619943676079387
	.quad	0x3fd44246e61580de              # double 0.31654522389545814
	.quad	0x3fc1c7e615e7c9ec              # double 0.13891292638398001
	.quad	0x3fe17be265968b36              # double 0.54637260285776423
	.quad	0x3fc4ac09ae483c90              # double 0.16150017747756751
	.quad	0x3f9ca0be18076d00              # double 0.02795693418179912
	.quad	0x3fec1bade8021ad2              # double 0.87837882341485796
	.quad	0x3fd6126b103fd430              # double 0.34487415873383309
	.quad	0x3fb0a04056a7f7f0              # double 0.064945241123467445
	.quad	0x3fe932340a8cae12              # double 0.7873783308072595
	.quad	0x3fd55f0a80146986              # double 0.33392584331308972
	.quad	0x3fd5709a0c227ba8              # double 0.33499766526250108
	.quad	0x3fd912000f742b0c              # double 0.39172364720495589
	.quad	0x3fe175c3e8a0d2ca              # double 0.54562564311216843
	.quad	0x3fcd11681e726c7c              # double 0.22709371077221252
	.quad	0x3fc835815d33203c              # double 0.18913285303847427
	.quad	0x3fcf55f150383bc0              # double 0.24481026093459768
	.quad	0x3fc33a49bf822de8              # double 0.15021631098748789
	.quad	0x3fc8aa9db5a85830              # double 0.19270678873061931
	.quad	0x3fe55f49cdd5d545              # double 0.66788187219814488
	.quad	0x3fb753c4f8843cd0              # double 0.091121969864832452
	.quad	0x3fedeac6c533ef0b              # double 0.93490923420128647
	.quad	0x3fb65426e35778b8              # double 0.087221556189862492
	.quad	0x3fcb74a7d6570480              # double 0.21449754682365452
	.quad	0x3fb4a28d7b212248              # double 0.080605356751342616
	.quad	0x3fee48b6c0b650b0              # double 0.94637620581717918
	.quad	0x3fbbc2c7031bfa08              # double 0.10844081712637188
	.quad	0x3fd79a0101801784              # double 0.36877465387839714
	.quad	0x3fee9a44722a7bd0              # double 0.95633146570241401
	.quad	0x3fb376366c9d12b0              # double 0.076022531048759445
	.quad	0x3fc2ca53c0c39e38              # double 0.14679953491507702
	.quad	0x3fc41df0109ddb84              # double 0.15716362773283887
	.quad	0x3fe4839f2522e334              # double 0.64106709721736488
	.quad	0x3fc52a562e9a7dcc              # double 0.16535451198158879
	.quad	0x3fedcbcc2776c6fd              # double 0.93112762172515284
	.quad	0x3fe9622620d7a7c5              # double 0.79323107161075568
	.quad	0x3fe1892ccea0c742              # double 0.54799499852217814
	.quad	0x3fda069fb69cc542              # double 0.40665428956261362
	.quad	0x3fb0035920592d10              # double 0.062551088712258229
	.quad	0x3fd19132323083a2              # double 0.27448706532782741
	.quad	0x3fe078b39ec81a94              # double 0.51473408710519886
	.quad	0x3fab209159254c60              # double 0.05298284733967118
	.quad	0x3fd329fc9644c8e0              # double 0.29943766283680695
	.quad	0x3fb7d0299a21f388              # double 0.093020057802233436
	.quad	0x3fd55d2da7e6fa6e              # double 0.33381215473847348
	.quad	0x3fb4784e105c7b18              # double 0.079960707659193608
	.quad	0x3feb9ff92d4c95fa              # double 0.86327799651615966
	.quad	0x3fecde0566b64473              # double 0.90210218487676597
	.quad	0x3feef3246fbc14b8              # double 0.96718046019727577
	.quad	0x3fe4c9be0cf0461b              # double 0.64962675597252273
	.quad	0x3fe725116777aa9c              # double 0.72327490051732779
	.quad	0x3fbdbab2c1c2fa98              # double 0.1161300395060415
	.quad	0x3fd9b3e118aba18c              # double 0.40160396012517974
	.quad	0x3febf33563105f65              # double 0.87343854282788114
	.quad	0x3fbff9b82e993cc0              # double 0.1249041665807793
	.quad	0x3fc407888a18caa8              # double 0.15647989981660726
	.quad	0x3fe482efab57c109              # double 0.64098342385662577
	.quad	0x3fe5798d85d8c82d              # double 0.67108799116090767
	.quad	0x3fc5a0b2ee77f914              # double 0.16896664279915596
	.quad	0x3fd32d714e7da5de              # double 0.29964859643095376
	.quad	0x3fd333a6470bc466              # double 0.30002743661959241
	.quad	0x3fd8741d2783800c              # double 0.38208702906376923
	.quad	0x3fd6cbf36a728860              # double 0.35619817157033218
	.quad	0x3fcea4a628d1c0fc              # double 0.23939969056255694
	.quad	0x3fdaa7b31bab0e6a              # double 0.41648557378741791
	.quad	0x3fd3edc31d141efa              # double 0.31138685073572925
	.quad	0x3fe5bf092392fc59              # double 0.67956978748396601
	.quad	0x3fe16a1d5fef5252              # double 0.54420346009517062
	.quad	0x3fe75e30fb7fd4f1              # double 0.73024796601262498
	.quad	0x3fede1365e9714b0              # double 0.93374174570694457
	.quad	0x3fef0d9836b570a4              # double 0.9704094952135347
	.quad	0x3fc54a3004319cb4              # double 0.16632652478003751
	.quad	0x3fd921cd07f3f37e              # double 0.39268804337171292
	.quad	0x3fc92c238265c358              # double 0.19665950648370756
	.quad	0x3facbf5817018320              # double 0.056147339638078941
	.quad	0x3f794843b9c15d80              # double 0.0061724324733271052
	.quad	0x3fd243ea4f3c7bec              # double 0.28539521921078292
	.quad	0x3fe4614123506071              # double 0.63687188050518106
	.quad	0x3fc31777d93b9bd4              # double 0.14915369135925849
	.quad	0x3fce3f423164329c              # double 0.23630549823464697
	.quad	0x3feb21f401185846              # double 0.84789467061887858
	.quad	0x3fb24d6e566aeca8              # double 0.071494003389420357
	.quad	0x3fb06f34239aea60              # double 0.0641968333174332
	.quad	0x3fe6dbbfaf36cda0              # double 0.71432480069636384
	.quad	0x3fea87d5020e9583              # double 0.82908106233360035
	.quad	0x3fd63d59ebee73ac              # double 0.34749458351307783
	.quad	0x3fe57bf0d16d255e              # double 0.67137947944244636
	.quad	0x3fd4a34b015d3918              # double 0.32246661313264857
	.quad	0x3fdac18b77e1a2fe              # double 0.41806303698699299
	.quad	0x3fd369c47a4409aa              # double 0.3033305353166279
	.quad	0x3fdcb47d3c1c3a6c              # double 0.4485161864294358
	.quad	0x3fd7064d429aab26              # double 0.35975963119806165
	.quad	0x3f8e0d42b2e73980              # double 0.014673729977314975
	.quad	0x3fed3b09def3f03e              # double 0.91345685525403275
	.quad	0x3fe7089b1bf68b9b              # double 0.71980052434479391
	.quad	0x3fe2f31e1f46e033              # double 0.59217744930993488
	.quad	0x3fbe80dbd24bf6f8              # double 0.11915372738073049
	.quad	0x3feda33a83674c24              # double 0.92617536225077801
	.quad	0x3fdc0ad94792666e              # double 0.43816215505066836
	.quad	0x3fd5006348b330aa              # double 0.32814867114644619
	.quad	0x3fe266b8f950c98b              # double 0.57503937429855634
	.quad	0x3fedc11980a08275              # double 0.92982173082789521
	.quad	0x3fd016615a7bc6b2              # double 0.25136598430899959
	.quad	0x3fdb052ad451deea              # double 0.42219038709980217
	.quad	0x3feb96c6a21d4228              # double 0.86215526259372144
	.quad	0x3fb7189718e8c160              # double 0.090218967038486308
	.quad	0x3feba07b23502dc5              # double 0.86333996674641666
	.quad	0x3fee8124a184463b              # double 0.95326453729848681
	.quad	0x3fe5490e73b15bde              # double 0.66516802402736253
	.quad	0x3f94b9220f0a80c0              # double 0.020237476509124219
	.quad	0x3fd7d3cfe387d926              # double 0.37230298251906147
	.quad	0x3fee3b6bcb659125              # double 0.94475354886939
	.quad	0x3fda407fb5e1e5c6              # double 0.41018669855074241
	.quad	0x3fd9444b0f30c71c              # double 0.39479328616572373
	.quad	0x3fe7ca4590cdd7fb              # double 0.74344137460752735
	.quad	0x3fa7305505862450              # double 0.045290619777980212
	.quad	0x3fbe408fdec5a898              # double 0.11817263783237519
	.quad	0x3fc6ccce5c5a38ec              # double 0.17812518605609939
	.quad	0x3fde545761ed2420              # double 0.47389778674238592
	.quad	0x3fef433edd6b530d              # double 0.97695868726677448
	.quad	0x3fd817e623344c08              # double 0.37645867765348884
	.quad	0x3fed940e217989b9              # double 0.92432314432180995
	.quad	0x3fb9fcdc4a985b00              # double 0.10151459523363471
	.quad	0x3feda842710616b7              # double 0.92678949427564461
	.quad	0x3fe85a8e5decb199              # double 0.76105421394963735
	.quad	0x3fd747a9592f716c              # double 0.36374887189392413
	.quad	0x3feca646c9f2a6eb              # double 0.89529742663327505
	.quad	0x3fef6105541f6bec              # double 0.98059336118910556
	.quad	0x3fd5976b33d58dfc              # double 0.33736686765607238
	.quad	0x3fddf7893e55df10              # double 0.46823340499348465
	.quad	0x3fe3e206f642a1c4              # double 0.62134121034346679
	.quad	0x3fe8695ef7d79711              # double 0.76286266714734741
	.quad	0x3fdccb96d7f45cee              # double 0.44992610062895622
	.quad	0x3fe2271f3b1b0409              # double 0.56727563423203364
	.quad	0x3fe9dd62a57f04b0              # double 0.80827457736463337
	.quad	0x3fe6903be117992d              # double 0.7051066776591931
	.quad	0x3fc00ed11447db2c              # double 0.12545217027919742
	.quad	0x3fd1b386a391efd8              # double 0.27658239339484458
	.quad	0x3fe650b7258cbae7              # double 0.69735295614176784
	.quad	0x3fcf507a9157f16c              # double 0.24464351746417934
	.quad	0x3fddd2296de09fea              # double 0.46595226030558357
	.quad	0x3fe53e570a4092f4              # double 0.66385986330405311
	.quad	0x3fe50d1ea1595e3a              # double 0.65785151971335343
	.quad	0x3fbfeec53fde86b8              # double 0.12473709878261274
	.quad	0x3fdaf296b28cd7d2              # double 0.42105643688716754
	.quad	0x3fc90d601474fcc4              # double 0.1957206821334464
	.quad	0x3fd6c147973aa298              # double 0.35554685371838834
	.quad	0x3feca95c9ec94ed3              # double 0.89567404759369607
	.quad	0x3fc65207ec9b34b4              # double 0.1743783860496585
	.quad	0x3fe3d8a952dd6e95              # double 0.62019792732776813
	.quad	0x3fdfc9fadacf30c8              # double 0.49670287483310149
	.quad	0x3fc63df2317f23fc              # double 0.17376544396236671
	.quad	0x3fea9306a193cde6              # double 0.830447497921736
	.quad	0x3fe41b6700897ccc              # double 0.62834501366514806
	.quad	0x3fe8e5532656449c              # double 0.77799375045482888
	.quad	0x3fdcd905c821d2ec              # double 0.45074600738671111
	.quad	0x3fe9cbba14959515              # double 0.80611900349018362
	.quad	0x3fe55f1a92b1f831              # double 0.66785935069470359
	.quad	0x3fe616ff83ce5829              # double 0.69030738585820928
	.quad	0x3fbcb1dad2e6e4a8              # double 0.11208884858105483
	.quad	0x3fd27ba77b4d0cca              # double 0.28879725495444275
	.quad	0x3fea0aa4e947a78f              # double 0.81379933893662038
	.quad	0x3fe94c85edefd621              # double 0.79059120628398116
	.quad	0x3fcaf3de9d946034              # double 0.21056730932537138
	.quad	0x3f9e2466ebf64860              # double 0.029435737754802793
	.quad	0x3fc76045468657f8              # double 0.18262544578163875
	.quad	0x3f7cb24ebcc5b280              # double 0.0070059848479614439
	.quad	0x3f9b61bd89f84920              # double 0.026740037485134427
	.quad	0x3fe6d92bd85f745b              # double 0.71401016483617796
	.quad	0x3fef44dfcd018c89              # double 0.97715749778980509
	.quad	0x3fd80ba68500cf50              # double 0.37571108807172937
	.quad	0x3fdb80a07e43a7c4              # double 0.42972576456542932
	.quad	0x3fe2064d31816e25              # double 0.56326923054752298
	.quad	0x3fed5fe03f268555              # double 0.91795360883785782
	.quad	0x3fde618e0ce0e67a              # double 0.47470427758853584
	.quad	0x3fe5b6143ffcbd40              # double 0.67847645280372859
	.quad	0x3fb2667517da7368              # double 0.071875875781598375
	.quad	0x3fe9ce619423b245              # double 0.80644301351055303
	.quad	0x3fcbe88f82e41a84              # double 0.2180346860042911
	.quad	0x3fc27239ab79b16c              # double 0.1441108786851929
	.quad	0x3fd99327c524b41c              # double 0.39960664989740891
	.quad	0x3fe13774b8842844              # double 0.53801952398612984
	.quad	0x3feffe973275cb5b              # double 0.99982795577521288
	.quad	0x3feb4ebc0f4aaa8e              # double 0.85336115824368775
	.quad	0x3fe9debb24021049              # double 0.80843884499382412
	.quad	0x3fb5de0d16a91eb8              # double 0.08541948130834498
	.quad	0x3fda95b2daef7ad6              # double 0.41538688068787388
	.quad	0x3fe5647ff22e3383              # double 0.66851804066537601
	.quad	0x3fee41188dbc5e7b              # double 0.94544627840782824
	.quad	0x3fea04090eae0f61              # double 0.81299260012790964
	.quad	0x3fe54ad718cf4123              # double 0.66538576932547178
	.quad	0x3fc424399c7abc18              # double 0.15735550060841841
	.quad	0x3fd97f2f3b082490              # double 0.39838772549462309
	.quad	0x3fef5e4b3cb372a7              # double 0.98026048522622921
	.quad	0x3fd3d8540713aa42              # double 0.31007862750144366
	.quad	0x3fd07499f5083354              # double 0.25711678437146657
	.quad	0x3fdaaa24223498b0              # double 0.41663459148765991
	.quad	0x3fafa4979d951960              # double 0.061802614198813499
	.quad	0x3fd36580db6c6c36              # double 0.30307027271345832
	.quad	0x3fd5b0feecf6b858              # double 0.33892796650878187
	.quad	0x3fd72a8985be9df2              # double 0.36197126446719985
	.quad	0x3fe8975cf5f68efa              # double 0.76847694434806546
	.quad	0x3fee5024403270eb              # double 0.94728291071399207
	.quad	0x3fd335a11ec967f6              # double 0.3001482773448737
	.quad	0x3fdca7548b298e12              # double 0.44771302785940847
	.quad	0x3fec801498bbf97b              # double 0.89063482123292148
	.quad	0x3fe9239060303cf6              # double 0.78559130465319416
	.quad	0x3fe743c6f0350760              # double 0.7270235721154954
	.quad	0x3feb85759b589861              # double 0.86004143086462304
	.quad	0x3fbd800695488a00              # double 0.11523476738560845
	.quad	0x3fcce1e36ffb92a8              # double 0.22564356773286431
	.quad	0x3fdc3cbb4a905b1e              # double 0.44120676309232632
	.quad	0x3fb07c15bb333998              # double 0.06439338512720949
	.quad	0x3fe254c9eb348d8c              # double 0.5728501886227817
	.quad	0x3fe9324bb571778b              # double 0.78738961637621807
	.quad	0x3fe0ac1f15d023f4              # double 0.52101091633187346
	.quad	0x3fa39885fd3647f0              # double 0.038273036155388129
	.quad	0x3fd14bd47d90731c              # double 0.27025329839834611
	.quad	0x3feafdf762a85673              # double 0.84350175160461871
	.quad	0x3fe3d3ad36cdd259              # double 0.61958943084625695
	.quad	0x3fefed55e376760e              # double 0.99772161890331446
	.quad	0x3fc5705c27341c8c              # double 0.16749145426021916
	.quad	0x3fe95aa12a7b3f2b              # double 0.7923131780353051
	.quad	0x3fcf652ce31143e0              # double 0.24527512633588255
	.quad	0x3fe8952c46216bef              # double 0.76820958802579564
	.quad	0x3fe44e50baca1461              # double 0.63455997926997665
	.quad	0x3fef76c3ae236dc5              # double 0.98324760447888392
	.quad	0x3fecd1228bdf57c5              # double 0.90052916830858776
	.quad	0x3fe9df17c6f3a275              # double 0.80848301751855323
	.quad	0x3fea1367bc2b29ff              # double 0.81486880065614276
	.quad	0x3fdd00f7413dedf2              # double 0.45318395015030355
	.quad	0x3fe4f70787b21508              # double 0.65515495780042077
	.quad	0x3fe9d708be46e31d              # double 0.80749928630311596
	.quad	0x3fe2c73db59f1d4a              # double 0.58682141755063211
	.quad	0x3fe058f7fb91012b              # double 0.51086043485705568
	.quad	0x3fe79270d2302866              # double 0.73662606289259425
	.quad	0x3fd3b1812deda922              # double 0.30770902142707446
	.quad	0x3fe901305e1299b6              # double 0.78139513372007374
	.quad	0x3fd9ab6121b6bab8              # double 0.40108516971933339
	.quad	0x3fd2686e4d490734              # double 0.28762395427121423
	.quad	0x3fd9409d81cd8b18              # double 0.39456880260529337
	.quad	0x3fe7639cb9c80e94              # double 0.73090969357913815
	.quad	0x3fe807ce7bf98337              # double 0.750952951562886
	.quad	0x3fd55eb505c55eba              # double 0.33390546382495823
	.quad	0x3f8105bebe728940              # double 0.0083117391462265155
	.quad	0x3fec03e71617147a              # double 0.87547640146716721
	.quad	0x3f845cb21656ec00              # double 0.0099424279277311455
	.quad	0x3fed4547ca84df1a              # double 0.9147070842218199
	.quad	0x3fd923cb3c6dc9a6              # double 0.39280968571906738
	.quad	0x3fe434507b46b3da              # double 0.63138603284243833
	.quad	0x3fe6350a21738d82              # double 0.69397455724212898
	.quad	0x3fe0a51e7e96b4ad              # double 0.52015614246706365
	.quad	0x3fe06026e38f2748              # double 0.51173729367403897
	.quad	0x3fd0e45a277d3e52              # double 0.26393751007433253
	.quad	0x3fcf75aab0e96c5c              # double 0.24577840460082967
	.quad	0x3fd0df87f6989442              # double 0.26364325601236172
	.quad	0x3fea1e4f7950558e              # double 0.81620000547506932
	.quad	0x3fd9f5cea3d3253e              # double 0.40562788008226736
	.quad	0x3fea7dd8f2059e00              # double 0.82786223668966841
	.quad	0x3fd0adedb1df4bbe              # double 0.26061575289093841
	.quad	0x3fc451b93b822828              # double 0.1587440052574618
	.quad	0x3fd0c915565d15ea              # double 0.262273153628796
	.quad	0x3fe7d297363898e0              # double 0.74445686903052532
	.quad	0x3fd6782ca1f902a6              # double 0.35108486001630934
	.quad	0x3fe99156300517cd              # double 0.79899129275212888
	.quad	0x3fe71c0a810e1957              # double 0.72217297750538989
	.quad	0x3fe747a60f684713              # double 0.7274961758541586
	.quad	0x3fb68e2b14fdb890              # double 0.088106815933971072
	.quad	0x3fe0daef17f2858b              # double 0.52672533681122624
	.quad	0x3fe2baf2b3fc3e4c              # double 0.58532080796607877
	.quad	0x3fd35f6f3cced67a              # double 0.30269986093785628
	.quad	0x3fb615d3e3310f30              # double 0.086270564047535414
	.quad	0x3fdb1abdbc28a592              # double 0.42350715041046627
	.quad	0x3fdc64b05daab6aa              # double 0.44364556452897352
	.quad	0x3fe9916741d8b68a              # double 0.79899943218852454
	.quad	0x3fee579232429a23              # double 0.94818982902944915
	.quad	0x3feb5cc67a5889f7              # double 0.85507511039423789
	.quad	0x3fe49b4233a7041c              # double 0.64395246590004573
	.quad	0x3fc299720a6caa48              # double 0.14530778416640744
	.quad	0x3fd07e7d0328e53a              # double 0.25772023495263208
	.quad	0x3fdeb985d97ff168              # double 0.4800734161397231
	.quad	0x3fc75afd43414a34              # double 0.18246427329957415
	.quad	0x3fe0e43958955e32              # double 0.52785937596758559
	.quad	0x3fd8176614768a52              # double 0.376428146346517
	.quad	0x3fd3442d662c92f6              # double 0.30103621461812169
	.quad	0x3fe96d98facad6ca              # double 0.79462861044768229
	.quad	0x3fe47b02cc53c37c              # double 0.64001598270088733
	.quad	0x3fe0628f49da9879              # double 0.51203121590221123
	.quad	0x3fe6652df6d2e66f              # double 0.69985101897982627
	.quad	0x3fe230f045ca3d9b              # double 0.56847394591197842
	.quad	0x3fed4bba76284490              # double 0.91549418523404036
	.quad	0x3fee043fbcb3ce96              # double 0.93801867347652279
	.quad	0x3fed591b1a59f233              # double 0.91712718149898931
	.quad	0x3fc796947b313a00              # double 0.18428283705948445
	.quad	0x3fd507a5901ac65c              # double 0.32859171936715881
	.quad	0x3fecedb96f03ae1e              # double 0.90401908571715572
	.quad	0x3fea619208f16171              # double 0.82441045519503409
	.quad	0x3fea68508ab36efa              # double 0.8252337178232374
	.quad	0x3fd18552017b9386              # double 0.27376222748562673
	.quad	0x3fd15a472248f992              # double 0.27113512371206483
	.quad	0x3fd476455e202fca              # double 0.31971868698087447
	.quad	0x3fd1e98d9d3122c6              # double 0.27987995482230266
	.quad	0x3fec987f5e5a7e84              # double 0.8936154215661678
	.quad	0x3fd5b26eab58317e              # double 0.33901564343320689
	.quad	0x3fc0dbc031348cf8              # double 0.13170626070596092
	.quad	0x3fe6317438a6c499              # double 0.69353686394437652
	.quad	0x3fe2b350578249ea              # double 0.58438889590825949
	.quad	0x3f9a2f5566a5b460              # double 0.025571188345044127
	.quad	0x3fe4857c773b8378              # double 0.64129470145790801
	.quad	0x3fdf8b462ab6cb2a              # double 0.49287561579983452
	.quad	0x3fc2b1677954eba0              # double 0.14603894638443382
	.quad	0x3fd56ded9a0217b6              # double 0.33483448066578647
	.quad	0x3f70e7c608683280              # double 0.0041272864969071898
	.quad	0x3fbf954ea0d79860              # double 0.12337199618159067
	.quad	0x3fc0e5c5aa1ed160              # double 0.13201208883914273
	.quad	0x3fe85dfdc9a3a2f6              # double 0.76147355444581311
	.quad	0x3feb1d617ac76db5              # double 0.84733652096058754
	.quad	0x3fc50c281aaffb3c              # double 0.16443349173638377
	.quad	0x3fccdd43ede02634              # double 0.22550248255747507
	.quad	0x3fef0ab5836956f3              # double 0.9700572554235961
	.quad	0x3fdc75c3972180ac              # double 0.44468774565576541
	.quad	0x3fbb6b36f0f3de90              # double 0.10710471518165776
	.quad	0x3fe5556fdb56e96e              # double 0.66667931403871505
	.quad	0x3fc6d57d1bba8a74              # double 0.1783901582139894
	.quad	0x3fd73e61c792aa5e              # double 0.36318249215643117
	.quad	0x3fd6d2c554457ba2              # double 0.35661442975645674
	.quad	0x3fe10cef4cdfe862              # double 0.53282895102098515
	.quad	0x3fdd7c3b8b432f18              # double 0.46070755576941869
	.quad	0x3fdd227ce91e93a0              # double 0.45522997632570572
	.quad	0x3fe8f835285fc50e              # double 0.78029878507200734
	.quad	0x3fdaf5afc5d384e2              # double 0.42124552077264188
	.quad	0x3fee2da49f1d931f              # double 0.94307166173220824
	.quad	0x3fed220453fc7f79              # double 0.91040245441034451
	.quad	0x3fea885cdeeb4c9a              # double 0.829145846737805
	.quad	0x3fe2b75b10395f06              # double 0.58488228958864918
	.quad	0x3fe2a64a01cfe29f              # double 0.58279896119991637
	.quad	0x3fe0919478029e5b              # double 0.51777099074838462
	.quad	0x3fdf5565efb443b6              # double 0.48958729179963301
	.quad	0x3fca2f7f016f8350              # double 0.20457446642015009
	.quad	0x3fe488c865ebeb3c              # double 0.6416971197753365
	.quad	0x3fd21009bed206d4              # double 0.28222888598257367
	.quad	0x3fcf14ba90e60e1c              # double 0.24282009196404963
	.quad	0x3fe125539075934d              # double 0.53580644812300593
	.quad	0x3fdbe112e877dab8              # double 0.4356124181935388
	.quad	0x3fe988afeccf2def              # double 0.7979354500943695
	.quad	0x3fe2b8d5eab585f2              # double 0.58506294099441747
	.quad	0x3fe70a442bcc6b51              # double 0.7200032096328447
	.quad	0x3fe6e9b383bbb9ec              # double 0.7160279820362212
	.quad	0x3fefaa5338d685cf              # double 0.98954163647811721
	.quad	0x3faa3f4c4cd17740              # double 0.051264175774788701
	.quad	0x3feeb1d0fb1442f0              # double 0.95920609511276034
	.quad	0x3fd134cea03d5db2              # double 0.26884809158715506
	.quad	0x3fe3e96a90851fcb              # double 0.62224319674077699
	.quad	0x3fd0155b6a415122              # double 0.25130353332976274
	.quad	0x3fd4a8b0cae38938              # double 0.32279605687485313
	.quad	0x3feae64f853745d3              # double 0.84061409014446509
	.quad	0x3fc490c6ab81d8b4              # double 0.16066821455360059
	.quad	0x3fefa585d6b691ca              # double 0.98895542083897081
	.quad	0x3f92b8980aaf9640              # double 0.018282294895376916
	.quad	0x3fb2ab14da575f10              # double 0.072922995859127093
	.quad	0x3fc39b653045ab5c              # double 0.15317978722608927
	.quad	0x3fcdf154a1d72398              # double 0.23392732527125015
	.quad	0x3f7729b82df57300              # double 0.0056550211441759313
	.quad	0x3fdb05d892ac5810              # double 0.42223181079441563
	.quad	0x3fb46c55eef66790              # double 0.079778071251352722
	.quad	0x3fea413ffc59e1a3              # double 0.82046508109401761
	.quad	0x3fee9bed5ac122f4              # double 0.95653407788731081
	.quad	0x3fe4ecb1a937f81e              # double 0.65389330912126176
	.quad	0x3fdc3b5e2c57a9da              # double 0.44112352686229672
	.quad	0x3faac2b8da0068f0              # double 0.052266861545108401
	.quad	0x3fe5c53004a4c8dc              # double 0.68032074839564016
	.quad	0x3fe4a0c08a89ba4d              # double 0.64462306078150677
	.quad	0x3feff05d8d6f89ae              # double 0.99809148430022332
	.quad	0x3fda2d8c0c3aa9ee              # double 0.40902997202161273
	.quad	0x3fefc58b131c2d12              # double 0.99286416752275586
	.quad	0x3fb01ab9d088d920              # double 0.06290780392814499
	.quad	0x3fe63f5f67d40e19              # double 0.69523592261288336
	.quad	0x3feeef66af9bd109              # double 0.9667237691742524
	.quad	0x3fd4b10135f999c2              # double 0.32330351134296731
	.quad	0x3fd5717b10b11c9a              # double 0.33505131368696939
	.quad	0x3fda90f550018c1a              # double 0.41509754956331479
	.quad	0x3fd314c0021dbbd6              # double 0.29814148146300334
	.quad	0x3fe173b6cbdcf185              # double 0.54537525002483334
	.quad	0x3fef198353b88e7f              # double 0.97186437942259817
	.quad	0x3fc7947b8fc0b8cc              # double 0.18421883124523786
	.quad	0x3fc6954f4b905a48              # double 0.17643157186167202
	.quad	0x3fd91ac6da2ddb7e              # double 0.39225932413631159
	.quad	0x3fee441b82ddf5c2              # double 0.94581389961211237
	.quad	0x3fbe770782fb9db8              # double 0.1190037436277781
	.quad	0x3fbdb5c27a4089e8              # double 0.11605468258543505
	.quad	0x3feae5679d0c3cd5              # double 0.84050350831412379
	.quad	0x3fe62c73c7f25be1              # double 0.69292630245297115
	.quad	0x3fd182254ccf0b18              # double 0.27356846333366169
	.quad	0x3fae82bbf5e1de30              # double 0.059591172947815685
	.quad	0x3fc08ed67ecdb124              # double 0.12935906592918756
	.quad	0x3fed60e83b2e03cc              # double 0.91807948645156889
	.quad	0x3fa8bdaee22223e0              # double 0.048322167495889579
	.quad	0x3fba46bae1430df8              # double 0.10264175414618382
	.quad	0x3fe86ef1c3e165fb              # double 0.76354301698591998
	.quad	0x3fe5c355bf1d7287              # double 0.6800945980754286
	.quad	0x3fb3580eeea4f8c8              # double 0.075562413466261025
	.quad	0x3fe964804230da07              # double 0.79351818969627252
	.quad	0x3fd0fc1a304a0624              # double 0.26538710323083792
	.quad	0x3fe2e5b9f97ce75b              # double 0.590542781144204
	.quad	0x3fe41ff92e85980b              # double 0.62890299879359313
	.quad	0x3fd1ccdec32f1582              # double 0.27812928257875325
	.quad	0x3fddeb521f409610              # double 0.4674878411481993
	.quad	0x3f97e2d3c3befae0              # double 0.02332621462096085
	.quad	0x3fc945b94a7c25d8              # double 0.19744030129395074
	.quad	0x3fe4c85427b552da              # double 0.64945419078375299
	.quad	0x3fd6b76d0bc1ca5a              # double 0.35494543216842589
	.quad	0x3fd524d25bb5b7a4              # double 0.33037241893804947
	.quad	0x3fd827c30d259756              # double 0.3774268749606241
	.quad	0x3fee8ce1c12b3281              # double 0.95469749191541109
	.quad	0x3fe507e397d6255f              # double 0.65721301703994672
	.quad	0x3fde5c461f8cd83c              # double 0.47438195305892683
	.quad	0x3fa1e6ff31c070d0              # double 0.034965491126259018
	.quad	0x3fe6199db29d5e5c              # double 0.69062695394218165
	.quad	0x3febebd7f3d46fa2              # double 0.87253949759496074
	.quad	0x3fe127b82d87b34e              # double 0.53609856503099151
	.quad	0x3fdee931d283cb0c              # double 0.48298306997382734
	.quad	0x3fdef18edefa53ee              # double 0.4834935357587814
	.quad	0x3fee864b30df2d8a              # double 0.95389327569266524
	.quad	0x3fdafcbb2cf7b0b0              # double 0.42167548552857692
	.quad	0x3fd3769be1cdc4d6              # double 0.30411431361342289
	.quad	0x3feccd13c545c7f4              # double 0.90003384141732434
	.quad	0x3fe5a4824f8b06b6              # double 0.67633166824108204
	.quad	0x3fedce6b56d737f9              # double 0.93144766770433229
	.quad	0x3feddf19064a9253              # double 0.93348361233490562
	.quad	0x3fa8dbcfe69bf3a0              # double 0.048552033329520627
	.quad	0x3fe71fb5cdc2e5bf              # double 0.72262087047345591
	.quad	0x3fe8cb68d3da1e91              # double 0.77483025910710712
	.quad	0x3fe09a6c92792ef1              # double 0.51885059936600275
	.quad	0x3fe76b870007560f              # double 0.73187589650723506
	.quad	0x3fc7f706755ebd04              # double 0.18722611170731096
	.quad	0x3fe3a0e9aee92a6a              # double 0.6133926788546209
	.quad	0x3fbe80813e496d08              # double 0.1191483285014564
	.quad	0x3fe5dc718f2bef11              # double 0.68315961802679415
	.quad	0x3fef40194e5c2307              # double 0.97657456688566035
	.quad	0x3fecabdec150bf15              # double 0.89598024136464238
	.quad	0x3feb2888e5d646da              # double 0.84869809045832345
	.quad	0x3fa34026d3238620              # double 0.037598813318038049
	.quad	0x3fecc29bf92e1244              # double 0.89875601451837683
	.quad	0x3fe88f99c829f8c7              # double 0.76752938360711986
	.quad	0x3fdf04a67ac79802              # double 0.48465883245660291
	.quad	0x3fef1efb0f17726f              # double 0.97253182361198564
	.quad	0x3fee930295a2d737              # double 0.95544556833076555
	.quad	0x3fd6ac8ce7aa666a              # double 0.35428164123150074
	.quad	0x3fa872d081a78e30              # double 0.04775096495339104
	.quad	0x3fecdfe706ab188b              # double 0.90233184149180212
	.quad	0x3fd91499fabc41aa              # double 0.39188241468311935
	.quad	0x3fc120af527174b4              # double 0.13380996251627197
	.quad	0x3fe289bd176a2323              # double 0.57931379864848898
	.quad	0x3fc60c03603c1ee8              # double 0.1722416133782112
	.quad	0x3fef41f474b85883              # double 0.97680113598723072
	.quad	0x3fed02982ae53e63              # double 0.90656669977211057
	.quad	0x3fc525c4a4f88fcc              # double 0.16521509223195918
	.quad	0x3fec6087492cec39              # double 0.8867832593163093
	.quad	0x3fc44e52dd3b59cc              # double 0.15864024927459608
	.quad	0x3fc571c024beef30              # double 0.16753389162283261
	.quad	0x3fda504b856ddc80              # double 0.41115081815900822
	.quad	0x3fe1e8eb6931750e              # double 0.55968256516976722
	.quad	0x3fbe5ad6bfd32688              # double 0.11857359107230014
	.quad	0x3feb1f21ed91157a              # double 0.84755035781624533
	.quad	0x3fb303e9577c8ab0              # double 0.074278434618956224
	.quad	0x3fde189c2c9c567a              # double 0.47025207859528673
	.quad	0x3fe321969b530444              # double 0.59785013520025432
	.quad	0x3fd2274882e76ac6              # double 0.28364765914527046
	.quad	0x3fe112379331d037              # double 0.53347376583997785
	.quad	0x3fed0ee7e87d1657              # double 0.90806956680234918
	.quad	0x3feb8ff00b61eed0              # double 0.86132051680712074
	.quad	0x3fdce5b1063c9086              # double 0.45151925667801895
	.quad	0x3fe7a40f47f1489c              # double 0.73877681781074811
	.quad	0x3fd11193bc850a20              # double 0.26669782076001702
	.quad	0x3fced82c635e4470              # double 0.24097208835567896
	.quad	0x3faa0a87dc0af3a0              # double 0.050861592875185879
	.quad	0x3fdfbf9877842ce8              # double 0.49606906577601118
	.quad	0x3feb72beef8bc8ae              # double 0.85775706087431103
	.quad	0x3fefb253220c7f30              # double 0.99051815652999231
	.quad	0x3fe4637afe2adac6              # double 0.63714360849447682
	.quad	0x3fc9b8445ef68134              # double 0.2009358848272399
	.quad	0x3fdf07aac22ab98e              # double 0.48484295808420874
	.quad	0x3fe1b1bae3db4c5b              # double 0.55294556143997953
	.quad	0x3fba65deef6a2040              # double 0.10311692566949748
	.quad	0x3fba6c7a8cf7df98              # double 0.10321775380714227
	.quad	0x3fe7546d7a0b27c0              # double 0.72905610882411764
	.quad	0x3fe01163925ede6c              # double 0.50212267482761552
	.quad	0x3fbb68dd0e0e9a48              # double 0.10706883996190542
	.quad	0x3fd66fa3739b1438              # double 0.35056387223841368
	.quad	0x3fe7e99f528cad3f              # double 0.74726835368111455
	.quad	0x3fe0a6c7d17a533c              # double 0.5203589526523511
	.quad	0x3fc5323c8a7bb5b4              # double 0.16559559594990747
	.quad	0x3fe9cdb48e646e97              # double 0.80636050997732667
	.quad	0x3fb7bf1ed9319078              # double 0.092760017419608931
	.quad	0x3fca20cb9be6ceac              # double 0.2041258345831144
	.quad	0x3fe61016a5c3d5f6              # double 0.68946392417882296
	.quad	0x3fcf1ba1ce9ec074              # double 0.24303076351998565
	.quad	0x3fe4b33da29b0b10              # double 0.64687997588075241
	.quad	0x3fd7206ff7f64f02              # double 0.36135482039502176
	.quad	0x3fe2ae06f47cb101              # double 0.58374355079061513
	.quad	0x3fb795f4d6fe2750              # double 0.092131903160546757
	.quad	0x3fe5ac1070a49a0e              # double 0.67725393295842351
	.quad	0x3fdc3c80bd1614c4              # double 0.44119280305342223
	.quad	0x3fe37569b43a34e3              # double 0.60808263016374686
	.quad	0x3fd09e6f3f5efe76              # double 0.25967007816868859
	.quad	0x3fedfd933c946eb4              # double 0.93720399696345291
	.quad	0x3fe84f01964114b1              # double 0.75964431139495592
	.quad	0x3fca1d4295532dd0              # double 0.2040179471135688
	.quad	0x3fe83f2464a1e560              # double 0.75770778326765864
	.quad	0x3fe73ebac5ad430c              # double 0.72640741928816643
	.quad	0x3fdda6b89e129c7a              # double 0.46330085217272876
	.quad	0x3fe6e365c6ec84c6              # double 0.71525849201511771
	.quad	0x3fe71546e7c84495              # double 0.72134728689174443
	.quad	0x3fe120867c0ea176              # double 0.53522037725365013
	.quad	0x3fd154ebaa97b0f4              # double 0.27080814036777601
	.quad	0x3fbf6d1cc86a4360              # double 0.12275867360064074
	.quad	0x3fee27b1589bd4b7              # double 0.94234530741109424
	.quad	0x3fe34888a8804381              # double 0.60260422621114185
	.quad	0x3fe79bf7db05870f              # double 0.73778908517508224
	.quad	0x3faaf02fc6a946f0              # double 0.052613728523864256
	.quad	0x3fa4e2d9bc047400              # double 0.04079323215612618
	.quad	0x3fdc7bc151ffacc6              # double 0.445053415371785
	.quad	0x3fee42d34dda5e27              # double 0.94565739827789208
	.quad	0x3fe12156b4ce7f28              # double 0.5353196650866936
	.quad	0x3fb9fb82707c3808              # double 0.1014939808485168
	.quad	0x3fe68e31156ceac6              # double 0.70485738930377617
	.quad	0x3fe71badd2cc3f6f              # double 0.72212878390744872
	.quad	0x3fc45c602bbf1180              # double 0.15906908165028355
	.quad	0x3fe95bbe2c86454f              # double 0.79244908043089335
	.quad	0x3fe34a6ae1ba1ee0              # double 0.60283416831313374
	.quad	0x3fdaeb35994e4a68              # double 0.42060604068061602
	.quad	0x3fe6bcd9f253e494              # double 0.71055314378385726
	.quad	0x3fdd16fdb706f25a              # double 0.45452826379531575
	.quad	0x3fd65907f5ef41ba              # double 0.34918402688074546
	.quad	0x3f999cac94331ca0              # double 0.025011726899518139
	.quad	0x3fdfd1ea7aefcb7a              # double 0.49718725209748238
	.quad	0x3fe616d0ee39a74d              # double 0.69028517273293633
	.quad	0x3fea7390ecc48f44              # double 0.82660719150269601
	.quad	0x3fedd2f1cc6776fa              # double 0.93200006411254255
	.quad	0x3fe88858fe4f53bd              # double 0.76664399785897042
	.quad	0x3fe2c065ba092d03              # double 0.5859860070717392
	.quad	0x3fc5fe21ef8cadc8              # double 0.17181801029924615
	.quad	0x3fef27c3206c4d22              # double 0.97360378582599005
	.quad	0x3fedfc3e76c9eddd              # double 0.93704150391516416
	.quad	0x3fefbb51068ea998              # double 0.99161578446119147
	.quad	0x3feae715a303644e              # double 0.84070855940366029
	.quad	0x3fecd9237398318a              # double 0.90150616242458281
	.quad	0x3fd758e829e08336              # double 0.36480144586134899
	.quad	0x3fb1a1dca5a1d488              # double 0.068876066625152998
	.quad	0x3fdeafaa7fb33f66              # double 0.47947180243226339
	.quad	0x3fdfa6f9df6029e8              # double 0.49456641019847192
	.quad	0x3fe20511a0fd1ae5              # double 0.563118757658995
	.quad	0x3fefd2639c2fcb21              # double 0.99443226342404866
	.quad	0x3fea562aa5ad87a8              # double 0.8230183826346904
	.quad	0x3fe9f93b3a23f48d              # double 0.81167374949986171
	.quad	0x3fd67e980fe73112              # double 0.35147668412243249
	.quad	0x3fc6770d09f54a58              # double 0.17550814615477139
	.quad	0x3fc7f9fd5e3d76d0              # double 0.18731658078734492
	.quad	0x3fd463308166605a              # double 0.31855404507360208
	.quad	0x3fc525493f03bdb8              # double 0.16520038201222831
	.quad	0x3fd9f3be2395a00e              # double 0.40550187563940276
	.quad	0x3fe279d52f93ac42              # double 0.57737216274598091
	.quad	0x3fd502fcc1399346              # double 0.32830733174914817
	.quad	0x3fef0a967e62fe1b              # double 0.97004246411228522
	.quad	0x3feee7de18a010b5              # double 0.96580414590473273
	.quad	0x3fef0ab9a6423942              # double 0.97005922768020292
	.quad	0x3fe08e55a9e1a147              # double 0.51737483196215173
	.quad	0x3fe9a20a7e4118da              # double 0.8010303941635144
	.quad	0x3fe904954b56b75d              # double 0.78180947031590231
	.quad	0x3feec2d0c46259d0              # double 0.96128118854795197
	.quad	0x3feb51673a16dba5              # double 0.85368691773952732
	.quad	0x3fcc4c75caa0f09c              # double 0.22108337778070541
	.quad	0x3fea8f5dfcb0379f              # double 0.83000087121193988
	.quad	0x3fbfacc0d6ad4a70              # double 0.12372975579391166
	.quad	0x3fe41201d7749352              # double 0.62719814377906347
	.quad	0x3fc0670a3eddfa3c              # double 0.128144531914545
	.quad	0x3feae2f47bdd5714              # double 0.84020446960741645
	.quad	0x3fe9721c79a696c2              # double 0.7951795936575865
	.quad	0x3fe89ab44c487291              # double 0.76888480090163303
	.quad	0x3fec29cfab0ceee9              # double 0.88010390671067029
	.quad	0x3fe0b75b511ebf00              # double 0.52238241046686085
	.quad	0x3fe10ecef5e6afad              # double 0.53305767085611466
	.quad	0x3fe2b51ac20f3c9a              # double 0.584607485792634
	.quad	0x3fdc6bb123129b82              # double 0.44407299447123461
	.quad	0x3fe8e3685bfac3b0              # double 0.77775972332721288
	.quad	0x3fda526ffbdffd3a              # double 0.41128158185161434
	.quad	0x3fda0fed14bb7a0a              # double 0.40722205185548488
	.quad	0x3fee94d8f9b458ce              # double 0.95566986818701039
	.quad	0x3fd9dfd1fb600df0              # double 0.40428590343819248
	.quad	0x3fe6512607911ac2              # double 0.69740582921880212
	.quad	0x3fd511afa1f00826              # double 0.329204471723758
	.quad	0x3fc3c64e8ab47dc0              # double 0.15448934338290421
	.quad	0x3fc56b1c84f75584              # double 0.16733128063667035
	.quad	0x3fea1979b9360c0d              # double 0.8156098000912394
	.quad	0x3fc6ca365d14d758              # double 0.17804603142729536
	.quad	0x3fd3e189b63473be              # double 0.31064074319311519
	.quad	0x3fef5e0957a8e026              # double 0.98022906418828337
	.quad	0x3feb36469b139d5e              # double 0.85037546432878819
	.quad	0x3fe2c7eb861b3270              # double 0.58690429871201211
	.quad	0x3fcfd8bbf674bd84              # double 0.24880170377717203
	.quad	0x3febfcc8e0bb078f              # double 0.87460750477497295
	.quad	0x3fbcb14417e59f98              # double 0.11207986434385331
	.quad	0x3fec00e4aa431ae7              # double 0.87510903600999945
	.quad	0x3fd056d45fb1fb74              # double 0.25529965729940973
	.quad	0x3febc1437543eefc              # double 0.86734173682586357
	.quad	0x3fd9f8276e4e7d88              # double 0.40577111980561442
	.quad	0x3fdda36aefc82f80              # double 0.46309922615250088
	.quad	0x3f98b0399da69b60              # double 0.024109745261422844
	.quad	0x3fe9c814e153d3c7              # double 0.8056740189482462
	.quad	0x3fe0293c55f16a69              # double 0.50503365312336002
	.quad	0x3fe5c1b273ad08b6              # double 0.67989466278984056
	.quad	0x3fe1598ac3eafa1c              # double 0.54218042626581875
	.quad	0x3fe055247630399d              # double 0.51039336284320636
	.quad	0x3fd1fb73d7179562              # double 0.28097244267549659
	.quad	0x3fe546ffdff4b800              # double 0.66491693250077333
	.quad	0x3fc9126f7e0dbc20              # double 0.19587510733569591
	.quad	0x3fe88a37353cdc9f              # double 0.76687202833172197
	.quad	0x3fe5b8abc8f9d283              # double 0.67879285100077913
	.quad	0x3fc07212da4347c0              # double 0.12848125131000465
	.quad	0x3fe958d17e429b53              # double 0.79209208164398104
	.quad	0x3fe65c3dd9b8b160              # double 0.69875996135446528
	.quad	0x3fc619a74e38424c              # double 0.17265788382839486
	.quad	0x3feb47af54fe3998              # double 0.85250059700210823
	.quad	0x3fe427496a5450f7              # double 0.62979574935391625
	.quad	0x3fc96e391bc10098              # double 0.19867624144717833
	.quad	0x3fe87497e46bcec9              # double 0.76423258412838735
	.quad	0x3fca56c9b77a1fbc              # double 0.20577355822410748
	.quad	0x3fd893e3ca6e4374              # double 0.38402647751450236
	.quad	0x3fb41432f141e708              # double 0.078433212185611834
	.quad	0x3fe289897996c1ce              # double 0.57928918598013879
	.quad	0x3fe84104483655e1              # double 0.75793661216692609
	.quad	0x3fe20382aba4bfef              # double 0.56292851947909905
	.quad	0x3fdb13f6b714b36e              # double 0.42309348944654956
	.quad	0x3fe3829f8af1d80f              # double 0.60969521653783143
	.quad	0x3feb04dbbab923aa              # double 0.84434305638671003
	.quad	0x3fea4f71fdcb46ac              # double 0.82219791001462771
	.quad	0x3fed1f8c850d599d              # double 0.9101011847185877
	.quad	0x3fea52f69b514814              # double 0.82262735686731724
	.quad	0x3fd8a122bd752c1e              # double 0.38483494283417652
	.quad	0x3fefffba31dd55fa              # double 0.99996671427896833
	.quad	0x3fdd55311260f8c6              # double 0.45832468790821357
	.quad	0x3fdec32f9103208c              # double 0.48066319619511755
	.quad	0x3f94fb1a7145e4c0              # double 0.020489133037220553
	.quad	0x3fefbbc7c5ef406a              # double 0.99167240771386145
	.quad	0x3fd1c707ace60108              # double 0.27777282604803633
	.quad	0x3fe3c255746d23bd              # double 0.6174723886443797
	.quad	0x3fd99629a4c775a0              # double 0.39979020206177474
	.quad	0x3fe0bebaac6585d5              # double 0.5232823722000669
	.quad	0x3fe187c648c9b65a              # double 0.54782404152292519
	.quad	0x3fecc7bd8eefe9b7              # double 0.89938238065160803
	.quad	0x3fddf8c874516568              # double 0.46830951079535632
	.quad	0x3fd0d60c59a20b70              # double 0.26306446793767346
	.quad	0x3fe088025ab3dee6              # double 0.5166026851211114
	.quad	0x3fe219347e01210e              # double 0.56557678804623079
	.quad	0x3feec25cc31cb903              # double 0.96122587306834395
	.quad	0x3fb0d1986ae05110              # double 0.065698171704131392
	.quad	0x3fda8ce0a5970d42              # double 0.41484848185446677
	.quad	0x3fe3d554c597c822              # double 0.61979139892924118
	.quad	0x3fc7357246cc62b8              # double 0.18131855446769918
	.quad	0x3fd7a0705d53b47e              # double 0.369167414798376
	.quad	0x3fee1f7faced30ce              # double 0.94134506010734653
	.quad	0x3fec2687ae20f9fc              # double 0.87970336923154901
	.quad	0x3fd93c6157a1ca9a              # double 0.39431031759083057
	.quad	0x3fe67e33f64fcc41              # double 0.70290563686138097
	.quad	0x3fe4c63bf7cafe58              # double 0.64919851681765817
	.quad	0x3fc18ea4f48d0eac              # double 0.13716566029517219
	.quad	0x3fd05626a68c3068              # double 0.25525823845305817
	.quad	0x3fe16d7f28f5d58b              # double 0.54461629867607664
	.quad	0x3fc969c7bdf41140              # double 0.19854065680568489
	.quad	0x3fe0234dba11f1b8              # double 0.50430952398124074
	.quad	0x3fe9fad100b8a9bb              # double 0.81186723843466468
	.quad	0x3fd78a0304f84168              # double 0.36779857144667583
	.quad	0x3fe29f56c686a5ed              # double 0.58195055746653923
	.quad	0x3fe095c6b722f739              # double 0.51828323143829558
	.quad	0x3fe4cc6c5e502987              # double 0.64995401783498685
	.quad	0x3fe34d848200735d              # double 0.60321259871453103
	.quad	0x3fe74dd1454bd3c2              # double 0.72824920210279509
	.quad	0x3fe69bbcfacac4cb              # double 0.70651101095986613
	.quad	0x3fe0e224e961c389              # double 0.52760549147034042
	.quad	0x3fefd1afb86ebba3              # double 0.99434648534758129
	.quad	0x3fe266977750f51c              # double 0.57502339652970447
	.quad	0x3fed12cf997fa30b              # double 0.90854625683013646
	.quad	0x3fecdd573d303b7d              # double 0.9020191378675545
	.quad	0x3fc531bec7f11c88              # double 0.165580604198315
	.quad	0x3fdc85d2a222c606              # double 0.44566789468362378
	.quad	0x3fd019113cb9c440              # double 0.25152998857726416
	.quad	0x3fefaa87b08ccf84              # double 0.9895666549914357
	.quad	0x3fef1e47bca51b18              # double 0.97244631619182353
	.quad	0x3fddb76ec510924a              # double 0.46432084316828492
	.quad	0x3fe22384086bbd43              # double 0.56683541912745061
	.quad	0x3fe41dfc4f29114c              # double 0.62866034947413985
	.quad	0x3fe8d6568c38a88f              # double 0.77616431605317071
	.quad	0x3fe8fd7fa4cfee90              # double 0.78094465436829985
	.quad	0x3f850f7755312900              # double 0.010283405577997673
	.quad	0x3fe0da00f4f58180              # double 0.52661178439670664
	.quad	0x3fca48e19c2768d0              # double 0.20534916042999507
	.quad	0x3fe108f41867df02              # double 0.53234295622584704
	.quad	0x3fc1c3ccf2cb6c14              # double 0.13878785948949768
	.quad	0x3fc5865fd5b04c6c              # double 0.16816327985779667
	.quad	0x3fdd746a9d84c938              # double 0.46023049719510167
	.quad	0x3fea36c439cb1ad3              # double 0.8191853646065631
	.quad	0x3fc09fb23ea7d8d4              # double 0.12987354335172674
	.quad	0x3fdc99daac385968              # double 0.44689051454897433
	.quad	0x3fd60f9549385746              # double 0.34470111990355112
	.quad	0x3fd6ac33acefaf28              # double 0.35426036728198307
	.quad	0x3fca271ece454d48              # double 0.20431885787784609
	.quad	0x3fe193d5069433e7              # double 0.54929591450638504
	.quad	0x3fd1468c170a9062              # double 0.26993086099742503
	.quad	0x3fda57da7ca25a94              # double 0.41161214991863315
	.quad	0x3fe6580492630270              # double 0.69824436751521368
	.quad	0x3fdcacd2be12f344              # double 0.44804829179684114
	.quad	0x3faf67fb532758e0              # double 0.061340192700002794
	.quad	0x3fca99e4db4c9ad8              # double 0.20782147129030792
	.quad	0x3fcbeac420d82b38              # double 0.21810199359637195
	.quad	0x3fe9556f24382243              # double 0.79167897295071332
	.quad	0x3fc1663bc92d1b80              # double 0.13593241999680217
	.quad	0x3fabb70f37eac080              # double 0.054131007743650095
	.quad	0x3f96bad95c970c20              # double 0.022197147632834313
	.quad	0x3fe8fbc7542036f6              # double 0.78073469572856768
	.quad	0x3fdde7aa5bb279ce              # double 0.46726473765184273
	.quad	0x3fb4ae31bde19120              # double 0.08078299413461254
	.quad	0x3fd659b27151935a              # double 0.34922467294955128
	.quad	0x3fedefda362d322b              # double 0.93552885609967029
	.quad	0x3fd1885c06ec300e              # double 0.27394772220645869
	.quad	0x3fea79c2f1218e6d              # double 0.82736346336282696
	.quad	0x3feb183dfec25130              # double 0.84670924909236156
	.quad	0x3fd0cace196a23fc              # double 0.26237823945899641
	.quad	0x3fe5100ac156e4c8              # double 0.65820825349433054
	.quad	0x3fd5efb6ece23fc4              # double 0.34275601514036347
	.quad	0x3fe6f7622a37783f              # double 0.71769817586369544
	.quad	0x3fd8e81b90bb3662              # double 0.38916672834316135
	.quad	0x3fe1cbe99d0fef30              # double 0.55614166904658724
	.quad	0x3fd36a9b212a99b2              # double 0.30338171233088496
	.quad	0x3fe04ae03cef3c2e              # double 0.50914012814781073
	.quad	0x3fed1b2cc76c88e2              # double 0.9095672507285395
	.quad	0x3f80134ead664540              # double 0.0078493258158994771
	.quad	0x3fe66bc0601766b0              # double 0.70065325515607491
	.quad	0x3fd736e9a65089ea              # double 0.36272660485897623
	.quad	0x3fcca0c58a0db8b8              # double 0.22365636101625852
	.quad	0x3fd88c4865decd4a              # double 0.38356218288682398
	.quad	0x3fef32721a2efe2e              # double 0.97490792383172731
	.quad	0x3fee51c89db270a0              # double 0.9474833564777505
	.quad	0x3fe2c47acd73b698              # double 0.58648433806748113
	.quad	0x3fe42c9e6eca27d0              # double 0.63044664038283749
	.quad	0x3fe54e79b6f52357              # double 0.66582952245617377
	.quad	0x3fe173a941dfbd29              # double 0.54536879411708583
	.quad	0x3fdb23b24194ddf4              # double 0.42405373005337244
	.quad	0x3fd0086d8c3b3448              # double 0.25051439947566623
	.quad	0x3fdd50ec893eb0ae              # double 0.45806420710392615
	.quad	0x3f9da5c20af69c20              # double 0.028952629012248932
	.quad	0x3fd5ab87227c1d28              # double 0.33859423034341996
	.quad	0x3fb9733a554dff30              # double 0.099414487673126883
	.quad	0x3feb9fb9508f896e              # double 0.86324754461774744
	.quad	0x3fe45d84534cbe3d              # double 0.63641563672530987
	.quad	0x3fda84bd57da65aa              # double 0.4143517835560383
	.quad	0x3fede016417ce5fc              # double 0.93360436239817046
	.quad	0x3fea04ce5cef08e5              # double 0.81308668280715024
	.quad	0x3fd58f113fdf4da2              # double 0.33685713994528943
	.quad	0x3fefa02f7c672f43              # double 0.98830389306520094
	.quad	0x3fe2892d3fb726d2              # double 0.57924520916386713
	.quad	0x3fd03d06df7da6d8              # double 0.25372478318477709
	.quad	0x3fed88f43551ab5b              # double 0.92296801008101725
	.quad	0x3f9e121ba7ef5a60              # double 0.029365951657235434
	.quad	0x3fe281e771225a04              # double 0.57835743042488774
	.quad	0x3fdc91f45e8d04bc              # double 0.44640835984689509
	.quad	0x3fe6fa540f76c29f              # double 0.71805766125006076
	.quad	0x3fd9f947ecbf4d7e              # double 0.405839902113449
	.quad	0x3fd50da31b83643e              # double 0.32895734488335282
	.quad	0x3fe3b988b4cdda52              # double 0.61639819443991883
	.quad	0x3fe44c22e7fea592              # double 0.6342939883372074
	.quad	0x3fd4d35a33d6f5b8              # double 0.32539992392033978
	.quad	0x3fe9e85be9366d5e              # double 0.80961413907372637
	.quad	0x3fd76b23cbd29426              # double 0.36591429619358207
	.quad	0x3fd83ef104c1b738              # double 0.37884164299508738
	.quad	0x3fe78edc641b34f4              # double 0.73618907501227548
	.quad	0x3fd35f2147c3c624              # double 0.30268127449298476
	.quad	0x3fc92bf9b933eac0              # double 0.19665452521424776
	.quad	0x3fe9865dce04e5ad              # double 0.79765215147124524
	.quad	0x3fde537da7a4c0ec              # double 0.47384587642137777
	.quad	0x3fd7754665546598              # double 0.3665328969524011
	.quad	0x3fa0319080334b10              # double 0.031628146790941725
	.quad	0x3fd839a77484bfec              # double 0.37851892832531919
	.quad	0x3fe4b0bd4bcc7c86              # double 0.64657463840912111
	.quad	0x3fdc2dbea6a6e86a              # double 0.44029203676803397
	.quad	0x3f9631b403dab4e0              # double 0.021673977599381611
	.quad	0x3fc961a3aaa1bdb0              # double 0.19829221564894572
	.quad	0x3fee80abf3147237              # double 0.95320699192558933
	.quad	0x3fd27fbee8fe3358              # double 0.28904698136539286
	.quad	0x3fcd7397e51fab2c              # double 0.23009012878113688
	.quad	0x3fe7cf69a7eb1486              # double 0.7440689353612846
	.quad	0x3fc5bf6ed5eb24a0              # double 0.16990457005730253
	.quad	0x3fd4d1c18c36aace              # double 0.32530249302605518
	.quad	0x3fd6c943cdb5660e              # double 0.35603423203210205
	.quad	0x3fe1aff1b30f2d32              # double 0.55272755596653256
	.quad	0x3fecc28fd3bf6e32              # double 0.89875022274958938
	.quad	0x3fe505ed977401f6              # double 0.65697364407247849
	.quad	0x3fe0e43af4c4a5c3              # double 0.52786014372139112
	.quad	0x3fedc72504af93ba              # double 0.93055964389042534
	.quad	0x3fe4f2fc6dce3dc0              # double 0.65466138311779076
	.quad	0x3fd91d31d2f69e00              # double 0.39240689851655475
	.quad	0x3fd32085d253e854              # double 0.298860030554015
	.quad	0x3f7023629be19c00              # double 0.0039399959478947366
	.quad	0x3fdd25310be81234              # double 0.45539499438044406
	.quad	0x3f933b8b68a1dee0              # double 0.018781831990479669
	.quad	0x3fcba0f2f6bfe7bc              # double 0.21584927604982151
	.quad	0x3fea9ca09b3784ea              # double 0.83161955180926594
	.quad	0x3f9296ce43aa0b20              # double 0.01815340316762637
	.quad	0x3fc5548f4b7ce788              # double 0.16664305864270212
	.quad	0x3fe902de7d17ab41              # double 0.7816002314769791
	.quad	0x3fe5b115af2e4ea1              # double 0.6778667851926522
	.quad	0x3fd7e358a4d6439a              # double 0.37325111482010132
	.quad	0x3fcee92b06671e94              # double 0.24149072468411659
	.quad	0x3fe734a1876390c0              # double 0.7251746792139997
	.quad	0x3feccb7ffe6a9f72              # double 0.89984130564424292
	.quad	0x3fd1b64d43355206              # double 0.27675181926068182
	.quad	0x3fdcaaefaddf933e              # double 0.44793312053507239
	.quad	0x3fe7213faedbd06f              # double 0.72280868675308152
	.quad	0x3fcbb797324c6c78              # double 0.21654024082167544
	.quad	0x3fa5a8bbc519ab30              # double 0.042302959261027673
	.quad	0x3fed540fdcabd635              # double 0.91651146983958276
	.quad	0x3fa9675787f4b2b0              # double 0.049616561266110693
	.quad	0x3fd4d9b8179cc204              # double 0.32578851991550573
	.quad	0x3fe5ad654f4f8785              # double 0.67741647234309765
	.quad	0x3fea781027c6cbc9              # double 0.8271561409841236
	.quad	0x3fe8ecb3840e4d38              # double 0.77889419357453615
	.quad	0x3fc9059524fd2a00              # double 0.19548286729907716
	.quad	0x3fd20d66abb73504              # double 0.28206793564898214
	.quad	0x3fd0b27f5b73ac5c              # double 0.26089462214321713
	.quad	0x3fe925e1db9123cf              # double 0.78587429889841498
	.quad	0x3fc71e17680a6e40              # double 0.18060581760515682
	.quad	0x3fef9b2c74e785aa              # double 0.98769209702384342
	.quad	0x3fbe23c2d0779180              # double 0.1177331694557946
	.quad	0x3fb2ec94f8edb6b8              # double 0.073922453664375776
	.quad	0x3fe3b8942f13aee8              # double 0.61628159708695041
	.quad	0x3fbbe362237d2758              # double 0.10893834463527463
	.quad	0x3fe7acb7b4ccd807              # double 0.73983369171651325
	.quad	0x3fc4bb454344cd3c              # double 0.16196504387480981
	.quad	0x3fb7b73cdbd11390              # double 0.092639735857188876
	.quad	0x3fd564f680bd9422              # double 0.33428728649443162
	.quad	0x3fdb96777d3c5b20              # double 0.43105876188330861
	.quad	0x3fe424ad0f973da4              # double 0.62947705311846791
	.quad	0x3fbf7ab1240d5000              # double 0.12296588068176106
	.quad	0x3fe47dc527111ec7              # double 0.64035279875039286
	.quad	0x3fe56f0bd1b56b37              # double 0.66980544050907198
	.quad	0x3f9e0202ff06f260              # double 0.029304549041386685
	.quad	0x3fcae39694133f28              # double 0.21007044058068769
	.quad	0x3fe70f501f6e0c45              # double 0.72061926020285993
	.quad	0x3fc353a2694715d4              # double 0.15098981991302074
	.quad	0x3fdc3409a9681c70              # double 0.44067613166448094
	.quad	0x3fdd2585159ea440              # double 0.45541503058717936
	.quad	0x3fe9ce0aeeb8ef63              # double 0.80640169740170753
	.quad	0x3fa0d7a081053120              # double 0.032895103215738297
	.quad	0x3fb8b9d04de3d7f8              # double 0.096585291877857915
	.quad	0x3fe47661676d18ad              # double 0.63945074272557678
	.quad	0x3fd84cb499be13ac              # double 0.37968173040308772
	.quad	0x3feeb281db8ee051              # double 0.95929043657725732
	.quad	0x3fef038d8f46be5a              # double 0.96918371184979013
	.quad	0x3fcf4811b3a89a4c              # double 0.24438687584297936
	.quad	0x3fd16094a0158e74              # double 0.27151981003974091
	.quad	0x3fe119860bbd74d2              # double 0.53436567585927208
	.quad	0x3fcbb63c45adbbe0              # double 0.21649888422277197
	.quad	0x3fedefff7fd50eaf              # double 0.93554663626897205
	.quad	0x3fd56461f9027a6c              # double 0.33425187413550961
	.quad	0x3fd127d5b7af6026              # double 0.26805632532114243
	.quad	0x3fe40ce1d86d5b3f              # double 0.62657253523762069
	.quad	0x3fa1be32cdc8c350              # double 0.034654224033494274
	.quad	0x3fc0212b8cddd368              # double 0.1260122716736547
	.quad	0x3fe2bad90cc4e9db              # double 0.58530857557280613
	.quad	0x3fc64b78b5e58178              # double 0.1741782081762826
	.quad	0x3fb37fb3dbcb7e68              # double 0.076167336617339765
	.quad	0x3fe697a47dd857b3              # double 0.70601105288618837
	.quad	0x3feafcde98a93d1f              # double 0.84336786095255778
	.quad	0x3fe9f8d2c7e085c5              # double 0.81162394560322382
	.quad	0x3fd3e52c265431fa              # double 0.31086257689528873
	.quad	0x3fe05f368c06a5c3              # double 0.51162268971273084
	.quad	0x3fa778007c0fd270              # double 0.045837416786444929
	.quad	0x3f71b114f11cc080              # double 0.0043192689934558048
	.quad	0x3fe125115d5479f8              # double 0.53577488163483533
	.quad	0x3fed04236e8391a6              # double 0.90675517639879355
	.quad	0x3fb623bc4e697258              # double 0.086482781547098653
	.quad	0x3fe339b4b9a0a50a              # double 0.60079418425917308
	.quad	0x3fec17f2597c7e3b              # double 0.87792317846100987
	.quad	0x3feb1922d650e094              # double 0.84681836947040034
	.quad	0x3fe94dd41c7ca7fd              # double 0.7907505566010965
	.quad	0x3fb7559709e56438              # double 0.091149749675779712
	.quad	0x3fce8d484e90e418              # double 0.23868659816960824
	.quad	0x3fe6d233fa47545f              # double 0.71315955050034663
	.quad	0x3fd5667838b0c830              # double 0.33437924896418547
	.quad	0x3fe5873fe78c09e8              # double 0.67275996421841189
	.quad	0x3feb5e043eb911b0              # double 0.85522663355418693
	.quad	0x3fdd3d8a54e08de4              # double 0.45688112534318592
	.quad	0x3fe64ed04c7d7fbd              # double 0.69712080897806283
	.quad	0x3f561b4152121400              # double 0.00134927157367426
	.quad	0x3fedf5a28c35f862              # double 0.93623473534513502
	.quad	0x3fc33ab586c7c3f0              # double 0.1502291591746423
	.quad	0x3fdcd35a3630d7d8              # double 0.45039992610997848
	.quad	0x3fda94c89abe6de0              # double 0.41533103095727419
	.quad	0x3f9aa6b1bbb0cb20              # double 0.02602651317665583
	.quad	0x3fe2bc5af1db579a              # double 0.58549258458764375
	.quad	0x3fe9edfc75118350              # double 0.81030104508327305
	.quad	0x3fecb7fdcee91e72              # double 0.89745989238958956
	.quad	0x3fa25cd73f9083d0              # double 0.035864569196071394
	.quad	0x3feb44d32c3dfb0b              # double 0.85215147629773591
	.quad	0x3fe025a0b743a25c              # double 0.5045932368639785
	.quad	0x3fe98fd0f523c697              # double 0.79880569342477059
	.quad	0x3fd8a63936908dd2              # double 0.38514547661381215
	.quad	0x3fc3b19e68079d9c              # double 0.15385799483850071
	.quad	0x3fe8937169be8ecc              # double 0.7679984155006081
	.quad	0x3fe6d159deae7653              # double 0.71305554859618281
	.quad	0x3fc1e9683a3d40ac              # double 0.13993552058901082
	.quad	0x3feb690b3eba8a97              # double 0.85657274486250656
	.quad	0x3feaa8d49a98085f              # double 0.83310918993107552
	.quad	0x3febcae8ee6dc452              # double 0.86851927345390778
	.quad	0x3fe6cebb73417b2c              # double 0.71273586760421415
	.quad	0x3fe24bfb73019f38              # double 0.57177517378020237
	.quad	0x3fe7761cf4a63060              # double 0.73316810401002996
	.quad	0x3fe553bcce4b3512              # double 0.6664718655753481
	.quad	0x3fe90b21f8fa8722              # double 0.78260897282254782
	.quad	0x3fd296ea7d5c0b22              # double 0.29046118013518385
	.quad	0x3fc8c5b299c560e4              # double 0.19353325374937136
	.quad	0x3f8f040c3205c1c0              # double 0.015144439007344412
	.quad	0x3fc909355166a388              # double 0.19559351420073434
	.quad	0x3fe602ac4820058f              # double 0.68782629095965031
	.quad	0x3feeda0cfbf3662f              # double 0.96411751946579282
	.quad	0x3fe7fb3685c7f14a              # double 0.74941564683062123
	.quad	0x3fd674675e7448b6              # double 0.3508547232060083
	.quad	0x3fdf19a0f0f7da06              # double 0.48593925029800322
	.quad	0x3fbbbaf163ee23e8              # double 0.10832127275183689
	.quad	0x3fe97f3e25302189              # double 0.79678256285937821
	.quad	0x3fe27dcdc9156653              # double 0.57785691522730998
	.quad	0x3fed46337d92b8d8              # double 0.9148194744682554
	.quad	0x3fc780503e54e4fc              # double 0.18360331576858602
	.quad	0x3fdff2cbaec00c86              # double 0.4991940695328555
	.quad	0x3fba21ab2edd67f0              # double 0.10207624334489629
	.quad	0x3fe4d6d42ced9a3b              # double 0.65122422003771108
	.quad	0x3feaf452bfb0fc14              # double 0.84232461394992919
	.quad	0x3fb3cdc66920b2a8              # double 0.077358627954434156
	.quad	0x3fe723c1f7581188              # double 0.7231149512231676
	.quad	0x3febff8fe48bc620              # double 0.87494654310120623
	.quad	0x3feb889d5ccc7b1b              # double 0.86042659878498584
	.quad	0x3fe58bc5ca7667a4              # double 0.6733120874734948
	.quad	0x3fc206b63cac4e28              # double 0.14082982981254699
	.quad	0x3fb8891030afe920              # double 0.0958414191117396
	.quad	0x3fc597c920dbc3f8              # double 0.16869463066498702
	.quad	0x3fafebc06bc0bc90              # double 0.062345517304828069
	.quad	0x3fe4f5ef669efd33              # double 0.65502138178991343
	.quad	0x3fdd88667420f930              # double 0.4614502080984435
	.quad	0x3fed2a3e445d12fe              # double 0.91140664436588259
	.quad	0x3fdfc8606b386d10              # double 0.49660501929038592
	.quad	0x3fe831e1a3b34859              # double 0.75608903858870768
	.quad	0x3fe35ddd90a9ff62              # double 0.60520818953225963
	.quad	0x3fef3cb527cb30ab              # double 0.9761606003971982
	.quad	0x3fa08cff8c071af0              # double 0.03232573112796
	.quad	0x3fd467860d85057c              # double 0.3188185817744722
	.quad	0x3fc7bbf351800c50              # double 0.18542329291821824
	.quad	0x3fdf1516794bdbaa              # double 0.48566209645599179
	.quad	0x3fd9ed5298e82f4e              # double 0.40511002476045099
	.quad	0x3fece544e9c511c8              # double 0.90298696191944661
	.quad	0x3fd8e1a991dac78a              # double 0.38877333873380648
	.quad	0x3febc01fb6b5a8a0              # double 0.86720262227506239
	.quad	0x3fdac7401e1311f6              # double 0.41841128289186658
	.quad	0x3fc7a299fad2573c              # double 0.18464970347548071
	.quad	0x3fe3a1501b0222c6              # double 0.61344151759211552
	.quad	0x3fd03c5a05510138              # double 0.25368357199842562
	.quad	0x3f946b8f172b35c0              # double 0.019941554822073604
	.quad	0x3fe8dbeb0a05cfe9              # double 0.77684547383841818
	.quad	0x3fe1bb41cd2cdc6e              # double 0.55410852502144592
	.quad	0x3feb27839753705b              # double 0.84857348972173996
	.quad	0x3fc0f7437c90101c              # double 0.13254588682332347
	.quad	0x3fe046d12eec52f8              # double 0.50864466824222543
	.quad	0x3fe257e8f66217d1              # double 0.57323120233263058
	.quad	0x3fd612e5c14ec162              # double 0.34490341069888164
	.quad	0x3fdb8766cd24cc22              # double 0.43013925584381429
	.quad	0x3fc381dcea4b47a4              # double 0.15240060272350064
	.quad	0x3fe6d8a048e8e64d              # double 0.71394361725033095
	.quad	0x3fdd428e64d58230              # double 0.45718726965972944
	.quad	0x3fd023a93930651e              # double 0.25217657647006486
	.quad	0x3fefcb9357321511              # double 0.99360053091428046
	.quad	0x3fe268f13704eddc              # double 0.57531033273647436
	.quad	0x3fdb4b041aaf9fd8              # double 0.42645361524637115
	.quad	0x3fcd618b471f4b28              # double 0.22953930828824665
	.quad	0x3fedd39bd65cf0ae              # double 0.93208114497931205
	.quad	0x3fe00af7522547e2              # double 0.50133863491123187
	.quad	0x3fa9dbf50dbeb6a0              # double 0.050506265571454323
	.quad	0x3fda06fe940acf5e              # double 0.40667690713165949
	.quad	0x3fe4b6abca328e3f              # double 0.64729871265121364
	.quad	0x3fd197e55236fcb0              # double 0.27489598301685714
	.quad	0x3fd04cb38aaad7fe              # double 0.25468147794470031
	.quad	0x3fe4fec1c5d1284b              # double 0.65609825740944794
	.quad	0x3fc338671d5bea24              # double 0.15015877660319277
	.quad	0x3fe2d243b1b0c838              # double 0.58816704468905012
	.quad	0x3fef5d3e54d00baa              # double 0.98013226094223183
	.quad	0x3fedad0779446998              # double 0.92737172780043675
	.quad	0x3fe08a8a8e3b3893              # double 0.51691177157933266
	.quad	0x3fe2f8a456700d4c              # double 0.59285179979671332
	.quad	0x3fec859c51cd4a5d              # double 0.89130989052712162
	.quad	0x3fe69ad9aed0e6a2              # double 0.70640262740854021
	.quad	0x3fbd6d218c19f770              # double 0.11494645758099664
	.quad	0x3f96d90e574fe080              # double 0.022312378005125755
	.quad	0x3fd2f539a5cb6cba              # double 0.2962173575485384
	.quad	0x3feca58d5c8f503b              # double 0.8952090080079026
	.quad	0x3fd53be13bbde1e2              # double 0.33177977403786774
	.quad	0x3fe030796c108413              # double 0.50591727358198779
	.quad	0x3fc6cc22a70522fc              # double 0.17810471682812323
	.quad	0x3fe80d4d71670e29              # double 0.75162384175240959
	.quad	0x3fdd3514bd1d1c3c              # double 0.45636480777870125
	.quad	0x3fdb5bf2712c3f08              # double 0.42748700191531031
	.quad	0x3fded33aab665c6e              # double 0.48164240587488549
	.quad	0x3fdf13fa383b17ce              # double 0.4855943249825686
	.quad	0x3fa5d72ae89cb9f0              # double 0.042657223601384575
	.quad	0x3fc5bb6113db6ecc              # double 0.16978085965717182
	.quad	0x3fd34fdf4598bb44              # double 0.30175000950378128
	.quad	0x3feb23b00de3d694              # double 0.84810641014947174
	.quad	0x3fea096affa73e3e              # double 0.81364965374263654
	.quad	0x3fe4e6a4075bb4c5              # double 0.65315438687471128
	.quad	0x3feaefe6b785576b              # double 0.84178481906813596
	.quad	0x3feead7a1457f871              # double 0.9586763760887732
	.quad	0x3fec43ea14ab1e7d              # double 0.8832903293304778
	.quad	0x3fe38cde3b597da7              # double 0.61094581214631638
	.quad	0x3fe78492f15eac12              # double 0.73493334906140917
	.quad	0x3fe1075e9027f6c0              # double 0.53214958339204799
	.quad	0x3fe7dd1a6db226cf              # double 0.74574014115315801
	.quad	0x3fdd69de90433702              # double 0.45958675468578758
	.quad	0x3fc934b79cd05a2c              # double 0.19692130238463912
	.quad	0x3fd296606e9b97d8              # double 0.2904282646326215
	.quad	0x3fa19318e9589b30              # double 0.034325388416894476
	.quad	0x3fdc144ef9a453ec              # double 0.43873953227131213
	.quad	0x3feb470171658c4a              # double 0.85241768024241904
	.quad	0x3fbe5a338d880698              # double 0.11856386380534401
	.quad	0x3fef7a47c429edab              # double 0.98367679894675086
	.quad	0x3fed3b9c16ad7d32              # double 0.9135265772746719
	.quad	0x3fb45b65d3dd3068              # double 0.079519619202245928
	.quad	0x3fe129450d41b299              # double 0.53628780926881625
	.quad	0x3fe5f76cd5d3b7c5              # double 0.68645326388445282
	.quad	0x3fc46049746bd720              # double 0.15918844399100696
	.quad	0x3fe339deb8a58cb3              # double 0.60081420959286047
	.quad	0x3fedaa86558f9fee              # double 0.92706600867404432
	.quad	0x3fe8a828a6fdd3e1              # double 0.77052719703226213
	.quad	0x3fdcddd45158a314              # double 0.45103939002960769
	.quad	0x3fd0867eb7ac8836              # double 0.25820892273816598
	.quad	0x3fd942be42dea2b0              # double 0.39469868211976245
	.quad	0x3feaaf27cfd45726              # double 0.83388128844919573
	.quad	0x3fdccb514392fdec              # double 0.44990951155702308
	.quad	0x3fe7474a20b91fb0              # double 0.72745233908880458
	.quad	0x3fe1189a667bf985              # double 0.53425331131420306
	.quad	0x3f83ac42317a6680              # double 0.0096059008931661526
	.quad	0x3fe090a9b151b023              # double 0.51765904076228642
	.quad	0x3fe2c0b8a590e499              # double 0.58602554642779403
	.quad	0x3fe1f504aa4878d7              # double 0.5611594510881116
	.quad	0x3fee683e32cc5570              # double 0.95022497102278969
	.quad	0x3fcbdc9d4dfdf1b4              # double 0.21767011936380032
	.quad	0x3fe28f442bf6be23              # double 0.57998856150328881
	.quad	0x3fde84b3bd8e0fea              # double 0.47684949408744493
	.quad	0x3feaf2ea7c034a87              # double 0.8421528265119641
	.quad	0x3fa934e03a90a3f0              # double 0.04923153605370334
	.quad	0x3fe54938ec777dfc              # double 0.66518827614703424
	.quad	0x3fdf12bcdab24782              # double 0.48551865918226877
	.quad	0x3fdf88064d781548              # double 0.49267728391017274
	.quad	0x3fdf2886825e9cfc              # double 0.4868484757557352
	.quad	0x3fc3e196b3a2a054              # double 0.15532192012074353
	.quad	0x3fef36b8d9c58fa3              # double 0.9754299405435528
	.quad	0x3fd64de3e459592e              # double 0.3485040407153005
	.quad	0x3fd400585ebfe4b0              # double 0.31252106907738675
	.quad	0x3fc3e72a2498e6ac              # double 0.15549208437896789
	.quad	0x3fedd0a929014deb              # double 0.93172128685767797
	.quad	0x3fec9833517211b2              # double 0.89357915789928755
	.quad	0x3fed5f8a89960f53              # double 0.91791273948954666
	.quad	0x3fc0ec798cc9de4c              # double 0.13221663832131225
	.quad	0x3fd434957d6890ec              # double 0.31570946928901722
	.quad	0x3fc7052651e04ff0              # double 0.17984465597021382
	.quad	0x3fe825a303cde667              # double 0.7545943331053423
	.quad	0x3fe2ec049508d02c              # double 0.59131077869688431
	.quad	0x3feea20a5e58bb7e              # double 0.95728033473083918
	.quad	0x3fd0957e8bb9cf82              # double 0.25912440915202961
	.quad	0x3fecde5f3731ed55              # double 0.90214501171377981
	.quad	0x3fc7c52b32075e58              # double 0.18570461218654333
	.quad	0x3fe3429441157669              # double 0.60187733375250929
	.quad	0x3fea3e8ebc4cea96              # double 0.82013642098839301
	.quad	0x3fee181230fbc29a              # double 0.94043836180761109
	.quad	0x3fdb2208496ebeb4              # double 0.42395217105056848
	.quad	0x3fee54339d73b46f              # double 0.94777851822222015
	.quad	0x3fd501bbc5f4af54              # double 0.32823080379124758
	.quad	0x3fc017eb57e49c4c              # double 0.12572995940829157
	.quad	0x3fed54fc9ecd5cde              # double 0.91662436500601152
	.quad	0x3f9e15fe97e23620              # double 0.029380777378312684
	.quad	0x3fed9f39b5204822              # double 0.92568669677917037
	.quad	0x3fd444b4aee62fe6              # double 0.31669346885678207
	.quad	0x3fefeb1d258ef980              # double 0.99745042167323561
	.quad	0x3fea17e592b3d072              # double 0.81541708615124109
	.quad	0x3fc737d3aed776e0              # double 0.18139120137396159
	.quad	0x3fcd732461898380              # double 0.23007635843807961
	.quad	0x3fc4e8a8eb5e3254              # double 0.16335021488738966
	.quad	0x3fb35bc9b6d0c3b8              # double 0.075619322903334729
	.quad	0x3fccbdb2bdb7886c              # double 0.22453912986299274
	.quad	0x3fec5c2c109b618a              # double 0.88625148051782898
	.quad	0x3fe2f2ca67435a95              # double 0.59213752907347106
	.quad	0x3fc685deeae372e8              # double 0.17596041173137356
	.quad	0x3fcad4cb3e2ea984              # double 0.20961895500415662
	.quad	0x3fe040cc9f3c4e47              # double 0.5079100713796344
	.quad	0x3fda8c18377f8a92              # double 0.41480069560763255
	.quad	0x3feb0f266d1fbd59              # double 0.84559937775876926
	.quad	0x3fbf7222448c79a0              # double 0.12283529447129249
	.quad	0x3fe026f3aefe82a2              # double 0.50475486925650537
	.quad	0x3fe2d8e2f1e6d09a              # double 0.58897540327463394
	.quad	0x3fe4a86ee5185fac              # double 0.64556069131048366
	.quad	0x3fb53c4d7a7614e8              # double 0.08295139541413088
	.quad	0x3fd4d1b31287d65a              # double 0.32529904183988878
	.quad	0x3fdb19420e194e80              # double 0.42341662766305177
	.quad	0x3fe9d69a1a6a5f26              # double 0.80744652900009295
	.quad	0x3feb6161c48248a0              # double 0.85563743954323356
	.quad	0x3fe6fbfbe3988593              # double 0.71825975849439982
	.quad	0x3fdedaccc949fa90              # double 0.48210448891760738
	.quad	0x3fbea76d117a9a90              # double 0.11974221874934643
	.quad	0x3fe98588b0b51554              # double 0.79755053055911639
	.quad	0x3fac7951f8012900              # double 0.055613099597922044
	.quad	0x3fcfc953f6b9ff9c              # double 0.24833154246516365
	.quad	0x3fd74691bb06b596              # double 0.36368220581319954
	.quad	0x3fd05180ef2df23e              # double 0.25497458798762185
	.quad	0x3fe9f2c4347d28ea              # double 0.81088457347621312
	.quad	0x3fb6c8f41b064510              # double 0.089003807637954901
	.quad	0x3fe3e206f8af86f0              # double 0.62134121486107396
	.quad	0x3fd895a7e936a8c2              # double 0.38413427138096889
	.quad	0x3fe6acf0c70d789c              # double 0.70861090543236882
	.quad	0x3fe049e55629be6b              # double 0.50902048901293762
	.quad	0x3fe0d29d3ec6da75              # double 0.52570974598968567
	.quad	0x3fe3e4094fdc24c4              # double 0.62158647153514623
	.quad	0x3fd27b004acbca88              # double 0.28875739387800836
	.quad	0x3feded43c2d42dd4              # double 0.93521297504906408
	.quad	0x3fd851339affb8da              # double 0.37995615135777216
	.quad	0x3fe345ca64747a40              # double 0.60226935978045759
	.quad	0x3fcf8309e4c1a4c8              # double 0.24618648214099026
	.quad	0x3fd4fa4f9a65294c              # double 0.32777776792194824
	.quad	0x3f9b3a0f25abf840              # double 0.026588665651609
	.quad	0x3fdf8b400cb6e752              # double 0.4928741573490828
	.quad	0x3fd5814b487ef902              # double 0.33601648406683193
	.quad	0x3fe87ffb4bdd4b47              # double 0.76562275712272132
	.quad	0x3fe730f56ee61339              # double 0.72472640666874277
	.quad	0x3fee5f4e19164e7a              # double 0.94913391971427008
	.quad	0x3feabd5db57afcfd              # double 0.83561597295184209
	.quad	0x3fef956c68cee987              # double 0.98699017019616597
	.quad	0x3fe4aefbae5682bb              # double 0.64636024523141289
	.quad	0x3fdd40a2e9802cb8              # double 0.45707009127427112
	.quad	0x3fbe13532e9f2be8              # double 0.11748237503267911
	.quad	0x3fd62cc50c30ebb0              # double 0.34648252668892621
	.quad	0x3fe4eb6bb9c41bab              # double 0.65373789102965441
	.quad	0x3fddee30237eeb38              # double 0.46766284433731498
	.quad	0x3fdec632a606dbe4              # double 0.48084703649095517
	.quad	0x3fdc0adac5b77e08              # double 0.43816251095083247
	.quad	0x3fe858a5171d1798              # double 0.76082090868361529
	.quad	0x3fc6080abff73ad4              # double 0.17212042210890977
	.quad	0x3feb76fb87ed1647              # double 0.85827423618383925
	.quad	0x3fcf6cff2897636c              # double 0.24551381570816078
	.quad	0x3fdb2f05a66b85f6              # double 0.42474499942736033
	.quad	0x3fe6016ad775228b              # double 0.68767301637224543
	.quad	0x3fe9bcae79131045              # double 0.804282413934296
	.quad	0x3fb575bf5481f218              # double 0.083827932483423573
	.quad	0x3fd2ec35e5b067be              # double 0.2956671469743205
	.quad	0x3fcae2f961276bf8              # double 0.21005170101020076
	.quad	0x3fd277e3eab97d96              # double 0.28856752321549928
	.quad	0x3fdfd6344a70649c              # double 0.49744899053036717
	.quad	0x3fdac3654a04c446              # double 0.41817600468045091
	.quad	0x3fd1c26d1423b6ca              # double 0.27749182669400041
	.quad	0x3fe1862d7feb74ae              # double 0.54762911781621937
	.quad	0x3fe260cff68277b3              # double 0.5743179144517313
	.quad	0x3fd8ee19b44c48bc              # double 0.38953249556756098
	.quad	0x3faad01d975a22f0              # double 0.052369045949552162
	.quad	0x3fc559ff4e8bffd0              # double 0.16680899939819804
	.quad	0x3feadeea72a225b4              # double 0.83971140279134326
	.quad	0x3fe5d3555f8cdfdd              # double 0.68204754507223309
	.quad	0x3fd0ab20264f8ab8              # double 0.26044467679291072
	.quad	0x3fe06f607c8968ed              # double 0.51359581302247437
	.quad	0x3fec7dcda2fa5e45              # double 0.89035684425011452
	.quad	0x3fe297f1acb1585f              # double 0.58104785660794878
	.quad	0x3f80df01baf3eb00              # double 0.0082378516367405119
	.quad	0x3fe2fda254b01a77              # double 0.59346119442564216
	.quad	0x3fe316efa00b3b48              # double 0.59654980906075483
	.quad	0x3fe00d6a6c70ba08              # double 0.50163766078714023
	.quad	0x3fe0b7da1b75d8aa              # double 0.52244286883685231
	.quad	0x3fe15837c21652c1              # double 0.5420187750592832
	.quad	0x3fa5fcc385f5f5b0              # double 0.042944059469827933
	.quad	0x3fe35ef879575953              # double 0.60534309100584449
	.quad	0x3fdedd07f97bc846              # double 0.48224067081094224
	.quad	0x3feb346b2184754c              # double 0.85014874025697784
	.quad	0x3fd61eba6de6ce84              # double 0.34562550289704341
	.quad	0x3fdc9bd895606eb6              # double 0.44701208674971882
	.quad	0x3fe4e1f68607f916              # double 0.65258337190587912
	.quad	0x3fec60114c7fbbe7              # double 0.88672699872210792
	.quad	0x3fb510f650f7c518              # double 0.082290072219411647
	.quad	0x3fe367177a3e3fcc              # double 0.60633443713776947
	.quad	0x3fe8decdbf2d21e9              # double 0.77719771708603702
	.quad	0x3fb88d3dca9f8128              # double 0.09590517231800233
	.quad	0x3fe0d6f7f96ccc5e              # double 0.52624129024333022
	.quad	0x3fee00bc192c2300              # double 0.93758969227300781
	.quad	0x3fc255384a93fcac              # double 0.14322570458896189
	.quad	0x3fb2f1004a81ed48              # double 0.073989885511697939
	.quad	0x3f9b0781edadf2c0              # double 0.026395826465420269
	.quad	0x3fb01446e6e6e328              # double 0.06280940186742312
	.quad	0x3fe3d630156692a2              # double 0.61989597492045712
	.quad	0x3fe90bf5b9a99558              # double 0.78270994436449381
	.quad	0x3fe9960282bbe3ef              # double 0.79956174406026814
	.quad	0x3feb0ec798a1c69a              # double 0.84555415926861888
	.quad	0x3fefa6fea9fc7492              # double 0.98913510513706826
	.quad	0x3fc712b430e1915c              # double 0.18025829684041639
	.quad	0x3f68ab8ab95bbd00              # double 0.0030114850477428456
	.quad	0x3fe6b5994d66fd28              # double 0.70966782682072438
	.quad	0x3fd72f9284e20bd8              # double 0.3622785852132302
	.quad	0x3fd89aba807ecfb4              # double 0.38444387958883941
	.quad	0x3fe06e2536459bf1              # double 0.51344547843916477
	.quad	0x3fe237c6796d6cdf              # double 0.56930850712106096
	.quad	0x3fc957746c8fc31c              # double 0.19798140812738374
	.quad	0x3fd0b95608c5b26a              # double 0.26131201607385057
	.quad	0x3fecb6735e00a73d              # double 0.89727180824159058
	.quad	0x3fe68950dbc63fcb              # double 0.70426218914689664
	.quad	0x3fed15506de1fb02              # double 0.90885182820770205
	.quad	0x3fba3ab17a2045f8              # double 0.10245808822244118
	.quad	0x3fc837f8baa94e1c              # double 0.18920811762164724
	.quad	0x3fde300ca6495db0              # double 0.47168270338940044
	.quad	0x3fc9301bd32ac5c8              # double 0.19678066073315237
	.quad	0x3fe6470f72d20e03              # double 0.6961743586147694
	.quad	0x3fe90736afe3fb0a              # double 0.78213056901572142
	.quad	0x3fa0145c64766bb0              # double 0.031405341399668329
	.quad	0x3fe9935d63211aa9              # double 0.79923886643594699
	.quad	0x3fd0cd200b5d97d6              # double 0.26251984701081932
	.quad	0x3fd331b87048ab8a              # double 0.29990969624730524
	.quad	0x3fe7b11b4c46dc19              # double 0.74036946199237541
	.quad	0x3fea44b4cae8ebee              # double 0.8208869898875244
	.quad	0x3fbbdef6ad3acf00              # double 0.1088709042476772
	.quad	0x3fc9c3a7d53346d4              # double 0.2012834349648559
	.quad	0x3fd6f83aa632b53c              # double 0.35890070181160971
	.quad	0x3fd1edd67b88d9e2              # double 0.28014146865771583
	.quad	0x3fe9567d454e08cb              # double 0.79180778061006529
	.quad	0x3fb917347e2ae2f8              # double 0.098010330965632053
	.quad	0x3fefc572b458532a              # double 0.99285254691730995
	.quad	0x3fea4951259a49bb              # double 0.82144982666277799
	.quad	0x3fe6c251485ca6cb              # double 0.71122039921939384
	.quad	0x3fe31dba2316100a              # double 0.59737879612703293
	.quad	0x3fc0cf125a247578              # double 0.13131932641492106
	.quad	0x3fd31a98186f1304              # double 0.2984981764423511
	.quad	0x3fed7195b407ae89              # double 0.92011532938109142
	.quad	0x3fcf4bc1a69d76d4              # double 0.24449940333845765
	.quad	0x3fe92d0312dd9c96              # double 0.78674462971402437
	.quad	0x3fa67a00dc8d50e0              # double 0.043899561808446341
	.quad	0x3f8993ddb6fd6440              # double 0.012489063403039791
	.quad	0x3fee2a173b32e0d9              # double 0.94263803064589091
	.quad	0x3fe13b09ca8e9ae4              # double 0.53845681726383221
	.quad	0x3fe529b595d6346d              # double 0.66134146943080696
	.quad	0x3fefbb690d617166              # double 0.99162724126248913
	.quad	0x3fd5a4a72c4f5edc              # double 0.3381746227946516
	.quad	0x3feefe6c3a4c4ddd              # double 0.96855746637669037
	.quad	0x3fe72d95bbc321f0              # double 0.72431456253349147
	.quad	0x3fdbf807ead224c2              # double 0.43701360637403408
	.quad	0x3fe9f7ff081b497a              # double 0.81152297576254218
	.quad	0x3feedbe7c488fd39              # double 0.96434391389622142
	.quad	0x3fb3b9280d66ec38              # double 0.07704401328275956
	.quad	0x3feaf9827fd13918              # double 0.8429577347212982
	.quad	0x3febe4efc44db892              # double 0.87169636097475434
	.quad	0x3fef4731350e52ad              # double 0.97744045603265805
	.quad	0x3fe52370dfb385b4              # double 0.66057628337528351
	.quad	0x3fdbc0f5b1a746e6              # double 0.43365232800452558
	.quad	0x3fe1b37cc332cc44              # double 0.55316007733052475
	.quad	0x3fe060d8032ed54a              # double 0.51182175275486341
	.quad	0x3fc8a0d5ef38ab9c              # double 0.19240831547480475
	.quad	0x3feda39a2faf4a7d              # double 0.92622098267959496
	.quad	0x3fd7d22cea876b0e              # double 0.37220309165211141
	.quad	0x3f9dcf15ee42f8c0              # double 0.02911028162702034
	.quad	0x3fb8ede2bc476df0              # double 0.097379847494657445
	.quad	0x3feec992b54105d5              # double 0.96210608864947266
	.quad	0x3fec44eb47931186              # double 0.88341297130004715
	.quad	0x3fe770c12cc96e63              # double 0.73251398799352463
	.quad	0x3fc01ab36592e51c              # double 0.12581484279306998
	.quad	0x3fc5188f30aeab54              # double 0.16481199147286907
	.quad	0x3fe05a234db9a888              # double 0.51100316220005571
	.quad	0x3fed72915c3cfeb2              # double 0.92023532882008952
	.quad	0x3fd90eb8592c7308              # double 0.39152344425546959
	.quad	0x3fdb949ff6872684              # double 0.43094634127610498
	.quad	0x3fd90761842b28c8              # double 0.39107549578751533
	.quad	0x3fe3b71bd11b5a8d              # double 0.61610213128263214
	.quad	0x3fba10d34b52e7d0              # double 0.10181923474274801
	.quad	0x3fdfd0c9d062369e              # double 0.49711842870679301
	.quad	0x3fd4cfb861e675e0              # double 0.32517823753900466
	.quad	0x3feecb65f26ae263              # double 0.96232888552829043
	.quad	0x3fdb83c22efaca18              # double 0.42991690242630076
	.quad	0x3fe9d0ffb39fdff6              # double 0.80676255305206612
	.quad	0x3fe0a80e5880d78e              # double 0.52051465307043698
	.quad	0x3fb52d997f70f670              # double 0.082727044690693807
	.quad	0x3fc5891819475b2c              # double 0.16824628099740246
	.quad	0x3fca4d2fc52bc060              # double 0.20548054816709094
	.quad	0x3f996412ae56cfa0              # double 0.024795810595335532
	.quad	0x3fe05605667ea518              # double 0.51050062197205914
	.quad	0x3fed2bdf7fe5bf1a              # double 0.91160559635133898
	.quad	0x3f949dcfd5dc2340              # double 0.020133254459355543
	.quad	0x3fa5f40bcf2978a0              # double 0.042877549208001797
	.quad	0x3fd16b8dfdc87c54              # double 0.27218961509237727
	.quad	0x3fc5ca89020d4d04              # double 0.17024338340943512
	.quad	0x3fe94db1e2f77dbd              # double 0.79073423699804091
	.quad	0x3fc795fb1c1d14a8              # double 0.18426455376371575
	.quad	0x3fdb5a434bade8a2              # double 0.42738420858916915
	.quad	0x3feabb1a85915d82              # double 0.83533979499308963
	.quad	0x3fed566da792c81e              # double 0.91680033425496155
	.quad	0x3fca608ef9346f08              # double 0.20607173126415312
	.quad	0x3fe67ccf0ac9b747              # double 0.70273544413587608
	.quad	0x3fe1982437958580              # double 0.5498219571710905
	.quad	0x3fd7c7e32613f3f2              # double 0.37157515257405216
	.quad	0x3fcc483a4ec48210              # double 0.22095421644282043
	.quad	0x3fd54bb76734c700              # double 0.33274636343695363
	.quad	0x3fe340d493e5e795              # double 0.60166386495915225
	.quad	0x3fd6e55c83879366              # double 0.35774910778700642
	.quad	0x3fe6cb1980c7e6e5              # double 0.71229243423951216
	.quad	0x3fe7eafad6d7266f              # double 0.74743406258603595
	.quad	0x3fde58a014cbbaec              # double 0.47415926009027376
	.quad	0x3fe5be7c73fccf68              # double 0.67950270322624551
	.quad	0x3fe0d77f5a76e766              # double 0.52630584400979497
	.quad	0x3fe55bc89f304aa5              # double 0.66745406238108684
	.quad	0x3fe2392a2390529c              # double 0.56947810121581055
	.quad	0x3fea01285710d807              # double 0.8126413059715113
	.quad	0x3fe3e8503ff798d6              # double 0.62210857862080604
	.quad	0x3fe6a27e95e95b13              # double 0.70733575133894744
	.quad	0x3fd96ce39a84f9f2              # double 0.39727106179989768
	.quad	0x3fd8975c62eff7e4              # double 0.38423833524563933
	.quad	0x3fd93d6dfe9075a2              # double 0.39437436923784663
	.quad	0x3fd037a75090b230              # double 0.25339682452866708
	.quad	0x3fc6f2f26a451b60              # double 0.17928915204012252
	.quad	0x3fc58a8fbba78bc0              # double 0.1682910600930807
	.quad	0x3fa9477cf6a35660              # double 0.049373536212141245
	.quad	0x3fe35c7fa816f26c              # double 0.60504134016043798
	.quad	0x3fe2434cb28db62b              # double 0.57071528314344755
	.quad	0x3fd4721a6ae6009c              # double 0.31946430625249334
	.quad	0x3fe5827b2aaf4b18              # double 0.67217787110198213
	.quad	0x3fe27711c96a99cc              # double 0.57703484858648713
	.quad	0x3fed7d964fb8d927              # double 0.9215804631301453
	.quad	0x3fe5fa63812aaa95              # double 0.68681502559532481
	.quad	0x3fddad646b97e108              # double 0.46370802409320833
	.quad	0x3fd900140a3ab7cc              # double 0.39062977789842246
	.quad	0x3fe3b586763d13c5              # double 0.61590884297822213
	.quad	0x3fc6421e31444f44              # double 0.1738927593765941
	.quad	0x3feb9084e8a38f2a              # double 0.86139150082860749
	.quad	0x3fdff43279585ef0              # double 0.49927961206547788
	.quad	0x3fc48619c5e1af94              # double 0.16034242784678254
	.quad	0x3fe821c1de509f34              # double 0.75412076397785776
	.quad	0x3fec3e34f7c3a418              # double 0.88259361640405398
	.quad	0x3f995f551e884460              # double 0.024777727116149229
	.quad	0x3fdad64ffe5efa10              # double 0.41933059540670659
	.quad	0x3fd49d41712de9a0              # double 0.32209812214537159
	.quad	0x3fcd9be2158d0c70              # double 0.23131967594426639
	.quad	0x3fb64eba7e891b38              # double 0.087138801472161798
	.quad	0x3fdd264828fe7026              # double 0.45546154025373864
	.quad	0x3feb46c0965ba9b1              # double 0.85238675467308245
	.quad	0x3fceede1e501d1a4              # double 0.24163459474551729
	.quad	0x3fe827e0670b1ad3              # double 0.75486774564418579
	.quad	0x3fc6bb99668d6d1c              # double 0.17760007388538035
	.quad	0x3feba11731f026b2              # double 0.8634143805840806
	.quad	0x3fee33ebe8c9ec2d              # double 0.94383807627253236
	.quad	0x3fdc9b2ad31b6ae8              # double 0.44697065940788017
	.quad	0x3fb2009c13baba08              # double 0.070321802918194121
	.quad	0x3fe677921d1806f7              # double 0.70209603960412792
	.quad	0x3febd35fec5ada4a              # double 0.86955257571282485
	.quad	0x3feb7533ade8b12e              # double 0.85805686918823709
	.quad	0x3fdf9d73d1fbf048              # double 0.49398513323081206
	.quad	0x3fbc303875ca4a08              # double 0.11011078716027367
	.quad	0x3fb8401672153580              # double 0.094727900364167894
	.quad	0x3f719e7c7f958180              # double 0.004301534959580855
	.quad	0x3fd41453727b746e              # double 0.31374059848696489
	.quad	0x3fe1b2a3ef442dd4              # double 0.55305668575004541
	.quad	0x3fe1a3219cca6e21              # double 0.55116348860923747
	.quad	0x3fe410a5e71d8ef1              # double 0.6270322336171984
	.quad	0x3fd9db9ae1a6245c              # double 0.40402862583193211
	.quad	0x3fd8e9df759e3578              # double 0.38927446828969137
	.quad	0x3fec885dc3526636              # double 0.89164627217105052
	.quad	0x3fe27514b6dd5dbe              # double 0.57679210391773217
	.quad	0x3febed487687b347              # double 0.87271521711736788
	.quad	0x3febb363df331763              # double 0.86564820855776892
	.quad	0x3fddb270db128f8e              # double 0.46401616472052687
	.quad	0x3fd47746fceefada              # double 0.31978010845697968
	.quad	0x3feaa5a5bd9243bd              # double 0.83272063279775177
	.quad	0x3fcc48db99454e48              # double 0.22097344383165507
	.quad	0x3fe4cc09b864a927              # double 0.64990697874353465
	.quad	0x3fd601448defbe3a              # double 0.34382737980829214
	.quad	0x3fede0dd5c6ad474              # double 0.9336993031526064
	.quad	0x3fd333d69d599756              # double 0.30003896108825268
	.quad	0x3fb4af1903206150              # double 0.080796778929998369
	.quad	0x3fea65ab65f1c39a              # double 0.82491083060277792
	.quad	0x3fe419a5bb8e113c              # double 0.62813078529192223
	.quad	0x3fdc64cd9e8ee916              # double 0.44365253910258795
	.quad	0x3fe6b01e611d62ad              # double 0.70899886100513287
	.quad	0x3fc2ec8fe7da1d80              # double 0.14784430333041243
	.quad	0x3fe7b6b135871864              # double 0.74105129675514236
	.quad	0x3fb644d512aa32f8              # double 0.086987797791333921
	.quad	0x3fe6cd817fcd646e              # double 0.71258616410626785
	.quad	0x3fef3dd46df21f01              # double 0.97629758333002325
	.quad	0x3fea7bde07367f46              # double 0.82762051972165618
	.quad	0x3fd9736fab3a57aa              # double 0.39767066689943908
	.quad	0x3fa440d11ebe05e0              # double 0.039557013514251116
	.quad	0x3fed634e8164612d              # double 0.91837239524742176
	.quad	0x3fe5a679fd6804d9              # double 0.6765718411772027
	.quad	0x3fe15de51902ff77              # double 0.54271178135966991
	.quad	0x3fdf1f6edb3c2548              # double 0.48629352006590354
	.quad	0x3fee9feb42b4e69a              # double 0.95702136067048404
	.quad	0x3fe2715dc2c8d72a              # double 0.57633865398267869
	.quad	0x3fe5d7e37ed8f6d4              # double 0.68260359549432303
	.quad	0x3fd91060c4419e82              # double 0.39162463346153953
	.quad	0x3feac7140a5bb39a              # double 0.83680154822433228
	.quad	0x3fe05bef77400895              # double 0.51122258463898851
	.quad	0x3fd63ed322764990              # double 0.34758451810298485
	.quad	0x3fe9dbf7df94c3d5              # double 0.80810159366785206
	.quad	0x3fe1b6b676f74746              # double 0.55355380282910782
	.quad	0x3fdcf89c21ac2c72              # double 0.45267394340834877
	.quad	0x3fe8ee9cb765a3c6              # double 0.77912746257526844
	.quad	0x3fdd13bd01e55cc0              # double 0.45432973084593797
	.quad	0x3fd352257f5054f8              # double 0.30188882287013952
	.quad	0x3fe99f5ba2d2d817              # double 0.8007028751515034
	.quad	0x3fe3133f61d71bd5              # double 0.59609955892016819
	.quad	0x3fe2abea1d014527              # double 0.58348565735847024
	.quad	0x3fe14dc4d85f259b              # double 0.54074327716914483
	.quad	0x3fe073e7cd662bc6              # double 0.51414861790669231
	.quad	0x3fe8bbbbe18bc56b              # double 0.77291673709821163
	.quad	0x3fe688f5960da424              # double 0.70421866709978476
	.quad	0x3fea672b7b760ed2              # double 0.82509397614964031
	.quad	0x3fd347bd3f58b4f8              # double 0.30125361620123625
	.quad	0x3fd6a60341253cde              # double 0.35388261186467485
	.quad	0x3fbaf931a176c9c0              # double 0.10536489669792726
	.quad	0x3fd114bdec595b1c              # double 0.26689098435365266
	.quad	0x3fc51ed54f47c018              # double 0.16500345584017917
	.quad	0x3fd0152156ffdc9a              # double 0.2512896871189213
	.quad	0x3fe5bc27bab839e8              # double 0.67921816319158967
	.quad	0x3fe75eb0864078d5              # double 0.73030878277838929
	.quad	0x3fe7b0d27336cdc5              # double 0.74033472540616485
	.quad	0x3fe05da526ece37f              # double 0.51143128969771101
	.quad	0x3fda098c033f97da              # double 0.40683269803264255
	.quad	0x3fe9a396e5b75ce2              # double 0.80121941439110977
	.quad	0x3fe8d26480704719              # double 0.77568268857632738
	.quad	0x3fe00e369f437ecf              # double 0.50173503023321497
	.quad	0x3fdb1f05a554ea58              # double 0.42376843591379076
	.quad	0x3fdce43814df229e              # double 0.45142938650364239
	.quad	0x3fda851884b84e8c              # double 0.41437352143223261
	.quad	0x3fecf8ff82ec1527              # double 0.90539527483693838
	.quad	0x3fcac2afecffb860              # double 0.20906638214313755
	.quad	0x3fe1c95402ac5331              # double 0.55582619211290851
	.quad	0x3fefeffd44fb3970              # double 0.99804557297629337
	.quad	0x3fd181554008d93c              # double 0.27351886037230932
	.quad	0x3febd43e0c632726              # double 0.86965849322698285
	.quad	0x3fe94be995d4c9a6              # double 0.79051665557772277
	.quad	0x3fd27d390781726e              # double 0.28889299138044222
	.quad	0x3feb608334cef395              # double 0.85553131403104266
	.quad	0x3fe2a3dc5b2a2a20              # double 0.58250253491980075
	.quad	0x3fe2cc5451196e2b              # double 0.58744254913057625
	.quad	0x3fe038a5faabc89d              # double 0.50691508254228135
	.quad	0x3fd5e3fc1ae85078              # double 0.34204008701022515
	.quad	0x3fe0520e33ada1e8              # double 0.51001653760345977
	.quad	0x3fe2de7428b18c95              # double 0.58965499828299761
	.quad	0x3fee362845c0d11c              # double 0.94411100028677052
	.quad	0x3fed0cb674d97558              # double 0.90780184576184819
	.quad	0x3fef01315671673d              # double 0.9688955963458522
	.quad	0x3fc5506573e7b324              # double 0.16651600036075209
	.quad	0x3fc909356cdee458              # double 0.19559352699232835
	.quad	0x3fc87173738475f8              # double 0.1909622491884162
	.quad	0x3fda2b233bac9b3e              # double 0.40888291194498894
	.quad	0x3feda53105f7371d              # double 0.92641497769520564
	.quad	0x3f8c347e8d751380              # double 0.013772000019011577
	.quad	0x3fe85a6fde2a4c46              # double 0.76103967086454172
	.quad	0x3fec75a63ca84ac0              # double 0.88936149451395607
	.quad	0x3fe63840ce792cb1              # double 0.69436683966468682
	.quad	0x3fd42d80c2b708b4              # double 0.31527728095182828
	.quad	0x3fd1d3c0c4209cc2              # double 0.27854937699380511
	.quad	0x3fc6ccf731828e28              # double 0.17813005368690082
	.quad	0x3fe0cfad0273fc93              # double 0.52535105208507316
	.quad	0x3fe848bcb6f8f784              # double 0.75887904869863165
	.quad	0x3fec1297970655c3              # double 0.87726954934139945
	.quad	0x3fef012d894a6d9e              # double 0.96889378370854096
	.quad	0x3feffce6cff1ad05              # double 0.9996217786223559
	.quad	0x3fc011c756c4bdb0              # double 0.12554256188148605
	.quad	0x3fef0b7e068c31ca              # double 0.97015286711535365
	.quad	0x3fd8e7e8e5617ad4              # double 0.38915464783160059
	.quad	0x3fd5c344d3fa5348              # double 0.34004326535187035
	.quad	0x3fea6dbaac3cbdf0              # double 0.82589467659084725
	.quad	0x3fddac0d1710e988              # double 0.46362616779847388
	.quad	0x3fea6f8b8e801c1f              # double 0.82611635048022325
	.quad	0x3fe43c55d74d02a1              # double 0.6323651509374778
	.quad	0x3fe43463d2569c87              # double 0.63139525491432458
	.quad	0x3fdf13f02fd2b938              # double 0.48559193296650305
	.quad	0x3fdbc4e3f0da139a              # double 0.4338922359532319
	.quad	0x3fe3221afa01c6ca              # double 0.59791325406532647
	.quad	0x3fd41a5b929074e8              # double 0.31410874665182442
	.quad	0x3fe7401eb048e498              # double 0.72657713347065833
	.quad	0x3feab6da565cefb6              # double 0.83482090823917221
	.quad	0x3fe591c5cced70a0              # double 0.67404451393987941
	.quad	0x3fe1fc889c5bc445              # double 0.56207685984384936
	.quad	0x3fe53b5e2845d8a4              # double 0.66349704614437544
	.quad	0x3fc83fd99a6a6a14              # double 0.18944854774311237
	.quad	0x3fe04da2f22189cd              # double 0.50947711268627816
	.quad	0x3fec7f1a089694ef              # double 0.89051534345040106
	.quad	0x3fe4bb66abcccd52              # double 0.64787610583008814
	.quad	0x3fe946aa2894673f              # double 0.78987605977747666
	.quad	0x3fe64614bd61219d              # double 0.6960548113648205
	.quad	0x3fefd4fb56c6f1f3              # double 0.99474875401170803
	.quad	0x3fe9467c68239715              # double 0.78985424365666523
	.quad	0x3f9feb066caf59e0              # double 0.031169987090686635
	.quad	0x3fec92949d9d4e17              # double 0.89289313110424728
	.quad	0x3fe6405a39ca7aba              # double 0.69535552298824332
	.quad	0x3fcff2db57382768              # double 0.24959890135533702
	.quad	0x3fe879ca1cebabc3              # double 0.76486688278725301
	.quad	0x3fd783d701183f04              # double 0.36742186648278641
	.quad	0x3fef6898901b6de3              # double 0.98151806016852238
	.quad	0x3feee7a00697f3ad              # double 0.96577454841427867
	.quad	0x3fee001e4a522560              # double 0.93751444354817792
	.quad	0x3fe6e2089e3c57b6              # double 0.71509200005924956
	.quad	0x3fc1f97a611d101c              # double 0.14042596570846022
	.quad	0x3fd1b463f71cc568              # double 0.2766351617056757
	.quad	0x3feb40b1d6267446              # double 0.85164729906285497
	.quad	0x3fe68952c87404d2              # double 0.70426310683265059
	.quad	0x3fec39437a1740a7              # double 0.88199018331399237
	.quad	0x3fac685a98051f70              # double 0.055483656937723391
	.quad	0x3fda4b6a298d46e8              # double 0.41085294778632298
	.quad	0x3fe278937d3cc534              # double 0.57721876583506182
	.quad	0x3fd4ebc2db0af304              # double 0.32688971892257279
	.quad	0x3fe4ed513e238b2a              # double 0.6539694036149275
	.quad	0x3fd66a575bc0a3b0              # double 0.3502405544300542
	.quad	0x3fe883eefbb33010              # double 0.76610516700884723
	.quad	0x3fe54168307a1cec              # double 0.66423425167240913
	.quad	0x3fc0cb42a76d7584              # double 0.13120301413702518
	.quad	0x3fef981a94e12a61              # double 0.98731736257589031
	.quad	0x3fd3150b44393ab6              # double 0.29815942442375432
	.quad	0x3fd39ac25bd229cc              # double 0.30632075278176951
	.quad	0x3fc00c806b82ca48              # double 0.12538151979022616
	.quad	0x3fe0d8b06367f47d              # double 0.52645129599808593
	.quad	0x3fe9f9c221ecface              # double 0.81173807741273563
	.quad	0x3fc5f81c0b7b62f8              # double 0.17163420258182049
	.quad	0x3fe9b6c627fd5a0d              # double 0.80356128511886171
	.quad	0x3fddeaf99a4288b6              # double 0.46746673645442216
	.quad	0x3fc921347aefa0a8              # double 0.19632583620773869
	.quad	0x3fe9e547e502eb86              # double 0.80923838356771749
	.quad	0x3fd3f4f1fe2b126e              # double 0.31182527371519242
	.quad	0x3feee6a352552814              # double 0.96565404968828483
	.quad	0x3fb1c3abb2ba1450              # double 0.069391947874536841
	.quad	0x3fe1deb979142d59              # double 0.55843804977613865
	.quad	0x3fe3b91dc1675fd8              # double 0.61634719633274937
	.quad	0x3fca349e8a3e0878              # double 0.20473081350434419
	.quad	0x3fe2bd212a63fbb2              # double 0.58558710364729039
	.quad	0x3fe075cad834f452              # double 0.51437895038510306
	.quad	0x3fd7bfffed32dc86              # double 0.37109373248990385
	.quad	0x3fe16947b75286ba              # double 0.54410157971525241
	.quad	0x3fdc585fa8f9bd48              # double 0.44289390088575376
	.quad	0x3fe5afb53d4c32b5              # double 0.67769872638890283
	.quad	0x3fe1b3c275027242              # double 0.55319331029347318
	.quad	0x3fc9cdf09b696448              # double 0.20159728611432315
	.quad	0x3fdbaca588b08778              # double 0.4324125132426313
	.quad	0x3fd5b0b8e4c88eca              # double 0.33891126958972662
	.quad	0x3fe7031803283b75              # double 0.7191276609099605
	.quad	0x3fd0baab14ebc1a2              # double 0.26139332812365457
	.quad	0x3f7b094d6e787500              # double 0.0066006683987585024
	.quad	0x3fdeeab8b6976560              # double 0.48307626563253869
	.quad	0x3fc88a8b8baef048              # double 0.19172806091762795
	.quad	0x3fd6dbd9853eb36e              # double 0.357168560144422
	.quad	0x3fcc5224f4e1f5d4              # double 0.22125684697304726
	.quad	0x3fb7990530315de0              # double 0.092178653970556024
	.quad	0x3fb53388ad10e7e0              # double 0.082817594768954006
	.quad	0x3fdf9e8d30a5f086              # double 0.49405221701432145
	.quad	0x3fe3555a413ab0ad              # double 0.60416901340569995
	.quad	0x3fd322b78e3a5b4c              # double 0.29899395837258136
	.quad	0x3fe3a07ae13ddce4              # double 0.61333984367857086
	.quad	0x3fd6b66edd55036c              # double 0.35488483061276699
	.quad	0x3fd27d45ca3fcca4              # double 0.28889603377246886
	.quad	0x3fda62e9f82e8232              # double 0.41228722797862638
	.quad	0x3fd281dbdf95667c              # double 0.28917595705352261
	.quad	0x3fdbd13599af9b24              # double 0.43464412697214727
	.quad	0x3fe5d6d8f7839c8b              # double 0.6824765047321234
	.quad	0x3feac181966d7f53              # double 0.83612136249937874
	.quad	0x3fd4c36b4d9114b8              # double 0.32442743849635347
	.quad	0x3fed08f316936d55              # double 0.90734247598030981
	.quad	0x3fc06f36e64b3718              # double 0.12839399571242249
	.quad	0x3fe03dfbb7b11c2c              # double 0.50756631734191648
	.quad	0x3fe42fc3a5eafcbe              # double 0.63083059697955668
	.quad	0x3fbd6e5e0fe97810              # double 0.11496532333828235
	.quad	0x3fd036dec37eba8c              # double 0.25334900943099892
	.quad	0x3fd2be17e2e95b2c              # double 0.29285237464266589
	.quad	0x3fe027e38857b232              # double 0.50486923818022533
	.quad	0x3feee7210651ebe6              # double 0.9657139895856488
	.quad	0x3feab0d350f2a8f7              # double 0.83408513841757681
	.quad	0x3fe4657a7984c435              # double 0.63738750204186678
	.quad	0x3fed83a1131982a6              # double 0.92231801729584073
	.quad	0x3fd7d83e11e1a944              # double 0.37257339235533871
	.quad	0x3fe7386ca14edcd7              # double 0.7256377363727563
	.quad	0x3fe39e2740d26a4c              # double 0.61305582676443171
	.quad	0x3fe448b09794b4d9              # double 0.63387326818124301
	.quad	0x3fe9e2ebdc0bc658              # double 0.80895035722478337
	.quad	0x3fcc7185979af144              # double 0.2222144117603283
	.quad	0x3fe25535198fa466              # double 0.57290129654314792
	.quad	0x3fe6765f0a1971ab              # double 0.70194961521661037
	.quad	0x3fd81744d12d4686              # double 0.37642021586825825
	.quad	0x3fef8d157b2b8a52              # double 0.9859721570649731
	.quad	0x3fde875f268f0974              # double 0.47701243176938779
	.quad	0x3fdc5a4821dc00b4              # double 0.4430103617342056
	.quad	0x3fcb1e1e2e835b94              # double 0.21185662528179405
	.quad	0x3fa16d03b146e470              # double 0.034034839048623478
	.quad	0x3fe419fad9afd480              # double 0.62817137257538036
	.quad	0x3fe03533319684a9              # double 0.50649413762234474
	.quad	0x3fb298e4f6d4a238              # double 0.072645483266236321
	.quad	0x3f826ccf6b022d40              # double 0.0089966015368846408
	.quad	0x3fc808bbc0cf1d74              # double 0.18776652254585324
	.quad	0x3fcef2ea9c0524dc              # double 0.24178822153252255
	.quad	0x3feeda1a1791cdd9              # double 0.9641237697928161
	.quad	0x3f3530de6291f000              # double 3.2334737131356484E-4
	.quad	0x3fdd5363404a7422              # double 0.45821458128358661
	.quad	0x3fee6752ff9f695c              # double 0.95011281896885746
	.quad	0x3fe5676e44769425              # double 0.66887582179754601
	.quad	0x3fe72f11161b13dc              # double 0.72449545209439803
	.quad	0x3fef409133062b4e              # double 0.9766317364277286
	.quad	0x3fd099ba0e5d8a80              # double 0.25938273814077917
	.quad	0x3fe7548470687650              # double 0.72906705813120176
	.quad	0x3fe55d5e1031eb1c              # double 0.66764739192089761
	.quad	0x3fed2117ded9d16b              # double 0.91028970265919662
	.quad	0x3fe117b08d815d60              # double 0.5341418041015622
	.quad	0x3fa6243f03cd5270              # double 0.043245286192051036
	.quad	0x3fd370b4c7c2e07e              # double 0.30375403888638874
	.quad	0x3fd94107cec39e0e              # double 0.39459414665040604
	.quad	0x3fd7f1f344b721d0              # double 0.37414247236713738
	.quad	0x3fd71ce7df7f1d1e              # double 0.36113926721414369
	.quad	0x3fe6f67c4019b1ed              # double 0.71758854407886263
	.quad	0x3fee70a28b84802f              # double 0.95124938249137425
	.quad	0x3fec913e52176b26              # double 0.8927299121236032
	.quad	0x3fe6c332deee3446              # double 0.7113279680357969
	.quad	0x3fdc5a1fb06ee82e              # double 0.44300071935470242
	.quad	0x3fcaec6bcc5aa870              # double 0.21033999899129041
	.quad	0x3fd00262112df270              # double 0.25014545133289001
	.quad	0x3fc8c41fc5f8c1b8              # double 0.1934852329882355
	.quad	0x3fcb90702408c658              # double 0.21534539947019726
	.quad	0x3fdf95d50b8d8086              # double 0.49352003219792839
	.quad	0x3fce63ae287fe458              # double 0.23741700150984246
	.quad	0x3fc6e64f9d62c04c              # double 0.17890353379107393
	.quad	0x3fdf4fa3d1b8b1ce              # double 0.48923583489047651
	.quad	0x3fe509e2698ea56a              # double 0.65745659462588191
	.quad	0x3fe124593e68fa3c              # double 0.53568708600489101
	.quad	0x3fed00ab77ed5aa1              # double 0.90633176253580328
	.quad	0x3fe0357627b78e7b              # double 0.50652606732587857
	.quad	0x3fec195a38b6fbdd              # double 0.87809477879624931
	.quad	0x3fd8617c80b8120e              # double 0.38095009393899282
	.quad	0x3fdb027afb7be294              # double 0.42202639159180788
	.quad	0x3fee5198fefc73a5              # double 0.94746064950924291
	.quad	0x3fb433d5c55256d8              # double 0.078915939974048555
	.quad	0x3fe5748baf471c6e              # double 0.67047676309529236
	.quad	0x3feed18b0d74e1a3              # double 0.96307900074230123
	.quad	0x3fe71e9d30f67105              # double 0.72248706400890284
	.quad	0x3fe2ebbfa2095e8e              # double 0.591277901151402
	.quad	0x3fde5bcf159a7612              # double 0.47435357198432471
	.quad	0x3fed642c08c07d81              # double 0.91847802838667303
	.quad	0x3fc3390815d01da8              # double 0.15017796578488896
	.quad	0x3fce334d125c8ec8              # double 0.23594058414993513
	.quad	0x3fd19659ed57deb2              # double 0.27480171373415907
	.quad	0x3fe85657ef672913              # double 0.76053997763054537
	.quad	0x3fd032c2df4af4bc              # double 0.25309821897446816
	.quad	0x3fca728e89512ca8              # double 0.20662099556861802
	.quad	0x3fe189471a9a4cd6              # double 0.54800753780218758
	.quad	0x3fe2f18b52ef5bb2              # double 0.59198538015595248
	.quad	0x3fd2a6e83ddba1da              # double 0.29143720665754602
	.quad	0x3fe3cc180a6a0530              # double 0.61866380723964731
	.quad	0x3fb434b8bfcc8c08              # double 0.07892946894257602
	.quad	0x3fc3452629bfce40              # double 0.15054776228463318
	.quad	0x3fdaed774c697e06              # double 0.42074377500645743
	.quad	0x3fdc4bb84c5345fc              # double 0.44212157682076714
	.quad	0x3fd6c65d1d01f608              # double 0.3558571608808454
	.quad	0x3fe8b0d0021203ee              # double 0.77158356098527547
	.quad	0x3fe9224b4f00f693              # double 0.78543630056784008
	.quad	0x3fda42f33fb116d2              # double 0.41033631534479043
	.quad	0x3fd23edb5e1bfe2a              # double 0.28508648100248257
	.quad	0x3fe4ec0972a8f87c              # double 0.65381309885539407
	.quad	0x3fe1f66473f3ff4e              # double 0.56132719657032637
	.quad	0x3f80c69b52ced900              # double 0.0081913122793193516
	.quad	0x3fb0ab5099923240              # double 0.065114057057322761
	.quad	0x3fe56f1ce212c476              # double 0.66981357722228441
	.quad	0x3fd83156c0d00fa0              # double 0.3780114062249087
	.quad	0x3fe07721ce30ad05              # double 0.51454248687278492
	.quad	0x3fd5fc6f0edfbe70              # double 0.34353233768977187
	.quad	0x3fcb51225f4927bc              # double 0.21341352131486058
	.quad	0x3faf5fe7332298f0              # double 0.061278557769854802
	.quad	0x3fd88cf923e772ac              # double 0.38360432153948909
	.quad	0x3fc4b1c146dfaac8              # double 0.16167465172414652
	.quad	0x3fcf4d33c42ce5fc              # double 0.24454352454067407
	.quad	0x3fdcf5d8791de9c4              # double 0.45250522449319086
	.quad	0x3fc6420249a72c50              # double 0.17388943287218916
	.quad	0x3fda17f02a2e4130              # double 0.4077110683365559
	.quad	0x3fe2f87a652dd93a              # double 0.5928318000940529
	.quad	0x3fec20a3d3fef5aa              # double 0.87898436932998902
	.quad	0x3fc85c58f8f67464              # double 0.19031822353727812
	.quad	0x3fdd32f602c0b70e              # double 0.45623541134669743
	.quad	0x3fccaecd6aefbd8c              # double 0.22408454629428964
	.quad	0x3fe80929c3862f13              # double 0.75111854732810668
	.quad	0x3fe4ffac24cf876e              # double 0.65621001424390868
	.quad	0x3fe2168de4950ad8              # double 0.56525320668182655
	.quad	0x3fee6ba1085efd0f              # double 0.95063830981226427
	.quad	0x3fd0b8183db871e4              # double 0.26123624827758207
	.quad	0x3fea3bbe167df9e6              # double 0.81979278939234912
	.quad	0x3fef714ca7beb998              # double 0.98258049738597019
	.quad	0x3fd2e11162e110d2              # double 0.2949870553604913
	.quad	0x3fccc0a9a5ff5f30              # double 0.22462959866856513
	.quad	0x3fe5794d792343b2              # double 0.67105744991032723
	.quad	0x3fcdb244da790928              # double 0.23200283687226286
	.quad	0x3fd61f7729b4c816              # double 0.34567050049656822
	.quad	0x3fd8a369260e24fa              # double 0.38497379986127067
	.quad	0x3fd2f0fd4f2e4ba0              # double 0.29595883114341781
	.quad	0x3fe762da928805ee              # double 0.73081711406137884
	.quad	0x3fdbd47f55dd7fa2              # double 0.43484481225277183
	.quad	0x3fdfcf8e949193ec              # double 0.49704327114733249
	.quad	0x3fdedf37db6eb166              # double 0.48237415722794308
	.quad	0x3fd756ccd2c404a2              # double 0.36467285711848707
	.quad	0x3fec621370c3074a              # double 0.88697216056628148
	.quad	0x3fe4204f594ffcbe              # double 0.62894408649290034
	.quad	0x3fe53bdb17a62354              # double 0.66355661982479797
	.quad	0x3fa71e6a1c80fe20              # double 0.045153919200398684
	.quad	0x3fe98668bfae72a1              # double 0.7976573699739512
	.quad	0x3fe905f6fcad751f              # double 0.78197812415206502
	.quad	0x3fd2910b10acd0a0              # double 0.29010273579047841
	.quad	0x3fecc05cccaf7523              # double 0.89848175027478694
	.quad	0x3fec7adf305dccd4              # double 0.88999900290073208
	.quad	0x3fe290f5065cb495              # double 0.58019496195415121
	.quad	0x3fd87c81e802ab06              # double 0.38259933144824776
	.quad	0x3fe0f9f3e9b72470              # double 0.53051181457079899
	.quad	0x3fe51e1dcf409ace              # double 0.65992632369019488
	.quad	0x3feadd68b9b66a74              # double 0.83952747604355559
	.quad	0x3fe421544e579b57              # double 0.62906852055753404
	.quad	0x3fdbad8a9c88b296              # double 0.43246712957879063
	.quad	0x3fdedd9decd0e20e              # double 0.48227642180020858
	.quad	0x3fdf2ea4d2b37314              # double 0.48722191406504689
	.quad	0x3fdbded605603c36              # double 0.43547583127014222
	.quad	0x3fd1381628d012ae              # double 0.26904825196860827
	.quad	0x3fc691c699213b18              # double 0.17632372357407955
	.quad	0x3fe72e29e48f912f              # double 0.72438521042616866
	.quad	0x3fe715f7404b7769              # double 0.72143137509895638
	.quad	0x3fe08db0057eeaf1              # double 0.51729584763901759
	.quad	0x3fe88cdf6b3540fd              # double 0.7671963781267831
	.quad	0x3fef2c49bdb6a970              # double 0.97415625623152202
	.quad	0x3fed3cb4b8ab0692              # double 0.91366039340955951
	.quad	0x3feeeeadd40fa34a              # double 0.9666356221979211
	.quad	0x3fd4b7f1530d1bcc              # double 0.32372696981877591
	.quad	0x3fe0ca38b943963f              # double 0.52468525108697139
	.quad	0x3fa9a245cadcd4e0              # double 0.050066166890624819
	.quad	0x3fe5761ac3957111              # double 0.67066705894424861
	.quad	0x3fa53442a41c5a50              # double 0.041414339573908721
	.quad	0x3fe7d6790bf771bf              # double 0.74493076646063361
	.quad	0x3fea286ca4a7df49              # double 0.81743461760832148
	.quad	0x3fd909564436b2fa              # double 0.39119488393298207
	.quad	0x3fc0a1d6c6baae20              # double 0.12993893340659302
	.quad	0x3fead416a30bbe5b              # double 0.83838970036408555
	.quad	0x3fd627d9b39a9bd8              # double 0.3461822751946193
	.quad	0x3fd20ad95bd2fb2a              # double 0.28191217391206413
	.quad	0x3fd85716e61933cc              # double 0.38031551809836794
	.quad	0x3fd090c5be894264              # double 0.25883620841071875
	.quad	0x3fec35488a3f34b5              # double 0.88150431634280457
	.quad	0x3fe63ff0ce1bca67              # double 0.69530525451257297
	.quad	0x3fdbb493103ba676              # double 0.43289639077429543
	.quad	0x3fe68afdf1b8cdf2              # double 0.70446679316813587
	.quad	0x3f92cc0608dfae00              # double 0.018356413165674823
	.quad	0x3fcb7d789543f72c              # double 0.21476657188753145
	.quad	0x3fb5e51fbf73c168              # double 0.085527405015232483
	.quad	0x3fb425f16acbc660              # double 0.07870396478008379
	.quad	0x3fe87ae5e8cdb696              # double 0.76500220746466385
	.quad	0x3fddb0ed9c1e015c              # double 0.46392383809872739
	.quad	0x3fe080c56b1a98c3              # double 0.51571913641671363
	.quad	0x3fea41f660338658              # double 0.82055205144224441
	.quad	0x3fdd91f79b2b45be              # double 0.46203413155771134
	.quad	0x3f974415b9d88e20              # double 0.022720660656103786
	.quad	0x3fe6934586e9e949              # double 0.7054774889977945
	.quad	0x3fed01082e43af56              # double 0.906375971183915
	.quad	0x3fd5a5c9d3538bea              # double 0.3382439197286532
	.quad	0x3fe7d1b24ab19c74              # double 0.74434771145469236
	.quad	0x3fbd4101088c4f48              # double 0.11427313288396335
	.quad	0x3feb093d26974a02              # double 0.84487779176043909
	.quad	0x3feee0e01bfbc863              # double 0.96495061364681722
	.quad	0x3fb4fbd4595faff8              # double 0.081967613048334331
	.quad	0x3fe514fb0de93b58              # double 0.6588111182880807
	.quad	0x3fe8f790c403e9ac              # double 0.78022039684519972
	.quad	0x3fc258cb139c18b8              # double 0.14333475549228125
	.quad	0x3fd928c9ab27382c              # double 0.3931144877832391
	.quad	0x3fdf4f00a13f8c7a              # double 0.48919692751787347
	.quad	0x3fe8bf21aec25cb9              # double 0.77333149082814778
	.quad	0x3fecadfee68817e7              # double 0.8962397100992775
	.quad	0x3fd6d33597e3ad58              # double 0.3566411956114357
	.quad	0x3fe625f7121dc538              # double 0.69213441408479692
	.quad	0x3fbe36ffc424fda8              # double 0.11802671946224186
	.quad	0x3fd2294570b99db8              # double 0.28376899727160376
	.quad	0x3fe3692dda89150f              # double 0.60658924753866639
	.quad	0x3fe0e3c318dcc1b5              # double 0.52780299049304935
	.quad	0x3fa56bfb4518bcb0              # double 0.04183945864166938
	.quad	0x3fe68e3b8e8e55c5              # double 0.70486238329856887
	.quad	0x3fdb138353623b0a              # double 0.42306597845974692
	.quad	0x3fee50b4ed43472b              # double 0.94735189762488881
	.quad	0x3fee1ff856776808              # double 0.94140259635901291
	.quad	0x3fed6509dfe91d48              # double 0.91858381016292245
	.quad	0x3fd3eeaaf14981fa              # double 0.31144212306210728
	.quad	0x3fd9a65014464940              # double 0.40077592830597908
	.quad	0x3fe8a23820e69f87              # double 0.76980215478850844
	.quad	0x3fd72d7691f156ac              # double 0.36214985134334188
	.quad	0x3fe816e7bd94b8b7              # double 0.75279604938056977
	.quad	0x3fb3fd49b1b15898              # double 0.078083616144200341
	.quad	0x3fe87d3dfa1c9e2a              # double 0.7652883419986598
	.quad	0x3fb3e778610d65b0              # double 0.077750705427567678
	.quad	0x3fd550c867dfd50c              # double 0.33305559295634235
	.quad	0x3fecdbce8fcf0d7b              # double 0.90183189475685255
	.quad	0x3fd16130788d5e38              # double 0.27155696652104977
	.quad	0x3fd58d286592bbb4              # double 0.33674058837180643
	.quad	0x3fec670f5fee9854              # double 0.88758057343216956
	.quad	0x3fce12500ed928b8              # double 0.23493386006368211
	.quad	0x3fe9d77a9099c6c6              # double 0.80755356066057327
	.quad	0x3fb905d1c870fcd0              # double 0.097745047984960864
	.quad	0x3fc0ed34711b7218              # double 0.13223891756833051
	.quad	0x3feec4afaa2fb501              # double 0.96150954474947536
	.quad	0x3fb801ea3e1da538              # double 0.093779220738402169
	.quad	0x3fe810a29b273c89              # double 0.7520306616151099
	.quad	0x3fe14c3523867c84              # double 0.54055268229048226
	.quad	0x3fe835dcb12fdd6b              # double 0.75657496077375919
	.quad	0x3fe05a4a8ddf7f62              # double 0.51102187833383206
	.quad	0x3fd1dc92e852e198              # double 0.27908775985590628
	.quad	0x3fea602d56688c90              # double 0.82424036862029659
	.quad	0x3fce0716bf2fb038              # double 0.2345913346792956
	.quad	0x3fc3b0cf9d5c1bec              # double 0.15383334334930454
	.quad	0x3fec7b5edfdb4ffd              # double 0.89005988809594749
	.quad	0x3fef2ddbc7687a83              # double 0.97434796282671276
	.quad	0x3fbdd1e788225320              # double 0.11648413728319129
	.quad	0x3fef7d734a025003              # double 0.98406376318826038
	.quad	0x3fd64509c8fa4c1a              # double 0.34796375872355301
	.quad	0x3fec7f1d10c1b3ea              # double 0.89051678917678356
	.quad	0x3fc350ed62305378              # double 0.15090720457433426
	.quad	0x3fdd1a720a8170dc              # double 0.45473910356464642
	.quad	0x3fed6a550f691e52              # double 0.91923001298796181
	.quad	0x3fef04e3234854fb              # double 0.96934658900377657
	.quad	0x3fa361ae34f1bc20              # double 0.037854618037151733
	.quad	0x3f9d9f72829aede0              # double 0.028928555699833214
	.quad	0x3feeadc5327f0b48              # double 0.95871219503929072
	.quad	0x3fd2e29aba1d31d6              # double 0.29508083510589012
	.quad	0x3fd666e79abfdf4a              # double 0.35003080475097603
	.quad	0x3fd96a112411b98c              # double 0.39709881327043983
	.quad	0x3fdf8474b1069ab8              # double 0.49245946204829805
	.quad	0x3fed432dd690d248              # double 0.91445056826939553
	.quad	0x3fda6d1b0570a7aa              # double 0.41290927439933489
	.quad	0x3fedab177852b7f7              # double 0.9271352148114137
	.quad	0x3fecf40a2bc72407              # double 0.90479000616426297
	.quad	0x3fc37071e654ca64              # double 0.1518690466560485
	.quad	0x3fefbfe8408edda0              # double 0.99217617615697761
	.quad	0x3fe0cc6a1104811b              # double 0.5249529201865103
	.quad	0x3f70589d5bcb5d00              # double 0.0039907595462047585
	.quad	0x3fda92bea6bb9660              # double 0.41520658762451568
	.quad	0x3fd190a0090a52b8              # double 0.27445221789211471
	.quad	0x3fee0addccfc07ed              # double 0.93882646595033992
	.quad	0x3fdf86f7cceb54f8              # double 0.49261279117247581
	.quad	0x3feadc892b22e66a              # double 0.83942087578834657
	.quad	0x3fee97977d787f09              # double 0.9560048533057578
	.quad	0x3fe33b46edbd735e              # double 0.60098596986390951
	.quad	0x3fd28e193f1e5f24              # double 0.28992301143579113
	.quad	0x3fcdd3ae3303b610              # double 0.23302247515623309
	.quad	0x3fad42bad16120c0              # double 0.057149732645997542
	.quad	0x3f98cfa6cb4898e0              # double 0.024229627759404404
	.quad	0x3fb7496f3b66c4b0              # double 0.090964271547607777
	.quad	0x3fd9a40d0179606c              # double 0.40063786643941657
	.quad	0x3fe18f556b3fd3ec              # double 0.54874678561338674
	.quad	0x3fd675e3ffad03a2              # double 0.35094547241538454
	.quad	0x3fd03d4b6fea2236              # double 0.25374113015326161
	.quad	0x3fd31b823116cffc              # double 0.29855398935183053
	.quad	0x3fea5b61c23f81c9              # double 0.8236550134570787
	.quad	0x3fd1b6b2883ea086              # double 0.27677596383228609
	.quad	0x3fdc3332862b2b02              # double 0.44062483885197434
	.quad	0x3fe5a5542be34bc4              # double 0.67643173763132625
	.quad	0x3fe13576b088af92              # double 0.53777632216723448
	.quad	0x3fdc097f95a13ee4              # double 0.43807973491946783
	.quad	0x3fed6896ae122c6b              # double 0.91901716230621611
	.quad	0x3fb70803477d1050              # double 0.089966015771154816
	.quad	0x3fe7e3512a1652a9              # double 0.74649866314083113
	.quad	0x3f9954127d47a020              # double 0.024734772583457354
	.quad	0x3f85e13a5ba0a840              # double 0.010683494492770618
	.quad	0x3fdd86c56bb55db0              # double 0.46135077970890404
	.quad	0x3fdec4054c662052              # double 0.48071415386994432
	.quad	0x3fee55a2534284e0              # double 0.94795337926566602
	.quad	0x3fdb7429e243d3c8              # double 0.4289650640123992
	.quad	0x3fe246f926e481a8              # double 0.57116372677051164
	.quad	0x3fd01a376d15a952              # double 0.25160012867731496
	.quad	0x3fda5d6803d40526              # double 0.41195106862876896
	.quad	0x3fe3fbe3ac5d9d33              # double 0.62449821152850971
	.quad	0x3fe56142feb3a30b              # double 0.66812276598383968
	.quad	0x3fe8aed7d5d0d3d8              # double 0.7713431526268506
	.quad	0x3fc71e284d81d440              # double 0.18060783180740891
	.quad	0x3fcdf5a46f912b00              # double 0.23405890891657322
	.quad	0x3fef9b6a6433f31f              # double 0.9877216298187682
	.quad	0x3fe529b4702fc9b7              # double 0.66134092246493636
	.quad	0x3fe688feb7983247              # double 0.70422302110962043
	.quad	0x3fc7394325c18330              # double 0.18143500655698963
	.quad	0x3fb221b32fc2e1a0              # double 0.0708267203907611
	.quad	0x3fdb77ca0c9ed096              # double 0.42918635590036425
	.quad	0x3fd8d51075e89aec              # double 0.38800441278946951
	.quad	0x3fdcc4f1b46fe508              # double 0.44952051754769728
	.quad	0x3fb1621395f2e470              # double 0.067902778729050928
	.quad	0x3f7214e180b1b580              # double 0.0044144447993920144
	.quad	0x3fd3929f871ef62a              # double 0.30582416720776229
	.quad	0x3fc6b1af09559050              # double 0.17729747730038747
	.quad	0x3fb634a59b084078              # double 0.086740827893892702
	.quad	0x3fe9b0744143c144              # double 0.80278980967526836
	.quad	0x3fbf994138f56778              # double 0.12343223229018274
	.quad	0x3fe5f8c5a1e8ef2e              # double 0.6866176760008551
	.quad	0x3f9b8c52959e10e0              # double 0.0269024757212869
	.quad	0x3fecd7b07bfca0f9              # double 0.90132927147081354
	.quad	0x3fb70bdbeebccfb8              # double 0.090024705682309469
	.quad	0x3feb2fa21dafea0b              # double 0.84956460760378272
	.quad	0x3fe10d31ff67399d              # double 0.53286075480882611
	.quad	0x3fee6bf5000154cf              # double 0.95067834855094613
	.quad	0x3feab72e74e1105d              # double 0.83486101940117019
	.quad	0x3fed0bf5330032fd              # double 0.90770969353761155
	.quad	0x3fe5273fa538219d              # double 0.66104109067332539
	.quad	0x3fbbd6b1cf0d01c8              # double 0.10874472908927324
	.quad	0x3fd8ab02468a4cfc              # double 0.38543755425162352
	.quad	0x3fcd0d32408a488c              # double 0.22696521903396094
	.quad	0x3fe3976a28c97396              # double 0.61223323789782813
	.quad	0x3fd408e57d727c5e              # double 0.31304299593643303
	.quad	0x3fd2d64b88978c8c              # double 0.29432953204213486
	.quad	0x3fe0630d354d00f5              # double 0.51209125910102549
	.quad	0x3fe71eeec908aa5a              # double 0.72252597107337668
	.quad	0x3fe55691f33e7037              # double 0.66681764134000943
	.quad	0x3fec8822dc99e2b9              # double 0.8916181858649771
	.quad	0x3fe7303f3f98784d              # double 0.72463953419697591
	.quad	0x3fcf76b08bfb99d0              # double 0.24580962023828912
	.quad	0x3feeb0321f12f329              # double 0.95900827473778804
	.quad	0x3fdfd7e25ee46ce2              # double 0.49755152956795545
	.quad	0x3fc9195bce0e1a18              # double 0.19608638345035057
	.quad	0x3fb24db8cf588ab0              # double 0.071498442288922659
	.quad	0x3fb0c5d1235c7db0              # double 0.065518447049263129
	.quad	0x3fe370913c6381a5              # double 0.60749112887065293
	.quad	0x3fe638055206b65a              # double 0.69433847447153174
	.quad	0x3f90f53615b615a0              # double 0.016560406756544688
	.quad	0x3fbac9b76f480310              # double 0.10464045016125234
	.quad	0x3f99d1a9bf85e9c0              # double 0.02521386367286893
	.quad	0x3fea188f9bbe7eb4              # double 0.81549816530965424
	.quad	0x3f75235e26022c80              # double 0.0051606824564586207
	.quad	0x3fb6c90ad96f0918              # double 0.089005163273246146
	.quad	0x3fd316aa39e922b6              # double 0.29825835852947635
	.quad	0x3fe624a1325c8fe2              # double 0.69197139583820566
	.quad	0x3fe2f44d1176a5cb              # double 0.5923219052394243
	.quad	0x3fe43a08d614b383              # double 0.63208429157894874
	.quad	0x3fdc6dd12910fd72              # double 0.44420269976031712
	.quad	0x3fdf3da5d13e8ea4              # double 0.48813767847080158
	.quad	0x3fe03555bfe5f077              # double 0.50651061515919948
	.quad	0x3fe73276422ff44e              # double 0.72490990569316138
	.quad	0x3fe32dca7405a4e0              # double 0.59933970127636016
	.quad	0x3fe89564c2d71085              # double 0.76823652319627966
	.quad	0x3fcc6093f38bc648              # double 0.22169732467550518
	.quad	0x3fd5b62b3595c8c4              # double 0.33924370034140972
	.quad	0x3fd57a083c3dc48a              # double 0.33557325251519698
	.quad	0x3fd17d2b53b1c564              # double 0.2732647244766524
	.quad	0x3fe656402e8c9860              # double 0.69802865115776669
	.quad	0x3fe46d5d9708b7f6              # double 0.63835029124106657
	.quad	0x3fe8937988b12943              # double 0.7680022878424001
	.quad	0x3fbaee7331978d58              # double 0.10520095787756156
	.quad	0x3fe9161d9db0cd9a              # double 0.78394966887428841
	.quad	0x3feabc502a4028de              # double 0.83548744442057532
	.quad	0x3fe713fff6e1fea9              # double 0.72119138926787685
	.quad	0x3fee808663e624d3              # double 0.95318908225558585
	.quad	0x3fe6bd49a969ffe6              # double 0.71060641373332767
	.quad	0x3fdb47f175cfd1a8              # double 0.42626606469209571
	.quad	0x3fbcb2fd9d4f1460              # double 0.1121061810545867
	.quad	0x3fd4b57b8b7f9c46              # double 0.32357681868456145
	.quad	0x3fe09f4bc122a17b              # double 0.51944530221685115
	.quad	0x3fb5ea3e64ce4698              # double 0.085605525599272148
	.quad	0x3feed79fda8af5f2              # double 0.96382134136336917
	.quad	0x3fef977c1328e111              # double 0.98724178068281009
	.quad	0x3fe20ebe5f57fdc3              # double 0.56429976102656842
	.quad	0x3fe2707d9b623936              # double 0.5762317690694434
	.quad	0x3fc22b351868eda8              # double 0.14194358531845563
	.quad	0x3fb2096d122fcc28              # double 0.070456330242266163
	.quad	0x3fe7f02c8a540bf5              # double 0.74806811349151181
	.quad	0x3fa2f892908d7d20              # double 0.03705270781096659
	.quad	0x3fc5924f2f64ab60              # double 0.16852750600932165
	.quad	0x3fad2cbc0b34a850              # double 0.056981922500498272
	.quad	0x3fe9ecde3ce03530              # double 0.81016456498915623
	.quad	0x3fed976359b8891f              # double 0.92472999118425381
	.quad	0x3fca8cdf299ae1a8              # double 0.20742406398291036
	.quad	0x3fd08f6f8b011bf8              # double 0.25875462126390358
	.quad	0x3fd5a8ba7f8f5f72              # double 0.3384233709052672
	.quad	0x3f722113a4414780              # double 0.0044260756731818729
	.quad	0x3fef217addf6cdba              # double 0.97283690788611143
	.quad	0x3fef74dea9d60840              # double 0.98301633044344072
	.quad	0x3fea1bf459f7d246              # double 0.81591241428265771
	.quad	0x3feda72ae79b6958              # double 0.92665620074994148
	.quad	0x3feb810909b711f3              # double 0.85950137994274056
	.quad	0x3fd8e8d175a19bd8              # double 0.38921009528570272
	.quad	0x3fe67df952a06ce9              # double 0.70287767541904345
	.quad	0x3fe839471567cc9e              # double 0.75699190312151976
	.quad	0x3fac7150083dad20              # double 0.05555200672719196
	.quad	0x3fe4f1ca831671a9              # double 0.65451551058827306
	.quad	0x3fea29458e0d2b65              # double 0.817538049167848
	.quad	0x3f9c06a71d49f940              # double 0.027369128382354946
	.quad	0x3fe543556cbf4864              # double 0.66446944465338875
	.quad	0x3fe69ffff9333631              # double 0.70703123733409801
	.quad	0x3fc652cd0a7d6fb8              # double 0.17440188419538827
	.quad	0x3fe35a4213edfbe1              # double 0.60476783649926003
	.quad	0x3fdf0f9fb4e469b0              # double 0.48532860436685166
	.quad	0x3f8e0ff4f40b7300              # double 0.014678872773794094
	.quad	0x3fcbb7f41a1c6a18              # double 0.21655131602240441
	.quad	0x3fe2ef528565e7e5              # double 0.59171415380774006
	.quad	0x3fd35f8a6dce03c6              # double 0.30270634387130391
	.quad	0x3fe10cec7b5d025c              # double 0.53282760710142041
	.quad	0x3fe55af43ddb15ec              # double 0.66735279160701344
	.quad	0x3fedf113751e73a1              # double 0.93567822336955342
	.quad	0x3fd0c4372ece8a0c              # double 0.26197604723907442
	.quad	0x3fe3118ef88e1b90              # double 0.59589336915893121
	.quad	0x3fe4d2d419f40e2c              # double 0.65073590344440424
	.quad	0x3fea7fc2042b47b2              # double 0.82809544386167588
	.quad	0x3fd857ed4d8e5da2              # double 0.38036663602675891
	.quad	0x3fe0ae1e3268b05f              # double 0.52125463338371592
	.quad	0x3fd11850b9b7a97e              # double 0.26710909019916318
	.quad	0x3fdb046d0e13a532              # double 0.42214514136010728
	.quad	0x3fba7f0c80c525b0              # double 0.10350111144830154
	.quad	0x3fea291edeed5959              # double 0.81751960316141059
	.quad	0x3fe9535c9ba8a087              # double 0.79142599489297616
	.quad	0x3fe9ec038714708c              # double 0.81006027586728768
	.quad	0x3fe16fddcf354fff              # double 0.54490557165490816
	.quad	0x3fe4fbfbfa7d9ec4              # double 0.65575980113950338
	.quad	0x3fd4afe70648d998              # double 0.32323623288848458
	.quad	0x3fcb71aa332d807c              # double 0.21440627573884175
	.quad	0x3fc3880cc39a596c              # double 0.15258941222118538
	.quad	0x3fd61094a4d81132              # double 0.34476200197265705
	.quad	0x3fbb684a0737f398              # double 0.10706007648691551
	.quad	0x3fe9cf6bdfe13717              # double 0.80656999327195222
	.quad	0x3feae791a681dc8b              # double 0.84076769371940097
	.quad	0x3fe7d0c707562f9f              # double 0.74423552926008429
	.quad	0x3fe98e737f77cbff              # double 0.79863905807576419
	.quad	0x3fdb88f471e73892              # double 0.43023406146392873
	.quad	0x3fe03ca458d8ae0d              # double 0.50740258553327211
	.quad	0x3fe98079584f5cab              # double 0.79693286178635014
	.quad	0x3fe71bb95c70495c              # double 0.72213428549211356
	.quad	0x3fd820d85eb2765c              # double 0.37700471160665017
	.quad	0x3fc32fff08825280              # double 0.14990222850305557
	.quad	0x3fd98555bb4b6710              # double 0.3987631157921081
	.quad	0x3fe5f10e7d9f7660              # double 0.68567585502360018
	.quad	0x3fe8c8fd0eaf6cd6              # double 0.77453472965444337
	.quad	0x3fce898d825bec98              # double 0.23857277741612815
	.quad	0x3fc580aebf8e9e58              # double 0.16798958161710931
	.quad	0x3fc11eb4eae5ef98              # double 0.13374959439886136
	.quad	0x3fec8ea762748451              # double 0.89241379956741629
	.quad	0x3fe706e64f6f54dc              # double 0.71959224238039665
	.quad	0x3fe897b02ad1105a              # double 0.7685166202795799
	.quad	0x3fed2e04b0a2c359              # double 0.91186747073343632
	.quad	0x3fe509a3fffa32eb              # double 0.65742683406423674
	.quad	0x3fd9c76225dd8d40              # double 0.40279439637943781
	.quad	0x3fed0738c4f1cb70              # double 0.90713156190609645
	.quad	0x3fb08e053f0800d8              # double 0.064667060745708382
	.quad	0x3fd7dd63e0281324              # double 0.37288758173262893
	.quad	0x3fd6d01ef7cdfa14              # double 0.35645269584338846
	.quad	0x3fe88f52926f8133              # double 0.7674954280919678
	.quad	0x3fd3ccfaa0c06a34              # double 0.3093859262313885
	.quad	0x3fe7183d5fa48115              # double 0.72170895271486535
	.quad	0x3fe422453f0332ea              # double 0.62918340975883535
	.quad	0x3fcc871d2616506c              # double 0.22287334785199009
	.quad	0x3fe79dff7ec64072              # double 0.73803686867360185
	.quad	0x3fe8df634a1bb3ca              # double 0.77726902460346392
	.quad	0x3fd4eecf8e23cc60              # double 0.32707585221141322
	.quad	0x3fc13910a01a3200              # double 0.13455398385521278
	.quad	0x3feaff0545cb7eb3              # double 0.84363044387642672
	.quad	0x3fdf162bbbead478              # double 0.48572820044802922
	.quad	0x3fe1c7755af8accb              # double 0.55559795158242176
	.quad	0x3fe04fe55e1583c9              # double 0.50975292564191321
	.quad	0x3fd2cb13b269f7d0              # double 0.29364483283268061
	.quad	0x3fdb187d90681cae              # double 0.4233697805615958
	.quad	0x3fe62b5d0cc6d8bd              # double 0.69279339309175436
	.quad	0x3fe78d73a3070c74              # double 0.73601705399813833
	.quad	0x3fe8cb5bfe459c0a              # double 0.77482413923724036
	.quad	0x3fc79cb45c11e2ac              # double 0.18446974273299099
	.quad	0x3fec3ed65f006834              # double 0.88267057948110627
	.quad	0x3feff208b1ece2c7              # double 0.99829516173402843
	.quad	0x3fd257e22faea572              # double 0.28661398560014739
	.quad	0x3fd1592c57462de8              # double 0.27106770060410534
	.quad	0x3fe0ecc035b47c0f              # double 0.52890024651776624
	.quad	0x3fc47430efbdab0c              # double 0.15979587274645046
	.quad	0x3fedaba05d921c9d              # double 0.92720049167191443
	.quad	0x3fd668897f2f9186              # double 0.35013043804635691
	.quad	0x3fd118c18caa0434              # double 0.26713598953944317
	.quad	0x3fd903e2bd026a40              # double 0.39086216409637942
	.quad	0x3fe1a89fc805fa7d              # double 0.55183400218068324
	.quad	0x3fe74790ee48eedc              # double 0.72748610057848451
	.quad	0x3fd7a00cbf41439c              # double 0.36914366414299038
	.quad	0x3fd7e6eaafa6084a              # double 0.3734690394704826
	.quad	0x3fe6f57235e5e8d4              # double 0.71746168639153973
	.quad	0x3fe583de463860ea              # double 0.67234719958198963
	.quad	0x3fbcef2f84f44930              # double 0.11302468296006363
	.quad	0x3fd2b567125780be              # double 0.2923219374770375
	.quad	0x3fdf89dae7bddbee              # double 0.49278900748271226
	.quad	0x3fccd49a5277f35c              # double 0.22523812319550529
	.quad	0x3fc712e0d675f63c              # double 0.18026361915319622
	.quad	0x3fe46a874b0dd624              # double 0.63800396594041731
	.quad	0x3fe56ef202e95c29              # double 0.66979313439049293
	.quad	0x3fc943c23949eb7c              # double 0.19738033101370067
	.quad	0x3fc31021503a51e8              # double 0.14892975251554152
	.quad	0x3fe8d2bd690686f2              # double 0.77572508347313218
	.quad	0x3fc73934d3cfc1b0              # double 0.1814332994686203
	.quad	0x3fd0823e91a72934              # double 0.25794948791430561
	.quad	0x3fd5a6cb5c76032a              # double 0.33830532102006095
	.quad	0x3fcfc3527d4b3eb4              # double 0.24814826124064882
	.quad	0x3fec2fc948d8c361              # double 0.88083328464390942
	.quad	0x3feb2b15383679ef              # double 0.84900914172231789
	.quad	0x3fead5c542f67a8f              # double 0.83859503821061476
	.quad	0x3fc68d7fb5a01724              # double 0.17619320267129368
	.quad	0x3fdbf33cdafa811e              # double 0.43672105202314693
	.quad	0x3fe61d71a239a4c0              # double 0.69109422382930319
	.quad	0x3fef877408482daa              # double 0.98528482072417956
	.quad	0x3fecb090edfaf86e              # double 0.89655348282373182
	.quad	0x3fb34749adbb23b8              # double 0.075306515612409863
	.quad	0x3feb74c432927a84              # double 0.85800371053103718
	.quad	0x3fda912ba1a3628a              # double 0.41511050019247675
	.quad	0x3fee9936db796156              # double 0.95620291582148798
	.quad	0x3fa073e0676bb7a0              # double 0.032134068131070892
	.quad	0x3feba248cbd381fb              # double 0.86356010255627724
	.quad	0x3fefacbd6efbf357              # double 0.9898364226970483
	.quad	0x3faad19fe998af00              # double 0.052380559220493339
	.quad	0x3fe8c39033f5e7e6              # double 0.77387247227238443
	.quad	0x3feb5d7eb02d1380              # double 0.85516294869795217
	.quad	0x3f653ac22bcb6100              # double 0.0025914947894812856
	.quad	0x3fe30d8e65687c0b              # double 0.59540481382635002
	.quad	0x3fb4b91622e5d278              # double 0.080949195404011465
	.quad	0x3fdfd31289cbd9e4              # double 0.49725783783597266
	.quad	0x3fd376aaabe16486              # double 0.30411783967208128
	.quad	0x3fe79c4554537536              # double 0.73782602758334437
	.quad	0x3fe9368c9f33769b              # double 0.78790885061217197
	.quad	0x3fcd9c2b3298c724              # double 0.23132839174791642
	.quad	0x3feb8622f165f8d9              # double 0.86012408397780427
	.quad	0x3fe1f11d8fe506d7              # double 0.56068304161473292
	.quad	0x3fec56c31c681bde              # double 0.88559108303240541
	.quad	0x3fe45fa090834490              # double 0.6366732428088131
	.quad	0x3fe0fc8b2d7f33e0              # double 0.53082808385954294
	.quad	0x3fe569e8bb08fa6f              # double 0.66917835741317144
	.quad	0x3fe5ec9249e56385              # double 0.68512834961721636
	.quad	0x3feb1baf5cde4608              # double 0.84712951792079227
	.quad	0x3fe0b735a1e8ef55              # double 0.52236444113757818
	.quad	0x3fc7fd94ba481850              # double 0.18742617698461794
	.quad	0x3fd9704ad1f923b8              # double 0.39747877602763593
	.quad	0x3fc75de7ead49994              # double 0.18255328146296945
	.quad	0x3fd547ddd1e9b6b8              # double 0.33251138209639519
	.quad	0x3fe18ff8d748bca6              # double 0.54882471130067212
	.quad	0x3fe4698f8abd85e3              # double 0.63788582895011492
	.quad	0x3fc3091af142f2f8              # double 0.14871536999080326
	.quad	0x3f809513e4d56780              # double 0.0080968431672550079
	.quad	0x3fe9e63b4babe07e              # double 0.80935444621628938
	.quad	0x3fb73e337ef5de60              # double 0.090792864319035882
	.quad	0x3fe902d6cf56658a              # double 0.78159656997301963
	.quad	0x3fd7a0a0bb4a556e              # double 0.36917894640040216
	.quad	0x3fdb5afac6da8ee4              # double 0.42742795390425514
	.quad	0x3fec4d0079308ee6              # double 0.88439963979587044
	.quad	0x3fecb9b9732ad737              # double 0.89767143720266673
	.quad	0x3fd1d09729e77588              # double 0.27835635273171322
	.quad	0x3fd829c57cf27482              # double 0.37754952623237881
	.quad	0x3fe422250bcc26e3              # double 0.62916805557435074
	.quad	0x3fc372442ac4edf8              # double 0.15192463005392631
	.quad	0x3fbecdec63b8e330              # double 0.12032964167236737
	.quad	0x3fd2e8fef363eb52              # double 0.29547094124398143
	.quad	0x3fdba7fc5518f454              # double 0.43212803182888604
	.quad	0x3fd7281c660e4fba              # double 0.36182317701718214
	.quad	0x3fc9ed851255e694              # double 0.20256102938929088
	.quad	0x3fef5c3f8466431d              # double 0.98001075610418164
	.quad	0x3fe3eb8e25be2718              # double 0.62250430461537842
	.quad	0x3f884d46600c4940              # double 0.011866140180732843
	.quad	0x3fe57b1c06838565              # double 0.67127801201074233
	.quad	0x3fc14d6e3274c464              # double 0.13517549003293816
	.quad	0x3fe85637119983ae              # double 0.76052430570063279
	.quad	0x3fd70ff1c8562b10              # double 0.36034817279930653
	.quad	0x3fe30a5c22cc3cee              # double 0.59501463695951684
	.quad	0x3fdb7e59922ff266              # double 0.42958678508856563
	.quad	0x3fd7f62ea3abe5b0              # double 0.37440076812307677
	.quad	0x3fe9194f04896414              # double 0.78433943639822922
	.quad	0x3fd355d128f94c2c              # double 0.3021128559241244
	.quad	0x3fce3c3c45ec9438              # double 0.23621323980583653
	.quad	0x3fc394293c727bc8              # double 0.15295901729129313
	.quad	0x3fe0b931a5634617              # double 0.52260668089201345
	.quad	0x3fce02fdcb340430              # double 0.23446628973036487
	.quad	0x3fcfc773d87e3f08              # double 0.24827430792765193
	.quad	0x3fe004744064eda0              # double 0.50054371430399058
	.quad	0x3fca5a4d6235d8d4              # double 0.20588080687929866
	.quad	0x3fcc66c7528e8518              # double 0.22188655406083835
	.quad	0x3fa562a9a72d9df0              # double 0.04176836171864895
	.quad	0x3fd4baf905dfe7fe              # double 0.32391191075987524
	.quad	0x3feebf666ab5d080              # double 0.96086426584089679
	.quad	0x3fd8382293eccb9c              # double 0.37842621274756438
	.quad	0x3fa2c61a50765a30              # double 0.036667654344615719
	.quad	0x3fe8588b77087ba3              # double 0.76080868958148462
	.quad	0x3fd6e22528075c60              # double 0.35755280407960832
	.quad	0x3facf22ebc95f4a0              # double 0.056535206337664734
	.quad	0x3fe4b824b504c9b7              # double 0.64747844081130423
	.quad	0x3feac3edabb078a6              # double 0.83641704114031223
	.quad	0x3fd33cf604f8ed28              # double 0.30059576497633822
	.quad	0x3fd3e02392b41c8c              # double 0.31055535627860631
	.quad	0x3feadb56908bce01              # double 0.83927467567122005
	.quad	0x3fb180953e4db0a8              # double 0.068368270598230141
	.quad	0x3fb1f109e26bfcb8              # double 0.070084207323804715
	.quad	0x3fded37b43f1e176              # double 0.48165780673254888
	.quad	0x3f791866b0396900              # double 0.0061267863526046629
	.quad	0x3faa16c7f5aae590              # double 0.050955055941311334
	.quad	0x3fe9277d6a43db50              # double 0.78607054476638361
	.quad	0x3feef46b4123a6c1              # double 0.96733629915726038
	.quad	0x3fef85eaaa474d2d              # double 0.98509724862598135
	.quad	0x3f88bf1b4bf7fc80              # double 0.01208325696552337
	.quad	0x3fe34a349ed77af7              # double 0.6028082945229859
	.quad	0x3fe0b1c182017823              # double 0.52169871703859305
	.quad	0x3fced86c75b7d4fc              # double 0.24097972629503051
	.quad	0x3fe1bebb2b8dbb18              # double 0.55453260904855295
	.quad	0x3fed59693708004d              # double 0.91716442821781075
	.quad	0x3fd7bb1a95237ce8              # double 0.37079491199797454
	.quad	0x3fa42bc961180410              # double 0.039396565534851047
	.quad	0x3fe46f6eff962207              # double 0.63860273284177616
	.quad	0x3fe6badda439bb98              # double 0.71031076503082868
	.quad	0x3fdca10cce2fb7a6              # double 0.44732971320524439
	.quad	0x3fc78ac2514a86cc              # double 0.18392209023755013
	.quad	0x3fcfc96d2f7e3024              # double 0.24833454913130126
	.quad	0x3fc002b401a05328              # double 0.12508249358565959
	.quad	0x3fed7e976a042a16              # double 0.92170305925657448
	.quad	0x3fe0cffee76a30c9              # double 0.52539010236935113
	.quad	0x3fef7ba7416dec0a              # double 0.98384440211464264
	.quad	0x3feaf6a230d2989d              # double 0.8426066354338847
	.quad	0x3fd0b0335eab2170              # double 0.26075443501442575
	.quad	0x3fe2de91529e2b34              # double 0.5896689046506709
	.quad	0x3fbf2d20921e4c38              # double 0.12178233687727491
	.quad	0x3febfd3bf6d69f5c              # double 0.87466238222712489
	.quad	0x3fd32e50679cd39a              # double 0.29970178717058504
	.quad	0x3fea852e7e0ab08e              # double 0.82875752084284371
	.quad	0x3fe2e32a441b7af4              # double 0.59023011495796007
	.quad	0x3fcfbcac44c4aa48              # double 0.24794534070800212
	.quad	0x3fdaf3e6c132b4e2              # double 0.4211365591716697
	.quad	0x3fe2ac5c69648e41              # double 0.58354015907793422
	.quad	0x3fa55189891faa00              # double 0.041637704838496603
	.quad	0x3fe36f75e77d53d5              # double 0.60735602581791659
	.quad	0x3fe7f7767b80a289              # double 0.74895786401346343
	.quad	0x3fd221eb7a8a0bba              # double 0.28332030264590069
	.quad	0x3feaf00f356b56a2              # double 0.84180412705855567
	.quad	0x3fd300722e37ff4c              # double 0.29690222276257283
	.quad	0x3fd8d3a865e0f10a              # double 0.38791856717195172
	.quad	0x3fe441b8d1236841              # double 0.63302269790006715
	.quad	0x3fd24eeb4bc1a54a              # double 0.28606684110726077
	.quad	0x3fe8758f15d30ea1              # double 0.76435045492731402
	.quad	0x3fe0bd223ec852f3              # double 0.52308761846742724
	.quad	0x3fef5e78e310f77e              # double 0.98028225277788272
	.quad	0x3fdf3269cafa2534              # double 0.48745198080048913
	.quad	0x3fe338431c010c4a              # double 0.60061793775128902
	.quad	0x3fd269df506d3f20              # double 0.28771193365263237
	.quad	0x3fdc10bdafc0f9aa              # double 0.43852178729494062
	.quad	0x3fd7a15f4829be14              # double 0.36922437712834832
	.quad	0x3fd4325a6ad92612              # double 0.31557331499479446
	.quad	0x3febef6354aa11ed              # double 0.87297216926577692
	.quad	0x3fc02ad6f966e2f8              # double 0.12630736520602404
	.quad	0x3fe3e233a37e433f              # double 0.62136251384990959
	.quad	0x3fc8f6b6e9cace00              # double 0.19502912917742776
	.quad	0x3fe72afc7c00300f              # double 0.7239973470582316
	.quad	0x3febee62449114d3              # double 0.87284959213197977
	.quad	0x3f9467687bb10560              # double 0.019925720738915742
	.quad	0x3fe63c232f41d3f5              # double 0.69484099607382055
	.quad	0x3fb164645030e890              # double 0.067938108041661005
	.quad	0x3fc4fecf3b210ad0              # double 0.16402616870080644
	.quad	0x3fa5b1b9d7c2c260              # double 0.042371566379533432
	.quad	0x3fe413221c57ae06              # double 0.62733560119289744
	.quad	0x3fd7f5ea2fa24c56              # double 0.37438444759135814
	.quad	0x3fecb6d3a28f25e0              # double 0.89731771230543344
	.quad	0x3f9be17f3b307660              # double 0.027227390277508312
	.quad	0x3fe698753c8b8136              # double 0.70611059022124922
	.quad	0x3fedee26ac6d768a              # double 0.93532117535842585
	.quad	0x3fbbc9e98d750608              # double 0.10854968741934823
	.quad	0x3fe0224c7f1df24b              # double 0.50418686702284654
	.quad	0x3fd25cc892598b0c              # double 0.2869130543896723
	.quad	0x3fe3b3fbfaaac406              # double 0.61572073896798041
	.quad	0x3fef7e0cc32965ca              # double 0.98413694493790982
	.quad	0x3fdf2d8bea3923f0              # double 0.48715494035110307
	.quad	0x3fd5664b0b5e5d4c              # double 0.33436847791877677
	.quad	0x3fe4b22f289ac525              # double 0.64675100260334217
	.quad	0x3fe23736479b888e              # double 0.56923974977350311
	.quad	0x3feb8a231423943b              # double 0.86061242993731157
	.quad	0x3f9491b18ee78220              # double 0.020087026927173679
	.quad	0x3fefdffdcb36ee5b              # double 0.99609269800516686
	.quad	0x3fbc8303077f8840              # double 0.11137408192692622
	.quad	0x3fcba8cb32e22774              # double 0.21608867630521511
	.quad	0x3fcfbc79e791d5f4              # double 0.2479393368445667
	.quad	0x3fece5ec1d0ab10f              # double 0.90306668922633715
	.quad	0x3fea24d14cc7aba0              # double 0.81699433322988923
	.quad	0x3fb79321d69af338              # double 0.0920888089121491
	.quad	0x3fe0ca652e99cf74              # double 0.52470645047877307
	.quad	0x3fe9ba90095589fe              # double 0.80402376006196596
	.quad	0x3fe1646d0338ed76              # double 0.54350901250238226
	.quad	0x3fe79882b7985f68              # double 0.73736701830328588
	.quad	0x3fd65b5116c18eb4              # double 0.34932353231691171
	.quad	0x3fe37894519493df              # double 0.60846916135471563
	.quad	0x3fec7203c3715e2d              # double 0.88891781017713856
	.quad	0x3fe8da80e8e5c8be              # double 0.77667279708682435
	.quad	0x3fd47c88d8526744              # double 0.32010098576721568
	.quad	0x3fcf6c5ddcfbd5e4              # double 0.24549458780499755
	.quad	0x3feac2f6430ccbe8              # double 0.83629906745624982
	.quad	0x3fe25f365e6d8b42              # double 0.57412260477972432
	.quad	0x3feb71cfb769bba9              # double 0.85764299223761953
	.quad	0x3fd6c4f4d77d51c0              # double 0.35577126544856341
	.quad	0x3fe7446be7e262a8              # double 0.72710223474412761
	.quad	0x3fd39a0a5555ad58              # double 0.30627687772240142
	.quad	0x3fe1c1c491883323              # double 0.55490330147003808
	.quad	0x3fe172b4196f494d              # double 0.54525189368931992
	.quad	0x3fc8f46daeaec158              # double 0.19495936421800297
	.quad	0x3fd4d624b04e50f0              # double 0.32557027070403333
	.quad	0x3fcbfa32dad5443c              # double 0.21857295689781775
	.quad	0x3fe185b2e3f75ac8              # double 0.54757065319685072
	.quad	0x3fd2b73623853424              # double 0.29243234127790374
	.quad	0x3fdbac2bc115344a              # double 0.4323834786962989
	.quad	0x3feb325218173de0              # double 0.84989266114456185
	.quad	0x3fea17c996bb000f              # double 0.81540374221367695
	.quad	0x3fe1a2ea3a21f943              # double 0.55113707880062923
	.quad	0x3fec4fca30bb9d2f              # double 0.88473996656549569
	.quad	0x3fc9b370456e1100              # double 0.20078853025564314
	.quad	0x3fe79d290bc48fcb              # double 0.7379346113052575
	.quad	0x3fe03f74e77e477f              # double 0.50774617398768374
	.quad	0x3feed091ec591d2a              # double 0.96296020662058379
	.quad	0x3fe513c1626f20c3              # double 0.65866154885682027
	.quad	0x3fe8c7fb909b096c              # double 0.77441194766315168
	.quad	0x3fc0f600ceb43860              # double 0.13250742047279385
	.quad	0x3fe373cdab355293              # double 0.60788615645522481
	.quad	0x3fea5e2f3a2745c8              # double 0.82399712904059985
	.quad	0x3fe8c5bfb332d4c2              # double 0.77413926124304333
	.quad	0x3fb741607c8b0fb0              # double 0.090841322332436247
	.quad	0x3fdb73611332fec6              # double 0.42891718745157126
	.quad	0x3fd29ef7552bd7e6              # double 0.29095252339845812
	.quad	0x3fed79c8ee4fa123              # double 0.92111631913306657
	.quad	0x3fecc6930045582a              # double 0.89924001744180271
	.quad	0x3fe97a2b76cdbc73              # double 0.7961633034118577
	.quad	0x3fe8483a766b820e              # double 0.75881693962952723
	.quad	0x3f99a9d5ed560d60              # double 0.025061934100006567
	.quad	0x3fbc5803b2e09a48              # double 0.11071799389956383
	.quad	0x3fecf9e30fe58d4d              # double 0.90550377945729965
	.quad	0x3fa59bd5cafc1800              # double 0.042204552677546303
	.quad	0x3fb0c20679f778a8              # double 0.065460591103575383
	.quad	0x3feed13d11e404af              # double 0.96304181570316937
	.quad	0x3fbc29c451bf3088              # double 0.11001231189510652
	.quad	0x3fe7846c7906a0a8              # double 0.73491500509137087
	.quad	0x3fe4df0e1172bc22              # double 0.6522283879074886
	.quad	0x3fb5450e93cec850              # double 0.083084975324511534
	.quad	0x3fe8a8c9de5f3e30              # double 0.77060407096900541
	.quad	0x3fd2e56c5d74a1c8              # double 0.295252887025097
	.quad	0x3fe329617a5258f7              # double 0.59880136385871097
	.quad	0x3fb898ad99678ff0              # double 0.096079683258323944
	.quad	0x3fd68d3b9422be32              # double 0.35237016168955215
	.quad	0x3fd1d72f585b334e              # double 0.27875884655513949
	.quad	0x3fd97e1386fd899a              # double 0.398320085360092
	.quad	0x3fe1070e56ce61dc              # double 0.53211132959682628
	.quad	0x3fce58deb4849640              # double 0.23708709539748618
	.quad	0x3fe9ea5a7b1fa04f              # double 0.80985759780470257
	.quad	0x3feb1b050a191081              # double 0.84704830143211052
	.quad	0x3fe6a6723b6d39dd              # double 0.70781814200182291
	.quad	0x3fe41cb374eec545              # double 0.62850354040544032
	.quad	0x3fd79e8ffaf3b1b2              # double 0.36905288226150923
	.quad	0x3febdfa099d146cd              # double 0.87104826014020775
	.quad	0x3fe73486f79abba0              # double 0.72516201362838117
	.quad	0x3fc06f6e4e71f958              # double 0.12840060072262349
	.quad	0x3fd6c9b63eac5e54              # double 0.35606151695671895
	.quad	0x3fd675d797ff862e              # double 0.35094251483505701
	.quad	0x3fd2606b7cb1e8a8              # double 0.28713500191919161
	.quad	0x3fcc89217065508c              # double 0.2229348944480346
	.quad	0x3fd5febd460b1e16              # double 0.34367305603197573
	.quad	0x3fd03bc03e0b8b7c              # double 0.25364690836993709
	.quad	0x3fc17c6c24e728ac              # double 0.13660957147505337
	.quad	0x3fe299eb2eb90e99              # double 0.58128890157282165
	.quad	0x3fe1fab66d7a8b6b              # double 0.56185456640774356
	.quad	0x3fd688a751c042ee              # double 0.35209067328928156
	.quad	0x3fbc0ef58525a950              # double 0.1096032571855734
	.quad	0x3fd34cae22e8ff26              # double 0.30155518922036817
	.quad	0x3fd40420e8efbb08              # double 0.31275198695850337
	.quad	0x3fb2477f038cbb20              # double 0.071403444639809965
	.quad	0x3fd649aa2948aa20              # double 0.34824613601327492
	.quad	0x3fe144e9de42b622              # double 0.53966229830047419
	.quad	0x3fe241f4ad35f663              # double 0.57055124120934086
	.quad	0x3fceeb3f0efccb30              # double 0.24155414802370379
	.quad	0x3fc5bcfbd64c3094              # double 0.16982982600928109
	.quad	0x3fecaa92cb0d1103              # double 0.8958219495621339
	.quad	0x3fe8fa238d466429              # double 0.78053453057066691
	.quad	0x3fde8a392285afe2              # double 0.47718647357282695
	.quad	0x3feffff1c5908bb1              # double 0.99999321543542951
	.quad	0x3fd38a6ca7a04c22              # double 0.30532375688307145
	.quad	0x3fd048c27524ae86              # double 0.2544408935525343
	.quad	0x3fe11c8520dcd4d4              # double 0.53473144930344541
	.quad	0x3fe30a73580a099c              # double 0.59502570338399918
	.quad	0x3fd96ee60b3792e6              # double 0.39739371390741807
	.quad	0x3f6d532bc436e500              # double 0.0035796980680201651
	.quad	0x3fee071a87ec4c09              # double 0.93836714312999547
	.quad	0x3fe7ed15cfdcdd27              # double 0.74769106481736436
	.quad	0x3fc6b1b5391fd36c              # double 0.17729821481011798
	.quad	0x3fc3dc58177bdef8              # double 0.15516186854051006
	.quad	0x3fd486d164c74ebc              # double 0.32072863427786635
	.quad	0x3fe188d27588c871              # double 0.54795191722793224
	.quad	0x3fe8d418782fed79              # double 0.77589057420793417
	.quad	0x3fea4cb8887cda2c              # double 0.82186533601526923
	.quad	0x3fef62335cd3c996              # double 0.98073738222437856
	.quad	0x3fe467de9203e948              # double 0.63767937201127101
	.quad	0x3fe67f8fb20bb51f              # double 0.70307144903714291
	.quad	0x3fee5f148a774903              # double 0.94910647434360873
	.quad	0x3fec543903da8dba              # double 0.8852810931461399
	.quad	0x3fe181cf18a4f68c              # double 0.54709582150799596
	.quad	0x3fd8f4b2a75e7baa              # double 0.38993517250667742
	.quad	0x3fd5abfbd7d884ca              # double 0.3386220558041485
	.quad	0x3fea1282e1d52653              # double 0.81475967510159319
	.quad	0x3fe712e81d072768              # double 0.72105794591446415
	.quad	0x3fd28956269de27e              # double 0.28963235636869189
	.quad	0x3fda2933383727d0              # double 0.40876465310850296
	.quad	0x3fe821d4a5f2bfd3              # double 0.7541297188927224
	.quad	0x3fee06d547abb11a              # double 0.93833412168672514
	.quad	0x3fe20d7dc84e3dda              # double 0.56414689180558786
	.quad	0x3fe2f61674ca8f5e              # double 0.59254000483313596
	.quad	0x3fed6590ff3d2563              # double 0.91864824153269031
	.quad	0x3fb126c6cfc40668              # double 0.066997934078267485
	.quad	0x3fc24610064afddc              # double 0.14276314074775953
	.quad	0x3fee29d13bd27aaa              # double 0.94260465320606568
	.quad	0x3fee77355106f34c              # double 0.95205179048171251
	.quad	0x3fc6b8f8276aa86c              # double 0.17751981663360838
	.quad	0x3fb714866f29f8f8              # double 0.090156938686025145
	.quad	0x3fd82349d591f9ea              # double 0.37715383392779123
	.quad	0x3f9f7dcd0181f500              # double 0.030753329484004333
	.quad	0x3fe08d1cf5864763              # double 0.5172257228279985
	.quad	0x3faadf6a8b151f10              # double 0.052485780217976452
	.quad	0x3fe29d4b9be868c3              # double 0.58170109225036304
	.quad	0x3fcb920f3e32fe48              # double 0.21539488350934932
	.quad	0x3fcf28beb4b4d644              # double 0.24343093703798691
	.quad	0x3fd714262a40619c              # double 0.36060480238077175
	.quad	0x3fe399460621b0c5              # double 0.61246014783457581
	.quad	0x3fe7f0eaa2772e9c              # double 0.74815875751069738
	.quad	0x3fe900fbcb652d50              # double 0.78137006497983386
	.quad	0x3fbd3ac1954da408              # double 0.1141777982244464
	.quad	0x3fd843970b9e84c6              # double 0.37912536749543013
	.quad	0x3fa29c5b80acafe0              # double 0.036349162537902435
	.quad	0x3fc4b6994119b414              # double 0.16182246855478921
	.quad	0x3fe8afd717bdd2f9              # double 0.7714648688985043
	.quad	0x3fe8c447b4d0c154              # double 0.77395997348325318
	.quad	0x3fbebefc2fb9e218              # double 0.12010170140445842
	.quad	0x3fd5f709e0add78a              # double 0.34320303860965196
	.quad	0x3fe8386e2bb523e4              # double 0.75688847099911216
	.quad	0x3f79b1115b4d7980              # double 0.0062723806375671876
	.quad	0x3fe3db242039d168              # double 0.62050062460052136
	.quad	0x3fe8559726d2be2a              # double 0.76044805128726023
	.quad	0x3fbf9ed93f917378              # double 0.12351758768040877
	.quad	0x3fe37b67b90d9872              # double 0.60881410735306773
	.quad	0x3f993017f065ec20              # double 0.02459752468847054
	.quad	0x3f980c82b9f8b440              # double 0.023485224343108735
	.quad	0x3fdb158395657a04              # double 0.42318811025134573
	.quad	0x3fe4f5b73ef108dc              # double 0.65499460500020801
	.quad	0x3fc34d230b5f0328              # double 0.15079153113585986
	.quad	0x3fede30e2ab8f8c7              # double 0.93396671623465799
	.quad	0x3fe4ddc2221e611d              # double 0.65207010902216533
	.quad	0x3fe4838bdc5228f6              # double 0.64105790168221577
	.quad	0x3fe4b41de073942e              # double 0.64698690260104796
	.quad	0x3fb89bc381c9bdc8              # double 0.096126765429054406
	.quad	0x3fd14483e9195840              # double 0.26980684054922577
	.quad	0x3fc694b34b31ce7c              # double 0.17641297504052378
	.quad	0x3fc79a077706225c              # double 0.18438809692112812
	.quad	0x3fd7a6c6fb287678              # double 0.36955427672533103
	.quad	0x3fe334214dd31195              # double 0.60011353683562396
	.quad	0x3fd7b578cfabf3e8              # double 0.37045116692007563
	.quad	0x3fe39093cb22382b              # double 0.6113985984282001
	.quad	0x3fd051814e482c34              # double 0.25497467655867756
	.quad	0x3fe28cf1fd7553a1              # double 0.57970523360801363
	.quad	0x3fee6db2b7ed5248              # double 0.95089088366746299
	.quad	0x3fdaafabf23e4e6c              # double 0.41697214752750855
	.quad	0x3fe5ee7dbf85b66a              # double 0.68536269575788578
	.quad	0x3fde30f9aca6aac6              # double 0.47173921452001044
	.quad	0x3feedf816aaf6f8b              # double 0.96478339039775684
	.quad	0x3fefed274d475f39              # double 0.99769940465464579
	.quad	0x3fa68dfbedbfdbb0              # double 0.044052002689503822
	.quad	0x3feeaf5482f827ec              # double 0.95890260295823059
	.quad	0x3fdb522448f73b98              # double 0.42688853383600067
	.quad	0x3feca241d1f77ef6              # double 0.89480677613388937
	.quad	0x3fde5cb7335894fc              # double 0.47440891279468622
	.quad	0x3fc6eb58b2da08e4              # double 0.17905720456116747
	.quad	0x3fea1e10ccac3bd2              # double 0.8161701200023066
	.quad	0x3feb8f44c0e23caa              # double 0.86123883888821706
	.quad	0x3fdf36b3254d56c2              # double 0.48771361010345171
	.quad	0x3fd6fcb696a42708              # double 0.35917439185196587
	.quad	0x3fef3de4d665d0aa              # double 0.97630540728143456
	.quad	0x3fd6dd959e900ef8              # double 0.35727444157258459
	.quad	0x3fdeccae021c7c16              # double 0.48124265867403559
	.quad	0x3f9d440bcfb7e0e0              # double 0.028579887917630553
	.quad	0x3fe6a4ffaa96ca01              # double 0.7076414424721521
	.quad	0x3fe5ea016cc5f671              # double 0.68481513256820226
	.quad	0x3fa1f404e27015b0              # double 0.035064842835747512
	.quad	0x3fedce4326015d3f              # double 0.93142850325504145
	.quad	0x3feb2bd7655d86bf              # double 0.84910173223416752
	.quad	0x3fdb64e5bdbaf792              # double 0.4280332901797631
	.quad	0x3fc3a8845b5a2e94              # double 0.15358023129043785
	.quad	0x3fbd6bc547d7c6b8              # double 0.1149256992719313
	.quad	0x3febef0dfb26165b              # double 0.87293147137161087
	.quad	0x3fd4c67fbfb9f520              # double 0.32461541865616717
	.quad	0x3fdeb024160abffe              # double 0.47950079109705246
	.quad	0x3fcb324f0e4266a4              # double 0.21247280308016514
	.quad	0x3fe5a2713fab423b              # double 0.67607939181659249
	.quad	0x3fe201fe0b61aa76              # double 0.56274320815039292
	.quad	0x3fbafc3f7702be28              # double 0.105411497645712
	.quad	0x3feeecbe3b328bd3              # double 0.96639930307389432
	.quad	0x3fd42e3581a3c868              # double 0.315320374108643
	.quad	0x3fd865c893cceae0              # double 0.38121237214697423
	.quad	0x3fe173e3eded121d              # double 0.54539677114422924
	.quad	0x3fcd3cc9e9c85f68              # double 0.22841762461825543
	.quad	0x3fe3e44da881af5d              # double 0.62161906157914937
	.quad	0x3febdce565f4ecc4              # double 0.87071485436845152
	.quad	0x3fde72af9a63a176              # double 0.47574987484997366
	.quad	0x3fcd277b00c8d1e0              # double 0.22776734865477888
	.quad	0x3feefe1c96a3c03a              # double 0.96851949140364657
	.quad	0x3fe3f2082833e76a              # double 0.62329490520572262
	.quad	0x3fef28d3f37bf63c              # double 0.97373387866509331
	.quad	0x3fd4104342552046              # double 0.31349259832177656
	.quad	0x3fd9ee3da0168140              # double 0.40516605981430942
	.quad	0x3fe3fe4022325e37              # double 0.6247864406495357
	.quad	0x3fdb764a39748238              # double 0.42909484492159633
	.quad	0x3fe2b781e875e743              # double 0.58490081217244272
	.quad	0x3fc753fd97ab2264              # double 0.18225068956077728
	.quad	0x3fd9c0138a3d8cfa              # double 0.40234840869943833
	.quad	0x3fec7cb29ef70ec5              # double 0.89022189185967504
	.quad	0x3fb6056e0a002ef0              # double 0.086020352784710985
	.quad	0x3feb9752215bdb15              # double 0.86222177997010141
	.quad	0x3fe57f55894c87b0              # double 0.67179371658516196
	.quad	0x3fe1488734330d99              # double 0.54010353274536549
	.quad	0x3feca0883640666d              # double 0.89459620090492609
	.quad	0x3fe73822dd288aed              # double 0.7256025619029437
	.quad	0x3fd8b399067c32d4              # double 0.38596177705111967
	.quad	0x3fef008f1e8e121d              # double 0.96881824462667831
	.quad	0x3fe413e7e9e289e5              # double 0.62742992096565031
	.quad	0x3fef82bf2169caf1              # double 0.98471027875925021
	.quad	0x3fe10be3a323d8e1              # double 0.53270131934439402
	.quad	0x3fbda1d5aec4cbb8              # double 0.11575065151991637
	.quad	0x3fc41075aa326664              # double 0.15675230799097328
	.quad	0x3fc9d402c3e31514              # double 0.20178255619809049
	.quad	0x3fe9c0fca126c47d              # double 0.80480796313180714
	.quad	0x3fe08aa5dec13385              # double 0.51692479616905074
	.quad	0x3fee64cd8d50e6a2              # double 0.94980504608902927
	.quad	0x3fe8db448b5062e2              # double 0.77676608285682058
	.quad	0x3f5ab5b505d27200              # double 0.00163023641588389
	.quad	0x3fb3c1949b1ffc70              # double 0.077172553894330198
	.quad	0x3feafe56eeb06527              # double 0.84354731196359445
	.quad	0x3f5c6f95c3a80800              # double 0.0017355883161376262
	.quad	0x3fed74b401089130              # double 0.92049598886345585
	.quad	0x3fc79f2a8d137a90              # double 0.1845448674057093
	.quad	0x3fb466d3e0279858              # double 0.079694025254498313
	.quad	0x3feda6934e00117e              # double 0.92658391222407466
	.quad	0x3fdb5437df78b1ee              # double 0.42701527427087071
	.quad	0x3fc191dfaaeed8a8              # double 0.13726421209657258
	.quad	0x3fed66b6a6244e1e              # double 0.91878826570104244
	.quad	0x3fb7f6fc3b8a0b20              # double 0.093612446342416166
	.quad	0x3fed1a86dd57cade              # double 0.90948813658755134
	.quad	0x3fdc64256763eebe              # double 0.44361243340220458
	.quad	0x3fe6808097a075f0              # double 0.70318631758317274
	.quad	0x3fee06c5b0f036cc              # double 0.93832668836849952
	.quad	0x3fe022653f27cbc7              # double 0.50419866881417696
	.quad	0x3fedbb8d1167ded8              # double 0.92914441489753141
	.quad	0x3fc740d60c3b7588              # double 0.1816661414840548
	.quad	0x3fde1fc49b76e448              # double 0.47068896467277854
	.quad	0x3fe265c4a470d6b6              # double 0.57492286794032199
	.quad	0x3fc6b9eca9a8d0bc              # double 0.17754896434928991
	.quad	0x3fe76b9c69ea1b50              # double 0.73188610731527071
	.quad	0x3fdd5a705276294c              # double 0.45864494374167886
	.quad	0x3fba85cf27d202d0              # double 0.10360426637817999
	.quad	0x3fc6c9f103c7124c              # double 0.1780377644009995
	.quad	0x3fc1baad57c02af8              # double 0.13850943360042556
	.quad	0x3fe7ae547204689f              # double 0.74003050106991342
	.quad	0x3fe65d6572599fe4              # double 0.69890091260913012
	.quad	0x3fee361f9aecdc03              # double 0.94410686739763638
	.quad	0x3fed49ec5a0f0b22              # double 0.91527383412935515
	.quad	0x3fe934a10046b500              # double 0.78767442754693207
	.quad	0x3febc80c6b94a2f9              # double 0.86816998493040309
	.quad	0x3fe7d37ae5b141cd              # double 0.74456543790625462
	.quad	0x3fad19684f5cbe30              # double 0.056834468543794592
	.quad	0x3fec207af6714c6f              # double 0.87896488316836308
	.quad	0x3feedf5c4a9b671f              # double 0.96476568767250003
	.quad	0x3fe3af6d57b16035              # double 0.61516444327845099
	.quad	0x3fe5f2942d19f2b0              # double 0.68586167153224231
	.quad	0x3fe1ad0cb9da8333              # double 0.55237423228763871
	.quad	0x3fe86d8d07f640a0              # double 0.76337291293204501
	.quad	0x3fc96e1a5d957410              # double 0.19867257661363213
	.quad	0x3fe3f3bffdf30cab              # double 0.6235046348523573
	.quad	0x3fc64f0d10819750              # double 0.17428744607894453
	.quad	0x3fe9c8f403839157              # double 0.80578041731181826
	.quad	0x3fe04f1b0f836e94              # double 0.50965645818674199
	.quad	0x3fcaef0ddb4276ac              # double 0.2104203529933576
	.quad	0x3feb1f0c3c2fe6ed              # double 0.8475400138406407
	.quad	0x3fef799c51d42548              # double 0.98359504682699938
	.quad	0x3fefb9f8f51bb4e9              # double 0.99145171997738856
	.quad	0x3fe724d85bce944e              # double 0.7232476990799428
	.quad	0x3fdb51cffb78300e              # double 0.42686843450133061
	.quad	0x3fca60988114c6d8              # double 0.20607286742011044
	.quad	0x3fee66c7c282ec5c              # double 0.9500464247752336
	.quad	0x3fe982ae20ee35d8              # double 0.79720217162838036
	.quad	0x3fdb46fd0d3e7420              # double 0.42620779317241109
	.quad	0x3fc82d5ddcae054c              # double 0.18888448024157822
	.quad	0x3febff01b5875771              # double 0.87487874464816973
	.quad	0x3fe7a6a7f0b2d34f              # double 0.73909375201638194
	.quad	0x3fe9e28888193319              # double 0.80890299398160714
	.quad	0x3f99964a9560ac20              # double 0.024987378470694321
	.quad	0x3fe824a476b96242              # double 0.75447295368491774
	.quad	0x3fedf9e904e6cd8a              # double 0.93675662000025395
	.quad	0x3fe8a69246218b07              # double 0.7703334207293161
	.quad	0x3fe81271ed498026              # double 0.75225159020556442
	.quad	0x3fe59ec1cffa5aaa              # double 0.67562952633564533
	.quad	0x3fea01f555c1a580              # double 0.81273905515006106
	.quad	0x3fc5b0e3b89b49f0              # double 0.16946074022287361
	.quad	0x3fe8654b38044e89              # double 0.76236496868882953
	.quad	0x3fa5073a337002c0              # double 0.041070765284535238
	.quad	0x3fe90ed8535188c6              # double 0.78306213639395916
	.quad	0x3fdd6154d989872c              # double 0.45906563991421723
	.quad	0x3fe55354f2da6436              # double 0.6664223426079221
	.quad	0x3fef49a475fe1315              # double 0.97773955388456335
	.quad	0x3fedf70555d0ce04              # double 0.9364039112173832
	.quad	0x3fe95e334ff4c551              # double 0.79274907699997688
	.quad	0x3fe89a756a80406e              # double 0.76885481644604936
	.quad	0x3fdca6a8e00e2196              # double 0.44767209892645476
	.quad	0x3fe3b0fca5437a7a              # double 0.61535484579128696
	.quad	0x3fd48ffe2200c5aa              # double 0.32128861733061831
	.quad	0x3fe0f036e661f679              # double 0.52932305332770035
	.quad	0x3fc4abc509db1a80              # double 0.16149199467891506
	.quad	0x3fc10a18218e5778              # double 0.1331205524299397
	.quad	0x3fef4df8cc22cf44              # double 0.97826804991061822
	.quad	0x3fee69f8c9b8997f              # double 0.95043601416254819
	.quad	0x3fdebdeab18649cc              # double 0.48034159981139335
	.quad	0x3fecc47f35352bb0              # double 0.89898643867615213
	.quad	0x3feff92c4a25fb5e              # double 0.9991666267595567
	.quad	0x3fddd37eab761262              # double 0.46603361839541979
	.quad	0x3fb60625e023ca70              # double 0.086031310292847384
	.quad	0x3fdafbf55fa48340              # double 0.42162832584476817
	.quad	0x3fd8a72c96803902              # double 0.38520350167608808
	.quad	0x3febdd3bcdb992b3              # double 0.87075605564731118
	.quad	0x3fae2bd58cb278d0              # double 0.058928178238817019
	.quad	0x3fea98d4148ea031              # double 0.83115581526818094
	.quad	0x3fec26f1a5c4dc50              # double 0.87975389839892593
	.quad	0x3fb4c86fcc05fc60              # double 0.081183421430965463
	.quad	0x3fd7d6bf07d0e82e              # double 0.37248206866536548
	.quad	0x3fdb560c73bd086a              # double 0.42712699225024287
	.quad	0x3fe84d598258d27c              # double 0.75944209535971607
	.quad	0x3fcd5646ef0cb2e4              # double 0.22919546768516519
	.quad	0x3fe54dd034733426              # double 0.66574869388717128
	.quad	0x3fc76101c20e7fdc              # double 0.18264791465207864
	.quad	0x3fce1d2db15089c0              # double 0.23526545675220056
	.quad	0x3fe0797190260483              # double 0.51482465890889306
	.quad	0x3fd6cde9e0676ec0              # double 0.35631796755272305
	.quad	0x3fe64b6cd7a19e16              # double 0.69670717349521527
	.quad	0x3fcd54404c17f23c              # double 0.22913364139084702
	.quad	0x3fee5d940b04fb8d              # double 0.94892313148726404
	.quad	0x3feb14cacbb65ba6              # double 0.84628810679975142
	.quad	0x3feb9b79a1ea0c15              # double 0.86272889732242908
	.quad	0x3fe9a924d67042cd              # double 0.80189744837306309
	.quad	0x3fd1eceaba4d5d00              # double 0.28008526032995462
	.quad	0x3fea562c50c909bf              # double 0.82301917818431736
	.quad	0x3fc358144077603c              # double 0.15112546108025693
	.quad	0x3fd1ee84032e87de              # double 0.28018284140318694
	.quad	0x3fd35edad10dab38              # double 0.30266447463388912
	.quad	0x3fc02040f4c770fc              # double 0.12598430587866705
	.quad	0x3fc5a4e968d3a188              # double 0.16909520739069372
	.quad	0x3fd5076077b101e2              # double 0.32857524574867913
	.quad	0x3fd4313af8d97cfc              # double 0.31550478269305393
	.quad	0x3fe39b815cfe0dd8              # double 0.61273258364274863
	.quad	0x3fdd54994388282e              # double 0.45828849406155114
	.quad	0x3fdf03cc8dbc4782              # double 0.48460687486032594
	.quad	0x3fd21b303aa6d666              # double 0.28290944793420747
	.quad	0x3fc65f1c774a5d9c              # double 0.17477756333094596
	.quad	0x3f944715112990c0              # double 0.019802407429225566
	.quad	0x3fea921d33eaa7c6              # double 0.83033619060483299
	.quad	0x3fe861c0e137d834              # double 0.7619327925483561
	.quad	0x3feb702764f5d2e8              # double 0.85744065970228878
	.quad	0x3fe9f1d873498dad              # double 0.81077215687803561
	.quad	0x3fb674c5398d3028              # double 0.087719275046027279
	.quad	0x3feaa6cd60914634              # double 0.83286160336337511
	.quad	0x3fe83a8efe4a358e              # double 0.75714826265327573
	.quad	0x3fc4a2a58d446ac4              # double 0.16121358297171728
	.quad	0x3fedc90c23419150              # double 0.93079192052804594
	.quad	0x3fc847a10eaf359c              # double 0.18968594758045476
	.quad	0x3fe4062f51179b58              # double 0.62575498426745479
	.quad	0x3fe87e9f3b4e9e51              # double 0.76545678695124242
	.quad	0x3f9d17f9a7ddfc60              # double 0.028411770697399752
	.quad	0x3fbc07bd39d1a3c0              # double 0.10949309026331289
	.quad	0x3fd8c2bebdcab43e              # double 0.38688629659992901
	.quad	0x3fc462200f307118              # double 0.15924454442655001
	.quad	0x3feaa1ff870c3ab7              # double 0.83227516533391721
	.quad	0x3fe16f09e0d2d2e9              # double 0.54480451498838278
	.quad	0x3fe1c95ac9ce3665              # double 0.55582942404880653
	.quad	0x3feb971f91705460              # double 0.86219767004025626
	.quad	0x3fd63b4265d0c30c              # double 0.34736690466802211
	.quad	0x3fdd1ec124ca5572              # double 0.45500210373696526
	.quad	0x3fdb55533ee544b8              # double 0.42708283559938875
	.quad	0x3fe90b5af258e811              # double 0.78263614018874439
	.quad	0x3fe51512ad4fef6a              # double 0.65882238245056368
	.quad	0x3fe0824616e78b29              # double 0.51590256188896888
	.quad	0x3fe32228ff2ea5e0              # double 0.59791993942524968
	.quad	0x3fea2ee7db1674bb              # double 0.81822579184122135
	.quad	0x3fee981c94f7be3a              # double 0.95606831641447987
	.quad	0x3fe7ee04fd35fd7a              # double 0.74780511336568556
	.quad	0x3fe62ef18f14d8df              # double 0.69323041864006629
	.quad	0x3fcfe9e7e6ad5fa8              # double 0.24932574046647216
	.quad	0x3fedaabac106893c              # double 0.92709100437449576
	.quad	0x3fe04807d2405ee5              # double 0.50879279198394711
	.quad	0x3fba8b3da49fa828              # double 0.10368714589245143
	.quad	0x3fe5f606d80573a2              # double 0.68628256026896772
	.quad	0x3fe4b02e147d56ca              # double 0.64650634767414172
	.quad	0x3fe2937721b0b38b              # double 0.58050114231228755
	.quad	0x3fdce1937a77ef92              # double 0.45126807174505601
	.quad	0x3feb917ed3b4cf93              # double 0.86151067112813207
	.quad	0x3fe1c29e844f16af              # double 0.55500722734060115
	.quad	0x3feec745879a829a              # double 0.96182514653272055
	.quad	0x3fee5f0fc91dcf1b              # double 0.9491042068534371
	.quad	0x3fd66bf58ce24920              # double 0.35033930547901271
	.quad	0x3fe122cd10266336              # double 0.53549817232406016
	.quad	0x3fd46f004fc77712              # double 0.31927497664388327
	.quad	0x3fe66ee1dcd24b3f              # double 0.70103543404761826
	.quad	0x3fee8f8bb6c059b9              # double 0.95502267545344133
	.quad	0x3fe30339dc4f1e1e              # double 0.59414380101310704
	.quad	0x3fa170efab673430              # double 0.034064759896502372
	.quad	0x3fde32d709dcbf2a              # double 0.47185302699198195
	.quad	0x3fb474fe18ccfaa0              # double 0.079910164885385715
	.quad	0x3fe742d50241079c              # double 0.72690821113814108
	.quad	0x3fc665ffcf289774              # double 0.17498777022518264
	.quad	0x3fc197a68343ee54              # double 0.13744050416413478
	.quad	0x3feda0a684d603a1              # double 0.92586065239457949
	.quad	0x3fee55260cfb6872              # double 0.94789412055548739
	.quad	0x3fe9fe56e6cec753              # double 0.8122972972835022
	.quad	0x3fc8c9139139388c              # double 0.19363636580459731
	.quad	0x3fc4c3c57baf5680              # double 0.16222446955969261
	.quad	0x3fd5ccd189b8897a              # double 0.34062612962056671
	.quad	0x3f900a569f381b20              # double 0.015664437740294024
	.quad	0x3fd584967a18203a              # double 0.3362175171209888
	.quad	0x3fe44323b29bb2b7              # double 0.63319573292172648
	.quad	0x3fe1c1c2f3acecac              # double 0.554902530602154
	.quad	0x3fc87f21c1737a44              # double 0.19137975641111116
	.quad	0x3fd5bee0462462da              # double 0.33977515077417098
	.quad	0x3fc7c573d02c8968              # double 0.18571326889748296
	.quad	0x3fdf43d26c1483c4              # double 0.48851452402783146
	.quad	0x3fe48dad99b56ea3              # double 0.64229469319566979
	.quad	0x3fe0b51c7cac343a              # double 0.52210831022387727
	.quad	0x3fecd95950efecbe              # double 0.9015318470768745
	.quad	0x3fe063c450376609              # double 0.51217857043519743
	.quad	0x3feb7ebdfa35083a              # double 0.85922144764504726
	.quad	0x3fe18ed6301bb061              # double 0.54868611713528648
	.quad	0x3fe9e4f9a6a7c983              # double 0.80920107412229958
	.quad	0x3fd1fdb3d84065c6              # double 0.28110977285686223
	.quad	0x3fd783d2916ddc9e              # double 0.3674208088118095
	.quad	0x3fe745f6d48dbd8c              # double 0.72729054941548688
	.quad	0x3fee0e03c8731082              # double 0.93921078825270876
	.quad	0x3fe4baca2f0d040b              # double 0.6478014868699814
	.quad	0x3fdc2336b98d11a0              # double 0.43964927787990327
	.quad	0x3fc8d2091e777bf8              # double 0.19390977847703517
	.quad	0x3fdce0724c02b88c              # double 0.45119912550843178
	.quad	0x3fe629e27ccc1f2e              # double 0.69261288046343394
	.quad	0x3fdaba306830b162              # double 0.41761408018898838
	.quad	0x3fe71a63d0ff2105              # double 0.72197142429016081
	.quad	0x3feef8315b1c993d              # double 0.96779697222954264
	.quad	0x3fe79ae573607591              # double 0.73765823874025405
	.quad	0x3fea5c753cb8fdea              # double 0.82378637180221159
	.quad	0x3fee534678f43031              # double 0.94766543983269547
	.quad	0x3fb88e16048a0fb8              # double 0.095918060405948746
	.quad	0x3fac26763579ed40              # double 0.054980939891687175
	.quad	0x3feb3c6802a29a26              # double 0.85112381472282972
	.quad	0x3fd1931e73f8b7c2              # double 0.27460442853304923
	.quad	0x3fcde1800f2db65c              # double 0.23344422093525707
	.quad	0x3fe4069efaacd678              # double 0.62580822906484368
	.quad	0x3fa8a884c1d87950              # double 0.04816069475440321
	.quad	0x3f8ee542a4a97380              # double 0.015085716867526022
	.quad	0x3fd1c4e5091479e8              # double 0.2776424969360094
	.quad	0x3feb0f72b4ad4547              # double 0.84563575066037167
	.quad	0x3fd288e4e1793d00              # double 0.28960535067467674
	.quad	0x3fb3e448d9d071a8              # double 0.077702096154502187
	.quad	0x3fd5d38586aff3d2              # double 0.34103525307710669
	.quad	0x3fd8f7833708e2fa              # double 0.39010696768268327
	.quad	0x3fea1d88db2d3391              # double 0.816105297164187
	.quad	0x3fecdb36fc5c2d25              # double 0.90175961770129176
	.quad	0x3fe4e3d3a0b3dff4              # double 0.65281087290986628
	.quad	0x3fe1be884879a96e              # double 0.55450834422417272
	.quad	0x3fde9cf498df956c              # double 0.47832980088272481
	.quad	0x3fe001e7561b44e9              # double 0.50023238008193716
	.quad	0x3fc6648e3e76e820              # double 0.17494371461890612
	.quad	0x3fdc20d8beaf17be              # double 0.4395048010013588
	.quad	0x3fdcc1ccf6060132              # double 0.44932865167358493
	.quad	0x3fac9450e71f8770              # double 0.055819061482693111
	.quad	0x3fe67cda90600374              # double 0.70274093816997985
	.quad	0x3fdb5ad0af5e66a6              # double 0.42741791845183241
	.quad	0x3fd0ad159c2f1912              # double 0.26056423427907405
	.quad	0x3fcf6fb2c142d43c              # double 0.24559626041960481
	.quad	0x3fcd04b6015d5eac              # double 0.22670626703869823
	.quad	0x3fcfee11414a6ff4              # double 0.24945274055505673
	.quad	0x3fdade5a9dd7d622              # double 0.41982140936247181
	.quad	0x3fa402e951117cc0              # double 0.039084712167772206
	.quad	0x3fec10151e9bcf89              # double 0.87696319559334868
	.quad	0x3f930a2013cbae40              # double 0.018593312462071632
	.quad	0x3fe599dcb4d98c09              # double 0.67503199884629439
	.quad	0x3fe8da55f690a3e6              # double 0.77665231854655015
	.quad	0x3fe126938cb74201              # double 0.53595902904095294
	.quad	0x3fe7f8f32b4e79dc              # double 0.74913938959417292
	.quad	0x3fee60112e0f457c              # double 0.94922694202448054
	.quad	0x3fb9a6a7df90b7d0              # double 0.1001992150129063
	.quad	0x3fe1ad36ff0c80b2              # double 0.55239438833452525
	.quad	0x3fa9cf66ae6acb20              # double 0.050410469809682334
	.quad	0x3fe2b2d9e6151028              # double 0.5843324178499687
	.quad	0x3fd9e6110983c6e6              # double 0.40466714791464964
	.quad	0x3feddb6b800e7af5              # double 0.93303465853736489
	.quad	0x3fead7b7b73c05c2              # double 0.83883271968823458
	.quad	0x3fdfc3c661eed5c2              # double 0.49632415355457848
	.quad	0x3fec0bad3c313f4d              # double 0.87642537838289913
	.quad	0x3fd6b90b9a638d50              # double 0.35504427029646468
	.quad	0x3fe154097b8263b9              # double 0.54150842783848596
	.quad	0x3fe7aa5e95139e48              # double 0.73954705349474015
	.quad	0x3fedda631e1d4c04              # double 0.93290859109617985
	.quad	0x3fd07e4a483d8462              # double 0.25770813994137687
	.quad	0x3feca54a24b990c6              # double 0.89517695591759927
	.quad	0x3fc613f99bd827f8              # double 0.17248458966815838
	.quad	0x3febc18167ff330f              # double 0.86737127601517894
	.quad	0x3fe48b0e7b78b250              # double 0.64197467914125106
	.quad	0x3fe5fb195eb889c9              # double 0.6869017457977914
	.quad	0x3fe389b1687ee291              # double 0.61055822762780754
	.quad	0x3f92c2d5b8420fc0              # double 0.018321360942095799
	.quad	0x3f77e5120ef74200              # double 0.0058336930664641962
	.quad	0x3fade15becd7d990              # double 0.058359978353041631
	.quad	0x3fedd7d76dbc16e2              # double 0.93259784157336534
	.quad	0x3fdb5580fb8613a0              # double 0.42709374010910928
	.quad	0x3fde9da5d8ddc444              # double 0.47837206056926029
	.quad	0x3fecb7248496740a              # double 0.89735628028904668
	.quad	0x3fe29c2fc255b13b              # double 0.58156574207308809
	.quad	0x3fb26fe64eab0600              # double 0.072019952970570955
	.quad	0x3fd4f9bd5f9c68a8              # double 0.32774290406235673
	.quad	0x3fd085ccf7c9a3a4              # double 0.25816654394162186
	.quad	0x3fc1415000384104              # double 0.13480567942361443
	.quad	0x3fefedc86a39f5a8              # double 0.99777622935623799
	.quad	0x3fc7d145d5cca5d8              # double 0.18607399882721043
	.quad	0x3fc7fd1c1720e648              # double 0.18741179589578594
	.quad	0x3fe1acfa05462d05              # double 0.55236531286337309
	.quad	0x3fe4b09b28cc8370              # double 0.64655836075335849
	.quad	0x3fe6deb36e0e7cee              # double 0.7146851682226989
	.quad	0x3f9e36e55e94a560              # double 0.029506286523575453
	.quad	0x3fe34241fef82a5f              # double 0.60183810995779286
	.quad	0x3feb4f5ddb1f7115              # double 0.85343830869126924
	.quad	0x3fe339cf0399663f              # double 0.60080671980831102
	.quad	0x3fef1a6deaf351b6              # double 0.97197624100458913
	.quad	0x3fd55df9aaee5470              # double 0.33386079494932286
	.quad	0x3fe319074e152a4d              # double 0.59680524111292643
	.quad	0x3fe6568f7a0389ff              # double 0.69806646185708121
	.quad	0x3fedff4c9d9ddc0b              # double 0.93741446289539121
	.quad	0x3fe3ea1762d83040              # double 0.62232560449184149
	.quad	0x3fe93683f6b076d6              # double 0.78790472203737738
	.quad	0x3fe0a8506188f3c7              # double 0.52054614114569453
	.quad	0x3fb0bbfc11e22490              # double 0.065368418088967539
	.quad	0x3fd112da1ab054ce              # double 0.2667756329186205
	.quad	0x3fe630a878692d99              # double 0.69343970792526755
	.quad	0x3fd1f5bb61afba68              # double 0.28062328853312701
	.quad	0x3fa121b370bf5a30              # double 0.033460242760771641
	.quad	0x3fef6ee6a6a934a6              # double 0.98228771735161469
	.quad	0x3fea04e7ddd25691              # double 0.81309884380853437
	.quad	0x3fd96d5900d962de              # double 0.39729905207563643
	.quad	0x3fbe13347cfcc668              # double 0.11748054553461318
	.quad	0x3fe62012066a3f8f              # double 0.6914148450177765
	.quad	0x3fae5a0f8cdcbdb0              # double 0.059280858941174741
	.quad	0x3fed069952756d4d              # double 0.90705553155150087
	.quad	0x3fe6103c91e8da08              # double 0.68948200700725781
	.quad	0x3feac83da7d100ae              # double 0.83694346214908477
	.quad	0x3fd4e05a8bf26330              # double 0.32619346300775742
	.quad	0x3fcdb4a65cb80058              # double 0.23207549598010035
	.quad	0x3fefb14e772617d4              # double 0.99039386054277622
	.quad	0x3fdadd92ac62dea6              # double 0.41977373919096761
	.quad	0x3fd59b8e587e8520              # double 0.33761938707364614
	.quad	0x3fc180c7949a69ec              # double 0.13674254184736812
	.quad	0x3fc77cdf286b77fc              # double 0.18349828218100572
	.quad	0x3fedb297b4d56166              # double 0.92805085486456274
	.quad	0x3fc00b5d479ae1d8              # double 0.12534681316698371
	.quad	0x3fd9ea040d752a56              # double 0.40490819277025503
	.quad	0x3fe926cb91b3e54c              # double 0.78598574121057529
	.quad	0x3fe6c2b432741b4a              # double 0.71126756529052071
	.quad	0x3fe7d7e8a3d97db5              # double 0.74510604860181806
	.quad	0x3fed352403ef1af2              # double 0.91273690002785046
	.quad	0x3fef5e9687b13516              # double 0.98029638769517891
	.quad	0x3fe628dd8d117d08              # double 0.69248845627217381
	.quad	0x3fe2e5eb90a884bc              # double 0.59056642774171264
	.quad	0x3fe30ccdd44faff9              # double 0.59531299082800537
	.quad	0x3fe548d861afddd7              # double 0.665142241282349
	.quad	0x3fe85c837679e472              # double 0.7612931550967359
	.quad	0x3fe893c53eda5c46              # double 0.7680383899304466
	.quad	0x3fc718646c9e32e8              # double 0.18043189338313614
	.quad	0x3fba450243991d50              # double 0.102615491393512
	.quad	0x3fe829ee38c04711              # double 0.75511847576328439
	.quad	0x3fdb286b474f72bc              # double 0.42434198345089746
	.quad	0x3fe5c7bcce25634f              # double 0.68063202155017588
	.quad	0x3fc3051d926f98ac              # double 0.14859361314956254
	.quad	0x3fce508f03cfe958              # double 0.23683345495357844
	.quad	0x3f8e8c15836d7dc0              # double 0.014915626595835785
	.quad	0x3fe2b1f224b0478b              # double 0.58422190824261244
	.quad	0x3fe01f80db59145b              # double 0.50384562341117645
	.quad	0x3fa8402ea25b6c20              # double 0.047364671057686047
	.quad	0x3fd7f207eab3201e              # double 0.37414739532369079
	.quad	0x3feb22395b111e8b              # double 0.84792773996828552
	.quad	0x3fe3dda27c2a5a8a              # double 0.62080501795829091
	.quad	0x3fe3c893c0f910cd              # double 0.61823451700231546
	.quad	0x3fe569e8de5b9974              # double 0.6691784232068998
	.quad	0x3fad8e1c6a71c7c0              # double 0.057724845880229747
	.quad	0x3f9c70b8c6ca1b20              # double 0.027773749478480103
	.quad	0x3fda7434c88d0620              # double 0.41334266266867026
	.quad	0x3fed271ea11fab1c              # double 0.91102534741853302
	.quad	0x3fd8dfc61db29f02              # double 0.38865807438058664
	.quad	0x3fdd57348cc96ea8              # double 0.45844758747782999
	.quad	0x3feb0d72ab93e280              # double 0.84539159308685896
	.quad	0x3fecd36c516e55e3              # double 0.90080848602763941
	.quad	0x3fe2e82b5aeccf2e              # double 0.59084098585888056
	.quad	0x3fd54170f7ce6db8              # double 0.33211921882476814
	.quad	0x3fdc58992a098d5e              # double 0.44290761094290143
	.quad	0x3fb9d67fdeb7c298              # double 0.10092925250479323
	.quad	0x3fd7b20d6680ef78              # double 0.37024245271799527
	.quad	0x3fe78ca83decacac              # double 0.73592006773596585
	.quad	0x3fae4904f5c61460              # double 0.059150843621900817
	.quad	0x3fd57940a6bc88b6              # double 0.33552566798074268
	.quad	0x3fecb72d087aa28f              # double 0.89736034065306736
	.quad	0x3fde438cbb694e90              # double 0.47287290861024989
	.quad	0x3fe44465d1dd4fc8              # double 0.63334933270606886
	.quad	0x3fdb0b2991fae0d2              # double 0.42255629783495607
	.quad	0x3fee6fd9be06ef6e              # double 0.95115363230386918
	.quad	0x3fe5f57b2cf4e64f              # double 0.68621596127122497
	.quad	0x3fe022889c1ec4ff              # double 0.5042155312750366
	.quad	0x3fd48ff2da3f4c92              # double 0.32128592789849464
	.quad	0x3fb0ac5dc8caf620              # double 0.065130101701435184
	.quad	0x3fdeb20eef80315c              # double 0.47961781872506548
	.quad	0x3fea1e8432b83a15              # double 0.81622514635256727
	.quad	0x3fe2948b4f28c58a              # double 0.58063283406060973
	.quad	0x3f76cb36fa65c680              # double 0.0055648944456706539
	.quad	0x3fcf8991c1c9f8cc              # double 0.24638578379012299
	.quad	0x3fdd817ba03d4918              # double 0.46102800987604686
	.quad	0x3fbd7396e9eec9c0              # double 0.11504500590562028
	.quad	0x3fe13ae69d322a10              # double 0.53844004347166852
	.quad	0x3fe1455a778dc51c              # double 0.53971598959302325
	.quad	0x3fd64adf8de36c28              # double 0.34831990104948085
	.quad	0x3fea5f198d4c2131              # double 0.82410886380333725
	.quad	0x3fe453955113ffa6              # double 0.63520303569383851
	.quad	0x3fcdf41f6594f668              # double 0.23401253185322735
	.quad	0x3fdc1ca87c419ee4              # double 0.43924915441901491
	.quad	0x3fb6c8fdae48b550              # double 0.089004378366287939
	.quad	0x3fedde31f76be0cd              # double 0.9333734352540205
	.quad	0x3fe77c1f88d68a5e              # double 0.73390175558263215
	.quad	0x3fde82180980d69a              # double 0.47669030120901257
	.quad	0x3fd490cbdd1d591a              # double 0.3213376674006142
	.quad	0x3fee43574765fc88              # double 0.94572032876011835
	.quad	0x3fb4752799a95c70              # double 0.079912638678580227
	.quad	0x3fe339a940be7565              # double 0.60078871388729438
	.quad	0x3fbb34dddfc34240              # double 0.10627543175656573
	.quad	0x3fb27f53894712a0              # double 0.072255345358892331
	.quad	0x3fcd714dd6fe6858              # double 0.23002026555770061
	.quad	0x3fe96476aa6feee9              # double 0.79351361549876487
	.quad	0x3feca71783787bef              # double 0.89539695432529054
	.quad	0x3fda5f3782e29a2a              # double 0.4120615747619093
	.quad	0x3fdbd6bb8cabdc98              # double 0.43498123872218164
	.quad	0x3fcd37789920a6cc              # double 0.22825534321719088
	.quad	0x3fd2c48bd49ecef4              # double 0.29324622882562257
	.quad	0x3fe85e5a518b2b0f              # double 0.76151767660607728
	.quad	0x3fec1797cb75d16c              # double 0.87787999857259313
	.quad	0x3fc2409b6e089ef0              # double 0.14259665367830321
	.quad	0x3fd01fea85c30f5e              # double 0.25194800436678644
	.quad	0x3feae66c7fa87232              # double 0.8406279080696264
	.quad	0x3fe233b5c7c0cb31              # double 0.56881226553227837
	.quad	0x3fcbab6046835cf8              # double 0.21616748278641018
	.quad	0x3fee616865927651              # double 0.94939060056976576
	.quad	0x3fd4ef5871d8acbc              # double 0.32710848920641999
	.quad	0x3fc1f06184bbd534              # double 0.14014834386004227
	.quad	0x3fe5a88bd3246eed              # double 0.6768244861482039
	.quad	0x3fcf288d98726738              # double 0.24342508262344054
	.quad	0x3fe03d9e41255d14              # double 0.50752175067728666
	.quad	0x3fd8fdc0359ac0e8              # double 0.39048772082152405
	.quad	0x3fdf2f631ef5b76e              # double 0.48726728461666979
	.quad	0x3fdc3f1c60e2e53e              # double 0.44135198079637294
	.quad	0x3fdaa92d8c1d2856              # double 0.41657580073354461
	.quad	0x3fd3335129906698              # double 0.30000714358320968
	.quad	0x3fd0ff484d101298              # double 0.26558120275175545
	.quad	0x3fd187505eb7c980              # double 0.27388390779301375
	.quad	0x3fe8c7476ae65d7d              # double 0.77432604674224559
	.quad	0x3fe7213505f677f3              # double 0.72280360378840525
	.quad	0x3fd74dc700f9a810              # double 0.36412215323673625
	.quad	0x3fcd659bfff82890              # double 0.22966337202553122
	.quad	0x3fe30edf29129e2a              # double 0.59556539556519295
	.quad	0x3fde0b33826f4954              # double 0.46943366754307658
	.quad	0x3feeb3d5edf41d61              # double 0.95945259547526628
	.quad	0x3fe216d53673af07              # double 0.56528721461424503
	.quad	0x3fd7c4134e3f11fc              # double 0.37134249345061199
	.quad	0x3fca3609957f103c              # double 0.20477409171701477
	.quad	0x3fedff17af66f46b              # double 0.93738922365413424
	.quad	0x3fb7e3a2e156cbe8              # double 0.0933172035354769
	.quad	0x3fe6e10635899eae              # double 0.71496878105695827
	.quad	0x3fedf5f1789ca665              # double 0.93627236897482347
	.quad	0x3fe5866d94aa64b2              # double 0.67265967403650095
	.quad	0x3fe37b97672124ac              # double 0.60883684294198792
	.quad	0x3fd373983176d606              # double 0.30393032865990255
	.quad	0x3fa9b08ec6b7eed0              # double 0.050175153501155756
	.quad	0x3fab3e0e7e6f5690              # double 0.0532078294124122
	.quad	0x3fc22cc3d17d9064              # double 0.14199111680057108
	.quad	0x3fe8cdbc28b1f5ee              # double 0.7751141352488824
	.quad	0x3fe1ccb99d72facb              # double 0.55624085189614314
	.quad	0x3fe1a3d924589ff8              # double 0.55125100230088631
	.quad	0x3feaa8ea7fde4e06              # double 0.83311963056843363
	.quad	0x3fe708a0a48ef1e3              # double 0.71980316295917779
	.quad	0x3f9794b9251273e0              # double 0.023028271568012459
	.quad	0x3fea4ad004793c0d              # double 0.82163239358658446
	.quad	0x3fcd8796d21000f8              # double 0.23070035225828867
	.quad	0x3f902f6eda5dc240              # double 0.015805942609804058
	.quad	0x3fe35c2ea77a94c9              # double 0.60500271521291282
	.quad	0x3fe7e933af9c139c              # double 0.74721702860607619
	.quad	0x3fdebee80cd7fa1a              # double 0.48040200475944206
	.quad	0x3fd6655bd94be6d0              # double 0.34993644924507539
	.quad	0x3fd6231164957688              # double 0.34589037726059546
	.quad	0x3fc164ca79aebef8              # double 0.13588839475186609
	.quad	0x3fe024ce4f050514              # double 0.50449290689008075
	.quad	0x3fdeb043edceb72e              # double 0.47950838302027676
	.quad	0x3fee667df267b097              # double 0.95001122803434412
	.quad	0x3fa66709d9a2f2c0              # double 0.043754871193845357
	.quad	0x3fda8fd384c0fc64              # double 0.4150284573005989
	.quad	0x3fe712ee695b5c0c              # double 0.72106094911112129
	.quad	0x3fe897f714ae23b0              # double 0.76855043448551008
	.quad	0x3fd902b561d83d48              # double 0.3907903152002814
	.quad	0x3fe65a14c143e86d              # double 0.69849622485277296
	.quad	0x3fe1adb9331a1534              # double 0.55245647412144772
	.quad	0x3fd576c63cd5e0cc              # double 0.33537441197360063
	.quad	0x3feab360eadc579a              # double 0.83439679976685288
	.quad	0x3fcc6a064834da88              # double 0.2219856121607402
	.quad	0x3fefe18d9252fd25              # double 0.99628332690182175
	.quad	0x3fc05f616185b7b0              # double 0.12791077863533706
	.quad	0x3fe30acfe2e50bf7              # double 0.59506983104108613
	.quad	0x3fe5ffcd64bdfa5a              # double 0.68747586895171797
	.quad	0x3fb783508b1579a0              # double 0.091847452121760487
	.quad	0x3fc0c7cf9869c138              # double 0.13109774534269447
	.quad	0x3fb9a64f507c71a0              # double 0.10019393649094477
	.quad	0x3feba5acc91da8af              # double 0.86397399216118298
	.quad	0x3fe1dc02c2879f5a              # double 0.55810678476425868
	.quad	0x3fb2189c40239ac0              # double 0.070688024195628252
	.quad	0x3fc72feac2b4afe4              # double 0.18114981181258749
	.quad	0x3fe929c34480398d              # double 0.78634799365117802
	.quad	0x3fd891044daa822e              # double 0.38385112366271101
	.quad	0x3fe5a23987f30442              # double 0.67605282356829144
	.quad	0x3fe7ed74f0e942ff              # double 0.74773642590488965
	.quad	0x3fe0d744bf4feb93              # double 0.52627789846097739
	.quad	0x3fe39a5fd34e36e8              # double 0.61259452124224101
	.quad	0x3fab3384cb48c3b0              # double 0.053127431693048677
	.quad	0x3fe7154dd3227010              # double 0.7213505862923757
	.quad	0x3fe9279f66d33bc4              # double 0.78608675082238521
	.quad	0x3fab4eb68a0cdd00              # double 0.053334907867276016
	.quad	0x3fe040d50873463e              # double 0.50791408205458999
	.quad	0x3fcde884f5841f14              # double 0.23365842807856352
	.quad	0x3fb1787b7c785c58              # double 0.068244665039274621
	.quad	0x3fb6ba3dcc394ad0              # double 0.088779318198514589
	.quad	0x3f9d3d40a4e72300              # double 0.028553972306130326
	.quad	0x3fecc8909bf185ae              # double 0.89948301751808457
	.quad	0x3fe01098ef44f1a5              # double 0.50202604992187061
	.quad	0x3fc00d89ee34024c              # double 0.12541317111028361
	.quad	0x3f7991e846e23180              # double 0.0062426636997198193
	.quad	0x3fd04c28afc03402              # double 0.25464837229884563
	.quad	0x3fbcbfc8fb2a31e0              # double 0.1123014081187601
	.quad	0x3feee339e588ad35              # double 0.96523756819570982
	.quad	0x3fe6b7e87420f6a9              # double 0.70994970971488158
	.quad	0x3fe45664303e4316              # double 0.63554582045080354
	.quad	0x3fed89e0cacba596              # double 0.92308082207198328
	.quad	0x3fe11961ecfe1865              # double 0.53434845244988749
	.quad	0x3fe7eda9d488b0a6              # double 0.74776164541755885
	.quad	0x3fea2673e5528539              # double 0.81719393529434747
	.quad	0x3fdfd8a1f6fff876              # double 0.49759720917780415
	.quad	0x3fddd91f6545dc66              # double 0.46637711419993477
	.quad	0x3fe87dd7d7e8db4d              # double 0.76536171121447583
	.quad	0x3fea251f0cfb292e              # double 0.81703140769358185
	.quad	0x3fbaa49ee75748d8              # double 0.10407441280338803
	.quad	0x3fe7e74f3ebc2936              # double 0.74698602917604862
	.quad	0x3fd7802a514f5c32              # double 0.36719758930616131
	.quad	0x3fe1c0813f2f90f9              # double 0.55474912968614298
	.quad	0x3fc0d9921690b200              # double 0.13163972951714698
	.quad	0x3fecf89c277a24d1              # double 0.90534789762855372
	.quad	0x3fee5d3f12e01bff              # double 0.94888261496168969
	.quad	0x3f8c1d5f8a2e79c0              # double 0.013727899937120536
	.quad	0x3fe3dd42bb6f4e40              # double 0.62075935943943961
	.quad	0x3f9c0341994ecc40              # double 0.027356171590963152
	.quad	0x3fe3399315185731              # double 0.6007781421674051
	.quad	0x3febecd0a95f3dce              # double 0.87265809135890904
	.quad	0x3fe4a902973e28a4              # double 0.64563111819849839
	.quad	0x3fec36ad4d10ed27              # double 0.88167443325020123
	.quad	0x3fddb429b4108bb6              # double 0.46412127098499967
	.quad	0x3fe58afa174e43df              # double 0.67321495582484292
	.quad	0x3fdf914f6601491c              # double 0.49324402772357856
	.quad	0x3fe27a7324a112c1              # double 0.57744748262538093
	.quad	0x3fed2183b6a4e5d8              # double 0.91034112618143137
	.quad	0x3fd2f323870e55ca              # double 0.29609001339971697
	.quad	0x3f7a4ac9057cbf80              # double 0.006418977012614735
	.quad	0x3fe7fa31e6b6a89b              # double 0.74929137288315262
	.quad	0x3fe36ae08b6958df              # double 0.60679652432261466
	.quad	0x3fe0118a8355cf8f              # double 0.50214124347120215
	.quad	0x3fb5963ac99082c0              # double 0.084323572359163101
	.quad	0x3feed9798f01861e              # double 0.96404722147798672
	.quad	0x3fd0acfbe5ad67a2              # double 0.26055810384206712
	.quad	0x3fe0632f9073be78              # double 0.51210764134698561
	.quad	0x3fe8e680b74074ca              # double 0.77813754836429294
	.quad	0x3fcd51dc35cb96e0              # double 0.22906067492220128
	.quad	0x3fd8dea12b83b38e              # double 0.38858823060473291
	.quad	0x3fa6122a8686d560              # double 0.043107346460071083
	.quad	0x3fe232f13f180fce              # double 0.56871855090184353
	.quad	0x3fc580cea058d18c              # double 0.16799338178101342
	.quad	0x3fe2a1e7a97a627e              # double 0.58226378537354129
	.quad	0x3fed983d952dd381              # double 0.92483405243420702
	.quad	0x3fc974dae3af0e00              # double 0.19887863271115691
	.quad	0x3fdebc1d47409572              # double 0.48023158987265113
	.quad	0x3febb3a53e34c8db              # double 0.86567937993666122
	.quad	0x3febc0247ffc5cc2              # double 0.86720490452980692
	.quad	0x3fe66b0004e2f230              # double 0.7005615325393304
	.quad	0x3fbf3667d6acca80              # double 0.12192391387069712
	.quad	0x3fd5ab9be23d6690              # double 0.33859917730078681
	.quad	0x3fecac0a7b0fe4ca              # double 0.89600109134257733
	.quad	0x3fedc7fdecc9f3c0              # double 0.93066307304217588
	.quad	0x3fe86440020e169c              # double 0.7622375526559213
	.quad	0x3fa8d1a4c8c919a0              # double 0.048474454412416934
	.quad	0x3fb55c304be16cc0              # double 0.083437937284020158
	.quad	0x3fee7a6c0c6e5db6              # double 0.95244409969284649
	.quad	0x3fd6e677755748ec              # double 0.35781656703069475
	.quad	0x3fe7339b84373eed              # double 0.72504974196814731
	.quad	0x3fe214d7dbaca534              # double 0.56504433541446142
	.quad	0x3fd40bb16ca8c4d6              # double 0.31321368800406668
	.quad	0x3fe0d313f8c9b82d              # double 0.52576635924720494
	.quad	0x3fe14119ae018260              # double 0.53919681535269248
	.quad	0x3fcd593919b34950              # double 0.2292853713502816
	.quad	0x3fb4fa5d564fcfb8              # double 0.081945260593612512
	.quad	0x3fe29de6ce94f1c8              # double 0.58177509639750102
	.quad	0x3fe696569dcdf772              # double 0.70585184880449803
	.quad	0x3fdae9f853fe605a              # double 0.42053039743905674
	.quad	0x3fdb8c59c1ed7a22              # double 0.43044132173773353
	.quad	0x3fe6bb3d5943d955              # double 0.71035640177323478
	.quad	0x3fb9230d2cd3f0d8              # double 0.098191092914876932
	.quad	0x3fec00e766e13072              # double 0.87511034101181751
	.quad	0x3fc3d1570f7f7510              # double 0.15482605225307866
	.quad	0x3fcdb124e63cfd0c              # double 0.23196851007558228
	.quad	0x3fbaeba0f3ae0da0              # double 0.10515790890899845
	.quad	0x3fea24588a796378              # double 0.81693675084817041
	.quad	0x3fed09c701188cf8              # double 0.90744352544825713
	.quad	0x3fcb7b5a55fd91a0              # double 0.21470193098788304
	.quad	0x3fc65e39c6ba1598              # double 0.17475053981267474
	.quad	0x3fd9ce8247d201a4              # double 0.40322930349068486
	.quad	0x3fe2fe234920b16b              # double 0.59352268488650617
	.quad	0x3fe9873e294bf993              # double 0.79775913301254986
	.quad	0x3fd6b1a7ad2cdf8e              # double 0.35459319984101334
	.quad	0x3fa081b001b0ea50              # double 0.032239437300138563
	.quad	0x3fee53bce71748b5              # double 0.94772191176368514
	.quad	0x3fde9f25bcb7576a              # double 0.47846358708681314
	.quad	0x3fe32d9f2158d555              # double 0.59931904328429175
	.quad	0x3fefb7456567abfa              # double 0.99112195783288759
	.quad	0x3fe212904ec8d063              # double 0.56476607692321712
	.quad	0x3fe8224783a9544c              # double 0.75418449130177966
	.quad	0x3feafd5497c572a0              # double 0.84342412607982808
	.quad	0x3fe51d6558335e67              # double 0.65983836390200856
	.quad	0x3fdeb235ba04eaf2              # double 0.47962706724108195
	.quad	0x3fe419f065ba64fe              # double 0.62816638821382731
	.quad	0x3fd66e7183eb3d98              # double 0.35049093134599607
	.quad	0x3fde121f1121e13c              # double 0.46985603974418999
	.quad	0x3fdd1ed91ae5092c              # double 0.45500781656677947
	.quad	0x3fc909244d91e950              # double 0.1955914858588792
	.quad	0x3fe9463af0d23fec              # double 0.78982302699477946
	.quad	0x3fe6511a28a48043              # double 0.69740016878132172
	.quad	0x3fe33128a65c3adc              # double 0.59975082866898388
	.quad	0x3fb830e000f1d570              # double 0.094495773535376192
	.quad	0x3fd312c6ef66189a              # double 0.29802106264868089
	.quad	0x3fe007a30125b1b7              # double 0.50093221878119365
	.quad	0x3fb743d1e822b960              # double 0.090878600286236288
	.quad	0x3fea52a1ae7000e4              # double 0.82258686132265923
	.quad	0x3fe89264343210c5              # double 0.76787004656264257
	.quad	0x3fef5fa74933dd14              # double 0.98042644784337307
	.quad	0x3fe0f1cc00fcae29              # double 0.52951622193126469
	.quad	0x3fd075fb5722d996              # double 0.25720103749645185
	.quad	0x3fe2514d1ea29aee              # double 0.57242446883614462
	.quad	0x3fd5b57efba90784              # double 0.33920263839910825
	.quad	0x3fc37810399f957c              # double 0.15210154355660765
	.quad	0x3fa172a472b1ccc0              # double 0.03407777690963476
	.quad	0x3fe474ff44cec714              # double 0.63928187788971735
	.quad	0x3fe09a430cb03050              # double 0.51883079984828306
	.quad	0x3fb8bfa680d166f0              # double 0.096674353074742702
	.quad	0x3fdb28fcde4805c8              # double 0.42437669474756179
	.quad	0x3f98261c64292380              # double 0.02358288155872712
	.quad	0x3fbc5b2faadfac38              # double 0.11076639100763053
	.quad	0x3fd633f643d50a40              # double 0.34692150711285663
	.quad	0x3fe110412b541fe9              # double 0.533234200121112
	.quad	0x3fd7eb0f5b639770              # double 0.37372192311010277
	.quad	0x3fc4473b0eb45298              # double 0.15842378824222147
	.quad	0x3fdaa571842f3bd6              # double 0.41634786518710365
	.quad	0x3fea0da535fd3301              # double 0.81416569275606332
	.quad	0x3fc355b1a38f5318              # double 0.15105267034837122
	.quad	0x3fd39472df2aa304              # double 0.30593559068306342
	.quad	0x3fc2a15cb3d4d110              # double 0.14554938107324533
	.quad	0x3fe5efa0388659ec              # double 0.68550120391847491
	.quad	0x3fd3127dbcf27dd6              # double 0.29800361110571083
	.quad	0x3fe686cf9b745ec7              # double 0.703956416723451
	.quad	0x3fb0a3ff67adac38              # double 0.065002405941115948
	.quad	0x3fcdb1329cfbd3e0              # double 0.23197014489383516
	.quad	0x3fe27cd893090b08              # double 0.57773998945080596
	.quad	0x3fd3219bd4510d0c              # double 0.29892631277125825
	.quad	0x3fc4a10d3faf4058              # double 0.1611649094543306
	.quad	0x3fef59ecf70e7144              # double 0.9797272515602704
	.quad	0x3fe9539dc10a41a4              # double 0.79145705893647688
	.quad	0x3fb1a896f2c7ba18              # double 0.068978723785882656
	.quad	0x3fe217dcced264ba              # double 0.56541290659801935
	.quad	0x3fecdd8b0adf1996              # double 0.90204383967720747
	.quad	0x3fed177fa5ec1a2e              # double 0.90911848456091149
	.quad	0x3fee4acfa40a3f4d              # double 0.94663221396511121
	.quad	0x3fef9e5b1bd195dc              # double 0.98808055337274991
	.quad	0x3fec8e2c6b576086              # double 0.89235516514874358
	.quad	0x3fedaf84e00d446c              # double 0.92767566452142835
	.quad	0x3fe64832c8cd739b              # double 0.69631327838179702
	.quad	0x3fe05858c8976e2f              # double 0.51078452280075293
	.quad	0x3fedfbdc648a558c              # double 0.93699473988333314
	.quad	0x3fc11ad3da405774              # double 0.13363121182254256
	.quad	0x3fe8df886406235e              # double 0.77728671585019149
	.quad	0x3fec3e4c84b7276d              # double 0.88260484620080393
	.quad	0x3fe8bd6f3773b407              # double 0.77312432127439557
	.quad	0x3feba848dad27a2e              # double 0.86429255236345681
	.quad	0x3fda2be0c8fdc840              # double 0.40892810466823803
	.quad	0x3fd7cb8f42fe1b68              # double 0.37179929296728753
	.quad	0x3fea09318088e22f              # double 0.81362223724778981
	.quad	0x3f82b23ddff30980              # double 0.0091290315598413496
	.quad	0x3fc680cb09852fd4              # double 0.17580545391899582
	.quad	0x3fe0c68afd0ce028              # double 0.52423619674573718
	.quad	0x3fb476a06bb8da90              # double 0.079935098933541448
	.quad	0x3fe8dffb4026cacd              # double 0.77734148530574887
	.quad	0x3fed351f4b6cf723              # double 0.91273464900561796
	.quad	0x3fde03972498abb0              # double 0.46896914075721963
	.quad	0x3fec6a696f72e2e7              # double 0.88798972861613101
	.quad	0x3fe8117fd7cec416              # double 0.75213615560471925
	.quad	0x3fce2e57bf220ee0              # double 0.23578926880519813
	.quad	0x3fecfc91c4b048ba              # double 0.90583122649902426
	.quad	0x3fe5169c0aa482f0              # double 0.6590099532951097
	.quad	0x3feddd46b4341539              # double 0.93326125331865406
	.quad	0x3fd6c61fb09b9146              # double 0.35584251639217646
	.quad	0x3fe1bac096f8ed56              # double 0.55404691206733037
	.quad	0x3fa665e8b2da86d0              # double 0.043746253807751878
	.quad	0x3fe4aa31a3d2a521              # double 0.64577562328955562
	.quad	0x3f47205ced04e000              # double 7.0576226611418491E-4
	.quad	0x3fd0f300611006a2              # double 0.26483163336534166
	.quad	0x3fc8632712e04d10              # double 0.19052589818657184
	.quad	0x3f907ba990b7c4a0              # double 0.016096734483600827
	.quad	0x3fd649f59c451fac              # double 0.34826412449592214
	.quad	0x3fcedf4b52de3318              # double 0.24118939920699556
	.quad	0x3fd98f68f78b1730              # double 0.39937805341866106
	.quad	0x3fe1ee5aa739b2e2              # double 0.56034596120079194
	.quad	0x3feff98163d80a58              # double 0.9992072057796788
	.quad	0x3fe7735862804213              # double 0.73283023107984702
	.quad	0x3fdf6b08d2c83c08              # double 0.49090786537357234
	.quad	0x3fd22d983e31afd2              # double 0.28403287957803258
	.quad	0x3fe3aa18687938f1              # double 0.61451359181390164
	.quad	0x3fa4b97970116200              # double 0.040477557115710994
	.quad	0x3fd68ef9c6a12f92              # double 0.35247654340195667
	.quad	0x3fe0d44f4b4a39ea              # double 0.52591671662395112
	.quad	0x3fc466125ebaa3ec              # double 0.15936498284761969
	.quad	0x3fe136d2ecd6f04d              # double 0.53794237382636256
	.quad	0x3fe8b0d7318e0e58              # double 0.77158698729221964
	.quad	0x3fd34a8adfc8df7a              # double 0.30142471174212171
	.quad	0x3fe9f3d43c450537              # double 0.81101428767593731
	.quad	0x3fe057022b9a26b0              # double 0.51062115207715486
	.quad	0x3fe98cfb16ca6d09              # double 0.79845957232774467
	.quad	0x3f735bcb9e05cb00              # double 0.0047262147712554547
	.quad	0x3fd1c61d0f268f74              # double 0.27771688918641435
	.quad	0x3fed409e12ae0801              # double 0.91413787506485289
	.quad	0x3fabe5d87ed72cd0              # double 0.054487958415472826
	.quad	0x3fd929e2bcba357c              # double 0.3931814997711951
	.quad	0x3feb15a490df71f8              # double 0.84639194770312454
	.quad	0x3fe0369dfaaeda27              # double 0.50666712724234209
	.quad	0x3fc63b84d7ce0d08              # double 0.17369137322757688
	.quad	0x3fd6e62cfdd54a1c              # double 0.35779881275553449
	.quad	0x3fded78981d24a8c              # double 0.48190534284473396
	.quad	0x3fca7e20e91941a4              # double 0.20697413808603671
	.quad	0x3fcdd58ab4c4c30c              # double 0.23307927919952254
	.quad	0x3fd2f2bdf2912d96              # double 0.29606579483216799
	.quad	0x3fe4753b31c38082              # double 0.63931045264691044
	.quad	0x3fda9c22fe6e0360              # double 0.41577982756284904
	.quad	0x3fed30b15b6cd681              # double 0.91219394546961052
	.quad	0x3fe79c5b0daca32d              # double 0.73783638640188587
	.quad	0x3fdb11fa9965198e              # double 0.42297234516117832
	.quad	0x3fdc6ee3b0b5d674              # double 0.44426815277925091
	.quad	0x3fef739fa4f2a39e              # double 0.98286421028489079
	.quad	0x3fcdba641755b6ac              # double 0.23225070132632675
	.quad	0x3feb8e510a9015bf              # double 0.8611226278596219
	.quad	0x3fb1c303aecdc9b0              # double 0.069381933380816774
	.quad	0x3f7d889938622c80              # double 0.0072103486219347035
	.quad	0x3f9acb872950b800              # double 0.026167022606550461
	.quad	0x3fc5b6d4e52c6264              # double 0.1696420783053042
	.quad	0x3fd7d4c7ebd4ec34              # double 0.3723621180576544
	.quad	0x3fe7750fdddbefe8              # double 0.73303979236470429
	.quad	0x3fecd7a9e825faee              # double 0.90132613507725323
	.quad	0x3fe914d3ded55ae8              # double 0.78379243394996667
	.quad	0x3fe777808ffde4df              # double 0.73333767054932852
	.quad	0x3fe1caf882ce568d              # double 0.55602670238541096
	.quad	0x3fe2e294795da7e7              # double 0.59015868858591325
	.quad	0x3fe757cf6daf9943              # double 0.72946902678521786
	.quad	0x3fbb91c0e02b9c68              # double 0.10769277069958749
	.quad	0x3fde2dcfa6713308              # double 0.47154608968848821
	.quad	0x3fe70ed6a434ae56              # double 0.72056133338396466
	.quad	0x3fe4ba5e296e9fa8              # double 0.64774997799121525
	.quad	0x3fdca1c8b459225c              # double 0.44737451183440213
	.quad	0x3fd48c8538eb714a              # double 0.32107668455661964
	.quad	0x3fce817946784620              # double 0.23832622471722775
	.quad	0x3fe1b40951b0a4ce              # double 0.55322709994393349
	.quad	0x3fdaf0e180e45f68              # double 0.42095220172040237
	.quad	0x3fd494026f25b540              # double 0.32153378347614492
	.quad	0x3f9068bbefea7b20              # double 0.016024528997714005
	.quad	0x3fdf65bee093585a              # double 0.49058505946357445
	.quad	0x3fdda9ac7285df24              # double 0.46348105605965118
	.quad	0x3fe3284ca9723bfe              # double 0.59866936774221791
	.quad	0x3fed01c4c4d9b7d3              # double 0.90646589705806446
	.quad	0x3fe2df8de80b10af              # double 0.58978934594099097
	.quad	0x3fe51b679f35f98f              # double 0.65959530921809228
	.quad	0x3fe04ee668252af7              # double 0.5096313509069138
	.quad	0x3fe444e3a55db3d6              # double 0.63340933130313704
	.quad	0x3fe399e47300460f              # double 0.61253569089075366
	.quad	0x3fcf754ca484ea98              # double 0.24576719315685547
	.quad	0x3fec2e0186a92cc9              # double 0.88061596203751791
	.quad	0x3fd6cd30b9dcaf6e              # double 0.35627382422057152
	.quad	0x3fe6e29b4b56f0ef              # double 0.71516194071548778
	.quad	0x3fd42bf6f3b68cca              # double 0.31518338966470749
	.quad	0x3fd6b3e3262578d0              # double 0.35472944951278595
	.quad	0x3fd7e51f959c0412              # double 0.3733595810918483
	.quad	0x3fea7a50ea632b93              # double 0.82743116167817943
	.quad	0x3fe02881398221fc              # double 0.50494443161102209
	.quad	0x3fe200ac7ec5f96e              # double 0.56258225212495261
	.quad	0x3fefb3ceed8e447c              # double 0.99069925687412263
	.quad	0x3fe9caff32d5ca9f              # double 0.80602989128813707
	.quad	0x3fec9515122736e6              # double 0.89319852395575761
	.quad	0x3fe59e3b28877ba2              # double 0.67556531825890809
	.quad	0x3fef380f46f47564              # double 0.97559322222120359
	.quad	0x3fd4fdcda7574720              # double 0.32799092618835068
	.quad	0x3fc381ad1f3a9868              # double 0.15239490532730149
	.quad	0x3fd3e952b5b14a98              # double 0.31111591094410462
	.quad	0x3fe63319127430a6              # double 0.69373754123946152
	.quad	0x3fe61f3a897ce463              # double 0.69131209233377111
	.quad	0x3fee11d4bae2b15d              # double 0.93967663289144421
	.quad	0x3fd3ec6bfe539c12              # double 0.31130504452306795
	.quad	0x3febbe74ebd8fc37              # double 0.86699911178573685
	.quad	0x3fe0dd11758c88bc              # double 0.5269858642461922
	.quad	0x3fed37156da8da8c              # double 0.91297408502471588
	.quad	0x3fe815899d7973f5              # double 0.75262909657214883
	.quad	0x3feedc522cd0838a              # double 0.96439465287049697
	.quad	0x3fe6f394fc2a6767              # double 0.71723412753202076
	.quad	0x3fd66a0f666a0b28              # double 0.35022339822187343
	.quad	0x3fb459ae4c089838              # double 0.079493421137699083
	.quad	0x3fe4e282ba53a29a              # double 0.65265022651609006
	.quad	0x3fe1e347562b88c0              # double 0.5589939768799681
	.quad	0x3fe9de3240c44058              # double 0.80837357187011616
	.quad	0x3fb35fc35bd9ad20              # double 0.075679979252232688
	.quad	0x3fbe03fa9ca4ba18              # double 0.11724821399978003
	.quad	0x3fcdc4c0caafb77c              # double 0.23256692787930067
	.quad	0x3fe2eca298bb97d8              # double 0.59138612585661132
	.quad	0x3fc860da52471b6c              # double 0.19045571343869072
	.quad	0x3fe68144dcc36668              # double 0.70327990644291294
	.quad	0x3fdea5c57c7c3ef0              # double 0.47886788517733603
	.quad	0x3fdcec0b6cc091b0              # double 0.45190702076277045
	.quad	0x3fe836bd07c227d3              # double 0.75668193354908408
	.quad	0x3fc9aa045fcdca94              # double 0.20050100973056273
	.quad	0x3fc17718aab0c304              # double 0.13644703230377087
	.quad	0x3fed47e577af423f              # double 0.91502641082667668
	.quad	0x3fe822ff168d2ec7              # double 0.7542720261057746
	.quad	0x3fe21797085d6378              # double 0.565379635179041
	.quad	0x3fd4528352bcdf0c              # double 0.31753619270192313
	.quad	0x3feeacd377bc443e              # double 0.95859692941497321
	.quad	0x3fe912d87d3a4637              # double 0.7835504957058167
	.quad	0x3fda4aee4b17c8b8              # double 0.41082341512004517
	.quad	0x3fd13ee82b9c8320              # double 0.26946453341411036
	.quad	0x3fd35486ce21df16              # double 0.30203409319027352
	.quad	0x3fee39d95ba33f35              # double 0.9445616521643162
	.quad	0x3fcaa8df43313c00              # double 0.20827856808543288
	.quad	0x3fd8fc007abb8a70              # double 0.39038097367862346
	.quad	0x3fd745affba23354              # double 0.36362838338464099
	.quad	0x3fd26a6b3cdc6c86              # double 0.28774529403171589
	.quad	0x3fe324f4f6f680b0              # double 0.59826133952085137
	.quad	0x3fb6eced472bd110              # double 0.089552717090388478
	.quad	0x3fe93cfe3729e193              # double 0.78869543813839227
	.quad	0x3fe5d7fe4646ec9e              # double 0.68261636472688614
	.quad	0x3fe25aaae5fd4ab1              # double 0.57356781883057384
	.quad	0x3fe251111a2bc7e3              # double 0.57239585029151063
	.quad	0x3fdfbe2c38ec8f0c              # double 0.49598222311964046
	.quad	0x3fe1d9ccdf1c8963              # double 0.55783694817027329
	.quad	0x3fe62d51854e1176              # double 0.69303203617214026
	.quad	0x3fe4c8bd9c7ef76c              # double 0.64950447621934648
	.quad	0x3fe01714b83753b6              # double 0.5028174970599284
	.quad	0x3fe893573732bc44              # double 0.76798592358489559
	.quad	0x3fc704010fdbf0d8              # double 0.17980969690677884
	.quad	0x3fdaf60eeb385d54              # double 0.42126820536346554
	.quad	0x3fc29985a37db708              # double 0.14531012042009928
	.quad	0x3fecd01a135d95bd              # double 0.90040305883729099
	.quad	0x3fce8fb607e79efc              # double 0.23876071344351846
	.quad	0x3fbb6f301398a030              # double 0.10716534117148124
	.quad	0x3f88e1fcb5510880              # double 0.012149786265698959
	.quad	0x3feeb99995f15b0e              # double 0.96015624318792603
	.quad	0x3fc198569a67d638              # double 0.13746149577461764
	.quad	0x3fe2b968502bce0f              # double 0.58513274820728778
	.quad	0x3fe18dac09f2f431              # double 0.54854394858523936
	.quad	0x3fdd4e0ffd3a5ed8              # double 0.45788955430314848
	.quad	0x3fe526799faca418              # double 0.66094666658784984
	.quad	0x3f9214752da3d920              # double 0.017656165037771676
	.quad	0x3f63b4a7ff239b00              # double 0.002405479544097644
	.quad	0x3fede9b7a677e582              # double 0.9347799540839079
	.quad	0x3fa901f8b4820d80              # double 0.048843166384382464
	.quad	0x3fe6355ce52eeffb              # double 0.69401402246830857
	.quad	0x3fe7547a14be72df              # double 0.72906211902190055
	.quad	0x3fdbee84d5e55d86              # double 0.43643303764607599
	.quad	0x3fd5d364037479d0              # double 0.34102726304436448
	.quad	0x3fe625d2108593e2              # double 0.69211676813995049
	.quad	0x3fd419adca76a1dc              # double 0.3140673138791763
	.quad	0x3fe380054f0da984              # double 0.60937753143416318
	.quad	0x3fed553a8f95c218              # double 0.91665390056556628
	.quad	0x3fca5befc1bed9ec              # double 0.2059306808493625
	.quad	0x3fcb040ab1689e68              # double 0.2110608450177438
	.quad	0x3fad72565954e020              # double 0.057512949375848388
	.quad	0x3fefa478948b7b0f              # double 0.9888270283953221
	.quad	0x3fe43fdc59314d60              # double 0.63279549999644402
	.quad	0x3fe2671766a49330              # double 0.57508440062938426
	.quad	0x3fc3ad98d9d14e74              # double 0.15373526225686229
	.quad	0x3fee77b745b7fde0              # double 0.95211375824868227
	.quad	0x3fd8e08b2552240e              # double 0.38870504994025701
	.quad	0x3fd94c56b5f6a5b6              # double 0.39528434533948642
	.quad	0x3fedd8ed69287c50              # double 0.93273039377880629
	.quad	0x3fe4b1f3cdf92f3e              # double 0.6467227003972551
	.quad	0x3fe95ae5aeca10ea              # double 0.79234584940470865
	.quad	0x3fd574576825b3d2              # double 0.33522591753609021
	.quad	0x3fde79142b160f74              # double 0.47614006240495788
	.quad	0x3fce194f19333f68              # double 0.23514736872175068
	.quad	0x3fa04bebf66b7d30              # double 0.031829236822654372
	.quad	0x3fe591699958f7a2              # double 0.67400054884614158
	.quad	0x3feff3e367acf535              # double 0.99852152108329639
	.quad	0x3fd225ab955a6caa              # double 0.28354920945430229
	.quad	0x3febbf86e0d199d8              # double 0.86712974462426029
	.quad	0x3fe012a1eea6dd56              # double 0.50227448093111593
	.quad	0x3fe7731a638f79ac              # double 0.73280066914940312
	.quad	0x3fdb6550a64816c8              # double 0.42805877912938373
	.quad	0x3fe538a2cfaa761e              # double 0.66316357192744468
	.quad	0x3f986a5374b10d00              # double 0.023843101498880692
	.quad	0x3fb08f4d8c61e760              # double 0.064686629078918312
	.quad	0x3fd11634a00fd2ee              # double 0.26698032027279239
	.quad	0x3fe93c29260efaa5              # double 0.78859383996298915
	.quad	0x3fb16653c8cfdad8              # double 0.067967640425062981
	.quad	0x3fe48c0148f7a548              # double 0.64209045649946805
	.quad	0x3fce2fa05082b948              # double 0.23582843714889123
	.quad	0x3fba00cc274ea430              # double 0.10157466849945318
	.quad	0x3fdbb3970c16ebec              # double 0.43283630543345342
	.quad	0x3fc4abc050605aa8              # double 0.16149143147113887
	.quad	0x3fe2d27ab69f8137              # double 0.58819327992026771
	.quad	0x3fd99c94f68e46d0              # double 0.40018199994765968
	.quad	0x3fee88939d3e32b3              # double 0.95417195045009462
	.quad	0x3fdb8a3d0b721b08              # double 0.43031240575548724
	.quad	0x3fe059120e097840              # double 0.51087286702728107
	.quad	0x3f7877c80f0c8000              # double 0.0059736075207013073
	.quad	0x3fc46e668e6798f8              # double 0.15961915925362979
	.quad	0x3fd8f93e68785b98              # double 0.39021263315356114
	.quad	0x3fc2f9a226e987e4              # double 0.14824320697795124
	.quad	0x3fe6c6d85dbfde54              # double 0.7117730933231976
	.quad	0x3fd8e784cf99d5be              # double 0.38913078568961257
	.quad	0x3fc1116b8a364420              # double 0.13334411858207407
	.quad	0x3fb84e949201dcf8              # double 0.094949041029270265
	.quad	0x3feb851bfbf1762f              # double 0.85999869544656871
	.quad	0x3fd7121acf723bfa              # double 0.36048002489491149
	.quad	0x3fe478765abcf2d1              # double 0.63970487329751269
	.quad	0x3fe5f70e3377246d              # double 0.68640813876949169
	.quad	0x3fd7893645571b24              # double 0.36774975558766898
	.quad	0x3fe81fa5605a6af2              # double 0.7538630372904136
	.quad	0x3fcbfbc407debe70              # double 0.21862078079492475
	.quad	0x3fd38ea571704872              # double 0.30558143690098583
	.quad	0x3fedfa8bb2ea5e83              # double 0.93683419174608706
	.quad	0x3fd2a607bd6ec22c              # double 0.29138368129045733
	.quad	0x3fe698695d184351              # double 0.70610492880414644
	.quad	0x3fe171209e0c6c27              # double 0.54505949848988144
	.quad	0x3fe0ecc4f954f000              # double 0.52890251824965162
	.quad	0x3fdd98f9d573f982              # double 0.46246190876981796
	.quad	0x3fbfa9e4c19a0aa0              # double 0.12368612028698545
	.quad	0x3fe5c46c350b68be              # double 0.68022737846629133
	.quad	0x3fd8ba297aa57cea              # double 0.38636242844763891
	.quad	0x3f71b8e184ccbd00              # double 0.004326706822026738
	.quad	0x3fe295f7b3a49b94              # double 0.58080658995173673
	.quad	0x3faf6d6e5064d730              # double 0.061381766618451628
	.quad	0x3fb45ced5cc54b10              # double 0.079542956494418115
	.quad	0x3fef6314a2733dfb              # double 0.98084480026767495
	.quad	0x3fe0a1905bf3eeff              # double 0.51972215613884021
	.quad	0x3fefff63a60f11a2              # double 0.9999254458748974
	.quad	0x3fac62f5597809a0              # double 0.055442492648597907
	.quad	0x3fd781d632813a7c              # double 0.36729960376843684
	.quad	0x3fdd4f5aa980b23a              # double 0.45796839287757829
	.quad	0x3fea52a97165deef              # double 0.82259056232484606
	.quad	0x3fd045e828ad99a4              # double 0.25426677677605825
	.quad	0x3fe18e1e95e8aab9              # double 0.54859856871674773
	.quad	0x3fe0a0d6cb42802b              # double 0.51963367175267672
	.quad	0x3fef14ff3161421c              # double 0.97131309170260093
	.quad	0x3feb8415c4153ab9              # double 0.85987366006323562
	.quad	0x3fe612e09336e2ab              # double 0.68980435135661844
	.quad	0x3fde32022355a3b2              # double 0.47180226755750276
	.quad	0x3fed3e6ffd352728              # double 0.91387175993552194
	.quad	0x3fd476c285d5d92a              # double 0.3197485262857237
	.quad	0x3fed9cbb091a6af4              # double 0.92538215425460501
	.quad	0x3fe0faae6ac86666              # double 0.53060074668901502
	.quad	0x3fe5d045463c5ef6              # double 0.68167365758833287
	.quad	0x3fcecd904e3c3060              # double 0.24064830608438381
	.quad	0x3fe9767d008e07aa              # double 0.7957139025531792
	.quad	0x3fd49f5c3240134e              # double 0.32222657115226105
	.quad	0x3fe7082f8b6edcbb              # double 0.71974923356074016
	.quad	0x3fe426fed9c91c38              # double 0.62976019417045048
	.quad	0x3fde741f0a9c95b4              # double 0.47583747898383
	.quad	0x3feffb6facaefd29              # double 0.99944289901023808
	.quad	0x3fdf579705c722b2              # double 0.48972106518025804
	.quad	0x3f715174ca118180              # double 0.0042280733187854969
	.quad	0x3fd65fc7d5c46106              # double 0.34959598422712224
	.quad	0x3fb01f7ba7d6beb0              # double 0.062980392910271688
	.quad	0x3fdfe7a979cbbef4              # double 0.498514527264873
	.quad	0x3fcfdcc60ad0bec8              # double 0.24892497566314931
	.quad	0x3fe583097c6cd3ca              # double 0.67224573423174516
	.quad	0x3fec0ee0106d6c56              # double 0.87681582649691836
	.quad	0x3facc8e5ecf478e0              # double 0.056220231223265804
	.quad	0x3fd925bf72d134ca              # double 0.39292894566171965
	.quad	0x3fd03ac98795edf4              # double 0.25358808747088735
	.quad	0x3fe4c02104f82d5e              # double 0.6484532448825282
	.quad	0x3fde3fae4ae79d3e              # double 0.47263676943699184
	.quad	0x3fdbfff124cd8d6a              # double 0.43749645799672143
	.quad	0x3fb0e7803e515928              # double 0.066032424177454474
	.quad	0x3fe0379ddbfb6a0a              # double 0.50678914036990474
	.quad	0x3febb307cef29469              # double 0.86560430926750798
	.quad	0x3fdb8e32f1ea0556              # double 0.43055413841655843
	.quad	0x3fdc1150a0fe154a              # double 0.43855682107853922
	.quad	0x3fe4d0ac8f348655              # double 0.65047290773163502
	.quad	0x3fe3b9abf1d7b8b6              # double 0.61641499743361439
	.quad	0x3fa78d523fe082a0              # double 0.046000070855602759
	.quad	0x3fee2267ce6ef175              # double 0.94169988936441362
	.quad	0x3feceb3aa4f2fcf0              # double 0.90371448723445091
	.quad	0x3fd58a165db7b5cc              # double 0.33655318405257328
	.quad	0x3fed36c025cd4d3b              # double 0.91293342002101185
	.quad	0x3fea743ff55303e7              # double 0.82669065394304375
	.quad	0x3fed166e2bf4730c              # double 0.90898808083474724
	.quad	0x3fe0ddc6ce50e33a              # double 0.52707233711325974
	.quad	0x3fe5b8821e3d3d1d              # double 0.67877298265549124
	.quad	0x3fde9a83b074fe38              # double 0.47818081123475364
	.quad	0x3fba6df96e3f43b0              # double 0.10324057523327101
	.quad	0x3fb50c9f34f0ff40              # double 0.082223844933648316
	.quad	0x3fda3ff2d9d8727e              # double 0.41015311502432172
	.quad	0x3fe5a15626fbaff0              # double 0.67594440091988695
	.quad	0x3fe59c53f83d3689              # double 0.67533300861551127
	.quad	0x3fc9bc7414c02ae8              # double 0.20106364262786447
	.quad	0x3feaa6855986d9fd              # double 0.83282725797363322
	.quad	0x3f92b7b656854120              # double 0.018278931647104035
	.quad	0x3fe2439e816a9329              # double 0.57075429226515439
	.quad	0x3fd68ce8e470de78              # double 0.35235044773751367
	.quad	0x3fe1655350c12308              # double 0.54361882946349827
	.quad	0x3fe99ba9b486212f              # double 0.80025182016928464
	.quad	0x3feb098466e422a5              # double 0.84491176696709103
	.quad	0x3feb3da0a3aebabd              # double 0.85127288789029587
	.quad	0x3fde9550ff0b03fc              # double 0.47786354929490904
	.quad	0x3fbdb80c35983410              # double 0.11608959492168958
	.quad	0x3fe237fd308e294c              # double 0.56933459742985226
	.quad	0x3fe39e76129e204c              # double 0.61309341083779989
	.quad	0x3fd87a858d3c8554              # double 0.38247813027017696
	.quad	0x3fba31148a5d78d8              # double 0.10231140497259916
	.quad	0x3fa4feb34fbe8390              # double 0.04100571011009102
	.quad	0x3fd5605157605314              # double 0.33400376828039779
	.quad	0x3fef022bb9b64384              # double 0.96901499053829853
	.quad	0x3fd82c84bb51ecbc              # double 0.37771719258280334
	.quad	0x3fc4b043553a79c0              # double 0.16162912045997579
	.quad	0x3fe0db807eb38259              # double 0.52679466959313992
	.quad	0x3fd1b38ba4f60622              # double 0.27658358678317729
	.quad	0x3fd077437e107f8e              # double 0.25727927504521453
	.quad	0x3fda98c751fd2b68              # double 0.41557486540539523
	.quad	0x3fc33f202046306c              # double 0.15036393714797514
	.quad	0x3fde85d9745e0ba6              # double 0.47691952098846924
	.quad	0x3fee828ee7c3a168              # double 0.95343728319589349
	.quad	0x3fe784d5d7d15fd8              # double 0.73496524955680353
	.quad	0x3fe0911ef3ee2977              # double 0.51771495478287377
	.quad	0x3fc138bdf2c7fdc8              # double 0.13454412798453874
	.quad	0x3fea614fa20a31c3              # double 0.82437879227068611
	.quad	0x3fd86d8bf3ba7b94              # double 0.38168619920355096
	.quad	0x3fe5febca17ae04a              # double 0.68734580554065272
	.quad	0x3fe56ba7f23f44f5              # double 0.66939160646339124
	.quad	0x3fe2dfc709f5bfd9              # double 0.58981658883385102
	.quad	0x3fdd82942a417484              # double 0.46109489561587957
	.quad	0x3fe89b5b93c40b26              # double 0.76896456585413797
	.quad	0x3fda2994af7775b0              # double 0.40878789077199951
	.quad	0x3fea0fe4ae0f707b              # double 0.81444009777216253
	.quad	0x3feedf93aed7df0a              # double 0.96479210042068186
	.quad	0x3fe1d1d3743f2db4              # double 0.55686352447940246
	.quad	0x3fefec6306dc2b01              # double 0.99760581340646592
	.quad	0x3fdf837f5b72478e              # double 0.49240096979439663
	.quad	0x3fe2e5ea8e1780d7              # double 0.5905659461241396
	.quad	0x3fef90e3ef0f2e1d              # double 0.98643681231755275
	.quad	0x3fd0536b7ed545ea              # double 0.25509154687924129
	.quad	0x3fe98c0f673cad7e              # double 0.79834718860131182
	.quad	0x3fea5e514d091184              # double 0.82401337667447238
	.quad	0x3fe50532a21d94e0              # double 0.65688449538415838
	.quad	0x3fdba25b4ef96db4              # double 0.43178446495377476
	.quad	0x3fd12baa39e2291a              # double 0.26829009678535132
	.quad	0x3fe9f6dec0ef9f2f              # double 0.81138551409546789
	.quad	0x3fd80058eb128208              # double 0.37502119976309745
	.quad	0x3fbf43c413d55ed0              # double 0.12212777599540492
	.quad	0x3fcc39278a1da48c              # double 0.220494215430595
	.quad	0x3fe11fbb0dc8b32d              # double 0.53512337391075493
	.quad	0x3fe609d8918de0bd              # double 0.68870190075451598
	.quad	0x3fd7605c72d9a826              # double 0.36525641647188178
	.quad	0x3feca16f17c54552              # double 0.89470629351323283
	.quad	0x3fdaf0537dc8b2d6              # double 0.42091834338752443
	.quad	0x3fe3ca72e934304e              # double 0.61846299693707762
	.quad	0x3feef7661e1e208a              # double 0.96770006067619474
	.quad	0x3fdd38c1453c5110              # double 0.45658904801645495
	.quad	0x3fe5b2e45413ea7c              # double 0.67808739110417049
	.quad	0x3fda5cde17950d24              # double 0.41191818526222534
	.quad	0x3fd886eb72742200              # double 0.38323484589685108
	.quad	0x3fd6424a97a125fa              # double 0.34779610450331655
	.quad	0x3fec935c7afaccf3              # double 0.8929884340235773
	.quad	0x3fd630db47580fca              # double 0.34673196761309255
	.quad	0x3fe349ab1aaa41f7              # double 0.60274272163411424
	.quad	0x3fef395c29680885              # double 0.97575195395644753
	.quad	0x3fe94e1ce824fc8d              # double 0.79078526821821671
	.quad	0x3fe9bc6c9ac70805              # double 0.80425100545858241
	.quad	0x3fe39d62a1ebb1b9              # double 0.61296207070477415
	.quad	0x3fdc37895a16d3e8              # double 0.44088968084116553
	.quad	0x3fecdf05e72db8f9              # double 0.90222449447699582
	.quad	0x3fac7b4920710310              # double 0.055628094873560241
	.quad	0x3fd21a612625f8e0              # double 0.28286007619307263
	.quad	0x3fd9b9db50bddd30              # double 0.40196879277160047
	.quad	0x3fcf273daa9af008              # double 0.24338503675778633
	.quad	0x3f6894db0d6dc900              # double 0.0030006674164094749
	.quad	0x3fe19ab295903c73              # double 0.55013398372274336
	.quad	0x3fe1641f5841e9fa              # double 0.54347197759426469
	.quad	0x3fe0c51fbff581f2              # double 0.52406299106593068
	.quad	0x3fdc28e849452cee              # double 0.43999678759855854
	.quad	0x3fe692894a801f78              # double 0.70538773108363184
	.quad	0x3fef8f3d1e1deb8f              # double 0.98623519785120261
	.quad	0x3fde88ff582e1d2a              # double 0.47711166011181894
	.quad	0x3fb7433a65229ca8              # double 0.090869569483958856
	.quad	0x3fe814e8fdfcbc8c              # double 0.75255250555882602
	.quad	0x3fe2c99350bad397              # double 0.58710637824570966
	.quad	0x3fe557f5bbbf045e              # double 0.6669872919957347
	.quad	0x3fdc4566dff019a2              # double 0.44173595303473168
	.quad	0x3fd4bc431474f450              # double 0.32399060247172873
	.quad	0x3fddae56fa6219ca              # double 0.4637658543728348
	.quad	0x3fb013e6db200d90              # double 0.062803677079548814
	.quad	0x3fb06a71b08a9128              # double 0.06412420806970387
	.quad	0x3fc4c808adb9d4a8              # double 0.16235455019674316
	.quad	0x3feb09735c6759b1              # double 0.84490364120101991
	.quad	0x3fe84dd79517cc04              # double 0.7595022117587864
	.quad	0x3fe555a1e19bf6a6              # double 0.66670316757491288
	.quad	0x3fb8995a8a3a6b30              # double 0.096089991328352608
	.quad	0x3fe14baaca06a4a9              # double 0.54048671205705034
	.quad	0x3fd73bca958793c2              # double 0.36302437403201904
	.quad	0x3fe8cf1dc031e965              # double 0.77528274095611194
	.quad	0x3fd3967c61f5eec4              # double 0.3060599285742962
	.quad	0x3fefac12861dab82              # double 0.98975492662917497
	.quad	0x3fb62570d7f4a578              # double 0.0865088011966203
	.quad	0x3fc9242444272bbc              # double 0.1964154560831427
	.quad	0x3fc94725a87fdb60              # double 0.19748373725425505
	.quad	0x3fe25107f4c02088              # double 0.57239148905593229
	.quad	0x3fe827438947f730              # double 0.75479294598310354
	.quad	0x3fdd1dc95e66a898              # double 0.45494302958344113
	.quad	0x3fca311c6e893b60              # double 0.20462375066059746
	.quad	0x3fecb543f6b1cac6              # double 0.89712713415641399
	.quad	0x3fed796d9a9bc83b              # double 0.92107277104356144
	.quad	0x3f908e114046b820              # double 0.016166944072829037
	.quad	0x3fd61b78e5768eb2              # double 0.3454267731524211
	.quad	0x3fc30716a7045270              # double 0.14865382342454181
	.quad	0x3fd3151ea027a08a              # double 0.29816403999439756
	.quad	0x3fe783bfa944c53e              # double 0.73483260212211809
	.quad	0x3fefac17784734ff              # double 0.9897572850401558
	.quad	0x3fde137308958b8e              # double 0.46993709409996931
	.quad	0x3fed9a204f1326cc              # double 0.92506423420237515
	.quad	0x3fe3cbd7db0da833              # double 0.61863320144516931
	.quad	0x3f9e0b55dc720240              # double 0.02934011610023135
	.quad	0x3fe291dd5d9650fd              # double 0.58030575064415724
	.quad	0x3fc4aad636009c04              # double 0.16146352421603194
	.quad	0x3fa2ecb5d0183fc0              # double 0.036962205555141292
	.quad	0x3fcd0791dfc915a8              # double 0.22679351260209768
	.quad	0x3fd7c56240aae5f2              # double 0.37142235102837085
	.quad	0x3fdd1766deea85fe              # double 0.45455333489562111
	.quad	0x3fe4e12c2fd03ff7              # double 0.65248689020700013
	.quad	0x3fe5dbc9a9eed959              # double 0.68307955923118435
	.quad	0x3fe38c838bf67f63              # double 0.61090257011890647
	.quad	0x3fd25d7edb611bf4              # double 0.28695651458514182
	.quad	0x3fe282a5ed741565              # double 0.57844826104762304
	.quad	0x3f9909a8b0495c20              # double 0.024450908431699614
	.quad	0x3fd3e8e804f3e854              # double 0.31109047397297229
	.quad	0x3fba4bd6c935be10              # double 0.10271971142150726
	.quad	0x3feb250ef41448e3              # double 0.84827373191572197
	.quad	0x3fe4bb83dac2421f              # double 0.64789002157528219
	.quad	0x3fe749a35a89f550              # double 0.72773902591112893
	.quad	0x3fdaf544b2d4b99e              # double 0.42121999229393647
	.quad	0x3fabb7ff0f37d460              # double 0.054138155563045798
	.quad	0x3febd6fbc0c2095c              # double 0.86999309204137942
	.quad	0x3fcb6609a5dc18f4              # double 0.21405144308682333
	.quad	0x3fdf28370af9913e              # double 0.48682952949299707
	.quad	0x3fb2dc2c409e5ac8              # double 0.073672071243303994
	.quad	0x3fe0458bf43f07b1              # double 0.50848958687151058
	.quad	0x3fe7b2e78509303f              # double 0.74058891280720462
	.quad	0x3fe98fe3496cf9ad              # double 0.79881443348840764
	.quad	0x3fe55b77bccdd71f              # double 0.66741549373429965
	.quad	0x3fdcd9883b84b5d0              # double 0.45077710926383663
	.quad	0x3fc15a7a34cb8548              # double 0.135573650149164
	.quad	0x3fe48a54157dca41              # double 0.6418857974770803
	.quad	0x3fcdfe4a0d6d621c              # double 0.23432279258374045
	.quad	0x3fc4253115410404              # double 0.15738500154296287
	.quad	0x3fde3f11e7b74b42              # double 0.47259948376192906
	.quad	0x3fc23413a5bb94bc              # double 0.14221425621432171
	.quad	0x3fe1370f6b76e09d              # double 0.53797121991285091
	.quad	0x3fe80b5fcd26f30e              # double 0.75138845509317931
	.quad	0x3fe79f1b238da90e              # double 0.73817212051406655
	.quad	0x3fd344c245219cfa              # double 0.30107170821288742
	.quad	0x3fdb5a24ca51a748              # double 0.42737693555556122
	.quad	0x3fde2a27f9bdca9c              # double 0.47132300747686329
	.quad	0x3fd3a019efcdb728              # double 0.30664680879896133
	.quad	0x3fe318665d6ae570              # double 0.59672849889390811
	.quad	0x3fd0dd75ca152ae4              # double 0.26351685270917202
	.quad	0x3fc66a6b862a2928              # double 0.17512268115053442
	.quad	0x3fef15452173e5f9              # double 0.97134644063697728
	.quad	0x3fe22de235bfaeb7              # double 0.56810102937512041
	.quad	0x3fcb7dcc20ab3454              # double 0.21477653117327355
	.quad	0x3fe02590e163a1e4              # double 0.50458568593336084
	.quad	0x3fd4bd1980be890c              # double 0.32404172489818062
	.quad	0x3febb1af6c2f4d70              # double 0.86544009332503258
	.quad	0x3fe5a53e97616284              # double 0.676421447434294
	.quad	0x3feff96314ffe554              # double 0.99919275380595218
	.quad	0x3fee09c9a31417fb              # double 0.93869478083865887
	.quad	0x3fed625815b95f83              # double 0.91825489275923677
	.quad	0x3fe67f7496e94051              # double 0.70305852389175005
	.quad	0x3fbbed298cef5470              # double 0.10908755961220762
	.quad	0x3fbb3d746735a608              # double 0.10640647430195582
	.quad	0x3fa8fa78a8351df0              # double 0.04878594449342788
	.quad	0x3fbd51f9210a37c8              # double 0.11453206116331593
	.quad	0x3fe62043980e9a44              # double 0.69143848131791019
	.quad	0x3fdc4b17b0f60da4              # double 0.4420832851539791
	.quad	0x3fecebe4055033ed              # double 0.90379525220634849
	.quad	0x3fb5e4a08da6ff78              # double 0.085519823630418546
	.quad	0x3fe5ac64ea6b6196              # double 0.67729421410608626
	.quad	0x3fd752b6d2e1672e              # double 0.36442347139164866
	.quad	0x3fe9fbec097a33f3              # double 0.8120021996597856
	.quad	0x3feadeb4f62035e5              # double 0.83968589850854569
	.quad	0x3fe1857ecb2a5745              # double 0.54754581146946946
	.quad	0x3fe169ba05477d91              # double 0.54415608435731333
	.quad	0x3fc0c09120a172e0              # double 0.13087667554181959
	.quad	0x3fd1d6e49eed6dec              # double 0.27874103088626501
	.quad	0x3fed050d9f056d8f              # double 0.906866846645629
	.quad	0x3fe8c2593262cb0b              # double 0.77372417298315221
	.quad	0x3fe775a4ec940d27              # double 0.73311086851791607
	.quad	0x3fe82292aa2e23f3              # double 0.75422032583548881
	.quad	0x3fa542453c96f910              # double 0.041521228452881087
	.quad	0x3fec74dd371a8ec0              # double 0.8892656399006782
	.quad	0x3fe9fd74fedcaac8              # double 0.81218957689028404
	.quad	0x3fef927a15817c05              # double 0.98663047981597229
	.quad	0x3fe126e91873d67c              # double 0.53599982047917605
	.quad	0x3feb25e31b1a7856              # double 0.84837489408142619
	.quad	0x3fa1e8cf28261aa0              # double 0.034979318285924821
	.quad	0x3fded314aaa7e8f2              # double 0.48163334527602253
	.quad	0x3fe219f444b4d4c6              # double 0.56566823405469147
	.quad	0x3fca26a554df46d0              # double 0.2043043770232118
	.quad	0x3fc71fc6eb69e6e4              # double 0.18065725798424304
	.quad	0x3fdce25159a771e2              # double 0.4513133407142772
	.quad	0x3fe4b95df7bcad70              # double 0.64762781511437417
	.quad	0x3fe8708c6de5fda9              # double 0.76373883690387345
	.quad	0x3fe82ca78b899913              # double 0.75545098546425249
	.quad	0x3fec9b7b2c883001              # double 0.89397963235524014
	.quad	0x3fe30d221b7c2b00              # double 0.59535317772073881
	.quad	0x3fe7e136eab2309d              # double 0.74624200667451002
	.quad	0x3fb2266ea8da44c0              # double 0.070898929809362521
	.quad	0x3feecee691ab1866              # double 0.96275642824981555
	.quad	0x3fdb04648c3a7374              # double 0.42214311308071406
	.quad	0x3fda4d92bb20cadc              # double 0.41098469042041841
	.quad	0x3fe7e8dc8260949c              # double 0.74717545952138975
	.quad	0x3fe4a62d0b4c3388              # double 0.64528515059065317
	.quad	0x3fdbe14561f25214              # double 0.43562445225805502
	.quad	0x3fe2fec58002f0fe              # double 0.59360003473514644
	.quad	0x3fea5b0c80bc4501              # double 0.82361436027181878
	.quad	0x3fe1dc913516401a              # double 0.55817470902002531
	.quad	0x3fd67136dd32ccf2              # double 0.35066005326662186
	.quad	0x3fb2cc3633cd6250              # double 0.073428523680726387
	.quad	0x3fe1c23ea3be402b              # double 0.55496150952422363
	.quad	0x3fe85d72a69d3418              # double 0.76140720884143587
	.quad	0x3fc56a223ef292c8              # double 0.16730144570933292
	.quad	0x3fe9c8b4b2d22389              # double 0.80575022626827419
	.quad	0x3fe550de27a4c92f              # double 0.66612155669125694
	.quad	0x3fd057d3c2f9b106              # double 0.25536054649889228
	.quad	0x3fe2af2a302e3d63              # double 0.58388242159155046
	.quad	0x3fcdbf72bea06284              # double 0.23240503604826668
	.quad	0x3fe127d85c680d6f              # double 0.536113911134107
	.quad	0x3fe9385d21e9de6b              # double 0.78813034652462244
	.quad	0x3fe452f54f7079cc              # double 0.63512673869609548
	.quad	0x3fe006dd64c1a1a6              # double 0.50083799056033196
	.quad	0x3fe75e092b810778              # double 0.73022898194197605
	.quad	0x3feecea5b52e15b8              # double 0.96272549998018686
	.quad	0x3f899c402c37b5c0              # double 0.012505055760778983
	.quad	0x3fe31dfa0a235154              # double 0.59740926723547227
	.quad	0x3fe949938a38e95f              # double 0.79023148533387289
	.quad	0x3febd60a5fe3a908              # double 0.86987799385431774
	.quad	0x3fe38d39f642284a              # double 0.61098955247258258
	.quad	0x3fea2a4fdce601c3              # double 0.8176650347159512
	.quad	0x3fd5cd93159f39fa              # double 0.34067227469941452
	.quad	0x3fdb40fd9d1ae942              # double 0.42584171621605915
	.quad	0x3fec56ada936b605              # double 0.88558085488847438
	.quad	0x3fe1b4fa60edfb7b              # double 0.55334204608503457
	.quad	0x3fe572c43e4f3cdf              # double 0.67025959176853778
	.quad	0x3fb8c71514e38228              # double 0.096787755584508361
	.quad	0x3feba405c31da4fb              # double 0.86377227886728691
	.quad	0x3fc7c472effd4dd4              # double 0.18568264692531378
	.quad	0x3fa5caf78a41efc0              # double 0.042564139964241132
	.quad	0x3fe763cc702c0054              # double 0.73093244465418161
	.quad	0x3feca7437ea2bd3a              # double 0.89541792615447169
	.quad	0x3fe2e6bbe802cab3              # double 0.59066577257757158
	.quad	0x3fe8ee45360c0017              # double 0.77908573680906812
	.quad	0x3fc9ae2d884966b4              # double 0.20062798647523084
	.quad	0x3f945dd6a2837d60              # double 0.019889215153736983
	.quad	0x3fd3eaebe6f113f6              # double 0.31121347000981758
	.quad	0x3fe896e010ef4d1a              # double 0.76841738994190512
	.quad	0x3fd1622a2a5363aa              # double 0.27161649831173895
	.quad	0x3fda9d05e55164a0              # double 0.41583392519312135
	.quad	0x3fea4cf80d10c3ff              # double 0.82189562370160718
	.quad	0x3fdb1c3e8a8ad104              # double 0.42359889535443096
	.quad	0x3fd948c47c7fd19e              # double 0.39506637724050531
	.quad	0x3fd8cbba244cd454              # double 0.38743451638157933
	.quad	0x3fd256ac909c85f6              # double 0.28654016611298461
	.quad	0x3fc02cc0f2c9fac4              # double 0.12636577467852395
	.quad	0x3fe87113f55848d5              # double 0.7638034622089217
	.quad	0x3fa46c924324ae90              # double 0.039890833564951156
	.quad	0x3fac0b95d7025140              # double 0.054775888916227533
	.quad	0x3fcb6641d423bed4              # double 0.21405814035778425
	.quad	0x3fe7b105281a75f3              # double 0.7403589041966242
	.quad	0x3fd78a84ae8806d0              # double 0.36782948535993132
	.quad	0x3fd7c3ce709a622e              # double 0.37132607456581723
	.quad	0x3fdb14671b3295f6              # double 0.42312028556838699
	.quad	0x3fed6c5db461fea1              # double 0.91947827559484463
	.quad	0x3fd0e8582648b8ae              # double 0.2641811727397777
	.quad	0x3fee50b65ab11555              # double 0.94735257828930719
	.quad	0x3fe5bc07a4b7e6ea              # double 0.67920286342197511
	.quad	0x3fe72f1d5c1603e9              # double 0.72450130448862382
	.quad	0x3fecce99e130877c              # double 0.90021985990846031
	.quad	0x3fcf87a52c694a88              # double 0.24632706326027098
	.quad	0x3fe0d7123cff547e              # double 0.52625381387282721
	.quad	0x3fdfd4c7b5cfeaec              # double 0.49736206774802727
	.quad	0x3feb3c7e787e9c90              # double 0.85113452467057193
	.quad	0x3fe7a74874601c3e              # double 0.73917029122902256
	.quad	0x3fcb04ceac3a0e7c              # double 0.21108420762549318
	.quad	0x3fdf497f2d6088e6              # double 0.48886088782650317
	.quad	0x3fcde88f85d9f958              # double 0.23365968738284937
	.quad	0x3fe285e692acd811              # double 0.57884529731268419
	.quad	0x3fdc5d1642b2d24e              # double 0.443181576857829
	.quad	0x3fe241de3bd84d32              # double 0.57054053963148577
	.quad	0x3fed640a1c105cc0              # double 0.91846185189469764
	.quad	0x3fedf9682f7ccc5c              # double 0.93669518732930212
	.quad	0x3fd3fcbaa19425d2              # double 0.31230035571260573
	.quad	0x3fdf1ebe2fb2f998              # double 0.48625139864079747
	.quad	0x3fe839683bd8625d              # double 0.75700771034741943
	.quad	0x3fee2baf042a1205              # double 0.94283247769686851
	.quad	0x3feb9234b2cced6f              # double 0.86159739419910675
	.quad	0x3fedb8be6ff96a25              # double 0.92880174512840041
	.quad	0x3fe4e12d9a699341              # double 0.65248756560013288
	.quad	0x3fc9aa8163a803b8              # double 0.20051591268568614
	.quad	0x3fb6271e7e658fd0              # double 0.086534410341811751
	.quad	0x3f76cd7cbd8f0280              # double 0.0055670616793014327
	.quad	0x3fe5e0a3abdb0edf              # double 0.68367179456296501
	.quad	0x3faa723b216cdb50              # double 0.051652763204791285
	.quad	0x3fdbe11a12fecd44              # double 0.4356141267300766
	.quad	0x3fe634f0522b136b              # double 0.69396225021828906
	.quad	0x3fed0eb86df506ef              # double 0.90804692722323732
	.quad	0x3feaf44980a33fdb              # double 0.8423202049689239
	.quad	0x3fd7369d6a1e06f4              # double 0.36270842898385003
	.quad	0x3fdfc1f37d083a56              # double 0.49621283731622634
	.quad	0x3fdbd2008f324f8c              # double 0.43469251617465754
	.quad	0x3feb42892d3977fb              # double 0.85187205155284518
	.quad	0x3fed3bb40f91aca3              # double 0.91353800812557429
	.quad	0x3fcae2d5e4548800              # double 0.21004747055945927
	.quad	0x3fe92fec210858d4              # double 0.78709989978485817
	.quad	0x3fd48dfe24291834              # double 0.32116654902745556
	.quad	0x3fe3dc47960f489d              # double 0.62063960369620796
	.quad	0x3fea635f916d63f9              # double 0.82463053134699671
	.quad	0x3fcfa1e1b37be2cc              # double 0.24712773574699154
	.quad	0x3fcbb253a429b78c              # double 0.21637959972161658
	.quad	0x3fedc16711a5ce9e              # double 0.92985871741116788
	.quad	0x3fa334182cd27850              # double 0.037506823989347127
	.quad	0x3fd01c75fe59c022              # double 0.25173711623119932
	.quad	0x3fd2ecd67daec2b8              # double 0.29570543550202499
	.quad	0x3fd84b818e15f08c              # double 0.37960852504307563
	.quad	0x3feeca6facde2839              # double 0.962211454040932
	.quad	0x3fc3213f6f1f3808              # double 0.14945214200855639
	.quad	0x3fc3be6433bd5f98              # double 0.15424778486589896
	.quad	0x3fecdafaa5aca200              # double 0.90173084600706943
	.quad	0x3fd02b56a93d44c0              # double 0.25264517333296155
	.quad	0x3fc8341860dc2fc8              # double 0.18908982018944998
	.quad	0x3fd771ce61598b02              # double 0.36632117754759019
	.quad	0x3f96aa9633f31260              # double 0.022135111733194157
	.quad	0x3fd49d98a2f96654              # double 0.32211891093684142
	.quad	0x3fe25b8cd29ddf6d              # double 0.57367554794380526
	.quad	0x3fe62937c3674719              # double 0.69253147282344962
	.quad	0x3fc1b855012f7a98              # double 0.13843786771663669
	.quad	0x3fe263e7a183c4cf              # double 0.57469541116565803
	.quad	0x3fef31c91ebde9d1              # double 0.97482734684245475
	.quad	0x3fd1768c548ce60e              # double 0.27286060578225679
	.quad	0x3fc0777ad8d48450              # double 0.12864623629960414
	.quad	0x3fd034d77f7d862c              # double 0.25322520685412786
	.quad	0x3fda90572196e1f6              # double 0.41505983619893472
	.quad	0x3fe9643a63e1fae3              # double 0.79348487385126665
	.quad	0x3fb8d6686f5eaab0              # double 0.097021605672731991
	.quad	0x3fceae685f155cc0              # double 0.23969750063654338
	.quad	0x3fd2f14c64a098ec              # double 0.29597768618476894
	.quad	0x3fdf37f80482509e              # double 0.48779106560074037
	.quad	0x3fe62fb85a702a7c              # double 0.69332521117878754
	.quad	0x3febb8edbfcdf0b6              # double 0.86632430517013037
	.quad	0x3fcaa50e8ce787f0              # double 0.20816213493441138
	.quad	0x3fe9092625548b1d              # double 0.78236682215751652
	.quad	0x3fe5b2925421c671              # double 0.67804829055803684
	.quad	0x3fef5ac4016e64aa              # double 0.97982979087386934
	.quad	0x3fe9e1401b57ca60              # double 0.80874638882080418
	.quad	0x3fe2fbf8179fc604              # double 0.59325794805607801
	.quad	0x3fe3dc50f1df41a4              # double 0.62064406624454138
	.quad	0x3fe3ae2eb32dbe0f              # double 0.61501250263057894
	.quad	0x3fe0f349cfe9c094              # double 0.52969828231836624
	.quad	0x3fe171564b2a0382              # double 0.54508509331218158
	.quad	0x3fe20b422567df92              # double 0.56387431436358981
	.quad	0x3fcf5e805ed2c50c              # double 0.24507145528836138
	.quad	0x3fcc220be13e1c98              # double 0.21978901384520522
	.quad	0x3fc399b3b0907d08              # double 0.15312811013516403
	.quad	0x3fe89f5c52a10511              # double 0.7694532026145301
	.quad	0x3fe8ea502ca145b3              # double 0.77860268322745296
	.quad	0x3fce5e5b9d782dcc              # double 0.23725457371652536
	.quad	0x3fe925da21fb54ec              # double 0.78587061535895719
	.quad	0x3fcaed99bf3d2850              # double 0.21037599408947694
	.quad	0x3fee2625b63f1ee7              # double 0.9421566543105343
	.quad	0x3fd521cab2fcfc48              # double 0.33018748740500259
	.quad	0x3fe581fefcd5306a              # double 0.67211865788841618
	.quad	0x3fe066c979e6f761              # double 0.51254724320436307
	.quad	0x3fc12ddc67cdc4ec              # double 0.13421206539673081
	.quad	0x3fcca09fb5005a18              # double 0.22365185106237173
	.quad	0x3fea248a78afb097              # double 0.81696055957356151
	.quad	0x3fe2c10ecb9ca43f              # double 0.58606662528939768
	.quad	0x3fd39f6cabedb462              # double 0.3066054991712176
	.quad	0x3fd9459110c48edc              # double 0.39487101209145492
	.quad	0x3fe2d98eb816e106              # double 0.58905731158213892
	.quad	0x3fe99e6564d2f17a              # double 0.80058545772730771
	.quad	0x3fdbc1322329cecc              # double 0.43366673883359108
	.quad	0x3fd2750d6141f222              # double 0.28839430330097759
	.quad	0x3fe283cc2cf66aa0              # double 0.57858856946707604
	.quad	0x3fc4ada6331266c0              # double 0.16154935353988797
	.quad	0x3fe74a5e130d1f62              # double 0.72782806130360833
	.quad	0x3fea4dd3b8bd593d              # double 0.82200037080728061
	.quad	0x3feb047b1296ac06              # double 0.84429696684435451
	.quad	0x3fc446932294ca30              # double 0.15840377033744479
	.quad	0x3fe7a5576bb43f0a              # double 0.73893328700975869
	.quad	0x3fe83384ed24c733              # double 0.75628897015687924
	.quad	0x3fd1bd287d22258c              # double 0.27717029781396074
	.quad	0x3fc7e1a0f5d6628c              # double 0.18657314304143247
	.quad	0x3fce744f2e2a31d4              # double 0.23792447809354533
	.quad	0x3f70420dc738f780              # double 0.0039692438327260104
	.quad	0x3fe92af9b455e887              # double 0.78649602147858466
	.quad	0x3f69f9c02288e400              # double 0.0031708481440344549
	.quad	0x3fa816954e1543c0              # double 0.047047296315788412
	.quad	0x3fdfca52cb586618              # double 0.49672384126606195
	.quad	0x3fe52c2535c20ed9              # double 0.6616388368570042
	.quad	0x3fe437c24f034c2c              # double 0.631806520769151
	.quad	0x3fefdee38a0e404f              # double 0.99595810855863387
	.quad	0x3fefd14c8e0d01fd              # double 0.99429919952677858
	.quad	0x3fe6babf26c66611              # double 0.71029622624627298
	.quad	0x3fed8dbd2e1dae03              # double 0.92355212218302574
	.quad	0x3fdb86bc90dbeefe              # double 0.43009866854093548
	.quad	0x3fc11076bb3adc34              # double 0.13331493513189374
	.quad	0x3fc2c2f15fa85a10              # double 0.14657418413908418
	.quad	0x3fdbb1cd974bebc2              # double 0.43272723937087332
	.quad	0x3fec3a88f7bdaf5f              # double 0.88214538943200782
	.quad	0x3fbcd0c6cf42a9e8              # double 0.11256067810123904
	.quad	0x3feaf8e9acc63638              # double 0.84288486237500759
	.quad	0x3fd049fbe9191bba              # double 0.25451562655910787
	.quad	0x3fe7a6aaf0ae99ef              # double 0.73909518249712203
	.quad	0x3fd0e7ad56ee9092              # double 0.26414044846956941
	.quad	0x3fe617c1ef71860f              # double 0.69040009275721725
	.quad	0x3fea24fa1e6d2d6c              # double 0.8170137972132756
	.quad	0x3feb54b94710f0b1              # double 0.85409225349532936
	.quad	0x3fe8c51a2d36293e              # double 0.77406033354171888
	.quad	0x3fd3794de5814d2a              # double 0.30427882588010624
	.quad	0x3fec2c54a4b96dfb              # double 0.88041145489427153
	.quad	0x3feaf6dcaa9dc8a4              # double 0.84263451884750795
	.quad	0x3fd6b2be741a61b0              # double 0.35465966547192362
	.quad	0x3fbb4a83fabda2b0              # double 0.10660576697922397
	.quad	0x3fdae4b3ad448a4a              # double 0.42020885391881235
	.quad	0x3fe13484b0490800              # double 0.53766092711180136
	.quad	0x3fc8b9049d24d804              # double 0.19314630196612381
	.quad	0x3f9d35f88372d4c0              # double 0.028526194594367338
	.quad	0x3fe23e648214cbb5              # double 0.57011628538599857
	.quad	0x3fe1a50643a4cb68              # double 0.55139458858171242
	.quad	0x3fed4526d36113d6              # double 0.91469136509896987
	.quad	0x3fdbb739a5169f5a              # double 0.43305817720328366
	.quad	0x3fe4fbf6a9870cfe              # double 0.65575726614807173
	.quad	0x3fd3b0dd996c601c              # double 0.30767002089260287
	.quad	0x3fb642b4b61d6dc8              # double 0.086955351316127083
	.quad	0x3febda9721c8ee5d              # double 0.87043339346514481
	.quad	0x3fe582e260d5943e              # double 0.6722270861906805
	.quad	0x3fe96339ca81dae9              # double 0.79336251785465806
	.quad	0x3fe1fa17fa6a304f              # double 0.5617790118135505
	.quad	0x3fef0623c5860ecf              # double 0.96949947909203071
	.quad	0x3fdbadadd72eec2a              # double 0.43247552885049123
	.quad	0x3fd1b8e5c4ea65ec              # double 0.27691024999657432
	.quad	0x3fe80670d1236fc9              # double 0.75078621718739058
	.quad	0x3fed94a3be5b2257              # double 0.9243944852724536
	.quad	0x3fe7f97d453ed37c              # double 0.7492052414369108
	.quad	0x3fd7498891ddee12              # double 0.36386312718215763
	.quad	0x3fe6bdf5a019c980              # double 0.71068841237710956
	.quad	0x3fbf2ce63bd70a00              # double 0.1217788597196332
	.quad	0x3fe82dda5ee902d5              # double 0.75559729134701092
	.quad	0x3fc8a4f31dd2dc3c              # double 0.19253386455759081
	.quad	0x3fea11dbf572688f              # double 0.81468007983063895
	.quad	0x3f3388f587530000              # double 2.980803904613083E-4
	.quad	0x3fea9918295211ff              # double 0.831188278869888
	.quad	0x3fedc2ae540e6bbb              # double 0.93001476685764517
	.quad	0x3f59323d7006c800              # double 0.0015378570534321234
	.quad	0x3fda7523e8e57a40              # double 0.41339967483319029
	.quad	0x3fdfaf01ed28f360              # double 0.495056611634757
	.quad	0x3fc985a233eeea8c              # double 0.19939067397884391
	.quad	0x3fd408b409ba85b0              # double 0.31303120565470532
	.quad	0x3fd230b04e7d98b8              # double 0.28422172227000031
	.quad	0x3fdc1186dd8e3310              # double 0.43856975208545723
	.quad	0x3fd11575df0102c8              # double 0.26693484094361652
	.quad	0x3fdb93d88392af0e              # double 0.43089878891872579
	.quad	0x3fd73624b514fb88              # double 0.36267965015206771
	.quad	0x3febb0370c6c52a1              # double 0.86526062418359484
	.quad	0x3fec5700ef4d29b6              # double 0.8856205629211249
	.quad	0x3fe1fcc46d060cc7              # double 0.56210538190534798
	.quad	0x3fec045d22c54554              # double 0.87553269187098203
	.quad	0x3fe8e1fd1cc7ba0f              # double 0.77758651372079324
	.quad	0x3fc69166631783ac              # double 0.17631225431889896
	.quad	0x3f73f15ff245b600              # double 0.0048688648133583534
	.quad	0x3fdff0aef56ced30              # double 0.4990651509030668
	.quad	0x3fb57de50fc4e7a8              # double 0.083952251768009689
	.quad	0x3fc23090572a42a8              # double 0.14210705047709848
	.quad	0x3fbbd08231b46730              # double 0.10865033830159798
	.quad	0x3fe143c378032678              # double 0.53952191772368874
	.quad	0x3fd2fdd9433b7088              # double 0.29674369397776745
	.quad	0x3fed72277cc03731              # double 0.92018484464072092
	.quad	0x3fdae1f26097af66              # double 0.4200406974111871
	.quad	0x3fe2ab678b777b2e              # double 0.5834233974418106
	.quad	0x3fe7fbb2f830f0c7              # double 0.74947498774374643
	.quad	0x3fd70630cdaf616a              # double 0.3597528465884553
	.quad	0x3fe238ba17d66a62              # double 0.56942467361234272
	.quad	0x3feb01c2c897fbf2              # double 0.84396495035605157
	.quad	0x3fd35300c8c8de4c              # double 0.30194110496401971
	.quad	0x3fbbc52e284b6ce0              # double 0.10847748264079682
	.quad	0x3f9b9b7ccff859c0              # double 0.026960325425614107
	.quad	0x3fd2a07fe2d65038              # double 0.2910461154181152
	.quad	0x3fe58dbaaeea0d99              # double 0.6735509315771423
	.quad	0x3fe5c5a18151cb05              # double 0.68037486322131768
	.quad	0x3fe1680a009c8b39              # double 0.54395008201058836
	.quad	0x3fe5c6e5903e5dae              # double 0.68052938625890191
	.quad	0x3fe0b63eb74405e1              # double 0.52224670213780311
	.quad	0x3fcf7e4d0751bba4              # double 0.24604189736734583
	.quad	0x3fe1a5843efab8e6              # double 0.5514546613756266
	.quad	0x3f80fa8c13069e40              # double 0.0082903807932118711
	.quad	0x3fcae77a66aa8060              # double 0.21018915188779186
	.quad	0x3fc8ea5722af48e8              # double 0.19465150064076586
	.quad	0x3fec64732af8cd75              # double 0.88726194756456656
	.quad	0x3fe13155810c32a5              # double 0.53727221684092241
	.quad	0x3fdfd8bf95601130              # double 0.49760427081516223
	.quad	0x3fe6a0a9489a72f1              # double 0.70711197071395138
	.quad	0x3fd3afd09fb04c8c              # double 0.30760589212986456
	.quad	0x3fef33c9f1ce4784              # double 0.97507188060465965
	.quad	0x3fb3b118ad17b9b0              # double 0.076921026476816534
	.quad	0x3fea04d1b278c021              # double 0.81308827264547656
	.quad	0x3f9ccbd938a5e720              # double 0.028121370394251888
	.quad	0x3fe94d210c02663f              # double 0.79066517205792042
	.quad	0x3fee748b4a158442              # double 0.95172657460728538
	.quad	0x3fcc44018659ec00              # double 0.22082537708396899
	.quad	0x3fdca21cb8e65386              # double 0.44739454323399064
	.quad	0x3fecc77c75976e6c              # double 0.89935133902640762
	.quad	0x3febded25bdb2bdc              # double 0.87094991627361251
	.quad	0x3fd87bc8fcbaedc4              # double 0.38255524330790203
	.quad	0x3fd46eb01606345e              # double 0.31925584936909057
	.quad	0x3fe6d4f09cdbc083              # double 0.71349363933951826
	.quad	0x3fe6bc0bbfe74f6f              # double 0.71045482140696758
	.quad	0x3fe04cc9ad768e7b              # double 0.50937351111902218
	.quad	0x3fe10f74b59e0465              # double 0.53313670608634978
	.quad	0x3fdf29815fbfe606              # double 0.48690828657672147
	.quad	0x3fef2f35e152cb39              # double 0.9745129967544478
	.quad	0x3fef2ed90311c914              # double 0.97446871375567178
	.quad	0x3f9500d3569e4280              # double 0.020510961686854845
	.quad	0x3fecf3b08df6b7be              # double 0.90474727370541763
	.quad	0x3fb5439089d00fc0              # double 0.08306220402306419
	.quad	0x3fea625896e6d9bd              # double 0.82450513337135301
	.quad	0x3fbfd51f5cb5ddb0              # double 0.12434574140012589
	.quad	0x3fda437842088a20              # double 0.41036802719659882
	.quad	0x3fed86bbccb389e5              # double 0.92269697170951004
	.quad	0x3fe769c68485d4e9              # double 0.73166204341273755
	.quad	0x3fda4fb372f79e92              # double 0.41111456134101687
	.quad	0x3fa4b62b404d43a0              # double 0.04045233879026644
	.quad	0x3fc466f9b7f8378c              # double 0.15939256174936778
	.quad	0x3fe0f52d65bdfed0              # double 0.52992887374417741
	.quad	0x3feef052d26dbbb6              # double 0.96683636760086844
	.quad	0x3fe0e3277ead1b37              # double 0.52772879353947288
	.quad	0x3fe3cd099f58f93a              # double 0.61877900240487027
	.quad	0x3fdbdd2622564dc8              # double 0.43537286141619491
	.quad	0x3fcdeaf4fe981000              # double 0.23373281890246744
	.quad	0x3fdef842d3fbc33c              # double 0.48390265180119107
	.quad	0x3fc3e533e8d1a6d0              # double 0.1554322134791648
	.quad	0x3fd809d2ff2fd0c4              # double 0.3755996219690696
	.quad	0x3fe0a5e7ea184b30              # double 0.52025218698176978
	.quad	0x3fa2cd70b00e5dd0              # double 0.036723634234643421
	.quad	0x3fc3800edbe30864              # double 0.15234552132284584
	.quad	0x3fdfbd29e03afcc0              # double 0.49592062852384444
	.quad	0x3fec217e2e00561e              # double 0.87908848747855806
	.quad	0x3fce12d2d49a414c              # double 0.2349494493578369
	.quad	0x3fec2deb27e1788a              # double 0.88060529507835494
	.quad	0x3fd16428001dd1ae              # double 0.27173805247664518
	.quad	0x3fd6c3bec8644114              # double 0.35569734162801692
	.quad	0x3fe12aeadc069354              # double 0.53648894284979542
	.quad	0x3fe431fe8c3b7523              # double 0.63110282315361521
	.quad	0x3fe11a7bab306e63              # double 0.53448279796016285
	.quad	0x3fdee826bab46bb0              # double 0.48291939003837125
	.quad	0x3fcd4e14df42aeec              # double 0.22894535924330428
	.quad	0x3fcb500002ddc3c4              # double 0.21337890758471023
	.quad	0x3fe34e35f3f51609              # double 0.60329721115039192
	.quad	0x3fb84205c5a8d2a0              # double 0.094757424122529076
	.quad	0x3fd785a0fa847b86              # double 0.36753105606651848
	.quad	0x3fe9534405f1a2a6              # double 0.79141427193561209
	.quad	0x3fec2b009a4670a9              # double 0.88024931079737201
	.quad	0x3fe3a53e56295f86              # double 0.61392132595482063
	.quad	0x3fee6c8ac5b2c386              # double 0.950749765519604
	.quad	0x3fad3923b8273a80              # double 0.057076565007823099
	.quad	0x3fdcaded9e85fb36              # double 0.44811573487088496
	.quad	0x3fd9c2a6f1a5a2b6              # double 0.40250562284795011
	.quad	0x3fb209b66b924148              # double 0.070460702192808644
	.quad	0x3fef86efa31335f6              # double 0.98522168970674673
	.quad	0x3fd2ec4786085cde              # double 0.29567134942176476
	.quad	0x3fea7b9f49c1dd8d              # double 0.82759060292930686
	.quad	0x3febbf9aea29dfef              # double 0.86713929877350704
	.quad	0x3febc894e3be9500              # double 0.86823505860652972
	.quad	0x3fbd970a6a6daff0              # double 0.11558594797469346
	.quad	0x3fc14c915c682770              # double 0.13514916431477841
	.quad	0x3fd6443caeb14688              # double 0.34791485843479864
	.quad	0x3fef8fb68f8785bf              # double 0.98629310639460487
	.quad	0x3fd75dd3d42fb0b8              # double 0.36510177346532258
	.quad	0x3fdfeaa40332d250              # double 0.49869633018832804
	.quad	0x3fc42bfdbbe28980              # double 0.15759250330036068
	.quad	0x3fe04a1169f3ab04              # double 0.50904150670734838
	.quad	0x3fdeb495286ed482              # double 0.4797718901493867
	.quad	0x3fcb41987f7b9b90              # double 0.21293932175396124
	.quad	0x3febdb49b8298aa5              # double 0.87051855057901106
	.quad	0x3fe71edda36555d6              # double 0.72251779473543354
	.quad	0x3fe6018c4b79ce0d              # double 0.68768896809928182
	.quad	0x3fbd8e0e355341a8              # double 0.11544884492764729
	.quad	0x3fbb1f6efaee1158              # double 0.10594838739604506
	.quad	0x3fe7497215e1b266              # double 0.72771553300624414
	.quad	0x3fe0fd0b779b3050              # double 0.53088925705515955
	.quad	0x3feaa31eeb4fbf5b              # double 0.83241220435409546
	.quad	0x3fe68fb830b2ea47              # double 0.70504388343335556
	.quad	0x3fc4e457fdc6ecac              # double 0.16321849719483816
	.quad	0x3fa78f84c65bf140              # double 0.046016835416568203
	.quad	0x3fee81597a0c9bee              # double 0.95328973615403156
	.quad	0x3fd2967c99721eba              # double 0.29043498024882874
	.quad	0x3fd98ee59c3c4560              # double 0.3993467355477005
	.quad	0x3fde56774828f886              # double 0.47402746245268934
	.quad	0x3fdb56422ecdc134              # double 0.42713980265309037
	.quad	0x3fe90f4f58546632              # double 0.78311888934985618
	.quad	0x3fcfa3d6dc4b0128              # double 0.2471874786042545
	.quad	0x3fd686ffc23fbf96              # double 0.35198968858366564
	.quad	0x3fb50c9138af5578              # double 0.082223011340223695
	.quad	0x3fda83d09c5a3b80              # double 0.4142953421477884
	.quad	0x3fd57b997eb066ea              # double 0.33566892024974371
	.quad	0x3fd2b5401efda992              # double 0.29231265093280812
	.quad	0x3fd024715f9cc61c              # double 0.25222429597042306
	.quad	0x3fe9423190c1a72a              # double 0.78933027527566435
	.quad	0x3fd6b8fee58634c0              # double 0.35504124083020017
	.quad	0x3fd58f0450b2f0d4              # double 0.33685405617485498
	.quad	0x3fe9e3b2220ecfc1              # double 0.80904490138936336
	.quad	0x3fe4ce60505b1d51              # double 0.6501924104167448
	.quad	0x3fd90ce9b9cbe45a              # double 0.39141314644036174
	.quad	0x3fd74c280c501d4c              # double 0.3640232200854896
	.quad	0x3fd2f232f57d1794              # double 0.29603265737056828
	.quad	0x3fe1a01daca21b6f              # double 0.5507953998320384
	.quad	0x3fc4671453492960              # double 0.15939573351563308
	.quad	0x3fe1a1e9c50fc6a2              # double 0.55101479042624057
	.quad	0x3fe38820ca836c85              # double 0.6103671984996174
	.quad	0x3fd7b135d04bc08c              # double 0.37019105283162257
	.quad	0x3fe44b4e82846bcc              # double 0.63419270984319942
	.quad	0x3febfdc1b547b34b              # double 0.87472615629449402
	.quad	0x3fa9fa4ddd2815f0              # double 0.050737794157651339
	.quad	0x3fe4b1eb764d361a              # double 0.64671872239859174
	.quad	0x3fdf231a68427eba              # double 0.48651752645126189
	.quad	0x3f96350d48462e80              # double 0.021686751877082688
	.quad	0x3fed8594d7a7509e              # double 0.92255632514799735
	.quad	0x3fd639ee7e9472c4              # double 0.34728586541477235
	.quad	0x3feb4203741327f6              # double 0.85180828734269087
	.quad	0x3f950d5400a8b760              # double 0.020558655300355055
	.quad	0x3fc903a05ec1df24              # double 0.1954231703455146
	.quad	0x3fead478b96fcd57              # double 0.83843647211180439
	.quad	0x3fac70eb5cfd4f70              # double 0.055549006558662906
	.quad	0x3fe43891f891141e              # double 0.63190554187952208
	.quad	0x3fe2712235b9a0b6              # double 0.57631025784669165
	.quad	0x3fd800ed03d028e6              # double 0.37505650875449559
	.quad	0x3fec3cf854014481              # double 0.88244263083664987
	.quad	0x3fc7a521421a3d7c              # double 0.18472686507855574
	.quad	0x3fdcbfeec0515070              # double 0.44921463757532987
	.quad	0x3fe8c71eff3fa8a7              # double 0.77430677273993787
	.quad	0x3fca532c5ca384d0              # double 0.20566324733139263
	.quad	0x3fd540ab025d686c              # double 0.33207202177948747
	.quad	0x3fc329d672c806bc              # double 0.14971428494032135
	.quad	0x3fef11f3390795e7              # double 0.97094117296790904
	.quad	0x3fe2f8d646afb08a              # double 0.59287561231532604
	.quad	0x3fed015a6265849b              # double 0.9064151689346035
	.quad	0x3fdc3c2ab41bac9e              # double 0.44117229069406416
	.quad	0x3fee4617c084bb19              # double 0.94605624772325136
	.quad	0x3fe2a711b7d9936f              # double 0.58289419086632488
	.quad	0x3fdf464e3096e52a              # double 0.48866610283910694
	.quad	0x3fdd4d4176880c7a              # double 0.45784031462989783
	.quad	0x3fb0d86082e61b88              # double 0.065801650960663705
	.quad	0x3fe5c483737fe495              # double 0.68023846205246008
	.quad	0x3fe420bd4ba0948b              # double 0.62899651308966165
	.quad	0x3fdebaa362fb0088              # double 0.4801414934736461
	.quad	0x3fb75c567e0a9ea0              # double 0.09125271393952028
	.quad	0x3fe30fe563b74adb              # double 0.59569043613222605
	.quad	0x3fe80728e1dbff94              # double 0.75087398636968538
	.quad	0x3fe2091907a8a0d0              # double 0.56361056800690257
	.quad	0x3fe570faa887accb              # double 0.6700413982011012
	.quad	0x3f655a7b18e0ca00              # double 0.0026066211931035088
	.quad	0x3fa49ef2f62566a0              # double 0.040275185153132442
	.quad	0x3fd21549608f62e2              # double 0.28254923276612776
	.quad	0x3fdfe490bc10e880              # double 0.49832552305054634
	.quad	0x3fd476f8d05a842e              # double 0.31976147028950919
	.quad	0x3fda5d9b514e7c52              # double 0.41196330013366833
	.quad	0x3fe589336a835550              # double 0.67299814990352935
	.quad	0x3f989e4b88d38640              # double 0.024041347719395256
	.quad	0x3fe7c0097c5f392c              # double 0.74219202319526323
	.quad	0x3fede52a998d12ce              # double 0.93422441473429685
	.quad	0x3fcbc7bb737b331c              # double 0.21703284395916789
	.quad	0x3faa73a6f44c2c30              # double 0.051663605996587925
	.quad	0x3fea6eac6d6e4257              # double 0.82600995419677303
	.quad	0x3fdc7f747812edd8              # double 0.44527923322649832
	.quad	0x3fec2d393cf8bea3              # double 0.88052045734908224
	.quad	0x3fd7f3f81f88f8ce              # double 0.37426570014566785
	.quad	0x3fbe2d6313e22738              # double 0.11788005099711263
	.quad	0x3fe2ae558172c3e6              # double 0.58378100664969845
	.quad	0x3feedfff6e86428c              # double 0.9648434790306779
	.quad	0x3fd71880a0c77f58              # double 0.36087051106550438
	.quad	0x3fdab4d07759954c              # double 0.41728603034274125
	.quad	0x3fe9fbdcd29e1a32              # double 0.81199494491813184
	.quad	0x3fee3ab14759f7ba              # double 0.94466461120440859
	.quad	0x3fe14341fdbb1207              # double 0.5394601779631224
	.quad	0x3fd7b5219f271e0a              # double 0.37043037931695777
	.quad	0x3fd2ce2693e5cbd6              # double 0.29383243983391816
	.quad	0x3f9194430e9e3c60              # double 0.017167136923998405
	.quad	0x3f916f356350b300              # double 0.017025789438934957
	.quad	0x3fe8928390f64699              # double 0.76788500130551818
	.quad	0x3fee52858302d814              # double 0.94757342899424878
	.quad	0x3fe9f4dcf48f7ad4              # double 0.81114051595417402
	.quad	0x3fe98346aeca6f7f              # double 0.79727491511174253
	.quad	0x3fe4df7cc1979342              # double 0.65228116808848591
	.quad	0x3fef64d12ee9346c              # double 0.98105677759452936
	.quad	0x3fabfa642b0316a0              # double 0.05464470887231454
	.quad	0x3fa26ac5a69b5840              # double 0.035970856273408902
	.quad	0x3fdffcaee2326806              # double 0.49979755487004274
	.quad	0x3fe5674c97909fe8              # double 0.66885976412322368
	.quad	0x3feb0a6e53a1554e              # double 0.84502331098580341
	.quad	0x3fd6540091baeafe              # double 0.34887708884677682
	.quad	0x3fd3d7ce4bdd6646              # double 0.31004674347568473
	.quad	0x3fdf2cf41800580c              # double 0.48711874336129379
	.quad	0x3fe39fccfe319712              # double 0.61325692794045694
	.quad	0x3fe18dd757ea86a4              # double 0.54856459780804245
	.quad	0x3fe2b6538f48d7b3              # double 0.58475664124738669
	.quad	0x3fda5193ca752294              # double 0.41122908374067291
	.quad	0x3feb56b4ff63cd50              # double 0.85433435326414475
	.quad	0x3fecb5273b31776b              # double 0.89711343346764971
	.quad	0x3feae5cd5aafe80b              # double 0.84055202209788271
	.quad	0x3fd18c4b4a84996e              # double 0.27418787266869671
	.quad	0x3fe369b6ca1e406b              # double 0.60665454364972271
	.quad	0x3fe75c9a4b227bb2              # double 0.73005404162164766
	.quad	0x3fceee9b1ae3f7e8              # double 0.24165667355549592
	.quad	0x3fefdb3df84cb83d              # double 0.99551294799835654
	.quad	0x3fa55b674d05b2d0              # double 0.041712978508120835
	.quad	0x3fe5105988b06938              # double 0.65824581811037941
	.quad	0x3f9ae379bc422300              # double 0.026258375277879331
	.quad	0x3fd702447af125e8              # double 0.35951339727452458
	.quad	0x3fd9a558cbcaec4e              # double 0.4007169714129234
	.quad	0x3fc7912a051190e0              # double 0.18411755797854479
	.quad	0x3fcdf6c4bcb84e6c              # double 0.23409327711907524
	.quad	0x3fc950e4cec86cbc              # double 0.19778118225881325
	.quad	0x3fc3de22e9fee6e0              # double 0.15521656442233844
	.quad	0x3fcc9d1820f0d27c              # double 0.22354413612778845
	.quad	0x3fe8e878e4082159              # double 0.77837795770123386
	.quad	0x3fdfb00c90359a8a              # double 0.49512018282840897
	.quad	0x3fea5847db79b4c5              # double 0.82327645174304875
	.quad	0x3fd9cade2aa04e34              # double 0.40300707018579662
	.quad	0x3fda8ef452949faa              # double 0.41497524322994173
	.quad	0x3fe470d17b3f09e5              # double 0.63877176353008436
	.quad	0x3fc33bbe7d74a07c              # double 0.15026074529419364
	.quad	0x3fcbcb84fedd0fc8              # double 0.21714842266567147
	.quad	0x3fea4efec2d21a33              # double 0.82214296389503827
	.quad	0x3fdb3df322805c98              # double 0.42565611237791634
	.quad	0x3fe2e0c7bb8fc8a5              # double 0.58993898995528993
	.quad	0x3fde589e0f3c6330              # double 0.47415877807502493
	.quad	0x3fe23e31c39adb85              # double 0.57009208873829265
	.quad	0x3febd2b6c488bfd3              # double 0.86947191606122443
	.quad	0x3fc21c9b48bde72c              # double 0.14149800350042463
	.quad	0x3fdc069165f0605e              # double 0.43790087656953414
	.quad	0x3fd11a2fe5a9b6fc              # double 0.26722333362600614
	.quad	0x3fca5582991945f0              # double 0.20573456264041523
	.quad	0x3fc03684ba798be0              # double 0.12666377167906173
	.quad	0x3fb3760f24cd7050              # double 0.07602018974779523
	.quad	0x3fef29829a1c9c5b              # double 0.97381715869859009
	.quad	0x3fedf01637f6a1e2              # double 0.93555746965745024
	.quad	0x3feb394ed6d9a8c6              # double 0.85074560130058141
	.quad	0x3fc0c55dd8855ae8              # double 0.1310231501799628
	.quad	0x3fd15b1a884e6b84              # double 0.27118552504696702
	.quad	0x3fc861bd588a36ac              # double 0.19048277686345239
	.quad	0x3fe27317658760e4              # double 0.57654924230430682
	.quad	0x3fc75cb42903ae9c              # double 0.18251659395842956
	.quad	0x3feb048287655bb9              # double 0.84430052227514019
	.quad	0x3fae86838dff5cf0              # double 0.05962000950210633
	.quad	0x3fed7791903fef22              # double 0.92084577726152284
	.quad	0x3fe25eaaf008dcd8              # double 0.57405611879121476
	.quad	0x3fe8aaa05ff25309              # double 0.77082842578474342
	.quad	0x3fbb7da5a50172b0              # double 0.10738597181757359
	.quad	0x3fd4dd1159f231f4              # double 0.32599290641590462
	.quad	0x3fec59f6643a2ba6              # double 0.885981746441179
	.quad	0x3fe15b8ea551863c              # double 0.5424264172435822
	.quad	0x3f8f49ab12fdb980              # double 0.015277229802191483
	.quad	0x3fdc418348c26942              # double 0.44149858575260137
	.quad	0x3fc4b65f921f2a38              # double 0.16181559214449392
	.quad	0x3fe76d3215a16d0d              # double 0.73207954621048688
	.quad	0x3fdd27189b900aac              # double 0.45551123801866811
	.quad	0x3fe0f488fdf3ef8f              # double 0.52985047912760475
	.quad	0x3fd4ff73b6371452              # double 0.32809155268143286
	.quad	0x3fee4748aec6d018              # double 0.94620165000970057
	.quad	0x3fecc284c8936dac              # double 0.89874495673159549
	.quad	0x3fe5fe6a5cf5da16              # double 0.68730657726593125
	.quad	0x3fcc02c2d6a387cc              # double 0.2188342617073985
	.quad	0x3fded50a93c25e72              # double 0.48175301007856952
	.quad	0x3fe22c926dcad70f              # double 0.56794091647927469
	.quad	0x3fe4d4ce0625cd8f              # double 0.6509771461555135
	.quad	0x3fe56e0850f4a1a8              # double 0.66968169986380577
	.quad	0x3fef17fc1814eb1c              # double 0.97167782500705213
	.quad	0x3fe8e5ce3fa47c60              # double 0.77805244856052624
	.quad	0x3fedf6f20a4c762f              # double 0.93639471065006841
	.quad	0x3fdb7de3f0355e04              # double 0.42955873926027288
	.quad	0x3fec0c5760d9aae7              # double 0.87650650898043814
	.quad	0x3fe805e1f2d7f5ec              # double 0.75071809225454222
	.quad	0x3fe37cc97725f488              # double 0.60898278494973201
	.quad	0x3fd72c40e826ba76              # double 0.36207602187179277
	.quad	0x3fbb0cbfe975bd48              # double 0.10566329431252541
	.quad	0x3fe3958986a42fee              # double 0.61200405404224312
	.quad	0x3fdf4f3524ab4c28              # double 0.48920944767923169
	.quad	0x3fda6526f199f1d4              # double 0.41242383569604368
	.quad	0x3fdf3d163648180a              # double 0.48810344029368535
	.quad	0x3fdd09336698bf02              # double 0.45368657130437395
	.quad	0x3fb315f2456aa9e0              # double 0.074553625056672512
	.quad	0x3fb8477e895f3e18              # double 0.094840916193099978
	.quad	0x3fc8f3c3d19dd80c              # double 0.19493911490616289
	.quad	0x3fb709c089364e48              # double 0.08999255514054838
	.quad	0x3fd6ec1ea138eec0              # double 0.35816159958242721
	.quad	0x3fefcfec8038ba00              # double 0.9941313270881551
	.quad	0x3fe93f11d1e5510c              # double 0.78894892688052342
	.quad	0x3feec82f85dbf84b              # double 0.96193672317873202
	.quad	0x3fe11c2a12ba5721              # double 0.53468803079406169
	.quad	0x3fe68ca422aebca2              # double 0.70466810964525828
	.quad	0x3fe9b35aa3a19093              # double 0.80314380606843583
	.quad	0x3fe37f5b76af5ffe              # double 0.60929654293704494
	.quad	0x3fe9121611090f1c              # double 0.78345778777336105
	.quad	0x3fed0e2fea1dbc3a              # double 0.90798183179675296
	.quad	0x3fd747495b9bc9ea              # double 0.36372598596713479
	.quad	0x3fe47648832b2c00              # double 0.63943887347102191
	.quad	0x3fef67fe02d1fe1a              # double 0.98144436407887103
	.quad	0x3fe3d2d0f8bb342f              # double 0.61948441105199048
	.quad	0x3fcbd0d5c762df4c              # double 0.21731064067511807
	.quad	0x3fd7998cf4790734              # double 0.36874698519033022
	.quad	0x3fece5ee03660fcf              # double 0.90306759513668478
	.quad	0x3fe82707d074bd5a              # double 0.75476446832719124
	.quad	0x3fd98379d230483c              # double 0.39864964987021145
	.quad	0x3fe2aace0917e30e              # double 0.58335019851719649
	.quad	0x3fee62bc34783d67              # double 0.94955263374315002
	.quad	0x3fbfc188bb8619b0              # double 0.12404684618204587
	.quad	0x3feb844f477f9a4e              # double 0.85990108456173586
	.quad	0x3fdf420789dffc46              # double 0.48840511764860073
	.quad	0x3fb1f2edc9c23848              # double 0.070113050229538065
	.quad	0x3fc95bffe2b52a58              # double 0.19812010354719933
	.quad	0x3fe7a674a18de60a              # double 0.73906928590366872
	.quad	0x3fdf7c84b5e303ba              # double 0.49197500002270156
	.quad	0x3fd48d9f94c00956              # double 0.32114400411969279
	.quad	0x3fd1034a0ff86ba4              # double 0.26582576331719054
	.quad	0x3fe58defa368cb9b              # double 0.67357618251695628
	.quad	0x3fe83a111e16f5fc              # double 0.75708824040310629
	.quad	0x3feddbed45fefe79              # double 0.93309653922183522
	.quad	0x3f9e6ae1651a4d20              # double 0.029704591556378834
	.quad	0x3fc99fa87e388410              # double 0.2001848808586435
	.quad	0x3fe1b3e6c59445a5              # double 0.55321062650380226
	.quad	0x3fec55c205440f79              # double 0.88546849277962203
	.quad	0x3fc8373219e9a14c              # double 0.18918443932785534
	.quad	0x3fe595d42e5df0d3              # double 0.67453965240522462
	.quad	0x3fe8cc790440c3f3              # double 0.77496004896795367
	.quad	0x3fd69a29563f95f8              # double 0.35315926954930843
	.quad	0x3fd41342783e6fbc              # double 0.31367551558082218
	.quad	0x3fd4a043a9f62d28              # double 0.32228175733389941
	.quad	0x3fd6a368e5a00576              # double 0.35372373985600036
	.quad	0x3fe7e9c1430e9d85              # double 0.74728453728759858
	.quad	0x3fcc3774a2d665f8              # double 0.2204423709015797
	.quad	0x3fab301183a820f0              # double 0.053101107903843814
	.quad	0x3febf4ca01e9f3f9              # double 0.87363148092083442
	.quad	0x3fced0c6fd37e718              # double 0.24074637760332318
	.quad	0x3fed54a75e588bf5              # double 0.91658371378832604
	.quad	0x3fe2635d8916b9d6              # double 0.57462956214095118
	.quad	0x3fe8a4d012d308db              # double 0.77011874844199768
	.quad	0x3fe568a843bc9536              # double 0.66902554731192398
	.quad	0x3fe239c982138e94              # double 0.56955409436746374
	.quad	0x3fa751766c391fe0              # double 0.045543385229904976
	.quad	0x3fd51b08dee7cff0              # double 0.32977506416432245
	.quad	0x3fedb4564f04655e              # double 0.92826381142655712
	.quad	0x3fe3f83fe5fc3c7b              # double 0.62405390662196625
	.quad	0x3fedc3718e50cdf4              # double 0.93010785861991829
	.quad	0x3fd433e92431610e              # double 0.31566837820493354
	.quad	0x3fec0e453540f6d0              # double 0.87674198533178505
	.quad	0x3fee43e929ffb432              # double 0.9457898922243031
	.quad	0x3fe66b2ccc2ba6a3              # double 0.70058288456967366
	.quad	0x3fc9607793d2ba98              # double 0.19825644224097938
	.quad	0x3fe0554f245c0e0f              # double 0.51041371442301109
	.quad	0x3fe9826eccc9cdc2              # double 0.79717197416032826
	.quad	0x3fc834759dda5718              # double 0.18910093505535808
	.quad	0x3fec083df03481dd              # double 0.87600609698352694
	.quad	0x3fdcab4eb89070a6              # double 0.44795578025674343
	.quad	0x3fdd4059ef63dcf4              # double 0.45705269220293521
	.quad	0x3fc89592d4e6ad7c              # double 0.19206462283669257
	.quad	0x3fd16b5e571cc2e2              # double 0.2721782541948824
	.quad	0x3feb4da356121b06              # double 0.85322729883850523
	.quad	0x3fecc78f57e46049              # double 0.89936034361290595
	.quad	0x3feca8b12c5c940b              # double 0.89559229530698425
	.quad	0x3fe017f0076d2e06              # double 0.50292207193837224
	.quad	0x3fa0bca3a0960970              # double 0.032689202645104554
	.quad	0x3fccbd63edb1a9f4              # double 0.22452973467018433
	.quad	0x3fe61c12cb74129d              # double 0.69092693078035305
	.quad	0x3fe71303f9b843f8              # double 0.72107123158832476
	.quad	0x3fe18cb8bd57abf3              # double 0.54842793446493798
	.quad	0x3fdafafd861d3420              # double 0.42156923386647982
	.quad	0x3fe8f69070f8aeae              # double 0.78009817185144015
	.quad	0x3fd14500a59e311c              # double 0.26983658002497335
	.quad	0x3fd71ac4c4a2b37e              # double 0.36100882723513184
	.quad	0x3fc84d19baa6ae80              # double 0.18985292066405535
	.quad	0x3fc992579d494a04              # double 0.19977851085657516
	.quad	0x3fbbb10c4e48bf68              # double 0.10817028914675364
	.quad	0x3fea5be03ced16f1              # double 0.82371532344470044
	.quad	0x3fc94a1748184348              # double 0.19757357616665616
	.quad	0x3fe2009266444532              # double 0.56256980871163464
	.quad	0x3fc1e8c74d88847c              # double 0.13991633687786365
	.quad	0x3fece686d2e6c7db              # double 0.90314046088883104
	.quad	0x3fd43c6c72d1e93c              # double 0.31618796551596851
	.quad	0x3fe17c5527e6783e              # double 0.54642732422849583
	.quad	0x3fb189bad7fe39f8              # double 0.068507840855296709
	.quad	0x3fef8689353d9c8e              # double 0.9851728477341497
	.quad	0x3fdd33345274adec              # double 0.45625026752779152
	.quad	0x3feae28029be2979              # double 0.84014900353331179
	.quad	0x3fdc6efe4b0b9c28              # double 0.44427449539802177
	.quad	0x3fdb8f237346c80c              # double 0.43061147935361599
	.quad	0x3fe208cefa85f135              # double 0.56357525759043503
	.quad	0x3fe396fcc37ad4d1              # double 0.61218107394838672
	.quad	0x3fdb1cece20cf140              # double 0.42364046168565395
	.quad	0x3fed6890b9c9b879              # double 0.91901432310784437
	.quad	0x3fdea4367e3bceec              # double 0.47877275779249717
	.quad	0x3fc942bfc13f1594              # double 0.1973495191179323
	.quad	0x3fb4b89d77907f08              # double 0.080942002954994874
	.quad	0x3fed031b98322f52              # double 0.90662936902797697
	.quad	0x3fc3ab2a06ba4db0              # double 0.15366101578238789
	.quad	0x3fe96ff5952ca2b8              # double 0.79491690765015388
	.quad	0x3fdaabd8218fa0c4              # double 0.41673854138799649
	.quad	0x3fc1d649899abdf4              # double 0.13935202807395763
	.quad	0x3fdff09e137d81ea              # double 0.49906112578722051
	.quad	0x3fd760fe369b8834              # double 0.3652949841763331
	.quad	0x3f9f3afd1751d980              # double 0.030498461292574941
	.quad	0x3feeecf1a4c11226              # double 0.96642381838370706
	.quad	0x3fe73d6d9aecd106              # double 0.72624855288316392
	.quad	0x3fee1db1cc3595ba              # double 0.94112481960899363
	.quad	0x3fec9714c32de60c              # double 0.89344251748042458
	.quad	0x3fd2d6d040f4c4d8              # double 0.29436117499706205
	.quad	0x3feed38f20f20e45              # double 0.96332508501695512
	.quad	0x3fb0c062f885d900              # double 0.065435586618921349
	.quad	0x3fec2be4a605a6b3              # double 0.88035805154978275
	.quad	0x3fd01472b2640c0c              # double 0.25124804898240494
	.quad	0x3f92eff120bf4800              # double 0.018493430732469562
	.quad	0x3fdda97354935332              # double 0.46346743830990811
	.quad	0x3fe5f45393ff96a0              # double 0.68607500940261801
	.quad	0x3fe155fb4f2c48da              # double 0.54174581016038847
	.quad	0x3f9d93852d9186e0              # double 0.028883057504919374
	.quad	0x3fc8a6f1cf203c0c              # double 0.19259474385805253
	.quad	0x3fe0abe4999f7b1a              # double 0.52098302845465416
	.quad	0x3fedcfe78e16d4ea              # double 0.93162896873277856
	.quad	0x3fef8cfa3ca20b9a              # double 0.9859591659772946
	.quad	0x3fc1febd2510ea54              # double 0.14058651265971156
	.quad	0x3fdb3a896ec4a37e              # double 0.42544780556868733
	.quad	0x3fa58715cc2a6920              # double 0.042046242878500673
	.quad	0x3fb537fe2dd54530              # double 0.082885633649557588
	.quad	0x3fbcfd328ea00270              # double 0.11323848707253048
	.quad	0x3fe5cc46618fee11              # double 0.68118590407488189
	.quad	0x3fd5c1e7b08052ac              # double 0.33996002422763172
	.quad	0x3fe4f7f22f730a5b              # double 0.65526685016113662
	.quad	0x3fdd32e1aa9edc26              # double 0.45623056089556469
	.quad	0x3fa018204a08de90              # double 0.031434067761833551
	.quad	0x3fe0d7f55cc7ab0b              # double 0.52636211510739039
	.quad	0x3fe13f726c5d0b7e              # double 0.53899499096620196
	.quad	0x3fec5029f432fc93              # double 0.88478563017987921
	.quad	0x3feab565f5efcf24              # double 0.83464334520838123
	.quad	0x3fe2a4c60d3ed45c              # double 0.58261396967885615
	.quad	0x3fe2d46dbe10b33a              # double 0.58843123552433174
	.quad	0x3fda49b7406e8aa8              # double 0.41074925701301845
	.quad	0x3fc88a221846261c              # double 0.19171549020056566
	.quad	0x3f934f693ece8a80              # double 0.018857616861746695
	.quad	0x3fd67f6085e24b8a              # double 0.35152447771650286
	.quad	0x3fc600ee02932638              # double 0.17190337300989866
	.quad	0x3fa0210f3118a530              # double 0.031502222769925203
	.quad	0x3fedacd77693839a              # double 0.92734883460444739
	.quad	0x3fd1cca4a9db7580              # double 0.2781154307138749
	.quad	0x3fee4278582278e0              # double 0.94561402524757554
	.quad	0x3fbf64586da81770              # double 0.12262489964640877
	.quad	0x3fd7f52ce357503e              # double 0.37433931542659937
	.quad	0x3feb06fb6a724a7b              # double 0.84460230627367083
	.quad	0x3fe4c9302a63270c              # double 0.6495590999486196
	.quad	0x3feb9dc9664be5f9              # double 0.86301107387333709
	.quad	0x3f8f1902ea73cfc0              # double 0.015184424190444079
	.quad	0x3fa26156fc62ce10              # double 0.035898893650848973
	.quad	0x3fc47e675afe5650              # double 0.16010753577272618
	.quad	0x3fb557591428a708              # double 0.083364074155408585
	.quad	0x3fe6cad87b08b062              # double 0.71226142911974599
	.quad	0x3feee4dfb5ded223              # double 0.96543870469628634
	.quad	0x3fed921e0592f355              # double 0.92408658112217756
	.quad	0x3fe26cd2068b4aea              # double 0.57578374174258085
	.quad	0x3fcadf319568e114              # double 0.20993633075136897
	.quad	0x3fe387817a910428              # double 0.61029123247874839
	.quad	0x3fd1d6aed76ab584              # double 0.27872820889282246
	.quad	0x3fd97081a8644e18              # double 0.3974918503238043
	.quad	0x3feac98836dd2ea4              # double 0.83710108485816592
	.quad	0x3fbcb3c16a9cb1a0              # double 0.1121178517611896
	.quad	0x3feae27fc9100513              # double 0.84014882345232633
	.quad	0x3fe0657557f0f89d              # double 0.51238505531343359
	.quad	0x3feaa1aa654e31e6              # double 0.8322345713254975
	.quad	0x3fdbb2408e597b96              # double 0.43275464917490447
	.quad	0x3fc1c91bb93f9f44              # double 0.13894983811700901
	.quad	0x3fdadb17e5a9974e              # double 0.41962239673590751
	.quad	0x3fc7eac212e56f28              # double 0.18685174868266441
	.quad	0x3feede1d8f5df4cf              # double 0.96461370469446616
	.quad	0x3fea93dde0b3be69              # double 0.83055013548978451
	.quad	0x3fcd6c17d798f868              # double 0.22986124064658786
	.quad	0x3fe7340c71546951              # double 0.72510358938897401
	.quad	0x3fe41adb0e5a06c0              # double 0.62827828219470661
	.quad	0x3fcb3b7ae4a5d8c0              # double 0.21275268711514705
	.quad	0x3fe917bfe01b5f68              # double 0.78414911051639269
	.quad	0x3fd83ec2c6a1c354              # double 0.37883061788220584
	.quad	0x3fc4b998f484a47c              # double 0.16191398562776615
	.quad	0x3fe36f2d247bf7eb              # double 0.60732133031683355
	.quad	0x3fec56ba57673289              # double 0.88558690138741369
	.quad	0x3fe03a1713265129              # double 0.50709108104868961
	.quad	0x3fd491aa3a3ea726              # double 0.3213906830593366
	.quad	0x3fc952573bcdd028              # double 0.19782534046282874
	.quad	0x3fe418c2b27ae9ae              # double 0.62802252635383637
	.quad	0x3fe3db23dee99929              # double 0.62050050294491144
	.quad	0x3febc930384ab424              # double 0.86830912584776287
	.quad	0x3fc820d39bd90990              # double 0.18850178823238339
	.quad	0x3feb9c380a171278              # double 0.86281969042518281
	.quad	0x3fe944de97b10d39              # double 0.78965692164675894
	.quad	0x3fc1b5b5cc583b54              # double 0.13835785367742892
	.quad	0x3feef0b5a4eb5abb              # double 0.96688348971186799
	.quad	0x3fe525378cc237e7              # double 0.66079308978964668
	.quad	0x3fa36e630f122b80              # double 0.037951560582846433
	.quad	0x3fb145447b3bdd48              # double 0.067463188253772732
	.quad	0x3fef00997cd35b4f              # double 0.96882318859102578
	.quad	0x3f235987de48a000              # double 1.4762671993762133E-4
	.quad	0x3fe5cffde4066e94              # double 0.68163961921841798
	.quad	0x3feb458d3711e724              # double 0.85224018817755053
	.quad	0x3fe96d25b39e7a03              # double 0.79457364160390431
	.quad	0x3fd8a7f72b09fad0              # double 0.38525180056596486
	.quad	0x3fb6ecf34298d058              # double 0.089553073653236281
	.quad	0x3fe34f9362de1fad              # double 0.60346383390514335
	.quad	0x3fec40f58b168241              # double 0.88292958417520861
	.quad	0x3fe14afee9667602              # double 0.54040475450500502
	.quad	0x3fe2e92270c01247              # double 0.59095880528963896
	.quad	0x3fcaef2a4b1b007c              # double 0.21042374293574884
	.quad	0x3fd08f399dc1c124              # double 0.25874176412527761
	.quad	0x3fcf71d5f4a4910c              # double 0.2456614918274983
	.quad	0x3fea62fcbb244b07              # double 0.82458340216757697
	.quad	0x3fec71b1a5eff33d              # double 0.88887865457181869
	.quad	0x3fe52ac7edf488f8              # double 0.66147228694560933
	.quad	0x3fe9b92122aeef64              # double 0.80384880804147629
	.quad	0x3fef5c4e13d9b452              # double 0.98001769902260549
	.quad	0x3fe92cf9938836c3              # double 0.78674010100231617
	.quad	0x3fed40b5212a8e11              # double 0.91414886930255268
	.quad	0x3fefd2f8246e7ca0              # double 0.99450308909935714
	.quad	0x3fcb2c77ba505d9c              # double 0.21229454610214027
	.quad	0x3fc556ec39a8a9f8              # double 0.16671517196057528
	.quad	0x3fdd642347c9d886              # double 0.45923692713348208
	.quad	0x3fe1107820a787c1              # double 0.53326040628257243
	.quad	0x3fe462706478a106              # double 0.63701648352892515
	.quad	0x3fe4d6e219f7cd8b              # double 0.65123086044188605
	.quad	0x3fcc1dff16c97484              # double 0.21966541874545353
	.quad	0x3fcaf2724cefe180              # double 0.21052387959185737
	.quad	0x3fd8588aee313a4c              # double 0.38040421734777818
	.quad	0x3fc8b10043cc6340              # double 0.1929016428992103
	.quad	0x3fe0acc2d69285c8              # double 0.52108899983084545
	.quad	0x3fb6ceaaaf6d8390              # double 0.089090984181451782
	.quad	0x3fe2292df8107fa6              # double 0.56752680254065946
	.quad	0x3fd40127978d0576              # double 0.31257047462357634
	.quad	0x3fa64b607f728f20              # double 0.04354383044963428
	.quad	0x3fe4034304ae253c              # double 0.6253981677447551
	.quad	0x3fd8dce40e511bf0              # double 0.3884821071446245
	.quad	0x3fc65f5cc8efb9b8              # double 0.17478523074482921
	.quad	0x3fe38c50e6bd1e89              # double 0.61087842050706442
	.quad	0x3fe3d18de153b033              # double 0.61933034905587758
	.quad	0x3feb19d4a4aa73b3              # double 0.8469031540040447
	.quad	0x3fd1644b8c7cc302              # double 0.27174652785747366
	.quad	0x3fda77c6e013de64              # double 0.41356059916095078
	.quad	0x3feb47ca1572a1db              # double 0.85251335324306454
	.quad	0x3fdb8f9cfb4945ac              # double 0.43064045467061862
	.quad	0x3fe115d428592ca5              # double 0.53391464119467413
	.quad	0x3fc4f2507e8b7de4              # double 0.1636448495764703
	.quad	0x3fe5587693c8950d              # double 0.66704872955293271
	.quad	0x3fd67d7787aff3f4              # double 0.35140789271082373
	.quad	0x3fe45c70f87ca7db              # double 0.63628433735470524
	.quad	0x3fecb55c41a4449f              # double 0.89713871784819677
	.quad	0x3fea30b4bb6daf87              # double 0.81844555480118764
	.quad	0x3fd019d05e92eb8a              # double 0.25157555804951726
	.quad	0x3fe00174eeeec196              # double 0.50017782846957703
	.quad	0x3fc70fc60dd393d4              # double 0.18016887354965994
	.quad	0x3fee57fe75807401              # double 0.94824145268978566
	.quad	0x3fc665030c7b6ad4              # double 0.17495763883092386
	.quad	0x3fc37e5dc8930bf0              # double 0.15229389470741195
	.quad	0x3fdc0ed1c3c4cf60              # double 0.4384045039944251
	.quad	0x3fe5f0e5e716b632              # double 0.68565650114550736
	.quad	0x3fd7c4d8360ec254              # double 0.37138943938319824
	.quad	0x3fe65f62eea23638              # double 0.69914385421879555
	.quad	0x3fe381199686c1b7              # double 0.60950927161871149
	.quad	0x3f9a3bba002e8e00              # double 0.025618463765239241
	.quad	0x3fd07f5c29ac200e              # double 0.25777343816344078
	.quad	0x3fee5b19f02dbe64              # double 0.94862076673412021
	.quad	0x3fc7576731b72a10              # double 0.18235483100427574
	.quad	0x3fd0e5a0f6398a8a              # double 0.26401542706859316
	.quad	0x3fc862e4fb2d1520              # double 0.19051801933725532
	.quad	0x3fea4fe5140d3f72              # double 0.82225278774602217
	.quad	0x3fd8c74c16050a70              # double 0.38716413641319658
	.quad	0x3f99c6b724ee8fa0              # double 0.025172101620810516
	.quad	0x3fd204ce3bcd127c              # double 0.28154331054637516
	.quad	0x3fe3946815431f28              # double 0.61186603691837593
	.quad	0x3fa6145f8ba2eb60              # double 0.043124185367068746
	.quad	0x3feffc3100ece563              # double 0.99953508549439751
	.quad	0x3fdf58f16db0cb70              # double 0.4898036547848994
	.quad	0x3fea68c4cb6c4230              # double 0.82528915148765769
	.quad	0x3fe8d8ed83a9f72e              # double 0.7764804431496708
	.quad	0x3fd5f447acf14282              # double 0.34303466690929707
	.quad	0x3fe1b348cd4216f9              # double 0.55313530053601234
	.quad	0x3fe50f342b867237              # double 0.65810593129169248
	.quad	0x3fe9bc04936a2c0a              # double 0.80420140067997292
	.quad	0x3fe81ce190ae4e20              # double 0.75352552659973426
	.quad	0x3fd271a104d01424              # double 0.28818536252976146
	.quad	0x3fcda84fea858800              # double 0.23169897986650767
	.quad	0x3fec737463a14440              # double 0.88909358462309029
	.quad	0x3fefc80b6c11d536              # double 0.99316950900416745
	.quad	0x3fd5124f07f15324              # double 0.32924247527744144
	.quad	0x3feff335a4874a17              # double 0.99843866476504927
	.quad	0x3fd0815d14b67424              # double 0.25789572737432054
	.quad	0x3fda640cd6e16978              # double 0.41235657677102422
	.quad	0x3fda54e72e63df94              # double 0.41143207102094803
	.quad	0x3fc0a396e25a8408              # double 0.12999235203190573
	.quad	0x3fd97ddaf09baa9a              # double 0.39830659386522316
	.quad	0x3fd624941103026e              # double 0.34598256741813926
	.quad	0x3fca3d935b2217f8              # double 0.20500413846838206
	.quad	0x3fef9badfb25ab3a              # double 0.98775385906387858
	.quad	0x3fefdc2abf8accdf              # double 0.99562585268577297
	.quad	0x3fd097890861f578              # double 0.25924897974603978
	.quad	0x3fde715fdaa62180              # double 0.47566982605396646
	.quad	0x3fd4eaa91dc13282              # double 0.3268225470135705
	.quad	0x3fdb378056806278              # double 0.42526253173267703
	.quad	0x3fd4d453f294bed6              # double 0.32545946778826129
	.quad	0x3fd3f2810d68f57c              # double 0.31167627629823591
	.quad	0x3fc30e6d7bc1b828              # double 0.14887779753502284
	.quad	0x3fc54cc8249615a0              # double 0.16640569483221856
	.quad	0x3fcdc4084bc07064              # double 0.2325449342614575
	.quad	0x3fc41d1610e9fb34              # double 0.15713764024618515
	.quad	0x3fe09e83feb4e222              # double 0.51935004947069197
	.quad	0x3fdb7150ee2b93dc              # double 0.42879126795588518
	.quad	0x3feec96a0c2c4481              # double 0.96208670022510045
	.quad	0x3fe0e56c47d8b4b3              # double 0.52800573380013416
	.quad	0x3fd553a2739e3096              # double 0.33322964945615163
	.quad	0x3fe6ec3f1f961914              # double 0.71633869332507283
	.quad	0x3fe08a62714d7779              # double 0.51689264420905012
	.quad	0x3fe2e9b9cd9fd87c              # double 0.59103098069205329
	.quad	0x3fd0946af4d93f56              # double 0.25905870352743443
	.quad	0x3fae91fe03740040              # double 0.059707582398914827
	.quad	0x3fe657a8fc68b3d6              # double 0.69820069597846657
	.quad	0x3fc775e4b7f90588              # double 0.18328532202762582
	.quad	0x3fe0a902ea36797d              # double 0.52063127274213594
	.quad	0x3fe180fa85957870              # double 0.54699445810889635
	.quad	0x3fe7975c4f227423              # double 0.73722663360570484
	.quad	0x3fe974eebfbb0f3f              # double 0.79552400061991324
	.quad	0x3fc521873007424c              # double 0.16508569569716014
	.quad	0x3fd9620efdf6f6a6              # double 0.39661001969566667
	.quad	0x3fe222a608e8a3ad              # double 0.56672956218709702
	.quad	0x3fc5acca246d8da0              # double 0.16933562067707175
	.quad	0x3fb0b5da3d433f68              # double 0.065274848896704207
	.quad	0x3fcd83d339b4f748              # double 0.23058548276633872
	.quad	0x3fef528582510239              # double 0.97882342770032615
	.quad	0x3fefeefb13f41806              # double 0.99792245766798326
	.quad	0x3fb35cbfe8b8d098              # double 0.075633997265699526
	.quad	0x3fe1c48d4f07ace4              # double 0.55524316249411898
	.quad	0x3fe9d3185187ed21              # double 0.80701843189254785
	.quad	0x3fcecd0a524e4268              # double 0.24063233393509909
	.quad	0x3fdfb89421cfd6a6              # double 0.49564078618946394
	.quad	0x3fd820cef9f28c3e              # double 0.37700247200899983
	.quad	0x3facd784e3f643a0              # double 0.056331780269039955
	.quad	0x3fe855070fdfa00a              # double 0.76037934398937179
	.quad	0x3fe9a61a7330f2a6              # double 0.80152628420144789
	.quad	0x3fdb2052a5b82d94              # double 0.42384782966174694
	.quad	0x3fbb8220f81e5280              # double 0.10745435769633538
	.quad	0x3feb288e3e4a79f7              # double 0.84870063940235141
	.quad	0x3fee6ec4b983c8ef              # double 0.95102154000622174
	.quad	0x3fe69d2c3793b4a3              # double 0.70668612341764392
	.quad	0x3fd8140f9c05e292              # double 0.37622442471141782
	.quad	0x3fe02fd10a74261b              # double 0.50583698312511005
	.quad	0x3fdbc48098a7f1cc              # double 0.43386855037513494
	.quad	0x3fda905e4fff0c0a              # double 0.41506154834877462
	.quad	0x3fde1e3cc8ddf032              # double 0.47059554687416771
	.quad	0x3fab9851ca4fe690              # double 0.053896480509093014
	.quad	0x3fe0651acc4e193c              # double 0.51234187987646562
	.quad	0x3fe090f1e111f3f2              # double 0.51769346198091015
	.quad	0x3fe07b597815cf47              # double 0.51505731062068427
	.quad	0x3f865150b30f4740              # double 0.010897283997028162
	.quad	0x3fe7e50f7249e4ff              # double 0.74671146699907343
	.quad	0x3fe18fbf85b055b2              # double 0.54879737959952579
	.quad	0x3fec7bfe8107b8ac              # double 0.89013600541308823
	.quad	0x3fdc82b67675bdb4              # double 0.44547807281829965
	.quad	0x3fae9ae3bb786b80              # double 0.059775463709420329
	.quad	0x3fe3edeb920f2a7f              # double 0.6227929928512167
	.quad	0x3feae7a0d9fb49f4              # double 0.84077494215517711
	.quad	0x3fe42e9a4c2865b2              # double 0.63068880915232328
	.quad	0x3fee417585d1e95a              # double 0.94549060951912201
	.quad	0x3fc9dff9046231d0              # double 0.20214760507623319
	.quad	0x3fec06a98b4c30d7              # double 0.87581326681677296
	.quad	0x3fe39fc6b6da6e4f              # double 0.6132539340355353
	.quad	0x3fcdda50205ece18              # double 0.23322488384802464
	.quad	0x3fe21d83ed9e9b0e              # double 0.5661029473311332
	.quad	0x3fee5113e8080f06              # double 0.94739718741081513
	.quad	0x3fee28d74f542aa4              # double 0.94248548025037282
	.quad	0x3fe1170a13250912              # double 0.53406242121880809
	.quad	0x3feda95147123caf              # double 0.92691863900281202
	.quad	0x3fe90a798b8e0a3e              # double 0.7825286603622954
	.quad	0x3fc327e7a116a3e4              # double 0.14965529790541077
	.quad	0x3fb44225deed1db0              # double 0.079134337354040296
	.quad	0x3fecfc311e94f9ab              # double 0.90578514073404415
	.quad	0x3fda2c53f5ee812a              # double 0.4089555646587707
	.quad	0x3fcacb33821bc70c              # double 0.20932620861963647
	.quad	0x3feecde241baf1b9              # double 0.96263230169238689
	.quad	0x3fc112525cbd5774              # double 0.13337163475324199
	.quad	0x3fc0b3c50213e768              # double 0.13048613168194412
	.quad	0x3fdbadab25c75f40              # double 0.43247488679252299
	.quad	0x3fac509eb6d2f940              # double 0.055302581612965529
	.quad	0x3fe8285160ef2cd0              # double 0.7549216168639763
	.quad	0x3fbda9562a1f1ad8              # double 0.11586512115818992
	.quad	0x3fefc7ac9f5c91b8              # double 0.99312430501281934
	.quad	0x3fecb26ebb6837ed              # double 0.89678131678533435
	.quad	0x3fdeefb50328a80c              # double 0.48338055904844235
	.quad	0x3fda3acf5f2c2f1c              # double 0.40983948034475914
	.quad	0x3fe635e22577e2dd              # double 0.69407756155041123
	.quad	0x3febaff233608ed8              # double 0.86522779497723956
	.quad	0x3fd85842ea396cee              # double 0.38038704751461594
	.quad	0x3fd232a0ffc478fa              # double 0.2843401429871758
	.quad	0x3fb0276d79af9088              # double 0.063101618011900951
	.quad	0x3fcf96c7645a66d8              # double 0.24678890609793913
	.quad	0x3fe9465ff2dde06f              # double 0.78984067377952083
	.quad	0x3fe3103d4176935a              # double 0.59573233400133607
	.quad	0x3fd17602de7c305a              # double 0.27282783248006626
	.quad	0x3fd0013ef545555c              # double 0.25007604553441865
	.quad	0x3fb6da770f341510              # double 0.089271012508181479
	.quad	0x3fe7e82f51d11e5b              # double 0.74709287624223053
	.quad	0x3febf0ea615c9bef              # double 0.87315863624541901
	.quad	0x3fd108078272630a              # double 0.26611507166812542
	.quad	0x3fae75bbc85b5540              # double 0.059491985519040558
	.quad	0x3fe86a1975a4b3f9              # double 0.76295159318180972
	.quad	0x3fe18565c4ca38c5              # double 0.54753387866528469
	.quad	0x3fefdcc9cdcb9444              # double 0.99570169634228777
	.quad	0x3fcd9661529873ac              # double 0.23115173848137027
	.quad	0x3fec2460fe4c81f9              # double 0.87944078128572223
	.quad	0x3fd5f02299c6c4a6              # double 0.34278168694715772
	.quad	0x3fe340ad0504107a              # double 0.60164500217116701
	.quad	0x3fda8866d3020054              # double 0.41457529646141222
	.quad	0x3fd31998089faff6              # double 0.29843712656179322
	.quad	0x3fe297b1bf9e186e              # double 0.58101737428002109
	.quad	0x3fde12e4c3342738              # double 0.46990317404616944
	.quad	0x3fd95423e47f813a              # double 0.3957605105806753
	.quad	0x3fd00d795f8ecbd6              # double 0.25082239467445555
	.quad	0x3fe20fc174f4f32e              # double 0.56442330210811575
	.quad	0x3fed371c1832c75f              # double 0.91297726370087762
	.quad	0x3fe59c8f7637573c              # double 0.67536137665840767
	.quad	0x3fb00895fd270d40              # double 0.062631010346241744
	.quad	0x3fe9f7090713c37a              # double 0.81140567190423885
	.quad	0x3fe64b4f5fc1a23b              # double 0.69669312193315791
	.quad	0x3fbf37f2db56ab30              # double 0.12194745879120883
	.quad	0x3fece4b1a6c7e0c6              # double 0.90291674208040074
	.quad	0x3feec114df6b8155              # double 0.96106952320773564
	.quad	0x3fb95a2d2f3f2a48              # double 0.099032234225128524
	.quad	0x3fe672e39d6602ed              # double 0.70152455083743137
	.quad	0x3fccf806eae09d80              # double 0.22631918400405127
	.quad	0x3fd27e875726924e              # double 0.28897269736106501
	.quad	0x3fe78c8e6c90d16e              # double 0.73590775684583121
	.quad	0x3fdf7d9247eed896              # double 0.49203927063661845
	.quad	0x3fe1bf40f1a13f20              # double 0.55459639733632926
	.quad	0x3fe4c23b30e906da              # double 0.648709865119794
	.quad	0x3fe6e18056a3926b              # double 0.71502701684637537
	.quad	0x3fe63e43cd147bb4              # double 0.69510068945589021
	.quad	0x3fe9b0a4b15ccd8a              # double 0.8028129066573666
	.quad	0x3fe53d89946557ac              # double 0.66376189216201942
	.quad	0x3fdd34364595d1dc              # double 0.45631176753457026
	.quad	0x3fef9182bba9e050              # double 0.98651253369372149
	.quad	0x3fda761ccd7b4e3c              # double 0.41345901552742581
	.quad	0x3fed7d5ee7e05987              # double 0.92155404365875959
	.quad	0x3fe22b7e442ea3ac              # double 0.56780923191864963
	.quad	0x3fe91639f972e381              # double 0.78396319122758495
	.quad	0x3fe76f3b8388ccdf              # double 0.73232818308170156
	.quad	0x3f79a6223894c680              # double 0.0062619530447577398
	.quad	0x3fe9746e32c2e015              # double 0.79546270288756438
	.quad	0x3fe2314d96078608              # double 0.56851844122519513
	.quad	0x3fe33d2291255604              # double 0.60121277188108069
	.quad	0x3fc887e4afca50c8              # double 0.1916471346236277
	.quad	0x3febd5d589715903              # double 0.86985279888429579
	.quad	0x3fe05b4b4307cc8e              # double 0.51114428607833573
	.quad	0x3fc80920ad3ee198              # double 0.18777855357417361
	.quad	0x3fd48aea34b5d0d8              # double 0.32097869060022566
	.quad	0x3febd95b30ca9e13              # double 0.87028274087509983
	.quad	0x3fd8e1601391ccbc              # double 0.38875581656538905
	.quad	0x3fe598b3b330ec57              # double 0.67489037512076322
	.quad	0x3fd4a52bfa091a02              # double 0.32258128564390642
	.quad	0x3fcd17ac4afd7b2c              # double 0.2272849432146925
	.quad	0x3fe0905cfed9e3fc              # double 0.5176224687157851
	.quad	0x3fcc9fb961f86280              # double 0.22362439426139602
	.quad	0x3fea3f7e225e4fd6              # double 0.82025057518557776
	.quad	0x3fec76567f3ae969              # double 0.88944554185517888
	.quad	0x3fba31dd2f9ad440              # double 0.10232336437441436
	.quad	0x3fdabe8360d2f678              # double 0.41787800269580755
	.quad	0x3fd5adcc74f99a22              # double 0.33873282836285246
	.quad	0x3fb9c1dcc70c5a38              # double 0.10061435565544563
	.quad	0x3fe4771c90d13cfe              # double 0.63953998837123982
	.quad	0x3fc4b3c2ebfa6038              # double 0.1617358829723814
	.quad	0x3fc01ec8044750f8              # double 0.12593937119402887
	.quad	0x3fea83a0c068b65b              # double 0.8285678632725636
	.quad	0x3fe273762aa727c9              # double 0.57659443216947992
	.quad	0x3fdeb718921c5442              # double 0.47992529171580511
	.quad	0x3fe21f4d8ee17878              # double 0.56632116228480722
	.quad	0x3f9f3a8f179b3ac0              # double 0.030496822181528271
	.quad	0x3fe8c434a5e585d8              # double 0.77395088578867455
	.quad	0x3fcdb8420cf25620              # double 0.23218560821685319
	.quad	0x3feb95cf9f3be1e9              # double 0.86203747845052903
	.quad	0x3fec28733cc30597              # double 0.87993776195087292
	.quad	0x3feadc17d1981b87              # double 0.83936682640420279
	.quad	0x3fc215bfa90c27c4              # double 0.14128871683379718
	.quad	0x3fe47787e12de967              # double 0.63959115963306779
	.quad	0x3fe0a556c0c9b4ed              # double 0.52018296865358382
	.quad	0x3fe821ddacbf3026              # double 0.75413402309050492
	.quad	0x3fd5f559f2ffc7c6              # double 0.34310005884537664
	.quad	0x3fc3ae43867125fc              # double 0.1537556082205781
	.quad	0x3fd6e0caafd63caa              # double 0.35747019931381863
	.quad	0x3fa9180d208ca2a0              # double 0.049011621688184848
	.quad	0x3fde56a688d61516              # double 0.47403872836032812
	.quad	0x3fe5c1a5594b9e45              # double 0.67988841476921691
	.quad	0x3fecaa2cb3fb5d7f              # double 0.89577326920236533
	.quad	0x3fc9bd15760d9164              # double 0.20108288063341739
	.quad	0x3fc774f28d24d3d8              # double 0.18325645343580166
	.quad	0x3feeaaac819984a3              # double 0.95833421051442646
	.quad	0x3fdb3e1ccac358a8              # double 0.42566604424554066
	.quad	0x3fe17dc77a2cab24              # double 0.54660390722469687
	.quad	0x3fe83b3c0de1a1b5              # double 0.75723078452306558
	.quad	0x3fe6ca02a78bd20c              # double 0.71215946887838433
	.quad	0x3fd407b20cd19f22              # double 0.31296969653929996
	.quad	0x3fe9b0a546bb2b97              # double 0.80281318487810693
	.quad	0x3fdb32775bacf26c              # double 0.42495521500294475
	.quad	0x3fe1afe019736bd6              # double 0.55271916361686624
	.quad	0x3f8568cf68a70fc0              # double 0.010453815823787127
	.quad	0x3fea85df0a261908              # double 0.82884170515242861
	.quad	0x3fe377debd444f1c              # double 0.60838257757356784
	.quad	0x3feb17cffc14b071              # double 0.84665679201635957
	.quad	0x3fc4aedc14d34598              # double 0.16158629433497818
	.quad	0x3fe9103ec246c6cc              # double 0.78323305077193472
	.quad	0x3fcf214c8774bee0              # double 0.24320370306076367
	.quad	0x3fc6cb2773a1e744              # double 0.17807477136721606
	.quad	0x3fc9d31e960e42d8              # double 0.20175535513819542
	.quad	0x3fdb4d38a0c9a7d0              # double 0.42658820821691013
	.quad	0x3fe81d8120c9bb37              # double 0.75360161212834142
	.quad	0x3feb83d6f764c5e4              # double 0.85984371489592748
	.quad	0x3fed028b58373934              # double 0.90656058530456684
	.quad	0x3fc0080507e828b4              # double 0.12524474035337152
	.quad	0x3fe8e80d13473d02              # double 0.77832654729164141
	.quad	0x3fcc794c51cc37c4              # double 0.22245172494916521
	.quad	0x3fa11d26db891d20              # double 0.033425535486964586
	.quad	0x3fe7fd27dfc8aaa8              # double 0.74965280254158007
	.quad	0x3fe62a6c176f629e              # double 0.69267849518935853
	.quad	0x3fc3ed86a1d2e43c              # double 0.15568621541550154
	.quad	0x3fe483b05f20f0eb              # double 0.64107531146831087
	.quad	0x3fb94a25124c23e0              # double 0.098787610022682326
	.quad	0x3fa516bab5f3a7c0              # double 0.041189036093626452
	.quad	0x3fecee1f7ae83acc              # double 0.90406774525930577
	.quad	0x3fdb22053097f92a              # double 0.42395143266175472
	.quad	0x3febabd9e63e39d6              # double 0.86472792596196757
	.quad	0x3fe84ff3ab4ff86d              # double 0.75975974521112521
	.quad	0x3fea6c590c96e3d2              # double 0.82572605570669055
	.quad	0x3fea0c4859756675              # double 0.81399934265500795
	.quad	0x3fec9b97e0b61e73              # double 0.8939933194059918
	.quad	0x3fb17f299e47a628              # double 0.068346596853779418
	.quad	0x3fed8a608f973125              # double 0.92314174695051021
	.quad	0x3fc61d5237793620              # double 0.17276981075922127
	.quad	0x3fe96c45af88c2c9              # double 0.79446682247188349
	.quad	0x3f89b0f4ca7ea6c0              # double 0.012544548444412995
	.quad	0x3fe3bcc5923bf1c7              # double 0.61679342805251103
	.quad	0x3fc66bdbf1306f94              # double 0.17516660000626116
	.quad	0x3fefd6d3b44c6334              # double 0.99497399534730002
	.quad	0x3feb6368e72d178f              # double 0.85588498260107027
	.quad	0x3fb008704b300c00              # double 0.062628763538711496
	.quad	0x3fcd8f20f27e732c              # double 0.23093044128918316
	.quad	0x3fc8c580bdd668e0              # double 0.19352731007967972
	.quad	0x3fc1252c5428d9a4              # double 0.13394693478921937
	.quad	0x3fd69b2e55f7157e              # double 0.3532214965346937
	.quad	0x3fc84a0318e135ac              # double 0.18975866999464353
	.quad	0x3fd2c809be353f38              # double 0.29345935416221236
	.quad	0x3fb43b107ab5dbf0              # double 0.079026250799742348
	.quad	0x3fe064b640286ffc              # double 0.51229393511630361
	.quad	0x3fe691e66ccade5a              # double 0.70531007050062589
	.quad	0x3fd8c47881e4e00c              # double 0.38699162182774738
	.quad	0x3fe06294fd837b2c              # double 0.51203393473028802
	.quad	0x3fc65d0763be08b8              # double 0.17471401567678924
	.quad	0x3fd689231a6cebf4              # double 0.3521201856671603
	.quad	0x3fd9ce946362d7d6              # double 0.40323362069773105
	.quad	0x3fe23ba1faade4ac              # double 0.56977938614649792
	.quad	0x3fd7bbae00df73f8              # double 0.37083005986443096
	.quad	0x3fedc38eadc5ba6b              # double 0.93012174549023763
	.quad	0x3feabf14fc5d831c              # double 0.83582543649763207
	.quad	0x3f94ad7fd0fd20e0              # double 0.020193097239172952
	.quad	0x3fd5789831b84d08              # double 0.33548550467931237
	.quad	0x3fd48209c09c6a3a              # double 0.3204368954626805
	.quad	0x3fe2ed7773ab534e              # double 0.59148762313507475
	.quad	0x3fe449794690d474              # double 0.6339689615475792
	.quad	0x3fcb5d3c1781d238              # double 0.21378279826935098
	.quad	0x3fefe1a4bf6ed11d              # double 0.99629437817796751
	.quad	0x3fe94101355b95b4              # double 0.78918514653621807
	.quad	0x3fd94b8c9dac8252              # double 0.39523616216505275
	.quad	0x3fe78c8e04504dfc              # double 0.7359075626613385
	.quad	0x3fe5bbc4d3df5e7b              # double 0.67917100316385814
	.quad	0x3fd3113720147a66              # double 0.29792574055492194
	.quad	0x3fe8471ac72e5a13              # double 0.75867976095725209
	.quad	0x3fdf223af0b584ca              # double 0.48646424776786701
	.quad	0x3fee1f50fd5ec858              # double 0.94132279859901313
	.quad	0x3fccdd7af5b5a6d4              # double 0.22550904271638805
	.quad	0x3fe3db20fee05d8f              # double 0.62049913197090401
	.quad	0x3fdef0041d6e6a52              # double 0.48339941858435964
	.quad	0x3fe5313ca90601c5              # double 0.66226037037272845
	.quad	0x3fd889783464f1d0              # double 0.38339047543175031
	.quad	0x3fb24dec65d9b3c0              # double 0.071501517167873452
	.quad	0x3febfc102c2609e9              # double 0.87451943037768587
	.quad	0x3feaa77f51359fe0              # double 0.83294645177101855
	.quad	0x3febf31e4ecddd30              # double 0.87342753783642557
	.quad	0x3fed24de82caf524              # double 0.91075063271970124
	.quad	0x3fda4ff4deac330a              # double 0.41113015885712001
	.quad	0x3fce0afbfbfe0708              # double 0.23471021465598363
	.quad	0x3febd8ed48bfae27              # double 0.8702303334116025
	.quad	0x3fcf4e7733e3de80              # double 0.24458208116242375
	.quad	0x3fb35d8d6a2cc160              # double 0.07564624635847883
	.quad	0x3f875a5fd56b0840              # double 0.011402844143393875
	.quad	0x3fea1f424cc16728              # double 0.81631579390816444
	.quad	0x3fe7b932c350f4e5              # double 0.74135721347525119
	.quad	0x3fe32c0f532fcdb3              # double 0.59912840125473676
	.quad	0x3feb718763a3ae60              # double 0.85760850392166432
	.quad	0x3fbfd229f565d678              # double 0.1243005966296894
	.quad	0x3fe42cb7355db467              # double 0.63045845435193548
	.quad	0x3feb729199c562db              # double 0.85773544343382058
	.quad	0x3fd504412401584a              # double 0.32838467136514693
	.quad	0x3fea1808f8004500              # double 0.81543396413522373
	.quad	0x3fe588ba1730e8e3              # double 0.67294029740812922
	.quad	0x3fc784ee87c83990              # double 0.18374425535189376
	.quad	0x3fe4063bb5086a10              # double 0.62576089246732813
	.quad	0x3fead6d0424e010c              # double 0.83872235250604054
	.quad	0x3fc584e2702e0fe0              # double 0.16811781384978897
	.quad	0x3fa7b1c86cd928e0              # double 0.04627825096811633
	.quad	0x3fbee991896ffdc0              # double 0.12075147252470853
	.quad	0x3fe00d8243ef9652              # double 0.50164902943351763
	.quad	0x3fd5309b1b24592e              # double 0.33109166765770481
	.quad	0x3fe303b6512d2dbd              # double 0.59420314650326811
	.quad	0x3faeef0787ef4a90              # double 0.060417399734110977
	.quad	0x3faef62979d9be30              # double 0.060471817135177353
	.quad	0x3fda6481dc34ca14              # double 0.41238447670471712
	.quad	0x3fe439b783ede4f4              # double 0.63204551474987491
	.quad	0x3fb401e32025ba50              # double 0.078153796528320329
	.quad	0x3fca9e2ba95320ac              # double 0.20795198219116651
	.quad	0x3fc4dc87388f3f4c              # double 0.16297998677918668
	.quad	0x3feb88b36e7a9fe8              # double 0.86043712213449641
	.quad	0x3fc861e920da5070              # double 0.19048799614086276
	.quad	0x3fd0783370f24d52              # double 0.2573364832871522
	.quad	0x3fd52773fec117fc              # double 0.33053302648875138
	.quad	0x3fcf94de0acec028              # double 0.24673057105747032
	.quad	0x3fd74bf9a68a1fb4              # double 0.36401215804698528
	.quad	0x3fd9e5677c07cae0              # double 0.40462672340724559
	.quad	0x3febc39d777e01ce              # double 0.8676287969429326
	.quad	0x3fd7ec09516b425e              # double 0.37378151846954732
	.quad	0x3fc60d04c0cade88              # double 0.17227229512876741
	.quad	0x3fcd8540b8201840              # double 0.23062905302521308
	.quad	0x3fd14be6c2ab79b0              # double 0.27025765429234649
	.quad	0x3fdf86bc15319df0              # double 0.49259855336865055
	.quad	0x3fdcd261f0222900              # double 0.45034073305636468
	.quad	0x3fdb4db89f6385ec              # double 0.4266187244921571
	.quad	0x3fe4126279419048              # double 0.62724422152360493
	.quad	0x3fe01c4ebfb23f20              # double 0.50345551911047792
	.quad	0x3fb892bdb14fc6d0              # double 0.09598908976456788
	.quad	0x3fd8aedc42a2ce02              # double 0.38567263133447238
	.quad	0x3fa1efbb8c888510              # double 0.035032139687482311
	.quad	0x3f55c5a08794ac00              # double 0.0013288562461848397
	.quad	0x3fe99ae48b91a41d              # double 0.80015780696442429
	.quad	0x3fe7c5256fed9310              # double 0.7428157030195468
	.quad	0x3fdb7f4fc7c61584              # double 0.42964548596531693
	.quad	0x3fd8bd980673a3f6              # double 0.38657189016390647
	.quad	0x3fd461060206e222              # double 0.31842184255541117
	.quad	0x3fef796371386947              # double 0.98356792558050976
	.quad	0x3fe2355b470e8b28              # double 0.56901325109752054
	.quad	0x3fb3dac9d11b8c18              # double 0.077557195235883447
	.quad	0x3fef82eb4eb7ef50              # double 0.98473134398180129
	.quad	0x3fe490f0934e1809              # double 0.6426928402950135
	.quad	0x3fcc5da1e0cc6d84              # double 0.22160743214122303
	.quad	0x3fda33f792e9e4c8              # double 0.40942181918178422
	.quad	0x3fcd19ff17011024              # double 0.22735584853410373
	.quad	0x3fe839453baf6a46              # double 0.75699102074879288
	.quad	0x3fdb72e42f3b8eac              # double 0.4288874112373644
	.quad	0x3fe41b9687a2a3dd              # double 0.62836767665168802
	.quad	0x3fd6e12986d85700              # double 0.35749281090225793
	.quad	0x3f9b0a0c71d45440              # double 0.026405519912334308
	.quad	0x3fd29bff08a0cd48              # double 0.29077125399199533
	.quad	0x3fe2449f3e9df060              # double 0.57087671499131076
	.quad	0x3fdf759de8a96b96              # double 0.49155376168135356
	.quad	0x3fe1ea0f876c73d9              # double 0.5598218579285642
	.quad	0x3feaec091197a1f3              # double 0.84131291805266384
	.quad	0x3fdb86bd4b238c5e              # double 0.43009884202746729
	.quad	0x3fe1c1ac8737616b              # double 0.55489183816375254
	.quad	0x3fe28ffcd3844bac              # double 0.5800766116320708
	.quad	0x3fc1c1abc6cdaf8c              # double 0.13872286994171323
	.quad	0x3fc9b99397853528              # double 0.20097584627584664
	.quad	0x3fb3e50f5917d208              # double 0.077713927508575975
	.quad	0x3feb82162fc15573              # double 0.85962971999349092
	.quad	0x3fc2b5ec120c6734              # double 0.14617682343742333
	.quad	0x3feaec74c565fe82              # double 0.84136427454355123
	.quad	0x3fc17edf8f7ce7ac              # double 0.13668436533208472
	.quad	0x3fd648a24e8a4a94              # double 0.34818322820607617
	.quad	0x3fc412b2ff2f62f0              # double 0.1568206544896138
	.quad	0x3fd2c890fc912a58              # double 0.2934915987467881
	.quad	0x3fe2bf5a883afac1              # double 0.58585859878061097
	.quad	0x3f7ef076e2970880              # double 0.0075535434675108037
	.quad	0x3feb08e732639642              # double 0.84483680574039277
	.quad	0x3fe60dc4f86811b9              # double 0.68918083683870812
	.quad	0x3fe650eb8d2f38ab              # double 0.69737794470872438
	.quad	0x3fe5dcf6493a0fc2              # double 0.68322290708646727
	.quad	0x3fe2f0e09c916963              # double 0.5919039781540899
	.quad	0x3fe962b836b82cc0              # double 0.79330073058499551
	.quad	0x3fd0a61f7c1ff550              # double 0.26013934251371484
	.quad	0x3fe55dddbacb1cf9              # double 0.6677082680043035
	.quad	0x3fe4f7708b178cb6              # double 0.65520503202824076
	.quad	0x3fe58f505acdb87e              # double 0.67374437079503458
	.quad	0x3fcda5740cac68a8              # double 0.23161173456975814
	.quad	0x3fc1cb7a5ef9f778              # double 0.13902215611954793
	.quad	0x3fc1ed7b136fefe4              # double 0.14005983780941655
	.quad	0x3fd1b99dbb9e30d8              # double 0.27695411035598516
	.quad	0x3feda72294748a1c              # double 0.92665223117029738
	.quad	0x3fe831ac727837b3              # double 0.75606367451995593
	.quad	0x3fd5be5fddeef624              # double 0.33974453614414046
	.quad	0x3feac9fc7870fff4              # double 0.83715652011596697
	.quad	0x3fe06c7bb7dd91cf              # double 0.51324258719665206
	.quad	0x3fc7818539c39e4c              # double 0.18364014931215633
	.quad	0x3fe8b30e4a840f34              # double 0.77185740045431439
	.quad	0x3fee39c10c61111c              # double 0.94455006044202916
	.quad	0x3fc95c7b69c6bb24              # double 0.19813482918603953
	.quad	0x3fd1bf401be7a000              # double 0.27729799962116886
	.quad	0x3fe02594cd603540              # double 0.50458755600417504
	.quad	0x3fecb48647bde323              # double 0.89703668605861642
	.quad	0x3fe29181503665fe              # double 0.58026185671332065
	.quad	0x3fdde3b8145ab28e              # double 0.46702386844371169
	.quad	0x3fcb35064d0a42b0              # double 0.21255568277094516
	.quad	0x3fea2327a6fbe38d              # double 0.81679136861849744
	.quad	0x3fddc3459982cd30              # double 0.46504344931891506
	.quad	0x3fdc742109e361e4              # double 0.44458795514722582
	.quad	0x3fd43b9cc095d69c              # double 0.31613844687613279
	.quad	0x3fc54a2f29be346c              # double 0.16632642305595213
	.quad	0x3facfff54cb495b0              # double 0.056640306104138616
	.quad	0x3fc0038e55c732cc              # double 0.12510852039704046
	.quad	0x3fd561ab6bf7be16              # double 0.3340862802860739
	.quad	0x3fc9148d6af46b68              # double 0.1959397098770197
	.quad	0x3fefee261d12e5d6              # double 0.99782090834122061
	.quad	0x3fe8ad68aa978be3              # double 0.77116807287927391
	.quad	0x3fed7f1b1e37ee2a              # double 0.92176586057707266
	.quad	0x3fe76784ca8e6ebe              # double 0.73138656198303642
	.quad	0x3feca6fe8d29b2a8              # double 0.89538505144954161
	.quad	0x3fe8b91b75a1323f              # double 0.7725961015181112
	.quad	0x3fe81839b2d53381              # double 0.75295720032009694
	.quad	0x3fe5117aa89da03f              # double 0.65838368351706567
	.quad	0x3fe49e3a47aa2b2e              # double 0.64431489941612141
	.quad	0x3fe8b31285173706              # double 0.77185941690706339
	.quad	0x3fbb70d345d6a110              # double 0.10719032721556609
	.quad	0x3fb42cc41cea9478              # double 0.078808075961733226
	.quad	0x3fdf660aa7359118              # double 0.49060312584903576
	.quad	0x3fdf7f0cd7df6c76              # double 0.49212952691386336
	.quad	0x3fb622a5b2350418              # double 0.086466175086585273
	.quad	0x3fe0b72e3f8bb223              # double 0.5223609200598428
	.quad	0x3fef4f9cfd9f4121              # double 0.97846841369213077
	.quad	0x3fec569f56f93041              # double 0.88557402598372204
	.quad	0x3fe42c8331ea55ff              # double 0.63043365239235516
	.quad	0x3fd14aa287c5f01c              # double 0.27018035182095601
	.quad	0x3fec695395282c6b              # double 0.88785723812305883
	.quad	0x3fef7e990409ff0f              # double 0.98420382298351849
	.quad	0x3fe38bc95dd7baa4              # double 0.61081379250193324
	.quad	0x3fc113e0bd9fc524              # double 0.13341912516583776
	.quad	0x3fe37c2637c5c19f              # double 0.60890494244636162
	.quad	0x3fc469bef15d66a0              # double 0.1594771078624051
	.quad	0x3fee1f2cd5a1c778              # double 0.94130555844297614
	.quad	0x3fb84252c22857b0              # double 0.094762012864832767
	.quad	0x3fe880875f399328              # double 0.76568955038655862
	.quad	0x3fddcf57519245ca              # double 0.46578009572939705
	.quad	0x3fe658d81d980c76              # double 0.69834523944918092
	.quad	0x3fb5b0a74c981710              # double 0.084726768684131537
	.quad	0x3fdfe12063c86c36              # double 0.49811563248084967
	.quad	0x3fd848570b23e9a4              # double 0.37941528404157965
	.quad	0x3fb677fa13547718              # double 0.087768201560234238
	.quad	0x3fd193a5d259c392              # double 0.27463670293860176
	.quad	0x3fa77ca054a877d0              # double 0.045872698148954449
	.quad	0x3fda3a2626e96a04              # double 0.40979913520791933
	.quad	0x3fe14d21dec82c6d              # double 0.54066556465239801
	.quad	0x3fdaf32dbaabb0b2              # double 0.42109244565541382
	.quad	0x3fc04d3b2d86a3cc              # double 0.12735690806337485
	.quad	0x3fb11062bb4f9ee0              # double 0.06665627549193287
	.quad	0x3fe3aa711e484757              # double 0.61455589212912798
	.quad	0x3fefee91cfc5973e              # double 0.99787226276814756
	.quad	0x3fe004485657d7f2              # double 0.50052277435201931
	.quad	0x3fbb51a0eefb5b18              # double 0.10671430429952655
	.quad	0x3fc936239363bf38              # double 0.19696469017753215
	.quad	0x3fc53f8a4ee73468              # double 0.16600159504597234
	.quad	0x3fd871da3266b0b6              # double 0.38194899484620792
	.quad	0x3fb57077d35f3028              # double 0.083747376541567164
	.quad	0x3fb3e7ad3d0c9998              # double 0.077753856091112517
	.quad	0x3fcf9ec9ef6de39c              # double 0.24703334990388448
	.quad	0x3fe69a8632e33e9f              # double 0.70636281908987886
	.quad	0x3fe6f1e888fde6e5              # double 0.71702982670032311
	.quad	0x3fedbeecc22bfa25              # double 0.9295562546174706
	.quad	0x3fd47a4b2e256380              # double 0.31996421343279025
	.quad	0x3fc9ac122623a434              # double 0.20056368696467219
	.quad	0x3fe25974a345a0cf              # double 0.57341987504062242
	.quad	0x3fe2bbd9a2c30c76              # double 0.58543092526851015
	.quad	0x3fd38809abe62590              # double 0.30517808711064109
	.quad	0x3fe3b39ee7f33a83              # double 0.61567635824924627
	.quad	0x3fc078426cee512c              # double 0.12867002791302562
	.quad	0x3fe95df1f4059ae5              # double 0.79271791134382552
	.quad	0x3fd0ce8cc7cba408              # double 0.26260680686260729
	.quad	0x3fe9469c6ff7213d              # double 0.78986951702339747
	.quad	0x3fda217998ead3fa              # double 0.40829315121965204
	.quad	0x3fe257d427cfea89              # double 0.573221280820989
	.quad	0x3fda21c15ae71f5e              # double 0.40831025960186718
	.quad	0x3fd92c6ef95150fe              # double 0.3933370051138495
	.quad	0x3fddcaefcb913bc8              # double 0.46551127318974439
	.quad	0x3f9e60aeb1832100              # double 0.029665689072118973
	.quad	0x3fc5ba56389fdc1c              # double 0.16974904789796674
	.quad	0x3fd28a7cb9f3b4c0              # double 0.28970258864758236
	.quad	0x3fe28823430d1647              # double 0.57911837669298272
	.quad	0x3fdfe7e961cccd6c              # double 0.4985297637060373
	.quad	0x3fc4a673afbbd780              # double 0.16132970886945586
	.quad	0x3fdc3f93e16be06c              # double 0.44138047231491018
	.quad	0x3fe775816dc83f09              # double 0.73309394304121256
	.quad	0x3fd29d07c238a6f4              # double 0.29083436934398255
	.quad	0x3fca173dcbfb6114              # double 0.20383427105003504
	.quad	0x3fe4daed5687c8b5              # double 0.65172449970693569
	.quad	0x3fe436816676c0af              # double 0.63165349972225282
	.quad	0x3fefd64e5e32111f              # double 0.99491041562626836
	.quad	0x3fea3261053ab053              # double 0.81864977856958843
	.quad	0x3fe43989b7706745              # double 0.63202367618507849
	.quad	0x3fef312f9f604abc              # double 0.97475415352013028
	.quad	0x3fed7b8227894b93              # double 0.92132671091018137
	.quad	0x3fdb4d3b52520a9a              # double 0.42658885039433303
	.quad	0x3fd30558203652e4              # double 0.29720118661616213
	.quad	0x3fe37d965372644d              # double 0.60908047006808774
	.quad	0x3fdf726b88998574              # double 0.49135864581884126
	.quad	0x3fd78a4e0d5ef3ac              # double 0.36781646066429619
	.quad	0x3fc1bd81621739b0              # double 0.13859574594102986
	.quad	0x3fe7cd3a3d79b34c              # double 0.74380218512451668
	.quad	0x3feafad9c50f3bc3              # double 0.84312141884026237
	.quad	0x3fcf6796ec1fbc18              # double 0.24534880189409658
	.quad	0x3fe3401959e94f4f              # double 0.60157458840192557
	.quad	0x3fe05be243c1eb84              # double 0.51121628984343248
	.quad	0x3fed62335458e450              # double 0.9182373664290342
	.quad	0x3fee727156b89553              # double 0.95147005975438004
	.quad	0x3fdacc1ebe56bedc              # double 0.41870850169924068
	.quad	0x3fcd91eeeeeef398              # double 0.23101603190107478
	.quad	0x3fd6ea74a199b500              # double 0.35806003361979322
	.quad	0x3fdae580e641f91e              # double 0.42025778280357595
	.quad	0x3fe702040880b7bf              # double 0.71899606381133896
	.quad	0x3febe92d235dfa96              # double 0.8722139063609855
	.quad	0x3fcf9e16547abeb0              # double 0.24701193928693987
	.quad	0x3feb29deb0097f7e              # double 0.84886106855627452
	.quad	0x3fe97712f5070af3              # double 0.79578540665565212
	.quad	0x3f56cb994c4abe00              # double 0.0013913151789600731
	.quad	0x3f90352c6fe035e0              # double 0.01582784111820057
	.quad	0x3fe175b94d96f206              # double 0.54562058595871643
	.quad	0x3fe9c0251e7b8b05              # double 0.80470519975310195
	.quad	0x3fe919df9fc3392a              # double 0.78440839007979446
	.quad	0x3f8180d7e740d600              # double 0.0085465304801841668
	.quad	0x3fa43a757eb70d60              # double 0.039508506506104935
	.quad	0x3fe70da4875f7742              # double 0.72041536750814594
	.quad	0x3feef02197999128              # double 0.96681289300298534
	.quad	0x3feb1617cfa87a2c              # double 0.84644690092301777
	.quad	0x3fe48d53fd8f7126              # double 0.64225196383953143
	.quad	0x3fa643f45a8d1d00              # double 0.043487201741806203
	.quad	0x3fcfde90f7498c5c              # double 0.24897968363356682
	.quad	0x3fe76dad58d513b7              # double 0.73213832235398157
	.quad	0x3fc48cfaea9cc708              # double 0.16055237250980547
	.quad	0x3fe86ffac7f5e66b              # double 0.76366938643259397
	.quad	0x3fe72851dffcb632              # double 0.72367185351840235
	.quad	0x3fd79968a3a0a5b4              # double 0.36873832682848762
	.quad	0x3feedf8edba3ca43              # double 0.96478979967498224
	.quad	0x3fb5ad35fc1c40d8              # double 0.084674238253004019
	.quad	0x3fe89ce04dae9bc2              # double 0.76914992496755752
	.quad	0x3fe34eef1a8c4ca5              # double 0.60338549790539686
	.quad	0x3fde997320a670f0              # double 0.47811582745067849
	.quad	0x3fecd7d2f2f7cc0c              # double 0.90134570555380966
	.quad	0x3fdb5da8c1481c8e              # double 0.42759150386013622
	.quad	0x3fe6f10a796686e4              # double 0.71692393981012659
	.quad	0x3feeb162efdce5a8              # double 0.95915362213343247
	.quad	0x3fed2c2c9ea15d0f              # double 0.91164237005696858
	.quad	0x3fe7076aecb15c37              # double 0.71965547780099015
	.quad	0x3fd29c0c7a6a65fc              # double 0.29077445940637836
	.quad	0x3fd5a36836cda914              # double 0.33809857704058399
	.quad	0x3fefd1fa619876ae              # double 0.99438208638794889
	.quad	0x3fca4e22f6d26e5c              # double 0.20550953914504333
	.quad	0x3fdc0e0433ea4ac6              # double 0.43835549421161735
	.quad	0x3fe128c34ab24b98              # double 0.53622593487885961
	.quad	0x3fead13f8ef5a67b              # double 0.83804300233641926
	.quad	0x3fdfb02b2cf88350              # double 0.49512748138117946
	.quad	0x3fdab7cc95df9d98              # double 0.41746821056445915
	.quad	0x3fadef6b80eb9100              # double 0.058467254149748626
	.quad	0x3fd143dbf2721d68              # double 0.26976679493278377
	.quad	0x3fe0480d6db45108              # double 0.50879546572335332
	.quad	0x3fe0ccdc74f64c8d              # double 0.52500746578370328
	.quad	0x3fe02d732f069a73              # double 0.50554808792806083
	.quad	0x3fe6b55b39f1554d              # double 0.70963822667060017
	.quad	0x3fe2b2e543f655b4              # double 0.58433783792377492
	.quad	0x3febc5a786bcbe88              # double 0.86787773433566517
	.quad	0x3fe48f31948ddae4              # double 0.64247969641186531
	.quad	0x3fda0ee146868762              # double 0.40715820204979114
	.quad	0x3feba3cd8af27ceb              # double 0.86374547136429436
	.quad	0x3f778558eb043300              # double 0.0057424043045670725
	.quad	0x3f8c36981ec3e480              # double 0.013776005209807929
	.quad	0x3fe3d127911bbc96              # double 0.61928156224702735
	.quad	0x3fe934105c4ab167              # double 0.78760545755134792
	.quad	0x3feab114c3604f28              # double 0.83411634597220985
	.quad	0x3febb90d6e42f770              # double 0.86633941207376886
	.quad	0x3fe5f0f49433a06d              # double 0.68566349931371706
	.quad	0x3fded51582aafc00              # double 0.48175561676538337
	.quad	0x3fd83746b875584c              # double 0.37837379468453913
	.quad	0x3fed764231ade7a2              # double 0.92068586066237779
	.quad	0x3fdd8abca004a0d6              # double 0.46159282328382056
	.quad	0x3fe34c1e18836abe              # double 0.60304169452441392
	.quad	0x3fe1ca2568a24fb6              # double 0.55592604099591969
	.quad	0x3fcfd2c1873ef0d8              # double 0.24861926177789573
	.quad	0x3fc1ddb4eff3f178              # double 0.13957845417452197
	.quad	0x3fc5cbef780e9510              # double 0.17028611528545712
	.quad	0x3fe924ef7b7ddee6              # double 0.78575872535199376
	.quad	0x3fe1d8a5d1471f48              # double 0.55769625544142176
	.quad	0x3feb1e7e437a10b0              # double 0.84747231654229971
	.quad	0x3fe46d415e513475              # double 0.63833683415727072
	.quad	0x3fee8702792d8647              # double 0.95398067157311395
	.quad	0x3fe7b2f7e057b04a              # double 0.74059671227360835
	.quad	0x3fe96e9f987e573a              # double 0.79475383552446677
	.quad	0x3fea16a8a6270759              # double 0.81526596500064408
	.quad	0x3fbd04e0360b40d0              # double 0.11335564917976915
	.quad	0x3fee5671d47b73b4              # double 0.94805232525287985
	.quad	0x3fed047d5cfaa16a              # double 0.90679805908170619
	.quad	0x3fc91ffdb7276dd4              # double 0.19628879015986789
	.quad	0x3fee9f7c000c8d1f              # double 0.95696830758643958
	.quad	0x3fdafdc752b3e2f2              # double 0.42173941685136562
	.quad	0x3fd4d8254a974ed2              # double 0.32569248470575218
	.quad	0x3fecde16b770e784              # double 0.9021104414780301
	.quad	0x3fd2df69df69790e              # double 0.29488608186319787
	.quad	0x3fe59dd558853a3e              # double 0.6755167702593281
	.quad	0x3fed9a20a6900530              # double 0.92506439716104261
	.quad	0x3fe6e3b8769fdca8              # double 0.71529791992988567
	.quad	0x3fc1e2b968005778              # double 0.13973157480421228
	.quad	0x3fe5a24edb65711c              # double 0.67606299258071401
	.quad	0x3fdb40e4dc56bad8              # double 0.42583581464252296
	.quad	0x3fbbfca121bf3ac0              # double 0.10932356904889229
	.quad	0x3fe836f45b666def              # double 0.75670831538758232
	.quad	0x3febae32adb959cb              # double 0.8650143998191252
	.quad	0x3feda30b151c9017              # double 0.92615274546961046
	.quad	0x3fe47680f63fda6a              # double 0.63946579070654974
	.quad	0x3fe31ca1363c33c3              # double 0.59724484055333737
	.quad	0x3fdf930a72fa1d8a              # double 0.493349659235229
	.quad	0x3fc30c2074543030              # double 0.14880757980461246
	.quad	0x3fe750a8b94c2e0d              # double 0.72859607878621235
	.quad	0x3fded2b7dd0310ca              # double 0.4816112192459171
	.quad	0x3fe7573c821a44fa              # double 0.72939896975199692
	.quad	0x3fee8de5ce0babc4              # double 0.95482149356154666
	.quad	0x3fc7b383f4d5a90c              # double 0.18516587691130615
	.quad	0x3fd082885dbe30c4              # double 0.25796708254416623
	.quad	0x3fe307be6d1e8eea              # double 0.59469529449822045
	.quad	0x3fb9ffe658f12fd8              # double 0.10156097098769068
	.quad	0x3febe1c6e908ac1c              # double 0.87131066812924329
	.quad	0x3fedbc9f340ca873              # double 0.92927513280780116
	.quad	0x3fcefa3d8f7f1ff8              # double 0.24201173311871549
	.quad	0x3fe79503a9f4c494              # double 0.73694022364192557
	.quad	0x3fc2a84fcd818e18              # double 0.14576146635509768
	.quad	0x3feae6045fdb63bf              # double 0.84057825777119166
	.quad	0x3fe2dc023a3ed570              # double 0.58935653091491069
	.quad	0x3fcae791ad16ac10              # double 0.21019192649450291
	.quad	0x3fe186a8c1c747eb              # double 0.54768789145805152
	.quad	0x3fe17a29bac6bc5c              # double 0.54616247634647719
	.quad	0x3fc5a8a9dbf2690c              # double 0.16920970191569784
	.quad	0x3fa0267df6dc4000              # double 0.031543671020813235
	.quad	0x3f95cadcb1967b60              # double 0.021281669940090508
	.quad	0x3fe7a9da2d583760              # double 0.73948391777387811
	.quad	0x3fedba86eed5c138              # double 0.92901941916901531
	.quad	0x3fe3264738e39f4d              # double 0.59842263327753076
	.quad	0x3fc93f4e79f9bcd0              # double 0.19724446254574568
	.quad	0x3fc65de4d0e156d8              # double 0.17474041175108002
	.quad	0x3fdba5f56b633d54              # double 0.43200431334567679
	.quad	0x3f5ed8d1cce32a00              # double 0.0018827484923799043
	.quad	0x3fb917307981f138              # double 0.098010091462076399
	.quad	0x3fc5e9ae4c0e544c              # double 0.17119387353582949
	.quad	0x3fec57e6826d6196              # double 0.88573003267360906
	.quad	0x3fda6f6012af5c22              # double 0.41304780792910567
	.quad	0x3fe7dc7cac746eef              # double 0.74566491777974686
	.quad	0x3f934f884845d840              # double 0.018858079348739176
	.quad	0x3fcb0466b037a7e0              # double 0.21107181171765799
	.quad	0x3fe32e52f2e33228              # double 0.59940478743516667
	.quad	0x3fe244777fc856db              # double 0.57085776288542023
	.quad	0x3fe74e75b740cf63              # double 0.72832761565812765
	.quad	0x3faa4411c52a6d10              # double 0.051300578420717113
	.quad	0x3fe512ce95acfa18              # double 0.65854577287228988
	.quad	0x3fc1760485640644              # double 0.13641411317080288
	.quad	0x3fd5cb800c9de21e              # double 0.34054566604712189
	.quad	0x3fc8100ef19ce7dc              # double 0.18799006268983376
	.quad	0x3feae6bb3ad20518              # double 0.84066544998509851
	.quad	0x3fe17e1093d01fdc              # double 0.54663876409267287
	.quad	0x3fe372b537fde836              # double 0.60775242744353508
	.quad	0x3fe46da68b2cc286              # double 0.63838507826410829
	.quad	0x3fb4da23f5bf6048              # double 0.081453559395755382
	.quad	0x3fece98e05159819              # double 0.90351010315930858
	.quad	0x3fe3b4b2e606b5fd              # double 0.61580796172137264
	.quad	0x3fd7bb6318e16152              # double 0.37081220082975108
	.quad	0x3fc1b222f779553c              # double 0.13824879726113604
	.quad	0x3fefb96cfc869168              # double 0.99138497659127455
	.quad	0x3fe67e98c2f334cd              # double 0.70295370174576421
	.quad	0x3fe4ce92343e9710              # double 0.65021619991304824
	.quad	0x3fec2d3ab2371b83              # double 0.88052115256947194
	.quad	0x3fe6ca348bb11249              # double 0.7121832588532665
	.quad	0x3fe6658c7116619a              # double 0.69989606940639537
	.quad	0x3fefc106bba7dcd1              # double 0.99231278087145302
	.quad	0x3fbf6167f4c1d9c0              # double 0.1225800488044575
	.quad	0x3fe2acdf263bc909              # double 0.58360249965179023
	.quad	0x3fe66c5e3052eefa              # double 0.7007285064532589
	.quad	0x3fe29ed214900ac3              # double 0.5818872834791694
	.quad	0x3fa7947186265970              # double 0.046054408670147207
	.quad	0x3fe35e4383873670              # double 0.60525680245491564
	.quad	0x3fee522fa3396c32              # double 0.94753248100039955
	.quad	0x3fd6a9b7650b2b6e              # double 0.35410866611044056
	.quad	0x3fe06285813d9f5f              # double 0.51202655069662828
	.quad	0x3fd301f16f6e709a              # double 0.29699359781239709
	.quad	0x3fe838bff313c886              # double 0.75692746616393047
	.quad	0x3febd90c4430d8f7              # double 0.87024510687368106
	.quad	0x3fec6fda1a8cc781              # double 0.88865380464106647
	.quad	0x3fa2929db3231b10              # double 0.036274841420484205
	.quad	0x3febfc7168b2af9f              # double 0.87456579636408438
	.quad	0x3fe1847445c27d70              # double 0.54741872429796778
	.quad	0x3fe03befcc4894d2              # double 0.50731649302601967
	.quad	0x3fe024334c74915c              # double 0.50441899235424215
	.quad	0x3fc445c122c93dd4              # double 0.15837873648204825
	.quad	0x3feeee40d5f7fa93              # double 0.96658365050082506
	.quad	0x3fe2c2f273e233f0              # double 0.58629725106731989
	.quad	0x3fd90859cad83f4a              # double 0.39113468941740293
	.quad	0x3fb0cd28b295c848              # double 0.065630477523684339
	.quad	0x3fea9e66cdcd2d28              # double 0.83183613010024704
	.quad	0x3fec59227d10ebb2              # double 0.88588070322963675
	.quad	0x3fd86a9291178b68              # double 0.38150467080247674
	.quad	0x3fe1ce5d92f8a88d              # double 0.55644110398613267
	.quad	0x3fcf1d0d0953aac0              # double 0.24307406382953012
	.quad	0x3fd3d2d3f5138426              # double 0.30974291737772075
	.quad	0x3fe1cd6f9a7eb211              # double 0.55632763075624514
	.quad	0x3fe80cf44c2d16f2              # double 0.75158133390570314
	.quad	0x3fd9f9aa02a3fd90              # double 0.4058632875239363
	.quad	0x3fe87af41404dee8              # double 0.76500896367994375
	.quad	0x3fe29d10934d496a              # double 0.58167294282820348
	.quad	0x3f85df9d6afb9c80              # double 0.010680417849881829
	.quad	0x3fc7f5ed74287b24              # double 0.18719261333259241
	.quad	0x3fe7a1e2d4f6fc6c              # double 0.73851148218808538
	.quad	0x3fe7ab460af3232c              # double 0.73965742243408306
	.quad	0x3feb9db3508dbde4              # double 0.86300054295673733
	.quad	0x3feb4bf3d71225a7              # double 0.85302154546768783
	.quad	0x3fed6c3ebe28b3fd              # double 0.91946351185254083
	.quad	0x3feac9b8d5b49dfe              # double 0.83712426890718894
	.quad	0x3fe48cf2d353a475              # double 0.64220563196899028
	.quad	0x3febe98a9ddb088c              # double 0.87225848036929809
	.quad	0x3fd5aedca6a198d4              # double 0.33879772446233614
	.quad	0x3fe5a90d57ab70ab              # double 0.67688624499307559
	.quad	0x3fecb2216f3f8438              # double 0.89674445846697548
	.quad	0x3fe3c6429dd33ac6              # double 0.61795168709962733
	.quad	0x3fcbf9fb20dc3ce0              # double 0.21856631378657365
	.quad	0x3fcaf44cb138c36c              # double 0.21058043149380568
	.quad	0x3fbedc6a05cb8080              # double 0.12055075303533336
	.quad	0x3feef3c2429459e2              # double 0.96725571636016761
	.quad	0x3fe3f7eabed5f62e              # double 0.6240133025418737
	.quad	0x3fdf3f9e97d3160a              # double 0.48825802637688354
	.quad	0x3fe0abbcb6758b2f              # double 0.52096400867990222
	.quad	0x3fe5ad0d45f63a5d              # double 0.67737449325961629
	.quad	0x3fe53365f2f0438a              # double 0.66252419899875403
	.quad	0x3fe85e207a234cfe              # double 0.76149009566361747
	.quad	0x3fe6be279f580062              # double 0.7107122528250438
	.quad	0x3fe5925ca43e9dc4              # double 0.6741164405729525
	.quad	0x3fb66c1c17591c98              # double 0.087587123584955129
	.quad	0x3fc1162d16280540              # double 0.13348926145412499
	.quad	0x3fc2dbda7a428710              # double 0.1473343941661871
	.quad	0x3fbbae88a8c442e8              # double 0.10813192482261125
	.quad	0x3f978d7273a86c00              # double 0.023000515279004929
	.quad	0x3fdcdc990b852d9c              # double 0.45096422314665019
	.quad	0x3fe6c5fe79adfac3              # double 0.71166919484661439
	.quad	0x3fe42e6fa736aaec              # double 0.63066847475906007
	.quad	0x3febc06aa31f52e9              # double 0.86723834857783999
	.quad	0x3fbae11106731798              # double 0.10499674231968326
	.quad	0x3fe834eaeb3d98ea              # double 0.75645967431480909
	.quad	0x3fb666f0d81e6a88              # double 0.087508251918203439
	.quad	0x3f64d5fbc44d7f00              # double 0.0025434415169199864
	.quad	0x3feaea7d2d635ddf              # double 0.84112414231179489
	.quad	0x3fc610fb82a79568              # double 0.17239326362247742
	.quad	0x3fc9620bc5dbd650              # double 0.19830462609359012
	.quad	0x3fe65464305cfab5              # double 0.6978016800493011
	.quad	0x3fe1010ce1e8964e              # double 0.5313782131458511
	.quad	0x3fe14d4e3f21243b              # double 0.54068672494862058
	.quad	0x3fe09c7f678f21f0              # double 0.51910371996296867
	.quad	0x3fe3c04a9fee66fb              # double 0.61722308384489055
	.quad	0x3fe117b7342444bc              # double 0.53414497550888695
	.quad	0x3fd16c1c2a733d1a              # double 0.27222351212999885
	.quad	0x3fecfdd7d482c18d              # double 0.90598670488366084
	.quad	0x3fd0affe6568edd0              # double 0.26074180510815115
	.quad	0x3fc71c2be7d8b0b4              # double 0.18054722614886531
	.quad	0x3fcc27aacd36bac8              # double 0.21996054668621512
	.quad	0x3fd09e7313c4d072              # double 0.25967099123523163
	.quad	0x3fee0a370110ec2f              # double 0.93874693115447438
	.quad	0x3fd9e2e491fae124              # double 0.40447344070300262
	.quad	0x3fd06e06143e645e              # double 0.25671531655240709
	.quad	0x3fe045bb63c74e1d              # double 0.50851220596308944
	.quad	0x3feb8b32ee98e4a1              # double 0.86074205971739925
	.quad	0x3fcb35a598493130              # double 0.21257467208705227
	.quad	0x3fd580abc118c43e              # double 0.33597844941238353
	.quad	0x3fe195f51c1a99d6              # double 0.54955535401387112
	.quad	0x3fe415382c83c000              # double 0.62759026235835336
	.quad	0x3fa2585c0fd35990              # double 0.035830380374750281
	.quad	0x3fede71d55494566              # double 0.9344622293230429
	.quad	0x3fb2b4f84032b130              # double 0.073073878930419722
	.quad	0x3fe6c30fcba20829              # double 0.7113112427907754
	.quad	0x3fc209ce0f43c184              # double 0.14092422242493907
	.quad	0x3feeb11cbc267f0a              # double 0.9591201472103148
	.quad	0x3fb1647f66f52b30              # double 0.067939722667841762
	.quad	0x3fec5399cc235b16              # double 0.88520517225956286
	.quad	0x3fb4ed4e1a5efc20              # double 0.081745988310089945
	.quad	0x3fdf31d63272c744              # double 0.48741679121586778
	.quad	0x3febac50f66b3103              # double 0.86478469971328342
	.quad	0x3fda584409d25760              # double 0.4116373153604993
	.quad	0x3fd6f18e3bfd8344              # double 0.35849338396478836
	.quad	0x3fe122809e81b381              # double 0.53546172102288392
	.quad	0x3fd70792560f4dd0              # double 0.35983713535571571
	.quad	0x3fcbbe3129a25e70              # double 0.21674170048639807
	.quad	0x3fedb9200b8bc97a              # double 0.92884828810774356
	.quad	0x3fec9e4d1522c8d2              # double 0.89432386520481999
	.quad	0x3fe1b26a93bad34f              # double 0.55302933553194034
	.quad	0x3fda89fcabff1312              # double 0.41467205807229945
	.quad	0x3fe674ac73cf5b4c              # double 0.70174238795412114
	.quad	0x3fec9ea843e66a3c              # double 0.89436734449129273
	.quad	0x3febcee1d7e1c988              # double 0.86900417484712111
	.quad	0x3fe9e7fb52bf10ff              # double 0.80956808244130218
	.quad	0x3fcc7ffdb40ae0c0              # double 0.2226559762109499
	.quad	0x3fe4d44ca7d65f65              # double 0.65091545849552956
	.quad	0x3fc175b113494770              # double 0.13640416566573377
	.quad	0x3fd92fb29a0def32              # double 0.39353623432519946
	.quad	0x3fe0e6270f908a4c              # double 0.52809479751551569
	.quad	0x3fcf6a6abd8a3440              # double 0.24543508772731748
	.quad	0x3fa74ad4f520ae10              # double 0.045492796824273651
	.quad	0x3fc8a63f33cf0ce8              # double 0.19257345227933986
	.quad	0x3fe2b776f2f72f48              # double 0.58489558653079943
	.quad	0x3fb55e1662b6bc90              # double 0.08346691045766108
	.quad	0x3fed77b992d70c4f              # double 0.92086485557264008
	.quad	0x3fed453f7a261ae0              # double 0.91470311982342522
	.quad	0x3fa704d01f044700              # double 0.044958595072001728
	.quad	0x3fcf4ca7c730cecc              # double 0.24452683664423203
	.quad	0x3fe0c1605d81f4f4              # double 0.5236055208512469
	.quad	0x3fddd6450c1bea8a              # double 0.46620298559688733
	.quad	0x3fd9e20c0940e444              # double 0.40442181495342688
	.quad	0x3fa9b334a2d3dfa0              # double 0.050195355297488975
	.quad	0x3fe3b1072b3925f6              # double 0.61535986368215734
	.quad	0x3fd5c9e938d5b020              # double 0.34044867086663722
	.quad	0x3fe5c19d14b3d238              # double 0.67988447230761206
	.quad	0x3fe67fa5080377de              # double 0.70308162274499941
	.quad	0x3fd2264c713e1146              # double 0.28358756121476281
	.quad	0x3fecc319bfacd0fd              # double 0.8988159888890831
	.quad	0x3fe1f6b5fe32d22b              # double 0.56136607788227388
	.quad	0x3fe729eb05541e2f              # double 0.72386694946994179
	.quad	0x3fd37151fb6b968e              # double 0.3037915187145267
	.quad	0x3fd73a374df26d10              # double 0.36292822467812957
	.quad	0x3febfcf92ad5847a              # double 0.87463053098703303
	.quad	0x3fe10f94126206f7              # double 0.53315166082776855
	.quad	0x3fc3bb9ea0ebb9dc              # double 0.15416319711171311
	.quad	0x3fc5f110dd403d28              # double 0.17141924670475217
	.quad	0x3fe9411dc2b8c162              # double 0.78919876128751931
	.quad	0x3fdb5e82bbf7604a              # double 0.42764347416005377
	.quad	0x3fe6ce824a8a4e56              # double 0.71270861204761604
	.quad	0x3f8a2c588da7cbc0              # double 0.012779895613652559
	.quad	0x3fe82d991603cb1f              # double 0.75556616115349928
	.quad	0x3fe808f9b3704d5e              # double 0.75109562918298045
	.quad	0x3fde65e3d48820b4              # double 0.47496886973432173
	.quad	0x3fe2a22b5b79061f              # double 0.58229606500407616
	.quad	0x3fc4c1a6c38bcc54              # double 0.16215977237843282
	.quad	0x3feeb6c446faf03d              # double 0.95981038916898564
	.quad	0x3fc097c13ad273e4              # double 0.12963118908092419
	.quad	0x3fd7c41aaea6c93a              # double 0.37134425216494871
	.quad	0x3fb2caf8306bfad0              # double 0.07340956861660719
	.quad	0x3fe777d2805247ce              # double 0.73337674200797109
	.quad	0x3fec39335f0e28d7              # double 0.88198250356188168
	.quad	0x3fec02586919ac48              # double 0.87528629805945801
	.quad	0x3fe150bf6ed5a6b9              # double 0.54110690734270073
	.quad	0x3f83cb667e37b380              # double 0.0096652991550969513
	.quad	0x3fe7393e4d173b2e              # double 0.7257377153090141
	.quad	0x3fe70ce90e00b18d              # double 0.72032597288993971
	.quad	0x3fdab585122b55b0              # double 0.41732908987372763
	.quad	0x3fef9b99922e1be5              # double 0.98774412680438372
	.quad	0x3fedbfb8ddd034f0              # double 0.92965358088409111
	.quad	0x3fed2eb32d3c31d7              # double 0.91195067248332407
	.quad	0x3fc00fa78ffc82d0              # double 0.12547773867210887
	.quad	0x3fd0cf0f0d9f334a              # double 0.26263786630879749
	.quad	0x3fdd22c1a8743530              # double 0.45524636698322052
	.quad	0x3fb9cfdaf7d5b868              # double 0.10082787085204503
	.quad	0x3fd44df170fc239c              # double 0.31725727113421853
	.quad	0x3fe1cf604da2eef7              # double 0.55656447566386091
	.quad	0x3fd8cc15d9130e60              # double 0.3874563808314857
	.quad	0x3fd44d40402bd60e              # double 0.31721502558443226
	.quad	0x3fe474c068470f1f              # double 0.63925190321649328
	.quad	0x3fc79eeb3e7bf97c              # double 0.18453732062330264
	.quad	0x3fc73678e5fad340              # double 0.18134986142617926
	.quad	0x3fc6ee3fba7e1270              # double 0.17914578062131481
	.quad	0x3fc37216154852e4              # double 0.15191913642106336
	.quad	0x3fd7ffdc489b4aea              # double 0.37499148455132902
	.quad	0x3fe391f5a8358301              # double 0.61156733372999394
	.quad	0x3fcd7043cf8302cc              # double 0.22998855240259386
	.quad	0x3fe025465a5934ab              # double 0.50455014845069479
	.quad	0x3fc93273061f0948              # double 0.19685209082497068
	.quad	0x3fef979b1a5858a8              # double 0.98725657601859939
	.quad	0x3fd780e170e5a7ea              # double 0.36724124932390956
	.quad	0x3fc4981ef7ca24b4              # double 0.16089236353972114
	.quad	0x3f862eb468ac23c0              # double 0.010831269687985201
	.quad	0x3fd0b39dbc9e2fc6              # double 0.26096290034979253
	.quad	0x3fbad9d0cb7c58a8              # double 0.10488610237038876
	.quad	0x3fb844a37a57d598              # double 0.094797341698571791
	.quad	0x3fedeff38d6fa888              # double 0.93554093956233064
	.quad	0x3fe6d61b71ae4524              # double 0.71363613322515507
	.quad	0x3fd6d74e52c94500              # double 0.35689123234358533
	.quad	0x3fda7de099242f98              # double 0.41393294291696625
	.quad	0x3fe8c2055b87deeb              # double 0.77368419530008958
	.quad	0x3fd6b7521fe28322              # double 0.35493901361228286
	.quad	0x3fbeb63b5ec7fdd8              # double 0.11996813835138853
	.quad	0x3fc8791772708f48              # double 0.19119542205691631
	.quad	0x3fd496f0b8e0af86              # double 0.3217126660772397
	.quad	0x3fed2e914758115a              # double 0.91193450865152248
	.quad	0x3fe674111ec48382              # double 0.7016683197908693
	.quad	0x3fdb40341e7016ac              # double 0.42579367611356633
	.quad	0x3fe5e9b6d823583b              # double 0.68477956976381138
	.quad	0x3fd0eb3e3da9b718              # double 0.26435810109875169
	.quad	0x3fd468fb515fb6d4              # double 0.31890757509868917
	.quad	0x3fc94d4fdef935c0              # double 0.19767187487961557
	.quad	0x3fe6494ba0b39d3b              # double 0.69644719492945428
	.quad	0x3fea52033ab10597              # double 0.82251130545789664
	.quad	0x3fe1bad0a0784575              # double 0.55405455915221913
	.quad	0x3fca58dd5e818f40              # double 0.20583693613581922
	.quad	0x3fd2558abebb2926              # double 0.28647106767734198
	.quad	0x3fec068d36712cff              # double 0.87579975732060678
	.quad	0x3fcdae51fd77e574              # double 0.2318823325765994
	.quad	0x3fe4c8fbf97c6d7a              # double 0.6495342133306814
	.quad	0x3fe11d08fb0194ba              # double 0.5347943212952011
	.quad	0x3fd14c0021c78e4c              # double 0.27026370333462491
	.quad	0x3fdf47ea2f08ba1c              # double 0.48876432984516938
	.quad	0x3fd9cf08db409164              # double 0.40326138888692342
	.quad	0x3fb3ee955fda4bb8              # double 0.077859245206396532
	.quad	0x3fc0f14d1a0b7528              # double 0.13236392757145521
	.quad	0x3fed0b02bd8ed21b              # double 0.90759408019090715
	.quad	0x3fd1d3aa0e8da3f8              # double 0.27854396268099846
	.quad	0x3fb9c9f5dd360418              # double 0.10073792124423198
	.quad	0x3fe5cc96d36726ce              # double 0.68122426309238349
	.quad	0x3fd0bd03a9d9feb2              # double 0.26153651797356325
	.quad	0x3fc939b61129a950              # double 0.19707370603584673
	.quad	0x3fd9b553ddd4d852              # double 0.40169235861993002
	.quad	0x3fd9a49f537bad7c              # double 0.4006727519287876
	.quad	0x3fee3fd72e1c120c              # double 0.94529303556243027
	.quad	0x3fe260f49854fccd              # double 0.57433538200702972
	.quad	0x3fb88f29ab6be7e8              # double 0.095934490538553185
	.quad	0x3fe1fd6c4c8983cb              # double 0.56218543003716925
	.quad	0x3fb0a6e1e8225888              # double 0.065046424077396137
	.quad	0x3fe30b50ff6cecdc              # double 0.59513139617720467
	.quad	0x3fd1681115c03dc4              # double 0.27197672962298847
	.quad	0x3fea84f4f3a4904b              # double 0.82873008333673093
	.quad	0x3fe562a43c2032cc              # double 0.66829120391192864
	.quad	0x3fed7d7cdb4517ba              # double 0.92156832529212029
	.quad	0x3fae0b5ecd9c3ee0              # double 0.058680498694341443
	.quad	0x3fc97346625dac9c              # double 0.19883041193984219
	.quad	0x3fe996a5f5c3332f              # double 0.79963968277443154
	.quad	0x3fea693f89831155              # double 0.82534767968949529
	.quad	0x3fef2a6b11cc6848              # double 0.97392800785315447
	.quad	0x3fabdcd22d17f750              # double 0.054419105534164403
	.quad	0x3fe13c6591c58d00              # double 0.53862265082389627
	.quad	0x3fec57e71ecec670              # double 0.8857303239548866
	.quad	0x3fde30615be6d908              # double 0.47170289969234647
	.quad	0x3fcb2c7e483d77b4              # double 0.21229532744740498
	.quad	0x3fcd03d1acc61968              # double 0.22667904792997295
	.quad	0x3f9403f7674cace0              # double 0.019546380691434773
	.quad	0x3fdf81ac35eef110              # double 0.49228959338121658
	.quad	0x3fefa6c51c55a61d              # double 0.98910766157240781
	.quad	0x3fe44862d1fe3946              # double 0.63383618368406114
	.quad	0x3fce3621adcb1ae4              # double 0.2360269640541538
	.quad	0x3fd73354735d388c              # double 0.36250792757062622
	.quad	0x3fa7837e05745fd0              # double 0.045925081411212099
	.quad	0x3fe6570622dac455              # double 0.69812304313212314
	.quad	0x3fcf58c8aedfe4e8              # double 0.24489697016523526
	.quad	0x3fe9a5b976086765              # double 0.8014800362900415
	.quad	0x3fe90b036643d1ff              # double 0.78259439443223744
	.quad	0x3fd3c40a476e9e64              # double 0.30884034133712235
	.quad	0x3fe806d436e23b5a              # double 0.75083361358143041
	.quad	0x3fe5597c0425991a              # double 0.66717339334425962
	.quad	0x3fd18225cfa2ddc8              # double 0.27356858517620397
	.quad	0x3fddad9e96f159e6              # double 0.46372189274316467
	.quad	0x3fd778cd8a6e8450              # double 0.36674822348328906
	.quad	0x3feec2e882d58c58              # double 0.9612925105433403
	.quad	0x3fb8f84c8ba06d88              # double 0.097538742149870683
	.quad	0x3fdc176dd6d0279c              # double 0.43892999627916551
	.quad	0x3fdc17fd3de19234              # double 0.43896418612556265
	.quad	0x3fee2f36a3b9a534              # double 0.9432633588559498
	.quad	0x3fe2b89fd7cb42c0              # double 0.58503715655577793
	.quad	0x3febde1969e59ccb              # double 0.87086172755234637
	.quad	0x3fc509ef5ac2d258              # double 0.16436569148722202
	.quad	0x3fe39db44ee72962              # double 0.61300101671922058
	.quad	0x3fd4db256aa78e52              # double 0.32587562003593462
	.quad	0x3fe62b6e91315965              # double 0.69280174596751165
	.quad	0x3fe08f3f3ef0eb45              # double 0.51748621266538264
	.quad	0x3fec3a53b7b2fb87              # double 0.88211999777546246
	.quad	0x3fe2ff96e1b17f22              # double 0.59369987564784688
	.quad	0x3fec451e5b0b251f              # double 0.88343732625904525
	.quad	0x3fed80044d3ef661              # double 0.92187705123042119
	.quad	0x3fe65c297e261149              # double 0.69875025404375279
	.quad	0x3fe572a5f5093048              # double 0.67024515017102093
	.quad	0x3fc89fc57883bf74              # double 0.19237583527091895
	.quad	0x3fe1d984c8da26ae              # double 0.55780257443367076
	.quad	0x3fd565410e5fc33e              # double 0.33430506137579019
	.quad	0x3fe34e7f946da820              # double 0.60333231916343166
	.quad	0x3fe9b9281f97c2fe              # double 0.80385214014503936
	.quad	0x3fe9796eed99aa84              # double 0.79607340246487057
	.quad	0x3fdb2dc8891cadae              # double 0.42466939344259458
	.quad	0x3fe7582f72425377              # double 0.72951481167056798
	.quad	0x3fced2eed37902b0              # double 0.24081216169181152
	.quad	0x3fde1a072b8a4fce              # double 0.47033862354259959
	.quad	0x3fe8326921cfe2ab              # double 0.75615364650646677
	.quad	0x3fef50f14ac72981              # double 0.97863068203996317
	.quad	0x3fedcaa946d876bf              # double 0.93098892056487859
	.quad	0x3fed3319abf65bef              # double 0.91248782717127408
	.quad	0x3fb90d9204f53fc0              # double 0.097863317690324969
	.quad	0x3fd8864cddc59ca6              # double 0.38319703729070864
	.quad	0x3fed5fb88f1e2890              # double 0.9179346843022973
	.quad	0x3feb93cb78587463              # double 0.86179135804162532
	.quad	0x3fdb0b1d1e3902da              # double 0.4225533290046265
	.quad	0x3fdc0b682e7cf3aa              # double 0.43819622554638704
	.quad	0x3fe96b2240d49baf              # double 0.79432785665709627
	.quad	0x3fdda11569ed71ca              # double 0.46295676559909948
	.quad	0x3fe0b1699426218e              # double 0.52165678916303349
	.quad	0x3fde7535ccdd005e              # double 0.47590394025974614
	.quad	0x3fe03cad35133173              # double 0.50740681043821068
	.quad	0x3fc5ffde9bb88590              # double 0.17187101939729788
	.quad	0x3fdbcc07174ddaba              # double 0.43432786250870559
	.quad	0x3fe9e5421a4355dd              # double 0.80923562173364483
	.quad	0x3fee48bef2e7bcf4              # double 0.94638011400630128
	.quad	0x3fee117e28a04622              # double 0.93963535246638608
	.quad	0x3fc1df05eccb1708              # double 0.13961862623380505
	.quad	0x3fd96454f0a7fe14              # double 0.39674876691421557
	.quad	0x3fdd93de1db46e0e              # double 0.46215012455806537
	.quad	0x3fe4df1b6924545a              # double 0.65223475013284404
	.quad	0x3febb19ca1e38720              # double 0.86543113345053157
	.quad	0x3f81241373e9b640              # double 0.0083695907353230625
	.quad	0x3fe09b800e1405a9              # double 0.51898195981646211
	.quad	0x3fe2d160a0c17323              # double 0.58805877111044358
	.quad	0x3fe413e31e725a57              # double 0.62742763468379337
	.quad	0x3fe9830d68daec06              # double 0.79724760512851911
	.quad	0x3fecef9840e3de2a              # double 0.90424740480279309
	.quad	0x3fe173a3999c619b              # double 0.54536609651681844
	.quad	0x3fed4253fe2afe6f              # double 0.91434669153382042
	.quad	0x3f7bf84e5fbf8000              # double 0.0068286000714294914
	.quad	0x3fdefd2fd4a889f8              # double 0.48420329825799469
	.quad	0x3fe985fca31351dc              # double 0.79760581827809629
	.quad	0x3fcb6f5c70bd9ec8              # double 0.21433597092549506
	.quad	0x3feffb17e440fe77              # double 0.9994010408481263
	.quad	0x3fdfaee6081e3556              # double 0.49504996102117127
	.quad	0x3fd2f311f35393ca              # double 0.29608582270003281
	.quad	0x3fe8c7a909cd7ca5              # double 0.77437259592615659
	.quad	0x3fb8b871c65623c8              # double 0.096564398691170727
	.quad	0x3fdf29a5841a7fb2              # double 0.48691690350278372
	.quad	0x3fd3227225f072d8              # double 0.29897741036419978
	.quad	0x3fd93abc75c9cb3a              # double 0.39420997145423409
	.quad	0x3fe7ffa5623670ae              # double 0.7499567907539324
	.quad	0x3fe238635b836326              # double 0.5693833148353391
	.quad	0x3fd617801e70596c              # double 0.34518435452027663
	.quad	0x3fefc74338528773              # double 0.99307404518570618
	.quad	0x3fb83bd2a9e978d8              # double 0.094662825090810698
	.quad	0x3fa7f1b1167b3f80              # double 0.046765836710277675
	.quad	0x3fddf54b9aad24c8              # double 0.46809663872825213
	.quad	0x3fe7a9f91e2114d9              # double 0.73949867138494618
	.quad	0x3fed734c3474144d              # double 0.92032442326365926
	.quad	0x3fb75928dbdc59c8              # double 0.091204217602672277
	.quad	0x3fdbba888b3e34ca              # double 0.43326009366940055
	.quad	0x3fcca47c25b18510              # double 0.22376968231677852
	.quad	0x3fe58ef10978381a              # double 0.67369891976864271
	.quad	0x3fc4cb8b596d61a8              # double 0.16246168009344086
	.quad	0x3fed8e3b86ba6071              # double 0.92361236871785313
	.quad	0x3fc3f3d41aef1bfc              # double 0.15587855639589054
	.quad	0x3fc29b6eb917e988              # double 0.14536842382205983
	.quad	0x3fcb4ff84e200470              # double 0.2133779889555032
	.quad	0x3fea5300ccdc9bbb              # double 0.82263221752224724
	.quad	0x3fe1be5e1a9051ba              # double 0.55448823154670568
	.quad	0x3fe9239be65a77cb              # double 0.78559679976364671
	.quad	0x3fedd12f9480ff66              # double 0.93178538326899907
	.quad	0x3fe6f62f834d1c9b              # double 0.71755195278901185
	.quad	0x3fe656aebff68d00              # double 0.69808137409964388
	.quad	0x3fdc9a1b540a23c4              # double 0.44690592963212006
	.quad	0x3fcd3d079553c27c              # double 0.22842497626654168
	.quad	0x3fdbfbb6e0d9c098              # double 0.43723842580858152
	.quad	0x3fb69b16d02a97f8              # double 0.088303972074385118
	.quad	0x3fd28602cdebceec              # double 0.28942937955365156
	.quad	0x3fea7839c1821508              # double 0.82717597765500361
	.quad	0x3fef16fd83afff63              # double 0.97155643196309104
	.quad	0x3fb20391f5d409f0              # double 0.070366976277035809
	.quad	0x3fee7127e81c9c9d              # double 0.95131297430352257
	.quad	0x3fe53cfaf63ba076              # double 0.66369388668409957
	.quad	0x3fc87cb5db8a43e8              # double 0.19130585880023365
	.quad	0x3fe7fe2e46ad6fef              # double 0.7497779255313598
	.quad	0x3fe719d172b30ffb              # double 0.72190163042296207
	.quad	0x3fc2f0e4eb11cc84              # double 0.14797650793079609
	.quad	0x3fda9c8c56e21004              # double 0.41580494389222644
	.quad	0x3fe874491392a815              # double 0.76419500181987365
	.quad	0x3fe402b543d90344              # double 0.62533057452683538
	.quad	0x3fe9f158b5a7f3f6              # double 0.81071124534321259
	.quad	0x3fef933459ded758              # double 0.98671929886652787
	.quad	0x3f958366fd0e70c0              # double 0.021009072490060232
	.quad	0x3fe3250150511f84              # double 0.59826722800151844
	.quad	0x3fe23178d96e6f4b              # double 0.56853907076900023
	.quad	0x3fe6cb7bf13a9fc9              # double 0.71233937373198686
	.quad	0x3fe1c7bad1aadf02              # double 0.55563107443501303
	.quad	0x3fd9c9bef069fca6              # double 0.40293858983927533
	.quad	0x3f5873e955ee9000              # double 0.0014924791973749407
	.quad	0x3fcc0a4abd691450              # double 0.21906408546979828
	.quad	0x3fb5d7179d8c8fe0              # double 0.085313297237518793
	.quad	0x3fdfdd5c0ac61af4              # double 0.49788571407445592
	.quad	0x3fce027cb63a7f5c              # double 0.23445090196491492
	.quad	0x3fd6d66a7ab7d518              # double 0.35683691009701723
	.quad	0x3fe6076e02533222              # double 0.68840694860552198
	.quad	0x3fed770ef9535bdc              # double 0.92078350731287228
	.quad	0x3fcb3ac05509bc70              # double 0.212730447313763
	.quad	0x3feb43c78619558c              # double 0.85202385131076274
	.quad	0x3fe0a0a3d31241da              # double 0.51960936760775245
	.quad	0x3fd3844077276aaa              # double 0.30494701038484584
	.quad	0x3f9afea2a9a8daa0              # double 0.026361981969069803
	.quad	0x3f95f51084646420              # double 0.021442659454894764
	.quad	0x3fe57dcbb7bc8c2d              # double 0.67160592924154161
	.quad	0x3feb25b8b97a9504              # double 0.84835468508086409
	.quad	0x3fed372e23569637              # double 0.91298586751935928
	.quad	0x3fcaf4c53ff6333c              # double 0.21059480307703804
	.quad	0x3fe7f9460055318a              # double 0.7491788870334386
	.quad	0x3fef45db2db4b3e8              # double 0.97727736403396381
	.quad	0x3fdd057eb5b92bfc              # double 0.45346038576525394
	.quad	0x3fe0719e6ecee90f              # double 0.5138694919799337
	.quad	0x3fc40e78b5858fbc              # double 0.15669163573613598
	.quad	0x3fe7b858dfef3362              # double 0.74125331628020441
	.quad	0x3fe11c6fbf55c0f8              # double 0.53472125406372495
	.quad	0x3f88550f56e65300              # double 0.011880988921612268
	.quad	0x3fd0fc39c6014a5e              # double 0.26539463364057336
	.quad	0x3fe91d72e3ed59f1              # double 0.78484482304594227
	.quad	0x3fd1cbc25b6b9c60              # double 0.27806147506493595
	.quad	0x3fe0d5c826badc2b              # double 0.52609641613424196
	.quad	0x3fd533018cd7927c              # double 0.33123816255673666
	.quad	0x3fe8408533bce09b              # double 0.75787601571120733
	.quad	0x3fe94f6e031919de              # double 0.79094601254547192
	.quad	0x3f6cdf4aaf765300              # double 0.003524442548675899
	.quad	0x3fc1dddd9667c1fc              # double 0.13958330005654307
	.quad	0x3fdef15e58dac66e              # double 0.48348196675497135
	.quad	0x3fed1acba5e70364              # double 0.90952093508540743
	.quad	0x3fe2ffbe593add56              # double 0.59371869495127316
	.quad	0x3fe92d73b61ef235              # double 0.78679833956227319
	.quad	0x3fc77359e36141bc              # double 0.18320773699316628
	.quad	0x3fd9e016c0627b4c              # double 0.40430229938094864
	.quad	0x3feaedf42f34f0cf              # double 0.84154710025861756
	.quad	0x3fec19b09a0d48d6              # double 0.8781359680963543
	.quad	0x3fd9b61d988f6310              # double 0.40174045465896402
	.quad	0x3facaeaa8101e380              # double 0.056020096061678792
	.quad	0x3fed540b05d43980              # double 0.91650916231610324
	.quad	0x3feb469f952f2439              # double 0.85237101686028105
	.quad	0x3fefce41373778aa              # double 0.99392758163937356
	.quad	0x3fe35976a1d9a354              # double 0.60467082606656186
	.quad	0x3fc87ca6d5b7b780              # double 0.19130406794959853
	.quad	0x3fe1691c0b1d08a6              # double 0.5440807549532749
	.quad	0x3fef1c2272538f81              # double 0.97218439416290902
	.quad	0x3fed794fd58a22d2              # double 0.92105857569648664
	.quad	0x3fca2d0cd58fce94              # double 0.20449982097453712
	.quad	0x3fed8756e683271e              # double 0.92277092954575202
	.quad	0x3fea0d7ec943bb1d              # double 0.81414737042891583
	.quad	0x3fe944d27a06eadb              # double 0.7896511443462616
	.quad	0x3fe42fd38d694b9b              # double 0.63083818072697129
	.quad	0x3fe08a122b13006b              # double 0.51685436642584415
	.quad	0x3fdc36baf68faee4              # double 0.44084047392128256
	.quad	0x3fee570fc1a6527c              # double 0.94812763044554015
	.quad	0x3fe6b7c46bfe075a              # double 0.70993252842184096
	.quad	0x3fd336a171586cf0              # double 0.30020938938987651
	.quad	0x3fc8f0c3c01d1ad8              # double 0.19484755402137099
	.quad	0x3fe7f51aab98e60e              # double 0.7486699439534179
	.quad	0x3fd694a4d61e5b5c              # double 0.35282250318544128
	.quad	0x3fb193cbac01c828              # double 0.068661431783568205
	.quad	0x3fe637b027b155f5              # double 0.69429786446079211
	.quad	0x3fb8fd0ead3b75c8              # double 0.097611348431619338
	.quad	0x3f99f0afaa84b880              # double 0.025332207472438473
	.quad	0x3f937a814a383140              # double 0.019022007136343833
	.quad	0x3fcb643a2d8a40fc              # double 0.21399619315753415
	.quad	0x3fd2e6c6914b02dc              # double 0.29533542813082447
	.quad	0x3fce3a8563a92ac4              # double 0.23616092077494077
	.quad	0x3fda8784de1228a2              # double 0.41452142416586402
	.quad	0x3feada0e5065110a              # double 0.83911815359218278
	.quad	0x3fd5f887d1ce069c              # double 0.34329410065411436
	.quad	0x3fd7c13022c8e4da              # double 0.37116626164386235
	.quad	0x3fede1a1d84b104d              # double 0.93379299397248305
	.quad	0x3fdb675ba0d61afc              # double 0.42818346697497112
	.quad	0x3fd57de67395ed2e              # double 0.33580933845196881
	.quad	0x3f4ef050a3fad800              # double 9.4417512442279694E-4
	.quad	0x3fb3a1852e310680              # double 0.076683353211615568
	.quad	0x3feebaabeca33a9f              # double 0.96028705805095515
	.quad	0x3fe3aac2be344892              # double 0.61459481381668213
	.quad	0x3f9b47d27777b6a0              # double 0.026641167203641403
	.quad	0x3fdfbd0cf9d08f2a              # double 0.49591373821225437
	.quad	0x3fe718e315fcebe9              # double 0.72178797049070653
	.quad	0x3fdf2cab948db5bc              # double 0.48710145480330502
	.quad	0x3fc96c36d3410d64              # double 0.19861493411199682
	.quad	0x3fde8b99d2e69658              # double 0.47727056117796485
	.quad	0x3fecd6e749c08057              # double 0.90123333363227232
	.quad	0x3fc147d23851b904              # double 0.13500430822336551
	.quad	0x3fec3c7c06223b02              # double 0.88238335798254774
	.quad	0x3fd7648d989c7340              # double 0.36551227477484716
	.quad	0x3fd5d0322b52b506              # double 0.34083227377671255
	.quad	0x3fd084f230fd2be0              # double 0.2581143835456583
	.quad	0x3fe749d13897e20d              # double 0.72776089719178716
	.quad	0x3fdcf1754737a998              # double 0.45223743395640659
	.quad	0x3fe442ff868849a8              # double 0.63317848468641547
	.quad	0x3fee79afce0603cc              # double 0.95235433806384994
	.quad	0x3fe38a3df467dd10              # double 0.61062524543277341
	.quad	0x3fe11365704d209f              # double 0.53361770566791111
	.quad	0x3f90570b355a3560              # double 0.015957045680399573
	.quad	0x3fcf08edfb429a70              # double 0.24246001022875729
	.quad	0x3fe88c01c0339a13              # double 0.76709067859047975
	.quad	0x3fb00bb8dc325170              # double 0.062678865202831835
	.quad	0x3fa20b5ee602b590              # double 0.035243001534904228
	.quad	0x3feb5c4b1ad7454e              # double 0.85501628153193976
	.quad	0x3fe120202e4e1406              # double 0.53517159503883316
	.quad	0x3fd76ceec8afa7a4              # double 0.3660237274003697
	.quad	0x3f4f87b887904400              # double 9.6222410422985849E-4
	.quad	0x3fdde3b1acd38756              # double 0.46702234151427058
	.quad	0x3fea62a554822627              # double 0.8245417261652549
	.quad	0x3fd0ed7bebd9e7b0              # double 0.26449487717001841
	.quad	0x3fdcaadb4544e0d6              # double 0.44792825474315856
	.quad	0x3f9740398c96d240              # double 0.022705935674553368
	.quad	0x3fda485febb8dc9a              # double 0.41066740054834272
	.quad	0x3fc707fb312c7f40              # double 0.17993106747689502
	.quad	0x3fe010bdd3bf4d02              # double 0.50204364163292348
	.quad	0x3fe59db9632ecabc              # double 0.67550343867909346
	.quad	0x3fe11e66fc5fd57a              # double 0.53496121684899767
	.quad	0x3fe8a07738ee7594              # double 0.76958809966497421
	.quad	0x3feaa9c0e8b1da5f              # double 0.8332218689746006
	.quad	0x3fd5c1800e4df146              # double 0.33993531605644411
	.quad	0x3fe343268e62c3c2              # double 0.60194709596373053
	.quad	0x3fecebee7a103f10              # double 0.90380023804206822
	.quad	0x3fa5e33f0014c5c0              # double 0.042749375114350396
	.quad	0x3fdd5c5d2ee811ee              # double 0.45876245098796076
	.quad	0x3fd2366a8e41a10c              # double 0.2845713032934476
	.quad	0x3fce9db04feb2d74              # double 0.23918727781561311
	.quad	0x3fe9bfceafab453a              # double 0.80466398535114725
	.quad	0x3fea8c587674cd7a              # double 0.82963202606190056
	.quad	0x3fe161d118865c2a              # double 0.54319052495964582
	.quad	0x3fedf8d0185a9ede              # double 0.93662266499174129
	.quad	0x3fe136458ccc5874              # double 0.53787496089604625
	.quad	0x3fed88d8d3520b99              # double 0.92295495294125651
	.quad	0x3fd41237efe5b158              # double 0.31361196925606327
	.quad	0x3fc83646358f6eb0              # double 0.18915631880996875
	.quad	0x3fef9a5fdc26cdca              # double 0.98759453771929739
	.quad	0x3fb100ba7b988ac8              # double 0.066417365240833637
	.quad	0x3fd42f930548489c              # double 0.31540370479445712
	.quad	0x3fe23b777bd09355              # double 0.56975912268226614
	.quad	0x3fd271179bf82db6              # double 0.28815260154143674
	.quad	0x3fea3a18560884f4              # double 0.81959168246626612
	.quad	0x3fef3d8e5418409f              # double 0.976264156577617
	.quad	0x3fd79ae25f1dde4c              # double 0.36882838524568196
	.quad	0x3fe23cdaa3562a20              # double 0.56992847348857723
	.quad	0x3fe72c9c2913787b              # double 0.72419555685679826
	.quad	0x3fe3eac2bd0777b6              # double 0.6224073116279587
	.quad	0x3feea42f879c1717              # double 0.95754219518923633
	.quad	0x3fd4efd22c09054a              # double 0.32713751125637158
	.quad	0x3fea877ab0702e2f              # double 0.82903799496256692
	.quad	0x3fe6605516bfe9af              # double 0.69925932353299014
	.quad	0x3fdd7016d9399ae4              # double 0.45996638501530485
	.quad	0x3fecd63527cb2159              # double 0.90114839336551278
	.quad	0x3fd33a27598d55f6              # double 0.30042442078897069
	.quad	0x3fd1f469c720afea              # double 0.28054279752791322
	.quad	0x3fca07588577bbec              # double 0.20334917561510168
	.quad	0x3fe4acb23b50bf8f              # double 0.64608108124774499
	.quad	0x3fbd29f7d6d74110              # double 0.11392163272035227
	.quad	0x3fe725d840fb424d              # double 0.72336971942611117
	.quad	0x3fd90c209f8bb800              # double 0.39136519985811447
	.quad	0x3feb22439e069ee6              # double 0.8479326330607051
	.quad	0x3fcd537e9045bcc8              # double 0.22911054653693541
	.quad	0x3fca8aa143b4838c              # double 0.20735565000452671
	.quad	0x3fdecd1f2c67cf70              # double 0.48126963936305511
	.quad	0x3f77e325b757aa80              # double 0.0058318589485489847
	.quad	0x3fd57ad37a8bdd9c              # double 0.33562170951287285
	.quad	0x3fc2dcf39cb680a0              # double 0.14736790801999167
	.quad	0x3fe3fb7a4e51de33              # double 0.62444796845279027
	.quad	0x3fe27918115c3fdf              # double 0.57728198424046784
	.quad	0x3fd3a82283ca8db6              # double 0.30713713522183228
	.quad	0x3feb2794dca125bf              # double 0.84858172504134888
	.quad	0x3fe6e6c172000e66              # double 0.71566841378848944
	.quad	0x3fec68278d10d075              # double 0.88771417190447599
	.quad	0x3fcbc7b9f1c4e4bc              # double 0.21703266434795931
	.quad	0x3fe72f19df2a8d5b              # double 0.72449964129593114
	.quad	0x3fdf4e5647d5c9e6              # double 0.48915631308696417
	.quad	0x3fd05c3fea11fa48              # double 0.25563047274036821
	.quad	0x3fea5446a339d666              # double 0.8227875888830567
	.quad	0x3fd5a07a0deb4714              # double 0.33791972502977896
	.quad	0x3fee627e15786987              # double 0.94952301209859591
	.quad	0x3fe4608790279dfd              # double 0.63678339152551156
	.quad	0x3fd4c5376932d38e              # double 0.32453713677687623
	.quad	0x3fee9c553039a3a8              # double 0.9565835897347954
	.quad	0x3fc89ba1a0f794d0              # double 0.1922494922611464
	.quad	0x3fdab16aa4639daa              # double 0.41707864812493745
	.quad	0x3fe8595c322af201              # double 0.76090822027578053
	.quad	0x3fe079ee24043f4a              # double 0.51488406214228033
	.quad	0x3fe2376692011f7d              # double 0.56926277653199941
	.quad	0x3fa2bca678006220              # double 0.036595537327404282
	.quad	0x3fe1be6260158664              # double 0.55449026838705295
	.quad	0x3fe2f65a1151b424              # double 0.59257224447867829
	.quad	0x3fc397efe4d4f3e4              # double 0.15307425187520984
	.quad	0x3fd3e5c29e884110              # double 0.3108984516302522
	.quad	0x3fcc0fa62b025ad8              # double 0.21922757244165925
	.quad	0x3fd59a79869efa08              # double 0.3375533880861501
	.quad	0x3fe0436514414b33              # double 0.50822690921845604
	.quad	0x3fc7d2f14426871c              # double 0.18612495258008088
	.quad	0x3fed2cc301718892              # double 0.91171407968455953
	.quad	0x3feef993d3b20aa4              # double 0.96796599718830522
	.quad	0x3feafc01482bd78d              # double 0.84326233001660145
	.quad	0x3fe697eef7bf7b8f              # double 0.70604656589772385
	.quad	0x3fd73f801e297db2              # double 0.36325076051249561
	.quad	0x3febcdcc768cf2d9              # double 0.86887190966043726
	.quad	0x3feb59b671938b89              # double 0.85470125372772643
	.quad	0x3fdbf73529607888              # double 0.43696335831362676
	.quad	0x3fea1482ef0e4589              # double 0.81500384035659679
	.quad	0x3fde5c9fe7f8d674              # double 0.47440335896985819
	.quad	0x3fec3b5e0bcf15fa              # double 0.88224699312621557
	.quad	0x3fd6891e888c5f22              # double 0.35211909613416215
	.quad	0x3fb91973860b4348              # double 0.098044605470261392
	.quad	0x3fec65fbc956097c              # double 0.88744916270688589
	.quad	0x3fd12ee1430bc09c              # double 0.26848632380916526
	.quad	0x3feebf4ecb6d5709              # double 0.9608530018983582
	.quad	0x3fd6f80f99d0ef00              # double 0.35889043828113643
	.quad	0x3fb39713525b1880              # double 0.076523978811652071
	.quad	0x3fea7438275c90f7              # double 0.82668693244752844
	.quad	0x3fe5aa4e63973e87              # double 0.67703933192565635
	.quad	0x3feefe2b51ece9c7              # double 0.96852651597083017
	.quad	0x3fec6ab4d2922da3              # double 0.88802567603254479
	.quad	0x3fe73b61f2c3d04d              # double 0.72599885382670382
	.quad	0x3fc0e41e38554930              # double 0.13196161032335274
	.quad	0x3fe6036feb557705              # double 0.68791957820550975
	.quad	0x3fededbc692c55cd              # double 0.9352705053485636
	.quad	0x3fdd63b23792a688              # double 0.45920997073208314
	.quad	0x3fdfdd51093b229a              # double 0.49788309003319287
	.quad	0x3feda655b68896a7              # double 0.92655454302867646
	.quad	0x3fe0e13f5592ff43              # double 0.52749602044784927
	.quad	0x3fcc4ee47baf47ac              # double 0.22115760840693832
	.quad	0x3fea5b983c5b3c33              # double 0.82368099010807894
	.quad	0x3fe9d376b1d789e0              # double 0.80706343397860891
	.quad	0x3fc5f275dec199c0              # double 0.17146180512209064
	.quad	0x3fe0fc2ddde5b6ac              # double 0.53078358973808326
	.quad	0x3fe1428b2761686a              # double 0.53937299434188657
	.quad	0x3febb655baac9dc8              # double 0.86600767574139415
	.quad	0x3fed86ece9665efa              # double 0.92272039018550278
	.quad	0x3fe1bbda0f54f579              # double 0.55418112749582271
	.quad	0x3fe3b9b0475c5d02              # double 0.61641706407218089
	.quad	0x3fd2db8d26546f76              # double 0.29465035193583533
	.quad	0x3fefffb7db1a08b1              # double 0.99996559899616077
	.quad	0x3fd7a70abcbc5e22              # double 0.36957043105346277
	.quad	0x3f510ca852084c00              # double 0.001040615439823922
	.quad	0x3fe6d65f12867409              # double 0.71366838091091822
	.quad	0x3fb471df7a198960              # double 0.079862563428411359
	.quad	0x3fe09ea39cd106eb              # double 0.51936512592530215
	.quad	0x3fdf956f869f2aba              # double 0.49349582811980108
	.quad	0x3fe1c12fca18ba61              # double 0.55483235809317588
	.quad	0x3fe7532d30efbfe7              # double 0.72890338476099437
	.quad	0x3fc9b13b28216280              # double 0.20072116336338652
	.quad	0x3fda5311b11c7d8a              # double 0.41132013603233786
	.quad	0x3fec7df03224c430              # double 0.89037332338023667
	.quad	0x3fd547a4d5f4fdde              # double 0.33249779600370555
	.quad	0x3feb4a5608950c80              # double 0.85282422710623962
	.quad	0x3fec616918871393              # double 0.88689093390040552
	.quad	0x3fb7a24d1e94b8d8              # double 0.092320270505953927
	.quad	0x3fe7bab9c4bc9b05              # double 0.74154365945000278
	.quad	0x3fe207f94f4a246b              # double 0.56347337232831529
	.quad	0x3fe7944c19ec2577              # double 0.73685269415834298
	.quad	0x3fee9a2052a5aab9              # double 0.95631424085634997
	.quad	0x3fe02614428131fa              # double 0.50464833249276286
	.quad	0x3fed093f032242e9              # double 0.9073786793906865
	.quad	0x3fba6dcb891c26a8              # double 0.10323783967410327
	.quad	0x3fc7b6710198a994              # double 0.18525517061182184
	.quad	0x3fd6cd702d751e68              # double 0.35628895224770085
	.quad	0x3fe0b2581d00121d              # double 0.52177053131214601
	.quad	0x3fdbacf575c010c8              # double 0.43243156909035152
	.quad	0x3fdc9f75724f2c78              # double 0.44723259127631065
	.quad	0x3fe574f869bf1c39              # double 0.67052860883348508
	.quad	0x3fea43598bcc549b              # double 0.82072140983895581
	.quad	0x3fd51669f4274a50              # double 0.32949303477395109
	.quad	0x3faf31088efefad0              # double 0.060920970397537411
	.quad	0x3fe35a4d82d98dcb              # double 0.60477328831296384
	.quad	0x3fe19890a46a952c              # double 0.54987365830007695
	.quad	0x3fe68a5e8cb514a9              # double 0.70439078790572751
	.quad	0x3fefca353cee312e              # double 0.9934335889861694
	.quad	0x3feb09238dc11efd              # double 0.84486558615114371
	.quad	0x3fe9434189d0c8d3              # double 0.7894599620542756
	.quad	0x3fe9fe56dc996830              # double 0.812297278268721
	.quad	0x3fb1de93bfa24088              # double 0.069802507672877323
	.quad	0x3fdf21700cf8c474              # double 0.48641587511799078
	.quad	0x3febb0e0f03b485a              # double 0.86534163398961117
	.quad	0x3fe8b2884698373e              # double 0.77179349697119171
	.quad	0x3fbf36f23b7cfaf0              # double 0.12193216278408747
	.quad	0x3fdb4f140c9bf4ac              # double 0.42670155745856664
	.quad	0x3fe1b9b735b288cd              # double 0.55392036903165265
	.quad	0x3fdcf55243bb8516              # double 0.45247322668554213
	.quad	0x3fe1eeee7e7969ff              # double 0.56041645719534461
	.quad	0x3fa415589543af90              # double 0.039225357266189254
	.quad	0x3fdf6bd56d6a5d50              # double 0.49095664677721107
	.quad	0x3fd044ac19d262c6              # double 0.25419142266904904
	.quad	0x3fb9f48452e3bbe0              # double 0.10138728164359589
	.quad	0x3fefc437d8d51e6b              # double 0.9927024111756969
	.quad	0x3fd09e234b3d36e2              # double 0.25965196940965829
	.quad	0x3fbed9a95a064ac8              # double 0.12050875137201011
	.quad	0x3fe774f7c2fb5c74              # double 0.73302829821012816
	.quad	0x3fefcbd7603d5310              # double 0.99363297268664219
	.quad	0x3fea63593c1962a9              # double 0.82462751138799206
	.quad	0x3feba1d621211595              # double 0.86350542517236539
	.quad	0x3fe6893dbb1364c6              # double 0.70425306833490064
	.quad	0x3fdc0840025891b4              # double 0.43800354222392035
	.quad	0x3fe0b62ba857a242              # double 0.52223761443480776
	.quad	0x3fd6ecd385065ab6              # double 0.35820472708420981
	.quad	0x3fd1ef78559e71fe              # double 0.28024109231208161
	.quad	0x3fee1a020dab6abf              # double 0.940674807260926
	.quad	0x3fe921948b296790              # double 0.78534915142084749
	.quad	0x3fe5ad22027bc3e2              # double 0.67738438115167932
	.quad	0x3fe93e00bd9260a7              # double 0.78881871247997004
	.quad	0x3fc4a422cb8fe234              # double 0.1612590307193088
	.quad	0x3fd5f756080c0392              # double 0.34322119508583981
	.quad	0x3febe9c7b337c995              # double 0.87228760722637111
	.quad	0x3fe8c8c7b36f53af              # double 0.77450928731797386
	.quad	0x3fd767cec54185e0              # double 0.36571091902996322
	.quad	0x3fea935f88f02519              # double 0.8304898905345538
	.quad	0x3fed5a5eb7766da9              # double 0.91728149254361313
	.quad	0x3fd1235bc331c6ac              # double 0.26778310834843455
	.quad	0x3fcbdaad4a9a242c              # double 0.21761098997765893
	.quad	0x3fd7625d9ad7c86e              # double 0.36537876244904666
	.quad	0x3fe89f5e78254bf3              # double 0.76945422616915804
	.quad	0x3fdf44902eb306b4              # double 0.48855976639252252
	.quad	0x3fdfd12142c4b154              # double 0.49713927765221411
	.quad	0x3fe05d8294bad41b              # double 0.51141480492390501
	.quad	0x3fa464b2839c9eb0              # double 0.039830759588139641
	.quad	0x3fa7e618e2871830              # double 0.046677377369221396
	.quad	0x3fc3abb662a2b310              # double 0.153677747880828
	.quad	0x3fba6f8ce4358a48              # double 0.1032646233702873
	.quad	0x3fefdc3afcc29ed5              # double 0.99563359610780344
	.quad	0x3fe56e649d78ebed              # double 0.66972571140592907
	.quad	0x3fa9411a545a27b0              # double 0.049324820324798124
	.quad	0x3f9b6ab527289700              # double 0.026774244799660174
	.quad	0x3fe267dc8ec1e22f              # double 0.57517841226860422
	.quad	0x3fb0a6bd2e00d3b8              # double 0.065044234973199333
	.quad	0x3fcc891c8ee5bad0              # double 0.22293431260501118
	.quad	0x3fe3b0d3ddfb8107              # double 0.61533540111489138
	.quad	0x3fec9879f31573ae              # double 0.89361283757499677
	.quad	0x3fe420c9473f8069              # double 0.62900222697863939
	.quad	0x3fde32eae6eb0cbe              # double 0.47185776281930802
	.quad	0x3fc4506128e6ab14              # double 0.15870298859712106
	.quad	0x3fd8c69d0fd325d6              # double 0.38712240739240877
	.quad	0x3fdf97123186b31a              # double 0.49359564625301433
	.quad	0x3fe56708b9230c60              # double 0.66882740172912847
	.quad	0x3fe811582a18724c              # double 0.75211723539138963
	.quad	0x3fee2f125dc21abe              # double 0.94324606239464237
	.quad	0x3feb034d915c5616              # double 0.84415319815406309
	.quad	0x3fe4b18146b32882              # double 0.64666808899461636
	.quad	0x3febb9ac09ac98a1              # double 0.86641504182331996
	.quad	0x3fe0d855d09e0790              # double 0.52640810723845455
	.quad	0x3fd5c8919f26762a              # double 0.3403667501641815
	.quad	0x3fea43c8c0882ba2              # double 0.82077443698777963
	.quad	0x3fdd388ea2916fea              # double 0.45657697559158683
	.quad	0x3fdd95d5b2570160              # double 0.46227018753054061
	.quad	0x3fe6ac605d39b282              # double 0.70854204376298946
	.quad	0x3fd758a6ea0e080c              # double 0.36478588921465938
	.quad	0x3fee7633e819805a              # double 0.95192904788928989
	.quad	0x3fa4e0304014a8e0              # double 0.040772922346450136
	.quad	0x3fa9e369bed80e70              # double 0.050563149019606679
	.quad	0x3feff171f4322a6d              # double 0.99822328276179705
	.quad	0x3fe7ba2f6fdb4352              # double 0.74147769782039519
	.quad	0x3fbac5299a30cb88              # double 0.10457096113604625
	.quad	0x3fe4bc20d15025d1              # double 0.64796486741505011
	.quad	0x3fed14fe60888f80              # double 0.90881270269572667
	.quad	0x3fe891ed99a70e0f              # double 0.76781349191918646
	.quad	0x3fe4feb6b4cf0246              # double 0.65609298052010767
	.quad	0x3fefe488b5cb7599              # double 0.99664721972264935
	.quad	0x3fed71f40e5423cb              # double 0.92016032026833139
	.quad	0x3fd811e274486c08              # double 0.3760915885520153
	.quad	0x3fef61b7df8dad3a              # double 0.98067849791315287
	.quad	0x3fdc559fa37248e2              # double 0.44272604905667212
	.quad	0x3fee594cacf1f36c              # double 0.94840081957191335
	.quad	0x3fae5080533dc100              # double 0.059207925950319762
	.quad	0x3fc5a26a257dd268              # double 0.16901900129927871
	.quad	0x3fe1e5c25282ad30              # double 0.55929676165889042
	.quad	0x3fd28a0b30e36a52              # double 0.28967551969768579
	.quad	0x3fd6c9ec5786713e              # double 0.35607441470508039
	.quad	0x3fe03dfe3d0c65ce              # double 0.50756751941224265
	.quad	0x3fd2dc26d4cec6ec              # double 0.29468699247364216
	.quad	0x3fd1f5b0e84b5bc6              # double 0.28062079129216178
	.quad	0x3fe2c07c4b824520              # double 0.58599676845384252
	.quad	0x3fed6156c223290e              # double 0.91813218991708978
	.quad	0x3fed0b0ac618045b              # double 0.90759791078756835
	.quad	0x3fe763a858f8946c              # double 0.73091523530150715
	.quad	0x3fe9e7e3bafcc94d              # double 0.8095568325136725
	.quad	0x3fe1ac14f594a121              # double 0.55225608792264691
	.quad	0x3fc0855bd1d94b2c              # double 0.129069783654438
	.quad	0x3fe964021c09b7ed              # double 0.79345803714909169
	.quad	0x3fe33c8c9153fc47              # double 0.60114124664676971
	.quad	0x3fbd6bb2645254d0              # double 0.11492457341440176
	.quad	0x3fe87a36fe868328              # double 0.76491880142211688
	.quad	0x3feb67f9b0827915              # double 0.85644230341475469
	.quad	0x3fd84636947d9770              # double 0.37928547383341193
	.quad	0x3feb762e827fa49c              # double 0.85817647445687184
	.quad	0x3fd5775855dbf51e              # double 0.33540924439133046
	.quad	0x3fe9d670ab7e2312              # double 0.80742677206680669
	.quad	0x3fe0d187cf3c99f0              # double 0.52557745433733594
	.quad	0x3fe24f6fec916bf0              # double 0.57219692425439739
	.quad	0x3fa8736a24878d60              # double 0.047755543669860456
	.quad	0x3fe6cbb4bf3b04d5              # double 0.7123664603206189
	.quad	0x3fd6cae3bbfd7f7a              # double 0.3561333976594977
	.quad	0x3fdfec5b297fb308              # double 0.4988010316144913
	.quad	0x3fe4e67d15e4eba9              # double 0.65313581730093972
	.quad	0x3feacb72cda117cf              # double 0.83733501588789661
	.quad	0x3fa0859b803f5cd0              # double 0.032269343762601488
	.quad	0x3fd40a31f1d1dd1c              # double 0.31312225928509618
	.quad	0x3fe06d66861f4e37              # double 0.5133545512748644
	.quad	0x3fa0a1a9c91e8b80              # double 0.03248339252538468
	.quad	0x3fb974f6dffff190              # double 0.099440984427877632
	.quad	0x3fea307d6be349fb              # double 0.81841918060155139
	.quad	0x3fe6fa1b312735b9              # double 0.71803054428317303
	.quad	0x3fb2a92678b39d90              # double 0.072893528431100529
	.quad	0x3fe951d184b725a7              # double 0.79123760148029454
	.quad	0x3fc3938fcbe91564              # double 0.15294072586599861
	.quad	0x3fde3b203e0be2d4              # double 0.47235876139852206
	.quad	0x3fee9e8573edc79d              # double 0.95685074465130848
	.quad	0x3fd339e69ae3bdf0              # double 0.30040898443164021
	.quad	0x3fe23bda83f90d04              # double 0.5698063447565862
	.quad	0x3fc886462c389378              # double 0.19159772071102643
	.quad	0x3feed450116da822              # double 0.96341708568548179
	.quad	0x3fd2417e3d0d3a7a              # double 0.28524738275601857
	.quad	0x3fee8c7c8f878a11              # double 0.95464923890205189
	.quad	0x3fe0f04b2be98cb1              # double 0.52933271957990347
	.quad	0x3fe9569a6369445f              # double 0.79182166496515183
	.quad	0x3fe47c3d3a0f2257              # double 0.64016591396018441
	.quad	0x3fed53f320a0eaa8              # double 0.91649776814241068
	.quad	0x3fe07965a9114564              # double 0.51481898327817222
	.quad	0x3fd69e4b66bd9590              # double 0.35341153176553863
	.quad	0x3fe481b7bdcae0c3              # double 0.64083468502851593
	.quad	0x3fe25b885590d24d              # double 0.57367340766956831
	.quad	0x3fecf25792fcdc3f              # double 0.90458277424375655
	.quad	0x3fdc63298e7471fa              # double 0.44355238830192401
	.quad	0x3fee92451ec6d6d3              # double 0.95535522471501577
	.quad	0x3fe77a347b174a34              # double 0.73366760293203592
	.quad	0x3fefcf9dd0a8c8ce              # double 0.99409380677959702
	.quad	0x3fb171f6d6786cf8              # double 0.068145205841961487
	.quad	0x3fedf92310cff169              # double 0.93666222842834401
	.quad	0x3fcc56ce592c2470              # double 0.22139911035654647
	.quad	0x3fc1a9ecf591fdd8              # double 0.13799821844803151
	.quad	0x3fdf3e7f303262d0              # double 0.48818950373383263
	.quad	0x3fe16ca5d0aa3c64              # double 0.54451266054992375
	.quad	0x3feb127ce952a5dd              # double 0.8460068280302796
	.quad	0x3fd8d72583db66d8              # double 0.38813150288261289
	.quad	0x3fbc5f0f42a83930              # double 0.11082549455042989
	.quad	0x3fd64bd09488a2c4              # double 0.34837736611602232
	.quad	0x3fc6260fb362ff68              # double 0.17303653964153942
	.quad	0x3fec2d58279725f0              # double 0.88053519947533054
	.quad	0x3fe72a43228081c4              # double 0.72390896547954542
	.quad	0x3fe6378ea4f5647d              # double 0.69428188532323498
	.quad	0x3fd30f742d67eae4              # double 0.29781822618649145
	.quad	0x3fe50a28aeefc7c7              # double 0.65749010245621597
	.quad	0x3fd1420f26fe76ca              # double 0.26965693290717907
	.quad	0x3fdd68beda374a2a              # double 0.45951815900949333
	.quad	0x3fec11f8b5b56e97              # double 0.87719378938659787
	.quad	0x3fe8c81d646e29af              # double 0.77442807784364287
	.quad	0x3fe3fac86eb7c028              # double 0.62436315178456869
	.quad	0x3fd7ea8c1e5c0bd2              # double 0.37369063343811348
	.quad	0x3fd93e17b3e33508              # double 0.394414830848135
	.quad	0x3fd22c6cd69fad6e              # double 0.28396149596547715
	.quad	0x3fe6b17318ff861b              # double 0.70916132814835764
	.quad	0x3fe557fdfc3f6c91              # double 0.66699122683657397
	.quad	0x3fe3cffe4c7a2e0e              # double 0.61913981377569072
	.quad	0x3fd86bde734192ae              # double 0.38158379798395969
	.quad	0x3fdd8e14deb55cfc              # double 0.46179696797248915
	.quad	0x3faa4e41d76143c0              # double 0.051378304997917734
	.quad	0x3fdf8989d14d2162              # double 0.49276967467860378
	.quad	0x3fe726391a7bc30b              # double 0.7234159009222777
	.quad	0x3feb1b80283e0cbc              # double 0.84710700855102727
	.quad	0x3fd6aaa8a3e3dad2              # double 0.35416618351829954
	.quad	0x3feac3be28338fce              # double 0.83639438487852558
	.quad	0x3fe75e7384400837              # double 0.73027969198324783
	.quad	0x3fe23cd03f6d17f9              # double 0.56992351901931138
	.quad	0x3fe526778d73f23b              # double 0.66094567897341194
	.quad	0x3fd523e39a14b268              # double 0.33031549498517743
	.quad	0x3fd0c069df71bd3a              # double 0.26174399204952048
	.quad	0x3fded9f47dee398a              # double 0.48205292032152924
	.quad	0x3f97e85a33ab0e80              # double 0.02334729137761693
	.quad	0x3fb8635379d0d4e8              # double 0.095265595665143032
	.quad	0x3fd6dd087956dda8              # double 0.35724078988593044
	.quad	0x3fc89e517d0ef66c              # double 0.19233149153108131
	.quad	0x3fea7b7d062c8dc0              # double 0.8275742645823172
	.quad	0x3fe22828cf65103c              # double 0.56740227228920714
	.quad	0x3fe00405111ce698              # double 0.50049069731103923
	.quad	0x3fe8ff08d514dbb1              # double 0.78113214127994557
	.quad	0x3fd17d67c01c2f12              # double 0.2732791305613641
	.quad	0x3fe9c943f09e966d              # double 0.80581852909081209
	.quad	0x3fcf2ae2595d3bac              # double 0.24349622119413306
	.quad	0x3faeac0eb59e0090              # double 0.059906444234912759
	.quad	0x3fbc30d7f06fe828              # double 0.11012029285475988
	.quad	0x3fdc591b9d3d672c              # double 0.44293871264891282
	.quad	0x3feb9a3d5dfe718e              # double 0.86257809026896992
	.quad	0x3fca4ae4ed27efe0              # double 0.20541059093363767
	.quad	0x3fdb331e589b8fe0              # double 0.42499502804844091
	.quad	0x3fe13af2a33efae0              # double 0.53844577678668415
	.quad	0x3fe35091d75f0b5f              # double 0.6035851675481857
	.quad	0x3fe5c4aea73cca00              # double 0.68025906241956591
	.quad	0x3fde2603950efaf6              # double 0.471070190014799
	.quad	0x3fc7e50ae5f9b210              # double 0.18667732457414887
	.quad	0x3fdbe310959e0e56              # double 0.43573393450808362
	.quad	0x3fc1e2ca73099840              # double 0.13973360650124
	.quad	0x3f8af036633aca00              # double 0.013153481391189992
	.quad	0x3fb9e802dcd57170              # double 0.10119645968865654
	.quad	0x3f65881c85919400              # double 0.0026283795419197453
	.quad	0x3fb006aa22b58248              # double 0.062601693605310094
	.quad	0x3fe827af35c042de              # double 0.7548442888092628
	.quad	0x3fe64a288ec9e53b              # double 0.69655254257592192
	.quad	0x3fd49a413d0cca4c              # double 0.32191496812734921
	.quad	0x3fecfb1645a8e5d0              # double 0.90565026860638831
	.quad	0x3fbe98adb4481050              # double 0.11951718951610357
	.quad	0x3fef413b7b085a6d              # double 0.97671293287096505
	.quad	0x3febd7c11df314b4              # double 0.87008720254438864
	.quad	0x3fd1f4b6ea7f5068              # double 0.28056118869904489
	.quad	0x3fcc15cf957a5114              # double 0.21941561506958662
	.quad	0x3fc8b9db3b90c930              # double 0.19317188652491657
	.quad	0x3fe09d8a1ac1bdda              # double 0.51923089242876164
	.quad	0x3fd7468c691d64dc              # double 0.36368093743437924
	.quad	0x3fe1c80bead0b7ca              # double 0.55566974508632794
	.quad	0x3fc36f38766675d0              # double 0.15183168202649577
	.quad	0x3f78af0071bdbc00              # double 0.0060262696605226651
	.quad	0x3fef3fdeb282cd88              # double 0.97654662003917369
	.quad	0x3fe5326a59bd0838              # double 0.66240422751457739
	.quad	0x3fd3db1a29656250              # double 0.31024793665486516
	.quad	0x3fd613c33932e316              # double 0.34495621286218758
	.quad	0x3fe96d34d4160e74              # double 0.79458085463598004
	.quad	0x3fe0d52719db7496              # double 0.52601962137454694
	.quad	0x3fed0d5dd980d920              # double 0.90788166504970391
	.quad	0x3fe58f2ffe70a309              # double 0.67372893996534444
	.quad	0x3fe97beb6c71456d              # double 0.79637690715951026
	.quad	0x3fc0b0e7113118fc              # double 0.13039863910143612
	.quad	0x3fc90a7d6a93db70              # double 0.19563262657149094
	.quad	0x3fe63794f248cb89              # double 0.69428489037669394
	.quad	0x3fda4bcd25e44800              # double 0.41087654781688343
	.quad	0x3fed008285405d84              # double 0.90631223703069041
	.quad	0x3fea30a2c75ec044              # double 0.81843699397541813
	.quad	0x3fe38e7dcb6b8cc3              # double 0.61114396791926884
	.quad	0x3fec1390b7106153              # double 0.877388341471525
	.quad	0x3fe5f29072ee0c12              # double 0.68585989424934923
	.quad	0x3fe1f0ecec1cd0e7              # double 0.56065984836325533
	.quad	0x3fe37837932dd9e3              # double 0.60842493768614891
	.quad	0x3fd9e05016ce80ee              # double 0.4043159697266806
	.quad	0x3fe80488646ad336              # double 0.75055331814528503
	.quad	0x3fc4fc2c0359b3f8              # double 0.16394567645639291
	.quad	0x3fe1f1d2645ec01a              # double 0.56076926806963745
	.quad	0x3fefb4a5af353ed0              # double 0.99080166073141562
	.quad	0x3fe5e822b1000140              # double 0.68458685465160585
	.quad	0x3fe89ca3ab5cfbaa              # double 0.76912101239564845
	.quad	0x3fe2a14170d615d2              # double 0.58218452490171502
	.quad	0x3fb9fa25a4ea3958              # double 0.10147319103473273
	.quad	0x3fd8ed6287e8ccc4              # double 0.3894888236274705
	.quad	0x3fedb9d2cbb93620              # double 0.92893352308027843
	.quad	0x3fb20736f24f25b8              # double 0.070422586591255221
	.quad	0x3fb7557e91a29d70              # double 0.091148291163895001
	.quad	0x3fe118c6330c8dd7              # double 0.53427419634356965
	.quad	0x3fecfb2e9be10c40              # double 0.9056618732942141
	.quad	0x3fd5baf6149ae2e2              # double 0.33953620922288341
	.quad	0x3fc96ef28e801db0              # double 0.19869834859876567
	.quad	0x3fc17bc0b29cfc34              # double 0.13658913346623225
	.quad	0x3fd85b87058e52f6              # double 0.38058639090131352
	.quad	0x3fd3b276cd523e56              # double 0.30776758242516189
	.quad	0x3fe15a2ac2e3c7a1              # double 0.54225671829611966
	.quad	0x3fd89ec386873a34              # double 0.38469017159960406
	.quad	0x3fe61774ad9c45bd              # double 0.69036325367249385
	.quad	0x3faba07737fbbab0              # double 0.053958631118680045
	.quad	0x3fd8590220aeed10              # double 0.38043263618210776
	.quad	0x3fe21144f9747f96              # double 0.56460808488553726
	.quad	0x3fee72ec55dbddfc              # double 0.95152870911891751
	.quad	0x3fdfaa07624d0d6e              # double 0.49475273704248124
	.quad	0x3fe7ff897c8ae687              # double 0.74994348835680646
	.quad	0x3fe8056d302d20bd              # double 0.75066241654805987
	.quad	0x3fd7e2ae2d38d71c              # double 0.37321047226156323
	.quad	0x3fda848b9ef39f88              # double 0.41433992884275783
	.quad	0x3fede659a05901bc              # double 0.93436890905291347
	.quad	0x3fe734e38318f37d              # double 0.72520614247296999
	.quad	0x3fc99e36f027be64              # double 0.20014082647638809
	.quad	0x3fe1d3edf8530a13              # double 0.55712030888418196
	.quad	0x3fec28e9f74e8a54              # double 0.8799943762026694
	.quad	0x3fcdc760f1f70eb0              # double 0.23264705481243686
	.quad	0x3fe8f8cea1be1867              # double 0.78037196722358437
	.quad	0x3fdc3f89e1aa1190              # double 0.44137808835537218
	.quad	0x3fe11ce1e1459319              # double 0.53477567671197612
	.quad	0x3fd435b9b85748f0              # double 0.31577914239927818
	.quad	0x3fd0a227f0551838              # double 0.25989721746407524
	.quad	0x3fe4757e65471ef5              # double 0.63934249668906651
	.quad	0x3feb9705aeb3c887              # double 0.86218532678164272
	.quad	0x3feac30c210866b7              # double 0.83630949451181535
	.quad	0x3fc9b5183663c758              # double 0.20083906799078011
	.quad	0x3fd001bb8450ecaa              # double 0.25010574265952334
	.quad	0x3fca1c551e0990c4              # double 0.20398963896434996
	.quad	0x3fe8a0ec7a26d365              # double 0.76964401109453873
	.quad	0x3fd51c3fb5057e48              # double 0.32984917333485386
	.quad	0x3fe8d029dc763cbe              # double 0.77541058596570855
	.quad	0x3fe063031a480731              # double 0.51208644040182183
	.quad	0x3febbf43857af9a9              # double 0.86709762640366705
	.quad	0x3fd7ae37cb9d2fd6              # double 0.3700084198396757
	.quad	0x3fd86eb3dceb0658              # double 0.38175674985914076
	.quad	0x3fe9efbb6c0615f1              # double 0.81051417444603946
	.quad	0x3fd281cc808338fa              # double 0.28917229223306118
	.quad	0x3fdc32b8ab4ddd98              # double 0.44059578637048835
	.quad	0x3fdc162297d285da              # double 0.43885102106477591
	.quad	0x3fe404aceacad0fe              # double 0.62557073457585921
	.quad	0x3fb9d6490642c558              # double 0.10092598345615522
	.quad	0x3fe2744182873235              # double 0.57669139379283385
	.quad	0x3f846ac4a0b739c0              # double 0.0099692689463183326
	.quad	0x3fc3eefe7926b998              # double 0.15573101916875198
	.quad	0x3fe2d1bca26ed2e8              # double 0.58810264325310602
	.quad	0x3fcd6b9134a84e98              # double 0.22984519072689547
	.quad	0x3fe357a3749cb77a              # double 0.60444805885138853
	.quad	0x3fee78a38e7bfa36              # double 0.95222642735445251
	.quad	0x3fe8311e3d7f31cd              # double 0.75599586497406224
	.quad	0x3fdcbee3b03a69ac              # double 0.44915096483023365
	.quad	0x3fe959413ab3ce8d              # double 0.7921453615694688
	.quad	0x3fc33e9407aee544              # double 0.15034723639636571
	.quad	0x3fe2dc5965fca081              # double 0.58939809722234326
	.quad	0x3fe65f6dfd09eb1b              # double 0.69914912625913261
	.quad	0x3f813395e5e69780              # double 0.0083991728577748059
	.quad	0x3fef24af6974ef11              # double 0.97322817418123197
	.quad	0x3f840ab08ab2ed40              # double 0.0097860138251834039
	.quad	0x3fb13bbcda4f8f08              # double 0.06731777505734382
	.quad	0x3febe55e0774f972              # double 0.87174893814498788
	.quad	0x3fe9c4f1412522f0              # double 0.80529082034726507
	.quad	0x3fedc76ca3e7b220              # double 0.93059379589755408
	.quad	0x3fe0ee4c3eaf583c              # double 0.52908909075882304
	.quad	0x3fef3dcd9e527adb              # double 0.9762943355779855
	.quad	0x3fc37778fb3a0158              # double 0.15208351389811514
	.quad	0x3febfad9abdbfb8f              # double 0.87437137190123504
	.quad	0x3fc46d8b976097b8              # double 0.15959305659742795
	.quad	0x3fd68e4e06d1391e              # double 0.35243559518575462
	.quad	0x3feafe67c4480da6              # double 0.84355533920500103
	.quad	0x3fc6d13a57746e98              # double 0.17826012869123953
	.quad	0x3fe8cd93242f1867              # double 0.7750945765226448
	.quad	0x3fea0b75ad10726f              # double 0.8138988857422883
	.quad	0x3fce28ad35556158              # double 0.23561635116744628
	.quad	0x3fdb2b46e40075bc              # double 0.42451641336250723
	.quad	0x3fcdc29b6c47eeac              # double 0.23250143801839351
	.quad	0x3fda95c6e1cc496c              # double 0.41539165545068246
	.quad	0x3feb42088f048047              # double 0.85181072171327166
	.quad	0x3febeab47f9b5bd0              # double 0.87240052149979341
	.quad	0x3febfd67d412fa6f              # double 0.87468329830865155
	.quad	0x3fe249bb34ae0ff1              # double 0.57150039948510145
	.quad	0x3fe13b9040159de6              # double 0.53852093235485365
	.quad	0x3fd72f7fac7ad2de              # double 0.36227409213760875
	.quad	0x3fe3c644e6896987              # double 0.6179527762099476
	.quad	0x3f9014d539bdc460              # double 0.015704471253631502
	.quad	0x3fe0d1febd27748e              # double 0.52563416427769183
	.quad	0x3fd75d42ab0942f4              # double 0.36506716444732423
	.quad	0x3fce37fda0aed104              # double 0.23608370157092662
	.quad	0x3fdb94e2eeaa5540              # double 0.43096230799831758
	.quad	0x3fc006e3c55a810c              # double 0.12521025787737761
	.quad	0x3fed592068dafa4b              # double 0.91712971190993053
	.quad	0x3fe00c598cae2e3e              # double 0.50150754429473188
	.quad	0x3fd3f5e640f1ffa2              # double 0.31188351003947379
	.quad	0x3feb63e0f0acf0e7              # double 0.85594222075408488
	.quad	0x3fcf2e64eef249c0              # double 0.24360334079081092
	.quad	0x3fe7724ff4441ca6              # double 0.73270414074149381
	.quad	0x3fc300d4c852b214              # double 0.14846286565206468
	.quad	0x3fce7ba2fa1f8490              # double 0.23814809048693464
	.quad	0x3fee6793d63469bd              # double 0.95014373623717285
	.quad	0x3fe919352d0eb88d              # double 0.78432711410802514
	.quad	0x3fec7c550dd4a9c6              # double 0.89017727567016247
	.quad	0x3fe326c92189a806              # double 0.59848457861267046
	.quad	0x3fc0984e456f6cc4              # double 0.12964800253289444
	.quad	0x3fe29b4c295c684a              # double 0.58145721510232673
	.quad	0x3fe9701ef135e219              # double 0.79493662940427889
	.quad	0x3fec579ff0e122ce              # double 0.88569638296856978
	.quad	0x3fec34490fe5bd06              # double 0.88138249497379273
	.quad	0x3fece15c54ea431c              # double 0.90250984749772866
	.quad	0x3fc175c07c5ee264              # double 0.13640600273881198
	.quad	0x3fe9a323b355cd86              # double 0.80116448427581655
	.quad	0x3fe4ee8755df3bc1              # double 0.65411726734043196
	.quad	0x3fe87f3d32137c2e              # double 0.76553211002818045
	.quad	0x3fd7fb5148e83e78              # double 0.37471420402378142
	.quad	0x3fd1eef8c76f3c68              # double 0.28021068073298361
	.quad	0x3fcc8ceb438b8a40              # double 0.22305050657367254
	.quad	0x3fd22e30096b713e              # double 0.28406907005207305
	.quad	0x3fdcdd1ef98a706e              # double 0.45099615449158292
	.quad	0x3fef99f30bfbc890              # double 0.98754265156300569
	.quad	0x3fd32253a77f8f84              # double 0.29897014004949818
	.quad	0x3fe623d3930b671e              # double 0.6918733474696841
	.quad	0x3fe179b120a11530              # double 0.54610496876617809
	.quad	0x3fbc6e43348b7268              # double 0.11105747254209464
	.quad	0x3fd4f07597d6cb1c              # double 0.32717647388487747
	.quad	0x3fb08d2f1d65ace0              # double 0.06465429752067875
	.quad	0x3fd58732ded2a722              # double 0.33637687454266729
	.quad	0x3fef60377e17f9b2              # double 0.98049521091143377
	.quad	0x3fe17a8064aa1e59              # double 0.54620380078354025
	.quad	0x3fdd4c58cef7c26e              # double 0.45778484546375509
	.quad	0x3fca9b560aaf1954              # double 0.20786548158339235
	.quad	0x3febf2bae37727b4              # double 0.87338013102384204
	.quad	0x3fe73121c258f77e              # double 0.72474754293919808
	.quad	0x3fd0dc950015b9d0              # double 0.26346325882232424
	.quad	0x3fe328a3d1402bf2              # double 0.59871092671653359
	.quad	0x3fa8048a0518a200              # double 0.046909630891892817
	.quad	0x3fba5a816b0ed728              # double 0.10294350494117721
	.quad	0x3fe2c46aeaaa938b              # double 0.58647676308884067
	.quad	0x3feacc4276ea2f0a              # double 0.83743403649848003
	.quad	0x3f6230f7c5a69500              # double 0.0022206153200438061
	.quad	0x3fdedcd72098a306              # double 0.4822290247271187
	.quad	0x3fe52749972e26d6              # double 0.6610458328952642
	.quad	0x3feef2f2d17efcdf              # double 0.96715680043407903
	.quad	0x3fe2ea1c9aa46ce2              # double 0.59107809260913435
	.quad	0x3fe55bc46311d095              # double 0.66745204305199712
	.quad	0x3f8f25bed1d7c500              # double 0.015208712366958199
	.quad	0x3feed34a62201116              # double 0.96329230465974791
	.quad	0x3fee1c0e7989c00d              # double 0.94092487085254251
	.quad	0x3fe10b5d0586c267              # double 0.5326371295869422
	.quad	0x3fd4b3530024f240              # double 0.32344508184522525
	.quad	0x3fe965b7b546abb9              # double 0.79366670041542087
	.quad	0x3fb096362ce98820              # double 0.064792047467137071
	.quad	0x3fea4a11c1e2cc0a              # double 0.82154167049736881
	.quad	0x3f922a7f4219ed40              # double 0.017740238580228551
	.quad	0x3fe79c2fb9d60ce9              # double 0.73781572624321001
	.quad	0x3fe834c5f99af66c              # double 0.75644205809630937
	.quad	0x3fe1c2eacea2b235              # double 0.55504360540869035
	.quad	0x3fc9da19af1f6ca8              # double 0.20196839381137477
	.quad	0x3fd5cfd16ee8bdb2              # double 0.34080921011897225
	.quad	0x3fec37872e13c6ec              # double 0.88177832602943118
	.quad	0x3fcc8315f2291c48              # double 0.22275041889426661
	.quad	0x3feb08781e9d3eba              # double 0.84478383998244699
	.quad	0x3fcd1cd8766f6670              # double 0.22744279654471056
	.quad	0x3fe3144afc39298d              # double 0.59622716200219517
	.quad	0x3fe2b4b4c9aabef3              # double 0.58455886257249146
	.quad	0x3fe8d68f588e2dea              # double 0.77619139953588712
	.quad	0x3fe917c395a61820              # double 0.78415087917597148
	.quad	0x3fe951a3823a725a              # double 0.79121566233841212
	.quad	0x3fd72f3fc1eb5d86              # double 0.36225885331574437
	.quad	0x3fe8d0177570414a              # double 0.77540181100088401
	.quad	0x3fe6cc7850c8de62              # double 0.71245971468210834
	.quad	0x3fc829c3fe1752ec              # double 0.18877458483498033
	.quad	0x3feeee41572e8718              # double 0.96658389117894483
	.quad	0x3fde685cdac33800              # double 0.47511979449780029
	.quad	0x3fef361bd2e15951              # double 0.97535506427338181
	.quad	0x3fd7716c29b53890              # double 0.36629776070629649
	.quad	0x3fe62fb6816e807f              # double 0.69332433013552464
	.quad	0x3feb3a07f36a7a23              # double 0.85083386938260153
	.quad	0x3fe1e5a58a3dd57b              # double 0.559283037188535
	.quad	0x3feeb5fe3b2ddfa4              # double 0.95971595343052173
	.quad	0x3fc687d7faf684b8              # double 0.17602061990786466
	.quad	0x3fb39f959882de00              # double 0.076653814062289882
	.quad	0x3fedc8d73e109c44              # double 0.93076669809386958
	.quad	0x3fe4ab8a1a58ff64              # double 0.64593987604164882
	.quad	0x3fd84b09bf48be96              # double 0.37957996063321653
	.quad	0x3fb4a5e156b86900              # double 0.080656131431542377
	.quad	0x3fec820a1d107c87              # double 0.89087396313324596
	.quad	0x3fd22d329171a9ea              # double 0.28400863841548463
	.quad	0x3fee0bf4764f4bfa              # double 0.93895934207318921
	.quad	0x3fecea0e523dc76c              # double 0.9035712820316184
	.quad	0x3fe869e56246f8d0              # double 0.76292676157734185
	.quad	0x3f922b09ca349ea0              # double 0.017742302862784443
	.quad	0x3fddc6cc708a5dd4              # double 0.46525870313913953
	.quad	0x3fe9c4776d424fd5              # double 0.8052327283826296
	.quad	0x3fd8e4d2034ae35a              # double 0.38896608659302034
	.quad	0x3fd3c8456fb1bd30              # double 0.30909858615537456
	.quad	0x3fd29b0b64f14192              # double 0.29071316583306228
	.quad	0x3fef045cdc8d66db              # double 0.96928256107932087
	.quad	0x3fdcc8e0e076bcbc              # double 0.44976064605993904
	.quad	0x3fa64c9210f31e80              # double 0.043552937096646538
	.quad	0x3fe02a2946d8c8ea              # double 0.50514663541096394
	.quad	0x3fe5ecb15ad6f382              # double 0.68514316312904122
	.quad	0x3fcfc6c926ad4750              # double 0.2482539595462705
	.quad	0x3fedde4c132e1bfc              # double 0.93338588472477068
	.quad	0x3febf7c049811dea              # double 0.87399305683441963
	.quad	0x3fd0cd4fc529c074              # double 0.26253122572143828
	.quad	0x3feeb77e07a05d04              # double 0.95989896287474651
	.quad	0x3fe40605d95cc060              # double 0.62573521092964413
	.quad	0x3fecc5cab4035eaa              # double 0.89914450796910228
	.quad	0x3fd457fd3787237a              # double 0.31787043020863559
	.quad	0x3fd82b456c8094b4              # double 0.37764106365132055
	.quad	0x3feedcce31d8d7be              # double 0.96445379005194076
	.quad	0x3fec799730c2b860              # double 0.88984260104713186
	.quad	0x3fde38b45676576a              # double 0.47221096461850343
	.quad	0x3feaf07e9cae2418              # double 0.84185724832161934
	.quad	0x3fe2f7cd4d3d24d5              # double 0.59274926267348838
	.quad	0x3feb2e74aba2231a              # double 0.84942086717737486
	.quad	0x3fe519ff35f579c8              # double 0.65942345179410555
	.quad	0x3fe611cb7169bef2              # double 0.68967220450391964
	.quad	0x3fe1c7c404c2fc53              # double 0.55563546113979567
	.quad	0x3fe55c214fd66c88              # double 0.66749635308532707
	.quad	0x3fd745513e4f0a06              # double 0.36360579571569962
	.quad	0x3fe5df35441bc934              # double 0.68349707891892431
	.quad	0x3fea6434721d6bfc              # double 0.82473203933784544
	.quad	0x3fc74c1be50c4394              # double 0.18201016124706071
	.quad	0x3feec9a894315862              # double 0.96211651748559412
	.quad	0x3fe82635b36070a6              # double 0.75466427835956007
	.quad	0x3f7e932ce6acfa00              # double 0.0074645761440579328
	.quad	0x3fd8fc4f0e3053d0              # double 0.3903997076570791
	.quad	0x3fc7a779eda1688c              # double 0.18479847052623588
	.quad	0x3fb138511237abb8              # double 0.067265574405310669
	.quad	0x3fec4953d48befb3              # double 0.88395110619557327
	.quad	0x3fdca4b4b72fa5e6              # double 0.447552851574612
	.quad	0x3f73949fb0443280              # double 0.0047804105599992264
	.quad	0x3fd5c4934c6888ee              # double 0.34012300931693928
	.quad	0x3fd2202215d59bd2              # double 0.28321125156656735
	.quad	0x3fd77a8712ce1678              # double 0.36685349308422799
	.quad	0x3fd10d049dd941cc              # double 0.26641955771358705
	.quad	0x3fdb80322c89e208              # double 0.42969946240876356
	.quad	0x3fadbf620a7043a0              # double 0.058100761198267792
	.quad	0x3fda433069e30344              # double 0.41035089817528481
	.quad	0x3f5a221260535e00              # double 0.0015950374084264807
	.quad	0x3f8d609949a5bb40              # double 0.014344403801002437
	.quad	0x3fe52e58ffd1efa7              # double 0.6619076725469214
	.quad	0x3fe295c957acbf2d              # double 0.58078448413832506
	.quad	0x3feac737b3a6ea94              # double 0.83681855285915895
	.quad	0x3fe04ee41a40927b              # double 0.50963025214566871
	.quad	0x3fef0aed82a58c4d              # double 0.97008395687988413
	.quad	0x3fe60d5a05166c10              # double 0.68912983888310642
	.quad	0x3fe1a4d3569ea0a9              # double 0.55137030523203123
	.quad	0x3f7f10af08a7a800              # double 0.0075842702158102071
	.quad	0x3fdfad37d6d547a4              # double 0.49494739513203911
	.quad	0x3fd292e63a2dfc82              # double 0.29021602326970009
	.quad	0x3fdc31bda2b2a714              # double 0.44053593529189183
	.quad	0x3f7d4bf1d7752500              # double 0.0071525046290130678
	.quad	0x3fdb0e216ec35a7c              # double 0.42273746315678529
	.quad	0x3fe4bf6f3d81481f              # double 0.64836847317406299
	.quad	0x3feadc5e4975ef7d              # double 0.83940042827406069
	.quad	0x3fee93a9cc196737              # double 0.95552530158167925
	.quad	0x3fe0304c771381df              # double 0.50589583642073055
	.quad	0x3fee5a92c915f01a              # double 0.94855632090139186
	.quad	0x3f78367489613f80              # double 0.0059113075459008568
	.quad	0x3fdbb1a2a98765a4              # double 0.4327170043521511
	.quad	0x3fcd526e74b53e8c              # double 0.22907810877449142
	.quad	0x3fec644dfd88a1e0              # double 0.88724421995453539
	.quad	0x3fe983d6f26773ca              # double 0.79734370560219614
	.quad	0x3fec89cc38a37797              # double 0.89182101309028183
	.quad	0x3fedad3b5ee64c26              # double 0.92739647421911253
	.quad	0x3fdd6fd331d19980              # double 0.45995025506126552
	.quad	0x3fd8f291463c5fa2              # double 0.3898051439186877
	.quad	0x3fe37d5aa222405e              # double 0.60905200640446444
	.quad	0x3fcbe50d078ab944              # double 0.2179275786233551
	.quad	0x3feb5198afaf0e9d              # double 0.85371050179715591
	.quad	0x3fecad650056d2d5              # double 0.89616632524720308
	.quad	0x3fd1b55930f31642              # double 0.27669362812261877
	.quad	0x3fb91efc5482c0f0              # double 0.098129053719052228
	.quad	0x3fdfab86992c6768              # double 0.49484410246224408
	.quad	0x3fb08efc66ec0368              # double 0.064681792380736902
	.quad	0x3fd9170bd817ba60              # double 0.39203163245011829
	.quad	0x3fd58d9946d1f8ca              # double 0.33676750103030584
	.quad	0x3fe1bdd52766fada              # double 0.55442292876963539
	.quad	0x3fe2f2883aad9a90              # double 0.59210597477506788
	.quad	0x3fe8487530807a1c              # double 0.75884494278927006
	.quad	0x3fecb5065faed82c              # double 0.89709776580889899
	.quad	0x3fe429fc22e5932e              # double 0.63012511077667965
	.quad	0x3fbad5aac2966150              # double 0.10482280016583911
	.quad	0x3fe98d37a994089c              # double 0.79848845597031781
	.quad	0x3fed673a6602b7ea              # double 0.91885108875226007
	.quad	0x3fd44298458a3058              # double 0.31656462470050917
	.quad	0x3fd247c3d6af98e4              # double 0.28563018765852477
	.quad	0x3fead96ffe5b245c              # double 0.83904266051207399
	.quad	0x3fd779b3c6f4e2ae              # double 0.36680311612466709
	.quad	0x3fe2ed5e203c7a77              # double 0.59147554680005399
	.quad	0x3fde4e4357f44a54              # double 0.47352679814608689
	.quad	0x3fa0909c9fecaff0              # double 0.032353300592461554
	.quad	0x3fd174623798667c              # double 0.27272849492292273
	.quad	0x3fe89a1f3dff85da              # double 0.76881372555743188
	.quad	0x3fd8362769b91bde              # double 0.37830529522437739
	.quad	0x3fa10f67253d2e50              # double 0.033320639892363446
	.quad	0x3fda75737937bf56              # double 0.41341864431068609
	.quad	0x3fe649c6b9f63522              # double 0.69650589295057252
	.quad	0x3fef68826c528d31              # double 0.98150750309688394
	.quad	0x3fe23698de357021              # double 0.56916469001908265
	.quad	0x3fe0865534587cfd              # double 0.51639805053483168
	.quad	0x3fc3da371ca8eeec              # double 0.1550969018879792
	.quad	0x3fe982d364fe628b              # double 0.79721994138078978
	.quad	0x3fc3183729814b64              # double 0.14917649771322339
	.quad	0x3fe30b5353eb2bfe              # double 0.59513250723227862
	.quad	0x3fd1679cd330c82e              # double 0.27194901107862079
	.quad	0x3fda07fbe0cc1436              # double 0.4067372985157961
	.quad	0x3fe64e7f1a755d08              # double 0.69708209197679682
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
