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
	.quad	27                              # 0x1b
	.quad	53                              # 0x35
	.quad	75                              # 0x4b
	.quad	102                             # 0x66
	.quad	128                             # 0x80
	.quad	151                             # 0x97
	.quad	176                             # 0xb0
	.quad	199                             # 0xc7
	.quad	227                             # 0xe3
	.quad	248                             # 0xf8
	.quad	265                             # 0x109
	.quad	296                             # 0x128
	.quad	326                             # 0x146
	.quad	353                             # 0x161
	.quad	367                             # 0x16f
	.quad	387                             # 0x183
	.quad	412                             # 0x19c
	.quad	442                             # 0x1ba
	.quad	465                             # 0x1d1
	.quad	493                             # 0x1ed
	.quad	521                             # 0x209
	.quad	544                             # 0x220
	.quad	566                             # 0x236
	.quad	591                             # 0x24f
	.quad	618                             # 0x26a
	.quad	645                             # 0x285
	.quad	678                             # 0x2a6
	.quad	696                             # 0x2b8
	.quad	722                             # 0x2d2
	.quad	748                             # 0x2ec
	.quad	772                             # 0x304
	.quad	792                             # 0x318
	.quad	819                             # 0x333
	.quad	844                             # 0x34c
	.quad	862                             # 0x35e
	.quad	888                             # 0x378
	.quad	910                             # 0x38e
	.quad	935                             # 0x3a7
	.quad	960                             # 0x3c0
	.quad	989                             # 0x3dd
	.quad	1024                            # 0x400
	.quad	1057                            # 0x421
	.quad	1085                            # 0x43d
	.quad	1105                            # 0x451
	.quad	1123                            # 0x463
	.quad	1150                            # 0x47e
	.quad	1178                            # 0x49a
	.quad	1208                            # 0x4b8
	.quad	1234                            # 0x4d2
	.quad	1257                            # 0x4e9
	.quad	1286                            # 0x506
	.quad	1311                            # 0x51f
	.quad	1336                            # 0x538
	.quad	1362                            # 0x552
	.quad	1382                            # 0x566
	.quad	1405                            # 0x57d
	.quad	1427                            # 0x593
	.quad	1445                            # 0x5a5
	.quad	1474                            # 0x5c2
	.quad	1502                            # 0x5de
	.quad	1521                            # 0x5f1
	.quad	1541                            # 0x605
	.quad	1566                            # 0x61e
	.quad	1588                            # 0x634
	.quad	1611                            # 0x64b
	.quad	1634                            # 0x662
	.quad	1656                            # 0x678
	.quad	1685                            # 0x695
	.quad	1712                            # 0x6b0
	.quad	1733                            # 0x6c5
	.quad	1762                            # 0x6e2
	.quad	1786                            # 0x6fa
	.quad	1809                            # 0x711
	.quad	1832                            # 0x728
	.quad	1854                            # 0x73e
	.quad	1879                            # 0x757
	.quad	1904                            # 0x770
	.quad	1929                            # 0x789
	.quad	1950                            # 0x79e
	.quad	1967                            # 0x7af
	.quad	1997                            # 0x7cd
	.quad	2022                            # 0x7e6
	.quad	2052                            # 0x804
	.quad	2084                            # 0x824
	.quad	2103                            # 0x837
	.quad	2130                            # 0x852
	.quad	2164                            # 0x874
	.quad	2191                            # 0x88f
	.quad	2219                            # 0x8ab
	.quad	2247                            # 0x8c7
	.quad	2276                            # 0x8e4
	.quad	2299                            # 0x8fb
	.quad	2320                            # 0x910
	.quad	2346                            # 0x92a
	.quad	2370                            # 0x942
	.quad	2399                            # 0x95f
	.quad	2422                            # 0x976
	.quad	2443                            # 0x98b
	.quad	2473                            # 0x9a9
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
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
	.quad	0x3fe0a4f5e608e339              # double 0.52013678482680981
	.quad	0x3fda370b9c18fe20              # double 0.40960970157536458
	.quad	0x3fcefbab9395ce94              # double 0.24205536562259466
	.quad	0x3fc0d77938123fa8              # double 0.13157572973113685
	.quad	0x3fe077dea9fbaebb              # double 0.51463254165488281
	.quad	0x3fc624ed2be84840              # double 0.1730019058600778
	.quad	0x3fdba032042f017c              # double 0.43165254982525147
	.quad	0x3fd1f1d037c3a680              # double 0.2803841156552167
	.quad	0x3fdb8a9eec4640f0              # double 0.43033574174570699
	.quad	0x3fe8b63ea015e80b              # double 0.77224665896142264
	.quad	0x3fe2fdc047b7c17e              # double 0.59347547538168022
	.quad	0x3fd3a97336f70416              # double 0.30721741073290454
	.quad	0x3fe0105c98c1023b              # double 0.50199727854494058
	.quad	0x3fd9b50d8e892b10              # double 0.40167559546959897
	.quad	0x3fee4307c29a8cda              # double 0.94568241127526709
	.quad	0x3fe7d16cf8a3b94a              # double 0.74431465685283027
	.quad	0x3fa0399a0a9fe220              # double 0.031689466282788681
	.quad	0x3fd17374b43f8a5a              # double 0.27267186739314797
	.quad	0x3fe83bbd687c692f              # double 0.75729246528070415
	.quad	0x3fd4e43deb06d04c              # double 0.32643077804391818
	.quad	0x3fcde2970db72c34              # double 0.23347747964575805
	.quad	0x3fc31b94dbcea010              # double 0.14927921993989957
	.quad	0x3fef87f4a28c556a              # double 0.98534614322367742
	.quad	0x3feecec3bea8fd10              # double 0.96273982275298131
	.quad	0x3fe61b85cf7b0ead              # double 0.6908597042424468
	.quad	0x3fe8feb94c551a15              # double 0.78109421642949661
	.quad	0x3fcbb20660589660              # double 0.21637038902661043
	.quad	0x3fed826195265647              # double 0.92216567164241148
	.quad	0x3fc9176122bb8348              # double 0.19602598377152902
	.quad	0x3fe409411caf025c              # double 0.62612968065520702
	.quad	0x3fb68af67420cfc0              # double 0.088057902671436317
	.quad	0x3fe9c60b539e13c8              # double 0.80542532283345114
	.quad	0x3feae1f98ae22d30              # double 0.8400848114555739
	.quad	0x3fbc135852a26568              # double 0.10967018144073892
	.quad	0x3fe5b9f05668ba9d              # double 0.67894760967995504
	.quad	0x3fe422f4924e0650              # double 0.62926701140549746
	.quad	0x3fe7ed552942ba44              # double 0.74772127207490557
	.quad	0x3fea2b856a911caa              # double 0.81781264127575537
	.quad	0x3fd041b9c5d8dfa0              # double 0.25401157685291231
	.quad	0x3fd5cd355eb59f12              # double 0.34064993142099909
	.quad	0x3fe55e4e84c9bb73              # double 0.66776205001029465
	.quad	0x3feb74f9080f48ce              # double 0.85802890371476237
	.quad	0x3fda37a5073731ba              # double 0.40964627937935527
	.quad	0x3fbd560871655bc8              # double 0.11459400909858097
	.quad	0x3fd6bc246a5b2a98              # double 0.35523329149570193
	.quad	0x3faad6406d99b1e0              # double 0.052415860537482706
	.quad	0x3fed02473f6e1044              # double 0.90652811421069445
	.quad	0x3fd83d31c6f71c30              # double 0.37873501234247708
	.quad	0x3fd16b7b41829dbc              # double 0.27218514821512563
	.quad	0x3fe2f255022f2ef3              # double 0.59208155085204195
	.quad	0x3fd2d97819083252              # double 0.29452326244862548
	.quad	0x3fed8189d5821dad              # double 0.92206279469330854
	.quad	0x3feaf68555941926              # double 0.84259287561943519
	.quad	0x3fe291feeae5569f              # double 0.58032174947830473
	.quad	0x3fdab371625079de              # double 0.41720232583057093
	.quad	0x3fe24246293bef45              # double 0.57059009603060729
	.quad	0x3fd3537040026f08              # double 0.30196768046310796
	.quad	0x3fcde8759fb77514              # double 0.23365659998572907
	.quad	0x3fe6b01948dd0353              # double 0.70899643164748694
	.quad	0x3fd2cc59d64638fc              # double 0.29372259068703932
	.quad	0x3fa41c1be964c670              # double 0.039276954880176684
	.quad	0x3fd4c8ae58b8b358              # double 0.32474859871108697
	.quad	0x3fbf159ce0217930              # double 0.12142353507940551
	.quad	0x3fb76e9bd60a7310              # double 0.091531505352076658
	.quad	0x3fd5046c0694f4d4              # double 0.3283948959613785
	.quad	0x3fd7ee4c59488780              # double 0.3739195701510809
	.quad	0x3fad784b336cb2d0              # double 0.057558393504540839
	.quad	0x3fe0200a5c59decb              # double 0.50391119038882815
	.quad	0x3faab82d76f5eb60              # double 0.052186413547096633
	.quad	0x3fef8ec7f64606a1              # double 0.98617933368969457
	.quad	0x3fbaf8b943272ec0              # double 0.10535772218207295
	.quad	0x3fc672c5d9babb5c              # double 0.17537758952445415
	.quad	0x3feb7676cd4e11ec              # double 0.85821094606995762
	.quad	0x3fed4537bcfd3af8              # double 0.9146994296259825
	.quad	0x3fe473dc76009bd0              # double 0.63914320990886075
	.quad	0x3facba3f4c174270              # double 0.056108453787264589
	.quad	0x3fefd59aad3f609a              # double 0.99482473218360501
	.quad	0x3fe7f0f81ce18fa3              # double 0.74816518441047142
	.quad	0x3fdde2cdf6b86268              # double 0.46696805089735571
	.quad	0x3fe61d8b9a5fcd57              # double 0.6911066069718953
	.quad	0x3fe1502a89872fae              # double 0.54103590832663939
	.quad	0x3fe05e08c4c170bc              # double 0.5114787905581788
	.quad	0x3fdac68a5911c8e0              # double 0.4183679456538254
	.quad	0x3fd57c8319e33ecc              # double 0.33572461631864026
	.quad	0x3fe8cf32f8b30929              # double 0.77529285978406393
	.quad	0x3fddfc230d3cdd2a              # double 0.46851421635388368
	.quad	0x3fe57b9b00cfcab8              # double 0.67133855970890632
	.quad	0x3fd2b3c171c8a3b6              # double 0.29222141372388977
	.quad	0x3fedabbe039faf77              # double 0.92721462924735831
	.quad	0x3feb7b65361ee0e5              # double 0.85881290979798719
	.quad	0x3fc1e2efb101f7f0              # double 0.13973804610208118
	.quad	0x3fd158d449d98a54              # double 0.27104670726672464
	.quad	0x3fe7a32bcdd38211              # double 0.73866834831648209
	.quad	0x3fe538e51a880894              # double 0.66319518262777644
	.quad	0x3fe811ffd7cc72b8              # double 0.75219719074410474
	.quad	0x3fd41f6adfe26d36              # double 0.3144175707218041
	.quad	0x3fed9f309697f902              # double 0.92568234837361296
	.quad	0x3fcee410ac2fea44              # double 0.24133499534203129
	.quad	0x3fdd9215281ad594              # double 0.46204117695318669
	.quad	0x3fe1e5cb183ad5fb              # double 0.55930094463718605
	.quad	0x3fb51fd54ec13918              # double 0.082516986586800178
	.quad	0x3fd4dc69d5c3604a              # double 0.32595296740828827
	.quad	0x3fe2e81d84b86056              # double 0.59083438798826182
	.quad	0x3fdf64a180272e7e              # double 0.49051702036806677
	.quad	0x3fe8986adacdc008              # double 0.76860563979244123
	.quad	0x3fe2824ec1781c2d              # double 0.57840669428776936
	.quad	0x3fe58ac19383cce5              # double 0.67318800746434404
	.quad	0x3fe9bc0010454e37              # double 0.80419924905658646
	.quad	0x3fd85874d45f0278              # double 0.38039894809120467
	.quad	0x3fe14c5fa2639025              # double 0.54057294575296011
	.quad	0x3fe404b0417ff4ad              # double 0.62557232659277917
	.quad	0x3fcf5b4416c25b84              # double 0.24497271643914698
	.quad	0x3fe9a31fbe1dbb5e              # double 0.80116259700831072
	.quad	0x3fd6ef3e679f9264              # double 0.35835228080239845
	.quad	0x3fe5a88c032c10f4              # double 0.67682457561070786
	.quad	0x3fe535f9cbc593ea              # double 0.66283883856942549
	.quad	0x3fee59229ecda3bb              # double 0.9483807660700373
	.quad	0x3fcff5e3999b699c              # double 0.24969143867822374
	.quad	0x3fe9203f84e3fb99              # double 0.78518653826891971
	.quad	0x3fe35ceeea9edde1              # double 0.60509439300852474
	.quad	0x3fb1823a3d719600              # double 0.068393363953497044
	.quad	0x3fe91e01ed7d7d98              # double 0.78491302857212286
	.quad	0x3fbb0ccb62dc9238              # double 0.10566397822965079
	.quad	0x3f99079386ff5060              # double 0.024442963709433108
	.quad	0x3fecdd3e32c0ec73              # double 0.90200719750227021
	.quad	0x3fde8481119cb73a              # double 0.47683741302431637
	.quad	0x3fcad012e1ea1004              # double 0.20947490721675888
	.quad	0x3fdc86c7b71b5314              # double 0.4457263267661784
	.quad	0x3fc480fff5f667e0              # double 0.16018676290406031
	.quad	0x3fe1cedead219fba              # double 0.55650266470637821
	.quad	0x3fb6f7fc204df510              # double 0.089721448790403224
	.quad	0x3fe40fa3d39bdc13              # double 0.62690917329644191
	.quad	0x3fd4d145a7ee84b2              # double 0.32527295493680264
	.quad	0x3fd5f2f526279358              # double 0.34295395589861277
	.quad	0x3fd8a8427942ca2c              # double 0.38526975480923187
	.quad	0x3fe31e27cb4b564b              # double 0.59743108468928463
	.quad	0x3fb0979bfdb410a8              # double 0.064813374938298751
	.quad	0x3fe0ff298bc00fd1              # double 0.53114774031609546
	.quad	0x3fe185ee66dee5e9              # double 0.5475990304177546
	.quad	0x3f8a986719b06ac0              # double 0.012985997649641035
	.quad	0x3fe428608d35edb3              # double 0.62992885189253511
	.quad	0x3fedbb620c1e82c0              # double 0.92912390105274056
	.quad	0x3fe5a2fbbff0a2af              # double 0.67614543426778606
	.quad	0x3fe3538d84f86386              # double 0.60394931765323245
	.quad	0x3fe073835e940772              # double 0.51410072777092197
	.quad	0x3fad1e77a931a420              # double 0.056873073009065189
	.quad	0x3fbae408349b6cd8              # double 0.10504199299196004
	.quad	0x3faf249463003850              # double 0.060825955472055271
	.quad	0x3fbbe69a572a0e50              # double 0.10898747089418603
	.quad	0x3fd29bab7cd8add4              # double 0.29075133506804929
	.quad	0x3fcc4718c7b271c8              # double 0.22091970206100897
	.quad	0x3f8bfcb54263fd40              # double 0.013665596092777066
	.quad	0x3fd2cd73a7d2cf34              # double 0.29378978146563672
	.quad	0x3fe7ce63668a7af2              # double 0.7439438822510438
	.quad	0x3fe4140062639761              # double 0.62744158951384688
	.quad	0x3fe14feb5ad15484              # double 0.54100578058081839
	.quad	0x3fdf5d1a075c72b2              # double 0.49005747526988863
	.quad	0x3feb50dd71d9425d              # double 0.85362121807163371
	.quad	0x3fb4d81214fc48e8              # double 0.08142197620717051
	.quad	0x3fd59d21310d9a16              # double 0.33771543302864993
	.quad	0x3fdf3a5861b9dbc8              # double 0.48793611091190003
	.quad	0x3fd477dcb77d04d2              # double 0.31981580656799935
	.quad	0x3fe1a71376a86ccc              # double 0.55164502311108654
	.quad	0x3fdb921eda235a10              # double 0.43079348852680344
	.quad	0x3fa4d452ece96e10              # double 0.040682403011228385
	.quad	0x3fed7b4ccc0e46b4              # double 0.92130126814500679
	.quad	0x3fd9241107ea9ff6              # double 0.39282632611366297
	.quad	0x3fb28f5e4004ce10              # double 0.07250012457807764
	.quad	0x3fcb11114c7aa3a4              # double 0.21145836099938464
	.quad	0x3fc29106838b3634              # double 0.14505082533871561
	.quad	0x3f937038629a5a40              # double 0.018982773798223329
	.quad	0x3fcbb7159a010d34              # double 0.21652479190570662
	.quad	0x3fcb070ad32fd260              # double 0.21115241348128944
	.quad	0x3fe41768fb6bef4d              # double 0.62785767656121438
	.quad	0x3fd09122f47c589e              # double 0.25885843158301636
	.quad	0x3feaea0c520ff07d              # double 0.84107032802377513
	.quad	0x3fe52317954c7d44              # double 0.66053370628279895
	.quad	0x3fe1d18d6281ba86              # double 0.55683011283493111
	.quad	0x3fa49c21751fde60              # double 0.040253682658598633
	.quad	0x3fdc9aa31702bc96              # double 0.4469382977212687
	.quad	0x3fed5267d496b4c1              # double 0.91630927582959754
	.quad	0x3fbd02ba9426bf58              # double 0.11332288853622907
	.quad	0x3fe34278efcdb073              # double 0.60186430775276134
	.quad	0x3fb3b5b2ee6913d8              # double 0.076991255956343152
	.quad	0x3fbc7c2aa72e1748              # double 0.11126963216346752
	.quad	0x3feb75e32c285b79              # double 0.85814055084743679
	.quad	0x3fe468da6041f626              # double 0.63779944229435581
	.quad	0x3fed39ee1f00bb89              # double 0.91332155280348204
	.quad	0x3fb044309fc545f8              # double 0.063540495878690595
	.quad	0x3fdfdaffc3ddae50              # double 0.49774164321454339
	.quad	0x3fe211356754fac9              # double 0.56460066015264332
	.quad	0x3fd95c67d471a33e              # double 0.3962649893424447
	.quad	0x3feff0359d3b5f96              # double 0.99807244023667141
	.quad	0x3fe1e40b5ebf9ac9              # double 0.55908745294149143
	.quad	0x3fee6f7c863cd204              # double 0.95110918253209364
	.quad	0x3febb23e98058050              # double 0.86550836269089793
	.quad	0x3fe73d5c810c109d              # double 0.72624039845006261
	.quad	0x3fdbf232cc36e556              # double 0.43665761893097021
	.quad	0x3fd5ce4864faaba4              # double 0.34071550236938664
	.quad	0x3fc63b12463321ac              # double 0.17367771556588474
	.quad	0x3fcc76ad5d25ab6c              # double 0.22237174080086264
	.quad	0x3fd0b6055b2b017c              # double 0.26110967543720398
	.quad	0x3fe41a3a9fc69544              # double 0.6282017822856365
	.quad	0x3fe9f96bf1a9ada4              # double 0.81169697952048069
	.quad	0x3faba6d6cd4f0730              # double 0.05400725609025725
	.quad	0x3fe80c794ae8ba78              # double 0.75152268057520555
	.quad	0x3fe22b36d59c09fb              # double 0.5677751705227928
	.quad	0x3fe57ecf6abb5091              # double 0.67172976347002777
	.quad	0x3fe9a2492a94f94e              # double 0.80106027905257249
	.quad	0x3fc1719f60895368              # double 0.13627998555844134
	.quad	0x3fb41f0480b54d98              # double 0.078598290846733199
	.quad	0x3fd84ed1a00026f8              # double 0.37981072068269794
	.quad	0x3fe7ec65f2743590              # double 0.74760720590863805
	.quad	0x3fe2a585770aa40a              # double 0.58270524263673562
	.quad	0x3feb1eec18f4f9e9              # double 0.84752468943025605
	.quad	0x3feee6dd556384e7              # double 0.96568171193589769
	.quad	0x3fdbd528d32254f8              # double 0.43488522165837606
	.quad	0x3fc48bd62f46d5ac              # double 0.16051747616226686
	.quad	0x3fe542db5d5dc8ee              # double 0.66441124187102019
	.quad	0x3fd454e39dc878dc              # double 0.31768122108941355
	.quad	0x3fb0e53bdb9f97e0              # double 0.065997830504414434
	.quad	0x3fe38d3cf1b48356              # double 0.61099097450287831
	.quad	0x3fd233788940cf5a              # double 0.2843915310252122
	.quad	0x3fe03f2a5065961a              # double 0.50771060659889433
	.quad	0x3fe07d63e293d16e              # double 0.51530641797448395
	.quad	0x3fe30bbe7d5eb52e              # double 0.5951836060172917
	.quad	0x3fb0ceac9bdbd328              # double 0.065653598834455651
	.quad	0x3fc6c951c3246e90              # double 0.17801878002579885
	.quad	0x3fce0d2ddb59465c              # double 0.2347771950758667
	.quad	0x3fbd9cce95e479e8              # double 0.11567393455013752
	.quad	0x3fdd7e302c4fa8a0              # double 0.46082691504728679
	.quad	0x3fec315bb5b93c94              # double 0.88102517598044238
	.quad	0x3fe26a4faa5b1f24              # double 0.57547744057317063
	.quad	0x3f9e8ee91f58f160              # double 0.029842035806937672
	.quad	0x3fe3cfb6da4c322f              # double 0.61910574566133458
	.quad	0x3fd00718327966ca              # double 0.25043301514743332
	.quad	0x3fc44b6042574464              # double 0.15855029334355486
	.quad	0x3fc74d0a9b69fb88              # double 0.18203861797880116
	.quad	0x3fedd1c42564f6a0              # double 0.93185622504798359
	.quad	0x3fef57492edb944c              # double 0.97940501357937526
	.quad	0x3fed85283ec19a2c              # double 0.92250454194146902
	.quad	0x3fed3e4b28684c00              # double 0.91385419742653085
	.quad	0x3fc8ce4b7de2ba24              # double 0.19379562041054144
	.quad	0x3fe3721cdae97da5              # double 0.60767977482094138
	.quad	0x3fc43f8aced099d8              # double 0.15818915460950111
	.quad	0x3fee9365b402c197              # double 0.95549283178665945
	.quad	0x3fe630e99cb5b225              # double 0.69347076995251611
	.quad	0x3fb1ca76c06f01b8              # double 0.069495603543152096
	.quad	0x3fea60e9a310a70e              # double 0.82433015679018395
	.quad	0x3fe48944fce7f360              # double 0.64175652881349876
	.quad	0x3fd5b734c434895a              # double 0.33930701409021469
	.quad	0x3fe64f887016b2de              # double 0.69720861332242712
	.quad	0x3fdc4d73504b21dc              # double 0.44222719994698223
	.quad	0x3feece07736ab7c4              # double 0.96265003721577402
	.quad	0x3fcdbd60c0ec3970              # double 0.23234185619407866
	.quad	0x3fe5ed7960e84435              # double 0.68523854186253763
	.quad	0x3fecacc33d658a01              # double 0.89608919135599774
	.quad	0x3fab5e7b0de9c770              # double 0.053455205391300775
	.quad	0x3fee423ebd69935f              # double 0.94558655733690589
	.quad	0x3fd3598db6a4542e              # double 0.30234091602443669
	.quad	0x3fd408cb3a5e76de              # double 0.31303673458192616
	.quad	0x3fc2ee0f42b9a300              # double 0.14789000280440945
	.quad	0x3fe5b9391c2e829b              # double 0.67886024002298784
	.quad	0x3fdeb4c2e74c7778              # double 0.47978279674304458
	.quad	0x3fef257f74134e0b              # double 0.97332737608889041
	.quad	0x3feb969b25d43735              # double 0.8621345270964641
	.quad	0x3fee036868827c77              # double 0.93791599666646064
	.quad	0x3fdaf5b43cd4bfe0              # double 0.42124658527882097
	.quad	0x3fc8df44d82daae0              # double 0.19431362681947117
	.quad	0x3fdf5802364d2282              # double 0.48974662115919199
	.quad	0x3fe4f383551c8e10              # double 0.65472571013782677
	.quad	0x3fec483cbbe8e61b              # double 0.88381802273869725
	.quad	0x3fc3239cb9e5788c              # double 0.14952429844828818
	.quad	0x3fe1b93437146894              # double 0.55385790593870121
	.quad	0x3fd7d6cea5556d8e              # double 0.3724857916438048
	.quad	0x3fe11fab90e65cd3              # double 0.5351159887385627
	.quad	0x3fe0a90a2d0d8c1a              # double 0.52063473510168312
	.quad	0x3fc60ac9b3272e58              # double 0.17220422027309001
	.quad	0x3feb180780bf6091              # double 0.84668326517113901
	.quad	0x3fe25603fc8fd20d              # double 0.57299994781948416
	.quad	0x3fe9141ffbbe457b              # double 0.78370665711024345
	.quad	0x3fd76c322d85f4e8              # double 0.36597876020080244
	.quad	0x3fd2b0cf0c816be2              # double 0.29204155179257729
	.quad	0x3fc2fd30def98d0c              # double 0.14835177314225978
	.quad	0x3fc6d7a1484bba38              # double 0.17845550565785273
	.quad	0x3fca2d3f43dbe880              # double 0.20450583280018364
	.quad	0x3fde3dfad126d4d2              # double 0.47253294396371104
	.quad	0x3fc79ae141d7190c              # double 0.18441405978064329
	.quad	0x3fe0be4b9f7ff3ef              # double 0.52322941925342359
	.quad	0x3fd7b1e571f0c4f2              # double 0.37023292662622886
	.quad	0x3feba46971e2ad5a              # double 0.86381981127980656
	.quad	0x3fea2d8e95aaff4e              # double 0.81806115371726107
	.quad	0x3feb78344e203826              # double 0.85842337855297468
	.quad	0x3fe496bad3d3ad66              # double 0.64339963314470761
	.quad	0x3fe124ff00b9e870              # double 0.53576612607800023
	.quad	0x3fc3d1cba27dac54              # double 0.15483994897963049
	.quad	0x3fdf1bc86f0b7748              # double 0.48607073635308895
	.quad	0x3fe43c37c0562af5              # double 0.63235080304852309
	.quad	0x3fde143a1936cee4              # double 0.4699845548850432
	.quad	0x3fe42048163dcc56              # double 0.6289406237032249
	.quad	0x3fe80fa1f9b8b36d              # double 0.75190829061248865
	.quad	0x3fc348f46301fedc              # double 0.15066389879574771
	.quad	0x3feaa9f397f3d5ab              # double 0.8332460372754914
	.quad	0x3fd446e28da8bd24              # double 0.31682647546672826
	.quad	0x3fbe53826e1c6140              # double 0.11846175373319046
	.quad	0x3feacab9500cebea              # double 0.83724656710489609
	.quad	0x3fdc3d08d7fed99c              # double 0.44122525304137539
	.quad	0x3fe1f01fb5a13d90              # double 0.5605619952638552
	.quad	0x3fe60d371195f553              # double 0.68911317286225893
	.quad	0x3fec70a7a0ef28e2              # double 0.88875180656875963
	.quad	0x3fec5444a6b1769f              # double 0.8852866416670685
	.quad	0x3feb11c5f5657367              # double 0.84591958931887923
	.quad	0x3fc0c670e8b44238              # double 0.13105594027048695
	.quad	0x3fd7e880b8ba58c6              # double 0.37356584586940433
	.quad	0x3fd7979f8bab1582              # double 0.36862934722406504
	.quad	0x3fed067b22e97405              # double 0.90704113787398966
	.quad	0x3fefac1e5ad31f66              # double 0.98976056803892898
	.quad	0x3fdd2e2a9328652e              # double 0.45594276781919774
	.quad	0x3f9ca7eba1049580              # double 0.027984315588715614
	.quad	0x3fa65592f1549be0              # double 0.043621627768793081
	.quad	0x3fe0955596b345d4              # double 0.5182292884221007
	.quad	0x3fe6e3d7cd6a6fef              # double 0.71531286354320212
	.quad	0x3fe764b4f9e24efe              # double 0.73104332738373023
	.quad	0x3fed225b3681069a              # double 0.9104438843280207
	.quad	0x3fed423beb16f336              # double 0.91433521190592759
	.quad	0x3fcbe1b23acc4db4              # double 0.21782520171164566
	.quad	0x3fed987357b19576              # double 0.92485968711541378
	.quad	0x3fe7dcf810b67d7b              # double 0.74572375549534742
	.quad	0x3fcf5acbf64d9468              # double 0.24495839621082216
	.quad	0x3f90ba7bf4449300              # double 0.016336380752494328
	.quad	0x3fe850e90a3c8543              # double 0.7598767471246578
	.quad	0x3fc2f8037b18d75c              # double 0.14819377432439296
	.quad	0x3fe0a8e33ccd1beb              # double 0.52061616778598585
	.quad	0x3fefd6833b463849              # double 0.99493562294970516
	.quad	0x3fd6488cfa7a6870              # double 0.34817814312703543
	.quad	0x3fe6fa2f1d2fcf4c              # double 0.71804004383600661
	.quad	0x3fc938e57e29602c              # double 0.19704884205089124
	.quad	0x3fe04ed805532ee8              # double 0.50962449111963526
	.quad	0x3fe5946961addfb6              # double 0.67436665609328972
	.quad	0x3fef95832b155f2a              # double 0.98700102247946586
	.quad	0x3fe6ba4a89e53a7d              # double 0.71024062092494911
	.quad	0x3fe604e4c35e1925              # double 0.68809736402252908
	.quad	0x3fe040b460fc358f              # double 0.50789851133747443
	.quad	0x3fae5a0c138fe880              # double 0.059280755413014141
	.quad	0x3fee74e8d7ab1fd0              # double 0.95177118418450313
	.quad	0x3fe4aab63780cb80              # double 0.64583884087038257
	.quad	0x3fd8c5785845b25e              # double 0.38705261822068404
	.quad	0x3fbfb6d707bbc128              # double 0.12388366640857795
	.quad	0x3feb57f3f199df4d              # double 0.85448643863399243
	.quad	0x3fdeaf8f300118a8              # double 0.47946529090803347
	.quad	0x3fdccce181f69c44              # double 0.45000493709307343
	.quad	0x3fd2a533257a40da              # double 0.29133299503247445
	.quad	0x3fd269be12cf3d96              # double 0.28770400845402244
	.quad	0x3fcd29d6389ac170              # double 0.22783925784961978
	.quad	0x3fa7777d9b973080              # double 0.045833516352645098
	.quad	0x3fd5115116b2dbce              # double 0.32918193070093771
	.quad	0x3fcf9ddd6aab8064              # double 0.24700515469067164
	.quad	0x3fb355cf3c5acfd0              # double 0.075528099284212446
	.quad	0x3fe9c525ca606382              # double 0.80531587149299377
	.quad	0x3fef3b424c09de89              # double 0.97598376132278119
	.quad	0x3fe461b8fb695e39              # double 0.63692902664019535
	.quad	0x3fd50eb48d57e41c              # double 0.32902253916796709
	.quad	0x3fd10db3a835d44a              # double 0.2664612906149314
	.quad	0x3fded988295eb218              # double 0.48202709236173424
	.quad	0x3fe824bef2682126              # double 0.75448558182782643
	.quad	0x3fdf920a58e73c2c              # double 0.49328859979590578
	.quad	0x3fe15f9e57f54a4b              # double 0.54292218379334523
	.quad	0x3fe48b06ffa8ef64              # double 0.64197111066412704
	.quad	0x3fc3e484d3d4c18c              # double 0.15541134208025331
	.quad	0x3fcfaefb13e58e00              # double 0.24752748939054925
	.quad	0x3fd8fd69de2a1784              # double 0.39046713538879652
	.quad	0x3fe7ccfd029d1dbb              # double 0.74377298841948603
	.quad	0x3fdba1acf937771e              # double 0.43174290025295814
	.quad	0x3fe4ac8d6e005524              # double 0.6460635326826929
	.quad	0x3feb89735f043e70              # double 0.86052864606786095
	.quad	0x3fef2d5fedaa85ac              # double 0.97428890628014164
	.quad	0x3fb7d223996dd6a8              # double 0.093050217588678152
	.quad	0x3fb6ab60ae4f9868              # double 0.08855251556050947
	.quad	0x3fe7f59e8c50176c              # double 0.74873282818655928
	.quad	0x3fe1984a8a7e20bd              # double 0.54984023141243876
	.quad	0x3feefaf69340674b              # double 0.96813515434335195
	.quad	0x3fea6481366b2697              # double 0.82476864460587052
	.quad	0x3fc1ceeffab03dc0              # double 0.13912772884985536
	.quad	0x3fc2e871e5e8ce54              # double 0.14771865583462562
	.quad	0x3fee808352fdf5a4              # double 0.95318762025242564
	.quad	0x3fe0c1d726248c19              # double 0.52366216134794563
	.quad	0x3fcabf9c9256efc8              # double 0.20897252221572971
	.quad	0x3fdc803d85387a0e              # double 0.44532716760468893
	.quad	0x3fe833662bbb574d              # double 0.75627430478446345
	.quad	0x3fdc49b9699ab600              # double 0.44199977219508924
	.quad	0x3fd5c13d96d602fc              # double 0.33991946916653126
	.quad	0x3fc987b8c19b9ae4              # double 0.19945439771182472
	.quad	0x3fb2765341d52540              # double 0.072117999622737905
	.quad	0x3fe700a5381b3271              # double 0.71882878263711636
	.quad	0x3fea4de560e931a3              # double 0.82200879028237173
	.quad	0x3f86341b844019c0              # double 0.01084157464357538
	.quad	0x3fed1026e0d14d72              # double 0.90822166356740142
	.quad	0x3fe559c4dfb534df              # double 0.66720813458382711
	.quad	0x3fe442067db6a278              # double 0.6330597358074348
	.quad	0x3fe5e377bb62a21d              # double 0.68401705359162046
	.quad	0x3fc38258efe52294              # double 0.1524153872835724
	.quad	0x3fe9fa7093807329              # double 0.81182125863015131
	.quad	0x3fb7b3e496ffc6f8              # double 0.092588698258420865
	.quad	0x3fe8ab7d6704d530              # double 0.77093381996988875
	.quad	0x3fe04f51b1f6e40b              # double 0.50968250998187281
	.quad	0x3fe9c11208f53574              # double 0.80481817006663769
	.quad	0x3fedd1a98408ae22              # double 0.93184352672455284
	.quad	0x3fe3e1a5ec545510              # double 0.6212949386414568
	.quad	0x3fd39c9b41082442              # double 0.30643349982034718
	.quad	0x3fe656ed4b7a6e54              # double 0.69811119787068288
	.quad	0x3fd2ae14c12199b8              # double 0.29187506542657671
	.quad	0x3fe34ab4ac73a3b1              # double 0.60286935502982975
	.quad	0x3febe5d43c8e8b67              # double 0.87180530383589605
	.quad	0x3fec238d8d243786              # double 0.87933995787328523
	.quad	0x3fcf3974476afcd8              # double 0.24394086348727373
	.quad	0x3fd56d3e8c043210              # double 0.33479274438357809
	.quad	0x3fd8c990ef767646              # double 0.38730262169869822
	.quad	0x3fe0dce3f39b372a              # double 0.52696416453702466
	.quad	0x3fcd27f6e2d16648              # double 0.22778211665245096
	.quad	0x3fd5e4a68309b410              # double 0.34208071514768879
	.quad	0x3fa028dbbf0ab3f0              # double 0.031561724730046481
	.quad	0x3fea266038432a53              # double 0.81718455303900794
	.quad	0x3fcfb59678c5f244              # double 0.24772911927347441
	.quad	0x3fea4f6f4ae69e36              # double 0.82219662312576847
	.quad	0x3fdb52b53dc58646              # double 0.4269230941045844
	.quad	0x3fc1b6e7cda75ab0              # double 0.13839433232961573
	.quad	0x3fdbdfe7129e2fde              # double 0.43554093187480969
	.quad	0x3fe6562c4dd5c7c5              # double 0.69801917268909419
	.quad	0x3fc6dff752f11194              # double 0.17870990323912095
	.quad	0x3fdcb6fe483c109c              # double 0.44866902403033193
	.quad	0x3fe5e0f6ce1cb90f              # double 0.68371143585480521
	.quad	0x3fdbfa6efd97a86e              # double 0.43716025128254088
	.quad	0x3fd556a9a906dbe0              # double 0.33341447359583576
	.quad	0x3fe433695cb4be24              # double 0.63127582651754155
	.quad	0x3fe73ae0d35978b1              # double 0.72593728331755447
	.quad	0x3fd38eccab850c4c              # double 0.30559078931782291
	.quad	0x3fafc3bfbc9ac4a0              # double 0.062040321133630671
	.quad	0x3fea2815f6b2ffd8              # double 0.81739328559342095
	.quad	0x3fdde24fc7ce69be              # double 0.46693796646436769
	.quad	0x3fe544a26f51689c              # double 0.66462823621556621
	.quad	0x3fe6a4057d6f697a              # double 0.70752214907706379
	.quad	0x3fe55e2f932c745e              # double 0.66774729485372197
	.quad	0x3fe0b16be970a4ca              # double 0.52165790170433834
	.quad	0x3fe567bfbf23e838              # double 0.66891467411119887
	.quad	0x3fc9364f19a7e404              # double 0.19696987869954807
	.quad	0x3fea4de9237d5b59              # double 0.82201058322503251
	.quad	0x3fe5ba595a483199              # double 0.67899768479542211
	.quad	0x3fedb31e55afee02              # double 0.92811505065714095
	.quad	0x3fd209226bb6821c              # double 0.28180752295341605
	.quad	0x3fb193e8743e4940              # double 0.068663147334778962
	.quad	0x3fe43f80b05c65bf              # double 0.63275179334157616
	.quad	0x3fe287b20f7138f6              # double 0.57906439796513953
	.quad	0x3fa76dfd02814170              # double 0.045761019283079629
	.quad	0x3fddf1f98156440c              # double 0.4678939593368916
	.quad	0x3fe473006b073328              # double 0.63903828529291662
	.quad	0x3fd4b84fb87ecde8              # double 0.32374947564241419
	.quad	0x3fa1b1824d1f9620              # double 0.034557411112285275
	.quad	0x3fe96a8df8e3e9d9              # double 0.79425715075859238
	.quad	0x3f9d44e566197d80              # double 0.028583130222953113
	.quad	0x3fde53ecb2957ad4              # double 0.47387235107264059
	.quad	0x3feedcd75ac7a42e              # double 0.96445815782965894
	.quad	0x3fcf317dfc6c41b4              # double 0.24369788003288095
	.quad	0x3fe595f12964c8d9              # double 0.67455347141938227
	.quad	0x3fd4b06ba24c1ab6              # double 0.32326784943908693
	.quad	0x3fd0211ca93e9480              # double 0.25202099349764495
	.quad	0x3fdfaada4baf4474              # double 0.49480302229955631
	.quad	0x3fe2146d7114e3ac              # double 0.56499359213113598
	.quad	0x3fd03029f77619e6              # double 0.25293969312806863
	.quad	0x3fdbed88479314fc              # double 0.4363728236169917
	.quad	0x3fd6befdf000169a              # double 0.35540722310575179
	.quad	0x3fc3d98d5801bd78              # double 0.15507666394431019
	.quad	0x3fe6fc9de0428569              # double 0.71833699990035627
	.quad	0x3fdeede0904ea5a4              # double 0.48326887218953574
	.quad	0x3fc890219368287c              # double 0.19189853379822697
	.quad	0x3f91aeb01a19e3a0              # double 0.017267943947874564
	.quad	0x3feab1548569bdc0              # double 0.83414674813496248
	.quad	0x3fa85082f97df760              # double 0.04748925490910838
	.quad	0x3fd7803d2a2b5ca2              # double 0.36720208280662281
	.quad	0x3fc5f58ec78adbd8              # double 0.17155632727892001
	.quad	0x3fe5784d8d0be50d              # double 0.67093541668069323
	.quad	0x3fead6e0b9f1305b              # double 0.83873020474267024
	.quad	0x3fd06a4f2e970bfe              # double 0.25648860502059267
	.quad	0x3fb91dfacb53a630              # double 0.098113703384705486
	.quad	0x3fc2de0bd44ee7ec              # double 0.14740131250965705
	.quad	0x3fed1a336b2750fa              # double 0.90944834640916317
	.quad	0x3fefd67e69d61ea6              # double 0.99493332549260027
	.quad	0x3fb029864c582088              # double 0.063133615149242428
	.quad	0x3fd553b7b8ac1ff8              # double 0.33323472055826597
	.quad	0x3fe8ef2dd3e52fda              # double 0.77919665704529995
	.quad	0x3fc14bc250661028              # double 0.13512448240010255
	.quad	0x3fe63560aa67273a              # double 0.69401582032990139
	.quad	0x3fe8ba25f6caba12              # double 0.7727231807855921
	.quad	0x3fd583f2f0489552              # double 0.33617852654636693
	.quad	0x3fe6d987129633e0              # double 0.71405366544933813
	.quad	0x3fdc2cf3a89e9f3c              # double 0.44024363962897772
	.quad	0x3fe6a299def42d5b              # double 0.70734876199405095
	.quad	0x3fb64d7d814eddc8              # double 0.087119907445290967
	.quad	0x3fdb2191a4898952              # double 0.4239238840874765
	.quad	0x3fe5b943437663ed              # double 0.67886508156072767
	.quad	0x3fe1a8f1ffc0a4da              # double 0.55187320663130923
	.quad	0x3fe2fe592093cf5d              # double 0.59354835856218424
	.quad	0x3fe5c9e831a7a6e2              # double 0.68089685152264345
	.quad	0x3fd61841188d58de              # double 0.34523036382360128
	.quad	0x3fc5a8780316b934              # double 0.16920375967806367
	.quad	0x3fe62052e1dd4b07              # double 0.69144577135225027
	.quad	0x3fc642519ccd261c              # double 0.17389888912502804
	.quad	0x3fe34668c5245936              # double 0.60234488014501752
	.quad	0x3fd828d08be5744c              # double 0.37749112760304082
	.quad	0x3fd92b891d5b77ae              # double 0.3932822024051984
	.quad	0x3fe0f87f25ff59a5              # double 0.53033406659487936
	.quad	0x3fea7fb717be4652              # double 0.82809023511272017
	.quad	0x3fbf1d03d2b92828              # double 0.12153648275958118
	.quad	0x3fecb6c68e6314cb              # double 0.89731147584884619
	.quad	0x3fe5ec370d7ae6d0              # double 0.68508484490231503
	.quad	0x3fcae16afeee9274              # double 0.21000420997474445
	.quad	0x3fb642d79c41d328              # double 0.086957431458199452
	.quad	0x3fec78d3cf6c4fc0              # double 0.8897494364959968
	.quad	0x3fceb6eb4bf08870              # double 0.23995724876391789
	.quad	0x3fe9add53db84be4              # double 0.80246984533948451
	.quad	0x3fdf73f880a4135e              # double 0.49145329058256049
	.quad	0x3fda665886c70cc6              # double 0.41249669229382524
	.quad	0x3fe9877d9a206da2              # double 0.79778938391557497
	.quad	0x3fc8de9308dc4fe4              # double 0.19429243023534959
	.quad	0x3fb47d54f1529ac8              # double 0.080037411610287212
	.quad	0x3fdb09c9264dc47a              # double 0.42247227421382372
	.quad	0x3feeb70863aef4fc              # double 0.95984286755961489
	.quad	0x3fef6c4c1c7ef641              # double 0.98196988645185723
	.quad	0x3fe8e3e1a1ec6551              # double 0.77781755090397031
	.quad	0x3fe26ff342c96395              # double 0.57616580051682098
	.quad	0x3fd3e52d851ea090              # double 0.31086290359463309
	.quad	0x3fe2be1b8610acbe              # double 0.58570648369404643
	.quad	0x3fa35664dbb733b0              # double 0.03776850874019233
	.quad	0x3fe20961dc2a9934              # double 0.56364529610872305
	.quad	0x3feb941fc46b7114              # double 0.86183155406209488
	.quad	0x3fba5f577fedaf60              # double 0.103017300350698
	.quad	0x3fed5c746164d7cf              # double 0.91753596327066045
	.quad	0x3fde33bc66eeb0d2              # double 0.47190771152487543
	.quad	0x3fe676bd9bbfaeb3              # double 0.70199470920257168
	.quad	0x3fe57a4fc46ed573              # double 0.67118061414536923
	.quad	0x3fde75a64e4a2b16              # double 0.4759307636783644
	.quad	0x3fa043ca9a2dae60              # double 0.031767207451449009
	.quad	0x3fe25fd8d5a07313              # double 0.57420007442451249
	.quad	0x3fdf2ea9dd345f5c              # double 0.48722311594018719
	.quad	0x3fdf52a7eb66b8dc              # double 0.48941991794971584
	.quad	0x3fb7d395eaddc098              # double 0.093072290268312208
	.quad	0x3fe408afe49d740f              # double 0.6260604348314035
	.quad	0x3fe8654fd01b813a              # double 0.76236715932831278
	.quad	0x3fe91eff36bd5d3f              # double 0.78503380481098606
	.quad	0x3feb2f36a2c92b5b              # double 0.84951335710625686
	.quad	0x3fd3c1c352bc9084              # double 0.30870135383361963
	.quad	0x3fe3995c6ad8a8a3              # double 0.61247082584784029
	.quad	0x3fcc5726d84b2838              # double 0.22140965996942596
	.quad	0x3fe4989c68c151b0              # double 0.64362926921835673
	.quad	0x3fee678b0818ce7f              # double 0.95013953763414338
	.quad	0x3fdcb10dd3aa091e              # double 0.44830651922542752
	.quad	0x3fe5db7a9133554c              # double 0.68304184302784554
	.quad	0x3fef1d3a86e06e02              # double 0.97231794684506689
	.quad	0x3fc6e92aa1c90d08              # double 0.17899067783046285
	.quad	0x3fd89efb8dfd6db0              # double 0.3847035299893049
	.quad	0x3fe53d902c93f885              # double 0.66376503664629694
	.quad	0x3fe8b9cec42f5096              # double 0.77268160168979949
	.quad	0x3fe74dbde7d82fb3              # double 0.7282399681293924
	.quad	0x3fe5d4591871c5a0              # double 0.68217139028836371
	.quad	0x3fe1f47ef6466156              # double 0.56109569645472379
	.quad	0x3fddb04cebe28464              # double 0.46388552699688135
	.quad	0x3fd5d06f5dcf8f28              # double 0.3408468643303757
	.quad	0x3fe17799e8cfe8dd              # double 0.5458497569191213
	.quad	0x3fe60551c09477ba              # double 0.68814933408042767
	.quad	0x3f99198660c4dc20              # double 0.024511432319936799
	.quad	0x3fdbc03741938d12              # double 0.43360692409460555
	.quad	0x3fe66d0db2f657c0              # double 0.70081219628877278
	.quad	0x3fd01c897e31c2ee              # double 0.25174176524801239
	.quad	0x3fe1857960e85893              # double 0.5475432293631165
	.quad	0x3fe562f6829f233f              # double 0.66833043586766638
	.quad	0x3fef4a287acf4ceb              # double 0.97780250536234569
	.quad	0x3fd3bd8398014f4e              # double 0.30844201893090861
	.quad	0x3fd2511daec3995e              # double 0.28620092455675727
	.quad	0x3fbdb35fc98177c8              # double 0.1160182826001509
	.quad	0x3fcaf9dd50af2110              # double 0.21075025977757678
	.quad	0x3f7a3a6d1af51480              # double 0.0064033758092750803
	.quad	0x3fe07272259e3cc1              # double 0.51397044513023371
	.quad	0x3fea68a1c396eaea              # double 0.8252724475963451
	.quad	0x3feaff9e28f0ae81              # double 0.84370334621549159
	.quad	0x3fe74d02a42e9917              # double 0.72815067354966601
	.quad	0x3fe7136ae10e6f49              # double 0.72112029987645443
	.quad	0x3fe884f18d8a650e              # double 0.76622846264504729
	.quad	0x3fddad44e4bd3168              # double 0.46370050752445602
	.quad	0x3fddbf8be2667d72              # double 0.4648160658780035
	.quad	0x3fe90249643acd9e              # double 0.78152913642991328
	.quad	0x3fe264f0ea361666              # double 0.57482190842047198
	.quad	0x3fc1792128ecc594              # double 0.13650907991681704
	.quad	0x3fe63b758d68dba8              # double 0.69475820178091841
	.quad	0x3fe157d0444f6ab4              # double 0.54196942655410973
	.quad	0x3fc987a3486bf774              # double 0.19945183788507459
	.quad	0x3fb1da61d0fc45a0              # double 0.069738496324382115
	.quad	0x3fc162d3519e7d30              # double 0.13582841382319932
	.quad	0x3fd2417c7229e29a              # double 0.28524695538320943
	.quad	0x3fe69b0a19370705              # double 0.70642571377558794
	.quad	0x3fe391dce65009f0              # double 0.61155552847804806
	.quad	0x3feb8d6497b08f19              # double 0.86100988032237347
	.quad	0x3fd2435826f29786              # double 0.28536037257651292
	.quad	0x3fe1c1a62fb82ba8              # double 0.55488881416510072
	.quad	0x3f85c200904cb5c0              # double 0.010623936084438124
	.quad	0x3fdf479a2b04e176              # double 0.48874525261955826
	.quad	0x3feca7b5bf082922              # double 0.89547240553773499
	.quad	0x3fe206e35ac3d37e              # double 0.56334083297279824
	.quad	0x3fd1c60bc7b61652              # double 0.2777127695374918
	.quad	0x3fe3af0c220cad81              # double 0.61511809015557628
	.quad	0x3fa78bf0c0c6b920              # double 0.045989535839327411
	.quad	0x3fe0d7fabcb120d5              # double 0.52636467794311648
	.quad	0x3fe05eb662e2a5ef              # double 0.51156157792610013
	.quad	0x3fdf3692bf64fe22              # double 0.4877058858000699
	.quad	0x3fec92f0854fe791              # double 0.89293695485615576
	.quad	0x3fadf54a776595a0              # double 0.058512045931631507
	.quad	0x3fc07406971fb700              # double 0.12854082469078065
	.quad	0x3fe15606851d7d31              # double 0.54175115584431499
	.quad	0x3fe0b82d91463a96              # double 0.52248266576664792
	.quad	0x3fd6f78f25eb9e94              # double 0.35885981276667533
	.quad	0x3fe2c72c7727b4d0              # double 0.58681319496613504
	.quad	0x3feea57b841d7e2e              # double 0.9577004986167077
	.quad	0x3fe193d2ceb412b9              # double 0.5492948567558279
	.quad	0x3fee53713c94217d              # double 0.94768583137287943
	.quad	0x3fe680e43287e5a7              # double 0.70323381299310916
	.quad	0x3fb8adaaa2b7cc18              # double 0.096399941183151205
	.quad	0x3fe2ac5e6eb22a44              # double 0.58354112263015923
	.quad	0x3fd498108bbb136e              # double 0.32178128858168165
	.quad	0x3fd9977ab8d056a0              # double 0.39987056778168473
	.quad	0x3fe3afd659e49797              # double 0.61521451527800053
	.quad	0x3fed88df2135ef1d              # double 0.92295795904599098
	.quad	0x3fd3f7b2351fdf54              # double 0.31199317157687756
	.quad	0x3fe7145c0678ffd8              # double 0.72123528732481201
	.quad	0x3fdf241c7c313b4e              # double 0.48657905700831783
	.quad	0x3fef058ee3ac3cce              # double 0.9694284865126066
	.quad	0x3fd28a3dcea9cf4e              # double 0.28968758756603996
	.quad	0x3fd60a0a12fb5708              # double 0.34436275342646683
	.quad	0x3febaf96ea65b97c              # double 0.86518426686033889
	.quad	0x3fe50bb79ec4ae30              # double 0.65768033036642315
	.quad	0x3fec4b8e852045a3              # double 0.88422323228057953
	.quad	0x3fe3443f3af3e87f              # double 0.60208093179905109
	.quad	0x3fba83e07589f198              # double 0.10357478017426158
	.quad	0x3fd7aa998a08af72              # double 0.36978758315921489
	.quad	0x3fee9825bf3463f7              # double 0.95607268662126799
	.quad	0x3fc92f6063e4be8c              # double 0.19675831678022282
	.quad	0x3fd9ecc7bf0bb500              # double 0.40507692009744289
	.quad	0x3fed1572dbc2e01a              # double 0.90886824533572796
	.quad	0x3fe112dd2b19e907              # double 0.53355272691922628
	.quad	0x3fe8a5f5a981046b              # double 0.77025874239201408
	.quad	0x3fcf11907cb0abdc              # double 0.24272352302918321
	.quad	0x3fee66d5a8274cca              # double 0.95005305140002716
	.quad	0x3fa564f07cd0dbf0              # double 0.04178573154097609
	.quad	0x3fc9a1ab0cbaefc4              # double 0.2002462207946093
	.quad	0x3fdf27884ed7609a              # double 0.48678786944720687
	.quad	0x3fdad9656d02b850              # double 0.41951881070679509
	.quad	0x3fe25c73feed9d32              # double 0.57378577986393098
	.quad	0x3fe27e3d10463f05              # double 0.57790997675508093
	.quad	0x3fe610cde8b8a738              # double 0.68955131009463511
	.quad	0x3fe846e30793bda3              # double 0.75865317802338372
	.quad	0x3fe63cd31020580d              # double 0.69492486142803644
	.quad	0x3fce2d279dbc4e14              # double 0.23575301362926437
	.quad	0x3fb1ecd9bfe1a7b8              # double 0.070020303102551362
	.quad	0x3fedc19083c083fa              # double 0.92987848027053066
	.quad	0x3fc920ab9b876540              # double 0.19630951971229571
	.quad	0x3febf2cd6a178236              # double 0.8733889648538653
	.quad	0x3fdcb075053d958e              # double 0.44827008735440976
	.quad	0x3fea89b8c37761a0              # double 0.8293117349340271
	.quad	0x3fe3bc6648449731              # double 0.6167479907496497
	.quad	0x3fe91c50d3c06a11              # double 0.78470651014078119
	.quad	0x3fe4d9802ef4edba              # double 0.65155038043251712
	.quad	0x3fee04443b6899c6              # double 0.93802081683389171
	.quad	0x3f7f1be930938d80              # double 0.0075949772810618432
	.quad	0x3fe1b903683ff52d              # double 0.55383463250442377
	.quad	0x3fe387c399c07637              # double 0.61032276181840117
	.quad	0x3fb64155e6019120              # double 0.086934441236341531
	.quad	0x3fcab6e20851b654              # double 0.20870614439211244
	.quad	0x3fe2a34fea4d578d              # double 0.58243556749470005
	.quad	0x3fe43b8f3488a161              # double 0.63227043400278771
	.quad	0x3fea179eaf20e4c4              # double 0.81538328366072976
	.quad	0x3feb8fd457d24d7d              # double 0.86130730774532049
	.quad	0x3fd52e5a26485c4a              # double 0.33095411051312296
	.quad	0x3fbfb380b7b1f0e0              # double 0.12383274540656286
	.quad	0x3faccab5a667c870              # double 0.056234051287803122
	.quad	0x3fd15bf36f0ba9b2              # double 0.27123723835270674
	.quad	0x3fec2d6b20e5e2eb              # double 0.8805442469157162
	.quad	0x3fcd6ecb43912da4              # double 0.22994366454291282
	.quad	0x3fed2210175a1432              # double 0.91040806351577985
	.quad	0x3fd1efd516044294              # double 0.28026320600569332
	.quad	0x3fe3ed5c4a321500              # double 0.62272467128119047
	.quad	0x3fe8ac7bce89a5fc              # double 0.77105512942688347
	.quad	0x3fc9fa188c5f52a8              # double 0.20294482092017074
	.quad	0x3fcee592c0d1f9f4              # double 0.24138101973581139
	.quad	0x3fcf6a94883d9ca8              # double 0.24544006969811005
	.quad	0x3fdb8d9acfad98b8              # double 0.43051786690774518
	.quad	0x3fe45c5b80c7a4f2              # double 0.63627410080257918
	.quad	0x3fe81dba2b6e9f70              # double 0.75362881167255402
	.quad	0x3fc8cbe7fa63d9e4              # double 0.19372272230221121
	.quad	0x3fdcdb818d5a8a46              # double 0.4508975868613202
	.quad	0x3f91ef068a995780              # double 0.017513372620974632
	.quad	0x3fceb897730b5d64              # double 0.24000828854944267
	.quad	0x3fec95be0b2ea8bf              # double 0.89327909645114534
	.quad	0x3fe2c362fb28c812              # double 0.58635090879966101
	.quad	0x3fc86d7676cea28c              # double 0.19084053803569068
	.quad	0x3fdccf4b8e6c2bf6              # double 0.45015229137851465
	.quad	0x3fe939a4d8e9a98d              # double 0.78828661313791459
	.quad	0x3fe18ded345c9045              # double 0.54857502200003039
	.quad	0x3fe98ca9105af54a              # double 0.79842045969386644
	.quad	0x3fd2e40210213b50              # double 0.29516650748421558
	.quad	0x3fdc4d9190cfc3ce              # double 0.44223441259151464
	.quad	0x3f8782bf44c59fc0              # double 0.011479849134687359
	.quad	0x3fc713e19af2497c              # double 0.18029422822707974
	.quad	0x3fed4dedbec05ee9              # double 0.91576277977125387
	.quad	0x3feb500dd297e26a              # double 0.85352221614364265
	.quad	0x3fd1fc73f231954e              # double 0.28103350307204245
	.quad	0x3fe303972d3dea8c              # double 0.59418829761792002
	.quad	0x3fddf69f018126b6              # double 0.4681775583927491
	.quad	0x3fb66aca54e379e0              # double 0.08756699154353198
	.quad	0x3fba965d70d53070              # double 0.10385688786226566
	.quad	0x3fec65b75e4e729a              # double 0.88741653842187707
	.quad	0x3fe137af1e0336ec              # double 0.53804736959292887
	.quad	0x3fdfda9d864c352e              # double 0.49771822085388606
	.quad	0x3fcf56fe90758f18              # double 0.24484235814735977
	.quad	0x3fbbef4c113adb50              # double 0.10912013455059122
	.quad	0x3fc8d7ca349ac854              # double 0.19408538406929898
	.quad	0x3fd9d5ef94ea74da              # double 0.40368260901034392
	.quad	0x3fd10081b36c767a              # double 0.26565592309803032
	.quad	0x3fbac576ec79f3c0              # double 0.10457556985234273
	.quad	0x3fe501ae1dba1115              # double 0.65645509534855029
	.quad	0x3fdfc480d08a1d24              # double 0.49636860242067571
	.quad	0x3fef11d3edbbf53d              # double 0.97092625076735539
	.quad	0x3fe4c72822a3296a              # double 0.64931113019092135
	.quad	0x3fba50cb5f805ef0              # double 0.10279532510355316
	.quad	0x3fc175f907306f84              # double 0.13641274310145601
	.quad	0x3fe8aa771ac170a1              # double 0.77080874658306098
	.quad	0x3fad553ae6773a40              # double 0.057290878899597164
	.quad	0x3fcc3684c2cf6420              # double 0.22041377556050268
	.quad	0x3fe236ebd7f75f32              # double 0.56920425587575196
	.quad	0x3fd244b11d93c078              # double 0.28544261825937367
	.quad	0x3fef37823a9dc85c              # double 0.97552596519950496
	.quad	0x3fc0240bc0505740              # double 0.12610003366779132
	.quad	0x3fb599f978e27e20              # double 0.084380714428782699
	.quad	0x3fe0bc14edb372f9              # double 0.52295919824572856
	.quad	0x3fc094d5719d7058              # double 0.12954204604727937
	.quad	0x3fdccb3dbe7ab2b0              # double 0.44990485764973709
	.quad	0x3fedff657a80581d              # double 0.93742631841701363
	.quad	0x3fd2274d2194df3a              # double 0.28364876059957889
	.quad	0x3f967d3c8d931440              # double 0.021962114468596861
	.quad	0x3fd9f49c0f1167e0              # double 0.40555478545650026
	.quad	0x3fe5d9cf5ff9ebdc              # double 0.6828381418739542
	.quad	0x3fe3858e958590d0              # double 0.61005334094491026
	.quad	0x3fe04a76af805174              # double 0.5090897968062067
	.quad	0x3fdff4ba7a1dc878              # double 0.49931203771041721
	.quad	0x3fd51b223e098cec              # double 0.32978111322718351
	.quad	0x3fe6150f76ac483e              # double 0.69007085016551861
	.quad	0x3fd6f104e845fb18              # double 0.35846064265199251
	.quad	0x3fc66235a82a4c7c              # double 0.17487211905663347
	.quad	0x3fb36821fdb42f90              # double 0.075807690085808454
	.quad	0x3fe9cd22e5a1c6d8              # double 0.80629105424869874
	.quad	0x3feb0b45c2c9db56              # double 0.84512603802327635
	.quad	0x3fe9b369ecf0212e              # double 0.8031510951705394
	.quad	0x3fe1e1bb2bbf5841              # double 0.55880507034704163
	.quad	0x3fb0aa5c6aa5d5b0              # double 0.06509950259881836
	.quad	0x3fe4161e9cb113d8              # double 0.62770014385079786
	.quad	0x3fe387541e1e8ffd              # double 0.61026960261051466
	.quad	0x3fecbb6c19832796              # double 0.89787869437099022
	.quad	0x3fd8d22cbaefaff2              # double 0.38782804732795662
	.quad	0x3fe475073920a5f4              # double 0.63928567083092824
	.quad	0x3fe7d460df0a6f08              # double 0.74467509806297105
	.quad	0x3fe8116fe2aa6057              # double 0.75212854643451521
	.quad	0x3fe7d8b0c9cac350              # double 0.7452014867068133
	.quad	0x3fe89368fbc5c854              # double 0.76799439596494289
	.quad	0x3fc8e5f07733f584              # double 0.19451719112832333
	.quad	0x3fb55814d810eac8              # double 0.083375265837200563
	.quad	0x3fe9e1a929004a6b              # double 0.80879648216280253
	.quad	0x3fd9000b5fb5ba94              # double 0.3906277117411403
	.quad	0x3febc9873408d60a              # double 0.8683506027506962
	.quad	0x3fda2cce240a3d52              # double 0.40898469466715881
	.quad	0x3fe4f0a13a20aaec              # double 0.65437375405357789
	.quad	0x3fd1c21628334bbc              # double 0.27747110296075639
	.quad	0x3fd3f552c9ed99b4              # double 0.31184835166495906
	.quad	0x3fe56cc71a626847              # double 0.66952853348926389
	.quad	0x3fe4a35cc34c2554              # double 0.6449416937258925
	.quad	0x3fdc34a50768ecfa              # double 0.44071317409152722
	.quad	0x3f9a29e7bb7e1660              # double 0.025550480669627951
	.quad	0x3fd39c07a3f46068              # double 0.30639830599967022
	.quad	0x3fa8aef027c38320              # double 0.048209671834916756
	.quad	0x3fe6b1bfd7eab56e              # double 0.70919792338615451
	.quad	0x3fd6da03957cff64              # double 0.35705651854003961
	.quad	0x3fd34c2d8c6e3030              # double 0.30152453149708247
	.quad	0x3fdda332bdac85d2              # double 0.46308582804530574
	.quad	0x3fdcdbc42b9f0384              # double 0.45091346988561321
	.quad	0x3fe6841b41055f5b              # double 0.70362627696429614
	.quad	0x3fe92d749c8bc5ab              # double 0.78679876876247101
	.quad	0x3fdaa0e9660f29c6              # double 0.41607127157899659
	.quad	0x3fe36079ac477b51              # double 0.6055267681912061
	.quad	0x3f72fad391cb6200              # double 0.0046337379869432205
	.quad	0x3fc12d16d30041a8              # double 0.13418851187499325
	.quad	0x3fee170ab281ff94              # double 0.94031271805578109
	.quad	0x3fdb1dd10e62538e              # double 0.42369486241050758
	.quad	0x3fed735bae528aeb              # double 0.92033180281972926
	.quad	0x3fdab2ae2efc32de              # double 0.41715578640359563
	.quad	0x3fc3b2a9014c53e0              # double 0.15388977588068453
	.quad	0x3fe5fef629474876              # double 0.68737323820302154
	.quad	0x3fd5436bee25ffa0              # double 0.33224008804972449
	.quad	0x3fbd4af12578c950              # double 0.11442477383460425
	.quad	0x3fbff2ef961644a8              # double 0.12480065740807567
	.quad	0x3fee4d2a7115301c              # double 0.94691965185620885
	.quad	0x3fe32126017c9c39              # double 0.59779644289381573
	.quad	0x3fd88a946dbbdf88              # double 0.38345823970984627
	.quad	0x3fed91218531b264              # double 0.92396617903211764
	.quad	0x3faa2c55664122d0              # double 0.051119488460761198
	.quad	0x3febca81ff6b0189              # double 0.86847019087149235
	.quad	0x3fc54af783110f34              # double 0.16635030650842852
	.quad	0x3febb2482e0805c9              # double 0.86551293364043957
	.quad	0x3fe5d5e6a6c9b16d              # double 0.68236095977549172
	.quad	0x3f9c74bc3f3e5d00              # double 0.027789059982379349
	.quad	0x3fea191cb53112f5              # double 0.81556544674876241
	.quad	0x3fe4d2ddf024e33e              # double 0.65074059394019179
	.quad	0x3fcddd7e46d90d08              # double 0.2333219381272118
	.quad	0x3fea4578be262395              # double 0.82098042620156042
	.quad	0x3fc12d7a6d785568              # double 0.13420038552491609
	.quad	0x3fd5cfb2552db0c0              # double 0.34080179517946974
	.quad	0x3fd5dfaf3ee674ce              # double 0.34177762167548742
	.quad	0x3feb098a677ef8b3              # double 0.84491462911662152
	.quad	0x3fe00399699e8334              # double 0.50043936375377607
	.quad	0x3fe90f99643e10e2              # double 0.78315419748880921
	.quad	0x3fbc60f6115af528              # double 0.11085451053346118
	.quad	0x3fea6d4221a39465              # double 0.82583719797243005
	.quad	0x3fa95dbbaf078080              # double 0.049543252101785562
	.quad	0x3fe1e480914a4964              # double 0.55914333703030339
	.quad	0x3fe711b9d8e4eba4              # double 0.72091381418373546
	.quad	0x3fee3e80771947dc              # double 0.94512961636996406
	.quad	0x3fdbd23b40bd6fe2              # double 0.43470650980247971
	.quad	0x3fe164d7d26b873a              # double 0.54355994317686585
	.quad	0x3fbf32a3ee6ecea0              # double 0.12186646052469507
	.quad	0x3fd1fe987c033610              # double 0.2811642848072049
	.quad	0x3fe5497f2df0ee9f              # double 0.66522177670363536
	.quad	0x3fd26cbaf4a3cc42              # double 0.28788637056931432
	.quad	0x3fc7973e95753f04              # double 0.18430311486962847
	.quad	0x3fecc727d28389ed              # double 0.89931098094922179
	.quad	0x3fecfbd82668e74c              # double 0.90574271680746099
	.quad	0x3fd5c9f2d1bb36fe              # double 0.3404509590298942
	.quad	0x3fc99e4c8ef00948              # double 0.20014340381028206
	.quad	0x3fd0beaf39a9a5e6              # double 0.2616384566414055
	.quad	0x3fe0bc6154440152              # double 0.52299562891134088
	.quad	0x3feca19c765bba88              # double 0.89472792736872098
	.quad	0x3fed8eac087ca22e              # double 0.9236660161742003
	.quad	0x3feef3312d069eb9              # double 0.96718653482545058
	.quad	0x3fe87812bc5571db              # double 0.76465737136782808
	.quad	0x3fdb1f7862927aa6              # double 0.42379579187574234
	.quad	0x3fd49c5319dbde0e              # double 0.32204129720000274
	.quad	0x3fe9ffc846c7e072              # double 0.81247342895859576
	.quad	0x3fe0ec2d7e6743ee              # double 0.52883028686676226
	.quad	0x3fe9e887ef79de72              # double 0.80963513157526124
	.quad	0x3fdc508d462b9f14              # double 0.44241649487092727
	.quad	0x3fed8bc7a6620bb1              # double 0.92331297394445333
	.quad	0x3fb82ee8d7326980              # double 0.094465782678900822
	.quad	0x3fdea174c9bd1fa4              # double 0.47860450459529091
	.quad	0x3fe9aef21aebcf3d              # double 0.80260567911179914
	.quad	0x3fe62e68c6043a35              # double 0.69316519427395085
	.quad	0x3fe078f20633f46f              # double 0.51476384364617711
	.quad	0x3f9a36bd63c212e0              # double 0.025599440778495075
	.quad	0x3fe41cb0b4b847cd              # double 0.62850222870678751
	.quad	0x3fec8da9ec137f3c              # double 0.89229293926835095
	.quad	0x3fdb10f703d5d3e0              # double 0.42291045546090622
	.quad	0x3febc48fbbc7dcb4              # double 0.86774431873245427
	.quad	0x3fe59bad47140943              # double 0.67525352365945712
	.quad	0x3fb93b2468f92b90              # double 0.098558688762905299
	.quad	0x3f93e80ab76e1ce0              # double 0.019439856954275636
	.quad	0x3fecd0cac68daff5              # double 0.9004873159406076
	.quad	0x3fd4fc567ec8d1ae              # double 0.32790148145002262
	.quad	0x3fe06535e9dfbf5a              # double 0.51235480955618162
	.quad	0x3fe25fec9a7a16fa              # double 0.57420950099250878
	.quad	0x3fe82ff01bf2918b              # double 0.7558517976618061
	.quad	0x3fe3650c57e273ba              # double 0.60608498730618199
	.quad	0x3fdb1678fbdeb0f4              # double 0.42324661823910437
	.quad	0x3fdceb79f218fb4c              # double 0.45187233583776698
	.quad	0x3fe50af281ecc885              # double 0.65758633972133451
	.quad	0x3fe04f41bf0ea919              # double 0.50967490497467616
	.quad	0x3feaff139ddbff8d              # double 0.8436372836294922
	.quad	0x3fe0763cf9b9699d              # double 0.51443337225218821
	.quad	0x3fee680c09288533              # double 0.95020105160452883
	.quad	0x3fcb5297838de25c              # double 0.21345800326868669
	.quad	0x3fd5c33995a15070              # double 0.34004058468168008
	.quad	0x3fc48c2660c807dc              # double 0.16052703595784024
	.quad	0x3fcd77d87b565188              # double 0.23021989843676871
	.quad	0x3fc2e8dbf0758808              # double 0.1477312969319089
	.quad	0x3fd9c50e363d88d0              # double 0.40265231415663738
	.quad	0x3fe771fc62a97a2e              # double 0.7326642920487012
	.quad	0x3fe4ccc55960f0ef              # double 0.64999644715092397
	.quad	0x3fccabd1ed03d61c              # double 0.22399353096959451
	.quad	0x3fdc56b785c12648              # double 0.44279277860605193
	.quad	0x3fe30d790dad09b6              # double 0.59539463683204619
	.quad	0x3fe72dde7092918a              # double 0.72434923159430409
	.quad	0x3fea7dfffe335d93              # double 0.82788085602344308
	.quad	0x3fe3222a7631a793              # double 0.59792063793905681
	.quad	0x3fea5ec67fc27047              # double 0.82406926110298506
	.quad	0x3fe85e6dda5ce420              # double 0.76152699135775847
	.quad	0x3fec4ac7c2c4c410              # double 0.8841284565043015
	.quad	0x3fe3c038142a01ee              # double 0.61721424043940742
	.quad	0x3feac0d388150770              # double 0.83603836611312765
	.quad	0x3fcd8ba14e8313b8              # double 0.23082367261500081
	.quad	0x3fed918aa9e446b2              # double 0.92401631528828987
	.quad	0x3fe3d854bf11bfc7              # double 0.62015759771565448
	.quad	0x3fecdf0f8a0bfb1b              # double 0.90222908937707602
	.quad	0x3fe36889c546c75f              # double 0.60651100664675173
	.quad	0x3fd2e79f0ea02f72              # double 0.29538704326909404
	.quad	0x3fa815714a42efa0              # double 0.047038593592758859
	.quad	0x3fd6e03779876c32              # double 0.3574351012045468
	.quad	0x3fed16c5795c29c7              # double 0.90902970984580456
	.quad	0x3fefe9bfb888a3cc              # double 0.99728380243060987
	.quad	0x3fe83ee6933d1be1              # double 0.75767830617484944
	.quad	0x3fd252fb10eecfac              # double 0.28631474164580584
	.quad	0x3fdbb7bfc65be9c6              # double 0.43309015627860636
	.quad	0x3feb21c911fc0b52              # double 0.84787419808012943
	.quad	0x3fe00b2757af6a27              # double 0.50136153341310752
	.quad	0x3fe61d2206d2c415              # double 0.69105626423527389
	.quad	0x3fc06ee51c15ef40              # double 0.12838424559947192
	.quad	0x3fe2808f90056d1d              # double 0.57819345597400551
	.quad	0x3fb2cd193feb3170              # double 0.073442056756169327
	.quad	0x3fe15ca6f57bc458              # double 0.54256008096684649
	.quad	0x3feb8871e4044517              # double 0.86040586981303846
	.quad	0x3fe3f02d96f9bfce              # double 0.62306861388605639
	.quad	0x3fca64b88aa78a68              # double 0.20619875688778966
	.quad	0x3fe58c2fb2636510              # double 0.67336258737046428
	.quad	0x3feb05bda5d9b11b              # double 0.84445078270576646
	.quad	0x3fefacdd07a7f338              # double 0.98985148902247654
	.quad	0x3fa6fc696d912930              # double 0.044894499421007317
	.quad	0x3fd392b2fb4d7e78              # double 0.3058288053634679
	.quad	0x3fda9b152d62d82c              # double 0.4157154982780209
	.quad	0x3fe5b02fb084d0db              # double 0.67775711513834425
	.quad	0x3fd7e66322f3c5d2              # double 0.37343672192863864
	.quad	0x3fb17f75cb494978              # double 0.068351137285651009
	.quad	0x3fd43202e5e3b142              # double 0.31555244875086796
	.quad	0x3fe35497c9d842e8              # double 0.6040762846260721
	.quad	0x3fd80b819cfc5168              # double 0.37570228891970325
	.quad	0x3fe87a15cbd73d6e              # double 0.76490297138836438
	.quad	0x3fcfcc33f4f0cbac              # double 0.24841927967062583
	.quad	0x3fe85a2da222b8a3              # double 0.76100808779826357
	.quad	0x3fe8275cccd29631              # double 0.75480499271788493
	.quad	0x3fe0205944133bfc              # double 0.50394881530689828
	.quad	0x3fe057c9f3e4a697              # double 0.5107164157427232
	.quad	0x3fd8e100a5a7bede              # double 0.38873306443472966
	.quad	0x3fee680aa5c1deea              # double 0.95020038961862707
	.quad	0x3fc5bbdad4bde2ac              # double 0.16979537380008958
	.quad	0x3fe429d0d2665d97              # double 0.63010445684169525
	.quad	0x3fdc5fbb662b3498              # double 0.44334301927012509
	.quad	0x3fe1f69f8227c976              # double 0.56135535641651191
	.quad	0x3fe691be67f8f4b9              # double 0.70529098803640189
	.quad	0x3fe2310b6b37db8b              # double 0.56848689023068866
	.quad	0x3fb9cd8722058470              # double 0.10079235630611705
	.quad	0x3fabb9acb6077780              # double 0.054150960178716012
	.quad	0x3fc98a9c05662018              # double 0.19954252494449132
	.quad	0x3fc44f058e63fbdc              # double 0.15866155102409507
	.quad	0x3fe41281fd7ef606              # double 0.62725924979139402
	.quad	0x3feadd959b8e977c              # double 0.83954887754656182
	.quad	0x3fd5a24d49536486              # double 0.33803112183301953
	.quad	0x3fe30c39e0888720              # double 0.59524244169390172
	.quad	0x3fe934344f7783d5              # double 0.7876225998007792
	.quad	0x3fe91aa8393c469d              # double 0.78450404337691604
	.quad	0x3feb9efff1c752ce              # double 0.86315915319809178
	.quad	0x3fe7abc845dc7117              # double 0.7397195209955808
	.quad	0x3fdab28f350c5e54              # double 0.41714840107440421
	.quad	0x3fe63d2b1ea3a4fb              # double 0.69496685013032733
	.quad	0x3fb9678fa74dc8b0              # double 0.099236467691101948
	.quad	0x3fe0af10fd3ad30e              # double 0.52137040575925808
	.quad	0x3fc454cb00d5473c              # double 0.1588376764362297
	.quad	0x3fde20f07f940f56              # double 0.47076046427559015
	.quad	0x3fe8b8d714d12e18              # double 0.77256349626390186
	.quad	0x3fda60dfe8c24d00              # double 0.41216275911683908
	.quad	0x3fe1316dab6cb5a2              # double 0.5372837398660304
	.quad	0x3fd7196ed6bcdcfc              # double 0.36092730494006253
	.quad	0x3feb72e519f056ef              # double 0.85777525964905788
	.quad	0x3fdff30dd05cb442              # double 0.49920983646262951
	.quad	0x3fe1e7f052b64d90              # double 0.55956283716879973
	.quad	0x3fd4db4d5a5665ce              # double 0.32588514158268544
	.quad	0x3fdb7aa92daec214              # double 0.42936162434765035
	.quad	0x3fd42c2e9b684a08              # double 0.31519665886403958
	.quad	0x3fe70807e47a296a              # double 0.71973032593204533
	.quad	0x3feab9238cf2ff35              # double 0.83509995965139316
	.quad	0x3fde2c47f053910c              # double 0.4714526984155476
	.quad	0x3fc974de3c7584d8              # double 0.19887903167822318
	.quad	0x3fcaa924da131854              # double 0.20828686378644312
	.quad	0x3fe079b9a5d366c2              # double 0.51485903156136481
	.quad	0x3fe95af382053cce              # double 0.79235244173642072
	.quad	0x3fa45f5bf5f6b830              # double 0.039790033125754909
	.quad	0x3fc2d1c97c971c64              # double 0.14702719291219346
	.quad	0x3fe22f656511bd62              # double 0.56828565349671245
	.quad	0x3fe04e4eeb0a6a56              # double 0.50955911547073174
	.quad	0x3fc17998fde04098              # double 0.136523364985355
	.quad	0x3fe7908d5c6cddbe              # double 0.73639553119476608
	.quad	0x3fdb181d21ce500a              # double 0.42334678937299997
	.quad	0x3fdcd5c9ca425ec0              # double 0.45054859878426257
	.quad	0x3fda61c1796ca9a6              # double 0.41221653802736069
	.quad	0x3fe5364d06d2adcc              # double 0.66287852604494324
	.quad	0x3fea02e32d7d5c00              # double 0.81285246739105332
	.quad	0x3fe56ecfea9b3ba8              # double 0.66977687665518193
	.quad	0x3fe7e2ed5bc007bb              # double 0.7464510719294063
	.quad	0x3fdc55d8dfd66376              # double 0.44273969515921097
	.quad	0x3fc1cb789e466754              # double 0.13902194717666794
	.quad	0x3f9b12171629c880              # double 0.026436196067557649
	.quad	0x3fd97b3c3820d47e              # double 0.39814668160699529
	.quad	0x3fbe058a20f4ef70              # double 0.11727202705963946
	.quad	0x3fd68176468e7698              # double 0.35165173425944252
	.quad	0x3fb2abb4f66645e0              # double 0.072932539135102115
	.quad	0x3fef5c103ab5659b              # double 0.97998820749778603
	.quad	0x3fc8c56ba79794ac              # double 0.19352479632576569
	.quad	0x3fa77351451ca6c0              # double 0.045801677404893493
	.quad	0x3fea89e1ab4a1a91              # double 0.82933124022459215
	.quad	0x3fd52353c7de6026              # double 0.33028120535300542
	.quad	0x3fdeacd687abfcfe              # double 0.47929919480516492
	.quad	0x3fc4c105a53e57b0              # double 0.16214056557208556
	.quad	0x3fe666ec7f5f017d              # double 0.70006394269152816
	.quad	0x3febb2f52c889456              # double 0.86559542367889253
	.quad	0x3fb481b49dede040              # double 0.080104149395880064
	.quad	0x3fc7cee0036d0318              # double 0.18600082556988506
	.quad	0x3fd427f2565250c6              # double 0.31493814878309612
	.quad	0x3fbad0c977b79270              # double 0.10474833653240423
	.quad	0x3fd1cef942838568              # double 0.27825767035945725
	.quad	0x3fed05850e831d2c              # double 0.90692379793555266
	.quad	0x3febe90d416ec018              # double 0.87219870357330631
	.quad	0x3fd0189eb278c8a4              # double 0.25150268010032506
	.quad	0x3fe5891a47c803fe              # double 0.67298616428172386
	.quad	0x3fd1ba6989de69c0              # double 0.27700270141363248
	.quad	0x3fe2d9bfda8dd72e              # double 0.58908074079838513
	.quad	0x3fe5d4b19eb9ff89              # double 0.68221360207825044
	.quad	0x3fe7963600974e96              # double 0.73708629718244612
	.quad	0x3fd75a1344bb74c8              # double 0.3648727580273996
	.quad	0x3fc609132dd3e840              # double 0.17215194451984139
	.quad	0x3fec15ea60ff443b              # double 0.87767523712876228
	.quad	0x3faf2b14198954b0              # double 0.060875537984125372
	.quad	0x3fd3f468e6f23870              # double 0.31179258874261162
	.quad	0x3fed7b70fce4006f              # double 0.92131852524472702
	.quad	0x3fefbb984f63926a              # double 0.99164977555899481
	.quad	0x3fca07cecb8a58b4              # double 0.2033632749414146
	.quad	0x3fd1799793c980b6              # double 0.27304639274917564
	.quad	0x3fed8cd6a7b1a476              # double 0.92344219925611415
	.quad	0x3fe6b126e8813f49              # double 0.70912499819858354
	.quad	0x3feb4caacffe2e06              # double 0.85310879348384172
	.quad	0x3fe969aee8a75c0d              # double 0.79415078582940313
	.quad	0x3fec110431a04b77              # double 0.87707719509704318
	.quad	0x3fd747c25ca3c368              # double 0.36375483557554
	.quad	0x3fbaa53e343234a8              # double 0.10408390783614385
	.quad	0x3fb3986e9cccd348              # double 0.076544678956293244
	.quad	0x3fc4f25bbe77cd28              # double 0.16364619064516117
	.quad	0x3fecd90a45c1ff9d              # double 0.90149415611812211
	.quad	0x3fefb34b33a20b0b              # double 0.99063644489828683
	.quad	0x3fe153c808bd4fa9              # double 0.54147721964772189
	.quad	0x3fe8363cd4b7561a              # double 0.75662080331921122
	.quad	0x3fea493744f6c868              # double 0.82143748731165278
	.quad	0x3fb85293c952e680              # double 0.095010029460263822
	.quad	0x3fcecfa2e2fb17c0              # double 0.24071155627296825
	.quad	0x3fe4977afcb1f129              # double 0.64349126200207707
	.quad	0x3fe90f2c31c5777a              # double 0.78310212822883263
	.quad	0x3fc14801219c4c08              # double 0.13500990048541461
	.quad	0x3fea3da3151b86ae              # double 0.82002405283511393
	.quad	0x3f8b3cc771a81a80              # double 0.013299520641351537
	.quad	0x3fca1d6b2703e300              # double 0.20402278332746704
	.quad	0x3fe72238b3674c22              # double 0.72292742767092855
	.quad	0x3fedb2225e3f622d              # double 0.92799490363819859
	.quad	0x3fc7c46219b10688              # double 0.18568063978641569
	.quad	0x3fe2b935b060d1ab              # double 0.58510860871188208
	.quad	0x3fd269624eea1710              # double 0.28768212992177755
	.quad	0x3fc5cfe8ca23f4bc              # double 0.17040738935603439
	.quad	0x3fef4c096ad2e24e              # double 0.97803183425919271
	.quad	0x3fda842d08f96d8a              # double 0.41431737781905353
	.quad	0x3fd5c88119df801c              # double 0.34036281134285828
	.quad	0x3fd4872cbd7fb412              # double 0.32075041299577933
	.quad	0x3fe00ba8b9008f0a              # double 0.50142322667349615
	.quad	0x3fa7fe672b9b81e0              # double 0.046862815926718815
	.quad	0x3fb8ada06374b010              # double 0.096399330407337169
	.quad	0x3fe85b65d31db1f4              # double 0.7611569522246655
	.quad	0x3fefec6b1a742d27              # double 0.997609664599996
	.quad	0x3fe192c1781bb65f              # double 0.54916451891558526
	.quad	0x3fe1d0974a273d42              # double 0.55671276553213311
	.quad	0x3fab98da45c78d80              # double 0.053900547998433801
	.quad	0x3fdaaf539d256788              # double 0.41695108743953613
	.quad	0x3fdb482c8367b6be              # double 0.42628014404804648
	.quad	0x3fe4ef17a1e6d964              # double 0.65418607350765656
	.quad	0x3febf4dc6c169288              # double 0.87364026175471654
	.quad	0x3fde43834825129e              # double 0.47287065549270746
	.quad	0x3fa1273136bf7a30              # double 0.033502138074016918
	.quad	0x3fdfcc767d4dcde0              # double 0.49685442196570584
	.quad	0x3fbfe9fee3ba1aa0              # double 0.12466424045315216
	.quad	0x3fdbecfacb964164              # double 0.43633909112488412
	.quad	0x3fe588be37584372              # double 0.67294226464774298
	.quad	0x3fe84157e003809e              # double 0.75797647240326049
	.quad	0x3fe9b58e1f9b2c13              # double 0.80341249630999056
	.quad	0x3fef7277b3cc95d5              # double 0.98272309414886171
	.quad	0x3fb7ec7f71fdc618              # double 0.093452420549305137
	.quad	0x3fdf3b78a0bf3f14              # double 0.48800483415560447
	.quad	0x3fdef957541f0f44              # double 0.48396857466672238
	.quad	0x3fbae5e000643970              # double 0.10507011422689572
	.quad	0x3fab99a8044dd300              # double 0.053906679654494027
	.quad	0x3fe1ca45d09caac5              # double 0.55594149345901001
	.quad	0x3fac6c3e29194b90              # double 0.055513327137894142
	.quad	0x3fe6120fb0b1e07d              # double 0.68970474730214415
	.quad	0x3fecc1e10d1f1bcd              # double 0.89866688311382747
	.quad	0x3fe771e67396f678              # double 0.73265383316147759
	.quad	0x3fef7d0ab97a71ce              # double 0.98401390291433599
	.quad	0x3fcfa3ca46ac6dfc              # double 0.24718597842080203
	.quad	0x3fe7306c097724aa              # double 0.72466089104377329
	.quad	0x3fefcf1796f47764              # double 0.994029803117638
	.quad	0x3fedc4795890b96a              # double 0.93023364351192339
	.quad	0x3faa8dc4e30442d0              # double 0.051862862312309965
	.quad	0x3fe41a2a535c4659              # double 0.62819401055657942
	.quad	0x3fcde3ba88eef974              # double 0.23351222692685847
	.quad	0x3fe00b89eb003826              # double 0.50140853785137973
	.quad	0x3fcde0ada7be69a4              # double 0.23341913881888587
	.quad	0x3fb3104d0f3bd5a8              # double 0.074467483729526607
	.quad	0x3fe329de356f3251              # double 0.59886084019087538
	.quad	0x3f9a3fa4d0a6e9c0              # double 0.025633406863315278
	.quad	0x3fd3b3574c5ab130              # double 0.30782110649558359
	.quad	0x3fc562b17283fbb4              # double 0.16707437602596331
	.quad	0x3fc6aae4321baf40              # double 0.17709019133268988
	.quad	0x3fc619ede9649eac              # double 0.17266630073685485
	.quad	0x3fec8874c0ab3164              # double 0.89165723448381273
	.quad	0x3fe44017c7f90a37              # double 0.63282383973302714
	.quad	0x3fc8a164300e2d04              # double 0.19242527338460758
	.quad	0x3fe9f64d40c5566c              # double 0.81131613398129109
	.quad	0x3fdfc4ee34bf8a80              # double 0.49639468337242221
	.quad	0x3feca5fc7872d28c              # double 0.89526198887922836
	.quad	0x3fe607f062bfb5d5              # double 0.68846911703956926
	.quad	0x3fdc13f37df93122              # double 0.43871772100534845
	.quad	0x3fb5d5b003ba67a8              # double 0.085291863355819175
	.quad	0x3fd8078fd24a8010              # double 0.3754615357993325
	.quad	0x3fceed95830a0c44              # double 0.24162548921967375
	.quad	0x3fee60c3c6c88981              # double 0.94931210350868878
	.quad	0x3fb927781d2453c0              # double 0.098258502115938562
	.quad	0x3fc2c6e91e47d704              # double 0.14669527033372998
	.quad	0x3fe29182d2facad5              # double 0.58026257712330198
	.quad	0x3fd2c2234b5b7b8c              # double 0.29309923514477343
	.quad	0x3fcb12d40bdf686c              # double 0.21151209430428553
	.quad	0x3fb39c275edb7118              # double 0.076601467760557873
	.quad	0x3fe6ca0eed003486              # double 0.71216532029360802
	.quad	0x3fd0051e84e946f8              # double 0.25031245212186048
	.quad	0x3fcb87a4bf12e4ec              # double 0.2150770123460356
	.quad	0x3febe32c1f287c06              # double 0.87148099980902383
	.quad	0x3fe1f20b27758c0d              # double 0.56079633433216858
	.quad	0x3feb5b7e4433bce9              # double 0.85491860695574673
	.quad	0x3fb646d7900fb998              # double 0.087018463774916177
	.quad	0x3fe42844fd23389d              # double 0.62991570893224813
	.quad	0x3fd2e71fc637e720              # double 0.29535669667494524
	.quad	0x3fa37b995b8d7740              # double 0.038052360940794561
	.quad	0x3fdf0f8d4635e7d8              # double 0.48532420975209112
	.quad	0x3fd64174ff673ec8              # double 0.3477451795742863
	.quad	0x3fdc03584eb74e82              # double 0.43770415961373754
	.quad	0x3fc7fc8102464fcc              # double 0.18739330874507087
	.quad	0x3fed7db1ced8ee09              # double 0.92159357452277491
	.quad	0x3fe8e5577ffc325d              # double 0.77799582478617035
	.quad	0x3fe749b2fb837784              # double 0.7277464783071399
	.quad	0x3feb7fd6bee9509b              # double 0.85935532843952289
	.quad	0x3febb866e48d7208              # double 0.86626000060238173
	.quad	0x3fe9e1f1441c6c1f              # double 0.8088308649342969
	.quad	0x3f9cb877f4e23320              # double 0.02804744178915819
	.quad	0x3facd354515f4750              # double 0.056299815114143059
	.quad	0x3fe335ece94f7b6d              # double 0.60033269470646433
	.quad	0x3fe9b896da3d0e59              # double 0.8037828695746142
	.quad	0x3fd7175fc6206404              # double 0.36080164287847105
	.quad	0x3fc0ca7a2a10a7cc              # double 0.13117911390264536
	.quad	0x3fd7836deaf3abee              # double 0.36739681190982665
	.quad	0x3fd3ec19a1879b72              # double 0.3112854077757482
	.quad	0x3fb49b26cf1ba538              # double 0.080492425502275533
	.quad	0x3fe3d73de77fd02c              # double 0.62002463545514308
	.quad	0x3fdfd903bd3c84c2              # double 0.49762052040211924
	.quad	0x3fdfd83d4d46cc8e              # double 0.49757320925272885
	.quad	0x3fe9d963e5ae1d8e              # double 0.8077868925037579
	.quad	0x3fec7e557fb031de              # double 0.89042162837136707
	.quad	0x3feda3f591d1991a              # double 0.92626455764983295
	.quad	0x3fed9a608f20306d              # double 0.92509487108465083
	.quad	0x3fe4db4ad4b051e1              # double 0.65176908055087435
	.quad	0x3fe499194f1aa30a              # double 0.64368882608423061
	.quad	0x3fc204276b889ec4              # double 0.14075176954906088
	.quad	0x3fd5a752828dea44              # double 0.33833754300545515
	.quad	0x3fa62d19b79c3240              # double 0.043312839186999685
	.quad	0x3feca5486575802d              # double 0.89517612281998071
	.quad	0x3fe595796b9c040f              # double 0.67449637429683829
	.quad	0x3feb13eb84240ec9              # double 0.84618163880119213
	.quad	0x3fef511e31570b5d              # double 0.97865209233018968
	.quad	0x3fe5cb92d239968f              # double 0.68110028323708771
	.quad	0x3feb10c241d4d875              # double 0.8457957540292812
	.quad	0x3fee699c52c0f57d              # double 0.95039192355004298
	.quad	0x3fe3a8d79ff8d2b2              # double 0.61436063046001821
	.quad	0x3fe70cf667714c20              # double 0.72033233836771515
	.quad	0x3fe1c3ff3245ccdc              # double 0.55517539805296279
	.quad	0x3feaa3a5cdaab918              # double 0.83247652215303258
	.quad	0x3fd9960683670eb2              # double 0.39978182632715253
	.quad	0x3fc369518b2b7d50              # double 0.15165156646160449
	.quad	0x3fd952559bee5ad0              # double 0.39565029361385218
	.quad	0x3fc5df5fe984638c              # double 0.17087935354427619
	.quad	0x3fee80c473f7da0a              # double 0.95321867609055855
	.quad	0x3f7522a1563dc300              # double 0.0051599790784713218
	.quad	0x3fecd5741bd8c30c              # double 0.901056341541421
	.quad	0x3f94f3153ebaca00              # double 0.020458538011277838
	.quad	0x3f7a8e2a1a014a80              # double 0.0064832348435454046
	.quad	0x3fc53042b298cee4              # double 0.16553529472877593
	.quad	0x3fe2aa882c51e4da              # double 0.58331688553075911
	.quad	0x3fd916c82644bf4a              # double 0.39201549279367909
	.quad	0x3fe92b8757cb3ade              # double 0.78656355998267791
	.quad	0x3fe03f65b03b378b              # double 0.50773891849688491
	.quad	0x3fb0f1e74448c768              # double 0.066191152735681436
	.quad	0x3fe0c511f626f8ce              # double 0.52405641628845401
	.quad	0x3fee8150e0618b73              # double 0.95328563522740095
	.quad	0x3fe261febf2f9755              # double 0.57446229306217822
	.quad	0x3fde4150d4d44ad0              # double 0.4727365568552786
	.quad	0x3fe8436aa74685d9              # double 0.75822956725113067
	.quad	0x3fe08db89381d037              # double 0.51729992685296267
	.quad	0x3fea11a27580fe4b              # double 0.81465266180016138
	.quad	0x3fd5b44fbd268c34              # double 0.33913033935295123
	.quad	0x3fe440a7b1fb3667              # double 0.6328924633214229
	.quad	0x3faaf89efaad5030              # double 0.052678077793331446
	.quad	0x3fef51109d73577c              # double 0.97864561798154126
	.quad	0x3fee5d1a1ef7935c              # double 0.94886499450931749
	.quad	0x3fec2cecaf9b1564              # double 0.88048395441061844
	.quad	0x3fce6679a2f13350              # double 0.23750229316865523
	.quad	0x3fd73d42ea7519fa              # double 0.36311409851296583
	.quad	0x3f901102f97b7220              # double 0.015689894177613906
	.quad	0x3fc5d378317a0128              # double 0.17051603713844909
	.quad	0x3fe3c6b2c7603de3              # double 0.61800517025579571
	.quad	0x3fd4055d22c514e8              # double 0.3128273810910529
	.quad	0x3fd36d9fe9b90e30              # double 0.30356595825671473
	.quad	0x3fd275795c107da6              # double 0.28842004767099139
	.quad	0x3fe7c748cdf87fa2              # double 0.74307670811321125
	.quad	0x3fb3216ed9327d40              # double 0.074728897120157178
	.quad	0x3fe86cafd6a89273              # double 0.7632674400852707
	.quad	0x3fb5f973832dd670              # double 0.085837573553215085
	.quad	0x3fcb7b72da9c2c60              # double 0.21470485376662207
	.quad	0x3fc11544597a58cc              # double 0.13346151703871667
	.quad	0x3fd10faf61c988da              # double 0.26658234166656103
	.quad	0x3fd0f35d37b568d6              # double 0.26485376777931202
	.quad	0x3fe9dd94da2811e8              # double 0.80829851731010383
	.quad	0x3fe58b11e701b46d              # double 0.67322630995262289
	.quad	0x3fe1154357ecd2d8              # double 0.53384558842534613
	.quad	0x3feaf5a9122a5553              # double 0.84248784587786429
	.quad	0x3fd20e21546c95f2              # double 0.28211243862673918
	.quad	0x3fe46da6ef2ba38d              # double 0.63838526452046696
	.quad	0x3fe5393ca5a0fd2a              # double 0.66323692654979038
	.quad	0x3fdad09911c802e2              # double 0.41898180710272304
	.quad	0x3fda011ad27fd732              # double 0.40631743008212873
	.quad	0x3fc62e856ef839e0              # double 0.17329471510352246
	.quad	0x3fd14364c62371c2              # double 0.26973838185747578
	.quad	0x3feaa4e2d61f7fb2              # double 0.83262769528299985
	.quad	0x3fd8b0a0c4dfade2              # double 0.38578051782562117
	.quad	0x3fed81ef0f936b4f              # double 0.92211106340560345
	.quad	0x3fce24f7e874afd8              # double 0.23550318575268991
	.quad	0x3fe19126c685a7f6              # double 0.54896868490072737
	.quad	0x3fef16d1904a7f91              # double 0.97153547460401246
	.quad	0x3fc2f6c06d1fe2d0              # double 0.14815526321742434
	.quad	0x3fe230ad63f972d7              # double 0.56844205404521631
	.quad	0x3fe232bd3d8956ea              # double 0.56869375246853093
	.quad	0x3fb64dbe6de72558              # double 0.08712377722908593
	.quad	0x3fdec92d3739e7da              # double 0.48102884667571078
	.quad	0x3feabf4f586321a7              # double 0.83585326445704744
	.quad	0x3fe75d48674c708e              # double 0.73013706374651277
	.quad	0x3fe1f8401f407e8a              # double 0.56155401328938237
	.quad	0x3fcc10e2510421bc              # double 0.2192652602755184
	.quad	0x3fe0a262197e6278              # double 0.51982216815220195
	.quad	0x3fdef1723e4c5f04              # double 0.48348671039410385
	.quad	0x3fd29c53798eced0              # double 0.29079138632662893
	.quad	0x3fd89bd92df90ce8              # double 0.38451222886597103
	.quad	0x3fe54b1c5d8ae2ce              # double 0.66541879911445689
	.quad	0x3fdd94b948d3b03a              # double 0.46220237838747702
	.quad	0x3fcde785060e894c              # double 0.23362791820279438
	.quad	0x3fe9c48969d798bc              # double 0.80524130508708635
	.quad	0x3fe36ebb9457dce9              # double 0.60726717923435303
	.quad	0x3fe74400ace2a537              # double 0.72705110327402778
	.quad	0x3fd1ba9230d8dd58              # double 0.27701239366748132
	.quad	0x3fb7ddac51580bd0              # double 0.093226213321073503
	.quad	0x3fecfaa7b84fa7a7              # double 0.905597553236693
	.quad	0x3fc6dd0d6bc5ba20              # double 0.17862098467181031
	.quad	0x3fe700f4399826a3              # double 0.71886645554441875
	.quad	0x3fe980b50678e95e              # double 0.79696131958125327
	.quad	0x3fd62a2b24cf258a              # double 0.34632376284260913
	.quad	0x3fad9cb791dedae0              # double 0.057836281353436325
	.quad	0x3fee75c876289334              # double 0.9518778140814903
	.quad	0x3fe53ffe5fce8a0e              # double 0.66406172477974379
	.quad	0x3fe08faecaba69b5              # double 0.51753940196367998
	.quad	0x3fea2a32a0b10ff7              # double 0.81765109429443228
	.quad	0x3fe7e350c5a38dbe              # double 0.74649847604126029
	.quad	0x3fe1d5adec1bb8f4              # double 0.5573339091768319
	.quad	0x3fcfc1811f78b4c4              # double 0.2480927852315401
	.quad	0x3fe07b6dd66d51eb              # double 0.5150670230892137
	.quad	0x3fd0eeb7249e56e4              # double 0.26457003189112371
	.quad	0x3fe4cefc31d924d5              # double 0.65026674018840913
	.quad	0x3fe88b50995103bb              # double 0.76700620598432268
	.quad	0x3fe23eb6c20deb88              # double 0.57015550519223357
	.quad	0x3fed419a72445e1c              # double 0.91425821607385016
	.quad	0x3fe8572d2a82a960              # double 0.76064165404140382
	.quad	0x3fd20b1cca40007c              # double 0.28192825079896244
	.quad	0x3fe1e4aa65064a47              # double 0.55916328173982144
	.quad	0x3fc2a246c73fe574              # double 0.14557728508934142
	.quad	0x3fa1ca840efd4710              # double 0.034748198346859493
	.quad	0x3fda18ea785f9538              # double 0.40777074580394723
	.quad	0x3fea632c438927c9              # double 0.82460606756762289
	.quad	0x3fca89a353d73860              # double 0.20732537835869191
	.quad	0x3fe48259a9d68d77              # double 0.6409118954801859
	.quad	0x3fe24cc87a8d17bc              # double 0.57187293945093343
	.quad	0x3fe20a628fa44520              # double 0.56376770071998195
	.quad	0x3fe8e480af818bf0              # double 0.77789339331172691
	.quad	0x3fdf1aaba8d662de              # double 0.48600284088165135
	.quad	0x3fb9832cb7145720              # double 0.09965781659806483
	.quad	0x3fda5a0a4a91d140              # double 0.41174561769664209
	.quad	0x3fe07bf48b60d812              # double 0.51513125631641032
	.quad	0x3fe6852f8e5a042a              # double 0.70375802805950127
	.quad	0x3fd70851d7e5607c              # double 0.35988279422372904
	.quad	0x3fe7ac3dd9519125              # double 0.7397755856041256
	.quad	0x3fdee999ac670062              # double 0.48300783001105263
	.quad	0x3fd1ba65093f9502              # double 0.27700162795220262
	.quad	0x3fe5b4d1a10dd9e2              # double 0.67832261520271353
	.quad	0x3fd945bf161b0d3a              # double 0.39488198431736843
	.quad	0x3fc0af1102e90cec              # double 0.13034260408503628
	.quad	0x3fe996054a411958              # double 0.79956306937018962
	.quad	0x3fd2b1e92472d8f2              # double 0.29210880813060591
	.quad	0x3feae274494dbeb5              # double 0.84014334027411641
	.quad	0x3fab2a8bdcb8f130              # double 0.053058977788597139
	.quad	0x3fe05e2654e7f9f5              # double 0.51149288733705467
	.quad	0x3fe05a8bdc7c7343              # double 0.51105301917741774
	.quad	0x3fda9fc5e3550d9e              # double 0.41600177002347916
	.quad	0x3fcb8cfb8787f6ec              # double 0.21523994558076909
	.quad	0x3fd35cc7f9fc0336              # double 0.30253791248837858
	.quad	0x3fdadf21aa82523e              # double 0.41986886645580401
	.quad	0x3fce2c34f6f3d9f8              # double 0.2357240873167965
	.quad	0x3fe2dfee49aa2ace              # double 0.58983530414237761
	.quad	0x3fd8905d7121447a              # double 0.38381134078833379
	.quad	0x3fc276db26c3ebb8              # double 0.14425219910466835
	.quad	0x3fdab44c1a0d4b6c              # double 0.41725447219976419
	.quad	0x3fda2c09d10329e2              # double 0.40893788730013914
	.quad	0x3fbd2480f29cd740              # double 0.11383825228844291
	.quad	0x3fd94fb4ab7e19a2              # double 0.39548985240289813
	.quad	0x3f999928d222c300              # double 0.02499831945960107
	.quad	0x3fd75acb8b53f02c              # double 0.36491669279326078
	.quad	0x3fea79204cc8b0da              # double 0.82728590962281179
	.quad	0x3fb071a6dc5b4f30              # double 0.064234188840882167
	.quad	0x3fe2c56f01c38113              # double 0.58660078377218594
	.quad	0x3fdf153c3e07e3ca              # double 0.48567110116669865
	.quad	0x3fd8d4b5b3070182              # double 0.38798277362004552
	.quad	0x3fe119ab8e7a50ee              # double 0.53438356235213091
	.quad	0x3fec6fcb93fc0b4d              # double 0.88864687827331468
	.quad	0x3fefa1e9f5d04d49              # double 0.98851488123401864
	.quad	0x3fb452f7df35c820              # double 0.079390995020532262
	.quad	0x3fecf69bb2a7edce              # double 0.90510353940720178
	.quad	0x3fe093d32af798fc              # double 0.51804502861048674
	.quad	0x3fee2cbf053a698b              # double 0.9429621793854478
	.quad	0x3fe95c46bff8a315              # double 0.79251420492537028
	.quad	0x3fd6d8bc19de64a6              # double 0.35697844053499705
	.quad	0x3fe31b54d81487d7              # double 0.59708635523952125
	.quad	0x3fde713b0f4a16e4              # double 0.47566105359179134
	.quad	0x3fe4066fc4a7a74a              # double 0.62578571709784936
	.quad	0x3fe983bd8918c169              # double 0.79733158852290587
	.quad	0x3fb135203d239118              # double 0.067216887403962366
	.quad	0x3fed18ce3f192de3              # double 0.90927803348443736
	.quad	0x3fec1cea55a0f82c              # double 0.8785297081410639
	.quad	0x3fb42fc79770efb8              # double 0.078854059670390053
	.quad	0x3fbb627a85f4d888              # double 0.10697141428394918
	.quad	0x3fa8bcb873fb0610              # double 0.0483148233011087
	.quad	0x3fe57fc7cf254adf              # double 0.67184820612086671
	.quad	0x3fd34c6932ce9e84              # double 0.30153875314361067
	.quad	0x3fde87d451cfd188              # double 0.47704036702568731
	.quad	0x3fee90940529ccae              # double 0.95514870651677142
	.quad	0x3fe671532841e926              # double 0.70133359778200055
	.quad	0x3fb7b48a06e1b7f8              # double 0.092598559074502762
	.quad	0x3fec74ee64d0e5f6              # double 0.88927383127810233
	.quad	0x3fdf1e7cb5b1dce6              # double 0.486235787807756
	.quad	0x3fed6f51dbfc56f9              # double 0.91983883825261537
	.quad	0x3fd5d0de26adbd1c              # double 0.34087327744687612
	.quad	0x3fe832c5f6723543              # double 0.75619791158684568
	.quad	0x3faa4e65c48cbac0              # double 0.051379375689398099
	.quad	0x3feda8ff047b6b86              # double 0.92687941432392118
	.quad	0x3fee5cd6837a5b83              # double 0.94883275679863777
	.quad	0x3fe470c01c154912              # double 0.63876348004331107
	.quad	0x3fc9c981574373fc              # double 0.20146195183670546
	.quad	0x3fdfebd86259ad52              # double 0.49876985172769139
	.quad	0x3fecc35e248b16b0              # double 0.89884860169759939
	.quad	0x3fa1a69c69bf1620              # double 0.034474265964984818
	.quad	0x3fe496123e6dc938              # double 0.64331924622664527
	.quad	0x3fe8afc580cf6d1b              # double 0.77145648153546931
	.quad	0x3feb2587bf72f302              # double 0.84833133118044679
	.quad	0x3fe487393fff29c4              # double 0.64150679110871822
	.quad	0x3fa38f36a4029030              # double 0.038202006836656088
	.quad	0x3fd12710b3a56c38              # double 0.26800935309956087
	.quad	0x3fe8ca11b864e2fc              # double 0.77466665281744395
	.quad	0x3fef7fd4bb54a00d              # double 0.98435436809541132
	.quad	0x3feaa3c1cb654693              # double 0.83248986936287606
	.quad	0x3f8495f12e7e5700              # double 0.010051616889352299
	.quad	0x3fe3bc3e9f99edef              # double 0.61672907993437132
	.quad	0x3fe88f974d8ee65c              # double 0.76752820156179835
	.quad	0x3fe9bd459221d967              # double 0.80435446301889335
	.quad	0x3fdfd5090a466e92              # double 0.49737764361791748
	.quad	0x3feeb24dc30f5cf2              # double 0.95926559541376677
	.quad	0x3fc1c01c05ed03b8              # double 0.13867521561954077
	.quad	0x3fb416c5e7cad808              # double 0.078472489442759863
	.quad	0x3fca9d8106e19e7c              # double 0.20793164096834349
	.quad	0x3fc203a45e0f1648              # double 0.14073614685746549
	.quad	0x3fd78b0a029b1f94              # double 0.36786127333152163
	.quad	0x3fed46d2316f4c42              # double 0.91489514975763364
	.quad	0x3febf207d12de71a              # double 0.87329474311193001
	.quad	0x3fe9ae20dc76336f              # double 0.80250590380602016
	.quad	0x3fe48562b1b10df4              # double 0.64128241258043639
	.quad	0x3f7c775e55281880              # double 0.0069497761601323704
	.quad	0x3f7950c2fcd0d400              # double 0.0061805359555835437
	.quad	0x3fe6ad16ec58e597              # double 0.70862909471104529
	.quad	0x3fe219a6bbde187b              # double 0.56563126271136299
	.quad	0x3fd6e71d41c9aa3e              # double 0.35785609650216432
	.quad	0x3fe1430bf12ff2f7              # double 0.53943440539259668
	.quad	0x3fd211715ed56c8a              # double 0.28231462727644241
	.quad	0x3feae449f566179a              # double 0.84036729745342886
	.quad	0x3fe7c6c1f6f5fe89              # double 0.74301241144708385
	.quad	0x3fd39ac8a99f2e9c              # double 0.30632225575093641
	.quad	0x3fe972ae2e8fe422              # double 0.79524907201915007
	.quad	0x3fee697b8684cae3              # double 0.95037628434360177
	.quad	0x3fe6b64c0312d1f7              # double 0.70975304222389368
	.quad	0x3fc2405a7dbaf6fc              # double 0.14258891238380744
	.quad	0x3fd19bccf98329b2              # double 0.27513431898537555
	.quad	0x3fb3439e9ad0e6d0              # double 0.075250542446976043
	.quad	0x3fadbd1e3ae32920              # double 0.058083481491467248
	.quad	0x3fe302f061be721c              # double 0.59410876360522336
	.quad	0x3fbb6d91985ea418              # double 0.10714063615763825
	.quad	0x3fe8a9904e36cd9c              # double 0.77069869304834837
	.quad	0x3fe7c0df1c7d5687              # double 0.74229388775229743
	.quad	0x3fe6827fa3489e3e              # double 0.70343000308361758
	.quad	0x3feed84f216e00d8              # double 0.96390491990316728
	.quad	0x3fe345e8da7e0649              # double 0.60228388475679495
	.quad	0x3fb143fcfa231e90              # double 0.067443667477272706
	.quad	0x3feb8afea3b7051e              # double 0.8607171247059886
	.quad	0x3fe470fa7c850914              # double 0.63879131622550966
	.quad	0x3fec9f99d0060f2c              # double 0.89448252324698307
	.quad	0x3fe1058b33d8668c              # double 0.53192672849691425
	.quad	0x3fe62784fac65451              # double 0.69232415179670614
	.quad	0x3feab5b59b0ae584              # double 0.83468132287741569
	.quad	0x3fdaf87d2f20ffec              # double 0.42141656496460089
	.quad	0x3fd4312690f61556              # double 0.31549991756795259
	.quad	0x3fe16e671d6bde29              # double 0.54472690340384589
	.quad	0x3fe05553f113a497              # double 0.51041600308703294
	.quad	0x3fef3fc12b997b9c              # double 0.97653254046950932
	.quad	0x3fb78ef920cf80d0              # double 0.092025347242727706
	.quad	0x3fe733665e52b884              # double 0.72502439901815352
	.quad	0x3fe864ff0b2037b5              # double 0.76232864544885237
	.quad	0x3fec836fc15d4bc1              # double 0.89104450003139146
	.quad	0x3fdac339ae059892              # double 0.41816560739824482
	.quad	0x3fed3395b821bd12              # double 0.91254697764626003
	.quad	0x3feaa229d5c33009              # double 0.83229533911208009
	.quad	0x3fee2114ec55627c              # double 0.94153829726117477
	.quad	0x3fb3ceaaaccfd238              # double 0.077372233572369775
	.quad	0x3fd328e80637d35a              # double 0.29937172515137933
	.quad	0x3fbf4605e3943380              # double 0.12216221624494317
	.quad	0x3fe757b758ba81b7              # double 0.72945754365723914
	.quad	0x3fe88e4b94b4b91a              # double 0.76737002414828059
	.quad	0x3fed42e5f666b65c              # double 0.91441629529226586
	.quad	0x3fe1e294c1010326              # double 0.55890882202229331
	.quad	0x3fb5a10826bcb1d8              # double 0.084488400895401994
	.quad	0x3fedbfb2b1804538              # double 0.92965063732314146
	.quad	0x3fe19ec044df24c7              # double 0.55062879039282897
	.quad	0x3fd8dcaf0f128426              # double 0.38846947166354295
	.quad	0x3fc72c0b89a927c8              # double 0.18103164884297329
	.quad	0x3fe7912f01c6321f              # double 0.73647260996364483
	.quad	0x3fca3585bc1a9c0c              # double 0.20475837406885977
	.quad	0x3fd5127507e59b1a              # double 0.32925153514081418
	.quad	0x3f66656386b3e200              # double 0.0027338928099391868
	.quad	0x3fe3aef9418c1112              # double 0.61510908891844651
	.quad	0x3feb3aa690fe93cf              # double 0.85090950316645741
	.quad	0x3fe0110d96ea5b97              # double 0.50208167529750625
	.quad	0x3fe61eee147f5e82              # double 0.69127563479828802
	.quad	0x3fe51ce68a28cc9a              # double 0.65977789863827074
	.quad	0x3fe52fb1a87edff1              # double 0.66207201871202248
	.quad	0x3feb1dc56a31e075              # double 0.84738417378595321
	.quad	0x3fdacda3757d61d8              # double 0.41880117868052258
	.quad	0x3fd24fdbf464f19a              # double 0.28612421862251269
	.quad	0x3feb4bce72364d93              # double 0.85300371462874336
	.quad	0x3fe21b0534a520c2              # double 0.56579838068230282
	.quad	0x3feb959eb95f0f8b              # double 0.86201416211450643
	.quad	0x3fe76ac034c3c842              # double 0.73178110414142616
	.quad	0x3fc5438ba54ee548              # double 0.16612382480324528
	.quad	0x3fe3da2875981f2c              # double 0.6203806206476421
	.quad	0x3fe601a39da14175              # double 0.68770008837786512
	.quad	0x3fdb8490f777c5a8              # double 0.4299662033727949
	.quad	0x3fe46cd46e29657e              # double 0.63828488841970432
	.quad	0x3fd8cd53640cafe6              # double 0.3875320889517283
	.quad	0x3fe6d7bba10c1c6a              # double 0.71383458571007208
	.quad	0x3fc71ed0100da330              # double 0.18062783035136354
	.quad	0x3fedfc89ff01b67e              # double 0.93707752042764958
	.quad	0x3fe316f40341bb21              # double 0.59655190120779278
	.quad	0x3feb59f7ab204310              # double 0.85473235533763336
	.quad	0x3fe028ccc4521ca5              # double 0.50498045295616534
	.quad	0x3fe4b795a2c5a694              # double 0.64741021911068453
	.quad	0x3fe9b903322431b9              # double 0.80383453171957975
	.quad	0x3fc6c2140a56e830              # double 0.17779779915673677
	.quad	0x3fed040282ba2199              # double 0.90673947842246883
	.quad	0x3fbc027c8bba7670              # double 0.10941294108712341
	.quad	0x3fe3cd6062daca92              # double 0.61882037456082828
	.quad	0x3fe7f6d72c4c3c14              # double 0.74888189937508053
	.quad	0x3fc8fed95c979c88              # double 0.19527737637620057
	.quad	0x3fd8a02baea65a1c              # double 0.38477603965421436
	.quad	0x3fc78ab18f549100              # double 0.18392009256888997
	.quad	0x3fd88b67cb698d10              # double 0.3835086332748725
	.quad	0x3fdfb055b88350e4              # double 0.49513762492030211
	.quad	0x3fde530297d3c9c2              # double 0.47381653620609765
	.quad	0x3fdb9f1f34787bcc              # double 0.43158702968679274
	.quad	0x3febd1ed2ecde9ae              # double 0.86937579289888389
	.quad	0x3fefee99d49470b8              # double 0.9978760864210221
	.quad	0x3fb1241bd4b36590              # double 0.066957225254915764
	.quad	0x3fe3e2f15e0cbc36              # double 0.62145298356143175
	.quad	0x3fcb65177d96b4ac              # double 0.21402257568607774
	.quad	0x3fecc5996920b34b              # double 0.8991210034633722
	.quad	0x3fcbd898537778dc              # double 0.21754745555421706
	.quad	0x3fdda39f6b06e3a6              # double 0.46311173869940558
	.quad	0x3fc564b5e61c73cc              # double 0.16713594184775926
	.quad	0x3fb297f7b422e128              # double 0.072631341436935615
	.quad	0x3febf2b574a762fe              # double 0.87337754043537053
	.quad	0x3fe75bdb05096f07              # double 0.72996283515701144
	.quad	0x3fedab504d70db3c              # double 0.927162314654971
	.quad	0x3fb745d0c12ebc28              # double 0.090909049190245228
	.quad	0x3fc96709ed5183c0              # double 0.19845699394048033
	.quad	0x3fd93062ada1a558              # double 0.39357821422762163
	.quad	0x3fe732bf6c076f8c              # double 0.72494479274199497
	.quad	0x3fe74b196b41f1c5              # double 0.72791739414929479
	.quad	0x3fe2f7ccb2ab69cc              # double 0.59274897476580568
	.quad	0x3fcdabee9c4a8b38              # double 0.23180945044904333
	.quad	0x3fd36db95b9bf2e2              # double 0.30357202478607637
	.quad	0x3fa5579711d22f00              # double 0.041683884549540196
	.quad	0x3fe1b05bdf886762              # double 0.55277818354373331
	.quad	0x3f82c8b486a62f80              # double 0.0091718772498763368
	.quad	0x3fc53eed072b7850              # double 0.16598284578407396
	.quad	0x3fce97af2c838ba8              # double 0.23900403665092296
	.quad	0x3feebc97b83ff4a6              # double 0.96052156435293479
	.quad	0x3feb2782c025aea6              # double 0.8485730889201093
	.quad	0x3fe1a542f292f665              # double 0.55142352464436029
	.quad	0x3fcba9ceec5d5d18              # double 0.21611963788266375
	.quad	0x3fe4ec3135b783ed              # double 0.65383205882619466
	.quad	0x3fe9ccbb3df30449              # double 0.80624162768811758
	.quad	0x3fe1e1bca0a0f831              # double 0.55880576489267331
	.quad	0x3fbb9b78740ec560              # double 0.10784104188384935
	.quad	0x3fe8a2abaf75ff99              # double 0.76985725660050541
	.quad	0x3fb20cced7db0ca8              # double 0.07050793428338642
	.quad	0x3fecc9f4a621f4a9              # double 0.8996527905252566
	.quad	0x3fe3eff687d5c8f7              # double 0.62304235964100385
	.quad	0x3fd64b20c9cf7a6e              # double 0.34833545406392019
	.quad	0x3fe8ec5754162d00              # double 0.77885023520630625
	.quad	0x3fef4d92162f2167              # double 0.97821907360871029
	.quad	0x3fd2b7f350563240              # double 0.29247744412785792
	.quad	0x3fe4ad6bdc39bbef              # double 0.64616959584043154
	.quad	0x3fe6015125666e18              # double 0.6876607637854617
	.quad	0x3fd54207db996210              # double 0.33215519376020186
	.quad	0x3fe0da0ebf9ee6a5              # double 0.52661836076659496
	.quad	0x3fab41f69d281780              # double 0.053237635311275788
	.quad	0x3fd0324c09732136              # double 0.25306988642525441
	.quad	0x3fe9fd81b1c04132              # double 0.81219563214293644
	.quad	0x3fec52e4f3d390e6              # double 0.88511893865918689
	.quad	0x3fcd95644ac50604              # double 0.23112157488689899
	.quad	0x3fa6a8a19a80b240              # double 0.044255304441638277
	.quad	0x3fbe772b1f576d50              # double 0.11900586619542719
	.quad	0x3fdbaf88a6d20c2e              # double 0.43258873263420383
	.quad	0x3fe5dbb702f0b7dd              # double 0.68307066511419701
	.quad	0x3fe3a86b8031b6b6              # double 0.61430907285622172
	.quad	0x3fd85ff97c35f2da              # double 0.38085782175020955
	.quad	0x3fd1fccfcdf6b264              # double 0.28105540383947969
	.quad	0x3fe12c24337a8d60              # double 0.53663835577428287
	.quad	0x3fb3e20b9ddde840              # double 0.07766792873545203
	.quad	0x3fc623618875f824              # double 0.17295474207998141
	.quad	0x3fd50c9aadbe3e08              # double 0.32889430014708454
	.quad	0x3fe0627cd128e143              # double 0.512022408022894
	.quad	0x3fd299c3fdeac24c              # double 0.29063510700783435
	.quad	0x3fe9ce914794d4f0              # double 0.80646575909363882
	.quad	0x3fe482da12762ebd              # double 0.64097312551299235
	.quad	0x3fced6082487d26c              # double 0.24090673240393146
	.quad	0x3feb40e0f5b4d523              # double 0.85166976918722914
	.quad	0x3fe628c8589304b2              # double 0.69247834491411298
	.quad	0x3febba6885d93b21              # double 0.86650491850182132
	.quad	0x3fce2c05901e08f4              # double 0.23571843659380642
	.quad	0x3fe3928e993e877b              # double 0.61164026194113263
	.quad	0x3fb172f1ccd5bb70              # double 0.068160164364355458
	.quad	0x3fb6b176109a0910              # double 0.088645342877530675
	.quad	0x3fdb1e0790090c8c              # double 0.42370785776092457
	.quad	0x3fd0f8601a0f0c9c              # double 0.26515963120272956
	.quad	0x3feb0cd66f477b0e              # double 0.84531709417555745
	.quad	0x3fdf1b9f9542645e              # double 0.48606099678142367
	.quad	0x3fee1797476ea0e0              # double 0.94037975265112194
	.quad	0x3f9b04ac430f7560              # double 0.026385013192215978
	.quad	0x3fc56d845d305590              # double 0.16740469503626487
	.quad	0x3fc9b7ca2b354d34              # double 0.20092131719375461
	.quad	0x3fe3a31ea1490cdd              # double 0.61366206646962562
	.quad	0x3fe23b4f55139780              # double 0.56973997704038482
	.quad	0x3fd6e7cbb27632e6              # double 0.35789768627073071
	.quad	0x3f6568fb7e714300              # double 0.002613536070875333
	.quad	0x3fe0687d58da7e8a              # double 0.51275508264730374
	.quad	0x3fe69fdddc98e883              # double 0.70701497159394966
	.quad	0x3fe180c747ad3f82              # double 0.54697002410283369
	.quad	0x3fe63b8215d18307              # double 0.6947641779080137
	.quad	0x3fee27ea1dfa8da4              # double 0.94237237792224393
	.quad	0x3fe6a112bc01e779              # double 0.70716225357249052
	.quad	0x3fee47cecd35a9a9              # double 0.94626560287479322
	.quad	0x3faa12016f215350              # double 0.050918621841140266
	.quad	0x3fe93ac547c21247              # double 0.78842414870502686
	.quad	0x3fea755e4d9b7f78              # double 0.82682719381044389
	.quad	0x3fdd069a46d278de              # double 0.45352799335695504
	.quad	0x3fc35d306b2c8b74              # double 0.15128140671830759
	.quad	0x3fe91ab63712fd64              # double 0.7845107150714452
	.quad	0x3feeee5930c9cdf2              # double 0.96659526375736804
	.quad	0x3fb7db20f854a1e0              # double 0.093187389972292589
	.quad	0x3fbaed33b3660438              # double 0.10518191461416471
	.quad	0x3fb7616f39b592b8              # double 0.091330482091119047
	.quad	0x3fdfbd8e051b501e              # double 0.49594450472545926
	.quad	0x3fe91bd35bf04a61              # double 0.78464668232693324
	.quad	0x3fe0ee2728113fbb              # double 0.5290714056554785
	.quad	0x3fdc90904af69fec              # double 0.44632346459047656
	.quad	0x3fc60a6f88431290              # double 0.1721934714643294
	.quad	0x3fdf7e663f2dc3c2              # double 0.49208980722238149
	.quad	0x3fd504a9192ea762              # double 0.32840945681765821
	.quad	0x3fb31510151f9a90              # double 0.074540143162815875
	.quad	0x3f8233fe9f736780              # double 0.0088882343683740483
	.quad	0x3fecac6cd45339c1              # double 0.89604798764940352
	.quad	0x3fe8c29b33c7969f              # double 0.77375564683162057
	.quad	0x3fe5d91dd87f368d              # double 0.68275348934703717
	.quad	0x3fe4cdde8ead0e94              # double 0.65013053766638729
	.quad	0x3fedd67ea19eaab8              # double 0.93243342939725604
	.quad	0x3fdc360930a61696              # double 0.44079808951242094
	.quad	0x3fcf1a44fedaa858              # double 0.24298918193864227
	.quad	0x3fb0d428ebc9b5d0              # double 0.065737302365696637
	.quad	0x3fe5322c199d4606              # double 0.6623745441704052
	.quad	0x3fda0b7218a35990              # double 0.40694858938277267
	.quad	0x3fe4cefd021f9663              # double 0.65026712813114462
	.quad	0x3fce7cfbd2965550              # double 0.23818919928150217
	.quad	0x3fe277f8ef0cd0db              # double 0.57714506806817256
	.quad	0x3fe524d890847702              # double 0.66074779726088217
	.quad	0x3fd7b735db66d9c6              # double 0.37055727411225481
	.quad	0x3fb27dd415387750              # double 0.072232489758303986
	.quad	0x3fea2c35a66ec799              # double 0.81789667612450778
	.quad	0x3fd17f989293bcc6              # double 0.27341284097833485
	.quad	0x3fe6bc1368078cec              # double 0.71045847242603832
	.quad	0x3fda23dc537e2b4c              # double 0.40843876031492665
	.quad	0x3fd1de870306803c              # double 0.27920699401329663
	.quad	0x3fe5ce449e41bab6              # double 0.68142920407793528
	.quad	0x3fe236078398ea8e              # double 0.56909537985423397
	.quad	0x3fead9b834062bca              # double 0.83907709275205744
	.quad	0x3fd7e9893640001e              # double 0.37362890527583825
	.quad	0x3feb6ba1071a13d8              # double 0.85688830744822564
	.quad	0x3fc56766ca2bd0a8              # double 0.16721806403768835
	.quad	0x3fe4745eac0a8804              # double 0.63920529939446213
	.quad	0x3fe988fa652de941              # double 0.79797096025075842
	.quad	0x3fd290048a6396e6              # double 0.290040145059136
	.quad	0x3fe4bcccd7523121              # double 0.64804689459700537
	.quad	0x3fbcde38fd25c060              # double 0.11276584797247002
	.quad	0x3fd03958a082b176              # double 0.25350013422828199
	.quad	0x3fd1edeaa88ab466              # double 0.28014627894555699
	.quad	0x3fe8fe9fcf56dabe              # double 0.78108206268264957
	.quad	0x3fe143b3ae4c85dc              # double 0.53951438944585162
	.quad	0x3fe72638ed8adc31              # double 0.72341581721310011
	.quad	0x3fdc3f48f6b0ae7c              # double 0.44136261072956251
	.quad	0x3fea19b91b9f03d2              # double 0.81564002413517245
	.quad	0x3fe89c9c6fb15ea2              # double 0.76911756339082538
	.quad	0x3fd36b43c9f0e922              # double 0.30342192383581523
	.quad	0x3fd0822182e05826              # double 0.25794256001370497
	.quad	0x3fd0250b7151adfa              # double 0.25226102892221969
	.quad	0x3fd9e128bb24b056              # double 0.40436762119020864
	.quad	0x3fe1683dcdf84a43              # double 0.54397478321545412
	.quad	0x3fe9a179c527a1aa              # double 0.80096138483809409
	.quad	0x3fcafaf1a31e1034              # double 0.21078319992750638
	.quad	0x3fe5c71f70df49e2              # double 0.68055698438029943
	.quad	0x3fe7c59254133673              # double 0.74286762638958093
	.quad	0x3fe6f857da2c96fc              # double 0.71781532871383957
	.quad	0x3fe82eadbf14c102              # double 0.75569808311959741
	.quad	0x3fd0152e546194fa              # double 0.25129278412198597
	.quad	0x3fcd2af2fc6c5168              # double 0.22787320447299497
	.quad	0x3fe3c6de36c6cac7              # double 0.61802588175336204
	.quad	0x3fda0a00a8cff15e              # double 0.40686050878118418
	.quad	0x3fdc16d1d91d958e              # double 0.4388928051251576
	.quad	0x3fdd7e8dbdf7d1ba              # double 0.46084922362868108
	.quad	0x3fefc6e6122ed804              # double 0.99302962828983298
	.quad	0x3f9f09510c935b40              # double 0.030308977501444234
	.quad	0x3fc91c20f230e2c4              # double 0.19617091966371991
	.quad	0x3fee7b021f2f484f              # double 0.95251566019784117
	.quad	0x3fee2212bfd7344d              # double 0.94165933102488852
	.quad	0x3fe80240b46cd2c8              # double 0.75027499427104605
	.quad	0x3fe4a482269e832b              # double 0.6450815920144114
	.quad	0x3fec3ae676fb2d91              # double 0.88218997229107476
	.quad	0x3fe76de61266f840              # double 0.73216537088570277
	.quad	0x3fb335712d4ca0a0              # double 0.075034211692243336
	.quad	0x3fc56eae4a0984d4              # double 0.1674402104863818
	.quad	0x3fe3d1211c9cc3b1              # double 0.61927848423339615
	.quad	0x3fdccb6860a43816              # double 0.44991502225536928
	.quad	0x3feb7156829da858              # double 0.85758519659908483
	.quad	0x3fd86c3cc6f47796              # double 0.38160628728098211
	.quad	0x3f81790ef5042840              # double 0.0085316818736097532
	.quad	0x3fe4234c8b13b6cd              # double 0.62930895961263789
	.quad	0x3feba4a12772f7e7              # double 0.8638463755121365
	.quad	0x3feb5cd5385c154a              # double 0.85508214004281879
	.quad	0x3fef42fee40b8ff3              # double 0.97692818203040443
	.quad	0x3fbea6a4efd306b8              # double 0.11973028998456925
	.quad	0x3fe9f52c206423e9              # double 0.8111782677307221
	.quad	0x3fea19ab7b79caa4              # double 0.81563352695805635
	.quad	0x3fd11f743a521a68              # double 0.26754480071432463
	.quad	0x3fe60c26b874ae03              # double 0.68898330713767597
	.quad	0x3fc716474c420e20              # double 0.18036738608871961
	.quad	0x3fbdb7d182419a58              # double 0.11608609609684473
	.quad	0x3fd3d637868c5096              # double 0.30994976176703781
	.quad	0x3fede305c00c2508              # double 0.93396270283952365
	.quad	0x3fee78b5320e706d              # double 0.95223483826295097
	.quad	0x3fd6a88478d296a0              # double 0.35403549002726642
	.quad	0x3fcf0a89ef8a1aa4              # double 0.24250911899817595
	.quad	0x3fe29e6c29472931              # double 0.58183868467430078
	.quad	0x3feff179bd3c3eba              # double 0.99822699508691604
	.quad	0x3fd2d21461aebb0e              # double 0.29407224215803829
	.quad	0x3fe1f00959ce5f61              # double 0.56055133381140021
	.quad	0x3fd9f07c45fd9b16              # double 0.40530306658767878
	.quad	0x3fe2d1ec6f1cf0ba              # double 0.58812543584601618
	.quad	0x3fe3f1dd446acd82              # double 0.62327445376142543
	.quad	0x3feceb545cdb003d              # double 0.90372675071558428
	.quad	0x3fc596c78f68431c              # double 0.16866392614658643
	.quad	0x3fc9cd7d2d5b05ec              # double 0.20158352579714689
	.quad	0x3fe8b0e2b8fee70e              # double 0.77159248477912157
	.quad	0x3fef0258292dd0e7              # double 0.96903617899672844
	.quad	0x3fd166e296f01d26              # double 0.27190460910829228
	.quad	0x3fcf1d49fecb4be8              # double 0.24308133069152338
	.quad	0x3f9dc2a9a778be80              # double 0.029062891813906422
	.quad	0x3fd88a04846674cc              # double 0.38342392854412988
	.quad	0x3fb8d3e0d9e2c628              # double 0.096983006663116655
	.quad	0x3fbc4142f6560ac8              # double 0.11037081255021086
	.quad	0x3feb6a0b6538753f              # double 0.85669488687168627
	.quad	0x3fd371fb7fe43790              # double 0.30383193482782023
	.quad	0x3fd429dae50aeaf0              # double 0.31505462996908218
	.quad	0x3fd58d79a3737df2              # double 0.3367599579050583
	.quad	0x3fd89d541fc3af38              # double 0.38460257627479022
	.quad	0x3fb42f4b242a25a8              # double 0.078846641854531385
	.quad	0x3feea8ccdaeafaaa              # double 0.95810549504661435
	.quad	0x3fc9aaa0e887193c              # double 0.20051967004673965
	.quad	0x3fcdc80ae3ece12c              # double 0.23266731385388917
	.quad	0x3fdab222cf167576              # double 0.41712255690966715
	.quad	0x3fb5b2f0e14a2be0              # double 0.084761672022224399
	.quad	0x3fd28fb4e5c6eae0              # double 0.29002115668451545
	.quad	0x3fc4f4b631964454              # double 0.16371800824393523
	.quad	0x3fe98d38fa2ab735              # double 0.79848908291544396
	.quad	0x3feee291c16e9901              # double 0.96515739230815722
	.quad	0x3fe456a1120293e2              # double 0.63557485120383839
	.quad	0x3fe55962a515ee07              # double 0.66716129535001378
	.quad	0x3fd3abb0454c1132              # double 0.30735403792666027
	.quad	0x3fe917831906db0a              # double 0.78412012947123455
	.quad	0x3fec74f22ce70221              # double 0.88927563447947844
	.quad	0x3feb6d71a5ac84e3              # double 0.85710985525306815
	.quad	0x3fb7b1badfa896e0              # double 0.092555694202555383
	.quad	0x3f8e8392fdc1c7c0              # double 0.01489939534096496
	.quad	0x3fe16cab4168fb15              # double 0.54451525473982321
	.quad	0x3feae26a210cbd13              # double 0.84013849692374476
	.quad	0x3fdd1d311ce658ba              # double 0.45490672895665407
	.quad	0x3fedf096e5a21d99              # double 0.93561882829901599
	.quad	0x3fefb4e15af07b9a              # double 0.99083011399840193
	.quad	0x3fd37a3200bef37a              # double 0.30433321068613106
	.quad	0x3f783f9631117880              # double 0.0059200159895153037
	.quad	0x3fe634b78bb9695f              # double 0.6939351777066739
	.quad	0x3fe87a60e1122c78              # double 0.76493877371957719
	.quad	0x3fe3dcae4c427750              # double 0.62068858046016295
	.quad	0x3fe102fc7ffa2141              # double 0.53161454196473568
	.quad	0x3feca6762d2a07c4              # double 0.89532002278451061
	.quad	0x3fe405c30d0abb45              # double 0.62570335910081865
	.quad	0x3fed6b5dd7e45143              # double 0.91935627142314791
	.quad	0x3fdeb370dbf8c4b0              # double 0.47970220071426706
	.quad	0x3fef07346a3c5303              # double 0.96962948559902917
	.quad	0x3fed7284008409b9              # double 0.92022895909058555
	.quad	0x3f93fb539722f1c0              # double 0.019513422107353184
	.quad	0x3fd53fe97cbef720              # double 0.33202588255140775
	.quad	0x3feadbd806bbdc16              # double 0.83933640780640206
	.quad	0x3fe10116f8d6e752              # double 0.53138302422960693
	.quad	0x3f988b48bb838be0              # double 0.023968826718270608
	.quad	0x3fecd415a4d15053              # double 0.90088922682708483
	.quad	0x3faa967f833266a0              # double 0.051929459347957563
	.quad	0x3fdefce8cb93272e              # double 0.48418636207917387
	.quad	0x3fe851538a577c4c              # double 0.75992753047820249
	.quad	0x3fe107ad60c94e94              # double 0.53218716529450427
	.quad	0x3fd4a1378fa175d2              # double 0.32233990694461767
	.quad	0x3fe2736bc60d0d67              # double 0.57658947641213565
	.quad	0x3fdbcdfe5f07c6fa              # double 0.43444785385427986
	.quad	0x3fee1c97530df50b              # double 0.94099012586198805
	.quad	0x3fe3cae93698e365              # double 0.61851940787810789
	.quad	0x3fe8a79e7edb86f5              # double 0.77046131874905532
	.quad	0x3fe5d815f727e315              # double 0.68262766144389053
	.quad	0x3fe0b5015a32b071              # double 0.52209537140653428
	.quad	0x3fabde6305a59620              # double 0.054431051673230479
	.quad	0x3fe34a4c1ec00570              # double 0.60281950002551632
	.quad	0x3fec38b46af15ce2              # double 0.88192196738500805
	.quad	0x3fea0080b10aa186              # double 0.81256136492179176
	.quad	0x3fc4ba55342de88c              # double 0.16193642661875562
	.quad	0x3feb7978a640c1b0              # double 0.85857803794174536
	.quad	0x3fd8eef1caf2567c              # double 0.38958401507384344
	.quad	0x3fbb6a28cb2302b0              # double 0.10708861312287854
	.quad	0x3fef9b8291829cdb              # double 0.98773315830194563
	.quad	0x3fb141612eee24e0              # double 0.067403863866406066
	.quad	0x3fd094f4a051adb0              # double 0.25909152656705725
	.quad	0x3fe8a31a4d3e88cb              # double 0.76991000258228703
	.quad	0x3fe21b50835288df              # double 0.56583429001718943
	.quad	0x3fe5266d733c8c8e              # double 0.66094086176998856
	.quad	0x3fec1ea723e2d53d              # double 0.87874180802342716
	.quad	0x3fd1cf2ee5ca99ac              # double 0.27827045860831379
	.quad	0x3fc277f2de43f088              # double 0.14428554394533344
	.quad	0x3fb4c786902bb4e0              # double 0.081169519613200958
	.quad	0x3fe740e84a9ab719              # double 0.72667326518214559
	.quad	0x3fe49ab21c557407              # double 0.64388375791497843
	.quad	0x3fd4859f86d6ea4e              # double 0.32065570991440928
	.quad	0x3fe2d3d502ed7a7f              # double 0.58835840770537107
	.quad	0x3fe575ca684ca21a              # double 0.67062874194113253
	.quad	0x3fd679244cd17bf8              # double 0.3511439085177126
	.quad	0x3fc5378399ffdb20              # double 0.16575665492538239
	.quad	0x3fd4c63cb2c37014              # double 0.32459943253866297
	.quad	0x3fe84fc7601be861              # double 0.75973862429897221
	.quad	0x3fb3a9d44ebf69a0              # double 0.076810139871133831
	.quad	0x3fc54cba5c0925fc              # double 0.16640405172283568
	.quad	0x3fe0a823078a2292              # double 0.52052451584411785
	.quad	0x3fedc971c25ae768              # double 0.93084037742594905
	.quad	0x3fe2184b6cc02b6f              # double 0.56546565285075967
	.quad	0x3fc00c15a24e3eb8              # double 0.12536878991203593
	.quad	0x3feb408a6c07868f              # double 0.85162850474826424
	.quad	0x3fec5162454cb06b              # double 0.88493455443450608
	.quad	0x3fd29be3943be116              # double 0.29076470828978651
	.quad	0x3fd494de27fbddc6              # double 0.32158616928742523
	.quad	0x3fd53257bda41eb0              # double 0.33119767684591306
	.quad	0x3fee31f14148fe1b              # double 0.94359648467065271
	.quad	0x3f605f6af5381400              # double 0.001998623754618567
	.quad	0x3fec8ada15cc2e6a              # double 0.89194969422665094
	.quad	0x3f8a968439d82200              # double 0.012982399955050461
	.quad	0x3fe37549089a8e1c              # double 0.60806705170074649
	.quad	0x3fefccf25753dec5              # double 0.99376790100264911
	.quad	0x3fecf6906ff982a9              # double 0.90509816999481985
	.quad	0x3fde7ef0f35c1e2e              # double 0.47649787679299294
	.quad	0x3fd1329f0e20d938              # double 0.26871467952459538
	.quad	0x3fdb004f3b6825a0              # double 0.42189389039466541
	.quad	0x3fb42b509caf0c90              # double 0.078785932782056145
	.quad	0x3fe9146c8b56a818              # double 0.78374316420127155
	.quad	0x3fe0e79e96420049              # double 0.52827386233548979
	.quad	0x3fe91607fbb5764c              # double 0.7839393535793504
	.quad	0x3fe6c9bd3e3fa391              # double 0.71212637098243381
	.quad	0x3fb59e2e7f9e2920              # double 0.08444491019887268
	.quad	0x3fd1f268d133719e              # double 0.28042049817829617
	.quad	0x3feb34681aaf9f2d              # double 0.85014729702104364
	.quad	0x3fe97eccb070385d              # double 0.7967284627973289
	.quad	0x3fdb1f34a5d0a07a              # double 0.42377964203706819
	.quad	0x3fe493ae265c0c7a              # double 0.64302737705328572
	.quad	0x3fb864ffb98e5268              # double 0.095291121293777814
	.quad	0x3fe18ff34c513f4d              # double 0.54882206826912638
	.quad	0x3fd20990c310dd94              # double 0.28183383035089915
	.quad	0x3feb798658728ac2              # double 0.85858456873787525
	.quad	0x3fe41134bf3c28c6              # double 0.62710034704766637
	.quad	0x3fe14c3f46ad214c              # double 0.54055751613581426
	.quad	0x3fbe5fc8316799c8              # double 0.11864901739281841
	.quad	0x3fcbfe39bc6a9028              # double 0.21869584751141358
	.quad	0x3fe3309679511477              # double 0.59968112654372774
	.quad	0x3fe8013dcf289ab6              # double 0.75015154324213174
	.quad	0x3f8ff31a1bf614c0              # double 0.015600398996648557
	.quad	0x3febf70a9f594748              # double 0.87390643236924692
	.quad	0x3febbb8fef36a2e6              # double 0.86664578172084528
	.quad	0x3fe8ff0e2131674a              # double 0.78113466723446234
	.quad	0x3fcf8f99417ea370              # double 0.2465697831915139
	.quad	0x3fefdc62b806fbcf              # double 0.99565254156902394
	.quad	0x3fe5fe049df0538d              # double 0.68725806090752573
	.quad	0x3f8bf7dec72fac00              # double 0.01365636868827913
	.quad	0x3fce627724ff78bc              # double 0.23737992579021305
	.quad	0x3fe4ed7f9b8bfda4              # double 0.65399151211015694
	.quad	0x3fdae2b59d15cd34              # double 0.42008724537227526
	.quad	0x3fc0f94ab130c79c              # double 0.13260778095132941
	.quad	0x3fed813259bddf49              # double 0.92202107932733057
	.quad	0x3fdc9f75bb84c6f8              # double 0.44723265945786705
	.quad	0x3fe82d5aae68d478              # double 0.75553640426973256
	.quad	0x3fc46ca7a7e2d648              # double 0.15956588456690413
	.quad	0x3fd92eb7ba742bd6              # double 0.39347642143610295
	.quad	0x3fe8a13085083ad7              # double 0.76967645628777859
	.quad	0x3fe549d0f7188042              # double 0.6652607751930264
	.quad	0x3fdd90a676255504              # double 0.46195375001600802
	.quad	0x3fde6f6b398414cc              # double 0.47555046669760936
	.quad	0x3fe0bf22285611da              # double 0.5233317172829246
	.quad	0x3fdf654bd7be74d8              # double 0.49055763310191258
	.quad	0x3fca3c63a2acfd68              # double 0.20496793215896081
	.quad	0x3fdf69933072560a              # double 0.49081878405681378
	.quad	0x3fde57bf3a345cda              # double 0.47410565074956212
	.quad	0x3fd25e7241f47be8              # double 0.28701454583091257
	.quad	0x3febf7d83f3a09d3              # double 0.87400448178260104
	.quad	0x3fdab5bb9e6b50aa              # double 0.41734209509491882
	.quad	0x3fe3161e5efbed7d              # double 0.59645002891140531
	.quad	0x3fe544e5bc15b0ee              # double 0.66466032729434033
	.quad	0x3fe817c55e7d9756              # double 0.75290173011010597
	.quad	0x3fda25550ba25008              # double 0.40852857719551183
	.quad	0x3fc372c6d86295ac              # double 0.15194020810774356
	.quad	0x3faa720bc279d8d0              # double 0.051651351442090765
	.quad	0x3fe537fe6f001159              # double 0.66308519057978821
	.quad	0x3fd1a12ca9b79594              # double 0.27546230863512133
	.quad	0x3fd647fb912d1b42              # double 0.34814347436297421
	.quad	0x3febd54a52284cd4              # double 0.86978641554233115
	.quad	0x3fc210b1f3980fa8              # double 0.14113449472654094
	.quad	0x3fe7d5b9b7e6fae4              # double 0.74483953398143088
	.quad	0x3fc74aa382a7c034              # double 0.18196529273655104
	.quad	0x3fe530d72d32e48d              # double 0.66221197917833907
	.quad	0x3fdea0f139f4b33c              # double 0.47857313785316413
	.quad	0x3fcca781ac3e19b8              # double 0.22386189375192855
	.quad	0x3fea56902e7baf10              # double 0.82306679800737648
	.quad	0x3fd19b94b839bd1a              # double 0.27512090674186285
	.quad	0x3fd6bb8fe1e3bd90              # double 0.35519787845165585
	.quad	0x3fd20d61b3fb3c22              # double 0.28206675125415093
	.quad	0x3fee29792a05525d              # double 0.94256265837845954
	.quad	0x3fe3b1022acf77e6              # double 0.61535747872744362
	.quad	0x3fadb14979ee80d0              # double 0.057993217596278179
	.quad	0x3fda7828dd376732              # double 0.41358396151700838
	.quad	0x3fed9470042c6fcb              # double 0.92436981978561883
	.quad	0x3fdcf889cafcf6d6              # double 0.4526695711427754
	.quad	0x3fdb05b62c657d72              # double 0.42222360931005831
	.quad	0x3f7c86365b1e5d00              # double 0.0069639323500247929
	.quad	0x3fe35c3bda901216              # double 0.60500900924722845
	.quad	0x3fe8082a2c9a4882              # double 0.75099667273958937
	.quad	0x3fa2504f3027ddb0              # double 0.035768961552033018
	.quad	0x3fd37277bfa32230              # double 0.30386155809950122
	.quad	0x3fecb3b0d6d05e44              # double 0.89693490939948405
	.quad	0x3fd6be15d2c6c9b8              # double 0.3553518827785882
	.quad	0x3fb3cffa83441d70              # double 0.077392251059895889
	.quad	0x3fe5b91764b938ab              # double 0.67884416267931635
	.quad	0x3fddeac3d737523e              # double 0.46745391862103591
	.quad	0x3fe37e9210992def              # double 0.60920050851694707
	.quad	0x3fe0666200eba747              # double 0.51249790363110825
	.quad	0x3fd9bc44c431753e              # double 0.4021160045575306
	.quad	0x3feeb9de2035e971              # double 0.96018892565852642
	.quad	0x3fd1e0c291d973ce              # double 0.27934326403720611
	.quad	0x3fe1f98d9778ea06              # double 0.56171302399099043
	.quad	0x3fe57dee46459713              # double 0.67162240719764765
	.quad	0x3fd17674d31b1bb6              # double 0.27285500160035825
	.quad	0x3fb8c7039c55f100              # double 0.096786714237115489
	.quad	0x3fe5efd870fbac6f              # double 0.68552801196109481
	.quad	0x3fd13a513bfb1514              # double 0.26918440682887135
	.quad	0x3fbe1489e5388d30              # double 0.11750089498723493
	.quad	0x3fe2d9a7ae778960              # double 0.58906921458791928
	.quad	0x3fdcd49ad2450b20              # double 0.45047636541510094
	.quad	0x3fe74105ff01c27a              # double 0.72668742948560738
	.quad	0x3fe842a5b69c5aa5              # double 0.75813565889514634
	.quad	0x3fe65b7a24c8293d              # double 0.69866664108238974
	.quad	0x3fbd14764a3f1690              # double 0.11359347641617945
	.quad	0x3fd75016f56abe2a              # double 0.36426328627109916
	.quad	0x3feca8e46246e5e1              # double 0.89561671442714552
	.quad	0x3fb653fcd6989640              # double 0.08721904982720563
	.quad	0x3fea41e91c7374af              # double 0.82054572636447698
	.quad	0x3fd53a7c5adaed2a              # double 0.33169468758178999
	.quad	0x3fd0a11f96ef8af6              # double 0.25983419170204003
	.quad	0x3fd21471a0a6d97a              # double 0.28249779404304542
	.quad	0x3fd8d50ac2e9330a              # double 0.38800305399199486
	.quad	0x3fef52ae942c6268              # double 0.97884301128494843
	.quad	0x3fe851cd0669f783              # double 0.75998545887681279
	.quad	0x3feb8d7cafc21134              # double 0.86102136924504302
	.quad	0x3feb52c47edece8b              # double 0.85385346202242951
	.quad	0x3feb24eb56c33480              # double 0.84825674958996444
	.quad	0x3fefa86f03993ec2              # double 0.98931074812750119
	.quad	0x3fea2f9f0b5ae0a0              # double 0.81831314294597135
	.quad	0x3fdcc735e91775fa              # double 0.44965884936195233
	.quad	0x3fba4d8f755f9460              # double 0.10274597755012982
	.quad	0x3fbb5276b2b50908              # double 0.10672704565971369
	.quad	0x3fed0f0bfa2847f6              # double 0.9080867658506111
	.quad	0x3fdb35bfbe916996              # double 0.42515557871015497
	.quad	0x3feacd212ce182f4              # double 0.83754023328591964
	.quad	0x3fd9eea2c0e173fa              # double 0.40519017063144214
	.quad	0x3fda32137002b6e2              # double 0.40930639208350617
	.quad	0x3fce47bd93107038              # double 0.23656434708471052
	.quad	0x3fc6405d9a5e4bec              # double 0.17383928334729093
	.quad	0x3fe74006c2720a33              # double 0.72656572320585722
	.quad	0x3f7b9edee9b39580              # double 0.0067433078322428619
	.quad	0x3fe620f5cc2db6c7              # double 0.69152345541598315
	.quad	0x3fbe8f8b0952d340              # double 0.11937779405236615
	.quad	0x3fdaf39d37184e10              # double 0.42111902599683138
	.quad	0x3fdc102665db1bfa              # double 0.43848571726670083
	.quad	0x3fd7bdf452d15244              # double 0.37096889579450854
	.quad	0x3fe206d399af8c0b              # double 0.56333332077736153
	.quad	0x3fc196ca8aa555d8              # double 0.13741428155724011
	.quad	0x3fe8a3025dc18221              # double 0.76989858924577359
	.quad	0x3fedfa3c2b1c0ea4              # double 0.93679626865237652
	.quad	0x3fd92026f7126076              # double 0.3925874150095362
	.quad	0x3fe1d8bcdeadfc92              # double 0.55770724765888446
	.quad	0x3fc3c5a9d8dca848              # double 0.15446971024477052
	.quad	0x3fb17c7c7708c330              # double 0.068305758534518146
	.quad	0x3fe1e04d7c926fe6              # double 0.5586306984946503
	.quad	0x3fc7b21e81a289c8              # double 0.18512326555089786
	.quad	0x3fef9ab2928facdb              # double 0.98763397813072673
	.quad	0x3faaa0ec6a087600              # double 0.052008998816955199
	.quad	0x3fe4c2f130197ed1              # double 0.6487966479725974
	.quad	0x3fe8e83b2398828f              # double 0.77834851219457046
	.quad	0x3fd47ee0b33b41f8              # double 0.32024400237153783
	.quad	0x3fb4877e01ac3160              # double 0.080192447098118347
	.quad	0x3fe44faae169ca49              # double 0.63472503686927795
	.quad	0x3fe8616da748909c              # double 0.76189310715246305
	.quad	0x3fc3aec0322fa2f4              # double 0.15377047014705847
	.quad	0x3fd8efc88e4e8224              # double 0.38963521859298766
	.quad	0x3fda757d209314a0              # double 0.41342094594103607
	.quad	0x3fe4949d736825ca              # double 0.64314148464580367
	.quad	0x3fd54eebda1271f6              # double 0.33294197364901323
	.quad	0x3fe354b97bb54d0e              # double 0.60409235154875929
	.quad	0x3fe403823531ff03              # double 0.62542829885202911
	.quad	0x3fe48cea5f38778b              # double 0.64220160100715995
	.quad	0x3fe57f3fbf7e01e4              # double 0.67178332711051469
	.quad	0x3fe6fd0b53130741              # double 0.71838918900923698
	.quad	0x3fe5776443a5795f              # double 0.67082417690452789
	.quad	0x3fdf5c63c9fa2a90              # double 0.4900140259202681
	.quad	0x3fe93962bfe11047              # double 0.7882550952567805
	.quad	0x3fd31351bff1cb2c              # double 0.29805415863590912
	.quad	0x3fe08fdf75bd3338              # double 0.51756260867987347
	.quad	0x3fb5ff5d848b6d40              # double 0.085927815303354471
	.quad	0x3feadf46018f6858              # double 0.83975506119464693
	.quad	0x3fc313b0b3522cf0              # double 0.1490383983221828
	.quad	0x3fdb01f4d04b9c70              # double 0.42199440327971782
	.quad	0x3fa2241a481b59d0              # double 0.035431691457847969
	.quad	0x3fd1fee12dcd2c96              # double 0.28118161652373297
	.quad	0x3fdbb871a7d76f4c              # double 0.4331325663640555
	.quad	0x3fc04e4b81b1cc28              # double 0.12738937218418411
	.quad	0x3fc4576a0d9b6560              # double 0.15891767181782779
	.quad	0x3fd4cc9628d34cd2              # double 0.32498697268347343
	.quad	0x3fba799bbeca2fa8              # double 0.10341809661821222
	.quad	0x3fc7c8be6a36a074              # double 0.18581371484947662
	.quad	0x3fc526e44928683c              # double 0.16524938175354176
	.quad	0x3fe6312abde7aad3              # double 0.69350182619867906
	.quad	0x3fe15da531616e4f              # double 0.54268130917211888
	.quad	0x3fe1e590cddf2863              # double 0.55927314957922325
	.quad	0x3fe0b3b5d411cbd9              # double 0.52193728847339138
	.quad	0x3fc7ab735ea5e1fc              # double 0.18491975900157331
	.quad	0x3fb9a32fc27a7850              # double 0.1001462793160226
	.quad	0x3fe4ed365269e111              # double 0.65395656677631753
	.quad	0x3fe1ffc311e10c81              # double 0.56247094623576299
	.quad	0x3fb09dc240f23cb0              # double 0.064907208305373443
	.quad	0x3fdda761d5c3e86e              # double 0.46334119678034014
	.quad	0x3fe543eeaea19464              # double 0.664542523457055
	.quad	0x3fea4a788cc030d2              # double 0.82159068575267669
	.quad	0x3fe44fac6c3118af              # double 0.63472577220161053
	.quad	0x3fd103a4b64f2800              # double 0.2658473759044
	.quad	0x3fbf6f7faa64d010              # double 0.12279508504872205
	.quad	0x3fbbd63d94e476d8              # double 0.10873780140942857
	.quad	0x3feefec920d366fd              # double 0.96860176478659776
	.quad	0x3fbec41d7e128130              # double 0.12017998054443946
	.quad	0x3fe373f441543f30              # double 0.6079045558890126
	.quad	0x3fef8c14dee157c7              # double 0.98584979563997243
	.quad	0x3fe1305f10bdb835              # double 0.53715470571274315
	.quad	0x3fd1a7ecc47a4890              # double 0.27587432086250718
	.quad	0x3fc10abdb561b31c              # double 0.13314029079938272
	.quad	0x3fbdb5de321350f8              # double 0.11605633471055288
	.quad	0x3fb989e538ad24a0              # double 0.09976036676120481
	.quad	0x3fe61839af26963b              # double 0.69045719346167489
	.quad	0x3fd272be2bddc5f0              # double 0.28825334819620618
	.quad	0x3fe3248c678adc4e              # double 0.59821148131494239
	.quad	0x3fc50edc51008e2c              # double 0.16451600985702564
	.quad	0x3fade1a7fb1c7050              # double 0.058362244990548207
	.quad	0x3fe0a901dc233457              # double 0.52063076968773714
	.quad	0x3fc48493ad3bfecc              # double 0.16029592474659748
	.quad	0x3fda3af0dd22c054              # double 0.40984746547019779
	.quad	0x3fd5125da12baeaa              # double 0.32924595584220617
	.quad	0x3fd8483193e37842              # double 0.3794063514923246
	.quad	0x3fe85825155bfd89              # double 0.76075987025971969
	.quad	0x3fe63137b0401f9d              # double 0.69350799964830723
	.quad	0x3fe7336a1ecb3ee5              # double 0.72502618803443097
	.quad	0x3fe10bc13b490d99              # double 0.53268491343662838
	.quad	0x3f83f9c94be86300              # double 0.0097537733354768896
	.quad	0x3faa152513d8a810              # double 0.050942572281499676
	.quad	0x3fe9473a60fa7a6f              # double 0.78994482937907928
	.quad	0x3fd64297988f0a10              # double 0.34781446359934964
	.quad	0x3febaf84199fe044              # double 0.86517529492176281
	.quad	0x3fdaf534a51c6c84              # double 0.4212161648189936
	.quad	0x3f74cc399dd49980              # double 0.0050775766988294668
	.quad	0x3fe178325dd2bea9              # double 0.54592245411727902
	.quad	0x3fd06e0c507172d6              # double 0.25671680312897871
	.quad	0x3fe56f31e5527884              # double 0.66982359685404491
	.quad	0x3fcc06fc293073a4              # double 0.21896316538996274
	.quad	0x3fed2f8552e77f56              # double 0.91205087845080857
	.quad	0x3faae2f21849c310              # double 0.052512708153591103
	.quad	0x3fc163f0f39664a8              # double 0.13586246389312362
	.quad	0x3fc30fa55d4e2428              # double 0.14891497665328868
	.quad	0x3fe1b8c272813f9a              # double 0.55380365719064462
	.quad	0x3fa825c9ceefa380              # double 0.047163301954987524
	.quad	0x3fe33025f7a07ec2              # double 0.59962747921596127
	.quad	0x3fed1e01ff02464d              # double 0.90991306120322124
	.quad	0x3fe6a2c6931e085e              # double 0.70737007840967769
	.quad	0x3fe7adb8ee44ff6d              # double 0.73995634591117965
	.quad	0x3fd98eac9a956216              # double 0.39933314415023469
	.quad	0x3fbdba651af0e330              # double 0.11612541110742991
	.quad	0x3fde723ea65dc554              # double 0.47572294470508791
	.quad	0x3fdbbda9627d3c14              # double 0.43345102899633159
	.quad	0x3fde7c63863d7d88              # double 0.47634208783525667
	.quad	0x3fdbbc1f91be5b3e              # double 0.43335713608523807
	.quad	0x3fa3f99d70ee4880              # double 0.039013786349770818
	.quad	0x3fd62c4757833676              # double 0.34645255609652936
	.quad	0x3fd84a691d4b5940              # double 0.37954166279577706
	.quad	0x3fd34cba78e13d74              # double 0.30155813030884038
	.quad	0x3fea354e859f3176              # double 0.81900716875092772
	.quad	0x3fe477dc7da04aa0              # double 0.63963150535922253
	.quad	0x3fead4f2fd610d8a              # double 0.8384947727976606
	.quad	0x3fd0c0ff22b33194              # double 0.26177957905454119
	.quad	0x3fe36ff034b8ce38              # double 0.6074143438076538
	.quad	0x3fea5abfaad8b42d              # double 0.82357772224861991
	.quad	0x3fe1ac28c2506d61              # double 0.55226552917467242
	.quad	0x3fe92d981f83543a              # double 0.78681570200809081
	.quad	0x3fe1618733cf2f69              # double 0.54315528983123074
	.quad	0x3fd82c7f52ef865c              # double 0.37771590327438331
	.quad	0x3fc02f6fdbfc597c              # double 0.12644766084185821
	.quad	0x3fe42440ac586e27              # double 0.62942536984650566
	.quad	0x3fd7ff9f40aa7fde              # double 0.37497693362274542
	.quad	0x3faae939dd178ec0              # double 0.052560623396656236
	.quad	0x3fcdfc8783102d8c              # double 0.23426908397264545
	.quad	0x3fd54babdde9e950              # double 0.33274361296902999
	.quad	0x3fced61427ba1ba4              # double 0.24090816440385965
	.quad	0x3fe4e0e6771490f0              # double 0.652453644350798
	.quad	0x3f923b02da725b00              # double 0.017803234656265765
	.quad	0x3fe80c456b0076d3              # double 0.75149794482032417
	.quad	0x3fefd3120ee0a018              # double 0.99451544671774438
	.quad	0x3fe131ee8704bb11              # double 0.53734518404766807
	.quad	0x3fccd43c88839d08              # double 0.22522694268921151
	.quad	0x3fefbdbfc743745a              # double 0.99191273611689756
	.quad	0x3fddf531a9861c90              # double 0.46809045367303614
	.quad	0x3fe640bb2d3d5dfb              # double 0.6954017528141202
	.quad	0x3fe362136cd671ac              # double 0.60572215325696765
	.quad	0x3fdd3ce656f5ba66              # double 0.45684202663588847
	.quad	0x3fe70aa8e256b3d9              # double 0.72005123335622578
	.quad	0x3fe6bd6093d869be              # double 0.71061734081313666
	.quad	0x3fd684642e5ccc56              # double 0.35183052566134643
	.quad	0x3fed8d57404ea76e              # double 0.92350351867683655
	.quad	0x3f69a7c57068ae00              # double 0.0031317573768967488
	.quad	0x3fe142883cea03c2              # double 0.53937160393990546
	.quad	0x3fd6932b8408688c              # double 0.35273254293282075
	.quad	0x3fdec34ddbb05ffa              # double 0.48067041830063284
	.quad	0x3fb62796529ee990              # double 0.086541552706796531
	.quad	0x3fed978997bc6111              # double 0.92474822650823019
	.quad	0x3fe29c71278685e2              # double 0.58159692497082127
	.quad	0x3fba1c288b2b4dc0              # double 0.10199216268238498
	.quad	0x3fe5a3da1f02305d              # double 0.67625146919591439
	.quad	0x3fe591a080018862              # double 0.67402672768754379
	.quad	0x3fe58739748b1dfc              # double 0.6727568889845652
	.quad	0x3fc2dec7ebdff38c              # double 0.14742373483013826
	.quad	0x3fc7c4744671fa28              # double 0.18568280639370127
	.quad	0x3fcbebd7b1a538d8              # double 0.21813484357921342
	.quad	0x3fef5554d99ca890              # double 0.97916643621762667
	.quad	0x3fc85a548be01364              # double 0.19025666074608261
	.quad	0x3fc9b9a47a181c74              # double 0.2009778591311463
	.quad	0x3fe19cf8ab4e0ead              # double 0.5504115434454967
	.quad	0x3fea620bd6e70372              # double 0.8244685361206463
	.quad	0x3facdfdff6e56a70              # double 0.05639552964085659
	.quad	0x3fd20ebf7c7b42b2              # double 0.28215014606852684
	.quad	0x3fd19c0a60a00182              # double 0.27514895854985622
	.quad	0x3fd6fbf58fdc9592              # double 0.35912837075223891
	.quad	0x3fd62bb9109ee8e0              # double 0.34641863463515499
	.quad	0x3feef4ed5bc0c8e3              # double 0.96739833755989612
	.quad	0x3fed4c91fe9e35aa              # double 0.91559695940093389
	.quad	0x3fefcb8e90d9ff61              # double 0.99359825412100744
	.quad	0x3feacdc5b1cfd0aa              # double 0.83761868218291124
	.quad	0x3fcf64fcf98a5fbc              # double 0.24526941475482811
	.quad	0x3f9c4b0f9c1f8240              # double 0.027630084899899154
	.quad	0x3fcae18846a67580              # double 0.21000770044058115
	.quad	0x3fe9543cd25451ef              # double 0.79153290824848266
	.quad	0x3fec728aa7529649              # double 0.88898213081547184
	.quad	0x3fe1360242eadc7f              # double 0.53784287519273721
	.quad	0x3fefa4304d523e78              # double 0.98879256345567423
	.quad	0x3fd5166a9ad74eae              # double 0.32949319001384481
	.quad	0x3fda80d1b5b62a00              # double 0.41411249871512723
	.quad	0x3febcf1249eb9b13              # double 0.86902727544370106
	.quad	0x3fca7f1811777308              # double 0.20700360157834319
	.quad	0x3fc398f8546513e8              # double 0.1531057750782161
	.quad	0x3fe55646832a14e6              # double 0.66678166978877296
	.quad	0x3fe4ec4610a54a5e              # double 0.65384200335604326
	.quad	0x3fc046012fa2ff38              # double 0.12713637186060978
	.quad	0x3fdc5868134ecccc              # double 0.44289590726402817
	.quad	0x3fdb2359d4ae43e2              # double 0.42403264779664884
	.quad	0x3fc6b003adbe6ee4              # double 0.17724653228366727
	.quad	0x3fd87a5bc631405a              # double 0.38246816973424347
	.quad	0x3fe22bcf8d2f4f7f              # double 0.56784799170644351
	.quad	0x3fee1ce1e3a058d2              # double 0.94102568109772222
	.quad	0x3fec3c664f8fb8ce              # double 0.88237300433481791
	.quad	0x3fe2c07fc2f78c38              # double 0.58599842147339753
	.quad	0x3fecc9e730d549df              # double 0.8996463731548906
	.quad	0x3fd019e29b161ba8              # double 0.25157990594055457
	.quad	0x3feab3b38514fba9              # double 0.83443618767329497
	.quad	0x3fccc403fb479070              # double 0.2247319199515263
	.quad	0x3f8bb27faf1d1a40              # double 0.01352405312685534
	.quad	0x3fea9b892d2e4aa9              # double 0.83148630928402156
	.quad	0x3fee56ef66eb2f75              # double 0.94811220265681462
	.quad	0x3fd8605035053010              # double 0.38087849786529748
	.quad	0x3fefdde6b5a5a879              # double 0.99583754995298001
	.quad	0x3fea9754112d3070              # double 0.83097270350255137
	.quad	0x3fc27c639a52123c              # double 0.14442105326829047
	.quad	0x3fe51fcc94c052b6              # double 0.66013173153859017
	.quad	0x3feb56a069fd0b16              # double 0.85432453823918553
	.quad	0x3fb3a179f47e7d38              # double 0.076682684126798573
	.quad	0x3fb2097d03193b08              # double 0.070457280403598443
	.quad	0x3fb1996ecae90e38              # double 0.068747448481240592
	.quad	0x3fed647741f45b38              # double 0.91851389772168712
	.quad	0x3fd0a7e44580e54c              # double 0.2602472952599626
	.quad	0x3fd5e809a62485e2              # double 0.34228745674962913
	.quad	0x3fe00f5202acbecd              # double 0.50187016031665055
	.quad	0x3fef4c3ad7ed57c2              # double 0.97805540250077905
	.quad	0x3fe1010583f27410              # double 0.531374700268886
	.quad	0x3fed2a1d6a231629              # double 0.91139097909826206
	.quad	0x3fe499bf0f6347ce              # double 0.64376786237175465
	.quad	0x3fd5cdffaed8d766              # double 0.3406981666079133
	.quad	0x3fcf63d8c543bfbc              # double 0.24523458129942621
	.quad	0x3fe7e27911d4883e              # double 0.74639562113248537
	.quad	0x3fef1c7bac9844e8              # double 0.97222694120332864
	.quad	0x3fe7762218fabb05              # double 0.73317055586616731
	.quad	0x3fe0b80526c2df05              # double 0.52246339388418106
	.quad	0x3fc4ba35d061ecac              # double 0.16193268465926758
	.quad	0x3fe93e744dec06a6              # double 0.78887381762634301
	.quad	0x3fba4d920ca8eb50              # double 0.10274613198354854
	.quad	0x3f829c9036673c00              # double 0.0090876833536679413
	.quad	0x3fe83da2e82edb6c              # double 0.75752396915673392
	.quad	0x3fc0aeddfff258bc              # double 0.13033652303119492
	.quad	0x3fdaac54bc6235b6              # double 0.41676824948157376
	.quad	0x3feffd55a36c0138              # double 0.99967462461794465
	.quad	0x3fd892e2a42f2614              # double 0.38396516831980532
	.quad	0x3fb19a67ffbbbe48              # double 0.068762302336602521
	.quad	0x3fe3071cf2dfc337              # double 0.59461829601614269
	.quad	0x3fc6ab9f23a31288              # double 0.17711247673118558
	.quad	0x3fd929830a824938              # double 0.3931586840273158
	.quad	0x3fc9e96faa34e1e4              # double 0.20243640719287648
	.quad	0x3fc424a7401aada0              # double 0.15736857061470477
	.quad	0x3fed47ccd501acc1              # double 0.91501466372337614
	.quad	0x3fefac1e8bf5802d              # double 0.98976065955867442
	.quad	0x3fe9644022747c29              # double 0.7934876130056
	.quad	0x3fea30be18cb7886              # double 0.81845002024398705
	.quad	0x3fba8daf24216bd8              # double 0.10372442848294783
	.quad	0x3fd70959b4da2984              # double 0.35994570409152282
	.quad	0x3fe481014e827e9b              # double 0.64074769338545268
	.quad	0x3fd4802bf55e7fea              # double 0.32032298051671992
	.quad	0x3fb1d9c96e3de730              # double 0.069729413427833675
	.quad	0x3febb08d42d7d4ff              # double 0.86530173354427109
	.quad	0x3fe98bbb8e12e25d              # double 0.79830720661909604
	.quad	0x3fe4f43fda378cf5              # double 0.65481560345179324
	.quad	0x3fba72e9fe2d6268              # double 0.10331594901561802
	.quad	0x3fdcf2591b600956              # double 0.45229175256112819
	.quad	0x3fcea9eacc33d0f0              # double 0.23956046076603554
	.quad	0x3fe7755347b038d3              # double 0.73307193757662004
	.quad	0x3fe2d4002fe7573b              # double 0.58837899547754746
	.quad	0x3fb9810bbbe84de0              # double 0.09962533319076483
	.quad	0x3fe11ed3cc96984c              # double 0.53501310309071348
	.quad	0x3fd22196cd6090d4              # double 0.28330011421554713
	.quad	0x3fdc1f20918ed55e              # double 0.43939985479967969
	.quad	0x3fe59d6b7fef6ef7              # double 0.67546629893646937
	.quad	0x3fe677a768ef1fef              # double 0.70210619444787692
	.quad	0x3fdd99f06d194666              # double 0.4625207009713449
	.quad	0x3fe152a8c3fb5777              # double 0.54134023931213349
	.quad	0x3febff6014172054              # double 0.87492374347585633
	.quad	0x3fed8af90e010a6e              # double 0.92321446166199705
	.quad	0x3fe830f3502abf21              # double 0.75597539575207773
	.quad	0x3fea4a5631921783              # double 0.82157430345317584
	.quad	0x3fc17d55b6ac160c              # double 0.13663741511861394
	.quad	0x3fdded8e6facb624              # double 0.46762429147460893
	.quad	0x3fd62536cd8108ce              # double 0.34602136677507367
	.quad	0x3fa2b2c22d6b5be0              # double 0.036520069164616364
	.quad	0x3fefe1cc41b81c40              # double 0.99631321750428725
	.quad	0x3fe5be482a0aed2b              # double 0.67947776996098719
	.quad	0x3fefcd7888b6091c              # double 0.99383188916570786
	.quad	0x3feba3f8c477060c              # double 0.86376608249719444
	.quad	0x3fd003c173250ad2              # double 0.25022922749137166
	.quad	0x3fe4442a75ffc292              # double 0.6333210282010262
	.quad	0x3fd7c16b45a5f95c              # double 0.37118036080928163
	.quad	0x3fe0147c0ae72f59              # double 0.50250055436616059
	.quad	0x3fd1c5fd6df0423e              # double 0.2777093480699796
	.quad	0x3fe242cb9eefcfdd              # double 0.57065373461091051
	.quad	0x3fc702c165150de8              # double 0.17977158961922091
	.quad	0x3fe2456fb231170f              # double 0.5709761123950744
	.quad	0x3fac482469b5bfa0              # double 0.055237901596114414
	.quad	0x3fc01e2a7c591a94              # double 0.12592059203798966
	.quad	0x3fe80392ba77fec7              # double 0.75043617648767558
	.quad	0x3fd8d1b676fe21a4              # double 0.38779985065823497
	.quad	0x3fb59cd259c2a7a8              # double 0.084424158968117724
	.quad	0x3fdcd2091986f688              # double 0.45031955235376886
	.quad	0x3fe632f86f9a2bb4              # double 0.69372197911558553
	.quad	0x3fd6cd193b17f29c              # double 0.35626822253088064
	.quad	0x3feabe2a8eb94cc6              # double 0.83571365237948991
	.quad	0x3f645dfc85417b00              # double 0.0024862224618539264
	.quad	0x3fd7ac1590f765c4              # double 0.36987818867563882
	.quad	0x3fd22e788c5b6c5c              # double 0.28408635813474858
	.quad	0x3fe4a1df536ce638              # double 0.64475981039067332
	.quad	0x3fde36e5a2c1b222              # double 0.47210064787103267
	.quad	0x3fe925cabff395b1              # double 0.78586328020599272
	.quad	0x3fe198181df15a29              # double 0.54981618736457449
	.quad	0x3fe5b00ea80c4baf              # double 0.67774136373406246
	.quad	0x3fe25c3d7932108e              # double 0.57375978156098184
	.quad	0x3fecc4aaab0ed967              # double 0.8990071621872574
	.quad	0x3fe9477394b8bda2              # double 0.78997210547634134
	.quad	0x3f9a4bf1898cf0c0              # double 0.025680326481265281
	.quad	0x3fe798a23cab58bd              # double 0.73738204812504871
	.quad	0x3feb8e0741222a97              # double 0.86108744355563516
	.quad	0x3fe4a2ce01cd214c              # double 0.64487362243475266
	.quad	0x3fe6bf6ea19534ba              # double 0.71086818274638763
	.quad	0x3fe8f865c4d58d14              # double 0.78032196468521641
	.quad	0x3fe7ac04b0b91abc              # double 0.73974833027099107
	.quad	0x3fdaa03b93738616              # double 0.4160298290208585
	.quad	0x3fecec32dd847031              # double 0.90383284821610321
	.quad	0x3fb36163a66bcf58              # double 0.075704792146834676
	.quad	0x3fe123155b381649              # double 0.53553264442661785
	.quad	0x3fe72edf2d4fbb12              # double 0.72447165346042852
	.quad	0x3fbf839b38934730              # double 0.12310190325959236
	.quad	0x3fd21ca69beebb34              # double 0.2829987070826292
	.quad	0x3feab867ce326d24              # double 0.8350104357990955
	.quad	0x3fd5ba87d88c292c              # double 0.33950992724625695
	.quad	0x3fe71d4e26ff26d2              # double 0.72232730499782805
	.quad	0x3fea6e7b566109e9              # double 0.82598654623899137
	.quad	0x3fcdcafc1bed0bf0              # double 0.23275710452625686
	.quad	0x3fe164f9057e2ad7              # double 0.54357577393360657
	.quad	0x3fc392c80f17b31c              # double 0.15291691529218887
	.quad	0x3f9667be64012cc0              # double 0.021880125860019417
	.quad	0x3feea2365f8e2d9b              # double 0.95730131781731431
	.quad	0x3fe458da3d52b184              # double 0.63584625222351621
	.quad	0x3f903183a8568fa0              # double 0.015813882016700753
	.quad	0x3fee3f7f3db3bec5              # double 0.94525110293576431
	.quad	0x3fe26a3ab426f289              # double 0.5754674452396823
	.quad	0x3fdf7b2eca69ef64              # double 0.49189347998593846
	.quad	0x3fefbc7408cf4726              # double 0.99175454826965814
	.quad	0x3fcbcefc646e6b40              # double 0.21725420860169642
	.quad	0x3fe64477e3db0198              # double 0.69585794928575506
	.quad	0x3fc686272e4fb07c              # double 0.17596902619641586
	.quad	0x3fe3a7e3c22b7766              # double 0.61424434589183075
	.quad	0x3fb43953d60653f0              # double 0.078999747993591773
	.quad	0x3fd530e8ab2ea0e2              # double 0.33111016003614513
	.quad	0x3fddebee13863e48              # double 0.46752502352407932
	.quad	0x3fe44d08502e4ffe              # double 0.63440337810834513
	.quad	0x3fe9a502beaf49d6              # double 0.80139291041478589
	.quad	0x3fd327aebe6dc280              # double 0.29929703327710655
	.quad	0x3fc13fb5947e622c              # double 0.13475675345104443
	.quad	0x3fe8fc365165973b              # double 0.78078761956997
	.quad	0x3fe3d9b482cc3075              # double 0.62032533213051855
	.quad	0x3fc29ece2e5e2790              # double 0.14547135604908279
	.quad	0x3fc5375c5e2474e4              # double 0.16575197788998886
	.quad	0x3fcb1e98c9908098              # double 0.21187124101652866
	.quad	0x3fdf13fbed13da54              # double 0.4855947318277789
	.quad	0x3fad1cba89703670              # double 0.056859807278766605
	.quad	0x3fbb15636f68d340              # double 0.10579511136968467
	.quad	0x3fe2b9e01067560e              # double 0.58518984989012934
	.quad	0x3fdc45580850c000              # double 0.44173241436055832
	.quad	0x3fde66274da5a022              # double 0.47498495657646533
	.quad	0x3fb12e47254bafb8              # double 0.067112394910224249
	.quad	0x3fdb617140829bb4              # double 0.42782241153548317
	.quad	0x3feb465fdfb52ac9              # double 0.85234063809306193
	.quad	0x3fbe04c296232cf0              # double 0.11726013341392494
	.quad	0x3fe738d48a80c34d              # double 0.72568728495944301
	.quad	0x3fefd55276f9a7b4              # double 0.99479029881808012
	.quad	0x3fbe9d307f3b32e8              # double 0.11958602052909451
	.quad	0x3fee0fa76b25dfff              # double 0.93941088607152767
	.quad	0x3fdb64d779067f56              # double 0.42802988833317579
	.quad	0x3fcb086d30cf1e4c              # double 0.2111946571660489
	.quad	0x3fe6fde179b50ddd              # double 0.71849130412050111
	.quad	0x3fd6b9e08c7f8d40              # double 0.35509504051715979
	.quad	0x3fe4c9e8bf073f14              # double 0.64964711485115112
	.quad	0x3feb8c1352e7c827              # double 0.86084905807934298
	.quad	0x3fe9c1face942f24              # double 0.80492916438513306
	.quad	0x3fd61a053b31fc5e              # double 0.34533816128527473
	.quad	0x3fe6d8757395ce45              # double 0.71392319274168214
	.quad	0x3fee1d2972f0df90              # double 0.9410598034801172
	.quad	0x3fc2ce4615029b8c              # double 0.14691997552764879
	.quad	0x3fecb194600a1fda              # double 0.89667719609951324
	.quad	0x3fd4c3db91f2edfe              # double 0.32445420506311951
	.quad	0x3fe4cd47233e9c09              # double 0.6500583351488568
	.quad	0x3fdf2deee105f5d4              # double 0.48717853522233878
	.quad	0x3fd020c0c4fb0d80              # double 0.25199908481973665
	.quad	0x3fc6cf7c64f87338              # double 0.17820696764183608
	.quad	0x3fe265e34ac7fe25              # double 0.57493748288829194
	.quad	0x3fedba3521bf8f87              # double 0.92898041335546189
	.quad	0x3fe44809df8edadc              # double 0.63379377044369845
	.quad	0x3fd812ba88e62e4a              # double 0.37614310616547597
	.quad	0x3fe9cb98414b4f3b              # double 0.80610287430543026
	.quad	0x3fe687fc45bd0e59              # double 0.70409978504944626
	.quad	0x3fdf72bfd67008ba              # double 0.491378745471717
	.quad	0x3fdef6debdbc3578              # double 0.483817754066727
	.quad	0x3fdc1524a21a8400              # double 0.43879047232081803
	.quad	0x3feb369de045823b              # double 0.85041707804709377
	.quad	0x3feae2591cf5bb05              # double 0.84013038307406929
	.quad	0x3fe18f8180314a77              # double 0.54876780545812565
	.quad	0x3fbbadbc3755fee8              # double 0.10811973906492833
	.quad	0x3fa44a6d8ce72b40              # double 0.03963034005172128
	.quad	0x3fe514c33eb07168              # double 0.6587845062636406
	.quad	0x3fe7094daf752495              # double 0.71988567608890952
	.quad	0x3fe2c901feaad828              # double 0.58703708400458243
	.quad	0x3febdf87d2cb3ca5              # double 0.87103644533808178
	.quad	0x3fd89f6921d76d58              # double 0.38472965531191994
	.quad	0x3fb82f1c26e0e0a0              # double 0.094468841068080511
	.quad	0x3fbcad38d5ec3620              # double 0.11201815817568006
	.quad	0x3fd1a03c7f2907aa              # double 0.27540504854197911
	.quad	0x3fd5092d247c3914              # double 0.32868507922184276
	.quad	0x3fd8cb275a4db50a              # double 0.38739951914506376
	.quad	0x3fea7b2c5c5dbc8d              # double 0.82753580131783766
	.quad	0x3fc3d0ae0b522a14              # double 0.15480590393811211
	.quad	0x3fdf30d5d7e9f822              # double 0.48735567174287742
	.quad	0x3fd9e86937c1628a              # double 0.4048102421270775
	.quad	0x3fe467865b160310              # double 0.63763730802756591
	.quad	0x3fe536ad7e3725bd              # double 0.6629245247979082
	.quad	0x3fe47a7c31668f8e              # double 0.63995179794845725
	.quad	0x3f8fc56419a798c0              # double 0.015513212235373053
	.quad	0x3fee8ac1b5d70099              # double 0.95443807139965309
	.quad	0x3fe67b6f61da15a8              # double 0.70256775962541429
	.quad	0x3fd5f02869ea0c76              # double 0.34278307288349852
	.quad	0x3febd591fa32d465              # double 0.86982058398156126
	.quad	0x3fe6e9e58aaecdd0              # double 0.71605183683862528
	.quad	0x3fd4cf2ad7d00bc0              # double 0.32514449191529238
	.quad	0x3fd149926edd1478              # double 0.27011547876856623
	.quad	0x3fb76fb4849ea188              # double 0.09154823529991607
	.quad	0x3fd8cc39d6e7acec              # double 0.38746496187987023
	.quad	0x3fe0b4e5ec62903e              # double 0.52208229226062719
	.quad	0x3fc4a5be38c4dfd4              # double 0.16130807659078406
	.quad	0x3fd3715271249798              # double 0.30379162835230877
	.quad	0x3fed852746ead3bb              # double 0.92250408030542219
	.quad	0x3fd81ceac5446db6              # double 0.37676495804199861
	.quad	0x3fca7b31ad2ac088              # double 0.20688458400173126
	.quad	0x3fea50f9168e8fb5              # double 0.82238439946785624
	.quad	0x3fe0cee1fb852762              # double 0.52525424122834985
	.quad	0x3fda0a4104d7d0f4              # double 0.40687585328056675
	.quad	0x3fefd8b02b8eab27              # double 0.99520119197163559
	.quad	0x3fd76ced34971424              # double 0.36602335105664197
	.quad	0x3fe76e87fc233fec              # double 0.73224257703441031
	.quad	0x3fe269ba22f1bfeb              # double 0.57540613961282128
	.quad	0x3fef67ea4ea9cbb5              # double 0.98143496860426771
	.quad	0x3fddbc10fb2570ca              # double 0.4646036579704399
	.quad	0x3fe3ac7014088788              # double 0.61479953682668143
	.quad	0x3fef6201fc0827b4              # double 0.9807138369080719
	.quad	0x3fded8cd724c0294              # double 0.48198257600601235
	.quad	0x3fd55754715a098c              # double 0.33345519132139922
	.quad	0x3fed6843710d4726              # double 0.91897747116511108
	.quad	0x3fce783d4e139f00              # double 0.23804441749893357
	.quad	0x3fe57c7e63f3b777              # double 0.67144698640707545
	.quad	0x3f813b11cb4e7800              # double 0.008413447396204532
	.quad	0x3fe10280a051971d              # double 0.53155547439812134
	.quad	0x3fd1ce47c361e0ae              # double 0.2782153518705951
	.quad	0x3fd462db14c618d4              # double 0.31853367832844737
	.quad	0x3fe9ad0a8ccaeb32              # double 0.80237319468083101
	.quad	0x3fd14cd33cde9a84              # double 0.270314034884372
	.quad	0x3fe50d074ce6df33              # double 0.65784039516345272
	.quad	0x3fe22802c67e39c2              # double 0.56738413589646819
	.quad	0x3fdc46dcf7648220              # double 0.44182514342722534
	.quad	0x3fe9a98348721da6              # double 0.80194248342097718
	.quad	0x3fecbefd909ab50f              # double 0.89831426852257035
	.quad	0x3fef848a85b3394a              # double 0.98492933381366154
	.quad	0x3feb2c2b6b052812              # double 0.84914179708835236
	.quad	0x3fee8b1f200578eb              # double 0.95448261503386556
	.quad	0x3fa58c0a608517a0              # double 0.042084049493993136
	.quad	0x3fecd6a0b24a7338              # double 0.90119967291284464
	.quad	0x3fd030764fe8beaa              # double 0.25295789531353796
	.quad	0x3fef29853b11da92              # double 0.97381841218050824
	.quad	0x3febdc7fb8278fe6              # double 0.87066637008365144
	.quad	0x3fd3ac791fc6415a              # double 0.30740192511531961
	.quad	0x3fecae02ad2d551b              # double 0.89624151061676416
	.quad	0x3fd847b05e30e548              # double 0.37937554548587515
	.quad	0x3fd4f1109ab2cfde              # double 0.32721343142770631
	.quad	0x3fd6c5213aa5222a              # double 0.35578184821182168
	.quad	0x3fd8bbd3d74d726e              # double 0.38646408105504448
	.quad	0x3fddfe112f1e4076              # double 0.46863202668556114
	.quad	0x3fedcfc4c766cfd8              # double 0.93161238618494746
	.quad	0x3fa7ccf35e726b30              # double 0.046485524443787063
	.quad	0x3fe03d27e58d779a              # double 0.5074653132867184
	.quad	0x3fd520026812643e              # double 0.33007869876161411
	.quad	0x3fe242cd430e821f              # double 0.57065451714521831
	.quad	0x3fdd661c46f25870              # double 0.45935732773194271
	.quad	0x3fde6385098c2f3c              # double 0.47482419903166195
	.quad	0x3fe48754777eb682              # double 0.64151976908551966
	.quad	0x3fdc06d96267f526              # double 0.43791803941697294
	.quad	0x3fdceda783ff06f6              # double 0.45200527086500075
	.quad	0x3fa5ecf176bb2070              # double 0.042823358291173785
	.quad	0x3fe35c95ace1dc0f              # double 0.60505183950488284
	.quad	0x3fe46fa94b644d8d              # double 0.63863053059542241
	.quad	0x3fe5d25aed4c18ff              # double 0.68192812296982186
	.quad	0x3fe0a34ac9d36e1b              # double 0.51993312281723847
	.quad	0x3fc56b9c03a4fab8              # double 0.16734647920562451
	.quad	0x3fe87c83b1072211              # double 0.76519951415781595
	.quad	0x3fdce7f42057d1a8              # double 0.45165732534885672
	.quad	0x3fc14a6d2251d928              # double 0.13508381057517593
	.quad	0x3fe8fafecb0697f0              # double 0.78063907292812296
	.quad	0x3fe615063517a9c9              # double 0.69006643647781474
	.quad	0x3fe6478f2e41c069              # double 0.69623526606120578
	.quad	0x3fcd365d5756ddc0              # double 0.22822157635321894
	.quad	0x3fd558c38b974a0c              # double 0.33354271537714975
	.quad	0x3fcbf2e36f390838              # double 0.21834986620712171
	.quad	0x3fea2bf7db46e5c1              # double 0.81786721065071089
	.quad	0x3fe24f397fd6d7cc              # double 0.57217097252463978
	.quad	0x3feb93b4ca1e446e              # double 0.86178054310052032
	.quad	0x3fed77505cbb0880              # double 0.92081468688435564
	.quad	0x3fdcfa60fd6dc49c              # double 0.4527819132700388
	.quad	0x3fdeccc2f22ff812              # double 0.48124765063391906
	.quad	0x3fe6448c1da0baf3              # double 0.6958675936383244
	.quad	0x3fdec89259db052a              # double 0.48099192404704871
	.quad	0x3fe08863f8867741              # double 0.51664923229302684
	.quad	0x3fe163cf51d88594              # double 0.5434338186789085
	.quad	0x3fe1da09306ce146              # double 0.55786570985859707
	.quad	0x3fd99c998e2eeef2              # double 0.40018309483615078
	.quad	0x3fe04f673adbd331              # double 0.50969277854765072
	.quad	0x3fd1232ff3089c76              # double 0.26777266248468068
	.quad	0x3fe64d89bc5af48c              # double 0.69696509159224851
	.quad	0x3fec17a9f722aa19              # double 0.87788866299280521
	.quad	0x3f9543e7a7a36020              # double 0.020766849142859312
	.quad	0x3fe1fb0bdee249d6              # double 0.56189530879992833
	.quad	0x3fd5d00e4488725c              # double 0.34082371418643276
	.quad	0x3fd4d0751266d2ce              # double 0.32522322461163078
	.quad	0x3fd2c06bfcc8c608              # double 0.29299449621166263
	.quad	0x3fee4c4367fb9034              # double 0.94680948552241384
	.quad	0x3fe6bdef3f608994              # double 0.71068537119235708
	.quad	0x3fe5feb03b329e8e              # double 0.68733989297921183
	.quad	0x3fc1382f9943aaf8              # double 0.13452715858087294
	.quad	0x3f90e8315293a6a0              # double 0.016510744729123616
	.quad	0x3fe70c9ce27f13da              # double 0.72028965222909425
	.quad	0x3fbf8d7ff9a53fa8              # double 0.12325286717282202
	.quad	0x3fe8d6df2cfdff0f              # double 0.77622946536573234
	.quad	0x3fd930d4e0946bc2              # double 0.39360544139497844
	.quad	0x3fb494c39c1e6300              # double 0.080394960036198171
	.quad	0x3fe8a53e45fb588c              # double 0.7701712958176059
	.quad	0x3fe7da6356c71177              # double 0.74540869663955689
	.quad	0x3fe3624aa3eb1ddc              # double 0.60574848189656505
	.quad	0x3fe299522297a827              # double 0.58121592289285651
	.quad	0x3fc689a7a50b16dc              # double 0.1760758930087637
	.quad	0x3fe2db86d443d1b6              # double 0.58929768999092036
	.quad	0x3fe29b540dbc7b86              # double 0.58146097834456678
	.quad	0x3fde76ed8c75f098              # double 0.47600878445497008
	.quad	0x3fe9babdf0cac913              # double 0.80404564885819452
	.quad	0x3fe65c651a7404e7              # double 0.69877867857590281
	.quad	0x3fa72eea62e60760              # double 0.045279812405182751
	.quad	0x3fc854e31844a674              # double 0.19009054837197292
	.quad	0x3fcdbd3ffe11fd30              # double 0.2323379507615555
	.quad	0x3fe636c7986512a0              # double 0.69418697132694618
	.quad	0x3fe471171eb042fa              # double 0.63880496972896528
	.quad	0x3fef76a2d153eaa5              # double 0.98323193439803857
	.quad	0x3fe2c327475fb9f9              # double 0.58632244053097715
	.quad	0x3fee4782447901b3              # double 0.94622910855837572
	.quad	0x3fd2e6b786e0a320              # double 0.29533184215192598
	.quad	0x3fb61df0f0608048              # double 0.086394365964680309
	.quad	0x3fe69e3bc144c491              # double 0.70681560275819966
	.quad	0x3fd827121fcb91aa              # double 0.37738469223975335
	.quad	0x3fd4ac29ff6500cc              # double 0.32300805989144687
	.quad	0x3fcd07988e65a978              # double 0.22679430916771159
	.quad	0x3fcd581e51a27238              # double 0.22925166116773865
	.quad	0x3fc3eaa38e146fe8              # double 0.1555981105565245
	.quad	0x3fa24765679bb700              # double 0.035700959107868968
	.quad	0x3fe58c8ba5048067              # double 0.6734064314841931
	.quad	0x3fe6f263be1647ac              # double 0.71708857656834857
	.quad	0x3fd82d65ba474eb6              # double 0.37777083579315318
	.quad	0x3fe97854a48710f0              # double 0.79593879827782921
	.quad	0x3fc42b2d48ca0f90              # double 0.15756765417256391
	.quad	0x3fdf1414cc01597e              # double 0.48560066149129699
	.quad	0x3fe178127abf8e1e              # double 0.54590724920530298
	.quad	0x3fe66ed9bd1808fb              # double 0.70103156025314151
	.quad	0x3fef796a74dbd8d4              # double 0.98357127021770418
	.quad	0x3fe65154677150f0              # double 0.69742794231072303
	.quad	0x3fe9f598d5139cab              # double 0.81123010269665963
	.quad	0x3fdff0029586fd1e              # double 0.49902405359530799
	.quad	0x3fbaab94491c6e20              # double 0.10418059143960834
	.quad	0x3fcc1ecfe0355674              # double 0.21969030807183609
	.quad	0x3fd40c8355e45fe6              # double 0.31326373470210311
	.quad	0x3fefb98b8cd45180              # double 0.99139955049263051
	.quad	0x3fec035603c1dbae              # double 0.87540722593154441
	.quad	0x3fd8b1796f0cc5cc              # double 0.38583217472759368
	.quad	0x3fc47b348e99e664              # double 0.16000992739627684
	.quad	0x3fe11d73fb6e9ddc              # double 0.53484534366446779
	.quad	0x3fe3902d9c4bf7fa              # double 0.61134987379750716
	.quad	0x3fe633f4a5020794              # double 0.69384224155531848
	.quad	0x3fe97bdb29a44a6c              # double 0.79636915333896984
	.quad	0x3fe104fd97b45b5f              # double 0.53185920362271222
	.quad	0x3fd85d0ff049aad8              # double 0.38068006959535472
	.quad	0x3feb66117fa207eb              # double 0.85620951584155358
	.quad	0x3fee817009354188              # double 0.95330049322551335
	.quad	0x3fe75a57b559dd49              # double 0.72977815075038521
	.quad	0x3fd876f804fd83b0              # double 0.38226128089268752
	.quad	0x3fe12495154d6eeb              # double 0.53571561966552161
	.quad	0x3fee8e6614226f7f              # double 0.95488265926859117
	.quad	0x3fdc74a40f122f48              # double 0.4446191928079668
	.quad	0x3fe81673da8817ff              # double 0.75274079019504814
	.quad	0x3fe949360061aece              # double 0.79018688272977911
	.quad	0x3fe1c0d775d29c1c              # double 0.55479023945088413
	.quad	0x3fc57b5df13b9460              # double 0.16782736090604811
	.quad	0x3fd552b73294ce70              # double 0.33317356051995883
	.quad	0x3fe83b25439896ad              # double 0.75721991731980653
	.quad	0x3fc5cef182ffb8b4              # double 0.17037791153365378
	.quad	0x3fbfec49a8718f20              # double 0.12469921457664812
	.quad	0x3fddaaf55c93f2de              # double 0.46355947533429098
	.quad	0x3fee39e4e2707fa6              # double 0.94456714846090928
	.quad	0x3fd3f05bcd3943b8              # double 0.31154532472015317
	.quad	0x3fdc6f9f07031bae              # double 0.44431281742839246
	.quad	0x3fe3697f4065898e              # double 0.60662806107966261
	.quad	0x3fda28e761cc81fe              # double 0.40874657202405718
	.quad	0x3fdccb15a0851160              # double 0.44989529300462117
	.quad	0x3fe2cf58183093a5              # double 0.58781056141434773
	.quad	0x3fe940a8fabf5066              # double 0.7891430756958584
	.quad	0x3fe3f8b2f496cd70              # double 0.6241087700968091
	.quad	0x3fe1de6e9ff6a78b              # double 0.5584023594176285
	.quad	0x3fd550c5d85a1b96              # double 0.33305498245356924
	.quad	0x3fe2b2f35585e57c              # double 0.58434454635350574
	.quad	0x3fe9a4e039bf1236              # double 0.8013764503344365
	.quad	0x3fce99d8fb20aee8              # double 0.23907005560010153
	.quad	0x3fe7597c1cb012f2              # double 0.72967343905528836
	.quad	0x3fd4ae523882c69e              # double 0.32313972014081027
	.quad	0x3fe06ffac5b1e401              # double 0.51366938221246994
	.quad	0x3fc7960af9ade9b4              # double 0.18426644507765177
	.quad	0x3fd5e6fd004d0358              # double 0.34222340611818458
	.quad	0x3fea13f2a57cd6e7              # double 0.81493503877456142
	.quad	0x3fcf4c8044515da4              # double 0.24452212653953354
	.quad	0x3fe9578723572664              # double 0.79193455603053708
	.quad	0x3fea7d4c7e9b1470              # double 0.82779526450816654
	.quad	0x3fd78b5846aa9f38              # double 0.36787993336701019
	.quad	0x3fd1fdc1ab7b661a              # double 0.2811130690220992
	.quad	0x3fa16aacac7f7ec0              # double 0.034016986901176605
	.quad	0x3fe821740eab5dd9              # double 0.75408366074673971
	.quad	0x3fbee8f5be613720              # double 0.12074218652670909
	.quad	0x3fe9de5c3769e2db              # double 0.80839358160946106
	.quad	0x3fddb36c309500a4              # double 0.4640760874208445
	.quad	0x3fe2dcb51e2b3d02              # double 0.58944183246958937
	.quad	0x3fe7111fe681827b              # double 0.72084040661509563
	.quad	0x3fb37bb097c33250              # double 0.076106106807125373
	.quad	0x3fcd650eb559c228              # double 0.22964652876864133
	.quad	0x3fea60dbeb8a422d              # double 0.82432361606521953
	.quad	0x3fe575dc0fd5eadf              # double 0.67063716023343634
	.quad	0x3fe106c0a55409c1              # double 0.53207428255728229
	.quad	0x3fef2cc127d2b1d8              # double 0.97421319749769974
	.quad	0x3fe111f054916716              # double 0.53343979375060502
	.quad	0x3fa4edcb15fe8180              # double 0.040876718935808576
	.quad	0x3fd8e550feebc70e              # double 0.38899636168126583
	.quad	0x3f8785a8e3537800              # double 0.011485404431763158
	.quad	0x3fe5c09787b5cd2b              # double 0.67975975519076337
	.quad	0x3fd739b86f182de8              # double 0.36289797638957433
	.quad	0x3fe4951e8764397c              # double 0.64320303386357081
	.quad	0x3fefefed26cfe30c              # double 0.99803788738708609
	.quad	0x3fe953078198aac6              # double 0.7913854151896309
	.quad	0x3fac86ecb40bf160              # double 0.055716893175459914
	.quad	0x3fbe168738b13e80              # double 0.11753125318613833
	.quad	0x3fdb545b97eaff48              # double 0.42702379070032181
	.quad	0x3fdbbb870b0a63ea              # double 0.43332077100927668
	.quad	0x3fd67e8466775786              # double 0.35147199636900728
	.quad	0x3fc25c66168c4cfc              # double 0.14344478703478802
	.quad	0x3fe70cf1445b153f              # double 0.72032988882771309
	.quad	0x3fe8cd1e7c67bbbb              # double 0.77503895090000385
	.quad	0x3fab2ea1936cb7a0              # double 0.053090142484833125
	.quad	0x3fedc883183e5a1a              # double 0.9307265733248784
	.quad	0x3fe096a01017b86d              # double 0.51838687079522361
	.quad	0x3f915e66ebadf0e0              # double 0.016961677679760423
	.quad	0x3fdb188f88e1e460              # double 0.42337406508847231
	.quad	0x3fea05db72ada49d              # double 0.81321499250511275
	.quad	0x3fd19cb23a2a4914              # double 0.27518897705262302
	.quad	0x3fe138a31254cd1e              # double 0.53816369610141002
	.quad	0x3fb92a71a3adf268              # double 0.098303892575083318
	.quad	0x3fe79764b36996f7              # double 0.73723063508506825
	.quad	0x3f85de3739738900              # double 0.010677749100470368
	.quad	0x3fdc6fe88b9ec792              # double 0.44433034548557615
	.quad	0x3f698c9bd14d6a00              # double 0.0031188052475219497
	.quad	0x3fd2749502714e56              # double 0.28836560476813611
	.quad	0x3fe3e787b3742ffb              # double 0.6220129494627139
	.quad	0x3fdbc553679a2b6a              # double 0.4339188110104063
	.quad	0x3f670f0461830400              # double 0.0028147779049452204
	.quad	0x3fac9dfa3f211720              # double 0.05589277287121619
	.quad	0x3fef442a49fd5a9b              # double 0.97707094622713286
	.quad	0x3fee36e7b9ca7ad2              # double 0.94420229232113173
	.quad	0x3feb850c46f9d780              # double 0.85999120581139721
	.quad	0x3feb48be49b3aa74              # double 0.85262979884039546
	.quad	0x3fce0582fb01d290              # double 0.23454320198256484
	.quad	0x3fd6b7ba4dc91760              # double 0.35496385189286705
	.quad	0x3fc24bb650f552cc              # double 0.14293555214921694
	.quad	0x3fe788ecb805bdbb              # double 0.73546443883781565
	.quad	0x3fb8516c0fcf98c0              # double 0.094992402896965977
	.quad	0x3fecc6005b00f81b              # double 0.89917009138276016
	.quad	0x3fe9232fcc14b17a              # double 0.78554525241410933
	.quad	0x3fddd8f64a763cf0              # double 0.46636731406847698
	.quad	0x3fc2a87b25243dac              # double 0.1457666331630042
	.quad	0x3fe08b78ba5130b9              # double 0.51702534093921948
	.quad	0x3fe6018e101274f0              # double 0.68768981112557803
	.quad	0x3faf54ef0eb45290              # double 0.061194868607491348
	.quad	0x3fd2b1044d72a1ea              # double 0.29205424845943517
	.quad	0x3fdd006c36b903a8              # double 0.45315080017104004
	.quad	0x3fdeba4ef7ba44b8              # double 0.48012136642598646
	.quad	0x3feb044c1594f099              # double 0.84427456107325149
	.quad	0x3fe989c653bcd36f              # double 0.79806820254326094
	.quad	0x3fc90a707e5d90a8              # double 0.19563108606519575
	.quad	0x3fa35756354db450              # double 0.037775701529291994
	.quad	0x3feb694f4c9bc3a8              # double 0.8566051956423637
	.quad	0x3fb71b136b75ad58              # double 0.090256894812843824
	.quad	0x3fe138ccd388acfe              # double 0.53818360629284689
	.quad	0x3fea32005eab12f1              # double 0.81860369195837113
	.quad	0x3fed8fb108c7ffed              # double 0.92379047122085256
	.quad	0x3fdb0de26c79104a              # double 0.42272244065339193
	.quad	0x3fb2465835eb87f0              # double 0.07138587299735355
	.quad	0x3feda82256648881              # double 0.92677418588233718
	.quad	0x3fad514002dd0110              # double 0.057260513638995758
	.quad	0x3fda78aca62f3e80              # double 0.41361538151702604
	.quad	0x3fc3f50ef756ac6c              # double 0.1559160907466749
	.quad	0x3fb8126158d9acb0              # double 0.094030460540738713
	.quad	0x3fd8617aec194ff8              # double 0.38094971710711389
	.quad	0x3fee6bee1900beb5              # double 0.95067505725270129
	.quad	0x3fe5985c4bc964e0              # double 0.6748486976822754
	.quad	0x3fe3ece7436acfdd              # double 0.62266886870792926
	.quad	0x3fed484b7fa3692d              # double 0.91507506303176955
	.quad	0x3fd0e8fba3c70564              # double 0.26422015184296854
	.quad	0x3fbf28913504b568              # double 0.12171275658029901
	.quad	0x3fed1a6f9daa0cdf              # double 0.90947705072212759
	.quad	0x3fdbcd953c6eceac              # double 0.43442278768200526
	.quad	0x3fed613c1c8d9cae              # double 0.91811948372641949
	.quad	0x3fe06d4a9731326a              # double 0.51334123162957934
	.quad	0x3fcaeb82f2646884              # double 0.2103122409396897
	.quad	0x3fe5b250697159cd              # double 0.67801685900013242
	.quad	0x3fde860254e2fcce              # double 0.47692926683153025
	.quad	0x3fedd88f6a8c5fd3              # double 0.93268557367536642
	.quad	0x3fe75d68bdbbafae              # double 0.73015248353248352
	.quad	0x3fb66c17fbfd7820              # double 0.08758687879660032
	.quad	0x3fc93cdd8e8034ac              # double 0.19716996629759842
	.quad	0x3fd654cdbab98398              # double 0.34892600283461084
	.quad	0x3fe3af26d8daab49              # double 0.61513082842189093
	.quad	0x3fe596c6c3b68f68              # double 0.67465532517642846
	.quad	0x3fbf117a95ec6c70              # double 0.121360456087517
	.quad	0x3fca1c789643cc64              # double 0.20399386727476376
	.quad	0x3fecf744b3c2583a              # double 0.90518412694178285
	.quad	0x3fe31b76bf4b242f              # double 0.59710252153411669
	.quad	0x3fd692fb3ea58ad6              # double 0.3527210342200936
	.quad	0x3fd0c45c885900c4              # double 0.26198495211793849
	.quad	0x3fe17e620cf7a64a              # double 0.54667761357013345
	.quad	0x3fc39d3174a93854              # double 0.15323465534533176
	.quad	0x3fe962980be6c601              # double 0.79328539204124138
	.quad	0x3fe0a140e2a6a253              # double 0.51968426006085122
	.quad	0x3fd57204ac3a10b4              # double 0.33508412188553938
	.quad	0x3fea9fe0b0f13e79              # double 0.83201632079176513
	.quad	0x3fde975b3c274534              # double 0.47798806070666733
	.quad	0x3feaf25d3e7d5adc              # double 0.84208547787678922
	.quad	0x3fed411543798418              # double 0.91419470957419247
	.quad	0x3fd127e25ee719c8              # double 0.26805934207768845
	.quad	0x3fd1d8673b1ebbba              # double 0.27883320592348648
	.quad	0x3fe9e2a43b56e544              # double 0.80891620244725759
	.quad	0x3fabfc0089411260              # double 0.054656998400365309
	.quad	0x3fe1952f0db1179e              # double 0.54946091341183823
	.quad	0x3fe7e273399a854e              # double 0.74639283419325309
	.quad	0x3fef601a42b03e34              # double 0.98048127198302958
	.quad	0x3fecb647efd5a45e              # double 0.89725109903987366
	.quad	0x3f7ea522720ce500              # double 0.0074817033317284842
	.quad	0x3fe74065c1add63b              # double 0.72661102130832178
	.quad	0x3fe3ac8208a67442              # double 0.61480809869284081
	.quad	0x3fdb55ebae1a3832              # double 0.42711917879285288
	.quad	0x3fe06eb8f68c4bf9              # double 0.51351593164360942
	.quad	0x3fe68eec1f6cadb2              # double 0.7049465764770757
	.quad	0x3f9db9567fa704e0              # double 0.029027320424351966
	.quad	0x3fe85db2d9ab310b              # double 0.76143782151624018
	.quad	0x3fa338fc485b3360              # double 0.03754413970236814
	.quad	0x3fe892ffa8bdef1b              # double 0.76794417340667864
	.quad	0x3fdf347ab7f4af6c              # double 0.48757808651384127
	.quad	0x3fef80a613b23df9              # double 0.98445419165540137
	.quad	0x3fdc78efc09bb336              # double 0.44488138017077306
	.quad	0x3fe655f0bcb81651              # double 0.69799076899716728
	.quad	0x3fb9ab4bbf220b00              # double 0.10027001777966049
	.quad	0x3fec0dc130da0c28              # double 0.87667903462750463
	.quad	0x3fdedbbbb36f6cc8              # double 0.48216145060514437
	.quad	0x3fef5cb11f16a4d5              # double 0.98006492683375745
	.quad	0x3fe8531cd5936a76              # double 0.76014558519393804
	.quad	0x3fd053e56c53694a              # double 0.2551206167096508
	.quad	0x3fe4d8932e4ff6a4              # double 0.65143736882574332
	.quad	0x3fec25e568433076              # double 0.87962599147569054
	.quad	0x3fe9c6031ce9de52              # double 0.80542140624215564
	.quad	0x3fe9e882a5a8691e              # double 0.80963260989236452
	.quad	0x3fe146ea63819ff2              # double 0.53990668711503376
	.quad	0x3fc3701ca04625e0              # double 0.15185888124351177
	.quad	0x3fe05071616182f8              # double 0.50981968898494667
	.quad	0x3fe86b6c8dabcab7              # double 0.76311328573350223
	.quad	0x3fe8176e6113337b              # double 0.75286025009118818
	.quad	0x3fdccbc26aef5df0              # double 0.44993648951410048
	.quad	0x3fd5136ead1ef61e              # double 0.32931105524389348
	.quad	0x3fe21b8f0da056de              # double 0.56586411153213212
	.quad	0x3feb43f1974f73e5              # double 0.85204391053013906
	.quad	0x3fe275a5dafd7fd8              # double 0.57686131259469686
	.quad	0x3fec55e486480305              # double 0.88548494555297508
	.quad	0x3fe27474f184a97d              # double 0.57671591922307608
	.quad	0x3fef67334b023ff0              # double 0.98134770059732368
	.quad	0x3fcba363567fb020              # double 0.21592370723317433
	.quad	0x3fe327685e10e414              # double 0.59856050846349484
	.quad	0x3fee91bfff55ef26              # double 0.95529174680948326
	.quad	0x3fdc74f3238ef414              # double 0.44463804695607334
	.quad	0x3fee2ba65b3c6d35              # double 0.94282834834613161
	.quad	0x3fdfbafc1910eff2              # double 0.49578764388911545
	.quad	0x3fe088b3d4de5fa9              # double 0.51668731285007141
	.quad	0x3fe8f3258e4b0306              # double 0.77968099395374746
	.quad	0x3fe33e8e291c1070              # double 0.60138614682410996
	.quad	0x3fb2c5ae702c1948              # double 0.073328878770643091
	.quad	0x3fe4d2e79dcd3e65              # double 0.65074520893717802
	.quad	0x3fdcb783192678de              # double 0.44870068985063749
	.quad	0x3fe0b0ad10d7fc08              # double 0.52156689920218557
	.quad	0x3fe27780b5bf5566              # double 0.57708774087465708
	.quad	0x3fe9d0d24579ec13              # double 0.80674089021283846
	.quad	0x3fd68eb02b327898              # double 0.35245899408790526
	.quad	0x3fd843cc540b8836              # double 0.37913807113193643
	.quad	0x3fe194b49d939d8f              # double 0.54940253044780885
	.quad	0x3fb0c8365b6e5688              # double 0.065554997751258282
	.quad	0x3fd45aa2ba1239de              # double 0.31803196116461929
	.quad	0x3fcbe70b31a013dc              # double 0.21798839495764255
	.quad	0x3fd2b92473dd3946              # double 0.29255019488200096
	.quad	0x3fef880a972714aa              # double 0.98535661241534922
	.quad	0x3fe882fcacf3c7e0              # double 0.76598962573757134
	.quad	0x3fdbb0b5f003d0ee              # double 0.4326605647941183
	.quad	0x3fd5528c289cff92              # double 0.33316329923763377
	.quad	0x3fe1de34ac5eaf54              # double 0.55837472597111537
	.quad	0x3fdbc42bcd0efc74              # double 0.43384833359954844
	.quad	0x3fc215cb72a3e968              # double 0.14129012200994429
	.quad	0x3fe302f8afbece33              # double 0.59411272359142797
	.quad	0x3fe3decf39ef09a1              # double 0.62094842257674909
	.quad	0x3fd1367780e48f7a              # double 0.26894939028920073
	.quad	0x3fef55eb59181828              # double 0.97923819924540556
	.quad	0x3fdc56d5d6173580              # double 0.44280000598231339
	.quad	0x3fe12c02a37f09e0              # double 0.53662235195980301
	.quad	0x3fcdc6defe194fd8              # double 0.23263156325503931
	.quad	0x3fd343cbb10ce7b2              # double 0.30101291933135166
	.quad	0x3fe1f2f2a010490a              # double 0.56090670835900025
	.quad	0x3fe2ebbfb8fe164c              # double 0.5912779439101512
	.quad	0x3fc88b9d488e7e4c              # double 0.19176069300464105
	.quad	0x3fdeea0e903e61a2              # double 0.4830356987600003
	.quad	0x3fd32d170a1c364e              # double 0.2996270750744302
	.quad	0x3fdda02069f415d8              # double 0.46289835307137883
	.quad	0x3fee1bd5a4e596c0              # double 0.9408977718964806
	.quad	0x3fecce8dfb075058              # double 0.90021418599145431
	.quad	0x3fe5828ec12a05ee              # double 0.6721872112977374
	.quad	0x3fceaa1005dda7e0              # double 0.23956489836137873
	.quad	0x3fe2f9279e6eec3b              # double 0.59291439956667291
	.quad	0x3fcab6c88c728a4c              # double 0.20870310647758783
	.quad	0x3fe5a4d264d2ddaa              # double 0.67636985485198875
	.quad	0x3fd2615db39ae28c              # double 0.28719275035431546
	.quad	0x3febc10d4439aedf              # double 0.86731589627512651
	.quad	0x3fedfde057d699f3              # double 0.93724076419749591
	.quad	0x3fe388b701a213e7              # double 0.61043882674186711
	.quad	0x3fef8027c1506a92              # double 0.98439395672478924
	.quad	0x3fda4e89a9d608c0              # double 0.41104356370500383
	.quad	0x3fd4555dc7873612              # double 0.31771034703419432
	.quad	0x3fe3621fa42f7a29              # double 0.60572797839615078
	.quad	0x3fe6a6f068fa18ed              # double 0.70787830832776211
	.quad	0x3fe79ba095d7151a              # double 0.73774747148187036
	.quad	0x3faddbdce4ab9f30              # double 0.05831804553400699
	.quad	0x3fe53ffe2f7b73d0              # double 0.66406163476823998
	.quad	0x3fe4a1d0fde3fb29              # double 0.64475297534940978
	.quad	0x3fe21f2fde598662              # double 0.56630700519253829
	.quad	0x3fe3be36c83838a2              # double 0.61696948151963604
	.quad	0x3fd6367a07815450              # double 0.34707499249390583
	.quad	0x3fcbe7300da214e4              # double 0.21799278894119489
	.quad	0x3fe3cf477395dab3              # double 0.61905262542025807
	.quad	0x3fe8b4884ba2e46b              # double 0.77203764698709898
	.quad	0x3fcf75818866ff44              # double 0.24577349815626282
	.quad	0x3fe479ff983fa01e              # double 0.63989238487284061
	.quad	0x3fe19605c94d5372              # double 0.54956330601508641
	.quad	0x3fe6f61e93619708              # double 0.71754387650864349
	.quad	0x3fadaadd1ff9beb0              # double 0.057944212106005977
	.quad	0x3fe850b2f1d66e47              # double 0.75985095247183032
	.quad	0x3fdc4536da4d296e              # double 0.44172450369355587
	.quad	0x3fe702681d365d36              # double 0.71904378610171338
	.quad	0x3fe2c668bb84e4c8              # double 0.58671986222102479
	.quad	0x3fdf5d4a5dad9fb2              # double 0.4900689997507427
	.quad	0x3feed881ae743372              # double 0.96392902443913742
	.quad	0x3fea5455be51841d              # double 0.82279479190413307
	.quad	0x3fdb9c01435a2a22              # double 0.43139678552020844
	.quad	0x3fca8165669e9228              # double 0.20707385550225976
	.quad	0x3fd9f87fc48b5406              # double 0.40579218095564362
	.quad	0x3fedef4929e4aab1              # double 0.93545969183226962
	.quad	0x3fc049f153e9e3b8              # double 0.12725655171723615
	.quad	0x3fe7a89555f480d4              # double 0.73932902134040512
	.quad	0x3fef179cfa1f606e              # double 0.97163246967376238
	.quad	0x3fb5127280d61750              # double 0.082312733129666471
	.quad	0x3fd43b043d7cab0c              # double 0.31610208515728355
	.quad	0x3fe062ea51d1c5c8              # double 0.51207462292057304
	.quad	0x3fbeffd9ded804c0              # double 0.12109147730372438
	.quad	0x3faf2270965d1d00              # double 0.060809629778811214
	.quad	0x3fbb041f3abe5450              # double 0.1055316465775189
	.quad	0x3fe1a2bf60960d0b              # double 0.55111664642791547
	.quad	0x3fe323af94e02c0a              # double 0.5981061847427338
	.quad	0x3fd09f959f8b76ce              # double 0.25974026279969287
	.quad	0x3fe0d743e5b94a71              # double 0.52627749317100669
	.quad	0x3feb2fc5a05db654              # double 0.84958154031273602
	.quad	0x3fc87dc31f0fe428              # double 0.1913379575414933
	.quad	0x3fe1cb4fbc440c0b              # double 0.5560682942453935
	.quad	0x3fec61011b0f1f41              # double 0.88684134755110489
	.quad	0x3fcd70ac88c3dcdc              # double 0.23000103643401004
	.quad	0x3fef9bdb2768b97e              # double 0.9877753991802789
	.quad	0x3fee7bf2e41d8e30              # double 0.95263046792792316
	.quad	0x3fe8694a88a6a1a7              # double 0.76285292329435073
	.quad	0x3fec66499bbd815e              # double 0.88748627107637978
	.quad	0x3fe4c0985435bbd3              # double 0.64851013610120345
	.quad	0x3fdaae7ef2402b82              # double 0.41690038354197878
	.quad	0x3fe8a9c5c46cf071              # double 0.77072418560375244
	.quad	0x3fbaf7a7603c9200              # double 0.10534139728094516
	.quad	0x3feb591e38d6ded6              # double 0.85462866879876276
	.quad	0x3fd26b72cec1b600              # double 0.28780813399393423
	.quad	0x3fe0148dbfe53baf              # double 0.50250899772242075
	.quad	0x3fee804d98f93e2b              # double 0.95316200139672469
	.quad	0x3fd716dd185ffaae              # double 0.3607704866443936
	.quad	0x3fe55f6e554d63b1              # double 0.66789929066282216
	.quad	0x3fdddecce7611884              # double 0.46672365756638379
	.quad	0x3fe3f3ccb3fe0ac0              # double 0.62351069597965392
	.quad	0x3fe6d9be58312f03              # double 0.7140800211431898
	.quad	0x3fe456e45cf7eb43              # double 0.63560693891427211
	.quad	0x3fe20db08dbdba74              # double 0.5641711014157651
	.quad	0x3fd558a3a0976bf2              # double 0.33353510554087429
	.quad	0x3fe6047fbc4422ea              # double 0.68804919024213729
	.quad	0x3fd40cdf9ac4a15e              # double 0.31328573335715315
	.quad	0x3fea39e425b1c171              # double 0.81956679689578327
	.quad	0x3fe6c5b3335c866e              # double 0.71163330108192979
	.quad	0x3fdc2ffdbf52fc5e              # double 0.44042915042877506
	.quad	0x3fd95cf1fdb73fce              # double 0.3962979295438317
	.quad	0x3fdc9fd6dc7cf08a              # double 0.44725581676517179
	.quad	0x3f973c08345ac280              # double 0.0226899415926618
	.quad	0x3fddcb19680590c4              # double 0.46552119406102244
	.quad	0x3fde09b89d60d8e2              # double 0.46934333199477696
	.quad	0x3faa457983f7edc0              # double 0.051311299666817245
	.quad	0x3f9ac3b0e40cee60              # double 0.026137126845453884
	.quad	0x3fea2f0f87ec2e8a              # double 0.81824471042041691
	.quad	0x3fd1cd596cbc4838              # double 0.2781585275525944
	.quad	0x3fc59c0fea31f8bc              # double 0.16882513938248234
	.quad	0x3feea246fb05e74b              # double 0.95730923679296021
	.quad	0x3fec4d5d4675c60b              # double 0.8844438911602891
	.quad	0x3fd0334dded456fa              # double 0.2531313587254399
	.quad	0x3fd4923cc4d076ca              # double 0.3214256212248584
	.quad	0x3fe662b7d6951487              # double 0.69955055151571421
	.quad	0x3fce0d1e60d9e34c              # double 0.23477534989413085
	.quad	0x3f9826f0a5f0c9c0              # double 0.023586044433793196
	.quad	0x3fc34189ce50b160              # double 0.15043757032379812
	.quad	0x3fe378231742e9d3              # double 0.60841517012823443
	.quad	0x3febf8244e518e87              # double 0.87404074951742039
	.quad	0x3fe50a3f71908e6c              # double 0.65750095539665443
	.quad	0x3fd5a2e4b99ec4c8              # double 0.33806722762080854
	.quad	0x3fc02e301e94ac1c              # double 0.1264095448799204
	.quad	0x3fddd5cbeeeacb0a              # double 0.46617410976175278
	.quad	0x3fe18a697c193e87              # double 0.54814600217828591
	.quad	0x3fce65d09ae57d68              # double 0.23748214305212945
	.quad	0x3feafd8c6643e607              # double 0.84345073674848059
	.quad	0x3feed6abefe768ba              # double 0.96370503288496612
	.quad	0x3feb9dc706d27ea5              # double 0.86300994236440387
	.quad	0x3fcf365cfb76d3a4              # double 0.24384653357051633
	.quad	0x3fe0a51675fc33a1              # double 0.52015231174447163
	.quad	0x3fbc901ca9beb5f8              # double 0.11157397407688296
	.quad	0x3fedc03c453d2b79              # double 0.92971623919707647
	.quad	0x3fd9c2caf0edbc4a              # double 0.40251420524777315
	.quad	0x3f98b393b5f337a0              # double 0.024122531872130204
	.quad	0x3fc9c66e920ad5ec              # double 0.20136816149685843
	.quad	0x3fe3039e50f83d52              # double 0.59419170202628835
	.quad	0x3fe06ec80c9e5e6b              # double 0.51352312531066724
	.quad	0x3fd1facddc178206              # double 0.28093286984770349
	.quad	0x3fd312936ec8bd28              # double 0.29800878351939497
	.quad	0x3fdebd2224d80986              # double 0.4802937850764909
	.quad	0x3fe77d3623835246              # double 0.73403460441711199
	.quad	0x3fd33ae97424bdb6              # double 0.30047069875851251
	.quad	0x3fdbba740aa8ac8c              # double 0.43325520554453401
	.quad	0x3fee09c5c24a5667              # double 0.93869293162670153
	.quad	0x3fed04e6f2c09d3c              # double 0.90684840595796556
	.quad	0x3fd65d96b854bff8              # double 0.34946220398978722
	.quad	0x3fd43fb378f27516              # double 0.3163880044101729
	.quad	0x3fef784a670cbb0b              # double 0.98343391539478497
	.quad	0x3fe088bd371516d1              # double 0.51669178732182719
	.quad	0x3fe023020785954e              # double 0.50427342862227831
	.quad	0x3fec91cd04c9d925              # double 0.89279795584915134
	.quad	0x3fe10b2b58856481              # double 0.53261344231863472
	.quad	0x3fe94fcc0a3c24b8              # double 0.790990848531826
	.quad	0x3fe0baa49df4d812              # double 0.52278357363570849
	.quad	0x3fe94efabaa43329              # double 0.79089104131125965
	.quad	0x3fdc2e834195fb8a              # double 0.44033891110296308
	.quad	0x3fbb706a933ab380              # double 0.10718408674683921
	.quad	0x3fcff2f64f8f80ec              # double 0.24960211643975272
	.quad	0x3fe2af95b870814e              # double 0.58393369696936204
	.quad	0x3fc40a64b4f3d3f0              # double 0.15656718097275713
	.quad	0x3fedc34e57bc616b              # double 0.93009106765661664
	.quad	0x3fe6b32aa8f87dc4              # double 0.70937092783054156
	.quad	0x3fe76156ae1cef68              # double 0.73063215261889258
	.quad	0x3f77eaf04fbae600              # double 0.0058392893949359426
	.quad	0x3fe270e2dd32e64e              # double 0.57628005221267542
	.quad	0x3fde5c4ff6705d34              # double 0.4743842989568805
	.quad	0x3fcc9b90bce7577c              # double 0.22349747871220049
	.quad	0x3fea6c7d30bf5c80              # double 0.82574328919407947
	.quad	0x3fecfb7cb6c8dcf4              # double 0.90569911670800573
	.quad	0x3fe248e7974ff026              # double 0.57139949372458854
	.quad	0x3fc34cd72c270f90              # double 0.15078248649490122
	.quad	0x3fcdf08dc6f4df98              # double 0.23390361990618369
	.quad	0x3fdf0ceb3a991b08              # double 0.48516350481479309
	.quad	0x3fcc883172df24f8              # double 0.22290628537147206
	.quad	0x3fee1399a8ee98e2              # double 0.93989260668311325
	.quad	0x3fdf54167589db5a              # double 0.48950730780000173
	.quad	0x3fe06e6788e04afb              # double 0.5134771035539808
	.quad	0x3fdc224a05f9af62              # double 0.43959284385231545
	.quad	0x3feaeac525c23fef              # double 0.84115846037638942
	.quad	0x3fcccfa7ff236500              # double 0.22508716543124052
	.quad	0x3fdcf86c50eaba56              # double 0.45266254331628397
	.quad	0x3fe38766aba8d35e              # double 0.61027844931832553
	.quad	0x3fe58b66e779a522              # double 0.67326684198375042
	.quad	0x3feebe0c7ff7b45e              # double 0.96069931977912026
	.quad	0x3fedbab19f09fa12              # double 0.92903977453517173
	.quad	0x3fed552fa5d8abfe              # double 0.91664869682188033
	.quad	0x3fbb4b9197c6c308              # double 0.10662183719137996
	.quad	0x3fd6c55e0669c37c              # double 0.35579634310038677
	.quad	0x3fd3aee6bd7b9eea              # double 0.30755012993038966
	.quad	0x3feea9b9f41b7eec              # double 0.95821855237224218
	.quad	0x3fde05e67c2c811a              # double 0.46911012770034832
	.quad	0x3fecaec67ffd0f2a              # double 0.89633488652950644
	.quad	0x3fd9cc371d2ed918              # double 0.40308931207563736
	.quad	0x3fd41dc140006d98              # double 0.3143160939232188
	.quad	0x3fda0be7f7e322fe              # double 0.40697669227351685
	.quad	0x3fd721eea1c6f8da              # double 0.36144605444486688
	.quad	0x3fd1b1dbe90d6f6c              # double 0.27648065337211025
	.quad	0x3fc5d0056443eb1c              # double 0.17041079898611933
	.quad	0x3fdfb378181988ec              # double 0.49532892564287923
	.quad	0x3f8e9f875b375ec0              # double 0.014952714415741197
	.quad	0x3fd06559db476ea4              # double 0.25618597425430267
	.quad	0x3fcabd398de2e454              # double 0.20889968326608488
	.quad	0x3fd1bc2812c30816              # double 0.27710916359149118
	.quad	0x3fde5b8db5b6a9fe              # double 0.4743379854723172
	.quad	0x3fad3b25406ab420              # double 0.057091869462375877
	.quad	0x3f6eb275f81c1a00              # double 0.003747206123878799
	.quad	0x3feff1ffba8165d0              # double 0.99829088618133177
	.quad	0x3febc1582469e1c7              # double 0.86735159980803977
	.quad	0x3fe2b7bec70cf4f1              # double 0.58492983700821644
	.quad	0x3fae0da2a5a6dea0              # double 0.05869777938954468
	.quad	0x3fd185db2aa45b22              # double 0.27379492916354498
	.quad	0x3fe970902928042c              # double 0.79499061621038924
	.quad	0x3fe40670ae13d23c              # double 0.62578615188119313
	.quad	0x3fa42bdf7b810000              # double 0.039397224260483199
	.quad	0x3fe31efccdf486dc              # double 0.59753265596028937
	.quad	0x3feb3af27e87a2f1              # double 0.85094570839745931
	.quad	0x3fcf0c142058d1c0              # double 0.24255611018601364
	.quad	0x3fc7028a99e48adc              # double 0.17976505770010121
	.quad	0x3fe9ed169a214e07              # double 0.81019144156965772
	.quad	0x3fe8c570cbd59321              # double 0.77410163699514467
	.quad	0x3fd4f8a88cb3f264              # double 0.32767690411109229
	.quad	0x3fe3d23de272e155              # double 0.61941427448531761
	.quad	0x3fd72c3a05a290ce              # double 0.36207438040061113
	.quad	0x3feb624c1d9c7276              # double 0.85574918540403533
	.quad	0x3fed784fb2f708fb              # double 0.92093644098375138
	.quad	0x3fcd96fd40e3eacc              # double 0.23117032688590766
	.quad	0x3fe84d81987b1dd5              # double 0.75946121007376155
	.quad	0x3fedc6deba94b11e              # double 0.93052612725799455
	.quad	0x3f8888387182e800              # double 0.011978569950191087
	.quad	0x3fd0753f8f8afc50              # double 0.25715626733648822
	.quad	0x3fef19707d264696              # double 0.97185539668335497
	.quad	0x3fe4c2b3747b3440              # double 0.64876721143958349
	.quad	0x3fe40d45c7ae0276              # double 0.62662018775888728
	.quad	0x3fe282d81f3e3bd1              # double 0.57847219564598096
	.quad	0x3feaa1e31e82d0d7              # double 0.83226161917857666
	.quad	0x3fee5c22293cf5bb              # double 0.94874675802537156
	.quad	0x3fe4741fc6a4582c              # double 0.63917530820140689
	.quad	0x3fe840ed14afd6a4              # double 0.75792554893879016
	.quad	0x3feadc88e1f2e4cb              # double 0.83942073946595863
	.quad	0x3fc193575d27edec              # double 0.13730899857169676
	.quad	0x3fe73b2c255d2e0e              # double 0.72597319886830447
	.quad	0x3fea3d6e9300ed6a              # double 0.81999901496548699
	.quad	0x3fd6477dd4b2234e              # double 0.34811349650458545
	.quad	0x3fe343cb9a985dc5              # double 0.60202579683657886
	.quad	0x3fd4d49cdaca8e6e              # double 0.32547685018855688
	.quad	0x3faa2d66f57c3a80              # double 0.051127641169036231
	.quad	0x3fe092748a3f111c              # double 0.51787783623925376
	.quad	0x3fee956be81c9eab              # double 0.95573993048033878
	.quad	0x3fb1931f79cce8a8              # double 0.068651168095046899
	.quad	0x3fed1344c8619c71              # double 0.90860213410350188
	.quad	0x3fc941f8de56fe44              # double 0.19732581001697913
	.quad	0x3facd81f5fbdaa90              # double 0.056336384236449821
	.quad	0x3fe015efa1c4f254              # double 0.50267774196215464
	.quad	0x3fe4a7815a42a902              # double 0.64544742230398833
	.quad	0x3fdd3a179e566d7c              # double 0.45667067015320817
	.quad	0x3fd315b7bd142b2e              # double 0.29820054497456538
	.quad	0x3fdf889df63da9ac              # double 0.49271344229660019
	.quad	0x3fd9b16ad4f52b92              # double 0.40145369335794456
	.quad	0x3fca08b93db502f0              # double 0.20339122307816337
	.quad	0x3fc167a52ce02cd8              # double 0.13597550097651978
	.quad	0x3fa632f228120e00              # double 0.043357436553403517
	.quad	0x3fe2e11c3fd85aa7              # double 0.58997929067375743
	.quad	0x3fd44224429c89f2              # double 0.3165369654181226
	.quad	0x3fe89f1b2f5ad82c              # double 0.76942214249607365
	.quad	0x3fe0d9c172efa063              # double 0.52658150146909255
	.quad	0x3fe960b9fd8a3b48              # double 0.79305743712925736
	.quad	0x3fe2ae6840a100d8              # double 0.58378994582019583
	.quad	0x3fea076c5c35e637              # double 0.81340616235610852
	.quad	0x3fec93a385a7ab42              # double 0.89302230934604432
	.quad	0x3fe9fedf8fd34aa3              # double 0.812362461956884
	.quad	0x3f9fb603f652fc00              # double 0.030967771443780379
	.quad	0x3feb83ec9e4cb786              # double 0.85985403936295834
	.quad	0x3fb7bcf16cd25530              # double 0.092726792400146917
	.quad	0x3fe6ae5acc144555              # double 0.70878352984633841
	.quad	0x3fca942fb5b044c4              # double 0.20764728900443263
	.quad	0x3fec21195af19caa              # double 0.87904041063747695
	.quad	0x3fdf0bf435d6625a              # double 0.48510461099207236
	.quad	0x3fe2c1e327ccdbfe              # double 0.58616788648112084
	.quad	0x3fd5d16cf251935a              # double 0.3409073225396263
	.quad	0x3fd4ed7112c69cb2              # double 0.3269922908170414
	.quad	0x3fe3b5f727274218              # double 0.61596257826937784
	.quad	0x3fea03b03d111879              # double 0.81295024802308469
	.quad	0x3fcd2e9621891d60              # double 0.22798420560341537
	.quad	0x3fd339bf9d3de9a8              # double 0.30039968829773978
	.quad	0x3fe9cc2ca3d0c0b1              # double 0.80617362971499607
	.quad	0x3fd4d987231eac72              # double 0.32577684812230878
	.quad	0x3fe420e16702637e              # double 0.62901373023042573
	.quad	0x3fd12530c2078db6              # double 0.26789492557710604
	.quad	0x3fedd73cf959c716              # double 0.93252419186885294
	.quad	0x3fcc530719389d28              # double 0.22128380519391411
	.quad	0x3fe4f3afc992c27d              # double 0.65474690789967804
	.quad	0x3fe3096dfd93c0d1              # double 0.59490108038701284
	.quad	0x3fd162dfee30c570              # double 0.27165983448784115
	.quad	0x3fda50752433bdae              # double 0.4111607411896
	.quad	0x3fd0e17a4c78e8ce              # double 0.26376206844328187
	.quad	0x3fe1e1a2b9fc1ecd              # double 0.55879341435589824
	.quad	0x3fe3e0879543d2be              # double 0.62115840104396347
	.quad	0x3fc600e9cd331e1c              # double 0.17190287131801163
	.quad	0x3fdd2d8a6a7b92a0              # double 0.45590458296491398
	.quad	0x3fcdf1af121500d0              # double 0.23393810637390411
	.quad	0x3fe4ee88401db529              # double 0.65411770365395683
	.quad	0x3fc3281ed5806284              # double 0.14966187882307136
	.quad	0x3fdff6cb79be1a18              # double 0.49943816079067593
	.quad	0x3fe551aeaa734db4              # double 0.66622098246664629
	.quad	0x3fa682d7a84917f0              # double 0.043966998379389
	.quad	0x3fed20b5e78813e8              # double 0.91024298878676024
	.quad	0x3fb787905ddd0a00              # double 0.091912291446568872
	.quad	0x3fed737bc994dbc9              # double 0.92034711238272238
	.quad	0x3fcf3bc8692ee7b4              # double 0.24401192794704019
	.quad	0x3fde34befd0870ae              # double 0.47196936331034578
	.quad	0x3fa2b1f9af2a1b70              # double 0.036514094002135233
	.quad	0x3fe2fa7c7d1ded0a              # double 0.59307693898100067
	.quad	0x3fb84d85ef362508              # double 0.094932909871335736
	.quad	0x3fd02f6cb1fa0132              # double 0.25289456730390036
	.quad	0x3fe631c5f762f789              # double 0.69357584302609709
	.quad	0x3fdc943f8f380cc8              # double 0.44654835687852001
	.quad	0x3fe849b6353e1d44              # double 0.75899801634742702
	.quad	0x3fd752238a3d8746              # double 0.36438835620912291
	.quad	0x3fc3fd89559c47f0              # double 0.15617481880377637
	.quad	0x3fcbf12551642f08              # double 0.21829668497263577
	.quad	0x3fde8ab4e968e70e              # double 0.47721598428653145
	.quad	0x3feb9c36f0726d69              # double 0.86281916582394758
	.quad	0x3fd732f3737dd69e              # double 0.36248480108711501
	.quad	0x3fe071ffb4a61304              # double 0.51391587527231808
	.quad	0x3f8513ed0f352f80              # double 0.010291912104228862
	.quad	0x3fe9d88f8051b9c2              # double 0.80768561422683427
	.quad	0x3fe1a428fadc9b6a              # double 0.55128907200274324
	.quad	0x3fe3ff664500f5b8              # double 0.62492669560713576
	.quad	0x3fd67826fa57a804              # double 0.35108351180554132
	.quad	0x3fb75d0de016fd58              # double 0.0912636444181677
	.quad	0x3fd0a2ae4f6c8fde              # double 0.25992925411469325
	.quad	0x3fd80fda5aca4fa8              # double 0.37596758714902956
	.quad	0x3fe7760fd7b340df              # double 0.73316185120532029
	.quad	0x3fe45b94e6772749              # double 0.63617939961225389
	.quad	0x3fd1ace69ec56194              # double 0.27617803101522864
	.quad	0x3fe053c7fc86c5e7              # double 0.51022719689916307
	.quad	0x3febf9dac7f76165              # double 0.87424983077930263
	.quad	0x3fd2069ffc7f4a36              # double 0.28165435464794386
	.quad	0x3fecb25171da1ca0              # double 0.89676735150068864
	.quad	0x3fa6fa75193a8d20              # double 0.044879588441540941
	.quad	0x3fd6b88a3a34c6ec              # double 0.35501342472262709
	.quad	0x3fdba1ddfa66d9aa              # double 0.43175458386704213
	.quad	0x3fd3643a8db7eb06              # double 0.30299247588816092
	.quad	0x3fd9e1edbe46791e              # double 0.40441459256716594
	.quad	0x3fe546ac81a5275a              # double 0.66487717934908663
	.quad	0x3fe23232172aa9f6              # double 0.56862740063416939
	.quad	0x3fecc29f8cae5d39              # double 0.89875771977214136
	.quad	0x3fe3532c9dcc471b              # double 0.60390311069406566
	.quad	0x3fe2402d4981faaf              # double 0.57033409459093842
	.quad	0x3fd890bb143c8060              # double 0.38383366562084653
	.quad	0x3fe8b7f95a8d2fd5              # double 0.7724577683052255
	.quad	0x3fca05ef6b5f8204              # double 0.20330612891031319
	.quad	0x3fdfa15662777414              # double 0.49422225585823409
	.quad	0x3fe66b008fa563e9              # double 0.70056179099912896
	.quad	0x3fd3d5032da0a3e0              # double 0.30987624603090858
	.quad	0x3fbca34ffecc04e0              # double 0.11186695070866248
	.quad	0x3fdf346f44b38602              # double 0.48757535657031792
	.quad	0x3fa6837ae958a550              # double 0.043971863732006455
	.quad	0x3fcf3f6b36b37d58              # double 0.24412288828805617
	.quad	0x3fef5a2ec4977766              # double 0.9797586288147897
	.quad	0x3fe97182fd5d2711              # double 0.79510640607006355
	.quad	0x3fd436f1f8b2761e              # double 0.31585358893230076
	.quad	0x3feb2437b9b4d0f9              # double 0.84817110319866551
	.quad	0x3fde2054642ce6b2              # double 0.47072324545625144
	.quad	0x3f93f9e85a3e01c0              # double 0.019508009441325802
	.quad	0x3fdcb8b576fccaa8              # double 0.44877373332853177
	.quad	0x3fddc679b669286c              # double 0.46523897946884207
	.quad	0x3fe452c38747a54b              # double 0.63510300084923565
	.quad	0x3fc246391fce4c80              # double 0.14276804020900968
	.quad	0x3fd962231cb78d60              # double 0.39661481670755983
	.quad	0x3fed7a98d22af7e9              # double 0.92121544884116446
	.quad	0x3fe610c9b1ae5299              # double 0.68954930022535443
	.quad	0x3fe292b490c6739c              # double 0.58040836597830348
	.quad	0x3fc0f178af21e40c              # double 0.13236912299524339
	.quad	0x3fe700efd2a2cc69              # double 0.7188643564208067
	.quad	0x3fd7eb60fd05c6cc              # double 0.3737413855479701
	.quad	0x3fb1f01d034aa6f0              # double 0.070070088676086106
	.quad	0x3fc0e8ff93be5448              # double 0.13211054529225152
	.quad	0x3fe1fa28f3345480              # double 0.56178710461485082
	.quad	0x3fec569cb82e716b              # double 0.88557277653630473
	.quad	0x3fe1677bb5e61394              # double 0.54388223197075769
	.quad	0x3fdc4524c6ae6902              # double 0.44172019388646799
	.quad	0x3fdd28453e2a6666              # double 0.45558291502820791
	.quad	0x3fc6ff08582e3498              # double 0.1796579771584319
	.quad	0x3fc780f683302994              # double 0.18362313657446505
	.quad	0x3fdbecfa7519d474              # double 0.43633901057848523
	.quad	0x3fdd83fc58b4e450              # double 0.46118076956515086
	.quad	0x3fd5284baa5b6298              # double 0.33058444630072747
	.quad	0x3fd82b0fed84308c              # double 0.3776283092017898
	.quad	0x3fe95023b7441f99              # double 0.7910326556602626
	.quad	0x3fefaeb7acaea5b9              # double 0.99007781722064358
	.quad	0x3fef34d483c6bce1              # double 0.97519899118006148
	.quad	0x3fd434d14c3eed04              # double 0.31572372861747078
	.quad	0x3fe7b345ce84a575              # double 0.74063387237144573
	.quad	0x3fd1f4505d997f8a              # double 0.28053673878275076
	.quad	0x3fe61d8a2e518556              # double 0.6911059288651511
	.quad	0x3fc63e10adf13a68              # double 0.17376907819057696
	.quad	0x3fcf522ed3f4a648              # double 0.24469552373311587
	.quad	0x3fed9982161b2211              # double 0.92498878781867877
	.quad	0x3fc4760ad0d38a70              # double 0.15985236355398369
	.quad	0x3fa8ee3bf4e0b790              # double 0.048692582742986379
	.quad	0x3fefe48a5e808edd              # double 0.99664801080185905
	.quad	0x3fd4c7e92d1b54c4              # double 0.32470158963162654
	.quad	0x3fdf7af2ebf4d50a              # double 0.49187920611014191
	.quad	0x3fd9050742d9e230              # double 0.39093190697124935
	.quad	0x3fde2e64d7927732              # double 0.47158165981260247
	.quad	0x3fd94104656ae4e6              # double 0.39459333328302504
	.quad	0x3fbc03f1b2bfe468              # double 0.10943518270495789
	.quad	0x3fd4095f70e39754              # double 0.3130720713073647
	.quad	0x3fc595da95e1f3d0              # double 0.16863567656028389
	.quad	0x3fe24c47df359c25              # double 0.57181161494816435
	.quad	0x3fd0a887d45f39c8              # double 0.26028629054499364
	.quad	0x3fea4b8c781b46b4              # double 0.8217222543555267
	.quad	0x3fc81cd7dcfa15dc              # double 0.1883802250851393
	.quad	0x3fb6836751dd0a18              # double 0.08794255970591569
	.quad	0x3feae087a4f94bc9              # double 0.83990843030402929
	.quad	0x3facfebd0ed42cb0              # double 0.056631000576169099
	.quad	0x3fde2766f0996d0a              # double 0.47115491386439656
	.quad	0x3fed5b095d891379              # double 0.91736286419528235
	.quad	0x3fd049a9dce4e068              # double 0.25449606486973275
	.quad	0x3fe580a4350e9354              # double 0.67195330012018895
	.quad	0x3fbf823d9c61a268              # double 0.12308106487183468
	.quad	0x3fe648789159bf88              # double 0.69634655369553489
	.quad	0x3feac17f8b70e77f              # double 0.83612038836075431
	.quad	0x3fda78eaf209e81e              # double 0.41363023411361322
	.quad	0x3fed0e820c388ce1              # double 0.90802099596876584
	.quad	0x3fd1379d2419260e              # double 0.26901939892977189
	.quad	0x3fd712ddfcdefb82              # double 0.36052655882297568
	.quad	0x3fadc673550c2220              # double 0.058154682285082027
	.quad	0x3fef2c6a72274534              # double 0.97417185111604576
	.quad	0x3fe9a571d907bbd7              # double 0.80144588841164477
	.quad	0x3fdc12096712b586              # double 0.43860087457400032
	.quad	0x3fd46cadf57efa8c              # double 0.31913327192516117
	.quad	0x3fc3f91e392144dc              # double 0.15603997983502083
	.quad	0x3fdfcfe0cc7bb852              # double 0.49706287354536471
	.quad	0x3fe98130637434ee              # double 0.79702014374347896
	.quad	0x3fb56a7a59d3e020              # double 0.083655974321914517
	.quad	0x3fe78557c0f32748              # double 0.73502719579230646
	.quad	0x3fd128ff28abe046              # double 0.26812724086585538
	.quad	0x3fe7814f31088849              # double 0.73453483177969148
	.quad	0x3fd26a43fe0b5b84              # double 0.28773593720455204
	.quad	0x3fe2dc4c349a7bb7              # double 0.58939180635558486
	.quad	0x3fbbca3758e37730              # double 0.10855432434206302
	.quad	0x3fe2b81d36fe2869              # double 0.58497486820966771
	.quad	0x3fecd603dd5c4538              # double 0.90112488970240801
	.quad	0x3fe5738de8cbb251              # double 0.67035575359256871
	.quad	0x3fd28f175b7c17f6              # double 0.2899835961728735
	.quad	0x3fe9f05ef49189a8              # double 0.81059215323721379
	.quad	0x3fea6129a95c4525              # double 0.82436068609436985
	.quad	0x3fbf46831a536058              # double 0.12216967957226765
	.quad	0x3fe04e8443774f23              # double 0.50958455254519597
	.quad	0x3fdf2983288b4920              # double 0.48690871199973351
	.quad	0x3fc47391828d4d58              # double 0.15977686762435428
	.quad	0x3fc253a195fc58d8              # double 0.14317722152254109
	.quad	0x3fee2b445d15d547              # double 0.94278162174911351
	.quad	0x3fe4745428c3ef8c              # double 0.6392002865027151
	.quad	0x3fea87f00e7f2e8d              # double 0.82909396010787051
	.quad	0x3fd891a5c6189d9a              # double 0.38388962121322268
	.quad	0x3fed438580630b51              # double 0.91449236941876155
	.quad	0x3fcbc01b78de2fe0              # double 0.21680014993432817
	.quad	0x3fe78838be8f6e78              # double 0.73537862032703938
	.quad	0x3fee73004d5378cd              # double 0.95153822996851434
	.quad	0x3fd1f93e726ed5fc              # double 0.28083764243214637
	.quad	0x3face77fb0fb89a0              # double 0.056453695635144685
	.quad	0x3fe48fff48b96b2e              # double 0.64257778362239093
	.quad	0x3fac371791f54960              # double 0.055107819144398773
	.quad	0x3fe79a67e0a23588              # double 0.73759836076503493
	.quad	0x3fd53946ddc9cf14              # double 0.3316208997632526
	.quad	0x3fc5eacbe2070c80              # double 0.17122791801930148
	.quad	0x3fe90d810cc987ba              # double 0.78289844987397506
	.quad	0x3fe38bbdba76e143              # double 0.61080824297736347
	.quad	0x3fb2c31be06eec38              # double 0.073289625447544249
	.quad	0x3fc3715bfff57e38              # double 0.15189695356365163
	.quad	0x3fe6ef8dc88e7834              # double 0.71674241229243885
	.quad	0x3fafa15778a3fb50              # double 0.061777814365987838
	.quad	0x3fe583978b9ba36c              # double 0.67231347338848257
	.quad	0x3fec3c658da12697              # double 0.88237264310847052
	.quad	0x3fe75e5454cbde21              # double 0.73026482164181428
	.quad	0x3fc1c0a4d4f26918              # double 0.13869152448462141
	.quad	0x3fd4d6d2afa66640              # double 0.32561175492591943
	.quad	0x3fd8b5fbdc17ab04              # double 0.3861074113216747
	.quad	0x3fe9a322ef1e0703              # double 0.80116411879154759
	.quad	0x3fc7e56e339ea998              # double 0.1866891624498066
	.quad	0x3fc2bfa4ce708418              # double 0.14647350387625191
	.quad	0x3fd16708c0cf5468              # double 0.27191370801057824
	.quad	0x3fec901348919174              # double 0.89258732007560448
	.quad	0x3fe281263fdb80df              # double 0.57826530906825357
	.quad	0x3fc2c833cbb1df14              # double 0.1467346901515546
	.quad	0x3fb8b88675f5a528              # double 0.096565631674498165
	.quad	0x3fd8ac2e238da0b4              # double 0.38550904724116752
	.quad	0x3fe871f4ef6e9884              # double 0.76391073955598232
	.quad	0x3fd28553c4eb1ee8              # double 0.28938764791790428
	.quad	0x3fca26f8a25694d8              # double 0.20431430746717782
	.quad	0x3fdf0baa7674e256              # double 0.48508702819848304
	.quad	0x3fdf7b87cb28ea44              # double 0.49191469993425962
	.quad	0x3fedc2345653459c              # double 0.92995659695059229
	.quad	0x3fcce1c4c7c96e34              # double 0.22563991313187304
	.quad	0x3fece8c43b6541bf              # double 0.90341388321581195
	.quad	0x3fe3ffbead015d87              # double 0.62496885099510358
	.quad	0x3fcb0326d832b894              # double 0.21103368336247696
	.quad	0x3fd76b12adea36a0              # double 0.36591021522404255
	.quad	0x3fd0e362030b1d06              # double 0.26387834832389989
	.quad	0x3fdd50c93020b6b8              # double 0.45805577945689491
	.quad	0x3fd2c0938f67ac9c              # double 0.29300393108742084
	.quad	0x3fe4d85a838c312d              # double 0.65141034787078456
	.quad	0x3febb1355a642781              # double 0.86538188604866673
	.quad	0x3fe2492a365f35b8              # double 0.57143126124872534
	.quad	0x3fe0dbd4ccb4b787              # double 0.52683486920953804
	.quad	0x3fd1795896cd9db0              # double 0.27303137518762366
	.quad	0x3fbe78c30c4013a8              # double 0.11903018044547642
	.quad	0x3fd317a0405b1be4              # double 0.29831701550250345
	.quad	0x3fcdca8ea48d8368              # double 0.23274405512622853
	.quad	0x3fec5cae7e3d2389              # double 0.88631367355365953
	.quad	0x3fd925e7119ce61e              # double 0.39293839187630109
	.quad	0x3fe6506ea8c3ce16              # double 0.69731839143645646
	.quad	0x3fc18e9538cfbebc              # double 0.13716378473281121
	.quad	0x3fe5445df8811e06              # double 0.66459558998116175
	.quad	0x3fd941d3d7af612a              # double 0.39464279234882105
	.quad	0x3fd310f9170d71b0              # double 0.29791095019552483
	.quad	0x3fd7cee1d0bf55a4              # double 0.37200208077896435
	.quad	0x3feb5f04eb7166a4              # double 0.85534902558284331
	.quad	0x3fb5fe38068568e0              # double 0.08591032180030167
	.quad	0x3fd0788433a565b6              # double 0.25735573810160461
	.quad	0x3fe12c3d13752dcf              # double 0.53665021705949723
	.quad	0x3fe59697e7002540              # double 0.67463297955797685
	.quad	0x3fe722963e5a1a8e              # double 0.72297203233832064
	.quad	0x3fdedfd4845e6e34              # double 0.48241150786063547
	.quad	0x3fcbf7fcc79a33b0              # double 0.2185054754849296
	.quad	0x3febf669ebbee981              # double 0.87382980388728992
	.quad	0x3fed2b93566be965              # double 0.91156927947239963
	.quad	0x3fe4adf813b920d5              # double 0.64623645641497751
	.quad	0x3f67d6c9e8ffc600              # double 0.002910036426322149
	.quad	0x3fce95a2ccc2448c              # double 0.23894152639380584
	.quad	0x3f92541ebf3b8160              # double 0.017899017736341505
	.quad	0x3fe3ce18b07053ad              # double 0.6189082571096286
	.quad	0x3feb7de87ba08e23              # double 0.85911964555674947
	.quad	0x3feafe0ac073a085              # double 0.84351098621574805
	.quad	0x3fe7bb3db984555d              # double 0.74160658105635557
	.quad	0x3fd89c1d95e0153c              # double 0.38452853809606657
	.quad	0x3fc38c6437e32ad0              # double 0.15272190789104068
	.quad	0x3fb49273af5ac398              # double 0.080359678565186221
	.quad	0x3fd293d49ca00ca4              # double 0.29027285857609741
	.quad	0x3f66a2716a0d6b00              # double 0.0027630057451636381
	.quad	0x3fd9e2a413b04bf2              # double 0.40445806429596509
	.quad	0x3fedb8241f94436f              # double 0.92872816245845324
	.quad	0x3fe3504f88122d61              # double 0.60355354858749533
	.quad	0x3fe0de441008983e              # double 0.52713206416661484
	.quad	0x3fa38b70f60f0810              # double 0.038173227344955873
	.quad	0x3fef472b45040f54              # double 0.97743762473735751
	.quad	0x3fdbfbefb8d7dcca              # double 0.43725197840781205
	.quad	0x3fef664363b07390              # double 0.98123330565032241
	.quad	0x3fe2e1b389366bf3              # double 0.59005142974217362
	.quad	0x3fe3bce4b7c2500d              # double 0.61680827989994358
	.quad	0x3fd5159ccb34aa24              # double 0.32944412082966523
	.quad	0x3fe0e3eb70de92d4              # double 0.52782222790537014
	.quad	0x3fcd39bd14b867d0              # double 0.22832454215750753
	.quad	0x3fec447cad9da5d4              # double 0.88336023244226646
	.quad	0x3f78af2de9bee980              # double 0.0060264390448828697
	.quad	0x3fe7039146e348ce              # double 0.71918548436431151
	.quad	0x3fe480deb5729112              # double 0.64073119582147542
	.quad	0x3fbb546526cb1f50              # double 0.10675651738267544
	.quad	0x3fe6527a43c78f68              # double 0.6975680660075172
	.quad	0x3fce49009b7fd520              # double 0.23660285561315053
	.quad	0x3fc95d7048b27128              # double 0.19816402005825151
	.quad	0x3fd3cfb6414c95c2              # double 0.30955273033972841
	.quad	0x3fedc0fb19114665              # double 0.92980723281852973
	.quad	0x3fdf7413b206e4a0              # double 0.49145977387849804
	.quad	0x3fe6d90d93913f5f              # double 0.71399573156120855
	.quad	0x3feaec82dc4b51a1              # double 0.84137099291051609
	.quad	0x3feafa05381efe0d              # double 0.84302006684441866
	.quad	0x3fd7c372da8a3fb0              # double 0.37130423871803497
	.quad	0x3fef5fbdf82bcb65              # double 0.98043726416504439
	.quad	0x3fd62dbb2371c274              # double 0.34654119931568705
	.quad	0x3fd061daefc5461e              # double 0.25597260871026772
	.quad	0x3fc677fe0d6966f8              # double 0.17553687720174316
	.quad	0x3febf63b5c932c32              # double 0.87380760270150959
	.quad	0x3fe9ae752d465ce9              # double 0.80254610865349918
	.quad	0x3fcb152bc7089f90              # double 0.21158358782235753
	.quad	0x3fecc79c6254d7bc              # double 0.89936656194071629
	.quad	0x3fef55a62e684844              # double 0.97920521797119208
	.quad	0x3fef451a62e81bdd              # double 0.97718543355665199
	.quad	0x3fe2e8c4fe707c7b              # double 0.59091424651332092
	.quad	0x3fbb909751d3ddb8              # double 0.10767503497833431
	.quad	0x3f60ea069d45a600              # double 0.0020647172151952997
	.quad	0x3fc18c1765a07c9c              # double 0.13708775007487339
	.quad	0x3feaf57e4946a1fe              # double 0.84246744453145062
	.quad	0x3fb6fbd0b15d0300              # double 0.089779895116418373
	.quad	0x3fec9b44767c3067              # double 0.89395354405997984
	.quad	0x3fe9f9359ce384be              # double 0.81167107240994318
	.quad	0x3fd7130c4b5f9064              # double 0.36053759918855222
	.quad	0x3fea6726cbb3de8a              # double 0.82509174142519837
	.quad	0x3fe80dc98271bda0              # double 0.7516830013027409
	.quad	0x3fce79f50b2db044              # double 0.23809683843444607
	.quad	0x3fea75ecddf20120              # double 0.82689517353722763
	.quad	0x3fd892914788f652              # double 0.38394577012863806
	.quad	0x3fdcb9aabf20ec82              # double 0.44883221306708532
	.quad	0x3fb1783b0dd81768              # double 0.068240824584874127
	.quad	0x3fea9654d7c34f0d              # double 0.83085100308605464
	.quad	0x3fc7b1b5728753d4              # double 0.18511074154107965
	.quad	0x3fe02992f7f5dff7              # double 0.5050749628999246
	.quad	0x3fbab0c4101137c8              # double 0.10425973312632586
	.quad	0x3fe30dfcd547121e              # double 0.59545747428689189
	.quad	0x3feaf38dbbb3864c              # double 0.8422306695976629
	.quad	0x3fe14993dd8e8426              # double 0.54023164055627571
	.quad	0x3faf7265f9f9e4f0              # double 0.061419665112177557
	.quad	0x3fdfd9baf058341a              # double 0.49766419860026334
	.quad	0x3fe28ee49224bfea              # double 0.5799429754606511
	.quad	0x3fd5d0db9ae9db3a              # double 0.34087267044326419
	.quad	0x3fbbafba378befd8              # double 0.10815013748282298
	.quad	0x3fe1c739708ff986              # double 0.55556938156932811
	.quad	0x3fe3c9af177b450d              # double 0.61836962305292931
	.quad	0x3fa4d5a3902fd5e0              # double 0.040692435599264831
	.quad	0x3fd3071eb03f8438              # double 0.29730956279496779
	.quad	0x3fdb2ce73400b188              # double 0.42461566999806921
	.quad	0x3fe0fa5204f78501              # double 0.53055668802349498
	.quad	0x3fed7204eb80cc16              # double 0.92016836163236593
	.quad	0x3fef7713ef4b83e9              # double 0.98328587281514245
	.quad	0x3fecad803e842a99              # double 0.89617931566438636
	.quad	0x3fd5703ad4e8bd8a              # double 0.3349749640646783
	.quad	0x3fb070df765b38e0              # double 0.064222303767766942
	.quad	0x3fc1201e34c32930              # double 0.13379266334806905
	.quad	0x3fdf359dfd1cee82              # double 0.48764753072803313
	.quad	0x3fdd17175ab1a0ba              # double 0.45453437668630736
	.quad	0x3fc6bcade2d68208              # double 0.17763303352423088
	.quad	0x3f89c0e471053240              # double 0.01257494420919969
	.quad	0x3fd0e4645c1c39f8              # double 0.26393994326727421
	.quad	0x3fd0a835cfd9e896              # double 0.26026673601121197
	.quad	0x3fea2b06fd604c4c              # double 0.81775235641033239
	.quad	0x3fe370a26c205700              # double 0.60749932402060836
	.quad	0x3fb305d4f0aaa730              # double 0.074307736164567428
	.quad	0x3feaee05ac40ec11              # double 0.84155543940812738
	.quad	0x3fc453fc3ba72230              # double 0.1588130275033719
	.quad	0x3fe07c1069c55d82              # double 0.51514454515829322
	.quad	0x3fe31c5687430095              # double 0.59720922869020632
	.quad	0x3fd03b4ef080c2b4              # double 0.25361989485376601
	.quad	0x3fd9516eadc3eba6              # double 0.39559523553151121
	.quad	0x3feecd27b29bdde1              # double 0.96254334339658609
	.quad	0x3fd505fcb2d6b600              # double 0.32849042381971572
	.quad	0x3fededeebb935aa5              # double 0.93529450069293729
	.quad	0x3fed7b6441283aa7              # double 0.92131245351796032
	.quad	0x3fd158683d605a9e              # double 0.27102094644343733
	.quad	0x3fe7e7d96ffb8a1f              # double 0.74705192443463264
	.quad	0x3fe38d5397bf69ea              # double 0.61100177419876656
	.quad	0x3fb57bf66b052678              # double 0.083922768714865259
	.quad	0x3fe2c1e70ed37e67              # double 0.58616974731189664
	.quad	0x3fd6af99b31d473a              # double 0.35446779719960697
	.quad	0x3fe6c36abea1014d              # double 0.71135461075031403
	.quad	0x3fe87adb91104bdb              # double 0.76499727566476439
	.quad	0x3fe5571ba38a0bcf              # double 0.66688329640634858
	.quad	0x3fe07a6898dbf4af              # double 0.51494245391190485
	.quad	0x3fe4592598b19516              # double 0.63588218520149797
	.quad	0x3fefd165f77e3d48              # double 0.99431131685734275
	.quad	0x3fe1859daae56e66              # double 0.54756053331534527
	.quad	0x3fc926f6b04787b4              # double 0.19650157554047853
	.quad	0x3fc81c007aef0280              # double 0.18835454943293328
	.quad	0x3fe3d36d6ebc0928              # double 0.61955901744685082
	.quad	0x3fa1748a8f52d370              # double 0.034092264171170394
	.quad	0x3fd827cf6c6acf92              # double 0.37742982471103759
	.quad	0x3fe6ed4c8ed454dc              # double 0.71646716972704949
	.quad	0x3fc6944b34791860              # double 0.17640056669387416
	.quad	0x3fe218a0ceb5837c              # double 0.56550636647089858
	.quad	0x3fd4c1657e77399e              # double 0.32430398321312193
	.quad	0x3fec4f8b7874ec69              # double 0.88471005942063841
	.quad	0x3fe9d962cf54b2fc              # double 0.80778637403781727
	.quad	0x3fef3a7830f4357b              # double 0.9758873897678052
	.quad	0x3fe7ea71b4fb12af              # double 0.7473686728268002
	.quad	0x3fe4c1114c5ab3db              # double 0.64856781876516878
	.quad	0x3fbfc6566bb80c28              # double 0.12412014131409477
	.quad	0x3fa3b971fbd68a70              # double 0.038524209968518686
	.quad	0x3fef635e45f0240d              # double 0.98087991390014084
	.quad	0x3fb19f0ac242f4f0              # double 0.068833038737426966
	.quad	0x3fe897ea96215082              # double 0.76854447672168669
	.quad	0x3fc03f4aa8c2097c              # double 0.12693150749334936
	.quad	0x3fb8660b401b5840              # double 0.095307067061498607
	.quad	0x3fe5d0d150b3e4e9              # double 0.68174043428657882
	.quad	0x3fe63b4086b6d681              # double 0.69473291694039585
	.quad	0x3fd9285e5ee790b4              # double 0.39308890598318702
	.quad	0x3fd6845dda4e8a26              # double 0.35182901686690327
	.quad	0x3febc7c5de6c8ca8              # double 0.86813634340469026
	.quad	0x3fc84009114980d4              # double 0.18945420593354945
	.quad	0x3fdbd25c6d2b6b1a              # double 0.43471441899389307
	.quad	0x3fe1c7089a87e1a7              # double 0.55554609472078631
	.quad	0x3fc125a4d19a192c              # double 0.1339612983176236
	.quad	0x3fedcc58488d1d73              # double 0.93119444055711964
	.quad	0x3fe08c8660f8f069              # double 0.5171539205544039
	.quad	0x3fbdfc2bf0012ed0              # double 0.11712908372390562
	.quad	0x3fe084e01557fd42              # double 0.51622013252919197
	.quad	0x3fef8440d9935d28              # double 0.98489420409433581
	.quad	0x3feba56d17a9f165              # double 0.86394362089008025
	.quad	0x3fee8c71a0c043b5              # double 0.95464402577100904
	.quad	0x3fd655785e04ec4a              # double 0.34896668607297399
	.quad	0x3fd6e082854c4430              # double 0.35745299355864102
	.quad	0x3fd626350ab6bee8              # double 0.34608198210024321
	.quad	0x3fefec62f41f37b6              # double 0.9976057785040584
	.quad	0x3fb87c1dcd4be830              # double 0.095643866177767433
	.quad	0x3fe6f61c803c31d5              # double 0.71754288717198256
	.quad	0x3fbd193f9a2d2c08              # double 0.11366651071618616
	.quad	0x3fe93cf8037f476c              # double 0.78869248087924637
	.quad	0x3fd984f865c03f06              # double 0.39874086319558477
	.quad	0x3fe107c225623246              # double 0.53219706822853463
	.quad	0x3fe5022dc9452c22              # double 0.65651597319208954
	.quad	0x3fe44e5f46901d6f              # double 0.63456691533876419
	.quad	0x3fe351c886539e1b              # double 0.60373331294698873
	.quad	0x3fd4eb622b0ad110              # double 0.32686666682572341
	.quad	0x3fd51a4f39f339bc              # double 0.32973080310048508
	.quad	0x3fe6f5523920c9f9              # double 0.71744643361881721
	.quad	0x3fad0d4a64133b60              # double 0.056742024151040793
	.quad	0x3fb55e36ab9e1770              # double 0.083468834780516365
	.quad	0x3fe66ee95dff9604              # double 0.7010390125184931
	.quad	0x3fd749f5abadf43c              # double 0.36388913884713125
	.quad	0x3faff902e92bfd20              # double 0.062446680987699787
	.quad	0x3fdc8ae95af9a0aa              # double 0.44597848781860228
	.quad	0x3fe1ee688d0b47f2              # double 0.56035258815449951
	.quad	0x3fd1245a727acf2e              # double 0.26784382991467026
	.quad	0x3f9207e883e8f540              # double 0.017608292628428446
	.quad	0x3fcf297955a50b80              # double 0.24345318490858503
	.quad	0x3fe180d65579a856              # double 0.54697720236186842
	.quad	0x3f9941850ee1f940              # double 0.024664000542992115
	.quad	0x3febaa957501f79c              # double 0.86457321980536816
	.quad	0x3feae58357690fdf              # double 0.84051673004477923
	.quad	0x3fe0a84770c11745              # double 0.52054187795941032
	.quad	0x3fe281a22f2c5668              # double 0.57832440579904887
	.quad	0x3fe75d22e8bc71a2              # double 0.7301191850306632
	.quad	0x3feec58e0897b3e2              # double 0.96161557844390821
	.quad	0x3fede62c2646e66c              # double 0.93434722400634262
	.quad	0x3fcc32eb7fb6a0b0              # double 0.22030395256047575
	.quad	0x3fe381c3027c3e61              # double 0.60959005818763157
	.quad	0x3fc4569aca23a724              # double 0.15889296407777309
	.quad	0x3f9fb7b3d4edd420              # double 0.030974206801563153
	.quad	0x3fe2b5b04f3b766d              # double 0.5846787974839579
	.quad	0x3fde21e18770d8a0              # double 0.47081793047562748
	.quad	0x3fecaa51c65ed5cc              # double 0.89579094642857048
	.quad	0x3fede2ecf87d8fe5              # double 0.93395088704391738
	.quad	0x3fe76c06b335701a              # double 0.7319367885752428
	.quad	0x3feb51242a0f58a7              # double 0.8536549397929506
	.quad	0x3fee01be9bb1d72c              # double 0.93771295937651677
	.quad	0x3fcd821cc8a007e8              # double 0.23053321643970937
	.quad	0x3fb9c3c0744f1360              # double 0.10064318503925795
	.quad	0x3fddd93eb5c2e13a              # double 0.46638458013650885
	.quad	0x3febf13458605d60              # double 0.8731939054586455
	.quad	0x3fe40e45ec9a7064              # double 0.62674232684686304
	.quad	0x3fe80de5d3e93105              # double 0.75169650448654635
	.quad	0x3fea857d88ff25cf              # double 0.82879521138345946
	.quad	0x3fb153b587d4ff50              # double 0.067683549558748668
	.quad	0x3fcce42b9ea28468              # double 0.22571320768205116
	.quad	0x3fcd5c5bae3ac6c8              # double 0.22938104636482692
	.quad	0x3fec302cb7d729cd              # double 0.88088069826454218
	.quad	0x3fc3be537594cb60              # double 0.15424578896780883
	.quad	0x3fb1353753979118              # double 0.067218263538567746
	.quad	0x3fe714046819f58b              # double 0.72119350750260602
	.quad	0x3faac6381c9a0830              # double 0.052293542376915858
	.quad	0x3fe35c0382f6122a              # double 0.60498214319574584
	.quad	0x3fe4291a2c6e93a1              # double 0.63001736333955105
	.quad	0x3fe13fbfe085c336              # double 0.53903192379048082
	.quad	0x3fe82e160aaa06f6              # double 0.7556257446560426
	.quad	0x3fe3b8d88028cfee              # double 0.616314173041699
	.quad	0x3fdb1d20e8da1b5e              # double 0.42365286578608685
	.quad	0x3fdd64a64cd3db20              # double 0.45926816466037401
	.quad	0x3fef1477a9692387              # double 0.97124846542384168
	.quad	0x3fd86691c461d394              # double 0.381260339526585
	.quad	0x3fdec9471a2d2c7e              # double 0.48103501850409447
	.quad	0x3fc4cf3396dfec90              # double 0.1625732886021507
	.quad	0x3fd2cfa6e25941fa              # double 0.29392406563150042
	.quad	0x3fdb14674e63cf52              # double 0.42312033324491438
	.quad	0x3fd2c41fb62e8aa8              # double 0.29322045127097818
	.quad	0x3fb3854ca9bc85f0              # double 0.076252738418155052
	.quad	0x3fe6417d73490ff0              # double 0.69549438969306543
	.quad	0x3fa0f276de31e430              # double 0.033099856017493656
	.quad	0x3fd7c1c18a43b2ee              # double 0.37120092871081922
	.quad	0x3fde02bddaaaf54c              # double 0.46891733507421374
	.quad	0x3fef3045b34d05a2              # double 0.97464261073780656
	.quad	0x3fe46a59fb1f6995              # double 0.63798235938456804
	.quad	0x3fbde60a4e430948              # double 0.11679138575258208
	.quad	0x3fe0342c2af031c1              # double 0.50636871706370112
	.quad	0x3fe18873ba1649a9              # double 0.54790674538735573
	.quad	0x3fdd7108bb034894              # double 0.4600240541741496
	.quad	0x3fe6ce30af15e393              # double 0.71266969868075802
	.quad	0x3feba29cfc2292a6              # double 0.86360024685980785
	.quad	0x3fe1b943f63d984c              # double 0.55386541456096827
	.quad	0x3fd536658be07e7e              # double 0.33144510898453194
	.quad	0x3fde5f957775fb54              # double 0.47458397546863762
	.quad	0x3fc8abab0a76f934              # double 0.1927388955209125
	.quad	0x3fdc8c204f99b6d0              # double 0.44605262540322332
	.quad	0x3fea8efe81bb0ebc              # double 0.82995534265543069
	.quad	0x3fbacdaa32955e08              # double 0.10470069632480528
	.quad	0x3fec2fcdb821ecbb              # double 0.88083539927847398
	.quad	0x3fedce999f8900b9              # double 0.93146973761761054
	.quad	0x3fea2d8af62eacb4              # double 0.81805942614064131
	.quad	0x3fefdaf12f0b1aad              # double 0.99547633350524267
	.quad	0x3f6210bac6cd3000              # double 0.0022052429180003941
	.quad	0x3fe969764d0ba4cf              # double 0.79412379310556414
	.quad	0x3fc3085c625176b4              # double 0.14869265366262641
	.quad	0x3fc169ba19b04a2c              # double 0.13603903059318279
	.quad	0x3fe144135c35958d              # double 0.53956001290923583
	.quad	0x3fdba0e4dfcd01e2              # double 0.43169519286678171
	.quad	0x3fd1df970fd27478              # double 0.27927185578466363
	.quad	0x3fc45bc1505cd048              # double 0.15905014442398824
	.quad	0x3fe95ff399bb19be              # double 0.7929628374629869
	.quad	0x3feba04763c253bf              # double 0.86331529125401818
	.quad	0x3fe808e33d017992              # double 0.75108491816699741
	.quad	0x3fe59163fdf7522a              # double 0.67399787523988164
	.quad	0x3f4bb33f7a31c000              # double 8.4534263113589247E-4
	.quad	0x3fcd8199448c499c              # double 0.23051753851957535
	.quad	0x3fd1673805d61e3c              # double 0.27192497796974968
	.quad	0x3fdcf1f0d9908afa              # double 0.45226689573807699
	.quad	0x3fe86865ab04f4ca              # double 0.76274379160136019
	.quad	0x3fe6b45d9d574da7              # double 0.70951729517621664
	.quad	0x3fdddae11f7224d0              # double 0.46648433752905039
	.quad	0x3f93e8436aeafa00              # double 0.019440701866864529
	.quad	0x3fc50a744fe653e0              # double 0.16438154126504312
	.quad	0x3fd1f8a34601e756              # double 0.28080064617789924
	.quad	0x3fd9a6d1051f1c50              # double 0.40080667019032479
	.quad	0x3fe8037bcadfafae              # double 0.75042523978981079
	.quad	0x3fe3a7b0981b71b7              # double 0.61421994884908926
	.quad	0x3fe7cef5a8245708              # double 0.74401362266755289
	.quad	0x3feb86f32b2bca4e              # double 0.8602233737168008
	.quad	0x3fee5a43fd3dc8a1              # double 0.948518747913358
	.quad	0x3fe804823a2328b0              # double 0.75055037836979999
	.quad	0x3fe9d67fc27042b5              # double 0.80743396736405393
	.quad	0x3fb0e6bd8f36d330              # double 0.066020820106882594
	.quad	0x3fdd8c400043139c              # double 0.46168518090808575
	.quad	0x3fd4fc28bbe11706              # double 0.32789057109435793
	.quad	0x3fe0e91c842c2bdc              # double 0.52845598044347808
	.quad	0x3fe394d164b85e36              # double 0.61191625282203321
	.quad	0x3feae95c23be0464              # double 0.84098631840619164
	.quad	0x3fe6d3a5aeea4277              # double 0.71333583987332261
	.quad	0x3fef6ccb5dc7f030              # double 0.98203056637385622
	.quad	0x3fc598faf13ef38c              # double 0.16873108653626578
	.quad	0x3feeae8ad36c2185              # double 0.95880643170771462
	.quad	0x3fcbf455eb40dc74              # double 0.21839403140049607
	.quad	0x3fe3f59d720719e6              # double 0.62373230238955268
	.quad	0x3fd9b0b20ee8eef2              # double 0.40140963989300282
	.quad	0x3fe8963e364f4ef4              # double 0.76834021193869128
	.quad	0x3feadbae137613c3              # double 0.83931640435240984
	.quad	0x3fe8d84613d8a423              # double 0.77640060306760394
	.quad	0x3fe17a5f1ba67932              # double 0.54618792915770187
	.quad	0x3fd41132fef5aae4              # double 0.31354975603487234
	.quad	0x3fc42758a74be01c              # double 0.15745075386780705
	.quad	0x3feaa7e81d6bf7e6              # double 0.83299642321048561
	.quad	0x3fecc679d91fd92e              # double 0.89922802359686727
	.quad	0x3fee97c67c9666ba              # double 0.95602726300713603
	.quad	0x3fe44fdd9f601a2c              # double 0.6347492325592774
	.quad	0x3fc62b3796f990e4              # double 0.17319388267345126
	.quad	0x3fee94fff1b6c45c              # double 0.95568844995262791
	.quad	0x3fea5cb54e3fcf98              # double 0.8238169220262419
	.quad	0x3fd51325734838b8              # double 0.32929359682101333
	.quad	0x3fdee017e7e0b7bc              # double 0.48242757458035235
	.quad	0x3fedd0195e0841fc              # double 0.93165272107768215
	.quad	0x3fec6ebde1e69069              # double 0.8885182773706336
	.quad	0x3fb673c663c9c2e8              # double 0.08770408569558763
	.quad	0x3fd076ca216ad706              # double 0.2572503401128049
	.quad	0x3fef8ce432db53c0              # double 0.9859486573501428
	.quad	0x3feb15e1c77b1329              # double 0.84642113648496775
	.quad	0x3fd4e74a98b06e32              # double 0.3266169062714851
	.quad	0x3feddba9abebebf1              # double 0.93306430414611274
	.quad	0x3fe3576929f4abe8              # double 0.60442026323778197
	.quad	0x3fdf27fba0a5c50c              # double 0.48681536377178314
	.quad	0x3fdefaf38f9f37c6              # double 0.48406685853558107
	.quad	0x3fe62559d06bda59              # double 0.6920594282845044
	.quad	0x3fe87f6fc35aa759              # double 0.76555622248745714
	.quad	0x3fd59d070ab587ca              # double 0.3377091984349333
	.quad	0x3feff6e086973aa1              # double 0.99888635909322343
	.quad	0x3fec42ecb531c298              # double 0.88316951169516056
	.quad	0x3fe67fb4bc39a6b0              # double 0.70308911097273175
	.quad	0x3fe29ed1420317d7              # double 0.58188689129814974
	.quad	0x3fcdc0b038ccba34              # double 0.23244288228438992
	.quad	0x3fb56d8e865c56f0              # double 0.083702953150659231
	.quad	0x3fe312eb0463ac43              # double 0.59605933053297411
	.quad	0x3fdc203600acbc98              # double 0.43946600023168392
	.quad	0x3fa546051f54f730              # double 0.041549835276312286
	.quad	0x3fc366174e75afa4              # double 0.15155307131805984
	.quad	0x3fe55affa4e3bcc0              # double 0.66735822873115325
	.quad	0x3fc68475a0dd27a4              # double 0.17591734270746173
	.quad	0x3fee0575c961f30f              # double 0.93816651661436079
	.quad	0x3feda489fe5f9f8b              # double 0.92633533174829219
	.quad	0x3fd45aee86c520f8              # double 0.31805003319870151
	.quad	0x3fe2812a27abac70              # double 0.57826717136539507
	.quad	0x3fdcde842616e8ca              # double 0.45108131141354291
	.quad	0x3fe1e91b0b499f00              # double 0.55970527844053208
	.quad	0x3fe50a1e1f83b20d              # double 0.65748506693995667
	.quad	0x3fca6a0b13597360              # double 0.20636118359370936
	.quad	0x3fc5ce209b18efec              # double 0.17035300801387565
	.quad	0x3fd9df27989cfc66              # double 0.40424528030047779
	.quad	0x3fed5f16cc756d07              # double 0.9178575509389767
	.quad	0x3fc56564b633f360              # double 0.16715678116443211
	.quad	0x3fc32351b6071864              # double 0.14951535595008913
	.quad	0x3fdd87eeae9adf18              # double 0.46142165232912324
	.quad	0x3fa33964ee945510              # double 0.037547258494820324
	.quad	0x3fec9878adf94cb5              # double 0.89361223201048878
	.quad	0x3fc3085e57ea30e8              # double 0.14869288723674079
	.quad	0x3fe5c8dae97de4c6              # double 0.68076844791280489
	.quad	0x3fe7a1baed7664e3              # double 0.73849245433225652
	.quad	0x3fd119330da14bb6              # double 0.26716305094776815
	.quad	0x3fef4f9fc10ecd7b              # double 0.97846973139387161
	.quad	0x3fddd686e2c85888              # double 0.46621868273485534
	.quad	0x3f800ef694775a00              # double 0.0078410400446218275
	.quad	0x3fe4fa4aa993d21c              # double 0.65555317993727469
	.quad	0x3fbdf70696eb81e0              # double 0.11705056366509536
	.quad	0x3fe3df3d5e5be1f2              # double 0.62100094251132831
	.quad	0x3fee6d1a4de2cd9f              # double 0.9508182069025003
	.quad	0x3fe5f047b87e42bf              # double 0.68558107408360758
	.quad	0x3feba13e4b11a81f              # double 0.86343302404316435
	.quad	0x3fd51ec1b75bc424              # double 0.33000224023914115
	.quad	0x3fe3ab5586ef68d0              # double 0.61466480593233008
	.quad	0x3fec34adc26878fd              # double 0.88143051119166638
	.quad	0x3fc62107cdec6d58              # double 0.17288301043377419
	.quad	0x3fe74e7a208ebf7d              # double 0.72832971915157396
	.quad	0x3fc3cf9cd9079e7c              # double 0.15477333638340329
	.quad	0x3fd2661e2d090cc0              # double 0.2874827804373119
	.quad	0x3fe43ba6daa1162f              # double 0.63228171063446392
	.quad	0x3feb05a413470923              # double 0.84443858876355582
	.quad	0x3fe87f3032441d12              # double 0.76552591149894256
	.quad	0x3fe7b4e1ce6fd709              # double 0.74083032912923941
	.quad	0x3fe7ad72f6503850              # double 0.73992298229291897
	.quad	0x3fe568b353a7d3be              # double 0.66903082217196874
	.quad	0x3fb4f5006de30150              # double 0.081863428905312618
	.quad	0x3fc04aaf74a484c0              # double 0.12727921672288822
	.quad	0x3fee2945b97d04b6              # double 0.94253813007539722
	.quad	0x3fde4265397cb8b2              # double 0.47280245412811006
	.quad	0x3fe956eea8abac85              # double 0.79186184829212947
	.quad	0x3fa3bebe7bc55da0              # double 0.038564636811027286
	.quad	0x3feb443f70453008              # double 0.85208103111062972
	.quad	0x3fe5922d841f07ea              # double 0.67409396939205846
	.quad	0x3fcc67f0dc5cbec4              # double 0.22192202339055289
	.quad	0x3fe17b10ef5f240b              # double 0.54627272369646229
	.quad	0x3fd1993ffb035efc              # double 0.27497863305096337
	.quad	0x3fd3814d96de5fbc              # double 0.30476703389421878
	.quad	0x3fd21de023f57c4e              # double 0.28307345878233015
	.quad	0x3fcc1bdcf9a65684              # double 0.21960031690530368
	.quad	0x3fbdc0cc3df8f340              # double 0.11622311127662233
	.quad	0x3f8aafe2a46e3dc0              # double 0.013030787127518262
	.quad	0x3fd45c96ded55eca              # double 0.31815120469171332
	.quad	0x3fe7d59d1f0ed575              # double 0.74482589784626774
	.quad	0x3fe42fcffa0c6880              # double 0.63083647573081691
	.quad	0x3fe032d68c59a0ff              # double 0.50620582019931237
	.quad	0x3fcab925cb74c264              # double 0.2087752574384637
	.quad	0x3fe0c21264d29344              # double 0.52369041149049922
	.quad	0x3fdba966f8883fb0              # double 0.43221449156498704
	.quad	0x3fbc009e97e928c8              # double 0.10938445290335885
	.quad	0x3fd234a698646de4              # double 0.28446354753552172
	.quad	0x3feb48265dce280b              # double 0.85255735703799596
	.quad	0x3fe325d1fb738d77              # double 0.59836672889325271
	.quad	0x3fc00999cb30767c              # double 0.12529299184182097
	.quad	0x3fe93af3e5c413a5              # double 0.78844637752682856
	.quad	0x3fd51405fdca1cb0              # double 0.32934713157778628
	.quad	0x3fdc7a9e221d40c2              # double 0.44498399096938723
	.quad	0x3fe46cad0214af24              # double 0.63826609045415639
	.quad	0x3fe480d5f551a101              # double 0.6407270232566874
	.quad	0x3fd62fff82000340              # double 0.34667957015340178
	.quad	0x3fea27018e77aebe              # double 0.81726148439107482
	.quad	0x3fee4ce5dc5c24aa              # double 0.9468869499115915
	.quad	0x3feee1c13c8870f3              # double 0.9650579626354826
	.quad	0x3fdce66181a1a402              # double 0.45156133326833026
	.quad	0x3fe5ed060451047b              # double 0.68518353312550973
	.quad	0x3fde2d3a63cd6dfa              # double 0.47151050325712129
	.quad	0x3fe88668f16e9a06              # double 0.76640746264166704
	.quad	0x3fd3bb0519a778d4              # double 0.3082897902039694
	.quad	0x3fd37a7f39072f3c              # double 0.30435162133356974
	.quad	0x3fde612eac7cf9e8              # double 0.47468153805303226
	.quad	0x3fdb758f42042312              # double 0.42905026862040174
	.quad	0x3fddec31453d623a              # double 0.46754104386994622
	.quad	0x3fe1875b6d4a0a20              # double 0.54777308793592638
	.quad	0x3fe8cdcc4145f2bc              # double 0.77512181042364813
	.quad	0x3fd41e3bf4cd3a4a              # double 0.31434534937298919
	.quad	0x3fd588d4595c3b40              # double 0.33647640921201472
	.quad	0x3fd20f47ccfe2120              # double 0.28218264597718878
	.quad	0x3feae0ea19bee50a              # double 0.83995537785008989
	.quad	0x3fbfbe5ca532fe40              # double 0.12399844201262855
	.quad	0x3fd39d6804b284e6              # double 0.30648231943821569
	.quad	0x3fb9ae63ed624ef8              # double 0.10031723542698134
	.quad	0x3fe774f846d22cbe              # double 0.73302854377961757
	.quad	0x3fc597aa36b555c4              # double 0.16869094535165463
	.quad	0x3fe12dde18306717              # double 0.53684906696728063
	.quad	0x3fd5316ee7ce0430              # double 0.33114216458494905
	.quad	0x3fdf3ec4600d216e              # double 0.48820599918373986
	.quad	0x3f94afd26bf31fa0              # double 0.020201957548834693
	.quad	0x3fc9e328a0367918              # double 0.20224483321084885
	.quad	0x3fe88ede29dbcaec              # double 0.76743992019177431
	.quad	0x3fcff1f9940ce324              # double 0.24957198838253547
	.quad	0x3fe5e5d6b9720707              # double 0.68430649013336697
	.quad	0x3fedeb8a14be50be              # double 0.93500236560296179
	.quad	0x3fc4f853fa9f4400              # double 0.16382837045105703
	.quad	0x3fd2afbb55d67968              # double 0.29197581656071359
	.quad	0x3fd063c381a4fe00              # double 0.25608909283252501
	.quad	0x3fab08fcb8b91260              # double 0.052802941846071816
	.quad	0x3fccb5bc4d6a6c88              # double 0.22429612903656371
	.quad	0x3fe537f65412298f              # double 0.66308132572275891
	.quad	0x3fea0a76362893da              # double 0.81377707078774653
	.quad	0x3fc6d22655e1250c              # double 0.1782882613499982
	.quad	0x3fc512543ab42de8              # double 0.16462185732267121
	.quad	0x3fdef02384bf7792              # double 0.48340690578140155
	.quad	0x3fcc8075779be484              # double 0.22267025318413769
	.quad	0x3fcf0651ce59e708              # double 0.24238035751096043
	.quad	0x3fe0ef1b58eafca7              # double 0.52918784491329951
	.quad	0x3fc60379f697b798              # double 0.17198109188705923
	.quad	0x3fe3c4504ccd5a88              # double 0.61771407127783196
	.quad	0x3fe6d51ec15789ec              # double 0.71351564180468818
	.quad	0x3fe49d271340f4af              # double 0.64418367157454337
	.quad	0x3fe1f465ce51ac5c              # double 0.56108370110213057
	.quad	0x3fdde5d3d67f1d94              # double 0.46715255686691504
	.quad	0x3fdb22dc6d528b32              # double 0.42400274921435532
	.quad	0x3fe5fc70307b3e70              # double 0.68706521481540328
	.quad	0x3fe7c55795559a4c              # double 0.74283961455223269
	.quad	0x3fd5a5a6db57ab96              # double 0.33823558254396724
	.quad	0x3fbd46399207ca00              # double 0.11435279669948528
	.quad	0x3fd8e3ca7109c442              # double 0.38890324629671025
	.quad	0x3feb0bce193f9b3c              # double 0.84519104892101593
	.quad	0x3fd3c258b15d4522              # double 0.30873696633087111
	.quad	0x3fd24d1b9518d1ba              # double 0.28595628319024124
	.quad	0x3feac96a00cac977              # double 0.83708667902673894
	.quad	0x3fe64f8d9c229e9f              # double 0.69721107955134076
	.quad	0x3fedc2e3f8a9ae17              # double 0.93004034583049389
	.quad	0x3fe6f7fd49245920              # double 0.71777214322608884
	.quad	0x3fda8373d0a7f698              # double 0.41427321793148897
	.quad	0x3fcabd02c832bef0              # double 0.20889315390876773
	.quad	0x3fe400824f8eb858              # double 0.62506213701795854
	.quad	0x3fe2407ecf34f33d              # double 0.57037296743474253
	.quad	0x3fa0902f3e18cf90              # double 0.032350040750684816
	.quad	0x3feced4183045556              # double 0.90396190251582698
	.quad	0x3fe79e32d6a8352f              # double 0.73806135106284454
	.quad	0x3fc5eef921f177e0              # double 0.17135538251289884
	.quad	0x3fe1f6ed8ddae78e              # double 0.56139257150720012
	.quad	0x3fe5a65c2c42552f              # double 0.67655762333257552
	.quad	0x3fed0f0dfb62dc29              # double 0.90808772181379027
	.quad	0x3f55ddc0cac61600              # double 0.001334608338852461
	.quad	0x3fe7d07286071672              # double 0.74419523408205479
	.quad	0x3fdfcad6b65f8dec              # double 0.49675529298676113
	.quad	0x3fcb16b14e545788              # double 0.21163002323799796
	.quad	0x3fe59365e513c044              # double 0.6742429231799254
	.quad	0x3fe55ec982fbff7f              # double 0.66782069762119523
	.quad	0x3fd016f41df4328a              # double 0.25140097546754048
	.quad	0x3fc2252dd0cc9650              # double 0.14175961203834442
	.quad	0x3fd7e0ac7035ce22              # double 0.37308798749947603
	.quad	0x3feba67e092c29e8              # double 0.86407377044207312
	.quad	0x3fca04ece7696774              # double 0.20327531146432032
	.quad	0x3fdc6d85bb4769e6              # double 0.44418471611939336
	.quad	0x3fc6b12d2bda6354              # double 0.1772819961668356
	.quad	0x3fc0a021dab09f40              # double 0.12988684824198948
	.quad	0x3fd835243f502138              # double 0.37824350531493023
	.quad	0x3f9848bf6c072860              # double 0.023715010612967879
	.quad	0x3fd894330174207c              # double 0.38404536382632393
	.quad	0x3feb50ed08f906a4              # double 0.85362865211955751
	.quad	0x3fc48c25edad0df0              # double 0.16052698235772267
	.quad	0x3fb0a6e7c3337020              # double 0.065046773106076206
	.quad	0x3feee11a74cf247d              # double 0.96497843565261087
	.quad	0x3fc0d9b8ad646d54              # double 0.13164432970448081
	.quad	0x3fa8afa61aec5a20              # double 0.048215094362763944
	.quad	0x3fe050c0820e783d              # double 0.50985741998352518
	.quad	0x3fe86461a80ff5c7              # double 0.76225359749485555
	.quad	0x3fc8f7651ab0c7f8              # double 0.1950498943638761
	.quad	0x3fe569ebfd91147f              # double 0.66917991184949688
	.quad	0x3fddc124327b5808              # double 0.46491341523994878
	.quad	0x3fe87c149d4f279e              # double 0.76514654850437913
	.quad	0x3fe83a1c3cc4f191              # double 0.75709354275709206
	.quad	0x3fc19a503745318c              # double 0.13752176951164718
	.quad	0x3fde903194ad231e              # double 0.4775508834759864
	.quad	0x3fec7b73a670596e              # double 0.89006979472723713
	.quad	0x3fc0241b84bbbcfc              # double 0.12610191327210163
	.quad	0x3fef5f4aae71ed65              # double 0.98038229056639336
	.quad	0x3fd0af201e25fd46              # double 0.26068880981616294
	.quad	0x3f8569bc5440e940              # double 0.010455581017698834
	.quad	0x3fada2c449730f90              # double 0.057882436719892572
	.quad	0x3fb2b08682854510              # double 0.073006064286591732
	.quad	0x3fc8b2c14cefd114              # double 0.19295517212561519
	.quad	0x3fe2130ab281056e              # double 0.56482443679867145
	.quad	0x3fd22b4f69c6f800              # double 0.28389344529921345
	.quad	0x3f80a036c4262600              # double 0.0081180838212899786
	.quad	0x3fe57e759e2f3643              # double 0.67168694396395556
	.quad	0x3fd766d3747e87ba              # double 0.36565100075142321
	.quad	0x3fe7de99858779de              # double 0.74592281417772788
	.quad	0x3fd1997e79e1021a              # double 0.27499353315582342
	.quad	0x3fe02915edaff71a              # double 0.50501533912003826
	.quad	0x3fe72a5b5ed452e3              # double 0.72392052193989931
	.quad	0x3fe0c3bec3f3534a              # double 0.52389467498378761
	.quad	0x3f8e0f092a6e1d00              # double 0.01467711601959687
	.quad	0x3feca97c98018ec3              # double 0.89568929375351336
	.quad	0x3faebf96b16c17b0              # double 0.060055455358493659
	.quad	0x3fcd19b59fa9addc              # double 0.22734709068332293
	.quad	0x3fc4db3a4458d2cc              # double 0.16294029557470535
	.quad	0x3fededbdf0e79d29              # double 0.93527123500544918
	.quad	0x3fd3bcb37d66fc40              # double 0.30839240309063953
	.quad	0x3fe01f73f8385782              # double 0.50383947830663112
	.quad	0x3fe98d188b6096c1              # double 0.79847361776474923
	.quad	0x3fd9e622c5f8a3e8              # double 0.40467137654428464
	.quad	0x3fce1865de3687bc              # double 0.23511956548924029
	.quad	0x3fe1032778c11b82              # double 0.53163503250912947
	.quad	0x3fd06559b2082702              # double 0.25618593583986649
	.quad	0x3fe97340668a37ba              # double 0.79531879451109622
	.quad	0x3fdaf7f00555c5f2              # double 0.42138290902138842
	.quad	0x3fd49a7594405404              # double 0.3219274471060205
	.quad	0x3fe775eccc938664              # double 0.73314514118483176
	.quad	0x3f76853f10c89680              # double 0.0054981673716035795
	.quad	0x3fdfb1ca7be8b9e2              # double 0.49522649860855783
	.quad	0x3fef6679037a522a              # double 0.9812588756490801
	.quad	0x3fc78e5ec9dadfe8              # double 0.18403229576301716
	.quad	0x3fe55149f02b78bd              # double 0.66617295177618241
	.quad	0x3fc8d0e234498458              # double 0.193874621897552
	.quad	0x3fe6892df7774d30              # double 0.70424555142600376
	.quad	0x3fd9dfeaa2db9eee              # double 0.40429178146449274
	.quad	0x3feac158dfb71ee7              # double 0.83610194868466869
	.quad	0x3fa646fa14e65ef0              # double 0.043510260630851394
	.quad	0x3f76d7c69dab7100              # double 0.0055768736299024457
	.quad	0x3fa4674308b3d4d0              # double 0.039850325405419107
	.quad	0x3fd8145751a2d112              # double 0.37624152157083401
	.quad	0x3feb8014c0e4ae3e              # double 0.85938489603490331
	.quad	0x3fe681bc4e4a69e5              # double 0.70333686152599439
	.quad	0x3fb803435cf64938              # double 0.093799791522802489
	.quad	0x3fc6a20826fc2024              # double 0.17681981948430903
	.quad	0x3fe72d687b50e2a9              # double 0.72429298482082516
	.quad	0x3fdc5d945969c0bc              # double 0.44321163875339287
	.quad	0x3fe077af43769c7f              # double 0.51460993935042143
	.quad	0x3fd54e787786225c              # double 0.332914463732356
	.quad	0x3fe07a85b172587a              # double 0.51495632798720625
	.quad	0x3fe03bcda2db63a7              # double 0.50730020339971282
	.quad	0x3fe3df71c8e85215              # double 0.62102593650576188
	.quad	0x3fe23b7fdcc85cd2              # double 0.56976311799635426
	.quad	0x3febda9709535153              # double 0.87043334790591087
	.quad	0x3fd4d0f96ec60ee6              # double 0.32525478189221102
	.quad	0x3fec043fd3e6d63b              # double 0.87551871668865233
	.quad	0x3fe7c1d26acb787c              # double 0.74240990503655224
	.quad	0x3fe14dace31dccc5              # double 0.54073185309098248
	.quad	0x3fe905118f6f17b3              # double 0.78186872496075066
	.quad	0x3fd3d0d725c95bc0              # double 0.30962160768597968
	.quad	0x3fecf3d08ee04566              # double 0.90476253419380437
	.quad	0x3fe37eca8e951da0              # double 0.6092274460615279
	.quad	0x3fe25a8f8f815039              # double 0.57355478313775798
	.quad	0x3fe25c316cecab21              # double 0.57375403665841784
	.quad	0x3fd34dfd6dfc721e              # double 0.30163512936431569
	.quad	0x3fddacdfb065ec46              # double 0.46367637850170629
	.quad	0x3fe930fce2a84e1c              # double 0.78722996014625179
	.quad	0x3fdc72582e91be0c              # double 0.44447903201850703
	.quad	0x3fdf1e4352ac79de              # double 0.48622210572821511
	.quad	0x3fcce61de4e70d0c              # double 0.22577260662919973
	.quad	0x3fe1a296bca2ec63              # double 0.55109726756144217
	.quad	0x3f9a16bff8ea7ac0              # double 0.025477408950446145
	.quad	0x3fecea418b606a8d              # double 0.90359570714947923
	.quad	0x3fa5fc7a8a55b3c0              # double 0.042941884409493536
	.quad	0x3fbc59c6e1d5f3e8              # double 0.11074488652771175
	.quad	0x3fef7ff972aecfda              # double 0.98437187575336371
	.quad	0x3fe586fe9b20a38e              # double 0.67272882746066087
	.quad	0x3f9033b1e7336960              # double 0.015822200523737506
	.quad	0x3fe544b557ec9d90              # double 0.66463725254736694
	.quad	0x3fdf6919bd68da08              # double 0.49078982827214235
	.quad	0x3fd57721333ad9c8              # double 0.33539609911840929
	.quad	0x3fc0370da96e74c4              # double 0.12668009541531522
	.quad	0x3fe0ca6c91d3d49f              # double 0.52470997316290269
	.quad	0x3fd8d8f8cccb0422              # double 0.38824291228599084
	.quad	0x3fe0b7d3656ad803              # double 0.52243966873243186
	.quad	0x3fec10d0f3abf724              # double 0.87705276100289042
	.quad	0x3fe1c127404e2d4f              # double 0.55482828673977191
	.quad	0x3fe8c40d956db80e              # double 0.7739322584654944
	.quad	0x3f810f17c37c8ac0              # double 0.008329568532251641
	.quad	0x3fad113a6912ea60              # double 0.056772065473940314
	.quad	0x3fb8b65727567818              # double 0.096532294372508765
	.quad	0x3fea9ce0d68c367a              # double 0.83165017989968182
	.quad	0x3fded13ee6534d68              # double 0.48152134411539871
	.quad	0x3feb85d62b385d54              # double 0.86008747521820305
	.quad	0x3fcd2645d0b1e608              # double 0.22773049059087236
	.quad	0x3fe1e08e128e1df7              # double 0.55866149543811516
	.quad	0x3fd369d375cb5484              # double 0.3033341074308924
	.quad	0x3fd5d8992c47cb5e              # double 0.34134511303198234
	.quad	0x3fe0a0a7507ea92b              # double 0.51961103173861056
	.quad	0x3fd5d06817bd8408              # double 0.34084513014210005
	.quad	0x3fe0e78b543b0b29              # double 0.52826467944428146
	.quad	0x3fd0bcf317e1ffc6              # double 0.26153256733232089
	.quad	0x3fb3f25aab253e80              # double 0.077916781219068198
	.quad	0x3fe66f316f5f8378              # double 0.70107337715681606
	.quad	0x3fe76b8c3f3d876f              # double 0.73187839843397551
	.quad	0x3febb833828fdb67              # double 0.86623549938563549
	.quad	0x3fe2069a2ee65fac              # double 0.56330594215522956
	.quad	0x3feb97a76d8711a7              # double 0.86226245300399718
	.quad	0x3fe76fb44e2097c3              # double 0.73238578089944217
	.quad	0x3fd32ab48c66c2d8              # double 0.29948152266574146
	.quad	0x3fbd6e42573c4560              # double 0.11496367101451233
	.quad	0x3fe6d94266982722              # double 0.71402092016180441
	.quad	0x3fa7f554d6e8def0              # double 0.046793605074013089
	.quad	0x3fdbd168651c11a2              # double 0.43465623735417058
	.quad	0x3fb464d30995e0c0              # double 0.079663457718086583
	.quad	0x3fe81a4ad664864c              # double 0.75320951341218167
	.quad	0x3fccaf5bc16ab9c4              # double 0.22410151428398539
	.quad	0x3fef1861c0a99c04              # double 0.97172629956628542
	.quad	0x3fdf99b51da7404a              # double 0.49375656028587811
	.quad	0x3fa769ac19676040              # double 0.045728090382624931
	.quad	0x3fe3748461c94dd3              # double 0.60797328089614167
	.quad	0x3fedfb3e60d3d56c              # double 0.93691939269653579
	.quad	0x3f9100fa80de6120              # double 0.016605295291442279
	.quad	0x3fd602c1361c26a2              # double 0.34391813549209804
	.quad	0x3fe8aa4a91464108              # double 0.770787509669419
	.quad	0x3fdb4a13adcf9886              # double 0.42639629338953744
	.quad	0x3fe75db54a28bc8c              # double 0.73018898472027294
	.quad	0x3fc823debf00c298              # double 0.18859466863934382
	.quad	0x3fd00242d03691b6              # double 0.25013799985233776
	.quad	0x3fef9a1c68ad3dff              # double 0.9875623745410279
	.quad	0x3fe326deee65774b              # double 0.59849497377192884
	.quad	0x3fd6d868081030c2              # double 0.35695839679170771
	.quad	0x3fda26a09104475c              # double 0.40860761796749556
	.quad	0x3fefc0a274dce748              # double 0.9922649652937503
	.quad	0x3feac8f63cb36946              # double 0.83703147750501539
	.quad	0x3fe9d942cd0fc950              # double 0.80777111102205801
	.quad	0x3fe01252a6c03ed4              # double 0.50223667686983697
	.quad	0x3fe8e353b138d717              # double 0.77774986852338912
	.quad	0x3fe01adad74f91c0              # double 0.50327817967313848
	.quad	0x3fe2eb825d460419              # double 0.59124868600349878
	.quad	0x3fec07f399ef8dd1              # double 0.87597065034463573
	.quad	0x3fd4e7d664a4c612              # double 0.32665023640137847
	.quad	0x3fe0df07457eec4d              # double 0.52722514699360945
	.quad	0x3fd0270528d6f6d4              # double 0.2523816012215836
	.quad	0x3fd17daa9110546a              # double 0.27329506079087784
	.quad	0x3fcdfcce1f506550              # double 0.23427750138288639
	.quad	0x3fea098793b492d1              # double 0.8136632809515395
	.quad	0x3fb439c8b505bce0              # double 0.079006714053082572
	.quad	0x3fdf2a9421b3ddc2              # double 0.48697379390020157
	.quad	0x3fe318b2b8c9d2b7              # double 0.59676490870932397
	.quad	0x3fe6710eb7339ad6              # double 0.70130096227225169
	.quad	0x3fe9b99d582ba648              # double 0.8039080354767032
	.quad	0x3fd736aa6725a96c              # double 0.3627115256591853
	.quad	0x3fb476263eb0abf8              # double 0.079927816682058395
	.quad	0x3fdb45e459cf3922              # double 0.42614086885886782
	.quad	0x3fcb75e97998c958              # double 0.21453588902802312
	.quad	0x3fbf6d3250855290              # double 0.12275995698775888
	.quad	0x3fd26155dde625bc              # double 0.28719088239503399
	.quad	0x3fbbf8bfb8eb1a48              # double 0.10926435722931516
	.quad	0x3fbea857636e2350              # double 0.11975618531699905
	.quad	0x3fc2a15a1b4a7a6c              # double 0.1455490716225144
	.quad	0x3fe9aa38b32c2819              # double 0.80202898974062287
	.quad	0x3fe5919e32f614ef              # double 0.6740256305062341
	.quad	0x3fed9d5b8b30cde6              # double 0.92545869050667018
	.quad	0x3fb29a6cf768d930              # double 0.072668848421788779
	.quad	0x3fee71aca73b0e13              # double 0.95137627279513237
	.quad	0x3fe647ed32c03928              # double 0.69628009712485994
	.quad	0x3fe10cefb3808b0b              # double 0.53282914217956667
	.quad	0x3fe25a1ee83474eb              # double 0.57350106575509352
	.quad	0x3fe997f5ae66cba1              # double 0.79979976713945089
	.quad	0x3feced260157fd0f              # double 0.90394878637735754
	.quad	0x3feb6ccccc404be1              # double 0.85703124897770178
	.quad	0x3fd6f5d9f50fb2a2              # double 0.35875557834405403
	.quad	0x3feaeaad08176f59              # double 0.84114696102504205
	.quad	0x3fef7518d63b625e              # double 0.98304406969243607
	.quad	0x3febf802d932d548              # double 0.87402479573817349
	.quad	0x3fe2dc592bf4f85e              # double 0.58939798913321417
	.quad	0x3fd5b8252cb93038              # double 0.33936433188933135
	.quad	0x3fe26f63804e15b6              # double 0.57609725055288297
	.quad	0x3fc75e230782b51c              # double 0.18256032816626877
	.quad	0x3fd682b2109d1a7c              # double 0.35172702429228031
	.quad	0x3fd84233872d6c8a              # double 0.37904060555383323
	.quad	0x3fd3eb8857fd720a              # double 0.31125076859260103
	.quad	0x3fc740982b4c35c4              # double 0.1816587649740723
	.quad	0x3fedb7b3847733e6              # double 0.92867446777529206
	.quad	0x3fe82de8ca69971a              # double 0.75560416730579338
	.quad	0x3f595e39bd60f200              # double 0.0015483440270279702
	.quad	0x3fe6015daf70414b              # double 0.687666742947877
	.quad	0x3fdc3f8c8db04cb0              # double 0.4413787254026813
	.quad	0x3fc7150201c76e88              # double 0.18032860838762965
	.quad	0x3fa24b04ab2ecfe0              # double 0.035728593727440972
	.quad	0x3fe3bd3efde5a477              # double 0.61685132588640001
	.quad	0x3fe71a08797ec14c              # double 0.72192786912459317
	.quad	0x3fd7a4907e1872f0              # double 0.36941921533597988
	.quad	0x3fd46e077081bbb4              # double 0.31921564089764876
	.quad	0x3f84856dff52c1c0              # double 0.010020121912334257
	.quad	0x3fee302a9fa063a6              # double 0.94337969948820866
	.quad	0x3fecc450ea80f288              # double 0.8989643650198369
	.quad	0x3fe3303d9404b03e              # double 0.59963873777224541
	.quad	0x3fe8e4e523fd3cd7              # double 0.77794129399435519
	.quad	0x3fef09d35578e12d              # double 0.96994940465723333
	.quad	0x3fed4843a4e6caf2              # double 0.91507131774264239
	.quad	0x3fe467c9f9941507              # double 0.63766955133238035
	.quad	0x3fe6572613d96b48              # double 0.69813827397170147
	.quad	0x3fefd89dc9958aa2              # double 0.99519242641357075
	.quad	0x3fbf875fd434cfd0              # double 0.12315939837281964
	.quad	0x3fb983d64925c4d0              # double 0.099667923792156942
	.quad	0x3fb026d17b8e5398              # double 0.063092320122747458
	.quad	0x3fe7a02d35117398              # double 0.7383028065192887
	.quad	0x3fd03d29db26df92              # double 0.25373312379405732
	.quad	0x3f85aee004b53900              # double 0.010587453979181038
	.quad	0x3fe53d7243718c07              # double 0.66375077412192318
	.quad	0x3fe5d75618d3b41e              # double 0.68253617142693535
	.quad	0x3fe309387e05f6c1              # double 0.59487557043004113
	.quad	0x3fe50393c2b4abd6              # double 0.65668666866747105
	.quad	0x3fdc2a43e117187c              # double 0.44007966023890055
	.quad	0x3fe4d85ef41b47bf              # double 0.65141246487677751
	.quad	0x3fd48b03d737ef84              # double 0.3209848024123334
	.quad	0x3f455b3fe5fa7000              # double 6.5174694096326036E-4
	.quad	0x3fda84daae206230              # double 0.41435877804318277
	.quad	0x3fd926a8845e7b12              # double 0.39298451353708785
	.quad	0x3fdaa6646cf8a3aa              # double 0.41640577928279277
	.quad	0x3fe30d299c33eee4              # double 0.59535675533649313
	.quad	0x3fca3e07bbb2ac0c              # double 0.20501801171244016
	.quad	0x3fb4be0044e33438              # double 0.081024185960999584
	.quad	0x3fbf03572bb443c0              # double 0.12114472214695038
	.quad	0x3fb785ee14a44f20              # double 0.091887359656820156
	.quad	0x3fe53edcd01132f5              # double 0.66392365110513529
	.quad	0x3fe28fa767be9705              # double 0.58003587973209447
	.quad	0x3fcb92239382f504              # double 0.21539730742180307
	.quad	0x3fce60a5e78522d4              # double 0.23732446484270631
	.quad	0x3fe5ce670841cde0              # double 0.68144561398224468
	.quad	0x3fd6922c6c5f92a6              # double 0.35267172416051051
	.quad	0x3fe084a32147d27d              # double 0.51619106769665246
	.quad	0x3fd619654acad6b2              # double 0.3453000288385325
	.quad	0x3fe199d513dde966              # double 0.55002836113207532
	.quad	0x3fea1a733069aa5b              # double 0.81572875457397787
	.quad	0x3fea8a15f2080437              # double 0.82935616752377583
	.quad	0x3fe723f8ce816bf6              # double 0.72314110119930208
	.quad	0x3fde12b7ff69e620              # double 0.46989250128499016
	.quad	0x3feb945ca76ef011              # double 0.86186058713747304
	.quad	0x3fb5a3b48d59c7b8              # double 0.084529194364022398
	.quad	0x3fde113ad778c512              # double 0.46980162660754943
	.quad	0x3fdbc4e9a3351e30              # double 0.43389359415275219
	.quad	0x3fefbe6e389cdaef              # double 0.99199591691180255
	.quad	0x3fedc4003c7679fd              # double 0.93017589387073907
	.quad	0x3fa457d793dab740              # double 0.039732682036044853
	.quad	0x3fe3eb56ba5eebd2              # double 0.62247787857574566
	.quad	0x3fd3574360577a14              # double 0.30220112236375596
	.quad	0x3fa9d9eb8e91a0e0              # double 0.050490723756242195
	.quad	0x3fe39dc6f509b133              # double 0.6130099092384057
	.quad	0x3fe74f71c732211f              # double 0.72844780831750089
	.quad	0x3fe49039986140ec              # double 0.64260558854769334
	.quad	0x3fcde469385fea10              # double 0.23353305103940203
	.quad	0x3fb59ddf7c822cc0              # double 0.08444020070799052
	.quad	0x3fea474a896093d6              # double 0.82120253402228616
	.quad	0x3fd58d5bbc0c5674              # double 0.33675282825547659
	.quad	0x3fd048968b77a43a              # double 0.25443042392595638
	.quad	0x3fe740054c4401ed              # double 0.72656502624164221
	.quad	0x3fe8323ac0860e19              # double 0.75613153078342343
	.quad	0x3fd1edc15aa58c34              # double 0.28013643123830723
	.quad	0x3fe5fc60c58fe3a5              # double 0.68705786310521388
	.quad	0x3fdf7a3b5c76bc0a              # double 0.49183544187229755
	.quad	0x3fd8f835d8f8dc56              # double 0.39014955700571841
	.quad	0x3fdab3edfc52c870              # double 0.41723203316644852
	.quad	0x3fe643bd58113491              # double 0.69576899719835883
	.quad	0x3fdea5909fc7ec1e              # double 0.4788552818642432
	.quad	0x3fe66ed4ac688452              # double 0.70102914498796509
	.quad	0x3febff3fa9e158d3              # double 0.87490828685511202
	.quad	0x3fe63d2bf8fd67e0              # double 0.69496725684006933
	.quad	0x3fd8855cfc6fb15c              # double 0.38313984539015222
	.quad	0x3fc33159329631cc              # double 0.14994349451116162
	.quad	0x3fb61ebd69f8ad88              # double 0.086406553623126325
	.quad	0x3f92717a9d2bfd40              # double 0.018011012881286037
	.quad	0x3fe911104d0d4002              # double 0.7833329682271144
	.quad	0x3fc50faa0ce943ac              # double 0.16454053526333945
	.quad	0x3fe118225b1f8680              # double 0.53419606969346489
	.quad	0x3fe072b6d7683504              # double 0.51400320121470644
	.quad	0x3fd7c4b0790e33ea              # double 0.37137996503662285
	.quad	0x3fdba917e5979b4a              # double 0.43219563885798051
	.quad	0x3fe8b526b1563387              # double 0.77211317668989998
	.quad	0x3fdcb86877a19dee              # double 0.44875537569757185
	.quad	0x3fd53e341af75b9a              # double 0.33192160256788272
	.quad	0x3fbfdc319691fe90              # double 0.12445363927872166
	.quad	0x3fe346e5ed4347e1              # double 0.60240455952066096
	.quad	0x3fd215b389826804              # double 0.2825745432725173
	.quad	0x3fe0f7cec34aff34              # double 0.53024995940356812
	.quad	0x3fe814500a17e03f              # double 0.75247957202282822
	.quad	0x3fc1b14d6feec50c              # double 0.13822334256614288
	.quad	0x3fe4ce93722b02a2              # double 0.65021679209174388
	.quad	0x3fe5a8df0e6b4cc8              # double 0.67686417404402111
	.quad	0x3fe80ba5eb00cf41              # double 0.7514218892961041
	.quad	0x3fdd3a39ffd6ee4e              # double 0.45667886719067929
	.quad	0x3fcf9c2e38ed3d98              # double 0.24695375232338956
	.quad	0x3fd531b8a8e24744              # double 0.33115974896019318
	.quad	0x3fef94d8f1ae2b1f              # double 0.98691985324089503
	.quad	0x3fcc8afdd36afcd8              # double 0.22299168418064741
	.quad	0x3fe38691f2f6bb7f              # double 0.6101770158182801
	.quad	0x3fdc94a43a047202              # double 0.44657235780485405
	.quad	0x3fc29fad41cd95d0              # double 0.14549794877090827
	.quad	0x3fe395901efc21d1              # double 0.61200719882713817
	.quad	0x3fe523e6fd7b5307              # double 0.66063260563041204
	.quad	0x3fe1c26f0b71a2d1              # double 0.55498459086546792
	.quad	0x3fc892f4d6d52e2c              # double 0.19198475351218869
	.quad	0x3fd88748ec76ea82              # double 0.38325713245618698
	.quad	0x3fe828fa13a5d7e4              # double 0.7550020583864776
	.quad	0x3fcb861b39718138              # double 0.2150301008687252
	.quad	0x3fddda896b6d7a5a              # double 0.46646342745763081
	.quad	0x3fe117dd1d45326b              # double 0.53416305271964626
	.quad	0x3fb34094e1513748              # double 0.075204186448187049
	.quad	0x3fe05cf138a16bf7              # double 0.51134549198775303
	.quad	0x3fd4e6b849b7bf26              # double 0.32658202361106914
	.quad	0x3fbbe1514bda9158              # double 0.10890682317637379
	.quad	0x3fc4421439dad810              # double 0.1582665712828093
	.quad	0x3fedab43b09514e3              # double 0.92715630043735719
	.quad	0x3fd1b9c71f3bb5e4              # double 0.27696397829171659
	.quad	0x3fcceb5151f9e9e0              # double 0.22593132498498303
	.quad	0x3fecf6d2056ecb4b              # double 0.90512944279758167
	.quad	0x3fec0edcf8081116              # double 0.87681435054449497
	.quad	0x3fe34f7376a437d7              # double 0.60344861194766508
	.quad	0x3fee947ecd480e5e              # double 0.95562687009846647
	.quad	0x3fd24e90e30cc000              # double 0.28604528591949929
	.quad	0x3fef7cc1f9367f57              # double 0.98397921251669628
	.quad	0x3fc4cdbbbbf05a8c              # double 0.16252848316863255
	.quad	0x3fcc6d95f7dd7420              # double 0.22209429362092781
	.quad	0x3fe56bd6cf9f52b6              # double 0.66941395331612941
	.quad	0x3fe8927c66cfd8eb              # double 0.76788158493471081
	.quad	0x3febd10b0a52393d              # double 0.86926795974594706
	.quad	0x3fc9882cfa6ecb10              # double 0.19946825245059374
	.quad	0x3fe18793bf01d5a4              # double 0.54779994302832735
	.quad	0x3fe0a5b047aedb7b              # double 0.52022565842240398
	.quad	0x3fcca0f0229afec8              # double 0.22366143884391065
	.quad	0x3fc470d7cce99d98              # double 0.15969369416710033
	.quad	0x3fe2b6235272b587              # double 0.58473363974705783
	.quad	0x3fd2ceca703951c2              # double 0.29387150725713351
	.quad	0x3fd61870498c7ef8              # double 0.34524161512852869
	.quad	0x3fdd81ed25063156              # double 0.46105507484096131
	.quad	0x3fca39de0180d270              # double 0.20489096711539245
	.quad	0x3fcdc8f973bf82e4              # double 0.23269575263750319
	.quad	0x3fe40427166669f5              # double 0.62550691962252236
	.quad	0x3f8a798cbfc2bdc0              # double 0.012927150346825012
	.quad	0x3fed19b5feb9d77e              # double 0.90938853980217949
	.quad	0x3fdb3535910e1048              # double 0.42512263455887878
	.quad	0x3febb7de084844ff              # double 0.86619474046361222
	.quad	0x3fec2bb6a67d2c03              # double 0.88033611791013333
	.quad	0x3fee08ec504110a9              # double 0.93858924555435863
	.quad	0x3fdfd2dd321b5c04              # double 0.49724511998414322
	.quad	0x3fe40e1f710a52da              # double 0.62672397688092052
	.quad	0x3fdb180cf081dda6              # double 0.42334292876281621
	.quad	0x3fe3ce4c147cfc73              # double 0.6189327621613202
	.quad	0x3fcdd6ff0406aea0              # double 0.23312366196238532
	.quad	0x3fe5529f5d6ae761              # double 0.66633575673698087
	.quad	0x3fe1b737b9c08b57              # double 0.55361543922149792
	.quad	0x3fe9848b3aee1d88              # double 0.79742967138092613
	.quad	0x3fe05a963d84c96c              # double 0.51105796828623573
	.quad	0x3fd0b0c0df395ba4              # double 0.26078817176078872
	.quad	0x3f8ee147f59f8780              # double 0.015078127082180037
	.quad	0x3fd8213e5526b068              # double 0.37702902141132322
	.quad	0x3feac3c9b887729d              # double 0.83639989891851807
	.quad	0x3fdb6eb4a2910796              # double 0.4286319339336101
	.quad	0x3fe67d482a7cd07d              # double 0.70279320047713123
	.quad	0x3fc844a4898ebb7c              # double 0.18959480969121134
	.quad	0x3fc234f1f6157668              # double 0.14224075809299852
	.quad	0x3fc1cea0d839cd84              # double 0.13911829526805886
	.quad	0x3fdb8dc0c4348b74              # double 0.43052691612881877
	.quad	0x3fe35140465c3ad3              # double 0.60366834394684543
	.quad	0x3fd8d9b11bb85e9e              # double 0.38828685481119318
	.quad	0x3fc130aea65c7588              # double 0.13429816363433766
	.quad	0x3fe5e09eb16ead07              # double 0.68366942076446058
	.quad	0x3fe89d50edc04804              # double 0.76920362888108728
	.quad	0x3fd5663b8e58cc78              # double 0.3343647852045204
	.quad	0x3fe53e8114d574dd              # double 0.66387991017441161
	.quad	0x3febb7c8f8ac0411              # double 0.86618469780671792
	.quad	0x3fc311d32a86df28              # double 0.14898147179132448
	.quad	0x3fdcf2a96c3ccc5c              # double 0.45231090135638907
	.quad	0x3fe84eeb407abc68              # double 0.75963366120948894
	.quad	0x3fa7ad75fa4b0650              # double 0.046245276263573332
	.quad	0x3fbbddce3e77a440              # double 0.10885323548394954
	.quad	0x3febc9aa1a6a093d              # double 0.86836724432968249
	.quad	0x3fe2f5d7516bdbde              # double 0.59250989821054723
	.quad	0x3fee41d8431f973c              # double 0.94553769216574989
	.quad	0x3fed37793528fe7e              # double 0.91302166350210689
	.quad	0x3fdce9aa87968d46              # double 0.45176184884094928
	.quad	0x3fe7159d0ae500ed              # double 0.72138836028900999
	.quad	0x3fc9ea75c7b70170              # double 0.20246765376760889
	.quad	0x3fda39b89af7e618              # double 0.40977301725033177
	.quad	0x3fb64d81f338ffe0              # double 0.087120172386675687
	.quad	0x3fa35fb25274b310              # double 0.037839481892978921
	.quad	0x3fe84a20a986c2e4              # double 0.75904877768161016
	.quad	0x3fe6503a247eeffe              # double 0.6972933495339928
	.quad	0x3fcaca8639365ee4              # double 0.20930555146764285
	.quad	0x3fe4992449ad9870              # double 0.64369406118636441
	.quad	0x3fe583807be217df              # double 0.67230247684414823
	.quad	0x3feefe0c829517ab              # double 0.9685118246495582
	.quad	0x3fd404a44c602e72              # double 0.31278331240239432
	.quad	0x3fd83eba06beecea              # double 0.37882853182573106
	.quad	0x3fefae8982481090              # double 0.99005580373388291
	.quad	0x3f4fde616cf14000              # double 9.7255475146518222E-4
	.quad	0x3fedf907137006a1              # double 0.93664888187796091
	.quad	0x3febfc96b2425e6f              # double 0.8745835763574642
	.quad	0x3fea3d0d2bb0e842              # double 0.81995256932646776
	.quad	0x3fd59174dd33393c              # double 0.33700296022006504
	.quad	0x3fe742d2f38ad9c9              # double 0.7269072300612659
	.quad	0x3fe32ccded2c0cda              # double 0.59921928713483941
	.quad	0x3fd9889fc53f730c              # double 0.39896387350545193
	.quad	0x3fedb0ada188e0f0              # double 0.92781716871016151
	.quad	0x3fc5e3ecc86e20b0              # double 0.17101821695928754
	.quad	0x3fea817a9325c2dc              # double 0.82830551852938638
	.quad	0x3fe00751a4c66ac4              # double 0.500893422914793
	.quad	0x3fc4a369e7d67e7c              # double 0.16123699016769766
	.quad	0x3fcb9bbb5dd8c250              # double 0.2156900604473031
	.quad	0x3fda6bdd4a363ec8              # double 0.412833521339945
	.quad	0x3fdf4d5ccf329342              # double 0.48909683450829189
	.quad	0x3faeb5dc98505d20              # double 0.059981244652755672
	.quad	0x3fe70c4d0294c5fc              # double 0.72025156501894072
	.quad	0x3f9ddfeee434f960              # double 0.02917454974999012
	.quad	0x3fc8f5399d260a9c              # double 0.19498367474814848
	.quad	0x3fea689b068bf706              # double 0.82526923445377132
	.quad	0x3fe2e50312760203              # double 0.59045556646020747
	.quad	0x3fe3472827b2d72e              # double 0.60243613961822517
	.quad	0x3feb8a5f1a8b3cc3              # double 0.86064105209688824
	.quad	0x3feb6bd4fb8206c0              # double 0.85691308138503786
	.quad	0x3fee6d99261b0ea8              # double 0.95087869112508816
	.quad	0x3fc17a00b4f95eb8              # double 0.13653572880388309
	.quad	0x3fe8797d2cd55cc0              # double 0.76483019596607704
	.quad	0x3fca42e586b78f70              # double 0.20516652181606387
	.quad	0x3fe451914c5434d3              # double 0.63495697887415259
	.quad	0x3fe6eb8010a7d740              # double 0.71624758961727508
	.quad	0x3fe2f075306e7529              # double 0.59185275515816216
	.quad	0x3fe545b35b1ac155              # double 0.66475837510919666
	.quad	0x3fed8e0f11b4e714              # double 0.92359116991358058
	.quad	0x3fe4c0628bb1092b              # double 0.64848449023728472
	.quad	0x3fcd7df187689588              # double 0.23040598975891791
	.quad	0x3fd3fc6cc4ef25f0              # double 0.31228179199078365
	.quad	0x3fce31889fedbf3c              # double 0.23588664826410788
	.quad	0x3fa414c0fb7bd220              # double 0.039220839213076397
	.quad	0x3fe741fa712bc3a2              # double 0.72680399039937904
	.quad	0x3fe5eac77d58ecf8              # double 0.6849095771971454
	.quad	0x3fd2c823ebc81eb4              # double 0.29346559548910567
	.quad	0x3fd5de0ecc7c0840              # double 0.34167833298863926
	.quad	0x3f911dd1b5ef0380              # double 0.016715313653324682
	.quad	0x3fe53d92ea30dd4a              # double 0.66376634350209796
	.quad	0x3fe9f13015684ef8              # double 0.8106918733705859
	.quad	0x3fe350886c1d609b              # double 0.60358067623294021
	.quad	0x3fc69291b0f15570              # double 0.17634793414860495
	.quad	0x3fe47f54098ad6cb              # double 0.64054300178278234
	.quad	0x3fe1c0fda74da5b3              # double 0.5548084514277235
	.quad	0x3fecb6ad8971631a              # double 0.89729954571075443
	.quad	0x3fe8a22a021e4190              # double 0.76979542173107696
	.quad	0x3fe6445e3da6b3a2              # double 0.69584571877713963
	.quad	0x3fe5f259e8e13cf3              # double 0.68583388790457744
	.quad	0x3fee1912257828b6              # double 0.94056041067349017
	.quad	0x3fd8cc5f59b1463a              # double 0.38747390517264402
	.quad	0x3fba2c86939a7568              # double 0.10224190810773381
	.quad	0x3f92fc64f1b42f40              # double 0.018540932896072393
	.quad	0x3febe4ea193818e9              # double 0.87169365811930988
	.quad	0x3fd352816c50b8ca              # double 0.30191073968570648
	.quad	0x3fe8d3df56da6d51              # double 0.77586333240052785
	.quad	0x3fdcca792724b0e6              # double 0.44985798666563281
	.quad	0x3fd22ed0c70da8ec              # double 0.28410739363483972
	.quad	0x3fdeb2c848783ba4              # double 0.47966200902095069
	.quad	0x3fb1157bb6c515b0              # double 0.066734058496044524
	.quad	0x3fdc6631dd9a25fe              # double 0.4437374748309536
	.quad	0x3fd9e606c5160bf2              # double 0.4046646999997271
	.quad	0x3febb3d76f7dda7f              # double 0.86570331359582997
	.quad	0x3fdb42d907d46a42              # double 0.42595506443618458
	.quad	0x3fe173b151f39f39              # double 0.54537263876134212
	.quad	0x3fe8c12e8b6762b7              # double 0.77358176448168237
	.quad	0x3fd88a6f516ef07c              # double 0.38344939186550397
	.quad	0x3fe0f13a04fc2ca9              # double 0.52944661115306701
	.quad	0x3fedcfd2a39b8383              # double 0.9316189952333932
	.quad	0x3fddd969b5aaea98              # double 0.46639483204823184
	.quad	0x3fcded74c1c53040              # double 0.23380908452452509
	.quad	0x3fea10e60d7db73a              # double 0.81456282267547597
	.quad	0x3fea7af0eb6b7e25              # double 0.82750745754669153
	.quad	0x3fcc8e0f3c6252e0              # double 0.22308531235162032
	.quad	0x3fe3620bedcce223              # double 0.60571857877136315
	.quad	0x3fd54050afc9d1a2              # double 0.33205048720199148
	.quad	0x3fde6067de9c685e              # double 0.47463413943626687
	.quad	0x3fe30ac17db6048c              # double 0.59506296685153037
	.quad	0x3fddcd75c3905210              # double 0.46566528413794206
	.quad	0x3fd18eb8cd94d93a              # double 0.27433605266869032
	.quad	0x3fd6ce8f8201d2bc              # double 0.35635745712287892
	.quad	0x3fe5370e03b5c387              # double 0.66297054981815584
	.quad	0x3fed76c9b7dc83d4              # double 0.92075048361231859
	.quad	0x3fe24ab31f232fff              # double 0.57161861497434063
	.quad	0x3fe6220aa73c4451              # double 0.69165547049682108
	.quad	0x3fe7ac627f469c5c              # double 0.73979306086119889
	.quad	0x3fdbae266b2fad1c              # double 0.43250427691846638
	.quad	0x3fe8da2517e92bee              # double 0.77662901563723863
	.quad	0x3fe21539cdb7a677              # double 0.56509103945900463
	.quad	0x3febf100de1437b3              # double 0.87316935896682535
	.quad	0x3fda262bebda97d0              # double 0.40857980759244317
	.quad	0x3fc22b0c78975c9c              # double 0.14193874252552952
	.quad	0x3fc8ca70e8ccc300              # double 0.19367801062755774
	.quad	0x3fdd76d76908e9c4              # double 0.46037850625330301
	.quad	0x3fea94c7e94a5932              # double 0.83066173138175814
	.quad	0x3fef8afeed714a81              # double 0.9857172620343847
	.quad	0x3feaf8cfa7304fcd              # double 0.84287245420500201
	.quad	0x3fc521a4df5b9af0              # double 0.16508923441070733
	.quad	0x3fe8a3d40db52699              # double 0.76999857594747134
	.quad	0x3fe8f7053bfca4ea              # double 0.78015386310758328
	.quad	0x3fb9c7d512767cb0              # double 0.1007054491114896
	.quad	0x3fe827c51c7b19a4              # double 0.75485473215740173
	.quad	0x3fd2c184dd44df5a              # double 0.29306146248153697
	.quad	0x3fd31084e0638db0              # double 0.29788324273087152
	.quad	0x3f9aa235eee32e60              # double 0.026009409623652835
	.quad	0x3fe28bf31670ef1f              # double 0.57958368666684013
	.quad	0x3fd74737a021c4fe              # double 0.36372175825006525
	.quad	0x3fe8f6bf111dc509              # double 0.78012040465378718
	.quad	0x3fc5f23c97a5a1a8              # double 0.17145497707975932
	.quad	0x3fdf79a3f0f1b3f8              # double 0.49179934053137186
	.quad	0x3fe8b7288c11f7e2              # double 0.77235820157488555
	.quad	0x3fe460a5f6e6a815              # double 0.63679788802005766
	.quad	0x3fe42b0fe4d22676              # double 0.6302566022070113
	.quad	0x3fbd5ecac8fe4980              # double 0.11472766310752114
	.quad	0x3fdd67ddd21336e2              # double 0.45946450724737364
	.quad	0x3fc5d770886d9570              # double 0.17063719426657142
	.quad	0x3fda04a876e1729e              # double 0.40653430566252691
	.quad	0x3fe5d1e1d2fcfd1c              # double 0.68187037666931216
	.quad	0x3fe11c23cefb0853              # double 0.5346850435819398
	.quad	0x3fe4ac9f05ee9600              # double 0.64607192190732121
	.quad	0x3fe86b3919435bf0              # double 0.76308875021174849
	.quad	0x3fe2346f432b45f4              # double 0.56890071028663991
	.quad	0x3fdf86dc50ac570e              # double 0.49260623815767779
	.quad	0x3fc4c1e9118d8c1c              # double 0.16216767651630526
	.quad	0x3fe741a512fea7db              # double 0.72676328382408018
	.quad	0x3fef04c9a4b6e489              # double 0.96933443232332294
	.quad	0x3fe4c5f289bb61b4              # double 0.64916350270055156
	.quad	0x3fc0d1c810ad5cec              # double 0.13140202345196117
	.quad	0x3fed99ad4c087ab7              # double 0.92500939226359591
	.quad	0x3fe82c8bfbdd7311              # double 0.75543784325017971
	.quad	0x3fcb026dfb0841fc              # double 0.21101164586481491
	.quad	0x3fecc9dd37eb6aa1              # double 0.89964161798282671
	.quad	0x3f79a35049f6a080              # double 0.0062592636381070266
	.quad	0x3feb6e2282acd5c6              # double 0.85719419023978882
	.quad	0x3fe43e54526139bb              # double 0.63260856714059999
	.quad	0x3fe13b545ca13d6b              # double 0.53849237529531757
	.quad	0x3fdf46c5e1d725b4              # double 0.48869463972786353
	.quad	0x3fcd98d443ff02a8              # double 0.23122647590755219
	.quad	0x3fe5333946968473              # double 0.6625028971358361
	.quad	0x3fe56dad58ac07b1              # double 0.66963832205532559
	.quad	0x3fb1252022fca9b8              # double 0.066972740689982824
	.quad	0x3fceec1207f29620              # double 0.24157929790560306
	.quad	0x3fe3f8c3daac0ead              # double 0.62411682805437396
	.quad	0x3fe1e2947570ee8f              # double 0.55890868127558402
	.quad	0x3fe3f904c64759e6              # double 0.62414778448402042
	.quad	0x3feb03ca17151d11              # double 0.84421257503791669
	.quad	0x3fea928f377e8fa4              # double 0.83039055670495942
	.quad	0x3fab7137ae8ac3b0              # double 0.053598156029131316
	.quad	0x3fea7ac6a144d7a0              # double 0.82748729226908679
	.quad	0x3fc7226b2cf4b378              # double 0.18073787398443719
	.quad	0x3fe6a6600143a92f              # double 0.7078094505971303
	.quad	0x3fe636b2bd972a4f              # double 0.69417702702896544
	.quad	0x3fe2f1dc0d1947d9              # double 0.5920238738856326
	.quad	0x3fd67b3a04e8667c              # double 0.35127115706709566
	.quad	0x3fe7bd64efa23dee              # double 0.74186941913097626
	.quad	0x3fea42a0f96b6aeb              # double 0.82063339915052091
	.quad	0x3fcbbb91dbfe3ca0              # double 0.21666167489863586
	.quad	0x3fc52d303e08a688              # double 0.16544154194825844
	.quad	0x3fda174cf38c1854              # double 0.40767215522681011
	.quad	0x3fc9e86974bd65bc              # double 0.20240514946162402
	.quad	0x3fc4fcba027ce2d4              # double 0.16396260377384542
	.quad	0x3fd22470d6fc1bc2              # double 0.28347416872605546
	.quad	0x3fe9042b5817d4cf              # double 0.78175894933397128
	.quad	0x3fef91703d147d24              # double 0.98650371484464871
	.quad	0x3fee05c7a1d306f6              # double 0.93820554357827635
	.quad	0x3fe3d2b3df9cb450              # double 0.61947053598636082
	.quad	0x3febb4bcca98e55b              # double 0.86581267900252656
	.quad	0x3fe11fb59d2d8878              # double 0.53512077997971996
	.quad	0x3f56e6244f2f9a00              # double 0.0013976435263828302
	.quad	0x3fec75955bf252e7              # double 0.88935344656291881
	.quad	0x3fe71151df14b949              # double 0.720864234642968
	.quad	0x3fead8dfb6345912              # double 0.83897386156857778
	.quad	0x3fad7122653f9f10              # double 0.057503771647871571
	.quad	0x3fe34341af3e7e7b              # double 0.60196003177038848
	.quad	0x3fe8709829939ba1              # double 0.763744431690487
	.quad	0x3fb7fbbdea57aec8              # double 0.093685025894667651
	.quad	0x3fef90bd90bac221              # double 0.98641851680264747
	.quad	0x3fe6b21bf2c0c9a3              # double 0.70924184239111232
	.quad	0x3f43eae639089400              # double 6.0783616396931084E-4
	.quad	0x3fee87053d91a1c2              # double 0.95398199105425641
	.quad	0x3fe369b8d722e0d9              # double 0.60665552157208957
	.quad	0x3fd42319b2714146              # double 0.31464235712066502
	.quad	0x3fef6f0311ab386f              # double 0.98230126810973483
	.quad	0x3fd69613ad038b96              # double 0.35290996452220591
	.quad	0x3fb92cc8a8a55348              # double 0.098339596913615712
	.quad	0x3fb178a45d283ba0              # double 0.068247101539084642
	.quad	0x3fea4e47c7dbffde              # double 0.82205571208032402
	.quad	0x3fe8637a9981a408              # double 0.76214342099876919
	.quad	0x3fdcb44a95aa128c              # double 0.4485041104856371
	.quad	0x3febb55dc01dd06f              # double 0.86588943026300835
	.quad	0x3fee62cf895d26ec              # double 0.94956185177690377
	.quad	0x3fe18a187ecc87d1              # double 0.54810738339824117
	.quad	0x3fee6b238067034e              # double 0.95057845190613377
	.quad	0x3fd315a50f74f754              # double 0.29819609174216066
	.quad	0x3fc636d3df4e3f1c              # double 0.17354820636364188
	.quad	0x3fe9bf735e1b6091              # double 0.80462044124853283
	.quad	0x3fddfe113d9d2e8c              # double 0.46863204018584592
	.quad	0x3fef53c3add07020              # double 0.97897514293754639
	.quad	0x3fd4cc165b996aec              # double 0.32495650239222473
	.quad	0x3fd1f85ce2c594a6              # double 0.28078386445697345
	.quad	0x3fe27cd89f91c82a              # double 0.57774001279745346
	.quad	0x3fe66d9e9be60ef6              # double 0.70088129471738969
	.quad	0x3fe1ad9bf69085f2              # double 0.55244253308427305
	.quad	0x3fa5b66e303e1bd0              # double 0.042407458676329335
	.quad	0x3fca5195f2c40bb0              # double 0.20561479905890456
	.quad	0x3fa625df2cb225c0              # double 0.043257688718834952
	.quad	0x3f5bbfaad08e9400              # double 0.001693646250921832
	.quad	0x3fe6c3cd3ad891e3              # double 0.71140157216410349
	.quad	0x3fb18e91e75f59e8              # double 0.068581694590967524
	.quad	0x3fd44901834ce2a8              # double 0.31695592710779374
	.quad	0x3fdc2f666063b536              # double 0.44039306080852059
	.quad	0x3fe5c6a2c2a2d59b              # double 0.68049753203256402
	.quad	0x3fe0b9cb910af158              # double 0.52268007591878085
	.quad	0x3fd26634ec1ed832              # double 0.28748820360795257
	.quad	0x3fec5e8721267cea              # double 0.88653904413868401
	.quad	0x3fdef6876d4db2d0              # double 0.48379693674250479
	.quad	0x3fc3ad6716279180              # double 0.15372932988897148
	.quad	0x3fed8f4452cbec04              # double 0.92373863383488741
	.quad	0x3fabd9b7ad920150              # double 0.054395427644524319
	.quad	0x3fa64215a5c1a440              # double 0.043472935184418748
	.quad	0x3fd9b46202770782              # double 0.40163469544142327
	.quad	0x3fd00f86c76f9bf6              # double 0.25094766117257394
	.quad	0x3fd4753e9d750df8              # double 0.31965604187664054
	.quad	0x3fc507a64f3a86e8              # double 0.16429594868264208
	.quad	0x3fef15c7db417c53              # double 0.97140877555274085
	.quad	0x3fe9655b41f4e03c              # double 0.79362261659753796
	.quad	0x3fcda92f4d812da4              # double 0.23172560963062694
	.quad	0x3f80e613fc736f00              # double 0.0082513390938667719
	.quad	0x3fee8732dc7dd1fc              # double 0.9540037447428058
	.quad	0x3fe15b44dea79401              # double 0.54239123809077239
	.quad	0x3fe290798d97b901              # double 0.58013608603303635
	.quad	0x3fdecbadfe5e73d6              # double 0.48118162003248466
	.quad	0x3fe3523e59218870              # double 0.60378949554821126
	.quad	0x3f8238abbe883140              # double 0.008897153617930642
	.quad	0x3fdf0a7d63ea479c              # double 0.48501524693812725
	.quad	0x3fd881881d8922f8              # double 0.38290598759026251
	.quad	0x3fc3151bf21e99bc              # double 0.14908170053713643
	.quad	0x3fe02b3dcab87efc              # double 0.50527848810085585
	.quad	0x3fc4cacff2e2e1bc              # double 0.16243934020691408
	.quad	0x3fb01b39803206a0              # double 0.062915414617260357
	.quad	0x3f8fb04f75787380              # double 0.015473004124084033
	.quad	0x3fc32a692a822348              # double 0.14973177505114621
	.quad	0x3fd1bfe524326ac2              # double 0.277337346409393
	.quad	0x3fd3fe2a742427fc              # double 0.31238805143277637
	.quad	0x3fdd0b29cd489be0              # double 0.45380635306577055
	.quad	0x3fc215e926ee16a8              # double 0.14129366303329971
	.quad	0x3fde085dc62bbaf2              # double 0.46926063873881596
	.quad	0x3fe9067739777ed9              # double 0.78203927253704386
	.quad	0x3fdd52275a5738b8              # double 0.45813926527342685
	.quad	0x3feae9040e38871a              # double 0.84094431664945835
	.quad	0x3fcb5aee718c0ef8              # double 0.21371250671665343
	.quad	0x3fb86c0d0e993878              # double 0.095398727478114398
	.quad	0x3fe153ac4fdd394b              # double 0.54146400068729272
	.quad	0x3fe8c2665e85ad88              # double 0.77373045407641516
	.quad	0x3fe38bcd1ea6396e              # double 0.61081558214372733
	.quad	0x3fe3f8f4332ae7fa              # double 0.62413988107368756
	.quad	0x3fe57815f2bca299              # double 0.67090890321294971
	.quad	0x3fe1d2c6384d77d0              # double 0.55697928425410659
	.quad	0x3fc864b4f4a29cbc              # double 0.19057332940176319
	.quad	0x3fc503cffcc1f9a0              # double 0.16417884675679506
	.quad	0x3fd2ab90560c36a2              # double 0.29172142413231417
	.quad	0x3fe327ba3c086398              # double 0.59859954571867302
	.quad	0x3fd1b9fc247b8ff2              # double 0.27697661936531326
	.quad	0x3fe4dca8c420944c              # double 0.65193594270807287
	.quad	0x3fe374e18306aa12              # double 0.60801768866559969
	.quad	0x3feaca73bf2c9f9b              # double 0.83721339548809526
	.quad	0x3fd5e2fa94febf84              # double 0.34197868871978465
	.quad	0x3fc41a1487aedebc              # double 0.15704590439940158
	.quad	0x3fcd60d440d022c4              # double 0.22951749005030397
	.quad	0x3fd9eeb58699c320              # double 0.40519464630692603
	.quad	0x3fed805d65ef35bc              # double 0.92191953572335405
	.quad	0x3fe7dd87d843d4d3              # double 0.74579231490374764
	.quad	0x3fea3af1039a6b1d              # double 0.81969500259160422
	.quad	0x3fe0cb4689354305              # double 0.52481390760849023
	.quad	0x3fd4e23ce325997e              # double 0.326308461974257
	.quad	0x3fdda857eb7a208c              # double 0.4633998679714828
	.quad	0x3fb011005d6335d8              # double 0.062759421157543627
	.quad	0x3fe1e214f8e31d47              # double 0.55884789095663556
	.quad	0x3fc6e6a0e6a15cd0              # double 0.17891322385069097
	.quad	0x3f99e6dcc185fe40              # double 0.025294732391101471
	.quad	0x3fe1c5a0407deab7              # double 0.55537426563326775
	.quad	0x3fee892a3994d6c3              # double 0.95424376722686366
	.quad	0x3fc96e41e4363218              # double 0.19867728846692567
	.quad	0x3fdfec5f0fb64cae              # double 0.49880196127305509
	.quad	0x3fde059938bc644a              # double 0.46909170666328193
	.quad	0x3fee5fd716acd847              # double 0.94919924191231864
	.quad	0x3fdd6afb03892198              # double 0.45965457291870271
	.quad	0x3fe2feb975239c97              # double 0.59359429243785911
	.quad	0x3fcac1a268e1c5c4              # double 0.20903425332248393
	.quad	0x3fda692435be3aa4              # double 0.41266732452724342
	.quad	0x3fbc10637c720cc0              # double 0.10962507045956027
	.quad	0x3fa2aa31fb5f2b60              # double 0.036454736647633323
	.quad	0x3fe871abd2d96d1d              # double 0.76387587720401806
	.quad	0x3fee43d86d9b2bde              # double 0.94578191192101335
	.quad	0x3fd9ab2f5b200012              # double 0.40107330225873838
	.quad	0x3fe1da34f15b84f2              # double 0.5578865732205982
	.quad	0x3fe6cbad1f8c97f4              # double 0.7123628250308216
	.quad	0x3fefdd9edf74c459              # double 0.99580329555295599
	.quad	0x3fdad41a5f29f814              # double 0.41919574063638376
	.quad	0x3fabeba384cdcef0              # double 0.054532155953806227
	.quad	0x3fd534738cafbf66              # double 0.33132637728612335
	.quad	0x3fe4dd1f1fdf90b9              # double 0.65199238038305574
	.quad	0x3fbec51a245d4aa8              # double 0.12019503963282807
	.quad	0x3fc3cf4d40730bec              # double 0.15476384779876129
	.quad	0x3fe3f4ff6a34099b              # double 0.62365694754435042
	.quad	0x3fdb82fae8bb04ee              # double 0.42986939170448479
	.quad	0x3fd0aaf338fcbb50              # double 0.26043396535071839
	.quad	0x3f9410d4b0ca6400              # double 0.019595454492989717
	.quad	0x3fd255e757e3c772              # double 0.28649314482674193
	.quad	0x3fe0b86f7ce47cc3              # double 0.52251409905502333
	.quad	0x3fef8977c02ed7ed              # double 0.98553073440302585
	.quad	0x3fe14de805640e5c              # double 0.54076005032443275
	.quad	0x3fdc97ae236e08a4              # double 0.44675782642310424
	.quad	0x3fe867b886b01be6              # double 0.76266123110042083
	.quad	0x3fd1243aeb33c430              # double 0.26783631295171784
	.quad	0x3fe2f7f6823296f8              # double 0.59276891164037604
	.quad	0x3fb279b501a97068              # double 0.072169602304201441
	.quad	0x3feb0f2b576804ae              # double 0.84560172149226331
	.quad	0x3fd48ee396bf6804              # double 0.32122125359967435
	.quad	0x3fdb1bea2485c756              # double 0.42357877318055637
	.quad	0x3f352dbe40f77000              # double 3.2316107623642232E-4
	.quad	0x3fcc8b27481d4cb0              # double 0.22299662610257576
	.quad	0x3fe1f788e84a5355              # double 0.56146664971547955
	.quad	0x3feed9858d57198c              # double 0.96405294042124145
	.quad	0x3fe746991942fcf6              # double 0.72736792501373659
	.quad	0x3fd4332343c5406a              # double 0.31562120073522826
	.quad	0x3fc69651bf26992c              # double 0.17646238168271944
	.quad	0x3fd1575cf851fb42              # double 0.27095722436927272
	.quad	0x3fe81bbe6e66ef6c              # double 0.75338670313747746
	.quad	0x3fc619bf7b2a4d94              # double 0.17266076578071632
	.quad	0x3fd4479c33812166              # double 0.31687073735931504
	.quad	0x3fe8713f21ee60d0              # double 0.76382404925518621
	.quad	0x3fb2aaa0ce2f88b8              # double 0.072916078890133629
	.quad	0x3fe4dc6b8420832c              # double 0.65190673643164621
	.quad	0x3fecb103b3de08a5              # double 0.8966082108529646
	.quad	0x3fead37540b17546              # double 0.83831274638547693
	.quad	0x3febe16ff80aac00              # double 0.87126921125070567
	.quad	0x3fd4ead0881ad852              # double 0.32683194438448482
	.quad	0x3fe426af596560c8              # double 0.62972228489072624
	.quad	0x3feb6ba134fc386b              # double 0.85688839291266328
	.quad	0x3fe61da2d58f98d5              # double 0.69111768447035138
	.quad	0x3f91d397eacf90c0              # double 0.017408727366174714
	.quad	0x3fe26d37e7b9cf58              # double 0.57583232172917587
	.quad	0x3feb0fa00287daca              # double 0.84565735334657544
	.quad	0x3fb574a7ffbbd758              # double 0.083811283049582186
	.quad	0x3fe62a4b851adaac              # double 0.69266296383906001
	.quad	0x3fb9eb8cc736d968              # double 0.10125045646313924
	.quad	0x3fb2e01209c0a778              # double 0.073731543904299701
	.quad	0x3fe1c8e3e3d16fed              # double 0.55577272887921725
	.quad	0x3fcd8832704c9fd0              # double 0.23071890338292045
	.quad	0x3fd0c8ca357c6792              # double 0.26225524161565616
	.quad	0x3fe036a8ac46fbb7              # double 0.50667222640901499
	.quad	0x3fc0998c281e28e4              # double 0.12968589743497383
	.quad	0x3fdf9a17690d824c              # double 0.49377999552783503
	.quad	0x3fdfe3b3e26f6b80              # double 0.49827286827865436
	.quad	0x3fd691ba5ffda428              # double 0.35264453291034892
	.quad	0x3fd5d84c0fad84ae              # double 0.34132672816310616
	.quad	0x3fec0cc35d9ff10f              # double 0.87655800138557705
	.quad	0x3fe89ce23df87c9c              # double 0.7691508493770871
	.quad	0x3febac455a84c0ef              # double 0.86477916411788935
	.quad	0x3fe48563dc28f67d              # double 0.64128296852113886
	.quad	0x3fe8d1ea09498a78              # double 0.7756242925064063
	.quad	0x3fe35e2ec997f2f3              # double 0.60524691938152697
	.quad	0x3fd90a76e59ba2ae              # double 0.3912636987939021
	.quad	0x3fc7ba708f6ed350              # double 0.18537718776283407
	.quad	0x3fe39f6c84782e14              # double 0.61321092484417017
	.quad	0x3fcc3a3ef2d31f84              # double 0.22052752358126437
	.quad	0x3fd843d9fa411308              # double 0.37914132536779777
	.quad	0x3fe2f5fcc5c72228              # double 0.59252775791634793
	.quad	0x3fc960f910189ae8              # double 0.19827187810843516
	.quad	0x3fd71cde67039f40              # double 0.36113700923896275
	.quad	0x3fdda99437c132b8              # double 0.4634752792815493
	.quad	0x3fd6de07fe1d3dc0              # double 0.35730171027986657
	.quad	0x3f71e3b8322b8e80              # double 0.0043675608783108055
	.quad	0x3fa8308c26de8780              # double 0.047245387787611115
	.quad	0x3f9692d1be4e73a0              # double 0.02204444622076418
	.quad	0x3fd8082952a8f3ee              # double 0.37549813339484117
	.quad	0x3fde127caac5d5fa              # double 0.46987835576086889
	.quad	0x3fe4c76b703907df              # double 0.64934322279463774
	.quad	0x3fd5623af8878ac8              # double 0.33412050505118573
	.quad	0x3fd1b57eb17d0d82              # double 0.27670256932125181
	.quad	0x3fd637ac58142d62              # double 0.34714802361914654
	.quad	0x3fdceeb4c3d7dd9a              # double 0.45206946492495492
	.quad	0x3fedc7e5dab1e52b              # double 0.93065159524772889
	.quad	0x3fabce11689b8f70              # double 0.054306549090852196
	.quad	0x3fde96cd6fb1c684              # double 0.47795425326976493
	.quad	0x3fd9f854242d1e34              # double 0.40578177960239548
	.quad	0x3fddc5baca5303aa              # double 0.46519346006612727
	.quad	0x3fe42cdc0d868b93              # double 0.63047602311813689
	.quad	0x3fc2ac2df5c0e330              # double 0.14587950229340541
	.quad	0x3fe2df766b926720              # double 0.58977814684041974
	.quad	0x3fe477effc4ba9a9              # double 0.63964080120540701
	.quad	0x3fed9e31d2c491fa              # double 0.92556086698146989
	.quad	0x3fbb624606b596f8              # double 0.10696828521539803
	.quad	0x3fb4230ac5e09490              # double 0.078659699735526666
	.quad	0x3fe088b9648660dd              # double 0.51668996461651384
	.quad	0x3fe4c987c9589051              # double 0.64960088086491841
	.quad	0x3fe0cab6ba3cb872              # double 0.52474533438159043
	.quad	0x3feb7ff0c87d5aff              # double 0.85936774404657956
	.quad	0x3fa8eb8ca454b950              # double 0.048672099170618766
	.quad	0x3fcd839ba5775a78              # double 0.23057885722547034
	.quad	0x3fd5aa174c202c14              # double 0.33850653108737672
	.quad	0x3fbfbfca7ddea628              # double 0.12402024815551072
	.quad	0x3fd30ab69c90d574              # double 0.29752888955712042
	.quad	0x3fea7cc17fb852d5              # double 0.82772898621859758
	.quad	0x3fe24399d97a1ad0              # double 0.57075207210513135
	.quad	0x3fdcd660f20c18bc              # double 0.45058463704516405
	.quad	0x3fe81a801b5fe280              # double 0.75323491427032252
	.quad	0x3fec4fe5ec1bfee5              # double 0.88475319018467913
	.quad	0x3fec6b98282ae2df              # double 0.88813407750339113
	.quad	0x3fc6f5a85df6bdb4              # double 0.17937187755658857
	.quad	0x3fd3fa397786e956              # double 0.31214749023970023
	.quad	0x3fea635766f75376              # double 0.82462663755960253
	.quad	0x3fe89446b117da1b              # double 0.76810011471281159
	.quad	0x3fdf019881c5987c              # double 0.48447239563973432
	.quad	0x3fa9d15cf12197f0              # double 0.050425438342060036
	.quad	0x3fdc2d8e5bc5af7e              # double 0.44028052293901243
	.quad	0x3fd36d1154e13f5a              # double 0.30353196419763651
	.quad	0x3fe5397ca5dae9c3              # double 0.66326744454936948
	.quad	0x3fd0bf5317218d60              # double 0.26167752512829701
	.quad	0x3fca37a78382a5f8              # double 0.20482343598750652
	.quad	0x3fe4cd9d81a17268              # double 0.65009951895224294
	.quad	0x3fd1c45c68341388              # double 0.27760992218127756
	.quad	0x3fa83283bf180630              # double 0.047260396077046685
	.quad	0x3fe01783812b469e              # double 0.5028703234513221
	.quad	0x3fe8e118d2506c71              # double 0.77747765614493691
	.quad	0x3fd40958104d7876              # double 0.31307031242420835
	.quad	0x3fc8a7a043e8029c              # double 0.19261554065453346
	.quad	0x3fe9b3516d5ffaaa              # double 0.80313941347397599
	.quad	0x3fe543d8fc1108fc              # double 0.66453217727419611
	.quad	0x3fd929362d1f1aa4              # double 0.39314035803219327
	.quad	0x3fe8a8e5e6fe9524              # double 0.7706174384699449
	.quad	0x3fe6ce2c2ae9e43f              # double 0.71266754514284247
	.quad	0x3fe72c1ee01df57a              # double 0.72413581631523916
	.quad	0x3fe60a5a2433e9aa              # double 0.68876368590217862
	.quad	0x3feefeb91d4fffdb              # double 0.9685941288480494
	.quad	0x3fef4dccf133261d              # double 0.97824713811241148
	.quad	0x3feab868c973c57c              # double 0.83501090379847608
	.quad	0x3fce7f9ce4ea677c              # double 0.23826943566819725
	.quad	0x3fe96765c4d519e6              # double 0.79387176936944281
	.quad	0x3feab3360e8c4f25              # double 0.83437636224195855
	.quad	0x3fddd32f860f1c20              # double 0.46601474849416213
	.quad	0x3fdde52922f5c130              # double 0.46711185850201087
	.quad	0x3f91461eda8f0760              # double 0.01686905106522063
	.quad	0x3fd3e3b4809c5ce2              # double 0.31077301559112247
	.quad	0x3fc7c784e725610c              # double 0.18577634130884524
	.quad	0x3fbe6e971b623ac0              # double 0.11887497347400267
	.quad	0x3fefc4b2d8e0f5ba              # double 0.99276106223231086
	.quad	0x3fa021742c696130              # double 0.031505232259123495
	.quad	0x3fe01f03bc63fabc              # double 0.50378596110370877
	.quad	0x3fdb85b30c108f90              # double 0.43003536394302788
	.quad	0x3fd9c24430a30948              # double 0.40248207807248493
	.quad	0x3fc619b938931a08              # double 0.17266001951630039
	.quad	0x3feb47e30e16212d              # double 0.85252526046045818
	.quad	0x3fe7a50efa367a7c              # double 0.73889874334038508
	.quad	0x3fe5c1df2b21e8b2              # double 0.67991598533924091
	.quad	0x3fe4f5085c0407f3              # double 0.65491121265244912
	.quad	0x3fc6cc237ff1c9b0              # double 0.17810481784142729
	.quad	0x3feb180c2a9250f4              # double 0.84668548884158534
	.quad	0x3feb8c418273d743              # double 0.86087108115200583
	.quad	0x3fe7311a25e670cb              # double 0.72474391367315982
	.quad	0x3fc8bccfe4e8b3c4              # double 0.19326208760449337
	.quad	0x3fe3ea4d558c78ea              # double 0.62235132893308998
	.quad	0x3fd3d857d2ad9fd2              # double 0.31007953237576402
	.quad	0x3fd1d8ef8eaff612              # double 0.27886570867835403
	.quad	0x3fd96e112aae7b82              # double 0.39734296005365632
	.quad	0x3fe57b533a3a9172              # double 0.67130433438118886
	.quad	0x3fd96e3ac7bdbb14              # double 0.39735288148851677
	.quad	0x3fe49a9800847cb8              # double 0.643871308337018
	.quad	0x3fe1a896950987d7              # double 0.55182961567720212
	.quad	0x3fc62f66c82369d4              # double 0.17332157871608322
	.quad	0x3fe47882ff4132d9              # double 0.63971090177946188
	.quad	0x3fbc83f4502251a8              # double 0.11138846355817711
	.quad	0x3fc6abed80254b68              # double 0.17712181813348171
	.quad	0x3fe0d6c094b56613              # double 0.52621487660070654
	.quad	0x3fe2d4b97e11bcc1              # double 0.58846735594661237
	.quad	0x3fd4e01345acdd9c              # double 0.32617646984314219
	.quad	0x3fe6b31742c37d9f              # double 0.70936167754910062
	.quad	0x3fb3baca05a02d68              # double 0.077068926213703315
	.quad	0x3fcb08cc0389ab04              # double 0.21120596096746891
	.quad	0x3fe155ca9b4bc428              # double 0.54172258692972708
	.quad	0x3fd5b8f124e95d28              # double 0.33941296200414905
	.quad	0x3fd45300ab0cd396              # double 0.31756607727157282
	.quad	0x3fe38ea3f92db8d3              # double 0.61116217296310038
	.quad	0x3fd1a6ac45bcd7e2              # double 0.27579790888137101
	.quad	0x3fdd86f2b1590e12              # double 0.46136157340171835
	.quad	0x3fc75f3d8d00cd64              # double 0.1825940073482385
	.quad	0x3fe1dfb7f5b3102e              # double 0.558559398538369
	.quad	0x3fe9b53d6087e8a1              # double 0.80337399343195071
	.quad	0x3fedaf1f972798c0              # double 0.92762736818692559
	.quad	0x3fb1db614bce1d80              # double 0.069753724104989701
	.quad	0x3fe56ee1d3bad203              # double 0.6697854171130192
	.quad	0x3fd7e58221d5b68c              # double 0.3733830767076618
	.quad	0x3fe506bc49b0e74e              # double 0.6570722045209807
	.quad	0x3fe39aa3a8c6962a              # double 0.61262686695107971
	.quad	0x3fa31e27332a15e0              # double 0.03733942508283028
	.quad	0x3fcee8c13837db14              # double 0.24147811169651645
	.quad	0x3fe0a6465a85e4ae              # double 0.52029721908833948
	.quad	0x3fd73bb8b1d70914              # double 0.36302010886369485
	.quad	0x3fed5814c172f7e4              # double 0.9170020845701825
	.quad	0x3fa37b8d477b8410              # double 0.038052000976456779
	.quad	0x3fe35288198a4814              # double 0.60382466305077509
	.quad	0x3fd2530a5445de4a              # double 0.28631838063981674
	.quad	0x3fe8339a015f875d              # double 0.75629902141757166
	.quad	0x3fc6ff8a4b324500              # double 0.1796734683198693
	.quad	0x3fb0514ec6382c78              # double 0.063740657227912112
	.quad	0x3fedc12c7f514797              # double 0.92983078829478216
	.quad	0x3fec2fe1a2d10ee9              # double 0.88084489631770879
	.quad	0x3fe7ce7f6132bef6              # double 0.74395722373989659
	.quad	0x3fcccfb97913c8dc              # double 0.22508924877144565
	.quad	0x3fed2586e48fb455              # double 0.91083092347038053
	.quad	0x3f95c66c71b71440              # double 0.021264738503095737
	.quad	0x3f8c9665683242c0              # double 0.013958732836074517
	.quad	0x3fd5c6d35f7f1b26              # double 0.34026035619574413
	.quad	0x3fd674aeee27bbda              # double 0.35087178475708714
	.quad	0x3fe6940017590df8              # double 0.70556644973879568
	.quad	0x3fd86918d9ca4602              # double 0.38141461628501372
	.quad	0x3fec6eb5cdd60293              # double 0.88851442530001845
	.quad	0x3fb0696d4d692640              # double 0.064108687781435414
	.quad	0x3fe771bedadf7527              # double 0.73263495205506934
	.quad	0x3fbbbce15c2842b0              # double 0.10835083484586039
	.quad	0x3fd70c36456b259c              # double 0.36012036112932733
	.quad	0x3fc0284f0ca7435c              # double 0.12623012655105981
	.quad	0x3fc581ec21cfe3ac              # double 0.16802741671542998
	.quad	0x3fe8b1e1dd10f35e              # double 0.77171414544100592
	.quad	0x3fdff32dbc02ce30              # double 0.49921744690365966
	.quad	0x3fcbb1d5e38508e4              # double 0.2163646088539003
	.quad	0x3fefc76f84a79264              # double 0.99309516820046583
	.quad	0x3feece2c1b8ff4a4              # double 0.96266751654879501
	.quad	0x3feee391047642da              # double 0.96527911063648308
	.quad	0x3fec16f83ccae42f              # double 0.87780391572517213
	.quad	0x3fdf6a9943d7db8c              # double 0.49088126778900043
	.quad	0x3feb4195d514e4a7              # double 0.85175601594450689
	.quad	0x3fd84b528d49ef7a              # double 0.37959731862769497
	.quad	0x3fd03e1ee11dfb56              # double 0.25379154190152542
	.quad	0x3fdc57d63afb6cf4              # double 0.44286113510106806
	.quad	0x3fed4b3ddbb93cf2              # double 0.9154347697712224
	.quad	0x3fe9d6819ea44fe8              # double 0.8074348543618699
	.quad	0x3fe917271ecb754d              # double 0.78407627119637768
	.quad	0x3fd4db1454e137dc              # double 0.32587154664076734
	.quad	0x3fdaa930c37d9b22              # double 0.41657656756290085
	.quad	0x3fe99e6f28cce4c2              # double 0.80059011429616356
	.quad	0x3fe0127e7ae4dfef              # double 0.50225757601492471
	.quad	0x3feb7f9babd7743f              # double 0.8593271595269768
	.quad	0x3fea8308d8af4389              # double 0.82849542924132991
	.quad	0x3fcded2f2fde952c              # double 0.23380079114318997
	.quad	0x3fd471d6cac48754              # double 0.31944818307430478
	.quad	0x3fd49c759d06a79a              # double 0.32204952559060873
	.quad	0x3fcc8d6118fa4c44              # double 0.22306455344787157
	.quad	0x3fe22f018c8498af              # double 0.56823804325974503
	.quad	0x3fdab519b6ffd270              # double 0.41730349417711121
	.quad	0x3fe766a408cd0228              # double 0.7312793895617391
	.quad	0x3fd73be8770830e0              # double 0.36303149818628633
	.quad	0x3fcb76ab13c90d44              # double 0.21455896822053877
	.quad	0x3fdab37bc87cdfa0              # double 0.41720480517278169
	.quad	0x3fefe507bcfde8cd              # double 0.99670779144732934
	.quad	0x3fe2fc14ddbe9c04              # double 0.59327166852460822
	.quad	0x3fb2e407de43fb10              # double 0.073791972888994417
	.quad	0x3fe3f4e9bfcc122c              # double 0.62364661655789666
	.quad	0x3fd6e395dc69c950              # double 0.35764071011285115
	.quad	0x3fc1887d232b0c60              # double 0.13697780816264338
	.quad	0x3fef1bc2b442c7d4              # double 0.97213874060821092
	.quad	0x3fe7ab29ebf3210d              # double 0.73964401325159346
	.quad	0x3fd100ef82ef5c0e              # double 0.26568210398312508
	.quad	0x3fe2e4b039bf232f              # double 0.59041606215132514
	.quad	0x3fe67888bf9d973a              # double 0.70221364426536259
	.quad	0x3fef887b0c308348              # double 0.98541023617517797
	.quad	0x3fcbf9d65aa7ab8c              # double 0.21856192995559487
	.quad	0x3fed6a1519713897              # double 0.91919951409524259
	.quad	0x3feaf3bd53c09d91              # double 0.84225336416140995
	.quad	0x3fbe3e6eea265948              # double 0.1181401559500489
	.quad	0x3fddbb404089113c              # double 0.46455389311110529
	.quad	0x3fc1344dd7aac968              # double 0.13440869360563146
	.quad	0x3fedc4e879cc79fb              # double 0.93028663433852843
	.quad	0x3fe987778365d15f              # double 0.79778648055666312
	.quad	0x3fd457c3e9ffa0d2              # double 0.31785676814480468
	.quad	0x3fb44365410d8ed0              # double 0.079153374082632454
	.quad	0x3feb03d8e10db4a5              # double 0.84421962695855213
	.quad	0x3fa2ff3c098b3c70              # double 0.037103534855867149
	.quad	0x3feec3456eb6298c              # double 0.96133681891778755
	.quad	0x3feb6fb8d3febf4b              # double 0.85738793759626597
	.quad	0x3fed321483eb991a              # double 0.91236329808888006
	.quad	0x3fed12bb014e901f              # double 0.90853643660785
	.quad	0x3fe1ec4ceebb637a              # double 0.56009527804700032
	.quad	0x3fe6b69a4dce5eb6              # double 0.70979037472257889
	.quad	0x3fd2c3c81fe5e0b2              # double 0.29319956889186038
	.quad	0x3fe30cbf81056992              # double 0.59530615996782132
	.quad	0x3fe2664e6c1ffad9              # double 0.57498856657170017
	.quad	0x3fd90ee803765212              # double 0.39153480852226707
	.quad	0x3fec3edbc54c4392              # double 0.88267315420863413
	.quad	0x3fc34218ebcf44b8              # double 0.15045463098662082
	.quad	0x3fda2e23c4a0567a              # double 0.40906614496029869
	.quad	0x3f97632311466500              # double 0.022839115075474758
	.quad	0x3fa721f0bbe894a0              # double 0.045180819452334875
	.quad	0x3fe83b1cc6cb37a2              # double 0.75721587016026981
	.quad	0x3fa15771f5caf4b0              # double 0.033870278600696024
	.quad	0x3fd0313b3e59ccca              # double 0.25300484742110696
	.quad	0x3fee24ccc32bdcca              # double 0.94199216956521892
	.quad	0x3fda17aa3ddeb0dc              # double 0.40769439737301894
	.quad	0x3fd54831a142921a              # double 0.33253136394549332
	.quad	0x3fe9d5cc43adc73c              # double 0.80734837740440168
	.quad	0x3fe2f69a19a8fc73              # double 0.59260277759302793
	.quad	0x3fc06f61f2cf148c              # double 0.12839912753966976
	.quad	0x3fe150f4c77370b3              # double 0.54113234477292449
	.quad	0x3fb7a75bc63f45f8              # double 0.092397437954126249
	.quad	0x3fb127ccb0617180              # double 0.067013543187789182
	.quad	0x3feb056c38e8a0a4              # double 0.84441195597630214
	.quad	0x3fdf838380a9e082              # double 0.49240195812991072
	.quad	0x3fe21d9c3a9407f2              # double 0.56611453476966589
	.quad	0x3fdc3dd76ba08602              # double 0.44127450476125329
	.quad	0x3fe0aa2b874e039a              # double 0.52077270914752494
	.quad	0x3fde7e869d69fc10              # double 0.47647252438031362
	.quad	0x3fe7e84bfda079b9              # double 0.74710654770370077
	.quad	0x3fd18ea4f31788b6              # double 0.27433131923147458
	.quad	0x3fdc991c2ec9eda8              # double 0.44684509820191431
	.quad	0x3fd21d0d3becd0b8              # double 0.28302317478233929
	.quad	0x3feac9881aa994f9              # double 0.8371010323286604
	.quad	0x3fe9af76b9b30cac              # double 0.80266891736427714
	.quad	0x3feb889187a1761b              # double 0.86042095651982053
	.quad	0x3fec1e9b461e0838              # double 0.87873614973819425
	.quad	0x3fefd86172c5b6d6              # double 0.99516365448445288
	.quad	0x3fa96bb55d2a9b70              # double 0.049649875281196354
	.quad	0x3fbfb0c82c081fa8              # double 0.12379122805589182
	.quad	0x3fd504480b83acbc              # double 0.32838631748627356
	.quad	0x3fef847f229af941              # double 0.98492390402660856
	.quad	0x3fee9f082b447d43              # double 0.95691307497683231
	.quad	0x3fce06282e345f1c              # double 0.23456289535601449
	.quad	0x3fcb808610671e18              # double 0.21485973168295014
	.quad	0x3fd529ace81554b8              # double 0.33066866554629426
	.quad	0x3fe302307faf9124              # double 0.59401726664194543
	.quad	0x3fe4f5e182f26c07              # double 0.65501475883081717
	.quad	0x3fdce5fce56aedc6              # double 0.4515373459250579
	.quad	0x3fddebeec08980c2              # double 0.46752518465474335
	.quad	0x3fea01afb7446fa1              # double 0.81270585817718566
	.quad	0x3fe003a60dc6857c              # double 0.50044539156458212
	.quad	0x3fe80175f1a4ebbf              # double 0.75017831035744809
	.quad	0x3fd986c4839a5e76              # double 0.39885056354385229
	.quad	0x3fee64b5b2759d80              # double 0.94979367118223479
	.quad	0x3fdad985fe323826              # double 0.41952657531590132
	.quad	0x3fe72557321a8b8d              # double 0.7233081797206623
	.quad	0x3fe0ec455d3e7edf              # double 0.52884166919463016
	.quad	0x3fe5852cfba31295              # double 0.67250680110790262
	.quad	0x3fa5043d80843640              # double 0.041047975481074861
	.quad	0x3fcb37cc1d38d728              # double 0.21264029909951288
	.quad	0x3f9bee5b0b1b5040              # double 0.027276442101382026
	.quad	0x3fd2325c7c0b1a1a              # double 0.28432380784616529
	.quad	0x3fdb974b0def96d6              # double 0.43110920296599653
	.quad	0x3fed64abd911d43b              # double 0.91853897472777335
	.quad	0x3fd2e2021eb3b674              # double 0.29504445074312646
	.quad	0x3fe3256573fffd1a              # double 0.59831497818223345
	.quad	0x3feaf743244877e5              # double 0.84268338285960154
	.quad	0x3fc4493275dec818              # double 0.15848379855521055
	.quad	0x3fe59120ebeb7305              # double 0.67396589353629166
	.quad	0x3fe5802ca0297d2c              # double 0.67189627916005668
	.quad	0x3fbad336002be028              # double 0.10478532318291001
	.quad	0x3fe56889f1e7c915              # double 0.6690110897746161
	.quad	0x3fc284ffdc598df0              # double 0.14468382128971724
	.quad	0x3fca6ddfa65a5570              # double 0.20647807715128463
	.quad	0x3fe81f5e77c65d2a              # double 0.75382922547843134
	.quad	0x3fd84cca4cca37b8              # double 0.37968690394415772
	.quad	0x3fb4dfda6276dbd8              # double 0.08154072669900303
	.quad	0x3fc4c7159951c504              # double 0.16232557283687055
	.quad	0x3fe8bc656641c43c              # double 0.77299756977129829
	.quad	0x3fe84fe17afe077c              # double 0.75975107213910986
	.quad	0x3fe0b520f0183409              # double 0.52211043256250023
	.quad	0x3fe994b80e097c4f              # double 0.79940417043315815
	.quad	0x3fe41619a2434ab0              # double 0.62769777004208116
	.quad	0x3fd4176bcede36c4              # double 0.3139295120425738
	.quad	0x3fead349f6c5a3da              # double 0.83829210469877613
	.quad	0x3fca2ef69f46a1fc              # double 0.2045582082476044
	.quad	0x3fe12bf12b62e9f9              # double 0.53661402200606212
	.quad	0x3fea95f3131e61a1              # double 0.8308043836032547
	.quad	0x3fe6b0da0983cd04              # double 0.70908834322327197
	.quad	0x3fe4514d9e2a0ac3              # double 0.63492470637751131
	.quad	0x3fe2d3042c3e5f33              # double 0.58825882569633448
	.quad	0x3fe3da6b5015ffc1              # double 0.62041249887260375
	.quad	0x3fd0f43b096fbb24              # double 0.26490665360954524
	.quad	0x3fd1db939425c986              # double 0.27902688472308801
	.quad	0x3f7206165bd16900              # double 0.0044003365884128787
	.quad	0x3fcf7042b9a4874c              # double 0.24561342300972411
	.quad	0x3feddf933a252a36              # double 0.93354188305358465
	.quad	0x3f8334681e962700              # double 0.0093773016294735889
	.quad	0x3fd546069b54335c              # double 0.33239903611029376
	.quad	0x3fee7666a8ec0f68              # double 0.95195324890708565
	.quad	0x3fb5f1df30fb0a10              # double 0.085721921404037226
	.quad	0x3fea4a69ca59d350              # double 0.82158364793449756
	.quad	0x3fa2fae5d0345db0              # double 0.037070447602839507
	.quad	0x3fecd6bc48937d71              # double 0.90121282744432396
	.quad	0x3fd0e4e76877309a              # double 0.26397118760793037
	.quad	0x3fee2261a7942456              # double 0.94169695596896008
	.quad	0x3fd24b2b01e4e52e              # double 0.28583789048168995
	.quad	0x3fc7a36ab30eccc4              # double 0.18467458479935861
	.quad	0x3fe6a4138ba7343d              # double 0.70752885128025123
	.quad	0x3fe0220fdb349f67              # double 0.50415795148454101
	.quad	0x3fc0ac31fcc8082c              # double 0.13025498240318834
	.quad	0x3fc13ea6a7e0ed88              # double 0.1347244567603918
	.quad	0x3fd1222071a25308              # double 0.26770793053701469
	.quad	0x3fe22c87f7b47ce5              # double 0.56793592815293137
	.quad	0x3fe54bb828c84560              # double 0.66549308743757862
	.quad	0x3fe24cd6d63c9651              # double 0.57187978594874711
	.quad	0x3fe070deeda0e6e7              # double 0.51377817546673732
	.quad	0x3fd6add3e5169336              # double 0.35435960170643754
	.quad	0x3feb0fa4da0ff0a2              # double 0.8456596621540664
	.quad	0x3fd3e4b049fd0c06              # double 0.31083304620204932
	.quad	0x3feda24c490dbd84              # double 0.92606176632209313
	.quad	0x3feab1d55a32d3a3              # double 0.83420817963507365
	.quad	0x3fd5df3e062c699e              # double 0.34175062754516172
	.quad	0x3fe57ef9afeb3a4c              # double 0.67174991950180063
	.quad	0x3fe4de57005bf506              # double 0.6521410948768398
	.quad	0x3fabd0ee38298c60              # double 0.054328388553380291
	.quad	0x3fbd7df55b063f70              # double 0.11520322296405339
	.quad	0x3fec7fe727deb209              # double 0.8906131533345284
	.quad	0x3f54360614809c00              # double 0.0012335833907941574
	.quad	0x3fe2023eae8acbf9              # double 0.56277402963894396
	.quad	0x3fedf4d5c1350fe8              # double 0.9361370824412889
	.quad	0x3fe439a8dd3991d9              # double 0.63203852851853093
	.quad	0x3fefaddfd8428f17              # double 0.98997490156441159
	.quad	0x3fe6133a4f8ba862              # double 0.68984714065778641
	.quad	0x3fd546455445b1d8              # double 0.33241399030410212
	.quad	0x3fe83d7548138286              # double 0.7575022132624134
	.quad	0x3fe02346cfdee843              # double 0.50430622672798397
	.quad	0x3fe628a7def3b84b              # double 0.69246285958593867
	.quad	0x3fed543d8c8a97b9              # double 0.91653325509536565
	.quad	0x3fd090dcef764c60              # double 0.25884173760386453
	.quad	0x3febc5d4063428b1              # double 0.86789895259541627
	.quad	0x3fe2fb4a690c033e              # double 0.59317513005235134
	.quad	0x3fe724ad42d0a2b5              # double 0.72322714853097259
	.quad	0x3fe7fa7be944e73b              # double 0.74932666359311584
	.quad	0x3fde3d3332098f04              # double 0.47248535047968709
	.quad	0x3fe5655ebeb14fa5              # double 0.66862427944805758
	.quad	0x3fecd76d552ff34f              # double 0.90129725111146708
	.quad	0x3f89821e86b61e40              # double 0.012455214010301252
	.quad	0x3fc71d13bc6ced54              # double 0.18057486248458565
	.quad	0x3fecd20e43da4140              # double 0.90064156773045312
	.quad	0x3fe73b1067e81a8c              # double 0.72595997137325829
	.quad	0x3fedbc441bb1d8ca              # double 0.92923169526218286
	.quad	0x3fce2c2c0f82ad58              # double 0.23572302586885985
	.quad	0x3fe44517e80985b0              # double 0.63343425102009654
	.quad	0x3fd3060f4b8d069c              # double 0.29724485757842856
	.quad	0x3fd2459f1b45a664              # double 0.28549935973442175
	.quad	0x3fe72bbcae5780bb              # double 0.72408899356016521
	.quad	0x3fe3b27a3e1a9698              # double 0.61553680543575506
	.quad	0x3fdad3b59f09e074              # double 0.41917171984778823
	.quad	0x3fdd53f302e373aa              # double 0.4582488563735817
	.quad	0x3fd5aef5eddc9040              # double 0.33880375126523532
	.quad	0x3fd13d1e0633ad02              # double 0.269355302864554
	.quad	0x3fdbbf9e8c349fb2              # double 0.4335705155558528
	.quad	0x3fe1595a7a84ea92              # double 0.54215740136653978
	.quad	0x3fe6efec9a119da9              # double 0.71678762523236117
	.quad	0x3fdfe5acb632bb42              # double 0.49839322846212408
	.quad	0x3f8e6faaf489eb00              # double 0.014861426913957754
	.quad	0x3fedb4d0d87435f7              # double 0.92832224155580334
	.quad	0x3fe0928b8c794914              # double 0.517888807642779
	.quad	0x3fe9ed3c6a9c57cc              # double 0.81020947286992273
	.quad	0x3fbeeaf235629108              # double 0.12077249339433049
	.quad	0x3fe1f45c94fd4f7c              # double 0.56107930278311313
	.quad	0x3fb943379bd4fbc0              # double 0.098681903405107185
	.quad	0x3fee2c2d33c65ccb              # double 0.94289264786029869
	.quad	0x3fe71c4df6a88c74              # double 0.72220514464824115
	.quad	0x3fe2a03e5a8ca99a              # double 0.58206098256532646
	.quad	0x3fd0bf79339dce36              # double 0.2616866115633657
	.quad	0x3fee5d87686448f9              # double 0.94891710652362271
	.quad	0x3fea44646126f7ed              # double 0.82084864592593265
	.quad	0x3fea2144d027ac6b              # double 0.81656113295811161
	.quad	0x3fa79a5d744dfd70              # double 0.046099586913437629
	.quad	0x3fe8c4f6e13ef30b              # double 0.77404350274409361
	.quad	0x3f9899943a6d97c0              # double 0.024023357454460159
	.quad	0x3fe590ad04cc31a2              # double 0.67391062676465574
	.quad	0x3fd3b73376df18a6              # double 0.30805670364896753
	.quad	0x3fd44c00753b6c46              # double 0.31713878105592064
	.quad	0x3fc60a09e2161e68              # double 0.1721813539445407
	.quad	0x3fd8d60a1d40ef3a              # double 0.38806393486787594
	.quad	0x3fc5f0dd26619750              # double 0.17141308187563675
	.quad	0x3fca9fe3f37e1a90              # double 0.20800446881567725
	.quad	0x3fd6cccd75147af6              # double 0.35625015672296401
	.quad	0x3fd058bdee1eed00              # double 0.25541637662873029
	.quad	0x3fc774e36a04abc0              # double 0.1832546489398208
	.quad	0x3fccd194ed676d28              # double 0.22514592735283512
	.quad	0x3fdf0651e4865a32              # double 0.48476073567272515
	.quad	0x3fe0a9790e6ab3ee              # double 0.52068760696204008
	.quad	0x3fe0b325dde6aa4c              # double 0.52186864223524188
	.quad	0x3fb9db6fea8f0538              # double 0.10100459553270447
	.quad	0x3fd0f97a34ed84ee              # double 0.26522689026576429
	.quad	0x3fe84f0de3cb9cde              # double 0.75965017787248335
	.quad	0x3fddb21aa06563b6              # double 0.46399560607602142
	.quad	0x3fe3d9c0396876e6              # double 0.62033091747772739
	.quad	0x3fed13e283fafae0              # double 0.90867734696788815
	.quad	0x3fca90b5e2ab0aa0              # double 0.20754121368198231
	.quad	0x3fcba562d2f7765c              # double 0.21598468114000269
	.quad	0x3fc2738410386a24              # double 0.14415026466379388
	.quad	0x3fd94bf3815976fa              # double 0.39526069289955468
	.quad	0x3fc2c0c536a64a98              # double 0.14650788467823328
	.quad	0x3feea73c92c8d08e              # double 0.95791462582430298
	.quad	0x3fba7989f12d7648              # double 0.10341703546642933
	.quad	0x3fe1d5cd0630cc9c              # double 0.55734873971086385
	.quad	0x3fe30678ba485a08              # double 0.59453998931240992
	.quad	0x3fb19b5d6e21d5c8              # double 0.068776931178795242
	.quad	0x3fe5932672394f31              # double 0.67421266850803907
	.quad	0x3fe8c51aad103a93              # double 0.7740605716843042
	.quad	0x3fe3dc81d8c72ea0              # double 0.62066738452400116
	.quad	0x3fe11f8f84422cd0              # double 0.5351026137517696
	.quad	0x3fbbb56bec9e4950              # double 0.10823702360929599
	.quad	0x3fc383ea9723c8b8              # double 0.15246326808807509
	.quad	0x3fdd1b440db5b8a4              # double 0.45478917445042044
	.quad	0x3fe284b1106bd3f1              # double 0.57869771201387554
	.quad	0x3fe077e42ba82038              # double 0.51463516737658832
	.quad	0x3fb1d512df2656b8              # double 0.069657496910020877
	.quad	0x3fd900f04baae82e              # double 0.39068229092993334
	.quad	0x3fd4ba3e48b26846              # double 0.32386738871867171
	.quad	0x3fe8b060d196f5ef              # double 0.77153054175840718
	.quad	0x3feec639d56f26fa              # double 0.96169749914517344
	.quad	0x3fc2549665b55fb8              # double 0.14320640531763984
	.quad	0x3fe67e3cd731f22a              # double 0.70290987043660391
	.quad	0x3faf2da47688af20              # double 0.060895099133942532
	.quad	0x3fb8c3253af15ea8              # double 0.096727682962746031
	.quad	0x3fe43d2ada768840              # double 0.63246672314222252
	.quad	0x3feb818635951a28              # double 0.85956106629675322
	.quad	0x3fd9af272200e6ea              # double 0.40131548233658398
	.quad	0x3fe6c1d0b55bb195              # double 0.71115909024733759
	.quad	0x3fd5eaa434fc6806              # double 0.34244637655649546
	.quad	0x3fdf837bfbf69b3e              # double 0.49240016561309463
	.quad	0x3fd3c1e3cc2dc9dc              # double 0.30870909633008892
	.quad	0x3fe3fdca18abd15f              # double 0.62473015612208005
	.quad	0x3fe6487cbc047e94              # double 0.69634854051760664
	.quad	0x3feb6122c2d96960              # double 0.85560739571091559
	.quad	0x3fc0c3a86b5b802c              # double 0.13097100488721602
	.quad	0x3fc5becc7c8b4600              # double 0.16988521653415489
	.quad	0x3fd12bb7d3119ea8              # double 0.26829333889188911
	.quad	0x3fb3d48bad9d8cf8              # double 0.077461938749866621
	.quad	0x3fe68e30314c24c1              # double 0.70485696438222345
	.quad	0x3fd95915462dd7f6              # double 0.39606220105576939
	.quad	0x3fdd506aac48e742              # double 0.45803324532208844
	.quad	0x3fe3de2f91117ce1              # double 0.62087229093222274
	.quad	0x3fbf50f34fd81248              # double 0.12232895564381707
	.quad	0x3fed720c806f5c31              # double 0.92017197689972907
	.quad	0x3fdbfd254078defa              # double 0.43732577606304768
	.quad	0x3fce163fefd01bcc              # double 0.23505400857558667
	.quad	0x3fe43108278692b6              # double 0.63098533363207454
	.quad	0x3fdda565f5a5ea14              # double 0.46322010983536299
	.quad	0x3fea21a5eba43e02              # double 0.816607437360233
	.quad	0x3fe2adb59a374c95              # double 0.58370475883784201
	.quad	0x3fc7deeeaeb2564c              # double 0.18649085550412037
	.quad	0x3feead82e2fed810              # double 0.95868057570510423
	.quad	0x3fe8eefeb4333cd3              # double 0.77917418666211302
	.quad	0x3fa7b10f2aaef760              # double 0.046272729835876047
	.quad	0x3fd985203b8bc248              # double 0.39875036063225311
	.quad	0x3fe6217130d060e7              # double 0.69158229383449743
	.quad	0x3fec48b807e05ae6              # double 0.88387681520802341
	.quad	0x3fdf3e5a774f1274              # double 0.48818074847466808
	.quad	0x3fd6a145e3d7e062              # double 0.35359332323378656
	.quad	0x3fb47b0c37d65fd0              # double 0.080002559311082466
	.quad	0x3fe95ea3aa640030              # double 0.79280265120906357
	.quad	0x3fd5943f26c9b8ae              # double 0.33717325961959943
	.quad	0x3feeee6997b13ec0              # double 0.96660308482565682
	.quad	0x3fed957255cac48c              # double 0.92449299579870247
	.quad	0x3fe15f3c8f63c588              # double 0.54287555700118251
	.quad	0x3fe2e832410a00c6              # double 0.59084427550262641
	.quad	0x3feb7494c6b517af              # double 0.85798109827077507
	.quad	0x3fb994727940ce48              # double 0.099921373942202796
	.quad	0x3fcf1453628dd31c              # double 0.2428077918263164
	.quad	0x3fc58e7591a75eac              # double 0.16841001140595802
	.quad	0x3fc86590efec5a00              # double 0.19059955325128897
	.quad	0x3fc0f1eb08af5d94              # double 0.13238275455544779
	.quad	0x3fc6926c26d6e090              # double 0.17634345909550975
	.quad	0x3fefa9037a06bdd7              # double 0.98938154061573413
	.quad	0x3fefe54ba127efd3              # double 0.99674016452581282
	.quad	0x3fdf82bce27b99f2              # double 0.49235460393393204
	.quad	0x3fe95821fd7784ca              # double 0.79200839524505651
	.quad	0x3fef76fa3005293b              # double 0.98327359560906957
	.quad	0x3fe48c5efadb45e2              # double 0.64213513369957931
	.quad	0x3fb024e70f6be540              # double 0.063063088669783163
	.quad	0x3fd6543b6103b1a4              # double 0.34889111017289509
	.quad	0x3fcbb8bf9c68db20              # double 0.21657557618319689
	.quad	0x3fe5710491ab6e3a              # double 0.67004612399200103
	.quad	0x3fd3a0b889c8b5fe              # double 0.30668462233992944
	.quad	0x3fddddf3a768d876              # double 0.46667186115826753
	.quad	0x3fe09f6f0d87c9f8              # double 0.51946213381444206
	.quad	0x3fe4d6c9ed4502df              # double 0.65121933309282187
	.quad	0x3fb8941e0584e598              # double 0.096010090205615461
	.quad	0x3fe7dfcf4f8ee8c4              # double 0.74607053316801641
	.quad	0x3fbd0515085cc628              # double 0.11335879758987544
	.quad	0x3fea52b897262945              # double 0.82259778519918625
	.quad	0x3febea54514e89cf              # double 0.8723546588919876
	.quad	0x3fe3c2b8d5c37f42              # double 0.61751977682795478
	.quad	0x3feb013716121261              # double 0.84389833746588405
	.quad	0x3fa09ff7dbc38300              # double 0.032470460487962427
	.quad	0x3fdcf2c803a3f83c              # double 0.4523181949188062
	.quad	0x3fd2caf73eac94b0              # double 0.29363804932138304
	.quad	0x3fd0d7e01494cffa              # double 0.26317598352329663
	.quad	0x3fdda3eb519fa0fc              # double 0.46312983485269377
	.quad	0x3fe37fa1f59f0763              # double 0.60933015797511947
	.quad	0x3fec76c6d7463e92              # double 0.88949911161212669
	.quad	0x3fdacc069c13b25a              # double 0.41870274774445237
	.quad	0x3fb18a18d225a4c8              # double 0.068513442330771501
	.quad	0x3fe11ec25d360dc4              # double 0.53500478940298324
	.quad	0x3fb3fade6c6a9fd0              # double 0.078046704739448857
	.quad	0x3fe8d3e1e5e55b47              # double 0.77586455251262343
	.quad	0x3fd4d822a3d66404              # double 0.32569185256721789
	.quad	0x3fef9d0821d7ad72              # double 0.98791891679631605
	.quad	0x3fe137894126d9d2              # double 0.53802931523278574
	.quad	0x3fcb127987efcce4              # double 0.21150130403075373
	.quad	0x3fd4927565029624              # double 0.3214391218592445
	.quad	0x3fd5fba40baef0da              # double 0.343483935746702
	.quad	0x3febad3b03bd48c4              # double 0.86489630441999354
	.quad	0x3fe096cd275f345e              # double 0.5184083718282968
	.quad	0x3fea7706c385d92f              # double 0.82702959240012841
	.quad	0x3fe5c7dc493bddc0              # double 0.68064703277098459
	.quad	0x3feb60621b005790              # double 0.85551553033541161
	.quad	0x3fd43c6851c337a0              # double 0.31618698105455145
	.quad	0x3fbc32f46c6da420              # double 0.11015250823187772
	.quad	0x3fd9ee8f249eff8a              # double 0.40518549515035629
	.quad	0x3fdd6a23a3fa2354              # double 0.45960322392834496
	.quad	0x3fef66be1e5e0328              # double 0.98129182749844279
	.quad	0x3fa2b26069c210d0              # double 0.036517155561371362
	.quad	0x3fe843859d31cee4              # double 0.75824242307723155
	.quad	0x3fd8ef85b3f8da0e              # double 0.38961927962682885
	.quad	0x3fefbee4b4c5e760              # double 0.99205241496313689
	.quad	0x3fec5cbc4fb91a64              # double 0.8863202626315112
	.quad	0x3fdf622daa408ad0              # double 0.49036733270820054
	.quad	0x3fe87a696a8fbc80              # double 0.76494284451281658
	.quad	0x3fd0a98968b8bf44              # double 0.26034770228124082
	.quad	0x3fa3e9ea72f73370              # double 0.038894011052980626
	.quad	0x3fe4762b12b288e8              # double 0.63942483569942699
	.quad	0x3fedea40a5676c12              # double 0.9348452787920698
	.quad	0x3fd13419dbacf4cc              # double 0.26880499317833251
	.quad	0x3fee4dc8eaec7cb8              # double 0.94699521907377626
	.quad	0x3fd231cfc09a985e              # double 0.28429025467847235
	.quad	0x3fe5af12075a9177              # double 0.67762090145383425
	.quad	0x3fe1d90a38fc2d9e              # double 0.55774413232704823
	.quad	0x3fe91a0983381082              # double 0.78442836407386118
	.quad	0x3fe2acce8280a427              # double 0.58359456528444731
	.quad	0x3fdc4bafd49fd1dc              # double 0.4421195579918995
	.quad	0x3febda6559cbc855              # double 0.87040965593610997
	.quad	0x3fd94805bcc4b600              # double 0.39502089914716976
	.quad	0x3fe532ea8a353db6              # double 0.66246535295242981
	.quad	0x3feca0eb42d80ef4              # double 0.89464343123878942
	.quad	0x3fbd451a71841928              # double 0.11433568259608207
	.quad	0x3fd8ca03ebc82b0a              # double 0.38733003640724972
	.quad	0x3fd7010ca6213d88              # double 0.35943905089967432
	.quad	0x3fde693962e576b0              # double 0.4751723733696549
	.quad	0x3fefe58c7fea99e9              # double 0.99677109702753086
	.quad	0x3fe3c56b6a39964b              # double 0.61784907099781472
	.quad	0x3fd815f3c804f6ba              # double 0.37633986027854471
	.quad	0x3fd8bee4579d8a5c              # double 0.38665112072172803
	.quad	0x3fe16738431a8afc              # double 0.54385007005870944
	.quad	0x3feec6663aa5d445              # double 0.96171866850512144
	.quad	0x3fd0e7f00fb264be              # double 0.26415635617156485
	.quad	0x3fd9e068856b1ca6              # double 0.40432179478779984
	.quad	0x3feb0ba01f0e0348              # double 0.84516912522676879
	.quad	0x3fe21c7b5a0e7fba              # double 0.56597678746401603
	.quad	0x3fed5eeacc0e41dc              # double 0.91783656935336521
	.quad	0x3fe5ec3863e1a431              # double 0.68508548267448621
	.quad	0x3fd774aab197ebaa              # double 0.36649577468022676
	.quad	0x3fd66251ed0beb30              # double 0.34975097798421739
	.quad	0x3fda65450d5c8574              # double 0.41243101410699201
	.quad	0x3feb3ffae9d18dd0              # double 0.85156007449807625
	.quad	0x3fec71df16bbf76a              # double 0.88890032234460858
	.quad	0x3feba78438ac1233              # double 0.86419879025249313
	.quad	0x3fd330fdf074b146              # double 0.29986523134245535
	.quad	0x3f9eadcafd1d21c0              # double 0.029959842394676306
	.quad	0x3fc8c8828aae4d0c              # double 0.19361907741095086
	.quad	0x3fd90d9de0149aa8              # double 0.39145609743938303
	.quad	0x3fef4c8795318845              # double 0.97809199466087959
	.quad	0x3fc04cc85c561928              # double 0.12734322079286042
	.quad	0x3fe6b0db6827feab              # double 0.70908899634374245
	.quad	0x3fe5323c11b03ed9              # double 0.6623821588018145
	.quad	0x3fb5823e28f20478              # double 0.084018597599440414
	.quad	0x3fca3271802b9be0              # double 0.20466440923993812
	.quad	0x3fd0149b7e3168b8              # double 0.25125777553115425
	.quad	0x3fe93dc092e5fda7              # double 0.78878811541647031
	.quad	0x3fdface741abdd4c              # double 0.494928182727979
	.quad	0x3fe168ff71f11742              # double 0.54406711820841047
	.quad	0x3fda7e3aba5317f2              # double 0.41395443149337929
	.quad	0x3fc2c058cd5234d0              # double 0.14649496102757675
	.quad	0x3fe509c35d80fbe3              # double 0.65744179022283011
	.quad	0x3feb9ad72723664f              # double 0.86265142101474079
	.quad	0x3fcbcd93905cc8bc              # double 0.21721119450518767
	.quad	0x3fec63c6df45b4bf              # double 0.88717979057187069
	.quad	0x3fbe641e2af522f0              # double 0.11871517704743062
	.quad	0x3fe3650bee271348              # double 0.6060847903650961
	.quad	0x3fd27651b10020e4              # double 0.28847162518697034
	.quad	0x3fd7fbfa922d935c              # double 0.37475456500242443
	.quad	0x3feefb2d7634a6dd              # double 0.96816132628483908
	.quad	0x3fe9971aff3608cc              # double 0.79969549032127806
	.quad	0x3fed171dccbd18ce              # double 0.90907182682055931
	.quad	0x3fea4b15947b5e5f              # double 0.82166556358692933
	.quad	0x3fe9ec7852c7c096              # double 0.8101159683992758
	.quad	0x3fe891062aecf6d3              # double 0.76770313629068665
	.quad	0x3fd7d5d074c78356              # double 0.37242518810494596
	.quad	0x3fed75256a03f7d7              # double 0.92055006700661124
	.quad	0x3fc5e7c944e02d4c              # double 0.17113605368681772
	.quad	0x3fc4f3a0dbbd25f8              # double 0.16368494729458383
	.quad	0x3fe1c820489f16aa              # double 0.55567945655703466
	.quad	0x3fa925d6ca552090              # double 0.049116813849253593
	.quad	0x3fd2dc53cd11c606              # double 0.29469771410285295
	.quad	0x3feb9a54f19d4e00              # double 0.86258933248831227
	.quad	0x3fd2e272231e5a8a              # double 0.29507115773723369
	.quad	0x3fe0f5bfa6f97707              # double 0.52999861347390798
	.quad	0x3fe9a1ff1f416d72              # double 0.80102497200588929
	.quad	0x3fea5c1e141ccdeb              # double 0.82374481132722843
	.quad	0x3fe75ea0b84c8c2d              # double 0.73030124660397677
	.quad	0x3fe1757a5f64d4f4              # double 0.54559057838073821
	.quad	0x3fe4e0ecfbcecbbc              # double 0.65245675259790614
	.quad	0x3fe3e533bcb020fd              # double 0.62172877171636254
	.quad	0x3fb5f8cb348aa530              # double 0.085827541663680007
	.quad	0x3fe82bb18de0825c              # double 0.75533368788098753
	.quad	0x3fd4dddd8be6c6ae              # double 0.32604159033062785
	.quad	0x3fc10e6e80d39928              # double 0.13325291910514037
	.quad	0x3fe45ef0add5ba59              # double 0.63658937408565486
	.quad	0x3fd5959ffd075594              # double 0.33725738248662052
	.quad	0x3fc211340746d160              # double 0.14115000109962761
	.quad	0x3fe043e49467dd5d              # double 0.50828770623676756
	.quad	0x3fd39c4bf0930568              # double 0.30641458982071024
	.quad	0x3fe2892f19bfa2b6              # double 0.5792460921193967
	.quad	0x3feb58c0feec665f              # double 0.85458421506627846
	.quad	0x3fe4a65340a8b8c8              # double 0.64530336979603309
	.quad	0x3fec799e6119c772              # double 0.88984602894764309
	.quad	0x3fe0e0c75c795db2              # double 0.52743881284089
	.quad	0x3fc3b35380445640              # double 0.15391010058435661
	.quad	0x3fa0233e48170400              # double 0.031518884944951253
	.quad	0x3fe019190e85c3e4              # double 0.50306370579175708
	.quad	0x3f97f2c64a312600              # double 0.0233870489867396
	.quad	0x3fadff0cb09d0c80              # double 0.058586498793851582
	.quad	0x3fe47d04eb87a5c2              # double 0.64026113511970828
	.quad	0x3fd7a5e4ebc8d668              # double 0.36950037980873285
	.quad	0x3fc2e00550ce42f8              # double 0.1474615711745384
	.quad	0x3fd5e5d6ac366d22              # double 0.34215323274266229
	.quad	0x3fd3a573ba531874              # double 0.3069733924461453
	.quad	0x3fedb7c5b9405c83              # double 0.92868314916530925
	.quad	0x3fb5ba67820653e8              # double 0.084875554317775603
	.quad	0x3fe506ccd153c829              # double 0.657080086557703
	.quad	0x3febfd83b30939af              # double 0.87469658821082941
	.quad	0x3fd655ca6cfa0fe8              # double 0.34898625032678732
	.quad	0x3fbb3f45a0ad87e8              # double 0.10643420384215541
	.quad	0x3fcf6bf8f7e97c18              # double 0.24548256020622783
	.quad	0x3fe2758c81e899b5              # double 0.57684922573826347
	.quad	0x3fe997a8ba1e53f5              # double 0.79976307250274081
	.quad	0x3fe7375b5dee74bc              # double 0.72550743432989107
	.quad	0x3fc057686f643928              # double 0.12766747893369623
	.quad	0x3fd4a03608b1dc6e              # double 0.32227850770090682
	.quad	0x3fe162078a240a6d              # double 0.54321648579236881
	.quad	0x3fe69c4d373016a3              # double 0.70657978800655419
	.quad	0x3fcec8352fc51218              # double 0.24048485596189617
	.quad	0x3fd08ae43768758e              # double 0.25847726260129711
	.quad	0x3fd5239d8b086fb8              # double 0.33029879167019827
	.quad	0x3fcf8fd9b4e93fc4              # double 0.24657746633101685
	.quad	0x3fd07b329475ccc8              # double 0.25751938341199976
	.quad	0x3fd200ed2343eeda              # double 0.28130653804667605
	.quad	0x3fd945adb996a40e              # double 0.39487784503813905
	.quad	0x3fdad30c7a74c602              # double 0.41913139303787272
	.quad	0x3fe4a724ac93afc6              # double 0.64540322977472253
	.quad	0x3fd3d381b934e42c              # double 0.30978434645254782
	.quad	0x3fe24ee22318eb13              # double 0.57212931494663832
	.quad	0x3fb432b3347b5d68              # double 0.078898620903932959
	.quad	0x3feb02af9cc6b861              # double 0.8440778791462088
	.quad	0x3feb83ae5267ec47              # double 0.85982433409606862
	.quad	0x3fe1bffee5b67fa8              # double 0.55468697419927526
	.quad	0x3fd1d548b5f12378              # double 0.27864282386558825
	.quad	0x3feaf79faeb0d35c              # double 0.84272750968248599
	.quad	0x3fd88dd61e2baf84              # double 0.38365700670578229
	.quad	0x3fec655255cbe662              # double 0.88736836201787761
	.quad	0x3fcb59a39597447c              # double 0.2136730652260076
	.quad	0x3fc4dc0795ca7da0              # double 0.16296477140438714
	.quad	0x3fd00d9382fdf9ae              # double 0.25082862655826943
	.quad	0x3fe47a54fb66505d              # double 0.63993310071465326
	.quad	0x3fe4d59866a5ae26              # double 0.6510736470058347
	.quad	0x3fefaf627493b5b9              # double 0.99015925187057185
	.quad	0x3febfb4abc132788              # double 0.87442528470386183
	.quad	0x3fdad200db356e96              # double 0.41906758696652824
	.quad	0x3fbc56c5f18b54d0              # double 0.11069905421330195
	.quad	0x3f82611037e8b440              # double 0.0089741961538384318
	.quad	0x3febd32bde544bdb              # double 0.86952775405586225
	.quad	0x3feb54c583b0ab18              # double 0.85409808846211188
	.quad	0x3fdf8b56b37b4ec4              # double 0.49287955787188431
	.quad	0x3fca88b166edc998              # double 0.20729653859923469
	.quad	0x3fcd85956eb84bac              # double 0.2306391516327414
	.quad	0x3fdf3b903e827358              # double 0.48801046471071663
	.quad	0x3fd4f0e4cc07508c              # double 0.32720298695245087
	.quad	0x3fe78d46cc2238b3              # double 0.73599567289217871
	.quad	0x3fe36bca87ee4ddc              # double 0.60690809773444299
	.quad	0x3fe90ec88bb2626c              # double 0.78305461201223414
	.quad	0x3fea77b950da92e2              # double 0.82711473266371294
	.quad	0x3fe8b9df2c22f3c0              # double 0.77268942470947621
	.quad	0x3feaebdd37894d29              # double 0.84129200789394532
	.quad	0x3fd3954a4cb8f9a2              # double 0.30598695270955478
	.quad	0x3fec3d8386508bd6              # double 0.88250900491072559
	.quad	0x3fddcfaac271da84              # double 0.46579998959297364
	.quad	0x3fcfeac3e900cae4              # double 0.24935196759323397
	.quad	0x3fd65b5813e5527c              # double 0.34932519858310918
	.quad	0x3fe168f3bb23d254              # double 0.54406153250472267
	.quad	0x3fe65dfb7ede39a9              # double 0.69897246149939918
	.quad	0x3fdad6018080e87a              # double 0.41931188153433363
	.quad	0x3fe7a1bd4da8ce4c              # double 0.73849358718730107
	.quad	0x3fe303a5bf7a7d8c              # double 0.5941952457250621
	.quad	0x3fdc709e6c770584              # double 0.44437370865133397
	.quad	0x3fcb40a52d93bc7c              # double 0.21291031575626451
	.quad	0x3fc5a3fa329c131c              # double 0.16906669112372519
	.quad	0x3fa3ff78eb2bec20              # double 0.039058474261729481
	.quad	0x3fe3aa7c841af0b8              # double 0.61456132699779342
	.quad	0x3fe56022d396d912              # double 0.66798535657906855
	.quad	0x3fe5da12886fa459              # double 0.68287016532589029
	.quad	0x3fd81ff688b3a760              # double 0.37695086812765588
	.quad	0x3fc779b4f1a0c930              # double 0.18340169714208221
	.quad	0x3feecf84131e5b03              # double 0.96283153280350608
	.quad	0x3fe9d02c4167e708              # double 0.80666172766288557
	.quad	0x3fdb24e1a957ab78              # double 0.42412606751775384
	.quad	0x3fba9edf7c62eea0              # double 0.10398670946863797
	.quad	0x3fd1870cc78bd54e              # double 0.27386779295860186
	.quad	0x3fe5ba0df4959f30              # double 0.67896173258211512
	.quad	0x3fed6dde134809c7              # double 0.91966155782602577
	.quad	0x3fc9a025ffbdcaf8              # double 0.20019984233257282
	.quad	0x3faf9ff4c30af9c0              # double 0.061767243203110223
	.quad	0x3fede227c885f47c              # double 0.93385686077785079
	.quad	0x3fd1bac8992da7a6              # double 0.2770253654367657
	.quad	0x3fd28745a7c8e78e              # double 0.28950635323746432
	.quad	0x3fe2cfc545513fb5              # double 0.58786262072134454
	.quad	0x3fb0104a5d224988              # double 0.062748573053147294
	.quad	0x3f8361321d2b6b40              # double 0.0094627299453599045
	.quad	0x3fea5bbd1d78d27d              # double 0.82369857555620707
	.quad	0x3fe7e47aff144190              # double 0.74664068050519639
	.quad	0x3fd3be02f1a9a8de              # double 0.30847238159061685
	.quad	0x3fe9631cf76d437e              # double 0.79334877324627917
	.quad	0x3fcb17dfc48e1434              # double 0.21166607949649718
	.quad	0x3feabf9eaece92f1              # double 0.83589109556177565
	.quad	0x3fef2b859b5a3be6              # double 0.97406273214607775
	.quad	0x3fee4321ad011ca0              # double 0.94569476880942104
	.quad	0x3fefe79eee9810c9              # double 0.99702402687446423
	.quad	0x3fd16c7928d17642              # double 0.27224568353799239
	.quad	0x3fdd52a5439a6d20              # double 0.45816928483846375
	.quad	0x3fe1189e1ac8f67e              # double 0.53425507766196723
	.quad	0x3fe094a288d7c7b3              # double 0.51814390875937588
	.quad	0x3fceead9ac954788              # double 0.24154206206236162
	.quad	0x3fceff6370acb984              # double 0.24216883660978905
	.quad	0x3fd14d100f1f9436              # double 0.27032853581323779
	.quad	0x3fc2eba99742315c              # double 0.14781684766456749
	.quad	0x3fe911e4242363db              # double 0.78343398149729226
	.quad	0x3feb2753f0292de7              # double 0.84855076700608556
	.quad	0x3fcce4e6ee39fa98              # double 0.22573553688194603
	.quad	0x3fe6ba65c587eec1              # double 0.71025360660811299
	.quad	0x3fd8ad12df089328              # double 0.38556358128180301
	.quad	0x3fbd435c0bb4c3a0              # double 0.11430907522004796
	.quad	0x3fefd9d712495c16              # double 0.9953418118628885
	.quad	0x3fd48308c2483eb2              # double 0.32049769375678772
	.quad	0x3fded70c15c69b90              # double 0.48187543989700377
	.quad	0x3fcc6c146318389c              # double 0.22204832876781644
	.quad	0x3fb12944ab467940              # double 0.067035953345542687
	.quad	0x3fd44050ab3e782c              # double 0.31642548296975082
	.quad	0x3fe88df8ad9fd72e              # double 0.76733049307833823
	.quad	0x3fe6234fd9c08c66              # double 0.69181053666796966
	.quad	0x3fd31ee1d21a5b7a              # double 0.29875989454142593
	.quad	0x3fe9c4f8af3ba379              # double 0.80529436326206316
	.quad	0x3fc3a39468f177a8              # double 0.15342955707722905
	.quad	0x3fe48644ab1d1c7d              # double 0.64139016552589079
	.quad	0x3fdc2ac6c91d6892              # double 0.44011087074398703
	.quad	0x3fd6290fd911bb16              # double 0.34625621984643951
	.quad	0x3fe24a1493fb0e55              # double 0.5715430155036737
	.quad	0x3feabe33ba656e49              # double 0.83571802526007233
	.quad	0x3fdf3fb0fff416f8              # double 0.48826241488892164
	.quad	0x3fe54cb86ea3a658              # double 0.66561528786878466
	.quad	0x3fe00a38baaef1de              # double 0.50124775373074804
	.quad	0x3fd40ad551f41480              # double 0.31316121104493533
	.quad	0x3fe3667ad8888a6a              # double 0.60625974933311721
	.quad	0x3fbe7da2f503b9f0              # double 0.11910456163216288
	.quad	0x3fd052bb973b5006              # double 0.25504960793227871
	.quad	0x3fd397f3ed4da070              # double 0.30614946531432619
	.quad	0x3fd984044321b362              # double 0.39868265682053139
	.quad	0x3fe0cb85e6cf16e2              # double 0.52484412269469893
	.quad	0x3fe1dcedf9cea3e3              # double 0.55821894445864151
	.quad	0x3fe0c41237400370              # double 0.52393446723008985
	.quad	0x3fc1cb014dd20dc0              # double 0.13900772380666915
	.quad	0x3fcd711db3a7a184              # double 0.23001452705581127
	.quad	0x3fe10514f798af62              # double 0.53187034948994616
	.quad	0x3fec4785508de9da              # double 0.88373056157370944
	.quad	0x3feba22ea20eae34              # double 0.86354762698960607
	.quad	0x3fd1e40c5b5edc4a              # double 0.27954396174340401
	.quad	0x3fe9d3357e7c8053              # double 0.80703234390603951
	.quad	0x3fcc421287f5f644              # double 0.22076636923513793
	.quad	0x3fd68104de0b8760              # double 0.35162469562611953
	.quad	0x3fb18bf7f6b1c138              # double 0.068542001464952373
	.quad	0x3fd939d72daa7c5e              # double 0.39415530643049645
	.quad	0x3fe6376cb0bacb9c              # double 0.69426569478524724
	.quad	0x3fd018f25cf95872              # double 0.25152262763493305
	.quad	0x3fb9bf6250bd3960              # double 0.10057653876467532
	.quad	0x3fc524300f6526a4              # double 0.16516686202731024
	.quad	0x3fe3659ddae62633              # double 0.60615437272753636
	.quad	0x3fdde3cb2ab3f1b4              # double 0.46702841921048877
	.quad	0x3fe655c680b4cb4f              # double 0.69797063005385407
	.quad	0x3febd97b6976ee07              # double 0.8702981052260278
	.quad	0x3fc035beed62ec60              # double 0.12664019194730525
	.quad	0x3fed87905bc6fd1b              # double 0.92279832768682313
	.quad	0x3fe12fe8dfd17382              # double 0.53709834780202947
	.quad	0x3fe1d9accd11ad81              # double 0.55782165577458909
	.quad	0x3fe63053fd53b9bd              # double 0.6933994243425371
	.quad	0x3fe491e21a6c89bf              # double 0.64280800972874619
	.quad	0x3f82b938de4c80c0              # double 0.0091423456993314777
	.quad	0x3fd7c7501218f618              # double 0.37154008643469316
	.quad	0x3fd5d08fc2e14cfa              # double 0.34085458785303013
	.quad	0x3fe5efa172d44a47              # double 0.68550178935613182
	.quad	0x3fc6414bd2f1d144              # double 0.17386768150357501
	.quad	0x3fe4110013b73a41              # double 0.62707523203591375
	.quad	0x3fdb9e321d76cc90              # double 0.43153050305699825
	.quad	0x3fd29b044ceabb0a              # double 0.2907114745275271
	.quad	0x3fe5cd5f792201b9              # double 0.68131993922002387
	.quad	0x3fe0af947e455b68              # double 0.52143311178484186
	.quad	0x3fe00060c123b760              # double 0.50004613611757165
	.quad	0x3fd9d258c83260e6              # double 0.40346355009525181
	.quad	0x3fd71acfa1ef8cc4              # double 0.36101141752278587
	.quad	0x3feadb7bded6c40f              # double 0.83929246447780936
	.quad	0x3fe833b00af36319              # double 0.75630952967466947
	.quad	0x3fdc9faac4db4f7e              # double 0.4472453043392689
	.quad	0x3fdb647f48d97d84              # double 0.42800886263099636
	.quad	0x3fa9936d3c725410              # double 0.049952901486143841
	.quad	0x3fe0b8c345992686              # double 0.52255405038268132
	.quad	0x3fea587979a2ee4c              # double 0.82330011136168357
	.quad	0x3fcbef1f4eafd5b0              # double 0.21823493330127297
	.quad	0x3fe58edad1f5ade3              # double 0.67368832595587624
	.quad	0x3fc1799eb848d200              # double 0.13652404783501026
	.quad	0x3fd2f16ca87cfdbc              # double 0.29598537877970066
	.quad	0x3fde7b3bd05cf84a              # double 0.47627158496823496
	.quad	0x3fd6a1a42ff0a5a0              # double 0.35361580545085225
	.quad	0x3fdc668827f7c9c0              # double 0.44375804808728603
	.quad	0x3fd75a2c941a76f8              # double 0.36487879241199961
	.quad	0x3fe49052d0b6ff56              # double 0.64261761440864507
	.quad	0x3fad4a02295ed400              # double 0.057205264616108309
	.quad	0x3fc7eeb27e3fc950              # double 0.18697196163663898
	.quad	0x3fd5e33b66300832              # double 0.34199414233455905
	.quad	0x3fd8db4ae2610fd4              # double 0.38838455302561425
	.quad	0x3fad7cf8de0260a0              # double 0.057594086743109729
	.quad	0x3fe59927eae94f66              # double 0.67494579201818961
	.quad	0x3fda3f26c928249a              # double 0.41010446209163265
	.quad	0x3fb81df9749601e8              # double 0.094207373584147214
	.quad	0x3f5cbf092423fe00              # double 0.0017545308369902868
	.quad	0x3febdaf82677e356              # double 0.87047965539305028
	.quad	0x3fa312ca234d27c0              # double 0.037252728280307235
	.quad	0x3fd1e9519604809a              # double 0.27986564302592287
	.quad	0x3fe8b1d309b2015f              # double 0.77170707601184663
	.quad	0x3fc7d106426be518              # double 0.18606642001376694
	.quad	0x3fe961b8c86df8ed              # double 0.7931789316787935
	.quad	0x3fc4f284baf0def8              # double 0.16365107658361189
	.quad	0x3fef22e1471b6c25              # double 0.9730078114329258
	.quad	0x3fb480639a48a048              # double 0.080084061781804938
	.quad	0x3fd6da6704b1ef8c              # double 0.35708022554876417
	.quad	0x3fe59fd5cb8dc02a              # double 0.67576112515053421
	.quad	0x3fe7f9a7cf512f4f              # double 0.74922552577616297
	.quad	0x3fc21358001bc220              # double 0.14121532445234752
	.quad	0x3fc23660bb1f6730              # double 0.14228448044632946
	.quad	0x3fe5623f55058a94              # double 0.6682430897311229
	.quad	0x3fd52e26acc9ddf0              # double 0.33094183801537636
	.quad	0x3fb997bfcdda1550              # double 0.09997175956421711
	.quad	0x3fc8edef38d15dd0              # double 0.19476118349369509
	.quad	0x3fea46cf6f7f5810              # double 0.82114383484690912
	.quad	0x3fef2f30d18213b2              # double 0.9745105831103642
	.quad	0x3fe5ba483c4a30b0              # double 0.67898952269890422
	.quad	0x3fe532e45d32032c              # double 0.66246240808695722
	.quad	0x3fc28a9a1d8bfd98              # double 0.14485479777065957
	.quad	0x3fec42a146b00832              # double 0.88313354307343261
	.quad	0x3fef1992aec86503              # double 0.97187170159591607
	.quad	0x3fea84f6034a0bbd              # double 0.8287305893176079
	.quad	0x3fe339fccf4fef47              # double 0.6008285569255144
	.quad	0x3fbb86b9e742df40              # double 0.10752450843835692
	.quad	0x3fe84be9ac803fa9              # double 0.7592666978034589
	.quad	0x3fd195f84740c1f8              # double 0.27477843244835709
	.quad	0x3fe29a4842c96eb3              # double 0.58133328480058422
	.quad	0x3fd5394ef2406f9e              # double 0.3316228261698998
	.quad	0x3fbb22fbac567820              # double 0.10600254971947765
	.quad	0x3fc41a8c2e76d77c              # double 0.15706016796837818
	.quad	0x3fbfea76defe14c0              # double 0.12467139190819676
	.quad	0x3fdc12ffe984ba8e              # double 0.43865964703119509
	.quad	0x3fd9fb8791551428              # double 0.40597714607821667
	.quad	0x3fe545b9f88445ae              # double 0.66476152933517141
	.quad	0x3fef985ccfc1d3f3              # double 0.98734894349638435
	.quad	0x3fdec5682ef7d930              # double 0.48079876505598218
	.quad	0x3fe804c282eb8370              # double 0.75058103151614652
	.quad	0x3fe6b0cd64123a70              # double 0.70908231301457469
	.quad	0x3f9dbaaaf0f1e800              # double 0.029032393413650937
	.quad	0x3fd8628aef2628f6              # double 0.38101456980133663
	.quad	0x3fec0d2011853b3e              # double 0.87660220548591616
	.quad	0x3fee9b74dd9106b5              # double 0.95647662424763402
	.quad	0x3fefbefe64324e36              # double 0.99206466264371929
	.quad	0x3fef06b732a816c8              # double 0.96956977743021699
	.quad	0x3fe93667b4558e6f              # double 0.78789124700092639
	.quad	0x3fe3d640ac5cca35              # double 0.61990388550322584
	.quad	0x3fe9a426a1cc0578              # double 0.80128795243233153
	.quad	0x3fe5b373d5ab521e              # double 0.67815582020063281
	.quad	0x3fe1932b6cccc472              # double 0.54921504259085752
	.quad	0x3fe4b7f627dbb829              # double 0.64745624337024765
	.quad	0x3fea5f25db615b1d              # double 0.82411473128999868
	.quad	0x3fcdac7b70fe7860              # double 0.23182623879705755
	.quad	0x3fe237817c09391c              # double 0.56927561021601347
	.quad	0x3fe25f9b564b512e              # double 0.5741707501825084
	.quad	0x3fe378799efed9eb              # double 0.60845643094836299
	.quad	0x3fe89fd4366b369d              # double 0.76951037052795679
	.quad	0x3fa6ddb9fd32b3a0              # double 0.044660389097180841
	.quad	0x3fc5fb2cc3f942cc              # double 0.17172774857546924
	.quad	0x3fe2f01ee9919a8f              # double 0.59181161517047254
	.quad	0x3fcb9318671da034              # double 0.21542649302432582
	.quad	0x3fde90c078aa3956              # double 0.47758495124516764
	.quad	0x3fc3e053f1d30428              # double 0.15528344447923925
	.quad	0x3fd345ba34fc3058              # double 0.30113082098319444
	.quad	0x3fdcc54bcd081274              # double 0.44954199812517648
	.quad	0x3fd06cc3dd0fe7ac              # double 0.25663849437807573
	.quad	0x3fe3487bd8adbaae              # double 0.60259811706585764
	.quad	0x3fe1f3dd5f05f1f4              # double 0.56101864394400858
	.quad	0x3fe1bb42a35ab101              # double 0.55410892396096767
	.quad	0x3fb38e78a47c1fb8              # double 0.076392688901363637
	.quad	0x3fcf32e7693c6954              # double 0.24374096525645916
	.quad	0x3fb2d13baeff9688              # double 0.073505144333092187
	.quad	0x3fe0e9bf1ae2c773              # double 0.52853350878852579
	.quad	0x3fe492315a5622b4              # double 0.64284579891053406
	.quad	0x3fec303eb3511e48              # double 0.88088927290750352
	.quad	0x3fedffc0e50581df              # double 0.93746990900768512
	.quad	0x3fc9434c7c0be658              # double 0.19736629540402606
	.quad	0x3fb53bf807d41b50              # double 0.082946302329316212
	.quad	0x3fed49cd8d56cac1              # double 0.91525914769439265
	.quad	0x3f75f7df1585a880              # double 0.0053633417340767098
	.quad	0x3fa6b69d954a9180              # double 0.044361996149095084
	.quad	0x3fc2ae10f39bc5e4              # double 0.14593707938142508
	.quad	0x3fe6f6c1fcf15697              # double 0.71762179758907763
	.quad	0x3fea0a0f57bb726b              # double 0.81372801909635706
	.quad	0x3fe00aeb1f4461ad              # double 0.50133281809671859
	.quad	0x3fe6fd96f0e1bf35              # double 0.71845576331359118
	.quad	0x3fe3b0372ca54339              # double 0.61526068420253133
	.quad	0x3fcaf69058c3fea0              # double 0.21064953169115075
	.quad	0x3fee4a669f89b295              # double 0.94658213767759725
	.quad	0x3fef0bb28fff7dd3              # double 0.97017791866886182
	.quad	0x3fd5d207c53ffc56              # double 0.34094423544587948
	.quad	0x3feadf67af69e4c5              # double 0.83977112064817361
	.quad	0x3fd8c6aa67d15182              # double 0.38712558878366832
	.quad	0x3fe24722e039ba6b              # double 0.57118362230342024
	.quad	0x3fd736a348604c02              # double 0.36270982807144503
	.quad	0x3feaac83e7a7ece3              # double 0.83355899091057173
	.quad	0x3fe9f65156f2fefc              # double 0.81131808264032612
	.quad	0x3fe641c6dc788385              # double 0.69552939472860997
	.quad	0x3fbcb3f41c3f6948              # double 0.11212087335244292
	.quad	0x3fb8ff24cdde5eb0              # double 0.097643184910675584
	.quad	0x3feae050c0cf8e05              # double 0.83988225611068457
	.quad	0x3fdb72ff69a9abf4              # double 0.42889390295630325
	.quad	0x3fe5cd48acff46ca              # double 0.68130906857023743
	.quad	0x3fe66199f92b91d0              # double 0.69941424051335765
	.quad	0x3fee96f13a084c47              # double 0.9559255727239212
	.quad	0x3fe1a1b6bde952f5              # double 0.55099045841288208
	.quad	0x3fd8ca5225c381e0              # double 0.38734868705617309
	.quad	0x3fe55d1051451677              # double 0.6676103198339679
	.quad	0x3feacfc4f05940e7              # double 0.83786246245474849
	.quad	0x3fad1041b26db190              # double 0.056764653235265361
	.quad	0x3fcf3ab5ebe85c70              # double 0.24397920626572356
	.quad	0x3fe6eb82b9c6b2ca              # double 0.71624885830314011
	.quad	0x3fede2224460101c              # double 0.93385423044719884
	.quad	0x3fef1bd5e6472fdd              # double 0.97214789367853493
	.quad	0x3fbda97eb9de3290              # double 0.11586753881256073
	.quad	0x3fe3bfe3088c3aee              # double 0.61717368764388225
	.quad	0x3fd915c93be0d9be              # double 0.39195471618168287
	.quad	0x3fcefc05b0e45c48              # double 0.2420661081057196
	.quad	0x3fbece8f89f3ff48              # double 0.12033936613079022
	.quad	0x3fda43eac3a6a23e              # double 0.4103953276303719
	.quad	0x3fe97defc30a98c5              # double 0.79662311643621619
	.quad	0x3feb626ed8fb63a1              # double 0.85576574687285156
	.quad	0x3fe5e9776d1bab36              # double 0.6847493296639644
	.quad	0x3fc13a9551ba1190              # double 0.13460031977241416
	.quad	0x3fe53d1db98c27d9              # double 0.6637104629492071
	.quad	0x3fec0cf2cf8a487a              # double 0.87658062491597311
	.quad	0x3fe5d40efbd25f7b              # double 0.68213605102481212
	.quad	0x3fc31b26d9c2e674              # double 0.14926610596539869
	.quad	0x3fd71a23838dad4a              # double 0.36097038123144343
	.quad	0x3fdd6d7e21fc4f2c              # double 0.45980790442375752
	.quad	0x3fe0b51bb633fb43              # double 0.52210794054540377
	.quad	0x3fd264ce10f938ce              # double 0.28740264566012008
	.quad	0x3fdbb14c1e9c0912              # double 0.43269637097559255
	.quad	0x3fbec44c9fdddea8              # double 0.12018278983111463
	.quad	0x3fe97d78985c73bb              # double 0.79656629331622442
	.quad	0x3fe8345f6bbe101b              # double 0.75639315646594996
	.quad	0x3fdc2ce9849933e8              # double 0.4402412218958589
	.quad	0x3f83a7f279b7d480              # double 0.0095976775546466885
	.quad	0x3fc2405cb3fc7240              # double 0.14258917606720622
	.quad	0x3fe8463530351032              # double 0.75857028403743798
	.quad	0x3fd202a2ec5895da              # double 0.28141091423671372
	.quad	0x3fd2d68ce98bd432              # double 0.29434511954542864
	.quad	0x3fe78d0cf36eeac2              # double 0.73596808953819726
	.quad	0x3fe2b1a6f7ce5f29              # double 0.58418606185566546
	.quad	0x3faad1aa4cbaf300              # double 0.052380868784416279
	.quad	0x3fef9826937899e7              # double 0.98732308199833773
	.quad	0x3feae5e9fcabf4e5              # double 0.84056567525808801
	.quad	0x3fd825deadb35068              # double 0.3773113914769568
	.quad	0x3fe9c08fb8f2a008              # double 0.80475603220566061
	.quad	0x3fcdc76ea059db98              # double 0.23264868573798192
	.quad	0x3fde3b59926210a2              # double 0.47237242980214422
	.quad	0x3fec662ac08b2f71              # double 0.88747155767621966
	.quad	0x3feeac9c0bfdb07a              # double 0.95857050268160937
	.quad	0x3fda55e722e3c330              # double 0.41149309546658497
	.quad	0x3fc96155807d269c              # double 0.1982828977000296
	.quad	0x3feeb7589f41696a              # double 0.9598811254939339
	.quad	0x3fdc889d091679f4              # double 0.44583822143059071
	.quad	0x3fdcfcf19e0e6ba4              # double 0.45293846545399163
	.quad	0x3fbc7280057c4ca0              # double 0.11112213262485904
	.quad	0x3fe63046dffb99ab              # double 0.69339317080157536
	.quad	0x3feedf46bc669d84              # double 0.96475540921248681
	.quad	0x3fcaf63bd4a3d858              # double 0.21063945658505889
	.quad	0x3fd9063a60e20606              # double 0.39100512944432386
	.quad	0x3fecd7b92db9cd2f              # double 0.90133341723268312
	.quad	0x3fe1c292b3c83af0              # double 0.555001593720446
	.quad	0x3fec9edcbee64ee5              # double 0.89439236912809561
	.quad	0x3fe25cb2404ab551              # double 0.57381546551702389
	.quad	0x3fef0e22534fc093              # double 0.97047535201820023
	.quad	0x3fe180c8aad4f1b1              # double 0.54697068563068829
	.quad	0x3f7be0889a131f00              # double 0.0068059288034374443
	.quad	0x3fd23f315c3b75e4              # double 0.28510698325211892
	.quad	0x3fe0d17e5e7e1e38              # double 0.52557295280070715
	.quad	0x3fcdc84a31bb1234              # double 0.2326748602701102
	.quad	0x3fec84f4e957d40d              # double 0.89123006415195649
	.quad	0x3fd556a886d05584              # double 0.3334142033139289
	.quad	0x3fb0ada061bb1e60              # double 0.06514933000573242
	.quad	0x3fdd21faafc3ce38              # double 0.45519892849481236
	.quad	0x3fda3019a5f00128              # double 0.4091858025058337
	.quad	0x3fed54b2bbba2551              # double 0.91658913293319177
	.quad	0x3fd63ff312abb514              # double 0.34765316794694567
	.quad	0x3fe64b969d33b8ea              # double 0.69672709182284831
	.quad	0x3fe495b66428127c              # double 0.64327544748137155
	.quad	0x3fdf3cef4a5c0c16              # double 0.4880941606681416
	.quad	0x3fefb12286013fd1              # double 0.99037290737941863
	.quad	0x3fc916353a39ff18              # double 0.1959902319249458
	.quad	0x3fe9fcc036ed321b              # double 0.8121033737930391
	.quad	0x3fc51247666b2008              # double 0.16462032795811887
	.quad	0x3fed5aae6473e5cd              # double 0.91731948489830872
	.quad	0x3feeac928a4e60b8              # double 0.95856596959040185
	.quad	0x3fea898b2fc02900              # double 0.8292900021199614
	.quad	0x3fe07433c0c4c5dc              # double 0.51418483400464821
	.quad	0x3fe37c4012f0631f              # double 0.6089172716047847
	.quad	0x3fe07db32cbb4a51              # double 0.5153442262329212
	.quad	0x3fecbbff11d75e08              # double 0.89794877514481275
	.quad	0x3f99e70081266940              # double 0.025295265085881313
	.quad	0x3fe11681cfd7372e              # double 0.53399744600185328
	.quad	0x3fc2606a3aa6b758              # double 0.14356735099630202
	.quad	0x3fec8de34c7b8933              # double 0.89232029855728567
	.quad	0x3fd88325c6e6cc22              # double 0.38300461219768256
	.quad	0x3fa333dbed96fdf0              # double 0.037505028488791115
	.quad	0x3fc167c484833160              # double 0.13597923727355532
	.quad	0x3feebb76661be071              # double 0.96038360541480305
	.quad	0x3fecc059bef118f0              # double 0.89848029416387298
	.quad	0x3fea1c40f95b26d1              # double 0.81594895078998253
	.quad	0x3fd958bb479fab08              # double 0.39604074472906392
	.quad	0x3fd9e774a3d9c7f2              # double 0.40475193024678824
	.quad	0x3fa621332d58b750              # double 0.0432220452170059
	.quad	0x3fc6e9073e594814              # double 0.17898645920155387
	.quad	0x3fe10acd3aed3096              # double 0.53256856450163315
	.quad	0x3fd80571ad7ff0b4              # double 0.37533227866493779
	.quad	0x3fed25601a53c1dd              # double 0.91081242696787579
	.quad	0x3fe0a9306860d4f4              # double 0.52065296541573369
	.quad	0x3fc8cb9a081f4224              # double 0.19371343037211475
	.quad	0x3fcbe1f92bbae144              # double 0.21783365855459114
	.quad	0x3fc7e20f389fe31c              # double 0.18658628716345838
	.quad	0x3fe34cd1abcd34b8              # double 0.60312732272145464
	.quad	0x3fe94a2503b3c340              # double 0.79030085299573472
	.quad	0x3fed1dad2b029d6a              # double 0.90987261200363645
	.quad	0x3fd319c9c2c156d0              # double 0.29844898242059248
	.quad	0x3fa0568eda1beb70              # double 0.03191038525070311
	.quad	0x3fd68216ec73fa8a              # double 0.35169003573529578
	.quad	0x3fe058fa41477eed              # double 0.51086151838168592
	.quad	0x3fcce57eb54ff70c              # double 0.22575363019125694
	.quad	0x3fb91d98f4442fe0              # double 0.098107871661511136
	.quad	0x3f82d9ea6b690bc0              # double 0.0092047037152321875
	.quad	0x3fcd8cb349298f30              # double 0.23085633346919954
	.quad	0x3fe863f9486145c0              # double 0.76220382820809363
	.quad	0x3f9393d4c7acada0              # double 0.019118618666806975
	.quad	0x3fee3609e004e432              # double 0.94409650567752679
	.quad	0x3fdd21321bfc170c              # double 0.45515110714801277
	.quad	0x3fef1f76f43dda5e              # double 0.97259090140762416
	.quad	0x3fa328917164b760              # double 0.037418885318728057
	.quad	0x3fe137ffefd5da84              # double 0.53808590739102202
	.quad	0x3fd8336d248e0730              # double 0.37813881463817989
	.quad	0x3fee47e8befddb1b              # double 0.94627797415782611
	.quad	0x3fe659433f698897              # double 0.69839632401660168
	.quad	0x3fea57a8e83ddc91              # double 0.82320065841385504
	.quad	0x3fd22d75e43a1f72              # double 0.28402468955800153
	.quad	0x3fd28e934ec129b0              # double 0.28995211306451107
	.quad	0x3febd834d4edf370              # double 0.87014237964431906
	.quad	0x3fe84cce6f1eae4f              # double 0.75937577918143429
	.quad	0x3fa17881a1271a30              # double 0.034122515603986492
	.quad	0x3fd2be0e6fb786b6              # double 0.29285012159207768
	.quad	0x3fe72247fedf1a68              # double 0.72293472079838939
	.quad	0x3fedaad7c61ead6f              # double 0.92710484214096123
	.quad	0x3fb283b2e183dcb0              # double 0.072322063500780187
	.quad	0x3fe61739e88d20b2              # double 0.69033523006603148
	.quad	0x3fe27c850dfadf8e              # double 0.57770016413177117
	.quad	0x3fe39f0ea7d2d7f8              # double 0.61316616800354407
	.quad	0x3fce738cd38adf10              # double 0.23790130929204922
	.quad	0x3fc3b2f96431b0b0              # double 0.1538993586758628
	.quad	0x3fb048970e66b428              # double 0.063607636466898598
	.quad	0x3fe3826a38dc93b2              # double 0.60966979127680632
	.quad	0x3fe94b99bb8e8c2b              # double 0.79047857887451778
	.quad	0x3feb4b6512a10ed9              # double 0.85295346868994237
	.quad	0x3fd2b5dc8423aafe              # double 0.2923499384329914
	.quad	0x3fe649f5218bdb4a              # double 0.69652802040114037
	.quad	0x3fdbc32ce3d3244a              # double 0.43378755806458413
	.quad	0x3fcd856311005448              # double 0.23063314752713127
	.quad	0x3fe42dcee678f1b6              # double 0.63059182180545892
	.quad	0x3fd5eee01dc97864              # double 0.34270480069051801
	.quad	0x3feebc5808552a0a              # double 0.96049119594073429
	.quad	0x3fe5a84b41c48fac              # double 0.67679369778897103
	.quad	0x3fda4044f420f59a              # double 0.41017268982599264
	.quad	0x3fe1d2025e0fb211              # double 0.55688589450216075
	.quad	0x3fd67081cb832f46              # double 0.35061688303243377
	.quad	0x3fe1a39349222bf8              # double 0.55121769222148398
	.quad	0x3fed19d3b323250b              # double 0.90940270412207391
	.quad	0x3f9daa90773c1540              # double 0.028970963742741107
	.quad	0x3fe04e13d3a0650b              # double 0.50953093846615738
	.quad	0x3fbf907994755e20              # double 0.12329826235269836
	.quad	0x3fd7769c588e4366              # double 0.36661442420977719
	.quad	0x3fb833a4fca9fa48              # double 0.094538032231846647
	.quad	0x3fd892d22476fbd4              # double 0.38396123467458421
	.quad	0x3fd6ec02fb93d864              # double 0.35815500801198241
	.quad	0x3fe20055bd4ea0b2              # double 0.5625408837704724
	.quad	0x3fb544d6b51999d0              # double 0.083081645215862254
	.quad	0x3fed53604cd2709b              # double 0.91642775539687038
	.quad	0x3fe7e5a486f4bebd              # double 0.74678255423165008
	.quad	0x3fdc14df51444122              # double 0.43877394615357634
	.quad	0x3feb7721842cdd23              # double 0.85829234900930762
	.quad	0x3fc87efc4521623c              # double 0.19137528777607027
	.quad	0x3feeb2dada09b7e1              # double 0.95933287225284058
	.quad	0x3fce5212d8726560              # double 0.23687968796438508
	.quad	0x3fefe07c1bb594e0              # double 0.99615292942021582
	.quad	0x3fe32bebe74ff594              # double 0.59911151102248761
	.quad	0x3fca1d409069f7c4              # double 0.20401770640813599
	.quad	0x3fe44901b7f098ea              # double 0.63391195226429642
	.quad	0x3fed7fa07d751c3e              # double 0.92182945731554589
	.quad	0x3fe34a9f5f0b4a52              # double 0.60285919726659132
	.quad	0x3fedb26c73e0d349              # double 0.92803022987809769
	.quad	0x3fcbad69d38c36a4              # double 0.21622965650060622
	.quad	0x3fea43cf165bf396              # double 0.8207774578764766
	.quad	0x3fdd5f19a22e136e              # double 0.45892945135010776
	.quad	0x3fe1d03801c4fa4c              # double 0.55666733117670608
	.quad	0x3fef46886dab7c38              # double 0.97735997600455615
	.quad	0x3fe722ecf652c8b2              # double 0.72301338300737528
	.quad	0x3febc1610278aa0e              # double 0.86735582812008416
	.quad	0x3fb7a6ff3caea788              # double 0.092391922297478613
	.quad	0x3fe4eb2ac01247e7              # double 0.65370690835902401
	.quad	0x3fed03667358862e              # double 0.90666506317592677
	.quad	0x3fcb45c1b0bcceb0              # double 0.21306630258333348
	.quad	0x3fef8f40dc4bba14              # double 0.98623698259854331
	.quad	0x3f8e98cc18d60700              # double 0.014939875133453295
	.quad	0x3fd9f91d5f40cad8              # double 0.40582975675640176
	.quad	0x3fe9b288a9138a27              # double 0.80304368040771557
	.quad	0x3fe055a5f784f22f              # double 0.51045511573426505
	.quad	0x3fd8a3a17db1cb5c              # double 0.38498723292211934
	.quad	0x3fea26592ef84b74              # double 0.81718119787033893
	.quad	0x3fea36eff8bf4f22              # double 0.81920622428376455
	.quad	0x3fb10dc1b368e2d0              # double 0.066616159726332613
	.quad	0x3fec64386647cd9c              # double 0.88723392464310135
	.quad	0x3fbd315a4e983500              # double 0.11403431338131398
	.quad	0x3fe6915ee5db6e58              # double 0.70524544614768114
	.quad	0x3fb1e5af6d165090              # double 0.069910968906983451
	.quad	0x3fdde348e13e5470              # double 0.46699735638077922
	.quad	0x3fc38533e90932dc              # double 0.15250252608020431
	.quad	0x3fe7dac404064492              # double 0.74545479570419304
	.quad	0x3fea8aafddc64075              # double 0.82942956271473511
	.quad	0x3fe3fb1cd73d22d1              # double 0.62440340079145973
	.quad	0x3fd2a0891d7daf34              # double 0.29104831581092871
	.quad	0x3fbdc14752c24258              # double 0.116230447487632
	.quad	0x3faa58ed054bb6b0              # double 0.051459700485663062
	.quad	0x3f9de38d44d76740              # double 0.029188353850123194
	.quad	0x3fed0a8ca7d874b9              # double 0.90753777296381266
	.quad	0x3fdba9b8737ebf7e              # double 0.43223391798800737
	.quad	0x3fda2589f075eab2              # double 0.40854118807298356
	.quad	0x3fee162d78bbc088              # double 0.94020722943061318
	.quad	0x3fc97232ce9f6550              # double 0.19879756058689191
	.quad	0x3fec0f8262d69d9a              # double 0.87689322761882527
	.quad	0x3fc2a8afd67b75cc              # double 0.14577291462675956
	.quad	0x3fcffc81c2240a88              # double 0.24989339808970024
	.quad	0x3fe169881f1c99c2              # double 0.54413229061611212
	.quad	0x3fe3bc5df85edf39              # double 0.61674402723199429
	.quad	0x3fc89fc938ec514c              # double 0.19237628249596594
	.quad	0x3fd4e2ca02c7f6fa              # double 0.3263421084555912
	.quad	0x3fcd73f03f546b1c              # double 0.23010066120408446
	.quad	0x3fbe584590ef66a8              # double 0.11853441990333613
	.quad	0x3f7eaaefb7620980              # double 0.0074872363967436461
	.quad	0x3fc7676ae1081850              # double 0.18284355152008169
	.quad	0x3fd8e04cbe22a99e              # double 0.38869017188940258
	.quad	0x3fb9c7ffadb5fe80              # double 0.10070798865307928
	.quad	0x3fc868d5bd0b0b00              # double 0.19069930773374466
	.quad	0x3fd4fec18c148e2a              # double 0.3280490749332069
	.quad	0x3fd11669c2d4d1b0              # double 0.26699298883911649
	.quad	0x3fecc39ee5517a7c              # double 0.89887947834706904
	.quad	0x3fdf8265fd88b5e2              # double 0.49233388671095046
	.quad	0x3fe636d6593b1a30              # double 0.69419400623229954
	.quad	0x3fee9e678a9e4ff8              # double 0.95683648179919966
	.quad	0x3fe3836d804bad05              # double 0.60979342515693757
	.quad	0x3fe2203b82ee879f              # double 0.56643462727173588
	.quad	0x3fdd130c8662d908              # double 0.45428765414853034
	.quad	0x3fcbd889422d6048              # double 0.21754565936385206
	.quad	0x3fafaa6dc43276b0              # double 0.061847143363804036
	.quad	0x3fe4de4c0c14ed04              # double 0.65213587150302077
	.quad	0x3fb70eaadf4c0cc0              # double 0.090067557826887246
	.quad	0x3fe9ac78ad98f3e9              # double 0.80230363755947309
	.quad	0x3fefbe28702cb1de              # double 0.99196264180278226
	.quad	0x3feb9584abfc5c7a              # double 0.86200173941587299
	.quad	0x3fef7c4dbc5bf5b5              # double 0.98392378605756525
	.quad	0x3fecc0a2c9f0a5bb              # double 0.89851512376224407
	.quad	0x3fd43b206e1ee4f8              # double 0.31610880617115766
	.quad	0x3fea972c8e237694              # double 0.83095386277610083
	.quad	0x3fa9c202931e1b40              # double 0.05030830427045041
	.quad	0x3fed6f137d9a97f1              # double 0.91980909854896542
	.quad	0x3fd12efb950cae88              # double 0.26849259906405409
	.quad	0x3fd54722c4405962              # double 0.33246678509876493
	.quad	0x3fe1bc2e5debc1b1              # double 0.5542213282006313
	.quad	0x3fe96783ea2f5885              # double 0.79388614405867541
	.quad	0x3fd1771cbe51a736              # double 0.27289503656230651
	.quad	0x3fb6319b24bab820              # double 0.086694427935726015
	.quad	0x3fca0d113f0cd7e8              # double 0.20352378443357044
	.quad	0x3fe4953af29f0290              # double 0.64321658503475199
	.quad	0x3fefaeb44f65e3d7              # double 0.99007621295379066
	.quad	0x3febd94d4be78b7e              # double 0.87027611565677865
	.quad	0x3fee1e2ca7868624              # double 0.94118340225049168
	.quad	0x3fec6a7ca3ad2f76              # double 0.8879988858038661
	.quad	0x3fdbbeafd1de2130              # double 0.43351359839336379
	.quad	0x3fecb5f63445b785              # double 0.89721212586822274
	.quad	0x3feff1b62583a9cd              # double 0.99825579955113996
	.quad	0x3fe81436623401ee              # double 0.75246733837417223
	.quad	0x3fe112760632eb9a              # double 0.53350354395603294
	.quad	0x3fe9c962592a7618              # double 0.80583302893836883
	.quad	0x3fe0ecd692f113f5              # double 0.52891091060212025
	.quad	0x3fcfd19b4475c0ac              # double 0.24858418314716368
	.quad	0x3fdbfd3fe3d19698              # double 0.43733212707443547
	.quad	0x3fac3f55f4849ba0              # double 0.055170713518513326
	.quad	0x3fc5c2f84f1d98b4              # double 0.170012510901136
	.quad	0x3fee1ba9e6a5c4a7              # double 0.94087691353174285
	.quad	0x3fcee00adb88fea0              # double 0.24121223182190921
	.quad	0x3fdbfe38156820a8              # double 0.43739130106451762
	.quad	0x3feb3ef5da0e75e0              # double 0.85143559064061591
	.quad	0x3fda8bbbc2b8ecc0              # double 0.41477865234237399
	.quad	0x3fc3870398ca2084              # double 0.15255780182292622
	.quad	0x3fe5f28bb9c080c8              # double 0.68585764197998689
	.quad	0x3fea8905506636e7              # double 0.82922616675361105
	.quad	0x3fecad0aedf0e584              # double 0.89612337563373545
	.quad	0x3fe18fc713c3d025              # double 0.54880098209696782
	.quad	0x3fcf76a3524cbb64              # double 0.24580804365674702
	.quad	0x3fe4c83fb0b55fbf              # double 0.64944443238618266
	.quad	0x3fd99b61967a26de              # double 0.40010871596369479
	.quad	0x3fec0b7b0030dcae              # double 0.87640142476347704
	.quad	0x3fca265453e8246c              # double 0.20429472062122345
	.quad	0x3f977d5ec29e4080              # double 0.022939186695623892
	.quad	0x3fbe93dc8f55bd18              # double 0.11944368838679897
	.quad	0x3fe82b69b05d7fc3              # double 0.75529941984495286
	.quad	0x3fd144ee5a64632a              # double 0.26983221843106497
	.quad	0x3fe1282161c0b49b              # double 0.53614873020491716
	.quad	0x3fe2e9725058bae0              # double 0.59099689190574267
	.quad	0x3fd6c7667d9be92c              # double 0.35592043177134047
	.quad	0x3fc6e3cdc57cc830              # double 0.17882702010098361
	.quad	0x3fe36cc01dd5846a              # double 0.60702520205462673
	.quad	0x3febc1f7a0f6cd1b              # double 0.86742764890951507
	.quad	0x3fefae45f6456fdd              # double 0.99002359485484314
	.quad	0x3fe044bd96b3fd93              # double 0.5083911841792762
	.quad	0x3fe9cba716a09c97              # double 0.80610994738971697
	.quad	0x3fe17413c9ae78c4              # double 0.54541959181712985
	.quad	0x3f8f29488d24f340              # double 0.015215460593589136
	.quad	0x3fbfb6b2a878c7d8              # double 0.12388149846154251
	.quad	0x3fcbe074d07c5d20              # double 0.21778736286135203
	.quad	0x3fd0355705e0005a              # double 0.25325561116915696
	.quad	0x3feed39ea1d33e5f              # double 0.96333247763136486
	.quad	0x3feaf23d554d4d0f              # double 0.84207026157892695
	.quad	0x3fde3712ed69ef92              # double 0.47211144623701629
	.quad	0x3fc9063ef5038338              # double 0.19550311053810687
	.quad	0x3fd18f08c46a423c              # double 0.27435511761817444
	.quad	0x3fc66684afd35c24              # double 0.17500361047015744
	.quad	0x3fcd1b3e0c069588              # double 0.22739387118523902
	.quad	0x3fe710fc98fda04b              # double 0.72082357293130295
	.quad	0x3fcf8179a7c8f3d8              # double 0.24613877003312612
	.quad	0x3fd9955f6a8bbb3a              # double 0.39974198727479726
	.quad	0x3fe4b187a4bc53e8              # double 0.64667112517292669
	.quad	0x3fdb49d198e0349e              # double 0.42638053826596856
	.quad	0x3fe3d5ca7863cf50              # double 0.61984752191208692
	.quad	0x3fe1e6f0a2a5b49c              # double 0.55944091574714916
	.quad	0x3feba7c06aaf5143              # double 0.864227493637863
	.quad	0x3feaecf81360aba8              # double 0.84142688545886291
	.quad	0x3fe60dda586226e9              # double 0.68919102918991115
	.quad	0x3fed71f020bc936a              # double 0.92015844720718332
	.quad	0x3f925cc2f8468420              # double 0.017931982425242521
	.quad	0x3fecb121544fd436              # double 0.89662233798174529
	.quad	0x3fc32bf26b33e0f8              # double 0.14977865442757099
	.quad	0x3feb280b2e3d9ad0              # double 0.84863814383865055
	.quad	0x3fd198006246b3a6              # double 0.27490243527682379
	.quad	0x3fec3280ffa03ebf              # double 0.88116502692169962
	.quad	0x3fdf59ccb8feba10              # double 0.48985593858643117
	.quad	0x3fa8994632e43da0              # double 0.048044389450406344
	.quad	0x3fc974a2efd56a40              # double 0.19887196264865459
	.quad	0x3feaae545b0eb998              # double 0.83378045830413594
	.quad	0x3fea85bb27ae3a74              # double 0.82882459402192276
	.quad	0x3fe9c8ef4568fff7              # double 0.80577815586730039
	.quad	0x3fb439b6ba273750              # double 0.079005642364078143
	.quad	0x3fe53dc70618c19a              # double 0.66379119101297879
	.quad	0x3fbcdfca9d984610              # double 0.11278978679208529
	.quad	0x3fe395f07f39a14b              # double 0.61205315445571651
	.quad	0x3fe4eed9b2e11768              # double 0.65415654122692235
	.quad	0x3fe3e02de037d762              # double 0.62111562531093178
	.quad	0x3fee41b964d530b8              # double 0.94552297300244614
	.quad	0x3fed9a9f4988b65e              # double 0.92512478220096361
	.quad	0x3fe78a8d0cef1d95              # double 0.73566296125584307
	.quad	0x3fe9cab80b2f8637              # double 0.80599596199699064
	.quad	0x3feb8268bed855e3              # double 0.85966908716607937
	.quad	0x3fe744d1d440a8e5              # double 0.72715083556729765
	.quad	0x3fe45088e32e1384              # double 0.63483089800921322
	.quad	0x3fa112bf93def2e0              # double 0.033346163559576203
	.quad	0x3fc8765fff8c2ea8              # double 0.19111251809987562
	.quad	0x3fb227c494a91e00              # double 0.070919309896559923
	.quad	0x3febbaa4f6a60e3d              # double 0.86653373883786566
	.quad	0x3fe68045520a8a5c              # double 0.70315805457751024
	.quad	0x3fe0f4fc43c2bbb5              # double 0.52990544542796292
	.quad	0x3fe7f6ab63ca2db0              # double 0.74886102190196446
	.quad	0x3fd6278c023ce710              # double 0.34616375177903169
	.quad	0x3fef12410edc895f              # double 0.97097828772193028
	.quad	0x3fea195bcc7d5156              # double 0.81559553088531334
	.quad	0x3fe1e9a9ab969903              # double 0.55977328790029934
	.quad	0x3fcc141e06110e30              # double 0.21936393066617788
	.quad	0x3fc12be156000644              # double 0.13415161799643915
	.quad	0x3fd274c7daaced90              # double 0.2883777270796708
	.quad	0x3fbf04a7ae558e18              # double 0.12116477972227135
	.quad	0x3fe49ec025122ea1              # double 0.64437873115953803
	.quad	0x3fe3e877b0b43a5a              # double 0.62212738525870326
	.quad	0x3fd089e56bf546ca              # double 0.25841651480469052
	.quad	0x3fe9011bd3fca393              # double 0.78138533977208835
	.quad	0x3fe135f44d6abb83              # double 0.53783621902935896
	.quad	0x3fb12912995edce0              # double 0.067032968944534144
	.quad	0x3fe985db7d18dcd7              # double 0.79759001191168977
	.quad	0x3fc9759b33007570              # double 0.19890155783006547
	.quad	0x3fbdf58511633890              # double 0.11702758478642949
	.quad	0x3fedb50d508c964f              # double 0.92835107548007467
	.quad	0x3fe572d67a27c683              # double 0.67026828630896806
	.quad	0x3fe8d47da3c7d674              # double 0.7759388159599454
	.quad	0x3fe92d188a92bbc3              # double 0.78675486626695379
	.quad	0x3fec4ecfb34dbe8d              # double 0.88462052364589427
	.quad	0x3fd4ef97752b2af0              # double 0.32712351267097883
	.quad	0x3fed55b4fe41154f              # double 0.91671228083638734
	.quad	0x3fe73ff826be9f44              # double 0.72655875747020859
	.quad	0x3fd78fb8dc6e5b5e              # double 0.36814710165474718
	.quad	0x3fef91361a617ae3              # double 0.98647599365707738
	.quad	0x3fd5f6dba77f21dc              # double 0.34319201809969768
	.quad	0x3fe6894cdccc0514              # double 0.70426028370289595
	.quad	0x3fde09a07035e686              # double 0.46933756788312342
	.quad	0x3fc54aad25ad0774              # double 0.16634144153254804
	.quad	0x3fe8b5ff7261bf8c              # double 0.77221653309060078
	.quad	0x3fd9b02417dc354e              # double 0.40137579279037972
	.quad	0x3fe2fc4022b45f78              # double 0.59329230097044583
	.quad	0x3fe8b29fd5966654              # double 0.77180473057087306
	.quad	0x3fb156c54b70b9f8              # double 0.067730265539218126
	.quad	0x3febd0e4c05e1937              # double 0.86924970218459563
	.quad	0x3fde010bacad56b4              # double 0.46881381857870541
	.quad	0x3fdec9b51cddf4fc              # double 0.48106124705357423
	.quad	0x3fc0b2ebc58366e4              # double 0.13046023506358673
	.quad	0x3feb7c21d2217f19              # double 0.85890284577542098
	.quad	0x3f9468f25c646cc0              # double 0.019931589974572672
	.quad	0x3feef94cc80657f0              # double 0.96793212001170836
	.quad	0x3fe45f548da36a6d              # double 0.636636997830761
	.quad	0x3f911a11418c6540              # double 0.016701001764066747
	.quad	0x3fe7e0723528cb62              # double 0.74614820845304686
	.quad	0x3fe9e6e3d236acd6              # double 0.80943480546320745
	.quad	0x3fd48cd1ed1151bc              # double 0.32109497214448957
	.quad	0x3fea4d898ff70b89              # double 0.82196500890891955
	.quad	0x3fd4ebf28e3e3156              # double 0.32690109148895397
	.quad	0x3fd4975b7c177edc              # double 0.32173812025392379
	.quad	0x3fd497ac1bd85c84              # double 0.32175734252218313
	.quad	0x3fedf7e6fac25862              # double 0.93651150680922179
	.quad	0x3fef342f99077dc5              # double 0.97512035263564966
	.quad	0x3fd373b6517ea754              # double 0.30393751104803823
	.quad	0x3fe3ff81f14e3810              # double 0.62493989114750725
	.quad	0x3fbb43988b9cb4d0              # double 0.10650018127917638
	.quad	0x3fe98ef638a3a085              # double 0.79870139181458966
	.quad	0x3fe09b76d6cd0caa              # double 0.51897756532016115
	.quad	0x3fc7d5cf285e7070              # double 0.18621243926179742
	.quad	0x3febf0e9071ac72c              # double 0.87315799129121307
	.quad	0x3fd4566cc351597c              # double 0.31777495454789295
	.quad	0x3feab1af84ce5570              # double 0.83419013918562079
	.quad	0x3fe3e326ba4a1ff9              # double 0.62147842774083906
	.quad	0x3fcc12cbe36561cc              # double 0.21932362178155385
	.quad	0x3fda4c140da0f7c2              # double 0.41089345293937296
	.quad	0x3fe0ecbae97906ec              # double 0.52889772033833315
	.quad	0x3fe5bb4de220a939              # double 0.67911428609412561
	.quad	0x3fd5b5b3530a6bd8              # double 0.33921511754459521
	.quad	0x3fd825d5d1e84a16              # double 0.37730927943008064
	.quad	0x3fc48310c2778478              # double 0.16024980063869854
	.quad	0x3fd9089df06960f0              # double 0.39115093686770219
	.quad	0x3fecc1741d5493ee              # double 0.89861493805494574
	.quad	0x3fddd88d34e54f66              # double 0.46634226003265267
	.quad	0x3fc4cc572187c6b4              # double 0.16248597275948884
	.quad	0x3fe5c050db235366              # double 0.67972605514897277
	.quad	0x3fdcb411d238ea90              # double 0.44849057702564554
	.quad	0x3fef9c269068f262              # double 0.98781135754650173
	.quad	0x3fe3355ecd5f728d              # double 0.60026493179209839
	.quad	0x3fe6af0e3db1f936              # double 0.70886909532399645
	.quad	0x3fe346f9762278c0              # double 0.60241387437033467
	.quad	0x3fe86b87b5ccff83              # double 0.76312623508418687
	.quad	0x3fd6a91ce823cc9a              # double 0.35407183332353898
	.quad	0x3feeefbd36d3c1d3              # double 0.96676502903397432
	.quad	0x3fddb2fa40a0928a              # double 0.46404892264607922
	.quad	0x3feaaea66ad00c18              # double 0.83381958829739045
	.quad	0x3fe8a98530c1cdac              # double 0.77069339297161354
	.quad	0x3fea0faee3c7f859              # double 0.81441444862845025
	.quad	0x3fe76d573e10f635              # double 0.73209726450267587
	.quad	0x3fcc9ecb1d0ad230              # double 0.22359599035338951
	.quad	0x3feb6de6fc5dd36f              # double 0.85716580667813769
	.quad	0x3fbd9ca95a9e6008              # double 0.1156717153775163
	.quad	0x3fe5e1c75df4c421              # double 0.68381088591388928
	.quad	0x3feeb3bed344b2a5              # double 0.95944157851552758
	.quad	0x3fe235d8e5540622              # double 0.56907315054576579
	.quad	0x3fe66e29af8445a2              # double 0.70094761162379293
	.quad	0x3fdff1afd6cefe2e              # double 0.49912639596365949
	.quad	0x3fe88c79bf5b0ed2              # double 0.76714789747389944
	.quad	0x3fe52d7c31381c18              # double 0.6618023835479816
	.quad	0x3fde426642532cb8              # double 0.47280270077744602
	.quad	0x3fdbc44d145054c2              # double 0.4338562677742851
	.quad	0x3fe2bb1b7ca469fa              # double 0.58534025520503907
	.quad	0x3fb9fa5618b76ff8              # double 0.10147607901984645
	.quad	0x3fd1734239015378              # double 0.2726598316851816
	.quad	0x3fd08f3a38db7772              # double 0.25874190857381685
	.quad	0x3fd6b21566519682              # double 0.35461935989437887
	.quad	0x3fc0f90ea18fb938              # double 0.13260062111607751
	.quad	0x3fe9ca69065f5161              # double 0.80595828289601112
	.quad	0x3fd3f2d2ac76418e              # double 0.31169573633180725
	.quad	0x3fe3f4ecfe0b3dbd              # double 0.62364816301299408
	.quad	0x3fe4c57e9fa230f9              # double 0.64910823038510934
	.quad	0x3fe7ffb0926c201b              # double 0.74996212576025145
	.quad	0x3fd84d7e2ced7b5c              # double 0.3797297896143641
	.quad	0x3fed3bfadb5bf1b9              # double 0.91357176631532078
	.quad	0x3fc1948f8b71875c              # double 0.13734621342433229
	.quad	0x3fd9c10eaccef02e              # double 0.40240828395667705
	.quad	0x3fcbcdb96c165bf0              # double 0.21721570756628195
	.quad	0x3fe510210b7f6ab2              # double 0.65821888204239642
	.quad	0x3fd34b235ffbafe0              # double 0.30146107076029516
	.quad	0x3fefc7f17babf00d              # double 0.99315714029899171
	.quad	0x3f86746d67eb15c0              # double 0.010964255079111918
	.quad	0x3fd86e7d50fa1068              # double 0.38174374492542151
	.quad	0x3fcbe78150a02850              # double 0.21800247608945478
	.quad	0x3fe1741767e331fd              # double 0.54542131701015217
	.quad	0x3fd8421303cf4c6c              # double 0.37903285381361829
	.quad	0x3fe9201d109259a6              # double 0.78517010914474805
	.quad	0x3fa0ea5323b1d6a0              # double 0.033037756068478474
	.quad	0x3fe52bc7957345d2              # double 0.6615941924048292
	.quad	0x3fddc0a3c63ea938              # double 0.46488279685822276
	.quad	0x3fd400f788c72f92              # double 0.31255901677354203
	.quad	0x3fe1a069dc531f12              # double 0.55083172828833171
	.quad	0x3faa21b64e217900              # double 0.051038453137822515
	.quad	0x3fedfb587513a0dd              # double 0.93693182817971954
	.quad	0x3fcd57f5dff6e544              # double 0.22924683986438243
	.quad	0x3feb5f3aa9d3a054              # double 0.85537465256948985
	.quad	0x3fd081ed59b86790              # double 0.25793012391806602
	.quad	0x3fc49813ba30b9c4              # double 0.16089102355313234
	.quad	0x3fc7d50a66f000bc              # double 0.18618898416753449
	.quad	0x3fd5641160a91dc2              # double 0.33423265876305319
	.quad	0x3fa84b5bd7569ca0              # double 0.047449941669861717
	.quad	0x3fd977ee92ab6c5e              # double 0.39794506381230643
	.quad	0x3fad1ffa3d772010              # double 0.056884593966572194
	.quad	0x3fde9da2b10d8690              # double 0.47837130823436613
	.quad	0x3fed4ad9c142ca53              # double 0.91538703676480748
	.quad	0x3fd66b38915977bc              # double 0.35029424852643465
	.quad	0x3fc5dc6765d13ac8              # double 0.1707886931567002
	.quad	0x3fea261f59d69f7d              # double 0.81715362116391044
	.quad	0x3fe451b80d9bbc72              # double 0.63497545869712568
	.quad	0x3fd504f19439079c              # double 0.32842673754577745
	.quad	0x3fd2462d9297d666              # double 0.28553332629903705
	.quad	0x3fd4834d7af6bcc0              # double 0.32051407821832001
	.quad	0x3fe1332e3f55ca3a              # double 0.53749763841762577
	.quad	0x3fe888159194d3e7              # double 0.76661184724673326
	.quad	0x3fbd2bc84a81cc00              # double 0.11394931620615978
	.quad	0x3fb0bd68ee115698              # double 0.065390165445331383
	.quad	0x3fd790a3bd96e106              # double 0.36820310129725475
	.quad	0x3fcd52e25d27e5e0              # double 0.22909192608476214
	.quad	0x3feba4a9da0d144a              # double 0.86385052288154296
	.quad	0x3fc6b94d95698a74              # double 0.17753000064392988
	.quad	0x3fedc72816a7f84b              # double 0.93056110787416324
	.quad	0x3fe61abd35824d06              # double 0.69076405001615693
	.quad	0x3fe1b255416f379f              # double 0.55301916866459411
	.quad	0x3fb0079e36883338              # double 0.062616241754040014
	.quad	0x3fe5fae767ddaf97              # double 0.68687792097397249
	.quad	0x3fe7870c4d19bf4f              # double 0.73523535784441119
	.quad	0x3f9b8a8fbb44d0a0              # double 0.026895757489186267
	.quad	0x3fd3a77d79e0c956              # double 0.30709778692393763
	.quad	0x3fd41ddec30b6e82              # double 0.31432313010530077
	.quad	0x3fd5b1ea7c98dc28              # double 0.33898412864386041
	.quad	0x3fcf12c43d232fac              # double 0.24276020989634384
	.quad	0x3fb357910766bdf8              # double 0.075554909045187801
	.quad	0x3fdae8b489d537b0              # double 0.42045319996111186
	.quad	0x3fcc2fbe15d8a6e8              # double 0.22020698610986433
	.quad	0x3fd6eb50663f2918              # double 0.35811243042975738
	.quad	0x3fea2cd6e33dd5cb              # double 0.81797356017221412
	.quad	0x3feb831c0cb6fb83              # double 0.85975458606104416
	.quad	0x3fdcc55f4161b054              # double 0.44954663643762172
	.quad	0x3fc5f1c9c4d827ac              # double 0.17144128905812062
	.quad	0x3fca0d5bd200b11c              # double 0.20353267435110289
	.quad	0x3fb7c6498ca7cd98              # double 0.092869374122349746
	.quad	0x3feec58394ae183f              # double 0.96161059416841243
	.quad	0x3fec071da451b203              # double 0.87586862653330433
	.quad	0x3fbbb61659b9fbf8              # double 0.10824718180263904
	.quad	0x3fdbffb8507a3caa              # double 0.43748290881280616
	.quad	0x3fd14b3e64e195b4              # double 0.2702175126235844
	.quad	0x3fe848599c441b4d              # double 0.75883179207526441
	.quad	0x3feae56cc6f37829              # double 0.84050597055079834
	.quad	0x3fde111a5504c756              # double 0.46979387571911013
	.quad	0x3feb722a07a7b9ab              # double 0.8576860570445225
	.quad	0x3fe94852e4da5188              # double 0.7900785894185427
	.quad	0x3fe9a84a486330d3              # double 0.80179323328186525
	.quad	0x3fe699467f7b2ed6              # double 0.70621037386578212
	.quad	0x3fd738be79d1caa6              # double 0.3628383817332782
	.quad	0x3feac33221862028              # double 0.83632761523859234
	.quad	0x3fec0c6487ab4d1f              # double 0.87651278016929612
	.quad	0x3fe5c74cf0f65162              # double 0.68057868063855786
	.quad	0x3fd46d17ed2d76f6              # double 0.3191585365474191
	.quad	0x3fe4b6ea126405d3              # double 0.64732841102539351
	.quad	0x3fd83709965f2e8a              # double 0.37835921940561745
	.quad	0x3fd522c1ed1dbc4e              # double 0.33024643092989414
	.quad	0x3fe54e7da15d32c0              # double 0.66583138958375088
	.quad	0x3feac281712f197e              # double 0.83624336344000461
	.quad	0x3fce8d2e9d2baa5c              # double 0.23868353533119346
	.quad	0x3feb2f0f77110e37              # double 0.84949467902374109
	.quad	0x3fe7ebd95aaa7921              # double 0.74754016597924899
	.quad	0x3fe7c6690a14fd0c              # double 0.742970008555774
	.quad	0x3fec8bcafe509252              # double 0.89206456824156022
	.quad	0x3fe427bec773d3b2              # double 0.62985171275669516
	.quad	0x3fe0b2e829415bc9              # double 0.52183921868970018
	.quad	0x3fd1d0ca7d202eea              # double 0.27836858958538235
	.quad	0x3fd70d99cd375e10              # double 0.36020512619640588
	.quad	0x3fca6844d6a7f4f8              # double 0.20630703431371678
	.quad	0x3fe46016b6847de3              # double 0.63672958038290195
	.quad	0x3fd3c05d3f264c84              # double 0.30861598174050919
	.quad	0x3feafe5149001e60              # double 0.84354461915877365
	.quad	0x3fc09338e40d4a84              # double 0.12949286589953968
	.quad	0x3fda32094a7dbdaa              # double 0.40930397295502507
	.quad	0x3fc83576a8c5b410              # double 0.18913157692750859
	.quad	0x3fefe405ed342944              # double 0.99658485726221401
	.quad	0x3fd4c8a433d70042              # double 0.32474618017659307
	.quad	0x3fcaef82773ac1bc              # double 0.21043425390008774
	.quad	0x3febc7caddda95e3              # double 0.86813872652845381
	.quad	0x3fe5e022e73d4a4e              # double 0.68361039318035366
	.quad	0x3fe6d0350c9a8878              # double 0.7129159208455027
	.quad	0x3f9d3695617d3dc0              # double 0.028528532099981296
	.quad	0x3fe9f4aae8479ebb              # double 0.81111665122167353
	.quad	0x3fe8a7af4bc69222              # double 0.77046932983336469
	.quad	0x3fea1733c2751c07              # double 0.81533229808781094
	.quad	0x3fe1c967aadc8f5b              # double 0.55583556529425537
	.quad	0x3fed8adf2c8175b8              # double 0.92320212070961016
	.quad	0x3fe15349f99dac28              # double 0.54141710999590931
	.quad	0x3fd382a9c71acb36              # double 0.30485004848303576
	.quad	0x3fe6330f5878c9e5              # double 0.69373290328649928
	.quad	0x3fe70494b037eac0              # double 0.71930918138180999
	.quad	0x3fe8850b1cadaf53              # double 0.76624065018902809
	.quad	0x3fed2101ebee15ea              # double 0.91027923660356902
	.quad	0x3f9c572007c02880              # double 0.027676105950412921
	.quad	0x3fd8c50e9bc89794              # double 0.3870274087261063
	.quad	0x3fe9402774c5b0c8              # double 0.78908131415439531
	.quad	0x3fdfb4c02d2db1c8              # double 0.49540714656793883
	.quad	0x3fcc37aa249e56e0              # double 0.22044874942792259
	.quad	0x3fdd8002e99805da              # double 0.46093819438837402
	.quad	0x3fd60e2e0731ee4a              # double 0.34461546614304395
	.quad	0x3fe89d2c8245035a              # double 0.76918626254346667
	.quad	0x3fdb6eda958fb3a6              # double 0.42864098172759169
	.quad	0x3fd47bc6563a3eb8              # double 0.32005461140304758
	.quad	0x3fd939ab22b4e86e              # double 0.39414480580638311
	.quad	0x3fe697f2144e4348              # double 0.70604804960212508
	.quad	0x3feb90b2781267f8              # double 0.86141322566550027
	.quad	0x3fe8903e069316a9              # double 0.7676077011498893
	.quad	0x3fd06edf1996a736              # double 0.25676705836177705
	.quad	0x3fd26c9d61d9c4a2              # double 0.2878793197224444
	.quad	0x3fd0a994d059f5ea              # double 0.26035042139832731
	.quad	0x3fd89b2d068ed518              # double 0.38447118416236625
	.quad	0x3f9f8fbe4ddd0980              # double 0.030821774961859116
	.quad	0x3fe4d2f2e1bd5d1c              # double 0.65075058069024605
	.quad	0x3fd3954ea3ac8cd4              # double 0.30598798736373323
	.quad	0x3fe2b1d93b1afbe6              # double 0.58421002906822816
	.quad	0x3fdf3120b01c167e              # double 0.48737351606573742
	.quad	0x3fc2bbd453177758              # double 0.14635709817133136
	.quad	0x3fc9e15117c7fa9c              # double 0.2021886221045478
	.quad	0x3fef1566b55261fe              # double 0.97136245169082236
	.quad	0x3fcac08745cfa2cc              # double 0.20900050076240573
	.quad	0x3fb9de18d321e928              # double 0.10104518084145708
	.quad	0x3fd1fb79a93e39d2              # double 0.28097383048671276
	.quad	0x3fe808fa2bf4cef9              # double 0.75109585366450837
	.quad	0x3fe1ee4737ba5af1              # double 0.56033669361462846
	.quad	0x3fb2fbead00a6e08              # double 0.074156451979824678
	.quad	0x3fc883744370cbcc              # double 0.19151166241644402
	.quad	0x3fb86f49c554f3f8              # double 0.095448122669907209
	.quad	0x3fdde4799b2877dc              # double 0.46707000877529281
	.quad	0x3fe82f7ada25c972              # double 0.75579588515237917
	.quad	0x3fd7235e109f7a64              # double 0.36153365729652465
	.quad	0x3fde9c1e4570be48              # double 0.47827870160378838
	.quad	0x3fb28965fc80d0c8              # double 0.072409032961164077
	.quad	0x3fdd5d0df5b08d64              # double 0.45880459778910265
	.quad	0x3fea4f499f710d60              # double 0.8221786607831909
	.quad	0x3fe99b95a8db40a9              # double 0.80024226169372981
	.quad	0x3fa028562f0d3660              # double 0.031557744258503773
	.quad	0x3fba268ff6c7c278              # double 0.10215091490659656
	.quad	0x3fe86af2e5a84530              # double 0.76305527548735164
	.quad	0x3fc58d71b205f13c              # double 0.1683790320638624
	.quad	0x3fb38311b712fac8              # double 0.076218707271418329
	.quad	0x3fd065c47723dc04              # double 0.25621139178059615
	.quad	0x3fdd8f03d50294f8              # double 0.46185394098058863
	.quad	0x3fe9dcd584a01a98              # double 0.80820728209876602
	.quad	0x3fdaa32f09e9eee2              # double 0.41620994537491474
	.quad	0x3fd175a205322a9e              # double 0.27280474193018189
	.quad	0x3fd3ce10fa99e76a              # double 0.30945229027530863
	.quad	0x3fe70b61d11cb2ad              # double 0.72013941614348698
	.quad	0x3fb6f6faa0f61090              # double 0.08970610074726637
	.quad	0x3fb57bedbf703c18              # double 0.083922251928229108
	.quad	0x3fd5b33eaeed6a32              # double 0.33906523783449238
	.quad	0x3fe576b9ba3246b0              # double 0.67074285856707228
	.quad	0x3fce822733de6194              # double 0.23834695847177712
	.quad	0x3fe22b9dad37b100              # double 0.56782420951415702
	.quad	0x3fbfc13d35ca0828              # double 0.12404234469616482
	.quad	0x3fe6f4c0fe45ddea              # double 0.71737718260459116
	.quad	0x3fe6b19ba0861c67              # double 0.70918065407103092
	.quad	0x3fefddb65a661b6d              # double 0.99581449180628356
	.quad	0x3fe429a1065ba0bc              # double 0.63008166543752209
	.quad	0x3fdfc3d3cbbb66f4              # double 0.49632735152918817
	.quad	0x3fa97b51462e3e80              # double 0.049768962685559082
	.quad	0x3fd697c6d5ab30b8              # double 0.35301371446690721
	.quad	0x3fdb347974c70f5c              # double 0.425077785530666
	.quad	0x3fca40bf49e03158              # double 0.20510092837538241
	.quad	0x3fe522f8f827dd0d              # double 0.66051910846627637
	.quad	0x3fec72bce5f8d93b              # double 0.88900608936709291
	.quad	0x3fe5278632f14740              # double 0.66107473325448751
	.quad	0x3fe0282d0201d08d              # double 0.50490427391061277
	.quad	0x3fe370420fe97795              # double 0.60745337589081549
	.quad	0x3fe4d69b75f66728              # double 0.65119717635682139
	.quad	0x3faaf793a4e07330              # double 0.052670110584790542
	.quad	0x3fe325cc42f8ade0              # double 0.5983640010867326
	.quad	0x3fe2d5d3362732bf              # double 0.58860169007092356
	.quad	0x3fc6ba71b94859f4              # double 0.17756482645991378
	.quad	0x3fed9b4ae33e864e              # double 0.92520660766258245
	.quad	0x3fc002df16b7438c              # double 0.12508762940572316
	.quad	0x3fb8fa1f66722460              # double 0.097566568862150315
	.quad	0x3fb2ec9d926595e0              # double 0.073922966233645138
	.quad	0x3feafac4b0c5dc3a              # double 0.84311136747317694
	.quad	0x3fdc6a3c2021477c              # double 0.44398406160063764
	.quad	0x3fd957a021622322              # double 0.3959732366570724
	.quad	0x3fea8f06a48b2926              # double 0.82995922219678131
	.quad	0x3fe369357884b459              # double 0.60659287966485487
	.quad	0x3f747ae2033ba280              # double 0.0050000027292546045
	.quad	0x3fe78961065e7f39              # double 0.7355198978802725
	.quad	0x3fee90f59f1ce1dc              # double 0.95519524647448461
	.quad	0x3fe5479790e2081e              # double 0.66498926446388729
	.quad	0x3fe6cf870467c474              # double 0.71283293590944519
	.quad	0x3fe6ba92734ac44e              # double 0.71027491109829
	.quad	0x3fe09b3c684ef13c              # double 0.51894970295646869
	.quad	0x3fd2452d59e2f1e2              # double 0.28547223833063928
	.quad	0x3fc9e3587d745850              # double 0.20225053907114665
	.quad	0x3f57f15622b75400              # double 0.0014613476913514223
	.quad	0x3fee852df4a23d83              # double 0.95375726490048895
	.quad	0x3fe4b0378e750f14              # double 0.64651086639102795
	.quad	0x3fe187ed03fa5743              # double 0.54784251000339912
	.quad	0x3fd104802fdac27e              # double 0.26589970277112929
	.quad	0x3fe0f068e16c8341              # double 0.52934688594914558
	.quad	0x3fef30346948c601              # double 0.97463436663946378
	.quad	0x3fd85940b57dd3a0              # double 0.38044755672245323
	.quad	0x3fb0a1476711bca0              # double 0.06496092096652939
	.quad	0x3fd320bfdea5ea0a              # double 0.29887387030581236
	.quad	0x3fce268d77dc4748              # double 0.235551532292954
	.quad	0x3fd1daf91016d58e              # double 0.27899004527292781
	.quad	0x3fd8f16452b91cd4              # double 0.38973339155604703
	.quad	0x3fe5129c316b0afb              # double 0.65852174427013155
	.quad	0x3fe6847ecdcfb731              # double 0.70367374608551903
	.quad	0x3fe529f754ed223b              # double 0.66137281977814355
	.quad	0x3fd9695bf1abbb0e              # double 0.39705561257044131
	.quad	0x3f86570cca304e00              # double 0.01090822212248721
	.quad	0x3fca57fac0ae8774              # double 0.20580992134369647
	.quad	0x3fe01ae4d5ccd09c              # double 0.50328294523071149
	.quad	0x3fe3c8332651d654              # double 0.61818845257102817
	.quad	0x3fef3b36a16495fa              # double 0.97597819826177035
	.quad	0x3fee9b5124637ac1              # double 0.95645959002634851
	.quad	0x3fb8344c0aafaee0              # double 0.094547989472342219
	.quad	0x3fb74837d65c26a0              # double 0.090945710977531125
	.quad	0x3fe94869566faadd              # double 0.79008929140158168
	.quad	0x3fe1d8e28d5bb9cd              # double 0.55772521599811287
	.quad	0x3f8d8cd914bd4140              # double 0.014428802438175681
	.quad	0x3fea9bf0d5b0fac1              # double 0.83153573738658093
	.quad	0x3fda9d24a049c9ac              # double 0.41584125188014798
	.quad	0x3fe9f606d6d07f99              # double 0.81128255802103688
	.quad	0x3fd22629751db814              # double 0.28357922017210169
	.quad	0x3fefb79016f7423d              # double 0.99115757451551866
	.quad	0x3fd9bc24d3415ed6              # double 0.40210838919072722
	.quad	0x3fe4824b9529e167              # double 0.64090518125071305
	.quad	0x3fd308429b4504c6              # double 0.29737916148230814
	.quad	0x3fe6b582b8db7d9e              # double 0.70965705971677884
	.quad	0x3fd4271fb18762fc              # double 0.31488792740633165
	.quad	0x3fedbb85a719a70e              # double 0.92914087902792786
	.quad	0x3fdaf9ef210213b4              # double 0.42150476668785619
	.quad	0x3fedf92730d08e2e              # double 0.93666419538607726
	.quad	0x3fb31dbfa5a0e808              # double 0.074672677933364295
	.quad	0x3f971ef998a005c0              # double 0.022579097691055372
	.quad	0x3fd05cef10fab95e              # double 0.2556722322286954
	.quad	0x3fe8f59bbb759b23              # double 0.77998148549236068
	.quad	0x3fd499d89df63a2a              # double 0.3218900244327495
	.quad	0x3fde5c5676fbb81e              # double 0.47438584918461568
	.quad	0x3fef9f149750fed0              # double 0.98816899827940041
	.quad	0x3fe245abf7544e21              # double 0.57100485140330559
	.quad	0x3fefbca50aa08d81              # double 0.99177791667573
	.quad	0x3fcb08aa9bbca6cc              # double 0.21120197872487834
	.quad	0x3fe5e4189defbb7a              # double 0.68409376952136758
	.quad	0x3fef78e287362dca              # double 0.98350645454905217
	.quad	0x3fe62c7fec535853              # double 0.69293209225976182
	.quad	0x3fc65a24e6f22f8c              # double 0.17462598110830319
	.quad	0x3fdf0c3d1a50b816              # double 0.48512198991636646
	.quad	0x3fe71727caff558a              # double 0.72157659194879042
	.quad	0x3fb30b2ccf549508              # double 0.074389267556927874
	.quad	0x3fe7175a001b2b5b              # double 0.72160053272942137
	.quad	0x3fd5c1fe736691de              # double 0.33996545095058461
	.quad	0x3fc9acd3c58c8294              # double 0.20058676858845514
	.quad	0x3fe8eb0a61c48f7b              # double 0.77869147391582716
	.quad	0x3fb5cd36b0d7ee68              # double 0.085162561583212004
	.quad	0x3fc6915fc9db9288              # double 0.17631146770795092
	.quad	0x3fb1ee6dbf6bd290              # double 0.070044383271872457
	.quad	0x3fa0f56461706920              # double 0.03312219323579968
	.quad	0x3fe0fafc075ced65              # double 0.53063775480351849
	.quad	0x3feaba0fa1404ea3              # double 0.83521253103613835
	.quad	0x3fe4cee9d50996ff              # double 0.6502579842460533
	.quad	0x3febf00d4293d24e              # double 0.87305319789317948
	.quad	0x3febac8fa5f9d668              # double 0.86481459061787991
	.quad	0x3fe91d46ebb68fd7              # double 0.78482385671349675
	.quad	0x3fae77906dfab9e0              # double 0.059505952286929675
	.quad	0x3fcb921bef3b8f00              # double 0.21539639645845199
	.quad	0x3fb30e7e0457c4c0              # double 0.074439884243264309
	.quad	0x3fe2079bd1cb8e5b              # double 0.56342879272092306
	.quad	0x3f9cf5746e60bf80              # double 0.028280085789617271
	.quad	0x3fb05cf90f2f6388              # double 0.063918653685858584
	.quad	0x3fd367a4e4bca114              # double 0.30320093476849874
	.quad	0x3fc9bc11359fed2c              # double 0.20105185621637511
	.quad	0x3fd38418d81a6b44              # double 0.30493756393268634
	.quad	0x3fe3349363fe0740              # double 0.60016793756242492
	.quad	0x3fdd56d87c9bdb02              # double 0.45842563790158419
	.quad	0x3fc61250f8bfdbb4              # double 0.17243396898240138
	.quad	0x3fc804b3353d0624              # double 0.1876434335663798
	.quad	0x3fed3bee599d8427              # double 0.91356580260265197
	.quad	0x3fdb40268e22e5f6              # double 0.42579044228077068
	.quad	0x3fd138adb3fa2b32              # double 0.26908438278103397
	.quad	0x3fdeb443c098f988              # double 0.47975248154025296
	.quad	0x3fd1ad039084195c              # double 0.27618493187801163
	.quad	0x3fe7a58cded92f46              # double 0.73895877385209796
	.quad	0x3fe5fb31e460379e              # double 0.68691343884141864
	.quad	0x3fd8314335a97e8c              # double 0.37800674667776302
	.quad	0x3fbd782d2e7d2ee0              # double 0.11511499772057787
	.quad	0x3fea6aa4fcfcf1bb              # double 0.82551812564593463
	.quad	0x3fe7010e2a3cecb4              # double 0.71887882470709608
	.quad	0x3fe6321d9e85d283              # double 0.69361763917420693
	.quad	0x3fef850b3647c73c              # double 0.98499069787633386
	.quad	0x3fead5d3999257af              # double 0.83860187525237062
	.quad	0x3fe20cf74a34f046              # double 0.56408276074899599
	.quad	0x3fde0d7bb197496c              # double 0.46957294791095339
	.quad	0x3fb242b6c1307400              # double 0.071330473103856207
	.quad	0x3fdf3a324e1b84ec              # double 0.48792703273473026
	.quad	0x3fcf9c3bf8fd38b4              # double 0.24695539148018997
	.quad	0x3fe17b38a869626e              # double 0.54629166500951754
	.quad	0x3feafa07048f360f              # double 0.8430209244776864
	.quad	0x3fe8387292da9e00              # double 0.75689057047287633
	.quad	0x3fd2d9a69ff4ac3a              # double 0.29453435536078454
	.quad	0x3fdeea99854cf358              # double 0.48306882875094947
	.quad	0x3fe3db9d84f510a0              # double 0.62055850952357972
	.quad	0x3fd745fae8c7c412              # double 0.36364624721960681
	.quad	0x3fe54fdd2fb68b94              # double 0.66599902457197624
	.quad	0x3fe264a2d2841479              # double 0.57478467098611852
	.quad	0x3fe2a86d4e054dbf              # double 0.58305993307515525
	.quad	0x3fdc75787c131886              # double 0.44466983906421154
	.quad	0x3fe3486818f2f97e              # double 0.60258870003580944
	.quad	0x3fe89453a093f577              # double 0.76810628283389704
	.quad	0x3fe4fb109c3422ba              # double 0.65564756878401131
	.quad	0x3fd56a29ff844bc0              # double 0.33460473969278937
	.quad	0x3fd80bcc6d3c09fc              # double 0.37572012584146797
	.quad	0x3fd8c24a7c465336              # double 0.38685857902719378
	.quad	0x3fbb6b090c8045b8              # double 0.10710197978212121
	.quad	0x3fd95dc0499543f2              # double 0.39634711442800985
	.quad	0x3fdd480e394aa54e              # double 0.45752292246705373
	.quad	0x3fe5cc2bbd509897              # double 0.68117320037414941
	.quad	0x3fef1ff2a5d0c4a2              # double 0.9726498831352226
	.quad	0x3fd3f0b90019c4ca              # double 0.3115675450308798
	.quad	0x3fd161cf48277f12              # double 0.27159483000103635
	.quad	0x3fcf00aec3130840              # double 0.24220833325495228
	.quad	0x3fd33f1ae4d20d50              # double 0.30072662683251838
	.quad	0x3fdc8dfc241bf5b8              # double 0.44616607214251358
	.quad	0x3fc3b27b2415c9b8              # double 0.15388430845230316
	.quad	0x3fe317b8f5ae7fe5              # double 0.59664581284232254
	.quad	0x3fe9f3fd73aeeac0              # double 0.81103394121540617
	.quad	0x3fc2fac4b46eeb30              # double 0.14827784357279361
	.quad	0x3fe6ab2309094493              # double 0.70839072956927607
	.quad	0x3fe32285a4afb582              # double 0.59796411671929683
	.quad	0x3feeb4d7e7f09a2f              # double 0.95957560826065513
	.quad	0x3feca87db480f123              # double 0.89556775335907834
	.quad	0x3fd979ba2c23dfb4              # double 0.39805464087066444
	.quad	0x3fdd555a32fd51a6              # double 0.4583344934410668
	.quad	0x3fe2af2e923828fd              # double 0.58388451155158771
	.quad	0x3fe7cd558308c8b3              # double 0.74381518929137369
	.quad	0x3fd94af1181a68bc              # double 0.39519908288788108
	.quad	0x3fe4769a8734c1c8              # double 0.63947798163831582
	.quad	0x3fea0e7f5e09e151              # double 0.81426971785462332
	.quad	0x3f8c816f41ee0500              # double 0.013918751906887739
	.quad	0x3fe48249d6fb8845              # double 0.64090435017374914
	.quad	0x3fda76fa2d819b04              # double 0.41351179546329342
	.quad	0x3fe8bf42dc903e93              # double 0.7733473117713906
	.quad	0x3fef57020e0d6ee2              # double 0.97937109703658742
	.quad	0x3feb655b05f67ce1              # double 0.85612250485055708
	.quad	0x3fdfc5766400aa0a              # double 0.49642715230825785
	.quad	0x3feb4aeaae3fc0c0              # double 0.85289510758413911
	.quad	0x3fdb54c93216267a              # double 0.42704992190611046
	.quad	0x3fc3328ba3b9f310              # double 0.14998002523852749
	.quad	0x3feb9e7800e705b7              # double 0.86309433151489301
	.quad	0x3fe0a7af49a0e17a              # double 0.52046932583384309
	.quad	0x3fdb486a9aa05206              # double 0.42629494762630349
	.quad	0x3fec64522c6a12d4              # double 0.88724621462514585
	.quad	0x3fec88dff15e63f9              # double 0.89170834677054167
	.quad	0x3fe240a8fe20ffa5              # double 0.57039308199454253
	.quad	0x3fda32abc1158468              # double 0.40934270721306243
	.quad	0x3fe5dbd6da2bfde8              # double 0.68308584796608063
	.quad	0x3fc5796be4cc8474              # double 0.16776798888989541
	.quad	0x3fbe784e45f78e60              # double 0.1190232201402579
	.quad	0x3fb25eb5284a0128              # double 0.071757623993111808
	.quad	0x3fe3a6b30e695f10              # double 0.61409905257002784
	.quad	0x3fec0f3eefb7cb28              # double 0.87686106510077355
	.quad	0x3fe6517b81155d8c              # double 0.69744658671963711
	.quad	0x3fe739df6e842b5d              # double 0.72581454835140458
	.quad	0x3f4453b26c684000              # double 6.2032901843345201E-4
	.quad	0x3fed5efef95657e8              # double 0.91784619044005655
	.quad	0x3fe3a40f812dac73              # double 0.61377692442091669
	.quad	0x3fc047827332daec              # double 0.12718229889806965
	.quad	0x3fd1176387876862              # double 0.26705253825423914
	.quad	0x3fb90dcdeaf0c530              # double 0.097866887911341349
	.quad	0x3fec9154dbd94f4e              # double 0.89274065913421352
	.quad	0x3fdd686716a54a5e              # double 0.45949723445406743
	.quad	0x3fdd0f849e0c3e28              # double 0.45407214578969723
	.quad	0x3fc400c5dba99edc              # double 0.1562735865184014
	.quad	0x3fd3cfa54489aaa0              # double 0.30954868024006466
	.quad	0x3fea72767162ad61              # double 0.8264724936065414
	.quad	0x3fca598b03cbc6fc              # double 0.20585763631202514
	.quad	0x3fd258e2d632bf14              # double 0.28667517583652224
	.quad	0x3fc8c5776102d724              # double 0.19352619397039306
	.quad	0x3fc1d33e336c9570              # double 0.13925912390656547
	.quad	0x3fe960bd23743e36              # double 0.79305893826125984
	.quad	0x3fca6db7134c261c              # double 0.20647324030169123
	.quad	0x3fe3db5363e22944              # double 0.62052316196903989
	.quad	0x3fc91c0c1f703cec              # double 0.19616843733863421
	.quad	0x3fd91763c9a3537a              # double 0.39205259982309537
	.quad	0x3fa35e328cb3a2f0              # double 0.037828044581891151
	.quad	0x3fb67071a08e6568              # double 0.087653257082271119
	.quad	0x3fdfd5eb4b01ed0c              # double 0.49743158650353858
	.quad	0x3fafcd1ba679d7b0              # double 0.062111724921961708
	.quad	0x3fe5c5ebf5e2581f              # double 0.68041036628961027
	.quad	0x3fe807ec5adb09dd              # double 0.75096719498861442
	.quad	0x3fe6383c9bc57061              # double 0.69436483787604797
	.quad	0x3fead48647aecc73              # double 0.83844293594883224
	.quad	0x3fa98c2b39a8c370              # double 0.049897528446655737
	.quad	0x3fbeb53481f5a210              # double 0.11995247052039582
	.quad	0x3fd47c1100ae82a4              # double 0.32007241312570955
	.quad	0x3fc73e821107379c              # double 0.18159509498076154
	.quad	0x3fec4acf673bddaa              # double 0.88413210070477999
	.quad	0x3fecd232cba82ac7              # double 0.90065898682345213
	.quad	0x3fe5fad64b61c6d4              # double 0.68686976168666058
	.quad	0x3fe519fa546472be              # double 0.65942112429510025
	.quad	0x3fe42797b6ed1b68              # double 0.62983308532498672
	.quad	0x3fe8e86d97ac9763              # double 0.77837257026542905
	.quad	0x3fe519d59844a518              # double 0.65940360774871731
	.quad	0x3fecf73ecb536340              # double 0.90518130981499922
	.quad	0x3fee33c5b22e9b8e              # double 0.94381985474761776
	.quad	0x3fc6f3c5415f064c              # double 0.17931428615524891
	.quad	0x3fe03bf99be2a257              # double 0.50732117124887111
	.quad	0x3fd3d380d7d79022              # double 0.30978413656544224
	.quad	0x3fe6e9efd7de6e2b              # double 0.71605674898041138
	.quad	0x3fea10b0329bde08              # double 0.81453714260618515
	.quad	0x3fe866defd504fa9              # double 0.76255750155768454
	.quad	0x3fd1536074fb702a              # double 0.27071391510048903
	.quad	0x3fdf49e9be48f3e0              # double 0.48888629515186999
	.quad	0x3fbcb60781ed8f50              # double 0.11215254709310085
	.quad	0x3fd9b4de3be3777c              # double 0.40166431282511161
	.quad	0x3faacddcf0ff7ff0              # double 0.052351860445696619
	.quad	0x3fefb5006dd5e247              # double 0.99084493114703142
	.quad	0x3fc69fd5da82ad7c              # double 0.17675278825241125
	.quad	0x3fd9295117d58908              # double 0.39314677550841326
	.quad	0x3fc5267cbf309a60              # double 0.16523703895036856
	.quad	0x3fc07ed4f9c6a2a4              # double 0.12887060352411084
	.quad	0x3faff78f0d718b70              # double 0.062435598746353516
	.quad	0x3fbcfd6113dc1b10              # double 0.11324125990732292
	.quad	0x3fe303963356ada1              # double 0.59418783213680026
	.quad	0x3fd33c046b6fde04              # double 0.30053816310780257
	.quad	0x3feeabec1407a851              # double 0.95848659431545446
	.quad	0x3fdc330ff0db529e              # double 0.44061659356274585
	.quad	0x3fda9e67858ad930              # double 0.41591823617217738
	.quad	0x3fefa9b7c9e7218a              # double 0.98946752008582561
	.quad	0x3fef9bf10527335e              # double 0.98778582579107499
	.quad	0x3fd5d0cfb266b54a              # double 0.34086983129494242
	.quad	0x3fb517251ded6280              # double 0.082384414488283042
	.quad	0x3fee2c228a2e0c20              # double 0.94288756359344816
	.quad	0x3fa2419ca1450240              # double 0.035656828581072109
	.quad	0x3feebc963bc6d4d2              # double 0.9605208556664826
	.quad	0x3fe77ffafbb0170c              # double 0.73437260778220681
	.quad	0x3fe6a64a82a29cfa              # double 0.70779920115174311
	.quad	0x3fca9975bbe60588              # double 0.20780822443707003
	.quad	0x3fbd78fdf7e2c080              # double 0.11512744237802686
	.quad	0x3fd4c140044dae7c              # double 0.32429504795320674
	.quad	0x3fee17bf6631a305              # double 0.94039888343567724
	.quad	0x3fed933a3f1947d0              # double 0.92422211002326016
	.quad	0x3fe518bf39c7df31              # double 0.65927087102224935
	.quad	0x3fd6dcaba4f2f092              # double 0.35721865757273819
	.quad	0x3fd301e30967c0de              # double 0.29699016493306185
	.quad	0x3fe83313dc89e2a4              # double 0.75623505662868639
	.quad	0x3fc0eb90296fad6c              # double 0.13218881629232315
	.quad	0x3fd374675d7fc164              # double 0.30397972231641845
	.quad	0x3fe246a9dfe434aa              # double 0.57112592438501975
	.quad	0x3fe4085c018a2d2e              # double 0.62602043438656607
	.quad	0x3fdf527f2eb59098              # double 0.4894102054734133
	.quad	0x3fe806cc189a73ee              # double 0.75082974248254941
	.quad	0x3fa01da45d0d6da0              # double 0.031476150855009211
	.quad	0x3fc308d7af02b234              # double 0.14870735211788288
	.quad	0x3fd81b66b4281042              # double 0.37667243569763198
	.quad	0x3fe88722f44aedf3              # double 0.76649615968147911
	.quad	0x3fb03ac8508c5b48              # double 0.063396949448685125
	.quad	0x3fdb2aa70d92d9d2              # double 0.42447830510664375
	.quad	0x3fefa1d7f8d930a8              # double 0.98850630381777637
	.quad	0x3fca9e31a3355f94              # double 0.20795269459881338
	.quad	0x3fe29e62bae10b73              # double 0.58183418750591753
	.quad	0x3fdbefc4ff2b284a              # double 0.43650937002951606
	.quad	0x3fb2cd6f1d937be0              # double 0.073447174759607048
	.quad	0x3feed88458e1c49c              # double 0.96393029556033438
	.quad	0x3fc3f7c1a30797c8              # double 0.15599842510635953
	.quad	0x3fe20779ffb315c4              # double 0.56341266576117066
	.quad	0x3fea51dfc3ee0a71              # double 0.82249439494655807
	.quad	0x3fec7f97826bcc18              # double 0.89057517502658623
	.quad	0x3fe7a2325a550358              # double 0.73854940073952502
	.quad	0x3fde37d67cae1d2a              # double 0.47215807128709975
	.quad	0x3f79b5c25c9fe480              # double 0.0062768547304524747
	.quad	0x3fefa44bc9b1786f              # double 0.98880566971980765
	.quad	0x3fe57d123994fa13              # double 0.67151747938607043
	.quad	0x3fe534260dea071b              # double 0.66261580197917469
	.quad	0x3fe5abf022f1e778              # double 0.67723852944548835
	.quad	0x3fd074bdc9d245c2              # double 0.25712532719725456
	.quad	0x3fe7975c2d949b55              # double 0.73722657110634293
	.quad	0x3fecc099a30d4e01              # double 0.89851075979316886
	.quad	0x3fe309b0caac50c6              # double 0.59493293366042432
	.quad	0x3fe150d41cc3ac7b              # double 0.54111676805531717
	.quad	0x3fe993fb16d7d4ef              # double 0.79931406461278509
	.quad	0x3fe173caa7358875              # double 0.54538471849470105
	.quad	0x3fe0a4983938393d              # double 0.52009211707790082
	.quad	0x3fe99e6776c8134d              # double 0.80058644485016262
	.quad	0x3fdc02583881e43a              # double 0.43764310377406768
	.quad	0x3fe13666dcb5c103              # double 0.5378908453695036
	.quad	0x3fd8eaf8c36c9ddc              # double 0.38934153637316427
	.quad	0x3fe802900584831c              # double 0.75031281545315975
	.quad	0x3fdd966f09996716              # double 0.46230674683975914
	.quad	0x3fe1ce8f44f96299              # double 0.55646480056300895
	.quad	0x3feae3aac739426d              # double 0.84029139433739675
	.quad	0x3febce63c7ff1d4d              # double 0.86894406377624878
	.quad	0x3fef2effefc8972c              # double 0.97448727448202054
	.quad	0x3fd55a4597acd16a              # double 0.33363475620287508
	.quad	0x3fd7204a4c66da84              # double 0.36134583912954832
	.quad	0x3fee5f41e3a92881              # double 0.94912809815402011
	.quad	0x3fe249c84b9378dc              # double 0.57150664101552762
	.quad	0x3fc226542e2169d8              # double 0.1417947030302702
	.quad	0x3fba38e83a363ae0              # double 0.1024308340185871
	.quad	0x3fd201c474eba910              # double 0.2813578740885001
	.quad	0x3feb5c55340fb94c              # double 0.85502109688040084
	.quad	0x3fe0b21ea68b010a              # double 0.52174313095022851
	.quad	0x3fb524705f77b870              # double 0.082587264354261114
	.quad	0x3fd65d2833162d9e              # double 0.34943585385254916
	.quad	0x3fbc67fe9ac84c70              # double 0.11096183089130007
	.quad	0x3fccab569c7e8594              # double 0.22397883073157898
	.quad	0x3feacc2726b19365              # double 0.83742101247171929
	.quad	0x3fcc25b34c21120c              # double 0.21990052430386731
	.quad	0x3fd0cc471d420450              # double 0.26246812684263876
	.quad	0x3fef5e4529e783fe              # double 0.98025758919186479
	.quad	0x3fefbdf788aa1b75              # double 0.99193932239800963
	.quad	0x3fe2061fa47e5dbb              # double 0.56324751022014341
	.quad	0x3fdfd702253d7338              # double 0.49749807011339753
	.quad	0x3fe3721ab3bbb6a4              # double 0.60767874817039003
	.quad	0x3feedad48b9bc42c              # double 0.96421267764356377
	.quad	0x3fd91dc9ba074776              # double 0.39244311491812967
	.quad	0x3fedb1875c5ad309              # double 0.92792099035304532
	.quad	0x3fe5a2f0cebf9979              # double 0.67614021664193935
	.quad	0x3fd8c404547ad512              # double 0.386963922977274
	.quad	0x3feb6486f4f1c550              # double 0.85602138367372937
	.quad	0x3fef5d247f741328              # double 0.9801199426006848
	.quad	0x3fda10f3e124f450              # double 0.40728470789674009
	.quad	0x3fd063b90ea0b11a              # double 0.25608660152899321
	.quad	0x3fd5f649e1ecff72              # double 0.3431572634035468
	.quad	0x3fe7b35b2fe00308              # double 0.74064406729311916
	.quad	0x3fa22aba36aefd30              # double 0.03548223416827978
	.quad	0x3fe238202e06bc92              # double 0.5693512820197546
	.quad	0x3fecbbf88fd9ad86              # double 0.89794567199480535
	.quad	0x3fdf7ff6bcfa945e              # double 0.49218529181445614
	.quad	0x3fc4caf4461b93f0              # double 0.16244367049435438
	.quad	0x3feeeca95252c4f2              # double 0.96638933256886461
	.quad	0x3fe8d4717c767459              # double 0.77593302067874526
	.quad	0x3feda3a101395695              # double 0.92622423399980625
	.quad	0x3fce99d51ab6cd80              # double 0.23906959347150902
	.quad	0x3fd1d15c56efff80              # double 0.27840336313237657
	.quad	0x3fe491543bbeee08              # double 0.64274036091905007
	.quad	0x3fd82dda9ef74840              # double 0.37779870533006843
	.quad	0x3fb5e85ce6e12fa8              # double 0.085576826445672993
	.quad	0x3fba5e59c0334b98              # double 0.10300217573539638
	.quad	0x3fdbbf96899b60fe              # double 0.43356860578707301
	.quad	0x3fd275febfced210              # double 0.28845185023536235
	.quad	0x3fd780144161aa2a              # double 0.3671923292628515
	.quad	0x3fedeacdcb895e55              # double 0.93491258385888421
	.quad	0x3fd105f8d21b83b8              # double 0.26598949926670512
	.quad	0x3f807bcab9e7af40              # double 0.0080486143096646367
	.quad	0x3fcb7609d31e34a4              # double 0.2145397454118313
	.quad	0x3fe8da1321d5ec1f              # double 0.77662045105478572
	.quad	0x3fb171beae5a67f8              # double 0.068141858641325714
	.quad	0x3fec5b80eef3ae81              # double 0.88616987867631292
	.quad	0x3fd836500e3b6bf6              # double 0.37831498517851914
	.quad	0x3fe398b1085f3879              # double 0.61238910327098417
	.quad	0x3fc84ff98a920018              # double 0.18994063631180391
	.quad	0x3fe7e536db8da4ef              # double 0.74673025971892837
	.quad	0x3f9db9c7d76b34a0              # double 0.029029009364241021
	.quad	0x3fe2093872e384ae              # double 0.56362554969031975
	.quad	0x3fa50adcaa13a310              # double 0.04109849525577236
	.quad	0x3fe75840d36697ed              # double 0.72952309884271715
	.quad	0x3fe7500dd0abad62              # double 0.72852221256236427
	.quad	0x3fc2ee9610fa7a58              # double 0.14790607289337987
	.quad	0x3fc9bce6a4d4d5fc              # double 0.201077299579694
	.quad	0x3fe4a8c402c9379f              # double 0.64560127777234644
	.quad	0x3fcf32db32c01c78              # double 0.24373950937317423
	.quad	0x3fe239a5c9a397c1              # double 0.56953706152557271
	.quad	0x3fd417da949c3a10              # double 0.313955922248085
	.quad	0x3fa130df730c64e0              # double 0.033575995248790624
	.quad	0x3fe372a6ba617fab              # double 0.60774551775465591
	.quad	0x3fe02a39788c2390              # double 0.5051543573800803
	.quad	0x3f862f01a3aa3e80              # double 0.010831845099601667
	.quad	0x3fda919dcf13fcfe              # double 0.41513772222965872
	.quad	0x3fce0162195d68cc              # double 0.2344172118999438
	.quad	0x3fbd9f9af12a3308              # double 0.11571663272679811
	.quad	0x3fdd01c6080dead8              # double 0.45323324953612376
	.quad	0x3fbf9e5771eabd40              # double 0.1235098507993273
	.quad	0x3fc490d36b01b214              # double 0.16066973423893727
	.quad	0x3febf452ea2a6687              # double 0.8735746930644418
	.quad	0x3fed1e86ba14449a              # double 0.9099763521536659
	.quad	0x3fdfa561c6fc3f22              # double 0.49446911270296046
	.quad	0x3fddd867848a2ab4              # double 0.46633327430087523
	.quad	0x3fef920f9ba695f3              # double 0.98657970810444195
	.quad	0x3fe63309ef8ff262              # double 0.69373032369146537
	.quad	0x3fead7077103b2b9              # double 0.83874866555341676
	.quad	0x3fe18b2bfa0d5f11              # double 0.54823874319387944
	.quad	0x3fddb1ec3750233e              # double 0.4639845409551987
	.quad	0x3fedbe1fb570b279              # double 0.92945847928565606
	.quad	0x3fed566dfea02671              # double 0.91680049640235783
	.quad	0x3fca6a415b179d54              # double 0.20636765430320259
	.quad	0x3fe8f53bc459ba1d              # double 0.77993572568613312
	.quad	0x3feb27ad41636b00              # double 0.84859335681116477
	.quad	0x3fe13f38117432b4              # double 0.53896716507877906
	.quad	0x3feb9504276b7053              # double 0.86194045733601354
	.quad	0x3fb38d2a5c5dbcf8              # double 0.076372764158566642
	.quad	0x3fef811152ea6a6c              # double 0.98450533098669046
	.quad	0x3fed1e024eb090b8              # double 0.90991320962031974
	.quad	0x3fe8c23bb3dcae6a              # double 0.77371010903648352
	.quad	0x3feccd7a028ba134              # double 0.90008259293703085
	.quad	0x3fe52e979d0be2d9              # double 0.66193752930766003
	.quad	0x3fb3139e75b97b58              # double 0.074518111935942044
	.quad	0x3fe7d0e60eb2ced8              # double 0.74425032492441812
	.quad	0x3fe94786acb2d501              # double 0.78998121004283928
	.quad	0x3fee0279891ec5ea              # double 0.93780209332743181
	.quad	0x3fe7ad594326dd31              # double 0.7399107276495781
	.quad	0x3fa5ccf8bf6f6cc0              # double 0.042579434746323752
	.quad	0x3fdeee395f093a72              # double 0.48329004555572574
	.quad	0x3fb320509adb2958              # double 0.074711835676827376
	.quad	0x3fe5e72edaf4827c              # double 0.68447058453246212
	.quad	0x3fdee8afd9c52b82              # double 0.48295208231564157
	.quad	0x3fec3e79b8b8c3a5              # double 0.88262640074218679
	.quad	0x3f5d8c4503646600              # double 0.0018034624059225512
	.quad	0x3feedb2895d9f5f4              # double 0.96425275104382857
	.quad	0x3fe6c928ed3fe1ab              # double 0.71205564821052769
	.quad	0x3fe08a538beff88a              # double 0.51688554126282438
	.quad	0x3fe1016ddb8d0b5c              # double 0.5314244545082647
	.quad	0x3fced54c14fb4c00              # double 0.24088431381696296
	.quad	0x3fd2c1613c494c5c              # double 0.29305296790443491
	.quad	0x3fe214c1315e80b5              # double 0.56503352777874361
	.quad	0x3fca1e66aa674250              # double 0.20405276604153011
	.quad	0x3fd89fdd924c2dde              # double 0.38475741659996554
	.quad	0x3fb69649e3dac820              # double 0.088230722549980545
	.quad	0x3fe70ca58dc7d8f5              # double 0.72029378596815141
	.quad	0x3fbc434b28603260              # double 0.11040181861626186
	.quad	0x3fe376b67ea80a86              # double 0.60824131715374175
	.quad	0x3fdde0c9da795d96              # double 0.46684500060424605
	.quad	0x3fefdb78072760b1              # double 0.9955406322215109
	.quad	0x3fc1323b6dea0958              # double 0.13434546343712372
	.quad	0x3fe6295d192b97b2              # double 0.69254927555151924
	.quad	0x3fdf1e9e2d4d7acc              # double 0.48624376701438332
	.quad	0x3fe8a1b460969952              # double 0.76973933091066216
	.quad	0x3feaa3f3d28f88d9              # double 0.83251372456677608
	.quad	0x3fb90a345c9dd2f8              # double 0.097811958896112716
	.quad	0x3fe09a00ab008b1f              # double 0.51879914664127458
	.quad	0x3fec6fdbec281c21              # double 0.88865467190123948
	.quad	0x3fe6b6c583ac2269              # double 0.70981097905412327
	.quad	0x3fecae4694769f1e              # double 0.89627388951064169
	.quad	0x3fdd55e318dac66e              # double 0.45836713244634708
	.quad	0x3fe195831107afe9              # double 0.54950097395112352
	.quad	0x3fe507f7318f0170              # double 0.65722236327569128
	.quad	0x3feeb16c41aef3f3              # double 0.95915806607047071
	.quad	0x3fed2a6ae00e4f9c              # double 0.911427915200409
	.quad	0x3fd478a505452c5c              # double 0.31986356272381555
	.quad	0x3fe2c036b1265afc              # double 0.5859635791738067
	.quad	0x3fed580d4e5bb620              # double 0.91699853233666672
	.quad	0x3fe3bf86abb97775              # double 0.61712964572846707
	.quad	0x3f8b8cce69aff1c0              # double 0.013452160454101469
	.quad	0x3fc64129c72afb18              # double 0.17386362290377444
	.quad	0x3fdb89ea846fad8a              # double 0.4302927296946214
	.quad	0x3fefbc1d17a4cb63              # double 0.99171309106746396
	.quad	0x3fec5bd707e41473              # double 0.88621093312452925
	.quad	0x3fd566c57d40b7ae              # double 0.33439767104834572
	.quad	0x3fe7ff2c81aeaa70              # double 0.74989915207454594
	.quad	0x3fe08dad472c80cf              # double 0.51729453946247783
	.quad	0x3fe7c0935bb54061              # double 0.74225776588174253
	.quad	0x3fe5d34a9307f54b              # double 0.68204239575394732
	.quad	0x3fecf4c2c48fcce8              # double 0.90487802878342638
	.quad	0x3fd56c6a0f07e792              # double 0.33474208324298005
	.quad	0x3fe38aeeeac44c86              # double 0.61070962765587988
	.quad	0x3fe03ea8123e8207              # double 0.50764850199999578
	.quad	0x3fd4911632c6c148              # double 0.32135539015418546
	.quad	0x3fb577eec3281490              # double 0.083861277242322396
	.quad	0x3feba22fb850c9c2              # double 0.86354814528595392
	.quad	0x3fec6a0cb701242f              # double 0.8879455160432651
	.quad	0x3fe29edc7f9f913f              # double 0.58189225126674404
	.quad	0x3f87f04600af5ec0              # double 0.011688753982454059
	.quad	0x3fd0654702bac408              # double 0.25618148104246119
	.quad	0x3fa94b4b6e8bb080              # double 0.049402577633231637
	.quad	0x3fd5d2468c6c098e              # double 0.34095920289123505
	.quad	0x3fede2ce9b21d9a7              # double 0.93393640803588063
	.quad	0x3fcf797fdd629a30              # double 0.24589536962339897
	.quad	0x3fd1f603acb22808              # double 0.28064052452884924
	.quad	0x3fc503f2b804dccc              # double 0.16418298707296797
	.quad	0x3fe08f2e577dc4ac              # double 0.51747815216198978
	.quad	0x3fe2f5572a648742              # double 0.59244879035779996
	.quad	0x3fe7213492ee5ec2              # double 0.72280338952528944
	.quad	0x3fd76eef1ceb7f3a              # double 0.36614587616167038
	.quad	0x3fdb5bf7e92c17de              # double 0.42748830576635821
	.quad	0x3fe4f401bc9e6928              # double 0.65478598441703628
	.quad	0x3fe465c3ccdb1926              # double 0.63742246638210953
	.quad	0x3fe9987540653f57              # double 0.79986059739347126
	.quad	0x3fd8ec3c4e39275c              # double 0.38941867484083104
	.quad	0x3fe4c114a5dd7dd7              # double 0.6485694160036769
	.quad	0x3fe97675cb496e9b              # double 0.79571046547376356
	.quad	0x3fdd658a9b84a1fa              # double 0.45932259738268011
	.quad	0x3feae69a3428d05e              # double 0.8406497019518715
	.quad	0x3fe92982fab60a6a              # double 0.78631733862887399
	.quad	0x3fe0dc25c7f768bf              # double 0.52687348419137681
	.quad	0x3feda506b8ca5ebe              # double 0.92639480678459285
	.quad	0x3fe32edb9489e0da              # double 0.59946993838732543
	.quad	0x3fd1106f87730416              # double 0.26662815310925347
	.quad	0x3fc538117307bd08              # double 0.16577356449804648
	.quad	0x3fcacaf96002b86c              # double 0.2093192786027801
	.quad	0x3fd687ec98c9eaaa              # double 0.35204615517401783
	.quad	0x3fdb97e44ff56928              # double 0.43114574249706772
	.quad	0x3fed83b42424f643              # double 0.92232710895013559
	.quad	0x3feb5694d526d75f              # double 0.85431901580043845
	.quad	0x3fe426fa7b980b06              # double 0.629758111376163
	.quad	0x3fd07545e16a7ca6              # double 0.25715777409818441
	.quad	0x3fec2d2490462d37              # double 0.88051059893169892
	.quad	0x3feee3155e413812              # double 0.96522015008099715
	.quad	0x3fd33585bb681af2              # double 0.30014174748832467
	.quad	0x3fd89205ed0c6f46              # double 0.38391254567408273
	.quad	0x3feb37714821a96d              # double 0.85051788414174967
	.quad	0x3fd4f7b8de70a91e              # double 0.32761975977577318
	.quad	0x3fd6517c73de470c              # double 0.34872351947079561
	.quad	0x3fd14d5b15e0a470              # double 0.27034642349696636
	.quad	0x3fbf0746ad1a9cf8              # double 0.12120477415247766
	.quad	0x3feaefac2071799c              # double 0.84175688110899526
	.quad	0x3fc6c54de35c3c4c              # double 0.17789624787880809
	.quad	0x3feb5d8c6dd430ff              # double 0.85516950083686527
	.quad	0x3fe6a5d316838221              # double 0.70774225613792308
	.quad	0x3fc1844076f23278              # double 0.13684850509561719
	.quad	0x3fc164b7dd9b159c              # double 0.13588617630572919
	.quad	0x3fe9213257c0ff69              # double 0.78530232562478119
	.quad	0x3fe2ad73008bb865              # double 0.58367300135229228
	.quad	0x3fd6047883d140c2              # double 0.3440228736190073
	.quad	0x3fea32ab406869b6              # double 0.81868517474804636
	.quad	0x3fd61eb422ebc736              # double 0.3456240025544618
	.quad	0x3fe0ae49d900512a              # double 0.52127544768385303
	.quad	0x3fe3e80cacb92b98              # double 0.62207635626815527
	.quad	0x3fe3b1fe9dd006ee              # double 0.61547785589956816
	.quad	0x3fe19508427bc2af              # double 0.5494424150948215
	.quad	0x3fcffe4659298044              # double 0.24994735101336307
	.quad	0x3fd124a57b7f9a6e              # double 0.26786171970744632
	.quad	0x3feb53a0fc64e291              # double 0.85395860000342527
	.quad	0x3fed72fa82b8c576              # double 0.92028546840280856
	.quad	0x3fe196cc5be3730a              # double 0.549657992810894
	.quad	0x3fde1f3a0c95ab2e              # double 0.47065592984170024
	.quad	0x3fceb43811485a60              # double 0.23987484783056612
	.quad	0x3fe569f4ba883604              # double 0.66918407852216477
	.quad	0x3fdddabba92b60f4              # double 0.46647540588811798
	.quad	0x3fda07db6bbb50a0              # double 0.40672956009553651
	.quad	0x3fb1e20f22750938              # double 0.069855638420482147
	.quad	0x3fd0bad6bfb5e3a0              # double 0.2614037391827484
	.quad	0x3fe74112bf3d2e47              # double 0.72669350959171986
	.quad	0x3fe0288b5c4d5e4c              # double 0.50494926479127278
	.quad	0x3fe57a8daa6e18b4              # double 0.67121012961503945
	.quad	0x3fcae3a674cc0278              # double 0.21007233336424114
	.quad	0x3fea072acf856458              # double 0.81337490588624473
	.quad	0x3f879d7d1fb37f80              # double 0.011530854730551487
	.quad	0x3fa5010e9a176db0              # double 0.041023689565658272
	.quad	0x3fd8a66b7e6add9c              # double 0.38515746446088328
	.quad	0x3fed783bb42268c6              # double 0.92092690641882125
	.quad	0x3fdc3ce7ba866808              # double 0.44121735778173887
	.quad	0x3f973bf65ad31fe0              # double 0.0226896756110192
	.quad	0x3feae45a603f4e9e              # double 0.84037512586879237
	.quad	0x3fe517dd6ee12aa6              # double 0.65916320472873191
	.quad	0x3febaf33bd771a83              # double 0.86513697628909403
	.quad	0x3fe282cbbe660d92              # double 0.57846629321322696
	.quad	0x3fcea7bdec417118              # double 0.23949407611770179
	.quad	0x3fcb9e0b0dd34b10              # double 0.21576059508387191
	.quad	0x3fe8e2ab9b4670b3              # double 0.777669719001571
	.quad	0x3fea9624749ca09a              # double 0.83082793021914658
	.quad	0x3fefc0492d99c87f              # double 0.9922223940505005
	.quad	0x3fbec89784c1fb68              # double 0.1202482890239317
	.quad	0x3fdbaf3f95021bca              # double 0.43257131148896788
	.quad	0x3feb1763930b8bc4              # double 0.84660509795900695
	.quad	0x3fc6db3749c698d0              # double 0.17856494047481997
	.quad	0x3f9e1a259e0160a0              # double 0.029396617668994041
	.quad	0x3fe12c8097ab5b95              # double 0.5366824114124592
	.quad	0x3fe6e029026b23fc              # double 0.71486330482832683
	.quad	0x3fe48d174b319c99              # double 0.64222302137649756
	.quad	0x3fce8ab7dfa8336c              # double 0.23860834522966046
	.quad	0x3fec850e10102592              # double 0.89124205720252037
	.quad	0x3fea89bfefcc67e9              # double 0.82931515536915612
	.quad	0x3fd8671c0f7c3a4a              # double 0.38129331123574117
	.quad	0x3fe02b6aa8a3ef7f              # double 0.50529988229344258
	.quad	0x3fedcb942a5d51b5              # double 0.93110092424699664
	.quad	0x3fea4e5439881ccc              # double 0.82206164585741126
	.quad	0x3feeedd1fab32427              # double 0.96653078999327568
	.quad	0x3fde8b97625f08ae              # double 0.47726997953953798
	.quad	0x3fe23b20b5a30e23              # double 0.56971774555171739
	.quad	0x3fd78f43b3ea30b0              # double 0.36811916894726959
	.quad	0x3fe2e9b206a8948b              # double 0.59102727222911378
	.quad	0x3fd18836428ea7d4              # double 0.27393871783953938
	.quad	0x3febfbe0f54443a1              # double 0.87449691680568631
	.quad	0x3fe57d742970a371              # double 0.67156417936085522
	.quad	0x3fe902b6450b492f              # double 0.7815810535924238
	.quad	0x3fe3224a2143b345              # double 0.59793573853458126
	.quad	0x3fed78796d63e733              # double 0.92095633855135473
	.quad	0x3fc8e8dc63bcc4cc              # double 0.19460635061253695
	.quad	0x3fb603bf8ab6a4b0              # double 0.085994693151081547
	.quad	0x3fe9b6fb1e6591b2              # double 0.80358653962007609
	.quad	0x3fcd74482f89c038              # double 0.2301111442679955
	.quad	0x3feebbe102221e98              # double 0.96043444077163808
	.quad	0x3feba651f6f6dfe7              # double 0.86405275569177042
	.quad	0x3feb0dbc701ae9f0              # double 0.8454267682603227
	.quad	0x3fe36d9fcc403358              # double 0.6071318616173853
	.quad	0x3feb9e8e8589c60c              # double 0.86310506898570471
	.quad	0x3fe50e6f59ac8b67              # double 0.65801208033040559
	.quad	0x3f4a34fde9db4400              # double 7.9977415199483648E-4
	.quad	0x3f9ebc018d9aa5a0              # double 0.030014061229541533
	.quad	0x3fe4268cb3a54edc              # double 0.62970576369340447
	.quad	0x3fec727344b15edf              # double 0.8889709798486044
	.quad	0x3fd5f85db97c2890              # double 0.34328406442421855
	.quad	0x3fd404889b762764              # double 0.31277671033659815
	.quad	0x3fed4c16f9f56173              # double 0.91553829975150192
	.quad	0x3feb4721723ca2d8              # double 0.85243294059645347
	.quad	0x3feea725503ea142              # double 0.95790353462965805
	.quad	0x3fa3fb5734762c50              # double 0.039026951936727117
	.quad	0x3fe4fbd41de8da51              # double 0.65574079362597548
	.quad	0x3fb3db62c9f36990              # double 0.077566313080217108
	.quad	0x3fe2c99e0b4cd48e              # double 0.58711149413160668
	.quad	0x3feaab44e89ffec0              # double 0.83340688166205013
	.quad	0x3fc84914dfa63280              # double 0.18973027153369415
	.quad	0x3feb31e01662256d              # double 0.84983829852823833
	.quad	0x3fef441ae6dc00ac              # double 0.97706360902522737
	.quad	0x3fea6c2c2ec7c55c              # double 0.82570466172016265
	.quad	0x3fe137c98910832b              # double 0.53805996675882761
	.quad	0x3fddcc400385fc9e              # double 0.46559143394547131
	.quad	0x3fe400e6a37d48cd              # double 0.62510997706910987
	.quad	0x3fe935757d18e8a0              # double 0.787775749521888
	.quad	0x3fe9640c3ddc3f52              # double 0.79346286851976289
	.quad	0x3fe9b557ca55f7c4              # double 0.80338658827508213
	.quad	0x3feb7d3035056385              # double 0.85903177600549496
	.quad	0x3fc22cb0b7fc52dc              # double 0.1419888399474506
	.quad	0x3fe512d74c997616              # double 0.65854992829162273
	.quad	0x3fde5b9d76112ae6              # double 0.47434174089418801
	.quad	0x3f8a5c5c34d5cd00              # double 0.012871475565339185
	.quad	0x3fc69fa883611600              # double 0.17674738326074646
	.quad	0x3feaabde070e946a              # double 0.83347989443121873
	.quad	0x3fd2120ddc94ff80              # double 0.28235193768704647
	.quad	0x3fece1b29a4e00af              # double 0.90255098474155726
	.quad	0x3fe892f25d9e8f6d              # double 0.76793783459696174
	.quad	0x3fb79b5c5a583c28              # double 0.092214366967014016
	.quad	0x3fd43f47b6c5f282              # double 0.31636231278370286
	.quad	0x3fd5ded7ec4ddfea              # double 0.34172628475744082
	.quad	0x3fed28f8cfae5a8c              # double 0.91125145495137038
	.quad	0x3fc723834737a0c4              # double 0.18077126481444428
	.quad	0x3fcd77a60bc8a72c              # double 0.2302138860262003
	.quad	0x3fc718810d995b14              # double 0.18043530620590131
	.quad	0x3fe7e7fc1a1b3413              # double 0.74706845377807196
	.quad	0x3fc40305fe771ee8              # double 0.15634226727546907
	.quad	0x3fe6f68221685676              # double 0.71759134793201329
	.quad	0x3fe16c4c08227ef0              # double 0.54446984852617497
	.quad	0x3fd18424e806bfcc              # double 0.27369043978523844
	.quad	0x3fbbb1db36dd18c8              # double 0.10818262185520944
	.quad	0x3fdcadab46ed3296              # double 0.44809991766377644
	.quad	0x3fcf830a669ab8e0              # double 0.2461865426061598
	.quad	0x3fcb68eea0ffc6d4              # double 0.21413977490697411
	.quad	0x3faaf00eecc2b700              # double 0.052612749482575438
	.quad	0x3fe998dd8a67e848              # double 0.79991032631301895
	.quad	0x3fed6d46ec8de412              # double 0.91958948328022161
	.quad	0x3fd3a3050527c996              # double 0.30682492736300426
	.quad	0x3fa2e65f3cb82150              # double 0.036913849031466328
	.quad	0x3fd2d23ddc747184              # double 0.29408213166041031
	.quad	0x3fde99a4cc812532              # double 0.47812767001285572
	.quad	0x3fd5b2eebbedf6dc              # double 0.33904617645735668
	.quad	0x3fee6e45570004bd              # double 0.95096079818917867
	.quad	0x3fc5657f05cc9dc4              # double 0.16715991767089922
	.quad	0x3fe359b0b3402362              # double 0.60469851503249239
	.quad	0x3fcba80d268fa11c              # double 0.21606602080215331
	.quad	0x3fe9a44a10840f75              # double 0.80130484796289514
	.quad	0x3fd6a51800489e1e              # double 0.35382652309132989
	.quad	0x3fe036fd399c8ea4              # double 0.50671254398590237
	.quad	0x3fe6e59163f9fc3f              # double 0.71552342917119194
	.quad	0x3fe7698ed730c82e              # double 0.73163549451260734
	.quad	0x3f9db66dba9e0480              # double 0.029016222491467847
	.quad	0x3feb7793f22c37e3              # double 0.8583469133316125
	.quad	0x3fc3ca8039a00184              # double 0.15461733640405495
	.quad	0x3fd90c873e64c1a4              # double 0.39138966649172802
	.quad	0x3fec32a0cb76b22a              # double 0.88118018855090452
	.quad	0x3fb07faa1540c290              # double 0.064448003948891719
	.quad	0x3fba4f4487780920              # double 0.1027720289930909
	.quad	0x3fe3f28846f06320              # double 0.6233559976127232
	.quad	0x3f944ab7074bb9a0              # double 0.019816264934826244
	.quad	0x3fd12094ee3d4f76              # double 0.2676136328275257
	.quad	0x3fc0cff722d717f0              # double 0.13134659959013062
	.quad	0x3fda21364efca22e              # double 0.40827710832175768
	.quad	0x3fb94bb57caaad30              # double 0.098811476646621043
	.quad	0x3fe75f6f0ea5415a              # double 0.73039963589148305
	.quad	0x3fe0da811c335e8a              # double 0.52667289264623318
	.quad	0x3fdb7fd7196cd67a              # double 0.42967774851727081
	.quad	0x3fea8d5a8973f7ca              # double 0.82975508543290144
	.quad	0x3fed222809343740              # double 0.91041948125505456
	.quad	0x3fe0760e33fb9cad              # double 0.51441106942083581
	.quad	0x3fea09c0f5ee277f              # double 0.81369064362773702
	.quad	0x3fe971c8fb00ea97              # double 0.79513978027474053
	.quad	0x3fce97373f03cf60              # double 0.23898974015139185
	.quad	0x3fc6ac2a26b95aa4              # double 0.17712904825994713
	.quad	0x3fefc0e3bc4b9cab              # double 0.99229609276234975
	.quad	0x3fe87346d0ca4ae6              # double 0.76407185344063744
	.quad	0x3fde46c9d5cdf71a              # double 0.47307058219290499
	.quad	0x3fda43a4fd5a3ca4              # double 0.41037869206861388
	.quad	0x3fd401fead742524              # double 0.31262175501668055
	.quad	0x3fe159d20a12cfdf              # double 0.54221441237904944
	.quad	0x3fe8327cba69daff              # double 0.75616299065481474
	.quad	0x3fea1b10abcd83ca              # double 0.81580384783966875
	.quad	0x3fd892c026b8656c              # double 0.38395694524077473
	.quad	0x3fd0fce01bbffe6a              # double 0.26543429098089766
	.quad	0x3fd641feeec4153e              # double 0.34777806584346027
	.quad	0x3fe6a844c1cde0ab              # double 0.70804059841522837
	.quad	0x3fe18d6d40eaea1e              # double 0.54851401023126178
	.quad	0x3fe2d3348b5523d7              # double 0.58828189099687733
	.quad	0x3fd9e373a9c06cde              # double 0.40450755669890082
	.quad	0x3fec94a94d76b55b              # double 0.89314713601713025
	.quad	0x3fe861d43ac0b4e1              # double 0.76194201922558247
	.quad	0x3fa8a72b98fb6390              # double 0.048150408196028782
	.quad	0x3fe11cf3cba0d237              # double 0.53478421946653654
	.quad	0x3fd5947c24c45008              # double 0.33718780127060244
	.quad	0x3fc99c60fe534920              # double 0.20008480470875956
	.quad	0x3feabdd3704788a4              # double 0.83567211083961412
	.quad	0x3fe6afe087ee0e8d              # double 0.70896936940012412
	.quad	0x3fe7632eb6b98125              # double 0.73085723579791717
	.quad	0x3fbd6559c22af7d0              # double 0.11482773771692156
	.quad	0x3fdf3ec5491b82f8              # double 0.48820621623421756
	.quad	0x3fa735226e49df00              # double 0.045327259028395517
	.quad	0x3fbc04f0eaa12a10              # double 0.10945039489994479
	.quad	0x3fc8fac9d98fca54              # double 0.19515345690850217
	.quad	0x3fd1b42f3de63e20              # double 0.2766225914465128
	.quad	0x3fd70d0ffa293e60              # double 0.36017226629062371
	.quad	0x3febf9d879a4080b              # double 0.87424873121222058
	.quad	0x3fe7215b4e572b58              # double 0.72282185841445834
	.quad	0x3fef990cead792f5              # double 0.98743291728587101
	.quad	0x3fe2ad52c9481203              # double 0.58365763962552852
	.quad	0x3fd2c20a9be858cc              # double 0.29309334969856304
	.quad	0x3fe36b46dc1b002b              # double 0.60684531201696268
	.quad	0x3fe996a608986858              # double 0.7996397178533341
	.quad	0x3fad241f2177cb70              # double 0.056916210971300951
	.quad	0x3fef9f7f5ee8c75c              # double 0.98821991478892412
	.quad	0x3f9b49c092ef9dc0              # double 0.026648529976140756
	.quad	0x3fe49686df274b44              # double 0.64337485870996902
	.quad	0x3fe2815315901be7              # double 0.57828668796070992
	.quad	0x3fe52478ba5e4993              # double 0.66070209884701325
	.quad	0x3fe2172a241fbd8d              # double 0.56532771163431195
	.quad	0x3fd8c18fb7da0878              # double 0.38681405023829241
	.quad	0x3fa5ee3be1d751d0              # double 0.042833205526821794
	.quad	0x3fb8b7ebf899b628              # double 0.096556423371759181
	.quad	0x3fd3d42e8341f7c4              # double 0.30982554262288553
	.quad	0x3fac4401aa2e3290              # double 0.055206348442060293
	.quad	0x3fe93148bf63bffa              # double 0.78726613407889023
	.quad	0x3fc239124ed4056c              # double 0.1423666844275816
	.quad	0x3fc78be4c2f5de84              # double 0.18395671386291579
	.quad	0x3fee27c4b272b533              # double 0.94235453465595354
	.quad	0x3fe38c92ac8aea9d              # double 0.61090978336081359
	.quad	0x3fd8487b0ffde6f8              # double 0.37942387162875901
	.quad	0x3fec466b63f39f59              # double 0.88359612962538414
	.quad	0x3fe55163740afdc8              # double 0.66618511833797189
	.quad	0x3fe63794b39c6e03              # double 0.69428477363857188
	.quad	0x3fe14e8979a5b3ef              # double 0.54083703765138391
	.quad	0x3fcd4a184c5ed104              # double 0.2288236973669272
	.quad	0x3fe5e5220ad05a05              # double 0.68422033416828809
	.quad	0x3febd5fb83f79983              # double 0.86987090849724813
	.quad	0x3fd39f8019c82140              # double 0.30661013143300764
	.quad	0x3fd7866d899046c2              # double 0.36757982667868927
	.quad	0x3fc059b6c229aa44              # double 0.12773785095790136
	.quad	0x3fe15f141a4086c9              # double 0.54285626532893005
	.quad	0x3fd8f766bfcdd16c              # double 0.39010018092019183
	.quad	0x3fd99020e5e9cee8              # double 0.39942190601799021
	.quad	0x3feac35920fcbd6a              # double 0.83634621088814964
	.quad	0x3feb859951d7d5fc              # double 0.86005846009237485
	.quad	0x3fc8828fb57f718c              # double 0.19148441660116722
	.quad	0x3fc91ae767e17420              # double 0.19613354275034656
	.quad	0x3fe3cca500e36ccc              # double 0.61873102353583809
	.quad	0x3fe93e238c820b2c              # double 0.78883531039205001
	.quad	0x3fd10253b8425eda              # double 0.26576703065937368
	.quad	0x3fef9381301775ef              # double 0.98675593750857426
	.quad	0x3fdea92428cca956              # double 0.47907356247255473
	.quad	0x3fd671fa79d08c18              # double 0.35070669074974736
	.quad	0x3fec5047caf34af7              # double 0.8847998584627409
	.quad	0x3fda4b7a4f03efb4              # double 0.41085679737420411
	.quad	0x3febaa2de2df7128              # double 0.86452383338067751
	.quad	0x3fe73904cc241429              # double 0.72571029540325072
	.quad	0x3fe92a4bd7e685c1              # double 0.78641311805784408
	.quad	0x3fda1691ada7ee28              # double 0.407627505861202
	.quad	0x3fe4606a6f929032              # double 0.63676950255876918
	.quad	0x3fd7f457e5119e6a              # double 0.37428853387834826
	.quad	0x3fd9e4206f9cd570              # double 0.40454874896689486
	.quad	0x3fc1f29a8b7ce12c              # double 0.14021617709091438
	.quad	0x3fe3481d86417012              # double 0.60255314084816036
	.quad	0x3fe8d1eab76269bc              # double 0.77562461678763083
	.quad	0x3fe35312bcae6448              # double 0.6038907704525025
	.quad	0x3f7b8be21ce71780              # double 0.0067251999411775953
	.quad	0x3fe755acdf0d1ed8              # double 0.7292084080190433
	.quad	0x3fe1d3dc34d99d87              # double 0.55711183855321245
	.quad	0x3fece3d2f8dd312d              # double 0.90281056028610396
	.quad	0x3fe38eae49ce6b96              # double 0.61116709151552828
	.quad	0x3fd64f0adc1c5c9c              # double 0.3485743665236869
	.quad	0x3fe289cdbd126198              # double 0.57932173660360586
	.quad	0x3fd96c450c3c1924              # double 0.3972332591514649
	.quad	0x3fe45deff7c01e0f              # double 0.63646696461450059
	.quad	0x3feaa411f5c8aa02              # double 0.83252809528977445
	.quad	0x3fe371ddd0453736              # double 0.6076497142582642
	.quad	0x3feec5115e378ec1              # double 0.96155613328706845
	.quad	0x3fdd1340b108ed9a              # double 0.45430009163438856
	.quad	0x3fcc4e5e8ac249cc              # double 0.22114164138163372
	.quad	0x3fe88d3e4fba2a68              # double 0.76724162646980876
	.quad	0x3fed241de0fe957a              # double 0.91065877861244293
	.quad	0x3fb219bb6c9d7568              # double 0.070705141084052792
	.quad	0x3fceaacfd187d228              # double 0.23958776217445288
	.quad	0x3fe3dd821f8b08f0              # double 0.62078958664667816
	.quad	0x3fef2305e84cee52              # double 0.97302527781671189
	.quad	0x3fee216ac65a3795              # double 0.941579234511425
	.quad	0x3fd7f907fe624f90              # double 0.37457465974989024
	.quad	0x3feb7622094e6122              # double 0.85817052667247062
	.quad	0x3fc44c7b084b8730              # double 0.15858400254278981
	.quad	0x3fd6a8670d04e6ba              # double 0.35402847548867167
	.quad	0x3fee902fd9c144c4              # double 0.95510094194664718
	.quad	0x3fe5834fb8569991              # double 0.67227922442980248
	.quad	0x3fe11a52ae95c5a1              # double 0.53446325396196326
	.quad	0x3fe201155cd8436f              # double 0.56263225682969942
	.quad	0x3fe66e7de66edf19              # double 0.70098776823485587
	.quad	0x3fe4ac34f1c4e868              # double 0.6460213396124006
	.quad	0x3fea3cb958602f43              # double 0.8199125982368759
	.quad	0x3feb99567913ab49              # double 0.86246799133127994
	.quad	0x3fb85990ff4372c8              # double 0.095116674728568218
	.quad	0x3fead47113febbce              # double 0.83843282609256575
	.quad	0x3fda83232ad48ac8              # double 0.4142539900077904
	.quad	0x3fdbcb0a9341dcb0              # double 0.43426765804856426
	.quad	0x3fdba03565c6e924              # double 0.43165335597190535
	.quad	0x3feb817dc24aead1              # double 0.85955703685552909
	.quad	0x3fd95eefa219aefa              # double 0.3964194376955984
	.quad	0x3fc530292d0729b8              # double 0.16553225229865887
	.quad	0x3fc9eb9d714573e4              # double 0.20250289946389366
	.quad	0x3fd3e7f007d073f4              # double 0.31103134883033978
	.quad	0x3fe8ed4f91686d62              # double 0.77896860504135312
	.quad	0x3fd9152885144560              # double 0.39191639896406194
	.quad	0x3feb00489d5ae11c              # double 0.84378462537191323
	.quad	0x3fe20cf71e3082db              # double 0.56408267876039575
	.quad	0x3fe4336d6d2e7b02              # double 0.63127776455425555
	.quad	0x3fb710ffb9e3f368              # double 0.090103133090406851
	.quad	0x3fac5346973aa290              # double 0.0553228435140386
	.quad	0x3fd7be7c494f49f2              # double 0.37100131186630769
	.quad	0x3fdc80ab5930c790              # double 0.44535335264219444
	.quad	0x3fe0faa46ea4384b              # double 0.53059598550476872
	.quad	0x3fe81419d619756e              # double 0.75245372597025351
	.quad	0x3fe54034a52ae2c1              # double 0.66408760318071114
	.quad	0x3fea9a17c6afac5c              # double 0.83131016546156955
	.quad	0x3fe4585c173ceaf4              # double 0.63578609980262835
	.quad	0x3fe2a6984f995568              # double 0.58283629938766257
	.quad	0x3fc3d003b907c2f8              # double 0.15478560003932507
	.quad	0x3fdd5bb37ec07b18              # double 0.45872199419129478
	.quad	0x3fd934f0add9ab1c              # double 0.3938562104946628
	.quad	0x3fc63552ca1586c8              # double 0.17350230090510466
	.quad	0x3fe86f3e526cd5ae              # double 0.7635795221200874
	.quad	0x3fe08c17177d051f              # double 0.51710085475511736
	.quad	0x3fc2df5e5d927130              # double 0.14744166916796919
	.quad	0x3fd7b5f801c09018              # double 0.37048149272072939
	.quad	0x3fd6d43efc9aa2a8              # double 0.35670447033275332
	.quad	0x3fd341f58e4ebdf4              # double 0.30090083024239722
	.quad	0x3febfea70ceeed96              # double 0.87483551527059222
	.quad	0x3fea825f02ab19ce              # double 0.82841444512524176
	.quad	0x3fed47cbf9b96c7f              # double 0.9150142552783932
	.quad	0x3fe7bd72e5fbd4e6              # double 0.74187607687659063
	.quad	0x3febf6e8b0cc5d91              # double 0.87389025240820406
	.quad	0x3fee4fa38c40838a              # double 0.94722154038400785
	.quad	0x3fedb0fb80a2bc9f              # double 0.92785430072935415
	.quad	0x3fe042a032ee9b5d              # double 0.50813302943866356
	.quad	0x3fc504900c866028              # double 0.16420174228255857
	.quad	0x3fe21c3f7565eb65              # double 0.56594822816201129
	.quad	0x3fe3610926545619              # double 0.60559518324106698
	.quad	0x3fc31505f0fb5910              # double 0.14907907740298088
	.quad	0x3fe5171506615305              # double 0.65906764265182061
	.quad	0x3fe7d278dd476976              # double 0.74444239824815273
	.quad	0x3fe81877277e07f2              # double 0.75298650468198347
	.quad	0x3fe29d7251c47591              # double 0.58171955080222137
	.quad	0x3fdda453c721ba4a              # double 0.46315473982295841
	.quad	0x3fdb4436b3b7dc4c              # double 0.42603843260389307
	.quad	0x3fe68f44f20c1265              # double 0.70498893046221822
	.quad	0x3fba6f6d80a330f8              # double 0.10326275244296201
	.quad	0x3fc7496a222de14c              # double 0.18192793530375651
	.quad	0x3fe753ca0fe0b8a5              # double 0.72897818661819669
	.quad	0x3fc1a4ac889d2088              # double 0.13783795042605029
	.quad	0x3fd027db6908e3f2              # double 0.2524326825837867
	.quad	0x3fe047459537c49b              # double 0.50870017189130878
	.quad	0x3f9e771897945420              # double 0.029751190425560847
	.quad	0x3fd8a02d01ad46ca              # double 0.38477635539775845
	.quad	0x3fd1dffe45faddc8              # double 0.27929646333674585
	.quad	0x3fa1ea7bf3f97ce0              # double 0.034992097408343303
	.quad	0x3fc169f8669804d0              # double 0.13604645738090548
	.quad	0x3fe86fe3811aa507              # double 0.76365828719750162
	.quad	0x3fea65056f99d896              # double 0.82483169362127984
	.quad	0x3f999a86a7e594a0              # double 0.025003532407386175
	.quad	0x3fe44ea897c67998              # double 0.63460187572109117
	.quad	0x3fea3548502ca86f              # double 0.81900420817443187
	.quad	0x3fe4ed69b79d58f3              # double 0.65398107397302707
	.quad	0x3fa4263315956320              # double 0.039353939423284467
	.quad	0x3fe89b58c301fadd              # double 0.7689632233376319
	.quad	0x3fbb05710b4c6690              # double 0.10555178190079517
	.quad	0x3fef66a5c9df5e69              # double 0.98128022602300035
	.quad	0x3fdb72c0bdc8e1f2              # double 0.42887896093046074
	.quad	0x3feb609ebd52a2e7              # double 0.85554444291218779
	.quad	0x3fc093eed8d56f98              # double 0.12951455676636381
	.quad	0x3fe20cc08ce12599              # double 0.56405665889285495
	.quad	0x3fe4279a1fc9b8b6              # double 0.62983423431958019
	.quad	0x3fcaee523e5e6c7c              # double 0.21039798779824881
	.quad	0x3fd3d1004dfaa1de              # double 0.30963142027988322
	.quad	0x3fe65d9fa7e795d7              # double 0.69892866891739913
	.quad	0x3fd845595ddf95e2              # double 0.37923273246118872
	.quad	0x3fdebec8492b4994              # double 0.48039443154734696
	.quad	0x3fcb66f79ae9e7fc              # double 0.21407980980058017
	.quad	0x3fee34af5313de28              # double 0.94393125749679018
	.quad	0x3fec7f165073001e              # double 0.89051356995333086
	.quad	0x3f96c9d634fb6c00              # double 0.022254321082851192
	.quad	0x3fc0e7419bad4334              # double 0.13205738164335801
	.quad	0x3fa5223bba1ff920              # double 0.041276804418872937
	.quad	0x3fdb883911854978              # double 0.43018938742638779
	.quad	0x3fe545555153e1c4              # double 0.66471353420552548
	.quad	0x3fdd4840472ba756              # double 0.45753485632177637
	.quad	0x3fcb2beb737d07ec              # double 0.21227782382089744
	.quad	0x3fd00fb0033fcaa2              # double 0.25095749203971185
	.quad	0x3fe0c0f40fdcb32f              # double 0.52355387781208218
	.quad	0x3fee9c224fcb9665              # double 0.95655932984363956
	.quad	0x3fe961c5268d7521              # double 0.79318482904242071
	.quad	0x3fed5035067547dd              # double 0.91604090939858518
	.quad	0x3fe01b6efa31d1b6              # double 0.50334881654867192
	.quad	0x3fe7c703c72ebb21              # double 0.74304379370537188
	.quad	0x3fc44410e13ea354              # double 0.15832720754886032
	.quad	0x3fe43a78085d43ce              # double 0.63213731416373675
	.quad	0x3f9e8ed1f169ce80              # double 0.029841690406512189
	.quad	0x3feb2337215cc37c              # double 0.84804874912343519
	.quad	0x3feac1f94d217905              # double 0.83617844643211525
	.quad	0x3fca158aa4ef33b0              # double 0.20378239682613986
	.quad	0x3f9bc18f4cd02320              # double 0.027105559409423496
	.quad	0x3fee386607282f76              # double 0.94438458822103999
	.quad	0x3feac11423ed1858              # double 0.83606917397333813
	.quad	0x3fdc8e10216e5bfa              # double 0.44617083801989532
	.quad	0x3fbd82e2d992b5d0              # double 0.11527841388552607
	.quad	0x3fcf6611e42c5408              # double 0.24530242577807848
	.quad	0x3fd16f1663a1ca56              # double 0.27240524034201508
	.quad	0x3fee161d34518265              # double 0.94019947260319425
	.quad	0x3fc1490229cfcf9c              # double 0.13504054109182284
	.quad	0x3fe80dd35c00225d              # double 0.75168769806721125
	.quad	0x3fc3bfb95cece8e8              # double 0.15428845441221672
	.quad	0x3fe5433a567a5d7e              # double 0.66445652857048265
	.quad	0x3fe784b8ddd7a3ab              # double 0.73495143250066997
	.quad	0x3fc33ea3e5c6b7d0              # double 0.15034912795584754
	.quad	0x3fa6c4eadaaed930              # double 0.044471110529615721
	.quad	0x3fd03358e3c76eb6              # double 0.25313398593946645
	.quad	0x3fe5e15c516d6ce1              # double 0.68375984100148568
	.quad	0x3f806d8f5317fb40              # double 0.0080214688523462251
	.quad	0x3fd606189f5d5262              # double 0.34412208140319056
	.quad	0x3fb766c15e3cc280              # double 0.091411672122157838
	.quad	0x3fe7f9fd773ab5f8              # double 0.74926636969547555
	.quad	0x3fbd423d133c40e0              # double 0.11429197044003869
	.quad	0x3fd588667b96b1f2              # double 0.33645021504597061
	.quad	0x3fe8884ccfaf779c              # double 0.76663818896826141
	.quad	0x3fe37b5f6e69d1b4              # double 0.60881015362843138
	.quad	0x3fe3e6b281e7e05d              # double 0.6219112908575074
	.quad	0x3fd202567a7d22f6              # double 0.28139268838690101
	.quad	0x3fe126ca3c7c0802              # double 0.53598510564211232
	.quad	0x3fe3e108190f90e0              # double 0.62121968168915132
	.quad	0x3fe703faddf505fc              # double 0.71923583365440846
	.quad	0x3fe53dabf7340d95              # double 0.66377828866864041
	.quad	0x3fad4b34cf70bf40              # double 0.05721440345985096
	.quad	0x3fed9e06c9c20b19              # double 0.92554034620147541
	.quad	0x3fe1404c03df10b9              # double 0.53909874683497272
	.quad	0x3fc11180765a244c              # double 0.13334661272918635
	.quad	0x3feeab4b90fcd1cf              # double 0.95841005628477116
	.quad	0x3fec9498f667bbff              # double 0.89313934446352039
	.quad	0x3febda061e76dc02              # double 0.87036424589211969
	.quad	0x3fec9ae04227f394              # double 0.8939057628737026
	.quad	0x3fe698799b1b5f09              # double 0.70611267370529263
	.quad	0x3fd4aceecdb14ce8              # double 0.32305498206296912
	.quad	0x3fe9794740f7edf3              # double 0.79605448426394643
	.quad	0x3fe23b140d2082d3              # double 0.56971170963159989
	.quad	0x3fdd080539381576              # double 0.45361452663231405
	.quad	0x3fc1d84fa3984828              # double 0.13941379058866343
	.quad	0x3fcbb09c65730428              # double 0.21632723764017325
	.quad	0x3feb3d8a7d2bab08              # double 0.85126232573870286
	.quad	0x3fec36bc4ad4eebe              # double 0.88168158164577171
	.quad	0x3fe7378cdf706e83              # double 0.7255310405775649
	.quad	0x3fc73630bed318f8              # double 0.1813412601242772
	.quad	0x3fce13364e2e6c34              # double 0.23496130769203349
	.quad	0x3fe1b4da5e186445              # double 0.55332678201660512
	.quad	0x3fb763ca0e4c7c48              # double 0.091366413584624273
	.quad	0x3fe810fdfecd1618              # double 0.75207423940509255
	.quad	0x3fef469bd75dfa27              # double 0.97736923278700238
	.quad	0x3fe4447bd7ba62f2              # double 0.63335983404530638
	.quad	0x3fef21b50e16eeae              # double 0.97286465408202161
	.quad	0x3fa02a860d19f750              # double 0.031574429606719634
	.quad	0x3fdae16945e65bf8              # double 0.42000800920635539
	.quad	0x3fe53c652860e0bd              # double 0.66362245451366386
	.quad	0x3fe312315bf418da              # double 0.59597080192250051
	.quad	0x3fd0a33289898796              # double 0.25996077948922769
	.quad	0x3febdd4ee43ffcd0              # double 0.87076515750950456
	.quad	0x3fe59d67ee6b34b3              # double 0.67546459737936571
	.quad	0x3fc151e90a786014              # double 0.13531220446816461
	.quad	0x3fd7c2e865bb4f00              # double 0.37127122816785629
	.quad	0x3f3bd0ec7f52b800              # double 4.2444013463238672E-4
	.quad	0x3fd05dfc1a470dd0              # double 0.25573637548606332
	.quad	0x3fe50afa1735a25d              # double 0.65758995564562961
	.quad	0x3fe676876047cae4              # double 0.70196884922765124
	.quad	0x3f83d7315701fbc0              # double 0.0096877913167626727
	.quad	0x3fdf54b648ffe8c0              # double 0.48954541329261403
	.quad	0x3fe6603466588fb5              # double 0.69924373616640045
	.quad	0x3fb2318334c6d880              # double 0.07106800116057066
	.quad	0x3fde27c3a1459fc8              # double 0.47117701291290048
	.quad	0x3fcd2ca10be313c4              # double 0.22792447166844287
	.quad	0x3fde61811ca4f5b4              # double 0.47470119283010637
	.quad	0x3fe89c438e3f9d29              # double 0.76907518179806289
	.quad	0x3fe5362e01793067              # double 0.66286373412868904
	.quad	0x3fe7620f7f41d4ea              # double 0.73072028021729563
	.quad	0x3fdefc5d9bf68ffe              # double 0.48415317755484455
	.quad	0x3fb720128b6a3f30              # double 0.09033313659369635
	.quad	0x3fed84f59906887b              # double 0.92248039138600235
	.quad	0x3fefad58d84f6111              # double 0.98991052864133355
	.quad	0x3fe1c0e8bb90958e              # double 0.55479847558733453
	.quad	0x3fe7073be2543d66              # double 0.7196330471505632
	.quad	0x3fe2ec150daaae13              # double 0.59131863278656949
	.quad	0x3fbfa46b3ad12108              # double 0.12360258279762004
	.quad	0x3fea7356e7b14735              # double 0.82657952549400326
	.quad	0x3fc4bbc675c917c8              # double 0.16198044539686252
	.quad	0x3fe760dafca297e6              # double 0.73057317107008823
	.quad	0x3fd49e1b4bfb198c              # double 0.32215006275182456
	.quad	0x3fe8baa6c24e0384              # double 0.77278459501404528
	.quad	0x3fde21e161d1f33a              # double 0.47081789543863162
	.quad	0x3fd637b21f3725fa              # double 0.34714940117245841
	.quad	0x3fdaf0a741cf70f6              # double 0.4209383146933442
	.quad	0x3fb8d83277bf8270              # double 0.097048906550762259
	.quad	0x3fc8db10e57edf28              # double 0.19418536382522089
	.quad	0x3fc8189fc18df140              # double 0.18825146628285871
	.quad	0x3fd295c572e1141a              # double 0.29039131373093741
	.quad	0x3fdc087467403914              # double 0.43801603396504274
	.quad	0x3fc473f26dd02924              # double 0.15978842126816872
	.quad	0x3fee2738c44fbdc2              # double 0.94228781072700252
	.quad	0x3fd003a213378c3a              # double 0.25022174717577494
	.quad	0x3fe6e87c53b40913              # double 0.71587959621709485
	.quad	0x3fc14a4e9d24ab1c              # double 0.13508017228135649
	.quad	0x3feec1ee812b32e2              # double 0.96117329815168895
	.quad	0x3fd09ac8b202264a              # double 0.25944726356155867
	.quad	0x3fe447f51194c0b2              # double 0.63378385003854576
	.quad	0x3fe6fd568f97a36a              # double 0.71842506451967592
	.quad	0x3f9fa20011d78240              # double 0.030891419495562511
	.quad	0x3fce3e66959fe288              # double 0.23627931886564491
	.quad	0x3fe0d3a2751d9cc7              # double 0.52583430170207002
	.quad	0x3fd454e5bbda1a6e              # double 0.31768172593039068
	.quad	0x3fe069e56cbedc99              # double 0.51292678107610634
	.quad	0x3fdd8968e53ec4a6              # double 0.46151182543969538
	.quad	0x3fd7ee56185b440c              # double 0.3739218938690676
	.quad	0x3fe5b0fb0c65fdc4              # double 0.67785408422053495
	.quad	0x3fe0899b3ffb1aea              # double 0.51679766174569619
	.quad	0x3fea7358b6517b88              # double 0.82658038720170257
	.quad	0x3fe937d31c18ab9f              # double 0.78806453216144579
	.quad	0x3fb97c0f23f13398              # double 0.09954924228186568
	.quad	0x3fec5c314fc0adb5              # double 0.88625398232163966
	.quad	0x3fd82478a535f58a              # double 0.3772260297190192
	.quad	0x3fb75a54229c0450              # double 0.091222055863924511
	.quad	0x3fdfb6815e87a2d8              # double 0.4955142424719674
	.quad	0x3fddcc3b832cb290              # double 0.46559036073703286
	.quad	0x3fe3c458079bd86a              # double 0.61771775709236221
	.quad	0x3fd4047dba77a0f8              # double 0.31277411660859356
	.quad	0x3fef915d7fac7d44              # double 0.98649477897917181
	.quad	0x3fe521f1de34dd88              # double 0.66039365195949618
	.quad	0x3fdfaf1b3ad980da              # double 0.49506264445336756
	.quad	0x3fefe20e0628860b              # double 0.99634457781593377
	.quad	0x3fdaf9fa78f1790a              # double 0.42150747118820731
	.quad	0x3feec442300ebf3e              # double 0.96145734201670741
	.quad	0x3fd088e5577d2b74              # double 0.25835546058504311
	.quad	0x3fe83fcbc56c0621              # double 0.75778759535768725
	.quad	0x3fe9cc155208e5a0              # double 0.80616251013195849
	.quad	0x3fd521d0f3ad5362              # double 0.33018897816264403
	.quad	0x3fe3da257d9b9ab8              # double 0.62037920506266797
	.quad	0x3fb4192249b4df10              # double 0.078508513445623373
	.quad	0x3fe5b917565b1ccf              # double 0.67884413591755244
	.quad	0x3fe4541ffab05939              # double 0.63526915514629601
	.quad	0x3fed6304a1b70d86              # double 0.91833716950388644
	.quad	0x3fc9ab66413e0e54              # double 0.20054319558777201
	.quad	0x3fd05d730a6b57de              # double 0.25570369737158483
	.quad	0x3fe927a8244e2bed              # double 0.78609091845407664
	.quad	0x3fe7849b25f59ee3              # double 0.73493726171451745
	.quad	0x3fe0fdb0cf3306e4              # double 0.53096809834115932
	.quad	0x3fef08a64a8ba38c              # double 0.96980585632000915
	.quad	0x3fe7e319b889e03b              # double 0.74647222559634174
	.quad	0x3fef32a4cc2b1bfc              # double 0.97493209721221729
	.quad	0x3fed43656ccffe3a              # double 0.91447707416950341
	.quad	0x3fc1176d619987b0              # double 0.1335274435578504
	.quad	0x3fb9f602dd9c24a8              # double 0.1014100829162482
	.quad	0x3fd6a8490d47864e              # double 0.35402132317367296
	.quad	0x3fc30ff65a6109e4              # double 0.1489246312431326
	.quad	0x3fac381cb3046fc0              # double 0.05511560139913696
	.quad	0x3fe2bee41fde2ab3              # double 0.58580213760554611
	.quad	0x3fe91bce5f0e4077              # double 0.78464430394707463
	.quad	0x3fe39ce9b8b15b40              # double 0.61290441582500677
	.quad	0x3fc8d515f362c9a0              # double 0.19400286087109198
	.quad	0x3fa21fdc8d0e6c50              # double 0.035399334162513285
	.quad	0x3fe817718de31d63              # double 0.75286176407182059
	.quad	0x3fed1333ce4b6e70              # double 0.90859403888630474
	.quad	0x3fdca423bca8bb16              # double 0.44751828597775167
	.quad	0x3fd40aadf982b0a2              # double 0.313151830351453
	.quad	0x3feae53934992a00              # double 0.84048137925248056
	.quad	0x3fd58b671d19bcea              # double 0.33663347093438623
	.quad	0x3fe9330180b68d91              # double 0.78747630252148515
	.quad	0x3fe1c08396dcd7dc              # double 0.55475024667134276
	.quad	0x3fc7fa07c5216ca8              # double 0.18731782079234915
	.quad	0x3fc4bd2c83d1d6c4              # double 0.16202312885768866
	.quad	0x3fe87a37e083934c              # double 0.76491922235855147
	.quad	0x3fdd7346970dd1e0              # double 0.4601608729492721
	.quad	0x3fce89f8ddf6b048              # double 0.23858557546680204
	.quad	0x3fedb2f00717e7b0              # double 0.92809296975541677
	.quad	0x3f6aafacedb09e00              # double 0.0032575967320729315
	.quad	0x3fdc4145b367cb1c              # double 0.44148390312254704
	.quad	0x3fe79788310d4d57              # double 0.73724755840741352
	.quad	0x3feb2abba5aa714b              # double 0.84896643025016638
	.quad	0x3fe7cb8647c48f17              # double 0.74359430329465936
	.quad	0x3fd13afb172fcf84              # double 0.26922490372020769
	.quad	0x3fc521070f711cfc              # double 0.16507042173382291
	.quad	0x3fe1daa7502a32b6              # double 0.55794110924906337
	.quad	0x3fda7fb86fef045c              # double 0.41404543810864936
	.quad	0x3fd248f6a28d2e20              # double 0.28570333360832656
	.quad	0x3fefef18445f9c56              # double 0.99793637613482633
	.quad	0x3fea07f1adffe730              # double 0.81346973404217771
	.quad	0x3fcbb36035a8cb00              # double 0.21641161556325272
	.quad	0x3feda5301cb396ac              # double 0.92641454320683669
	.quad	0x3fe1f6176d59052f              # double 0.56129046780566749
	.quad	0x3feb8936142b9726              # double 0.86049941958910803
	.quad	0x3fe49fe6af3557f4              # double 0.64451917858491337
	.quad	0x3fea0a40185b841a              # double 0.81375126607247528
	.quad	0x3f8790ed42d88bc0              # double 0.0115068946861977
	.quad	0x3fe8b09caa824fb8              # double 0.77155907919449529
	.quad	0x3fd9a4882fc4b398              # double 0.40066723503951485
	.quad	0x3feabb3573b9aac1              # double 0.8353526363619822
	.quad	0x3fd59f86f7b0a96a              # double 0.33786176861271733
	.quad	0x3fb46a9360a2f770              # double 0.079751216023365989
	.quad	0x3fe4ba80e181f9a3              # double 0.64776653332210221
	.quad	0x3fe5b184d0d01017              # double 0.67791977676143034
	.quad	0x3fed18d60f0ed73e              # double 0.90928175869951366
	.quad	0x3fd01f80d94881a0              # double 0.25192280978265025
	.quad	0x3fe3ca4a64cee924              # double 0.61844367684469548
	.quad	0x3fc016ffc0fb231c              # double 0.12570187495136842
	.quad	0x3fee4b495209cd10              # double 0.94669023535826291
	.quad	0x3fde394419b10018              # double 0.47224524029661685
	.quad	0x3fea96119123f616              # double 0.83081892345188879
	.quad	0x3fdfc8685e23d6a0              # double 0.49660691445692784
	.quad	0x3fed7ba766d13a87              # double 0.92134447175506373
	.quad	0x3fbfb521c7d14928              # double 0.12385760429723247
	.quad	0x3fe6b69204f13ed6              # double 0.70978642430596994
	.quad	0x3fed286b85879fac              # double 0.911184082794525
	.quad	0x3fec3184fd7a3323              # double 0.88104485995572579
	.quad	0x3f82052244ff5fc0              # double 0.0087988545709974941
	.quad	0x3fe3b435745478ae              # double 0.61574814530083244
	.quad	0x3fed3ef99d07d4c4              # double 0.91393738431965987
	.quad	0x3feaf2b68d884e44              # double 0.84212806361251368
	.quad	0x3fecb38e1a3b50cc              # double 0.8969183456743166
	.quad	0x3fdc4ae392bbeb26              # double 0.44207085923669565
	.quad	0x3fbf7b225e2720b0              # double 0.12297262953427679
	.quad	0x3fc46aeade9fae44              # double 0.15951286192226821
	.quad	0x3fedd2f1df83a683              # double 0.93200009970787823
	.quad	0x3fd58b65dd02af7c              # double 0.33663317282729799
	.quad	0x3fe117469203071c              # double 0.53409126775679594
	.quad	0x3fefb9dc64308f1e              # double 0.99143809860513321
	.quad	0x3fe3ae64f03825b9              # double 0.6150383655341819
	.quad	0x3fc88584b74c3174              # double 0.19157465887145586
	.quad	0x3fe2f64835a5d113              # double 0.59256372907705879
	.quad	0x3fe75551526fde34              # double 0.72916475392316338
	.quad	0x3fee80f4f81b0354              # double 0.95324181039914401
	.quad	0x3fd6917f9eaa137e              # double 0.35263052458349609
	.quad	0x3fbb498940b5bed0              # double 0.10659082250435437
	.quad	0x3fda542ed4742fbc              # double 0.41138811824270838
	.quad	0x3fe136833963349a              # double 0.53790436943531295
	.quad	0x3fbc7cd7892cbfa0              # double 0.11127993678087345
	.quad	0x3fcc62f98b50bf10              # double 0.22177047064314381
	.quad	0x3f91b179c88c1020              # double 0.0172785786298989
	.quad	0x3fea6543d680b970              # double 0.82486144919475457
	.quad	0x3fee918b3a702835              # double 0.9552665845269589
	.quad	0x3fc6e95c07d069f0              # double 0.17899656659649521
	.quad	0x3f8fc817688be6c0              # double 0.015518362882619541
	.quad	0x3fe6df9ccdf70f0e              # double 0.71479644992402469
	.quad	0x3fde257d749addd0              # double 0.47103821170045723
	.quad	0x3f96fd010fab5a40              # double 0.022449509221440289
	.quad	0x3fe6fc8778212206              # double 0.71832631552484894
	.quad	0x3fe9d53a4e45086f              # double 0.80727877890627819
	.quad	0x3fcbc41e0dc6f444              # double 0.21692252800667877
	.quad	0x3fef4331349a6c92              # double 0.97695217393938294
	.quad	0x3fd43c69fc2f1832              # double 0.31618737819042331
	.quad	0x3fe45fa5a33d4eea              # double 0.63667566187583913
	.quad	0x3fc90693eb3f1bd4              # double 0.19551323877951055
	.quad	0x3fe2fdb4fabccfa8              # double 0.59347008678604585
	.quad	0x3fa10491d3edc440              # double 0.033237988586627853
	.quad	0x3f7978bde58c4f80              # double 0.0062186639631994778
	.quad	0x3fea4befd146cc84              # double 0.82176962732627645
	.quad	0x3fdffbf3121ba956              # double 0.49975277679790986
	.quad	0x3fce260406e16930              # double 0.23553514800989594
	.quad	0x3fef3acc7a5a9439              # double 0.97592758080703057
	.quad	0x3fd07bd0dda63506              # double 0.25755712171015011
	.quad	0x3fe08ad222f22c32              # double 0.51694590402019558
	.quad	0x3fc4121fa54c3418              # double 0.15680308886695182
	.quad	0x3feea55bc5b10221              # double 0.95768536197289589
	.quad	0x3fe025d77e8bd0b7              # double 0.50461935726209262
	.quad	0x3fec79c8bc1cec66              # double 0.88986622563187434
	.quad	0x3fc921d0436ab190              # double 0.19634440700373235
	.quad	0x3fe4e6882009ed06              # double 0.65314108140538063
	.quad	0x3feade2c7aeff2a6              # double 0.8396208191985195
	.quad	0x3fdec9d6cd7aa57e              # double 0.48106927934949073
	.quad	0x3fe3bb184dcd7159              # double 0.61658873744776621
	.quad	0x3fe5080a6861d241              # double 0.65723152529842122
	.quad	0x3fb910b2b6e32798              # double 0.097911042833543127
	.quad	0x3fc4165d329f7348              # double 0.15693249675578103
	.quad	0x3fdb48415ff829ac              # double 0.42628511783609713
	.quad	0x3fb03c7395412fa8              # double 0.063422416628951539
	.quad	0x3fca520518566088              # double 0.20562804878568763
	.quad	0x3fe99525286052a5              # double 0.79945619474400031
	.quad	0x3fe6c3f2c5dd6d98              # double 0.71141947408198103
	.quad	0x3fca6bc7553e1ab8              # double 0.20641414320217222
	.quad	0x3fde1dbbe7ba0346              # double 0.4705648196177673
	.quad	0x3fe8707b2eb30ad6              # double 0.76373061295484024
	.quad	0x3fbcc2fc6208fb50              # double 0.11235024827418028
	.quad	0x3fd7876cfa3b190e              # double 0.36764072834593342
	.quad	0x3fe335bb66eb0a06              # double 0.60030908681102413
	.quad	0x3fe18bca94384568              # double 0.54831437062436539
	.quad	0x3fd1c1d4ef12f724              # double 0.27745555255011056
	.quad	0x3fd4da74201fd6d2              # double 0.32583335053582829
	.quad	0x3fc71f7d75f7d178              # double 0.18064850101621821
	.quad	0x3fecdd701b4e3782              # double 0.9020309956847401
	.quad	0x3fe93ff95dd890d6              # double 0.78905933694161479
	.quad	0x3fc414e972f7380c              # double 0.1568881808620407
	.quad	0x3fe1d299a3d80c94              # double 0.55695802689332874
	.quad	0x3fe12f9011bc3c20              # double 0.53705600227283767
	.quad	0x3fef7ebcddb36149              # double 0.98422091771048159
	.quad	0x3fefe8423b6b0231              # double 0.99710189442709495
	.quad	0x3fe1e5a4840b0d64              # double 0.55928254880602113
	.quad	0x3fe015c5cf836d6f              # double 0.50265780000647264
	.quad	0x3fcfb3aa00c6aa3c              # double 0.24767041242496812
	.quad	0x3fe1388f962a17b7              # double 0.53815440491665967
	.quad	0x3fee08cee6c21052              # double 0.9385752207749738
	.quad	0x3fee4feee5ba87a8              # double 0.94725746983407521
	.quad	0x3fd4411ca6bd62e8              # double 0.31647411616499577
	.quad	0x3fd09a9aaeba7862              # double 0.25943629325218442
	.quad	0x3fcd8800f7d36f40              # double 0.23071300602793521
	.quad	0x3fe5bcb3a3099c85              # double 0.67928487628240986
	.quad	0x3fcf2b39dd0c06bc              # double 0.24350665372189961
	.quad	0x3fdd74d54c120472              # double 0.46025593212841109
	.quad	0x3fe331031ec70a38              # double 0.59973293315153509
	.quad	0x3fe546360a225d5d              # double 0.66482068995803056
	.quad	0x3fe570e06a5282ce              # double 0.67002888456416954
	.quad	0x3f98852de4cd2f80              # double 0.023945538606582328
	.quad	0x3fe536f40c5680b6              # double 0.66295816812273389
	.quad	0x3fe70bf22a32280e              # double 0.72020824662581773
	.quad	0x3fd0f442bc7c8880              # double 0.26490848929291388
	.quad	0x3fd8046ce2c32b3e              # double 0.37527010102046521
	.quad	0x3fe49a4a6654377d              # double 0.64383430467726976
	.quad	0x3fd1ecca481ab2d2              # double 0.28007752458033253
	.quad	0x3fd8ea40888289c6              # double 0.38929761248632777
	.quad	0x3fd6a6d78c8550d4              # double 0.3539332268021671
	.quad	0x3fe5a2cbbfc91c89              # double 0.67612254579661724
	.quad	0x3fe51da7426f7d2a              # double 0.65986979461368844
	.quad	0x3fd7ce0609cdfe40              # double 0.37194968183027655
	.quad	0x3fdf9007704bf20c              # double 0.49316583601447017
	.quad	0x3fd4ea496cf33516              # double 0.32679973258639572
	.quad	0x3fe4fbe20fabe958              # double 0.65574744282575192
	.quad	0x3fd788d643c73cec              # double 0.36772686594936377
	.quad	0x3fe7ccd6fd179a2b              # double 0.74375485832280697
	.quad	0x3fe441f200037ddf              # double 0.6330499649301905
	.quad	0x3fef72c9e01e4b3d              # double 0.98276227734672938
	.quad	0x3fd0eb30e013b686              # double 0.264354914498519
	.quad	0x3fd1637eb64fddda              # double 0.2716976910009784
	.quad	0x3febae5ac2edc1b6              # double 0.86503351280230478
	.quad	0x3fe6e8e396101457              # double 0.71592883404867791
	.quad	0x3febd91f377a1b32              # double 0.87025414309832727
	.quad	0x3fd25d50a2827218              # double 0.28694549436639383
	.quad	0x3febf1cba88be186              # double 0.87326605719776818
	.quad	0x3fe6073f46e40b64              # double 0.68838466497286932
	.quad	0x3fefb36bdbfc897b              # double 0.99065201727016416
	.quad	0x3fe3fbc62c7b07be              # double 0.62448414504637362
	.quad	0x3fe149937a0c887f              # double 0.54023145520865501
	.quad	0x3fe81b61efd305d3              # double 0.75334259834942896
	.quad	0x3fedb84f197a20b7              # double 0.92874865509022342
	.quad	0x3feea23957f47ef9              # double 0.957302734172088
	.quad	0x3fd099748f6440cc              # double 0.25936616900527265
	.quad	0x3fe2b756c24c0231              # double 0.58488023708929948
	.quad	0x3fe292cdac62788f              # double 0.58042033833386764
	.quad	0x3fe7901e9f169c5a              # double 0.73634272643983967
	.quad	0x3feeff45c9ee5c01              # double 0.96866120757738383
	.quad	0x3fcbaf118081eab4              # double 0.21628016257075944
	.quad	0x3feb18ea234a2229              # double 0.84679133312699151
	.quad	0x3fdd04c756bf2418              # double 0.4534166667113495
	.quad	0x3fd272ceec559b78              # double 0.28825734214336007
	.quad	0x3feaaf61ffc2b890              # double 0.83390903428314012
	.quad	0x3fd66976eb9c22c0              # double 0.35018704422740754
	.quad	0x3fcc6dfa91a9b0ec              # double 0.22210628616756567
	.quad	0x3fcf27c63dce15f8              # double 0.24340131776641249
	.quad	0x3fe67729aa969bd9              # double 0.7020462352564848
	.quad	0x3fc7c25a59e0a634              # double 0.18561868084479871
	.quad	0x3fee0a1cbd24ab67              # double 0.93873440687216891
	.quad	0x3fb757b97760f770              # double 0.091182319302758108
	.quad	0x3fd5b8818b184700              # double 0.33938635428886244
	.quad	0x3fd340f82397a744              # double 0.30084041095561909
	.quad	0x3fdc3ccbe2e9e1fa              # double 0.44121071967631986
	.quad	0x3febe85b9f125934              # double 0.87211400097547775
	.quad	0x3fef087c8a15a836              # double 0.96978594751022373
	.quad	0x3fec92b4645f16c3              # double 0.89290828326985439
	.quad	0x3fcb1e1cd3f9ca18              # double 0.21185646391275337
	.quad	0x3feb459d830c2864              # double 0.8522479590913119
	.quad	0x3fe50cd690d0dabb              # double 0.65781715664237284
	.quad	0x3fcc7cad8dd37fa8              # double 0.22255486893754761
	.quad	0x3fef79d1038f3a18              # double 0.98362017340861296
	.quad	0x3f881910bcc98240              # double 0.011766558419538886
	.quad	0x3fd2980aa9ac2080              # double 0.29052988595550033
	.quad	0x3fd9aa80537014de              # double 0.40103157184814886
	.quad	0x3fee1e447e08077b              # double 0.94119476905346688
	.quad	0x3fe9fd449df7ec22              # double 0.81216650822841907
	.quad	0x3fb7986d329e5268              # double 0.092169594629305629
	.quad	0x3fd81a4f33699cbe              # double 0.37660579701191554
	.quad	0x3fe88fb47556f7bb              # double 0.7675421039382323
	.quad	0x3fe9972513e71021              # double 0.79970029723381597
	.quad	0x3fd2d7dc2f07a188              # double 0.2944250544810747
	.quad	0x3fbb6d5b8cef62e8              # double 0.10713741484449779
	.quad	0x3fc6c52b464cd728              # double 0.17789212162613777
	.quad	0x3fa398be5f1a44b0              # double 0.03827471648140468
	.quad	0x3fd345b168b070ba              # double 0.30112872336918495
	.quad	0x3fdbebcbd74fda9a              # double 0.436266861215168
	.quad	0x3fe28682c90962e0              # double 0.57891978516553522
	.quad	0x3fe84098da9494e8              # double 0.7578853863857633
	.quad	0x3fecbdf02592da32              # double 0.89818579996683057
	.quad	0x3fe5eef1835fb1ba              # double 0.68541789683290877
	.quad	0x3fbfdf99caf9de88              # double 0.12450562673063292
	.quad	0x3fdf2272fa3e17ee              # double 0.48647760808705598
	.quad	0x3fc2614cd42da2c8              # double 0.14359436378733492
	.quad	0x3fea01f20b5c75e9              # double 0.81273748606662111
	.quad	0x3fe336c720fba921              # double 0.60043674890519949
	.quad	0x3fd7db92c7b734b6              # double 0.37277669433099037
	.quad	0x3feff01f9359573a              # double 0.99806193141078059
	.quad	0x3fd69ce8bb14847c              # double 0.35332697171731531
	.quad	0x3fe0d2686e449631              # double 0.52568456207945335
	.quad	0x3fd80e47399806e6              # double 0.37587147354507378
	.quad	0x3fe7b629a9e5e668              # double 0.74098666365825938
	.quad	0x3fdc80e7902cbdbe              # double 0.44536770896499067
	.quad	0x3fe993642f1c8da6              # double 0.79924210740539503
	.quad	0x3fe663d6a122f2d5              # double 0.69968730422950876
	.quad	0x3fed3a467047b744              # double 0.91336366586413264
	.quad	0x3fd5e1b569445394              # double 0.34190116195650799
	.quad	0x3fd3d43dcd22f3fa              # double 0.30982918770661139
	.quad	0x3fec01fe718ad46a              # double 0.87524339843970478
	.quad	0x3fdeaf7f4540c958              # double 0.47946149600024546
	.quad	0x3fe37e3a8988c990              # double 0.60915877210782021
	.quad	0x3fdffb0b1c202b26              # double 0.4996974730171807
	.quad	0x3fe6b08d5095de5f              # double 0.70905175914135643
	.quad	0x3fde4d2bfafff924              # double 0.47346019279202012
	.quad	0x3fafffda8ea88180              # double 0.06249888411935256
	.quad	0x3fdd32aef38853a4              # double 0.45621846945260303
	.quad	0x3fe84e8de56b3ea1              # double 0.7595891457403533
	.quad	0x3fc523b140abda4c              # double 0.16515174539354616
	.quad	0x3fd2380c55e0f2ee              # double 0.28467090975372755
	.quad	0x3f8cbad846256500              # double 0.014028253212631459
	.quad	0x3fe20f8f5593c270              # double 0.56439940180105275
	.quad	0x3fecd05a8706490e              # double 0.90043379184706551
	.quad	0x3fc1a8281dfb0c18              # double 0.13794423545741163
	.quad	0x3fe63f1dbbf0d43b              # double 0.69520460803199258
	.quad	0x3fe9d8ac0d9db278              # double 0.80769922885299561
	.quad	0x3fec16d4c28056b5              # double 0.87778699863948495
	.quad	0x3f97933c197638c0              # double 0.023022593549790527
	.quad	0x3fd2b13cdb4d3de6              # double 0.29206773201164393
	.quad	0x3fec1c58942bace6              # double 0.87846020640918421
	.quad	0x3fd57fd3f4314c38              # double 0.33592699858599273
	.quad	0x3fe86887b1faed5e              # double 0.76276001703028462
	.quad	0x3fe58fbcd1a66ea0              # double 0.67379609057703149
	.quad	0x3fef95f4c3a6ce6c              # double 0.98705518925858148
	.quad	0x3fdba9496ab2cd9a              # double 0.43220744533319932
	.quad	0x3fe80995c367a1da              # double 0.7511700455189001
	.quad	0x3fe84b1b54bfec74              # double 0.75916830589939232
	.quad	0x3fe86a2ea1713f27              # double 0.76296168834412448
	.quad	0x3fef5e3a863e8b64              # double 0.98025251597969687
	.quad	0x3fb780f456602118              # double 0.091811438644189614
	.quad	0x3fe1d5482650d780              # double 0.55728538020660778
	.quad	0x3fd4c028885d5588              # double 0.32422841374258171
	.quad	0x3fce70309928e000              # double 0.23779876211642659
	.quad	0x3fc2dff4610f3df8              # double 0.14745955218539541
	.quad	0x3fdf587a18e7ba6c              # double 0.4897752040114145
	.quad	0x3febf0ad06c12bd5              # double 0.87312938040974564
	.quad	0x3fc8650b381ea528              # double 0.19058361282558534
	.quad	0x3fe9678ee445ac4e              # double 0.79389137825399714
	.quad	0x3fe843a365335b56              # double 0.75825662389511694
	.quad	0x3feb37a88450204b              # double 0.85054422228223225
	.quad	0x3fc7c06aaf16e30c              # double 0.18555959271704869
	.quad	0x3fe072b1c192fff2              # double 0.51400077636207997
	.quad	0x3fef82588304adb6              # double 0.98466134633547742
	.quad	0x3fe5bb1f07d6c871              # double 0.67909194499067216
	.quad	0x3fe832a8efe5d033              # double 0.75618407111188046
	.quad	0x3fd91f63c1629ca8              # double 0.3925408733870861
	.quad	0x3fceffd57010ab54              # double 0.24218242618493468
	.quad	0x3fd83b97f71ef970              # double 0.37863730557355435
	.quad	0x3febe2b596e615bd              # double 0.87142447922149524
	.quad	0x3fe02429270f4b91              # double 0.50441415432793424
	.quad	0x3febd195d5cbcb19              # double 0.86933414227528083
	.quad	0x3fce5a857ff79908              # double 0.23713749645612148
	.quad	0x3fe9b865eec6a18e              # double 0.8037595428077553
	.quad	0x3fe88c43a6e2eb47              # double 0.76712210268974779
	.quad	0x3fd3c551d2a94856              # double 0.30891843387974427
	.quad	0x3fe5c07ac1fd60d7              # double 0.67974603546738421
	.quad	0x3fe883bc3c1de102              # double 0.76608096829934902
	.quad	0x3fc4c721d070e714              # double 0.16232702901634666
	.quad	0x3fe25cc7f26469b1              # double 0.57382581083520823
	.quad	0x3fb3b3a34dca5e58              # double 0.076959806911298556
	.quad	0x3fe70f3a790a1618              # double 0.72060893669612636
	.quad	0x3fb03617458f9870              # double 0.063325361712118555
	.quad	0x3fb53bfbee2f6010              # double 0.082946534777306846
	.quad	0x3fc8aca7554b2ef0              # double 0.19276897110682212
	.quad	0x3fc5c5e904e7ab1c              # double 0.17010224093913784
	.quad	0x3fe4005b557c04cd              # double 0.62504355140858936
	.quad	0x3fe4b5c08202b5f9              # double 0.64718652146046829
	.quad	0x3fe3d9c7265693bf              # double 0.62033421981742964
	.quad	0x3fbcdc3ab4960018              # double 0.11273543270908737
	.quad	0x3fcabe3c35285828              # double 0.20893051715455724
	.quad	0x3fda4e6925e6633a              # double 0.41103581143538614
	.quad	0x3fceeb3689b29600              # double 0.24155313228145303
	.quad	0x3fe5e90a8d4b1fd5              # double 0.68469741436364961
	.quad	0x3f5a658546c0e200              # double 0.0016111184622912278
	.quad	0x3fed2cf2b33b6022              # double 0.91173682218778063
	.quad	0x3fedcf7af83fdaa9              # double 0.93157719122139782
	.quad	0x3fe40aaf0d6c13dd              # double 0.62630417462844046
	.quad	0x3fecdd8fa7755698              # double 0.90204603869161115
	.quad	0x3fd17252e9c2c84a              # double 0.27260277584276038
	.quad	0x3fdf9e4bbae85d62              # double 0.49403661015226963
	.quad	0x3fe27032409453c4              # double 0.5761958371464222
	.quad	0x3fef9a5d47920c35              # double 0.98759330729115524
	.quad	0x3fcc5d5415c6d754              # double 0.2215981584865242
	.quad	0x3fef4c05ca0ad842              # double 0.97803010426901715
	.quad	0x3fecb310fc65a0fc              # double 0.89685868545805602
	.quad	0x3febcebe31e9caf7              # double 0.86898717640573764
	.quad	0x3fa7827b664114a0              # double 0.045917373878674228
	.quad	0x3fbb926310133530              # double 0.10770243780571742
	.quad	0x3fd4d9e1f81373fa              # double 0.32579850412531608
	.quad	0x3fd4621477e3adcc              # double 0.3184863253397594
	.quad	0x3fe5268bb9130c3a              # double 0.66095529696793354
	.quad	0x3fe3fea3aa6fda93              # double 0.62483390129530603
	.quad	0x3fae34a63b105500              # double 0.058995432577072293
	.quad	0x3fe82a72114577cf              # double 0.75518134473144893
	.quad	0x3fefa71e788a1cd1              # double 0.98915027182456516
	.quad	0x3fe7c730c9c11aa1              # double 0.7430652561677854
	.quad	0x3fe59dc57d30de33              # double 0.67550920916887092
	.quad	0x3fe481c41051f7c8              # double 0.64084056079422513
	.quad	0x3fcc50949889cfa0              # double 0.221209120256046
	.quad	0x3fbfd10397c3bc48              # double 0.12428305106344439
	.quad	0x3fec228c744452e8              # double 0.8792173643911072
	.quad	0x3fdbc1b6028e528e              # double 0.4336981797180578
	.quad	0x3fe081a7d86b6af1              # double 0.51582710523083908
	.quad	0x3fd0c1a3ae8726c8              # double 0.26181880992644979
	.quad	0x3fdbf59d8d89d468              # double 0.43686617681607354
	.quad	0x3fe386712d6243c7              # double 0.61016138900787886
	.quad	0x3fd44811b4da6216              # double 0.31689875279838142
	.quad	0x3fdcaff54472d3fe              # double 0.44823962864330713
	.quad	0x3fca7cdabc4b6b68              # double 0.20693525499413146
	.quad	0x3fe2cc228122aa33              # double 0.58741879674682307
	.quad	0x3fecc006c21a2742              # double 0.89844072256639884
	.quad	0x3fdb3a7150a08730              # double 0.42544205545174218
	.quad	0x3fe5d9ed64eb64d7              # double 0.68285245619622514
	.quad	0x3fe91bf270fd9ddd              # double 0.78466150349134589
	.quad	0x3fdf28086532c7a2              # double 0.48681840784694874
	.quad	0x3fe12a2fe82b26f9              # double 0.53639979691908402
	.quad	0x3fdb370bc867d6d8              # double 0.42523474284039997
	.quad	0x3fcb0dc66bb49f88              # double 0.21135788210926543
	.quad	0x3fe3d6abda6ce4e8              # double 0.6199549928780046
	.quad	0x3fb859dd7c06d610              # double 0.095121233730275145
	.quad	0x3fecd537037acfb6              # double 0.90102720908770695
	.quad	0x3fe32ba6ae1d93c2              # double 0.59907850272121999
	.quad	0x3fee0c28c2c6571a              # double 0.93898428003260226
	.quad	0x3fe0edeecf827a54              # double 0.5290445378230495
	.quad	0x3fe66808a123085e              # double 0.70019942733803098
	.quad	0x3fe2ffd8c9c985ee              # double 0.59373130237162086
	.quad	0x3f91ad4feb015860              # double 0.01726269599779362
	.quad	0x3fe7f36b6f720c06              # double 0.74846431509684019
	.quad	0x3fdbefd057ecc094              # double 0.43651207529456681
	.quad	0x3fd8385c751db03c              # double 0.3784400123320244
	.quad	0x3f8bb2370667f140              # double 0.013523511775013319
	.quad	0x3fe5d126f0ac28f0              # double 0.68178126341197576
	.quad	0x3fdda9194b90ddf0              # double 0.46344597224694351
	.quad	0x3fbe5c45866c75c0              # double 0.11859545261218951
	.quad	0x3fe5f1e771ece3ec              # double 0.68577930689855071
	.quad	0x3fdf49e3d216d2dc              # double 0.48888488308447875
	.quad	0x3fdc66bc09b3950e              # double 0.44377041766559067
	.quad	0x3fd000aab94e1dac              # double 0.25004070373730758
	.quad	0x3fe688c74568ef05              # double 0.70419658238049065
	.quad	0x3feb4dba9cd13154              # double 0.85323839786864619
	.quad	0x3fc54863410f3c24              # double 0.16627159764036137
	.quad	0x3fe5a9a07643cb9f              # double 0.67695639704321653
	.quad	0x3feff4e1e7abeb94              # double 0.99864287613250946
	.quad	0x3fdff78788a38db2              # double 0.49948299735680302
	.quad	0x3fe40bf69306b09d              # double 0.6264603492359303
	.quad	0x3fd038e669381d3a              # double 0.25347290301620584
	.quad	0x3feed63d74e2cd9b              # double 0.96365235165869778
	.quad	0x3fc6a9f9734e9e70              # double 0.17706220751027812
	.quad	0x3fe3cc7639ba824a              # double 0.61870871806247263
	.quad	0x3fe5f6847bd61a1e              # double 0.68634247004303339
	.quad	0x3fe4dca11a757f5c              # double 0.6519322888161514
	.quad	0x3feca2c3fcb7e90b              # double 0.89486884459555094
	.quad	0x3fee61a1124a77fe              # double 0.94941762516441464
	.quad	0x3fdada7fbf122fee              # double 0.41958612117082239
	.quad	0x3fc4944bfbbcc604              # double 0.16077565948357642
	.quad	0x3fc0485871c12e1c              # double 0.12720780901359852
	.quad	0x3fdf98fcdcdfa0aa              # double 0.49371263093645246
	.quad	0x3fa7897fdca131b0              # double 0.045970912630397875
	.quad	0x3fdef51c1f823fd0              # double 0.48371031834630873
	.quad	0x3fba80a23e382330              # double 0.10352529543901023
	.quad	0x3fe71fc05422449e              # double 0.72262588913340031
	.quad	0x3fe809c851a62c48              # double 0.75119415232746523
	.quad	0x3fefedcd40196a94              # double 0.99777853507414926
	.quad	0x3fee0e7fd11c7fc2              # double 0.93926993219428589
	.quad	0x3fe2c3e5dfc9960d              # double 0.58641332348332897
	.quad	0x3fe8d68316f5a7bf              # double 0.77618555530829514
	.quad	0x3fe7160b053787ba              # double 0.72144080180100123
	.quad	0x3fea1a1727ba8b84              # double 0.81568486938009288
	.quad	0x3fbd2eacbae07de8              # double 0.11399344980645021
	.quad	0x3fc9f054b686b3a0              # double 0.20264681732569745
	.quad	0x3fd781dba077b6c8              # double 0.36730089827220214
	.quad	0x3fe308f30bf118be              # double 0.594842456172749
	.quad	0x3fd7a04fb07de238              # double 0.36915962443848427
	.quad	0x3fcd049ba0f42938              # double 0.22670312270231263
	.quad	0x3fe5a12757d4d270              # double 0.67592208056028191
	.quad	0x3fc63fff0bcca640              # double 0.17382801128523973
	.quad	0x3fd7b81d3026b70c              # double 0.37061242773312197
	.quad	0x3fd7b86a584f4524              # double 0.3706308233641542
	.quad	0x3fd2632cc70efbe2              # double 0.28730315627393399
	.quad	0x3fe8fad4ad33a628              # double 0.78061899021594616
	.quad	0x3fc46ab993b1aa40              # double 0.15950698577519695
	.quad	0x3fd89f308f0b5d04              # double 0.38471616715601464
	.quad	0x3fe8b48c733936b9              # double 0.77203962807262549
	.quad	0x3fe9e59dc78ddc5f              # double 0.80927933669489593
	.quad	0x3fe2fcbb43a21e17              # double 0.59335101327536932
	.quad	0x3fefc24dcee3b1ae              # double 0.99246874244777472
	.quad	0x3fe5156ec0186bb1              # double 0.65886628645545475
	.quad	0x3fe96bc2d54287a6              # double 0.79440442707367676
	.quad	0x3fd48d07f37d5df8              # double 0.32110785272877207
	.quad	0x3fd1ab0ae1fa13e6              # double 0.27606460636189778
	.quad	0x3fd2d9e49808330e              # double 0.29454912993314586
	.quad	0x3fe5564040ea6093              # double 0.66677868536773344
	.quad	0x3fe9fdd8e20d73b4              # double 0.81223720694435153
	.quad	0x3fed68f720c9626e              # double 0.91906315234798597
	.quad	0x3f950de07a495ba0              # double 0.020560748542574836
	.quad	0x3fee56ca12f567b6              # double 0.94809440329412698
	.quad	0x3fda611545d97938              # double 0.4121754819988328
	.quad	0x3fe4a152ac17feb1              # double 0.64469274150902411
	.quad	0x3fe97997478e3c87              # double 0.79609264350610054
	.quad	0x3fa3c29a01c20370              # double 0.038594067301352619
	.quad	0x3fbd8db6ff1bd478              # double 0.11544364670028695
	.quad	0x3fe88f3aacd9e150              # double 0.76748403320292802
	.quad	0x3fe871a53e38e42e              # double 0.76387273934154165
	.quad	0x3fd0a396dd17adb0              # double 0.25998469916404598
	.quad	0x3fec492ce6c008c0              # double 0.88393254345307781
	.quad	0x3fe118aa388ac5a5              # double 0.53426085513472243
	.quad	0x3fc4a0de640062a8              # double 0.16115932352911
	.quad	0x3fd74a7c2a2be654              # double 0.36392120474156298
	.quad	0x3fc48267216466ec              # double 0.16022957926252646
	.quad	0x3fe313433b8d59f6              # double 0.59610139495163028
	.quad	0x3fee7ac3b320efd5              # double 0.9524858950239784
	.quad	0x3fc3f5b500f60280              # double 0.15593588396952285
	.quad	0x3fcea31a7886b2b0              # double 0.23935252080027203
	.quad	0x3fe44895ebb19ff0              # double 0.63386055025057253
	.quad	0x3fe7d2855417a34b              # double 0.74444834160122164
	.quad	0x3faa40d575839470              # double 0.051275892825096814
	.quad	0x3fe88ff26ad690fa              # double 0.76757164828134639
	.quad	0x3fe3117ff49f1347              # double 0.59588620927443336
	.quad	0x3fb2ef9098193448              # double 0.073967969067966099
	.quad	0x3fa27079b6e30f60              # double 0.036014369559352444
	.quad	0x3fc8c95c726da8c4              # double 0.19364505374261942
	.quad	0x3f71cdeb32a63f80              # double 0.0043467700401292886
	.quad	0x3fb610b4c10b6030              # double 0.086192414407719963
	.quad	0x3fdfcb84cb213dba              # double 0.49679679715060454
	.quad	0x3feeae72efe12a6a              # double 0.95879504062152177
	.quad	0x3fe26fc6b922fd8d              # double 0.57614456328876573
	.quad	0x3fe7091713f7029f              # double 0.71985963725463253
	.quad	0x3fdc89ebd3f3786c              # double 0.44591804216714226
	.quad	0x3fe97b5b968aafcd              # double 0.79630832102474758
	.quad	0x3fd50bc34c8c558e              # double 0.32884294963272331
	.quad	0x3fee81a297ff1d0d              # double 0.9533246010477413
	.quad	0x3fe66919bdf127cf              # double 0.7003296575360255
	.quad	0x3fd69d9245d3e9a6              # double 0.35336739367599035
	.quad	0x3fc47269b51aef98              # double 0.15974160521534198
	.quad	0x3fd2281007763eca              # double 0.28369522789669743
	.quad	0x3fdc36262126ab36              # double 0.44080498921782707
	.quad	0x3fec1e4aac42db06              # double 0.87869771618611092
	.quad	0x3fddccaa2a4c9f12              # double 0.46561674242774231
	.quad	0x3fde78eb0070e042              # double 0.47613024752672939
	.quad	0x3fe6d9b8d0312adf              # double 0.71407738363754081
	.quad	0x3f6f8a685d81f700              # double 0.0038501776107854324
	.quad	0x3fb983494cf5adb0              # double 0.099659520424828285
	.quad	0x3f90208197b14dc0              # double 0.015749001391965001
	.quad	0x3fd2ed529ebec5ee              # double 0.29573503019773184
	.quad	0x3fdebcfb9b5e0278              # double 0.48028459713535865
	.quad	0x3fdef7ff1b538e20              # double 0.48388650578110237
	.quad	0x3fede702b85ea5ec              # double 0.93444953927717966
	.quad	0x3fd8a055d9bb87e0              # double 0.38478609335845526
	.quad	0x3fc473cf0a8e2aa4              # double 0.15978420272252436
	.quad	0x3fe0d65ba1ec786f              # double 0.52616674066281444
	.quad	0x3febd9543f96104f              # double 0.87027943057229062
	.quad	0x3fe72e18cbad38bf              # double 0.72437705784411566
	.quad	0x3fde72f834d610dc              # double 0.47576718482765812
	.quad	0x3feef23e74976a93              # double 0.96707079669734452
	.quad	0x3fe8124d85433033              # double 0.75223423030684555
	.quad	0x3fee29869f81fda1              # double 0.94256907609808505
	.quad	0x3fe247dacbfc1aa3              # double 0.57127132263925195
	.quad	0x3fc3e5c01178c20c              # double 0.15544892171011815
	.quad	0x3fe84f7278dd70f6              # double 0.75969813925215024
	.quad	0x3fdbb3fd41dcfe86              # double 0.43286067420920238
	.quad	0x3fd94320b51b2058              # double 0.39472215353135232
	.quad	0x3fe9ba42ed7d42d0              # double 0.8039869917357354
	.quad	0x3fdaaca4dc82f05c              # double 0.41678735288929203
	.quad	0x3fe70d5f7ab5819d              # double 0.72038244215586966
	.quad	0x3fe55a13f2911a9e              # double 0.66724583984690233
	.quad	0x3fd6290076f23818              # double 0.34625255218350182
	.quad	0x3fe15ae6284ae0b6              # double 0.54234607572200022
	.quad	0x3fd9d2cfdadd93ba              # double 0.40349193929278793
	.quad	0x3fdfb69582bd2226              # double 0.49551904456578411
	.quad	0x3fc6e22dbee3cc4c              # double 0.17877742596428658
	.quad	0x3fe8490c9b7968df              # double 0.75891714445176806
	.quad	0x3fd60c562f7b00fa              # double 0.34450297009244901
	.quad	0x3fd6343564ebf588              # double 0.34693655830036407
	.quad	0x3fd2d6d43fe0342e              # double 0.2943621276652405
	.quad	0x3fcefab27d46fc68              # double 0.24202567212157367
	.quad	0x3fe058b4cd185143              # double 0.51082840020766473
	.quad	0x3fd2504c673ad1dc              # double 0.28615102845222196
	.quad	0x3fdfecaaa21e4a08              # double 0.49881997901789576
	.quad	0x3fe4206a8a4f518c              # double 0.62895705236091848
	.quad	0x3fe585028ac94d6f              # double 0.67248656374651528
	.quad	0x3fea24b5f9756b30              # double 0.81698130342861042
	.quad	0x3fa1d07ec130aec0              # double 0.034793816645416253
	.quad	0x3fedaa3001960974              # double 0.92702484426290121
	.quad	0x3fdcc4bda3c96750              # double 0.44950810427473176
	.quad	0x3feee0aa5f0c9612              # double 0.96492498935976045
	.quad	0x3fe6f2c9ff86ad09              # double 0.71713733584820816
	.quad	0x3fef8def6c5ff10e              # double 0.98607608000705382
	.quad	0x3fc1cfdfdc41657c              # double 0.13915632490788343
	.quad	0x3fd60615d5c615cc              # double 0.34412141681999908
	.quad	0x3fec1491d6d6dc08              # double 0.87751094780730998
	.quad	0x3fe2464c175c5056              # double 0.57108120501153325
	.quad	0x3fab69015af41da0              # double 0.05353550181649358
	.quad	0x3feb19d102cfc07a              # double 0.84690142201544849
	.quad	0x3fe980bbf6d7424f              # double 0.79696462832550619
	.quad	0x3fd47ed69a9b298e              # double 0.32024159525158147
	.quad	0x3fe616677f58402a              # double 0.6902348983003368
	.quad	0x3fdc29a6f3045036              # double 0.44004224521745827
	.quad	0x3fc5cb77df2e4b40              # double 0.17027185819150681
	.quad	0x3fca6c088f398a60              # double 0.2064219188060461
	.quad	0x3fca3a225579d84c              # double 0.20489911244993875
	.quad	0x3fe8a04d243874d4              # double 0.76956803392718109
	.quad	0x3fefa1c798bd0d56              # double 0.98849849540458012
	.quad	0x3fed814c54a656bd              # double 0.92203346760899019
	.quad	0x3fe94e9bb1cdb757              # double 0.79084572531949504
	.quad	0x3fe490565cc6f003              # double 0.64261930580642035
	.quad	0x3fd7c6458f0912a4              # double 0.37147654503159289
	.quad	0x3fe7a86f5b305a22              # double 0.73931091127707682
	.quad	0x3feeadd52c8b2f73              # double 0.95871981334629052
	.quad	0x3fe599f952e82f18              # double 0.67504564469115547
	.quad	0x3fe346a02587bbb7              # double 0.60237128572577248
	.quad	0x3fc1628fc0f05ca0              # double 0.13582035942883852
	.quad	0x3fcb701215f82268              # double 0.21435762474745279
	.quad	0x3fb3ced8c32a1338              # double 0.077374980590389053
	.quad	0x3fdebd8257866802              # double 0.48031672046056439
	.quad	0x3fe5e47726210131              # double 0.68413884589248231
	.quad	0x3fd730de6fdeae3e              # double 0.36235772061147375
	.quad	0x3fe55a03ed66aa8c              # double 0.66723820083036989
	.quad	0x3fb3954f2cef7b10              # double 0.076497028799604516
	.quad	0x3fe18c07dc990ba3              # double 0.5483435925055925
	.quad	0x3fe69bcf7bcfd4ed              # double 0.70651983434677634
	.quad	0x3fd0ce3a7a426cc0              # double 0.26258718432809403
	.quad	0x3fe3997bbdefafec              # double 0.61248576256684606
	.quad	0x3fe784befa0e7ce4              # double 0.73495434607675891
	.quad	0x3fc12b33d11d7c34              # double 0.13413093290998435
	.quad	0x3fe14171bc56da9c              # double 0.53923880372061062
	.quad	0x3fa49565bb8f7f70              # double 0.040202311654637835
	.quad	0x3fe732e26cf40955              # double 0.72496148376402891
	.quad	0x3fe9e067f72df542              # double 0.80864332463503552
	.quad	0x3fd183694be11fc2              # double 0.2736457100877453
	.quad	0x3fd88ac0fb749a68              # double 0.38346886211585351
	.quad	0x3fecef21a7dda269              # double 0.90419085298806323
	.quad	0x3fd6ddc7f69107ac              # double 0.35728644446146052
	.quad	0x3febf2afc0b16a4e              # double 0.87337482104642006
	.quad	0x3fe11aab2246d8d9              # double 0.53450543112446802
	.quad	0x3feabfee2376c537              # double 0.83592898298790075
	.quad	0x3fddb8170542e908              # double 0.46436095727735038
	.quad	0x3fd6eb43a3a72d5a              # double 0.35810938817731641
	.quad	0x3fc59ca2366e33a8              # double 0.16884257943857262
	.quad	0x3fec80447fc4e02c              # double 0.8906576629151508
	.quad	0x3fd1b318dad3338c              # double 0.27655621881131576
	.quad	0x3fcccd6d4ed75480              # double 0.22501913404144958
	.quad	0x3fe534d47b0dffbc              # double 0.66269897493474827
	.quad	0x3fe3d80aed5196fa              # double 0.62012239791212598
	.quad	0x3fec12751698b8da              # double 0.8772530976619024
	.quad	0x3fb0e69621a1eb58              # double 0.066018470011767305
	.quad	0x3fe7c513dbdda016              # double 0.74280732100033009
	.quad	0x3fd93e2ab9524044              # double 0.3944193658617261
	.quad	0x3fd81d31338c6516              # double 0.37678175004983083
	.quad	0x3feffafb3b0ee4ed              # double 0.99938737425614265
	.quad	0x3fe742e9e2ff0ee9              # double 0.72691816649645802
	.quad	0x3feb3b48b3d5cf50              # double 0.85098681568204348
	.quad	0x3fdfecae5cad312a              # double 0.49882086801950953
	.quad	0x3fe9d8d97a9054b5              # double 0.8077208894561837
	.quad	0x3fea7806e2f75647              # double 0.82715172128036663
	.quad	0x3fc2ecadc1f85a18              # double 0.14784786196897026
	.quad	0x3feed6823b847058              # double 0.96368514656524961
	.quad	0x3feb7532cea6ee66              # double 0.85805645333989555
	.quad	0x3fed72b02e364591              # double 0.92025002504139952
	.quad	0x3fe7cdd23c33193b              # double 0.74387466199622254
	.quad	0x3fea4dca39af3216              # double 0.82199584261394665
	.quad	0x3fe0be08c7495ac8              # double 0.52319754527237539
	.quad	0x3f75cb65b622fc00              # double 0.0053209279159878164
	.quad	0x3fdc22861b2c01be              # double 0.43960716870790495
	.quad	0x3feef137ce51bf27              # double 0.96694555565588735
	.quad	0x3fb27675d741a580              # double 0.072120060971107236
	.quad	0x3fb4d0165c76d338              # double 0.081300160955675049
	.quad	0x3fe84c3cee2d6dcf              # double 0.75930639761957675
	.quad	0x3fdfaed4aa985a6e              # double 0.49504582080536508
	.quad	0x3f8dfdeaf7a29080              # double 0.014644466097088804
	.quad	0x3fb0c39575387320              # double 0.06548437225178505
	.quad	0x3fe4c1165c426c5d              # double 0.64857023257662727
	.quad	0x3fe8ea46bd5f5fa0              # double 0.77859818445994122
	.quad	0x3fdef60440708d88              # double 0.48376566212592609
	.quad	0x3fe08f8dd2995983              # double 0.51752368099805357
	.quad	0x3fe26f7324d27507              # double 0.57610470954719595
	.quad	0x3fc4d17ee8e728b0              # double 0.16264330265250271
	.quad	0x3fbd50b8841f7598              # double 0.11451295114189575
	.quad	0x3fbf8dd44b7a1910              # double 0.12325789301585055
	.quad	0x3fef4264cd588033              # double 0.97685470682700381
	.quad	0x3fe56a35f0ba5d0b              # double 0.66921517388519314
	.quad	0x3fcac920114f0744              # double 0.2092628559603843
	.quad	0x3fca4a5591959a58              # double 0.20539350136387458
	.quad	0x3fe8b22bbb24966c              # double 0.77174936820365536
	.quad	0x3feac2503b4c739e              # double 0.83621989804997887
	.quad	0x3fef4fe85529c2cb              # double 0.97850433953689142
	.quad	0x3fd465b8e2674ab8              # double 0.31870863065448019
	.quad	0x3fe8433f4a1149c4              # double 0.75820888963999566
	.quad	0x3fd48eadd93c9fb4              # double 0.32120844091923151
	.quad	0x3fea9e1f608a4a34              # double 0.83180207114702975
	.quad	0x3fe279fb9acf5ace              # double 0.57739048229526602
	.quad	0x3fdeaa06ec70e430              # double 0.47912762727679858
	.quad	0x3fde0d40e7f67c24              # double 0.46955893185253417
	.quad	0x3fedb65889358b5f              # double 0.92850901411689424
	.quad	0x3fcf0a87e7e5b260              # double 0.24250887702091273
	.quad	0x3fc9b0296c02ec18              # double 0.20068853162760614
	.quad	0x3fee3acd7af02078              # double 0.94467805873229249
	.quad	0x3fec77f9228f3fd1              # double 0.88964516401210336
	.quad	0x3fe90c43421a8e16              # double 0.78274691496739268
	.quad	0x3fe17bd6a69da351              # double 0.54636700193541732
	.quad	0x3fb4b8de7cac9b98              # double 0.080945878446625819
	.quad	0x3fd73cb1f963769e              # double 0.36307954172466761
	.quad	0x3fd13e9808ebae40              # double 0.2694454276195053
	.quad	0x3fcd042fca67d0b0              # double 0.22669026740152765
	.quad	0x3fda2f556d1e4d02              # double 0.40913901954736798
	.quad	0x3fd21bb1597e036e              # double 0.28294023265339419
	.quad	0x3fe03785ef816705              # double 0.50677773264325821
	.quad	0x3fc8a2ce65acdaa4              # double 0.19246845211610719
	.quad	0x3fe490a12920d5b5              # double 0.64265497238982638
	.quad	0x3fe93c35b2553d5f              # double 0.788599823290422
	.quad	0x3fdc43ae2bd1cdfa              # double 0.44163088111164905
	.quad	0x3fee9cedd40382ac              # double 0.95665637406280756
	.quad	0x3fe83c8540b4e108              # double 0.75738775861739871
	.quad	0x3fd02b8664af0542              # double 0.25265655357732808
	.quad	0x3fdc068fd41fabb6              # double 0.43790050234991484
	.quad	0x3fe85f694040fdc3              # double 0.76164686727127451
	.quad	0x3fe2303693b94816              # double 0.56838539936348087
	.quad	0x3fc731afd43d6118              # double 0.18120382178563754
	.quad	0x3fe89665f424bed6              # double 0.76835916218075329
	.quad	0x3fe1db399de5299d              # double 0.55801087225818302
	.quad	0x3fc54aac2f21da50              # double 0.16634132672671109
	.quad	0x3fd89394695d0494              # double 0.38400755204572445
	.quad	0x3feba93339bbf273              # double 0.86440430904583676
	.quad	0x3fe04e4eb172d4cc              # double 0.50955900819703848
	.quad	0x3fed4b20717f21c0              # double 0.91542074363047021
	.quad	0x3fe3bd3b64e56a6a              # double 0.61684961038856767
	.quad	0x3fe3d1d4fd2dac30              # double 0.61936425637157377
	.quad	0x3fdc9baf66ea6670              # double 0.44700226831773815
	.quad	0x3fee14f84b094274              # double 0.94005980163099289
	.quad	0x3fc802fb2ab63d1c              # double 0.18759097657719159
	.quad	0x3fed0ba38d4a1386              # double 0.9076707610662289
	.quad	0x3feed978632100f7              # double 0.96404666291348817
	.quad	0x3fd16eef7c51adb6              # double 0.27239596500904939
	.quad	0x3feccedd04c29d3a              # double 0.90025187425354791
	.quad	0x3fe4bc18632a760e              # double 0.64796084755261218
	.quad	0x3feab10ee1455b75              # double 0.83411354063251386
	.quad	0x3fec62fc5f53fa23              # double 0.88708323115117016
	.quad	0x3fe77015285c95dc              # double 0.73243196375977559
	.quad	0x3fe814452a474c7f              # double 0.75247438676377942
	.quad	0x3fedfbaf726ccca2              # double 0.936973308073352
	.quad	0x3fec83d39e3b9a7f              # double 0.89109211830948698
	.quad	0x3fc8fc9edc809d24              # double 0.19520936743467943
	.quad	0x3fe76fa55feee1d4              # double 0.73237866150798903
	.quad	0x3fe5d221b1d9d682              # double 0.6819008325243916
	.quad	0x3fe24710a2a61bdf              # double 0.57117492453914653
	.quad	0x3fb7e876751bfac8              # double 0.093390849677216115
	.quad	0x3fa8884d8f9649d0              # double 0.047914909150808094
	.quad	0x3fe9c22e813da153              # double 0.80495381586392012
	.quad	0x3fdb63a65c22b6bc              # double 0.42795714376084582
	.quad	0x3fb022308f561978              # double 0.063021693224163289
	.quad	0x3fc0f8bca8e91ad0              # double 0.13259084937654686
	.quad	0x3fe15cdb6f14aeca              # double 0.54258510299174501
	.quad	0x3fe71a458091b562              # double 0.72195696936766418
	.quad	0x3fa6c43f95503ae0              # double 0.044466006256802748
	.quad	0x3fd4d627e88d4ac0              # double 0.32557103834293954
	.quad	0x3fb61cad4867c380              # double 0.086375074555474995
	.quad	0x3fd03f27c64b0c44              # double 0.25385469784322745
	.quad	0x3fdb9c0084c75e18              # double 0.43139660803487478
	.quad	0x3fb0fb10d8a9b738              # double 0.066330960174778464
	.quad	0x3fb2f9dc62a36010              # double 0.074125074464405083
	.quad	0x3fd888f6304595d8              # double 0.38335947717709251
	.quad	0x3fe8dc9c7924dc4f              # double 0.77693008099493877
	.quad	0x3fc18b1156173e20              # double 0.13705651000644625
	.quad	0x3fe9df7eb954c5ab              # double 0.8085321063755847
	.quad	0x3fc10502c9ada2b4              # double 0.13296542022296409
	.quad	0x3fdd6661782153ce              # double 0.45937382441962604
	.quad	0x3fe665c8c34b1c7c              # double 0.69992483275645112
	.quad	0x3fdbe20e496a8caa              # double 0.43567235154678008
	.quad	0x3fe9114367cad1d3              # double 0.78335733673025698
	.quad	0x3fef807d822de050              # double 0.98443484712243823
	.quad	0x3fefd7f7a6edc6e5              # double 0.99511320689472582
	.quad	0x3fe556d5c7056cb7              # double 0.66684998389555161
	.quad	0x3fdbe1d2a2a1c262              # double 0.43565812952059535
	.quad	0x3fa852c2cae85d90              # double 0.047506415623668308
	.quad	0x3fea5b62e713a826              # double 0.82365555889305564
	.quad	0x3fc090821142683c              # double 0.12941003649467742
	.quad	0x3fa247de3ae50c90              # double 0.035704559983536943
	.quad	0x3fe71730c215089c              # double 0.7215808668772925
	.quad	0x3fb8962722476978              # double 0.096041150921711949
	.quad	0x3fea0d8c24376c5c              # double 0.81415373872313123
	.quad	0x3fea6dbb16f59751              # double 0.82589487537618755
	.quad	0x3fb9976fb16b4b80              # double 0.099966984572615658
	.quad	0x3fe8cd058fbaf6af              # double 0.77502706596688664
	.quad	0x3fec897e28d7129c              # double 0.89178379036509936
	.quad	0x3fe5dbe8b5a869b6              # double 0.6830943630223405
	.quad	0x3febcf83fcb0839d              # double 0.86908149102611143
	.quad	0x3fdc011846a38f7a              # double 0.43756682298975813
	.quad	0x3fed848e85fe8b2c              # double 0.92243124171031842
	.quad	0x3febdd035e6d0b4d              # double 0.8707291454560192
	.quad	0x3fd4fc7d500681c4              # double 0.32791073622686562
	.quad	0x3fe17afc1573fa83              # double 0.54626278104827042
	.quad	0x3fedc37c030dd1e4              # double 0.93011284443360553
	.quad	0x3fdcc02e80231722              # double 0.44922983659158622
	.quad	0x3feb6649f828c799              # double 0.85623644322025705
	.quad	0x3fdb8adff32fb488              # double 0.43035124539057579
	.quad	0x3fc28f0f07a0caa4              # double 0.14499080536332543
	.quad	0x3fd4cb594617985c              # double 0.32491142125070893
	.quad	0x3fe647db52038f91              # double 0.696271572287957
	.quad	0x3fe0f8a8ac18bc3b              # double 0.53035386669751661
	.quad	0x3fc5dd50fe6ede08              # double 0.1708165399884225
	.quad	0x3fe9befda5ef6d45              # double 0.80456430825453451
	.quad	0x3fd800e189d9fcce              # double 0.37505377256452455
	.quad	0x3fed6e2dbe3577c4              # double 0.91969954633872719
	.quad	0x3fe1ddbb466ca39a              # double 0.55831683878669769
	.quad	0x3fea616ef9dd52ae              # double 0.82439373780888103
	.quad	0x3feeb594496f0138              # double 0.95966543524267589
	.quad	0x3fea5b7488dd1fab              # double 0.82366396647647855
	.quad	0x3fe023ecb5980fc8              # double 0.50438533275200204
	.quad	0x3fcf59f5e3fed0b8              # double 0.2449328768976835
	.quad	0x3fd9d287457f6870              # double 0.40347463404544381
	.quad	0x3fe0abb0d8204e9d              # double 0.52095834934376095
	.quad	0x3fdcf5c848ca712a              # double 0.45250136478877556
	.quad	0x3fde3f997e16b65a              # double 0.47263181031562385
	.quad	0x3feef9bbcdde9437              # double 0.96798505982281468
	.quad	0x3fe1ed757f7c883f              # double 0.56023669147203481
	.quad	0x3fe46c098b29585f              # double 0.63818814449292549
	.quad	0x3faa920f0fd6af70              # double 0.051895590480255716
	.quad	0x3fe0651b108ce5c8              # double 0.51234200699325871
	.quad	0x3fe56c566f5f5867              # double 0.66947480919294555
	.quad	0x3fea062dfcdec965              # double 0.81325435055468331
	.quad	0x3fefd63efcdecbeb              # double 0.99490308178644448
	.quad	0x3fe19ee16993f6ae              # double 0.5506445943899132
	.quad	0x3fed921d54f47435              # double 0.92408625214341689
	.quad	0x3fe1d55c41b77609              # double 0.55729496798784439
	.quad	0x3fbae2eb70146470              # double 0.10502501951522603
	.quad	0x3fdcd49f9fdc909e              # double 0.45047751056177698
	.quad	0x3fefb4de1ee3a580              # double 0.99082857163482174
	.quad	0x3fd664d9ed537d84              # double 0.34990547348385115
	.quad	0x3fde9999aa5fb3c8              # double 0.47812501562185306
	.quad	0x3fe1295e40f5184d              # double 0.53629982649796093
	.quad	0x3fe800b2e2d3b26f              # double 0.75008529951226233
	.quad	0x3fcce57f71d1d268              # double 0.22575371797178723
	.quad	0x3fa5fd9b3d959f10              # double 0.042950488345750881
	.quad	0x3f96f92eac4d7140              # double 0.022434930101881578
	.quad	0x3fe20aec17d2a220              # double 0.56383328106773334
	.quad	0x3fdc2fa525fb6df0              # double 0.44040802678293201
	.quad	0x3fd7845cc2ef7b5a              # double 0.36745375668208669
	.quad	0x3fb282a2f266ceb0              # double 0.072305854969097139
	.quad	0x3fe968762002765e              # double 0.79400163890722886
	.quad	0x3fdf1c8dd4a0a966              # double 0.48611779941952304
	.quad	0x3fb8424daa0e1a70              # double 0.094761709229808976
	.quad	0x3fe36bb6db7d9da1              # double 0.60689871663355544
	.quad	0x3fcc8e503f2703b8              # double 0.22309306224454217
	.quad	0x3fe18fec76724060              # double 0.54881880888025236
	.quad	0x3f73de6552077580              # double 0.0048507650212433751
	.quad	0x3fe67f69651de5c7              # double 0.70305318593380484
	.quad	0x3fcff1b23abf42ac              # double 0.24956348293792041
	.quad	0x3fc6c13e15c94970              # double 0.17777229369910286
	.quad	0x3fea69d36afa97ff              # double 0.82541819471657607
	.quad	0x3fe843c442f59fd9              # double 0.75827229574224042
	.quad	0x3fdb23d5b3725c6a              # double 0.42406218074888236
	.quad	0x3fb29efea1ae0a70              # double 0.072738565895670737
	.quad	0x3fb16f5ca81c4000              # double 0.068105498354498195
	.quad	0x3fbed135743b76c8              # double 0.12037977302267244
	.quad	0x3fd4f8fec0b5abe2              # double 0.32769745654394289
	.quad	0x3fcd67b18254f718              # double 0.22972697128164365
	.quad	0x3fef17388b00837b              # double 0.97158457897977201
	.quad	0x3f89b8f88dd5a380              # double 0.012559835270353537
	.quad	0x3fdc59f5dd5b7b78              # double 0.44299074761322954
	.quad	0x3fec85a9c7baa4f2              # double 0.89131630906663717
	.quad	0x3fe25420813f4edc              # double 0.5727694057809134
	.quad	0x3fe01423ed985331              # double 0.50245853810574748
	.quad	0x3fd6546a96d3ac4a              # double 0.34890236596283286
	.quad	0x3fe5b0e6dfd9d8f6              # double 0.6778444645013042
	.quad	0x3fe6ac2796bf5486              # double 0.70851497118805251
	.quad	0x3fee193d0e78c3cb              # double 0.94058087183486216
	.quad	0x3fbf0e44e755a338              # double 0.12131148002448533
	.quad	0x3fdd513fc0bab394              # double 0.45808404751988374
	.quad	0x3fe56a5d4c9554f0              # double 0.66923394162827599
	.quad	0x3fc3ed799b99a34c              # double 0.15568466279662585
	.quad	0x3fb1241d1fd61048              # double 0.066957302353388148
	.quad	0x3fc7e99d484803ec              # double 0.18681684522019226
	.quad	0x3fa0408b844b7c70              # double 0.031742439173961468
	.quad	0x3feb42f4d7744f13              # double 0.85192339020656715
	.quad	0x3fe000561b3c9f55              # double 0.50004105872811044
	.quad	0x3fea66b3f8e9873a              # double 0.82503698936145686
	.quad	0x3fe9e2e2629eaf75              # double 0.80894583951656662
	.quad	0x3fef6a7ef833fea2              # double 0.98174999692124154
	.quad	0x3fcea2de6df075b0              # double 0.23934536331300427
	.quad	0x3fd80b476049de9e              # double 0.37568840411356941
	.quad	0x3fd4bbd3850af338              # double 0.32396400444467899
	.quad	0x3fcbeb7f725a3d98              # double 0.2181243236886814
	.quad	0x3fc842a349663e84              # double 0.18953362544970187
	.quad	0x3fef112787a41b1a              # double 0.97084404461279239
	.quad	0x3fde8f93b5aeb500              # double 0.47751324407984441
	.quad	0x3fe22308c5d190c6              # double 0.56677664410064987
	.quad	0x3fd049b656a172ba              # double 0.25449903926873285
	.quad	0x3fcf2ff1a266a28c              # double 0.24365063123447717
	.quad	0x3fecaff08a7dd8ff              # double 0.89647700356616145
	.quad	0x3fef63500f557b7a              # double 0.9808731364717993
	.quad	0x3fc88a6c40e31c4c              # double 0.19172433059995553
	.quad	0x3fe6788fb8594eeb              # double 0.70221696859013372
	.quad	0x3fe2ca0b373a932f              # double 0.58716355120541219
	.quad	0x3fddd2f242c6aa02              # double 0.46600014229866826
	.quad	0x3fec3d727c6c679a              # double 0.88250088025528162
	.quad	0x3fe441ec0dbc290b              # double 0.63304712946526942
	.quad	0x3fe882584b6d3755              # double 0.76591124278796008
	.quad	0x3fdaec218eb814f6              # double 0.42066229760560192
	.quad	0x3fcf630a7124c438              # double 0.24520998501387381
	.quad	0x3fb75c02f8c5f870              # double 0.09124773572509226
	.quad	0x3fddf0f963e9a92e              # double 0.46783289677718443
	.quad	0x3fde76445c418d2a              # double 0.47596844682103046
	.quad	0x3fe3f0b830cafcca              # double 0.62313470392100467
	.quad	0x3feadb9e20321887              # double 0.83930879867763586
	.quad	0x3fdb0122b4ecb55a              # double 0.42194430988714304
	.quad	0x3fe13b29ed9a2e40              # double 0.53847214132969867
	.quad	0x3fb785ba9912e390              # double 0.09188429104950857
	.quad	0x3fd9c67ff66e9c6c              # double 0.40274046960479981
	.quad	0x3fc3d67b65b07ea8              # double 0.15498297181419685
	.quad	0x3fb4b78a213b3480              # double 0.080925591576674449
	.quad	0x3fdfe2d83bc2e750              # double 0.49822049938267288
	.quad	0x3fc23ad84960fdd0              # double 0.14242080290749337
	.quad	0x3fe151b43badfdc4              # double 0.54122363716299349
	.quad	0x3fe7396d8ef44d04              # double 0.7257602493358779
	.quad	0x3feb0c47d3398877              # double 0.84524909262496706
	.quad	0x3fdfd5bad8d794b8              # double 0.49742003608691787
	.quad	0x3fc489c211cf037c              # double 0.1604540430980953
	.quad	0x3fed09e5a6e1b110              # double 0.90745813936294617
	.quad	0x3fe7f48dcc809ab3              # double 0.74860277120463647
	.quad	0x3fd0441f38229834              # double 0.25415783388087054
	.quad	0x3fc5e39d0d5771d4              # double 0.17100871230549208
	.quad	0x3fdc2308f86609e2              # double 0.4396383691565956
	.quad	0x3fe183b91618c71e              # double 0.54732946697024309
	.quad	0x3f721bdd669dbc80              # double 0.0044211052389605543
	.quad	0x3fe7b22661ea3d01              # double 0.74049681781789911
	.quad	0x3fa0dfaf646ff710              # double 0.032956582079334606
	.quad	0x3fe226b496ee4063              # double 0.56722478369375684
	.quad	0x3fd2c53534239774              # double 0.2932866105241978
	.quad	0x3fdd8d1b6483c156              # double 0.4617374879444659
	.quad	0x3fef753c24afb379              # double 0.98306090512561106
	.quad	0x3fecc0c35cb4ca96              # double 0.89853065592463355
	.quad	0x3fe56e752a548d6e              # double 0.66973360316880615
	.quad	0x3fa6ab9962f39b10              # double 0.044277947739649659
	.quad	0x3fd02da06108716c              # double 0.25278481937291164
	.quad	0x3f910227ced7e9e0              # double 0.016609785079689021
	.quad	0x3fd892ab9f5d532e              # double 0.38395205080932981
	.quad	0x3fe5922aedbc55d6              # double 0.67409273560286453
	.quad	0x3fe34581d63dfa9d              # double 0.60223476261292641
	.quad	0x3fedf8b878eb1599              # double 0.93661140076499116
	.quad	0x3fd256f2a0a7aba2              # double 0.28655687035523603
	.quad	0x3fe41b024c8256af              # double 0.62829699462118593
	.quad	0x3feba19fca9e9286              # double 0.86347951482874019
	.quad	0x3fcda561c8308a64              # double 0.2316095569122637
	.quad	0x3fc4f112cdf38504              # double 0.16360697799886037
	.quad	0x3fda722005d33032              # double 0.41321564263194255
	.quad	0x3fc93ace621ca364              # double 0.19710712233179628
	.quad	0x3fe7a98cc0973777              # double 0.7394469987427631
	.quad	0x3fcdb4378e084c54              # double 0.23206228671242235
	.quad	0x3fda02e7e6b1904e              # double 0.40642735985443756
	.quad	0x3fe5d41585c8b41d              # double 0.68213916902243776
	.quad	0x3fed39a9c403c98a              # double 0.91328895839824153
	.quad	0x3fcb967597d0595c              # double 0.21552915489946656
	.quad	0x3fe80dde985a96bf              # double 0.75169305569280442
	.quad	0x3fde5b0bf63e0d30              # double 0.47430705115421556
	.quad	0x3fe1a2ab79104635              # double 0.55110715527752652
	.quad	0x3feb0aff869d5eff              # double 0.84509254733981709
	.quad	0x3fd0ff5c0a95a1ea              # double 0.26558590921061287
	.quad	0x3fe0afc566133cec              # double 0.52145643173744594
	.quad	0x3f6733169a4d8e00              # double 0.0028319779834633518
	.quad	0x3fdef3a9a178275e              # double 0.48362198608866958
	.quad	0x3fdcb8a4d30a122a              # double 0.44876976594267382
	.quad	0x3fd31fdcf8dbf546              # double 0.29881977369935375
	.quad	0x3fdf95a5470e84d0              # double 0.49350864352352364
	.quad	0x3fe31475c0c8578f              # double 0.59624755528305851
	.quad	0x3feb32cb973b0162              # double 0.84995059525685357
	.quad	0x3fc57c9cbe979efc              # double 0.16786536508811156
	.quad	0x3fed118125a24d36              # double 0.90838677740467832
	.quad	0x3fdbdc11d08b298a              # double 0.43530698171220961
	.quad	0x3fd62bad6850f5d0              # double 0.34641585528501384
	.quad	0x3fe8cad8882faed5              # double 0.7747614536178512
	.quad	0x3fdcbc047c6533fe              # double 0.44897567890149037
	.quad	0x3fdc5378efcce598              # double 0.44259475152974792
	.quad	0x3fe475efd31b7011              # double 0.63939658386107301
	.quad	0x3fe86aeb2634e9f6              # double 0.76305158102269277
	.quad	0x3fda4c08ddab4020              # double 0.41089078566892745
	.quad	0x3fee450550ad6b0b              # double 0.94592538602168597
	.quad	0x3fde84edb62b8304              # double 0.47686331548725058
	.quad	0x3f8cf3aa84154500              # double 0.014136631160598601
	.quad	0x3fa8cbc0bb6e5f10              # double 0.048429510955598443
	.quad	0x3fd074be1aa6e4ae              # double 0.25712540247657045
	.quad	0x3feb65a208d71ab1              # double 0.8561563656483796
	.quad	0x3fd2cc1195322522              # double 0.29370536394033497
	.quad	0x3fe7f9c87e67a3b5              # double 0.7492411106915059
	.quad	0x3fc24a9d45dd6d5c              # double 0.142902049173112
	.quad	0x3fb84bed48ba7160              # double 0.094908552413874414
	.quad	0x3fbdc8c107a4a5c0              # double 0.11634451328850215
	.quad	0x3fe243ea94d4806f              # double 0.57079056805015493
	.quad	0x3fee56941a0605ce              # double 0.94806866724700867
	.quad	0x3fe8b211fdfa5eec              # double 0.77173709492759945
	.quad	0x3fb34ad233684ad0              # double 0.075360429335243894
	.quad	0x3fd08d27a6df425c              # double 0.25861541076759464
	.quad	0x3fd2ef330b40bf5e              # double 0.29584957217138264
	.quad	0x3fe9e08e69f682e2              # double 0.808661658247811
	.quad	0x3fe3f008e31f04f3              # double 0.62305111274340985
	.quad	0x3fee8484e692cac1              # double 0.95367665323131956
	.quad	0x3fece1489e619098              # double 0.90250044759570169
	.quad	0x3fde56c787851be8              # double 0.47404659494753654
	.quad	0x3fec79abba3f9a84              # double 0.88985239388132741
	.quad	0x3fedc4b8310a715e              # double 0.93026361063270335
	.quad	0x3feeb9a33091e4e4              # double 0.96016082273777358
	.quad	0x3fee211b8940424b              # double 0.94154145056570238
	.quad	0x3fe8b4e2d39da9c1              # double 0.77208081561303044
	.quad	0x3fe7c6c4257e0479              # double 0.74301345179277611
	.quad	0x3fed82185ef1e046              # double 0.92213076156532092
	.quad	0x3fa7e8a0114d29a0              # double 0.046696664916981989
	.quad	0x3fd66a06f3d4a030              # double 0.35022138415888815
	.quad	0x3fbc6a226a6de360              # double 0.11099448297853831
	.quad	0x3fe24a484bbb935d              # double 0.57156767646356921
	.quad	0x3feab3cf90d52790              # double 0.83444956100105294
	.quad	0x3fdb8fab45dd6664              # double 0.43064386198748239
	.quad	0x3fe5e67dea070e0d              # double 0.68438621243007136
	.quad	0x3f9cbdb505fa0060              # double 0.028067425241261268
	.quad	0x3fd73cd3fcc15c6a              # double 0.36308765109192243
	.quad	0x3fcb863bef87e9e0              # double 0.21503400035710651
	.quad	0x3fd76c27d15054c4              # double 0.36597629013824595
	.quad	0x3fea2ec07adcfbe7              # double 0.81820701595995338
	.quad	0x3fecaa386f8f346e              # double 0.89577886380142302
	.quad	0x3fd4888a6d807174              # double 0.3208337849953502
	.quad	0x3fd3e24e94b11d02              # double 0.31068768044174544
	.quad	0x3fab56809fc37600              # double 0.053394336225874639
	.quad	0x3feb505b5a48a696              # double 0.85355918534806352
	.quad	0x3fd7e70c32775d30              # double 0.3734770291170717
	.quad	0x3fedda37ff7981d5              # double 0.93288803002729515
	.quad	0x3fc8e7d98fcfca00              # double 0.19457549593023771
	.quad	0x3fe21970bb344858              # double 0.56560551226926759
	.quad	0x3fea23c77a581789              # double 0.81686757941564381
	.quad	0x3fe2c8623609135c              # double 0.58696089319037581
	.quad	0x3faae6757cd90430              # double 0.052539512148094381
	.quad	0x3fe329dc45bf89a0              # double 0.59885991690343943
	.quad	0x3fd0307e7ad7e19c              # double 0.25295984264769245
	.quad	0x3fda7be84f8cdbe6              # double 0.41381271141602693
	.quad	0x3fd4377fa524dee0              # double 0.31588736655565519
	.quad	0x3fd5ac79257356f0              # double 0.33865193040160957
	.quad	0x3fe4cff5dadb8ce9              # double 0.65038578744534192
	.quad	0x3fe3cf269bb3ceea              # double 0.61903696451778711
	.quad	0x3fea432d3f1cd80f              # double 0.82070028616613111
	.quad	0x3fc31928f3560abc              # double 0.14920532113690921
	.quad	0x3fd91da53817cdce              # double 0.39243441083746411
	.quad	0x3fdbc7c9cbb31046              # double 0.43406910793806153
	.quad	0x3fec152296ef01b5              # double 0.87757997016165368
	.quad	0x3fe677c008fbebc1              # double 0.70211793665600208
	.quad	0x3fcdba38f1643df4              # double 0.23224555765817423
	.quad	0x3f8a79c9595a3a80              # double 0.012927601851768999
	.quad	0x3feb640929653319              # double 0.85596139988919895
	.quad	0x3fbcc28b7d301730              # double 0.11234351927131736
	.quad	0x3fd33330392a8af4              # double 0.29999929030070338
	.quad	0x3fe8bc3ddac0be04              # double 0.77297871327567735
	.quad	0x3fc78d07d232d41c              # double 0.18399141086197879
	.quad	0x3fea8a58e7262e38              # double 0.82938809534375135
	.quad	0x3fe4803ac4895810              # double 0.64065302263293411
	.quad	0x3fee128fed9a3ab5              # double 0.93976589590768944
	.quad	0x3fe1cf822857041b              # double 0.55658061865699737
	.quad	0x3fc4a894875972d4              # double 0.16139465912683326
	.quad	0x3fd863636b41bc5c              # double 0.38106618379874191
	.quad	0x3fc9177b9fbca98c              # double 0.19602914142280914
	.quad	0x3fe3ee59b1cb44d1              # double 0.62284550404924677
	.quad	0x3fee61378569fd84              # double 0.94936729485918691
	.quad	0x3fe644eab6dc6097              # double 0.69591270174989261
	.quad	0x3fe44530b8223e05              # double 0.63344608272194647
	.quad	0x3fc03d3cf896a2b8              # double 0.1268688405810019
	.quad	0x3fe894a9e8456e3e              # double 0.7681474243685853
	.quad	0x3fe38c429947cd04              # double 0.61087160050956912
	.quad	0x3fe0049ef16022f2              # double 0.50056407111796219
	.quad	0x3fdbcc642ccddc72              # double 0.43435005546002181
	.quad	0x3feb6c6c350c6af6              # double 0.85698519097363035
	.quad	0x3fefc7a441a488ce              # double 0.99312031575052528
	.quad	0x3f95d8c16efd4940              # double 0.021334669493918712
	.quad	0x3fd00b9046f8222a              # double 0.25070578508942509
	.quad	0x3fd6886df47a4502              # double 0.35207699656264435
	.quad	0x3fe071c402f3ec30              # double 0.51388741089556866
	.quad	0x3fcb8c7011714f78              # double 0.21522332050028203
	.quad	0x3fc957e0d6958724              # double 0.19799433210123951
	.quad	0x3fdcbca4914af896              # double 0.44901384533648903
	.quad	0x3fef8e636682ea2c              # double 0.98613138219599738
	.quad	0x3fe260328c83bed8              # double 0.5742428535868056
	.quad	0x3fe3718af7d83c95              # double 0.60761021048701258
	.quad	0x3fcfea85d30786d4              # double 0.24934456638498281
	.quad	0x3fee3d5bfc03b9a8              # double 0.94499015065757863
	.quad	0x3fe6b16d78df7b3a              # double 0.70915864570620291
	.quad	0x3feae79b5b727215              # double 0.84077232228043164
	.quad	0x3fe9d0ee9c682808              # double 0.80675440357413297
	.quad	0x3fe254066b2bda94              # double 0.57275696689505873
	.quad	0x3fe106b80ef839a5              # double 0.53207018779521731
	.quad	0x3fe6e4f4acf7afc8              # double 0.71544870169372476
	.quad	0x3febf6877e9031e9              # double 0.87384390563380265
	.quad	0x3fec2545f87ff555              # double 0.8795499661934324
	.quad	0x3fda90cef33ad9d2              # double 0.41508840325277874
	.quad	0x3feb14a7fd8e354c              # double 0.84627151033934344
	.quad	0x3fed22f94c910f99              # double 0.91051926569388109
	.quad	0x3fee0558dd815c57              # double 0.93815272581822284
	.quad	0x3fdd3ae7ce7f6000              # double 0.45672030607011038
	.quad	0x3fd86acfe6e1565e              # double 0.38151929423233877
	.quad	0x3fd6cd3a5f6798ba              # double 0.35627612416136467
	.quad	0x3f8c7555edf5bfc0              # double 0.013895675014936049
	.quad	0x3fe99f085330859e              # double 0.80066314933735661
	.quad	0x3fea00401d7fe4f1              # double 0.81253057252538785
	.quad	0x3fd41d692f013f9c              # double 0.31429509725875859
	.quad	0x3fd72865952c2b42              # double 0.36184062545423867
	.quad	0x3fd9f75ea500d288              # double 0.40572324861140219
	.quad	0x3fe6f4504120b084              # double 0.71732342453243847
	.quad	0x3f74c0984a081a80              # double 0.0050664852901777246
	.quad	0x3fddc028e7b8ed34              # double 0.46485350255143776
	.quad	0x3fdd5d27823c0a72              # double 0.45881068914619683
	.quad	0x3f9a382734dc69a0              # double 0.02560483226907595
	.quad	0x3f96fa0d8ed7c2a0              # double 0.022438251346047822
	.quad	0x3fed0bc50b5d289b              # double 0.90768673152458079
	.quad	0x3fc63d00ea087134              # double 0.1737366812457225
	.quad	0x3fea4131e2181498              # double 0.82045835646626397
	.quad	0x3fde0317d6cb562e              # double 0.46893878913883469
	.quad	0x3fb1f8db84f33378              # double 0.070203514059540839
	.quad	0x3fc3d62385dab468              # double 0.15497249637465704
	.quad	0x3fc39669d3cebff0              # double 0.15302775232476007
	.quad	0x3fd261afda339eb8              # double 0.28721233662370649
	.quad	0x3fe4990dd39ff07a              # double 0.64368335087739514
	.quad	0x3fb9de514828afe0              # double 0.10104854594891277
	.quad	0x3fc8411c899a1394              # double 0.18948704451409226
	.quad	0x3fa1b330ccac3580              # double 0.034570240959605592
	.quad	0x3fca107bdec08988              # double 0.20362804771964371
	.quad	0x3fe9febcea307094              # double 0.81234594097215273
	.quad	0x3feb3a89545b3b3d              # double 0.85089556194166216
	.quad	0x3fc625a716e0f4f8              # double 0.17302406899572254
	.quad	0x3fbd6b00e8944360              # double 0.11491399458124141
	.quad	0x3fe21d29d823f22c              # double 0.56605999197888002
	.quad	0x3fc8aeb1a20f2a50              # double 0.19283123410271452
	.quad	0x3fdafe597bfa509c              # double 0.42177426440435695
	.quad	0x3fe1f50abb368688              # double 0.56116234364545026
	.quad	0x3fde0a6201ec8318              # double 0.46938371837500048
	.quad	0x3fb1433a8515f828              # double 0.067432076923041095
	.quad	0x3fd43743f9da3408              # double 0.31587314033168967
	.quad	0x3feb8172e841afee              # double 0.85955186236014725
	.quad	0x3fd4a90a7e82aeca              # double 0.32281744341410656
	.quad	0x3fe52d41f9afdb88              # double 0.6617746235559574
	.quad	0x3fa99892d7c7f750              # double 0.049992169228046834
	.quad	0x3f90acfc588e0e00              # double 0.016284888176882006
	.quad	0x3fe60c3b17e440c1              # double 0.68899302164393117
	.quad	0x3fe96441da58ce19              # double 0.79348843236806765
	.quad	0x3fc768c4312c6a28              # double 0.18288471604394485
	.quad	0x3feac5052cd1557a              # double 0.83655031922778211
	.quad	0x3fda2d983f352178              # double 0.40903288052188413
	.quad	0x3fe21304de8698b3              # double 0.56482165777267423
	.quad	0x3fc441368c33255c              # double 0.15824014516537488
	.quad	0x3fe781a0b741958b              # double 0.73457370559906232
	.quad	0x3fdde1431c1704ac              # double 0.4668739103618218
	.quad	0x3feb7b244cd785a0              # double 0.85878195770435539
	.quad	0x3fe17b58419d9c4e              # double 0.54630673232612437
	.quad	0x3fe7700aaa29fd71              # double 0.7324269603267749
	.quad	0x3fd0e402f783e914              # double 0.2639167229787216
	.quad	0x3f98169823c72280              # double 0.02352369039889135
	.quad	0x3fe6429c6372f4b3              # double 0.6956312124599634
	.quad	0x3fd22faa6d6a763a              # double 0.28415928540366375
	.quad	0x3fe7f41ed832223d              # double 0.74854986406086932
	.quad	0x3fe128d25d4b0501              # double 0.53623312207506058
	.quad	0x3fea121b42f9cbbb              # double 0.81471026498035515
	.quad	0x3fbf075754e86f70              # double 0.1212057668967057
	.quad	0x3fee9af4834084cf              # double 0.95641542086755205
	.quad	0x3fd224938521589a              # double 0.28348243714334276
	.quad	0x3fd966010a759ada              # double 0.39685083409714894
	.quad	0x3fc85aa0ec146bc0              # double 0.19026576545078733
	.quad	0x3fb3e05f6a2beb90              # double 0.077642405911247047
	.quad	0x3fee3f1a45122376              # double 0.94520295610810368
	.quad	0x3fee680d9f6ef0ea              # double 0.9502018083508379
	.quad	0x3fd6c97c99b9e680              # double 0.35604777347871419
	.quad	0x3fc83927c8966700              # double 0.18924424452125521
	.quad	0x3fde238098e0f822              # double 0.47091689042633977
	.quad	0x3fc77031106249a0              # double 0.18311131763455268
	.quad	0x3fe508236137d5a8              # double 0.65724343288336673
	.quad	0x3feccca7abe26a97              # double 0.89998229571513633
	.quad	0x3fed8541d7926fd9              # double 0.922516747511959
	.quad	0x3fbfd8e69c6ac508              # double 0.12440339392448518
	.quad	0x3f9f94b717a61100              # double 0.030840740984346304
	.quad	0x3fc830d4247e36bc              # double 0.18899013311277268
	.quad	0x3fd98277e45cb710              # double 0.39858815480225562
	.quad	0x3fdbbfdee2198c7e              # double 0.43358585434015839
	.quad	0x3fe24e827d27a51a              # double 0.57208370632466488
	.quad	0x3fba2f0e68130780              # double 0.10228052178265834
	.quad	0x3fdf4618b3af09fc              # double 0.48865335032692747
	.quad	0x3fb1ad3e7b072c70              # double 0.06904974464048208
	.quad	0x3fe51377117bcf71              # double 0.65862611212513233
	.quad	0x3fee8929d81ec960              # double 0.95424358569134071
	.quad	0x3fef91f424054df4              # double 0.98656661067292228
	.quad	0x3fdf01172618c06a              # double 0.48444155426387303
	.quad	0x3fd41fd3f7dd2732              # double 0.31444262700516667
	.quad	0x3fe068d0236cc489              # double 0.51279456061287576
	.quad	0x3fe0f00e8768e2a3              # double 0.52930380294045098
	.quad	0x3fe943114864003d              # double 0.78943695200724273
	.quad	0x3fda5032b8bfa130              # double 0.41114490548945337
	.quad	0x3fe772c6bf085153              # double 0.73276078520806676
	.quad	0x3fde289f5ecd07b6              # double 0.4712294030942944
	.quad	0x3fce71a1582dff5c              # double 0.23784272008560492
	.quad	0x3fbbb68721257768              # double 0.10825390395390644
	.quad	0x3fecf2e44dc360e4              # double 0.90464987934231233
	.quad	0x3fd689086c405628              # double 0.35211382457177587
	.quad	0x3fd27ae9a8ef8024              # double 0.28875199792492112
	.quad	0x3fe7635226b98456              # double 0.7308741337148017
	.quad	0x3feacc6fe64c891a              # double 0.83745570163981431
	.quad	0x3f91d0a7881c97a0              # double 0.01739751594791239
	.quad	0x3fd61391debb8b26              # double 0.34494444609861075
	.quad	0x3fdd5c03c9a05f8e              # double 0.45874113741000933
	.quad	0x3febb9c910b27fea              # double 0.86642888318237721
	.quad	0x3fceac1a8e017864              # double 0.23962718900560553
	.quad	0x3fe7cd602211d6a8              # double 0.74382025388941475
	.quad	0x3f73b9720816fe00              # double 0.0048155264243514573
	.quad	0x3fd79bd1d9b03218              # double 0.36888548143977706
	.quad	0x3fe4ab4ae4347d0f              # double 0.64590973445220523
	.quad	0x3fe0abf4eae1009c              # double 0.52099080920017427
	.quad	0x3fcca236e85034bc              # double 0.22370039313719825
	.quad	0x3feea0df138ba3fc              # double 0.95713762109255595
	.quad	0x3fe5ff5c737d31ab              # double 0.6874220138211532
	.quad	0x3fe3b85cf31c0a2f              # double 0.6162552593453422
	.quad	0x3fe42838e03c686b              # double 0.629909933052898
	.quad	0x3fdda0993ec4814c              # double 0.46292716149948343
	.quad	0x3fe47c8d8d6b0a55              # double 0.6402042162010938
	.quad	0x3fe0d7dc390f0a32              # double 0.52635012764250733
	.quad	0x3fd737d18329a05c              # double 0.36278188523147548
	.quad	0x3fd3c0944fbf49e6              # double 0.30862911022009454
	.quad	0x3fe4d6f74f03f56b              # double 0.65124097283084603
	.quad	0x3fe9372141a1e797              # double 0.78797972506366676
	.quad	0x3fe5acc8f7570796              # double 0.6773419218882164
	.quad	0x3feb723ec6138b01              # double 0.85769594847474206
	.quad	0x3fdcc93377f00ebc              # double 0.44978033745449486
	.quad	0x3fc2b6027bca833c              # double 0.14617949528203578
	.quad	0x3fb7d1e9105029d0              # double 0.093046728594493588
	.quad	0x3fe5e530f5400a9f              # double 0.68422744656011847
	.quad	0x3fecca2e4ac9202f              # double 0.89968027693340058
	.quad	0x3fb3eaac37092ea0              # double 0.077799571453562866
	.quad	0x3fe6fc2b746e496b              # double 0.71828243961708205
	.quad	0x3faa0e7e90b8c150              # double 0.050891833463881597
	.quad	0x3fe92b262a038235              # double 0.78651722150613657
	.quad	0x3fae9a98bd5e3b80              # double 0.059773228756163199
	.quad	0x3fe6e17f7c3fc022              # double 0.71502661006343637
	.quad	0x3fd27a5c9f2a2148              # double 0.28871837180533477
	.quad	0x3fdc46a941014c4e              # double 0.44181281421805785
	.quad	0x3fd1eadfff635ecc              # double 0.27996063175440322
	.quad	0x3feb4c59edfa14df              # double 0.85307022552356304
	.quad	0x3fe6c551f4688939              # double 0.71158693061833056
	.quad	0x3fe8580cc9e2f4da              # double 0.76074828558889895
	.quad	0x3fef2a2511fca00a              # double 0.97389462960291096
	.quad	0x3fe92837f7e8ba70              # double 0.78615950031037407
	.quad	0x3fedf164b6ec48ef              # double 0.93571696974893637
	.quad	0x3fe0b10df68f95c9              # double 0.52161310345098244
	.quad	0x3feff04912e949e8              # double 0.99808171933756018
	.quad	0x3fe50394d0e752b0              # double 0.65668717195020143
	.quad	0x3fce24f5c92acd10              # double 0.2355029327642133
	.quad	0x3fd7c718e53fd8f0              # double 0.37152693164479356
	.quad	0x3f90230d1d5e97c0              # double 0.015758709828922468
	.quad	0x3fdc96d7b9eb6748              # double 0.44670670658307587
	.quad	0x3fd78708e1acdaa8              # double 0.36761686361880175
	.quad	0x3feec1c8f6dd994a              # double 0.96115539756719071
	.quad	0x3febba9756358c9a              # double 0.8665272411129934
	.quad	0x3fdab689e2ba633c              # double 0.41739127293981304
	.quad	0x3fe4cb1ae15f5416              # double 0.6497930909923777
	.quad	0x3fc3f2b51ee9d49c              # double 0.15584434518283252
	.quad	0x3fe70409b2cfeb79              # double 0.71924290584807615
	.quad	0x3fef68e9e2895e26              # double 0.98155683751514711
	.quad	0x3fb3bf2bfe1215b0              # double 0.077135800866094283
	.quad	0x3fe548ff7f6939dc              # double 0.66516089329689576
	.quad	0x3feb8631d7897085              # double 0.86013118836446323
	.quad	0x3fefd8e98ce58e7c              # double 0.99522855299842616
	.quad	0x3fe3c863e34d4428              # double 0.61821169276129684
	.quad	0x3fa6bef48ee4d8d0              # double 0.044425623362643329
	.quad	0x3fd90f365b30cdc8              # double 0.39155348687492308
	.quad	0x3fde8a51aa1f92a8              # double 0.47719232190710636
	.quad	0x3f9c900f547b8780              # double 0.027893294841198735
	.quad	0x3fd1e6c54ffcca04              # double 0.27971012889170788
	.quad	0x3f6c2c008d3cd600              # double 0.0034389506126000224
	.quad	0x3fe4f7c77c79d5c1              # double 0.65524648963644705
	.quad	0x3fea41a0c7d37a00              # double 0.8205112364628917
	.quad	0x3fbfde42cfb1fe40              # double 0.12448518343625725
	.quad	0x3feef154ed4e9953              # double 0.96695944165257186
	.quad	0x3fd353170f9cde42              # double 0.30194641613659112
	.quad	0x3fa6718fc6ee03e0              # double 0.043835156472603165
	.quad	0x3fd36d39e9eec5d6              # double 0.30354163975706905
	.quad	0x3fe8e4a2c6eb92e6              # double 0.7779096493873936
	.quad	0x3feaba354a2e94cd              # double 0.83523048866904903
	.quad	0x3f979e55d5a46b00              # double 0.023064938702286319
	.quad	0x3febe22c1c9e72e8              # double 0.87135892476689225
	.quad	0x3fefd37ca9cc3473              # double 0.99456628001793345
	.quad	0x3febfdf75a29978c              # double 0.87475173578126108
	.quad	0x3fd4245a21926734              # double 0.31471875456337561
	.quad	0x3fe07baa6938f3cb              # double 0.51509590674651784
	.quad	0x3fe4017872f62044              # double 0.625179504903834
	.quad	0x3fe6cfb4007a8ac1              # double 0.71285438626758701
	.quad	0x3fdb6b872f8e9a3e              # double 0.42843799251787462
	.quad	0x3fe75e86a7e4a8b4              # double 0.73028881827965231
	.quad	0x3fdf4fffe180c134              # double 0.48925778409740706
	.quad	0x3fe0753eebd0e0b1              # double 0.51431222970770396
	.quad	0x3fe261004f4eabe0              # double 0.57434096803387646
	.quad	0x3fec873f8d9363c4              # double 0.89150979663383411
	.quad	0x3fd7411beab330dc              # double 0.36334894103926074
	.quad	0x3fed57755a21c1b1              # double 0.91692607501868484
	.quad	0x3fbbb5b860191cd0              # double 0.10824158044953269
	.quad	0x3f8a1a3ec6ffd140              # double 0.012745371292091634
	.quad	0x3fe4bd280a9785a7              # double 0.64809038227774785
	.quad	0x3fd1bc62908f9406              # double 0.27712310902853721
	.quad	0x3fea429a851f5dac              # double 0.82063032150738512
	.quad	0x3fef690a45595f97              # double 0.98157228035687438
	.quad	0x3fe48efcb71514fb              # double 0.64245448835632091
	.quad	0x3fe34c919e901747              # double 0.60309678048427251
	.quad	0x3fed47d99078b295              # double 0.91502073494992209
	.quad	0x3fd0318eb6386aa0              # double 0.25302474780043305
	.quad	0x3feba20f96450783              # double 0.8635328230814
	.quad	0x3fd5a237173a2730              # double 0.33802582996632946
	.quad	0x3fe9efb096cd8fcd              # double 0.81050900891977451
	.quad	0x3fd84cfc3a19097a              # double 0.37969880746472706
	.quad	0x3fef68829cbc7f95              # double 0.98150759327471581
	.quad	0x3feb74837920b5dc              # double 0.85797284753578706
	.quad	0x3fec6ae06f3a78ae              # double 0.88804647182748453
	.quad	0x3fab89d05cd6b880              # double 0.05378581174169117
	.quad	0x3fb9a78013927a80              # double 0.10021210172497241
	.quad	0x3fb85a54360fd400              # double 0.095128310393036486
	.quad	0x3fe0e562e9328eb8              # double 0.52800126596817787
	.quad	0x3f97b6f5807afd60              # double 0.02315887066538147
	.quad	0x3fbfd2a0ed857d58              # double 0.12430768774855971
	.quad	0x3fe44a9edbc63ce0              # double 0.63410895275765355
	.quad	0x3fc3a4cd42ab3690              # double 0.15346685176193775
	.quad	0x3fe243a8b31ed5c1              # double 0.57075915321791382
	.quad	0x3fe47a0c2f1dcf53              # double 0.63989838793211573
	.quad	0x3fe39c37fff3db5f              # double 0.61281967154250683
	.quad	0x3fd134cee4d25d92              # double 0.2688481554591472
	.quad	0x3fd6a83aea4d2bfe              # double 0.35401795273781989
	.quad	0x3fec3f15eeee8920              # double 0.88270088831294302
	.quad	0x3fea7ce1a9223cd1              # double 0.82774432214673699
	.quad	0x3fe763c5124bcea2              # double 0.73092893193684838
	.quad	0x3fe44edd9af23c7b              # double 0.63462715399681657
	.quad	0x3feecfd0ca6f9e28              # double 0.96286811388285276
	.quad	0x3fdf02384094bac8              # double 0.48451048189864965
	.quad	0x3fda384ed4eec844              # double 0.40968676370824064
	.quad	0x3fea12369adf767e              # double 0.81472330330480225
	.quad	0x3fe19b864b6fdc89              # double 0.55023493512898469
	.quad	0x3feed334faaf307d              # double 0.96328209840568457
	.quad	0x3fbae96ae495af08              # double 0.10512416916543199
	.quad	0x3fe713b7bd89fa48              # double 0.72115695018130399
	.quad	0x3fdaa49dfb973490              # double 0.41629743165396693
	.quad	0x3fe98df218c2e81f              # double 0.79857735477640179
	.quad	0x3fca3f7a1bb99408              # double 0.20506216386561982
	.quad	0x3fe622560ae97f6c              # double 0.69169141894597663
	.quad	0x3fed3087c4f8a498              # double 0.9121741149039222
	.quad	0x3fb61794e8cac1c0              # double 0.086297327836979854
	.quad	0x3f95b9128bfb5980              # double 0.021213807863057266
	.quad	0x3fefcdef00db3a7d              # double 0.9938883797384076
	.quad	0x3fe85fec2675ae01              # double 0.76170928489358414
	.quad	0x3fd4e0f19c7ac70a              # double 0.32622947961054705
	.quad	0x3fee70d7d0faf354              # double 0.95127478424510991
	.quad	0x3fbd834aac88c780              # double 0.11528460228217163
	.quad	0x3fdc4efb9eeee9ea              # double 0.44232073326898436
	.quad	0x3fead508e12431d2              # double 0.83850521061827465
	.quad	0x3f80459773ebc6c0              # double 0.0079452354670793701
	.quad	0x3fe5a2bc6508f94f              # double 0.6761152242031957
	.quad	0x3fd373c9531fd50c              # double 0.30394204251872803
	.quad	0x3fcb362e521ae484              # double 0.21259097107921232
	.quad	0x3fe0a177df7eb3f5              # double 0.5197104802260798
	.quad	0x3fc4140efe8eb1f0              # double 0.1568621390300815
	.quad	0x3fda0ef70783002e              # double 0.40716338857237389
	.quad	0x3fa9babb28905bf0              # double 0.050252770139358804
	.quad	0x3fe2e22e7aaebbe6              # double 0.59011005364834257
	.quad	0x3fea83fa56af2e67              # double 0.82861058168914503
	.quad	0x3fec7dc59914c9f1              # double 0.89035301111863252
	.quad	0x3fddbe4069714cfe              # double 0.46473703667761856
	.quad	0x3fe67be9d4a84d5d              # double 0.70262614760069264
	.quad	0x3fb9f92dc79a8d78              # double 0.10145841715944026
	.quad	0x3fc61520c5824fbc              # double 0.17251977581019939
	.quad	0x3fd86bda6b2828a0              # double 0.38158283676660609
	.quad	0x3fd45aabc892df2e              # double 0.31803412043835777
	.quad	0x3fe8ea6af81b847f              # double 0.77861545999998316
	.quad	0x3fc169c6bed67c68              # double 0.13604053800824834
	.quad	0x3fe581fa1eccfeaa              # double 0.6721163369729386
	.quad	0x3fd4aae4584c3f38              # double 0.3229304182323065
	.quad	0x3fc3ebee28bb925c              # double 0.15563752163793054
	.quad	0x3fd7606849a08fe8              # double 0.36525923910289615
	.quad	0x3fef43755d4663f8              # double 0.97698467462316695
	.quad	0x3fe19f555f6c5c01              # double 0.55069988858565477
	.quad	0x3fe2071caeb95a47              # double 0.56336816907680365
	.quad	0x3fe6ee70758f7c22              # double 0.71660635911019122
	.quad	0x3fe02c2cc019ffaf              # double 0.5053924324019955
	.quad	0x3fe2015f98831ba1              # double 0.56266765391852769
	.quad	0x3fde4597be02cf2a              # double 0.47299760394820345
	.quad	0x3fe2e9fb61c8e40a              # double 0.59106225107746124
	.quad	0x3fe8af3a6cf62c58              # double 0.7713901641994978
	.quad	0x3fed8c65a333daf0              # double 0.92338830829143426
	.quad	0x3fdff19400c1cd80              # double 0.49911975931100727
	.quad	0x3fe26c7621f0fed8              # double 0.57573992375543082
	.quad	0x3fe38dc6f2d73926              # double 0.61105678014590548
	.quad	0x3fd3c74efcd3d8fc              # double 0.30903982820690579
	.quad	0x3fee7ce09f11256c              # double 0.9527438265587711
	.quad	0x3fdcdd9a0362aaa8              # double 0.45102548914534646
	.quad	0x3fe7b46fe85f97ca              # double 0.74077601800376525
	.quad	0x3fcbb822311c5034              # double 0.21655681035974939
	.quad	0x3fd524d27fdeb748              # double 0.33037245261481418
	.quad	0x3fda6ed6fed30baa              # double 0.41301512608714097
	.quad	0x3fede736b5649658              # double 0.93447432926468377
	.quad	0x3f9408607b48abe0              # double 0.019563205265665462
	.quad	0x3febb929e9341e67              # double 0.86635299251151998
	.quad	0x3fe2ece738cf90b5              # double 0.59141884895190933
	.quad	0x3fee4b20423aaf44              # double 0.94667065558812923
	.quad	0x3fe507c4ce0bdac5              # double 0.65719833606166189
	.quad	0x3fd799fdb9df66fa              # double 0.36877387191417166
	.quad	0x3fd842bbfa301580              # double 0.37907313759236416
	.quad	0x3fd75d9d5e300e24              # double 0.36508878896731489
	.quad	0x3fede81ca64f041e              # double 0.93458397371444213
	.quad	0x3fc4e8657b83efd8              # double 0.16334217577957477
	.quad	0x3fbfb699b3d5f4d0              # double 0.12388001099130297
	.quad	0x3fd166f7d46a5a56              # double 0.27190967315383341
	.quad	0x3fea148bfa48123f              # double 0.81500815280066508
	.quad	0x3fd8ea855af16df6              # double 0.38931402093086775
	.quad	0x3fbebd9b3f763d30              # double 0.12008066462862099
	.quad	0x3fe15adb35eac089              # double 0.54234085589088565
	.quad	0x3fe8591a66ec66da              # double 0.76087684728846772
	.quad	0x3fb36950597e9a50              # double 0.075825712060216376
	.quad	0x3fda30440dfb86d8              # double 0.4091959129856213
	.quad	0x3fe14858ff3c4b1e              # double 0.54008149958312734
	.quad	0x3fc6472a6c8a8428              # double 0.17404680538041473
	.quad	0x3fc52f572c4f2930              # double 0.16550721801315538
	.quad	0x3fe975d34706de11              # double 0.79563297150065371
	.quad	0x3fda0fcf8b328c90              # double 0.40721500962735835
	.quad	0x3fd5b885d126f864              # double 0.33938737320921164
	.quad	0x3fbd352141c85ea8              # double 0.11409194808981715
	.quad	0x3fe7e2a60c2f075a              # double 0.74641706828718246
	.quad	0x3feb032da9647777              # double 0.84413798412764052
	.quad	0x3fd9437aec5ddd98              # double 0.39474366266900907
	.quad	0x3fe749d1339915da              # double 0.72776088788730964
	.quad	0x3fd7a9c691eb3eb0              # double 0.36973728418250129
	.quad	0x3fbd35c1979b8860              # double 0.11410150481563752
	.quad	0x3feb96e6a4429c0b              # double 0.8621705253798394
	.quad	0x3feb4593fc386c09              # double 0.85224341642185764
	.quad	0x3fdf14da36c939ac              # double 0.48564772939871648
	.quad	0x3fcc4cb394b7b028              # double 0.22109074365232684
	.quad	0x3fc5e90a993d5a88              # double 0.17117435915379908
	.quad	0x3feb491a030e323e              # double 0.8526735362698401
	.quad	0x3fcbf4151824b104              # double 0.21838630370019285
	.quad	0x3fdc9caf414d0b84              # double 0.44706326844259814
	.quad	0x3f94c78f9118df20              # double 0.020292514067676071
	.quad	0x3fe2f9a9963ef4c8              # double 0.59297637314707519
	.quad	0x3fdeb70a12515f82              # double 0.47992183483938089
	.quad	0x3fea5c100bf3d816              # double 0.82373812040782712
	.quad	0x3fe6a71675814f58              # double 0.70789645147531655
	.quad	0x3fd7a5b7f0f9987c              # double 0.36948965580666715
	.quad	0x3fdcb721a63bc1b0              # double 0.44867745622380095
	.quad	0x3fa1e8b4cd732260              # double 0.034978532866777767
	.quad	0x3fc755aa8c984b64              # double 0.18230182518945093
	.quad	0x3fdfc9f481476fb2              # double 0.49670136094004669
	.quad	0x3fe5b7a3d4e4d13a              # double 0.67866698818992366
	.quad	0x3fdffd7bc1e2dc28              # double 0.49984640058704821
	.quad	0x3fda5a571c44a654              # double 0.41176393280566015
	.quad	0x3fe97c2dfc4b5575              # double 0.7964086463568224
	.quad	0x3fe17cb268d17c90              # double 0.5464717910034711
	.quad	0x3f94c9ed3657d080              # double 0.020301538888773951
	.quad	0x3fa86b46b8086800              # double 0.047693452801652825
	.quad	0x3fcbf2bd80a474bc              # double 0.21834534436576358
	.quad	0x3fb3c4e5f8ae9370              # double 0.077223180020679071
	.quad	0x3fdb77b78d15b680              # double 0.42918194558919964
	.quad	0x3fec931c4410ee07              # double 0.8929578141609803
	.quad	0x3fcf51f71d334fb8              # double 0.24468888212015627
	.quad	0x3fe11f7c480a503f              # double 0.53509344168060824
	.quad	0x3f9f5405facd28a0              # double 0.030593961174681383
	.quad	0x3fd73b1fd7ca921c              # double 0.36298366616600375
	.quad	0x3faad5e72829f9a0              # double 0.052413200047328745
	.quad	0x3fe2f90dfc4abba4              # double 0.59290217662588818
	.quad	0x3fe1482a1535a9d6              # double 0.54005912916664545
	.quad	0x3fc146c48ebeedf4              # double 0.1349721619607035
	.quad	0x3fbff8aa37a9b3e8              # double 0.12488807543714098
	.quad	0x3fbf49d4b6dbbba0              # double 0.12222032036127795
	.quad	0x3fec3c9f1684c47a              # double 0.88240007780235818
	.quad	0x3fda307423c2d1d2              # double 0.40920737736021551
	.quad	0x3fea9dfccd269c98              # double 0.83178558414955983
	.quad	0x3fd43f8ffb10bd1a              # double 0.31637954252342271
	.quad	0x3fdce0ea4517d350              # double 0.45122772929544386
	.quad	0x3fe35a66bbe07d9f              # double 0.6047853154631645
	.quad	0x3faa802ad323ced0              # double 0.051759088777456719
	.quad	0x3fe0e3adce8d9842              # double 0.52779283850100733
	.quad	0x3fe2d0580661b578              # double 0.58793259855671831
	.quad	0x3fe15420f4dac20e              # double 0.54151962111615304
	.quad	0x3fc8d213f74f18b0              # double 0.19391107154496501
	.quad	0x3fcb2ecf1ba32fe8              # double 0.21236599778637744
	.quad	0x3fd3431b7ddbae88              # double 0.30097090998490517
	.quad	0x3fdab604ed658ca8              # double 0.4173595732047013
	.quad	0x3fe8d95cbcf98707              # double 0.7765334788238939
	.quad	0x3fe3faa2eea8bec3              # double 0.62434527028195708
	.quad	0x3fcec582d6657da0              # double 0.24040255993439263
	.quad	0x3feae7e0199eded6              # double 0.84080510143300091
	.quad	0x3fe7db07c1edaa5b              # double 0.74548709751736497
	.quad	0x3fd007894fe1138c              # double 0.25045998383239332
	.quad	0x3fef878eb0532142              # double 0.98529753149436083
	.quad	0x3fd65f95db2544da              # double 0.34958406830726363
	.quad	0x3fe4a90845360bdf              # double 0.64563382642552003
	.quad	0x3fec87ea0cad5eb7              # double 0.89159109569569395
	.quad	0x3fda40309136b8d4              # double 0.41016782933264762
	.quad	0x3fa1104a2a1031e0              # double 0.03332740558116476
	.quad	0x3fcc59a49168b658              # double 0.22148568248796852
	.quad	0x3fb129ff08cb0c20              # double 0.067047061583295875
	.quad	0x3fedee94f1740887              # double 0.93537375601614847
	.quad	0x3fc3c65bc850ad80              # double 0.15449092179310853
	.quad	0x3fec6f67d0d471fd              # double 0.88859930789072872
	.quad	0x3fd5927b535a154c              # double 0.33706553592522392
	.quad	0x3fc3d27f18ad2678              # double 0.15486134247685235
	.quad	0x3fef699d8bc3595a              # double 0.98164250657536489
	.quad	0x3fe274877e173646              # double 0.57672476412853579
	.quad	0x3fd309aedf566d96              # double 0.2974660092383713
	.quad	0x3fe2411bcec2b310              # double 0.57044783003729727
	.quad	0x3fc240ccccfedf74              # double 0.14260253915358201
	.quad	0x3fe8944a696edef7              # double 0.76810188858414008
	.quad	0x3f7c16c0be9d5f00              # double 0.0068576363645076466
	.quad	0x3fea368b58bf3a8e              # double 0.8191582425441355
	.quad	0x3fd925f605731fb6              # double 0.39294195682714006
	.quad	0x3febebef377ea0c5              # double 0.87255059088513376
	.quad	0x3fedb37a0f385677              # double 0.92815878842038912
	.quad	0x3fdfeeff9c99732a              # double 0.49896230976973988
	.quad	0x3fe2cc5b06331f96              # double 0.58744574747923894
	.quad	0x3feb05fa2bbb419a              # double 0.84447964230826078
	.quad	0x3fe941ed400d0493              # double 0.78929770002300115
	.quad	0x3feb151b0a175101              # double 0.84632636996187227
	.quad	0x3fd0c5bc1562bd88              # double 0.26206876839111048
	.quad	0x3fe69e06fd0d56a4              # double 0.7067904417442219
	.quad	0x3fe45bb14ff58a65              # double 0.63619294755001177
	.quad	0x3fd83d1450bd5fde              # double 0.37872798809757835
	.quad	0x3fe8297773a88c9a              # double 0.75506184186487535
	.quad	0x3fe677621aecd549              # double 0.70207314738096571
	.quad	0x3fce11f2ec16d698              # double 0.23492275741380264
	.quad	0x3fe5311d4dc1b10a              # double 0.66224541842305595
	.quad	0x3fefb83cf9a549b3              # double 0.99124001273076201
	.quad	0x3fc9a42d156e1aec              # double 0.20032275720969694
	.quad	0x3feac55a1192fbbe              # double 0.83659079964115057
	.quad	0x3fea0d29177e3610              # double 0.81410650814513197
	.quad	0x3fe3f828add84c2e              # double 0.62404283479771094
	.quad	0x3fe60da3b62eabd2              # double 0.68916497786028175
	.quad	0x3fee34436b79ce8c              # double 0.94387980452889186
	.quad	0x3fd4f0d5bcf0ea32              # double 0.32719939662243569
	.quad	0x3fa836aeb0a86220              # double 0.04729219347445146
	.quad	0x3fd4144d8f816cdc              # double 0.31373919500556524
	.quad	0x3fba3a553cde7880              # double 0.10245259033260545
	.quad	0x3fd05a3191225894              # double 0.25550498173959935
	.quad	0x3fe54b9f56a5d2b0              # double 0.66548125193965824
	.quad	0x3fef2f64a0a4590c              # double 0.9745352876223321
	.quad	0x3fcb29ab0e4f8748              # double 0.2122091121555576
	.quad	0x3fd1b10e1e5a26a6              # double 0.27643158878400198
	.quad	0x3fe45d5e8cbf9324              # double 0.63639762391958188
	.quad	0x3fe5645ab5bc0eb1              # double 0.66850028510130788
	.quad	0x3fe20bc658e46f67              # double 0.56393735276968193
	.quad	0x3fdba5f86e440850              # double 0.43200503128185108
	.quad	0x3fc4320592b2d820              # double 0.15777654326456148
	.quad	0x3fde09037ee81e54              # double 0.46930014985307378
	.quad	0x3fe028b73f48d0c2              # double 0.50497019157639778
	.quad	0x3f93f06fb26b2f00              # double 0.019471879257976887
	.quad	0x3fb776f06dc192e8              # double 0.091658617778715645
	.quad	0x3fde0ec01bcb3b54              # double 0.46965029443974982
	.quad	0x3feec154c4dbb6c5              # double 0.96109999131086765
	.quad	0x3fe1ad4d7aa0a111              # double 0.55240510893512085
	.quad	0x3fcb0f039946e760              # double 0.21139569267489389
	.quad	0x3fd767e7263f48ae              # double 0.3657167314060058
	.quad	0x3fd3c7d4e489e394              # double 0.30907175367570372
	.quad	0x3fe005708ad107e3              # double 0.50066401589014864
	.quad	0x3f859dab01534ec0              # double 0.010554634073208446
	.quad	0x3feec9829a9bd842              # double 0.96209840962433923
	.quad	0x3fe8a096c4f4ca97              # double 0.76960314243327133
	.quad	0x3fd6ed5cf29af83e              # double 0.35823749248436687
	.quad	0x3fe3276bb2efb004              # double 0.59856209705822083
	.quad	0x3fe16b49f7377bd5              # double 0.54434679302709787
	.quad	0x3fcee319a01cb310              # double 0.24130554502462376
	.quad	0x3fe9e8e4ab50a5b8              # double 0.80967935047117745
	.quad	0x3fca8cd89d934a80              # double 0.20742328352078587
	.quad	0x3fed0883e4c0493d              # double 0.90728945424988405
	.quad	0x3fe1e40924f81cab              # double 0.55908639164490148
	.quad	0x3fc372264a039478              # double 0.15192106832470009
	.quad	0x3fe9613aa9d72fb1              # double 0.79311879322039236
	.quad	0x3fe09dafb6a4e9c3              # double 0.51924882576650366
	.quad	0x3fcd6411935e0248              # double 0.22961635299363281
	.quad	0x3fe7bd6a8955e359              # double 0.74187208960857298
	.quad	0x3fe9fa2625e87a39              # double 0.81178576854637818
	.quad	0x3fe56a2151dc90c7              # double 0.66920534123030329
	.quad	0x3fc22d1237f27d2c              # double 0.14200046283529255
	.quad	0x3fef64b737a73461              # double 0.98104439611200799
	.quad	0x3f8514b09654eb80              # double 0.010293368900070154
	.quad	0x3f865248b4282580              # double 0.010899131772947213
	.quad	0x3fdf8a36af9f108a              # double 0.49281088972589571
	.quad	0x3fec0a3aeb6e5f80              # double 0.87624879820485546
	.quad	0x3fe4771ad3800a6f              # double 0.63953915890335888
	.quad	0x3fea46a7a19ae52d              # double 0.82112485469329999
	.quad	0x3fc1fa0d9fb32148              # double 0.14044351861799442
	.quad	0x3faa660198f668c0              # double 0.051559495851692727
	.quad	0x3fec9b73ab91b8d8              # double 0.89397605428328131
	.quad	0x3fc5ef678b084520              # double 0.17136854447066074
	.quad	0x3fcecfc387b3786c              # double 0.24071544767406594
	.quad	0x3fe8ca82fe39eed8              # double 0.77472066548895224
	.quad	0x3fe0d5ad00d03218              # double 0.52608347090569207
	.quad	0x3fb153be3beb7b38              # double 0.067684068325871816
	.quad	0x3fec6e2c87b4aa4f              # double 0.88844896798156892
	.quad	0x3fe0216eda885d41              # double 0.50408117944872555
	.quad	0x3fd103d5849cedc6              # double 0.26585901213158214
	.quad	0x3fe4af84558b74d1              # double 0.64642540653189873
	.quad	0x3fb67b372cca36f8              # double 0.087817619738611685
	.quad	0x3fdc6729d7cd94ec              # double 0.44379659723774867
	.quad	0x3fcfbff208401fe8              # double 0.24804520991187862
	.quad	0x3fee663be950e917              # double 0.94997973985235518
	.quad	0x3fe765b52bed9967              # double 0.73116549091063809
	.quad	0x3fe017f4f730a150              # double 0.50292442588128417
	.quad	0x3fe7e613aef38f74              # double 0.74683555765339671
	.quad	0x3fde87bac519ac6a              # double 0.47703427551340971
	.quad	0x3fd605164dc01096              # double 0.34406049340055611
	.quad	0x3fd855173facda78              # double 0.38019353121072852
	.quad	0x3fe6d144996ebe15              # double 0.71304540602972344
	.quad	0x3fd903e284fd1fac              # double 0.39086211192306552
	.quad	0x3fc79988effcd59c              # double 0.18437301366945469
	.quad	0x3fe40c70f5f49fbf              # double 0.62651870763965423
	.quad	0x3fd64c4e2bb6fd90              # double 0.34840730923675611
	.quad	0x3fed3799a68eb67e              # double 0.91303713351017257
	.quad	0x3f849bc0d08256c0              # double 0.010062700617975096
	.quad	0x3fe7670763224509              # double 0.73132676469882185
	.quad	0x3fe38bc79d21db3d              # double 0.61081295671360858
	.quad	0x3fe3936a5c099b34              # double 0.61174505210951802
	.quad	0x3fdcd6af7b89b5f2              # double 0.45060336174250815
	.quad	0x3fb7c07c5b41e238              # double 0.092780849723461567
	.quad	0x3feeda5ebaca337b              # double 0.96415649874107545
	.quad	0x3fcb2f815dce00bc              # double 0.21238724785144381
	.quad	0x3fe591da8c1eb1ff              # double 0.67405440680664686
	.quad	0x3fe55189e6401ba8              # double 0.66620345087800548
	.quad	0x3fa955d29bf9ea60              # double 0.049482900180880973
	.quad	0x3fcbb02f278b8370              # double 0.21631421500117254
	.quad	0x3fca1501da55de94              # double 0.2037660900202708
	.quad	0x3fcc960534851dd0              # double 0.22332825722172212
	.quad	0x3fea01c952618b8c              # double 0.81271806802793511
	.quad	0x3fe0db5fd240640a              # double 0.5267790895915152
	.quad	0x3fef0f6995b41025              # double 0.97063140143336978
	.quad	0x3fd660bc3c8b9f32              # double 0.34965425408016693
	.quad	0x3fcb3033e3cf2cb4              # double 0.21240852950572775
	.quad	0x3fb2b18586695b50              # double 0.073021264376945227
	.quad	0x3fdfb78845754276              # double 0.49557692320835345
	.quad	0x3fd2f7336b9c3f9a              # double 0.29633794316122819
	.quad	0x3fde122e09594a14              # double 0.46985960877387467
	.quad	0x3fea29255e83431b              # double 0.81752270183105524
	.quad	0x3fec86f75acb0732              # double 0.8914753697683635
	.quad	0x3fedcafb435eb11a              # double 0.93102801473790753
	.quad	0x3fcd292a93bfbd10              # double 0.22781879629426571
	.quad	0x3fdea567f1fa4fc0              # double 0.47884558325426596
	.quad	0x3fe68eee81d4566c              # double 0.70494771344483587
	.quad	0x3fe99c3edc19a7cc              # double 0.80032294262240943
	.quad	0x3fe834fe0922c8f1              # double 0.75646878990508359
	.quad	0x3fd229257fcfb50a              # double 0.28376138192727807
	.quad	0x3fe85c0216aa02d7              # double 0.7612314646395032
	.quad	0x3fd6617c9bbe1e98              # double 0.3497001191067084
	.quad	0x3fd34fee1f2e5516              # double 0.30175355000513215
	.quad	0x3fb78385f6a48108              # double 0.091850636210896508
	.quad	0x3fea45ba6899ab6d              # double 0.82101173810711503
	.quad	0x3fd37fb0cc9acea2              # double 0.30466861706666226
	.quad	0x3fefe7fa588ca90d              # double 0.99706761641326269
	.quad	0x3fe50fb1b14165d9              # double 0.6581657850285253
	.quad	0x3fe2d91c2ffa4602              # double 0.58900269861823085
	.quad	0x3fc89b62a791984c              # double 0.19224198515002155
	.quad	0x3fede6de2088e6ee              # double 0.93443209032485952
	.quad	0x3fc555bb7dd2dfc8              # double 0.16667884486900975
	.quad	0x3fdd9276af805d1e              # double 0.4620644296532691
	.quad	0x3fd501460eae3c6a              # double 0.32820273812917
	.quad	0x3fdc0d6b5afc1ef8              # double 0.43831905255545633
	.quad	0x3febaecfc5f7cf58              # double 0.86508930841089704
	.quad	0x3fd8abb7ef6591a2              # double 0.38548086527432635
	.quad	0x3fe9bd504ed48ba7              # double 0.80435958286795006
	.quad	0x3fd30915b53eb722              # double 0.2974294919939543
	.quad	0x3fb1abc52ee3c398              # double 0.069027255962068046
	.quad	0x3feab426a2696c37              # double 0.83449107857757709
	.quad	0x3fc32f51af167e74              # double 0.14988156365597016
	.quad	0x3fca1254702cf914              # double 0.20368438222244178
	.quad	0x3fe94dbbbbdaa9d7              # double 0.79073893251671279
	.quad	0x3fe2efafdd9e935f              # double 0.59175866398855337
	.quad	0x3f928824e0c39160              # double 0.018097473352911009
	.quad	0x3fefdc24a5536459              # double 0.99562294283090146
	.quad	0x3fe0a55e4a7e4610              # double 0.52018656300987409
	.quad	0x3feb8086117b69a5              # double 0.85943892874211214
	.quad	0x3fd84441cd10d786              # double 0.37916607881503983
	.quad	0x3fd557619ccb5fca              # double 0.33345833122211543
	.quad	0x3f8462b3c5d39dc0              # double 0.0099538845774550521
	.quad	0x3fe30f346366b894              # double 0.59560603536899004
	.quad	0x3fed8d9a646c8d2e              # double 0.92353553403919419
	.quad	0x3fe0f547ddab6340              # double 0.52994149489232001
	.quad	0x3febcc4dfa75b1bb              # double 0.86868952672880739
	.quad	0x3fe245b6a61bb066              # double 0.57100994532585214
	.quad	0x3fc661db9507f7bc              # double 0.17486138131056161
	.quad	0x3fe2f0f0ac2b2347              # double 0.59191163660680324
	.quad	0x3fefa9f87f3cce5c              # double 0.98949837542609087
	.quad	0x3fd30b2c0191668a              # double 0.29755687859651714
	.quad	0x3f930df0368a52a0              # double 0.018607858017804291
	.quad	0x3f9f6e08b1850880              # double 0.030693183741512531
	.quad	0x3fe904f9749dc702              # double 0.78185723091721138
	.quad	0x3f9392452f5870a0              # double 0.019112664236772603
	.quad	0x3feea134b3c5bfd4              # double 0.957178450697024
	.quad	0x3fc963d18738a520              # double 0.19835871794320159
	.quad	0x3fea70d46b2fe5af              # double 0.82627316412906804
	.quad	0x3fe72d6a11cec4de              # double 0.72429374197067964
	.quad	0x3fdc3a3f07f57d36              # double 0.44105506684532558
	.quad	0x3fe33cd7c0749b12              # double 0.60117709721530077
	.quad	0x3fb4db41aff12150              # double 0.081470590071267112
	.quad	0x3febe807fd0d98d6              # double 0.87207412170826148
	.quad	0x3fdb485233cc9a92              # double 0.42628912981528189
	.quad	0x3feaac3d1220a97a              # double 0.83352521458191053
	.quad	0x3fbd62929036e768              # double 0.11478534718380973
	.quad	0x3fdd20e992c4d050              # double 0.4551338132180307
	.quad	0x3fe730ebd6441c51              # double 0.72472183083380959
	.quad	0x3fee21703b898619              # double 0.94158183697090003
	.quad	0x3fec69a30c44f2de              # double 0.88789513012269672
	.quad	0x3f8ba96b19171900              # double 0.013506733611290844
	.quad	0x3fe10977eb32f81b              # double 0.5324058145267857
	.quad	0x3fedaa702297a386              # double 0.92705542331997104
	.quad	0x3fd67ca2596f2ace              # double 0.35135706647694753
	.quad	0x3f69a8ae667b5900              # double 0.0031321913009875191
	.quad	0x3feff507d6fca184              # double 0.99866096486680122
	.quad	0x3fa62441fafb7030              # double 0.043245374572251527
	.quad	0x3fe6ed13586f3648              # double 0.71643988869045305
	.quad	0x3fd2d3526439faea              # double 0.29414806163542428
	.quad	0x3fe4e70fb092b6d7              # double 0.65320572363790574
	.quad	0x3fdad0ac259756ba              # double 0.41898635550510799
	.quad	0x3fc0ef33de06db98              # double 0.13229988423492212
	.quad	0x3fb8ed11acb54010              # double 0.097367386498490526
	.quad	0x3fe74827a039932c              # double 0.72755795759130626
	.quad	0x3fcdba13e5c76e34              # double 0.23224114150694819
	.quad	0x3fd256114c7b0526              # double 0.28650314778140495
	.quad	0x3fab2dc984881610              # double 0.053083703449413489
	.quad	0x3fe32fff216a16d7              # double 0.59960896040203238
	.quad	0x3fb2bd47f4c1bc38              # double 0.073200700049469769
	.quad	0x3fddd1930fe59050              # double 0.4659164099923645
	.quad	0x3fe1d799d30087f9              # double 0.55756846629469614
	.quad	0x3fe6e9a99b7bcd6b              # double 0.71602325790301558
	.quad	0x3fe0afb7ca6c9925              # double 0.52144994293192737
	.quad	0x3fd5317645f385ae              # double 0.33114392119577019
	.quad	0x3fd121a1ae168df0              # double 0.26767770767966592
	.quad	0x3fe91a2c312eff90              # double 0.78444490057153082
	.quad	0x3fc1ee33678bcf44              # double 0.14008181148494192
	.quad	0x3fd7102f4de8eb9a              # double 0.3603628407324152
	.quad	0x3fc29e684cac1a68              # double 0.14545921081317492
	.quad	0x3fd261abe8623620              # double 0.28721139615740476
	.quad	0x3fd2fc5f8ab480b8              # double 0.29665363831919533
	.quad	0x3fe0dcd5aa984c94              # double 0.52695735282249467
	.quad	0x3fec04ca2376a532              # double 0.87558466841179539
	.quad	0x3fa9f4b6ae1fcc00              # double 0.050695141559025103
	.quad	0x3fec70530e99e7bb              # double 0.88871147968097064
	.quad	0x3fbc2d2b187556a0              # double 0.11006421420219192
	.quad	0x3fead416b6187420              # double 0.83838973584682108
	.quad	0x3fef9cdbd4a49837              # double 0.98789779216600137
	.quad	0x3fdfece693636906              # double 0.4988342704142642
	.quad	0x3fd5947c8c0373a4              # double 0.33718789742652633
	.quad	0x3fea017a2820d69d              # double 0.81268031919053707
	.quad	0x3fd28bdf0fd2dd58              # double 0.2897870687988493
	.quad	0x3fe0544c6c11e9f4              # double 0.51029034717004018
	.quad	0x3fca1de2e8185e48              # double 0.20403705914280779
	.quad	0x3fe5dfb946f9bbd7              # double 0.6835600267639802
	.quad	0x3fdd1bdeca81e4fe              # double 0.45482606674302406
	.quad	0x3fe67b21f8079c07              # double 0.70253084605508398
	.quad	0x3fed637315fa0a4d              # double 0.91838983814552366
	.quad	0x3fc0da6302a3f190              # double 0.13166463498044978
	.quad	0x3fddd5c2ac73f7c6              # double 0.46617190209496717
	.quad	0x3fcd824bd7e0d830              # double 0.23053882637913281
	.quad	0x3fe715332d5c8581              # double 0.72133787974978258
	.quad	0x3fe736b059e02945              # double 0.72542588762124949
	.quad	0x3fea98653cab7575              # double 0.83110296105921455
	.quad	0x3feeb423322a7141              # double 0.95948943899160366
	.quad	0x3fd9e18e057c0a56              # double 0.40439177070235155
	.quad	0x3fe60410e0fcd128              # double 0.68799632971653057
	.quad	0x3fe8ed848e747afb              # double 0.7789938719105004
	.quad	0x3fb4e07b3e72fe60              # double 0.081550314661393397
	.quad	0x3fe421852e5241f5              # double 0.62909182593472102
	.quad	0x3fd170a2f4754b66              # double 0.27249978897923766
	.quad	0x3fe2e7c95b57c8c6              # double 0.59079425659572204
	.quad	0x3fd3ad91761b7c5c              # double 0.30746876272127621
	.quad	0x3feab52b4bccfc5d              # double 0.83461537175015688
	.quad	0x3fe8389978d2819c              # double 0.7569091186342578
	.quad	0x3fe85f1561d09f5f              # double 0.76160687546233052
	.quad	0x3fd4472aef044c00              # double 0.31684373227579954
	.quad	0x3fef5ead2f10aaa2              # double 0.98030718986895615
	.quad	0x3fdcb4e8e2c707dc              # double 0.4485418524383229
	.quad	0x3feb9ebd33332f64              # double 0.86312732696522376
	.quad	0x3feb25f473736b2d              # double 0.84838316487307497
	.quad	0x3fd79f3851e2ccf6              # double 0.36909301754640411
	.quad	0x3fd1d3f38cd43b94              # double 0.27856148484073029
	.quad	0x3fdff37849ad7c28              # double 0.49923522181592483
	.quad	0x3fea8520343a82bf              # double 0.82875070763483183
	.quad	0x3fdd7c0dcaa70904              # double 0.46069664755135897
	.quad	0x3fcd355f51e5c490              # double 0.22819129465964183
	.quad	0x3fe99ba1bfd82e3e              # double 0.80024802655811533
	.quad	0x3fd2967d93edd3d8              # double 0.29043521352951762
	.quad	0x3feb83cae43aeaa2              # double 0.85983795715522526
	.quad	0x3fea8032432c999b              # double 0.82814896697964302
	.quad	0x3fd971d2bc99d930              # double 0.39757221620620253
	.quad	0x3fe98ef326d2b454              # double 0.79869992811803536
	.quad	0x3fcd24c748a7a8f4              # double 0.22768488929370501
	.quad	0x3fd8f64ebf2aeae8              # double 0.390033423125415
	.quad	0x3fefa63a6933aad4              # double 0.98904152438384551
	.quad	0x3fce27c11f00651c              # double 0.23558820737597663
	.quad	0x3fc9155583f9cb10              # double 0.19596356338623666
	.quad	0x3fd85d6db06205c0              # double 0.38070242142574884
	.quad	0x3fe69819e4591f52              # double 0.70606703376049951
	.quad	0x3fc12419affcc290              # double 0.13391419499523183
	.quad	0x3fcf7db5a961c3cc              # double 0.24602385302162444
	.quad	0x3fe57ddebd0fdab6              # double 0.6716149990669098
	.quad	0x3fe9338368d3d204              # double 0.78753824686151618
	.quad	0x3fe7197d37096767              # double 0.72186146497118109
	.quad	0x3fce6486c31d62d0              # double 0.23744282271470363
	.quad	0x3fc2bffdb0adc0bc              # double 0.14648409964457254
	.quad	0x3fec3768fb224fa8              # double 0.88176392602553211
	.quad	0x3fbd0658076f8140              # double 0.11337804967434284
	.quad	0x3fe34fd3a9dd5dee              # double 0.60349448372556735
	.quad	0x3fec8ae6112e8cf0              # double 0.89195540767505399
	.quad	0x3fb6814475d41f78              # double 0.08790996433901721
	.quad	0x3fe399e7cf61a0d0              # double 0.61253729347392927
	.quad	0x3fd46d722cfcf636              # double 0.31918005364773039
	.quad	0x3fc235ed805c1ebc              # double 0.14227074401445872
	.quad	0x3fee0c79782af5b3              # double 0.9390227648761339
	.quad	0x3fe6c92186f308ed              # double 0.71205211980148209
	.quad	0x3f78b817d62c1500              # double 0.0060349398725112469
	.quad	0x3fe1676ef2518dab              # double 0.54387614562840747
	.quad	0x3fc02d2ee22ea0f0              # double 0.12637887996721231
	.quad	0x3fe8d03c02542cfb              # double 0.77541923956724135
	.quad	0x3fdb8e8c94b57f8a              # double 0.43057550928460187
	.quad	0x3fddaae0debe6528              # double 0.4635545897704838
	.quad	0x3fdbb08309cdb89e              # double 0.4326484294641747
	.quad	0x3fb0632938892e98              # double 0.064013077070905644
	.quad	0x3fe93277d8a6b468              # double 0.78741066279111482
	.quad	0x3fecc5683afd0abc              # double 0.89909755250149414
	.quad	0x3fed1525b1fee41c              # double 0.90883145108012142
	.quad	0x3fec6b8fff9579da              # double 0.88813018721321701
	.quad	0x3fe8b38e861cd65a              # double 0.77191854661823389
	.quad	0x3fd2f402a8dd3782              # double 0.29614321222913287
	.quad	0x3fdc2aba3e0b256c              # double 0.44010788020076208
	.quad	0x3fe23212e608648d              # double 0.56861252716329747
	.quad	0x3fdc65f3a65770ac              # double 0.44372264141362439
	.quad	0x3fed0acef59c9f31              # double 0.90756938906722529
	.quad	0x3fcb2616bcd7da5c              # double 0.21209987851007639
	.quad	0x3fd7a90d9d4af902              # double 0.36969318733817158
	.quad	0x3fd3725695401712              # double 0.30385365081052484
	.quad	0x3fd0ae5ac4a9a85c              # double 0.26064175801605471
	.quad	0x3fbf575717667598              # double 0.122426455700824
	.quad	0x3fbc68040e7f50a8              # double 0.11096215585650049
	.quad	0x3fe9e780feca817a              # double 0.80950975192904129
	.quad	0x3fef782156c6cc72              # double 0.98341433476015383
	.quad	0x3fe2d7e6d1953c45              # double 0.58885518011255356
	.quad	0x3fda1871a1be23d4              # double 0.40774193568409811
	.quad	0x3fe764c663ac5d8b              # double 0.73105163066331735
	.quad	0x3febc57b739e0d0d              # double 0.86785671788712337
	.quad	0x3fec1e64cd402c5d              # double 0.87871017539999807
	.quad	0x3fe0137b81fe7af4              # double 0.50237822904077101
	.quad	0x3fb4df8dd1a9dce8              # double 0.081536163031944775
	.quad	0x3fed5279d6ccb00a              # double 0.9163178630165032
	.quad	0x3fda7b5691ef6b40              # double 0.4137779641293271
	.quad	0x3fe49c481a15e741              # double 0.64407734961353225
	.quad	0x3fcb49d442554040              # double 0.21319058646122535
	.quad	0x3fe3cff2f27fe445              # double 0.6191344009704457
	.quad	0x3feababeba269ff8              # double 0.83529602391808933
	.quad	0x3fdabb79aa4424b2              # double 0.417692581439563
	.quad	0x3fb23646e12b8958              # double 0.071140699361000315
	.quad	0x3fe42ed0058a9a06              # double 0.63071442682559176
	.quad	0x3fed451d867c1b61              # double 0.91468693033753479
	.quad	0x3fc996c651a91e44              # double 0.19991377818426959
	.quad	0x3fec45f59403a929              # double 0.88353995236437755
	.quad	0x3fedb66b5300ffff              # double 0.92851797305775097
	.quad	0x3fe5679845d88244              # double 0.66889585153337139
	.quad	0x3fe01faeb53854b2              # double 0.50386748690166017
	.quad	0x3fa9bfda9990f7d0              # double 0.050291854139217329
	.quad	0x3fc4143a404e920c              # double 0.15686729564653523
	.quad	0x3fdb2a5a6b0820dc              # double 0.42446003391570541
	.quad	0x3fea26521807b354              # double 0.81717781728148475
	.quad	0x3fded8c4ffe051ea              # double 0.48198056209483175
	.quad	0x3fe31a5c061f5d58              # double 0.59696770854763326
	.quad	0x3fd1d5d8faa43810              # double 0.27867722012240481
	.quad	0x3fe8310d45902eca              # double 0.75598777376713966
	.quad	0x3fd21563afd6c732              # double 0.28255550548338981
	.quad	0x3fcd5554185d2a08              # double 0.22916651906628283
	.quad	0x3fe9d1659c38b094              # double 0.80681114685059407
	.quad	0x3fd567c040fd5ad8              # double 0.33445745798728188
	.quad	0x3fe71c7a1c1a172b              # double 0.72222619522719833
	.quad	0x3fa3ae0a82618a60              # double 0.038437202850009511
	.quad	0x3fe676d485647dc2              # double 0.70200563481551392
	.quad	0x3fe8f4a6c5845d9f              # double 0.77986467912244339
	.quad	0x3fefab3cb3ad2a8d              # double 0.98965296834042393
	.quad	0x3fde9b3169dcca84              # double 0.47822223032122957
	.quad	0x3fc806b04a6f2a14              # double 0.18770412096485301
	.quad	0x3fede981cf973f74              # double 0.93475428147392713
	.quad	0x3fcb31b863787a7c              # double 0.21245484215701882
	.quad	0x3f908a116f8ef340              # double 0.016151688035950018
	.quad	0x3fe9c8994bda4a14              # double 0.80573715987185545
	.quad	0x3fe4553adaadcfab              # double 0.63540404043896126
	.quad	0x3fd91477c908f72c              # double 0.39187426216436694
	.quad	0x3fc24c06132105ec              # double 0.14294506010087049
	.quad	0x3fe66789928b3749              # double 0.70013884183729502
	.quad	0x3fe7e4d279921e5d              # double 0.7466823934964385
	.quad	0x3fe0b020b1f63704              # double 0.52149996526870313
	.quad	0x3fe2f5ca5a271d38              # double 0.59250371559111326
	.quad	0x3fed4d9d73426ab3              # double 0.91572449218377583
	.quad	0x3fede2be18257a52              # double 0.93392853466122916
	.quad	0x3fef5892e1650037              # double 0.97956222555513405
	.quad	0x3febbff9318abe43              # double 0.8671842544189946
	.quad	0x3fe94f80171c4cce              # double 0.79095463289049817
	.quad	0x3fc28b5fed5f4ee4              # double 0.14487837877697196
	.quad	0x3fd3dbc4379ebd2a              # double 0.31028848106048434
	.quad	0x3fe8b60e2c568543              # double 0.77222355518112129
	.quad	0x3fd8a7f3ec4ad4d8              # double 0.38525102687283441
	.quad	0x3fe91365303bb53d              # double 0.78361758633187828
	.quad	0x3fc4daf5a2484ab4              # double 0.16293211387581652
	.quad	0x3fe9d19cf92ccee4              # double 0.80683754603384416
	.quad	0x3fe2231bdee1bcc1              # double 0.56678575069044979
	.quad	0x3fec1cf0b772c7bc              # double 0.87853275136716701
	.quad	0x3fc7de29bd1c40e4              # double 0.18646737798599766
	.quad	0x3fd60043e98ad822              # double 0.3437661915480722
	.quad	0x3fe5ce821729b62a              # double 0.68145851634989651
	.quad	0x3f7f859b96b91a80              # double 0.0076957776723874937
	.quad	0x3febb893bd7c1db7              # double 0.86628138550525235
	.quad	0x3fe399dedca43d6d              # double 0.6125330266385568
	.quad	0x3fecd9da0b173d3f              # double 0.90159322897117267
	.quad	0x3fe49703e76866ac              # double 0.64343447872962178
	.quad	0x3fc46f2589255608              # double 0.15964192577909864
	.quad	0x3fc5f62628d53a7c              # double 0.17157437318606472
	.quad	0x3fed52cd9f65a585              # double 0.91635781414258644
	.quad	0x3fe4b961bacc85b3              # double 0.64762960895693877
	.quad	0x3febd8f131f207ea              # double 0.87023219828574594
	.quad	0x3fddb3cfce23fb8c              # double 0.46409983759797835
	.quad	0x3fe411836b461114              # double 0.627137860793058
	.quad	0x3fb2f0afd73c82d0              # double 0.0739850903014585
	.quad	0x3fde310c96560414              # double 0.47174372369050954
	.quad	0x3fc665cbeec0b7d4              # double 0.17498158605434233
	.quad	0x3fea825b22733579              # double 0.82841259697458647
	.quad	0x3fed9dd6d2303839              # double 0.92551747372068072
	.quad	0x3fe8b905b1fb8eaf              # double 0.7725857235168031
	.quad	0x3fd41fcb70d7894c              # double 0.31444059390755252
	.quad	0x3fe438880651c741              # double 0.63190079912440222
	.quad	0x3fe4c494892b9eb5              # double 0.64899660864917641
	.quad	0x3fe5703f68f14c4f              # double 0.66995211121173692
	.quad	0x3fe4672d6b7fb1ba              # double 0.63759490009174802
	.quad	0x3fe38ca7b9f6d824              # double 0.61091982194080119
	.quad	0x3fb8fefb5fb5a2f8              # double 0.097640715471822292
	.quad	0x3fdb98bf43bc71f8              # double 0.43119794478278051
	.quad	0x3fec2a72cd2cb875              # double 0.88018169472867547
	.quad	0x3fee88ad75da40b0              # double 0.95418427484584889
	.quad	0x3fd6d11cbc01c3fa              # double 0.35651319847153184
	.quad	0x3fd4df6032b9a440              # double 0.32613377526883269
	.quad	0x3fc9e8c52dd0b790              # double 0.20241608368945352
	.quad	0x3fe7fd99d246cb5b              # double 0.74970713681828316
	.quad	0x3fa9ea1ffbeec700              # double 0.050614356521135662
	.quad	0x3fed39f837262b95              # double 0.91332636615094265
	.quad	0x3fe69be468a4316c              # double 0.70652981221932754
	.quad	0x3fe056d8ee2edeef              # double 0.5106014873517476
	.quad	0x3fcbdf4151d3dae0              # double 0.21775070662962204
	.quad	0x3fc05d1aaed65098              # double 0.1278413156220537
	.quad	0x3fa0acce2f75aa10              # double 0.032568400662814523
	.quad	0x3fdfc2d23ce31e9a              # double 0.49626594491972187
	.quad	0x3fe4240d7fc247ad              # double 0.62940096810256352
	.quad	0x3fcc82f7fac7d4d8              # double 0.22274684662958211
	.quad	0x3fe3ce13d8f4716a              # double 0.61890594839091517
	.quad	0x3fedcc64a0bb66ad              # double 0.93120032685256648
	.quad	0x3fc7893807c1f640              # double 0.18387508753578352
	.quad	0x3fe1bc5537b42bef              # double 0.55423985366485151
	.quad	0x3fe8ccd3b96751a5              # double 0.77500330173147758
	.quad	0x3fdc98e5515a6056              # double 0.44683201737052991
	.quad	0x3fce43d3bfca033c              # double 0.23644492020323493
	.quad	0x3fe4ba3b9511c4b5              # double 0.64773348918074325
	.quad	0x3fe72569db819509              # double 0.72331707832623338
	.quad	0x3fdbcf4a32cbe578              # double 0.43452696762650289
	.quad	0x3fb88dd953c9eac0              # double 0.095914442974314618
	.quad	0x3fc97c6226fadd00              # double 0.19910838034932254
	.quad	0x3fdcd3d16f1a118c              # double 0.45042835092342481
	.quad	0x3fe9c7c2429637e8              # double 0.80563462262375385
	.quad	0x3fc4e5ba02cbf7cc              # double 0.16326069962081957
	.quad	0x3fd6532fb8207ada              # double 0.34882729512348265
	.quad	0x3fe35ee284fd1923              # double 0.60533262228344531
	.quad	0x3feb60acd0928006              # double 0.85555115448733043
	.quad	0x3fbd9f02c22e3510              # double 0.11570756188139719
	.quad	0x3fec6295d3578b3d              # double 0.88703433301666446
	.quad	0x3febe1ed7a46e2ae              # double 0.871329058477462
	.quad	0x3fcad34b18a0f37c              # double 0.20957316114973057
	.quad	0x3feb3f5b3d5e5dc6              # double 0.8514839361768558
	.quad	0x3fe44c6314f27234              # double 0.63432458964559268
	.quad	0x3fe27aeca3b94076              # double 0.57750541665337951
	.quad	0x3fefe0f3d0811c06              # double 0.99621000979902941
	.quad	0x3fd97645e4de2726              # double 0.39784381246919265
	.quad	0x3fe7e14cb235a3bf              # double 0.7462523918776397
	.quad	0x3f862f622f8e4340              # double 0.010832564426694113
	.quad	0x3febb08db02938e8              # double 0.86530193716478454
	.quad	0x3fc490e62425fc10              # double 0.16067196621949664
	.quad	0x3fca2e012a92d948              # double 0.20452894762792995
	.quad	0x3fdf4e42c3baaaa4              # double 0.48915166010071176
	.quad	0x3fc9bad4c45bd3f4              # double 0.20101413333728113
	.quad	0x3fd568da19d711e6              # double 0.3345246555657283
	.quad	0x3fe1444e242ff152              # double 0.53958804195239396
	.quad	0x3fbbf3802c262238              # double 0.10918427541594944
	.quad	0x3fcbf6332ea8e69c              # double 0.2184509256201651
	.quad	0x3fc140c26060343c              # double 0.13478879648065056
	.quad	0x3fdd5c2a6a193a0e              # double 0.45875034676728965
	.quad	0x3fd6b2f26618ecb4              # double 0.35467205019422043
	.quad	0x3fe45b52db9fb5e6              # double 0.63614790816580746
	.quad	0x3fe4a5bc564f8dc7              # double 0.64523140771455523
	.quad	0x3fc35c8c3105ab10              # double 0.15126182931575061
	.quad	0x3fef9ed85e19adcd              # double 0.98814028147665455
	.quad	0x3fe2d1b3a259a1c7              # double 0.58809835156449075
	.quad	0x3fe97bc0ec56dbfc              # double 0.7963566413881149
	.quad	0x3fef6817bb4044bf              # double 0.98145662853689674
	.quad	0x3fd8290fd85d5192              # double 0.37750621919010385
	.quad	0x3fe3355718d8ad37              # double 0.60026125767527716
	.quad	0x3fefecc21d00ac42              # double 0.9976511541802966
	.quad	0x3feb61ce258d8746              # double 0.85568911871471509
	.quad	0x3fe171d9c3816f90              # double 0.54514778313340351
	.quad	0x3fdb335d19003f00              # double 0.42500998918056609
	.quad	0x3f81545c0da125c0              # double 0.0084616843852413081
	.quad	0x3fea0fa82d62561c              # double 0.81441124786460106
	.quad	0x3fb7d17359f31840              # double 0.093039712391232321
	.quad	0x3feecdcd69d4911e              # double 0.9626223628042998
	.quad	0x3fd13b6a5b7392d2              # double 0.26925143175894306
	.quad	0x3fb4dedcd42ecc48              # double 0.08152561359638455
	.quad	0x3fef8a8efc730fa6              # double 0.98566388422522233
	.quad	0x3fc10ff332edc018              # double 0.1332992552447656
	.quad	0x3fd9e52a87fba91c              # double 0.40461219100565571
	.quad	0x3fed6a4dfc49a2eb              # double 0.91922663950853456
	.quad	0x3fbcf89d0e306a18              # double 0.11316854092039141
	.quad	0x3fe4d063fe325d36              # double 0.65043830535697711
	.quad	0x3fd073e20cba4c94              # double 0.25707293742125015
	.quad	0x3fccb97458e37400              # double 0.224409621622641
	.quad	0x3fe7bd000554df5d              # double 0.74182129899325455
	.quad	0x3fde3e25c6142080              # double 0.47254318565001796
	.quad	0x3fe73e0bf832b31a              # double 0.7263240668886255
	.quad	0x3fd2ad88b8828bd4              # double 0.29184167879628586
	.quad	0x3fbc2fc4a1eb9fa8              # double 0.11010388329634557
	.quad	0x3fe93e8b50522b21              # double 0.78888478934945649
	.quad	0x3fd533ad03ce09ea              # double 0.33127904292646682
	.quad	0x3fd08f245284317c              # double 0.25873668726196519
	.quad	0x3fda69ba6322f330              # double 0.41270312959004496
	.quad	0x3fc5edac08fe6214              # double 0.17131567420143823
	.quad	0x3fc15ed45b501ec0              # double 0.13570646723404955
	.quad	0x3fdc7304a5b250ba              # double 0.44452015095999864
	.quad	0x3fe7a9e250607685              # double 0.7394877977237263
	.quad	0x3fb6627585161130              # double 0.087439866058109272
	.quad	0x3fc45086ad6a3a40              # double 0.15870746104742928
	.quad	0x3fbf8fa44f3cf140              # double 0.12328555044672829
	.quad	0x3feff3c338670656              # double 0.99850617424108168
	.quad	0x3fcfb66171cc06fc              # double 0.24775331551068536
	.quad	0x3fec2d54ffb75dcc              # double 0.88053369469246822
	.quad	0x3fe90203bf4f4a9c              # double 0.78149592747861928
	.quad	0x3fe937e72e2a846c              # double 0.78807410256207566
	.quad	0x3feee80cf1839aad              # double 0.96582648440092599
	.quad	0x3f951e32e66ada60              # double 0.020623011888086018
	.quad	0x3fdb2953f8694384              # double 0.42439746149926116
	.quad	0x3fe5d90bd8090b87              # double 0.68274490541840371
	.quad	0x3fd877c78e201dc8              # double 0.38231076125563535
	.quad	0x3fcb4a8a4d2e9874              # double 0.21321228760388389
	.quad	0x3fe9978be094bbb1              # double 0.7997493158671799
	.quad	0x3fe91ebf1c0ed4f2              # double 0.78500323753419665
	.quad	0x3fe2a9013b4664f1              # double 0.58313047005790797
	.quad	0x3fdcd0c5dc21bec4              # double 0.45024248597381367
	.quad	0x3fe9b5ab11574082              # double 0.80342629801636201
	.quad	0x3fe1b9d73d635ece              # double 0.55393564214588209
	.quad	0x3fd890febd3ad876              # double 0.38384979705313726
	.quad	0x3fbdd027486556e8              # double 0.1164574195621203
	.quad	0x3feead848d8b3157              # double 0.95868137021310928
	.quad	0x3fb68fd6b2166740              # double 0.088132303694149705
	.quad	0x3fb1766d577975f0              # double 0.068213304382389373
	.quad	0x3f8ef30516d77800              # double 0.015111961135456653
	.quad	0x3feb4d95284e1774              # double 0.8532205378730695
	.quad	0x3fef48e3bbc735bb              # double 0.97764765429899769
	.quad	0x3fe9226b7a74d30b              # double 0.78545164029364523
	.quad	0x3feeaeb008597ddd              # double 0.95882417326714242
	.quad	0x3fc59bfc4b1950e8              # double 0.16882280032098795
	.quad	0x3fec83936dd8c25d              # double 0.89106151060520811
	.quad	0x3fe87e7274052ad1              # double 0.76543543491546917
	.quad	0x3fe32b73ee962029              # double 0.59905430411254657
	.quad	0x3fdcb14fe0db2eba              # double 0.44832226713763712
	.quad	0x3fbca8b5aeeb7298              # double 0.11194930572987472
	.quad	0x3fe098fa92c66ec5              # double 0.51867417017953044
	.quad	0x3fe961ebc7397cc5              # double 0.79320324812933818
	.quad	0x3fd48884a204059c              # double 0.32083240339133012
	.quad	0x3fceb32ee87164e0              # double 0.23984323835137555
	.quad	0x3fed2fdb8ba44085              # double 0.91209199212791303
	.quad	0x3feb3b9315ac5987              # double 0.85102228386931322
	.quad	0x3fd3dbeae74f368a              # double 0.31029770458994987
	.quad	0x3fb162fa413f0b88              # double 0.067916527680649819
	.quad	0x3fe27e98ed378a02              # double 0.57795378047404733
	.quad	0x3fa10ad1018ee660              # double 0.033285647812090202
	.quad	0x3fcbe163e0ded3d8              # double 0.21781586151123977
	.quad	0x3fc695ade6c50e54              # double 0.17644284980825609
	.quad	0x3fbbc892fbff7878              # double 0.1085292687634779
	.quad	0x3fed63dfba274ab3              # double 0.91844164236166248
	.quad	0x3feb2847d1009c82              # double 0.84866705723551683
	.quad	0x3fd50ae925337dfa              # double 0.32879093773769308
	.quad	0x3fecc7c36afd7286              # double 0.89938517471780766
	.quad	0x3fdaa3d822419530              # double 0.41625026078539218
	.quad	0x3fd850b45135bc2c              # double 0.37992580347685379
	.quad	0x3fccbf52c5d43c0c              # double 0.22458872470494418
	.quad	0x3fed7036afe41846              # double 0.91994795182905231
	.quad	0x3fe0116c871df77d              # double 0.50212694540071789
	.quad	0x3fe226d2111cad74              # double 0.56723883955184684
	.quad	0x3fd0c6df3f49e37c              # double 0.26213818722276705
	.quad	0x3fc2c5e6d70b4674              # double 0.14666448116490793
	.quad	0x3fdaab0f347de464              # double 0.41669063688420338
	.quad	0x3fddf14b80913216              # double 0.46785247378719086
	.quad	0x3fc2e083fd710b58              # double 0.14747667193486325
	.quad	0x3fbe856d769b41d0              # double 0.11922344346681446
	.quad	0x3fba5c6140ddf338              # double 0.10297210534731682
	.quad	0x3fd4f63dcebe5ede              # double 0.32752938451583968
	.quad	0x3fe62df902d2990b              # double 0.69311190177248372
	.quad	0x3feb989faf85999e              # double 0.86238083154312384
	.quad	0x3fe646129cfbd605              # double 0.6960537973488391
	.quad	0x3fd21f52d24ba172              # double 0.28316183602011968
	.quad	0x3facdc6434a095a0              # double 0.056368953155735868
	.quad	0x3fe8acbcc2d11df6              # double 0.77108610201042782
	.quad	0x3fd9cec11c30544e              # double 0.40324428322611972
	.quad	0x3fc5be1026653f1c              # double 0.16986276507167808
	.quad	0x3fea0df1172cda1f              # double 0.81420187498480689
	.quad	0x3fdfb64a95bbbb44              # double 0.49550118086238037
	.quad	0x3fa67d24f964fe80              # double 0.04392352623335416
	.quad	0x3fe9f77ddb145379              # double 0.81146137989945466
	.quad	0x3f8777aa485b1840              # double 0.011458711941838229
	.quad	0x3fc063d0ecf40964              # double 0.12804614610656551
	.quad	0x3fa9f3357f4e3f00              # double 0.050683662214508374
	.quad	0x3fc369ec1def238c              # double 0.15166999303462736
	.quad	0x3fe079311af3cd3c              # double 0.51479392303591665
	.quad	0x3fda41789fec5c42              # double 0.41024604432590561
	.quad	0x3fca4e756463477c              # double 0.20551936532734405
	.quad	0x3fb92168125cedf0              # double 0.098165993197589562
	.quad	0x3fd1515b69b82c40              # double 0.27059064220583551
	.quad	0x3fed8fe44189c6dc              # double 0.92381489563396312
	.quad	0x3fa0f65e45fca270              # double 0.033129640620534029
	.quad	0x3fe71316bebfcaab              # double 0.7210801816530269
	.quad	0x3fe9606fe461ad40              # double 0.79302210431834652
	.quad	0x3fdc8af43a72051c              # double 0.4459810801273123
	.quad	0x3fbc76df77b71630              # double 0.11118885681852286
	.quad	0x3fd8167987189c0c              # double 0.37637174790364791
	.quad	0x3fd26cfd0fd0ae0e              # double 0.28790213150452437
	.quad	0x3fd64a8db5013734              # double 0.34830038715596179
	.quad	0x3fe91e12ff8481bb              # double 0.78492116838247428
	.quad	0x3fdca79d2ac43c20              # double 0.44773034264011535
	.quad	0x3fdcbcf5cea34a44              # double 0.44903321437337618
	.quad	0x3fe4ab55002d4bc8              # double 0.64591455492551919
	.quad	0x3fe9c7656bd192bf              # double 0.8055903535683554
	.quad	0x3fd9745632db7750              # double 0.39772562948734436
	.quad	0x3fbe95b276618570              # double 0.11947169675979352
	.quad	0x3fa6f863033262f0              # double 0.044863790645825463
	.quad	0x3fcf43bd1eae5d54              # double 0.24425472257710601
	.quad	0x3fe1ff7393b5a20b              # double 0.56243304109108416
	.quad	0x3fccc3a9a7dfdf08              # double 0.22472115227696343
	.quad	0x3fecbe1d1c091beb              # double 0.89820723987292916
	.quad	0x3feb66d29d9d2d2e              # double 0.85630160125712051
	.quad	0x3fdbf3e789012634              # double 0.43676174525589606
	.quad	0x3fd9d29eae928710              # double 0.40348021553119029
	.quad	0x3fe234be899cf592              # double 0.56893851163447295
	.quad	0x3fd69d4e5aaca44e              # double 0.3533512006275189
	.quad	0x3fc32d6bfd851108              # double 0.14982366446395923
	.quad	0x3fd252c90d805f16              # double 0.28630281752110542
	.quad	0x3fec5a6d18e5d6f0              # double 0.88603834975103091
	.quad	0x3fe70ea819b9c0d2              # double 0.7205391409352393
	.quad	0x3fc001d067659d9c              # double 0.12505536125830197
	.quad	0x3fec14fe2f821f5b              # double 0.87756261137927127
	.quad	0x3fe9af9bb5bb77f8              # double 0.80268655294980729
	.quad	0x3fe119350da2af38              # double 0.53432705557995686
	.quad	0x3fef4d9e13ded18b              # double 0.97822479134497208
	.quad	0x3fe16e981a014fbb              # double 0.54475026206136279
	.quad	0x3fee846d6fd59e7b              # double 0.95366546480813896
	.quad	0x3fe2f84f047ee4b2              # double 0.59281111600934921
	.quad	0x3fd15075a6f94682              # double 0.27053586298016097
	.quad	0x3fa6593ff1600960              # double 0.043649671759356634
	.quad	0x3fe39281ab5fc598              # double 0.61163409682756065
	.quad	0x3fed64936e75a983              # double 0.91852733205932713
	.quad	0x3f9ecebd52e2edc0              # double 0.030085523780810197
	.quad	0x3fe78f32b9d43afd              # double 0.73623024267894233
	.quad	0x3fee84c473d72965              # double 0.95370695710270736
	.quad	0x3fd34f85778c0f34              # double 0.30172859835168997
	.quad	0x3fee786778990a52              # double 0.95219777635822767
	.quad	0x3fed41090fefaad3              # double 0.91418889153041005
	.quad	0x3fde92ac4223a0fc              # double 0.47770220240501238
	.quad	0x3fec4d07d782365e              # double 0.8844031533387342
	.quad	0x3fab5c8e5a5c19c0              # double 0.053440521745915515
	.quad	0x3fe491a7d926f315              # double 0.6427802315953125
	.quad	0x3fe8a88fedc35c04              # double 0.77057644308195039
	.quad	0x3fef12b278260e05              # double 0.97103236643346291
	.quad	0x3fe18b5c0b572198              # double 0.54826166357911443
	.quad	0x3fc98bc976adda5c              # double 0.19957845969084331
	.quad	0x3fde0d9b14b84e8c              # double 0.46958043120796655
	.quad	0x3fec8d0ba227053a              # double 0.8922174613036653
	.quad	0x3fd281138ea6967e              # double 0.28912819796310163
	.quad	0x3feda185c16aaa81              # double 0.92596709992115234
	.quad	0x3fe5adb91d95bada              # double 0.67745643404290523
	.quad	0x3fefd080797c8743              # double 0.99420188644237617
	.quad	0x3fb3a9e171ba63b0              # double 0.076810922876019871
	.quad	0x3fe4e5e25a73d77b              # double 0.65306203524117679
	.quad	0x3fe4ce2d927c9389              # double 0.65016821489972287
	.quad	0x3fd05b7b70e2d7dc              # double 0.25558362983735861
	.quad	0x3fb3708a157cede8              # double 0.075935964819045076
	.quad	0x3fc0f277df3e5014              # double 0.13239954376751994
	.quad	0x3fd024146c5e8876              # double 0.25220213492332932
	.quad	0x3fe23b9413222370              # double 0.56977275597556165
	.quad	0x3fe3d117aa5335ba              # double 0.61927397982224552
	.quad	0x3fef06d81e93b9d5              # double 0.96958547565537378
	.quad	0x3fc4c84a58d3ef00              # double 0.162362378476125
	.quad	0x3fbf1b3fc3dc1180              # double 0.12150953799943487
	.quad	0x3feea9199606bfd7              # double 0.95814208318733562
	.quad	0x3fd869b5b5bfafe4              # double 0.3814520144358069
	.quad	0x3febaf70d7af7af4              # double 0.86516611219471295
	.quad	0x3fe66f4ec844cba7              # double 0.70108737101542296
	.quad	0x3fe1433450980302              # double 0.53945365658736955
	.quad	0x3fe984d742bf330b              # double 0.79746592556475215
	.quad	0x3fec706b29a47b39              # double 0.8887229741411381
	.quad	0x3fe4d6610efda0ad              # double 0.65116932800176175
	.quad	0x3fec2d263e382f86              # double 0.88051139976731529
	.quad	0x3f70d41d71c6c700              # double 0.004108538644162385
	.quad	0x3fe6d7023213cf21              # double 0.71374616413820402
	.quad	0x3fe358bf94de8b50              # double 0.60458354068792097
	.quad	0x3f85c652d680f540              # double 0.010632178469786369
	.quad	0x3fe15a703227ac83              # double 0.54228982730764164
	.quad	0x3fe054005a491610              # double 0.51025407441983539
	.quad	0x3fd807d01ba12310              # double 0.3754768628901255
	.quad	0x3feaceacc5be6160              # double 0.83772886869250484
	.quad	0x3fed696890448924              # double 0.9191172425965175
	.quad	0x3fb94e1cf3e27ae8              # double 0.098848161260757572
	.quad	0x3fe26c00a333a2d5              # double 0.57568389773686113
	.quad	0x3fd372fe01bc29b0              # double 0.3038935677474468
	.quad	0x3fc47f149b434d48              # double 0.16012818890758695
	.quad	0x3fc881afe909e8a0              # double 0.19145773772090013
	.quad	0x3fd54ed0a972d900              # double 0.33293549106328157
	.quad	0x3fe01c6d20121c31              # double 0.5034700037366574
	.quad	0x3fd2da4e8dfe5526              # double 0.29457439295340959
	.quad	0x3fe4b13d3340ac10              # double 0.6466356278446046
	.quad	0x3fe7aa0fa97cf5cc              # double 0.73950942137860798
	.quad	0x3fdeed4dd62a9a48              # double 0.48323388971985937
	.quad	0x3fce256c2c806c30              # double 0.23551704571659249
	.quad	0x3fcca42bae334220              # double 0.22376008993025298
	.quad	0x3fd5936e47757174              # double 0.33712346056360976
	.quad	0x3fef9c9d9eda8129              # double 0.98786812807160118
	.quad	0x3fcc04131b082368              # double 0.21887434787665971
	.quad	0x3fe221fd2d996ff9              # double 0.56664904504896108
	.quad	0x3fad627626a30240              # double 0.057391826836014292
	.quad	0x3fd5157926303314              # double 0.32943562249492797
	.quad	0x3fcb757502e2f24c              # double 0.21452200547163824
	.quad	0x3fee9e7c430a76c7              # double 0.95684636205597762
	.quad	0x3fc4cec18bad4c80              # double 0.16255969352878097
	.quad	0x3fe43d61e54e63af              # double 0.63249296938294275
	.quad	0x3fded9c873bfc10e              # double 0.48204242042176382
	.quad	0x3fe8f1ca8894d6ee              # double 0.77951552082114772
	.quad	0x3fe79f62599d98ca              # double 0.73820607665109006
	.quad	0x3fe4d9afecac93ae              # double 0.65157314515510278
	.quad	0x3fe6e81396c383de              # double 0.71582965322533787
	.quad	0x3fd242ca78e1a91c              # double 0.28532659344513589
	.quad	0x3fd18ba67d65955c              # double 0.27414858098776107
	.quad	0x3fd2c9aed20e9500              # double 0.29355974686980346
	.quad	0x3fe4d8a057c60f31              # double 0.65144364493651186
	.quad	0x3fb71e74449e8290              # double 0.090308443787316727
	.quad	0x3fe9c061cfd9807a              # double 0.80473414035442592
	.quad	0x3feb16465b85e3fc              # double 0.84646909595096486
	.quad	0x3feb50c7c1327b51              # double 0.85361087545229897
	.quad	0x3fc0c6aa93a73a58              # double 0.13106281480436865
	.quad	0x3fe6f3b10821f0bc              # double 0.71724750126261183
	.quad	0x3fc145a316673834              # double 0.13493765443712535
	.quad	0x3fd67bdaf59344f4              # double 0.35130952817878769
	.quad	0x3feafc409fce5fdd              # double 0.84329253399027559
	.quad	0x3fdf304cbd0e62ae              # double 0.48732298338431235
	.quad	0x3fed56034c6a58f8              # double 0.9167496197212861
	.quad	0x3fafb24a02c16960              # double 0.061907112919203255
	.quad	0x3fe8688a71ab92fe              # double 0.76276132775510042
	.quad	0x3fde6d5964e7632e              # double 0.47542414525883003
	.quad	0x3fede683dbdb5d06              # double 0.93438904705809089
	.quad	0x3f5052d160519a00              # double 9.9630782031001619E-4
	.quad	0x3fd5617d0bc53a2a              # double 0.3340752234406944
	.quad	0x3fc8bbbe9d645d94              # double 0.19322951016577561
	.quad	0x3fe1bcbfc80dad9a              # double 0.55429066727576815
	.quad	0x3fecc892835b505b              # double 0.89948392539600819
	.quad	0x3febbd7cfaa9096a              # double 0.8668808837613089
	.quad	0x3febd13eb2093a6b              # double 0.86929259083428911
	.quad	0x3fbec18337eb3c50              # double 0.12014026751715901
	.quad	0x3fc52f561efd7614              # double 0.1655070926016583
	.quad	0x3fdd1298bcbe4130              # double 0.45426004821730981
	.quad	0x3fd89d7b22be3e6a              # double 0.38461187737354996
	.quad	0x3fe8cb82a2f4b0cc              # double 0.7748425657969391
	.quad	0x3fb7137b9ce2bae0              # double 0.090141034891284999
	.quad	0x3fd0ef7ebbf22882              # double 0.26461761812300477
	.quad	0x3fdcd0b75f39ecd0              # double 0.45023903178635027
	.quad	0x3fdd28cbcdd0ebfc              # double 0.45561499690273854
	.quad	0x3feae9a45f610736              # double 0.84102076176370733
	.quad	0x3fee36b067470374              # double 0.94417591258398525
	.quad	0x3fe8140e04b816f0              # double 0.75244809076022356
	.quad	0x3feda8d967d4e9dc              # double 0.92686147956493014
	.quad	0x3fd32aa089e6da00              # double 0.29947675196618206
	.quad	0x3feb346fc5a3b14d              # double 0.85015095330667523
	.quad	0x3fdd05156235670c              # double 0.45343527403530071
	.quad	0x3fe4eeea5f82b907              # double 0.65416449217244199
	.quad	0x3fc5c2b70b987574              # double 0.1700047308558329
	.quad	0x3fcc3a2c68c6cf74              # double 0.22052531353039806
	.quad	0x3faad10693293b30              # double 0.052375989402767664
	.quad	0x3fedb70ccdc97662              # double 0.92859497254148615
	.quad	0x3fd60e57989b8230              # double 0.34462537673064997
	.quad	0x3fbf8b68b1b32458              # double 0.12322096193669674
	.quad	0x3fd7e6053df3a268              # double 0.37341433572740934
	.quad	0x3fe7ec0806d5728f              # double 0.74756242117617144
	.quad	0x3fc315ca0eaa176c              # double 0.1491024562457669
	.quad	0x3fe47ba6c3449ccc              # double 0.64009416712078737
	.quad	0x3fe679dc6bde39f1              # double 0.70237561290724504
	.quad	0x3fe3a412e93852c7              # double 0.61377854872497373
	.quad	0x3fafa073cf09d310              # double 0.061771029494513852
	.quad	0x3fe3fb0b7b3af89b              # double 0.62439512318066492
	.quad	0x3fdb26cfafc2b774              # double 0.4242438522731995
	.quad	0x3fe2d3defde61f86              # double 0.58836316671021005
	.quad	0x3fe4e67904cbc7e9              # double 0.65313387810442436
	.quad	0x3fbdf3c2c7f2c2c8              # double 0.11700074559736173
	.quad	0x3fe2f7ca3c17ff5c              # double 0.59274780022677076
	.quad	0x3fbcdbc284b1bbc0              # double 0.11272826900106647
	.quad	0x3fea1c1db56c2f3e              # double 0.81593213495350603
	.quad	0x3fd4ac4ddc253230              # double 0.32301661013187566
	.quad	0x3fe9bad58bed9a22              # double 0.80405690507615568
	.quad	0x3fcdd5773ee39dc8              # double 0.23307695933111305
	.quad	0x3fce7ff6f98dfd20              # double 0.2382801741150411
	.quad	0x3fde150915658cfe              # double 0.47003390397567546
	.quad	0x3fb70e69cafcf038              # double 0.090063678796412527
	.quad	0x3fe0c5d46362bf68              # double 0.52414912616039278
	.quad	0x3fd3d1fb9498d638              # double 0.30969132911136255
	.quad	0x3fb80f870e5b27d0              # double 0.093986931805516649
	.quad	0x3fe3c789657cdbf7              # double 0.61810750791380442
	.quad	0x3fae2f34e92ed0c0              # double 0.058953908409792088
	.quad	0x3fd3fdbe1266f86c              # double 0.31236221119968977
	.quad	0x3fef0d3a388fa9b0              # double 0.97036467597108889
	.quad	0x3fecc35cc21434ba              # double 0.89884794145623137
	.quad	0x3fe91a2b68203129              # double 0.78444452607212611
	.quad	0x3fe6a65a1484bb63              # double 0.70780662543789352
	.quad	0x3fd80f702a22647c              # double 0.37594226946527676
	.quad	0x3fcf7ad07771d0b8              # double 0.24593549568419859
	.quad	0x3fd1082401fe0cf8              # double 0.26612186617440114
	.quad	0x3feb0a0960e0f999              # double 0.84497517511026665
	.quad	0x3fed570e1d483e7d              # double 0.91687684745006914
	.quad	0x3fc84f69ab1ad848              # double 0.18992348532418846
	.quad	0x3fef116eb239d91f              # double 0.97087797937163944
	.quad	0x3feeb167ae8302e3              # double 0.95915588459328338
	.quad	0x3fd0e9913c9ffefa              # double 0.26425581856163627
	.quad	0x3fe1fc8fa2e5dccc              # double 0.56208020988460694
	.quad	0x3f85f5718603c540              # double 0.010722052480988453
	.quad	0x3fc7599c589fd674              # double 0.1824222023712313
	.quad	0x3fd1c8be4aa1fcc8              # double 0.27787740028720664
	.quad	0x3fe4e06fa9e7548e              # double 0.65239699539474016
	.quad	0x3fccddbcb6e1d108              # double 0.22551688127317271
	.quad	0x3fcf01f630f79024              # double 0.24224736586541085
	.quad	0x3facf7315b263c60              # double 0.05657343137419768
	.quad	0x3fdc0c785730f384              # double 0.43826111330763973
	.quad	0x3fdda35c861a75ea              # double 0.46309578987151545
	.quad	0x3fe60268d6d3b5ac              # double 0.68779413183590554
	.quad	0x3fd389282729962e              # double 0.30524638962228579
	.quad	0x3fda3c526ce00024              # double 0.40993176109623364
	.quad	0x3fdfa73f79bd87fe              # double 0.49458300484377549
	.quad	0x3feef4731fa9ac99              # double 0.96734005149973534
	.quad	0x3fd7e76d33a18e80              # double 0.37350015680406301
	.quad	0x3fdc6cafc1eb9de2              # double 0.44413370072876834
	.quad	0x3febab160e6e6ad0              # double 0.86463454073540369
	.quad	0x3fe41cd0fe7d9cb8              # double 0.62851762490472307
	.quad	0x3feea122fdbc509f              # double 0.95717000539527308
	.quad	0x3fa5110704ec02a0              # double 0.041145533896274289
	.quad	0x3febd1682418d0a6              # double 0.86931235361273163
	.quad	0x3fb801dc9a66cbd0              # double 0.093778407760324755
	.quad	0x3fd59a0a0d371fb2              # double 0.33752681055602374
	.quad	0x3fe0e23713dcb6e3              # double 0.52761415366486764
	.quad	0x3fef730e5ecd2f9d              # double 0.98279493823928343
	.quad	0x3feeff28a1634ff3              # double 0.96864730378228924
	.quad	0x3fe375704e89484b              # double 0.60808577860940127
	.quad	0x3fde2bd1d8864cd6              # double 0.47142454285603941
	.quad	0x3fd2a5ce4183760e              # double 0.29136997602276515
	.quad	0x3fe94d48ee6de4c6              # double 0.79068419044701765
	.quad	0x3fca30cdc4484d50              # double 0.2046143730554868
	.quad	0x3fbac8a88bb6ee68              # double 0.10462430392265676
	.quad	0x3fa24075621ccee0              # double 0.035648029543521309
	.quad	0x3fc9a2b5c1606864              # double 0.20027801458565186
	.quad	0x3fe61997a5305d5b              # double 0.69062406791173758
	.quad	0x3fed0f12d28662a5              # double 0.90809002988961096
	.quad	0x3fc4715b03cf87fc              # double 0.15970933614795502
	.quad	0x3fe2392041d45ef4              # double 0.56947338921869894
	.quad	0x3fe77855f2ddc7fb              # double 0.7334394210322438
	.quad	0x3f985ea7dffd5180              # double 0.023798583074794433
	.quad	0x3fcb57e6a4cc4798              # double 0.21362002417350534
	.quad	0x3fc8b7e521f95060              # double 0.19311203154450407
	.quad	0x3fda34ea240e8fac              # double 0.40947965165309586
	.quad	0x3fe638131e56aca0              # double 0.69434505391599899
	.quad	0x3fdc0272b41ac0cc              # double 0.43764941776590827
	.quad	0x3fc987cee6363918              # double 0.19945703736124965
	.quad	0x3fe4373838550cf1              # double 0.63174067499531195
	.quad	0x3fb3978b3b5a03c8              # double 0.076531126012937212
	.quad	0x3fe236ba21d159dc              # double 0.5691805515769448
	.quad	0x3fa49862b8cbcae0              # double 0.040225110109437301
	.quad	0x3fd1dadffc73d85a              # double 0.27898406652037055
	.quad	0x3fe0891858856216              # double 0.51673524178756014
	.quad	0x3fad8220853a4350              # double 0.057633415473111627
	.quad	0x3fc871cf2bd03580              # double 0.1909731830532273
	.quad	0x3fd59e6667c7b83a              # double 0.33779297003536934
	.quad	0x3fea9b4f54c2a0a8              # double 0.83145872645129248
	.quad	0x3fc3a49f0cf8e78c              # double 0.15346134313022863
	.quad	0x3fd61458b00ac114              # double 0.34499184791185766
	.quad	0x3fe66f292583998f              # double 0.70106942488637169
	.quad	0x3fd94a7ec8b94910              # double 0.39517182924204608
	.quad	0x3fe593f68d5a17f6              # double 0.67431190116690121
	.quad	0x3febaafced3545e3              # double 0.86462255792337961
	.quad	0x3feae555082342d4              # double 0.84049464787866634
	.quad	0x3fdf3e05ebdd6234              # double 0.48816059144658941
	.quad	0x3fd515b35f160f40              # double 0.32944950376280602
	.quad	0x3fb9020c0819ade0              # double 0.097687484719862549
	.quad	0x3feced43f1e3087e              # double 0.90396306270146431
	.quad	0x3fedd61c9152925b              # double 0.93238666899976452
	.quad	0x3fd77048767efa32              # double 0.36622821399569994
	.quad	0x3fb4c17d85e4fe90              # double 0.081077428044404209
	.quad	0x3fd0e980e25f67c4              # double 0.26425191981035945
	.quad	0x3fe59ab2f91e70c2              # double 0.67513416915928581
	.quad	0x3fd7591c0ac883f0              # double 0.3648138146691613
	.quad	0x3fd8f5833f09cd0c              # double 0.38998490482409021
	.quad	0x3f9a2cffe83c53c0              # double 0.025562284993686069
	.quad	0x3fcbe74ba3f03f4c              # double 0.21799607758338835
	.quad	0x3f97b0d64dc1cda0              # double 0.023135517593301125
	.quad	0x3fdb383d836e76d0              # double 0.42530763468844857
	.quad	0x3fe778be2e3456ac              # double 0.73348912262254862
	.quad	0x3feba7abb3e2fecb              # double 0.86421761640664252
	.quad	0x3fd488c1958e4e70              # double 0.32084693532053787
	.quad	0x3fe095f7c8290543              # double 0.51830662816806983
	.quad	0x3fdce1a72a24bb04              # double 0.45127276530813298
	.quad	0x3fec9082b8427cf6              # double 0.89264045704103867
	.quad	0x3fccf0fa204f2fc4              # double 0.22610403611758845
	.quad	0x3fdcd9bcc8aa42d0              # double 0.45078963848304188
	.quad	0x3fea5892625e287c              # double 0.82331198894941293
	.quad	0x3feb7730da29a443              # double 0.85829966173071914
	.quad	0x3fddde24dc872cc8              # double 0.46668359313907759
	.quad	0x3fdcd66d0ad3a726              # double 0.45058752114583667
	.quad	0x3fe389e3ea55bdca              # double 0.61058231133022756
	.quad	0x3fe50d33404f9137              # double 0.65786135254578582
	.quad	0x3fe6ca11e48ed18e              # double 0.71216673507892536
	.quad	0x3fead9d8142537f1              # double 0.83909229216237524
	.quad	0x3fed3a220043ce16              # double 0.91334629108172538
	.quad	0x3fe297dfe8fba809              # double 0.58103938583849513
	.quad	0x3fd859d81e179c08              # double 0.38048365534490403
	.quad	0x3faf0ce0470c6fb0              # double 0.060645111725733059
	.quad	0x3fca4dfc873e5d94              # double 0.20550495723430784
	.quad	0x3fdfa44ba0e3ccfc              # double 0.49440279685877875
	.quad	0x3fd2d2e4c348449e              # double 0.29412192411934679
	.quad	0x3fd7c11eeb8f526c              # double 0.37116215709583034
	.quad	0x3fd41fb2d5b25fd2              # double 0.31443472737146039
	.quad	0x3f9fe9a9a3b3f840              # double 0.031164789787901492
	.quad	0x3fbf8749beda4900              # double 0.12315808209885759
	.quad	0x3fcff0493181ca84              # double 0.24952044408162888
	.quad	0x3fde4683d5129684              # double 0.47305389221069327
	.quad	0x3f99dfaed410b520              # double 0.025267345136105068
	.quad	0x3f77c27c7e638e00              # double 0.0058007109675801694
	.quad	0x3fd0c3b1b391a5b8              # double 0.26194422279385376
	.quad	0x3fe42dbe6a2993d5              # double 0.63058396086546031
	.quad	0x3fd5c928a52b5340              # double 0.34040275697525502
	.quad	0x3f9b7b2e5d6692a0              # double 0.026837086153721601
	.quad	0x3fb4f31ed225a9c0              # double 0.081834722810220306
	.quad	0x3fdb6851b17ed380              # double 0.42824213346039386
	.quad	0x3fccc91fdba21ff0              # double 0.22488783096582621
	.quad	0x3fdb16fe27067890              # double 0.42327836810171338
	.quad	0x3fcb48c9a719ef38              # double 0.21315880450480917
	.quad	0x3fe4a75ffcd4ff86              # double 0.64543151265387233
	.quad	0x3fd3476c59c308b8              # double 0.30123432889753188
	.quad	0x3fe1f4a49f8fffd9              # double 0.56111365475225761
	.quad	0x3fed167ba7c9f16b              # double 0.9089945103765279
	.quad	0x3fefc22570aeaf21              # double 0.99244949348710431
	.quad	0x3fe680c0d8b753fe              # double 0.70321695639961468
	.quad	0x3fca315b3c11bdf8              # double 0.20463123734542399
	.quad	0x3fe315d75d8df86a              # double 0.59641617081048293
	.quad	0x3fca941ed3bfe61c              # double 0.20764527644478015
	.quad	0x3fb1b772ff9083e0              # double 0.069205462831191777
	.quad	0x3feaec2860fd37fd              # double 0.84132784789267101
	.quad	0x3fd40ca134dbfe28              # double 0.31327085649533837
	.quad	0x3fc4ebc632ea207c              # double 0.16344525800764476
	.quad	0x3fe5d3f1ad3d70a6              # double 0.68212207637727285
	.quad	0x3fd7573f6bfdd7dc              # double 0.36470017953922507
	.quad	0x3febdec072539334              # double 0.87094137505901025
	.quad	0x3fdcb61591c40fa8              # double 0.44861354098270079
	.quad	0x3fca6d42257eabb4              # double 0.20645930128861567
	.quad	0x3fdbcda1b45e175a              # double 0.43442576040285064
	.quad	0x3fc74dba4d951c9c              # double 0.18205956257063327
	.quad	0x3fec8ca9caf19773              # double 0.8921708072418667
	.quad	0x3fdd8706e1fc6e64              # double 0.4613663870711433
	.quad	0x3fe4b2c504643df7              # double 0.64682246072510352
	.quad	0x3fb5e67c0850e2d8              # double 0.085548164396537785
	.quad	0x3fe38719e5f1ca09              # double 0.61024184142144222
	.quad	0x3fbda3a642d4b328              # double 0.11577834254849206
	.quad	0x3fde683bebeba462              # double 0.47511194266423307
	.quad	0x3fed9280439e30ad              # double 0.92413342672945975
	.quad	0x3fcd8d8017ab88a4              # double 0.23088074832691519
	.quad	0x3fec11ace51cde6c              # double 0.87715763805949853
	.quad	0x3fdbe45566f26dd8              # double 0.43581137708107809
	.quad	0x3fe9f87f7ef52603              # double 0.81158423229607057
	.quad	0x3fecac56d2dea491              # double 0.89603749452102666
	.quad	0x3fe728e7bb8b362d              # double 0.7237433112110857
	.quad	0x3fc0cfdca54b69b4              # double 0.13134344168686385
	.quad	0x3fb2925fc5f382a0              # double 0.072545991733486748
	.quad	0x3fd0086c041fadc4              # double 0.25051403429707997
	.quad	0x3fcedac35fed068c              # double 0.2410511225116817
	.quad	0x3f81a46d923e82c0              # double 0.0086144027953322099
	.quad	0x3fc6963c02209064              # double 0.17645979026667924
	.quad	0x3feb5d9db93cea46              # double 0.85517774752890641
	.quad	0x3fd3ccb36a16e7d6              # double 0.30936894760418221
	.quad	0x3fdbae51a38491c2              # double 0.43251458138027143
	.quad	0x3fb9c79d37e86878              # double 0.10070211996972656
	.quad	0x3fe35c1647dc64b5              # double 0.60499109301885901
	.quad	0x3fe7f8f2f46194a8              # double 0.74913928728769452
	.quad	0x3feedeccda0a1f38              # double 0.96469729028556283
	.quad	0x3fd64f0ec7cd8776              # double 0.34857530128476044
	.quad	0x3fefc5c31b5f27b4              # double 0.99289088579211304
	.quad	0x3fedbe8755a014d6              # double 0.92950789188094052
	.quad	0x3febf43929278aba              # double 0.87356241262417389
	.quad	0x3fd7ff84d511c3f6              # double 0.37497063453253021
	.quad	0x3fea8d9c0781b718              # double 0.8297863146414981
	.quad	0x3fe0fe151e6f931f              # double 0.53101592964648947
	.quad	0x3fd81d1ebad7a5b8              # double 0.37677734609914237
	.quad	0x3fca857419b8e374              # double 0.20719767814605528
	.quad	0x3fed75dde9823e07              # double 0.92063804251842007
	.quad	0x3fc137359260565c              # double 0.13449735305100574
	.quad	0x3fb75de0dee55160              # double 0.091276220720208467
	.quad	0x3fe6bf82be79dd6c              # double 0.71087777330732882
	.quad	0x3fef9e7a38b63f70              # double 0.98809538914245643
	.quad	0x3feb6a3541623003              # double 0.85671484728072789
	.quad	0x3fec0c58acb067c3              # double 0.87650712707840517
	.quad	0x3fb2bb4a7fcf6000              # double 0.073170334056499087
	.quad	0x3fb623eba1764958              # double 0.086485602302024289
	.quad	0x3fe6155f04b7f880              # double 0.69010878488167293
	.quad	0x3fbc5d086925c970              # double 0.11079456870155524
	.quad	0x3fedaa5f34db92a0              # double 0.9270473511101791
	.quad	0x3fd19708188a2866              # double 0.27484323879673977
	.quad	0x3fb12b80f643f7e0              # double 0.067070064662373863
	.quad	0x3fee6d3bd9317cc3              # double 0.95083420200889923
	.quad	0x3fef69cd92f5cb98              # double 0.98166540816451952
	.quad	0x3fec26d0160cb564              # double 0.87973789507456645
	.quad	0x3fe26209df96789a              # double 0.57446759862411345
	.quad	0x3fe2f49b37b93fef              # double 0.59235916980287395
	.quad	0x3fe95d1d808aa7a9              # double 0.79261660676751433
	.quad	0x3fd385ff1e8f21d2              # double 0.30505350097930972
	.quad	0x3fc8a41468f5ffa0              # double 0.19250731587453362
	.quad	0x3fedcd747e2989fa              # double 0.93132996216837616
	.quad	0x3fecd8432f0f408d              # double 0.90139922324489563
	.quad	0x3f70b8e51d019c80              # double 0.0040825795877942328
	.quad	0x3fed31d626d9898c              # double 0.91233356082766325
	.quad	0x3fdfd4b6b8352e6c              # double 0.49735801686322278
	.quad	0x3fd98bcbd0893416              # double 0.39915747990454642
	.quad	0x3fe176fe4954fd01              # double 0.54577555010465073
	.quad	0x3fc9eb285a36c1dc              # double 0.20248894124007577
	.quad	0x3faf241936782660              # double 0.060822284602249921
	.quad	0x3fdc67271fbb201e              # double 0.44379594897009322
	.quad	0x3fdde5ecbb8f79d2              # double 0.46715849224520156
	.quad	0x3fd9d7543f6d1846              # double 0.40376764482460137
	.quad	0x3fe5da5902e188e2              # double 0.68290377199835128
	.quad	0x3fadb5b55612b830              # double 0.058026949650738735
	.quad	0x3f82d1f669672cc0              # double 0.0091895342747164709
	.quad	0x3fb0cf321b075578              # double 0.065661555861273757
	.quad	0x3fe46f713a879bca              # double 0.63860379630647768
	.quad	0x3fc57ebe7928d07c              # double 0.16793042102802136
	.quad	0x3fb8a9eaa4bf9bb8              # double 0.096342721196932213
	.quad	0x3fa405f05c84c800              # double 0.039107810300620827
	.quad	0x3fd97a3533d262fc              # double 0.39808397351002589
	.quad	0x3fd8e778ed5bb750              # double 0.38912795238035347
	.quad	0x3fd2f3d4d8299af2              # double 0.29613228902455468
	.quad	0x3fe4b446f42649f2              # double 0.64700648961507867
	.quad	0x3fdede8d92a16172              # double 0.48233355826734858
	.quad	0x3fdea123b93c0150              # double 0.47858517731949224
	.quad	0x3fe210b05c4db568              # double 0.56453722026860209
	.quad	0x3fdc393da3eb2f8c              # double 0.44099370010075556
	.quad	0x3fe05f4d55171e0a              # double 0.51163355464172011
	.quad	0x3fef7b8f4683826e              # double 0.98383296749314098
	.quad	0x3fc989dadff82324              # double 0.1995195001220732
	.quad	0x3fe2e187ed8b6abc              # double 0.59003063579014947
	.quad	0x3fe1919774088c76              # double 0.54902241385242578
	.quad	0x3fe43bd84de5734a              # double 0.63230529035681937
	.quad	0x3fef1bce32aa636d              # double 0.97214422126408595
	.quad	0x3fee4d0eaf2d7a48              # double 0.94690641607650949
	.quad	0x3fdd53b700c8e2b2              # double 0.45823454929954288
	.quad	0x3fef8cabe9991e5d              # double 0.98592181801445699
	.quad	0x3f94c6fc06bbeb60              # double 0.020290315543188497
	.quad	0x3feb1d24e986bfe3              # double 0.84730764017694715
	.quad	0x3fe7837a0fc67ae1              # double 0.73479941445461006
	.quad	0x3fee1736dc2d3c35              # double 0.94033377650510508
	.quad	0x3fdde78d56389362              # double 0.46725781841296599
	.quad	0x3fe9fc7a2ab2dd31              # double 0.81206997241580414
	.quad	0x3fdc630d16027214              # double 0.44354560040827207
	.quad	0x3fe2ba1a12c06429              # double 0.58521751081855655
	.quad	0x3fe7db814bb105ae              # double 0.74554505141730032
	.quad	0x3fd7a33af5bcafea              # double 0.36933778760680858
	.quad	0x3fdb34a66851823e              # double 0.42508850276320576
	.quad	0x3fed7d12b8768b73              # double 0.9215177157205815
	.quad	0x3fe3520474822b54              # double 0.60376188998757607
	.quad	0x3fccf52d30562594              # double 0.22623219356709667
	.quad	0x3fcaccde72a20fd0              # double 0.20937710377995566
	.quad	0x3fdd2cc5a6d111e8              # double 0.45585767069522243
	.quad	0x3fe5a2f346bc19ee              # double 0.6761413938082208
	.quad	0x3fe37dd83930c95e              # double 0.60911189241441455
	.quad	0x3feaa4c1af5b5531              # double 0.83261188744896775
	.quad	0x3fdcb2fb08f3169c              # double 0.44842410921078524
	.quad	0x3fe1e9d1ce8932a0              # double 0.55979242648171024
	.quad	0x3f95720cd4542d40              # double 0.020942879161379269
	.quad	0x3fb56571a08ba868              # double 0.083579160400093166
	.quad	0x3fcc2ce9e5cc7bc0              # double 0.22012065621035326
	.quad	0x3feefcf079884fd0              # double 0.96837638603983045
	.quad	0x3fd2a1e6a26acae2              # double 0.29113164769220934
	.quad	0x3fe44dab3494f169              # double 0.63448105115780351
	.quad	0x3fe0c177a9671f25              # double 0.52361662947166521
	.quad	0x3fe024ba8821a0fd              # double 0.50448347652584824
	.quad	0x3f891edbe5c5b700              # double 0.012265890073389851
	.quad	0x3fd627aafa8392c0              # double 0.34617113556150159
	.quad	0x3f862339db476c00              # double 0.010809375767101059
	.quad	0x3fd7687293cc868a              # double 0.36574997361649564
	.quad	0x3fe5118675fcd002              # double 0.65838931126063494
	.quad	0x3fe2e5b56f3ab88c              # double 0.59054061626899701
	.quad	0x3fda42153bc9b288              # double 0.41028338278446386
	.quad	0x3fc04fb5b24a93a4              # double 0.1274325485766471
	.quad	0x3fec8ae5463f919c              # double 0.89195502968191275
	.quad	0x3fe58282c944da57              # double 0.67218150434821211
	.quad	0x3fe570eafc36dce7              # double 0.67003392468077727
	.quad	0x3fdce17bc863ca32              # double 0.45126242226902769
	.quad	0x3fd77efb96c0a7f0              # double 0.36712541315011915
	.quad	0x3fc65cd555aaf43c              # double 0.17470804865834733
	.quad	0x3fe7545ff4d90585              # double 0.72904966184448539
	.quad	0x3fe9ebb05ca16c17              # double 0.81002061931519875
	.quad	0x3fb11798bd332c90              # double 0.066766306105977558
	.quad	0x3fca07d389bb18b0              # double 0.20336384034289301
	.quad	0x3fd6bfc09b168b6e              # double 0.35545363564795351
	.quad	0x3fb8552ab1ffa338              # double 0.095049541908918012
	.quad	0x3fe52d756caf2152              # double 0.66179915644992549
	.quad	0x3fe9324fdf8851a4              # double 0.78739160212221692
	.quad	0x3fe600b4acfc26a6              # double 0.687586152898082
	.quad	0x3fc0bfed6e546de8              # double 0.13085716139981618
	.quad	0x3fae0f02118b1060              # double 0.058708252564912966
	.quad	0x3fe55d412ba25673              # double 0.66763361475268679
	.quad	0x3fc2615b8fe30d20              # double 0.14359612012604206
	.quad	0x3fd33c25f735a096              # double 0.30054616109419763
	.quad	0x3fd66f9e2c9713fa              # double 0.35056261400706001
	.quad	0x3febcee77211b419              # double 0.8690068462289019
	.quad	0x3fa0af83ed42a940              # double 0.032589075767946785
	.quad	0x3fd208174ebc1302              # double 0.28174383820469029
	.quad	0x3fe9a84b3495e90c              # double 0.80179367323515426
	.quad	0x3fe025beb14c1023              # double 0.50460753086418142
	.quad	0x3fee968d89b7d11a              # double 0.95587803743413535
	.quad	0x3fa06cb81185cb00              # double 0.032079460276596805
	.quad	0x3fe6f351e71cafa6              # double 0.71720214022706297
	.quad	0x3fe9c805ce4fed5c              # double 0.80566683097223856
	.quad	0x3fd94539bfd79f66              # double 0.39485019430730117
	.quad	0x3fed466adcb654be              # double 0.91484587772233517
	.quad	0x3fe9160c9a983a47              # double 0.78394155687585332
	.quad	0x3fc72bbd1abe5cbc              # double 0.18102229886856047
	.quad	0x3fead11be01cf071              # double 0.83802598735884548
	.quad	0x3f9576275426f1e0              # double 0.020958532820928855
	.quad	0x3fed840607b1fbb4              # double 0.92236615660646359
	.quad	0x3fedb31852c31de0              # double 0.92811218418585994
	.quad	0x3fe5dc2fd575a296              # double 0.68312827769576034
	.quad	0x3f9e20751c258c20              # double 0.029420690386711468
	.quad	0x3fe415bd36672b6c              # double 0.62765370011889621
	.quad	0x3fe6b25a70a272a5              # double 0.70927164076745852
	.quad	0x3fe25ab42a933955              # double 0.57357223811576807
	.quad	0x3fda120e35a0d5ae              # double 0.40735202061781706
	.quad	0x3fd23ad7c547f028              # double 0.28484148278926336
	.quad	0x3fef152fdbd620f4              # double 0.97133629738621474
	.quad	0x3fefa5e3e0072df8              # double 0.98900026088216375
	.quad	0x3fe34c0516fb9887              # double 0.60302977074458475
	.quad	0x3fd218a47d2f92c4              # double 0.28275406098536515
	.quad	0x3fe9c89de138e4c9              # double 0.80573934544295256
	.quad	0x3fe61a123d70b866              # double 0.69068252563534993
	.quad	0x3fdfeeaba79a6ecc              # double 0.49894229285721958
	.quad	0x3fed2df30446aeb8              # double 0.91185904345680679
	.quad	0x3feaa0b15bf1c1bc              # double 0.83211582143672258
	.quad	0x3fbc27f4ccf224a8              # double 0.10998468402444195
	.quad	0x3fd414af09a46b9e              # double 0.3137624353564038
	.quad	0x3fe1e16889eaf8a3              # double 0.55876566826897933
	.quad	0x3fe187ca76e6fb5b              # double 0.54782603476619884
	.quad	0x3fe261f93aee76be              # double 0.574459662533364
	.quad	0x3fcd2f40e46b0e3c              # double 0.22800456193191276
	.quad	0x3fb237022a3623f8              # double 0.071151862435854585
	.quad	0x3fdd7c23e49b503e              # double 0.46070191693184259
	.quad	0x3fe18194b01fba3f              # double 0.54706797026830845
	.quad	0x3fdf73a6a69bf0c6              # double 0.49143377561973656
	.quad	0x3fe72f7151023114              # double 0.72454133817658084
	.quad	0x3f9360290f33a640              # double 0.018921510269967579
	.quad	0x3f9f5c0e1794b3e0              # double 0.03062459963728148
	.quad	0x3fdf7a9d660e72ee              # double 0.49185881582688651
	.quad	0x3fe3a0b75a49b654              # double 0.61336867937434159
	.quad	0x3fbb2a38ff2a52f0              # double 0.10611301641103998
	.quad	0x3fe2e76c865ba54f              # double 0.59074999086184643
	.quad	0x3fee2ba9ead26260              # double 0.94283004630694833
	.quad	0x3fd207d93d4ba20c              # double 0.28172904001124333
	.quad	0x3fe1e942e42f0e27              # double 0.55972427909040767
	.quad	0x3fdeb529b8e0c774              # double 0.47980731062408855
	.quad	0x3fe21cd1e614784a              # double 0.56601805627338675
	.quad	0x3fd57ae6efb92900              # double 0.33562634859539742
	.quad	0x3fe84c5d990476a9              # double 0.75932197462289708
	.quad	0x3fd840f3753e00f2              # double 0.37896429490503103
	.quad	0x3feeb8b822d1212c              # double 0.96004874038866239
	.quad	0x3fb8715634e29f98              # double 0.095479381476819447
	.quad	0x3fe8181511a9cf39              # double 0.75293973398081626
	.quad	0x3fd646694049e6d4              # double 0.34804755476180316
	.quad	0x3fd1990253f51300              # double 0.27496393393475671
	.quad	0x3fb41bd80e414658              # double 0.078549865226955062
	.quad	0x3fd8597d10e32c3a              # double 0.38046194695624858
	.quad	0x3f9836d294e77240              # double 0.023646631563553067
	.quad	0x3fef82f45a8deb06              # double 0.98473565756225478
	.quad	0x3fe924c22862d154              # double 0.78573711288349068
	.quad	0x3fdaef03f331de8e              # double 0.42083834409229659
	.quad	0x3fd9bedb0ecf91e2              # double 0.40227390714997402
	.quad	0x3fe28f1461e07791              # double 0.57996577374045633
	.quad	0x3fc2c40c3fd888a4              # double 0.14660790555450831
	.quad	0x3fe01ec20c8eb7ba              # double 0.503754639173841
	.quad	0x3fd7bb53055ba682              # double 0.37080836795085059
	.quad	0x3fd7182bb560cdc8              # double 0.36085026467045767
	.quad	0x3fdc2c498df6b36e              # double 0.44020308364525007
	.quad	0x3fdc833539f2a834              # double 0.44550829562161032
	.quad	0x3fe5478f69faf694              # double 0.66498537730486129
	.quad	0x3fd0f44ca8f5a99e              # double 0.26491085529291947
	.quad	0x3fe33f17ff3958db              # double 0.60145187233390673
	.quad	0x3fe2a663a6703a7d              # double 0.58281118876932647
	.quad	0x3fd562e9dc376c5a              # double 0.33416220193402568
	.quad	0x3feb2d0b521e5d26              # double 0.84924856222906864
	.quad	0x3fe702fc2f8bd6e4              # double 0.71911439215065487
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
