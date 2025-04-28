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
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	93                              # 0x5d
	.quad	100                             # 0x64
	.quad	109                             # 0x6d
	.quad	149                             # 0x95
	.quad	160                             # 0xa0
	.quad	171                             # 0xab
	.quad	213                             # 0xd5
	.quad	222                             # 0xde
	.quad	232                             # 0xe8
	.quad	275                             # 0x113
	.quad	285                             # 0x11d
	.quad	295                             # 0x127
	.quad	336                             # 0x150
	.quad	352                             # 0x160
	.quad	362                             # 0x16a
	.quad	400                             # 0x190
	.quad	412                             # 0x19c
	.quad	425                             # 0x1a9
	.quad	467                             # 0x1d3
	.quad	477                             # 0x1dd
	.quad	488                             # 0x1e8
	.quad	528                             # 0x210
	.quad	542                             # 0x21e
	.quad	553                             # 0x229
	.quad	593                             # 0x251
	.quad	606                             # 0x25e
	.quad	620                             # 0x26c
	.quad	657                             # 0x291
	.quad	663                             # 0x297
	.quad	672                             # 0x2a0
	.quad	715                             # 0x2cb
	.quad	718                             # 0x2ce
	.quad	727                             # 0x2d7
	.quad	765                             # 0x2fd
	.quad	769                             # 0x301
	.quad	777                             # 0x309
	.quad	815                             # 0x32f
	.quad	821                             # 0x335
	.quad	832                             # 0x340
	.quad	874                             # 0x36a
	.quad	891                             # 0x37b
	.quad	897                             # 0x381
	.quad	936                             # 0x3a8
	.quad	946                             # 0x3b2
	.quad	955                             # 0x3bb
	.quad	999                             # 0x3e7
	.quad	1002                            # 0x3ea
	.quad	1007                            # 0x3ef
	.quad	1046                            # 0x416
	.quad	1056                            # 0x420
	.quad	1071                            # 0x42f
	.quad	1110                            # 0x456
	.quad	1118                            # 0x45e
	.quad	1130                            # 0x46a
	.quad	1170                            # 0x492
	.quad	1178                            # 0x49a
	.quad	1189                            # 0x4a5
	.quad	1228                            # 0x4cc
	.quad	1236                            # 0x4d4
	.quad	1246                            # 0x4de
	.quad	1285                            # 0x505
	.quad	1295                            # 0x50f
	.quad	1305                            # 0x519
	.quad	1344                            # 0x540
	.quad	1351                            # 0x547
	.quad	1362                            # 0x552
	.quad	1400                            # 0x578
	.quad	1416                            # 0x588
	.quad	1426                            # 0x592
	.quad	1463                            # 0x5b7
	.quad	1471                            # 0x5bf
	.quad	1479                            # 0x5c7
	.quad	1522                            # 0x5f2
	.quad	1527                            # 0x5f7
	.quad	1541                            # 0x605
	.quad	1578                            # 0x62a
	.quad	1595                            # 0x63b
	.quad	1601                            # 0x641
	.quad	1642                            # 0x66a
	.quad	1649                            # 0x671
	.quad	1664                            # 0x680
	.quad	1705                            # 0x6a9
	.quad	1714                            # 0x6b2
	.quad	1724                            # 0x6bc
	.quad	1764                            # 0x6e4
	.quad	1770                            # 0x6ea
	.quad	1786                            # 0x6fa
	.quad	1825                            # 0x721
	.quad	1831                            # 0x727
	.quad	1842                            # 0x732
	.quad	1883                            # 0x75b
	.quad	1891                            # 0x763
	.quad	1899                            # 0x76b
	.quad	1944                            # 0x798
	.quad	1950                            # 0x79e
	.quad	1960                            # 0x7a8
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
	.quad	13                              # 0xd
	.quad	14                              # 0xe
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	69                              # 0x45
	.quad	86                              # 0x56
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	62                              # 0x3e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	97                              # 0x61
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
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
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
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
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	51                              # 0x33
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
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
	.quad	10                              # 0xa
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	50                              # 0x32
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
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
	.quad	52                              # 0x34
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	43                              # 0x2b
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
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
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
	.quad	32                              # 0x20
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	57                              # 0x39
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	82                              # 0x52
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
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
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	61                              # 0x3d
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	6                               # 0x6
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
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
	.quad	52                              # 0x34
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	3                               # 0x3
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	95                              # 0x5f
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	5                               # 0x5
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
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
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	27                              # 0x1b
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	97                              # 0x61
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
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
	.quad	10                              # 0xa
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	80                              # 0x50
	.quad	96                              # 0x60
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
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
	.quad	31                              # 0x1f
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	98                              # 0x62
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
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	62                              # 0x3e
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	26                              # 0x1a
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	83                              # 0x53
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	58                              # 0x3a
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	28                              # 0x1c
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	8                               # 0x8
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	0x3fa9b4e7d27dc940              # double 0.050208324856515052
	.quad	0x3fd8d298b719ab80              # double 0.38785379296194122
	.quad	0x3fdc16d8e50cd95e              # double 0.43889448517020024
	.quad	0x3fe8da20083fa76d              # double 0.77662660227836755
	.quad	0x3fcc89d55fd33874              # double 0.2229563444038295
	.quad	0x3fe93b83d5429d1f              # double 0.78851501133332025
	.quad	0x3feed9a9b9c37c15              # double 0.96407018930392729
	.quad	0x3fdb1768c58742bc              # double 0.42330378808859925
	.quad	0x3fe297e96a1970f2              # double 0.58104391787085619
	.quad	0x3fe9040892f1079d              # double 0.78174236964717958
	.quad	0x3fe3c62304292dbd              # double 0.61793661892573193
	.quad	0x3fe3586f6ce5ee50              # double 0.60454531926320421
	.quad	0x3fd616f35581a4b6              # double 0.34515078878628047
	.quad	0x3fcaefe20a892c6c              # double 0.21044564737744353
	.quad	0x3fc74ccc4568aeac              # double 0.1820311869536132
	.quad	0x3fc2e6532af11208              # double 0.14765395733606135
	.quad	0x3fe9ba9d01601977              # double 0.80402994412069873
	.quad	0x3fe5e5e8701eece1              # double 0.68431493662447107
	.quad	0x3fd2ab10d0de8b44              # double 0.29169102094072152
	.quad	0x3fc004fc22bdbc6c              # double 0.12515212723107838
	.quad	0x3fe73ed4a53a6a2c              # double 0.72641975661401181
	.quad	0x3fe147ca67a94292              # double 0.54001350637743628
	.quad	0x3fe5556d12ddf6a9              # double 0.66667798695535396
	.quad	0x3fcb79a49b0dd3fc              # double 0.21464974947926396
	.quad	0x3fa46bbf359995c0              # double 0.039884543698274211
	.quad	0x3fd53ded8a14c294              # double 0.33190477833253706
	.quad	0x3fd3b6d8985486fe              # double 0.30803503871912585
	.quad	0x3f9a2d237d64d780              # double 0.025562815216481294
	.quad	0x3f94e3751aedaf20              # double 0.020398931282598842
	.quad	0x3f87c2028cf9e280              # double 0.011600513388871692
	.quad	0x3fd131faf7185ea2              # double 0.26867555742635763
	.quad	0x3fe188930ca9ff18              # double 0.54792168115088469
	.quad	0x3fec6a44908d9832              # double 0.88797214730289498
	.quad	0x3fddc2726c7942ce              # double 0.46499310105450042
	.quad	0x3fe033429910f0a1              # double 0.50625734229790365
	.quad	0x3fe45485dc024273              # double 0.63531773539041436
	.quad	0x3feaf32f61b42311              # double 0.84218567927118404
	.quad	0x3fe314c16fddb749              # double 0.59628364418834068
	.quad	0x3fe41d779f9799b8              # double 0.62859707994794345
	.quad	0x3fe89b397f65fc08              # double 0.76894831545348641
	.quad	0x3fe3e5949300f1fb              # double 0.6217749472776285
	.quad	0x3fd32bfde9315d90              # double 0.29956004879701315
	.quad	0x3fbdce6233ed1288              # double 0.1164304138920419
	.quad	0x3fdd13febab74670              # double 0.45434540018059177
	.quad	0x3fefabe63e1877a4              # double 0.98973381164590934
	.quad	0x3fcd610ed2c422f0              # double 0.22952447215381921
	.quad	0x3fe573251a7dc3db              # double 0.67030577825618864
	.quad	0x3feb4df5ca88f341              # double 0.85326661641702384
	.quad	0x3fdd282b57ba34a0              # double 0.45557673995137726
	.quad	0x3fab63e731f8bd80              # double 0.05349657521253004
	.quad	0x3fe6f7f3676032d1              # double 0.71776743116932995
	.quad	0x3fecfe9228f38f15              # double 0.90607555387802796
	.quad	0x3fe7adada319a4bd              # double 0.73995096068860955
	.quad	0x3fef42cb0cbd87e8              # double 0.9769034622988757
	.quad	0x3fea42b621a204b0              # double 0.82064348763392125
	.quad	0x3fbdb23eddeb10c8              # double 0.1160010616104642
	.quad	0x3fe4f8ca33d4f1b8              # double 0.65536985515023272
	.quad	0x3fe234da7d357462              # double 0.56895183997006549
	.quad	0x3fefaf43b52833db              # double 0.99014459020838374
	.quad	0x3fed99763d9d466c              # double 0.92498313936284892
	.quad	0x3fe93babe3628be2              # double 0.78853411112902116
	.quad	0x3fba72024e3c0990              # double 0.10330213937780841
	.quad	0x3febf6ed0471e02d              # double 0.87389231556062941
	.quad	0x3fdfaae44aa7e2a6              # double 0.49480540552716901
	.quad	0x3fc5c39ea269aee4              # double 0.17003233843148913
	.quad	0x3fcda6d4f1297d34              # double 0.23165380263797319
	.quad	0x3fe5a937a989a4b8              # double 0.67690642464471917
	.quad	0x3fe9ad36d6511a43              # double 0.80239431246520387
	.quad	0x3fe4be0da540f6bf              # double 0.6481998660671805
	.quad	0x3fef5914386a8e56              # double 0.97962389963908936
	.quad	0x3fed06a882fbca2f              # double 0.90706277449345929
	.quad	0x3fefd0d6f2ac93c1              # double 0.99424312016764571
	.quad	0x3fddf4cf229de174              # double 0.46806696301020811
	.quad	0x3fedeb3e837bd4e4              # double 0.93496633224881664
	.quad	0x3fde71e8e431ec9a              # double 0.47570249828977185
	.quad	0x3fef21d5c2d7b6ec              # double 0.97288024954988605
	.quad	0x3fc8e7e7da60c7a8              # double 0.19457719958296349
	.quad	0x3fb5f53380420dd0              # double 0.085772723019594154
	.quad	0x3fd35fc303173d4a              # double 0.30271983434518701
	.quad	0x3febb338dd6b2217              # double 0.86562770124243371
	.quad	0x3faccaaa1fce92a0              # double 0.056233707792931797
	.quad	0x3fdcde51464c0034              # double 0.45106918206147673
	.quad	0x3fc8fb502f1d4e90              # double 0.19516947079192848
	.quad	0x3fd2c62cdb608a10              # double 0.29334565566583226
	.quad	0x3fe02ec6c1c3f637              # double 0.5057100090486476
	.quad	0x3fe5d15da04d0101              # double 0.68180733975171404
	.quad	0x3fe939f42350b6ed              # double 0.78832442185895746
	.quad	0x3fd3b98c1c216f90              # double 0.30819990870599501
	.quad	0x3fe40ee036cf8063              # double 0.62681589799104775
	.quad	0x3f96acc48457ac60              # double 0.022143431260627344
	.quad	0x3fc544717b0fc094              # double 0.16615122326721077
	.quad	0x3fc2794e340f8088              # double 0.14432694952029501
	.quad	0x3fe15d9efccffad7              # double 0.54267835023332622
	.quad	0x3fe5a301a92922b3              # double 0.6761482528609889
	.quad	0x3fe76ebaebf0405f              # double 0.73226686555609521
	.quad	0x3feeeef4e4876839              # double 0.96666950830991205
	.quad	0x3fcd7f6ef34ad188              # double 0.23045145873551243
	.quad	0x3fc53c3beb89b150              # double 0.16590069771644744
	.quad	0x3fddfc7245cf56f8              # double 0.46853310410857274
	.quad	0x3fe0b7fd75d7b819              # double 0.52245972648757111
	.quad	0x3fe4d917a00a3f2a              # double 0.65150052316491736
	.quad	0x3fd6e0b3339a1838              # double 0.35746459998370339
	.quad	0x3febe057fef376a9              # double 0.8711357097160618
	.quad	0x3fed0acaad268c2a              # double 0.90756734674903794
	.quad	0x3fd447cab0bc35c0              # double 0.3168818212442055
	.quad	0x3fb566ba363efea8              # double 0.083598745578451372
	.quad	0x3fdcfb944b0d82fe              # double 0.45285518006680536
	.quad	0x3fe48c06d8ac7e3a              # double 0.64209310835935374
	.quad	0x3fce57c1d268f3cc              # double 0.23705313466953581
	.quad	0x3fa21163720b59f0              # double 0.035288913413456302
	.quad	0x3fee3f48f653292b              # double 0.94522522077867188
	.quad	0x3fe9dc15440951e7              # double 0.80811560905800384
	.quad	0x3fee575b6051dc42              # double 0.94816368877844348
	.quad	0x3fd3f27d51b2d020              # double 0.3116753862225341
	.quad	0x3fdbb98c0e9eafe4              # double 0.43319989612314047
	.quad	0x3fe4443cf6c2ae80              # double 0.63332985110669426
	.quad	0x3fcf0d82cd446aa4              # double 0.24259982130827951
	.quad	0x3fdc1220f6f2206a              # double 0.43860649219323611
	.quad	0x3febf9fbd51cebdf              # double 0.87426559089305644
	.quad	0x3fbb13af65ddfc00              # double 0.10576912152281182
	.quad	0x3fe0521c32d2e9fd              # double 0.51002321173228859
	.quad	0x3fa58cb07b515a80              # double 0.042088999799195115
	.quad	0x3fd8f593c9bdbf5e              # double 0.38998884869851291
	.quad	0x3f7ea2e5a2bb9d80              # double 0.0074795694488111186
	.quad	0x3fd04eac45d6ce0a              # double 0.25480181522581857
	.quad	0x3fdd7ca0c806cb42              # double 0.46073169263688751
	.quad	0x3fece6211983083d              # double 0.90309195502073403
	.quad	0x3febaf1627d3bf1c              # double 0.8651228692888
	.quad	0x3fc5db949bae16f8              # double 0.17076356507839541
	.quad	0x3fedb8125a558ad7              # double 0.92871968882931355
	.quad	0x3feaa21aec12de37              # double 0.83228822811265146
	.quad	0x3fe38eec2291dd89              # double 0.61119658233558127
	.quad	0x3f9f10ee0b4fc3e0              # double 0.030338019791034898
	.quad	0x3fb297b3a7d2fa18              # double 0.072627285454452184
	.quad	0x3fef11b5fee99bd5              # double 0.9709119776497298
	.quad	0x3fd478c2bb3ef7b0              # double 0.31987064634074169
	.quad	0x3fb390079795d388              # double 0.07641646815120684
	.quad	0x3fd4e82b2c437820              # double 0.32667044947254631
	.quad	0x3fe7775caa701ddf              # double 0.7333205536714863
	.quad	0x3fda3afd22e45488              # double 0.40985039145864066
	.quad	0x3fd8c46ac636adf4              # double 0.38698834759517742
	.quad	0x3fe6502205887ab4              # double 0.69728184776962232
	.quad	0x3fe0d7c91a8fd18b              # double 0.52634101093149022
	.quad	0x3fd78141a68078de              # double 0.3672641874308179
	.quad	0x3fb5944d1773f3d0              # double 0.084294145799460595
	.quad	0x3fd946e1dfd6a0c6              # double 0.39495131358354418
	.quad	0x3fd543942e016b50              # double 0.33224968426445844
	.quad	0x3fec68db960f6c57              # double 0.88780001934663744
	.quad	0x3fd2d860ccbdb1d6              # double 0.29445667261350417
	.quad	0x3feb4405e500192f              # double 0.85205359198224595
	.quad	0x3fe31bfcd134089a              # double 0.59716645107279764
	.quad	0x3fd1302b06e0737a              # double 0.26856494590338509
	.quad	0x3f8cca67611b9200              # double 0.014057929659835544
	.quad	0x3fd4f2b9ede393f2              # double 0.32731483680100759
	.quad	0x3fdaeeda0d663f04              # double 0.42082835491690695
	.quad	0x3fe8d3e79d1dccc2              # double 0.77586727797315569
	.quad	0x3fdd7972f796e592              # double 0.46053766420990272
	.quad	0x3fe9cdec7c2fa195              # double 0.80638717894639689
	.quad	0x3fe32fe1d04335ee              # double 0.59959498096730868
	.quad	0x3fd844698a276730              # double 0.37917555324166852
	.quad	0x3fe4928d7a5ec0cb              # double 0.64288972759643437
	.quad	0x3fcd33959b2b587c              # double 0.22813673092486286
	.quad	0x3fce975044c7621c              # double 0.2389927230676826
	.quad	0x3fe581562a5cd6cb              # double 0.67203815721469462
	.quad	0x3fcebab1afc4b8ec              # double 0.24007245142406164
	.quad	0x3fe7b7f889188675              # double 0.7412073781635643
	.quad	0x3fde448e53e12cc0              # double 0.47293432418218728
	.quad	0x3fb7983e19234680              # double 0.092166787278324946
	.quad	0x3fe1a1e30e3c8411              # double 0.55101158886475521
	.quad	0x3fd33842f97b5be2              # double 0.30030893672431891
	.quad	0x3fe3c03198d62a9c              # double 0.6172111497010806
	.quad	0x3fdc8d37c9f6334a              # double 0.44611925814460973
	.quad	0x3faa582170f2e4c0              # double 0.051453633344360039
	.quad	0x3fe94a9c3003c4da              # double 0.79035767915606958
	.quad	0x3fed7ab5712129c0              # double 0.92122909637082983
	.quad	0x3fd9a608c772f6ce              # double 0.40075892903756205
	.quad	0x3fbb3b2fc55054e8              # double 0.10637186591368997
	.quad	0x3fb6623c040d5ac0              # double 0.087436438550279938
	.quad	0x3fd7f98a88e8afe4              # double 0.3746057831765468
	.quad	0x3fdcf71194624c3c              # double 0.45257987490294105
	.quad	0x3fce1029a1b32628              # double 0.23486824412820906
	.quad	0x3fd4d0d095cc03a6              # double 0.32524504307371627
	.quad	0x3fdbb4b3f51c3f4c              # double 0.43290423332745287
	.quad	0x3fd55c09d84965b4              # double 0.33374258157490577
	.quad	0x3fe4ad6e57e9edc2              # double 0.64617077990208593
	.quad	0x3feb78a78b976d07              # double 0.85847832931486401
	.quad	0x3feb2112a7739905              # double 0.84778721528417178
	.quad	0x3faf0717cabe15e0              # double 0.060600989817469531
	.quad	0x3fd6a758a1a49d3c              # double 0.35396400247050841
	.quad	0x3fd56655f565c0f6              # double 0.33437108006093241
	.quad	0x3fd30d4374f8e9a6              # double 0.29768454001500755
	.quad	0x3fe2118582231474              # double 0.56463885705365024
	.quad	0x3fde872a544cf652              # double 0.47699983818515534
	.quad	0x3fe1ff6ba15c6bbe              # double 0.56242925182174708
	.quad	0x3feaee11dd3fc174              # double 0.84156125271515103
	.quad	0x3fea3c09a56b54b3              # double 0.81982881840180821
	.quad	0x3fe181c478ed7e12              # double 0.54709075564091081
	.quad	0x3fec79f562217ebd              # double 0.88988751569919311
	.quad	0x3fcef8fcc26674c4              # double 0.24197349064062312
	.quad	0x3fe2c5b6dc7ef554              # double 0.5866350466309691
	.quad	0x3fb4c031cfe3c208              # double 0.081057656530681865
	.quad	0x3fde654e239c7ff6              # double 0.47493318059605316
	.quad	0x3fc68bcdaed18174              # double 0.17614146266988551
	.quad	0x3fe1cf9aa7d45e14              # double 0.55659230021678008
	.quad	0x3fe2a2a00c855b80              # double 0.58235170789235724
	.quad	0x3f9fc4880804c2c0              # double 0.031023145188728618
	.quad	0x3fcc36a57de9db04              # double 0.22041767738456752
	.quad	0x3fecabfb5cd71fc9              # double 0.89599388249279699
	.quad	0x3fe2628ef5e87951              # double 0.57453105954099659
	.quad	0x3fdd8d2362db5b00              # double 0.46173939374914141
	.quad	0x3fd2c6fc62874c22              # double 0.29339513418125496
	.quad	0x3fdc217b1d04f8f4              # double 0.43954351266792391
	.quad	0x3fe0df40174d5954              # double 0.52725224066925103
	.quad	0x3fee57a522fe9245              # double 0.94819886050078905
	.quad	0x3feedfb03858c7c9              # double 0.96480570798143461
	.quad	0x3fe7b5da1700f330              # double 0.74094871991073852
	.quad	0x3fe4485e3ddebafa              # double 0.63383400043480198
	.quad	0x3fee381957cf49b8              # double 0.9443480219873015
	.quad	0x3fd1602a34c8c418              # double 0.27149443773947857
	.quad	0x3fc45d3887756b94              # double 0.15909487356369978
	.quad	0x3fe3ca2809af598c              # double 0.61842729465097213
	.quad	0x3fd5623d3b62fbea              # double 0.33412104415395893
	.quad	0x3fb828b5236b02d0              # double 0.094371148249602798
	.quad	0x3fa4c78501d10d10              # double 0.040584713432077035
	.quad	0x3fe346f5486d69bc              # double 0.60241188188529504
	.quad	0x3fe48a93bc3fbaa9              # double 0.64191614882823445
	.quad	0x3fe8f45a56e69d4a              # double 0.77982823345966179
	.quad	0x3fea0f2039832b80              # double 0.8143464206017228
	.quad	0x3fed802f38076673              # double 0.92189751570840739
	.quad	0x3fead4bdbf2e7570              # double 0.83846938457615572
	.quad	0x3fdbaaddf1c9b664              # double 0.43230389225104759
	.quad	0x3fe3f87fcfef013a              # double 0.62408438312562642
	.quad	0x3fe90469a59e13d9              # double 0.78178865763822636
	.quad	0x3fb7490f5b0d3780              # double 0.09095855687084331
	.quad	0x3f9f328469d040c0              # double 0.030466145475714468
	.quad	0x3fd00a7b57875f00              # double 0.25063975856527065
	.quad	0x3fe3a08fd7750e5b              # double 0.61334983903402518
	.quad	0x3fe931d86b21505d              # double 0.78733464168409351
	.quad	0x3fe60720f6c51d6e              # double 0.6883702106214693
	.quad	0x3fed44b909aabc6d              # double 0.9146390141303421
	.quad	0x3fb9f54eaf6ad340              # double 0.10139934332512457
	.quad	0x3feae914b784eb7f              # double 0.84095226138684598
	.quad	0x3fec1d29a65af77f              # double 0.87855989924695155
	.quad	0x3fe4549546c1e71b              # double 0.63532508678256094
	.quad	0x3fc8a06a1dc34c8c              # double 0.19239546254411655
	.quad	0x3fe9fed3ccbc2fd3              # double 0.81235685336423058
	.quad	0x3fea6ff601cf3beb              # double 0.82616710999888932
	.quad	0x3fc81f10aeeb8ad4              # double 0.18844803372402075
	.quad	0x3fd3695e35edbf8a              # double 0.30330615297770491
	.quad	0x3fd0b5421f66d34c              # double 0.26106312815254706
	.quad	0x3fd675737071efde              # double 0.35091863614047536
	.quad	0x3fb2a12779b40b60              # double 0.072771517956466081
	.quad	0x3feea556d4018e24              # double 0.95768300445019294
	.quad	0x3fc87a004a39ab78              # double 0.19122317909508602
	.quad	0x3fe62bfcbdea2bc6              # double 0.69286954014511859
	.quad	0x3fee87b81079bade              # double 0.95406726091263372
	.quad	0x3fe877e1252b0034              # double 0.76463372477883817
	.quad	0x3fe9357465a48ac8              # double 0.78777522899721308
	.quad	0x3fe050ab6b468d11              # double 0.50984736397041008
	.quad	0x3fd5d79c77b70ef2              # double 0.34128486338543873
	.quad	0x3fee76d5204a9907              # double 0.9520059233371122
	.quad	0x3fdce8296a9321c0              # double 0.45167003066719857
	.quad	0x3fe76c82f837e183              # double 0.73199604492315051
	.quad	0x3f968f6b8519d3e0              # double 0.022031478880723543
	.quad	0x3f9876fb55a5d600              # double 0.02389137945416131
	.quad	0x3fd2f9c7bd9d3b84              # double 0.29649537579546625
	.quad	0x3fee176300856d84              # double 0.94035482503697709
	.quad	0x3fd3a2174b290da8              # double 0.30676824893836363
	.quad	0x3feb9c560fd27335              # double 0.86283400621650819
	.quad	0x3fc97a5c06e65e00              # double 0.19904661499889187
	.quad	0x3fe73570e90919e5              # double 0.72527356638675811
	.quad	0x3fc1009d2d3cd128              # double 0.13283123692384291
	.quad	0x3fed2c7283d5c541              # double 0.91167569874793497
	.quad	0x3fd21a5831a10e98              # double 0.28285794111818907
	.quad	0x3fe4ac1439119a4e              # double 0.64600573679201445
	.quad	0x3fd3f1202a49f7c8              # double 0.31159214143542302
	.quad	0x3fd2606d548413ea              # double 0.28713544133671454
	.quad	0x3fe3d448ff7c94fd              # double 0.61966371440635692
	.quad	0x3fdf2b3e8865176c              # double 0.48701442069829315
	.quad	0x3fedaeab8b835f03              # double 0.92757203339257932
	.quad	0x3fe8c48a0b4651eb              # double 0.77399160577857395
	.quad	0x3fcb8350ba567694              # double 0.21494492624781414
	.quad	0x3fc8d182cdd2559c              # double 0.19389376687892657
	.quad	0x3fe84e7aa2ed4644              # double 0.75957996198321398
	.quad	0x3fe299adde8e3184              # double 0.58125966518268557
	.quad	0x3fe1b80251ccbaf8              # double 0.55371204353818282
	.quad	0x3fe4ba3ac8d5bd7b              # double 0.64773310876436996
	.quad	0x3fc22724e6d0fa08              # double 0.14181958456352128
	.quad	0x3fdc73bc350cb7aa              # double 0.44456391506798332
	.quad	0x3fcb6beb78726714              # double 0.21423095112987112
	.quad	0x3fa66555d2a10bb0              # double 0.043741876565511872
	.quad	0x3fd1fa0d1a30d5d8              # double 0.28088691289607715
	.quad	0x3fca06fec1e53e40              # double 0.20333847491791524
	.quad	0x3fe245f79db2911e              # double 0.57104092407510953
	.quad	0x3fbc0f9c1d0c98a0              # double 0.1096131869240673
	.quad	0x3fecfbeb16342e26              # double 0.90575174652753243
	.quad	0x3fe110b39e79973d              # double 0.53328877403394126
	.quad	0x3fd631655004fb5c              # double 0.34676487745666917
	.quad	0x3fe2a1e9664c9cfb              # double 0.58226461391760098
	.quad	0x3fd4dd91496177aa              # double 0.32602340856635215
	.quad	0x3fdaa7db28946a52              # double 0.41649512255540799
	.quad	0x3fe93df5266aaf76              # double 0.78881318572301384
	.quad	0x3fe22c59052ddfb8              # double 0.56791354190408239
	.quad	0x3f9969ab62dca1a0              # double 0.024817159565971303
	.quad	0x3fa2426a4bef5a10              # double 0.035662957925229333
	.quad	0x3fb40ec035ef6c68              # double 0.078350079696450359
	.quad	0x3fe596a84f448eee              # double 0.67464080316537234
	.quad	0x3fe2622cde33d926              # double 0.57448428534442963
	.quad	0x3fd8cdb4ffad114e              # double 0.38755536049236106
	.quad	0x3fd47db9c29c8e58              # double 0.32017368321451078
	.quad	0x3fed8f27e6dadddf              # double 0.92372508133751896
	.quad	0x3fc36d1fbe970c04              # double 0.15176770025399844
	.quad	0x3fe9d9ec874651b8              # double 0.8078520433505707
	.quad	0x3fd89034ed6ee088              # double 0.38380168139293191
	.quad	0x3fc2fa1d38247168              # double 0.14825787774396848
	.quad	0x3fbca2f8ac6bc848              # double 0.11186174592492748
	.quad	0x3fe45e81ad45c851              # double 0.63653644411375343
	.quad	0x3feef72e35acfeec              # double 0.96767340167568027
	.quad	0x3fe386bdfebbe345              # double 0.61019801857683176
	.quad	0x3fd3e345dd35cf18              # double 0.31074663736875285
	.quad	0x3fc65e67ab7b404c              # double 0.17475601075284641
	.quad	0x3fe3c2dba398ea64              # double 0.61753637268641315
	.quad	0x3fe999b27ff49685              # double 0.80001187316220579
	.quad	0x3fec3fcd71272524              # double 0.88278839206865145
	.quad	0x3fd73a7883f09d16              # double 0.3629437721705967
	.quad	0x3fe1b355e7356599              # double 0.55314154775549007
	.quad	0x3fe95e0aa58bdf9a              # double 0.7927296861007449
	.quad	0x3f5c91f82773ca00              # double 0.0017437861804948662
	.quad	0x3fd4356cea11e4f0              # double 0.31576083048237447
	.quad	0x3fe8bbb8b0a9829f              # double 0.77291521553350495
	.quad	0x3fd037bb12519fce              # double 0.25340153492879558
	.quad	0x3fd8b36936e0db5c              # double 0.38595037802899923
	.quad	0x3fedd0fe46ef5b53              # double 0.9317618737648935
	.quad	0x3fea6abacd9d7c9a              # double 0.82552852782454811
	.quad	0x3fb63cd323630c90              # double 0.086865612162954741
	.quad	0x3feb419587b0540f              # double 0.85175587178912504
	.quad	0x3feaa1993b81aae5              # double 0.83222638723722453
	.quad	0x3fe9fb5bfb3fd9cf              # double 0.81193350860740476
	.quad	0x3fc31a3d4271090c              # double 0.14923825973716764
	.quad	0x3fd535c470bac562              # double 0.3314066983103513
	.quad	0x3fdfc21690514958              # double 0.49622119992740954
	.quad	0x3fed26b67595f92a              # double 0.91097567525847478
	.quad	0x3fefbacfb397b790              # double 0.99155411793411652
	.quad	0x3feebee907062108              # double 0.96080447551597192
	.quad	0x3fddd539321fe652              # double 0.46613912482243791
	.quad	0x3fd9449e3cb23244              # double 0.39481311728812707
	.quad	0x3feba168a22d48eb              # double 0.86345321345495785
	.quad	0x3fef1f87fd80889e              # double 0.97259902488828565
	.quad	0x3fc7e422e52667b0              # double 0.18664966763463786
	.quad	0x3fdd919fcfe95b62              # double 0.46201319984304778
	.quad	0x3fd14f798c03b640              # double 0.2704757563904856
	.quad	0x3fe686745653387a              # double 0.70391289577834404
	.quad	0x3fd87d63361d1184              # double 0.38265304836775038
	.quad	0x3f8345a10858f880              # double 0.0094101505920856087
	.quad	0x3fe3d7d3c57ba824              # double 0.62009609766869689
	.quad	0x3fdf953562f76f64              # double 0.49348196663571842
	.quad	0x3fd47c48bfacf934              # double 0.32008570402458081
	.quad	0x3f8a194b5a43b240              # double 0.012743557636406
	.quad	0x3fe185e4a6b43d79              # double 0.54759438094508461
	.quad	0x3f86e21257882400              # double 0.011173384948977017
	.quad	0x3fe2ed87cecbff83              # double 0.59149542226803964
	.quad	0x3fcb60c0404f7a48              # double 0.21389010563048516
	.quad	0x3fec6b68eee9b5ab              # double 0.88811155951196008
	.quad	0x3fe81acc40c386db              # double 0.75327122353720755
	.quad	0x3fe464c956b5688c              # double 0.63730303702620139
	.quad	0x3fdb853fc6a55662              # double 0.43000788115509725
	.quad	0x3fe81dbad0ec721e              # double 0.75362911992448622
	.quad	0x3fe72714728cbb15              # double 0.72352049229616233
	.quad	0x3fd1629ef283deb8              # double 0.27164434130780135
	.quad	0x3fb2e261186ebab8              # double 0.073766773667311436
	.quad	0x3fe0c7b4b6c515a4              # double 0.52437816331137244
	.quad	0x3fea13cd27f3d97d              # double 0.81491716197233155
	.quad	0x3fd16df6eb78a5e0              # double 0.2723367023014287
	.quad	0x3fb43cf3b9e09108              # double 0.079055054550341564
	.quad	0x3fe89a0d5b86864b              # double 0.76880519748756038
	.quad	0x3fe73f3570a30450              # double 0.72646591185924514
	.quad	0x3fef6c2f4988c5f3              # double 0.98195614206468773
	.quad	0x3fc4728cf45c044c              # double 0.15974580699551877
	.quad	0x3fb4463187d88988              # double 0.079196067491045352
	.quad	0x3fd7d65b369e479c              # double 0.37245827039543555
	.quad	0x3fe0130323271da9              # double 0.50232083192616017
	.quad	0x3fe95ba348d2f846              # double 0.79243625853974531
	.quad	0x3fccaaca38e0cfa4              # double 0.22396209504370035
	.quad	0x3fcd7e58a8b1c978              # double 0.23041828381571938
	.quad	0x3fedf8ce7fa6cae8              # double 0.9366219037240997
	.quad	0x3fdf362cf5a0102e              # double 0.48768161761131779
	.quad	0x3fec45d3a3e90841              # double 0.8835237695095729
	.quad	0x3fe65de13d140c30              # double 0.69895994119031535
	.quad	0x3fb9b718e06866a8              # double 0.10045009115892845
	.quad	0x3fe51ee4f75ef531              # double 0.66002128901133095
	.quad	0x3f76cf4ccfe26800              # double 0.0055687904806749344
	.quad	0x3fee5ede1bafed44              # double 0.9490805187955762
	.quad	0x3fe974755cb2ee40              # double 0.79546611886275542
	.quad	0x3fe53705b51ce0ae              # double 0.66296658872217562
	.quad	0x3fefd232ccb71eeb              # double 0.99440898879489958
	.quad	0x3fe3f56bf6be0461              # double 0.62370870773169085
	.quad	0x3fe618a0caa0b556              # double 0.69050635886893974
	.quad	0x3fe32bedfb3b6f20              # double 0.59911250180036646
	.quad	0x3fd1a82bcda46c48              # double 0.27588934976819646
	.quad	0x3fd15305ace2680c              # double 0.27069227107279015
	.quad	0x3fca61b029ad11ec              # double 0.20610620532001123
	.quad	0x3fe416c0432c89a8              # double 0.62777722473065456
	.quad	0x3fd3fd2802faf7b6              # double 0.3123264340500741
	.quad	0x3fd85e5370e5520a              # double 0.38075719857195678
	.quad	0x3fedfb03466cb043              # double 0.93689121012494814
	.quad	0x3fd33783829f62ca              # double 0.30026328807938951
	.quad	0x3fe6a49ce78c69c6              # double 0.70759434913934949
	.quad	0x3fea03d7cc5d59cc              # double 0.81296911158534035
	.quad	0x3fd094896b539722              # double 0.25906596642595237
	.quad	0x3fef3a2c8f42eeb0              # double 0.97585132580521439
	.quad	0x3fe3df66c34f7199              # double 0.62102068087147011
	.quad	0x3fd228cf6fe5ce1c              # double 0.28374086310870594
	.quad	0x3fe72081b64e7b05              # double 0.72271810156584648
	.quad	0x3fe7c581ac0fb068              # double 0.742859684045027
	.quad	0x3fe94a27d0785fcb              # double 0.79030218808019848
	.quad	0x3fec992fea627616              # double 0.89369960573430052
	.quad	0x3fe935830e1302f3              # double 0.78778221844558372
	.quad	0x3fdfff335bbd3d6c              # double 0.49995120963008932
	.quad	0x3fd064b97d78c5aa              # double 0.25614773991682205
	.quad	0x3fee4a34626ff977              # double 0.9465581820111727
	.quad	0x3fbf6eb293c37200              # double 0.12278286082750611
	.quad	0x3fefcb6ad5bce2f3              # double 0.99358121629401663
	.quad	0x3fe14fab37b538d0              # double 0.54097519760559898
	.quad	0x3fddeb2ae621fffc              # double 0.46747848962695548
	.quad	0x3fecdf4eb26def3b              # double 0.90225920533655513
	.quad	0x3fc41a228131303c              # double 0.157047570306874
	.quad	0x3fe1d96f1cfaf2ff              # double 0.55779224071702049
	.quad	0x3fdd9eb00fd3756e              # double 0.4628105310965428
	.quad	0x3fdbd273da5e4fba              # double 0.43472000432052094
	.quad	0x3fe9cacc81ab8269              # double 0.80600571943439292
	.quad	0x3fc70d3e880e2d00              # double 0.18009168284729782
	.quad	0x3fe7a23853b0037b              # double 0.73855224938607422
	.quad	0x3fc71ee02985d0e8              # double 0.18062974956013211
	.quad	0x3fd1373db0c38364              # double 0.26899664175112137
	.quad	0x3fd3544d5a3107ac              # double 0.30202039535299252
	.quad	0x3fb4c7511e8eed08              # double 0.081166334114573968
	.quad	0x3fe263e23be0bf0b              # double 0.57469283766656198
	.quad	0x3fe197daac18f0a6              # double 0.54978688824441657
	.quad	0x3fac58631f44bb10              # double 0.055361840788796468
	.quad	0x3f7525cd208aed00              # double 0.0051630032327765196
	.quad	0x3fe440bccf6a75a3              # double 0.63290253172788302
	.quad	0x3fe6a0b9b8639ca2              # double 0.70711980832574661
	.quad	0x3fe31f0a7cceb62b              # double 0.59753918053110533
	.quad	0x3fe548f0ce41eb67              # double 0.66515388760249727
	.quad	0x3fee2a7e61159cdc              # double 0.94268721544076639
	.quad	0x3fe75efd1b4c2e55              # double 0.73034530002173403
	.quad	0x3fc3fa1bb0289980              # double 0.1560701952123047
	.quad	0x3fe35d19dac6d28f              # double 0.60511486749472165
	.quad	0x3fe4f5e952dbaf79              # double 0.65501848395568552
	.quad	0x3fc97bc54569c114              # double 0.19908967866241112
	.quad	0x3feb4a5edd80e038              # double 0.85282843840014433
	.quad	0x3fd94787def3d1cc              # double 0.39499089024255052
	.quad	0x3feeeba4ca4a927c              # double 0.96626510152834965
	.quad	0x3febbb700c335429              # double 0.86663057692442635
	.quad	0x3fe3d1257381f9e3              # double 0.61928055343724642
	.quad	0x3fe8680eb9a96d06              # double 0.76270233404230292
	.quad	0x3fe799c6dfe00972              # double 0.73752158856977545
	.quad	0x3feae7138d368581              # double 0.84070756512316802
	.quad	0x3fddab11b492c87e              # double 0.46356623300665223
	.quad	0x3fea7f8bd3a4a027              # double 0.82806960426842557
	.quad	0x3fc30fb93e2db588              # double 0.14891734634458609
	.quad	0x3fe28937fed08ebd              # double 0.57925033348552513
	.quad	0x3fe04941135b2ad4              # double 0.50894216328137043
	.quad	0x3fee6cb04647f941              # double 0.95076764799868141
	.quad	0x3fe70186de1bc14f              # double 0.71893638020086736
	.quad	0x3fd63f615572ff1c              # double 0.3476184210266966
	.quad	0x3feb9a8dfed0ce6d              # double 0.8626165367954407
	.quad	0x3fe49e594ccd21c8              # double 0.64432969093564285
	.quad	0x3fe5306dd8bca684              # double 0.66216175395420906
	.quad	0x3fbbff5ab444cd50              # double 0.1093651476010582
	.quad	0x3fcda28f4b4b5e74              # double 0.23152342964634764
	.quad	0x3fb010b622c307e0              # double 0.06275499676397045
	.quad	0x3fe743bd162e65b9              # double 0.72701887447617886
	.quad	0x3fe22c49090eab74              # double 0.56790591973309157
	.quad	0x3fd45c3d556bf6d8              # double 0.31812985746351563
	.quad	0x3fea305cfcd2ef10              # double 0.81840371493987796
	.quad	0x3fecba3a9896bf0a              # double 0.89773301889906176
	.quad	0x3feea4908e3bb78b              # double 0.95758846073089054
	.quad	0x3fa7c4f23b9812b0              # double 0.046424455427801603
	.quad	0x3fcd7372b113ae78              # double 0.23008569380123212
	.quad	0x3fd02811b545465a              # double 0.25244562818725103
	.quad	0x3fe6969ccf51d83b              # double 0.70588531963472378
	.quad	0x3fe6104ecbc1aa00              # double 0.68949069782439665
	.quad	0x3fc9ba090800d018              # double 0.20098984614162485
	.quad	0x3fd2efc2dcae8ba0              # double 0.29588386107405462
	.quad	0x3fe16f208bcaaec8              # double 0.54481532385894926
	.quad	0x3fd07d2ad41420be              # double 0.25763960562518295
	.quad	0x3fefd178aa6875e4              # double 0.99432023318120998
	.quad	0x3fe79e2a4978bf2d              # double 0.73805727338728888
	.quad	0x3fd1b32629938030              # double 0.27655939159558596
	.quad	0x3fe136185a10f44f              # double 0.5378534087282193
	.quad	0x3fe11790ae4d4028              # double 0.53412660640060938
	.quad	0x3fd611a3b2c6d8ba              # double 0.34482662638346151
	.quad	0x3fe9045f01e155c5              # double 0.78178358428220263
	.quad	0x3fbc3b128f2e80d8              # double 0.11027637477537
	.quad	0x3fd80b50eab0bbfc              # double 0.37569067877751627
	.quad	0x3fdd69dbe689e034              # double 0.45958611978085462
	.quad	0x3fe3f19b6666b24d              # double 0.623243045809042
	.quad	0x3fd14226f2314d48              # double 0.26966260577792811
	.quad	0x3fdefbe86099e8b6              # double 0.4841252272959865
	.quad	0x3fe75a9e11754a6a              # double 0.72981170091436565
	.quad	0x3fe33eb1379f6e72              # double 0.60140286315750147
	.quad	0x3fed11395178b30d              # double 0.90835252678297851
	.quad	0x3fb45b5f1ef4a6e8              # double 0.079519219453370149
	.quad	0x3fd0d5e434e3b5ce              # double 0.26305489697446383
	.quad	0x3fed0add948bddc6              # double 0.90757636082610627
	.quad	0x3fedbecc4e84591e              # double 0.92954078040455435
	.quad	0x3fe87ace7362e5eb              # double 0.76499102150336051
	.quad	0x3fb7449d4fc36470              # double 0.090890724156808877
	.quad	0x3fdbb2d2c635b14c              # double 0.43278951031131352
	.quad	0x3f85950e01eb2840              # double 0.010538205560255531
	.quad	0x3fac728a3d4e9440              # double 0.055561370834120272
	.quad	0x3fe0c6e2e9af9e5e              # double 0.52427812234686733
	.quad	0x3fde0ff32ec9131c              # double 0.46972350663081541
	.quad	0x3feb1019b2e6015c              # double 0.84571537915330052
	.quad	0x3fcb8bdab51f9880              # double 0.21520551532666232
	.quad	0x3fdd301b4c17acc2              # double 0.45606119566827996
	.quad	0x3fd7c908429862fe              # double 0.37164503577655228
	.quad	0x3fe6fc8e880ee216              # double 0.71832968305449429
	.quad	0x3fd75fc776379c7e              # double 0.36522089523936774
	.quad	0x3fe527314ea887b7              # double 0.66103425372079172
	.quad	0x3fc4a7796adec4ec              # double 0.16136090963622196
	.quad	0x3fbf3e0145cd0900              # double 0.12203987077831258
	.quad	0x3fc2c9fbea75e480              # double 0.14678906391398883
	.quad	0x3fd3b683340c8646              # double 0.30801467974570007
	.quad	0x3fe81f687ab768fa              # double 0.75383399932914519
	.quad	0x3fe80b90d10dd0e3              # double 0.75141182738164181
	.quad	0x3feffb8eeec33842              # double 0.99945780404392104
	.quad	0x3fe0ed3a833490ed              # double 0.52895856500665916
	.quad	0x3fe8c34efbb7e346              # double 0.77384137309773204
	.quad	0x3fd4bb9efc993d3c              # double 0.3239514796050178
	.quad	0x3fd166779838c63c              # double 0.27187909951598832
	.quad	0x3fe581bab7d3065a              # double 0.67208610442339567
	.quad	0x3fd427867416ab8a              # double 0.31491242729924152
	.quad	0x3fc834bbbb9ce830              # double 0.18910929356371886
	.quad	0x3fd12ab13cd7ed56              # double 0.26823073331589364
	.quad	0x3fea832aca71700e              # double 0.82851161517783267
	.quad	0x3fb18523c1629348              # double 0.068437800133847593
	.quad	0x3fe791172881c6b1              # double 0.73646123801719032
	.quad	0x3fe2a8d4c9c7ebdc              # double 0.58310927782383315
	.quad	0x3f9e560800a38200              # double 0.029625058211310673
	.quad	0x3feb38445bd4725e              # double 0.85061853347321992
	.quad	0x3fec090a932ebce7              # double 0.87610367533298195
	.quad	0x3fb3098549686860              # double 0.074364023610912877
	.quad	0x3fc2f08b9f5d6540              # double 0.14796586305127768
	.quad	0x3fdb3770937675e8              # double 0.42525877380998489
	.quad	0x3fb3a82bc50c3240              # double 0.076784835440954602
	.quad	0x3fe45fd4b7a6f134              # double 0.63669811124376574
	.quad	0x3fe7f3f1e6d4daf7              # double 0.74852843364973765
	.quad	0x3fd9034b8245f17e              # double 0.39082610818856967
	.quad	0x3fea0400e6f3e4d7              # double 0.81298871143294604
	.quad	0x3fe978586d9c99bd              # double 0.79594060333766203
	.quad	0x3fa2510422803eb0              # double 0.035774354182760759
	.quad	0x3fd2805c8dc3e1f8              # double 0.28908456653837744
	.quad	0x3fcc91b6e4fd9464              # double 0.22319685155085545
	.quad	0x3fe2719c59d387b7              # double 0.57636849922368227
	.quad	0x3f8b93a4207eb2c0              # double 0.01346519683996783
	.quad	0x3fe8d3d4444cf0e5              # double 0.77585805263472862
	.quad	0x3fdd0b5b4bcdca7a              # double 0.45381815340730436
	.quad	0x3fe85a27c55b1819              # double 0.76100529237806136
	.quad	0x3fd2ee1165a74ac6              # double 0.29578051497552982
	.quad	0x3fb2718248320460              # double 0.072044508577179922
	.quad	0x3fd694774a64128c              # double 0.35281164421784506
	.quad	0x3fe4a8649d875c57              # double 0.64555578963598748
	.quad	0x3fc692327f90232c              # double 0.17633658627189541
	.quad	0x3fec6181017ca281              # double 0.88690233507539074
	.quad	0x3fed718c63cc3392              # double 0.92011088840227928
	.quad	0x3fe303ea56dc98f6              # double 0.59422795262506045
	.quad	0x3fe4c784dd2cf73d              # double 0.64935534666412986
	.quad	0x3fe4175dfa7faff9              # double 0.62785242963354826
	.quad	0x3fa01fb81dd7e9a0              # double 0.031491998332018101
	.quad	0x3fef03e70bdbfdd1              # double 0.96922638241079017
	.quad	0x3fd827917384e554              # double 0.37741504937328796
	.quad	0x3fcad9ece07aa238              # double 0.20977555237665668
	.quad	0x3fd8f0352c54ee04              # double 0.38966111497185829
	.quad	0x3fea33e73484fe38              # double 0.81883583314624442
	.quad	0x3fd27fd86e08c86c              # double 0.28905306573427114
	.quad	0x3fea545a7c2f5214              # double 0.82279705290653959
	.quad	0x3feef855c3fa7aba              # double 0.96781433369672887
	.quad	0x3fc13fef7f1dba3c              # double 0.13476365763513509
	.quad	0x3fd9728c87bee542              # double 0.39761651283659571
	.quad	0x3fdf9b747329708c              # double 0.49386321302677838
	.quad	0x3fefdfbf8d7f6b1e              # double 0.99606301914477391
	.quad	0x3fec03c4b99b50fb              # double 0.87546001673993545
	.quad	0x3fe35b1cfd6a2b67              # double 0.60487222189963752
	.quad	0x3fec95069daaaa76              # double 0.89319163126249523
	.quad	0x3fdb9d8cb86782b2              # double 0.43149106987224706
	.quad	0x3fd527b7073ad59e              # double 0.33054900842702206
	.quad	0x3feca7cd9d290b80              # double 0.89548378653886118
	.quad	0x3fee1ab4b86dc4b5              # double 0.94076000233885415
	.quad	0x3fb1f660c2ca93f8              # double 0.070165679508661927
	.quad	0x3feafbfc272b30b7              # double 0.84325988435877874
	.quad	0x3fefc1f697eedeaf              # double 0.99242715525084246
	.quad	0x3fe829aaec9e0a89              # double 0.75508638586355048
	.quad	0x3fe67a756bb5118d              # double 0.70244856869298788
	.quad	0x3fc64cdd67d55418              # double 0.17422072954164558
	.quad	0x3fa705cc7b5bed30              # double 0.044966116007311263
	.quad	0x3fc609b15b56d834              # double 0.17217080078052194
	.quad	0x3fefb1f5cefcf7a2              # double 0.99047365596173997
	.quad	0x3fa4e1aa88607350              # double 0.040784196040681508
	.quad	0x3febadffde2c6994              # double 0.86499017136820777
	.quad	0x3fd70cd96da4b144              # double 0.36015926081997329
	.quad	0x3fe0de04c6d33c8d              # double 0.52710188706432037
	.quad	0x3fe934490194a7d3              # double 0.78763246830680556
	.quad	0x3fca48d594e18418              # double 0.20534772653175604
	.quad	0x3febfcfd5b2cc7dd              # double 0.87463252837755656
	.quad	0x3fd166898906779e              # double 0.27188337689755737
	.quad	0x3fc6a5c0333e8070              # double 0.17693331243663435
	.quad	0x3fec22180b3ef080              # double 0.87916185566383831
	.quad	0x3fe8668f734194f0              # double 0.76251957426998551
	.quad	0x3fd64d203baa8226              # double 0.34845739199411907
	.quad	0x3fd86585cd66b8d4              # double 0.38119645174709871
	.quad	0x3fcf47ec79d34f18              # double 0.24438243816859351
	.quad	0x3fd921a49e40eb94              # double 0.39267840818836786
	.quad	0x3fe567e8b7f83bc5              # double 0.66893421107840167
	.quad	0x3fe3abe7743464c1              # double 0.61473438926909563
	.quad	0x3fe3289ee150aa44              # double 0.59870857245307052
	.quad	0x3fe9ac0cac6316c9              # double 0.8022521368918315
	.quad	0x3fa8f04e72836f20              # double 0.048708392599762229
	.quad	0x3fcfb9a326ace4f4              # double 0.24785270107694368
	.quad	0x3fa24ccc6dd3a7b0              # double 0.035742176443661733
	.quad	0x3feb0efc21338f43              # double 0.84557920918130269
	.quad	0x3fe8882d280b663b              # double 0.76662309476086621
	.quad	0x3fefc70bd051d1ba              # double 0.99304762542174463
	.quad	0x3fe11c1ddf65ad77              # double 0.53468221313725806
	.quad	0x3fc949b035356aac              # double 0.19756128881529855
	.quad	0x3fe91ade846fa33e              # double 0.78452993265555171
	.quad	0x3fe01f348bb22a8b              # double 0.5038092354237319
	.quad	0x3fcf37d116c07c14              # double 0.24389089213306703
	.quad	0x3fedecbac3da7651              # double 0.9351476502667514
	.quad	0x3fcf889101404454              # double 0.24635517655454697
	.quad	0x3fe71b8a88ff38a3              # double 0.72211195714205123
	.quad	0x3fe996c7c180d2fd              # double 0.79965579789731545
	.quad	0x3fb7a11629494af8              # double 0.092301735953963404
	.quad	0x3fed095d7567592a              # double 0.90739319734965318
	.quad	0x3fd957e33ec37532              # double 0.39598923806427699
	.quad	0x3fe612793f459d36              # double 0.68975508077429626
	.quad	0x3fc15b538e845830              # double 0.13559956034504372
	.quad	0x3fef8a0433f9885e              # double 0.98559770728412466
	.quad	0x3fd42c7673c5275a              # double 0.31521378808667111
	.quad	0x3fd3bca93c4bfd68              # double 0.30838995827067217
	.quad	0x3fdad4f572c3bba2              # double 0.41924797255972568
	.quad	0x3fc18a3e1e212bc4              # double 0.13703133078737839
	.quad	0x3fcec84f3472bfe4              # double 0.24048795758198971
	.quad	0x3fe7be05a5cde82c              # double 0.74194605239541067
	.quad	0x3fef7778666f353f              # double 0.98333377844543423
	.quad	0x3fedab169caa2d8c              # double 0.92713480566583106
	.quad	0x3febc466d54280d2              # double 0.867724815867428
	.quad	0x3fee21d488a6c290              # double 0.94162966432311812
	.quad	0x3fe88008200b77bb              # double 0.76562887438534888
	.quad	0x3feac5390b3f456c              # double 0.83657505222997263
	.quad	0x3fea8689a089e7e7              # double 0.82892304759229496
	.quad	0x3febe26d7e732873              # double 0.87139010140641771
	.quad	0x3fe7d43237824a98              # double 0.74465285150138794
	.quad	0x3feb397082f5cc06              # double 0.85076165750649646
	.quad	0x3fe0f894c12c5ad9              # double 0.53034436921265204
	.quad	0x3fdf50dc57b591a4              # double 0.48931034627301018
	.quad	0x3fc75d92b99b8958              # double 0.18254312575215681
	.quad	0x3fc0fa321075158c              # double 0.132635362659283
	.quad	0x3fd959700810d020              # double 0.39608383929885527
	.quad	0x3fe7b5998e15c6c4              # double 0.74091794730176064
	.quad	0x3fe4b796564bcb59              # double 0.64741055350018961
	.quad	0x3fef9edb43231ead              # double 0.98814166176540185
	.quad	0x3fd52d203ce8083c              # double 0.33087926814926383
	.quad	0x3fb7ed0aa87c72c0              # double 0.093460718282993405
	.quad	0x3fd166b8b22b1ace              # double 0.27189462088828698
	.quad	0x3fb95521297bdc58              # double 0.098955223682297144
	.quad	0x3fd07d92170968a0              # double 0.25766422509844666
	.quad	0x3fabcb5501533a90              # double 0.054285675441510084
	.quad	0x3fc2ebf37c4accfc              # double 0.14782565659479718
	.quad	0x3fe1240d74625221              # double 0.53565094691527204
	.quad	0x3fe9b2895d98fb64              # double 0.80304401665476321
	.quad	0x3fedae928fb25efc              # double 0.92756012025617406
	.quad	0x3fe0b5ce2c12ba83              # double 0.52219303710974463
	.quad	0x3fbf1c11f9238838              # double 0.12152206737985771
	.quad	0x3fbaeaf8eb835ea0              # double 0.10514789342721054
	.quad	0x3fe854adc16151b2              # double 0.76033675927697275
	.quad	0x3fd138fa715caa5c              # double 0.26910267897134132
	.quad	0x3feecf3f09e003a0              # double 0.96279861382219067
	.quad	0x3feb9fecdef1a26a              # double 0.86327212852218094
	.quad	0x3fefd38c654c1328              # double 0.99457378182032574
	.quad	0x3fde3d6548e4099a              # double 0.47249729269256024
	.quad	0x3fe84b386b02f526              # double 0.7591821756429098
	.quad	0x3fec2b3c008c5c08              # double 0.88027763468824194
	.quad	0x3fe6f39396e8517b              # double 0.71723346208686622
	.quad	0x3fb5e1857f79a2f0              # double 0.0854724346369371
	.quad	0x3feb626e12117d3d              # double 0.8557653763672658
	.quad	0x3fe0b011923845b0              # double 0.52149275358731551
	.quad	0x3fe2e3f2b8ae53fd              # double 0.59032569952489633
	.quad	0x3fee3ffe1828813e              # double 0.94531159132387876
	.quad	0x3febfb94dd55503c              # double 0.87446063260222883
	.quad	0x3fd2c520b338985e              # double 0.29328172208841419
	.quad	0x3fd6a9c8c5cfac04              # double 0.35411280934812361
	.quad	0x3fe83f0ea35724a8              # double 0.75769740965292431
	.quad	0x3fe37a34d1054764              # double 0.60866776298847158
	.quad	0x3f96000ca466fa20              # double 0.021484563383404987
	.quad	0x3fbd687e930fae18              # double 0.11487570848810724
	.quad	0x3fd4783a9b5e49e8              # double 0.31983819172560723
	.quad	0x3fe4203d06cf10cb              # double 0.6289353497491218
	.quad	0x3fd9ef5b0f9ad5fa              # double 0.40523411296757639
	.quad	0x3fc3f255a254f06c              # double 0.15583296228749377
	.quad	0x3fbc24a1dfd8a6b8              # double 0.10993396487233553
	.quad	0x3fb99032782a3a40              # double 0.099856523835321731
	.quad	0x3fec76207ede5290              # double 0.88941979197496046
	.quad	0x3fe4bfe24afdbab4              # double 0.64842333456711865
	.quad	0x3fb284c2113adf90              # double 0.072338227469002314
	.quad	0x3fdf53b2a0c8ff40              # double 0.4894835062186651
	.quad	0x3fdc3966cfcd99a6              # double 0.44100351613306044
	.quad	0x3fe5b76ba5ac3efa              # double 0.67864019735313197
	.quad	0x3fe41d785fd7168f              # double 0.62859743803774559
	.quad	0x3fe7618ecf9224bd              # double 0.73065891781984471
	.quad	0x3fee86c5bbeaead6              # double 0.95395170881905744
	.quad	0x3febda90bdb5e801              # double 0.87043034603925673
	.quad	0x3fd3fcb288dc2f74              # double 0.31229842534297991
	.quad	0x3faaa8bb89981110              # double 0.052068577333587496
	.quad	0x3feb3b3e1d59b1c9              # double 0.85098176701063111
	.quad	0x3fe6a327107118eb              # double 0.70741608821188373
	.quad	0x3fdee96557a3463e              # double 0.482995353301792
	.quad	0x3fe8c24649f84afd              # double 0.7737151570057389
	.quad	0x3fed3621b265ad8d              # double 0.9128578647918616
	.quad	0x3fd09a2250afe93e              # double 0.25940759543995628
	.quad	0x3fd711be4b88b7a8              # double 0.36045796753284742
	.quad	0x3fd3ae3e68eed5f6              # double 0.30750999686583158
	.quad	0x3fc11be9674d2c68              # double 0.13366429847733063
	.quad	0x3fdb7122728b3f3c              # double 0.42878018556529063
	.quad	0x3fe441c02436a558              # double 0.63302619049970144
	.quad	0x3fd970da60cf389a              # double 0.39751300291107727
	.quad	0x3fe7cafe52f9f606              # double 0.74352947431879168
	.quad	0x3fd5093373a76a60              # double 0.3286865834649344
	.quad	0x3fee8c78e7a66c96              # double 0.95464749569090901
	.quad	0x3fda1e8173760998              # double 0.40811191821571802
	.quad	0x3fe0a56334d4e818              # double 0.52018890684780938
	.quad	0x3f88770b2c84be80              # double 0.011945807739351055
	.quad	0x3fc9992509ec046c              # double 0.19998610481710288
	.quad	0x3fe7cdf8e58f1225              # double 0.74389309726445119
	.quad	0x3fb5f8fdf65deb68              # double 0.085830567024385851
	.quad	0x3f8693f727a2df00              # double 0.011024409195996565
	.quad	0x3fde0d2deaf6e6ba              # double 0.46955440469501364
	.quad	0x3fd0c64fd9e9ca00              # double 0.26210399895276737
	.quad	0x3fc509bef57f5e48              # double 0.1643599222868366
	.quad	0x3fe7f8f1ba50cfac              # double 0.7491387022951037
	.quad	0x3fc6b20f761db8fc              # double 0.17730897204769025
	.quad	0x3fe43255de439938              # double 0.63114446078251429
	.quad	0x3fd8e366e81865ce              # double 0.38887951531941389
	.quad	0x3fdb618ecc89ed06              # double 0.42782945608605905
	.quad	0x3fda22032f985c7c              # double 0.40832595489468537
	.quad	0x3fd6c730e2d23418              # double 0.35590765142916458
	.quad	0x3fe3de96a3de2b0d              # double 0.62092144017637596
	.quad	0x3fc021cd4b7b1d24              # double 0.12603155313102221
	.quad	0x3fc7d02bb810a298              # double 0.18604036796138668
	.quad	0x3fb3564c8ef43308              # double 0.075535569096427335
	.quad	0x3fd3f237a0ecb998              # double 0.31165877070716297
	.quad	0x3fe69c8c58198cf3              # double 0.70660989005082653
	.quad	0x3f9ece5cc6b01520              # double 0.030084085108701974
	.quad	0x3fea58ae8818f7d4              # double 0.82332541066693432
	.quad	0x3fd7c5abe25c290c              # double 0.37143990617245559
	.quad	0x3fb0342e85e94810              # double 0.063296230023553557
	.quad	0x3fe55db585668fe8              # double 0.66768909506617735
	.quad	0x3feb5d463430cd99              # double 0.85513601487621138
	.quad	0x3fd3b1eb738cc47a              # double 0.30773435863654408
	.quad	0x3fe026f832b5acc0              # double 0.50475702194435002
	.quad	0x3feb603e38b100fb              # double 0.85549841949980931
	.quad	0x3fbfadabae49ccc0              # double 0.12374375348172162
	.quad	0x3fd0fb4129911e46              # double 0.2653353601385543
	.quad	0x3fe82ad31bf39c23              # double 0.75522761782929526
	.quad	0x3fc2ebe811208f34              # double 0.14782429539001785
	.quad	0x3fa92fa07e537180              # double 0.049191489620826978
	.quad	0x3fe97576afa10f45              # double 0.79558882048193225
	.quad	0x3fc92273a1102bfc              # double 0.19636388172543195
	.quad	0x3fed2ab3cb0277ef              # double 0.91146268511124429
	.quad	0x3feee3608d10485d              # double 0.96525600005612555
	.quad	0x3fb345e73aea9328              # double 0.075285388835777511
	.quad	0x3fefb6bee762232f              # double 0.99105782692013189
	.quad	0x3fe25c7f35621050              # double 0.57379112650279218
	.quad	0x3fc766f91e48695c              # double 0.18282999018340262
	.quad	0x3fead03a210114d1              # double 0.8379183430303333
	.quad	0x3fab7f2681fe8970              # double 0.053704455727045963
	.quad	0x3fc8ab9c962f52b4              # double 0.19273717244381816
	.quad	0x3fe4733293c90f3b              # double 0.63906220306714745
	.quad	0x3fe1ff0829d78992              # double 0.56238182232145761
	.quad	0x3fe63b5827ec74b3              # double 0.69474418447102548
	.quad	0x3fbd21f7014ac240              # double 0.11379951268714539
	.quad	0x3f99d0fd0c1ea400              # double 0.025211290230490846
	.quad	0x3fe5e223281c4e98              # double 0.68385465463730366
	.quad	0x3feb2f66ed36f977              # double 0.84953638392452901
	.quad	0x3fedad3da05dad3c              # double 0.92739754983396194
	.quad	0x3fe8e061973bf92c              # double 0.77739028490012662
	.quad	0x3fd437b3057b639a              # double 0.31589961562490887
	.quad	0x3fca26f3b894be9c              # double 0.2043137217783525
	.quad	0x3fe1195598de9cdd              # double 0.53434257371273086
	.quad	0x3fe6955c7dac3b0e              # double 0.70573257966484149
	.quad	0x3f9255b3d1e917c0              # double 0.017905053793832115
	.quad	0x3fd8298d8c2a4c8e              # double 0.37753618896494678
	.quad	0x3fee76982e064270              # double 0.95197686185026775
	.quad	0x3fe693549aa1a2ec              # double 0.70548467828220174
	.quad	0x3fd61a419957bf20              # double 0.34535255408171572
	.quad	0x3fec6a33b0585a7c              # double 0.88796410028847061
	.quad	0x3fe9ba9a58b106ab              # double 0.80402867624817043
	.quad	0x3fe4131deb5e8616              # double 0.62733360262444893
	.quad	0x3fedc4e43372c999              # double 0.93028459595216184
	.quad	0x3fbf044b6528ca60              # double 0.12115927905760193
	.quad	0x3fea884ec2767fbf              # double 0.82913911801369256
	.quad	0x3fe00d35a1a03c84              # double 0.50161248748362697
	.quad	0x3fe72c33bd07dcb5              # double 0.72414576454220614
	.quad	0x3fe05d3953e6afbc              # double 0.51137987505852989
	.quad	0x3fde49bbb73afe1a              # double 0.47325032132718692
	.quad	0x3fcef72a52e477a0              # double 0.24191788718684126
	.quad	0x3fd761da36e18f3a              # double 0.36534743651849377
	.quad	0x3fde2af4be5a6bfe              # double 0.47137182797604271
	.quad	0x3fc49b7dceefb220              # double 0.16099522213279815
	.quad	0x3fe467d1fc72c1ee              # double 0.63767337137511304
	.quad	0x3fbf9458af031718              # double 0.1233573367381634
	.quad	0x3fdd6b85198c105c              # double 0.45968749518238439
	.quad	0x3fe648400862c152              # double 0.69631959569782453
	.quad	0x3feff9576f4b4cff              # double 0.99918719994676041
	.quad	0x3fea0c12d4aa3f6b              # double 0.81397382293833453
	.quad	0x3fefc4cecef3728f              # double 0.99277439518080423
	.quad	0x3fc8db444b2d37e8              # double 0.19419149084791276
	.quad	0x3fe1417d6077be60              # double 0.53924435464245946
	.quad	0x3fedd4afc128a5fb              # double 0.9322127125389551
	.quad	0x3fe5900e6650a48d              # double 0.67383499129677349
	.quad	0x3fe3cec0a9c6165c              # double 0.61898835333768032
	.quad	0x3fa36f9f09619040              # double 0.037960977454333023
	.quad	0x3fd9055f196d9ee6              # double 0.39095284922812679
	.quad	0x3fd587987b91d8ea              # double 0.33640110080103958
	.quad	0x3fdea6b98d38a3f2              # double 0.47892607489717343
	.quad	0x3fdeddad6a5d39de              # double 0.48228011500478185
	.quad	0x3fea3b3f421bce4b              # double 0.8197323123153607
	.quad	0x3fbed37fe3140740              # double 0.12041472715284574
	.quad	0x3fe64c5ed5735589              # double 0.69682256402545406
	.quad	0x3fd31e3134a5e17c              # double 0.29871778623012069
	.quad	0x3f9efcc0cdf77ec0              # double 0.03026105172273108
	.quad	0x3fe576b8929b259f              # double 0.67074230798714385
	.quad	0x3fdc7f42cec2dd46              # double 0.44526739303133345
	.quad	0x3feeb5aa50fb1f19              # double 0.95967593971815567
	.quad	0x3fb455a02d9b0a70              # double 0.079431544431864287
	.quad	0x3fed5be45e34a321              # double 0.91746729278120054
	.quad	0x3fe1d0d07b13cb63              # double 0.5567400363782834
	.quad	0x3fda75bf245ed972              # double 0.41343668510253118
	.quad	0x3fe43d73c651eb68              # double 0.63250149473547612
	.quad	0x3fce919d5790c04c              # double 0.23881880546241729
	.quad	0x3fe3bafd1e6b0667              # double 0.6165757745840893
	.quad	0x3fe293fc85653e6c              # double 0.58056474736981789
	.quad	0x3fa1c1268cccf070              # double 0.034676747024122601
	.quad	0x3fcdd3dbe2c55bc0              # double 0.23302792141723039
	.quad	0x3fe1671e3df5806f              # double 0.54383766270986011
	.quad	0x3f60377004f63200              # double 0.0019795596960590078
	.quad	0x3fca8fa5899fddb4              # double 0.20750874729104185
	.quad	0x3fd9f4eec300b9f0              # double 0.40557450335737055
	.quad	0x3fd6ac7e6f53e73a              # double 0.35427819129801075
	.quad	0x3fc377984c023bc4              # double 0.15208724700320719
	.quad	0x3fe7e32651117148              # double 0.74647823175067973
	.quad	0x3fd73006a3fc05d2              # double 0.36230627073390764
	.quad	0x3fde4b63bd5af25e              # double 0.47335141650890999
	.quad	0x3fe26ec1e4529656              # double 0.57602018923052856
	.quad	0x3f9842f949d7e460              # double 0.023692984706915943
	.quad	0x3fc82cfb04653d64              # double 0.18887269701597653
	.quad	0x3fcfdf640758ab24              # double 0.24900484427174618
	.quad	0x3fb2264d09eb8058              # double 0.070896925851685721
	.quad	0x3fe6509ebe4848c1              # double 0.69734131969951119
	.quad	0x3fdaa68ea817b26c              # double 0.416415847924134
	.quad	0x3feca475b3916bec              # double 0.89507565566907265
	.quad	0x3fc15331c34c1494              # double 0.13535139118190342
	.quad	0x3fef4d00b866a87a              # double 0.97814975753614353
	.quad	0x3fe5d87f5c68de19              # double 0.68267791794545751
	.quad	0x3fddee5253ea7a88              # double 0.46767099566378834
	.quad	0x3fb5a7f2ccf8e280              # double 0.084593939821283825
	.quad	0x3fec8a9e9bacee17              # double 0.89192133336422585
	.quad	0x3fb4c1b52ee2eb10              # double 0.081080745646357366
	.quad	0x3fefe48fea37c521              # double 0.99665065522836837
	.quad	0x3feb212c1736acdb              # double 0.84779934438611393
	.quad	0x3fe306364611b954              # double 0.59450830159566204
	.quad	0x3fecedf2cbc8b200              # double 0.90404643823200103
	.quad	0x3fe11b603168356b              # double 0.53459176683251763
	.quad	0x3fdcd43588b44fe8              # double 0.45045221662553425
	.quad	0x3fde817a7cd4b928              # double 0.47665273848078238
	.quad	0x3fd86def0b305022              # double 0.38170982449196533
	.quad	0x3fecd75c6d91d047              # double 0.90128919029530941
	.quad	0x3fd8f161d2e77442              # double 0.38973279567818875
	.quad	0x3fdfe6400da6b422              # double 0.49842835744022029
	.quad	0x3f80d47cf02a8480              # double 0.0082177887719032672
	.quad	0x3fe5d4520e8ba034              # double 0.6821680339899161
	.quad	0x3fe4581c658c6779              # double 0.6357557280891647
	.quad	0x3feffade944de67a              # double 0.99937371221240245
	.quad	0x3fe4ca0e1fcf2f22              # double 0.64966493809467729
	.quad	0x3fb644a587bd8800              # double 0.0869849640271525
	.quad	0x3fcc9a7d0c39a1f0              # double 0.22346461388521233
	.quad	0x3f93ef623fe99700              # double 0.019467864180476191
	.quad	0x3fdc1d14a78d7876              # double 0.43927494394836886
	.quad	0x3fd5df7ebd080be0              # double 0.34176605663395598
	.quad	0x3fec1a5d224138d8              # double 0.87821823778520081
	.quad	0x3fe7b373408eebf6              # double 0.7406555424598753
	.quad	0x3fc55c6b9c53a504              # double 0.16688294537679138
	.quad	0x3fe3b96cdfd39500              # double 0.61638492313491611
	.quad	0x3feb420e8fa17d14              # double 0.85181358387845529
	.quad	0x3fdc78a4e11be91a              # double 0.44486352904608994
	.quad	0x3feeca128f8cf9f4              # double 0.96216705357784215
	.quad	0x3fe2b451b2993240              # double 0.58451161272530072
	.quad	0x3fecd8c4b83108b4              # double 0.90146099066648455
	.quad	0x3fca90031522d4a4              # double 0.20751989872011223
	.quad	0x3fe1933fcce9c2da              # double 0.54922475835891338
	.quad	0x3fee27a91c73600e              # double 0.94234138066076567
	.quad	0x3fc2c6b1a78a14e8              # double 0.14668865852960455
	.quad	0x3fea8094b5a549f3              # double 0.82819591024082084
	.quad	0x3fee2fadf0d6e129              # double 0.94332024611415932
	.quad	0x3fdc81b6c918e3e4              # double 0.44541711462403399
	.quad	0x3fe1cfe966adea9f              # double 0.55662984900057555
	.quad	0x3feca92771212427              # double 0.8956486901817059
	.quad	0x3fcfaa08326c7c00              # double 0.2473764654359627
	.quad	0x3feab5bf0ff5dc4c              # double 0.83468583218826486
	.quad	0x3fd21eb0ed8d4694              # double 0.28312323759483005
	.quad	0x3fa76011700cabb0              # double 0.045654816558758582
	.quad	0x3fe0c362ea361e25              # double 0.5238508772317273
	.quad	0x3fad3ddb8f430820              # double 0.057112561452882682
	.quad	0x3fe2a403426a7a57              # double 0.58252108547078307
	.quad	0x3fe8e90cc24431fd              # double 0.77844846670774326
	.quad	0x3fd9743cb9b340c0              # double 0.39771955618654076
	.quad	0x3fef968a211e86d5              # double 0.98712641209223284
	.quad	0x3fe45aa5a871b1fe              # double 0.63606532000773064
	.quad	0x3fed484d8245049b              # double 0.91507602160722301
	.quad	0x3fee37228ffa4787              # double 0.94423034783015758
	.quad	0x3fc0842e801308e8              # double 0.12903386357908819
	.quad	0x3fef8bbcd6c9aabe              # double 0.98580781889662439
	.quad	0x3fb524e0009923b0              # double 0.082593917985959164
	.quad	0x3fd79dc567e57d28              # double 0.36900458475243392
	.quad	0x3fe4f5bbc1b1c0b1              # double 0.6549967558949189
	.quad	0x3fe739304e2a15a3              # double 0.72573104158862056
	.quad	0x3fd3ef9a32f82c70              # double 0.31149916627391061
	.quad	0x3fce35a1a0d56568              # double 0.23601169923021392
	.quad	0x3fdc240ae4c40d24              # double 0.43969986286556861
	.quad	0x3feb748a3d9cde26              # double 0.85797607454054936
	.quad	0x3fe7e2a4c1920c2e              # double 0.74641645247209509
	.quad	0x3fe71fb1b672f065              # double 0.7226189197022107
	.quad	0x3fe58244c50affc6              # double 0.67215193257288131
	.quad	0x3fe14dfe7d9bc2ef              # double 0.54077076466464102
	.quad	0x3fd02379b29cc554              # double 0.25216524546256847
	.quad	0x3fa4849da05d0cd0              # double 0.040074277711505624
	.quad	0x3feb96d777314bc4              # double 0.86216328887746174
	.quad	0x3fb4f03d443361e0              # double 0.081790761137547019
	.quad	0x3fed58ca98c91331              # double 0.91708879319103265
	.quad	0x3feb708653afce88              # double 0.85748592705790916
	.quad	0x3fe6a4987c2fbda1              # double 0.70759224181340497
	.quad	0x3fe936e76c43742a              # double 0.78795214791501178
	.quad	0x3fe0e59a6b22e228              # double 0.52802773404170456
	.quad	0x3fe709bad123203d              # double 0.71993771407233675
	.quad	0x3fe5598ac2466cef              # double 0.66718042320590409
	.quad	0x3fe2da0bad61014e              # double 0.58911689627715602
	.quad	0x3fed1abbb330f3fb              # double 0.909513330443246
	.quad	0x3fd74170e61af2d4              # double 0.36336920233933978
	.quad	0x3fbb562ee23b22e0              # double 0.10678380034654422
	.quad	0x3fea0ba7f7d86fda              # double 0.81392286689105764
	.quad	0x3fdd578aa1fa963a              # double 0.45846811121223008
	.quad	0x3fe610577529dbdd              # double 0.68949482806680928
	.quad	0x3fe829d6665d5b1e              # double 0.75510711663341445
	.quad	0x3fdbd3aab6e7e804              # double 0.43479411947157609
	.quad	0x3fd4b78f04abde88              # double 0.32370353180110856
	.quad	0x3fee5987c546f82b              # double 0.94842899828632221
	.quad	0x3fe259e2a7ad3623              # double 0.57347233533227315
	.quad	0x3fdadf21640d69fe              # double 0.41986880083791778
	.quad	0x3fae203eaf6f3e20              # double 0.058839758792256669
	.quad	0x3fea3afbfc213df3              # double 0.81970023388015389
	.quad	0x3fec8dfaf7b73059              # double 0.89233158475827701
	.quad	0x3fc4a13ebd426334              # double 0.16117080918481863
	.quad	0x3fe41d708598ad4d              # double 0.62859369366689466
	.quad	0x3fed3dbe5653d4cc              # double 0.91378704891999396
	.quad	0x3fdc6acd0b16a7ae              # double 0.44401861269818255
	.quad	0x3fc3cf97b169baa4              # double 0.15477272188896507
	.quad	0x3fe5b25dba731d2f              # double 0.67802320877027522
	.quad	0x3fe69c25890bd824              # double 0.70656086699341758
	.quad	0x3fd4ed033cc19850              # double 0.32696610387063618
	.quad	0x3febe47d868ded78              # double 0.87164188652188468
	.quad	0x3fe42cf1b8390a2e              # double 0.63048635464685332
	.quad	0x3fedcbe47d7507cb              # double 0.9311392259917225
	.quad	0x3fee443333f90011              # double 0.9458251967516863
	.quad	0x3fecff239e26e976              # double 0.90614491356909244
	.quad	0x3fe80e1147494e24              # double 0.75171722338786084
	.quad	0x3fd6bb69065df648              # double 0.35518861409932301
	.quad	0x3fc7d05b02af7c40              # double 0.18604600554587769
	.quad	0x3fe9f6e2d8b45e39              # double 0.81138746571645648
	.quad	0x3fee602489d47d9b              # double 0.94923617286615369
	.quad	0x3fc9eae45ca6d484              # double 0.20248083614356827
	.quad	0x3fe6bc8582e5fb1e              # double 0.71051288190924189
	.quad	0x3fc9111990d43ea0              # double 0.19583434650165987
	.quad	0x3fe89718d4b46ec8              # double 0.76844445747288948
	.quad	0x3fd033c8a985c224              # double 0.25316063456469551
	.quad	0x3fd38ce7c35745b8              # double 0.30547517849216943
	.quad	0x3fd0474815ecfc96              # double 0.25435068265137184
	.quad	0x3fedb7804449a126              # double 0.92865002953934517
	.quad	0x3fbf533ad1bdc600              # double 0.12236373539578693
	.quad	0x3fe1d945b16d1753              # double 0.55777249005834972
	.quad	0x3f89db794ca7e180              # double 0.012625644351815124
	.quad	0x3fd5874a8acf0c38              # double 0.33638251834435406
	.quad	0x3fe7657c6dda261d              # double 0.73113843398568046
	.quad	0x3feffbe2a4a2c7e7              # double 0.99949772029344507
	.quad	0x3f9f567216f9dc80              # double 0.030603201534600277
	.quad	0x3fe5333640688b06              # double 0.6625014551139834
	.quad	0x3fe271a7cc817c8a              # double 0.57637395803966851
	.quad	0x3fd815add8886f54              # double 0.37632318635745787
	.quad	0x3fdc4ed2a0daabcc              # double 0.44231095989624403
	.quad	0x3fd762a6d5c0b03a              # double 0.36539622186933551
	.quad	0x3fce028bf9751e7c              # double 0.23445272141019646
	.quad	0x3fe9d108a2ab8931              # double 0.80676681300636777
	.quad	0x3fd1538fda68a22e              # double 0.2707252152345373
	.quad	0x3fb44dd5d13c5a08              # double 0.079312671263643719
	.quad	0x3fca3a145f026d20              # double 0.20489744795927667
	.quad	0x3fd364f1001d7e84              # double 0.30303597460986276
	.quad	0x3fd2797296883b06              # double 0.28866257381825766
	.quad	0x3fb2abbafc7a4240              # double 0.072932898178131644
	.quad	0x3f7cf18355c45580              # double 0.0070662622713560941
	.quad	0x3fcbd2e0df8e06fc              # double 0.21737299838792257
	.quad	0x3fd44668cbec5d44              # double 0.31679744638809759
	.quad	0x3fe74637ca1bbed4              # double 0.72732152437489583
	.quad	0x3fe0b006aeb0d99d              # double 0.52148756140995867
	.quad	0x3fdd8137f78cb074              # double 0.4610118787266011
	.quad	0x3fe33eab41b2ce5b              # double 0.60140002090197286
	.quad	0x3fe851df9c3ed6e7              # double 0.75999432102863984
	.quad	0x3fe2e8bfb77d7b31              # double 0.59091173017427512
	.quad	0x3fe9fc1b7a3a4268              # double 0.81202482101987261
	.quad	0x3fea4ac8ad170e00              # double 0.82162889296199637
	.quad	0x3fca5c14df3b40b4              # double 0.2059351053235382
	.quad	0x3fe47bd3de78b4c5              # double 0.64011567546335668
	.quad	0x3fe90c62c878ffa7              # double 0.78276194720091474
	.quad	0x3feb116c952250dc              # double 0.84587697150939389
	.quad	0x3feba258d82bbd3f              # double 0.86356775494451898
	.quad	0x3fe6fad3e64b484d              # double 0.71811861972151692
	.quad	0x3fe4aa3058431c65              # double 0.64577500570966306
	.quad	0x3fc2c66e6cff4eac              # double 0.14668064424642091
	.quad	0x3fb8dc96a161c2e0              # double 0.097115911865113258
	.quad	0x3fe9baa6c7dd1cc9              # double 0.80403460536845117
	.quad	0x3fdf58c839ebed8a              # double 0.48979383140950772
	.quad	0x3febf48cfcf01288              # double 0.87360238458548256
	.quad	0x3fc44a363d424d9c              # double 0.15851476660882902
	.quad	0x3fe44c2319c55303              # double 0.63429408105238883
	.quad	0x3fb860007991c9f8              # double 0.095214872055102151
	.quad	0x3fe4c623da48e976              # double 0.64918701776268395
	.quad	0x3fe6a92fc03ebae8              # double 0.70815265224322577
	.quad	0x3fd475f8afdee516              # double 0.31970040488120455
	.quad	0x3fcd0674d7c779cc              # double 0.22675953422635897
	.quad	0x3fdfd0e48cf9ebfc              # double 0.49712480323040587
	.quad	0x3fd4b98334d4ee92              # double 0.32382278594352798
	.quad	0x3fea17f74007f9ff              # double 0.81542551523290274
	.quad	0x3fe20fe8e160fbd5              # double 0.56444210070901113
	.quad	0x3fe6839c9d9bea3f              # double 0.70356589110389922
	.quad	0x3fedd8792c28e2b0              # double 0.9326749670500103
	.quad	0x3fe94fb70ebcf440              # double 0.7909808433393053
	.quad	0x3fe9146d1eed41c5              # double 0.78374343910586985
	.quad	0x3fe6d138d001ce10              # double 0.71303978563668302
	.quad	0x3fe2b4df653653b4              # double 0.58457917945872007
	.quad	0x3f99e8a5c1e675a0              # double 0.025301542243700959
	.quad	0x3feb8684345ed2db              # double 0.86017046192736346
	.quad	0x3fc25566afb6a544              # double 0.14323123531111481
	.quad	0x3f9a113dd7120fc0              # double 0.025456396343102261
	.quad	0x3fd0688a13145704              # double 0.25638057578304108
	.quad	0x3fd91e5eaec64baa              # double 0.39247862880545858
	.quad	0x3fedcbf37845123d              # double 0.93114636888692071
	.quad	0x3fe4236ed71cdf25              # double 0.62932531370367839
	.quad	0x3fc8461a9e741c14              # double 0.18963940369596399
	.quad	0x3fdb97b4e88981be              # double 0.43113444050507244
	.quad	0x3fe0afe25f8f8c82              # double 0.52147024788099849
	.quad	0x3fb856beefd5ef50              # double 0.095073636582978737
	.quad	0x3fea8a23da0794e4              # double 0.82936279853734307
	.quad	0x3feee950ad75f3dc              # double 0.965980852880985
	.quad	0x3fa387ce35e34990              # double 0.038145488813500994
	.quad	0x3fe422a984cc45f3              # double 0.62923122346017946
	.quad	0x3fe0bd25aba43f5a              # double 0.52308925174473164
	.quad	0x3fee4c6930f03bd1              # double 0.9468275028065084
	.quad	0x3fe80fa4584ee079              # double 0.75190942046812304
	.quad	0x3fc78d6a1ff6fba8              # double 0.18400312958507681
	.quad	0x3fe329930c0ad33d              # double 0.59882500030526098
	.quad	0x3fea315ecda995fd              # double 0.81852665108152645
	.quad	0x3fd9dcfa5f0a3e7a              # double 0.40411242753268761
	.quad	0x3fee7c30fbc7c7de              # double 0.95266007591112234
	.quad	0x3fd4c50ab149720a              # double 0.32452647507832977
	.quad	0x3fe6e5ed3a7dfcba              # double 0.71556722091909042
	.quad	0x3fe5dbedac950ab0              # double 0.68309673030338125
	.quad	0x3fea7543cbf787b1              # double 0.82681455457008302
	.quad	0x3fdd8a816ec79938              # double 0.46157871073082246
	.quad	0x3fe9464bdb9376a7              # double 0.78983109365409099
	.quad	0x3fea5ce7536cf1b6              # double 0.82384077352576557
	.quad	0x3fe6c9ecafc9973c              # double 0.71214899381150287
	.quad	0x3fd613de60122186              # double 0.34496268636623773
	.quad	0x3fb4c2f5b16b0468              # double 0.081099849524450485
	.quad	0x3feaf698dd5655d6              # double 0.84260218839579681
	.quad	0x3fef1b6992fb5c90              # double 0.97209624011419926
	.quad	0x3fed4f886533a072              # double 0.91595859304380967
	.quad	0x3fd8412552031da2              # double 0.37897618302346292
	.quad	0x3fd1169a96998b5a              # double 0.2670046301556589
	.quad	0x3fdcfe1d52ca003e              # double 0.45300992092962022
	.quad	0x3fed23114d5722f2              # double 0.91053071122686746
	.quad	0x3fe7b3d0c1c766e0              # double 0.7407001290077595
	.quad	0x3fe937be1a3ae9ce              # double 0.78805451510498314
	.quad	0x3febaecdb9258f83              # double 0.86508833085507353
	.quad	0x3fb09809120de400              # double 0.064819876582888014
	.quad	0x3fd242ad66425062              # double 0.28531966196283609
	.quad	0x3feace99a11319e5              # double 0.83771974048505327
	.quad	0x3fdcee628d783fe4              # double 0.45204986396220037
	.quad	0x3fd5fe03de2f5f40              # double 0.34362885186918746
	.quad	0x3f84b7a73c5b2e40              # double 0.010115915803360243
	.quad	0x3facfaee469846c0              # double 0.056601949803860574
	.quad	0x3fe58414c26033f8              # double 0.67237318004629198
	.quad	0x3fe1fc274f804d7b              # double 0.56203046348166141
	.quad	0x3fdbe0c6e27423ce              # double 0.43559429278007833
	.quad	0x3fe8b867d845a0f0              # double 0.77251045456526235
	.quad	0x3feeef101108e2e2              # double 0.96668246581165485
	.quad	0x3fe7931b9bf11bbd              # double 0.73670750100506377
	.quad	0x3fc06807598fdd64              # double 0.12817470429556999
	.quad	0x3fdb80d563bba392              # double 0.42973837604091003
	.quad	0x3fc02c86fc4400b8              # double 0.12635886495264059
	.quad	0x3fe955a302ccfea3              # double 0.79170370623610997
	.quad	0x3fedab6ba118ef00              # double 0.92717534508071253
	.quad	0x3fa3d5da8535c1c0              # double 0.038740948449120349
	.quad	0x3fe07097c3e6699f              # double 0.51374424230316496
	.quad	0x3fc2b483c972be80              # double 0.14613387428606828
	.quad	0x3fd2f742ff968a92              # double 0.29634165725489325
	.quad	0x3fa7987a01facdc0              # double 0.046085179082548944
	.quad	0x3fee53719cdf1cad              # double 0.9476860107323738
	.quad	0x3fe69666767b11fd              # double 0.70585940495271837
	.quad	0x3fc16d05412705d0              # double 0.13613954240103832
	.quad	0x3fe33d2385d4d3a5              # double 0.60121322764336027
	.quad	0x3fe9e99d4113f3af              # double 0.80976736746344169
	.quad	0x3fd5bfaa853f65dc              # double 0.33982337009873986
	.quad	0x3fe64039dbead0e7              # double 0.6953400893458167
	.quad	0x3fd487bdaddf3262              # double 0.32078496913599086
	.quad	0x3fd5aa02f7b6d0d0              # double 0.33850168410141368
	.quad	0x3fec85a41d92da2f              # double 0.8913136079416456
	.quad	0x3fad8d6f30ceacc0              # double 0.057719683368611552
	.quad	0x3fcf6c49ae8a7700              # double 0.24549218199256728
	.quad	0x3fe8f5e1f0c23f74              # double 0.78001496337127074
	.quad	0x3fef9afc9e0376d9              # double 0.98766928541200649
	.quad	0x3fd4560acb8c1a0a              # double 0.31775159719146073
	.quad	0x3fea1034049037fa              # double 0.81447792903213601
	.quad	0x3fdef2c92d469518              # double 0.48356847211319254
	.quad	0x3f9e4818e0fa6000              # double 0.029571903926438381
	.quad	0x3fece816f7c82781              # double 0.90333126444714662
	.quad	0x3fb6280391861d88              # double 0.086548064258854862
	.quad	0x3fdacd97ef2aea42              # double 0.41879843097891378
	.quad	0x3fa6d3ef9a652d80              # double 0.044585692975114277
	.quad	0x3fce2c96efec384c              # double 0.2357357665536618
	.quad	0x3fd8c60abbf24dfc              # double 0.38708752016211156
	.quad	0x3fe448733747d2f3              # double 0.6338440017412651
	.quad	0x3fd3efbf201a9f8a              # double 0.31150797019153542
	.quad	0x3fefbc428d5b842c              # double 0.99173095330127614
	.quad	0x3feafdbc753d5391              # double 0.84347365282393316
	.quad	0x3feb27369a8e490c              # double 0.84853677927665804
	.quad	0x3fe4ef675e5bf130              # double 0.65422409467240605
	.quad	0x3fd393357fc6a600              # double 0.30585992315408816
	.quad	0x3fea7c0a2b57e1e7              # double 0.82764156785475229
	.quad	0x3fe2e350b22e7224              # double 0.59024843979893094
	.quad	0x3fe2695694cbbc49              # double 0.57535866796195834
	.quad	0x3fe499690f31cdec              # double 0.64372685401616314
	.quad	0x3f98478e5ea61300              # double 0.023710464980029933
	.quad	0x3febde315841c92d              # double 0.87087313878718009
	.quad	0x3fdd721870a0aa56              # double 0.46008883475102402
	.quad	0x3fd8649ba9726108              # double 0.38114062831438433
	.quad	0x3fed8f05625ee608              # double 0.92370862210299354
	.quad	0x3fee00ab3615d571              # double 0.93758163989575227
	.quad	0x3fe9d403d778ab85              # double 0.80713073810817149
	.quad	0x3fe967c942d48c59              # double 0.79391921093737061
	.quad	0x3fa0fe66333d3690              # double 0.033190912012838969
	.quad	0x3febdabae6e5db60              # double 0.87045044991723941
	.quad	0x3fcdda0ea85dc68c              # double 0.23321707936297675
	.quad	0x3fe7ee62d5540474              # double 0.7478498617712277
	.quad	0x3fd4aa353c8921c0              # double 0.32288866912542957
	.quad	0x3fe29bfa4eb7a286              # double 0.58154025434949186
	.quad	0x3f46c29d4994ac00              # double 6.9458656358756254E-4
	.quad	0x3fb7026822e73008              # double 0.089880474587687442
	.quad	0x3f9d5b37a831ac20              # double 0.028668279305218758
	.quad	0x3fe9f63579f5311c              # double 0.81130479640845321
	.quad	0x3fe1d526fabf5efe              # double 0.55726956342820677
	.quad	0x3fe2e91d5560f5af              # double 0.59095637012040025
	.quad	0x3fe6b6d794d2d4a3              # double 0.70981959406949036
	.quad	0x3fe7237ff9faccf4              # double 0.72308348488004848
	.quad	0x3fd09198ba662c0e              # double 0.25888651087797221
	.quad	0x3fa05e468143e090              # double 0.03196926429694813
	.quad	0x3fea1817561fdc97              # double 0.81544081517394573
	.quad	0x3fc8ee16f8fcdabc              # double 0.1947659221420589
	.quad	0x3fe75202207ff312              # double 0.72876077983491627
	.quad	0x3fe04c3d477591f1              # double 0.50930656391989093
	.quad	0x3fe1f1bd050f569d              # double 0.5607590769602272
	.quad	0x3fd85a175f77192c              # double 0.38049873659874112
	.quad	0x3feab57bab5bd33b              # double 0.83465369671339518
	.quad	0x3fb6807068afdd08              # double 0.087897325094548617
	.quad	0x3fdad0f9ed03cecc              # double 0.41900489946349917
	.quad	0x3fbc148410d096c0              # double 0.10968804750936112
	.quad	0x3fe880771c9fdaee              # double 0.76568179693898997
	.quad	0x3fcdbb51234ef4f8              # double 0.23227895950359545
	.quad	0x3fc636cca0296160              # double 0.17354734249489479
	.quad	0x3fe303435f918925              # double 0.59414833703730052
	.quad	0x3fea8ee2d65fce98              # double 0.82994214887590356
	.quad	0x3fe746e2a2753537              # double 0.72740298967406758
	.quad	0x3fee74984f3e2293              # double 0.95173278309910569
	.quad	0x3fe123b7e6c97401              # double 0.5356101520116
	.quad	0x3fe8cf9d61a93e38              # double 0.77534360002932257
	.quad	0x3fae490f7e9e5c00              # double 0.059151157575961122
	.quad	0x3feeb3bc71e054bc              # double 0.95944044343436685
	.quad	0x3fe3b97fdc5531c9              # double 0.616393976533396
	.quad	0x3fe57b110e590b59              # double 0.67127278139410429
	.quad	0x3fae6ee7d8f483d0              # double 0.059439892991811072
	.quad	0x3fbada634a9d47b0              # double 0.10489483424797075
	.quad	0x3fd68c948294adea              # double 0.35233032943753406
	.quad	0x3fdcc3b6b3a1e65c              # double 0.44944541494587553
	.quad	0x3fc789a8f4113500              # double 0.18388854901642304
	.quad	0x3fa26d068e0e3510              # double 0.035988049355276996
	.quad	0x3fc73db877baed70              # double 0.18157106252861466
	.quad	0x3fe5271fff81ca8f              # double 0.66102600005827294
	.quad	0x3fd71385a3852968              # double 0.36056652992978977
	.quad	0x3fdc45469ac9ad54              # double 0.44172825923916048
	.quad	0x3fdd27bf9394e0c0              # double 0.45555104648839162
	.quad	0x3febd4a43d48c47e              # double 0.86970722169475301
	.quad	0x3fe51d0209034bb4              # double 0.65979100952460223
	.quad	0x3fd713771fa88d8e              # double 0.36056306926385495
	.quad	0x3fbd23b5ceebde40              # double 0.11382614423552528
	.quad	0x3fc2dc5cb5ece280              # double 0.14734991915772255
	.quad	0x3fd58639de390d88              # double 0.33631750775767744
	.quad	0x3febe67f365e3182              # double 0.87188683146227697
	.quad	0x3fe369d5ccff48b2              # double 0.60666933096424303
	.quad	0x3fce76aab5529730              # double 0.23799642423289802
	.quad	0x3fe0fcf44e6b7e67              # double 0.53087821308504324
	.quad	0x3fd644720f067bf6              # double 0.34792758433644566
	.quad	0x3feab76302a52349              # double 0.83488607899298828
	.quad	0x3fdad3ca5dc76d6c              # double 0.41917666586024072
	.quad	0x3fed87b066826fcd              # double 0.92281360646620103
	.quad	0x3fb22b3f538250a0              # double 0.070972402465772522
	.quad	0x3fef7e33357409db              # double 0.98415527763455246
	.quad	0x3fbde3f58d356768              # double 0.11675963113284882
	.quad	0x3fed153f283b999e              # double 0.90884359224292033
	.quad	0x3fcf64e375715538              # double 0.24526637300974996
	.quad	0x3fe10a20a518c87f              # double 0.53248626943083355
	.quad	0x3fcdd7ad2ac4c710              # double 0.2331444224196777
	.quad	0x3fe922d8fe3e871c              # double 0.78550386101798919
	.quad	0x3fa902cccef73ca0              # double 0.048849487556816173
	.quad	0x3fec2de6b25fb56d              # double 0.88060316885609569
	.quad	0x3fdbb63138dad2ac              # double 0.43299513389801336
	.quad	0x3fe4bf8a9b7b0cb6              # double 0.64838152282063422
	.quad	0x3fd3592b7f89006c              # double 0.30231749968152744
	.quad	0x3f4c3ced67a83400              # double 8.6175529514920246E-4
	.quad	0x3fdfb05a34d56b56              # double 0.49513869437730784
	.quad	0x3fa2f16c2879b8a0              # double 0.036998157444814384
	.quad	0x3fe777c43ea450fa              # double 0.73336994395006561
	.quad	0x3fea156042a0e815              # double 0.81510937703501674
	.quad	0x3fb2ed1ddfc99468              # double 0.073930613647080201
	.quad	0x3fea811b12ac661a              # double 0.82825997969775078
	.quad	0x3fe7f4cd263ca863              # double 0.74863297908929061
	.quad	0x3fe225df9c6c934a              # double 0.56712322761141221
	.quad	0x3fdb4232844aab9e              # double 0.42591536444768419
	.quad	0x3fe607a3b4471d8f              # double 0.68843255243784707
	.quad	0x3fbd32625082e9a8              # double 0.11405004945382891
	.quad	0x3fd80c17831286c8              # double 0.37573802757297559
	.quad	0x3fefd35323bcc3b5              # double 0.99454647998765344
	.quad	0x3fd0670a256c815a              # double 0.25628904013321618
	.quad	0x3fed0b579dd9af87              # double 0.90763455228942369
	.quad	0x3fe86dc4daf467db              # double 0.76339953198043575
	.quad	0x3fefd6b6d6de6b08              # double 0.9949602314621595
	.quad	0x3fee2e7f2b3efce3              # double 0.94317587324613006
	.quad	0x3fcb4c47173244e4              # double 0.21326531059870668
	.quad	0x3fe8c8945f5e647c              # double 0.77448481203749919
	.quad	0x3feaae529d499284              # double 0.83377962799257021
	.quad	0x3fe425ea9ef0b054              # double 0.62962847750669448
	.quad	0x3fdccdb1ca013a64              # double 0.45005459525137881
	.quad	0x3fe1c0e7d9c4fa1d              # double 0.55479805501073864
	.quad	0x3fdd211f49fda234              # double 0.45514662004146378
	.quad	0x3f65f4f58306c300              # double 0.0026802821305057511
	.quad	0x3fe811ebd0fa7412              # double 0.75218764129715709
	.quad	0x3fe738dec9b343ca              # double 0.72569217104511918
	.quad	0x3fdaeec5740f1d0e              # double 0.42082344373598424
	.quad	0x3fd71f474c38a4a0              # double 0.36128408854944816
	.quad	0x3feaa3f0bdf67614              # double 0.8325122556886435
	.quad	0x3fbad31e620c4638              # double 0.10478391546009724
	.quad	0x3fe5539450b1659d              # double 0.66645255813925852
	.quad	0x3fd49a5a3ffdf7ea              # double 0.32192093133187305
	.quad	0x3fdb218aad103470              # double 0.42392222309792427
	.quad	0x3fde1bf9a6ea359a              # double 0.47045747089654244
	.quad	0x3fd748142657b6c8              # double 0.3637743353309415
	.quad	0x3fa6b8ad31341d30              # double 0.04437772012357255
	.quad	0x3fe468ee4f3d88a0              # double 0.63780894734033566
	.quad	0x3fd58d1c26263fa2              # double 0.33673766828087015
	.quad	0x3fa01d6b2a375f20              # double 0.03147444620452533
	.quad	0x3fe7df90eecf133b              # double 0.74604078905449656
	.quad	0x3fb6c029906a44e0              # double 0.088869664914699609
	.quad	0x3fe115a18398fc31              # double 0.53389049246459852
	.quad	0x3fed6fb8f285c274              # double 0.91988799445796454
	.quad	0x3fe79159953afe5c              # double 0.73649291178294218
	.quad	0x3fe2a1b9fcb599cf              # double 0.58224200589466502
	.quad	0x3fdd5c3406c2999a              # double 0.45875263843699943
	.quad	0x3fc3ac59aad6b68c              # double 0.15369721261724967
	.quad	0x3fbe7a990ec40da0              # double 0.11905819521421401
	.quad	0x3fdb6db2958ba2cc              # double 0.42857040981338623
	.quad	0x3fefac5ac8c2a9df              # double 0.98978938303963193
	.quad	0x3f9aac25144c7ca0              # double 0.026047305454195979
	.quad	0x3fe9c42a31c31ff4              # double 0.80519590109997674
	.quad	0x3fb051b9fd7acb20              # double 0.06374704779117879
	.quad	0x3fdda2def4da79fa              # double 0.46306585227458152
	.quad	0x3fcbec0b33f44c68              # double 0.21814098393278702
	.quad	0x3fdfd3375846536a              # double 0.49726661320283105
	.quad	0x3fdcead1e9385d90              # double 0.45183227324874853
	.quad	0x3fcb062affe1e8b8              # double 0.21112573141346558
	.quad	0x3fe8b1a7954c5202              # double 0.77168635520735074
	.quad	0x3fd99f5b6a921786              # double 0.40035138518612035
	.quad	0x3fd0f9c632a9c128              # double 0.26524500796860417
	.quad	0x3feb7183ea6439a8              # double 0.85760684756842398
	.quad	0x3fef1f2a2dd9ff79              # double 0.97255429225332001
	.quad	0x3fa5d17722e3cec0              # double 0.042613718995111238
	.quad	0x3fde1c1b169c0844              # double 0.47046544273337454
	.quad	0x3fab19b072fc90c0              # double 0.052930368458221633
	.quad	0x3fb01c9ed6e38620              # double 0.062936713660314059
	.quad	0x3fdee598a9ffca32              # double 0.48276344872934651
	.quad	0x3fede84957536d10              # double 0.93460528426968104
	.quad	0x3fe7837772ad9171              # double 0.73479816816374754
	.quad	0x3fbd5756eb29f8a8              # double 0.11461394540126213
	.quad	0x3fb88db3e4a65ca8              # double 0.09591221172591935
	.quad	0x3fef7f455589300b              # double 0.98428599077442535
	.quad	0x3fe4d1354b9db475              # double 0.6505381085277252
	.quad	0x3febcdda4bd81d2e              # double 0.86887850583381065
	.quad	0x3fda62d150611ed0              # double 0.41228134965466001
	.quad	0x3fdb5246dbc9ece0              # double 0.42689677680728089
	.quad	0x3fdce17e163dd1f0              # double 0.45126297161121354
	.quad	0x3fc187b8e0dc83b0              # double 0.13695441226539407
	.quad	0x3fec10000d3ed49f              # double 0.87695314967153937
	.quad	0x3fe670fc34a58854              # double 0.70129213602582263
	.quad	0x3fdf1936cf5ba526              # double 0.4859139466266974
	.quad	0x3fb5d885f664e308              # double 0.085335133223349513
	.quad	0x3fe610ae3dbf1dea              # double 0.68953620967743956
	.quad	0x3fbf3883dd773b20              # double 0.12195610195997775
	.quad	0x3fcd797229985e70              # double 0.23026873618140398
	.quad	0x3fdf21603c2cf8b6              # double 0.48641210438280369
	.quad	0x3febef3ab6476b09              # double 0.87295280076372805
	.quad	0x3fe2699484bbe2a8              # double 0.57538820194811979
	.quad	0x3fe660d59885a70a              # double 0.69932060040920985
	.quad	0x3fe0f72a23391cda              # double 0.53017145995627435
	.quad	0x3fdf93ff6329301a              # double 0.49340805705719648
	.quad	0x3fa07ba25f575e90              # double 0.032193254602757126
	.quad	0x3feb453ace582a10              # double 0.85220089246405628
	.quad	0x3fd21c8db70895ba              # double 0.28299277185791605
	.quad	0x3fe9a75e36e9e112              # double 0.80168066716490416
	.quad	0x3fdde9f1336124dc              # double 0.46740369813467253
	.quad	0x3feedebc2c217152              # double 0.96468933696045611
	.quad	0x3fe650dd1c1068c9              # double 0.69737105828542056
	.quad	0x3fedb4d039b4f328              # double 0.92832194586626304
	.quad	0x3fb6e0f133a3af98              # double 0.089369845492625166
	.quad	0x3fe1007c817bd366              # double 0.53130936898979253
	.quad	0x3fe6db4b1a8610b1              # double 0.71426921062859183
	.quad	0x3fe7e580d5e7aa5f              # double 0.74676553514775523
	.quad	0x3fb8706ed6f961c8              # double 0.095465590938494604
	.quad	0x3fd97e6edc4f2f5e              # double 0.39834186091024104
	.quad	0x3fed9ccb2bc9382c              # double 0.92538984825092063
	.quad	0x3fd320e4b0de0090              # double 0.29888264915644758
	.quad	0x3fb14ff3edf269c0              # double 0.067626233665953883
	.quad	0x3fe2e89d73d91927              # double 0.59089539171762773
	.quad	0x3fbdad791ce16fd0              # double 0.11592823939412189
	.quad	0x3fefeb5839aaafcb              # double 0.99747859252010451
	.quad	0x3fcbd992ec746640              # double 0.21757732911719252
	.quad	0x3fe59780feba64ed              # double 0.6747441268118145
	.quad	0x3fe5fb7711234805              # double 0.68694642398099914
	.quad	0x3fdda447d11d684e              # double 0.46315188809751795
	.quad	0x3fe2b8186e399fcd              # double 0.58497258690203469
	.quad	0x3fe1d22196b55514              # double 0.55690078196735948
	.quad	0x3feae0a347ea51eb              # double 0.83992160840949504
	.quad	0x3fdd7fa98a695ad2              # double 0.46091688648941187
	.quad	0x3fc1afa10db82ac8              # double 0.13817227525608744
	.quad	0x3fbdecde3c055480              # double 0.11689557042457643
	.quad	0x3fe1a412639e2233              # double 0.55127829987129073
	.quad	0x3f871ec8b17ff0c0              # double 0.011289184491026893
	.quad	0x3fddad01c5899fb2              # double 0.4636845044210488
	.quad	0x3feef145f9eb5d62              # double 0.96695231258756231
	.quad	0x3fe391b1c239fba1              # double 0.61153495726454221
	.quad	0x3fdf8e0698cb3b54              # double 0.49304356499935875
	.quad	0x3feeb28460466e8e              # double 0.95929163745627632
	.quad	0x3fe3cd018ce10815              # double 0.61877515330729926
	.quad	0x3feb73d30cc243cb              # double 0.85788872234308522
	.quad	0x3fd9d818c7e1e376              # double 0.40381450195086843
	.quad	0x3fcea9953d201f90              # double 0.23955026135103852
	.quad	0x3fd1084a47fbc920              # double 0.26613099126474715
	.quad	0x3fcccfc3704afbd4              # double 0.22509043677379614
	.quad	0x3fd8d88ec88e0f54              # double 0.38821763596955816
	.quad	0x3fe463d592efff4f              # double 0.63718680094459923
	.quad	0x3fc2ae0e52ff31b4              # double 0.14593676617222473
	.quad	0x3fd3f4358f4bd1ec              # double 0.31178034776465213
	.quad	0x3fe8e73b241ef6de              # double 0.77822644286035447
	.quad	0x3fe410cebf8cf886              # double 0.62705171024551087
	.quad	0x3fef73191ce05476              # double 0.98280006065273429
	.quad	0x3fea10168171967d              # double 0.81446385652516506
	.quad	0x3fc4dd06e3d66a68              # double 0.16299520611649432
	.quad	0x3fe9f2a73aacc4cc              # double 0.81087075672089659
	.quad	0x3f79f8ef90367380              # double 0.0063409192984210661
	.quad	0x3fe71a079e3bba34              # double 0.72192746071761471
	.quad	0x3fdb8e90a95b015a              # double 0.43057648218748101
	.quad	0x3fb66839f81e9590              # double 0.087527869297068017
	.quad	0x3fecf141ba953a8e              # double 0.90445028726556287
	.quad	0x3fda03454f173ada              # double 0.40644963000970125
	.quad	0x3fe7b7a2cfdbfc14              # double 0.74116650197527401
	.quad	0x3fcd2680ec1a3d40              # double 0.22773753670160524
	.quad	0x3feed7e9f91d4739              # double 0.96385668425703052
	.quad	0x3fc4776cddd4d400              # double 0.15989456969842308
	.quad	0x3fd179d23fced7f8              # double 0.27306038123367626
	.quad	0x3fe6a11800681dd3              # double 0.70716476516184412
	.quad	0x3fe99eb067961949              # double 0.80062122565940641
	.quad	0x3fed468034862789              # double 0.91485605486489974
	.quad	0x3fc549f21e1e7ef4              # double 0.16631914587650665
	.quad	0x3fba127b53961820              # double 0.10184450903588571
	.quad	0x3fcc780b69613a58              # double 0.22241346974847676
	.quad	0x3fdfb5dad202de8a              # double 0.49547453411967324
	.quad	0x3fec970a808cb7a6              # double 0.8934376250015148
	.quad	0x3fd067cce5934b10              # double 0.25633547229260589
	.quad	0x3fe64f9c9fe51fb7              # double 0.6972182391118541
	.quad	0x3fd3ae8ae2c0641e              # double 0.30752823013023256
	.quad	0x3fe5bd06bd0ac5da              # double 0.67932450220376528
	.quad	0x3fec87650f917f54              # double 0.89152768173878849
	.quad	0x3fd74f8f8307f5fa              # double 0.36423099323278019
	.quad	0x3fdb81455f27f85a              # double 0.42976507465926306
	.quad	0x3fc596d10211866c              # double 0.16866505242346663
	.quad	0x3fe07031e4594949              # double 0.51369566535348909
	.quad	0x3fe94c72f494c323              # double 0.79058215875383941
	.quad	0x3fe4f016766d1d9d              # double 0.65430758600352912
	.quad	0x3fea713009e2ceff              # double 0.8263168519101497
	.quad	0x3fe2e143730dee09              # double 0.58999798270764459
	.quad	0x3fecd50ba7e3be71              # double 0.9010065344900352
	.quad	0x3fe39037438558c1              # double 0.61135447681115107
	.quad	0x3fefc5cec730476a              # double 0.99289645103475022
	.quad	0x3fd316e170267c10              # double 0.29827152206593244
	.quad	0x3fdbde6fdd5768b8              # double 0.43545147529006156
	.quad	0x3fd3fa2b3dade654              # double 0.31214409850472191
	.quad	0x3fb12e27f9927580              # double 0.06711053698605518
	.quad	0x3fcc1bc2b3e93398              # double 0.21959718498910941
	.quad	0x3fcd2c55bdba7440              # double 0.22791549457625315
	.quad	0x3fce683d58fe69d8              # double 0.23755614133263125
	.quad	0x3fa0fd107fa9a670              # double 0.03318072851545828
	.quad	0x3fe9d122eba29572              # double 0.8067793466804416
	.quad	0x3fe3ce883a82ae19              # double 0.61896144321275692
	.quad	0x3fc4925ad8bfb1e0              # double 0.16071639617383848
	.quad	0x3f99fa59633d1a40              # double 0.025369068796204042
	.quad	0x3fea9d916c13ebc5              # double 0.83173438176105974
	.quad	0x3fd116ee058bff9c              # double 0.26702452222525053
	.quad	0x3fecfc0a6fd96072              # double 0.90576669545681754
	.quad	0x3fe815013384bb01              # double 0.75256404936030219
	.quad	0x3feea682005e19ab              # double 0.95782566139023594
	.quad	0x3fef8344b5b76a7c              # double 0.98477397433755653
	.quad	0x3fe0a4724472a9ba              # double 0.52007401818018839
	.quad	0x3fe783c17ababb9f              # double 0.73483346911040204
	.quad	0x3fd7731563c182f8              # double 0.36639914266383711
	.quad	0x3fd1aaeac34b9e9c              # double 0.2760569483930142
	.quad	0x3fe614cfdbbb97e6              # double 0.69004052082595702
	.quad	0x3fd5683a5f44840a              # double 0.33448657325249143
	.quad	0x3fab3e82b48856a0              # double 0.053211292779605346
	.quad	0x3f9bb05845ef2920              # double 0.027039889591642496
	.quad	0x3fe4e91f24349126              # double 0.65345723220210483
	.quad	0x3fc006bf6fce5e9c              # double 0.12520592650684115
	.quad	0x3fd93a9e53c7ba96              # double 0.39420278722438107
	.quad	0x3fe4dbd26978cd51              # double 0.65183373069741368
	.quad	0x3fc10d8de126a880              # double 0.13322614186956017
	.quad	0x3fd0e5f0fba641c6              # double 0.26403450560703978
	.quad	0x3fc005e3087332f8              # double 0.12517965233418926
	.quad	0x3fde909ffa0ce750              # double 0.4775772039316637
	.quad	0x3fbdf33196de69e0              # double 0.11699209149666201
	.quad	0x3fd2da2bdf4c7322              # double 0.29456612402445803
	.quad	0x3fe07c19721bf335              # double 0.51514885222386531
	.quad	0x3fcb219cab914a6c              # double 0.21196325661965731
	.quad	0x3fdf926d0181c80e              # double 0.49331212184108686
	.quad	0x3fccdad8605f9cc4              # double 0.22542862611519443
	.quad	0x3fca25721fa610ac              # double 0.2042677549872044
	.quad	0x3fb493c927b28f80              # double 0.080380031768582327
	.quad	0x3fcca3e6d182ffc8              # double 0.22375188093246678
	.quad	0x3fe2951f1cec79c2              # double 0.58070331238905504
	.quad	0x3fe83d64e3770afd              # double 0.75749439646492045
	.quad	0x3fee796a5048b06c              # double 0.95232120209176462
	.quad	0x3fc137414e00bcb4              # double 0.13449875172361703
	.quad	0x3fe9abd9e327de25              # double 0.80222792021135503
	.quad	0x3fdc42a022e140f2              # double 0.44156649976959195
	.quad	0x3fe908b8a09535b0              # double 0.78231459964597683
	.quad	0x3fe2a42fe3af9064              # double 0.58254236669428083
	.quad	0x3fecd3aa73ab8fb0              # double 0.90083811370685929
	.quad	0x3fd104e31a1cebd6              # double 0.26592328596205783
	.quad	0x3fdb6fbb466549e2              # double 0.42869455217910801
	.quad	0x3fe21205cede78c6              # double 0.56470003513438694
	.quad	0x3fe87e8284fc133c              # double 0.76544309590881409
	.quad	0x3fd993259f616b42              # double 0.39960613789087429
	.quad	0x3fb70a7565a0adc8              # double 0.090003335296095277
	.quad	0x3fe7a307e777b1b8              # double 0.73865122993952692
	.quad	0x3fd111f46cf6cf28              # double 0.26672087327027549
	.quad	0x3fe51a2a78734f9e              # double 0.65944407964206042
	.quad	0x3fd4d46d01de6c3c              # double 0.32546544249061404
	.quad	0x3fd902ed42118f8a              # double 0.39080363704692245
	.quad	0x3fe68edd171009ca              # double 0.70493940834449487
	.quad	0x3fe354434c8fd8ae              # double 0.6040359969472513
	.quad	0x3fec69608466e08a              # double 0.88786340579737666
	.quad	0x3fd02d3456d1a1f0              # double 0.25275906065374354
	.quad	0x3febc3f58943f36a              # double 0.86767079171805261
	.quad	0x3fe259875553f11a              # double 0.57342878976445211
	.quad	0x3fef91fcb81997cc              # double 0.98657070118928791
	.quad	0x3fd70a7cf7b1b62e              # double 0.3600151461494957
	.quad	0x3fe31295d18d5525              # double 0.59601870468273843
	.quad	0x3fecf99129a81d22              # double 0.90546472679207946
	.quad	0x3fec61c02153f642              # double 0.88693243512506847
	.quad	0x3fb4b4c94d656ef8              # double 0.08088358058506262
	.quad	0x3fca2e93dbc18f88              # double 0.20454643469122069
	.quad	0x3fa52fcd6e05f740              # double 0.041380328827456569
	.quad	0x3fd34a2f4f464bca              # double 0.30140288106593671
	.quad	0x3fda0ed8c09f1ece              # double 0.40715616999339665
	.quad	0x3fd1a324ee52a148              # double 0.27558253549297662
	.quad	0x3fe451ce86282aa3              # double 0.63498617365378995
	.quad	0x3fb890267de521d8              # double 0.095949559913726445
	.quad	0x3fec73a2b3118fe1              # double 0.88911566709839118
	.quad	0x3fdc37cbb72094e6              # double 0.44090550311587007
	.quad	0x3fc32534329c7710              # double 0.14957287284135434
	.quad	0x3fd54f159c4b0a00              # double 0.33295192969322329
	.quad	0x3fe66b24ece8109f              # double 0.7005791308479451
	.quad	0x3fea3a97bb838331              # double 0.81965242980741071
	.quad	0x3fc9442f6031b04c              # double 0.19739334294297561
	.quad	0x3fc37d3796bfc86c              # double 0.15225882397459445
	.quad	0x3fe36d341d4bfc56              # double 0.60708051416430453
	.quad	0x3fdcb5c710958bae              # double 0.44859482402369621
	.quad	0x3fd196faa40bb742              # double 0.27484003086179964
	.quad	0x3fde2ddb7bbb4034              # double 0.47154891093396434
	.quad	0x3feb6628db00d160              # double 0.8562206532865666
	.quad	0x3fed69e0eb67a118              # double 0.91917463281154976
	.quad	0x3fe8849590557a31              # double 0.76618459882940304
	.quad	0x3fc9bc78a0ed0f34              # double 0.20106418473926058
	.quad	0x3fea6bb25dfaaede              # double 0.82564657550161846
	.quad	0x3fe272fbf8c1c6fa              # double 0.57653616509762107
	.quad	0x3fd7c2e45adcae8e              # double 0.37127026437040278
	.quad	0x3fe59b484519927b              # double 0.67520535942146809
	.quad	0x3fead2d8be861fc6              # double 0.8382381173296316
	.quad	0x3fda0962f7688448              # double 0.40682291184390751
	.quad	0x3fd2887281e98bdc              # double 0.28957808195826629
	.quad	0x3fb5eebdcbaf9c30              # double 0.085674154499074672
	.quad	0x3fdb8639b8cf89b2              # double 0.4300674729148809
	.quad	0x3fd7e841dd69a4da              # double 0.37355085966426105
	.quad	0x3fb75ecb74ad44a8              # double 0.091290203080705568
	.quad	0x3fe5a9a3cc0dae1a              # double 0.67695798734843327
	.quad	0x3fefd7c5f2060f96              # double 0.99508950491189085
	.quad	0x3fe8656282a48984              # double 0.76237607494503878
	.quad	0x3fa539299cdb2fa0              # double 0.041451740643963619
	.quad	0x3fb38a947a882ae0              # double 0.076333312907233886
	.quad	0x3fd118f2dc8a838c              # double 0.26714774644101946
	.quad	0x3feff9ac44c02d69              # double 0.99922765186185558
	.quad	0x3fe113cdb86f8a0a              # double 0.5336674310931937
	.quad	0x3fc9b009fdf8c8d4              # double 0.20068478489844799
	.quad	0x3fd753403e6dded0              # double 0.36445623489951817
	.quad	0x3fedfbf44bcd2025              # double 0.93700613789497267
	.quad	0x3fde1e4793907b66              # double 0.47059811983665722
	.quad	0x3fd40a6243594344              # double 0.31313377930660047
	.quad	0x3feffa2e9fae967a              # double 0.9992898100651495
	.quad	0x3fecedef3069d56b              # double 0.90404471832031896
	.quad	0x3fda292c78c11a3e              # double 0.40876304428494226
	.quad	0x3fb3fbbb517e5470              # double 0.078059871097438948
	.quad	0x3fec5bd305bf4b07              # double 0.88620902178294692
	.quad	0x3fee8b526a31647e              # double 0.95450707188423656
	.quad	0x3fe7bd895879661d              # double 0.74188678054924007
	.quad	0x3fe9b955335b58ac              # double 0.80387363463048222
	.quad	0x3fe0327b16bb4d7b              # double 0.50616220893645847
	.quad	0x3fd9acb8783d612e              # double 0.40116702787556136
	.quad	0x3fea0109f1723a95              # double 0.81262681157552896
	.quad	0x3fc25529d147f66c              # double 0.14322397917560481
	.quad	0x3fdce6bff5d13b96              # double 0.45158385282132352
	.quad	0x3fe8815d646d1e5c              # double 0.76579160322667005
	.quad	0x3fde18543d299b28              # double 0.47023492787268362
	.quad	0x3fdfdcf7c7dd05aa              # double 0.49786180990130424
	.quad	0x3fecddf379756081              # double 0.90209363672603626
	.quad	0x3fce6a52fafcf7d8              # double 0.23761975531846136
	.quad	0x3fbce1cf08a188b0              # double 0.11282056771009041
	.quad	0x3fe0c9c1d0ff9314              # double 0.52462855167377365
	.quad	0x3fe1e6c1b25c9afd              # double 0.5594185336711629
	.quad	0x3fe19fcdb889b240              # double 0.55075727503351146
	.quad	0x3fe28d7770c6d7c4              # double 0.57976886774735492
	.quad	0x3fc84428d87e9bb0              # double 0.18958006449721898
	.quad	0x3fef06a7c26e40d3              # double 0.96956241583577662
	.quad	0x3fdf15ff2e53cf8a              # double 0.48571757816466088
	.quad	0x3fee3a50dcaaf5cd              # double 0.94461863612348795
	.quad	0x3fda3c84522c2e32              # double 0.40994365715662007
	.quad	0x3fcfac96797f9724              # double 0.24745446140803395
	.quad	0x3fe5c313c9bd6296              # double 0.68006314661313882
	.quad	0x3fb3848b45f577d0              # double 0.076241211490440052
	.quad	0x3fe4c347bdb278d8              # double 0.64883791971422067
	.quad	0x3fd95ce25f726b28              # double 0.39629420586577391
	.quad	0x3fd32caa33596592              # double 0.29960112585612209
	.quad	0x3fe4c767cfd1c9d7              # double 0.64934149350875259
	.quad	0x3fdcd814889707c4              # double 0.45068848933089733
	.quad	0x3fd18b735981e0f6              # double 0.27413638821555197
	.quad	0x3fe41ce6964d85fb              # double 0.62852792125721579
	.quad	0x3fdb9f39267cea9c              # double 0.43159321554746
	.quad	0x3feccedd0b63f0da              # double 0.90025188660322475
	.quad	0x3fdda552fcff0c36              # double 0.46321558672588325
	.quad	0x3fbf020b839040a8              # double 0.12112495386122879
	.quad	0x3fe4eccb0408c25a              # double 0.6539053992074273
	.quad	0x3fc79fa55fc3525c              # double 0.18455950904776131
	.quad	0x3fe3262f887f587d              # double 0.59841133746773745
	.quad	0x3fea140c00b93945              # double 0.81494712964357829
	.quad	0x3f980af52affa100              # double 0.023479300259993785
	.quad	0x3fc9c3ab3e2085d4              # double 0.20128384145304656
	.quad	0x3fc595ed2c87a028              # double 0.16863789247804672
	.quad	0x3fe0003d1f47e328              # double 0.50002914533169918
	.quad	0x3fe65e81e2db169b              # double 0.69903654392028913
	.quad	0x3fe4fc3a9ef557e0              # double 0.65578967138821653
	.quad	0x3fef837fba61290f              # double 0.98480211641552439
	.quad	0x3fe6bb9257830933              # double 0.71039692966613754
	.quad	0x3fa273ad38ad7280              # double 0.036038792770999528
	.quad	0x3fe21ef33cf21a7b              # double 0.56627809432468668
	.quad	0x3fefed25a85dea08              # double 0.99769862064505421
	.quad	0x3fe202d899ec503a              # double 0.56284742415528588
	.quad	0x3fee9defde307635              # double 0.95677941700313929
	.quad	0x3fe2112ae9db9129              # double 0.56459565806702472
	.quad	0x3fa615019f106010              # double 0.043129015604961407
	.quad	0x3fe5249600372242              # double 0.6607160572248818
	.quad	0x3fe95e6ee5331f12              # double 0.79277748838009843
	.quad	0x3fdce79f530c00aa              # double 0.45163710699126602
	.quad	0x3fe3bae82dd4aa77              # double 0.61656578971208276
	.quad	0x3fd2b10303490fda              # double 0.29205394097175275
	.quad	0x3fe96e3ef1c1608f              # double 0.79470774858329374
	.quad	0x3fd2bce4ea83301e              # double 0.29277918721777663
	.quad	0x3fbabcaeb912bfe0              # double 0.10444156664266258
	.quad	0x3fe04125067c2f4d              # double 0.50795222536678752
	.quad	0x3fe78e5ee6bfe894              # double 0.73612923687257359
	.quad	0x3fe3eaa5c2ef9643              # double 0.62239349435248703
	.quad	0x3fe97f24ba7c338e              # double 0.79677044318087709
	.quad	0x3fc4c99b1dba116c              # double 0.16240252448563852
	.quad	0x3fed97ab063de835              # double 0.92476416796785676
	.quad	0x3fe608f8a1dd5805              # double 0.6885951196115917
	.quad	0x3fe236929df0c15f              # double 0.56916170928711185
	.quad	0x3feb4c893a94e18a              # double 0.85309277955734442
	.quad	0x3fe8056623877e3f              # double 0.75065905513105935
	.quad	0x3fb1f1125e49ab50              # double 0.070084713000750698
	.quad	0x3fcb6dbefdefcdb0              # double 0.2142866840291453
	.quad	0x3feb880008e122db              # double 0.86035157903924231
	.quad	0x3fcd6b0fce355550              # double 0.22982976502195607
	.quad	0x3fb6fd3624ac60b0              # double 0.089801200822310134
	.quad	0x3fecbc896e01fd84              # double 0.89801475034612154
	.quad	0x3fdf471f522031c2              # double 0.48871596355527569
	.quad	0x3fcbe5dabe75b0ac              # double 0.21795210170546875
	.quad	0x3fdf907b209d7584              # double 0.49319341836038455
	.quad	0x3fd06d24563b7f2c              # double 0.25666149541028704
	.quad	0x3fe350b62b3fffca              # double 0.60360248992218968
	.quad	0x3feadb39754d3d54              # double 0.83926079664699182
	.quad	0x3fea741918add470              # double 0.82667212314721716
	.quad	0x3fec0c92b673fe55              # double 0.87653480182047849
	.quad	0x3fe539130b8b81e9              # double 0.66321708922265288
	.quad	0x3fe13895e67914a9              # double 0.53815741552593466
	.quad	0x3fe37d458131d1c5              # double 0.6090419314701242
	.quad	0x3fde67126bc1bb52              # double 0.4750410129844812
	.quad	0x3fe36f91d94d9581              # double 0.60736935083393473
	.quad	0x3fe4baa526fc2639              # double 0.64778382887124686
	.quad	0x3febcb104143fdfc              # double 0.86853802439867378
	.quad	0x3fe182468f8120b1              # double 0.54715278652385824
	.quad	0x3fe62c51ecd46d37              # double 0.69291015868967676
	.quad	0x3fe554591546a4b2              # double 0.66654638438662617
	.quad	0x3fc29057c509b540              # double 0.14502999421112328
	.quad	0x3fec8b5730082070              # double 0.89200934773636043
	.quad	0x3fd188d284529bec              # double 0.27397597238672122
	.quad	0x3fcb278ab5ee4b5c              # double 0.21214422114698095
	.quad	0x3fec282d3f20b039              # double 0.87990438775660273
	.quad	0x3fefc57edf868e88              # double 0.99285834939333117
	.quad	0x3fda69595049ea7c              # double 0.41267998543450068
	.quad	0x3fd6b433edd972a6              # double 0.35474870898705502
	.quad	0x3fc067d38f95e8c4              # double 0.12816853056921762
	.quad	0x3feb09f78f558cc0              # double 0.84496667857128926
	.quad	0x3fc90f39f581c8c8              # double 0.19577717292447105
	.quad	0x3fd8ccef31994266              # double 0.38750820010776577
	.quad	0x3fe5939b5e9675ed              # double 0.67426842188041081
	.quad	0x3fee47dfd4dfe76d              # double 0.946273723383667
	.quad	0x3fe1ed52095ad08d              # double 0.56021978213404255
	.quad	0x3fdd798e1452405e              # double 0.46054412827016289
	.quad	0x3fd3cf346ae7d02a              # double 0.30952177467338748
	.quad	0x3fe579d530085c57              # double 0.67112216359499655
	.quad	0x3fdc1a31d762d47c              # double 0.43909879716677103
	.quad	0x3fe963fc1d7954e2              # double 0.7934551788008799
	.quad	0x3fdcd3d57204f15e              # double 0.45042930731485409
	.quad	0x3fdf7f0b75da60ca              # double 0.49212919720731618
	.quad	0x3fc2f657d351bbc8              # double 0.14814279383014495
	.quad	0x3fecdb1625b944dd              # double 0.90174395912086036
	.quad	0x3fe97ee1817d5d0b              # double 0.7967383889289591
	.quad	0x3fd1481bac5700da              # double 0.27002612905563483
	.quad	0x3feaaf11f3a2e8b7              # double 0.83387086472728
	.quad	0x3fe0dd134e6946c5              # double 0.52698674502081444
	.quad	0x3fd97af6173cf262              # double 0.3981299616751014
	.quad	0x3fc3955b84b6668c              # double 0.15299552898504876
	.quad	0x3faa0fa6588685c0              # double 0.050900648409207161
	.quad	0x3fd925efb9ad921c              # double 0.39294045574777825
	.quad	0x3fe330e6b0d148ab              # double 0.59971937689467347
	.quad	0x3fd34636ec59fea6              # double 0.30116055566029798
	.quad	0x3feb5580da2b9053              # double 0.85418741809236065
	.quad	0x3fe3a3694bae2d91              # double 0.61369766980480922
	.quad	0x3fd4171d900c5e4c              # double 0.31391085688799047
	.quad	0x3fe94fbf86cedbf8              # double 0.79098488168426595
	.quad	0x3fb4aba2acfc4600              # double 0.080743949158453177
	.quad	0x3fd67db08c329144              # double 0.35142148677029561
	.quad	0x3fde21df1f32bd32              # double 0.47081735655497703
	.quad	0x3fdbd0913db0faa0              # double 0.43460494064849264
	.quad	0x3fee2c1f4b1a580c              # double 0.94288601559196782
	.quad	0x3fd930806a657958              # double 0.39358530416747817
	.quad	0x3fefc5065cea5838              # double 0.99280088565388435
	.quad	0x3fe2b6bcd947fe5f              # double 0.58480684697856222
	.quad	0x3fc6ea6677dcc9d4              # double 0.17902832844408911
	.quad	0x3fd5fde3d82a933a              # double 0.3436212168692695
	.quad	0x3fe070297fff6df5              # double 0.51369166373791464
	.quad	0x3f9c29027ee2a8c0              # double 0.027500189775914619
	.quad	0x3fba4bfeba68b9f8              # double 0.10272209216120831
	.quad	0x3fdc80d2738ee83a              # double 0.44536267552360054
	.quad	0x3fef9767923ee27d              # double 0.98723200381853326
	.quad	0x3fc8051c56da41ac              # double 0.18765596619460945
	.quad	0x3fdf0ce2401a12ca              # double 0.48516136417337619
	.quad	0x3f5b69c68b741a00              # double 0.0016731680787543945
	.quad	0x3feecce7cd416d0a              # double 0.96251287545183684
	.quad	0x3fc6d130e0503a78              # double 0.17825900032808639
	.quad	0x3fe54264ff2518d3              # double 0.66435479958524934
	.quad	0x3f9370b808a2ce40              # double 0.018984675910088677
	.quad	0x3fe009cfbebb23c1              # double 0.50119769336844666
	.quad	0x3fe03d93bdc6b027              # double 0.50751673761033522
	.quad	0x3fda96376b49b972              # double 0.41541848637907386
	.quad	0x3fefe360772379d4              # double 0.99650595921758133
	.quad	0x3fdb72ccb8a18528              # double 0.4288818171535973
	.quad	0x3fdb148f7241e3c4              # double 0.4231299033922904
	.quad	0x3feaaadacbb52658              # double 0.8333562830604917
	.quad	0x3fd087f85a0a6f2c              # double 0.25829895775835854
	.quad	0x3fa8665ed9288b20              # double 0.047656024941053809
	.quad	0x3f9a70cc4ecd07a0              # double 0.025820915517449472
	.quad	0x3fe201dbf96c9173              # double 0.56272696223872598
	.quad	0x3fab939e103a81b0              # double 0.053860606652281873
	.quad	0x3fcf1274124397dc              # double 0.24275065318869238
	.quad	0x3fe441e225662e25              # double 0.63304240517158361
	.quad	0x3fc20123d78c0588              # double 0.14065979027513387
	.quad	0x3fdc0f66a6242a7e              # double 0.43844000076993683
	.quad	0x3fda68b706c67dc0              # double 0.41264129316001785
	.quad	0x3fd4afa0c597cdee              # double 0.32321948333921469
	.quad	0x3feea8d93d5783ba              # double 0.95811140042143639
	.quad	0x3fe7ab36827e3642              # double 0.73965001570622513
	.quad	0x3fea80a3a16d191c              # double 0.82820302513644916
	.quad	0x3fea773f4da26303              # double 0.8270565525336625
	.quad	0x3fe13e7d2ef0979b              # double 0.53887805145199097
	.quad	0x3fad459f75fc8fa0              # double 0.057171805527360009
	.quad	0x3fc93762ff9480e8              # double 0.19700276832100561
	.quad	0x3fe5ca400158c507              # double 0.68093872321165427
	.quad	0x3fe8d2698c1f0aee              # double 0.77568509452279755
	.quad	0x3fca300c89c42520              # double 0.20459133841385668
	.quad	0x3fe32517f37ed4a7              # double 0.59827802236272454
	.quad	0x3fd6946283063ab4              # double 0.35280669017167132
	.quad	0x3fe90f806e18dba2              # double 0.78314229491558174
	.quad	0x3fcadbc16e434240              # double 0.20983140834734293
	.quad	0x3fea4cc51f94621a              # double 0.82187133949179558
	.quad	0x3fd3b2b376134270              # double 0.30778204470428872
	.quad	0x3fec2351f1a82c4e              # double 0.87931153486841551
	.quad	0x3fe0d344d72f9688              # double 0.52578966167921326
	.quad	0x3fed854195a711c0              # double 0.92251662472749984
	.quad	0x3fc3a45c32a69374              # double 0.153453373653203
	.quad	0x3fe0807ff014bceb              # double 0.51568600550481614
	.quad	0x3fd16da05c1a1910              # double 0.27231606478052672
	.quad	0x3fe2ab95f7f95bc4              # double 0.58344553406174571
	.quad	0x3fc5586507349610              # double 0.16676009036852735
	.quad	0x3fe730d20bfeb7d4              # double 0.72470953314563724
	.quad	0x3fda2dbde2199c18              # double 0.40904185371476975
	.quad	0x3fa17877158dfa70              # double 0.034122201329400137
	.quad	0x3fe8e6b2bf4814f3              # double 0.77816140517884802
	.quad	0x3fd0b20b4bbec51a              # double 0.26086695096008017
	.quad	0x3fd2fe7ca905f282              # double 0.29678265100645984
	.quad	0x3fe3085c4427f30e              # double 0.59477055846909521
	.quad	0x3fe692960cbe8b80              # double 0.70539381493686903
	.quad	0x3fef20d0357d36a6              # double 0.97275553176014706
	.quad	0x3fed720829b7bca8              # double 0.92016990802757892
	.quad	0x3fdac611af201c72              # double 0.41833917715161484
	.quad	0x3fecf25cac2777f8              # double 0.90458520530569242
	.quad	0x3fe63c36e25bbab3              # double 0.69485038958176515
	.quad	0x3fbe0b5d8d211e08              # double 0.11736092277089238
	.quad	0x3fd2aeed699201ee              # double 0.29192672071078973
	.quad	0x3fe592a678ddcfd1              # double 0.67415164572457276
	.quad	0x3fb67c5f38615958              # double 0.087835265412058106
	.quad	0x3fc45017948c2d14              # double 0.15869421723650901
	.quad	0x3fe8435931a97e51              # double 0.75822124194741936
	.quad	0x3fe8c725cfb5f21f              # double 0.77431002205372923
	.quad	0x3febe3f1d4091d5f              # double 0.87157527363971699
	.quad	0x3fe8e9eb414c30c3              # double 0.7785545611709711
	.quad	0x3fe500e4bedc7471              # double 0.65635907437866881
	.quad	0x3fd5d1eaa886f794              # double 0.34093729455695976
	.quad	0x3fe8e3599fed98d7              # double 0.77775269733390473
	.quad	0x3fd944e54c966aae              # double 0.39483005980734276
	.quad	0x3fded9906b4a129c              # double 0.482029061102631
	.quad	0x3fd3a67ac28749cc              # double 0.30703610417290572
	.quad	0x3fe29766933086ce              # double 0.580981528739551
	.quad	0x3fe89a538bcb46f1              # double 0.76883866599584227
	.quad	0x3fe597019ec5012f              # double 0.67468338975598907
	.quad	0x3fc091bba5256378              # double 0.12944741786739278
	.quad	0x3feb717380638d2b              # double 0.8575990207286045
	.quad	0x3fe749cc3bbeb819              # double 0.72775851887650156
	.quad	0x3f97d1cf87c0f3c0              # double 0.023261301670789214
	.quad	0x3fdf2696cee1c32c              # double 0.4867302913981344
	.quad	0x3fdfb9e219bac9a2              # double 0.49572041046772075
	.quad	0x3fe685b0162a643d              # double 0.7038193161889762
	.quad	0x3fe4f7398bfce105              # double 0.65517880765313008
	.quad	0x3fe92032daeeb8e2              # double 0.78518049965148529
	.quad	0x3fa195f630315830              # double 0.034347241766838343
	.quad	0x3fe86db6cc29fb99              # double 0.76339282871036851
	.quad	0x3fdd11c7644ec320              # double 0.45421013637228391
	.quad	0x3fd2a7341a9511d8              # double 0.29145529361656264
	.quad	0x3fe5c7d8a3b12c59              # double 0.68064529391393613
	.quad	0x3fbf962906031b00              # double 0.12338501354961906
	.quad	0x3fe21c6eec698da1              # double 0.56597086118965845
	.quad	0x3fd51347e8334ce8              # double 0.32930181194133334
	.quad	0x3fccdcaf9139ae00              # double 0.22548479643897679
	.quad	0x3fb294b603ecfaf8              # double 0.072581649740623422
	.quad	0x3fde45cd222cc7cc              # double 0.47301033341784371
	.quad	0x3fe78f616aa84fd0              # double 0.73625250655686081
	.quad	0x3fe32e5be62a960e              # double 0.59940905527463584
	.quad	0x3fd4b2b77a3f4830              # double 0.3234080022640482
	.quad	0x3fec2564d2361b65              # double 0.87956467682748196
	.quad	0x3fd72627d5298246              # double 0.36170383278480178
	.quad	0x3fd1e5c82d6814c8              # double 0.27964977678523129
	.quad	0x3fe1b5fe0fae9250              # double 0.55346587241053591
	.quad	0x3fcb53943bb051a0              # double 0.21348812975396658
	.quad	0x3fdce29468bc07b6              # double 0.45132932880380439
	.quad	0x3fef0194d090f93f              # double 0.96894303069692699
	.quad	0x3fd9ae0c9c233a32              # double 0.40124812362492712
	.quad	0x3fe9c4a3adf2464e              # double 0.80525382970717785
	.quad	0x3feb1b50e47f6505              # double 0.84708447102016804
	.quad	0x3fe68fe43170b371              # double 0.70506486564918991
	.quad	0x3fbc9587ee66f1c8              # double 0.11165666170467781
	.quad	0x3feb5bf792b1ca4d              # double 0.85497645045536219
	.quad	0x3fd7ba460993f2d4              # double 0.37074423728317396
	.quad	0x3fd5e7935063192e              # double 0.34225924349120163
	.quad	0x3fd33c68519e836c              # double 0.30056198092102338
	.quad	0x3fe6470bf90f741d              # double 0.6961727013073219
	.quad	0x3fe5a3bafdcc96f2              # double 0.67623662538673401
	.quad	0x3fbf989e68b79338              # double 0.12342252785272201
	.quad	0x3fdd2b23ef0c4f40              # double 0.45575807899989584
	.quad	0x3fd2b9db2336f678              # double 0.29259375037131674
	.quad	0x3fea87b2db935d75              # double 0.82906477819316982
	.quad	0x3fed2f8edc702da3              # double 0.912055426162102
	.quad	0x3fc9dd7bbb636d60              # double 0.20207163476775758
	.quad	0x3fe5975bce3c4678              # double 0.67472639351235753
	.quad	0x3fef8b1a74b3f421              # double 0.98573038857978556
	.quad	0x3fe96ae0c1434437              # double 0.79429662462837924
	.quad	0x3fc2cb92ece6e024              # double 0.1468375832316734
	.quad	0x3fcac3fb5fd56094              # double 0.20910589389200551
	.quad	0x3fe159c730d70e2c              # double 0.54220923937868326
	.quad	0x3fdc166642da7706              # double 0.43886715439462909
	.quad	0x3fdf3df7e713dfb4              # double 0.48815724912810343
	.quad	0x3fd6c6add19a00b2              # double 0.35587640255836128
	.quad	0x3f9c087df1fcb3c0              # double 0.027376144308778327
	.quad	0x3fb4a433bed50c48              # double 0.080630525674721842
	.quad	0x3fe5c30228d4ceb7              # double 0.68005474066600058
	.quad	0x3fe2330c0fe8ce9e              # double 0.56873133761697026
	.quad	0x3fe6547ae248e9c4              # double 0.69781250187161747
	.quad	0x3fcc1f7faf1476c4              # double 0.2197112660295969
	.quad	0x3fea4d82388434c4              # double 0.82196150816312085
	.quad	0x3feb357ebac0c396              # double 0.8502801558989741
	.quad	0x3f98a125e18bbf80              # double 0.02405223073122853
	.quad	0x3fe51317d099e5d2              # double 0.65858069174208311
	.quad	0x3fef97e1437b5809              # double 0.98729003124276559
	.quad	0x3fd8388cc0e5771c              # double 0.37845152699979834
	.quad	0x3fd48131fcf5e202              # double 0.32038545325443135
	.quad	0x3fe47dce2bc3e7eb              # double 0.6403570990362345
	.quad	0x3fee90c03f9f292c              # double 0.95516979623906683
	.quad	0x3fd3db14efd16ab6              # double 0.31024669093828139
	.quad	0x3fee60d412f7350c              # double 0.94931987480382096
	.quad	0x3fd212caa97f530e              # double 0.28239695122219721
	.quad	0x3fb43c2a3527a648              # double 0.079043043114915723
	.quad	0x3fd3338eab3f307a              # double 0.30002180789302424
	.quad	0x3fefe3eda0bb4967              # double 0.99657327072990831
	.quad	0x3fd40a8d313a44e8              # double 0.31314401442894146
	.quad	0x3fdc91cb34ed9cde              # double 0.44639854592101169
	.quad	0x3fd02839f02c78ac              # double 0.25245521978821261
	.quad	0x3fa53738bfe7fda0              # double 0.041436932970096096
	.quad	0x3fdd561370613cc6              # double 0.45837865805237887
	.quad	0x3fe19f6b544b97ae              # double 0.55071035827562809
	.quad	0x3fc6f31b52ebc2bc              # double 0.17929402874826461
	.quad	0x3fee9acc05a82daf              # double 0.95639611344215847
	.quad	0x3fecad45c7ea64dd              # double 0.8961514381982415
	.quad	0x3fcd7325ed07f044              # double 0.23007654260425359
	.quad	0x3fee1936ef3227bf              # double 0.94057795255616117
	.quad	0x3feccc7e67aba2fb              # double 0.8999626183332049
	.quad	0x3fe2c895b04b7899              # double 0.58698543961124294
	.quad	0x3fe32f554f8bf69e              # double 0.59952798401328145
	.quad	0x3fc480327cb13a48              # double 0.1601622685288524
	.quad	0x3f8ee5ba71700500              # double 0.015086609446373078
	.quad	0x3fef4523e0b754fb              # double 0.97718995942946607
	.quad	0x3febfd2035d33887              # double 0.87464914810858907
	.quad	0x3fe2287ab1642da8              # double 0.56744131705038559
	.quad	0x3fcba2c71d273a98              # double 0.21590508388040486
	.quad	0x3fc01ebe62427dbc              # double 0.1259382228645175
	.quad	0x3fec40b779b17c2b              # double 0.88289998787138779
	.quad	0x3fe937a29e5bfe14              # double 0.78804140977439596
	.quad	0x3fe0295c52f4faea              # double 0.50504890635042199
	.quad	0x3fe11db8262e7656              # double 0.53487784821818241
	.quad	0x3fec50f7be5a8713              # double 0.88488375833932975
	.quad	0x3fb0fcf16b47ae00              # double 0.066359604541212036
	.quad	0x3fe5bb38b5243848              # double 0.67910418872066547
	.quad	0x3fdac6275b569c74              # double 0.41834434432752876
	.quad	0x3fec15e8007a7fa2              # double 0.8776741036744975
	.quad	0x3fe3c6b4cffa628e              # double 0.61800613995281295
	.quad	0x3fddf731a8a93476              # double 0.46821252318188245
	.quad	0x3fe8d040158d94c9              # double 0.77542118272381189
	.quad	0x3fd27b7fb1a3a130              # double 0.28878776881767276
	.quad	0x3fdcb907cd6c7286              # double 0.44879336415196069
	.quad	0x3fe6f577171f8da0              # double 0.71746401325474451
	.quad	0x3f461f17d635b400              # double 6.7509330658099831E-4
	.quad	0x3fec7096fc41d6ce              # double 0.88874387043935044
	.quad	0x3fe16dd7f86857cf              # double 0.54465864674670594
	.quad	0x3fc3f63e504aa404              # double 0.15595225258337575
	.quad	0x3fc8c5845dac033c              # double 0.19352774213623458
	.quad	0x3febe1844f46856a              # double 0.87127891047945849
	.quad	0x3fc7f9bf81570d00              # double 0.18730920615607971
	.quad	0x3f84c906dff0f140              # double 0.010149053296225063
	.quad	0x3fae556a9724b770              # double 0.059245425176739697
	.quad	0x3fe7933c42b9a2b9              # double 0.73672307045224905
	.quad	0x3fe5277c105da5a9              # double 0.66106990047881198
	.quad	0x3fd6ce0efa1e79e0              # double 0.35632681298912239
	.quad	0x3fd9c78e261ac3fe              # double 0.40280488701961292
	.quad	0x3fe1c50c22a1ca38              # double 0.55530363811551009
	.quad	0x3fe3b9121ab51fc0              # double 0.61634164062797225
	.quad	0x3fe11b1629a00d0b              # double 0.53455646638795551
	.quad	0x3fe02436bd910862              # double 0.50442063355172828
	.quad	0x3f9f924789246da0              # double 0.030831449265958377
	.quad	0x3feea3b8b4b04447              # double 0.95748553553324534
	.quad	0x3f93246fe6a34480              # double 0.018693684055339777
	.quad	0x3fe6825abb198cc6              # double 0.70341240446978115
	.quad	0x3fe2bd1d2698b8c5              # double 0.58558518923180058
	.quad	0x3fc9b805890a6adc              # double 0.20092839423599329
	.quad	0x3f8f342d42488280              # double 0.015236238084129328
	.quad	0x3fbcb93d7eb070e8              # double 0.11220154135702709
	.quad	0x3fe18a272f5ea5f6              # double 0.54811438800714885
	.quad	0x3fefdb3c40c81ef5              # double 0.99551212933235311
	.quad	0x3fe05619eaa083f5              # double 0.51051040483082366
	.quad	0x3fe63c3590ec6b45              # double 0.69484976106046104
	.quad	0x3fe9d8d1f3a6340a              # double 0.80771730029812372
	.quad	0x3febe75efd97551f              # double 0.87199353723068274
	.quad	0x3fb307ed53eb5498              # double 0.074339707363224483
	.quad	0x3fe08954620d43d3              # double 0.51676386976952882
	.quad	0x3fe8d9cc14b0c49e              # double 0.77658657113183316
	.quad	0x3fec2efaa535f5d1              # double 0.88073475139361268
	.quad	0x3fec511b24c82f77              # double 0.88490063842753741
	.quad	0x3fa7dc5c142afb80              # double 0.046603085958387247
	.quad	0x3f979ad5ede29520              # double 0.023051588672975076
	.quad	0x3fe9b41d66749b20              # double 0.80323667536581311
	.quad	0x3fccb445afa5c26c              # double 0.22425147129571898
	.quad	0x3f9f86ceca03f600              # double 0.0307876883316478
	.quad	0x3fe21238c3ebebd1              # double 0.56472433343821582
	.quad	0x3fd3d53d2aa63fde              # double 0.30989007153493542
	.quad	0x3fb4e0ae5afbe400              # double 0.081553361142042036
	.quad	0x3f4f370398fccc00              # double 9.5260310806677406E-4
	.quad	0x3fe46975c135da8a              # double 0.63787353264236057
	.quad	0x3fe75ae5592c03c2              # double 0.72984568992989574
	.quad	0x3fe21003ca2da388              # double 0.56445493209786068
	.quad	0x3feea062aa5ff797              # double 0.95707829738943218
	.quad	0x3fe3a8e51d685eec              # double 0.61436706298533528
	.quad	0x3fe42c91639d9073              # double 0.63044042068624007
	.quad	0x3fc1bcf5bbf0ab20              # double 0.13857909847987404
	.quad	0x3feea033725878d6              # double 0.95705578168033401
	.quad	0x3fd9e210f8055e9a              # double 0.40442299099729839
	.quad	0x3f972100d1c7fb20              # double 0.022586834720637161
	.quad	0x3f95eb6a08436a20              # double 0.021405846361498004
	.quad	0x3fc0effb1bb82264              # double 0.13232363561134541
	.quad	0x3fef6669f752c87c              # double 0.98125170045228982
	.quad	0x3fda966f63ef52d0              # double 0.41543183097136893
	.quad	0x3fd67d061c0009a8              # double 0.35138085111989392
	.quad	0x3fe6edfb46e06595              # double 0.71655048220707107
	.quad	0x3fcb7b64107803a4              # double 0.21470309070721527
	.quad	0x3fe925ac5b0caeca              # double 0.78584878714669881
	.quad	0x3fee17f8620494bc              # double 0.94042605537529011
	.quad	0x3fedc98b73cd2bd0              # double 0.93085262887449893
	.quad	0x3fdf7e3d775a0f66              # double 0.49208008437584849
	.quad	0x3fec24c2afdf3674              # double 0.87948736524567872
	.quad	0x3fd3bb414b12afd2              # double 0.30830414134356687
	.quad	0x3fd1e6b9f4046312              # double 0.27970742063330178
	.quad	0x3fe30e3bb0808e53              # double 0.59548744652824792
	.quad	0x3feade1b0722dd98              # double 0.83961249727046816
	.quad	0x3fbfe180e746ed00              # double 0.12453466078197906
	.quad	0x3fea1290f71a4dd3              # double 0.81476639044051991
	.quad	0x3fcd4cbb0994570c              # double 0.22890413253542652
	.quad	0x3fe936a53582c3ac              # double 0.78792057467773224
	.quad	0x3fcfacf45204e634              # double 0.2474656486972876
	.quad	0x3fd9dd2784317d02              # double 0.40412319097045224
	.quad	0x3fd7e6640d0b8928              # double 0.3734369399445705
	.quad	0x3fd8248a7d311c0a              # double 0.37723028398289726
	.quad	0x3fe2a16ac35d1829              # double 0.58220422894442436
	.quad	0x3fe88edbfcccc861              # double 0.76743888258921455
	.quad	0x3fdd8eda1da1c780              # double 0.46184399503464846
	.quad	0x3f8a0a9ade628340              # double 0.012715539847990009
	.quad	0x3fe8559fb014abc6              # double 0.76045212164660181
	.quad	0x3fedb1520fe5bdd9              # double 0.92789557557073998
	.quad	0x3fccb7d203c5af9c              # double 0.22435975250425322
	.quad	0x3fe25d77b5c2ba70              # double 0.57390962123993283
	.quad	0x3fd798a941237f0c              # double 0.36869269715497022
	.quad	0x3fe4592e2ab30940              # double 0.63588627185553293
	.quad	0x3fd769c62b90e89c              # double 0.36583093885895734
	.quad	0x3fd89d806d3a5898              # double 0.3846131388357974
	.quad	0x3fd16af3b63df89a              # double 0.27215283200337981
	.quad	0x3fe76582776cb1e3              # double 0.73114131283869843
	.quad	0x3fd4022f8c95dbc2              # double 0.31263340691606001
	.quad	0x3fa6437987a89680              # double 0.043483541307336004
	.quad	0x3fecac19b5cfebb4              # double 0.8960083533305494
	.quad	0x3fd72e4261bc104c              # double 0.36219844383618205
	.quad	0x3fefb8c937584a51              # double 0.9913068848566785
	.quad	0x3febdef0e6222ff4              # double 0.87096447895009854
	.quad	0x3fe1b6c6a192bcec              # double 0.55356151158585254
	.quad	0x3fe7226b35371bd9              # double 0.72295151132208979
	.quad	0x3fcacdf3b5904018              # double 0.20941015592006873
	.quad	0x3fe4b2616fbda684              # double 0.64677497696284592
	.quad	0x3fde5a5dc8ef1c88              # double 0.47426552412475376
	.quad	0x3fe90d63a6d111b4              # double 0.78288443166143517
	.quad	0x3fced4a7d0486220              # double 0.2408647315030672
	.quad	0x3fc93b8503098178              # double 0.19712889335915995
	.quad	0x3fe546e389689c90              # double 0.66490341985344692
	.quad	0x3fcfd83da865ff64              # double 0.24878664705829145
	.quad	0x3fe88dbe5a5611aa              # double 0.76730268138685642
	.quad	0x3fea013d706396ce              # double 0.81265136672001304
	.quad	0x3fe833a9d7af2338              # double 0.75630657316023697
	.quad	0x3fe7d3d83e6779e8              # double 0.74460994900055955
	.quad	0x3fd3a1d72fdf1688              # double 0.30675296473450731
	.quad	0x3fe20dfc1898481c              # double 0.5642071228378458
	.quad	0x3f4572dc8f15b000              # double 6.5456170538658043E-4
	.quad	0x3fd7e01682ff9368              # double 0.3730522422104543
	.quad	0x3fe9e877460bf077              # double 0.80962718659385657
	.quad	0x3fef70163b80af3e              # double 0.98243247624984753
	.quad	0x3fe5923fb9580aab              # double 0.67410265159590688
	.quad	0x3fd99beb1fc6bd68              # double 0.40014150717885011
	.quad	0x3fd3bcb8f0ed2a60              # double 0.30839370277377576
	.quad	0x3feb9a90e19b9b37              # double 0.86261791290312473
	.quad	0x3fd16aa98d515f7c              # double 0.27213515091488438
	.quad	0x3fdc4c9608fc9c06              # double 0.44217444303143372
	.quad	0x3fe77c05648406be              # double 0.73388929016092397
	.quad	0x3fc7133895c1abf8              # double 0.18027407944040852
	.quad	0x3fec91bad5d92d53              # double 0.89278928534751356
	.quad	0x3fe2ca0d1b2113d8              # double 0.58716445254014626
	.quad	0x3fe2ecf9fd9f82b3              # double 0.59142779861220729
	.quad	0x3fd98c9225a3e4fa              # double 0.39920476604272859
	.quad	0x3fe07f63eb3744bf              # double 0.51555057468990373
	.quad	0x3fe203288b144e3a              # double 0.56288554347924635
	.quad	0x3feb7d21eecf75fb              # double 0.85902496950774265
	.quad	0x3fc808d7db54d018              # double 0.18776987275634904
	.quad	0x3fd9cf4e76cfc9c2              # double 0.40327798464491249
	.quad	0x3fdb0ea6e1a79c3e              # double 0.42276927982897294
	.quad	0x3fdb636e8947d85a              # double 0.42794383436501493
	.quad	0x3fec55c534689c66              # double 0.88547001110135848
	.quad	0x3feb12db2646d008              # double 0.84605176425839179
	.quad	0x3fe4592cc659a7f3              # double 0.63588560810353412
	.quad	0x3fe650f02289288f              # double 0.69738013024586276
	.quad	0x3fd066c116a0845c              # double 0.25627162179632079
	.quad	0x3fc8a3b83b951bc8              # double 0.19249632748889511
	.quad	0x3fe83e17d9db35b4              # double 0.7575797324185971
	.quad	0x3fdc6e467d02f0d2              # double 0.44423067291405716
	.quad	0x3fe282752eb542f6              # double 0.5784250175730381
	.quad	0x3fe24f4a0bf6de1a              # double 0.57217886292250175
	.quad	0x3f9fbc0858b94540              # double 0.030990724959626847
	.quad	0x3fe487358df8ac3d              # double 0.6415050289991836
	.quad	0x3fead70259128c10              # double 0.83874623677218274
	.quad	0x3fd40091c650710c              # double 0.3125347553884843
	.quad	0x3feefdecf53f3d26              # double 0.96849677944002077
	.quad	0x3fd6ff1553b37c98              # double 0.35931904958665362
	.quad	0x3fe048365d01f326              # double 0.5088149849467285
	.quad	0x3fe4fcb71693e57e              # double 0.65584902200423278
	.quad	0x3fe46f79fee3a0ac              # double 0.63860797675171943
	.quad	0x3fde176746682dda              # double 0.47017843127897907
	.quad	0x3fef833b4ec14ca1              # double 0.98476949102259336
	.quad	0x3fe177eb32e75896              # double 0.54588851873519917
	.quad	0x3fecca98d0d515d2              # double 0.89973107135363706
	.quad	0x3fc0e71e2c730be4              # double 0.13205315752392643
	.quad	0x3febf965ce75e3a4              # double 0.87419405292813623
	.quad	0x3fe2f9d76b7c86bd              # double 0.59299822801059288
	.quad	0x3feba91dd4ea2550              # double 0.86439410767449409
	.quad	0x3fa529a6531a8750              # double 0.041333387035833113
	.quad	0x3f834c190803c180              # double 0.0094224887438663085
	.quad	0x3fcbdfe40ac7aec8              # double 0.21777010465972624
	.quad	0x3fea6a47c177bf5b              # double 0.82547366892502383
	.quad	0x3fdc576b4d118298              # double 0.4428356411572536
	.quad	0x3fce5c98ead4f748              # double 0.23720084635163574
	.quad	0x3fd3db1e4518b682              # double 0.31024891612728578
	.quad	0x3fddf2bec41510f6              # double 0.46794098995839251
	.quad	0x3fe6e37a25f6be8d              # double 0.71526820578397265
	.quad	0x3fe70db1b4132fff              # double 0.72042164965523614
	.quad	0x3fd356774e19821c              # double 0.30215246798437234
	.quad	0x3fe8ecb081bc46d6              # double 0.77889275874096131
	.quad	0x3fef992437fc32f4              # double 0.98744402823066801
	.quad	0x3febc5b10bd8f5b5              # double 0.86788227380718885
	.quad	0x3feaca5e07f5f9df              # double 0.83720304064609852
	.quad	0x3fe0e29331b2a1c1              # double 0.52765807825658595
	.quad	0x3fe6878ce42ca98b              # double 0.7040466743977033
	.quad	0x3feacefdd74535fc              # double 0.83776752514830787
	.quad	0x3fe8a0a38723e7fe              # double 0.76960922617513439
	.quad	0x3fdcf44704f3d814              # double 0.45240951045650601
	.quad	0x3fa873038dad15f0              # double 0.047752486271331551
	.quad	0x3fcc994815d396c0              # double 0.2234277826857376
	.quad	0x3fe4bf051b13223a              # double 0.64831786430392602
	.quad	0x3feeda3cba522f49              # double 0.96414028540446239
	.quad	0x3fe8b9a9a227316d              # double 0.77266389532591762
	.quad	0x3fd781eeb034e826              # double 0.36730544288332323
	.quad	0x3fdc35d2e1c7e144              # double 0.44078514145759962
	.quad	0x3fd4b5411cad92c2              # double 0.32356288719737958
	.quad	0x3fe85d66cd496e27              # double 0.76140155882916793
	.quad	0x3fef6d2bc879f29c              # double 0.98207654147661882
	.quad	0x3fa141fa1fef6370              # double 0.033706489942864404
	.quad	0x3fe54ecb4f59bfd8              # double 0.66586843012009478
	.quad	0x3fe11b9bd626ff2d              # double 0.53462020708682234
	.quad	0x3fec041bc9b2ca68              # double 0.87550153154581967
	.quad	0x3fe26c4b5da6c5ac              # double 0.57571953097629125
	.quad	0x3fe40c83e1594096              # double 0.62652772916227906
	.quad	0x3fe21988dae47dab              # double 0.56561701538514819
	.quad	0x3fefaf55d83bf369              # double 0.99015323861349913
	.quad	0x3fe4f65ed9316911              # double 0.65507452412137657
	.quad	0x3fe291985e7996d9              # double 0.58027285053386912
	.quad	0x3fdd6335201f2c10              # double 0.45918014656916828
	.quad	0x3fe2ab9111542e71              # double 0.58344319710290737
	.quad	0x3fe7a473a486fe0d              # double 0.73882467397919671
	.quad	0x3fd8a8357fd046ac              # double 0.38526666147036326
	.quad	0x3fc3a259aa72a970              # double 0.15339203665400758
	.quad	0x3fcf3788d5790120              # double 0.24388227866621381
	.quad	0x3f93c77c22977900              # double 0.019315662013348778
	.quad	0x3fe1cc07d34e2821              # double 0.55615607519689914
	.quad	0x3fdab795c7036b18              # double 0.41745514330766431
	.quad	0x3fda71aa54c4d220              # double 0.41318758276182344
	.quad	0x3feb87fd7ee25410              # double 0.86035036832856981
	.quad	0x3febbee7c1b9b899              # double 0.86705386960035746
	.quad	0x3fe587f1106261f3              # double 0.67284444046077707
	.quad	0x3fea18c79d2f0813              # double 0.81552487087197034
	.quad	0x3feac13aba70e006              # double 0.83608757414094792
	.quad	0x3fd89a5aaa9b7f1c              # double 0.38442103062514987
	.quad	0x3fc6369f22a5531c              # double 0.17354191962899612
	.quad	0x3fd9be1bed0afc9a              # double 0.4022283377525554
	.quad	0x3fea15de6aa70335              # double 0.81516953306718298
	.quad	0x3fee08479039c093              # double 0.93851068657933678
	.quad	0x3fe9a1151daf8f08              # double 0.80091338918688937
	.quad	0x3fdbaccc106408da              # double 0.43242169953022158
	.quad	0x3fee1aa3fae0ce18              # double 0.94075201987874645
	.quad	0x3fef9700f70c22d0              # double 0.98718307734915278
	.quad	0x3fda03ed5b6d67ee              # double 0.40648969582036798
	.quad	0x3fe14cc955664a8d              # double 0.54062334708790305
	.quad	0x3febe790b9944055              # double 0.87201725240630401
	.quad	0x3fa728336e37cb30              # double 0.045228583530749211
	.quad	0x3fef4b082e91b691              # double 0.97790917487664519
	.quad	0x3f847139c3a50600              # double 0.0099815857726097689
	.quad	0x3fe75b9340c3e2e7              # double 0.7299286141343061
	.quad	0x3fe3dd14b7daada8              # double 0.62073741826082074
	.quad	0x3fd562e608c1b956              # double 0.33416128974103765
	.quad	0x3fe3c008dc778883              # double 0.61719172534891731
	.quad	0x3fc09e494ed7a9d0              # double 0.12983051633575693
	.quad	0x3fdb66b6c85c952e              # double 0.42814416472022543
	.quad	0x3fbdb7be2797be28              # double 0.1160849424993492
	.quad	0x3feacc88e8dfea5d              # double 0.8374676273663898
	.quad	0x3fe5d01cbdf5c657              # double 0.68165433026860967
	.quad	0x3fd66498999d697c              # double 0.34988989831403905
	.quad	0x3f78ffc9e568ed80              # double 0.006103314072386623
	.quad	0x3fcac208b8014960              # double 0.20904644951458362
	.quad	0x3fbaf6a8e2c861b8              # double 0.10532622849166884
	.quad	0x3fe6607a165e3d28              # double 0.69927696579717225
	.quad	0x3fe307488bbff70a              # double 0.59463908476729554
	.quad	0x3fd4f22b52cb27b4              # double 0.3272808369189264
	.quad	0x3feaa427cd54c15a              # double 0.83253851035810134
	.quad	0x3fd0b9ea579340f6              # double 0.26134737541452979
	.quad	0x3fc019e0b318553c              # double 0.12578972573161618
	.quad	0x3fe95d5df874f9f6              # double 0.7926473477053253
	.quad	0x3fef3419d0a0abd2              # double 0.97510996577818276
	.quad	0x3feffc045622de1f              # double 0.99951378653981126
	.quad	0x3fe810716a6cb62d              # double 0.75200720583024394
	.quad	0x3fed65fde4189a55              # double 0.91870016622562878
	.quad	0x3fe1dfcfcdeac2f9              # double 0.55857076852961918
	.quad	0x3fdaec7d39be9f76              # double 0.4206841529762565
	.quad	0x3fe655b1b7d4918c              # double 0.69796071915020397
	.quad	0x3fa45b4a35321660              # double 0.03975898646698961
	.quad	0x3fd3334860a7a302              # double 0.30000504912327142
	.quad	0x3f2e273ec692b000              # double 2.3005143456111821E-4
	.quad	0x3f7917d3092faf80              # double 0.0061262363042081658
	.quad	0x3fe9e8a2c2cc32b9              # double 0.80964792295852483
	.quad	0x3fd7027c86ce3180              # double 0.35952675976366066
	.quad	0x3fd762f92e52a468              # double 0.36541585468018534
	.quad	0x3f92f5df180381e0              # double 0.018516050186805688
	.quad	0x3fc41f39e0d21fb8              # double 0.1572029445417209
	.quad	0x3fda0ff22750add6              # double 0.40722326125498165
	.quad	0x3fea5f5e2b55c301              # double 0.82414158309811125
	.quad	0x3fc50bd44eb98904              # double 0.16442350238782677
	.quad	0x3fef581312bce95d              # double 0.97950128230813116
	.quad	0x3fecabeb7681fcc2              # double 0.89598630090758768
	.quad	0x3fe038120eece472              # double 0.50684454836949855
	.quad	0x3fdda862b926101e              # double 0.46340244370390049
	.quad	0x3fd9a8b768a21116              # double 0.40092263429711872
	.quad	0x3fe1a9d70bb6b2c4              # double 0.55198242461991542
	.quad	0x3fe180942d28f4b9              # double 0.54694565601643952
	.quad	0x3fe9ae487b913de7              # double 0.8025247968125172
	.quad	0x3fe62663beab87c3              # double 0.6921862339042878
	.quad	0x3fe43437e8c27104              # double 0.63137431584212367
	.quad	0x3fed271309096354              # double 0.91101981892561889
	.quad	0x3feca6d3943c0a12              # double 0.89536456062370662
	.quad	0x3fed15bb7447f440              # double 0.90890286170145629
	.quad	0x3fb7efc7ac0d3f70              # double 0.093502501969167317
	.quad	0x3fd3153105666ad2              # double 0.2981684258208307
	.quad	0x3fe805190e7a2a22              # double 0.75062229945735148
	.quad	0x3fcf7fc7b69b0c20              # double 0.24608704010287941
	.quad	0x3fdf7df02b0cdc38              # double 0.49206165508389033
	.quad	0x3fe6648eef48c2b9              # double 0.69977518782805881
	.quad	0x3fef0f30060feb97              # double 0.97060395416279987
	.quad	0x3fdac941f9f24046              # double 0.41853379639451693
	.quad	0x3fd5ec3c9432828c              # double 0.34254374000924126
	.quad	0x3fdc9315b0db5df4              # double 0.44647733946973678
	.quad	0x3fd5ca8b0fbd4ad0              # double 0.34048725640347488
	.quad	0x3fe3931eccbb5ca6              # double 0.61170902239509384
	.quad	0x3fb6a7414db45c08              # double 0.088489610167343469
	.quad	0x3fd154476dc095e0              # double 0.27076898305889863
	.quad	0x3fce520a15f87c54              # double 0.23687864373002532
	.quad	0x3fae5d6d3f7e1560              # double 0.05930653953604792
	.quad	0x3fe470480e763a12              # double 0.63870623421263617
	.quad	0x3fc322f7d21cd3e0              # double 0.14950464019207654
	.quad	0x3fa6a96c369153b0              # double 0.044261342679113524
	.quad	0x3fed9184185cecea              # double 0.924013183196988
	.quad	0x3fe2fb8d2fc39002              # double 0.59320697144403334
	.quad	0x3fd9684a53a028ec              # double 0.39699037710728535
	.quad	0x3fe3581c94dcf073              # double 0.60450581621945643
	.quad	0x3fea312b67f29170              # double 0.81850214292766843
	.quad	0x3fdadcfe97716f5c              # double 0.41973843373647468
	.quad	0x3fb7cb0637039078              # double 0.092941654616483294
	.quad	0x3fdd9409ab57beb8              # double 0.46216050846758661
	.quad	0x3feab5aa4c7ec77b              # double 0.83467593136286611
	.quad	0x3fcf0861845d0e74              # double 0.24244326556264506
	.quad	0x3fc2232d5419378c              # double 0.14169851881382234
	.quad	0x3fc2d6ea292d4400              # double 0.14718367586695535
	.quad	0x3fe7571505210e8b              # double 0.72938014032156795
	.quad	0x3f7d33d5e31c7e00              # double 0.0071295123068746413
	.quad	0x3fcbe2ee5ed82f24              # double 0.21786288863256076
	.quad	0x3fbfd3b69fd76470              # double 0.12432423975350715
	.quad	0x3fe9b0c4fa65145c              # double 0.80282830147974548
	.quad	0x3f419a297e38a400              # double 5.3717638042372062E-4
	.quad	0x3feacd6a0fe47cc7              # double 0.83757498840341149
	.quad	0x3fad472d4a640820              # double 0.057183661776449179
	.quad	0x3fb751747af1e990              # double 0.091086654678212974
	.quad	0x3fd771b600fa999a              # double 0.366315365749324
	.quad	0x3fe121c4b12bc688              # double 0.535372110402208
	.quad	0x3fe9bce54e66e46f              # double 0.80430856049419031
	.quad	0x3feb1ae9f790f40c              # double 0.84703539231088731
	.quad	0x3fd584b6de6063b0              # double 0.33622523991067066
	.quad	0x3fe0348d72532ad9              # double 0.50641510323597594
	.quad	0x3fd5b703bc970122              # double 0.33929532448748223
	.quad	0x3fc177e55d262378              # double 0.13647143410005547
	.quad	0x3fe361af0a45d43a              # double 0.60567428594970996
	.quad	0x3fd40a179d927472              # double 0.31311598194026324
	.quad	0x3fc3684733e71ac0              # double 0.15161981615366038
	.quad	0x3fe4dfd068a86e7d              # double 0.65232105675700292
	.quad	0x3fe079f8f70a705a              # double 0.51488922357703903
	.quad	0x3fa093d043d51da0              # double 0.032377727775890763
	.quad	0x3fc3007c3039c514              # double 0.14845230440872881
	.quad	0x3feb4b7d8adb078e              # double 0.85296513672095542
	.quad	0x3fe2fe1d656fcc7e              # double 0.59351987659319128
	.quad	0x3fbe52f86b7add20              # double 0.11845352767965212
	.quad	0x3fb1f1479cc34f28              # double 0.070087886593054649
	.quad	0x3fdc587351082238              # double 0.44289858735331533
	.quad	0x3f9664d4df88fb60              # double 0.021869016784190065
	.quad	0x3fdc96bdcf3effbc              # double 0.44670052756191203
	.quad	0x3fc35f672a35af60              # double 0.15134896813412535
	.quad	0x3fd2a6d2fe0c0b5e              # double 0.29143214043886256
	.quad	0x3fd0253770666478              # double 0.25227151848373053
	.quad	0x3fd7b1127e5e7d00              # double 0.37018263188106459
	.quad	0x3fdd148ef6bcb85a              # double 0.45437978835514559
	.quad	0x3fe19c93c18aa6a3              # double 0.55036342431158791
	.quad	0x3fcef38760df067c              # double 0.24180690984762865
	.quad	0x3fc4f638336b1348              # double 0.16376402388245936
	.quad	0x3fd12753b315113a              # double 0.26802532661919864
	.quad	0x3fce4d5c389dcfac              # double 0.23673584713435269
	.quad	0x3fead9fb45024af5              # double 0.8391090724784066
	.quad	0x3fdd9024f079ac94              # double 0.46192286952891348
	.quad	0x3fe7238c89571335              # double 0.72308947395558809
	.quad	0x3fbf2c13d618fac0              # double 0.12176631905547719
	.quad	0x3fc9b419ab94054c              # double 0.20080872419206697
	.quad	0x3fe5250761df9c6e              # double 0.66077012172617144
	.quad	0x3fc66a78293c83c4              # double 0.17512418759818449
	.quad	0x3fe35546d49f7c32              # double 0.60415975120475296
	.quad	0x3fec06436484c33c              # double 0.87576455719508983
	.quad	0x3fe2490fe4d7a072              # double 0.57141871162185809
	.quad	0x3fe9bd3e13dfe25d              # double 0.80435088998553861
	.quad	0x3fbe8bf908172b98              # double 0.11932331511995498
	.quad	0x3fe70d8916e65e35              # double 0.72040228340751489
	.quad	0x3fe4ccada48c254f              # double 0.64998514307186805
	.quad	0x3fdee04c9c629304              # double 0.4824401404569445
	.quad	0x3feb146137d8703f              # double 0.84623776347462598
	.quad	0x3fe3953075c82aa9              # double 0.61196158413198021
	.quad	0x3fa461cf6b0b9860              # double 0.039808732811977832
	.quad	0x3fd76c9375162da2              # double 0.36600195345155317
	.quad	0x3fcf1533b67d7cfc              # double 0.24283453379300812
	.quad	0x3fe3e6dd2dd9e12f              # double 0.62193163829127751
	.quad	0x3fb3d5425a5413a0              # double 0.077472827008092882
	.quad	0x3fc7e507749a5d38              # double 0.18667691415314791
	.quad	0x3f9c73b59c3cef80              # double 0.027785146389973203
	.quad	0x3fe47c939417ea54              # double 0.64020708965774498
	.quad	0x3fdacef843eaa2e4              # double 0.41888243324733154
	.quad	0x3fe6d3c5f3297838              # double 0.71335122578216836
	.quad	0x3feb631f4dac771c              # double 0.85584988756793078
	.quad	0x3fe47cc3c9999e25              # double 0.64023007750524086
	.quad	0x3fdacb81fc50e93e              # double 0.41867112770309578
	.quad	0x3fc8819f6f9ae33c              # double 0.19145577382530543
	.quad	0x3fd1dd4c9a5f8b4c              # double 0.27913203311452572
	.quad	0x3feb403369af2505              # double 0.85158701554715377
	.quad	0x3fec363da3a182ca              # double 0.88162118872795614
	.quad	0x3fe7032a74fe1111              # double 0.71913645601356013
	.quad	0x3febc253a1921659              # double 0.86747151905792486
	.quad	0x3fe468e1a2531f41              # double 0.63780290321390265
	.quad	0x3fe548743e40ee0c              # double 0.6650944915667778
	.quad	0x3fe8ffd943b1b796              # double 0.7812315294411174
	.quad	0x3fe065abacf4708b              # double 0.51241096287005072
	.quad	0x3fcf1440e80f6300              # double 0.24280558901843818
	.quad	0x3fe27996b3171c15              # double 0.57734236696785735
	.quad	0x3f879fc6f72a5bc0              # double 0.011535219591037094
	.quad	0x3fe889872800d9f8              # double 0.76678808034085844
	.quad	0x3fd69fb6620bdfb2              # double 0.35349807333795547
	.quad	0x3fe59d60367e1203              # double 0.67546091692980814
	.quad	0x3fc0328410545540              # double 0.12654162213645215
	.quad	0x3fe8c88311880c51              # double 0.77447656082257244
	.quad	0x3fd3a2b4dea83c5c              # double 0.30680581802238804
	.quad	0x3fd4b3bd17edb6b0              # double 0.32347037636541653
	.quad	0x3fc1ad40b6a6d580              # double 0.13809975546397979
	.quad	0x3fb242cf93ae0190              # double 0.071331952623955752
	.quad	0x3fe69ea4588780ec              # double 0.7068654755676369
	.quad	0x3fd655b58c846588              # double 0.34898127291088388
	.quad	0x3fe0d9cfb77d42aa              # double 0.52658830487969976
	.quad	0x3fded9a85ac4408c              # double 0.48203476776053189
	.quad	0x3fe970e3504b65bb              # double 0.79503026659511222
	.quad	0x3fb85195993403c8              # double 0.09499487867652967
	.quad	0x3feea01951083691              # double 0.9570433218629707
	.quad	0x3fd33dd1045758ca              # double 0.30064797805733845
	.quad	0x3fc45df367e2d37c              # double 0.15911715099869272
	.quad	0x3fb11751d9545de8              # double 0.066762080725645156
	.quad	0x3fe209a8deafae46              # double 0.56367915624054699
	.quad	0x3fe5bcad200abaf7              # double 0.67928177126108735
	.quad	0x3fd5a6139ad101d0              # double 0.33826151007454275
	.quad	0x3fe75baef5e7ece2              # double 0.72994182613856773
	.quad	0x3fd951b9ba0ba60e              # double 0.39561312836176021
	.quad	0x3f810bb1e71ec9c0              # double 0.0083230875642116286
	.quad	0x3fe3c3ddf0bf031c              # double 0.61765954037409498
	.quad	0x3fec7ff839d0dd24              # double 0.89062129299319225
	.quad	0x3fa04c950e2e1d90              # double 0.031834276181196164
	.quad	0x3febab7d3f14efaf              # double 0.86468374558125116
	.quad	0x3fbd6f44123a1eb0              # double 0.11497903294559353
	.quad	0x3fef225beb903d05              # double 0.97294422157747872
	.quad	0x3fde654c51e8eaf2              # double 0.47493274687774012
	.quad	0x3fc7c9b019cef9c4              # double 0.18584252605610463
	.quad	0x3fd82616a3641184              # double 0.37732473331586669
	.quad	0x3fcb9059836a74f8              # double 0.21534270207204265
	.quad	0x3fe1549e62226948              # double 0.54157942931059555
	.quad	0x3fe9f1a9a2acb762              # double 0.81074983379742727
	.quad	0x3fe03400612ab784              # double 0.50634783723738552
	.quad	0x3faa1798b8903ff0              # double 0.05096127751323809
	.quad	0x3fe5ab1b96c436cc              # double 0.67713717886518898
	.quad	0x3fe8375c846de8e3              # double 0.7567579828749128
	.quad	0x3fdf4fe812141644              # double 0.4892521072909839
	.quad	0x3fddc9e0409468ba              # double 0.46544653231252264
	.quad	0x3fe295fc9a83a3fb              # double 0.58080892733153122
	.quad	0x3fc9e076dd6804e4              # double 0.20216260729652114
	.quad	0x3fe563f480eac5f4              # double 0.66845154933088091
	.quad	0x3fd1f673df8128b4              # double 0.28066727472890851
	.quad	0x3fcde86a33835fc4              # double 0.2336552382973861
	.quad	0x3fba8f433eaf9518              # double 0.10374851494232862
	.quad	0x3fe9c4ade66dbb7e              # double 0.80525870328516169
	.quad	0x3fe9cba24d8c6915              # double 0.80610766550242607
	.quad	0x3fea1636f1a521db              # double 0.81521174618051917
	.quad	0x3fefc94737c4f1fa              # double 0.99332009212918071
	.quad	0x3fe5f4ef400c9d84              # double 0.68614923963188845
	.quad	0x3fd5b1d2d4f84974              # double 0.33897848890150972
	.quad	0x3fe34880d1849fb5              # double 0.60260048791405174
	.quad	0x3fe82c561ed39a52              # double 0.75541215916457305
	.quad	0x3fedab5bc96db8fa              # double 0.92716779080890821
	.quad	0x3fd0faf21e291b5c              # double 0.26531651444786575
	.quad	0x3fb8e546a700d5c0              # double 0.09724847390392366
	.quad	0x3feb9018f9f0bac1              # double 0.86134003464197673
	.quad	0x3fd93521d5ddde78              # double 0.39386793027322353
	.quad	0x3feaaf44ff9e3125              # double 0.83389520573976894
	.quad	0x3fe60fad611e76fd              # double 0.68941372841410919
	.quad	0x3febdcf0bf804958              # double 0.87072026636659938
	.quad	0x3feca90db734cb90              # double 0.89563642294375434
	.quad	0x3fe159bf00dec6b4              # double 0.54220533533062687
	.quad	0x3fb0827c734240d0              # double 0.064491060389858079
	.quad	0x3fd2a199799404b0              # double 0.29111325142737154
	.quad	0x3fed4534086421fa              # double 0.91469766272444919
	.quad	0x3fc3229a5617b340              # double 0.14949349597682193
	.quad	0x3fea6b37f90f269a              # double 0.82558821339007982
	.quad	0x3fc9be0b97335154              # double 0.20111222155413577
	.quad	0x3fd473744e76d894              # double 0.31954677259944586
	.quad	0x3fd559e7a555a64c              # double 0.33361235757783869
	.quad	0x3fe7eeb74dc63953              # double 0.74789014044089652
	.quad	0x3fea2e52f6677d8c              # double 0.81815479398567125
	.quad	0x3fdc8f0191ff405a              # double 0.44622840173270151
	.quad	0x3fd15bd850a95b9c              # double 0.27123077275376217
	.quad	0x3fbc0f988c9d0228              # double 0.1096129744810318
	.quad	0x3fd95dc3cbc92fc0              # double 0.39634795094456976
	.quad	0x3fe22764433191db              # double 0.5673085510612127
	.quad	0x3fe71e16b590aee5              # double 0.72242293798396118
	.quad	0x3fc898d44964bd8c              # double 0.19216397842090449
	.quad	0x3fca595acd31be34              # double 0.20585188884023042
	.quad	0x3fc10e6f19c01b24              # double 0.13325299031586113
	.quad	0x3fe7ac00dc71a762              # double 0.73974650435887335
	.quad	0x3feaf81bd248c5ad              # double 0.84278670378824005
	.quad	0x3fe49864470d7d90              # double 0.64360250356178206
	.quad	0x3fe1d9334ef778bd              # double 0.55776372359448312
	.quad	0x3fe308c80d44af5a              # double 0.59482195464577647
	.quad	0x3fd43ce39b1ed07e              # double 0.31621637485955734
	.quad	0x3fe5125140b47f94              # double 0.65848600995740236
	.quad	0x3fbbc260a610ab28              # double 0.10843471578907027
	.quad	0x3fa52249bfee1680              # double 0.041277222327193108
	.quad	0x3f968e253f2c49c0              # double 0.022026617031835505
	.quad	0x3fd8a0a58218bbfc              # double 0.38480508522746937
	.quad	0x3f8bc15a2d023340              # double 0.013552383898309039
	.quad	0x3fe29d2a4dfa41fc              # double 0.58168521146768581
	.quad	0x3fe91a5aff8f6e1e              # double 0.78446721948734299
	.quad	0x3fd9c5b0efe64e7a              # double 0.40269111087511755
	.quad	0x3fe2c47d5e739531              # double 0.58648556182439482
	.quad	0x3fde6a8cf3b4403c              # double 0.47525333213070886
	.quad	0x3fe760dd6bfb9a2c              # double 0.73057433214564105
	.quad	0x3fc7077df7ca185c              # double 0.17991613959401576
	.quad	0x3fe8e6d6ff801d9b              # double 0.77817869093353254
	.quad	0x3fef86661017f6b8              # double 0.9851560892418183
	.quad	0x3fdbbd9da39f0824              # double 0.43344822863230292
	.quad	0x3fe700af820243a5              # double 0.71883368866302944
	.quad	0x3fb662ce25486108              # double 0.087445148565510888
	.quad	0x3fee54da2b8c9ef9              # double 0.94785793786738204
	.quad	0x3fbaccb999151140              # double 0.1046863554702826
	.quad	0x3fdeeac59d3c6692              # double 0.48307934145996356
	.quad	0x3fef18e069b548c0              # double 0.97178669592019417
	.quad	0x3fec221e52ddd42e              # double 0.87916485009066547
	.quad	0x3fe6ca784be7338d              # double 0.71221556496458194
	.quad	0x3fe52f1a02e973be              # double 0.66199970787749129
	.quad	0x3fcb94fe3f2b4f34              # double 0.21548441013748632
	.quad	0x3fe4e4a71ab7b108              # double 0.65291171282072558
	.quad	0x3fb644d89cdf35c8              # double 0.086988008784110282
	.quad	0x3fe2328cc280611a              # double 0.56867063511438976
	.quad	0x3fde01de2eedfa3a              # double 0.46886400778740589
	.quad	0x3fe239980e23aecb              # double 0.5695305133972054
	.quad	0x3fc8c26901640f18              # double 0.19343292777932031
	.quad	0x3fde37d3871add94              # double 0.47215736574022427
	.quad	0x3fe6f1df3aa16d36              # double 0.71702538920673109
	.quad	0x3fc9ed5c3615ca50              # double 0.20255615845560948
	.quad	0x3fbbb761cf323318              # double 0.10826693829058021
	.quad	0x3fd0d7faec43a9a2              # double 0.26318238327680821
	.quad	0x3fedffec13de0fec              # double 0.93749050026280889
	.quad	0x3fce3f2387012ef0              # double 0.23630184261343556
	.quad	0x3fe4d1670dac8d52              # double 0.65056183500966314
	.quad	0x3fe32c93f4e4a698              # double 0.59919164496132549
	.quad	0x3feac5d20640f51e              # double 0.83664799901422149
	.quad	0x3faa885ab152d2b0              # double 0.051821550508440395
	.quad	0x3fd3f04edbd9fd58              # double 0.3115422389018554
	.quad	0x3fd34bdd7e04de9a              # double 0.30150544458909112
	.quad	0x3feabae2126a0267              # double 0.83531287762168638
	.quad	0x3fbedfa03ecd3558              # double 0.1205997613262374
	.quad	0x3fb503bfbab28018              # double 0.082088454323184457
	.quad	0x3fe9bbb09b445b47              # double 0.80416136098470126
	.quad	0x3fe14dce07213193              # double 0.54074765579712147
	.quad	0x3fb3a46f9d575df8              # double 0.076727844155691005
	.quad	0x3f9c3af87c993ca0              # double 0.027568705181974296
	.quad	0x3fe2563b6ba39989              # double 0.57302638076070977
	.quad	0x3fdf2fa651acd012              # double 0.48728330589369862
	.quad	0x3f9819752e3689a0              # double 0.023534613557453121
	.quad	0x3fe6edd4b6d3d83f              # double 0.71653209408282936
	.quad	0x3fed4c3fcceb8d4f              # double 0.91555776618444351
	.quad	0x3fc7cb08dd97fcd8              # double 0.18588362522129986
	.quad	0x3fe0a938b3bf12c5              # double 0.52065692049708245
	.quad	0x3fe0d3a338cc733e              # double 0.5258346661899862
	.quad	0x3fe85629da89ea22              # double 0.76051800425858951
	.quad	0x3fe957ed1cd7bb98              # double 0.79198318131772094
	.quad	0x3fc0d4fd645b49c8              # double 0.13149993324493736
	.quad	0x3fd864f72eb1ebbc              # double 0.38116244850214875
	.quad	0x3fec2cb00721fed7              # double 0.88045503037570938
	.quad	0x3fe6a8ed700da35b              # double 0.70812103162198115
	.quad	0x3fd04ad63e70ab4a              # double 0.25456768129031515
	.quad	0x3fea5fe2731deffd              # double 0.82420465930726972
	.quad	0x3fdc1721d25486aa              # double 0.43891187229210493
	.quad	0x3fe042ca4974cb4b              # double 0.50815309855384194
	.quad	0x3fd79428d914d666              # double 0.36841794204096912
	.quad	0x3fbe08c528d3c058              # double 0.11732132193333322
	.quad	0x3fe29d312badf775              # double 0.58168848544276719
	.quad	0x3fdc64c8c40bb462              # double 0.4436513819226261
	.quad	0x3fcc161feaa5ddf8              # double 0.21942519147317774
	.quad	0x3fe6dc5e642b37af              # double 0.71440047802183482
	.quad	0x3fe703b10f932198              # double 0.71920064012469975
	.quad	0x3fddee17568a9498              # double 0.46765693141271347
	.quad	0x3fce126f2e1e3b84              # double 0.23493757011280192
	.quad	0x3fef5e40b409cefe              # double 0.98025546230061855
	.quad	0x3fe66e08a639f09f              # double 0.70093185869292884
	.quad	0x3fda3dc072872eee              # double 0.41001902756100506
	.quad	0x3fd68fa1bcb8b3aa              # double 0.35251658849557066
	.quad	0x3fdf8845368d2604              # double 0.49269228293687228
	.quad	0x3fe540e3c67f389d              # double 0.66417111176430732
	.quad	0x3fe6dd77acbcf390              # double 0.71453460443409433
	.quad	0x3fe5e7cace919f7d              # double 0.68454494805790456
	.quad	0x3fda628efa15d3b2              # double 0.412265533660782
	.quad	0x3fdd0ade60fc131c              # double 0.45378837081106993
	.quad	0x3fc2b878e5a327a8              # double 0.14625464642295793
	.quad	0x3fee6b96013c06a4              # double 0.95063305131062181
	.quad	0x3fa63bfd905555a0              # double 0.043426441067519805
	.quad	0x3fef20011a2b6757              # double 0.97265677558173535
	.quad	0x3fc569e6fe9e5584              # double 0.16729438240569661
	.quad	0x3fed1db7c3f0fa43              # double 0.90987766523159797
	.quad	0x3fd5c709779676ae              # double 0.34027325323573165
	.quad	0x3fd15a270e51ad78              # double 0.27112747572274243
	.quad	0x3feed53f3a746374              # double 0.96353112618372316
	.quad	0x3fed9efb83d78f2d              # double 0.92565704107662372
	.quad	0x3fea84f5286b454c              # double 0.82873018164006273
	.quad	0x3fe655eb79bbc80a              # double 0.69798826004103032
	.quad	0x3fabc290e7e29840              # double 0.054218796068469022
	.quad	0x3fb4c319251d7ee8              # double 0.081101962624866908
	.quad	0x3fc080ad5a1f207c              # double 0.12892691517322763
	.quad	0x3fe61827402aa20e              # double 0.69044840366865556
	.quad	0x3fba766321efe8a0              # double 0.10336894587081469
	.quad	0x3fecefa5d1af91f2              # double 0.9042538733888803
	.quad	0x3fcfd954e29ced20              # double 0.24881993355834542
	.quad	0x3fdc65e6e5715c7a              # double 0.44371960073971872
	.quad	0x3fa017ef56cdd720              # double 0.031432608934592432
	.quad	0x3fd375f2be88e558              # double 0.30407398802670604
	.quad	0x3fd6f1c62c7e553a              # double 0.35850672097270186
	.quad	0x3feeeb512b49fa43              # double 0.96622522787931364
	.quad	0x3fe57744a377ae9f              # double 0.67080909659621912
	.quad	0x3fee48a36a07809f              # double 0.94636698445176026
	.quad	0x3fc530da3402ffe4              # double 0.1655533555949652
	.quad	0x3fe6607e1e15204d              # double 0.69927888751500122
	.quad	0x3fdd08a17b945fe8              # double 0.4536517817336958
	.quad	0x3feb56429be9c5e5              # double 0.85427980853836216
	.quad	0x3fe7f2c16f3546ee              # double 0.74838325233778646
	.quad	0x3fd516952b71f0f8              # double 0.32950333826717282
	.quad	0x3fba9cb8589378a0              # double 0.10395385897160958
	.quad	0x3fe85792534e5657              # double 0.76068989058212366
	.quad	0x3fe69b9c6acb6dc7              # double 0.70649548395470496
	.quad	0x3fc12202627d3eb4              # double 0.13385038193745447
	.quad	0x3fee2facefad66be              # double 0.94331976711256238
	.quad	0x3fe21046fb35efc4              # double 0.56448697151744698
	.quad	0x3fec43da7d8fd742              # double 0.88328289531521187
	.quad	0x3f96df5e8245dc60              # double 0.022336460782267031
	.quad	0x3fe54025c8644690              # double 0.66408051623348463
	.quad	0x3fb00e138d51ee20              # double 0.062714788438761548
	.quad	0x3fea450c1d99801f              # double 0.8209286287419707
	.quad	0x3fbf9d0d1f602640              # double 0.12349016204839192
	.quad	0x3fbca618dc3d5030              # double 0.11190944077435527
	.quad	0x3fa1decb968fea40              # double 0.034902917985125459
	.quad	0x3f9e4b0377065960              # double 0.029583028926560728
	.quad	0x3fd4a237898dfe00              # double 0.32240093644210788
	.quad	0x3fe511d4759cf23d              # double 0.65842650386145574
	.quad	0x3f85a9ebb4f38d40              # double 0.010578004321763701
	.quad	0x3fe6ff16a94d2c0b              # double 0.7186387354535112
	.quad	0x3fd444e41d50d440              # double 0.31670477736344438
	.quad	0x3fefa139c7ca2914              # double 0.98843087216781322
	.quad	0x3fe50cb57f6eeb79              # double 0.65780138863861659
	.quad	0x3fe410f1bb7b1fc9              # double 0.62706839196561603
	.quad	0x3fe5251049ce47e6              # double 0.66077436843101789
	.quad	0x3feddbf1391ae04a              # double 0.93309842255895004
	.quad	0x3fac66f3769d37c0              # double 0.055472954015030052
	.quad	0x3fd62d63d91a322a              # double 0.34652038766288007
	.quad	0x3fd866b8321dfecc              # double 0.38126950163130569
	.quad	0x3fedf9fae8beaea5              # double 0.93676515062312105
	.quad	0x3fe064fe4b0c530c              # double 0.51232828767624161
	.quad	0x3fd3134463472cbe              # double 0.29805097289199611
	.quad	0x3fc7d9c89292a91c              # double 0.18633372456435715
	.quad	0x3fd83ef6f541d470              # double 0.37884305907147731
	.quad	0x3fb9583be2b3ac50              # double 0.099002592894678942
	.quad	0x3fd6e7cd2119dcde              # double 0.35789802773019896
	.quad	0x3fc463758d10c6f0              # double 0.15928525341001132
	.quad	0x3feaee92c718d2bc              # double 0.84162272344709476
	.quad	0x3fd7ae91c1363866              # double 0.37002986782397895
	.quad	0x3fceb96e5d2ab9f8              # double 0.24003390835919425
	.quad	0x3fe5aeeaf6e0b859              # double 0.67760227411578022
	.quad	0x3fcd160b0cee5528              # double 0.22723520404239506
	.quad	0x3fe9c4df060dc17c              # double 0.80528212721223679
	.quad	0x3fdc2f1dd797d954              # double 0.44037576726932071
	.quad	0x3fe73f2aad0f1c80              # double 0.72646077919570473
	.quad	0x3fe5e36323412bcb              # double 0.68400723348292425
	.quad	0x3fda8e5375d7db1a              # double 0.41493689067958572
	.quad	0x3fe0ccf5247e061d              # double 0.52501923682592955
	.quad	0x3fd9d148341f4a1e              # double 0.4033985623365498
	.quad	0x3febeeb4d53053b7              # double 0.87288896215851863
	.quad	0x3fd4b72c057c473e              # double 0.32367992911996513
	.quad	0x3fc4812168196270              # double 0.16019074995962823
	.quad	0x3febb62f98097080              # double 0.86598949141217929
	.quad	0x3fe5701fe9924abf              # double 0.66993709201263829
	.quad	0x3fea8f2c0bed4109              # double 0.82997705773780794
	.quad	0x3fe620b41d9b1842              # double 0.69149213583364877
	.quad	0x3fb744e03625cbf0              # double 0.09089471170391028
	.quad	0x3fe56997c50d9bfa              # double 0.66913975226350364
	.quad	0x3fc3c08904300a2c              # double 0.15431320862269737
	.quad	0x3fb2724e2667f7c8              # double 0.072056660057540189
	.quad	0x3fe3703093769eed              # double 0.60744503785551063
	.quad	0x3fe054baf7dc1c2e              # double 0.51034305963628923
	.quad	0x3feac73735d82d3d              # double 0.83681831852428668
	.quad	0x3fd4ee76348404ee              # double 0.32705454948889112
	.quad	0x3fe13c221912422c              # double 0.53859047791235559
	.quad	0x3fe2f79ea1bbdf49              # double 0.59272700871131534
	.quad	0x3fd63e2231513d64              # double 0.34754233184954431
	.quad	0x3fcae47a74664020              # double 0.21009760554852708
	.quad	0x3fdf7b60264bd814              # double 0.49190524806852065
	.quad	0x3fdfabd99c360fc8              # double 0.4948638940334118
	.quad	0x3fd103a0de901e1e              # double 0.26584645971931475
	.quad	0x3fd794404ca847f2              # double 0.36842353330678101
	.quad	0x3fd62866e5573e10              # double 0.34621593853532406
	.quad	0x3fe28704b6db5a2b              # double 0.57898174013354742
	.quad	0x3fc221f80c5c02b4              # double 0.14166164973723527
	.quad	0x3fca21f7200c19c8              # double 0.2041615396958163
	.quad	0x3fc1aac98f57c7dc              # double 0.13802451609768596
	.quad	0x3fecda1ad2db2659              # double 0.90162411864111924
	.quad	0x3fe951a0ffb064f0              # double 0.79121446551576291
	.quad	0x3fecdeecff82e86f              # double 0.90221261887132964
	.quad	0x3fe3e76a38b53112              # double 0.62199889255274088
	.quad	0x3fc0bef27e03dd04              # double 0.13082724717217087
	.quad	0x3feb69a0dff2cb2e              # double 0.85664409389423724
	.quad	0x3fdcff9bd310c95c              # double 0.45310111629364314
	.quad	0x3fb4cd298d322410              # double 0.081255528422971901
	.quad	0x3fe8ce2f41a1053b              # double 0.77516901796494808
	.quad	0x3fecb2e38450e6ab              # double 0.89683700411770439
	.quad	0x3fd8304551191b8c              # double 0.37794621391042749
	.quad	0x3fef722e25c721f8              # double 0.98268802050102888
	.quad	0x3fa125fdc2204f30              # double 0.033492975184485352
	.quad	0x3fde11b38fd246cc              # double 0.46983040852601898
	.quad	0x3fc2dc5f3a5a24f8              # double 0.14735021924233371
	.quad	0x3fd596693f39ca12              # double 0.33730536627186425
	.quad	0x3fca0d6d3186ded4              # double 0.20353474539091698
	.quad	0x3fe6b98adc6311a0              # double 0.7101492218430856
	.quad	0x3fdf69ada5fbb720              # double 0.49082509240439443
	.quad	0x3feed3a9d2d19824              # double 0.9633378140977169
	.quad	0x3fca8c814835e078              # double 0.20741287256146612
	.quad	0x3fe69a43eb9df927              # double 0.70633121508561636
	.quad	0x3fe5a6cb476c44d4              # double 0.67661060285368047
	.quad	0x3fc8bcbcab37ba9c              # double 0.19325979576338603
	.quad	0x3fce88fe6eb442c0              # double 0.23855572133517988
	.quad	0x3fdc839790616ad6              # double 0.44553174113904725
	.quad	0x3fa8bcd455ffa670              # double 0.048315654275779774
	.quad	0x3fe8e51dbdc8698b              # double 0.77796828333821233
	.quad	0x3fca6d37f337e018              # double 0.20645808578387981
	.quad	0x3fec118d30997bed              # double 0.8771425198755175
	.quad	0x3fe7be07746b5c17              # double 0.74194691408308955
	.quad	0x3fb0b5b3ac775110              # double 0.065272550207115865
	.quad	0x3febc909a4402201              # double 0.86829073028735604
	.quad	0x3fe565e36a3c7596              # double 0.66868754147769738
	.quad	0x3feb314608d92723              # double 0.84976484039473055
	.quad	0x3fe373db76631ebb              # double 0.60789273378846731
	.quad	0x3f908ca31db17340              # double 0.016161488234831767
	.quad	0x3fe896816ff7097a              # double 0.76837226741945064
	.quad	0x3fd246b4560a3a8c              # double 0.28556545641269149
	.quad	0x3fe1b916fb67271b              # double 0.553843966504448
	.quad	0x3fa12fe702cef820              # double 0.033568591206389664
	.quad	0x3fdb807bb89fa11c              # double 0.42971699742931135
	.quad	0x3fd343c0a585d2b0              # double 0.30101028599100754
	.quad	0x3fd4d7003323c57c              # double 0.32562260622133699
	.quad	0x3fb4d7f31f196088              # double 0.081420130817948189
	.quad	0x3f8a2752e77c0e00              # double 0.012770316781376856
	.quad	0x3fd33aec43170244              # double 0.30047136832948618
	.quad	0x3fdf9cbd2e640938              # double 0.49394158869121751
	.quad	0x3fda279f9fca9b88              # double 0.40866842846519846
	.quad	0x3fda12515f348eb0              # double 0.40736803338425442
	.quad	0x3fdbbd69e194a446              # double 0.43343588857039028
	.quad	0x3f9b9e1b53569ca0              # double 0.026970316850250087
	.quad	0x3fe465c83da4f855              # double 0.6374245838158098
	.quad	0x3fe20ecc15034249              # double 0.56430629829453338
	.quad	0x3fee8c3657c67f17              # double 0.95461575645092267
	.quad	0x3fddbb30323e6d0e              # double 0.46455006510378005
	.quad	0x3fc13bcf6a75e370              # double 0.13463776300684627
	.quad	0x3fd9e604f11e6968              # double 0.40466426417119417
	.quad	0x3fed8ace70222016              # double 0.92319414044414105
	.quad	0x3feba226790c5bf4              # double 0.86354373590699973
	.quad	0x3fe2b88b96651c24              # double 0.58502749799743414
	.quad	0x3fdb747955bf836a              # double 0.42898400663221159
	.quad	0x3fe1314d522e774d              # double 0.53726831484866866
	.quad	0x3fee3087eb325442              # double 0.94342418610416012
	.quad	0x3fc797f90009a07c              # double 0.18432533742748436
	.quad	0x3fd246bec870229c              # double 0.28556794713998968
	.quad	0x3fe3cb244ffa9bb1              # double 0.61854758854757652
	.quad	0x3fe6972cd3fe48ea              # double 0.705953992890753
	.quad	0x3fe3b82af6971ab6              # double 0.61623142397078001
	.quad	0x3fe109e02847197c              # double 0.53245551935906077
	.quad	0x3fbf9fb7c16d8588              # double 0.12353085014685494
	.quad	0x3fa27c949f79eef0              # double 0.036106724231073417
	.quad	0x3facf5612b3709b0              # double 0.056559597516315008
	.quad	0x3fd008c1685b4968              # double 0.2505343932254136
	.quad	0x3fdaa8ae825444e2              # double 0.41654551246126748
	.quad	0x3fea84819ee25be1              # double 0.82867508918831956
	.quad	0x3fe6f10ccc6f9b36              # double 0.71692504815005154
	.quad	0x3fec47e027b5485c              # double 0.88377387767310322
	.quad	0x3fe8b1dd4d4f250e              # double 0.77171197032399319
	.quad	0x3fd201e1516dcb96              # double 0.28136475517310922
	.quad	0x3fdc837dc188ab52              # double 0.44552558803359432
	.quad	0x3fe2e74e982a0906              # double 0.59073571891374921
	.quad	0x3fdfcbdf6dc55746              # double 0.49681840629397234
	.quad	0x3fe39296b1a4bf17              # double 0.61164412208561003
	.quad	0x3feb897d432130b9              # double 0.86053336249599177
	.quad	0x3fe7034f038819be              # double 0.71915388765119537
	.quad	0x3fd301b982beed44              # double 0.29698026435990621
	.quad	0x3fcf6614a3c0da4c              # double 0.2453027534081279
	.quad	0x3fd9cf370b9a3a12              # double 0.40327240117122287
	.quad	0x3fc9078a84ecd3e4              # double 0.19554263582691001
	.quad	0x3fbf99591034e370              # double 0.12343365331333955
	.quad	0x3fe68167bd652d9c              # double 0.70329653731589614
	.quad	0x3fe584a57c1aab19              # double 0.67244219054313981
	.quad	0x3fc5e9074c909d28              # double 0.17117396582146083
	.quad	0x3fe92eb85ebb6e45              # double 0.78695314886449153
	.quad	0x3fe6add1e3b1d84f              # double 0.70871824714300569
	.quad	0x3fd4812a9d39bf58              # double 0.32038369516430043
	.quad	0x3fe1e84d6de0392b              # double 0.55960723362094222
	.quad	0x3fe94de0b66d761a              # double 0.79075656538379069
	.quad	0x3fd50b2567a4ce42              # double 0.32880530473196157
	.quad	0x3fcb43b7ca4d386c              # double 0.21300408723840591
	.quad	0x3fe13602cd57aa6f              # double 0.53784313302942433
	.quad	0x3fde90ccf7a6b0ac              # double 0.47758793053322779
	.quad	0x3fef8871d4254e73              # double 0.98540584025108868
	.quad	0x3fd6ccd489d0eb66              # double 0.35625184496500706
	.quad	0x3fdff2bac67dabc0              # double 0.49919003852727073
	.quad	0x3fead3b74602270a              # double 0.83834422753827309
	.quad	0x3fe43bb1a0203ddc              # double 0.63228684687231462
	.quad	0x3fe9bcf1e84ed487              # double 0.80431456921236666
	.quad	0x3fedc9d13380a792              # double 0.93088588770955227
	.quad	0x3fda4ae7d7c937b6              # double 0.41082187722065144
	.quad	0x3f9025f776d5d040              # double 0.015769831302762549
	.quad	0x3fe99fd1eda7fa2b              # double 0.80075928132265994
	.quad	0x3fe57eccca58384a              # double 0.67172851105147768
	.quad	0x3fe61ebeb0a29a5f              # double 0.69125303744369748
	.quad	0x3fed0e1eddbf5919              # double 0.90797370252656429
	.quad	0x3fe7e560e071ebec              # double 0.74675029599108944
	.quad	0x3fe1c47ef87757d8              # double 0.55523632553626623
	.quad	0x3feed62d790172ff              # double 0.96364472993772654
	.quad	0x3fdbfec8050d17f6              # double 0.43742561810756742
	.quad	0x3fd1337afc01b99a              # double 0.26876711473496473
	.quad	0x3fe4cd7a6a5771a2              # double 0.65008278627242455
	.quad	0x3fc5a1ea148bb670              # double 0.16900373461924145
	.quad	0x3fe29e56f3bef177              # double 0.58182857138267152
	.quad	0x3fe148d76beef83d              # double 0.54014178353077791
	.quad	0x3fcb28df9728cc7c              # double 0.21218485718563673
	.quad	0x3fcfb1a12bfb49a4              # double 0.24760832450426762
	.quad	0x3fec101b4ced301d              # double 0.87696614289007224
	.quad	0x3fd7c3b8d6d7bb28              # double 0.37132092457516075
	.quad	0x3fea3419beafde1c              # double 0.81885993236113874
	.quad	0x3fd004249812a918              # double 0.25025286532276558
	.quad	0x3fbe248548403218              # double 0.1177447606461971
	.quad	0x3fe36c340fb5351e              # double 0.60695841854036181
	.quad	0x3fdaffc17bd4bfb2              # double 0.42186009495616894
	.quad	0x3fd4efecbb2993d2              # double 0.32714384343699721
	.quad	0x3fd81f2254c0eb0a              # double 0.37690027500836776
	.quad	0x3fe41fb27ccdf762              # double 0.62886928916826101
	.quad	0x3fe0a2ff71b4b6e9              # double 0.51989719589411465
	.quad	0x3feed3a1197d0b22              # double 0.96333365419591055
	.quad	0x3fe6e56e9d0564e3              # double 0.71550684612443793
	.quad	0x3fcdb434d0f30e74              # double 0.23206196024522152
	.quad	0x3fe7263823852614              # double 0.72341544091722421
	.quad	0x3fedc27081dc5dd3              # double 0.92998528827132032
	.quad	0x3fe7471877241e64              # double 0.72742865819686786
	.quad	0x3fe513122db6f02c              # double 0.65857800415642975
	.quad	0x3fc42f3595aa83b4              # double 0.15769071395791701
	.quad	0x3fed5863a7522615              # double 0.91703970603811291
	.quad	0x3fd7755e68adeb0e              # double 0.36653862211794397
	.quad	0x3fec407b742bae16              # double 0.88287136735511029
	.quad	0x3fe3e85513d593ac              # double 0.62211088060268116
	.quad	0x3fe5cd9f8c16b26e              # double 0.68135049210611753
	.quad	0x3fec3c3d7a48c85e              # double 0.88235353358892232
	.quad	0x3fe993ab1caead3b              # double 0.79927592851655704
	.quad	0x3fd60f36e0efa6d2              # double 0.34467861143512579
	.quad	0x3fe3fc544bfcc8fc              # double 0.62455191460892889
	.quad	0x3fe63b23c8994fcd              # double 0.69471921138255655
	.quad	0x3fea5216643bc416              # double 0.82252044274184999
	.quad	0x3fef846e10e561a7              # double 0.98491576480869447
	.quad	0x3fa42c95e5ab2060              # double 0.039402660642338772
	.quad	0x3fcae4cdc85f1680              # double 0.21010753902207924
	.quad	0x3fee0ab7cc66016e              # double 0.93880834504674993
	.quad	0x3fe199b08e291d4c              # double 0.55001094594710187
	.quad	0x3fe5fe06f187fbd5              # double 0.68725917028484196
	.quad	0x3fd6114fa9f935b0              # double 0.3448065910241338
	.quad	0x3fcbacb1ac2f10e8              # double 0.21620770366110453
	.quad	0x3fb1c2d60577b700              # double 0.069379211745140168
	.quad	0x3fe37617efe1b3f7              # double 0.60816571094403471
	.quad	0x3fe7efb3a6f1403c              # double 0.74801046949324457
	.quad	0x3fe118178902289a              # double 0.53419090995273
	.quad	0x3fa8d9e8b81afcd0              # double 0.048537514184766928
	.quad	0x3fe862deccc9b8a1              # double 0.76206912992144649
	.quad	0x3fb52fdf09b992e0              # double 0.08276170718597653
	.quad	0x3fb0a4af015e3818              # double 0.065012872537608124
	.quad	0x3fe9cf0de8a1689c              # double 0.80652518687863361
	.quad	0x3fe0eed8478c32d2              # double 0.52915586446905594
	.quad	0x3fe03efc172f444d              # double 0.50768856552361685
	.quad	0x3fe1ea60dfb53335              # double 0.5598606461804595
	.quad	0x3fdae4fcc6b9b9fc              # double 0.42022628218447244
	.quad	0x3fef9b932dbe18ca              # double 0.98774107870192407
	.quad	0x3fdf5a430b1eebda              # double 0.48988414846433914
	.quad	0x3fe8be0a2bbc2424              # double 0.77319820920923065
	.quad	0x3fd5ffa05bbd0316              # double 0.34372719725438239
	.quad	0x3fb4e966f960e110              # double 0.081686435588270933
	.quad	0x3fe423b6328ead13              # double 0.62935933947065548
	.quad	0x3fd18b454d281830              # double 0.27412540945840913
	.quad	0x3fc82bef8066bde8              # double 0.1888408066711087
	.quad	0x3fe4e26fb464c361              # double 0.65264115555883617
	.quad	0x3fefc20ec53dee92              # double 0.99243868373692323
	.quad	0x3fe2da1f99f95dad              # double 0.589126396875988
	.quad	0x3fdf56e896350724              # double 0.48967947643915211
	.quad	0x3fd00e63b804b834              # double 0.25087826700735438
	.quad	0x3fefe52e2106b05f              # double 0.99672609758773578
	.quad	0x3fe91a29f752b9af              # double 0.78444383912374416
	.quad	0x3fe9bf155028e100              # double 0.80457559257686739
	.quad	0x3fe6c88490e6e0cf              # double 0.711977274905644
	.quad	0x3fe2fdaaa17cf546              # double 0.59346515217445339
	.quad	0x3feac817fae49fa3              # double 0.83692549707938146
	.quad	0x3febd266a53804ef              # double 0.86943371075918019
	.quad	0x3fd8609a83b7eee8              # double 0.3808962141335841
	.quad	0x3fe5a2ab149da7d2              # double 0.6761069681790508
	.quad	0x3fe3194cb202d552              # double 0.59683832900797484
	.quad	0x3feacb3413ac56ac              # double 0.83730510561391247
	.quad	0x3fe52d14ebe4b583              # double 0.66175314019135134
	.quad	0x3fe5435a2ea2f3f7              # double 0.66447171314905418
	.quad	0x3fdc9d0e6e0d5b94              # double 0.44708595988543576
	.quad	0x3fea62eb8e212c30              # double 0.82457521209415141
	.quad	0x3fcfb6ab675b1f38              # double 0.24776213213612563
	.quad	0x3fb58a93fe5e2b48              # double 0.084145783998036738
	.quad	0x3fd44a0db3577530              # double 0.31701986802893867
	.quad	0x3febe7380dc70eec              # double 0.87197497073108598
	.quad	0x3fd09b40fc9c8bba              # double 0.25947594327061163
	.quad	0x3fead82646b02f98              # double 0.8388854389790934
	.quad	0x3fe03679b92ecc34              # double 0.50664983910099304
	.quad	0x3fef205c1ab7a50a              # double 0.9727001687835195
	.quad	0x3fe353687376c055              # double 0.60393164207017469
	.quad	0x3fe553c3b17e976c              # double 0.66647514979261535
	.quad	0x3fd2987c6cc1174c              # double 0.29055700893910763
	.quad	0x3fd187b666067602              # double 0.27390823329355396
	.quad	0x3fe088623e20d206              # double 0.51664840826430303
	.quad	0x3fdb215734f4083e              # double 0.42390995188918967
	.quad	0x3fbcda7a7237b1c8              # double 0.11270871437563479
	.quad	0x3fdefe5b2eeebe8e              # double 0.48427466948758358
	.quad	0x3feea5d2184e2b61              # double 0.95774178263796383
	.quad	0x3fd64dbe3bc9c6ee              # double 0.3484950622433719
	.quad	0x3fe637b033aff87a              # double 0.69429788680260107
	.quad	0x3fb0955037fa4020              # double 0.064778340975181425
	.quad	0x3fd5820799186e54              # double 0.33606138182378698
	.quad	0x3fc664af619daa08              # double 0.17494766489410574
	.quad	0x3fd073983bbb39be              # double 0.25705533822192794
	.quad	0x3fc84ee5a2f50e58              # double 0.18990774590394
	.quad	0x3fd50276b2100014              # double 0.32827536953846104
	.quad	0x3fef94c053bfd7b1              # double 0.9869081149797606
	.quad	0x3fe509d81cefb322              # double 0.65745168353678118
	.quad	0x3fbc31f34f8d2048              # double 0.11013718311471721
	.quad	0x3fe513bca9ef8aa3              # double 0.65865929785316657
	.quad	0x3fdcc9d5efbad40e              # double 0.4498190728293715
	.quad	0x3fc8a345b04063a8              # double 0.19248267274886399
	.quad	0x3fdbc7bb72ca9780              # double 0.43406568727584016
	.quad	0x3fe1289d0cf0d6bc              # double 0.53620770003791263
	.quad	0x3fe8a5d959833ec0              # double 0.77024524195618227
	.quad	0x3fee0c077c5486d8              # double 0.93896841319311885
	.quad	0x3fb458d4fb7559d0              # double 0.079480468169413898
	.quad	0x3fe44650408893fe              # double 0.63358318905068223
	.quad	0x3fc3d1787cc7122c              # double 0.15483003704697873
	.quad	0x3fa563d939b0bc50              # double 0.041777408878595268
	.quad	0x3fe4ad703fb4963d              # double 0.64617168848480555
	.quad	0x3fe06fe9660625c8              # double 0.5136610977798961
	.quad	0x3fec3dd3e89c4b72              # double 0.88254733497374915
	.quad	0x3fddc21df36b0d8a              # double 0.46497296115213571
	.quad	0x3fcaaf04a9780b28              # double 0.20846613192414876
	.quad	0x3fea39e41f52797c              # double 0.81956678502665125
	.quad	0x3fdb151a14906984              # double 0.42316295631612655
	.quad	0x3fd1979f78183594              # double 0.27487932899460898
	.quad	0x3fe1f21d64797755              # double 0.56080503105088531
	.quad	0x3feee8ae555c64c6              # double 0.96590344116261728
	.quad	0x3fedf81b7460a3b0              # double 0.936536528873253
	.quad	0x3fd6ceb4e3c68dd2              # double 0.35636636966429791
	.quad	0x3fede39909c25361              # double 0.93403293520041697
	.quad	0x3f9e71cb7bd89480              # double 0.029730967935524877
	.quad	0x3fd515279870ee22              # double 0.329416178577704
	.quad	0x3fb595f428a05dc8              # double 0.084319362562715772
	.quad	0x3fd0b512412152ba              # double 0.26105171547287009
	.quad	0x3fe55759769d23dd              # double 0.66691277663005233
	.quad	0x3fede32f2c0974b7              # double 0.93398245430912297
	.quad	0x3fc9bfd991f61cc4              # double 0.20116729380626996
	.quad	0x3fd4f902b88201f8              # double 0.32769840257972715
	.quad	0x3fe103a08054dcd4              # double 0.53169274391884835
	.quad	0x3fccd97f9a9d0c38              # double 0.22538752603040435
	.quad	0x3fd6822c5754a57c              # double 0.35169514206298635
	.quad	0x3fdc99bd1fecd9aa              # double 0.4468834697503562
	.quad	0x3fe0c16a7102910f              # double 0.52361032554884612
	.quad	0x3fb656c7c0b62cb8              # double 0.087261662052855793
	.quad	0x3fe4541dfc69a2d3              # double 0.63526820468276879
	.quad	0x3fd4f017f4b92dbe              # double 0.32715414904370366
	.quad	0x3fc2728c8f20ecd4              # double 0.14412075985624162
	.quad	0x3fd421935ef8bfb2              # double 0.31454929613664284
	.quad	0x3fe5b80242896fe3              # double 0.67871201510888246
	.quad	0x3fcb9517c448bc64              # double 0.21548745235620281
	.quad	0x3fea7b6b866a8ff1              # double 0.8275659203832203
	.quad	0x3fc890753241ee88              # double 0.19190850213987098
	.quad	0x3fdc429d5e6fbc70              # double 0.44156583998023446
	.quad	0x3fd8c54f9a79a220              # double 0.38704290471517488
	.quad	0x3fec50865606302c              # double 0.88482968141170692
	.quad	0x3fdcc77d9ebc8a34              # double 0.44967594625100848
	.quad	0x3fdb7861707efabe              # double 0.4292224501222498
	.quad	0x3fa0cd995e011010              # double 0.032818596577755099
	.quad	0x3febafaa62171ad3              # double 0.86519354971172857
	.quad	0x3fd6b2fdb2490930              # double 0.35467474375413399
	.quad	0x3fcd251a7c6822a0              # double 0.22769480776357387
	.quad	0x3fe589e712ed3042              # double 0.67308381744943113
	.quad	0x3fc4705e829ff1dc              # double 0.15967923525012295
	.quad	0x3fe21bf64c63b49c              # double 0.56591334266490234
	.quad	0x3fe9186f1b437f58              # double 0.78423266720708806
	.quad	0x3fdcbeb4c93fc5ae              # double 0.44913978245957764
	.quad	0x3fd5f640e724e4a4              # double 0.34315512249629365
	.quad	0x3fe481c9b9aa2f0b              # double 0.64084326040890127
	.quad	0x3fee683000c3d238              # double 0.95021820210838026
	.quad	0x3fea2a5dbe01707f              # double 0.81767165289376453
	.quad	0x3fe3c2a510ff4da4              # double 0.61751035041600177
	.quad	0x3fe40a127a9a5031              # double 0.62622951455933251
	.quad	0x3fdb87e36b370798              # double 0.43016896696291829
	.quad	0x3fda53e2c38b3fc0              # double 0.411369982682114
	.quad	0x3fdf8500c2b90652              # double 0.49249285713094537
	.quad	0x3fe30d55dd9c3aed              # double 0.5953778580022494
	.quad	0x3fb4a0e22de19e80              # double 0.080579887582297615
	.quad	0x3fc3cd2c6a289f6c              # double 0.15469889815835403
	.quad	0x3fed208daf4ecc0b              # double 0.9102238105755317
	.quad	0x3fccaba66ae742e8              # double 0.22398834438219883
	.quad	0x3fc45476fad73e20              # double 0.15882766006551297
	.quad	0x3feae31062442b79              # double 0.84021777336725656
	.quad	0x3fcda28329abc4c8              # double 0.23152198347773933
	.quad	0x3fc0699247fd4560              # double 0.12822178378204807
	.quad	0x3fe1fb6cc8a97adb              # double 0.56194152061274438
	.quad	0x3fe60c22df67a0ed              # double 0.6889814723372446
	.quad	0x3feff1feece25b42              # double 0.99829050318189894
	.quad	0x3fd0b17e9b364374              # double 0.26083340794962528
	.quad	0x3fd8b79ff5135cb4              # double 0.38620757039229692
	.quad	0x3fe437eea0d48de6              # double 0.63182765400091223
	.quad	0x3fc314b362d910d4              # double 0.14906923605497602
	.quad	0x3fdbfe264f515c14              # double 0.43738706346397405
	.quad	0x3fc23b440790fbec              # double 0.14243364686441795
	.quad	0x3fcb9a9e3dc0ecf8              # double 0.21565607085526728
	.quad	0x3fd36c5be67ed89c              # double 0.30348870763135394
	.quad	0x3fcbd0abf07ea584              # double 0.21730565302759086
	.quad	0x3f7e3fc825816680              # double 0.0073850458357697102
	.quad	0x3fe8b1a2f7e00b36              # double 0.77168415463561391
	.quad	0x3fe39be2da6656a4              # double 0.61277907043650659
	.quad	0x3fe62bd229f48d33              # double 0.69284923738852056
	.quad	0x3feeb617dfdf120d              # double 0.95972818112255853
	.quad	0x3fc3a9078016dca0              # double 0.15359586481438203
	.quad	0x3fdf92b905c43718              # double 0.49333024562007344
	.quad	0x3fcf731e59e72158              # double 0.24570063962733957
	.quad	0x3fdf53f6e4e795ac              # double 0.48949978212325607
	.quad	0x3fc3599a5c21bddc              # double 0.15117196558592993
	.quad	0x3fe8cb88773d166d              # double 0.77484534539025918
	.quad	0x3fc84d20603bb11c              # double 0.18985371302495302
	.quad	0x3fe5433888482cac              # double 0.66445566766323827
	.quad	0x3fd48201fef00f3e              # double 0.32043504616034457
	.quad	0x3fd4f8dd8d1171fe              # double 0.32768954063593003
	.quad	0x3fc6cbe93e00bc60              # double 0.17809787299617863
	.quad	0x3fe77e485615e386              # double 0.73416535199713517
	.quad	0x3febc71ab45d0d2a              # double 0.86805472590677835
	.quad	0x3fcd2b12fc1cb688              # double 0.22787701902545998
	.quad	0x3fb469b7cc6b5cf0              # double 0.079738128096653815
	.quad	0x3fde2bebc748997a              # double 0.47143072568214672
	.quad	0x3fafc934be704bc0              # double 0.06208195519152282
	.quad	0x3fafd8b6a6f68a10              # double 0.06220026767848108
	.quad	0x3fd190c85b2d8636              # double 0.2744618311317909
	.quad	0x3fe45d9ef1b68627              # double 0.63642832955901418
	.quad	0x3fcd8bfb19ff1714              # double 0.23083437699659071
	.quad	0x3fe53065a55d85c2              # double 0.66215784356989382
	.quad	0x3fc559184249f738              # double 0.166781456344262
	.quad	0x3fe2fa72abe2424c              # double 0.59307225771960637
	.quad	0x3febc41f2db50f00              # double 0.86769064833831067
	.quad	0x3fd4feeff15d57ae              # double 0.32806013651622379
	.quad	0x3fd6801868f3f45a              # double 0.35156831979094749
	.quad	0x3fe1706b0d0f65b5              # double 0.54497292090234473
	.quad	0x3feb176912c0f0ef              # double 0.84660772002055562
	.quad	0x3fb3bec069256ed8              # double 0.077129388494934559
	.quad	0x3fe16582ab9eb1d0              # double 0.54364141006004196
	.quad	0x3fe2765126045e15              # double 0.57694299149710793
	.quad	0x3fe05b736365462d              # double 0.51116341984942937
	.quad	0x3fde92fb8666ac62              # double 0.47772110104660304
	.quad	0x3fecafb8e41466e2              # double 0.89645046755614666
	.quad	0x3fef0bb8ebd70905              # double 0.97018095076080668
	.quad	0x3fdbd71fe7377152              # double 0.4350051649069161
	.quad	0x3fc4606ed641312c              # double 0.15919290029194977
	.quad	0x3fec706348e61aeb              # double 0.88871921766334816
	.quad	0x3fee725e719b6080              # double 0.95146104992728908
	.quad	0x3fc5dd07579aafe0              # double 0.17080776002455789
	.quad	0x3fa779c87a0feea0              # double 0.045851006412673145
	.quad	0x3fe982e0300b1bbc              # double 0.79722604163622845
	.quad	0x3fe97b1c265022b5              # double 0.7962780712415084
	.quad	0x3fe0f83c4b8dd087              # double 0.53030218845971511
	.quad	0x3fc5c8a47a6d9cc0              # double 0.170185622958547
	.quad	0x3fe7c8342b6aad7d              # double 0.74318893890215032
	.quad	0x3fe404eaa4e4c910              # double 0.62560016828345688
	.quad	0x3fda223ab56504fc              # double 0.40833919252698059
	.quad	0x3fa7ddf8c5140990              # double 0.046615385110288732
	.quad	0x3fde20a3a770db0a              # double 0.47074214316982987
	.quad	0x3feeb1715e2004da              # double 0.95916050323298951
	.quad	0x3fdc99dd18e31ba6              # double 0.44689109259018733
	.quad	0x3fd6f0db54e789dc              # double 0.35845073024225171
	.quad	0x3fe6e7c5251536ac              # double 0.71579224817988552
	.quad	0x3fef14077bedb33c              # double 0.97119497494495687
	.quad	0x3fecadd27fdbfd5b              # double 0.89621853802229212
	.quad	0x3fe46ffc8ad99fdd              # double 0.63867022627982417
	.quad	0x3fc60e89ddf07660              # double 0.17231868111496151
	.quad	0x3fda620aeae33df0              # double 0.41223404825447485
	.quad	0x3fcf3ce6cc366f5c              # double 0.24404606791801597
	.quad	0x3fd9fe87fc1a3364              # double 0.40616035098428527
	.quad	0x3fde1d476c34d6c8              # double 0.47053704802543139
	.quad	0x3fbb316f36f5ca48              # double 0.10622305957603217
	.quad	0x3fd5f0e4773c3046              # double 0.34282790798238627
	.quad	0x3fd78df5381c8c9e              # double 0.36803942184105576
	.quad	0x3fe43dc0bb474581              # double 0.63253819063008632
	.quad	0x3fe7dda3e9eb237e              # double 0.74580569922646567
	.quad	0x3fe289e60832615e              # double 0.57933332062661314
	.quad	0x3fe55b80b3a3dca9              # double 0.66741976819948434
	.quad	0x3fea6338c9fcc2c2              # double 0.82461204004911104
	.quad	0x3fe51ac337c5ecd7              # double 0.65951691525642786
	.quad	0x3fd30b78563b3b6a              # double 0.29757507725746868
	.quad	0x3fe18d850abe9eb7              # double 0.5485253534179354
	.quad	0x3fe1bdc41c9b788a              # double 0.55441480243077135
	.quad	0x3f7372964ac0a380              # double 0.0047479506284070494
	.quad	0x3fcc38e38763c828              # double 0.22048610792950396
	.quad	0x3fde2ff103f5e586              # double 0.47167611490984773
	.quad	0x3fe5b56c7ca715fd              # double 0.67839645715929431
	.quad	0x3fe0e3b1aac15591              # double 0.52779467917086909
	.quad	0x3fec7fe562419668              # double 0.89061230841316519
	.quad	0x3fdb19df1c8c726a              # double 0.42345407283736469
	.quad	0x3fae412d16a3e840              # double 0.059091004384712154
	.quad	0x3fe6d666bb401d83              # double 0.71367203304627969
	.quad	0x3fa144d2e8ad1e00              # double 0.033728209402905662
	.quad	0x3fc471029c430e40              # double 0.15969879751183846
	.quad	0x3fd2f0b162c1a58c              # double 0.29594072956259576
	.quad	0x3fd87c66de760064              # double 0.38259288525296697
	.quad	0x3fe59e4a08cceae2              # double 0.67557241171683935
	.quad	0x3feb3bfab205237e              # double 0.85107168931527588
	.quad	0x3fd837715b66d378              # double 0.37838396001762176
	.quad	0x3fe9b565e95b20b9              # double 0.80339332177484046
	.quad	0x3fecbda0e7f3617f              # double 0.89814801504967068
	.quad	0x3fdb6819b345a694              # double 0.42822878367460615
	.quad	0x3fc267db78899658              # double 0.1437944735109109
	.quad	0x3fed5ac6bb8f68eb              # double 0.91733109124041101
	.quad	0x3fba1611734726f0              # double 0.10189923347857266
	.quad	0x3fe83ad6687d0d0c              # double 0.7571823159018165
	.quad	0x3fec4f5452cb8103              # double 0.88468376322637743
	.quad	0x3fd1a5d34cd161b6              # double 0.27574617864368223
	.quad	0x3fe98178bee0542d              # double 0.79705464630626965
	.quad	0x3fbec5462e943088              # double 0.12019766461543402
	.quad	0x3fe355b89955565c              # double 0.60421400020522809
	.quad	0x3fe7f0000fb55956              # double 0.74804690425916465
	.quad	0x3fd80d4b8e961db4              # double 0.37581147121860714
	.quad	0x3fbf48a5efd22958              # double 0.12220227341655254
	.quad	0x3fdc7275b720eae2              # double 0.44448607333803924
	.quad	0x3fab42fd78e565e0              # double 0.053245469100783316
	.quad	0x3fdfc16aaeb156fa              # double 0.49618022022092101
	.quad	0x3fcb295021b32b48              # double 0.21219827313901818
	.quad	0x3fcca026fbe8965c              # double 0.22363745975705995
	.quad	0x3f885a5f8d427600              # double 0.011891123293305661
	.quad	0x3fe61a80a1986cc8              # double 0.69073516427615633
	.quad	0x3fc02859b898a850              # double 0.12623139871112921
	.quad	0x3fed40a50dcf9820              # double 0.91414120385593733
	.quad	0x3feb83ea260154a0              # double 0.85985286162271634
	.quad	0x3fd69e0458db8884              # double 0.35339459111686033
	.quad	0x3fe5ee86bbbbf0ff              # double 0.68536698023629572
	.quad	0x3fe150592dc59799              # double 0.54105814876378411
	.quad	0x3fec42b6dd1441c7              # double 0.88314383677975961
	.quad	0x3fe360154ac04c13              # double 0.60547890281520933
	.quad	0x3fb35d1968f2a6c8              # double 0.075639331934009069
	.quad	0x3fdc209552b6ee64              # double 0.43948872640223713
	.quad	0x3fe26c9720f79a80              # double 0.57575565756708613
	.quad	0x3fe4388b2833bc92              # double 0.63190229274722953
	.quad	0x3fe08fa626fd3b4e              # double 0.51753528227878021
	.quad	0x3fe24759d2dbaf6a              # double 0.5712098234484817
	.quad	0x3f9e7ac0cba01de0              # double 0.029765140941916957
	.quad	0x3f9be9b24df84800              # double 0.027258668908025641
	.quad	0x3fe79720d6c8c058              # double 0.7371982760432827
	.quad	0x3f7e15f9f1bc5c00              # double 0.0073451770256474091
	.quad	0x3fb2995dce892768              # double 0.072652686046379977
	.quad	0x3fe2e4d4a73a4bff              # double 0.59043343221344446
	.quad	0x3feecd1beefe995d              # double 0.96253773382776908
	.quad	0x3fdfca465b7f16e2              # double 0.49672087607573989
	.quad	0x3fdbfbc94cc16756              # double 0.43724281783726349
	.quad	0x3fe922ecde08c52f              # double 0.78551333776537102
	.quad	0x3fd8ca953102fc34              # double 0.38736467157645227
	.quad	0x3fe5be23812acee8              # double 0.67946028926823221
	.quad	0x3fef59ecf906ee82              # double 0.97972725523091264
	.quad	0x3fe8868250b22673              # double 0.76641956101339159
	.quad	0x3f8f397fb08c5040              # double 0.015246388984032078
	.quad	0x3fe33a5824d690c2              # double 0.60087210841131644
	.quad	0x3fea287ec1e0fa3b              # double 0.81744325510937388
	.quad	0x3fd69ba28704139a              # double 0.3532491987719425
	.quad	0x3feb4bd5218b58e8              # double 0.85300690223337217
	.quad	0x3fadb6d6b044a090              # double 0.058035573021983144
	.quad	0x3fe1c5be7d95d2db              # double 0.5553886845433128
	.quad	0x3f9f09d01eac9720              # double 0.030310871002391271
	.quad	0x3fe98e555fc7daf5              # double 0.79862469393887514
	.quad	0x3fba11d0a1012e70              # double 0.10183433466698388
	.quad	0x3feb36e4e3e86b8b              # double 0.85045094025859791
	.quad	0x3feb1079e04a1693              # double 0.84576124006771847
	.quad	0x3fdf948058206148              # double 0.49343880277730934
	.quad	0x3fd09f62ed64af8c              # double 0.25972817595424469
	.quad	0x3fe4ad4eb72b4f3a              # double 0.64615569854002008
	.quad	0x3fe544134008a0ac              # double 0.66455996042806964
	.quad	0x3feae6c77989e3ef              # double 0.84067128885282993
	.quad	0x3fdbb93cb773139e              # double 0.43318097987167359
	.quad	0x3fd744e94a860f3c              # double 0.36358101155950684
	.quad	0x3fef9cdde739d0a3              # double 0.98789878045365175
	.quad	0x3fda98cd09612050              # double 0.41557622829396212
	.quad	0x3fc2913446316fe0              # double 0.14505628039739715
	.quad	0x3fe1c64eac4bb3fd              # double 0.55545743609911791
	.quad	0x3fea68783ec846b9              # double 0.82525264990018521
	.quad	0x3fea124ebc7ecf4d              # double 0.8147348100232904
	.quad	0x3fe22618bab6d36d              # double 0.567150463749028
	.quad	0x3fb225024ec76c90              # double 0.070877212746767393
	.quad	0x3fc3658eb4d77500              # double 0.15153678732068698
	.quad	0x3fc04f5b1868b324              # double 0.12742174808354279
	.quad	0x3fec57ffb0faac0e              # double 0.88574204031226755
	.quad	0x3febd5acd14f4189              # double 0.8698333824232104
	.quad	0x3fd3589b4cb6371c              # double 0.30228312007317171
	.quad	0x3fe1b1a10d2f3d1e              # double 0.55293324065306471
	.quad	0x3fc58f3c3fca0c78              # double 0.1684336959334336
	.quad	0x3fc3792998e0cc18              # double 0.15213508572341605
	.quad	0x3fdf0d0da1828106              # double 0.48517170689048361
	.quad	0x3fedf8f8f2cf5f60              # double 0.93664214538419443
	.quad	0x3fda61db516ba4e4              # double 0.41222269965380876
	.quad	0x3fec4a3727870581              # double 0.8840595027942727
	.quad	0x3fa20215663c4c90              # double 0.035172146539616311
	.quad	0x3fda9f7a9d0d8ec0              # double 0.41598382317736693
	.quad	0x3fefc379114175d9              # double 0.99261144037489679
	.quad	0x3fb85754c6515438              # double 0.095082567613034352
	.quad	0x3fe61ec2eed63fb7              # double 0.69125506065210274
	.quad	0x3fee09897ffeaf25              # double 0.93866419791217892
	.quad	0x3fe01d57d3cb12f4              # double 0.50358191839094824
	.quad	0x3fe071e24fae3e96              # double 0.51390185892701612
	.quad	0x3f9aed149f6965c0              # double 0.026295015554159695
	.quad	0x3fbcfb91742635e8              # double 0.11321362577128691
	.quad	0x3fd8fbbd2db600b8              # double 0.39036492790183841
	.quad	0x3fd0513908954054              # double 0.25495744550881239
	.quad	0x3fec1a3c6a6cf9fa              # double 0.87820263658778619
	.quad	0x3fd98bd2136f3756              # double 0.39915897272009226
	.quad	0x3fe1489dc804c3f7              # double 0.54011429849754122
	.quad	0x3fca95b78f162e7c              # double 0.20769400107052494
	.quad	0x3fe010d0d205af1e              # double 0.50205269832574451
	.quad	0x3fa2b97d3c894130              # double 0.036571420325915205
	.quad	0x3fe00d94de65d112              # double 0.50165790020995105
	.quad	0x3fe5d47e2ef48ae7              # double 0.68218907519289196
	.quad	0x3f94e07c6c7770a0              # double 0.020387596245072914
	.quad	0x3fe1ab1eb8c22233              # double 0.55213867269146133
	.quad	0x3fdecfcbca5d5b74              # double 0.48143286478209935
	.quad	0x3fe0bc05ec7db159              # double 0.52295204343458146
	.quad	0x3fe3df91aac093db              # double 0.62104113912630099
	.quad	0x3feb5169e70ed145              # double 0.853688193592952
	.quad	0x3fc1aaa44c360e78              # double 0.1380200740933224
	.quad	0x3fdcc401e5ee89f0              # double 0.44946334318424785
	.quad	0x3fea136fa51dba5d              # double 0.8148725724148097
	.quad	0x3fd43a86cc7c80b2              # double 0.31607217759484307
	.quad	0x3fdbf0e729e48ca2              # double 0.4365785512074557
	.quad	0x3f9ed0929ce16da0              # double 0.030092516732435848
	.quad	0x3fbbf9f4bfabe010              # double 0.10928277663686026
	.quad	0x3fde9a00dba36b40              # double 0.4781496186166585
	.quad	0x3f8342d867f3c440              # double 0.0094048411105821516
	.quad	0x3fc23de39bd42d28              # double 0.14251370533779917
	.quad	0x3fc67251716ecb5c              # double 0.17536371267996287
	.quad	0x3fa23627f91875d0              # double 0.035569428593798968
	.quad	0x3fe9a0e3ddc16e57              # double 0.80088990508688596
	.quad	0x3feff5dd6b91c1f2              # double 0.99876280793801997
	.quad	0x3fca49eb036fbedc              # double 0.20538079898641726
	.quad	0x3fe904b7abd87244              # double 0.78182586253712615
	.quad	0x3fced3988a216fa0              # double 0.24083239311846416
	.quad	0x3feef9e1743da152              # double 0.96800301268835143
	.quad	0x3fe05f45552a20b3              # double 0.51162974008277329
	.quad	0x3fe374d6966bac5f              # double 0.6080124795820544
	.quad	0x3fe5abdfb11a8216              # double 0.67723068800484287
	.quad	0x3fecaebdc0d9fb1f              # double 0.89633071581178914
	.quad	0x3fee1b40dca46e03              # double 0.9408268269939416
	.quad	0x3febb0b14b49f824              # double 0.86531891541358563
	.quad	0x3fe1315ec0c4f3ce              # double 0.53727662706625678
	.quad	0x3fe7dd80da07e7b5              # double 0.74578898033290975
	.quad	0x3fc7218f575c5cc4              # double 0.18071166768706892
	.quad	0x3fddf41b4bb5494e              # double 0.46802408593534472
	.quad	0x3fd1e792827b3eaa              # double 0.27975905172659543
	.quad	0x3fef2fb42b0f2b77              # double 0.97457321558009268
	.quad	0x3fe85f671ce85e75              # double 0.7616458477595659
	.quad	0x3fd5588e075e7fd0              # double 0.33352995605127678
	.quad	0x3fd854e4a77c9f46              # double 0.3801814685452779
	.quad	0x3fea0b65f3d19c7c              # double 0.81389138813837247
	.quad	0x3fea3a17180b0cc7              # double 0.81959109016352094
	.quad	0x3fdc3e646741edf8              # double 0.4413081177114857
	.quad	0x3fc9d5821040a818              # double 0.2018282489164569
	.quad	0x3fb59cd52af78570              # double 0.084424326887093448
	.quad	0x3fd2e0bb0e1fdd60              # double 0.29496647242873131
	.quad	0x3fdc6cd46d3cf828              # double 0.44414244334973541
	.quad	0x3fe04f9a5c2c658c              # double 0.50971715929624528
	.quad	0x3fe8e8bcaee87b4a              # double 0.77841028367752441
	.quad	0x3fd6b12224c31bde              # double 0.35456136312535402
	.quad	0x3fd44cd722c784f0              # double 0.31718996426032131
	.quad	0x3fec596eeffc8dd5              # double 0.88591715690966544
	.quad	0x3fca1ec09c2586bc              # double 0.20406348823876452
	.quad	0x3fe10cdafd7b540b              # double 0.53281926639704247
	.quad	0x3fe93b9fc4e8f235              # double 0.78852833231900965
	.quad	0x3fe3b4fec3a7088d              # double 0.61584413731931564
	.quad	0x3fe288f9b545b268              # double 0.57922063259827627
	.quad	0x3fde96fbf94f34ee              # double 0.47796534868832807
	.quad	0x3fc154dc748eed3c              # double 0.13540225688289265
	.quad	0x3fe57bb9b014dcad              # double 0.67135319128910498
	.quad	0x3fe8da86cd5209e1              # double 0.77667560674336411
	.quad	0x3fe4adbb1dc5cda4              # double 0.64620738806700162
	.quad	0x3fd83bd897d52626              # double 0.37865271403697631
	.quad	0x3fe72018692de74f              # double 0.72266789000352982
	.quad	0x3feb8db902c2e980              # double 0.86105013408023012
	.quad	0x3fef8c9911ab8caa              # double 0.98591283274835928
	.quad	0x3feb99d1d3ad286c              # double 0.86252681105658046
	.quad	0x3fcac95898aacff4              # double 0.20926959471182693
	.quad	0x3fe044704fa55cfd              # double 0.50835433536386143
	.quad	0x3feeeb40b63f47e1              # double 0.96621738047747041
	.quad	0x3fe28cc0ed1681b0              # double 0.57968183809503238
	.quad	0x3fc178d056616e78              # double 0.13649944513132417
	.quad	0x3fdca1e78ad1b09c              # double 0.4473818641333851
	.quad	0x3febc0118c3341ce              # double 0.86719586737495447
	.quad	0x3fe3c0395ebdf410              # double 0.61721485618875427
	.quad	0x3fe83384fdb8ddf4              # double 0.75628900103669005
	.quad	0x3fe6cd21bba605e2              # double 0.71254049921133977
	.quad	0x3fda732bae18212e              # double 0.41327945710556235
	.quad	0x3fec0f41b4f1ecb4              # double 0.87686238613914335
	.quad	0x3fd6efd27b738cae              # double 0.35838758521840475
	.quad	0x3fda8ed7f394696c              # double 0.41496847903331147
	.quad	0x3fdc9e96e1fbcf52              # double 0.4471795279380234
	.quad	0x3f6e216c5ab46100              # double 0.0036780468268596822
	.quad	0x3fe2f3daa1b6ca5d              # double 0.5922673376538331
	.quad	0x3fb46b93ea6d5330              # double 0.079766506894270561
	.quad	0x3fcf3b1ea891ba90              # double 0.24399169188423686
	.quad	0x3fe3806affc15fb9              # double 0.60942602112026301
	.quad	0x3f53988fc5411800              # double 0.0011960414895084703
	.quad	0x3fc0c4d13b6c8ce8              # double 0.13100638772548412
	.quad	0x3fe9089cbc9c84c5              # double 0.78230130041279067
	.quad	0x3fed0309d327d5a8              # double 0.90662089577988514
	.quad	0x3fc7d85aada8eec4              # double 0.18629010657774903
	.quad	0x3fe6ebf297441835              # double 0.71630219978465581
	.quad	0x3fd167099a38df26              # double 0.27191391049153635
	.quad	0x3fca6ea465586870              # double 0.20650153110983949
	.quad	0x3fd9bbe170ebc9e6              # double 0.40209232356497038
	.quad	0x3fbdbe492b5152b0              # double 0.11618478114662412
	.quad	0x3fe13ce041954a3d              # double 0.53868115243159986
	.quad	0x3fe5015931fd20d4              # double 0.6564146019309427
	.quad	0x3fda6ba12f051028              # double 0.41281919090056585
	.quad	0x3fee66230f48d633              # double 0.9499678896451712
	.quad	0x3fb26ad23bc26658              # double 0.071942462529841378
	.quad	0x3fde10c393c29176              # double 0.46977319173517829
	.quad	0x3f89e9c100b74300              # double 0.012652881464334964
	.quad	0x3f83d2d847192880              # double 0.0096794983575316795
	.quad	0x3fe5b056028ed96b              # double 0.67777538776026114
	.quad	0x3fe32b4fa55a16de              # double 0.59903700156493378
	.quad	0x3fea1e7e1a3b1d95              # double 0.81622223971582974
	.quad	0x3fef63a2b2e3bd91              # double 0.98091254176499564
	.quad	0x3fd5b937012bbbd6              # double 0.33942961801852556
	.quad	0x3fd5359d753c7cae              # double 0.33139740418296071
	.quad	0x3fecd0b8481622e0              # double 0.90047849730862239
	.quad	0x3f688dcf8ff9f100              # double 0.0029973081544182323
	.quad	0x3fdb8cdf7b4aefe4              # double 0.43047320404343581
	.quad	0x3fd470a1471cb2d6              # double 0.31937438911954297
	.quad	0x3fdcf201f2afe704              # double 0.45227097225107138
	.quad	0x3fefc4ba52fdf843              # double 0.99276462754620131
	.quad	0x3fd691796eba0efc              # double 0.3526290494266815
	.quad	0x3fdca06727a6abe8              # double 0.44729021904157529
	.quad	0x3fe5b779303332f1              # double 0.67864665426313142
	.quad	0x3fd3e35c6ae6d7be              # double 0.31075201453802126
	.quad	0x3fee02235cde2d9d              # double 0.93776100290544984
	.quad	0x3fd11196ff97ffe2              # double 0.26669859848334287
	.quad	0x3fe5510e5dc52b13              # double 0.66614454569330162
	.quad	0x3fe5fd56507a8bf1              # double 0.68717494696136161
	.quad	0x3fd8db62669c9548              # double 0.38839015980405067
	.quad	0x3fd0f71c18bec8d6              # double 0.26508238235977666
	.quad	0x3fda9103b082e3c6              # double 0.41510097730093454
	.quad	0x3fe405b3c4706ea4              # double 0.62569607131031946
	.quad	0x3fbccddee697dcc0              # double 0.11251633767811864
	.quad	0x3fe97146a6dffb55              # double 0.79507763474235083
	.quad	0x3fe0eed3dd12474e              # double 0.52915375879295268
	.quad	0x3fd1af0cfb66681a              # double 0.27630924750121866
	.quad	0x3fdbf2c4700d5016              # double 0.43669234221056408
	.quad	0x3feac848584f587a              # double 0.83694855926547906
	.quad	0x3fea3a16bfdf7acb              # double 0.81959092593373251
	.quad	0x3fc2974dd59bd774              # double 0.14524243288149885
	.quad	0x3fdf105d2504e43e              # double 0.48537376990458714
	.quad	0x3fc30926010a7780              # double 0.14871668864082821
	.quad	0x3fd34c1f82ac60de              # double 0.30152118454999577
	.quad	0x3fd11c36df935c6c              # double 0.2673470671993019
	.quad	0x3fc0cfe772836bb4              # double 0.13134472934220087
	.quad	0x3fd6c6d98fa57566              # double 0.35588683155022804
	.quad	0x3fe9ed0357931e8f              # double 0.81018225769453689
	.quad	0x3fd1e793d0c55592              # double 0.2797593630578713
	.quad	0x3fec164bae79275a              # double 0.87772163464363051
	.quad	0x3fea7f0ff97a3b90              # double 0.8280105469328749
	.quad	0x3fcd68c1b1606294              # double 0.22975941811525458
	.quad	0x3f9a482d5a3ab880              # double 0.025665959007419747
	.quad	0x3fea1cb0db7d728a              # double 0.81600230092188153
	.quad	0x3fdc3dfe368882a8              # double 0.44128375363838268
	.quad	0x3fe833e1015d009b              # double 0.75633287683742212
	.quad	0x3fd3c3dee22c0be4              # double 0.30882999503245245
	.quad	0x3fe7afadaf566527              # double 0.74019512410737753
	.quad	0x3fe237b87cb1cc7a              # double 0.56930183748626395
	.quad	0x3fe85e18dca5727e              # double 0.76148646445251678
	.quad	0x3fe25125bafe0579              # double 0.57240568658760005
	.quad	0x3fcc9c9db2b8b8e0              # double 0.22352954126967628
	.quad	0x3fe04aee25848b06              # double 0.50914676025090055
	.quad	0x3fee90532582a1cc              # double 0.95511777235247441
	.quad	0x3fc34618172658b4              # double 0.1505766022716607
	.quad	0x3fe8e021518f890f              # double 0.77735963754483517
	.quad	0x3fe0c45708d8334a              # double 0.52396728255698943
	.quad	0x3fe320c3ccabd0a7              # double 0.59774961447557906
	.quad	0x3fa9b21053c1fd60              # double 0.050186643814408738
	.quad	0x3fcc9a3c898e5ae8              # double 0.22345692364316183
	.quad	0x3feef8a2a7d2589d              # double 0.96785099771183846
	.quad	0x3fe27bc135c899e9              # double 0.57760677818879202
	.quad	0x3fe9818983827ec5              # double 0.79706264195916587
	.quad	0x3fa550167419cfe0              # double 0.041626645729507805
	.quad	0x3fea3188d3f4a9bf              # double 0.81854668996430024
	.quad	0x3fb11b97ece8bc20              # double 0.066827292765751611
	.quad	0x3feb276cf6290bd6              # double 0.84856269910994331
	.quad	0x3fe0a500b497f4a5              # double 0.52014193794424968
	.quad	0x3fbdfe51801c1da8              # double 0.11716184022599541
	.quad	0x3fefffa2ef3c5617              # double 0.99995562291832384
	.quad	0x3fd3a66fa1d4bfea              # double 0.30703345111669356
	.quad	0x3fd5cea319920df8              # double 0.34073712823030133
	.quad	0x3fed1220c1fff90d              # double 0.90846288576702394
	.quad	0x3fe849f1cf1704a4              # double 0.75902643630265176
	.quad	0x3fca211053ba7b84              # double 0.20413402641585432
	.quad	0x3fa329f215200770              # double 0.037429394797085958
	.quad	0x3fef866ee8ad30ee              # double 0.9851603073562083
	.quad	0x3fd59cb83891fd78              # double 0.3376904060787278
	.quad	0x3fbfb2b30d6335e8              # double 0.12382048680156965
	.quad	0x3fd504900fa9e0fa              # double 0.32840348748824477
	.quad	0x3fdc3289c5d837aa              # double 0.44058460541497857
	.quad	0x3feca683aed934e6              # double 0.89532646322336684
	.quad	0x3fe5bee411ea6ea2              # double 0.6795521116177563
	.quad	0x3fee2bcf137a475e              # double 0.94284776500920109
	.quad	0x3fe1ccf7d6fbfc6e              # double 0.55627052296757795
	.quad	0x3fe8652152ff8ba0              # double 0.76234499178496051
	.quad	0x3fea990a41e8d913              # double 0.83118164895020852
	.quad	0x3fe744af6c0829f8              # double 0.72713442897776215
	.quad	0x3fce07cba1c8e5e0              # double 0.23461289786955231
	.quad	0x3fd54c67974deb82              # double 0.33278836990182736
	.quad	0x3fe93bac87881230              # double 0.78853441687585324
	.quad	0x3fe79b91e7ce77a2              # double 0.73774047159871636
	.quad	0x3fe04850ebd4cc61              # double 0.50882764874257813
	.quad	0x3fd613609f2008c4              # double 0.344932704349173
	.quad	0x3feda7b6d2d284ba              # double 0.92672291923749772
	.quad	0x3fe4730f58f29cb5              # double 0.6390454041728818
	.quad	0x3fe0cefd805041b1              # double 0.52526736317854816
	.quad	0x3fd7200e5db6c85a              # double 0.36133155013806617
	.quad	0x3f7ff111e31dfa80              # double 0.0077982615201778182
	.quad	0x3fc843e98d56e2b4              # double 0.18957251931512575
	.quad	0x3fc00dbc67475a18              # double 0.12541918795496154
	.quad	0x3fbbe4e950d7d978              # double 0.10896166061124812
	.quad	0x3fe1e78daf5913e9              # double 0.55951580283783386
	.quad	0x3fa5cc111dc9a2f0              # double 0.042572531591593576
	.quad	0x3fe110666fa4e15e              # double 0.53325197034341065
	.quad	0x3fd07d9735a3058e              # double 0.25766544568986027
	.quad	0x3f9e473aa61db760              # double 0.029568592442437036
	.quad	0x3fbfa4fc4e76a180              # double 0.12361123004541774
	.quad	0x3fe0e3e4bc3424e7              # double 0.52781903036625699
	.quad	0x3fd48086633b9c76              # double 0.32034454050739869
	.quad	0x3fc0c4f3947a44b0              # double 0.13101048231013612
	.quad	0x3fdf58ac437b0e60              # double 0.48978716459189364
	.quad	0x3f749cba0afaec00              # double 0.0050322787571372984
	.quad	0x3fd8b82223ef0452              # double 0.38623860844751789
	.quad	0x3fef5ed94ddf6aaa              # double 0.98032822808757669
	.quad	0x3fc18e836b835f2c              # double 0.13716166257540274
	.quad	0x3fe1229b3013b9c5              # double 0.53547438993501173
	.quad	0x3fd6bc827cd2f3f4              # double 0.35525572004172479
	.quad	0x3feeed8570e1b961              # double 0.96649429366315697
	.quad	0x3fe1e6ccc886398c              # double 0.55942382016091718
	.quad	0x3fded6281beef0ec              # double 0.48182108619563624
	.quad	0x3fecfb82b8764f66              # double 0.9057019808555935
	.quad	0x3fa46a2b3cb15750              # double 0.03987250438573986
	.quad	0x3fef73f03f014c9a              # double 0.98290264421156626
	.quad	0x3fe26b84a0fb3be7              # double 0.57562476579357458
	.quad	0x3fe3c0f88822c5f5              # double 0.61730600918798351
	.quad	0x3fd868a778553398              # double 0.3813875842213803
	.quad	0x3fe7d7b987770988              # double 0.74508358438497257
	.quad	0x3fdfbfb41472cd44              # double 0.49607564923208636
	.quad	0x3fcfef6069a35834              # double 0.24949269445522904
	.quad	0x3fc1169b7a9e4d6c              # double 0.13350242125725786
	.quad	0x3feb510319fe349d              # double 0.85363917423969193
	.quad	0x3fccbc3314a14220              # double 0.22449339396781998
	.quad	0x3fe4a8c5cf2952bc              # double 0.64560213528837762
	.quad	0x3fee969b100bb9bf              # double 0.95588448652215863
	.quad	0x3fbfb01c70086c58              # double 0.12378099188974667
	.quad	0x3fb834904bb19900              # double 0.094552057723920057
	.quad	0x3fe4586279f21332              # double 0.63578914468289427
	.quad	0x3fb98e593d946510              # double 0.099828317197893534
	.quad	0x3fe056089d493e28              # double 0.51050215454046555
	.quad	0x3fdeef04be1395a4              # double 0.4833385330406037
	.quad	0x3f8ef065de983ac0              # double 0.01510696015887214
	.quad	0x3fed8091713cb317              # double 0.92194435230848881
	.quad	0x3fdfd2aa4bcff3fa              # double 0.49723298457666909
	.quad	0x3fa6395189ca9c20              # double 0.043406055517430042
	.quad	0x3feb2b6c3824950f              # double 0.84905062642488527
	.quad	0x3fe3660d4f4d2c26              # double 0.60620751846852694
	.quad	0x3fdfe361d3fa603c              # double 0.49825330449084837
	.quad	0x3fe7cdd22e235f99              # double 0.74387463580477509
	.quad	0x3fe7aa019f1a6180              # double 0.73950272631468295
	.quad	0x3fea8e9e2c7c7e40              # double 0.82990940750818964
	.quad	0x3fe259e2403de94d              # double 0.57347214267000768
	.quad	0x3fc23ec01b265e5c              # double 0.14253999066999057
	.quad	0x3fe60c30a4d56109              # double 0.6889880389599351
	.quad	0x3f99ef80582d09c0              # double 0.025327687627631823
	.quad	0x3fca5f6a88d293d0              # double 0.2060368698195405
	.quad	0x3fe76feb703e415e              # double 0.73241207048890167
	.quad	0x3feee48b93d79026              # double 0.965398586992255
	.quad	0x3fee5640d141d2e2              # double 0.94802895422489208
	.quad	0x3fc27481dc242bb4              # double 0.14418051957212941
	.quad	0x3fdd06ee2e857030              # double 0.45354799788561007
	.quad	0x3f62160876ef5f00              # double 0.0022077718090079967
	.quad	0x3fcf378cd0ce8ad4              # double 0.24388275333065812
	.quad	0x3feae6db2beb1454              # double 0.8406806810168157
	.quad	0x3fed7309f2a9d4dc              # double 0.9202928294677366
	.quad	0x3fed156f79adca39              # double 0.90886663213161178
	.quad	0x3fe6286cafc76884              # double 0.69243463832687313
	.quad	0x3feffa81bb607e42              # double 0.9993294391351315
	.quad	0x3fdeec4f4a5775ee              # double 0.48317320117879958
	.quad	0x3fed07fed2332a21              # double 0.90722600035343615
	.quad	0x3fa243f2a8631ce0              # double 0.035674651198456919
	.quad	0x3fb5370ea69d70e0              # double 0.082871356656542883
	.quad	0x3fdea178d2e5e286              # double 0.4786054667997991
	.quad	0x3fdb700596f1ebe6              # double 0.42871227017138691
	.quad	0x3feea13e78cf15bd              # double 0.95718310924046757
	.quad	0x3fe07b6c6fa9ff3b              # double 0.51506635484108843
	.quad	0x3feb2e4dd13c1ac5              # double 0.84940234056633612
	.quad	0x3fee8cedae330ec1              # double 0.95470317862824328
	.quad	0x3fa7de881ccc2a10              # double 0.046619657054254415
	.quad	0x3fd58155c86362b0              # double 0.33601898736155089
	.quad	0x3fce53fd7e2ddddc              # double 0.23693817769138448
	.quad	0x3fed0d96f964f5b6              # double 0.90790890416945191
	.quad	0x3fbbd39f886a5730              # double 0.10869786339239051
	.quad	0x3fd445eb1e285456              # double 0.31676748223373374
	.quad	0x3fc978980a5eeb64              # double 0.19899273401628215
	.quad	0x3fa7451661989130              # double 0.045448970235414499
	.quad	0x3fe141bb619debb9              # double 0.53927392068668845
	.quad	0x3fe2b49049aadc1b              # double 0.58454145801704571
	.quad	0x3fd1726cf98535ce              # double 0.27260898940297984
	.quad	0x3fe8aca82aa7f7fb              # double 0.77107628184580734
	.quad	0x3fb3b6167f51f048              # double 0.076997190555574524
	.quad	0x3fa2da99f5ec31b0              # double 0.036824046392300303
	.quad	0x3fe38b0cb65bb0da              # double 0.61072383515195416
	.quad	0x3fda80873cbb1392              # double 0.41409474306811334
	.quad	0x3fc21bb4e9c12508              # double 0.14147054113190216
	.quad	0x3fd4c1aea817880c              # double 0.32432142653681306
	.quad	0x3fe9ade04b10785b              # double 0.80247511540415972
	.quad	0x3fe15bda54489cad              # double 0.54246250592850276
	.quad	0x3fe63e27f69be559              # double 0.69508741536916852
	.quad	0x3fd5cc0cf5956a1c              # double 0.34057926161554675
	.quad	0x3fe688acf49040bf              # double 0.70418403402620544
	.quad	0x3fc7ccb14f502040              # double 0.18593422291474049
	.quad	0x3fb0a0758e2e8708              # double 0.064948413097706603
	.quad	0x3fe3799c7624c0ee              # double 0.60859511446872516
	.quad	0x3fd871bc0063c142              # double 0.38194179571202735
	.quad	0x3feab8229d6671a7              # double 0.83497744314404521
	.quad	0x3fe85c14c2563e2b              # double 0.76124036747382229
	.quad	0x3fec5bc15f19481a              # double 0.88620060514427057
	.quad	0x3fe12c70beabaef2              # double 0.5366748546634581
	.quad	0x3fe11711d74633ff              # double 0.53406612439869139
	.quad	0x3fd5d272774b9568              # double 0.34096967363287556
	.quad	0x3fb9068077dbe2f0              # double 0.097755460035738428
	.quad	0x3fd1ea953a853552              # double 0.27994280543210437
	.quad	0x3feb56c67c2d2bf9              # double 0.85434269192899059
	.quad	0x3fed00d1ea01ac2f              # double 0.90635009483719908
	.quad	0x3fd9b6640d424e98              # double 0.40175725264382711
	.quad	0x3fc4f0cd5f83577c              # double 0.16359870113108943
	.quad	0x3fe7b2ffa0a84163              # double 0.74060040834778496
	.quad	0x3fc67d4a874e9694              # double 0.17569858176027664
	.quad	0x3fe5c42e8ca9059f              # double 0.68019797775939483
	.quad	0x3fc2c32baeca6a90              # double 0.14658113512708271
	.quad	0x3fa23a8b5bd5c150              # double 0.035602908096623254
	.quad	0x3fe396384089d814              # double 0.61208736996809643
	.quad	0x3fef4fb92cadbf52              # double 0.97848185278233246
	.quad	0x3fdc39e81aee8dbe              # double 0.44103434209884174
	.quad	0x3f822dd73b4ba280              # double 0.0088764967890295754
	.quad	0x3fe0a5a38f393c8b              # double 0.52021959279399377
	.quad	0x3fb9b7a30eb24b58              # double 0.10045832737732263
	.quad	0x3fda1108c3d0859a              # double 0.40728968737138305
	.quad	0x3fe514d2f96396ca              # double 0.6587920065764703
	.quad	0x3fe5ca6020213463              # double 0.6809540393384278
	.quad	0x3fe051d57dd0594d              # double 0.50998949597377818
	.quad	0x3fefc00f00ef5b96              # double 0.99219465429892995
	.quad	0x3fef4fbcde861826              # double 0.97848361455612998
	.quad	0x3fb2998bccf23918              # double 0.07265542748993814
	.quad	0x3fe460dc6c33128f              # double 0.63682385571208211
	.quad	0x3fddc50b83075ea0              # double 0.46515167041568795
	.quad	0x3f824f6ffc297340              # double 0.0089405773953160627
	.quad	0x3fc367d67bdb72f4              # double 0.15160637901035268
	.quad	0x3fedbf863f31aafb              # double 0.9296294435747251
	.quad	0x3fcb7d7f1f2908a4              # double 0.21476735135553782
	.quad	0x3fb53767ce446ba8              # double 0.082876670702190069
	.quad	0x3fcee6213c6246f8              # double 0.24139800499374764
	.quad	0x3f771c1a0b291300              # double 0.0056420342758130015
	.quad	0x3fe07161829fab4c              # double 0.51384044182246091
	.quad	0x3f73a65f16f2e600              # double 0.004797336048051104
	.quad	0x3fe2cf2a18ddbad1              # double 0.58778862816492439
	.quad	0x3fdeba1b9ca24df8              # double 0.48010912224091795
	.quad	0x3fb491e97c420c58              # double 0.080351441227365483
	.quad	0x3fea71e7f1d9200f              # double 0.82640454517331985
	.quad	0x3fa70c1cf0e15070              # double 0.045014290241540134
	.quad	0x3fdb0f3ac65d85f6              # double 0.42280454036344339
	.quad	0x3fc4e959cfa21ee8              # double 0.16337130201667738
	.quad	0x3fd24e2777aea814              # double 0.28602015197486819
	.quad	0x3fe05a5efbf24dc5              # double 0.51103162010479564
	.quad	0x3fe58a7b08d7d764              # double 0.67315437056707284
	.quad	0x3fa1f0c843c4ade0              # double 0.035040148041243446
	.quad	0x3fe01999ab44e1c0              # double 0.50312503291120692
	.quad	0x3fed4387ca4cba14              # double 0.914493460766439
	.quad	0x3fecd38f6dcf8089              # double 0.90082522818922073
	.quad	0x3fa927a69c5b7150              # double 0.049130636774608605
	.quad	0x3f9e92b014c9a600              # double 0.029856444615154132
	.quad	0x3fef08d509706907              # double 0.96982814639639591
	.quad	0x3feebe68e4fb1bdd              # double 0.96074337694960443
	.quad	0x3fef6d4839990295              # double 0.98209010362195903
	.quad	0x3fefd7245846842a              # double 0.99501244775104181
	.quad	0x3fe2440be2847784              # double 0.5708064483803672
	.quad	0x3fdac867ed86b340              # double 0.4184818095771341
	.quad	0x3fd74a9b60a2ee52              # double 0.36392864644196721
	.quad	0x3fa77320e1ff0780              # double 0.045800235354831464
	.quad	0x3fce64d08c9d1bd4              # double 0.23745161882308585
	.quad	0x3fd8f29a7faa90b6              # double 0.38980734317216148
	.quad	0x3f816e027bd67e80              # double 0.0085106081049268756
	.quad	0x3fedeb544b8a0d54              # double 0.93497671846163621
	.quad	0x3fe5eae075bbcead              # double 0.68492148394439811
	.quad	0x3fe5a12adc8b14db              # double 0.67592375826702822
	.quad	0x3fd8fe40750f1f2e              # double 0.3905182974963165
	.quad	0x3fedf576500d6ad6              # double 0.93621364245640382
	.quad	0x3fd74b2c3043fc94              # double 0.36396317208704798
	.quad	0x3fd3ad18dc630f26              # double 0.30744000932849003
	.quad	0x3fe0295ed5acc98d              # double 0.50505010350598101
	.quad	0x3fbf36e249834cb0              # double 0.12193121237514748
	.quad	0x3fe64ae66a6e3216              # double 0.6966430739135514
	.quad	0x3feef84580ac99cc              # double 0.96780657893833099
	.quad	0x3fc396f3b0a6fc38              # double 0.15304418683624177
	.quad	0x3fec8f53a2dc309a              # double 0.89249593552223705
	.quad	0x3fe157d72cd1e11b              # double 0.54197272065997326
	.quad	0x3fe0e9611d35c825              # double 0.52848869042486923
	.quad	0x3f9b8651a5e29860              # double 0.026879573583436289
	.quad	0x3febe2143a667e35              # double 0.87134753614731741
	.quad	0x3fbc10b2257c2ed8              # double 0.1096297589794476
	.quad	0x3fe436a0ef107b5d              # double 0.63166853611242468
	.quad	0x3fe8feeb1366b9a6              # double 0.78111795224485969
	.quad	0x3fb36f3ab3b2da48              # double 0.075915974494685234
	.quad	0x3fe29a1b00dd0a5f              # double 0.58131170433655288
	.quad	0x3fe27a7cfa8ebe2c              # double 0.57745217263249549
	.quad	0x3fe26fb885904c8b              # double 0.5761377915063276
	.quad	0x3fd753002f2bdba2              # double 0.36444096190046527
	.quad	0x3fe4f6d9720c83d8              # double 0.65513298297093581
	.quad	0x3fe45b81c9572718              # double 0.63617028545670262
	.quad	0x3fd0c72cdc3db52a              # double 0.26215669162668809
	.quad	0x3fee35c017bd4dee              # double 0.94406132351508432
	.quad	0x3fef68d0f5450b22              # double 0.9815449514793253
	.quad	0x3fa74371347a79f0              # double 0.045436418205316076
	.quad	0x3fe7b84de08990f7              # double 0.74124807219462141
	.quad	0x3fdded196ff5073c              # double 0.46759639676394094
	.quad	0x3fd00387f27bc51a              # double 0.25021551780726414
	.quad	0x3fc4b6b9a47cfc8c              # double 0.16182632953311715
	.quad	0x3fec71cd45e08794              # double 0.8888918270861148
	.quad	0x3fdc5ffe57ed031a              # double 0.44335898005015084
	.quad	0x3fe0783d4dd29763              # double 0.51467766952258065
	.quad	0x3fb924100251cc48              # double 0.098206520620622517
	.quad	0x3fe8bbd240691c3b              # double 0.77292740421479011
	.quad	0x3fe295249bbb6257              # double 0.5807059327735925
	.quad	0x3fe657367ac6f5b4              # double 0.69814609508437409
	.quad	0x3fd8e6c0176b1a14              # double 0.38908388411474104
	.quad	0x3fb68622f9f82ed8              # double 0.087984262492848742
	.quad	0x3fc5c79f3e5b6f60              # double 0.17015448136123279
	.quad	0x3fda4a8d9e7c7a66              # double 0.41080036618396887
	.quad	0x3f8fca6d6b334c80              # double 0.01552281840705505
	.quad	0x3fef5a1485b0e1b3              # double 0.9797461138869522
	.quad	0x3feb1c20c929488b              # double 0.84718360223111355
	.quad	0x3fd334b5a981c60a              # double 0.30009213975344606
	.quad	0x3f9a537c74149700              # double 0.025709099373805167
	.quad	0x3fc5e9f62ce4b5c8              # double 0.17120244209347235
	.quad	0x3fd3e4cb1c47d190              # double 0.31083944093486426
	.quad	0x3fb0cc071102aba8              # double 0.065613214161813205
	.quad	0x3fe3c4086da05589              # double 0.61767980014217116
	.quad	0x3fd744c67554fdfa              # double 0.36357270677760278
	.quad	0x3fd05ca25bf1837e              # double 0.25565394381379025
	.quad	0x3fe5c413652f5e33              # double 0.68018502962781324
	.quad	0x3f8c44afadf25180              # double 0.013802883621146789
	.quad	0x3fae976910d59c30              # double 0.059748919777853238
	.quad	0x3fab3d73401dde20              # double 0.053203202797643678
	.quad	0x3fe253f6b803bc3d              # double 0.57274948063230335
	.quad	0x3fd3abc57236e538              # double 0.30735908654931476
	.quad	0x3febb39778009383              # double 0.86567281186999911
	.quad	0x3fe6161dcd46c2a0              # double 0.69019975750969209
	.quad	0x3fd34cf6fcf52f2e              # double 0.30157255843072306
	.quad	0x3fea978d0a321553              # double 0.83099987021766208
	.quad	0x3fd6c9c4e0887c0a              # double 0.35606500556053844
	.quad	0x3fefbbefea6f56eb              # double 0.99169154918737711
	.quad	0x3fea42338e50ca65              # double 0.82058122440350856
	.quad	0x3fe797b50c6e9929              # double 0.73726894786958497
	.quad	0x3fe33234fcbb48ca              # double 0.59987878190647703
	.quad	0x3fe6e5960dbf2743              # double 0.7155256527414412
	.quad	0x3fccafacfed6a008              # double 0.22411119883804553
	.quad	0x3fdabdf0d41b1fd0              # double 0.4178430625292977
	.quad	0x3feb3081e9ded27b              # double 0.84967132261097278
	.quad	0x3fee8ca80caacb3e              # double 0.9546699759870092
	.quad	0x3fc4094003d0e748              # double 0.15653228937463326
	.quad	0x3fe4f5400ab4b79e              # double 0.65493776408196758
	.quad	0x3fe0f55d1f675aab              # double 0.52995163091221309
	.quad	0x3fe2b350ed463cba              # double 0.5843891748680996
	.quad	0x3fb43ee9e76b3120              # double 0.07908498668547681
	.quad	0x3fe4978a6648fa8b              # double 0.64349861123612706
	.quad	0x3fec2e5e4d73ae1c              # double 0.88066020133323119
	.quad	0x3fed1c46f6df1a17              # double 0.909701807185061
	.quad	0x3fc3a41eb214a100              # double 0.15344604201641943
	.quad	0x3fc74fe60b5beea8              # double 0.18212581209796963
	.quad	0x3fe0d44fe87ad0e0              # double 0.52591700941277608
	.quad	0x3fea078caadf2ce5              # double 0.81342156766313833
	.quad	0x3fe29db05a995bd7              # double 0.58174913115623894
	.quad	0x3fef613ed11f1cb4              # double 0.98062077373551526
	.quad	0x3fc3ae4e563574ac              # double 0.15375689706244111
	.quad	0x3fe03ddf33128bc0              # double 0.50755271887862108
	.quad	0x3fd57023cc5f3220              # double 0.33496947248639408
	.quad	0x3fe3a691a30b6cac              # double 0.61408311695722295
	.quad	0x3fed6f30fabd3fa7              # double 0.91982315990934616
	.quad	0x3fda4717b20aa21a              # double 0.41058914553517101
	.quad	0x3fd1b8afd2ac0338              # double 0.27689738820486154
	.quad	0x3fc1e1b8de95f4b8              # double 0.13970099323697638
	.quad	0x3fecb7540c84eff2              # double 0.89737894482777691
	.quad	0x3fd240819a94f4d0              # double 0.28518714996228045
	.quad	0x3fda765f859e370e              # double 0.4134749226440001
	.quad	0x3fd843e5acafe4b4              # double 0.37914411415074345
	.quad	0x3fc1993d8f63d37c              # double 0.13748902799093432
	.quad	0x3feb07c54f17113f              # double 0.84469857642446999
	.quad	0x3fe720ecb84b2f9d              # double 0.72276912684309347
	.quad	0x3fd9b054cdddadb4              # double 0.40138740638823411
	.quad	0x3fe063d8d081cbb1              # double 0.51218834613825071
	.quad	0x3fec16caf0bf58ff              # double 0.87778231640803017
	.quad	0x3fed116b3fa8d5f7              # double 0.90837633546351426
	.quad	0x3fdc702599c8c738              # double 0.4443449022102075
	.quad	0x3fec1a339700be1a              # double 0.8781984280848889
	.quad	0x3fe13f12addf9a0c              # double 0.5389493366208753
	.quad	0x3fe0e1ec547bee69              # double 0.52757851124574728
	.quad	0x3fdbdeaece5c4c5a              # double 0.43546648170849311
	.quad	0x3fd39231ad04ea92              # double 0.30579797645956674
	.quad	0x3fd48225e63974f6              # double 0.32044360621314583
	.quad	0x3fe5e5ee89c0cfdb              # double 0.68431784539142926
	.quad	0x3fc8e25001a82f50              # double 0.19440651017100175
	.quad	0x3fee2ff5033382b5              # double 0.94335413575398397
	.quad	0x3fde27228fc091a2              # double 0.47113861120512912
	.quad	0x3fd906138837b816              # double 0.39099586775307793
	.quad	0x3fe705d5870f0eb2              # double 0.71946216944384944
	.quad	0x3febc5c5645522f7              # double 0.8678919753666311
	.quad	0x3fee7bb5d8672908              # double 0.95260135904507681
	.quad	0x3fc55b6f369dbbdc              # double 0.16685285727314081
	.quad	0x3fd0db7e173e255e              # double 0.26339676160622172
	.quad	0x3fdd4db8dfa95a08              # double 0.45786878435083667
	.quad	0x3fc7d54c415c8fe4              # double 0.18619683448298396
	.quad	0x3fbf498beb287ea0              # double 0.12221598139921719
	.quad	0x3fef4d2cf3f2a6a7              # double 0.97817084928575048
	.quad	0x3fe7fe310dada4dc              # double 0.74977924987356514
	.quad	0x3fe126c391dae4ca              # double 0.53598192679705758
	.quad	0x3fc96fc9ee931d50              # double 0.19872402333406081
	.quad	0x3fe798d44099e548              # double 0.73740589730656669
	.quad	0x3fe699605ef7232a              # double 0.70622271106649248
	.quad	0x3fde7f86fcbeee02              # double 0.47653364832123668
	.quad	0x3fea9d5b4b25994f              # double 0.8317085712158504
	.quad	0x3fecb9906f3a2223              # double 0.89765187953986858
	.quad	0x3fa3a5e45bacfdf0              # double 0.038375030699622559
	.quad	0x3fe7de69840282b3              # double 0.74589992316403764
	.quad	0x3fea7950687b731d              # double 0.82730884939846627
	.quad	0x3feaa4a7744e2d84              # double 0.83259937969107555
	.quad	0x3fe0f716eee386ed              # double 0.53016230257000319
	.quad	0x3f84fc4c79ef3c40              # double 0.010246846648355512
	.quad	0x3fe4525b52409124              # double 0.63505331101308515
	.quad	0x3fba5a4e9ff96950              # double 0.10294047742482815
	.quad	0x3fc4a67bd5875f8c              # double 0.16133068014346141
	.quad	0x3fe879c843eebc79              # double 0.76486600177840025
	.quad	0x3fb7d0ea9365b0a8              # double 0.093031559930468632
	.quad	0x3fe6eb9dd6f4cd73              # double 0.7162617872585727
	.quad	0x3fd5978585e922ce              # double 0.3373731429788166
	.quad	0x3fbe0f4a32ddc7a0              # double 0.1174208044228906
	.quad	0x3fda26722ff5fb48              # double 0.40859656032255431
	.quad	0x3fcfe03be9031b68              # double 0.24903057935281514
	.quad	0x3fe178b2dd3bbe86              # double 0.54598372659343464
	.quad	0x3fbb5daa19ddfb40              # double 0.10689795619508136
	.quad	0x3fbd375089552830              # double 0.11412528374526754
	.quad	0x3fd1fde5d32054b0              # double 0.28112168901254631
	.quad	0x3fd086ab968cf4b0              # double 0.25821962072570681
	.quad	0x3fc41c45de540984              # double 0.15711282115814751
	.quad	0x3fec47d167d17d0c              # double 0.88376684453024401
	.quad	0x3fe260894c432d11              # double 0.57428421874047519
	.quad	0x3fc47d4482e43700              # double 0.16007286444840219
	.quad	0x3fd9fc4c80ba008a              # double 0.40602409907297299
	.quad	0x3feb85db93185d3c              # double 0.86009005288625628
	.quad	0x3fe172ed8751b434              # double 0.54527927808306353
	.quad	0x3f84e872203543c0              # double 0.010208980186378613
	.quad	0x3fe591841fde7194              # double 0.67401319717787311
	.quad	0x3feb368581a9a2a1              # double 0.85040545773252429
	.quad	0x3fe3911cf329117a              # double 0.61146399967451193
	.quad	0x3fa4e4e3286db4e0              # double 0.04080877178680864
	.quad	0x3fed9348fa8b0d57              # double 0.92422913488591518
	.quad	0x3fd92c87e7a9e756              # double 0.39334294913679935
	.quad	0x3fe487078b47b3fe              # double 0.64148308947699184
	.quad	0x3fb706186de19b10              # double 0.089936758829576968
	.quad	0x3fc006378ecd1e84              # double 0.12518972847668774
	.quad	0x3fef0afcef82c363              # double 0.97009131221248556
	.quad	0x3f84b456b4f2c6c0              # double 0.010109593770127545
	.quad	0x3fc5345314f91580              # double 0.16565931819983959
	.quad	0x3fdd55385e5f74f0              # double 0.45832642761327147
	.quad	0x3fec9d9a53e087b3              # double 0.89423862821808198
	.quad	0x3fca921ed1be9dfc              # double 0.2075842403548761
	.quad	0x3fe6653a0986c557              # double 0.69985677586206918
	.quad	0x3fde012e8367630a              # double 0.46882212479026519
	.quad	0x3fa2f401b63d52b0              # double 0.037017873283422431
	.quad	0x3fe1ad3f08748799              # double 0.55239822055249299
	.quad	0x3fd8aa3e0afb7dbe              # double 0.38539076874254963
	.quad	0x3fe882d049e259f5              # double 0.7659684603739253
	.quad	0x3fe76f39dc39e0f4              # double 0.73232739460857355
	.quad	0x3fef355fc43c3815              # double 0.97526539160912995
	.quad	0x3feef1815213e252              # double 0.96698061018748604
	.quad	0x3fed4a8c8a1e5620              # double 0.91535021759290557
	.quad	0x3fc42e62166a10b4              # double 0.15766550154160586
	.quad	0x3fb90486da997c70              # double 0.097725323075324999
	.quad	0x3fe3c8ccfbb4cc93              # double 0.61826180611969261
	.quad	0x3fb77659d2b63b40              # double 0.091649640982933711
	.quad	0x3fd0c40bd22bbb42              # double 0.26196570896620497
	.quad	0x3fcdb05f3e7c092c              # double 0.23194494772912699
	.quad	0x3fd0360732818b38              # double 0.25329761440496013
	.quad	0x3fcfdb96574cb140              # double 0.24888877165484224
	.quad	0x3feecd16a1dd9469              # double 0.96253520597805419
	.quad	0x3fd7124bab5fd170              # double 0.36049167381067715
	.quad	0x3fe57019906d9b18              # double 0.66993406494734398
	.quad	0x3fae5341a8f86940              # double 0.059228946567787322
	.quad	0x3fe4a6a41f664caf              # double 0.64534193165527209
	.quad	0x3fa355caa78f1e10              # double 0.037763913110719582
	.quad	0x3fc3dcc85566a880              # double 0.15517524881335376
	.quad	0x3fc8aa0d752ce314              # double 0.1926895925660338
	.quad	0x3fe294765b64f63c              # double 0.58062284326997071
	.quad	0x3fee482a43998780              # double 0.94630921557494219
	.quad	0x3fe215c4ab8c843c              # double 0.56515725618022072
	.quad	0x3f844ae1e2fb9340              # double 0.0099084517855289044
	.quad	0x3fcf3d69d01c1218              # double 0.24406168614963586
	.quad	0x3feb39f0c5725d2b              # double 0.85082281650367031
	.quad	0x3fab193d85ef4690              # double 0.052926943396994663
	.quad	0x3fed64873906a835              # double 0.91852151048556741
	.quad	0x3fe54d71c937195a              # double 0.66570367145395015
	.quad	0x3fe4dee2181b2796              # double 0.65220741947381344
	.quad	0x3fefc0d4f619ce26              # double 0.9922890478760038
	.quad	0x3fe1b871cfdd753c              # double 0.55376520727774148
	.quad	0x3fe17fc6e4033e6d              # double 0.54684776815152036
	.quad	0x3fdd22055bdca774              # double 0.45520147295848479
	.quad	0x3fd29a54d7a24392              # double 0.29066964204781087
	.quad	0x3fecc5edc0cd6f02              # double 0.89916122109158914
	.quad	0x3fa0bd57db00ade0              # double 0.032694573863718324
	.quad	0x3fe9cc62f640d58a              # double 0.80619953247394105
	.quad	0x3fd3799e281641c0              # double 0.30429796137562093
	.quad	0x3fe9cf49ab5ddbb1              # double 0.80655368299527741
	.quad	0x3fc8613407803c70              # double 0.19046640745407073
	.quad	0x3fb4ca97a1bd1480              # double 0.081216313349687041
	.quad	0x3fc8cb3b6f0cb7f4              # double 0.19370215341899633
	.quad	0x3fec1b711e9f5472              # double 0.87834983807500877
	.quad	0x3fc58c734d3adcf8              # double 0.16834870596878893
	.quad	0x3fd21ebe24278bd2              # double 0.28312638788901012
	.quad	0x3fea8b2f9929b8f7              # double 0.82949047007221466
	.quad	0x3fcf113a5ebaadb0              # double 0.24271325707864611
	.quad	0x3fe1783109ab09ba              # double 0.54592182052902349
	.quad	0x3fe04ba85687ad50              # double 0.50923554325474107
	.quad	0x3fe2e72e389e98a2              # double 0.59072028215884509
	.quad	0x3fd0c444a14ca3a2              # double 0.26197925331012517
	.quad	0x3fb4894b165c6b00              # double 0.080219929656248468
	.quad	0x3fea5ca9ccb567ab              # double 0.82381143552924152
	.quad	0x3fc59ad257cf8b74              # double 0.16878728187210934
	.quad	0x3fef409fc37377dd              # double 0.97663868116410024
	.quad	0x3fd9fd9cd15620c0              # double 0.40610428278933952
	.quad	0x3fed088d4862d888              # double 0.90729393136895542
	.quad	0x3fe2cf7a949633d8              # double 0.58782700558515
	.quad	0x3fe26f51e47d731c              # double 0.57608885409317478
	.quad	0x3fe128608ccb7508              # double 0.53617885111785402
	.quad	0x3fb2717487ec2ed0              # double 0.0720436889498004
	.quad	0x3fe4b864679c6b51              # double 0.64750881420637019
	.quad	0x3fda4d49c115d816              # double 0.41096729141224964
	.quad	0x3fe9c48249ab57f4              # double 0.80523790730035083
	.quad	0x3fe82e3bb63cb9a0              # double 0.75564370721058438
	.quad	0x3fe9952451587bab              # double 0.79945579421825153
	.quad	0x3fc328567b9a10b4              # double 0.14966851268048276
	.quad	0x3fe0f287fdf79504              # double 0.52960586169197699
	.quad	0x3fe99b1f509e5be4              # double 0.80018583055322922
	.quad	0x3fe452c0a7d7a22b              # double 0.6351016309900549
	.quad	0x3fd222b83af10aae              # double 0.28336911922466868
	.quad	0x3fd4dbd16277af3c              # double 0.32591662040680425
	.quad	0x3fc2f769307c7d40              # double 0.14817538135046426
	.quad	0x3fe80bf27f666f16              # double 0.75145840533102404
	.quad	0x3fdc4d287408e10c              # double 0.44220935184013466
	.quad	0x3fe32a2a15c5d36d              # double 0.5988970208405654
	.quad	0x3fe64bb5e265d977              # double 0.69674200266199093
	.quad	0x3fa4551f87035770              # double 0.039711938124738277
	.quad	0x3fa93b3eeba23f80              # double 0.049280134452714286
	.quad	0x3fe72c9e8f299d78              # double 0.72419670068204223
	.quad	0x3fea9c06feef33ac              # double 0.83154630462523959
	.quad	0x3fe12e75bfc3cd3a              # double 0.53692138151237789
	.quad	0x3fe82d3ffb9994e6              # double 0.75552367344485272
	.quad	0x3fea64677086fdc0              # double 0.82475635507574196
	.quad	0x3febbf8050bf53c5              # double 0.86712661524745072
	.quad	0x3f9246405b8d76e0              # double 0.01784611281197257
	.quad	0x3fe6b23eff2c845c              # double 0.70925855482722566
	.quad	0x3faf3e1af48b06d0              # double 0.061020700789880089
	.quad	0x3fd90f78e5cebec0              # double 0.39156935159824613
	.quad	0x3fed42e0f52bc3a7              # double 0.91441390881492601
	.quad	0x3fdf93cb8a253466              # double 0.49339569559817276
	.quad	0x3fc7d1dda133596c              # double 0.18609209414598682
	.quad	0x3fd421f24a543d10              # double 0.31457192667672107
	.quad	0x3fe2b08173209de0              # double 0.58404610143491809
	.quad	0x3fdcf72902fc02d4              # double 0.45258546153494916
	.quad	0x3fea387b77133d12              # double 0.81939481026521066
	.quad	0x3fd0409767fc87fc              # double 0.25394234805037263
	.quad	0x3fd9bc0bf2ef7076              # double 0.40210245823050828
	.quad	0x3fd2d34ec9c5c602              # double 0.2941472025332531
	.quad	0x3fcaeb9bd8b233cc              # double 0.21031520920624158
	.quad	0x3fee1faeb5dac8d1              # double 0.94136748808366566
	.quad	0x3fe62b7ba65c7231              # double 0.69280798427968737
	.quad	0x3fed0763e90ea2ba              # double 0.90715213316897025
	.quad	0x3feabb23181371d7              # double 0.83534388258299941
	.quad	0x3fe4b7f4dba2771f              # double 0.64745562455548
	.quad	0x3fdf9120fcb1a1fa              # double 0.49323296239029413
	.quad	0x3fb3aa1a63c05d80              # double 0.076814317086578043
	.quad	0x3fe4acb3bc09fe42              # double 0.64608179785131647
	.quad	0x3fba7e6355692518              # double 0.1034910281679412
	.quad	0x3fcd7f15ec727300              # double 0.23044084592120129
	.quad	0x3fc6db52e8072ba4              # double 0.17856823281757983
	.quad	0x3fe0aa29690fcfea              # double 0.52077169914127563
	.quad	0x3fee85c67f47457b              # double 0.95383000239432592
	.quad	0x3fd1372568995e3e              # double 0.26899085249667454
	.quad	0x3fe4054dad5fc9ef              # double 0.62564739095824773
	.quad	0x3fb0dfdc7eb59f30              # double 0.065915852484633275
	.quad	0x3fec7e0deef7b460              # double 0.89038750336989025
	.quad	0x3fdfce91ee4683dc              # double 0.49698303479277484
	.quad	0x3fc8294855e0c8cc              # double 0.18875984376206245
	.quad	0x3fcd7ec940f1b070              # double 0.2304317061529022
	.quad	0x3fe0fff0d1357f75              # double 0.53124276028755324
	.quad	0x3fdf141aba964ae4              # double 0.4856020757808166
	.quad	0x3fe8bc972307e2c6              # double 0.77302128641084589
	.quad	0x3fecd2b4ea117740              # double 0.90072103229952205
	.quad	0x3fdc6be79a58c556              # double 0.4440859801571454
	.quad	0x3fd4d3ad53ef0374              # double 0.32541974255223427
	.quad	0x3fe35c66930a74d1              # double 0.60502938002505335
	.quad	0x3fd6e00ff4be4af6              # double 0.35742567921367596
	.quad	0x3fec0a5ae3fc6194              # double 0.87626404312600181
	.quad	0x3fd16a56437f467e              # double 0.2721152934219403
	.quad	0x3fae053c6b7ea740              # double 0.058633697626034209
	.quad	0x3fe79017e0722e55              # double 0.7363395103179281
	.quad	0x3fec37ca1a2cfda9              # double 0.8818102370495825
	.quad	0x3f832e25a00ac040              # double 0.0093653621164265787
	.quad	0x3fb5b1ad9d8460e0              # double 0.084742403942417166
	.quad	0x3fdeba2855f51d54              # double 0.48011215585980449
	.quad	0x3fdad39002909392              # double 0.41916275263275182
	.quad	0x3fe85e2b11d09b9f              # double 0.76149514655559247
	.quad	0x3fe844848144adb9              # double 0.75836396453580968
	.quad	0x3fe6f20f3dacb87a              # double 0.717048283060435
	.quad	0x3fe6ca0ac04736e6              # double 0.71216332964260398
	.quad	0x3fe97f442eea3e55              # double 0.79678544200028034
	.quad	0x3fa4605849e494f0              # double 0.039797553081635573
	.quad	0x3fa6ebd5e7d23ce0              # double 0.044768032597056751
	.quad	0x3fe2e15bd3a73c4b              # double 0.59000960672882152
	.quad	0x3fefded6242f6633              # double 0.99595171992695552
	.quad	0x3fe5de479dc33301              # double 0.6833837586687822
	.quad	0x3fe8e05ea03bea39              # double 0.77738887115203348
	.quad	0x3fa6bb5ffb959ff0              # double 0.044398307286257821
	.quad	0x3fe8fa65ef8d18c8              # double 0.78056618487678353
	.quad	0x3fc4aeea883e24a8              # double 0.16158801701047776
	.quad	0x3fd39c6b464eed62              # double 0.30642206064267985
	.quad	0x3feec113bf868d10              # double 0.96106898696271692
	.quad	0x3fe365128612413f              # double 0.6060879343586193
	.quad	0x3feb2b843ab0b88d              # double 0.84906207526161526
	.quad	0x3fd83976cf27ec2a              # double 0.3785073302275942
	.quad	0x3fe4781731558f10              # double 0.63965949664677346
	.quad	0x3fda05236f0d15ac              # double 0.40656362385592604
	.quad	0x3fed0c4dd6fd91da              # double 0.9077519606622062
	.quad	0x3fec75cba70dfa91              # double 0.88937933566906413
	.quad	0x3fc10ee179b9ba08              # double 0.13326662486674956
	.quad	0x3fef44da613f9973              # double 0.97715491288981437
	.quad	0x3fde0bb51b00b7d2              # double 0.46946456562988914
	.quad	0x3fd1d83204c76b88              # double 0.27882051912973127
	.quad	0x3fea4b2a53e538df              # double 0.82167545686550258
	.quad	0x3fdc51a9e3026062              # double 0.44248435181498824
	.quad	0x3fd77b856165e378              # double 0.36691412459872863
	.quad	0x3fb876881a944070              # double 0.095558649529495331
	.quad	0x3fd256a74cf68024              # double 0.28653891101748941
	.quad	0x3fcef0bbbeaa23e8              # double 0.24172159967227391
	.quad	0x3fe2f01a951e7f9c              # double 0.59180955052214612
	.quad	0x3fe0de591454cfa3              # double 0.52714208575206489
	.quad	0x3fdb1155302177c2              # double 0.42293290806071238
	.quad	0x3fde1be88442754a              # double 0.47045338550545479
	.quad	0x3fd482ee2b1bd476              # double 0.32049135408244156
	.quad	0x3fea6263f26b4b11              # double 0.8245105490444492
	.quad	0x3fde0d5901a8b456              # double 0.46956467782985578
	.quad	0x3fe80b48b7b6848e              # double 0.75137744790494465
	.quad	0x3fd7f82223f1dd70              # double 0.37451985845787927
	.quad	0x3fe40ae309e5c914              # double 0.62632896359562773
	.quad	0x3fcd710748c0a67c              # double 0.23001185467119345
	.quad	0x3fea39ef6c6e3688              # double 0.81957217386089187
	.quad	0x3fcdab25d7afe568              # double 0.23178551704021833
	.quad	0x3fd2141de6fefd70              # double 0.28247783239563429
	.quad	0x3fdcd6c87a91e6f4              # double 0.45060932130546338
	.quad	0x3fd23fe382fa424a              # double 0.28514945784357748
	.quad	0x3fed44b1279c254f              # double 0.91463525520627253
	.quad	0x3faf6a1b084878a0              # double 0.061356396447295625
	.quad	0x3fbbe0189ba87240              # double 0.10888818550342538
	.quad	0x3fecdb9027c7e718              # double 0.90180213708592571
	.quad	0x3fe8d651072efa9f              # double 0.77616168406514763
	.quad	0x3fea3d61ab0cb72e              # double 0.81999286087168399
	.quad	0x3fd64dcc47fb148e              # double 0.3484984114587143
	.quad	0x3fd8614857c120d4              # double 0.38093765802160573
	.quad	0x3fdb149cf6fff45c              # double 0.42313312645985035
	.quad	0x3fc2f21f288c0598              # double 0.14801396827537583
	.quad	0x3fcfa1fbe2e78810              # double 0.24713085727040651
	.quad	0x3fe859f72b0a5789              # double 0.76098211675956506
	.quad	0x3fcbff123ada82f0              # double 0.21872165559491163
	.quad	0x3fc97cbae9eb6814              # double 0.19911896154263842
	.quad	0x3fc69d8673ba0040              # double 0.17668228769980665
	.quad	0x3fe83975b27b59e0              # double 0.75701413020834351
	.quad	0x3fde1b2e6d2412d2              # double 0.47040901811878399
	.quad	0x3f6056822763fc00              # double 0.0019943754260789426
	.quad	0x3fcc491cfdde0ea4              # double 0.22098123927945779
	.quad	0x3fb1738f28aa9158              # double 0.068169543674746591
	.quad	0x3fca060c8f79ed54              # double 0.20330960279157273
	.quad	0x3fd19013c3dc67c4              # double 0.27441877486273492
	.quad	0x3fd41267b4c9eede              # double 0.31362335829883914
	.quad	0x3fee74e7d5ab0b6d              # double 0.9517707036214752
	.quad	0x3fd6c3e1164cf57e              # double 0.35570552041811954
	.quad	0x3fefb6348fb3af1a              # double 0.990991860072856
	.quad	0x3fe37eac56962b43              # double 0.60921303664631699
	.quad	0x3fe7a81712d15e96              # double 0.73926881480561479
	.quad	0x3fc129046bc5b73c              # double 0.13406424772568382
	.quad	0x3fe7998f9e696658              # double 0.73749524059094096
	.quad	0x3fde6a664ec87c2e              # double 0.47524411863008964
	.quad	0x3fb29fb5aa20b7b8              # double 0.072749475512607797
	.quad	0x3fc4b95dfe5791e8              # double 0.161906956854309
	.quad	0x3fed1c01b99e77bd              # double 0.90966879132951528
	.quad	0x3fbe0029cea1d020              # double 0.11718999190071644
	.quad	0x3fe246ea60e1edb7              # double 0.57115668222780058
	.quad	0x3fdb87a1bb968a10              # double 0.43015330618996561
	.quad	0x3f9bc36b1c14d7e0              # double 0.027112649525598331
	.quad	0x3fdaf6693e4db62a              # double 0.42128974041301837
	.quad	0x3fe69e6ec5bda34b              # double 0.7068399297832938
	.quad	0x3fe2f05129fec16c              # double 0.59183557703185619
	.quad	0x3fdbf2974beff058              # double 0.43668157974002986
	.quad	0x3fcc4eb0bbc2e60c              # double 0.22115143936189019
	.quad	0x3fe44fb4d0e1201f              # double 0.634729774444171
	.quad	0x3fd2553bf76c7c10              # double 0.28645228540875767
	.quad	0x3f9b7efa73ab8ae0              # double 0.026851571378652461
	.quad	0x3fdca8a2c3da3408              # double 0.44779271246153529
	.quad	0x3fe1a0e0b30bc176              # double 0.55088839502245324
	.quad	0x3fe89c8a141d3e36              # double 0.76910880974350593
	.quad	0x3feeaf5cebd21766              # double 0.95890661295628088
	.quad	0x3fecdd3e27645d79              # double 0.90200717633972183
	.quad	0x3fdee7a5e6002a3c              # double 0.48288867436409411
	.quad	0x3fcf7b38f273e620              # double 0.24594795073044029
	.quad	0x3fe0aff33cba968e              # double 0.52147828923325945
	.quad	0x3feca080950c14ce              # double 0.89459256277828003
	.quad	0x3fdbf4cfdd15dbc4              # double 0.43681713667268363
	.quad	0x3fcb20c9540b43ac              # double 0.21193806270323756
	.quad	0x3fe240410ba8dc79              # double 0.57034351613300693
	.quad	0x3fea760bb4e39d23              # double 0.82690987901597557
	.quad	0x3feb459f3835923a              # double 0.85224877336856442
	.quad	0x3fe12bce907faef1              # double 0.53659752104201008
	.quad	0x3f92f28cf78eb380              # double 0.018503382310587124
	.quad	0x3fca1bd26de9cda8              # double 0.20397405974254679
	.quad	0x3fc7bffc92fb9b08              # double 0.18554646660705765
	.quad	0x3fddf313af07eb70              # double 0.46796123593201511
	.quad	0x3f8d04761c46fb80              # double 0.014168665636018707
	.quad	0x3fcbbf56e3cf319c              # double 0.21677671550277189
	.quad	0x3fe8a6e1d680c5f1              # double 0.77037135977860605
	.quad	0x3fe8b04f49b0de7c              # double 0.77152218239548586
	.quad	0x3fce1a9d9a7f808c              # double 0.23518724483347275
	.quad	0x3fe0fa93dbd6dc5f              # double 0.53058808266986179
	.quad	0x3fe145e0a7ce2d47              # double 0.53977997564781155
	.quad	0x3fe4146c4bddd661              # double 0.62749304597555178
	.quad	0x3fc600963bcb4954              # double 0.17189290923722444
	.quad	0x3fa0ea0c0ef35d90              # double 0.033035637688665465
	.quad	0x3fea31f07ebf254a              # double 0.81859612231452528
	.quad	0x3fe763203be09789              # double 0.7308503312567477
	.quad	0x3fe15d713163d1dc              # double 0.54265651365727363
	.quad	0x3fd4055b32cd2f1e              # double 0.3128269191845322
	.quad	0x3fdb254dff5bfe32              # double 0.42415189683376575
	.quad	0x3fd0b1376c8caf18              # double 0.26081643677274391
	.quad	0x3fee3020a956988d              # double 0.94337494920616083
	.quad	0x3fe1908280ee486b              # double 0.54889035398288166
	.quad	0x3fe40ad04c431a56              # double 0.62632002730317526
	.quad	0x3feec32e3c023ae2              # double 0.96132575722171176
	.quad	0x3fe2a6a60380ae03              # double 0.58284283336746545
	.quad	0x3fe16111f053dbd2              # double 0.54309937418917742
	.quad	0x3fe5c3eeb232c09e              # double 0.6801675301012613
	.quad	0x3fe269555234f88d              # double 0.57535806709326354
	.quad	0x3fc90070cd15a3e0              # double 0.19532594694035676
	.quad	0x3fe769e0866efc01              # double 0.73167444473790522
	.quad	0x3fe3540f1e7ee60d              # double 0.60401111561003662
	.quad	0x3fd68a14a57714f6              # double 0.35217777403552419
	.quad	0x3fe6811a18fb238e              # double 0.70325951460937275
	.quad	0x3fdf11d41d5f2e7c              # double 0.48546316974964276
	.quad	0x3f9c3e1b2ae23140              # double 0.027580666057972936
	.quad	0x3fe539593027e27f              # double 0.66325053601674699
	.quad	0x3fe3c2f29444a7ad              # double 0.61754731138829799
	.quad	0x3f95ddab319bec00              # double 0.021353411581895188
	.quad	0x3fef3525e8ef4a24              # double 0.97523780341208921
	.quad	0x3fabe5b9b1cf1b20              # double 0.054487040476990822
	.quad	0x3fecfc451d6dacb2              # double 0.90579467532861302
	.quad	0x3fda63383a797432              # double 0.41230588636773569
	.quad	0x3feb051f31ab1f85              # double 0.8443752260291012
	.quad	0x3fcc38b6760d3594              # double 0.2204807354377577
	.quad	0x3feb1988c6b5fcb6              # double 0.84686697779388598
	.quad	0x3fb24383a9fcef68              # double 0.07134268665407506
	.quad	0x3fdcaa2ec8480800              # double 0.44788713034370176
	.quad	0x3fdeae6d19abba46              # double 0.47939612872042792
	.quad	0x3fe82077e2e30307              # double 0.75396341623135832
	.quad	0x3fe25ab596cda4be              # double 0.57357291654366072
	.quad	0x3fd49a6f353c1c9e              # double 0.32192592810356213
	.quad	0x3fe1eeae2674b83d              # double 0.56038577567029046
	.quad	0x3feaf9fedd755ca2              # double 0.8430170369491814
	.quad	0x3fcbb45d292c2754              # double 0.21644176969885598
	.quad	0x3fc5c11a355fb8c0              # double 0.16995551687381827
	.quad	0x3fe89724eb5dd911              # double 0.76845022172963884
	.quad	0x3fcc9f7c50c41bb0              # double 0.22361711448340094
	.quad	0x3fe4ae233cfac875              # double 0.6462570372589328
	.quad	0x3fe50b1c56535e83              # double 0.65760628567200319
	.quad	0x3fe14954a1643fec              # double 0.54020148774907062
	.quad	0x3fe71debb236678e              # double 0.72240242774135921
	.quad	0x3fb2d9fd539d8c90              # double 0.073638756669924144
	.quad	0x3fde22a61619118e              # double 0.47086479337692644
	.quad	0x3fe45578724869d2              # double 0.63543340988990793
	.quad	0x3fe6e02301ac52d9              # double 0.71486044241700164
	.quad	0x3fe0e11a75b4cc96              # double 0.52747843732358279
	.quad	0x3fe1e228cb0c8825              # double 0.55885734231947437
	.quad	0x3fa8f35874e4b0e0              # double 0.048731579083637788
	.quad	0x3fdd38b7c30f37fe              # double 0.45658678101324301
	.quad	0x3fe345f3c201b207              # double 0.60228908435743811
	.quad	0x3fa9fc792cffcc60              # double 0.050754343741481689
	.quad	0x3febfa33963f2359              # double 0.87429217667623071
	.quad	0x3fc9f94f79f2ab78              # double 0.20292085127342907
	.quad	0x3f9e581174853f60              # double 0.029632828461500949
	.quad	0x3fc56408e5790ae8              # double 0.16711531834342641
	.quad	0x3fe2f362aa3f6190              # double 0.5922101330898375
	.quad	0x3fe60021f66c0187              # double 0.68751619462277425
	.quad	0x3fdfb7eb14067920              # double 0.49560048060983952
	.quad	0x3fefb393c02f2c9c              # double 0.99067103897086239
	.quad	0x3fd69e5c25337534              # double 0.35341552384291508
	.quad	0x3fb0ef9bccb73ad0              # double 0.066156136969975465
	.quad	0x3fec95b851e79017              # double 0.89327636715870795
	.quad	0x3fe585ac9763c58a              # double 0.67256764953906267
	.quad	0x3fb2d0d5f481e140              # double 0.073499080843139275
	.quad	0x3fd6a846fc6b0926              # double 0.35402083063321965
	.quad	0x3feb13099ec6d2c8              # double 0.84607392321648778
	.quad	0x3fd7baf78cd97c3a              # double 0.3707865596279053
	.quad	0x3fc2fe8a50ef0128              # double 0.14839295341335768
	.quad	0x3fd8d858dea06a24              # double 0.38820478192215746
	.quad	0x3fe9776870d997c6              # double 0.7958261684514063
	.quad	0x3fe70152b0ed0bc1              # double 0.71891150050975494
	.quad	0x3fe6c7699d6a517d              # double 0.7118423532979673
	.quad	0x3fee6455c6c4cd13              # double 0.94974793264410307
	.quad	0x3fa0ecd9155ecdf0              # double 0.033057006701166958
	.quad	0x3fd7eacac22c9760              # double 0.37370556795428023
	.quad	0x3fc4311a0ca7bc7c              # double 0.15774846666269926
	.quad	0x3fe769e847f83fcd              # double 0.73167814308725954
	.quad	0x3fe08e1ead6629e0              # double 0.51734861247069475
	.quad	0x3fa55f4b4633a2e0              # double 0.041742660827201794
	.quad	0x3fe5eaa8c3aebc56              # double 0.68489492625475168
	.quad	0x3fed04643fe80383              # double 0.90678608400058669
	.quad	0x3fe6d47fcd9cee99              # double 0.71343984755317813
	.quad	0x3fe8400631598bd8              # double 0.75781545294409636
	.quad	0x3fe0efcdbea0fae2              # double 0.52927291137879373
	.quad	0x3fdd8b05b79a797a              # double 0.46161024980565168
	.quad	0x3fed0790d7505e67              # double 0.90717355779174802
	.quad	0x3fe0b155034ef393              # double 0.5216469826333302
	.quad	0x3feb8780e6b9e131              # double 0.86029095710458681
	.quad	0x3fdf90f39ba92836              # double 0.4932221431851106
	.quad	0x3fc5cb6a98450fdc              # double 0.17027027545020601
	.quad	0x3fef90ea2cc4a8c7              # double 0.98643978828229073
	.quad	0x3fe26d36634b0c8f              # double 0.5758315982169665
	.quad	0x3fa21cd9c1df3290              # double 0.035376362720488719
	.quad	0x3fa5182e29eef430              # double 0.041200106257271663
	.quad	0x3fd8e37f4ed59852              # double 0.38888533304851081
	.quad	0x3fe2cbbbdd23ca78              # double 0.58736985389107499
	.quad	0x3fed4d83f73e0326              # double 0.91571234025477533
	.quad	0x3fd306351cb86a0c              # double 0.29725387387011959
	.quad	0x3fe9b26f5bdeb835              # double 0.8030316156707672
	.quad	0x3fe4c743444ae7cf              # double 0.64932406748197902
	.quad	0x3feead492c04be98              # double 0.95865305516595622
	.quad	0x3fea6ceb7f9c9da0              # double 0.82579588817764104
	.quad	0x3fcec96ed6aa2a98              # double 0.24052224618602192
	.quad	0x3feb9b5789bf45ca              # double 0.86271263984434055
	.quad	0x3fdee4b45ac2e984              # double 0.48270901549735634
	.quad	0x3fadb68d780ba3b0              # double 0.058033390907275773
	.quad	0x3fbb7952cb1f1f38              # double 0.10731999835035999
	.quad	0x3fd773098df1f14c              # double 0.36639632093262686
	.quad	0x3febcd25b55cd581              # double 0.86879239485158177
	.quad	0x3fc449b94261c930              # double 0.15849986783320835
	.quad	0x3fd1171eb25c1da6              # double 0.26703612726165671
	.quad	0x3fe296fe57b030e4              # double 0.58093182684526967
	.quad	0x3feca211fa5bdf06              # double 0.89478396318642761
	.quad	0x3f8e7d351f3c4c80              # double 0.014887251868947127
	.quad	0x3fd002c51158ea82              # double 0.25016905492854147
	.quad	0x3fd3a6efed030ad4              # double 0.30706403871242327
	.quad	0x3fe802f158196191              # double 0.75035922247757203
	.quad	0x3fe73da180532ae4              # double 0.72627329886867331
	.quad	0x3fd46f3d63ba73d6              # double 0.31928953875632027
	.quad	0x3fe52ab1ccca5f47              # double 0.66146173475406378
	.quad	0x3fed15398a4aeffa              # double 0.90884091387078958
	.quad	0x3fef2f48ca90b40b              # double 0.97452201427006579
	.quad	0x3fdaff5f3b99fe62              # double 0.42183667011702231
	.quad	0x3fedf5e66cfe8f16              # double 0.93626710212672282
	.quad	0x3fc3ba0bfc3a7b00              # double 0.15411519828645481
	.quad	0x3fa81b4b250dd4d0              # double 0.047083233140179481
	.quad	0x3fbd5873bd15bac8              # double 0.11463092199640379
	.quad	0x3fe6001294fa1e39              # double 0.68750886056017813
	.quad	0x3fd5b639e9124468              # double 0.3392472053611244
	.quad	0x3fe0811831e8e8a2              # double 0.51575860736854318
	.quad	0x3fe362359b66d246              # double 0.6057384524525069
	.quad	0x3fee50c7faa77674              # double 0.94736098247422129
	.quad	0x3fe3eea7d9df987c              # double 0.62288277200128972
	.quad	0x3fb83e91a74f7d28              # double 0.094704726550379648
	.quad	0x3fecd4fb48e54c12              # double 0.90099872815551607
	.quad	0x3fea35d2d7bbcf50              # double 0.81907026420092599
	.quad	0x3fd7adb73504ae08              # double 0.36997776200834709
	.quad	0x3fe4fa6826fbee15              # double 0.65556724180300086
	.quad	0x3fbbe68d4aad84f8              # double 0.10898669312657094
	.quad	0x3fe34d822d515784              # double 0.60321148730393803
	.quad	0x3fea117d25c37b92              # double 0.81463487029746973
	.quad	0x3fb6c6318405d430              # double 0.088961691600915271
	.quad	0x3fd2c6d360a0aa28              # double 0.29338535724915227
	.quad	0x3fe9331368c79f72              # double 0.78748484101104865
	.quad	0x3fec1025890dd28c              # double 0.87697102325781051
	.quad	0x3fe5e8f2e754261c              # double 0.6846861379755782
	.quad	0x3fed38e7af8ae120              # double 0.91319641385692662
	.quad	0x3fca909b6ac04cb8              # double 0.20753805839976791
	.quad	0x3fef4feba269f9bc              # double 0.97850591393926533
	.quad	0x3fe0277ac497e174              # double 0.50481928250432739
	.quad	0x3feb64b6e2f05cc7              # double 0.85604423831946341
	.quad	0x3fd92df8865b8fc8              # double 0.39343083496919151
	.quad	0x3f75d60d123c2d00              # double 0.0053310881228398888
	.quad	0x3febdeeee05c1062              # double 0.8709635145210195
	.quad	0x3fe29447ab894d3e              # double 0.58060058119955449
	.quad	0x3fe8ef444ad5d46e              # double 0.77920736900581544
	.quad	0x3fd9d93c35fe0078              # double 0.40388398430514583
	.quad	0x3fe3e0c7ccaaf6b6              # double 0.62118902181801761
	.quad	0x3fe5f75bfaab368b              # double 0.68644522627592275
	.quad	0x3fc8edfe50a849b8              # double 0.19476298273418791
	.quad	0x3faadd61ec988e70              # double 0.052470264560068425
	.quad	0x3fefef24c9a8ece1              # double 0.99794234644596369
	.quad	0x3fca5e470428def0              # double 0.2060021181402969
	.quad	0x3f8084e180afdc80              # double 0.0080659501454489746
	.quad	0x3fb2107b7532e578              # double 0.070563999283782652
	.quad	0x3fe2e3797debdf2d              # double 0.59026789278047931
	.quad	0x3fc90e1820684a88              # double 0.19574262220756489
	.quad	0x3fd64a65e1c89092              # double 0.34829089211621878
	.quad	0x3fd186318d656ed8              # double 0.27381552513337004
	.quad	0x3fe3ddbda423c793              # double 0.62081796701953562
	.quad	0x3fdbc4f96ce58e04              # double 0.43389735826914966
	.quad	0x3fe0c5e972e12fda              # double 0.52415916860035883
	.quad	0x3fda1e33f0175288              # double 0.40809343763729844
	.quad	0x3fc4a53416e39180              # double 0.1612916099321744
	.quad	0x3fc5d5b9f5ffeda0              # double 0.17058491241173801
	.quad	0x3fe0c4d58acc148f              # double 0.52402760609460752
	.quad	0x3feb63b74d55a8b7              # double 0.85592236618437922
	.quad	0x3feb3e0d336afbd2              # double 0.85132465403136792
	.quad	0x3fe170ec14f645a1              # double 0.54503444761410347
	.quad	0x3fe617bf84e55cc3              # double 0.69039894062270724
	.quad	0x3fecdb63f7cc9fa6              # double 0.9017810668783468
	.quad	0x3fe330fc18da30fc              # double 0.59972958425490175
	.quad	0x3fdbe408c7ee0a24              # double 0.43579310917280822
	.quad	0x3f81fb630b1d66c0              # double 0.0087802636877997164
	.quad	0x3f71ced7aa585900              # double 0.0043476509504414285
	.quad	0x3fdd0e74f65d69ca              # double 0.45400737818786452
	.quad	0x3fec0d81aeba5e2f              # double 0.87664875151216914
	.quad	0x3fb1742705b40750              # double 0.068178595440284484
	.quad	0x3fcc4c2e8d20c06c              # double 0.22107488528263575
	.quad	0x3fee2e6a16ecc7c0              # double 0.94316582181476604
	.quad	0x3fe2a9fa56ab7202              # double 0.58324925353696266
	.quad	0x3fda34c1d32dbe6a              # double 0.40947003958624484
	.quad	0x3fe6cf37c24a675d              # double 0.71279514262571875
	.quad	0x3fc46565dcd61a68              # double 0.1593444183638042
	.quad	0x3fcf611aa36bd91c              # double 0.24515088061861767
	.quad	0x3fb89a642dc67890              # double 0.096105824637989778
	.quad	0x3fd97bcf17ead9d2              # double 0.39818169913942569
	.quad	0x3fe904254851eefb              # double 0.78175605893144906
	.quad	0x3fd2ebff851d7fd4              # double 0.29565418242964125
	.quad	0x3fe6caa8135760f7              # double 0.71223834779360018
	.quad	0x3fd258bf1d85696a              # double 0.28666665919231227
	.quad	0x3fe5cc9b301b088b              # double 0.68122634311318231
	.quad	0x3fcf91130358124c              # double 0.2466148153618114
	.quad	0x3faa64a72ae849e0              # double 0.051549171436039876
	.quad	0x3fedd8731f6831f6              # double 0.93267208227331255
	.quad	0x3fe54d236e894691              # double 0.66566630925281534
	.quad	0x3fe7726edcb8c109              # double 0.73271887883859776
	.quad	0x3fe8093434fd9b5c              # double 0.75112352704750717
	.quad	0x3fe6d89b71d0e1d2              # double 0.71394130925824073
	.quad	0x3fe566a25dd434d5              # double 0.66877859426463238
	.quad	0x3fc07d6656e5ee48              # double 0.12882689707827155
	.quad	0x3fe3004f3bbe3305              # double 0.59378778141544386
	.quad	0x3f9c689f22fd6460              # double 0.027742849836929984
	.quad	0x3fd8a225e72e478e              # double 0.38489673210380537
	.quad	0x3fd38f53935cfaea              # double 0.30562295332849365
	.quad	0x3fde2f96194eb8c0              # double 0.4716544387000674
	.quad	0x3fe6465e0b433d37              # double 0.69608976554619673
	.quad	0x3fd9ebe1791c6f4a              # double 0.4050220186925243
	.quad	0x3feb82de11b9b687              # double 0.85972503149032853
	.quad	0x3fdefb4dfe935c22              # double 0.48408841954136694
	.quad	0x3fce4faedbcd1860              # double 0.23680673344114478
	.quad	0x3fc47b7f001ad490              # double 0.16001880173795202
	.quad	0x3fdff4f688243cd4              # double 0.49932635588716079
	.quad	0x3fe4f9044b13afda              # double 0.6553975550027602
	.quad	0x3fbfe1d5e3c2ff38              # double 0.12453972635830446
	.quad	0x3fe3aefd7c468a83              # double 0.61511110565727767
	.quad	0x3fe1eea02f24b8f9              # double 0.56037911613182623
	.quad	0x3fe302d69d9a12e8              # double 0.59409647733317872
	.quad	0x3fb1fe3e59378918              # double 0.070285698682287623
	.quad	0x3fc16be7b36c3704              # double 0.13610550175547342
	.quad	0x3fe0e0b25621f183              # double 0.52742878744861377
	.quad	0x3fe7a9014660d5e4              # double 0.73938049073938972
	.quad	0x3fe45a30faeb8e64              # double 0.63600968368377808
	.quad	0x3fe24935d15f16fe              # double 0.57143679516659041
	.quad	0x3fd4adb484d3bcb6              # double 0.3231021210803634
	.quad	0x3fe332bf53e72a31              # double 0.59994474780370954
	.quad	0x3fe4f8ef0178fcb6              # double 0.65538740432375309
	.quad	0x3fd8dedf07f52ea2              # double 0.38860297944186517
	.quad	0x3fd7d5dd6d6c956e              # double 0.37242828069641731
	.quad	0x3fed05617f2de315              # double 0.90690684165665181
	.quad	0x3fda8e1dbb20d2e4              # double 0.41492408060302766
	.quad	0x3fc5dc678e0b2a38              # double 0.17078871188853539
	.quad	0x3fa836fd4c552e50              # double 0.047294536178551838
	.quad	0x3feb8d9d609ccd8f              # double 0.86103695745116393
	.quad	0x3f918f87d7be8bc0              # double 0.017149088423717762
	.quad	0x3fb2b972bdda8810              # double 0.073142215109811781
	.quad	0x3fe16fe9e4d24d41              # double 0.54491133395860214
	.quad	0x3fc310bb7568d55c              # double 0.14894812806020752
	.quad	0x3fd4b30a51e8571c              # double 0.32342775343691854
	.quad	0x3febd7c176afa5e2              # double 0.87008736782916807
	.quad	0x3fc318741ffd0580              # double 0.1491837650483312
	.quad	0x3fd3acf802bbb20a              # double 0.30743217722809446
	.quad	0x3fe04ab1960f10d8              # double 0.50911788280839243
	.quad	0x3fdc231ed104ca2c              # double 0.43964357768996609
	.quad	0x3fdf4cfec69251c4              # double 0.48907441512826844
	.quad	0x3fd2ad58575191cc              # double 0.29183014418802311
	.quad	0x3feb17f9a1dfb74e              # double 0.84667665115350998
	.quad	0x3fe9fd9e6a44e02b              # double 0.81220932727501827
	.quad	0x3fbe9c79c4d7f090              # double 0.11957512908696999
	.quad	0x3fda8779f7883cb4              # double 0.41451882527412498
	.quad	0x3fec5137ab6c7db9              # double 0.88491424065789837
	.quad	0x3fe0b894bd6777a3              # double 0.52253186219217118
	.quad	0x3fdd5b464a16a114              # double 0.45869595751948222
	.quad	0x3fd37dd572414fa4              # double 0.30455528409697252
	.quad	0x3fd0303f336f0e1c              # double 0.25294475577195086
	.quad	0x3fce20dbcdd3858c              # double 0.23537776517973119
	.quad	0x3feb2986dbe736f4              # double 0.84881918859329497
	.quad	0x3fcc2b5e23ca4264              # double 0.22007347819864542
	.quad	0x3fe6d825c751e834              # double 0.71388520173719039
	.quad	0x3fe5e2455466081f              # double 0.68387094959348704
	.quad	0x3fe2d0ba0cce5e6e              # double 0.58797934056469869
	.quad	0x3fec9bcba0e9d467              # double 0.89401799610517407
	.quad	0x3faf5771990436c0              # double 0.061214017800109044
	.quad	0x3fce1ce4ef1f5bdc              # double 0.23525678325560662
	.quad	0x3fe75c536e9a102c              # double 0.73002025224605438
	.quad	0x3fcc07c0d76befc8              # double 0.21898661154398114
	.quad	0x3fe2255639321226              # double 0.56705771609319267
	.quad	0x3fe581a62015eff4              # double 0.67207628504502148
	.quad	0x3fb9728c76d9ece8              # double 0.099404124275611516
	.quad	0x3fe4df454ed74630              # double 0.65225472830406339
	.quad	0x3fe96313a9e039e9              # double 0.79334433726199649
	.quad	0x3fee9aa93c49b7bf              # double 0.95637952589981257
	.quad	0x3fecd2c660002386              # double 0.90072935819726818
	.quad	0x3fe718b18499bc89              # double 0.72176433466474166
	.quad	0x3f79d1707c23ee80              # double 0.0063032525961222996
	.quad	0x3fcdc289b2aea9c8              # double 0.23249932503433812
	.quad	0x3fde6a44f9f410d6              # double 0.47523617181310607
	.quad	0x3fd864f18580a3ba              # double 0.38116109883645388
	.quad	0x3fe7482dae94ec57              # double 0.72756084535593402
	.quad	0x3fdcf4e3699f7310              # double 0.45244679751140016
	.quad	0x3fef72c38bece63b              # double 0.98275925950219489
	.quad	0x3f942abd7f99ee00              # double 0.019694291031994382
	.quad	0x3fcc7f87fdf75428              # double 0.22264194393815839
	.quad	0x3fedc7435c8b97bb              # double 0.93057411265612389
	.quad	0x3fe8998895ceadcc              # double 0.76874188670392973
	.quad	0x3fdf0c57dd5bbbc2              # double 0.4851283704473951
	.quad	0x3fd5aff97609e94e              # double 0.33886562850206736
	.quad	0x3fbf94d80ddefc38              # double 0.12336492861412374
	.quad	0x3fe3c5312885ee29              # double 0.6178212920635292
	.quad	0x3fe0ba028a37e5c4              # double 0.522706289251055
	.quad	0x3fe82e5d39bbd0bf              # double 0.75565968776802339
	.quad	0x3feee1693f009ee2              # double 0.96501600556527145
	.quad	0x3fb143e0f8646608              # double 0.067441998140928772
	.quad	0x3fb71890eb18bb48              # double 0.090218598744042144
	.quad	0x3fe167c2b615cdb9              # double 0.54391608775625067
	.quad	0x3febb4b47b7af33e              # double 0.86580871693841011
	.quad	0x3fbde1e404dad9f8              # double 0.11672806852843809
	.quad	0x3fb6d3be30ab1070              # double 0.089168440706147711
	.quad	0x3fdc61f6178dfeb8              # double 0.44347908306370298
	.quad	0x3fc6f837fc0dbb7c              # double 0.17945003325754871
	.quad	0x3feaa77879c2eb4d              # double 0.83294318944477086
	.quad	0x3fe329fa5174c42f              # double 0.59887424382589483
	.quad	0x3fe767c2e6615864              # double 0.73141617771285583
	.quad	0x3fdc44f9b84f7522              # double 0.4417099285036149
	.quad	0x3fbc522a91a449f0              # double 0.11062875800806871
	.quad	0x3fd9642cd4fdc6a4              # double 0.39673920440609778
	.quad	0x3fedb081d1400a58              # double 0.92779627675219967
	.quad	0x3fe492b923a03c5e              # double 0.64291054685771676
	.quad	0x3fa0608f41aa24f0              # double 0.031986691251470023
	.quad	0x3fd983a57ee7abea              # double 0.39866006272376231
	.quad	0x3fe30b6ece7530ef              # double 0.5951456100824809
	.quad	0x3fc60c20fdb582b0              # double 0.17224514377723699
	.quad	0x3fbd22407dfffaa8              # double 0.11380389286203274
	.quad	0x3fdb02f91f39b018              # double 0.42205646561956334
	.quad	0x3fe0186a14c5e176              # double 0.50298027093144415
	.quad	0x3feb8ac8eb6efd8d              # double 0.86069150908581238
	.quad	0x3fe387972f0f96d8              # double 0.61030158225613729
	.quad	0x3fd18eb4ecb288e2              # double 0.27433512797337134
	.quad	0x3fecbc6337e8d5f5              # double 0.89799652976824851
	.quad	0x3fb3d8e28aa4bf10              # double 0.077528151367683983
	.quad	0x3fc17b2501584be4              # double 0.13657057347935997
	.quad	0x3fdfd7690ae3b5ca              # double 0.49752260268618598
	.quad	0x3fda2736743902a4              # double 0.40864335393784246
	.quad	0x3fef76efa3290e5d              # double 0.98326856486569236
	.quad	0x3fe8bc59aa7486be              # double 0.77299197475459613
	.quad	0x3fd79262c0cfcefa              # double 0.36830967740318921
	.quad	0x3fd9d0b26d14b3ea              # double 0.40336285259655702
	.quad	0x3fef1cc92177f759              # double 0.97226387535895775
	.quad	0x3fda97615847fefa              # double 0.41548951741422935
	.quad	0x3fcc5eb63010b908              # double 0.22164037081660859
	.quad	0x3fd9940d85f4cc66              # double 0.39966142732300225
	.quad	0x3fe0e48ef7bba316              # double 0.52790020356505596
	.quad	0x3fe5a12a03ec25b3              # double 0.67592335477927745
	.quad	0x3fe6984c15c6176d              # double 0.70609096768087698
	.quad	0x3fe02eb5a02eb477              # double 0.50570184026368181
	.quad	0x3fed7f062141a1d2              # double 0.9217558526552756
	.quad	0x3fe28e7e77074b73              # double 0.57989428756478245
	.quad	0x3fdf87076a7fed96              # double 0.49261651420939623
	.quad	0x3fe04f2819ea5a0c              # double 0.50966267644509022
	.quad	0x3fe89eacd068eb2b              # double 0.76936951355978545
	.quad	0x3fe020eb200e0d09              # double 0.5040183664390564
	.quad	0x3feb01d4e31d19db              # double 0.84397358282222557
	.quad	0x3fd723640ab0ec02              # double 0.36153508228352405
	.quad	0x3fe99d8fbb895bfb              # double 0.80048357609018639
	.quad	0x3fd9d0c518127ac4              # double 0.40336730337905302
	.quad	0x3fe0dcad5365c1c3              # double 0.52693811691829529
	.quad	0x3febf9bfb72b562a              # double 0.87423692488909421
	.quad	0x3fe8eb3ea2bb68e3              # double 0.7787163904534079
	.quad	0x3fe60bcd9759a4a2              # double 0.68894080696658855
	.quad	0x3fd389eec04b4692              # double 0.30529373911586177
	.quad	0x3fe0cd72c4c6a22d              # double 0.52507914002223333
	.quad	0x3fcb53b49479b8b8              # double 0.21349198579577489
	.quad	0x3fbf323007bfc8d8              # double 0.12185955228031575
	.quad	0x3fea812e3143edb3              # double 0.82826909658563463
	.quad	0x3fe0c47d5e0459b7              # double 0.5239855610150731
	.quad	0x3fd7336765439690              # double 0.3625124443918617
	.quad	0x3faaec61c97a7f80              # double 0.052584701389831956
	.quad	0x3fd8f4fca8eab9f0              # double 0.3899528169230555
	.quad	0x3fc5c9b266d843dc              # double 0.17021780034750023
	.quad	0x3fe759b0fe1c474b              # double 0.72969865446996474
	.quad	0x3fedcedc774d5a4c              # double 0.93150161076739257
	.quad	0x3fe18ddf70ecb78e              # double 0.54856845908737895
	.quad	0x3fe78ca63fc82156              # double 0.73591911752104511
	.quad	0x3fed32fab24ee1af              # double 0.91247305703932635
	.quad	0x3fd7f24c40c25376              # double 0.37416368793611043
	.quad	0x3fe33a9eafd09b3a              # double 0.6009057458767082
	.quad	0x3feb3b4371704eb3              # double 0.85098430782314549
	.quad	0x3fe37037f77599fa              # double 0.60744856197271635
	.quad	0x3fc33e58e0498620              # double 0.15034018470309807
	.quad	0x3fe542a50b4f2f13              # double 0.66438533982133874
	.quad	0x3fcffd3a9aa12794              # double 0.2499154334093957
	.quad	0x3feaa563e14978ab              # double 0.83268922807089518
	.quad	0x3fe2e90c7b177f60              # double 0.59094833413471903
	.quad	0x3febb4cdd0da76a1              # double 0.86582079688715308
	.quad	0x3fe4dd8543e47db7              # double 0.65204108486425738
	.quad	0x3fc27bad18a06cf4              # double 0.14439929678415064
	.quad	0x3fdd5cf4618e3688              # double 0.45879849936395845
	.quad	0x3fe935f89728d363              # double 0.78783826373419819
	.quad	0x3fc4c1834b31ff10              # double 0.16215554401059551
	.quad	0x3feecec5d9187f9c              # double 0.96274082566741325
	.quad	0x3fece4950ccc5805              # double 0.90290310382511108
	.quad	0x3fe2e6464c4341eb              # double 0.59060969252646822
	.quad	0x3fc4937722bf8410              # double 0.16075028607068065
	.quad	0x3f71ce6518ab9300              # double 0.0043472241474986628
	.quad	0x3fb7798cd9c77318              # double 0.091698458832479068
	.quad	0x3fe5070e1a3176a7              # double 0.65711121669638295
	.quad	0x3fd8257810b44e8a              # double 0.37728692656785567
	.quad	0x3fecefa1a9a39cd2              # double 0.90425189144743912
	.quad	0x3f8db48cdfda3bc0              # double 0.014504528600154276
	.quad	0x3fdc5d0c6c1c1a64              # double 0.44317923123927572
	.quad	0x3fabc00697e6f5f0              # double 0.054199415247676686
	.quad	0x3fe5a56061430744              # double 0.67643755909396264
	.quad	0x3fe8630ed655e82b              # double 0.76209203588883179
	.quad	0x3fd6251c839fd104              # double 0.34601509908613104
	.quad	0x3fe99b14663a9cfa              # double 0.80018062559693637
	.quad	0x3fed91d696a98221              # double 0.92405251909446318
	.quad	0x3fd9f5b299df23d4              # double 0.40562119509246242
	.quad	0x3fe26771353b9c67              # double 0.57512722394029658
	.quad	0x3fcc456a85b8e9c0              # double 0.22086841134462354
	.quad	0x3fd30b858160de10              # double 0.2975782168827843
	.quad	0x3fd801c70d9b0518              # double 0.37510849312464378
	.quad	0x3fdad76de8ae9a62              # double 0.41939876292091161
	.quad	0x3fc3a6247c1bcff4              # double 0.15350776729576376
	.quad	0x3fc72cac228e95a0              # double 0.18105079352714615
	.quad	0x3fa30fbf7601eb80              # double 0.037229521899425855
	.quad	0x3fc6abcfa4941f08              # double 0.17711825882019405
	.quad	0x3fe48f12e8cfd168              # double 0.64246507140209719
	.quad	0x3fe8bb28e1f5355f              # double 0.77284664280311322
	.quad	0x3fd875e21df6c91e              # double 0.38219502378628245
	.quad	0x3fe7b505ad684215              # double 0.74084743374447959
	.quad	0x3fc29e1e832b3d24              # double 0.14545041470271614
	.quad	0x3fdfe08b370494c4              # double 0.49808006642190272
	.quad	0x3fd8063738039e7c              # double 0.3753793761265809
	.quad	0x3fe18aeab915c531              # double 0.54820762776777177
	.quad	0x3fe99dfb47347487              # double 0.80053485781867628
	.quad	0x3fea4df0aa52ce3b              # double 0.82201417223263407
	.quad	0x3fe6e6ad41729469              # double 0.71565878660898108
	.quad	0x3fe0bf63644d00d4              # double 0.52336282339094931
	.quad	0x3fd13870ad4bb940              # double 0.26906983302514575
	.quad	0x3fcbfa2cca306310              # double 0.21857223389158564
	.quad	0x3fef5c6379a83c03              # double 0.98002790223279168
	.quad	0x3fe9d471a8b046a0              # double 0.80718310305583784
	.quad	0x3fd7c5d2114d3278              # double 0.37144900979618667
	.quad	0x3fef3bb3ba97a7bb              # double 0.9760378498442529
	.quad	0x3fe4887bb035d7b7              # double 0.64166054168776199
	.quad	0x3fe3cdfd779d6621              # double 0.61889527666352617
	.quad	0x3fe23d824d3e0b2a              # double 0.57000842176816957
	.quad	0x3fd05c9d04d2128a              # double 0.25565267058144825
	.quad	0x3fe539c8af871b31              # double 0.66330370219006884
	.quad	0x3fd1ffcb75f9cf4a              # double 0.28123747368885132
	.quad	0x3fa8a4ac120aa900              # double 0.048131348802899154
	.quad	0x3fd8b20d9eaed00e              # double 0.38586750503896006
	.quad	0x3fe3e592c6e76180              # double 0.62177409027485453
	.quad	0x3fdd7d9597342238              # double 0.46079005971890608
	.quad	0x3feb41082ff525d8              # double 0.85168847433777284
	.quad	0x3fe9c83dc70f42be              # double 0.80569352034407138
	.quad	0x3fea84da0c17800e              # double 0.82871725427321663
	.quad	0x3fef64fb32bb54fb              # double 0.9810768118719858
	.quad	0x3fe6e927387c78ed              # double 0.71596108467545394
	.quad	0x3fd0d3811e63977a              # double 0.26290920226744385
	.quad	0x3fe06b891d5f8400              # double 0.51312690483985079
	.quad	0x3fe00e38e938e3ca              # double 0.50173612166610693
	.quad	0x3fd531527f60137c              # double 0.33113539160722616
	.quad	0x3fda63edde0c89a4              # double 0.41234919247122037
	.quad	0x3fc2e703cf55ca3c              # double 0.14767501472268119
	.quad	0x3fedf242914527f4              # double 0.93582275746416465
	.quad	0x3fe06514426ca173              # double 0.512338762030636
	.quad	0x3fbf6d0548c06f40              # double 0.12275727296986094
	.quad	0x3fe6182061347f83              # double 0.69044512734761587
	.quad	0x3fc8da7422d63f90              # double 0.19416667653103703
	.quad	0x3f9771c12bdf8060              # double 0.022894876768873806
	.quad	0x3fd5002bda873f06              # double 0.32813545551924539
	.quad	0x3f97b76ce684fa00              # double 0.02316064984301569
	.quad	0x3fe81a082e843cd5              # double 0.75317772946609785
	.quad	0x3fe5acf34e657f3c              # double 0.67736211120425294
	.quad	0x3fec1340af9221fb              # double 0.87735018054178171
	.quad	0x3fe9be0e3ed1bff8              # double 0.80445015210534532
	.quad	0x3fdea61fc7de381e              # double 0.47888941305507327
	.quad	0x3fe42ab4121d6be8              # double 0.6302128175551589
	.quad	0x3fe4a05f0abc8d8a              # double 0.6445765695283836
	.quad	0x3fe7c3d6d1cbfb82              # double 0.74265614486635934
	.quad	0x3fee05bfd592ce63              # double 0.93820182527128926
	.quad	0x3fdca21cf4b7aa28              # double 0.44739459894359124
	.quad	0x3fd5d5ed3204f2f8              # double 0.34118204006863051
	.quad	0x3fe714a6e87cffd4              # double 0.72127099426142616
	.quad	0x3fd24197bfa0ea40              # double 0.28525346482971159
	.quad	0x3fd6f72595ef4a08              # double 0.35883464471876936
	.quad	0x3fea891bf2354f0b              # double 0.82923695856376989
	.quad	0x3feafdb7b1c35fc8              # double 0.84347138137217659
	.quad	0x3fdd5b3385bf6e46              # double 0.45869148312860764
	.quad	0x3fc46786e4438eb4              # double 0.15940939088533457
	.quad	0x3fddbb07859bf388              # double 0.46454036758205364
	.quad	0x3fc883b065b9bdb4              # double 0.19151883093898692
	.quad	0x3fc89275a614ede8              # double 0.19196959123097135
	.quad	0x3fecf17ad89324a3              # double 0.90447752284776006
	.quad	0x3fded60ce757a060              # double 0.48181459991474718
	.quad	0x3fd948509eaadf4e              # double 0.39503875250692466
	.quad	0x3fe5241157726828              # double 0.6606528003642369
	.quad	0x3f84f42e8b5b83c0              # double 0.010231364848950153
	.quad	0x3fe6c169f20306f1              # double 0.7111100889962626
	.quad	0x3fe0c9b2bb4fbd16              # double 0.52462135872147786
	.quad	0x3fe1cc7f2edd0f59              # double 0.5562129893591915
	.quad	0x3fde4c0fb3121fa2              # double 0.47339241492636053
	.quad	0x3fe58547e08e3e8d              # double 0.67251962526820963
	.quad	0x3fc064dfbd3db954              # double 0.12807842960632831
	.quad	0x3fd230279aa155ca              # double 0.28418912983519518
	.quad	0x3fd55ca27cb9baf2              # double 0.33377897434449644
	.quad	0x3fb8bebb84b94d00              # double 0.096660346892623039
	.quad	0x3fb23f66949bdd58              # double 0.0712799179853979
	.quad	0x3fd4cc5308f37d52              # double 0.32497096895345579
	.quad	0x3fc3a192520a155c              # double 0.15336827283696663
	.quad	0x3fe4cd9c8057b22b              # double 0.65009903971583094
	.quad	0x3fef8356c9f7637c              # double 0.98478259512476951
	.quad	0x3fb8fee2b3a923d0              # double 0.097639244902111288
	.quad	0x3febc952702c6784              # double 0.86832544239881359
	.quad	0x3febc71f6438bc48              # double 0.86805696081672412
	.quad	0x3fce485b52d46294              # double 0.23658315224090087
	.quad	0x3fca364c2a09daac              # double 0.20478202870045459
	.quad	0x3fd0c1d6140bb612              # double 0.26183082540123437
	.quad	0x3fbc28f8f0b002f8              # double 0.11000018955384039
	.quad	0x3fb9ee238598c700              # double 0.10128995906486793
	.quad	0x3fd14b4df2b9d87c              # double 0.27022122100550638
	.quad	0x3fd443ce7b413b78              # double 0.31663858448603532
	.quad	0x3fe13f9a7d961de4              # double 0.53901409653275012
	.quad	0x3fd13af57f1a3968              # double 0.2692235699877501
	.quad	0x3fe2909d7ae00ce4              # double 0.58015321730672698
	.quad	0x3fe9a7ea15a2766f              # double 0.80174736238013888
	.quad	0x3fb25612c7631c70              # double 0.07162587516642005
	.quad	0x3fc8cea2cd134ef0              # double 0.19380602849434281
	.quad	0x3fe2f8e0e53c699c              # double 0.59288067600873573
	.quad	0x3fdab78d8d938620              # double 0.41745318246657526
	.quad	0x3fe0de0dd70af161              # double 0.5271062088063837
	.quad	0x3fef7bafe4a22553              # double 0.98384852080304552
	.quad	0x3feabaf520b42c75              # double 0.83532196414434046
	.quad	0x3fe4c851ef0ea10d              # double 0.64945313158844586
	.quad	0x3fee6c8308add244              # double 0.95074607558360257
	.quad	0x3fe5c11ed6377d08              # double 0.6798242744370393
	.quad	0x3fc2cbf29df14b44              # double 0.14684899055517964
	.quad	0x3f9f59c50d9dbec0              # double 0.030615881877962492
	.quad	0x3fcbcb2f49269494              # double 0.21713820525943517
	.quad	0x3fe5a4480115a6dc              # double 0.67630386554557331
	.quad	0x3fe27c31a6e8805e              # double 0.57766039466151731
	.quad	0x3fe3daf77c9df972              # double 0.62047933902048968
	.quad	0x3fd7d3aa36d4fb04              # double 0.37229400019343495
	.quad	0x3fcc56c45f0ceb28              # double 0.22139792100082301
	.quad	0x3fd238331aaa1f4e              # double 0.28468015293082238
	.quad	0x3fecab193750fab5              # double 0.89588604740114042
	.quad	0x3fc6717a5bfe28a8              # double 0.17533807269893953
	.quad	0x3fdb564989e110da              # double 0.42714155640375184
	.quad	0x3fbaf1bcfcc9adc8              # double 0.1052511326940283
	.quad	0x3fe133587b474db1              # double 0.53751777723157634
	.quad	0x3fe7da7e0f6a0650              # double 0.74542143831804175
	.quad	0x3feeeca45c6504e7              # double 0.96638696714231009
	.quad	0x3fec5323756eb2e4              # double 0.88514874397295928
	.quad	0x3fbbeba2458df008              # double 0.10906423757654704
	.quad	0x3fd4e71fd3a4a940              # double 0.3266067091777991
	.quad	0x3fe64d9002e4516a              # double 0.69696808399980381
	.quad	0x3fde9e953840291a              # double 0.47842913144326504
	.quad	0x3fc678286c2bd8b4              # double 0.17554192811775737
	.quad	0x3f963f24bee35080              # double 0.02172524848067825
	.quad	0x3fee888b4ff935ad              # double 0.95416799182719603
	.quad	0x3fe0b7c8b8c85e61              # double 0.52243457880372202
	.quad	0x3fdd4fa190178fb4              # double 0.45798529693115175
	.quad	0x3fcedf744dd3e450              # double 0.24119428444081104
	.quad	0x3fedbe9661cc2ea6              # double 0.92951506711093113
	.quad	0x3feb9833df33613c              # double 0.86232942193877404
	.quad	0x3fe87c41909bdbf4              # double 0.76516798252020956
	.quad	0x3f9debfb8a65b460              # double 0.029220514604663683
	.quad	0x3fd6e0e21caece78              # double 0.35747578431185145
	.quad	0x3fdda08fb72d6370              # double 0.46292488945396482
	.quad	0x3fd6a9d6a6d77f54              # double 0.35411611836570001
	.quad	0x3fe60c94b53c04ff              # double 0.68903575322488553
	.quad	0x3fdb0725345c5416              # double 0.42231111634583962
	.quad	0x3feecc1c547476c3              # double 0.96241585250000871
	.quad	0x3fd9ff70f3876b02              # double 0.40621589452864282
	.quad	0x3fe8d29dd8f6a2d4              # double 0.77571003318470355
	.quad	0x3fb6e95bba447190              # double 0.089498265242985874
	.quad	0x3fb14140be87f440              # double 0.067401930347799954
	.quad	0x3fef43d462839ef8              # double 0.97702998391193229
	.quad	0x3fd0abb3c7255240              # double 0.26047987411337559
	.quad	0x3fda3070b2e02cfe              # double 0.40920655697182429
	.quad	0x3fed6bd714fb02fe              # double 0.91941408250576706
	.quad	0x3feca6e975c40e7e              # double 0.89537499428884337
	.quad	0x3fec6b38259dcf4e              # double 0.8880882963844472
	.quad	0x3fe5312157916824              # double 0.66224734404682239
	.quad	0x3fe0edbb45ce5aa6              # double 0.52901996263502293
	.quad	0x3fb860cc42dff5b8              # double 0.095227018668046948
	.quad	0x3fd69fea3405adae              # double 0.35351042824069168
	.quad	0x3fe480f0b6b531eb              # double 0.64073978123775299
	.quad	0x3fb88520aeb49740              # double 0.095781366970723703
	.quad	0x3fe7a2e2bf0f4021              # double 0.73863351169893943
	.quad	0x3fcfb64178f43050              # double 0.24774950414610197
	.quad	0x3fa7f77456383610              # double 0.046809802555895286
	.quad	0x3fdc3097c6a9a8e8              # double 0.44046587372453283
	.quad	0x3fd422a164ed573e              # double 0.31461367469943358
	.quad	0x3fce8a9170d6047c              # double 0.23860376367159464
	.quad	0x3fc08ec4e0608ffc              # double 0.12935696559827636
	.quad	0x3fcc7fc6c03b5160              # double 0.2226494253760718
	.quad	0x3fc493cead95fd20              # double 0.16076072193025315
	.quad	0x3fe9530b350a0b62              # double 0.79138717993951624
	.quad	0x3fef479dbdb71206              # double 0.9774922089932836
	.quad	0x3fbf08b7b167f338              # double 0.12122676926805986
	.quad	0x3fec31e0389f8695              # double 0.88108836230476817
	.quad	0x3feb7d8e6f24fc67              # double 0.85907670696168459
	.quad	0x3fb3aa323e977958              # double 0.076815738946128476
	.quad	0x3fe85df4998c2959              # double 0.76146917333361863
	.quad	0x3fcf0f79be65fc14              # double 0.24265977665706429
	.quad	0x3fe3a02f5a4a8b63              # double 0.61330382952688145
	.quad	0x3fe2680ae144ffa9              # double 0.57520050046877202
	.quad	0x3fc89dcd4f9e7480              # double 0.19231573474545272
	.quad	0x3fe3470919a0f01e              # double 0.60242133145903032
	.quad	0x3fead2c5c482f653              # double 0.83822906857649071
	.quad	0x3fe0cc9537f5c0ba              # double 0.52497349672014271
	.quad	0x3fec89de1c2522d9              # double 0.89182954308588613
	.quad	0x3fd705294b118bfa              # double 0.35969002085602109
	.quad	0x3fe372fc4362c2e3              # double 0.60778630410467505
	.quad	0x3fe83edd782cbeaf              # double 0.75767396422994249
	.quad	0x3fe34bffbf9a866f              # double 0.60302722380238361
	.quad	0x3fe06f6c37461d6b              # double 0.51360140605622229
	.quad	0x3fc373a664a386dc              # double 0.15196685709002267
	.quad	0x3fb2769ac4087848              # double 0.072122261867179849
	.quad	0x3fea97a6821071be              # double 0.83101201441927919
	.quad	0x3fe8b69b1edcb31c              # double 0.77229076411967723
	.quad	0x3fedf44fdd278055              # double 0.93607323831748579
	.quad	0x3fe5e2e0642e0731              # double 0.68394488874785087
	.quad	0x3fe187d55682285f              # double 0.547831219636702
	.quad	0x3fd91c71bf3b20fe              # double 0.39236110377215982
	.quad	0x3fdacf5fdc7ac7f4              # double 0.41890713244640598
	.quad	0x3fed6b8fc9eb493a              # double 0.91938008725472931
	.quad	0x3fee4296284f8d5d              # double 0.94562824128335488
	.quad	0x3fc23d53b38f98c8              # double 0.1424965502512292
	.quad	0x3fe27d5cba770595              # double 0.57780300539905005
	.quad	0x3fd033381c0830a6              # double 0.25312617051600694
	.quad	0x3fd0fa1c2fbc13ea              # double 0.26526550923909886
	.quad	0x3fe344c970d19ffd              # double 0.60214683566027782
	.quad	0x3fe1c729e7d2250c              # double 0.55556197431101983
	.quad	0x3fdb941917803586              # double 0.43091418547631866
	.quad	0x3fd78994f9de13c8              # double 0.36777233506319051
	.quad	0x3fd3b892d6c7b006              # double 0.30814047789203902
	.quad	0x3fac6a2694f57b40              # double 0.0554973656496629
	.quad	0x3fc2d26a0a8eb420              # double 0.14704633250713162
	.quad	0x3fd97eac4389ae06              # double 0.39835650058259409
	.quad	0x3feb17bccf32a430              # double 0.84664764850925245
	.quad	0x3fee0b7c7d5e5d49              # double 0.93890213476235218
	.quad	0x3fd827ffe1e68196              # double 0.37744137821757684
	.quad	0x3fd745aaf2e6b1f0              # double 0.36362718315902409
	.quad	0x3fe1e2859803f990              # double 0.55890159311802456
	.quad	0x3fc092fabe72fe9c              # double 0.12948545741345618
	.quad	0x3fdad2e6c7d07c3c              # double 0.41912240517735078
	.quad	0x3fde7e6f06da6274              # double 0.4764669005321942
	.quad	0x3fe3bf96d6bd7a27              # double 0.61713735524592017
	.quad	0x3feaf126b7003123              # double 0.84193740598997058
	.quad	0x3fe04912e056f49a              # double 0.50892013374654543
	.quad	0x3fed768290d9e569              # double 0.92071655551187093
	.quad	0x3fddf97549c00d7a              # double 0.46835071756523627
	.quad	0x3fd155df8da4a63a              # double 0.27086628753986342
	.quad	0x3fe9cf6cf636ae8f              # double 0.80657051170915561
	.quad	0x3fee03b84416a34e              # double 0.93795407579919199
	.quad	0x3fcb5d82d6295610              # double 0.21379123169997216
	.quad	0x3fe3d20bda0adadd              # double 0.61939041696936281
	.quad	0x3fe0eebe668785cd              # double 0.52914352441092094
	.quad	0x3fd74a67afb0d2b6              # double 0.36391632230087667
	.quad	0x3fe861d5b2efd14a              # double 0.76194271992293605
	.quad	0x3fe3e1e163b8505f              # double 0.62132329441602596
	.quad	0x3fe7e1daef452236              # double 0.74632021648819236
	.quad	0x3fda2c78e467c57c              # double 0.40896436982355744
	.quad	0x3fe00941bb1b12f8              # double 0.50112997573941609
	.quad	0x3fe59eb32401699f              # double 0.67562253029182162
	.quad	0x3fb654f07572c988              # double 0.08723357074157978
	.quad	0x3fe2922a0cdc5096              # double 0.58034231674038739
	.quad	0x3fe908d221acb659              # double 0.78232676102715992
	.quad	0x3fecc796537be682              # double 0.89936367326227207
	.quad	0x3fef285a1129b75f              # double 0.9736757598127318
	.quad	0x3fe7d53bd2f0af2b              # double 0.74477950286152372
	.quad	0x3fda52b5461bccd2              # double 0.41129810186903371
	.quad	0x3fe1ba1c0e6fce1f              # double 0.55396845645595139
	.quad	0x3fd14110f2cef8e8              # double 0.26959632598653949
	.quad	0x3fe32db4d8da9a13              # double 0.59932939867286661
	.quad	0x3fe6d9379d809188              # double 0.71401577722694842
	.quad	0x3fbcaefbdebc5f88              # double 0.11204504192244091
	.quad	0x3fef3920a8fafc01              # double 0.97572358135209935
	.quad	0x3fdab771cda95020              # double 0.41744656643027334
	.quad	0x3fe5e419e263ad1d              # double 0.68409437386199878
	.quad	0x3fe9fbf2b99a5c7c              # double 0.8120053887422638
	.quad	0x3fe18c2c43706474              # double 0.54836095019994824
	.quad	0x3fe1e80bff4ea88f              # double 0.55957603325556871
	.quad	0x3fb3641fbb690408              # double 0.075746520285079666
	.quad	0x3fef6280ac2aceb3              # double 0.98077424646768063
	.quad	0x3f95c3fd186519a0              # double 0.021255449880550281
	.quad	0x3fdfd3a724d5371e              # double 0.4972932681747454
	.quad	0x3fe0294f4ff527ee              # double 0.50504270188070932
	.quad	0x3fa91e4b2c964860              # double 0.049059247200731404
	.quad	0x3fed92306fab35f6              # double 0.92409536180792773
	.quad	0x3fe98b5808e75112              # double 0.79825975169163343
	.quad	0x3fc24210006d8f98              # double 0.14264106770417295
	.quad	0x3fd087bbd5b10824              # double 0.25828452938378832
	.quad	0x3fe283cf5b2e7f1b              # double 0.57859008606826323
	.quad	0x3fe6f71bd66d02f2              # double 0.71766464118999651
	.quad	0x3fd183de3324baf0              # double 0.27367358202438563
	.quad	0x3fd7140ad53db2f8              # double 0.36059828590695941
	.quad	0x3fb061255d3a7c20              # double 0.063982329617360723
	.quad	0x3fbe7fbf2a11ec00              # double 0.11913676049327648
	.quad	0x3fea9ea2a7291117              # double 0.83186466835516881
	.quad	0x3fd2c32feb85d126              # double 0.29316328048959617
	.quad	0x3fefe8ca4d1b48f7              # double 0.99716677722815816
	.quad	0x3fc2865203bf0da4              # double 0.14472413237500092
	.quad	0x3fcfae688c37dbe8              # double 0.24751002165405045
	.quad	0x3fd3ceb25c7b15ae              # double 0.30949076682403642
	.quad	0x3fb7700ae4f38778              # double 0.091553383728323001
	.quad	0x3fd0b4fa10ad4670              # double 0.2610459483013079
	.quad	0x3fa1852e30f6cfe0              # double 0.03421921107965864
	.quad	0x3fe54cd87db2c226              # double 0.66563057470745401
	.quad	0x3fe6847444c6a493              # double 0.7036687224655388
	.quad	0x3fe4eac75a3665d8              # double 0.65365951175334214
	.quad	0x3fef7985a703dbcf              # double 0.98358423824435614
	.quad	0x3fea406fd6826990              # double 0.82036582847949724
	.quad	0x3fec8166ba0e69e2              # double 0.89079605425950725
	.quad	0x3fdfa7050d941efc              # double 0.49456907583270016
	.quad	0x3fe90d3978e1a084              # double 0.78286431893958807
	.quad	0x3fbbdbdf5a649b20              # double 0.10882373768673093
	.quad	0x3fe3cf3b1a0b40c8              # double 0.61904673659048459
	.quad	0x3fce11c6cbb2a854              # double 0.23491749712167354
	.quad	0x3fe5e0e60c62df16              # double 0.68370344561751284
	.quad	0x3fd38844c1270ace              # double 0.30519217360067052
	.quad	0x3fd30bd5470468c0              # double 0.29759723601604193
	.quad	0x3fe918d59d27cc0e              # double 0.78428154653954762
	.quad	0x3feb9f1937974f5f              # double 0.86317120416286375
	.quad	0x3fd6197394d994c4              # double 0.34530343567014321
	.quad	0x3fdef1ddd2539440              # double 0.48351235904403111
	.quad	0x3fe3d97989ad4710              # double 0.62029721155178841
	.quad	0x3fe8fea3169c0902              # double 0.7810836259452858
	.quad	0x3fe040616724e826              # double 0.5078589453253286
	.quad	0x3febfff6cd9c8f4a              # double 0.87499561460979547
	.quad	0x3fc0814902795dac              # double 0.12894547100834808
	.quad	0x3fd3dc08f821b96e              # double 0.31030487281431973
	.quad	0x3fb321cb95d7ab88              # double 0.074734424669868571
	.quad	0x3fec83d9d5bec2d6              # double 0.89109508273221638
	.quad	0x3fe721bcb3470a88              # double 0.72286829962861621
	.quad	0x3faeb7bc44543fa0              # double 0.059995539990381319
	.quad	0x3fa63f2071da81b0              # double 0.043450368784081816
	.quad	0x3fece0513fd3b172              # double 0.90238249269672921
	.quad	0x3fec93e00f11263a              # double 0.89305117552539248
	.quad	0x3fed41b63b625c6b              # double 0.9142714652870273
	.quad	0x3fe83d98ed698f1f              # double 0.75751921052549054
	.quad	0x3fe1e3e06b14b5fe              # double 0.55906697191466015
	.quad	0x3fd79befc0782210              # double 0.36889261051013111
	.quad	0x3fe16ccc78c324c2              # double 0.5445310934675478
	.quad	0x3faa03cd64d093b0              # double 0.050810259396065205
	.quad	0x3fe684e435931022              # double 0.70372209991228751
	.quad	0x3fd7c74343d34740              # double 0.37153703330578836
	.quad	0x3fe7ed02fd325116              # double 0.74768208935214164
	.quad	0x3fc59efaa7dc05cc              # double 0.16891415783179153
	.quad	0x3fe35d2aa5e6dfa1              # double 0.60512287523942032
	.quad	0x3fb27398ea08dee0              # double 0.072076375138631743
	.quad	0x3fe075064f2e2f59              # double 0.51428523507045576
	.quad	0x3fe298aecda67f85              # double 0.58113804021921622
	.quad	0x3fe559c3e0044314              # double 0.66720765832187334
	.quad	0x3fa2cde11c1c3070              # double 0.036726984673891461
	.quad	0x3fc359905fa2a854              # double 0.15117077512451493
	.quad	0x3febfa3520d891c2              # double 0.87429291167477907
	.quad	0x3fefff80057855e4              # double 0.99993897503253181
	.quad	0x3fe8e5bfda2fafa3              # double 0.77804558386332123
	.quad	0x3fe56f8689c8f527              # double 0.66986395751124383
	.quad	0x3fe093726685aee0              # double 0.51799888633601299
	.quad	0x3f89730e4ea87ec0              # double 0.012426482940156247
	.quad	0x3fe7458837cfe873              # double 0.72723780537422866
	.quad	0x3fdfe04c21f45c12              # double 0.49806502643463191
	.quad	0x3fdb6cd4c960176e              # double 0.42851752915918595
	.quad	0x3fe6b9970f20f3f9              # double 0.71015503840283067
	.quad	0x3fd8097e4c1e1ed4              # double 0.37557942803730993
	.quad	0x3febfb7097b7144a              # double 0.87444333679071318
	.quad	0x3fc731d7ec081f00              # double 0.18120860123621441
	.quad	0x3fd90667b80a3072              # double 0.39101593945156943
	.quad	0x3feca22ce3d48152              # double 0.89479679582658833
	.quad	0x3fb01974a77bd838              # double 0.062888422860709947
	.quad	0x3fa9f5e4e793e870              # double 0.050704148548860739
	.quad	0x3fcfc9620f09b8a8              # double 0.24833322271610325
	.quad	0x3fd7c2598d3efc2e              # double 0.37123717111166143
	.quad	0x3fd166ae5b03f20a              # double 0.27189215553497148
	.quad	0x3fd10593730b6774              # double 0.26596533045596193
	.quad	0x3fe992c113b46bd9              # double 0.79916433189952862
	.quad	0x3fd592ac8013c2a8              # double 0.33707726008928285
	.quad	0x3fbe0f5f28641e38              # double 0.11742205368147374
	.quad	0x3fee6484ebf11256              # double 0.94977041323051981
	.quad	0x3fe61b237599677d              # double 0.6908128067836824
	.quad	0x3feaa45702ab0a16              # double 0.83256102105252938
	.quad	0x3fd6bfe0929debd4              # double 0.35546125715307864
	.quad	0x3febd38b0f765ff1              # double 0.86957314510345729
	.quad	0x3fe734601489891e              # double 0.72514347087079378
	.quad	0x3fbfd270fce46948              # double 0.12430483030440087
	.quad	0x3fe4f4a256127de2              # double 0.65486256419165678
	.quad	0x3fec07d295d3dd46              # double 0.87595490706636592
	.quad	0x3fea5d27129684f6              # double 0.82387117033445523
	.quad	0x3fe7cece72da0d75              # double 0.74399492675767809
	.quad	0x3fd5499ed9f41332              # double 0.33261843952668635
	.quad	0x3fd8399fe8e92896              # double 0.37851712937539028
	.quad	0x3fe254958fb7fa4c              # double 0.57282522268344271
	.quad	0x3fd7d08492d0ce5e              # double 0.37210192048516955
	.quad	0x3fef868870e5cc09              # double 0.98517248201676566
	.quad	0x3fedf1d72083e73b              # double 0.93577152586588086
	.quad	0x3fe5b2b9d8ab1cb5              # double 0.67806713407562447
	.quad	0x3fce969dbbbea2e8              # double 0.2389714400026357
	.quad	0x3fe01f2ae27728f5              # double 0.50380462867295128
	.quad	0x3fcf71da69163e80              # double 0.24566202288814409
	.quad	0x3fdc1096a4873e0c              # double 0.43851247851577635
	.quad	0x3fc3dcd109e3df18              # double 0.15517628653446347
	.quad	0x3fe4836ed907e682              # double 0.64104406727638286
	.quad	0x3fde5725d110b722              # double 0.47406907478840499
	.quad	0x3fd0d87cb4141c92              # double 0.26321332536503761
	.quad	0x3fddadd0fbd7aafe              # double 0.46373390764226474
	.quad	0x3fe189936d36aa90              # double 0.54804393130082651
	.quad	0x3fe7f0b3d5b26da0              # double 0.74813262689297133
	.quad	0x3fedbd36b0e8c4dd              # double 0.92934736778820659
	.quad	0x3f780ce19c3dee80              # double 0.0058716595557332107
	.quad	0x3fe6347c15c1817a              # double 0.69390682458110509
	.quad	0x3fe083232acb928b              # double 0.51600797995031777
	.quad	0x3fcbdd19a7143e20              # double 0.21768494280011996
	.quad	0x3fba515c928ea1d0              # double 0.10280397966437893
	.quad	0x3fe4f45b3fb90944              # double 0.65482866712435639
	.quad	0x3fe6ab69b6af5900              # double 0.7084244316163506
	.quad	0x3feddaf5355c0ea8              # double 0.93297825261875733
	.quad	0x3fecd2c512cd6fb5              # double 0.90072873756752492
	.quad	0x3fbce3e6d32701b0              # double 0.11285250334822794
	.quad	0x3f925cf1317d2620              # double 0.017932671208916173
	.quad	0x3feeeb6dcde26290              # double 0.96623888217716747
	.quad	0x3fef9eb310f5f00a              # double 0.98812249481807268
	.quad	0x3fe22fb4bed70a00              # double 0.56832349084317002
	.quad	0x3fefed55d5674cf3              # double 0.99772159271597471
	.quad	0x3fad1be33233acd0              # double 0.05685338962379094
	.quad	0x3fb05b6c07152ef0              # double 0.063894988755403892
	.quad	0x3fd23044e2a638e6              # double 0.28419611104699383
	.quad	0x3fd5ea435711157c              # double 0.34242328169451475
	.quad	0x3fb19a53942c2cd8              # double 0.068761085200253702
	.quad	0x3fee24ec1cc22fe0              # double 0.94200711838629658
	.quad	0x3fe1ca7877f94943              # double 0.5559656470525528
	.quad	0x3fc2f9f96ae78124              # double 0.14825360984742375
	.quad	0x3fdf5bf7e5975c1a              # double 0.48998830243130131
	.quad	0x3fe32cb706d319d8              # double 0.59920836766178365
	.quad	0x3fd5d2151cd9e416              # double 0.34094741647237592
	.quad	0x3fe40307515b4f09              # double 0.62536970033622297
	.quad	0x3fdd5bbac36fc4b6              # double 0.45872372708897602
	.quad	0x3fe701d76a10097a              # double 0.71897478785858415
	.quad	0x3feef3c5fceeb21e              # double 0.96725749398098393
	.quad	0x3fdc788ed9dfa81e              # double 0.44485827709888948
	.quad	0x3fe034e5fe3f10a9              # double 0.50645732552995526
	.quad	0x3fe497ac39cf3018              # double 0.64351474085697458
	.quad	0x3fedd070bea40dcd              # double 0.93169438585794639
	.quad	0x3fe34d3d94424319              # double 0.60317877728275271
	.quad	0x3fe393c6f25524b5              # double 0.61178920107445001
	.quad	0x3fe9bf1710e163b3              # double 0.80457642838438514
	.quad	0x3fd5bbdda0ea9dc0              # double 0.33959141458987219
	.quad	0x3fea48d68e5a1924              # double 0.82139137080301738
	.quad	0x3fe4bb079a8284eb              # double 0.64783077409461265
	.quad	0x3fc8902390945984              # double 0.19189877090020613
	.quad	0x3fe6029c583c4354              # double 0.68781869157292386
	.quad	0x3fe84abbb763623d              # double 0.7591227132607582
	.quad	0x3fbffd912aec8da8              # double 0.12496287630033598
	.quad	0x3fd476b0c96db374              # double 0.31974429770234924
	.quad	0x3fc1641d40b4e654              # double 0.13586774501327403
	.quad	0x3fec09ab65dd09a9              # double 0.876180361701974
	.quad	0x3fe3d37f16586c37              # double 0.619567435878145
	.quad	0x3febe9104361ec0c              # double 0.87220013771673299
	.quad	0x3fee06af31e78ef8              # double 0.93831596133210748
	.quad	0x3fcad1e9f4b1718c              # double 0.20953106353671236
	.quad	0x3fe5a254cac0e40a              # double 0.67606582260407433
	.quad	0x3fe461a9b67726ac              # double 0.63692174566059157
	.quad	0x3fb2236e023b5808              # double 0.070853114647747018
	.quad	0x3fd1434a7886aa08              # double 0.26973211069221792
	.quad	0x3fd5df77f1113b1a              # double 0.34176443616608909
	.quad	0x3fe68a5d64f51efb              # double 0.70439023702871795
	.quad	0x3fdbe4e1bc881816              # double 0.43584483538904928
	.quad	0x3fd8fcdcae109d12              # double 0.39043347357297009
	.quad	0x3febec83dab0d1ff              # double 0.87262146676090413
	.quad	0x3fa8d0b34614f900              # double 0.048467256836817185
	.quad	0x3fdbf2d685f37678              # double 0.43669665414004255
	.quad	0x3fa0dc2250f954f0              # double 0.032929489502444897
	.quad	0x3fed229c363be454              # double 0.91047487824028872
	.quad	0x3fa2a3517d4457b0              # double 0.036402269879700966
	.quad	0x3fdfa7354d554418              # double 0.4945805793004765
	.quad	0x3fc9f71df7e152a0              # double 0.20285391429446964
	.quad	0x3fdd875d77b3b9ca              # double 0.46138703050283125
	.quad	0x3fecd8949e3c70e6              # double 0.90143805413711386
	.quad	0x3fd97e4eccc8c676              # double 0.3983342170568912
	.quad	0x3fe2faf3ba532a92              # double 0.59313379661155552
	.quad	0x3fe30554fcc9962d              # double 0.5944008767371024
	.quad	0x3fe91992074f4548              # double 0.78437138965288344
	.quad	0x3fe785d064e8e11a              # double 0.73508472165034111
	.quad	0x3fd5517a3ee19768              # double 0.33309799328559686
	.quad	0x3fec165ed868edb0              # double 0.8777307726626784
	.quad	0x3f8719008f8d36c0              # double 0.011278156643722226
	.quad	0x3fdd87537cf482a8              # double 0.46138465120933825
	.quad	0x3fd4670f3b7d621a              # double 0.31879025277660988
	.quad	0x3fc5d02db6d493e4              # double 0.17041560580506065
	.quad	0x3fd84f65f3ddac22              # double 0.37984608473806436
	.quad	0x3fdb15d2c88de836              # double 0.42320699296363118
	.quad	0x3fde5cefb1210908              # double 0.47442238137968262
	.quad	0x3fe2ab6014e03910              # double 0.5834198386890268
	.quad	0x3feb158de5385292              # double 0.84638113755734623
	.quad	0x3fe0c8fa5aa2d9a5              # double 0.52453344061250518
	.quad	0x3fd5270b20997376              # double 0.33050802405869406
	.quad	0x3fe9761dac23cbeb              # double 0.79566844578800777
	.quad	0x3fd15a77783a8356              # double 0.27114664784499121
	.quad	0x3fad5aab5d519930              # double 0.057332377568672377
	.quad	0x3fe337a1749f6ffe              # double 0.60054085519686828
	.quad	0x3feb6a5dad097417              # double 0.8567341212871068
	.quad	0x3feb4fdbed288068              # double 0.85349842376673468
	.quad	0x3fe2ec74867a1e13              # double 0.59136415734332315
	.quad	0x3fe3ba148c2ca871              # double 0.61646487596341448
	.quad	0x3fed14a3b06d3334              # double 0.90876945932686803
	.quad	0x3fd1b4e4cd1ed978              # double 0.27666587859439273
	.quad	0x3fe0b7287ee63a38              # double 0.52235817704224186
	.quad	0x3fd54c1d340eecc6              # double 0.33277063449686428
	.quad	0x3fde966dc2f5412a              # double 0.47793144263143239
	.quad	0x3fe953a80583b035              # double 0.79146195485146242
	.quad	0x3fdd5e7802cbaca4              # double 0.45889091752060041
	.quad	0x3fe4d8daa38d2ec5              # double 0.6514714426388869
	.quad	0x3fe0c0738719a1f0              # double 0.52349258791678999
	.quad	0x3fec693fde5c0746              # double 0.88784783773028475
	.quad	0x3fe1d21b552869da              # double 0.55689779884715596
	.quad	0x3fefe0abc67e48c3              # double 0.99617565887663095
	.quad	0x3fe929741ce00572              # double 0.78631024970688501
	.quad	0x3febe50abb69eb5b              # double 0.87170921901938969
	.quad	0x3fe8bd5d18b938e0              # double 0.77311568096936511
	.quad	0x3fa47c8108e48200              # double 0.04001239045669891
	.quad	0x3fd648b67a5ff35c              # double 0.34818803740181692
	.quad	0x3fe9d9b84b261fa4              # double 0.80782713582538123
	.quad	0x3fea1bc37ee057bb              # double 0.81588911800894637
	.quad	0x3fcf2e5e15d400e0              # double 0.24360252443148678
	.quad	0x3fd6037a3ec2127a              # double 0.34396225098343047
	.quad	0x3fe05aaccd6e1fc2              # double 0.51106872675972448
	.quad	0x3fda6b23db077cea              # double 0.41278931035590338
	.quad	0x3fe77db7d72ff1a1              # double 0.73409645107999577
	.quad	0x3fe963ca1d0b3925              # double 0.79343133614182604
	.quad	0x3fc4ff31fe643bbc              # double 0.16403794213735334
	.quad	0x3fe6c325659a6dba              # double 0.71132154316312968
	.quad	0x3fd9fdedc922c5a4              # double 0.40612358705683449
	.quad	0x3fd85e417c5cc61a              # double 0.3807529177166501
	.quad	0x3fef30df8a0bf8c6              # double 0.97471596681841599
	.quad	0x3fea26f70776666b              # double 0.81725646455306611
	.quad	0x3fd47a8bcdbf9d70              # double 0.31997962086321419
	.quad	0x3facdd563ecea670              # double 0.056376166502855152
	.quad	0x3fec787b47287e2a              # double 0.88970722101288868
	.quad	0x3fc714cd4bc4f4e4              # double 0.18032232474971643
	.quad	0x3fdd537864b044ca              # double 0.45821962197176147
	.quad	0x3fc93777b0fdaee0              # double 0.19700523512016499
	.quad	0x3fbc1ab1bbd9b840              # double 0.10978232227509555
	.quad	0x3fe8e7a873f177e5              # double 0.77827856679118368
	.quad	0x3fea19aaed313266              # double 0.81563326193424923
	.quad	0x3fc1a07071531c54              # double 0.13770871671133256
	.quad	0x3fde2de4063f6e24              # double 0.47155094728597846
	.quad	0x3fd869d87c12911e              # double 0.38146030537088105
	.quad	0x3fb0bc0bb75f8fa8              # double 0.065369350689762684
	.quad	0x3fefe21acf1129aa              # double 0.99635067408353462
	.quad	0x3fb5c0eddfb87810              # double 0.084975115889818875
	.quad	0x3feb2e9797fac475              # double 0.84943751986987925
	.quad	0x3fcb79b0ce94d97c              # double 0.21465120398506687
	.quad	0x3fe89cdfdd1add31              # double 0.76914971527631881
	.quad	0x3fd5e6ee5319b38c              # double 0.34221990695260085
	.quad	0x3fef7eba34c73c8b              # double 0.98421964939360984
	.quad	0x3fd528f9d249ef6e              # double 0.33062596832291191
	.quad	0x3fe7bfd9453dbb04              # double 0.74216903232249409
	.quad	0x3fef249a00f9e49b              # double 0.97321796599057408
	.quad	0x3feb02487ca0d047              # double 0.84402870503846195
	.quad	0x3fd78d3c65f493b6              # double 0.36799535709934206
	.quad	0x3fc2d2bbda382834              # double 0.1470560851597057
	.quad	0x3fc84fdb2853dc5c              # double 0.18993701428527998
	.quad	0x3fbfc09c1152ce68              # double 0.12403273985801777
	.quad	0x3f40edb54e159000              # double 5.1661827835092211E-4
	.quad	0x3fb9401583b779b0              # double 0.098634094865224453
	.quad	0x3fc54d9be4576274              # double 0.16643093728523051
	.quad	0x3fe10190cf49495e              # double 0.53144112096405727
	.quad	0x3fed357615e1eff1              # double 0.91277603410662611
	.quad	0x3fd0cb98b0402142              # double 0.26242654048884984
	.quad	0x3fe001dd7aa5a4f8              # double 0.5002276797723928
	.quad	0x3fe6673a4705c09b              # double 0.70010103103233534
	.quad	0x3fc5b10c4e470284              # double 0.16946557829034614
	.quad	0x3fd333d3fd45c30e              # double 0.30003833516734424
	.quad	0x3fd39a17ac7cef42              # double 0.3062800583318116
	.quad	0x3fe6e3a10ba00e8a              # double 0.71528675337363379
	.quad	0x3feda09f8f460ab4              # double 0.92585733397603187
	.quad	0x3fee0ce6f5f47333              # double 0.9390749744230561
	.quad	0x3fe6d17608c4a408              # double 0.7130689784290789
	.quad	0x3fe054548273d4d7              # double 0.51029420355794286
	.quad	0x3fe35819afe09cc4              # double 0.60450443602612625
	.quad	0x3fc26d247c6d7ebc              # double 0.1439557654912188
	.quad	0x3fd05576602bd0f6              # double 0.25521621123995375
	.quad	0x3fe851760bbfa584              # double 0.75994398398067675
	.quad	0x3fb7dca3b18f89d8              # double 0.093210440492419777
	.quad	0x3fd431776bfa10e4              # double 0.3155191950284133
	.quad	0x3fee20a950280184              # double 0.94148698478242964
	.quad	0x3feba4fc05f9281e              # double 0.86388970533994658
	.quad	0x3fed002a1d1ff3eb              # double 0.90627008140984111
	.quad	0x3fa482a18de4a510              # double 0.040059135981502902
	.quad	0x3f7575493a2db800              # double 0.0052388058128212123
	.quad	0x3fe399fdd79062b8              # double 0.61254779913277613
	.quad	0x3fc65bc97bb423d4              # double 0.17467611828058571
	.quad	0x3fe0f9909182b99e              # double 0.53046444339797794
	.quad	0x3fbbdfc44ac286b8              # double 0.1088831598777017
	.quad	0x3fc13fac034fe2ac              # double 0.13475561296197236
	.quad	0x3fb47a8c014d44a0              # double 0.079994917218999095
	.quad	0x3fc628fc4edd1060              # double 0.17312578058966022
	.quad	0x3fe532186f7128a5              # double 0.66236516729374684
	.quad	0x3f9541300c865ee0              # double 0.020756483807047199
	.quad	0x3fd7db0c7bcf0ab2              # double 0.3727446755475895
	.quad	0x3fdcdd552b44f672              # double 0.4510090754082291
	.quad	0x3fe56ea8c8a4fb4e              # double 0.66975821674700753
	.quad	0x3feb7bb3eb74e91c              # double 0.85885044086106487
	.quad	0x3fe9fe6b252fc874              # double 0.81230695021646548
	.quad	0x3fd441445d688ab2              # double 0.31648358461294912
	.quad	0x3fd3cb26fbfac85e              # double 0.30927443129906418
	.quad	0x3fdff76d92d045ac              # double 0.49947680794965765
	.quad	0x3fe3aff66bed9cb5              # double 0.61522980766030477
	.quad	0x3fe9c54618a6ac5f              # double 0.80533127607976585
	.quad	0x3fc35cec8b9d2418              # double 0.15127331559259072
	.quad	0x3fe1d2b3a1f07c37              # double 0.55697042111194761
	.quad	0x3fea86b14c36c4bb              # double 0.82894196401152642
	.quad	0x3fd1681af1726820              # double 0.27197907999800641
	.quad	0x3fededd04c81b576              # double 0.93527998869619355
	.quad	0x3fd192caf5d90c16              # double 0.27458452232912245
	.quad	0x3fe325a8355578b8              # double 0.59834680954715846
	.quad	0x3f9506ec0b724b80              # double 0.020534218023907425
	.quad	0x3fe84378cb75f0c8              # double 0.75823631037158012
	.quad	0x3fdf383cb5bafc36              # double 0.48780744311438029
	.quad	0x3fe781b2b81264f5              # double 0.73458229018720422
	.quad	0x3fdf9a42a5b87104              # double 0.49379030402793966
	.quad	0x3fcc80a222a86dbc              # double 0.22267557804376092
	.quad	0x3fd0d58fbda2f692              # double 0.26303475875088467
	.quad	0x3fec45c4d76b0de2              # double 0.88351671289313694
	.quad	0x3fe7b6a99e54f524              # double 0.74104767727081766
	.quad	0x3fe7461cd3bfbf69              # double 0.72730866772870428
	.quad	0x3feb7ababe86f2eb              # double 0.8587316247208866
	.quad	0x3fe393ba36745207              # double 0.61178312907810628
	.quad	0x3fc9c0dc0ca1b674              # double 0.20119810692579032
	.quad	0x3fe0abfe6646d29e              # double 0.52099533058079195
	.quad	0x3fc402825959b364              # double 0.15632657397091088
	.quad	0x3fea8d48b3c0b518              # double 0.82974658115350319
	.quad	0x3fda30924b3ed806              # double 0.40921456669036649
	.quad	0x3fd54704355064d4              # double 0.33245949942063402
	.quad	0x3fc162c726dc4178              # double 0.13582696340064238
	.quad	0x3fe8f5311ea52436              # double 0.77993064866416861
	.quad	0x3fd8cb59060f517e              # double 0.38741136161595324
	.quad	0x3fdd7ebcc27da140              # double 0.46086043351398942
	.quad	0x3fdf520af7f35404              # double 0.48938249792018973
	.quad	0x3fe62d4bec64070c              # double 0.6930293671614165
	.quad	0x3fb41ae11cb2fab8              # double 0.078535146242738274
	.quad	0x3fe5207b8fcfedac              # double 0.66021516884159359
	.quad	0x3fe2ec5bea741762              # double 0.59135242263503707
	.quad	0x3fb460616a203a88              # double 0.079595650109903215
	.quad	0x3fdb7efecaa3d970              # double 0.42962617672983239
	.quad	0x3fb50dc7b3a9d188              # double 0.082241517413257026
	.quad	0x3fc5f2b9f27c01b4              # double 0.17146992054041521
	.quad	0x3fd6f6dd0c9ce044              # double 0.35881735069006404
	.quad	0x3feb9978c8faf0a4              # double 0.86248435262634304
	.quad	0x3fcd6e8d616171d4              # double 0.2299362874499723
	.quad	0x3f9338150a4d8400              # double 0.018768624070961692
	.quad	0x3feee81d372f1709              # double 0.9658342435656958
	.quad	0x3fd52ef8e097a142              # double 0.33099195416300031
	.quad	0x3fd19f0a5f64936c              # double 0.27533206287107848
	.quad	0x3fbcdd7d6068bd28              # double 0.11275466541041068
	.quad	0x3feb3edfda3343ee              # double 0.85142510049092635
	.quad	0x3fea11ad526fc827              # double 0.81465784169109134
	.quad	0x3fe5efbfe286eb43              # double 0.68551630252418538
	.quad	0x3fc907710ffecdb8              # double 0.19553960114499858
	.quad	0x3feebdef294adac5              # double 0.96068533005640033
	.quad	0x3fec4e3908e39098              # double 0.88454868064993075
	.quad	0x3fcf19a086bacfac              # double 0.24296957567787325
	.quad	0x3fda47eeffa5186a              # double 0.41064047780344615
	.quad	0x3fd21b202d1f568a              # double 0.28290562063680424
	.quad	0x3fef995adc783f5d              # double 0.98747008381358691
	.quad	0x3fe5e456afe0a404              # double 0.68412336684298269
	.quad	0x3fe9c7a9d722cae0              # double 0.80562297838909202
	.quad	0x3fe79d3da59482e2              # double 0.73794443454616165
	.quad	0x3fc530a7bc712414              # double 0.16554733945147915
	.quad	0x3fe67738f9b9bfd3              # double 0.70205353521850566
	.quad	0x3fdcb8b132487e8c              # double 0.44877271566836252
	.quad	0x3fe9b7c358806021              # double 0.80368201528017746
	.quad	0x3fefcdecf6f5b64c              # double 0.99388740763033345
	.quad	0x3fd77e9cd005eb0c              # double 0.36710281672246547
	.quad	0x3fcd4df7a6247c78              # double 0.22894187557628576
	.quad	0x3fe5644a2c3a651e              # double 0.66849239958097306
	.quad	0x3fd2cb385db405fa              # double 0.29365357542710024
	.quad	0x3fe5cfaee7e749c7              # double 0.6816019563068999
	.quad	0x3fee7699e6ac7bc7              # double 0.95197768262357207
	.quad	0x3fe601ff621c047c              # double 0.68774384653092069
	.quad	0x3fe00ee807099082              # double 0.50181962370380995
	.quad	0x3fe45011f2e36476              # double 0.63477418364631322
	.quad	0x3fee0b273a647043              # double 0.93886147885087501
	.quad	0x3fd18f0385cfe1ca              # double 0.27435386722166
	.quad	0x3fd64c89bcd2a122              # double 0.34842151107524633
	.quad	0x3fb3b337a4972410              # double 0.076953389819337525
	.quad	0x3fa93790b9e01ac0              # double 0.04925205487238804
	.quad	0x3fc613c7eaced7a4              # double 0.17247866597398087
	.quad	0x3fed04948caad7e9              # double 0.90680911516278428
	.quad	0x3fe3aa010ff72ac2              # double 0.61450245970021222
	.quad	0x3fe3cec780e99fe8              # double 0.61899161508790446
	.quad	0x3fe771d1162df6b2              # double 0.73264364559118733
	.quad	0x3fe6b2bc0f918450              # double 0.70931819000919383
	.quad	0x3fe58cf855f3e964              # double 0.67345825946476312
	.quad	0x3fd1f32e504bcc66              # double 0.28046758500494773
	.quad	0x3fe4baa8f222b004              # double 0.64778563778008946
	.quad	0x3fd8f2356787ce28              # double 0.38978324041747436
	.quad	0x3fed5beadb621f89              # double 0.91747038696574734
	.quad	0x3fc0961b71c810e8              # double 0.12958090835321134
	.quad	0x3fd783c9a730eb22              # double 0.3674186833119838
	.quad	0x3fc9dfc1e77ac5d0              # double 0.20214103510583792
	.quad	0x3fb9094160fa5798              # double 0.097797475982899562
	.quad	0x3faae3bc6c80f7a0              # double 0.052518738026704925
	.quad	0x3fd9f908247e54dc              # double 0.40582469524208675
	.quad	0x3fd09172e8d36860              # double 0.25887749421020168
	.quad	0x3fed4496edc2e28e              # double 0.91462274968860569
	.quad	0x3fb31f0579c3eba0              # double 0.074692098834857834
	.quad	0x3fbb25f063f49d98              # double 0.10604765358276891
	.quad	0x3fd098344a154870              # double 0.25928981051141076
	.quad	0x3fe6f19866099401              # double 0.71699161462004224
	.quad	0x3fcb7f1eb3884970              # double 0.21481689230183632
	.quad	0x3fc0430efa99865c              # double 0.1270464633590106
	.quad	0x3fd50e703a132b76              # double 0.32900624915480792
	.quad	0x3fec3853cfdc757f              # double 0.88187590215572687
	.quad	0x3fe14662e274ceff              # double 0.5398420737242019
	.quad	0x3fe71e77a02f3e28              # double 0.72246915136378664
	.quad	0x3fa97567c5290120              # double 0.049723856751827222
	.quad	0x3fd840cf9fe45478              # double 0.37895575155682293
	.quad	0x3fed6d8989df3c71              # double 0.91962124755981567
	.quad	0x3fd310c0c5d76d64              # double 0.29789752312145468
	.quad	0x3fe17c12b40b772d              # double 0.54639563717839723
	.quad	0x3fd5fe1d1b05f1c4              # double 0.34363486899362905
	.quad	0x3fdede7ea8eb2c58              # double 0.48233000274621451
	.quad	0x3fef5941da2aceab              # double 0.97964565859588981
	.quad	0x3f9003e38c858800              # double 0.015639834834821897
	.quad	0x3fed34196cc02ff8              # double 0.91260977974297841
	.quad	0x3fdfc4347d3b30e8              # double 0.49635040502177086
	.quad	0x3fe39ef4c16178c6              # double 0.61315381784131584
	.quad	0x3feb5e389e368802              # double 0.85525160695056024
	.quad	0x3fe85e0f43fff027              # double 0.76148188859179278
	.quad	0x3fc5857a89a0cc20              # double 0.16813594551203526
	.quad	0x3fe6150644d69487              # double 0.6900664658065957
	.quad	0x3fcc7510e2e6b0e8              # double 0.2223225696483333
	.quad	0x3fa58d23abd119c0              # double 0.042092432712297789
	.quad	0x3fd6030719f84388              # double 0.3439347985850465
	.quad	0x3fe151acc99eacdf              # double 0.54122008684990053
	.quad	0x3fe5f81cb99e56df              # double 0.68653713468185262
	.quad	0x3fd5cd9d8a1b3354              # double 0.34067476736963909
	.quad	0x3fdb0f96d7f0ed12              # double 0.42282649124145266
	.quad	0x3fdfc5bf55ff65de              # double 0.49644454382140946
	.quad	0x3febf6bf6b86b122              # double 0.8738705730552605
	.quad	0x3fe4ecf02ef9250a              # double 0.65392312216241177
	.quad	0x3fc51766696bfb34              # double 0.16477661273526112
	.quad	0x3feb85a1a829ff67              # double 0.86006243557492901
	.quad	0x3fda09218c0f9c36              # double 0.40680731466131037
	.quad	0x3fe13a2719d00c0d              # double 0.53834872285404034
	.quad	0x3fec040fd5aadb88              # double 0.87549583179394208
	.quad	0x3fe804dc49636b6e              # double 0.75059332212127372
	.quad	0x3fd03f79fe766304              # double 0.25387430047844384
	.quad	0x3fd0aad84ee95a18              # double 0.26042754846767613
	.quad	0x3fc80717bb29eb40              # double 0.18771645201544551
	.quad	0x3fe428bb82c2a839              # double 0.62997222460877034
	.quad	0x3fe31d7b86a87b17              # double 0.59734894085326828
	.quad	0x3fd4108c5b3d60b8              # double 0.31351002607471967
	.quad	0x3fcea96dd588ffd0              # double 0.23954556395074045
	.quad	0x3fbf0cdc16884440              # double 0.1212899737368085
	.quad	0x3fe784b51c6b59ff              # double 0.73494964171078425
	.quad	0x3fba618b4d0004f0              # double 0.10305090551266338
	.quad	0x3fda4d2895a79c90              # double 0.41095938315124503
	.quad	0x3fe4ad0c3275f4e0              # double 0.64612398009890271
	.quad	0x3fe2cfeb771b1bee              # double 0.58788083327169516
	.quad	0x3fe86a1aa42f3e83              # double 0.76295215670866445
	.quad	0x3fc8302a8894e798              # double 0.18896991414095221
	.quad	0x3fa83a27bf29cd40              # double 0.047318689427721328
	.quad	0x3fbdd4cbe62018d8              # double 0.11652826660437954
	.quad	0x3f9085b8adc36840              # double 0.01613510666434359
	.quad	0x3fd50c26e10ce0ee              # double 0.32886669137543734
	.quad	0x3fb719f0ac8ffd20              # double 0.090239565019136325
	.quad	0x3fe1d36dfb592b5f              # double 0.55705927936046951
	.quad	0x3fc2fd6b1b268650              # double 0.14835871530253764
	.quad	0x3fddbdf79e4546ec              # double 0.46471968132128327
	.quad	0x3fefacb3c709e3f5              # double 0.9898318183396656
	.quad	0x3fcc412ec2df254c              # double 0.22073921694963372
	.quad	0x3fe79fd518873da3              # double 0.73826079168968695
	.quad	0x3fe965d4b6fc3090              # double 0.79368053187637777
	.quad	0x3fde52726a2cd2a6              # double 0.47378216141377505
	.quad	0x3f57fe0951193e00              # double 0.0014643755897799648
	.quad	0x3fea928e3aafd1a1              # double 0.83039008581413409
	.quad	0x3fd35b96032676bc              # double 0.30246496493951347
	.quad	0x3fefedc4af8c2b91              # double 0.99777445112828122
	.quad	0x3fd5a42b60816094              # double 0.33814510750154025
	.quad	0x3fbe6682b48db6b0              # double 0.11875168712659945
	.quad	0x3fe7c47e6ee25557              # double 0.74273606926969193
	.quad	0x3feacb7cf05ba0e0              # double 0.83733984894663748
	.quad	0x3fef50977731634c              # double 0.97858784942500554
	.quad	0x3fe6b53ab1e2b7dd              # double 0.70962271445545932
	.quad	0x3fe2ac548bee6494              # double 0.58353640871350132
	.quad	0x3fefcb8fa5b1622c              # double 0.99359876977820738
	.quad	0x3fead18a0b898976              # double 0.83807852033014174
	.quad	0x3fe739f4f5513acf              # double 0.72582481301818713
	.quad	0x3fe9b9012af0d29e              # double 0.8038335646329704
	.quad	0x3fea65ca5414b7b8              # double 0.82492557928139032
	.quad	0x3fc25dca672d24bc              # double 0.14348726308734239
	.quad	0x3fe0096cb6b57304              # double 0.50115047154722037
	.quad	0x3fdd3f3d519ba0ce              # double 0.45698483438037563
	.quad	0x3f95b9ce04c7aee0              # double 0.021216601411579883
	.quad	0x3fc010297c8f494c              # double 0.1254932268335075
	.quad	0x3fe32f5e6a139944              # double 0.59953232496335618
	.quad	0x3fe385a2bf9828ec              # double 0.61006295605446104
	.quad	0x3fe26821a3e0fe65              # double 0.57521135337442486
	.quad	0x3fda9c2d836771ec              # double 0.41578233559064759
	.quad	0x3fe80411218c17db              # double 0.75049644996829146
	.quad	0x3fe6604a964af839              # double 0.69925431589195519
	.quad	0x3fb807c839fca6d0              # double 0.093868745953524568
	.quad	0x3feedd588a875b1b              # double 0.96451975876229611
	.quad	0x3fe73aa872b7527c              # double 0.72591040044296973
	.quad	0x3fe11cee670e7566              # double 0.53478164795130279
	.quad	0x3fd44b6fe9eea2c4              # double 0.31710431904734215
	.quad	0x3fec0b85c2b6d178              # double 0.87640655546287771
	.quad	0x3fc18f2f24c4485c              # double 0.1371821336293263
	.quad	0x3fe6143506aaf154              # double 0.68996669103902741
	.quad	0x3fc80075c809cca0              # double 0.18751404063695976
	.quad	0x3fe83f59d0f4939b              # double 0.75773325740429998
	.quad	0x3fb077753a1260d8              # double 0.064322783162768515
	.quad	0x3fe471038693512b              # double 0.63879562649029731
	.quad	0x3fdb0f9c33c6676a              # double 0.42282776886133056
	.quad	0x3fe78f8325e37cda              # double 0.736268590928286
	.quad	0x3fa2ab72a32b1300              # double 0.036464292924881292
	.quad	0x3fe8c0cfe4be27ce              # double 0.77353663135840534
	.quad	0x3fd026a3c60b8d2e              # double 0.25235838260978738
	.quad	0x3fc913b7db653620              # double 0.19591425144828722
	.quad	0x3feaf9d50198860c              # double 0.84299707709959781
	.quad	0x3fd760402215dbe6              # double 0.36524966553355254
	.quad	0x3fe2a150312c8245              # double 0.58219155887861318
	.quad	0x3fea0927444c3b79              # double 0.81361735667620316
	.quad	0x3fdd496d7f629f90              # double 0.45760667266812849
	.quad	0x3fd11de8143ffcd2              # double 0.26745035150083851
	.quad	0x3fecfb7dac571084              # double 0.90569957409071877
	.quad	0x3fcce0633f4f46e0              # double 0.22559776870053039
	.quad	0x3fe35222f58949e7              # double 0.60377643543534709
	.quad	0x3fdb8cd8fc405e80              # double 0.43047165521554831
	.quad	0x3fee74728b91dd01              # double 0.95171477565500606
	.quad	0x3fe6fde9a89699a2              # double 0.71849520614050655
	.quad	0x3fd97002861b0e24              # double 0.39746153923280958
	.quad	0x3fe298437f75024c              # double 0.58108687299688588
	.quad	0x3fdc841926a9e8b6              # double 0.44556263709786081
	.quad	0x3fe2bbd9b3780992              # double 0.58543095638769871
	.quad	0x3fdd231cbb59c8e0              # double 0.45526808067292102
	.quad	0x3fb084a83ad53928              # double 0.064524187434675029
	.quad	0x3fe8107c72150b4f              # double 0.75201246530228072
	.quad	0x3fe047b29f39c4de              # double 0.50875216578256377
	.quad	0x3fe6d0df58ad6a1a              # double 0.71299712486080868
	.quad	0x3fde6f4fa6703258              # double 0.47554389241921546
	.quad	0x3fe81a6332e3705f              # double 0.75322112979075573
	.quad	0x3fc8ee6a263519fc              # double 0.19477583757016237
	.quad	0x3fd08194193a4942              # double 0.25790884460106522
	.quad	0x3fcc7a5a397f1fb8              # double 0.22248390014123998
	.quad	0x3fd9ab876495e3fe              # double 0.40109429190448498
	.quad	0x3fc79831d2eed8f0              # double 0.18433211135351923
	.quad	0x3fe16bfe2762d5c4              # double 0.54443271343796384
	.quad	0x3fba7b69c750f0c8              # double 0.10344563594930201
	.quad	0x3fe3cea6d6f40a5f              # double 0.61897603972495208
	.quad	0x3fc9d0238ae929b0              # double 0.20166439326051266
	.quad	0x3fd582789d59f252              # double 0.33608832708686009
	.quad	0x3fea95f373a8155f              # double 0.8308045634191038
	.quad	0x3fd7d90fbd85e4b2              # double 0.37262338169200426
	.quad	0x3fddb627b1240ecc              # double 0.46424286173735818
	.quad	0x3fe9f40d6ad045a5              # double 0.81104155408882106
	.quad	0x3f9a348dc63d55e0              # double 0.02559110186060376
	.quad	0x3fdaa4aa238f1234              # double 0.41630032990022703
	.quad	0x3f9fa9b5f60b32e0              # double 0.030920832769697593
	.quad	0x3fe25409f07b1d75              # double 0.57275864571503965
	.quad	0x3fc1fa693a8ce118              # double 0.1404544387712654
	.quad	0x3fe7c88799a3ac2b              # double 0.74322872169193965
	.quad	0x3fceb5a682994f44              # double 0.23991853119752637
	.quad	0x3fcb7b3747fa4b74              # double 0.21469775213753517
	.quad	0x3fe0f33426509455              # double 0.52968795283653469
	.quad	0x3fc73ecb9054dd7c              # double 0.18160385653912303
	.quad	0x3feb27ee23ced281              # double 0.84862429612856272
	.quad	0x3fe38fbdb5245c18              # double 0.61129651431372434
	.quad	0x3fe9e6385e4e10be              # double 0.80935305041250394
	.quad	0x3fddc2610bfc0968              # double 0.4649889580761255
	.quad	0x3fb8e18d77b210f8              # double 0.097191659662772767
	.quad	0x3fc4bc8b8b390424              # double 0.16200393960937831
	.quad	0x3fc59c5ea83a0a04              # double 0.16883452619738659
	.quad	0x3feb6478dba9cfad              # double 0.85601466086381139
	.quad	0x3fc86fbf1ba82d80              # double 0.19091023302494747
	.quad	0x3fcf05e5edcbab10              # double 0.24236749755012754
	.quad	0x3fddb8639d513582              # double 0.46437921870241194
	.quad	0x3fd8c786b761f46c              # double 0.38717811497173815
	.quad	0x3feb89fec80c6c55              # double 0.86059512207010391
	.quad	0x3fda6597654c3a8a              # double 0.41245064632759265
	.quad	0x3fe6f17daf44509f              # double 0.71697887641723301
	.quad	0x3fdf434ae7ad0d8c              # double 0.4884822142086811
	.quad	0x3fdc66e8e1f2160a              # double 0.44378110947613492
	.quad	0x3fe30ff2f17da249              # double 0.59569689909137324
	.quad	0x3fe1ecb383e9065f              # double 0.56014419330331211
	.quad	0x3fe4368f80a5f680              # double 0.63166022421474111
	.quad	0x3fb959d583fb6c68              # double 0.099027008745382283
	.quad	0x3fdb24c739600a60              # double 0.42411976435702137
	.quad	0x3fe274c9ad50b213              # double 0.57675632334354743
	.quad	0x3fe9b6edd77db763              # double 0.80358020866490809
	.quad	0x3fac266856c55250              # double 0.054980526535164942
	.quad	0x3fd19522c970eb58              # double 0.27472753211957501
	.quad	0x3fcdf7d42bc3f3c4              # double 0.23412563454613011
	.quad	0x3fda3bc70320b326              # double 0.40989852242892011
	.quad	0x3fe7fd052e5dbaa7              # double 0.74963625961193692
	.quad	0x3fe8ea51bb5097ce              # double 0.77860342583584852
	.quad	0x3fe3af27eb073d05              # double 0.61513133911094597
	.quad	0x3fc9966ade389d10              # double 0.19990287638322757
	.quad	0x3fe5691dbc6350bf              # double 0.66908156198999069
	.quad	0x3fe2663634b5d738              # double 0.57497701926215594
	.quad	0x3fe918b5b6a717bb              # double 0.78426633524281131
	.quad	0x3fb0d13f37a34770              # double 0.065692854960870184
	.quad	0x3fc2e2698b7c372c              # double 0.14753455458451847
	.quad	0x3fdb9bbd553309cc              # double 0.43138058967829518
	.quad	0x3fdd34f743cea2fa              # double 0.45635778066439026
	.quad	0x3fd026604738ddee              # double 0.25234229045187717
	.quad	0x3fee3b5c6c513a4e              # double 0.94474621921274049
	.quad	0x3fde4a15b5988784              # double 0.47327177747694571
	.quad	0x3fdf59625080d8fe              # double 0.48983056890155285
	.quad	0x3fdfc273b1644c0e              # double 0.49624340365807107
	.quad	0x3fca9f463620276c              # double 0.20798566477634084
	.quad	0x3fefd5ae26b2607c              # double 0.99483401830640572
	.quad	0x3fda1a3b6b837028              # double 0.40785108088835154
	.quad	0x3fb7d54d68284a40              # double 0.093098485878990722
	.quad	0x3fd0ec8631c7354e              # double 0.26443629132412105
	.quad	0x3fd7b79361287360              # double 0.3705795716103264
	.quad	0x3fe477fb4f9b6af8              # double 0.63964620159398944
	.quad	0x3fee736dbb14c8c5              # double 0.95159040965361241
	.quad	0x3fd9ede4f031227e              # double 0.40514491516345419
	.quad	0x3fb2c33078d1c418              # double 0.073290853020595015
	.quad	0x3fe6720636b9eb79              # double 0.70141897858353197
	.quad	0x3fe1a416ee837535              # double 0.55128046593350766
	.quad	0x3fecc7cfb1ace7b7              # double 0.8993910284254899
	.quad	0x3feb813cdfc9553d              # double 0.85952609737675056
	.quad	0x3fc6c50c442167f8              # double 0.17788842512783254
	.quad	0x3fc99847d8cc42e4              # double 0.19995973668894529
	.quad	0x3fea073877278ec8              # double 0.81338141701095257
	.quad	0x3fe2750bbc2353a8              # double 0.57678782220556446
	.quad	0x3fc22a2414145420              # double 0.14191103916587711
	.quad	0x3fdd5d0a03874a4e              # double 0.45880365700319181
	.quad	0x3fd634674b8ed7b4              # double 0.34694845560749887
	.quad	0x3fb30d54c67030b8              # double 0.074422167250477567
	.quad	0x3fe9f84afe900a48              # double 0.81155919760960504
	.quad	0x3fdc9577028f6830              # double 0.4466226124765198
	.quad	0x3fd659bd7f05d94c              # double 0.34922730831694504
	.quad	0x3fe88b44e9430e2d              # double 0.76700063284846964
	.quad	0x3fedc3eab22be604              # double 0.9301656227027597
	.quad	0x3f88bb330abb75c0              # double 0.012075804486296415
	.quad	0x3fe9a86f68be703a              # double 0.80181093652527768
	.quad	0x3fd8878959d58b42              # double 0.38327249310366451
	.quad	0x3feb36953b5b2fa5              # double 0.85041295617110235
	.quad	0x3f746f458c29e900              # double 0.0049889294338021362
	.quad	0x3feedd5fe1b507d7              # double 0.96452325900485902
	.quad	0x3fe81bdd8f596d6b              # double 0.7534015464583893
	.quad	0x3fd70ad95559342a              # double 0.36003716788110529
	.quad	0x3fe1ce582399ea34              # double 0.55643851235738007
	.quad	0x3fc06a093485f050              # double 0.12823596062287601
	.quad	0x3fef4a50be801ffc              # double 0.97782170493246622
	.quad	0x3fc38dd8ab83fe40              # double 0.15276630759034227
	.quad	0x3fc283240fbbe15c              # double 0.14462710159547043
	.quad	0x3fe2adde7cd0e772              # double 0.58372425439959685
	.quad	0x3fefb31d64a764da              # double 0.99061460169755411
	.quad	0x3feb0f489908d0f6              # double 0.84561567201174515
	.quad	0x3fed8c35c9d18c32              # double 0.92336549203571949
	.quad	0x3febd713760937c0              # double 0.8700043969527016
	.quad	0x3fe6835e1adefbe5              # double 0.70353608368156684
	.quad	0x3fc96051b868c158              # double 0.19825192932467917
	.quad	0x3fc5ee82c8cfbe90              # double 0.1713412743115339
	.quad	0x3fb5c6c1a41b17c8              # double 0.085064032139683055
	.quad	0x3fe069396b203246              # double 0.51284476206780805
	.quad	0x3fe0ee6841f37a7e              # double 0.52910244828292696
	.quad	0x3fd987e19a2383ce              # double 0.39891853382692666
	.quad	0x3fe6bb54d01e8f91              # double 0.71036759041133923
	.quad	0x3fe9bff599094809              # double 0.80468253984349858
	.quad	0x3fb126044dac3030              # double 0.066986340487517948
	.quad	0x3fe7698449e23ccd              # double 0.73163046293657319
	.quad	0x3fbe7a314de38380              # double 0.11905201102810103
	.quad	0x3feacc05528177f0              # double 0.83740488161470061
	.quad	0x3fe3225725c65b3c              # double 0.59794194581886684
	.quad	0x3fdbf1964ecbf962              # double 0.4366203088283297
	.quad	0x3fcbe4b44376c3d0              # double 0.21791699689995747
	.quad	0x3fe4d95ff8d08832              # double 0.65153502079579639
	.quad	0x3fea785ce12927b5              # double 0.82719272591315607
	.quad	0x3fee9c2a5ab13f46              # double 0.9565631648383508
	.quad	0x3fedeb3f0d1b2646              # double 0.93496658859039239
	.quad	0x3fefdc3a977ec15b              # double 0.99563340748685946
	.quad	0x3fe14e77bab3be33              # double 0.54082857575662613
	.quad	0x3fef6fb3ea483e2a              # double 0.98238559492341904
	.quad	0x3fcd2a87ab341dd0              # double 0.22786041125821876
	.quad	0x3fdb91e7e945a9c6              # double 0.43078038959961551
	.quad	0x3fcef19170054b2c              # double 0.24174707383880312
	.quad	0x3fb3570c29837660              # double 0.075546989569795553
	.quad	0x3fbf1cc6ad7f4da8              # double 0.1215328382088986
	.quad	0x3fe58c028f62ff93              # double 0.67334106450288045
	.quad	0x3fda0346497c25be              # double 0.40644986320748078
	.quad	0x3fc360e415d7560c              # double 0.15139437738859873
	.quad	0x3f9683410e112a00              # double 0.021985069736084384
	.quad	0x3fc116d9f6d50454              # double 0.13350987007473469
	.quad	0x3fe3ddfb8b4bd56b              # double 0.62084748464864725
	.quad	0x3fd3814ff7c091a8              # double 0.30476760096123678
	.quad	0x3fd7812b40d1d0dc              # double 0.36725884752310178
	.quad	0x3fe3cccd9b3c4807              # double 0.61875038451603437
	.quad	0x3fd56d04bc09afea              # double 0.33477896082945213
	.quad	0x3fcf53f5f81f7f54              # double 0.24474978080160759
	.quad	0x3fed50bc2e414771              # double 0.91610535654238678
	.quad	0x3fd6e29ad05ba90e              # double 0.35758085582223564
	.quad	0x3fe05f5afe46810d              # double 0.51164006865659106
	.quad	0x3fe4a2eea02b1ce8              # double 0.64488917620556396
	.quad	0x3fb289bded9a9c08              # double 0.072414274700904113
	.quad	0x3fd035145c5a3a4c              # double 0.25323971766275544
	.quad	0x3fd9aad7b87bfdb0              # double 0.40105240837143707
	.quad	0x3fac26df31234bf0              # double 0.054984068630481775
	.quad	0x3fc0cedb1a75bcd0              # double 0.13131274024951844
	.quad	0x3fd8b77e50ebe4ee              # double 0.38619954969870107
	.quad	0x3fd739a0883c69aa              # double 0.3628922777585567
	.quad	0x3fe820401b81d296              # double 0.75393681881412777
	.quad	0x3fb2fe5e6c3a2838              # double 0.07419386045708698
	.quad	0x3fd5f8678bb84144              # double 0.34328640598780091
	.quad	0x3fda965df8348304              # double 0.41542767752439169
	.quad	0x3fe9a024618942af              # double 0.80079859781297624
	.quad	0x3fe1fc536a23f051              # double 0.5620514939360054
	.quad	0x3fd913069be204f4              # double 0.39178624365747727
	.quad	0x3fbd61d392f19e30              # double 0.1147739633321343
	.quad	0x3fcdbb458b75ae2c              # double 0.23227757749133227
	.quad	0x3fec138f816b444d              # double 0.87738776471281599
	.quad	0x3fefaa232b62a895              # double 0.98951872323711376
	.quad	0x3fd6d9b7a95760ba              # double 0.35703841721761942
	.quad	0x3fc78ffd123e2c10              # double 0.18408168211712495
	.quad	0x3fca3809fe5961e8              # double 0.20483517569915866
	.quad	0x3fd8174e3096b012              # double 0.37642245049460243
	.quad	0x3fe2fe2c44b927a6              # double 0.59352696821701012
	.quad	0x3fe0d777f71ebf87              # double 0.52630232110640029
	.quad	0x3feeafd185aa4921              # double 0.95896221262436054
	.quad	0x3fac347a9d022ce0              # double 0.055087882677151034
	.quad	0x3fef20b70baf9c92              # double 0.97274353296679039
	.quad	0x3fe307e7d411c92c              # double 0.59471503658122549
	.quad	0x3fdc37af469a9892              # double 0.44089872260008989
	.quad	0x3feedde4ebbcb4a6              # double 0.96458669702919475
	.quad	0x3fbd33b07a7ca6d0              # double 0.11406996717837647
	.quad	0x3fe5019554afc09a              # double 0.65644327679003145
	.quad	0x3fe465bc79900c71              # double 0.63741897337639675
	.quad	0x3fd4c2fe1b2d6d68              # double 0.32440140394256511
	.quad	0x3fed86ca6a0fc707              # double 0.92270394053613891
	.quad	0x3fee7464a84a5c60              # double 0.9517081534312517
	.quad	0x3fea17b44efc29cf              # double 0.81539359499702779
	.quad	0x3fd76b9de9829f96              # double 0.36594341090903393
	.quad	0x3f6fa51b8b3d1200              # double 0.0038629091231163759
	.quad	0x3feeb047bd037f3e              # double 0.95901858250360994
	.quad	0x3fee0563c7fbd197              # double 0.93815793093976907
	.quad	0x3fe2bd1d7988eb93              # double 0.58558534371637661
	.quad	0x3fe15f3b98d9b2af              # double 0.54287509778585796
	.quad	0x3fee7f53c77a38f0              # double 0.95304287872730065
	.quad	0x3fe36ccc4dc497a3              # double 0.6070310133843474
	.quad	0x3fcd18b6e0447474              # double 0.22731672239834533
	.quad	0x3fda0d3dc10fa8b2              # double 0.40705818036679908
	.quad	0x3fdd51768936df98              # double 0.45809710883940502
	.quad	0x3fbcbb42d09f2fa0              # double 0.11223237603479541
	.quad	0x3fd2d3b7606b110e              # double 0.29417213836519884
	.quad	0x3fec55f2fbdd056a              # double 0.88549184028685812
	.quad	0x3fec39c69bec15b8              # double 0.88205271199756563
	.quad	0x3fd1641bfed93c6a              # double 0.27173519027286963
	.quad	0x3fcee6c30c7ad0b4              # double 0.24141729459154748
	.quad	0x3fd0a20ddb9ca3c2              # double 0.25989099928352399
	.quad	0x3fe5b660a0b273cb              # double 0.67851287256382287
	.quad	0x3fec851dd31b0514              # double 0.89124957305480956
	.quad	0x3fee90686fe40499              # double 0.9551279244771137
	.quad	0x3fea12b0781ffd52              # double 0.81478141271501614
	.quad	0x3fe99d8f4ece6c87              # double 0.80048337356437649
	.quad	0x3fdbc23d49d2e728              # double 0.43373043259963362
	.quad	0x3fd96d3d9ce8dba0              # double 0.39729252169802898
	.quad	0x3fe8796843be553d              # double 0.76482022505903269
	.quad	0x3fe86222ea9e71b3              # double 0.76197954010017666
	.quad	0x3fece220a618f3ec              # double 0.90260345879471293
	.quad	0x3fb41b10e5b10f40              # double 0.078537994458256044
	.quad	0x3fe34253cd60636e              # double 0.60184660065270434
	.quad	0x3f90d9fbc3579ea0              # double 0.016456540868516556
	.quad	0x3fea68500ecb776d              # double 0.82523348703010202
	.quad	0x3fdfd41c6130aee6              # double 0.49732121936061302
	.quad	0x3fd974d4fbf6cf9e              # double 0.39775585752362896
	.quad	0x3fe020654ac8b4d3              # double 0.50395454984905041
	.quad	0x3fe4a22e99e0d46c              # double 0.64479761175483707
	.quad	0x3fc7b3e092fa4a30              # double 0.18517691780705681
	.quad	0x3fd9938adaf9130e              # double 0.39963027366711479
	.quad	0x3fcac48799ace26c              # double 0.20912261012724132
	.quad	0x3fbe9236fb892e70              # double 0.11941856041920018
	.quad	0x3fe1503829c94800              # double 0.54104240571382434
	.quad	0x3febf96c9ec02c46              # double 0.8741973019217617
	.quad	0x3fe86161dbcc8d48              # double 0.76188748292444419
	.quad	0x3fe8bdbd7c0818da              # double 0.77316164231231288
	.quad	0x3fe52973648c1d6f              # double 0.6613099063696789
	.quad	0x3fd952c212dd1d04              # double 0.3956761535850577
	.quad	0x3fcd1976c5829184              # double 0.22733959812206816
	.quad	0x3fdb45d5cef36258              # double 0.4261374016764754
	.quad	0x3fed776831f6fda0              # double 0.92082605131865946
	.quad	0x3fc68fdde242e4c0              # double 0.17626546428599532
	.quad	0x3fa9b33869e63ee0              # double 0.050195467879459832
	.quad	0x3fe758c774b876a9              # double 0.72958729550346846
	.quad	0x3fe5721a8381e62c              # double 0.67017865834276824
	.quad	0x3fe337668f1ed37d              # double 0.60051277116018265
	.quad	0x3fe26f1ec3b00344              # double 0.57606447429871155
	.quad	0x3fdd666c4015f45a              # double 0.45937639482855774
	.quad	0x3fef1e15f3bb2ba0              # double 0.97242257693993749
	.quad	0x3fee1dff941a3921              # double 0.94116190840012248
	.quad	0x3fe1bcc942750be7              # double 0.554295186805004
	.quad	0x3fdb443e5c540778              # double 0.42604025856427752
	.quad	0x3fdee871ad0aae4a              # double 0.48293725870710047
	.quad	0x3fda016652031110              # double 0.40633543023092589
	.quad	0x3fe0c52d6499cd80              # double 0.52406949661819624
	.quad	0x3fdd9f3cb76334f4              # double 0.46284406575143966
	.quad	0x3fd2523dac0668a8              # double 0.28626958655662316
	.quad	0x3fe555bc1e879132              # double 0.66671567881397764
	.quad	0x3fd7e971ebbb4a8a              # double 0.37362335224785481
	.quad	0x3f9150d0a2230180              # double 0.016909847160378799
	.quad	0x3fda20de43182656              # double 0.40825611641102932
	.quad	0x3fe6fa2a7421c500              # double 0.71803782159818752
	.quad	0x3fdbdcbac85c10a0              # double 0.43534726683015812
	.quad	0x3fb99548ba9efbc0              # double 0.099934144555830606
	.quad	0x3fa0199e8cbe95f0              # double 0.031445460015031901
	.quad	0x3fe6d71a0a2739bf              # double 0.71375753386546836
	.quad	0x3fd4b0af06301302              # double 0.32328391651417132
	.quad	0x3fed6c6d56a9d52a              # double 0.9194857304234223
	.quad	0x3fe404d9ce7b0e6c              # double 0.6255921395135835
	.quad	0x3fe11f40b486edcb              # double 0.53506503352348866
	.quad	0x3fd47820135823cc              # double 0.31983186616031101
	.quad	0x3f942b1ecc80aa20              # double 0.019695740920875449
	.quad	0x3fe75b9462e6a2b1              # double 0.72992915455423291
	.quad	0x3fe1221fec177ee5              # double 0.5354156123321131
	.quad	0x3fe79e5c5deb5697              # double 0.73808115333186464
	.quad	0x3fbcc4a0157e5898              # double 0.11237526440376866
	.quad	0x3fa085d1e3f1aee0              # double 0.032270964694218085
	.quad	0x3fd7f8454cc9fb54              # double 0.37452824114727901
	.quad	0x3fede4aa4860d831              # double 0.93416322838198174
	.quad	0x3fd223a6f955b670              # double 0.28342604016402273
	.quad	0x3fe3362381cf357f              # double 0.60035872796440504
	.quad	0x3fc5d9b834972a5c              # double 0.17070677345175767
	.quad	0x3fecc1f71f9334ba              # double 0.89867740790364015
	.quad	0x3fd6b2ebbc1fd9ec              # double 0.35467046138310709
	.quad	0x3fa88d26af3da570              # double 0.047951897517871767
	.quad	0x3fe49f238711a311              # double 0.64442612057345816
	.quad	0x3feb2970cd0daf54              # double 0.84880867051604491
	.quad	0x3fd09fb8f0bfc89c              # double 0.25974868307742738
	.quad	0x3fe0dd00a264587c              # double 0.52697784154112481
	.quad	0x3fb641a43f62ab30              # double 0.086939111208874875
	.quad	0x3fefb91980ae5f0a              # double 0.99134516842875198
	.quad	0x3fec48b2df8ccd6a              # double 0.88387435590850072
	.quad	0x3fe2ceab1496f441              # double 0.58772806188029147
	.quad	0x3fe0f4dce44bc014              # double 0.52989048565905472
	.quad	0x3fe2660b13837f68              # double 0.57495645343076962
	.quad	0x3fcbcc2bbbe3eee0              # double 0.21716829943021931
	.quad	0x3fea53c779ae1f3c              # double 0.82272695317894983
	.quad	0x3fe91dfc94a5bc75              # double 0.78491047890373855
	.quad	0x3fe7b13a956cb0e4              # double 0.74038438019263397
	.quad	0x3fd9e39ccee19196              # double 0.40451736644015435
	.quad	0x3facd1db24cb0410              # double 0.05628857444890667
	.quad	0x3feb736a3c3f381a              # double 0.85783874289495832
	.quad	0x3fe662c980c90c23              # double 0.69955897477519036
	.quad	0x3fc073bac5101be8              # double 0.12853178617680716
	.quad	0x3f9aa5d895058f00              # double 0.02602327737385135
	.quad	0x3fdaa7dc5b2de14c              # double 0.41649540809841734
	.quad	0x3fd4fe529a267ffe              # double 0.32802262357472489
	.quad	0x3fb4ead64d3ffba8              # double 0.081708330020758724
	.quad	0x3fd2f66692cee5ea              # double 0.29628910385835516
	.quad	0x3fda74aa513d4f5e              # double 0.41337068494362039
	.quad	0x3fd69da99955132e              # double 0.35337295507297284
	.quad	0x3fe677a51c9e199a              # double 0.70210509862299664
	.quad	0x3fd896b8d367ef18              # double 0.38419933934322748
	.quad	0x3faadbf1b3e89780              # double 0.052459290706152295
	.quad	0x3fa5a1c165880c30              # double 0.042249721187566869
	.quad	0x3fdc76f821bd055e              # double 0.44476130766641642
	.quad	0x3fef53a574dc56ba              # double 0.97896073173861642
	.quad	0x3fd1186e37b940b6              # double 0.26711612169038845
	.quad	0x3faef0a8344531d0              # double 0.06042981756272392
	.quad	0x3fcce29a56d93b5c              # double 0.225665371328854
	.quad	0x3fc117b6a3019894              # double 0.1335361762932662
	.quad	0x3fba267acd2f99d0              # double 0.10214965352461225
	.quad	0x3fe4e071d1e45fc7              # double 0.65239802355335363
	.quad	0x3fecb1360dde2f1d              # double 0.89663222035003154
	.quad	0x3fe5918d1ecd2dfd              # double 0.67401748672403949
	.quad	0x3fa4645d4c787480              # double 0.039828219971448142
	.quad	0x3feba06378c951e5              # double 0.86332868186087508
	.quad	0x3fe0b233dee6ccff              # double 0.52175324950658808
	.quad	0x3feb180fc4408dd9              # double 0.84668720560551514
	.quad	0x3fe05332d40b0e4f              # double 0.510156072756624
	.quad	0x3fc24b7156c300c0              # double 0.14292732941067321
	.quad	0x3fd7bcf21e5b05e4              # double 0.3709073349419596
	.quad	0x3fe7127c5c104c65              # double 0.7210065649145575
	.quad	0x3fc8f0d5b422bc74              # double 0.19484969421089071
	.quad	0x3fcd33da836d2b34              # double 0.22814494530970253
	.quad	0x3fc9ee518a6914a4              # double 0.20258540399860181
	.quad	0x3fea0dc849dd93b7              # double 0.81418241907942146
	.quad	0x3fed1049a7f62b85              # double 0.90823824696541122
	.quad	0x3fe607f11da02cd4              # double 0.68846946512476359
	.quad	0x3fd0635d16b390a4              # double 0.25606467453895676
	.quad	0x3fc065011f10f8a4              # double 0.12808240906628499
	.quad	0x3feaacf00993336f              # double 0.83361055250280269
	.quad	0x3feb3b5f7821b970              # double 0.85099767173032426
	.quad	0x3feea6b99dd9c7a1              # double 0.9578521807691126
	.quad	0x3fdd5e95e245fcf8              # double 0.45889803978930344
	.quad	0x3fb4853978a98460              # double 0.080157844503916831
	.quad	0x3febf00ebb870c3a              # double 0.87305390001745953
	.quad	0x3f59bde4dba33a00              # double 0.0015711531582841554
	.quad	0x3fd75aa9192b9e12              # double 0.36490848024411193
	.quad	0x3fecc4f7e403a4fd              # double 0.89904398473768732
	.quad	0x3fe879b3b453691d              # double 0.7648561975468372
	.quad	0x3fe3a39d409d7a8e              # double 0.613722444726436
	.quad	0x3fede9dddec9806b              # double 0.93479817879780336
	.quad	0x3fb566f543bff740              # double 0.083602265396589992
	.quad	0x3fef64d03499d751              # double 0.98105631135579518
	.quad	0x3fa1c048e1ce5b10              # double 0.034670140804499039
	.quad	0x3fe818a18890e2f7              # double 0.75300671265639962
	.quad	0x3f866a6a26a82800              # double 0.010945157341684109
	.quad	0x3fd86c045ac4a11c              # double 0.38159283508368147
	.quad	0x3fdcb4f21c469a26              # double 0.44854405175502376
	.quad	0x3fe196b10661d204              # double 0.54964495893960974
	.quad	0x3fe62d2fd6707c77              # double 0.69301597483344224
	.quad	0x3fd16a1d695b3764              # double 0.2721017388220075
	.quad	0x3fe3fae493caa039              # double 0.62437657228020449
	.quad	0x3fad8d846cabd0e0              # double 0.057720316186449017
	.quad	0x3fd03ac05ae0a6d4              # double 0.25358590006599724
	.quad	0x3fa6bb3736302fc0              # double 0.044397092213415146
	.quad	0x3fed45e9217458e9              # double 0.91478401693418931
	.quad	0x3fbee8f5d15a56d8              # double 0.12074219094423755
	.quad	0x3fe5b82820e1b8cf              # double 0.67873007223331594
	.quad	0x3fe07d01fe26fdb6              # double 0.5152597392952234
	.quad	0x3fe313540c123d0d              # double 0.59610941274323326
	.quad	0x3fcaa0704389cf24              # double 0.20802119539040931
	.quad	0x3fe37cafb541a40e              # double 0.60897050286905752
	.quad	0x3fb264193d58cd78              # double 0.071839883305804153
	.quad	0x3f84314a54cce180              # double 0.0098596388939860002
	.quad	0x3fd39917e780fccc              # double 0.30621907813833782
	.quad	0x3fe351f8b9f1de3d              # double 0.60375629727690916
	.quad	0x3fe06defebd900f5              # double 0.51342006744383062
	.quad	0x3fd4e2eaa4818ff6              # double 0.32634988846825708
	.quad	0x3fb9064d1bdb1020              # double 0.09775239877768671
	.quad	0x3fe368fee910e29f              # double 0.60656686325735965
	.quad	0x3fdcb9af58a1f7de              # double 0.44883330970321633
	.quad	0x3fecda733bfd422d              # double 0.90166627613695527
	.quad	0x3feeba18a48a2f0f              # double 0.96021682869602098
	.quad	0x3fe1b72fe02c1a6b              # double 0.55361169608734195
	.quad	0x3fd89dd983d1a15a              # double 0.38463437912880283
	.quad	0x3fc002aff8ae8b48              # double 0.12508201258341445
	.quad	0x3fdc54bfcab4a1e2              # double 0.44267267985790515
	.quad	0x3fcbc288c323955c              # double 0.21687421348830582
	.quad	0x3fef55ac2307a392              # double 0.97920805780187181
	.quad	0x3fb3d6f62a3ec718              # double 0.077498803437972774
	.quad	0x3fe5b643998fbb16              # double 0.67849903099508668
	.quad	0x3fcb1f4feec4c1d4              # double 0.21189307364103505
	.quad	0x3fe1352778a2fb08              # double 0.5377385479149277
	.quad	0x3fd3ac2b568ce762              # double 0.30738337948024796
	.quad	0x3fe59aa905be87af              # double 0.67512942430425038
	.quad	0x3fe27b6b19fdac41              # double 0.57756571842526949
	.quad	0x3fd0da221411eb20              # double 0.26331378898582791
	.quad	0x3fd4e45e23c8bfb6              # double 0.3264384602980458
	.quad	0x3fe0037726b05f28              # double 0.50042302662311489
	.quad	0x3fed20432b490485              # double 0.91018827871461438
	.quad	0x3fe5d6146108deb5              # double 0.68238276435928091
	.quad	0x3fe8446ddde2c88e              # double 0.75835316979488865
	.quad	0x3fe8327340cd0b17              # double 0.75615847259936941
	.quad	0x3fe6b2006d9710bd              # double 0.7092287197524666
	.quad	0x3fedd64632705ad3              # double 0.93240651942582031
	.quad	0x3fe5676e9e5310f8              # double 0.66887598917722269
	.quad	0x3fcdf92521393880              # double 0.23416580316774471
	.quad	0x3fdd81f5a6c6ab1c              # double 0.46105710303042868
	.quad	0x3fefb718a66f6126              # double 0.99110062128878407
	.quad	0x3fe782e6f7bb6929              # double 0.73472927460833148
	.quad	0x3fd427b65aea56a8              # double 0.3149238479466967
	.quad	0x3fee6e40eb53422d              # double 0.95095869028052038
	.quad	0x3fc666a4a2a7c858              # double 0.17500741903455963
	.quad	0x3fd92ec3c1cc8370              # double 0.39347928929969722
	.quad	0x3fea57325abee6ae              # double 0.82314412807246184
	.quad	0x3fecc6d4c244e34d              # double 0.89927137320692341
	.quad	0x3fde019ff79d08aa              # double 0.46884917431828887
	.quad	0x3fd67c21a9a82146              # double 0.35132638519327875
	.quad	0x3fe5517649b5db01              # double 0.66619409939343666
	.quad	0x3fb83547781aa0c8              # double 0.094562975713986863
	.quad	0x3fe02bac733fc7cc              # double 0.505331254096967
	.quad	0x3feed1e2fa5df9fb              # double 0.96312092685531014
	.quad	0x3fe905797fd5472b              # double 0.78191828696637822
	.quad	0x3fe5912bf9d9d325              # double 0.67397116469382878
	.quad	0x3fd42d7d0cd23c76              # double 0.31527639629434334
	.quad	0x3fee0639e6d099e8              # double 0.93826003151917536
	.quad	0x3fee349912f1379c              # double 0.94392064761790406
	.quad	0x3fe61a23cf3a2d81              # double 0.69069090341638184
	.quad	0x3fcc6abcecd88730              # double 0.22200738491761163
	.quad	0x3fd71863a3bc79ec              # double 0.36086359968058335
	.quad	0x3f9028f9e40e7c20              # double 0.015781311554402433
	.quad	0x3fd5495abbd53bca              # double 0.33260219901142973
	.quad	0x3fda211c47614ce0              # double 0.40827090235434405
	.quad	0x3fd6c519402ff0e0              # double 0.35577994602478036
	.quad	0x3feada7d19fcf550              # double 0.83917098117641764
	.quad	0x3feedf1ad51f1909              # double 0.96473447442329629
	.quad	0x3fca5a158f097db4              # double 0.20587415203315873
	.quad	0x3fda88b84a365352              # double 0.41459471938406012
	.quad	0x3fe42dfda7adf982              # double 0.63061411619109742
	.quad	0x3fe5f0b3ba572e0d              # double 0.68563257593763327
	.quad	0x3feb7b56a0eeef14              # double 0.85880595619480226
	.quad	0x3fe92336adca750c              # double 0.78554853385472389
	.quad	0x3fef368bac918521              # double 0.9754083986737535
	.quad	0x3fe0a9be8cb0c5cc              # double 0.52072074392906975
	.quad	0x3f855f1503f65200              # double 0.010435260947624592
	.quad	0x3fea08b2f17ef51e              # double 0.81356188933537843
	.quad	0x3fd288b75c1452e6              # double 0.28959449760559008
	.quad	0x3fd60b38656d49ac              # double 0.34443483262034635
	.quad	0x3fbbcc2bc3478920              # double 0.10858415143551214
	.quad	0x3fe92b0954b70c72              # double 0.78650347276597032
	.quad	0x3fc8a593a6b05434              # double 0.19255300177670309
	.quad	0x3fe111cf281b8e2b              # double 0.53342397531054553
	.quad	0x3fe4b388b464219b              # double 0.64691577179569337
	.quad	0x3fecf16cc3b3cd59              # double 0.90447080824962278
	.quad	0x3fe0aa558f26419b              # double 0.52079275092005461
	.quad	0x3fecf35344a3b04a              # double 0.90470279127249253
	.quad	0x3fea0d9b8d935166              # double 0.81416108752686678
	.quad	0x3fb7058df0bc7cc8              # double 0.089928504251008623
	.quad	0x3fe6219fe562669c              # double 0.69160456468235365
	.quad	0x3fd5d188ab6235fc              # double 0.34091393219645716
	.quad	0x3fd18a1412370ff6              # double 0.27405263689820403
	.quad	0x3fe60700dcedb007              # double 0.68835490369883778
	.quad	0x3fe54f93a4110cde              # double 0.66596395534761732
	.quad	0x3fe2db5e1d95095c              # double 0.58927827623146412
	.quad	0x3fccd6549be5c77c              # double 0.22529084789453779
	.quad	0x3fcb32b2f8982394              # double 0.21248471392052848
	.quad	0x3f8861c0faab1f40              # double 0.011905200624269363
	.quad	0x3fd885bdf2d275e4              # double 0.38316296303841413
	.quad	0x3fe4395af945f2cd              # double 0.63200138746432233
	.quad	0x3fe3e0e6846945c9              # double 0.62120366918150538
	.quad	0x3fe245aa234a4cee              # double 0.57100397961258209
	.quad	0x3fed9f666dd362aa              # double 0.92570802164398924
	.quad	0x3fe6916e218795d8              # double 0.70525270985370536
	.quad	0x3fe3193e8a0c4b44              # double 0.59683157885078986
	.quad	0x3fa648b54d9a8450              # double 0.04352346966084808
	.quad	0x3fee2e71e7810d92              # double 0.94316954818389065
	.quad	0x3fe6574ded3e615a              # double 0.69815727554945828
	.quad	0x3fddbe409fff2152              # double 0.46473708748500997
	.quad	0x3f97d6b6818eac80              # double 0.023280002267409561
	.quad	0x3fe194ae31a31b7e              # double 0.54939946837190212
	.quad	0x3fae1e810c456f00              # double 0.058826477764084117
	.quad	0x3fef6eff0b8c5684              # double 0.98229934936053142
	.quad	0x3fd29a8337e4be0a              # double 0.29068069895126369
	.quad	0x3fe8ab1b90ee46dc              # double 0.77088716799536483
	.quad	0x3fe2165c2d33fd7d              # double 0.56522950009086481
	.quad	0x3fe2616e3b72c5ed              # double 0.57439338313105071
	.quad	0x3fe58b8816cc6f4d              # double 0.67328266575666762
	.quad	0x3fe97103f1c02139              # double 0.79504582611938368
	.quad	0x3fde6eea9f68386e              # double 0.47551980559445084
	.quad	0x3fe051f11ab14eab              # double 0.51000266278648121
	.quad	0x3fd5459a9b7b4338              # double 0.33237328704585734
	.quad	0x3fe709add902bbe8              # double 0.71993152985475906
	.quad	0x3fe47e89ca77572e              # double 0.64044656318831072
	.quad	0x3feb3d7869fee76c              # double 0.85125370695389568
	.quad	0x3fe51c08a80abcdb              # double 0.65967209644977787
	.quad	0x3fd3af869c40a316              # double 0.30758824595481948
	.quad	0x3feb56c0cebd33cf              # double 0.85433998469090422
	.quad	0x3fb28f462fde69c8              # double 0.072498690306395663
	.quad	0x3fe998599c02655a              # double 0.79984741659715586
	.quad	0x3fc2bc039ff343d4              # double 0.14636273679800971
	.quad	0x3fd28b27276ba840              # double 0.28974322175657008
	.quad	0x3fe7864e844a29ee              # double 0.73514486158211212
	.quad	0x3fa2bc796bd26920              # double 0.03659419480500703
	.quad	0x3fda41a17bc2aeec              # double 0.41025578580841571
	.quad	0x3fe62acb6512b87d              # double 0.69272393933148602
	.quad	0x3fec957be9a22660              # double 0.89324756270907457
	.quad	0x3fa0110ae33ddef0              # double 0.031380024184668787
	.quad	0x3fe4820c4842f40d              # double 0.64087499726849873
	.quad	0x3fd2f79dcf881ddc              # double 0.29636330858963134
	.quad	0x3fe995b942b4b15b              # double 0.79952681568606054
	.quad	0x3fe64b807f769527              # double 0.69671654601248612
	.quad	0x3fce7730cd49836c              # double 0.23801240943705737
	.quad	0x3fd979401f9328a8              # double 0.39802554210167296
	.quad	0x3fd489e9dd0d24b2              # double 0.32091757380528485
	.quad	0x3fcafab822a0c0b8              # double 0.21077634516541877
	.quad	0x3fbcdc0dc65375a8              # double 0.11273275463050558
	.quad	0x3fe766d56870c8db              # double 0.73130293272540869
	.quad	0x3fc8c2c78c83ea40              # double 0.19344419823740289
	.quad	0x3fd8ef8eba1ec7c2              # double 0.38962143111995939
	.quad	0x3feca6c20d4dec3e              # double 0.89535620306504149
	.quad	0x3fd6465ab9303760              # double 0.34804409107970535
	.quad	0x3fecf23e41a7c279              # double 0.90457070182135546
	.quad	0x3fecc05e41637df4              # double 0.8984824444887054
	.quad	0x3fdf58d2352b8b0c              # double 0.48979621117011685
	.quad	0x3fe3d27fe3f4faec              # double 0.61944574854700596
	.quad	0x3fe98c69ba6bfe0e              # double 0.79839025888935722
	.quad	0x3fe32cab98a5e1a4              # double 0.59920291723306152
	.quad	0x3fe8c4fdcdd37a75              # double 0.77404680443198848
	.quad	0x3fdc2802d7e837b4              # double 0.43994208416631442
	.quad	0x3fb424b77e250fc0              # double 0.078685253426612256
	.quad	0x3fd59e146de70154              # double 0.33777342541363464
	.quad	0x3fcc81921b0b8030              # double 0.22270418472817388
	.quad	0x3fee52eaba131b8a              # double 0.94762169211104319
	.quad	0x3fe51ff363ee9d6a              # double 0.66015023725496502
	.quad	0x3feb49379856522a              # double 0.85268764260633145
	.quad	0x3fdb1a6bebbdf5aa              # double 0.42348764440233799
	.quad	0x3fc328a3221e142c              # double 0.14967765012639356
	.quad	0x3fc5178eb9c9d3b0              # double 0.16478141853045036
	.quad	0x3fe4690229f594f2              # double 0.63781841464211042
	.quad	0x3fe0c5c89163ae0b              # double 0.52414348980295367
	.quad	0x3fe2af85348b5e1f              # double 0.58392582190112197
	.quad	0x3fee91dcb07e1362              # double 0.9553054282301725
	.quad	0x3fee284f75bb1aed              # double 0.94242070192634986
	.quad	0x3fda2d8c2f4aedd6              # double 0.40903000467707551
	.quad	0x3fa9536428232fc0              # double 0.049464349650946371
	.quad	0x3fd3b9e5b864a66e              # double 0.30822127349038098
	.quad	0x3fe9cece358eb9db              # double 0.80649481258825106
	.quad	0x3fe5517e1a2fe0f8              # double 0.66619782557157148
	.quad	0x3fe47f259e90fea3              # double 0.6405208680152622
	.quad	0x3fee91eba23ca0c6              # double 0.95531255423431882
	.quad	0x3fdf3545b0cf36a2              # double 0.48762647882981913
	.quad	0x3fc3a688568e7a44              # double 0.15351967073816486
	.quad	0x3fd78233301396c2              # double 0.36732177443478176
	.quad	0x3fe108deb3ce4821              # double 0.5323327552635001
	.quad	0x3fddbddbcdd61eac              # double 0.46471304990016438
	.quad	0x3fd861f80b6a010c              # double 0.38097954859405614
	.quad	0x3fcbc4f4a4779da0              # double 0.21694810896518124
	.quad	0x3fc4bd59d23493a0              # double 0.16202852977690174
	.quad	0x3fe0624e5f0ce688              # double 0.5120002609684926
	.quad	0x3fc80c001a80f8dc              # double 0.18786622327929237
	.quad	0x3fd76f00458ced1e              # double 0.36614996711769432
	.quad	0x3fd3f983b017c822              # double 0.31210415073940301
	.quad	0x3fd86db3c54dc19c              # double 0.3816956927103321
	.quad	0x3fd48bcde24dd20c              # double 0.321032973289477
	.quad	0x3fe85073134b3933              # double 0.75982049721077372
	.quad	0x3febc930e2abdfe6              # double 0.8683094432044498
	.quad	0x3fd7bf5d3aa1eb78              # double 0.37105494237737657
	.quad	0x3fe25dd7c3dff535              # double 0.57395542389682552
	.quad	0x3fb89d05a4044520              # double 0.096145966094145496
	.quad	0x3fe493bd0a98db25              # double 0.6430344778990259
	.quad	0x3fde2b738d9ba7d6              # double 0.47140206173810151
	.quad	0x3fe893ef7faadd66              # double 0.76805853781744982
	.quad	0x3fe03f104b47aa43              # double 0.50769819930184956
	.quad	0x3fed51e577e031a4              # double 0.91624711430772665
	.quad	0x3fdcd2a0a8715950              # double 0.4503556866597096
	.quad	0x3fe1870972227f26              # double 0.54773399631446718
	.quad	0x3fc898596d329814              # double 0.19214933235088039
	.quad	0x3fe0be41edf91f4d              # double 0.52322479704978664
	.quad	0x3fe86609769d9f1f              # double 0.76245568434839928
	.quad	0x3fb6f987f7180e10              # double 0.089745042634653993
	.quad	0x3fcf9ea1c968c44c              # double 0.2470285638278561
	.quad	0x3fcb0a7312525094              # double 0.21125639338118118
	.quad	0x3fee61657a548b15              # double 0.94938920872332011
	.quad	0x3fd0946f7e724424              # double 0.2590597853496226
	.quad	0x3febf2d61a6fb043              # double 0.8733931080182703
	.quad	0x3fb558344bdf5ac0              # double 0.083377140544466322
	.quad	0x3fcef21ecb904484              # double 0.24176392497659915
	.quad	0x3fcd544e157999c4              # double 0.22913528488716228
	.quad	0x3fcbf512a2ee68c8              # double 0.21841652827862945
	.quad	0x3fd3c1b65fc3e6e4              # double 0.30869826652597809
	.quad	0x3fb47f8085195100              # double 0.080070526594969493
	.quad	0x3fe1c87f3d78688d              # double 0.55572473531653233
	.quad	0x3fb502b6e1fdad08              # double 0.082072668241085833
	.quad	0x3fb7f41b45ab78b8              # double 0.093568520077925821
	.quad	0x3fed5c99fcb2471d              # double 0.9175538955189243
	.quad	0x3fe4801764fceb91              # double 0.64063615535939011
	.quad	0x3fe3ecb6d9fc0039              # double 0.622645784140338
	.quad	0x3fdb8c476119e832              # double 0.43043694002665511
	.quad	0x3feb649cda32f0ef              # double 0.85603182427396785
	.quad	0x3fd509adfb8ccbb8              # double 0.32871579709461285
	.quad	0x3fef4742be5838cf              # double 0.97744881798441862
	.quad	0x3fe2211ac47e6d15              # double 0.56654108407693349
	.quad	0x3fbbc2dda6a1c4d0              # double 0.10844216650163507
	.quad	0x3fe8e3dabfd42ee4              # double 0.77781426874704751
	.quad	0x3fedec2c5d9bad52              # double 0.93507974894365931
	.quad	0x3fde597612cf7fdc              # double 0.47421027981726893
	.quad	0x3fd1a391f0b49e76              # double 0.27560852533722568
	.quad	0x3fec433d5758bb5c              # double 0.88320796069988771
	.quad	0x3fd8736d5a22ef4c              # double 0.38204511453999568
	.quad	0x3feca47be5a9eeb3              # double 0.89507861000261923
	.quad	0x3fef9f5ea1136e84              # double 0.98820430240762435
	.quad	0x3fe8f003daa8dc07              # double 0.77929871279673157
	.quad	0x3fd0c87f4f93f18e              # double 0.26223738452224488
	.quad	0x3f97af8c91223c80              # double 0.023130604131946786
	.quad	0x3fe593327f45657a              # double 0.67421841485626932
	.quad	0x3fcb183f1ce17574              # double 0.21167744550886491
	.quad	0x3fd81ce173b8e330              # double 0.37676273633001056
	.quad	0x3fe5e8ecc45ed2ea              # double 0.68468321183771974
	.quad	0x3feac465fb49f458              # double 0.83647440986500055
	.quad	0x3fbbe68cc344a2b0              # double 0.10898666159904269
	.quad	0x3fe524270f1c1020              # double 0.66066315604303227
	.quad	0x3fe96e51cadbaa53              # double 0.79471673603741022
	.quad	0x3fee70b6f12a2a9c              # double 0.95125910856707518
	.quad	0x3fb199cbb89a7750              # double 0.068752987450776404
	.quad	0x3fe77ea04e5a42b0              # double 0.7342072992633657
	.quad	0x3fe7d551fe0c9019              # double 0.74479007357558935
	.quad	0x3faf175ef51500f0              # double 0.060725181023828401
	.quad	0x3fe645fc49c79f3a              # double 0.69604315195190414
	.quad	0x3fe0c73d8008521d              # double 0.52432131773327095
	.quad	0x3fb8c05096c3d7f0              # double 0.09668449097429721
	.quad	0x3fe27b8ee1564db5              # double 0.57758277903706434
	.quad	0x3fe4b1bd025a6e00              # double 0.64669657191865326
	.quad	0x3fd5b559ba707b5e              # double 0.3391937561699957
	.quad	0x3fedc7bc9298a884              # double 0.93063191063016903
	.quad	0x3fee981d1ea06f7a              # double 0.95606857282426394
	.quad	0x3fd06f679a99e360              # double 0.2567996034409159
	.quad	0x3fd207f2da2787c6              # double 0.28173514656202447
	.quad	0x3fe169346628acba              # double 0.54409236863047927
	.quad	0x3fd75d70a4007c2e              # double 0.36507812515077631
	.quad	0x3fe4854738789a63              # double 0.64126931218636363
	.quad	0x3f853eefae4fbac0              # double 0.010373947627127733
	.quad	0x3feeb9e36666a05b              # double 0.96019144058392258
	.quad	0x3feedb09b52daf99              # double 0.96423802744310471
	.quad	0x3f908c1351427a40              # double 0.016159345469185959
	.quad	0x3fe441cce0e1976f              # double 0.63303226396668133
	.quad	0x3fdfd18b5d3f55da              # double 0.49716457468215725
	.quad	0x3fe91a6a9a7fb077              # double 0.78447466064018456
	.quad	0x3fea30827a4a5991              # double 0.81842159161424111
	.quad	0x3fee519732b4d757              # double 0.94745979217143883
	.quad	0x3fd7664cc0e3ede2              # double 0.36561888539264775
	.quad	0x3fd5b0a005d12c14              # double 0.33890533989023308
	.quad	0x3fddac9659cb90e6              # double 0.4636588932901432
	.quad	0x3f9c2bd636b79fa0              # double 0.027510974015882206
	.quad	0x3fd567c1f3bbb900              # double 0.33445786287383328
	.quad	0x3fd72f30a3ecb348              # double 0.36225524910223728
	.quad	0x3fd89cbd8c6cda64              # double 0.38456667626761587
	.quad	0x3fec4a99545c14d2              # double 0.88410631634237746
	.quad	0x3fc58699158ad97c              # double 0.16817010452150416
	.quad	0x3fe5c89d1742ea3b              # double 0.68073896926154676
	.quad	0x3fe80d182d67cf4d              # double 0.75159844272864407
	.quad	0x3fb88080dc340038              # double 0.095710805664567355
	.quad	0x3feecff28930e385              # double 0.96288420481788306
	.quad	0x3fea9b2d64c770d2              # double 0.83144254382525618
	.quad	0x3fe1ff69627ccbf5              # double 0.5624281810363515
	.quad	0x3fd3d121d19921be              # double 0.30963941067286871
	.quad	0x3fee9ad713bca198              # double 0.9564013848767443
	.quad	0x3fef1d8b9f3763ab              # double 0.97235661599107936
	.quad	0x3fe4c5b7827edb02              # double 0.64913535582931581
	.quad	0x3fe2ad4eafee93b1              # double 0.58365568505961651
	.quad	0x3fe0094d036eb188              # double 0.50113535566701817
	.quad	0x3feeaf79abaf9c4d              # double 0.95892032177369801
	.quad	0x3fd01cdcaed3adbc              # double 0.25176159928261277
	.quad	0x3fed5c23500c9fc6              # double 0.91749730715400157
	.quad	0x3fe88ed25eb858f2              # double 0.76743429660817086
	.quad	0x3fc7c75792e881f4              # double 0.18577093766454278
	.quad	0x3fe13ea58d87e688              # double 0.53889730112787593
	.quad	0x3fe63e46273217b2              # double 0.69510181098370638
	.quad	0x3feecc1d213a5fe9              # double 0.96241623391960928
	.quad	0x3feeb399cbdde743              # double 0.95942392175422985
	.quad	0x3fc756b5da20e194              # double 0.18233369017412981
	.quad	0x3fcc2455fac89128              # double 0.21985888238226292
	.quad	0x3fd57a0b16670f14              # double 0.33557393253089285
	.quad	0x3fea1114f9f3ef5f              # double 0.81458519762916726
	.quad	0x3fc6bd047aa3a490              # double 0.17764335621112481
	.quad	0x3fd4451aeb8119fc              # double 0.3167178439947802
	.quad	0x3fc3a9e4467d99cc              # double 0.15362218324589916
	.quad	0x3fc7576615371ad4              # double 0.18235469852353126
	.quad	0x3feb90d32cfe323e              # double 0.86142882144628863
	.quad	0x3fef4f65fe881a9b              # double 0.97844218934263282
	.quad	0x3fa1187be0df73c0              # double 0.033389922333050048
	.quad	0x3fd264884022b296              # double 0.28738600028263173
	.quad	0x3fe6baaad7775da3              # double 0.71028654177910189
	.quad	0x3fed77d3e5dc81df              # double 0.92087740797802187
	.quad	0x3fd2cc4fe63f7084              # double 0.29372022137773279
	.quad	0x3fe834a70c511637              # double 0.75642731099714566
	.quad	0x3fd8071f1cce5c7e              # double 0.37543466389747226
	.quad	0x3fe3ea903b17b66e              # double 0.62238322774437704
	.quad	0x3fd9a0ce323edcdc              # double 0.40043978602211694
	.quad	0x3fe8532cea0e269a              # double 0.76015325273438639
	.quad	0x3fe06558258a63b6              # double 0.5123711331572085
	.quad	0x3fce1961fe482e34              # double 0.23514962116347393
	.quad	0x3fa68cc2e9d529d0              # double 0.044042674106623658
	.quad	0x3fcbd75ca18f1950              # double 0.21750982178327627
	.quad	0x3fe470a3946c6e5e              # double 0.63874987591720944
	.quad	0x3fea56a05eec365f              # double 0.82307451762762784
	.quad	0x3fe41eeb32bca520              # double 0.62877426061200836
	.quad	0x3fec2035f8b81158              # double 0.87893198564465091
	.quad	0x3feee1878f245e3a              # double 0.96503045995172632
	.quad	0x3fdb3edc7d104622              # double 0.42571174824942848
	.quad	0x3fee963f5c116313              # double 0.95584075910582766
	.quad	0x3fb0f2a48ece2970              # double 0.066202435364322687
	.quad	0x3fc030f8724a841c              # double 0.12649446087473926
	.quad	0x3febce118440fb02              # double 0.86890483694864451
	.quad	0x3fe19eb8776813d4              # double 0.55062506982414527
	.quad	0x3fc62a182bf591bc              # double 0.17315961977432248
	.quad	0x3fdcc91a276a2646              # double 0.4497743019970567
	.quad	0x3f8e01b8fecea940              # double 0.014651723171330233
	.quad	0x3fdce80b28f5b506              # double 0.45166281700115041
	.quad	0x3fee9e9059c3016f              # double 0.95685594112005201
	.quad	0x3fcdb56a26f34044              # double 0.23209883596291736
	.quad	0x3fe094cf8dab91a1              # double 0.51816537542304186
	.quad	0x3fed25ad94c882dd              # double 0.91084937152126211
	.quad	0x3febb2cc45c1f689              # double 0.8655759203390555
	.quad	0x3fedf766507c5e96              # double 0.9364501544941557
	.quad	0x3fe3e90da832696a              # double 0.62219889498673564
	.quad	0x3fd9fa87e940c942              # double 0.40591619280452929
	.quad	0x3fb20c25cfbd2478              # double 0.070497859208573987
	.quad	0x3feaf48e6e3f9438              # double 0.84235307248002922
	.quad	0x3fc4bcb2615900e0              # double 0.16200856927208118
	.quad	0x3fea8f5fdc4cba75              # double 0.83000176455773433
	.quad	0x3fd8c513e5067b6a              # double 0.38702866903070421
	.quad	0x3fd9f0c2394f2602              # double 0.40531974407767291
	.quad	0x3fe288454a98f82f              # double 0.57913460321265642
	.quad	0x3fee01287141c1d9              # double 0.93764135475617671
	.quad	0x3fe0f531dd7d1827              # double 0.52993100413801109
	.quad	0x3fb599eff874e960              # double 0.084380148084993944
	.quad	0x3fe5b8146fa9fac5              # double 0.67872068223353976
	.quad	0x3fd4a5c04219baf2              # double 0.32261663870933355
	.quad	0x3fd3a35fce628650              # double 0.30684657244464564
	.quad	0x3fe64b617687150c              # double 0.69670174741682578
	.quad	0x3fda234471c0824a              # double 0.40840254887192329
	.quad	0x3fe15daeb9748520              # double 0.54268585416517467
	.quad	0x3fce3c6e95c7d934              # double 0.23621923745640461
	.quad	0x3fb473809cca5860              # double 0.079887426642331061
	.quad	0x3fee0d25614bd533              # double 0.9391047382656893
	.quad	0x3fed7d58be551b80              # double 0.92155110525423822
	.quad	0x3fe48f2f83e5db47              # double 0.64247871171287663
	.quad	0x3fa9d576d6870b10              # double 0.050456727683487412
	.quad	0x3fec558d677daea6              # double 0.88544340336871552
	.quad	0x3fde197ddc6c1c8e              # double 0.47030588651291161
	.quad	0x3fe04bc1aea5a620              # double 0.50924762831454373
	.quad	0x3fecff07517523ef              # double 0.90613141927417284
	.quad	0x3fa5278619b0a190              # double 0.041317167888624273
	.quad	0x3fe800eca11c96f6              # double 0.75011283366322234
	.quad	0x3fdbaf28e6a80482              # double 0.43256590390235072
	.quad	0x3fea7ed3944ac9c2              # double 0.82798174823101811
	.quad	0x3fb770e080cbb620              # double 0.091566115803026538
	.quad	0x3fb14260451bab58              # double 0.067419068214502942
	.quad	0x3feaec02dee5308d              # double 0.84130996259911373
	.quad	0x3fe5e1a1e6e9ec49              # double 0.68379302120536878
	.quad	0x3fe1a3d446637344              # double 0.55124868152379536
	.quad	0x3fd59317e76104d4              # double 0.33710286708453663
	.quad	0x3fdf754960ee9c1e              # double 0.49153360811254909
	.quad	0x3fe434607101ae19              # double 0.63139364310831347
	.quad	0x3fe08269a6bb76e2              # double 0.51591951908968903
	.quad	0x3fd507c54d9806b8              # double 0.32859928681873951
	.quad	0x3fd3f7871894b098              # double 0.31198289299460091
	.quad	0x3fe33c1dc628fdb8              # double 0.60108841612957686
	.quad	0x3fe3fbaa1fab28e1              # double 0.62447076974174476
	.quad	0x3fb4051cbfcd8100              # double 0.078203007532923863
	.quad	0x3fea44139b2ec277              # double 0.82081013020622506
	.quad	0x3fe393243180b2bc              # double 0.61171159428121014
	.quad	0x3fdb5dfcc996492c              # double 0.42761153875575775
	.quad	0x3fee29577993aaa2              # double 0.94254659409974217
	.quad	0x3fd53d9a9f71ebec              # double 0.33188500948716526
	.quad	0x3feee15f37b4a98f              # double 0.96501122360250402
	.quad	0x3fd96a450d50c0fe              # double 0.39711118984543237
	.quad	0x3fe07dcc568de980              # double 0.51535622506280276
	.quad	0x3fe022c4ceddcaaa              # double 0.50424423602665525
	.quad	0x3fe37da4d3535d93              # double 0.60908738398113582
	.quad	0x3fd756be4e9013a4              # double 0.36466939613483818
	.quad	0x3fefa715cc2b0d74              # double 0.98914613606068124
	.quad	0x3fe9d79eea54f821              # double 0.8075708939356937
	.quad	0x3fe1d2a922f2d165              # double 0.5569654162014045
	.quad	0x3fe4b90a4b18fa0d              # double 0.64758791606419808
	.quad	0x3fef0d13752fef5a              # double 0.97034619224676111
	.quad	0x3fedcec40dd7d7bd              # double 0.93148997024285729
	.quad	0x3fe6a06d0f9bb067              # double 0.70708325432270847
	.quad	0x3feecbab5d7a8b1c              # double 0.96236198670917216
	.quad	0x3fe76f5ef93710f2              # double 0.73234509157967254
	.quad	0x3fd95945a9b83bea              # double 0.39607373785196265
	.quad	0x3fe63f664d2f3857              # double 0.69523921084488449
	.quad	0x3fedda62d4e87573              # double 0.93290845473863582
	.quad	0x3fd4171a681795fa              # double 0.31391010442015921
	.quad	0x3fe06c1bc6f65301              # double 0.51319683894925572
	.quad	0x3fecc6c93b778d98              # double 0.89926587690972593
	.quad	0x3fc5ca4609167cd4              # double 0.17023539966337486
	.quad	0x3fc3770423f480d0              # double 0.15206958537692694
	.quad	0x3fef94ce69740d33              # double 0.98691483112671674
	.quad	0x3fdf10d5c6d4d154              # double 0.48540253083344465
	.quad	0x3fe78be11670cd96              # double 0.73582510359703934
	.quad	0x3fefdffef7acd9e3              # double 0.99609325765669287
	.quad	0x3fce07a920bc2adc              # double 0.23460878466024482
	.quad	0x3fe79132901c00a5              # double 0.73647430559505678
	.quad	0x3fec4d8fbe3118fa              # double 0.8844679560359332
	.quad	0x3fed4a73f6984c59              # double 0.91533849871701556
	.quad	0x3fe6d67804566161              # double 0.713680275413065
	.quad	0x3fee63dba21e7345              # double 0.94968969024521555
	.quad	0x3fe742e6dbb39bed              # double 0.72691672239750249
	.quad	0x3fd6d7d88a6714f8              # double 0.35692418590436104
	.quad	0x3fdf97fab285b6da              # double 0.49365107950039333
	.quad	0x3fed4d373a97f465              # double 0.91567574924523554
	.quad	0x3fdf39214aa39a0c              # double 0.48786194123241056
	.quad	0x3fd597af9be19e86              # double 0.33738317702088982
	.quad	0x3fd31054d2409a96              # double 0.29787178547341264
	.quad	0x3fea7f18f3272302              # double 0.82801482668682547
	.quad	0x3fe117eeeaf28803              # double 0.53417154205476469
	.quad	0x3fd52e6e7de6e03a              # double 0.33095896048644458
	.quad	0x3fe3817af4c4cb76              # double 0.60955570036308759
	.quad	0x3fe69e0c0c3a3099              # double 0.706792854196027
	.quad	0x3fc580e4616bb614              # double 0.16799597508308806
	.quad	0x3fdcfbfc99da8efc              # double 0.45288004898814882
	.quad	0x3fe076abdeccd352              # double 0.5144862510265773
	.quad	0x3fed5e6b694409e1              # double 0.9177758270237143
	.quad	0x3fe46db4c808f235              # double 0.63839186734509801
	.quad	0x3fcfa09ca2bd4434              # double 0.24708898493057208
	.quad	0x3fc138c684bf0eec              # double 0.13454514962915398
	.quad	0x3fd251ab1ffe4f90              # double 0.28623464702945345
	.quad	0x3f9391e6a2c37e00              # double 0.019111255344681055
	.quad	0x3fa965746e758240              # double 0.049602163776175434
	.quad	0x3fe88f3a4db79149              # double 0.76748385600198177
	.quad	0x3fe64954f85948b0              # double 0.6964516497194122
	.quad	0x3fe9a2e85175be96              # double 0.80113616857666403
	.quad	0x3fe627d52249b5f2              # double 0.69236237236844844
	.quad	0x3fe2d3ead962fde8              # double 0.58836882074677721
	.quad	0x3f4679e6fd67bc00              # double 6.8591860582312147E-4
	.quad	0x3fde33039b3d9a74              # double 0.47186365280359799
	.quad	0x3fb71becc158be00              # double 0.090269849017879267
	.quad	0x3fe054b93d52e1d4              # double 0.51034223534866863
	.quad	0x3fee4092c5f34e63              # double 0.94538248693647764
	.quad	0x3fc45095eddd6304              # double 0.15870927919856836
	.quad	0x3fe2757814150586              # double 0.57683948442733946
	.quad	0x3fea0254a1dbae2c              # double 0.81278449643054306
	.quad	0x3fe3f5c7a0557dbb              # double 0.62375241580223617
	.quad	0x3fedfc705eda29e1              # double 0.93706530118771181
	.quad	0x3fe72c375a9d37ca              # double 0.72414748857567557
	.quad	0x3fe29d67b2d79944              # double 0.58171448640931844
	.quad	0x3fe6c6865340c672              # double 0.71173397312504805
	.quad	0x3fd6212945f170b4              # double 0.34577400045760531
	.quad	0x3fcb3c9015202c48              # double 0.21278573066260464
	.quad	0x3fe906d5164e4acf              # double 0.78208402973754143
	.quad	0x3fecda718dcf7a6f              # double 0.90166547486644599
	.quad	0x3fc24ab5dcedf514              # double 0.14290498054098377
	.quad	0x3fc7f54571442a18              # double 0.18717258482531984
	.quad	0x3fe6651f4c6a3a52              # double 0.69984402584834471
	.quad	0x3fb61146aa610a48              # double 0.086201111408663711
	.quad	0x3fd4b418b591d75e              # double 0.32349221927085192
	.quad	0x3fe5c2f06ab04317              # double 0.68004628026582992
	.quad	0x3fdefb551afc5644              # double 0.48409011493035714
	.quad	0x3fe3d31e9f8a773f              # double 0.61952143822029615
	.quad	0x3fc613c45ee7d3b4              # double 0.17247824319897875
	.quad	0x3fda02f23c5372ec              # double 0.40642982379158243
	.quad	0x3fc57d12910c838c              # double 0.16787941057648614
	.quad	0x3fe5c3cb56aeffbd              # double 0.68015067034138321
	.quad	0x3feed0ddedbf7399              # double 0.96299644885185664
	.quad	0x3fe7a5bbbeb035d9              # double 0.73898112529576132
	.quad	0x3fdbf4f048df237c              # double 0.43682486645098328
	.quad	0x3fee1cd29a07ae4d              # double 0.94101839145646127
	.quad	0x3fa5442c36129af0              # double 0.041535741425198114
	.quad	0x3fd01af23c232702              # double 0.25164466736588065
	.quad	0x3fe711a8623d61b6              # double 0.72090548694091328
	.quad	0x3fd305b137859848              # double 0.29722242757850781
	.quad	0x3fdb15915fe1eae6              # double 0.42319139827274765
	.quad	0x3fcbbd436fdb77d0              # double 0.21671336137563779
	.quad	0x3fe6a654d6564afd              # double 0.70780412543021465
	.quad	0x3fd91170414d01c6              # double 0.3916893613532263
	.quad	0x3fd3e813d01ebe9e              # double 0.31103988002994665
	.quad	0x3fe9eefa3b31b27f              # double 0.81042205392220967
	.quad	0x3fd981b89af71294              # double 0.39854254849732595
	.quad	0x3fdac6237673b840              # double 0.41834341590481827
	.quad	0x3fe5c0ed90d26de3              # double 0.6798007801584699
	.quad	0x3fc31bee171be864              # double 0.14928985718126164
	.quad	0x3fa7bf7cb00a9310              # double 0.046382805337350175
	.quad	0x3fdc7ab7ffb970e2              # double 0.44499015782436235
	.quad	0x3fe2cb6198cf44df              # double 0.58732681127198905
	.quad	0x3fd4bc4c6a4bad40              # double 0.32399282818251507
	.quad	0x3fd308b297d9854c              # double 0.29740586117812451
	.quad	0x3fe90ce3dca3cffc              # double 0.7828234967587373
	.quad	0x3fd01a8d4e95f89a              # double 0.25162060427090582
	.quad	0x3fe9935296cdfd83              # double 0.79923371748002159
	.quad	0x3fd3b6ca5d612b68              # double 0.30803164595697874
	.quad	0x3fc614367bc404fc              # double 0.17249184649703142
	.quad	0x3fe984bbbca7844f              # double 0.7974528011947174
	.quad	0x3fd00132163ad880              # double 0.25007297678838114
	.quad	0x3fe064433cadec53              # double 0.51223909236376597
	.quad	0x3fe2f2c903f97007              # double 0.59213686729663173
	.quad	0x3fde87ff580f171c              # double 0.47705062484270555
	.quad	0x3fe330740ce92d55              # double 0.59966471215867989
	.quad	0x3fde1a9ad04df0f6              # double 0.47037382452232579
	.quad	0x3fe2cc29301ebbcc              # double 0.58742198370406973
	.quad	0x3fea065c39bf3798              # double 0.81327639845561617
	.quad	0x3f937df46d5d79c0              # double 0.019035166907423351
	.quad	0x3fe47f2da1299b2e              # double 0.6405246875482129
	.quad	0x3fee45a2b8558478              # double 0.94600044253105775
	.quad	0x3fc9a03c681e5cdc              # double 0.20020251354137641
	.quad	0x3fe62746ba102fdb              # double 0.69229446735834743
	.quad	0x3fe136aadaefff8d              # double 0.53792326699475412
	.quad	0x3fe9a54d98f79975              # double 0.80142860294726737
	.quad	0x3fadfcb97a290e50              # double 0.058568760072856052
	.quad	0x3fe4b8256da3d415              # double 0.64747878469518361
	.quad	0x3fdde00e6d3dbc8c              # double 0.46680031459886417
	.quad	0x3fe6507dd6628fde              # double 0.69732562896797012
	.quad	0x3fe448d31074e76b              # double 0.63388970579329162
	.quad	0x3fdac91597367698              # double 0.41852321402425607
	.quad	0x3fd2e23069e25268              # double 0.29505548801652148
	.quad	0x3fe32af659bfb28e              # double 0.59899442223611898
	.quad	0x3fc2f15aab990a78              # double 0.14799054507064446
	.quad	0x3fd839d98ae7fb2e              # double 0.37853087010437292
	.quad	0x3fde3b27f0511a10              # double 0.47236059635579952
	.quad	0x3fd0b557f3e3fb20              # double 0.26106833283840736
	.quad	0x3fed7532d9bef380              # double 0.92055647400376017
	.quad	0x3fd6b4ff7fc09dd6              # double 0.35479724384137279
	.quad	0x3fd41fca2d6a56ae              # double 0.31444029269310192
	.quad	0x3fef8ccb7bef0101              # double 0.98593687253745099
	.quad	0x3fed71abe053cace              # double 0.9201259023087347
	.quad	0x3fc818c83813da30              # double 0.18825628984605336
	.quad	0x3fe51d1bd57be4e3              # double 0.65980331131063641
	.quad	0x3fe4a15797a8e457              # double 0.64469508763353189
	.quad	0x3fea7ee72d088fb7              # double 0.82799109263986892
	.quad	0x3fc334ee9ae70c70              # double 0.15005285800552626
	.quad	0x3feb1cb42332b75d              # double 0.84725386500006616
	.quad	0x3fc4a00fd0e9e770              # double 0.16113469792236002
	.quad	0x3fd822e905380658              # double 0.3771307517018605
	.quad	0x3fd947cf27fdaa24              # double 0.39500788598403092
	.quad	0x3fe1474a0f4c9526              # double 0.5399523066340961
	.quad	0x3fe7764e434cb771              # double 0.73319161552875134
	.quad	0x3fc87210573073c0              # double 0.19098095185554875
	.quad	0x3fa370faae0fd4f0              # double 0.037971338031562385
	.quad	0x3fd56a51b0909886              # double 0.3346142029062168
	.quad	0x3fe605a99be68322              # double 0.68819122742943173
	.quad	0x3fee577a55441ea0              # double 0.94817845014127399
	.quad	0x3fb9e97fb17c1f60              # double 0.10121915896536171
	.quad	0x3fca423ece0413c8              # double 0.20514664706584385
	.quad	0x3fc8eaa280f5f2dc              # double 0.19466048523818003
	.quad	0x3fe3649dc4c5fc27              # double 0.60603226120281739
	.quad	0x3fed06584ccac64c              # double 0.90702452658133259
	.quad	0x3fe0bfec915279ce              # double 0.523428233940473
	.quad	0x3fdeb652b473be0c              # double 0.47987811682011805
	.quad	0x3fee42d0b2597a68              # double 0.94565615495578203
	.quad	0x3fc68a604d4bc4f0              # double 0.17609790586678953
	.quad	0x3fc6db174e6603c0              # double 0.17856112793017864
	.quad	0x3fb6af39401bd0f0              # double 0.088611200477149543
	.quad	0x3fe0dd811f60fced              # double 0.52703910950358834
	.quad	0x3fc613ca71bc43e4              # double 0.17247896722304212
	.quad	0x3fd60b4dfc94a732              # double 0.34443998018342648
	.quad	0x3fcc75ec11f35210              # double 0.22234869839179838
	.quad	0x3fedc3f86f44dfbf              # double 0.9301721738074703
	.quad	0x3fe02ee4e769b801              # double 0.50572438428730504
	.quad	0x3fc19f24493481a4              # double 0.1376691205450814
	.quad	0x3fecd75bdfdc2f6f              # double 0.90128892634082358
	.quad	0x3fdb9dac25019a64              # double 0.43149856199162273
	.quad	0x3fe5a42148b3e9bf              # double 0.67628540229571132
	.quad	0x3fc623e6fc4d02e0              # double 0.17297065085769869
	.quad	0x3fa005f488214320              # double 0.031295434586928517
	.quad	0x3fcdda1549db1168              # double 0.2332178698180869
	.quad	0x3fe2003322b66daf              # double 0.56252438335234511
	.quad	0x3fb943ba18c0b960              # double 0.098689681094332737
	.quad	0x3fe1f5d731298a57              # double 0.5612598381233721
	.quad	0x3fe151d107a5bcb6              # double 0.54123736852297699
	.quad	0x3fe7b3209c865dc9              # double 0.74061613627684963
	.quad	0x3fe9d69306b91e1c              # double 0.80744315446003467
	.quad	0x3fc322304ede52a4              # double 0.14948085642813169
	.quad	0x3fdaf99353c755e2              # double 0.42148287946232987
	.quad	0x3fed8e6abf094470              # double 0.92363488494642176
	.quad	0x3fe63f25020a1ebf              # double 0.69520807646127725
	.quad	0x3f89e199b0cf9cc0              # double 0.012637329777091089
	.quad	0x3fe390d25424aab0              # double 0.6114284175322009
	.quad	0x3fe9586a2a7b53c0              # double 0.7920428113671889
	.quad	0x3fdf59b0bee1fa58              # double 0.48984926834956388
	.quad	0x3fdaa92539255eb0              # double 0.41657381611501432
	.quad	0x3fd6bb7bd64cf258              # double 0.35519309928694076
	.quad	0x3fe40935b1f6fb4a              # double 0.62612423666710382
	.quad	0x3fcfee3984435a50              # double 0.24945754011305832
	.quad	0x3fbe62621a951cb8              # double 0.11868870877252646
	.quad	0x3fccbd74db73327c              # double 0.22453175273257731
	.quad	0x3fe75e7536b854cf              # double 0.73028050124653443
	.quad	0x3fee6328b38b08d0              # double 0.94960436884891841
	.quad	0x3fd96a99e2920606              # double 0.39713141561523491
	.quad	0x3fea3a6414cfcdaa              # double 0.81962780060569185
	.quad	0x3fe25c4c7f2d5d7b              # double 0.57376694526003236
	.quad	0x3fd4975f4a0bea36              # double 0.32173902731998127
	.quad	0x3fc6c17749876f38              # double 0.17777911272320934
	.quad	0x3fc86e5aa866d130              # double 0.19086774084792912
	.quad	0x3fd741ab400c453a              # double 0.36338311438256066
	.quad	0x3fea46163baaf1cb              # double 0.82105552343232924
	.quad	0x3fd284fe41e7800a              # double 0.2893672603222518
	.quad	0x3fefa38df33fa986              # double 0.98871514806278138
	.quad	0x3fd35c5a453ca910              # double 0.30251175652905804
	.quad	0x3fca13539bb05698              # double 0.20371480085366467
	.quad	0x3febb3fa232f186b              # double 0.86571986076229501
	.quad	0x3fd8627c15d0b344              # double 0.38101102953332977
	.quad	0x3fe47a10e901a9d4              # double 0.63990064152795378
	.quad	0x3fda9d1902cc4d6e              # double 0.41583848260162071
	.quad	0x3fed0d53a7c11bd3              # double 0.90787680401342141
	.quad	0x3fee8792ee51a556              # double 0.95404955431619487
	.quad	0x3fd4a93b608135f8              # double 0.32282909797945036
	.quad	0x3fe5f91ced897fbd              # double 0.68665930170026679
	.quad	0x3fec6e31054ef56e              # double 0.88845110928347792
	.quad	0x3fe9915da2144e02              # double 0.79899484306446333
	.quad	0x3fe0e279533fb35a              # double 0.52764574298417277
	.quad	0x3fe1a0e353f63a47              # double 0.55088964842600141
	.quad	0x3feeef4a2359dbae              # double 0.96671015648359115
	.quad	0x3fd8041512b72eaa              # double 0.37524916484538073
	.quad	0x3fe5d0ace840960d              # double 0.68172307359481155
	.quad	0x3fda92ee8c80c6b8              # double 0.41521800728797187
	.quad	0x3fd1872f47932836              # double 0.27387601842622489
	.quad	0x3fceefb7ce57135c              # double 0.24169061255647761
	.quad	0x3fd78185344a516e              # double 0.36728029352641201
	.quad	0x3fa41cb08fb71780              # double 0.039281384986266765
	.quad	0x3fafb397fbcdfbf0              # double 0.061917066085690808
	.quad	0x3fd48f9ab13740ac              # double 0.32126490885003522
	.quad	0x3fe0b14c27d277a9              # double 0.5216427591110363
	.quad	0x3fed0ac853618480              # double 0.90756622586572178
	.quad	0x3fa61bfbb29d3df0              # double 0.043182244828695704
	.quad	0x3fda1c707357e06e              # double 0.40798579467764895
	.quad	0x3fd47e79383b3fea              # double 0.32021933070518449
	.quad	0x3fe4e85675e88230              # double 0.65336154011681025
	.quad	0x3fda997a3370855c              # double 0.41561751387970047
	.quad	0x3fddccb66b167c24              # double 0.46561966378971165
	.quad	0x3fef73afa0017538              # double 0.98287183047401693
	.quad	0x3fcf6e68dd247d28              # double 0.24555693433738068
	.quad	0x3fec139a9711d3be              # double 0.87739305024899017
	.quad	0x3fb4beb16f4edcf8              # double 0.081034745859927315
	.quad	0x3fb47c5ae0a7a448              # double 0.080022506568313223
	.quad	0x3fd0bb4a7e14c910              # double 0.26143133461586476
	.quad	0x3fee6f0f34dc9b87              # double 0.95105705570755183
	.quad	0x3fe97d11a1452d0d              # double 0.79651719568337997
	.quad	0x3fe26845e81b3c81              # double 0.57522864659576112
	.quad	0x3fec6d821f8861d9              # double 0.88836771162737727
	.quad	0x3fe43cacb6808db8              # double 0.63240657467797856
	.quad	0x3fef054cb23089f9              # double 0.96939692309052738
	.quad	0x3fed5758a2759545              # double 0.91691238146146559
	.quad	0x3fe738a019884093              # double 0.72566227900280678
	.quad	0x3fef579767b02bfc              # double 0.97944231273265769
	.quad	0x3fb833e2607427e8              # double 0.09454169134929169
	.quad	0x3fbd60860e35fce0              # double 0.11475408408113053
	.quad	0x3fe47cc7147d5c0d              # double 0.64023164750949635
	.quad	0x3fccc4dab723fdfc              # double 0.22475751821910694
	.quad	0x3fe643d60b8d429e              # double 0.69578077560625551
	.quad	0x3fa3ad2a591094d0              # double 0.038430522319950478
	.quad	0x3f9b4f85886738a0              # double 0.026670538378134823
	.quad	0x3fe9d8f47b80799f              # double 0.80773376580673417
	.quad	0x3fe931b4348e4129              # double 0.78731737389356227
	.quad	0x3fe2de3ea345a5be              # double 0.58962947739671967
	.quad	0x3febf9702dc8031c              # double 0.87419899884853036
	.quad	0x3fe42b7096fe92c2              # double 0.63030271044825548
	.quad	0x3fd01b6b074e9260              # double 0.25167346681181435
	.quad	0x3fd566b54340c0c0              # double 0.33439380233449967
	.quad	0x3fca0f1fc79a1ae8              # double 0.2035865521067628
	.quad	0x3fe9b030b6b04bd9              # double 0.80275760346773517
	.quad	0x3fe4d03200606c39              # double 0.65041446755947796
	.quad	0x3fc67c625d2dac28              # double 0.17567090558745346
	.quad	0x3fb5d756a3afe808              # double 0.085317053759269013
	.quad	0x3feb18b8f1cfb586              # double 0.84676787594587277
	.quad	0x3fe798c615f6d8e4              # double 0.73739914216892233
	.quad	0x3fec8f6bba151e27              # double 0.89250742286907758
	.quad	0x3febf3c52741ffbb              # double 0.87350709598103238
	.quad	0x3fe1a1a43d2ddf05              # double 0.5509816355615561
	.quad	0x3fe445bce6002457              # double 0.63351292535765935
	.quad	0x3fea8f5055f2ee68              # double 0.82999436175255159
	.quad	0x3fe8030a84e159d9              # double 0.75037122681788582
	.quad	0x3fe896100c2c517c              # double 0.7683181989437311
	.quad	0x3fe9113c4d220b51              # double 0.78335394921337287
	.quad	0x3fd02506e69dd8fe              # double 0.25225994607116309
	.quad	0x3fed605796301fa9              # double 0.91801051457968186
	.quad	0x3fe5d60835292af8              # double 0.68237696059199404
	.quad	0x3fc1e1595d84bb2c              # double 0.13968960825283128
	.quad	0x3fc3e67888537b60              # double 0.15547091156528392
	.quad	0x3fd7b4277abc36ca              # double 0.37037074075565768
	.quad	0x3fc4b1640bfa4494              # double 0.16166353783458887
	.quad	0x3fe883c0ce3072b6              # double 0.76608314772928199
	.quad	0x3feb4c39e6799c63              # double 0.85305495276123755
	.quad	0x3febc07c739ed263              # double 0.8672468431673902
	.quad	0x3fe7dca95201ca48              # double 0.7456862069796637
	.quad	0x3fe12c0b7f06ca2c              # double 0.536626575564076
	.quad	0x3fdd910e3edc67fe              # double 0.4619784940601902
	.quad	0x3fd908b939be2748              # double 0.39115744246429474
	.quad	0x3fddcb8d6aade8be              # double 0.46554885309127403
	.quad	0x3feef87f11340cc5              # double 0.96783402786277206
	.quad	0x3fe840c91e672671              # double 0.75790840089866951
	.quad	0x3fe56476eb87a859              # double 0.66851373674331704
	.quad	0x3fdd647989559a44              # double 0.45925749217568446
	.quad	0x3fbd29a66e631240              # double 0.11391678042407083
	.quad	0x3fc659e114969610              # double 0.17461789613041434
	.quad	0x3fb554f775e486c0              # double 0.083327738077538349
	.quad	0x3fe12ec6910d8864              # double 0.53695991831433476
	.quad	0x3fca537a1b5c0860              # double 0.20567251525796149
	.quad	0x3fd11cf9e6c9638c              # double 0.26739356553803684
	.quad	0x3fde888f1c9f524a              # double 0.47708490176345164
	.quad	0x3fee3e1fa9a4daa7              # double 0.94508345731340604
	.quad	0x3fe6d0b6a572b515              # double 0.71297771753384842
	.quad	0x3feda9ca87293bf3              # double 0.9269764556755703
	.quad	0x3fec11bc7f7247ed              # double 0.87716507808567956
	.quad	0x3fe32d250666da65              # double 0.59926081896157923
	.quad	0x3fced408aba96bdc              # double 0.24084576017307213
	.quad	0x3fe8e0c35d66d0e2              # double 0.77743690721993297
	.quad	0x3fe459010fef22a4              # double 0.63586476432927386
	.quad	0x3f9bf1edf3be09c0              # double 0.027290075303889827
	.quad	0x3fe6c7458fd656be              # double 0.71182516186919265
	.quad	0x3fe58c03077235e4              # double 0.67334128813098149
	.quad	0x3fe0509652380035              # double 0.50983730371809222
	.quad	0x3fca466e17b33bf0              # double 0.20527435452683518
	.quad	0x3fe904652c804c2f              # double 0.78178652469285292
	.quad	0x3fed5127e3ee3fe4              # double 0.91615671651561259
	.quad	0x3fdf37edaa16785a              # double 0.48778859720358059
	.quad	0x3fe402503a3737c8              # double 0.62528239603283797
	.quad	0x3fd0e38474e1e67a              # double 0.26388656057643056
	.quad	0x3feaf6836cf5871f              # double 0.84259196549485071
	.quad	0x3fe55c432cd1c490              # double 0.66751250032224796
	.quad	0x3fd81cc88ff8ea5c              # double 0.37675680217549767
	.quad	0x3fece1ccc96dc881              # double 0.90256347028322648
	.quad	0x3fe4a465b4412551              # double 0.64506802755310322
	.quad	0x3fb0a3b38e33b6d8              # double 0.064997884957587515
	.quad	0x3fe0c04e919579b2              # double 0.52347496446946296
	.quad	0x3fdfb530b402ad8a              # double 0.4954339750208524
	.quad	0x3fceb75bc35be254              # double 0.23997065581331134
	.quad	0x3fe8bad7339061d6              # double 0.77280769415943484
	.quad	0x3fe4f99c59b90af4              # double 0.65547006153096143
	.quad	0x3fe7b7766216527c              # double 0.74114531667380801
	.quad	0x3fde810b7fd27552              # double 0.47662627680422986
	.quad	0x3fb27030a2d470b8              # double 0.072024383309726825
	.quad	0x3f8f7da2b0786340              # double 0.015376349459118921
	.quad	0x3fdd9d38eab3def8              # double 0.46272108955552893
	.quad	0x3fd90c6a79ab60e2              # double 0.39138280755788746
	.quad	0x3fed0a0d4b0c4ee3              # double 0.90747704179599642
	.quad	0x3fe0b35d8f04b1ed              # double 0.52189519818563002
	.quad	0x3fc11614ee05289c              # double 0.13348638174131089
	.quad	0x3fc5f453ddd504f4              # double 0.17151878673215715
	.quad	0x3fe73e3754aed2a7              # double 0.72634474315289743
	.quad	0x3f8e8a5381cc7280              # double 0.014912273787154762
	.quad	0x3feaf84b151b1f7a              # double 0.84280923959975884
	.quad	0x3fd158f2a6574c54              # double 0.27105394596327881
	.quad	0x3fe935877b864278              # double 0.78778432966107825
	.quad	0x3fd6473d13ef1166              # double 0.34809805819192829
	.quad	0x3fdf190719416008              # double 0.48590257135720138
	.quad	0x3fe9a22808b5857a              # double 0.80104448033323128
	.quad	0x3feee41578c8f9f9              # double 0.96534226981003634
	.quad	0x3fe052bc4d9e6c63              # double 0.51009955558710052
	.quad	0x3fa3a9dedea50fa0              # double 0.038405384710613832
	.quad	0x3fc4a69f1f9d500c              # double 0.16133488696743858
	.quad	0x3febf8952b2266d5              # double 0.8740945665806189
	.quad	0x3fe59f2892e678fb              # double 0.67567852679692864
	.quad	0x3fdfca8ede1a1b74              # double 0.49673816384932157
	.quad	0x3fa8d861e3d02050              # double 0.048525866564944509
	.quad	0x3fa60a8881460f80              # double 0.04304911211059359
	.quad	0x3feda7b6af2071c0              # double 0.92672285274925769
	.quad	0x3fda4bab410aa338              # double 0.41086846687044298
	.quad	0x3fea536803b0baaf              # double 0.82268143387576298
	.quad	0x3fd982be26cf594e              # double 0.39860490598711784
	.quad	0x3fef65d91d6d1f9a              # double 0.98118263003651696
	.quad	0x3fda759b8a54bbb8              # double 0.4134281969917839
	.quad	0x3fe1b8f1301b7fe2              # double 0.55382594486217962
	.quad	0x3fa4e33dc86b3130              # double 0.040796213832069106
	.quad	0x3fe50ba9606bb54f              # double 0.65767353851485122
	.quad	0x3fe391c5c6403182              # double 0.61154450150347395
	.quad	0x3fd70833e4b84ea8              # double 0.35987565360958707
	.quad	0x3fe21f9ad251bba4              # double 0.56635800436003025
	.quad	0x3f3e81412c884000              # double 4.6546784554468701E-4
	.quad	0x3fda0a83cac86d5a              # double 0.40689177325267212
	.quad	0x3fe26d212aa694dd              # double 0.57582147913185688
	.quad	0x3fcd78b5da5aad40              # double 0.23024628793550939
	.quad	0x3fd5fa121e9c0c5e              # double 0.34338810910430151
	.quad	0x3fe76d3b5fc465fa              # double 0.7320839758351092
	.quad	0x3fef8e0c0e8274de              # double 0.98608973344712658
	.quad	0x3fe22aa447e6b1c3              # double 0.56770528834527345
	.quad	0x3fc26aae8df8be80              # double 0.1438806718083363
	.quad	0x3fea104893ce1723              # double 0.81448773258373242
	.quad	0x3fd66b2e1ca5ae3c              # double 0.35029175565316328
	.quad	0x3fea024f49951314              # double 0.81278194781825385
	.quad	0x3fcca709cf0e8d5c              # double 0.2238476048488377
	.quad	0x3f6db52acbaf6e00              # double 0.0036264263012364406
	.quad	0x3fd6fac861cf7f58              # double 0.35905656387148133
	.quad	0x3fd27f8446c70dd0              # double 0.2890330020129257
	.quad	0x3fea94b3e3198e48              # double 0.83065218310771005
	.quad	0x3fc01a4eb29a6bf8              # double 0.12580283852443563
	.quad	0x3fed22fac0a62b9f              # double 0.91051995875146818
	.quad	0x3fd1ad2fcb8c27de              # double 0.276195477272834
	.quad	0x3fecb0befbcdf923              # double 0.89657544308264325
	.quad	0x3fed410ed6f58592              # double 0.91419164642518269
	.quad	0x3fe236074f2221f0              # double 0.56909528213242133
	.quad	0x3fd5bdb7cc575906              # double 0.33970446543880006
	.quad	0x3fe64d125ded19c8              # double 0.69690817208248124
	.quad	0x3fb4f5df335428d8              # double 0.0818767071070029
	.quad	0x3f84085fb1bc3880              # double 0.0097815967669954151
	.quad	0x3fdfb1a6bf6eb994              # double 0.4952179784258075
	.quad	0x3fe49ad65971afc8              # double 0.64390103787945296
	.quad	0x3fd0859926aa5ab0              # double 0.25815418983385552
	.quad	0x3faed31bb4269430              # double 0.06020437788109978
	.quad	0x3fd513ec188cad7c              # double 0.32934095761694215
	.quad	0x3fe31bf0bceb2e34              # double 0.59716069124392002
	.quad	0x3fc43b107d768ff0              # double 0.15805250288133221
	.quad	0x3fe6c2cea2a63a48              # double 0.71128017203756944
	.quad	0x3fe12935792b93d7              # double 0.53628038087901586
	.quad	0x3fe239b341cbc6fb              # double 0.56954348421842782
	.quad	0x3fed1e4407dde9ad              # double 0.90994454895490196
	.quad	0x3fe20cafeecd9ff2              # double 0.56404873505834829
	.quad	0x3fd2b938bbdaeb60              # double 0.2925550303004254
	.quad	0x3fd7e2e5c3b06d94              # double 0.37322372541685778
	.quad	0x3fbf5117ff9ba348              # double 0.12233114233425824
	.quad	0x3fc07cfc3ef568d8              # double 0.12881424974586397
	.quad	0x3fc172421bed29e0              # double 0.13629938472361314
	.quad	0x3fd7c98d280b0f44              # double 0.37167672071904101
	.quad	0x3fedd28011f511a7              # double 0.93194583422932886
	.quad	0x3fe69a7680865afe              # double 0.70635533430581154
	.quad	0x3fd969a7e5807d10              # double 0.39707372104926808
	.quad	0x3fe0e659d02bb8ca              # double 0.52811899813038932
	.quad	0x3fbeb789f911b420              # double 0.11998808222570334
	.quad	0x3fe60d6403c91a52              # double 0.68913460482947131
	.quad	0x3fdb9e759811a30a              # double 0.43154659128644879
	.quad	0x3fef41bc31feae92              # double 0.97677430882090932
	.quad	0x3fd7844835c67820              # double 0.36744885684481865
	.quad	0x3fc7027b289fa218              # double 0.1797632168156873
	.quad	0x3fe32ed51a8f77f9              # double 0.59946685016234291
	.quad	0x3fe978e4a8c2505d              # double 0.79600747071027522
	.quad	0x3fe3032f6201f7db              # double 0.59413880483748061
	.quad	0x3fea117ca8bc6776              # double 0.81463463741532283
	.quad	0x3fdfacc600ebc8c8              # double 0.4949202546114404
	.quad	0x3fc14abbe0a0e0d0              # double 0.13509319751916005
	.quad	0x3fd7f4f11cc7f9a6              # double 0.37432506380710107
	.quad	0x3fe9d33355b8ab4b              # double 0.80703131430105068
	.quad	0x3fbdd84294e94198              # double 0.11658111701513574
	.quad	0x3fea095ea5483760              # double 0.81364376336726351
	.quad	0x3febed7df5bb9202              # double 0.87274072642009082
	.quad	0x3fd7b76c1834b668              # double 0.37057020534380181
	.quad	0x3fed3851de2ae090              # double 0.91312497512901025
	.quad	0x3fe6324944f37e88              # double 0.69363845316907291
	.quad	0x3fee263c0659861d              # double 0.94216729393173504
	.quad	0x3fdcdb812e51122c              # double 0.45089749835122706
	.quad	0x3fc2d25156fad450              # double 0.14704338786183024
	.quad	0x3fe3c6e2ab3e29e2              # double 0.61802800603737418
	.quad	0x3feeb4df4364db2e              # double 0.95957911646732952
	.quad	0x3fbea623ac5ea460              # double 0.11972258527988933
	.quad	0x3fcbfb2ad3b5fbec              # double 0.21860251748509485
	.quad	0x3fc97cd5628c7c8c              # double 0.19912211715652395
	.quad	0x3f91eb8761c4a3a0              # double 0.017500033705036722
	.quad	0x3fe0ed6b5e3c7825              # double 0.52898186116704393
	.quad	0x3fc816fa7f2469e0              # double 0.18820124824635709
	.quad	0x3fda9ccbb23e7518              # double 0.41582004934919459
	.quad	0x3fb4bff82f081018              # double 0.081054221613215183
	.quad	0x3fe712357aaa07af              # double 0.72097276647422415
	.quad	0x3feb439c1e31177d              # double 0.85200315377072366
	.quad	0x3fe302f8059202ba              # double 0.59411240661582743
	.quad	0x3fef2151c71f5199              # double 0.97281731501657298
	.quad	0x3fe8b5b4c70ff1a4              # double 0.77218092803336846
	.quad	0x3fd31521d2528e2a              # double 0.29816480197243556
	.quad	0x3fc48568e8a7d76c              # double 0.16032134399545883
	.quad	0x3fe44ab3920195db              # double 0.63411882893404525
	.quad	0x3fe50c69fc0def67              # double 0.65776538113958061
	.quad	0x3fdcd5743805d0a6              # double 0.45052819701164493
	.quad	0x3fc2df44a9d1b7d8              # double 0.14743860523179708
	.quad	0x3fd4e49c2a14d194              # double 0.32645324811462584
	.quad	0x3feaf0c403ab8a62              # double 0.84189034191906509
	.quad	0x3fe5332cb3d282bc              # double 0.66249690171760944
	.quad	0x3febe5c4d259cc38              # double 0.87179795345435362
	.quad	0x3fe6fbd598f2dc8b              # double 0.7182414996413099
	.quad	0x3f639e8694470100              # double 0.00239492688180587
	.quad	0x3fcec9ec112bdf80              # double 0.24053717459150548
	.quad	0x3fdb1c72ee381a10              # double 0.42361138595188752
	.quad	0x3fe160b388be563c              # double 0.54305435855594153
	.quad	0x3fc149b4fd9ee448              # double 0.13506185897657219
	.quad	0x3fd70625f2bbb216              # double 0.35975025848782261
	.quad	0x3fe6b296734950d6              # double 0.70930025593636503
	.quad	0x3fdf3153ede9e7ce              # double 0.48738573297270882
	.quad	0x3feb3a79ba84d21b              # double 0.8508881228395383
	.quad	0x3fd7bd0f290710d4              # double 0.37091425901986708
	.quad	0x3fd1af1aec85159a              # double 0.27631257150309241
	.quad	0x3fd64504b0737ee2              # double 0.34796254378851021
	.quad	0x3fc8ab864380a3c0              # double 0.19273451133747521
	.quad	0x3fe8b0eb33b7399e              # double 0.77159652806021817
	.quad	0x3fdd40899e632d82              # double 0.45706406085511031
	.quad	0x3fdd2ab6dd254ae0              # double 0.45573207470185473
	.quad	0x3f9c83479b159660              # double 0.027844542351337487
	.quad	0x3fce33cec92de888              # double 0.23595604727944797
	.quad	0x3fb0c80cef95e798              # double 0.065552528851098635
	.quad	0x3fdd6b5e77b95676              # double 0.45967828456682669
	.quad	0x3fdfe18efe1a3478              # double 0.49814200224574945
	.quad	0x3feb1d3845d503de              # double 0.84731687201576356
	.quad	0x3fe89426ed977c10              # double 0.76808496861110775
	.quad	0x3fe71861e92e79fc              # double 0.72172637503882653
	.quad	0x3fc2706a06328bfc              # double 0.14405560782060423
	.quad	0x3fde37e275160fa6              # double 0.47216092523762609
	.quad	0x3fe15017e9d6e00c              # double 0.54102702781438117
	.quad	0x3fe138e9cd38ceb4              # double 0.5381974228134454
	.quad	0x3fc17a7f0cf34b98              # double 0.13655079014150995
	.quad	0x3fc00deec6c737f8              # double 0.12542519288984955
	.quad	0x3fbbe79734984410              # double 0.10900254282047706
	.quad	0x3fdf0873f3f90094              # double 0.48489092660384725
	.quad	0x3fe386c7ad55c6f5              # double 0.61020263533120433
	.quad	0x3feb8db09974a7f7              # double 0.86104612323583651
	.quad	0x3fee89afe9759fce              # double 0.95430751416733428
	.quad	0x3fed97abef10d6b7              # double 0.92476460163626129
	.quad	0x3fec918052f9767a              # double 0.89276138502073299
	.quad	0x3fc81e9e0a0e91c8              # double 0.18843436709461359
	.quad	0x3feece6f3fffffd1              # double 0.96269953250884487
	.quad	0x3f6cb7628b482a00              # double 0.0035054135025849309
	.quad	0x3fe2544a7fbd0819              # double 0.57278943013102712
	.quad	0x3fe1efd5dfc7155d              # double 0.56052678782058829
	.quad	0x3fae19e12defd940              # double 0.058791195733578494
	.quad	0x3fd0ebc35befbec4              # double 0.26438983896421697
	.quad	0x3fe122b8d052e825              # double 0.53548851669552688
	.quad	0x3fee5a348e3a46ce              # double 0.94851138857685569
	.quad	0x3fc6ff3b5c766bd4              # double 0.17966405882620384
	.quad	0x3fd9e0590b11a52e              # double 0.40431810456228134
	.quad	0x3fe95f22daead72b              # double 0.79286329991621096
	.quad	0x3fd0aedaa228a438              # double 0.26067224345985407
	.quad	0x3fc9fe9c0f021dc4              # double 0.20308256848168871
	.quad	0x3fe3962b3502f6ea              # double 0.61208114961456528
	.quad	0x3fd445619e8435c0              # double 0.31673470001336668
	.quad	0x3fa4a647b9f021f0              # double 0.040331117103111214
	.quad	0x3fd96f84ffc83462              # double 0.3974316118117881
	.quad	0x3fee1ac7cdb3a07a              # double 0.94076910186869545
	.quad	0x3fe612d088aca7de              # double 0.68979670232988233
	.quad	0x3fd953edb39189fa              # double 0.39574759040820562
	.quad	0x3f63fa3927ae3600              # double 0.002438651686538007
	.quad	0x3fab40c53181e340              # double 0.053228533070927231
	.quad	0x3febf2b7034197cf              # double 0.87337828289013852
	.quad	0x3fe90f2f86cd04de              # double 0.78310371712009519
	.quad	0x3fee241e534c8f2b              # double 0.94190899152133534
	.quad	0x3fce29f9cf97b700              # double 0.23565600048407731
	.quad	0x3fdab95a4caafd9e              # double 0.41756303298094533
	.quad	0x3fe4d05e792dcc39              # double 0.6504356734061566
	.quad	0x3feaa50e5dbd9ca1              # double 0.83264845188832137
	.quad	0x3fef5035187a6860              # double 0.97854094296350169
	.quad	0x3fcf4805676cd134              # double 0.24438540983249768
	.quad	0x3f6df12c4fa19900              # double 0.0036550393534070524
	.quad	0x3fe78559d544448b              # double 0.73502818730971009
	.quad	0x3fe2c72f1b0ae43d              # double 0.58681445390460107
	.quad	0x3feaeee507ba430e              # double 0.84166194447797849
	.quad	0x3fda5b636304e820              # double 0.41182789487686655
	.quad	0x3fb2748753d24b40              # double 0.07209058567449933
	.quad	0x3fef1f1c5a2b8551              # double 0.97254769908264837
	.quad	0x3fdcaf504dda033e              # double 0.44820029833504182
	.quad	0x3fcfbc652085f0d4              # double 0.2479368599705426
	.quad	0x3fe4d10ffcb787c0              # double 0.65052031859180914
	.quad	0x3fd0003a05185cde              # double 0.25001383302283198
	.quad	0x3fe8029b01344c0e              # double 0.75031805262767803
	.quad	0x3fc307f34f0ae348              # double 0.14868012771128236
	.quad	0x3fe03576d5a5e6b3              # double 0.50652639129767463
	.quad	0x3fe893be8f8d7fbe              # double 0.76803520238535561
	.quad	0x3fecb170b0911ce7              # double 0.89666017995560032
	.quad	0x3fe2b12d8f62ab73              # double 0.58412817006079221
	.quad	0x3fe9bdfc7b1f548d              # double 0.80444168135967831
	.quad	0x3feaae6618f0ab6a              # double 0.83378891821972201
	.quad	0x3fe167bfff90ad93              # double 0.54391479411190102
	.quad	0x3fe50d9e21b4eb35              # double 0.65791231711714337
	.quad	0x3fe829ad9ca86ef1              # double 0.75508766743902644
	.quad	0x3fcdbbdcc8578b6c              # double 0.23229560644457636
	.quad	0x3fd8ecd7ba62ee78              # double 0.38945573045541648
	.quad	0x3fd364b1a9bce650              # double 0.30302087379422904
	.quad	0x3fd2bc200659f202              # double 0.29273224468468595
	.quad	0x3fe7d193424584a9              # double 0.74433291381514721
	.quad	0x3fefafb7151468a2              # double 0.9901996051514923
	.quad	0x3fd4e9f233fe0cda              # double 0.32677893712407313
	.quad	0x3fadded92e572560              # double 0.058340823084629845
	.quad	0x3fc29d9410063224              # double 0.14543391020232932
	.quad	0x3fe938b13a70c9a6              # double 0.78817044653105905
	.quad	0x3fc00a5176e0db7c              # double 0.12531488709074867
	.quad	0x3fdc965dc9ba6a14              # double 0.44667763423936546
	.quad	0x3f8fd12726fc5b00              # double 0.015535646321536145
	.quad	0x3fe7c72e4a64e5eb              # double 0.74306406526664881
	.quad	0x3fda7c2048d73d66              # double 0.41382605660779459
	.quad	0x3fe5933ca97439ba              # double 0.67422326179967418
	.quad	0x3fdfeb939c3ee412              # double 0.49875345476499533
	.quad	0x3fdee785f8d89256              # double 0.48288106252065199
	.quad	0x3fd40bc379f93bda              # double 0.3132179919384136
	.quad	0x3fe6a1cd38587401              # double 0.7072511768816413
	.quad	0x3fcb9e30b79f688c              # double 0.21576508489562618
	.quad	0x3fd746ba101d3dd4              # double 0.3636918218007541
	.quad	0x3fd204f0ff5f8db2              # double 0.2815515989188625
	.quad	0x3fe15c165dc436d3              # double 0.54249113382112524
	.quad	0x3fec12a145b673e2              # double 0.87727416625750387
	.quad	0x3fe46f04b4367dcf              # double 0.63855204770873708
	.quad	0x3fe9f44de368a2bb              # double 0.81107229629295519
	.quad	0x3fe9399ccd629a79              # double 0.7882827769688695
	.quad	0x3fe550c1f19387bc              # double 0.66610810454243774
	.quad	0x3fb416fcd78d5a10              # double 0.078475763917005503
	.quad	0x3fdf94e85162788a              # double 0.49346359203071499
	.quad	0x3fd2e7f99701e578              # double 0.29540862795655398
	.quad	0x3f944f94c1201f40              # double 0.019834827697223334
	.quad	0x3fe7db2578ad5d69              # double 0.74550126619116697
	.quad	0x3fe46dd738b41d6d              # double 0.63840828967015073
	.quad	0x3fc5d405afbcee10              # double 0.17053290444333458
	.quad	0x3f947319ccf52ca0              # double 0.019970324644685733
	.quad	0x3fdc24171858f15c              # double 0.43970277192763318
	.quad	0x3fd1f4611a56c742              # double 0.28054072925725759
	.quad	0x3fe24c10860f830f              # double 0.57178522285184552
	.quad	0x3fea3796937fdd43              # double 0.81928566750040266
	.quad	0x3fc0a7152a73f4a8              # double 0.1300989587106518
	.quad	0x3fdfb16af9d02f96              # double 0.49520372768233167
	.quad	0x3fdf2d493bb93438              # double 0.48713904220932447
	.quad	0x3fe499f4ded480bd              # double 0.64379352113248667
	.quad	0x3fe6cb9d0d80198c              # double 0.71235516201777349
	.quad	0x3feb6dd723b50da8              # double 0.85715825056143036
	.quad	0x3fc1d4872a2a8d64              # double 0.13929833945176562
	.quad	0x3fdfb61068b5af40              # double 0.495487310653278
	.quad	0x3fe1b0e0bece1f84              # double 0.55284154192575885
	.quad	0x3fe432dda25dc074              # double 0.63120919906761097
	.quad	0x3fcfd016002a7cc4              # double 0.24853777893165419
	.quad	0x3fe7ce57e2916d9a              # double 0.74393839122369632
	.quad	0x3feb7df7bbbd4c4e              # double 0.85912691753254378
	.quad	0x3fd34b9a4be94fc2              # double 0.30148942387790723
	.quad	0x3fc3f6a2bd7786fc              # double 0.15596422435105939
	.quad	0x3fda49d0530be984              # double 0.41075523481381304
	.quad	0x3fd28d5f338f8726              # double 0.2898786548158675
	.quad	0x3fc90fa35373ead4              # double 0.19578973364681096
	.quad	0x3fe3ef9434bed864              # double 0.62299547483304396
	.quad	0x3fe5311fedf88c9e              # double 0.66224667051973873
	.quad	0x3f985fb5343b3a60              # double 0.023802596390675723
	.quad	0x3fa9cbc68eca2800              # double 0.050382809572582232
	.quad	0x3fe97660fea70fff              # double 0.79570054756959496
	.quad	0x3fedf0ae3985b269              # double 0.93562995180907393
	.quad	0x3fe9f7de390e1137              # double 0.81150733130974728
	.quad	0x3fea60c4bd7690ba              # double 0.82431256298561739
	.quad	0x3fc0b6bc1bd5f474              # double 0.13057662352722199
	.quad	0x3febdff174a64af4              # double 0.87108681471940352
	.quad	0x3fb5793ac175e340              # double 0.083881065589491932
	.quad	0x3fd44ce30b4970f2              # double 0.31719280340418188
	.quad	0x3fd4cc9871f9b66e              # double 0.32498751764692357
	.quad	0x3fd9ea8cf7d49640              # double 0.40494083597363684
	.quad	0x3fe0a03ba45bef8f              # double 0.51955968953505927
	.quad	0x3fe3a9159de7bc63              # double 0.61439019051421118
	.quad	0x3fd066f3d2d19bec              # double 0.2562837179925157
	.quad	0x3fe0b914a75d2143              # double 0.5225928562950134
	.quad	0x3fe8941d6a0d0ed6              # double 0.76808043206298282
	.quad	0x3fe9a6b951ef24a2              # double 0.8016020393635197
	.quad	0x3fed05f1952f55ed              # double 0.90697554719616635
	.quad	0x3fd249e154f715d6              # double 0.28575928971653519
	.quad	0x3fc136ad5228c30c              # double 0.13448111068421331
	.quad	0x3fe1f44d075b198b              # double 0.5610718864125358
	.quad	0x3fe5fbb3c9684eaf              # double 0.68697537743942927
	.quad	0x3fee1f083457a1ea              # double 0.94128809187992357
	.quad	0x3fe3ea6bc75ad03b              # double 0.62236584602806688
	.quad	0x3fd0525de2f82b18              # double 0.25502726712208945
	.quad	0x3fd85f7f53404a32              # double 0.38082869653695461
	.quad	0x3feef2b8bccce629              # double 0.96712910533023432
	.quad	0x3fd0a353d8172458              # double 0.25996872046068153
	.quad	0x3fe0ccc4fdc0e7ac              # double 0.52499627648579894
	.quad	0x3feceb8ef8dae317              # double 0.90375469784257489
	.quad	0x3fcd4b58ae4322a8              # double 0.228861889924038
	.quad	0x3faa53f3c03469c0              # double 0.051421754086010463
	.quad	0x3fe7c9401f078234              # double 0.74331670818725692
	.quad	0x3fe192875d844fb0              # double 0.54913681283004756
	.quad	0x3fc084db2b199e68              # double 0.12905444721694725
	.quad	0x3fe41931975379d6              # double 0.62807540470003675
	.quad	0x3f865e2e3dc1d340              # double 0.010921822795560865
	.quad	0x3fe2f1dd07e94e0f              # double 0.59202434106049562
	.quad	0x3fe83a147f1b69bb              # double 0.75708985162355391
	.quad	0x3fdfaeb1e7cf8c66              # double 0.49503753316657251
	.quad	0x3fd1dbde9c4a79d2              # double 0.27904477370057379
	.quad	0x3fbd52db195bfd60              # double 0.11454553002476109
	.quad	0x3fe075a6381164c4              # double 0.51436148596544529
	.quad	0x3fd88eb00f4b8de0              # double 0.38370896810212507
	.quad	0x3fed6fcf742b1507              # double 0.91989872635954917
	.quad	0x3fe274dd013cfac3              # double 0.57676553956829257
	.quad	0x3faa275d7aab63d0              # double 0.051081582283309168
	.quad	0x3feef555755b32d8              # double 0.96744797631398693
	.quad	0x3fbaf5bd48eafae0              # double 0.10531218557569444
	.quad	0x3fe2472a8d1a70d2              # double 0.57118728217349202
	.quad	0x3fd910564ee3b960              # double 0.39162213996941908
	.quad	0x3fe78147ba392555              # double 0.7345312726185208
	.quad	0x3fddea2c3c348084              # double 0.46741777305033616
	.quad	0x3fe442e7a80decbd              # double 0.63316710303424595
	.quad	0x3fe78c63cc2e6171              # double 0.73588743094573605
	.quad	0x3fc3736155a55848              # double 0.15195862466743137
	.quad	0x3fd17d54662abb12              # double 0.27327451684225068
	.quad	0x3fe44539c00bc525              # double 0.63345038899402495
	.quad	0x3fdc2cadc905c97e              # double 0.44022698050607534
	.quad	0x3fe149700e2b1a8e              # double 0.54021456496487175
	.quad	0x3fdd1a2959115518              # double 0.4547217721750072
	.quad	0x3fc423d4a72c1f44              # double 0.15734346544945244
	.quad	0x3fe2a6f87d4e0eb5              # double 0.58288216088882072
	.quad	0x3fef20edf9cb0bab              # double 0.97276972568248731
	.quad	0x3fce84d1825fe3b0              # double 0.23842829576440527
	.quad	0x3fc2020feb869620              # double 0.14068793297080706
	.quad	0x3fdbd6c22e1383c6              # double 0.43498281955367835
	.quad	0x3fcdb9c8f54970ec              # double 0.23223220803163913
	.quad	0x3fd1ab9052b9db58              # double 0.27609642103873488
	.quad	0x3fe3223f232c43be              # double 0.5979304968806145
	.quad	0x3fecab495d52b889              # double 0.89590900637792104
	.quad	0x3fea0359affdf2d6              # double 0.81290897725520028
	.quad	0x3fe0ccd823475191              # double 0.52500540628766335
	.quad	0x3fa9833ba0632320              # double 0.049829352692148499
	.quad	0x3fd789003568754e              # double 0.36773686614636325
	.quad	0x3fee53bd6904c2ac              # double 0.94772215377277779
	.quad	0x3fb5872100433e30              # double 0.084093153537872167
	.quad	0x3fcf7e1f33594470              # double 0.24603643424282806
	.quad	0x3fdedfa240a33732              # double 0.48239952385198415
	.quad	0x3fbb2764e5e03580              # double 0.10606985676004932
	.quad	0x3fd2ac0b84d8c726              # double 0.29175079320258346
	.quad	0x3fc94b88edc10820              # double 0.19761764153560168
	.quad	0x3fe68946f90c433a              # double 0.70425747530143856
	.quad	0x3fd45ea30dd59d72              # double 0.31827617980021394
	.quad	0x3fd80a9295863b7a              # double 0.37564529993044682
	.quad	0x3fde62675c956544              # double 0.47475608865132224
	.quad	0x3fe6c07b22e0d0bb              # double 0.71099621593614104
	.quad	0x3fe7cebcfcf1203f              # double 0.74398660090174207
	.quad	0x3fef2d0d8b21d58f              # double 0.97424962209940868
	.quad	0x3fdd0057a5e21404              # double 0.4531458969070743
	.quad	0x3fe787fd90f8f666              # double 0.73535040202086743
	.quad	0x3fe2bae29ac797cb              # double 0.58531313162233667
	.quad	0x3fecc4ff6a23d695              # double 0.89904757242648492
	.quad	0x3fe4490243b0520b              # double 0.63391221256694175
	.quad	0x3fa94506f8154380              # double 0.049354760917259988
	.quad	0x3fc3897f63ae2f4c              # double 0.15263359420020561
	.quad	0x3fee47c73aaf54b6              # double 0.94626199209110129
	.quad	0x3fe9295482157948              # double 0.78629517943390059
	.quad	0x3fdfa62e4c0626b4              # double 0.49451787399503222
	.quad	0x3fa279b39722c010              # double 0.036084758948504825
	.quad	0x3fe89f35ae0410a9              # double 0.76943477618671807
	.quad	0x3fbc3c8800341228              # double 0.11029863362279768
	.quad	0x3fe348ffa551e82a              # double 0.60266096390774249
	.quad	0x3fd74dd27ea460bc              # double 0.36412489287750893
	.quad	0x3fe5851589b0ccb0              # double 0.67249562161159382
	.quad	0x3fe04f639babf314              # double 0.50969105152725769
	.quad	0x3fd9ca072e7957fe              # double 0.40295581377483802
	.quad	0x3fe93eb3e90de053              # double 0.78890414732360126
	.quad	0x3fef31be8afc2909              # double 0.97482230325229679
	.quad	0x3fe2d2020ad7da40              # double 0.58813573949630182
	.quad	0x3fcb2e1441386010              # double 0.21234372315007066
	.quad	0x3fdcfc69aae30c48              # double 0.45290605247663906
	.quad	0x3fb800579ede15e0              # double 0.093755222593322695
	.quad	0x3fe192c2a10a84ff              # double 0.54916507199609998
	.quad	0x3fde630905df98ac              # double 0.47479463170601366
	.quad	0x3fef012def83e0c6              # double 0.9688939741163487
	.quad	0x3fc36124309a1270              # double 0.15140201924454599
	.quad	0x3fe672a0b15718f8              # double 0.70149263989222188
	.quad	0x3fd064fcf440f0b6              # double 0.25616382458589315
	.quad	0x3fe1e4280bb226e6              # double 0.55910112652165078
	.quad	0x3fd1eaf121a98fa8              # double 0.27996471679056834
	.quad	0x3fe8d29757356c8f              # double 0.77570693047472783
	.quad	0x3fed75b063962830              # double 0.92061633539674936
	.quad	0x3feed11d4eaa82bb              # double 0.9630266701170379
	.quad	0x3fc436bb70ac0f28              # double 0.15792029382293404
	.quad	0x3fe0c61e8513127e              # double 0.52418447486031972
	.quad	0x3fe04f3be62a816f              # double 0.50967211679748725
	.quad	0x3fe33f41641cc83b              # double 0.60147161057671583
	.quad	0x3fdebee3466d8e54              # double 0.48040086629609857
	.quad	0x3fecd0c74eab2802              # double 0.9004856621261299
	.quad	0x3fe61dbee5db453a              # double 0.69113106626370002
	.quad	0x3fd45642df773442              # double 0.31776496718231695
	.quad	0x3fd6a57b65f4ffa8              # double 0.35385022122135945
	.quad	0x3fdfb1df87985de0              # double 0.49523151628224404
	.quad	0x3fece3b31aa11e30              # double 0.9027953643898794
	.quad	0x3f8a53485b5ea2c0              # double 0.012854161537533826
	.quad	0x3fd56de49356e3cc              # double 0.33483232868780699
	.quad	0x3fd82542a297c9b0              # double 0.37727418783392874
	.quad	0x3fdb4dd82262901c              # double 0.42662623746787331
	.quad	0x3fe9f675f9400b65              # double 0.81133555108713706
	.quad	0x3fcd0404a59ef124              # double 0.22668512427288434
	.quad	0x3feb2204b4d74a51              # double 0.84790263481620276
	.quad	0x3feffa2cec184344              # double 0.99928899872075094
	.quad	0x3fe4685400d1a8c5              # double 0.63773536834676092
	.quad	0x3feccd79b462580e              # double 0.90008244735031595
	.quad	0x3fa3b17e9e796040              # double 0.038463551373468352
	.quad	0x3fc7f08268623a24              # double 0.18702726456508956
	.quad	0x3fe7baf4f4616b0f              # double 0.74157188158582865
	.quad	0x3fe5d7aed65a2e25              # double 0.68257848611523697
	.quad	0x3fec4dc2ca2b7062              # double 0.88449229704157184
	.quad	0x3feb4bb1be265755              # double 0.85299002779604882
	.quad	0x3fb85912e8517390              # double 0.095109159200957416
	.quad	0x3fd65996af5c0d72              # double 0.34921805500945091
	.quad	0x3fe88a3d7ee8d99c              # double 0.76687502657914619
	.quad	0x3fc041840ca71bcc              # double 0.12699938409624989
	.quad	0x3fe44a519ae11b97              # double 0.63407211542004205
	.quad	0x3fe0dcd5a390b2e0              # double 0.52695733972867842
	.quad	0x3fe13cceb4f6aa5f              # double 0.53867278427544452
	.quad	0x3febb5ec7e327641              # double 0.8659574951922836
	.quad	0x3fe34b7c9aa0acf7              # double 0.60296468926153934
	.quad	0x3fedd7ab95436d0e              # double 0.93257693436626865
	.quad	0x3fed4f51b5e6bea9              # double 0.9159325173149756
	.quad	0x3fd3f440ef974566              # double 0.31178306005047884
	.quad	0x3f882688d74020c0              # double 0.011792248791622106
	.quad	0x3fed5173f8096254              # double 0.91619299358996864
	.quad	0x3fe2aec6c999a333              # double 0.58383502364185913
	.quad	0x3fb85250897dc850              # double 0.095006021086903702
	.quad	0x3fdd8d2e3896cc86              # double 0.46174197698855612
	.quad	0x3fbd1071042e25f0              # double 0.11353212692315373
	.quad	0x3fe8c469a6e07db1              # double 0.77397615998409297
	.quad	0x3fefbffade2fe616              # double 0.99218505283278335
	.quad	0x3fe59fd0795a78dd              # double 0.67575858785474063
	.quad	0x3fd26b00cec8cf06              # double 0.28778095430173811
	.quad	0x3fe5c8dc6aa82853              # double 0.68076916533869747
	.quad	0x3fe65d1137f78fe0              # double 0.69886074954092336
	.quad	0x3fc9ed6c58f99290              # double 0.20255808205105952
	.quad	0x3fe8405b75fd216d              # double 0.75785611195264624
	.quad	0x3fef87219fd0877f              # double 0.98524552549154964
	.quad	0x3fd9e7c7ac825926              # double 0.40477172705267817
	.quad	0x3fe7e92daf393fe8              # double 0.74721416686406616
	.quad	0x3fe2689fb6448ca1              # double 0.57527146910833349
	.quad	0x3fc0181aed1d57c4              # double 0.12573563173162772
	.quad	0x3fc6eee12aa5ad24              # double 0.17916502554303648
	.quad	0x3fdbd9cb2e593814              # double 0.43516807104322308
	.quad	0x3fee8fe1ac470ceb              # double 0.95506366394002151
	.quad	0x3fee07ae87216d80              # double 0.93843771355334127
	.quad	0x3fd47552c037fe44              # double 0.31966084262237282
	.quad	0x3fdb89308f67e41a              # double 0.43024839405512838
	.quad	0x3fe07a6791b4d617              # double 0.51494196375159873
	.quad	0x3fd21f0638e2295e              # double 0.28314357333205986
	.quad	0x3fdb0758322ff726              # double 0.42232327366933686
	.quad	0x3fe0a07742234fb4              # double 0.51958811681332984
	.quad	0x3fd30db66f5a0640              # double 0.29771195291695918
	.quad	0x3feac76b2149d5ec              # double 0.83684307576794259
	.quad	0x3fecc3209ffaa95a              # double 0.89881926771094389
	.quad	0x3fe0d13a2f8052e9              # double 0.52554044034567682
	.quad	0x3fc349c80da45c08              # double 0.15068913141360007
	.quad	0x3fa0abbcd65eb460              # double 0.032560254257398169
	.quad	0x3fe7a7cba81437b1              # double 0.7392328532021023
	.quad	0x3fdd094de7fe8982              # double 0.45369289069835628
	.quad	0x3fe5909bdfd120b7              # double 0.67390245165099472
	.quad	0x3fdacd619d4864bc              # double 0.41878548011443306
	.quad	0x3fe1a15ca8cf5aa3              # double 0.55094750376413903
	.quad	0x3fd1519e4fa4d6b8              # double 0.2706065919659113
	.quad	0x3fef82ad37207264              # double 0.98470173613493416
	.quad	0x3fc60f358484aeb0              # double 0.17233914347285895
	.quad	0x3fd9549175553252              # double 0.39578663309365425
	.quad	0x3fe316102ed4e0f7              # double 0.59644326350010501
	.quad	0x3fe6a7963c057a94              # double 0.70795737955980309
	.quad	0x3fda933f3ba24418              # double 0.41523724387758554
	.quad	0x3fb6d0fe2c3529d0              # double 0.089126477997673037
	.quad	0x3fd40b3c07b55456              # double 0.31318569901242677
	.quad	0x3fc407d142b14f18              # double 0.15648856884455919
	.quad	0x3fe24d534f6605a9              # double 0.5719391394379062
	.quad	0x3fe5d1f6da0e370c              # double 0.68188040341348843
	.quad	0x3fec0ae4ca1499a7              # double 0.87632979840127667
	.quad	0x3fec38834bdf834f              # double 0.88189854449238136
	.quad	0x3feca6af1f3f1360              # double 0.89534717657862117
	.quad	0x3fead5df1e53be88              # double 0.83860736773745348
	.quad	0x3fe8c8341aff31d4              # double 0.77443890831778583
	.quad	0x3feae97bbe0ba0bf              # double 0.84100138777014155
	.quad	0x3fdd02b1fdf9d0fe              # double 0.45328950693443903
	.quad	0x3fcbf717798cbcb0              # double 0.21847814021154965
	.quad	0x3fe7312e1debeda9              # double 0.72475343555509142
	.quad	0x3fd2479a2a1e91a0              # double 0.28562025178168859
	.quad	0x3fe774b7905789df              # double 0.73299768630777951
	.quad	0x3fd342f88210cc4c              # double 0.30096256925316278
	.quad	0x3fc8f0d800514aa0              # double 0.19484996810441135
	.quad	0x3fe27c1f6b3f356e              # double 0.57765170046483916
	.quad	0x3fc66930cd1d5aa4              # double 0.17508516326298207
	.quad	0x3fd9d34ad7940e32              # double 0.40352126171657965
	.quad	0x3fcc54ba01f305a8              # double 0.22133565039807235
	.quad	0x3fef0874b2bc29e2              # double 0.96978220853025854
	.quad	0x3fe9ecfd51611911              # double 0.8101793851317628
	.quad	0x3fc096bfe5ae1524              # double 0.12960051264614336
	.quad	0x3fdc7a5a1222a57c              # double 0.44496776362446844
	.quad	0x3fecb425f1e257cd              # double 0.89699074976919635
	.quad	0x3fd87b7121742edc              # double 0.38253429667450489
	.quad	0x3fe6fc88ab035915              # double 0.71832688714019588
	.quad	0x3fcd740e8921fbd4              # double 0.23010427184996607
	.quad	0x3fd8835341c1204a              # double 0.38301545544937154
	.quad	0x3fe79ada7f972473              # double 0.73765301628112778
	.quad	0x3fede6359ef17cfa              # double 0.93435174029937618
	.quad	0x3fd0f5dbaf972ebe              # double 0.26500599048152285
	.quad	0x3fe4b999f172b4e5              # double 0.64765641362978654
	.quad	0x3facf83365b44e70              # double 0.056581121602133133
	.quad	0x3fd185f92461d62e              # double 0.2738020758909866
	.quad	0x3fe5568f965946a6              # double 0.66681651463496361
	.quad	0x3fe16c5dfed27b89              # double 0.54447841424904297
	.quad	0x3fe42235fae6c01a              # double 0.62917613033460218
	.quad	0x3fd29d57d3f2dad8              # double 0.29085345934019591
	.quad	0x3fe9cce0e46a82cd              # double 0.80625958073150061
	.quad	0x3fd152b3bd44b696              # double 0.27067273600810304
	.quad	0x3fe01cc4b99703e0              # double 0.50351177452114015
	.quad	0x3fdeb7992399a226              # double 0.47995594479155768
	.quad	0x3fd8293919c37322              # double 0.37751605525936516
	.quad	0x3fef9d2199c0966d              # double 0.98793106107468775
	.quad	0x3fdd53372b6fe6be              # double 0.45820407144456599
	.quad	0x3fe6372e9711e460              # double 0.69423608308637696
	.quad	0x3fe6c2770155ce1c              # double 0.7112383867337857
	.quad	0x3fddd69d7428152c              # double 0.46622406333365762
	.quad	0x3fe24c3c782c7a64              # double 0.57180617782053078
	.quad	0x3fe5a24e6aa348a8              # double 0.67606278255177177
	.quad	0x3fdffa16e6a63c9a              # double 0.49963924908019808
	.quad	0x3fd5d248b29bb6f6              # double 0.34095971529210034
	.quad	0x3fca109873ccfdfc              # double 0.20363145498593826
	.quad	0x3fe047510e8e199b              # double 0.50870564310826027
	.quad	0x3fbebbb469dda2d8              # double 0.12005164703954152
	.quad	0x3fe363e3e6f8b6a5              # double 0.60594363319042499
	.quad	0x3fe1a586d4b245a1              # double 0.55145589391957028
	.quad	0x3fecd125ef890e02              # double 0.9005307844567485
	.quad	0x3f9d2610293d7a00              # double 0.028465511815165101
	.quad	0x3fe0d43409ee7543              # double 0.5259037202810436
	.quad	0x3fcb9a0fa93b3de4              # double 0.21563907397511095
	.quad	0x3f9105ee9d038b40              # double 0.016624191602100824
	.quad	0x3fe92bd94f8ab8ea              # double 0.78660264525913459
	.quad	0x3fede9255e690134              # double 0.93471020164000728
	.quad	0x3fe65d880b51272f              # double 0.6989174099955785
	.quad	0x3fe7290d050cc7ee              # double 0.72376109110177622
	.quad	0x3fe781070883e242              # double 0.7345004240333497
	.quad	0x3fe080fc1f789d91              # double 0.51574522158346003
	.quad	0x3fd1a8a0f7b732a2              # double 0.27591728392580184
	.quad	0x3feea24382e77462              # double 0.95730758254252302
	.quad	0x3fd1a4c9a733b066              # double 0.27568284347831307
	.quad	0x3fd3b984358c49e8              # double 0.30819802502915516
	.quad	0x3fda193c90148e5a              # double 0.40779031820622935
	.quad	0x3fe05f8e30d24403              # double 0.51166448150081612
	.quad	0x3fe18bef27cd40ce              # double 0.54833181165488454
	.quad	0x3fe9fa920320c1ba              # double 0.81183720217636979
	.quad	0x3fd621fe605afa06              # double 0.3458248082132801
	.quad	0x3fe72ef6b4d5082d              # double 0.72448287314205617
	.quad	0x3feac4465ccd3c47              # double 0.83645933270771244
	.quad	0x3feb857e2733bda3              # double 0.86004550606405805
	.quad	0x3fe5695242bba597              # double 0.66910660775936293
	.quad	0x3fe177e47f044c49              # double 0.54588532264677625
	.quad	0x3fc2cb721966a0b0              # double 0.14683367004659464
	.quad	0x3fe6c741844d6520              # double 0.71182323303506578
	.quad	0x3fe4def5522414e4              # double 0.65221658747819022
	.quad	0x3fd31650f55af78e              # double 0.29823707542879496
	.quad	0x3fef237f751d9212              # double 0.9730832374012286
	.quad	0x3fe1a53c58e97dbe              # double 0.55142037740363725
	.quad	0x3fe444087570fd9a              # double 0.63330481469886313
	.quad	0x3fe9d5e9f6beb966              # double 0.80736253921876933
	.quad	0x3fe7a4f1c46125e4              # double 0.73888481479042101
	.quad	0x3f9d4d3be2638620              # double 0.028614936535524049
	.quad	0x3fc298f7f33ecfa0              # double 0.14529322983946447
	.quad	0x3fe3ba0bb36a84b5              # double 0.61646065752224521
	.quad	0x3fe61b4646ba726e              # double 0.69082940878031507
	.quad	0x3fe86fff2d482a68              # double 0.76367148250694772
	.quad	0x3fed4c74bd058a99              # double 0.91558300894060374
	.quad	0x3fedd04fad336430              # double 0.9316786177470302
	.quad	0x3fd0df4109d34d8e              # double 0.26362634620201042
	.quad	0x3fe171d4b402ec16              # double 0.54514537008742781
	.quad	0x3fec2f49b23d0579              # double 0.88077244579487435
	.quad	0x3fdb5067f524c968              # double 0.42678259792150763
	.quad	0x3fccc4fc78705a34              # double 0.22476154213718902
	.quad	0x3fe25fa3bea5dcdd              # double 0.57417475925367578
	.quad	0x3fc2d5ada0d8c8f4              # double 0.14714594224785282
	.quad	0x3fe7af317c2716e1              # double 0.74013590096066306
	.quad	0x3fedf41174f2e959              # double 0.93604348031594065
	.quad	0x3fe426775726d3aa              # double 0.6296955778294564
	.quad	0x3f84a46135f45980              # double 0.0100791544523815
	.quad	0x3fe120a087049383              # double 0.53523279543570401
	.quad	0x3fcc4c2f243b0124              # double 0.22107495564524371
	.quad	0x3fecada6ba092909              # double 0.89619766554940938
	.quad	0x3fd91d1f8a70e1e6              # double 0.39240253944038128
	.quad	0x3fd5dd9030a498fc              # double 0.34164814710892677
	.quad	0x3fe4f339c74e5755              # double 0.65469063689190909
	.quad	0x3fed8f2f712b277b              # double 0.92372867682682569
	.quad	0x3fe3fef25997cad7              # double 0.62487142084713809
	.quad	0x3f98efc4e7e00140              # double 0.024352146770980854
	.quad	0x3fc22b1d0415679c              # double 0.14194071483035209
	.quad	0x3fb644d1c02e1ac8              # double 0.086987599772423541
	.quad	0x3fcabbfca288b688              # double 0.20886190353614986
	.quad	0x3fceb1319885419c              # double 0.23978252360622043
	.quad	0x3feecf6c2b7ab08f              # double 0.96282013408701228
	.quad	0x3feeeeafd86344fb              # double 0.96663658393131812
	.quad	0x3fe566679abaca26              # double 0.66875057430872142
	.quad	0x3fe691a76eda2582              # double 0.70528003359611113
	.quad	0x3fe92a16bcac9cd7              # double 0.78638779497569089
	.quad	0x3fe7577e04e65d96              # double 0.72943020779614431
	.quad	0x3f959fcd827b86e0              # double 0.021117411698361788
	.quad	0x3fe16fa046761da4              # double 0.54487622987737838
	.quad	0x3fedd083ebd4a2c3              # double 0.93170352993646366
	.quad	0x3fec02d83eec5b76              # double 0.8753472546548966
	.quad	0x3fe7a992b578ee1f              # double 0.73944983905625239
	.quad	0x3fdfe3641ebaf0da              # double 0.49825385094642416
	.quad	0x3fe4782e4cc5ac40              # double 0.63967051500856797
	.quad	0x3f83d55e6d2f8880              # double 0.0096843125410865926
	.quad	0x3fd2378acf0aa81a              # double 0.28464002818020762
	.quad	0x3fcbb1cf0cb17af4              # double 0.21636379356183222
	.quad	0x3fc0f7e88d66f548              # double 0.13256556419757204
	.quad	0x3fd5bef93603a544              # double 0.33978109621837782
	.quad	0x3fcf14e5bbc514a0              # double 0.24282523792695532
	.quad	0x3fd8062bcd8c3b02              # double 0.37537665436768475
	.quad	0x3feed0c3dbc91bcf              # double 0.96298401762839513
	.quad	0x3fe2a71d00073c87              # double 0.58289957051773988
	.quad	0x3f9d64284a6fb680              # double 0.028702382605777732
	.quad	0x3fe46f8f20e1013a              # double 0.63861805364289315
	.quad	0x3fd56acf30bd6426              # double 0.33464412460085879
	.quad	0x3fa1379f56048400              # double 0.033627490282249539
	.quad	0x3fd615b046266402              # double 0.34507376528341649
	.quad	0x3fe25c9bfc8ef259              # double 0.57380484893617301
	.quad	0x3fe5971190667de5              # double 0.67469099238581676
	.quad	0x3fedf23af9603822              # double 0.93581913667890526
	.quad	0x3feef6eaf154b37e              # double 0.96764132628378241
	.quad	0x3fed0e19b6c08c21              # double 0.9079712457063388
	.quad	0x3fec4a18110c33ca              # double 0.88404467897054784
	.quad	0x3fe6427629eaa047              # double 0.69561298548524853
	.quad	0x3fe0cc96febd3ca1              # double 0.52497434381247754
	.quad	0x3fc6ed5b44d7bcbc              # double 0.17911854611836542
	.quad	0x3fd82a421d032e22              # double 0.37757923920864489
	.quad	0x3fc7db8b4ec4ffac              # double 0.18638745638054155
	.quad	0x3fe030f5432f4943              # double 0.505976325245037
	.quad	0x3fed127f56ca57db              # double 0.90850798560381507
	.quad	0x3fca4f6e0cb23798              # double 0.20554900760583616
	.quad	0x3fc6fc935b5ce760              # double 0.17958299599723215
	.quad	0x3fd37b45cf0f985c              # double 0.30439896794121579
	.quad	0x3f8cb87a64f152c0              # double 0.014023739057088647
	.quad	0x3fe2fe9e0ea346db              # double 0.59358122691102311
	.quad	0x3fa97384db870ca0              # double 0.049709464834017725
	.quad	0x3fe2e8c6ef5d6d71              # double 0.59091517210928945
	.quad	0x3fdd6cf461606f70              # double 0.45977506169742011
	.quad	0x3fe618fd5c07c6dd              # double 0.69055049872096286
	.quad	0x3fe6e46cb3c6a67a              # double 0.71538386452193881
	.quad	0x3fefec09b11beb29              # double 0.99756321517574975
	.quad	0x3fdfa5c7610b554a              # double 0.49449333645801075
	.quad	0x3fc64f10aca0fc70              # double 0.17428787640708121
	.quad	0x3fe776ae4fc946b7              # double 0.73323741515397145
	.quad	0x3febdc1a9cec9892              # double 0.87061815881021887
	.quad	0x3fdc75de84d3483a              # double 0.44469416590903033
	.quad	0x3fe1c9f458199dd0              # double 0.55590264517825894
	.quad	0x3fd84398cf82d164              # double 0.37912578835245925
	.quad	0x3fc3cec7295c5fc0              # double 0.15474786300251075
	.quad	0x3fe360fa48c3f32f              # double 0.60558809482572495
	.quad	0x3fa5708cf9173430              # double 0.041874318510601305
	.quad	0x3fc9580fc23f94a4              # double 0.19799992546828549
	.quad	0x3fed0b4d3371ef29              # double 0.9076295857225648
	.quad	0x3fe1af3a5116bfd2              # double 0.5526401122824558
	.quad	0x3fe2311b59e9051f              # double 0.56849448738663344
	.quad	0x3fe2010102bf9581              # double 0.56262255226890556
	.quad	0x3fefc6ba7ad158a9              # double 0.993008842352329
	.quad	0x3fe5998885ff5406              # double 0.67499185725557775
	.quad	0x3fefcf2cc006c5bc              # double 0.99403989319960528
	.quad	0x3fdcf2d4285320c2              # double 0.45232109010659027
	.quad	0x3fd3f6778d5a8a6e              # double 0.3119181518942814
	.quad	0x3fe30b4672fae175              # double 0.59512636620551851
	.quad	0x3fdc58cfa9251554              # double 0.44292060392429744
	.quad	0x3fed343d658935e8              # double 0.91262693244214876
	.quad	0x3fe1b8d6a041edce              # double 0.55381327915477541
	.quad	0x3fddad3fc4037d56              # double 0.46369928495365309
	.quad	0x3fe9d19ffe260562              # double 0.80683898580916158
	.quad	0x3fdaa0fa56a1b6b0              # double 0.41607531032682754
	.quad	0x3fd9e7230a689c32              # double 0.40473247543781377
	.quad	0x3fe6f1a0ddce5816              # double 0.7169956524037413
	.quad	0x3fdb955fcb86fbb8              # double 0.43099207759581359
	.quad	0x3fe1d7af48485b7f              # double 0.55757869832710572
	.quad	0x3fdae9e89522266c              # double 0.42052664340790247
	.quad	0x3fe6ffaa7dff819b              # double 0.71870922669409099
	.quad	0x3fde218d8047ba20              # double 0.47079789664613436
	.quad	0x3fdba096a19bcd0e              # double 0.43167653829660046
	.quad	0x3fcca522edd8f788              # double 0.22378956426285534
	.quad	0x3fd7688cbbfbbdc8              # double 0.36575620992422531
	.quad	0x3fe74e0bf702c879              # double 0.72827718967734179
	.quad	0x3feed6a9fcdce3f8              # double 0.96370410334850387
	.quad	0x3fe0f4110cdc7ea9              # double 0.52979328643774182
	.quad	0x3fe5b03d5a80aaa7              # double 0.67776363064088663
	.quad	0x3fd8e5363bf051de              # double 0.3889899812068317
	.quad	0x3fd18077e5cefe00              # double 0.27346608583681586
	.quad	0x3fe3053d976e86cc              # double 0.59438972069275442
	.quad	0x3fdfa54347be0b76              # double 0.49446184164133145
	.quad	0x3fe5902cf07a6b96              # double 0.67384955376052136
	.quad	0x3fd18ddbdc98fa26              # double 0.27428337614756726
	.quad	0x3fd6aabaa10fd9d2              # double 0.3541704724188125
	.quad	0x3fbcb490d2913270              # double 0.11213021412658875
	.quad	0x3fedf92716c31967              # double 0.93666414685939692
	.quad	0x3faa490606671c20              # double 0.051338375360096444
	.quad	0x3fe4728d3f643e27              # double 0.63898336774031328
	.quad	0x3fe15aff218f2727              # double 0.54235798410920644
	.quad	0x3fed0bee47234b1d              # double 0.9077063931857513
	.quad	0x3fc661b6aa8729c4              # double 0.17485698057710242
	.quad	0x3fbf33facdb6c0e8              # double 0.12188689729987667
	.quad	0x3fea95a696e24ab4              # double 0.83076791257402371
	.quad	0x3fca2ec26145e654              # double 0.20455198049221457
	.quad	0x3fc443038e3d0d68              # double 0.15829510159720006
	.quad	0x3feca2512bd9a225              # double 0.8948140961120471
	.quad	0x3fc8b2ea84124844              # double 0.19296008538055009
	.quad	0x3fec225b94d957bb              # double 0.87919406005925482
	.quad	0x3fe2ce69c24557f4              # double 0.58769691413431113
	.quad	0x3fe8aded2d6e39a2              # double 0.77123125909001922
	.quad	0x3fefc1857220674f              # double 0.99237320223185487
	.quad	0x3fe07bed1446b112              # double 0.5151276966112468
	.quad	0x3fca908fc9abcf40              # double 0.2075366720888443
	.quad	0x3fe7555c3248a15e              # double 0.72916993924176743
	.quad	0x3fe7d9e49986193b              # double 0.74534826264497356
	.quad	0x3fdcf2bb80511004              # double 0.45231521159098542
	.quad	0x3fe46485945008df              # double 0.63727072684585184
	.quad	0x3fdcfe03ba2d6934              # double 0.45300381833444026
	.quad	0x3fe7a136374fbaae              # double 0.73842917254463258
	.quad	0x3fb1107aec037538              # double 0.066657717342839429
	.quad	0x3fe64042ad457127              # double 0.69534429399530928
	.quad	0x3fed8866de97f3de              # double 0.92290061450296057
	.quad	0x3fe2b3a0b42e0e20              # double 0.58442721549403487
	.quad	0x3fefa4a2e4189aa3              # double 0.98884720373174095
	.quad	0x3feaaa33dc895f53              # double 0.83327668260151666
	.quad	0x3fdbf7cfc633b262              # double 0.43700022082956569
	.quad	0x3fccb5a673bf1a9c              # double 0.22429352428135452
	.quad	0x3febb52ccb93a700              # double 0.86586608658873843
	.quad	0x3febe6f1eb265529              # double 0.87194152763064381
	.quad	0x3fde116c603ee4bc              # double 0.46981343649856533
	.quad	0x3fbe2f53885a19c0              # double 0.1179096420183674
	.quad	0x3fdf08e34ebd833c              # double 0.48491747560005982
	.quad	0x3fe320cb80689c77              # double 0.59775328712284093
	.quad	0x3fd8b7d3e6470dbe              # double 0.38621995437662437
	.quad	0x3fd135679e58716e              # double 0.26888456786561832
	.quad	0x3fc1dd936bac2aec              # double 0.13957445867011786
	.quad	0x3fd0b32a1362c92e              # double 0.26093532460358204
	.quad	0x3fe7681757c0636d              # double 0.73145644320457637
	.quad	0x3fee0e077f5c1e94              # double 0.93921255946129855
	.quad	0x3fcc7f6148a270b8              # double 0.22263732954605131
	.quad	0x3fd1ebf499a30c9a              # double 0.28002657893757432
	.quad	0x3fdf052c5f89d884              # double 0.48469075517585503
	.quad	0x3fd3992dcf40908a              # double 0.30622430076096718
	.quad	0x3fed44d8806e085e              # double 0.91465401729534412
	.quad	0x3feb853f00a151ab              # double 0.86001539347721712
	.quad	0x3fd24e087467d06c              # double 0.28601275794722514
	.quad	0x3fd0b56cce9c7f0a              # double 0.26107330490957337
	.quad	0x3fea6d3dc73bc879              # double 0.82583512223051436
	.quad	0x3fb810d70f3c41c8              # double 0.094006959170889748
	.quad	0x3fabd0b14d3dfcb0              # double 0.054326573065730854
	.quad	0x3fe97b051b0096e6              # double 0.79626708291899884
	.quad	0x3fc9a3c95a503164              # double 0.20031086835696066
	.quad	0x3fc7db7164f585c8              # double 0.18638436727182595
	.quad	0x3f9180e102f5cc40              # double 0.017093196683571898
	.quad	0x3fe57d4dcc4987c7              # double 0.67154588603829601
	.quad	0x3fd370c0f8d28b7c              # double 0.30375694560114375
	.quad	0x3fdb50995530acbc              # double 0.42679436988209907
	.quad	0x3fd765f62878ca64              # double 0.36559823944404557
	.quad	0x3fed9d58294eda5b              # double 0.92545707767460372
	.quad	0x3fd6c81d493face6              # double 0.35596401360699159
	.quad	0x3fefed90b40628dc              # double 0.99774966393422515
	.quad	0x3fe7389588bb527d              # double 0.72565724091926109
	.quad	0x3fd5bb59ee60e4c0              # double 0.3395600154795595
	.quad	0x3fec46491aaa03d4              # double 0.8835797806533443
	.quad	0x3fdf605ddd4da9c6              # double 0.49025675403268243
	.quad	0x3fd508e4ed92ada4              # double 0.32866786194309783
	.quad	0x3fe6f9ac218221d8              # double 0.71797758621783725
	.quad	0x3fed5476cbf771bc              # double 0.91656055295202731
	.quad	0x3fea9e6596fc89b4              # double 0.83183555116220597
	.quad	0x3fe1b4e5bcc6f89d              # double 0.55333220358422219
	.quad	0x3fd9e68c044bb604              # double 0.40469646853929953
	.quad	0x3fe056234aed9bc0              # double 0.51051487574010679
	.quad	0x3fdc7df1598808ac              # double 0.44518693679141097
	.quad	0x3fd904a6c3c5f500              # double 0.39090890043719639
	.quad	0x3fe5ff63f269379d              # double 0.6874255880918444
	.quad	0x3fea978d42b4e44b              # double 0.83099997547754734
	.quad	0x3fca54930f0eb508              # double 0.20570600733973543
	.quad	0x3fa2d6b814251cb0              # double 0.036794426402189884
	.quad	0x3fd80176b6f3584a              # double 0.37508933893457608
	.quad	0x3fe3e5778947799e              # double 0.62176110088676118
	.quad	0x3fdd4a2c1e1b42e2              # double 0.4576521200188336
	.quad	0x3fddcbc01b0ac824              # double 0.46556093827087097
	.quad	0x3fe3b4bf5c09a853              # double 0.61581390358083821
	.quad	0x3fe9d048740b9b8f              # double 0.80667517342668471
	.quad	0x3fc245c553db1740              # double 0.14275423616907723
	.quad	0x3fad8a16254e9930              # double 0.057694141439514346
	.quad	0x3fe12c7339dfef8e              # double 0.53667603782331397
	.quad	0x3fee350aa79fc77e              # double 0.94397480715836912
	.quad	0x3fce6f48a3fb7834              # double 0.23777111060093292
	.quad	0x3feb5d3094753131              # double 0.85512570377026098
	.quad	0x3fe22a54bacedcb2              # double 0.56766735540340663
	.quad	0x3fe4ba3f2aa9b172              # double 0.6477351983317432
	.quad	0x3fde843103bc74ac              # double 0.47681832661494172
	.quad	0x3fe374eea8c1af23              # double 0.60802395782727492
	.quad	0x3fd52a80a13d4e40              # double 0.33071914430658822
	.quad	0x3fa7307fd0913070              # double 0.045291895112854585
	.quad	0x3fbc638635707178              # double 0.11089361958187804
	.quad	0x3fb4af3ebc903c58              # double 0.080799027477256202
	.quad	0x3fee214cec31d9a2              # double 0.94156499988348608
	.quad	0x3fdb095a517d20c2              # double 0.42244584997071055
	.quad	0x3fde1631f7583e3a              # double 0.47010468630557833
	.quad	0x3fdf80435a20a4ba              # double 0.49220355798258775
	.quad	0x3fe0bb00fc97c28e              # double 0.52282761892827678
	.quad	0x3fed2efcbd8cce0b              # double 0.91198575040329055
	.quad	0x3fbdd120eb61e278              # double 0.11647229906692214
	.quad	0x3fe8366762115d43              # double 0.75664109376786148
	.quad	0x3fd9d3baaea6e55a              # double 0.40354792648175464
	.quad	0x3fe9b3ea5cc10437              # double 0.80321233860025287
	.quad	0x3fec2ddea30da300              # double 0.88059932562200061
	.quad	0x3fe6f7b72627b278              # double 0.71773869945680158
	.quad	0x3fbf3b375c2b7d30              # double 0.12199731827012239
	.quad	0x3fe2cb1bcf72b40a              # double 0.58729353444289356
	.quad	0x3fe253f55361b382              # double 0.57274881635167696
	.quad	0x3fc5e07cff976de8              # double 0.17091333847098089
	.quad	0x3fe2f40eda17220d              # double 0.59229223819517218
	.quad	0x3fe1868d46aa2247              # double 0.5476747875373541
	.quad	0x3fed023c7972a9a9              # double 0.90652297706883644
	.quad	0x3fe00e3a7927f951              # double 0.50173686660108718
	.quad	0x3fec8bb78f7a6970              # double 0.89205530188637105
	.quad	0x3fed4dc98a59bb49              # double 0.91574551602921261
	.quad	0x3fd6c1d867e2cd4e              # double 0.35558138032066189
	.quad	0x3fcc79e6d4a7a8e8              # double 0.22247014411488597
	.quad	0x3fefb2ad3db683d6              # double 0.99056112340269453
	.quad	0x3fc2ed38d94bde28              # double 0.14786444292234191
	.quad	0x3fe3dab2e1b174a0              # double 0.62044662552547791
	.quad	0x3fe7947356f87fe7              # double 0.73687140451874888
	.quad	0x3fd3a88e5b02c34a              # double 0.30716284644863789
	.quad	0x3fc883d53dc0d298              # double 0.19152322306913017
	.quad	0x3fe9474074d8a38c              # double 0.78994772740871743
	.quad	0x3fedd9cbf0d35e40              # double 0.93283650432835685
	.quad	0x3fc95f096d935aa4              # double 0.19821279383059676
	.quad	0x3fdda8758d8fe3b0              # double 0.46340693306370451
	.quad	0x3fddca094e74395e              # double 0.46545632039569351
	.quad	0x3fe34175f6dc2065              # double 0.60174082007234786
	.quad	0x3fc63145bd9bb25c              # double 0.17337867506229798
	.quad	0x3fd9ab354dc53808              # double 0.40107472033275871
	.quad	0x3fd7c2020f5c202a              # double 0.37121631145464795
	.quad	0x3fef6876f9e474a0              # double 0.98150204474554314
	.quad	0x3fc1adef2d7479d0              # double 0.13812055320245387
	.quad	0x3fd837d8afc48b6e              # double 0.37840859570331176
	.quad	0x3fe0a5141f735314              # double 0.52015119688676004
	.quad	0x3fefa67bfbd85c6a              # double 0.98907279194362485
	.quad	0x3fbd9956658e7cc8              # double 0.11562099437149975
	.quad	0x3fa1ce70598db520              # double 0.034778128558949684
	.quad	0x3fe2dbf0b93959f4              # double 0.58934818436210756
	.quad	0x3fb6e68fb7924288              # double 0.089455587689608262
	.quad	0x3fe0f6727bc403bf              # double 0.53008388684258267
	.quad	0x3fef07d65d05a1fb              # double 0.96970670860633789
	.quad	0x3fef032a37a7e8fd              # double 0.96913634176533458
	.quad	0x3fd0bd1df8b10d3c              # double 0.26154279028215277
	.quad	0x3fe8cd2e522437b0              # double 0.77504650157219679
	.quad	0x3fd72a50772343ba              # double 0.36195766100450621
	.quad	0x3fe54457febb111e              # double 0.66459274055572215
	.quad	0x3f64680189a5b800              # double 0.0024910001786144775
	.quad	0x3fc4fb1f6f0d145c              # double 0.16391365930954549
	.quad	0x3fe92270ad520f31              # double 0.78545411922138986
	.quad	0x3fd91645fb250bb4              # double 0.39198445821619576
	.quad	0x3fdd316725ead52c              # double 0.45614031508314912
	.quad	0x3fe96c5508c139ac              # double 0.79447414121550741
	.quad	0x3fa8a2f60e2a1c50              # double 0.04811829493433406
	.quad	0x3fd3cecf00952a24              # double 0.30949759537603172
	.quad	0x3fa9295c4b891280              # double 0.049143680782923305
	.quad	0x3fe1e39da32cf4d8              # double 0.55903512830959823
	.quad	0x3fec0b9eacd5d3f5              # double 0.87641843563926491
	.quad	0x3fc1b1467e165ef0              # double 0.13822251469240809
	.quad	0x3fe09ceb22d8bbc6              # double 0.51915509038905649
	.quad	0x3fd6648c60d41e48              # double 0.34988698440472321
	.quad	0x3fe7d74abfdf4757              # double 0.74503076052699668
	.quad	0x3fe0f7cd605b3921              # double 0.53024929828260181
	.quad	0x3fcac6ca8e981298              # double 0.20919162714576056
	.quad	0x3fd55263d5a80d48              # double 0.33315368523490863
	.quad	0x3fb3937166fd3440              # double 0.076468551296060561
	.quad	0x3fe39b508fd5e80f              # double 0.61270931332478706
	.quad	0x3fd886df262fc0a6              # double 0.38323191384462019
	.quad	0x3f8e08943b71f040              # double 0.014664800705070147
	.quad	0x3fee4d957c2565ab              # double 0.94697069403917078
	.quad	0x3fe337a86c15f1fa              # double 0.60054417715542674
	.quad	0x3fd6ee5fecfcc4da              # double 0.35829923766421035
	.quad	0x3fe88a84ee6716bb              # double 0.766909089689498
	.quad	0x3fea3f813c8f87a6              # double 0.82025205448393446
	.quad	0x3fec33b92595f01a              # double 0.88131387082057988
	.quad	0x3fe7c27f0052136e              # double 0.74249219954127255
	.quad	0x3fe291eb399c8290              # double 0.58031235935421144
	.quad	0x3fe31cb1e63bc477              # double 0.59725279777025164
	.quad	0x3fe0603e10f18e2a              # double 0.51174834546367731
	.quad	0x3f8fa90c7a84d440              # double 0.015459153641680712
	.quad	0x3fec8935df3d22fb              # double 0.89174932099658066
	.quad	0x3fe5678abaa9308f              # double 0.66888939339834674
	.quad	0x3f7b7fe9dcfc6100              # double 0.0067137847215905655
	.quad	0x3fc542aefdcc312c              # double 0.16609752075636075
	.quad	0x3fea5c2eb711675f              # double 0.82375274424996892
	.quad	0x3fe62163dda94433              # double 0.69157594006731526
	.quad	0x3fe1073610dee006              # double 0.53213027281799508
	.quad	0x3fc747cd88a60f40              # double 0.18187874958322858
	.quad	0x3fc0558694ab5cb8              # double 0.12761003741500132
	.quad	0x3fedecfa515afee8              # double 0.93517795457588893
	.quad	0x3fed651b4847d0ac              # double 0.91859211079874603
	.quad	0x3fd02ca70b658e9a              # double 0.25272537339172063
	.quad	0x3fd6f34d762ef37e              # double 0.35860001126621188
	.quad	0x3fc4b505aec7f00c              # double 0.16177435907582127
	.quad	0x3fec24d8211e8f2b              # double 0.87949758976580961
	.quad	0x3fc222a26725f76c              # double 0.14168195759333047
	.quad	0x3fe5c178682750f6              # double 0.67986698477264329
	.quad	0x3fe7fbfd0f5563ba              # double 0.74951031679949343
	.quad	0x3fe6e44c78c22c1f              # double 0.71536849580423112
	.quad	0x3fa8ae71394db230              # double 0.048205888981872724
	.quad	0x3fed08a1cc16a873              # double 0.90730371342693983
	.quad	0x3fb575d316724150              # double 0.0838291101265487
	.quad	0x3fd4086a5d103b54              # double 0.31301364029143497
	.quad	0x3fd77e66e04b40ee              # double 0.36708995727259619
	.quad	0x3fd1b31dda80d00a              # double 0.27655741060448291
	.quad	0x3fe350a1f1a2763b              # double 0.60359284586201711
	.quad	0x3fdc16aff4efc386              # double 0.43888472480380647
	.quad	0x3feb9ec8771c62d3              # double 0.86313269866794895
	.quad	0x3fe781492e6988fd              # double 0.73453196587459468
	.quad	0x3fcaaaa82eedeecc              # double 0.20833303729511099
	.quad	0x3fe1d9543d3971f0              # double 0.55777942617311105
	.quad	0x3fe7a8b39aaf297c              # double 0.73934345447314298
	.quad	0x3fd0717dfc3b4434              # double 0.25692700988753647
	.quad	0x3fdfa8c27f70b1c6              # double 0.49467527814229262
	.quad	0x3fb9cf05b57ebc58              # double 0.10081515961677334
	.quad	0x3fd058cd0288730a              # double 0.25541997191776089
	.quad	0x3fc6fbd4af63fe84              # double 0.17956026615137344
	.quad	0x3fdce42278bd35a8              # double 0.4514242343037389
	.quad	0x3fe7fc28470c40d6              # double 0.74953092457328796
	.quad	0x3fe20046cc23ce7c              # double 0.56253375884121182
	.quad	0x3fc5d1579cdc47c4              # double 0.17045111808016433
	.quad	0x3feacc02fa76465e              # double 0.83740376394616667
	.quad	0x3fdb77d046c3cad8              # double 0.4291878405630718
	.quad	0x3febb65bb1fd25a9              # double 0.86601052058647554
	.quad	0x3fe275eb9c51683a              # double 0.57689457445963588
	.quad	0x3fd633eb4626f1b0              # double 0.34691888666909687
	.quad	0x3feea26bbb969513              # double 0.95732676161120123
	.quad	0x3f775d2eec048580              # double 0.005704100884288521
	.quad	0x3fe79b3b41b990c8              # double 0.73769915425193577
	.quad	0x3fcf1fa631672884              # double 0.2431533566689873
	.quad	0x3fd4c4745e4c5636              # double 0.32449063500220932
	.quad	0x3fc9124dbd4e0934              # double 0.19587108367347528
	.quad	0x3fdce12959e9f996              # double 0.4512427690568982
	.quad	0x3fee4ccfccb8f26a              # double 0.94687643036702451
	.quad	0x3fe1d2ba80420c95              # double 0.55697369623557569
	.quad	0x3fdad4fb003ef63a              # double 0.41924929641740827
	.quad	0x3fd04184f0aeffe6              # double 0.25399898056275416
	.quad	0x3fd9a59ac3a1a020              # double 0.40073269943832379
	.quad	0x3fc52c7f7c616f3c              # double 0.16542047093650492
	.quad	0x3fd896a98ffb98b8              # double 0.38419570027179928
	.quad	0x3fdc9a4b6a51b25c              # double 0.44691739447333645
	.quad	0x3fb69419f3bf8c20              # double 0.088197347649427105
	.quad	0x3fb2449aa45830e8              # double 0.071359315035980253
	.quad	0x3fe2ada35657cc95              # double 0.58369604934559283
	.quad	0x3fec78df58f5f9e4              # double 0.88975493788876436
	.quad	0x3fe4e6f8269ff2f9              # double 0.653194499434533
	.quad	0x3fa4bfa53a305930              # double 0.040524638512737687
	.quad	0x3fb60d5bc15f9508              # double 0.086141333303732748
	.quad	0x3fe1cdb2c0146f0c              # double 0.5563596488532041
	.quad	0x3fe1d2575a8d2470              # double 0.55692641912277274
	.quad	0x3fe7ed1fc2c05c7f              # double 0.74769580876717601
	.quad	0x3fd0d7c51570a016              # double 0.26316954702133566
	.quad	0x3fd6a42c5001d532              # double 0.3537703305549541
	.quad	0x3fe9b9c8647408ea              # double 0.80392856235291998
	.quad	0x3fe9f37535d89a40              # double 0.81096897618119357
	.quad	0x3fc173dba0373e50              # double 0.13634820292507976
	.quad	0x3fe816fb881aa49a              # double 0.75280548651530244
	.quad	0x3fed77c9c519a04d              # double 0.92087257858384819
	.quad	0x3fe1eb678ae99bcb              # double 0.55998589640955154
	.quad	0x3fdf1cc7195bab08              # double 0.48613145328879215
	.quad	0x3fe1976bbbc422ef              # double 0.54973398850515121
	.quad	0x3feca38c5baca2ef              # double 0.89496438889645258
	.quad	0x3fd273c49188e014              # double 0.28831590854997668
	.quad	0x3fd821a5f3615b4c              # double 0.37705372588736874
	.quad	0x3fc2f1643b14ffe0              # double 0.14799168476929392
	.quad	0x3fd528a6f641ecfa              # double 0.33060621307932048
	.quad	0x3fe5008a11729d77              # double 0.65631583602673416
	.quad	0x3fd714c4c6742cda              # double 0.3606426179910166
	.quad	0x3fe6809f730e69c5              # double 0.70320103141721602
	.quad	0x3fe4468bcbfcb90a              # double 0.63361158219575597
	.quad	0x3fd158410403055a              # double 0.27101159469392189
	.quad	0x3fa9b841bcdf08c0              # double 0.050233892732209906
	.quad	0x3fef0198acf68b6a              # double 0.9689448717293605
	.quad	0x3fd85e4a7aa9b474              # double 0.38075506190109043
	.quad	0x3fe6382fc0828002              # double 0.69435870742381689
	.quad	0x3fe820816024cb14              # double 0.75396794107504883
	.quad	0x3fe416a988c89cd8              # double 0.62776638713412591
	.quad	0x3fe52d77980e70fd              # double 0.66180019091146358
	.quad	0x3fecddf0387d45b3              # double 0.90209208520007278
	.quad	0x3fd292b1fb78124a              # double 0.29020356709978457
	.quad	0x3fe33d3396d7789a              # double 0.60122088872209933
	.quad	0x3feaa89d9e49dc4a              # double 0.83308297076917737
	.quad	0x3fe642e74c618182              # double 0.69566693227902499
	.quad	0x3fe0afe3f0296366              # double 0.52147099405838726
	.quad	0x3fd426c69f7b6356              # double 0.31486669134533452
	.quad	0x3fecf5bf50fc2a10              # double 0.90499845330606554
	.quad	0x3fcfab0e74425bd8              # double 0.24740772892684393
	.quad	0x3fbf42cddedc93c8              # double 0.12211310091932071
	.quad	0x3fbd52fee6dd2f48              # double 0.1145476640351123
	.quad	0x3fd2b047d8087928              # double 0.29200931641561789
	.quad	0x3feb3c15d77fb16e              # double 0.85108463372811882
	.quad	0x3fda2dafdfbcca2c              # double 0.40903851365433996
	.quad	0x3fe5a688df842df4              # double 0.67657893806011637
	.quad	0x3fe041bc8f4d8d91              # double 0.50802448262077082
	.quad	0x3fdbf5a211233df6              # double 0.436867253051758
	.quad	0x3fdfa76150baf458              # double 0.49459107288186521
	.quad	0x3fe6bafcc0eb9b5a              # double 0.71032560043100124
	.quad	0x3fa466a6fc467ee0              # double 0.039845674796422648
	.quad	0x3fdae36f6027c30e              # double 0.4201315344826505
	.quad	0x3fecef92cf0aa100              # double 0.90424480855747902
	.quad	0x3feb4fc33a6ac6dd              # double 0.85348664674367181
	.quad	0x3fba646f652aab78              # double 0.10309501857652303
	.quad	0x3f8837fb717b6100              # double 0.011825527573293915
	.quad	0x3fcd147769b91634              # double 0.22718708669906251
	.quad	0x3fe8469262d51c37              # double 0.75861472418990317
	.quad	0x3fd5ac89e1875286              # double 0.33865592026021607
	.quad	0x3fe7733cf1746224              # double 0.73281714591127356
	.quad	0x3fd74fc0f3daa910              # double 0.36424278081780503
	.quad	0x3fd0624cdc9927c0              # double 0.25599977057265377
	.quad	0x3fdf6e5f3b208b74              # double 0.49111157201894362
	.quad	0x3fe098b10ae4e511              # double 0.51863910796888224
	.quad	0x3fe5c6935203ab48              # double 0.68049016970085408
	.quad	0x3fb4784d67a94b58              # double 0.079960668380676281
	.quad	0x3feb06a9eb772bca              # double 0.84456344594342991
	.quad	0x3fb8b45301b27010              # double 0.096501529611885183
	.quad	0x3fdd4773309f2a18              # double 0.45748595951286708
	.quad	0x3fcd680ac17843d0              # double 0.22973761030928452
	.quad	0x3fdc4332fc23cede              # double 0.4416015112212629
	.quad	0x3febaa8962c8cc2f              # double 0.86456746381589322
	.quad	0x3fc30b08f6971908              # double 0.14877426186121334
	.quad	0x3fe280b5b029431b              # double 0.57821163565140254
	.quad	0x3fef21684d8f6594              # double 0.97282805584397857
	.quad	0x3fe78818de73e54f              # double 0.73536342094227247
	.quad	0x3fd1b8bd7d9cfd42              # double 0.27690064684789573
	.quad	0x3febc128f6f3ba2b              # double 0.86732910378288375
	.quad	0x3fc723fb716b0724              # double 0.18078558958046032
	.quad	0x3fd67d35e4cf38d8              # double 0.35139224381135881
	.quad	0x3febef3655ea9da5              # double 0.87295071392593526
	.quad	0x3fddfacb400b0bc2              # double 0.46843224767888725
	.quad	0x3fdcbad07e84f7d0              # double 0.44890224795733236
	.quad	0x3fc75112387cb1a8              # double 0.18216159589918601
	.quad	0x3fcc7614f76b4f98              # double 0.22235357361807639
	.quad	0x3fd796d4079041d6              # double 0.36858082522033209
	.quad	0x3fea7e03198196d4              # double 0.82788233739548866
	.quad	0x3fab864b0ff29280              # double 0.0537589508979055
	.quad	0x3fd193b6c85e981c              # double 0.27464074675879302
	.quad	0x3fb5c8feecc06648              # double 0.08509820251529121
	.quad	0x3fa7109ec3a89cb0              # double 0.0450486768571009
	.quad	0x3fe1ca851f31913d              # double 0.55597168056969049
	.quad	0x3fc99e20810dd070              # double 0.20013815213644959
	.quad	0x3fe4d6265c79ddbf              # double 0.65114133893705872
	.quad	0x3fe9e39c286fd6dd              # double 0.80903442285372373
	.quad	0x3fecfd0cebfeb83d              # double 0.90588995068333811
	.quad	0x3fc1e6afcc75d8b0              # double 0.13985249980368542
	.quad	0x3fe8087d83fe031e              # double 0.75103641299947177
	.quad	0x3fe89d72712437fb              # double 0.76921960924096255
	.quad	0x3fcfb4747f795e1c              # double 0.24769455169983778
	.quad	0x3fef9a1f3c8ada11              # double 0.98756372284589322
	.quad	0x3fd0875449620a9c              # double 0.25825984159761517
	.quad	0x3fbd5d69fbee96e0              # double 0.11470663452800123
	.quad	0x3fe5c2c57e1297fc              # double 0.68002581237374171
	.quad	0x3fe0cd1ad37ba20a              # double 0.52503720574628798
	.quad	0x3fd2d25e8cbfc352              # double 0.29408992524172561
	.quad	0x3f8b74d00b1d1fc0              # double 0.013406396235623563
	.quad	0x3fbb90821adab428              # double 0.10767377048132742
	.quad	0x3fe1b366d08ebe5b              # double 0.55314961179642397
	.quad	0x3fe188dfa4ae885a              # double 0.54795820392997574
	.quad	0x3fe59d1a99c0e0df              # double 0.6754277232166962
	.quad	0x3fe659248b4c1642              # double 0.69838168341147644
	.quad	0x3fc986f9e0f4fd40              # double 0.19943164333560937
	.quad	0x3fde158fca76f8a4              # double 0.47006602069803649
	.quad	0x3fe5b14e343745f3              # double 0.67789373587055335
	.quad	0x3fbc2b3a3e833860              # double 0.11003459955392847
	.quad	0x3fd9d001f591234a              # double 0.4033207796206183
	.quad	0x3fe41cd55b22dd7e              # double 0.62851970481908359
	.quad	0x3fe6c28bd53a3c01              # double 0.71124831815711798
	.quad	0x3fe39e877fff5b59              # double 0.61310172080525682
	.quad	0x3fef3ff09d59af8a              # double 0.97655516369330653
	.quad	0x3fe78a73db098e89              # double 0.73565094738701575
	.quad	0x3fe15f46248cd1c5              # double 0.54288012636839567
	.quad	0x3f997eae8a955fc0              # double 0.024897315224137406
	.quad	0x3fa0539afc905a60              # double 0.031887858706046712
	.quad	0x3fdbfb89148fe6ee              # double 0.43722750671405108
	.quad	0x3fd674d959dd3240              # double 0.35088189864908159
	.quad	0x3fd98928886fd054              # double 0.39899648021606038
	.quad	0x3fe3449b7cd1da55              # double 0.6021249235044005
	.quad	0x3fbda4b9f92cdd18              # double 0.11579477628116697
	.quad	0x3fb28df41f14eaf0              # double 0.072478540027912208
	.quad	0x3fb4fc22bb592138              # double 0.081972285022065772
	.quad	0x3fe843c2c2a483cc              # double 0.75827157989635329
	.quad	0x3fe22060c8082919              # double 0.56645239895559307
	.quad	0x3fe37db0cf08286d              # double 0.60909309802924627
	.quad	0x3fc00a7f01194388              # double 0.12532031587263881
	.quad	0x3feaa32dd30fd086              # double 0.83241931174281159
	.quad	0x3fe28f9b0e245167              # double 0.58002999078830164
	.quad	0x3fd42d6d888121ac              # double 0.31527269678601999
	.quad	0x3fef3565174f685e              # double 0.97526793053408389
	.quad	0x3fe5d7854b7d53bb              # double 0.68255867713980167
	.quad	0x3fe8107fddee4060              # double 0.75201409669717733
	.quad	0x3fb02f3e00261ca0              # double 0.063220858608576069
	.quad	0x3fbbf1fd854de290              # double 0.10916122917650228
	.quad	0x3fb536af693286e0              # double 0.082865679915382184
	.quad	0x3fd6b75ac9d2d35c              # double 0.35494107922868579
	.quad	0x3fc18a36d20af14c              # double 0.13703046089166049
	.quad	0x3fdef6fffcec5fb4              # double 0.48382568072838272
	.quad	0x3fe060307a9bb7b8              # double 0.51174186655929699
	.quad	0x3faeefe3b5bff2e0              # double 0.060423961578612184
	.quad	0x3fd44ab420b2d5b8              # double 0.31705954735965802
	.quad	0x3fd965b2406e5924              # double 0.39683204929441929
	.quad	0x3fdebfd3eac16d94              # double 0.48045823979711
	.quad	0x3f99bba29acc5ec0              # double 0.025129833887233444
	.quad	0x3fe73c73089a5975              # double 0.72612907104739455
	.quad	0x3fad11c9f12b8c40              # double 0.056776343049727007
	.quad	0x3fc1e7a4254a3cc8              # double 0.13988162823486605
	.quad	0x3fd9cb42244da978              # double 0.40303090615511605
	.quad	0x3fb22739d5014f60              # double 0.070911039832308287
	.quad	0x3fd1230fa6d514b2              # double 0.26776496212216749
	.quad	0x3fdf50473520346e              # double 0.48927478969637306
	.quad	0x3fee1a98e810eb21              # double 0.94074673962981958
	.quad	0x3fe3d6d7b2aa338c              # double 0.61997589965322808
	.quad	0x3fe9cdfba118f6e0              # double 0.8063944002567176
	.quad	0x3f8c903fb88f8d80              # double 0.013947007961127467
	.quad	0x3fe63e83675b226c              # double 0.69513101755826545
	.quad	0x3fe6d615bdfbf3cd              # double 0.71363341432845007
	.quad	0x3fb38b2153f6f220              # double 0.076341708182504409
	.quad	0x3fcce0083ebf4a8c              # double 0.22558692039327288
	.quad	0x3fefe35bdc095f13              # double 0.9965037629690151
	.quad	0x3fee040bd3c13a17              # double 0.93799392088277755
	.quad	0x3fa2e2d3053e77f0              # double 0.0368867820645703
	.quad	0x3fb9dc17cf3b68d0              # double 0.10101460275055563
	.quad	0x3fe729678aa1b9cf              # double 0.72380425526153569
	.quad	0x3fe90565678511c8              # double 0.78190870493613662
	.quad	0x3fe136761f221375              # double 0.53789812164960316
	.quad	0x3fccd6411ce92218              # double 0.22528852378515363
	.quad	0x3fe0ea1d403f8ee4              # double 0.52857840107432397
	.quad	0x3fefa3186139aac5              # double 0.98865908612545949
	.quad	0x3fee9f8d7cc313d2              # double 0.95697664611418021
	.quad	0x3fd5a7d9b0cc684e              # double 0.33836977258181811
	.quad	0x3fe7a13c6c223428              # double 0.73843213195653323
	.quad	0x3f4208bbdaac4000              # double 5.5035755699073263E-4
	.quad	0x3fd77db6bf6af43a              # double 0.36704796498435466
	.quad	0x3fdf103ab15ff292              # double 0.48536555597073872
	.quad	0x3fe3923796c1f3bb              # double 0.61159877247666061
	.quad	0x3fd4120d2f22f0ac              # double 0.31360177615330076
	.quad	0x3fd683a14c070a1a              # double 0.35178406166611043
	.quad	0x3fe9623813af3397              # double 0.79323963017087606
	.quad	0x3fd267df1cf5a210              # double 0.28758981540752959
	.quad	0x3fd77e15f9953ac6              # double 0.36707066891987628
	.quad	0x3fb4361db8d62c30              # double 0.07895074617970077
	.quad	0x3fe2c2a82c59e2e4              # double 0.58626183187797354
	.quad	0x3fe78a254d5e989f              # double 0.73561349021180777
	.quad	0x3fe164f46f7f5a07              # double 0.54357358719681848
	.quad	0x3fee82d9fdeb831d              # double 0.95347308725112934
	.quad	0x3fc4a827e5540044              # double 0.16138170907652427
	.quad	0x3fdaebf80b6fd380              # double 0.42065240017773675
	.quad	0x3fe381f967451229              # double 0.60961599511990017
	.quad	0x3fd441d3bb0fce22              # double 0.31651776569126089
	.quad	0x3fc8d7bdbc8d009c              # double 0.19408389765340395
	.quad	0x3fe67146c06bc952              # double 0.7013276823256922
	.quad	0x3fee1598e0d367a9              # double 0.94013637458123356
	.quad	0x3fc08af4d10190c0              # double 0.12924061017395694
	.quad	0x3fd26fbedc0b2fd4              # double 0.28807040680544316
	.quad	0x3fb4fd59cd07fbb0              # double 0.081990826183740095
	.quad	0x3fda058aee428018              # double 0.4065882994418657
	.quad	0x3fd606872fbd22e0              # double 0.34414844190591332
	.quad	0x3feb592a469a76dd              # double 0.85463441648218075
	.quad	0x3fd6f101601d472c              # double 0.35845980058830906
	.quad	0x3fd02f5a561be85a              # double 0.2528901902111379
	.quad	0x3fb93339b51cbaa0              # double 0.098437887875415075
	.quad	0x3fc3a8bb45fa1328              # double 0.15358677784765828
	.quad	0x3fe0803da7ded5b0              # double 0.51565439974972627
	.quad	0x3fe9dafa760e5429              # double 0.80798075731093377
	.quad	0x3fe6c6f5dae29065              # double 0.71178715468387266
	.quad	0x3fe14b5ecccfaad0              # double 0.54045047762095955
	.quad	0x3fe9f009c22079b6              # double 0.81055152812387266
	.quad	0x3fd39e0570d93c42              # double 0.30651985187882158
	.quad	0x3fdcdd03f148bd3a              # double 0.45098970950035133
	.quad	0x3f7b080c20a1a600              # double 0.0065994714478647687
	.quad	0x3fda198477426706              # double 0.40780746122764844
	.quad	0x3fafe6721c625720              # double 0.062305036511288714
	.quad	0x3fc818c55a64863c              # double 0.18825594819741009
	.quad	0x3fe0c07706448a5c              # double 0.52349425529639459
	.quad	0x3fe8413dd20c749c              # double 0.75796404862525745
	.quad	0x3fd086b192574ef2              # double 0.25822104731672291
	.quad	0x3fcd21bf57d37b04              # double 0.22759238994964204
	.quad	0x3f4cd7161e1ecc00              # double 8.801324840902458E-4
	.quad	0x3fec9e0391faf838              # double 0.89428881179606545
	.quad	0x3feeaa00e068fe86              # double 0.95825237112144701
	.quad	0x3fd15ae6993879e6              # double 0.27117314303350637
	.quad	0x3f8873620004ad80              # double 0.011938825250203733
	.quad	0x3fef2e851b08ed25              # double 0.97442870407340775
	.quad	0x3fd3fc553a7eea80              # double 0.31227617943265074
	.quad	0x3fe945074f41978b              # double 0.78967633704881857
	.quad	0x3fe1653b970bad77              # double 0.54360751629921722
	.quad	0x3fe330eaa5d0f9f5              # double 0.59972126375197254
	.quad	0x3fef2342535a4d4e              # double 0.97305408744652211
	.quad	0x3fe96432ad993f10              # double 0.79348119646053483
	.quad	0x3fa4c3ec4490f250              # double 0.040557273263833182
	.quad	0x3fee777c4aa1c11f              # double 0.95208563400777624
	.quad	0x3fe359788a15418d              # double 0.60467173547117314
	.quad	0x3fe168b5517e83e8              # double 0.54403177182041151
	.quad	0x3fe9dc414b3f128e              # double 0.80813660332258208
	.quad	0x3fe12863f4551626              # double 0.53618047448316442
	.quad	0x3fce653b328d11e4              # double 0.23746433227837749
	.quad	0x3fe016c54fdfed89              # double 0.50277963257342251
	.quad	0x3fdc960b294b29ec              # double 0.44665793449953983
	.quad	0x3fd65dc51147d1a2              # double 0.34947325408509233
	.quad	0x3fe511119718b005              # double 0.65833358298323275
	.quad	0x3fd724d6db47c440              # double 0.36162349142165695
	.quad	0x3fe88a29ccc6c4b6              # double 0.76686563487432724
	.quad	0x3f87755cc47764c0              # double 0.011454319711378225
	.quad	0x3fe662566506256a              # double 0.69950408679248466
	.quad	0x3fefb4d151ca0111              # double 0.99082246756009528
	.quad	0x3fc7a51d6f285ce0              # double 0.18472640922184436
	.quad	0x3fbb7633566a7cd0              # double 0.10727234706654376
	.quad	0x3fbb48ef8ca4f330              # double 0.10658166106891254
	.quad	0x3fe52d98e3c7397c              # double 0.66181606758054512
	.quad	0x3fc1ce269d59be58              # double 0.13910372431881757
	.quad	0x3fdf41e1677378d2              # double 0.48839602568285756
	.quad	0x3fe6a3fb78f7bc2c              # double 0.70751737238413659
	.quad	0x3fcb00073fdab260              # double 0.21093836419949508
	.quad	0x3fe90b3602ecaaa3              # double 0.78261852809130905
	.quad	0x3fef9d2e71f0a243              # double 0.98793718580152078
	.quad	0x3fcc55aa1308bb64              # double 0.2213642685832965
	.quad	0x3fc9238ce2093940              # double 0.19639740979114073
	.quad	0x3fe7f05893ee3f6d              # double 0.74808911221223939
	.quad	0x3fe77cb01b035e33              # double 0.73397069240576795
	.quad	0x3fe865f97ffa702c              # double 0.76244807239300405
	.quad	0x3fe6858dc682e42a              # double 0.70380295535790549
	.quad	0x3fe24c91f034540f              # double 0.57184693255351415
	.quad	0x3fd17e87243fee46              # double 0.27334764995587013
	.quad	0x3fe7991327a026c0              # double 0.73743589152692124
	.quad	0x3fd68aab19424962              # double 0.35221364466374017
	.quad	0x3fcba5bf4ec0ab34              # double 0.21599570603697205
	.quad	0x3fe6d79559d51a11              # double 0.71381633325001037
	.quad	0x3fd7a3c520975e14              # double 0.36937072928182713
	.quad	0x3fef5970b003509e              # double 0.97966799142388417
	.quad	0x3fedb554918c0cd6              # double 0.92838505198633459
	.quad	0x3fd3cc05ef232940              # double 0.3093275866819063
	.quad	0x3fdcb8b2ce9ea1ba              # double 0.44877309968662937
	.quad	0x3fe913542f2d9ad3              # double 0.78360947813492954
	.quad	0x3fcc0f6022821624              # double 0.21921922383278158
	.quad	0x3fea81300d87c4b6              # double 0.82826998369832583
	.quad	0x3fe33308f5f6d121              # double 0.59997985877865656
	.quad	0x3fd42393fafff5bc              # double 0.31467151176169827
	.quad	0x3fe3c9c96463bc27              # double 0.61838216407148117
	.quad	0x3fc281d1dee2922c              # double 0.14458678610857711
	.quad	0x3fd9eaa5699b6b98              # double 0.40494666398233781
	.quad	0x3fc66a4d4922ced8              # double 0.17511907645313474
	.quad	0x3fd36839f5f1b8f4              # double 0.3032364751624208
	.quad	0x3fd4d7d2753bad34              # double 0.32567273567720467
	.quad	0x3fe8961b84315a40              # double 0.76832366770651817
	.quad	0x3fd794a76effce04              # double 0.36844812240380542
	.quad	0x3fe7252bf97dbf9c              # double 0.72328757027388546
	.quad	0x3feed731f8955447              # double 0.96376894523076195
	.quad	0x3fbec95e865944b0              # double 0.12026015071866669
	.quad	0x3fe486db4922b831              # double 0.64146198543835997
	.quad	0x3feeee8af0c688ad              # double 0.96661898638219201
	.quad	0x3fe9cae3bcde9f2c              # double 0.80601679695698669
	.quad	0x3fe6b113448c4752              # double 0.70911563289903712
	.quad	0x3fec69e49e914cea              # double 0.88792639703970377
	.quad	0x3fd2bd32914ea8bc              # double 0.2927977007881386
	.quad	0x3fe2a586b4bf1a81              # double 0.58270583440828727
	.quad	0x3fedc08c8f734e15              # double 0.92975452439935913
	.quad	0x3fd4139266f38400              # double 0.31369457296210612
	.quad	0x3fde5c7d200285f4              # double 0.47439506650888963
	.quad	0x3feb4a02250a1db7              # double 0.85278422579079105
	.quad	0x3febed3e13bd8423              # double 0.87271026473547797
	.quad	0x3fce179738b43510              # double 0.23509493130442438
	.quad	0x3fd48e3bebc32fd6              # double 0.32118127845455768
	.quad	0x3fe8a95c0b6d55d0              # double 0.77067377311566965
	.quad	0x3fc045b212af8fc0              # double 0.12712694084541276
	.quad	0x3fe623b76ba4f258              # double 0.69185992264062701
	.quad	0x3fe7806a830b78af              # double 0.73442578882874965
	.quad	0x3fd4a814e480b98e              # double 0.32275888743142722
	.quad	0x3fe81a0f07101596              # double 0.75318099383791792
	.quad	0x3fe457d93a9595bd              # double 0.63572369997262224
	.quad	0x3fe81d4e5a48a047              # double 0.75357740052732758
	.quad	0x3fd6bf6a72a9057e              # double 0.35543309399880474
	.quad	0x3fdd16d2860848e0              # double 0.45451796616647577
	.quad	0x3fed5c6b29117640              # double 0.91753156682143099
	.quad	0x3fd7decd710a7206              # double 0.37297378577366691
	.quad	0x3fd8c8793863be0c              # double 0.3872359324149961
	.quad	0x3fe9caa3dc27d258              # double 0.80598633765346062
	.quad	0x3fe1d15780ff0496              # double 0.55680442041934231
	.quad	0x3f87f33dfae14800              # double 0.011694416254758977
	.quad	0x3fe28586c01d496f              # double 0.57879960558265775
	.quad	0x3fee99c464bdbe7b              # double 0.95627040554059251
	.quad	0x3fed5d5da8ce16b1              # double 0.91764719934209016
	.quad	0x3fed8fea3c5b9632              # double 0.92381774700760944
	.quad	0x3fc7316302d54544              # double 0.18119466436705001
	.quad	0x3feb49346c2d241b              # double 0.85268612983884695
	.quad	0x3fc66e9aaade479c              # double 0.17525037139108413
	.quad	0x3fecca85eafd52b4              # double 0.89972206016917377
	.quad	0x3feaa8a820911247              # double 0.83308798180275623
	.quad	0x3fdf6a5877711c22              # double 0.49086581863633871
	.quad	0x3fe71fbeb3f405d5              # double 0.72262511393653972
	.quad	0x3fd293847c2c585a              # double 0.29025375486651728
	.quad	0x3f94439c94cf5f80              # double 0.019789167959828102
	.quad	0x3feb6b9686e29cfe              # double 0.85688330025450887
	.quad	0x3fe3609958f6448d              # double 0.60554187178981211
	.quad	0x3fdb02a441b09dfc              # double 0.42203623213796937
	.quad	0x3fea09ca1262ddbc              # double 0.81369498816541563
	.quad	0x3fe2bd66e0f37e2a              # double 0.58562034545679365
	.quad	0x3fe55597a32ba7fe              # double 0.6666982829021888
	.quad	0x3fedf96ab641f5ae              # double 0.93669639203260657
	.quad	0x3fe833d579e926b5              # double 0.75632737932865857
	.quad	0x3feb0ed2d4caf47c              # double 0.84555951653568639
	.quad	0x3fe127560ed92593              # double 0.53605177784008828
	.quad	0x3fdc1eeafdc89de2              # double 0.43938708098946055
	.quad	0x3fe6fb99c0e39762              # double 0.71821296380651867
	.quad	0x3fe130fb93ae3d33              # double 0.53722933620330193
	.quad	0x3fd1e657ce6be6bc              # double 0.27968402059887487
	.quad	0x3fc76b62b893a014              # double 0.18296464931995671
	.quad	0x3fb3f5130f8e6538              # double 0.077958289430530736
	.quad	0x3fcaec0c2da382a8              # double 0.21032860020115618
	.quad	0x3feb2dbc0d9c6583              # double 0.84933283480056365
	.quad	0x3fd51cead2692aa0              # double 0.32988997028284395
	.quad	0x3fda0eca2ce5e710              # double 0.40715269455505254
	.quad	0x3fe8276994cd5dc7              # double 0.75481108725483004
	.quad	0x3fce751eccbfe7b4              # double 0.23794922826328746
	.quad	0x3fed20276710a8fb              # double 0.91017503862283833
	.quad	0x3fc3b5f97839ac28              # double 0.15399092073798326
	.quad	0x3fd45efd75577cb2              # double 0.31829773387103011
	.quad	0x3fe4bb4c40fdebd2              # double 0.64786350911833268
	.quad	0x3fc53ed36a4f58cc              # double 0.16597979250827277
	.quad	0x3fd836bc4d9aa7ca              # double 0.3783407934048425
	.quad	0x3fa31a76eee621e0              # double 0.037311283743352908
	.quad	0x3fe5cc4d7181fded              # double 0.68118927163589904
	.quad	0x3fc312fbad86efe4              # double 0.14901681874277906
	.quad	0x3fa3bb8c82ee9180              # double 0.038540259344958194
	.quad	0x3fafde581c617ea0              # double 0.062243226494272053
	.quad	0x3fe2efeca92da7e1              # double 0.59178765337605566
	.quad	0x3fdd4fd3524726ea              # double 0.45799716029124105
	.quad	0x3fed059231543178              # double 0.90693006166979639
	.quad	0x3fed29f4d7f0a380              # double 0.91137163329868542
	.quad	0x3f9ca07850186fc0              # double 0.027955894364012357
	.quad	0x3fe06a080e7585cc              # double 0.51294329475438749
	.quad	0x3fef2d71c5917345              # double 0.97429741466076136
	.quad	0x3fea05f813a2493e              # double 0.81322864374877901
	.quad	0x3fcea13e0dbfafd0              # double 0.23929572745635008
	.quad	0x3fcdf0897d2be63c              # double 0.23390310871018183
	.quad	0x3fb07e8961dd9978              # double 0.064430796044325223
	.quad	0x3fe9115bb0b600aa              # double 0.78336891664368591
	.quad	0x3fec2455446577da              # double 0.87943518980659552
	.quad	0x3fd8d2973695e672              # double 0.38785343485469703
	.quad	0x3fea94e615f164ef              # double 0.83067611966830934
	.quad	0x3fd04bff8ed602e8              # double 0.25463856648279526
	.quad	0x3fe126cf98de3500              # double 0.53598766190557967
	.quad	0x3fe9e102cb1e18aa              # double 0.80871715232276142
	.quad	0x3fe1aff63c023e47              # double 0.55272971840344887
	.quad	0x3fec0535f7597688              # double 0.87563608465616571
	.quad	0x3fd550f01d935362              # double 0.33306506050330686
	.quad	0x3fdd6fdb7966ed58              # double 0.45995222907705147
	.quad	0x3f870b650eacd340              # double 0.011252202520702803
	.quad	0x3fe3ffe5b25540ed              # double 0.62498745756786678
	.quad	0x3fe8fe0a4b5b9f27              # double 0.78101076811160375
	.quad	0x3fcf23a8260347ac              # double 0.24327566009611468
	.quad	0x3fec79d08819bf79              # double 0.88986994344848747
	.quad	0x3fe29437e97cbb96              # double 0.5805930671975712
	.quad	0x3fee185e59b270c6              # double 0.94047467726661504
	.quad	0x3fcbecb5b979a4d8              # double 0.21816131168751585
	.quad	0x3fe39828d1a5ee09              # double 0.61232415148646269
	.quad	0x3fe48aca39cf4599              # double 0.64194213190983185
	.quad	0x3fd100e1d5ead0ac              # double 0.26567884340625869
	.quad	0x3fe517ce14ee35b9              # double 0.65915588462819763
	.quad	0x3fe6c2d375ad1988              # double 0.71128247245432963
	.quad	0x3fdc788efbed723e              # double 0.44485830881402311
	.quad	0x3fd2ec7007ed49a8              # double 0.29568100713836509
	.quad	0x3fe83832f38d349a              # double 0.75686023300808647
	.quad	0x3feece6f4a618c09              # double 0.96269955184504951
	.quad	0x3fe511d12e4a5049              # double 0.65842494050094402
	.quad	0x3fe382bac3916984              # double 0.60970819661024267
	.quad	0x3fa72e399a07d7a0              # double 0.045274543812339418
	.quad	0x3fd62518ca364ca2              # double 0.34601421115184838
	.quad	0x3fe1611b0d07a57e              # double 0.5431037191857937
	.quad	0x3fc81b52f5628994              # double 0.18833386403737207
	.quad	0x3fd3ff919172ee08              # double 0.31247367099760526
	.quad	0x3fcd5eb9ae6d9004              # double 0.22945328728667402
	.quad	0x3fe90ffc09df715b              # double 0.78320123604093383
	.quad	0x3fe29d4dfe152e37              # double 0.58170222878965816
	.quad	0x3fe289f19dea5518              # double 0.57933884470790797
	.quad	0x3fe4ae6998317b91              # double 0.6462905857587079
	.quad	0x3fe8fe65c19310ff              # double 0.78105438048854114
	.quad	0x3fef87546409b59c              # double 0.98526973284394925
	.quad	0x3fd8061929479702              # double 0.37537220984664554
	.quad	0x3fec1929d36450e7              # double 0.87807170188400796
	.quad	0x3fd60c357e87a348              # double 0.34449517589978429
	.quad	0x3fc5f2ed40d2f664              # double 0.17147603669393441
	.quad	0x3fe0db3dee9f1247              # double 0.52676292997109264
	.quad	0x3fe13113326a87e6              # double 0.53724059912587729
	.quad	0x3feae274a919f1df              # double 0.84014351871115511
	.quad	0x3fa0c5a09c3b8970              # double 0.032757777282102718
	.quad	0x3fecf4e46ad2cc71              # double 0.9048940740962178
	.quad	0x3fe12f4dca606b77              # double 0.53702439810454805
	.quad	0x3fc8b43d314a23dc              # double 0.19300045878142569
	.quad	0x3fe3b54828c5808b              # double 0.61587913478071366
	.quad	0x3fe184bd7b651f4e              # double 0.5474536333140152
	.quad	0x3fe68c534e1b92c8              # double 0.70462956672107513
	.quad	0x3fed623330c899a3              # double 0.91823730018659366
	.quad	0x3fec37ea9838a438              # double 0.88182573061670322
	.quad	0x3fe7cacbeb40b21d              # double 0.74350543926044887
	.quad	0x3fef871594bf6647              # double 0.98523978283191915
	.quad	0x3fcf6a0baa1189e4              # double 0.24542375377775649
	.quad	0x3fe14d55ec7ea929              # double 0.54069038572678096
	.quad	0x3fd5e8980e0ec944              # double 0.34232140896633134
	.quad	0x3fe8a086d1189f5d              # double 0.76959553565118777
	.quad	0x3fc97297f49fb0c8              # double 0.19880961842080169
	.quad	0x3f9adc12886d1380              # double 0.026230134560381924
	.quad	0x3fbc316c728ec528              # double 0.11012914463824031
	.quad	0x3fd7a912ce4c3c46              # double 0.36969442507046713
	.quad	0x3fdc4bc63eaac434              # double 0.44212490196065635
	.quad	0x3fdb0a881ef9e64e              # double 0.4225178053380646
	.quad	0x3fe70c0e06cf4b39              # double 0.72022153215434692
	.quad	0x3fa062f3cd968760              # double 0.032004946561996261
	.quad	0x3fe08eba8fe634f8              # double 0.51742294411965783
	.quad	0x3fe0eca5ac1725ca              # double 0.52888759242449024
	.quad	0x3feca5d84764e632              # double 0.89524473137061578
	.quad	0x3fdb090a4a46387a              # double 0.42242676976537263
	.quad	0x3fd43349f9454f28              # double 0.31563042967649091
	.quad	0x3fd837ac21f03496              # double 0.37839797319686264
	.quad	0x3fcdb41b69e3d790              # double 0.2320589320221953
	.quad	0x3fd190b95b8b92c2              # double 0.27445825519525269
	.quad	0x3fe3656eeae1b86b              # double 0.6061319911511992
	.quad	0x3fec77834c2725d7              # double 0.88958897470109377
	.quad	0x3fd6a5873d1c4a54              # double 0.35385304420302544
	.quad	0x3fe366f9bfe677bb              # double 0.60632026176948928
	.quad	0x3fe2ec1379d81a02              # double 0.59131788060841495
	.quad	0x3fe055ea68a133eb              # double 0.51048775134551982
	.quad	0x3fec26b34811f3cc              # double 0.8797241599673895
	.quad	0x3fd9596343308194              # double 0.39608079492065795
	.quad	0x3fef65ae3d535f44              # double 0.98116218545599354
	.quad	0x3f96e1c290191be0              # double 0.022345581097649503
	.quad	0x3fe27299885d2574              # double 0.57648922570767391
	.quad	0x3fe2ab586902ded7              # double 0.58341618070604795
	.quad	0x3feda94bd35c3851              # double 0.92691603928848043
	.quad	0x3fd990f03908f09e              # double 0.39947133607689433
	.quad	0x3fdd28cd212f53fc              # double 0.45561531296453928
	.quad	0x3fee1e23a06d566e              # double 0.94117909749429685
	.quad	0x3fe8136d1fba5f0a              # double 0.75237137028577306
	.quad	0x3feb3f9c49855d16              # double 0.85151495322762361
	.quad	0x3fd8037d732adfa0              # double 0.37521301504920679
	.quad	0x3fee071a6d6c97e7              # double 0.93836709377205529
	.quad	0x3fd60645bf307624              # double 0.34413283987837162
	.quad	0x3fd91468cce81bf6              # double 0.39187068949144022
	.quad	0x3fb44ceafd1189d0              # double 0.079298674377731304
	.quad	0x3fe1ebe13d8d4bdc              # double 0.56004392644751588
	.quad	0x3fb4c35b01c75678              # double 0.081105888303989349
	.quad	0x3fea0720ddcf5590              # double 0.81337016412969554
	.quad	0x3fefaaffd5c534f1              # double 0.98962394477862691
	.quad	0x3fc334abad4ccf10              # double 0.15004487955013035
	.quad	0x3fa3b15e8901e6b0              # double 0.038462595200099314
	.quad	0x3fa8333bd8f04480              # double 0.047265882713085183
	.quad	0x3fd4142c25ce980a              # double 0.31373122875299997
	.quad	0x3fbfc5945bdf8258              # double 0.12410857432360822
	.quad	0x3fe5ee6d442ee63a              # double 0.68535483662635177
	.quad	0x3fb456f428969c70              # double 0.079451808842905924
	.quad	0x3fded40522e110bc              # double 0.48169067770164609
	.quad	0x3fdf1ee678f4b21e              # double 0.48626100360960034
	.quad	0x3fc7fcdf90b4e238              # double 0.18740458074332067
	.quad	0x3fe9eb36f434751c              # double 0.80996272751113762
	.quad	0x3feb5640f65e25d2              # double 0.85427902334884664
	.quad	0x3fed6b32620b75e4              # double 0.91933554791802096
	.quad	0x3fcaecb4bb3edde4              # double 0.21034869330263384
	.quad	0x3f7a0a89f6cc3c00              # double 0.0063577069493154781
	.quad	0x3fa5c9f9f7a676b0              # double 0.042556582909339169
	.quad	0x3feb985cfc767176              # double 0.86234902676692005
	.quad	0x3fe363bb2aa6331e              # double 0.60592420892644205
	.quad	0x3fef244103f6d32a              # double 0.97317553304910587
	.quad	0x3fedd3928003195d              # double 0.9320766926037255
	.quad	0x3fbc1bff00ffb7e8              # double 0.10980218672167974
	.quad	0x3fd79c7fe97e9f56              # double 0.36892698099335541
	.quad	0x3fe6f7d4793b7274              # double 0.71775268247763657
	.quad	0x3fe0d0e4f9923987              # double 0.52549980873463731
	.quad	0x3fe05a8a83f1f834              # double 0.51105237741990672
	.quad	0x3fd368c0b931d20e              # double 0.30326860509310982
	.quad	0x3fdce73a5b548808              # double 0.45161303442921552
	.quad	0x3fcd42c1a14b0e30              # double 0.22859974265712557
	.quad	0x3fc8b8f0cbceeb54              # double 0.19314393951011743
	.quad	0x3fe62a333ccadab1              # double 0.69265138505473633
	.quad	0x3fed91000fe76c1d              # double 0.92395022493599621
	.quad	0x3fa560c876b6caa0              # double 0.041754021159609467
	.quad	0x3fe5e8db855e264d              # double 0.68467498825447992
	.quad	0x3fef5792951a3709              # double 0.97944001313746398
	.quad	0x3fe356d68923b45e              # double 0.60435034546902577
	.quad	0x3fe665b5568df5bc              # double 0.69991557030851181
	.quad	0x3fdf4c3d4441e7d2              # double 0.48902827897802326
	.quad	0x3fe1530eac45ec74              # double 0.54138883254144199
	.quad	0x3fdeee0b5d28d35a              # double 0.4832790765533922
	.quad	0x3fe2ec7238a3bbdf              # double 0.59136305868548422
	.quad	0x3fce287d38aa0f70              # double 0.23561063067256383
	.quad	0x3fe37d0abb298dc3              # double 0.60901390605106831
	.quad	0x3fd11b7970117c3c              # double 0.26730190223856076
	.quad	0x3fd99aab8b3c4cce              # double 0.40006531331273443
	.quad	0x3fe06d747de76b32              # double 0.5133612116872881
	.quad	0x3f8dfd5734dbf9c0              # double 0.014643365193021007
	.quad	0x3fe3e74f5b2a534e              # double 0.62198608213166451
	.quad	0x3fd24f79f533be52              # double 0.2861008543540936
	.quad	0x3fa7bc52fdcf6e50              # double 0.046358674509715869
	.quad	0x3fe1a82bd5cb5b9e              # double 0.55177871472084283
	.quad	0x3fd6764efe82cf28              # double 0.35097098211848499
	.quad	0x3fb46292dacd7950              # double 0.079629114550219926
	.quad	0x3fa5b147815a0370              # double 0.04236815885543066
	.quad	0x3fdf119c9b9f54fe              # double 0.48544993588923535
	.quad	0x3fe55b44ee16b5da              # double 0.66739126683904293
	.quad	0x3fef4aa95a22ffb7              # double 0.97786395649745017
	.quad	0x3feb0ca47bc46bc2              # double 0.84529327557844902
	.quad	0x3fe80df6ee57bbdb              # double 0.75170465995131097
	.quad	0x3fd6fbd0cb68c5fc              # double 0.3591196047228491
	.quad	0x3fd7b79b1f1fa4c4              # double 0.37058141745962936
	.quad	0x3fb167417ab10688              # double 0.067981808141690192
	.quad	0x3feb7c7bc940a21f              # double 0.85894574458240303
	.quad	0x3feeff0b805c345e              # double 0.9686334139856958
	.quad	0x3fee475b850ec6ff              # double 0.94621063220822055
	.quad	0x3fe1383f281b9465              # double 0.53811605294744125
	.quad	0x3fc04f7cdf6b49ec              # double 0.12742577466140348
	.quad	0x3fecfbc89a958bc7              # double 0.905735303804584
	.quad	0x3fb6925856a08088              # double 0.088170548581276376
	.quad	0x3fd7d5555d0327f6              # double 0.37239584048495489
	.quad	0x3fcaf38ac72ce8c0              # double 0.2105573151146185
	.quad	0x3fe4a4d06a205459              # double 0.64511891105452002
	.quad	0x3feb99031d0793f3              # double 0.86242824239582061
	.quad	0x3fee9046abfc999d              # double 0.95511182395130201
	.quad	0x3f947db5c9793fc0              # double 0.020010795995687891
	.quad	0x3fefb513858a4253              # double 0.9908540352062779
	.quad	0x3fe3f8b215c69aa3              # double 0.62410835507474294
	.quad	0x3fa2cc019acf2430              # double 0.036712694308853933
	.quad	0x3fe4e95c4fe7c59e              # double 0.6534864006663843
	.quad	0x3fc59c2f0014c720              # double 0.16882884506190354
	.quad	0x3fc12b067d9fb328              # double 0.13412552961326552
	.quad	0x3fe511a9142aebcf              # double 0.65840581835743162
	.quad	0x3fd655c7f5a435b4              # double 0.34898566234991368
	.quad	0x3fba89e6332ac038              # double 0.10366667508310534
	.quad	0x3fe1034f42d86b6c              # double 0.53165400558223785
	.quad	0x3fe0d9cef625e58e              # double 0.52658794475353132
	.quad	0x3fd0b2a8db2d80b6              # double 0.26090451625897104
	.quad	0x3fe3404fbec511d0              # double 0.60160052547194631
	.quad	0x3fe2d6cbdd7e8c7f              # double 0.58872025738345701
	.quad	0x3fede5b1ea16aaff              # double 0.93428893776339794
	.quad	0x3fe0dcea3a27cd41              # double 0.5269671569680342
	.quad	0x3fee1daf306be974              # double 0.94112357575731531
	.quad	0x3fec75241b2bf06f              # double 0.88929944331131405
	.quad	0x3fe8f08e316eacfc              # double 0.779364677951349
	.quad	0x3fe991ba3e76bf4f              # double 0.79903900337192535
	.quad	0x3fec0c179e0c1288              # double 0.87647610539041043
	.quad	0x3fb7a74036916858              # double 0.092395795175805318
	.quad	0x3fdbcc886cd2b81c              # double 0.43435869815118777
	.quad	0x3fec0a4be3574509              # double 0.87625688936728452
	.quad	0x3fdbb9312f226b5c              # double 0.43317823031400393
	.quad	0x3fe0421d5b3b6bc7              # double 0.50807063883564119
	.quad	0x3fe3df642c0a474d              # double 0.62101944543449294
	.quad	0x3fc79a8cffc5d060              # double 0.18440401543523688
	.quad	0x3fc7adfc606770f8              # double 0.18499712664823398
	.quad	0x3fb20a84dad2acd0              # double 0.070473006652423509
	.quad	0x3fdc74abb465e55e              # double 0.44462101571078516
	.quad	0x3fe57b3495cf66a9              # double 0.6712897230128948
	.quad	0x3fd909a4b9b03e12              # double 0.3912135899890653
	.quad	0x3fefa33caa8939ef              # double 0.98867638881512032
	.quad	0x3fcdc7adc15a06dc              # double 0.23265621129035352
	.quad	0x3f7419ac83cdd600              # double 0.004907297025842805
	.quad	0x3feb8ddb84073367              # double 0.86106658732169883
	.quad	0x3fe8cd551f7927b9              # double 0.77506500384446675
	.quad	0x3fecf944706b9c84              # double 0.90542814213849043
	.quad	0x3fce08fda9aab34c              # double 0.23464937958251608
	.quad	0x3feb828f9c02da94              # double 0.8596876189320306
	.quad	0x3fd75d1211ab229c              # double 0.3650555775207438
	.quad	0x3fe93949b0ed8d2d              # double 0.7882431464790095
	.quad	0x3fd82ce5ac2f437a              # double 0.377740305089041
	.quad	0x3fa97dd825349030              # double 0.04978824094931189
	.quad	0x3fccd46c827b2724              # double 0.22523266192575264
	.quad	0x3fe546bb75f4ffbe              # double 0.66488431013566873
	.quad	0x3fe560e120785c1b              # double 0.66807609884097319
	.quad	0x3fc60551cab131a0              # double 0.17203733822897238
	.quad	0x3fd2d34529396360              # double 0.29414490724371056
	.quad	0x3fe91f72dc0e5d8c              # double 0.78508894900999015
	.quad	0x3fe5e3b3cb2c1814              # double 0.68404569322661013
	.quad	0x3fe09728fd74ce5b              # double 0.51845216277292694
	.quad	0x3fef1053c403d35e              # double 0.9707430675904154
	.quad	0x3fc655f49c87d5a8              # double 0.1744981540975179
	.quad	0x3fe53fd96c9c7444              # double 0.66404410565486005
	.quad	0x3fb413623edc8448              # double 0.078420772883434187
	.quad	0x3fde9f326be1592c              # double 0.478466611244033
	.quad	0x3fd29d9fa2c686f6              # double 0.29087057968182195
	.quad	0x3fe1b665cd86f1ab              # double 0.55351534025208105
	.quad	0x3fee623d96e6f87c              # double 0.94949225876895537
	.quad	0x3fe9f6afcbaeeb6f              # double 0.81136312276735889
	.quad	0x3fde8dd0830d81fc              # double 0.47740567014810131
	.quad	0x3fde8ece511bd2aa              # double 0.47746618195314261
	.quad	0x3fe2a06c33d5f8d6              # double 0.58208284496483986
	.quad	0x3fd3998470b8741a              # double 0.30624495513785777
	.quad	0x3fe3ebc991638a82              # double 0.6225326385141019
	.quad	0x3fdc4bd544795fb6              # double 0.44212848364758928
	.quad	0x3fb73fcaff1ed958              # double 0.090817153249053262
	.quad	0x3fe1ecaa70eef45b              # double 0.56013986642177416
	.quad	0x3fe584badf77766b              # double 0.67245238920049866
	.quad	0x3feff254157e471f              # double 0.99833110998062923
	.quad	0x3fd69a87057c613c              # double 0.35318160567978274
	.quad	0x3fd705ebc9bd6e9c              # double 0.35973639203232621
	.quad	0x3fdc47311ce40576              # double 0.44184520551069484
	.quad	0x3fe0aef82c39382c              # double 0.52135857236294703
	.quad	0x3fe13ee566a47346              # double 0.53892774627056705
	.quad	0x3fc6b3498d853238              # double 0.17734641466303613
	.quad	0x3fea54e382457c8a              # double 0.8228623909343622
	.quad	0x3fe0d3b075e9e5a5              # double 0.52584097890865122
	.quad	0x3fe9c65df983dd55              # double 0.80546473248879613
	.quad	0x3fec0b5f4041122e              # double 0.87638819265027279
	.quad	0x3fd611f16c96e026              # double 0.3448451576655337
	.quad	0x3fe3509ea8bd28a3              # double 0.60359127957169212
	.quad	0x3fdab5ac4d0c3874              # double 0.41733844303315171
	.quad	0x3fe028d2282638c1              # double 0.50498302308712806
	.quad	0x3fef3e7bbc4121e5              # double 0.97637736099664762
	.quad	0x3fa3885337cdd2e0              # double 0.038149452745448675
	.quad	0x3fbb6dcc008e9d30              # double 0.10714411748505337
	.quad	0x3fe3b61e1b4e77ea              # double 0.61598115285209798
	.quad	0x3fd4c1bd49dc46ea              # double 0.32432491505561123
	.quad	0x3fdb6553e37615ee              # double 0.42805955136313301
	.quad	0x3fe7552f363dd7b4              # double 0.72914848894173767
	.quad	0x3fd3fadc9e10076c              # double 0.31218638835718227
	.quad	0x3febfb998e6fccbf              # double 0.8744628698317668
	.quad	0x3fc3c6858dc5566c              # double 0.15449590132145674
	.quad	0x3fd1880b7f184766              # double 0.27392852222066322
	.quad	0x3fc900f540ec6aa0              # double 0.19534173650830144
	.quad	0x3feccc4ac46b7eea              # double 0.89993799556029086
	.quad	0x3fd3bac2120a1994              # double 0.30827380906739532
	.quad	0x3fe3ff3224b24192              # double 0.6249018398976196
	.quad	0x3fe81f60dd51fe0a              # double 0.75383036829583827
	.quad	0x3fe248ed838d152e              # double 0.57140231793952068
	.quad	0x3fc45fc1b5d91fb8              # double 0.15917226199439738
	.quad	0x3fe1c57de68b0b8e              # double 0.55535788562734623
	.quad	0x3fe236313135affd              # double 0.56911525355599191
	.quad	0x3fe4f964c8dfa74b              # double 0.65544356568464346
	.quad	0x3fcfd9922331b8e0              # double 0.24882723539798857
	.quad	0x3fe91dee9da4af7a              # double 0.78490381993968517
	.quad	0x3fea5dc5df93af58              # double 0.82394689242708363
	.quad	0x3fe494d11cd4cd1b              # double 0.64316611891846109
	.quad	0x3fe282a17433c5cb              # double 0.57844612785100347
	.quad	0x3fe7b4754ae611c5              # double 0.7407785857072261
	.quad	0x3fc06e7eb9ef4414              # double 0.12837204054679374
	.quad	0x3faa650bc337af40              # double 0.051552169399512682
	.quad	0x3fe94a95da6e7896              # double 0.79035465872199739
	.quad	0x3fdff194605c8fbc              # double 0.49911984834966083
	.quad	0x3feb2f23d541e5fe              # double 0.84950439121092791
	.quad	0x3fdc69aa422816dc              # double 0.44394928417783119
	.quad	0x3fd9197c9db4f65a              # double 0.39218058968603986
	.quad	0x3fee6307962a49ce              # double 0.94958857850206768
	.quad	0x3fcec751e53c9c50              # double 0.24045776074601344
	.quad	0x3fa736f20c4ea1d0              # double 0.045341075899446914
	.quad	0x3fde893bfdeb4034              # double 0.47712611958286577
	.quad	0x3fe9bfd7869201c8              # double 0.80466820033330411
	.quad	0x3fbdc36319108f00              # double 0.11626262056284631
	.quad	0x3fe1eb00f3c1d6e7              # double 0.55993697747063897
	.quad	0x3fe0226a6a583767              # double 0.50420113344601425
	.quad	0x3fdb919069a4b012              # double 0.43075952831964159
	.quad	0x3fe3872472ebda06              # double 0.61024687238278896
	.quad	0x3fe2d7c143b0a8e1              # double 0.58883727284162657
	.quad	0x3feaf355021cdb06              # double 0.8422036210311894
	.quad	0x3fde71c1d21b5006              # double 0.4756931831191199
	.quad	0x3fe10e8cd8e65934              # double 0.53302614558450623
	.quad	0x3fdf060de924b43c              # double 0.48474452751071673
	.quad	0x3fc068892ee460b0              # double 0.12819018163350426
	.quad	0x3fd45f048009ee22              # double 0.31829941276348184
	.quad	0x3fc123fbf2c8e30c              # double 0.13391064982149492
	.quad	0x3fd9c109f0202246              # double 0.4024071545577822
	.quad	0x3fcd11c9416f7848              # double 0.22710529036607086
	.quad	0x3fdfe3891f24c31c              # double 0.49826267281882664
	.quad	0x3fd2e10bad19c366              # double 0.29498569397315177
	.quad	0x3fee1f775614f8f6              # double 0.94134108364940405
	.quad	0x3fd29dd3828e0874              # double 0.29088294744008825
	.quad	0x3fd7fee14a4a233c              # double 0.37493164305537952
	.quad	0x3fe09ed670821081              # double 0.51938936208945574
	.quad	0x3fddc86527d1d88a              # double 0.46535614861148444
	.quad	0x3fd60a0b7b17d636              # double 0.34436308880626443
	.quad	0x3fe8c3f2bbf01b1f              # double 0.77391945559142872
	.quad	0x3fe3fd9bacacacf0              # double 0.62470802045336704
	.quad	0x3fd7153feff183da              # double 0.36067198211645535
	.quad	0x3fe7bb4943c2b427              # double 0.74161208376392984
	.quad	0x3fdf09f206b951c2              # double 0.48498201996451595
	.quad	0x3fe9e39301c1e7c1              # double 0.80903005927324767
	.quad	0x3fe454d41438e4ad              # double 0.63535503339439503
	.quad	0x3fe63270dc6621e2              # double 0.69365733191176226
	.quad	0x3fe66cc5b56e2308              # double 0.70077786861028901
	.quad	0x3fedc11dc528b8bd              # double 0.92982376582747117
	.quad	0x3fe14ffc26d7243e              # double 0.54101378999724381
	.quad	0x3fe7332bea6c3dbd              # double 0.72499652658182578
	.quad	0x3fc9a190d139470c              # double 0.20024309364321657
	.quad	0x3fea246cc4f45763              # double 0.81694639651935252
	.quad	0x3fe42c75cbed3667              # double 0.63042726354042322
	.quad	0x3fe04d88dc6ae1f8              # double 0.50946467447562238
	.quad	0x3fd257fcd7f81e48              # double 0.2866203412126862
	.quad	0x3fe9c77c090d3907              # double 0.80560113685513179
	.quad	0x3fe9ef2e585475f0              # double 0.8104469037240829
	.quad	0x3fbd01b47fcd1d90              # double 0.11330726738116526
	.quad	0x3fcccca0a39d597c              # double 0.22499473561283512
	.quad	0x3fd71c23a82c6204              # double 0.36109248564892504
	.quad	0x3fed9cba6237b74d              # double 0.9253818434060378
	.quad	0x3fca5f70a36d107c              # double 0.20603759746348149
	.quad	0x3febc9bbb6d360cf              # double 0.86837564190047967
	.quad	0x3fc8bd0b72497ba8              # double 0.19326918678686167
	.quad	0x3fd6a02d06578a10              # double 0.35352635974246116
	.quad	0x3fc1cb41e192a7f0              # double 0.13901542200375117
	.quad	0x3fec8683af9c33a2              # double 0.89142021464214261
	.quad	0x3fe57e457f646e8f              # double 0.67166399842558799
	.quad	0x3fa89b1b4d0af0f0              # double 0.048058369784003463
	.quad	0x3fcbba424d2ca038              # double 0.21662167328145343
	.quad	0x3fe0cffa61542bf7              # double 0.52538794526606025
	.quad	0x3fd2cd3cf4828e64              # double 0.29377673986366504
	.quad	0x3fd4df7a76dee286              # double 0.32614003761731458
	.quad	0x3fb9d5cb105d42c8              # double 0.10091847562331246
	.quad	0x3fdcf054946804c2              # double 0.45216860287480298
	.quad	0x3fe8bf6d44d68c92              # double 0.77336753315866447
	.quad	0x3fe6e4bf39d0d356              # double 0.71542321483739602
	.quad	0x3fd1ab473e6143a6              # double 0.27607899753371112
	.quad	0x3fd5d863da4fafd8              # double 0.34133240050755154
	.quad	0x3fe71f7ac4138823              # double 0.72259271904136246
	.quad	0x3fc4691a67c2b964              # double 0.15945749346196714
	.quad	0x3f7b74e781bfe700              # double 0.0067032855258675195
	.quad	0x3fe87df0abc9dc14              # double 0.76537354996151174
	.quad	0x3fed2f04845b523b              # double 0.91198945856974178
	.quad	0x3fcbdba10b2bffa4              # double 0.21764004750729982
	.quad	0x3fe0d31904f6446d              # double 0.52576876610886603
	.quad	0x3fbcaba68b4bbf20              # double 0.1119941797330708
	.quad	0x3fcfdb9f33c685e4              # double 0.24888982799625048
	.quad	0x3fd8940fcc9dbf5a              # double 0.38403696996737369
	.quad	0x3fef3eba074acd1d              # double 0.97640706466919235
	.quad	0x3feb4e7d36b5935e              # double 0.8533311909237502
	.quad	0x3fe36bc17bf048d6              # double 0.60690378386268651
	.quad	0x3fc9839858661854              # double 0.19932846371028978
	.quad	0x3fe44aee5d5249fb              # double 0.6341468641933824
	.quad	0x3fdd22beff55637c              # double 0.45524573264042778
	.quad	0x3fe2492c52e8f672              # double 0.57143226807938974
	.quad	0x3fd4264255fbf2b0              # double 0.31483515164272102
	.quad	0x3fea1fb1fc72fd52              # double 0.81636905008773852
	.quad	0x3fe568e20563f3f5              # double 0.66905308773823313
	.quad	0x3fe5f4e13fde151f              # double 0.68614256357310299
	.quad	0x3fd9bf8c9ec349e8              # double 0.40231624130424715
	.quad	0x3fe538cb952771b1              # double 0.66318301326423612
	.quad	0x3fe442e86f42f7be              # double 0.63316747408656915
	.quad	0x3f8c9470510bcec0              # double 0.013954999421435743
	.quad	0x3fdbe1193d7d3db4              # double 0.4356139278870288
	.quad	0x3fe9f0d044dab686              # double 0.81064618538012279
	.quad	0x3fc1371f41741590              # double 0.13449469276399073
	.quad	0x3fd462e9752f60d0              # double 0.31853710597853269
	.quad	0x3f75a4eb435f7480              # double 0.0052842321365150768
	.quad	0x3fbe66d5788dead0              # double 0.11875662034246237
	.quad	0x3fe5502c791bd24d              # double 0.66603683141745196
	.quad	0x3fbd4ec8162c1938              # double 0.1144833616382116
	.quad	0x3fe02e72e4b9a288              # double 0.50567001984480076
	.quad	0x3fe670937efcf4ea              # double 0.70124220659604686
	.quad	0x3fe228c05052db5f              # double 0.56747451484885036
	.quad	0x3fe11daa23ef0d0c              # double 0.53487116831129944
	.quad	0x3fe6b0431a29dd3c              # double 0.70901637182297561
	.quad	0x3fb218f39bc4c078              # double 0.070693231133874934
	.quad	0x3fdf836bef1cbebe              # double 0.49239633894738322
	.quad	0x3fdd1393598faa46              # double 0.45431979891023777
	.quad	0x3fec1dd5e64b6d81              # double 0.8786420343343907
	.quad	0x3fd6675aa91934c4              # double 0.35005823625108357
	.quad	0x3fe2d4faf6607799              # double 0.58849857445214859
	.quad	0x3fe975bc76b1d6db              # double 0.79562209303432085
	.quad	0x3fd3b95a624f9f6e              # double 0.30818805313764741
	.quad	0x3fc7df3548e202c4              # double 0.18649927195294513
	.quad	0x3fec859d51e029ca              # double 0.8913103675015972
	.quad	0x3fec6a8a2cf8cf39              # double 0.88800534041954571
	.quad	0x3fdcd03c61282394              # double 0.45020970809906058
	.quad	0x3fd6b14f65562844              # double 0.35457215210101745
	.quad	0x3fe19647d8899c35              # double 0.54959480564583052
	.quad	0x3fa1c3b9907f7a80              # double 0.034696387185012334
	.quad	0x3fe51628c4228cbd              # double 0.65895498569115996
	.quad	0x3fad3747b23dbf30              # double 0.057062378414114767
	.quad	0x3f832bff73309400              # double 0.009361262991726349
	.quad	0x3fd091421069372c              # double 0.25886584856640371
	.quad	0x3fe2fea0687b46a2              # double 0.59358234793235831
	.quad	0x3fe6a4df7802235b              # double 0.70762608946925398
	.quad	0x3fd0a1f64930025a              # double 0.25988537928791333
	.quad	0x3fd9550b73f08b66              # double 0.39581571886281208
	.quad	0x3fe9fcfded25b22b              # double 0.81213280027220003
	.quad	0x3fedae1b3a2c0614              # double 0.92750321733200502
	.quad	0x3f96065363f21be0              # double 0.021508505797580457
	.quad	0x3fddc4fa8b972472              # double 0.46514762527346598
	.quad	0x3fe33f52b442194e              # double 0.60147986609153192
	.quad	0x3fe58ff31ed0b150              # double 0.67382198351473654
	.quad	0x3fe4a67c52f682f4              # double 0.64532295421312691
	.quad	0x3f7acb579e20f380              # double 0.0065415785375620983
	.quad	0x3fe05e317868ca72              # double 0.51149819867562329
	.quad	0x3febb01148573c49              # double 0.86524261597686192
	.quad	0x3feba3eae74b9e41              # double 0.86375947165374367
	.quad	0x3fd484b0ed24db5c              # double 0.32059882315245658
	.quad	0x3fd7aa758c6c80a2              # double 0.36977900231614502
	.quad	0x3fc0de1170fc6d54              # double 0.13177698151489869
	.quad	0x3f922162f3a00960              # double 0.017705484504412339
	.quad	0x3fecf90e47bd2efb              # double 0.90540231715701169
	.quad	0x3fdbcd6cf9e70094              # double 0.43441318897749537
	.quad	0x3fe88d2d9834cc5c              # double 0.76723365524083986
	.quad	0x3fc86e80b3db2974              # double 0.19087227613483615
	.quad	0x3fe39c257c4d2409              # double 0.61281084325412494
	.quad	0x3febb0fb23879da6              # double 0.86535412730602412
	.quad	0x3f818c6ba12a4ec0              # double 0.0085686119612441435
	.quad	0x3fe1888351529138              # double 0.54791417964273759
	.quad	0x3fe1eb68237ad168              # double 0.55998618058815186
	.quad	0x3fe93ca3f1ec48ca              # double 0.78865239382346286
	.quad	0x3fdc6a79973c971a              # double 0.44399871606070607
	.quad	0x3fd0649bb49925ca              # double 0.25614063869997195
	.quad	0x3f9b7e9ec4489aa0              # double 0.026850205164147156
	.quad	0x3fd9700d0e88223e              # double 0.39746405047529609
	.quad	0x3fdb6df4e9c07c2e              # double 0.4285862238629673
	.quad	0x3fd2ca4649d91bd8              # double 0.29359585963942214
	.quad	0x3fe1382698367396              # double 0.53810434083026126
	.quad	0x3fd66c75e8a08b6e              # double 0.35036990849965022
	.quad	0x3fcb51bb510bea64              # double 0.2134317537055096
	.quad	0x3fc6089bc7e354c4              # double 0.17213771114498944
	.quad	0x3fed5529123229b2              # double 0.91664556077858195
	.quad	0x3fd7c0f3a1d3581c              # double 0.37115183642652183
	.quad	0x3fe1512a20682ddc              # double 0.5411577828357923
	.quad	0x3fe707e5dae2e1af              # double 0.71971409560415178
	.quad	0x3febbcbf20bfbbcd              # double 0.8667903556469071
	.quad	0x3fd7450d0e6c6d42              # double 0.36358953865574872
	.quad	0x3fe5d38de93c04eb              # double 0.68207450440982365
	.quad	0x3feb11a179294856              # double 0.84590219177540393
	.quad	0x3fe70a7048e2dfdb              # double 0.72002424464789827
	.quad	0x3fd7e3d640bd9af8              # double 0.37328106233910274
	.quad	0x3fc43177f7fa1c90              # double 0.15775966270686981
	.quad	0x3fe8fbfd190032d3              # double 0.78076033480609863
	.quad	0x3fe40c2ee280c577              # double 0.62648720015401593
	.quad	0x3fd0f178945a93a8              # double 0.26473822105099964
	.quad	0x3fec17c12d05edf2              # double 0.87789973062120752
	.quad	0x3fac6b5e4dd81e00              # double 0.055506655695406693
	.quad	0x3fdf10478fbf901a              # double 0.48536862409514614
	.quad	0x3fe8f4a99101b340              # double 0.77986601182565352
	.quad	0x3fd7b447904125da              # double 0.37037839019157348
	.quad	0x3fe838c5328850c3              # double 0.7569299685442491
	.quad	0x3fe629f261168f64              # double 0.69262045824551111
	.quad	0x3f61f24e0fa96c00              # double 0.0021907353050614198
	.quad	0x3fe2b407e9be6c91              # double 0.58447642949194478
	.quad	0x3fe63f0fa4d9514e              # double 0.69519788929987114
	.quad	0x3fd04c1cfaafdbcc              # double 0.25464558106562829
	.quad	0x3fece5bb719bfacb              # double 0.90304348172488724
	.quad	0x3fe5801ddaeb9424              # double 0.67188923604829087
	.quad	0x3fc4625d6c263718              # double 0.15925185948111031
	.quad	0x3fdca84f371599ba              # double 0.44777279261907277
	.quad	0x3fd7612291d32058              # double 0.36530365219778593
	.quad	0x3fef1399945497dc              # double 0.9711425683096837
	.quad	0x3fefc0ac57a6956f              # double 0.99226967925339504
	.quad	0x3fc8ede8f2ebc5cc              # double 0.19476043568970025
	.quad	0x3fe349aae78e0d2f              # double 0.60274262643398469
	.quad	0x3fd46a23c95030b2              # double 0.31897825870033636
	.quad	0x3fd60a066c39bc9e              # double 0.34436188286685787
	.quad	0x3fe94dc2d1a780ad              # double 0.7907423109827697
	.quad	0x3fbceec8aa13bd48              # double 0.11301855232499236
	.quad	0x3fa94bdcc5cf5ed0              # double 0.049406909128888565
	.quad	0x3fee43fee4b65305              # double 0.94580025358536146
	.quad	0x3fec3a5cf0dd1926              # double 0.8821243957870919
	.quad	0x3fe096d22efb9b50              # double 0.51841077019057913
	.quad	0x3fe45e92ee865a64              # double 0.63654467188719055
	.quad	0x3fed1cc7dde1002e              # double 0.90976327262615597
	.quad	0x3fbe5e1a0bb72388              # double 0.11862337862034
	.quad	0x3fa6557dfcb61a40              # double 0.04362100324492646
	.quad	0x3fe3e5a25217d387              # double 0.62178150209239014
	.quad	0x3fe834c04f1f2f94              # double 0.75643935636024872
	.quad	0x3fcec6d105c8b7a0              # double 0.24044239790367516
	.quad	0x3fcba1387fe60560              # double 0.21585756535572909
	.quad	0x3fe630226545ea34              # double 0.69337577609923651
	.quad	0x3fd3d98ecf4d5ee8              # double 0.31015367740972843
	.quad	0x3fe56753c9572e01              # double 0.66886319469762168
	.quad	0x3fe04416ea7dfb53              # double 0.50831170844308315
	.quad	0x3fe7b4f1d1332aeb              # double 0.74083796367025678
	.quad	0x3fec49a56546f6cd              # double 0.88398999958709512
	.quad	0x3fe73f60d3cfd836              # double 0.7264866005850823
	.quad	0x3fefba7587e316f3              # double 0.99151112118189954
	.quad	0x3fef904e3d4ea52a              # double 0.98636543249191289
	.quad	0x3feb5b2391c8eeb4              # double 0.85487535928355962
	.quad	0x3fbf89ce761725a0              # double 0.12319651015345423
	.quad	0x3fb9a2d7fe91ba28              # double 0.10014104809827329
	.quad	0x3fe54f32e8d28eec              # double 0.66591783021109796
	.quad	0x3fce81e830eeb86c              # double 0.23833944691927245
	.quad	0x3fe3caf3adce10bf              # double 0.6185243982913774
	.quad	0x3fb98494b5ecb528              # double 0.099679274001307605
	.quad	0x3fe08c3199c9a2b0              # double 0.51711349522255112
	.quad	0x3faf7ec41ba9aba0              # double 0.061514023186496347
	.quad	0x3fc5028b8e563b70              # double 0.16414017152825577
	.quad	0x3feebf01cfa4ac0b              # double 0.96081629329035089
	.quad	0x3fcd4a136ad82ac0              # double 0.22882311551105339
	.quad	0x3fe175379d4be1c9              # double 0.54555874559360362
	.quad	0x3fa414c975e142a0              # double 0.039221091880454084
	.quad	0x3fe946eb4d98bb01              # double 0.78990712314211475
	.quad	0x3fd4caf7aacb7204              # double 0.32488815001650573
	.quad	0x3fb8fc2d26a37230              # double 0.097597906048982663
	.quad	0x3feea5f10481a88f              # double 0.95775652771159681
	.quad	0x3fef170c9dd9410e              # double 0.97156363324941863
	.quad	0x3fb5b9cca1716fa8              # double 0.084866322912999892
	.quad	0x3fd50f012d2ad352              # double 0.32904080782764311
	.quad	0x3fcc1bd75f1e6a8c              # double 0.21959964889977746
	.quad	0x3fcd54da8f0ce2b0              # double 0.22915203080062474
	.quad	0x3fe7cb0121b4a94a              # double 0.74353081305643198
	.quad	0x3f869064b3299c40              # double 0.011017595975500893
	.quad	0x3fed88815cc56004              # double 0.92291324729285451
	.quad	0x3feeca047d6486c4              # double 0.96216034403570249
	.quad	0x3fe63f4b6f94319e              # double 0.69522640030622873
	.quad	0x3fc0126989a3451c              # double 0.12556189747423552
	.quad	0x3fc312690a4ebc28              # double 0.14899933818148381
	.quad	0x3fb35bef335566c0              # double 0.075621557266823736
	.quad	0x3fe783fe407261d2              # double 0.73486244761721253
	.quad	0x3fe77180999647da              # double 0.73260526654689362
	.quad	0x3fd572227565a0b0              # double 0.33509122337865005
	.quad	0x3fef4572d8784db0              # double 0.97722761420521032
	.quad	0x3fec55bdd05d149e              # double 0.88546648689284146
	.quad	0x3fe59310b9f544eb              # double 0.67420231170595224
	.quad	0x3fd56dab34244d70              # double 0.33481865016911794
	.quad	0x3fe07a9acdc4437d              # double 0.5149663943176247
	.quad	0x3fe59739b62278f5              # double 0.6747101361577551
	.quad	0x3fe83634fe922142              # double 0.75661706658232952
	.quad	0x3fe3430c7c83b5c3              # double 0.60193466490971337
	.quad	0x3fecde6b6b1d0629              # double 0.90215083046513656
	.quad	0x3fecfff59f247ce8              # double 0.90624505121732302
	.quad	0x3fe6433e04fff6b1              # double 0.69570828415426977
	.quad	0x3fed41e1da2fe044              # double 0.91429226507808225
	.quad	0x3fdabe337c7dcaa6              # double 0.41785895497666059
	.quad	0x3fef20e25869f9c2              # double 0.97276417988160113
	.quad	0x3fd2ba24a307eb20              # double 0.2926112739657345
	.quad	0x3fd499a45cb4157c              # double 0.32187756589004102
	.quad	0x3fe3dbf144a24cb4              # double 0.62059844403338227
	.quad	0x3febcd4b261c57c0              # double 0.86881024783610172
	.quad	0x3fedbfa5b52ad551              # double 0.92964444526902856
	.quad	0x3fd80f97be8f5348              # double 0.37595170602189798
	.quad	0x3fc74665f34a2c30              # double 0.18183588389760663
	.quad	0x3fdcb7f67b99462c              # double 0.44872819967449362
	.quad	0x3fd801db61204acc              # double 0.37511333928084123
	.quad	0x3fc755d4fb520010              # double 0.18230688354015046
	.quad	0x3fdef9a2acf4a556              # double 0.48398653879356368
	.quad	0x3fa275296334c6b0              # double 0.036050122604490809
	.quad	0x3fc4f549f70c48d0              # double 0.16373562395944541
	.quad	0x3fd64acc63afbf48              # double 0.34831533179293617
	.quad	0x3fe91dc083d7c036              # double 0.7848818373731834
	.quad	0x3fb733d1c7f12c68              # double 0.09063445216558963
	.quad	0x3fd3f374e54ad9ec              # double 0.31173441306910266
	.quad	0x3fe2683df6c76dff              # double 0.57522485922839894
	.quad	0x3feaf828e449e5ee              # double 0.84279293620710205
	.quad	0x3f98934406908d40              # double 0.023999274159121287
	.quad	0x3fd22cb88fd5aa80              # double 0.28397954984999529
	.quad	0x3fd2a535449d696a              # double 0.29133350086853815
	.quad	0x3fe3600c4ef0a9bb              # double 0.60547461908327393
	.quad	0x3fd60f38b011f5bc              # double 0.34467904276229056
	.quad	0x3fd31c4286e68b04              # double 0.29859984563715636
	.quad	0x3fe314928a211807              # double 0.59626128176091775
	.quad	0x3fd90457d89b4a1e              # double 0.39089008477199794
	.quad	0x3fce36776c7d3c1c              # double 0.23603718564342635
	.quad	0x3fef14f6e9817078              # double 0.97130914312903282
	.quad	0x3fe91269f3be826c              # double 0.78349778753552135
	.quad	0x3fe9e57597a30859              # double 0.80926017395564565
	.quad	0x3fe41551a3974a96              # double 0.62760240508426324
	.quad	0x3fee1e85059b208a              # double 0.94122553915896501
	.quad	0x3fe34e3edde77796              # double 0.60330146160753162
	.quad	0x3fec0c9ad7c5aace              # double 0.87653867857928858
	.quad	0x3f9fe56a957c56c0              # double 0.031148591398127534
	.quad	0x3fe602ee465c197d              # double 0.68785775892392531
	.quad	0x3fe084c4796ed6e3              # double 0.51620696751953365
	.quad	0x3fcf926599b54a3c              # double 0.24665517812043614
	.quad	0x3fe644630fb7115f              # double 0.69584801740033331
	.quad	0x3fe26ac768a8fc7c              # double 0.57553453866411486
	.quad	0x3fe8e408a81324fd              # double 0.77783615901094516
	.quad	0x3fdec62043ec177a              # double 0.48084265358954037
	.quad	0x3fe247eb1306cba5              # double 0.57127908435937924
	.quad	0x3fe67b534a0a0508              # double 0.70255436383027448
	.quad	0x3febd7d7b9879bd0              # double 0.87009798275254902
	.quad	0x3fe807971b773850              # double 0.75092654575724715
	.quad	0x3fb1e4727158a8e8              # double 0.069892075226252737
	.quad	0x3fe9e6f6f6082fb3              # double 0.80944393208618803
	.quad	0x3fefd90d8c780df2              # double 0.9952457183393888
	.quad	0x3fe41a2c013920e5              # double 0.62819481123827059
	.quad	0x3fc80e498430a69c              # double 0.18793600992767245
	.quad	0x3fd16c1a49d5eecc              # double 0.27222306452288758
	.quad	0x3fd65a56fb34c8b6              # double 0.34926390201429613
	.quad	0x3fe0abd3cbdba803              # double 0.52097501579305605
	.quad	0x3fc1ac2a802e14bc              # double 0.13806658991612675
	.quad	0x3fda31a469dcf310              # double 0.40927992189590245
	.quad	0x3fa6080e9def82b0              # double 0.043030220774885719
	.quad	0x3fe720ad39256ee0              # double 0.72273884927150434
	.quad	0x3fe2f17c23e37c90              # double 0.59197813996788007
	.quad	0x3fc7acfe1db3fb9c              # double 0.18496681642861013
	.quad	0x3fdcf119c10b5848              # double 0.45221561290725676
	.quad	0x3fe6ab69b1c7d1ba              # double 0.70842442248117909
	.quad	0x3feae6923085c65f              # double 0.84064588048040523
	.quad	0x3fdb80f7ce35577c              # double 0.42974658143554456
	.quad	0x3f8debb3f7fc5600              # double 0.014609724049971184
	.quad	0x3fe7130e8803beb3              # double 0.72107626500470301
	.quad	0x3fcafa41bb9453d4              # double 0.21076223048353759
	.quad	0x3fdd219347d4c7da              # double 0.4551742745853723
	.quad	0x3fdca5ca2db5e3dc              # double 0.44761900390545661
	.quad	0x3fe750d3897af44a              # double 0.72861649371737625
	.quad	0x3fdebef988a339e6              # double 0.48040617316737977
	.quad	0x3fdd80be56b5c5c0              # double 0.46098288028505507
	.quad	0x3fe1244f088763e7              # double 0.53568221727175291
	.quad	0x3fe0695823b56b5e              # double 0.51285941099500199
	.quad	0x3fea08c8975f4df8              # double 0.81357221188449014
	.quad	0x3fdd9f2984a03ed6              # double 0.46283948852304257
	.quad	0x3fde4bfdfa1eefb4              # double 0.4733881895624521
	.quad	0x3fe1edbcbca27a70              # double 0.56027066080771526
	.quad	0x3fe06c447c7a4957              # double 0.51321625053450759
	.quad	0x3fa0fc23c9cadce0              # double 0.033173673994889574
	.quad	0x3fe4571a2a7bc3ab              # double 0.63563259408521355
	.quad	0x3fdd314ea45efb42              # double 0.45613447238786275
	.quad	0x3fec8a004738d022              # double 0.89184583578617471
	.quad	0x3fd38029cd3fbd40              # double 0.30469746631475303
	.quad	0x3fee25fe444f1740              # double 0.94213784543601519
	.quad	0x3feb7356b1724c88              # double 0.8578294244529312
	.quad	0x3fc7ff4d45226614              # double 0.18747869373037018
	.quad	0x3faadf22c36a7430              # double 0.052483641008827298
	.quad	0x3fd1f50825c6fedc              # double 0.28058055581275965
	.quad	0x3fcdfd31862f0668              # double 0.23428935100496351
	.quad	0x3fa9eadd9a738240              # double 0.050620007614047058
	.quad	0x3fd318ab9f556248              # double 0.29838076171794059
	.quad	0x3fee0800cb4db2db              # double 0.93847694118229741
	.quad	0x3fd6a88341569846              # double 0.35403519993485977
	.quad	0x3fec066c5a841734              # double 0.87578408888723524
	.quad	0x3feaab021d7deebc              # double 0.83337503204480567
	.quad	0x3fe83b189b058c93              # double 0.75721388127967015
	.quad	0x3fe9f13fccc57605              # double 0.81069936746979521
	.quad	0x3fe830d1618675a1              # double 0.75595921562096546
	.quad	0x3f9f5f3e42c01960              # double 0.030636761497612297
	.quad	0x3fdf7d4c42acbfa0              # double 0.49202257643900715
	.quad	0x3fc2b8e59b42a2e8              # double 0.14626760560101748
	.quad	0x3fef396ce6b909da              # double 0.97575993598030242
	.quad	0x3fe3bcfa806c53b5              # double 0.6168186672463124
	.quad	0x3fe38fc4b13879ac              # double 0.61129984486961098
	.quad	0x3fba993a526392f8              # double 0.10390057097863437
	.quad	0x3fb006f2fe194d58              # double 0.06260603622040628
	.quad	0x3fe788f8963beeec              # double 0.73547009794807883
	.quad	0x3fe4d0ae98935f5e              # double 0.65047387885986629
	.quad	0x3fea7b9bf1e54ea1              # double 0.82758900876293151
	.quad	0x3fec530ff1655209              # double 0.88513943812955731
	.quad	0x3fd6ca6d1179de02              # double 0.3561051054634562
	.quad	0x3fe52748bbe27597              # double 0.66104542442524206
	.quad	0x3fe6ce5447f1b2aa              # double 0.71268667270267838
	.quad	0x3fe1a1655ebd1c6d              # double 0.55095165733008644
	.quad	0x3fe7945757e57633              # double 0.73685805480244537
	.quad	0x3feee5b61e3cbef9              # double 0.96554094224663267
	.quad	0x3fd648c8b1318aee              # double 0.34819237999015129
	.quad	0x3fb802bbe4804d78              # double 0.093791716848775297
	.quad	0x3fdd82ed2fe182e2              # double 0.46111612010831327
	.quad	0x3fc12c069fc1eecc              # double 0.1341560630861437
	.quad	0x3febfd4e963f4714              # double 0.87467126221801771
	.quad	0x3fe8c894a2f3f0b7              # double 0.77448493792282747
	.quad	0x3fbbd3e028cac090              # double 0.10870171543024498
	.quad	0x3fe3b598c248daef              # double 0.61591756769379724
	.quad	0x3fe4094590af4552              # double 0.62613180407258029
	.quad	0x3fe3aa87c57baa86              # double 0.61456669398224117
	.quad	0x3f95ffb6385154c0              # double 0.021483275592193207
	.quad	0x3febe838c179624b              # double 0.8720973757545577
	.quad	0x3fab44491502f500              # double 0.053255351843725762
	.quad	0x3fc2d4ccee76c82c              # double 0.14711915630101779
	.quad	0x3fc2f1878193ea80              # double 0.14799588992157808
	.quad	0x3fd8caf25429dc78              # double 0.38738687724202903
	.quad	0x3fd0b7303ac49eec              # double 0.26118093241755846
	.quad	0x3f8c6794682191c0              # double 0.013869437625722791
	.quad	0x3fc6dcfacb7fbb98              # double 0.17861876427147361
	.quad	0x3fc3ce69defe9e8c              # double 0.15473674190910847
	.quad	0x3fd2a9a10996e0f0              # double 0.2916033357282819
	.quad	0x3fe542e5c7286ea2              # double 0.66441620729479589
	.quad	0x3fe818bf5a68f3d5              # double 0.75302093179890994
	.quad	0x3fec24dbe6dda3cf              # double 0.87949938860867316
	.quad	0x3fd79ac301e1a364              # double 0.36882090743761453
	.quad	0x3fbe3f74c75e6860              # double 0.11815576426889285
	.quad	0x3fe219d19d22458d              # double 0.56565170946321219
	.quad	0x3fe5708ab256659f              # double 0.66998801070728919
	.quad	0x3feba93e5c5b187d              # double 0.86440961874247046
	.quad	0x3fdaa344bb6646ac              # double 0.41621511746152851
	.quad	0x3fe7a9c75b3b7222              # double 0.73947494334021635
	.quad	0x3fec4c43aadf7170              # double 0.88430961011503761
	.quad	0x3fe0305927b22ed8              # double 0.50590188744669273
	.quad	0x3fe0f0fbdab6284c              # double 0.52941696850872111
	.quad	0x3fe16cca79a72648              # double 0.54453014145219303
	.quad	0x3feaffb9db0ac5bc              # double 0.84371655255943478
	.quad	0x3fe1bb6e8c6f83bf              # double 0.55412986210659898
	.quad	0x3fccf7a1e685eacc              # double 0.22630714183818268
	.quad	0x3fe654c77a9c8371              # double 0.69784902522597581
	.quad	0x3fd3ef21d9402cfc              # double 0.31147047248732895
	.quad	0x3fd2abb03c46fba6              # double 0.29172902952626101
	.quad	0x3fe22a50ba0064aa              # double 0.56766544655251505
	.quad	0x3fe398c0f7221acc              # double 0.61239670055587103
	.quad	0x3fed213756e6ab27              # double 0.9103047082220187
	.quad	0x3fd9624e97d90d08              # double 0.39662518338100528
	.quad	0x3fd65a389a15a5d4              # double 0.34925665900536029
	.quad	0x3fc545aaddc50308              # double 0.16618858173935558
	.quad	0x3fe06987ea18ff9c              # double 0.51288219186971018
	.quad	0x3fa9669e0ea93720              # double 0.049611033715889485
	.quad	0x3fd4d3a46fcaefa8              # double 0.32541762273080588
	.quad	0x3feaeb3817633956              # double 0.8412132698811472
	.quad	0x3fdc5e91e8cf7312              # double 0.4432720922030039
	.quad	0x3fd64a8fa8e9f51c              # double 0.34830085273263633
	.quad	0x3fe04f7733d83824              # double 0.50970039487743124
	.quad	0x3fefdf97673b5d45              # double 0.99604387438277142
	.quad	0x3faf72d90e6cc950              # double 0.061423094759805452
	.quad	0x3fac96242019ff80              # double 0.055832985800406298
	.quad	0x3f8bda8b758e1cc0              # double 0.013600434803960559
	.quad	0x3fb886ddffd17018              # double 0.095807909923167123
	.quad	0x3fed27aa85876a81              # double 0.91109205322148068
	.quad	0x3fe1413339f712b8              # double 0.53920899697603542
	.quad	0x3fa70d0ffe400e40              # double 0.045021533762362953
	.quad	0x3fede90e3a523de0              # double 0.93469916716452061
	.quad	0x3fea066ee6ff3b6d              # double 0.81328530422784484
	.quad	0x3fdba49d580fcf88              # double 0.43192227935582439
	.quad	0x3fbe51e6fc0d46c0              # double 0.11843722966775783
	.quad	0x3fb25a519eac3698              # double 0.071690655935720549
	.quad	0x3fdb3f5f4b910fa8              # double 0.42574293498568716
	.quad	0x3fdaeab655773bf4              # double 0.42057569834008679
	.quad	0x3fed580b0591b8bb              # double 0.91699744308223019
	.quad	0x3fe64e9530a24862              # double 0.69709262369930181
	.quad	0x3fc0e208e349b8dc              # double 0.13189803216977836
	.quad	0x3fe4da7e77fbba65              # double 0.65167163309326936
	.quad	0x3fd99d8e34d57a64              # double 0.40024142417488506
	.quad	0x3fe6517e5aa78570              # double 0.69744794565137447
	.quad	0x3fe3146466dd9000              # double 0.59623928156770489
	.quad	0x3fe34f0f46e613c9              # double 0.60340083930406607
	.quad	0x3fd4de1955016f4e              # double 0.32605584431961609
	.quad	0x3fe11b374dfa0f4f              # double 0.53457226972430216
	.quad	0x3fec46ba37228b02              # double 0.88363371628324239
	.quad	0x3fbb8a0b06bf1c68              # double 0.1075751201125158
	.quad	0x3fdc455c302b83da              # double 0.44173340515231774
	.quad	0x3fd82cf3af6b506e              # double 0.37774364596157894
	.quad	0x3fea5685df32b842              # double 0.8230618819559441
	.quad	0x3fe0f8cf72993b12              # double 0.53037235624819545
	.quad	0x3fd33897cdb447f4              # double 0.30032916153243083
	.quad	0x3feeba565879c8ab              # double 0.96024625091947279
	.quad	0x3fa0dab46960be50              # double 0.032918584693444886
	.quad	0x3fe8cbd0208ad8cd              # double 0.77487951618129502
	.quad	0x3fe963f699684260              # double 0.79345254862171188
	.quad	0x3fe316eadae4e1e8              # double 0.59654753449200104
	.quad	0x3fe5cd1658816654              # double 0.68128506933426047
	.quad	0x3fe358c74472af32              # double 0.60458720558879109
	.quad	0x3fe13698f35bc06f              # double 0.53791472941339957
	.quad	0x3fba6f114eb9d230              # double 0.10325725719469214
	.quad	0x3fef80917d8afd32              # double 0.9844443752298615
	.quad	0x3fefcf292b8f3fb5              # double 0.99403818614700034
	.quad	0x3fe35a98bd77ba04              # double 0.60480916028410592
	.quad	0x3fe7fdf3f83296c5              # double 0.74975012279602338
	.quad	0x3fbf2ab8e3d17a30              # double 0.12174563943833827
	.quad	0x3febd26e7cc1aeda              # double 0.86943745008963025
	.quad	0x3fde96722bd09960              # double 0.47793249396126747
	.quad	0x3fe7991a4861d862              # double 0.73743929040098188
	.quad	0x3fe0db0c3aa36c0f              # double 0.52673922970586939
	.quad	0x3fe225e18171058b              # double 0.5671241310266607
	.quad	0x3fef6f06348d7d1e              # double 0.98230276359746305
	.quad	0x3fbfc4709643e280              # double 0.12409118336280223
	.quad	0x3fe405ec0cb42615              # double 0.62572290879433246
	.quad	0x3febceb2118bc54d              # double 0.86898139407109343
	.quad	0x3fc9575217b0d388              # double 0.19797731549047293
	.quad	0x3fe3facca81a89c2              # double 0.62436516602274872
	.quad	0x3fedb9cb2b6d051f              # double 0.92892988664258158
	.quad	0x3fcc64dc5f7ba774              # double 0.22182802831894899
	.quad	0x3fce3432230d3a8c              # double 0.23596789084918546
	.quad	0x3fd6939fa708b048              # double 0.35276023208530605
	.quad	0x3fe59cb6401dd1ec              # double 0.67537987253905163
	.quad	0x3fdeaf7a8b7624bc              # double 0.47946036929404179
	.quad	0x3fd87f48c8973c20              # double 0.38276881779614946
	.quad	0x3fed16bb08b8e8c2              # double 0.90902473167013675
	.quad	0x3fedae96d3af6423              # double 0.9275621542429956
	.quad	0x3fdcf24134e057d8              # double 0.45228605426507107
	.quad	0x3fbd8baa70b5f770              # double 0.11541238071182902
	.quad	0x3fd60b197ac9ae4e              # double 0.3444274615382924
	.quad	0x3fdbe20b4e20c85a              # double 0.43567164067929343
	.quad	0x3fa116ea9a1e5b60              # double 0.033377963364890517
	.quad	0x3febb4241eb2b1c0              # double 0.8657398795672222
	.quad	0x3fd538e65a98e23a              # double 0.33159788939841273
	.quad	0x3fd3f350af02c3b6              # double 0.31172577944658586
	.quad	0x3fcd4dcce1413db8              # double 0.22893677710315585
	.quad	0x3fc88a571bf5ecc4              # double 0.1917218100096304
	.quad	0x3fef08ad78430925              # double 0.96980927933353611
	.quad	0x3fe3e5960d9e5e41              # double 0.62177565250289757
	.quad	0x3fde3eb14e40191e              # double 0.47257645265234938
	.quad	0x3f7d06283cf4fa00              # double 0.007085950069550595
	.quad	0x3fe606629e4bba2f              # double 0.68827944676542596
	.quad	0x3feb3b0fd629f5bf              # double 0.85095969990623377
	.quad	0x3fbb7aa524cfde20              # double 0.10734016560297066
	.quad	0x3fe37f032be5fcb3              # double 0.60925444196609246
	.quad	0x3fe76a9c79a3971b              # double 0.73176406629201851
	.quad	0x3fd79b02169aa3bc              # double 0.36883594710758039
	.quad	0x3fc6c735e3a55094              # double 0.1779544221450392
	.quad	0x3fe556b2a3354848              # double 0.66683322788799959
	.quad	0x3fc55dbd68f18570              # double 0.16692321418944855
	.quad	0x3febcd8d8af17a0b              # double 0.86884190690381169
	.quad	0x3fe8cd9168b93b32              # double 0.77509375051326956
	.quad	0x3f910f984417d3e0              # double 0.016661051899024559
	.quad	0x3fe27b18baad0140              # double 0.57752644024007083
	.quad	0x3fedea07e58dad17              # double 0.93481821856167613
	.quad	0x3fe05c2d436806ce              # double 0.51125205197623713
	.quad	0x3fc465bbd5f73360              # double 0.15935466716328062
	.quad	0x3fd81a1191b8342e              # double 0.37659110289024766
	.quad	0x3fe0abc6d26a8a71              # double 0.52096882912549181
	.quad	0x3fcae50c9288f190              # double 0.21011502413774652
	.quad	0x3feb4c3a79512f7f              # double 0.85305522627594133
	.quad	0x3fe264ac36229267              # double 0.57478914807559256
	.quad	0x3fda43f0b3374d8a              # double 0.41039674283566596
	.quad	0x3fe32cdcd5c966c0              # double 0.59922639613360928
	.quad	0x3f7c6f16ca4fab00              # double 0.0069418802495231358
	.quad	0x3fcdfd33bfc77000              # double 0.23428961624347266
	.quad	0x3fe6dc72ab2dff90              # double 0.71441014703303729
	.quad	0x3fe8d124cf27f412              # double 0.77553024730844045
	.quad	0x3feeed9d97fe389f              # double 0.96650581060545792
	.quad	0x3f8bcea0893c2000              # double 0.013577703655315077
	.quad	0x3fe1f0f41298bf06              # double 0.56066325790558902
	.quad	0x3fe386d3625aa7be              # double 0.61020821771420919
	.quad	0x3fe9a8ee81e35a1b              # double 0.80187154167907992
	.quad	0x3fdbc5bef3f17550              # double 0.43394445250108493
	.quad	0x3fddbbae9acdd138              # double 0.464580203223949
	.quad	0x3fe7b45bce7e91eb              # double 0.74076643305721512
	.quad	0x3fec590878668463              # double 0.88586829677309387
	.quad	0x3fe8ff47ddb78f68              # double 0.7811621981058865
	.quad	0x3fc6d7d4bffedf28              # double 0.17846164107117457
	.quad	0x3fdcccc80b143ec4              # double 0.44999886590902016
	.quad	0x3febe6d20643cd88              # double 0.87192631934742426
	.quad	0x3fe7682124eb5e1f              # double 0.7314611168939712
	.quad	0x3fed250ea05cdb8f              # double 0.91077357598156705
	.quad	0x3fe147de63f66bda              # double 0.54002303623144177
	.quad	0x3febb7d6c8ed1d71              # double 0.86619128459362404
	.quad	0x3fd59f9ba98f9574              # double 0.33786670263938068
	.quad	0x3fd7599ac967add2              # double 0.36484403294045109
	.quad	0x3fe5a911e4365e09              # double 0.67688841412285783
	.quad	0x3fdab496f3758d96              # double 0.41727231765090644
	.quad	0x3fd0bd53d63a7490              # double 0.26155563278900562
	.quad	0x3fe0aa97bdb27f11              # double 0.52082430887455378
	.quad	0x3feb3dbf1fe22352              # double 0.85128742434708671
	.quad	0x3fd7c1b8125e6dbe              # double 0.37119867128214057
	.quad	0x3fdf11c624893bd0              # double 0.48545983856177788
	.quad	0x3fe48ca360a376a0              # double 0.64216774821007405
	.quad	0x3fd883fdf11332ba              # double 0.38305614988784564
	.quad	0x3fe347975418ce7b              # double 0.60248915124107272
	.quad	0x3fdd3a2036d9a9ee              # double 0.45667271954030653
	.quad	0x3fe05d10345e020d              # double 0.51136026599857731
	.quad	0x3fde737665c4542a              # double 0.47579727113890391
	.quad	0x3fdd24c23ca245a4              # double 0.4553685752990424
	.quad	0x3fdc86ee6669c488              # double 0.44573554993900943
	.quad	0x3fee699bc0e256fe              # double 0.95039165184672902
	.quad	0x3fd578bc732b99e4              # double 0.33549414870358718
	.quad	0x3fe35e69011b3810              # double 0.60527467933730073
	.quad	0x3fe1c58fb1c435af              # double 0.55536637039192793
	.quad	0x3fe92d2d7bfea715              # double 0.78676485269281449
	.quad	0x3fd4325fa2ef7ec0              # double 0.3155745593230499
	.quad	0x3fecaf3f0462b136              # double 0.89639235359712788
	.quad	0x3fe67176c590b6ae              # double 0.70135058009119233
	.quad	0x3fe072500308df2e              # double 0.51395416825014251
	.quad	0x3fd963e39b99c698              # double 0.39672174640063806
	.quad	0x3fcd88d336bf90a4              # double 0.23073806927925944
	.quad	0x3fb3bdeb2a3886f0              # double 0.077116678054632847
	.quad	0x3fdbfbbc9ec05f1c              # double 0.4372397947604314
	.quad	0x3fe161f1ee6eaa34              # double 0.54320618218236527
	.quad	0x3feeea1fd14fcefb              # double 0.96607962495042387
	.quad	0x3fd84673ede03b82              # double 0.37930010061329977
	.quad	0x3fddfa92f2333942              # double 0.46841882374146249
	.quad	0x3fdaf0d7ecfb4782              # double 0.42094991820078331
	.quad	0x3fe395df1f80cc17              # double 0.61204486992790208
	.quad	0x3fcfcced083cc28c              # double 0.24844134237493554
	.quad	0x3fe7c7a02d27fcc0              # double 0.74311837024279015
	.quad	0x3fd4d523f5649826              # double 0.32550906147150938
	.quad	0x3fcc55607011ce58              # double 0.22135549041887503
	.quad	0x3fe0c8b3633a0237              # double 0.52449960117525662
	.quad	0x3fe83082cadb5387              # double 0.75592174168069526
	.quad	0x3fe4cda4c9c74a95              # double 0.65010299119815562
	.quad	0x3fe7b1f093dc6f4c              # double 0.74047116164317961
	.quad	0x3f9619a1be00b2e0              # double 0.021582152578207281
	.quad	0x3fb9d06d0dcf63d8              # double 0.100836578246699
	.quad	0x3feb11571740cd32              # double 0.84586672345759539
	.quad	0x3fd88acda7692a9c              # double 0.38347188328467907
	.quad	0x3f904baa42dd3560              # double 0.015913639384327438
	.quad	0x3fcd1387ecbe0d1c              # double 0.22715853748022929
	.quad	0x3fd2bab1762a7282              # double 0.29264484920148714
	.quad	0x3fea1f719022ca17              # double 0.81633833076040474
	.quad	0x3fe53596530703b8              # double 0.66279140678681525
	.quad	0x3feee0c963f1fe9f              # double 0.96493978043141115
	.quad	0x3fc41175e1b03fd8              # double 0.15678285140938786
	.quad	0x3fe758dbe7660185              # double 0.72959704585086682
	.quad	0x3fefd7058633a116              # double 0.99499775134339319
	.quad	0x3fd5f040050b8cae              # double 0.34278870098769232
	.quad	0x3fef0912b4fd729b              # double 0.96985755300154907
	.quad	0x3fc650629e674cd8              # double 0.17432816252276129
	.quad	0x3fbb82394851f178              # double 0.10745580688121048
	.quad	0x3feb7521edaa9f88              # double 0.85804840487706802
	.quad	0x3feedcbe7a25fda3              # double 0.96444629532918602
	.quad	0x3fb21f8dbd8cd058              # double 0.070793970848911925
	.quad	0x3fe1de857c3a6c26              # double 0.55841326011011883
	.quad	0x3fc98f61992fd2dc              # double 0.19968814830612913
	.quad	0x3fee598f9f807615              # double 0.94843274262138044
	.quad	0x3f7522db1c4be380              # double 0.0051601943021005736
	.quad	0x3feb346e10615e2d              # double 0.85015013884816926
	.quad	0x3f76889a1c7e4b80              # double 0.0055013675663698747
	.quad	0x3fc3eb8e4cbc8f08              # double 0.15562609431173535
	.quad	0x3fe3fb8dd4235a87              # double 0.62445727761480974
	.quad	0x3f9350092a6ace80              # double 0.018859999860707521
	.quad	0x3fc3922e784a30a0              # double 0.15289860604787453
	.quad	0x3feb5d45e87dd39e              # double 0.85513587387559986
	.quad	0x3fe0ee43c73dbf54              # double 0.52908505358025559
	.quad	0x3fee6e9319858719              # double 0.95099787697492666
	.quad	0x3feb3f83dd64c44d              # double 0.85150330773297755
	.quad	0x3fd7d264d3949806              # double 0.37221642172005465
	.quad	0x3fa34851234ca180              # double 0.037661109503747348
	.quad	0x3fbffc8a060cf410              # double 0.12494719169349389
	.quad	0x3fdf4a43ef4ae1f4              # double 0.48890779846581656
	.quad	0x3fc6dc5d521c04b0              # double 0.17859999188661879
	.quad	0x3feec34e18a8f990              # double 0.9613409501687773
	.quad	0x3fdc7796b7267150              # double 0.44479911695249985
	.quad	0x3fdb6efb6ea906d8              # double 0.42864881331125337
	.quad	0x3fcc8e20222bce64              # double 0.22308732670318243
	.quad	0x3fe66f4b65286995              # double 0.70108575589556443
	.quad	0x3fc9c498c0b3eee4              # double 0.20131215485877541
	.quad	0x3fe06c816f8521f5              # double 0.51324531346568725
	.quad	0x3fda36b192d44eda              # double 0.40958823527146893
	.quad	0x3fe18eb07eda4405              # double 0.54866814399622454
	.quad	0x3febfaa3324f7d34              # double 0.8743453962924037
	.quad	0x3fd169469a35523e              # double 0.27205052432444521
	.quad	0x3fc7ccbb6bc000e8              # double 0.18593542824965614
	.quad	0x3fec240473523688              # double 0.87939665340100337
	.quad	0x3fee650efbf3e46c              # double 0.94983624658119714
	.quad	0x3fbdcd28facc6340              # double 0.11641174433715396
	.quad	0x3fe41cef6c13b359              # double 0.62853213413982723
	.quad	0x3fed65d5c07ed463              # double 0.91868102642787297
	.quad	0x3fed18c99b56c177              # double 0.90927582111002792
	.quad	0x3fd56fabfd7bd69a              # double 0.33494090799590881
	.quad	0x3fefd54ba67a82c6              # double 0.99478704943984364
	.quad	0x3fb25c52ed9ca178              # double 0.071721251497938954
	.quad	0x3fe09c44b02bf3b6              # double 0.51907572182209694
	.quad	0x3f9a11f5b77ebd40              # double 0.025459136318827236
	.quad	0x3fead8194d77b96b              # double 0.83887925272374042
	.quad	0x3feef3f08d93808f              # double 0.96727779056165441
	.quad	0x3fe73cb278277d64              # double 0.72615931956890423
	.quad	0x3fd52cf1bec36404              # double 0.33086818341467983
	.quad	0x3fca15189d0d6e38              # double 0.20376880329682634
	.quad	0x3fe6b90daf32ae65              # double 0.71008953302721223
	.quad	0x3fea3d26a6886fe9              # double 0.8199647190663174
	.quad	0x3fd8f1060d7bd93c              # double 0.38971091572547656
	.quad	0x3fd8bd7376cafb7a              # double 0.3865631733023559
	.quad	0x3fcff6f905c93bc4              # double 0.24972451002619611
	.quad	0x3fefaf5f5a10bbad              # double 0.99015777197734211
	.quad	0x3fe1611a7674a291              # double 0.54310343871937239
	.quad	0x3fb339160a2c6e98              # double 0.07508981464746467
	.quad	0x3fc2d7a4d4e34acc              # double 0.1472059287539963
	.quad	0x3fe499e57947331c              # double 0.64378617941983718
	.quad	0x3fd8182854cdb394              # double 0.37647445947259794
	.quad	0x3fa2976a741d2540              # double 0.03631146113782302
	.quad	0x3fd347298a059a3e              # double 0.30121839979839027
	.quad	0x3fd704dd3467b4ce              # double 0.35967187993703653
	.quad	0x3fef29b766e5f27a              # double 0.97384233567534229
	.quad	0x3fef45195ff4e807              # double 0.97718495122467252
	.quad	0x3fed035adf384497              # double 0.90665954206100963
	.quad	0x3fe19b202332a5d0              # double 0.55018622278765328
	.quad	0x3fe0640d11cc8d1d              # double 0.51221326328633021
	.quad	0x3fe222f4bde3c780              # double 0.56676709258884728
	.quad	0x3fd6823ad615e15c              # double 0.35169859797271896
	.quad	0x3fe2519e35ea40ad              # double 0.57246313600810128
	.quad	0x3fa280903f477ed0              # double 0.036137111401101429
	.quad	0x3fe0f8433f20e2f7              # double 0.53030550317552538
	.quad	0x3fb6de2a882f5840              # double 0.089327486274982881
	.quad	0x3fe5cd8e8eaaadd6              # double 0.68134239067642954
	.quad	0x3fe94ee985dfff5f              # double 0.79088283679446281
	.quad	0x3fe1a0d56292b39e              # double 0.55088299992131673
	.quad	0x3fb23cc36f3de960              # double 0.071239676149990938
	.quad	0x3feb892d55e0d5ba              # double 0.86049525044534581
	.quad	0x3fdcb4f2b60b4fe2              # double 0.44854419496300413
	.quad	0x3fe9c6744d780ab8              # double 0.80547537928244761
	.quad	0x3fb5085f1c741068              # double 0.082158989378571357
	.quad	0x3fb932b6a5fe0808              # double 0.098430076146570511
	.quad	0x3fefe48ad34896b5              # double 0.99664822832411081
	.quad	0x3fec1778dbc0eebc              # double 0.87786524696954115
	.quad	0x3fa96c55d74b0750              # double 0.049654657870191188
	.quad	0x3fe5f8ec6537a996              # double 0.6866361596014936
	.quad	0x3fc08ae9f95d3acc              # double 0.12923931766495966
	.quad	0x3fe6990aa9b32d53              # double 0.70618184227479686
	.quad	0x3fde4cdd523e5a60              # double 0.47344143897627156
	.quad	0x3fe20b2097222154              # double 0.56385831373430984
	.quad	0x3fb2cd65a1ca00d0              # double 0.073446609496389259
	.quad	0x3fdb141e03ed4a3a              # double 0.42310285933959657
	.quad	0x3fea2de22882582f              # double 0.81810100471444069
	.quad	0x3fda95d8ca211b22              # double 0.41539592494193489
	.quad	0x3fdbf627e648a49e              # double 0.43689916123055095
	.quad	0x3fd2cbc566c4820a              # double 0.29368720088862743
	.quad	0x3fe7e64782489bbe              # double 0.74686026998539723
	.quad	0x3fe71528d7029971              # double 0.72133295053644819
	.quad	0x3fd6168bb51ba5c8              # double 0.34512608228996244
	.quad	0x3fe007ef411dda87              # double 0.50096857755745894
	.quad	0x3fed7a766c29ed2c              # double 0.92119904638039917
	.quad	0x3fc3c244b7db0358              # double 0.15436610200233747
	.quad	0x3fd95d77dac63c50              # double 0.39632984509166125
	.quad	0x3fd5df993c515630              # double 0.3417723740616081
	.quad	0x3fe2d5ed82ee699b              # double 0.58861423084754294
	.quad	0x3fc84691f7c065f0              # double 0.1896536311840431
	.quad	0x3fe3b6d7628d6c12              # double 0.61606950043221986
	.quad	0x3feabdb35c142838              # double 0.83565681442383433
	.quad	0x3fe2f05ef2d44091              # double 0.59184214999733531
	.quad	0x3fcd0b36c5a3e920              # double 0.22690472269443607
	.quad	0x3fe7b6b40a73aa52              # double 0.74105264703150397
	.quad	0x3fe3a925c8ee601e              # double 0.61439790005079309
	.quad	0x3fef128dda3ee4a3              # double 0.97101490617855679
	.quad	0x3feeebf1ca005210              # double 0.96630181744927945
	.quad	0x3fe32c749358d381              # double 0.59917668131548407
	.quad	0x3feebacea0460e63              # double 0.96030360511253964
	.quad	0x3fe822572aa33140              # double 0.7541919548762408
	.quad	0x3fc704ec927da6f8              # double 0.17983777191994199
	.quad	0x3fee8cbf3fc2c810              # double 0.95468103841108309
	.quad	0x3fe57f6643b2d5e2              # double 0.67180169317606109
	.quad	0x3fbceb9462f22c58              # double 0.11296965995477259
	.quad	0x3feba0d4bf8c73c6              # double 0.86338269626468711
	.quad	0x3fc915a690430df8              # double 0.19597322505988735
	.quad	0x3fd220b62d63a038              # double 0.28324655945334909
	.quad	0x3fd8910a44d2356c              # double 0.38385254593671081
	.quad	0x3fed97cb64c3b7f6              # double 0.92477960281917038
	.quad	0x3fe78c27334fb5f0              # double 0.73585853597404416
	.quad	0x3feb8cfe62afa70a              # double 0.86096114420544834
	.quad	0x3fb617498759b248              # double 0.086292834801221407
	.quad	0x3fdb9a6b4561c474              # double 0.43129998946739723
	.quad	0x3fd72fc7b9f45970              # double 0.36229127082460533
	.quad	0x3fccfac549e4631c              # double 0.22640291316999928
	.quad	0x3f88d5199e02b740              # double 0.012125206122017951
	.quad	0x3fecf0c8a8514545              # double 0.90439255594734702
	.quad	0x3fed0aa05e05c594              # double 0.90754717220095182
	.quad	0x3fdea75c17cbcd86              # double 0.47896482776487692
	.quad	0x3fe1aaa6565ef494              # double 0.5520812689716359
	.quad	0x3fe871b477db1ca2              # double 0.76387999924999783
	.quad	0x3fe38998158e3032              # double 0.61054615221065078
	.quad	0x3fe771208446ab2a              # double 0.73255945048490401
	.quad	0x3fe9603c15e97850              # double 0.79299740104375793
	.quad	0x3febe49ef0e3d3af              # double 0.8716578202134907
	.quad	0x3fdc573a238c4950              # double 0.44282391997798687
	.quad	0x3fe5e6240cea1255              # double 0.68434336206753221
	.quad	0x3fed1e0085b0dec3              # double 0.90991235839370466
	.quad	0x3fc67a52f88b9fbc              # double 0.17560803543096692
	.quad	0x3fc72a6dcab62434              # double 0.18098232648870438
	.quad	0x3fc888b708851554              # double 0.19167220989235523
	.quad	0x3fda48223e035a7e              # double 0.41065269523588899
	.quad	0x3feb79396c6373fa              # double 0.85854788941980975
	.quad	0x3fdddc5fb6fde1d6              # double 0.46657555456434119
	.quad	0x3fde7d3c732af9a0              # double 0.47639380690443467
	.quad	0x3fe34b4264cb91c0              # double 0.60293693243561819
	.quad	0x3fd96a2e405edce2              # double 0.39710575376689239
	.quad	0x3fdc46d703aaa6ca              # double 0.44182372434680117
	.quad	0x3fd2f98d9edf44c8              # double 0.29648151888711682
	.quad	0x3fe0d82c30d9a031              # double 0.52638825932536382
	.quad	0x3fbdd6f56e364018              # double 0.11656125965805619
	.quad	0x3fd934129c88b728              # double 0.39380326544311339
	.quad	0x3fe5e6e38fc660a2              # double 0.68443468171155453
	.quad	0x3fd6bc4c95f66dbc              # double 0.35524286885057754
	.quad	0x3fb612e083924be0              # double 0.086225540277424795
	.quad	0x3fb52fd18494de48              # double 0.082760901325735436
	.quad	0x3fab90a0bf713960              # double 0.053837798470896869
	.quad	0x3fe5b1fb871dc87d              # double 0.67797638311300512
	.quad	0x3fc4bd8272824444              # double 0.16203337279560703
	.quad	0x3fe0735aa748b9eb              # double 0.51408131287263126
	.quad	0x3fefd8d14576104d              # double 0.99521697584760604
	.quad	0x3fedadf965bed027              # double 0.92748708603040064
	.quad	0x3fe5dacef3e81af6              # double 0.68296001089114955
	.quad	0x3fdb03acb898b5a0              # double 0.42209928538326302
	.quad	0x3fcdf87cdd969494              # double 0.23414574451195291
	.quad	0x3fe83ba0a0cd4262              # double 0.7572787418994944
	.quad	0x3fd7792c1419846a              # double 0.36677076304301315
	.quad	0x3fa1e6c8aab70760              # double 0.034963866080501615
	.quad	0x3fda8c278c2b885c              # double 0.41480435074311628
	.quad	0x3fd01154dd526348              # double 0.25105783093890865
	.quad	0x3fde31a759141be0              # double 0.47178062151982481
	.quad	0x3feb1dd9d2996521              # double 0.84739390499740719
	.quad	0x3fdfcb5679f35634              # double 0.49678575429183813
	.quad	0x3fca1392df096444              # double 0.20372234240019982
	.quad	0x3fef3fe8ae90bf34              # double 0.9765513810616313
	.quad	0x3fe06abd54f1fb55              # double 0.513029733570742
	.quad	0x3fef041f6526b334              # double 0.96925325161064401
	.quad	0x3fe415005b73f72c              # double 0.62756364690696875
	.quad	0x3feb4f5e0bcb0e4a              # double 0.85343839934689325
	.quad	0x3fed0f87299aa535              # double 0.90814550519750148
	.quad	0x3fc8b27438d8f944              # double 0.19294598365554283
	.quad	0x3f8ef6d0ad604e00              # double 0.01511920003034728
	.quad	0x3fe4fd2d40d03cb5              # double 0.65590536745903327
	.quad	0x3fed9224e3c2ab82              # double 0.92408985599955451
	.quad	0x3fd6d43625415dfc              # double 0.35670236242501097
	.quad	0x3febac2074f7583a              # double 0.86476157040556889
	.quad	0x3fea93c1e9d3a121              # double 0.83053680104515959
	.quad	0x3fe0d7466ab389f5              # double 0.52627869453527742
	.quad	0x3fe3cd497d9f72ec              # double 0.61880945716583602
	.quad	0x3fe137e15d45b4e6              # double 0.5380713292812771
	.quad	0x3fce66fa84759e1c              # double 0.23751765697237281
	.quad	0x3fcb1998c65a0320              # double 0.21171865162980286
	.quad	0x3fe0441210fede75              # double 0.50830939597558589
	.quad	0x3fe6b617363135d2              # double 0.70972786507052832
	.quad	0x3fd3cc08ac374264              # double 0.30932823961214795
	.quad	0x3fe032fa8bcd4711              # double 0.50622298531581766
	.quad	0x3fed74cf0ef21ad9              # double 0.92050888938032494
	.quad	0x3fb9973ef4b77dd0              # double 0.099964079613975131
	.quad	0x3f7395a5c96a5800              # double 0.0047813869520236807
	.quad	0x3fe6e7a4b0ffc2be              # double 0.71577677316789567
	.quad	0x3fe6a93a30313b41              # double 0.70815762913284896
	.quad	0x3fa3abec435e7580              # double 0.038421042655708781
	.quad	0x3fee57368b1f8224              # double 0.94814612553097221
	.quad	0x3fda829f111cb2c6              # double 0.41422249480346485
	.quad	0x3fc8dac97701a930              # double 0.19417684851516404
	.quad	0x3feee998bd1ecfa9              # double 0.96601521432466086
	.quad	0x3fe0d07646f25b6a              # double 0.5254470239332083
	.quad	0x3fe162320a17e3b1              # double 0.54323675128318005
	.quad	0x3fe98e62d022c14d              # double 0.79863110209957144
	.quad	0x3fec2ba67ddacdd5              # double 0.88032841282841423
	.quad	0x3fe997bef14fd25a              # double 0.79977366572581876
	.quad	0x3fe266ce688e1a2e              # double 0.57504959507861542
	.quad	0x3fe6cd7d52d0853d              # double 0.71258417296136367
	.quad	0x3fb5d138c5997370              # double 0.085223720781369527
	.quad	0x3fd60dde49cca536              # double 0.34459645468685396
	.quad	0x3fe2623606f8b9cd              # double 0.57448865281713213
	.quad	0x3fb77eb5c61d8008              # double 0.091777191989876994
	.quad	0x3fead3d152a63f75              # double 0.83835664885007921
	.quad	0x3fd2260d8476a5d4              # double 0.28357255874524623
	.quad	0x3fdef3f47ed55946              # double 0.48363983522485332
	.quad	0x3fd3ac642bb1043c              # double 0.30739692942376329
	.quad	0x3fd4abbb876abf98              # double 0.32298172210993803
	.quad	0x3fe22eed5d639178              # double 0.56822841873194729
	.quad	0x3fe56f0e56c19090              # double 0.66980664200356621
	.quad	0x3fe88b9e918edf21              # double 0.76704338483157042
	.quad	0x3fe9fd65733f1405              # double 0.812182164278625
	.quad	0x3fd76b2c3268174c              # double 0.36591629908104006
	.quad	0x3fc1f7259a26930c              # double 0.14035482432259305
	.quad	0x3fe0bdbb091f19dc              # double 0.52316047460117998
	.quad	0x3fe63a34db70f9e2              # double 0.69460528239852359
	.quad	0x3fe51dc331f39823              # double 0.65988311535034361
	.quad	0x3fe59b83a4d45695              # double 0.67523367112399291
	.quad	0x3fa47b6bab549770              # double 0.04000412432132705
	.quad	0x3fe928da8ac76d79              # double 0.78623702149654584
	.quad	0x3feedfa81328a2bc              # double 0.96480182401599945
	.quad	0x3fe250de7cfb27b9              # double 0.57237171564451395
	.quad	0x3fee89b093e1bb33              # double 0.95430783160359167
	.quad	0x3fe6ee71c01485ab              # double 0.71660697475106383
	.quad	0x3f9931cb45e06920              # double 0.024604011669091652
	.quad	0x3fe6bcc664003144              # double 0.71054381877323936
	.quad	0x3fcd6edbc222a38c              # double 0.22994563082945907
	.quad	0x3fe16f5dda0bef29              # double 0.5448445566866883
	.quad	0x3fb99e15b4e783d0              # double 0.10006843248949271
	.quad	0x3fee7e73181567e3              # double 0.95293574050742469
	.quad	0x3fe21db6020eb67e              # double 0.56612682725763341
	.quad	0x3fa2da8797138fd0              # double 0.036823498908944097
	.quad	0x3feda2c4a8d58da6              # double 0.92611916518619775
	.quad	0x3facfac4a96243e0              # double 0.056600709606875688
	.quad	0x3fe66eac3e231475              # double 0.70100986610545013
	.quad	0x3fe543d5f6ce9b02              # double 0.66453073696615683
	.quad	0x3fe55b84f6964aba              # double 0.66742180024660702
	.quad	0x3fe37551be4b6ff6              # double 0.60807120482377175
	.quad	0x3fc11c577dff7748              # double 0.13367742206804167
	.quad	0x3fef49c2be6e869a              # double 0.9777539939279507
	.quad	0x3fef22ca2b59925f              # double 0.97299679247641879
	.quad	0x3fbfae3604343340              # double 0.12375199892649125
	.quad	0x3fc1136c74c565e0              # double 0.13340526296342059
	.quad	0x3fe928dd62a1554c              # double 0.78623837722504097
	.quad	0x3fcd34cd74f72930              # double 0.22817390643315028
	.quad	0x3fc5900d6281b008              # double 0.16845862684147073
	.quad	0x3fd8442529368fbe              # double 0.37915925049514587
	.quad	0x3fd2011270c7d16e              # double 0.28131543172573614
	.quad	0x3fee9bb20e4d1e21              # double 0.9565058020897973
	.quad	0x3fe0d75f24400aec              # double 0.52629048423872637
	.quad	0x3fe1c70fa6e52783              # double 0.5555494556112851
	.quad	0x3fe87c088ba0b3d1              # double 0.76514079352420528
	.quad	0x3fc2069ee4bbc7a0              # double 0.14082704704884197
	.quad	0x3fe44e052b00f17c              # double 0.63452394866139583
	.quad	0x3fcb455f317bc2c4              # double 0.21305456081565499
	.quad	0x3fedfd939f666c5e              # double 0.93720418103056224
	.quad	0x3fe9138f26748050              # double 0.78363759527929666
	.quad	0x3fd33aa48d476352              # double 0.3004542712856636
	.quad	0x3fe5341708546b85              # double 0.66260863902003619
	.quad	0x3fe337e8b189786a              # double 0.60057482409662311
	.quad	0x3fefa01d37b764e7              # double 0.98829518205743915
	.quad	0x3fed8d1c052df5b2              # double 0.92347527515055661
	.quad	0x3fe7868b7b2a6a14              # double 0.73517393165394873
	.quad	0x3fe54f50243d911a              # double 0.66593176916333907
	.quad	0x3fe661555a3fc6e7              # double 0.69938151957304917
	.quad	0x3f83b1e182648a00              # double 0.0096166246335700478
	.quad	0x3fd83294d2cb411e              # double 0.37808724007938277
	.quad	0x3fee383b1e635a2c              # double 0.9443641274945711
	.quad	0x3feb78b0fb540664              # double 0.85848282897513827
	.quad	0x3fe7e303cef95639              # double 0.74646177696803939
	.quad	0x3fb94b9f594f12c8              # double 0.098810157112050878
	.quad	0x3fecfb2c4c11944b              # double 0.9056607709613983
	.quad	0x3fe008ac2e946a67              # double 0.50105866525275367
	.quad	0x3fe85789e6ebab09              # double 0.7606858740012693
	.quad	0x3fce2f47ef9db424              # double 0.23581790161134208
	.quad	0x3fe970eda8a8a4a9              # double 0.79503519955792001
	.quad	0x3fea2aaa5e45cf7a              # double 0.81770819103847647
	.quad	0x3fe55d465db9a4e8              # double 0.66763609224031217
	.quad	0x3fcc747a635052e0              # double 0.22230462884240065
	.quad	0x3fd6cc1441cf24d4              # double 0.35620600153613435
	.quad	0x3fd727c9e1ef47dc              # double 0.36180350364622682
	.quad	0x3fbaddbffacd2af8              # double 0.10494613526422458
	.quad	0x3fcbf52e68d76238              # double 0.21841983908849882
	.quad	0x3fe21e2d43a6b936              # double 0.56618369305741711
	.quad	0x3fdc5fe6acc7af24              # double 0.44335333703087287
	.quad	0x3fe754c82ef8fbf1              # double 0.72909936117491558
	.quad	0x3fb72141b0312e88              # double 0.090351205363896736
	.quad	0x3fe2f7042fa47093              # double 0.59265336327691143
	.quad	0x3fc7128c5e396190              # double 0.18025354958332374
	.quad	0x3fb4360c81512070              # double 0.078949719974049648
	.quad	0x3fc769d5c9acfb7c              # double 0.18291733119437115
	.quad	0x3fc8ac1502796594              # double 0.19275152798472261
	.quad	0x3fe01cfc5d0be67c              # double 0.50353830502645236
	.quad	0x3fd0bcd8c20eae02              # double 0.26152628851806992
	.quad	0x3fb6d0ca5bab4f28              # double 0.089123389606638015
	.quad	0x3fb2fdf93ea0a688              # double 0.074187829770972269
	.quad	0x3fc8647f34ae7c20              # double 0.19056692192404601
	.quad	0x3fd8c915029e0a68              # double 0.38727307563400482
	.quad	0x3fee16503cb11e0f              # double 0.94022380689506402
	.quad	0x3feb69f77fd7c523              # double 0.85668539971644397
	.quad	0x3fee08e45d4e55ca              # double 0.93858545516803216
	.quad	0x3fe3879e72d09bc7              # double 0.61030504631786975
	.quad	0x3fe9aef8dada5fe3              # double 0.80260889763576093
	.quad	0x3fb0a4924d772040              # double 0.065011161720691213
	.quad	0x3fe8338a8fb4689d              # double 0.75629165713623403
	.quad	0x3fc872604e9734f0              # double 0.19099048459467083
	.quad	0x3fc9e1dd92032664              # double 0.20220536832339342
	.quad	0x3fd6c08a36b82ff6              # double 0.35550170272540471
	.quad	0x3fd6c365683d24fe              # double 0.35567603282522942
	.quad	0x3fdc79addb5946ba              # double 0.44492670460486361
	.quad	0x3fe23ae1c84ee416              # double 0.56968773958863284
	.quad	0x3fd1bc1f0f37302a              # double 0.27710701452156405
	.quad	0x3fc96f038d95b154              # double 0.19870037473027458
	.quad	0x3fb374de05671270              # double 0.076002003020286812
	.quad	0x3fc7447267a08cd8              # double 0.18177633342666044
	.quad	0x3fd1447782a9159c              # double 0.26980388412297329
	.quad	0x3fdfae110a164034              # double 0.49499917969751839
	.quad	0x3fe7acd3e52326d0              # double 0.73984713319188167
	.quad	0x3fd264c72e3b773c              # double 0.28740100397941482
	.quad	0x3fda0797e590c108              # double 0.40671346109867601
	.quad	0x3fd29e5a0f4f2ea0              # double 0.29091502661752067
	.quad	0x3fb19ef33067e990              # double 0.06883163387093405
	.quad	0x3fccc60f26697398              # double 0.22479428649503741
	.quad	0x3fde83a447826a4a              # double 0.47678477271407316
	.quad	0x3fd1a49cbb4b1e88              # double 0.27567213335394358
	.quad	0x3fc96c0ed1d908c8              # double 0.19861016508554585
	.quad	0x3fe3f2474fc9ef55              # double 0.62332501968146892
	.quad	0x3fd33938451956b4              # double 0.30036741970011893
	.quad	0x3fe4062af313670d              # double 0.62575290179958787
	.quad	0x3fd5970ae7162e74              # double 0.33734390799575142
	.quad	0x3fee73ed224de3c6              # double 0.95165116024065166
	.quad	0x3fe922c4762ed6f9              # double 0.78549407084093936
	.quad	0x3fd187d46a791ff4              # double 0.27391538999336196
	.quad	0x3fd418d29098253a              # double 0.31401504631556387
	.quad	0x3fc6f704ba919b14              # double 0.179413405511888
	.quad	0x3fe62286b116d4f9              # double 0.69171461665851475
	.quad	0x3fd497c7d7bfd930              # double 0.32176395482328513
	.quad	0x3fc10308ad58e75c              # double 0.13290508712980909
	.quad	0x3fe204fa6a4f1339              # double 0.56310768855528359
	.quad	0x3fc2515e7d4fa8d4              # double 0.14310818785390345
	.quad	0x3fe7de5d6e3dacb8              # double 0.74589416057042168
	.quad	0x3fdd41a647da1a56              # double 0.45713192955773729
	.quad	0x3fea7943d6616c80              # double 0.82730285521701319
	.quad	0x3fc910d0e5add854              # double 0.19582568373488363
	.quad	0x3fbc14e93fd32bc0              # double 0.10969407852387203
	.quad	0x3faa71b44eb9a340              # double 0.051648745164874388
	.quad	0x3fde6e46d4bad7a4              # double 0.47548075460815142
	.quad	0x3fe3c47ad455a006              # double 0.61773435088707696
	.quad	0x3fe9e9e23f4b2926              # double 0.80980026590376464
	.quad	0x3fddb130bae645c6              # double 0.46393984081177242
	.quad	0x3fe1434db26d363b              # double 0.53946575974413891
	.quad	0x3fe4de9ff45d1ade              # double 0.65217588164599838
	.quad	0x3fe3a96596ef66f9              # double 0.61442832450413143
	.quad	0x3feff9a4ec5dcc25              # double 0.99922414937316672
	.quad	0x3fee40f4a55a8e68              # double 0.94542915626193479
	.quad	0x3fe1f404741b5272              # double 0.56103727986426422
	.quad	0x3fe3835134527322              # double 0.60977993220476301
	.quad	0x3fe11d0c5a00a8f1              # double 0.53479592875126347
	.quad	0x3fcfbebac18e8ec4              # double 0.2480081029035458
	.quad	0x3fb79c9b1b2cf220              # double 0.092233366140995532
	.quad	0x3fc6dad9c44b67fc              # double 0.17855379185385789
	.quad	0x3fe17843e5becebe              # double 0.5459308135236467
	.quad	0x3feed14beed84abc              # double 0.96304890298264167
	.quad	0x3f7981b131f5f700              # double 0.0062271997152245628
	.quad	0x3fe37be5c207b85b              # double 0.60887420555605887
	.quad	0x3fb06c2242977610              # double 0.064149991281247987
	.quad	0x3fec0d5df2f2c387              # double 0.87663171244467797
	.quad	0x3fda3114b54e83dc              # double 0.40924565988285422
	.quad	0x3fbc5c660cd4f3b8              # double 0.11078489125516355
	.quad	0x3fcfaae44d245ef8              # double 0.24740270392134511
	.quad	0x3fc8be7f29d29be8              # double 0.19331349889873128
	.quad	0x3fec8d682730c840              # double 0.89226157812505136
	.quad	0x3fc86cc24516b37c              # double 0.19081905721159476
	.quad	0x3fca0bd92b615cc8              # double 0.2034865819757441
	.quad	0x3fee6cb7dc6e26e4              # double 0.95077126553334467
	.quad	0x3fe41f0f473a9c0f              # double 0.62879146491911964
	.quad	0x3fe8c92f2c91f749              # double 0.77455862717736423
	.quad	0x3fe408fd2d53ed08              # double 0.62609728673069842
	.quad	0x3fdfe960d4034e6a              # double 0.49861927704225784
	.quad	0x3feb8ecdd36d64c3              # double 0.86118212980650133
	.quad	0x3fd18e56a5634756              # double 0.27431265021470119
	.quad	0x3fe22d03f403b387              # double 0.56799504908632137
	.quad	0x3fe8a3bd3f46d41c              # double 0.76998770102239033
	.quad	0x3fd5acba7952a498              # double 0.3386675057213977
	.quad	0x3febf72f20db2b67              # double 0.87392383973324861
	.quad	0x3feb34c692394ec1              # double 0.85019234237048391
	.quad	0x3f9230ba13621700              # double 0.017764003212980661
	.quad	0x3fe7ba27cc42bb92              # double 0.74147405523932464
	.quad	0x3fddb2679b1a425e              # double 0.46401395937667711
	.quad	0x3fc5a673a7942058              # double 0.16914220507192357
	.quad	0x3fb5ff7aef1190f8              # double 0.085929568640100373
	.quad	0x3fd6bbb6e62763fa              # double 0.35520718074764057
	.quad	0x3fe3d5c401a69e4f              # double 0.61984443972046133
	.quad	0x3fd15853c5317de6              # double 0.27101606614266271
	.quad	0x3fe9356806cc9571              # double 0.78776933029136675
	.quad	0x3fc1d4cdfe2507ac              # double 0.13930678281218201
	.quad	0x3fecdd8309ac4f4e              # double 0.90204002274774964
	.quad	0x3fe268449724274c              # double 0.5752280189492267
	.quad	0x3feedc50185073a9              # double 0.9643936610115037
	.quad	0x3fe0d41252d6fc76              # double 0.52588764361998019
	.quad	0x3f97638f37085820              # double 0.022840726598666206
	.quad	0x3fe6ef5f77b51065              # double 0.71672032718971634
	.quad	0x3fb50850ec818400              # double 0.082158143749907708
	.quad	0x3fe5c9786bff848c              # double 0.68084355443365174
	.quad	0x3fe2351c57ccd7bd              # double 0.56898324154348467
	.quad	0x3fec1a2af6da6f59              # double 0.87819431508567469
	.quad	0x3fbba26f1f605320              # double 0.10794729724905183
	.quad	0x3fd7ab7fae3620fa              # double 0.36984245312534336
	.quad	0x3fe61e139b252786              # double 0.69117145826133775
	.quad	0x3fdf9035bd4c9248              # double 0.49317687498322416
	.quad	0x3fe421dd0f578701              # double 0.62913372990098548
	.quad	0x3fec8b125cc8ec01              # double 0.89197652933160054
	.quad	0x3fecdcf534879da3              # double 0.90197239169804211
	.quad	0x3fcad59b8ef4b95c              # double 0.20964378814955864
	.quad	0x3fc13740a38a0564              # double 0.13449867234525492
	.quad	0x3fc890140d87b020              # double 0.19189692173620276
	.quad	0x3fc7915bff46ef08              # double 0.18412351574613006
	.quad	0x3fd8fc90434815c8              # double 0.39041525431124713
	.quad	0x3fcfee7bf52e6af4              # double 0.2494654605078136
	.quad	0x3fcc89541c8a67f0              # double 0.22294093507372237
	.quad	0x3fd25bdbcb9b6138              # double 0.28685660251132417
	.quad	0x3fe61586622f8d7f              # double 0.69012755562691541
	.quad	0x3fe24b71ac1f9e9d              # double 0.57170947664140537
	.quad	0x3fcd70cdcd675f84              # double 0.2300050023029564
	.quad	0x3fe23ab77dcee3d7              # double 0.56966757366091769
	.quad	0x3fdca700825dd4b0              # double 0.4476929925070392
	.quad	0x3fd61bc286314f70              # double 0.34544432739971054
	.quad	0x3fe86999306ab607              # double 0.76289042908109728
	.quad	0x3fd31c34f65de8b2              # double 0.29859661158810546
	.quad	0x3feaac6e923210b5              # double 0.83354881814786685
	.quad	0x3fef231043fd662e              # double 0.97303021697297765
	.quad	0x3fa714bad16fa6a0              # double 0.045080030504164315
	.quad	0x3fdb5731d5ebd680              # double 0.42719694033380762
	.quad	0x3fc9093b45710730              # double 0.19559422388743419
	.quad	0x3fcabb932c4622d4              # double 0.20884933149161233
	.quad	0x3fef2fa0cbbef1b1              # double 0.97456397813907902
	.quad	0x3fe6604c35a52760              # double 0.69925508954586846
	.quad	0x3fe3e84442cf047c              # double 0.62210286186758834
	.quad	0x3fe9a0e6eb403586              # double 0.8008913607351793
	.quad	0x3fdd666143bf7a7e              # double 0.45937377563488002
	.quad	0x3feb392ae16564c2              # double 0.85072845480603854
	.quad	0x3fea850b21927576              # double 0.82874065930415841
	.quad	0x3fef2fdf51cf1154              # double 0.9745937917546521
	.quad	0x3fc0e660e862738c              # double 0.1320305952730475
	.quad	0x3fdae57c277014da              # double 0.42025665141438895
	.quad	0x3fd33f4f5c9ef534              # double 0.30073913617146109
	.quad	0x3fe0fa19c6591fdc              # double 0.53052986850616035
	.quad	0x3fc384edde9ad610              # double 0.15249417657257469
	.quad	0x3fe79e8dcfa4f1eb              # double 0.7381047301819853
	.quad	0x3fe651c762039821              # double 0.69748276847235868
	.quad	0x3fd595c531b60250              # double 0.33726625303828417
	.quad	0x3feca1a80b64641a              # double 0.89473345017461559
	.quad	0x3fd253ff02e15d66              # double 0.28637671738893855
	.quad	0x3fddc1eb18c2dc34              # double 0.46496083658297782
	.quad	0x3fda6498ec93c052              # double 0.41238997557866697
	.quad	0x3fc5ef4ee3a5e5ac              # double 0.17136560550333735
	.quad	0x3fb00315f557cbb8              # double 0.062547085188085272
	.quad	0x3fdb5364b4575f92              # double 0.42696492778258588
	.quad	0x3fd514ddadcb79be              # double 0.32939855549002661
	.quad	0x3fdc2ed8e0bc1eba              # double 0.44035932490121932
	.quad	0x3fa1f9af866db6e0              # double 0.035108075294244534
	.quad	0x3fe985cf4f3967bb              # double 0.79758420442089262
	.quad	0x3fc5f33c3e37601c              # double 0.17148545301347518
	.quad	0x3fec526396847ea4              # double 0.88505725286446024
	.quad	0x3fd7831e3f0a6b2c              # double 0.36737781673734804
	.quad	0x3fe0d7e2a4e5792a              # double 0.52635318952869636
	.quad	0x3fe8913a81caab61              # double 0.76772809362351435
	.quad	0x3fe1bef3c0c36281              # double 0.5545595898539234
	.quad	0x3fa0a66d1e805b90              # double 0.032519731496157722
	.quad	0x3fe363d0f0cf5423              # double 0.6059345916097566
	.quad	0x3fc629f150809fe0              # double 0.17315498762877635
	.quad	0x3fe57cc6fcbd4636              # double 0.67148160327105333
	.quad	0x3fd582c25b145c72              # double 0.3361059083412733
	.quad	0x3fca1211e1a1665c              # double 0.20367644803154661
	.quad	0x3fec3096bf26809b              # double 0.88093125661909555
	.quad	0x3fee07b0da1ce855              # double 0.93843882179431637
	.quad	0x3fc52bd1848fa7c0              # double 0.16539973232948846
	.quad	0x3fd937ddc38c3df2              # double 0.39403480621783082
	.quad	0x3fdba02de3969dfa              # double 0.43165156579422581
	.quad	0x3febb12706d9d749              # double 0.86537505472254239
	.quad	0x3fbff1bdbbdadb30              # double 0.12478242718030397
	.quad	0x3fda603e3df659e4              # double 0.41212421465880156
	.quad	0x3fd1cd84cb5ad456              # double 0.27816886767260962
	.quad	0x3feb9aadae6b97d5              # double 0.8626316458364679
	.quad	0x3fe9431f830172a6              # double 0.78944373690645331
	.quad	0x3fe5c0bceee0ca30              # double 0.67977759033084872
	.quad	0x3fbc5eb47d0ec6a0              # double 0.11082008412520361
	.quad	0x3fef70838a76fe91              # double 0.98248459857855341
	.quad	0x3fe939752ec4eb06              # double 0.78826388487445409
	.quad	0x3fe3ccaf433cd09a              # double 0.61873591549239682
	.quad	0x3fedc5659e655132              # double 0.93034630715059152
	.quad	0x3fc17e4aaf93de24              # double 0.13666661809087188
	.quad	0x3fdb13a05bf41208              # double 0.42307290057968361
	.quad	0x3fcdf1fe63652678              # double 0.23394756177212961
	.quad	0x3fbdddf6d7b2cbb8              # double 0.11666815534662944
	.quad	0x3fd1caeee4947baa              # double 0.27801105806605142
	.quad	0x3fe89d58b8e6e6cd              # double 0.76920734513915934
	.quad	0x3fd8f67927764376              # double 0.39004353383739188
	.quad	0x3fd74235d2cb46d6              # double 0.36341615281444939
	.quad	0x3fe3e11b6d972f2e              # double 0.62122889904410328
	.quad	0x3fe886ca523c9441              # double 0.76645389615863035
	.quad	0x3fea3e1f3dec31dd              # double 0.8200832566668016
	.quad	0x3feff749d49d6d85              # double 0.99893657232625854
	.quad	0x3fd377da711397d0              # double 0.30419026415472405
	.quad	0x3fc9caab9466b008              # double 0.2014975046744214
	.quad	0x3feb3db460a7903a              # double 0.85128229978409498
	.quad	0x3fb7e3f8dd8dcb38              # double 0.093322328653624775
	.quad	0x3feb13057549bdf3              # double 0.84607193858931706
	.quad	0x3fceb4fd5cc8acb8              # double 0.2398983672186199
	.quad	0x3feba7ec1568c6d0              # double 0.86424831563473425
	.quad	0x3febd214d92108d1              # double 0.86939470680251862
	.quad	0x3feb7f265b91cd6e              # double 0.85927122006107282
	.quad	0x3fc4a330bd464508              # double 0.16123017541807649
	.quad	0x3fb9c8d07a935548              # double 0.10072043411795051
	.quad	0x3fe52d92f6ca3b30              # double 0.66181324196973002
	.quad	0x3fe02ef6adf43545              # double 0.50573286033037645
	.quad	0x3fe2e8830f265630              # double 0.59088280638633783
	.quad	0x3fd9ea119b50956a              # double 0.4049114243265054
	.quad	0x3feefa8e501934eb              # double 0.96808543819647974
	.quad	0x3fe1b8e4241bbf0f              # double 0.55381972362917675
	.quad	0x3fe28d55defe341b              # double 0.57975286057774456
	.quad	0x3feea75c676455d7              # double 0.95792980378854053
	.quad	0x3f9a072d62993480              # double 0.025418004172298669
	.quad	0x3f8026f131d4d3c0              # double 0.0078867762882540715
	.quad	0x3fee95f11f281f22              # double 0.95580345235154973
	.quad	0x3fe748365e309c0e              # double 0.7275649871488683
	.quad	0x3fe56cd7304e2c0c              # double 0.66953620371475742
	.quad	0x3fe456d838948801              # double 0.63560114909000742
	.quad	0x3fed444217ed7887              # double 0.91458229707110739
	.quad	0x3fa98d8cdd74b790              # double 0.049908067734903416
	.quad	0x3fe76cfe072ec0e7              # double 0.7320547237668763
	.quad	0x3fef4c601155fbbd              # double 0.97807315240776626
	.quad	0x3fdfda9ebc7f4df0              # double 0.49771850974977294
	.quad	0x3fbb0033ac792120              # double 0.1054718299939208
	.quad	0x3fd98525a7983b90              # double 0.39875165335336593
	.quad	0x3fe3dbef6eccc325              # double 0.62059756889911866
	.quad	0x3fbe02fc60ea4f68              # double 0.11723306051345406
	.quad	0x3feb9c2d49217fb6              # double 0.8628145626389514
	.quad	0x3fb9e71feedacc10              # double 0.10118293363011355
	.quad	0x3fd9f5e001424a70              # double 0.40563202021545575
	.quad	0x3fee5e75867e0b47              # double 0.94903064983405094
	.quad	0x3fe33b9c0455ec89              # double 0.60102654310993942
	.quad	0x3fdad4242f37edc4              # double 0.41919808016947635
	.quad	0x3fe6ed05c0ce19ab              # double 0.71643340737573646
	.quad	0x3fd2a2f741d4ac86              # double 0.29119664601120865
	.quad	0x3fdee578e8a5c198              # double 0.48275587768059713
	.quad	0x3fa22c6d31ad5040              # double 0.035495197595679873
	.quad	0x3fd68b0ee498d242              # double 0.35223743747636516
	.quad	0x3fe294bbda6578bc              # double 0.58065598159352971
	.quad	0x3f762f25b5e98080              # double 0.0054160569257818425
	.quad	0x3fd47d3cd0b77266              # double 0.32014389402846744
	.quad	0x3fad6e38f2119850              # double 0.057481555509000359
	.quad	0x3fed49407dc490d0              # double 0.91519188465147217
	.quad	0x3fb0d1739a6cc430              # double 0.065695977403053218
	.quad	0x3fec84701e74d1cb              # double 0.89116674374104698
	.quad	0x3fec2dcf3906d74d              # double 0.88059197557479651
	.quad	0x3feca4de2cdd7735              # double 0.89512547266688236
	.quad	0x3fe8d33095192a00              # double 0.77578000183831364
	.quad	0x3fe7a28c86ec5ab3              # double 0.73859239914130226
	.quad	0x3fefe19fa23e552e              # double 0.9962919396226988
	.quad	0x3fb6220d943bf6e8              # double 0.086457108201979715
	.quad	0x3fdcf7627a1a6d1e              # double 0.45259916233199415
	.quad	0x3fe4f0f068d667f4              # double 0.65441151119307372
	.quad	0x3fc6eb3826cb261c              # double 0.17905332464424439
	.quad	0x3fe537d3348b0fd7              # double 0.66306457769723692
	.quad	0x3fcce1cefda09204              # double 0.22564113029615396
	.quad	0x3fdba2b444181298              # double 0.43180567407424908
	.quad	0x3fdffd6b9028864e              # double 0.49984253957709235
	.quad	0x3fefd40b0c037109              # double 0.99463417383552255
	.quad	0x3fd8da1519c1cd72              # double 0.38831069484077496
	.quad	0x3fe7f9e4c2018902              # double 0.74925458804889922
	.quad	0x3fb5db09c3c11cd0              # double 0.085373506824100831
	.quad	0x3feece2fb893d54e              # double 0.96266923952377126
	.quad	0x3fe17595cf567b28              # double 0.54560366149585082
	.quad	0x3fe8a67ef0cb5177              # double 0.77032420187110417
	.quad	0x3fec14f763d72c33              # double 0.87755937099553305
	.quad	0x3fd35884f97011cc              # double 0.30227779730946902
	.quad	0x3fe29d019cf9e3b1              # double 0.58166580829048631
	.quad	0x3fd8624ff6ce812c              # double 0.38100051023686166
	.quad	0x3fe66a90e5a746fe              # double 0.70050854543862306
	.quad	0x3fec12dcd6ad7b08              # double 0.87730256966810405
	.quad	0x3fa5de060c176d40              # double 0.042709530807508944
	.quad	0x3fe4dd59d3802e15              # double 0.65202037152033887
	.quad	0x3fd775f8a9c7fe5a              # double 0.36657539920995463
	.quad	0x3fcfe7ad2e49e7fc              # double 0.24925770530882108
	.quad	0x3feb6604541af5b0              # double 0.8562032358819831
	.quad	0x3fede77dd3c13754              # double 0.93450824125623421
	.quad	0x3fec5c046faa1775              # double 0.88623258408982386
	.quad	0x3fe230db1c00255d              # double 0.56846385449277259
	.quad	0x3fd65fb6ab01cea4              # double 0.34959189128788126
	.quad	0x3fdc9c2cced5c6f4              # double 0.44703216742264762
	.quad	0x3fe314615f9eb7d5              # double 0.596237837560461
	.quad	0x3fcd1171027c18e0              # double 0.22709477063489825
	.quad	0x3fe3088bb08603db              # double 0.5947931716656244
	.quad	0x3fc48d944a1e661c              # double 0.16057065600470899
	.quad	0x3fedbd08ed2e4c6d              # double 0.92932554554353219
	.quad	0x3fdd49120ee57edc              # double 0.4575848718140898
	.quad	0x3fe21c864c6655df              # double 0.56598200723481884
	.quad	0x3fc781602b5bde70              # double 0.18363573186046578
	.quad	0x3fe371f454422e0d              # double 0.60766045052281614
	.quad	0x3fb19ebad08c8cd8              # double 0.068828273692406738
	.quad	0x3fe06e124f11494b              # double 0.51343646471858884
	.quad	0x3fce33559af1ea08              # double 0.2359416014258644
	.quad	0x3fe418bda9c35378              # double 0.62802012593111467
	.quad	0x3febad5a51e99548              # double 0.86491123198053632
	.quad	0x3febffe47497d970              # double 0.87498686573125717
	.quad	0x3fc5bbc1e734da0c              # double 0.16979240216615243
	.quad	0x3fdb23a65a2e8d48              # double 0.42405089194126733
	.quad	0x3fdd2b9797fcd416              # double 0.45578565447368768
	.quad	0x3fe71b4fcf3ca7a7              # double 0.72208395458186636
	.quad	0x3fec0b0b32ee7172              # double 0.87634811351339992
	.quad	0x3fe543b5014c1edf              # double 0.6645150208796301
	.quad	0x3fe3cfb7b5401a0a              # double 0.61910615349262454
	.quad	0x3fd2361ba1067006              # double 0.28455248570549008
	.quad	0x3fed7b77dd4b3a3a              # double 0.92132180425125587
	.quad	0x3fe56401f5e2bab7              # double 0.66845796608489294
	.quad	0x3fe570f2b61bdcd6              # double 0.67003760879642971
	.quad	0x3fe1301d70ddac23              # double 0.53712341350672366
	.quad	0x3fd03e039bddf5a2              # double 0.25378504010572034
	.quad	0x3fd3f2dbf2a203a4              # double 0.3116979474507906
	.quad	0x3fedb9c6cd7a346c              # double 0.92892780430123655
	.quad	0x3fef075420b4159a              # double 0.96964460742372016
	.quad	0x3feada3c10e3eb69              # double 0.83913996981514771
	.quad	0x3fdb396ca902c68e              # double 0.42537991051640567
	.quad	0x3fe4f7a1d8ce7e05              # double 0.6552285418037519
	.quad	0x3fd914eed3b5544a              # double 0.3919026439155614
	.quad	0x3fe473f22fe7b22e              # double 0.63915356975991755
	.quad	0x3fe2e0a0b123505a              # double 0.58992037389044616
	.quad	0x3fe056dcf921e38d              # double 0.51060341509502083
	.quad	0x3fe88bb10db9da43              # double 0.76705219918114442
	.quad	0x3fd6c103fa4ceefa              # double 0.35553073352251341
	.quad	0x3fd0893261808036              # double 0.25837382814097809
	.quad	0x3fd3d28c8d97e00e              # double 0.30972589328257605
	.quad	0x3fda5d68d791723a              # double 0.41195126582696029
	.quad	0x3fd041ea3e1321c4              # double 0.25402313291536083
	.quad	0x3fefbf08f5b26903              # double 0.99206970203093225
	.quad	0x3fc1598ea697da90              # double 0.13554556974823528
	.quad	0x3fcd460a709d4d94              # double 0.22869997500184225
	.quad	0x3fd0ba51e090f664              # double 0.26137206011103431
	.quad	0x3fdde5a1835ed512              # double 0.46714055852074055
	.quad	0x3fdc70f7b9688860              # double 0.44439499956400219
	.quad	0x3fe3c4bf09175ce7              # double 0.61776687408101061
	.quad	0x3fec2018a4a4b9b8              # double 0.87891800076413684
	.quad	0x3fd8078c544582a2              # double 0.37546070317879743
	.quad	0x3fbf83823461cba8              # double 0.12310041216714629
	.quad	0x3fba331880305620              # double 0.10234215859994622
	.quad	0x3fd026356df7ab1c              # double 0.25233207453736539
	.quad	0x3fb78e16d34bd130              # double 0.092011858545281155
	.quad	0x3fe3f2498326b38b              # double 0.62332606902565268
	.quad	0x3fd9304a2f05034a              # double 0.39357237426525116
	.quad	0x3fd429c7a82f9d38              # double 0.31505004333890296
	.quad	0x3fe9a9ce8f6859f5              # double 0.80197837838460251
	.quad	0x3fec816d4042f33d              # double 0.89079916525916014
	.quad	0x3fe43541d23b42ca              # double 0.6315011125644443
	.quad	0x3fe8676c3396f965              # double 0.76262483669397041
	.quad	0x3fed50eb8aedc3ef              # double 0.91612794050717905
	.quad	0x3fdce1585baacffa              # double 0.45125397636297715
	.quad	0x3fe65d52cdbe53bd              # double 0.69889202293654018
	.quad	0x3fe3d33507c2de03              # double 0.61953212276324654
	.quad	0x3fd40d445ba12ca4              # double 0.31330975483133217
	.quad	0x3fe0e165c9c7cbeb              # double 0.52751435671086477
	.quad	0x3fd96da2b5037c8c              # double 0.39731662442313431
	.quad	0x3fe91a7ccdabd95d              # double 0.78448333902523937
	.quad	0x3fe0357769dfe899              # double 0.50652666739121621
	.quad	0x3fd255edbfa9dd70              # double 0.28649467198507406
	.quad	0x3fceeb911a097b10              # double 0.24156392833079865
	.quad	0x3fe22d2bf98a0a38              # double 0.56801413286331748
	.quad	0x3fbbe9e0a1cfe690              # double 0.10903743696681034
	.quad	0x3fe15e711bfcd988              # double 0.54277854410501991
	.quad	0x3fe1aefa73f23d7c              # double 0.55260965963127218
	.quad	0x3fcd2dd1c1040c34              # double 0.22796079563713223
	.quad	0x3fc2e5e18ff94904              # double 0.14764041452378518
	.quad	0x3fecc5a889863592              # double 0.89912821636396445
	.quad	0x3fdfeb2f4b74f990              # double 0.49872953766671291
	.quad	0x3fed225c1e710b19              # double 0.91044431634540779
	.quad	0x3fe79cf6e76433d1              # double 0.73791070169101591
	.quad	0x3fef327f19cac515              # double 0.97491412198556537
	.quad	0x3fba23ea75a87278              # double 0.10211053249845203
	.quad	0x3fe1c36e31537ef8              # double 0.55510625490202781
	.quad	0x3fa68d738c8999b0              # double 0.044047938256699282
	.quad	0x3fe8afcdb228e815              # double 0.77146038815340268
	.quad	0x3fc865c8556fdda8              # double 0.19060615703322736
	.quad	0x3fe17aa42f7f1f3d              # double 0.54622086788820179
	.quad	0x3feedd199b64bc1e              # double 0.96448974943439558
	.quad	0x3fe8e4d426a08e23              # double 0.77793319267624772
	.quad	0x3fef874dd277ea3d              # double 0.98526660067665938
	.quad	0x3fe3ac5a707a660f              # double 0.6147892186010625
	.quad	0x3fe1b97503168afa              # double 0.55388880351196623
	.quad	0x3fe9723af68f9f0a              # double 0.79519413143586459
	.quad	0x3fef6659118babfb              # double 0.9812436430632937
	.quad	0x3fe63048993db54a              # double 0.69339399270908442
	.quad	0x3fcea559e8c15314              # double 0.23942111840246894
	.quad	0x3fe9ed589d950418              # double 0.81022291925194434
	.quad	0x3fbbe3af706ac7d0              # double 0.1089429521041716
	.quad	0x3fe43800b5264ea2              # double 0.63183627491749328
	.quad	0x3fd14c28502aabc4              # double 0.27027328327920608
	.quad	0x3fe961250eafb31a              # double 0.79310849064276856
	.quad	0x3fea01e9251ef8fa              # double 0.81273324251358692
	.quad	0x3fe480dc90d637d1              # double 0.6407301739543475
	.quad	0x3fe02747a80a3652              # double 0.50479491062442094
	.quad	0x3fe41d113dc67f02              # double 0.62854826035979294
	.quad	0x3fe8e8ae47751701              # double 0.77840341526527379
	.quad	0x3fe7bad6bf5fdf4c              # double 0.74155747773964142
	.quad	0x3fdd2486ce6e7ebe              # double 0.45535440596902876
	.quad	0x3feb1e8fffc102b9              # double 0.8474807734674733
	.quad	0x3fd9372cee491b9a              # double 0.39399264593196792
	.quad	0x3fd2eb36215da7e6              # double 0.29560616739638446
	.quad	0x3fd6bb7f342edcfa              # double 0.35519390197755707
	.quad	0x3fdb3331d7e4abfe              # double 0.42499967654538284
	.quad	0x3feb8c5275fbd935              # double 0.86087916415889387
	.quad	0x3fe4f05974fa7021              # double 0.65433953139609369
	.quad	0x3fe5a50548349184              # double 0.67639412024122736
	.quad	0x3feefcda7e2e6fd3              # double 0.96836590428164937
	.quad	0x3fde1c682ff1773c              # double 0.47048382455783488
	.quad	0x3febe6800f0f1d99              # double 0.87188723508090782
	.quad	0x3fdce27a05c777ec              # double 0.45132303776142524
	.quad	0x3fcbee13c6fdb2d8              # double 0.21820304123266143
	.quad	0x3fd216d5585e92d2              # double 0.28264363889529165
	.quad	0x3fadd76362a0a8c0              # double 0.058283906735896007
	.quad	0x3fefef320523443f              # double 0.99794865611523408
	.quad	0x3fd4d9f345cca484              # double 0.32580262962671491
	.quad	0x3fe3c140cecb740d              # double 0.6173404730758435
	.quad	0x3f8666daafbc7680              # double 0.010938366401713084
	.quad	0x3fdd53206a36b4ee              # double 0.45819864628249618
	.quad	0x3feed85a51d558fa              # double 0.96391025527080321
	.quad	0x3fcc04b99268d828              # double 0.21889419220832562
	.quad	0x3fe5126aad4105ae              # double 0.65849813307447902
	.quad	0x3fd4c9e8b26b9088              # double 0.32482354568333749
	.quad	0x3fec9c0f916aa2db              # double 0.89405039216679982
	.quad	0x3fb50c462fe2fb00              # double 0.082218538943362063
	.quad	0x3fe69919055ea258              # double 0.70618868874323493
	.quad	0x3feb8fb02e0e5366              # double 0.86129006381325435
	.quad	0x3fbae51c3e31e4f0              # double 0.10505844610624471
	.quad	0x3fe7457633f2ad38              # double 0.7272292151077755
	.quad	0x3fb7aff3a5b738e0              # double 0.092528560598313714
	.quad	0x3fd1aacdbc35b470              # double 0.2760500276552369
	.quad	0x3fcf84e133e5b71c              # double 0.24624266656922422
	.quad	0x3fba0c8c5c91cc80              # double 0.10175397167204103
	.quad	0x3fe63884767c0576              # double 0.69439910069938438
	.quad	0x3fea7b26d36faf6e              # double 0.82753316208025551
	.quad	0x3fe00ac06de6587b              # double 0.50131246056368128
	.quad	0x3f7853ab0b9efb80              # double 0.0059391671620109276
	.quad	0x3fd61abe4cd7a92c              # double 0.34538228515761449
	.quad	0x3fe97eae18544e0d              # double 0.7967138743574097
	.quad	0x3fe67bf87be5b02e              # double 0.70263313482928935
	.quad	0x3fec4cfd9b53c4c5              # double 0.88439827287052053
	.quad	0x3fc96267709c9274              # double 0.19831555365194087
	.quad	0x3feba95ae66708d2              # double 0.86442322731479693
	.quad	0x3fe82c432362b0e6              # double 0.75540310775025143
	.quad	0x3fdb20542615ed12              # double 0.42384818763066889
	.quad	0x3fe3f1b153d2f49a              # double 0.62325350162395243
	.quad	0x3fdca8d3b8786ce0              # double 0.44780438437164882
	.quad	0x3fe848146ae1395c              # double 0.75879879832227059
	.quad	0x3fecc4da6352e681              # double 0.89902991675553789
	.quad	0x3fe5312b260d6c8e              # double 0.66225202018849116
	.quad	0x3fc42f6f3c5ed044              # double 0.1576975865151572
	.quad	0x3fdd8b72769134f2              # double 0.46163617686109071
	.quad	0x3fb9e6086d863738              # double 0.10116627382214183
	.quad	0x3fe79c32e95a1bee              # double 0.73781724525985992
	.quad	0x3fcb6c4a936e298c              # double 0.21424228857752003
	.quad	0x3fd3079ca02f5506              # double 0.29733958857589504
	.quad	0x3fe6658edb3db6b1              # double 0.69989722080727834
	.quad	0x3fec3c94624728f0              # double 0.88239497370639519
	.quad	0x3fd6037399b5d700              # double 0.34396066675923009
	.quad	0x3fe41fdb723837d2              # double 0.62888881977573363
	.quad	0x3fe5ac0e2fdd848c              # double 0.6772528586262907
	.quad	0x3fe4c4a31e03c080              # double 0.64900356161344064
	.quad	0x3fbe378c51e22a60              # double 0.11803509711368454
	.quad	0x3fccfffcf3a6aed4              # double 0.22656213662172908
	.quad	0x3fd7c0b9e4fc739c              # double 0.37113807069709437
	.quad	0x3fac825069475110              # double 0.055681717730893365
	.quad	0x3fec30858a7ca13c              # double 0.88092305229387291
	.quad	0x3fe58c0fa63fa1eb              # double 0.67334730596945513
	.quad	0x3fe8df1ee3db5b7d              # double 0.77723640921872994
	.quad	0x3feff8d11a6cec8f              # double 0.99912314568736515
	.quad	0x3fd921b12b6ac3ae              # double 0.39268140068002821
	.quad	0x3fece4d0c5864bb7              # double 0.90293158129713091
	.quad	0x3fe146de5c44987d              # double 0.53990095158657392
	.quad	0x3fefafa4e5c9111f              # double 0.99019093399013857
	.quad	0x3fed329c1d94dcb4              # double 0.9124279573215035
	.quad	0x3fec679e4f351492              # double 0.88764872999367328
	.quad	0x3fdfc0ddaed65e8a              # double 0.49614660333598037
	.quad	0x3fc00841d94816e4              # double 0.12525199040845003
	.quad	0x3fdd56a2eda91614              # double 0.4584128685858968
	.quad	0x3fcec6091a8afc38              # double 0.24041856571236209
	.quad	0x3fef38a11b71ca64              # double 0.97566275940182523
	.quad	0x3fc75d40696a96b0              # double 0.18253331324847499
	.quad	0x3feef440c8b8f2c2              # double 0.96731604770283064
	.quad	0x3fcb766d28212078              # double 0.21455158671801988
	.quad	0x3fda5ac155c31b36              # double 0.411789258720478
	.quad	0x3fe23864ab85cf5d              # double 0.56938394070173681
	.quad	0x3fef553a20b82d90              # double 0.97915369406239172
	.quad	0x3fdd13f22a78a14e              # double 0.45434240481929045
	.quad	0x3fd9c458b9f2427a              # double 0.4026090446359728
	.quad	0x3fea7d30fdb1e728              # double 0.82778214978973086
	.quad	0x3feb09338caa592f              # double 0.8448732135173368
	.quad	0x3fecc427a6bba012              # double 0.89894468846341824
	.quad	0x3fc88e4e5817664c              # double 0.19184283543909186
	.quad	0x3fea4b84a8845ad1              # double 0.82171852982977545
	.quad	0x3fee98032538a5bb              # double 0.9560561873415091
	.quad	0x3fd923a6e5b63a62              # double 0.39280102188869226
	.quad	0x3fc87f927960d124              # double 0.19139319349927419
	.quad	0x3fe0f7a3c1080fd7              # double 0.53022945119345877
	.quad	0x3fe6d39ea275386d              # double 0.71333247880990103
	.quad	0x3fc9c7a1f509189c              # double 0.20140480484605383
	.quad	0x3fd768cd47cc02ec              # double 0.36577159892480782
	.quad	0x3fee86c2ebfb15c9              # double 0.95395036783218601
	.quad	0x3fd658824e89aade              # double 0.34915216130927529
	.quad	0x3fe74ea452d3adf8              # double 0.7283498399460191
	.quad	0x3fc07fefc0e36880              # double 0.12890431326269791
	.quad	0x3fea0077ff43047f              # double 0.81255721908395617
	.quad	0x3fe5b37bbebf9259              # double 0.67815959220440469
	.quad	0x3fc9da6aa9dd91dc              # double 0.20197804731573299
	.quad	0x3fc4511deefedf20              # double 0.15872549218851706
	.quad	0x3fefb82ac7025ccf              # double 0.99123133534421892
	.quad	0x3fe5af4e23c7e63a              # double 0.67764956463287906
	.quad	0x3fe7da1b33904225              # double 0.74537429877279193
	.quad	0x3fdb70cc4dfdf68c              # double 0.42875964752588724
	.quad	0x3fe5828930ffbf38              # double 0.67218455858344495
	.quad	0x3fd74241d2e4bd54              # double 0.36341901393003195
	.quad	0x3f83b57e58860b40              # double 0.0096235152020703873
	.quad	0x3fe9889427a2a3cb              # double 0.79792220822593529
	.quad	0x3fe14489236c2330              # double 0.53961617392005756
	.quad	0x3fb56acbcb9f7108              # double 0.083660828793146291
	.quad	0x3fe2a1900b79ae23              # double 0.58222200623771803
	.quad	0x3fee2a131ffe548b              # double 0.94263607262350158
	.quad	0x3fb809ada6371c10              # double 0.093897679405117395
	.quad	0x3fe56db106f7d13b              # double 0.66964007721848107
	.quad	0x3feb760f439cca1d              # double 0.85816157537039184
	.quad	0x3fde58f09ec75cb2              # double 0.47417846208322623
	.quad	0x3fd73dbb7a812f38              # double 0.36314284289686638
	.quad	0x3fcd61bdfd4de6a8              # double 0.22954535358785688
	.quad	0x3fe012b59f9300d6              # double 0.50228387038080302
	.quad	0x3fe84558af6cb4c9              # double 0.75846513998626464
	.quad	0x3fdf135344e8322e              # double 0.48555452088547468
	.quad	0x3fc071fa68f5e770              # double 0.12847833752658344
	.quad	0x3fea0ab696c01d9d              # double 0.81380776828239088
	.quad	0x3fd70902b5005872              # double 0.35992496181405109
	.quad	0x3fd01cba72d7833a              # double 0.25175343718551668
	.quad	0x3fedc80419545549              # double 0.93066601702836593
	.quad	0x3febad80e9eba2f9              # double 0.86492963492955177
	.quad	0x3fedde39156d1d41              # double 0.93337682900247654
	.quad	0x3fd6d9f79459e874              # double 0.3570536564581126
	.quad	0x3fb91bbd84deb6c8              # double 0.098079533518752204
	.quad	0x3fd1f63e2797ce62              # double 0.28065446726325238
	.quad	0x3fd8f1b95da0f70e              # double 0.3897536672919707
	.quad	0x3fd03ba70965b154              # double 0.25364089887331898
	.quad	0x3fe164ecaee4b773              # double 0.54356989058372418
	.quad	0x3faa40041e428f80              # double 0.051269653982017438
	.quad	0x3fc1e474a9018258              # double 0.13978441478959058
	.quad	0x3fdbe9c589c53f06              # double 0.43614328817510317
	.quad	0x3fe9eca227cf9caf              # double 0.81013591552336617
	.quad	0x3fa2780f4aa46be0              # double 0.036072233068089821
	.quad	0x3fe559c6814d5a6a              # double 0.66720891241386693
	.quad	0x3fdef76ee79a2b9a              # double 0.48385212533383426
	.quad	0x3fe74a76936ea548              # double 0.72783974452355782
	.quad	0x3fa719ef51153710              # double 0.045119742057620482
	.quad	0x3feac8f51660f8ce              # double 0.83703092928751643
	.quad	0x3fe5582a5f9dbe7d              # double 0.66701239275967306
	.quad	0x3fe5e3b90c7b6112              # double 0.68404819906121106
	.quad	0x3f58e12b64eab400              # double 0.0015185283443017727
	.quad	0x3fc0deaa67a72dc8              # double 0.13179521619018275
	.quad	0x3fcda03e69560910              # double 0.2314527525268848
	.quad	0x3fac359928680c60              # double 0.055096422369410147
	.quad	0x3fdc6db4add10afc              # double 0.44419590925478736
	.quad	0x3febe55adeec33b1              # double 0.87174743213255657
	.quad	0x3fe50d789584e6c8              # double 0.65789441302259721
	.quad	0x3fe842619f23c432              # double 0.75810319025015915
	.quad	0x3fd3ac7708df85c4              # double 0.30740142694966388
	.quad	0x3f8088e651a999c0              # double 0.0080736154242914137
	.quad	0x3fa491c9fb4c1130              # double 0.040174781728668285
	.quad	0x3fef9e2235c8ae04              # double 0.98805342201870915
	.quad	0x3fe631488a06079c              # double 0.69351603467679324
	.quad	0x3fe25fdf03ef215c              # double 0.57420302170161674
	.quad	0x3fa82c851d77f0b0              # double 0.047214660498839378
	.quad	0x3f9151ad80fdc900              # double 0.016913138387686821
	.quad	0x3fd95469ceed9592              # double 0.39577717979258253
	.quad	0x3f9679ffeabac780              # double 0.021949766828306405
	.quad	0x3fe54e939019206f              # double 0.66584184784097811
	.quad	0x3fc8d12bab94d7c8              # double 0.19388337972639946
	.quad	0x3fe17247f619c9d7              # double 0.54520032946157471
	.quad	0x3fe2ecb3b3ccc79b              # double 0.59139428250476855
	.quad	0x3fc15f7b428c7844              # double 0.13572636365364776
	.quad	0x3fd40f2135c18caa              # double 0.31342344522108567
	.quad	0x3fd95635159842f0              # double 0.39588667973389047
	.quad	0x3fdee2a319e732f8              # double 0.48258283166505533
	.quad	0x3fe0613b04412d2e              # double 0.51186896162963591
	.quad	0x3feb619b3b662ab2              # double 0.85566484071144644
	.quad	0x3fd1fcc3145cadf2              # double 0.28105236996154226
	.quad	0x3fe79dd60f480685              # double 0.73801711067808695
	.quad	0x3feb11a9fdd75b00              # double 0.84590625360837635
	.quad	0x3fde4656858b947e              # double 0.47304308930899441
	.quad	0x3fddde4aa242910a              # double 0.46669259877877833
	.quad	0x3fcfdea99a76e0d8              # double 0.24898262064176069
	.quad	0x3fd6bdeaa92b6776              # double 0.35534159203017823
	.quad	0x3fdb555bf796cc0e              # double 0.42708491495722078
	.quad	0x3fe50eca4e5f1e90              # double 0.65805545145936328
	.quad	0x3fd8f47536791b20              # double 0.38992052383075482
	.quad	0x3fcdf9293279f62c              # double 0.23416628803890782
	.quad	0x3fdc28f82747d770              # double 0.44000057064055564
	.quad	0x3fedb690efec362d              # double 0.92853590831663768
	.quad	0x3fbd2f773b622160              # double 0.1140055198649228
	.quad	0x3fafd5094cb32c50              # double 0.062172213185100689
	.quad	0x3fa5fd0b3f24e670              # double 0.042946196992898034
	.quad	0x3febb06c71d4e9f9              # double 0.86528608544114072
	.quad	0x3fd281b5fe5704b0              # double 0.2891669257915721
	.quad	0x3fd434afef29ec66              # double 0.31571577411495466
	.quad	0x3fc5b9d73152bc44              # double 0.16973390491827633
	.quad	0x3fd3380633b54be4              # double 0.30029444741847855
	.quad	0x3fdd78962b7d2f7c              # double 0.46048502203915809
	.quad	0x3fe5839b2c26f2d4              # double 0.67231520293679603
	.quad	0x3fec7bfc6a11251c              # double 0.89013500896649899
	.quad	0x3fc3c58d881ab848              # double 0.15446633477898986
	.quad	0x3fd88bf44d00668e              # double 0.38354213256534642
	.quad	0x3fa5eeb77c8fdfa0              # double 0.042836889224360464
	.quad	0x3fb0c0879429dc38              # double 0.065437768624051595
	.quad	0x3fea799143e0e2b5              # double 0.82733977563392236
	.quad	0x3fd62da076b6bffc              # double 0.34653483956481046
	.quad	0x3fcaaca109acaa1c              # double 0.20839322063814414
	.quad	0x3fc8e4a95097fa58              # double 0.19447819171178327
	.quad	0x3fc7f938288c7258              # double 0.18729307155526231
	.quad	0x3feb208c34c9d155              # double 0.84772310552811325
	.quad	0x3fe8b656cf7def45              # double 0.77225819135444651
	.quad	0x3fd217402f96843e              # double 0.2826691117025496
	.quad	0x3fd5e36224962728              # double 0.3420033795633679
	.quad	0x3fdd586d1b7936ac              # double 0.45852210696180395
	.quad	0x3fc208b9ca2f1a24              # double 0.14089128849282517
	.quad	0x3fe396a24c33d304              # double 0.61213793643273151
	.quad	0x3fea2e321de4feb7              # double 0.81813913191577725
	.quad	0x3fd806ad281d374e              # double 0.37540749471087487
	.quad	0x3fe0c23d071fe2a4              # double 0.52371074096216264
	.quad	0x3fed7f521ebcf42d              # double 0.92179208758864706
	.quad	0x3fded462722d7174              # double 0.48171292448184677
	.quad	0x3fb4f487c987c7d0              # double 0.081856238080745713
	.quad	0x3fcb4cd90edfac94              # double 0.21328271127945142
	.quad	0x3fe7ab04f728d1d8              # double 0.7396263911564871
	.quad	0x3fdc4550399d9114              # double 0.44173055292618923
	.quad	0x3fdf0af7dc2e9e44              # double 0.48504444601210062
	.quad	0x3fded0ddf808a682              # double 0.48149823400545
	.quad	0x3feb38c0039a8aa4              # double 0.85067749694674832
	.quad	0x3fa4d4240fca0a00              # double 0.040681006362337513
	.quad	0x3feeeca93955b0e7              # double 0.96638928602399409
	.quad	0x3fddf48867529f52              # double 0.46805009927856134
	.quad	0x3fe46a68bd73be04              # double 0.63798939707152202
	.quad	0x3fefea90ec326469              # double 0.99738355762668817
	.quad	0x3fdd293cbe087dce              # double 0.45564192350317689
	.quad	0x3fe2ff248fb2b389              # double 0.5936453634836748
	.quad	0x3fe8116d1d46d657              # double 0.75212722509486241
	.quad	0x3fd8d0ca838df6e6              # double 0.38774359557269944
	.quad	0x3fd55167635d1544              # double 0.33309349730946658
	.quad	0x3fd54878d0dbe976              # double 0.33254833599462275
	.quad	0x3feb6c09134767f1              # double 0.85693792119422885
	.quad	0x3fec6f1254df4de1              # double 0.88855854584329219
	.quad	0x3f6264d590137d00              # double 0.0022453471325288854
	.quad	0x3fe82d09f002999d              # double 0.75549790265067751
	.quad	0x3fcbc24ca2d27504              # double 0.21686704588220362
	.quad	0x3fe6c8eedcb07faa              # double 0.71202796080978215
	.quad	0x3fd0a76bb7d0100a              # double 0.26021855307067254
	.quad	0x3fe22a70422e227f              # double 0.56768048215697309
	.quad	0x3fe0fbdee5aa277d              # double 0.53074593407039539
	.quad	0x3face084750ce3b0              # double 0.056400431908009252
	.quad	0x3fee65b6c8ca32b4              # double 0.94991625992550732
	.quad	0x3fe5a0ddba6191f5              # double 0.67588697817387688
	.quad	0x3fda1facf36b9ff4              # double 0.4081833245422779
	.quad	0x3fe9b2d9bcda6f55              # double 0.80308234105494114
	.quad	0x3fce3ee425275ed4              # double 0.23629428686284959
	.quad	0x3fef6a0af887fd35              # double 0.98169468442202989
	.quad	0x3fe579f4ec5ece29              # double 0.67113729635315622
	.quad	0x3fd06221c6f37080              # double 0.2559894984131077
	.quad	0x3fe3dfb8aa3c6603              # double 0.62105973481374155
	.quad	0x3fed1b0390505508              # double 0.90954759775436944
	.quad	0x3fe26fd2a185e1cf              # double 0.57615024135071191
	.quad	0x3fe8ca591bb53f61              # double 0.77470069324224877
	.quad	0x3feced3d4cb7b944              # double 0.90395989402694754
	.quad	0x3fd7f4f67c2ef6e0              # double 0.37432634475031357
	.quad	0x3fead44be5aef598              # double 0.83841509685560123
	.quad	0x3fe7ba5ef294c885              # double 0.74150035266053804
	.quad	0x3fe5dacc7519d099              # double 0.68295882102258354
	.quad	0x3feca47e5847dc9c              # double 0.89507977716756981
	.quad	0x3fe83dc0920ccbcd              # double 0.75753811383617065
	.quad	0x3fe6209a9cae883b              # double 0.69147997476489509
	.quad	0x3fb7a07f6afe3728              # double 0.092292750951142311
	.quad	0x3fe71f11778710a4              # double 0.72254250855668944
	.quad	0x3fb779bfa3af85f8              # double 0.091701486074747041
	.quad	0x3fecab66b0ae8645              # double 0.89592298992301578
	.quad	0x3fdf659fa7f2373a              # double 0.4905776157473728
	.quad	0x3fc52660d23ede8c              # double 0.16523370996377584
	.quad	0x3fe7379ac7d02a48              # double 0.72553767229084887
	.quad	0x3fc2f007c4b86b74              # double 0.14795014482009672
	.quad	0x3fd9c7e8825237ae              # double 0.40282643057514178
	.quad	0x3fd24cc39ffcf2ee              # double 0.28593531249843707
	.quad	0x3fd778695965d394              # double 0.36672433595895737
	.quad	0x3faafd571561dc30              # double 0.052714082107677362
	.quad	0x3fe9d0e65ca903d8              # double 0.80675047013948653
	.quad	0x3fe1f8aee529e6aa              # double 0.56160683401613665
	.quad	0x3fed09e4217aa6f6              # double 0.90745741404427238
	.quad	0x3fe5424c2d2a63af              # double 0.66434296437647855
	.quad	0x3fb4ec1a6fe5b380              # double 0.081727649992627604
	.quad	0x3fe9bd4cf5e51b81              # double 0.804357986701561
	.quad	0x3fe305d71ea0fe13              # double 0.59446292860224259
	.quad	0x3fd193afe6653230              # double 0.274639105792434
	.quad	0x3fed03dd43a04b2f              # double 0.90672171791297795
	.quad	0x3fd119d67680780e              # double 0.26720201084560891
	.quad	0x3fe4103b9ebc5ed3              # double 0.62698155406084266
	.quad	0x3fcf1884760a0384              # double 0.24293571246746748
	.quad	0x3fc48fd92bf39ae0              # double 0.16063990255425775
	.quad	0x3f9638a94b261060              # double 0.021700520717346072
	.quad	0x3fd42cf65cbe3e44              # double 0.31524428421923667
	.quad	0x3fa64cfee157dd80              # double 0.043556180007665368
	.quad	0x3fe65a3f759cd25b              # double 0.69851658793647731
	.quad	0x3fdd598377eacb44              # double 0.4585884734216743
	.quad	0x3fe611e9283259fd              # double 0.6896863732425228
	.quad	0x3fed2aaf47a0a47d              # double 0.9114605330443194
	.quad	0x3fe5072c8cd357f0              # double 0.65712573533050822
	.quad	0x3fef9e369b9b9d2f              # double 0.98806314842378195
	.quad	0x3fe3b7860885b03c              # double 0.61615277924057166
	.quad	0x3fe21a3db6386402              # double 0.56570325460336357
	.quad	0x3fed9aee1b7be32c              # double 0.92516236656147077
	.quad	0x3fde7700951a5004              # double 0.47601332245653816
	.quad	0x3fed0c37a1b73f1d              # double 0.90774137101286423
	.quad	0x3fe5503a74dd608c              # double 0.66604349923274375
	.quad	0x3fee5ebc3e3e6120              # double 0.94906437069861127
	.quad	0x3feda81f9c1ce800              # double 0.92677288523486823
	.quad	0x3fe0bd80b47c5608              # double 0.52313266039954076
	.quad	0x3fe4c871ba5a90a2              # double 0.64946829220982161
	.quad	0x3fe207ded836cec8              # double 0.56346075276675212
	.quad	0x3fe1647f9b7ed867              # double 0.54351787920201111
	.quad	0x3fe93e5868006954              # double 0.788860514763011
	.quad	0x3fea29fa006da56a              # double 0.81762409289983151
	.quad	0x3fdcd43d325a6286              # double 0.45045404355327212
	.quad	0x3fc8bd374798ef20              # double 0.19327441211668717
	.quad	0x3fe443d8a49de3e8              # double 0.63328201438627918
	.quad	0x3fe5d32750d68bbe              # double 0.6820255831593085
	.quad	0x3fe9371566a03250              # double 0.78797407192321067
	.quad	0x3fd7362df4bb7e8c              # double 0.36268185519836815
	.quad	0x3fe60efa6ea6898d              # double 0.68932839976723559
	.quad	0x3fe0cc35fb5f4406              # double 0.52492808433646654
	.quad	0x3fde4abd387c452e              # double 0.47331171528010685
	.quad	0x3fe033e3fd586d98              # double 0.50633429986503398
	.quad	0x3fe2417bf26b3f8b              # double 0.57049367282341856
	.quad	0x3fdd90c8fcad2cec              # double 0.46196198153911783
	.quad	0x3fece5b71885f6fa              # double 0.90304140844065661
	.quad	0x3fe5f4f1ad8b4e8b              # double 0.6861503972563282
	.quad	0x3fdd00fd5f9c746e              # double 0.45318540894533654
	.quad	0x3f9715b357cb6fc0              # double 0.022543718560754433
	.quad	0x3fedde3d5680f950              # double 0.93337885756754169
	.quad	0x3fe16a99ef4085d5              # double 0.54426285485186077
	.quad	0x3fe63fe7c4245ccc              # double 0.69530094441406609
	.quad	0x3fca20aa06a4c670              # double 0.2041218311729156
	.quad	0x3fdd5fba863ec9f6              # double 0.45896781072511261
	.quad	0x3fc41cd00cf9b4e4              # double 0.15712929376187568
	.quad	0x3fe9722e11ccdfa6              # double 0.7951879832898967
	.quad	0x3fe29f212721eab6              # double 0.58192498820365901
	.quad	0x3fae7191bd58b9d0              # double 0.059460214961621127
	.quad	0x3fe7508285b5545a              # double 0.728577862881717
	.quad	0x3fd7827d281e3414              # double 0.36733940999767012
	.quad	0x3faaa69a86302c50              # double 0.052052334671394918
	.quad	0x3fdaf08cc9689734              # double 0.42093200367741024
	.quad	0x3fc810710e5276ac              # double 0.18800175856897761
	.quad	0x3fe7332d63f0363e              # double 0.7249972297592604
	.quad	0x3fc8605d593adb54              # double 0.1904408155148426
	.quad	0x3fe5546f54c0d580              # double 0.66655699303980498
	.quad	0x3fe88b3ca8393b0b              # double 0.76699669700778494
	.quad	0x3fe286e5337947e3              # double 0.57896671346156514
	.quad	0x3fe5100ec39ed459              # double 0.65821016509165553
	.quad	0x3feaf40d4ae08a67              # double 0.84229149460254582
	.quad	0x3fdd881b57069dca              # double 0.46143229960076992
	.quad	0x3f5b726f1875ec00              # double 0.0016752324025606224
	.quad	0x3f9b97ecaa99b920              # double 0.026946733391406075
	.quad	0x3fe6560977fd6690              # double 0.69800256190792886
	.quad	0x3fec078eca76ef56              # double 0.87592258018365032
	.quad	0x3fe4c99a328d8c2c              # double 0.64960965989701469
	.quad	0x3fb967738981d980              # double 0.099234791823482382
	.quad	0x3fda8c553bf915de              # double 0.41481524330842301
	.quad	0x3fcccb2c97b86b50              # double 0.22495038421842617
	.quad	0x3fd0c5aa841787b6              # double 0.2620645799598792
	.quad	0x3fe2da85281069e5              # double 0.58917482209227201
	.quad	0x3fd85be7afde680a              # double 0.3806094377010828
	.quad	0x3fba3d0286e6d1f8              # double 0.10249343675133804
	.quad	0x3fe2b1af81758b80              # double 0.58419013295166167
	.quad	0x3fcae058cd0fad58              # double 0.20997152340656089
	.quad	0x3f850d85a88260c0              # double 0.010279697613711725
	.quad	0x3fd20b05feb7e126              # double 0.28192281603652913
	.quad	0x3fef4c0c8ff7947e              # double 0.97803333395553671
	.quad	0x3fe1e63f1b852b09              # double 0.55935626387631132
	.quad	0x3fd3f4ce63d47900              # double 0.31181678532620083
	.quad	0x3fd0168e6c5b5078              # double 0.25137672979077008
	.quad	0x3fde2fe3bd0a818c              # double 0.47167294941939342
	.quad	0x3febf87f933034b6              # double 0.87408426997867283
	.quad	0x3fd16e435afb5af0              # double 0.2723549259657565
	.quad	0x3fcb873a226d9f94              # double 0.21506430321755643
	.quad	0x3fe1548ddbb4f132              # double 0.54157154952512188
	.quad	0x3fbb64d766cc4010              # double 0.10700746783936688
	.quad	0x3fbfd75f9262de30              # double 0.12438008617288498
	.quad	0x3fd85a8e6d16e106              # double 0.38052712109812636
	.quad	0x3fb26057e9ed9900              # double 0.07178258381972924
	.quad	0x3fd70765ad0f792e              # double 0.35982648754533642
	.quad	0x3fea2c17d872c4cc              # double 0.81788246417104337
	.quad	0x3fc24b8ea3db11fc              # double 0.14293082237976751
	.quad	0x3fe795a6f324dfbe              # double 0.73701808442182659
	.quad	0x3feeb54f4809330b              # double 0.95963253087538313
	.quad	0x3fe9a0daac6f43a5              # double 0.80088552168500782
	.quad	0x3fc405f60304d2c0              # double 0.15643191478161178
	.quad	0x3fe1047d45f869d5              # double 0.5317980162247361
	.quad	0x3fe269ef4158a9cf              # double 0.57543146861035577
	.quad	0x3fc55bb53677dfd4              # double 0.16686120185454334
	.quad	0x3fde0642de525872              # double 0.46913215361690341
	.quad	0x3fde1759a8a39176              # double 0.47017518490454024
	.quad	0x3fbecd189aa9f148              # double 0.12031701827976804
	.quad	0x3fc81a282d387f6c              # double 0.18829824646035875
	.quad	0x3fb7e586790a5d70              # double 0.093346027899647188
	.quad	0x3fea1f1114bc9458              # double 0.81629232454418865
	.quad	0x3feda0df920be8ed              # double 0.92588785671912677
	.quad	0x3fb21c6ce615c838              # double 0.070746236966244491
	.quad	0x3fba5fd9817a8c50              # double 0.10302504931546363
	.quad	0x3fdf9fbc7d613500              # double 0.49412452930558004
	.quad	0x3fdfb5d925a0dd0a              # double 0.49547413515706806
	.quad	0x3fe90da697eddba1              # double 0.78291635202082344
	.quad	0x3feb8e631cf59381              # double 0.86113124519452822
	.quad	0x3fe7110e23c0f580              # double 0.72083193762925646
	.quad	0x3fe2c742012f3ab1              # double 0.58682346564622467
	.quad	0x3fe4e9dd2967f35e              # double 0.65354784094925455
	.quad	0x3fe102379f553ba7              # double 0.53152066344943172
	.quad	0x3fe4e9e92d23fc1f              # double 0.65355356995121727
	.quad	0x3fe82a21c6b6d7fc              # double 0.75514305888532318
	.quad	0x3fe0ce5c2bdbbe67              # double 0.52519043508614238
	.quad	0x3fee98f899cc79be              # double 0.95617322958769768
	.quad	0x3fc85ff42567a3c8              # double 0.19042827440651267
	.quad	0x3fc42664ac058570              # double 0.15742166900148957
	.quad	0x3fd4a6ab6c6f3efe              # double 0.32267270650207525
	.quad	0x3fb3a546a7730790              # double 0.076740661507783025
	.quad	0x3fee7471d63c04f3              # double 0.95171443789163701
	.quad	0x3fc34f2d0a3b93e0              # double 0.15085375785488875
	.quad	0x3fb0dd88f8bf9300              # double 0.065880356530737316
	.quad	0x3fd627df0888ea5c              # double 0.34618354638556581
	.quad	0x3fd9310717b908ea              # double 0.39361741367987568
	.quad	0x3fe40deadfc8758e              # double 0.62669891078592044
	.quad	0x3fef21d59e4854f6              # double 0.97288018145141453
	.quad	0x3fddfc2baa068158              # double 0.46851626972240501
	.quad	0x3fea5cc502aa77b9              # double 0.82382441063577183
	.quad	0x3feed70c3dd7e02d              # double 0.96375095442545488
	.quad	0x3fe04aacbbaf8ed8              # double 0.50911556870820629
	.quad	0x3fdd20421e4d8884              # double 0.45509388884796231
	.quad	0x3fe583df74a48e7f              # double 0.67234776288792364
	.quad	0x3fa903d9e836b9a0              # double 0.048857507320792637
	.quad	0x3fbcca7ad2fe7720              # double 0.11246459628315764
	.quad	0x3fe98a630cda721d              # double 0.79814293394480595
	.quad	0x3fd2f05186710c54              # double 0.29591787461339902
	.quad	0x3fee3c63198d6e75              # double 0.94487147322384024
	.quad	0x3f9eb0eb4bc3c140              # double 0.02997176790171463
	.quad	0x3fd2205bafa24454              # double 0.28322498466247237
	.quad	0x3fea43cea1d9c06f              # double 0.82077724086231096
	.quad	0x3fc79b08c8816454              # double 0.18441877165131138
	.quad	0x3fec302f5d259b30              # double 0.88088195984605555
	.quad	0x3fedddfb3674dc3a              # double 0.93334732662231734
	.quad	0x3fe2490309add653              # double 0.57141258135261308
	.quad	0x3fd278997227a996              # double 0.28861080310766718
	.quad	0x3fd9d2bfc44ebfe2              # double 0.40348810358682219
	.quad	0x3fe8051329c95348              # double 0.75061948930179145
	.quad	0x3face6fe68a22440              # double 0.056449842713000908
	.quad	0x3fc7902359c122c8              # double 0.18408624537030094
	.quad	0x3fe6874abffda242              # double 0.70401513574785946
	.quad	0x3feedb11584fe57f              # double 0.9642416691632859
	.quad	0x3fe97efa75ac207d              # double 0.79675028784642132
	.quad	0x3fee3ffaef935e35              # double 0.94531008522148474
	.quad	0x3fef768d929f856e              # double 0.98322180402116799
	.quad	0x3fd16bd93c0f913e              # double 0.27220755448640321
	.quad	0x3fd6e0d8f06bf8b2              # double 0.35747359732330175
	.quad	0x3fe3f8fd911b15c6              # double 0.62414434758164172
	.quad	0x3fd17dcb63053078              # double 0.27330288572262118
	.quad	0x3fba60b79ac31428              # double 0.1030382874333361
	.quad	0x3fdf7c53998e6864              # double 0.49196329112749582
	.quad	0x3fc981c89d4ea030              # double 0.19927318268787664
	.quad	0x3fe87218a16ead22              # double 0.76392776040794197
	.quad	0x3feefcc6f26915c3              # double 0.96835658403204438
	.quad	0x3fc288f68330d8ac              # double 0.14480477720070917
	.quad	0x3fe2791d21084c96              # double 0.57728439761776218
	.quad	0x3fe7e18f048daab9              # double 0.7462840165074659
	.quad	0x3fc4e81887333e50              # double 0.16333300210543422
	.quad	0x3fed567c7e26c493              # double 0.91680740965797936
	.quad	0x3fef203f013cfd92              # double 0.9726862930473763
	.quad	0x3fefb1a228f59d2a              # double 0.99043376922501136
	.quad	0x3fd3b008b1c30070              # double 0.3076192604021406
	.quad	0x3fe9abbfe981ed28              # double 0.80221553427637549
	.quad	0x3fe4a14d31f3a606              # double 0.64469012981607032
	.quad	0x3fc7dca44bad43bc              # double 0.18642095275074932
	.quad	0x3fe79f9556573ace              # double 0.73823038924623474
	.quad	0x3fbee4abcbcab0c8              # double 0.12067674374947324
	.quad	0x3fee57d38b20ca58              # double 0.9482209889741382
	.quad	0x3f7e3e20c8ab3f00              # double 0.0073834686870239974
	.quad	0x3fd86de10463e704              # double 0.38170648030028098
	.quad	0x3fdf82ae346d6548              # double 0.49235110397201653
	.quad	0x3fcd634bb0e51924              # double 0.22959276330420508
	.quad	0x3fee9201f703ecbc              # double 0.95532320256406633
	.quad	0x3fc17e65df1bad14              # double 0.13666985887480421
	.quad	0x3fed85c5016adcc3              # double 0.9225792911228371
	.quad	0x3fca4166fd36d278              # double 0.20512091983768577
	.quad	0x3fd62733a647f166              # double 0.34614268530255854
	.quad	0x3fbf9817fb27c148              # double 0.12341451532097836
	.quad	0x3fe60252ed0923f8              # double 0.68778368278537894
	.quad	0x3fd66df635272a9a              # double 0.35046153250429202
	.quad	0x3fe62b14e3a99736              # double 0.69275898423504745
	.quad	0x3fd9b6f32ec55b60              # double 0.40179137771104045
	.quad	0x3fc507bf8c32d578              # double 0.16429895730622568
	.quad	0x3fdc9b602cdaa786              # double 0.44698337917599706
	.quad	0x3fb595accd1f8280              # double 0.084315109328153781
	.quad	0x3fd7f7420a4cd12e              # double 0.37446642881265546
	.quad	0x3fc0c9d51f2cf3d4              # double 0.13115943929906726
	.quad	0x3fe85571859efa82              # double 0.76043010804990296
	.quad	0x3fef797c55546efd              # double 0.98357979455928978
	.quad	0x3fdc584d6d2ddbac              # double 0.44288955366158222
	.quad	0x3fe5242b3697d6cd              # double 0.6606651369354154
	.quad	0x3fcc9fc2327a6b54              # double 0.22362544502979154
	.quad	0x3fea30a1ebd9a2f1              # double 0.81843658508759465
	.quad	0x3fe0dde21bee13da              # double 0.52708535628391506
	.quad	0x3fcbac94e487e420              # double 0.21620427283031152
	.quad	0x3fe979536fad6ce7              # double 0.79606029331207828
	.quad	0x3fe2e7679fb1ae17              # double 0.59074765386816608
	.quad	0x3fe3d69a6d3845f0              # double 0.61994668323512592
	.quad	0x3fe4125297c529d6              # double 0.62723664896594289
	.quad	0x3fa81796ee424040              # double 0.047054974159550955
	.quad	0x3fd2478be909ec16              # double 0.28561685331050179
	.quad	0x3fe637133d3f0c68              # double 0.6942230411735979
	.quad	0x3fec049389911bfc              # double 0.87555863255045052
	.quad	0x3fe4d9b850f69b3a              # double 0.65157714665551869
	.quad	0x3fd93afc27890f1c              # double 0.39422515736463182
	.quad	0x3fe5073388ed812d              # double 0.65712906593038201
	.quad	0x3fc72c49b89704bc              # double 0.18103906167201511
	.quad	0x3fc0b742dafe4d78              # double 0.13059268658671974
	.quad	0x3fe01669543da239              # double 0.50273577168724792
	.quad	0x3fef48ae012afebc              # double 0.97762203434100269
	.quad	0x3fe4da7498cce55e              # double 0.65166692584822861
	.quad	0x3fc1bcf85fd3312c              # double 0.13857941321328704
	.quad	0x3fd41c4c077e6fce              # double 0.31422711116624391
	.quad	0x3fef57ebfdf76e3e              # double 0.97948264696919529
	.quad	0x3feaff5ea333946c              # double 0.84367305636682266
	.quad	0x3fed85bcc87d582b              # double 0.92257537038927262
	.quad	0x3fba01b9ab4ed610              # double 0.1015888255340871
	.quad	0x3fd380799b590084              # double 0.3047164933268578
	.quad	0x3fee5fba26b28374              # double 0.94918544347829802
	.quad	0x3fdcc33ec127131c              # double 0.44941681730806393
	.quad	0x3fe2581d19253d73              # double 0.57325606261467354
	.quad	0x3fea65bfde0538f5              # double 0.82492059100493853
	.quad	0x3fce69c9ddf38db4              # double 0.23760341012449049
	.quad	0x3fd50dee044a78ea              # double 0.32897520464929519
	.quad	0x3fb2e56ce720c3d0              # double 0.073813253810626422
	.quad	0x3fe44cf3c3f3516b              # double 0.6343935801656192
	.quad	0x3fe3ca0b196fc03c              # double 0.61841349571296389
	.quad	0x3fe16ac84eee8c8c              # double 0.54428496757863476
	.quad	0x3fcdea3f7c8da444              # double 0.23371118146613601
	.quad	0x3fd8698b9ddfdb58              # double 0.38144197862077567
	.quad	0x3fee910d162ef921              # double 0.95520643551552464
	.quad	0x3fc5b03b2225d8f4              # double 0.16944064299941142
	.quad	0x3fe1881f0f7b59a3              # double 0.54786637328907195
	.quad	0x3feb2b1e201aa13b              # double 0.84901338835064821
	.quad	0x3fea6c8b7c188107              # double 0.8257501052612789
	.quad	0x3fecf5fcefc12fb9              # double 0.90502783610417403
	.quad	0x3f9ed7064de5eee0              # double 0.030117128853347164
	.quad	0x3fd5584cadb34e44              # double 0.33351437533312756
	.quad	0x3fe18426eefc2ab5              # double 0.54738184620631236
	.quad	0x3fdcd500cd716576              # double 0.45050067961491125
	.quad	0x3fe7c31ae3150bbf              # double 0.74256653167719111
	.quad	0x3fe67de6ad5213c4              # double 0.70286878444368783
	.quad	0x3f934acd150d1f00              # double 0.018840031061045259
	.quad	0x3fed18d55ecdd439              # double 0.90928143040094433
	.quad	0x3fe4f81490f7f5fc              # double 0.65528324426821838
	.quad	0x3fe8caf9aca8282e              # double 0.7747772571758611
	.quad	0x3fc69d0ab20d5ee8              # double 0.17666753477055086
	.quad	0x3fd8a9217389ae36              # double 0.38532291682233522
	.quad	0x3feb4085f9b5c5fe              # double 0.85162638446325878
	.quad	0x3fe2b9193a12bdb2              # double 0.58509503691123244
	.quad	0x3fe278e89f2ffc9b              # double 0.57725936023043134
	.quad	0x3fd49422b8c1a372              # double 0.32154148142449579
	.quad	0x3fe0d971b5f9fcd5              # double 0.52654347936904833
	.quad	0x3fe89717e1822d81              # double 0.76844400448446504
	.quad	0x3f9f7b65b18900e0              # double 0.030744160614859406
	.quad	0x3fe7f62bb6eb8174              # double 0.74880014158774921
	.quad	0x3fee2512ab7e0977              # double 0.94202550406070784
	.quad	0x3fed2dd70c36475c              # double 0.91184570679818532
	.quad	0x3fe4a5a03d3d09d3              # double 0.64521800957327924
	.quad	0x3fe8ee899216f676              # double 0.77911833317894152
	.quad	0x3fc1ef44ae4d6cc8              # double 0.14011438856946357
	.quad	0x3f9841decb2fe240              # double 0.023688775207093338
	.quad	0x3fd579a0d6cfb576              # double 0.33554860093757755
	.quad	0x3fe903c7c0f92369              # double 0.78171146097257094
	.quad	0x3fe2ec5d148a7e1f              # double 0.5913529778662826
	.quad	0x3fe187b873999f74              # double 0.54781744554655498
	.quad	0x3fedebdd5cdf65dc              # double 0.93504207743825018
	.quad	0x3fe639346dd69366              # double 0.69448300793429207
	.quad	0x3fd3e34389f2ed9c              # double 0.31074608298851003
	.quad	0x3fd12dcc131664c0              # double 0.26842023719798291
	.quad	0x3fe75d8a92e44503              # double 0.73016861619740359
	.quad	0x3fe4455a7a5b2842              # double 0.63346599481270283
	.quad	0x3fdb43b39443469c              # double 0.42600717047489822
	.quad	0x3fe7e9db2c995f98              # double 0.7472968932224715
	.quad	0x3f8bed29b0828ec0              # double 0.013635945986897879
	.quad	0x3fd9185357750b50              # double 0.3921097139429337
	.quad	0x3fd0738c976ead3c              # double 0.25705256260217246
	.quad	0x3fd84d97e7084196              # double 0.37973592340224493
	.quad	0x3fb6a8d6b37e6db0              # double 0.088513773748153168
	.quad	0x3fdc03da14ffa11a              # double 0.43773510027541962
	.quad	0x3fbcdf9c2abf02c8              # double 0.11278701823813286
	.quad	0x3fedacb5cbd5a89f              # double 0.92733278094717153
	.quad	0x3feb75dc117024f9              # double 0.8581371632182303
	.quad	0x3fd2418a9a7a7c80              # double 0.28525033078944517
	.quad	0x3fdf954698dc37aa              # double 0.49348606994396482
	.quad	0x3fad1167ddce79b0              # double 0.056773420167917421
	.quad	0x3fd757c36ac8bc40              # double 0.36473164966713867
	.quad	0x3fe4f339b7867605              # double 0.65469060749791252
	.quad	0x3fd78b2b5792e0b8              # double 0.36786922027705371
	.quad	0x3fc29cb45b09676c              # double 0.14540724225190205
	.quad	0x3fd39ebac702cbdc              # double 0.30656308588657821
	.quad	0x3fd1ef17b6a5673a              # double 0.28021805607351136
	.quad	0x3fedcb60b394e91f              # double 0.93107638430163664
	.quad	0x3fdf02eb90d654ba              # double 0.48455323356877111
	.quad	0x3fc2c952916830b8              # double 0.14676887607527589
	.quad	0x3fb734aa5e0ed628              # double 0.090647361720436082
	.quad	0x3fecbf18e686c8e6              # double 0.8983273031683694
	.quad	0x3fc493d59452e2e8              # double 0.16076154463168923
	.quad	0x3fdf899180593dd2              # double 0.49277150663416791
	.quad	0x3feb4fc569855717              # double 0.85348768815558429
	.quad	0x3fe3ddbf37019d45              # double 0.62081871741694583
	.quad	0x3febf715af55401c              # double 0.87391170735100187
	.quad	0x3f927aa7a447d380              # double 0.018046016122713393
	.quad	0x3fca55cba99b43bc              # double 0.205743272605586
	.quad	0x3fda4d3a6a8e7f9e              # double 0.41096363454743734
	.quad	0x3fc4cbe38be16528              # double 0.16247219400501334
	.quad	0x3fe48124d40c5990              # double 0.64076463142082396
	.quad	0x3fe258a618080ca0              # double 0.57332138723031179
	.quad	0x3fe0b2ff4966b127              # double 0.52185024582062034
	.quad	0x3fb2bbf61dd70e08              # double 0.073180563244982122
	.quad	0x3fe496903dca69c0              # double 0.64337932651988439
	.quad	0x3fe5aa974c3d67c3              # double 0.67707409754370251
	.quad	0x3fc5b5793f0290f8              # double 0.16960063530598979
	.quad	0x3f98e5edb9affb20              # double 0.024314608057461773
	.quad	0x3fc5bcf73b56c7f0              # double 0.16982927701388872
	.quad	0x3fec584bc471a4ab              # double 0.88577831619217784
	.quad	0x3fef56b50430f35f              # double 0.97933436220737835
	.quad	0x3fd95806b37dff3c              # double 0.39599769142658992
	.quad	0x3fcf1ba1e78b99f0              # double 0.24303077512668336
	.quad	0x3fef79f88c853446              # double 0.98363902516724333
	.quad	0x3fed5a6be9bdca59              # double 0.91728778507815456
	.quad	0x3fdf02950a37c48a              # double 0.4845326041968937
	.quad	0x3fedda96fbd23918              # double 0.93293332275223673
	.quad	0x3fd5adf022add28e              # double 0.33874133478756441
	.quad	0x3fead9fc22c31936              # double 0.83910948552583053
	.quad	0x3fe60439dc45c9df              # double 0.68801587125772901
	.quad	0x3fe1b2741692967d              # double 0.55303387078011179
	.quad	0x3fe7bd9d0b6d9969              # double 0.74189617378287409
	.quad	0x3feff9f60ebe5bf7              # double 0.9992628372154958
	.quad	0x3fc39082f1060d24              # double 0.15284764069301915
	.quad	0x3fd67e18ed2512de              # double 0.35144637259172196
	.quad	0x3fe10567b067167d              # double 0.53190979436540398
	.quad	0x3fdfd382800ea62c              # double 0.4972845316466159
	.quad	0x3fef1ccd84ed8c3b              # double 0.97226596796497888
	.quad	0x3febe42d18bbd4fc              # double 0.87160353499226017
	.quad	0x3fef96d7214913d5              # double 0.98716312886301216
	.quad	0x3fea55394db70e31              # double 0.82290330103609766
	.quad	0x3fc364199ae480a0              # double 0.15149231017222053
	.quad	0x3fc0e714d1d58584              # double 0.13205204244426849
	.quad	0x3fac9fdbe0d2d410              # double 0.055907126611977387
	.quad	0x3fe63a20f548f613              # double 0.69459579379298686
	.quad	0x3fe6b0bffc092730              # double 0.7090759203503918
	.quad	0x3fe7ef40423449cf              # double 0.74795544558065241
	.quad	0x3fefc88eba09cdd5              # double 0.99323211989979631
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
