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
	.quad	22                              # 0x16
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	83                              # 0x53
	.quad	99                              # 0x63
	.quad	121                             # 0x79
	.quad	134                             # 0x86
	.quad	150                             # 0x96
	.quad	166                             # 0xa6
	.quad	188                             # 0xbc
	.quad	203                             # 0xcb
	.quad	216                             # 0xd8
	.quad	228                             # 0xe4
	.quad	236                             # 0xec
	.quad	252                             # 0xfc
	.quad	264                             # 0x108
	.quad	279                             # 0x117
	.quad	294                             # 0x126
	.quad	304                             # 0x130
	.quad	314                             # 0x13a
	.quad	332                             # 0x14c
	.quad	350                             # 0x15e
	.quad	364                             # 0x16c
	.quad	382                             # 0x17e
	.quad	403                             # 0x193
	.quad	415                             # 0x19f
	.quad	431                             # 0x1af
	.quad	442                             # 0x1ba
	.quad	464                             # 0x1d0
	.quad	481                             # 0x1e1
	.quad	494                             # 0x1ee
	.quad	514                             # 0x202
	.quad	534                             # 0x216
	.quad	551                             # 0x227
	.quad	562                             # 0x232
	.quad	579                             # 0x243
	.quad	596                             # 0x254
	.quad	607                             # 0x25f
	.quad	623                             # 0x26f
	.quad	639                             # 0x27f
	.quad	649                             # 0x289
	.quad	665                             # 0x299
	.quad	680                             # 0x2a8
	.quad	692                             # 0x2b4
	.quad	704                             # 0x2c0
	.quad	714                             # 0x2ca
	.quad	734                             # 0x2de
	.quad	754                             # 0x2f2
	.quad	769                             # 0x301
	.quad	780                             # 0x30c
	.quad	791                             # 0x317
	.quad	803                             # 0x323
	.quad	816                             # 0x330
	.quad	831                             # 0x33f
	.quad	851                             # 0x353
	.quad	861                             # 0x35d
	.quad	876                             # 0x36c
	.quad	893                             # 0x37d
	.quad	909                             # 0x38d
	.quad	921                             # 0x399
	.quad	940                             # 0x3ac
	.quad	949                             # 0x3b5
	.quad	966                             # 0x3c6
	.quad	988                             # 0x3dc
	.quad	1002                            # 0x3ea
	.quad	1013                            # 0x3f5
	.quad	1030                            # 0x406
	.quad	1041                            # 0x411
	.quad	1059                            # 0x423
	.quad	1074                            # 0x432
	.quad	1086                            # 0x43e
	.quad	1105                            # 0x451
	.quad	1114                            # 0x45a
	.quad	1125                            # 0x465
	.quad	1131                            # 0x46b
	.quad	1150                            # 0x47e
	.quad	1162                            # 0x48a
	.quad	1177                            # 0x499
	.quad	1198                            # 0x4ae
	.quad	1208                            # 0x4b8
	.quad	1219                            # 0x4c3
	.quad	1235                            # 0x4d3
	.quad	1259                            # 0x4eb
	.quad	1270                            # 0x4f6
	.quad	1283                            # 0x503
	.quad	1296                            # 0x510
	.quad	1313                            # 0x521
	.quad	1331                            # 0x533
	.quad	1347                            # 0x543
	.quad	1361                            # 0x551
	.quad	1379                            # 0x563
	.quad	1389                            # 0x56d
	.quad	1405                            # 0x57d
	.quad	1420                            # 0x58c
	.quad	1438                            # 0x59e
	.quad	1449                            # 0x5a9
	.quad	1464                            # 0x5b8
	.quad	1487                            # 0x5cf
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	41                              # 0x29
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	49                              # 0x31
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	22                              # 0x16
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	59                              # 0x3b
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	66                              # 0x42
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	81                              # 0x51
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	89                              # 0x59
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	52                              # 0x34
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	81                              # 0x51
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	97                              # 0x61
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	76                              # 0x4c
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
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
	.quad	0x3fddbd46aebeb404              # double 0.46467749657568924
	.quad	0x3fcf482db1830604              # double 0.24439021270340799
	.quad	0x3fe899a2f68296f3              # double 0.76875446459300034
	.quad	0x3fef160b43eeb795              # double 0.97144091861786086
	.quad	0x3faf4b62b60492b0              # double 0.061122021407105875
	.quad	0x3fd98a0ab2d756ea              # double 0.39905040230710986
	.quad	0x3fcde2127845d790              # double 0.23346167442985832
	.quad	0x3fadfedd437b6e80              # double 0.058585085380141955
	.quad	0x3fdfc581c2daeeb2              # double 0.49642986325100502
	.quad	0x3fd0e9a2170dcb34              # double 0.26425983668666508
	.quad	0x3fe7fad75ec6a0da              # double 0.74937027464786898
	.quad	0x3fbd60109e3de788              # double 0.11474708426785984
	.quad	0x3fd1f1ca98af35ec              # double 0.28038277540767242
	.quad	0x3fe0e469d5b99f2d              # double 0.52788249724560432
	.quad	0x3fd9a5ddb8f3f836              # double 0.40074866353814131
	.quad	0x3f92143ea4993fa0              # double 0.017655352398207591
	.quad	0x3fa1f918533c6620              # double 0.035103569183956518
	.quad	0x3f9fdf3d80ac32c0              # double 0.031125031450801144
	.quad	0x3fe43f6b89555318              # double 0.63274170706663124
	.quad	0x3fe5d11338ee63d0              # double 0.68177186126114897
	.quad	0x3fe7d86d972b308b              # double 0.74516944432390753
	.quad	0x3fd4cb5477a4d7e6              # double 0.32491027530647754
	.quad	0x3fc897beebe364b0              # double 0.19213091390591819
	.quad	0x3fdc935a4bcde9c8              # double 0.44649369623917012
	.quad	0x3fe9e3211c21900f              # double 0.80897574896198587
	.quad	0x3fe382bd25f19e4f              # double 0.6097093335237761
	.quad	0x3fed02b5fdc22370              # double 0.90658092081240049
	.quad	0x3fc1d598eef14cac              # double 0.13933097521894433
	.quad	0x3fea55a95d86132c              # double 0.82295673624375842
	.quad	0x3fc48c9b77d5b5ec              # double 0.16054099417981094
	.quad	0x3fe3228f70ceafd8              # double 0.59796878845872481
	.quad	0x3fed88b4406d0fa5              # double 0.92293751319129014
	.quad	0x3f9b174b634e3200              # double 0.0264560489045369
	.quad	0x3fec52aa6bdfd0a4              # double 0.88509102887339397
	.quad	0x3fc14b91b09675e4              # double 0.1351186859364325
	.quad	0x3fb25b47660a5078              # double 0.071705305492573035
	.quad	0x3fc1ef43441e1c68              # double 0.14011421991401396
	.quad	0x3fee9086a05b6408              # double 0.95514231986737829
	.quad	0x3fb57823c7610548              # double 0.083864437271604975
	.quad	0x3fd2deb473dc86ae              # double 0.29484282793610361
	.quad	0x3fa6ccb482285960              # double 0.044530526054745279
	.quad	0x3febfde3eadae175              # double 0.87474246854894366
	.quad	0x3fb2c8c493185500              # double 0.073375974571110447
	.quad	0x3feac962a1af3fe8              # double 0.83708316401498184
	.quad	0x3fe98abedbefafe4              # double 0.79818671184829925
	.quad	0x3fec6abdadc891bb              # double 0.88802989904484464
	.quad	0x3fe3a95a2f56f3b2              # double 0.61442288633371889
	.quad	0x3fed096c8f4551a7              # double 0.90740039808820405
	.quad	0x3fd520a43213833a              # double 0.33011727228408783
	.quad	0x3fc3a2a400921508              # double 0.15340089824545822
	.quad	0x3fed4ac6bbe4e457              # double 0.91537796686237527
	.quad	0x3fd3b8cb8fac1dfc              # double 0.30815400152684425
	.quad	0x3feed75877653b61              # double 0.963787301248754
	.quad	0x3fedd0875e8309a3              # double 0.93170517405842579
	.quad	0x3fe1d26c37358ec6              # double 0.55693636687325276
	.quad	0x3feb3f75ee652c9b              # double 0.85149666368069477
	.quad	0x3fd7a8a71251ba9c              # double 0.36966873921384447
	.quad	0x3fc9174c9f956de8              # double 0.19602353851483589
	.quad	0x3fe42f4123e9adb5              # double 0.6307683659955986
	.quad	0x3feb01263fbaf0ff              # double 0.84389030883133376
	.quad	0x3fb1e5188a7d40b8              # double 0.069901975451332699
	.quad	0x3fe2c07e40b452ab              # double 0.58599770200324508
	.quad	0x3fe292cf6cabc939              # double 0.58042117333233201
	.quad	0x3fddaee1a9e0ffc8              # double 0.46379891957985508
	.quad	0x3fde2e56931b2c42              # double 0.47157825818857557
	.quad	0x3fe017f26c26caff              # double 0.50292321322771716
	.quad	0x3fe9147412915099              # double 0.78374675394526883
	.quad	0x3fd570212a2c7fe4              # double 0.33496884459054699
	.quad	0x3fe3bb11c018b3ae              # double 0.61658561247678789
	.quad	0x3fec94efe5a5a6b4              # double 0.89318079808182071
	.quad	0x3fe1d597835f6767              # double 0.55732322367405807
	.quad	0x3fe33f7df593a454              # double 0.60150049175457321
	.quad	0x3fbc83a1d8139f48              # double 0.11138354802426165
	.quad	0x3fe2d5eab278732f              # double 0.58861288888474472
	.quad	0x3fd09c2ae696c74c              # double 0.25953171270804343
	.quad	0x3fe66fe0f796f82a              # double 0.70115707738273625
	.quad	0x3fecde8a49112ec3              # double 0.90216554900094825
	.quad	0x3fd6b08e8e2906be              # double 0.35452617533529096
	.quad	0x3fe817ae2e8936ea              # double 0.75289067353307115
	.quad	0x3fbc8b22636b5100              # double 0.11149802138544729
	.quad	0x3fd8529d1ed4819e              # double 0.38004234324218966
	.quad	0x3fb47ed0d31bca18              # double 0.08006005434052843
	.quad	0x3fd5a56e8037c6c6              # double 0.3382221462371543
	.quad	0x3fd1e4710be5ea58              # double 0.27956796800541417
	.quad	0x3fe4366c684e22ee              # double 0.63164348957169891
	.quad	0x3fcd62c122cea6f8              # double 0.22957624625751527
	.quad	0x3fb12a2a077f9c70              # double 0.067049624281581677
	.quad	0x3fe8427de6af7917              # double 0.75811667495489388
	.quad	0x3fe0514fe6af382d              # double 0.50992579513127156
	.quad	0x3fead6948f070f02              # double 0.83869388518402865
	.quad	0x3fdc6979fb3c1924              # double 0.44393777403492352
	.quad	0x3fe791873fba0485              # double 0.73651468702895839
	.quad	0x3fe98e4d67fe7b5d              # double 0.79862089454023144
	.quad	0x3fe23c4333a00de3              # double 0.56985626299905012
	.quad	0x3feff4bd67eaaa5a              # double 0.99862547203276653
	.quad	0x3fdfb30ff0eee80a              # double 0.49530409363399086
	.quad	0x3feee13eb04f1974              # double 0.96499571261737893
	.quad	0x3fe14bee1cd0c78e              # double 0.54051881435428739
	.quad	0x3fe6e60796eca47a              # double 0.71557979085368051
	.quad	0x3febcf8eea4e1c14              # double 0.86908670199125248
	.quad	0x3fe13564f2c3f38b              # double 0.53776786246418007
	.quad	0x3fbf2387ae4900e8              # double 0.12163589482316051
	.quad	0x3fc1a6010a1bf298              # double 0.13787854188548887
	.quad	0x3fe7e418e5130be7              # double 0.74659390202611753
	.quad	0x3fe2846075057d1c              # double 0.57865927558660557
	.quad	0x3fccbc464c92b7b8              # double 0.22449568499490424
	.quad	0x3f8685778c5f4240              # double 0.010996755572621031
	.quad	0x3fe21e4c2b1fdf81              # double 0.5661984293246719
	.quad	0x3fc7a655b015fc94              # double 0.18476363275474184
	.quad	0x3fe2cd48a5383536              # double 0.58755905408330622
	.quad	0x3fc62f92b62887f0              # double 0.17332681555222917
	.quad	0x3fe43a60e673d4f9              # double 0.63212628374336
	.quad	0x3fd6bab1d2670292              # double 0.35514493510348999
	.quad	0x3fd80fcac3050f44              # double 0.3759638695230374
	.quad	0x3fe45e2fe6673328              # double 0.63649744988069745
	.quad	0x3fdd16f88ee8d31e              # double 0.45452703433993402
	.quad	0x3fe686df5ac1fe15              # double 0.70396392561082399
	.quad	0x3fe9b5365bab5ac7              # double 0.80337064651652035
	.quad	0x3fee49c00705fec5              # double 0.94650269862901182
	.quad	0x3fd522466dd0e938              # double 0.33021698688721157
	.quad	0x3fe93820975526c3              # double 0.78810147816803811
	.quad	0x3fe93142bd01946d              # double 0.78726326861636908
	.quad	0x3fefc618b12e4911              # double 0.99293169599175901
	.quad	0x3fed2fb773359347              # double 0.91207478048145496
	.quad	0x3fed198b46ea3de7              # double 0.90936817026698413
	.quad	0x3fb63f78d9ce3228              # double 0.086906006980094319
	.quad	0x3fd145caed0cb588              # double 0.26988480710391416
	.quad	0x3fe0bc5d47410f90              # double 0.52299369732689804
	.quad	0x3fde58307559fda0              # double 0.47413264713392245
	.quad	0x3fe0826dad438e34              # double 0.51592143860438577
	.quad	0x3fefc1073b7e0b27              # double 0.99231301898575885
	.quad	0x3fce35d02f6b4410              # double 0.23601724925404755
	.quad	0x3fc9175292a6c6a0              # double 0.19602424774852967
	.quad	0x3fe8e508b96c63ab              # double 0.77795826163775439
	.quad	0x3faff54eaf7fc9d0              # double 0.062418421672095215
	.quad	0x3fecf5abc32fd1e8              # double 0.90498912928029274
	.quad	0x3fdd32999d9f3af4              # double 0.45621338265202316
	.quad	0x3fee299ceeb4cf9b              # double 0.94257971403429808
	.quad	0x3fe030ab3b55c84f              # double 0.50594102467426605
	.quad	0x3fda7537dc7bcd58              # double 0.4134044316444565
	.quad	0x3feb16188652f475              # double 0.84644724116482328
	.quad	0x3fea1da5f8e3e325              # double 0.81611918078769874
	.quad	0x3fe1ebef70153ee3              # double 0.56005069628914972
	.quad	0x3fedfeb171367ffd              # double 0.93734047042744317
	.quad	0x3fec17a48f75394f              # double 0.8778860856926175
	.quad	0x3fe0f821a7e5cb33              # double 0.53028948585993019
	.quad	0x3fe82d9dca27321b              # double 0.75556840403584447
	.quad	0x3fc0eedc004113f4              # double 0.13228940975582726
	.quad	0x3fed17410a127ba0              # double 0.90908863036371556
	.quad	0x3fe91027929aaeb7              # double 0.78322199472082488
	.quad	0x3fe5bc9ce27273b4              # double 0.67927402713723106
	.quad	0x3fd6d5d78ed33aca              # double 0.3568018812920114
	.quad	0x3fecd6dc51c5d3c1              # double 0.90122810336344383
	.quad	0x3fe30fc9f27d3efb              # double 0.59567735062770966
	.quad	0x3fe47fa9d789a7bf              # double 0.64058391663751724
	.quad	0x3fd797aca316b138              # double 0.36863246847748909
	.quad	0x3fcc5cbce8991cec              # double 0.22158013684586508
	.quad	0x3fd24ea73409ffa4              # double 0.28605060655535852
	.quad	0x3f9ef3d81c3e1960              # double 0.030227066730298957
	.quad	0x3fe07cfb986e5c00              # double 0.5152566888017418
	.quad	0x3f9763a36e724480              # double 0.022841027847395612
	.quad	0x3fe967f84450d8ca              # double 0.79394162505084265
	.quad	0x3fd8239b8d537bd2              # double 0.3771733169687056
	.quad	0x3fd295284238c7de              # double 0.29035383669827108
	.quad	0x3fd3b1fdabc17dec              # double 0.30773870251684232
	.quad	0x3fd198ad47e94dfc              # double 0.27494365713684465
	.quad	0x3fe41ac8f3dd9b95              # double 0.62826964979182043
	.quad	0x3fd8a793c92b6ee0              # double 0.38522810597872414
	.quad	0x3fdd8922e5c97566              # double 0.46149513664371111
	.quad	0x3fda73cef57ec714              # double 0.4133183858312901
	.quad	0x3fe9a67b80def741              # double 0.80157256288632805
	.quad	0x3fa43ba5db346090              # double 0.039517577179311592
	.quad	0x3feacfc1942dc72a              # double 0.83786086026359397
	.quad	0x3fe0ad8deed83647              # double 0.52118584298450166
	.quad	0x3fc690333d3bc0dc              # double 0.17627563943779634
	.quad	0x3fef1bbe146da727              # double 0.97213653554829171
	.quad	0x3feeb171556baca8              # double 0.95916048701964928
	.quad	0x3feb8b11fab2e005              # double 0.86072634663196423
	.quad	0x3fdf9d2bf0998a9c              # double 0.49396799560614979
	.quad	0x3fe62ad253002387              # double 0.69272724352877979
	.quad	0x3fb59acb5c311780              # double 0.084393224723582349
	.quad	0x3fee1ec5b248bc96              # double 0.94125637837523146
	.quad	0x3fefe3288c5454a6              # double 0.99647929580773531
	.quad	0x3fb141fc9a021d08              # double 0.06741312751738715
	.quad	0x3fc1ab4dd206c964              # double 0.13804028277588565
	.quad	0x3fbf2a3713f4c6c0              # double 0.12173790204249268
	.quad	0x3fe13633d6cbde2e              # double 0.53786651565946442
	.quad	0x3fea3a5c0604af91              # double 0.81962395835351931
	.quad	0x3fe4d92af6cc20ed              # double 0.6515097446690824
	.quad	0x3fd5369a71e2957a              # double 0.33145772096243997
	.quad	0x3fe47b1b4e86a10e              # double 0.64002766930664889
	.quad	0x3fe7202368c07c67              # double 0.72267313441615222
	.quad	0x3fc015474bfea014              # double 0.12564936838794039
	.quad	0x3fc64f9d171baef4              # double 0.17430461529089991
	.quad	0x3fbe4e5a563f4298              # double 0.11838307004587489
	.quad	0x3fcd58c54bcb5684              # double 0.22927156639950763
	.quad	0x3febf2431aef1f94              # double 0.87332301388322486
	.quad	0x3fec0dc95bfe387f              # double 0.87668292968170636
	.quad	0x3fbef9a99681d3c8              # double 0.1209970467042033
	.quad	0x3feab3bd71f4d002              # double 0.83444092042054785
	.quad	0x3fcc824acc79af88              # double 0.22272620185992431
	.quad	0x3fda41f5e21b79aa              # double 0.41027590828698612
	.quad	0x3fc9650c920e9568              # double 0.198396273915175
	.quad	0x3fe1513fd75e070b              # double 0.54116813720631407
	.quad	0x3fd036253db04eac              # double 0.25330477737700607
	.quad	0x3fe3b3356c119b3c              # double 0.61562605960066419
	.quad	0x3fe1422f6309997b              # double 0.53932923644315112
	.quad	0x3fe51ef159bbbe5e              # double 0.66002719427155987
	.quad	0x3faf3993b1e63700              # double 0.060986152139873795
	.quad	0x3fb76c8053c3ef60              # double 0.091499348116426571
	.quad	0x3fd83a28b38d21b2              # double 0.37854974302583877
	.quad	0x3fecb66cd788e31f              # double 0.89726869675277843
	.quad	0x3fd60414eaa07a1a              # double 0.34399912750987627
	.quad	0x3feb1814fe7ba006              # double 0.84668969825452289
	.quad	0x3fe7b367fd1c2e9f              # double 0.74065017161906954
	.quad	0x3feee3625e765a87              # double 0.96525686692878387
	.quad	0x3fe71d0b035d6558              # double 0.7222952905387201
	.quad	0x3fc31f97de9ca7c8              # double 0.14940164918635745
	.quad	0x3fa9f61f631cfdf0              # double 0.050705891464982389
	.quad	0x3fea476e256069ad              # double 0.82121951389426828
	.quad	0x3fe14907dac3440e              # double 0.54016487814999592
	.quad	0x3fecc72ca806ccf3              # double 0.89931328599632676
	.quad	0x3fc4c32b91fe2cec              # double 0.16220612171705484
	.quad	0x3fedc2a69f00db7c              # double 0.93001109176007856
	.quad	0x3fe54095ba177599              # double 0.66413389535925937
	.quad	0x3feff8c4a44d29b5              # double 0.9991172036182464
	.quad	0x3fde93bc450ef3a2              # double 0.47776705497727268
	.quad	0x3fe13d7913b502c2              # double 0.53875402306592712
	.quad	0x3fc6f000290c41d0              # double 0.17919923786440828
	.quad	0x3fefb3bf60d7c933              # double 0.99069184221870043
	.quad	0x3fc14408e6c79b94              # double 0.13488875645199683
	.quad	0x3fe137566cae3fe1              # double 0.53800507761661376
	.quad	0x3fd0103794fe16f6              # double 0.25098981428196454
	.quad	0x3fed2423978113f8              # double 0.91066150274912072
	.quad	0x3fd8977025382c42              # double 0.38424304613790039
	.quad	0x3fe96db7628b00a1              # double 0.79464310881305178
	.quad	0x3fddc51b51775232              # double 0.46515543895410183
	.quad	0x3fdf84a75803750c              # double 0.4924715384966738
	.quad	0x3fd5faca545a1d1e              # double 0.34343202817440666
	.quad	0x3fd0138e2c1b0988              # double 0.25119356448353658
	.quad	0x3febddd655031620              # double 0.87082974056164985
	.quad	0x3fd19c2187002de6              # double 0.27515447791731018
	.quad	0x3fc27d697bb2efdc              # double 0.14445227184285059
	.quad	0x3fdf0124e231f970              # double 0.4844448288858052
	.quad	0x3feca4e398852352              # double 0.89512805737568102
	.quad	0x3fe2c8cf1acb1162              # double 0.58701281769803537
	.quad	0x3fe6510895bedb13              # double 0.69739178893255127
	.quad	0x3fed83229fd1fc52              # double 0.92225772108930415
	.quad	0x3fe39ab6498cbf57              # double 0.61263574948496113
	.quad	0x3fe694ccabe9bf19              # double 0.7056640012433234
	.quad	0x3fccda4ea5a51fdc              # double 0.22541220749030699
	.quad	0x3fd8d35b4b60e34a              # double 0.38790018426111728
	.quad	0x3fe6ad275954ddb5              # double 0.70863692710456994
	.quad	0x3fe9f9447af6d125              # double 0.81167816177779584
	.quad	0x3fe928c1baab5c9f              # double 0.78622518977035216
	.quad	0x3fd8101bc398b96a              # double 0.37598318196514546
	.quad	0x3fea887a21924ac1              # double 0.82915979916500515
	.quad	0x3feb07587d8e6626              # double 0.84464668772415474
	.quad	0x3febc052494961c8              # double 0.86722673715399257
	.quad	0x3fee1ac9e04926d6              # double 0.94077009015856095
	.quad	0x3feede70c807df36              # double 0.96465338772302434
	.quad	0x3fe4d4a4d4153a81              # double 0.65095750257917484
	.quad	0x3fcae7cd8838be98              # double 0.21019906188438564
	.quad	0x3fe35e089f69ae51              # double 0.60522872100177427
	.quad	0x3fe63496eeb883bd              # double 0.69391962647579641
	.quad	0x3faa0605ff12eb10              # double 0.050827205073309512
	.quad	0x3fdbcf42cd234778              # double 0.43452520401944339
	.quad	0x3feb1fc010a7c20a              # double 0.84762576344479723
	.quad	0x3feb23ba897d5ca8              # double 0.84811140874343938
	.quad	0x3fbf221dad84a120              # double 0.12161431776315057
	.quad	0x3fe8e7486e6b4565              # double 0.77823278013435682
	.quad	0x3fe0830dd5b2c0e5              # double 0.51599780786457627
	.quad	0x3fe54a5084b71da0              # double 0.66532159729915819
	.quad	0x3fe87b1288928c2b              # double 0.76502348589236158
	.quad	0x3fe48209167c3597              # double 0.64087347404135897
	.quad	0x3fe9b017b0a08031              # double 0.80274567124798157
	.quad	0x3fecf344ff2361c4              # double 0.90469598609620804
	.quad	0x3feb84d00f3a0adf              # double 0.85996249174089801
	.quad	0x3fe6a9cd9782c6f7              # double 0.70822791664087859
	.quad	0x3fd53b412889b752              # double 0.33174160918030282
	.quad	0x3fe9fb99d882977f              # double 0.81196300780423758
	.quad	0x3fdea6b39428fcc0              # double 0.47892465084801117
	.quad	0x3fd5d5dcebe42ee6              # double 0.34117816005958301
	.quad	0x3fdf923b1d29284c              # double 0.49330022666675144
	.quad	0x3fef57722676525f              # double 0.97942454826495495
	.quad	0x3fd22b5303436a2a              # double 0.28389430350003642
	.quad	0x3fdaf1eaa8d4f204              # double 0.42101541984064306
	.quad	0x3fe198296a498dcd              # double 0.54982443579904727
	.quad	0x3fce26e0137528e8              # double 0.23556137991028625
	.quad	0x3fcba65999f87ca8              # double 0.21601409929369209
	.quad	0x3fec1d953e1fe8e8              # double 0.8786112035152458
	.quad	0x3fe722fad11f6989              # double 0.72301998943594115
	.quad	0x3fcafb87e2b575c0              # double 0.21080111093298903
	.quad	0x3fa5beec1ae49130              # double 0.042472246439759664
	.quad	0x3fe98fb029c6bbc8              # double 0.79879005584177154
	.quad	0x3feb753f9c6bd82a              # double 0.85806255866078129
	.quad	0x3fe225cc66e00224              # double 0.567114067962454
	.quad	0x3fc5e338b3dc7d34              # double 0.17099674970902756
	.quad	0x3fd20395169a30d2              # double 0.28146865088707529
	.quad	0x3fec0cd4ad91a0ae              # double 0.87656625652473052
	.quad	0x3fc8e9a68ed24e34              # double 0.19463045095163667
	.quad	0x3fe6311703e86e3f              # double 0.69349241984622967
	.quad	0x3fda02ef9cb7773e              # double 0.40642919830667157
	.quad	0x3fbcb35639f1c1c0              # double 0.11211146273286143
	.quad	0x3fe4363d1e812814              # double 0.63162094076074249
	.quad	0x3fdca220256599ce              # double 0.44739535953558807
	.quad	0x3fc66b5d12a0bd58              # double 0.17515147599759007
	.quad	0x3fd5df61810404a2              # double 0.34175908660115273
	.quad	0x3fd4e33f31297b06              # double 0.32637004662494495
	.quad	0x3fda60ac87142280              # double 0.41215050879740289
	.quad	0x3fe8c6a479a362a7              # double 0.77424834973779333
	.quad	0x3fe823d9715a5d71              # double 0.75437614573722389
	.quad	0x3fc4aac9e00e4e5c              # double 0.16146205368260069
	.quad	0x3febb75ef6b763cf              # double 0.86613414942541478
	.quad	0x3fe150a689d7007e              # double 0.54109503671499204
	.quad	0x3fe4472e1aad53ab              # double 0.63368897638666988
	.quad	0x3fe6b8b111915df0              # double 0.71004537039965321
	.quad	0x3fced29e34079804              # double 0.24080255070219903
	.quad	0x3fd2efaff393c310              # double 0.29587935244403329
	.quad	0x3fddff94f1510b72              # double 0.46872447553703644
	.quad	0x3fe0a06fd988c4a4              # double 0.51958458411367703
	.quad	0x3fb05c12f3012648              # double 0.063904938056247862
	.quad	0x3fcfda9770b270d0              # double 0.24885838511261804
	.quad	0x3fa7640d3aa91630              # double 0.045685208712296421
	.quad	0x3fd154a298bd248e              # double 0.27079071918394326
	.quad	0x3fe9b86398635205              # double 0.80375842822337573
	.quad	0x3fc2f251b8fb9144              # double 0.14801999599797899
	.quad	0x3fe72734c449368c              # double 0.72353590333087103
	.quad	0x3feffedf2f6ad42c              # double 0.9998622823828831
	.quad	0x3fd4b4081cea99bc              # double 0.32348826240413664
	.quad	0x3fb6d27ea1b39238              # double 0.089149393537419352
	.quad	0x3fa385eaf2e443a0              # double 0.038131086492405375
	.quad	0x3fe95145673ec643              # double 0.7911707893856107
	.quad	0x3fe9986e581b9455              # double 0.79985730370084218
	.quad	0x3fc3390a1a47fa78              # double 0.15017820628414191
	.quad	0x3fd9b886ead6fa5c              # double 0.40188763555116735
	.quad	0x3fe6d532ba2af84e              # double 0.71352516518505538
	.quad	0x3fdcf08a1d1079e2              # double 0.4521813663322104
	.quad	0x3fe2657e7b07277b              # double 0.57488941220184075
	.quad	0x3fe4875016fe46f8              # double 0.64151768198845982
	.quad	0x3fed640a68ee5e8b              # double 0.91846199507104254
	.quad	0x3fece00ee9da2ee7              # double 0.90235086130402642
	.quad	0x3fe6aaa4b2196e77              # double 0.70833048615482042
	.quad	0x3fde008665b8228e              # double 0.4687820428230588
	.quad	0x3fc703e1b1cde5fc              # double 0.17980595762109874
	.quad	0x3fd71276fed9f742              # double 0.36050200355372308
	.quad	0x3fd8592c91097832              # double 0.38044275439995368
	.quad	0x3fed45a274a17622              # double 0.91475031642375293
	.quad	0x3fd67f5b21838560              # double 0.3515231921465638
	.quad	0x3fe9b39b09c2756b              # double 0.80317451387570082
	.quad	0x3fb4c8a6c0f92ec8              # double 0.081186697113646678
	.quad	0x3fa51347df4a3fd0              # double 0.041162725455364702
	.quad	0x3fc291b9fa61a9c0              # double 0.14507221913966184
	.quad	0x3feb010058a590ce              # double 0.84387223542992174
	.quad	0x3fecd8a3e4708f51              # double 0.90144533745886168
	.quad	0x3fefb5106fef41df              # double 0.99085256445146885
	.quad	0x3fef634ef6eaac97              # double 0.98087261415402593
	.quad	0x3fda0c006ce5050e              # double 0.40698252329100704
	.quad	0x3fe343e2f255ecfc              # double 0.60203692752057192
	.quad	0x3fed4b24a67b0e94              # double 0.9154227496696472
	.quad	0x3fefbcf546035b6a              # double 0.99181617426334623
	.quad	0x3fef1b755549e349              # double 0.97210184724745218
	.quad	0x3fec790132ece2f6              # double 0.88977107950549228
	.quad	0x3febe46360651b3c              # double 0.8716294176782422
	.quad	0x3fdf1320d82626ae              # double 0.48554249866775023
	.quad	0x3fe4faa87b8ec239              # double 0.6555979169116376
	.quad	0x3fe7a35440b44d8f              # double 0.73868763577995533
	.quad	0x3fd349c84cfc490c              # double 0.3013783218203947
	.quad	0x3fefc39a5b226d0c              # double 0.99262731361105371
	.quad	0x3fe38e0a4b26850c              # double 0.61108889272523603
	.quad	0x3fe31194f03d48a4              # double 0.59589621469264786
	.quad	0x3fe391d5ba777c46              # double 0.61155210894856604
	.quad	0x3fa6e20018334c20              # double 0.044692995981357564
	.quad	0x3fefd052f667f1d9              # double 0.99418018461397672
	.quad	0x3fee15827013054b              # double 0.94012567414771675
	.quad	0x3fefcf52904b38b5              # double 0.99405792410268267
	.quad	0x3fe13ddfdbfc3b54              # double 0.5388030335032945
	.quad	0x3fe44c96010dc53b              # double 0.63434887128656869
	.quad	0x3f70c9f3ec79e280              # double 0.0040988472243205232
	.quad	0x3fe091989747c8a4              # double 0.51777295634225995
	.quad	0x3fefcbb4bd16e9c7              # double 0.99361645633262518
	.quad	0x3fed4603a4a46338              # double 0.9147966590563561
	.quad	0x3f52ccd48e3bd400              # double 0.0011474681604657366
	.quad	0x3fe94a75d088c102              # double 0.79033938149771665
	.quad	0x3fecbea26eb84482              # double 0.89827081322631863
	.quad	0x3fa82d2e4dc32e90              # double 0.04721970271347431
	.quad	0x3fec320e95518a24              # double 0.88111046947262083
	.quad	0x3fecf30fe6946493              # double 0.90467066798295759
	.quad	0x3fbaf8e4d2708930              # double 0.10536031854329475
	.quad	0x3fe724d5e10d4c2d              # double 0.72324651675660834
	.quad	0x3fe1b97084d289e5              # double 0.55388666097524875
	.quad	0x3fa9d3b9ccbfa190              # double 0.050443464511604863
	.quad	0x3fb8762c74636440              # double 0.095553186812495916
	.quad	0x3fa5fbc7f7601c60              # double 0.042936562487789542
	.quad	0x3fee2ca4622f26e6              # double 0.94294947792624551
	.quad	0x3fe29b59ee2b09f6              # double 0.58146378056727488
	.quad	0x3fe5d707c7538fa5              # double 0.68249882632197922
	.quad	0x3fdb3c4a2c69b2dc              # double 0.42555479371257632
	.quad	0x3fc288cb68f22fe0              # double 0.1447996389800883
	.quad	0x3fea4382092d87b3              # double 0.82074071686314765
	.quad	0x3feb01dfaf6a590d              # double 0.84397873173546289
	.quad	0x3fec6075ceaa71e5              # double 0.88677492489256038
	.quad	0x3fec602aafd58a60              # double 0.88673910467725747
	.quad	0x3fa8e74e0e2253d0              # double 0.048639716363289787
	.quad	0x3fe166b3a9ba0d41              # double 0.54378684186705339
	.quad	0x3f8d019e447de900              # double 0.014163242783741925
	.quad	0x3feb3fa32a799e3f              # double 0.85151823326027187
	.quad	0x3fa5de1dfaf59670              # double 0.042710244068797532
	.quad	0x3fd13fe2ff5644aa              # double 0.26952433524372543
	.quad	0x3fdc4bcdaae9c7a4              # double 0.44212667170278963
	.quad	0x3fe4522051945e1c              # double 0.63502517636783606
	.quad	0x3fe0dd27103bf5ad              # double 0.52699616595025633
	.quad	0x3fb66658b4eb6d10              # double 0.087499183816749814
	.quad	0x3fe665c96bb06daf              # double 0.69992514641801573
	.quad	0x3f9d6c2594296940              # double 0.028732859771801289
	.quad	0x3fd2ba33f7f7b82a              # double 0.292614929347908
	.quad	0x3fe37127ffdf73b0              # double 0.60756301856200956
	.quad	0x3fe0de99a5d3ea6e              # double 0.52717287433854465
	.quad	0x3fe8759a934cf3de              # double 0.76435593385360412
	.quad	0x3fe7989720d8a715              # double 0.73737675109188905
	.quad	0x3fe69294d2f89d46              # double 0.70539323048880287
	.quad	0x3fc48770bd624578              # double 0.16038331267604256
	.quad	0x3fd0a47e845d2244              # double 0.26003992963936562
	.quad	0x3fe25713834220d8              # double 0.57312942158116709
	.quad	0x3fc1d075f98c805c              # double 0.13917421994210855
	.quad	0x3fe5b3d362ce1a3e              # double 0.6782013826166986
	.quad	0x3fe6bf4ac2c39eaf              # double 0.71085107841368778
	.quad	0x3fdfca84302e4ecc              # double 0.49673561768689178
	.quad	0x3fe45b6a5bdb87a5              # double 0.63615911427426808
	.quad	0x3fd9f43073c432ca              # double 0.40552913003265856
	.quad	0x3fa72e750fd71be0              # double 0.045276315864206884
	.quad	0x3fda9018c4872692              # double 0.41504496757679832
	.quad	0x3fefb99d64be7c49              # double 0.99140805889681715
	.quad	0x3fdd44690523c152              # double 0.45730042936249504
	.quad	0x3fe0c187f7cdc5af              # double 0.5236244048993991
	.quad	0x3fd9ff9457daa7d4              # double 0.40622433261398538
	.quad	0x3fd49fc7706721c0              # double 0.322252139824311
	.quad	0x3fab9119fdcac0c0              # double 0.053841411810368722
	.quad	0x3fe55230dd641be1              # double 0.66628306618155986
	.quad	0x3fcbae21eaa06af8              # double 0.21625160175684477
	.quad	0x3fe8fe3e9070e780              # double 0.78103569232119696
	.quad	0x3fa536595c1f4f20              # double 0.041430275435827335
	.quad	0x3fda279c15ea54c8              # double 0.40866758480235577
	.quad	0x3fea3c394b274202              # double 0.81985153845204217
	.quad	0x3fd160e6ac4c08d6              # double 0.27153937173728815
	.quad	0x3fefa7eaaa0ba919              # double 0.98924763881703647
	.quad	0x3fd0610ff71f3b10              # double 0.25592421658522913
	.quad	0x3fdf1b0d9c027d04              # double 0.4860261939556525
	.quad	0x3fe8d9d8d817d35b              # double 0.77659265714337822
	.quad	0x3fd5c28ea4ca2a76              # double 0.33999982922310978
	.quad	0x3fb174f7b3795c00              # double 0.068191033665570444
	.quad	0x3fdb2e74f8f622e4              # double 0.4247105056061129
	.quad	0x3feee870776382f8              # double 0.96587394064053366
	.quad	0x3fdd43dbf528efe6              # double 0.45726679746053234
	.quad	0x3fe5af1d6dec1112              # double 0.67762633771102032
	.quad	0x3fad4ce242956c20              # double 0.057227202060595284
	.quad	0x3fe9b24d38fa023a              # double 0.80301533821336268
	.quad	0x3fea6e0282dd25ea              # double 0.82592893180225002
	.quad	0x3fb12927ebdae770              # double 0.067034239847002075
	.quad	0x3fe304abdba0fd94              # double 0.59432022949470076
	.quad	0x3fb0cf03eb23f210              # double 0.065658802897765378
	.quad	0x3fe6958e35e6dbae              # double 0.70575628783887168
	.quad	0x3fc52e73ac103934              # double 0.16548009778530004
	.quad	0x3fd4e4d02757d368              # double 0.32646564333054195
	.quad	0x3fee2926bc1a0c85              # double 0.9425233529913305
	.quad	0x3fdf79e2d24a98fc              # double 0.49181433235425209
	.quad	0x3fd1b2709f90c67c              # double 0.27651610930033832
	.quad	0x3fdca91ef91339c8              # double 0.44782232593288684
	.quad	0x3fb0ac0cb9b57d80              # double 0.065125270213220787
	.quad	0x3fe103ad307665a0              # double 0.53169879403428766
	.quad	0x3fe3661bd776cca9              # double 0.60621444781135836
	.quad	0x3fdc037d5ce31ed4              # double 0.43771299429907384
	.quad	0x3fe4a54da4cb4418              # double 0.64517862497644085
	.quad	0x3fd57ccd514ddaa8              # double 0.33574231090407602
	.quad	0x3fcae54f434eda44              # double 0.21012297426723781
	.quad	0x3fc5cfcc7ec02998              # double 0.17040401638980707
	.quad	0x3fd08b7a9c680c66              # double 0.25851311945024802
	.quad	0x3fd1563e02bcafb0              # double 0.27088880793848613
	.quad	0x3fe2ac4c1023b3dc              # double 0.58353236343611625
	.quad	0x3fc1d26e44325d38              # double 0.13923433618467995
	.quad	0x3fc3a690faff6154              # double 0.153520700986301
	.quad	0x3febfa9e86b98d16              # double 0.87434316934050815
	.quad	0x3fad1003d000a470              # double 0.056762808934146203
	.quad	0x3fcc140924f3cc3c              # double 0.2193614416533779
	.quad	0x3f79ddb047c0bb00              # double 0.0063149343441597505
	.quad	0x3fe8d47d3770b67e              # double 0.77593861416035259
	.quad	0x3fecc92cae47fda9              # double 0.89955743827151935
	.quad	0x3fddcefaf5ef6c7a              # double 0.46575807587732465
	.quad	0x3fc10de02e9962dc              # double 0.13323595309591141
	.quad	0x3fdf01b9e8c17212              # double 0.48448035936397205
	.quad	0x3fe91045ee121c18              # double 0.78323647020522724
	.quad	0x3fee3cd4789fa4a7              # double 0.94492553290651393
	.quad	0x3fd2a6213726226a              # double 0.2913897551120842
	.quad	0x3fe8d4e39cbaed12              # double 0.77598744021762145
	.quad	0x3fbc43c84e117ad0              # double 0.11040927797283051
	.quad	0x3fd68fe06d608940              # double 0.35253153497082579
	.quad	0x3fd855796a911c28              # double 0.38021693617742125
	.quad	0x3fd4d1c21fa1d7e2              # double 0.32530263032037798
	.quad	0x3fe97b71605244ff              # double 0.79631871044890079
	.quad	0x3fecc40ca5fb9fb5              # double 0.89893181246315257
	.quad	0x3fef387c9e9b36e5              # double 0.97564536073488439
	.quad	0x3feac0f4ad5c56bf              # double 0.83605417117606595
	.quad	0x3fc01d908cdab6d8              # double 0.12590224149373941
	.quad	0x3fe436bc1cd74470              # double 0.63168149598108236
	.quad	0x3fd79ea0779371da              # double 0.36905681302394344
	.quad	0x3fd215153f7f1b78              # double 0.282536804207147
	.quad	0x3fdc42038894095e              # double 0.44152916276666143
	.quad	0x3fdfe3a98e4ded1e              # double 0.49827040573991777
	.quad	0x3fe26f5f56d8032c              # double 0.57609526597670913
	.quad	0x3fe8c17057feabc7              # double 0.77361313997732217
	.quad	0x3fe218e118c7d864              # double 0.56553702201814504
	.quad	0x3fad3c1940216990              # double 0.057099141195709469
	.quad	0x3fed71e06dda597a              # double 0.9201509614529606
	.quad	0x3fe71c9a5e6851ca              # double 0.72224157752003149
	.quad	0x3fd777326a4f15fc              # double 0.36665020353061073
	.quad	0x3fde8a7edbb7dfb2              # double 0.47720309693203966
	.quad	0x3fddd01a320c6298              # double 0.46582655799424222
	.quad	0x3fd0b0b19d72d2ea              # double 0.26078453422387204
	.quad	0x3fe18dc96a491fef              # double 0.54855795630373716
	.quad	0x3fd87a49fc58820c              # double 0.38246392863405343
	.quad	0x3fd6282c67222094              # double 0.3462019927178599
	.quad	0x3feb1e84cb3c0874              # double 0.84747543043364581
	.quad	0x3fecb8cae8427806              # double 0.89755769122325613
	.quad	0x3fd792bfca913d00              # double 0.36833185941664226
	.quad	0x3fc4056bafd1bee8              # double 0.15641542515685747
	.quad	0x3fe3538e02700fc8              # double 0.60394955135461093
	.quad	0x3fcb7c31fa274b54              # double 0.21472763742948564
	.quad	0x3fdcd74082a9307c              # double 0.45063793907025462
	.quad	0x3fe9629a64a7f2f4              # double 0.79328651103386826
	.quad	0x3fe217c035687e20              # double 0.56539926940235219
	.quad	0x3fe2dd7a46c65b7f              # double 0.58953584502420131
	.quad	0x3fd4ecca0ecc3640              # double 0.32695247120941318
	.quad	0x3fe35f39ee02d8b3              # double 0.60537430273577397
	.quad	0x3fe238b5fd6a5309              # double 0.56942271704846903
	.quad	0x3fea858de1d07827              # double 0.82880300621377934
	.quad	0x3fdd05a475efb69e              # double 0.45346938626503597
	.quad	0x3fea38ad1f74dd99              # double 0.81941848892067803
	.quad	0x3feb0ab706627c0a              # double 0.84505797621739132
	.quad	0x3fe6877b9a19fa27              # double 0.70403843019432066
	.quad	0x3fda1b6b5b567ece              # double 0.40792354507173634
	.quad	0x3fe038fe7772530a              # double 0.50695727662477563
	.quad	0x3fb65b6c0c88fce0              # double 0.087332490024880638
	.quad	0x3fe524fcefe99c7a              # double 0.66076514108580331
	.quad	0x3feb0b4f2e922589              # double 0.84513053031803154
	.quad	0x3fd6d1d2a667860c              # double 0.35655657053402545
	.quad	0x3febc42ee236446a              # double 0.86769813711192723
	.quad	0x3fe73aeaf905ab20              # double 0.72594212185990514
	.quad	0x3fe0bdfdf834c345              # double 0.52319239118342209
	.quad	0x3fe4473e87faf37e              # double 0.63369680937431361
	.quad	0x3fea57d8b6c1b2df              # double 0.82322345442443268
	.quad	0x3fd0cddce4ce7a2e              # double 0.26256487221135927
	.quad	0x3fd90b48ca74e36c              # double 0.39131374140884279
	.quad	0x3fe2d8bed5dcd1e2              # double 0.58895818491015128
	.quad	0x3fe0e82f6f5354f1              # double 0.52834293120636577
	.quad	0x3fe6ea7cd87812eb              # double 0.71612398413762202
	.quad	0x3fc4eee80dc227ac              # double 0.16354084655568835
	.quad	0x3fd39f88f390a4c4              # double 0.30661224160810385
	.quad	0x3fe44f8f9113222e              # double 0.63471201262388433
	.quad	0x3fe17f2395023d87              # double 0.54676989653846497
	.quad	0x3fd4dceaa47ae274              # double 0.32598367750646351
	.quad	0x3fe362206b10ffd0              # double 0.60572834884077942
	.quad	0x3fc775b7002b7074              # double 0.18327987201962836
	.quad	0x3fc8b0c1b9789cd4              # double 0.19289418750961451
	.quad	0x3fe0bbb29faac088              # double 0.52291232285462375
	.quad	0x3fdae5d338e46778              # double 0.42027741008643416
	.quad	0x3fe4d99724172446              # double 0.65156132744699202
	.quad	0x3fc820a912a6e224              # double 0.18849671755539632
	.quad	0x3fd84fc71d89be54              # double 0.3798692501504537
	.quad	0x3fb03c8b077cb548              # double 0.063423814132609668
	.quad	0x3fb0fc2b3d1a92f0              # double 0.066347792070313494
	.quad	0x3fa511299f076680              # double 0.041146565115650624
	.quad	0x3fe7fbc629c57139              # double 0.74948413999985697
	.quad	0x3fe30f29255e99ed              # double 0.5956006746171717
	.quad	0x3fdbe9a00772b9d4              # double 0.43613434531553463
	.quad	0x3fc2bc09ac41f9d4              # double 0.14636345778485682
	.quad	0x3fb45f152d87c560              # double 0.079575847259339749
	.quad	0x3fd701b0c91f9cac              # double 0.35947818413701316
	.quad	0x3fe584591b67dabb              # double 0.67240577080413944
	.quad	0x3fd4259faf1d1b74              # double 0.31479637242266922
	.quad	0x3fb4e95c4ea6e7e0              # double 0.081685799791471947
	.quad	0x3fd027f66449640a              # double 0.25243911546346054
	.quad	0x3fda7cd5b3de291e              # double 0.41386931004730509
	.quad	0x3fd3ddb78b43f8d6              # double 0.31040752983234421
	.quad	0x3fe55908ba034a1b              # double 0.66711841898569746
	.quad	0x3fd4158f30d7ac8c              # double 0.31381587762616259
	.quad	0x3fee1a63339263d7              # double 0.94072113106369215
	.quad	0x3fb2c45e2dac08b0              # double 0.073308836126701804
	.quad	0x3fd3c92aaa268540              # double 0.30915323845154674
	.quad	0x3fee581ab58d8237              # double 0.94825492343449624
	.quad	0x3fdec944b2c74a2c              # double 0.48103444537005902
	.quad	0x3fdea7f5c1a487c4              # double 0.47900146398944465
	.quad	0x3fe874312985d66a              # double 0.76418359861299945
	.quad	0x3fe1a492b8a6cd7a              # double 0.55133949341545407
	.quad	0x3fc20cb3d8d22848              # double 0.14101265036544164
	.quad	0x3fe0a54a485ee31d              # double 0.52017702231305274
	.quad	0x3fd44682f38c22c2              # double 0.31680368217397981
	.quad	0x3fc5a51590a7d988              # double 0.16910047114624782
	.quad	0x3fc5e9ea71940c14              # double 0.1712010435659016
	.quad	0x3fceb93a5c19540c              # double 0.2400277089788293
	.quad	0x3fd5cda5a91ed87c              # double 0.34067670360253266
	.quad	0x3fdd7ad9e354bd5c              # double 0.46062323761267066
	.quad	0x3fcf056ab03b7004              # double 0.24235280613982024
	.quad	0x3fe8792f5e8d1c72              # double 0.76479309527429806
	.quad	0x3fef1c9ad75a3210              # double 0.97224180279732941
	.quad	0x3fe191b2cdb9a45b              # double 0.54903545551963917
	.quad	0x3f8739523ad27500              # double 0.011339800281627621
	.quad	0x3fdd9fb4c834b8e8              # double 0.46287269164430578
	.quad	0x3fa78b6d85a09170              # double 0.045985624849239737
	.quad	0x3fdf4a0dd38177b0              # double 0.48889489798409169
	.quad	0x3fcaa4f0bdacbf94              # double 0.20815858136620291
	.quad	0x3fe68cd5e49973ce              # double 0.70469183586430417
	.quad	0x3fe16e5acfe7ed7b              # double 0.54472103697427998
	.quad	0x3fe9f4d60e3c0f63              # double 0.81113722591588233
	.quad	0x3fd7312654497192              # double 0.36237486106053851
	.quad	0x3fd6e54a9b7e331c              # double 0.35774483857021422
	.quad	0x3fd19a73178597a4              # double 0.27505185410552202
	.quad	0x3feca806b188011f              # double 0.89551100420070273
	.quad	0x3fe09ccabacfa60b              # double 0.51913963781879724
	.quad	0x3fc4a1bd2f678328              # double 0.16118588270821843
	.quad	0x3feef303c9ec8e95              # double 0.96716489256182802
	.quad	0x3fd40fc5a79b98ea              # double 0.31346265190076272
	.quad	0x3fe6d315bdf0b173              # double 0.71326720330902871
	.quad	0x3fb8f7307f982e88              # double 0.09752181162928697
	.quad	0x3fe700e70d858af4              # double 0.71886017456958351
	.quad	0x3fcc83f46ac9f508              # double 0.22277693952847977
	.quad	0x3fe887dfddd382ca              # double 0.76658624005730158
	.quad	0x3fd15198c0498492              # double 0.27060526636166415
	.quad	0x3fc92e743e32248c              # double 0.19673016583354686
	.quad	0x3fc543c48c8be0bc              # double 0.16613060820214354
	.quad	0x3feea71b6f028e3f              # double 0.95789882356297784
	.quad	0x3fe4906a8fe39f1d              # double 0.64262893775319052
	.quad	0x3fd03c4f71500544              # double 0.25368104997331309
	.quad	0x3febcec72875e3fa              # double 0.86899145033305492
	.quad	0x3fee7b6706b9c972              # double 0.9525637751924434
	.quad	0x3fe32d1ee7ad9b04              # double 0.59925790071142204
	.quad	0x3fed40a719281e26              # double 0.91414217866344383
	.quad	0x3fd86aaadb463ecc              # double 0.38151046193614202
	.quad	0x3fbcb275ecfb5230              # double 0.11209809337317078
	.quad	0x3fe03565d529cee7              # double 0.50651828416309008
	.quad	0x3fde9d1e7eec58d2              # double 0.47833979029509266
	.quad	0x3fe17bd72f831bf4              # double 0.54636725692478061
	.quad	0x3fdabf106c9b6a44              # double 0.41791163068925052
	.quad	0x3fde8eb83a29c6d4              # double 0.47746091537474666
	.quad	0x3f980f17830acde0              # double 0.023495070813352004
	.quad	0x3fe724e8b930ffca              # double 0.72325550241657166
	.quad	0x3feda0d1ff5bb5bf              # double 0.92588138460785518
	.quad	0x3fe2887dc93e9d20              # double 0.57916154199202552
	.quad	0x3fdaaab4584215e2              # double 0.41666897410354242
	.quad	0x3fd73355dde40b68              # double 0.36250826519988388
	.quad	0x3fe99ad5125c9c9d              # double 0.80015042864114927
	.quad	0x3fec919354cf6af8              # double 0.89277044834611186
	.quad	0x3fef2a51ef540985              # double 0.97391602271845612
	.quad	0x3fc4e6d67dbce87c              # double 0.16329461230799669
	.quad	0x3fed3d99f7af1634              # double 0.91376970649498057
	.quad	0x3fe122421a76dc23              # double 0.53543191117103495
	.quad	0x3febc80459dfac24              # double 0.86816613725148217
	.quad	0x3fe5de67c55bb953              # double 0.68339909121076869
	.quad	0x3fee42f83238736d              # double 0.94567498978322606
	.quad	0x3feccff38ceabd0b              # double 0.90038468859521126
	.quad	0x3fd9090e25fe881e              # double 0.39117768965127364
	.quad	0x3fe8ecf39f753f82              # double 0.77892476219311413
	.quad	0x3fd120616f8439ce              # double 0.26760135546001329
	.quad	0x3fe08f82dbcb7d20              # double 0.51751845291792975
	.quad	0x3fedc845086117c6              # double 0.93069697987152078
	.quad	0x3fe1d0b4e56d108d              # double 0.55672688302776552
	.quad	0x3f9e0b1d498cd840              # double 0.029339273084780126
	.quad	0x3f8ca6e830af28c0              # double 0.013990224824642516
	.quad	0x3fd31adc9592a5da              # double 0.29851450545046776
	.quad	0x3fc7c7a3ea9b6944              # double 0.18578003840850432
	.quad	0x3fe9a7e50259e8f1              # double 0.80174494227619963
	.quad	0x3fb9ace2595f8aa0              # double 0.10029425317729102
	.quad	0x3fe10e0a09d5d5b1              # double 0.53296377106624082
	.quad	0x3fe4b71a235c1643              # double 0.64735133081621432
	.quad	0x3fefcc80b777b1cc              # double 0.99371372064120455
	.quad	0x3fe94802f5a83cb3              # double 0.79004047374646402
	.quad	0x3fd71977737f11be              # double 0.36092935828153461
	.quad	0x3fa9df6be96bb430              # double 0.050532696002712263
	.quad	0x3fe7d4d3116791c8              # double 0.74472955130891538
	.quad	0x3f7a675387b44880              # double 0.0064461958784410855
	.quad	0x3f882c58382d5640              # double 0.011803330625904995
	.quad	0x3fc87b6cfb289964              # double 0.19126665366747908
	.quad	0x3fec96e7ffbcdee7              # double 0.89342117260727327
	.quad	0x3fcdd555f3daea80              # double 0.23307299048413554
	.quad	0x3fd9a38491ec7eea              # double 0.40060533762333128
	.quad	0x3fd00442624323ca              # double 0.25025996776508619
	.quad	0x3fe8edb3c38a4b75              # double 0.77901638213584923
	.quad	0x3fea64ae4456ddfc              # double 0.82479012820743902
	.quad	0x3fd1e7d459808ba0              # double 0.27977474918787415
	.quad	0x3fe703d96010a962              # double 0.71921986353599388
	.quad	0x3fe1f2b7bfcecb7c              # double 0.56087863409480532
	.quad	0x3fed240098f7d8b8              # double 0.91064481617538373
	.quad	0x3fc9231d90d594d4              # double 0.19638413974749958
	.quad	0x3feea9b445905fbd              # double 0.9582158430739508
	.quad	0x3fe860321527a70e              # double 0.76174263126196862
	.quad	0x3fbc301e8cfe6d48              # double 0.11010924284203327
	.quad	0x3fcdcf1b11b00aa0              # double 0.23288286555915239
	.quad	0x3fc37108d16a4dd4              # double 0.15188703751901633
	.quad	0x3fbe93474dbea488              # double 0.11943479202331464
	.quad	0x3fe3bc216bc39768              # double 0.61671515510236663
	.quad	0x3fdeb830073896d0              # double 0.47999191956692489
	.quad	0x3fc4337753f5ea78              # double 0.15782062148703679
	.quad	0x3fef8316460645ba              # double 0.98475183178577841
	.quad	0x3feac54f72e605b5              # double 0.83658573571317751
	.quad	0x3feefb78d873b4c8              # double 0.96819727206970984
	.quad	0x3fef1dceea9bc857              # double 0.97238870450952219
	.quad	0x3fd0712a0592bda0              # double 0.25690699142702478
	.quad	0x3fe597e259ab0c50              # double 0.67479054940521088
	.quad	0x3feacbc01a6f73bd              # double 0.83737187541156965
	.quad	0x3feea7c08a2d5f06              # double 0.95797755229702442
	.quad	0x3fe6162d09d05d9a              # double 0.69020702282698498
	.quad	0x3fbded7a9a979d10              # double 0.11690489076828592
	.quad	0x3fa2199db4846980              # double 0.035351684842868103
	.quad	0x3fe65cb8f6d9fdb5              # double 0.69881866658390968
	.quad	0x3fd6391858965a84              # double 0.34723480845551813
	.quad	0x3fbe18604c396608              # double 0.11755945073073104
	.quad	0x3fe3cd8451f023ad              # double 0.61883750918888369
	.quad	0x3fe73c186bbacdde              # double 0.72608586350400706
	.quad	0x3fd150eb530ddc10              # double 0.27056391821628356
	.quad	0x3fdcfd3468f2bdf6              # double 0.45295439003800142
	.quad	0x3fec5683fc8103a8              # double 0.88556098286800466
	.quad	0x3fe5ee593c65bfa8              # double 0.68534528538110795
	.quad	0x3fecd0b52c84fe62              # double 0.90047701544967773
	.quad	0x3facae3c8ffe34b0              # double 0.056016819550771202
	.quad	0x3fe159489a660b1d              # double 0.54214887767770714
	.quad	0x3feb6f03a7e072e2              # double 0.8573015478937942
	.quad	0x3fce44118f62fc60              # double 0.23645228864004064
	.quad	0x3fdd5e9eb5580b18              # double 0.45890014371268384
	.quad	0x3fee3f75aec92ff3              # double 0.94524654519909601
	.quad	0x3fc514b1898408c4              # double 0.16469401564251573
	.quad	0x3fc86c2d72e29984              # double 0.19080131635309894
	.quad	0x3fe1c5172dddfbeb              # double 0.55530890425131696
	.quad	0x3fc0fdbb038d9a34              # double 0.13274324105732804
	.quad	0x3fee5c15bd99ff5d              # double 0.94874083549073485
	.quad	0x3fd3c9271835b17e              # double 0.30915238727791194
	.quad	0x3fd8b8cf38d88032              # double 0.38627987433756339
	.quad	0x3fc5d35a58d9dd48              # double 0.17051247919492085
	.quad	0x3fe2d2a1e1578acc              # double 0.58821195613958244
	.quad	0x3fd6836d97fd7242              # double 0.35177173464561318
	.quad	0x3fd9fcc92ec3c4fc              # double 0.40605382506244303
	.quad	0x3fe5236f98bdccb0              # double 0.66057567436509679
	.quad	0x3fe5002c38ec05ec              # double 0.6562710868603836
	.quad	0x3fe497244458534b              # double 0.64344991062771706
	.quad	0x3fd4950a623d03da              # double 0.32159671395862477
	.quad	0x3faf63ef841049c0              # double 0.061309323187873854
	.quad	0x3fe3ba474c9b15f2              # double 0.61648907625266092
	.quad	0x3fd14831a92f2eae              # double 0.27003137132553945
	.quad	0x3fe728fd2ca4574e              # double 0.72375353545315035
	.quad	0x3fbff123ae2b5d90              # double 0.12477324487860231
	.quad	0x3fc7eaae18fa2278              # double 0.186849367328495
	.quad	0x3fd9184b3658fc90              # double 0.39210777575858291
	.quad	0x3fd639a0b6207b2e              # double 0.34726732049778064
	.quad	0x3fda3d997d97aa64              # double 0.41000973954093056
	.quad	0x3fcc8d0980b2427c              # double 0.22305411132812825
	.quad	0x3fb60a65c2bbace0              # double 0.086096153299581868
	.quad	0x3fe5faf137daf186              # double 0.68688259991863343
	.quad	0x3fdc25060aed556a              # double 0.43975974146936514
	.quad	0x3fe3506a167b5218              # double 0.60356621161423885
	.quad	0x3fe2509720687789              # double 0.57233768777563043
	.quad	0x3fe31f31f68ccb43              # double 0.59755800394336978
	.quad	0x3fe2a373d8521336              # double 0.58245270013922013
	.quad	0x3fe833729e82c600              # double 0.75628024062297072
	.quad	0x3fe3bae4039dc9f5              # double 0.61656380373307107
	.quad	0x3fe20d780eda1199              # double 0.56414416218517538
	.quad	0x3fefc3ca21d40637              # double 0.9926500950534266
	.quad	0x3feee8675720a0fe              # double 0.96586958901482922
	.quad	0x3fecf2394d0f6c38              # double 0.90456833887890919
	.quad	0x3fd1a3115ede0874              # double 0.27557787193666816
	.quad	0x3fdd36d7e57180ee              # double 0.45647237211780023
	.quad	0x3fecf2436f343fcf              # double 0.90457317084837452
	.quad	0x3feff98139612b7c              # double 0.99920712668368549
	.quad	0x3fd7a20d7a1f44a0              # double 0.36926590848913499
	.quad	0x3fe6c1fcd313a19e              # double 0.71118012643733031
	.quad	0x3fe154369b177baa              # double 0.54152994433740287
	.quad	0x3fc26d870ded5480              # double 0.14396751575501199
	.quad	0x3fea0dee6d285f06              # double 0.81420060462821264
	.quad	0x3fe9b3b01d99f45f              # double 0.80318456441422004
	.quad	0x3fd8ccfa562a0e02              # double 0.38751085676651098
	.quad	0x3fe208e0874ab0b1              # double 0.56358362602397538
	.quad	0x3fb8350f995032c0              # double 0.094559645586012486
	.quad	0x3fe2eb163a80ec80              # double 0.59119712282644343
	.quad	0x3feddb3034b93ebc              # double 0.93300638482647668
	.quad	0x3fee6a33aa27ef7a              # double 0.95046408876031241
	.quad	0x3febeff3e5146a1f              # double 0.87304110281121783
	.quad	0x3fe3a2ee93b59843              # double 0.61363915299876515
	.quad	0x3fea367a7eed7385              # double 0.8191502074292748
	.quad	0x3fe3ac7102b8285e              # double 0.61479998141409076
	.quad	0x3f86d68096c92600              # double 0.01115131817018078
	.quad	0x3fca128876854fa4              # double 0.20369058406015228
	.quad	0x3fb1dc8463fefdb0              # double 0.069771074689007007
	.quad	0x3fd94f667e2b8902              # double 0.39547121354384285
	.quad	0x3fe996bbbc3f1cdf              # double 0.79965006606007794
	.quad	0x3fcee295d74c501c              # double 0.24128983509638224
	.quad	0x3fd672c5537303a4              # double 0.350755053990776
	.quad	0x3fc063f77fcf2fb4              # double 0.12805074444474729
	.quad	0x3fed40b3be39dbba              # double 0.9141482081748713
	.quad	0x3fc00f8f0bccdeec              # double 0.12547481609521272
	.quad	0x3fe8e2783a55e39f              # double 0.77764521974232881
	.quad	0x3fe6881f59533528              # double 0.70411651083273785
	.quad	0x3fe7b1c2c27f1e18              # double 0.74044931399925229
	.quad	0x3fc32e8e974297e8              # double 0.14985830674885325
	.quad	0x3fe212a38ad948f7              # double 0.56477524870777429
	.quad	0x3fbe5cbd29294f90              # double 0.11860258345524088
	.quad	0x3fb06b762a1c3110              # double 0.064139733582298186
	.quad	0x3f79cab702109280              # double 0.0062968395950845357
	.quad	0x3fe9938300de0b66              # double 0.79925680322081116
	.quad	0x3fb5497135021ec8              # double 0.083151889268374579
	.quad	0x3fe35b02b0c9c36f              # double 0.60485968140538471
	.quad	0x3fe84ddbbb9819ca              # double 0.75950419082146792
	.quad	0x3f9e80094aedcf80              # double 0.02978529472188951
	.quad	0x3fe44d6909690dfa              # double 0.63444949949229046
	.quad	0x3feeab37baaa91a4              # double 0.95840059717425107
	.quad	0x3f941bdc18eb64e0              # double 0.019637526532140792
	.quad	0x3fb315e6b6141a60              # double 0.074552936032071582
	.quad	0x3fcc3474157e8048              # double 0.22035075234907908
	.quad	0x3fe2840267491a27              # double 0.57861442730865498
	.quad	0x3fbdea4073a49c60              # double 0.11685564826312733
	.quad	0x3fea59bebc36478e              # double 0.82345520744478207
	.quad	0x3fd25dd3298d6d0c              # double 0.28697661455017065
	.quad	0x3fe9d51d0137760d              # double 0.80726480710626591
	.quad	0x3fbc46e2b2677360              # double 0.11045662742203666
	.quad	0x3fdf67db9ccdbc30              # double 0.49071398079735484
	.quad	0x3fcbd5c19bebf980              # double 0.21746082414024315
	.quad	0x3fb4b3618ddc5980              # double 0.08086213792225827
	.quad	0x3fe1976ce7a56d2b              # double 0.54973454707525116
	.quad	0x3fd74ba8b9cf1ace              # double 0.3639928640881579
	.quad	0x3fe1497252f24928              # double 0.54021564674829836
	.quad	0x3fd2b0ea5fcb1894              # double 0.29204806666201333
	.quad	0x3fecdde734d8eb02              # double 0.90208778688187885
	.quad	0x3fe0b351bf692a75              # double 0.52188956627772021
	.quad	0x3f0051008f398000              # double 3.1121091436103754E-5
	.quad	0x3fe6b525f9945a2f              # double 0.70961283441540057
	.quad	0x3fdb6b0762fb59a4              # double 0.42840752283282257
	.quad	0x3fcc6e897e850d90              # double 0.22212332418176262
	.quad	0x3fdbaf08d0aa36ee              # double 0.43255825402671533
	.quad	0x3fd8b02db899bf68              # double 0.3857530882587441
	.quad	0x3fe5c553aa7dcf57              # double 0.68033774661169388
	.quad	0x3feaec748b12f1d1              # double 0.84136416590586738
	.quad	0x3fd85d979a12f8ee              # double 0.38071241422939195
	.quad	0x3fcdd7b3f758e5e4              # double 0.23314523293974709
	.quad	0x3fe8697f76319a60              # double 0.76287816128462893
	.quad	0x3fcba0c9f8604e20              # double 0.21584438922637705
	.quad	0x3fd2a78b4b08f8dc              # double 0.29147608115807855
	.quad	0x3fe5abd7a1d5f041              # double 0.6772268448689901
	.quad	0x3fd51232604e2660              # double 0.32923564343272993
	.quad	0x3fd4954d50609fc6              # double 0.32161267136916327
	.quad	0x3fd9c24fafbb92ae              # double 0.40248481904408606
	.quad	0x3fdf878ff099d848              # double 0.49264906402766373
	.quad	0x3fdfd56fe73faa38              # double 0.49740216811065663
	.quad	0x3fe792a667a092ed              # double 0.73665161361404119
	.quad	0x3fe4d7179dad7271              # double 0.65125637813942039
	.quad	0x3fe0aed847793cc0              # double 0.52134336433109496
	.quad	0x3fc2967141e95a60              # double 0.1452161380609196
	.quad	0x3fc3f4312db8890c              # double 0.15588965160811374
	.quad	0x3fc4b613536b3398              # double 0.16180650304013677
	.quad	0x3feb1d7f417f265b              # double 0.84735071937866324
	.quad	0x3fd1e638f5994d5a              # double 0.27967666610967046
	.quad	0x3fe7ba22b0874177              # double 0.74147161939804007
	.quad	0x3fe45fdc5e0c10f1              # double 0.63670175903874171
	.quad	0x3fe13844685d34f4              # double 0.53811855682002241
	.quad	0x3fa1169674f6f160              # double 0.033375455644519603
	.quad	0x3fe98e735b3d5cba              # double 0.7986389905953708
	.quad	0x3fef3ca44205458c              # double 0.97615254301688159
	.quad	0x3fef5d1dc67d8289              # double 0.98011673705703217
	.quad	0x3fd2b7160451565c              # double 0.29242468282368406
	.quad	0x3fca8167106af2ac              # double 0.20707405378006649
	.quad	0x3fd9252b2ffc13b0              # double 0.39289359746936281
	.quad	0x3fd88504d5b8ca68              # double 0.38311882849953927
	.quad	0x3fe5f43c5d8afd9c              # double 0.68606394071678123
	.quad	0x3fa92630771a7230              # double 0.049119486369111676
	.quad	0x3fe7383b8f31c738              # double 0.72561433761277438
	.quad	0x3feb844ee2a359e4              # double 0.8599008966946795
	.quad	0x3fdea8673486dd78              # double 0.47902851228305776
	.quad	0x3fa4ad530e329ad0              # double 0.040384860499491304
	.quad	0x3fe2dfb8d6b13016              # double 0.58980981761988249
	.quad	0x3fe3b614d0d196d0              # double 0.61597672257331659
	.quad	0x3fef7375e0c0f11d              # double 0.9828442945213599
	.quad	0x3fc3f08bb2e6c094              # double 0.15577837214869261
	.quad	0x3fef1a83ffa4d27e              # double 0.97198676996647726
	.quad	0x3fd8cdb8154a053a              # double 0.38755609587686346
	.quad	0x3fd846874c83153c              # double 0.37930471870307136
	.quad	0x3fe145fc9113a806              # double 0.53979328475293253
	.quad	0x3fd365b1cf55d27c              # double 0.30308194396574328
	.quad	0x3fd4c954bd2c20ea              # double 0.32478826974739994
	.quad	0x3fd78888d0094944              # double 0.36770839992563631
	.quad	0x3fd7d59c7c34015e              # double 0.37241279725278342
	.quad	0x3fef122e1fc2555d              # double 0.97096925929023891
	.quad	0x3fec4d61a71a8989              # double 0.88444597852166951
	.quad	0x3fd6e3217b5ce9f0              # double 0.35761296317255553
	.quad	0x3fe4280d3b1a5d4a              # double 0.62988912147094678
	.quad	0x3fdd71ebafe8a178              # double 0.46007816485009512
	.quad	0x3fedc9af85d08322              # double 0.9308698285641166
	.quad	0x3fd41d5f532b9b68              # double 0.31429274675467989
	.quad	0x3fbaf44a39b33f28              # double 0.10529006870933399
	.quad	0x3fecf27df83de9dd              # double 0.90460108265625261
	.quad	0x3fed885bfc04ab2d              # double 0.92289542410194303
	.quad	0x3fc9c4b52b1b3850              # double 0.20131554226685688
	.quad	0x3fcf2a1f7b74474c              # double 0.24347299125707378
	.quad	0x3fea05a89cdd84dd              # double 0.81319075238948424
	.quad	0x3fed2b27fd80359c              # double 0.91151809226873892
	.quad	0x3fcaa0926d1c4d4c              # double 0.20802526786483566
	.quad	0x3fc6476fe0fa9bc4              # double 0.17405508504199763
	.quad	0x3fe661a00834643e              # double 0.69941712954017254
	.quad	0x3fe59c7feb18c7c5              # double 0.67535396497100264
	.quad	0x3fe82b2400bea528              # double 0.75526619096232128
	.quad	0x3fea1df77268a5b6              # double 0.81615803094353256
	.quad	0x3fef62fa05972d9b              # double 0.98083211032774231
	.quad	0x3feb85d827f6c6df              # double 0.86008842282737052
	.quad	0x3fea8c3a5d7d4767              # double 0.82961767444269874
	.quad	0x3fbc660331b945c8              # double 0.1109315868755153
	.quad	0x3fd58074c894b328              # double 0.33596534336065753
	.quad	0x3fe0c194e6dddf9e              # double 0.5236305722346406
	.quad	0x3fef97137f5222a3              # double 0.98719191424705277
	.quad	0x3fdfabf7fd84bb42              # double 0.49487113721527376
	.quad	0x3fd845bdd2652bd6              # double 0.37925668283849967
	.quad	0x3fe6e5924e1bdc7a              # double 0.71552386527663647
	.quad	0x3fbc4974f19965e0              # double 0.11049586199205619
	.quad	0x3fd6f5d530220918              # double 0.35875444126590272
	.quad	0x3fd967821121ea48              # double 0.39694263146489961
	.quad	0x3fe3f635ac2b7e00              # double 0.62380488993579775
	.quad	0x3fd112811b52f8e6              # double 0.26675441425676494
	.quad	0x3fda42997b71f7e2              # double 0.41031491332239345
	.quad	0x3fac6e173219d710              # double 0.05552742468436922
	.quad	0x3fe978de94f458e5              # double 0.79600457279846337
	.quad	0x3fe012850b723108              # double 0.50226070628699038
	.quad	0x3fda420c4c7443f2              # double 0.41028125253893599
	.quad	0x3fe6f13d188ba542              # double 0.71694807809868899
	.quad	0x3f96537f2c605d40              # double 0.021802889903566269
	.quad	0x3fda9e938b5551d4              # double 0.41592873198285685
	.quad	0x3febc91a232dc1d8              # double 0.86829859610412097
	.quad	0x3fd9dc7eeb9b158e              # double 0.40408299454096486
	.quad	0x3fef450d993a4857              # double 0.97717933585432603
	.quad	0x3fa2d9d5a2652270              # double 0.036818195413222621
	.quad	0x3fc22d4ae33ad4c4              # double 0.14200721831517715
	.quad	0x3fe7d2e23b62cc67              # double 0.74449264143767102
	.quad	0x3fe1b02e40849046              # double 0.5527564296830938
	.quad	0x3fce5fc9b81a9b6c              # double 0.23729821671914963
	.quad	0x3fe5103b8b0899ad              # double 0.65823151736258512
	.quad	0x3fe70508041f2922              # double 0.71936417393706997
	.quad	0x3fefa2452e19b76f              # double 0.98855837825770531
	.quad	0x3fb09a501a117ee8              # double 0.064854627956716038
	.quad	0x3fd5912b443832fa              # double 0.33698541318953767
	.quad	0x3fbf3f91a4230d70              # double 0.12206373460053555
	.quad	0x3fe0f8c466eb4868              # double 0.53036708928472098
	.quad	0x3fe375694f59e486              # double 0.60808244226713337
	.quad	0x3feb96300189c974              # double 0.86208343792377073
	.quad	0x3fbe158284b1fe38              # double 0.11751571406966199
	.quad	0x3fea5f614556cee6              # double 0.82414306204597376
	.quad	0x3fc538c1f873f660              # double 0.16579460746281693
	.quad	0x3fc50dcf898444cc              # double 0.16448396887475381
	.quad	0x3fc898d7a3383df0              # double 0.19216437787734675
	.quad	0x3fd598b437ca09b4              # double 0.33744531105198949
	.quad	0x3fef18e6078016a4              # double 0.97178937401686882
	.quad	0x3fbac7bf62ecf470              # double 0.10461040654350184
	.quad	0x3fef409be399e053              # double 0.97663683369956755
	.quad	0x3fe60381cf4c9fc5              # double 0.6879281090559678
	.quad	0x3fe5447a0575bd53              # double 0.66460896555319449
	.quad	0x3fe04f2ca4fc0e07              # double 0.50966484283020541
	.quad	0x3fea05d66cda2e71              # double 0.81321259746751029
	.quad	0x3fe00c60e0fb48e4              # double 0.50151103917803797
	.quad	0x3fd87d0c911d9242              # double 0.38263239070355237
	.quad	0x3fe4d48e1ef6f22a              # double 0.65094667480258761
	.quad	0x3f8808548a1ddb80              # double 0.011734638657555641
	.quad	0x3fe99be4e164bd1f              # double 0.8002800371376998
	.quad	0x3fea0113a367348f              # double 0.81263143458058262
	.quad	0x3fd3c5486ecac13a              # double 0.30891619510204615
	.quad	0x3fdcab7b981a343a              # double 0.44796647886034047
	.quad	0x3fc7562ffc7d392c              # double 0.18231773212978319
	.quad	0x3fefc708aeb89c21              # double 0.99304613232823524
	.quad	0x3fc1de14980714c4              # double 0.13958985732293716
	.quad	0x3fee4c1e5856c187              # double 0.94679181340875196
	.quad	0x3fbb86342591b208              # double 0.10751653592314636
	.quad	0x3fe0f455fc464e6d              # double 0.5298261573065709
	.quad	0x3fd059afd1e4146c              # double 0.25547404763376025
	.quad	0x3fb27926dd2f1fa8              # double 0.072161129951494929
	.quad	0x3fda24254ad59c34              # double 0.40845615680740655
	.quad	0x3fc81be81d724d34              # double 0.18835164487664147
	.quad	0x3feb77d9a42b108a              # double 0.8583801466379708
	.quad	0x3fc824e54a70d09c              # double 0.18862596640395146
	.quad	0x3fee736d809c91e6              # double 0.95159030074551931
	.quad	0x3feea7d66e6b7d5c              # double 0.95798799101241227
	.quad	0x3feade5a416c8b58              # double 0.83964264658093679
	.quad	0x3fd0580cf717dd6c              # double 0.25537418489644526
	.quad	0x3fcedc2b340361ec              # double 0.24109401740749037
	.quad	0x3fec493cae76708e              # double 0.88394006800401015
	.quad	0x3fe2974207666684              # double 0.5809641022235188
	.quad	0x3fe99d4afa44bfd0              # double 0.8004507911737111
	.quad	0x3fe9693b17796f56              # double 0.79409555992922765
	.quad	0x3fcef8e1b6498860              # double 0.24197026634925844
	.quad	0x3fe69ecf88d289ff              # double 0.70688606951836153
	.quad	0x3fb8c3422dac13f8              # double 0.096729408407625672
	.quad	0x3fe90e2241090202              # double 0.78297531797585429
	.quad	0x3fedcc80d3f438b2              # double 0.93121377370132152
	.quad	0x3fc08f3414fa9850              # double 0.12937022232398698
	.quad	0x3fe33bf21f074457              # double 0.60106760082465882
	.quad	0x3fe08b59f011beb2              # double 0.51701065910852706
	.quad	0x3feb01cb77ee4184              # double 0.84396909164392797
	.quad	0x3fec9d0c869545be              # double 0.89417101178894831
	.quad	0x3fdadefa69c5a69c              # double 0.41985950784019521
	.quad	0x3fc12fb9ca164368              # double 0.13426897399451865
	.quad	0x3fe6f3fb5be57b25              # double 0.71728294323461184
	.quad	0x3febb25aa969f1ab              # double 0.86552174652711267
	.quad	0x3fe1c3faea33bd63              # double 0.55517335646247223
	.quad	0x3fdaac077e10c7a0              # double 0.41674983321274262
	.quad	0x3fd09a17d2803984              # double 0.25940509373403864
	.quad	0x3fd475c9938685c2              # double 0.31968917280945786
	.quad	0x3fd003432f2ed8e0              # double 0.25019912345613982
	.quad	0x3fe7e9588141a46d              # double 0.74723458524125663
	.quad	0x3fda08bc13658796              # double 0.40678312200736266
	.quad	0x3fe0ef57d1cdc309              # double 0.5292166803102144
	.quad	0x3fef28c8b3a68a44              # double 0.97372851455686104
	.quad	0x3f916a3f22c67b80              # double 0.017006861207501611
	.quad	0x3fec66254e8299cd              # double 0.88746896108642093
	.quad	0x3feaf0ff7f4bf70f              # double 0.8419187055839944
	.quad	0x3fe30c6b89454319              # double 0.59526612101226128
	.quad	0x3fbdb3a1c46a7218              # double 0.11602221532161427
	.quad	0x3f8fe03f790eb680              # double 0.015564437753563753
	.quad	0x3fe708a2b9d34123              # double 0.71980415624605987
	.quad	0x3fe111ea5e3e36f6              # double 0.53343695074883501
	.quad	0x3fc6f761ba1e1adc              # double 0.17942449176572139
	.quad	0x3fe38f6f15219e71              # double 0.61125902297221846
	.quad	0x3fe4479abc41b575              # double 0.6337407757652459
	.quad	0x3fa16230d868fef0              # double 0.033952261368993208
	.quad	0x3fd03586db683354              # double 0.25326701570957266
	.quad	0x3fd517530e4e1fa2              # double 0.32954861065854335
	.quad	0x3fd39bed22504068              # double 0.30639198637891818
	.quad	0x3fecfddaeead41e2              # double 0.90598818413314697
	.quad	0x3fec27623197e990              # double 0.87980756460392406
	.quad	0x3fd9a406de253d8c              # double 0.40063640302556602
	.quad	0x3fe4acb2367225ed              # double 0.6460810721775353
	.quad	0x3fc9547ce4e17670              # double 0.19789086509529197
	.quad	0x3fe750b0b5292ad0              # double 0.72859988577814683
	.quad	0x3fdfcc42a9eb7948              # double 0.49684206575138434
	.quad	0x3fd0269d08ac19c8              # double 0.25235677573109827
	.quad	0x3febf043261f1e11              # double 0.8730788940965245
	.quad	0x3fc5191da88d6254              # double 0.16482897501079441
	.quad	0x3fcd8f2c1789e614              # double 0.23093176984166119
	.quad	0x3fb2157c8a90c4f0              # double 0.070640357808560372
	.quad	0x3fdcf4816f42e218              # double 0.45242343774182947
	.quad	0x3fdd59a43218346c              # double 0.45859627620740784
	.quad	0x3fd2f998affd11ac              # double 0.29648415743238377
	.quad	0x3fefe0a47e5fd26a              # double 0.99617218668443042
	.quad	0x3fef668fec040a5c              # double 0.98126979920227652
	.quad	0x3fc072d38cd95870              # double 0.12850422265427452
	.quad	0x3fe36d013ef08510              # double 0.60705625813366915
	.quad	0x3fe4ee7a8095b8f8              # double 0.6541111480162547
	.quad	0x3fe61b4abefcf795              # double 0.69083154013036341
	.quad	0x3fda5217d6918c80              # double 0.41126056627235386
	.quad	0x3fdedb66a2fdeffa              # double 0.48214116971189436
	.quad	0x3fd68b5b241d8be4              # double 0.35225561644455028
	.quad	0x3fd5a2bd074f981c              # double 0.33805776323277015
	.quad	0x3fe8eb0ec4a5733b              # double 0.77869356543997215
	.quad	0x3feeb9f37bfad821              # double 0.96019911017242887
	.quad	0x3fde3600fd36ccea              # double 0.47204613426147424
	.quad	0x3fd83c3856194e9a              # double 0.37867554100123757
	.quad	0x3fb67e965093c898              # double 0.087869066879451174
	.quad	0x3fb3689e78ad7130              # double 0.075815109693796456
	.quad	0x3fe89e9b7ca2a694              # double 0.76936125128595955
	.quad	0x3fc5ad8021835cfc              # double 0.16935731541045829
	.quad	0x3feb9f7de9fdcf32              # double 0.86321922017530128
	.quad	0x3fcbb2a443d34ef0              # double 0.21638921081341023
	.quad	0x3fe4e40cf612fed8              # double 0.65283821164481548
	.quad	0x3fdc4d65ada9f9f8              # double 0.44222394904491535
	.quad	0x3fe927a2c0d3d316              # double 0.78608834897622404
	.quad	0x3fb932bc6c0f34f0              # double 0.09843042028588278
	.quad	0x3fea9aec6d766723              # double 0.83141156558415152
	.quad	0x3fb260edfc6272a8              # double 0.07179152881367179
	.quad	0x3fef66d27ef324e6              # double 0.98130154414061788
	.quad	0x3fcf48d5de28ca04              # double 0.24441026065467508
	.quad	0x3fc98af89507ecd4              # double 0.19955355908300609
	.quad	0x3fdbeed2b7305f64              # double 0.43645160569712105
	.quad	0x3fc9be6d0e77002c              # double 0.20112384039203002
	.quad	0x3fe7f05e7903a442              # double 0.74809192309943051
	.quad	0x3fe3a66393a9007b              # double 0.61406115379214954
	.quad	0x3fd0e896c4a7fa14              # double 0.26419610218718614
	.quad	0x3fdd548658411f50              # double 0.45828398340789978
	.quad	0x3fe45222b4339bb3              # double 0.63502631374000484
	.quad	0x3fee58feefdd7f61              # double 0.94836375092198122
	.quad	0x3fe69174d6908883              # double 0.70525590808053129
	.quad	0x3fbf786a4cf5f2f8              # double 0.12293114069866451
	.quad	0x3fe5d3aad4173510              # double 0.68208829330402132
	.quad	0x3feb4871109c36c7              # double 0.85259297603780559
	.quad	0x3fecbf27f1ddef30              # double 0.89833447684893564
	.quad	0x3fe2cb78e07b3134              # double 0.58733791202533903
	.quad	0x3fec758af74edf52              # double 0.88934849073755573
	.quad	0x3fd21dd07f3a9ac0              # double 0.283069729086872
	.quad	0x3f930d861c89c500              # double 0.018606276981192771
	.quad	0x3fea3f5cde3bea77              # double 0.82023471264922321
	.quad	0x3fcde5d5fc95ef04              # double 0.23357653458867145
	.quad	0x3fe5df1a5f7c1a8e              # double 0.68348425530787593
	.quad	0x3fe351e0386857a2              # double 0.60374461190325612
	.quad	0x3fe9806684a3468b              # double 0.79692388444728246
	.quad	0x3fee7876267f62bc              # double 0.95220477599203645
	.quad	0x3fe0422a54780335              # double 0.50807682512104313
	.quad	0x3fe6ee485fe23c54              # double 0.71658724524776085
	.quad	0x3fb3ed77940a7e40              # double 0.077842210429019509
	.quad	0x3fe7dcfd46e6c315              # double 0.74572624061520065
	.quad	0x3fedb1e2e19266cb              # double 0.92796463067062385
	.quad	0x3fe808c1e70c5d14              # double 0.7510690224325196
	.quad	0x3fdda358e0980332              # double 0.46309492047298584
	.quad	0x3fe4cd37a75f6eed              # double 0.65005095186230977
	.quad	0x3fd586c6e4c35138              # double 0.33635113086826918
	.quad	0x3fa3fd127468e9d0              # double 0.039040161810095619
	.quad	0x3fb31639e0839c48              # double 0.074557893097890404
	.quad	0x3fd65a4354ba4f4c              # double 0.34925921701618701
	.quad	0x3fd8b801c5543ea6              # double 0.38623089094560681
	.quad	0x3fee02b0a0c1c38d              # double 0.93782836339788533
	.quad	0x3fea1ccf1e28506e              # double 0.81601673021442678
	.quad	0x3fd8ada931fb70e2              # double 0.38559942132066116
	.quad	0x3febb3dac007921a              # double 0.86570489412094109
	.quad	0x3fe1c5ed4f7bc02f              # double 0.5554110100183659
	.quad	0x3fe61c87d7e0a1aa              # double 0.69098274386947378
	.quad	0x3fb356dc55895e38              # double 0.075544138796765803
	.quad	0x3fec9aa3f2dbea38              # double 0.89387700494200484
	.quad	0x3fe6b860ad9fb668              # double 0.71000703726685988
	.quad	0x3fc925ddade65028              # double 0.19646807662195553
	.quad	0x3fee8d23418e819b              # double 0.9547287254718414
	.quad	0x3fd05b6ab85c6e76              # double 0.25557964328775229
	.quad	0x3fba247d734d32b8              # double 0.10211929383258223
	.quad	0x3fef61ef9a1e206f              # double 0.98070507145986407
	.quad	0x3fd846dc505fd500              # double 0.37932498787934321
	.quad	0x3fa0578af44c2ad0              # double 0.031917898484683627
	.quad	0x3fe9a9cc65050669              # double 0.80197734575649549
	.quad	0x3fe0ebd249a9e03d              # double 0.52878679644982862
	.quad	0x3fe7e86fcc7f8584              # double 0.74712362233201235
	.quad	0x3fb9310a7e050e18              # double 0.098404556051768899
	.quad	0x3fe9b93d3fad4049              # double 0.80386221348636255
	.quad	0x3fcb5f066725b208              # double 0.21383743320929249
	.quad	0x3fd16eee3ccdc8a4              # double 0.27239566743731758
	.quad	0x3fd9e1d97433b304              # double 0.40440975520941458
	.quad	0x3fb5cf0e50539d70              # double 0.085190672503463238
	.quad	0x3f8a75ef38256500              # double 0.012920254612867499
	.quad	0x3fee91e133bac42c              # double 0.95530758002690197
	.quad	0x3fe5faed7b93dd81              # double 0.68688081871270878
	.quad	0x3fea4fdbbc93612d              # double 0.82224833327476221
	.quad	0x3fe5c3d02079e2ef              # double 0.68015295355789174
	.quad	0x3fc814c56d6c4294              # double 0.18813388674654574
	.quad	0x3fd0d6e9b8644516              # double 0.26311724669456404
	.quad	0x3fe5a352fe2a0434              # double 0.67618703500205024
	.quad	0x3fe68b57a0ee2ac4              # double 0.70450955802638093
	.quad	0x3fe8bc4c19eca513              # double 0.77298550666196986
	.quad	0x3fe293d48a902c1a              # double 0.58054568350906099
	.quad	0x3fce2d39b905fe14              # double 0.23575517210336783
	.quad	0x3f912393f1e81140              # double 0.016737281455804665
	.quad	0x3fe55629dbb7302d              # double 0.66676800645064349
	.quad	0x3fe5912cbc834b30              # double 0.6739715272800364
	.quad	0x3fe42b4dc2687fc0              # double 0.63028610201217106
	.quad	0x3fe71b72e1745dca              # double 0.72210067781537046
	.quad	0x3fde4566c500b5a0              # double 0.47298592794944661
	.quad	0x3fe503f45939852a              # double 0.65673272539803418
	.quad	0x3fb8bc5ae1394bd0              # double 0.096624069200785145
	.quad	0x3feb5bac33eb326d              # double 0.85494051113489677
	.quad	0x3fe549d6e405aafb              # double 0.66526360068868884
	.quad	0x3fe33bcd41ba6394              # double 0.60105002248302464
	.quad	0x3fe94143883e7646              # double 0.78921677217631081
	.quad	0x3fec306705f20302              # double 0.8809085003013879
	.quad	0x3fe60a078aaecd86              # double 0.68872429930199597
	.quad	0x3fb79cc4562cc718              # double 0.092235823668286421
	.quad	0x3fe1414fb689f895              # double 0.53922258045328653
	.quad	0x3fd541345ed00d74              # double 0.33210477122357607
	.quad	0x3fd94ca2566cd140              # double 0.3953023761744312
	.quad	0x3feed12f32eb7917              # double 0.96303520150448462
	.quad	0x3fd5705b81f1fbea              # double 0.33498275461164317
	.quad	0x3fe164720c887bb3              # double 0.54351141403082293
	.quad	0x3fd9ddd3035c9124              # double 0.40416407898216478
	.quad	0x3fdc1d9fcb18fda6              # double 0.43930811723472585
	.quad	0x3fedac5271417f9d              # double 0.92728540535243875
	.quad	0x3fe7a1864c741638              # double 0.73846735889737314
	.quad	0x3fdb7e1dbc67e9a2              # double 0.42957251929296991
	.quad	0x3fe3da3eb336b377              # double 0.62039122584029271
	.quad	0x3fd425a1c9b62c78              # double 0.31479687403106693
	.quad	0x3feb547d35984c8b              # double 0.85406361072308934
	.quad	0x3fd50d16270e3c8c              # double 0.32892373861336277
	.quad	0x3fe3939bce5f57d8              # double 0.61176863009563487
	.quad	0x3fe233231ccb7bea              # double 0.56874232887264253
	.quad	0x3fd5a7145def5bc4              # double 0.33832272694911247
	.quad	0x3fdc81f9ccb61e6e              # double 0.44543309203479609
	.quad	0x3fb43928451f6b70              # double 0.078997151256243958
	.quad	0x3fdc45bcc0f75900              # double 0.44175642818790095
	.quad	0x3fd1d919f450a5d8              # double 0.27887581690683083
	.quad	0x3fe79cea8a72a189              # double 0.7379048065241004
	.quad	0x3fd9bbe82694b5e2              # double 0.40209392326036497
	.quad	0x3fe5b8e0913e472c              # double 0.67881801956011634
	.quad	0x3fc06c4e89e8fab0              # double 0.12830526098146811
	.quad	0x3fe3512e72d8d87d              # double 0.60365984374108417
	.quad	0x3fe48bf40b7345ff              # double 0.64208414303192274
	.quad	0x3febfc248f59978b              # double 0.87452915189781899
	.quad	0x3fc9cfa4dc3eaee8              # double 0.20164929155486466
	.quad	0x3fe165bd8083220e              # double 0.54366946315809783
	.quad	0x3fc5d1134850d880              # double 0.17044297247929663
	.quad	0x3feef7c500265e51              # double 0.96774530438683303
	.quad	0x3fe233185c453493              # double 0.56873720189618593
	.quad	0x3fdcc17031b0c3b4              # double 0.44930653431498091
	.quad	0x3fe8ec53f2b99372              # double 0.77884862334449978
	.quad	0x3fe9208030970075              # double 0.78521737566189975
	.quad	0x3fce67520e7c7c00              # double 0.23752809245431195
	.quad	0x3fd8375b699187ae              # double 0.37837872800275363
	.quad	0x3fea9a48c8432be0              # double 0.83133353341815663
	.quad	0x3feb9ee35547dec1              # double 0.86314551025767383
	.quad	0x3fda7cc2e3bf140a              # double 0.41386482468470887
	.quad	0x3feb9f870f3ef154              # double 0.86322358110150299
	.quad	0x3fe2acacc264fb7a              # double 0.58357847182911304
	.quad	0x3fe73b9e885dc709              # double 0.72602774271055737
	.quad	0x3fefb92e82b0a473              # double 0.99135518575088921
	.quad	0x3fb5a29515183f60              # double 0.084512059831693076
	.quad	0x3fd8be606e8f9ad8              # double 0.38661967083900839
	.quad	0x3fdf00dc4f2fa02c              # double 0.48442752583514692
	.quad	0x3fc43964562cfcd0              # double 0.15800146301078266
	.quad	0x3fefed68a51863de              # double 0.99773056264086413
	.quad	0x3fbba7b4ca900e20              # double 0.10802774377230451
	.quad	0x3feaf5b6ddf85f74              # double 0.84249442437702137
	.quad	0x3fedd3a8f4db179c              # double 0.93208740065960027
	.quad	0x3fe9677d795a43a4              # double 0.79388307286909709
	.quad	0x3fb70c20130afe98              # double 0.090028767251164488
	.quad	0x3fdc6af40a66567a              # double 0.44402791038132927
	.quad	0x3fc8157ad744a2e0              # double 0.18815551291597554
	.quad	0x3fedc04bb67b8a50              # double 0.92972360268715626
	.quad	0x3fe8389c49629cdf              # double 0.75691046078727797
	.quad	0x3fb81338c261ed18              # double 0.094043300110503103
	.quad	0x3fdea2bc448d773c              # double 0.4786825818499556
	.quad	0x3fec2db8a2201510              # double 0.88058120408155283
	.quad	0x3fe0df35c62abdd3              # double 0.52724732117160966
	.quad	0x3feb9a8bb53e46e2              # double 0.86261544608188623
	.quad	0x3fed45569f9cc8ce              # double 0.9147141568594408
	.quad	0x3fe9b4e61f5d1f4f              # double 0.80333238721594025
	.quad	0x3fe8eea46874ef32              # double 0.77913113023485026
	.quad	0x3feab71a6d006003              # double 0.83485146798466336
	.quad	0x3fc9e2c627504050              # double 0.20223309440234738
	.quad	0x3fca830651d68394              # double 0.20712355609887523
	.quad	0x3fef7ae85495b9b9              # double 0.9837533618972919
	.quad	0x3fd69a0d00cf52e0              # double 0.35315251425826766
	.quad	0x3fa26c476ec4b5b0              # double 0.03598235346940315
	.quad	0x3fe9cab9509db466              # double 0.80599656815833209
	.quad	0x3fdab17ce7349fae              # double 0.41708300188701741
	.quad	0x3fc78f81559ab73c              # double 0.1840669315328628
	.quad	0x3fe867f61c106da0              # double 0.76269059640201319
	.quad	0x3fd5d7b9377850a8              # double 0.34129171769132904
	.quad	0x3f8af21a91b7df40              # double 0.013157088825195395
	.quad	0x3fab1d8118dea8a0              # double 0.052959474836215437
	.quad	0x3fc6c4708d2971dc              # double 0.17786986248655878
	.quad	0x3fedc87ef1ed62f1              # double 0.9307245946066286
	.quad	0x3fab964a0c5a9b40              # double 0.053880990989731092
	.quad	0x3fe3d5e0dc061901              # double 0.61985819791223673
	.quad	0x3fdabdd00bad2cb6              # double 0.41783524647025716
	.quad	0x3fe7889b3a9588ed              # double 0.73542558138094949
	.quad	0x3fc161615ec1bad4              # double 0.13578431250376488
	.quad	0x3fee0b5c6cb73129              # double 0.93888684495462826
	.quad	0x3fee733cbbf06760              # double 0.95156704623080301
	.quad	0x3fc824c47aa2f628              # double 0.18862205494035433
	.quad	0x3fb7c1ec5ecf7410              # double 0.092802785059987735
	.quad	0x3f8184cf87956140              # double 0.0085540974857144513
	.quad	0x3fc827dca758a864              # double 0.18871648951727871
	.quad	0x3feb8fb50149fb72              # double 0.86129236461407133
	.quad	0x3fe92dacc8e07df0              # double 0.78682555421613465
	.quad	0x3fa1226b3991de60              # double 0.033465719964564711
	.quad	0x3fee13e58efcb717              # double 0.93992879798108475
	.quad	0x3fdb9e9d68198bbc              # double 0.43155608335490192
	.quad	0x3fbccfabb8127ad8              # double 0.11254380458783986
	.quad	0x3fe1e8c646396fdd              # double 0.55966485706039359
	.quad	0x3fd817f3ba70464e              # double 0.37646191794292327
	.quad	0x3fd22fb0c924e650              # double 0.28416080134374955
	.quad	0x3fefb010543ea44c              # double 0.99024216131250275
	.quad	0x3fe26961af45056f              # double 0.57536396248194233
	.quad	0x3fdeb8f4ea56d9ea              # double 0.48003886112874616
	.quad	0x3fe33dbee7c1f39c              # double 0.60128731980477168
	.quad	0x3fc3e3a3bbf15834              # double 0.15538450886623567
	.quad	0x3f9843f49ea9dd80              # double 0.023696729835561481
	.quad	0x3fe4136f864e477d              # double 0.62737251502606706
	.quad	0x3fea714cee527fbe              # double 0.82633062884632813
	.quad	0x3fc35d18273aa128              # double 0.15127851405601089
	.quad	0x3fd21ef33943c9e6              # double 0.28313904373422216
	.quad	0x3feb069d188edd3d              # double 0.84455733105179542
	.quad	0x3fdd948f7a0cbbc8              # double 0.4621924106494899
	.quad	0x3fe6b2564c4d9f50              # double 0.70926966574641348
	.quad	0x3fe12eaa89f6e432              # double 0.53694655367065125
	.quad	0x3fd39cd81d7ba4aa              # double 0.30644801024625201
	.quad	0x3fe6b537b8a384e4              # double 0.7096212965226667
	.quad	0x3fef1c77668eed90              # double 0.97222490340156931
	.quad	0x3fe1d4a640ece15f              # double 0.5572081821510827
	.quad	0x3fd1633f0ab085e4              # double 0.27168251079464611
	.quad	0x3fd29ab71929a502              # double 0.29069306809704198
	.quad	0x3fe4153f6e7ffce1              # double 0.62759372312566708
	.quad	0x3fe902024ff8f042              # double 0.78149524325954922
	.quad	0x3fe6530fe956e392              # double 0.69763942312339311
	.quad	0x3fd9df330405f764              # double 0.40424800293828
	.quad	0x3fe5934a3dca4c05              # double 0.67422973698046518
	.quad	0x3fe1528ea52e8b23              # double 0.54132778417656302
	.quad	0x3fe7ac868692a88f              # double 0.73981024059072975
	.quad	0x3fe5b2ebf8771529              # double 0.67809103515961511
	.quad	0x3fc368b343c2a36c              # double 0.15163269814118097
	.quad	0x3fdda1e55302040a              # double 0.46300633531797131
	.quad	0x3fc69a3fa4f7b934              # double 0.17658229403554915
	.quad	0x3fb4ea0edab32b90              # double 0.081696442025686488
	.quad	0x3fda153e807707e0              # double 0.40754663987547524
	.quad	0x3fe4dd4661cefc74              # double 0.65201109984617611
	.quad	0x3fda5dab1d2feda0              # double 0.41196706629099289
	.quad	0x3fd61db571f47980              # double 0.34556327942291176
	.quad	0x3fb82b19b5028eb8              # double 0.094407660190479414
	.quad	0x3fd9c474ca342b8a              # double 0.40261573549712948
	.quad	0x3fe8f3ca18f3a428              # double 0.77975945351966391
	.quad	0x3fdfe544d42321a4              # double 0.49836846081282205
	.quad	0x3fd710fa39da7d9a              # double 0.36041122102502643
	.quad	0x3fedfdc5c0b8219e              # double 0.93722808495026633
	.quad	0x3fdd5575381a6dd0              # double 0.45834093550521704
	.quad	0x3fc93f9f593c2efc              # double 0.19725410325224135
	.quad	0x3fd5d4c7b191d15a              # double 0.34111206379681891
	.quad	0x3fe7f114d79d7c42              # double 0.74817888367022811
	.quad	0x3fd1341e60556354              # double 0.26880607039997995
	.quad	0x3fe175b28048acc0              # double 0.54561734252401806
	.quad	0x3fdbd1de5dae2ee0              # double 0.43468436382748443
	.quad	0x3fd38b7867633dae              # double 0.3053875932355038
	.quad	0x3fd305fd66187ade              # double 0.29724059076572285
	.quad	0x3fe016b2486f1dae              # double 0.50277055880808574
	.quad	0x3fec212fea6dab0a              # double 0.87905116831584107
	.quad	0x3fe78f14aec3df31              # double 0.73621591695607524
	.quad	0x3fd0aa5ed0f0cadc              # double 0.26039858250002879
	.quad	0x3fc04b2c90bfefc4              # double 0.12729413097247122
	.quad	0x3f73d59630b38b00              # double 0.0048423640066370677
	.quad	0x3fea8edec8272aeb              # double 0.82994021503813309
	.quad	0x3fde02d49cfda044              # double 0.46892276126027732
	.quad	0x3feef44139b6a8cf              # double 0.96731625816507882
	.quad	0x3fd2886b2c658e2e              # double 0.2895763333856135
	.quad	0x3fc4d8180114ce5c              # double 0.16284465840145657
	.quad	0x3fbebdf9368b0550              # double 0.12008626538865497
	.quad	0x3fe258d67ea9ed93              # double 0.57334446658153337
	.quad	0x3fd1d6600414ea8c              # double 0.27870941542247674
	.quad	0x3fce8a5b4c354cf0              # double 0.23859730931381007
	.quad	0x3fec325a42f209d4              # double 0.8811465556648792
	.quad	0x3fe34badd3c397f6              # double 0.60298816070712635
	.quad	0x3fc8a3b4010333e8              # double 0.19249582337798121
	.quad	0x3fc6cadb555c1a3c              # double 0.17806569736440447
	.quad	0x3fe589f5057078f9              # double 0.67309046804783101
	.quad	0x3feacb2e619cc012              # double 0.83730238976386517
	.quad	0x3feeb040464f9651              # double 0.95901502354235834
	.quad	0x3fe2693ec96c6333              # double 0.57534732189660642
	.quad	0x3fecc27f49ac9d85              # double 0.89874233617312937
	.quad	0x3fb65e91a96cfbf8              # double 0.08738050829286681
	.quad	0x3fad173669b3d600              # double 0.056817722705016394
	.quad	0x3fee658740e34021              # double 0.949893595441612
	.quad	0x3fe6daef3bf65737              # double 0.71422540389423872
	.quad	0x3fcb676829ff2964              # double 0.21409322786923746
	.quad	0x3fd981e486c37882              # double 0.39855302010062854
	.quad	0x3fe6927534238f3c              # double 0.70537815268878701
	.quad	0x3fe6aab9a2c8fca4              # double 0.70834047121015375
	.quad	0x3fe56044cb2ca342              # double 0.66800155336850531
	.quad	0x3fcaa22f1726ac64              # double 0.208074461273415
	.quad	0x3fc8eaafb32f2590              # double 0.19466205834605121
	.quad	0x3feb4c90a61fbbbc              # double 0.85309631773076644
	.quad	0x3fc4f06e0aef8c24              # double 0.16358733686419769
	.quad	0x3fa2ff1eb41f2600              # double 0.037102660644062979
	.quad	0x3fd22f6e56c97396              # double 0.2841449592140689
	.quad	0x3fe4e92232bef387              # double 0.65345868979748978
	.quad	0x3fb53586457b56c8              # double 0.082847969020202972
	.quad	0x3fe2f8be60318d5e              # double 0.59286421573453274
	.quad	0x3fb639b41bea2fd0              # double 0.086817986312041073
	.quad	0x3fe2f991444a4a2d              # double 0.59296477640083867
	.quad	0x3fc1ec48dcc98c38              # double 0.14002333431844405
	.quad	0x3fd421bc1a84dc72              # double 0.31455900754685395
	.quad	0x3fe047a1c93ea5ba              # double 0.5087441378174653
	.quad	0x3feb68eec1a56f09              # double 0.85655916043785496
	.quad	0x3fd2d46385ea54f4              # double 0.29421318128272778
	.quad	0x3fd612259c429b5e              # double 0.3448575998285629
	.quad	0x3fe8fe680fc319fd              # double 0.78105547979868073
	.quad	0x3fe61b1fcc2b2652              # double 0.69081106068297005
	.quad	0x3fee1d38459403ce              # double 0.94106687154282453
	.quad	0x3fd9fc992d9f8b1e              # double 0.406042379907534
	.quad	0x3fc09cc02e8c653c              # double 0.1297836520468908
	.quad	0x3fd919bd69ed4446              # double 0.39219603866974173
	.quad	0x3f98f224a25930e0              # double 0.024361202630004963
	.quad	0x3fe0a0ce25f4f7d3              # double 0.51962954915483761
	.quad	0x3fe334479f1f3a77              # double 0.60013180807602751
	.quad	0x3fe2594a67f2d3f2              # double 0.57339973738146299
	.quad	0x3fdf8c94b96e6e16              # double 0.49295538052112542
	.quad	0x3fda7fd2e56b9814              # double 0.41405174640965581
	.quad	0x3fdc7093f8faf1c4              # double 0.44437121691205683
	.quad	0x3fcf21c1a5268484              # double 0.24321766437518388
	.quad	0x3fc8d8806d90d650              # double 0.19410710668460007
	.quad	0x3fe7336e4f2180eb              # double 0.7250281854176398
	.quad	0x3fe744c959c2bdb7              # double 0.72714679271114491
	.quad	0x3fd942478b4fd626              # double 0.39467037777589764
	.quad	0x3fb142c1fbe3fc20              # double 0.067424892422409233
	.quad	0x3fe2eb3dee5e3e59              # double 0.59121605449940795
	.quad	0x3fe28469828c352d              # double 0.57866359231562614
	.quad	0x3fe8b25350e35d8c              # double 0.77176824377504393
	.quad	0x3feedfcb51945ca9              # double 0.9648186295843476
	.quad	0x3fce20cf283aea84              # double 0.23537625755655622
	.quad	0x3fdc922b832142ea              # double 0.44642150693566285
	.quad	0x3fe9f386f83781f8              # double 0.81097744445656783
	.quad	0x3fc9cd64131443e8              # double 0.20158053332900683
	.quad	0x3feafb1d1361dc09              # double 0.84315351281736739
	.quad	0x3fe798939821b3c2              # double 0.73737506592953417
	.quad	0x3fe5ab2ebc7188e5              # double 0.67714630895013939
	.quad	0x3fc6acbadc9c9f48              # double 0.17714629909573376
	.quad	0x3fe68d509e29828e              # double 0.70475035563511468
	.quad	0x3febd9df79231f86              # double 0.87034581813439682
	.quad	0x3fef4c1eb7cd1aad              # double 0.97804199122113788
	.quad	0x3fdf270a637a5cca              # double 0.48675784792562793
	.quad	0x3fc43fe7d79f0564              # double 0.15820024517419562
	.quad	0x3fb6de128d85bb00              # double 0.089326057006228865
	.quad	0x3feb91d2afb6237e              # double 0.86155065840385681
	.quad	0x3fedfd348439a8d3              # double 0.93715883088341412
	.quad	0x3fcea3d194518aec              # double 0.23937434904208688
	.quad	0x3fe9dd159a984632              # double 0.80823784059811588
	.quad	0x3fead9e7ac71afb1              # double 0.83909972839818725
	.quad	0x3fec1d5f3c26bcd9              # double 0.87858545063309201
	.quad	0x3fe1cf3fce793e9f              # double 0.55654898001553821
	.quad	0x3fe848b5b1069cd2              # double 0.75887569976193903
	.quad	0x3fc2fe7364c518bc              # double 0.14839022083669373
	.quad	0x3fe24086258697d0              # double 0.57037646607636283
	.quad	0x3feb053fd4167e56              # double 0.84439078734790018
	.quad	0x3fe8474230ecae0a              # double 0.75869855456898105
	.quad	0x3fd449a2a44dd7fe              # double 0.31699434323616049
	.quad	0x3fc5d7d04d58e060              # double 0.17064861084668603
	.quad	0x3fd0d35d041461e8              # double 0.26290059469604765
	.quad	0x3fdd76dd73e8dcbe              # double 0.46037994689272554
	.quad	0x3fe966946ccc6754              # double 0.79377194642732229
	.quad	0x3fe28a2953721120              # double 0.5793654088779796
	.quad	0x3f7e1786b99ad380              # double 0.0073466551490825038
	.quad	0x3fe280e78164537d              # double 0.57823539039473781
	.quad	0x3feb8d4d92dfa8cf              # double 0.86099890409720981
	.quad	0x3fbf1542db1d6e50              # double 0.12141816949354589
	.quad	0x3fe88045de726af4              # double 0.7656583161036381
	.quad	0x3fc6089c8b544670              # double 0.17213780215438446
	.quad	0x3fe604c15fb27d50              # double 0.68808048907150443
	.quad	0x3fd8e739ec4c7c78              # double 0.38911293102314159
	.quad	0x3fee74cd541f589e              # double 0.95175806455769751
	.quad	0x3fd1483134c5ae5e              # double 0.27003126290830959
	.quad	0x3fe6b1d8e8fd41c9              # double 0.7092098761150335
	.quad	0x3fc0f1016d59e7a8              # double 0.13235490645803094
	.quad	0x3fe1df961ec49322              # double 0.5585432625708544
	.quad	0x3feebf4c4747b4e7              # double 0.96085180208106357
	.quad	0x3fea78f9517dc401              # double 0.82726732174171513
	.quad	0x3fe974dd47ec84f0              # double 0.79551567123067279
	.quad	0x3fe5f3ba4e6b300d              # double 0.68600192371514057
	.quad	0x3fb860eb04abd1c0              # double 0.095228851929113567
	.quad	0x3fe2b736a8e0fc02              # double 0.58486493095540504
	.quad	0x3fdcc6a08a9bd20c              # double 0.44962323699954321
	.quad	0x3fe7dd386976ee70              # double 0.74575443838643984
	.quad	0x3fed4f5239d23b51              # double 0.91593276303488314
	.quad	0x3fd7fe021108d026              # double 0.37487842238920377
	.quad	0x3fec85d77f2a493c              # double 0.89133810841511929
	.quad	0x3fbf74108b3f4c68              # double 0.12286475562659549
	.quad	0x3f931707fbc05fc0              # double 0.01864254449910141
	.quad	0x3fe9b405a4d6e348              # double 0.80322534747311014
	.quad	0x3fd19db2abcb68a4              # double 0.27525011803448707
	.quad	0x3fd0feb0013afc96              # double 0.26554489250333668
	.quad	0x3f927bd6426acdc0              # double 0.018050525478157331
	.quad	0x3fa77df3faf4b390              # double 0.045882820495854237
	.quad	0x3f9a68d4f2c2fc60              # double 0.025790526692386684
	.quad	0x3fc152c78d844d14              # double 0.13533872995376639
	.quad	0x3fe6630367f770fc              # double 0.69958658510179772
	.quad	0x3fe993ad098dc56b              # double 0.79927684656119646
	.quad	0x3fda6158317df598              # double 0.41219143708425454
	.quad	0x3fc7f2fd852fb1f4              # double 0.18710297587621449
	.quad	0x3fe0f7ff40b2a1ed              # double 0.53027308117185401
	.quad	0x3faa87995ca68ce0              # double 0.05181578880299198
	.quad	0x3fec43181946e64d              # double 0.88319020211128818
	.quad	0x3fd68f68384f2760              # double 0.35250287531800062
	.quad	0x3f87982a55c6d700              # double 0.011520701163003633
	.quad	0x3fd1e6f44cf58894              # double 0.27972133174456215
	.quad	0x3fe3509d1e53e18f              # double 0.60359054492350761
	.quad	0x3fcc076a6521b298              # double 0.21897630632465304
	.quad	0x3fe675ff64f25ed7              # double 0.70190400806583397
	.quad	0x3fe9e1d621025d23              # double 0.80881792494884441
	.quad	0x3fe5b2781e88f0bb              # double 0.67803579295971106
	.quad	0x3fd56ce06d24344a              # double 0.33477030428258969
	.quad	0x3fd67de09a881534              # double 0.35143294421171167
	.quad	0x3fe5fd71065402b6              # double 0.68718768344850534
	.quad	0x3fd2b05fefe0ddca              # double 0.29201506066916905
	.quad	0x3fe13a10ce584ffe              # double 0.53833809186698978
	.quad	0x3fd361d35d73850a              # double 0.30284580350969803
	.quad	0x3f8b345b4bce8480              # double 0.013283456088006185
	.quad	0x3fe0bfc438c87b8d              # double 0.52340899553733922
	.quad	0x3fb0aeb198344900              # double 0.065165614756811152
	.quad	0x3fe30df8dbea7a69              # double 0.59545557930307524
	.quad	0x3fd2e90e6a6565e6              # double 0.29547462835543425
	.quad	0x3f7956443752fb80              # double 0.006185785741023575
	.quad	0x3fe92ed446f47583              # double 0.78696645601637305
	.quad	0x3fb004960c953ee0              # double 0.06256997878267212
	.quad	0x3fd55338e34fb72e              # double 0.33320448110940759
	.quad	0x3fe21d37f4b4ac8e              # double 0.56606672090619425
	.quad	0x3fb035d571fa74d8              # double 0.063321438147301179
	.quad	0x3fba89969c2f4258              # double 0.10366193116284117
	.quad	0x3feaec38c34a6da7              # double 0.84133566038820085
	.quad	0x3fc430eb0ecae404              # double 0.15774286482135846
	.quad	0x3fd344916aaa589a              # double 0.30106006065887814
	.quad	0x3f68adef36214600              # double 0.003012625894407206
	.quad	0x3fdca844eccc408c              # double 0.44777033924857146
	.quad	0x3fe2b91e74bb3a42              # double 0.58509753035634327
	.quad	0x3fee97b4230d7f38              # double 0.95601851316676
	.quad	0x3fe0e86f0ca7aaf2              # double 0.52837326499624582
	.quad	0x3fdf4c0cfc165522              # double 0.48901676767248337
	.quad	0x3f9f882e564edca0              # double 0.030792926805329857
	.quad	0x3fd96850ed201110              # double 0.3969919505764361
	.quad	0x3fcb4885d3201e0c              # double 0.21315071877346303
	.quad	0x3fe652311d56e1ad              # double 0.69753318529460773
	.quad	0x3fea8715775753ee              # double 0.82898972805798876
	.quad	0x3fdd82ce2037e3fe              # double 0.46110871454544611
	.quad	0x3fec89138b654944              # double 0.89173295236313565
	.quad	0x3fb72b02ffd32bf8              # double 0.090500056702850773
	.quad	0x3fe2c86d289c675c              # double 0.58696611339403715
	.quad	0x3fea9b623235ad04              # double 0.83146772200180452
	.quad	0x3fa9421ddb319170              # double 0.049332554823908192
	.quad	0x3fe3fdb5f8a68e09              # double 0.62472055973597762
	.quad	0x3fe5ec509161382e              # double 0.6850970115135675
	.quad	0x3fe426a00c09e71f              # double 0.62971498824410677
	.quad	0x3fd3cd7ed6ad1420              # double 0.30941744770490409
	.quad	0x3fdc35b1076a3ec2              # double 0.44077707027552659
	.quad	0x3fd64e872b8e4cb0              # double 0.3485429692602322
	.quad	0x3fc9ca743ba0ccf0              # double 0.20149090682534831
	.quad	0x3fec307636c8c877              # double 0.8809157438283951
	.quad	0x3fdf923804053324              # double 0.49329948799713663
	.quad	0x3fe979daf903ee58              # double 0.79612492214023245
	.quad	0x3fd8a56e0667f9ca              # double 0.38509703279114815
	.quad	0x3fa2208c851fe810              # double 0.035404578447881474
	.quad	0x3fec4489943f5720              # double 0.88336638407301748
	.quad	0x3feaca220e5b4281              # double 0.83717444232941329
	.quad	0x3fc4e57b084697f8              # double 0.16325319198693911
	.quad	0x3fe0ff3df8c009a0              # double 0.53115748008740482
	.quad	0x3fe35da4324313a0              # double 0.60518083397674971
	.quad	0x3fe043904c823cda              # double 0.50824751799691659
	.quad	0x3fe0106e5a6ececd              # double 0.50200574553169874
	.quad	0x3fe497bbadddb128              # double 0.64352210958671652
	.quad	0x3fefec3440bf395e              # double 0.99758350988285449
	.quad	0x3fd879cf929a31e0              # double 0.38243474308617742
	.quad	0x3febab07402b71ea              # double 0.86462748082300078
	.quad	0x3fe7cbaddadf5967              # double 0.74361317394759119
	.quad	0x3fcdf9c91184b548              # double 0.23418534617796127
	.quad	0x3fe4cf2c3d49d4d5              # double 0.650289649681009
	.quad	0x3fea841a99d984b1              # double 0.82862596558347523
	.quad	0x3fd2227cd14f2ce0              # double 0.28335495415076473
	.quad	0x3fef314f27172a1d              # double 0.97476918825970282
	.quad	0x3fdf2165043cd04e              # double 0.48641324437926847
	.quad	0x3fed0c92d1b535ad              # double 0.90778485258640773
	.quad	0x3fec72c493098a96              # double 0.88900974958626722
	.quad	0x3fbe5a59603da0d8              # double 0.11856611823680241
	.quad	0x3fb10f95fd446800              # double 0.066644071896377
	.quad	0x3feea066d54de666              # double 0.95708028470035056
	.quad	0x3fd24916896aa5aa              # double 0.28571093959416294
	.quad	0x3fe939ba2d6e31bb              # double 0.78829678414472626
	.quad	0x3fee7107e2d9f262              # double 0.95129770571618288
	.quad	0x3fefbc1c8313a83b              # double 0.99171281433996882
	.quad	0x3fed4756380534ae              # double 0.91495810452911086
	.quad	0x3fa3009f9ff9be00              # double 0.037114132192865412
	.quad	0x3fd8b05759988dd0              # double 0.38576301335907903
	.quad	0x3fe63a5da1dad8f2              # double 0.69462472545890663
	.quad	0x3fce26ff24daf27c              # double 0.23556508349965444
	.quad	0x3fc223fe09e6ed34              # double 0.14172339900492548
	.quad	0x3fd1192f04e9c014              # double 0.26716208915513673
	.quad	0x3fe94855bc7c0294              # double 0.79007994473802733
	.quad	0x3feea58596f11e38              # double 0.95770530205567805
	.quad	0x3feddcb4217eb578              # double 0.9331913618276948
	.quad	0x3fe00e521623325d              # double 0.50174812625625587
	.quad	0x3feb456ede32e587              # double 0.85222571752744691
	.quad	0x3fec09d2160dc9bc              # double 0.87619880969423702
	.quad	0x3fc6d811d7628638              # double 0.17846892372931378
	.quad	0x3fe14c4f0378dd21              # double 0.54056502035283327
	.quad	0x3fe6b25b834eb377              # double 0.70927215238553643
	.quad	0x3fe9f9cf89df6ef1              # double 0.81174446991232518
	.quad	0x3fe425e08fa89301              # double 0.62962368067073282
	.quad	0x3fe778dd86162a49              # double 0.73350406826768577
	.quad	0x3fb8c78c059fa1d8              # double 0.096794844983043915
	.quad	0x3fe3df1767cbc781              # double 0.62098284027727868
	.quad	0x3fe8ae5e4fbd0618              # double 0.77128520559216707
	.quad	0x3fea03aa9a53a016              # double 0.81294756071020191
	.quad	0x3fd8abf88f595b3a              # double 0.38549627303057188
	.quad	0x3fd9f4f57af15bf2              # double 0.4055761051762935
	.quad	0x3fe2487ec0f873bd              # double 0.57134950341752921
	.quad	0x3fc3f73753320e10              # double 0.15598193704873653
	.quad	0x3fc5c69d3f285400              # double 0.17012372573722701
	.quad	0x3fee5ad22eda5d36              # double 0.94858655119870749
	.quad	0x3fc8c1db791100d0              # double 0.19341605578848098
	.quad	0x3fc8de71cf58727c              # double 0.19428846954624024
	.quad	0x3fe00091911d03ca              # double 0.50006941168259655
	.quad	0x3fcc7621b5d069a8              # double 0.22235509278909871
	.quad	0x3fdb84c528998252              # double 0.42997864689644871
	.quad	0x3feb638a91df4730              # double 0.85590103617344049
	.quad	0x3fcd64ae45f125b0              # double 0.22963503279815489
	.quad	0x3fdb4a3c94b958f4              # double 0.42640604518727732
	.quad	0x3fe869a18e4b1f72              # double 0.76289441863717244
	.quad	0x3fe4a9b5dace186f              # double 0.64571659789431901
	.quad	0x3fd761541e5f0aee              # double 0.36531546560233508
	.quad	0x3fda85cfeaa830d4              # double 0.41441724696848081
	.quad	0x3fd7bfb4890bb3f4              # double 0.37107575782175606
	.quad	0x3fd1feebd1d0ed56              # double 0.2811841534600793
	.quad	0x3fd8cfeb9e7a2d48              # double 0.38769045330328256
	.quad	0x3fd25b3609efcc7c              # double 0.28681708307630749
	.quad	0x3febe3431446c896              # double 0.87149194679502062
	.quad	0x3fb3bb5c488c3390              # double 0.077077644073325624
	.quad	0x3fc4ac65675eabcc              # double 0.16151111171106292
	.quad	0x3fa7e98979565790              # double 0.04670362096946612
	.quad	0x3fef4d490fb7af5b              # double 0.97818425245121021
	.quad	0x3fe490c0dfe185c3              # double 0.64267009474513548
	.quad	0x3f6d473731bd5200              # double 0.0035739973081183596
	.quad	0x3fd0796ff7100cc6              # double 0.25741194846359539
	.quad	0x3f994aa6491955a0              # double 0.024698827945334068
	.quad	0x3fec54ea8ae92496              # double 0.88536574488638808
	.quad	0x3fe5bdeebbcb61ea              # double 0.67943512610059753
	.quad	0x3fc0a965b5668e64              # double 0.1301695953126113
	.quad	0x3fd7ba485903c10e              # double 0.37074478810156186
	.quad	0x3fbafe7ef9bad8d8              # double 0.10544580075188337
	.quad	0x3fe1b49028c8708c              # double 0.55329139676497752
	.quad	0x3fec79b6cd03d51a              # double 0.88985767404543314
	.quad	0x3fd7ae7e2b36c0c8              # double 0.37002519817452795
	.quad	0x3fec29a97f18fd21              # double 0.88008570502998762
	.quad	0x3fdfeb6a60b9e854              # double 0.49874362417142959
	.quad	0x3fc6f5a05b76df1c              # double 0.17937092271835631
	.quad	0x3fdd951e0d1151fa              # double 0.46222640300882711
	.quad	0x3fea96054225d985              # double 0.83081305427076357
	.quad	0x3fe5bb81c2a6cda2              # double 0.67913902299772055
	.quad	0x3fe94c343ebc45cf              # double 0.79055225613608993
	.quad	0x3fda6760f05de866              # double 0.41255973313639627
	.quad	0x3fcf88057f257698              # double 0.24633854587857651
	.quad	0x3fe99f39082930f0              # double 0.80068637460638392
	.quad	0x3fda47f6b0fb7456              # double 0.41064231189176803
	.quad	0x3fee880dea342e6b              # double 0.95410819762169063
	.quad	0x3fe782552d0e2d63              # double 0.73465975570563236
	.quad	0x3fe8cbdf518069de              # double 0.77488675993236789
	.quad	0x3fc2549045d66024              # double 0.14320567522077099
	.quad	0x3fc375179e26ce60              # double 0.15201087209935604
	.quad	0x3f71b27237328600              # double 0.0043205701396415996
	.quad	0x3fe2b02854766c06              # double 0.58400360581015387
	.quad	0x3fe1862efe6928d2              # double 0.54762983026128098
	.quad	0x3fb8cac3c346d778              # double 0.096843943762761842
	.quad	0x3fecd18279fa6418              # double 0.9005749113449637
	.quad	0x3fc8b8f91351344c              # double 0.19314492648337234
	.quad	0x3fd929e898eb24f8              # double 0.39318289693308328
	.quad	0x3fe2b7b4bdb618c9              # double 0.58492505124083849
	.quad	0x3fddb44f9d41d356              # double 0.46413030964986512
	.quad	0x3fe6f70dcc5628c7              # double 0.7176579466770584
	.quad	0x3fe4ce01bb3d0153              # double 0.65014730997067216
	.quad	0x3fed752071ce9313              # double 0.92054769733349173
	.quad	0x3fc253546758ae88              # double 0.14316802068912104
	.quad	0x3fed007c03574adb              # double 0.90630913403068847
	.quad	0x3fdb69f041ca83b6              # double 0.42834097313794517
	.quad	0x3fd6c9442d4f4886              # double 0.35603432106757571
	.quad	0x3fed997b7cd674a3              # double 0.92498564131132743
	.quad	0x3fea739386d3f35b              # double 0.82660843213634949
	.quad	0x3fde1f3a5425e4a0              # double 0.47065599649028833
	.quad	0x3f9069c546d11bc0              # double 0.016028482863727822
	.quad	0x3fef9419fd9b401c              # double 0.98682879955777336
	.quad	0x3fe15519b812978e              # double 0.54163824035343722
	.quad	0x3fd3018c285badd2              # double 0.29696945134375341
	.quad	0x3fe8275239341e05              # double 0.75479994938444916
	.quad	0x3fe95c05e2936406              # double 0.79248327496600335
	.quad	0x3f90a11dcc71ca60              # double 0.016239610293676043
	.quad	0x3fe0d7773ec6e4d7              # double 0.52630197774046905
	.quad	0x3fd2ff93cdca22ae              # double 0.29684920403137027
	.quad	0x3fe02c4358cd0d2b              # double 0.50540320724431831
	.quad	0x3fc5316a2f5f4ba4              # double 0.16557051957223934
	.quad	0x3fe252921e7dad3d              # double 0.57257944064387056
	.quad	0x3fd978d96c889d50              # double 0.39800105666150376
	.quad	0x3fee37c974d66ef8              # double 0.94430992908334498
	.quad	0x3fe39d01bf170c02              # double 0.61291587183257001
	.quad	0x3fea176474988c4c              # double 0.81535551808009065
	.quad	0x3fd5f4c5209e5aca              # double 0.34306457696349624
	.quad	0x3fc97225b45ecf98              # double 0.19879599864145514
	.quad	0x3fbf4d912c952ca0              # double 0.1222773298115265
	.quad	0x3fe3901b7030e80c              # double 0.61134120857536933
	.quad	0x3fc7492e1985f748              # double 0.18192077871565915
	.quad	0x3feac87bb5594998              # double 0.83697305125888288
	.quad	0x3fda8eac32084084              # double 0.41495804677925485
	.quad	0x3fe99b3809ddabea              # double 0.80019761969503844
	.quad	0x3fecefc5c8774e4a              # double 0.90426911500475993
	.quad	0x3fe425bb480b22f3              # double 0.62960590430256358
	.quad	0x3fee976177c08c46              # double 0.95597909344758913
	.quad	0x3fcafa5a48f45940              # double 0.21076515733938983
	.quad	0x3fe81436932a160e              # double 0.75246742957159696
	.quad	0x3fe5edc290b706c6              # double 0.68527344002378565
	.quad	0x3fb0968efb81d948              # double 0.064797340777521417
	.quad	0x3fe6856d96126500              # double 0.70378760634335435
	.quad	0x3febef18686bad88              # double 0.87293644327785191
	.quad	0x3fd3a9e4dc8bdb84              # double 0.30724450624205013
	.quad	0x3fb6b307dba23b28              # double 0.088669291612160195
	.quad	0x3fea449a7c232f47              # double 0.82087444539636401
	.quad	0x3fe005c67444c24f              # double 0.50070498188694923
	.quad	0x3fe88ff496a349d8              # double 0.7675726835389538
	.quad	0x3fb4a256476f0f78              # double 0.080602066459560251
	.quad	0x3fdbbee9c868141e              # double 0.43352741785958127
	.quad	0x3f9acd4c078c2b00              # double 0.02617377086702799
	.quad	0x3fde62d584688e02              # double 0.47478235178479633
	.quad	0x3fb10a8967d80800              # double 0.066567027904994802
	.quad	0x3fd2c8292b1c5c10              # double 0.29346684656178557
	.quad	0x3fd5d02f7bb02f70              # double 0.34083163336685285
	.quad	0x3fda7b0afc20d5fe              # double 0.41375994321728615
	.quad	0x3feca95ba010e94a              # double 0.89567357314016616
	.quad	0x3fabc4bdfbcb2c10              # double 0.054235398279694036
	.quad	0x3fe1d0206bd50b6b              # double 0.55665608464219696
	.quad	0x3fee42763c816235              # double 0.94561302010976667
	.quad	0x3fe81d3264436d03              # double 0.75356406767551254
	.quad	0x3fc4b99b52104804              # double 0.16191426760684646
	.quad	0x3fe096df6c5d079a              # double 0.51841708340383552
	.quad	0x3fa1e47da6efbcb0              # double 0.034946371677386678
	.quad	0x3fd793e0e0b4b2b2              # double 0.36840078300410106
	.quad	0x3faee983ec962c90              # double 0.060375330572321251
	.quad	0x3fefc3954419be29              # double 0.99262488652124603
	.quad	0x3fe69860f8048226              # double 0.70610092583598738
	.quad	0x3fe60ec765de1b6e              # double 0.68930406471268468
	.quad	0x3fb4149640f7b738              # double 0.078439131604423618
	.quad	0x3fb42905543fec90              # double 0.078750927990699048
	.quad	0x3fb9e55bd3d987c8              # double 0.10115598604309561
	.quad	0x3fed2a170cab15df              # double 0.91138794397619083
	.quad	0x3fe41281af51128a              # double 0.6272591041711888
	.quad	0x3fc42ed444927768              # double 0.15767911289452319
	.quad	0x3fb8b9b648baad60              # double 0.09658374095549993
	.quad	0x3fd7b9f7b202fa2e              # double 0.37072555908153759
	.quad	0x3fc1616f8a42ec98              # double 0.13578600169225719
	.quad	0x3fe2c3ad0f6d35fb              # double 0.58638623250015998
	.quad	0x3fe28e0c107d9f54              # double 0.5798397371372439
	.quad	0x3fe282cf49747073              # double 0.57846798273705102
	.quad	0x3f7e85fdf79fa980              # double 0.0074520035359263437
	.quad	0x3f20407eeb58d000              # double 1.2399243648675284E-4
	.quad	0x3fd6039fe89f47e0              # double 0.34397123066912449
	.quad	0x3fe0c598e0f1ba51              # double 0.52412074980186152
	.quad	0x3fe1e6170b53afcc              # double 0.55933716022763624
	.quad	0x3fe4422a5042c9a9              # double 0.6330768172832012
	.quad	0x3fd33ab7c736b30c              # double 0.3004588551946632
	.quad	0x3fe17905e3dd1703              # double 0.54602331642738056
	.quad	0x3fe6819bcbbf3d18              # double 0.70332135958043107
	.quad	0x3fe85203dca81fdd              # double 0.76001160714167393
	.quad	0x3fd56442c4c87c50              # double 0.33424443451980768
	.quad	0x3fcf3463a23a6b64              # double 0.24378629132555851
	.quad	0x3fd7876b991af51e              # double 0.36764039947213856
	.quad	0x3fcb37dc459096d4              # double 0.21264222523421117
	.quad	0x3fbe9cee945b1858              # double 0.11958209154099231
	.quad	0x3fe86854238b25d6              # double 0.76273543302630276
	.quad	0x3fec386e079bb0dd              # double 0.88188840375871858
	.quad	0x3fe0c98ffb6c3407              # double 0.52460478883733763
	.quad	0x3fcb54912c6602f4              # double 0.21351828258413941
	.quad	0x3fd2257f00ac1b7e              # double 0.28353858056691894
	.quad	0x3fe3c5cccc9c7d6f              # double 0.61789550746099831
	.quad	0x3fb1ee9ddb87df20              # double 0.070047250839590181
	.quad	0x3fd86de2c01cbd28              # double 0.38170689354861276
	.quad	0x3fdab7eb70c09dc2              # double 0.41747556696870103
	.quad	0x3fdcaae518d1db5a              # double 0.44793059753231079
	.quad	0x3fc5e817eb11787c              # double 0.1711454294008411
	.quad	0x3fce1b5d7844f2b4              # double 0.23521011707807349
	.quad	0x3fe9c0b4a0942036              # double 0.80477362978945766
	.quad	0x3fd5b321f454f38c              # double 0.33905838833361979
	.quad	0x3fea3981de35c984              # double 0.8195199337044845
	.quad	0x3fe3809cb7abca0b              # double 0.60944972871067316
	.quad	0x3fc986a77a4ff74c              # double 0.19942182037623934
	.quad	0x3fd7591a4d0173c8              # double 0.36481339950642822
	.quad	0x3fecd8a26d30a1a8              # double 0.90144463850179068
	.quad	0x3fea8ee6c659a214              # double 0.82994402637729303
	.quad	0x3fe4c6acdb1b8289              # double 0.64925234598565951
	.quad	0x3fe46bc2eb9fec9f              # double 0.63815446873140391
	.quad	0x3feb87e36a23f22e              # double 0.86033793192433961
	.quad	0x3f7a6d3bdd984d80              # double 0.0064518297672465641
	.quad	0x3fdb61a5088e98a0              # double 0.42783475719114428
	.quad	0x3fe1565d6e8e20dc              # double 0.54179259865579921
	.quad	0x3fdd21b14ca57c7e              # double 0.45518143162730229
	.quad	0x3fe69287eb39df36              # double 0.70538707678404111
	.quad	0x3fabbc98e7923dc0              # double 0.054173258083320075
	.quad	0x3fe53e52ae98afe0              # double 0.66385778523317285
	.quad	0x3febb2a7d3c8132e              # double 0.86555854190428305
	.quad	0x3fdffa4e95d27efa              # double 0.49965252524451353
	.quad	0x3fe58067b7fbf682              # double 0.67192445692462877
	.quad	0x3fed1e39e1e47515              # double 0.90993970985042216
	.quad	0x3feef9fb1b9a4539              # double 0.96801524535309291
	.quad	0x3fd72b16e34f2664              # double 0.36200496862566056
	.quad	0x3fc9a73e4d304bd4              # double 0.20041636246659655
	.quad	0x3fb7bd73b1143b80              # double 0.092734556896386877
	.quad	0x3fe820a6f1a8f4e8              # double 0.75398585509506422
	.quad	0x3fd9fa7a26eebbfa              # double 0.40591291238791849
	.quad	0x3fe2598fea9cb4fd              # double 0.57343288252528135
	.quad	0x3fcb49cd29c51424              # double 0.21318974055807971
	.quad	0x3fb55c4be1cb7598              # double 0.083439581514048178
	.quad	0x3feddaf557f393f1              # double 0.9329783170511502
	.quad	0x3fe5983d219a8946              # double 0.67483383715833933
	.quad	0x3fecd47180d941af              # double 0.9009330288482057
	.quad	0x3fe8b7934cc8bd4b              # double 0.77240910527135875
	.quad	0x3fecbd9b440e73ec              # double 0.89814532558704973
	.quad	0x3fd6e32f82dc35aa              # double 0.35761630801502042
	.quad	0x3fece82af4bfdc00              # double 0.90334079554202162
	.quad	0x3fdbf9229c68ed86              # double 0.4370810058059863
	.quad	0x3fea5fe738518b34              # double 0.82420693397248223
	.quad	0x3fe14f9f79758c28              # double 0.54096959803098787
	.quad	0x3fd0d38429e0ab4e              # double 0.2629099282227586
	.quad	0x3fd70eadf4002cf2              # double 0.36027096584503149
	.quad	0x3fe7f4097283c8bf              # double 0.74853966108482684
	.quad	0x3fe265cb109eb123              # double 0.57492593046257345
	.quad	0x3fd35f02618f5c7c              # double 0.30267390754074319
	.quad	0x3fd6f5d939a94300              # double 0.35875540381407234
	.quad	0x3fde541f0f6f7eee              # double 0.47388435847641019
	.quad	0x3fe2cf56bda24eae              # double 0.58780991590398002
	.quad	0x3fef5f24babbe6f0              # double 0.98036419364436078
	.quad	0x3faebb846dce6140              # double 0.06002439346701971
	.quad	0x3fef432691e195f5              # double 0.97694710247441085
	.quad	0x3fea835329cb78c4              # double 0.82853086627053373
	.quad	0x3fe03db555b5241b              # double 0.50753275623094696
	.quad	0x3fab2773c0e14c70              # double 0.05303537110798906
	.quad	0x3fdc3ab155a4a650              # double 0.44108231891241179
	.quad	0x3fefc03800cfba16              # double 0.99221420439227148
	.quad	0x3fe6a9fa5fd0c327              # double 0.70824927057228571
	.quad	0x3fd4a31d36f1335e              # double 0.32245569577644584
	.quad	0x3fe4025e76e9d2c2              # double 0.62528918481128692
	.quad	0x3feefef2103e6743              # double 0.96862128422365179
	.quad	0x3fd93be9fa0e5f12              # double 0.39428185863060705
	.quad	0x3fcdc989b678dee0              # double 0.2327129498460101
	.quad	0x3fee6d685f2c9817              # double 0.95085543240270709
	.quad	0x3fefb798caea1acd              # double 0.99116172439320282
	.quad	0x3fe136c7af7e317c              # double 0.53793701435056063
	.quad	0x3feb24c11b3a3f9d              # double 0.84823661153676577
	.quad	0x3fd0782e540e34ba              # double 0.25733526428741593
	.quad	0x3feb0a0812bde596              # double 0.84497455273155953
	.quad	0x3fea1b85dd0d9d19              # double 0.81585972952317143
	.quad	0x3fe4c08c30d5deb4              # double 0.64850434816522418
	.quad	0x3fe8953b3d557e9b              # double 0.76821672419824283
	.quad	0x3fe8e85393355329              # double 0.7783601641809571
	.quad	0x3fd3d27456cb777e              # double 0.30972012020162498
	.quad	0x3fc32ec963d48df8              # double 0.14986531614805165
	.quad	0x3fbc3360463f1648              # double 0.11015893664360832
	.quad	0x3fe4b9fd399b1acd              # double 0.64770375491283405
	.quad	0x3fe9fa7d30293af0              # double 0.81182727247673192
	.quad	0x3f46b003b4ddc800              # double 6.9236927968874262E-4
	.quad	0x3fd9508c559ca19c              # double 0.39554127083331436
	.quad	0x3fd6ec447d892a62              # double 0.35817062625270613
	.quad	0x3fe6cdd4fe7ef1ea              # double 0.71262597757555324
	.quad	0x3fd877c952bd27f4              # double 0.3823111827847463
	.quad	0x3fe8348028ed3300              # double 0.75640876763790743
	.quad	0x3fe5cb4b449bb431              # double 0.68106616401713016
	.quad	0x3fbb7068ba2d8a00              # double 0.1071839766059739
	.quad	0x3fbab32b811cc8d8              # double 0.10429641630324527
	.quad	0x3fae86061b92f8a0              # double 0.059616270891170275
	.quad	0x3fef7260fb2e69f5              # double 0.98271225985382548
	.quad	0x3fea5493e54fb4c7              # double 0.82282442843793369
	.quad	0x3fdf957037ff15f0              # double 0.49349599331284733
	.quad	0x3fe9eb26f722137a              # double 0.80995510357079969
	.quad	0x3fe0569c3ac2afe8              # double 0.51057254292163368
	.quad	0x3fe399b6a3d78b7f              # double 0.6125138473547479
	.quad	0x3fe8baca7a6b15a5              # double 0.77280162725280788
	.quad	0x3fe4e7dced20b627              # double 0.65330358804721278
	.quad	0x3fea4bc9784bfbc7              # double 0.8217513417765695
	.quad	0x3fd7e73b5ea0ecb6              # double 0.37348827591967948
	.quad	0x3fe00a2a1227f747              # double 0.50124076410404761
	.quad	0x3fae2740c9e23af0              # double 0.058893227237708845
	.quad	0x3fed3ff1acafccca              # double 0.91405566909670566
	.quad	0x3feede598651e1ad              # double 0.96464229807229673
	.quad	0x3fe7413cecffb7ee              # double 0.72671362198684419
	.quad	0x3fea0ca4612825a7              # double 0.81404322601263324
	.quad	0x3fe0a09ef79742ec              # double 0.51960705144491959
	.quad	0x3fe11c78c32e26bb              # double 0.53472555276058331
	.quad	0x3fb618e8ff7b8458              # double 0.08631759869924005
	.quad	0x3fdb921f74b0c0f4              # double 0.4307936324648971
	.quad	0x3feb635214679e89              # double 0.85587409959130512
	.quad	0x3fb75b8f77a19570              # double 0.091240851122696531
	.quad	0x3fc0ad703b622d1c              # double 0.13029292010865212
	.quad	0x3fecf1380b51b467              # double 0.90444566927693593
	.quad	0x3fd9610851f962b2              # double 0.39654739384927062
	.quad	0x3fdc016e71c807c4              # double 0.43758736716710822
	.quad	0x3fed085bd544b76a              # double 0.90727035192479133
	.quad	0x3fc5ceb30c5423ac              # double 0.17037046529756361
	.quad	0x3fe6647ba7f4b4f0              # double 0.69976599506267512
	.quad	0x3fee77973443b827              # double 0.95209846694865952
	.quad	0x3fc7662a9a9e7774              # double 0.18280537175899847
	.quad	0x3fea848ae2a90fb4              # double 0.8286795069657189
	.quad	0x3fe3d6c07356fd28              # double 0.61996481444649465
	.quad	0x3fe2da3d716fdf0b              # double 0.58914062648452281
	.quad	0x3fbf53da57a9e0e8              # double 0.12237324371551817
	.quad	0x3fbb0356e85e05f8              # double 0.10551970646886122
	.quad	0x3feaeebb8d04624c              # double 0.84164216558844762
	.quad	0x3fe14a514191e699              # double 0.54032194906831699
	.quad	0x3fb426c097bb8c68              # double 0.078716313404173399
	.quad	0x3fb2de3188a86e38              # double 0.073702903617623217
	.quad	0x3fd9403cc1afdd9c              # double 0.39454573549979854
	.quad	0x3fd26e9bde638aee              # double 0.28800102918300652
	.quad	0x3fe78b5d9ff4d6a7              # double 0.73576241723522606
	.quad	0x3fc7e90a80c22dec              # double 0.18679934775387552
	.quad	0x3fe3e7e6365dca6d              # double 0.62205801599914212
	.quad	0x3fe5c7ccd4c43e96              # double 0.68063966327641157
	.quad	0x3fddd8cee55cf454              # double 0.46635792158833067
	.quad	0x3fc779dc0d585ec4              # double 0.18340635921116732
	.quad	0x3fe42b8a8e567c89              # double 0.63031509209021508
	.quad	0x3fe1f8e1503a722e              # double 0.56163087529745837
	.quad	0x3f8d5857820c03c0              # double 0.014328654915063299
	.quad	0x3fadd9898e767570              # double 0.058300303116292862
	.quad	0x3fcf83f642b35e88              # double 0.24621465927952024
	.quad	0x3fe5fdca67d7bd7f              # double 0.68723030359062409
	.quad	0x3fdeddd933e319f0              # double 0.48229055468655613
	.quad	0x3fe34037b17aff10              # double 0.60158905662680873
	.quad	0x3fd1ac76266fca8a              # double 0.27615121606428572
	.quad	0x3fe70f6b3aba6c57              # double 0.72063218565325371
	.quad	0x3faa704f087e5180              # double 0.051638097559734142
	.quad	0x3fec75e1fe94bc14              # double 0.88938998911715083
	.quad	0x3fe18cb1845f0242              # double 0.5484244904874418
	.quad	0x3fdb01c9864a9b8e              # double 0.42198408235929541
	.quad	0x3fed9eeccd7e6d70              # double 0.92565002570647259
	.quad	0x3fd5a51dea5a3fbc              # double 0.33820293317785022
	.quad	0x3fc49945c5d040b4              # double 0.16092750700818714
	.quad	0x3f877eab99729900              # double 0.011472073192930754
	.quad	0x3fe39ff87d34fd15              # double 0.61327766851892085
	.quad	0x3fe12bc2e5e09ea3              # double 0.53659195802625381
	.quad	0x3fe1dcec499d9e8e              # double 0.55821813943926357
	.quad	0x3fe671ea0d3655a5              # double 0.70140554981724235
	.quad	0x3fb831b07b78a1f0              # double 0.094508199829426819
	.quad	0x3feaa1d1a62009ce              # double 0.83225328871076854
	.quad	0x3fec414e19b94bc3              # double 0.88297181152517401
	.quad	0x3f788e79c7546580              # double 0.0059952504136843165
	.quad	0x3fd56af97fb41534              # double 0.33465421172180077
	.quad	0x3fea291a88c5edf7              # double 0.81751753533848059
	.quad	0x3feb9aeac3d31d81              # double 0.86266077277188924
	.quad	0x3fe430330de72ed7              # double 0.63088371959153278
	.quad	0x3f98dd9ab32efa80              # double 0.024282853304379959
	.quad	0x3fe108f0958017fe              # double 0.53234128188410046
	.quad	0x3fd6d7be21f09a42              # double 0.35691788973273131
	.quad	0x3fe7477f95960ecf              # double 0.72747782913253356
	.quad	0x3f8925feb979aa00              # double 0.012279500994925918
	.quad	0x3fc2ce60193c8e28              # double 0.1469230769372285
	.quad	0x3fb9c9a84d5b2708              # double 0.10073329819274701
	.quad	0x3feb50ea9888d3ee              # double 0.85362748901263585
	.quad	0x3fe8690a59b91a37              # double 0.76282231830629754
	.quad	0x3fe33439f4dc8527              # double 0.60012529205792908
	.quad	0x3fefafc85d073aa3              # double 0.99020784539773776
	.quad	0x3fefaf31c440066d              # double 0.99013603525254512
	.quad	0x3fdc9414482bee50              # double 0.44653803871162712
	.quad	0x3fc2df2826695e18              # double 0.14743520618024841
	.quad	0x3fe5c1e097a7bd99              # double 0.67991666431582864
	.quad	0x3fc0e6d22e090e4c              # double 0.13204409835644737
	.quad	0x3fe8d0253c9d7211              # double 0.77540838087912978
	.quad	0x3fe402077fe4c7b4              # double 0.62524771670563561
	.quad	0x3fb2d1e06bd5a950              # double 0.073514963461694949
	.quad	0x3fc62b62fc096398              # double 0.17319905573347394
	.quad	0x3fdc15edf584650c              # double 0.43883847214017702
	.quad	0x3fdf10fe1f32d036              # double 0.48541214987494941
	.quad	0x3fc88467956af63c              # double 0.19154066844741802
	.quad	0x3fd2ab28ed53483a              # double 0.29169676948834289
	.quad	0x3febdaa4b68ee164              # double 0.87043986945995444
	.quad	0x3f8c5e10f83b8a80              # double 0.013851292205292909
	.quad	0x3fd839a4644b4f98              # double 0.37851819795945962
	.quad	0x3fe5766a6f01e001              # double 0.67070504838102363
	.quad	0x3fb30802ed1495c8              # double 0.074340994721374121
	.quad	0x3f68ea5fc2a45a00              # double 0.0030414457625156377
	.quad	0x3fe891081b2e36c3              # double 0.76770406063743513
	.quad	0x3fd92f7e8109c4b0              # double 0.39352381326086583
	.quad	0x3fd2404d35714364              # double 0.28517465800273656
	.quad	0x3fb91e8acf36c428              # double 0.098122287358606841
	.quad	0x3fd383988b134a20              # double 0.30490697461678629
	.quad	0x3fccefd7b9b872f4              # double 0.22606941765197741
	.quad	0x3fea71c14326d5e6              # double 0.82638609996382395
	.quad	0x3fdc33fd06158c72              # double 0.44067311853559155
	.quad	0x3fea09abee34e417              # double 0.81368061566093075
	.quad	0x3fe0e593d445e887              # double 0.5280245920141774
	.quad	0x3feb4ad43cfc6a45              # double 0.8528844061978097
	.quad	0x3feac720326ef9e2              # double 0.8368073449162774
	.quad	0x3fb3f86e49c16198              # double 0.07800950337094148
	.quad	0x3fe60e8e4fc63362              # double 0.68927684384253163
	.quad	0x3fa850c6af5f4460              # double 0.04749127283833654
	.quad	0x3fee774880100f87              # double 0.95206093799832636
	.quad	0x3fd86730d97c3294              # double 0.3812982677343737
	.quad	0x3fe666859e0e8539              # double 0.70001488562062442
	.quad	0x3fee5963e92fee2b              # double 0.94841189903622103
	.quad	0x3fc1b9a018833e08              # double 0.13847733685405239
	.quad	0x3fe1641a56dd2659              # double 0.54346959081267265
	.quad	0x3f7b0a6143ac3700              # double 0.0066016959560906141
	.quad	0x3fcd98de836765a8              # double 0.23122769752698713
	.quad	0x3fe5613bcb2d6380              # double 0.66811933215204533
	.quad	0x3fdd1e7932c12be0              # double 0.45498495060445343
	.quad	0x3fe0e60155104f35              # double 0.52807680715566241
	.quad	0x3fd16f4c18ca4c86              # double 0.27241804524346269
	.quad	0x3fe405045245fd1d              # double 0.62561241215727004
	.quad	0x3fef343c0dbfbab5              # double 0.97512629208889356
	.quad	0x3fef1d0add133e1c              # double 0.97229521921866846
	.quad	0x3fe83a0d6346a42e              # double 0.75708646192390971
	.quad	0x3fd10a1afedcd11a              # double 0.26624178780481744
	.quad	0x3fd54c4fb9ab6570              # double 0.33278267986096122
	.quad	0x3fdf1a923d20f124              # double 0.48599678010556802
	.quad	0x3fe757a6dc5f9f49              # double 0.72944968263343768
	.quad	0x3feb3935c4b4fa88              # double 0.85073364657712691
	.quad	0x3fdecccb61576676              # double 0.48124966150280757
	.quad	0x3fe55b7c00a52d07              # double 0.66741752744692995
	.quad	0x3fe107bb213f2743              # double 0.53219372266287512
	.quad	0x3fdd2c191b67e51e              # double 0.45581653286315482
	.quad	0x3fde5837d8c21e9e              # double 0.47413440864372969
	.quad	0x3fbce03ea8a75270              # double 0.1127967035057027
	.quad	0x3fe4640318f4eead              # double 0.63720850824707542
	.quad	0x3fddccfa2bbe9a1a              # double 0.46563581726005199
	.quad	0x3fde9dab528766a8              # double 0.47837336596931346
	.quad	0x3febefc131ba4f29              # double 0.8730169268842235
	.quad	0x3fdf670f069a2fb6              # double 0.49066520352129872
	.quad	0x3febb3f317b30a30              # double 0.86571650151046775
	.quad	0x3feb2b4ad5bfc062              # double 0.84903470752579957
	.quad	0x3fe9f73d64b3091a              # double 0.81143064182132041
	.quad	0x3fef4c1cfd569227              # double 0.97804116706953869
	.quad	0x3fe442e3c23ce5b6              # double 0.63316524445615729
	.quad	0x3fe3cf2aa1da5604              # double 0.61903888332261703
	.quad	0x3fc7b62782d65c2c              # double 0.18524640930692848
	.quad	0x3fd5e37a53bd5b3e              # double 0.34200914552404871
	.quad	0x3feb4452a03e9637              # double 0.85209018037557527
	.quad	0x3fd34de7fe66ced6              # double 0.30163001865296957
	.quad	0x3fb7536f4f9ccba8              # double 0.091116864143983123
	.quad	0x3fe87095a6d988e2              # double 0.76374323451844028
	.quad	0x3fd347b27b4635d6              # double 0.30125104940893033
	.quad	0x3fb37142dfd63cf0              # double 0.07594697918669957
	.quad	0x3fe96d7da1c0fa30              # double 0.79461556999723904
	.quad	0x3fb9a7d15b0ef930              # double 0.10021694634540235
	.quad	0x3fc8a0a0641f7864              # double 0.19240193260970095
	.quad	0x3fe0aa81d0adbe89              # double 0.52081385381275525
	.quad	0x3fe495c5b68f2be9              # double 0.64328275352579312
	.quad	0x3fed0549a714e91a              # double 0.90689547188893305
	.quad	0x3fec40488bdfef47              # double 0.88284709281240559
	.quad	0x3fcb4a1643e4d1b0              # double 0.21319845500114587
	.quad	0x3feb1e56452d10ed              # double 0.84745324622101992
	.quad	0x3fe188494be3cc61              # double 0.5478865129683862
	.quad	0x3fcc6993f1ba2f8c              # double 0.22197198203172908
	.quad	0x3feac17df02711f9              # double 0.83611962227638437
	.quad	0x3fe251468bedae36              # double 0.57242133455060329
	.quad	0x3fab34487532cc60              # double 0.053133262926529978
	.quad	0x3fee224ff52970ce              # double 0.94168851741007997
	.quad	0x3fe0a732c5269d0a              # double 0.52040995126745426
	.quad	0x3fe0b4f0a66f5038              # double 0.52208740717697477
	.quad	0x3fc22faa78082d1c              # double 0.14207964764532555
	.quad	0x3fdf492e5c75c25a              # double 0.48884161977097096
	.quad	0x3fe81f48b6981e38              # double 0.75381885207111221
	.quad	0x3fce002a7396e6b0              # double 0.23438006061569672
	.quad	0x3fed05473a54ce87              # double 0.90689431565120138
	.quad	0x3fbd730150feff68              # double 0.11503608920520281
	.quad	0x3fdfe7894d5d5c54              # double 0.49850685649056925
	.quad	0x3fcd47ce185f9e0c              # double 0.22875381651032034
	.quad	0x3fc73608fc42aa0c              # double 0.18133652036097236
	.quad	0x3fd21ea45c6151b6              # double 0.28312024137019465
	.quad	0x3fd8603d1d76c3aa              # double 0.38087394597374191
	.quad	0x3fd684b43a964d34              # double 0.35184961053274155
	.quad	0x3fe6a5188c97b30d              # double 0.7076533075283763
	.quad	0x3fcf6fcecb0c8c90              # double 0.24559960283759041
	.quad	0x3fe15b742cad9f29              # double 0.5424137947675024
	.quad	0x3fbafc81e91f40d8              # double 0.1054154581208907
	.quad	0x3fe4334d549cd49e              # double 0.63126246000196651
	.quad	0x3fe38eed2e90473c              # double 0.6111970815129335
	.quad	0x3fd56a5b0e6c2a36              # double 0.33461643608521585
	.quad	0x3fd9f24199a69782              # double 0.40541114811855306
	.quad	0x3fd9bb0ed430b9d6              # double 0.40204210969650711
	.quad	0x3fe2e57c6c16ada4              # double 0.59051343070079954
	.quad	0x3feadae7ffe11622              # double 0.83922195412077749
	.quad	0x3fc57f9eeb712774              # double 0.16795717712585267
	.quad	0x3faed707493f4ba0              # double 0.060234286967577377
	.quad	0x3feaf92b0906a1df              # double 0.84291602862236548
	.quad	0x3fe3ee961ae2ca35              # double 0.62287431002761784
	.quad	0x3fbb4b230fc69c78              # double 0.10661524901535013
	.quad	0x3fe2a591b2742620              # double 0.58271107534637068
	.quad	0x3fdf6f3602fbd970              # double 0.49116277972588929
	.quad	0x3febc305537fade0              # double 0.86755625065182684
	.quad	0x3fd1b9ff6a54d4f4              # double 0.27697739967273027
	.quad	0x3fe16bc99a292cee              # double 0.54440765485324305
	.quad	0x3fe9be8f81bd612c              # double 0.80451178874776507
	.quad	0x3fecabcd7c6b2942              # double 0.89597200680263023
	.quad	0x3feb6b7ae757db29              # double 0.85687012848106747
	.quad	0x3fd556b5824917be              # double 0.33341729853816193
	.quad	0x3fd0d4bb8a1e284e              # double 0.26298416603151942
	.quad	0x3fe4712e195a1c77              # double 0.63881592704355128
	.quad	0x3fe1a48f0a5136f2              # double 0.55133773818098875
	.quad	0x3fe50b0cf9280cb8              # double 0.65759895957344039
	.quad	0x3fef8b0ed3965d6e              # double 0.98572484326989041
	.quad	0x3fecaf10839e9419              # double 0.89637017924235629
	.quad	0x3febb7a3057f1c24              # double 0.86616660188235927
	.quad	0x3fb12e771c211378              # double 0.067115253798943786
	.quad	0x3fdb266cdf9a53c2              # double 0.42422029339041611
	.quad	0x3fdcdfedaeb5bd78              # double 0.45116750775829173
	.quad	0x3fef301dd3f8f3cb              # double 0.97462359810708087
	.quad	0x3fbeb9f8ecdeb1d8              # double 0.12002521307903835
	.quad	0x3fe0454d4a4d61c9              # double 0.50845970642245064
	.quad	0x3fed4036208f8a57              # double 0.91408830985558154
	.quad	0x3fd44ddef185b356              # double 0.31725286089095073
	.quad	0x3fe9f9ae7a6ee30d              # double 0.81172870552754406
	.quad	0x3fea3d6b8aa4c268              # double 0.81999756888224073
	.quad	0x3feafafdb0ce9abe              # double 0.84313854725481696
	.quad	0x3fe867955b7e40ef              # double 0.76264446134339703
	.quad	0x3fe1fe2b7dbbfadc              # double 0.56227659757118031
	.quad	0x3fe127b2bae2447f              # double 0.53609596729997111
	.quad	0x3fe724ff7fd84169              # double 0.72326636285474166
	.quad	0x3fe852046798f96a              # double 0.76001186593911751
	.quad	0x3fee1bc9944a0b54              # double 0.94089201891652374
	.quad	0x3fe5f5358a8d57d0              # double 0.68618275700532116
	.quad	0x3fdec69548132a80              # double 0.48087055243073706
	.quad	0x3fe1e112537a133c              # double 0.55872455886910855
	.quad	0x3f799277a16e5a00              # double 0.0062431977338719413
	.quad	0x3fd45d77f06a56c8              # double 0.31820486524643998
	.quad	0x3fe5532c4b8e8744              # double 0.66640295750787759
	.quad	0x3fdd7db1a27f20b6              # double 0.46079674595649622
	.quad	0x3fde8a30f3cd8f0a              # double 0.47718452271350087
	.quad	0x3fdcd3406e9bb8ae              # double 0.45039377976980688
	.quad	0x3fca1c697a8d7d54              # double 0.2039920662309479
	.quad	0x3fdd56acf5bcf156              # double 0.45841526029450586
	.quad	0x3fedaeac8fe507c6              # double 0.92757251839088251
	.quad	0x3fd322961c63122a              # double 0.29898598453681535
	.quad	0x3fd8920eaff468e6              # double 0.3839146345432155
	.quad	0x3fe21d881eb30b09              # double 0.56610494609808015
	.quad	0x3fea28d223305750              # double 0.81748301384753042
	.quad	0x3fee66e4c5cfbb83              # double 0.95006025919961734
	.quad	0x3fb78e8b59a13f68              # double 0.092018803961079976
	.quad	0x3fdbf83bd4273eb6              # double 0.43702598302932516
	.quad	0x3fead202ea4af8c3              # double 0.83813615570377242
	.quad	0x3fe5322e39600b28              # double 0.66237555700385986
	.quad	0x3fe699d1403a0101              # double 0.70627653640988808
	.quad	0x3fd9db7befc1ae1c              # double 0.40402124799467898
	.quad	0x3fe8ec4f093f58df              # double 0.77884628111021559
	.quad	0x3fe72ec824b7a29d              # double 0.72446067019798799
	.quad	0x3fc3557819aa6300              # double 0.15104581120683491
	.quad	0x3fcf8c77f1e19194              # double 0.24647425947763379
	.quad	0x3fef2a69c5b3c42e              # double 0.9739273892756779
	.quad	0x3fcba980c7f7a858              # double 0.21611032260927021
	.quad	0x3fe3f59e785f6dd9              # double 0.62373279104525203
	.quad	0x3fd8eb2b53751cfe              # double 0.38935359144348058
	.quad	0x3fe40bc39f0651b9              # double 0.62643605288990678
	.quad	0x3fec4ad7394a1c5e              # double 0.88413582982401429
	.quad	0x3fb73e0d4d64ee78              # double 0.090790587802013323
	.quad	0x3fb48fce55cde8a0              # double 0.080319305370638805
	.quad	0x3fe674e2f7fb8792              # double 0.70176838335122427
	.quad	0x3fdf99b00d79c436              # double 0.49375535312634911
	.quad	0x3fb101aa47e7cf88              # double 0.066431658320480591
	.quad	0x3fea2e1176b99bac              # double 0.81812356174929368
	.quad	0x3fde2f44476233e8              # double 0.47163493128829126
	.quad	0x3fed3297dcae6db2              # double 0.91242592908695586
	.quad	0x3fd60a69e3ec07ee              # double 0.34438559778220579
	.quad	0x3fe4da8609edcfd0              # double 0.6516752427983139
	.quad	0x3fe21b594619a2e6              # double 0.56583846751626932
	.quad	0x3fc92b8b340cc960              # double 0.19664135018826823
	.quad	0x3fece2b4039573f0              # double 0.90267372798882484
	.quad	0x3fe2cf750a450bee              # double 0.5878243637638414
	.quad	0x3fd1e0a00f8c8762              # double 0.27933503645373581
	.quad	0x3fe702252772544b              # double 0.71901185707486925
	.quad	0x3fecdbbeb0fce1e5              # double 0.90182432716306649
	.quad	0x3fe59f7bd1b4c4d6              # double 0.67571822126606196
	.quad	0x3fcac0fee01e9b20              # double 0.20901475852334617
	.quad	0x3fe419b5487aed8c              # double 0.62813820034300383
	.quad	0x3fca335e6577f46c              # double 0.20469264940757925
	.quad	0x3fe7db5cbf99d830              # double 0.74552762434064412
	.quad	0x3fe1895488b792c4              # double 0.54801394178920093
	.quad	0x3fdd9d3de2f3e916              # double 0.46272227443081826
	.quad	0x3fed2efe4e638de0              # double 0.91198649702385736
	.quad	0x3fe68df4bf2cd0ac              # double 0.70482861842039801
	.quad	0x3fee025303d543e9              # double 0.9377837252487754
	.quad	0x3fe739ec1ce1bec2              # double 0.72582059517841224
	.quad	0x3fef658aa81352a5              # double 0.98114521815530919
	.quad	0x3fe473a7cd00181d              # double 0.63911809958586085
	.quad	0x3fa7996795d1d9d0              # double 0.046092259443799244
	.quad	0x3fd3c7857cef8e54              # double 0.3090528221202693
	.quad	0x3fbf4c77bae3ac40              # double 0.12226055443504524
	.quad	0x3fd6eb7c0ade515c              # double 0.35812283574457182
	.quad	0x3fefc1f8dd902092              # double 0.99242823862097596
	.quad	0x3fe43ecccb6be537              # double 0.63266601305728087
	.quad	0x3fda7435c1e7528c              # double 0.41334289489649545
	.quad	0x3fe73c6c07a6a96b              # double 0.72612573141422609
	.quad	0x3fe80a69c6257a0a              # double 0.75127114010302987
	.quad	0x3feaebb18c575af4              # double 0.8412711850204162
	.quad	0x3fdba002a7955516              # double 0.43164125791129615
	.quad	0x3fb8a9e3e9da5090              # double 0.096342320054022545
	.quad	0x3fe7ce3f09b0e105              # double 0.74392654316673712
	.quad	0x3fdff88e19e55604              # double 0.49954559830561629
	.quad	0x3fbd0858d5bed550              # double 0.11340861528772916
	.quad	0x3fe051cf07a4fcd0              # double 0.5099864148432065
	.quad	0x3fc0b6b43faa7040              # double 0.13057568653755602
	.quad	0x3fe5af424f85c458              # double 0.67764392406219098
	.quad	0x3fdcf630fdb3218c              # double 0.45252632880558319
	.quad	0x3fcf42ec1213f1a8              # double 0.24422980196676503
	.quad	0x3fe910b17ed61b1e              # double 0.7832877614281164
	.quad	0x3fedf998516ac70c              # double 0.93671813871171272
	.quad	0x3fbb49ec20fa5050              # double 0.10659671597596909
	.quad	0x3fc4ed86cb908014              # double 0.16349873485251065
	.quad	0x3fc4ff739029d758              # double 0.16404575862150739
	.quad	0x3fefd5e866ba2f76              # double 0.99486179412768538
	.quad	0x3fddb5ed5c7282fe              # double 0.46422895458276503
	.quad	0x3fec7377c9258446              # double 0.88909520422397104
	.quad	0x3feec2fcd26f33de              # double 0.96130219555345398
	.quad	0x3fe2c87e97a24c9f              # double 0.58697442642223396
	.quad	0x3fe4834625afbd01              # double 0.64102465973510914
	.quad	0x3fe060c30172adc1              # double 0.51181173594289231
	.quad	0x3fc4079546afe054              # double 0.15648141814722527
	.quad	0x3fdf49e2f29dc3c0              # double 0.48888467495913446
	.quad	0x3f966a628da6dac0              # double 0.021890201469171755
	.quad	0x3fecbb48c4cf1fe4              # double 0.89786184729836948
	.quad	0x3fd57587deea9db8              # double 0.33529850739656863
	.quad	0x3fda02e55dacfcd4              # double 0.40642675540943896
	.quad	0x3fdac6652c6c69cc              # double 0.41835908258658772
	.quad	0x3feac87d301b3eb4              # double 0.83697375674997553
	.quad	0x3fe8920fc4823443              # double 0.76782978420818215
	.quad	0x3fcbb8036a86f2f4              # double 0.21655314160843597
	.quad	0x3fe8b962f92ac485              # double 0.77263020196382171
	.quad	0x3fd8bf3cdb9bb6ca              # double 0.38667222448462424
	.quad	0x3fec17548a7deabf              # double 0.87784792946998624
	.quad	0x3fdc4182e99360bc              # double 0.44149849710585065
	.quad	0x3fed31b82945b866              # double 0.91231926022534249
	.quad	0x3fed29eade452d5c              # double 0.91136687671807292
	.quad	0x3fd7ac3173f1e5c2              # double 0.36988483736749
	.quad	0x3fd01541b6af2c36              # double 0.25129740562687475
	.quad	0x3fde714113227d38              # double 0.47566248768449126
	.quad	0x3fd7b8d7e3eaaf8e              # double 0.3706569410085131
	.quad	0x3fe4ade688907e88              # double 0.64622809097996115
	.quad	0x3fe9b7925a48854c              # double 0.80365865357831856
	.quad	0x3fed53c777aaecb0              # double 0.91647694943039504
	.quad	0x3fea33706e94c8b2              # double 0.818779197672731
	.quad	0x3fe3d8f9667f3147              # double 0.62023611086764496
	.quad	0x3fd18aed4caee406              # double 0.27410442818251146
	.quad	0x3fb34562b35a3e20              # double 0.075277489459260938
	.quad	0x3fe74d6b2e9613d2              # double 0.72820052241206157
	.quad	0x3fd2aceab16823fa              # double 0.29180400204546653
	.quad	0x3fe3abae54b69ced              # double 0.61470715089390426
	.quad	0x3fcb2d009565fa48              # double 0.21231086058465309
	.quad	0x3fd698ee4bff0e1e              # double 0.35308415814890448
	.quad	0x3feffd592e8ffdf2              # double 0.99967631429893644
	.quad	0x3fb40b9e101b8c98              # double 0.078302267963908156
	.quad	0x3fd8b37656540d98              # double 0.3859535067606088
	.quad	0x3fe1bf9a3e38c1bb              # double 0.55463897850682231
	.quad	0x3fd061629adedc24              # double 0.25594391941143813
	.quad	0x3fc638996548c1a8              # double 0.17360227056043454
	.quad	0x3fd30b0cd7e5afda              # double 0.29754944881164891
	.quad	0x3fd9f1972a13c404              # double 0.40537051304914962
	.quad	0x3fe2251570386640              # double 0.56702682416943873
	.quad	0x3feb79b44958aaf7              # double 0.85860647511921584
	.quad	0x3fc067fcda5619c0              # double 0.12817345295861848
	.quad	0x3fbeaf8ee8bcc238              # double 0.11986630613387994
	.quad	0x3fe06322e77b4609              # double 0.51210160456884168
	.quad	0x3fce02e01bbf583c              # double 0.23446275095801805
	.quad	0x3fce06769aab6fbc              # double 0.23457224418859635
	.quad	0x3fd4b5b8bccd07e6              # double 0.32359140813434661
	.quad	0x3fe8a589adb86d45              # double 0.77020725183266647
	.quad	0x3fd24fb42fa424da              # double 0.2861147370573015
	.quad	0x3fe1bdceefbedd7c              # double 0.55441996407800742
	.quad	0x3fe7139b1ee37c63              # double 0.72114330323155362
	.quad	0x3fda28a01e2740fc              # double 0.40872958130513815
	.quad	0x3fe2443c2a6398dd              # double 0.57082947043525289
	.quad	0x3fe9be089313f118              # double 0.80444744802619805
	.quad	0x3fe82a74aaf68650              # double 0.7551825846787299
	.quad	0x3fea54260eea9846              # double 0.82277205384594576
	.quad	0x3fd70b6107c5ca34              # double 0.36006952055973618
	.quad	0x3fcc52f411e97d6c              # double 0.22128153681385798
	.quad	0x3fe13cbeeeaac012              # double 0.53866526236197587
	.quad	0x3fdae2ae73ca3dbe              # double 0.42008553798310888
	.quad	0x3fc44862ca8023e4              # double 0.15845904243204167
	.quad	0x3fe9b97e3cff6b2a              # double 0.80389320291155753
	.quad	0x3fe8698304350c8b              # double 0.76287985631678745
	.quad	0x3fc7bf9e986910d4              # double 0.18553526346125315
	.quad	0x3feda514b688862a              # double 0.92640147830042463
	.quad	0x3fe26158d2cbb140              # double 0.57438317461996036
	.quad	0x3fe92cae4fedd5d9              # double 0.786704212294974
	.quad	0x3fb729503e67c8c0              # double 0.090474143253035599
	.quad	0x3fea4b152c40d734              # double 0.82166536944598655
	.quad	0x3fded9c18175bcaa              # double 0.48204076426095332
	.quad	0x3fb06f56914307c0              # double 0.064198885406795192
	.quad	0x3fd794376ba4115a              # double 0.36842141639524117
	.quad	0x3fcfb008aa57c570              # double 0.2475596267463902
	.quad	0x3fde3eb3284a39a0              # double 0.4725768941360915
	.quad	0x3fda9441eaebc12a              # double 0.41529891911979411
	.quad	0x3fe55207f4bbb06a              # double 0.6662635593361419
	.quad	0x3fdb54edb06729b4              # double 0.42705862261632466
	.quad	0x3fea7ee66f28acd6              # double 0.82799073897094888
	.quad	0x3fb94a3680311f98              # double 0.098788648888442743
	.quad	0x3fd93634be3075aa              # double 0.39393347333119755
	.quad	0x3fdb2261cc199706              # double 0.42397351199757372
	.quad	0x3fd360cddeb47bbe              # double 0.30278345821892205
	.quad	0x3fec98879284c5fd              # double 0.89361933342860278
	.quad	0x3fbba889723ed950              # double 0.10804041899868833
	.quad	0x3fda62321f939946              # double 0.41224339564941592
	.quad	0x3fe0ef4f7ce66658              # double 0.52921270746737559
	.quad	0x3fe7fe044a1224bc              # double 0.74975790469138514
	.quad	0x3fe6d7a3986adb4d              # double 0.7138231255438342
	.quad	0x3fd14c64888cea3a              # double 0.2702876409054259
	.quad	0x3fe7a8d0adf3cd96              # double 0.73935731864041787
	.quad	0x3fe29140e9193b40              # double 0.5802311470705277
	.quad	0x3fb7fcec2cd3df10              # double 0.093703041977161172
	.quad	0x3fe9a0e91ce24344              # double 0.80089240685820373
	.quad	0x3f90c41c32189b80              # double 0.016373100812554053
	.quad	0x3fe64a2fac1676de              # double 0.69655593500985069
	.quad	0x3feb542e682b238e              # double 0.85402603478824957
	.quad	0x3fe51ff89bd334f4              # double 0.66015272554946458
	.quad	0x3fe1e8902a40168c              # double 0.55963905574817963
	.quad	0x3fd5189684d023a4              # double 0.32962573022865116
	.quad	0x3fe95b4d0a955005              # double 0.79239513461152511
	.quad	0x3fe353ed24f093bd              # double 0.60399491514964831
	.quad	0x3fef63972c252a4b              # double 0.9809070455751877
	.quad	0x3fbed8fcedc3ba38              # double 0.12049847416685899
	.quad	0x3fdce86250a1de98              # double 0.45168359636543576
	.quad	0x3fe3c6db0f1d304d              # double 0.61802437736469928
	.quad	0x3fe717441ba1ae4a              # double 0.72159009358205961
	.quad	0x3fd71742d3f32e12              # double 0.3607947416137175
	.quad	0x3fed662a8cf4a9e6              # double 0.91872146158612789
	.quad	0x3fb1054c2b0f58a8              # double 0.066487083923990498
	.quad	0x3fa992156574a8e0              # double 0.049942654261330821
	.quad	0x3fe65c1462c55e24              # double 0.69874018946842797
	.quad	0x3fd527735670513e              # double 0.33053286973269624
	.quad	0x3fda60d535a0de08              # double 0.41216020810267695
	.quad	0x3fc952228455298c              # double 0.19781905614429396
	.quad	0x3fe1edaa4310b710              # double 0.5602618512982378
	.quad	0x3fd942b4b2a81ebe              # double 0.39469640204377388
	.quad	0x3fdece57c070300e              # double 0.48134416382595269
	.quad	0x3fb13deb561a41d8              # double 0.067351063271650857
	.quad	0x3fe17079a0340990              # double 0.54497987069798803
	.quad	0x3fc09998c5a666c0              # double 0.12968740130309264
	.quad	0x3fe53b05ae8fe6fa              # double 0.66345485777057367
	.quad	0x3fed5b44773034de              # double 0.91739104536977911
	.quad	0x3fdceee903363438              # double 0.45208192170759132
	.quad	0x3fe4cefaf6f7b19b              # double 0.65026615367746687
	.quad	0x3fde78f92cf795b0              # double 0.47613362685509752
	.quad	0x3fdb4707a6eee7c6              # double 0.42621032049248375
	.quad	0x3fc53ac7d83401ac              # double 0.16585634285730799
	.quad	0x3fd58a60c70f4e56              # double 0.336570925134969
	.quad	0x3fdc06816c656340              # double 0.43789706788588845
	.quad	0x3fc6d55b34bcf124              # double 0.17838611674404448
	.quad	0x3fe130f9be9b1841              # double 0.5372284624834337
	.quad	0x3fe0c3a1f821f97e              # double 0.52388094390316531
	.quad	0x3fdfec46834f28c0              # double 0.4987961084667738
	.quad	0x3fe6cd05617fb80b              # double 0.71252697985414792
	.quad	0x3fd8369fbc44276a              # double 0.37833398232816384
	.quad	0x3feff2b7d3cb4f2d              # double 0.99837867132234736
	.quad	0x3fe231080d58f9ef              # double 0.56848528487154038
	.quad	0x3fee777172860b1d              # double 0.95208046310321814
	.quad	0x3fe504d941a48b6e              # double 0.65684187718248466
	.quad	0x3fc9dbc8b73f9cd0              # double 0.20201977679901129
	.quad	0x3fea31e14da4cb92              # double 0.81858887829581506
	.quad	0x3fdd8c6f6509447c              # double 0.46169648043457534
	.quad	0x3fb304893f534880              # double 0.07428796573666041
	.quad	0x3fc4fa166d50a640              # double 0.16388206803940086
	.quad	0x3fe60c1e5223b626              # double 0.68897930186148382
	.quad	0x3fe71dbb864524b0              # double 0.72237945770861778
	.quad	0x3faab03e5fbe53f0              # double 0.05212588232749471
	.quad	0x3fd728f31467e724              # double 0.36187436096916969
	.quad	0x3fec589bf7e49db0              # double 0.88581655899627343
	.quad	0x3fdb2912982096e6              # double 0.42438187462026489
	.quad	0x3fc385abde968588              # double 0.15251682632974117
	.quad	0x3fedf454a9d6d880              # double 0.93607552692152751
	.quad	0x3fe3a05962217f7f              # double 0.61332387129003496
	.quad	0x3fbab5d88b7668a8              # double 0.10433724789473564
	.quad	0x3fec4d8d19c743ad              # double 0.8844666961177744
	.quad	0x3fcf9f37190d302c              # double 0.24704636309832162
	.quad	0x3fe052840a983ad0              # double 0.51007272786395141
	.quad	0x3fee0be2ecd7a58c              # double 0.93895097978854513
	.quad	0x3fef40053a25dd95              # double 0.97656499249471784
	.quad	0x3fe18c39992acd0c              # double 0.54836730876414341
	.quad	0x3fe9d0a011527ac7              # double 0.8067169512103981
	.quad	0x3fde8ba733d1ff0e              # double 0.47727375088287338
	.quad	0x3f73d2b50b36c380              # double 0.004839617922173356
	.quad	0x3fe1f434d16e7cb7              # double 0.5610603418789627
	.quad	0x3fcdd2cf8bd8a13c              # double 0.2329959328501533
	.quad	0x3fe95ec471644962              # double 0.7928182806665911
	.quad	0x3fe597f9c75f32bb              # double 0.6748017209989351
	.quad	0x3fe2a6876bd03ae5              # double 0.58282824570946146
	.quad	0x3fdccbd17216da84              # double 0.44994007245569656
	.quad	0x3f9c783e56974700              # double 0.027802442584124343
	.quad	0x3feae78ff39753a9              # double 0.84076688362494167
	.quad	0x3fe90249213415e3              # double 0.78152901158381061
	.quad	0x3febe0e3fa277ef2              # double 0.87120245798356977
	.quad	0x3fd38cad6e248e24              # double 0.30546127086765495
	.quad	0x3fd5e70aa7d426a2              # double 0.34222666158221149
	.quad	0x3fc7c4e1fb3ce1a0              # double 0.18569588439437457
	.quad	0x3fbd11af8bfa5610              # double 0.11355111281803709
	.quad	0x3fe164800f26092b              # double 0.5435180946226742
	.quad	0x3fcea3d2d0d4618c              # double 0.23937449642904729
	.quad	0x3fcb323f2207c430              # double 0.21247090493810239
	.quad	0x3fe6fb03edaa8d92              # double 0.71814152163681144
	.quad	0x3fe1184b8afd0157              # double 0.53421570917275119
	.quad	0x3fe85048598bad90              # double 0.75980012406709996
	.quad	0x3fe7f0fd5f533562              # double 0.74816769235773628
	.quad	0x3fd153b03d540bde              # double 0.27073293675510779
	.quad	0x3fd933367ebd6eca              # double 0.39375078560781829
	.quad	0x3fef811bc320248c              # double 0.98451030836544495
	.quad	0x3fe8c4665b6cce91              # double 0.77397458893251969
	.quad	0x3feedf82fcc977a1              # double 0.96478413937051155
	.quad	0x3fbe86e0f916bcd8              # double 0.11924558717031475
	.quad	0x3feeac795cb1f3a5              # double 0.95855396370426559
	.quad	0x3fd0cac91087d516              # double 0.26237703909221588
	.quad	0x3fdae8f6def6e444              # double 0.42046901487225719
	.quad	0x3fe43b629b6c7388              # double 0.63224916797808905
	.quad	0x3fe29b12a3695e52              # double 0.58142978588416327
	.quad	0x3fe5e73a5f485284              # double 0.68447607622017914
	.quad	0x3fd493bbaac3fcb4              # double 0.32151691128087667
	.quad	0x3fd8357e2d3a40c0              # double 0.37826494614365558
	.quad	0x3fed36a880e5e4e7              # double 0.91292214560885732
	.quad	0x3fee2b9780c02443              # double 0.94282126566498226
	.quad	0x3fed3826757297b9              # double 0.91310427607526556
	.quad	0x3feb361f6fc3a339              # double 0.85035678700396666
	.quad	0x3fc7b7d543cf7df4              # double 0.18529763995228132
	.quad	0x3fcafce641c78358              # double 0.2108428784549925
	.quad	0x3fe42923724fb9a3              # double 0.63002178503466089
	.quad	0x3fdf80816fa5e30a              # double 0.49221835997700281
	.quad	0x3fd9dff878f2e3c6              # double 0.40429508029370387
	.quad	0x3fef6fda6954ebf2              # double 0.98240395138361536
	.quad	0x3fdbe8c64bf7ed5a              # double 0.43608243387980894
	.quad	0x3fddedfc5996ebd8              # double 0.4676504969499411
	.quad	0x3feb02628b0a9cbc              # double 0.84404112965139388
	.quad	0x3fea476383bae3ae              # double 0.82121444443247582
	.quad	0x3fdc1b61e394c72a              # double 0.43917128777239844
	.quad	0x3f93aefe467f1200              # double 0.019222233822590695
	.quad	0x3fdde9e2071282b2              # double 0.46740008059172589
	.quad	0x3fe4bb531fe9052f              # double 0.64786678535907594
	.quad	0x3fec95000c7d30fc              # double 0.89318849982512871
	.quad	0x3fd01a11fe22c9be              # double 0.25159120386083689
	.quad	0x3fd8131b9767c89a              # double 0.37616624627765705
	.quad	0x3fd96895423f8d60              # double 0.39700824231677778
	.quad	0x3fcbbfd40b412da4              # double 0.21679163503209253
	.quad	0x3fe5de9bb2bf9a98              # double 0.68342385207945977
	.quad	0x3fe6226c98d9e7bb              # double 0.6917021737456176
	.quad	0x3fdb6abe9c7e5476              # double 0.42839017183843653
	.quad	0x3fd66fec9f3c7f92              # double 0.35058131742879894
	.quad	0x3fe0e3add3909f46              # double 0.52779284783626035
	.quad	0x3fc8cb29a5987494              # double 0.19370003305167371
	.quad	0x3f9fb4eb16166d80              # double 0.030963586066361071
	.quad	0x3f79dff16be85e00              # double 0.0063170843627839979
	.quad	0x3fdd70b8daf5050c              # double 0.46000501043825248
	.quad	0x3fdfa70c35a7288a              # double 0.49457078208491423
	.quad	0x3fe59d366ba79991              # double 0.67544098879152348
	.quad	0x3fe0f1b801e4ad35              # double 0.5295066868760957
	.quad	0x3feaa1efc6e6ba3c              # double 0.83226765487581344
	.quad	0x3fe59919c5ace3eb              # double 0.674939046940492
	.quad	0x3fa93c227f35adc0              # double 0.049286916759992305
	.quad	0x3fe435c126e0886f              # double 0.63156182854824106
	.quad	0x3fb3d030796e01c8              # double 0.077395467420507846
	.quad	0x3fd369842c3ca58c              # double 0.30331520385751598
	.quad	0x3febc406ea5c672b              # double 0.86767907880423445
	.quad	0x3fe663b63951f1bd              # double 0.69967185206728966
	.quad	0x3fef0379d634a2db              # double 0.96917430722268294
	.quad	0x3febdad9eca5231a              # double 0.87046524257411595
	.quad	0x3fd081521a670370              # double 0.25789311006888394
	.quad	0x3fd1241d1b01e50e              # double 0.2678292049163965
	.quad	0x3f97c5f624f2fa80              # double 0.023216100697704523
	.quad	0x3fdb65cc812db160              # double 0.42808830847822854
	.quad	0x3fe52c4796a401f7              # double 0.6616552297783177
	.quad	0x3fdf71382507a44c              # double 0.4912853585834156
	.quad	0x3fe8e19dcb99b305              # double 0.77754106298161274
	.quad	0x3fd81c0e37bba49a              # double 0.37671237414049019
	.quad	0x3fefd0af14870f2d              # double 0.99422410973827413
	.quad	0x3fc7a5043b109428              # double 0.1847234047319557
	.quad	0x3fefa32d5474f4fb              # double 0.98866907592278552
	.quad	0x3fc564da52970408              # double 0.16714028389654367
	.quad	0x3fe580af77391031              # double 0.67195866857264808
	.quad	0x3fe008009000a93a              # double 0.5009768307257112
	.quad	0x3fec12c39e39a6a0              # double 0.87729054358824853
	.quad	0x3fbe4db028562c90              # double 0.11837292656689358
	.quad	0x3fcc68df3a25e54c              # double 0.22195043887385635
	.quad	0x3fdcda36957fadc6              # double 0.45081867789732788
	.quad	0x3fdaee0dc9d58c7c              # double 0.42077965460175171
	.quad	0x3fe65bd639249eac              # double 0.69871054802657317
	.quad	0x3fb06c45fcd9ab18              # double 0.0641521208105299
	.quad	0x3fe9d1addc7bcdc8              # double 0.80684559882359341
	.quad	0x3febf3b993c3fd0a              # double 0.87350157604660805
	.quad	0x3fd5cdeff27b49ce              # double 0.34069441490023855
	.quad	0x3fdc7f57a68de34a              # double 0.44527236237586421
	.quad	0x3fe666ac3e0f75a5              # double 0.70003330346269321
	.quad	0x3fb9a9ecea484c08              # double 0.10024910659585384
	.quad	0x3fcec4f604ccb0a8              # double 0.2403857730327037
	.quad	0x3fd33ff334786a24              # double 0.30077819942531137
	.quad	0x3fea633334e59026              # double 0.82460937816040736
	.quad	0x3fef9ae7978ffc89              # double 0.98765925981560187
	.quad	0x3fdcbf4d45a84040              # double 0.44917613794769196
	.quad	0x3fe386a57529827a              # double 0.6101863182376086
	.quad	0x3fe2a456dc8a4cb0              # double 0.58256095003380004
	.quad	0x3fe9fa493f03137f              # double 0.81180250460657521
	.quad	0x3fd263a013bb21c4              # double 0.28733064581731704
	.quad	0x3fed439d053ec3f7              # double 0.91450358414124266
	.quad	0x3fed6ce1db9c574a              # double 0.91954129116741368
	.quad	0x3fdcfd5ba2fd2d4a              # double 0.45296374241725756
	.quad	0x3fd8defaf25fdcc6              # double 0.38860963506108381
	.quad	0x3fd956329dccfddc              # double 0.39588609132985453
	.quad	0x3fb47cc70589d750              # double 0.080028952457579238
	.quad	0x3fe7003264258661              # double 0.71877402839545479
	.quad	0x3fe6d6704f790b5c              # double 0.71367660066639926
	.quad	0x3fcf9235096708ec              # double 0.24664938887696708
	.quad	0x3fd710d174085ac2              # double 0.36040150004684446
	.quad	0x3fd15a5411baa034              # double 0.27113820773456898
	.quad	0x3fcb4438192de6d4              # double 0.21301938275774168
	.quad	0x3fecb28a93a93b8c              # double 0.89679459419299822
	.quad	0x3feed2051b77282d              # double 0.96313720096919086
	.quad	0x3fb9167499deffb8              # double 0.097998893324073744
	.quad	0x3fe5cda369bacc20              # double 0.68135233545615748
	.quad	0x3fd7f9354a91fe12              # double 0.37458545953993039
	.quad	0x3f8aa7b26718f2c0              # double 0.013015168925556764
	.quad	0x3fbef46d070b8e90              # double 0.12091714307785595
	.quad	0x3fbd34371e1a2ab0              # double 0.11407799229543047
	.quad	0x3fee65ed945968d0              # double 0.9499423882910154
	.quad	0x3fd19329c738b134              # double 0.27460712866993053
	.quad	0x3fc191d110be8d2c              # double 0.13726247136683278
	.quad	0x3fce223081645304              # double 0.2354183799549433
	.quad	0x3fe185be3e0a7d21              # double 0.5475760661828738
	.quad	0x3fec18a4b90c1053              # double 0.87800823347107337
	.quad	0x3fd5f3264e6751ec              # double 0.34296567589379268
	.quad	0x3fe5da532badda3e              # double 0.68290098696781576
	.quad	0x3fde76b6901e9608              # double 0.47599567484061867
	.quad	0x3fea758c05f2ab19              # double 0.82684899484351881
	.quad	0x3fe60a239511ff1d              # double 0.68873767009060638
	.quad	0x3fcfbe4c229377f4              # double 0.24799491585048339
	.quad	0x3fe04bd7e81b8ec1              # double 0.50925822576069646
	.quad	0x3fed281fc5d71555              # double 0.91114796295793588
	.quad	0x3fa7b5649f3edf30              # double 0.046305794181021986
	.quad	0x3fe128953f8a63c4              # double 0.53620397959013433
	.quad	0x3f8da872f4dd2680              # double 0.014481447312977069
	.quad	0x3fd46f12e3a46e98              # double 0.31927940588659842
	.quad	0x3fd07226c5808802              # double 0.25696725165664713
	.quad	0x3fe36857ab4b3a75              # double 0.60648711639244246
	.quad	0x3fef911bf7c90dd4              # double 0.98646353145198384
	.quad	0x3fe9af09fd40a90f              # double 0.80261706794161281
	.quad	0x3fde6271eb7c11c8              # double 0.47475860592410557
	.quad	0x3fdcb3eae870a4ee              # double 0.44848129939289449
	.quad	0x3fe550e29179d58f              # double 0.66612366116776112
	.quad	0x3fe28b11d1665aaa              # double 0.57947626970675015
	.quad	0x3fc6564645e7c360              # double 0.17450788892122215
	.quad	0x3fd80eb747b41f90              # double 0.3758981895666631
	.quad	0x3fce15fd12732d24              # double 0.23504603768228904
	.quad	0x3fc359efcf4f0f90              # double 0.15118215200902485
	.quad	0x3fb08daffeb02b10              # double 0.064661979369855738
	.quad	0x3fccd8e612119958              # double 0.22536922342551224
	.quad	0x3fd15a979420edd6              # double 0.27115430322348055
	.quad	0x3feeeae245c1a453              # double 0.96617234825419939
	.quad	0x3fd663f66c66af46              # double 0.34985123239561167
	.quad	0x3fd7c9afc82c7f8a              # double 0.3716849760839912
	.quad	0x3fea714b4cd401af              # double 0.82632985120294744
	.quad	0x3fc72215d5c86894              # double 0.18072770060172572
	.quad	0x3fa4dba39c98deb0              # double 0.040738213411200319
	.quad	0x3fe3a95ee571c524              # double 0.61442513287889655
	.quad	0x3fdbfc7377c4921e              # double 0.43728338905410336
	.quad	0x3fde44c93ae35918              # double 0.47294836760319603
	.quad	0x3fef764ae010ad93              # double 0.98319000017856905
	.quad	0x3fca7a887a8317b4              # double 0.20686441404376199
	.quad	0x3fe70b3ecaba9574              # double 0.72012271495320457
	.quad	0x3fd55a70f0e86fbe              # double 0.33364509130637632
	.quad	0x3fe7757eac97e103              # double 0.73309262952446408
	.quad	0x3fe007841cd6eabb              # double 0.50091748841017336
	.quad	0x3fe9deedf37b5868              # double 0.80846307330172085
	.quad	0x3fcb22c5b534ef24              # double 0.21199866626727115
	.quad	0x3fd67d193a103c9c              # double 0.35138540907150584
	.quad	0x3fe92dedcf8c48fc              # double 0.78685656105724843
	.quad	0x3fe0d66c216b481c              # double 0.5261746075359528
	.quad	0x3fea9727213005fe              # double 0.83095127565337612
	.quad	0x3fd317e89a8fa9c4              # double 0.29833426565042154
	.quad	0x3fd3fd2e1b99e6f6              # double 0.3123278874914911
	.quad	0x3fe8e300c321c6c0              # double 0.77771032439905952
	.quad	0x3fca8f5593fbdda0              # double 0.20749921537183713
	.quad	0x3fec80cf334a47a8              # double 0.89072380082710811
	.quad	0x3fc555795fd25554              # double 0.16667096308507701
	.quad	0x3fe6496af0f04eb9              # double 0.69646212633457261
	.quad	0x3feb728a04b9505a              # double 0.85773182795174852
	.quad	0x3fc3d4867dd10538              # double 0.15492325919516658
	.quad	0x3fd16a3aac3343b2              # double 0.27210871521406965
	.quad	0x3fca5e0b6c071a34              # double 0.2059950139502732
	.quad	0x3fe0525e795b6f95              # double 0.51005481436321765
	.quad	0x3fd50c9e37cad4b0              # double 0.32889514397113384
	.quad	0x3fadcd8b2c6ac6c0              # double 0.05820879857254857
	.quad	0x3fed5e8f9a92f87c              # double 0.91779308500532819
	.quad	0x3fd9700cdaa56a30              # double 0.397464002153046
	.quad	0x3f9cc1ee0d882c40              # double 0.028083533836291474
	.quad	0x3fe3242bc6effc5e              # double 0.59816540579766886
	.quad	0x3fbe4414a2700930              # double 0.11822632756960583
	.quad	0x3fe38e2915c9ce60              # double 0.61110357528236747
	.quad	0x3fea6acafdb1ac92              # double 0.82553624677292903
	.quad	0x3fcc1548a467c6e8              # double 0.219399528766693
	.quad	0x3fed59429f7d4773              # double 0.91714602613704554
	.quad	0x3fb45a60fed25d98              # double 0.079504072391833325
	.quad	0x3fe36871274fe455              # double 0.60649926832332801
	.quad	0x3fa76045bf9c4db0              # double 0.045656375541649807
	.quad	0x3fe62815f44066e2              # double 0.69239328103432407
	.quad	0x3fee4b126e12a7e9              # double 0.9466640615330536
	.quad	0x3fe36e91b245b456              # double 0.60724720782094255
	.quad	0x3feaf46a5621e554              # double 0.84233586142287686
	.quad	0x3fdbf3da2530b606              # double 0.43675855285513909
	.quad	0x3fd8fb37d52855fe              # double 0.39033313575905015
	.quad	0x3feb465fd5a7f210              # double 0.85234061937041083
	.quad	0x3fe91820b7c14606              # double 0.78419528855937481
	.quad	0x3fe81a087fab4e02              # double 0.75317788062460544
	.quad	0x3fd653b17365a026              # double 0.34885822552905876
	.quad	0x3fe1d62d146ceee4              # double 0.55739454259261523
	.quad	0x3fea9b7778f89ec4              # double 0.83147786738569395
	.quad	0x3fe700524bfae10d              # double 0.71878924217074458
	.quad	0x3fc0a6a29411c514              # double 0.13008529882385089
	.quad	0x3fcc93acffc70644              # double 0.22325670708782941
	.quad	0x3fe07204a234c9df              # double 0.51391822510623431
	.quad	0x3fef896272e12106              # double 0.98552057683357996
	.quad	0x3fd466756d0bb6fa              # double 0.31875358246803354
	.quad	0x3fe5052864b39a1c              # double 0.65687961262011951
	.quad	0x3fed4a851ff272cc              # double 0.9153466819730851
	.quad	0x3fc677d7102c0c74              # double 0.17553222932483303
	.quad	0x3fe30a5b74e080cf              # double 0.59501431300670926
	.quad	0x3fd28e7d3a865a52              # double 0.28994684901536971
	.quad	0x3fed85d679fa21fc              # double 0.92258762191437382
	.quad	0x3fe774c3020c9df2              # double 0.73300314331294047
	.quad	0x3fe7d62d968a171d              # double 0.74489478494863059
	.quad	0x3fea692be74777d1              # double 0.82533831760133058
	.quad	0x3fe9c039369bd543              # double 0.80471478143469033
	.quad	0x3fbc35258591ba38              # double 0.11018595229118311
	.quad	0x3fe7c1cdbca75523              # double 0.74240767332472435
	.quad	0x3fef63ad74d9c5a2              # double 0.98091767141720632
	.quad	0x3fe81981d47386a0              # double 0.75311366552724123
	.quad	0x3fc97e31075d4efc              # double 0.19916355952829423
	.quad	0x3fd00c3800097574              # double 0.25074577334984061
	.quad	0x3fe5ddb0495765ff              # double 0.68331159901134686
	.quad	0x3fd2ddb51745f0be              # double 0.29478194496892829
	.quad	0x3fe26982de4a7537              # double 0.57537978569204185
	.quad	0x3fefdb6761262ff9              # double 0.99553269361922425
	.quad	0x3fdfda2aee8f2594              # double 0.49769089981836001
	.quad	0x3f9da2df4bf8e1a0              # double 0.028941620838141113
	.quad	0x3fe5a83f5fe04840              # double 0.67678803182412395
	.quad	0x3fed7c52ee807f66              # double 0.92142626364146163
	.quad	0x3fe81550755846ed              # double 0.75260184210693881
	.quad	0x3fb7fd7ae8ef1e10              # double 0.093711549633660462
	.quad	0x3fed975ffac27317              # double 0.92472838379362343
	.quad	0x3fda672d4bd31648              # double 0.41254742054693283
	.quad	0x3fefe8cfd49d53d5              # double 0.99716941381722767
	.quad	0x3fe5f57b3a7e5648              # double 0.68621598648560056
	.quad	0x3fead4d778949a1b              # double 0.83848165083765325
	.quad	0x3fd5740f17ba6d00              # double 0.33520867650231878
	.quad	0x3fc4041e60d3026c              # double 0.15637569167849408
	.quad	0x3fef2aed4c7ca247              # double 0.97399010599935642
	.quad	0x3fd076422c1bc968              # double 0.25721792514300157
	.quad	0x3fc366d357c6eb20              # double 0.15157548700320778
	.quad	0x3fcf719c0e07ba44              # double 0.24565458951060937
	.quad	0x3feb893bf8731f71              # double 0.86050222897845974
	.quad	0x3fe738b22062b574              # double 0.72567087483700599
	.quad	0x3fd9bd6bc1110b20              # double 0.4021863351264745
	.quad	0x3f93115d3ba98ec0              # double 0.018620926634311585
	.quad	0x3fe7ffcfd6a0fe4e              # double 0.74997703475669097
	.quad	0x3fe9a86641b202ff              # double 0.80180657225727703
	.quad	0x3fe7eb2b32eb3c51              # double 0.74745712227912453
	.quad	0x3fccf1c4dc9bf760              # double 0.22612820407806122
	.quad	0x3fd1dc243b409f34              # double 0.27906137262697261
	.quad	0x3fe82806f0f4045c              # double 0.75488612233324259
	.quad	0x3fd26ccf98d91370              # double 0.28789129187162299
	.quad	0x3fbd3afedab24338              # double 0.11418145026460713
	.quad	0x3fe678796cdf8abe              # double 0.70220633758830053
	.quad	0x3fe0a62c8e2adaf3              # double 0.52028491751738526
	.quad	0x3fe7cbdb8a36fb3f              # double 0.74363495822021963
	.quad	0x3fbc2b76d47def18              # double 0.11003821075240372
	.quad	0x3fcd022ca9ee2ae8              # double 0.22662885949497213
	.quad	0x3fc8eb7dbbd17404              # double 0.1946866194802227
	.quad	0x3fe5c5676a6a3490              # double 0.68034716400292616
	.quad	0x3fec19b7f9d037b5              # double 0.8781394843260758
	.quad	0x3fed9923f988d13a              # double 0.92494391190715608
	.quad	0x3fdbfd7dcbee9344              # double 0.43734688678005207
	.quad	0x3fdee38aea842720              # double 0.48263810064291768
	.quad	0x3fd0a101cfb8484e              # double 0.25982709202901766
	.quad	0x3fb2fa9d55aa2c80              # double 0.074136575140231641
	.quad	0x3fdac16a6f07e6d8              # double 0.41805516093118689
	.quad	0x3fed667a091af0d0              # double 0.91875936296812633
	.quad	0x3fca8a1bc7d0f0b4              # double 0.20733973747872414
	.quad	0x3fe9aaa530e6c87a              # double 0.80208072234223882
	.quad	0x3fe3a8f871ae1fc4              # double 0.6143762798610557
	.quad	0x3fe54d2fea901569              # double 0.66567226231624688
	.quad	0x3fd4fdfa1b463876              # double 0.32800152457719578
	.quad	0x3fd852a58783af06              # double 0.38004434808566179
	.quad	0x3fe47d6a5d4b6e8a              # double 0.64030950757610694
	.quad	0x3fd4393d5a6d8f68              # double 0.31599363165718453
	.quad	0x3fb6d32403fb8150              # double 0.089159251186633925
	.quad	0x3fbbc610451c4330              # double 0.10849095999971037
	.quad	0x3fb235372b8479e0              # double 0.071124504207979111
	.quad	0x3fe0b4413cf5df51              # double 0.52200376421294881
	.quad	0x3fe14c9e94cc566b              # double 0.54060296117922968
	.quad	0x3fb4aa410613ece0              # double 0.080722869857641211
	.quad	0x3fe3c0b6c081cd89              # double 0.61727464293510181
	.quad	0x3fe82aeb2f95590d              # double 0.75523909848814841
	.quad	0x3fc20bc0414ba914              # double 0.140983611948578
	.quad	0x3fe12b7a7794c22f              # double 0.5365574203079343
	.quad	0x3fe957398f16d8f8              # double 0.79189756343001161
	.quad	0x3feac051c075be09              # double 0.83597648229437127
	.quad	0x3fdb43b4bb4cfea4              # double 0.42600744525041478
	.quad	0x3f723562bdfc6b00              # double 0.004445443831879059
	.quad	0x3fc6bf3e200ff398              # double 0.17771126332800402
	.quad	0x3fdd65ff85a78b08              # double 0.45935047199434154
	.quad	0x3feb9a191852b031              # double 0.86256079435907484
	.quad	0x3feeb7209146f2dc              # double 0.95985439657632865
	.quad	0x3fe177d9c77ccef7              # double 0.54588021242531581
	.quad	0x3fe4bdf0a7c5c428              # double 0.64818604248114742
	.quad	0x3fabf00973dde7c0              # double 0.054565711397074335
	.quad	0x3fc58ab503651eb8              # double 0.16829550424357875
	.quad	0x3fe4922c349b8f97              # double 0.6428433444493632
	.quad	0x3fea5c756525c11c              # double 0.82378644709936876
	.quad	0x3fcd323d58781af0              # double 0.22809569186957601
	.quad	0x3fc6153160dcdfa0              # double 0.17252175550106319
	.quad	0x3fdefcc843e01464              # double 0.48417860630462983
	.quad	0x3fd77ad8100d293a              # double 0.36687280242462672
	.quad	0x3fcfa0e0fa2d9de8              # double 0.24709713187915772
	.quad	0x3fd951d1bd792e32              # double 0.39561885360010074
	.quad	0x3fc737d671a3bc00              # double 0.18139153050239543
	.quad	0x3f9fd23c1c33ad60              # double 0.031075419637017432
	.quad	0x3fe0d20d176df9de              # double 0.52564100814907611
	.quad	0x3fe0c530c13818ca              # double 0.52407109964476573
	.quad	0x3fdb540efe04d0f2              # double 0.42700552755856258
	.quad	0x3fdb4aeebb0041be              # double 0.42644851934258188
	.quad	0x3fbb270101ba79d8              # double 0.10606390278051181
	.quad	0x3fd200579f50f86e              # double 0.2812708907912399
	.quad	0x3fb9f1aeaca18d10              # double 0.10134402956605393
	.quad	0x3fd696d7bea14e4e              # double 0.35295671097012338
	.quad	0x3fe6e37ae6cc35bb              # double 0.71526856496500757
	.quad	0x3fd43e863199e724              # double 0.31631617397180123
	.quad	0x3fed1301182c54d4              # double 0.90856985780069488
	.quad	0x3fd97b4621bac55c              # double 0.39814904493240078
	.quad	0x3fef53b626f175c9              # double 0.97896869283766208
	.quad	0x3fd55c007e8a35de              # double 0.33374035222445098
	.quad	0x3fc5a6cef19bb664              # double 0.16915308759000702
	.quad	0x3fe9acf0bfe2ff76              # double 0.80236089208481931
	.quad	0x3fe3179333ecf9e7              # double 0.59662780896888712
	.quad	0x3fee066988a3ba9d              # double 0.93828274428763658
	.quad	0x3feb707f727adae0              # double 0.85748264655452643
	.quad	0x3fbdda95fd2d1950              # double 0.11661660605486657
	.quad	0x3fab0e1d9432f4f0              # double 0.052842068043426837
	.quad	0x3fe05fcfad3edfdf              # double 0.51169570767433104
	.quad	0x3fe282a50167e691              # double 0.57844782137472539
	.quad	0x3fcc142877a0ba70              # double 0.21936517564013824
	.quad	0x3fefbf0bf500b9dc              # double 0.99207113124958423
	.quad	0x3fc39e44010d0958              # double 0.15326738406481399
	.quad	0x3fca3baca9c318c4              # double 0.20494612015881419
	.quad	0x3fece66321c66a34              # double 0.90312344166461011
	.quad	0x3fef781cad27e466              # double 0.98341211146829433
	.quad	0x3fb53b91f20fd170              # double 0.082940217587582187
	.quad	0x3fc4cef9807c4e40              # double 0.16256636403760361
	.quad	0x3fde0375aa4ca32c              # double 0.46896115904614777
	.quad	0x3fe7fd1cc9d314c3              # double 0.74964751643042182
	.quad	0x3fd713daf58822f6              # double 0.36058687188828686
	.quad	0x3fb2d54df9892df0              # double 0.073567269727554452
	.quad	0x3fc679cd9efb8dcc              # double 0.17559213888954017
	.quad	0x3fac026420a63360              # double 0.054705742822170889
	.quad	0x3fe4ed47010fea12              # double 0.65396452147916961
	.quad	0x3feca6f409831677              # double 0.89538003785919684
	.quad	0x3fec3fa99f8ad725              # double 0.88277131233801198
	.quad	0x3fe842fdb0c40afa              # double 0.75817760967797132
	.quad	0x3fe8bedb67945f68              # double 0.77329797964465019
	.quad	0x3fef0286236a032c              # double 0.96905810276812109
	.quad	0x3fd5c91ad294ae80              # double 0.34039946140794797
	.quad	0x3fd0613b431852a0              # double 0.25593453933951515
	.quad	0x3feda003db069bfb              # double 0.92578308847885127
	.quad	0x3fee4fa32bb04e59              # double 0.94722136052082384
	.quad	0x3fd33d1eb40cda8a              # double 0.30060546477344785
	.quad	0x3fe6ce4ca4fe2fb7              # double 0.71268303132227728
	.quad	0x3fe57963c920ee87              # double 0.6710680893224471
	.quad	0x3fe7e7c938fa2406              # double 0.74704419258444044
	.quad	0x3fceee373fadfcec              # double 0.24164476975781868
	.quad	0x3fd6176c7205687a              # double 0.34517966399074107
	.quad	0x3fe19fd25e520cd8              # double 0.55075949117636025
	.quad	0x3fef43dfbd44a7db              # double 0.97703539816324835
	.quad	0x3fe502df694a2ad5              # double 0.65660067142865819
	.quad	0x3f9d418d50140c20              # double 0.028570373547165073
	.quad	0x3fea3edc601dff3e              # double 0.8201734425819962
	.quad	0x3fecac6ef8e9ff28              # double 0.89604900947594945
	.quad	0x3fab113390ff16e0              # double 0.052865611505280574
	.quad	0x3fd4070697a480d0              # double 0.31292881783339244
	.quad	0x3fefc1d0865dc2da              # double 0.99240900271805832
	.quad	0x3fd42ab07072e9c8              # double 0.31510554295860205
	.quad	0x3feff0788272a348              # double 0.99810433843695367
	.quad	0x3fe6a728d566a8b0              # double 0.70790521316418697
	.quad	0x3fed913f17d3cc7b              # double 0.92398028043534397
	.quad	0x3fab968036c5b570              # double 0.05388260525328803
	.quad	0x3fe4b0cea1cb500b              # double 0.64658290481975322
	.quad	0x3fc09183ca07f5b0              # double 0.12944075932311483
	.quad	0x3fd591abe39090be              # double 0.33701607916942666
	.quad	0x3fec1e24f5f90b04              # double 0.8786797336727834
	.quad	0x3fe9ba5a8b489052              # double 0.8039982529048848
	.quad	0x3febb92b28d4d007              # double 0.86635358786452421
	.quad	0x3fe7ab6b55ee3223              # double 0.7396752050713683
	.quad	0x3feded3ce5be48bb              # double 0.93520970222223043
	.quad	0x3fd3cab417e14578              # double 0.30924703914668994
	.quad	0x3fdc232f1fb67348              # double 0.43964746567671797
	.quad	0x3fbcffedcec52f08              # double 0.11328016565419941
	.quad	0x3fd3e42c3b8aa546              # double 0.31080156149490212
	.quad	0x3fef645ef084f298              # double 0.98100230194502824
	.quad	0x3fe29a0d2cf5510c              # double 0.58130511074935631
	.quad	0x3fc95ee7e30b86e0              # double 0.19820879541571568
	.quad	0x3fb3c81a1d16eef8              # double 0.077272064306210697
	.quad	0x3feb658a4336bb86              # double 0.85614503028578848
	.quad	0x3fe587eff346df07              # double 0.67284390940673766
	.quad	0x3f8fb4e36fce9380              # double 0.015481736039711924
	.quad	0x3fe7f181dd54f297              # double 0.74823086956856144
	.quad	0x3fe09e048027e56f              # double 0.51928925543249516
	.quad	0x3fd22328b8efb6de              # double 0.28339593944734343
	.quad	0x3fb177e585d04240              # double 0.068235726517976936
	.quad	0x3fe5a0bdbe9dc58d              # double 0.67587172727341882
	.quad	0x3fec1220cbcd0909              # double 0.8772129040228559
	.quad	0x3fca9df870a5e214              # double 0.20794587612523741
	.quad	0x3feab7718c0420e0              # double 0.83489301058673603
	.quad	0x3fe6ebf19224f0d1              # double 0.71630171340759763
	.quad	0x3fec49254878070f              # double 0.88392891077111979
	.quad	0x3fe28c9b158e5eb7              # double 0.57966379366094756
	.quad	0x3f54455aedebfc00              # double 0.0012372386915442402
	.quad	0x3fdaeec6c633aca4              # double 0.42082375865602217
	.quad	0x3fa9f47b3d233940              # double 0.050693370068631172
	.quad	0x3fe84a02d3bd2ce7              # double 0.75903455119387508
	.quad	0x3f8f6a1c22d7b400              # double 0.015339107335387681
	.quad	0x3fc8a0ba8bf18180              # double 0.19240505059407198
	.quad	0x3f90dbe44a12d8c0              # double 0.016463820477576219
	.quad	0x3fdcf97c8be13ec2              # double 0.45272744808333354
	.quad	0x3fe9d814dc267c98              # double 0.80762713430512445
	.quad	0x3fe4e86a37243fd7              # double 0.65337095994800165
	.quad	0x3fefbc247d50d38b              # double 0.99171661830642798
	.quad	0x3fe8122c7651c16c              # double 0.75221846684693849
	.quad	0x3fd12cf38d3e0d16              # double 0.26836861413194535
	.quad	0x3fdfe1da2063e91e              # double 0.49815991557228922
	.quad	0x3fe116e92a5a8e68              # double 0.53404672882284121
	.quad	0x3fd8091bdaae2d6c              # double 0.3755559573698608
	.quad	0x3fe5fecd9c276eff              # double 0.68735390185199197
	.quad	0x3fbedacb1b8c8860              # double 0.12052602217275554
	.quad	0x3fc5601290db475c              # double 0.166994400721303
	.quad	0x3fe4e920970d6404              # double 0.6534579229584101
	.quad	0x3fe449e42781bdc2              # double 0.63401992527172291
	.quad	0x3fa8f845955964c0              # double 0.048769163590529185
	.quad	0x3fd4d8b1d647415c              # double 0.32572599340075725
	.quad	0x3fe6228e7b7dea85              # double 0.69171833152297835
	.quad	0x3fd07978eaf7b792              # double 0.2574140829664141
	.quad	0x3fe27d184453f69a              # double 0.57777036042508034
	.quad	0x3fe9102e7f75ae07              # double 0.78322529692144449
	.quad	0x3fdf00c42fd4761a              # double 0.48442177458659474
	.quad	0x3fece253ebb9c47d              # double 0.90262790718237762
	.quad	0x3fe46ab692520189              # double 0.63802651003065691
	.quad	0x3fe78d6cc9c21e4a              # double 0.73601378827965758
	.quad	0x3fcf971e41f874d4              # double 0.24679926129548468
	.quad	0x3feee2dacaa6a395              # double 0.96519221859226667
	.quad	0x3fa0dcb01d0dead0              # double 0.032933715387988394
	.quad	0x3fe25080fe3405d9              # double 0.5723271336466339
	.quad	0x3fe77af70b9a2f93              # double 0.73376037851402243
	.quad	0x3feceb17ce415a7b              # double 0.90369787487254827
	.quad	0x3fe77f0d4a8e6180              # double 0.73425926744225478
	.quad	0x3fe1e42b83323300              # double 0.55910277961956467
	.quad	0x3fec2fa151ee158a              # double 0.88081422807651788
	.quad	0x3fe3a95d27686781              # double 0.61442430207101506
	.quad	0x3fddde5ceed0dd06              # double 0.46669696161139063
	.quad	0x3feac142ccd39420              # double 0.83609142308398887
	.quad	0x3f923531b24b66a0              # double 0.017781044490084441
	.quad	0x3fe3a8008c09b136              # double 0.61425807334084115
	.quad	0x3feedd9152d2e218              # double 0.96454683472171875
	.quad	0x3fec4481f5457a3b              # double 0.88336275009698484
	.quad	0x3fe7d62f5d0412d2              # double 0.74489563147707316
	.quad	0x3fdb891a7d3a4014              # double 0.43024313191654184
	.quad	0x3fd8cd01e0b98226              # double 0.38751265474096142
	.quad	0x3fe5ae7b56e73feb              # double 0.67754904721550469
	.quad	0x3fe92fe215a7ff6c              # double 0.78709511022314648
	.quad	0x3fef2231e9eb57a1              # double 0.97292419135441232
	.quad	0x3fd71ead7ff49354              # double 0.36124742026941203
	.quad	0x3fd2b77125e207f6              # double 0.29244641017442008
	.quad	0x3fe794f6bba0b984              # double 0.73693405767498676
	.quad	0x3fcb1978eec87ee0              # double 0.21171485575995685
	.quad	0x3fc59405c81c5f44              # double 0.16857979079281382
	.quad	0x3fec90a4ca093e99              # double 0.89265670261552821
	.quad	0x3fd0b25d2faeed72              # double 0.26088647514890007
	.quad	0x3fe9c9c3577bbe73              # double 0.80587927900883327
	.quad	0x3fe348389806e4be              # double 0.60256604855307905
	.quad	0x3fa096cef1fac270              # double 0.032400576628224154
	.quad	0x3fe5bf8160484cef              # double 0.67962712102089806
	.quad	0x3fe687be51c37be4              # double 0.7040702435441486
	.quad	0x3fca0d43a87c0be8              # double 0.20352979399476046
	.quad	0x3fd8c60f10b91998              # double 0.38708855279073751
	.quad	0x3fedbb696bdd9127              # double 0.92912741725425441
	.quad	0x3feaef9433dce880              # double 0.8417454731891354
	.quad	0x3fae5613fbc6cc60              # double 0.059250473484461663
	.quad	0x3fece933892aa7d7              # double 0.90346695700031432
	.quad	0x3fe7a441628f9687              # double 0.73880070924924801
	.quad	0x3fe1533de3ca9a88              # double 0.54141134729873475
	.quad	0x3fd853d70634518e              # double 0.38011718374152614
	.quad	0x3feb1a89fbb8e50e              # double 0.84698962368489261
	.quad	0x3fe529a79ad7653c              # double 0.66133480303248104
	.quad	0x3f909bb4655bde40              # double 0.016218966185048922
	.quad	0x3fed13159df0c182              # double 0.90857964370484035
	.quad	0x3feacaf2c4647645              # double 0.83727396352669159
	.quad	0x3fec8bc974e962f8              # double 0.89206383547124712
	.quad	0x3fec7f204d35199b              # double 0.8905183322865925
	.quad	0x3fe0ee8033149f8d              # double 0.52911386467620647
	.quad	0x3fea0fe0df6855f0              # double 0.81443828233994786
	.quad	0x3fc90d82efa50e20              # double 0.19572483731654788
	.quad	0x3febdc1c9c9b4a58              # double 0.87061911189295937
	.quad	0x3fc53f6b79e8e928              # double 0.16599791958453491
	.quad	0x3fade5d609f4d3a0              # double 0.058394135203719388
	.quad	0x3fd9f74435fbcf98              # double 0.40571694633330813
	.quad	0x3fe45851f7ec9d5b              # double 0.63578127310476462
	.quad	0x3fe1050de6ed5387              # double 0.53186698058071691
	.quad	0x3fe0be4f5c04294e              # double 0.52323120090412956
	.quad	0x3fed82dfcc06cf69              # double 0.92222585534044044
	.quad	0x3fe892b014e6e98f              # double 0.76790622789785512
	.quad	0x3fc36a57b3c5b1a4              # double 0.15168281820241447
	.quad	0x3fd307fae1ba4d56              # double 0.29736206096386775
	.quad	0x3fbad252d39d1f98              # double 0.1047717825541653
	.quad	0x3fdc32e60bf18338              # double 0.4406066052088593
	.quad	0x3fd81fea205449d4              # double 0.37694790990022153
	.quad	0x3fe1c65ef2b9f9f0              # double 0.55546519668115302
	.quad	0x3f909c7dcabadda0              # double 0.016221967219022582
	.quad	0x3fd940a84fdbb91c              # double 0.39457137869512038
	.quad	0x3fd1fcf11cdecd9c              # double 0.28106334514014875
	.quad	0x3feb8d8700d15067              # double 0.86102628860181774
	.quad	0x3fe52766a38d7f89              # double 0.66105968421833083
	.quad	0x3fe9ef13a04dff6b              # double 0.81043416318423789
	.quad	0x3fe4983e4da72810              # double 0.64358439604370865
	.quad	0x3f8eb40bafe8fa40              # double 0.014991847329949626
	.quad	0x3fdc478bb0f1c316              # double 0.44186680106854348
	.quad	0x3fca1128146f87e8              # double 0.20364857671580627
	.quad	0x3fed210dd045a823              # double 0.91028490713256749
	.quad	0x3f86eefc9b495b40              # double 0.011198018540353183
	.quad	0x3fa9d0ac339e8440              # double 0.050420171071217101
	.quad	0x3fd98d2e87cf5b8c              # double 0.39924205076879882
	.quad	0x3fe4c70e5e24a7c0              # double 0.64929884326306109
	.quad	0x3fdd2687851aa19c              # double 0.45547664640846519
	.quad	0x3febe09a3e81fd8b              # double 0.87116729935216719
	.quad	0x3fce9f0de0f2326c              # double 0.23922894939132122
	.quad	0x3fe97bab7058a949              # double 0.79634639685290509
	.quad	0x3fdb84773088e308              # double 0.42996005763738809
	.quad	0x3fd535f8e036beea              # double 0.33141919990428781
	.quad	0x3feb59d6f5757662              # double 0.85471675816706871
	.quad	0x3fbbe5e0ee5208a8              # double 0.1089764196240447
	.quad	0x3fddf6d33cc8fae0              # double 0.46819001136820582
	.quad	0x3fd03c3c3f73166c              # double 0.25367647358175449
	.quad	0x3fe4254994fd6a59              # double 0.62955168819037077
	.quad	0x3fee1b437c11754a              # double 0.94082807762212295
	.quad	0x3fee191b88d1c01f              # double 0.94056488726164733
	.quad	0x3f98a5b1a1856660              # double 0.024069571956124469
	.quad	0x3fe2a85e043456c1              # double 0.58305264302426718
	.quad	0x3fedd1a976b680dc              # double 0.93184350191225062
	.quad	0x3fd30ea33da89c30              # double 0.2977684118399706
	.quad	0x3fe089bafbc035a5              # double 0.51681279344636677
	.quad	0x3fb848a7c8d59730              # double 0.094858633548565718
	.quad	0x3faa8be19f0c0100              # double 0.051848459877875896
	.quad	0x3fc33900c90a91c4              # double 0.15017709557026937
	.quad	0x3fdadfdefa68267a              # double 0.41991400197785078
	.quad	0x3fd3cc038a46e194              # double 0.30932701591111678
	.quad	0x3fe4c757f8515352              # double 0.64933393954798135
	.quad	0x3fb202ef1831f158              # double 0.070357268721584432
	.quad	0x3fd7437291e17a72              # double 0.36349167104882618
	.quad	0x3fb92ec74ce4b390              # double 0.098370033524316946
	.quad	0x3fbe82d88e1ebc60              # double 0.11918405027130197
	.quad	0x3fe7bb33219ce638              # double 0.74160152974145088
	.quad	0x3fe296f8be0833bc              # double 0.58092915645249077
	.quad	0x3fef27dfd846b2be              # double 0.97361747971952872
	.quad	0x3fe19a49d6867283              # double 0.5500840368218437
	.quad	0x3fb2b22818252db0              # double 0.073030954260665082
	.quad	0x3fece4f494beef36              # double 0.90294865657731438
	.quad	0x3fc4c87121513104              # double 0.16236700178922814
	.quad	0x3fd8c63d7715a5c2              # double 0.38709961537696469
	.quad	0x3fee5c5c812972c7              # double 0.94877457835135537
	.quad	0x3fd0a93b45eab042              # double 0.26032907321746646
	.quad	0x3fbcc7b467e999b8              # double 0.11242225205351175
	.quad	0x3fe4a0fcf1e086ba              # double 0.64465186349499182
	.quad	0x3f9a655f5ccb8360              # double 0.025777330435519885
	.quad	0x3fe44a809f0f0ce9              # double 0.63409453455133502
	.quad	0x3fd359b00c4aa8e2              # double 0.30234910202365317
	.quad	0x3fdc931f039a3460              # double 0.4464795622996629
	.quad	0x3fe12b4dc7a1c183              # double 0.53653611174199545
	.quad	0x3f973a64be65a7e0              # double 0.022683691140095052
	.quad	0x3fc0ca85c36fb42c              # double 0.1311804966238993
	.quad	0x3fd27b30322e5b52              # double 0.28876881504532037
	.quad	0x3fdac41abfb2b9f6              # double 0.41821926804087128
	.quad	0x3fe0405c89753260              # double 0.50785662505365892
	.quad	0x3feffac3eae1e04e              # double 0.99936099887328012
	.quad	0x3fe99ee5932d9bad              # double 0.80064657922490812
	.quad	0x3fd68e261230086c              # double 0.35242606903205487
	.quad	0x3fe2149322191ea5              # double 0.56501156482496084
	.quad	0x3fc366872e581b10              # double 0.15156640780352193
	.quad	0x3fe4c567ba53ed9f              # double 0.64909731285245076
	.quad	0x3fe35eb1711a32bf              # double 0.605309220221521
	.quad	0x3fe131729cebc7d1              # double 0.5372860970367076
	.quad	0x3fe7768ac2afa4fd              # double 0.73322046303397281
	.quad	0x3fed31761122486f              # double 0.91228774401157675
	.quad	0x3fe01abbaba0fc06              # double 0.50326331635722066
	.quad	0x3fe77ef15078342d              # double 0.73424592701633673
	.quad	0x3fef43bd75df7bfb              # double 0.97701905271594513
	.quad	0x3feff22e9d79905d              # double 0.99831324345405969
	.quad	0x3fe5287b7a18ed55              # double 0.66119169089453556
	.quad	0x3fcdab172f49cbf8              # double 0.23178376969335068
	.quad	0x3fe979a1d5cee753              # double 0.79609767684380939
	.quad	0x3fdf0cda12d37c1c              # double 0.48515941465842771
	.quad	0x3fe761e03b41d4cf              # double 0.73069774221098693
	.quad	0x3fc13e52aa817a9c              # double 0.13471444440343283
	.quad	0x3fe0544ad03063db              # double 0.5102895799819821
	.quad	0x3fd7d594a36b8094              # double 0.37241092642762763
	.quad	0x3feeed1e6989646e              # double 0.96644516575464734
	.quad	0x3fbc61cdd8432c68              # double 0.11086737184375439
	.quad	0x3fe9b63267411aac              # double 0.80349083105905583
	.quad	0x3fd6ec0a4272f014              # double 0.35815674294622224
	.quad	0x3fd201164e4a202e              # double 0.28131635327781879
	.quad	0x3fd080f26d09d854              # double 0.25787029884611923
	.quad	0x3feef81ecde20d4b              # double 0.96778812610174591
	.quad	0x3fe19bc33c27b7c0              # double 0.5502639937310434
	.quad	0x3fa3164b5b7ef1f0              # double 0.037279467505388797
	.quad	0x3fdfcbc5ca61fc9a              # double 0.49681229366246671
	.quad	0x3fd59e67d7af3cf2              # double 0.33779331267301338
	.quad	0x3fd4f2461cbcd2f0              # double 0.32728722387700682
	.quad	0x3fcdfc9f78fca2c8              # double 0.23427194030343501
	.quad	0x3f9514d69f4b79e0              # double 0.020587304565987341
	.quad	0x3fd42aebb1362a1a              # double 0.31511966996973373
	.quad	0x3fc76ce59df1da6c              # double 0.18301077091355766
	.quad	0x3fe52983176c8ff6              # double 0.66131739211095808
	.quad	0x3fd75947994c500a              # double 0.36482419939534394
	.quad	0x3fe24974b20afa44              # double 0.57146677755356068
	.quad	0x3fed77df4adab788              # double 0.92088284130089537
	.quad	0x3fe601c3ea399598              # double 0.68771548983629582
	.quad	0x3fec501b72ef9258              # double 0.88477871368793171
	.quad	0x3fe21285d5e929f3              # double 0.56476108340694819
	.quad	0x3fedf5c3833cc644              # double 0.93625045425705666
	.quad	0x3fb6ebaf888df7d0              # double 0.08953377803660989
	.quad	0x3fd4f07ee4635880              # double 0.32717869094393137
	.quad	0x3fd4e8f40705244c              # double 0.32671833692126451
	.quad	0x3fbdb872e5be5d80              # double 0.11609571560835796
	.quad	0x3fd118dac3bfe448              # double 0.26714200130624421
	.quad	0x3fd90b4b48d5bb7c              # double 0.39131433594496179
	.quad	0x3fe0e39280b1a376              # double 0.52777981887366709
	.quad	0x3f860fa6006d3640              # double 0.010772034538287234
	.quad	0x3fd5d32a457baeb0              # double 0.34101349626028377
	.quad	0x3fd91cd6581adf50              # double 0.39238508800507521
	.quad	0x3fe8bc9a4cf6b3e5              # double 0.77302279502839311
	.quad	0x3fa914059a07c2c0              # double 0.048980879833725677
	.quad	0x3fe2248eb0233188              # double 0.56696257020807739
	.quad	0x3fbcfda39338a258              # double 0.11324522346752397
	.quad	0x3fe5ef5ce5a60129              # double 0.6854691014596358
	.quad	0x3fe8cbc5931dd67e              # double 0.77487448438360196
	.quad	0x3faff1b4c4fac350              # double 0.062390946431497896
	.quad	0x3fccac930a690f8c              # double 0.22401655205078119
	.quad	0x3fea177b8c0d56c2              # double 0.81536652902533313
	.quad	0x3fe68e7bc8a24c67              # double 0.70489300905536545
	.quad	0x3fe4e5c8beee71d5              # double 0.65304982463163219
	.quad	0x3febcd20ee07613e              # double 0.86879011621480351
	.quad	0x3fe1a85730f9fe59              # double 0.55179938855867328
	.quad	0x3fcc0dfc0d7f6d80              # double 0.21917677554197823
	.quad	0x3feffd9fa8a6401a              # double 0.99970992030467021
	.quad	0x3fd84d74b07ab96e              # double 0.37972752794566744
	.quad	0x3fd63d999e813634              # double 0.34750977019288887
	.quad	0x3fe4251a63274ed1              # double 0.6295291840164855
	.quad	0x3fe7f800f4753c85              # double 0.74902389283842352
	.quad	0x3feb5ae3779f44f0              # double 0.85484479297352145
	.quad	0x3fe4107e67477f19              # double 0.62701339885458929
	.quad	0x3fedec29702ec298              # double 0.93507835302996778
	.quad	0x3fe3c7911072f6a8              # double 0.6181111642142314
	.quad	0x3fec8e5e9eb7921c              # double 0.89237910270145759
	.quad	0x3fe5850c786daa15              # double 0.67249129792372975
	.quad	0x3fd16993d0ec74d2              # double 0.27206893351269656
	.quad	0x3fd0c5f6b7155f3c              # double 0.26208274726149106
	.quad	0x3fe42e9e38739e84              # double 0.63069067979536486
	.quad	0x3f88900470887c80              # double 0.011993441280593098
	.quad	0x3fde45da5667ae14              # double 0.47301348150242117
	.quad	0x3fe8efa4ee86764e              # double 0.77925345026933157
	.quad	0x3fe216a2ca5a010f              # double 0.56526317140381532
	.quad	0x3fd0010b1585356e              # double 0.25006367780300465
	.quad	0x3fc02a7d58e3e8c4              # double 0.12629668083520162
	.quad	0x3fcb9714d0962520              # double 0.21554813561332598
	.quad	0x3feff6912a945c3c              # double 0.9988485175734989
	.quad	0x3fe480c26b27bad3              # double 0.64071770600079458
	.quad	0x3fe7f901557b2f37              # double 0.7491461438707806
	.quad	0x3fd11e293cd9fa44              # double 0.26746588652159553
	.quad	0x3fbafb98d3ebcba8              # double 0.10540156530241396
	.quad	0x3fd8cc42f025547c              # double 0.38746713115444442
	.quad	0x3fded01db3fee4fa              # double 0.48145239427283537
	.quad	0x3fe2518634a67f3d              # double 0.57245168956067227
	.quad	0x3feba0f6464cc2ec              # double 0.8633986828845912
	.quad	0x3fd941b18fd10800              # double 0.3946346191843304
	.quad	0x3fe4a11524b1a7a0              # double 0.64466340224065632
	.quad	0x3fe0b8c5d442fe74              # double 0.52255526978838285
	.quad	0x3fabd562284f9590              # double 0.054362361355553834
	.quad	0x3fd554be152f39c4              # double 0.33329727238460927
	.quad	0x3fd951b8ff14ee9e              # double 0.39561295423821174
	.quad	0x3fdb54f711544bf6              # double 0.42706085865319154
	.quad	0x3feb5baa6f2025b6              # double 0.85493966774190855
	.quad	0x3fc3bed60e68c074              # double 0.15426135734151425
	.quad	0x3fe6ce1664c50dab              # double 0.71265716249074751
	.quad	0x3fe72263144cec42              # double 0.72294763531625272
	.quad	0x3fe2b060bfa221eb              # double 0.58403050831208014
	.quad	0x3fe78a1c131a0f0d              # double 0.73560909014529019
	.quad	0x3fc4e3f69d85f63c              # double 0.16320688907210179
	.quad	0x3fdda4b9a1a066d6              # double 0.4631790235886063
	.quad	0x3feb5d467f248462              # double 0.85513615448520519
	.quad	0x3fe3581a6a180ad3              # double 0.60450478288142973
	.quad	0x3fdaecd7897e00f6              # double 0.42070568491909854
	.quad	0x3f93827d67246840              # double 0.0190524667933476
	.quad	0x3fdb92212e859184              # double 0.43079404395236787
	.quad	0x3fdba44b0312dc8c              # double 0.43190264988101812
	.quad	0x3fed390af5cfd1fb              # double 0.91321323404423482
	.quad	0x3fe6ee1b2d30e489              # double 0.71656569315304453
	.quad	0x3fe7171f324d7bbd              # double 0.72157249283542735
	.quad	0x3fe2baab3aba4e25              # double 0.58528672666802051
	.quad	0x3fdee2ed4be2ef70              # double 0.48260052119052599
	.quad	0x3fc9342fcbd75d44              # double 0.19690511182009562
	.quad	0x3fd30a3a2c516e78              # double 0.29749922111452731
	.quad	0x3fe34a778c3de71d              # double 0.60284020796754911
	.quad	0x3fe8cdf91d3efceb              # double 0.77514320098989964
	.quad	0x3fbdde59a0f05620              # double 0.1166740434567477
	.quad	0x3fe13271bc68a642              # double 0.53740774916258993
	.quad	0x3feaafa0e671c5b1              # double 0.83393902786899876
	.quad	0x3fee1ccd22473a03              # double 0.9410157842156085
	.quad	0x3fbed0764ee7e0c0              # double 0.12036837984476545
	.quad	0x3fea1e8e59d04676              # double 0.81622998754228493
	.quad	0x3fe98aadb659a52d              # double 0.79817853560704111
	.quad	0x3fc84105683561f4              # double 0.18948428715044907
	.quad	0x3fbf0781428610c8              # double 0.12120826601136792
	.quad	0x3fedb797acc4db1a              # double 0.92866119140566927
	.quad	0x3fe24e3169b05b70              # double 0.57204504625665997
	.quad	0x3fbe3f7c58d36b88              # double 0.1181562153682717
	.quad	0x3fd6345b1e021b60              # double 0.34694555216304046
	.quad	0x3fe566771c2eb661              # double 0.66875796799076792
	.quad	0x3fd42ac610a3e54c              # double 0.31511069893857235
	.quad	0x3fe9753635ad90a1              # double 0.79555807575208715
	.quad	0x3fd6562c99074198              # double 0.34900965637373238
	.quad	0x3fe9bf1a60fd28f0              # double 0.8045780081095284
	.quad	0x3fe4ced444c3e843              # double 0.65024770193782222
	.quad	0x3fe30af3208ec946              # double 0.59508663519799465
	.quad	0x3fd3e9445d63316e              # double 0.31111249084349069
	.quad	0x3fccb69ddc7bfdfc              # double 0.22432301774823304
	.quad	0x3fe011e71f976b67              # double 0.50218540353976671
	.quad	0x3fd04b963255d67a              # double 0.25461344638402006
	.quad	0x3fecacf76c0c5c9b              # double 0.89611407378369579
	.quad	0x3fee20498c4a67e2              # double 0.94144132042424311
	.quad	0x3faedf83f35c6130              # double 0.060299037415634138
	.quad	0x3fcddf080ec07be0              # double 0.23336888046557558
	.quad	0x3fee000fafbe4bc4              # double 0.93750747990485949
	.quad	0x3fa6b73f31454460              # double 0.04436681248137897
	.quad	0x3fc1d211f2315f10              # double 0.13922333074400983
	.quad	0x3fe615687894ec07              # double 0.69011329222792106
	.quad	0x3fe57c1a3795c37f              # double 0.67139922005127051
	.quad	0x3fd0968cdc54975a              # double 0.25918885723728169
	.quad	0x3fc38affcfbda64c              # double 0.15267942088694253
	.quad	0x3f943a2c02c88b40              # double 0.019753158254512515
	.quad	0x3fd8b3fc2afd0ecc              # double 0.38598541448685064
	.quad	0x3fd0bf32c51642ce              # double 0.26166981932423716
	.quad	0x3fc899529c47c108              # double 0.1921790373885488
	.quad	0x3fcac80abda9ddcc              # double 0.20922979603686398
	.quad	0x3feffef008d09d18              # double 0.999870316711994
	.quad	0x3fe846c8dafc701d              # double 0.75864069720001093
	.quad	0x3fe22e68411417ca              # double 0.5681649466575831
	.quad	0x3fd05a19232a3904              # double 0.255499157276873
	.quad	0x3fd27b6c6e6f4e2c              # double 0.28878317627570271
	.quad	0x3fd80e9020f3b3c0              # double 0.37588885515179626
	.quad	0x3fbd615c8923e210              # double 0.11476686809681547
	.quad	0x3fed68eda37a4f79              # double 0.91905862740757904
	.quad	0x3fc4602cc35ab420              # double 0.15918502367768017
	.quad	0x3fd7dd1f54574d7e              # double 0.3728712390559038
	.quad	0x3fd61b919cd469d6              # double 0.34543266597179689
	.quad	0x3fe83c2c97622c71              # double 0.75734548155868542
	.quad	0x3fe6e5b5c1858430              # double 0.71554076955010792
	.quad	0x3fbb1d71f50a1868              # double 0.10591804726036147
	.quad	0x3fbbb6ba157d9de0              # double 0.10825694107699446
	.quad	0x3fd53e0bb806727c              # double 0.33191197367867864
	.quad	0x3fe1029db2ad8231              # double 0.53156933687211538
	.quad	0x3fd856866820e53e              # double 0.38028106850432042
	.quad	0x3fdf87f180c793a8              # double 0.49267232490665913
	.quad	0x3fd10c32da3f2b96              # double 0.2663695460620884
	.quad	0x3fef760465a78d21              # double 0.98315639356988893
	.quad	0x3fd6324c31762ee6              # double 0.34681992368926584
	.quad	0x3fd1d4cab113cf98              # double 0.2786127785941459
	.quad	0x3feb3155f932c7e5              # double 0.84977244063906865
	.quad	0x3fe6a97cfd939af6              # double 0.70818948294330997
	.quad	0x3fc6a2eaf9cdf3c8              # double 0.17684685895429042
	.quad	0x3fe7d149021cf9dc              # double 0.74429750836116737
	.quad	0x3fd808b6cb3374e4              # double 0.37553186267707717
	.quad	0x3f91a55f2e0ce420              # double 0.017232405839625042
	.quad	0x3fe29d69bdac4985              # double 0.58171546025759879
	.quad	0x3fa9f4ed3e945900              # double 0.050696767701241541
	.quad	0x3fe45a5aa8813bcc              # double 0.63602955733392141
	.quad	0x3fe2d1d69082402b              # double 0.58811500763295521
	.quad	0x3fe64d8662114efe              # double 0.69696349290686022
	.quad	0x3fd3e678401b2712              # double 0.31094175587041761
	.quad	0x3feb2a45eb1f5435              # double 0.84891029283847408
	.quad	0x3fcecfc7068275c0              # double 0.24071586435176862
	.quad	0x3fe51b54849c7c40              # double 0.65958619976652955
	.quad	0x3f7a3e2329eefc00              # double 0.006406915052990847
	.quad	0x3fc5fc4f9bb17060              # double 0.17176241972163364
	.quad	0x3fdf344268036586              # double 0.48756466062112513
	.quad	0x3fea61ea66b366c1              # double 0.82445259150264161
	.quad	0x3fd0e78ee9b3b048              # double 0.26413319418384562
	.quad	0x3fdaafe5dda968a8              # double 0.41698595663695892
	.quad	0x3fe3faedfc969fa7              # double 0.62438105901400298
	.quad	0x3fc18a828f0444d8              # double 0.13703948958622081
	.quad	0x3fed42c42b2e90b1              # double 0.91440018114055566
	.quad	0x3fd9e88ae64f3b64              # double 0.40481827250635249
	.quad	0x3fdca1a8f5e89692              # double 0.44736694349772066
	.quad	0x3fe04189dbcb6a03              # double 0.50800030640249394
	.quad	0x3fde30fd0b2d9f7a              # double 0.47174001781103636
	.quad	0x3fd92155c3e94ed0              # double 0.39265960819214474
	.quad	0x3fcb8e2da5f24d28              # double 0.21527643778663585
	.quad	0x3fe534d99471b648              # double 0.66270140641217612
	.quad	0x3fd2c747162a65de              # double 0.29341294445620558
	.quad	0x3fde2c8045fd7ae8              # double 0.47146612963653789
	.quad	0x3fea5cd78909378e              # double 0.82383324398846169
	.quad	0x3fe6959fa63d1117              # double 0.70576460331406821
	.quad	0x3fe5a1d4e9d32b20              # double 0.67600484532281158
	.quad	0x3fefc9ff3bcc29b7              # double 0.99340783766938656
	.quad	0x3fd4b83d0b1f12e2              # double 0.3237450226409192
	.quad	0x3fe7e7b42b17e2d9              # double 0.7470341531435124
	.quad	0x3f9da477a5210740              # double 0.028947705701518389
	.quad	0x3fe9fadb99c8e95e              # double 0.81187229190917853
	.quad	0x3fc1fed3cab2d8a8              # double 0.1405892123927448
	.quad	0x3fdd16a046d70782              # double 0.45450598638500861
	.quad	0x3feab46c2bc19553              # double 0.83452423616533122
	.quad	0x3fda62fcfd1499e4              # double 0.41229176249399146
	.quad	0x3fe87dfd41c9c235              # double 0.76537955140344727
	.quad	0x3fd42877509d01fa              # double 0.31496985313790982
	.quad	0x3fe90952ec877192              # double 0.78238817402921002
	.quad	0x3fedba0597ce6dff              # double 0.9289577450721821
	.quad	0x3fd4dae7e1d220a8              # double 0.32586094906629137
	.quad	0x3f905fa425e4af60              # double 0.015989842236350582
	.quad	0x3fee1f13023ece04              # double 0.94129324377576084
	.quad	0x3fc4fe6c8fa1b934              # double 0.16401440633075881
	.quad	0x3fe7bde4dae5af20              # double 0.74193041566238449
	.quad	0x3fe14a6981a6a839              # double 0.54033351252042572
	.quad	0x3fee69de27e1180e              # double 0.95042331494255605
	.quad	0x3fe8b881414d9427              # double 0.77252257112980238
	.quad	0x3f9dcd55e74467c0              # double 0.029103605499677832
	.quad	0x3fec8cfdf00cecc5              # double 0.89221093067990209
	.quad	0x3fe43e7716bc8393              # double 0.63262514534663905
	.quad	0x3fe3029fcf2e0137              # double 0.59407034363542877
	.quad	0x3faf4f833fd61760              # double 0.061153508703724269
	.quad	0x3fe7ba64963f27b9              # double 0.74150304169710701
	.quad	0x3fa0504924f3a350              # double 0.031862531433779595
	.quad	0x3fe8d77487d3ca4f              # double 0.77630068329592372
	.quad	0x3fe4b56f5c404cc4              # double 0.64714782731825737
	.quad	0x3fe0d585f8a21528              # double 0.52606485901984446
	.quad	0x3fd6884988c3621c              # double 0.35206831317694465
	.quad	0x3fc0f365538bbcc0              # double 0.13242785052668715
	.quad	0x3fe3e34cc45da8d3              # double 0.62149656632143502
	.quad	0x3feaff25a4134824              # double 0.84364587827645154
	.quad	0x3fe8cf5d1bfb5789              # double 0.77531295266338518
	.quad	0x3fd7e61e9455fc4e              # double 0.37342037664342775
	.quad	0x3feb29b7af340974              # double 0.84884247035397075
	.quad	0x3feaa1e245ffe6f2              # double 0.83226121589470226
	.quad	0x3fde0f16ab848df6              # double 0.46967093229088108
	.quad	0x3fe096f1ad4c3868              # double 0.51842578742231371
	.quad	0x3fea8fa1ddcc12cb              # double 0.83003323859937816
	.quad	0x3fb1dedaab5d5108              # double 0.069806734883346988
	.quad	0x3fda9c8a5b72408c              # double 0.41580447130491716
	.quad	0x3fe9fa254a8daeea              # double 0.81178535996647594
	.quad	0x3fe19187da564601              # double 0.54901497501322194
	.quad	0x3fc449d8f0fe4ef4              # double 0.15850364463096123
	.quad	0x3fe1534aa0533dbd              # double 0.5414174205160901
	.quad	0x3fb750f2688a8480              # double 0.091078901789403587
	.quad	0x3fe785442840b500              # double 0.7350178514658694
	.quad	0x3fe7c126ddc0c491              # double 0.74232810317166031
	.quad	0x3fd21194463eec14              # double 0.28232294902744681
	.quad	0x3fdf32c2ae483350              # double 0.48747317332963735
	.quad	0x3fe6568aaaa3bbad              # double 0.69806416824382256
	.quad	0x3fedc793d19d6356              # double 0.93061247768774069
	.quad	0x3fbc3174fb71c3d0              # double 0.11012965334681657
	.quad	0x3fe046419f25cac7              # double 0.50857621272583564
	.quad	0x3f937f8a93038100              # double 0.019041218970301976
	.quad	0x3fdf81c8d8584b80              # double 0.49229642035896148
	.quad	0x3fe2cb683d765136              # double 0.58732997898417838
	.quad	0x3fe16f5cc946f2b7              # double 0.54484404861394509
	.quad	0x3fcfa6b50da0b744              # double 0.24727500119609591
	.quad	0x3fcfc97262b4cc84              # double 0.24833516902581121
	.quad	0x3fe924ca2892bc54              # double 0.78574092792940541
	.quad	0x3fddec80726c43c2              # double 0.46755992101776311
	.quad	0x3fc75c9c9664a0b8              # double 0.18251378386890393
	.quad	0x3fe545a14b04347d              # double 0.66474976207395253
	.quad	0x3fe16dbf2242e913              # double 0.54464680377648944
	.quad	0x3fe0a9f2b0d85757              # double 0.52074560680442061
	.quad	0x3fd0cf001eed48da              # double 0.2626343061466635
	.quad	0x3fec7f01332d2286              # double 0.89050350184796012
	.quad	0x3fee14fa4803548a              # double 0.94006074967423214
	.quad	0x3fd95218cf121298              # double 0.39563579770791923
	.quad	0x3fe371fcb30d4794              # double 0.60766444178647072
	.quad	0x3fc2d773ab5aa204              # double 0.14720006815811371
	.quad	0x3fd3e108d7d63840              # double 0.31061001851856318
	.quad	0x3fbbf6a1d6fcfb38              # double 0.10923205851302675
	.quad	0x3fe677027ef4207d              # double 0.70202755733136224
	.quad	0x3fc59cbabe06fdf8              # double 0.16884550360371953
	.quad	0x3fe248ae669ce11c              # double 0.57137222329677995
	.quad	0x3fd5393de7768cec              # double 0.33161876300637405
	.quad	0x3fdec390374d9c5a              # double 0.48068623924922849
	.quad	0x3fdd39e2a87fa4ce              # double 0.45665804343168481
	.quad	0x3fdb83a4dea9b4f0              # double 0.42990991348672392
	.quad	0x3fef464c1515cb9e              # double 0.97733120077315383
	.quad	0x3fd8f2074e0dbff2              # double 0.38977224943573596
	.quad	0x3fdba9cd028a9c7c              # double 0.43223881958187582
	.quad	0x3fc35007c9236548              # double 0.15087983437732988
	.quad	0x3fdb023a3fee4290              # double 0.42201095813019496
	.quad	0x3fb8927bdf1ba190              # double 0.09598516652079625
	.quad	0x3fa16fa74898a220              # double 0.034054973232120256
	.quad	0x3fc096ac0c2c8464              # double 0.12959814638546441
	.quad	0x3fe824d4ba7cf65e              # double 0.75449596808875774
	.quad	0x3fecd32cdd92c99e              # double 0.90077822948505903
	.quad	0x3fe5acf6282db51b              # double 0.67736347052928936
	.quad	0x3fe5950f616636d3              # double 0.6744458105401584
	.quad	0x3fee6b8d5f55f5d9              # double 0.95062893505353963
	.quad	0x3fe6b2706b189df4              # double 0.709282120868862
	.quad	0x3fe36c6af7bccff7              # double 0.60698459993591214
	.quad	0x3fee9b7c3958780f              # double 0.95648013305958723
	.quad	0x3feae002e4681fba              # double 0.83984512911501175
	.quad	0x3fe97c7a455a4895              # double 0.79644502206271517
	.quad	0x3feb15e119bc3a58              # double 0.84642081285876269
	.quad	0x3fecb8236bef83df              # double 0.89747782784626995
	.quad	0x3fb0cf11d28d9520              # double 0.0656596316381024
	.quad	0x3fe4b96742daba5e              # double 0.64763224656583041
	.quad	0x3fee42a10bb4bd71              # double 0.94563343321162396
	.quad	0x3fef24c0b4263dcb              # double 0.97323641953874451
	.quad	0x3fabbdf506865070              # double 0.054183632894962197
	.quad	0x3fdcc7074e8692f2              # double 0.44964773815654191
	.quad	0x3fef9379ba827dd1              # double 0.98675238063509074
	.quad	0x3fa6592f5c0b7160              # double 0.043649177537846695
	.quad	0x3fdd0751d30d6512              # double 0.45357175455645049
	.quad	0x3fe27c83cb8bb2da              # double 0.57769956355113128
	.quad	0x3fd90edb0c78e736              # double 0.3915317174720373
	.quad	0x3fe34ce4ed4ad866              # double 0.60313650461354196
	.quad	0x3fd44509ea3c25a4              # double 0.31671378969675801
	.quad	0x3fd3bbaa64720b5e              # double 0.30832919892434585
	.quad	0x3fe8ea389096e6c9              # double 0.77859142532471382
	.quad	0x3fe407879dd8ed13              # double 0.62591915921749075
	.quad	0x3fb64643f0872a08              # double 0.087009664747860538
	.quad	0x3fe3938554c9fcb4              # double 0.61175791321138329
	.quad	0x3fe2302b031ff2ff              # double 0.56837988481819923
	.quad	0x3fcb14bc7dc2d67c              # double 0.21157032147100441
	.quad	0x3fe59f324fc21345              # double 0.6756831701064604
	.quad	0x3fea1873e7649fb4              # double 0.81548495477635762
	.quad	0x3fed85c730396eb4              # double 0.92258033198182554
	.quad	0x3fdf89fc79ed3aca              # double 0.49279701144125154
	.quad	0x3fe7a3345c9c99c7              # double 0.73867242897250029
	.quad	0x3fcf62e5b2726750              # double 0.24520560467936514
	.quad	0x3fe78fb1576bbf12              # double 0.73629061769858795
	.quad	0x3fe6c73a69b6dc3d              # double 0.71181984565090028
	.quad	0x3fbdbf1414c4d518              # double 0.1161968756394639
	.quad	0x3fe1158c3e1975f7              # double 0.53388034943389939
	.quad	0x3fba363f616e7518              # double 0.1023902523870287
	.quad	0x3feee76ff07fa39a              # double 0.96575161907559282
	.quad	0x3fda269d7c7abfe8              # double 0.40860688358497876
	.quad	0x3fdc91e022d15d14              # double 0.44640353584459658
	.quad	0x3fc29c373843cf30              # double 0.14539232489880183
	.quad	0x3fef5fe5ccf3e2a3              # double 0.98045625715083806
	.quad	0x3fe4903b354d02e9              # double 0.64260635767285834
	.quad	0x3feb9d904ff45a84              # double 0.8629838525401543
	.quad	0x3feee4250f552fb5              # double 0.96534970278434306
	.quad	0x3fdd21c129441dd6              # double 0.45518521337404871
	.quad	0x3fecbbc8ffa31c98              # double 0.89792299203044745
	.quad	0x3fe646d412471e5e              # double 0.69614604539760783
	.quad	0x3fdbc20632fb1b32              # double 0.43371729830362249
	.quad	0x3fe83f9ca2a596f9              # double 0.75776511923751777
	.quad	0x3fd5ee0d57b50078              # double 0.34265454831257314
	.quad	0x3f90e664450b0fa0              # double 0.016503874506056726
	.quad	0x3fef4c1f6b4d8f9f              # double 0.97804232556926595
	.quad	0x3fefbe7923b0e05d              # double 0.99200112315066812
	.quad	0x3fbf177712514538              # double 0.12145179936603234
	.quad	0x3fe8b42aae23b6ee              # double 0.77199300777075819
	.quad	0x3faac52e71937ce0              # double 0.052285624851487134
	.quad	0x3fb782d7e9fcc698              # double 0.091840262056189892
	.quad	0x3fd4dc667734e052              # double 0.32595216408981742
	.quad	0x3fe85e0e9b82fc08              # double 0.76148157475825062
	.quad	0x3fe8273419bdbe2f              # double 0.75478558566641663
	.quad	0x3fdca69918d33184              # double 0.44766833710016152
	.quad	0x3fbc38ad8ddfeb48              # double 0.1102398368238201
	.quad	0x3fe655fe817fcf7b              # double 0.69799733441185141
	.quad	0x3fcc27c24dc9edd0              # double 0.2199633483722736
	.quad	0x3fce80315349be28              # double 0.2382871300392122
	.quad	0x3fba4c102725f110              # double 0.10272313075796924
	.quad	0x3fe06463ac69acfe              # double 0.51225455927252006
	.quad	0x3fe398b081ebf1db              # double 0.61238885283779199
	.quad	0x3fe48a85984b82be              # double 0.64190940613851644
	.quad	0x3fcf972ba8638040              # double 0.24680085870841317
	.quad	0x3fe85a08a5cb8d03              # double 0.76099045163974244
	.quad	0x3fe264d10e920f81              # double 0.574806717355827
	.quad	0x3f6b23c126ae2f00              # double 0.0033129475099878958
	.quad	0x3fd181ed6d8c7d9c              # double 0.27355514238475975
	.quad	0x3fe585f235bb9626              # double 0.67260084623984961
	.quad	0x3fe077c36f4c5a33              # double 0.51461955774249757
	.quad	0x3fe0f45e99548a60              # double 0.52983026454269222
	.quad	0x3fe68a1c63d22637              # double 0.70435924049633669
	.quad	0x3fdfbfe251236618              # double 0.49608667300853559
	.quad	0x3fd7a65363e3072c              # double 0.36952671770642342
	.quad	0x3fe161d4d67f58ca              # double 0.54319230932267115
	.quad	0x3fefb64e369d8ee0              # double 0.99100409190256399
	.quad	0x3fe9e9e036f39bc5              # double 0.8097992966912605
	.quad	0x3fd036fecf96d672              # double 0.25335665008910901
	.quad	0x3fe0e9a9c2175ae0              # double 0.52852332981532513
	.quad	0x3fddd5479f2303a6              # double 0.46614256420803668
	.quad	0x3fea1fc8df3f2f71              # double 0.8163799629487426
	.quad	0x3fdbd79b8ee4a616              # double 0.43503464655313573
	.quad	0x3fccab13f8fdfb84              # double 0.22397088678186716
	.quad	0x3fd3501be4fe0488              # double 0.30176446306729376
	.quad	0x3fe08aa920f4ea6a              # double 0.51692634999137721
	.quad	0x3fe9a8dfb61d5af2              # double 0.80186448640128405
	.quad	0x3fe3ce871d3f377f              # double 0.61896091186802937
	.quad	0x3fec05480886aca5              # double 0.87564469971893699
	.quad	0x3feb74c664f50a21              # double 0.85800475805473664
	.quad	0x3fea55b5545cc5e5              # double 0.8229624412253399
	.quad	0x3fcbf0d6602a810c              # double 0.21828727431876194
	.quad	0x3fe47e132150bde2              # double 0.64038998133576919
	.quad	0x3fd73b9cd74ef0bc              # double 0.36301346803862677
	.quad	0x3fdd241382fd4086              # double 0.4553269175712632
	.quad	0x3fd5e40d5aac1c6a              # double 0.34204419951169618
	.quad	0x3fa44a0f0e3cd780              # double 0.039627523887630467
	.quad	0x3fd8bd21769c49ac              # double 0.38654362280899579
	.quad	0x3fde7fa326b5dcd2              # double 0.4765403631240136
	.quad	0x3fe0fa0cfecaadac              # double 0.53052377475744583
	.quad	0x3fe54ac8eb9b70e8              # double 0.66537900940923311
	.quad	0x3fe7024d98039108              # double 0.71903114023419423
	.quad	0x3fbd8b6396211890              # double 0.1154081574942174
	.quad	0x3fc01bd98e378078              # double 0.12584990925006756
	.quad	0x3fe45401bf4754b0              # double 0.63525473937138166
	.quad	0x3fe5e087beed09b4              # double 0.68365847864361351
	.quad	0x3fef053c6a33caa2              # double 0.96938915960921102
	.quad	0x3fe5c32aa86e9f4a              # double 0.68007405182741221
	.quad	0x3fe427c2476c3094              # double 0.6298533816311811
	.quad	0x3fe8cb4c5a427516              # double 0.77481668118312785
	.quad	0x3fea8743e3c025e4              # double 0.82901186449560926
	.quad	0x3fe9a6e165f65e4b              # double 0.80162115015532132
	.quad	0x3fda1e796b1a1c54              # double 0.40811000308207679
	.quad	0x3fde330aff1ce9b2              # double 0.47186541474698196
	.quad	0x3fdf9954a142aa52              # double 0.49373355625235604
	.quad	0x3fdbb841c39dc9b4              # double 0.4331211481395727
	.quad	0x3fefbc3e4b6a98fd              # double 0.99172892312779448
	.quad	0x3fea479491f4a692              # double 0.82123783595052857
	.quad	0x3fdcf2ffd2c954a0              # double 0.4523315008603479
	.quad	0x3fedd5f1db45a83f              # double 0.93236630274373755
	.quad	0x3fc31c4dca41f10c              # double 0.1493012654863225
	.quad	0x3feaf2e86b7fad64              # double 0.84215184207770876
	.quad	0x3fe1dcd019c4ba76              # double 0.55820469887642221
	.quad	0x3feb0ae3674d1481              # double 0.84507913757319397
	.quad	0x3fee927989aecd87              # double 0.95538021937538609
	.quad	0x3fe889f290d631c9              # double 0.76683929718415655
	.quad	0x3fefb39fdc1e551b              # double 0.99067681304828469
	.quad	0x3fec2b1354df7588              # double 0.88025824143157738
	.quad	0x3fd36abf029c340c              # double 0.30339026694201787
	.quad	0x3feaa775cf483992              # double 0.83294191822806085
	.quad	0x3fe8516c65ff9d68              # double 0.75993938371258896
	.quad	0x3fb81f72d9ae77d8              # double 0.094229868073369416
	.quad	0x3fca52b4fafa847c              # double 0.20564901594937968
	.quad	0x3fdb290a366f4dd8              # double 0.42437987628838192
	.quad	0x3fd70b7662848b9e              # double 0.36007461186289358
	.quad	0x3fc422cd02c473ac              # double 0.15731203684927431
	.quad	0x3fd89db0240fe238              # double 0.38462451478656901
	.quad	0x3fe7e47a23015c8a              # double 0.74664027058578708
	.quad	0x3fc62107cfe877e8              # double 0.17288301135789585
	.quad	0x3fdb4b469a245bd2              # double 0.42646946957523568
	.quad	0x3febb9ac8607cbc8              # double 0.86641527345488445
	.quad	0x3fe798b21e718d70              # double 0.73738962121971774
	.quad	0x3fe99c3456df61c6              # double 0.80031792609502683
	.quad	0x3fe8951709582960              # double 0.76819946122240523
	.quad	0x3fe183b4d422bed7              # double 0.54732743675955475
	.quad	0x3fd424348c0184f6              # double 0.31470979378180119
	.quad	0x3fccbbce677eb580              # double 0.22448139241661735
	.quad	0x3fd5d97467c55ba6              # double 0.34139738210563519
	.quad	0x3f967b8ae900a360              # double 0.021955652686446725
	.quad	0x3fed5cf491af00c7              # double 0.91759708837346288
	.quad	0x3fea5e144ba47ff3              # double 0.82398428701344384
	.quad	0x3fe73802a01ef478              # double 0.72558718942276723
	.quad	0x3fd11081646d7374              # double 0.26663241202714194
	.quad	0x3fec1f36f45185df              # double 0.87881038397261679
	.quad	0x3fecd935e0fdfe3f              # double 0.90151494926244158
	.quad	0x3fe515202d991b13              # double 0.65882882028458523
	.quad	0x3feda5e6649ac660              # double 0.92650146149953727
	.quad	0x3fe9a6cf9381e0b4              # double 0.80161265192056996
	.quad	0x3fe1ded1f17c15ba              # double 0.55844971814138167
	.quad	0x3feeb008c907c13d              # double 0.95898856414536448
	.quad	0x3fe066f5f669a111              # double 0.51256845595801981
	.quad	0x3fd0f4219b4c4cc8              # double 0.26490059057068693
	.quad	0x3fec7b83b6768492              # double 0.89007745396897264
	.quad	0x3fbd947900271bb0              # double 0.11554676297883648
	.quad	0x3fe6b2909ec63bf6              # double 0.70929747591605863
	.quad	0x3fd401923ba718ee              # double 0.31259589982472746
	.quad	0x3fe162b5e49fc8d1              # double 0.5432996239963136
	.quad	0x3fe799b6ba0a0455              # double 0.73751388870017343
	.quad	0x3fe4b32c912fdb83              # double 0.64687183720421648
	.quad	0x3fc4095c3b02c2d4              # double 0.15653565293680194
	.quad	0x3fdacdcc32923f00              # double 0.41881089151955564
	.quad	0x3fd345a796fed348              # double 0.30112638230939526
	.quad	0x3fea0c5de936c19a              # double 0.81400962400043686
	.quad	0x3fd34d228f1191ec              # double 0.30158294650598694
	.quad	0x3fd5fbd4e84aa5a2              # double 0.34349558529592106
	.quad	0x3fb20d0f3b64b7b8              # double 0.070511772156094277
	.quad	0x3fe7cfed231f2d79              # double 0.74413163051342146
	.quad	0x3fe81941199e8393              # double 0.7530827999472528
	.quad	0x3fd965270236363a              # double 0.39679885116570157
	.quad	0x3fc19f060f4d0b20              # double 0.13766551730267285
	.quad	0x3fe4fa25115ec3fd              # double 0.65553525345433139
	.quad	0x3fe0d1d595f84fd0              # double 0.5256145409680304
	.quad	0x3fdd8a521793e490              # double 0.4615674238444365
	.quad	0x3fe6027d7b986aee              # double 0.68780397548411343
	.quad	0x3fef92c2313d0ea9              # double 0.98666486374755379
	.quad	0x3fcbf693989515fc              # double 0.21846241903601527
	.quad	0x3fd89eea475cf268              # double 0.38469941109705141
	.quad	0x3fe990a2978dd164              # double 0.7989056549109077
	.quad	0x3fd3a6ed7676ef6c              # double 0.30706345146949476
	.quad	0x3fbff577def813a0              # double 0.12483929818706807
	.quad	0x3fc9517ae8d5a744              # double 0.19779907578350209
	.quad	0x3fbfa70b5e931298              # double 0.12364264544437231
	.quad	0x3fda87d36d8ff0b8              # double 0.41454015445175285
	.quad	0x3fe39a88ff84a8e2              # double 0.61261415391825502
	.quad	0x3fec8c44839b371a              # double 0.89212251381261187
	.quad	0x3fe055230f6c091c              # double 0.51039269458877667
	.quad	0x3feb82712968a3b7              # double 0.85967310035368072
	.quad	0x3fd45cd908d823ee              # double 0.31816697944355965
	.quad	0x3fe91807edd31a02              # double 0.78418346834297403
	.quad	0x3fe223c8e05b02c2              # double 0.56686824626384458
	.quad	0x3f85f11f01833580              # double 0.010713808282526882
	.quad	0x3fe36cda28278ba0              # double 0.60703761904402498
	.quad	0x3fe4cd6bdb4a7188              # double 0.65007584409936303
	.quad	0x3fbeaecd016cff40              # double 0.11985474858101686
	.quad	0x3feefb23a8b64819              # double 0.9681566519886956
	.quad	0x3fe1ddd553584061              # double 0.55832926061885868
	.quad	0x3fe489d5cdc957aa              # double 0.6418255824344119
	.quad	0x3fe17bbf2e045e80              # double 0.54635581004818334
	.quad	0x3fe5ced6b5749e48              # double 0.68149886551413719
	.quad	0x3fe16b08121aa30b              # double 0.54431537185618717
	.quad	0x3fdb4d9a61ba10b4              # double 0.4266115145076228
	.quad	0x3fece5e6762985ed              # double 0.90306399420313499
	.quad	0x3fecfcc56b6a383c              # double 0.90585585574604676
	.quad	0x3fd84767f60cc898              # double 0.37935828235925717
	.quad	0x3fed6552c4184b83              # double 0.91861856746469106
	.quad	0x3feaece55ef818bc              # double 0.84141796635301302
	.quad	0x3fba4798445a16d0              # double 0.1026549498438627
	.quad	0x3fe1527b95da5e86              # double 0.5413186957184315
	.quad	0x3fece6cbadf6709a              # double 0.90317329384881195
	.quad	0x3fefbbeb6468dd52              # double 0.99168939219718255
	.quad	0x3fcc924eab846c5c              # double 0.22321494459979163
	.quad	0x3fd74b1fe1ec9f2a              # double 0.36396023810310629
	.quad	0x3fcd5bdf7dd99eb4              # double 0.22936624188445409
	.quad	0x3fde02d2c54740ae              # double 0.46892232194387418
	.quad	0x3fe82aa543d49f30              # double 0.75520575760035591
	.quad	0x3fb844bc59e491f8              # double 0.094798824259278436
	.quad	0x3fe2c2f79afff482              # double 0.58629970811274768
	.quad	0x3fe9b253ed490fa2              # double 0.80301853508762044
	.quad	0x3fdd7966e639f2dc              # double 0.46053478701632655
	.quad	0x3fd2f6d8b6c0d186              # double 0.29631631705276396
	.quad	0x3fe45bfeaaca6ac5              # double 0.63622983319813697
	.quad	0x3fe4ea8d0f7591d6              # double 0.65363171595941583
	.quad	0x3fdfca8cb1860a2a              # double 0.49673764549530353
	.quad	0x3fc7451ae9033630              # double 0.18179642083707526
	.quad	0x3fb6a49f668d3300              # double 0.088449442421914881
	.quad	0x3f98263b4dbb0540              # double 0.023583342189117618
	.quad	0x3fd225771773dff4              # double 0.28353669443413243
	.quad	0x3fd380ca03fcf682              # double 0.30473566426721999
	.quad	0x3fb22f232936bae8              # double 0.071031758844337767
	.quad	0x3fad267eec79af60              # double 0.056934324614160259
	.quad	0x3fd3ce6f1a11265a              # double 0.30947473092655786
	.quad	0x3f97c059d53e2ce0              # double 0.023194697990715052
	.quad	0x3fe025b63781c9ac              # double 0.50460348931510657
	.quad	0x3fe576869be79f0c              # double 0.67071848344946394
	.quad	0x3fbf02efc81b7d38              # double 0.12113855967935627
	.quad	0x3fdf4d6405fd1c0c              # double 0.48909855446658024
	.quad	0x3fecc53f38a0278b              # double 0.89907799777687225
	.quad	0x3fe45d2d286600a8              # double 0.63637407198259144
	.quad	0x3fd619efc93aaac2              # double 0.34533304835592216
	.quad	0x3fe48693c4363541              # double 0.64142788241012039
	.quad	0x3fc2a598dd56c5ec              # double 0.14567862327162062
	.quad	0x3fc1388b8500f210              # double 0.13453811640091873
	.quad	0x3fdd22eb1692aa3a              # double 0.45525624470124948
	.quad	0x3fec8df89a1664ab              # double 0.89233045668801958
	.quad	0x3fe41a0e99a3d88b              # double 0.62818079002205829
	.quad	0x3fea5bfc63e516e0              # double 0.8237287474700814
	.quad	0x3fe5dce0005c8afb              # double 0.68321228094677566
	.quad	0x3fee9945c7e1093b              # double 0.95621003188015352
	.quad	0x3fd3c8fd1a81d496              # double 0.30914237583721993
	.quad	0x3fe2b4e779609269              # double 0.58458303171626114
	.quad	0x3fe1dd4e47466d03              # double 0.55826486512106077
	.quad	0x3fe77ff0be66a758              # double 0.73436772525495098
	.quad	0x3fed9a677b1b2d28              # double 0.92509817165538255
	.quad	0x3fe813064eafd19d              # double 0.75232234352602101
	.quad	0x3fb4bc12508dd140              # double 0.080994743982789608
	.quad	0x3fec81b84145f14e              # double 0.89083492993044344
	.quad	0x3fe90a7ae8ad503c              # double 0.78252931065299646
	.quad	0x3faa9738d2de8c80              # double 0.051934982052693535
	.quad	0x3fc6d9dfc7dac07c              # double 0.17852399118919837
	.quad	0x3fe037c8363030d8              # double 0.50680933555261287
	.quad	0x3fe372a1c055d4ee              # double 0.60774314465984758
	.quad	0x3fe65fb2ead6d298              # double 0.69918199412366544
	.quad	0x3fdec373bbe7c7c8              # double 0.4806794486058803
	.quad	0x3fd9d058e9f43fa6              # double 0.40334151122169215
	.quad	0x3fb5bc90f7ce8090              # double 0.084908543109579293
	.quad	0x3fe3f44f027d9473              # double 0.62357283102450223
	.quad	0x3fb9cdd57d6d4880              # double 0.10079702675037261
	.quad	0x3fe4b6c84dd8e351              # double 0.64731230930838468
	.quad	0x3fc68b77bfcfaa98              # double 0.17613121858388037
	.quad	0x3fefbe11ea04b5f2              # double 0.9919519014999294
	.quad	0x3fede48fcd3efcd6              # double 0.93415060126417404
	.quad	0x3fe4fdee4ebfb0e5              # double 0.65599742298720953
	.quad	0x3fcbfacac57f1b68              # double 0.21859106677421924
	.quad	0x3fd02de8a117df62              # double 0.25280204517138405
	.quad	0x3fe75b5f9b0c5cde              # double 0.72990398676747836
	.quad	0x3fee92916c585fe2              # double 0.95539160882162499
	.quad	0x3fd010fcae47ecc8              # double 0.25103680629372294
	.quad	0x3fd211fa710c889a              # double 0.28234730758607329
	.quad	0x3febf071f21f0b56              # double 0.87310120858487994
	.quad	0x3fe003a645697c29              # double 0.50044549519578141
	.quad	0x3fdb357346848c20              # double 0.4251373470926314
	.quad	0x3fedf8bcf7290ed0              # double 0.93661354325782931
	.quad	0x3fe63f56991cb24d              # double 0.69523172287660773
	.quad	0x3fe0dc2c2eadc757              # double 0.52687653653104405
	.quad	0x3fda46271352ab6c              # double 0.41053177725796419
	.quad	0x3fd5058eaaefdcbc              # double 0.32846419041693387
	.quad	0x3fedd9ffc095cde5              # double 0.93286121000568001
	.quad	0x3fe5305cb67c5281              # double 0.66215358392453549
	.quad	0x3fe111ffcdf9ae35              # double 0.5334471724467621
	.quad	0x3fe7a32ab7c9b60a              # double 0.73866783042984818
	.quad	0x3fc2b25d13a4807c              # double 0.14606822451696988
	.quad	0x3fe3596a96331933              # double 0.60466508231983196
	.quad	0x3fe6f5b0a098eea6              # double 0.71749144903829598
	.quad	0x3fef5996f9c63859              # double 0.97968624862711373
	.quad	0x3fe8bc94f4dc583a              # double 0.7730202467380487
	.quad	0x3fe2c50164058a4c              # double 0.58654851470448355
	.quad	0x3fe523817116a1da              # double 0.66058418357448123
	.quad	0x3fe09486798103f0              # double 0.51813052874797272
	.quad	0x3fe62c0067da4316              # double 0.69287128719051583
	.quad	0x3fe3cc35cc8adc40              # double 0.61867799710933724
	.quad	0x3fda7d8b96186066              # double 0.41391267450081271
	.quad	0x3fef6113bdb54b85              # double 0.98060023357753378
	.quad	0x3fe5ba5e1cf8be66              # double 0.67899995478178421
	.quad	0x3fe755427b4d4da0              # double 0.72915767748274973
	.quad	0x3fcaa51bd69c17c0              # double 0.20816371897688946
	.quad	0x3fdf06ac1d6e8c68              # double 0.48478224634363309
	.quad	0x3fd600d088d80cae              # double 0.34379971851030688
	.quad	0x3feb02c27dd708a1              # double 0.8440868814289112
	.quad	0x3fe48a56ee8142ce              # double 0.64188715537064822
	.quad	0x3fd3436ede28317e              # double 0.30099078841228522
	.quad	0x3fcb9bbd5ca0cfd0              # double 0.21569029829845343
	.quad	0x3fc107612a5ff41c              # double 0.13303770608027399
	.quad	0x3fb4175eda222bc8              # double 0.078481605773205065
	.quad	0x3fa6530f9345b400              # double 0.043602453925679185
	.quad	0x3feedc25bd63fd31              # double 0.96437346449230265
	.quad	0x3fde7440eb0b5c28              # double 0.47584555581619492
	.quad	0x3fd6f9d9e57b1df6              # double 0.35899970445868179
	.quad	0x3fe7900492b63267              # double 0.73633030562048141
	.quad	0x3fe6ea6434a17ddd              # double 0.7161122348733745
	.quad	0x3fe1393a52e93f1a              # double 0.5382358188016696
	.quad	0x3fedb8e77a9a7cd4              # double 0.92882131525029842
	.quad	0x3feade07050487e7              # double 0.83960295658129958
	.quad	0x3fd24df73cbcd908              # double 0.28600865298666678
	.quad	0x3fcae699923546f4              # double 0.21016235007350981
	.quad	0x3fe615022b215d94              # double 0.69006451057332407
	.quad	0x3faabd7cdb3abd00              # double 0.052226926576048882
	.quad	0x3fede84063ec82e0              # double 0.93460101620084046
	.quad	0x3fe8cadea33ec18b              # double 0.77476436504189061
	.quad	0x3fed6edcde1c6d55              # double 0.91978305226386203
	.quad	0x3fe7e6e32d273aba              # double 0.74693449801437528
	.quad	0x3fcde2f41997a0fc              # double 0.23348857164024384
	.quad	0x3feb874f13ca0cac              # double 0.86026719918335947
	.quad	0x3fd68b2a3f6edffa              # double 0.35224395937575503
	.quad	0x3fe141bba3cdd289              # double 0.53927404396979839
	.quad	0x3fed3c4a253e4663              # double 0.91360957407068744
	.quad	0x3fe8a34b02a98222              # double 0.76993322868299097
	.quad	0x3fb92dde8348b010              # double 0.098356158305876073
	.quad	0x3fb2dd9879362aa0              # double 0.07369378051059039
	.quad	0x3fc7a098fda43970              # double 0.18458855042303979
	.quad	0x3fdbc392523928e8              # double 0.43381174115769605
	.quad	0x3fcf576f0c2bae74              # double 0.24485576719540669
	.quad	0x3fd0743ab5f1b994              # double 0.25709407585136401
	.quad	0x3fede32fabbbc246              # double 0.93398269216238172
	.quad	0x3fec435fb063e3b6              # double 0.8832243390198673
	.quad	0x3fd58f45a6611196              # double 0.33686963317838925
	.quad	0x3fdbeda29f9c85a4              # double 0.43637910449077766
	.quad	0x3fd0d3979092a81a              # double 0.26291455381817885
	.quad	0x3fe1e2f63c8fe00a              # double 0.55895530537145643
	.quad	0x3fdd132647fd7c12              # double 0.45429379492083044
	.quad	0x3fd33964e8becce0              # double 0.30037806252512489
	.quad	0x3fe93ad48e8eb8b8              # double 0.78843143313658626
	.quad	0x3fcd7c55238e8214              # double 0.23035682903447763
	.quad	0x3f57a579fa06a600              # double 0.001443261258922468
	.quad	0x3fe235c1810d5d6a              # double 0.56906199651249989
	.quad	0x3fe2e960cb2810c9              # double 0.59098853758816816
	.quad	0x3fe5f95577ff62cc              # double 0.68668626248389719
	.quad	0x3fafa2c2d842c630              # double 0.061788643740680604
	.quad	0x3fc5fa634729b308              # double 0.17170372938871759
	.quad	0x3febb5c448312c45              # double 0.8659383211137387
	.quad	0x3fcb87970f043d38              # double 0.21507538064222742
	.quad	0x3fd7430023a55582              # double 0.36346438866652175
	.quad	0x3fee68e46b14d3d2              # double 0.95030423082664073
	.quad	0x3fdb28eeb2b0504e              # double 0.42437331628866992
	.quad	0x3fb31da017969868              # double 0.074670797118047028
	.quad	0x3fc5dbad707a9dc8              # double 0.17076652519356927
	.quad	0x3fda3cfff995380c              # double 0.40997313855484729
	.quad	0x3fd19e3164cce3d2              # double 0.27528033107551864
	.quad	0x3fd92546a1e9949a              # double 0.39290014087448244
	.quad	0x3fe59883acc88dc0              # double 0.67486747500191058
	.quad	0x3fe0aef8df92e41f              # double 0.52135890642887606
	.quad	0x3fdce2d5be2632da              # double 0.45134490556010365
	.quad	0x3fd4becb2484ff64              # double 0.32414511267051282
	.quad	0x3fbbd96e81eab610              # double 0.1087864939861094
	.quad	0x3feebc3d46e41242              # double 0.96047843786124809
	.quad	0x3fefce989e147db3              # double 0.99396925807007219
	.quad	0x3fd71ec23dfc0c50              # double 0.36125236561946839
	.quad	0x3fd8461cff4350f2              # double 0.37927937438986625
	.quad	0x3fe97796799f3e6c              # double 0.79584811929994492
	.quad	0x3fe8eab441be7391              # double 0.7786504062711278
	.quad	0x3fadc294759494e0              # double 0.058125151970935596
	.quad	0x3fef68bf3b58baf4              # double 0.98153649893887839
	.quad	0x3fe90fbc69313fbd              # double 0.78317089600931633
	.quad	0x3fd38c80ce39146c              # double 0.30545063151323038
	.quad	0x3febe2fb224e834a              # double 0.87145764065290021
	.quad	0x3fe72dfb57a8a720              # double 0.72436301346644782
	.quad	0x3fcb0535dbae568c              # double 0.21109650827991222
	.quad	0x3feb891ed23e3891              # double 0.86048832953544452
	.quad	0x3fd06bbba41d5c68              # double 0.25657549883675879
	.quad	0x3fe0da38bbe9b8bf              # double 0.52663838102105121
	.quad	0x3fe9c99ab3827359              # double 0.80585990009749786
	.quad	0x3fd319a70d07b38e              # double 0.29844070694417091
	.quad	0x3fdd40b7627b65ae              # double 0.45707497231850425
	.quad	0x3fe00f89c59a46df              # double 0.50189674944177998
	.quad	0x3fe5b83ae275f744              # double 0.67873901587129426
	.quad	0x3fedf4d4a61cfbcf              # double 0.93613655513751748
	.quad	0x3fe3e05c7a18a0a2              # double 0.62113784644045134
	.quad	0x3fe627629d2a1ed9              # double 0.6923077649707593
	.quad	0x3fe840645fd70621              # double 0.75786036223161457
	.quad	0x3fdd7b78ef042f84              # double 0.46066115704956467
	.quad	0x3fd83d2c7ccf4c98              # double 0.3787337511868798
	.quad	0x3fdfff7068a769e4              # double 0.49996576519120439
	.quad	0x3fc37cb2ca81791c              # double 0.15224299324013024
	.quad	0x3fd5bf85c69b7c54              # double 0.33981460948229381
	.quad	0x3fd376166d4aa1b4              # double 0.30408249543190924
	.quad	0x3fd6c22bd5393f1c              # double 0.35560127089137139
	.quad	0x3fdcaef15a0dc7fc              # double 0.44817765993423087
	.quad	0x3fea32c0bda13e45              # double 0.81869542157250719
	.quad	0x3fd4e3d1cfea8e32              # double 0.32640500358886293
	.quad	0x3fdad8ba4bfe4a5c              # double 0.41947801038000931
	.quad	0x3fb3086ca89afc20              # double 0.074347296870641788
	.quad	0x3fb7433e0ef854e8              # double 0.090869787840648919
	.quad	0x3fccfa712d4ae2e8              # double 0.22639288627194465
	.quad	0x3fe8c8fa57e5a44b              # double 0.77453343551054255
	.quad	0x3fe594731a8252bc              # double 0.67437129190019318
	.quad	0x3fea1ae03d6340af              # double 0.81578075399194983
	.quad	0x3fe9ddedeacec845              # double 0.80834098683249833
	.quad	0x3fd7e2fb6e6d8444              # double 0.373228891219757
	.quad	0x3fed3319dc591d91              # double 0.91248791729678846
	.quad	0x3fcf140a8aaa239c              # double 0.24279910822613437
	.quad	0x3fd95786f3272126              # double 0.39596723313708748
	.quad	0x3fe0f742fbcc99b8              # double 0.53018330745253817
	.quad	0x3fcace323f267eac              # double 0.20941761096491029
	.quad	0x3fe705559e42c32e              # double 0.71940117750464139
	.quad	0x3fce80db3c3b56fc              # double 0.2383073848820273
	.quad	0x3fd297f2486b6f3c              # double 0.29052407333596242
	.quad	0x3fcb531f66625134              # double 0.21347420214864032
	.quad	0x3fc1c6a14c3d7068              # double 0.13887420866638256
	.quad	0x3fdaf4e1d29da6a8              # double 0.42119641845656952
	.quad	0x3fe58c936cc69e21              # double 0.67341014142306588
	.quad	0x3fe15f4bb93a51a4              # double 0.54288278748804375
	.quad	0x3fed483792d29a09              # double 0.915065562022222
	.quad	0x3fdab71d685328b6              # double 0.41742644489262248
	.quad	0x3fe291ce54ebe685              # double 0.58029858194568418
	.quad	0x3fe077d6d83c9d45              # double 0.51462881311173503
	.quad	0x3fe5e0a5b6a8324a              # double 0.68367276835631086
	.quad	0x3fcdfd9bae06b314              # double 0.23430200574275573
	.quad	0x3fe46507c43d7497              # double 0.63733280494820377
	.quad	0x3fd5a0a5d6110b0e              # double 0.33793016343058546
	.quad	0x3feaacda83a73ee0              # double 0.83360028947387476
	.quad	0x3fa0f8828f768530              # double 0.033145980846948198
	.quad	0x3fd39f203aa608c0              # double 0.3065872738590194
	.quad	0x3feb6ed4675d7b12              # double 0.85727901638515136
	.quad	0x3fe619bf9cfb751a              # double 0.69064312611195366
	.quad	0x3fc514273c62e8e8              # double 0.16467752884438558
	.quad	0x3fe1b8878d49759b              # double 0.55377557368381092
	.quad	0x3fe015708fb5a83c              # double 0.50261715000420493
	.quad	0x3fbb414ce9feefe8              # double 0.10646515572346937
	.quad	0x3fecaff935ce0679              # double 0.89648113735911672
	.quad	0x3fdc82ee30f21a68              # double 0.44549135951857588
	.quad	0x3febd3c139fddf8e              # double 0.86959897352697779
	.quad	0x3fe39bff01d9151f              # double 0.61279249535497005
	.quad	0x3fef5a1eae3881af              # double 0.97975095775114151
	.quad	0x3fdb04550a1d603a              # double 0.42213941562431823
	.quad	0x3fe049c4d28ff08a              # double 0.50900498509828762
	.quad	0x3fe531f47b4fb925              # double 0.66234802326451769
	.quad	0x3feb5daa4c9eb976              # double 0.85518374409529829
	.quad	0x3fe3a6b2b1b67f28              # double 0.61409887990518985
	.quad	0x3fcd75115ea3481c              # double 0.23013512726771601
	.quad	0x3fe547754c6114c3              # double 0.66497292440239908
	.quad	0x3fd39c836922c760              # double 0.30642781512425721
	.quad	0x3fe9733eafd57c2a              # double 0.79531797735751764
	.quad	0x3fe4aac80671a463              # double 0.64584733255936688
	.quad	0x3fe476d226bd7306              # double 0.63950450483716348
	.quad	0x3fa0fa159ceac640              # double 0.033157992749135889
	.quad	0x3fe55280ae72e9d2              # double 0.66632112571761071
	.quad	0x3fea0ec0b66005c8              # double 0.8143008768094484
	.quad	0x3fee72a5eecd0c59              # double 0.95149513855757128
	.quad	0x3fee135945be5a0c              # double 0.9398619043520866
	.quad	0x3fa9bb4a908b6d30              # double 0.05025704397641062
	.quad	0x3fe9b78f27d0de05              # double 0.80365712906399323
	.quad	0x3fdc64af41e2c43a              # double 0.44364530023728188
	.quad	0x3fdf10e7c6db0b10              # double 0.4854068223905168
	.quad	0x3fccd0e7e0db4f64              # double 0.22512529830293737
	.quad	0x3fe08b3e839c178e              # double 0.516997582483542
	.quad	0x3fa90a72f0097af0              # double 0.048907844354053043
	.quad	0x3feabc17f2c05bb8              # double 0.83546063816435545
	.quad	0x3fdd94e0cb4b22b6              # double 0.46221179821854308
	.quad	0x3fd234a9cd0b27fc              # double 0.28446431182658194
	.quad	0x3fd6accc75bdb1e0              # double 0.3542967939199837
	.quad	0x3fdf57412f18c032              # double 0.48970059966359536
	.quad	0x3fc09f87decae2e8              # double 0.12986849192181826
	.quad	0x3fe9f64b1805f339              # double 0.81131510440864141
	.quad	0x3fe54e7f6b9a1ff7              # double 0.66583224311852873
	.quad	0x3fee8f53d39f8a33              # double 0.95499602635056247
	.quad	0x3fdc7fc9032174b0              # double 0.44529938989382867
	.quad	0x3febde8950f98160              # double 0.87091508689267627
	.quad	0x3fefb73ca5b5f526              # double 0.99111778607735768
	.quad	0x3f9349170e8f58a0              # double 0.018833503974598487
	.quad	0x3fed9d7d821177a7              # double 0.92547488597823679
	.quad	0x3fefa2dbeb0bf640              # double 0.98863025577129093
	.quad	0x3fe61783ee3d0cde              # double 0.69037052660896925
	.quad	0x3fd8bf00ef753564              # double 0.38665793785624758
	.quad	0x3fee67cfb342335f              # double 0.95017228137440302
	.quad	0x3fec5150cae36c2e              # double 0.88492622019419342
	.quad	0x3f9a44d0b4fc1f60              # double 0.025653134390295818
	.quad	0x3fc01bf0e4ec14d0              # double 0.12585269143907007
	.quad	0x3fd8ed78ae7bc382              # double 0.3894941047611199
	.quad	0x3fd674224560b600              # double 0.35083824896977944
	.quad	0x3fca29fb71d36e40              # double 0.20440619523911785
	.quad	0x3fa2d22b9118a1a0              # double 0.036759721242847876
	.quad	0x3feacde796f2d6d1              # double 0.8376348446097045
	.quad	0x3fc97f4b56743b98              # double 0.19919721337688823
	.quad	0x3fc9c2171c1bc3c0              # double 0.20123566505892931
	.quad	0x3fd9a7e693e6f2f6              # double 0.40087284511154964
	.quad	0x3fd2e3594622c24c              # double 0.29512626504132267
	.quad	0x3fec7150ef2cac56              # double 0.88883253778238713
	.quad	0x3fdb9309cae28f12              # double 0.43084950268733835
	.quad	0x3fcf643100538a54              # double 0.24524509921964699
	.quad	0x3fafffe61aaf9ce0              # double 0.06249922824627574
	.quad	0x3fe65000972da6f3              # double 0.69726590659158061
	.quad	0x3fd36d0947cb26e6              # double 0.30353004466142719
	.quad	0x3fde0bdeac0e77bc              # double 0.46947447588342661
	.quad	0x3fefad0adc63f45a              # double 0.98987334294327955
	.quad	0x3fd71a69b87d97c6              # double 0.36098711983356357
	.quad	0x3fef7a704595dbdf              # double 0.98369611349960084
	.quad	0x3fdbf6982dbf8a08              # double 0.43692593066785479
	.quad	0x3fd7175e3d511aba              # double 0.36080127704591869
	.quad	0x3fc3fd0c1a523bfc              # double 0.15615989003387643
	.quad	0x3fe5cdb6dba040f0              # double 0.6813616075105795
	.quad	0x3fe6c9268040dffe              # double 0.71205449151511835
	.quad	0x3fecbfdb6cbea36b              # double 0.89842005957789917
	.quad	0x3fe472ce8bb56cc0              # double 0.63901450430730478
	.quad	0x3fc75fc3e8133b94              # double 0.18261002380174018
	.quad	0x3fe76e5ee43af3d1              # double 0.73222298217990034
	.quad	0x3fa2daee1d8947e0              # double 0.036826554399013167
	.quad	0x3fd92d106e310dd8              # double 0.39337549935245653
	.quad	0x3fee80f697c6bf1a              # double 0.95324258464640654
	.quad	0x3fd20e79986f6bda              # double 0.28213348280195094
	.quad	0x3f9ab84f13489300              # double 0.026093707611056338
	.quad	0x3fd54b76b1436070              # double 0.33273093520029473
	.quad	0x3fef14319407e186              # double 0.9712150469995755
	.quad	0x3feb84b7085b62b2              # double 0.8599505580160296
	.quad	0x3fddfcf3181e8a7c              # double 0.46856381755257082
	.quad	0x3fe2efe10a5ff192              # double 0.59178211237262901
	.quad	0x3fcf6bac69b859c0              # double 0.24547343408694466
	.quad	0x3fcbb0e292c62f48              # double 0.21633560339648228
	.quad	0x3fe8667117bbe303              # double 0.76250509868177152
	.quad	0x3feb30acc93fc38a              # double 0.84969176584682882
	.quad	0x3fe46e56d85b7cee              # double 0.63846914536762056
	.quad	0x3fefec065daac5e9              # double 0.99756162924148583
	.quad	0x3feaa71492079b9c              # double 0.83289555093221023
	.quad	0x3fc04d7e48a60dd0              # double 0.12736490771577147
	.quad	0x3fcd5b4b338561e0              # double 0.229348564297438
	.quad	0x3fdf2bca56a4b918              # double 0.4870477529647288
	.quad	0x3fd997ffe9d0a236              # double 0.39990232308858553
	.quad	0x3fdaaa951e356992              # double 0.41666152906477649
	.quad	0x3fed2147a54868c5              # double 0.91031248361402872
	.quad	0x3fed904e4918879f              # double 0.9238654544499133
	.quad	0x3f844c2fe9292f00              # double 0.0099109404592563344
	.quad	0x3fe5ff01afd7e2da              # double 0.68737873405833771
	.quad	0x3fe5bbf9b7afd2bc              # double 0.6791962230332369
	.quad	0x3fe9a62ee4108593              # double 0.8015360311875831
	.quad	0x3fe7c07a191781a6              # double 0.74224572087046137
	.quad	0x3fd075c85d7a9e44              # double 0.25718888405615226
	.quad	0x3fe998fe797748b4              # double 0.79992603038615195
	.quad	0x3fd799ffa622e132              # double 0.36877433037035978
	.quad	0x3fcb65de8ca41018              # double 0.21404630534391411
	.quad	0x3fd9ed15604cf18e              # double 0.40509542850829738
	.quad	0x3fee46ee56246fa9              # double 0.94615856957124322
	.quad	0x3fd079ca1d46317c              # double 0.25743344172294491
	.quad	0x3fcd131ad42d5b68              # double 0.22714553222860023
	.quad	0x3fb7a0f00f238048              # double 0.09229946488949381
	.quad	0x3fe706faf60915fd              # double 0.71960208944136606
	.quad	0x3fd7967cd7301ade              # double 0.36856003775066692
	.quad	0x3fd51410935299ae              # double 0.32934965502718228
	.quad	0x3fe51d801f390cac              # double 0.65985113237583937
	.quad	0x3fd0adbbe44115ca              # double 0.26060387888386727
	.quad	0x3fdc8a936740318a              # double 0.44595799525338775
	.quad	0x3fd52df8f89b08b4              # double 0.33093094137087609
	.quad	0x3f92bde450515620              # double 0.018302504923061957
	.quad	0x3fccdc85e6342a1c              # double 0.22547982921999299
	.quad	0x3fe1e77b65db1cd4              # double 0.55950708287937312
	.quad	0x3fdb4594c3a27c38              # double 0.4261218939299769
	.quad	0x3fe256bf296a8714              # double 0.57308919991575857
	.quad	0x3fdfe060d69d6fc8              # double 0.4980699630593759
	.quad	0x3fe1a84c387d92c2              # double 0.5517941573458176
	.quad	0x3fe9c5b0bbb00980              # double 0.8053821244978252
	.quad	0x3fef3b23d21c4a1d              # double 0.97596922909935168
	.quad	0x3fefd68942ec992e              # double 0.9949384982217333
	.quad	0x3fd204d7b7d532b8              # double 0.28154557182714823
	.quad	0x3fe114ce7e545a9e              # double 0.53378987001163458
	.quad	0x3fd76b793ee9f7d0              # double 0.3659346689599916
	.quad	0x3fd98ecfd765ecc2              # double 0.39934154543852796
	.quad	0x3fc37ac840d85838              # double 0.15218451658501109
	.quad	0x3fba57d2b70b51f0              # double 0.10290257424214366
	.quad	0x3fec8aebc15bb9d5              # double 0.89195812001508534
	.quad	0x3fd1ae8c860dc2fa              # double 0.27627862063586373
	.quad	0x3fe275ac2937ac17              # double 0.57686431932723081
	.quad	0x3feb262e14e25f77              # double 0.84841064528426002
	.quad	0x3fcc01ea2dc694c4              # double 0.21880843386785476
	.quad	0x3feaf4f963d14ff0              # double 0.84240407462720945
	.quad	0x3fde0ae9db5fe7de              # double 0.46941610739997752
	.quad	0x3fe213dda8121793              # double 0.56492503000548522
	.quad	0x3fd16871260e343c              # double 0.27199963299137031
	.quad	0x3febaeadcb568f3e              # double 0.86507310595013798
	.quad	0x3fe77f6a496b4e01              # double 0.73430361118010989
	.quad	0x3fd188bec8ea4150              # double 0.27397126789675941
	.quad	0x3fefe010f3c9623a              # double 0.99610183348256176
	.quad	0x3f9363afee98d4c0              # double 0.018934964120678854
	.quad	0x3fd1fa937702e1e0              # double 0.28091894743150014
	.quad	0x3fe463efd98ac8b6              # double 0.63719933022209463
	.quad	0x3fd1e323365b0e20              # double 0.27948837574169438
	.quad	0x3fc39fcc83df2770              # double 0.15331417502448685
	.quad	0x3fe6649c7f0ecc79              # double 0.69978165451028851
	.quad	0x3fe297dd3864dfd3              # double 0.58103810324154848
	.quad	0x3fdace540ed6e86c              # double 0.41884328316849095
	.quad	0x3fd971a8a05b1bb6              # double 0.39756217632060087
	.quad	0x3fe01be72885ddf7              # double 0.50340612330086187
	.quad	0x3fb3d7ba67e8bee0              # double 0.077510500305602914
	.quad	0x3fddf107038662c2              # double 0.46783614486916403
	.quad	0x3fc48d0ed8664d64              # double 0.16055474821460358
	.quad	0x3feaef31d165e37d              # double 0.84169855974242547
	.quad	0x3fd2090cc1381792              # double 0.28180235737851789
	.quad	0x3fd0fc80d590a848              # double 0.26541157585109376
	.quad	0x3fd7e32eebad9084              # double 0.37324116721561773
	.quad	0x3fdbe6ff06826f3a              # double 0.43597388873762422
	.quad	0x3fe93b6808ed9299              # double 0.78850175613168283
	.quad	0x3fe781d0b4c06377              # double 0.73459658911734393
	.quad	0x3fd5ce8517d96e7e              # double 0.34072997406995131
	.quad	0x3fe9424df59e2ddb              # double 0.7893438145851478
	.quad	0x3fd46f4604b98d8c              # double 0.31929159604461499
	.quad	0x3fdc4065ccd3960e              # double 0.44143052103604041
	.quad	0x3feaa63552a5155e              # double 0.8327890981824273
	.quad	0x3fe02ca27e535cf8              # double 0.50544857666946452
	.quad	0x3fdc1865b4ccb62a              # double 0.43898909240928907
	.quad	0x3febf71b87862c62              # double 0.87391449422410639
	.quad	0x3f6bea0733bd6300              # double 0.0034074917474921085
	.quad	0x3fe8bc0a29298e7c              # double 0.77295406379239706
	.quad	0x3fcf7e596b86fcd0              # double 0.24604337454181868
	.quad	0x3fd03d351ad99f14              # double 0.25373580572203136
	.quad	0x3fe3fb5701cc6b25              # double 0.62443113662024941
	.quad	0x3fe6bfc8e860c8dc              # double 0.71091122995701594
	.quad	0x3fd44bd126068cfc              # double 0.31712750161587144
	.quad	0x3fe48dd6f802a8a3              # double 0.64231441916969734
	.quad	0x3fe80070f2bcdff7              # double 0.75005385789609036
	.quad	0x3fe7aa70ff43c77a              # double 0.73955583435439043
	.quad	0x3fe0da8ffdfbd087              # double 0.52667998892003787
	.quad	0x3fe2cf5c9df9898b              # double 0.58781271795696577
	.quad	0x3fe2570f1541482d              # double 0.57312730933540978
	.quad	0x3fed644528e23046              # double 0.91849000916546042
	.quad	0x3fe77aec74de266e              # double 0.73375532937752808
	.quad	0x3fdab2090e5a2f16              # double 0.41711641694631518
	.quad	0x3fdfd3675b1ae320              # double 0.49727805993056684
	.quad	0x3fe30063b4570354              # double 0.59379754278789187
	.quad	0x3fddfc6eb99b60ce              # double 0.46853225827863987
	.quad	0x3fd47880932ead46              # double 0.31985487340235286
	.quad	0x3fe005f8d2e3fec9              # double 0.50072899999209952
	.quad	0x3fd77e08d42422fc              # double 0.36706753460798303
	.quad	0x3fe7ab304f2f3b56              # double 0.73964705911371698
	.quad	0x3fe8cc9b24c14f47              # double 0.77497632197125987
	.quad	0x3fc68024a6ef3630              # double 0.17578561926932101
	.quad	0x3fc88a23f607a530              # double 0.19171571267296761
	.quad	0x3fe4fb1b9f065931              # double 0.65565281924754093
	.quad	0x3fe2ee94ed8314ad              # double 0.59162374867505252
	.quad	0x3fe2a7684363a452              # double 0.58293545877416819
	.quad	0x3fe0598243caa197              # double 0.5109263729146275
	.quad	0x3fe434ec0c09eb29              # double 0.631460212243245
	.quad	0x3fd7fbe36b546970              # double 0.37474904519481012
	.quad	0x3fecd02fe0b32611              # double 0.9004134548824273
	.quad	0x3fdd257dd3eef456              # double 0.45541330048201212
	.quad	0x3fc46c361f622640              # double 0.15955235035316839
	.quad	0x3feb08341fd34f48              # double 0.84475141731170655
	.quad	0x3febfa3991256eac              # double 0.87429502819892013
	.quad	0x3fc3821ac0321d54              # double 0.15240797409590334
	.quad	0x3fd498a839edf4be              # double 0.32181745202235479
	.quad	0x3fda863096d0b1c0              # double 0.41444029548690864
	.quad	0x3fd0c060686c1210              # double 0.2617417354342999
	.quad	0x3feb7e31e1b606fb              # double 0.85915464481533321
	.quad	0x3fd0de15e7c162c0              # double 0.2635550273167091
	.quad	0x3fee51d21019580c              # double 0.94748786110244642
	.quad	0x3fed47e9292f4e7e              # double 0.91502817195801334
	.quad	0x3fe67cca2f8f70a3              # double 0.70273312844394231
	.quad	0x3feafe9a6090842c              # double 0.84357947216279205
	.quad	0x3fb98ec9f8cfae40              # double 0.099835036511358943
	.quad	0x3feb998a6ecb87bb              # double 0.86249276771217553
	.quad	0x3fee448ccef9f1f8              # double 0.94586792397563979
	.quad	0x3fd10f0b473b5d72              # double 0.2665432162879916
	.quad	0x3fbb868eeec18000              # double 0.10752194718361352
	.quad	0x3fa2b1ade5130db0              # double 0.036511835301577533
	.quad	0x3fe22c0b52f8182d              # double 0.56787649350076708
	.quad	0x3fe31b84d4db4cdf              # double 0.59710923741877397
	.quad	0x3fa8594761dee8d0              # double 0.047556143471824464
	.quad	0x3fe923df27d15750              # double 0.78562886979009683
	.quad	0x3fd5f86a77807ca8              # double 0.3432871024142039
	.quad	0x3fb5d510a484b3d0              # double 0.085282364049546588
	.quad	0x3fe8fab1c23262eb              # double 0.7806023400217702
	.quad	0x3fe59d30df5498ec              # double 0.67543834323148877
	.quad	0x3fee848c3791abf7              # double 0.95368014195753303
	.quad	0x3fd332c3478bfc3e              # double 0.29997331606859123
	.quad	0x3fb899b818dac7f0              # double 0.096095567768116785
	.quad	0x3fe6f1cd33d45030              # double 0.71701679346961633
	.quad	0x3fe34e8cdb99fb3d              # double 0.60333865061679826
	.quad	0x3fefc5b856f21828              # double 0.99288575154856051
	.quad	0x3fbc368db01a30a8              # double 0.11020741986630134
	.quad	0x3fe6e7188edf9066              # double 0.71570995240155066
	.quad	0x3f79ba3ba30e4380              # double 0.0062811212127521499
	.quad	0x3fe21e0ffd7fbd03              # double 0.56616973411101446
	.quad	0x3fe44f19c6efc02c              # double 0.63465584616461035
	.quad	0x3fe676c6fd013cd7              # double 0.7019991818905521
	.quad	0x3fd689896bcba01c              # double 0.35214458014388739
	.quad	0x3f8af0f40728e600              # double 0.013154894321917077
	.quad	0x3fe288300e36a1a8              # double 0.5791244771581221
	.quad	0x3fedfa0d13347a74              # double 0.93677381278014459
	.quad	0x3fb820f38b30fa70              # double 0.094252797586685366
	.quad	0x3fef157c09bfe116              # double 0.97137262253002876
	.quad	0x3febdc9d3c017518              # double 0.87068044395315081
	.quad	0x3fea75f6a47a66c5              # double 0.82689983486781016
	.quad	0x3fd82331e50ce984              # double 0.37714812629896977
	.quad	0x3fc0b41855037fc0              # double 0.13049606467302333
	.quad	0x3fc3446a568871e0              # double 0.15052537179225478
	.quad	0x3fb68618b52f9250              # double 0.087983650431462168
	.quad	0x3fa3303d73e5f5c0              # double 0.037477417371501343
	.quad	0x3fe09c72ef801cac              # double 0.5190977742903633
	.quad	0x3fcf85ad4361f874              # double 0.24626699247523087
	.quad	0x3fecad26fff96e5a              # double 0.8961367606638746
	.quad	0x3fed84444ed6b615              # double 0.92239585302530946
	.quad	0x3fe9008d5569c2d1              # double 0.78131739313365689
	.quad	0x3fe8ed03b3034285              # double 0.77893242801117479
	.quad	0x3fc4bcca6908162c              # double 0.16201143387313388
	.quad	0x3fdcf01996d1c3c8              # double 0.45215453842598352
	.quad	0x3fe798d81f687098              # double 0.7374077428280712
	.quad	0x3fd26e6ca1e683c0              # double 0.28798976717558489
	.quad	0x3fa64d4e77b2af30              # double 0.043558551894732012
	.quad	0x3fed44a3e48e760b              # double 0.9146289314264221
	.quad	0x3fe1063648218b21              # double 0.5320083054360546
	.quad	0x3fe52bdd8e0edbaa              # double 0.66160466905318072
	.quad	0x3fd5b1d56217e224              # double 0.33897909717009811
	.quad	0x3fd45d93c8e90cb6              # double 0.31821150417472255
	.quad	0x3fd77fb2d966431e              # double 0.3671691058198564
	.quad	0x3fc5c58a705f95a0              # double 0.17009096610051433
	.quad	0x3fd06c7b51aedbb0              # double 0.2566211984334883
	.quad	0x3fc184cf0196a11c              # double 0.13686549737509146
	.quad	0x3fa21f96b4563260              # double 0.035397252572782589
	.quad	0x3fed724ed3ab9a6d              # double 0.92020360319004413
	.quad	0x3fe9dc89a00aecfc              # double 0.80817109354339278
	.quad	0x3fe60c1e82fc1b96              # double 0.68897939284294085
	.quad	0x3fef5ed08415c61b              # double 0.98032403753149155
	.quad	0x3f81ca930026e680              # double 0.0086871609135983352
	.quad	0x3fc4d0a35365990c              # double 0.16261712619888902
	.quad	0x3fd993437dfab774              # double 0.39961325934097336
	.quad	0x3fc60dafe5f8de04              # double 0.17229269723041807
	.quad	0x3fec6975167e95e1              # double 0.88787321465923352
	.quad	0x3f9a0f216e62c0a0              # double 0.025448343622600178
	.quad	0x3fdfb4ea45892ec0              # double 0.49541718283283487
	.quad	0x3fd2981121842908              # double 0.29053142808028598
	.quad	0x3feb6b9569339761              # double 0.85688276812718922
	.quad	0x3fd7b9731883a25e              # double 0.37069394487347107
	.quad	0x3fca6b046f5796d4              # double 0.20639090954425987
	.quad	0x3feeb1ab86dd50a3              # double 0.95918823567128119
	.quad	0x3fc93bf154e8b498              # double 0.19714180608699361
	.quad	0x3fc6301ac078364c              # double 0.17334303281716001
	.quad	0x3fe04d229ed8d6c5              # double 0.50941592240152345
	.quad	0x3fe9661d614e0f16              # double 0.79371518139712083
	.quad	0x3fca638f7bef9ba0              # double 0.20616334487496335
	.quad	0x3fe6e6f5f635af4b              # double 0.71569345558007436
	.quad	0x3fd1783fabab512e              # double 0.27296439899989167
	.quad	0x3fe94ed96691e092              # double 0.79087514908953183
	.quad	0x3fd2cac511f23004              # double 0.29362608673613999
	.quad	0x3fe94432b3ca67b9              # double 0.78957495799408328
	.quad	0x3fe16b2adf043787              # double 0.54433196599869482
	.quad	0x3fe3dd5c59d5b03e              # double 0.62077157541126105
	.quad	0x3f0b652b03f54000              # double 5.2252173640909838E-5
	.quad	0x3fd05c2f8fd6a890              # double 0.25562657400826883
	.quad	0x3fc7a061aef0eb20              # double 0.18458195726437854
	.quad	0x3fe0b8dd7a97bd14              # double 0.52256654685871462
	.quad	0x3fc467aecb94a820              # double 0.15941414776290319
	.quad	0x3fc5acf8315a9f48              # double 0.16934111032355248
	.quad	0x3fb641fd69dc9708              # double 0.086944425912033663
	.quad	0x3fc52c360fffceec              # double 0.16541171818936762
	.quad	0x3feb40776656e115              # double 0.85161943424376096
	.quad	0x3fe9640b7bb4529a              # double 0.79346250687611364
	.quad	0x3fc7256e35cde030              # double 0.18082978846700959
	.quad	0x3faab93ff1fa2ce0              # double 0.052194593704450787
	.quad	0x3fc503d683157b20              # double 0.16417962456304114
	.quad	0x3fec166036495499              # double 0.87773142435857487
	.quad	0x3fa451865f3b2180              # double 0.039684485554576376
	.quad	0x3fd68d4dd8d865da              # double 0.35237451721476776
	.quad	0x3fe43ff5696f35ba              # double 0.63280745117815873
	.quad	0x3fe55f85d723a253              # double 0.66791049975752015
	.quad	0x3fe130b503517d3c              # double 0.53719568870648216
	.quad	0x3fed57369d99b2d2              # double 0.91689615994763529
	.quad	0x3fe224ac537d75f2              # double 0.56697670275360523
	.quad	0x3fe0fd9ced655d6a              # double 0.53095861784360676
	.quad	0x3fe1e9a84143fb39              # double 0.55977261302164216
	.quad	0x3fe6c633485f9bda              # double 0.71169437537616465
	.quad	0x3fee1fe10a46a1af              # double 0.94139148718845955
	.quad	0x3fed46950ce5d273              # double 0.91486599463548968
	.quad	0x3fe13160af6bb193              # double 0.53727754842616304
	.quad	0x3fea0d9aa9bbc1fa              # double 0.81416066313801072
	.quad	0x3fedc8309ad89caa              # double 0.93068723910700624
	.quad	0x3fcd4f9e58f437fc              # double 0.22899226516204851
	.quad	0x3fd7ed8e4909783e              # double 0.37387425549048092
	.quad	0x3fed6e326125c8c3              # double 0.91970175718440605
	.quad	0x3f9532f866f5af80              # double 0.020702248844301163
	.quad	0x3fe4d443399d19f4              # double 0.65091096165343609
	.quad	0x3fe9cff0c962b6b7              # double 0.80663337071538066
	.quad	0x3fd8ff74c752302c              # double 0.39059180703111696
	.quad	0x3fec5aa45fd49bc3              # double 0.88606470791716452
	.quad	0x3fee4f99fc74469f              # double 0.94721698100530094
	.quad	0x3fee47204e12dbfc              # double 0.9461823964001037
	.quad	0x3fe6d305f9ae7719              # double 0.71325968519133476
	.quad	0x3fe148a2f5286ec4              # double 0.54011676676187692
	.quad	0x3fdbd1848f3319f0              # double 0.43466295227372509
	.quad	0x3fd49a476852361e              # double 0.32191643893824728
	.quad	0x3fe8791a04148759              # double 0.76478291317855984
	.quad	0x3fed8539e41c309f              # double 0.92251295616872031
	.quad	0x3f8270dfd165ca80              # double 0.0090043531206209781
	.quad	0x3fe6f965e54300c3              # double 0.7179440953987285
	.quad	0x3fd95e19394ed278              # double 0.39636831852411758
	.quad	0x3fde5a86aa2c68dc              # double 0.4742752706384985
	.quad	0x3fe3a1d42903c065              # double 0.61350448618578624
	.quad	0x3fdf9507295876c2              # double 0.49347094571735906
	.quad	0x3fd2795ebd71c520              # double 0.28865784168654507
	.quad	0x3fbf25fae66ffc40              # double 0.12167328000940447
	.quad	0x3feaadc29a672878              # double 0.83371095806911821
	.quad	0x3fe9a5c5695f8542              # double 0.80148573475541007
	.quad	0x3fd223dd5289f6fc              # double 0.28343899784509552
	.quad	0x3fc30ef9686ebed4              # double 0.14889447783706677
	.quad	0x3fc35ee84ffbe9b0              # double 0.15133384614439427
	.quad	0x3fdd49bd32368a88              # double 0.45762567428224843
	.quad	0x3fe229b8ee3450e0              # double 0.56759306453980329
	.quad	0x3fe51821ace0d703              # double 0.65919574513711188
	.quad	0x3feef91025558ddb              # double 0.96790320674738994
	.quad	0x3fe524f9045d3183              # double 0.66076327183104444
	.quad	0x3fe3b6997b03d636              # double 0.61603998209347455
	.quad	0x3feedd98911c0a66              # double 0.96455028859811587
	.quad	0x3fe1ec496e5befa1              # double 0.56009360842243805
	.quad	0x3fe77200f116cc13              # double 0.73266646468835217
	.quad	0x3fc8154dbd76f544              # double 0.18815013648228718
	.quad	0x3fdc7e5cb90aee5e              # double 0.44521253653122084
	.quad	0x3fe52e91f11b8015              # double 0.66193482486051158
	.quad	0x3fd8c0453d6d60a4              # double 0.3867352580905481
	.quad	0x3fa55720f8695020              # double 0.041680364917425772
	.quad	0x3feaabd4dd91bc30              # double 0.83347552561997951
	.quad	0x3fd03f573d6eddf4              # double 0.2538660144741407
	.quad	0x3fe3d26ec6515afa              # double 0.61943758710808017
	.quad	0x3fd9a406d50e9fac              # double 0.40063639456138378
	.quad	0x3fdb17217fd13fb8              # double 0.4232867954460704
	.quad	0x3fe64f65e27dcc0b              # double 0.69719213711357619
	.quad	0x3fe63294d19b4ae0              # double 0.69367447794715176
	.quad	0x3fedb172b76f9bb9              # double 0.92791114642465466
	.quad	0x3fe4702ce3f6acfd              # double 0.63869328045021201
	.quad	0x3fe38b21524db5e6              # double 0.61073366236604154
	.quad	0x3fcb7b25e32068dc              # double 0.21469567861715333
	.quad	0x3fc153b834715508              # double 0.13536741791418927
	.quad	0x3fdf3455760b56f4              # double 0.48756920364154088
	.quad	0x3fe1d9a7d5a8e2ab              # double 0.55781928759013988
	.quad	0x3fcc4532fd34d5e0              # double 0.22086179126351535
	.quad	0x3fe56f799a22c968              # double 0.66985778908410243
	.quad	0x3fe08a22d70888c2              # double 0.51686231611918054
	.quad	0x3fc50df78354de58              # double 0.16448873436614764
	.quad	0x3fcb27a10bc307e4              # double 0.21214688371952584
	.quad	0x3fc1e43b6c65fa24              # double 0.13977759163749781
	.quad	0x3fe86698d74077a4              # double 0.76252405206081563
	.quad	0x3fedf783867e70d2              # double 0.93646408336965181
	.quad	0x3fe6c45eb6121b0e              # double 0.71147094307602443
	.quad	0x3fe4c14fc6e2b9ff              # double 0.64859761090139034
	.quad	0x3fc42997eeaeec60              # double 0.15751933245141725
	.quad	0x3feaf4554d4a7f57              # double 0.84232583137416384
	.quad	0x3fce4697fb68461c              # double 0.23652934814212834
	.quad	0x3fe93d14e1a048b2              # double 0.78870624606704198
	.quad	0x3fc24520d4a65458              # double 0.14273462661063507
	.quad	0x3fe26f9c77c8d660              # double 0.57612441440023687
	.quad	0x3fd45b14500c5584              # double 0.318059042141009
	.quad	0x3fee680e9c9260d6              # double 0.95020227985790018
	.quad	0x3fe7fe58ccdf6c31              # double 0.74979820265014585
	.quad	0x3feac5432a3225c7              # double 0.83657987824806745
	.quad	0x3fd6c34006f045a8              # double 0.35566712071985274
	.quad	0x3fb7170125271f78              # double 0.090194770403398183
	.quad	0x3fee18f5b360b2c5              # double 0.94054684672081434
	.quad	0x3fe19203ecc04e5c              # double 0.5490741371199408
	.quad	0x3fddd6e32631509a              # double 0.46624068002462027
	.quad	0x3fe641be339e55ad              # double 0.69552526551949756
	.quad	0x3fcee8f80a8367e0              # double 0.24148464692444715
	.quad	0x3fee5e659b0b81af              # double 0.94902305872169801
	.quad	0x3fee2a3269006790              # double 0.94265099056359425
	.quad	0x3fcf9d7437d14d2c              # double 0.24699261403530082
	.quad	0x3fa7180c671fbef0              # double 0.045105350101833142
	.quad	0x3fe6d1f1b4620326              # double 0.71312794905688714
	.quad	0x3fe4b35e2ae4572b              # double 0.64689548852286316
	.quad	0x3fde23a8e47ea27e              # double 0.47092649759228056
	.quad	0x3fe5f245e516a6e1              # double 0.68582434409946924
	.quad	0x3fd24e089cdaa37c              # double 0.28601279561785709
	.quad	0x3fb8f60703fcf1c0              # double 0.097504080270431892
	.quad	0x3fcf8dd784a12538              # double 0.24651617027329009
	.quad	0x3fb7d7b9d4f9ea50              # double 0.093135466095114027
	.quad	0x3fcdddf7af80e98c              # double 0.23333641118535942
	.quad	0x3fa93b2c7e52ce10              # double 0.049279585285514682
	.quad	0x3fb6da46a6370c20              # double 0.089268127040711409
	.quad	0x3fc2d4637f7909b0              # double 0.14710658764131557
	.quad	0x3fe119a0b2d67b22              # double 0.53437838486920364
	.quad	0x3fdc7cb11202bb60              # double 0.44511057623724604
	.quad	0x3fd6b8f8559c4f7c              # double 0.35503967628869026
	.quad	0x3fe754175a2124ab              # double 0.72901504138385087
	.quad	0x3fe66b603c27ecd0              # double 0.70060741185388942
	.quad	0x3fef6a2a2020ac09              # double 0.98170954012800948
	.quad	0x3fe2cd15364b8a4a              # double 0.58753452877528756
	.quad	0x3fed4c9ca74828b9              # double 0.91560204193344596
	.quad	0x3fcb59a81a4d3074              # double 0.21367360386136947
	.quad	0x3fe18c66793250eb              # double 0.54838870688629748
	.quad	0x3fd3bb8e4dbf1930              # double 0.30832250206403256
	.quad	0x3fc582a057f75394              # double 0.16804889960499436
	.quad	0x3fa7fc241c2981c0              # double 0.046845558583985092
	.quad	0x3fe5de06a82decb4              # double 0.68335278365647989
	.quad	0x3fe50a1aa3abe14b              # double 0.65748340575286457
	.quad	0x3fecca221c617ad9              # double 0.89967446845170251
	.quad	0x3fec053afc143834              # double 0.87563847765136992
	.quad	0x3fb19c6761a68d68              # double 0.068792783108212796
	.quad	0x3fbda520a12165e8              # double 0.11580089506005431
	.quad	0x3fd19c8aa794549a              # double 0.2751795422094091
	.quad	0x3fbeccc7f72ebcf0              # double 0.12031221184473728
	.quad	0x3fd5c53d88554d52              # double 0.34016359628477233
	.quad	0x3fe0711b4d242bff              # double 0.51380696360263289
	.quad	0x3fc9878c5bc87f54              # double 0.19944910508729186
	.quad	0x3fd38d44a2e9f6e0              # double 0.30549732122004336
	.quad	0x3fe1be59f5aa7d24              # double 0.55448625547061114
	.quad	0x3fd7fa845376f476              # double 0.3746653380474706
	.quad	0x3fc156f4b14e1e0c              # double 0.13546618134954291
	.quad	0x3fe1830cccac3b6b              # double 0.54724731421616235
	.quad	0x3fed4bd9fcfea0fa              # double 0.91550921834007615
	.quad	0x3fe3f287906e4e33              # double 0.6233556576648368
	.quad	0x3fecf4406adb7bca              # double 0.90481587286546383
	.quad	0x3feb342f2f9bd2c3              # double 0.8501201562745212
	.quad	0x3fc860ed6141dd28              # double 0.19045798539057412
	.quad	0x3fe7be4758126e5f              # double 0.74197737886010973
	.quad	0x3fe61dfab580445b              # double 0.69115958642408815
	.quad	0x3fda84ba9459e386              # double 0.41435112464346735
	.quad	0x3fe1fed53fe80a3d              # double 0.56235754472465482
	.quad	0x3feed7b48e23f90b              # double 0.96383121263332449
	.quad	0x3fb837837d6fbd10              # double 0.094597070812359129
	.quad	0x3fe2bb8b562041ae              # double 0.58539358922467044
	.quad	0x3fee8d7a7511f1cd              # double 0.95477030625584691
	.quad	0x3fdf13da193ee2e8              # double 0.48558666673083772
	.quad	0x3fe5208db20319f7              # double 0.66022381561270904
	.quad	0x3fe5583a5d010b1e              # double 0.66702001728876659
	.quad	0x3fefc359091eede6              # double 0.99259616643342663
	.quad	0x3fd7e6ef3d37a658              # double 0.37347012499103505
	.quad	0x3fe1bd66da797919              # double 0.55437033339311192
	.quad	0x3fd41c132506d1ee              # double 0.31421354881174934
	.quad	0x3fcf1f7e3a776474              # double 0.24314859251788656
	.quad	0x3fd8d8103cac3ade              # double 0.38818746495318901
	.quad	0x3f9c443d95c53fc0              # double 0.027604067102686036
	.quad	0x3fe6be33ef9f71ab              # double 0.71071812440236692
	.quad	0x3fe0509767de5356              # double 0.50983782088097018
	.quad	0x3fe6898b5819ca98              # double 0.70429007727792037
	.quad	0x3fe8919be2408cb1              # double 0.76777452649948519
	.quad	0x3fe329a88711f1fe              # double 0.59883524304274238
	.quad	0x3fea089ab4cd2e2e              # double 0.81355033219137396
	.quad	0x3fe89df4ebfd09c8              # double 0.76928182689180691
	.quad	0x3fa76bfe91d13b50              # double 0.045745806980099446
	.quad	0x3fcb18c722c21d8c              # double 0.21169366070919826
	.quad	0x3fea42d3e8f23038              # double 0.82065768716120768
	.quad	0x3fdd8506a988cb40              # double 0.46124426418389319
	.quad	0x3fe84a8bab48d1c8              # double 0.75909980253214204
	.quad	0x3fe0f604feb3f592              # double 0.53003167864487666
	.quad	0x3fe095b0b9737233              # double 0.51827274533167722
	.quad	0x3fcd651c08b9646c              # double 0.2296481173132493
	.quad	0x3fdb3d0aa35964a8              # double 0.4256006808478312
	.quad	0x3fe0b936e329e53a              # double 0.52260918014432112
	.quad	0x3fe1007a56a91ab0              # double 0.53130833555117896
	.quad	0x3fda5faa39d92f60              # double 0.41208892487769866
	.quad	0x3faa72554aa9b200              # double 0.051653542865867763
	.quad	0x3fc19862a877bab8              # double 0.1374629328342587
	.quad	0x3fdb13e382acbf54              # double 0.42308891068659205
	.quad	0x3fae81f3df3a0f30              # double 0.059585209845890552
	.quad	0x3fe0d00d35881dd6              # double 0.52539692359362777
	.quad	0x3fc38911335e03a4              # double 0.15262045868078389
	.quad	0x3fb10b850d5cb720              # double 0.066582027208565098
	.quad	0x3fe06e69c6efe77f              # double 0.51347817282588426
	.quad	0x3fd4dae55c89f6e2              # double 0.32586034810070263
	.quad	0x3fe2bd3c4009ffb2              # double 0.58560001857403265
	.quad	0x3fe16b6184231a3b              # double 0.54435802276640943
	.quad	0x3fdcba9b6301f1d4              # double 0.44888958615027019
	.quad	0x3fe4437afffee7f8              # double 0.63323736190000002
	.quad	0x3fcc885cacdd9a40              # double 0.22291143837647276
	.quad	0x3fb32701edf6b7c8              # double 0.07481395778333344
	.quad	0x3fd0bf8b197138ba              # double 0.26169087872120722
	.quad	0x3f8fa31603622840              # double 0.015447780588392246
	.quad	0x3feb78aedfd11556              # double 0.85848182405667717
	.quad	0x3fefea748e996288              # double 0.99737003184698469
	.quad	0x3fedd84aff45daa3              # double 0.93265294893247519
	.quad	0x3fd80711ba1787ea              # double 0.37543147252119857
	.quad	0x3fee0f6b63b52487              # double 0.93938226198328401
	.quad	0x3fcf6f52433277e4              # double 0.24558475762472576
	.quad	0x3fecc944418651fb              # double 0.89956867978850086
	.quad	0x3fda7c837ce337ea              # double 0.41384970851947733
	.quad	0x3fe698157832a3a2              # double 0.70606492496618878
	.quad	0x3fe8cca41d6fccf3              # double 0.77498059987411094
	.quad	0x3fda00c5801739f2              # double 0.40629708775386952
	.quad	0x3fd29b62317e9d5c              # double 0.29073386033492965
	.quad	0x3fc36426b560b3b4              # double 0.15149387222609578
	.quad	0x3fb2d5da680b4c28              # double 0.073575640107535478
	.quad	0x3fedfc918c152dd3              # double 0.93708112106235786
	.quad	0x3fe0f7da078f9e70              # double 0.53025533177146933
	.quad	0x3fc3a39435f05c08              # double 0.15342953332648812
	.quad	0x3fc449f17136d3b0              # double 0.15850656536136176
	.quad	0x3f6906de754e9100              # double 0.0030550331961923805
	.quad	0x3fbf334ad65dff58              # double 0.12187640889714879
	.quad	0x3fea13166abbae57              # double 0.8148300251609254
	.quad	0x3fe69f1f85c74a3b              # double 0.70692421082123447
	.quad	0x3fea161fcfc9a6bb              # double 0.81520071586165643
	.quad	0x3fe135654a5e0563              # double 0.53776802563531267
	.quad	0x3fe2de3f388b5f4b              # double 0.58962975543816165
	.quad	0x3fe51d0747dddde2              # double 0.65979351078470594
	.quad	0x3fe863316247c584              # double 0.7621085090196833
	.quad	0x3fdc80b1d2b5d058              # double 0.44535489632767655
	.quad	0x3fe7c4f9412f840c              # double 0.74279463512005028
	.quad	0x3fe5dc82ab106586              # double 0.68316777621218772
	.quad	0x3fe720c57932ab48              # double 0.72275041266889506
	.quad	0x3fe694c8405ab845              # double 0.70566189355100362
	.quad	0x3feac7ad3e4cd569              # double 0.83687460105890665
	.quad	0x3fe053ec39554689              # double 0.51024447629807057
	.quad	0x3fd0468401a19dbc              # double 0.25430393370922011
	.quad	0x3fdd519b19646c0a              # double 0.45810582618440832
	.quad	0x3fe52297cb29051b              # double 0.66047277145131333
	.quad	0x3fe8bdab9cbd1723              # double 0.77315312016500959
	.quad	0x3fe6797f3c3be58f              # double 0.7023311783261067
	.quad	0x3fdce69177c81aae              # double 0.45157276818683101
	.quad	0x3fe90e4dbb3e4ba1              # double 0.78299604960408342
	.quad	0x3fda0a398869c0ec              # double 0.4068740684661083
	.quad	0x3fe94f23c031f26b              # double 0.79091060197931762
	.quad	0x3fd14d42ffb38384              # double 0.27034068079779439
	.quad	0x3fc2bcca61dc1078              # double 0.14638643053342881
	.quad	0x3fda15eafc722048              # double 0.4075877633372369
	.quad	0x3fe5f664c62b3f3d              # double 0.68632734970922338
	.quad	0x3fe61f70873a46cc              # double 0.69133783733033161
	.quad	0x3fa30af68480e440              # double 0.037193015742055469
	.quad	0x3fed2c628b4f5b00              # double 0.91166808327656668
	.quad	0x3fe91a8d15063c2c              # double 0.7844911013252207
	.quad	0x3fa40b22fd348020              # double 0.039147466095755812
	.quad	0x3fd5487189f7e152              # double 0.33254660104241396
	.quad	0x3fecc38d4560ba05              # double 0.89887107420310086
	.quad	0x3fe5b5c0ed9c2756              # double 0.67843672187994275
	.quad	0x3fee49d546a318e9              # double 0.94651283069904679
	.quad	0x3fe6d269f7a24368              # double 0.71318529478058412
	.quad	0x3fe335bc274f468d              # double 0.60030944516820883
	.quad	0x3fed47596e68053a              # double 0.91495963634239463
	.quad	0x3fe1e5b514444262              # double 0.55929044683768958
	.quad	0x3fecfc140bce2ed5              # double 0.90577127748243902
	.quad	0x3fbac188571b8838              # double 0.10451557280205825
	.quad	0x3fee15165267901a              # double 0.94007412047040195
	.quad	0x3fe5ac53654a17ac              # double 0.67728585990038459
	.quad	0x3fe6d195b842cd69              # double 0.71308408726183103
	.quad	0x3f5d6f2cdb916600              # double 0.0017965257705071513
	.quad	0x3fd4bb9ec2c16716              # double 0.32395142573442237
	.quad	0x3fed6b11bf0129d7              # double 0.91931998544287807
	.quad	0x3fd93e12e45467ca              # double 0.39441368387053599
	.quad	0x3fe0b465a87cd69e              # double 0.52202113063568212
	.quad	0x3fc077bcb32324e4              # double 0.12865408656060773
	.quad	0x3fe6be79f201b465              # double 0.71075150744367177
	.quad	0x3fcf9ac335c1e414              # double 0.24691047787544618
	.quad	0x3fe29b7505dc1c3f              # double 0.58147669929974899
	.quad	0x3fc004d1b502b178              # double 0.12514706934360809
	.quad	0x3fc980a84f0640d4              # double 0.1992388139592608
	.quad	0x3fe20ac81f3cb8ea              # double 0.56381612874045328
	.quad	0x3fd9d863cf721b96              # double 0.4038323903882256
	.quad	0x3fdb119190590cb6              # double 0.42294730278463122
	.quad	0x3fe042d0bb639c37              # double 0.50815617179330885
	.quad	0x3fca3fec18d95470              # double 0.20507575238540054
	.quad	0x3fdbf6a5994ac3c8              # double 0.43692913026739832
	.quad	0x3fe531405007246b              # double 0.6622621119542037
	.quad	0x3fef89791584fd86              # double 0.98553137019182269
	.quad	0x3fefba0e327361e5              # double 0.99146184781698976
	.quad	0x3fcfe578978ea808              # double 0.24919040107971591
	.quad	0x3fcc2836a1a0fa40              # double 0.21997721569091944
	.quad	0x3fe81d32586b94a0              # double 0.75356404561593492
	.quad	0x3fcb71864d7b37a8              # double 0.21440199645297509
	.quad	0x3fd66b6c3926f670              # double 0.350306564152425
	.quad	0x3feccd98b53c6b10              # double 0.90009723088891924
	.quad	0x3fd27c8ec84ba29a              # double 0.28885240135290646
	.quad	0x3f9921b253a8c580              # double 0.024542604786068178
	.quad	0x3feaa63d639566c1              # double 0.83279294443055829
	.quad	0x3fccff2517f63808              # double 0.22653640432366751
	.quad	0x3fc461f7b9aa4db8              # double 0.15923973622976262
	.quad	0x3fe61c55bfd03613              # double 0.69095885718860683
	.quad	0x3fc1fdff0f00d980              # double 0.14056385262092519
	.quad	0x3fd5c6cd2274422a              # double 0.34025886883412915
	.quad	0x3feceb6e37fde313              # double 0.90373907981765667
	.quad	0x3fe205354d85c113              # double 0.56313576832875112
	.quad	0x3fe3ffb6e8b968df              # double 0.62496514753300036
	.quad	0x3fed46412d2374e0              # double 0.91482600036729522
	.quad	0x3fef6d941a9c8b89              # double 0.98212628552970315
	.quad	0x3fe62d9cd6f70ae4              # double 0.69306795106271268
	.quad	0x3fea8063fe5c0284              # double 0.82817268065998961
	.quad	0x3fe88fab1b9a4615              # double 0.76753764525546109
	.quad	0x3fe740121d0a19a1              # double 0.72657113715904498
	.quad	0x3fbca765f863dcc0              # double 0.11192929567538368
	.quad	0x3fe6d43c8f94b90b              # double 0.71340778391984949
	.quad	0x3fe8516db227b9ea              # double 0.75994000240262705
	.quad	0x3f50002fd2beac00              # double 9.7660703884616673E-4
	.quad	0x3fd2939a007044c6              # double 0.2902588848383626
	.quad	0x3fe34b28e27d9590              # double 0.60292476879537737
	.quad	0x3fefcba8b4f7d48f              # double 0.99361071915940779
	.quad	0x3fbd2e81c7072480              # double 0.11399088963584525
	.quad	0x3fe4cce1675a5abe              # double 0.65000982462046131
	.quad	0x3fd6ed9dc3172008              # double 0.3582529454401997
	.quad	0x3fdeb57e1f7df63c              # double 0.47982743335146316
	.quad	0x3fd7a709d1bed5ba              # double 0.36957021220163322
	.quad	0x3fe856384e1efb93              # double 0.76052489526760991
	.quad	0x3fd0e789fbc49cec              # double 0.26413201891632698
	.quad	0x3fdb9597b1fd6304              # double 0.43100540525260578
	.quad	0x3fe314c661fa0238              # double 0.59628600250295616
	.quad	0x3fde17ddf3ba4d2a              # double 0.4702067260888777
	.quad	0x3fe66633ddc1ff65              # double 0.69997590362616491
	.quad	0x3fde92c02ecc98bc              # double 0.47770695276484409
	.quad	0x3fd95e70afdbcc6e              # double 0.39638917134943241
	.quad	0x3fc284bb887547f4              # double 0.14467567599291409
	.quad	0x3fe8a4b98cb79a4b              # double 0.77010800823047398
	.quad	0x3fd5fb652a05f302              # double 0.34346894363243063
	.quad	0x3fdc6eb67b1aeef6              # double 0.44425737401955645
	.quad	0x3fd3b690698aaf34              # double 0.30801782900629182
	.quad	0x3fd997e049e8d32c              # double 0.39989478318902871
	.quad	0x3fd93b2425a847f0              # double 0.39423469235873565
	.quad	0x3fe2121a53dcdd7c              # double 0.56470981959766631
	.quad	0x3fe3e475f8a47cfb              # double 0.62163828433031598
	.quad	0x3fe8f015868c42c7              # double 0.77930713919530425
	.quad	0x3fe2aeeb9417338d              # double 0.58385256694747201
	.quad	0x3fe066f146e3d303              # double 0.51256622167292709
	.quad	0x3fda476d213afb1a              # double 0.41060951466708817
	.quad	0x3fd10b76159705f0              # double 0.26632454021827723
	.quad	0x3fa0057a6809f600              # double 0.031291794967710729
	.quad	0x3f9cb876f936bf40              # double 0.028047427140051484
	.quad	0x3fe582e867184f09              # double 0.67222995887502279
	.quad	0x3fcd39c1fd17b280              # double 0.22832512720141906
	.quad	0x3fa1e14583690970              # double 0.034921810427948397
	.quad	0x3fe3068fd1084194              # double 0.59455099894153074
	.quad	0x3fc50cdccaf81860              # double 0.16445503149606377
	.quad	0x3fe23f513e1426b9              # double 0.57022916912793342
	.quad	0x3fe96b2ac89a27a5              # double 0.79433192424879862
	.quad	0x3fe1ec9d4ca1c6bd              # double 0.56013359992194689
	.quad	0x3fd69971591e3204              # double 0.35311540320324775
	.quad	0x3fcbc28d4d672078              # double 0.2168747547095824
	.quad	0x3fc021d3e88183d4              # double 0.1260323415072252
	.quad	0x3fd82ac823a4f3f4              # double 0.37761119347470573
	.quad	0x3fec5cf016f340a0              # double 0.88634495241605648
	.quad	0x3fc6a8f0c1c2235c              # double 0.17703065358025583
	.quad	0x3fea363443e44eec              # double 0.81911671886561299
	.quad	0x3fb8f8a5f67e03b0              # double 0.097544071844835711
	.quad	0x3fe87cf2c0d2bcf7              # double 0.76525247250347561
	.quad	0x3fc195d9a7b7874c              # double 0.1373855656557289
	.quad	0x3fd08715779372a0              # double 0.25824486424770932
	.quad	0x3fee4f89b312f6e3              # double 0.94720921492963972
	.quad	0x3fedf843fceb6cde              # double 0.93655585668912145
	.quad	0x3fe51e31bcc0fbdb              # double 0.65993582597718203
	.quad	0x3fe960b24dac8da2              # double 0.7930537716933268
	.quad	0x3fe3588ad7a49557              # double 0.60455839269404066
	.quad	0x3fe45775738dd6d9              # double 0.63567612237121829
	.quad	0x3fe00dc79b88c2c8              # double 0.5016820943620468
	.quad	0x3fe765b1986c3d8a              # double 0.7311637856491171
	.quad	0x3fdde2ffc56bae5e              # double 0.46697992591245974
	.quad	0x3fea956bdbd1dcec              # double 0.83073990758466953
	.quad	0x3fdd88d04bc384aa              # double 0.46147544287493736
	.quad	0x3fee4404378cb9b3              # double 0.94580279206802798
	.quad	0x3fefa844224a8de6              # double 0.98929030129914675
	.quad	0x3fe8f942f31569af              # double 0.78042743184351149
	.quad	0x3fecc47b7466dbef              # double 0.89898464903569486
	.quad	0x3fe63ceec0959c21              # double 0.69493806471007613
	.quad	0x3fe5e3a9cc9e3ab3              # double 0.68404092754811641
	.quad	0x3fe2f2cda1a9c473              # double 0.59213906836352093
	.quad	0x3fe00b26bb1dbd00              # double 0.5013612417805291
	.quad	0x3fb55fc2cd9ffc08              # double 0.083492446137810927
	.quad	0x3f8932841e7bc540              # double 0.01230338304546541
	.quad	0x3fe799f00d9fa3a2              # double 0.73754122410638367
	.quad	0x3fc090220de4c7c0              # double 0.12939859083559035
	.quad	0x3fb0e1e31b9f6520              # double 0.065946764224822818
	.quad	0x3fd57a1c06f18156              # double 0.33557797124924116
	.quad	0x3fe9edf33f04c765              # double 0.81029665287335872
	.quad	0x3fe086930871a7c1              # double 0.51642753266536812
	.quad	0x3f747858ad70c200              # double 0.0049975837674058887
	.quad	0x3fe834e1c7261ec3              # double 0.75645531555434109
	.quad	0x3fd8d7311b95de42              # double 0.38813426679505281
	.quad	0x3feca5bd9ab2ff23              # double 0.89523201193512525
	.quad	0x3fe4ee0b4202ed77              # double 0.65405810253962116
	.quad	0x3fe2b52c8e207044              # double 0.58461597212909355
	.quad	0x3feb62817c2cfd1c              # double 0.85577463391374264
	.quad	0x3feeaec010eba271              # double 0.95883181862616428
	.quad	0x3fd5699f5ccf476c              # double 0.33457168639608059
	.quad	0x3f7fb7298b6ee980              # double 0.0077430365408254209
	.quad	0x3fd48dc2e46c2f50              # double 0.32115242297071678
	.quad	0x3fc2f437fda025d0              # double 0.14807796367703796
	.quad	0x3fed27e8b5005c5f              # double 0.91112170554960048
	.quad	0x3fc1d2e8e59b0300              # double 0.13924895487982525
	.quad	0x3fe65daa4126ae1d              # double 0.69893372273276422
	.quad	0x3fe081501142a80d              # double 0.51578524943511328
	.quad	0x3fb0a70bdaed17a0              # double 0.065048924397244523
	.quad	0x3fc269d199b1ad7c              # double 0.14385433201401188
	.quad	0x3fe199662d4f3a4c              # double 0.54997547959812598
	.quad	0x3fbc16f4101c53e8              # double 0.10972524064375444
	.quad	0x3fedb091ab1e4880              # double 0.92780383512059927
	.quad	0x3fd6cbcc7c2f8ea8              # double 0.35618888976589824
	.quad	0x3fd922d06cddfede              # double 0.39274988776740638
	.quad	0x3fdafa84f2afcd46              # double 0.42154048633456787
	.quad	0x3fe2e8f65c56721f              # double 0.59093778643324757
	.quad	0x3fd60c9aabf10e4a              # double 0.34451929846929785
	.quad	0x3fd5aaafa616161e              # double 0.33854285449374
	.quad	0x3fcfec54f3a2401c              # double 0.24939977546864689
	.quad	0x3fc4ad7ec7fc0130              # double 0.16154465451109834
	.quad	0x3fd89f1e358b87ec              # double 0.38471179226883012
	.quad	0x3fa8affab74bc080              # double 0.048217615962017568
	.quad	0x3fe55e5f12c10c38              # double 0.66776994383724908
	.quad	0x3feaa96a8afff043              # double 0.83318068645849797
	.quad	0x3fd27bc8fe9af318              # double 0.28880524505420757
	.quad	0x3faefd183e10d680              # double 0.060524709297550494
	.quad	0x3fed85125346cf24              # double 0.92249408974609936
	.quad	0x3feac7dcfecb8fbe              # double 0.83689737095527739
	.quad	0x3feaec7d439ee5b3              # double 0.84136832434813014
	.quad	0x3fb35e77a2d60c10              # double 0.075660207037842264
	.quad	0x3fa2569ace4c18d0              # double 0.035816991503496376
	.quad	0x3fe79a87ef89763d              # double 0.73761364731371482
	.quad	0x3fea02c2a9ffb719              # double 0.81283696368129477
	.quad	0x3fe5032bbdae598d              # double 0.65663706824379775
	.quad	0x3fec157ced568c1c              # double 0.87762304644673205
	.quad	0x3fa2c5dfeca41cb0              # double 0.036665914189194182
	.quad	0x3fe12a03626a7a9a              # double 0.53637856695043529
	.quad	0x3feb14790507e45d              # double 0.8462491129167905
	.quad	0x3fe40230460405ca              # double 0.62526715922302256
	.quad	0x3fce50375ce98bc0              # double 0.23682300602658124
	.quad	0x3fb463590d639150              # double 0.079640928047927106
	.quad	0x3fd563c0fb596a04              # double 0.33421349092319041
	.quad	0x3feb2ceda77fee28              # double 0.84923441614904949
	.quad	0x3fd4f2116328ea46              # double 0.32727465327812799
	.quad	0x3feb576f18b1b0be              # double 0.85442309210841194
	.quad	0x3febdb20dee99318              # double 0.87049907243326441
	.quad	0x3fe68be07a1c50ba              # double 0.70457481240966691
	.quad	0x3fdfc5bbde76f668              # double 0.4964437172419367
	.quad	0x3fdf6caa50f9adfa              # double 0.49100740344758231
	.quad	0x3fbcfb3d00bed298              # double 0.11320859211157097
	.quad	0x3fd690db3ba335f2              # double 0.3525913317106123
	.quad	0x3fd8e245c986318a              # double 0.38881058387848866
	.quad	0x3fec3dfbd1b1bc71              # double 0.8825663657752455
	.quad	0x3fe857d7e4b4c94d              # double 0.76072306317500138
	.quad	0x3fe7ddee8fc12c4c              # double 0.7458412940699275
	.quad	0x3fdbd8262cbc2942              # double 0.43506769531872547
	.quad	0x3face37405245f10              # double 0.056422830226607101
	.quad	0x3fe2b70689e30490              # double 0.58484198504460672
	.quad	0x3fecbe043fa76312              # double 0.89819538528817788
	.quad	0x3fb99b23240a3988              # double 0.10002345685845715
	.quad	0x3fefe813b813bcf7              # double 0.99707971527632721
	.quad	0x3fecd59840208068              # double 0.90107357525631659
	.quad	0x3feeead6adbc6046              # double 0.96616681988508257
	.quad	0x3fe07b2f0dd030be              # double 0.51503708551310701
	.quad	0x3fe7ba4e96d6109d              # double 0.74149255237763934
	.quad	0x3f92be846b86fbe0              # double 0.018304890692657838
	.quad	0x3fc866ac007c211c              # double 0.19063329719234268
	.quad	0x3fe239f17ec3e6f1              # double 0.56957316168629124
	.quad	0x3fe2edb3bec055af              # double 0.59151637321581585
	.quad	0x3fec467b82f5e8e3              # double 0.88360381677855704
	.quad	0x3fe781c6a8707fff              # double 0.73459179781275441
	.quad	0x3fe924b22131506e              # double 0.78572947009025795
	.quad	0x3feb4cd7a450f129              # double 0.85313016980174894
	.quad	0x3fe89158469dcaba              # double 0.7677422885156695
	.quad	0x3f90cfdf1b82c7c0              # double 0.016417966894273439
	.quad	0x3fe9602d1d396fdf              # double 0.79299026210673762
	.quad	0x3fd65a04de06cc48              # double 0.34924432451515885
	.quad	0x3fc06014f7daeb38              # double 0.12793218710234
	.quad	0x3fe5631d580a01af              # double 0.66834895320066845
	.quad	0x3fed1e18194f57b3              # double 0.90992360061021882
	.quad	0x3fe1a7f3bfe4978e              # double 0.55175197104539264
	.quad	0x3fd9792d64571272              # double 0.39802107619133331
	.quad	0x3fe6f7e1948efe24              # double 0.71775893225998688
	.quad	0x3fec44f923aeead3              # double 0.88341958016766353
	.quad	0x3fd7a37b86e1e02c              # double 0.3693531815729354
	.quad	0x3fc203ee66a12dd8              # double 0.14074497233592242
	.quad	0x3fea27f30cccbb66              # double 0.81737663745830669
	.quad	0x3f958575d03f0bc0              # double 0.021016922793716253
	.quad	0x3feacaf31acff0db              # double 0.83727412449618599
	.quad	0x3fcdf620bae15fec              # double 0.23407372593896925
	.quad	0x3fc4065d8eddcdfc              # double 0.15644425846004129
	.quad	0x3febe10acbf586b6              # double 0.87122096858748566
	.quad	0x3fed7e2023a8fa5a              # double 0.92164618458611902
	.quad	0x3fa01b6339a16b40              # double 0.031458950791338314
	.quad	0x3fc93e65bd67ef98              # double 0.19721671818103625
	.quad	0x3fe1e62685d7cb85              # double 0.55934454098893183
	.quad	0x3fe29c062a9e03b4              # double 0.58154590915375204
	.quad	0x3fd359b0423faf7e              # double 0.30234915227514836
	.quad	0x3fea666f1fd4438a              # double 0.82500416008598276
	.quad	0x3fe7bd374d2ba6ae              # double 0.74184765884748116
	.quad	0x3fead0952beb7e85              # double 0.83796175554375962
	.quad	0x3f6bb32a3c1c9a00              # double 0.0033813309572849892
	.quad	0x3fe0c271908b8be6              # double 0.5237357924601127
	.quad	0x3fc9d4bcdf29fd90              # double 0.20180474182778285
	.quad	0x3fa4bb4167177360              # double 0.040491145929741235
	.quad	0x3fc1fb39f83e5940              # double 0.14047932263629015
	.quad	0x3fe84d5c06c7a286              # double 0.75944329570946034
	.quad	0x3febc99f5c023959              # double 0.86836212130018986
	.quad	0x3fe07f90d2a97edf              # double 0.51557198662700532
	.quad	0x3feb8ddf04eeea15              # double 0.86106825793769082
	.quad	0x3fef698de8ef04f7              # double 0.98163505072457624
	.quad	0x3fde454737e448f4              # double 0.47297840555360371
	.quad	0x3fe1278a271318a5              # double 0.53607661849743649
	.quad	0x3f5ce1b2fcc70000              # double 0.0017627952503147526
	.quad	0x3fd347ebd92e698a              # double 0.30126472672568438
	.quad	0x3fecf797d573258f              # double 0.90522376717960806
	.quad	0x3fe9048f74fe0e8b              # double 0.78180668687896693
	.quad	0x3facaeebb0c97c70              # double 0.056022038774920513
	.quad	0x3fd2b5e05ac70ea0              # double 0.29235085358616608
	.quad	0x3fd27491508a3658              # double 0.28836472382758904
	.quad	0x3feac46afcf07228              # double 0.83647679712482148
	.quad	0x3fefefd44ce6d144              # double 0.99802603740548834
	.quad	0x3fd478a257cac452              # double 0.31986292432254004
	.quad	0x3fe2a3e5b694281d              # double 0.58250699672612749
	.quad	0x3fe7eeb18d8626f6              # double 0.74788739816105365
	.quad	0x3fde1b680d9ec00e              # double 0.47042275743569995
	.quad	0x3f8ac5c3c6a6a740              # double 0.013072518825385182
	.quad	0x3fc1dd930376bd8c              # double 0.13957441014416039
	.quad	0x3fd6c56f07608282              # double 0.35580039711388889
	.quad	0x3f8b51eb377e4000              # double 0.013339841490761728
	.quad	0x3fda0efdd697f5a6              # double 0.40716501194386934
	.quad	0x3f9d569d204138a0              # double 0.028650717824625915
	.quad	0x3fe28f21264ac0f3              # double 0.57997186163814118
	.quad	0x3f9240ffaf363dc0              # double 0.017826075619778115
	.quad	0x3fe94090e11b8d38              # double 0.78913158384640436
	.quad	0x3fdf8bf5e16dcb88              # double 0.49291750921764121
	.quad	0x3fe810b81f58268a              # double 0.75204092142048862
	.quad	0x3fd85835fa5c3878              # double 0.38038396310083256
	.quad	0x3fe7954af69c8bed              # double 0.73697422186194006
	.quad	0x3fd76feb6e096b80              # double 0.36620603318959155
	.quad	0x3fc42a681da7aa3c              # double 0.15754414985652143
	.quad	0x3fe8bd1f6509db37              # double 0.77308625921327845
	.quad	0x3fe8593922f1e06f              # double 0.76089150262033722
	.quad	0x3fde36aba0a9c728              # double 0.4720868176437869
	.quad	0x3fe531eabc232614              # double 0.66234337564054835
	.quad	0x3fd9fb0e135e2630              # double 0.40594818011649902
	.quad	0x3fe5e628a2e66ef2              # double 0.68434554878646581
	.quad	0x3fe523b4d12c09b5              # double 0.66060868123923078
	.quad	0x3fe9b25b3b621254              # double 0.80302201841602505
	.quad	0x3fea571d16a15c51              # double 0.82313398761733414
	.quad	0x3fd565b9210533e2              # double 0.33433368897095594
	.quad	0x3fdf519a68ae88f4              # double 0.48935566160993393
	.quad	0x3fea2df7da85b8cf              # double 0.81811134987017364
	.quad	0x3fd236a65fc08986              # double 0.2845855650977217
	.quad	0x3fe1af0f9dfb467e              # double 0.55261975150843035
	.quad	0x3fe73a5326ae1f51              # double 0.72586972765655322
	.quad	0x3fded58c28d5c966              # double 0.48178390491297873
	.quad	0x3fc344f278f41ccc              # double 0.15054160028396379
	.quad	0x3fec0d803524e097              # double 0.87664804820726061
	.quad	0x3faf3a93ec7174c0              # double 0.060993788349813283
	.quad	0x3fdc9635f7d0ef5a              # double 0.44666814041896929
	.quad	0x3fd33565cd7277f8              # double 0.3001341348953015
	.quad	0x3fe3d3043d44b7dd              # double 0.61950885740747774
	.quad	0x3fa34cce06638600              # double 0.037695349006536816
	.quad	0x3fd8b97b79830d96              # double 0.38632094255827931
	.quad	0x3fd2e3125bae8cd0              # double 0.2951093573885375
	.quad	0x3fdaf70082e7b55e              # double 0.42132580550863519
	.quad	0x3fd16527c412e8e8              # double 0.271799031713853
	.quad	0x3fdf7f032abbfe98              # double 0.49212721989895547
	.quad	0x3fe0c774101d43f9              # double 0.52434733531310862
	.quad	0x3feb841d86eeffbd              # double 0.85987736086098432
	.quad	0x3fda33ae5a50e5ba              # double 0.4094043619148483
	.quad	0x3f7807871ada0d00              # double 0.0058665540251496839
	.quad	0x3fb58c9dcfc4ecf0              # double 0.084176886773025705
	.quad	0x3fdaee9023b143ce              # double 0.42081073270406655
	.quad	0x3fccb4631365be14              # double 0.2242549748147985
	.quad	0x3fda1623eb4bef52              # double 0.40760133722482295
	.quad	0x3febe38d70cb9a15              # double 0.87152740507446202
	.quad	0x3fda6f8512831e54              # double 0.41305662925558306
	.quad	0x3fd1b0524c3ed5b8              # double 0.27638680883259381
	.quad	0x3feb004f2e3565f4              # double 0.84378775620569834
	.quad	0x3fd9ccd81893789a              # double 0.40312769317632446
	.quad	0x3fccf5c6994810cc              # double 0.2262504814572196
	.quad	0x3fdae48d75b197d8              # double 0.42019974225547463
	.quad	0x3fdac8c9aad11f68              # double 0.41850511247002098
	.quad	0x3fe711c3038aa4d6              # double 0.72091818515505213
	.quad	0x3fe54fdcac24feb6              # double 0.66599877950644415
	.quad	0x3fde33d6301fcb46              # double 0.47191385936382735
	.quad	0x3fd07b429eae132c              # double 0.25752320762721825
	.quad	0x3fd055a23cca7928              # double 0.25522666870701238
	.quad	0x3fd609d78a079dfa              # double 0.34435070495098297
	.quad	0x3fd0b521bd89a0de              # double 0.26105540761501611
	.quad	0x3fe6526e5d5ca9a1              # double 0.69756239161261047
	.quad	0x3fccc252a5c18af8              # double 0.22468026250415796
	.quad	0x3fc90336d9959564              # double 0.19541059135660099
	.quad	0x3fcbd58893517bac              # double 0.21745402520443002
	.quad	0x3fe6f1cd980af73a              # double 0.7170169801317805
	.quad	0x3feac16e24a8f5a6              # double 0.83611209068447034
	.quad	0x3feb21b6ef7caa9b              # double 0.84786555075455128
	.quad	0x3fd116fee1a0924e              # double 0.26702854188832681
	.quad	0x3fdd4c96eb440576              # double 0.45779965377013043
	.quad	0x3feec41b1d793e75              # double 0.96143871075214681
	.quad	0x3fdf6d3ce7eb7f9e              # double 0.4910423531382494
	.quad	0x3fbdc61528178280              # double 0.11630375126652304
	.quad	0x3fca76ac2c9f0d1c              # double 0.20674659899496184
	.quad	0x3fdba7592b0c2842              # double 0.43208913043838859
	.quad	0x3fed7e025e9be5e5              # double 0.92163198927226786
	.quad	0x3fd7473914258308              # double 0.36372210471567756
	.quad	0x3fd7714d001896ba              # double 0.36629033097629426
	.quad	0x3fe004b12943471e              # double 0.5005727582849635
	.quad	0x3fe56d3931e287f1              # double 0.66958293669836
	.quad	0x3fed381fdab0336c              # double 0.91310112679057686
	.quad	0x3fbb101880a9b360              # double 0.10571435109313887
	.quad	0x3fe214a9f675bd7b              # double 0.56502245079711544
	.quad	0x3f9fe9a0fc538ba0              # double 0.031164660836008218
	.quad	0x3fe68d77a948301e              # double 0.70476897299659291
	.quad	0x3feafe1905d42444              # double 0.84351779116071456
	.quad	0x3fe61856da3cb370              # double 0.69047110199390538
	.quad	0x3fd2f629dd87bdb4              # double 0.29627462991535514
	.quad	0x3fe4776fcf694205              # double 0.63957968244545838
	.quad	0x3fe20935a2b982c9              # double 0.56362420828016824
	.quad	0x3fed7b23e4288310              # double 0.92128176271589446
	.quad	0x3fe1dd23462fa0aa              # double 0.55824435909473391
	.quad	0x3fc15d5947815664              # double 0.13566127768960989
	.quad	0x3fea9be8d51b30aa              # double 0.83153192159945388
	.quad	0x3fd5adc27205f23c              # double 0.33873044142800146
	.quad	0x3feec23f34dd28ec              # double 0.96121177983266425
	.quad	0x3fa802c6da308560              # double 0.046896185049500216
	.quad	0x3fa00af7e1ed7bf0              # double 0.031333681420384951
	.quad	0x3fd36ebeb5d46ff8              # double 0.30363433605975798
	.quad	0x3fb15c18ec4eb5a0              # double 0.06781154412484236
	.quad	0x3fec8236f838c985              # double 0.89089535218072113
	.quad	0x3fe998f4b2ba6a56              # double 0.79992136867378849
	.quad	0x3fd9993c710d1628              # double 0.39997778930805561
	.quad	0x3fe1aafafb8f43ca              # double 0.55212163098087186
	.quad	0x3fb72c19c07fe578              # double 0.09051667165467403
	.quad	0x3fe9f2ef4e9824d3              # double 0.81090512609912435
	.quad	0x3fd4393ba77c6246              # double 0.31599322658579287
	.quad	0x3fa521930b5371d0              # double 0.041271777279436983
	.quad	0x3fd59fc12f8b8e22              # double 0.33787564890937649
	.quad	0x3fcc706cd2678ad8              # double 0.22218094133048427
	.quad	0x3fe43e5b6df98b58              # double 0.63261195640039158
	.quad	0x3fe30c081c4eb622              # double 0.59521871117403102
	.quad	0x3fd17c1f4055e1ee              # double 0.27320081026803578
	.quad	0x3fd81f5586fbfb6c              # double 0.37691248113690423
	.quad	0x3fdcfc18033ccfa2              # double 0.45288658443609553
	.quad	0x3fcbaef0295e9120              # double 0.21627618808737115
	.quad	0x3fd195ac09b6f1d8              # double 0.27476025532430759
	.quad	0x3fef99b994c03081              # double 0.98751524975661209
	.quad	0x3fe38a275e786fb4              # double 0.61061447573910366
	.quad	0x3fe34e8d1d829b1a              # double 0.60333877338129871
	.quad	0x3fe8c80f82a6beee              # double 0.77442145841447796
	.quad	0x3fb3844dff25ecf8              # double 0.076237559120205023
	.quad	0x3fd3ce7bee773c42              # double 0.30947778976127804
	.quad	0x3fdf6604d69ea9ea              # double 0.49060173949206265
	.quad	0x3fe64a7fbf2a17f3              # double 0.6965941175155862
	.quad	0x3fdff116919af128              # double 0.49908985347043933
	.quad	0x3feafc0eb7c66ca1              # double 0.84326873677800418
	.quad	0x3fdfed839b3c42a0              # double 0.4988717094393369
	.quad	0x3fddcdf6cf0a4ad2              # double 0.46569605082292498
	.quad	0x3feedc7aacbbdfa9              # double 0.96441396462522732
	.quad	0x3fedb2bdf24c9ca1              # double 0.92806908916545094
	.quad	0x3fd16f3a64bf94f8              # double 0.27241382445056628
	.quad	0x3fde11f33ed780fa              # double 0.46984559189696962
	.quad	0x3fe0d45e63a8e364              # double 0.52592391457356458
	.quad	0x3fee8cfdea8e95c7              # double 0.95471092044743322
	.quad	0x3fc7a46e17b35168              # double 0.18470550687073772
	.quad	0x3fed989771874fdc              # double 0.92487690137431455
	.quad	0x3fed04d870aa0243              # double 0.90684148792940567
	.quad	0x3fe78e886d0d88be              # double 0.73614903735531079
	.quad	0x3f5349b439c8f800              # double 0.0011772403733085746
	.quad	0x3fd6c959bc6061fa              # double 0.35603946109907236
	.quad	0x3febabd38349e187              # double 0.86472488062195019
	.quad	0x3fef2668049b563c              # double 0.97343827152025808
	.quad	0x3feeee8517471b1f              # double 0.96661619707524326
	.quad	0x3fe9317a4a3bbdf2              # double 0.78728975771622189
	.quad	0x3facc2b8a864def0              # double 0.056173105770026655
	.quad	0x3fe8744175b12ae0              # double 0.76419136988382874
	.quad	0x3fedbf991f3b0112              # double 0.92963844394401662
	.quad	0x3fed0b7da9b3dc68              # double 0.90765269417796635
	.quad	0x3feff8959c3fbfc0              # double 0.99909477727305073
	.quad	0x3fe924e608cd9414              # double 0.78575422019332785
	.quad	0x3fa96cb20a03ea80              # double 0.049657405588694026
	.quad	0x3fe3896ed062cb06              # double 0.6105264730489075
	.quad	0x3fdc52000529aa1e              # double 0.44250488762068751
	.quad	0x3fd64f783e1589f6              # double 0.34860044539359991
	.quad	0x3fcafa660ccc7ccc              # double 0.2107665598386802
	.quad	0x3fc277d74f5168d0              # double 0.14428225872945299
	.quad	0x3fe19ef0b0d3686e              # double 0.55065187965671014
	.quad	0x3fe0889c181ad5a6              # double 0.51667599399541042
	.quad	0x3fcbf309ccc70df4              # double 0.2183544397249616
	.quad	0x3fc5254b4510ce4c              # double 0.16520062324853979
	.quad	0x3fea114081e88aa9              # double 0.81460595486381238
	.quad	0x3fb731d1d99baee0              # double 0.090603938700663189
	.quad	0x3fd7d2e31904d032              # double 0.37224652713053097
	.quad	0x3fe03dd2d479a933              # double 0.5075468206316941
	.quad	0x3fdf2fc5ae22d4e4              # double 0.48729078298067763
	.quad	0x3fd83ab29927e134              # double 0.3785826202070155
	.quad	0x3fce5a341db9f9a8              # double 0.23712779475677093
	.quad	0x3fc14eb985840638              # double 0.13521498698541889
	.quad	0x3fee97c3a71a6eaf              # double 0.95602591168741025
	.quad	0x3fe47004b08234f9              # double 0.63867411112155914
	.quad	0x3fefdb7d33b4b042              # double 0.99554309939185992
	.quad	0x3fe834bfa403804d              # double 0.75643903764649567
	.quad	0x3fd35ee32aff309c              # double 0.30266646574887957
	.quad	0x3fe85e1e86947372              # double 0.76148916516431897
	.quad	0x3fc3d26a3d814d4c              # double 0.15485885623147977
	.quad	0x3fdf7bda484e343e              # double 0.49193436680872427
	.quad	0x3faf21bff26f2b50              # double 0.060804365486169076
	.quad	0x3fe43f52b95043be              # double 0.63272987550782722
	.quad	0x3fd5b52bfb30b26e              # double 0.33918284921927622
	.quad	0x3fb9d350c6535f88              # double 0.10088066904006443
	.quad	0x3fc1e54120e93074              # double 0.13980878931977581
	.quad	0x3fe62fa12d1986c4              # double 0.69331415947473163
	.quad	0x3fe29c06b27a6fc4              # double 0.58154616221462918
	.quad	0x3fe09c2faa680128              # double 0.51906569750284337
	.quad	0x3fd47ff6d6de5c90              # double 0.32031031592618664
	.quad	0x3fe0119461c38ea3              # double 0.50214594931135925
	.quad	0x3fcb512049b39a38              # double 0.21341327284535949
	.quad	0x3fe88eef3498ffc2              # double 0.76744804642657294
	.quad	0x3fd4615d64056b76              # double 0.31844267623608091
	.quad	0x3fe0b84af057d7ba              # double 0.52249667112368248
	.quad	0x3fe968c3fc010439              # double 0.79403876513982319
	.quad	0x3fd3fd27154998b8              # double 0.31232621268135174
	.quad	0x3fdfdf0cb0c91a54              # double 0.49798886551108024
	.quad	0x3feb0e8aba87a23e              # double 0.84552513534169527
	.quad	0x3fcf3e7b7967d1c4              # double 0.24409430912022689
	.quad	0x3fce956372005730              # double 0.23893397394629678
	.quad	0x3fe9fdfd232029ae              # double 0.81225449429012087
	.quad	0x3fede05a9654a2bf              # double 0.93363694535681663
	.quad	0x3fe738548eb0b52a              # double 0.72562625760261779
	.quad	0x3fe82d04b5f69eac              # double 0.75549541034430012
	.quad	0x3fd4d3a5e6ff03f6              # double 0.3254179721662348
	.quad	0x3fe261ea261e73b6              # double 0.57445247120960263
	.quad	0x3fd457f230a19024              # double 0.31786780118113911
	.quad	0x3fed1bb444f580ea              # double 0.90963185757212028
	.quad	0x3fe3554f17370e69              # double 0.60416368993942371
	.quad	0x3fd27e3d3b20957e              # double 0.28895502828739683
	.quad	0x3fd7bdeab0f6d4d2              # double 0.37096659928950004
	.quad	0x3fce95eaddcfdb90              # double 0.23895011740361527
	.quad	0x3fc9436c7e62f190              # double 0.19737011119094605
	.quad	0x3fd7b19983c29544              # double 0.37021482340999889
	.quad	0x3febdd0a5c2b135d              # double 0.87073247911085228
	.quad	0x3fc4793ce6618b00              # double 0.15994988679002375
	.quad	0x3feaebfb0cbfbe58              # double 0.84130623331106857
	.quad	0x3fda76751609c1c8              # double 0.41348006393584713
	.quad	0x3fe6299fcf641b84              # double 0.69258108621657799
	.quad	0x3fb96a2c402749b8              # double 0.099276319181888506
	.quad	0x3fdb8da63506b752              # double 0.43052058389991033
	.quad	0x3fe262fd074b8613              # double 0.57458354401404887
	.quad	0x3fe556b1587919f4              # double 0.66683261184590359
	.quad	0x3fd0866d7deda5fa              # double 0.25820481584250354
	.quad	0x3fe2d5f6a44a79aa              # double 0.58861858451910121
	.quad	0x3febf58b62191fde              # double 0.87372368964951952
	.quad	0x3fed8963a77e7594              # double 0.92302115167301446
	.quad	0x3fdba50c8cb3c14c              # double 0.43194879284330479
	.quad	0x3fddc917b7025240              # double 0.46539872047404529
	.quad	0x3fe91a8e3e0ddc73              # double 0.78449165458631709
	.quad	0x3fe1643f7d068c70              # double 0.54348730486925767
	.quad	0x3fe4fd49ea1ca669              # double 0.65591903424247022
	.quad	0x3fe77d439db9ab7a              # double 0.73404103093831385
	.quad	0x3fea9e059f59c99c              # double 0.83178979037466005
	.quad	0x3fefb166d8b0a050              # double 0.99040548631911385
	.quad	0x3fdd2fe5283603a8              # double 0.45604828764777006
	.quad	0x3fb5cbd88a18afd8              # double 0.085141690936040404
	.quad	0x3fda3f21c44c133a              # double 0.41010326547284459
	.quad	0x3fd0d1d8ddf198d0              # double 0.26280805277054942
	.quad	0x3fdcc69133410bdc              # double 0.44961957936555819
	.quad	0x3fedbafed2802537              # double 0.92907658685104522
	.quad	0x3fed746da7244dfb              # double 0.92046244282613487
	.quad	0x3fc737d86fba1b80              # double 0.18139176803034829
	.quad	0x3fdba4f57f052546              # double 0.43194329647356644
	.quad	0x3fe4431ddeb88fe0              # double 0.63319295406517639
	.quad	0x3fd8d095e4545436              # double 0.38773104951662007
	.quad	0x3fe57de049f83d8f              # double 0.67161573836522048
	.quad	0x3fdc80000b3d54c8              # double 0.44531251046766984
	.quad	0x3fd3cae1567b964c              # double 0.30925782628614651
	.quad	0x3fd8d2b709283548              # double 0.38786102194065508
	.quad	0x3f9238fdc8a33280              # double 0.017795529719295988
	.quad	0x3fd60990b3d4a8e6              # double 0.34433381616203318
	.quad	0x3fe1687ab159058c              # double 0.54400381696921007
	.quad	0x3fece2a99de2ff7b              # double 0.90266877019165237
	.quad	0x3fe4612f5e0510f6              # double 0.63686340678444142
	.quad	0x3fc1331be8bbd080              # double 0.13437222351024403
	.quad	0x3fcab6b667e1fa38              # double 0.20870094368361136
	.quad	0x3fbec3d494c233a8              # double 0.12017563468744064
	.quad	0x3fe0bbf50426c7e5              # double 0.5229439812740081
	.quad	0x3fe8620e94455a3f              # double 0.76196984252130295
	.quad	0x3fad9ad22f66ebc0              # double 0.057821815763837048
	.quad	0x3fc35598e3116c20              # double 0.15104971968944003
	.quad	0x3fede25a83790a67              # double 0.93388105085643935
	.quad	0x3fd377d27051f79e              # double 0.30418835610168482
	.quad	0x3fe49a6638728e79              # double 0.64384757065677356
	.quad	0x3fe7ce01821e4dc9              # double 0.74389720357651712
	.quad	0x3fecd6abfe5e927d              # double 0.9012050598290241
	.quad	0x3fe8004bd6cdf058              # double 0.75003616289132946
	.quad	0x3fe3ee926b6978a6              # double 0.62287255267053321
	.quad	0x3feb087a53aea8b5              # double 0.84478489250365973
	.quad	0x3fde272c89228560              # double 0.47114098922800984
	.quad	0x3f877d0752b6a2c0              # double 0.011468941890443118
	.quad	0x3fde7d4407b54064              # double 0.47639561417327614
	.quad	0x3fd8bbfaf26ad2e2              # double 0.38647340463221103
	.quad	0x3fb9714f08d69488              # double 0.09938520398880446
	.quad	0x3fdd5561272b8730              # double 0.45833615136335748
	.quad	0x3fe1a2499f4524d3              # double 0.55106049640121524
	.quad	0x3feee1e1ded3d019              # double 0.96507352372146038
	.quad	0x3fed652285442f8f              # double 0.91859556225380057
	.quad	0x3fd00475c6713cf2              # double 0.25027222041258235
	.quad	0x3f923227f47a6a40              # double 0.01776945523907103
	.quad	0x3fdc69ab020f0c90              # double 0.44394946290066972
	.quad	0x3fed62efa4cbb616              # double 0.91832716166180961
	.quad	0x3fe75cd324c8bbb5              # double 0.73008114990613271
	.quad	0x3fe1cfe3ab89588a              # double 0.55662711623405525
	.quad	0x3fdd11afcaea4c28              # double 0.45420450988712213
	.quad	0x3fe7e8d52fda38ab              # double 0.74717196794678864
	.quad	0x3fe95a08ca8e1018              # double 0.79224052011022916
	.quad	0x3f8cd9393dc9ba80              # double 0.014086196134681872
	.quad	0x3fcce407efd83e54              # double 0.2257089539639191
	.quad	0x3fe58b86af1fa33f              # double 0.67328199580979475
	.quad	0x3f8a01b94da45100              # double 0.012698600465718801
	.quad	0x3fd287e6bb893208              # double 0.2895447570233789
	.quad	0x3fd9a26e7210bc2a              # double 0.40053902758785631
	.quad	0x3fb5ca97b90301c0              # double 0.085122568768389861
	.quad	0x3fc65f68d2756d60              # double 0.17478666569045753
	.quad	0x3fbcf24a72eef0a0              # double 0.11307206445684637
	.quad	0x3fd0200df05dfbf4              # double 0.25195644830085873
	.quad	0x3fef3e0b76b22c76              # double 0.97632382567225195
	.quad	0x3fe0dcfe7e4671f2              # double 0.52697682059402795
	.quad	0x3fe555286d102b1a              # double 0.66664525319478973
	.quad	0x3fe1357ce98b1a7b              # double 0.53777928937854769
	.quad	0x3fe94ab5730a87d3              # double 0.79036972493144686
	.quad	0x3fe2f7f466daa0e2              # double 0.59276790703463811
	.quad	0x3fe46bd5d592029e              # double 0.63816348755797825
	.quad	0x3f8d757c70148bc0              # double 0.01438424317399789
	.quad	0x3fd8dd4a3a87ded4              # double 0.38850646701710656
	.quad	0x3fa3dda5b1c9d520              # double 0.038800409271894987
	.quad	0x3fcea53b129a1534              # double 0.23941744240088669
	.quad	0x3fc90f4b673df60c              # double 0.19577925244441052
	.quad	0x3fd65efc211ea986              # double 0.34954741701462699
	.quad	0x3fbbbd2b6f857ed0              # double 0.10835525009815261
	.quad	0x3fd58f980ea9cd72              # double 0.33688928062402745
	.quad	0x3fe0498537cf5a53              # double 0.50897465610871462
	.quad	0x3fe8887d9e78fb3e              # double 0.76666146232296462
	.quad	0x3fe0d699c245cf15              # double 0.52619636482129073
	.quad	0x3fea7d1283b667c3              # double 0.82776761746503558
	.quad	0x3fe33954b3c61d50              # double 0.60074839698874349
	.quad	0x3fd289ee0a2baaaa              # double 0.28966856950016029
	.quad	0x3fe8684f3c3a1f1c              # double 0.76273309481709672
	.quad	0x3fba528005267728              # double 0.10282135129679359
	.quad	0x3fe3bae318345506              # double 0.616563365244162
	.quad	0x3feb18df4735cf30              # double 0.84678615482559927
	.quad	0x3febf32780ccb490              # double 0.87343192249467627
	.quad	0x3fa435506a0b9d10              # double 0.039469254441252599
	.quad	0x3fed9eee50b7e5aa              # double 0.92565074696829197
	.quad	0x3fd17979c0a7c7aa              # double 0.27303928197863547
	.quad	0x3feb6ea328791932              # double 0.85725553421870004
	.quad	0x3fcd68b897031120              # double 0.22975833295471038
	.quad	0x3fe99dbd33e09e91              # double 0.80050525791462424
	.quad	0x3fe53ccd44670b2c              # double 0.66367209777704295
	.quad	0x3faaaea29790e710              # double 0.05211361026927197
	.quad	0x3fd7c97624fc9db4              # double 0.37167123424520843
	.quad	0x3fde174a05216c52              # double 0.47017145634680901
	.quad	0x3fe4e2b83602587e              # double 0.65267572926201445
	.quad	0x3fe95db478fd1a78              # double 0.79268859510996403
	.quad	0x3fc7af18f66595c4              # double 0.18503105193228297
	.quad	0x3feb7162956a8c46              # double 0.85759095366336946
	.quad	0x3fef19d608c2f12a              # double 0.97190381728390673
	.quad	0x3fe32064450098f6              # double 0.59770406224268302
	.quad	0x3fe5ea04a9c8e10d              # double 0.68481667672225088
	.quad	0x3f91852e751e9400              # double 0.01710960950699203
	.quad	0x3fdebf8f48ca8602              # double 0.48044187649256298
	.quad	0x3fe86c0ada65fb2d              # double 0.76318876892023513
	.quad	0x3fe2be13c447c200              # double 0.58570278488156191
	.quad	0x3fe89179be0993c4              # double 0.7677582465809043
	.quad	0x3fefb928d98ec9aa              # double 0.99135248653174313
	.quad	0x3fed353477455d0c              # double 0.91274474425418494
	.quad	0x3fe133014ad85fb5              # double 0.53747620218472625
	.quad	0x3fe8ea1fc65f3472              # double 0.7785796045733504
	.quad	0x3fe0d77e0a01330b              # double 0.52630521730461177
	.quad	0x3fbe01692a9923f8              # double 0.11720902719493143
	.quad	0x3fd2d23e28bf7eee              # double 0.29408220271396501
	.quad	0x3fedc313963dbc6f              # double 0.93006305068946726
	.quad	0x3fd9a34b549fdd3e              # double 0.40059169067486156
	.quad	0x3fe453735434bd51              # double 0.63518682905661639
	.quad	0x3fbb2762d6a15058              # double 0.10606973400109732
	.quad	0x3fdf3ebb8c7a5fa6              # double 0.4882038947921451
	.quad	0x3fd0cabb15bc68f8              # double 0.26237370607999777
	.quad	0x3fe88e0edfe348d5              # double 0.76734107711879551
	.quad	0x3fd0246f060c299c              # double 0.25222373571946277
	.quad	0x3fb61b917765f2d0              # double 0.086358157777748134
	.quad	0x3fe6db2618bb6e4b              # double 0.71425156431673409
	.quad	0x3fe2d7a047440143              # double 0.58882154387541907
	.quad	0x3fe42fe467f26928              # double 0.63084621717579115
	.quad	0x3fe49305145732cd              # double 0.64294675801064616
	.quad	0x3fed2fd4b11f23bc              # double 0.91208872407980079
	.quad	0x3fbcf9514d118348              # double 0.11317928439667668
	.quad	0x3fd1a7a40d9f6028              # double 0.27585698442772122
	.quad	0x3febf77e6d912ed8              # double 0.87396165275410009
	.quad	0x3fd2558143d262b2              # double 0.2864688074419447
	.quad	0x3fea271927c99cf1              # double 0.81727273722654392
	.quad	0x3fdfff7e6b2be8ec              # double 0.49996910539597539
	.quad	0x3fec2da8c0dd67b8              # double 0.88057363194388127
	.quad	0x3fd533fbf131fdf0              # double 0.3312978606627146
	.quad	0x3fdb5bddc4bab502              # double 0.4274820729431924
	.quad	0x3fc0d9822396b6d8              # double 0.13163782823305925
	.quad	0x3fe7cc35611515d0              # double 0.7436777969493793
	.quad	0x3feb484645e57e0c              # double 0.85257257129336627
	.quad	0x3fd7d6cb9db326ba              # double 0.37248506927845038
	.quad	0x3fe74a5569bedf7d              # double 0.7278239312499718
	.quad	0x3fd8bf09f76ae79a              # double 0.38666009103655485
	.quad	0x3feae4655e75df1f              # double 0.84038036774925107
	.quad	0x3fcf8f17bb63a4f8              # double 0.24655434274544752
	.quad	0x3fe84a9a602b3e21              # double 0.75910681517592959
	.quad	0x3fee03cb4f11b5c6              # double 0.93796315615843961
	.quad	0x3fd6a33025bce73e              # double 0.3537102097067083
	.quad	0x3fea90d000a13a40              # double 0.83017730830199099
	.quad	0x3fe459efb5f17576              # double 0.63597856078892678
	.quad	0x3fede713926cbea3              # double 0.93445757483091929
	.quad	0x3fbe11937c57a6c0              # double 0.11745569024756275
	.quad	0x3fe4768475db6b6e              # double 0.63946745890585333
	.quad	0x3fe1fa01ea9cd13c              # double 0.56176849196211931
	.quad	0x3fd5138c024eff76              # double 0.32931804871986203
	.quad	0x3fef0a59a3be10c5              # double 0.97001344662614796
	.quad	0x3fee230671501a72              # double 0.94177553302217931
	.quad	0x3fb0efac0b73eeb0              # double 0.066157105251415826
	.quad	0x3fe84464bd03feff              # double 0.75834881703482881
	.quad	0x3fe7935a993922e3              # double 0.73673753668216724
	.quad	0x3fb202dac47db428              # double 0.070356057139819073
	.quad	0x3fe80b33159ae721              # double 0.75136713237518304
	.quad	0x3fef335dec2c9c7d              # double 0.9750203717020579
	.quad	0x3fd67ee5cb472588              # double 0.35149521685942675
	.quad	0x3fddfebb6c9895f4              # double 0.46867261509973379
	.quad	0x3f99604c6acaf0a0              # double 0.02478141214190599
	.quad	0x3fd36b0c84ce1c14              # double 0.30340874642610172
	.quad	0x3feaead016e8aff8              # double 0.84116367792512303
	.quad	0x3fdbd4c1bfc45c08              # double 0.43486064650773004
	.quad	0x3fb23465bef6b430              # double 0.07111202156257046
	.quad	0x3fd9fd684050228a              # double 0.40609174995965047
	.quad	0x3fe924770fac5d00              # double 0.78570130406561134
	.quad	0x3fd71d093b18ba62              # double 0.36114722033645397
	.quad	0x3fe707fb6a2ef7a5              # double 0.71972437609632733
	.quad	0x3feac8a61f77baa4              # double 0.83699327608140494
	.quad	0x3fd61a1cf2cbfe84              # double 0.34534381590490448
	.quad	0x3fb8a95dd28495e8              # double 0.096334327598547653
	.quad	0x3fbe12b833878698              # double 0.11747313745538646
	.quad	0x3fbf960988be5708              # double 0.12338313663925871
	.quad	0x3fd797f647972a40              # double 0.36865002623804699
	.quad	0x3fe6ddd25a894767              # double 0.71457784350262166
	.quad	0x3fed3d01e0182140              # double 0.91369718330773963
	.quad	0x3fe9ff04c224b14b              # double 0.81238019865626521
	.quad	0x3fd0bf958755c208              # double 0.26169336525256925
	.quad	0x3fd05764119a1702              # double 0.25533391684471962
	.quad	0x3fd417ea9b17494e              # double 0.31395974298097407
	.quad	0x3fe698bcb6dea29c              # double 0.70614467350704357
	.quad	0x3fea122bbe9abc3e              # double 0.81471812465122873
	.quad	0x3fe52a8326c4894c              # double 0.66143949100323018
	.quad	0x3fd1e52c78af89ce              # double 0.27961265359604404
	.quad	0x3fe13f2b25366fc2              # double 0.53896100299925132
	.quad	0x3fe26780a6bfdd93              # double 0.57513458793885019
	.quad	0x3fe3baf02fde1bec              # double 0.61656960820334694
	.quad	0x3fd929a3b9126498              # double 0.393166475996233
	.quad	0x3fcec17b45f36aac              # double 0.24027958789414094
	.quad	0x3fd80b0432566254              # double 0.37567238727345864
	.quad	0x3fbb81250c89d228              # double 0.10743934208023431
	.quad	0x3fc44062815e03d4              # double 0.15821486775169424
	.quad	0x3fac3caca21395b0              # double 0.055150408539513918
	.quad	0x3fbe60695cb78210              # double 0.11865862382502024
	.quad	0x3fe52a4dac309efe              # double 0.6614139903149121
	.quad	0x3fed1f90fd1d0f6a              # double 0.91010331569894487
	.quad	0x3fc2a1e064e60d40              # double 0.14556507994357482
	.quad	0x3fe5bbce54e698bd              # double 0.67917553503209371
	.quad	0x3fef6838a9ff3928              # double 0.98147233202488326
	.quad	0x3fe89fd123ce1673              # double 0.76950890534562999
	.quad	0x3fd0d9cc1a1bdb5e              # double 0.26329329061211648
	.quad	0x3fda09ccfcfd9620              # double 0.40684818941221756
	.quad	0x3fdb1efc30fa9bdc              # double 0.42376618178462677
	.quad	0x3fe483ba410ed2a1              # double 0.64108002382871032
	.quad	0x3fec6b93ac13f8b3              # double 0.88813193902003318
	.quad	0x3fdad5859f6fabaa              # double 0.41928234643881501
	.quad	0x3fe6efee0c7f7595              # double 0.71678831521028263
	.quad	0x3fe2a01d47e6a394              # double 0.58204521220351291
	.quad	0x3fed52f5124635e0              # double 0.9163766247672207
	.quad	0x3feb0b2763d6af1d              # double 0.84511155605057164
	.quad	0x3fecc5820d8ec8fd              # double 0.89910986564635176
	.quad	0x3fc3f33682876ee4              # double 0.15585976956832959
	.quad	0x3fe6315ac7505be0              # double 0.69352473190781083
	.quad	0x3fefc2abc405d3d2              # double 0.99251354489990207
	.quad	0x3fe4f08258ed11f7              # double 0.65435902946825208
	.quad	0x3fe25876eb5980c6              # double 0.57329889265749823
	.quad	0x3fd91328e6235026              # double 0.39179441904457446
	.quad	0x3fe0bf29cc885ab4              # double 0.52333536098270494
	.quad	0x3fd548b0344166fc              # double 0.33256154158662787
	.quad	0x3fddcf9efdcab62a              # double 0.46579718384131985
	.quad	0x3fb89625d44be660              # double 0.096041073160358703
	.quad	0x3fdcf3f87c8ce254              # double 0.45239078677289979
	.quad	0x3fd7487e7dc56f86              # double 0.36379968912455529
	.quad	0x3fe9a9e5270171c2              # double 0.80198915117539848
	.quad	0x3fd84b7e2f5fa238              # double 0.37960772157979106
	.quad	0x3fecde66301d752e              # double 0.9021483363864371
	.quad	0x3fee0cb4c63f0094              # double 0.93905104370061787
	.quad	0x3fdbc541fa1c8db2              # double 0.43391465592341227
	.quad	0x3fd9e1a2b3c13a84              # double 0.40439670137576678
	.quad	0x3feba895655f573a              # double 0.86432905005742744
	.quad	0x3fbff4ca226a01a0              # double 0.12482894268214872
	.quad	0x3f990f6f18e91a20              # double 0.024472938437862024
	.quad	0x3fe64c79eebc5286              # double 0.69683548572591358
	.quad	0x3fbe82b8549ee878              # double 0.1191821295350638
	.quad	0x3fe97d010f6542f3              # double 0.79650929457610997
	.quad	0x3fe6350633739b22              # double 0.69397268342149609
	.quad	0x3fb491536302e0b0              # double 0.080342494652429818
	.quad	0x3fbe91c00b02bef8              # double 0.1194114710694939
	.quad	0x3fe6c17b1e052f5e              # double 0.71111827720003951
	.quad	0x3feab6d1b8baae26              # double 0.83481679992604962
	.quad	0x3fb8eb7547bffbf8              # double 0.097342805878710581
	.quad	0x3fec7a8b9d157c25              # double 0.88995915108160217
	.quad	0x3fdc7eddb8ef8350              # double 0.44524329242817817
	.quad	0x3fb7518523a2e528              # double 0.091087647629042423
	.quad	0x3fe3c1efa055ac1e              # double 0.61742383303988269
	.quad	0x3fd48d44b5d686ae              # double 0.32112233884445629
	.quad	0x3fc01d21dc9e47c0              # double 0.12588904640557352
	.quad	0x3fcdff5ce9ba3fcc              # double 0.23435555851437895
	.quad	0x3feaccd241094b63              # double 0.83750260069278359
	.quad	0x3fe0059ad014cd25              # double 0.50068417206640403
	.quad	0x3fe6f9b12814255b              # double 0.71797998264188878
	.quad	0x3fe89a68c19cecca              # double 0.76884877982174626
	.quad	0x3fd8271d91a6f9fa              # double 0.37738742088177413
	.quad	0x3fe06bc8b70efc44              # double 0.51315723184223616
	.quad	0x3fcf46507d6c04d0              # double 0.24433332561606003
	.quad	0x3fe3548168c286c4              # double 0.60406561337386977
	.quad	0x3fe29ccb9cde5b98              # double 0.58164005888362436
	.quad	0x3fe39c1fc384fb18              # double 0.61280811488527132
	.quad	0x3fe6ba47e146ada2              # double 0.71023935317264297
	.quad	0x3fd4d2dd418da02e              # double 0.3253701343696801
	.quad	0x3fe697b672a0eaa6              # double 0.70601961506266231
	.quad	0x3fcd2f7fed0bf1f8              # double 0.22801207613510122
	.quad	0x3fde740208334a88              # double 0.47583056259933487
	.quad	0x3fb174611a111140              # double 0.068182057250912642
	.quad	0x3fd61b525ca34acc              # double 0.34541758581796667
	.quad	0x3fe1a12f96e4d4db              # double 0.55092601272067598
	.quad	0x3fdb6edb75dbcea0              # double 0.42864119062071815
	.quad	0x3fca140f8eae31b8              # double 0.20373720614260349
	.quad	0x3fe0b58307db5496              # double 0.52215720686457945
	.quad	0x3fd8977255bafc7c              # double 0.3842435681544385
	.quad	0x3fe9fb6329cd9971              # double 0.81193693318054561
	.quad	0x3fe35102a16a0007              # double 0.60363894964393772
	.quad	0x3fc99a98a7829e60              # double 0.20003040484629064
	.quad	0x3fea3d6aac589871              # double 0.81999715482085211
	.quad	0x3fec60de6ac9299c              # double 0.886824806753157
	.quad	0x3fe4c4ad0447992e              # double 0.64900828204989636
	.quad	0x3fe3805a66c0bcec              # double 0.60941810673639685
	.quad	0x3fdaf51b0db51204              # double 0.42121006334880939
	.quad	0x3fe113c84f22571e              # double 0.53366485076796599
	.quad	0x3fe09c99ee26c911              # double 0.51911636842695164
	.quad	0x3feabd62e3d40e29              # double 0.83561844346735825
	.quad	0x3fddb6b2767afc36              # double 0.46427594728806143
	.quad	0x3fd5ef2efb86d192              # double 0.34272360385082223
	.quad	0x3fe4e0cfb74be5d1              # double 0.65244279670803895
	.quad	0x3fb8a7fd870bc008              # double 0.096313329191389241
	.quad	0x3fe169e14022a061              # double 0.54417479063432606
	.quad	0x3fba431560959bd0              # double 0.10258611305253784
	.quad	0x3fe2343e972da29b              # double 0.56887750174526575
	.quad	0x3feb8a05f01c6032              # double 0.86059853455208768
	.quad	0x3fc52bcd5cadcadc              # double 0.16539923692069791
	.quad	0x3feabb403993ad9c              # double 0.83535777326089855
	.quad	0x3fe017562c4dade8              # double 0.50284870770468348
	.quad	0x3fcb6213bf9e73e4              # double 0.21393057686228112
	.quad	0x3fcccc3d83bf5b20              # double 0.22498291905386569
	.quad	0x3fea6289037d68f8              # double 0.82452822381608737
	.quad	0x3fc0626170dd5904              # double 0.12800233851402976
	.quad	0x3fe21a0798d99ca3              # double 0.56567745069050479
	.quad	0x3fdf6fa661d934f6              # double 0.49118957095636462
	.quad	0x3fee232ccdaa4bce              # double 0.94179382485378382
	.quad	0x3fcd3727ba74327c              # double 0.2282457027835284
	.quad	0x3fc8ea1d2eb99414              # double 0.19464459210863139
	.quad	0x3fdb304799a8728e              # double 0.42482175832427849
	.quad	0x3fe0c7f0ef414a2d              # double 0.52440687875270486
	.quad	0x3fe9a26769907b37              # double 0.80107470148127546
	.quad	0x3fc4ec8e18848cd4              # double 0.16346908757359435
	.quad	0x3feecbbb606e4ebd              # double 0.96236962160261152
	.quad	0x3fe22c5584445740              # double 0.56791187127485188
	.quad	0x3fe2913ce8d1ded4              # double 0.58022923920267511
	.quad	0x3fe5e9a316dfafb6              # double 0.68477014987501295
	.quad	0x3fd7977cd7931696              # double 0.36862107326701599
	.quad	0x3fece6f46d789703              # double 0.90319272404732975
	.quad	0x3fe6fc8b9d91fa44              # double 0.71832829261240549
	.quad	0x3fe8dcba5e8487f1              # double 0.7769443365143599
	.quad	0x3fc2476dbaf142c8              # double 0.14280482891128643
	.quad	0x3fea7cbdcd8ac42d              # double 0.82772722382481378
	.quad	0x3fe7b63536eb41ac              # double 0.74099217153893937
	.quad	0x3fe9a6807371385d              # double 0.80157492205922731
	.quad	0x3fe43a7891e0f1c0              # double 0.63213757030421647
	.quad	0x3fd31ed4987ad40c              # double 0.29875674143414765
	.quad	0x3fbcf0df68ed4978              # double 0.11305042564098311
	.quad	0x3fc60bca416dc6b4              # double 0.17223480410352965
	.quad	0x3fe5fd6bf2d2b406              # double 0.68718526293162152
	.quad	0x3fd1da7a35dc1fbc              # double 0.27895980129005316
	.quad	0x3fdfb439de656cdc              # double 0.4953751251066032
	.quad	0x3fe3c7a6e37faf1c              # double 0.61812157090523412
	.quad	0x3fea30a898286f0f              # double 0.81843976705883559
	.quad	0x3fe89700906a3cba              # double 0.76843288618137895
	.quad	0x3fb61c2479f12b80              # double 0.086366920252812562
	.quad	0x3fe0bd5e02f52d29              # double 0.52311611726455454
	.quad	0x3fb12dbbc20b0340              # double 0.067104086755546355
	.quad	0x3fcae2089da33cc8              # double 0.21002299973631566
	.quad	0x3fcf1975be026984              # double 0.24296447542003474
	.quad	0x3fdb4400b899862a              # double 0.42602556254687107
	.quad	0x3fdab6a21793a00c              # double 0.41739704420479096
	.quad	0x3fe7f9c68dd4a67a              # double 0.74924018575002482
	.quad	0x3fee1fdc184c1b30              # double 0.94138912911953376
	.quad	0x3fe77ab7d6e9e90c              # double 0.73373023963293482
	.quad	0x3fe5c12a89dea877              # double 0.67982985427558063
	.quad	0x3fcd44e63b8c8488              # double 0.22866514117871284
	.quad	0x3fe519f88d70d7e7              # double 0.65942027688174398
	.quad	0x3fe6ee3611c4c403              # double 0.71657851667816919
	.quad	0x3fdb8051c84d47ce              # double 0.42970699845056692
	.quad	0x3fe47d2ba932b084              # double 0.64027960821614771
	.quad	0x3fe7a80aaf2be8bf              # double 0.73926290715396437
	.quad	0x3fe8dcf10f828122              # double 0.77697041539434886
	.quad	0x3fd2d35a513a9a4c              # double 0.29414995129119315
	.quad	0x3f9d6f67416ff500              # double 0.028745282525041382
	.quad	0x3fe6ab19a62c42a5              # double 0.70838625388758614
	.quad	0x3febc2d70e4570de              # double 0.86753418719629471
	.quad	0x3fee3fe85c8ced93              # double 0.94530122829694319
	.quad	0x3fe4b3206b6901ea              # double 0.64686604479362342
	.quad	0x3fef5fba7fb05d08              # double 0.98043560923807238
	.quad	0x3fae29f9dc41cfe0              # double 0.058914001595354426
	.quad	0x3fe0fc418aaab97a              # double 0.53079297145249815
	.quad	0x3fd1e14784a5c41c              # double 0.27937496141299945
	.quad	0x3fef95f13d349c44              # double 0.98705350832177218
	.quad	0x3fe9eb2d686dd240              # double 0.8099581756237697
	.quad	0x3fdcf7507c3aaf40              # double 0.4525948727775706
	.quad	0x3fdab9497a1010d4              # double 0.41755902214232532
	.quad	0x3fdea12fa88adc16              # double 0.47858802279682899
	.quad	0x3fe28c5e9bea3fd3              # double 0.5796349568572573
	.quad	0x3fdc6d7c002f9f58              # double 0.44418239610830801
	.quad	0x3fb5a00b3cf0f728              # double 0.084473326090087952
	.quad	0x3fdc75902f2d66ba              # double 0.44467548949397051
	.quad	0x3fe51341ed250c9c              # double 0.65860077206925238
	.quad	0x3fd417151f585442              # double 0.31390884457625046
	.quad	0x3fee6e436cc4a2b7              # double 0.95095988506098805
	.quad	0x3fcef4fa53467fcc              # double 0.24185113016301185
	.quad	0x3fe89b99ed32b2c9              # double 0.76899429633848471
	.quad	0x3fcb85dd205b9ab8              # double 0.2150226982114043
	.quad	0x3fe668af1156dede              # double 0.70027879129971971
	.quad	0x3fe98437f1b4f75b              # double 0.79738995750788477
	.quad	0x3fea55abf81d8885              # double 0.82295797786743263
	.quad	0x3fe672067b933f8b              # double 0.70141910682467434
	.quad	0x3fe8dfd5a418a257              # double 0.7773235516552387
	.quad	0x3fe195e79eada113              # double 0.54954892150729717
	.quad	0x3fd2f7c379406d44              # double 0.29637228814108973
	.quad	0x3fec55fce2ae0209              # double 0.88549656175024538
	.quad	0x3fef2fa4e03398bb              # double 0.97456592358937343
	.quad	0x3fe9232fe47b48e0              # double 0.78554529786404359
	.quad	0x3fd87dd0cea8e326              # double 0.38267917806256191
	.quad	0x3fe7cb4adcb3d4b2              # double 0.74356597047758144
	.quad	0x3fc503397757e514              # double 0.16416090323745236
	.quad	0x3fbc56d53d5ce508              # double 0.11069996593586862
	.quad	0x3fe4f5a3a57208a3              # double 0.65498525918544137
	.quad	0x3fef2ed4fed11df6              # double 0.97446679848593365
	.quad	0x3fd11e7c812cc7dc              # double 0.26748573889483196
	.quad	0x3fc52947b3cc4e20              # double 0.16532226828768248
	.quad	0x3fe7d69a352ad4d2              # double 0.74494657882919513
	.quad	0x3fe2fd9996ccff52              # double 0.59345702603602946
	.quad	0x3fe0408dde3a0366              # double 0.5078801479686319
	.quad	0x3fd03e25f7a4a202              # double 0.25379323181053348
	.quad	0x3fed2921e78cfc53              # double 0.91127104973555573
	.quad	0x3fefcd1dbb50cf01              # double 0.99378859124269081
	.quad	0x3fc23a97195c10f0              # double 0.14241303194297172
	.quad	0x3fdd1741d2c2f548              # double 0.45454450208838582
	.quad	0x3fefb6a31a1bda52              # double 0.99104456996321688
	.quad	0x3fcbd5bd5e10eba8              # double 0.21746031849928937
	.quad	0x3fe79697ad7beab6              # double 0.73713287242511316
	.quad	0x3fb64f735747b0d0              # double 0.087149819191554955
	.quad	0x3faea14aaba3b080              # double 0.059824307872845317
	.quad	0x3fe67bb875006af1              # double 0.70260260440713129
	.quad	0x3fe91d1fc095fa21              # double 0.78480517973349972
	.quad	0x3fe70bd2f4e34af8              # double 0.72019336537991219
	.quad	0x3fd4ed571329b6b4              # double 0.32698609229451425
	.quad	0x3fdc63ac22501ab6              # double 0.4435835204207409
	.quad	0x3fe429cbd5b059b5              # double 0.63010207878215019
	.quad	0x3fdb72fc15e4a036              # double 0.42889310968394356
	.quad	0x3fe0fcea07d11a0e              # double 0.53087331320495124
	.quad	0x3fcc4b17fbe24208              # double 0.22104167746557857
	.quad	0x3feaad64f100926f              # double 0.83366629667996317
	.quad	0x3fb06d1f6af3f000              # double 0.064165080653708628
	.quad	0x3feb159b78ebc2ed              # double 0.84638761155482956
	.quad	0x3fd143ced7f0bd82              # double 0.26976367080620645
	.quad	0x3fe4b65320817cc6              # double 0.64725643490592044
	.quad	0x3fd8b76d2ec60d5e              # double 0.38619546478022027
	.quad	0x3fe2cfb4fb837a02              # double 0.58785485385652714
	.quad	0x3fc93c4ccedbab3c              # double 0.19715271091930642
	.quad	0x3fd47167ee9e55f2              # double 0.31942175200069223
	.quad	0x3fedaab1fb3d3a80              # double 0.92708682127143049
	.quad	0x3fe9ac2e54d7b930              # double 0.80226818629106411
	.quad	0x3fca7c7630b2b198              # double 0.20692326906045078
	.quad	0x3fd1a84ff650b326              # double 0.27589797071668654
	.quad	0x3fda7c8db3a754fa              # double 0.41385214371014423
	.quad	0x3fdf9b51a8ffd944              # double 0.49385491851662189
	.quad	0x3fc6ec81f9bfc9f4              # double 0.17909264273437453
	.quad	0x3fd8a2a46bbbfe06              # double 0.38492689629490007
	.quad	0x3fe90e0219049071              # double 0.78295998464865424
	.quad	0x3fcf6e785dbdb628              # double 0.24555878236007911
	.quad	0x3fc6cc17b47cd078              # double 0.17810341179722733
	.quad	0x3fd1cd3ecc5d18b0              # double 0.27815217931164238
	.quad	0x3fe025d82a527357              # double 0.50461967721967482
	.quad	0x3fd67078be0c67b0              # double 0.3506147247259106
	.quad	0x3fe94bffc3b5acde              # double 0.79052723145050741
	.quad	0x3fd40426b3c94b7c              # double 0.31275336797005315
	.quad	0x3fee36d43aa480d5              # double 0.94419299558287639
	.quad	0x3fad8761c8abe3c0              # double 0.057673507448221084
	.quad	0x3fd59ede61e04f4a              # double 0.3378215747663843
	.quad	0x3fe294d220b04ae5              # double 0.5806666029405646
	.quad	0x3fe183f503d4569b              # double 0.5473580431741597
	.quad	0x3fe6e5f100bba339              # double 0.71556902068287009
	.quad	0x3fd627049b9e1374              # double 0.34613146969814257
	.quad	0x3fb77c4e008c4298              # double 0.091740489133608327
	.quad	0x3fcd806e5d32f3b4              # double 0.23048190642103139
	.quad	0x3fbcdd336d648428              # double 0.11275025768965519
	.quad	0x3febd53e28ad6f0d              # double 0.86978061623401148
	.quad	0x3febe2136c879175              # double 0.87134715268307039
	.quad	0x3fdfff4e15ffb3ba              # double 0.49995758198093265
	.quad	0x3fdf8cc31411f750              # double 0.49296643218973646
	.quad	0x3f90d062bd5bc9a0              # double 0.016419928367164993
	.quad	0x3fdeec93f59b121a              # double 0.48318957314430266
	.quad	0x3fef005cd7b7449c              # double 0.96879427082071201
	.quad	0x3fa33fca6a0dd4d0              # double 0.037596059270904925
	.quad	0x3fc7ab2aa73df968              # double 0.1849110905277016
	.quad	0x3fc878a8159ab858              # double 0.19118214659596577
	.quad	0x3fbf288911daf4b0              # double 0.12171227155609432
	.quad	0x3fe058bf2b5f09b7              # double 0.5108333441824503
	.quad	0x3fc7cbdc7fe6ef20              # double 0.18590885396212631
	.quad	0x3fc1f1e78fb44aac              # double 0.14019484059152398
	.quad	0x3fd34de324bf2c70              # double 0.30162886227180419
	.quad	0x3fe0e59d2b6d48f9              # double 0.5280290458852327
	.quad	0x3fe2a4eec476a3fd              # double 0.58263338443532542
	.quad	0x3fc881e7e5eac410              # double 0.19146441198748265
	.quad	0x3fcc3241d158a0dc              # double 0.22028372499449389
	.quad	0x3fe31f3c221ccf21              # double 0.59756285345654103
	.quad	0x3fe072d52d7acacb              # double 0.51401766665215953
	.quad	0x3fe6c72d4d4c3c53              # double 0.71181359383798293
	.quad	0x3fdd2ab44445e00e              # double 0.4557314554908779
	.quad	0x3fc1cca049565d64              # double 0.13905719357419877
	.quad	0x3fef371a86cc00e0              # double 0.9754765160323835
	.quad	0x3fe368d88f202edb              # double 0.60654857591859057
	.quad	0x3fe0c49e6ebdd966              # double 0.52400132779329733
	.quad	0x3feeb705966c4540              # double 0.95984153155783502
	.quad	0x3fe973eabd41141d              # double 0.79540001834596163
	.quad	0x3fed2789690afa15              # double 0.91107626453578183
	.quad	0x3fe9f31bd88c470c              # double 0.81092636389277705
	.quad	0x3fdc0fc54343d2f4              # double 0.43846255844918791
	.quad	0x3fea312a61975561              # double 0.81850165425082022
	.quad	0x3fd16cddec0bc1dc              # double 0.27226970721588173
	.quad	0x3fc92867ee308e50              # double 0.19654559259753279
	.quad	0x3fe02e1b7c64e92b              # double 0.50562834068049278
	.quad	0x3fe793ff00829c9a              # double 0.73681593036316717
	.quad	0x3fe1b93e5d1b7651              # double 0.55386274514212108
	.quad	0x3fe1e105b32b5ea0              # double 0.55871853822732831
	.quad	0x3fa14b7bc205a660              # double 0.033779017862639149
	.quad	0x3fe1ed4f22e9e50d              # double 0.56021839922974126
	.quad	0x3fee24d31527da7e              # double 0.94199518329590126
	.quad	0x3f96ceea19d889c0              # double 0.022273691012864694
	.quad	0x3fdd53126be9c05a              # double 0.45819531000507185
	.quad	0x3fd3343517d02622              # double 0.30006148648735309
	.quad	0x3fede75d6e6088fa              # double 0.93449279363656435
	.quad	0x3feaa570102b1839              # double 0.83269503744009576
	.quad	0x3fac4abc3e3c51e0              # double 0.05525768527710162
	.quad	0x3fe040b18701102e              # double 0.50789715164183291
	.quad	0x3fdf538222b5e1c6              # double 0.48947194471068334
	.quad	0x3fe54572e0d0b9b1              # double 0.66472762974972543
	.quad	0x3fdd9abe60d37b48              # double 0.46256980376886192
	.quad	0x3fd9c305239fdef2              # double 0.40252808073954249
	.quad	0x3fed5aaf4ddfa269              # double 0.91731991967851656
	.quad	0x3fced4d1785fc320              # double 0.24086969735756103
	.quad	0x3fe30fe2d11dea91              # double 0.59568920939575964
	.quad	0x3fb8fdcab002a2c0              # double 0.097622554751647606
	.quad	0x3fb8ff81b109a6a0              # double 0.097648721429914875
	.quad	0x3fbc0216cdbf65e0              # double 0.10940687678466743
	.quad	0x3fd703bb9cdfdc38              # double 0.3596028358437624
	.quad	0x3fee8e049683ba8a              # double 0.9548361720788574
	.quad	0x3f73d2b327ae1300              # double 0.0048396108858284048
	.quad	0x3fe4f4d2a7fe3133              # double 0.65488560496445414
	.quad	0x3fefaefc5d6905c7              # double 0.99011057132900581
	.quad	0x3fb0861ab8910bc0              # double 0.064546270427896069
	.quad	0x3f92d78b453f00e0              # double 0.018400360204169242
	.quad	0x3fb3ec5e1d66bc18              # double 0.077825433900884256
	.quad	0x3fe2928d61b9a5d2              # double 0.58038968169165117
	.quad	0x3fdbefdafa5db082              # double 0.43651461076547815
	.quad	0x3fb93fb9cb578c30              # double 0.098628627914465694
	.quad	0x3f88890bebd83800              # double 0.011980145583063262
	.quad	0x3fe7458380df5529              # double 0.72723555727376266
	.quad	0x3fe16e46a90ced3f              # double 0.54471142785715887
	.quad	0x3fd31fec2fe733e4              # double 0.29882340124168949
	.quad	0x3fc99bd2e2f62498              # double 0.200067864247363
	.quad	0x3fccebf5bb1e105c              # double 0.22595092426866159
	.quad	0x3fd6f8f89a1c784a              # double 0.3589459900848665
	.quad	0x3fcc99f7a834bff4              # double 0.22344871247469167
	.quad	0x3fedb6efc67115e4              # double 0.92858113058235547
	.quad	0x3fe3f914ee105f09              # double 0.62415548798432596
	.quad	0x3fced310edab75f0              # double 0.24081622700661809
	.quad	0x3fcb4a8a021fe938              # double 0.21321225265257637
	.quad	0x3fe8af720a9d50d0              # double 0.77141668389460882
	.quad	0x3feb42b30e2cede5              # double 0.85189202088025395
	.quad	0x3fee40f6c868d6bf              # double 0.94543017523275086
	.quad	0x3fa70558149cafe0              # double 0.044962646976585807
	.quad	0x3fc232a44d5e0038              # double 0.14217046525664201
	.quad	0x3fbc8cb997c1a410              # double 0.11152229266157598
	.quad	0x3fe85d75b548f5fa              # double 0.7614086666796418
	.quad	0x3fecbe54f82251df              # double 0.89823387588199555
	.quad	0x3fe72c869ed58bba              # double 0.72418528578088304
	.quad	0x3feeea9fa4d60d77              # double 0.96614057726439639
	.quad	0x3fe74b43b8abdd9a              # double 0.72793756550429412
	.quad	0x3fe24dc7a4933d4f              # double 0.57199461120209516
	.quad	0x3feb365519ce9643              # double 0.85038237610269396
	.quad	0x3fe9d8ed1de3d1bb              # double 0.80773025358080675
	.quad	0x3f97e6f7badb1260              # double 0.023342009334344715
	.quad	0x3fef8a06d86324be              # double 0.98559896720066553
	.quad	0x3fe8b5c766ba0136              # double 0.77218980850015018
	.quad	0x3feaea4fbd0cfc9a              # double 0.84110247539492211
	.quad	0x3fdb37edbe768974              # double 0.42528861617952107
	.quad	0x3fdb59e66f5fa428              # double 0.42736206890418993
	.quad	0x3fe71843b90c3482              # double 0.72171198026775607
	.quad	0x3fe8d0d0b880973e              # double 0.77549015079123484
	.quad	0x3fec2f50ee8cf8e6              # double 0.88077589599540995
	.quad	0x3fdac239a721910a              # double 0.41810456582449318
	.quad	0x3feac77cecf57dfa              # double 0.83685156136556249
	.quad	0x3fd7eba71bb5c40a              # double 0.37375810342842952
	.quad	0x3fe88e25e2a2af2d              # double 0.76735204949134117
	.quad	0x3fefb10d827d837d              # double 0.99036288725265786
	.quad	0x3fe92a00c96f7751              # double 0.78637732832769747
	.quad	0x3fe75dae419f62a0              # double 0.7301856309596424
	.quad	0x3fd5fff3f09d6c46              # double 0.34374712464859092
	.quad	0x3fd031456809602e              # double 0.25300727042986437
	.quad	0x3fa9ddf6888f58f0              # double 0.050521568460384247
	.quad	0x3fe1efc17c24d2ad              # double 0.56051706549495395
	.quad	0x3fed5d9de8b3178a              # double 0.91767783593307795
	.quad	0x3fc3c51068b94e90              # double 0.15445141900510295
	.quad	0x3fe2eff60f6bf9a3              # double 0.59179213535371777
	.quad	0x3fd057c9890f3b54              # double 0.25535810837475492
	.quad	0x3fe7bc5ee5208488              # double 0.74174446822520768
	.quad	0x3fe3850dfbbfc7f8              # double 0.60999201936488046
	.quad	0x3fe8f6a1ad24e48f              # double 0.78010639016351202
	.quad	0x3fc1f54f789a9798              # double 0.1402987803350555
	.quad	0x3fe22c8324e5f859              # double 0.56793362814620274
	.quad	0x3fe0a66066314685              # double 0.52030963859051893
	.quad	0x3fb78ba19245be80              # double 0.091974352084202237
	.quad	0x3fe422c80ad7e6ef              # double 0.62924577825398653
	.quad	0x3fe71870377d4cc4              # double 0.72173319661887847
	.quad	0x3fdd711b65fe81de              # double 0.46002850494735792
	.quad	0x3fe752d42dd9b8a0              # double 0.72886094050570094
	.quad	0x3fca348a0aa0c844              # double 0.20472836989353216
	.quad	0x3fd9bb107ccab516              # double 0.40204250513745998
	.quad	0x3fe11a04668c3171              # double 0.53442592648347731
	.quad	0x3fe2834f21a4db03              # double 0.57852894373976971
	.quad	0x3fcd15479870a810              # double 0.22721190398561975
	.quad	0x3fe8747f4e3b4fcf              # double 0.76422086028696323
	.quad	0x3fd12c47f5babb38              # double 0.26832770344747159
	.quad	0x3fc900a520661e8c              # double 0.19533218461969104
	.quad	0x3fea1ef3851d745f              # double 0.81627822875055844
	.quad	0x3fe3fb64ae8ad4e2              # double 0.62443765726370892
	.quad	0x3fd3027f5c2992de              # double 0.297027435304967
	.quad	0x3fd8121c1a1a7712              # double 0.37610533284338132
	.quad	0x3fcc36aa71599128              # double 0.22041826758062055
	.quad	0x3fef000a7496b497              # double 0.96875498553494565
	.quad	0x3fd99a79837a1f5c              # double 0.40005338515810762
	.quad	0x3fcd4e3a4bed6e00              # double 0.22894982058902258
	.quad	0x3fe2aab5231b7680              # double 0.58333832604303382
	.quad	0x3fefeb4ba98e4644              # double 0.9974726020465785
	.quad	0x3fee330e4c29185c              # double 0.94373240351775278
	.quad	0x3fc59e24c959b900              # double 0.16888866263929714
	.quad	0x3f8bc4d1c905b800              # double 0.013558997103896075
	.quad	0x3fcc8d28450beaa0              # double 0.22305777903951185
	.quad	0x3fea380b053abed1              # double 0.81934119244939485
	.quad	0x3fa3e001f9699860              # double 0.038818418212756667
	.quad	0x3fec25385f0895b8              # double 0.87954348145711148
	.quad	0x3fe28e5a195145cc              # double 0.57987694687670333
	.quad	0x3fd075ecdae731ca              # double 0.25719758393531988
	.quad	0x3fc205aa7f433e90              # double 0.14079791273114894
	.quad	0x3fa51685d1cd4d80              # double 0.0411874598127282
	.quad	0x3fd59cb4faea7da0              # double 0.33768963340295421
	.quad	0x3fd00f7329ad910a              # double 0.2509429842960037
	.quad	0x3feeb3d5e2fd24a6              # double 0.95945257505185988
	.quad	0x3fcc2f6004d7df4c              # double 0.22019577251898637
	.quad	0x3fc48c9389dad478              # double 0.1605400488967097
	.quad	0x3fe5c175b9f056fa              # double 0.67986570659806422
	.quad	0x3fd3c4ebf57932ca              # double 0.30889414760603684
	.quad	0x3fda93d0558cebbc              # double 0.41527183870828899
	.quad	0x3fd6760094774ec8              # double 0.35095228670728007
	.quad	0x3fe3f6128bf6894c              # double 0.62378814064531118
	.quad	0x3fe758cdc44c38f4              # double 0.72959030475047237
	.quad	0x3fc48999387eb16c              # double 0.16044917353191168
	.quad	0x3feb9436d7344648              # double 0.86184255630559736
	.quad	0x3feed953e88107b4              # double 0.96402926836912294
	.quad	0x3fbaf1a40b698538              # double 0.10524964598291298
	.quad	0x3fe8f0d81e9d0a9f              # double 0.77939992884815357
	.quad	0x3fd1c2c275058722              # double 0.27751218250169718
	.quad	0x3fdc6a4e0b0beaf8              # double 0.44398833349957512
	.quad	0x3fe4c38174fc9271              # double 0.64886544083544895
	.quad	0x3fee63a180874368              # double 0.94966197112271988
	.quad	0x3fd4bfa5248d9b96              # double 0.32419708795208046
	.quad	0x3feb33ef9c4ea149              # double 0.85008984116306252
	.quad	0x3fd9bc9574b01338              # double 0.40213524241726217
	.quad	0x3fe3313121e68085              # double 0.59975487347766487
	.quad	0x3fe118a6d23048e1              # double 0.53425923397506037
	.quad	0x3fea607e7320d176              # double 0.82427904592490964
	.quad	0x3fe3b2750a509763              # double 0.61553432478534054
	.quad	0x3fc3fdb269a80fd4              # double 0.15617971571930289
	.quad	0x3fc7a7ff34ad2ba0              # double 0.18481435844509253
	.quad	0x3feab0d087d35684              # double 0.83408381012368737
	.quad	0x3fd083407ae41458              # double 0.25801097870891487
	.quad	0x3fde4fc226504e1a              # double 0.47361806623050173
	.quad	0x3feb2f4418e5c8a3              # double 0.84951977598963813
	.quad	0x3fd0b1d2a20e2b9e              # double 0.26085344148366996
	.quad	0x3feb6a33127e20b8              # double 0.85671380626538163
	.quad	0x3fe29a4da039e7a5              # double 0.58133584303071884
	.quad	0x3fd03f3db1239a6e              # double 0.25385992335069474
	.quad	0x3f9d2dfa37677de0              # double 0.028495702392204225
	.quad	0x3fe289071ed2ec58              # double 0.57922702808663029
	.quad	0x3fce7bc0d9bd1178              # double 0.23815165168538122
	.quad	0x3fdb54e28cc23100              # double 0.42705596681550162
	.quad	0x3fdf672134e661e4              # double 0.49066953817376047
	.quad	0x3fe287a24a72bed3              # double 0.57905687847775267
	.quad	0x3fed83660ecf2026              # double 0.92228987591170575
	.quad	0x3fa4f58999d30b20              # double 0.040935802485839057
	.quad	0x3fe92830b6a33ffb              # double 0.78615604087281044
	.quad	0x3fd07bae8a6b9b0a              # double 0.25754893796549594
	.quad	0x3fdd2a870d76c19e              # double 0.45572067560990515
	.quad	0x3fecde0b2f7e7529              # double 0.9021049430481628
	.quad	0x3fd5689d268875c2              # double 0.33451012385361534
	.quad	0x3fed212bbae686ac              # double 0.91029917243959834
	.quad	0x3fbe2fea23efde90              # double 0.1179186189400474
	.quad	0x3fd3ca87295e52de              # double 0.30923632659805189
	.quad	0x3fea58fc5b27508b              # double 0.82336252025062728
	.quad	0x3fe0b01c06f3fa48              # double 0.5214977393914717
	.quad	0x3fae478888821c50              # double 0.059139506019214694
	.quad	0x3fe943d21564447b              # double 0.78952888658581288
	.quad	0x3fcaee8e23b37164              # double 0.21040512793741606
	.quad	0x3fe5de5d735e976d              # double 0.68339417012314885
	.quad	0x3fdb5573882733ca              # double 0.42709053322033397
	.quad	0x3fe96bd1b3195d13              # double 0.79441151600159043
	.quad	0x3fd9b876d88b0926              # double 0.40188380381381916
	.quad	0x3fd1fe18407af7e0              # double 0.28113371178539914
	.quad	0x3febb8569646b3fb              # double 0.86625222540681024
	.quad	0x3fd76aa731e4a4e8              # double 0.36588458893181874
	.quad	0x3fef788aed93625a              # double 0.98346468354709349
	.quad	0x3fec0374cbc0d087              # double 0.87542190356772742
	.quad	0x3fe34140f87f7701              # double 0.60171555075405092
	.quad	0x3fec0fd6c9d0dbc9              # double 0.87693347375067632
	.quad	0x3fc41fb5d4dfcf90              # double 0.15721772093058606
	.quad	0x3fcc7d20ba984b04              # double 0.22256859885290947
	.quad	0x3fc3316e87350900              # double 0.14994603731071976
	.quad	0x3fe926b831b7468f              # double 0.78597650251522733
	.quad	0x3fdfae675ea20222              # double 0.49501976243485235
	.quad	0x3fe3c38d680efb5e              # double 0.61762113880090985
	.quad	0x3fea6921a18fd2ed              # double 0.82533341937104654
	.quad	0x3fecae0212d50480              # double 0.89624122312683596
	.quad	0x3fa268d856a90f40              # double 0.035956154421482811
	.quad	0x3fd59b5f96d356e0              # double 0.33760823945099894
	.quad	0x3fe0e3126f4b6818              # double 0.52771875130861456
	.quad	0x3fba90633fe51d08              # double 0.10376568136154074
	.quad	0x3fe7593dc6f6a22c              # double 0.72964371547738471
	.quad	0x3f85a1c6d9237900              # double 0.010562470914404987
	.quad	0x3fd3854bc0a44fec              # double 0.30501073658638123
	.quad	0x3fcedaa3ccd16074              # double 0.24104735852120351
	.quad	0x3fcb8b0e102e1770              # double 0.21518111982384935
	.quad	0x3fef729d9ba9c8de              # double 0.98274116900418185
	.quad	0x3feae71a38519b30              # double 0.8407107448555049
	.quad	0x3fe2ee81911c8590              # double 0.59161451665947773
	.quad	0x3fe835a9d4308223              # double 0.75655070727595264
	.quad	0x3fee2a0abbf7013a              # double 0.94263207160842133
	.quad	0x3fe2655fbdb5d572              # double 0.57487475445547731
	.quad	0x3fd369ddf0ed51f8              # double 0.30333660629301518
	.quad	0x3fe2d989e66287bf              # double 0.58905501362846013
	.quad	0x3fc535ec08978924              # double 0.16570806903389113
	.quad	0x3fd56bc05d9854a0              # double 0.33470162525311231
	.quad	0x3fe94741bf9cb1f7              # double 0.78994834350811416
	.quad	0x3fd26c965d910bfa              # double 0.2878776468025418
	.quad	0x3fea6574428674d6              # double 0.82488453858573041
	.quad	0x3fd481d6c27e69a8              # double 0.32042473786864401
	.quad	0x3fe42ee8ab07f2db              # double 0.63072617916585771
	.quad	0x3fbe3e1a14760478              # double 0.11813509940658828
	.quad	0x3fc9ae4d1cce9578              # double 0.20063175112333531
	.quad	0x3fe949fda9ebf90d              # double 0.7902820891174841
	.quad	0x3fe88be59faf0422              # double 0.76707726658071729
	.quad	0x3f9c54accf2b8140              # double 0.027666759628915516
	.quad	0x3fdf066b1d2df616              # double 0.48476674890102467
	.quad	0x3fe6ac72eec48631              # double 0.70855089792548231
	.quad	0x3fef53ff86e2912c              # double 0.97900368065578424
	.quad	0x3fe4a56bc464444e              # double 0.64519298894641408
	.quad	0x3fe250075852837d              # double 0.5722691273732462
	.quad	0x3fe81fc012317c46              # double 0.75387576630954167
	.quad	0x3fc910495cec1750              # double 0.19580952679842278
	.quad	0x3febadb841cbaa4b              # double 0.86495602465340349
	.quad	0x3fee275fdb32975b              # double 0.94230645000491664
	.quad	0x3f71373538e9e980              # double 0.004203040980991779
	.quad	0x3fdea2a1a106a452              # double 0.47867623067083287
	.quad	0x3fe22e9ee0928c17              # double 0.56819099294478093
	.quad	0x3fee2ca665954e57              # double 0.94295043793176603
	.quad	0x3f83cc3e220700c0              # double 0.0096669057974171357
	.quad	0x3fd5de490debf1a0              # double 0.3416922222093266
	.quad	0x3fddf79b8460d8a0              # double 0.46823776176041498
	.quad	0x3fdd02624783cc5a              # double 0.45327050193663398
	.quad	0x3f9c3ce475005020              # double 0.027576036111057189
	.quad	0x3fdcc2103c99e3e6              # double 0.44934469144896949
	.quad	0x3fda22594cf4a54a              # double 0.40834648623657144
	.quad	0x3f949e43b509b080              # double 0.02013498108355849
	.quad	0x3fdbec56c1070d76              # double 0.43629998064371678
	.quad	0x3fe6a05cc46c1ea4              # double 0.70707548488367822
	.quad	0x3fe37392cdfd7077              # double 0.60785808784886697
	.quad	0x3f98d6d05740f7a0              # double 0.02425694973521042
	.quad	0x3fe4518b8ad67a3f              # double 0.6349542342830502
	.quad	0x3fecebc95978b7d8              # double 0.90378253436005718
	.quad	0x3fe773aa5521e11d              # double 0.73286930682573692
	.quad	0x3fee0fc82c511214              # double 0.93942650466539356
	.quad	0x3fd24389c42d8458              # double 0.2853722015189013
	.quad	0x3fed3f9875e147f2              # double 0.91401312850416461
	.quad	0x3fc5685f48d6df24              # double 0.16724768692596925
	.quad	0x3fe86809f06db7bf              # double 0.7627000518675614
	.quad	0x3fd3423dd7415ab0              # double 0.30091806431793611
	.quad	0x3fdadede26b7097e              # double 0.4198527696682034
	.quad	0x3fefb5de87993fad              # double 0.99095083698374752
	.quad	0x3fdfd577652ab98e              # double 0.49740395431117512
	.quad	0x3fc4647685d2d450              # double 0.15931588682511455
	.quad	0x3fedee978cea312b              # double 0.93537499926018108
	.quad	0x3feb14b17a1c219c              # double 0.8462760338743922
	.quad	0x3fdc7aa5c9768e90              # double 0.44498581575519669
	.quad	0x3fd48de47a1ecac0              # double 0.32116043020065987
	.quad	0x3fec9c27339d6c05              # double 0.89406166153946798
	.quad	0x3fbe7267b8411478              # double 0.11893318413156517
	.quad	0x3f97655d8eba69e0              # double 0.022847616039692542
	.quad	0x3feca4550e2a38d1              # double 0.89506008879268439
	.quad	0x3fc785b4bb5ee2c8              # double 0.18376788281400125
	.quad	0x3fe52c4a0d014e38              # double 0.66165640392359304
	.quad	0x3fb10a23781dd070              # double 0.066560952019985242
	.quad	0x3fd74610093ae2de              # double 0.36365128423089554
	.quad	0x3fd969333510f23e              # double 0.39704590017553076
	.quad	0x3fede0131321dd10              # double 0.93360284554265327
	.quad	0x3fc930ad37e770a4              # double 0.19679799298945
	.quad	0x3faab43e803fa110              # double 0.052156403689709419
	.quad	0x3fe50e7115a736c1              # double 0.65801290730606621
	.quad	0x3fef1096dcc4cc79              # double 0.97077506178756245
	.quad	0x3fcbc033d6bd7ca8              # double 0.21680305466995731
	.quad	0x3fd1be912e9b3676              # double 0.27725629378696881
	.quad	0x3fd232935674c58a              # double 0.28433688586218209
	.quad	0x3fdd292128931da4              # double 0.45563534700746744
	.quad	0x3fd11ef100b0dcb8              # double 0.26751351420848435
	.quad	0x3fecdae4a1213759              # double 0.90172034712461901
	.quad	0x3fd463c00e4da502              # double 0.31858827015692281
	.quad	0x3fe9646cb7dc8e51              # double 0.7935088721319038
	.quad	0x3fe0cd412e8d1d1a              # double 0.52505549518619721
	.quad	0x3fea0d36bb77bf5c              # double 0.81411301245496359
	.quad	0x3fec92e49161f4f3              # double 0.89293125529334672
	.quad	0x3fc572ff65a6e120              # double 0.16757194961042732
	.quad	0x3fe6452208b08942              # double 0.69593908021150974
	.quad	0x3fe6f753a35737c5              # double 0.71769124891738356
	.quad	0x3fe977fbd62697f1              # double 0.79589645220107574
	.quad	0x3fb4e6f812dc1bf0              # double 0.08164930782741897
	.quad	0x3fe51d579b16ebc1              # double 0.6598318127720334
	.quad	0x3fda580db5f86a1c              # double 0.41162436266464097
	.quad	0x3fd7b1408b527d96              # double 0.37019361119924932
	.quad	0x3fefd083d1f6562b              # double 0.99420348175289541
	.quad	0x3fca3dc51cd34420              # double 0.20501006991847337
	.quad	0x3fe5a598d98daee6              # double 0.67646448603542519
	.quad	0x3fd1f86d8dce0542              # double 0.28078783844110344
	.quad	0x3fc2a4161f93cdd4              # double 0.14563252012122396
	.quad	0x3fdd94eff1fcca44              # double 0.46221541053379078
	.quad	0x3fc05e4340964180              # double 0.12787666944178611
	.quad	0x3fe6fb161b96b621              # double 0.71815019024296955
	.quad	0x3fedf0657255932f              # double 0.93559524851716513
	.quad	0x3fd4a9767617f008              # double 0.32284318478173235
	.quad	0x3fe546251d28b903              # double 0.6648126191628595
	.quad	0x3fe6858434ad1bdf              # double 0.70379839218446338
	.quad	0x3febfc626fbe5ffc              # double 0.87455865693027545
	.quad	0x3fe1d540697c3f16              # double 0.55728169062237742
	.quad	0x3fd00c2e99a3dedc              # double 0.25074353221815016
	.quad	0x3fe48dc5d11b4af6              # double 0.64230624047408358
	.quad	0x3fee1c838f749c00              # double 0.94098070162442582
	.quad	0x3fe87242ed50ab38              # double 0.76394792891128471
	.quad	0x3f877c78de02efc0              # double 0.011467880511524586
	.quad	0x3fe44e4e04ef8192              # double 0.63455868686655692
	.quad	0x3fd71bad17dfd542              # double 0.36106421786765364
	.quad	0x3fed3c45733bdfaa              # double 0.91360733515374659
	.quad	0x3fd18ba7355e018c              # double 0.27414875232354841
	.quad	0x3fd5bf292a1f154c              # double 0.33979252923412129
	.quad	0x3fc94eb652e64dcc              # double 0.19771460578759414
	.quad	0x3fecc92ea4b734b6              # double 0.8995583741285802
	.quad	0x3fda93864a4e26ba              # double 0.41525418526053282
	.quad	0x3f98f898c2c3b180              # double 0.0243858212351582
	.quad	0x3fe0062ec3ff6966              # double 0.50075472145844624
	.quad	0x3fdee1814498db78              # double 0.48251373003898079
	.quad	0x3fe3691a3ecbdc29              # double 0.60657989754588926
	.quad	0x3fd27aaca2520a02              # double 0.28873744823081904
	.quad	0x3fd31bc2bae7e726              # double 0.2985693764927525
	.quad	0x3fd19bb88082fdfc              # double 0.27512943792314082
	.quad	0x3fe242c2085dad23              # double 0.5706491626164375
	.quad	0x3fe214434e432e9b              # double 0.56497350011473502
	.quad	0x3fe14a8372b573d8              # double 0.54034588245451243
	.quad	0x3fddfdc5b91eb6e2              # double 0.4686140353977476
	.quad	0x3fd00c32ca9af0fc              # double 0.25074453149478848
	.quad	0x3fc4210ec79adea0              # double 0.1572588419564811
	.quad	0x3fd76b0f51ddcf06              # double 0.36590941424150036
	.quad	0x3fe88e2d8b7a4ab3              # double 0.76735570184458479
	.quad	0x3fa0b2582c601630              # double 0.032610659996901936
	.quad	0x3fefc7ba42db6957              # double 0.99313080842993428
	.quad	0x3fe8b828f701107d              # double 0.77248047106742457
	.quad	0x3fe526d020a0bdb2              # double 0.66098791477809571
	.quad	0x3fe0ae2e461118f3              # double 0.52126229939383817
	.quad	0x3fba9106239726b0              # double 0.10377539032847483
	.quad	0x3feaf01605c625d9              # double 0.84180737617242152
	.quad	0x3fedd583ca952daf              # double 0.93231381956996084
	.quad	0x3fd5876d765c17b6              # double 0.33639084394996688
	.quad	0x3fe4f46f13ac3575              # double 0.65483812181780243
	.quad	0x3febefc5c6cef975              # double 0.87301911191734283
	.quad	0x3fccbcdb48f8bbac              # double 0.22451344550196717
	.quad	0x3fb2ab0b452b5370              # double 0.072922424685499143
	.quad	0x3fd716412a98ca36              # double 0.3607333103165361
	.quad	0x3fdfa6a47a90f462              # double 0.4945460507331686
	.quad	0x3fef5f281a1d4f76              # double 0.98036580181586319
	.quad	0x3fecf90a0da4cfd3              # double 0.90540030159763274
	.quad	0x3fe450a7cc730803              # double 0.6348456376219932
	.quad	0x3fdfc50baab8e974              # double 0.49640170738316347
	.quad	0x3f85ca5d45b80d80              # double 0.010639885606912314
	.quad	0x3fbeea503dd93cc8              # double 0.12076283941245258
	.quad	0x3fe174f5b7df5fe4              # double 0.545527323843086
	.quad	0x3fe8199b55936be3              # double 0.75312582696949126
	.quad	0x3fe4300544ddb634              # double 0.63086188745882632
	.quad	0x3fd72a2c83fc05e4              # double 0.36194908990009211
	.quad	0x3fe24cba18860a76              # double 0.571866081140185
	.quad	0x3fec36c9c202e3b6              # double 0.88168800251798163
	.quad	0x3fc802ecc00a79c8              # double 0.18758925797460635
	.quad	0x3fea7632eda58858              # double 0.82692858138421865
	.quad	0x3fe6181fc6d8bcd3              # double 0.6904448398326174
	.quad	0x3fe0c3b7d35fa8db              # double 0.52389136585159279
	.quad	0x3faf52da26502a80              # double 0.06117898671808053
	.quad	0x3fc647c16364edc4              # double 0.17406480172381411
	.quad	0x3fe3888d61398afb              # double 0.61041897763456576
	.quad	0x3fe475485e22f540              # double 0.63931673418088764
	.quad	0x3fd5b3a7223f2c66              # double 0.3390901407662511
	.quad	0x3fd6b076c7e0965e              # double 0.35452050704257043
	.quad	0x3fe6d754134a8b07              # double 0.71378520744141916
	.quad	0x3fe5373cc3837bdf              # double 0.66299284158946736
	.quad	0x3fec07c619afc0a1              # double 0.87594895378972037
	.quad	0x3fb2f8bb05db1780              # double 0.074107827119489044
	.quad	0x3fea1ba06b81e52b              # double 0.81587239263095535
	.quad	0x3fe89ef31da62c65              # double 0.76940303603022342
	.quad	0x3fc4181b58bddb4c              # double 0.15698568184935835
	.quad	0x3fdbaeee710d9648              # double 0.43255196609820645
	.quad	0x3fd51679e6dc6766              # double 0.32949683709158817
	.quad	0x3fdd47e8e9922472              # double 0.45751402673392427
	.quad	0x3fe0d64e0f82f720              # double 0.52616026906591529
	.quad	0x3fe61ce55a89a80b              # double 0.69102733309887421
	.quad	0x3fea4cd60830902f              # double 0.82187940215636057
	.quad	0x3fee90ba52474ce0              # double 0.95516696996710592
	.quad	0x3fe176553df727f3              # double 0.54569494345309832
	.quad	0x3fb98dc92e97f898              # double 0.099819730639838844
	.quad	0x3fb82d2fc0555ba0              # double 0.094439491707233091
	.quad	0x3fdcfd7ba6251d02              # double 0.45297137475104432
	.quad	0x3fe722b7b3eba6df              # double 0.72298798695302569
	.quad	0x3fdd402ec18e8272              # double 0.4570423975183423
	.quad	0x3fab9bbe43150790              # double 0.053922601402987103
	.quad	0x3fe74646b4337746              # double 0.72732863612666487
	.quad	0x3fec3f05247759b4              # double 0.88269288179690486
	.quad	0x3fd2bc0a7dc239da              # double 0.29272711068270285
	.quad	0x3fed4f0756985732              # double 0.91589705384351405
	.quad	0x3fe04bbfde165b1a              # double 0.50924676300460026
	.quad	0x3feaddd44418e3f7              # double 0.83957875538101134
	.quad	0x3fe1cd4cc6bfe089              # double 0.55631102388635256
	.quad	0x3fd8a8e4ff90de14              # double 0.38530850370031655
	.quad	0x3fb795755c60b2f0              # double 0.092124304822117641
	.quad	0x3fea0d96e484f881              # double 0.8141588652868138
	.quad	0x3fd807d230f3c62c              # double 0.37547735958568995
	.quad	0x3fea9caf229f30e8              # double 0.83162647974088788
	.quad	0x3fa5f906744d3e10              # double 0.042915536591518699
	.quad	0x3fe535e5dfe222a8              # double 0.6628293392869482
	.quad	0x3fa8f8907675c6e0              # double 0.048771395168740517
	.quad	0x3fde45897d0873f2              # double 0.47299420557266025
	.quad	0x3fe2ace92ae49db3              # double 0.58360727670235801
	.quad	0x3fdbffd1b3ae2f58              # double 0.43748896166720419
	.quad	0x3fcf23243af95694              # double 0.24325993423069703
	.quad	0x3fee40f877dfc110              # double 0.94543097889803285
	.quad	0x3fd5cf253506e9ac              # double 0.34076814821642176
	.quad	0x3fdcd2f59cedf498              # double 0.45037594151637839
	.quad	0x3f8abf10c78be2c0              # double 0.013059741105722167
	.quad	0x3fbbdcb5af20b9d0              # double 0.10883651280958095
	.quad	0x3fd7ff32ca7b1e58              # double 0.37495107434776775
	.quad	0x3fe247793f95d722              # double 0.57122480792051911
	.quad	0x3fa74c80ad96c1c0              # double 0.045505543890047573
	.quad	0x3fceb121fa6e5c60              # double 0.2397806618507472
	.quad	0x3fd3a2b082ec063c              # double 0.30680477891300817
	.quad	0x3fb7f1b3ea564eb8              # double 0.093531841956344119
	.quad	0x3fdc57844ef605d6              # double 0.44284160338437795
	.quad	0x3fdcfda7e8e9c5f8              # double 0.45298192735125964
	.quad	0x3fe1093987a66b1b              # double 0.53237606519846581
	.quad	0x3f6bc42417ff0400              # double 0.0033894257503281899
	.quad	0x3fe44124099af878              # double 0.63295175434156103
	.quad	0x3fe823a9ac84128c              # double 0.75435336775315553
	.quad	0x3fe2808a4f183639              # double 0.5781909508529629
	.quad	0x3feb7016e6e516d9              # double 0.85743279549270845
	.quad	0x3fc0817d698fc494              # double 0.12895171789526627
	.quad	0x3fddf9b2e9108f7c              # double 0.46836540947173666
	.quad	0x3fc26de76353bde0              # double 0.14397899961430394
	.quad	0x3fe0879e758eb03a              # double 0.5165550514261732
	.quad	0x3f6ff3a46d41a600              # double 0.003900357385693054
	.quad	0x3fda8f0930d1936e              # double 0.41498021857687817
	.quad	0x3fe1be524fcd0257              # double 0.55448260866257726
	.quad	0x3fe3d58569bf6b38              # double 0.61981459287503693
	.quad	0x3fe40eac9e6afa33              # double 0.62679129544250711
	.quad	0x3feb843adcba1ae7              # double 0.85989134894120134
	.quad	0x3fe91bb59cc58b7e              # double 0.7846324979731063
	.quad	0x3fe0f2cbe19beaa2              # double 0.52963823379771591
	.quad	0x3fe12a4a5c21f197              # double 0.53641241068503376
	.quad	0x3fea4796465f5e2e              # double 0.82123864884028364
	.quad	0x3fe447bebe4a9424              # double 0.63375794569276822
	.quad	0x3fe93be3d03b75cd              # double 0.78856077833523275
	.quad	0x3fd42c1d18231ff4              # double 0.31519248349331908
	.quad	0x3fdc817d83275bac              # double 0.44540345962507888
	.quad	0x3fef562299493d5f              # double 0.97926454485597591
	.quad	0x3fe4a824d91481b4              # double 0.64552538298089823
	.quad	0x3fbb88c86f72fa68              # double 0.10755589219022854
	.quad	0x3fefc87f00df528a              # double 0.99322462244397625
	.quad	0x3fe2f1a1e74a6f82              # double 0.59199614690759028
	.quad	0x3fa3815d72cd7700              # double 0.038096351875294587
	.quad	0x3fee7b3f58f88bc0              # double 0.95254485489964935
	.quad	0x3fd2f1658b9d60c8              # double 0.29598368295911515
	.quad	0x3fd541414ed10d06              # double 0.33210785576757507
	.quad	0x3fc2baf716f47de8              # double 0.1463307249150454
	.quad	0x3fc04a4c576c01b8              # double 0.12726740139625092
	.quad	0x3fef3218a1207c0d              # double 0.97486525983902228
	.quad	0x3fec2b4288f4592f              # double 0.88028074978755011
	.quad	0x3fc14bd769fa49b0              # double 0.13512699770633452
	.quad	0x3fed75c84dc7834b              # double 0.92062773886946425
	.quad	0x3fc133954d0928c4              # double 0.13438669454109775
	.quad	0x3f95fea9a66de760              # double 0.021479273589171455
	.quad	0x3fea926bec7000ea              # double 0.83037372760011618
	.quad	0x3fdf28518b9f1f88              # double 0.48683584818763181
	.quad	0x3fe7913585937461              # double 0.73647571648656307
	.quad	0x3fc237838477c2f8              # double 0.14231914489894115
	.quad	0x3fbaa65b9b0313a0              # double 0.10410091909859753
	.quad	0x3fdbbc7af404a93c              # double 0.43337892370131548
	.quad	0x3fa8975b55723670              # double 0.048029760532796284
	.quad	0x3fdb1fcbaa64c8a2              # double 0.42381564750679435
	.quad	0x3fd49cc6b0017f64              # double 0.32206885517188355
	.quad	0x3fd5080917d814a4              # double 0.32861544922372787
	.quad	0x3fdd23b171a3b3ce              # double 0.45530353639224763
	.quad	0x3fc8b9687b7f23fc              # double 0.19315820722684396
	.quad	0x3fea9e4659807092              # double 0.83182065468601452
	.quad	0x3fe3c072bb7707d4              # double 0.61724220861673951
	.quad	0x3feb879c77e3ea98              # double 0.86030410209726238
	.quad	0x3fef6448d827501e              # double 0.98099176614278227
	.quad	0x3fb27c8a1855e7a8              # double 0.07221282095079451
	.quad	0x3fa6b8a9c073a0f0              # double 0.044377617590557139
	.quad	0x3fe77110b535cbf8              # double 0.73255191223722615
	.quad	0x3fe86a119b1d9ef6              # double 0.7629478482822083
	.quad	0x3fec7add72a61749              # double 0.88999817268698067
	.quad	0x3fc601c4505ffd04              # double 0.17192892002638172
	.quad	0x3fdca499c69947fe              # double 0.44754642862710614
	.quad	0x3fcd59d9d55a12cc              # double 0.22930453221865432
	.quad	0x3fbad7f6bd475a68              # double 0.10485784646093921
	.quad	0x3fb12d84081d2fe0              # double 0.067100765210113433
	.quad	0x3fe795c9ceaf7a02              # double 0.73703470581295982
	.quad	0x3fd05fad0b1fb4ea              # double 0.25583959661783118
	.quad	0x3fcadba5ccc24378              # double 0.20982811449041683
	.quad	0x3fe03d7e36eef88a              # double 0.50750647286601347
	.quad	0x3febcae2774adb99              # double 0.86851619052218887
	.quad	0x3fed804a25a235f4              # double 0.92191035604781612
	.quad	0x3fdd9089f5e2506c              # double 0.46194695484269377
	.quad	0x3fdcbff162cb0ec2              # double 0.44921526572964521
	.quad	0x3fc356608b59b194              # double 0.15107352070061764
	.quad	0x3fd60411efff3838              # double 0.34399841725542357
	.quad	0x3fab1eb7ba1f6750              # double 0.052968732328464996
	.quad	0x3feb1f0c46759718              # double 0.84754003297414027
	.quad	0x3fd9ca2fa2373c34              # double 0.40296545831091923
	.quad	0x3fc712815b40f250              # double 0.18025223689791625
	.quad	0x3fbe47c53080d008              # double 0.11828262743148354
	.quad	0x3fdd5779ce5c725e              # double 0.45846409943059097
	.quad	0x3fae3f167aa59530              # double 0.059075071784528865
	.quad	0x3fdf350a0a365380              # double 0.48761225697790422
	.quad	0x3fe384afb0dac281              # double 0.6099470571699187
	.quad	0x3fede35eb6477419              # double 0.93400512315168094
	.quad	0x3fe742792ba76fd4              # double 0.72686441923314726
	.quad	0x3fe56e9c5463fc35              # double 0.66975227816136018
	.quad	0x3fcecb5e09521a00              # double 0.24058127837288623
	.quad	0x3fe24b15b0161325              # double 0.57166561500398372
	.quad	0x3fed6727c03b124d              # double 0.91884219689434021
	.quad	0x3fe01d31efb6493a              # double 0.50356385058174813
	.quad	0x3fe89054416997a6              # double 0.76761830116150942
	.quad	0x3feb8472ea52becd              # double 0.85991807714705149
	.quad	0x3fe3c852a393971d              # double 0.61820346783199265
	.quad	0x3fd5cd4c4048171e              # double 0.34065538671016948
	.quad	0x3fe9fe7243761e74              # double 0.81231034446768868
	.quad	0x3fe4276724526aa8              # double 0.62980992406968017
	.quad	0x3fc65235944a2398              # double 0.17438382855132484
	.quad	0x3fbe532ccbae4d50              # double 0.11845664951970503
	.quad	0x3fdc4880fe64284c              # double 0.44192528574842949
	.quad	0x3feb737599ff180f              # double 0.85784416272577058
	.quad	0x3fd1b13f24bf3b52              # double 0.27644327725004303
	.quad	0x3fe13fffc5f8eb77              # double 0.539062391915066
	.quad	0x3fdeb7cbaf390e24              # double 0.47996799575432392
	.quad	0x3fd9c77b6f6521be              # double 0.40280042532370064
	.quad	0x3fd04ce7c5473474              # double 0.25469393029636156
	.quad	0x3fccbc873fb75408              # double 0.22450342761172259
	.quad	0x3fdc66aaef184eec              # double 0.44376633977047564
	.quad	0x3fb41a69b6828138              # double 0.078528029497196949
	.quad	0x3fecf77a4b00190c              # double 0.90520968101989884
	.quad	0x3fefebdd81c1c03d              # double 0.9975421461404107
	.quad	0x3feb26c502377f07              # double 0.84848261292424432
	.quad	0x3fc1338c344afa04              # double 0.13438561013568073
	.quad	0x3fa9537c2e4673d0              # double 0.049465065621212667
	.quad	0x3fea9b4f3812a69e              # double 0.83145867301682919
	.quad	0x3feae54ab44b2cc6              # double 0.84048972333530325
	.quad	0x3fd8c7f89f4c1d72              # double 0.38720527225856138
	.quad	0x3fb938cb4a30eaf0              # double 0.098522859204347446
	.quad	0x3fdd4c280e7e315c              # double 0.45777322211576688
	.quad	0x3fea13719dceb9df              # double 0.81487351247579543
	.quad	0x3fc0532995075354              # double 0.1275379159621034
	.quad	0x3fe8b6dbec3ad111              # double 0.77232166422484927
	.quad	0x3fe6f0f81e698e73              # double 0.71691518726261305
	.quad	0x3f9b56cea44c7580              # double 0.026698330667490833
	.quad	0x3fec2daef3e228a8              # double 0.88057658799632055
	.quad	0x3fe520341825c798              # double 0.66018109051059337
	.quad	0x3fa784f2c6ed2220              # double 0.045936190398212284
	.quad	0x3fe94330ea859580              # double 0.78945203595201008
	.quad	0x3fe99d69ad7ed0d7              # double 0.80046543012442839
	.quad	0x3fd9ff465606f672              # double 0.4062057342633586
	.quad	0x3fce65e18b657390              # double 0.23748416239223191
	.quad	0x3fe608e24594de2e              # double 0.68858445730342566
	.quad	0x3fd4029455a78eee              # double 0.31265743603419949
	.quad	0x3fea4ecc82958f29              # double 0.82211900238732938
	.quad	0x3fd86f59ee71c21c              # double 0.38179634366591286
	.quad	0x3fe8a57dbf1521b2              # double 0.77020156212625168
	.quad	0x3fe7723e4cb6cdc0              # double 0.73269572241991199
	.quad	0x3fe97a84f188f8c9              # double 0.79620597052396491
	.quad	0x3fb5741d3e60dbf0              # double 0.083803012589541259
	.quad	0x3fe492a05caa24ec              # double 0.64289873217162841
	.quad	0x3fe352f674748a03              # double 0.60387728448068889
	.quad	0x3fee5ca28e4c6ad4              # double 0.94880798142124911
	.quad	0x3fc84d625761579c              # double 0.18986157671559745
	.quad	0x3fc4a8ab0af3c510              # double 0.1613973430135407
	.quad	0x3fb839d8edf67418              # double 0.094632680984844675
	.quad	0x3feae8ad36739979              # double 0.84090290675230428
	.quad	0x3fce508a902f6808              # double 0.23683292427341507
	.quad	0x3fd47810bc7507f4              # double 0.31982820896166619
	.quad	0x3fbd72a9f80c3bd8              # double 0.11503088289121821
	.quad	0x3fd4c84a1fb46388              # double 0.32472470375210394
	.quad	0x3fce50fb101267d4              # double 0.2368463352657374
	.quad	0x3fd8bcdb4cbd3fce              # double 0.38652689451282363
	.quad	0x3fd65e31fbc4fd12              # double 0.3494992216764824
	.quad	0x3fcc423ea11c6a94              # double 0.22077162615535839
	.quad	0x3febeaa88efe54ee              # double 0.8723948281136964
	.quad	0x3fe602dae0cc0031              # double 0.6878485098423025
	.quad	0x3feb9e4f57001e51              # double 0.86307494156148767
	.quad	0x3fcbcab93caa0b78              # double 0.21712413274880382
	.quad	0x3fe421ebfc0632ba              # double 0.62914084647635282
	.quad	0x3fda71c2856e3284              # double 0.41319335012739367
	.quad	0x3fea8bf75b7f252e              # double 0.82958572264138808
	.quad	0x3fe054ad358b9bc4              # double 0.51033649881434728
	.quad	0x3fe2e1b07e3e6203              # double 0.59004997879952759
	.quad	0x3fb47940f87e6d58              # double 0.079975186030812551
	.quad	0x3fe35fbdfd38e9ed              # double 0.60543727357372534
	.quad	0x3f9e99d3c185b000              # double 0.029883679091128101
	.quad	0x3fec0816d46f8b7f              # double 0.87598744860984812
	.quad	0x3fdbe0cb181449ea              # double 0.43559529639710937
	.quad	0x3fe328a3edbd2e1c              # double 0.59871097978015397
	.quad	0x3fd44e1b651c6a6c              # double 0.31726727365609153
	.quad	0x3fda902e978f11ee              # double 0.4150501709048332
	.quad	0x3f7465dc6b140880              # double 0.0049799547280163781
	.quad	0x3fe204d3e2b0a33c              # double 0.56308931613339253
	.quad	0x3fef4781092f2a9f              # double 0.97747852128789591
	.quad	0x3fe877331e46f374              # double 0.76455074227815922
	.quad	0x3f941789a1105d40              # double 0.019621038871347141
	.quad	0x3fe345138eb02b13              # double 0.60218217724590983
	.quad	0x3fd33d8fddc76836              # double 0.30063244493578922
	.quad	0x3feed5a587a3b410              # double 0.96357990734179744
	.quad	0x3fd177caa8112a3c              # double 0.27293650067136688
	.quad	0x3fe4bfc02426644f              # double 0.6484070497564377
	.quad	0x3fd03e1ef4dca362              # double 0.2537915602902584
	.quad	0x3fef4b017dc73f60              # double 0.97790598455501864
	.quad	0x3fcb1596b148cf0c              # double 0.21159633308854386
	.quad	0x3fdd1e58e1183620              # double 0.45497724515812088
	.quad	0x3febaf4f39c8c286              # double 0.86515008245449176
	.quad	0x3feec8ef15db413f              # double 0.9620280672916478
	.quad	0x3f9e4ee23ce391a0              # double 0.02959779259335138
	.quad	0x3fef54d87ee886a1              # double 0.97910713946130922
	.quad	0x3fea45b59deae7e3              # double 0.82100945323258789
	.quad	0x3fe337b9822849e1              # double 0.60055232449877505
	.quad	0x3fcb6835cf388ad8              # double 0.21411774271208261
	.quad	0x3fe8a780c4ae22ac              # double 0.7704471436892013
	.quad	0x3fef71990164ff31              # double 0.98261690399519896
	.quad	0x3fd0e728db57e986              # double 0.26410886211638063
	.quad	0x3fee0d8a4687ad81              # double 0.93915284896267803
	.quad	0x3fdddb4b04c572c4              # double 0.46650958505578566
	.quad	0x3fe5835569ce57cd              # double 0.67228193917503065
	.quad	0x3fea0e719d7b41c2              # double 0.81426316030597712
	.quad	0x3fc72bb6ed95e3dc              # double 0.18102156258444679
	.quad	0x3fee0bac4db35656              # double 0.93892493415723766
	.quad	0x3fcfd8bbdabc1e64              # double 0.24880169086849258
	.quad	0x3fe04aa15b2c8e70              # double 0.50911014373236974
	.quad	0x3fc0eae72adfc1dc              # double 0.13216867059192239
	.quad	0x3fc50a3c9ba74e78              # double 0.16437490082045136
	.quad	0x3fcff8da24e6b184              # double 0.2497818641835573
	.quad	0x3fed1175d771dfd3              # double 0.90838138655726153
	.quad	0x3fd120ccc843de2c              # double 0.26762694890155347
	.quad	0x3fe52173054d70b7              # double 0.66033316646237139
	.quad	0x3fecf040faa7bfb8              # double 0.9043278594599462
	.quad	0x3fd3ba2e5fa8f20c              # double 0.30823859540740339
	.quad	0x3fd8d2aa1bd1be52              # double 0.38785793987969897
	.quad	0x3fd2f79c29cd69d0              # double 0.29636291582360474
	.quad	0x3fcbdb1d527ffcbc              # double 0.21762434509580497
	.quad	0x3fde34736783f728              # double 0.47195134266790939
	.quad	0x3fedc1f8ee6b27ec              # double 0.929928270016942
	.quad	0x3feada8b7e392df5              # double 0.8391778435993148
	.quad	0x3fc984f398590e9c              # double 0.19936985911237037
	.quad	0x3fb7d12f492b0c40              # double 0.093035655368155723
	.quad	0x3fed0b35fd7641d7              # double 0.9076185179165418
	.quad	0x3fed300e67933c66              # double 0.91211624364394761
	.quad	0x3fe82700b3644084              # double 0.75476107633041111
	.quad	0x3fbcba984dc304b8              # double 0.11222221277695865
	.quad	0x3fe4a4e3a85bac0a              # double 0.64512808687629897
	.quad	0x3fec07508def61d2              # double 0.87589290353485638
	.quad	0x3fe404b4f7cf88ec              # double 0.6255745735218432
	.quad	0x3fec6d03bbd160fe              # double 0.88830744441204934
	.quad	0x3fcd8c35504367d4              # double 0.23084131640535921
	.quad	0x3fd345ca901d232c              # double 0.30113472055068047
	.quad	0x3fe65643f4761175              # double 0.69803045030907518
	.quad	0x3feb559a521f2c95              # double 0.8541995624485873
	.quad	0x3fe18fe727fc4627              # double 0.54881627854974091
	.quad	0x3fddefcc74c43bf8              # double 0.46776114848120143
	.quad	0x3fdd6e499e8888c4              # double 0.45985641938944988
	.quad	0x3fd8a8134feca396              # double 0.38525851063837402
	.quad	0x3fe15df17b037972              # double 0.54271768594825986
	.quad	0x3fbcb393b996c360              # double 0.11211512833575688
	.quad	0x3fed8817190087af              # double 0.92286257632462376
	.quad	0x3fd2e605c53ce4b8              # double 0.29528946172247172
	.quad	0x3fe9432292d15c77              # double 0.78944519687037384
	.quad	0x3fead1619e6eef55              # double 0.83805924362193684
	.quad	0x3fe0e176dacf7c9c              # double 0.52752249466347534
	.quad	0x3fe41affdffdf0bf              # double 0.62829583881786977
	.quad	0x3fdb3dba44038810              # double 0.42564255372974547
	.quad	0x3fb179ede74b9f78              # double 0.068266743630031601
	.quad	0x3fac750edd025ef0              # double 0.055580582121533939
	.quad	0x3fb6a3ffbdcd3890              # double 0.088439925993244239
	.quad	0x3fac4be7ac8a7190              # double 0.055266609012707524
	.quad	0x3fba8c9db4d42998              # double 0.10370813050045624
	.quad	0x3fe1406fe37e8502              # double 0.53911585266556039
	.quad	0x3fdd6682d3870bbc              # double 0.45938177735314034
	.quad	0x3fe6b68b35eea2ed              # double 0.70978317769649169
	.quad	0x3fe27cbb7c49bfe7              # double 0.57772611880318159
	.quad	0x3fd1b774c6b6258e              # double 0.27682227521344138
	.quad	0x3fe735fc2eb5803e              # double 0.72533997652863724
	.quad	0x3fdf407e60b3549c              # double 0.48831138080033454
	.quad	0x3fd2b1071cb7f2bc              # double 0.29205491833253538
	.quad	0x3fe6138fbba5372b              # double 0.68988787316786693
	.quad	0x3fbcc877affd8e78              # double 0.11243389174119922
	.quad	0x3fc29320ae21cc48              # double 0.14511497976818277
	.quad	0x3f9c313886c9d980              # double 0.02753151247676433
	.quad	0x3fb13fa93c81bce0              # double 0.067377640983738996
	.quad	0x3fed147c0a86375a              # double 0.90875055366062019
	.quad	0x3fec43d27b3c5409              # double 0.88327907628502189
	.quad	0x3fe529ecfda96509              # double 0.66136788886356712
	.quad	0x3fe250890dc194ab              # double 0.57233097731354599
	.quad	0x3fed1c3f72aa8b53              # double 0.90969822307338644
	.quad	0x3fdf291183a8a924              # double 0.48688161713893607
	.quad	0x3fe8351a244ac627              # double 0.75648219192789135
	.quad	0x3feabcff803bdb55              # double 0.83557105107943619
	.quad	0x3fc7f1e656a34b04              # double 0.18706969480862068
	.quad	0x3fd29141d15348d6              # double 0.290115789813297
	.quad	0x3feaaa21eda8a47a              # double 0.83326813142515666
	.quad	0x3fae32fde553a690              # double 0.05898278641127519
	.quad	0x3fd59e3c75131fe4              # double 0.33778296883656211
	.quad	0x3fc0dcba2952e314              # double 0.13173605935823984
	.quad	0x3fe28e906d7a92b5              # double 0.57990285284593901
	.quad	0x3fe79bc5d477c57b              # double 0.73776523110988934
	.quad	0x3fd6972fc79c4e04              # double 0.35297770016879348
	.quad	0x3faee4dc13ae0820              # double 0.06033981075508188
	.quad	0x3fe0fbdee1cdb3ca              # double 0.53074592687846089
	.quad	0x3fea4689df4847e8              # double 0.82111066446145475
	.quad	0x3fdd27979330e5d0              # double 0.45554150938150162
	.quad	0x3fddee8ff4e4ee6c              # double 0.46768568911986708
	.quad	0x3fe8662e1d80bc01              # double 0.76247316133765264
	.quad	0x3fc45716ad29d3e0              # double 0.15890773253673185
	.quad	0x3fcceaa00a076338              # double 0.22591019143762892
	.quad	0x3fe5802addf9383c              # double 0.67189544061853423
	.quad	0x3fe31cb275b1b15c              # double 0.59725306498652797
	.quad	0x3fe7b65e000211aa              # double 0.74101161958292505
	.quad	0x3fd56fac3faa3334              # double 0.33494096963186171
	.quad	0x3fdec3e206864a44              # double 0.48070574414410694
	.quad	0x3fd86a7b73d94d2a              # double 0.38149915994036354
	.quad	0x3fe73fb6f86c51a4              # double 0.72652767677441377
	.quad	0x3fc698a56aa5b534              # double 0.17653339106929311
	.quad	0x3fe37aaac6667935              # double 0.60872400999122667
	.quad	0x3fd9cd1f65ae74f6              # double 0.40314469270545261
	.quad	0x3fec588b3efa0d54              # double 0.88580858516835769
	.quad	0x3fdab07a7e5c1b2e              # double 0.41702139224837509
	.quad	0x3fe7495b977fb90e              # double 0.72770480718262021
	.quad	0x3fe30cc589e0022c              # double 0.59530903748242769
	.quad	0x3fd2d775fe5a35ac              # double 0.29440069045161965
	.quad	0x3fdf20673c92ce1c              # double 0.48635273852707583
	.quad	0x3fef80ca9794603a              # double 0.98447160344495122
	.quad	0x3feb5abf38f25d0e              # double 0.85482751009377167
	.quad	0x3fbfa128a8bd00f0              # double 0.12355283851229948
	.quad	0x3faea9ac3ad30dd0              # double 0.059888250523296827
	.quad	0x3fe07ef26b02f360              # double 0.51549645329178517
	.quad	0x3fcd5f9d3356e530              # double 0.22948040968712169
	.quad	0x3fd4a0b3543fc8f8              # double 0.32230838038880405
	.quad	0x3fe45ca18d57a787              # double 0.63630750280320647
	.quad	0x3fdfb0c850da2852              # double 0.49516494651527865
	.quad	0x3fd6188dce48cb92              # double 0.34524865288693107
	.quad	0x3fedfcc3b1310cab              # double 0.93710503204092299
	.quad	0x3fd082f052b79462              # double 0.25799186780779426
	.quad	0x3fece9262b751594              # double 0.90346058357015346
	.quad	0x3fd8c1f64b406bb2              # double 0.38683850621026317
	.quad	0x3fe0d895950ed7f0              # double 0.52643851387870022
	.quad	0x3fecbad69f1df069              # double 0.89780741765526983
	.quad	0x3fe167d864747c73              # double 0.54392642612573494
	.quad	0x3fd39393b3a67886              # double 0.30588238281223601
	.quad	0x3feeb537d1593a6c              # double 0.95962134254825803
	.quad	0x3fdbd672d0696f94              # double 0.43496389725418649
	.quad	0x3fe361a0ae0680d0              # double 0.60566743840538528
	.quad	0x3fe0cf3904ac0849              # double 0.52529574310779836
	.quad	0x3fe2e368b286fa44              # double 0.59025988453488099
	.quad	0x3fe4225e3d384358              # double 0.62919532734859285
	.quad	0x3fea7e26f1704c95              # double 0.82789942890157653
	.quad	0x3fe0643772a67da6              # double 0.51223347084662829
	.quad	0x3fe038a6e91cbc73              # double 0.50691552667366435
	.quad	0x3fdf0aaf80a00322              # double 0.48502719460525345
	.quad	0x3fea126e2cb25416              # double 0.81474980096629923
	.quad	0x3fcbdfe342697bd8              # double 0.21777001135612184
	.quad	0x3fab325694e0bc10              # double 0.053118425057952945
	.quad	0x3fbaeb06d14e2428              # double 0.10514872179022972
	.quad	0x3fb60ce8a2271b18              # double 0.086134471500468712
	.quad	0x3fe9b2efec44211e              # double 0.80309291978577213
	.quad	0x3fe0bc1a0d0c23f5              # double 0.52296164081883367
	.quad	0x3fd08a2775247708              # double 0.25843225898448496
	.quad	0x3fe24edd05848c0c              # double 0.57212687566459541
	.quad	0x3fe70899caa9a536              # double 0.71979989607385764
	.quad	0x3fde01b11d7ce41e              # double 0.46885326270745675
	.quad	0x3fd7d6974a114542              # double 0.37247259362364471
	.quad	0x3fde110bd8cd3d5e              # double 0.46979042217295397
	.quad	0x3fdbbc8d7406a9fa              # double 0.43338333445231536
	.quad	0x3fee5bea707760f7              # double 0.94872018781737111
	.quad	0x3fe83e09fe984b64              # double 0.75757312512938002
	.quad	0x3fee43f153887a03              # double 0.94579378428517236
	.quad	0x3fdaac31240801e6              # double 0.41675976294211947
	.quad	0x3fe52d05e565a7ab              # double 0.66174597553366732
	.quad	0x3fdaf39c58b6181c              # double 0.42111881888593117
	.quad	0x3fdc95a70e161fc4              # double 0.44663406730296296
	.quad	0x3fe20798bfddf669              # double 0.56342732881576041
	.quad	0x3fe70dbc5754ea3c              # double 0.72042672211620795
	.quad	0x3fb78400671adb78              # double 0.091857934162232868
	.quad	0x3fee3c204cbd17b7              # double 0.94483962047592385
	.quad	0x3fe122ff1a9c6015              # double 0.53552203366689588
	.quad	0x3fcfc5a7ef271d2c              # double 0.24821948220617551
	.quad	0x3fdc864ede287eb4              # double 0.4456975144876012
	.quad	0x3fcd68594e2387b0              # double 0.22974697413797918
	.quad	0x3feaaa54e4e396bc              # double 0.83329243378530959
	.quad	0x3fe84f859643ab72              # double 0.75970725391867533
	.quad	0x3fb043b121d16488              # double 0.063532896763165536
	.quad	0x3fac3f7501bd4a80              # double 0.05517163892968302
	.quad	0x3fd51a69df2b8ef0              # double 0.32973715585670416
	.quad	0x3fda3f02ad97965e              # double 0.41009585335118526
	.quad	0x3fdeef24166705bc              # double 0.48334600627648761
	.quad	0x3fac52f25e9034d0              # double 0.055320333522198006
	.quad	0x3fd3c5c5b41fff1e              # double 0.30894606199579921
	.quad	0x3fea6d902d3312cf              # double 0.82587441280392138
	.quad	0x3fea8c8c04ab693e              # double 0.82965660964990895
	.quad	0x3fd83a0c5c1c796a              # double 0.37854298587071489
	.quad	0x3fe33f7845d73402              # double 0.60149778023480871
	.quad	0x3fe0cc243ada8f60              # double 0.52491961951134769
	.quad	0x3fc2f9daeed33bbc              # double 0.14824997578986465
	.quad	0x3fa63a4a6ac54820              # double 0.043413472684406651
	.quad	0x3feddd4679cd4c9c              # double 0.93326114453738595
	.quad	0x3fa8aaf509b1f6d0              # double 0.04817929976796409
	.quad	0x3fde0edb43e901e8              # double 0.46965676910261189
	.quad	0x3fe883e1ab4e45a2              # double 0.76609881837992
	.quad	0x3fdefbf7b5b4c9d6              # double 0.48412888283487854
	.quad	0x3feab36e005a9436              # double 0.83440303868395094
	.quad	0x3fd73899322e3920              # double 0.36282949352689009
	.quad	0x3fd8b8038a7f4424              # double 0.38623131299124425
	.quad	0x3fce1adde1e145b0              # double 0.23519490746779814
	.quad	0x3fd03a99bf075c94              # double 0.25357669501449576
	.quad	0x3fea6eb63fd6c8c2              # double 0.82601463764719818
	.quad	0x3fe5d0f95cf02790              # double 0.68175953056310057
	.quad	0x3fd3af10ba565ccc              # double 0.3075601405811994
	.quad	0x3fef2dce1280f58c              # double 0.97434142698300396
	.quad	0x3f83a09ce175f080              # double 0.0095836883835931363
	.quad	0x3fde16d38b3442ac              # double 0.47014320940165066
	.quad	0x3fe538905a488ac2              # double 0.66315477021665736
	.quad	0x3fe257fd89fcb90b              # double 0.57324101400971139
	.quad	0x3fe2edccdb700310              # double 0.59152834757705541
	.quad	0x3fe81aa48b8dcf51              # double 0.75325228935842337
	.quad	0x3fe1443939d2b1a6              # double 0.53957806867179126
	.quad	0x3fe7a890cd6ff4b9              # double 0.73932685970762357
	.quad	0x3fe213ddaeac1ff2              # double 0.56492504230209151
	.quad	0x3fe68d1717f86617              # double 0.70472292596531616
	.quad	0x3fd3d66c6417ee7e              # double 0.30996236586336312
	.quad	0x3fc9beb2cd57cf2c              # double 0.20113215471757806
	.quad	0x3fd174f2ddd2978a              # double 0.27276298200956062
	.quad	0x3fe741e1571a1690              # double 0.72679202091303985
	.quad	0x3fe92f6946eaff00              # double 0.78703750468409339
	.quad	0x3fe4d01660617dd4              # double 0.65040129494075893
	.quad	0x3fd4ce67b200be82              # double 0.32509796507927302
	.quad	0x3fe13deb1b41a286              # double 0.5388083965636532
	.quad	0x3fdcdaebdb40e55e              # double 0.45086189662432286
	.quad	0x3febbfd2269051e7              # double 0.86716563732130403
	.quad	0x3fda2331aeb16e1c              # double 0.40839807567474096
	.quad	0x3fe876ff7506f819              # double 0.76452610833053136
	.quad	0x3fe494eeb62b407a              # double 0.64318023280976822
	.quad	0x3fd8ebe0cb7720d2              # double 0.38939685697233728
	.quad	0x3fe4854605549270              # double 0.64126874009214241
	.quad	0x3fd3ad46e8cbbb38              # double 0.30745098813979466
	.quad	0x3fe85e43083e88aa              # double 0.7615065728207544
	.quad	0x3f95c2d7f47bd480              # double 0.02125108175001289
	.quad	0x3f9cff894bf28000              # double 0.028318543682530617
	.quad	0x3fe04a333bc4e019              # double 0.50905763314858909
	.quad	0x3fe4cc6462818bdb              # double 0.6499502109476184
	.quad	0x3feb2c544d116b32              # double 0.84916129162170351
	.quad	0x3fe1103e02d72b29              # double 0.53323269419465646
	.quad	0x3fbe9ae4370d57d0              # double 0.11955095619245459
	.quad	0x3fe2eacb2c52a220              # double 0.59116133362573819
	.quad	0x3fe007cc3351cb7e              # double 0.50095186255781221
	.quad	0x3fedf04baeb4a756              # double 0.93558296320154954
	.quad	0x3fe8868043f92cfa              # double 0.76641858364146676
	.quad	0x3fb915a9a35e6198              # double 0.097986795792513681
	.quad	0x3feb2e7304eaa3b2              # double 0.84942007980600054
	.quad	0x3fd4d8182e06a526              # double 0.32568935866091164
	.quad	0x3f8d65eb79812a00              # double 0.014354552884602079
	.quad	0x3fc36c9ff8d8d654              # double 0.15175246859296243
	.quad	0x3fe1be57ca42947e              # double 0.55448522094651742
	.quad	0x3fed023fe84cf62b              # double 0.90652461405961071
	.quad	0x3feedcea49686b10              # double 0.96446718537785792
	.quad	0x3fd2d987471ae874              # double 0.29452688163622232
	.quad	0x3fe0463ff0138592              # double 0.5085754097928421
	.quad	0x3fb72c96a04bdd78              # double 0.090524114737368211
	.quad	0x3fe89a181efcdea7              # double 0.76881032993602083
	.quad	0x3fd5534f3d119434              # double 0.33320980991112781
	.quad	0x3fcf412b3e630b84              # double 0.24417629762873727
	.quad	0x3fe6e9383ef7997d              # double 0.71596920297888256
	.quad	0x3fb5bb2472ce80f0              # double 0.084886816052406777
	.quad	0x3fd87c9056be5442              # double 0.38260277243654539
	.quad	0x3fe2f19756982cb6              # double 0.59199110901808782
	.quad	0x3fd6f6a4d09200f2              # double 0.35880394333072652
	.quad	0x3fee324b4feb9814              # double 0.94363942727500438
	.quad	0x3fd53808e67dbd6c              # double 0.33154509076026417
	.quad	0x3feefb193471896a              # double 0.96815166705009159
	.quad	0x3fec3694e19f4432              # double 0.88166278902838813
	.quad	0x3fd5abf4489027b6              # double 0.33862025343170943
	.quad	0x3fe46aa27bb18dd8              # double 0.6380169311418582
	.quad	0x3fb32a032300aac0              # double 0.07485980610423848
	.quad	0x3fe80eff2661eadb              # double 0.75183064934330035
	.quad	0x3f7e255bc99ca900              # double 0.0073598466349642511
	.quad	0x3fe4101a9067e214              # double 0.62696579174286393
	.quad	0x3fab0a67f30dd140              # double 0.052813766879725055
	.quad	0x3fed33172cc61660              # double 0.91248663658980078
	.quad	0x3fb060c0e7011be0              # double 0.063976341626684086
	.quad	0x3fda3cbd4bc1975a              # double 0.40995724103992404
	.quad	0x3fc07aa193740bf0              # double 0.1287424058901645
	.quad	0x3fe83af0d096d74b              # double 0.75719490757067243
	.quad	0x3fdf36f71f819ab6              # double 0.48772981716903574
	.quad	0x3fed877ac868339e              # double 0.92278803960799727
	.quad	0x3fe961820e02ec54              # double 0.79315283524136726
	.quad	0x3fecf6610a9c3c24              # double 0.90507556984255588
	.quad	0x3fbf9eb9b63097d8              # double 0.1235157079505308
	.quad	0x3fe4be58711523c4              # double 0.64823553167763537
	.quad	0x3fe50619743e8f6f              # double 0.65699455932597839
	.quad	0x3fe1c973a8bdcc2a              # double 0.55584128339103711
	.quad	0x3fed74e88734cdd8              # double 0.9205210343119985
	.quad	0x3fc7da27cb20aa44              # double 0.18634507578220127
	.quad	0x3fd584a4ca9deae0              # double 0.33622092997363318
	.quad	0x3fc7c12127764df0              # double 0.18558134486066491
	.quad	0x3fe6b82e0ec91cb6              # double 0.70998289954959293
	.quad	0x3fea3e7c4dd5476f              # double 0.82012763215810291
	.quad	0x3fe138b69b7f24ea              # double 0.53817301149788688
	.quad	0x3fee96805c7c68e7              # double 0.95587175429980398
	.quad	0x3fd1a2454062c2ec              # double 0.27552920615839471
	.quad	0x3fdc20d089e08e6a              # double 0.43950284447257693
	.quad	0x3fe37b6181fd99ec              # double 0.60881114376826195
	.quad	0x3fd72faf3523af90              # double 0.36228542508501338
	.quad	0x3fa828742391ae90              # double 0.047183636991431688
	.quad	0x3fd83eca8d8aeff8              # double 0.37883247206241277
	.quad	0x3feca23ef1dd5435              # double 0.8948054050366695
	.quad	0x3fdc6eff5228e2e8              # double 0.4442747404423657
	.quad	0x3feb3096731cdc62              # double 0.8496811149879131
	.quad	0x3fd9dedac7c528f2              # double 0.40422696598820018
	.quad	0x3fdcc125cb0ea6c0              # double 0.44928879575546077
	.quad	0x3fec1d2d0b38421e              # double 0.87856151763304857
	.quad	0x3feab981a6ec2975              # double 0.83514483072330725
	.quad	0x3fcb2509b931d718              # double 0.21206780951222792
	.quad	0x3fe3ae0eea2141c7              # double 0.61499734619615587
	.quad	0x3fefe201c99a9497              # double 0.99633874297855384
	.quad	0x3fe8663d5df7875a              # double 0.76248043396865772
	.quad	0x3fbc876583146660              # double 0.11144098711192774
	.quad	0x3fe4292e1a7942b4              # double 0.63002686663283791
	.quad	0x3fd57ce9671e875a              # double 0.33574900694121868
	.quad	0x3fc341be45dcc9c0              # double 0.15044382487537966
	.quad	0x3fd38a4d144d11b2              # double 0.30531622869991815
	.quad	0x3fed7cd879b619cf              # double 0.92148994228119274
	.quad	0x3fdeea9c00b40d28              # double 0.48306942051586299
	.quad	0x3fee738d5f139996              # double 0.95160549707070419
	.quad	0x3f7b9c00058a6600              # double 0.0067405701489859915
	.quad	0x3fe48e6b9fc10e32              # double 0.64238530351616974
	.quad	0x3fd3e53e9cf0c10a              # double 0.3108669788953341
	.quad	0x3fc4807977122470              # double 0.16017072977072955
	.quad	0x3fe31fb94a79f59b              # double 0.59762253328488002
	.quad	0x3fee3ee8776947a1              # double 0.94517920801648725
	.quad	0x3fcbc41315029cac              # double 0.2169212200726397
	.quad	0x3fd4ef5b1ec32dee              # double 0.32710912708418405
	.quad	0x3fbc631a400e1d28              # double 0.11088718475194936
	.quad	0x3fef15ecd964d0d2              # double 0.97142641505936411
	.quad	0x3fe1c7bb4779e584              # double 0.55563129387080368
	.quad	0x3fe917f979f682d5              # double 0.78417657681355968
	.quad	0x3fdf260732778d30              # double 0.48669605186860831
	.quad	0x3fe673139d50d559              # double 0.7015474388669346
	.quad	0x3fea51f658c22fdc              # double 0.82250516257908712
	.quad	0x3fe2ada412ef6a45              # double 0.58369640062603223
	.quad	0x3fc5be31c8c7b9b4              # double 0.16986677459449384
	.quad	0x3fe1c7ec8aab5cb2              # double 0.55565478404868984
	.quad	0x3fc7fda26648eca8              # double 0.18742780680063231
	.quad	0x3fb293a266452438              # double 0.072565221756250575
	.quad	0x3fa36ef5bef96fc0              # double 0.037955932199764231
	.quad	0x3fdb5bcc02a021ce              # double 0.42747783905408887
	.quad	0x3fed33da68449d73              # double 0.91257973065232389
	.quad	0x3fb1d6af9eda1e70              # double 0.069682098657830371
	.quad	0x3fe68ebdf83ae1dd              # double 0.70492456896232236
	.quad	0x3fe4a6deadebc96f              # double 0.64536985367730704
	.quad	0x3fe5a8e07f7d30c6              # double 0.67686486149025238
	.quad	0x3fcbc0296f73e7b0              # double 0.21680181448010449
	.quad	0x3fedcf75f5a4ac74              # double 0.93157480218122978
	.quad	0x3fd38ea08fe217b6              # double 0.30558027316180458
	.quad	0x3fc5fb853bdfbd14              # double 0.17173829482587932
	.quad	0x3fef57e11813a503              # double 0.97947745039451239
	.quad	0x3fa67981e1562760              # double 0.04389577747049489
	.quad	0x3fea9d04fd8df78e              # double 0.83166741869330152
	.quad	0x3fe517b0e8ddb64f              # double 0.65914197427418653
	.quad	0x3fded903ccf28262              # double 0.48199553503403625
	.quad	0x3fc19230931e863c              # double 0.13727385695988115
	.quad	0x3fec51669cb9df69              # double 0.88493662462768186
	.quad	0x3fbee3a229f04780              # double 0.12066091083423025
	.quad	0x3fca63605e525f34              # double 0.20615772824816647
	.quad	0x3fdf5450fb5d2570              # double 0.4895212607121584
	.quad	0x3fdf2f1c07bde320              # double 0.4872503352740285
	.quad	0x3fc551fb642a8f40              # double 0.16656439200334638
	.quad	0x3fed8f8651283fa1              # double 0.92377010203380305
	.quad	0x3fe82e4ec6bf6dc7              # double 0.75565279786990736
	.quad	0x3fe321ae81ad02fc              # double 0.59786153151807708
	.quad	0x3fe3a971d9bdc149              # double 0.61443417098602382
	.quad	0x3fc2dc9a91ef77c0              # double 0.14735729337456682
	.quad	0x3fe4aa4e456dde72              # double 0.6457892757452568
	.quad	0x3fcad8d7adee7c4c              # double 0.20974250786545878
	.quad	0x3fe9fb36030164e2              # double 0.81191540324212164
	.quad	0x3fcd8a99ab9618ac              # double 0.23079224470365511
	.quad	0x3fd0e95bea415b60              # double 0.26424310566419784
	.quad	0x3fb286792e213300              # double 0.072364400636796944
	.quad	0x3fcaa3ff285ab530              # double 0.2081297823946584
	.quad	0x3fe0db42aad7aa06              # double 0.52676518790878002
	.quad	0x3fe9b0e6c655d220              # double 0.80284441697455477
	.quad	0x3feb9c027759abd6              # double 0.86279414473153326
	.quad	0x3fe9362ba457d0be              # double 0.78786260698554833
	.quad	0x3fc018599837c000              # double 0.12574310238369435
	.quad	0x3fa4ab70b9e34c20              # double 0.040370485965148584
	.quad	0x3fc28f44f70e3514              # double 0.14499723494774541
	.quad	0x3fe7754800a2efbf              # double 0.73306656002340975
	.quad	0x3fef495eaabccfc7              # double 0.97770627352883188
	.quad	0x3fc3a738e0f16d68              # double 0.15354071601437203
	.quad	0x3fa2436c335088e0              # double 0.035670644058215961
	.quad	0x3fdbc42aa65ee034              # double 0.43384805915002578
	.quad	0x3fbc98de5f1f42c8              # double 0.11170759031598287
	.quad	0x3fd348eca1e82b2e              # double 0.30132594882222719
	.quad	0x3fbd211c00e987c0              # double 0.11378645918151076
	.quad	0x3fdb6ecb347e1de0              # double 0.42863731504664138
	.quad	0x3fc4d5b4cdb0c9a0              # double 0.16277179759488281
	.quad	0x3fe17de83cd3cf22              # double 0.5466195285830262
	.quad	0x3fd31d75895a1372              # double 0.29867304242389203
	.quad	0x3fe4cf2e7d1d45ca              # double 0.65029072224040729
	.quad	0x3fdca10c184ce716              # double 0.44732954381071133
	.quad	0x3fccd730f6150ef8              # double 0.22531711593375525
	.quad	0x3fea7701129c8287              # double 0.82702687869103009
	.quad	0x3feca8178c81bc5b              # double 0.89551904146891148
	.quad	0x3fd0709d602356de              # double 0.25687345875244982
	.quad	0x3feb645601ba890a              # double 0.85599804246547362
	.quad	0x3fdf8cd212076094              # double 0.49297000656725598
	.quad	0x3fd865d5b522364e              # double 0.38121550263244763
	.quad	0x3fd8992bb9ac6954              # double 0.38434880382705683
	.quad	0x3fe12d112f207c3b              # double 0.53675135807487295
	.quad	0x3fab91d6e564b890              # double 0.053847041608933499
	.quad	0x3fc11afc3bbcfdfc              # double 0.13363602559000742
	.quad	0x3fda15ef9b46dbb4              # double 0.40758886493443502
	.quad	0x3fe4536e90e2702b              # double 0.63518455789335826
	.quad	0x3feb72ab52c9502c              # double 0.85774770898070107
	.quad	0x3fe623fff1a61ca2              # double 0.69189450451894552
	.quad	0x3fe85d2e13add8e6              # double 0.76137451022694047
	.quad	0x3fd94da0a0126c30              # double 0.39536300308253924
	.quad	0x3fe97fbf7a27356f              # double 0.79684423311270602
	.quad	0x3fe078b7e248c8b6              # double 0.51473612018732839
	.quad	0x3faf04676a45e140              # double 0.060580474589132738
	.quad	0x3fe977541501c1dc              # double 0.79581646063712296
	.quad	0x3fe6bbbd2fc18567              # double 0.71041735961277375
	.quad	0x3fd19cae39744552              # double 0.27518802271614107
	.quad	0x3fdb526529e10f4e              # double 0.42690400209197754
	.quad	0x3fee62b88656f9b6              # double 0.94955087888938894
	.quad	0x3fe2bdc2b5078bb8              # double 0.58566413266486617
	.quad	0x3fdc22eb3dc1e81a              # double 0.43963128119469419
	.quad	0x3fefea8708666c53              # double 0.99737884178774505
	.quad	0x3fc62ef9cd35aaf0              # double 0.17330858726503306
	.quad	0x3fe5c0ef463e1f20              # double 0.67980159491796499
	.quad	0x3fcabe9368b0edb8              # double 0.20894091235991907
	.quad	0x3fca13c6f054ba58              # double 0.20372854933653417
	.quad	0x3fdf7c3194c45166              # double 0.49195518043531761
	.quad	0x3fe8f3f03821a6d1              # double 0.77977763140844492
	.quad	0x3fda28e630346aae              # double 0.40874628741736785
	.quad	0x3fe2b41fceeedfe8              # double 0.58448782364484675
	.quad	0x3fcbf1699dd56868              # double 0.21830482680053653
	.quad	0x3fe52c698206402f              # double 0.66167140384096068
	.quad	0x3fea60090a28538a              # double 0.82422306045428795
	.quad	0x3fe1c6796d0c89cb              # double 0.55547782229069165
	.quad	0x3fd29c0bb57c3610              # double 0.29077427600063377
	.quad	0x3fe9ae624136f971              # double 0.80253708588842987
	.quad	0x3fe5f096bedafc91              # double 0.68561875606964595
	.quad	0x3fe542705c628a90              # double 0.66436021846705451
	.quad	0x3fd96c58e99cbaf4              # double 0.39723799527830228
	.quad	0x3febd56eae5ace17              # double 0.86980375341085192
	.quad	0x3fe818d90831877d              # double 0.753033176424864
	.quad	0x3fe0a3ad78ab86f8              # double 0.51998017853131184
	.quad	0x3fde0d7399ffb78c              # double 0.46957101859049355
	.quad	0x3fbf346f3287dab8              # double 0.12189383491191108
	.quad	0x3fef7d645a524ee6              # double 0.9840566410152547
	.quad	0x3fe2f94f7870ebff              # double 0.59293340228703062
	.quad	0x3febd0bc76a1dd0b              # double 0.86923049135558139
	.quad	0x3fd44df91e7ca4b2              # double 0.31725910165057336
	.quad	0x3fe247f899084dfb              # double 0.57128553284786621
	.quad	0x3fe3b918daa15ca6              # double 0.61634485913500181
	.quad	0x3fd71ec713a0077e              # double 0.36125351826205321
	.quad	0x3fe7b0dacd14de70              # double 0.74033870749458508
	.quad	0x3fe8efed5408308c              # double 0.77928797161577412
	.quad	0x3fd112925dd5bc5a              # double 0.26675852931561439
	.quad	0x3fed8213517aaeaa              # double 0.92212835229789403
	.quad	0x3fe63a81b49f137e              # double 0.69464192655196633
	.quad	0x3feeb42504ce889f              # double 0.95949030817816438
	.quad	0x3fe7f9d928d7f536              # double 0.74924905755293625
	.quad	0x3fe09cde9d02500f              # double 0.51914911905123684
	.quad	0x3fb52f39277ae460              # double 0.082751819742854504
	.quad	0x3fd05ab9d00ee3fc              # double 0.25553746526890087
	.quad	0x3fe9a3692f95d538              # double 0.80119761747361107
	.quad	0x3fd8e319be9b38d2              # double 0.3888611184492109
	.quad	0x3fa4deab2e344ad0              # double 0.040761327161950356
	.quad	0x3fef07c6f12c05ba              # double 0.96969935516261008
	.quad	0x3fcf3986072baf48              # double 0.24394297933701581
	.quad	0x3fcb4bda62502b84              # double 0.21325235176513158
	.quad	0x3fdf8abf06a19306              # double 0.49284339568684776
	.quad	0x3fe0fcc541b6f1cb              # double 0.53085577807319717
	.quad	0x3fec3fb4da0659fb              # double 0.88277666647883224
	.quad	0x3fe1e484e190e8a8              # double 0.55914539390439177
	.quad	0x3feb6ca3bd694310              # double 0.85701167101260189
	.quad	0x3fc9bce6473dc5d4              # double 0.20107725599841209
	.quad	0x3fe881a0162b6262              # double 0.76582340555166817
	.quad	0x3fd484f5d7e89dec              # double 0.32061525425748871
	.quad	0x3fe8cd78b82488d2              # double 0.77508197751401497
	.quad	0x3fee25f90179f770              # double 0.9421353367649612
	.quad	0x3fe953cfcad416b3              # double 0.79148091902671636
	.quad	0x3fde66b82cb2981a              # double 0.47501949658396969
	.quad	0x3fddf543811b9f04              # double 0.46809470756714711
	.quad	0x3fd1c49d5a883166              # double 0.27762540665641777
	.quad	0x3fe7dcfef7c97e1c              # double 0.74572704692758718
	.quad	0x3fe134620433099a              # double 0.53764439411343123
	.quad	0x3fe77c32ae22324f              # double 0.73391088495697854
	.quad	0x3fe69ee024bc1b43              # double 0.70689398932231773
	.quad	0x3fd7aa83d03abc14              # double 0.36978240332513335
	.quad	0x3feba5e12f3193c7              # double 0.86399897782813972
	.quad	0x3fd7a2ccd42ce336              # double 0.36931153030632247
	.quad	0x3fe45209e93349f9              # double 0.63501449152891987
	.quad	0x3fce1d0d54a7a690              # double 0.23526159890689202
	.quad	0x3fcd53ab16cf4784              # double 0.22911585439447546
	.quad	0x3f41eb8a7d0fdc00              # double 5.4687749991344514E-4
	.quad	0x3fe01c08c653ab01              # double 0.50342215285976988
	.quad	0x3fe6ba0af0f3868f              # double 0.71021029530329993
	.quad	0x3fe13da9edeba78a              # double 0.53877731770374848
	.quad	0x3fe9c0b1acace4d6              # double 0.80477222180993624
	.quad	0x3fe8c7aa57d760e2              # double 0.77437321812160698
	.quad	0x3fe85e86e299217e              # double 0.76153892762617637
	.quad	0x3fd7d53e69c1fc90              # double 0.37239036872774367
	.quad	0x3fee9f8a48a37a27              # double 0.95697511851523565
	.quad	0x3febab92aa5c2000              # double 0.86469395898257062
	.quad	0x3fb89189308921f0              # double 0.095970701550988968
	.quad	0x3fe2b18f775afabf              # double 0.58417485534285862
	.quad	0x3fedc5b7d2d7950b              # double 0.93038550548649945
	.quad	0x3fd289f6a57d0a08              # double 0.2896706214998237
	.quad	0x3fe468e4f79a916e              # double 0.63780449257005301
	.quad	0x3fe66b93b096677e              # double 0.70063194741963719
	.quad	0x3fcca9dfc627637c              # double 0.22393414664727718
	.quad	0x3fe1d5997682e0fe              # double 0.55732415339210184
	.quad	0x3fe0c44cdfbd7dc7              # double 0.52396243762262251
	.quad	0x3fc6238dc0b91984              # double 0.17296001348786316
	.quad	0x3fe8ca785afc9bdf              # double 0.77471559306001925
	.quad	0x3fdbe04f26e60e0a              # double 0.43556574629494149
	.quad	0x3fc3634d778942d8              # double 0.1514679750130401
	.quad	0x3fca6636e3eaf7a4              # double 0.20624433640290107
	.quad	0x3fedcac481ed0b70              # double 0.93100190521395909
	.quad	0x3fbc343ee6ec8c90              # double 0.11017220628541424
	.quad	0x3fe18243da0d49e4              # double 0.54715149486792969
	.quad	0x3fe626735a4836a6              # double 0.69219367631167894
	.quad	0x3fc0c791c3123e48              # double 0.13109037423099523
	.quad	0x3fd48bb474f32044              # double 0.32102691098089431
	.quad	0x3fc1de94e8228738              # double 0.1396051534148286
	.quad	0x3fd7b80795236b8c              # double 0.37060727657597492
	.quad	0x3fe13df7105e6a2d              # double 0.53881409832985627
	.quad	0x3feeb6960dc357cf              # double 0.95978834808442481
	.quad	0x3fc87dc87355577c              # double 0.19133859282981891
	.quad	0x3fd3fc521e550092              # double 0.31227543794739987
	.quad	0x3fa8cea67549afe0              # double 0.048451616113055485
	.quad	0x3fe38130e58d790b              # double 0.6095203860711832
	.quad	0x3fbea811f4ea2410              # double 0.11975204686508811
	.quad	0x3fef432993a86f40              # double 0.97694853629534605
	.quad	0x3fe4809cc47bdc7a              # double 0.64069975257633804
	.quad	0x3fd421d730653c16              # double 0.31456546522253015
	.quad	0x3fa397b797cb39b0              # double 0.03826688507034548
	.quad	0x3f9ad3459fe84d40              # double 0.02619656361100664
	.quad	0x3f854911dd518100              # double 0.010393275801277913
	.quad	0x3fd66fe1cdbbf74c              # double 0.35057873812899198
	.quad	0x3fe2c246b98312f5              # double 0.58621536476911607
	.quad	0x3fea4d9b79078375              # double 0.82197354925675248
	.quad	0x3fd70232885b95d0              # double 0.35950911823451026
	.quad	0x3febad403869679b              # double 0.86489878671567355
	.quad	0x3fe3fb152f29e6f5              # double 0.62439974986702274
	.quad	0x3fbc04c714f06e30              # double 0.10944790135584337
	.quad	0x3fe74fab52738135              # double 0.72847524741886238
	.quad	0x3faeb75aa6593260              # double 0.059992630773739064
	.quad	0x3fdd07c2b024d7cc              # double 0.45359866334490273
	.quad	0x3fe7af2d993fe5a3              # double 0.74013404780923897
	.quad	0x3fe2528c2075337a              # double 0.57257658328454331
	.quad	0x3feb38f90c549792              # double 0.8507046929196227
	.quad	0x3fd4458f83dc8d96              # double 0.31674564244368619
	.quad	0x3fc38fed3b373118              # double 0.15282979384790774
	.quad	0x3feab0e2cc992ec5              # double 0.83409252129191513
	.quad	0x3fb88a6a3a97a548              # double 0.09586204462506942
	.quad	0x3fc0c4dee7b56494              # double 0.13100801767248937
	.quad	0x3fecebb0a3130100              # double 0.90377075052677469
	.quad	0x3fe5503d6453375e              # double 0.66604489893664343
	.quad	0x3fea71971c78ca84              # double 0.8263660007563236
	.quad	0x3fe2ae3550fe4af6              # double 0.58376565760622046
	.quad	0x3fefd1df309b5152              # double 0.99436912053583115
	.quad	0x3fb194f5fde7d588              # double 0.068679213036224707
	.quad	0x3fe36baaac6acc72              # double 0.60689290690642239
	.quad	0x3feb196047648e12              # double 0.84684766715912674
	.quad	0x3feb0cc155b3ddc1              # double 0.84530703295506993
	.quad	0x3feae15d34153baa              # double 0.84001026318025152
	.quad	0x3fea9b9d7fb79b2a              # double 0.83149599976318211
	.quad	0x3fe458d2ca07ce9e              # double 0.63584269961434692
	.quad	0x3fec6d3215d78465              # double 0.88832954660405206
	.quad	0x3fe1ed0c67ee3985              # double 0.56018657969416152
	.quad	0x3fe1f291404207d5              # double 0.56086027670266481
	.quad	0x3fa4da3927c368e0              # double 0.040727411369248179
	.quad	0x3fd251b5b52f8004              # double 0.2862371701612576
	.quad	0x3fe377c215d04448              # double 0.60836891422707939
	.quad	0x3fefe319a2cdcc9a              # double 0.99647218511235569
	.quad	0x3fede8e84380bbe1              # double 0.93468106445459054
	.quad	0x3fe596b5772d77ca              # double 0.67464707638623023
	.quad	0x3fbbff163f458ef8              # double 0.10936106724471617
	.quad	0x3fc3a81001c2f470              # double 0.15356636129391488
	.quad	0x3fc253b0ed0dbe58              # double 0.14317905020606037
	.quad	0x3feb3575b63129fc              # double 0.85027585586914211
	.quad	0x3fdbfb17d9ba98ec              # double 0.43720051062190524
	.quad	0x3fc25360a0133b98              # double 0.14316947761696208
	.quad	0x3fe4a4bf5162a13e              # double 0.64511075873910051
	.quad	0x3fe34e2ffbed6cf3              # double 0.60329436497286648
	.quad	0x3fef42ba667b109b              # double 0.97689552322164574
	.quad	0x3fa42e2c530558b0              # double 0.039414773115525548
	.quad	0x3fdd8939caa9a0b4              # double 0.46150059500952101
	.quad	0x3fcf9cb027760ccc              # double 0.24696924139798282
	.quad	0x3feaa43df3cca477              # double 0.83254907242839138
	.quad	0x3fa31c019bd923b0              # double 0.03732304599231584
	.quad	0x3fee3a31ecdb75ea              # double 0.94460388432679321
	.quad	0x3fe271a56cc9c167              # double 0.57637282607724394
	.quad	0x3fd9d4eefc6927c4              # double 0.40362143182266785
	.quad	0x3fc7dda84ffac474              # double 0.18645194916965446
	.quad	0x3fb07b55f75f7ae0              # double 0.064381955045500927
	.quad	0x3fc947383bd2d3f4              # double 0.19748595162459959
	.quad	0x3feb75d62325072a              # double 0.85813433517634974
	.quad	0x3febad8ae43660de              # double 0.8649343926690809
	.quad	0x3fe2312c651acbca              # double 0.56850261446958794
	.quad	0x3fdb276e14cd6c0c              # double 0.42428161651122376
	.quad	0x3fc077095d08eb64              # double 0.12863270800320514
	.quad	0x3fea8b2a717fc8b2              # double 0.82948801200679712
	.quad	0x3fe5e5711227263b              # double 0.68425801797383856
	.quad	0x3fd88cedc0085838              # double 0.38360160592253889
	.quad	0x3fec22ed8a391793              # double 0.87926365849192434
	.quad	0x3fea4d33142a16bc              # double 0.82192377031670771
	.quad	0x3fc8c17df2d2ee70              # double 0.19340490681303235
	.quad	0x3fea1ac48c1d600e              # double 0.81576754919206151
	.quad	0x3fe56f8f0aaa8e6d              # double 0.66986801226853532
	.quad	0x3fa5dabe48d532d0              # double 0.042684503927920781
	.quad	0x3fcead6a115562b0              # double 0.23966718527187458
	.quad	0x3fef3b0bcc1ee096              # double 0.97595777385051252
	.quad	0x3fe3baff8364d592              # double 0.61657691634052214
	.quad	0x3fce183a359b8978              # double 0.2351143609767623
	.quad	0x3fd5c7609c0c7ffc              # double 0.3402940296091399
	.quad	0x3fea928c8d701283              # double 0.83038928627554787
	.quad	0x3fef10e998a3f706              # double 0.97081451237292593
	.quad	0x3fe882812cad19db              # double 0.76593073583427029
	.quad	0x3fefaadaa8769775              # double 0.98960621741274101
	.quad	0x3fbf729a3aeeb858              # double 0.1228424447897124
	.quad	0x3fecc55ec821e87f              # double 0.89909304703111548
	.quad	0x3fb79579ee845300              # double 0.092124577266371687
	.quad	0x3fd6569c4078ba92              # double 0.3490362767796934
	.quad	0x3fef34e0f80ff7a8              # double 0.97520492982561268
	.quad	0x3feca786f9f2846b              # double 0.89545010392988666
	.quad	0x3fe987b59ba22ceb              # double 0.79781608960311468
	.quad	0x3fb16d3ce71f3dc8              # double 0.068073088098791534
	.quad	0x3fd7b57991c41d6e              # double 0.37045134768455668
	.quad	0x3fe09ea1de22ed36              # double 0.51936429391881833
	.quad	0x3fc5555573c07ce8              # double 0.16666668083141833
	.quad	0x3fdc44cb3c06cf06              # double 0.44169884550068195
	.quad	0x3fbf3b9245d15eb0              # double 0.12200273708855991
	.quad	0x3fa05abe6ffca320              # double 0.031942320986052986
	.quad	0x3fdf289e01e06b84              # double 0.48685407813325576
	.quad	0x3fa7ee94e9ba3cb0              # double 0.046742108851611675
	.quad	0x3fe87227d1bec347              # double 0.76393500295498817
	.quad	0x3fe6625118d46d91              # double 0.69950156068391511
	.quad	0x3fe0c7d47aa878a4              # double 0.52439331013353696
	.quad	0x3fe25ce645fb02e6              # double 0.57384027164524976
	.quad	0x3fd4a4f6de3031c8              # double 0.32256862352440097
	.quad	0x3fc912c7d1c6a3d4              # double 0.19588563673940362
	.quad	0x3fe90fcd26c4d032              # double 0.78317887851745227
	.quad	0x3fbf4f094c9d42b0              # double 0.12229974861589699
	.quad	0x3fda4fbca59c7490              # double 0.41111675427402705
	.quad	0x3fe9db266884e157              # double 0.80800171293143819
	.quad	0x3fe64674cfe407ca              # double 0.69610062221203717
	.quad	0x3fed1306926a87eb              # double 0.90857246968175553
	.quad	0x3fe476d320679f75              # double 0.63950496987398131
	.quad	0x3fe3326e15c6488a              # double 0.59990600827065177
	.quad	0x3fed01f0df71934a              # double 0.90648692742670645
	.quad	0x3fbed8aa1a5146a0              # double 0.12049353735462853
	.quad	0x3feb6b77fe4cbbc0              # double 0.85686874072950303
	.quad	0x3fe3b614189e2c29              # double 0.61597637947250405
	.quad	0x3fdd87a855934fe0              # double 0.46140488011337588
	.quad	0x3fdd9931bf06b15e              # double 0.46247523932358614
	.quad	0x3fe3a61c036787fa              # double 0.61402702965665346
	.quad	0x3fe3f9bee9001134              # double 0.62423654086936731
	.quad	0x3fea66abfcb4d326              # double 0.82503318173130391
	.quad	0x3fc4e5af81459bcc              # double 0.16325944721321972
	.quad	0x3fe0c7a22a7d3714              # double 0.52436931894928529
	.quad	0x3fe86cbe0c4ff44a              # double 0.76327421574354415
	.quad	0x3fc39a3af94c0128              # double 0.1531442372579559
	.quad	0x3fecab263ed7a92d              # double 0.89589226030265012
	.quad	0x3feda9ac04d57869              # double 0.92696190780749277
	.quad	0x3fc708039adf5a20              # double 0.17993207037098191
	.quad	0x3fe7b47a33ea0a61              # double 0.74078092708107246
	.quad	0x3fe49b60884ac755              # double 0.64396692866851402
	.quad	0x3fe9f715548747fa              # double 0.81141153821431478
	.quad	0x3fea7d1ed30ac4ee              # double 0.82777348727372924
	.quad	0x3fe27ec7f7f2c8a2              # double 0.57797621180931835
	.quad	0x3feee604f3e05c54              # double 0.9655785334788427
	.quad	0x3fdefb3d9d5d305e              # double 0.48408451430873878
	.quad	0x3fe2158743f9d0fb              # double 0.56512797619373545
	.quad	0x3fe99b23b3070613              # double 0.80018792120262316
	.quad	0x3fdc8e2dd3b10b86              # double 0.44617791817670882
	.quad	0x3fee21ef5931727c              # double 0.94164245052850459
	.quad	0x3fdd171c200e5ac2              # double 0.45453551416850868
	.quad	0x3fea56f979f51a75              # double 0.8231170064908172
	.quad	0x3fe6d047d849b57f              # double 0.71292488330588799
	.quad	0x3fc1186ce0ffd958              # double 0.13355790125178646
	.quad	0x3fddf9f99eb09688              # double 0.46838226792383653
	.quad	0x3fdbc95ad15eed8e              # double 0.4341647190701331
	.quad	0x3fb1ec5124b8f3c8              # double 0.070012160745093088
	.quad	0x3feafbb44fa711e8              # double 0.8432256274905372
	.quad	0x3fea0cd3fee925df              # double 0.81406593119862325
	.quad	0x3fee7716219297e6              # double 0.95203692013887742
	.quad	0x3feafdb0ba3367cd              # double 0.84346805922836554
	.quad	0x3fca10f8af788834              # double 0.20364292686378038
	.quad	0x3fdd4d1810174d9e              # double 0.45783044406308615
	.quad	0x3fdfd188cee0973c              # double 0.49716396525251461
	.quad	0x3fd05b2172dff838              # double 0.25556217401743053
	.quad	0x3fd1bfa8112f2960              # double 0.27732278516909581
	.quad	0x3fe8ce8246f84d3a              # double 0.77520860539735925
	.quad	0x3fdf70b91a8e8caa              # double 0.49125506967011268
	.quad	0x3faf545c8fa6fef0              # double 0.061190502677616609
	.quad	0x3fe850497d787ff9              # double 0.7598006678199446
	.quad	0x3fe96e7573d57a66              # double 0.79473374007995967
	.quad	0x3fdd99b1127b975c              # double 0.46250559620817966
	.quad	0x3fdcdec44ed21530              # double 0.45109660813644137
	.quad	0x3fc1bb8e66c20e84              # double 0.1385362626789296
	.quad	0x3fa0e56ded936420              # double 0.0330004074582535
	.quad	0x3fd68395451a08f4              # double 0.35178119419300846
	.quad	0x3fa36090682f3fb0              # double 0.037846100538103555
	.quad	0x3fefcbda3ec22851              # double 0.99363434083466917
	.quad	0x3fd154e04e7d1442              # double 0.2708054319849148
	.quad	0x3fee1b9494249e08              # double 0.94086674627482214
	.quad	0x3fde4f5002d410f4              # double 0.4735908534642157
	.quad	0x3fcf823a5477796c              # double 0.24616173862791457
	.quad	0x3fdb956091889afa              # double 0.43099226200358454
	.quad	0x3fc1dac16312430c              # double 0.13948838555781895
	.quad	0x3fe5842b6bb4d026              # double 0.67238398586642201
	.quad	0x3fe9c8c9d4eb991b              # double 0.80576030336377202
	.quad	0x3fd83f3692f7e1dc              # double 0.3788582263219078
	.quad	0x3fec18a4c5e59a5e              # double 0.87800825740562138
	.quad	0x3fceb427428ce700              # double 0.23987284421473731
	.quad	0x3fea718a0f86c7ae              # double 0.82635977776066283
	.quad	0x3fdcfc6497a1abb4              # double 0.45290484245077356
	.quad	0x3fc9a44bb81c09a8              # double 0.20032640924189349
	.quad	0x3fd8e6d8216b668c              # double 0.38908961547495191
	.quad	0x3fdcdb159e403a72              # double 0.45087185339153912
	.quad	0x3fecb76b7d752d3a              # double 0.89739012244664385
	.quad	0x3fe3d72a982c0360              # double 0.62001542779044527
	.quad	0x3fd7c3cab01d2b08              # double 0.37132518004061454
	.quad	0x3fd9598d6bf69b6e              # double 0.39609084647457038
	.quad	0x3fe2e821d6aff8a7              # double 0.59083644801264235
	.quad	0x3fed66ceea9c603a              # double 0.91879983732633908
	.quad	0x3fe259c527be2bb0              # double 0.57345826875950046
	.quad	0x3fd4a370e87692ba              # double 0.32247564984781329
	.quad	0x3fe9b3c5efee265c              # double 0.80319496976262483
	.quad	0x3fef4991ba809301              # double 0.97773062158793788
	.quad	0x3fdd3f0f2bd48734              # double 0.45697383194248009
	.quad	0x3fed2fead3227815              # double 0.91209927785144151
	.quad	0x3fe0adada934c2ce              # double 0.52120097206178584
	.quad	0x3fc63a8b6fcf8938              # double 0.17366164168840625
	.quad	0x3fed9a2a6d8dbdb1              # double 0.92506905934526718
	.quad	0x3fe131c97b41991b              # double 0.53732751916394095
	.quad	0x3fc40f6f7b3fd344              # double 0.15672105329545094
	.quad	0x3fc86e771e0eeef0              # double 0.19087113349620877
	.quad	0x3fe04b665256ce6a              # double 0.50920406419613795
	.quad	0x3fd07db773f8779a              # double 0.25767313313724005
	.quad	0x3fed1627b3261baa              # double 0.90895447721492428
	.quad	0x3fecb28522ed2c21              # double 0.89679200002263226
	.quad	0x3fe3b6b6e85538bc              # double 0.61605401399153648
	.quad	0x3fa3662c26bb5830              # double 0.037888889053349195
	.quad	0x3fe074ac3d1d7dba              # double 0.51424228607714118
	.quad	0x3fdeef6371a3e366              # double 0.48336111161875406
	.quad	0x3fefe7aa22d94ed4              # double 0.99702936941545283
	.quad	0x3fee51f6ce667a3a              # double 0.94750538170394027
	.quad	0x3fe69f36a3bbaeaa              # double 0.70693523387077062
	.quad	0x3fe10382ad838147              # double 0.53167852296250195
	.quad	0x3fd39977a78c01be              # double 0.30624190675737484
	.quad	0x3fea106e453e2515              # double 0.81450570606208095
	.quad	0x3fe6460870233573              # double 0.69604894544469997
	.quad	0x3feef166cf290b15              # double 0.96696796856881184
	.quad	0x3fe75123f5b866d4              # double 0.72865484230279742
	.quad	0x3fd56ce98753ee42              # double 0.33477247443781633
	.quad	0x3fb6ea9c0ff15010              # double 0.089517358677142278
	.quad	0x3fb79aa8ff4cbd18              # double 0.092203676537554791
	.quad	0x3fd5583c44486a30              # double 0.33351046245812466
	.quad	0x3fe75829fa7efb71              # double 0.72951220440869069
	.quad	0x3fde3808781ef524              # double 0.47216998796996479
	.quad	0x3fe5248ed652e67e              # double 0.66071264133570629
	.quad	0x3fcdc1147c67fad4              # double 0.23245483469505379
	.quad	0x3feb56c8571dcdc0              # double 0.85434357657361915
	.quad	0x3fbfe2b9028e6f90              # double 0.12455326378261433
	.quad	0x3fe580b46cd13ef8              # double 0.6719610333766175
	.quad	0x3fe10b94e71775b2              # double 0.53266377577863566
	.quad	0x3fe961b4b13adaa0              # double 0.79317698111738721
	.quad	0x3fef228edad4af04              # double 0.97296850910558463
	.quad	0x3fd59b5742d774ce              # double 0.3376062538862471
	.quad	0x3fef8b206db22dbd              # double 0.98573323655130418
	.quad	0x3fe1f328a1792042              # double 0.56093246019100484
	.quad	0x3fedea880524b4f1              # double 0.93487931255881851
	.quad	0x3feaa34824fca96a              # double 0.83243186210647235
	.quad	0x3fe0c0ff9627d510              # double 0.52355937316193213
	.quad	0x3fe6ba901dfca0a0              # double 0.71027379853059713
	.quad	0x3feaf3f48360bff0              # double 0.84227967891456323
	.quad	0x3fd0f5226e96e6e2              # double 0.26496182250740052
	.quad	0x3fdd334d6bd6cdac              # double 0.45625625163230654
	.quad	0x3fe7c50c1ec058c1              # double 0.74280363088725931
	.quad	0x3fe2ea31e160989d              # double 0.59108823794373999
	.quad	0x3fce34d0c9f9bd78              # double 0.23598680364691993
	.quad	0x3fcc8ffbcf5cec40              # double 0.2231440317644644
	.quad	0x3fc117a342488cec              # double 0.13353386627668529
	.quad	0x3fcfdcc8dd2fef84              # double 0.24892531204374901
	.quad	0x3fec0caa992b3f66              # double 0.87654619136627043
	.quad	0x3fd63c2cbe722544              # double 0.34742277715902881
	.quad	0x3fd8e31c72bf438e              # double 0.38886176305555231
	.quad	0x3fd8051c9d353388              # double 0.37531199791265424
	.quad	0x3fc47de94a43baac              # double 0.16009250761222427
	.quad	0x3fc624eddd63a750              # double 0.17300198850653681
	.quad	0x3fe6d2e188766855              # double 0.71324230816686429
	.quad	0x3fccf6249f48f224              # double 0.22626168992600626
	.quad	0x3fde706e54b52e18              # double 0.47561224243392664
	.quad	0x3fe7c635505eec27              # double 0.74294534394664857
	.quad	0x3fc76d0b69d981b8              # double 0.18301527660788763
	.quad	0x3fe509c9054d8443              # double 0.65744448695853241
	.quad	0x3fe60cf2339b368a              # double 0.68908033446651129
	.quad	0x3fe0435815a1eb54              # double 0.50822071290108761
	.quad	0x3fbb9bbb25e886a8              # double 0.10784501719947548
	.quad	0x3fd4f854e432c5ba              # double 0.32765695843690035
	.quad	0x3fcab96a3230fc34              # double 0.20878341150998525
	.quad	0x3fec9da1da9bea72              # double 0.89424221703605
	.quad	0x3fa2d3346cf304f0              # double 0.036767614650225044
	.quad	0x3fd25cd35e76348c              # double 0.28691562866954068
	.quad	0x3fa6705aad0936e0              # double 0.043825944540555772
	.quad	0x3fb8af5dad143c50              # double 0.09642587161600713
	.quad	0x3fec1ac8d005c0e8              # double 0.87826958302869418
	.quad	0x3fe90b05818119a9              # double 0.7825953988438431
	.quad	0x3fe958f4b6d3ccbc              # double 0.79210887630906468
	.quad	0x3fc499de3e73d7e8              # double 0.16094568299712297
	.quad	0x3fed8b1b01a949f5              # double 0.92323065113515546
	.quad	0x3fc05ad4a69278b8              # double 0.12777193196683867
	.quad	0x3feab0313098347e              # double 0.83400783053515659
	.quad	0x3fce8390e1ce35ac              # double 0.23839007402095314
	.quad	0x3fe03c0cfc6b2b2b              # double 0.50733041096223042
	.quad	0x3fcd5f6fa3120d3c              # double 0.22947497808864081
	.quad	0x3fd99c292a8fed74              # double 0.40015629917589668
	.quad	0x3fd7ca997b3c62e8              # double 0.37174069437746349
	.quad	0x3fb0f2765f394788              # double 0.066199682472214971
	.quad	0x3fd60e94271bc0be              # double 0.3446398145597519
	.quad	0x3fc12764c6e17084              # double 0.13401469908683705
	.quad	0x3fef1da7353ab703              # double 0.97236977001531987
	.quad	0x3fec1e5dbf4088f6              # double 0.87870681146549035
	.quad	0x3feb11f7147a3ec0              # double 0.84594301223292945
	.quad	0x3fe5c50a90ca840c              # double 0.68030288962847996
	.quad	0x3fe39aea63b23ca5              # double 0.61266059371873338
	.quad	0x3fefe87581bfb042              # double 0.99712634412345147
	.quad	0x3fe15dc01bafa0f8              # double 0.54269414336616162
	.quad	0x3fd7c468280a7720              # double 0.3713627234482022
	.quad	0x3fe6f51cdc3a7ede              # double 0.71742098821047384
	.quad	0x3fe2075995168e05              # double 0.56339720839281482
	.quad	0x3fd3ad3d2ae844f6              # double 0.30744866552511441
	.quad	0x3fcfbf12d27ab474              # double 0.24801860120115615
	.quad	0x3fe5a062f598871b              # double 0.67582843749935095
	.quad	0x3fa210f1054efb30              # double 0.035285503290188536
	.quad	0x3fec4f98461d136d              # double 0.88471616453226221
	.quad	0x3fa6d8552f1c0bb0              # double 0.044619237900426767
	.quad	0x3fd56a57b033b28c              # double 0.33461563307972919
	.quad	0x3fdaa9b0515f9b98              # double 0.41660697886111953
	.quad	0x3fd89353a97b3f82              # double 0.38399211455270443
	.quad	0x3f999621db246d40              # double 0.024986771583923373
	.quad	0x3fdb68658ceae940              # double 0.42824686776625143
	.quad	0x3fc39264e2e1bd04              # double 0.15290509298527166
	.quad	0x3fde78f4bdb8a962              # double 0.47613256957506256
	.quad	0x3fe60811d8d96b96              # double 0.68848507264498227
	.quad	0x3fd9d75c04c5ed9e              # double 0.40376949754837621
	.quad	0x3fecbdca713d9c68              # double 0.89816782109563764
	.quad	0x3feb76f5312ff79f              # double 0.8582712135973799
	.quad	0x3fefffdd49b67f5e              # double 0.99998344800040306
	.quad	0x3fc9739b3415e21c              # double 0.19884052317844769
	.quad	0x3fe4a4bb3e75c0da              # double 0.64510881613935145
	.quad	0x3fe540c4ac8fcff8              # double 0.66415628150434625
	.quad	0x3fe628c1816b628c              # double 0.69247508313408579
	.quad	0x3fe78ed29dfebdba              # double 0.73618441446699667
	.quad	0x3fd271d7426450c2              # double 0.28819829448299228
	.quad	0x3feb4ca70a0a639f              # double 0.85310699425746239
	.quad	0x3feb595548110e68              # double 0.85465492320549874
	.quad	0x3fcb0bedcd760668              # double 0.2113015416362487
	.quad	0x3fd0975c50b25026              # double 0.25923831825753252
	.quad	0x3fefe42dedb0767d              # double 0.99660393165295568
	.quad	0x3fe99a59fd77a2a8              # double 0.80009173875176476
	.quad	0x3fc0cb4d08589478              # double 0.13120425136108671
	.quad	0x3fe642aaeb35b8bd              # double 0.69563814105438093
	.quad	0x3fecac7f4ae62a2a              # double 0.89605679157950147
	.quad	0x3fee08ecab63d72a              # double 0.93858941530809159
	.quad	0x3fe7c9995414bb17              # double 0.74335924551073418
	.quad	0x3fe82452ee3772df              # double 0.75443407560996067
	.quad	0x3fe1d6163df40f3b              # double 0.55738365268960111
	.quad	0x3fefb43260d54409              # double 0.99074667847355712
	.quad	0x3fd6d84c2e057834              # double 0.35695175642274823
	.quad	0x3fe983b07fdacf81              # double 0.79732537242533408
	.quad	0x3fe1cbe83e290a5c              # double 0.55614101544081107
	.quad	0x3fb43c527eda49b0              # double 0.079045444459814317
	.quad	0x3fe758e97b3fc5f6              # double 0.7296035201272264
	.quad	0x3fe7daf1b12fb18c              # double 0.74547657591533456
	.quad	0x3fab00851a328440              # double 0.052738341758648222
	.quad	0x3fe8e9aeaa3c0f68              # double 0.77852566956469804
	.quad	0x3fe7c27d9ec95275              # double 0.74249154103252002
	.quad	0x3fbeee17756868d0              # double 0.12082049003984996
	.quad	0x3febbe249f0149fa              # double 0.86696082168265254
	.quad	0x3fe6b9e7e8acb721              # double 0.71019359058638909
	.quad	0x3fe9487f0a722761              # double 0.79009964027612167
	.quad	0x3fb0b63fe9999a98              # double 0.065280909091237738
	.quad	0x3fee7335eec82099              # double 0.95156380307254829
	.quad	0x3fe30657b7430d5d              # double 0.59452424805969495
	.quad	0x3fd6016f4b761af6              # double 0.34383756989738801
	.quad	0x3fe5c44b52fb2aeb              # double 0.68021169860125263
	.quad	0x3fee6dde69195be2              # double 0.95091171767387217
	.quad	0x3fe3ad2887018ca2              # double 0.61488748901719625
	.quad	0x3fe8996e5ba157a8              # double 0.76872938057453144
	.quad	0x3fea657f56ab53d7              # double 0.82488982131564625
	.quad	0x3fef15249ac270ea              # double 0.97133093096229328
	.quad	0x3fe88a9103bf4ca2              # double 0.76691485149276084
	.quad	0x3fd405194aea7202              # double 0.31281120601650525
	.quad	0x3fc9d7aa697dcb34              # double 0.20189409399935132
	.quad	0x3fe746eac33c183f              # double 0.7274068654230702
	.quad	0x3fe4f6e070228320              # double 0.65513631726580357
	.quad	0x3fe80095bba145c4              # double 0.7500713982246272
	.quad	0x3fea6a7f67e58d1b              # double 0.82550020496674692
	.quad	0x3fd6a6156a6b6432              # double 0.35388694183854164
	.quad	0x3fb76e4723c8c480              # double 0.091526457058323629
	.quad	0x3feda0c89645287a              # double 0.9258768973316045
	.quad	0x3fe5d0a1d7e74f9a              # double 0.68171779793418641
	.quad	0x3f596a3f1851e200              # double 0.0015512100374320825
	.quad	0x3fb2adfb76d76950              # double 0.07296725894358258
	.quad	0x3fd5c96ce73904a4              # double 0.34041903095573844
	.quad	0x3fee7fb4dcbc9a57              # double 0.95308917153017603
	.quad	0x3fe3b1c74cee8bbd              # double 0.61545147920366328
	.quad	0x3fe67f7ce26f6edb              # double 0.70306247926370291
	.quad	0x3fdc51b5553048ec              # double 0.44248708075714549
	.quad	0x3fbe13173de984f8              # double 0.11747880231407126
	.quad	0x3fd3a6202890a6d8              # double 0.30701450311117418
	.quad	0x3fdd9cd88f1caffc              # double 0.4626981160715784
	.quad	0x3fd2af969631fd5e              # double 0.29196705501086295
	.quad	0x3fe920e4eee5c11e              # double 0.78526541385329884
	.quad	0x3fa1ea53fe4f9e60              # double 0.034990906518768794
	.quad	0x3fe19a15cd079201              # double 0.55005922360265924
	.quad	0x3fe97f7ad6e70ce6              # double 0.79681150410797552
	.quad	0x3fd5c5898905955e              # double 0.34018171673809217
	.quad	0x3fc879420e9505ac              # double 0.1912005015565631
	.quad	0x3fe49bc3d60f23f9              # double 0.64401428039957331
	.quad	0x3fcfb1bb53d62898              # double 0.24761144250471001
	.quad	0x3fe1b5ba68c797eb              # double 0.55343361344125463
	.quad	0x3fe87bf8c7090a59              # double 0.76513327478489679
	.quad	0x3fe710eb0a1fd3da              # double 0.7208152005902051
	.quad	0x3fd1d885ffe8885c              # double 0.2788405417542259
	.quad	0x3fe729e76816f63d              # double 0.72386522607821002
	.quad	0x3fe8a8861761da87              # double 0.77057175223201646
	.quad	0x3fef672680dc8170              # double 0.98134160202248033
	.quad	0x3fb652ef78e1f3d8              # double 0.087202994358406172
	.quad	0x3fed151cd512e1c7              # double 0.90882722488373069
	.quad	0x3fe942453afed4db              # double 0.78933965227647762
	.quad	0x3fbbb0f7cddabdc8              # double 0.10816906715148555
	.quad	0x3fdfb20a42d56692              # double 0.49524170424192804
	.quad	0x3fd09e07d0d22912              # double 0.25964541809720842
	.quad	0x3fc8ad7848079bf0              # double 0.19279387967182471
	.quad	0x3fe0200989745823              # double 0.50391079756332535
	.quad	0x3fe09a4af8262034              # double 0.5188345762881057
	.quad	0x3fc3f1bb6b9ca984              # double 0.15581457857599557
	.quad	0x3fe04f1ca444d49a              # double 0.50965721210254178
	.quad	0x3fe59fae1cb62ef6              # double 0.67574220283265052
	.quad	0x3feeb19d3d6b0f7b              # double 0.95918142314665943
	.quad	0x3fc937250bd77d30              # double 0.19699538305483477
	.quad	0x3fe34a28c9b0c1e6              # double 0.60280265228908259
	.quad	0x3fc8e3251deb4750              # double 0.19443191491023493
	.quad	0x3fec29d08ebd8d2d              # double 0.88010433081618589
	.quad	0x3fef53f83fe5ad44              # double 0.97900021057049757
	.quad	0x3fdfab794e37d0fe              # double 0.4948409332130409
	.quad	0x3fe692b180abed7f              # double 0.70540690547151985
	.quad	0x3feb7bc8f2d58599              # double 0.85886046818284278
	.quad	0x3faf1857fb65ff50              # double 0.060732602537426517
	.quad	0x3fec68f23ea02e51              # double 0.88781082374175402
	.quad	0x3fd943590a847984              # double 0.39473558451745583
	.quad	0x3fd89c85627fb95a              # double 0.38455328578029013
	.quad	0x3fd1f7de4a35e128              # double 0.28075368163219361
	.quad	0x3fdae8d4fae96ed0              # double 0.42046093466863699
	.quad	0x3fd957b85f30d972              # double 0.39597901626566234
	.quad	0x3febb4a306bb75f5              # double 0.86580039324661462
	.quad	0x3feb0b6e6363bc55              # double 0.84514541065244464
	.quad	0x3faa129890cea770              # double 0.050923125912347156
	.quad	0x3feb22243b104d01              # double 0.84791766677736302
	.quad	0x3fe203321387f595              # double 0.56289008917490213
	.quad	0x3fe2abcde7d7e7e2              # double 0.58347220689688251
	.quad	0x3feb9f06d026f262              # double 0.86316242842401558
	.quad	0x3fdab08dcc1c0f7c              # double 0.41702599461154199
	.quad	0x3f7ef72f72d39100              # double 0.0075599530657408653
	.quad	0x3fe277328d706a72              # double 0.57705047249630881
	.quad	0x3fe28cbd449261b8              # double 0.57968009369783768
	.quad	0x3fe5d0741d672cef              # double 0.68169599287776161
	.quad	0x3fd5ce6ac65fc918              # double 0.34072369930722024
	.quad	0x3feca5f2720e84ea              # double 0.89525720860197322
	.quad	0x3fe7880670c53e2f              # double 0.73535463357433695
	.quad	0x3fc98dbba4da6cec              # double 0.19963784741853574
	.quad	0x3fe054e8465598b0              # double 0.51036466347865961
	.quad	0x3fdd37f0eb3f050a              # double 0.45653937314280368
	.quad	0x3fe2b2e477b80a0e              # double 0.58433745749090504
	.quad	0x3fe43d4f5a1220a2              # double 0.6324841269679562
	.quad	0x3fbe8617486570a8              # double 0.11923356549727038
	.quad	0x3febe380266b666d              # double 0.87152106765570425
	.quad	0x3fd1494c6ba0b710              # double 0.27009878645445529
	.quad	0x3fd1da32d215c27c              # double 0.27894278064835709
	.quad	0x3fe51241c974072e              # double 0.65847863527617334
	.quad	0x3fe9e0ed2949a040              # double 0.80870683731064474
	.quad	0x3fe0718cf298681f              # double 0.51386115438367941
	.quad	0x3fe38140221c718f              # double 0.60952765142751442
	.quad	0x3fe8a20850b92ffd              # double 0.76977935568129363
	.quad	0x3fe09be3c5f37c23              # double 0.51902950918509239
	.quad	0x3fad15db89db8b20              # double 0.056807385042495051
	.quad	0x3fbe70e23f898548              # double 0.11890996981812407
	.quad	0x3fa347f2eb881480              # double 0.037658301593219257
	.quad	0x3fb0c00b909e9578              # double 0.065430376822936398
	.quad	0x3fe501c30b891241              # double 0.65646507504477125
	.quad	0x3fcea28300185b90              # double 0.23933446411748749
	.quad	0x3feb71e4f0f0d2cf              # double 0.8576531129716275
	.quad	0x3feab95c501afb09              # double 0.83512702603897637
	.quad	0x3fea4e185e40c482              # double 0.82203310402668728
	.quad	0x3fee91e07fff72b4              # double 0.9553072452505007
	.quad	0x3fe8d0c373be3e6c              # double 0.77548382383424785
	.quad	0x3fe9327b4c847832              # double 0.78741230912033289
	.quad	0x3fd6b2bde9454c68              # double 0.35465953617421642
	.quad	0x3fea6a5912d21737              # double 0.82548192668830367
	.quad	0x3fe08307398c06b9              # double 0.51599465598720606
	.quad	0x3fecb91953cd1bcf              # double 0.89759508483336414
	.quad	0x3fdc03f14beff0c4              # double 0.43774063506840499
	.quad	0x3fa517004e522790              # double 0.041191110191973412
	.quad	0x3fe83446ab464f12              # double 0.75638135387495908
	.quad	0x3fd945e1d67876fa              # double 0.39489026970282703
	.quad	0x3fd6bcf6f9b8334a              # double 0.35528349291489703
	.quad	0x3fa0a01b5ac82f30              # double 0.032471518356116724
	.quad	0x3feb86b2689f6235              # double 0.86019249376392415
	.quad	0x3fe669e75df49847              # double 0.70042770720170544
	.quad	0x3fc8c916358adb9c              # double 0.1936366807401243
	.quad	0x3fe0232161ef02e2              # double 0.50428837897933598
	.quad	0x3fb263e312cebf88              # double 0.071836654750539464
	.quad	0x3f8e8075d756bbc0              # double 0.014893456110113834
	.quad	0x3fae101bca9aa4a0              # double 0.058716648561423002
	.quad	0x3fee7da62596e0bd              # double 0.95283801404641333
	.quad	0x3fe9f2a3f7f5b617              # double 0.81086920194292389
	.quad	0x3fd96c37604241ea              # double 0.39722999954486105
	.quad	0x3fe12e0ce3847138              # double 0.53687138020499159
	.quad	0x3fd511513cec7492              # double 0.32918196630073127
	.quad	0x3fba18ee3f207050              # double 0.10194291154078994
	.quad	0x3fd30cef8a4a8414              # double 0.29766453270900795
	.quad	0x3fea4e235417e1bf              # double 0.82203833031149276
	.quad	0x3fe78785c2b407b6              # double 0.7352932741925915
	.quad	0x3feea4e56bb51a1d              # double 0.95762892757995
	.quad	0x3fe723aa073e2d06              # double 0.72310353674529959
	.quad	0x3fe459b1f038af8c              # double 0.63594910543678074
	.quad	0x3f719dd955f70900              # double 0.0043009271316256648
	.quad	0x3faa338108842b10              # double 0.051174194612107482
	.quad	0x3fe64d07fb2c565a              # double 0.69690321976913627
	.quad	0x3feae264625a601d              # double 0.84013575753761283
	.quad	0x3fea97c7f2dfbd6c              # double 0.83102796017003077
	.quad	0x3fd26da79b7206b8              # double 0.28794279270378409
	.quad	0x3f7e2ae30d832a80              # double 0.0073651189088176361
	.quad	0x3fbf09ecccea4b70              # double 0.12124519350827057
	.quad	0x3fe024129fbc5e3a              # double 0.5044034118499845
	.quad	0x3fb91f9b03e6c5f0              # double 0.098138512089256613
	.quad	0x3fb935c35bff1d40              # double 0.09847661014565734
	.quad	0x3fdd73e157a08002              # double 0.46019776875800755
	.quad	0x3fd1e077ec8852aa              # double 0.27932546709898054
	.quad	0x3fe052e34393d995              # double 0.51011813353288693
	.quad	0x3fdd39c3db4b8d1c              # double 0.45665069976367234
	.quad	0x3fd357037963d7cc              # double 0.30218588690274539
	.quad	0x3fdcb2cbde2553f6              # double 0.44841286367346755
	.quad	0x3fb6ea864eb216a0              # double 0.089516061985785544
	.quad	0x3fc7408152653490              # double 0.18165604136666902
	.quad	0x3fe8c68ebbb6f653              # double 0.77423798239733299
	.quad	0x3fd3748d3ed344b0              # double 0.30398875365524258
	.quad	0x3fefc6c16b4195ca              # double 0.99301215122675868
	.quad	0x3fe292b21dfc814a              # double 0.58040719849308542
	.quad	0x3fe4582f749fbe49              # double 0.63576481607555835
	.quad	0x3fe513455edd1373              # double 0.65860241439859946
	.quad	0x3faa3a5326c886c0              # double 0.051226232990541742
	.quad	0x3fed37034ffa07f8              # double 0.91296544666715729
	.quad	0x3feb9fc21daa5762              # double 0.8632517413522971
	.quad	0x3fe28c333586a3e9              # double 0.5796142621448982
	.quad	0x3fddb7ede0b2ddb0              # double 0.46435114806396438
	.quad	0x3fe8f403d14e5e67              # double 0.77978697662451857
	.quad	0x3fed55df5d906d57              # double 0.9167324855256237
	.quad	0x3fe624a77114bef5              # double 0.69197437368526826
	.quad	0x3fe6b953cad23b7e              # double 0.71012296308059297
	.quad	0x3fa297e15010f0e0              # double 0.036315003417685565
	.quad	0x3fb6ff092f86a4c8              # double 0.089829038718238441
	.quad	0x3fde8cb7d2901b28              # double 0.47733874857697112
	.quad	0x3fe7baf2da57e8b6              # double 0.74157087941355004
	.quad	0x3fae742e03f142b0              # double 0.059480131131413372
	.quad	0x3fe35084ba8b81d8              # double 0.60357891497192906
	.quad	0x3fd29b0175ffee80              # double 0.29071079753314422
	.quad	0x3fe177e8368ad3a1              # double 0.54588709500113819
	.quad	0x3fef51998612c911              # double 0.97871090112883696
	.quad	0x3fd1d13477d124c2              # double 0.27839385701060959
	.quad	0x3fa751bb868157c0              # double 0.045545444649789157
	.quad	0x3fd4d22c9956d138              # double 0.32532801603817374
	.quad	0x3fe341d1638aa4ea              # double 0.60178441468920352
	.quad	0x3fe5762fd8c3b52c              # double 0.67067711197674873
	.quad	0x3fe2a46b9840937f              # double 0.5825708364178438
	.quad	0x3fe5dc57f89182ec              # double 0.68314741657749556
	.quad	0x3fec99c7f40a060b              # double 0.89377210296533016
	.quad	0x3fe64bc0805cff85              # double 0.6967470652671045
	.quad	0x3fe999f4e6020262              # double 0.80004353450210552
	.quad	0x3fe7b842ee5fe7c6              # double 0.74124285275979029
	.quad	0x3fe01ecdeb4687bc              # double 0.50376029922721655
	.quad	0x3fd9cc6ef0e39c72              # double 0.40310262226416349
	.quad	0x3fd64aa2ac7545c2              # double 0.34830538598643213
	.quad	0x3faefdfd7e4c68f0              # double 0.060531541507048092
	.quad	0x3fe08b77d1b59c71              # double 0.51702490767355702
	.quad	0x3fb75d35ea320468              # double 0.0912660309568466
	.quad	0x3fbd99d6fc127548              # double 0.11562865881065421
	.quad	0x3fe2717f9be8db0d              # double 0.57635479403583789
	.quad	0x3fd4850b974530fe              # double 0.32062043926704564
	.quad	0x3fad73af4209b9f0              # double 0.057523228465345855
	.quad	0x3fd1785240271ae4              # double 0.27296882882039442
	.quad	0x3fea1823f01ae167              # double 0.81544682403095414
	.quad	0x3fe08d57301adcac              # double 0.5172534884976776
	.quad	0x3fd419d1f68641e8              # double 0.31407593798306133
	.quad	0x3fb7b5acc245da20              # double 0.092615888051888806
	.quad	0x3fe13abe824a0d6f              # double 0.53842091986773066
	.quad	0x3fc172aafe55c434              # double 0.13631188791944882
	.quad	0x3fdf6cbbf2398656              # double 0.49101160673862887
	.quad	0x3fed11881c3ab8b6              # double 0.90839009774733515
	.quad	0x3fe9d846fcca4c86              # double 0.80765103695957019
	.quad	0x3fc920882fa5d964              # double 0.19630529715113731
	.quad	0x3fefbeb725496685              # double 0.99203069002688037
	.quad	0x3fd1efda456dc37c              # double 0.28026444225456948
	.quad	0x3fdb42c771494d24              # double 0.42595087111586083
	.quad	0x3fe45629e5eeab9b              # double 0.63551802548078073
	.quad	0x3fe87b257a7ae679              # double 0.76503251954927898
	.quad	0x3fe8164fda2626a2              # double 0.75272362334472498
	.quad	0x3fe05f41e1d169f4              # double 0.51162809472162829
	.quad	0x3fd9d76545c7e17e              # double 0.40377170385865913
	.quad	0x3fd93fb3c66ab852              # double 0.39451307655952406
	.quad	0x3fe59b8bf03b1403              # double 0.67523762626717632
	.quad	0x3f890d85b506f580              # double 0.012232822978030411
	.quad	0x3fd4d92ba1d5a026              # double 0.32575503162525121
	.quad	0x3fe42aa2539eb135              # double 0.63020435649881412
	.quad	0x3fd7e394d533a64a              # double 0.37326546497806545
	.quad	0x3f9ab3687109c640              # double 0.026075012110999163
	.quad	0x3feae72b29de204f              # double 0.84071882416993471
	.quad	0x3fd8de38765877bc              # double 0.38856326634583715
	.quad	0x3fe78592680a0879              # double 0.73505516357569356
	.quad	0x3fe08169e5bb6bc7              # double 0.51579756612351779
	.quad	0x3fc67275b17c4d80              # double 0.17536803404128065
	.quad	0x3fc7e3097b41e2c4              # double 0.18661612051416487
	.quad	0x3fb5e278465c7368              # double 0.085486905267726621
	.quad	0x3fe5ccee7a3c3afb              # double 0.68126605867459433
	.quad	0x3fd0250c5f252f78              # double 0.25226125041512359
	.quad	0x3fd41a4f81982704              # double 0.31410586982438837
	.quad	0x3f830d91f8480480              # double 0.0093032268423505204
	.quad	0x3fda57923c06dec8              # double 0.41159492361064709
	.quad	0x3fd271030909c830              # double 0.28814769632947712
	.quad	0x3fe962a46cafd4f9              # double 0.79329129436396706
	.quad	0x3fd1aafffc93fc1c              # double 0.27606200853182528
	.quad	0x3fe78e7d3d89fa8c              # double 0.73614370364505666
	.quad	0x3fce759122085074              # double 0.2379628578352172
	.quad	0x3feec8fd7e85a37c              # double 0.96203493796666306
	.quad	0x3fd94e9b9896bdea              # double 0.39542283917668775
	.quad	0x3fe0d625474a0de1              # double 0.52614082263647444
	.quad	0x3fc158cfbe2c403c              # double 0.13552281175407355
	.quad	0x3fdb935a1463d952              # double 0.43086864463056884
	.quad	0x3fe6c95d22d6f1ea              # double 0.71208054356207851
	.quad	0x3fe01002c21b2a92              # double 0.50195444022513613
	.quad	0x3fe931ea285dcfd6              # double 0.78734310039589661
	.quad	0x3fe048aa21f84011              # double 0.50887018809044282
	.quad	0x3fba22251d9c4f60              # double 0.10208351109423353
	.quad	0x3fbeabbb9d925998              # double 0.11980793568577608
	.quad	0x3fb2bcea1b2a8778              # double 0.073195106155734879
	.quad	0x3fd3cfd7fa90bdfa              # double 0.30956077069546917
	.quad	0x3fe6903d33b5f3b2              # double 0.70510730838542757
	.quad	0x3feb0dd1256bd2cb              # double 0.84543664273095354
	.quad	0x3fe6735033a9c094              # double 0.7015763291401691
	.quad	0x3fe603579cc53151              # double 0.68790798777767226
	.quad	0x3fed5e9e92a9b413              # double 0.91780022282694274
	.quad	0x3fde8c801001557a              # double 0.47732545435913887
	.quad	0x3fed313a56bed3df              # double 0.9122592634436123
	.quad	0x3fe9a2b4c7a65923              # double 0.80111159319020364
	.quad	0x3fcd7163a3403068              # double 0.23002286406733963
	.quad	0x3fd64a5cd0a638d2              # double 0.34828873039158481
	.quad	0x3fd32da35e965800              # double 0.29966053235091294
	.quad	0x3fe011bc609afc0f              # double 0.50216502063983792
	.quad	0x3fe472a9e080b8c3              # double 0.63899701927382357
	.quad	0x3feb6c2300594348              # double 0.85695028370000959
	.quad	0x3fe7359e50ad06d5              # double 0.72529521710404288
	.quad	0x3fed12e9db909576              # double 0.90855877765413484
	.quad	0x3fd035a7e115f554              # double 0.25327488881142313
	.quad	0x3fe285f56486bbca              # double 0.5788523639110903
	.quad	0x3fde26e4bf524416              # double 0.47112387355542873
	.quad	0x3fd6367959848c74              # double 0.34707483045548959
	.quad	0x3fd200958556109a              # double 0.28128564854729066
	.quad	0x3fc5b44e5416b680              # double 0.1695650015439476
	.quad	0x3fedf34b8529c876              # double 0.93594909676018179
	.quad	0x3fede7ab5b335619              # double 0.9345299512157822
	.quad	0x3feef8e94fdb12b7              # double 0.96788468930079474
	.quad	0x3fd748014586501c              # double 0.36376983441846433
	.quad	0x3fe6a2f148686713              # double 0.70739044325020684
	.quad	0x3fcce35df59ff1d0              # double 0.22568869107625611
	.quad	0x3fd2f833b53fa1d4              # double 0.29639904689841257
	.quad	0x3fde8c937780173a              # double 0.47733008069950567
	.quad	0x3fe216a7eb31b088              # double 0.56526561676356923
	.quad	0x3fe68c8e09205c74              # double 0.70465757162572951
	.quad	0x3fd6fa0b5ec73374              # double 0.35901149993588111
	.quad	0x3fd704b5e40d2814              # double 0.35966250677722766
	.quad	0x3fede4eb793547e3              # double 0.93419431374990969
	.quad	0x3fe9499820321a18              # double 0.79023367202973116
	.quad	0x3fdd8599480367da              # double 0.46127922089146767
	.quad	0x3feab0450731d841              # double 0.83401729016510029
	.quad	0x3fe64ab83c18e8be              # double 0.69662105310205624
	.quad	0x3fe547a952513bf9              # double 0.66499773099519566
	.quad	0x3f875c7f8d04cac0              # double 0.01140689515213944
	.quad	0x3fe1dae98953a547              # double 0.55797268697384872
	.quad	0x3fe7fa34d56f866b              # double 0.74929277121209503
	.quad	0x3fb6f3988d3f37a0              # double 0.0896544785348099
	.quad	0x3fe280e8c83eb37f              # double 0.57823599920594393
	.quad	0x3fd534a3d24f40f8              # double 0.33133788621945781
	.quad	0x3fe40cae4cc41af7              # double 0.62654795640341276
	.quad	0x3fe210d897fcc143              # double 0.56455640492462356
	.quad	0x3fecf1fadf632b61              # double 0.90453857069347177
	.quad	0x3fd036d089875f46              # double 0.2533456175856269
	.quad	0x3fd4bcd06220d652              # double 0.32402429182852643
	.quad	0x3fe6dc9106afbdf2              # double 0.7144246225925015
	.quad	0x3fee46c8e53747ec              # double 0.94614071625460161
	.quad	0x3fd974bba4b146fa              # double 0.39774981578112512
	.quad	0x3fc08628173e8748              # double 0.12909413466428021
	.quad	0x3feeea3940295091              # double 0.96609175235291122
	.quad	0x3fbf5c22f4440fa0              # double 0.12249964202425057
	.quad	0x3fe0489067c0ec54              # double 0.50885792030693233
	.quad	0x3fcae9e79817c938              # double 0.2102632038727934
	.quad	0x3fb526965d5cbf78              # double 0.082620046418694915
	.quad	0x3fed295413cbf686              # double 0.91129497400807291
	.quad	0x3fdf9f418be06fc4              # double 0.49409521732172501
	.quad	0x3fc810344d0c4864              # double 0.187994516011318
	.quad	0x3fef3952cc3df2cf              # double 0.97574748888981754
	.quad	0x3fe8f866c3a35a23              # double 0.78032243929448375
	.quad	0x3fdcfc0dd35a2a1c              # double 0.45288415565360807
	.quad	0x3fedba3cac27ef2c              # double 0.92898400902001787
	.quad	0x3fb3f32e6b6bb0a8              # double 0.077929402566669581
	.quad	0x3fd954aeaa983280              # double 0.39579359683629178
	.quad	0x3fd06ce0fea56ba2              # double 0.25664543979444876
	.quad	0x3fe0435e41ef521a              # double 0.50822365644359313
	.quad	0x3fbd2099b7230018              # double 0.11377869340049107
	.quad	0x3fc2d98eca44fe38              # double 0.14726433636131886
	.quad	0x3fe85ea37b8b441b              # double 0.76155256395043425
	.quad	0x3fe29deb2b067c5d              # double 0.58177717593560951
	.quad	0x3fd6579f68eaec68              # double 0.34909806486002148
	.quad	0x3fd27354624a5ec4              # double 0.28828916166956398
	.quad	0x3fd83ef552a2a290              # double 0.37884266919949372
	.quad	0x3fe429c8d299c175              # double 0.63010064251834186
	.quad	0x3fe375ee375691a6              # double 0.60814581688150748
	.quad	0x3fa67cd09e2184a0              # double 0.043921012213794741
	.quad	0x3fc59f3e087a021c              # double 0.16892218984504914
	.quad	0x3fdf0ac2958dea5a              # double 0.48503174405019467
	.quad	0x3fe643ae9b588359              # double 0.69576196995704287
	.quad	0x3fd95d9c190ccf2a              # double 0.39633848615925393
	.quad	0x3fc2d22725841ab4              # double 0.14703835803830645
	.quad	0x3fdf2ecacd8b2c40              # double 0.4872309691679142
	.quad	0x3fe9edf6da9ce9be              # double 0.81029837320175324
	.quad	0x3fef82fe006f98d6              # double 0.98474025807515875
	.quad	0x3feb5f7708086d8f              # double 0.85540343827180887
	.quad	0x3fc98138a5e76c60              # double 0.19925602055340885
	.quad	0x3fab4151167f5df0              # double 0.053232702251701514
	.quad	0x3fe5114f37d4462f              # double 0.65836296943797901
	.quad	0x3f8f9557737ee180              # double 0.015421565258166181
	.quad	0x3fc2d7f171a47d9c              # double 0.14721506165458897
	.quad	0x3fdfd6c0ae155752              # double 0.49748246193245393
	.quad	0x3fbd9d7f5fc023b8              # double 0.11568447196636
	.quad	0x3fe9be4e8dd1fd51              # double 0.80448081683418071
	.quad	0x3fd7c904cdba0408              # double 0.37164421167841555
	.quad	0x3fb6253c14842250              # double 0.086505656250787099
	.quad	0x3fe7f7294b9f2ba1              # double 0.74892105836748979
	.quad	0x3fd36da6ff0efa66              # double 0.30356764705712747
	.quad	0x3fe5c02305240b98              # double 0.67970419887602684
	.quad	0x3fc95b1e30ef96dc              # double 0.1980931986756137
	.quad	0x3fe381e56a474cf4              # double 0.60960646398089446
	.quad	0x3fe2acc495ee4776              # double 0.583589833100844
	.quad	0x3fed5730ec91293f              # double 0.91689344601153511
	.quad	0x3f46a4c1da576800              # double 6.9102731202552725E-4
	.quad	0x3fcea86fc138fd6c              # double 0.23951527533243266
	.quad	0x3fee2916cfa50588              # double 0.94251575999821657
	.quad	0x3feef932ceb7fd28              # double 0.96791973471400627
	.quad	0x3fd70a7add3efaf6              # double 0.36001464468056044
	.quad	0x3fec5d1cc9f74b8e              # double 0.88636626669391361
	.quad	0x3fe5578db9e967a9              # double 0.66693769751440357
	.quad	0x3fc94062b2da8dd4              # double 0.19727739079563256
	.quad	0x3fdcf16af192f33c              # double 0.45223497000897672
	.quad	0x3fe3fbf45d318cd7              # double 0.62450617029062527
	.quad	0x3fe4da43036f8571              # double 0.65164328261395899
	.quad	0x3fc748637c6ea1a8              # double 0.18189662528790262
	.quad	0x3fb1db3042521388              # double 0.069750801269107154
	.quad	0x3fe3335a1e1b5148              # double 0.60001855735985377
	.quad	0x3fd9f57f4b9a189e              # double 0.40560896285058756
	.quad	0x3fea25c4d5ae8af4              # double 0.8171104596588905
	.quad	0x3fedcc5e44a246ab              # double 0.93119729428345488
	.quad	0x3fde760e9568561a              # double 0.47595562544424441
	.quad	0x3fdcc5bd66db7ccc              # double 0.44956908268609364
	.quad	0x3fd834ecc94735ec              # double 0.37823028236456824
	.quad	0x3fca8d29d6763978              # double 0.20743296596306116
	.quad	0x3fdb9870d07a70d2              # double 0.43117924079139158
	.quad	0x3fe2824f7bb60273              # double 0.5784070411901453
	.quad	0x3fe83569f10f8717              # double 0.75652024347457114
	.quad	0x3faf77061f39b480              # double 0.061454955398269284
	.quad	0x3fed68eb958d7c13              # double 0.91905764779574139
	.quad	0x3fe7abaaa1b51aee              # double 0.73970538695797727
	.quad	0x3fece1b70fd5ba84              # double 0.90255311100720847
	.quad	0x3fe03261cc6bd2f4              # double 0.50615014959347926
	.quad	0x3fee7d98116044ce              # double 0.95283130067596189
	.quad	0x3fdfba3c92d1bc58              # double 0.49574198091335608
	.quad	0x3fe9477e7fd31125              # double 0.78997731176108188
	.quad	0x3fe6f670d22235c7              # double 0.71758309404111109
	.quad	0x3fe5a5d08d568d13              # double 0.67649104695411422
	.quad	0x3fe114d5ed2b30f6              # double 0.53379341432585536
	.quad	0x3fca2ab2bf04f12c              # double 0.2044280464850855
	.quad	0x3fdd7ab61b30db7e              # double 0.46061470656734815
	.quad	0x3fc15cd7b67a44f8              # double 0.13564583215751447
	.quad	0x3fe28a611a00398d              # double 0.57939200475975527
	.quad	0x3fd3db6504c87b66              # double 0.31026578394987891
	.quad	0x3fea27e79a55b28b              # double 0.8173711790419288
	.quad	0x3feb18ff922ef2e1              # double 0.84680155326313067
	.quad	0x3fee15316ccdd57f              # double 0.9400870442465673
	.quad	0x3fb3f708ffb45318              # double 0.077988207271414089
	.quad	0x3fb7d7b0684c9cc0              # double 0.093134904349983394
	.quad	0x3fe77851d15c0bb2              # double 0.73343745127237114
	.quad	0x3fe5eeb4a9508893              # double 0.68538888043646506
	.quad	0x3fd0ce687efa8a80              # double 0.26259815597783387
	.quad	0x3fe3087ad893ca97              # double 0.59478514003997673
	.quad	0x3fd1a4f25887e248              # double 0.27569254537187193
	.quad	0x3fe30ee266fe92af              # double 0.59556694141482136
	.quad	0x3fbda11278092300              # double 0.11573901587065549
	.quad	0x3fedcb499fd578f3              # double 0.93106538026384411
	.quad	0x3fe89f9fba135433              # double 0.76948534338828833
	.quad	0x3fbc32ad9b7da190              # double 0.11014828725968173
	.quad	0x3fb6a0f45f72b1a0              # double 0.088393472006549789
	.quad	0x3fef83b40ee68057              # double 0.98482706938012654
	.quad	0x3fc06363beddaa28              # double 0.12803313083289081
	.quad	0x3fdf3918d662a5ea              # double 0.48785992561405911
	.quad	0x3fc7819ec2c3a7d8              # double 0.1836431933400593
	.quad	0x3fcdd03d3cb0a5a0              # double 0.23291745627765881
	.quad	0x3fcc9e036c98a7f0              # double 0.22357218554071734
	.quad	0x3fe3b962a2bc9380              # double 0.61638004097459032
	.quad	0x3fcb73ff7c38624c              # double 0.21447747769777192
	.quad	0x3fd721be0140f392              # double 0.36143446085389386
	.quad	0x3fdeb17dd206dda4              # double 0.47958322058135594
	.quad	0x3fe07befe963ef6e              # double 0.51512904724175512
	.quad	0x3febda90b952cfa6              # double 0.87043033786766411
	.quad	0x3febb171f05bfa11              # double 0.86541077561543223
	.quad	0x3fdf4470d5a7873e              # double 0.48855229248703214
	.quad	0x3fe852d9959f8be2              # double 0.76011351798331028
	.quad	0x3fc42885ec8edc7c              # double 0.15748666811643719
	.quad	0x3fda3782dbca409a              # double 0.40963813270446681
	.quad	0x3fe64dffcc2f95ea              # double 0.69702138786368306
	.quad	0x3fc4d2a42dfd6ea8              # double 0.16267826314548484
	.quad	0x3feb74d8344a30c3              # double 0.85801325047352639
	.quad	0x3fe1b617044c540e              # double 0.55347777213558103
	.quad	0x3feb17d73d8b84be              # double 0.84666025181299864
	.quad	0x3fc6c01956d10b14              # double 0.17773739565935698
	.quad	0x3fafe5784da0af10              # double 0.062297591663393104
	.quad	0x3fdf94c69d6fc8bc              # double 0.49345555662797458
	.quad	0x3fe45800268c2336              # double 0.63574225930015049
	.quad	0x3fe6aa3e81fa28aa              # double 0.70828175913017799
	.quad	0x3fe76a68163b8142              # double 0.73173908560060164
	.quad	0x3fd905d4a87667bc              # double 0.39098087741296772
	.quad	0x3fed3d5284c0fbbf              # double 0.91373563698277127
	.quad	0x3fc511f0a2d171d0              # double 0.1646099848757232
	.quad	0x3fc3551995b56fa8              # double 0.15103454408642603
	.quad	0x3fe351a4c3e423cb              # double 0.60371626148218505
	.quad	0x3f72014822f27e80              # double 0.0043957536537672093
	.quad	0x3fe97a09f5329f34              # double 0.79614732637580809
	.quad	0x3fe3c4daab500b9f              # double 0.6177800508452157
	.quad	0x3fe464b12e66a6c1              # double 0.63729151785556593
	.quad	0x3fc08713153d9de0              # double 0.12912214791434362
	.quad	0x3fb7b09eff87d470              # double 0.092538773904225157
	.quad	0x3fe1e024e431c2f5              # double 0.55861134118285227
	.quad	0x3fe320247a3fb630              # double 0.59767364384396693
	.quad	0x3fe2bd2e88a76f93              # double 0.58559347810977369
	.quad	0x3fd624ad6fa75136              # double 0.34598861602468689
	.quad	0x3fd9b98b88d5aad0              # double 0.40194977152593214
	.quad	0x3fdff0acb5d1f94a              # double 0.49906461482887166
	.quad	0x3fb2fc80931fe060              # double 0.074165378493377343
	.quad	0x3fe8d24ef3ba1e9f              # double 0.77567241290030953
	.quad	0x3fdfb36e05a5e2e4              # double 0.49532652427255486
	.quad	0x3fe08f25e5a2fe76              # double 0.51747412539403004
	.quad	0x3fb760dd404bb850              # double 0.091321781346523467
	.quad	0x3fc0f8a00c2b2de0              # double 0.13258743852780608
	.quad	0x3fc128c373fd74f8              # double 0.13405650294854587
	.quad	0x3fe23ddb388ea0bf              # double 0.5700508217460295
	.quad	0x3fef999be5813a24              # double 0.98750109505801164
	.quad	0x3fdce6c57ec8aef4              # double 0.4515851724743094
	.quad	0x3fe1f853749d9a79              # double 0.56156323219768389
	.quad	0x3feb7c62974002bb              # double 0.85893373051666033
	.quad	0x3fe1d5632f60bd5c              # double 0.55729827168935797
	.quad	0x3fe7ab3ddb0445f9              # double 0.73965351845453065
	.quad	0x3fec8796a9678ba7              # double 0.89155133330165348
	.quad	0x3fc7129e06ff59fc              # double 0.18025565473244842
	.quad	0x3fe0b256d90beca0              # double 0.52176992790136367
	.quad	0x3fd331b865bc41be              # double 0.29990968642325899
	.quad	0x3fb4f0893b5540c8              # double 0.081795289025879403
	.quad	0x3fe48386908017d5              # double 0.64105537626960063
	.quad	0x3fc62c9697f63c9c              # double 0.17323572559368905
	.quad	0x3fd2e2a731e10304              # double 0.2950838076686042
	.quad	0x3feff97ba2076527              # double 0.99920446058527978
	.quad	0x3fececb11a31c580              # double 0.90389304271791104
	.quad	0x3fb6c57893aa60e8              # double 0.088950668383748543
	.quad	0x3fe9735b504809fe              # double 0.79533162765466137
	.quad	0x3fdc95010bc4a258              # double 0.44659448765972831
	.quad	0x3fbd5143536a5878              # double 0.11452122484692662
	.quad	0x3fd0b3df8e46d426              # double 0.26097859281736857
	.quad	0x3fed1a070cc30baf              # double 0.90942718975599302
	.quad	0x3fd7559d9b84d29e              # double 0.36460056483637426
	.quad	0x3fbcdb9b2744f198              # double 0.11272592266772674
	.quad	0x3fdcdc12aa08e64a              # double 0.45093218426663795
	.quad	0x3fdb99f82b39e092              # double 0.43127254697129402
	.quad	0x3fccf499b87976b0              # double 0.22621461398641918
	.quad	0x3fc5e5adef67ca80              # double 0.17107176007955971
	.quad	0x3fecaf0c34d45d90              # double 0.89636812513610842
	.quad	0x3fefcee4a8fc878c              # double 0.99400551800884917
	.quad	0x3fa65ef63e5a9800              # double 0.043693251716192094
	.quad	0x3fc2ab620d44ac24              # double 0.14585519454826212
	.quad	0x3fe9cc32707553fd              # double 0.806176395077841
	.quad	0x3fb077104db81330              # double 0.06431676766812866
	.quad	0x3fe3effd83bc599b              # double 0.62304568986546671
	.quad	0x3fd63eb74f0d7a88              # double 0.34757788391099398
	.quad	0x3fdd28d11a88fc56              # double 0.45561626044577019
	.quad	0x3fdba5ada6889d98              # double 0.43198720229198662
	.quad	0x3fea8224f1853628              # double 0.82838675662941785
	.quad	0x3fd473787539a024              # double 0.31954776237262394
	.quad	0x3fef48414c2caba9              # double 0.97757019880133555
	.quad	0x3f8c14fba24ac7c0              # double 0.013711896791708145
	.quad	0x3fe7a899af121702              # double 0.73933109467972735
	.quad	0x3fec55d87ea22454              # double 0.88547920926169831
	.quad	0x3fe651a9327fe3e4              # double 0.69746837485501745
	.quad	0x3feac5919e97ac67              # double 0.8366172883519426
	.quad	0x3feea992ce0fa79a              # double 0.95819988485640128
	.quad	0x3fd83290f31498ce              # double 0.37808631647420732
	.quad	0x3fe155897b4fa11e              # double 0.54169153293790706
	.quad	0x3fe1e6ba74b624d2              # double 0.55941508097853387
	.quad	0x3fe58c435edce294              # double 0.67337196853539405
	.quad	0x3fec1b2bd26b3f8b              # double 0.87831679437111754
	.quad	0x3fe05f8e991fa65c              # double 0.51166467577895558
	.quad	0x3fec0e8f7018e769              # double 0.87677738088607982
	.quad	0x3fe691c62e3b634a              # double 0.70529469518360455
	.quad	0x3fef8dbd5b2a4725              # double 0.98605220609372123
	.quad	0x3fc1881454685394              # double 0.13696531411610791
	.quad	0x3fde1d7cf624d6da              # double 0.47054981267443241
	.quad	0x3fa8b95745dac600              # double 0.048289038922472827
	.quad	0x3fe7e8e7038c90af              # double 0.74718046849422659
	.quad	0x3fe0f5cd4be39183              # double 0.5300051195340959
	.quad	0x3fed158a187c5e10              # double 0.90887932569870777
	.quad	0x3fe7f3f0ccbd93ea              # double 0.74852790821443915
	.quad	0x3fdd3ce83a338846              # double 0.45684247668953437
	.quad	0x3fdb81481321dcee              # double 0.42976571911226713
	.quad	0x3fe1e58c858d11ca              # double 0.5592711075228689
	.quad	0x3fee8b0b63fa0b13              # double 0.95447320486741416
	.quad	0x3fa73a1f6be1ec90              # double 0.045365316313984327
	.quad	0x3fd93df092282b28              # double 0.39440550110946271
	.quad	0x3feca9db27a35a48              # double 0.89573438398185434
	.quad	0x3fe97d0a2c74c785              # double 0.79651364024015037
	.quad	0x3fe21fc922ffcfbe              # double 0.56638008914750748
	.quad	0x3fc3a9a7c7ba5ef0              # double 0.15361497166008276
	.quad	0x3fee317278e97e58              # double 0.94353602996484209
	.quad	0x3fe52bbec0289e7a              # double 0.66158998042096973
	.quad	0x3fdad0af7af7b090              # double 0.41898715027378675
	.quad	0x3fef747bd12a400c              # double 0.98296919682070571
	.quad	0x3fdb1415ca5c1ed8              # double 0.42310089837745357
	.quad	0x3fe5fda21ff01ef6              # double 0.68721109617123832
	.quad	0x3fcfcfc8f56dbd58              # double 0.24852859481641576
	.quad	0x3fec2977eedf1e65              # double 0.8800620713672741
	.quad	0x3fcb3173f72005c4              # double 0.21244668547300993
	.quad	0x3fc3bf1a4a289320              # double 0.15426949139614354
	.quad	0x3fec284ca203cba5              # double 0.87991935390015341
	.quad	0x3fd698c8f4418e10              # double 0.35307525494701597
	.quad	0x3fdc35128e4ec406              # double 0.44073928735002743
	.quad	0x3fc31054ef6562c0              # double 0.14893590630778952
	.quad	0x3fe866ba2fc3cc54              # double 0.76253995255536688
	.quad	0x3fe0d9ba17527674              # double 0.52657799296475938
	.quad	0x3fef423d0cdae579              # double 0.97683575163607294
	.quad	0x3fe7c4402150809c              # double 0.74270636088114683
	.quad	0x3fededab1aa672d1              # double 0.93526225285639886
	.quad	0x3fdb2abe84d31e8a              # double 0.42448389979515666
	.quad	0x3fd49781ae09ebd2              # double 0.3217472266766751
	.quad	0x3fe3b62b4d182c58              # double 0.61598744447236253
	.quad	0x3fe22e6a46f2c709              # double 0.56816591126536864
	.quad	0x3feb173f46dbd27c              # double 0.84658778991304428
	.quad	0x3fe365a4c48bfbf4              # double 0.60615766895341361
	.quad	0x3fe0b054b0a7d8c3              # double 0.52152475836808099
	.quad	0x3fd8f2e87e261d56              # double 0.38982593840815605
	.quad	0x3fe1e0a360fba8d7              # double 0.55867165510178551
	.quad	0x3fe5c0d4e27a950b              # double 0.67978901132724567
	.quad	0x3fd4ea530683e00c              # double 0.32680202137226
	.quad	0x3fe1db81981d0439              # double 0.55804519376409367
	.quad	0x3fe6485229a82d02              # double 0.69632824073906385
	.quad	0x3feeca03391a7c6b              # double 0.96215973999995918
	.quad	0x3fe8bc2bf7c2835c              # double 0.77297018423642382
	.quad	0x3fa593b553dcd6d0              # double 0.042142549979343635
	.quad	0x3fe62a8f83a28ece              # double 0.69269538602790148
	.quad	0x3fc728b9bfd3e418              # double 0.18093034617030024
	.quad	0x3fe8ae123fbb1491              # double 0.77124893615168066
	.quad	0x3fe0aaf00975c998              # double 0.52086641166379177
	.quad	0x3fbfe2ee3c31bbc0              # double 0.12455643624865242
	.quad	0x3fdc7f1fc326a7d6              # double 0.44525903756823249
	.quad	0x3fcde5957fd9aba0              # double 0.23356884710969172
	.quad	0x3fea2a22310a61ed              # double 0.81764325693353401
	.quad	0x3fe56c408f4c8d85              # double 0.66946437824337635
	.quad	0x3fe66543e463696d              # double 0.69986147505850982
	.quad	0x3fc90f6904a11d70              # double 0.19578278280298944
	.quad	0x3fb707e59bbf9238              # double 0.089964247250073792
	.quad	0x3fd04ddaa9ab9eba              # double 0.25475184029935927
	.quad	0x3fd82d0de069f792              # double 0.37774989047454099
	.quad	0x3fd4e1b539f5ae3e              # double 0.32627611789823507
	.quad	0x3fecff1e6836e065              # double 0.906142428916621
	.quad	0x3fa98d7c5754a1b0              # double 0.049907575283501315
	.quad	0x3fe4ddd935cb7cef              # double 0.65208111292659321
	.quad	0x3fe2514dfb0090d2              # double 0.57242487930173014
	.quad	0x3f77f74bfcb90280              # double 0.0058510750055239535
	.quad	0x3fe0d272a6c9cc22              # double 0.52568943572839921
	.quad	0x3fd89008c3de56be              # double 0.38379115226539884
	.quad	0x3fce3531c94b1d18              # double 0.23599836663036267
	.quad	0x3fdc695a5fd3963a              # double 0.44393023832376211
	.quad	0x3fe37a2af986034a              # double 0.60866307005935849
	.quad	0x3fee27c8a00964d2              # double 0.94235640771071361
	.quad	0x3fe023940d836ab9              # double 0.50434305800748469
	.quad	0x3fda660d68c23028              # double 0.41247878294302831
	.quad	0x3fe3ea6fab4722dd              # double 0.62236770107946493
	.quad	0x3feedfba31bdd4b2              # double 0.96481046404973925
	.quad	0x3fef51e506bcea89              # double 0.97874690357214533
	.quad	0x3fe36ecf54f6d499              # double 0.60727659792486854
	.quad	0x3fed14b84679109c              # double 0.90877927555313275
	.quad	0x3fb04c3b8743bcd8              # double 0.063663216136535694
	.quad	0x3fb35574b8c4f548              # double 0.075522704229077253
	.quad	0x3fe8cf0e63eb2082              # double 0.77527541652035858
	.quad	0x3fe566fc76e9f678              # double 0.66882155633329798
	.quad	0x3fd99c34481cc310              # double 0.40015894930097407
	.quad	0x3fef2e24706a5f40              # double 0.9743826099029107
	.quad	0x3fe9063af3d9314e              # double 0.78201053263323117
	.quad	0x3fe17813fe905053              # double 0.54590797156789461
	.quad	0x3fe5f6805efcb98f              # double 0.68634050895870924
	.quad	0x3fdabc284af7e60e              # double 0.41773421593788462
	.quad	0x3fed916de26996f9              # double 0.92400259228881432
	.quad	0x3fc77781b003039c              # double 0.18333455175709623
	.quad	0x3fe12780da4a10d0              # double 0.53607218393929124
	.quad	0x3fe5d13cf941f9de              # double 0.68179176982067324
	.quad	0x3fe7032b17018a38              # double 0.71913675778734554
	.quad	0x3fe6cb755615d7ac              # double 0.71233622373141747
	.quad	0x3fd0c45a13376a70              # double 0.26198436619384946
	.quad	0x3feb4d0f30c58f84              # double 0.85315665746428281
	.quad	0x3fef0c8ff8f5557c              # double 0.97028349518465928
	.quad	0x3fdd97ad8d908156              # double 0.46238268685012451
	.quad	0x3fe8d5a70ce8fa21              # double 0.77608063241479297
	.quad	0x3fced5e250d23638              # double 0.24090222307533948
	.quad	0x3fc1bf4bac2dcdd8              # double 0.13865037829564986
	.quad	0x3fd510e9d24a704e              # double 0.32915730987747771
	.quad	0x3fdd10b41ff51f92              # double 0.45414450760699154
	.quad	0x3fbbee29898e1a78              # double 0.10910281761435126
	.quad	0x3fe8f1faad1dd1ba              # double 0.77953847705662516
	.quad	0x3faa4a3fea060dd0              # double 0.051347729985561252
	.quad	0x3fea0eb79a5cd948              # double 0.81429653309786776
	.quad	0x3fe6a0a5776bb90b              # double 0.70711015056966298
	.quad	0x3fedfa1e00a9723d              # double 0.93678188447262978
	.quad	0x3fdb947d9ac23a56              # double 0.43093814957766108
	.quad	0x3fe29831091ed9e1              # double 0.58107806950902952
	.quad	0x3fe71e8f5288b131              # double 0.7224804508200916
	.quad	0x3f8b430231abb180              # double 0.013311402455166599
	.quad	0x3f7dddfe4d333580              # double 0.0072917874960699569
	.quad	0x3fe7edf840154842              # double 0.74779903904187273
	.quad	0x3fccbb400b2e3068              # double 0.22446442171019787
	.quad	0x3fdb51546e9fb6da              # double 0.42683897784341485
	.quad	0x3fb06065a54acda8              # double 0.063970902304211763
	.quad	0x3fe6b8877fbe862e              # double 0.71002554845853694
	.quad	0x3fad95204cd35290              # double 0.057778367403135467
	.quad	0x3fbf5164f778e7d0              # double 0.12233572999767195
	.quad	0x3fec82f668232d02              # double 0.8909866365369512
	.quad	0x3fe12c41f348d0a2              # double 0.53665254131785312
	.quad	0x3fec437992e72d70              # double 0.88323668186187199
	.quad	0x3fe5118de8918931              # double 0.65839286254439433
	.quad	0x3fdaea943a44f8a0              # double 0.42056756677983209
	.quad	0x3fe81662721edd57              # double 0.7527324894826205
	.quad	0x3fb2865f9dc774b0              # double 0.072362876911443719
	.quad	0x3febb26acb0fadbc              # double 0.86552943859481201
	.quad	0x3fd182c784096860              # double 0.27360713857854613
	.quad	0x3f9cece3753ba9c0              # double 0.028247407942140645
	.quad	0x3fc4127c878cdfd8              # double 0.15681416147867711
	.quad	0x3fe45dad01b850a1              # double 0.6364350350945821
	.quad	0x3fd6d8fc688a39ce              # double 0.35699377259234388
	.quad	0x3fe2af71583b3049              # double 0.58391635162980393
	.quad	0x3f9e0debc1764780              # double 0.029349979098305834
	.quad	0x3fc838f2065b90b4              # double 0.18923783598359523
	.quad	0x3fcd5d9bda17bb48              # double 0.22941921376283347
	.quad	0x3fe9900b54033969              # double 0.79883352669439234
	.quad	0x3fd924d4db0577d8              # double 0.39287301434330635
	.quad	0x3fe322d315f71db0              # double 0.59800104417893429
	.quad	0x3faea7b98e193540              # double 0.059873388858799448
	.quad	0x3fdbfa7113e22b54              # double 0.43716074887986633
	.quad	0x3fe522a28ba593a8              # double 0.6604778983570343
	.quad	0x3f9341a3a7aa7460              # double 0.018805081470976481
	.quad	0x3fedaeaafff4d4ca              # double 0.92757177344778907
	.quad	0x3fd5b50ec093a942              # double 0.33917588049247993
	.quad	0x3fdc96336ae79508              # double 0.44666753234771805
	.quad	0x3fda305a8a28fe3e              # double 0.40920127384376659
	.quad	0x3fa6f72e2716fbd0              # double 0.044854585906697886
	.quad	0x3fa917bb98ca8cd0              # double 0.049009191895743265
	.quad	0x3fe33a57830ff7e8              # double 0.6008718070804635
	.quad	0x3fee6f1a1d53e0cb              # double 0.95106225708061609
	.quad	0x3fede66a574ae0b6              # double 0.93437687920870505
	.quad	0x3feeb401bafbe9d9              # double 0.95947348137206767
	.quad	0x3fb7d9ad7906b9c8              # double 0.09316524700873352
	.quad	0x3fe8ba5fe06e4e99              # double 0.77275079569013194
	.quad	0x3fef19519a1e87f2              # double 0.97184066869180996
	.quad	0x3fc754988bf9aef0              # double 0.18226916155560202
	.quad	0x3fe5f04d25edf9c5              # double 0.68558366211055299
	.quad	0x3fc657ad7129cac8              # double 0.17455070519971216
	.quad	0x3fe9d80d1df0dd43              # double 0.80762344215228443
	.quad	0x3fb2b76b5b138320              # double 0.073111257300763288
	.quad	0x3fd677a0f54724a6              # double 0.35105155899925433
	.quad	0x3fde0774dbb33a3e              # double 0.4692051072605955
	.quad	0x3fe4ce9b6cddb9d0              # double 0.65022059691346534
	.quad	0x3fdd2b86e2b3523c              # double 0.4557816709396183
	.quad	0x3fe17e9a3c0fc9d5              # double 0.54670440417094801
	.quad	0x3fe0cc123fc955c4              # double 0.52491104563039714
	.quad	0x3fe34f2621648760              # double 0.60341173669824499
	.quad	0x3fdeaff99adef680              # double 0.47949066280475705
	.quad	0x3fe61ae01f90712b              # double 0.69078069844139145
	.quad	0x3fe4c8a483be9b04              # double 0.64949250918729762
	.quad	0x3fe65200182863ff              # double 0.69750981062236395
	.quad	0x3fd4e516788fb0aa              # double 0.3264824082714407
	.quad	0x3fec53447604f4da              # double 0.88516448069244835
	.quad	0x3fd4c0e44f9cd784              # double 0.32427318358110591
	.quad	0x3fb325c2f24eecf8              # double 0.074794944913197159
	.quad	0x3fdfc1490185d7f2              # double 0.49617219113076694
	.quad	0x3fe7ab706261b6e7              # double 0.73967761244940966
	.quad	0x3fea841b6fe8653c              # double 0.82862636429778246
	.quad	0x3fe75fc9ca4d5cb9              # double 0.73044290077350305
	.quad	0x3fde03b4a9f35040              # double 0.46897617909167266
	.quad	0x3fbb5723a57867a8              # double 0.10679838933756847
	.quad	0x3fe8f514e13933eb              # double 0.77991718281702782
	.quad	0x3fdefd6815c96e1c              # double 0.48421671035404912
	.quad	0x3fe726b2aca1b4c0              # double 0.72347387044069222
	.quad	0x3fd31355b340a1f6              # double 0.29805510048984674
	.quad	0x3fd012277b7e3900              # double 0.25110804614895699
	.quad	0x3fe04b7956a64601              # double 0.50921313213092401
	.quad	0x3fb9c59558ce00c0              # double 0.10067113321383925
	.quad	0x3feb758adcf1aa09              # double 0.85809844163060334
	.quad	0x3fec20d69bb5e4d6              # double 0.87900858318530584
	.quad	0x3feca4ccb5b5e772              # double 0.89511714449257185
	.quad	0x3fd05e21ffd5c116              # double 0.25574541076550028
	.quad	0x3fee3ec0982b3e33              # double 0.94516019554607167
	.quad	0x3fec0f64c0f58f52              # double 0.87687909781787199
	.quad	0x3f7fdc7413ae6b80              # double 0.0077786001446850105
	.quad	0x3fe120a35e7f2043              # double 0.53523415047039469
	.quad	0x3fe02e7bc60f4b1f              # double 0.50567425426047297
	.quad	0x3fd923ab1aeeb3c4              # double 0.39280202512855689
	.quad	0x3fcf1ebd930bef9c              # double 0.24312562637339574
	.quad	0x3fbb7f73f5dfeb60              # double 0.1074135279922479
	.quad	0x3fe33fbc32665476              # double 0.60153016895004785
	.quad	0x3fedf15ac17cfe0e              # double 0.9357122210566915
	.quad	0x3fe8698b9330069e              # double 0.76288393733576121
	.quad	0x3fd893bc64480628              # double 0.38401708405590051
	.quad	0x3fd65a7ff5c055b2              # double 0.34927367209578641
	.quad	0x3fe8086bd9313199              # double 0.75102798862785669
	.quad	0x3fdd80617636617c              # double 0.46096073669607285
	.quad	0x3fe2b87009df12da              # double 0.58501436164859943
	.quad	0x3fecec77082d49cf              # double 0.90386535260250322
	.quad	0x3fe122c3c40a5ba8              # double 0.53549373902466346
	.quad	0x3fdd500a20ebf60a              # double 0.45801022734653485
	.quad	0x3fd02271e0416cf6              # double 0.25210234546621224
	.quad	0x3fefb9fa6e818ca4              # double 0.99145242293561297
	.quad	0x3fd7080017ad46a6              # double 0.35986330330079352
	.quad	0x3fd1c509bcf7bafe              # double 0.27765124753834403
	.quad	0x3f9523ddb7ad86e0              # double 0.020644630752378101
	.quad	0x3f9e407681743b40              # double 0.029542781497237103
	.quad	0x3fd02b395650132a              # double 0.25263818196281085
	.quad	0x3f62b56f8b22ff00              # double 0.0022837809165990874
	.quad	0x3fd1168ff7a913f8              # double 0.26700209794608964
	.quad	0x3fd2ad3ba61b6aaa              # double 0.29182330342670559
	.quad	0x3fe91ea19e8da72f              # double 0.78498917548606595
	.quad	0x3febd54f78dbcfa3              # double 0.86978887181475206
	.quad	0x3fc77412ef4b52ac              # double 0.1832297962597712
	.quad	0x3fe1f19b54761e5a              # double 0.56074301239363966
	.quad	0x3f56e8ad3c75e800              # double 0.001398247886611248
	.quad	0x3f9163ce4b3a7820              # double 0.016982291547371742
	.quad	0x3fd732309af778d8              # double 0.36243834622827142
	.quad	0x3fc92077b9d53ac4              # double 0.19630333494065699
	.quad	0x3fe4c38a6c887513              # double 0.64886971662386583
	.quad	0x3fcf9c22a0d34b88              # double 0.24695237019349414
	.quad	0x3fdaf36479e5b0f2              # double 0.42110549835230338
	.quad	0x3fbad80211c9a738              # double 0.10485852178831301
	.quad	0x3fa286c1e2e9c5a0              # double 0.036184367131578243
	.quad	0x3fd2dcda81e06ada              # double 0.29472983058228197
	.quad	0x3fe6df2738cc80f2              # double 0.71474038213275848
	.quad	0x3fe74c8afc1fd0e3              # double 0.72809361689590124
	.quad	0x3fec4032c0c92b37              # double 0.88283670094947453
	.quad	0x3feb3b8b554302b8              # double 0.85101858761489435
	.quad	0x3fcf2b51528b74ec              # double 0.24350945024972448
	.quad	0x3fdcc1916298053e              # double 0.44931444767287931
	.quad	0x3fd419c0c786351c              # double 0.31407184109487374
	.quad	0x3fef3962900a0024              # double 0.97575500614766896
	.quad	0x3fe70037c1b68f4e              # double 0.71877658686251222
	.quad	0x3fdfe99082c6cbd4              # double 0.4986306454767917
	.quad	0x3fa72d694210f750              # double 0.045268334688883471
	.quad	0x3f81bc5b53a4e800              # double 0.0086600432301686681
	.quad	0x3fdd7ecee95dc3fa              # double 0.46086476125407183
	.quad	0x3fd4c729d7976f82              # double 0.32465597204076613
	.quad	0x3fe1227e1b36ec87              # double 0.53546052279797685
	.quad	0x3fe914fab3c6c809              # double 0.78381095039935744
	.quad	0x3fd2c33bd845c2f6              # double 0.29316612358438421
	.quad	0x3fe21906a5127c46              # double 0.56555492630639814
	.quad	0x3fec690a57974bc3              # double 0.88782231433503289
	.quad	0x3fce1e5f23b7237c              # double 0.23530186885752957
	.quad	0x3fb0cbd3cec5e6e0              # double 0.065610158902838389
	.quad	0x3fe788dadf399a1f              # double 0.73545592878946653
	.quad	0x3fee6ab2dbf88145              # double 0.95052473986655939
	.quad	0x3fc1f53e4f13cd30              # double 0.14029673443983759
	.quad	0x3fdd88247cc4ec5c              # double 0.46143448051924962
	.quad	0x3fe4b12237f72ea7              # double 0.64662276201984958
	.quad	0x3fe00af8fe0da2f2              # double 0.50133943195132091
	.quad	0x3fdbd0a557c48b52              # double 0.43460973330563946
	.quad	0x3fec07c8f64de920              # double 0.87595031839672188
	.quad	0x3fecedb7eafd0672              # double 0.90401836296241656
	.quad	0x3fd7afd4057a0186              # double 0.37010670218298747
	.quad	0x3fe530963b55a0eb              # double 0.66218101109282423
	.quad	0x3fa5f8bb8f287960              # double 0.04291330454383302
	.quad	0x3fb3038bd97d2668              # double 0.074272862050884236
	.quad	0x3feda4a5d486d6b3              # double 0.92634860524295559
	.quad	0x3fb65096d1b52640              # double 0.087167192648075265
	.quad	0x3fe596c25c56e1d2              # double 0.67465322527919569
	.quad	0x3fe173a13d656125              # double 0.54536497107895754
	.quad	0x3fd12cc7706ed296              # double 0.26835809688353984
	.quad	0x3f9e85dd6760b320              # double 0.029807528910328007
	.quad	0x3fe20ec9210d20bf              # double 0.5643048902066069
	.quad	0x3fe0a88c53d4e3e1              # double 0.52057472585067555
	.quad	0x3febfc4d6621ff41              # double 0.87454862544834822
	.quad	0x3fe0046404a123c4              # double 0.50053597358884661
	.quad	0x3fd3eb098a96ba3c              # double 0.31122053655682058
	.quad	0x3fec5c48123bf82b              # double 0.88626483498933817
	.quad	0x3fd7318625802ee8              # double 0.36239770567111274
	.quad	0x3febc934731dffcc              # double 0.86831114276719167
	.quad	0x3fb24c9c6ec76938              # double 0.071481492086069021
	.quad	0x3fd640399bcfc984              # double 0.34766998496993318
	.quad	0x3fc0b93dca780e18              # double 0.1306531180017465
	.quad	0x3fdcb86bef20c49c              # double 0.44875620224326851
	.quad	0x3fe0c919fe06aae8              # double 0.52454852690183618
	.quad	0x3fd6983831efe1ea              # double 0.35304074169792321
	.quad	0x3fe1dc05427d25d6              # double 0.55810797678094093
	.quad	0x3feea824a76d27e7              # double 0.9580252904936487
	.quad	0x3fd6778befe39212              # double 0.35104654719023742
	.quad	0x3fe3d9ff5c217938              # double 0.62036102289474737
	.quad	0x3fe3ac013b5a26b0              # double 0.61474668113915776
	.quad	0x3fe42eebd7481d1d              # double 0.63072769210058122
	.quad	0x3fc4f986ac97cec0              # double 0.16386493136780267
	.quad	0x3fced3cd65139348              # double 0.24083869395613022
	.quad	0x3fea84852d11fd08              # double 0.82867678454195559
	.quad	0x3fcd1f16d4316d84              # double 0.22751126633634666
	.quad	0x3fef826d32b9202d              # double 0.98467121035446825
	.quad	0x3fe7ea4c066fecbc              # double 0.74735070473925402
	.quad	0x3fe0c6725f3da579              # double 0.52422445871086076
	.quad	0x3fe9834243a1bc46              # double 0.79727280816394663
	.quad	0x3feb93efb3bd08ee              # double 0.86180863480720205
	.quad	0x3fee151a3936823a              # double 0.94007598089598976
	.quad	0x3fc6172961586750              # double 0.1725818372076966
	.quad	0x3fdb33aaf4ba5990              # double 0.42502855204784229
	.quad	0x3fe63d73e665ae90              # double 0.69500155448391077
	.quad	0x3fe708a2284fcedf              # double 0.71980388520611516
	.quad	0x3f96dbb9c22519c0              # double 0.022322561716714651
	.quad	0x3feaf9be19d2989f              # double 0.84298615497097618
	.quad	0x3fe29493e8da4a6d              # double 0.58063693503420455
	.quad	0x3fe7629bec35a5c0              # double 0.73078724035911335
	.quad	0x3fee0d831c19d1cd              # double 0.93914943207215063
	.quad	0x3feaf88bb362124a              # double 0.8428400519920356
	.quad	0x3faaf26c2956f950              # double 0.052630786939959706
	.quad	0x3fd7b95f23d94bca              # double 0.37068918705807319
	.quad	0x3fec9b7ec31d212c              # double 0.89398134334718326
	.quad	0x3fec31a1a6ff4829              # double 0.88105852715148558
	.quad	0x3fdb5bd780b8f494              # double 0.42748057909541015
	.quad	0x3fe77445658471c8              # double 0.73294324710473635
	.quad	0x3fefa0fedaca32c4              # double 0.98840277416601241
	.quad	0x3fe41f1c2016bb8c              # double 0.62879759089797593
	.quad	0x3fee4ad67963e7ef              # double 0.94663547238383028
	.quad	0x3fe636a47e7bd07d              # double 0.6941702337631025
	.quad	0x3fd969125638e414              # double 0.39703806324138324
	.quad	0x3fdd863bb6271256              # double 0.46131794727651732
	.quad	0x3fdf178e8edd3dda              # double 0.4858127970846603
	.quad	0x3fb8c1db9b06d760              # double 0.09670803580124021
	.quad	0x3fccabecbda7dc48              # double 0.22399672756702871
	.quad	0x3fd6f32733d63f0c              # double 0.35859088957020968
	.quad	0x3fd8eccef4874e5e              # double 0.38945363883724393
	.quad	0x3f6202c63652c600              # double 0.0021985884983102277
	.quad	0x3fdcb4609cfbe5b8              # double 0.44850936251131257
	.quad	0x3fe35be97beba7dd              # double 0.60496973231533568
	.quad	0x3fe22887ef9b1adc              # double 0.56744763181708491
	.quad	0x3fd5eafa45a0d6b0              # double 0.34246689605366054
	.quad	0x3fe358d56700a3c1              # double 0.6045939456718018
	.quad	0x3fd89cc3c80b13bc              # double 0.38456816230273794
	.quad	0x3fed321b78da1c93              # double 0.91236661533266028
	.quad	0x3fd0f641aa97ea34              # double 0.26503030452264231
	.quad	0x3fee92b6eadbc3f2              # double 0.95540948744576171
	.quad	0x3fd38e7a704160a6              # double 0.30557118380012083
	.quad	0x3fdc496fdb09e862              # double 0.44198223486421828
	.quad	0x3fc4f32ace5cf2b4              # double 0.16367087436983285
	.quad	0x3fe153eadfd2b985              # double 0.54149383273561169
	.quad	0x3fefa79a84dd67e0              # double 0.98920942258996191
	.quad	0x3fee9dbd7b503ca6              # double 0.95675539097455409
	.quad	0x3fdf118f080ca2d4              # double 0.48544669900961179
	.quad	0x3fb4e6fe6789b118              # double 0.081649685170934183
	.quad	0x3fe467d226d7cd44              # double 0.63767345034140321
	.quad	0x3fef3a41eca85b05              # double 0.97586151334948623
	.quad	0x3fe507af1de1156a              # double 0.65718799434459396
	.quad	0x3fe4ae6783688e0a              # double 0.64628959336954606
	.quad	0x3fed683ba3b3cdf0              # double 0.91897375081174282
	.quad	0x3fe95ef5c94d990d              # double 0.79284180943503346
	.quad	0x3fbdc4d5500ae0a8              # double 0.11628468708193174
	.quad	0x3fe4735418ec0e0c              # double 0.63907818667979788
	.quad	0x3fef6577ae40b778              # double 0.98113616975545792
	.quad	0x3fd308716ff42794              # double 0.29739032681447353
	.quad	0x3fce858cdc2ad000              # double 0.2384506297145208
	.quad	0x3fc44f9df34c4500              # double 0.15867971782476076
	.quad	0x3fd150b2cf19355e              # double 0.27055044388256089
	.quad	0x3fe2105697599e63              # double 0.56449441490708485
	.quad	0x3fe1ec897c55fc61              # double 0.56012415203430177
	.quad	0x3fe2d21fd220e91f              # double 0.58814993897184198
	.quad	0x3fec63c5af46af43              # double 0.8871792243348654
	.quad	0x3fecef46bbe6307a              # double 0.90420853327806516
	.quad	0x3f68a219c8b29d00              # double 0.0030069831460256546
	.quad	0x3feef587f2ed04f4              # double 0.96747205206352626
	.quad	0x3fcfe8b7ad40c3b4              # double 0.24928947410219637
	.quad	0x3fdd75e41e9120e0              # double 0.4603205011849365
	.quad	0x3fd190be1303b8b4              # double 0.27445937973869694
	.quad	0x3fe3af67a913080f              # double 0.61516173384029738
	.quad	0x3fcd131775b1dac0              # double 0.22714513060392072
	.quad	0x3fc1fa24ce8c8878              # double 0.1404462822475272
	.quad	0x3fe802cc7a9af6b4              # double 0.75034164377549084
	.quad	0x3fc1895887a4fb84              # double 0.13700396178498064
	.quad	0x3fe01079c55bac7d              # double 0.50201118990425153
	.quad	0x3fe1de4fdf56805b              # double 0.55838769550974676
	.quad	0x3fe90ff4ccde1701              # double 0.78319778454962841
	.quad	0x3f956e2e860e1280              # double 0.020928122455659892
	.quad	0x3fe2af213486b858              # double 0.58387813815148615
	.quad	0x3fe3f313b6fffcdc              # double 0.62342248670747891
	.quad	0x3fc671999adde250              # double 0.17534179746486922
	.quad	0x3fd91e2507272e72              # double 0.39246488283672598
	.quad	0x3fe519942875d296              # double 0.65937240507499228
	.quad	0x3fe057d6bbda04ed              # double 0.51072251024029713
	.quad	0x3fea019b156f923a              # double 0.81269601999935692
	.quad	0x3fd47a343d498f8e              # double 0.31995874390690282
	.quad	0x3fd6f437cdde48f8              # double 0.35865588287664663
	.quad	0x3fe620814542d73a              # double 0.69146789100225381
	.quad	0x3fe4bae7bf1782ca              # double 0.6478155834448327
	.quad	0x3fe38596d77db157              # double 0.61005727851947256
	.quad	0x3fe5596c019c3d8e              # double 0.66716575922502996
	.quad	0x3fde15397bd5ab18              # double 0.47004544347025634
	.quad	0x3fe3b469dbc6700e              # double 0.6157731335147234
	.quad	0x3fd3f31b8c04e22c              # double 0.3117131106733122
	.quad	0x3fdc9768ac0215ae              # double 0.44674126432104344
	.quad	0x3fe00c222df23dc9              # double 0.5014811417949484
	.quad	0x3fddf3f9815fd51c              # double 0.46801602968419487
	.quad	0x3fe8fe608129eae8              # double 0.78105187632840245
	.quad	0x3fe13e620d981a23              # double 0.53886511473757925
	.quad	0x3fc3ee34f7e6e614              # double 0.15570699791514697
	.quad	0x3fe39116c29c0ed5              # double 0.61146104821861036
	.quad	0x3fdaf77eb98509ea              # double 0.42135589711338517
	.quad	0x3fbc525438613df0              # double 0.11063124062024321
	.quad	0x3fb01ac2a59d4310              # double 0.062908330376796551
	.quad	0x3fea8c7d6c6b2c2c              # double 0.82964965034023441
	.quad	0x3fcdd18b901377d8              # double 0.23295731101001027
	.quad	0x3fe597574b1eec5c              # double 0.67472424194364633
	.quad	0x3fe584c2d9e6321d              # double 0.67245619352758335
	.quad	0x3fd12a1d7ea86c82              # double 0.26819550866066078
	.quad	0x3fb123b2a28f0390              # double 0.06695095509259219
	.quad	0x3fb82f89ac28cf50              # double 0.094475369006258747
	.quad	0x3fd623392d899b3a              # double 0.34589986273788365
	.quad	0x3fcd0d6ba152572c              # double 0.22697205903085071
	.quad	0x3fed9fdf36285257              # double 0.9257656152499959
	.quad	0x3fce38923d064e34              # double 0.23610141734808254
	.quad	0x3fe31740e16d4d47              # double 0.59658855465605931
	.quad	0x3fccd365195f0734              # double 0.22520126093700699
	.quad	0x3fe935dddec4c936              # double 0.78782552251349247
	.quad	0x3fc66d1605110acc              # double 0.17520404097930109
	.quad	0x3fc509b43ad524d4              # double 0.16435864327130523
	.quad	0x3fe60a905ef8c0b3              # double 0.68878954457433961
	.quad	0x3fd9bcae71ae3aac              # double 0.40214120008105669
	.quad	0x3fc6719d42aba010              # double 0.17534223323241394
	.quad	0x3fe9c84ebfc8d5e4              # double 0.805701613024834
	.quad	0x3fed709c24504860              # double 0.91999632923603869
	.quad	0x3fd6e8e4e11a8c9c              # double 0.35796472533020007
	.quad	0x3fe2c446f8e93dc8              # double 0.58645962348412528
	.quad	0x3fead9d2a3cadc1b              # double 0.83908969870288119
	.quad	0x3febe78d461df46a              # double 0.87201560682991652
	.quad	0x3fed5c5f5781df22              # double 0.91752593127509763
	.quad	0x3fef4b855f87ccb5              # double 0.97796887071890259
	.quad	0x3fe591c0a369d6fb              # double 0.67404205242811999
	.quad	0x3fe131fb6a6e3280              # double 0.53735132968138544
	.quad	0x3fefc71b3c77007e              # double 0.99305497941533338
	.quad	0x3fd65c2231a16aae              # double 0.34937338682872621
	.quad	0x3fd8cdab831fe134              # double 0.38755309872751131
	.quad	0x3fde92c24dda6438              # double 0.47770745852318752
	.quad	0x3fc1a39e3d298624              # double 0.13780572878299424
	.quad	0x3fccbd2c25e6c530              # double 0.22452308512360153
	.quad	0x3fe6ad54c38209ab              # double 0.70865858254574243
	.quad	0x3fe2d75881cbc72c              # double 0.58878732062132633
	.quad	0x3fc13c31f0ddd198              # double 0.13464950810488285
	.quad	0x3fed45b04d1cd4bf              # double 0.91475691853579366
	.quad	0x3fdad1d2e5a2eea4              # double 0.41905662942347477
	.quad	0x3fdd00ba586ae3f0              # double 0.4531694282009644
	.quad	0x3f815dde73f14e00              # double 0.0084798220761177489
	.quad	0x3fe96b5c9f8eab8b              # double 0.79435568965469494
	.quad	0x3fe044666319b5b5              # double 0.50834960322906986
	.quad	0x3f8396f89e8aa200              # double 0.0095652984030758503
	.quad	0x3fcc0f09eea19924              # double 0.21920894767681276
	.quad	0x3fc5692dbe81f5fc              # double 0.16727229883319683
	.quad	0x3fde78501e918e50              # double 0.47609332070553467
	.quad	0x3fe8e5d4b9c32f4d              # double 0.77805553704954777
	.quad	0x3f989bcae0e1eaa0              # double 0.024031801200616543
	.quad	0x3fbade1497db4f90              # double 0.1049511786216597
	.quad	0x3fde200fac97837e              # double 0.47070686201737277
	.quad	0x3fe6cf7b3bfbb58d              # double 0.71282731738544813
	.quad	0x3fecd917fe1378ff              # double 0.90150069832068869
	.quad	0x3fa1366b4cc7b9e0              # double 0.033618310091572345
	.quad	0x3fbd82f403625370              # double 0.11527943689936904
	.quad	0x3fdf115643681522              # double 0.48543316443131534
	.quad	0x3fe0d39978a82b26              # double 0.52583001676371022
	.quad	0x3fe0965ecdb576ef              # double 0.51835575273045531
	.quad	0x3fe6170395cdf73e              # double 0.6903093267317002
	.quad	0x3fd4df351d8aca4c              # double 0.32612350354171293
	.quad	0x3fda76720759c30a              # double 0.41347933500132739
	.quad	0x3fed24860cc6a6ec              # double 0.91070845122632482
	.quad	0x3fe87ba65f3b499b              # double 0.76509398078842439
	.quad	0x3fcce9a7b318eb50              # double 0.22588058705317815
	.quad	0x3fcaf342785ff824              # double 0.21054869535140697
	.quad	0x3fea0cd292ff8f90              # double 0.81406525335886393
	.quad	0x3fe3af0f434d681f              # double 0.61511958260530608
	.quad	0x3feb6fdec51e2b84              # double 0.857406029697231
	.quad	0x3feba6ee8676b940              # double 0.86412740957693046
	.quad	0x3fec103fdb530f59              # double 0.87698357426459517
	.quad	0x3fef638138ea7a72              # double 0.98089657894509075
	.quad	0x3fe853b7b650ebbc              # double 0.76021943672764491
	.quad	0x3fc9294a119db3c4              # double 0.19657255039365229
	.quad	0x3f8215a816afb080              # double 0.0088303691790871941
	.quad	0x3fd05999febe2e48              # double 0.25546884419666016
	.quad	0x3fd27ea1e2d8ef86              # double 0.28897902634684447
	.quad	0x3fd2b1661331377e              # double 0.29207755922549683
	.quad	0x3f78cdf9a78d8c00              # double 0.0060558082703634497
	.quad	0x3fe675b5e1229c01              # double 0.7018689534351098
	.quad	0x3fefcd23489c17d9              # double 0.99379123860921503
	.quad	0x3fd1cca817a01cb0              # double 0.27811624819919256
	.quad	0x3fc6de81e1e9ff00              # double 0.17866538554152811
	.quad	0x3f8e7e4739f40e00              # double 0.014889294105620898
	.quad	0x3fda2cfa887d2fe4              # double 0.40899527863507346
	.quad	0x3fdbdeba102a659c              # double 0.43546916559861315
	.quad	0x3fee5af069d7ec89              # double 0.94860096619176304
	.quad	0x3fd0582af58fa11a              # double 0.25538133602687341
	.quad	0x3fcfa1f30ef7d6e8              # double 0.24712980490556125
	.quad	0x3fe2ef018499e322              # double 0.59167552851349492
	.quad	0x3feead195f918791              # double 0.95863026300161113
	.quad	0x3fd5ca9b332662b6              # double 0.34049110407935801
	.quad	0x3f94b5262cb00860              # double 0.020222279050365777
	.quad	0x3fe943d44f5edcfc              # double 0.78952994825422662
	.quad	0x3fb7190fea41be48              # double 0.090226168338397916
	.quad	0x3feba7fa414418f2              # double 0.86425507304445959
	.quad	0x3fe440396f43ee77              # double 0.63283988696589588
	.quad	0x3fe61248e1100639              # double 0.68973201711214138
	.quad	0x3fdb6c9a980ce924              # double 0.42850365494418186
	.quad	0x3fe26258a7ae025f              # double 0.57450516462274581
	.quad	0x3fdd6060575fd650              # double 0.45900734455731129
	.quad	0x3fd82b00a4760fe4              # double 0.37762466488515956
	.quad	0x3faaa42e2afde070              # double 0.052033846614848112
	.quad	0x3fee50a7be0b8c17              # double 0.9473456107920154
	.quad	0x3fe0c71534ae9315              # double 0.52430210389556697
	.quad	0x3fd8ded784b9b7ec              # double 0.38860118829222645
	.quad	0x3fe3f6c9009697e6              # double 0.62387514223950968
	.quad	0x3fccc7c06595095c              # double 0.22484593353335469
	.quad	0x3fe61f3936a30060              # double 0.69131146117434739
	.quad	0x3fef20015bbbfd4d              # double 0.97265689770567009
	.quad	0x3fb16e96eb110918              # double 0.068093712224286285
	.quad	0x3fe85c7e882cefc6              # double 0.7612908038786308
	.quad	0x3fe2744b6abf30fa              # double 0.57669611786835095
	.quad	0x3fd9c8d5c2459d30              # double 0.40288299533718241
	.quad	0x3fd5e516e1ff9584              # double 0.34210750646737886
	.quad	0x3fec1fa8e17ba9d7              # double 0.87886470832500663
	.quad	0x3fbf9031eade10e8              # double 0.1232939909369325
	.quad	0x3fda04a5d195065e              # double 0.40653367487911918
	.quad	0x3fd6f945b7310940              # double 0.35896437539863157
	.quad	0x3fc8805d9d4fc85c              # double 0.19141740971787413
	.quad	0x3fda9c9ae79900e2              # double 0.41580841652831968
	.quad	0x3feff9e05e97b681              # double 0.9992524955284382
	.quad	0x3fec3ed12339f7c8              # double 0.88266808395541663
	.quad	0x3fea92c849f32e4a              # double 0.83041777079910983
	.quad	0x3fd2adc6a42b2bd2              # double 0.29185644180387016
	.quad	0x3fec98fdfbc7fc49              # double 0.89367579628004379
	.quad	0x3fe5241ef43b6744              # double 0.66065929128237899
	.quad	0x3fee49b07f83e39d              # double 0.94649529366789731
	.quad	0x3fec8263316585e1              # double 0.89091643951195121
	.quad	0x3fbb9bc6d5e71b98              # double 0.10784571382747143
	.quad	0x3fe6d0188382da0a              # double 0.71290231405038296
	.quad	0x3feb6add97fd27de              # double 0.85679511723833079
	.quad	0x3fea3f375879b912              # double 0.82021682052962519
	.quad	0x3fd17d8fcda1ffb4              # double 0.27328867989853767
	.quad	0x3fe3eb3dd597b3a2              # double 0.62246600835134225
	.quad	0x3fc7a69ad26f5c08              # double 0.1847718741907729
	.quad	0x3fe37da669d13753              # double 0.60908814113074994
	.quad	0x3feedd311a4ac485              # double 0.96450095305603211
	.quad	0x3fe7f40ae455060a              # double 0.74854034992330409
	.quad	0x3f98b426e1baa080              # double 0.024124724891095628
	.quad	0x3fe4b193be1a43f3              # double 0.64667689446844034
	.quad	0x3fd41ddc604ee94a              # double 0.31432256131269709
	.quad	0x3fedf0dd1598cc45              # double 0.93565229623926227
	.quad	0x3fe884535d9accad              # double 0.76615303308644445
	.quad	0x3fee392f32e251c8              # double 0.94448051393788379
	.quad	0x3f9f6f128020cf80              # double 0.030697144575426716
	.quad	0x3fdc7c0975f316b0              # double 0.4450706149913044
	.quad	0x3fe2090af5a4387e              # double 0.56360385872700625
	.quad	0x3fdb0cfa2a6c7938              # double 0.42266706602994786
	.quad	0x3faaa9d73bcfd8e0              # double 0.052077032138116541
	.quad	0x3fd8e9dd4ee187d0              # double 0.38927395537586751
	.quad	0x3fdd4f5c45dd5474              # double 0.45796877691947846
	.quad	0x3fd9d6767960fd96              # double 0.40371476987271515
	.quad	0x3fd01a1a07ec63a8              # double 0.25159312032479386
	.quad	0x3f9a66feda323880              # double 0.025783521716725932
	.quad	0x3fe7b8ed6e37a1a4              # double 0.74132415320223233
	.quad	0x3fb64153861226d0              # double 0.086934299690393901
	.quad	0x3fe04b6baf0b0c4a              # double 0.50920662105671366
	.quad	0x3fe757be76d4d15b              # double 0.72946093758813946
	.quad	0x3fc939f6439a08a8              # double 0.19708135891784662
	.quad	0x3feb9326b483a9c8              # double 0.8617127919836145
	.quad	0x3fed41796ebf5122              # double 0.91424247389162283
	.quad	0x3fefa67e69dd3240              # double 0.98907395054408908
	.quad	0x3fe98293389a990f              # double 0.79718934112023188
	.quad	0x3fcfb2271b6e8774              # double 0.24762429084244852
	.quad	0x3fee959a1b15460c              # double 0.95576195993106827
	.quad	0x3fbbf1e4bfe63d58              # double 0.10915975270312595
	.quad	0x3feb9200cbf1d3a9              # double 0.86157264550148682
	.quad	0x3fd8d269fd5f7e10              # double 0.38784265273531648
	.quad	0x3fd19ecc3f00b556              # double 0.27531725075353586
	.quad	0x3fe4fa1aba5df930              # double 0.65553032302685743
	.quad	0x3fdec400048a152a              # double 0.48071289485263213
	.quad	0x3fd5d5aa020e2036              # double 0.34116602135373186
	.quad	0x3fd09a3b1f214626              # double 0.25941350975071698
	.quad	0x3fb8c0bed6b64c78              # double 0.096691062374064773
	.quad	0x3fef425f2606f768              # double 0.97685201098623242
	.quad	0x3fdec5b3c3f3bd12              # double 0.48081678520152693
	.quad	0x3fcf698b47037ea0              # double 0.24540844886268065
	.quad	0x3fd40321ca985f7a              # double 0.31269116196335001
	.quad	0x3fecfbe62eaf936e              # double 0.90574940794304637
	.quad	0x3fa59a37da1ede70              # double 0.04219221627812153
	.quad	0x3fea91195e80b245              # double 0.83021229226648841
	.quad	0x3fe7d3bc7927307a              # double 0.74459670698844538
	.quad	0x3fc54524c66e51e4              # double 0.16617259682665442
	.quad	0x3fec2ed3e7c76503              # double 0.88071627873719682
	.quad	0x3fe4047ff1042a18              # double 0.62554928849687297
	.quad	0x3fb4ceefceaefa18              # double 0.081282604179229501
	.quad	0x3fe763544cdfcb21              # double 0.73087515844813222
	.quad	0x3fc6981c69fb5e90              # double 0.17651705908678084
	.quad	0x3fd6d9edb077d970              # double 0.35705129845827965
	.quad	0x3fd2725e67b8a16c              # double 0.28823051575684278
	.quad	0x3fed48b7b54859c0              # double 0.91512666136514297
	.quad	0x3fc7519c815f3ce0              # double 0.18217808072083752
	.quad	0x3fe6702afa8105a7              # double 0.70119236876069102
	.quad	0x3fe2e2911b2ddf3f              # double 0.59015708263812161
	.quad	0x3fe2adc3883d86d3              # double 0.58371140107575525
	.quad	0x3fd9280e2fd698ac              # double 0.39306978866296549
	.quad	0x3fec54528350aedd              # double 0.88529325149053373
	.quad	0x3fdeb63f3994af06              # double 0.47987347243427825
	.quad	0x3fed301ee57f24bc              # double 0.91212410758557593
	.quad	0x3feeb98f6f8da2d4              # double 0.96015140331027248
	.quad	0x3fe959812f3f560a              # double 0.79217585781106092
	.quad	0x3fdc2ffd20a23396              # double 0.44042900263667073
	.quad	0x3fe685191daed599              # double 0.70374732778025184
	.quad	0x3fe7ff9ad22040ae              # double 0.74995175400001357
	.quad	0x3fe8f92e30c18f97              # double 0.7804175331370854
	.quad	0x3fef4e62347cd7bb              # double 0.97831831218240183
	.quad	0x3fe8a11efe3d3c9c              # double 0.76966809898467003
	.quad	0x3fa50db626905ba0              # double 0.041120235641009417
	.quad	0x3faa301c4acd1e70              # double 0.051148304110537945
	.quad	0x3fd20b2e251a80f8              # double 0.28193238852874414
	.quad	0x3fd4035ccc3494f8              # double 0.31270523015912444
	.quad	0x3fe9026b54ad9be7              # double 0.78154531992629195
	.quad	0x3fdb4767c3d23842              # double 0.42623323558007453
	.quad	0x3fde244ee15663aa              # double 0.4709660721360317
	.quad	0x3fee996815000f15              # double 0.95622638799292992
	.quad	0x3fd3c39d2db807be              # double 0.30881432976468293
	.quad	0x3fc59deb3d547644              # double 0.1688818025076434
	.quad	0x3fbfaf9bed2388f8              # double 0.12377333201905916
	.quad	0x3fe8ada1717e7a14              # double 0.77119514624411289
	.quad	0x3fab1fe80577b410              # double 0.052977801005774094
	.quad	0x3fe5d9512294f81d              # double 0.68277794603614306
	.quad	0x3fb8dd4243368220              # double 0.097126141938595811
	.quad	0x3fa128fba3a445e0              # double 0.033515800214569458
	.quad	0x3fef08ad848582e1              # double 0.969809302168951
	.quad	0x3fe33d805986853b              # double 0.60125749097293324
	.quad	0x3fd1486748e12d5a              # double 0.27004415623806255
	.quad	0x3feadaa4e1f4e6cd              # double 0.8391899502959973
	.quad	0x3feed4d05805c96b              # double 0.96347825233378381
	.quad	0x3fd7435f40a528dc              # double 0.36348706543925657
	.quad	0x3fe7b7250648b888              # double 0.74110652186733805
	.quad	0x3fe515a9e4864aaf              # double 0.65889448770243131
	.quad	0x3fdbb04b507a399e              # double 0.43263514384389079
	.quad	0x3fd25b21f553e730              # double 0.28681229551112875
	.quad	0x3fe3cf4837925b76              # double 0.61905299047326312
	.quad	0x3feb10423592ca9d              # double 0.84573469604068274
	.quad	0x3fed272ada9bf207              # double 0.91103117653943932
	.quad	0x3f6cc19e992b3c00              # double 0.0035102937339170914
	.quad	0x3fde604270e174ae              # double 0.47462521575455241
	.quad	0x3fcdcc4de40770b8              # double 0.23279737123710276
	.quad	0x3fdbddf769313202              # double 0.43542275688813004
	.quad	0x3fd9d7d1eb94f6de              # double 0.40379760747951632
	.quad	0x3fe56ea042140b61              # double 0.66975415140073491
	.quad	0x3fed4cfba825c556              # double 0.91564734307591311
	.quad	0x3fab98794b1aca60              # double 0.053897657793090969
	.quad	0x3fd1d77770d86dac              # double 0.2787760355001534
	.quad	0x3fe8238d9f5c160e              # double 0.7543399918074003
	.quad	0x3fcc97d1e08df494              # double 0.22338317360473481
	.quad	0x3fcd2c53dc21054c              # double 0.22791527031408021
	.quad	0x3fe04dbe4cb26b8b              # double 0.50949015598176695
	.quad	0x3fd7f95638ac9b3a              # double 0.37459331068605517
	.quad	0x3fd4f1d1b804efa8              # double 0.32725947352059359
	.quad	0x3fd669623d752074              # double 0.35018211366378371
	.quad	0x3fd3234966066d26              # double 0.29902873004330599
	.quad	0x3fe3f7eb074938a5              # double 0.62401343749094862
	.quad	0x3fee4aa16dcb95ed              # double 0.94661017841707251
	.quad	0x3faee909eb42de90              # double 0.060371694534692044
	.quad	0x3fef5905db33ac14              # double 0.97961705029354328
	.quad	0x3feab5ea475fa358              # double 0.83470643940118361
	.quad	0x3fec5a820ffded1a              # double 0.88604834674279975
	.quad	0x3fe1b2a79714dcba              # double 0.55305842884163003
	.quad	0x3fd2d42915391ab6              # double 0.29419924805226161
	.quad	0x3fd99c42088c9fd0              # double 0.40016222796338941
	.quad	0x3fe373b01e973f48              # double 0.60787206625716639
	.quad	0x3fe370b14fa441b8              # double 0.60750642352109363
	.quad	0x3fe74a222f381a08              # double 0.7277995035408944
	.quad	0x3fe03ced3766b409              # double 0.50743733234924193
	.quad	0x3fc38ce48ca79b00              # double 0.15273720615297037
	.quad	0x3fe922b488f4aeea              # double 0.78548647641352187
	.quad	0x3fe231fe84baa7aa              # double 0.56860280917793671
	.quad	0x3fb0d4c484c58e58              # double 0.065746576704947102
	.quad	0x3fc616140b6ef40c              # double 0.17254877622863807
	.quad	0x3fe0f771d7129720              # double 0.53020565039034651
	.quad	0x3fa46ae516046310              # double 0.039878043115271322
	.quad	0x3fef269075912dbd              # double 0.97345755541157752
	.quad	0x3fe3b72eb85d0c73              # double 0.61611114510050269
	.quad	0x3fcf0ffaee8e4e84              # double 0.24267517708050346
	.quad	0x3fd3cd985b3ddaa4              # double 0.3094235316306515
	.quad	0x3fe1463313285e18              # double 0.5398192762540388
	.quad	0x3feb0fd369aa15d3              # double 0.8456818641431546
	.quad	0x3fde9a8126120eec              # double 0.47818020551515761
	.quad	0x3fe898c0431d86a0              # double 0.76864636524642904
	.quad	0x3fd25f5a8754832a              # double 0.28706992355187089
	.quad	0x3fe14503a97d6872              # double 0.53967459777346805
	.quad	0x3fda6dfd1f81bffe              # double 0.41296318127479015
	.quad	0x3fe3c03601802f69              # double 0.61721325200185817
	.quad	0x3fec485d1a377ac9              # double 0.8838334571881542
	.quad	0x3fe1f6f651bed328              # double 0.56139675107860842
	.quad	0x3fcdcb2f63c40ca8              # double 0.23276321765306318
	.quad	0x3fd5ead83f4ce81c              # double 0.342458783928693
	.quad	0x3fdde5727b677f08              # double 0.4671293454284613
	.quad	0x3fdb6462b79a67a8              # double 0.42800205163950489
	.quad	0x3fd656103b372d3e              # double 0.34900289328352929
	.quad	0x3fe47e958961e8f9              # double 0.64045216400634708
	.quad	0x3fdb0b1844627e92              # double 0.42255217245290411
	.quad	0x3fe657d501512618              # double 0.69822168595527767
	.quad	0x3fe8052105b56ab1              # double 0.75062609782192713
	.quad	0x3fe77bb889708bb1              # double 0.73385264247587234
	.quad	0x3fe2d21b1b5244dc              # double 0.58814769111827614
	.quad	0x3fedf6305ecee47b              # double 0.93630236165257885
	.quad	0x3f8242db10051780              # double 0.0089165796531565089
	.quad	0x3febb8901e24c70f              # double 0.86627965819772779
	.quad	0x3fdd807b288c4d80              # double 0.46096686324855085
	.quad	0x3fe0ce78e8e5d8c2              # double 0.52520413864001392
	.quad	0x3fb5461ca218d228              # double 0.083101071905567481
	.quad	0x3fced09ffb3c6a30              # double 0.24074172751791556
	.quad	0x3fd21533708f4cd8              # double 0.28254400245823552
	.quad	0x3fa510c1d1eed370              # double 0.041143471600128545
	.quad	0x3fc97171eaaa9c2c              # double 0.19877456625292333
	.quad	0x3fcb1ebb18b01428              # double 0.21187533097705225
	.quad	0x3fd6ec97e095e190              # double 0.35819050724196533
	.quad	0x3fe3e5a7bd9747f0              # double 0.62178408650856731
	.quad	0x3fec929deed4b7a1              # double 0.89289757391610547
	.quad	0x3fd05e8591b7fd7c              # double 0.25576915006964618
	.quad	0x3fd44647a2b57588              # double 0.31678954019101768
	.quad	0x3fe5d468c6ad7451              # double 0.68217886738023925
	.quad	0x3fedc4c54c5fdb5a              # double 0.93026986042864768
	.quad	0x3fd12bcb4a33c230              # double 0.26829797979647463
	.quad	0x3fe54bc4fa7957b9              # double 0.66549920006467922
	.quad	0x3fc25bec5f736fe8              # double 0.1434302774495102
	.quad	0x3f9d538bef9822c0              # double 0.028639017580675441
	.quad	0x3fb1a6fa93cef840              # double 0.068954144559911335
	.quad	0x3fe3434f9a453e06              # double 0.60196666842415492
	.quad	0x3fc0ae588708d340              # double 0.13032061189155719
	.quad	0x3fedf420cdc040d7              # double 0.93605079828014481
	.quad	0x3fef775c3f8788bc              # double 0.98332035453883959
	.quad	0x3fb8f8854f9506c8              # double 0.097542125634414778
	.quad	0x3febd538f187f1dd              # double 0.86977812932996879
	.quad	0x3fc22feb3ac88cec              # double 0.14208736772807329
	.quad	0x3fdf6762e06a632e              # double 0.49068519511779385
	.quad	0x3fedccaf8f0a6bdd              # double 0.93123605668676712
	.quad	0x3fe9ccb102198e91              # double 0.80623674783824317
	.quad	0x3fefc81f2eef7dfc              # double 0.99317893187611572
	.quad	0x3fdc47448042b766              # double 0.44184982800913131
	.quad	0x3fdab32124538fe6              # double 0.4171831946134702
	.quad	0x3fd6fda52d055658              # double 0.35923127552573453
	.quad	0x3fe2d1c06ff90014              # double 0.58810445661220223
	.quad	0x3feb7ca5e78ec6a0              # double 0.85896582819096423
	.quad	0x3fece80c54f3db85              # double 0.90332619278238779
	.quad	0x3fc43b3a8c786d9c              # double 0.15805751665980672
	.quad	0x3fc93481efdb1464              # double 0.19691490375240328
	.quad	0x3f91e5046f88e140              # double 0.017475194270646144
	.quad	0x3fed18a0bef97839              # double 0.90925633716302123
	.quad	0x3fee8205a09cb3b5              # double 0.95337182397417186
	.quad	0x3fed706638decb7a              # double 0.91997061831931082
	.quad	0x3fe76c286a25cfab              # double 0.73195286495182665
	.quad	0x3fe1b35d105ef1c1              # double 0.55314496228634635
	.quad	0x3fb081fd8f3fc828              # double 0.06448349711698198
	.quad	0x3fb361969dfc2e88              # double 0.075707830019547839
	.quad	0x3fe5276191c7ed80              # double 0.66105726693005806
	.quad	0x3fdc2effa8fc2e9a              # double 0.44036857130479634
	.quad	0x3f94fd6b0b1c3800              # double 0.020497963479151338
	.quad	0x3fdf25f99aebd958              # double 0.48669281128913644
	.quad	0x3fba6879eedeadb0              # double 0.1031566818407359
	.quad	0x3f9c4417c8d3d900              # double 0.027603503830470721
	.quad	0x3fd27599e4fc9928              # double 0.28842780458434669
	.quad	0x3f98043ac64f5f40              # double 0.023453634599575723
	.quad	0x3fe56df32c9025a8              # double 0.66967161849713808
	.quad	0x3fce6e638073897c              # double 0.23774379512822097
	.quad	0x3fcc2fb1459e5f44              # double 0.22020545863483154
	.quad	0x3fde1778b9d03314              # double 0.47018259187534395
	.quad	0x3fdfd40cb33d5cac              # double 0.49731748107792373
	.quad	0x3f496806604da400              # double 7.7534018838065766E-4
	.quad	0x3fcb1fb237dbb6b8              # double 0.21190479018644282
	.quad	0x3fc8cfec68554f58              # double 0.19384532064816073
	.quad	0x3fe10ab9a69c15a5              # double 0.53255922833402691
	.quad	0x3fef287dc438ff94              # double 0.97369278263794223
	.quad	0x3feb0faca39e4301              # double 0.84566337544137593
	.quad	0x3fee37fcde6edaa5              # double 0.94433444446515991
	.quad	0x3fc7ef5ccf294810              # double 0.18699226489349074
	.quad	0x3fea773237f2c0cd              # double 0.82705031325715483
	.quad	0x3fe4f6cff1426f2c              # double 0.65512845154760191
	.quad	0x3fd03bb04ce086f4              # double 0.2536431074860126
	.quad	0x3fe5f983c8fc50f1              # double 0.68670834784509627
	.quad	0x3fd0025d31ed38cc              # double 0.25014428973817071
	.quad	0x3fb30cdd9b039c68              # double 0.074415064187279278
	.quad	0x3fdaeaf370f1528c              # double 0.42059026746327599
	.quad	0x3fe3302dbaf89fc9              # double 0.59963118093309575
	.quad	0x3fd28ebcb711c462              # double 0.28996198537703866
	.quad	0x3fc2d81c1ce5ed60              # double 0.14722014819185869
	.quad	0x3fefbe0d6836773c              # double 0.99194975236944271
	.quad	0x3fc99bf677705704              # double 0.20007210571264278
	.quad	0x3fe6554301f60996              # double 0.69790792830490278
	.quad	0x3fa980be45e818e0              # double 0.04981035807945644
	.quad	0x3fe77b6208282646              # double 0.7338113936722912
	.quad	0x3fbb0206ade0d148              # double 0.10549966569016533
	.quad	0x3fd9149caf650f6e              # double 0.39188305977244553
	.quad	0x3fe305d5ff3a6d30              # double 0.59446239327681916
	.quad	0x3fd5be6735a6e53c              # double 0.33974628676840601
	.quad	0x3fee5c09d5b4601d              # double 0.94873515834024469
	.quad	0x3fe5c02997b3b350              # double 0.67970733289039664
	.quad	0x3feebd4320abfa8f              # double 0.96060329800805444
	.quad	0x3fd2d532000375a6              # double 0.2942624092227909
	.quad	0x3f9ed48d21a42900              # double 0.030107693842219341
	.quad	0x3fd93593ca16d630              # double 0.39389509902261732
	.quad	0x3fd132ac4ad8fb3c              # double 0.26871783551534967
	.quad	0x3fe3ec9f7f10745c              # double 0.6226346475338107
	.quad	0x3fd958a1d874ccfc              # double 0.39603468073183001
	.quad	0x3fd270fdc4bffd5a              # double 0.28814644063819161
	.quad	0x3fe6862b0fc2eee1              # double 0.7038779552308051
	.quad	0x3fd58954fef530fa              # double 0.33650708101482929
	.quad	0x3febb59c491b868f              # double 0.86591924933255082
	.quad	0x3fc201b9c03f82d8              # double 0.14067766081918509
	.quad	0x3fd8b057bfe123d2              # double 0.38576310861804786
	.quad	0x3fef75a3e7b6443f              # double 0.98311038261648053
	.quad	0x3feff476edb83447              # double 0.99859186582183034
	.quad	0x3fe6ae1025e778f5              # double 0.70874793437158579
	.quad	0x3fc08102ed970e14              # double 0.12893711663319662
	.quad	0x3fe0deab3c40d777              # double 0.52718126075954685
	.quad	0x3feb4ee3c934a14d              # double 0.85338010118452134
	.quad	0x3fd10ff7449c0712              # double 0.26659948063034833
	.quad	0x3f97433377179280              # double 0.022717289108089123
	.quad	0x3fe925d1133a66ad              # double 0.78586629634374605
	.quad	0x3fed4cab6665f10b              # double 0.91560907363558053
	.quad	0x3fce0a44cb50dbb4              # double 0.23468837668926101
	.quad	0x3fdf740701bb14a8              # double 0.49145674866697187
	.quad	0x3feb1b4e9246b681              # double 0.84708336419653574
	.quad	0x3fc721b6983b182c              # double 0.18071634705683104
	.quad	0x3f501c7f8def1000              # double 9.8335701453411417E-4
	.quad	0x3fe0778fca569a71              # double 0.51459493178556504
	.quad	0x3feb12132057ae32              # double 0.84595638577360988
	.quad	0x3feb7ea7f80809ec              # double 0.85921095317490658
	.quad	0x3fe669855fc019b5              # double 0.70038098050354469
	.quad	0x3fef249ff6190f3c              # double 0.97322080675119293
	.quad	0x3f8e65c5ded14f40              # double 0.014842553961137761
	.quad	0x3fe1a5a324447733              # double 0.55146939357266545
	.quad	0x3fc07a19564d11d0              # double 0.12872616495054823
	.quad	0x3feba073a04e5446              # double 0.86333638486633713
	.quad	0x3fa09a4d9d0550d0              # double 0.032427239816259168
	.quad	0x3feefff8085f02e1              # double 0.96874620089519336
	.quad	0x3fd5b2c0ddfa58a6              # double 0.33903524091273096
	.quad	0x3fed8be0a8d2b964              # double 0.92332489941854278
	.quad	0x3fd0d8cd4efac646              # double 0.26323254311418898
	.quad	0x3fea74cff5116b5d              # double 0.82675931801655234
	.quad	0x3fddf004f2618c56              # double 0.4677746169092577
	.quad	0x3f9245ace2a89ba0              # double 0.017843915304321833
	.quad	0x3fe6dc6c38d5c64f              # double 0.71440707302662954
	.quad	0x3fea1e3042abc3c1              # double 0.81618512174292601
	.quad	0x3fc3b8f238e788f8              # double 0.15408160952126315
	.quad	0x3f59b61582e9da00              # double 0.0015692911216810268
	.quad	0x3fe4918969f97fda              # double 0.6427657193962617
	.quad	0x3fa638b5b4d47cf0              # double 0.043401411365488474
	.quad	0x3fe82895bc992873              # double 0.75495421252823147
	.quad	0x3fe733578cf865dd              # double 0.72501733334791718
	.quad	0x3fc61444040975d8              # double 0.17249345967404284
	.quad	0x3fe7f7644b6a4d25              # double 0.74894919137515059
	.quad	0x3fceb22de37bd808              # double 0.2398125992546627
	.quad	0x3fe87a9147ef16de              # double 0.76496185350034884
	.quad	0x3fe188a83b5bec52              # double 0.5479317817074707
	.quad	0x3fedaa1f5ecbffdc              # double 0.92701691164983968
	.quad	0x3fd91d9b14e7049c              # double 0.39243199387790084
	.quad	0x3fe6044ea6453752              # double 0.68802578425104799
	.quad	0x3fef0a6662ea821b              # double 0.97001952476063324
	.quad	0x3fe01d1db30277cf              # double 0.50355420077152668
	.quad	0x3fed3201e15efdf6              # double 0.9123544122484748
	.quad	0x3fcd52bfb2a0deb8              # double 0.22908779356088416
	.quad	0x3fdc458cf93e9bf8              # double 0.44174503650941643
	.quad	0x3fe59c9614ec6143              # double 0.67536453329652379
	.quad	0x3fdb74c30d975f26              # double 0.42900158240580522
	.quad	0x3fe792c9b644596c              # double 0.73666844939252263
	.quad	0x3fdcbefacddf9216              # double 0.44915647606674847
	.quad	0x3feab4de760d61d3              # double 0.83457873398861648
	.quad	0x3fd2146ada0f7d82              # double 0.28249617857905929
	.quad	0x3fe2613cb2ebd7d3              # double 0.57436976380881288
	.quad	0x3fcc08bbaef5459c              # double 0.219016514233357
	.quad	0x3fddae1c77bd01d2              # double 0.46375190442270509
	.quad	0x3feff2bb24f3040a              # double 0.99838025299698185
	.quad	0x3fce29a14087d89c              # double 0.23564544344816774
	.quad	0x3fe583ff161b2d0b              # double 0.67236284558876613
	.quad	0x3fbda94d62166e28              # double 0.11586459774701352
	.quad	0x3fdfd9f58c1ba598              # double 0.49767817194386899
	.quad	0x3fe38afd411bf170              # double 0.61071646420127301
	.quad	0x3feb7bf3be482464              # double 0.85888087429442494
	.quad	0x3fd53113d9470624              # double 0.33112045496463538
	.quad	0x3fe284b557c22e17              # double 0.57869975223860848
	.quad	0x3fb4b06cacfdb290              # double 0.080817024454242991
	.quad	0x3fec08d95943a208              # double 0.87608020243084272
	.quad	0x3fc854b0dc681d0c              # double 0.19008456003232543
	.quad	0x3fe687d47c0952ba              # double 0.70408081270087242
	.quad	0x3fd3a76e75942b5e              # double 0.30709420664122955
	.quad	0x3feebbb85bdd49d8              # double 0.96041505758540335
	.quad	0x3fdde552509572cc              # double 0.4671216761542325
	.quad	0x3fe4bff8db2d86eb              # double 0.64843409355327475
	.quad	0x3feea04aa190791b              # double 0.95706683688675598
	.quad	0x3fec55bc41bd7f78              # double 0.88546574439895576
	.quad	0x3fd0603125aa3a4e              # double 0.25587109258859619
	.quad	0x3fe0e57bf73e6b61              # double 0.52801321306047211
	.quad	0x3fea45e6fd5c4926              # double 0.82103299602957658
	.quad	0x3fe3db88e91c87e2              # double 0.62054868249492423
	.quad	0x3f90e369ae0398c0              # double 0.016492511030173018
	.quad	0x3fc2759b3d60a0e8              # double 0.14421406266161019
	.quad	0x3fc83d929f65e014              # double 0.1893790510473542
	.quad	0x3fecfc88a94cf76f              # double 0.90582688395055111
	.quad	0x3fefefdf53ef52d0              # double 0.99803129571463423
	.quad	0x3fe4e23e6157ba63              # double 0.65261763584369381
	.quad	0x3fc401cc64a6ef84              # double 0.15630488314297619
	.quad	0x3fe32b9c531f28dd              # double 0.59907356486044316
	.quad	0x3fcdc699d616e4b4              # double 0.23262331918320955
	.quad	0x3fce7165196154b8              # double 0.23783553828494575
	.quad	0x3f95fa4c065518c0              # double 0.021462619673251693
	.quad	0x3fd52fb8475b4a3e              # double 0.3310375878183186
	.quad	0x3fb9ce5767bd33e0              # double 0.10080477030460555
	.quad	0x3fef7a2b2b31c06b              # double 0.98366316257853492
	.quad	0x3fca10691dd72314              # double 0.20362581212091213
	.quad	0x3feee4134da3a86c              # double 0.96534123577045027
	.quad	0x3fe0bfea3f44bca7              # double 0.52342712742929087
	.quad	0x3fe65c3b5fd3210e              # double 0.69875878062978969
	.quad	0x3fdff039bea10e34              # double 0.49903720489621439
	.quad	0x3fdf2dfa028671fe              # double 0.48718118902777963
	.quad	0x3fccd1d38e76da10              # double 0.22515339332831319
	.quad	0x3fae71cc64c39600              # double 0.059461962986272709
	.quad	0x3fe42b66882aa846              # double 0.63029791445774985
	.quad	0x3fe9e0346d2acf7b              # double 0.808618748872035
	.quad	0x3fbee7df3b27cb18              # double 0.12072558588242222
	.quad	0x3febf575196ca865              # double 0.87371306386672798
	.quad	0x3fe8f2dd1a731de4              # double 0.77964644590332143
	.quad	0x3fca45261b4af030              # double 0.20523525555279454
	.quad	0x3fed018558e47bc0              # double 0.90643565522974967
	.quad	0x3fd97ad06f2fa15a              # double 0.39812098367703685
	.quad	0x3fd8d6e8556bdb9a              # double 0.38811691610265486
	.quad	0x3fe61d14e6324151              # double 0.69105000457970267
	.quad	0x3fe9afad1d0ddba3              # double 0.80269485163340837
	.quad	0x3fecfd914fc2b86b              # double 0.90595307901618349
	.quad	0x3fd4ae88954483f2              # double 0.32315268113057904
	.quad	0x3fed33fd250fc7e9              # double 0.91259629477121706
	.quad	0x3fecae6c22d726e0              # double 0.89629179768345679
	.quad	0x3fd50085ff55f50c              # double 0.32815694747098756
	.quad	0x3fde108d4aa42068              # double 0.46976024903461289
	.quad	0x3fe0a500e6500452              # double 0.52014203055308372
	.quad	0x3fe091f0b0bdd55e              # double 0.51781496543723526
	.quad	0x3fef7941b1c5741f              # double 0.98355183335263862
	.quad	0x3facfa036ccebee0              # double 0.056594950706651437
	.quad	0x3fe37fdfcd8e3b2a              # double 0.60935964725090241
	.quad	0x3fd2b8a55d3bcf4c              # double 0.29251989464613781
	.quad	0x3fe13e6113144a2a              # double 0.53886464811723056
	.quad	0x3fa695c6cc285fb0              # double 0.044111454412074536
	.quad	0x3fd04370122b40d6              # double 0.25411607527077018
	.quad	0x3fe98c9166a489a3              # double 0.79840917632491359
	.quad	0x3fed86cb0485ce5d              # double 0.92270422824226339
	.quad	0x3feba7beb5ec500a              # double 0.86422668010573145
	.quad	0x3fa2a3a487d23750              # double 0.036404744701128977
	.quad	0x3fe15f3297f74722              # double 0.54287080460401094
	.quad	0x3fb52dad2bdfa380              # double 0.082728217326474506
	.quad	0x3fcce055ea3de98c              # double 0.22559617936697085
	.quad	0x3fc09cc159172c1c              # double 0.12978379106638804
	.quad	0x3fdc218a8836d9d0              # double 0.43954718877958232
	.quad	0x3fd820a50bce479c              # double 0.37699247506054134
	.quad	0x3fca7ad4409779b0              # double 0.20687344697848919
	.quad	0x3fe9653d74d72a05              # double 0.79360840626151286
	.quad	0x3fd23d11d9fa1c04              # double 0.28497740065398625
	.quad	0x3fe32c83395b7942              # double 0.59918366625405661
	.quad	0x3fe58407be9693ac              # double 0.67236697410827651
	.quad	0x3fee793986ec5d14              # double 0.95229793884473901
	.quad	0x3fd24b30a5ba8e70              # double 0.2858392351574599
	.quad	0x3fcd5d836772c370              # double 0.2294162993544222
	.quad	0x3fc5e2891dd07104              # double 0.17097581821224861
	.quad	0x3fefb973ef9712f7              # double 0.99138829035709263
	.quad	0x3fb5faf1a1b13060              # double 0.085860349631901922
	.quad	0x3fed0f97a38ce1de              # double 0.90815336173460159
	.quad	0x3fc8934355e275a0              # double 0.1919941109999117
	.quad	0x3fcfb3a809ee7490              # double 0.24767017826971882
	.quad	0x3fc9e038f3a2e7ac              # double 0.20215522667223007
	.quad	0x3fccb43773dbcb28              # double 0.22424977452427552
	.quad	0x3fd3b05c8509c232              # double 0.30763924591068126
	.quad	0x3fc15df7d3382324              # double 0.13568017781678876
	.quad	0x3fe89e98c7bbb423              # double 0.76935996065515544
	.quad	0x3fef0c19af9cd38c              # double 0.9702270917829181
	.quad	0x3fe1b065fe8b530a              # double 0.55278300967856464
	.quad	0x3feefcd73277659b              # double 0.96836433273999789
	.quad	0x3fb2ac5a4ab36538              # double 0.072942393529406568
	.quad	0x3fe7cc6a8098a988              # double 0.74370312801811256
	.quad	0x3fd80ee9a7470910              # double 0.37591019950572591
	.quad	0x3fd45076bd752612              # double 0.31741112233848512
	.quad	0x3fe74890f49ed86c              # double 0.72760818269195005
	.quad	0x3fbe56516d98ff78              # double 0.11850460935329277
	.quad	0x3fe1f1c46d762561              # double 0.56076260928345445
	.quad	0x3feafe2a7f42171b              # double 0.84352612357244838
	.quad	0x3fc11be5e79db628              # double 0.13366388139131513
	.quad	0x3fa98dff5b996190              # double 0.049911479884659049
	.quad	0x3fd4f23daaebb9d0              # double 0.32728521052822845
	.quad	0x3fea5bb657b88228              # double 0.82369534619289642
	.quad	0x3fbedec951b66980              # double 0.12058695073065984
	.quad	0x3fec9b43528ec8d9              # double 0.89395300030289626
	.quad	0x3fed0254ab711176              # double 0.90653451428128906
	.quad	0x3fec515972146147              # double 0.88493034630941103
	.quad	0x3fd6c214a490f546              # double 0.35559574194833876
	.quad	0x3fd6c9d646f16e4e              # double 0.35606915405307837
	.quad	0x3fe27945fa911a7d              # double 0.57730387629347002
	.quad	0x3fd2653ddbe4ba1c              # double 0.28742929910632298
	.quad	0x3fdafed03a8d177a              # double 0.42180257528195109
	.quad	0x3fd5292b289ff4fa              # double 0.33063773123997431
	.quad	0x3fe341f7848c19f8              # double 0.60180259597910801
	.quad	0x3fe9c8e543a2b044              # double 0.80577338419016841
	.quad	0x3f8f893d6ebebd80              # double 0.015398483221217729
	.quad	0x3fdbcd42b40ff0f4              # double 0.43440311035352797
	.quad	0x3fce07f9d4e832e4              # double 0.2346184053025332
	.quad	0x3fc136669c842d14              # double 0.1344726814498719
	.quad	0x3fd3a9ac1af30c86              # double 0.30723097450044923
	.quad	0x3fbc49eb95b6cd50              # double 0.11050293355110807
	.quad	0x3fdb3252e9bfd914              # double 0.42494652583208503
	.quad	0x3fbd7412a7758070              # double 0.11505238140444063
	.quad	0x3fedadae5b238131              # double 0.92745130348706628
	.quad	0x3fe024d8911ac12b              # double 0.50449779835438358
	.quad	0x3fc31a7349e271b0              # double 0.14924470050472172
	.quad	0x3fe6ca5b33694a11              # double 0.71220169106737974
	.quad	0x3fe6a4dd0222e10d              # double 0.70762491624103208
	.quad	0x3fe1079339c3965f              # double 0.5321746948436149
	.quad	0x3feba1dd182479b7              # double 0.86350874629334029
	.quad	0x3fec678e64a7d992              # double 0.88764114054974841
	.quad	0x3fb290ee0377a6b8              # double 0.072523952337770647
	.quad	0x3fb4457f1bbc2858              # double 0.079185432692754687
	.quad	0x3fd2de4853c1dad8              # double 0.29481704883020887
	.quad	0x3fd5ae11c3d85a12              # double 0.33874935269833018
	.quad	0x3fe4e4f5dfb4022f              # double 0.65294927303336248
	.quad	0x3feb604f9ac2c52b              # double 0.85550670839999066
	.quad	0x3fe3ef69346e70c5              # double 0.62297497025021953
	.quad	0x3f95b39fa6ad5220              # double 0.021193022297056996
	.quad	0x3fea731b8fa8769e              # double 0.82655122812476001
	.quad	0x3fec77cbcfa8a268              # double 0.88962355192513787
	.quad	0x3fe396e82d299b3f              # double 0.61217125721746146
	.quad	0x3fd24e1725a397ae              # double 0.28601626086890064
	.quad	0x3fe8f68ce9b7a2d2              # double 0.78009648940959608
	.quad	0x3fe7ce7cd92aa3ae              # double 0.74395601668685685
	.quad	0x3fd208fd0cce2264              # double 0.28179861307629595
	.quad	0x3fe71c3f3daaf751              # double 0.72219812435626285
	.quad	0x3fdd69c1e61bcf0c              # double 0.4595799204973765
	.quad	0x3fe07548446b4ff5              # double 0.51431668627856075
	.quad	0x3fcf1a859d458fa0              # double 0.24299688510211315
	.quad	0x3fe01fd86ba95d67              # double 0.50388737704899433
	.quad	0x3fa53c35b82a76e0              # double 0.041474989634691317
	.quad	0x3fde155f013a0a2c              # double 0.47005438918873454
	.quad	0x3fef6e9e15c28ab2              # double 0.98225311517702196
	.quad	0x3feba6203fb90f13              # double 0.8640290493571875
	.quad	0x3fe400e2ed84ba3e              # double 0.625108207610374
	.quad	0x3fec3dfcadbef125              # double 0.88256677565326369
	.quad	0x3fe6cd6d08ac1d1a              # double 0.71257640546619716
	.quad	0x3fefdb8ea0850b11              # double 0.9955514083052056
	.quad	0x3febcffc86634f32              # double 0.86913896796838785
	.quad	0x3fbeb385dd5b0ce8              # double 0.11992680219832474
	.quad	0x3fd5b9c1f89a8a28              # double 0.33946275022222716
	.quad	0x3fc3922661f81fbc              # double 0.15289764197973266
	.quad	0x3fe120c4a6c7e085              # double 0.53525002073639938
	.quad	0x3fe3932416c5f393              # double 0.61171154449367504
	.quad	0x3f9667899394c820              # double 0.021879338867798137
	.quad	0x3fb212cfe0a548b0              # double 0.070599548668982548
	.quad	0x3fd963ab07d5f528              # double 0.39670825734340776
	.quad	0x3fda700ee9fd4fca              # double 0.41308949327980982
	.quad	0x3fe97338c5be6b18              # double 0.79531515714492951
	.quad	0x3fee4a3279cc7753              # double 0.94655727185065996
	.quad	0x3fec7e6c4499d176              # double 0.89043248556713084
	.quad	0x3fece4d50bc607fd              # double 0.90293361949466056
	.quad	0x3fe2286754d23d32              # double 0.56743208471917783
	.quad	0x3fd82a56f2c242a8              # double 0.37758420664708092
	.quad	0x3fd7d89762f8c04a              # double 0.37259468713000798
	.quad	0x3fd7c4544459db62              # double 0.37135798144247734
	.quad	0x3fe313aa6afad66e              # double 0.59615059751986421
	.quad	0x3fe75ba3a69a163c              # double 0.72993643321451129
	.quad	0x3fcbdcaaaf2bc5b0              # double 0.21767171433707011
	.quad	0x3fdca663af7a1b60              # double 0.44765560280250405
	.quad	0x3feb1fed733a02db              # double 0.847647404720273
	.quad	0x3fe7c8e509292b10              # double 0.74327327527257303
	.quad	0x3fdc1709f00136c6              # double 0.43890617788279618
	.quad	0x3fdf071d4e803ac0              # double 0.48480923334220094
	.quad	0x3febe458f5a51d66              # double 0.871624450469352
	.quad	0x3fdaeb7559de6c70              # double 0.42062124038938631
	.quad	0x3fe2936e57333ef7              # double 0.58049695044789373
	.quad	0x3fe8ddcf2f798a82              # double 0.77707633278289756
	.quad	0x3feb36569280b8ea              # double 0.8503830777533754
	.quad	0x3fd13d4642bf35c6              # double 0.26936489599469515
	.quad	0x3feec27c618a7b56              # double 0.96124095011678423
	.quad	0x3fe4069c6140ad49              # double 0.62580698961884551
	.quad	0x3fb291ad3021a898              # double 0.072535347224091828
	.quad	0x3fe3cf51e7ce3786              # double 0.61905761026876927
	.quad	0x3fd6a3d430984e34              # double 0.35374932046508722
	.quad	0x3fcd9fd4a34bf4c4              # double 0.23144014333221297
	.quad	0x3fe0a8de4677e141              # double 0.5206138016065226
	.quad	0x3fd8c5fd97268f38              # double 0.38708438645174992
	.quad	0x3fd2510a3543a74e              # double 0.28619628144825959
	.quad	0x3fe8f9e199c4074c              # double 0.78050308258409861
	.quad	0x3fd2ab7341dd9e26              # double 0.29171449119755477
	.quad	0x3feb8619f33f4168              # double 0.86011979588697063
	.quad	0x3fec109d99ed7c76              # double 0.87702827514648507
	.quad	0x3fc4cdbada221b1c              # double 0.16252837801968034
	.quad	0x3fe67e6d57e6e520              # double 0.7029329983553545
	.quad	0x3fe0c5ab7d6e8778              # double 0.52412962435140198
	.quad	0x3fe9294e5dd0c1d0              # double 0.78629225085574639
	.quad	0x3fdb269b124f251c              # double 0.42423130786899477
	.quad	0x3fdcf14e4115a046              # double 0.45222812992006245
	.quad	0x3fe13183a762b82f              # double 0.53729422276024319
	.quad	0x3fed0b1d6a8050ba              # double 0.90760680008909067
	.quad	0x3fd3c59786a555da              # double 0.30893505238540586
	.quad	0x3fe336569a23e0a1              # double 0.6003830919790013
	.quad	0x3fa885624438c790              # double 0.047892638042312474
	.quad	0x3fe62285caae9d2f              # double 0.69171418749184521
	.quad	0x3fe5580cef7e935c              # double 0.66699835563904797
	.quad	0x3fed56b14c3c5d1d              # double 0.91683258905223719
	.quad	0x3fce2c364529862c              # double 0.23572424294529648
	.quad	0x3fd7829c0294db50              # double 0.36734676601502247
	.quad	0x3fcc8c42bacc1570              # double 0.22303041573483595
	.quad	0x3fd7ff50144b8f88              # double 0.37495805723141773
	.quad	0x3f9c02ec4d9ee0c0              # double 0.027354900586687547
	.quad	0x3fed826b5396149b              # double 0.92217031789245441
	.quad	0x3fe36ab73bec46ee              # double 0.60677682594015692
	.quad	0x3fc89bfdb51d3254              # double 0.19226046889743265
	.quad	0x3fed7b474606c099              # double 0.92129863431002257
	.quad	0x3fec0915e0feb470              # double 0.87610906547855727
	.quad	0x3fecd95418e0a570              # double 0.90152935847178917
	.quad	0x3fcbf0a1ea5b45f4              # double 0.21828102057638399
	.quad	0x3fc55e51f5858a90              # double 0.16694092262612914
	.quad	0x3fe95e9d038881cb              # double 0.79279947938999251
	.quad	0x3fef5e1ded8b8d71              # double 0.98023888011486637
	.quad	0x3fb316a9ad69e928              # double 0.074564556920368674
	.quad	0x3fdb6622d46f2d0e              # double 0.42810889001403118
	.quad	0x3f6659e6137ea600              # double 0.002728413932307161
	.quad	0x3fe9826f2840137f              # double 0.79717214452158192
	.quad	0x3feeccb9883f609e              # double 0.96249081240513923
	.quad	0x3fb793350ed63c48              # double 0.092089954492835635
	.quad	0x3fd67c59c0223278              # double 0.35133975756688285
	.quad	0x3fe3451c1440729a              # double 0.60218624072475113
	.quad	0x3fe79c7783c25f69              # double 0.73784995779258822
	.quad	0x3fe2b787792d42f3              # double 0.58490346591324138
	.quad	0x3fdea6964eae6de2              # double 0.4789176720020959
	.quad	0x3feb35b95790bbe6              # double 0.85030810453997385
	.quad	0x3fe8bbca306f1f92              # double 0.77292355975895277
	.quad	0x3febc789ec15abac              # double 0.86810775862010336
	.quad	0x3fc7562ee1cbb178              # double 0.18231760049037482
	.quad	0x3fe4f5b6ce936f4f              # double 0.65499439570292306
	.quad	0x3f9bc052b3e3ad40              # double 0.0271008417411569
	.quad	0x3fd1e252628ff72a              # double 0.27943858742934202
	.quad	0x3fb36de34194cab8              # double 0.075895503531493769
	.quad	0x3fdb39dcbcb90674              # double 0.42540663175541416
	.quad	0x3feed6edbc921143              # double 0.96373640852156261
	.quad	0x3fe12b4268e22541              # double 0.53653069005046217
	.quad	0x3fec70963a021d12              # double 0.88874350862252727
	.quad	0x3fe9644c64aac646              # double 0.79349345838108643
	.quad	0x3fe953b2dc58d5c3              # double 0.79146712337995273
	.quad	0x3fe9ae9248d9a6e9              # double 0.80255998829417508
	.quad	0x3fb60da69c563e48              # double 0.086145795028863437
	.quad	0x3fe64176939468cb              # double 0.69549111198582503
	.quad	0x3fe43e6462f5fc79              # double 0.63261622741983026
	.quad	0x3fceed316c59677c              # double 0.24161355772485738
	.quad	0x3fca7fe89656745c              # double 0.20702845898350375
	.quad	0x3fd39c691c8dc210              # double 0.30642154491855056
	.quad	0x3fedc4de56174976              # double 0.93028179945603884
	.quad	0x3fd7c464236b442a              # double 0.37136176546943267
	.quad	0x3fbc27e4eebb44b8              # double 0.10998373821645913
	.quad	0x3fe170723df122c0              # double 0.5449763498118827
	.quad	0x3fe5c29de7c1157a              # double 0.68000693573473758
	.quad	0x3fd2e25c9c293496              # double 0.29506602525800341
	.quad	0x3feb7cfff0abd43e              # double 0.85900876051039865
	.quad	0x3fce8c4cf90b78a0              # double 0.23865663681403237
	.quad	0x3fdef941eec564e6              # double 0.48396347348678004
	.quad	0x3fdec23e83ed67a6              # double 0.48060572513133548
	.quad	0x3fec824051740e87              # double 0.89089980992180606
	.quad	0x3fcabac51e9e8850              # double 0.20882476801949901
	.quad	0x3fdb75a484813e90              # double 0.42905533733299084
	.quad	0x3fa6adea44dd7e00              # double 0.04429561701430984
	.quad	0x3fed394d838d0825              # double 0.91324496930633769
	.quad	0x3fa010194008ff70              # double 0.031372822825232016
	.quad	0x3fe70fe504ea0aba              # double 0.72069025955018806
	.quad	0x3feab1f953dfccc5              # double 0.83422533399279841
	.quad	0x3fe80ec92b6da08d              # double 0.75180490953518275
	.quad	0x3fee07315bdaaf48              # double 0.93837802830010108
	.quad	0x3f90619729835960              # double 0.015997278126485326
	.quad	0x3fe57cd1156f8f48              # double 0.67148641764331618
	.quad	0x3fe04bc5b6d894a1              # double 0.50924955093491431
	.quad	0x3fd6e7ca6eec532c              # double 0.35789738495195667
	.quad	0x3fe9548c928fbf91              # double 0.79157093644424681
	.quad	0x3fe1cffd6e45beb2              # double 0.55663939988695277
	.quad	0x3fdd4eabce593054              # double 0.45792670394144364
	.quad	0x3fe9991236950903              # double 0.79993544254855953
	.quad	0x3faf78452238b7f0              # double 0.061464462687908283
	.quad	0x3f969a52fd5e0800              # double 0.022073075022042588
	.quad	0x3fe9451635b10275              # double 0.78968344198808771
	.quad	0x3fca80134fc2e40c              # double 0.20703355211824748
	.quad	0x3fea4cc22b514e59              # double 0.82186993084401216
	.quad	0x3fe2a555a33ec8e5              # double 0.58268243678892573
	.quad	0x3fc059862acf4f68              # double 0.12773205843279389
	.quad	0x3fd06296c8263a2c              # double 0.25601739450295002
	.quad	0x3febefba17dcc354              # double 0.87301354084602644
	.quad	0x3fef78ed15ffafb5              # double 0.98351148888240536
	.quad	0x3fbdaef6f813b0a0              # double 0.11595099979939727
	.quad	0x3fe0f1c9b1810646              # double 0.52951512020826708
	.quad	0x3fe6ba71fcc4f15d              # double 0.71025943154340221
	.quad	0x3fd776d4db950c44              # double 0.36662789767814652
	.quad	0x3fe7dd9aa16ec384              # double 0.74580127267664453
	.quad	0x3fcc2d3bc3df51dc              # double 0.2201304155738758
	.quad	0x3feb7a0de17377e1              # double 0.85864919694335751
	.quad	0x3fee47bc45c5d075              # double 0.94625676753504584
	.quad	0x3fa511aa7936ea50              # double 0.041150405213063679
	.quad	0x3f9469e7b518e620              # double 0.019935245922374389
	.quad	0x3fdcb9755e13d5dc              # double 0.44881948649648762
	.quad	0x3fc8895f5c994be4              # double 0.19169227620531537
	.quad	0x3fe0ad5437c445ff              # double 0.52115832225734937
	.quad	0x3fe0d02fba3e1bc9              # double 0.52541338325033238
	.quad	0x3fbf78a37cc8ae60              # double 0.12293454929811665
	.quad	0x3fb3ccffdcbd9f10              # double 0.07734679354836893
	.quad	0x3fe0468712547e75              # double 0.50860932903374467
	.quad	0x3feab5fc3cd55995              # double 0.83471500283740119
	.quad	0x3fe82fe976256aa5              # double 0.75584862780973039
	.quad	0x3fe343c26522dc9a              # double 0.60202140572700391
	.quad	0x3feddb8a2b47f4c2              # double 0.93304928258262287
	.quad	0x3fd7cd16b7836606              # double 0.37189262315004645
	.quad	0x3fd9d7fb7514dab6              # double 0.40380751069771337
	.quad	0x3fcaeafea4ee9974              # double 0.21029646924325684
	.quad	0x3fdfd5110b601c2e              # double 0.49737955199128947
	.quad	0x3fd9873f522ad9f6              # double 0.39887984298857704
	.quad	0x3fecb019a803b3be              # double 0.8964966088802766
	.quad	0x3fd01dc9eab94252              # double 0.25181816026910042
	.quad	0x3fd6ca46ac144206              # double 0.35609595112421777
	.quad	0x3fe0d339330c24a8              # double 0.52578411073877351
	.quad	0x3fa2c6d1cdcc4010              # double 0.03667312276058976
	.quad	0x3fe155ab11df4c0c              # double 0.5417075490062202
	.quad	0x3fdd9fb1c2240384              # double 0.46287197073984765
	.quad	0x3fe36c703211b10b              # double 0.60698709277269935
	.quad	0x3fd6b849fd323ae8              # double 0.35499810911362184
	.quad	0x3f9cd873b6b6b880              # double 0.028169448878252457
	.quad	0x3fe936fd82293076              # double 0.7879626791195864
	.quad	0x3feb25bede3165e4              # double 0.84835761448919955
	.quad	0x3fd10ad3d51b2834              # double 0.26628585635319557
	.quad	0x3fdcb9428388487c              # double 0.44880736203152316
	.quad	0x3fbe40ad294792a8              # double 0.11817438371469768
	.quad	0x3fed3fef65d962e0              # double 0.91405458347716361
	.quad	0x3fd1be07da51a03e              # double 0.27722355194282844
	.quad	0x3fc3c9b53363dbc4              # double 0.15459313401490082
	.quad	0x3fe1676df465f302              # double 0.54387567266493897
	.quad	0x3feaf97a35a17497              # double 0.84295378184073655
	.quad	0x3fd208ce2ae86668              # double 0.28178743543830942
	.quad	0x3fe74157769314d3              # double 0.72672627600754891
	.quad	0x3f97c5b9e3ad2480              # double 0.023215202828656079
	.quad	0x3feaa3dcc81f6ba0              # double 0.8325027378699481
	.quad	0x3fdb2880227fc92a              # double 0.42434695595797456
	.quad	0x3fc2a0e6bab2358c              # double 0.14553531757375671
	.quad	0x3fd776e221a6e6f2              # double 0.36663106237720833
	.quad	0x3fbc6d5a88444a30              # double 0.11104360415291903
	.quad	0x3fd816d7e086d20a              # double 0.37639424253873754
	.quad	0x3fc203661c0361d4              # double 0.1407287251265773
	.quad	0x3f798a9f51309d80              # double 0.0062357161832901076
	.quad	0x3fe52002185e23ec              # double 0.66015724906276096
	.quad	0x3fd298759ced9216              # double 0.29055538487435351
	.quad	0x3fb2b22f7cb780e8              # double 0.073031394909324754
	.quad	0x3fde09fafe55c874              # double 0.46935915791903615
	.quad	0x3fe9c7e157091de9              # double 0.8056494426645574
	.quad	0x3feae0b594cf3836              # double 0.83993033470483769
	.quad	0x3fdf47a1280ec4be              # double 0.48874691879161591
	.quad	0x3fd036da00524df0              # double 0.25334787398716596
	.quad	0x3fdaf7db30df44b4              # double 0.42137794277830243
	.quad	0x3fbeeac70f5ab4d8              # double 0.12076992153989197
	.quad	0x3fedec5d18db23e1              # double 0.93510298590365093
	.quad	0x3fdea4edf6379760              # double 0.47881650013584043
	.quad	0x3fea87e018c62d59              # double 0.82908634985634955
	.quad	0x3feaacb9acdb1961              # double 0.83358463059338928
	.quad	0x3fd0caa2962be98e              # double 0.26236786523045275
	.quad	0x3fee1a516f27e51a              # double 0.94071265897869982
	.quad	0x3fe1707509083bdd              # double 0.54497768177122519
	.quad	0x3fdb8e0dd1d9ada6              # double 0.43054528706735551
	.quad	0x3fe4d0ab2476b353              # double 0.65047223207293781
	.quad	0x3fc72c53beee3db8              # double 0.18104025671753532
	.quad	0x3fe3ca8df5a9011a              # double 0.61847589474203635
	.quad	0x3fe13171dda3ff35              # double 0.53728574074918944
	.quad	0x3fdc12fe6ac723c2              # double 0.43865929057625064
	.quad	0x3fe531a4ddb95084              # double 0.66231005959936384
	.quad	0x3fad83f5e4e4bec0              # double 0.057647403899293348
	.quad	0x3fd815db24a5a3da              # double 0.3763339860802809
	.quad	0x3fea4b94fca6967e              # double 0.82172631593557788
	.quad	0x3fd260b354804448              # double 0.28715213062338707
	.quad	0x3fc6639c2c611678              # double 0.17491485754924319
	.quad	0x3fec30f50e55814b              # double 0.88097622680292298
	.quad	0x3fc1681284865258              # double 0.13598853560383151
	.quad	0x3fd9c3329b86d9c8              # double 0.40253892124328816
	.quad	0x3fecc40d65551729              # double 0.89893216887933136
	.quad	0x3fc6f9fe0138e00c              # double 0.17950415668178754
	.quad	0x3fea1d4ede3f356f              # double 0.81607764632796698
	.quad	0x3fe1986bb5585bdc              # double 0.54985604685759482
	.quad	0x3feb8e431c74da9b              # double 0.86111598546888801
	.quad	0x3fb3ba028b1b02e8              # double 0.077057036362940701
	.quad	0x3fc9e86a14d0b6dc              # double 0.20240522400256722
	.quad	0x3fd51955fa71ea0c              # double 0.3296713777305349
	.quad	0x3fec8ef493a6bd84              # double 0.89245060766363382
	.quad	0x3fed0e8878e34538              # double 0.90802405939954323
	.quad	0x3fc3a3c974fd5578              # double 0.15343588077909565
	.quad	0x3fe5c3d5a9bff4be              # double 0.68015559343589138
	.quad	0x3fb71b217c86d0a0              # double 0.090257733251578376
	.quad	0x3feda3107727d62b              # double 0.92615531227665338
	.quad	0x3feaea6b22afe04e              # double 0.84111553931053051
	.quad	0x3fe70a674fb28d26              # double 0.72001996580039385
	.quad	0x3febaadb158721b9              # double 0.86460642056140735
	.quad	0x3fe1c19344b4f91d              # double 0.5548797933513786
	.quad	0x3fc6fbb25050a608              # double 0.1795561687625169
	.quad	0x3f863fa2c9d3c400              # double 0.010863563331868775
	.quad	0x3fea505412dbf662              # double 0.82230571444933909
	.quad	0x3fe969fb3ae2460e              # double 0.79418717861898513
	.quad	0x3fee23339ac81d07              # double 0.94179706793593787
	.quad	0x3f95988d8c486cc0              # double 0.021089755713643354
	.quad	0x3fde727082028ed6              # double 0.47573483177459985
	.quad	0x3fd31299a46bdbf4              # double 0.29801026398439423
	.quad	0x3fd5ddd515cc4a52              # double 0.34166457298957653
	.quad	0x3fe690210a6ebac6              # double 0.70509388005833595
	.quad	0x3fee82d2e90b2a98              # double 0.95346971050578854
	.quad	0x3fb82f9e834df700              # double 0.094476611191534942
	.quad	0x3f984265eb3a98e0              # double 0.023690788728935597
	.quad	0x3fdc0846e919a758              # double 0.43800518764202456
	.quad	0x3fd9e0fb56b28016              # double 0.40435679880647635
	.quad	0x3fc8505ff029fb08              # double 0.18995284296757853
	.quad	0x3fca18d1582040b8              # double 0.20388237765337691
	.quad	0x3fe00941b4693e25              # double 0.50112996326965187
	.quad	0x3fe978b6bf5e8d9f              # double 0.7959855783159816
	.quad	0x3fd6d810ef35fb78              # double 0.35693763122974742
	.quad	0x3fdd624e4467543c              # double 0.45912510566751386
	.quad	0x3fa11c15aedc34f0              # double 0.033417394252049593
	.quad	0x3fd762e88d3ba5ec              # double 0.36541188995633322
	.quad	0x3fe74d2b06c4a23c              # double 0.7281699306668723
	.quad	0x3f8ef0943a3c6440              # double 0.015107305552691241
	.quad	0x3fb6f65d1b42ac20              # double 0.089696711688404651
	.quad	0x3fda0aa3b80d2be6              # double 0.40689938520216484
	.quad	0x3fe0ea33cf36c480              # double 0.52858915778610083
	.quad	0x3fc1293018331e3c              # double 0.13406945401787762
	.quad	0x3fe29266eae97819              # double 0.58037134057281314
	.quad	0x3fd915ff3e56f49c              # double 0.39196759307726281
	.quad	0x3fce501917aa1a68              # double 0.2368193975018642
	.quad	0x3fcecc7bf990d7a8              # double 0.24061536489324209
	.quad	0x3fc3999b7fdcc44c              # double 0.1531252264335613
	.quad	0x3f878c266f261f40              # double 0.011497783915515591
	.quad	0x3feef0e8e655c865              # double 0.9669079302532394
	.quad	0x3fef0475f4166c47              # double 0.96929452584607467
	.quad	0x3fc09dd2f8968a98              # double 0.12981640947426309
	.quad	0x3fdb6eabea2c94aa              # double 0.42862985485619254
	.quad	0x3fcb9519af81e338              # double 0.21548768109985317
	.quad	0x3fd97cae1deb7a56              # double 0.39823487207278185
	.quad	0x3fad7050ce560850              # double 0.05749752539397035
	.quad	0x3f8be1bd97345800              # double 0.013614159752744825
	.quad	0x3fdf83f9a070c922              # double 0.49243012111687012
	.quad	0x3fe6cfbfd4701e3b              # double 0.71286002628125489
	.quad	0x3fd3557381e722e8              # double 0.30209052739932796
	.quad	0x3fed6ee7bb9fb1b5              # double 0.91978823323511583
	.quad	0x3fc5132c68fcef8c              # double 0.16464762808197653
	.quad	0x3fdc23a7bf2e8c12              # double 0.43967622442340926
	.quad	0x3f7ad88cbc614300              # double 0.0065541741842742862
	.quad	0x3fdc413c221206b2              # double 0.4414816220015424
	.quad	0x3fed5d85f8cc7385              # double 0.91766642182811664
	.quad	0x3fe00e24651ad83f              # double 0.50172633883517637
	.quad	0x3fe7b877b7c6bb30              # double 0.74126802343184828
	.quad	0x3fe8162dedd0f426              # double 0.75270744751435781
	.quad	0x3feb001cfa708648              # double 0.84376381792044075
	.quad	0x3fd44216e6d3f67a              # double 0.31653378049654857
	.quad	0x3fde8833c07454e8              # double 0.47706311983468064
	.quad	0x3fe4a8d06d1b06a6              # double 0.64560719785386733
	.quad	0x3fce4a25db7715dc              # double 0.23663781372140036
	.quad	0x3fd5dd4f9df74f66              # double 0.34163275171635232
	.quad	0x3feff56ef282d8d6              # double 0.9987101303620658
	.quad	0x3fe9240c2526c7c8              # double 0.78565032249593347
	.quad	0x3fe4daed00271d7f              # double 0.65172433881609482
	.quad	0x3fd0098d0f235d3a              # double 0.25058294752439603
	.quad	0x3fe1907eb0554460              # double 0.54888853492787959
	.quad	0x3fd466eddbea8d58              # double 0.31878229595368657
	.quad	0x3feadf0a1fe75068              # double 0.83972650748411315
	.quad	0x3fd35bdbafed6280              # double 0.30248157673262455
	.quad	0x3fe0389f2d40307e              # double 0.50691183889422553
	.quad	0x3fd5071c6ccc622a              # double 0.32855902314034557
	.quad	0x3fea21d2c36548cb              # double 0.81662882006846738
	.quad	0x3fe6818f34218e3c              # double 0.70331535512781995
	.quad	0x3fe2058df642dc2c              # double 0.56317804429898422
	.quad	0x3fe0bf71950c4b7a              # double 0.52336958990996085
	.quad	0x3fe70102c2d66446              # double 0.71887338689988023
	.quad	0x3f8b0f3d8cc01a00              # double 0.013212662561284283
	.quad	0x3fddbca7c8eac6f2              # double 0.46463961239633911
	.quad	0x3f913a0ba6442160              # double 0.016822988532142147
	.quad	0x3fbd86a4a7daaf98              # double 0.11533574197772933
	.quad	0x3fe6387cb5c30ec6              # double 0.69439540386562082
	.quad	0x3fed2a5e5a7ea27f              # double 0.9114219443773236
	.quad	0x3fed2cf8502c4ef2              # double 0.91173949869923221
	.quad	0x3fec79785b4d21e8              # double 0.88982789833340536
	.quad	0x3fe4c5f9cf4b2f44              # double 0.64916697012947866
	.quad	0x3fe4ed55d9a20459              # double 0.65397160059377335
	.quad	0x3fd52bc768850b6c              # double 0.33079705435755247
	.quad	0x3feb9ba4886455e3              # double 0.86274935378122242
	.quad	0x3feff57cba329ee4              # double 0.99871670119042876
	.quad	0x3fe7ebb456405ddd              # double 0.74752251478178844
	.quad	0x3fe155cc901471cb              # double 0.54172351971242827
	.quad	0x3fb1f3accc2eaaf0              # double 0.070124435280984221
	.quad	0x3fd542155b0435ba              # double 0.33215841186833084
	.quad	0x3fea100809ec8b18              # double 0.81445695818215125
	.quad	0x3fdea826a156ece6              # double 0.47901311641517308
	.quad	0x3fde0b2028caa7ca              # double 0.46942905410344038
	.quad	0x3fe25c0d9b6ca1fa              # double 0.57373695713346184
	.quad	0x3fe0275aafd6e3a6              # double 0.50480398505816448
	.quad	0x3fc78747a20c4634              # double 0.18381591236588835
	.quad	0x3fa8da8ed81ef820              # double 0.048542465097384246
	.quad	0x3fed8c0f31ecf806              # double 0.92334708930116061
	.quad	0x3fdce881377fe9a8              # double 0.45169096393478947
	.quad	0x3fa9d1d7a41f3920              # double 0.050429095062656026
	.quad	0x3fe8c8757df298bd              # double 0.77447008704327625
	.quad	0x3fe70f831baa8711              # double 0.72064357188739525
	.quad	0x3fe8c4ae39409113              # double 0.77400885755608539
	.quad	0x3fe9c727f7038342              # double 0.80556104893558023
	.quad	0x3fe7bfe8941c3a84              # double 0.74217633178507514
	.quad	0x3fe0bda90668424c              # double 0.52315188647669109
	.quad	0x3fd3ebbf8b684f08              # double 0.31126392950066917
	.quad	0x3fe54bc7f1741873              # double 0.66550061377416936
	.quad	0x3fdc3f5ca83263a8              # double 0.44136730599853502
	.quad	0x3fdf9840f0882d00              # double 0.49366782655188501
	.quad	0x3fc7aea6a1b55cec              # double 0.18501742263718002
	.quad	0x3feb0c5bb0804523              # double 0.84525856469023031
	.quad	0x3fc5b70c14a1ff3c              # double 0.1696486569162462
	.quad	0x3fd8018c0b6a1022              # double 0.37509442438772755
	.quad	0x3fb49b59b3a17e38              # double 0.08049545894163479
	.quad	0x3fe4085b0d9df7c9              # double 0.62601998004515125
	.quad	0x3fd9db2674c62554              # double 0.40400086787902478
	.quad	0x3fefe89af323dcd0              # double 0.99714419830606893
	.quad	0x3fb65e3fbd388a60              # double 0.08737562532091081
	.quad	0x3fc25fefc93d9364              # double 0.14355275465200201
	.quad	0x3fa9e3e047518c30              # double 0.050566681581380002
	.quad	0x3fe034791d1a7de2              # double 0.50640540775560461
	.quad	0x3fe462b131156bda              # double 0.6370473822274747
	.quad	0x3fd06523cb6442f8              # double 0.25617308485475077
	.quad	0x3fe9b17a9a855476              # double 0.80291490726325665
	.quad	0x3fedc1fe5bd2f294              # double 0.92993085798623775
	.quad	0x3fec44aab3e2de12              # double 0.88338217863105428
	.quad	0x3fdd33daa2e74ca0              # double 0.45628991993471324
	.quad	0x3fedc1efee0489ca              # double 0.92992397773587609
	.quad	0x3fcdb1dff6e412a4              # double 0.23199080996723354
	.quad	0x3feeecd1f3dfe405              # double 0.96640870696785496
	.quad	0x3fe427c2759af8fa              # double 0.62985346765324768
	.quad	0x3fe7afe274479404              # double 0.74022028647289106
	.quad	0x3fec3ac9bfc962f5              # double 0.88217627962430234
	.quad	0x3fd393e33c2efab2              # double 0.30590134503647015
	.quad	0x3fd7cf1a34cc0794              # double 0.37201552539783589
	.quad	0x3fe99d29d836178c              # double 0.80043499211090951
	.quad	0x3fc13c87ef067b7c              # double 0.13465975924642837
	.quad	0x3fa2827f016c3d90              # double 0.03615185634964313
	.quad	0x3fe537a90a025598              # double 0.66304447131067246
	.quad	0x3fe5c4638d10e08a              # double 0.68022325088442526
	.quad	0x3fe9db473395458f              # double 0.80801734995672969
	.quad	0x3fd6b8f5814e7e6c              # double 0.35503900172805092
	.quad	0x3fb348c0ba4600e8              # double 0.075328870274464443
	.quad	0x3fe160ac005109c0              # double 0.54305076658084062
	.quad	0x3fd47ba01a101546              # double 0.32004549546430316
	.quad	0x3fdcd2551ef7784e              # double 0.45033767723169127
	.quad	0x3fd0c97b3556e0c6              # double 0.26229744156763635
	.quad	0x3fe558300548e4c6              # double 0.66701508552719058
	.quad	0x3f8424ae7c1e4240              # double 0.0098355895641201174
	.quad	0x3fdc7d0af303f2c0              # double 0.44513200504279027
	.quad	0x3fe8330ab1a4fe34              # double 0.75623068519775538
	.quad	0x3fe867a8c1e41151              # double 0.76265371198000242
	.quad	0x3fc57c0c05270344              # double 0.16784811259824484
	.quad	0x3fd0eaa16806dab4              # double 0.26432070883621894
	.quad	0x3fc49415e6d3f000              # double 0.16076921244518871
	.quad	0x3fd12aa946599f8c              # double 0.2682288348209958
	.quad	0x3fd7207a7b8c3954              # double 0.36135732712945878
	.quad	0x3feefaa646a9f106              # double 0.9680968647149093
	.quad	0x3fbe602d651b6b40              # double 0.11865504949984729
	.quad	0x3fd07428c56ea260              # double 0.25708979874119642
	.quad	0x3fec26da15cd9388              # double 0.87974266298680082
	.quad	0x3fedb351ba147614              # double 0.92813955634818734
	.quad	0x3fd74ccae9d3fcac              # double 0.36406205019734261
	.quad	0x3fc0d86ddf89f06c              # double 0.13160489478093795
	.quad	0x3fe54430263022a9              # double 0.66457374056434049
	.quad	0x3fe215ae96f983e3              # double 0.56514672744026162
	.quad	0x3fe41f67eca8eac4              # double 0.62883373472808346
	.quad	0x3fc56204e8bbb39c              # double 0.16705380786825408
	.quad	0x3fce4fd59bcd0d20              # double 0.23681135280103494
	.quad	0x3fda761c4cd58a74              # double 0.41345889571508754
	.quad	0x3fde114be7c2d55e              # double 0.46980569489399737
	.quad	0x3fc3b8c010e37c3c              # double 0.15407563042296768
	.quad	0x3fe3c51af64a9fa5              # double 0.61781070808227823
	.quad	0x3fe791f506709923              # double 0.73656703241139032
	.quad	0x3fb8336bff0120b0              # double 0.094534635312018222
	.quad	0x3fe727a7b396c266              # double 0.72359070850332041
	.quad	0x3fb977a8151aab90              # double 0.099482064392459657
	.quad	0x3fbf42a65cd2f3f0              # double 0.12211074606143746
	.quad	0x3fba3ee6216dceb0              # double 0.1025222617734538
	.quad	0x3fe0950ee5934c29              # double 0.51819557990018439
	.quad	0x3fe3a206f943af79              # double 0.61352871593906777
	.quad	0x3fea52ca4c8f798f              # double 0.82260622933590521
	.quad	0x3fd73d431974f4b0              # double 0.36311414228459693
	.quad	0x3fe1eb754b1ef3e5              # double 0.55999245330860659
	.quad	0x3fe6a5673d26b593              # double 0.70769082969279606
	.quad	0x3fd4f8bec8618874              # double 0.32768220489936728
	.quad	0x3fb373f8605f1430              # double 0.075988315132307304
	.quad	0x3fe49e7c538492c8              # double 0.64434639274676275
	.quad	0x3fd2fe26af0f9ed0              # double 0.29676215263178296
	.quad	0x3feb52ac0589e156              # double 0.85384179193264731
	.quad	0x3fc2a994af7474c4              # double 0.14580019538053623
	.quad	0x3feda975bea2f8e1              # double 0.92693602784836682
	.quad	0x3fda5fe4df2d967a              # double 0.41210290713056674
	.quad	0x3fe7a2a3efdc6d2f              # double 0.73860356185779164
	.quad	0x3fee5f8ddea3b32b              # double 0.94916432842510312
	.quad	0x3feee3120b4b1133              # double 0.96521856504162995
	.quad	0x3fecf16e92fa195b              # double 0.90447167116580418
	.quad	0x3fdfdd11b73f4d98              # double 0.49786799330942122
	.quad	0x3fc173f0f8f05d1c              # double 0.13635074763508548
	.quad	0x3fb747e277581ed8              # double 0.090940622460148446
	.quad	0x3fbfaf51b10748c0              # double 0.12376890727981316
	.quad	0x3feda37dc4eb3ac7              # double 0.92620743237224523
	.quad	0x3feed5226df0ddba              # double 0.96351739380673185
	.quad	0x3feab674a8bd1ff6              # double 0.83477242428580101
	.quad	0x3fd4285116241150              # double 0.31496073877521713
	.quad	0x3fc78911af13a0d0              # double 0.18387051628747608
	.quad	0x3fe0ddd994b489e9              # double 0.52708128971090418
	.quad	0x3fef9d282849590f              # double 0.98793418758831019
	.quad	0x3fb7e4f65a76d5c0              # double 0.093337437711702442
	.quad	0x3fd2fac7eb1a1a50              # double 0.29655645331550762
	.quad	0x3f83b7624a094f80              # double 0.0096271208614451264
	.quad	0x3fe85d187c0ab2b3              # double 0.76136421420013389
	.quad	0x3fe9a86d06c7b4fd              # double 0.8018098003791746
	.quad	0x3fbad823f466d108              # double 0.10486054150425528
	.quad	0x3fca9e9757b06d1c              # double 0.20796481877992157
	.quad	0x3fee6e9930b3b4ca              # double 0.95100078117470699
	.quad	0x3fe9a259e10dd69d              # double 0.80106824832792578
	.quad	0x3fe8efed39a79e72              # double 0.77928792248435585
	.quad	0x3fcbd3bc22568f08              # double 0.2173991363207437
	.quad	0x3fb943fc3b578e90              # double 0.098693623054311396
	.quad	0x3fe34fc8c2a49e77              # double 0.60348928467006047
	.quad	0x3fd7414b2adbbdc2              # double 0.36336020646464473
	.quad	0x3fd0a98bf09abce8              # double 0.26034830566909628
	.quad	0x3fc2aaddc7323d60              # double 0.14583942629222246
	.quad	0x3fc979a51543583c              # double 0.19902480638728715
	.quad	0x3febe0fb185d712d              # double 0.87121348151007327
	.quad	0x3fc102e4444e4ca8              # double 0.13290074668166096
	.quad	0x3fd7f842b0b0779c              # double 0.37452761893097786
	.quad	0x3fe57950f4e1b311              # double 0.6710591109127525
	.quad	0x3fe9da33d77687c9              # double 0.80788604815119769
	.quad	0x3fe918ce8b3556d1              # double 0.78427817525035881
	.quad	0x3fdeea5b382b65bc              # double 0.48305397496514124
	.quad	0x3febcba8f17249f6              # double 0.86861083180912035
	.quad	0x3fc47c5cc4664ae4              # double 0.16004523839782003
	.quad	0x3fdd314c543594ec              # double 0.45613392089428717
	.quad	0x3fd2761bb4f0b970              # double 0.28845875425294931
	.quad	0x3fe45ce605c7ecb6              # double 0.63634015206425576
	.quad	0x3fd9aea2982c6128              # double 0.40128388271979754
	.quad	0x3fd243749501c152              # double 0.28536715079737462
	.quad	0x3fe8d8be92c80835              # double 0.77645805996167516
	.quad	0x3fba01588af5ff80              # double 0.10158303635216548
	.quad	0x3fecf750967e4ac8              # double 0.9051897944758247
	.quad	0x3fce9e827a1be790              # double 0.23921233141282672
	.quad	0x3fe02d36ce710fa5              # double 0.50551929779657157
	.quad	0x3fa7d34991c93dd0              # double 0.046533869787363735
	.quad	0x3f914978d98a3700              # double 0.016881836202222722
	.quad	0x3fc32e23e35a52ec              # double 0.14984558678829474
	.quad	0x3fd3ae32173cea02              # double 0.30750705975847847
	.quad	0x3fec39a7e2663164              # double 0.88203806131927509
	.quad	0x3fdfa4b4f3c83988              # double 0.49442790800903724
	.quad	0x3fef1acdbb33b9be              # double 0.9720219284334275
	.quad	0x3feda6afd60fe9f4              # double 0.92659751709953619
	.quad	0x3fe68bc5565609c6              # double 0.70456187117115898
	.quad	0x3fd22f303d84fe48              # double 0.28413015373005068
	.quad	0x3fdce44bdf1d0e70              # double 0.45143410480907331
	.quad	0x3fd3c9a2b78fb6bc              # double 0.30918186117092339
	.quad	0x3fc739579cc51b50              # double 0.18143744616301172
	.quad	0x3fe08f4e5660662b              # double 0.5174934088747184
	.quad	0x3fd3a33b0ba7dbfe              # double 0.30683780802013405
	.quad	0x3fef304fd2e30ecb              # double 0.9746474379430422
	.quad	0x3fd4870769905828              # double 0.32074151333779577
	.quad	0x3f6f2debd21aa600              # double 0.003806076609937703
	.quad	0x3fd061fe064c122c              # double 0.25598097434002187
	.quad	0x3fcd61e77858c704              # double 0.22955029846485087
	.quad	0x3fc9a024b2ececd4              # double 0.20019968735309723
	.quad	0x3fd37b1ef2be948c              # double 0.30438970284951306
	.quad	0x3f9be55250ea0220              # double 0.027241979778866221
	.quad	0x3fd5971ca815fee6              # double 0.33734814085617726
	.quad	0x3fefb39b6c7c647e              # double 0.99067469776777251
	.quad	0x3fc1a90a84432214              # double 0.13797122438542486
	.quad	0x3fef39913fb27cc1              # double 0.97577726784575002
	.quad	0x3fe13742d2b489a5              # double 0.53799573090900721
	.quad	0x3fd2467ba46065f4              # double 0.28555193951032654
	.quad	0x3fe431668bcc94e7              # double 0.63103034309883987
	.quad	0x3fe9cfa3582ee65c              # double 0.80659644339830149
	.quad	0x3fed8752e0fe19fa              # double 0.92276901191581762
	.quad	0x3fdadcd43448ca54              # double 0.41972832780735314
	.quad	0x3f981fa2af6db040              # double 0.02355817981462871
	.quad	0x3fcc39d07743d4e4              # double 0.22051435302242972
	.quad	0x3fbd74b2648af0b0              # double 0.11506190256744975
	.quad	0x3fd086e36b6b8dfe              # double 0.2582329319977531
	.quad	0x3fe98e98159c0b93              # double 0.79865650387397336
	.quad	0x3fc02e8f23e990e0              # double 0.12642087224515475
	.quad	0x3fe624d5d3b96cef              # double 0.69199649193197199
	.quad	0x3fedc9f92f3b6530              # double 0.93090495324137201
	.quad	0x3fe210e5d40c5796              # double 0.56456271567980099
	.quad	0x3fe30fb70d3eb171              # double 0.59566834055799067
	.quad	0x3fd5cf367519c0d0              # double 0.34077226100545221
	.quad	0x3fa50265fb7a8220              # double 0.041033923099579761
	.quad	0x3feca9ac6d4f51aa              # double 0.89571210240915389
	.quad	0x3fd9d2713d609042              # double 0.40346938127391152
	.quad	0x3fe5b231dbabbf3d              # double 0.67800228981466371
	.quad	0x3fe032dce797c481              # double 0.50620885117508874
	.quad	0x3f9421ae0bc32fe0              # double 0.019659728496478013
	.quad	0x3fb83f296501b068              # double 0.094713771018804516
	.quad	0x3fe96cbb949b127d              # double 0.79452303909836497
	.quad	0x3fdfddfa66365e8a              # double 0.49792346936872234
	.quad	0x3fa2693fd6d55e50              # double 0.035959238981999264
	.quad	0x3fe87712605f9a0a              # double 0.76453512976587601
	.quad	0x3fb7198096eeea38              # double 0.090232884262982149
	.quad	0x3feab33ee2a5f6cf              # double 0.83438057200666005
	.quad	0x3fef699c5d665016              # double 0.98164194337960242
	.quad	0x3febe2546fe51c20              # double 0.87137815336689428
	.quad	0x3fee886bb0741613              # double 0.95415291274611247
	.quad	0x3fe29e0237b2c87d              # double 0.58178816679561829
	.quad	0x3fb71fa631d12e10              # double 0.090326678430919793
	.quad	0x3fd646bde8000826              # double 0.3480677381159033
	.quad	0x3fe6c9cbabb8cde9              # double 0.71213325061256427
	.quad	0x3fe6cb4a9969e625              # double 0.71231584514243151
	.quad	0x3feef8314e2cacb0              # double 0.9677969481321238
	.quad	0x3fd902cac1a10f08              # double 0.39079541119666361
	.quad	0x3fd13dca6a215946              # double 0.26939640392574338
	.quad	0x3fe43823223993f5              # double 0.63185269054940696
	.quad	0x3fd572b0996bc550              # double 0.3351251123668435
	.quad	0x3fcb00cacb396a34              # double 0.2109616749101676
	.quad	0x3fdf51e8af7fb68a              # double 0.48937432421266946
	.quad	0x3f8b61f3177dab40              # double 0.01337041774214287
	.quad	0x3fcadd8cd69152a4              # double 0.20988617398201825
	.quad	0x3fb0f1984672d920              # double 0.066186444472667194
	.quad	0x3fddf0fdc6df8d54              # double 0.46783394261566014
	.quad	0x3fec306040c376f7              # double 0.88090527199866997
	.quad	0x3fc16cb1aa8fd2b0              # double 0.13612957790578184
	.quad	0x3fa387edd69f79b0              # double 0.038146431397524494
	.quad	0x3fc75046be4306e8              # double 0.18213733949783451
	.quad	0x3fe3b37ef4b58a8e              # double 0.6156611232257363
	.quad	0x3fe409a3ec8d7817              # double 0.62617679788286551
	.quad	0x3fe9549017759517              # double 0.79157261449714411
	.quad	0x3fd53744a1abb28c              # double 0.3314982966246951
	.quad	0x3fee745005453ca7              # double 0.95169831303964691
	.quad	0x3fd9e87892239316              # double 0.40481390258200756
	.quad	0x3fe6ef8227eb9407              # double 0.71673686787528446
	.quad	0x3fe5fa8a32556e42              # double 0.68683347540667961
	.quad	0x3fdec47bf3c061a2              # double 0.4807424431214945
	.quad	0x3fe25951343db311              # double 0.573402978928785
	.quad	0x3fd6c670ef97348a              # double 0.35586188695453613
	.quad	0x3fd4a9d8e67181ae              # double 0.32286665443646256
	.quad	0x3fecf761a4797f57              # double 0.90519792674966026
	.quad	0x3fed757e212658aa              # double 0.92059236979072989
	.quad	0x3fe1f4f10f4e1952              # double 0.56115010251304853
	.quad	0x3fd98de8918e5c80              # double 0.39928640570128238
	.quad	0x3fcde1d9019291d0              # double 0.23345482422622732
	.quad	0x3fda451b58726d08              # double 0.41046794545555132
	.quad	0x3febaafee538cf0b              # double 0.86462349672226091
	.quad	0x3fdd454ed628f7b0              # double 0.45735522188248989
	.quad	0x3fbf3404ea955bb8              # double 0.12188750006804028
	.quad	0x3fb7145a00b17948              # double 0.090154290360691225
	.quad	0x3fdeefceba80c36a              # double 0.48338669026548209
	.quad	0x3fe1539fc0ff144b              # double 0.5414580125294689
	.quad	0x3febad75a6f6f8d8              # double 0.86492426500606268
	.quad	0x3fefbe8d9d5501bc              # double 0.99201088646810076
	.quad	0x3fbc437834a3c4e8              # double 0.1104045036807012
	.quad	0x3fd31a811c74ecb2              # double 0.29849269656160538
	.quad	0x3fea5c1076cb5a98              # double 0.82373831941625308
	.quad	0x3fd56ff214f354d6              # double 0.33495761915157851
	.quad	0x3fcb98f376d709e8              # double 0.21560519507154585
	.quad	0x3fe0202c917bed30              # double 0.50392750182019164
	.quad	0x3fd5bdc815633d0e              # double 0.33970834816587192
	.quad	0x3f8583620ce61640              # double 0.010504499453200755
	.quad	0x3fe781b27e3dd43e              # double 0.73458218246981466
	.quad	0x3f96556154ffbe60              # double 0.021810074627806819
	.quad	0x3feb4405d9841b3d              # double 0.85205357059098896
	.quad	0x3fee863aa7f76b89              # double 0.95388539129213357
	.quad	0x3fe1a725e50c3040              # double 0.55165381179677553
	.quad	0x3fd83f17181fd7a6              # double 0.37885072093865302
	.quad	0x3fe2886aa42afe7f              # double 0.57915241302539744
	.quad	0x3fc655e2cfb1261c              # double 0.17449603215418186
	.quad	0x3fd5819a76a6160e              # double 0.33603536211771334
	.quad	0x3fbded8a86889cd0              # double 0.11690583977234614
	.quad	0x3fb0f96732f7daa0              # double 0.066305589621928451
	.quad	0x3fc66c3dc4a30370              # double 0.17517826177029461
	.quad	0x3fe8cf75e765ed76              # double 0.77532477564766
	.quad	0x3fdb535700f688b4              # double 0.42696166128201729
	.quad	0x3fec356e02e55e26              # double 0.8815221840440628
	.quad	0x3fe6bd53c641e6f2              # double 0.71061123582987151
	.quad	0x3fc38e0b8760bc40              # double 0.15277237043616942
	.quad	0x3febcf308b530ce9              # double 0.8690417023830409
	.quad	0x3fe7babdc97d7ffe              # double 0.74154557565270784
	.quad	0x3fe37e025741f92e              # double 0.60913197557946375
	.quad	0x3fec336fc68a2c06              # double 0.88127888467113347
	.quad	0x3fef31d3bb9836f8              # double 0.97483240737503162
	.quad	0x3fc4c228b87abfa8              # double 0.1621752644327874
	.quad	0x3fe3b73f2c6e9987              # double 0.61611899068957221
	.quad	0x3fbab1b89171fe58              # double 0.10427430678282101
	.quad	0x3fe64149c2687069              # double 0.69546974153810226
	.quad	0x3fe27e2ee6365609              # double 0.57790322268800864
	.quad	0x3fe8f70a6897af27              # double 0.78015633037782528
	.quad	0x3fe80e1ba46e206f              # double 0.75172216525335311
	.quad	0x3fcbc09ed6902838              # double 0.21681580998148475
	.quad	0x3fc0ce7fdf7c6004              # double 0.13130186474222694
	.quad	0x3fefac064dc7652d              # double 0.98974909964741686
	.quad	0x3fe9ccf732fc54d9              # double 0.80627021749628647
	.quad	0x3fe290d295d1cfb5              # double 0.58017853986392842
	.quad	0x3fc0c8e03c7bf538              # double 0.13113024667101469
	.quad	0x3fecd9ff78fbdcdf              # double 0.9016110766378026
	.quad	0x3fe980c9cc7c3c02              # double 0.79697122515233354
	.quad	0x3fd69b605c6b1f8e              # double 0.35323342347373277
	.quad	0x3fdf5d7da0b718c2              # double 0.49008122153135159
	.quad	0x3fe3113bcf0c2c60              # double 0.59585371436095258
	.quad	0x3fd7a83906af8f36              # double 0.36964250233562568
	.quad	0x3fca8b73561a4ab8              # double 0.20738069252236868
	.quad	0x3feb6b8bf74eb8a9              # double 0.85687826444861515
	.quad	0x3fdb2b222db7e296              # double 0.42450766052892541
	.quad	0x3fbd7b3279a18170              # double 0.11516108960632265
	.quad	0x3fdd935552f76018              # double 0.46211751081637109
	.quad	0x3feb1020874bd28c              # double 0.84571863579783856
	.quad	0x3fe36cd594ec5dfe              # double 0.60703543745597677
	.quad	0x3fe2512a01cbf476              # double 0.57240772581975707
	.quad	0x3fe7e5b0bcf1ac96              # double 0.74678837683804278
	.quad	0x3fcda0f8ef562f3c              # double 0.23147498785362497
	.quad	0x3febea26f14a7deb              # double 0.87233302237649235
	.quad	0x3fe356b1d129d6aa              # double 0.60433283664925352
	.quad	0x3fc163b752634710              # double 0.13585559389917323
	.quad	0x3fe456ad344b7311              # double 0.63558063710988411
	.quad	0x3fed9bf1e62d56f9              # double 0.92528624493090128
	.quad	0x3feae0be80b31f18              # double 0.83993458878191785
	.quad	0x3fd2a7d1560bc5a2              # double 0.29149278071334994
	.quad	0x3fe6f83fa0265250              # double 0.71780377654301653
	.quad	0x3fd1d968e5a03396              # double 0.27889463829415584
	.quad	0x3fe699cd27dc7cb6              # double 0.70627458367734763
	.quad	0x3fb08e4c7f4ca898              # double 0.064671307639090236
	.quad	0x3fd338b519ae6fde              # double 0.30033614643047979
	.quad	0x3feb658dc49be515              # double 0.85614670181454022
	.quad	0x3fcf67ee39004524              # double 0.24535920890097274
	.quad	0x3fd7746d2f12c632              # double 0.36648110959058322
	.quad	0x3fd3b1112f9cdbd8              # double 0.30768232011490459
	.quad	0x3feede225c2e3a1d              # double 0.96461599353807836
	.quad	0x3fef20f4173219d3              # double 0.97277264147197184
	.quad	0x3fd735c37256e758              # double 0.36265646139110208
	.quad	0x3fef1f7cd8baba9f              # double 0.97259371118510162
	.quad	0x3fdfc1e43f5100b0              # double 0.49620920356029341
	.quad	0x3fe3fda597738aec              # double 0.62471274929370457
	.quad	0x3feef9b1f5848685              # double 0.96798036530181319
	.quad	0x3fb09de1a80d8fe8              # double 0.064909080055769786
	.quad	0x3fd3a4606b59d8fe              # double 0.30690775378697299
	.quad	0x3fb6c09fd5b9bf50              # double 0.088876714400382583
	.quad	0x3feb65db90ea8269              # double 0.85618379882732853
	.quad	0x3fbfd76f4cb789a8              # double 0.12438102362606307
	.quad	0x3fefaecc116d4443              # double 0.99008754161526046
	.quad	0x3fabd1edd8dc1960              # double 0.054336006853236141
	.quad	0x3fc59b1ba9267d6c              # double 0.1687960220269632
	.quad	0x3fe1c7960bef6d54              # double 0.55561353999238827
	.quad	0x3fe0753c674a2ba2              # double 0.51431102918410354
	.quad	0x3fdc44e0ddc7cab0              # double 0.44170400293584589
	.quad	0x3fdd34676c25adb8              # double 0.45632348595855943
	.quad	0x3fe2a2daeec07311              # double 0.58237978583528804
	.quad	0x3fdf1e5d249a13fc              # double 0.48622826170350186
	.quad	0x3feffb8df71f35ef              # double 0.99945734277724607
	.quad	0x3fbeda24b9f65c08              # double 0.12051610508056865
	.quad	0x3fc0299a2b669908              # double 0.12626959914377545
	.quad	0x3fa63d8764ffd640              # double 0.04343817813780193
	.quad	0x3fddf0a44596ee8a              # double 0.46781260295731697
	.quad	0x3fc4b049d3d49a8c              # double 0.1616298946693927
	.quad	0x3fd3b7cbdcdc5a86              # double 0.30809303825791579
	.quad	0x3fec447946fc1b23              # double 0.88335861076561562
	.quad	0x3fe06b2e508aaf2e              # double 0.51308360796745034
	.quad	0x3fed3538f18066cc              # double 0.91274687927508457
	.quad	0x3fe5f033fe6f1ea1              # double 0.68557166761543809
	.quad	0x3fe86490a07118ab              # double 0.76227599464688944
	.quad	0x3fe23a1938c3c5cf              # double 0.56959210478651723
	.quad	0x3fde947eed42d74c              # double 0.47781346483258313
	.quad	0x3fc409ecc99538c0              # double 0.15655288546481039
	.quad	0x3fca7ef6a66191d4              # double 0.20699961780623133
	.quad	0x3feb20e916834082              # double 0.84776739499103848
	.quad	0x3fd041a4f98e453c              # double 0.25400661822012061
	.quad	0x3fd2c48e2deeae90              # double 0.29324678884106792
	.quad	0x3fd8b4f5cdeae646              # double 0.3860449324525671
	.quad	0x3fc6ebb8080895e8              # double 0.17906856910955971
	.quad	0x3fef19b8d893f361              # double 0.97188989925744462
	.quad	0x3f9d6c3e54a3a680              # double 0.028733228603334826
	.quad	0x3fc04f13d632ed18              # double 0.12741325339252607
	.quad	0x3fe71165b148a164              # double 0.72087368608212588
	.quad	0x3fe8f0d2ea25675d              # double 0.77939744693433577
	.quad	0x3fd716aa5d5ee92e              # double 0.3607583915542304
	.quad	0x3feadbca819c3a8b              # double 0.83932996096139456
	.quad	0x3fee8212d3c5fc67              # double 0.9533781181525115
	.quad	0x3fd54ada0af7cab4              # double 0.33269358702743124
	.quad	0x3fdbcd88ff46debe              # double 0.43441986970308821
	.quad	0x3fee95faeb04b12e              # double 0.95580812360780043
	.quad	0x3fecc73304e96923              # double 0.89931632003143525
	.quad	0x3fc26f21647e9bf8              # double 0.1440164318748598
	.quad	0x3fb9563091ca5948              # double 0.098971400826802669
	.quad	0x3fd736655a057c7a              # double 0.36269506255297979
	.quad	0x3fe8e17f7aaeb0c9              # double 0.77752660714534116
	.quad	0x3feadbdcb0514fbe              # double 0.83933863102946993
	.quad	0x3fe06d24895f9b56              # double 0.51332308607821164
	.quad	0x3fcbb22f9491d91c              # double 0.21637530092602553
	.quad	0x3fd0bbafe09a8b58              # double 0.26145550664857842
	.quad	0x3fa844450070cb40              # double 0.047395855239662499
	.quad	0x3fe0d8736fe502f5              # double 0.52642223219308326
	.quad	0x3fd42a8c180c8a46              # double 0.31509687756093674
	.quad	0x3fe83dccf9c0fbcd              # double 0.75754402904555607
	.quad	0x3fe4888bdae8fd93              # double 0.64166825061686195
	.quad	0x3fcc45174d13cb54              # double 0.22085849059620932
	.quad	0x3feb6e981cebc230              # double 0.85725026749248023
	.quad	0x3fc33d7c1c7509fc              # double 0.15031386746893804
	.quad	0x3fe0171f7a5e1463              # double 0.50282262706663194
	.quad	0x3feb34d51c47bed5              # double 0.85019927524077821
	.quad	0x3fe2d72151f07139              # double 0.5887610054374256
	.quad	0x3fd3c6dcacd4c0c0              # double 0.30901257398637583
	.quad	0x3fd8e3566fef5c1e              # double 0.38887558871414452
	.quad	0x3fb41220e37ff330              # double 0.078401618520683724
	.quad	0x3fd1ab87b1670248              # double 0.27609436344576865
	.quad	0x3fe67138a7cf4c9a              # double 0.70132096076339967
	.quad	0x3fb2cdb336773b78              # double 0.073451233670523197
	.quad	0x3fc5fdcaa3c8bdb8              # double 0.17180760381005
	.quad	0x3fc450da753eac08              # double 0.15871744847149238
	.quad	0x3fe0d82176845761              # double 0.52638314388125818
	.quad	0x3fda003cd2206db0              # double 0.40626450081046084
	.quad	0x3fd2022b4bd230a6              # double 0.28138239292526135
	.quad	0x3fc8ce85e0fb84a8              # double 0.19380258069489753
	.quad	0x3fd3553ca94d534e              # double 0.3020774510708194
	.quad	0x3fe5b251c52b897c              # double 0.67801750669268257
	.quad	0x3fac63df2fcb9ce0              # double 0.05544946154059871
	.quad	0x3fee75ee8433d4e2              # double 0.95189596005243637
	.quad	0x3fe8611b7ce06aa0              # double 0.76185392751661495
	.quad	0x3fd9ece85753f5d0              # double 0.405084691315861
	.quad	0x3fe60a108702d6f4              # double 0.68872858399728765
	.quad	0x3fe89e2ca13b2b8c              # double 0.76930839052634913
	.quad	0x3fccf8f2a9887fe4              # double 0.22634728696812012
	.quad	0x3fd62e4c64edc59c              # double 0.34657583099677836
	.quad	0x3fe74ef56b846d15              # double 0.72838850974531744
	.quad	0x3fd58aa9b6b112e0              # double 0.33658831444726722
	.quad	0x3fe4e505a79a1b04              # double 0.65295679793129624
	.quad	0x3fead7c7065f2df7              # double 0.83884001965037569
	.quad	0x3feb8a926998f7a5              # double 0.86066551804082236
	.quad	0x3fda09cea39c230a              # double 0.40684858300714721
	.quad	0x3fc19f1f33448b6c              # double 0.13766851428325866
	.quad	0x3fd373abb2fd2b4a              # double 0.30393497924221846
	.quad	0x3feb3c56b5befb90              # double 0.85111556527395926
	.quad	0x3fe7ab6b151788ce              # double 0.73967508430021112
	.quad	0x3fed067139c3e6f9              # double 0.90703641207002683
	.quad	0x3fe1a8ab127a6e0d              # double 0.55183938607246008
	.quad	0x3fc0c1bf473bc414              # double 0.13091269472309419
	.quad	0x3fe32b31c2358e0d              # double 0.59902275020107398
	.quad	0x3fc513481711158c              # double 0.16465092779450818
	.quad	0x3fb1e699c19b34c0              # double 0.069924936072498944
	.quad	0x3fe40bf09932d48a              # double 0.62645749971001519
	.quad	0x3fef101c6c36cec7              # double 0.97071667800488448
	.quad	0x3fb8749942b103b0              # double 0.095529154569716778
	.quad	0x3fe38ebaa1651228              # double 0.61117297670768256
	.quad	0x3fd88175d9e89bb8              # double 0.38290163307322755
	.quad	0x3fe5fe508940774a              # double 0.68729426199909338
	.quad	0x3f7f3f24339c6a80              # double 0.0076285757184232361
	.quad	0x3fe20133d80c159d              # double 0.56264679142684637
	.quad	0x3fe839cb96c4ad7f              # double 0.75705508658340637
	.quad	0x3fd8556892199476              # double 0.38021291987963168
	.quad	0x3fee41bab333359c              # double 0.945523595810005
	.quad	0x3fb28ee16fbb7f30              # double 0.072492685106678278
	.quad	0x3fa015962a0e4a50              # double 0.031414692529456389
	.quad	0x3fdf18e330957bc4              # double 0.48589401001475729
	.quad	0x3fe77cacc9e9c738              # double 0.73396911083384619
	.quad	0x3fe69f2c524aad7f              # double 0.70693031380271509
	.quad	0x3fe27d441a036f0d              # double 0.57779126244301582
	.quad	0x3fc091725dc5ab98              # double 0.12943868235319367
	.quad	0x3feada2568bf8f7f              # double 0.83912916620873534
	.quad	0x3fd4470c90908ca2              # double 0.31683649175301742
	.quad	0x3fed17b8b5bba032              # double 0.90914569372853848
	.quad	0x3fe5f18ebccbb4f0              # double 0.68573700784841485
	.quad	0x3fb1ef34a19d9198              # double 0.07005623765650737
	.quad	0x3fe1dd7434c1ba8c              # double 0.55828295043996112
	.quad	0x3f863fcfc2f3bd40              # double 0.010863898407903805
	.quad	0x3fe25d6209695e3a              # double 0.57389928663446388
	.quad	0x3fcd31b402b3fc00              # double 0.22807932025895639
	.quad	0x3fed372600d37c68              # double 0.91298198853827461
	.quad	0x3fd2c9c90dd549da              # double 0.29356600142378186
	.quad	0x3fd89c3c4069f738              # double 0.38453584947989183
	.quad	0x3fb380605c80dc68              # double 0.076177618583516016
	.quad	0x3fc9b1e13e137e5c              # double 0.20074096232473237
	.quad	0x3fedaf3d737dc639              # double 0.92764160687347108
	.quad	0x3fcd2321267c0b70              # double 0.22763456706169505
	.quad	0x3fddc6848db8c52c              # double 0.46524156417861451
	.quad	0x3fe685c4f96b024f              # double 0.70382927622274305
	.quad	0x3fc2c63575e361c0              # double 0.14667385345707196
	.quad	0x3fe7636bef93d34b              # double 0.73088642876118948
	.quad	0x3fd83b4b1cffdf12              # double 0.37861898262006932
	.quad	0x3fea504bacc628f5              # double 0.82230170960363458
	.quad	0x3fe507ce1909017c              # double 0.65720276727374438
	.quad	0x3fefa363dba89f4e              # double 0.98869507696233838
	.quad	0x3fcabaf34e5f4ac0              # double 0.20883027388352637
	.quad	0x3fe34cdd5fc2af15              # double 0.60313290312976398
	.quad	0x3fde744a0be8026c              # double 0.47584773218844734
	.quad	0x3fe73c6163b99ffa              # double 0.72612065770681444
	.quad	0x3fe10b28232193aa              # double 0.53261191236071181
	.quad	0x3febf5a4f67823bd              # double 0.87373588694128268
	.quad	0x3febf654145b7001              # double 0.87381938911448753
	.quad	0x3fed80be03ca82cb              # double 0.92196560612145484
	.quad	0x3fb544954a1eded8              # double 0.083077746005865705
	.quad	0x3fe94b1d80ebd3d6              # double 0.79041934184953777
	.quad	0x3fe98b6d5ebb3f3e              # double 0.79826992513878969
	.quad	0x3febc394ae2d0881              # double 0.86762460726482982
	.quad	0x3fb11ae5b8ed9d18              # double 0.06681667103622535
	.quad	0x3fed096e6b831cfb              # double 0.90740128515690743
	.quad	0x3fefc70e61e78101              # double 0.99304885026870703
	.quad	0x3fe6498c0045a623              # double 0.6964778905214114
	.quad	0x3fd66c32cd302072              # double 0.35035390890016693
	.quad	0x3fe29abef192845d              # double 0.58138987714859136
	.quad	0x3fe94605a3c6a2f0              # double 0.78979761111722091
	.quad	0x3fd9285469779960              # double 0.39308653163461393
	.quad	0x3fe5fa2bbe3e64db              # double 0.68678843647935695
	.quad	0x3fe97c361907bcdb              # double 0.796412514578971
	.quad	0x3f5541e1e4f45c00              # double 0.0012974458694026136
	.quad	0x3fc43b8662ed6e6c              # double 0.15806655722086604
	.quad	0x3fe9709fb902857d              # double 0.79499803671585278
	.quad	0x3fe0c55ceafe653f              # double 0.52409215829099043
	.quad	0x3fe650215f7c92c7              # double 0.69728153848390029
	.quad	0x3fd84dd5b2a23ed6              # double 0.37975065655426243
	.quad	0x3fed41806fffc08b              # double 0.91424581408320316
	.quad	0x3fc1c77e963a2d38              # double 0.13890058837237418
	.quad	0x3fe987f4aec4c741              # double 0.79784616598610836
	.quad	0x3fd10534aa59f40a              # double 0.26594273219944908
	.quad	0x3fe3e44b21c06292              # double 0.62161785690394056
	.quad	0x3feda63b03109163              # double 0.92654181097581689
	.quad	0x3fe254ccd0864f7c              # double 0.57285156943770188
	.quad	0x3fe5e139dea94d37              # double 0.68374341476957212
	.quad	0x3fe9a87f4e76b521              # double 0.80181851696912443
	.quad	0x3fc4f018f4d4f34c              # double 0.1635771937816578
	.quad	0x3fe8e0c5b058133c              # double 0.77743801538654322
	.quad	0x3fdf88fd62f36a8c              # double 0.49273619330566798
	.quad	0x3fecb4ee7b8dbe3f              # double 0.89708637363032284
	.quad	0x3fc9c4e8540f5a78              # double 0.20132164101115158
	.quad	0x3fd9889fc7cfcb6e              # double 0.39896387589322202
	.quad	0x3fd608c3d9962158              # double 0.34428497551609416
	.quad	0x3fd03dcf43161bb0              # double 0.25377255965616552
	.quad	0x3fc0ca2e72fe00e4              # double 0.13117008795598573
	.quad	0x3fe16038ed7c7123              # double 0.54299589523319403
	.quad	0x3fead434a9a613bc              # double 0.83840401777762663
	.quad	0x3fea4e4842443068              # double 0.82205594008111138
	.quad	0x3fd656ab13b0d8a4              # double 0.3490398113530182
	.quad	0x3fe004b4026827c6              # double 0.50057411642159688
	.quad	0x3fea7e050c632222              # double 0.82788326663382272
	.quad	0x3fdcbaa9c16c1d9a              # double 0.44889301194094744
	.quad	0x3fe05a7ef236a9b4              # double 0.51104686076478467
	.quad	0x3fd69ca7cbe576a4              # double 0.35331149017097574
	.quad	0x3fd1c6661b30da18              # double 0.27773430495600016
	.quad	0x3fee104e8986c022              # double 0.93949057446116435
	.quad	0x3fd1d284dcff9170              # double 0.27847405988565921
	.quad	0x3fe1cf4d532d3ca4              # double 0.55655542607737063
	.quad	0x3fee3465ecd58bd2              # double 0.94389625794098664
	.quad	0x3fe27d481a6bec77              # double 0.5777931705519127
	.quad	0x3fca40a5571feb58              # double 0.20509783510336876
	.quad	0x3fe6e188244044a5              # double 0.71503073768885328
	.quad	0x3fd3de4a43ffcb78              # double 0.31044251099154208
	.quad	0x3feb613e6249a21f              # double 0.85562056729128588
	.quad	0x3fda66e5b9663826              # double 0.41253035645866232
	.quad	0x3fe625ca580c2276              # double 0.69211308666952109
	.quad	0x3fed2cb2b9c1ef73              # double 0.91170631676457814
	.quad	0x3fb382a276a330f0              # double 0.076212076153016061
	.quad	0x3fbdf04d79026440              # double 0.11694797710733074
	.quad	0x3fe653778b2fd0dc              # double 0.69768883881490806
	.quad	0x3fd00ad81ec8d15a              # double 0.250661878645834
	.quad	0x3fe905ba460a3e90              # double 0.78194917373362394
	.quad	0x3fe9f62b590c6932              # double 0.81129996673852234
	.quad	0x3fdcc1bc7eaf35ae              # double 0.44932472583317462
	.quad	0x3feace4a10140c4f              # double 0.8376818002728984
	.quad	0x3fc1d96015a3c2e8              # double 0.13944626862168907
	.quad	0x3fa4d5fe6a8b6560              # double 0.040695143228456798
	.quad	0x3fcc0c342c96b27c              # double 0.2191224305837699
	.quad	0x3fe60558dad37359              # double 0.68815272082756984
	.quad	0x3fc4901c1201df04              # double 0.1606478774954142
	.quad	0x3fed3a6c7b115c22              # double 0.91338180576974914
	.quad	0x3f9c0b64f24db040              # double 0.027387215889959515
	.quad	0x3fb669c642c67960              # double 0.08755149011856167
	.quad	0x3fe815dc8164101b              # double 0.75266862174658244
	.quad	0x3febac4618ba81f7              # double 0.86477951841157974
	.quad	0x3fd6949ce34c2e90              # double 0.35282060811071236
	.quad	0x3fe52fabc72a6d6b              # double 0.6620692148166375
	.quad	0x3fc0dc90b68d3454              # double 0.13173111833239892
	.quad	0x3f620cc58b704000              # double 0.0022033556265412813
	.quad	0x3fd3f67af2bb71ec              # double 0.31191896156613441
	.quad	0x3fc55d701e2a4244              # double 0.16691400025276171
	.quad	0x3fde0623ef3c12bc              # double 0.46912477839240885
	.quad	0x3fe63ff24721af2a              # double 0.69530595677267582
	.quad	0x3fdc87521c88bc74              # double 0.44575932299171162
	.quad	0x3fed0797d73815c0              # double 0.90717689547516756
	.quad	0x3fcda8cb8e8d41d0              # double 0.23171371899162674
	.quad	0x3fda234b54106116              # double 0.40840419015286622
	.quad	0x3fe872c90af48bbb              # double 0.76401188029955536
	.quad	0x3f9c6e92c73675c0              # double 0.027765553864460335
	.quad	0x3f9d257da042b300              # double 0.028463328272368749
	.quad	0x3fb6cc24f1a6ecf0              # double 0.089052494999964926
	.quad	0x3fed8930281a94bd              # double 0.92299659569530201
	.quad	0x3fe76174b9c923fd              # double 0.7306464794756945
	.quad	0x3fe71e31e5659df1              # double 0.72243590168085181
	.quad	0x3fc23fdd421c26ec              # double 0.14257398345971894
	.quad	0x3fe67dbf7c759c81              # double 0.70285009678345045
	.quad	0x3fb7fa4085ce0af8              # double 0.093662293116761108
	.quad	0x3fef4ec989cdcf00              # double 0.97836758532363888
	.quad	0x3fafb99c471beec0              # double 0.061962970428763864
	.quad	0x3fe9241ced28bd52              # double 0.78565832443374917
	.quad	0x3fbc81b5979ca658              # double 0.11135420752966618
	.quad	0x3fe7735213e8640c              # double 0.73282722366559616
	.quad	0x3fedc4aba4b5cd67              # double 0.93025762720064342
	.quad	0x3feb50e641e97ba4              # double 0.85362542031713362
	.quad	0x3f7a4860f9f7bd00              # double 0.0064166820661590851
	.quad	0x3fc41bd82ac123bc              # double 0.1570997437250109
	.quad	0x3fc88d77579c5a00              # double 0.19181720521801537
	.quad	0x3fc063a4c7541340              # double 0.12804088337738939
	.quad	0x3fecd75995a4e90e              # double 0.90128783442858817
	.quad	0x3fe8503550253ec5              # double 0.75979104665199115
	.quad	0x3fd15d57df14f438              # double 0.27132221970879611
	.quad	0x3fcd9823d80efb50              # double 0.23120544481022387
	.quad	0x3fd6b7f6fff4151e              # double 0.35497832293943243
	.quad	0x3fd01fc43956fc06              # double 0.25193887328708831
	.quad	0x3fdc65f485639ffc              # double 0.44372284914288662
	.quad	0x3fd2a925e9783b56              # double 0.29157398032923731
	.quad	0x3fea370854b6c000              # double 0.81921783967663941
	.quad	0x3feb15f767c1ab0d              # double 0.84643144860214792
	.quad	0x3fe8428e3eb37e9d              # double 0.75812446829145907
	.quad	0x3fe8fb58b422e877              # double 0.78068194563753834
	.quad	0x3fe5622fbac6cfcf              # double 0.66823564986997919
	.quad	0x3fb19bfc440d7798              # double 0.06878639851990298
	.quad	0x3fe27c5e6f6f9b75              # double 0.57768174900853231
	.quad	0x3fd25db40fa3ea30              # double 0.28696919944164545
	.quad	0x3fde63d4d0659036              # double 0.47484321929210027
	.quad	0x3fee3c2da2df95ac              # double 0.94484597979742579
	.quad	0x3fdec78b73560a4c              # double 0.4809292436913537
	.quad	0x3fcb02caca9b9418              # double 0.21102270977931492
	.quad	0x3fdb52589a719392              # double 0.42690100748432613
	.quad	0x3fe221e9e6c77e6c              # double 0.56663985323025434
	.quad	0x3fdf05ee16eeb58c              # double 0.48473694076059171
	.quad	0x3fe2db6af74de9d7              # double 0.58928440381651626
	.quad	0x3febccee76d742c9              # double 0.86876605235200899
	.quad	0x3fd25b4dbd318c6e              # double 0.28682273364956401
	.quad	0x3fea2157f5f4b216              # double 0.8165702632737204
	.quad	0x3fecce5bae12a8f2              # double 0.9001902007924214
	.quad	0x3fe89193ddaae870              # double 0.7677707032628529
	.quad	0x3fe570355797dcbb              # double 0.66994731052445589
	.quad	0x3feccb1935d987d1              # double 0.89979229466939092
	.quad	0x3fe26143a99ab4fb              # double 0.57437308431477108
	.quad	0x3fe734eaf37694b7              # double 0.72520968963058052
	.quad	0x3fb9c5a8651dfea8              # double 0.10067226856880984
	.quad	0x3febb0e59a4af235              # double 0.8653438581018863
	.quad	0x3fd8205d1577d8b8              # double 0.37697531792162975
	.quad	0x3fe9d6c6e60a0369              # double 0.80746788911356504
	.quad	0x3fd9a9db63588a96              # double 0.40099224759811969
	.quad	0x3fda9e2883e2fc4a              # double 0.41590321425968979
	.quad	0x3fe696d60755854d              # double 0.70591260368761655
	.quad	0x3feb95e607b470b6              # double 0.86204816346027857
	.quad	0x3fda1971aa4d5738              # double 0.40780297881188998
	.quad	0x3fddae777fb685d4              # double 0.46377360794039402
	.quad	0x3fe07c0e3feb977d              # double 0.51514351353101484
	.quad	0x3fec165fc92d5ecd              # double 0.87773122112681679
	.quad	0x3fd936e2483d4000              # double 0.39397484831442853
	.quad	0x3fde28353e97c1c8              # double 0.47120410072878061
	.quad	0x3fb1682e74d746d0              # double 0.067995933080307269
	.quad	0x3fbbb78a31ae1fe8              # double 0.10826934540648347
	.quad	0x3fd5d312a9e9661c              # double 0.34100786774578906
	.quad	0x3fbe81ff9363a4c0              # double 0.11917111729021013
	.quad	0x3fd04ecbc9cc6c3e              # double 0.25480932909858101
	.quad	0x3feb700d9cda2969              # double 0.85742836604303563
	.quad	0x3fec2cf7a0943242              # double 0.88048917162957019
	.quad	0x3fd01ff52f6faa3e              # double 0.25195054657402582
	.quad	0x3fe2dd1ffa602752              # double 0.58949278737530109
	.quad	0x3fd2943f26af8856              # double 0.29029825952432498
	.quad	0x3feff70b63362863              # double 0.99890679719215957
	.quad	0x3f9d111efa78bc20              # double 0.028385623967718598
	.quad	0x3fd8f0c2b35c8b3e              # double 0.38969485774775936
	.quad	0x3fe1172ab8e80a63              # double 0.53407798876316936
	.quad	0x3fc25e9c798d8f8c              # double 0.14351230559543315
	.quad	0x3fee4ffa0851a4b4              # double 0.94726277947224568
	.quad	0x3fd4028950d84c06              # double 0.31265480895052666
	.quad	0x3fa9a81b31be7f90              # double 0.05011067373493383
	.quad	0x3fe3a8cf14e765a8              # double 0.61435655672828648
	.quad	0x3fdb79ad4b4d2386              # double 0.42930157045025685
	.quad	0x3feab2e1e8d9c650              # double 0.83433623770378951
	.quad	0x3fe40d28ef0492c0              # double 0.62660643275429351
	.quad	0x3feee86388fd8862              # double 0.96586777454309591
	.quad	0x3febcf13aae45ce4              # double 0.86902793290473967
	.quad	0x3fe242bb6490c83a              # double 0.57064599649152759
	.quad	0x3fcf9387a3661a44              # double 0.24668975332697773
	.quad	0x3febfd478f909934              # double 0.87466791191108095
	.quad	0x3fe556c5b79dcd4a              # double 0.66684232580738834
	.quad	0x3fefcac14dc22223              # double 0.99350037753271569
	.quad	0x3fe52e703b47b279              # double 0.66191875055444804
	.quad	0x3fe90bf271e28497              # double 0.78270838015682187
	.quad	0x3fed7b9f197cf87e              # double 0.92134051302106434
	.quad	0x3fd8b668e8d4ad14              # double 0.38613341081027497
	.quad	0x3fcbc2ccaec6bbb0              # double 0.21688231023787585
	.quad	0x3fd7d82e7c384d8c              # double 0.37256967669346674
	.quad	0x3fee70291feb4a10              # double 0.95119148477744098
	.quad	0x3fec2eeb3db0a439              # double 0.88072740601376787
	.quad	0x3fdaeb4082dffeb6              # double 0.42060864239463613
	.quad	0x3fe43b76f9a5d97b              # double 0.6322588802275243
	.quad	0x3fa6d108fe550650              # double 0.044563561483766834
	.quad	0x3f763a4935f46100              # double 0.0054266795916861899
	.quad	0x3fedb380d3d90964              # double 0.92816201569102618
	.quad	0x3fde67ecde5d2c24              # double 0.47509309497098884
	.quad	0x3fe08f156e116636              # double 0.51746627328538497
	.quad	0x3fb0a47098471940              # double 0.065009152581386509
	.quad	0x3fde0fe92a5c77b6              # double 0.46972111832462404
	.quad	0x3fc5e7ec52e8bd6c              # double 0.17114023254678601
	.quad	0x3fcc7f8248a1f52c              # double 0.22264126345172863
	.quad	0x3fa9f14a57158ce0              # double 0.050669024591820877
	.quad	0x3f84fff198665900              # double 0.010253798926708857
	.quad	0x3fccc77ca6b07200              # double 0.22483785761950514
	.quad	0x3fd7dc3e01ebc048              # double 0.37281751811588437
	.quad	0x3fefc7a0998eb2ee              # double 0.9931185721557918
	.quad	0x3fd3a1810d53cf1c              # double 0.30673242856504301
	.quad	0x3fe4b71c8d4f33d0              # double 0.64735248183716898
	.quad	0x3fb81b94d0c3edc8              # double 0.094170857399084373
	.quad	0x3fe844078194075a              # double 0.75830436046838234
	.quad	0x3fec49df2969fa05              # double 0.88401754463831195
	.quad	0x3fef2231d0e20bd9              # double 0.97292414472064614
	.quad	0x3fe7ce14e0fcfea4              # double 0.74390644019145613
	.quad	0x3fc9d11a78db3128              # double 0.20169382954771575
	.quad	0x3feeeb60d12ec7de              # double 0.96623268943789831
	.quad	0x3fe09ab010bfea61              # double 0.51888278266353549
	.quad	0x3fe304c28a48ffc0              # double 0.5943310452348598
	.quad	0x3fd8b5d22290a048              # double 0.38609746337397555
	.quad	0x3fe7fb5d04cb4a96              # double 0.74943400322293274
	.quad	0x3febd79b174faf11              # double 0.87006907036763625
	.quad	0x3fec50c9de029812              # double 0.88486188279489597
	.quad	0x3fe0b31fbdc0ff63              # double 0.52186572133357989
	.quad	0x3fe1258d84e1d4ca              # double 0.53583408311410463
	.quad	0x3febc95864e395f0              # double 0.86832828240284066
	.quad	0x3fb82b247e8197c8              # double 0.094408303151424566
	.quad	0x3fa90126a2c7fcd0              # double 0.048836905833007926
	.quad	0x3fe65dab7da517ed              # double 0.69893431224840941
	.quad	0x3fd68fdde9488c4a              # double 0.35253093511181943
	.quad	0x3fd8a4e15768b3a4              # double 0.38506349121126449
	.quad	0x3feda9a5a248e57f              # double 0.92695886322250931
	.quad	0x3fc6679792eb3068              # double 0.17503637956395157
	.quad	0x3feeba6ae48bdea0              # double 0.96025604856454904
	.quad	0x3fe31e6dc5d09f1d              # double 0.59746445308425999
	.quad	0x3fe44ed0408e4938              # double 0.63462078674846278
	.quad	0x3fdd6ccb94acc7d2              # double 0.45976533431087063
	.quad	0x3fc1cc90a2d42460              # double 0.13905532789820807
	.quad	0x3fe8b3543fcaacc5              # double 0.77189075908008731
	.quad	0x3fd242c19af31d1e              # double 0.28532447940638572
	.quad	0x3fed3df813e803ba              # double 0.91381458175612029
	.quad	0x3fd13594a9d18548              # double 0.26889530738670375
	.quad	0x3fec659f776d8c6b              # double 0.88740514112249735
	.quad	0x3fd054e2306322ca              # double 0.25518088078801482
	.quad	0x3fe38cbfa59ba212              # double 0.61093122811604617
	.quad	0x3fedfee5430b0c4f              # double 0.93736517996183888
	.quad	0x3fd19b34cc55eca6              # double 0.27509803728725968
	.quad	0x3fd5cfd46439f678              # double 0.34080991542564432
	.quad	0x3fe26163ab5318cf              # double 0.57438834630809221
	.quad	0x3fef5004522bb67f              # double 0.97851768540358807
	.quad	0x3fee79ab07b2963c              # double 0.95235206130445915
	.quad	0x3fd3cb3def86dfde              # double 0.30927990332884103
	.quad	0x3fd49a756970aa7c              # double 0.32192740723500157
	.quad	0x3fd329766995c36e              # double 0.29940567313229038
	.quad	0x3f9db375fabbe0e0              # double 0.02900490134104039
	.quad	0x3fc8afd8bbb8b014              # double 0.19286641279302386
	.quad	0x3fe9ff8c7c952003              # double 0.81244491894267445
	.quad	0x3fe530882b870cf9              # double 0.66217430592988002
	.quad	0x3fe0e3f30fc83e2e              # double 0.52782586176357937
	.quad	0x3fd2b85c8f50b4c6              # double 0.29250253673201276
	.quad	0x3fece04e560abe8c              # double 0.90238110356399792
	.quad	0x3fd124939f29f8b8              # double 0.26785746138910893
	.quad	0x3fd72416f0471daa              # double 0.36157773460987619
	.quad	0x3fe815a8a22f0bf4              # double 0.75264388729590203
	.quad	0x3fbdce63593796e0              # double 0.11643048217919327
	.quad	0x3feecbab01f294d4              # double 0.96236181621920957
	.quad	0x3fe4558f60a00120              # double 0.63544434425424257
	.quad	0x3fdd703827477ec2              # double 0.45997432552210793
	.quad	0x3fe65348f8bb1d11              # double 0.69766663151031783
	.quad	0x3fd0a620525f3a4c              # double 0.2601395420469188
	.quad	0x3fe443a7fd8ab91a              # double 0.63325881500148573
	.quad	0x3fe7dff9ea20919f              # double 0.74609084823582694
	.quad	0x3fdcd19f9a77940e              # double 0.4502944000690271
	.quad	0x3fc79f5d80f40424              # double 0.18455094143431083
	.quad	0x3fe90315b4f40a81              # double 0.78162656156958132
	.quad	0x3fde81bece9b6df8              # double 0.47666902710417913
	.quad	0x3f985cfe0596dd40              # double 0.023792237368721603
	.quad	0x3faab07775550e10              # double 0.052127583573135294
	.quad	0x3fcc3988cd863380              # double 0.22050581012117831
	.quad	0x3fee041119f50a9b              # double 0.93799643583072922
	.quad	0x3febae877ba72212              # double 0.86505483771276404
	.quad	0x3fe01ca85079e650              # double 0.50349822729112681
	.quad	0x3fc02cbab0068994              # double 0.1263650283336345
	.quad	0x3fd40bd41bf7b2ac              # double 0.31322195750434889
	.quad	0x3fe5d4b8414e7acf              # double 0.6822167659300592
	.quad	0x3fd194119076a226              # double 0.27466239078288124
	.quad	0x3fe2799f0db0f71d              # double 0.57734635042263316
	.quad	0x3fe46d4c74611db7              # double 0.63834212045997318
	.quad	0x3fe0001b34a283fe              # double 0.50001297264327582
	.quad	0x3feb321f475a0511              # double 0.84986843047969007
	.quad	0x3fe22725d863fbfb              # double 0.56727878822118727
	.quad	0x3fe00a4a7e8d8914              # double 0.50125622479780185
	.quad	0x3fc9bb56defe54e0              # double 0.20102964294770853
	.quad	0x3fdce35984206706              # double 0.45137632277474926
	.quad	0x3feb76ca1a766aa5              # double 0.85825066727132493
	.quad	0x3fe8893a8984207b              # double 0.76675154551141078
	.quad	0x3fd98697912fb312              # double 0.3988398473582474
	.quad	0x3fee8ffb618367db              # double 0.95507592244689066
	.quad	0x3fd688c7048d5cc8              # double 0.35209823078680502
	.quad	0x3fedf64dd74ceb5f              # double 0.93631641436455115
	.quad	0x3fb1cf9079ee8508              # double 0.069573430794225399
	.quad	0x3fb6169ae1b1e318              # double 0.086282425023352594
	.quad	0x3fc3ce06977dd1d0              # double 0.15472490689320617
	.quad	0x3fcb7852aa66e434              # double 0.21460946388632041
	.quad	0x3fe2385da2d775a4              # double 0.5693805866719015
	.quad	0x3fd65059e66bdd9c              # double 0.34865424635014519
	.quad	0x3fb8f497747df528              # double 0.097482171955523556
	.quad	0x3fa2c87173d34d60              # double 0.036685510052530956
	.quad	0x3fd38ed1bad5aef4              # double 0.30559199567390682
	.quad	0x3fd8d150c9312d72              # double 0.3877756085173224
	.quad	0x3fe868ed8d672ef9              # double 0.76280858629021886
	.quad	0x3feac4eb80ddcb4a              # double 0.83653807801452129
	.quad	0x3fdf32d8fa11b5cc              # double 0.48747848912065872
	.quad	0x3fd16e32dec27464              # double 0.27235099557748854
	.quad	0x3fca8ea94ee7a1e8              # double 0.20747867920660146
	.quad	0x3fe535e495cbacc0              # double 0.66282872445062679
	.quad	0x3fefe44e10680efd              # double 0.99661925510778781
	.quad	0x3fe0ff777e9ceb8e              # double 0.53118490914435923
	.quad	0x3fe4cc3d8c4c99b0              # double 0.64993169214431212
	.quad	0x3fd88c62bc840df4              # double 0.38356846246480747
	.quad	0x3fdedf85b736accc              # double 0.48239272014570811
	.quad	0x3fef3df553e43b00              # double 0.97631327042640237
	.quad	0x3fe77714140ab8a9              # double 0.73328594126157498
	.quad	0x3fe4d10f4bec5fa9              # double 0.65051998928810406
	.quad	0x3fa6813f35720d80              # double 0.04395482566271891
	.quad	0x3f9363a08b84a3c0              # double 0.018934734836111522
	.quad	0x3fe354402a624f95              # double 0.60403450277452697
	.quad	0x3fe20e32db3434e0              # double 0.56423323453205043
	.quad	0x3fe2a8b8b3c67982              # double 0.58309588539468415
	.quad	0x3fe7f9f491ef1bfe              # double 0.74926212790239766
	.quad	0x3fe0b9fa9e56829d              # double 0.52270251202942897
	.quad	0x3fea70503471f475              # double 0.82621011965933511
	.quad	0x3fe0ed9e0b40aa7f              # double 0.52900602529309981
	.quad	0x3fd36121a1dbfb6c              # double 0.30280342871258514
	.quad	0x3feefcfaa31ccfcd              # double 0.96838123186034297
	.quad	0x3fdeb5d40a7bbed4              # double 0.4798479177834285
	.quad	0x3fdc40fdca245b08              # double 0.44146675815993364
	.quad	0x3f9aa86cbbfb8780              # double 0.026033114408057667
	.quad	0x3fc993638f61af6c              # double 0.19981045247129303
	.quad	0x3fe61da26d18685a              # double 0.691117489888039
	.quad	0x3fec569992e7c4cd              # double 0.88557127659273649
	.quad	0x3fef1275af3635b9              # double 0.97100338192983948
	.quad	0x3fec656dc38759ab              # double 0.88738144101335104
	.quad	0x3fd9a255f6cef55e              # double 0.4005331907499875
	.quad	0x3fd962f63fbda7a8              # double 0.39666515564624172
	.quad	0x3fefd4ffcaedf481              # double 0.99475087771101311
	.quad	0x3fd60cde5d2e286c              # double 0.34453543758048144
	.quad	0x3fce3df039124494              # double 0.23626520907103965
	.quad	0x3fa2a40f2b491ac0              # double 0.036407922777063728
	.quad	0x3fda11de85ebb58e              # double 0.40734065130421804
	.quad	0x3fcb6267e9d6c3b4              # double 0.21394061010280796
	.quad	0x3fe57f2722ad22d1              # double 0.6717715909263352
	.quad	0x3f74fbaa48f5f900              # double 0.0051228191144885304
	.quad	0x3fe84b0f0121b9ae              # double 0.75916242810290213
	.quad	0x3fd806b6b86b4a42              # double 0.37540977487256921
	.quad	0x3fd9e92e838fd39a              # double 0.40485728118738395
	.quad	0x3fd490d031348c62              # double 0.32133869939042914
	.quad	0x3fecb2ae4713d8d9              # double 0.89681161768273931
	.quad	0x3fd12ef62848eb94              # double 0.26849130567614421
	.quad	0x3fe621854070f034              # double 0.6915918596855648
	.quad	0x3fc0694b22a89a50              # double 0.12821330253901175
	.quad	0x3fe8c17c4aa4ebc7              # double 0.77361883715581647
	.quad	0x3fa17e08d81942f0              # double 0.034164692286713705
	.quad	0x3fe416cf43b2408d              # double 0.62778437826092814
	.quad	0x3fe7f7ddc432c157              # double 0.74900711364720507
	.quad	0x3fe13a58283be341              # double 0.53837211473646829
	.quad	0x3fd53721ab12f1ce              # double 0.33148996073194048
	.quad	0x3fd6d3927f229430              # double 0.35666334548506295
	.quad	0x3fe580be4b7f40b5              # double 0.67196573968433049
	.quad	0x3fddc5358c3ad282              # double 0.4651616925650971
	.quad	0x3fe7a0eb4e4b2dbe              # double 0.73839345256549627
	.quad	0x3feda929e639573e              # double 0.92689986196157981
	.quad	0x3fdf0570f5ae1586              # double 0.48470710746945433
	.quad	0x3f986e65a1893be0              # double 0.023858631119136109
	.quad	0x3fe82c6a80f4f2ef              # double 0.75542187868958688
	.quad	0x3fe9c3af8292bf0c              # double 0.80513740065177463
	.quad	0x3fba873d7cce1d98              # double 0.10362610146522966
	.quad	0x3fe24927436f8e51              # double 0.57142985507057109
	.quad	0x3fd247f571ca4a46              # double 0.28564201462100802
	.quad	0x3feffc3ed7f9f8b3              # double 0.99954168494129758
	.quad	0x3fedb2742e6b7cbd              # double 0.92803391519910117
	.quad	0x3fe5f0e028d7361a              # double 0.68565376259511202
	.quad	0x3fd841e0ae5cb792              # double 0.37902085330539947
	.quad	0x3fd740607a816cb4              # double 0.36330425227579188
	.quad	0x3fe587b64f3042c7              # double 0.67281642405040365
	.quad	0x3fe9e810520b0353              # double 0.8095780947115635
	.quad	0x3fc93e24a29daedc              # double 0.19720895710212616
	.quad	0x3fe30c694f8c9750              # double 0.59526505982351274
	.quad	0x3fe1590099e12bfd              # double 0.54211454443554852
	.quad	0x3fc928c6ba7cdd4c              # double 0.19655689340445759
	.quad	0x3fd128973f3c5788              # double 0.26810246634828916
	.quad	0x3fe21cfa2278be71              # double 0.56603724224801344
	.quad	0x3fab91956f9926d0              # double 0.053845090744813029
	.quad	0x3fe4b0ec775c97c9              # double 0.64659713089781079
	.quad	0x3fea8d4f59de6b33              # double 0.8297497515917257
	.quad	0x3fe715d58e113c59              # double 0.72141530749821492
	.quad	0x3f914dc390c46ac0              # double 0.01689820834244915
	.quad	0x3fc840986c520eac              # double 0.18947129525269213
	.quad	0x3fd734682287fd18              # double 0.36257365581691792
	.quad	0x3fe61328ecd6a56f              # double 0.68983885056984018
	.quad	0x3fd5af963e63915a              # double 0.33884197323484033
	.quad	0x3fec8bbc2af8cecd              # double 0.89205749886465358
	.quad	0x3feb6891991d5784              # double 0.85651473908613739
	.quad	0x3fe7ade0bb5a11ab              # double 0.73997532455591875
	.quad	0x3fdac64491209e58              # double 0.41835130856131775
	.quad	0x3fef1803fb3f74bd              # double 0.97168158599711029
	.quad	0x3fc0f0b5b091ff7c              # double 0.13234587785336405
	.quad	0x3feea4e0ee0523b6              # double 0.95762678612037777
	.quad	0x3fef87ce674050b2              # double 0.985327912962495
	.quad	0x3f437eddae746c00              # double 5.9495758333427684E-4
	.quad	0x3fe1f50cee60704c              # double 0.56116339261962755
	.quad	0x3fdab46a95952014              # double 0.41726173980396308
	.quad	0x3fecfe4a64c634fb              # double 0.90604133303136736
	.quad	0x3fda22fcb37d4982              # double 0.40838544395696641
	.quad	0x3fcbd7b7caeb13a4              # double 0.21752068908804489
	.quad	0x3fe67d5a85adad00              # double 0.70280195340220075
	.quad	0x3fefed17e86e7adb              # double 0.99769206425466039
	.quad	0x3fed98c81d325ecf              # double 0.92490010931484246
	.quad	0x3fd9a6dbb9cc7d92              # double 0.40080922264493168
	.quad	0x3fd13514129885f0              # double 0.26886464897151452
	.quad	0x3fe0abe127ad6b87              # double 0.5209813857030533
	.quad	0x3fa1208a24174ab0              # double 0.033451382547032948
	.quad	0x3fc65582b829b230              # double 0.17448457710578813
	.quad	0x3fdbca399c0e9e5e              # double 0.43421783676101267
	.quad	0x3fc43ee8e8067044              # double 0.15816985444405607
	.quad	0x3f89ef95e6216b00              # double 0.012664004407431317
	.quad	0x3fef401419f930cc              # double 0.97657208512239312
	.quad	0x3fee622f4b7ff51c              # double 0.94948544260083478
	.quad	0x3fb6f15ccb31a978              # double 0.089620399101169812
	.quad	0x3fea1cf9c562cb47              # double 0.81603706886230831
	.quad	0x3fe548370871d09f              # double 0.66506530427297494
	.quad	0x3fec0b6f3616c43e              # double 0.87639580311054721
	.quad	0x3fb6fb1686c269c0              # double 0.08976879873299648
	.quad	0x3fcc55c1e3dccfd0              # double 0.22136710764027479
	.quad	0x3fe186c9d1acf89f              # double 0.54770365669516596
	.quad	0x3fd5e97acd97eb60              # double 0.34237546994670787
	.quad	0x3fe05215ab23d914              # double 0.51002009797847103
	.quad	0x3fe7d0ac1c683f0b              # double 0.7442226939037665
	.quad	0x3fe8bd3e4d88bfa1              # double 0.77310099738496174
	.quad	0x3fd61e5b6430a796              # double 0.34560284408746023
	.quad	0x3fe34f50baadc543              # double 0.60343204937650119
	.quad	0x3fc20dd414ba7700              # double 0.14104701053741309
	.quad	0x3fe56d7f28f8bc62              # double 0.66961629869718942
	.quad	0x3fcadfd02a975548              # double 0.20995523528714899
	.quad	0x3fe765755b1b3f3c              # double 0.73113506120896643
	.quad	0x3fc9e19442eb9174              # double 0.20219662921511949
	.quad	0x3fcbf7ed6d5b71ac              # double 0.21850364532191457
	.quad	0x3fca8d78722b3c78              # double 0.20744233679440405
	.quad	0x3fd8b2b749239490              # double 0.38590795652846399
	.quad	0x3fe3c7a080d6311d              # double 0.61811852610984241
	.quad	0x3fc93114d75917f0              # double 0.19681034579315293
	.quad	0x3fe364c150df73cf              # double 0.60604921145897517
	.quad	0x3fe1574887998351              # double 0.54190470203693952
	.quad	0x3fe6d25116e210f9              # double 0.71317343205785655
	.quad	0x3fe07e8317994b56              # double 0.51544336899892573
	.quad	0x3fc6c8186a9138f0              # double 0.1779814262722037
	.quad	0x3fd92703bbb428a2              # double 0.39300626116222237
	.quad	0x3fe87a7b849ce985              # double 0.76495147610630509
	.quad	0x3fdb39354400165c              # double 0.4253667034211952
	.quad	0x3fe400490a42b625              # double 0.62503482822439038
	.quad	0x3fc970e1a2794f50              # double 0.19875736649793874
	.quad	0x3fd1c314f553d6de              # double 0.2775318523193685
	.quad	0x3fe3ff570e32ec3f              # double 0.62491944096780816
	.quad	0x3feea0a4429fa994              # double 0.95710957539022212
	.quad	0x3fe2ebf026219760              # double 0.59130103538039336
	.quad	0x3fe56f632dd177c8              # double 0.66984709690927335
	.quad	0x3fda09284b694dda              # double 0.40680892338170127
	.quad	0x3fdf28001264c6b0              # double 0.48681642338042774
	.quad	0x3fd2788d9d02afce              # double 0.28860798199707183
	.quad	0x3fc093984036c854              # double 0.12950423369835795
	.quad	0x3fdd5e8142e2aa70              # double 0.4588931229760993
	.quad	0x3fea1d8c60f8c32b              # double 0.81610697688856726
	.quad	0x3fe8645960e82afc              # double 0.76224965026025826
	.quad	0x3fe12dfc225da1d3              # double 0.53686339103756564
	.quad	0x3fdeb2bf8c00441a              # double 0.47965992614723663
	.quad	0x3fd538728f072246              # double 0.33157028167309865
	.quad	0x3fd6cd08e0f8dbf2              # double 0.35626432390148388
	.quad	0x3fe90495c4d14748              # double 0.78180969658772259
	.quad	0x3fe31894c04482dc              # double 0.59675061752576708
	.quad	0x3fd01e876a6bbcb6              # double 0.2518633403078171
	.quad	0x3fd25c254e0d9ab6              # double 0.28687412855507988
	.quad	0x3fe605bda1f4bb50              # double 0.68820077545192682
	.quad	0x3feee509ffef46f4              # double 0.96545886981240736
	.quad	0x3fe1dfd3260f22bf              # double 0.55857236321852344
	.quad	0x3fee0d6686935b7b              # double 0.93913580211925252
	.quad	0x3fed2f54b76526a2              # double 0.9120277006088211
	.quad	0x3fee16089c9d1c85              # double 0.94018965328804482
	.quad	0x3fce94f6f498f690              # double 0.23892104094732192
	.quad	0x3fdbd002f93e5a18              # double 0.43457102146331428
	.quad	0x3fded31de669fdcc              # double 0.48163554669733055
	.quad	0x3fea07674f371d38              # double 0.81340375396476983
	.quad	0x3fe032063b0085ca              # double 0.50610648654781554
	.quad	0x3fd01db5c0638bd2              # double 0.25181335247014858
	.quad	0x3feaf6a386860c01              # double 0.8426072719015566
	.quad	0x3fdc4ec36fa2aba6              # double 0.44230733777902242
	.quad	0x3fea183cac75d426              # double 0.81545861896177452
	.quad	0x3fde52e2b353ee6a              # double 0.47380893242345812
	.quad	0x3febc8cb3e80c026              # double 0.86826097686389825
	.quad	0x3fc50c5c8420e3c4              # double 0.16443973971925463
	.quad	0x3fe7049f8c1dc1ca              # double 0.71931435934498578
	.quad	0x3fee1238ef4cdfcc              # double 0.9397244142373835
	.quad	0x3fda204bb178ec94              # double 0.40822117167744776
	.quad	0x3fd3a968f5d07398              # double 0.30721496587084962
	.quad	0x3fef7b83894a1472              # double 0.98382736982661201
	.quad	0x3fdd56ba3ee8358e              # double 0.45841842787998466
	.quad	0x3fcf1edb8ce29948              # double 0.24312919978292258
	.quad	0x3fde64b77d37542c              # double 0.4748972628415824
	.quad	0x3fdc0181197286b0              # double 0.43759181485266208
	.quad	0x3fe2c37dd8545311              # double 0.58636371852716895
	.quad	0x3fe49f3a3f9e3b92              # double 0.64443695474061458
	.quad	0x3fdb79c4486b07e4              # double 0.42930705139235514
	.quad	0x3fdb5da746049432              # double 0.42759115064319808
	.quad	0x3fb4433992828cf0              # double 0.079150770443948692
	.quad	0x3fb94bcb06148738              # double 0.098812760338231054
	.quad	0x3fe4456d8a0a59fa              # double 0.6334750839330916
	.quad	0x3fe4c54fe1b41e28              # double 0.64908594210368609
	.quad	0x3fe306eb1e967b11              # double 0.59459453558142361
	.quad	0x3fca5a7f0cf74e94              # double 0.20588672764880711
	.quad	0x3fc2fb7cde089f18              # double 0.14829979745376742
	.quad	0x3fc076f4d8980fac              # double 0.12863026214483619
	.quad	0x3fe7632ffea46b9c              # double 0.73085784659211894
	.quad	0x3fe8a5a8bdaede2f              # double 0.77022206351734279
	.quad	0x3feff71f36361c26              # double 0.99891625011594409
	.quad	0x3fce758a5ffc19f0              # double 0.23796205221897493
	.quad	0x3fe4079b7deb5e49              # double 0.62592863649019492
	.quad	0x3fd0f261a3ee018c              # double 0.26479378708611345
	.quad	0x3fd0d44633d40654              # double 0.26295619069432985
	.quad	0x3fb891ec87b91400              # double 0.09597662271069396
	.quad	0x3fe72332b2984a66              # double 0.72304663545430681
	.quad	0x3fbd067476ffd428              # double 0.11337974457985978
	.quad	0x3feac32df0839808              # double 0.83632561660192639
	.quad	0x3feadc5ec5e0e63c              # double 0.83940066002032365
	.quad	0x3fbc44af82b50a78              # double 0.1104230589017251
	.quad	0x3feb7d572f702f05              # double 0.85905036225582931
	.quad	0x3fd24b8b9bbeef2c              # double 0.28586092195085899
	.quad	0x3fe3430559ccc823              # double 0.60193126238869288
	.quad	0x3fc4a4b3a5b8cb80              # double 0.161276298445582
	.quad	0x3fb6e876f45c8fc8              # double 0.089484629305444874
	.quad	0x3fc7c563d8e10844              # double 0.18571136560245993
	.quad	0x3fe7df84a111cd06              # double 0.74603492220777023
	.quad	0x3feb882fc9704570              # double 0.86037434905499133
	.quad	0x3fc7a87bda0a4338              # double 0.18482921740044289
	.quad	0x3fefcdf88f065a12              # double 0.99389293608220641
	.quad	0x3fe475855e83c830              # double 0.63934582195202516
	.quad	0x3fe2ce23e692bce2              # double 0.58766360315157962
	.quad	0x3fec9283626c4247              # double 0.89288491461963637
	.quad	0x3fdb085f37289f04              # double 0.42238598238553515
	.quad	0x3fc058622dc2a8e8              # double 0.127697250694218
	.quad	0x3fb3993fa7e34188              # double 0.076557138908588951
	.quad	0x3fe9b0413ac673a0              # double 0.80276547889262772
	.quad	0x3fdc24d97130798e              # double 0.43974910787246635
	.quad	0x3feb609d1f8b347c              # double 0.85554367218868732
	.quad	0x3fd3d6a3a6579042              # double 0.30997554058399512
	.quad	0x3feb38c1c1ad79c0              # double 0.85067832782424802
	.quad	0x3fc3e00ae79f786c              # double 0.15527473745072784
	.quad	0x3f78757ab9d1a100              # double 0.0059714120844562846
	.quad	0x3fdfdc439f5deb34              # double 0.49781885684176364
	.quad	0x3fd110dce842ae7e              # double 0.26665423089682594
	.quad	0x3fcf1d6597f4f788              # double 0.24308462066431624
	.quad	0x3feddc0d951650f8              # double 0.93311194532955621
	.quad	0x3fdc5942684a06cc              # double 0.44294796165932548
	.quad	0x3fb1e341c1a18890              # double 0.06987391450232594
	.quad	0x3fd9e0e872aac56a              # double 0.40435229490238689
	.quad	0x3fe9b5c3e7edfa4c              # double 0.8034381418108949
	.quad	0x3faa82773f9cb4a0              # double 0.051776625170853352
	.quad	0x3fbb959d749a1ba0              # double 0.10775169464805723
	.quad	0x3fef51fa3fad67f7              # double 0.9787570232103907
	.quad	0x3fe48e87758818b2              # double 0.642398576311072
	.quad	0x3fea9b92b2ea6ee5              # double 0.83149084991916011
	.quad	0x3fee5599c6720214              # double 0.94794930228096285
	.quad	0x3fbda56018889700              # double 0.11580467795337412
	.quad	0x3fea1202906ca586              # double 0.81469848831072578
	.quad	0x3fe65b29511d3b6d              # double 0.69862809984793517
	.quad	0x3fd86a44dc847f8c              # double 0.38148614439887107
	.quad	0x3fea6b0cd8742ed9              # double 0.82556764866009325
	.quad	0x3fc567987a313590              # double 0.16722398725907484
	.quad	0x3fe7315cb2d81f90              # double 0.72477564745439516
	.quad	0x3fd52afb6f0bc7e4              # double 0.33074842304551866
	.quad	0x3fd39f30690448e8              # double 0.30659113174000518
	.quad	0x3fcc26eafbc28284              # double 0.21993768017729931
	.quad	0x3fcd1fd255863ecc              # double 0.22753361869808086
	.quad	0x3f9ef4d718707fc0              # double 0.030230866305032356
	.quad	0x3fe890bc54a253f8              # double 0.76766792802902639
	.quad	0x3fda00fa2abbc8a6              # double 0.40630964444347695
	.quad	0x3febe2fdd0a0f382              # double 0.87145891902729056
	.quad	0x3fe1d79445b2f8dc              # double 0.55756581891162282
	.quad	0x3fd34c654eedce58              # double 0.30153782565978338
	.quad	0x3fc7091dcf01f674              # double 0.17996571166797859
	.quad	0x3f6d89f6baa01400              # double 0.0036058253217583491
	.quad	0x3fd132b4db277f1a              # double 0.26871987726006952
	.quad	0x3fc0f07f36430cb0              # double 0.1323393835974449
	.quad	0x3fec0edef6c146bc              # double 0.87681530184109801
	.quad	0x3fd8b0f87b1f13e4              # double 0.38580142997335387
	.quad	0x3fc02916b0385908              # double 0.1262539253663777
	.quad	0x3fce503c0f928b54              # double 0.2368235660588548
	.quad	0x3fefa9850431d3a7              # double 0.98944330996765905
	.quad	0x3fdf2fa3d94388f2              # double 0.48728271691483294
	.quad	0x3fe28d012a4456c9              # double 0.57971246962798617
	.quad	0x3fa3dc5f85c63880              # double 0.038790688590879974
	.quad	0x3fd9b519b8d5bb7c              # double 0.40167849588663507
	.quad	0x3fbb061de6090938              # double 0.10556208482833973
	.quad	0x3f8df4d50a284340              # double 0.014627136585689038
	.quad	0x3fde49cc69aa1686              # double 0.47325430220403353
	.quad	0x3fe5c7b9dbfde067              # double 0.68063061682825043
	.quad	0x3fdc2596a1f3e4da              # double 0.43979421439833077
	.quad	0x3fd4fd27d191a78c              # double 0.32795138803214097
	.quad	0x3fe821e5e8a0fd54              # double 0.75413794932675637
	.quad	0x3fe73d1e1dbe2df2              # double 0.72621064957769321
	.quad	0x3fe147a3fb6b6302              # double 0.539995184949561
	.quad	0x3fd0e3010fe91ff8              # double 0.26385523370527109
	.quad	0x3fccc847b104b144              # double 0.22486206191514146
	.quad	0x3fee6b240e23023b              # double 0.95057871590694931
	.quad	0x3fef6b14638568a1              # double 0.98182124555320993
	.quad	0x3fa98cd8616f4e20              # double 0.049902688878912693
	.quad	0x3fe4fc0becd2c9d1              # double 0.65576740507668252
	.quad	0x3fda742ba97fdc10              # double 0.41334048798256706
	.quad	0x3fdafb3648fed8c4              # double 0.4215827668043739
	.quad	0x3fd0dac641cef1bc              # double 0.26335293222998835
	.quad	0x3fb4aed6d71512d0              # double 0.080792834768611543
	.quad	0x3fe123b9c6767799              # double 0.53561104547746929
	.quad	0x3fb9d66a8f5b7ed8              # double 0.10092798232971789
	.quad	0x3fe6b1b1dd8929d5              # double 0.70919125813207506
	.quad	0x3fd9c78054c637f0              # double 0.40280159262408599
	.quad	0x3fc4218e3fdff6e8              # double 0.15727403754129132
	.quad	0x3f7c9cb5ce860680              # double 0.0069853879762163951
	.quad	0x3fd84dfcc9153752              # double 0.3797599757862048
	.quad	0x3fbbf532051d1090              # double 0.10921013474313868
	.quad	0x3fe7d6ae1c63eb96              # double 0.74495606942160708
	.quad	0x3fcd267afb475b68              # double 0.22773682851285604
	.quad	0x3fe4e7bd1cd41ba1              # double 0.65328841810775284
	.quad	0x3fdaf9be84760028              # double 0.42149317680014287
	.quad	0x3fdbba767590014e              # double 0.4332557819434627
	.quad	0x3fa33e7e547380c0              # double 0.037586162384970034
	.quad	0x3fc0d24f4ecb71dc              # double 0.13141814563176879
	.quad	0x3fef977a76136b54              # double 0.98724101125422203
	.quad	0x3fdbcbe675f7e01e              # double 0.43432008285845025
	.quad	0x3fe30f6fa352f06c              # double 0.5956342878266816
	.quad	0x3fb2dbe9737893f0              # double 0.07366808957210913
	.quad	0x3fa8ce6fcc48e0f0              # double 0.048449987113089565
	.quad	0x3fd2b68f62d5fed2              # double 0.29239258434243454
	.quad	0x3fdd09cbf7deaa46              # double 0.45372294622453457
	.quad	0x3feb208c9f0dd847              # double 0.84772330346346159
	.quad	0x3fea44862054a9e5              # double 0.82086473764985313
	.quad	0x3fbe05e39c544de8              # double 0.11727736059793126
	.quad	0x3fef0da2be2cb7db              # double 0.97041451591007488
	.quad	0x3f2cb182f8ecb000              # double 2.1891330512724405E-4
	.quad	0x3fd3cad51a47ae70              # double 0.30925490919501097
	.quad	0x3fe2a9cc64fa393d              # double 0.58322734567790457
	.quad	0x3fdce1ea679b8f4e              # double 0.45128879659590815
	.quad	0x3fe7964f7d926a45              # double 0.73709845090645187
	.quad	0x3fd79aeb0212baee              # double 0.36883044435937407
	.quad	0x3fe3b459701392ed              # double 0.61576530351575587
	.quad	0x3fc355343d2da520              # double 0.15103772151204797
	.quad	0x3fdb5f1f28ef7028              # double 0.4276807689436759
	.quad	0x3fef0b4e890849de              # double 0.97013022197853238
	.quad	0x3fc7c60db2a72514              # double 0.18573161338125799
	.quad	0x3fca017480ba449c              # double 0.20316940579917719
	.quad	0x3fd1a950ce4d563c              # double 0.27595920702637833
	.quad	0x3fe6271345937184              # double 0.69226993168881323
	.quad	0x3fdaa13dd5edde5a              # double 0.41609140292664437
	.quad	0x3fe203e7399f52c1              # double 0.5629764676510477
	.quad	0x3fcd480098097468              # double 0.22875983642271369
	.quad	0x3fec5cc7b53e10a0              # double 0.88632569693483631
	.quad	0x3fd81ce4be73a3fe              # double 0.37676352118302237
	.quad	0x3fe9bee38dbc5b97              # double 0.80455186541336132
	.quad	0x3fd062acf7861ee2              # double 0.25602268383270943
	.quad	0x3fc688e8c5f18220              # double 0.17605313935475042
	.quad	0x3fefe70574e789e4              # double 0.99695084412479362
	.quad	0x3fed869901de35bd              # double 0.92268038143964015
	.quad	0x3fdef35585fd75d4              # double 0.48360193333595913
	.quad	0x3fc6817b195c150c              # double 0.1758264421297685
	.quad	0x3fe7bbc75fc3d2aa              # double 0.74167221740807077
	.quad	0x3fe573c1ef73fca6              # double 0.6703805615251397
	.quad	0x3fd200306df5dd42              # double 0.28126154650040658
	.quad	0x3fea81e252bb9aee              # double 0.82835498961216358
	.quad	0x3fd274257ab624e8              # double 0.28833901389641747
	.quad	0x3fe34e94208b9cf4              # double 0.60334211689487782
	.quad	0x3fcee223f7afdff0              # double 0.24127626031963656
	.quad	0x3f9039f596918320              # double 0.0158460972928679
	.quad	0x3fb5d413e5ac11a8              # double 0.085267299244213945
	.quad	0x3fd166f4d879d7c0              # double 0.27190896167973833
	.quad	0x3fe3e1c9c12402d7              # double 0.62131202433382782
	.quad	0x3fc7f5c648341518              # double 0.18718794370230607
	.quad	0x3fea328c8e5dada1              # double 0.81867053800435852
	.quad	0x3fef4577a13d2b0a              # double 0.97722989551525186
	.quad	0x3fd0cd4242b74f86              # double 0.26252800479164085
	.quad	0x3fe07b968b8733d4              # double 0.51508643390263353
	.quad	0x3feb07e769afb282              # double 0.84471483842715167
	.quad	0x3fe082517f863222              # double 0.51590800196715159
	.quad	0x3fe7b70aee1d7ee4              # double 0.74109407908323677
	.quad	0x3fe731cd361495a7              # double 0.72482929766254223
	.quad	0x3fd614178024065a              # double 0.34497630609266638
	.quad	0x3fdfb38b807f948e              # double 0.49533355282466907
	.quad	0x3fc881b19eaac95c              # double 0.19145794150751783
	.quad	0x3fd13c9edc0df93a              # double 0.26932498445229991
	.quad	0x3fc9be6737fac7d8              # double 0.20112314446811186
	.quad	0x3fc7ad2923c9ad44              # double 0.18497194526148963
	.quad	0x3fe2e70cf5e10250              # double 0.59070442221861619
	.quad	0x3fceeb81144163f8              # double 0.24156201828989743
	.quad	0x3fe3a4f9876c0279              # double 0.61388851594536142
	.quad	0x3fef36e778718e39              # double 0.97545217060218825
	.quad	0x3fa18dc5fc343430              # double 0.034284770046817292
	.quad	0x3fea55685c636e98              # double 0.82292573971376992
	.quad	0x3fbb2251fcbba148              # double 0.1059924356483225
	.quad	0x3fcc0d5b37853404              # double 0.21915760241464011
	.quad	0x3fcfeb112b60da2c              # double 0.2493611776169059
	.quad	0x3fda27d5b1b723c2              # double 0.40868131976145261
	.quad	0x3fee6e69dc2982d3              # double 0.95097821236057667
	.quad	0x3fefa5ab6023f10e              # double 0.98897331979199676
	.quad	0x3fa3ddcaa0423dd0              # double 0.038801509917103183
	.quad	0x3fe7ff70b9fdbfdf              # double 0.74993168188484194
	.quad	0x3fd27e49d505cd1a              # double 0.28895803263658737
	.quad	0x3fd4c9048cce0d20              # double 0.324769151215337
	.quad	0x3fecdecbcb443209              # double 0.90219678593126773
	.quad	0x3fd039e427794e24              # double 0.25353340010517145
	.quad	0x3fecbdfa4f945d1b              # double 0.89819064658050551
	.quad	0x3fd3cf34bfbb0da2              # double 0.3095218536729708
	.quad	0x3fd6bf6dcf852ad6              # double 0.35543389573710493
	.quad	0x3fb46b23436759b0              # double 0.079759792285904351
	.quad	0x3fe9f1df88594795              # double 0.8107755339681143
	.quad	0x3fe288cbfc51c331              # double 0.57919883042459308
	.quad	0x3f4e71db15fc7000              # double 9.2910001328361246E-4
	.quad	0x3fe71a70f529dc5c              # double 0.72197769053935756
	.quad	0x3fe5247bb9847523              # double 0.66070352777356722
	.quad	0x3fb6e58467ea85f0              # double 0.089439654703276749
	.quad	0x3fef15b2c5d458a2              # double 0.97139872206277666
	.quad	0x3fd35bb5d80d081a              # double 0.30247255419465235
	.quad	0x3fd54d53230657d6              # double 0.33284452839268164
	.quad	0x3fe1635ec3a8179f              # double 0.54338014806920742
	.quad	0x3fe3860ddca5e08e              # double 0.61011403174690471
	.quad	0x3fe91c7ad5301518              # double 0.78472653997656305
	.quad	0x3f91157281652f60              # double 0.0166833774067493
	.quad	0x3fdaeda1b7f065ce              # double 0.42075388872907815
	.quad	0x3feb3a0d3f1143ac              # double 0.85083639448031567
	.quad	0x3feefe3c36a06e7d              # double 0.96853457135462373
	.quad	0x3fe416e08c2cca9f              # double 0.62779261949465937
	.quad	0x3fe92c2886f78770              # double 0.78664041863178902
	.quad	0x3fd266f9847b8334              # double 0.28753507554761204
	.quad	0x3fd5108f21206d8a              # double 0.32913568720842845
	.quad	0x3fbf3964cfb3dbc0              # double 0.12196950980056354
	.quad	0x3fe3d8526b92ddab              # double 0.62015648851859362
	.quad	0x3fba33de9317da90              # double 0.10235396472112712
	.quad	0x3fe7a6f38783d4d1              # double 0.73912979572073756
	.quad	0x3fe34d531f4808d2              # double 0.60318904981275012
	.quad	0x3fdcde34b06353d8              # double 0.45106236672773781
	.quad	0x3fc5c1a1ae62f530              # double 0.16997166647880979
	.quad	0x3fee49b4263dc5fd              # double 0.94649703473095281
	.quad	0x3fd7c8d0740d2fb4              # double 0.37163173039584341
	.quad	0x3fe94d33bb31999f              # double 0.79067408143309936
	.quad	0x3fda42f1250b2810              # double 0.41033581368958583
	.quad	0x3fbebc3487c2fde8              # double 0.12005928339475924
	.quad	0x3fe3aeabd4dea861              # double 0.61507217002987258
	.quad	0x3fd483b6c67d8b86              # double 0.32053918250874636
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
