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
	.quad	37                              # 0x25
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	119                             # 0x77
	.quad	122                             # 0x7a
	.quad	127                             # 0x7f
	.quad	162                             # 0xa2
	.quad	163                             # 0xa3
	.quad	165                             # 0xa5
	.quad	204                             # 0xcc
	.quad	207                             # 0xcf
	.quad	208                             # 0xd0
	.quad	245                             # 0xf5
	.quad	250                             # 0xfa
	.quad	252                             # 0xfc
	.quad	291                             # 0x123
	.quad	296                             # 0x128
	.quad	298                             # 0x12a
	.quad	336                             # 0x150
	.quad	338                             # 0x152
	.quad	341                             # 0x155
	.quad	378                             # 0x17a
	.quad	381                             # 0x17d
	.quad	387                             # 0x183
	.quad	423                             # 0x1a7
	.quad	427                             # 0x1ab
	.quad	430                             # 0x1ae
	.quad	467                             # 0x1d3
	.quad	470                             # 0x1d6
	.quad	474                             # 0x1da
	.quad	510                             # 0x1fe
	.quad	515                             # 0x203
	.quad	522                             # 0x20a
	.quad	558                             # 0x22e
	.quad	566                             # 0x236
	.quad	569                             # 0x239
	.quad	610                             # 0x262
	.quad	616                             # 0x268
	.quad	621                             # 0x26d
	.quad	658                             # 0x292
	.quad	660                             # 0x294
	.quad	663                             # 0x297
	.quad	699                             # 0x2bb
	.quad	703                             # 0x2bf
	.quad	705                             # 0x2c1
	.quad	742                             # 0x2e6
	.quad	749                             # 0x2ed
	.quad	750                             # 0x2ee
	.quad	787                             # 0x313
	.quad	790                             # 0x316
	.quad	794                             # 0x31a
	.quad	829                             # 0x33d
	.quad	832                             # 0x340
	.quad	836                             # 0x344
	.quad	870                             # 0x366
	.quad	874                             # 0x36a
	.quad	882                             # 0x372
	.quad	918                             # 0x396
	.quad	921                             # 0x399
	.quad	924                             # 0x39c
	.quad	962                             # 0x3c2
	.quad	966                             # 0x3c6
	.quad	969                             # 0x3c9
	.quad	1005                            # 0x3ed
	.quad	1009                            # 0x3f1
	.quad	1014                            # 0x3f6
	.quad	1050                            # 0x41a
	.quad	1055                            # 0x41f
	.quad	1058                            # 0x422
	.quad	1095                            # 0x447
	.quad	1098                            # 0x44a
	.quad	1100                            # 0x44c
	.quad	1137                            # 0x471
	.quad	1141                            # 0x475
	.quad	1148                            # 0x47c
	.quad	1187                            # 0x4a3
	.quad	1193                            # 0x4a9
	.quad	1195                            # 0x4ab
	.quad	1230                            # 0x4ce
	.quad	1236                            # 0x4d4
	.quad	1239                            # 0x4d7
	.quad	1275                            # 0x4fb
	.quad	1278                            # 0x4fe
	.quad	1284                            # 0x504
	.quad	1321                            # 0x529
	.quad	1329                            # 0x531
	.quad	1337                            # 0x539
	.quad	1374                            # 0x55e
	.quad	1376                            # 0x560
	.quad	1377                            # 0x561
	.quad	1412                            # 0x584
	.quad	1419                            # 0x58b
	.quad	1425                            # 0x591
	.quad	1462                            # 0x5b6
	.quad	1462                            # 0x5b6
	.quad	1465                            # 0x5b9
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	27                              # 0x1b
	.quad	68                              # 0x44
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
	.quad	6                               # 0x6
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	93                              # 0x5d
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	76                              # 0x4c
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
	.quad	84                              # 0x54
	.quad	1                               # 0x1
	.quad	72                              # 0x48
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	58                              # 0x3a
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
	.quad	17                              # 0x11
	.quad	48                              # 0x30
	.quad	95                              # 0x5f
	.quad	88                              # 0x58
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	50                              # 0x32
	.quad	76                              # 0x4c
	.quad	98                              # 0x62
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
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
	.quad	65                              # 0x41
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	23                              # 0x17
	.quad	55                              # 0x37
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	12                              # 0xc
	.quad	80                              # 0x50
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	58                              # 0x3a
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	36                              # 0x24
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
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
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	36                              # 0x24
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	90                              # 0x5a
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	61                              # 0x3d
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	50                              # 0x32
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	73                              # 0x49
	.quad	96                              # 0x60
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	2                               # 0x2
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	48                              # 0x30
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	15                              # 0xf
	.quad	44                              # 0x2c
	.quad	72                              # 0x48
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
	.quad	99                              # 0x63
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	92                              # 0x5c
	.quad	15                              # 0xf
	.quad	58                              # 0x3a
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
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	34                              # 0x22
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	61                              # 0x3d
	.quad	0                               # 0x0
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
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	50                              # 0x32
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	66                              # 0x42
	.quad	85                              # 0x55
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
	.quad	3                               # 0x3
	.quad	21                              # 0x15
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
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
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	99                              # 0x63
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	66                              # 0x42
	.quad	85                              # 0x55
	.quad	87                              # 0x57
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	37                              # 0x25
	.quad	84                              # 0x54
	.quad	7                               # 0x7
	.quad	40                              # 0x28
	.quad	53                              # 0x35
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
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	0                               # 0x0
	.quad	38                              # 0x26
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	87                              # 0x57
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	95                              # 0x5f
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	49                              # 0x31
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	30                              # 0x1e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	26                              # 0x1a
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	6                               # 0x6
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	25                              # 0x19
	.quad	62                              # 0x3e
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	86                              # 0x56
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	27                              # 0x1b
	.quad	56                              # 0x38
	.quad	89                              # 0x59
	.quad	3                               # 0x3
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	88                              # 0x58
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
	.quad	28                              # 0x1c
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
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	88                              # 0x58
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	86                              # 0x56
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	22                              # 0x16
	.quad	72                              # 0x48
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
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	40                              # 0x28
	.quad	79                              # 0x4f
	.quad	0                               # 0x0
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	38                              # 0x26
	.quad	76                              # 0x4c
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
	.quad	0x3fe9bf353e640edc              # double 0.8045908182689021
	.quad	0x3fb3fa0521910368              # double 0.078033753104148951
	.quad	0x3fe7d788dcba509a              # double 0.74506037817856741
	.quad	0x3fe3a0da547aff36              # double 0.61338535785760118
	.quad	0x3fcf243d3da28908              # double 0.24329343328015107
	.quad	0x3fe5b7e42f660c1f              # double 0.67869767434638451
	.quad	0x3fea3448225c8974              # double 0.81888205252862045
	.quad	0x3fe129315a8b28c8              # double 0.53627841648383257
	.quad	0x3fe1743c9755c332              # double 0.5454390483629139
	.quad	0x3fee79237299b3c4              # double 0.95228741057291488
	.quad	0x3fe34085f1299968              # double 0.60162636854219631
	.quad	0x3fd4c010fd630764              # double 0.32422280068214193
	.quad	0x3fea84f0fe911f6b              # double 0.82872819633574346
	.quad	0x3fee3eb6730875f8              # double 0.94515535800354566
	.quad	0x3fd02ed6485957b0              # double 0.25285870614367933
	.quad	0x3fc9c18213c342cc              # double 0.20121789898850861
	.quad	0x3fee995a4e92e54b              # double 0.95621981951186663
	.quad	0x3fe280da5223c103              # double 0.57822910349753476
	.quad	0x3fb655b7aaea6188              # double 0.087245444514684078
	.quad	0x3fedc4b21b0911b6              # double 0.93026070862156618
	.quad	0x3fddcd17d71e3218              # double 0.46564289100277412
	.quad	0x3fe5d0d51bef1688              # double 0.68174224334571054
	.quad	0x3fcd606ddaa8e470              # double 0.22950528313393503
	.quad	0x3fe188428c59592e              # double 0.54788329517285717
	.quad	0x3fd4e4710aa73f3a              # double 0.32644296684610519
	.quad	0x3fc857b7b3ea7ce0              # double 0.19017692837676403
	.quad	0x3fe1d58107223681              # double 0.5573125018433559
	.quad	0x3fc4f2def8855754              # double 0.16366183409507562
	.quad	0x3f9349195fc47c80              # double 0.018833538503824077
	.quad	0x3f6befe592145900              # double 0.0034102901269178476
	.quad	0x3fe896775255ba07              # double 0.76836744385747202
	.quad	0x3fc30fdfd13733fc              # double 0.14892194476706766
	.quad	0x3fd8ba30e1c61686              # double 0.38636419342251604
	.quad	0x3febfcd3f37c6be4              # double 0.8746127849184373
	.quad	0x3fc342e59f7f7980              # double 0.15047903335557677
	.quad	0x3fb77a93af273628              # double 0.091714124929432317
	.quad	0x3fba48dbbb85bb78              # double 0.10267422989066499
	.quad	0x3fdb31740e3bf37a              # double 0.42489339246804259
	.quad	0x3fc620df2b89a89c              # double 0.17287816644540477
	.quad	0x3fe236f336ecb269              # double 0.56920777060947814
	.quad	0x3fc01e5442699208              # double 0.12592557184974873
	.quad	0x3fd208ddf0952e0c              # double 0.28179119581611256
	.quad	0x3fbe1dae2038b250              # double 0.11764038359314921
	.quad	0x3fb777bce7185a58              # double 0.091670805377682796
	.quad	0x3fcd08cc1695ccd8              # double 0.2268309698371016
	.quad	0x3fe4c46c534b8e27              # double 0.64897743481237036
	.quad	0x3feb4b217fc280d7              # double 0.85292124703485228
	.quad	0x3fe57b02fb12fead              # double 0.67126606977395442
	.quad	0x3fd08519c37902c6              # double 0.25812381829386444
	.quad	0x3fa662c8454ba360              # double 0.043722399195593509
	.quad	0x3fd20ba4e51d88ee              # double 0.28196070074603952
	.quad	0x3fe415190ef3ee3a              # double 0.62757542534331567
	.quad	0x3fd787af3f585b6e              # double 0.3676565283398564
	.quad	0x3feb173bec9f16ef              # double 0.84658619132161828
	.quad	0x3feb5d4277208462              # double 0.85513423220630735
	.quad	0x3fe09ebc6277af29              # double 0.51937693817078412
	.quad	0x3fe1081a4ed4272a              # double 0.53223910709605105
	.quad	0x3fa7515f96d80570              # double 0.045542704738191442
	.quad	0x3fd0ce59ef804946              # double 0.26259468449383794
	.quad	0x3fec8da2106291f7              # double 0.89228919220164371
	.quad	0x3fb9e090edf01718              # double 0.10108285721807098
	.quad	0x3fc041d5235bb1bc              # double 0.12700905062173529
	.quad	0x3fb7bf77dd95e860              # double 0.092765323255578291
	.quad	0x3fee75a8c44276a6              # double 0.95186270076711277
	.quad	0x3fe02cdf94d97ad8              # double 0.50547770569013561
	.quad	0x3fcf393fcb058414              # double 0.24393460667764144
	.quad	0x3fd61d72bdcd2e46              # double 0.34554737601567742
	.quad	0x3fe4696e5f2a2629              # double 0.63787001215786632
	.quad	0x3fe4e83c71a993de              # double 0.65334913444223353
	.quad	0x3fefbd28a59e5b5c              # double 0.99184067103747564
	.quad	0x3fd58738e65b2824              # double 0.33637831206999835
	.quad	0x3fed685ddcbbff8a              # double 0.91899006950551265
	.quad	0x3fea9084298775dc              # double 0.83014114485893797
	.quad	0x3feedfdd0d94f693              # double 0.96482708599769961
	.quad	0x3fde1274bfb51ab2              # double 0.46987646790914106
	.quad	0x3fee3e58c530d455              # double 0.94511068834129708
	.quad	0x3fed45865a3314b7              # double 0.91473691575142524
	.quad	0x3f78e6b3e77c3600              # double 0.0060793902882898543
	.quad	0x3fd9ec69475b14d4              # double 0.40505439728106052
	.quad	0x3fd3d388acb86bb0              # double 0.30978600375390908
	.quad	0x3fd4b0abec47d902              # double 0.32328317713053434
	.quad	0x3fd2df697ffb2782              # double 0.29488599298621676
	.quad	0x3fef30d8a621aa6b              # double 0.97471268127021681
	.quad	0x3feddf84a4910908              # double 0.93353492872145782
	.quad	0x3fdb3401ad2582a0              # double 0.42504922779884602
	.quad	0x3fed2d5d112b1d97              # double 0.9117875418968876
	.quad	0x3fed8692177d8bac              # double 0.9226770838544005
	.quad	0x3fe18ca0ba6537e4              # double 0.54841648488377048
	.quad	0x3fdba30ee308470e              # double 0.43182727976919544
	.quad	0x3fdfdda498a24fd2              # double 0.49790301232974088
	.quad	0x3fe9ae0f5775db63              # double 0.80249754984002342
	.quad	0x3fd2edc24b0e54f8              # double 0.29576165513692798
	.quad	0x3fac7e380c864a50              # double 0.055650474099043223
	.quad	0x3fe005717d8881da              # double 0.50066446798524145
	.quad	0x3fe968f1940c9b0e              # double 0.79406050601832745
	.quad	0x3fdc339e97bf0b9a              # double 0.44065060442897563
	.quad	0x3fd6da3364078a9a              # double 0.35706791656972714
	.quad	0x3fbc0be36a4d06f8              # double 0.10955640168415559
	.quad	0x3fea3699c23371da              # double 0.81916511468767372
	.quad	0x3fcfde8b338486ec              # double 0.24897899642478849
	.quad	0x3fe57bc5d685bec4              # double 0.6713589849368522
	.quad	0x3fdce3ffe76aaf16              # double 0.45141599273004951
	.quad	0x3fd66afb721c11c6              # double 0.35027967589874398
	.quad	0x3fd29836a7b81fc8              # double 0.29054037455398118
	.quad	0x3fefb6e9d2259457              # double 0.99107829136176917
	.quad	0x3fe8416557c1445e              # double 0.75798289432180943
	.quad	0x3fed6017f7e01b29              # double 0.91798017895857698
	.quad	0x3fd82e55f52017ac              # double 0.37782811105750613
	.quad	0x3fd8d25afdda0c90              # double 0.38783907690248842
	.quad	0x3f9b6489dbaca9e0              # double 0.026750711472382949
	.quad	0x3fe348c3c8adccbc              # double 0.60263241953943902
	.quad	0x3fedfeceabc4d68e              # double 0.93735440777409607
	.quad	0x3fd510439ebdef92              # double 0.32911768438474909
	.quad	0x3fee0a879cd6166b              # double 0.93878536827169279
	.quad	0x3fe2fbfe3a0ddec0              # double 0.59326087321002063
	.quad	0x3fc723dfe129f48c              # double 0.18078230375605064
	.quad	0x3fe1f94cc92575dc              # double 0.56168212210075863
	.quad	0x3fbf19d4fe402400              # double 0.12148791510857393
	.quad	0x3fe0cec67d977c1c              # double 0.52524113206516487
	.quad	0x3fcaa0eecf603574              # double 0.20803628087780235
	.quad	0x3fe7bc4cb4c3c4be              # double 0.74173579507455378
	.quad	0x3fe75ecf18c302d5              # double 0.73032336078912385
	.quad	0x3fe4ac819af52d26              # double 0.646057894374654
	.quad	0x3fe9f0ac3669b9c4              # double 0.81062899234330432
	.quad	0x3fcfdd114796df04              # double 0.24893394465993179
	.quad	0x3fe3d0113303ed47              # double 0.61914882625516376
	.quad	0x3fc6fa30ff4c0288              # double 0.17951023545903788
	.quad	0x3fe7b5abc1f99ffe              # double 0.74092662702332723
	.quad	0x3fec3377b1183735              # double 0.88128265942370965
	.quad	0x3fd23292ce552396              # double 0.2843367590872331
	.quad	0x3fd313de4f1c9a66              # double 0.29808767057185148
	.quad	0x3fb22f8fdc37fa60              # double 0.071038237823793704
	.quad	0x3fa4c1b51561d320              # double 0.040540369854090708
	.quad	0x3fe70aa00427e9f3              # double 0.72004700481130468
	.quad	0x3fea35189a53a751              # double 0.81898145811030976
	.quad	0x3fdc1340cf2c4a54              # double 0.43867511970271278
	.quad	0x3fb56fd313b5b168              # double 0.083737556755016151
	.quad	0x3fe40aaa93da13a0              # double 0.626302040837448
	.quad	0x3fdf116bf0f90646              # double 0.48543833286757765
	.quad	0x3fc4df230734b3e8              # double 0.16305959560250405
	.quad	0x3fcc0fa2e35f93e8              # double 0.21922718145574938
	.quad	0x3fefd8c23251a575              # double 0.995209787635004
	.quad	0x3fd3c15a41e1cc08              # double 0.30867630418578118
	.quad	0x3fd5910f22a4b55e              # double 0.33697870619910997
	.quad	0x3fce54e6e69d7854              # double 0.23696600208762908
	.quad	0x3febf3763609978f              # double 0.8734694533747972
	.quad	0x3fd7b4af944d4000              # double 0.37040318949311768
	.quad	0x3fdae323733841f4              # double 0.4201134324257787
	.quad	0x3fe075a375ec50e5              # double 0.51436017066819473
	.quad	0x3fe5eee098b4ebed              # double 0.68540983033687797
	.quad	0x3fe57f05a926a6f3              # double 0.67175562894155261
	.quad	0x3fa10a5c9d954a20              # double 0.033282179104066723
	.quad	0x3fecd919e5d52b1a              # double 0.90150160683819824
	.quad	0x3fe83227371f5cc4              # double 0.75612221494784437
	.quad	0x3fe6948d93ee8e54              # double 0.7056339158338667
	.quad	0x3fdd65cfdca243e6              # double 0.4593391089084079
	.quad	0x3fa6512a2fd5c750              # double 0.043587988223306895
	.quad	0x3fdcb96ce7f77aee              # double 0.44881746914863541
	.quad	0x3fda7cc528151d52              # double 0.41386536516480021
	.quad	0x3fe59802dcae5836              # double 0.67480605222477297
	.quad	0x3fe1b11f516004fd              # double 0.55287137883729509
	.quad	0x3fd90fa2598bb66e              # double 0.39157923454954513
	.quad	0x3fe083629758886d              # double 0.51603822288258316
	.quad	0x3fee437a3648247a              # double 0.94573698617854451
	.quad	0x3fcaf7696f0ad98c              # double 0.21067541048041638
	.quad	0x3fdd68ae0610897c              # double 0.45951414673086055
	.quad	0x3fddad86f18c0d5c              # double 0.46371625507909697
	.quad	0x3fdb379062f76178              # double 0.42526635803871882
	.quad	0x3fe29ef08aa7ec59              # double 0.58190180855980167
	.quad	0x3fef0b43ec5022fe              # double 0.97012516169442597
	.quad	0x3fecf029a9b5ba99              # double 0.9043167414327683
	.quad	0x3fec9b3a171acd66              # double 0.89394859802852689
	.quad	0x3fec1b0cff8b4397              # double 0.87830209647119062
	.quad	0x3fe081c5cc85eb43              # double 0.51584138818666536
	.quad	0x3fb83a6d0ccd2130              # double 0.09464150965243756
	.quad	0x3fef9c312050520d              # double 0.98781639395980536
	.quad	0x3fd993161756ae8a              # double 0.39960243491325598
	.quad	0x3fc402bfb1e0fb64              # double 0.15633388696184192
	.quad	0x3fe2f3fd954fc633              # double 0.59228400385308644
	.quad	0x3fb7a1f512151df0              # double 0.092315022387189804
	.quad	0x3fc891703c7942e0              # double 0.19193842842880482
	.quad	0x3fd1bc55e30e2d14              # double 0.27712008641602037
	.quad	0x3fe21ef16203bb76              # double 0.56627720969650741
	.quad	0x3fe75fbc9dba3050              # double 0.73043661886323186
	.quad	0x3fd5e9c08629e9ca              # double 0.34239209272314197
	.quad	0x3fe691a02904b870              # double 0.70527656566060948
	.quad	0x3fd2032a32f0f63a              # double 0.281443166491815
	.quad	0x3fdccc4d0a577c52              # double 0.44996953973708742
	.quad	0x3fde6330bea5998a              # double 0.47480410211428448
	.quad	0x3fa83ea0fced0fc0              # double 0.047352820276983731
	.quad	0x3fc160e66537a4d4              # double 0.13576965276960229
	.quad	0x3fc26eb4d4cd7c1c              # double 0.14400349035983673
	.quad	0x3febd4456260c548              # double 0.86966199125723964
	.quad	0x3fd3f81d3e71cd66              # double 0.31201869104480406
	.quad	0x3fdc24a88eb7bd98              # double 0.43973745286253907
	.quad	0x3fba828c48d20860              # double 0.10355450418322354
	.quad	0x3fefb15bfda4277a              # double 0.99040030993749828
	.quad	0x3fec0271663bef57              # double 0.87529821364976612
	.quad	0x3fa60626e22578b0              # double 0.043015685182341001
	.quad	0x3fe703d042684391              # double 0.71921551675960604
	.quad	0x3fcb27b341e321bc              # double 0.21214905469083856
	.quad	0x3fd9f766ec994246              # double 0.40572522263849853
	.quad	0x3fc5231728c86290              # double 0.16513337603898437
	.quad	0x3fd00b11bf846aba              # double 0.25067561819893636
	.quad	0x3fe073fb1ffd81ea              # double 0.51415783165071827
	.quad	0x3fc242cd02f9e588              # double 0.14266359944648976
	.quad	0x3fd08050d5a61a74              # double 0.25783177246231692
	.quad	0x3fe6bad00f9f0369              # double 0.71030428935055767
	.quad	0x3fcb1df49fd09c98              # double 0.21185167125188253
	.quad	0x3febfbf921e1d07e              # double 0.87450844400019867
	.quad	0x3fdc89c7d057904a              # double 0.44590945573714136
	.quad	0x3feea4ff54a54b42              # double 0.95764128239020629
	.quad	0x3fe55201cf8791ff              # double 0.66626062901610783
	.quad	0x3fef28dde60e4a01              # double 0.97373862202431393
	.quad	0x3fc5abd12e53f82c              # double 0.16930594217404982
	.quad	0x3fd6ba6397b1b83e              # double 0.35512628377808031
	.quad	0x3fac7496d0d0b7a0              # double 0.055577004423283727
	.quad	0x3fc6f8cd86910c68              # double 0.17946785994181202
	.quad	0x3fee2cb9d4e73b0e              # double 0.94295970518746386
	.quad	0x3fe625c218d74725              # double 0.69210915424102792
	.quad	0x3fedf50c14e33959              # double 0.93616298751457372
	.quad	0x3febe6bc9028dc75              # double 0.87191608577894775
	.quad	0x3fd62a2615dff172              # double 0.34632255684098034
	.quad	0x3fdc4e9abe591cd4              # double 0.4422976359241606
	.quad	0x3fcc18477dd3c714              # double 0.21949094432744032
	.quad	0x3fd619f34f404952              # double 0.34533388842932766
	.quad	0x3fe88f19ee848aa2              # double 0.76746841989036718
	.quad	0x3fee37abda120d87              # double 0.94429581252954697
	.quad	0x3fc09b4b5e9d75b0              # double 0.12973920936466987
	.quad	0x3fe654310d23eca4              # double 0.69777729574652314
	.quad	0x3fe25d120febdecf              # double 0.57386115178720754
	.quad	0x3fedbdc723aefa72              # double 0.92941624612269735
	.quad	0x3fee52f7b8eea378              # double 0.9476278888661076
	.quad	0x3fe6096964e4fd95              # double 0.68864888864475182
	.quad	0x3fe460d1b644da4a              # double 0.63681874846845088
	.quad	0x3fd3606f63f602ac              # double 0.30276093255819592
	.quad	0x3feb351ad251976e              # double 0.85023251607775108
	.quad	0x3fe886b9de5403e1              # double 0.76644605086778139
	.quad	0x3febc58d8f999f8d              # double 0.8678653530778192
	.quad	0x3fc97812176844ec              # double 0.19897676604208614
	.quad	0x3fecc21b56f17900              # double 0.89869467717269913
	.quad	0x3fb65c50e904e950              # double 0.087346131219338873
	.quad	0x3fc6e4ef33824154              # double 0.1788615228183611
	.quad	0x3fcf1554aedc8840              # double 0.24283846414715704
	.quad	0x3fe1dc91e5115c65              # double 0.55817503680999592
	.quad	0x3f9f53b48e9f7b60              # double 0.030592747883811611
	.quad	0x3fe2a764f3b6a240              # double 0.58293387985492728
	.quad	0x3fea50e423a82ae7              # double 0.82237441028823077
	.quad	0x3fc7cdfcf4d07e04              # double 0.18597375825719109
	.quad	0x3fee9a22b2d1bcd4              # double 0.95631537366525742
	.quad	0x3fe78147151ff45b              # double 0.73453096509878024
	.quad	0x3fbab740e0c1d008              # double 0.10435872542603886
	.quad	0x3feac1a0a11f5aa1              # double 0.83613616437181204
	.quad	0x3fc17e472b6134c0              # double 0.13666619890356024
	.quad	0x3fec33aedda16ce7              # double 0.88130896842212969
	.quad	0x3fbf173ae10d5908              # double 0.12144821161686903
	.quad	0x3fd6155772ec9406              # double 0.34505258772907188
	.quad	0x3fd67ed8e358fcfc              # double 0.35149213983454763
	.quad	0x3fea94961497aa0f              # double 0.83063797018013641
	.quad	0x3fd7c79ea1d106bc              # double 0.37155881693261583
	.quad	0x3fec5398456714c4              # double 0.885204444458076
	.quad	0x3fe9c47f618037c3              # double 0.80523652117857869
	.quad	0x3fec29aa01a0285a              # double 0.88008594815733976
	.quad	0x3f88c8f2199b1800              # double 0.012102023512294835
	.quad	0x3fe4ce8850d73925              # double 0.6502114848060826
	.quad	0x3fda62a5e10d6d6c              # double 0.41227099397447975
	.quad	0x3fc5d71900e78d38              # double 0.17062675995030374
	.quad	0x3fd084e40a525e40              # double 0.25811100967391454
	.quad	0x3fd0e296fe5042b2              # double 0.26382994494728529
	.quad	0x3fe6d751ff779771              # double 0.71378421684197069
	.quad	0x3fc2e91c1a8f0e7c              # double 0.14773894593064429
	.quad	0x3fe3a76f1d56496c              # double 0.614188725756589
	.quad	0x3fec6d37cfceda84              # double 0.88833227717880491
	.quad	0x3fd7964bc8b105b0              # double 0.36854834173945061
	.quad	0x3fe1234b428b56b4              # double 0.53555834767276744
	.quad	0x3fe44cfa9a6916ef              # double 0.63439684065153112
	.quad	0x3fecdb71552152de              # double 0.90178743960367647
	.quad	0x3fece0440743a626              # double 0.90237618845748524
	.quad	0x3fba4e67fbfcafc8              # double 0.10275888349559559
	.quad	0x3fb2d38981537b20              # double 0.073540300439600248
	.quad	0x3fe065e20eab63ff              # double 0.51243689408431681
	.quad	0x3fc8e074a1eca0a8              # double 0.19434984117947818
	.quad	0x3fe32cfe19fdbbd9              # double 0.59924225880046855
	.quad	0x3f97c15e51235180              # double 0.023198579504268846
	.quad	0x3fd9f03a02c04be8              # double 0.40528726833980366
	.quad	0x3fe0b183de00531c              # double 0.52166932448980985
	.quad	0x3fb970063b9c2b30              # double 0.099365605881911234
	.quad	0x3fefb26093a20932              # double 0.99052456697999092
	.quad	0x3fe85e7629986a6a              # double 0.76153095363708911
	.quad	0x3fca45a7af3cb3e8              # double 0.20525070244312293
	.quad	0x3feb63fd4cd7912a              # double 0.85595574386801343
	.quad	0x3fd941047caf1576              # double 0.39459335495151693
	.quad	0x3fdf7f085c67a5c2              # double 0.49212845825112705
	.quad	0x3fe62e8e17638b95              # double 0.69318298881659024
	.quad	0x3fd731a636fd67f0              # double 0.36240535135368557
	.quad	0x3fc0ea05a09c4254              # double 0.13214178411773736
	.quad	0x3fd554eefc1025d8              # double 0.33330893149886043
	.quad	0x3fe510a171e7e3f2              # double 0.65828010794859737
	.quad	0x3fe2deec077ae25f              # double 0.58971215687695266
	.quad	0x3fefddcd70e0a120              # double 0.9958255009305823
	.quad	0x3fe3f64bbf1553ac              # double 0.62381541558226195
	.quad	0x3fdb5bd24b594702              # double 0.42747933729434362
	.quad	0x3fd2c63586bda948              # double 0.29334772260940101
	.quad	0x3fe466b02f297d19              # double 0.63753518306103552
	.quad	0x3fa7ff3edefc6a90              # double 0.046869244308443858
	.quad	0x3fe415bb643898ec              # double 0.62765283178739883
	.quad	0x3fd2b14cbe1cc698              # double 0.29207151952423649
	.quad	0x3fe55355e81334ba              # double 0.66642279936936366
	.quad	0x3feb4b67519c1429              # double 0.85295453967467438
	.quad	0x3fe341501637fa8c              # double 0.60172275867064817
	.quad	0x3fedc7cc83f4cbf4              # double 0.93063951275541834
	.quad	0x3fd6335bbd67e7b4              # double 0.34688466545741936
	.quad	0x3feacff38f8b6451              # double 0.83788469348940897
	.quad	0x3fd4c1f8fedad8cc              # double 0.32433915031596139
	.quad	0x3fd91a9ceda06be2              # double 0.39224932866789974
	.quad	0x3fee6b6d33fa26a0              # double 0.95061359550273394
	.quad	0x3fd55f6e78a907ba              # double 0.33394967826108835
	.quad	0x3fe4fd32e294611d              # double 0.65590805295781573
	.quad	0x3fe15333645ba6c8              # double 0.54140634156393563
	.quad	0x3fe8b2d3577b8259              # double 0.77182929121415633
	.quad	0x3fe274f3ef16a21e              # double 0.57677647301631274
	.quad	0x3fd79a9b07276a6e              # double 0.36881137560491239
	.quad	0x3fe9f89cb4012a61              # double 0.81159815938128699
	.quad	0x3fb9050da6ce6758              # double 0.097733357643304486
	.quad	0x3fb39e7b549a4e88              # double 0.076636989741297623
	.quad	0x3fee5f3383031084              # double 0.94912124241138018
	.quad	0x3fec1402841fca45              # double 0.87744260602477964
	.quad	0x3fe2e5c61f241d21              # double 0.59054857332458621
	.quad	0x3fea69a9d71ec58c              # double 0.82539836898483676
	.quad	0x3fc3311fd60e3500              # double 0.149936656493459
	.quad	0x3fe1e18597fa442a              # double 0.55877952273488529
	.quad	0x3fe5cd33092b3f05              # double 0.681298749836032
	.quad	0x3fd1d6534d901fe8              # double 0.27870638441572604
	.quad	0x3fd04e4098854aa0              # double 0.25477614302250551
	.quad	0x3fe714ba96be227d              # double 0.72128037874161033
	.quad	0x3fe7e91c700eee1c              # double 0.74720594297781728
	.quad	0x3feac41e2a7ff6c3              # double 0.83644016552690237
	.quad	0x3fdd384539f49878              # double 0.4565594736071783
	.quad	0x3fc92fcb427cc688              # double 0.19677105661826411
	.quad	0x3fdf284b2482db88              # double 0.48683432164710227
	.quad	0x3feebe58528f1907              # double 0.96073547482299737
	.quad	0x3feb13d09530db46              # double 0.84616879595601158
	.quad	0x3fb537ebc5e0cf80              # double 0.082884536562060517
	.quad	0x3fe028e67de1b1ff              # double 0.50499271951917979
	.quad	0x3fe0d144fdacc286              # double 0.52554559274547397
	.quad	0x3fe19e9af47c0e4c              # double 0.55061099768540478
	.quad	0x3fd68124490870e4              # double 0.35163218624235371
	.quad	0x3fd4178f5984dbf6              # double 0.3139379858216097
	.quad	0x3fdeca9994ece14c              # double 0.48111571830260824
	.quad	0x3feee1f40dfbd144              # double 0.96508219462570155
	.quad	0x3fe04d45a0e8f578              # double 0.5094326155446387
	.quad	0x3fc48abe3d43a3ec              # double 0.1604841040746402
	.quad	0x3fbe7d250933e598              # double 0.11909705614734489
	.quad	0x3fcb360626a82b14              # double 0.21258618247551253
	.quad	0x3fa4c6d296b0c8d0              # double 0.040579396147579438
	.quad	0x3fc92b6d066850b0              # double 0.19663775265565198
	.quad	0x3fe65944949dde79              # double 0.6983969595593883
	.quad	0x3fa73b9e2b932d60              # double 0.045376723117068307
	.quad	0x3fdfbee5e54bdc8c              # double 0.49602649109096641
	.quad	0x3fe94239da9e0e82              # double 0.78933422754967375
	.quad	0x3fed0c3f2aa3b590              # double 0.90774496391320447
	.quad	0x3fe0d184f0e827e4              # double 0.52557608654137455
	.quad	0x3fd3d471906995f6              # double 0.30984152891900807
	.quad	0x3f61551dd7e88a00              # double 0.002115782058596638
	.quad	0x3fcd978ff7b47284              # double 0.2311878165718505
	.quad	0x3fdc95e547c15c6e              # double 0.44664890296321047
	.quad	0x3fd09eb818cb05ea              # double 0.25968744679639022
	.quad	0x3fd5d570f12ee030              # double 0.34115241578138278
	.quad	0x3fb28e8d41aefe90              # double 0.072487667594936633
	.quad	0x3fe27150fc2f66aa              # double 0.57633256201662175
	.quad	0x3fefb747d9e4b53e              # double 0.99112312848379935
	.quad	0x3fefb4014d9a181f              # double 0.99072327763201772
	.quad	0x3f9b359cc6ffc380              # double 0.026571702619495152
	.quad	0x3fe6c38ec22c6667              # double 0.71137178349017638
	.quad	0x3fddc56af5849362              # double 0.46517442680697318
	.quad	0x3fd45410dc077672              # double 0.3176309727403811
	.quad	0x3fe4c59931a9abb3              # double 0.64912090015183421
	.quad	0x3fd6d9a7ef5efab6              # double 0.35703466774058812
	.quad	0x3fc302dbc803afdc              # double 0.14852473512962561
	.quad	0x3fed6eb0e92fccaa              # double 0.91976209205895043
	.quad	0x3fdabe830803feec              # double 0.4178779199864795
	.quad	0x3fe680d59f3defd9              # double 0.70322686292592629
	.quad	0x3fe02403f916ffd5              # double 0.50439642572745902
	.quad	0x3fd80851a60ca0b8              # double 0.37550774780039431
	.quad	0x3fe709a1b99c3ab0              # double 0.7199257493210407
	.quad	0x3feb0b5845fa765e              # double 0.84513486545229077
	.quad	0x3fc4002fc5d91b3c              # double 0.1562556949667967
	.quad	0x3fe0969fb222666c              # double 0.51838669578428442
	.quad	0x3fe5930697a785c9              # double 0.67419747943875408
	.quad	0x3fe5bfa107ef5e7c              # double 0.67964221525012602
	.quad	0x3feabb41b13ada6e              # double 0.8353584729691883
	.quad	0x3fe6824d953e25ac              # double 0.70340613507248895
	.quad	0x3fef5967f93474b4              # double 0.97966383622010377
	.quad	0x3fe8a6d80a282c69              # double 0.77036668761992388
	.quad	0x3fed6c55d2f54cc3              # double 0.91947451784871992
	.quad	0x3fc71835531af644              # double 0.18042627866627658
	.quad	0x3fb535bb059180a0              # double 0.082851113185372416
	.quad	0x3feb85514ebb079a              # double 0.86002412201945622
	.quad	0x3fe54546f7f50558              # double 0.66470669201968757
	.quad	0x3fc1e62a7a33e308              # double 0.1398366066639698
	.quad	0x3fcfd0441dc21f34              # double 0.24854327633897244
	.quad	0x3f6b1bb761f73d00              # double 0.0033091146176286168
	.quad	0x3fddcee85cb10b5c              # double 0.4657536416236121
	.quad	0x3f995726c898f300              # double 0.02474651908254355
	.quad	0x3fe3f1b5e5b9312d              # double 0.62325568073132376
	.quad	0x3fcf5ecb788bddb8              # double 0.24508040796329822
	.quad	0x3fdce6acec74fb80              # double 0.45157931415081265
	.quad	0x3fe6ac0a33600213              # double 0.70850095781503553
	.quad	0x3fd095fa6a375844              # double 0.25915394184756146
	.quad	0x3fead58ff8a78f84              # double 0.83856962743128393
	.quad	0x3fdd93b23c394768              # double 0.46213966256356409
	.quad	0x3fca7e73de103be8              # double 0.20698402731838361
	.quad	0x3faadf8e7de67010              # double 0.052486851566953985
	.quad	0x3fef9a3a836a8373              # double 0.98757672946167784
	.quad	0x3fd5a003a1b55672              # double 0.33789149085837444
	.quad	0x3fe3c724e7aed7a8              # double 0.61805958986837073
	.quad	0x3f9fe449fd326360              # double 0.031144290999324808
	.quad	0x3fc16d2a7d11eb2c              # double 0.13614398104604086
	.quad	0x3fedf0a21fea785f              # double 0.93562418206762377
	.quad	0x3fe42dd4e05cb3c7              # double 0.63059467144705017
	.quad	0x3fd86f7227800d6c              # double 0.38180211884920001
	.quad	0x3fea06d427a85338              # double 0.81333358522042598
	.quad	0x3fe53145e71a0124              # double 0.6622647775366528
	.quad	0x3fc87e65c00977b0              # double 0.19135734440618313
	.quad	0x3fe65f88afbe59eb              # double 0.69916185688890431
	.quad	0x3fe8e76c5f9bce8e              # double 0.77824991868551918
	.quad	0x3fc75fed5d0902d4              # double 0.18261496584638925
	.quad	0x3feeaaaeb8ba936b              # double 0.95833526687475278
	.quad	0x3fc973c9d7725198              # double 0.19884608287669603
	.quad	0x3fda8f3599aa8324              # double 0.41499080664111632
	.quad	0x3fefe00bea890538              # double 0.99609943206465967
	.quad	0x3fc03a0b60d9a8f4              # double 0.12677137593283982
	.quad	0x3fe38d531ca3bd0a              # double 0.61100154489204894
	.quad	0x3fdcb9ed1b692e90              # double 0.44884803463785605
	.quad	0x3fdd5ab55727a7f8              # double 0.45866139899464953
	.quad	0x3fe456bc42df1a43              # double 0.63558781681860699
	.quad	0x3fe6b848c282d2b4              # double 0.70999563208041261
	.quad	0x3fec5d59777c6de3              # double 0.88639520012969475
	.quad	0x3f9d330b30fc56e0              # double 0.028515028824663058
	.quad	0x3fa9a06ed49a95c0              # double 0.050052131130807975
	.quad	0x3fda3f953296cb68              # double 0.41013078632675226
	.quad	0x3fe6098ce309fc0b              # double 0.68866581290774442
	.quad	0x3fb22618e098f058              # double 0.070893816789010855
	.quad	0x3fe3ab8243d736be              # double 0.61468613863117816
	.quad	0x3fe79eb878472f62              # double 0.73812507144746697
	.quad	0x3fea71baa0647f6a              # double 0.82638293577836675
	.quad	0x3fb81e5ec9c398e0              # double 0.094213413485337849
	.quad	0x3f9166f2c19c7880              # double 0.016994278971758536
	.quad	0x3fea1cf1fadc7568              # double 0.81603335377046182
	.quad	0x3fc131aaeaf12074              # double 0.1343282363106969
	.quad	0x3fec88f53a0def0b              # double 0.89171849573855988
	.quad	0x3fe5852ef91add6f              # double 0.67250775006588792
	.quad	0x3fc3453c95e0d3e8              # double 0.15055043524048917
	.quad	0x3febce3856487d4e              # double 0.86892334797077253
	.quad	0x3fdeeb27024d9782              # double 0.48310256218825753
	.quad	0x3fee7d528405fc4f              # double 0.95279813562218318
	.quad	0x3fed40d96b6bb40e              # double 0.91416617375000597
	.quad	0x3fea0fd8852c8066              # double 0.81443429956926816
	.quad	0x3fe2acedc49e643f              # double 0.58360947038739386
	.quad	0x3fdc804df43255de              # double 0.44533108565641821
	.quad	0x3fbc6abcd0942568              # double 0.11100368587735476
	.quad	0x3fe77f4513278c90              # double 0.73428586712943122
	.quad	0x3fec4278173373c7              # double 0.88311390429918724
	.quad	0x3f9d311617a5ac40              # double 0.028507561868007736
	.quad	0x3fefe14b5ccfae28              # double 0.996251755973792
	.quad	0x3fef2db0397666a5              # double 0.97432719443459758
	.quad	0x3fde559d4213142e              # double 0.47397548153486724
	.quad	0x3fd8868ef269ccbc              # double 0.3832127921406927
	.quad	0x3fd3f427d188322a              # double 0.31177707159148105
	.quad	0x3fec7faac12b6230              # double 0.89058435181056517
	.quad	0x3fe90f76ac0951cb              # double 0.78313764191494195
	.quad	0x3fc5e69bfd170ad0              # double 0.17110013826284964
	.quad	0x3fd7a8ac46536b7a              # double 0.36966997974166527
	.quad	0x3fca3d3e051cd048              # double 0.20499396562229522
	.quad	0x3fb64e6cef542ec8              # double 0.087134178571598331
	.quad	0x3f9e62d8acdd0820              # double 0.029673944044823597
	.quad	0x3fb9eb8cc3f6f420              # double 0.10125045570653457
	.quad	0x3fe9e5624ac0cb4a              # double 0.80925097084250663
	.quad	0x3fea99f1165b0a26              # double 0.83129171720822082
	.quad	0x3fc05eafb013ead4              # double 0.12788959596203731
	.quad	0x3fdb7470b33b5ab0              # double 0.42898194792852973
	.quad	0x3fe6186ae04ec32e              # double 0.69048065004435499
	.quad	0x3fefdd24f972c414              # double 0.99574516983386951
	.quad	0x3fc9a71a3cf6bb8c              # double 0.20041206337688455
	.quad	0x3fe39f962db2ca93              # double 0.61323079038114015
	.quad	0x3fe4f4aaf72643c6              # double 0.65486667891865902
	.quad	0x3fea4b1936447634              # double 0.82166729544741778
	.quad	0x3faaf7d7d1b601b0              # double 0.052672142362101382
	.quad	0x3feedcfbaed91a70              # double 0.96447548055659915
	.quad	0x3fe70da999453196              # double 0.72041778503039455
	.quad	0x3fd5ec49ad496598              # double 0.34254686281709601
	.quad	0x3fefe9f45476f05c              # double 0.99730888840668852
	.quad	0x3fc200ad4b38fea0              # double 0.14064565823536146
	.quad	0x3fef8a597d978583              # double 0.98563837556518796
	.quad	0x3f91404a11853e40              # double 0.016846806830754568
	.quad	0x3fee182d5ea350cc              # double 0.94045132144904064
	.quad	0x3feb5711fc13c813              # double 0.85437869294969671
	.quad	0x3fedb2244dde7a9b              # double 0.92799582680511905
	.quad	0x3f9e471005bd5540              # double 0.029567957258526123
	.quad	0x3fe51cf16053147f              # double 0.6597830659235483
	.quad	0x3fd033b4a43527cc              # double 0.25315586124326894
	.quad	0x3fe6dc8605357c8e              # double 0.71441937463159078
	.quad	0x3fd24971df059c58              # double 0.28573271541103429
	.quad	0x3fe8a6a81852dfbe              # double 0.77034382582404937
	.quad	0x3feb9fc0b6efa8f2              # double 0.86325107316704774
	.quad	0x3f877e798e745900              # double 0.011471700343957725
	.quad	0x3fd74d4cf941139e              # double 0.3640930589793302
	.quad	0x3fe54e474b75eb5a              # double 0.66580548036959475
	.quad	0x3fd131fd2ba6e740              # double 0.26867608321082415
	.quad	0x3fe9df8d989841cd              # double 0.80853919795668505
	.quad	0x3fc3cd79ab15113c              # double 0.15470810750606201
	.quad	0x3fed5b10f47b7bba              # double 0.91736648321590697
	.quad	0x3fe088b162215a2f              # double 0.51668614545889635
	.quad	0x3fee9d067357f591              # double 0.95666811492962911
	.quad	0x3febf6bb6aa3cb02              # double 0.87386866405572072
	.quad	0x3fe5d7fd60b879af              # double 0.68261593714469437
	.quad	0x3fe09aa62822f6ee              # double 0.51887805785346841
	.quad	0x3fefc5d09a5be145              # double 0.99289732120727391
	.quad	0x3fd2f1269ae7e4c6              # double 0.29596867682955652
	.quad	0x3fe7d2c6c9996925              # double 0.74447955489020912
	.quad	0x3fe9310f7adf690e              # double 0.78723882673810563
	.quad	0x3fde314c682f416e              # double 0.47175893949772429
	.quad	0x3fd5bcaa6225172e              # double 0.3396402319379942
	.quad	0x3fe4f29662d48ffc              # double 0.65461272528455039
	.quad	0x3fef2e290d8acb9d              # double 0.97438480992274245
	.quad	0x3f6924f849284300              # double 0.0030693864184815345
	.quad	0x3f984ad70cf59ee0              # double 0.023722992101652518
	.quad	0x3fe394f2819ec7aa              # double 0.6119320422787855
	.quad	0x3feccfee3abdfcbc              # double 0.90038215134691013
	.quad	0x3fed570826ad0be4              # double 0.91687400392435991
	.quad	0x3fec7ae05792e97a              # double 0.8899995527674911
	.quad	0x3fe1d3ecdb7642c0              # double 0.55711977828658377
	.quad	0x3fc7358f6cc0ff44              # double 0.18132202921150953
	.quad	0x3fda71040634bcd4              # double 0.41314793211036016
	.quad	0x3fe509d27b7b6584              # double 0.65744899861890405
	.quad	0x3feefebbb5a25d09              # double 0.96859536624370534
	.quad	0x3fcea72e347fa86c              # double 0.23947694362078964
	.quad	0x3fe7d2d936b5d742              # double 0.74448834119423446
	.quad	0x3fd822c34b94e7b8              # double 0.37712175732633169
	.quad	0x3fda808e24f3ab82              # double 0.41409638985231123
	.quad	0x3fcd3a919818f5ac              # double 0.22834987570415188
	.quad	0x3fe9bb38f0f21ff9              # double 0.80410430011488565
	.quad	0x3fa476dbc0c7bc30              # double 0.039969317705861207
	.quad	0x3fe71cbf8a4894a0              # double 0.72225930222034052
	.quad	0x3fe9c9db97b5483d              # double 0.80589084272856548
	.quad	0x3fed99ed4aad027a              # double 0.92503990731354624
	.quad	0x3fe92ff91bf7ee31              # double 0.78710608923524295
	.quad	0x3fe512a7df63be5e              # double 0.65852731352601857
	.quad	0x3fe1a37cfd74bea8              # double 0.5512070608437698
	.quad	0x3fdc3b95f471cf44              # double 0.44113682624378137
	.quad	0x3fcbe9403f6b1db8              # double 0.21805575462916038
	.quad	0x3fe34802203dd7e1              # double 0.60254007622893024
	.quad	0x3fb009ca920eb670              # double 0.062649403246462176
	.quad	0x3fe65b7d6a74fb9d              # double 0.69866820137382357
	.quad	0x3fec13863f085b34              # double 0.87738334952414342
	.quad	0x3fccb9e189d1f6c8              # double 0.22442263822079256
	.quad	0x3f6d3c59d89eff00              # double 0.0035688166435362545
	.quad	0x3fda12121aa814c0              # double 0.40735294917278608
	.quad	0x3fef9dc6f2c2a7eb              # double 0.98800990499625862
	.quad	0x3fd16fb60f7f0358              # double 0.27244330895705593
	.quad	0x3fb42a6d39321c58              # double 0.078772379363827638
	.quad	0x3fcb05d2386c42dc              # double 0.21111514811538867
	.quad	0x3fecdff4373988b5              # double 0.9023381308181998
	.quad	0x3fdbc7b5b14f7fb4              # double 0.43406431498987819
	.quad	0x3fe61b05422237d4              # double 0.69079840580684015
	.quad	0x3fc985591e8e43dc              # double 0.1993819617460123
	.quad	0x3fd3e5778df9294c              # double 0.31088055481508969
	.quad	0x3fbcd8058acfd248              # double 0.11267122878036517
	.quad	0x3fe25ed906b6dd05              # double 0.57407809554470701
	.quad	0x3fec1b48262f6c92              # double 0.87833030183846206
	.quad	0x3fa5b4e45c6e5680              # double 0.042395721705514866
	.quad	0x3feb7298abb588b3              # double 0.85773881470620095
	.quad	0x3fd1290052ae97d6              # double 0.26812751840986715
	.quad	0x3fcb07ad1eed7254              # double 0.21117176065571874
	.quad	0x3feb921de04b3d72              # double 0.86158651168254452
	.quad	0x3fcb39a8922bd710              # double 0.21269709718006213
	.quad	0x3fdbdd0bb3aeac9a              # double 0.4353665594778221
	.quad	0x3fdc068c380d2584              # double 0.43789964174046525
	.quad	0x3fe6d67cf5c58e7b              # double 0.71368263246809194
	.quad	0x3fea3cb2deb96012              # double 0.81990951062016593
	.quad	0x3fbf9c481f5dcbb8              # double 0.12347841993123054
	.quad	0x3fa36a6f25cacc60              # double 0.03792140327768645
	.quad	0x3fe47cd5ebd11180              # double 0.64023872430747986
	.quad	0x3f808b8ac651a980              # double 0.0080786554119256504
	.quad	0x3fe7d2f361223afa              # double 0.74450081798008161
	.quad	0x3fbcaa776665cae0              # double 0.11197611093465865
	.quad	0x3fe072247969c1e2              # double 0.5139334079122444
	.quad	0x3fd9f066e130a968              # double 0.40529796591967804
	.quad	0x3fe90ab3973a9bd6              # double 0.78255633866217056
	.quad	0x3fec21ca0bd137f9              # double 0.87912466342981965
	.quad	0x3fe8a7ee7625adf1              # double 0.7704994494974341
	.quad	0x3fea36a8f4c0ff50              # double 0.81917236140723482
	.quad	0x3fea218f57a6ce0d              # double 0.81659667128991631
	.quad	0x3fd08480a7af7954              # double 0.25808731437236543
	.quad	0x3feca968e65b42f1              # double 0.89567990294935218
	.quad	0x3fc32ce1fc482d88              # double 0.14980721300558408
	.quad	0x3fe60e03c9c1e6ab              # double 0.6892107906889654
	.quad	0x3fe64b93212566e5              # double 0.69672543023918065
	.quad	0x3fd8ccf86d4cfd82              # double 0.38751040147686677
	.quad	0x3fa34406690ee730              # double 0.037628364872445252
	.quad	0x3fde9cd3f2475a30              # double 0.47832201633483162
	.quad	0x3fc052d7158a2300              # double 0.12752808143365968
	.quad	0x3fb294eed3522d90              # double 0.07258503588871279
	.quad	0x3fe8d7b6bb3f0fae              # double 0.77633225032376685
	.quad	0x3fd41c6779ec5d04              # double 0.31423365503856382
	.quad	0x3fecfdf80971aaac              # double 0.90600206226857471
	.quad	0x3fdc55f29af70c58              # double 0.44274582989982525
	.quad	0x3fd86438cce780d4              # double 0.38111705789743877
	.quad	0x3fed9293d48191cf              # double 0.92414275651077016
	.quad	0x3f9db55073b723a0              # double 0.029011971533495662
	.quad	0x3fc5c1a5155260e8              # double 0.1699720720396336
	.quad	0x3fef1ad550b0109c              # double 0.97202554473234981
	.quad	0x3fbc682a7a932098              # double 0.11096444599673061
	.quad	0x3fb0d0b2a27a0888              # double 0.065684475581322954
	.quad	0x3fa9872086c828c0              # double 0.049859062626710138
	.quad	0x3fef5b9005a44501              # double 0.97992707349672525
	.quad	0x3fb41a45cd0a5a60              # double 0.078525888975812475
	.quad	0x3fe16b7e37482d4d              # double 0.54437170789007328
	.quad	0x3fde8e8a57795776              # double 0.47744997541791834
	.quad	0x3fe3f7eefb717184              # double 0.62401532278049432
	.quad	0x3fb64b4c6d73ea30              # double 0.087086464616654479
	.quad	0x3fdeaedec56fe3a8              # double 0.47942322998965858
	.quad	0x3fc7bb3f6ce2230c              # double 0.18540184799737636
	.quad	0x3fe0060f18a9ade0              # double 0.50073962037043529
	.quad	0x3fe003f232e6b895              # double 0.50048170034075901
	.quad	0x3fefa6fda94111dc              # double 0.98913462693650044
	.quad	0x3fd5a3ee5aea7998              # double 0.33813055876262288
	.quad	0x3febdfbc33ed1027              # double 0.87106142179300583
	.quad	0x3fdf47e05a1c5736              # double 0.48876198577760321
	.quad	0x3fe4d28a51140537              # double 0.65070072017275649
	.quad	0x3fea8359ddb0fe14              # double 0.82853406237694793
	.quad	0x3fece3729bf2102d              # double 0.90276461084477477
	.quad	0x3fda9974faa4d402              # double 0.41561626889171077
	.quad	0x3fdfa1cf033a7870              # double 0.49425101580880604
	.quad	0x3fc7289aecd78e40              # double 0.18092667164374809
	.quad	0x3fda92353b86b7b2              # double 0.41517382443532391
	.quad	0x3fe073cbe14ac1da              # double 0.51413530351970427
	.quad	0x3fd7b6970fefc474              # double 0.37051941448505166
	.quad	0x3fd7c65c3ca8a584              # double 0.37148195193966438
	.quad	0x3fe2f82a9854b794              # double 0.59279374839910526
	.quad	0x3feea8f66daf11a8              # double 0.95812531874303363
	.quad	0x3fe5ba1087d187ea              # double 0.67896296050116445
	.quad	0x3fe0362145775316              # double 0.5066076618919364
	.quad	0x3fe614adc49f09d2              # double 0.69002426531397476
	.quad	0x3fd8a90aaaae0104              # double 0.38531748454990145
	.quad	0x3fccabe8143fd2c4              # double 0.22399617184387044
	.quad	0x3fe8b07493e56d0c              # double 0.77153996358848209
	.quad	0x3fdee188b3942936              # double 0.48251550232875517
	.quad	0x3fb8dc0acba59a50              # double 0.097107577055433269
	.quad	0x3fd9dcb36b8e5c12              # double 0.40409551147007605
	.quad	0x3fd3b4ce7dc530c8              # double 0.3079105594849918
	.quad	0x3fe87280aab7b473              # double 0.76397736876755429
	.quad	0x3fe11d9680902a1e              # double 0.53486180410374451
	.quad	0x3fdeed8823d30702              # double 0.48324779032201104
	.quad	0x3fe9c77af1af382f              # double 0.80560061649317116
	.quad	0x3fddb46b2817fbee              # double 0.4641368762531205
	.quad	0x3fda9eccb91cdc26              # double 0.41594236447730493
	.quad	0x3f724dedd90c5e00              # double 0.0044688502246326145
	.quad	0x3fecaea2ee2a972b              # double 0.8963179256140611
	.quad	0x3fcb588e6b948c88              # double 0.21364002469008292
	.quad	0x3fedc0d6d8783906              # double 0.92978994635794332
	.quad	0x3fd258185ca01a90              # double 0.28662690206002939
	.quad	0x3fef987b5f17f8e6              # double 0.98736351559616931
	.quad	0x3fd9d416e870be76              # double 0.40356991481073778
	.quad	0x3fdcc0ee028c453c              # double 0.44927549599477223
	.quad	0x3fe6aca154691364              # double 0.7085730217591899
	.quad	0x3fc13144a06b6798              # double 0.13431604226098837
	.quad	0x3fe8fa71bba8ecdf              # double 0.78057181026761302
	.quad	0x3fe6c68f5e46f9db              # double 0.71173828519368543
	.quad	0x3fd7c7878aaf8678              # double 0.37155331176300121
	.quad	0x3fe86a03f29a8510              # double 0.76294133552088006
	.quad	0x3fe50f82d783fa85              # double 0.65814344494704413
	.quad	0x3fe4380b92f9ec73              # double 0.63184145647336576
	.quad	0x3fe3371936fd14e2              # double 0.60047589054070394
	.quad	0x3fe1a327a6796878              # double 0.55116636766912475
	.quad	0x3fbed641fc4dd280              # double 0.12045681390538654
	.quad	0x3fe72e90ddc2ed46              # double 0.72443431198863872
	.quad	0x3fbaf586df1d7188              # double 0.10530894229072463
	.quad	0x3fe85320c06711dd              # double 0.76014745310436249
	.quad	0x3fe0c92f0d063857              # double 0.52455856841857951
	.quad	0x3fd247e5b433f618              # double 0.28563826177546181
	.quad	0x3f8f8a54dc829200              # double 0.015400565127785093
	.quad	0x3f6acde43a335000              # double 0.0032720048489895959
	.quad	0x3fe118bdd2b95ce7              # double 0.53427020222707433
	.quad	0x3fd60c13aae3d2ce              # double 0.34448711098165752
	.quad	0x3fe70beeaccc2b0e              # double 0.72020658254163705
	.quad	0x3fedb1a31808b397              # double 0.9279342145360826
	.quad	0x3fb2d184e2b7d5a8              # double 0.073509507514094907
	.quad	0x3fec03c5fa84ada7              # double 0.87546061448431522
	.quad	0x3fe3989c932b3c27              # double 0.61237934822009243
	.quad	0x3fd603a2915715c2              # double 0.34397186463715113
	.quad	0x3fe9629ff705ef50              # double 0.79328916784968762
	.quad	0x3fe811e3b52e8171              # double 0.75218377482455712
	.quad	0x3fd168d208c5ae38              # double 0.27202273232134955
	.quad	0x3fd1612147c41c04              # double 0.27155334480670512
	.quad	0x3fb5e15a9ce6d560              # double 0.085469878488614537
	.quad	0x3fee404d519a60f8              # double 0.94534936845869221
	.quad	0x3fe70d0affd98058              # double 0.72034215899112564
	.quad	0x3fe8f097fc95d729              # double 0.77936934788769918
	.quad	0x3fbf54eccb84b168              # double 0.12238960236272123
	.quad	0x3fb018362f153130              # double 0.062869440550632261
	.quad	0x3fcd1543219d05c4              # double 0.22721137181546969
	.quad	0x3fed88f32e7ec889              # double 0.92296752053359044
	.quad	0x3fe5c593341e3ef9              # double 0.68036804370237214
	.quad	0x3fb77908a9d34b98              # double 0.091690579854271426
	.quad	0x3fd7c3a5e80e5e02              # double 0.3713164106534067
	.quad	0x3fda1de441509b08              # double 0.40807443979649394
	.quad	0x3fdd3da683655c54              # double 0.45688784438738606
	.quad	0x3fcd07200d235298              # double 0.22677994386198885
	.quad	0x3fe9e3d00aecf22f              # double 0.80905916341686701
	.quad	0x3fd5406fe2d11be0              # double 0.33205792570191583
	.quad	0x3fe26bb752e480d4              # double 0.57564893903693326
	.quad	0x3fc03acc47b99348              # double 0.12679437162582929
	.quad	0x3fd4ac3e3705935c              # double 0.3230128800699299
	.quad	0x3fed66430370de34              # double 0.9187331263737577
	.quad	0x3fdd710db7fc568a              # double 0.46002524344780993
	.quad	0x3fcaebafc369d318              # double 0.21031758348149121
	.quad	0x3fd9e4941c421444              # double 0.40457632789213371
	.quad	0x3fbe3c414dccb980              # double 0.11810691975981591
	.quad	0x3fec8df9200d0259              # double 0.89233070621419153
	.quad	0x3fd2c691beb6269c              # double 0.29336970924541972
	.quad	0x3fe2c78915f46ea0              # double 0.58685735977219977
	.quad	0x3fe2afbebff31ba9              # double 0.58395326128162595
	.quad	0x3fe94d7267794d62              # double 0.79070396623357575
	.quad	0x3fcf953d2500fcc0              # double 0.24674190813855112
	.quad	0x3fd49ede3175cd90              # double 0.32219652967543144
	.quad	0x3fe4e284272fb031              # double 0.6526509061200213
	.quad	0x3fb0d5411ab83768              # double 0.065754002593363503
	.quad	0x3fc194e411ca5738              # double 0.13735628956481505
	.quad	0x3fe533b948d41537              # double 0.6625639364653243
	.quad	0x3fdcb0ef71283e60              # double 0.44829927492626176
	.quad	0x3fdf59bccdf3d8ea              # double 0.48985214340736027
	.quad	0x3fc011aa528cbad0              # double 0.12553910284756009
	.quad	0x3fec08c3844613bc              # double 0.87606979212488722
	.quad	0x3fd1ec12d97874a0              # double 0.28003379094463732
	.quad	0x3fedb7c83d04ec03              # double 0.92868434827630642
	.quad	0x3fe617f66cb2d90d              # double 0.6904251215953835
	.quad	0x3feecfeff39ac080              # double 0.96288297251705046
	.quad	0x3fd08fe5beb77a18              # double 0.25878280281713861
	.quad	0x3fd0eb6c91f8d948              # double 0.26436914687237278
	.quad	0x3fc7cede8e4a5b5c              # double 0.18600065181518743
	.quad	0x3fe5ea11893abaf2              # double 0.68482281496639374
	.quad	0x3fe9b9ea76fa253a              # double 0.80394480931969459
	.quad	0x3fcffa668bce5d3c              # double 0.2498291189810774
	.quad	0x3fdbbfcb2519058a              # double 0.43358114836527106
	.quad	0x3fa176af2a2b1cf0              # double 0.034108613870154403
	.quad	0x3fe4d99e7145502e              # double 0.65156480906671788
	.quad	0x3f953c060a13a9e0              # double 0.020736784329452251
	.quad	0x3fcd81699481b318              # double 0.23051185370732052
	.quad	0x3fc56c170a611568              # double 0.16736114508436661
	.quad	0x3fe1220fc636991a              # double 0.53540791238336571
	.quad	0x3fbeaa0a1e332c38              # double 0.11978209721853339
	.quad	0x3fe081e8bebac4ee              # double 0.51585805179470667
	.quad	0x3fb804b306585618              # double 0.093821705864990057
	.quad	0x3fe84e7ea15cbb43              # double 0.75958186641751302
	.quad	0x3f9a68c9c4c873c0              # double 0.025790360103304044
	.quad	0x3fe955c36e12c0e8              # double 0.79171916483576599
	.quad	0x3feb610d09673b36              # double 0.85559703671046949
	.quad	0x3fe69bef7a5dd5a4              # double 0.70653509044375484
	.quad	0x3fea7ef998d6e3b6              # double 0.82799987651298212
	.quad	0x3fd0ab21f21906ba              # double 0.26044510500296847
	.quad	0x3fe73e45d89c8be3              # double 0.72635166460929346
	.quad	0x3fdbaffcc1ea6a22              # double 0.43261641442373577
	.quad	0x3fd314843491199e              # double 0.29812722333408626
	.quad	0x3f98e0e902e6d3c0              # double 0.024295464326957505
	.quad	0x3fe3c7fdc5b8db42              # double 0.61816300027462767
	.quad	0x3fe3847b02130169              # double 0.60992193608403256
	.quad	0x3fe38de7057fb77b              # double 0.61107207368853211
	.quad	0x3fe0e56764ba047d              # double 0.52800340340776553
	.quad	0x3fe16724ddd654f4              # double 0.54384082152924274
	.quad	0x3fd2367a4127ee1e              # double 0.28457504618538276
	.quad	0x3fad15776223c100              # double 0.056804400186480919
	.quad	0x3f8772a4cd52ed40              # double 0.011449134365071445
	.quad	0x3fefdc72500f9161              # double 0.99565997731091837
	.quad	0x3fc0320dbc1c7500              # double 0.12652751622309921
	.quad	0x3fed6cd293fa7e85              # double 0.9195340051846449
	.quad	0x3fed63060acab3c7              # double 0.91833784206175373
	.quad	0x3fb36ec3d5c65d58              # double 0.075908889475944874
	.quad	0x3fdd23984b2f2bd0              # double 0.45529754011357415
	.quad	0x3febebd8c90f237e              # double 0.87253989476549498
	.quad	0x3fdb3c8893089072              # double 0.4255696712373328
	.quad	0x3fa8b890844f8770              # double 0.048283115531161935
	.quad	0x3fe253afccc6db7e              # double 0.57271566386667394
	.quad	0x3fe80cfe78d315f7              # double 0.75158618544145284
	.quad	0x3fe0ed69cf7e0148              # double 0.52898111844846429
	.quad	0x3fef3c5df925c03c              # double 0.97611902867902911
	.quad	0x3fd0526bfca5d1ae              # double 0.2550306288969989
	.quad	0x3fea43849ff39475              # double 0.82074195137523864
	.quad	0x3fe75145a3129a89              # double 0.72867090082293473
	.quad	0x3fd30f8455d4c8c4              # double 0.29782207853271481
	.quad	0x3fe4cf0641d3d98d              # double 0.65027153832379414
	.quad	0x3fedc989e31cbe9d              # double 0.93085188253276707
	.quad	0x3fc48238af5bf940              # double 0.16022404253448919
	.quad	0x3fe6ae26404b9b84              # double 0.70875847394641811
	.quad	0x3fed044ab642d5ef              # double 0.90677390668741775
	.quad	0x3fe932a25d577412              # double 0.78743093710693501
	.quad	0x3fd290f9b9a6f5fa              # double 0.29009860162827261
	.quad	0x3fe49061d993a20e              # double 0.64262478347251473
	.quad	0x3fe988258291d62d              # double 0.79786944867982401
	.quad	0x3fd4fd161be5c84a              # double 0.32794716572164317
	.quad	0x3fdde7f0152026cc              # double 0.4672813612274751
	.quad	0x3fd29c3eb0920176              # double 0.2907864307708431
	.quad	0x3fe3f16bd36e3199              # double 0.62322036070831921
	.quad	0x3fdcf5b280a7e402              # double 0.45249617160840228
	.quad	0x3fe827f0319ee24f              # double 0.75487527553111444
	.quad	0x3fc93f70e9f11978              # double 0.19724856779994204
	.quad	0x3fe62e778a71b444              # double 0.69317223586916343
	.quad	0x3fe73b955b37aa2f              # double 0.72602336707979542
	.quad	0x3fdaf34aefedc3ea              # double 0.42109940939468393
	.quad	0x3fe6407161767ff9              # double 0.69536656413765663
	.quad	0x3fe619c9c3bd802d              # double 0.69064796667590189
	.quad	0x3fa95e8163b80570              # double 0.049549144194325545
	.quad	0x3fe910e9af7a3d8c              # double 0.78331455491017853
	.quad	0x3fde1ec8e5c18274              # double 0.47062895238017366
	.quad	0x3fd89645e24834b0              # double 0.38417193506104308
	.quad	0x3fc3473df0a80998              # double 0.15061163187790494
	.quad	0x3fd7b489932a1fe6              # double 0.3703941285280038
	.quad	0x3fd81318c4f20a06              # double 0.37616557343440638
	.quad	0x3fcd14021bf40624              # double 0.22717310299781091
	.quad	0x3fec6f0186d744c4              # double 0.88855053268539352
	.quad	0x3fdf4418e1cc97f6              # double 0.4885313229627849
	.quad	0x3f9109b18fe1f600              # double 0.016638540655995016
	.quad	0x3fd7cf4b53e6fa38              # double 0.37202723687724726
	.quad	0x3fe42c68382905f7              # double 0.63042078942106528
	.quad	0x3fe88014e65e1106              # double 0.76563496583597224
	.quad	0x3fa8aa53006953a0              # double 0.048174470710967698
	.quad	0x3fe6074f7af6f36a              # double 0.68839239136251007
	.quad	0x3fc33639d30019f0              # double 0.15009234240297031
	.quad	0x3fece666f356bb1a              # double 0.90312526251895808
	.quad	0x3fc2e9f041332170              # double 0.14776423629360691
	.quad	0x3fe6b5a048099ce7              # double 0.7096711546882063
	.quad	0x3fe4d8f36b7a6cf0              # double 0.65148325912323735
	.quad	0x3fe9b20779d4bceb              # double 0.80298208041304286
	.quad	0x3fe1d2d462fa34a4              # double 0.55698603946224923
	.quad	0x3fc8a042e9be13b8              # double 0.19239078915793839
	.quad	0x3fd1fd6a8ac27d2e              # double 0.28109229613069686
	.quad	0x3fd525cde349daa0              # double 0.33043238826886956
	.quad	0x3fe645308bf63c13              # double 0.69594600044536248
	.quad	0x3fe17ada6bdb3313              # double 0.54624672952340558
	.quad	0x3fe213f8149cc910              # double 0.56493762994640129
	.quad	0x3fea94d788d9b383              # double 0.8306691811427388
	.quad	0x3f58dbb22002e200              # double 0.0015172233106978128
	.quad	0x3fcfc77e22e80e18              # double 0.24827553467194785
	.quad	0x3fe634aefb68a9a6              # double 0.69393109420098109
	.quad	0x3fdfbc1876845e02              # double 0.49585544179851138
	.quad	0x3fe670d5f84e0d47              # double 0.70127390381859633
	.quad	0x3feda09dc77b7749              # double 0.92585648499855566
	.quad	0x3fef21a83dfb5815              # double 0.97285854440520103
	.quad	0x3fe8b0af39b00458              # double 0.77156792895415105
	.quad	0x3fbf1942cb76b6d0              # double 0.12147920100570819
	.quad	0x3fe7974f45ccf6f9              # double 0.73722041733682808
	.quad	0x3fe25cdd4bd88981              # double 0.57383599103586402
	.quad	0x3fe3307896d80537              # double 0.59966687642751182
	.quad	0x3fe27594c09b0604              # double 0.57685315721772712
	.quad	0x3fd18744103e4c34              # double 0.2738809736849277
	.quad	0x3fe508bb5d04792e              # double 0.65731590430713083
	.quad	0x3fc61fd2aa7133bc              # double 0.1728461582410129
	.quad	0x3fde1e236d42a0a0              # double 0.47058950109431841
	.quad	0x3fbde3db17e36218              # double 0.11675805409630191
	.quad	0x3fc523f7d24d0380              # double 0.16516015785785143
	.quad	0x3fc2dba67068779c              # double 0.14732819069552938
	.quad	0x3feb52e231ffb8c6              # double 0.85386762395298699
	.quad	0x3fe5475f77cc1e58              # double 0.66496251485745983
	.quad	0x3fd73f7443e68384              # double 0.36324793463614236
	.quad	0x3fc0c6672438c770              # double 0.13105477589266057
	.quad	0x3fe26fbc1929e80e              # double 0.57613949694428057
	.quad	0x3fe4afa546a118a0              # double 0.64644111437589302
	.quad	0x3fead46a10bf13da              # double 0.83842948218136404
	.quad	0x3fc76e839f9f71d4              # double 0.18306012434085395
	.quad	0x3fe1547a37d9d875              # double 0.54156218441381887
	.quad	0x3fda4e81b631e3d2              # double 0.41104166786641116
	.quad	0x3fe62adde89c210f              # double 0.69273276740662648
	.quad	0x3fa845b5d0ebec60              # double 0.047406846764680877
	.quad	0x3fd5d787cecdd4e4              # double 0.34127993770319009
	.quad	0x3fea2f228cfe6c34              # double 0.81825377977236835
	.quad	0x3fd910c08ef00826              # double 0.39164747198822381
	.quad	0x3fa2edde8e60a7d0              # double 0.036971049194405858
	.quad	0x3fe9848a443ef2a9              # double 0.79742921189570837
	.quad	0x3fea6a4180a6806c              # double 0.82547068717032123
	.quad	0x3fea4b679cc911c6              # double 0.82170467970041083
	.quad	0x3fe173983df14a30              # double 0.5453606805625153
	.quad	0x3fe70b549b99b32c              # double 0.72013311758710108
	.quad	0x3fe928b2b6dda3a5              # double 0.78621803012821501
	.quad	0x3fe4d2ad65603424              # double 0.65071744728050307
	.quad	0x3fee18789823cab0              # double 0.9404871913414663
	.quad	0x3fe628730e1d0f10              # double 0.69243767506165632
	.quad	0x3fcc1440848a2e98              # double 0.21936804267567278
	.quad	0x3fe792146e4116f2              # double 0.73658200773271987
	.quad	0x3fe2198f5e165697              # double 0.56562012077729917
	.quad	0x3fd4218cd0cb41c4              # double 0.31454773321186402
	.quad	0x3fe9980150da30ef              # double 0.79980531493631968
	.quad	0x3fef3b4b8044b88c              # double 0.97598815014295459
	.quad	0x3fe09a3f43bab426              # double 0.51882899502164004
	.quad	0x3fe8baac836a4490              # double 0.77278733889592566
	.quad	0x3fdfd8dbb0bd3abc              # double 0.49761097202000903
	.quad	0x3feb7ec37fb67508              # double 0.85922408050433408
	.quad	0x3fcaf2ae6dcefd94              # double 0.21053104745622575
	.quad	0x3f8de14ad9286140              # double 0.014589867355468855
	.quad	0x3fef1d4c8955c8f4              # double 0.97232653449307671
	.quad	0x3fd1c5a4848f3d86              # double 0.27768814988390778
	.quad	0x3fc1aabb941dbe4c              # double 0.13802284939036935
	.quad	0x3fea64ae7b5e8229              # double 0.82479023070852009
	.quad	0x3f6807bdf8581300              # double 0.0029333792069813347
	.quad	0x3fca1479bfa17cbc              # double 0.20374986512158511
	.quad	0x3fb11a33d9b8a9d8              # double 0.066806069044708649
	.quad	0x3fedfd55d774eba9              # double 0.9371747215403633
	.quad	0x3fc5a9a58ed62dc0              # double 0.16923970674939248
	.quad	0x3fd68a38befc0408              # double 0.35218638087104681
	.quad	0x3fea8bcf83ffbc84              # double 0.82956672459648972
	.quad	0x3fe67b8ab2cfceb5              # double 0.70258078502816679
	.quad	0x3fc1d52f7f655bfc              # double 0.13931840630058889
	.quad	0x3fefdedbd48dccf8              # double 0.9959544326251537
	.quad	0x3fcf23e91898ab9c              # double 0.24328340245241697
	.quad	0x3febe5a6e345d552              # double 0.8717836798593146
	.quad	0x3fe050341a7a0783              # double 0.50979046984888077
	.quad	0x3fef4b5d2877e38c              # double 0.97794969467132508
	.quad	0x3fe9a3a61610d2d9              # double 0.80122665700636297
	.quad	0x3fd6f94c6a05bc9c              # double 0.35896597245932482
	.quad	0x3fa3049dfc777750              # double 0.037144600933727845
	.quad	0x3fe0f807c41aedcc              # double 0.53027714063449016
	.quad	0x3fe70d2e31ee06c4              # double 0.72035894157325986
	.quad	0x3fec75d7dddbf271              # double 0.88938515979641697
	.quad	0x3fea43dfc922f749              # double 0.82078542026986512
	.quad	0x3fe0517e7bddcf81              # double 0.5099480075136712
	.quad	0x3fc886faa3058c1c              # double 0.19161923370401801
	.quad	0x3fd55b09f38a96b6              # double 0.33368157180153035
	.quad	0x3fe442efd7df42ab              # double 0.633171006798951
	.quad	0x3fc0388e3a0a0138              # double 0.12672593912066943
	.quad	0x3fb8d4a776e98778              # double 0.096994844943336989
	.quad	0x3fe066aa0951a9a9              # double 0.51253225154987547
	.quad	0x3fc037e7143cd3f4              # double 0.12670601356663236
	.quad	0x3fe1d496c0d4d42d              # double 0.55720079100013253
	.quad	0x3fd2719ee24a9944              # double 0.28818485354203838
	.quad	0x3fb2b7d7c7bc1b18              # double 0.073117719901443556
	.quad	0x3fe9998cf138e188              # double 0.79999396432599301
	.quad	0x3fe2caeac170d500              # double 0.58727014333149441
	.quad	0x3fefcb1e5bca3d26              # double 0.99354474952443605
	.quad	0x3fe9acc318f375fd              # double 0.80233912347074432
	.quad	0x3fedfe7fa8942f82              # double 0.93731673169666885
	.quad	0x3fd096ca47ac2bee              # double 0.25920350074073795
	.quad	0x3fe83117e1d3bf0d              # double 0.7559928332029543
	.quad	0x3feaf46413a7c4d1              # double 0.84233287657675693
	.quad	0x3fe4096780f39544              # double 0.62614798723067411
	.quad	0x3fe2f65995aa9624              # double 0.59257201415738736
	.quad	0x3fe7413e88848598              # double 0.72671438850027226
	.quad	0x3fe010ba2adcd179              # double 0.5020418965491863
	.quad	0x3fcdff1f84e4b1d8              # double 0.23434823979313424
	.quad	0x3fcfed483aae7144              # double 0.24942877641013628
	.quad	0x3fb62fd5d4bda050              # double 0.086667408407835155
	.quad	0x3fd0ebe1fbde09ba              # double 0.2643971404687836
	.quad	0x3fe4aff0264b3166              # double 0.64647681693308523
	.quad	0x3fd7698c78f2e640              # double 0.36581718264969609
	.quad	0x3fb706fcee8b3f40              # double 0.089950378645196061
	.quad	0x3fc725e6097600dc              # double 0.18084407293282012
	.quad	0x3f971af79bd39b00              # double 0.022563809286022085
	.quad	0x3fad71b39f47c110              # double 0.057508099740404828
	.quad	0x3fbf9f7a8b6e69f8              # double 0.12352720169148046
	.quad	0x3fcaf9e4b66fdf1c              # double 0.21075114162498998
	.quad	0x3fa5e23baed51aa0              # double 0.042741646854257853
	.quad	0x3fedbbf9e1bd3352              # double 0.92919630136166576
	.quad	0x3fe4f280600560a4              # double 0.65460222963431081
	.quad	0x3fedeac272d4ab91              # double 0.93490717342261764
	.quad	0x3fec83b34303f88a              # double 0.89107668961493514
	.quad	0x3fbaf0a42aceda78              # double 0.10523439450376226
	.quad	0x3fd3da09a35f3f9e              # double 0.31018296198180362
	.quad	0x3fb80539d3d53848              # double 0.093829740731252831
	.quad	0x3fe1169a4656c46b              # double 0.53400911081383862
	.quad	0x3fd00a5cc8c963fc              # double 0.25063247306894687
	.quad	0x3fdbdd60dc88d372              # double 0.4353868631035801
	.quad	0x3fdcf7514a24310a              # double 0.45259506454819187
	.quad	0x3fca33efb75afab4              # double 0.20470997288608361
	.quad	0x3fec5e289dfa4412              # double 0.88649397711754063
	.quad	0x3feb817bc379f1c9              # double 0.8595560853860259
	.quad	0x3fd4d2759b7ab6e4              # double 0.32534542258768639
	.quad	0x3fe26296807bd725              # double 0.57453465551836713
	.quad	0x3fe7d82c67ffc375              # double 0.74513836204833572
	.quad	0x3fc66550b1ab8dec              # double 0.17496689486789252
	.quad	0x3fe89c2f0269a357              # double 0.76906538459034379
	.quad	0x3fd6d458515b90e2              # double 0.35671050973020446
	.quad	0x3fb4f4e3c0af4e90              # double 0.081861719648538278
	.quad	0x3fe3d45eb1025c23              # double 0.61967405864823311
	.quad	0x3fcb4438f81b89ec              # double 0.2130194865668068
	.quad	0x3fe78965cf57fb47              # double 0.73552217957317445
	.quad	0x3f988737d4fd1a40              # double 0.023953316092298005
	.quad	0x3fd51691a3023142              # double 0.32950249594502534
	.quad	0x3fd13eaa1a07abf8              # double 0.26944973508824388
	.quad	0x3fd6ab87db5bd7b6              # double 0.35421940252069406
	.quad	0x3fe3b005d0f13a18              # double 0.61523714837113896
	.quad	0x3fe314e2732a2c87              # double 0.59629938595880183
	.quad	0x3fc9e66b7721a628              # double 0.20234435383763238
	.quad	0x3fe4d5e3bbc4cea3              # double 0.65110956834401568
	.quad	0x3fc2ae8f31a9a09c              # double 0.14595212864810925
	.quad	0x3fadbb76062e6cd0              # double 0.058070839170989097
	.quad	0x3feefd0afe77ad1f              # double 0.96838903141670928
	.quad	0x3fd8a394009f0484              # double 0.38498401699695983
	.quad	0x3fda34953d319c74              # double 0.40945940948444748
	.quad	0x3fde0905055d7b46              # double 0.46930051349584223
	.quad	0x3fef0447de16afd0              # double 0.96927255036052351
	.quad	0x3fe082ea878069f5              # double 0.51598097291144873
	.quad	0x3fdefa1cf0504910              # double 0.48401568859220934
	.quad	0x3fcf470ac46f7910              # double 0.24435553161215084
	.quad	0x3fdf48eed275b634              # double 0.48882647087779962
	.quad	0x3fe537c7e7cb97d2              # double 0.66305918953434628
	.quad	0x3fe0d7c591bad897              # double 0.52633932555069662
	.quad	0x3feae7612b92021a              # double 0.84074457654793666
	.quad	0x3fe251eb59a4de5d              # double 0.57249991901967301
	.quad	0x3fe61e03a82e7540              # double 0.69116385314888618
	.quad	0x3fe12893abb9f256              # double 0.53620322742751614
	.quad	0x3feca199a535eeaf              # double 0.89472658412656425
	.quad	0x3fe8299ca04974cb              # double 0.75507956796686793
	.quad	0x3fedc6aa9595b413              # double 0.93050126281525747
	.quad	0x3fde132ef63b2454              # double 0.46992086454389903
	.quad	0x3fd9e853ca26cf30              # double 0.40480513326041301
	.quad	0x3fd7162acffa62ca              # double 0.36072798071249379
	.quad	0x3fe8858e64cb47a8              # double 0.76630325018253576
	.quad	0x3fda6d46a877a086              # double 0.4129196782291803
	.quad	0x3febc37173552a5a              # double 0.86760780836022922
	.quad	0x3fefebe1ff4a3e0a              # double 0.99754428731279288
	.quad	0x3fddcaec00f51240              # double 0.46551036923873212
	.quad	0x3fbaef5319c71030              # double 0.1052143037732669
	.quad	0x3fbce5fb975d06d8              # double 0.11288425870318564
	.quad	0x3fed06d3c95d3d22              # double 0.90708340958545741
	.quad	0x3fe473ca7e6e69c0              # double 0.63913464254010677
	.quad	0x3fe7bf6462252db6              # double 0.74211329621305455
	.quad	0x3fc9a6efbc3809b8              # double 0.20040699663520711
	.quad	0x3fd2956e192d810a              # double 0.29037048777355834
	.quad	0x3fe58d4989c5aad0              # double 0.67349697979565271
	.quad	0x3fec4ee151ec33ed              # double 0.88462892532845461
	.quad	0x3feecb7615bcf237              # double 0.96233658071248029
	.quad	0x3fe553adeccbf327              # double 0.66646476983405456
	.quad	0x3fe081c7b484efdb              # double 0.51584229715035279
	.quad	0x3fcf648df8559bb4              # double 0.24525618196204635
	.quad	0x3fb7d2ba0edb2b30              # double 0.093059185626015006
	.quad	0x3fd7a7b9a326b43e              # double 0.36961213047726804
	.quad	0x3fed21f15c5b032b              # double 0.91039341009318286
	.quad	0x3faf0918191cea70              # double 0.060616257730050971
	.quad	0x3fe6eb052a53be87              # double 0.71618898646370688
	.quad	0x3fbb3d6f8fd61bf8              # double 0.10640618573789584
	.quad	0x3fd7e0304c0e4164              # double 0.37305838992417351
	.quad	0x3fdc14fa0fc6f4ac              # double 0.43878032246341081
	.quad	0x3fdd6e8e1a924862              # double 0.45987274737229289
	.quad	0x3fef0ad425512460              # double 0.97007186211079599
	.quad	0x3fc3782c185bacbc              # double 0.15210486592636652
	.quad	0x3fd279f313ace2ec              # double 0.28869320794505771
	.quad	0x3fe52ab7717b6137              # double 0.66146442570155883
	.quad	0x3fad320985eee510              # double 0.057022378539338558
	.quad	0x3fd8c0c4114e5e2a              # double 0.38676549615908817
	.quad	0x3fee6af36afc9702              # double 0.9505555238326624
	.quad	0x3fd0e91c24bb1138              # double 0.26422790133462426
	.quad	0x3fd8b6359ea55136              # double 0.38612118237257975
	.quad	0x3fe08339da3cfc91              # double 0.51601879715589594
	.quad	0x3fe6b61bd153eb94              # double 0.70973006138170769
	.quad	0x3faa9c33eef98860              # double 0.051972983285637708
	.quad	0x3f9e8a38c7246cc0              # double 0.029824149279289669
	.quad	0x3fe276e1c0be4edd              # double 0.57701194424813773
	.quad	0x3fd8347e2b7507c2              # double 0.37820390933859127
	.quad	0x3fc1d443c8d95d80              # double 0.13929030711254242
	.quad	0x3fe2b31c71534d7b              # double 0.58436414846293816
	.quad	0x3fe345fd6bd54637              # double 0.60229369221833096
	.quad	0x3fe67a7d18c4cb7b              # double 0.70245222890512993
	.quad	0x3fed6d83a97d110a              # double 0.91961844542723381
	.quad	0x3fe0dc3990d0a8f8              # double 0.52688291820712063
	.quad	0x3fef681167f5031a              # double 0.98145361236683759
	.quad	0x3fd9c9bfef2661fa              # double 0.40293882708058926
	.quad	0x3f9e63e3be609340              # double 0.029677923674302109
	.quad	0x3fc5083f0783890c              # double 0.1643141543091321
	.quad	0x3feaff810a949559              # double 0.84368946138844614
	.quad	0x3fe86ffafc4caf72              # double 0.76366948392158762
	.quad	0x3fe2dc0fd677641f              # double 0.58936302078211955
	.quad	0x3fc41390823da16c              # double 0.15684706077014299
	.quad	0x3fe936da1947c893              # double 0.78794579446391066
	.quad	0x3fde8c65bdc8269c              # double 0.47731917889960029
	.quad	0x3f80fcb7f797e0c0              # double 0.0082945225176306314
	.quad	0x3fd14878810e107e              # double 0.27004826167127038
	.quad	0x3f5b8f331c5a2e00              # double 0.0016820906761577659
	.quad	0x3fea36c47a44dbbe              # double 0.81918548470172659
	.quad	0x3f8247cfb6200640              # double 0.0089260318236511482
	.quad	0x3fc5a09ea07115bc              # double 0.16896422227925523
	.quad	0x3fdd06db6ed1f9de              # double 0.45354352781569485
	.quad	0x3fea048f9bb1663b              # double 0.81305675896437124
	.quad	0x3feb933246fcc8cf              # double 0.86171831001981924
	.quad	0x3feb4ca7cb6683a9              # double 0.8531073544182749
	.quad	0x3fd68fe801e11154              # double 0.35253334220421562
	.quad	0x3fca47ad776d9cc0              # double 0.2053124268670441
	.quad	0x3fd4fc325933175e              # double 0.32789286337753321
	.quad	0x3fc4ac1e27128858              # double 0.16150261791068732
	.quad	0x3fe87a809c275dcb              # double 0.76495390414032138
	.quad	0x3fee083e9229b58a              # double 0.93850639865347429
	.quad	0x3fdeb170868efbd0              # double 0.47958005085450583
	.quad	0x3fd40532e9a44a68              # double 0.31281731430605086
	.quad	0x3fe928655f522981              # double 0.78618115060207583
	.quad	0x3fc5389dfdeee000              # double 0.16579031848027626
	.quad	0x3feb8e45711029cb              # double 0.86111709673542103
	.quad	0x3fd0b43f2ee45bee              # double 0.2610013921670874
	.quad	0x3fee3a82a343f4b4              # double 0.94464237106116977
	.quad	0x3fe156c21e11276b              # double 0.54184060928785749
	.quad	0x3fc1c0b9ef292008              # double 0.13869404008642072
	.quad	0x3fe6a0ad106ad70c              # double 0.70711377340805504
	.quad	0x3fdc6c8f4ec1d35e              # double 0.44412596408010596
	.quad	0x3fd51748ff8273ca              # double 0.32954621269328455
	.quad	0x3fe3a1e4ded458d2              # double 0.61351245423682088
	.quad	0x3fe5406634a3f5da              # double 0.66411123544065309
	.quad	0x3faf539c0622b1b0              # double 0.061184764622655208
	.quad	0x3fcdc721731ec944              # double 0.23263948556047798
	.quad	0x3fe52362f41a8b32              # double 0.66056964565755139
	.quad	0x3fe2b5780da69036              # double 0.584651972447779
	.quad	0x3f902a489be48320              # double 0.015786299242907309
	.quad	0x3fb97497a7110e38              # double 0.099435308730840499
	.quad	0x3fd97d057459b514              # double 0.39825569498391755
	.quad	0x3fc6610e010c5300              # double 0.17483687449625762
	.quad	0x3fc470527bd28f90              # double 0.15967780157108935
	.quad	0x3fdcbdd4b92cc050              # double 0.44908636172749983
	.quad	0x3fef6101738ca305              # double 0.98059151237711772
	.quad	0x3fc57269587c0fe0              # double 0.1675540620855136
	.quad	0x3fc52051c64cb1f4              # double 0.16504881079289613
	.quad	0x3fd15dc0e429526c              # double 0.27134725839031293
	.quad	0x3fe7918eeceddc87              # double 0.73651834750388978
	.quad	0x3fd916fab70d88ec              # double 0.39202754856354605
	.quad	0x3fe9cc3958d7dfb5              # double 0.80617968895147973
	.quad	0x3fdeb2cfae6428dc              # double 0.47966377287288053
	.quad	0x3feb1b579eae200f              # double 0.84708767883512504
	.quad	0x3f974f0cbaf5f820              # double 0.022762488280470561
	.quad	0x3fe67f74808f9ce2              # double 0.70305848226135148
	.quad	0x3fe7ffd86d1ded10              # double 0.74998112975973363
	.quad	0x3fa5b769159566b0              # double 0.042414935955730981
	.quad	0x3fdaa0db130e3c4c              # double 0.41606785641574073
	.quad	0x3fe2efaeba850123              # double 0.59175812177275977
	.quad	0x3fe4d6b37c22c095              # double 0.65120863194717293
	.quad	0x3fefbfa8c5db1591              # double 0.99214590686522019
	.quad	0x3fd7448ed291ac2e              # double 0.36355944217092684
	.quad	0x3fd0c4c90274b022              # double 0.2620108150465531
	.quad	0x3fe5f4de4bc41daf              # double 0.68614115522443864
	.quad	0x3fdd9d37c626dff8              # double 0.46272081709639634
	.quad	0x3fa191c904e2ad20              # double 0.034315378042572897
	.quad	0x3fdef4d78613c32e              # double 0.4836939629886271
	.quad	0x3fee6e116316fc21              # double 0.95093602517579623
	.quad	0x3fe8a108a5dbca17              # double 0.7696574439453937
	.quad	0x3fefcf825712b672              # double 0.99408070570434703
	.quad	0x3fefe9f6e1abe9d1              # double 0.99731010509941075
	.quad	0x3fd94490375d10da              # double 0.39480977446170373
	.quad	0x3fe8b46892e60d17              # double 0.7720225209344872
	.quad	0x3fae6b6fd127d8f0              # double 0.059413427621551551
	.quad	0x3fe3d18e82e0ba28              # double 0.61933064996793963
	.quad	0x3fb789d57126dc40              # double 0.091946926236105675
	.quad	0x3fc2a6126ab4b770              # double 0.14569311342477986
	.quad	0x3fdcff3f1c9f9b74              # double 0.45307901187191324
	.quad	0x3fcdf2b0664e1908              # double 0.23396878238072127
	.quad	0x3fb2aaca04ec5a88              # double 0.072918535425154585
	.quad	0x3fef92ccd3ed3287              # double 0.98666993514923795
	.quad	0x3fe3d812c62cccda              # double 0.62012613969855157
	.quad	0x3fe95f53689cb198              # double 0.79288645202682329
	.quad	0x3fcc0434ca2ab320              # double 0.21887836333680699
	.quad	0x3fdfa14f14f8fc0a              # double 0.49422051475625095
	.quad	0x3fd787869c0d61aa              # double 0.36764683951835286
	.quad	0x3feb65efef07b9a8              # double 0.85619351087170958
	.quad	0x3fe68393ec6a79d0              # double 0.7035617463587247
	.quad	0x3fd02138499466d8              # double 0.25202758012311
	.quad	0x3faf995129aba2d0              # double 0.061716591202473858
	.quad	0x3fe726207b75d79d              # double 0.72340416062683099
	.quad	0x3febd629540fae10              # double 0.86989275377476538
	.quad	0x3fe7db20cac03676              # double 0.74549903487941438
	.quad	0x3fdbd57129410802              # double 0.43490246800149646
	.quad	0x3fa0ec43832c90f0              # double 0.033052549135648479
	.quad	0x3f9c45135865e9e0              # double 0.027607252378837432
	.quad	0x3fde295260c562e2              # double 0.47127208185479053
	.quad	0x3fef6b5f4959976a              # double 0.98185695959248886
	.quad	0x3fcf5ea7003c04fc              # double 0.24507606040427976
	.quad	0x3fe0ac1077007be6              # double 0.52100394480282541
	.quad	0x3fe80bbe0101cc95              # double 0.75143337437329427
	.quad	0x3fecb899259b9d93              # double 0.89753396363532756
	.quad	0x3fd0c239149e844a              # double 0.26185442937464087
	.quad	0x3fefbdc03f4e2bbc              # double 0.9919129597122871
	.quad	0x3fc3c89e0371c164              # double 0.15455985229665281
	.quad	0x3fe3e0ff5dc42bab              # double 0.62121551812866949
	.quad	0x3fd327d6e0a1ae9a              # double 0.29930660187413027
	.quad	0x3fa77f778e7eb500              # double 0.045894371170428272
	.quad	0x3f89eb5dd433e000              # double 0.012655957258616013
	.quad	0x3fe664a8d8b5f82c              # double 0.69978754354793216
	.quad	0x3fef2fc552f37694              # double 0.97458139611599614
	.quad	0x3fdcda9123c9fa86              # double 0.45084026808755373
	.quad	0x3fe441f5fef359c4              # double 0.63305187029873666
	.quad	0x3fc5f67b34c0893c              # double 0.17158451152597276
	.quad	0x3fe2fd8b34a39f45              # double 0.5934501674755458
	.quad	0x3febda5a1c8997f9              # double 0.87040429662442798
	.quad	0x3fd472683327b3e6              # double 0.31948285098661555
	.quad	0x3fefb80bda30d3e0              # double 0.99121658912065058
	.quad	0x3fee3e4f0c031ccd              # double 0.94510605188488628
	.quad	0x3fb10537cd04e218              # double 0.066485869935498321
	.quad	0x3fd7a8d2e3a3fc1c              # double 0.369679186158409
	.quad	0x3fb27803ba180608              # double 0.072143776829783346
	.quad	0x3fe9f609026e9e33              # double 0.81128359293956576
	.quad	0x3fe9155cf4cc9af1              # double 0.78385780155517015
	.quad	0x3fe21ce125f017db              # double 0.56602532777537407
	.quad	0x3fe8cd5a048797c8              # double 0.77506733784388704
	.quad	0x3feed14dfa217a29              # double 0.96304987767854755
	.quad	0x3fdbdeb7284a1d2e              # double 0.43546847281000367
	.quad	0x3fe32f54bbda6e74              # double 0.59952770891273
	.quad	0x3fe7c6508ab25b47              # double 0.74295832719040156
	.quad	0x3fed36b93cf09d29              # double 0.91293012525867312
	.quad	0x3fd1e1ae036a3726              # double 0.27939939816939086
	.quad	0x3fec92ee740d25c9              # double 0.89293596903115102
	.quad	0x3fef06909624116d              # double 0.96955136608498337
	.quad	0x3fee03f1ac57c88a              # double 0.9379814497063006
	.quad	0x3fd90538aab492cc              # double 0.39094368620343967
	.quad	0x3fdb3537d10e9752              # double 0.42512317100260077
	.quad	0x3feba92e8d381b49              # double 0.8644020803629725
	.quad	0x3fdaa0ce3353128c              # double 0.41606478702696204
	.quad	0x3fc2c43d6db4edfc              # double 0.14661376816535199
	.quad	0x3fcf1cfc48a919d8              # double 0.24307206676367232
	.quad	0x3fd7b363f54f64a2              # double 0.37032412487094224
	.quad	0x3fd2784ab97a7af0              # double 0.28859203446511028
	.quad	0x3fea3b62d5589b5d              # double 0.81974927586712065
	.quad	0x3fb8d87c99db5c78              # double 0.097053325236048482
	.quad	0x3feb495713060a2b              # double 0.85270265307946624
	.quad	0x3fd65223facdddf0              # double 0.34876346104235179
	.quad	0x3fba812d3069e8e0              # double 0.10353357727027257
	.quad	0x3fdee5754b8c1358              # double 0.4827550161137899
	.quad	0x3fd5d55fca38bfce              # double 0.34114832637987724
	.quad	0x3fdb4d4a68b0639c              # double 0.42659244750535108
	.quad	0x3fe59cf0dcdde03f              # double 0.67540782106426167
	.quad	0x3fe8da1430792c0d              # double 0.7766209551567741
	.quad	0x3fcc3590821b82ec              # double 0.22038465836433063
	.quad	0x3fb5ae8467622120              # double 0.084694171180789812
	.quad	0x3fe8d01449107073              # double 0.77540029783587128
	.quad	0x3fd3ccfb383006f2              # double 0.30938606726714035
	.quad	0x3fd600a5447f39dc              # double 0.34378940285833237
	.quad	0x3fb3194775683d20              # double 0.074604478992331469
	.quad	0x3fe6dae830d399f6              # double 0.71422204529227318
	.quad	0x3fe97e24e47b47c8              # double 0.79664845109277227
	.quad	0x3fb5f1e8002c95e8              # double 0.085722446482200731
	.quad	0x3fda2f6a787eed58              # double 0.40914403693360191
	.quad	0x3fed02144a768310              # double 0.90650381606619312
	.quad	0x3fd0e8e8cd83b5fc              # double 0.26421566076064074
	.quad	0x3fec4c1b3de54b13              # double 0.88429033364295362
	.quad	0x3fea1ddda0f9b9f3              # double 0.81614571991468521
	.quad	0x3fd010e8a9648754              # double 0.25103203336958768
	.quad	0x3fdf06ba1b0d99e0              # double 0.48478558198840283
	.quad	0x3fe2985dbcc61fb3              # double 0.5810993849745415
	.quad	0x3fc085ac6db6902c              # double 0.12907939297758853
	.quad	0x3fe66d47a953a241              # double 0.70083983489627866
	.quad	0x3fe5774db74e432e              # double 0.67081342508217801
	.quad	0x3fd144d76ebd639a              # double 0.26982675375398346
	.quad	0x3fd0e3d2acbc5fd6              # double 0.26390520924314609
	.quad	0x3fe62cb9d2a6020a              # double 0.69295970098761583
	.quad	0x3fb41a62eb290f68              # double 0.078527624523358264
	.quad	0x3fc33cd0f8632e14              # double 0.15029346588413317
	.quad	0x3fdd1e57e1f039a2              # double 0.45497700752539505
	.quad	0x3fe9b88d80412e19              # double 0.80377841043213316
	.quad	0x3fdf99503025189e              # double 0.49373249723101675
	.quad	0x3fc22f26b1ebf4c0              # double 0.14206393897612735
	.quad	0x3fdf9dbc8451c91c              # double 0.49400246545623516
	.quad	0x3f6b1f1735f9c700              # double 0.0033107236229675818
	.quad	0x3fc2d8b25d8cd490              # double 0.14723805969120862
	.quad	0x3fcb6f2b8c612ea0              # double 0.21433014254067917
	.quad	0x3fe4745cbbc03e35              # double 0.63920437498194949
	.quad	0x3fe0193be8d821cd              # double 0.50308032491107613
	.quad	0x3f81b6de1b398640              # double 0.0086495735224075831
	.quad	0x3f3e49e3a1e9c000              # double 4.6216781075880675E-4
	.quad	0x3fc1171164c92fd0              # double 0.13351647778688269
	.quad	0x3fe7bda2f7bd3ea3              # double 0.741898998132417
	.quad	0x3fe5d65252a04e6e              # double 0.68241230142525722
	.quad	0x3fe90d5876082110              # double 0.78287909558369684
	.quad	0x3fc1dd8c31478560              # double 0.13957359701366112
	.quad	0x3fdd8088d0008264              # double 0.46097011864370629
	.quad	0x3fafde04d77b3ca0              # double 0.062240744880562859
	.quad	0x3fe6cb84d6d2a555              # double 0.71234361608109487
	.quad	0x3fd37e6b45cd3412              # double 0.30459100548324713
	.quad	0x3febbf18c7998edf              # double 0.86707724556296373
	.quad	0x3fe13132035f3ed7              # double 0.53725529345134759
	.quad	0x3fb055679f5f63a0              # double 0.063803173455552642
	.quad	0x3fec647e031802a6              # double 0.8872671184945673
	.quad	0x3fce3bcfe8042d1c              # double 0.23620032147332715
	.quad	0x3feac32a33f3611a              # double 0.83632383486386463
	.quad	0x3fed7b975f71c5ed              # double 0.92133682862748645
	.quad	0x3fed092a78b8f292              # double 0.9073688848362329
	.quad	0x3fab6ebee8866400              # double 0.053579297909159607
	.quad	0x3fedcf875efd9606              # double 0.93158310463758265
	.quad	0x3febd06ddc640775              # double 0.86919301075998467
	.quad	0x3fb3cd5874aa4208              # double 0.077352074129756088
	.quad	0x3fde246553ac734e              # double 0.47097142382863388
	.quad	0x3fec8031fffcce52              # double 0.8906488418346703
	.quad	0x3fe34342555a3811              # double 0.60196034117120878
	.quad	0x3fee013aeb42a9b9              # double 0.93765016507432286
	.quad	0x3fd18f9c048d5a00              # double 0.27439022488161413
	.quad	0x3fcf84868bf8d2d8              # double 0.24623185953682625
	.quad	0x3fdc53ca3dbafa24              # double 0.44261413601262434
	.quad	0x3fbaba1eb2ababc8              # double 0.10440246450495672
	.quad	0x3fc798aec73dfe44              # double 0.18434700707074303
	.quad	0x3fdfb3182e468314              # double 0.49530605811200812
	.quad	0x3fea5d5c6756f213              # double 0.82389660056611758
	.quad	0x3fe736a4a24b53d3              # double 0.72542030046553874
	.quad	0x3fe4fc124d8a79b1              # double 0.65577044625006498
	.quad	0x3fe86da0e51b8acc              # double 0.76338238475394737
	.quad	0x3fc17818245b26ec              # double 0.13647748732756015
	.quad	0x3fe6a57a25c748ea              # double 0.70769984606365921
	.quad	0x3fb01b97618c26d0              # double 0.062921010318088166
	.quad	0x3fdd75c5d7843136              # double 0.46031328245659908
	.quad	0x3fead0f89dfe98be              # double 0.83800917490295723
	.quad	0x3fd72f005871b8de              # double 0.36224373471385529
	.quad	0x3fbf3b2070a036f8              # double 0.12199595212606684
	.quad	0x3fdce10085b8bc3e              # double 0.45123303469421561
	.quad	0x3fdc1afe0041cecc              # double 0.43914747262099918
	.quad	0x3fe34dee6520040d              # double 0.60326308966625819
	.quad	0x3fe9f29629ed5904              # double 0.81086261929411351
	.quad	0x3feeb2c30fec076f              # double 0.95932152852786412
	.quad	0x3fecafe3b4940ca4              # double 0.89647088307573996
	.quad	0x3fe2c1c8f359cc4e              # double 0.5861553910202788
	.quad	0x3fbf1163ae81b3e0              # double 0.12135909090439112
	.quad	0x3fe16ba4e3c4244e              # double 0.54439014897901372
	.quad	0x3fe99dbaf4719a0c              # double 0.80050418608590367
	.quad	0x3fe8188252514811              # double 0.75299182965886946
	.quad	0x3fa479288328c910              # double 0.03998686410013097
	.quad	0x3fe4216f1d3ce670              # double 0.62908130369687676
	.quad	0x3fdfbb30c6ec013e              # double 0.4958002035709973
	.quad	0x3fe899ea6180fce3              # double 0.76878851932260905
	.quad	0x3fdf32515803e05c              # double 0.48744615168789607
	.quad	0x3fe3fd876cfb41c9              # double 0.62469836507266863
	.quad	0x3fd0eefe843fcc06              # double 0.26458704867326366
	.quad	0x3fb5a7af54d90e80              # double 0.084589918341459124
	.quad	0x3feca3f551dbdab1              # double 0.89501443851516715
	.quad	0x3fef926a95473632              # double 0.98662308841603008
	.quad	0x3fe0870d79cc84d0              # double 0.51648591793868981
	.quad	0x3fd8e1e45fe38bac              # double 0.38878735889573579
	.quad	0x3fdfcd293b8a0cfa              # double 0.49689703764325055
	.quad	0x3fd6710970c8bc10              # double 0.35064922346185856
	.quad	0x3fe6dc3fb0ba7962              # double 0.71438583867329108
	.quad	0x3fe1ff440925dfe7              # double 0.56241037165363827
	.quad	0x3fdf39341003c496              # double 0.48786641658723207
	.quad	0x3fda13588ffdfd28              # double 0.40743078290684531
	.quad	0x3fe41cb22834766d              # double 0.62850292065168178
	.quad	0x3fbc34323d115240              # double 0.11017145148191165
	.quad	0x3fdb9babc3daa6d8              # double 0.43137640119912879
	.quad	0x3fdb7c621ada8fe0              # double 0.42946674940526286
	.quad	0x3fe661bb1aa6678e              # double 0.69943003850061003
	.quad	0x3fbd3b3da78b1750              # double 0.11418519344723888
	.quad	0x3fe4a401aae130a9              # double 0.64502032637530704
	.quad	0x3fdef98c7aeb55c8              # double 0.48398124698482237
	.quad	0x3fe33a635fe22e1f              # double 0.60087746360062855
	.quad	0x3fc5294a6f3e0070              # double 0.1653225939917351
	.quad	0x3feb67a3158c4483              # double 0.85640100678041653
	.quad	0x3fd72fa79381139c              # double 0.36228360562045636
	.quad	0x3fe056287e6d3055              # double 0.51051735584906999
	.quad	0x3fe81963fa5321de              # double 0.75309943095731646
	.quad	0x3fc4924e679195f8              # double 0.16071491295876661
	.quad	0x3fcb5893846204cc              # double 0.21364063228614893
	.quad	0x3fe3396d404d8e4a              # double 0.60076010283632653
	.quad	0x3fed9c4d7284f80b              # double 0.92532989852020486
	.quad	0x3fc8bc67cb1f8270              # double 0.19324967783088054
	.quad	0x3fcfe4c730458824              # double 0.24916925293934
	.quad	0x3fe1ff97ce902553              # double 0.56245031685208813
	.quad	0x3fdb9f0a3ef62ec8              # double 0.43158203266714823
	.quad	0x3fe3fd0458cd682b              # double 0.62463586181843789
	.quad	0x3fe8fc0c99fea821              # double 0.78076772763347801
	.quad	0x3feec190dc269825              # double 0.96112864492602467
	.quad	0x3fe4008f70954a8a              # double 0.62506839741611597
	.quad	0x3fd8c5d8fa0fb812              # double 0.38707565708216507
	.quad	0x3fe6d698c365b42e              # double 0.71369589007884371
	.quad	0x3fd5e60e00475988              # double 0.34216642405717623
	.quad	0x3fc52de64750f034              # double 0.16546324236139898
	.quad	0x3fe26092fdf1d200              # double 0.57428884123379476
	.quad	0x3f784faf4bfc0b00              # double 0.0059353683025189508
	.quad	0x3fe78e818c759b6b              # double 0.73614575799443338
	.quad	0x3fdc377338f4b312              # double 0.44088440477462243
	.quad	0x3fefe5c516f0df0c              # double 0.99679808121342849
	.quad	0x3fed89ad11f75b56              # double 0.92305615910559413
	.quad	0x3fe7b4fca81158d6              # double 0.74084313226446841
	.quad	0x3fda171afad5b4e2              # double 0.40766024108491028
	.quad	0x3fb15afe44d1e158              # double 0.067794696618766692
	.quad	0x3f8f11ca3cdb7fc0              # double 0.015170650465222368
	.quad	0x3fbe1c796b6c95d8              # double 0.11762198326740447
	.quad	0x3fd490e73efabda2              # double 0.32134419584596163
	.quad	0x3fdf227293ed0236              # double 0.48647751279716844
	.quad	0x3fa6e96565fae9c0              # double 0.044749420832391973
	.quad	0x3fe48aa3d0c11e49              # double 0.64192381641709872
	.quad	0x3fd9fb20597a2caa              # double 0.40595253694545852
	.quad	0x3fdb9d931ceaa958              # double 0.43149259399310358
	.quad	0x3f89b45a54b0e1c0              # double 0.012551027020990868
	.quad	0x3fbdddc53907cc00              # double 0.11666519777627116
	.quad	0x3fdccd4bd20c2ba0              # double 0.45003028404669898
	.quad	0x3fec9a52357540d4              # double 0.89383802834529513
	.quad	0x3fefe7456273cb4a              # double 0.99698132733315359
	.quad	0x3fc224466e3cbf28              # double 0.14173202879600777
	.quad	0x3fe9c02fdf9dde98              # double 0.80471032786495567
	.quad	0x3fefdf9cfd403bff              # double 0.99604653800076892
	.quad	0x3feef5dad65053b7              # double 0.96751157625350614
	.quad	0x3fdc86a1e9707c84              # double 0.44571731373611834
	.quad	0x3fdeb7e851b7367c              # double 0.4799748228077545
	.quad	0x3fe814f2872d79fa              # double 0.75255705263026518
	.quad	0x3fceee9a1f06a9e4              # double 0.24165655627196181
	.quad	0x3fae238c79039f70              # double 0.058864965221629428
	.quad	0x3fdf6811d9dfd212              # double 0.49072691227709797
	.quad	0x3fe637f4b64697b9              # double 0.69433055496914797
	.quad	0x3fcd2888ed9c9298              # double 0.22779952623490796
	.quad	0x3fd21d487a9493ea              # double 0.28303729983082226
	.quad	0x3fec4086a9a7b353              # double 0.88287671218641106
	.quad	0x3fe39dd642a39faf              # double 0.61301720633945489
	.quad	0x3fe0c76750d9269b              # double 0.5243412570063869
	.quad	0x3fdb78af920d9942              # double 0.42924107802391032
	.quad	0x3fec11f4758bccf0              # double 0.8771917625257668
	.quad	0x3fe6459800c23bda              # double 0.69599533222378374
	.quad	0x3fe9bdc17e9cc5e1              # double 0.80441355446799545
	.quad	0x3fdeb2d1a928003e              # double 0.47966424483456993
	.quad	0x3fe4b1ff6dc338bd              # double 0.6467282432365874
	.quad	0x3fdb7e4a40833806              # double 0.42958313274436966
	.quad	0x3fd509681045fe54              # double 0.32869912709427251
	.quad	0x3fce5b0d84ac06c4              # double 0.23715371111034333
	.quad	0x3fd7259c42dd2e98              # double 0.36167055635153522
	.quad	0x3fcb60698e666e50              # double 0.21387977078562637
	.quad	0x3fe029260e7caed8              # double 0.50502302960873191
	.quad	0x3fec6dd549a73d45              # double 0.88840736756711947
	.quad	0x3fd27daafe2ab4b6              # double 0.28892016240099438
	.quad	0x3fdb105e4d24ff9e              # double 0.42287404569287357
	.quad	0x3fe5084944ab8321              # double 0.65726149952033464
	.quad	0x3fe6b95f1e8f7577              # double 0.71012836426568426
	.quad	0x3fe941a3a4fdbfb0              # double 0.78926260208935695
	.quad	0x3fd12a6289d0edc2              # double 0.26821196993452301
	.quad	0x3fe75e4721fae0b8              # double 0.73025852810589864
	.quad	0x3fe9ac597245c805              # double 0.80228874510635306
	.quad	0x3fe7c09fd3f86f7c              # double 0.74226371193388685
	.quad	0x3fd879a1b0d8e4d2              # double 0.38242380399931364
	.quad	0x3feb080905e6a065              # double 0.84473086502567851
	.quad	0x3feb3e3f4068bd11              # double 0.85134852008732953
	.quad	0x3fe6f40e81031acc              # double 0.71729207227402858
	.quad	0x3febcd23769e1ad5              # double 0.86879132430552863
	.quad	0x3fc90562c5f79e80              # double 0.19547686258669117
	.quad	0x3fadbfde830051c0              # double 0.058104470721591195
	.quad	0x3feb28fe7aa486ec              # double 0.84875415757798355
	.quad	0x3fec0e3a4af53696              # double 0.87673678055007787
	.quad	0x3feff80781e48721              # double 0.9990270173040906
	.quad	0x3fe8d81f866e9e5d              # double 0.77638221985121059
	.quad	0x3fea692c3b6f0665              # double 0.82533847435133778
	.quad	0x3fdfb303dbb20f1c              # double 0.49530121283190609
	.quad	0x3fb8562ffa323068              # double 0.095065115530987065
	.quad	0x3fd79ffb12a97a9a              # double 0.36913945028747153
	.quad	0x3fe23c62281054f5              # double 0.56987102341613982
	.quad	0x3fdb4d7a1df8f28c              # double 0.4266038220119206
	.quad	0x3fed26bc7fc83f50              # double 0.91097855527366711
	.quad	0x3fe5ef421348ea3f              # double 0.68545631186072586
	.quad	0x3fe52a89fa79633c              # double 0.66144274636017242
	.quad	0x3fe6489981486ffa              # double 0.69636225939348084
	.quad	0x3f76e06cb76fde80              # double 0.0055851217975867451
	.quad	0x3fe8a9c7e360a302              # double 0.77072519693055619
	.quad	0x3fd7e58982a7cd68              # double 0.37338483580898307
	.quad	0x3fc7f4426caccb64              # double 0.18714170748134074
	.quad	0x3fee3bf06b3b20b3              # double 0.94481678908871058
	.quad	0x3fad6ee4cd9cbd90              # double 0.057486677264360186
	.quad	0x3fd5486877456f2e              # double 0.33254443786221344
	.quad	0x3fc3ca1e22faa160              # double 0.15460564334831428
	.quad	0x3febb1da7c9855c8              # double 0.86546062788937039
	.quad	0x3fb88a44a9517d20              # double 0.095859805428962108
	.quad	0x3fefbdb7d232c54b              # double 0.99190894178733779
	.quad	0x3fe61ed92ca8ddc9              # double 0.69126566622338104
	.quad	0x3fe059d867ad04c8              # double 0.5109674477499988
	.quad	0x3fe89c55872528aa              # double 0.76908375163590859
	.quad	0x3feb625ecade894c              # double 0.85575809119135604
	.quad	0x3f98ad3a9da1b9c0              # double 0.024098316069677272
	.quad	0x3fe84a0d37d8402f              # double 0.7590395060269709
	.quad	0x3fd02d0618d4fb3c              # double 0.25274803566928816
	.quad	0x3fdaa50df8a8e032              # double 0.41632413180514327
	.quad	0x3fc9a6dc8320318c              # double 0.20040470507263952
	.quad	0x3fea6f9ca9bf3c55              # double 0.82612450746263255
	.quad	0x3fd019dd57f9fd9e              # double 0.25157865134675628
	.quad	0x3feeb4bf09ef13d3              # double 0.95956375065054044
	.quad	0x3fc1f7e8b9ad42cc              # double 0.14037808481454872
	.quad	0x3fc8a662e0a197dc              # double 0.19257770508119065
	.quad	0x3fc421d980bdc9a0              # double 0.15728300844382392
	.quad	0x3fda41325c950176              # double 0.41022929230896155
	.quad	0x3fe633dc7f0ed2ad              # double 0.69383072677608981
	.quad	0x3fc1c73842d588cc              # double 0.13889220488915155
	.quad	0x3fcc57509a9d9c28              # double 0.2214146380385682
	.quad	0x3fddefb874243ebc              # double 0.46775637952758209
	.quad	0x3fef280170b37bc0              # double 0.97363349925932851
	.quad	0x3fdb22db67929664              # double 0.42400250544083051
	.quad	0x3fd76e306f125d3a              # double 0.3661004147229111
	.quad	0x3fd4f47d267d6794              # double 0.32742241629386482
	.quad	0x3fee9288465ce78a              # double 0.95538724653964491
	.quad	0x3fe991e9c0b606b9              # double 0.79906165732264534
	.quad	0x3fe1d7b30748aa3a              # double 0.55758048460604148
	.quad	0x3fe49c6f3b1a259b              # double 0.64409600776086806
	.quad	0x3fde5736cc60fcb8              # double 0.47407312353966402
	.quad	0x3fd3d6ddd2c8d2a0              # double 0.30998941025181104
	.quad	0x3fe665d8355ef29b              # double 0.69993219779970006
	.quad	0x3fd8bce19f5222f2              # double 0.38652840193439808
	.quad	0x3fec158d1cd28d1f              # double 0.87763076428783282
	.quad	0x3fe1ed069402955a              # double 0.56018380077572805
	.quad	0x3fdd0df3e0b0f664              # double 0.45397660200601408
	.quad	0x3fcd27c5b8d34a40              # double 0.22777625584292771
	.quad	0x3fbdcf19955651e8              # double 0.11644134422233032
	.quad	0x3fa8dd9e145a48f0              # double 0.048565807327706767
	.quad	0x3fdbbc37e44df334              # double 0.43336293502197809
	.quad	0x3fd63f09fb4f9720              # double 0.34759759466247608
	.quad	0x3fe660feb0267ebd              # double 0.69934019474381837
	.quad	0x3fd82cabf087a918              # double 0.37772654046297438
	.quad	0x3fe4422be8db4cc9              # double 0.63307757835209444
	.quad	0x3fe4a7cc8caa2236              # double 0.64548327897597946
	.quad	0x3fc37e06d6cf5a40              # double 0.15228353012817486
	.quad	0x3fe32cc179e0e66e              # double 0.59921335033795997
	.quad	0x3fd72c0347b8e922              # double 0.36206132892734122
	.quad	0x3fe38c1e62f0ce72              # double 0.61085433315606807
	.quad	0x3fdf8b7035e47734              # double 0.49288563979085898
	.quad	0x3fe182c4701400fe              # double 0.54721280946981188
	.quad	0x3fe7c4ea10f9b9c2              # double 0.74278739276433492
	.quad	0x3fc9812968cd9c94              # double 0.19925420396177584
	.quad	0x3febda7af9397664              # double 0.87041996647503738
	.quad	0x3febaea042471107              # double 0.86506665177196929
	.quad	0x3fe085a1d68c1fde              # double 0.51631252197057242
	.quad	0x3fa688b2548a4f40              # double 0.044011662311417954
	.quad	0x3fccd5ee237a7d5c              # double 0.22527863247249058
	.quad	0x3fe9ec8518ccb2f6              # double 0.81012205928490633
	.quad	0x3fcd154319ff5814              # double 0.22721136826902522
	.quad	0x3fd5339033d5fc9a              # double 0.3312721735200711
	.quad	0x3fd3a0870977272a              # double 0.30667282032355792
	.quad	0x3fdedcab8b777b9e              # double 0.48221863384054042
	.quad	0x3feef82cc45d06f7              # double 0.96779478409027219
	.quad	0x3fe6bf5de06526ee              # double 0.71086019351170449
	.quad	0x3fe3f0e4777712f8              # double 0.62315581639322115
	.quad	0x3fd5d2209f32e618              # double 0.34095016047248938
	.quad	0x3fe42e7d2265afbc              # double 0.63067490308957685
	.quad	0x3fd6c42ff4201a28              # double 0.355724323657713
	.quad	0x3fee835159f7fb19              # double 0.95353000232703089
	.quad	0x3fc96db957943e14              # double 0.19866101051637541
	.quad	0x3fd4dc19f882a3ec              # double 0.32593392628274276
	.quad	0x3fa7dd629def7680              # double 0.046610910205100886
	.quad	0x3fca4367ce76344c              # double 0.20518205243243626
	.quad	0x3fe5327bb4a52769              # double 0.66241250307323896
	.quad	0x3fc1a32fa982ab60              # double 0.13779254700542776
	.quad	0x3fce866c606bc25c              # double 0.23847727497151794
	.quad	0x3fe5abac176e3234              # double 0.67720608307133157
	.quad	0x3fcb9f46d7c30280              # double 0.21579824004404102
	.quad	0x3fe736f7bf822978              # double 0.72545993236535278
	.quad	0x3fb764f7e75b4e28              # double 0.09138440512042989
	.quad	0x3fec2338303c42d8              # double 0.87929925366378381
	.quad	0x3f9d328ee08a3e60              # double 0.028513176398119788
	.quad	0x3fda9adb047f8546              # double 0.41570163192053078
	.quad	0x3fe3483f7116d722              # double 0.60256931388605417
	.quad	0x3f9578c3154fe040              # double 0.020968483138830374
	.quad	0x3fedb83156b82fde              # double 0.92873446404837146
	.quad	0x3feff666789cf761              # double 0.99882815892463494
	.quad	0x3fddb71fa4d973a0              # double 0.46430197809768892
	.quad	0x3fd335d0949438de              # double 0.30015959272067316
	.quad	0x3fe36024baddf272              # double 0.60548626420457041
	.quad	0x3fdf86dd93ce9c8c              # double 0.49260653909954821
	.quad	0x3fef91243400c501              # double 0.98646745831334226
	.quad	0x3fd801a26038eec2              # double 0.37509974858015138
	.quad	0x3fc0954752c9d128              # double 0.12955562155151168
	.quad	0x3fd78ee34342a716              # double 0.36809617584604959
	.quad	0x3fed6d5912de389f              # double 0.91959813771406462
	.quad	0x3fd46f66952ca67a              # double 0.31929935996831882
	.quad	0x3fd3e29643cc5ce6              # double 0.31070477124144558
	.quad	0x3fe5819598f831e8              # double 0.67206840397699086
	.quad	0x3fcc9254c5032420              # double 0.22321567172755952
	.quad	0x3fd10fa4003ac8ba              # double 0.26657962820457792
	.quad	0x3fef2f05368bb699              # double 0.97448979047267691
	.quad	0x3fe00643911ab5f9              # double 0.50076464024249312
	.quad	0x3fec7289432ee3e5              # double 0.88898146745407003
	.quad	0x3fc23ab37706346c              # double 0.1424164134190592
	.quad	0x3fd4d1b6d89b8d96              # double 0.32529994156922137
	.quad	0x3fe0a1baa26a1c71              # double 0.51974231454449982
	.quad	0x3fc31a7b5814f260              # double 0.14924566079016
	.quad	0x3fd6593b75cc54a2              # double 0.3491963053105086
	.quad	0x3fd3a6a87e1fa754              # double 0.30704700772058868
	.quad	0x3fe023de39748f05              # double 0.50437842580547054
	.quad	0x3f9d22cd5c3bf0c0              # double 0.028453072313809669
	.quad	0x3fe00bc44f3469c5              # double 0.50143638105083055
	.quad	0x3fddd1dae21f6128              # double 0.46593353349955402
	.quad	0x3fd44fa65d25e62a              # double 0.31736144157875634
	.quad	0x3fcb7346f9e3fec0              # double 0.2144554824990248
	.quad	0x3fed55dbb661842f              # double 0.91673074361108842
	.quad	0x3fd4af149c90663a              # double 0.32318606652697535
	.quad	0x3fe9a9d25bbc6ecc              # double 0.8019801894874603
	.quad	0x3fe1dfe8d460921b              # double 0.55858270149161926
	.quad	0x3fe3103dfb50f8b4              # double 0.59573268017972802
	.quad	0x3fd0969da899faa2              # double 0.25919286217678394
	.quad	0x3fcf9996d2dc6a74              # double 0.24687466903636202
	.quad	0x3fe0174cde445a7b              # double 0.50284427081608329
	.quad	0x3fe813c8684a9c93              # double 0.75241489762710712
	.quad	0x3fec0eda8ec81530              # double 0.87681320082689318
	.quad	0x3fb48f8e0fc3bc80              # double 0.080315474365976413
	.quad	0x3fc2ff7a3da14764              # double 0.14842155465390328
	.quad	0x3fd98094f365206c              # double 0.39847301262898926
	.quad	0x3fb13417d76a5880              # double 0.067201128093389073
	.quad	0x3fe5bef7a47b56ac              # double 0.6795614445242868
	.quad	0x3fddb940dabe55b8              # double 0.46443196641606788
	.quad	0x3fbf34eb4fa494a8              # double 0.12190123266607833
	.quad	0x3fcc093ed1bd653c              # double 0.21903214684679451
	.quad	0x3fe68fd301b66635              # double 0.70505667051765519
	.quad	0x3fd25df727937488              # double 0.28698519577830739
	.quad	0x3fedc30ab662fef8              # double 0.93005881903078969
	.quad	0x3fcefdfa5a75b8e0              # double 0.24212579171166393
	.quad	0x3feaaab06bbe5471              # double 0.83333607715270663
	.quad	0x3fe7c5844699276f              # double 0.74286092556688554
	.quad	0x3feb7ae9dc03be5f              # double 0.8587540909920327
	.quad	0x3fc316871c45f124              # double 0.14912499313857908
	.quad	0x3fc39f8c6c278d4c              # double 0.1533065345857757
	.quad	0x3fb646a39f793470              # double 0.087015367921780883
	.quad	0x3fd2ef41dec48e6a              # double 0.29585310702007084
	.quad	0x3fe820a611bde023              # double 0.75398543801475559
	.quad	0x3fa33d58217ac7b0              # double 0.037577394568315881
	.quad	0x3fd664d153d5db98              # double 0.34990342318581602
	.quad	0x3fe93d9e4ba0eb05              # double 0.78877177020271516
	.quad	0x3fd1acd8c9dfef72              # double 0.27617473329859543
	.quad	0x3f9fbd1603166020              # double 0.030994743288459969
	.quad	0x3fe2e4e8c0401f62              # double 0.59044301556512502
	.quad	0x3fcf02b2e20b42e8              # double 0.24226985966972525
	.quad	0x3fe0ab54fe72683f              # double 0.52091455170307899
	.quad	0x3f9393cf0905c080              # double 0.019118533063590792
	.quad	0x3fdbb905d027e73e              # double 0.43316788985940835
	.quad	0x3fe31bfce1db44a6              # double 0.59716648209191159
	.quad	0x3fe9ef30311f3537              # double 0.81044778436777321
	.quad	0x3fc530248f8350d8              # double 0.16553170211284995
	.quad	0x3fd39fb7bf4e4ffa              # double 0.30662339861123622
	.quad	0x3feb2b42291d5c1c              # double 0.8490305712720132
	.quad	0x3fe27812503ad02a              # double 0.57715717000838151
	.quad	0x3fe44bd30d382c87              # double 0.63425591070098697
	.quad	0x3fe9803b8fd58bf9              # double 0.79690340130434756
	.quad	0x3fef8e66739420d1              # double 0.9861328370471033
	.quad	0x3fe9e5adf5a25546              # double 0.80928705192005945
	.quad	0x3feba287afdd9336              # double 0.86359009121642916
	.quad	0x3fd8d9738529bae6              # double 0.38827217106056222
	.quad	0x3fe365a69461617c              # double 0.60615853291078237
	.quad	0x3fec03a0cc1f4012              # double 0.87544288508979862
	.quad	0x3fb0ae4e73369e80              # double 0.06515970528436732
	.quad	0x3fd2e631971bef56              # double 0.29529990917921134
	.quad	0x3f8d1c86be792a40              # double 0.014214565933021395
	.quad	0x3fe3be5c9968923e              # double 0.61698751413911856
	.quad	0x3fc4430a7a95ff34              # double 0.15829592691079031
	.quad	0x3fd2967cfe37de9e              # double 0.29043507410049496
	.quad	0x3fcbaafc303a53d8              # double 0.21615555148005572
	.quad	0x3fca2def7831a194              # double 0.20452683800546068
	.quad	0x3fe3187dc359a57f              # double 0.5967396560128434
	.quad	0x3fe8e855af52ee61              # double 0.77836117022475204
	.quad	0x3fe72047f822e9fd              # double 0.72269056762826234
	.quad	0x3fe415f215e9a6e6              # double 0.62767891197037495
	.quad	0x3fea238933cb2f9f              # double 0.81683788410144931
	.quad	0x3fda33ed09f8bde4              # double 0.40941930745881749
	.quad	0x3febd0bcc9c7e8aa              # double 0.86923064623194546
	.quad	0x3fe1cab8f8a34c37              # double 0.55599640428625363
	.quad	0x3fef0f5ac33f5ab7              # double 0.97062433370850598
	.quad	0x3fee6d0a2d22263c              # double 0.95081051650158299
	.quad	0x3fc4608f7813d46c              # double 0.15919679034383039
	.quad	0x3fec161c11313377              # double 0.87769893033838187
	.quad	0x3fd69c52255f5064              # double 0.353291069504172
	.quad	0x3fe0586dfbfb4c9f              # double 0.51079463210261966
	.quad	0x3fc394ba1a863844              # double 0.15297628684169429
	.quad	0x3f91864b6e32e220              # double 0.017113855935095512
	.quad	0x3fe1e2bf6f8fa73f              # double 0.55892917432104372
	.quad	0x3fe97df72221e6da              # double 0.79662663141717904
	.quad	0x3fc88622c62ba620              # double 0.19159350086492655
	.quad	0x3fe06ca975fa7d00              # double 0.51326439898176091
	.quad	0x3febf154367e24e2              # double 0.87320910113444605
	.quad	0x3fd214dce4a39c16              # double 0.28252336814915802
	.quad	0x3feb55ea6fc9f59f              # double 0.85423776468057955
	.quad	0x3fc80d7e13ed2bac              # double 0.18791175816508365
	.quad	0x3fc80aa75e048008              # double 0.18782512751295166
	.quad	0x3fed061047e62472              # double 0.90699018519184293
	.quad	0x3fc497bedc428634              # double 0.16088090662837973
	.quad	0x3fecdc9a556bff34              # double 0.90192906078298173
	.quad	0x3fe20280da0fee99              # double 0.56280558195381325
	.quad	0x3fc05a90ebdc6a58              # double 0.12776385800028112
	.quad	0x3fab554c54349080              # double 0.053385148314448294
	.quad	0x3fafa6730363ddd0              # double 0.061816782153922056
	.quad	0x3fedce3c5d3ab4e6              # double 0.93142526825763805
	.quad	0x3fdc1d67676b3112              # double 0.43929467296108371
	.quad	0x3feee6ade5e763fd              # double 0.96565909293269636
	.quad	0x3fd7d182d2f87db0              # double 0.37216253855327874
	.quad	0x3fd9d45acd8c2534              # double 0.40358610222809266
	.quad	0x3fea58f6dd28fbfb              # double 0.82335990138369597
	.quad	0x3fa21272f4b356a0              # double 0.035297005053206876
	.quad	0x3fe8ada7bae318aa              # double 0.77119814397226105
	.quad	0x3fe1f0d11d0f1864              # double 0.56064658809260637
	.quad	0x3fb4aae0ec14ffb8              # double 0.080732400548184979
	.quad	0x3fd437ca708bf2b0              # double 0.31590519896398472
	.quad	0x3fea2346832e2554              # double 0.81680608388084374
	.quad	0x3fe03df70945ca29              # double 0.50756408511216933
	.quad	0x3fe2998d8aaf1975              # double 0.58124425017085335
	.quad	0x3fec23b9a00539ec              # double 0.87936097387301748
	.quad	0x3febc8701729abe0              # double 0.86821751140575642
	.quad	0x3fe789f578362f15              # double 0.73559068182791754
	.quad	0x3fca36a29adab2b4              # double 0.20479233323330492
	.quad	0x3fc27862e257b290              # double 0.14429889728434775
	.quad	0x3fed46b1986d045c              # double 0.91487960596726791
	.quad	0x3fedd688f899ee5f              # double 0.93243835978450906
	.quad	0x3fe49632e630ecc4              # double 0.64333481749726973
	.quad	0x3feed43f249bdff3              # double 0.96340901518033061
	.quad	0x3fd702598114b9f4              # double 0.35951840978205429
	.quad	0x3feab77ecac6b819              # double 0.83489932636962572
	.quad	0x3fe03a574f348acb              # double 0.50712171048902499
	.quad	0x3fe745c2862df6d5              # double 0.72726560790007488
	.quad	0x3fe89aa216056209              # double 0.7688761167619883
	.quad	0x3fd8c844293661e2              # double 0.38722328209544632
	.quad	0x3fef8a8097578879              # double 0.98565702017755463
	.quad	0x3f852e9301c6e240              # double 0.010342739574171422
	.quad	0x3fe2cdf1f78bd2c2              # double 0.58763979290832702
	.quad	0x3feabf5bfb3defec              # double 0.83585928984348134
	.quad	0x3fc397b81deb2dcc              # double 0.15306760273811759
	.quad	0x3fed7a4d731c4f6f              # double 0.92117950899635825
	.quad	0x3fe521a42aec104a              # double 0.66035660155513054
	.quad	0x3fdcc5fdcf35fe68              # double 0.44958443866196385
	.quad	0x3fe731d9668c0eef              # double 0.7248351099846938
	.quad	0x3fe74c4e47747304              # double 0.72806467014342546
	.quad	0x3fb8a3ca58319c18              # double 0.096249243289648567
	.quad	0x3fe4a991fdbfbc63              # double 0.64569949684472439
	.quad	0x3fd5b79b3054d782              # double 0.33933143348564709
	.quad	0x3fe11466898234ec              # double 0.53374029976990078
	.quad	0x3fecd0c2ad6a523b              # double 0.90048345441989086
	.quad	0x3fe671e0d8534e03              # double 0.70140115977341144
	.quad	0x3fecde4f8888eb2f              # double 0.9021375338264529
	.quad	0x3fb6018101887718              # double 0.085960448145183554
	.quad	0x3fe52118e0e0eb57              # double 0.66029018327331357
	.quad	0x3feed36f600242b6              # double 0.96330994369244283
	.quad	0x3fe277b135951057              # double 0.57711086716927695
	.quad	0x3fe20de8ecc60d1b              # double 0.56419798130847043
	.quad	0x3fdc271b045cedd6              # double 0.43988681245874994
	.quad	0x3fe531be690b2638              # double 0.66232224003142104
	.quad	0x3fc927c42274bec4              # double 0.19652606661246896
	.quad	0x3fdf5b6510e8cf50              # double 0.48995329524335762
	.quad	0x3fdbc47caac8e474              # double 0.43386761358448855
	.quad	0x3fedecb869df3297              # double 0.93514652898882644
	.quad	0x3fb8599d49325070              # double 0.095117407198189729
	.quad	0x3fee74db6cf8729e              # double 0.95176478656101771
	.quad	0x3fcbf0b9dd1326c8              # double 0.21828387541454775
	.quad	0x3fd8797217cc1b0c              # double 0.38241245578721883
	.quad	0x3fc8184fb6c8e354              # double 0.18824192452464195
	.quad	0x3fd9fc3dca84f604              # double 0.40602059151919456
	.quad	0x3fe4de168c2bd37b              # double 0.65211036088167817
	.quad	0x3fe04e43a626e1bd              # double 0.50955374194659664
	.quad	0x3fc263c2a99f2cbc              # double 0.14366944582284258
	.quad	0x3fe7384453d326c2              # double 0.72561851856263382
	.quad	0x3fee2bf5ca344509              # double 0.9428662251758918
	.quad	0x3fd58b1bd70ad248              # double 0.33661552429410735
	.quad	0x3fd86094fb4122b4              # double 0.38089489494863504
	.quad	0x3fb2336b0f7a81c0              # double 0.07109707954305744
	.quad	0x3fe73d422f1090b3              # double 0.72622784797979134
	.quad	0x3fe3fe5858b08654              # double 0.62479798624208138
	.quad	0x3fc0e062ae699ecc              # double 0.13184770122756218
	.quad	0x3fc017a24e27aed4              # double 0.12572125259554545
	.quad	0x3fceed39e2f91804              # double 0.24161456663767933
	.quad	0x3fda196c7c2ccb04              # double 0.40780174375974831
	.quad	0x3fe4d225a3631731              # double 0.65065271293199178
	.quad	0x3f778fd54a9e8a80              # double 0.0057524043749334064
	.quad	0x3fd4f67966f5408c              # double 0.32754359297269597
	.quad	0x3fca595227af3038              # double 0.20585085809432413
	.quad	0x3fde0ed26ab8f8ac              # double 0.46965465948222618
	.quad	0x3fbdfc6712c18000              # double 0.11713260848910068
	.quad	0x3fd544cacf1f7c22              # double 0.33232374407629284
	.quad	0x3fc8f8ef52b41b58              # double 0.19509688890704058
	.quad	0x3fe7a6a4517adf6b              # double 0.73909202493721915
	.quad	0x3fdfe2b3d23e8e78              # double 0.49821181804347914
	.quad	0x3fd2e59c75e7d59e              # double 0.29526435388773986
	.quad	0x3fe09258f66c7187              # double 0.51786468629465865
	.quad	0x3fcff03c8f951870              # double 0.24951893816814019
	.quad	0x3fe876f1e5c0b94d              # double 0.76451964257811655
	.quad	0x3fa9a0158bc8bf20              # double 0.050049470246788852
	.quad	0x3fd88f40440aea62              # double 0.38374334950245814
	.quad	0x3fe0b3395700b242              # double 0.52187792771071195
	.quad	0x3fef8352e30f2bb2              # double 0.98478073451530279
	.quad	0x3fd6cea90e2c3d0c              # double 0.3563635481268228
	.quad	0x3fcfa5ba80b7ebe0              # double 0.24724513325767727
	.quad	0x3fdefce2b2c1e36c              # double 0.484184908454657
	.quad	0x3fdcd218694defb4              # double 0.45032320293079953
	.quad	0x3fa72f7e5f3f1cb0              # double 0.045284222723745216
	.quad	0x3fedef1a335f3f8b              # double 0.93543729814153787
	.quad	0x3feb1750928c46f3              # double 0.8465960371269986
	.quad	0x3fc8ffb170d7a878              # double 0.19530313501246943
	.quad	0x3fdafe48439fbc34              # double 0.42177015880492097
	.quad	0x3fc3fe594e488580              # double 0.15619961092401624
	.quad	0x3fd93b29a43c1564              # double 0.39423600233597811
	.quad	0x3fd65cf2169468e8              # double 0.34942295270015089
	.quad	0x3fefc9fc5f0989d8              # double 0.99340647279705773
	.quad	0x3fe16f2f8330c92b              # double 0.5448224603954136
	.quad	0x3fd23cdc028b0b6e              # double 0.28496456383088897
	.quad	0x3fd51f8165da785a              # double 0.33004794069882382
	.quad	0x3fe6c89abd3545d1              # double 0.71198784784990654
	.quad	0x3fd55e160211840a              # double 0.33386755182260741
	.quad	0x3fce0f07d4b1d660              # double 0.23483369718057912
	.quad	0x3fe441fce46e068d              # double 0.63305515876000273
	.quad	0x3fd699715d09a8b8              # double 0.35311540685382736
	.quad	0x3fdcdd6a1933f624              # double 0.45101406537273392
	.quad	0x3fd9609e1926b464              # double 0.39652206855936911
	.quad	0x3fece8b3feb10176              # double 0.90340614075107228
	.quad	0x3fe7715c2ee3a49f              # double 0.73258790166905274
	.quad	0x3fe516ab86726e33              # double 0.65901733645609395
	.quad	0x3fee8339d3bf643e              # double 0.95351878506620102
	.quad	0x3fe013bd0aa579f6              # double 0.50240947799085123
	.quad	0x3fe5fcacfc2e42d4              # double 0.68709420446438196
	.quad	0x3fe6ea6301e65b4b              # double 0.71611166354237221
	.quad	0x3fe5d5102c02bf1f              # double 0.68225868793340172
	.quad	0x3fe4f2603e3816e0              # double 0.65458690788429053
	.quad	0x3fe265f91c925ed4              # double 0.57494788723394175
	.quad	0x3feb055832bd57e4              # double 0.84440240774233332
	.quad	0x3fea07c0a248193c              # double 0.81344634719497532
	.quad	0x3f98a046f9530920              # double 0.024048909156371256
	.quad	0x3fbafa3b26a9c7c8              # double 0.10538072294164558
	.quad	0x3fec90a11c5b09a3              # double 0.89265494859892092
	.quad	0x3fe0991976565996              # double 0.51868889916186123
	.quad	0x3fc8e0837659e258              # double 0.19435160902846138
	.quad	0x3fee324f9a3cac3d              # double 0.94364147304930379
	.quad	0x3fbc52fea286a7f8              # double 0.11064139812393126
	.quad	0x3fe124a0f8bdc6ab              # double 0.53572128851211198
	.quad	0x3fb03b20100bfb80              # double 0.06340217963950856
	.quad	0x3fe994688e21c95b              # double 0.79936626205589378
	.quad	0x3fde77519474fb76              # double 0.47603263375997729
	.quad	0x3fd2a508a5cc5a5e              # double 0.2913228625415395
	.quad	0x3fd27d6771c621bc              # double 0.28890405760514759
	.quad	0x3fe3c1e14c394f39              # double 0.61741700065110827
	.quad	0x3fdf500fd5b9f66c              # double 0.48926158782692286
	.quad	0x3fdbc4da5b7ad934              # double 0.43388995107251849
	.quad	0x3fdff96d0621d8da              # double 0.49959874724244246
	.quad	0x3fdb5b208df2f578              # double 0.42743696081364346
	.quad	0x3fa5c60187b4ec90              # double 0.042526290717853077
	.quad	0x3febb39377d48921              # double 0.86567090420092907
	.quad	0x3fbb76fa85ecbdc0              # double 0.10728421945235933
	.quad	0x3fe69692886fce16              # double 0.70588041923332656
	.quad	0x3fed5f97db4293cc              # double 0.91791909050209019
	.quad	0x3fe7621c7f261572              # double 0.73072647889845954
	.quad	0x3fc8061fc0b3d90c              # double 0.18768689069083455
	.quad	0x3fd165d1347a21de              # double 0.2718394291373708
	.quad	0x3fc995a699e177fc              # double 0.19987947953899254
	.quad	0x3fca1cc85466c2e8              # double 0.2040033733478801
	.quad	0x3fec64b088c90813              # double 0.88729120937228101
	.quad	0x3fc30399b260c114              # double 0.1485473748193803
	.quad	0x3fe9b58fde1415b9              # double 0.80341332792948272
	.quad	0x3fde6e9db6cd1f34              # double 0.4755014691513566
	.quad	0x3f878650eed4f600              # double 0.011486656464167133
	.quad	0x3fda58d09743b2aa              # double 0.41167082569044544
	.quad	0x3fb9ce6d5cf02200              # double 0.10080607909197425
	.quad	0x3fe35e18345102e8              # double 0.6052361509137798
	.quad	0x3fb7418778470cc0              # double 0.090843645920403837
	.quad	0x3fa8e52d0f2ff950              # double 0.048623474220209517
	.quad	0x3f84cd2369e6c240              # double 0.01015689532218389
	.quad	0x3fe0b080566d9887              # double 0.5215455711411473
	.quad	0x3fe2e9693ddca732              # double 0.59099256594092808
	.quad	0x3fe480de4fc16e3f              # double 0.64073100640548108
	.quad	0x3fd35032df2a2c3a              # double 0.30176994126731282
	.quad	0x3fe7eec79006d521              # double 0.74789789324009714
	.quad	0x3fe4b431241094f5              # double 0.64699608844662626
	.quad	0x3fded0bc11f1e2f8              # double 0.48149015190533317
	.quad	0x3fd8e81f54e97c84              # double 0.38916762630646695
	.quad	0x3fcb3011baca6eb8              # double 0.21240445728914437
	.quad	0x3fedbdf555dac325              # double 0.92943827408280255
	.quad	0x3fafd57b85f66000              # double 0.062175617316086118
	.quad	0x3fe3aa13acc3272d              # double 0.6145113348258967
	.quad	0x3feb2838bbf494f1              # double 0.84865986547506911
	.quad	0x3fb1937e31fade30              # double 0.068656813814293782
	.quad	0x3fe1508c09ffbfaa              # double 0.54108240082677139
	.quad	0x3fc9c2f05eb3a5bc              # double 0.20126156448467991
	.quad	0x3fe6674b2dcaa617              # double 0.70010909026786095
	.quad	0x3fdaa0135d898a44              # double 0.41602024206637034
	.quad	0x3fd62e3c493d18f4              # double 0.34657199051106535
	.quad	0x3fdacea4cb6789de              # double 0.41886253226962633
	.quad	0x3fea0eafe76102e6              # double 0.81429286185456529
	.quad	0x3fea71eceed65875              # double 0.82640692375095048
	.quad	0x3fa9125267a686f0              # double 0.048967909958504197
	.quad	0x3fd2eac711e57280              # double 0.29557968852694927
	.quad	0x3f7a19f79566c680              # double 0.0063724204286913499
	.quad	0x3fecf6aa12cd8c97              # double 0.90511039421507433
	.quad	0x3fc915f44a43ea18              # double 0.19598249078974628
	.quad	0x3fd2bfe8a3125358              # double 0.29296317982634923
	.quad	0x3fe06e09358e6b41              # double 0.51343212566585106
	.quad	0x3fec7efe06bf632d              # double 0.89050198858158114
	.quad	0x3fe6364414b02cf4              # double 0.69412426033650698
	.quad	0x3fddfbec6f2042ec              # double 0.46850119449759009
	.quad	0x3fde7d172fe73144              # double 0.47638492277180355
	.quad	0x3fb8cde7ea94fc30              # double 0.096891875048627396
	.quad	0x3fecec2b64655619              # double 0.90382928474963642
	.quad	0x3fa1a8ed7e0885b0              # double 0.034491941103861889
	.quad	0x3fedf7983ae2ecb0              # double 0.93647395612005901
	.quad	0x3fc0ed6ea58ecd6c              # double 0.1322458561313441
	.quad	0x3fc615d2eeaad798              # double 0.17254101422957713
	.quad	0x3fec5f362533011a              # double 0.88662249818301864
	.quad	0x3fe39f0183ab99e3              # double 0.61315990177973523
	.quad	0x3fd64037b304a1a8              # double 0.34766952974544063
	.quad	0x3fcbde8572adcae4              # double 0.2177283105807738
	.quad	0x3feda2fbb4189b00              # double 0.92614541220686419
	.quad	0x3fe53bc226242013              # double 0.66354472588955316
	.quad	0x3fe43afb6e687ba9              # double 0.63219996990288962
	.quad	0x3fd6c50660028582              # double 0.35577544570886499
	.quad	0x3fd280f54b619284              # double 0.28912098275603904
	.quad	0x3feb0d6413a54ec8              # double 0.84538463437135025
	.quad	0x3fe6cb2e731a0ef0              # double 0.71230242234056895
	.quad	0x3fea0bed2b4d0378              # double 0.81395586449808288
	.quad	0x3f9574a40bf80560              # double 0.020952761869926007
	.quad	0x3fedbe5abb5ff40d              # double 0.9294866237320335
	.quad	0x3fe4bf4f2a857944              # double 0.64835317902524325
	.quad	0x3fbd06d6694c71e0              # double 0.11338558264510068
	.quad	0x3fc9a5bd778a0d44              # double 0.20037048661115808
	.quad	0x3fe459d9d9f8b309              # double 0.63596813747935343
	.quad	0x3fe6e49831c54619              # double 0.71540460320301513
	.quad	0x3fd618b5d867d30a              # double 0.34525819905620436
	.quad	0x3fe19922fd8993c5              # double 0.54994344252610772
	.quad	0x3fef50991f8de5b0              # double 0.97858863985964284
	.quad	0x3fde20cb4b17d604              # double 0.47075159390746557
	.quad	0x3fdbba7fcd621396              # double 0.43325800949997395
	.quad	0x3fe50c91c42b6d4c              # double 0.65778435053236128
	.quad	0x3fe5e3d76b4e9f92              # double 0.68406268080160459
	.quad	0x3fc4bf68a85a9a24              # double 0.16209133358388883
	.quad	0x3fef6fb6bd7b6452              # double 0.98238694198802023
	.quad	0x3fc09a3042d4b454              # double 0.12970546019770046
	.quad	0x3fbe20a3cb828780              # double 0.11768554419043475
	.quad	0x3fe1d6befb1e08cc              # double 0.5574641136775198
	.quad	0x3fe9a2956aa21831              # double 0.80109663798135078
	.quad	0x3fe8b46ebb1f351e              # double 0.77202545687910962
	.quad	0x3fa0211cc1352fe0              # double 0.031502626976901871
	.quad	0x3fcf3ccb9f200c60              # double 0.24404282827171908
	.quad	0x3fd1ed65efa9b726              # double 0.28011463551125571
	.quad	0x3fd5ecdc1c490b60              # double 0.34258177530516853
	.quad	0x3fe1e06eefd1cf19              # double 0.55864664878615422
	.quad	0x3fe99cbbc607a2ab              # double 0.80038250615787854
	.quad	0x3fb27a2d09ee5050              # double 0.072176756786860752
	.quad	0x3faf9bd905d35430              # double 0.061735898934479727
	.quad	0x3fec8a67cb0c0dd0              # double 0.89189519555696428
	.quad	0x3fb5c73ff3a8c978              # double 0.085071560847415628
	.quad	0x3fdaa398bb045a9e              # double 0.41623514426593455
	.quad	0x3fda45769ec072a6              # double 0.41048970702267196
	.quad	0x3fcc18269329cd04              # double 0.21948702035624745
	.quad	0x3fe7e551863bb1f5              # double 0.74674297540110379
	.quad	0x3fec4fae0f8d301e              # double 0.88472655331998218
	.quad	0x3fdeb2952d2ad8f4              # double 0.47964982424618019
	.quad	0x3fec9ce9e45f2aa2              # double 0.89415449718338302
	.quad	0x3fe5d911b0727a77              # double 0.68274769270267555
	.quad	0x3fe955d51b85ec99              # double 0.79172759414304317
	.quad	0x3f9d33fef076cde0              # double 0.028518660952341679
	.quad	0x3fe53ae4b38456e1              # double 0.66343913137344768
	.quad	0x3fdda147a0206e78              # double 0.46296873700496333
	.quad	0x3feacc64ab3e12a9              # double 0.83745034642978056
	.quad	0x3fa7d8d436d67d70              # double 0.046576148695062325
	.quad	0x3fe78c0bb4aa83f5              # double 0.73584542547553033
	.quad	0x3fdf7c1387d274aa              # double 0.49194801582218395
	.quad	0x3fbaa0a83b9ba508              # double 0.10401393370888823
	.quad	0x3fe905238c57adfc              # double 0.78187730227131124
	.quad	0x3fa3c02b9dac3210              # double 0.038575518605373671
	.quad	0x3feecc213efbbf97              # double 0.96241819669193062
	.quad	0x3fdff716a9adc520              # double 0.49945608682817699
	.quad	0x3fd61aa5f014bae6              # double 0.34537647672088523
	.quad	0x3fdb964ee7a2fa04              # double 0.43104908581509016
	.quad	0x3fdcc02a042c5a04              # double 0.44922876746696283
	.quad	0x3fea7159392d378e              # double 0.82633649031935064
	.quad	0x3fe3588953a59faa              # double 0.60455766999529215
	.quad	0x3fe91df2120ebca2              # double 0.78490546728962252
	.quad	0x3fef30e0b91a5e5f              # double 0.97471653130464719
	.quad	0x3fd5ed4baeced2c2              # double 0.34260837622722928
	.quad	0x3fed2bf80d4378ca              # double 0.91161730375804351
	.quad	0x3fe9f370dc49fc75              # double 0.81096690201947175
	.quad	0x3fd92edff99e793a              # double 0.39348601700648411
	.quad	0x3feb655156668804              # double 0.85611788630581076
	.quad	0x3fecd7ea9a2e2cb8              # double 0.90135698426583755
	.quad	0x3fc8dbe5c7095818              # double 0.19421074122027515
	.quad	0x3fe490c80a07f805              # double 0.64267351111607296
	.quad	0x3fe7e4b3b0458b52              # double 0.74666771343286542
	.quad	0x3fe97456a4e2026a              # double 0.79545147136384498
	.quad	0x3fe03104d51dfcec              # double 0.50598374962274084
	.quad	0x3fe2b1849504f9fb              # double 0.58416966538771875
	.quad	0x3fc40c26d068c3ec              # double 0.1566208379386177
	.quad	0x3fe94be7a4887130              # double 0.79051572928759661
	.quad	0x3fd23f3fdb673b36              # double 0.28511043954943049
	.quad	0x3fd3f43ae7b96b98              # double 0.31178162221265771
	.quad	0x3fc83f43a2bd0454              # double 0.1894306702252232
	.quad	0x3fe2404da4e9e883              # double 0.57034952363689262
	.quad	0x3fe0a8b948e7ad19              # double 0.52059616317038426
	.quad	0x3fea392986a9551c              # double 0.81947780896249211
	.quad	0x3fd573ecb3a37706              # double 0.3352004770548408
	.quad	0x3fe56d29beebffb7              # double 0.66957557000568257
	.quad	0x3feeb92f09707a37              # double 0.96010543674112269
	.quad	0x3fde6530ad705f08              # double 0.47492615640065639
	.quad	0x3fcac8d40367a028              # double 0.20925378957986251
	.quad	0x3fdcd4f25c4b446c              # double 0.45049723637664019
	.quad	0x3fe9b68fd5fe23db              # double 0.80353538318115214
	.quad	0x3fe014e8656ba2f4              # double 0.50255222138102207
	.quad	0x3fea23d814f3498b              # double 0.81687549678672278
	.quad	0x3fd370016a8218e6              # double 0.30371127511206308
	.quad	0x3fdcd4f35376154c              # double 0.45049746656907952
	.quad	0x3fe6ac1482a264d9              # double 0.70850587381860486
	.quad	0x3feff1889ceae5d9              # double 0.99823408744776565
	.quad	0x3fd0b511776484b8              # double 0.26105152759016503
	.quad	0x3fb5f98e7889a588              # double 0.085839180400986703
	.quad	0x3fdcf35a6eadabc8              # double 0.45235310371816384
	.quad	0x3fe45c36f31f1e85              # double 0.63625667080573634
	.quad	0x3fc77ab9212bb960              # double 0.18343271369617309
	.quad	0x3fb26333f4a8f5a0              # double 0.071826216918415842
	.quad	0x3fd9655fca69635a              # double 0.39681238905682437
	.quad	0x3fe3155edb3e8b48              # double 0.59635870762972676
	.quad	0x3fe2951788f0b1cf              # double 0.58069969888816242
	.quad	0x3fd1b9404eb79470              # double 0.27693183600633287
	.quad	0x3fe13f6c5600cbba              # double 0.53899208829385903
	.quad	0x3fede2524425602f              # double 0.93387711820378694
	.quad	0x3fe35849245605f9              # double 0.60452706429367631
	.quad	0x3fe8f3f8d8aeb50a              # double 0.77978174515524867
	.quad	0x3fec83f224f83e1e              # double 0.89110667439121349
	.quad	0x3fe7f46c08c4a432              # double 0.74858667099500154
	.quad	0x3fd3898c722b8594              # double 0.30527030133642907
	.quad	0x3fdaf3b4cdf71b30              # double 0.4211246501330832
	.quad	0x3fda96bd397ac6ba              # double 0.41545038808099444
	.quad	0x3fa50efd45421700              # double 0.041129984573712974
	.quad	0x3fe1232fbc34d685              # double 0.53554522284567041
	.quad	0x3fea538bdf17483a              # double 0.82269853184175834
	.quad	0x3fbca07be86cbef8              # double 0.11182379173692059
	.quad	0x3fe6bf2fab1d50e7              # double 0.71083815975955822
	.quad	0x3fdc46d6185a24fe              # double 0.44182350519311331
	.quad	0x3fe3a6575e309647              # double 0.6140553321499248
	.quad	0x3fc1e44efac943d8              # double 0.13977992291850572
	.quad	0x3fd8ad2c00657298              # double 0.3855695728177948
	.quad	0x3fcf6081ef1ad5d0              # double 0.24513267684021267
	.quad	0x3fe318232ae13059              # double 0.59669645667009796
	.quad	0x3fe215ac91436b3b              # double 0.56514576312779441
	.quad	0x3fd01a4217913410              # double 0.2516026716373867
	.quad	0x3feb3a826b7b745b              # double 0.85089226715684718
	.quad	0x3fe657af922a0c89              # double 0.69820383594232382
	.quad	0x3fa0fcf5d720d8d0              # double 0.03317993403509123
	.quad	0x3fee7726d8c9dd69              # double 0.95204489079962429
	.quad	0x3fe0dcb535ab151a              # double 0.52694187624061617
	.quad	0x3fe22f6bfdabc947              # double 0.56828879876255989
	.quad	0x3fc5bd6967151964              # double 0.16984288724251961
	.quad	0x3fe7f0ed2ca70557              # double 0.7481599685781174
	.quad	0x3fe01c38e0e0a80c              # double 0.50344509049796349
	.quad	0x3fdac4970d8f805e              # double 0.41824890445969298
	.quad	0x3fd770ac434565ac              # double 0.36625200814668335
	.quad	0x3fbc673c62bc5a80              # double 0.11095025454083363
	.quad	0x3fed66f0c63083ec              # double 0.9188159819497037
	.quad	0x3fd675befd93a3f4              # double 0.35093664897300347
	.quad	0x3fea61a045be8536              # double 0.82441724416654583
	.quad	0x3fcc130c18a93958              # double 0.21933127597953717
	.quad	0x3fe8872f8feb6ed1              # double 0.76650217160519152
	.quad	0x3f5f5a9efd870e00              # double 0.0019136955871638106
	.quad	0x3fa2dfb740c10da0              # double 0.036863066343836737
	.quad	0x3fd06fec158174ba              # double 0.25683118915715009
	.quad	0x3f7e352781e69500              # double 0.0073749106653953067
	.quad	0x3fcab292f9a06960              # double 0.20857464970397199
	.quad	0x3fe304e7e1fb7f57              # double 0.59434885155858808
	.quad	0x3fcf452f8d2c36ac              # double 0.2442988814658994
	.quad	0x3fea15f9795ccb04              # double 0.81518243507011378
	.quad	0x3fe7688015403a62              # double 0.73150638723911876
	.quad	0x3fe93d119f073c67              # double 0.78870469150741662
	.quad	0x3fd2de96bcfa9208              # double 0.29483574347457919
	.quad	0x3fe97f8ed9f74e44              # double 0.7968210465573482
	.quad	0x3fd4faca0b1f1428              # double 0.32780695997309062
	.quad	0x3fe96f5e72a88f3f              # double 0.79484484094835028
	.quad	0x3fda44387316ede4              # double 0.41041384925094193
	.quad	0x3fd20418d8fd5e40              # double 0.28150006475832257
	.quad	0x3fe88dacc590b67f              # double 0.76729429804773008
	.quad	0x3fdf2d68a8a1fcf2              # double 0.48714653461497825
	.quad	0x3fedb6f8225721f5              # double 0.92858511645414288
	.quad	0x3fe56cd89fd9049b              # double 0.6695368883157643
	.quad	0x3fdb3a438d4cde96              # double 0.42543114470343235
	.quad	0x3fe4afadfdaf4d59              # double 0.64644527004058283
	.quad	0x3fdbe46c715d96a2              # double 0.43581687041146655
	.quad	0x3fb043d51e1894e8              # double 0.063535041663800862
	.quad	0x3fe048f849cd57ad              # double 0.50890745558239348
	.quad	0x3fd3cbd616bc2e96              # double 0.30931617946837642
	.quad	0x3fed2142e076eb38              # double 0.91031020966270315
	.quad	0x3fc79f49812ab720              # double 0.18454855734801701
	.quad	0x3fba9fe2c9f81628              # double 0.10400216513524951
	.quad	0x3fd3666103e52e4a              # double 0.30312371616739553
	.quad	0x3fd8ed8380310092              # double 0.38949668425267092
	.quad	0x3fcbd3de40850da4              # double 0.21740320349100017
	.quad	0x3fe04b65539b872d              # double 0.50920358972164126
	.quad	0x3fd65ea4912608d6              # double 0.34952654051461474
	.quad	0x3fc6a1e281dcd4cc              # double 0.17681533184955922
	.quad	0x3fd4926d2fce5baa              # double 0.32143716496050934
	.quad	0x3fca6aa441fab0b0              # double 0.20637944432872279
	.quad	0x3fcabe7dc55225f8              # double 0.20893833288964436
	.quad	0x3fd99ab68d42d9a2              # double 0.40006793780357885
	.quad	0x3fde5b567dafece2              # double 0.47432482027188716
	.quad	0x3febbcadc19d9717              # double 0.86678207221550252
	.quad	0x3fe832c1415816e9              # double 0.75619566690940332
	.quad	0x3fe3721b62b0acdc              # double 0.60767907405297761
	.quad	0x3fe6088004cd40ea              # double 0.68853760660024688
	.quad	0x3fef5bea8dfea192              # double 0.97997024281817091
	.quad	0x3fddb13686697354              # double 0.46394122244037317
	.quad	0x3fd5796c45da0474              # double 0.33553606816719328
	.quad	0x3feeaaa7026ccd2f              # double 0.95833158944734531
	.quad	0x3fb22aea4eee78e8              # double 0.070967335005181931
	.quad	0x3fc575f3849daa30              # double 0.16766208625206636
	.quad	0x3fe6d560e7903897              # double 0.71354718425006325
	.quad	0x3fbdd011a3da2010              # double 0.11645612955373985
	.quad	0x3fecd9606852bc90              # double 0.90153522849677081
	.quad	0x3fd255559d3af546              # double 0.28645840029260616
	.quad	0x3fe85090da972800              # double 0.75983469670723025
	.quad	0x3fd986ab8a91129e              # double 0.39884460956481316
	.quad	0x3fe4587d3a644475              # double 0.63580190090773547
	.quad	0x3fecfb73ee789367              # double 0.90569492889754322
	.quad	0x3fe65b66cf75a7af              # double 0.6986574222512355
	.quad	0x3fc34e09a476d8c4              # double 0.15081902056198804
	.quad	0x3fdac721c4d46f44              # double 0.41840404721891766
	.quad	0x3feb7a4619432142              # double 0.85867600378063735
	.quad	0x3fd88adc367009ce              # double 0.38347535434891433
	.quad	0x3fee98060ac4a979              # double 0.95605756858030511
	.quad	0x3fe4b18057377c77              # double 0.64666764292259316
	.quad	0x3fd6564a77ca4ea4              # double 0.34901677797572916
	.quad	0x3fae961a9008e4e0              # double 0.059738950807920466
	.quad	0x3fd8cd1d8499b9f2              # double 0.38751924466387699
	.quad	0x3fa5ee928108e1c0              # double 0.042835787059121611
	.quad	0x3fd95c1a415149f8              # double 0.39624649408975143
	.quad	0x3fe26baf14af5b5a              # double 0.57564500846897748
	.quad	0x3fe61f7e3f3bd969              # double 0.69134437895153866
	.quad	0x3fda97d601b01de8              # double 0.41551733174170957
	.quad	0x3fb1232342c136e0              # double 0.066942409322304552
	.quad	0x3fe4af5339c2aada              # double 0.64640198975879604
	.quad	0x3fce9b45056de290              # double 0.23911345257854011
	.quad	0x3feb038ea61a77f9              # double 0.84418423120564434
	.quad	0x3fec3bbc42ada7c8              # double 0.88229191802133133
	.quad	0x3fe1f3ec8e704112              # double 0.56102588481920379
	.quad	0x3fe16df0640adb9e              # double 0.54467029132398515
	.quad	0x3fd531132053990a              # double 0.33112028271570237
	.quad	0x3fc7c8432b1df4f8              # double 0.18579902272532656
	.quad	0x3fe39ba2ccadc0b2              # double 0.61274852730095675
	.quad	0x3f8d159f97b02d40              # double 0.014201399628311351
	.quad	0x3fe5bfb6c54e7b2f              # double 0.67965258156241315
	.quad	0x3fc5a24551127b68              # double 0.16901461084941194
	.quad	0x3fb8fd8fba12b108              # double 0.097619040420514946
	.quad	0x3fbd454509817220              # double 0.11433822137900806
	.quad	0x3fe2636d34c22b78              # double 0.57463703445806313
	.quad	0x3fd1b65ca7abcdda              # double 0.27675548910266701
	.quad	0x3fe46e4d9b87ffe3              # double 0.63846474053570679
	.quad	0x3fc4ef9b1cbf68a4              # double 0.16356219199844191
	.quad	0x3f75d56e81f4c480              # double 0.0053304974274378525
	.quad	0x3fe01d233a66cc09              # double 0.50355683714440247
	.quad	0x3fdfdc5b4392e36e              # double 0.49782449339868762
	.quad	0x3febd79098e4728e              # double 0.87006406652251811
	.quad	0x3fe6088a3609a636              # double 0.68854246668087771
	.quad	0x3fe8f3a90f1bae16              # double 0.77974369955831224
	.quad	0x3fb6716892d2dca0              # double 0.087667976232170819
	.quad	0x3fd3ed4e364102de              # double 0.31135897920834832
	.quad	0x3feec6e20e37b711              # double 0.96177771355516672
	.quad	0x3fe987dd8fb17d83              # double 0.79783514084913099
	.quad	0x3feb5fd832ffddf0              # double 0.85544977150760637
	.quad	0x3fc69b57fd1257c0              # double 0.17661571366323692
	.quad	0x3fc9f710da7c3934              # double 0.20285235088562958
	.quad	0x3fe7d21df3a4827e              # double 0.74439904772232501
	.quad	0x3feb9afc36aa89c7              # double 0.86266909291253391
	.quad	0x3fe8155fd932a9fc              # double 0.7526091806551558
	.quad	0x3fe6abab5513d948              # double 0.70845572106080912
	.quad	0x3fa18d8758eb6820              # double 0.0342829032940275
	.quad	0x3fe8b875c34ec115              # double 0.77251709123632628
	.quad	0x3fd69823a25aa0ec              # double 0.35303583960423057
	.quad	0x3fd5d428bca2f002              # double 0.34107416554957137
	.quad	0x3fe08cae3dd87f69              # double 0.51717292861210951
	.quad	0x3fd21529895abd58              # double 0.28254164136429472
	.quad	0x3fccba96f21a7bb0              # double 0.22444426366288672
	.quad	0x3f9da2867b4eb920              # double 0.028940297390073089
	.quad	0x3fec33ed2ba90f37              # double 0.88133867766780483
	.quad	0x3fe2bf4b3735bfb1              # double 0.58585129531092239
	.quad	0x3fab3750724a48b0              # double 0.053156389190136877
	.quad	0x3fb36ec575eb7370              # double 0.07590898636722243
	.quad	0x3fdad460cb511eac              # double 0.41921253066218855
	.quad	0x3fdd5e326cb7c078              # double 0.4588743268677784
	.quad	0x3fd4a245a6a4f78a              # double 0.32240430139415166
	.quad	0x3fe62806cd75364b              # double 0.69238605621803495
	.quad	0x3fcfcf1520d1fbd0              # double 0.24850715735007478
	.quad	0x3fcf44dffec58704              # double 0.24428939762133706
	.quad	0x3fd51f5e98444034              # double 0.33003964299951183
	.quad	0x3feeabdf3fbaf40a              # double 0.95848047683068782
	.quad	0x3fedbcd17660ec9c              # double 0.92929909821340883
	.quad	0x3fefea5e5e5af0f0              # double 0.99735945156819916
	.quad	0x3fc21f020fd1358c              # double 0.14157129070592267
	.quad	0x3fc86cb658de6b18              # double 0.19081763591096812
	.quad	0x3fde50d57ae0a670              # double 0.47368371009597521
	.quad	0x3feed0a9cfb356ed              # double 0.96297159735214921
	.quad	0x3fd8f688333399a4              # double 0.3900471210494294
	.quad	0x3fcd6cb0f093facc              # double 0.22987949130034335
	.quad	0x3fedcd20fc45af56              # double 0.93129014274516453
	.quad	0x3fc845ea8446462c              # double 0.18963366945949767
	.quad	0x3feb0071bf6a8019              # double 0.84380423913899272
	.quad	0x3fdbd7c82b002b6e              # double 0.43504528235705819
	.quad	0x3fd0285dc6944320              # double 0.25246376411910099
	.quad	0x3fdfb71ab9d59998              # double 0.49555080554855513
	.quad	0x3fdaed9ff9fe9a1e              # double 0.42075347341088498
	.quad	0x3fddd0c3afbbfa02              # double 0.46586696778823022
	.quad	0x3fe44cc6281bebf6              # double 0.63437183221628746
	.quad	0x3fecacb4d870ee1d              # double 0.89608232759150364
	.quad	0x3fed81ae14c5b96e              # double 0.92208007866956421
	.quad	0x3fe531e413e495bd              # double 0.6623402012380023
	.quad	0x3fd3ab7c3c59cd20              # double 0.30734163182860819
	.quad	0x3fe08df6ee8a9fb1              # double 0.51732966032158434
	.quad	0x3fdb17d89e3dcf10              # double 0.42333045438066197
	.quad	0x3fe1a254dde714b6              # double 0.55106585827220189
	.quad	0x3fe5b7920a0bc816              # double 0.67865850412477147
	.quad	0x3fe8a71f14906b76              # double 0.7704005624430994
	.quad	0x3fe7bc540d3e992f              # double 0.74173929774113911
	.quad	0x3fdd6da23c32487e              # double 0.45981651190334805
	.quad	0x3fe065687ff452d9              # double 0.51237893096057541
	.quad	0x3fe0ac08f69bf9b8              # double 0.5210003677928432
	.quad	0x3fd75a821f06f622              # double 0.36489918737410865
	.quad	0x3fe78fad548d62f3              # double 0.73628870500678401
	.quad	0x3fe7751897afd45a              # double 0.73304395319304239
	.quad	0x3fd9916a7ecde9aa              # double 0.39950048812138539
	.quad	0x3fed6b1546570d1d              # double 0.91932166803636373
	.quad	0x3fe80c38cf786522              # double 0.75149193307439455
	.quad	0x3fd967ee6cd6ccdc              # double 0.39696846607985292
	.quad	0x3fe8ffcf253a37f6              # double 0.78122670432071462
	.quad	0x3fe9c44059461bf1              # double 0.80520646511365446
	.quad	0x3fe9399845f1901c              # double 0.78828061734066379
	.quad	0x3fe83e3a3a80e84d              # double 0.7575961249015194
	.quad	0x3fe3ed918a26e7d1              # double 0.62275006277854505
	.quad	0x3fba55467c26d530              # double 0.10286369830176478
	.quad	0x3fe0a5b7d621bf32              # double 0.52022926161405381
	.quad	0x3fdc567916935c6a              # double 0.4427778931107641
	.quad	0x3fd6df97b3b18be2              # double 0.3573970084018453
	.quad	0x3fcbff0c54b67c0c              # double 0.21872095238083522
	.quad	0x3fe32b27cbf4f1c3              # double 0.59901799998584015
	.quad	0x3fc135a30e1500ec              # double 0.13444936931228513
	.quad	0x3fe924e21170021f              # double 0.78575232892768898
	.quad	0x3fd0f8c9acc5d594              # double 0.2651848017915992
	.quad	0x3fea2e9b8635dd90              # double 0.81818939412089442
	.quad	0x3fd60de54ed242f4              # double 0.34459812829395209
	.quad	0x3fb07b0f12571bc0              # double 0.064377729394535343
	.quad	0x3febf538e0ab57af              # double 0.87368434792255367
	.quad	0x3fd99cf259e9e07c              # double 0.4002042654096909
	.quad	0x3fead105ba711470              # double 0.83801542677305285
	.quad	0x3fea773326f953e5              # double 0.8270507584771819
	.quad	0x3fefb6ba7d57144b              # double 0.9910557220506545
	.quad	0x3fee97fce99561a8              # double 0.9560532152345802
	.quad	0x3fb375d1f73d8030              # double 0.076016543256174129
	.quad	0x3fe28b5fbd17f582              # double 0.57951342518178728
	.quad	0x3fee20327b139025              # double 0.94143032110560354
	.quad	0x3fd5dd0b5ca0e22a              # double 0.34161647840258758
	.quad	0x3fe9464f9dfdfa57              # double 0.78983288629371884
	.quad	0x3feaad424b54eeeb              # double 0.8336497756312985
	.quad	0x3fdb037bc9333356              # double 0.42208761833608344
	.quad	0x3fd20f1b19814fc0              # double 0.28217198839888269
	.quad	0x3fed98115439af2d              # double 0.92481295061359037
	.quad	0x3fe993dbbe364436              # double 0.79929911757256522
	.quad	0x3fef3109ee41056d              # double 0.97473618062956079
	.quad	0x3fefb427826903f5              # double 0.99074149580712733
	.quad	0x3fc24a248cb5483c              # double 0.14288765783800439
	.quad	0x3fed2ca6b06785f5              # double 0.91170057729703891
	.quad	0x3fd94311bfa5c700              # double 0.39471858707030094
	.quad	0x3fee56f4c9ed236c              # double 0.94811477125868526
	.quad	0x3fe29fd5c6566cfd              # double 0.5820111154347668
	.quad	0x3fe0a3e3a0e44c5e              # double 0.52000600265672481
	.quad	0x3fd5994afdfa09be              # double 0.33748125841534804
	.quad	0x3fe922e8314bb766              # double 0.78551110866622476
	.quad	0x3fb74a247ca4f8b0              # double 0.090975075178877373
	.quad	0x3fec4b42d1ee2bc5              # double 0.88418713571569951
	.quad	0x3fed487b7da4c2a3              # double 0.9150979474998916
	.quad	0x3fd7aefa8ea7de9c              # double 0.37005485469078692
	.quad	0x3fe361b0294efe01              # double 0.60567482059553879
	.quad	0x3fd9fdcaa711a9f2              # double 0.40611521067935918
	.quad	0x3fd9e6f0dedf16a4              # double 0.40472051396168696
	.quad	0x3fee6fb781083051              # double 0.95113730622825632
	.quad	0x3fe9188f6b8ab58e              # double 0.78424807552589626
	.quad	0x3fdd79de3cc69a66              # double 0.46056323943267896
	.quad	0x3fd6307abde8b4d8              # double 0.34670895143319802
	.quad	0x3fefdc4bc8aa2d9c              # double 0.99564160530410417
	.quad	0x3fe45c089568f31a              # double 0.63623456174500181
	.quad	0x3fe7eb283221bf5d              # double 0.74745569030163106
	.quad	0x3f92af6a977d9040              # double 0.01824728536247755
	.quad	0x3fd5ca27fbb7265c              # double 0.34046363431534643
	.quad	0x3fdb4a3f63e7e27a              # double 0.42640671497750982
	.quad	0x3fed2b6cd81461aa              # double 0.9115509243302331
	.quad	0x3fe38d06817df2bc              # double 0.6109650162830671
	.quad	0x3fbcdcee38584248              # double 0.1127461326179936
	.quad	0x3fca63ca3f426848              # double 0.20617034996831962
	.quad	0x3feab5c826663e1d              # double 0.83469016551856934
	.quad	0x3fe9721e588c547a              # double 0.79518048567355426
	.quad	0x3fed7fc7aff8ecc9              # double 0.92184814805605086
	.quad	0x3fe83d402fe91675              # double 0.75747689588088341
	.quad	0x3fe8a1d8d34c0a5f              # double 0.76975671071006591
	.quad	0x3fd364e5e433d27a              # double 0.30303332600968924
	.quad	0x3fbda08329d97588              # double 0.11573047420229987
	.quad	0x3fdb3c69ea9be19e              # double 0.42556236182238105
	.quad	0x3fdd2ccd512e11d2              # double 0.45585949828844463
	.quad	0x3fd006b8730b25d0              # double 0.25041018709870588
	.quad	0x3fa40192c864cde0              # double 0.039074503862504661
	.quad	0x3fe497867affb5d7              # double 0.64349674246994482
	.quad	0x3fdc18aefcbd2578              # double 0.43900656396416293
	.quad	0x3fddf1b3d006e0d8              # double 0.46787734332202779
	.quad	0x3fb334f2685caf10              # double 0.075026655653968044
	.quad	0x3fddc905048002ac              # double 0.46539426269013506
	.quad	0x3fea5e46ada09ba7              # double 0.82400831138226216
	.quad	0x3fedc422b1707341              # double 0.93019232421975329
	.quad	0x3fe166bf71208208              # double 0.54379245848764501
	.quad	0x3fe65500d3eaafbc              # double 0.69787637128819524
	.quad	0x3fce8c3baec1b280              # double 0.23865457566298076
	.quad	0x3feba7704fa99ca5              # double 0.86418929633227448
	.quad	0x3fc8de03babc2ce4              # double 0.19427534692690707
	.quad	0x3fee7526af5bde13              # double 0.95180067300583671
	.quad	0x3fcb3ee528ac4c3c              # double 0.21285690771091648
	.quad	0x3fe64f6fc1dca4ed              # double 0.6971968447079725
	.quad	0x3f635b9949f20400              # double 0.0023630136416277203
	.quad	0x3f99aab6ce2eaba0              # double 0.025065285047883301
	.quad	0x3fc131f314bfe30c              # double 0.13433683884775183
	.quad	0x3fbefe9295080728              # double 0.12107196939907949
	.quad	0x3fee1c78862b5df4              # double 0.94097543911897085
	.quad	0x3fe29f4785b80d30              # double 0.58194328419668828
	.quad	0x3fd894f37bf22af0              # double 0.38409125427339941
	.quad	0x3fdd12fb65e789e2              # double 0.45428357078176707
	.quad	0x3fe8c11a58d6c6fb              # double 0.77357213355409671
	.quad	0x3fc8b4a4fd3cec2c              # double 0.19301283230910948
	.quad	0x3fe3177e162ed5f3              # double 0.59661773998840173
	.quad	0x3fd6dbbed1eec92e              # double 0.35716219426389528
	.quad	0x3fe581811879c0ac              # double 0.67205862789525872
	.quad	0x3fd3fc2bc467e994              # double 0.31226629429115715
	.quad	0x3fd0c245c2e415aa              # double 0.26185745270080452
	.quad	0x3fc19241c612ad6c              # double 0.13727590724497973
	.quad	0x3fec21ad4f18fefb              # double 0.87911096047170589
	.quad	0x3fd8802989f95b18              # double 0.38282240366008713
	.quad	0x3f84d7a5ca7aae40              # double 0.010176940194774109
	.quad	0x3fbf3afb472ee100              # double 0.12199373710507544
	.quad	0x3fb52d96b29d8910              # double 0.08272687779166099
	.quad	0x3fd35fe50bca913a              # double 0.30272794867984809
	.quad	0x3feb9c3a910812c5              # double 0.86282089544746354
	.quad	0x3fec7eea023f1d6c              # double 0.89049244345453137
	.quad	0x3feb18b9b0eef542              # double 0.8467682319384624
	.quad	0x3fea0f377648312e              # double 0.8143575010485955
	.quad	0x3feeac301380686f              # double 0.95851901825814234
	.quad	0x3fe5b998b798b649              # double 0.6789058290357356
	.quad	0x3fe9b6554c4c992d              # double 0.8035074701518049
	.quad	0x3fdae9447ac68044              # double 0.42048751821312558
	.quad	0x3fe779592b6d2587              # double 0.73356302720746747
	.quad	0x3fd87ba88f09a2b8              # double 0.38254751175422141
	.quad	0x3fd67a518ca978fe              # double 0.35121573196910549
	.quad	0x3fe630e1a9c555f2              # double 0.69346697958343229
	.quad	0x3fb23d9f83b1e478              # double 0.071252793933938352
	.quad	0x3fd5d44f93826fca              # double 0.34108342557169335
	.quad	0x3fe20436b83f1674              # double 0.56301437364227391
	.quad	0x3fe5899873a0093b              # double 0.6730463274291546
	.quad	0x3fe2073d302303fb              # double 0.5633836689158892
	.quad	0x3fe827f63269f634              # double 0.75487813803164849
	.quad	0x3fe94a2b062097df              # double 0.79030371853582071
	.quad	0x3fea68afc080ca02              # double 0.82527911756761818
	.quad	0x3fe0cc28d41f7366              # double 0.52492181234593427
	.quad	0x3fe2b6688e93fdc3              # double 0.58476665351184243
	.quad	0x3fc25957b28bb8b8              # double 0.14335151880317709
	.quad	0x3fde42f418983468              # double 0.47283651735126009
	.quad	0x3fdf915fba07757a              # double 0.49324792067439882
	.quad	0x3fe865eeadb88fe3              # double 0.76244291238662887
	.quad	0x3fc99805fcd10f70              # double 0.19995188564837063
	.quad	0x3fa7501aa590cb20              # double 0.045533020697254623
	.quad	0x3fe6c88b8243f1e6              # double 0.71198058550322396
	.quad	0x3fda8034100ad082              # double 0.41407491270661734
	.quad	0x3fdcf0daa16b2c46              # double 0.45220056308307155
	.quad	0x3fa345bc1bca64a0              # double 0.037641409294516537
	.quad	0x3fbe8969be7bea50              # double 0.1192842569397865
	.quad	0x3fe8897a2e2ef994              # double 0.76678189296926513
	.quad	0x3fe6e6ad92fdb86f              # double 0.71565893849562012
	.quad	0x3fe581b579435b3d              # double 0.67208360370828013
	.quad	0x3fecdc99d271ac69              # double 0.90192881681776982
	.quad	0x3fa6abec81dc99c0              # double 0.044280424930821294
	.quad	0x3fee9d3ce23f1640              # double 0.95669407070881362
	.quad	0x3fd15b0e1f687428              # double 0.27118256632985771
	.quad	0x3fe44f35586d882e              # double 0.63466899176660774
	.quad	0x3feef2eb1ad8f7bb              # double 0.96715312236459938
	.quad	0x3fdfc1241c2aeda4              # double 0.49616339445830193
	.quad	0x3fa50c6c75afa790              # double 0.041110410085663962
	.quad	0x3fa5db8bdc7e0cc0              # double 0.042690630593847256
	.quad	0x3fdfebf160624d3c              # double 0.49877581036090013
	.quad	0x3fd65c8594c4e138              # double 0.34939708259800595
	.quad	0x3fa9b025715c3420              # double 0.05017201432028906
	.quad	0x3f9caba0994b1d40              # double 0.027998456341064015
	.quad	0x3fe6758463751ccf              # double 0.70184535432135842
	.quad	0x3fa04fa7e975d240              # double 0.0318577263341564
	.quad	0x3fef084d90551101              # double 0.9697635478010228
	.quad	0x3faf6c5f4a10f210              # double 0.061373689452441593
	.quad	0x3fe3a90a8c3901f5              # double 0.61438491236918813
	.quad	0x3fef43ee206959c0              # double 0.97704225855232351
	.quad	0x3fbf4d1d986b35b8              # double 0.1222704407802756
	.quad	0x3fccca90932af1cc              # double 0.22493178544927017
	.quad	0x3fbf30ceed777688              # double 0.12183850572133725
	.quad	0x3fee40f4550a682b              # double 0.94542900666715946
	.quad	0x3fdf0061edcde19c              # double 0.48439834807461479
	.quad	0x3fdf950837234530              # double 0.49347119698093689
	.quad	0x3fef423bbc39a906              # double 0.97683512461415556
	.quad	0x3fe20458c45f0207              # double 0.56303060868964472
	.quad	0x3fde46d6279d1e16              # double 0.47307351940659836
	.quad	0x3fd0ce26c1a9d704              # double 0.26258248245663673
	.quad	0x3f9efcd5ff459f60              # double 0.03026136751705566
	.quad	0x3fd09e63339e85d8              # double 0.25966720620098505
	.quad	0x3fe3809827c69731              # double 0.60944755333614442
	.quad	0x3fdf19039c5388f6              # double 0.48590173975220752
	.quad	0x3fd99d96d4ac3f4e              # double 0.40024348038513302
	.quad	0x3fcc57f1e38a2348              # double 0.22143386469204018
	.quad	0x3fd7b2e504f8e55a              # double 0.37029386029788258
	.quad	0x3fd09a0f1afd44a8              # double 0.25940301547695777
	.quad	0x3fdd2fa3b866e95e              # double 0.45603268630988747
	.quad	0x3fd401b160dc613e              # double 0.31260332545345537
	.quad	0x3fd13dbb2cc268f0              # double 0.26939277049099442
	.quad	0x3fe19368f58f5072              # double 0.54924438439276302
	.quad	0x3fee22a9b267e884              # double 0.94173130841160501
	.quad	0x3fd68cb64c0b5864              # double 0.35233838487818603
	.quad	0x3fe644f2fe55c336              # double 0.69591664957815769
	.quad	0x3facf815a3150a20              # double 0.056580234677785279
	.quad	0x3fe37a8e8169a550              # double 0.60871053005136311
	.quad	0x3f8248d77d007b40              # double 0.0089279971144243797
	.quad	0x3fdd6183d582a5a0              # double 0.45907684183711162
	.quad	0x3fd615d03faba948              # double 0.34508138864352533
	.quad	0x3fcc2e60ab610250              # double 0.22016533249008541
	.quad	0x3fee806066ee6042              # double 0.95317096809140645
	.quad	0x3fddaef7c294d2c0              # double 0.46380418779453336
	.quad	0x3feeaccc9d0bbbe8              # double 0.95859366105093801
	.quad	0x3fe0667df42ee167              # double 0.51251123134629217
	.quad	0x3fc4298ddf5c9690              # double 0.15751813322383557
	.quad	0x3fd4b5e07f56d472              # double 0.32360088763682093
	.quad	0x3fe5fa4b0d356e3e              # double 0.6868033655150112
	.quad	0x3fe42465c248f015              # double 0.62944305368682996
	.quad	0x3fe563a7559f0a88              # double 0.66841475222493418
	.quad	0x3fe5d178f7aedad8              # double 0.68182037711707277
	.quad	0x3feb80440ebc7e65              # double 0.85940745237526228
	.quad	0x3fea519541ec9579              # double 0.82245886684238123
	.quad	0x3fe2a83f4ed6140b              # double 0.58303800008491302
	.quad	0x3fe2487bd9e7063a              # double 0.57134811934537955
	.quad	0x3febb55eaded5ea0              # double 0.86588987322007326
	.quad	0x3fe9fcec1363f3a4              # double 0.81212428843683825
	.quad	0x3fd35060f36c97d0              # double 0.30178092739003848
	.quad	0x3fb6e5fdb57617e0              # double 0.089446884920192371
	.quad	0x3fd04a10f0b6afba              # double 0.2545206404417929
	.quad	0x3fb8357a03a98e28              # double 0.094565988439676674
	.quad	0x3fec19167d04e532              # double 0.87806248109624208
	.quad	0x3fe9351a38e8a093              # double 0.7877322303293276
	.quad	0x3feb0fe622aef1cf              # double 0.84569079183671103
	.quad	0x3fe37c4a057f322b              # double 0.60892201493840525
	.quad	0x3febf61819879847              # double 0.87379078851950787
	.quad	0x3fa03c0bac859610              # double 0.031708111581604581
	.quad	0x3fe163584e5a7ffe              # double 0.54337706855221746
	.quad	0x3fcc1b7cd3d767dc              # double 0.21958885520763161
	.quad	0x3fd691e981d735c8              # double 0.35265577010872251
	.quad	0x3feb006fc26dc714              # double 0.84380329107645701
	.quad	0x3fdec558f434123c              # double 0.48079513404835317
	.quad	0x3fe195ed3c89df6d              # double 0.54955159973085943
	.quad	0x3fde1ecf8cc4ca28              # double 0.47063053843445113
	.quad	0x3fde5f9f011478a4              # double 0.47458624940362371
	.quad	0x3fef42537eb80ad3              # double 0.9768464541415035
	.quad	0x3fcdba6c3b246e4c              # double 0.23225167167480476
	.quad	0x3fd5ae09ea904c30              # double 0.33874748140914601
	.quad	0x3fe19635c5dd5eeb              # double 0.54958618779616353
	.quad	0x3fd275872e796342              # double 0.28842334307187312
	.quad	0x3fc3f164dc0bb284              # double 0.1558042597238406
	.quad	0x3fde1fcfb7827694              # double 0.47069161339627752
	.quad	0x3fdcc41bec33f664              # double 0.44946954790780169
	.quad	0x3fc53610da377c44              # double 0.16571245818247082
	.quad	0x3fef6ab3ae2689a1              # double 0.98177513135697236
	.quad	0x3fe653e8e8c94686              # double 0.69774289575634962
	.quad	0x3fe32770d3a8de88              # double 0.59856454219603084
	.quad	0x3fe8b65005910d6a              # double 0.7722549542162771
	.quad	0x3fd6b38b9e560dd2              # double 0.35470858061327448
	.quad	0x3fb0c1b61e7917d0              # double 0.065455801429464389
	.quad	0x3fe2f42e028cb677              # double 0.59230709550838767
	.quad	0x3fe1bdaec02a598a              # double 0.55440461666403107
	.quad	0x3fd6163fc6a3c092              # double 0.34510797880558031
	.quad	0x3fecc9d44fda5386              # double 0.89963737102753849
	.quad	0x3fea2725b5c57490              # double 0.81727872373780208
	.quad	0x3fd7901fc0f7ad3a              # double 0.36817163319092894
	.quad	0x3fe552073c773ac4              # double 0.66626321611132555
	.quad	0x3fed501b7f6baff2              # double 0.91602873694273357
	.quad	0x3fe6175b89410815              # double 0.69035126502444888
	.quad	0x3fc6c67cb8976468              # double 0.17793234837771199
	.quad	0x3fd250cd0270aa52              # double 0.28618169058123499
	.quad	0x3fd2c944f2c2e318              # double 0.29353450495868705
	.quad	0x3fe34d9bea20a850              # double 0.60322375991860078
	.quad	0x3fdcb69d58de33f2              # double 0.44864591291917499
	.quad	0x3febe473213399c1              # double 0.87163692936592707
	.quad	0x3fd390bf25ae064e              # double 0.30570963554064157
	.quad	0x3fb7fae1da8c06b0              # double 0.093671909195132796
	.quad	0x3fca07f6719d07b0              # double 0.20336800143746592
	.quad	0x3fd84c77ced235e0              # double 0.37966723630310462
	.quad	0x3fe4f686acb4e7fb              # double 0.65509351474543054
	.quad	0x3fddf1967339d9a8              # double 0.46787034275566919
	.quad	0x3fe8e1d686863a45              # double 0.77756811403543991
	.quad	0x3fb9c62a90815cd8              # double 0.10068002727472292
	.quad	0x3fe7c954c4852de6              # double 0.74332655318124519
	.quad	0x3fd24e1747dee032              # double 0.28601629274953944
	.quad	0x3f656eb1e1cc5400              # double 0.0026162599809915754
	.quad	0x3fd5c43e869c5312              # double 0.34010279794283449
	.quad	0x3fc74be26c1ca52c              # double 0.18200331000233783
	.quad	0x3fe6d3fc8254d368              # double 0.71337724166242555
	.quad	0x3fc21af8cb40de9c              # double 0.14144811558229697
	.quad	0x3fd00f6b8f99abaa              # double 0.25094117186989229
	.quad	0x3fbeaf49a5fa2ca8              # double 0.11986217786959463
	.quad	0x3fd4081ba2fd3a0a              # double 0.31299487034712625
	.quad	0x3fee00b77c3ab3e7              # double 0.93758749259506835
	.quad	0x3fc9945ff03ebc80              # double 0.19984053831783299
	.quad	0x3fedfc7aace40915              # double 0.93707021491744291
	.quad	0x3fd85076e1011712              # double 0.3799111554438791
	.quad	0x3fdbc3ad1916b982              # double 0.43381812524867069
	.quad	0x3fe871a492ece356              # double 0.76387242027622437
	.quad	0x3fdd059b0738e124              # double 0.45346713738719502
	.quad	0x3fbe999099419358              # double 0.11953071347813926
	.quad	0x3fe1b5b4b2c44062              # double 0.55343089022973069
	.quad	0x3fe53bafea00016c              # double 0.66353603079919088
	.quad	0x3fe6266764fda98d              # double 0.69218797421244604
	.quad	0x3fe198f5af521489              # double 0.54992183916387305
	.quad	0x3fe6cdab48d6bf4e              # double 0.71260608888949561
	.quad	0x3fda9c5237baacaa              # double 0.41579108660034569
	.quad	0x3fe0967eac265c50              # double 0.51837094901100933
	.quad	0x3fcb6c71c98abc98              # double 0.21424696293749856
	.quad	0x3fbdae3259264a38              # double 0.11593928028586553
	.quad	0x3fc78f65331252e8              # double 0.18406357759217618
	.quad	0x3fcdfe48e30985a8              # double 0.23432265363503046
	.quad	0x3fe996d3267377bf              # double 0.79966123113603504
	.quad	0x3fe632d34aa28354              # double 0.69370426728355961
	.quad	0x3fda5648e23e2bd6              # double 0.41151640028027481
	.quad	0x3fe1072b1ada5947              # double 0.53212504620277279
	.quad	0x3fef111ca632bb8f              # double 0.97083885632115307
	.quad	0x3fd9bd1f8496d146              # double 0.40216815899045277
	.quad	0x3feb6de9157eb487              # double 0.85716680715781102
	.quad	0x3fe0518abaabb722              # double 0.50995384654172349
	.quad	0x3fef3a9fee6a54a0              # double 0.9759063393163565
	.quad	0x3fd29511c4599204              # double 0.29034847426217447
	.quad	0x3fdc1d4773c03450              # double 0.43928705505169763
	.quad	0x3fc01b6302294f2c              # double 0.12583577733550422
	.quad	0x3fefba0babdb030e              # double 0.99146064343958229
	.quad	0x3fe727c7fcd1ba0e              # double 0.72360610369452316
	.quad	0x3fd8af83708548a6              # double 0.38571248997062424
	.quad	0x3fd50702c4fc3ba6              # double 0.32855290638775114
	.quad	0x3f9ef318a5f109e0              # double 0.030224213722485405
	.quad	0x3feb144e8ff07f0a              # double 0.84622886765643668
	.quad	0x3fd9a36c50a8d62c              # double 0.40059955479532294
	.quad	0x3fe21fe8dc42d3fd              # double 0.56639521617637423
	.quad	0x3fd911107dcd9750              # double 0.39166652951677339
	.quad	0x3fdffad36f9b1af8              # double 0.49968419932376618
	.quad	0x3fe15cadf1e19dd3              # double 0.5425634121174262
	.quad	0x3fdca8fa76b03048              # double 0.44781362143180958
	.quad	0x3fd1fd18ef13fb1c              # double 0.28107283923593385
	.quad	0x3f8463f05eecb200              # double 0.0099562434166609037
	.quad	0x3fc32a6de7527b64              # double 0.14973233981160228
	.quad	0x3fc7d14d2845dfac              # double 0.18607487169697146
	.quad	0x3fdf72bf17a5d364              # double 0.49137856778479816
	.quad	0x3fd5d2d738371740              # double 0.34099369516149025
	.quad	0x3fe39f6764bf4622              # double 0.61320848157101104
	.quad	0x3fed7c05221eb674              # double 0.92138916648919044
	.quad	0x3fdb1b2c27d0709c              # double 0.42353347671611075
	.quad	0x3fe002c5541bcb11              # double 0.5003382342095809
	.quad	0x3fe12f82fcf30b77              # double 0.53704976467302756
	.quad	0x3fe783867fd8e324              # double 0.73480534525069574
	.quad	0x3fd9d472ba587c8e              # double 0.40359180639092862
	.quad	0x3fe91e615cd41d31              # double 0.78495853548603212
	.quad	0x3fe02cca12493496              # double 0.50546744891620921
	.quad	0x3fd3e13933c3101a              # double 0.31062154822234478
	.quad	0x3fc5d2e4e4b2ad10              # double 0.17049847762005088
	.quad	0x3fb86bee66e63678              # double 0.095396900293246989
	.quad	0x3fedb8532b342524              # double 0.92875059545727767
	.quad	0x3fef65aa7ea576a1              # double 0.98116039977658797
	.quad	0x3fdf750f2d3b8dd8              # double 0.49151973168610885
	.quad	0x3fe18ddc4b14a76a              # double 0.54856695808596823
	.quad	0x3fe626647d511673              # double 0.69218658901145458
	.quad	0x3fecb66d5513806c              # double 0.89726893059197498
	.quad	0x3fedf239dcc69c73              # double 0.93581860657003657
	.quad	0x3fe925941a87784c              # double 0.78583722287636126
	.quad	0x3fe03d6f255a4468              # double 0.50749928756171148
	.quad	0x3fe1918cca9fd472              # double 0.5490173299318839
	.quad	0x3fdd8996021d0376              # double 0.46152258116131095
	.quad	0x3fe5de589f3cb70a              # double 0.68339186764726034
	.quad	0x3fdc44a27c9ec892              # double 0.44168913049646463
	.quad	0x3fed476f166c13e4              # double 0.91496996287662257
	.quad	0x3f9df1c08fba3fc0              # double 0.029242523930008479
	.quad	0x3fec43d14bcde391              # double 0.88327851109998978
	.quad	0x3fe70d22670c907b              # double 0.72035331846974715
	.quad	0x3fd57ea2497a2524              # double 0.33585412192822361
	.quad	0x3fd3562941616566              # double 0.30213385948953542
	.quad	0x3fc318f4a5c257e0              # double 0.14919908612927113
	.quad	0x3fac73f4cf80ea80              # double 0.055572176294352182
	.quad	0x3fe10f7430b3b9a8              # double 0.53313645851249181
	.quad	0x3fdaaa810aeef57e              # double 0.41665674274175746
	.quad	0x3fb4c1883d01d908              # double 0.081078066725101761
	.quad	0x3fe2b6b4d6527001              # double 0.58480302676935036
	.quad	0x3fd6b5654987f962              # double 0.35482151203895829
	.quad	0x3feb0d430c3ff6d0              # double 0.84536888496924156
	.quad	0x3fd0feeb4767559c              # double 0.26555902455342006
	.quad	0x3f8bf9e407639f00              # double 0.013660222506998831
	.quad	0x3feecc8354f3392d              # double 0.96246496764959987
	.quad	0x3fe7cd4ce65fc5ed              # double 0.74381108279174912
	.quad	0x3fef7660f07a1d88              # double 0.98320052116552947
	.quad	0x3fe413eb62a93619              # double 0.62743157644007674
	.quad	0x3fcd89ad979ee280              # double 0.23076410201408137
	.quad	0x3fe61431e53f0c89              # double 0.68996519827523273
	.quad	0x3fc710c1c9a845e8              # double 0.18019888254688898
	.quad	0x3fc8b6b179c86518              # double 0.19307535597253245
	.quad	0x3fec7ea969e86692              # double 0.89046164212341439
	.quad	0x3fe0af21e561a342              # double 0.52137846756986783
	.quad	0x3fe52b39fb270aa7              # double 0.66152667096351514
	.quad	0x3faae7fa7f5f4660              # double 0.052551105545387555
	.quad	0x3fc3909ff22b9ff4              # double 0.15285109829642318
	.quad	0x3fb0a1b52fc17948              # double 0.064967464598770452
	.quad	0x3fe61f1a92d4beea              # double 0.69129685094773419
	.quad	0x3febea4c41419a27              # double 0.87235081429827666
	.quad	0x3fe431e73696ec19              # double 0.63109169637698692
	.quad	0x3fa0d5eb4cdebb30              # double 0.032882073529768241
	.quad	0x3fd580809eddc5d4              # double 0.33596816553389641
	.quad	0x3fd8046adef3824c              # double 0.37526962063387681
	.quad	0x3feb6c89e103637d              # double 0.8569993395604879
	.quad	0x3fc66163d21a0c20              # double 0.17484710463404074
	.quad	0x3f9256eeea5286e0              # double 0.017909749080564974
	.quad	0x3fab28c6dccffdf0              # double 0.053045477347037351
	.quad	0x3fd48494b7095594              # double 0.32059209704069613
	.quad	0x3fc1f64c06b60ed0              # double 0.1403288872498849
	.quad	0x3fdb31a40b21e246              # double 0.42490483367103982
	.quad	0x3fefbd04afb83411              # double 0.99182352371428994
	.quad	0x3fe51648952dbf99              # double 0.65897015701738149
	.quad	0x3fe437efeeb38ce1              # double 0.6318282758842565
	.quad	0x3fd04781534e1784              # double 0.25436432967432432
	.quad	0x3fda2e4a1fef20de              # double 0.40907528990329733
	.quad	0x3fe727c608c1380c              # double 0.72360517225183818
	.quad	0x3faac7eb0f6738c0              # double 0.052306504850649471
	.quad	0x3fcf63d564b8e4a4              # double 0.24523417871549669
	.quad	0x3fef3e2a8b139eed              # double 0.97633864558608041
	.quad	0x3fe73f1d61a417d6              # double 0.72645443983560187
	.quad	0x3fc1d423b64f8af0              # double 0.13928648378267594
	.quad	0x3fe05a3f5248e459              # double 0.51101652213322801
	.quad	0x3fde7181438a8fca              # double 0.47567779155565104
	.quad	0x3fea8407f11b0c6d              # double 0.8286170682043924
	.quad	0x3fc6f2c7e75756dc              # double 0.17928408428149722
	.quad	0x3fd9d03006e6b570              # double 0.40333176301904583
	.quad	0x3fe10b6feeadf8a7              # double 0.53264614693741386
	.quad	0x3fdaedffbc7d12e8              # double 0.42077630431258095
	.quad	0x3fc3e5c15d6959cc              # double 0.15544907628163995
	.quad	0x3fc2fee207fee058              # double 0.14840340986643485
	.quad	0x3fef77b6af089fce              # double 0.98336347757594367
	.quad	0x3fbc3bb81e0f2620              # double 0.11028624280802335
	.quad	0x3fd127e910e9a864              # double 0.26806093837388389
	.quad	0x3fccea2323acb91c              # double 0.22589530221871079
	.quad	0x3feb5750eb192412              # double 0.85440870206469044
	.quad	0x3f92d3b5d7b9c860              # double 0.018385735790112157
	.quad	0x3fe7ed3d7bc03da9              # double 0.7477099816332401
	.quad	0x3fe9e206a08178ce              # double 0.8088410506132051
	.quad	0x3fe4b32e69a80eec              # double 0.646872717247303
	.quad	0x3fa0e9ded543dea0              # double 0.033034289868678401
	.quad	0x3fec7c8fcedda127              # double 0.89020529178109065
	.quad	0x3fbe2a1d18289290              # double 0.11783010330015942
	.quad	0x3fe6a48e20893e48              # double 0.70758730272968595
	.quad	0x3fc4d6200b645608              # double 0.16278458172080001
	.quad	0x3fe0dbc24925626f              # double 0.52682604109129538
	.quad	0x3fd834b60c38e980              # double 0.37821723168931243
	.quad	0x3fe0dcaaf7616be6              # double 0.52693699184908094
	.quad	0x3feca0fccfea8eb8              # double 0.89465180023804347
	.quad	0x3fea349bec8d1287              # double 0.81892200662021331
	.quad	0x3fdfa99321c5aac2              # double 0.49472502039013133
	.quad	0x3fef6f1dc7db4778              # double 0.98231400522693856
	.quad	0x3fd4121a877b0ce4              # double 0.31360495787175879
	.quad	0x3fe8b276ac13f45f              # double 0.77178510292982228
	.quad	0x3fe59d8cef7c7ed3              # double 0.67548224234266241
	.quad	0x3fd4f3b41b4a877a              # double 0.32737448372983347
	.quad	0x3fe24dd0735a91a4              # double 0.57199881105457395
	.quad	0x3fd42442a5e8b09e              # double 0.31471315576596648
	.quad	0x3fe1461d7983aada              # double 0.53980897649065729
	.quad	0x3fb68fd0aa144b00              # double 0.08813194420171655
	.quad	0x3fe4ec6d04776032              # double 0.65386057731939773
	.quad	0x3fdc57419121b6e8              # double 0.44282569096581748
	.quad	0x3feba4e69c6af73a              # double 0.86387949514730811
	.quad	0x3fe1f460882ba203              # double 0.56108118625439862
	.quad	0x3fe1b7e308d2244c              # double 0.55369712565255602
	.quad	0x3fea2c803dbf3ed6              # double 0.81793224391909791
	.quad	0x3fe7bd9584578a5a              # double 0.74189258430517246
	.quad	0x3fc2480bd624f760              # double 0.14282367664594187
	.quad	0x3fe0bb47e7d6c724              # double 0.52286143570947674
	.quad	0x3fed4d81b35aa4fd              # double 0.91571126012891535
	.quad	0x3fdbf9b094fa8e62              # double 0.437114854323431
	.quad	0x3fe9ab7bf7499fd1              # double 0.80218313501699801
	.quad	0x3f941b631eba68a0              # double 0.019635723829744323
	.quad	0x3fda05d5d8315580              # double 0.40660616028375074
	.quad	0x3fe78bdc513ad327              # double 0.73582282891456863
	.quad	0x3fd68f7d13913b74              # double 0.35250784788961842
	.quad	0x3fd0182388e2903e              # double 0.25147331588437172
	.quad	0x3fbf269f0fa9cbf8              # double 0.12168306476978319
	.quad	0x3fb5c66e960e32e0              # double 0.085059081682810511
	.quad	0x3feb4100a2988ba6              # double 0.85168487317092878
	.quad	0x3fe41acdc059c9ec              # double 0.62827193802359949
	.quad	0x3fcbeff78b8af0f4              # double 0.21826071084604559
	.quad	0x3fe587a9db890276              # double 0.67281048658340015
	.quad	0x3fda62da70d1fca0              # double 0.41228352563480009
	.quad	0x3feb67555e82ce27              # double 0.85636394938632499
	.quad	0x3fede25c25348ddd              # double 0.933881828943807
	.quad	0x3fdea1a8fa83b168              # double 0.47861694778727903
	.quad	0x3fe71f9a46dde234              # double 0.72260774460943944
	.quad	0x3fe9215bf16cdc4d              # double 0.7853221621834422
	.quad	0x3fea1cbbfd21dacd              # double 0.81600760879413203
	.quad	0x3fafc8957d2061d0              # double 0.06207720901892666
	.quad	0x3fe1f1363cdbbed9              # double 0.56069480787661086
	.quad	0x3fe0014782e77b14              # double 0.50015616957884612
	.quad	0x3fdf755244fc7d9c              # double 0.49153572785322708
	.quad	0x3fececb087714f92              # double 0.90389276937138363
	.quad	0x3fe416cc910236fc              # double 0.62778309175493474
	.quad	0x3fd00f29328d39e6              # double 0.25092534958539969
	.quad	0x3fe479f90a1e1ae7              # double 0.63988925911038741
	.quad	0x3fcec8a68c8d9220              # double 0.24049836981716144
	.quad	0x3fe558512eac5dbe              # double 0.66703089824562034
	.quad	0x3fe002454b5b8bd4              # double 0.50027718275338851
	.quad	0x3fe9eee93a8b6530              # double 0.81041394648051401
	.quad	0x3fce9be1a5018d98              # double 0.23913212353646141
	.quad	0x3fbe0ee6926ece68              # double 0.11741486620922503
	.quad	0x3f4ea92631208c00              # double 9.3569149817473995E-4
	.quad	0x3fe725950f794703              # double 0.72333767912115865
	.quad	0x3fed8d41d05da72f              # double 0.92349329658938994
	.quad	0x3fe2cc049e5a212b              # double 0.58740454605234527
	.quad	0x3fe92c9221f832e0              # double 0.78669077524827102
	.quad	0x3fe345f25301e836              # double 0.60228840076820833
	.quad	0x3fd59b2c9293fde8              # double 0.33759607614771747
	.quad	0x3fefc0cdfeecabfd              # double 0.99228572645131374
	.quad	0x3fb0e9cb4f0e9018              # double 0.066067416001317603
	.quad	0x3fd0c18560b7aa9a              # double 0.26181158490241219
	.quad	0x3fe67179274774b9              # double 0.70135171577171385
	.quad	0x3f9c4e58d209e080              # double 0.02764261991475836
	.quad	0x3fc2347f66532ffc              # double 0.14222710129104132
	.quad	0x3f9b5c7a110812a0              # double 0.026719958581468917
	.quad	0x3fb95a748f083848              # double 0.099036488456676897
	.quad	0x3fe46f53ed85f309              # double 0.63858982459314106
	.quad	0x3fee2f0662db7d32              # double 0.94324034984666683
	.quad	0x3fe89e8cf46d4c8d              # double 0.76935432185781993
	.quad	0x3fe070a2adbcfd24              # double 0.51374944623231444
	.quad	0x3fd6774e3d1cb728              # double 0.35103183715806319
	.quad	0x3f8b4433fde338c0              # double 0.013313680825742913
	.quad	0x3fcf106755935e84              # double 0.24268809965609617
	.quad	0x3fe1c8aaf6902c53              # double 0.55574558407659891
	.quad	0x3fd6dd503e4069be              # double 0.35725790099391108
	.quad	0x3fd79bd9a1e17c10              # double 0.36888733681365782
	.quad	0x3fe1020dbf49cddd              # double 0.53150069581027604
	.quad	0x3fd6ca71d37fe450              # double 0.35610623983626954
	.quad	0x3f96bea28e4161e0              # double 0.022211589748936222
	.quad	0x3fe3750fcb3f45e8              # double 0.60803975769721053
	.quad	0x3fc7577fc7d748c8              # double 0.18235776193484399
	.quad	0x3feb51bfad6fc0e8              # double 0.85372909426044163
	.quad	0x3fe36bc69c5b3630              # double 0.60690622843111974
	.quad	0x3fe90140d73768c0              # double 0.78140298876248693
	.quad	0x3fdfcafcaaae3c76              # double 0.49676434200313879
	.quad	0x3f83f8a01b14a380              # double 0.0097515590919827754
	.quad	0x3fde8c122a25e120              # double 0.4772992526627764
	.quad	0x3feb5d5053d341b7              # double 0.85514084217179842
	.quad	0x3fe7ec99dea15a88              # double 0.74763196451643044
	.quad	0x3fda419656428eb8              # double 0.41025312827899141
	.quad	0x3fd41ee9a9ecfe9c              # double 0.31438676447212699
	.quad	0x3fb3198146879750              # double 0.074607925147202936
	.quad	0x3fe47c46e5f54adc              # double 0.64017052568155064
	.quad	0x3fb3a9411b385188              # double 0.07680136599112164
	.quad	0x3fef07d9dc43ea2c              # double 0.96970837612690763
	.quad	0x3fd4464da308e7d8              # double 0.31679097100606901
	.quad	0x3fe31fe686cc9936              # double 0.59764410331698659
	.quad	0x3fe6724bd02e8fd3              # double 0.70145216618083805
	.quad	0x3fc82c27cece3c50              # double 0.18884751890115803
	.quad	0x3fb6f8087cd3a258              # double 0.089722185588138159
	.quad	0x3fe5463f5bd0efec              # double 0.66482513363689355
	.quad	0x3fe6c211beac63e0              # double 0.71119010201357113
	.quad	0x3fe37a7a64f22aa3              # double 0.60870094028480926
	.quad	0x3fe153d179df46c1              # double 0.541481721908177
	.quad	0x3fee5b411ec425a2              # double 0.94863945015929496
	.quad	0x3fa17cf0f20a1180              # double 0.034156350656334489
	.quad	0x3fd6227ac63e7742              # double 0.34585446700826961
	.quad	0x3fcd88eb01a01224              # double 0.23074090556487292
	.quad	0x3fe45054ab311bec              # double 0.63480599819092509
	.quad	0x3fe76b5ec4ddd91e              # double 0.73185671282297782
	.quad	0x3fe689b9981cb3de              # double 0.70431213101766921
	.quad	0x3fd7420f866b3bb8              # double 0.36340702177852391
	.quad	0x3fe492e0b5e4d4f1              # double 0.64292941595218001
	.quad	0x3feb9073ffae8bd8              # double 0.86138343751769764
	.quad	0x3fe27d4678b229ee              # double 0.5777923924773043
	.quad	0x3fe853faa5cc73b7              # double 0.76025135405108457
	.quad	0x3fe13b0643a24182              # double 0.53845513543824119
	.quad	0x3fd588633dd289c8              # double 0.33644944226594165
	.quad	0x3fe59ee6569a8b84              # double 0.6756469432333323
	.quad	0x3fe0c75e4edc883f              # double 0.52433696177127576
	.quad	0x3fea5a62f62a72c2              # double 0.82353351668606245
	.quad	0x3fefb89f233613a1              # double 0.99128682019419411
	.quad	0x3fe8d38e48172c5b              # double 0.77582468109302327
	.quad	0x3fe9c3490d9f28fc              # double 0.80508854542247787
	.quad	0x3fe4c1254fee90c3              # double 0.64857736217211259
	.quad	0x3fe86427c642aef4              # double 0.76222599718809513
	.quad	0x3fa6a47eb096d9b0              # double 0.044223746353441284
	.quad	0x3fceb4be8a871508              # double 0.2398908783344853
	.quad	0x3fdc7fc2c4490208              # double 0.44529790085292165
	.quad	0x3fbc6d0cb43a6900              # double 0.11103896522618939
	.quad	0x3fd6f0701f6bc132              # double 0.35842516964386839
	.quad	0x3fe3a752773fc01a              # double 0.6141750649530906
	.quad	0x3fd84f4d89b2da04              # double 0.37984026381619196
	.quad	0x3fd4e9c1bebae4fa              # double 0.32676738382322379
	.quad	0x3fd0f5396440516c              # double 0.26496729650650397
	.quad	0x3fe6b2cabc74a6f9              # double 0.70932518775700182
	.quad	0x3fbb235090273c48              # double 0.10600760955206667
	.quad	0x3fee148acba013a5              # double 0.94000758905950887
	.quad	0x3fc616ff09223640              # double 0.17257678934076814
	.quad	0x3feeaf593a67b3aa              # double 0.95890485198252873
	.quad	0x3fe7f9d7001d6eb5              # double 0.74924802801566293
	.quad	0x3fe540ed1e1574f0              # double 0.66417556644196729
	.quad	0x3fe2a646f74f4974              # double 0.58279751112631439
	.quad	0x3fe0c1083e3f7fdc              # double 0.52356350095578419
	.quad	0x3fda6ea75c40ade0              # double 0.41300376900718838
	.quad	0x3fe580a84e706828              # double 0.67195525474676732
	.quad	0x3fd6e76814b9383e              # double 0.35787393592625338
	.quad	0x3fd4ec3362398300              # double 0.32691654770137291
	.quad	0x3fee60edcb487804              # double 0.94933213905073943
	.quad	0x3fe9ed3899143fe5              # double 0.81020765207540235
	.quad	0x3fc686cfb143cce0              # double 0.17598911433706288
	.quad	0x3fcf0b07a2cf285c              # double 0.24252410363834798
	.quad	0x3fd6f042ec1a0d36              # double 0.3584143930131235
	.quad	0x3fd48810a1bf55d8              # double 0.320804746586274
	.quad	0x3fe7cd56f8301927              # double 0.74381588434406332
	.quad	0x3fe9daea1aa84bcf              # double 0.8079729576733089
	.quad	0x3fef76859431b236              # double 0.98321799225011008
	.quad	0x3fef9c2dd2ce3ea9              # double 0.98781481907822865
	.quad	0x3fd4ed9f423e6ef4              # double 0.3270033022797485
	.quad	0x3fed707511e8973f              # double 0.91997769830479814
	.quad	0x3fe1c5c0f08528b4              # double 0.55538985230057003
	.quad	0x3fecd1a0d2fa7249              # double 0.90058938223553142
	.quad	0x3fd81537159f0e36              # double 0.37629487143951523
	.quad	0x3fe2ebfadaf923b2              # double 0.59130614059642128
	.quad	0x3fc67939d6f6b82c              # double 0.17557452198292489
	.quad	0x3fe1b10236eb5f01              # double 0.55285750128220468
	.quad	0x3fc57e96f0a44388              # double 0.16792570829468567
	.quad	0x3fe3a4efed11fdbb              # double 0.61388393690861365
	.quad	0x3fe15b25c2b1cf69              # double 0.54237640405925192
	.quad	0x3fab5440aa4c2db0              # double 0.053377171314504479
	.quad	0x3fdd43d719cfc574              # double 0.45726563950218879
	.quad	0x3fd251a55d5347d4              # double 0.28623327363777418
	.quad	0x3fd437722fc84a98              # double 0.31588415781258439
	.quad	0x3fe5b00bcd4a2375              # double 0.67774000259042444
	.quad	0x3feb28b2b2dbf516              # double 0.8487180226653972
	.quad	0x3fd9f6be4651a548              # double 0.40568501345713459
	.quad	0x3fed1ab46443c162              # double 0.90950984557097692
	.quad	0x3fee33b88a48f1a0              # double 0.94381358155037631
	.quad	0x3fd0e0a8a49c3e2c              # double 0.26371208262659951
	.quad	0x3fb9d8fed006cc68              # double 0.10096733645222999
	.quad	0x3fe010f58b6bc20c              # double 0.50207020979547812
	.quad	0x3fd876d756a5f49e              # double 0.38225348912949098
	.quad	0x3fec1f2ad1fffe72              # double 0.87880459800358168
	.quad	0x3fe2b338c85bef1b              # double 0.58437766201629715
	.quad	0x3fed48cf085e40d9              # double 0.91513778337869234
	.quad	0x3fe423cd0887fa6b              # double 0.62937022844546442
	.quad	0x3fdda1e3c6e694ea              # double 0.46300596641442715
	.quad	0x3fd8b6cd7263ec10              # double 0.38615738078050388
	.quad	0x3fb9296ed51d4dd0              # double 0.098288466482066683
	.quad	0x3fd5893e9ca61b9c              # double 0.33650174424877277
	.quad	0x3fb1663fbf0e93d8              # double 0.06796644606090696
	.quad	0x3fe238b73eb2cacf              # double 0.56942331548483505
	.quad	0x3feb1cd1bbb377eb              # double 0.84726797733651205
	.quad	0x3fefe1c968d1139e              # double 0.99631185981762704
	.quad	0x3fc5bf629d6655dc              # double 0.16990311322722007
	.quad	0x3fe540a69311af7f              # double 0.66414192890577783
	.quad	0x3fced74fefde8e88              # double 0.24094580852862557
	.quad	0x3fe68f5c0166995d              # double 0.70499992631520636
	.quad	0x3fd06bcdef03796c              # double 0.2565798601262006
	.quad	0x3fd779bcc08fb5d4              # double 0.36680525593587032
	.quad	0x3fe303afe3a47e49              # double 0.59420008145748071
	.quad	0x3fd25e9fef2c9ab2              # double 0.2870254359899419
	.quad	0x3fefc93f7cd23cf9              # double 0.99331640605114934
	.quad	0x3fe33aa4b2243a13              # double 0.60090861123336692
	.quad	0x3fe5e0d1ba0eb230              # double 0.68369375552499001
	.quad	0x3fe958337acbaed2              # double 0.79201673491976465
	.quad	0x3fe0ef250ea06eb6              # double 0.52919247490668542
	.quad	0x3fdab1f6eeb9edae              # double 0.41711209595788545
	.quad	0x3fedc2d895351522              # double 0.93003491537152549
	.quad	0x3fd38184578b5e98              # double 0.30478008794077871
	.quad	0x3feed368a55ebe86              # double 0.96330673502775777
	.quad	0x3fdc34910285ffd8              # double 0.44070840116910182
	.quad	0x3fd8a9f5a10f80e4              # double 0.38537350395746572
	.quad	0x3fd3ed0db60b6ce2              # double 0.31134360101505199
	.quad	0x3fce3f5ee0d43884              # double 0.23630891778924845
	.quad	0x3fe519c320042255              # double 0.65939480069307399
	.quad	0x3fd72a6e213a4d86              # double 0.36196473355195058
	.quad	0x3fd3e172ceffaf42              # double 0.31063528265689311
	.quad	0x3fe6653f97a86537              # double 0.69985942478812191
	.quad	0x3fef0a48e4bbdee0              # double 0.97000546145042321
	.quad	0x3fe17f8f5c222e5f              # double 0.54682128901317728
	.quad	0x3fefad0a4737a11c              # double 0.98987306508664429
	.quad	0x3feace02da05360e              # double 0.83764784414387505
	.quad	0x3fe5cbef5241a549              # double 0.68114439073284772
	.quad	0x3fe067a609a73846              # double 0.51265241513625237
	.quad	0x3fd9c2c169749904              # double 0.40251193331131696
	.quad	0x3f9d9db27ca31f80              # double 0.02892187963223547
	.quad	0x3fd2c8f23ef5bc8e              # double 0.29351478718212654
	.quad	0x3fd849d27318cdaa              # double 0.37950574150019156
	.quad	0x3fe4a7098ea28fa5              # double 0.64539029940032278
	.quad	0x3fdff7e1e2d7c12e              # double 0.49950453903786041
	.quad	0x3fc2a974362a99ac              # double 0.14579632420391186
	.quad	0x3fe8d6bf7358fc0d              # double 0.77621433762385694
	.quad	0x3fec2ed845c706fe              # double 0.88071836117180147
	.quad	0x3feaf3580f96baad              # double 0.8422050766437984
	.quad	0x3fdc1de6f6cda57a              # double 0.43932508565793393
	.quad	0x3fc073a510fd60a8              # double 0.12852919892862258
	.quad	0x3fe8cfafcdb461e2              # double 0.77535238434489551
	.quad	0x3fe5a533c8ce654d              # double 0.67641629428832462
	.quad	0x3fbe043e796cde28              # double 0.11725225891574864
	.quad	0x3fe30e64e3f95b2f              # double 0.59550709272557423
	.quad	0x3feb1060b07425be              # double 0.84574923003781755
	.quad	0x3f916ef7b046cc60              # double 0.01702487004667963
	.quad	0x3fabe719db710470              # double 0.054497535741128256
	.quad	0x3fe1260c0febfe6a              # double 0.5358944235776566
	.quad	0x3fe27082c7dd8048              # double 0.57623423610858371
	.quad	0x3fd73d5b08e0c894              # double 0.36311984889028648
	.quad	0x3fd0bd1b30431492              # double 0.26154212678040623
	.quad	0x3fcc6e023593a7e8              # double 0.22210719696096182
	.quad	0x3fee3c6c2576abec              # double 0.94487578694440577
	.quad	0x3fefa8874b0ec5fb              # double 0.98932232532223396
	.quad	0x3fecde3dc3e27d00              # double 0.90212906130537363
	.quad	0x3fe502449d90622f              # double 0.65652685903757468
	.quad	0x3fbccbc2e001d028              # double 0.11248414963648712
	.quad	0x3fe06afbe6d67ff0              # double 0.51305956922078444
	.quad	0x3fd2e497406c2be4              # double 0.29520207682861455
	.quad	0x3fcce29683dedea0              # double 0.22566491545670875
	.quad	0x3fc6e2a4805782d0              # double 0.17879158274356266
	.quad	0x3fe60d4b030dbe10              # double 0.68912268253729003
	.quad	0x3fc3aa6d06160bd8              # double 0.15363848492788068
	.quad	0x3fefbf17b20c76b8              # double 0.99207672858366091
	.quad	0x3fd93684a6ed4882              # double 0.39395252515272017
	.quad	0x3fe64684c14f962d              # double 0.69610822444946552
	.quad	0x3fca6f13cefb7c84              # double 0.20651481253205273
	.quad	0x3fe390769966007d              # double 0.61138467751153736
	.quad	0x3fdad7333fc48712              # double 0.41938477732956969
	.quad	0x3fefde5b0b79ee88              # double 0.99589302293266346
	.quad	0x3febdcbf849f0395              # double 0.87069679167335556
	.quad	0x3fcabc5c675d48b0              # double 0.20887332007493375
	.quad	0x3fdc4f6f2b542f82              # double 0.44234828215916633
	.quad	0x3fae28dc4906d3b0              # double 0.058905490793598303
	.quad	0x3fcb1b56a4d7f650              # double 0.21177180336956036
	.quad	0x3fe58d82a2491833              # double 0.67352420517341327
	.quad	0x3fe36353c502d522              # double 0.60587490538333477
	.quad	0x3fdad0ff18223f26              # double 0.41900613171400136
	.quad	0x3fdb6f870e555640              # double 0.42868210220089864
	.quad	0x3fcf24d7abc8173c              # double 0.24331184280179652
	.quad	0x3fd61a3738d2c61c              # double 0.34535008000520562
	.quad	0x3fedc690700b4b72              # double 0.93048879512421778
	.quad	0x3fea53958360295e              # double 0.82270312938025447
	.quad	0x3fd803551d1f9306              # double 0.37520339817119497
	.quad	0x3fd780ba37939ca0              # double 0.36723189761546315
	.quad	0x3fd08d61e7be49d0              # double 0.2586292994612025
	.quad	0x3fef8739c564b932              # double 0.98525703957947131
	.quad	0x3fe435bdad0ac6ba              # double 0.63156017110141893
	.quad	0x3fd35bced81746d4              # double 0.30247851469640108
	.quad	0x3fd61ac7c8153c18              # double 0.34538454570150767
	.quad	0x3fda0e09464e47a4              # double 0.40710670343207256
	.quad	0x3fd152c84114cd1e              # double 0.27067762713996213
	.quad	0x3fe298ebf57e4f6c              # double 0.58116720149926726
	.quad	0x3f8adfae177b4380              # double 0.01312194832954261
	.quad	0x3fe4782b6e01a057              # double 0.63966914640060224
	.quad	0x3fe4056610e6b8bb              # double 0.62565902043367971
	.quad	0x3fd83e713ad29cda              # double 0.37881117576985235
	.quad	0x3fce21dea0d6cf58              # double 0.23540861943694824
	.quad	0x3fe7342321e982dd              # double 0.72511440871684452
	.quad	0x3fec1dfeaab0f77c              # double 0.87866147363796143
	.quad	0x3fe257895dba2774              # double 0.57318561845862215
	.quad	0x3fe3c39134fa7244              # double 0.61762295100522424
	.quad	0x3fd4d46e6b6edbf4              # double 0.32546577922352005
	.quad	0x3fcb56a6006f2f58              # double 0.21358180066305965
	.quad	0x3fc5c3780ddb1418              # double 0.17002773930121928
	.quad	0x3fde92a48921f078              # double 0.47770036117413595
	.quad	0x3feaceaf31dfd50d              # double 0.83773002377589167
	.quad	0x3fcdc9d582504d48              # double 0.23272198546383494
	.quad	0x3fb4184145a3fb58              # double 0.078495101453865401
	.quad	0x3fe9d5852f1aa4db              # double 0.8073144836427234
	.quad	0x3fd6774f13ce1606              # double 0.35103203710636455
	.quad	0x3fe79c8b58963ddd              # double 0.73785941412091527
	.quad	0x3fe84c0c9e8a4061              # double 0.75928336109974393
	.quad	0x3fef782f284433db              # double 0.98342092384848045
	.quad	0x3fc0740f21c4016c              # double 0.12854184292519777
	.quad	0x3fed84139e0f1bd8              # double 0.92237263556387017
	.quad	0x3fe352838880f85f              # double 0.60382248555084661
	.quad	0x3fee13d0f805eaad              # double 0.93991898004545293
	.quad	0x3fadd4d7801dd9e0              # double 0.058264479054674245
	.quad	0x3fc8d906a67eb0ac              # double 0.19412310723908399
	.quad	0x3fdcac3b209fe862              # double 0.44801214395523037
	.quad	0x3fe7a6702a6d4a9d              # double 0.73906715666301503
	.quad	0x3fe5b4e3d8ab723c              # double 0.67833130186369983
	.quad	0x3fea864512d6e085              # double 0.82889035872996486
	.quad	0x3fca67daa946a048              # double 0.20629437699722275
	.quad	0x3fd4410ef6d6098c              # double 0.31647085290037391
	.quad	0x3fe58e0dd53b4fa5              # double 0.67359058043301856
	.quad	0x3fee1d48ed4c61e4              # double 0.94107481334054599
	.quad	0x3fe92282879e5760              # double 0.7854626320647462
	.quad	0x3fee74edf0b44707              # double 0.95177361500302105
	.quad	0x3fe2c152d43e58f9              # double 0.58609906629388242
	.quad	0x3fcf961c42ca2198              # double 0.24676850568017694
	.quad	0x3fe9871d76554645              # double 0.79774354087766908
	.quad	0x3fd56c9d268210a4              # double 0.3347542644553505
	.quad	0x3fdfefd7fa095f7e              # double 0.49901389520299932
	.quad	0x3fc4a7ca1e92d954              # double 0.16137053006031954
	.quad	0x3fc6840845a3c5b0              # double 0.17590430641534516
	.quad	0x3fc5a013472f4c2c              # double 0.1689476106244866
	.quad	0x3fd38e55cfefbca2              # double 0.30556245142265415
	.quad	0x3fed897332b70789              # double 0.92302856354966523
	.quad	0x3fe60ff87b5c41f7              # double 0.68944954007935066
	.quad	0x3fea1c15583d9b83              # double 0.81592814669134872
	.quad	0x3fd124ff0db43be4              # double 0.26788307512555165
	.quad	0x3f848e0a8287e800              # double 0.010036546810614055
	.quad	0x3fda0a1ee42ee3aa              # double 0.40686771663200239
	.quad	0x3fef51eb63da733f              # double 0.97874993803598175
	.quad	0x3fe12fed92e94c5a              # double 0.53710058873765409
	.quad	0x3fd78cdb91d75606              # double 0.36797227136898447
	.quad	0x3fdd86729d5bd37e              # double 0.46133103720722335
	.quad	0x3fdd976ded29ee8a              # double 0.46236751709486923
	.quad	0x3fdb7dddc067bab0              # double 0.42955726422853058
	.quad	0x3fa3d69857e5b960              # double 0.038746605615289864
	.quad	0x3fd60164f138141e              # double 0.34383510166691333
	.quad	0x3fe955886e0b8904              # double 0.79169103139091179
	.quad	0x3fd48017dcd4500a              # double 0.32031818929067468
	.quad	0x3fee3f56bcdce91a              # double 0.94523178946772934
	.quad	0x3fb0cf464e693c40              # double 0.065662759917572977
	.quad	0x3fc837219eed8478              # double 0.18918247470995531
	.quad	0x3feaddc3a525d1d9              # double 0.83957082991997389
	.quad	0x3fbd7e1bf6941d50              # double 0.11520552415833163
	.quad	0x3fd76c2d6e187d3c              # double 0.36597762824563396
	.quad	0x3fe2d52fd37548d5              # double 0.58852378178041909
	.quad	0x3fd2e71e14709880              # double 0.29535629268719532
	.quad	0x3fda36da71aa3a3a              # double 0.40959797954647892
	.quad	0x3fef3c4b9acf938c              # double 0.97611026989453497
	.quad	0x3fd7fbb25ab95020              # double 0.37473734721902652
	.quad	0x3fda78fda8cb85c2              # double 0.41363469585311574
	.quad	0x3fdd8e8a5207ba62              # double 0.46182497034798164
	.quad	0x3fd2649e96dbfa2a              # double 0.28739132625915664
	.quad	0x3fd604b3eba61848              # double 0.34403703701571375
	.quad	0x3fef11ea3dfc8b2a              # double 0.97093689066637023
	.quad	0x3fcda2c2584f1488              # double 0.23152951538046218
	.quad	0x3fe9873a2c9a53a9              # double 0.79775723182193758
	.quad	0x3fd12b34139860a0              # double 0.2682619277343381
	.quad	0x3fc882bd4c7aee2c              # double 0.19148985132584195
	.quad	0x3fe20621f5691189              # double 0.56324861461375619
	.quad	0x3fd7210ff3d1dffa              # double 0.36139296350984262
	.quad	0x3fee2f3369e187ad              # double 0.94326182060125563
	.quad	0x3febec526f1273f6              # double 0.87259790128484727
	.quad	0x3fddb4fa3954f166              # double 0.46417098616418284
	.quad	0x3fe3b404ff748589              # double 0.61572503942095225
	.quad	0x3fe279f72fb3aaea              # double 0.57738837544215227
	.quad	0x3fe90ee7d02e83b9              # double 0.7830695215271738
	.quad	0x3fd0bb22f6de4e9a              # double 0.2614219103645411
	.quad	0x3fe4a591aab9fbe6              # double 0.64521106095332637
	.quad	0x3fe66b6b19db774a              # double 0.70061259317638158
	.quad	0x3fd251bad531a366              # double 0.28623839206425428
	.quad	0x3fea9cf522f07472              # double 0.83165985893323424
	.quad	0x3fdab1238fe8e394              # double 0.41706170133289189
	.quad	0x3fe67ce46694bee5              # double 0.70274562869414281
	.quad	0x3fe033e460f7a91c              # double 0.50633448542547255
	.quad	0x3fd527886afdea68              # double 0.33053789566444047
	.quad	0x3fd5d337e3943f4c              # double 0.34101674294014539
	.quad	0x3fdfd64c05408084              # double 0.49745464814078155
	.quad	0x3fdf1174cedac06e              # double 0.48544044685969012
	.quad	0x3feaa7baa34244e3              # double 0.83297473799225619
	.quad	0x3faaa72bcf4f9990              # double 0.052056664520750862
	.quad	0x3fc8aa1c3e1e6d48              # double 0.19269135506770341
	.quad	0x3feaf8a3a0202c6b              # double 0.84285146021410406
	.quad	0x3fcf5442e447cbac              # double 0.24475895067697928
	.quad	0x3fca462abb12f3a4              # double 0.20526632437204484
	.quad	0x3fe9747a5e18a22f              # double 0.79546850565117733
	.quad	0x3fe32463a2b7e4ea              # double 0.59819204121518266
	.quad	0x3fefd4810542a2ee              # double 0.99469042804147789
	.quad	0x3fe7a8714d64848b              # double 0.7393118392539163
	.quad	0x3fd396a4a884604c              # double 0.30606953102824686
	.quad	0x3f9d288c42453dc0              # double 0.028474990410641388
	.quad	0x3fe0dfdafe05a6b7              # double 0.52732610334097429
	.quad	0x3fe605c83a8c9e85              # double 0.68820582805069874
	.quad	0x3fdf6ef036e2837e              # double 0.49114613876195523
	.quad	0x3fc115a835967fcc              # double 0.13347342125507422
	.quad	0x3feb958a19dbd43b              # double 0.86200432825592743
	.quad	0x3fec082d4d279a6f              # double 0.87599816388394725
	.quad	0x3fd5fec6fb9f1928              # double 0.34367537090692446
	.quad	0x3fe06a7ff54dc119              # double 0.51300046835789026
	.quad	0x3fe59655f2c6dcf6              # double 0.67460153024049307
	.quad	0x3fddc182264467ce              # double 0.46493581521064875
	.quad	0x3fe5ae5b2935ff05              # double 0.67753370331772145
	.quad	0x3faa35d55a8d1350              # double 0.051191966346357476
	.quad	0x3fae828cdfc8aba0              # double 0.059589769666067882
	.quad	0x3fdc8fa166919f98              # double 0.44626650825966285
	.quad	0x3fe99fc6eff8415e              # double 0.80075404042331022
	.quad	0x3fe6cf4f7394d873              # double 0.71280644011018379
	.quad	0x3fc298350a06d830              # double 0.14526999463640911
	.quad	0x3fe554d995460f83              # double 0.66660765795721522
	.quad	0x3feee4053dc8f776              # double 0.9653345305193699
	.quad	0x3fdd8b128db3e6c6              # double 0.46161331022413454
	.quad	0x3feb03b49065fbc7              # double 0.84420231058890571
	.quad	0x3fc18b253d74cf0c              # double 0.13705888272090083
	.quad	0x3febee5a115d3e66              # double 0.87284568206264335
	.quad	0x3fecb98256b4ba91              # double 0.89764515814552415
	.quad	0x3fe9f2ed12dd3815              # double 0.81090406116868741
	.quad	0x3fefad56c519bb64              # double 0.98990953918642476
	.quad	0x3fe17ff00561c74c              # double 0.54686738063012674
	.quad	0x3fe7a5796bba1983              # double 0.73894949951572675
	.quad	0x3fd97c89593f5c98              # double 0.39822610583855456
	.quad	0x3fe89669899a3a34              # double 0.76836087108114847
	.quad	0x3fb7ece32eed9c88              # double 0.093458365399429977
	.quad	0x3fe3761a2613b88e              # double 0.60816676556511751
	.quad	0x3fe3b87ff4b94401              # double 0.61627195165249316
	.quad	0x3feb7ed20c988f73              # double 0.85923101863998708
	.quad	0x3fef77388bada995              # double 0.98330333023959559
	.quad	0x3fd5d72c286a1a96              # double 0.34125808665013702
	.quad	0x3fec2a4c5ee84950              # double 0.8801633695277733
	.quad	0x3feb3ef070f9281e              # double 0.85143301072207911
	.quad	0x3feab2d22a59a6ee              # double 0.83432873031162358
	.quad	0x3fd07c33c4d7c0e4              # double 0.25758070204666539
	.quad	0x3fc7fee2f17e8c8c              # double 0.18746601859775003
	.quad	0x3fd8a2adcea032c4              # double 0.38492913416193297
	.quad	0x3fb8d7cb47a50128              # double 0.097042756072373337
	.quad	0x3fe753fb58f00267              # double 0.72900168772328022
	.quad	0x3fbd9ac88bd4f558              # double 0.11564305700172406
	.quad	0x3fe65136560c90e5              # double 0.69741360479795544
	.quad	0x3fb8ef9215580de0              # double 0.097405557833603051
	.quad	0x3fe7aefc0c68657e              # double 0.74011042045019315
	.quad	0x3fe080a215203108              # double 0.51570228696940124
	.quad	0x3fe6b40a7ea8b839              # double 0.70947766054246764
	.quad	0x3feb5a93510fdea3              # double 0.85480657417698003
	.quad	0x3fbffb890df6ef08              # double 0.124931875142405
	.quad	0x3fd258bcff49bdc6              # double 0.28666615419839692
	.quad	0x3fec815069b2d6c5              # double 0.89078541416412149
	.quad	0x3fe7178f9f9bafea              # double 0.72162610219447498
	.quad	0x3fdae68dfe5119a0              # double 0.42032193980812771
	.quad	0x3fd3541054d70100              # double 0.30200584683554155
	.quad	0x3fee1257b864322e              # double 0.93973909391349308
	.quad	0x3fd719050add3418              # double 0.36090208111710487
	.quad	0x3fef171c528631de              # double 0.97157112234122756
	.quad	0x3fdb2e5810a414ae              # double 0.42470361352054453
	.quad	0x3f7ab40793562680              # double 0.0065193458480138355
	.quad	0x3fef726d1b5096fe              # double 0.98271804175303124
	.quad	0x3fbbaee050578ed0              # double 0.10813714944338959
	.quad	0x3fea8d7f6172fff9              # double 0.82977265389490562
	.quad	0x3fe826f26cb726be              # double 0.75475426896556264
	.quad	0x3fe87fd71f746ad4              # double 0.76560550826556061
	.quad	0x3fd19a4ebec99bd2              # double 0.27504318839640718
	.quad	0x3fe8fd35a4b9299b              # double 0.7809093682529239
	.quad	0x3fd6733e834ad656              # double 0.3507839471961679
	.quad	0x3fd9e12bf13b301c              # double 0.40436838681921627
	.quad	0x3fe64de3f35c975d              # double 0.69700810939387348
	.quad	0x3fea4e940e1f10d6              # double 0.82209208257747934
	.quad	0x3fb78459c5bbc588              # double 0.091863261008049091
	.quad	0x3fd917285a9e17c8              # double 0.39203842973108438
	.quad	0x3fe6ae89ad875aff              # double 0.70880588428812519
	.quad	0x3fd156e3216aa648              # double 0.27092817557658977
	.quad	0x3f99bd3cc54a5a60              # double 0.025135945836689877
	.quad	0x3fecba78809394d4              # double 0.89776253807635919
	.quad	0x3fe1a94e0b085bad              # double 0.55191709666074973
	.quad	0x3fd0c249faf6c0f6              # double 0.26185845859710299
	.quad	0x3fef04e0888021cd              # double 0.96934534702546104
	.quad	0x3fa6db9f6ee813f0              # double 0.044644338882825596
	.quad	0x3feaf6203dd8c0dc              # double 0.84254467086250484
	.quad	0x3fe4acfed0e71dfc              # double 0.64611759949997305
	.quad	0x3fe9359f95acc17a              # double 0.78779582246174518
	.quad	0x3fc715b8f32d5890              # double 0.18035041688807896
	.quad	0x3fc1f512761fd8a0              # double 0.1402915074137967
	.quad	0x3fea288f72654b82              # double 0.81745121329218784
	.quad	0x3fee0fd350bbacb9              # double 0.93943181770500594
	.quad	0x3fec89133c4b6460              # double 0.89173280502576446
	.quad	0x3fdc492aaef6c296              # double 0.44196574293440827
	.quad	0x3fefdf6ab035537d              # double 0.99602255263981442
	.quad	0x3fe6a3c09ce48559              # double 0.70748930590722658
	.quad	0x3fe0bbebd94292ec              # double 0.52293960984806409
	.quad	0x3fd4a6402a6c93ca              # double 0.32264713423711255
	.quad	0x3feb8e0bacc113c4              # double 0.86108955136352749
	.quad	0x3fe4a55d6b0536c7              # double 0.64518614675918051
	.quad	0x3fe3ea1c1ff3b1ed              # double 0.62232786408054397
	.quad	0x3fe8d1488cc7b48e              # double 0.77554728981125876
	.quad	0x3fe3fe0f37cfc0eb              # double 0.62476311588946254
	.quad	0x3fe414d357f14785              # double 0.62754218269604733
	.quad	0x3fcf5ed5a5e4b2e4              # double 0.2450816211725374
	.quad	0x3fe1d29516120694              # double 0.55695585547091975
	.quad	0x3fe4e3fa7da90c57              # double 0.65282940428768199
	.quad	0x3fd5125b1ea0e46a              # double 0.32924535742819805
	.quad	0x3fb1f34554a39958              # double 0.070118268169243492
	.quad	0x3fd1b46d678718a2              # double 0.27663741216782445
	.quad	0x3fe01b5073cfaa76              # double 0.50333426112531643
	.quad	0x3fc2d9e328ca0cec              # double 0.14727439395583219
	.quad	0x3fe505e895905ac3              # double 0.65697125636764786
	.quad	0x3fcd504a969fa394              # double 0.22901279787700146
	.quad	0x3f7046f2a69b7e00              # double 0.0039739111468573007
	.quad	0x3feeda6be388941f              # double 0.9641627735151167
	.quad	0x3fe3ad5baf64bcaf              # double 0.61491188293975607
	.quad	0x3fee63d10cc55f06              # double 0.94968464369137062
	.quad	0x3fdfd2d0e6ec4bfc              # double 0.49724218894078809
	.quad	0x3fe7357359ac0b83              # double 0.72527472986290353
	.quad	0x3fbb8bd68b164c08              # double 0.1076025094574079
	.quad	0x3fc0eef14b646e84              # double 0.13229194813981249
	.quad	0x3fc493026710e6c8              # double 0.16073637039681032
	.quad	0x3fdb3967aa4cd85c              # double 0.42537871962429619
	.quad	0x3fdf1d9cf739bd4e              # double 0.48618244307632075
	.quad	0x3fede53e71f5e158              # double 0.93423387773422473
	.quad	0x3fe49eac7479771c              # double 0.64436934231682441
	.quad	0x3fe92b67e33ea60b              # double 0.78654856094107239
	.quad	0x3fef4f6d3a691cee              # double 0.97844563873596058
	.quad	0x3fb75786aeba18b0              # double 0.09117929235262312
	.quad	0x3fd07439fca0ff60              # double 0.2570939032630033
	.quad	0x3fcca26acf81c388              # double 0.22370658046886782
	.quad	0x3fe7433a9d832b1d              # double 0.72695666088234001
	.quad	0x3fd73d9a52d8e3d6              # double 0.36313493814992392
	.quad	0x3fb2f36906bf8320              # double 0.074026645801052116
	.quad	0x3fdd8a3a0fe3ca74              # double 0.46156169463862473
	.quad	0x3fbc0c81f59c4b28              # double 0.1095658516535819
	.quad	0x3fe8a798ca3d50a4              # double 0.77045859813599237
	.quad	0x3fd884f6af863cc2              # double 0.38311545506526212
	.quad	0x3fd1f3c9d2a2ab7a              # double 0.28050466127267948
	.quad	0x3fda9a96dc1b75a2              # double 0.41568538184022874
	.quad	0x3fe0db1816ea3900              # double 0.52674488521168428
	.quad	0x3fc265a104f66964              # double 0.14372647039710806
	.quad	0x3fe9f706ba658751              # double 0.81140457540116462
	.quad	0x3fb695df7ac39fe0              # double 0.088224379989355395
	.quad	0x3feaf5ae83014d4c              # double 0.84249044024401475
	.quad	0x3feed9cd2302d0e1              # double 0.96408707464300047
	.quad	0x3fe5d397848cfd28              # double 0.68207908524337757
	.quad	0x3fed8f80d3601417              # double 0.92376748356093941
	.quad	0x3fe95ae3740d6068              # double 0.7923447863240769
	.quad	0x3fb5a1181fa777f0              # double 0.084489352920598781
	.quad	0x3fe07d1e0260dd28              # double 0.51527309860731396
	.quad	0x3fe2e290f9f624a0              # double 0.59015702076534993
	.quad	0x3fca24784015388c              # double 0.20423796776816905
	.quad	0x3fae5137297702e0              # double 0.05921337491191081
	.quad	0x3fe02dca3d516f48              # double 0.5055895993823265
	.quad	0x3fe5d88485e1b18e              # double 0.68268037937882453
	.quad	0x3fdd137c1f2ba0a4              # double 0.45431426090227434
	.quad	0x3fe5b33ba2b2d085              # double 0.6781290223793951
	.quad	0x3fde3d4fa9453a90              # double 0.47249213724436689
	.quad	0x3feab7dedfc6e484              # double 0.83494514185362378
	.quad	0x3fd60a9a50a0c556              # double 0.34439714311436853
	.quad	0x3fe8710519c066c3              # double 0.76379637746432427
	.quad	0x3fe9a7915c32d994              # double 0.801705055308775
	.quad	0x3fe5ae797afb283f              # double 0.67754816074126001
	.quad	0x3fe938fa0b3fa20a              # double 0.78820516774163818
	.quad	0x3fd1bbb5b9dcdf4a              # double 0.27708190107977215
	.quad	0x3fefe9aad99d6458              # double 0.9972738504685692
	.quad	0x3fe652f62f2eb651              # double 0.69762715545011578
	.quad	0x3fe70b3547215076              # double 0.7201181782970838
	.quad	0x3fe01ebc88f841aa              # double 0.50375200988678626
	.quad	0x3fe93fddc818f5cd              # double 0.7890461834101018
	.quad	0x3fedd3495266413c              # double 0.93204179853095281
	.quad	0x3fd191cb77454d64              # double 0.27452360770731432
	.quad	0x3feac6b8a72cdab4              # double 0.83675797130020734
	.quad	0x3fdec93bf0ee1c36              # double 0.48103235748607476
	.quad	0x3fd83b36e3006040              # double 0.37861416023361372
	.quad	0x3fde24ac2043bb72              # double 0.47098830366933619
	.quad	0x3fcbdbfa4743c378              # double 0.21765068511697527
	.quad	0x3fddbd23b0620396              # double 0.46466915345086457
	.quad	0x3fe398b80bc1a8ae              # double 0.61239244743526
	.quad	0x3fe64f3fc5370a11              # double 0.69717396277002497
	.quad	0x3fcf98384a6b1930              # double 0.24683288224896094
	.quad	0x3fded1b4e9660264              # double 0.48154948036975598
	.quad	0x3feb9d9ab6066a7a              # double 0.86298881103296243
	.quad	0x3fd122643839dd34              # double 0.26772408953498261
	.quad	0x3fcaa2c8646005e0              # double 0.20809273625495361
	.quad	0x3fe0346604bd538d              # double 0.50639630246824796
	.quad	0x3fcc48c42d55afd0              # double 0.2209706517563732
	.quad	0x3fea553273206052              # double 0.82290003286017055
	.quad	0x3fe05c9c98ae6d86              # double 0.51130513973787184
	.quad	0x3fdbb8e703ed7fec              # double 0.43316054709975904
	.quad	0x3fcfe41b63ec1018              # double 0.24914877299318117
	.quad	0x3fe28c4af2ebda03              # double 0.57962558217587945
	.quad	0x3fe1d0dc38d1cf18              # double 0.55674563500949414
	.quad	0x3fef1a6e3a99f08a              # double 0.97197638936587905
	.quad	0x3fdb03e5f1332a44              # double 0.42211292795824229
	.quad	0x3fc297ec7c2dea18              # double 0.14526134551472647
	.quad	0x3fd2a4b4b7c57a14              # double 0.2913028521196861
	.quad	0x3fedf7a673308dde              # double 0.93648073671323195
	.quad	0x3f5f47c11320fc00              # double 0.0019091973777134452
	.quad	0x3fe69f5ee4591c88              # double 0.70695442771183625
	.quad	0x3feedc5414c52caf              # double 0.96439556175882568
	.quad	0x3fe37a1ac68079fc              # double 0.60865534562964241
	.quad	0x3fe6846aa7d496a5              # double 0.70366413859729404
	.quad	0x3fe69a208f192f6d              # double 0.7063143534555657
	.quad	0x3fd67dbc7e85fb80              # double 0.35142433505819071
	.quad	0x3fea48c84f053754              # double 0.82138457711855972
	.quad	0x3fe779ec07546999              # double 0.73363305503453369
	.quad	0x3fcc904c0c73a57c              # double 0.22315359695430093
	.quad	0x3fd82c8437e8bcdc              # double 0.37771707019687795
	.quad	0x3fec07deb58a6ce1              # double 0.87596068818256978
	.quad	0x3fe34a85b0cf0665              # double 0.60284695179889225
	.quad	0x3fc4621288f9e9b4              # double 0.15924293220798591
	.quad	0x3fef757239a142a5              # double 0.98308669334263198
	.quad	0x3fdf0c587ccafda6              # double 0.48512851893243647
	.quad	0x3fd01acc074c472a              # double 0.25163555824939243
	.quad	0x3fe55c8ce8529b8a              # double 0.66754765868687227
	.quad	0x3fdb331340fb3b78              # double 0.42499238344037549
	.quad	0x3fe87517ac407311              # double 0.76429351466103601
	.quad	0x3fedfa8993838e1a              # double 0.93683317958169998
	.quad	0x3fe110c252b4a645              # double 0.53329578545999168
	.quad	0x3fe0d68d1e95bd72              # double 0.52619033788316316
	.quad	0x3fe3c04e96302a81              # double 0.61722497304556623
	.quad	0x3fc81da235a9e050              # double 0.1884043466595835
	.quad	0x3fdc4d8bdc81d83c              # double 0.44223305257708367
	.quad	0x3fd89ed627287132              # double 0.3846946127321359
	.quad	0x3fec855347558aa3              # double 0.89127506191683314
	.quad	0x3f6e4fe39589e700              # double 0.0037002034189840272
	.quad	0x3fdab43f8bd033fe              # double 0.41725147870675972
	.quad	0x3fe895016de27da8              # double 0.76818915807591726
	.quad	0x3fda57569b4df1a2              # double 0.41158070723010998
	.quad	0x3fe7266eb87efff6              # double 0.72344146761315531
	.quad	0x3fe44e59d115a6a6              # double 0.63456431233244781
	.quad	0x3fd587094612fe8a              # double 0.33636695712264297
	.quad	0x3febcaf56cbc87c1              # double 0.86852523076617427
	.quad	0x3fbc4a463678e9b8              # double 0.11050833539858373
	.quad	0x3fd3c96051c336ea              # double 0.30916603073715854
	.quad	0x3feba9aae8dff1c1              # double 0.86446137889247876
	.quad	0x3fb32f424db38728              # double 0.07493986508373196
	.quad	0x3fe8a146a3955252              # double 0.76968700361119091
	.quad	0x3fcebcea03633884              # double 0.24014020123872026
	.quad	0x3f979e9e9c70f840              # double 0.023066023157518822
	.quad	0x3fe02de8e909db94              # double 0.5056042243512473
	.quad	0x3fec2af0c869a1dd              # double 0.88024176734057458
	.quad	0x3fdec2605bd9372e              # double 0.48061379403667359
	.quad	0x3fea8a28e8d84f53              # double 0.82936521031886412
	.quad	0x3fbd559eb690a270              # double 0.11458770711090849
	.quad	0x3fe3fc45ecbf3db2              # double 0.62454506148963262
	.quad	0x3fda195fa9b8e990              # double 0.40779868673748698
	.quad	0x3fb6ac469cd249c0              # double 0.088566220556720587
	.quad	0x3fc93e7c4f1e800c              # double 0.1972194086383755
	.quad	0x3fe3f69cf08021e4              # double 0.62385413143880131
	.quad	0x3fe23e78e769692a              # double 0.57012601087197834
	.quad	0x3fe27c985c4b155c              # double 0.5777093699077045
	.quad	0x3fe6a69f81e001f6              # double 0.70783973089424879
	.quad	0x3fe0d2efbb0d6da3              # double 0.52574907811815697
	.quad	0x3f9077132d5b3fe0              # double 0.016079234736764536
	.quad	0x3fed6472befdb034              # double 0.91851174643443878
	.quad	0x3fe20c84cb3d8ff9              # double 0.56402816481977347
	.quad	0x3fe83d729a54f478              # double 0.7575009359640168
	.quad	0x3feb1ac768d90cd0              # double 0.8470189140138249
	.quad	0x3fd1e760be4bec3c              # double 0.27974718650483843
	.quad	0x3fed347944a901f3              # double 0.91265548143570496
	.quad	0x3fcc4122ae479f94              # double 0.22073777684931584
	.quad	0x3fcbe6bd92586584              # double 0.21797914167181542
	.quad	0x3fcf277337252508              # double 0.24339142029410987
	.quad	0x3fe14e06b0d4cd55              # double 0.54077467477183438
	.quad	0x3fbce50caa081108              # double 0.11287001753959569
	.quad	0x3fdb6c815f6207a6              # double 0.4284976417039793
	.quad	0x3fe4a3bf2ebe78bf              # double 0.64498862390225742
	.quad	0x3fefcb5a2e43e6e1              # double 0.99357327495746627
	.quad	0x3fe869f3d5727b46              # double 0.76293365181832296
	.quad	0x3fe07efae8f53f09              # double 0.51550050258262659
	.quad	0x3fc3cfab864247f8              # double 0.15477508597956535
	.quad	0x3fefd11794290c7b              # double 0.99427393853728973
	.quad	0x3fc1957b652d06bc              # double 0.13737432899693214
	.quad	0x3fd3349082a9eee2              # double 0.30008328209053847
	.quad	0x3fe8b91ca0e29802              # double 0.77259665892484031
	.quad	0x3fe0a62817810cd9              # double 0.52028278914113024
	.quad	0x3fd8a80f93379efc              # double 0.38525761963545313
	.quad	0x3fcb1b11fbb33bac              # double 0.21176361837430357
	.quad	0x3fe16daed10992f5              # double 0.54463902309052392
	.quad	0x3fc68f38e4271670              # double 0.17624579563396336
	.quad	0x3fe3b94703a65a76              # double 0.61636687004904789
	.quad	0x3fd73fb5ac6ea16c              # double 0.36326352919652183
	.quad	0x3fee3a14677be839              # double 0.94458980762215738
	.quad	0x3fdcca5a37e8aa26              # double 0.44985061130378978
	.quad	0x3fec8b8e6589fe7c              # double 0.89203567344516399
	.quad	0x3fedf242a4eec767              # double 0.93582279408859115
	.quad	0x3fe6dc35cf89a302              # double 0.71438112768836981
	.quad	0x3fd85bb25b1cdbd6              # double 0.38059672258117183
	.quad	0x3fdb9a27a4191bdc              # double 0.43128386521533257
	.quad	0x3fe3f9bb35774f0e              # double 0.62423477594936272
	.quad	0x3fe5d8c2b61c3e74              # double 0.6827100331156104
	.quad	0x3fd7c8f4eb97122a              # double 0.37164042479369874
	.quad	0x3fcbc73bb6d86fa8              # double 0.21701761653900786
	.quad	0x3fe0a4b45eb03f5e              # double 0.52010553830949013
	.quad	0x3feb1c3c109073f3              # double 0.84719660983284795
	.quad	0x3fe099861e49322e              # double 0.51874071040362479
	.quad	0x3fe1a6eb96f6eb40              # double 0.5516260098005219
	.quad	0x3fccfbdf2c176578              # double 0.2264365163125992
	.quad	0x3fc3b239a6d53ae8              # double 0.15387650152339138
	.quad	0x3feda80892e344b4              # double 0.92676190079705245
	.quad	0x3fc8be7a978a4e08              # double 0.19331295394350456
	.quad	0x3fe3535002598255              # double 0.60391998728671104
	.quad	0x3fe756051441adbd              # double 0.72925046879156918
	.quad	0x3fc3f416c76e62ec              # double 0.15588650453425801
	.quad	0x3feee2b365a57931              # double 0.9651734338074559
	.quad	0x3fc23f83ad0be12c              # double 0.14256330441981768
	.quad	0x3fcb373f6b8f5b4c              # double 0.21262352706863863
	.quad	0x3fd33b3a0f2c6106              # double 0.30048991662762636
	.quad	0x3fe053476d419f22              # double 0.51016589488151376
	.quad	0x3fa3888770fa9900              # double 0.038151009122247004
	.quad	0x3f6bf395c301d700              # double 0.0034120488199346211
	.quad	0x3fdc01a5feb1befa              # double 0.4376006114243719
	.quad	0x3fe79ad93600bd10              # double 0.73765240237654162
	.quad	0x3fe53e8f3aec10f3              # double 0.66388665683964942
	.quad	0x3fdc41dc45b3bb0c              # double 0.44151980215876629
	.quad	0x3fd14ebdc1260340              # double 0.27043098318249648
	.quad	0x3fe6cd4b25036c95              # double 0.71256024579214972
	.quad	0x3f8af8e702ddf5c0              # double 0.013170056128496976
	.quad	0x3fca92c13d3ad0c0              # double 0.20760360231145647
	.quad	0x3feebf97d4f2897e              # double 0.96088782874384981
	.quad	0x3feb29abcc18c703              # double 0.84883680212644241
	.quad	0x3f5ceaf482d08e00              # double 0.0017650020411189571
	.quad	0x3fed7fb559c8b46f              # double 0.9218394044488728
	.quad	0x3fef1b9b94e20d9b              # double 0.97212008551325668
	.quad	0x3fe6da8ed3820126              # double 0.71417943296549846
	.quad	0x3fe5fc42f86096cc              # double 0.68704365264121625
	.quad	0x3fe87a8f5c7a1725              # double 0.76496093809030141
	.quad	0x3feeffc42f554591              # double 0.96872147793526341
	.quad	0x3fb304c924882250              # double 0.074291774195566207
	.quad	0x3fb5c0377d8b8e28              # double 0.084964244986217907
	.quad	0x3fe54a4f7a67c4ed              # double 0.66532110125822685
	.quad	0x3fe3a52c72c8aa4c              # double 0.6139127961990396
	.quad	0x3fe534ae812e1c17              # double 0.66268086653224401
	.quad	0x3fe725f15a4ae522              # double 0.72338168750062359
	.quad	0x3feea299f8d5b09d              # double 0.95734881020100071
	.quad	0x3fd7856a4cd4db96              # double 0.36751801970552245
	.quad	0x3fe29aa92e7e060b              # double 0.5813795002033556
	.quad	0x3fec0d2119493e04              # double 0.87660269678775692
	.quad	0x3fef43b463122389              # double 0.97701472615982354
	.quad	0x3fe398a00b8b42d6              # double 0.61238100294766684
	.quad	0x3fe83fb18ef44ac7              # double 0.7577750961375721
	.quad	0x3fc5b806417ce564              # double 0.16967848012590558
	.quad	0x3fe4b7a0d4155642              # double 0.64741555616883084
	.quad	0x3fc5c286867cff90              # double 0.16999894682703287
	.quad	0x3fef92e89ef81db4              # double 0.9866831879489184
	.quad	0x3fe4bcddd0f461ab              # double 0.64805498897026348
	.quad	0x3fbee782f7f1bdc0              # double 0.12072008660628963
	.quad	0x3fe6b01f700b873c              # double 0.70899936565204014
	.quad	0x3fc6d55cba063ad0              # double 0.17838629801959494
	.quad	0x3fe8a51fdcb41466              # double 0.77015679460658926
	.quad	0x3fe19a551c34a46b              # double 0.55008941182053428
	.quad	0x3fe94ba28595e816              # double 0.79048276987964772
	.quad	0x3fd6ac87a9bad3c2              # double 0.35428039145636714
	.quad	0x3fe8e75278194687              # double 0.77823756653579401
	.quad	0x3fea98bdd09cdde6              # double 0.83114519829444755
	.quad	0x3fa787211374e1b0              # double 0.045952829003400253
	.quad	0x3fd4d4e3d6ccff8c              # double 0.32549377419126624
	.quad	0x3feec98749650cfd              # double 0.96210064253719418
	.quad	0x3fec6bd155e77990              # double 0.88816134241260336
	.quad	0x3fe9051ffe69af3a              # double 0.78187560739522799
	.quad	0x3fd7b2ad4ba251bc              # double 0.37028057466639175
	.quad	0x3fe2a9221d071721              # double 0.5831461493441773
	.quad	0x3fd094aa46d43a48              # double 0.25907380024810722
	.quad	0x3fb6b569c0707bd8              # double 0.088705644113800886
	.quad	0x3fe002beefad8a71              # double 0.50033518611992467
	.quad	0x3fc89f08f2532594              # double 0.19235336143746606
	.quad	0x3fa43ce9b1b73b30              # double 0.0395272283018272
	.quad	0x3fe27491ee3a0c55              # double 0.57672974136984101
	.quad	0x3fd5bd75534bf2d6              # double 0.33968861708107789
	.quad	0x3fe6d1565a0ae517              # double 0.7130538710254396
	.quad	0x3fdf8fa1107cdd74              # double 0.49314142809040296
	.quad	0x3fd124414d4e40f2              # double 0.26783783482916512
	.quad	0x3fe13e70d850b9fb              # double 0.53887216805543348
	.quad	0x3fcca52bd5145b88              # double 0.22379062561296004
	.quad	0x3fcc4625503311a0              # double 0.22089067855826006
	.quad	0x3fc91fdd3b0d0704              # double 0.19628491767257839
	.quad	0x3fe286e61093108e              # double 0.57896712529374539
	.quad	0x3fa249a023b601e0              # double 0.035717968329666894
	.quad	0x3fc37b7d3c12640c              # double 0.15220609124369877
	.quad	0x3fddaadba6e7dd80              # double 0.46355334567439144
	.quad	0x3fc0d50a319b814c              # double 0.13150145933378565
	.quad	0x3fca3fb231fee2ac              # double 0.20506884995645203
	.quad	0x3f9d93d44d9de980              # double 0.028884236562114918
	.quad	0x3fc7d926885d63e0              # double 0.18631440790593867
	.quad	0x3fe8bb31a94bc5f9              # double 0.77285082879660572
	.quad	0x3fda6cb3748c75ae              # double 0.4128845823450672
	.quad	0x3fa62c50f9e54dd0              # double 0.043306856636856517
	.quad	0x3fc2eeb1bad1dad8              # double 0.14790937063272369
	.quad	0x3fe6d3d6b6676fef              # double 0.71335921884337761
	.quad	0x3fb541efdd643950              # double 0.08303736834588915
	.quad	0x3fe16ae81bd0f538              # double 0.54430013115749087
	.quad	0x3fc25d12e23e8e30              # double 0.14346538588607549
	.quad	0x3feb2543e3c134b6              # double 0.84829897387830644
	.quad	0x3feb53b019debae2              # double 0.8539658074640466
	.quad	0x3fe27f08dc269586              # double 0.57800715444743456
	.quad	0x3fba9fc3de416440              # double 0.10400032211454491
	.quad	0x3fd8b2608c06e590              # double 0.38588727640634435
	.quad	0x3fd5a4a7bb842108              # double 0.33817475616571402
	.quad	0x3fe9b322409bea86              # double 0.80311691874460744
	.quad	0x3fdc2df41424ae50              # double 0.44030477492444664
	.quad	0x3fe23514c923f604              # double 0.56897963795898976
	.quad	0x3fc4ff915deca0a0              # double 0.16404931150578239
	.quad	0x3fe7279dc5e6e271              # double 0.72358597424233839
	.quad	0x3feac88c07a5741d              # double 0.83698083394449763
	.quad	0x3f95be098752dea0              # double 0.02123274696779609
	.quad	0x3fe624721d999afa              # double 0.6919489458203707
	.quad	0x3fd9854df3ee506a              # double 0.39876126119020816
	.quad	0x3fea4ef289c9b313              # double 0.82213713561722768
	.quad	0x3fe28c5850e7de06              # double 0.57963195611859031
	.quad	0x3fc66a379b0179c4              # double 0.17511649197235901
	.quad	0x3fe2c35e2037ac7f              # double 0.58634859364009617
	.quad	0x3fa5ccc484fd1030              # double 0.042577878221465304
	.quad	0x3fc34c3e3cc356c0              # double 0.15076425520844872
	.quad	0x3fe8af413c066f73              # double 0.77139341090831548
	.quad	0x3fe6e9e18dad9ea5              # double 0.71604993506931136
	.quad	0x3f8c994e9284efc0              # double 0.013964284750379252
	.quad	0x3fe5f78f1176d335              # double 0.68646958743065645
	.quad	0x3fc0cd251e723574              # double 0.1312605284369216
	.quad	0x3feb3a17220c0691              # double 0.85084110879707187
	.quad	0x3fe6b5a09a4450f7              # double 0.70967130785223176
	.quad	0x3fe8156f77658050              # double 0.75261662788035188
	.quad	0x3fedfd8bd2c56de7              # double 0.93720046201945884
	.quad	0x3fc024541d7ca18c              # double 0.12610866012370214
	.quad	0x3fda1a54021cafe6              # double 0.40785694319015275
	.quad	0x3fb223773288bf08              # double 0.070853662335817913
	.quad	0x3fad93449c9aed00              # double 0.057764190785258407
	.quad	0x3fd9323a1c833a88              # double 0.39369061264452698
	.quad	0x3fc6d45c91af86bc              # double 0.17835576165730582
	.quad	0x3fe196490416182a              # double 0.54959536359888728
	.quad	0x3fe75435b9d4192c              # double 0.72902952475195582
	.quad	0x3fe0cdd89da7f954              # double 0.52512770454613156
	.quad	0x3fd8c8781ad525fc              # double 0.3872356664693084
	.quad	0x3fba5d07e3a04a08              # double 0.1029820376136642
	.quad	0x3fda820ea6ca0ffe              # double 0.41418806350725379
	.quad	0x3fd9263b4b14f4aa              # double 0.39295847255909655
	.quad	0x3fbda2ae3fc02eb8              # double 0.11576355987943543
	.quad	0x3fe6c0420c263962              # double 0.7109689938823005
	.quad	0x3fe4ffd901a5f168              # double 0.65623140642086941
	.quad	0x3fe3e59b74346c0d              # double 0.62177822777027958
	.quad	0x3fdc12a8e99be3bc              # double 0.43863890469907196
	.quad	0x3fdff607acc2b8e8              # double 0.49939147826343211
	.quad	0x3fd9a414d30c7154              # double 0.40063973055091151
	.quad	0x3fe3ecbed61a0492              # double 0.62264959160542532
	.quad	0x3fb7876ac8d25de8              # double 0.091910051373239932
	.quad	0x3fe16927e1e02655              # double 0.54408640018773247
	.quad	0x3fd0d913b59cf35c              # double 0.26324932799962197
	.quad	0x3feb52e64bb3ef77              # double 0.85386957917897532
	.quad	0x3f9138d683072f60              # double 0.016818382022207756
	.quad	0x3fddd0952444bbc6              # double 0.4658558706459498
	.quad	0x3feeb7b1f8849a36              # double 0.95992373026530831
	.quad	0x3febb4f7b20ad46d              # double 0.86584076665770981
	.quad	0x3fd437d63634b406              # double 0.31590800565282995
	.quad	0x3fed71353a78abe5              # double 0.92006932659330387
	.quad	0x3fd47fef257bfc80              # double 0.32030848179415017
	.quad	0x3fc76cac233f8f58              # double 0.18300391884906264
	.quad	0x3fe19c1815e6b5ac              # double 0.55030445363597869
	.quad	0x3fec7713a2c8b7f9              # double 0.88953573030244038
	.quad	0x3fdb933adae8ccf6              # double 0.43086120012158291
	.quad	0x3feb62f52e06750b              # double 0.85582980145741894
	.quad	0x3fed7199826537c8              # double 0.9201171442780316
	.quad	0x3fd7f2f96b698038              # double 0.37420497407402165
	.quad	0x3fde127b23302eb6              # double 0.46987799106930639
	.quad	0x3fe9ce6c6a07e12a              # double 0.80644818028580301
	.quad	0x3fe470b79f096031              # double 0.63875943242874744
	.quad	0x3fe65cf666a3094c              # double 0.69884796186696851
	.quad	0x3fe94513096d1ff3              # double 0.78968192902629963
	.quad	0x3fe23b32a4c5f46c              # double 0.56972629720952517
	.quad	0x3fd0f24d54e65ee4              # double 0.26478894511227069
	.quad	0x3fd28e9b656c981a              # double 0.28995404152590398
	.quad	0x3fee31b1d0d212cf              # double 0.94356623444817866
	.quad	0x3fee988324413f08              # double 0.95611722069767868
	.quad	0x3fcea770e94e4b60              # double 0.23948489562880138
	.quad	0x3fe1d4101762b35c              # double 0.55713657920351123
	.quad	0x3fd2faf5ad74bb56              # double 0.29656736315785304
	.quad	0x3fcdca336bb3a1a4              # double 0.23273318060752246
	.quad	0x3fd792c4070e59fc              # double 0.36833286942547239
	.quad	0x3fe3fb6e6a669691              # double 0.62444229871171519
	.quad	0x3faf1d0ebda13040              # double 0.060768566749715536
	.quad	0x3fd2cff0d6a9f25a              # double 0.29394169772402778
	.quad	0x3fe3fbc5cee41374              # double 0.62448397072203798
	.quad	0x3fde84e286dc3712              # double 0.47686064882223989
	.quad	0x3fb5510ca6ff4700              # double 0.083267966051860043
	.quad	0x3fc81b3d77364bf8              # double 0.18833130188849601
	.quad	0x3fc6646753a089c0              # double 0.17493907531122765
	.quad	0x3fdea56ef0fe44e4              # double 0.47884725126739469
	.quad	0x3feadd6bf378239f              # double 0.83952901413532632
	.quad	0x3fe6896c430b0aa0              # double 0.70427525610314845
	.quad	0x3fbb871a72585df8              # double 0.10753026286726441
	.quad	0x3fc09d46a83c5a3c              # double 0.12979968275677034
	.quad	0x3fe479ab79eb8105              # double 0.63985227406013279
	.quad	0x3feae102c593c801              # double 0.83996714200316103
	.quad	0x3fc66836254c4b30              # double 0.17505528279488081
	.quad	0x3fd51e02f36d5fe2              # double 0.3299567582339461
	.quad	0x3f533d24e215a800              # double 0.0011742458521788457
	.quad	0x3fb8925b478d7f78              # double 0.095983223885466873
	.quad	0x3fea8b4c005d24be              # double 0.82950401373923177
	.quad	0x3fef2db6c1b60b0a              # double 0.97433030924034481
	.quad	0x3fef766666273f02              # double 0.98320312454049508
	.quad	0x3fdcbeadc5f8fab8              # double 0.44913811047801344
	.quad	0x3fea815680aee5d5              # double 0.82828831799923341
	.quad	0x3feaaf281e3f2a92              # double 0.83388143451277785
	.quad	0x3fd6528aed532e5c              # double 0.34878800560247725
	.quad	0x3fe4a3aa9ea07728              # double 0.64497881871986795
	.quad	0x3fe90a91cf6c0148              # double 0.78254023086632518
	.quad	0x3fd142e9a749ba30              # double 0.26970902764051896
	.quad	0x3fc9bbe7be7db688              # double 0.20104691315957646
	.quad	0x3fe7a74a1091640c              # double 0.73917105899738678
	.quad	0x3fc4c2fe9e7cd954              # double 0.16220076311737819
	.quad	0x3fdaa1c4a5c6d3b2              # double 0.41612354458930689
	.quad	0x3fdad483c8b6cb00              # double 0.41922087288837417
	.quad	0x3fa08535931ef440              # double 0.032266306122871402
	.quad	0x3fdb756c587255b0              # double 0.42904194486012681
	.quad	0x3fbf05685ca25880              # double 0.12117626439644091
	.quad	0x3fa353fac166a440              # double 0.037750087841523783
	.quad	0x3fd32d358f55972c              # double 0.29963435170644703
	.quad	0x3fe368b217f5b134              # double 0.60653023414264462
	.quad	0x3fbe261d18bfa7d8              # double 0.11776906828131872
	.quad	0x3fdae6bb1c98735c              # double 0.42033269684343622
	.quad	0x3fec5de9bc78c503              # double 0.88646399317636371
	.quad	0x3fde137160c9c344              # double 0.46993669940916427
	.quad	0x3fe7de2cdbe47b00              # double 0.74587099979166283
	.quad	0x3fda4c6f9c0023ca              # double 0.41091528162411051
	.quad	0x3fd19852e14908e4              # double 0.27492210388676441
	.quad	0x3fe05c7004a7fdb8              # double 0.51128388318459539
	.quad	0x3feeb1fbc093b85f              # double 0.95922649014188354
	.quad	0x3fdd8cdb8c8792b4              # double 0.4617222664221956
	.quad	0x3fd44d799ea5c17a              # double 0.31722870343130405
	.quad	0x3fe23d902c68aa47              # double 0.57001503633120698
	.quad	0x3fd5651e7cdbc0fe              # double 0.33429681962208224
	.quad	0x3fd248c952a52090              # double 0.28569253035357978
	.quad	0x3fe08c98887c0c90              # double 0.51716257722036296
	.quad	0x3fee8036e29b033e              # double 0.95315117129221227
	.quad	0x3fe3f5dd4e8eed57              # double 0.62376275390071612
	.quad	0x3fe32442e8dd7f1e              # double 0.59817643624771555
	.quad	0x3fa2e0959236e7b0              # double 0.03686969194264067
	.quad	0x3fd139edc5ab005a              # double 0.26916069320214364
	.quad	0x3fe14a1edbfe1b4a              # double 0.54029791800790261
	.quad	0x3fe94976752f8ee0              # double 0.79021761787268118
	.quad	0x3fc869b56382b230              # double 0.19072596892273586
	.quad	0x3fc8f63189ebb1b8              # double 0.19501322969825963
	.quad	0x3feeba0fb5c0c3f0              # double 0.9602125692236978
	.quad	0x3fde80aed610bd94              # double 0.47660418419669637
	.quad	0x3fe5fd4a2e7505ce              # double 0.68716916154533592
	.quad	0x3fee2b416d402524              # double 0.94278022134782135
	.quad	0x3fecea4a7c52d8c6              # double 0.90359997064549513
	.quad	0x3fb5f048108788b0              # double 0.085697654757981522
	.quad	0x3fef11624172b194              # double 0.97087204726044484
	.quad	0x3fe3092045dd4c3d              # double 0.59486402173423125
	.quad	0x3fe13e8b36b484ea              # double 0.53888474163627831
	.quad	0x3fd8848e1a6f11e6              # double 0.38309052068168936
	.quad	0x3fd2eb6da05661ac              # double 0.29561939866973819
	.quad	0x3fdd639394457f8a              # double 0.45920266608845195
	.quad	0x3fe919b149e2600b              # double 0.78438629560969397
	.quad	0x3fdc815cad49fabe              # double 0.44539563105346847
	.quad	0x3fe7b6910609d7ed              # double 0.74103594951043095
	.quad	0x3fbc357b35570178              # double 0.11019105961077524
	.quad	0x3fee747ef1017853              # double 0.95172068664011034
	.quad	0x3fb4ace42608ef18              # double 0.080763110433448637
	.quad	0x3fd7cfc4a367a75a              # double 0.37205615956792359
	.quad	0x3fd012105e7ba270              # double 0.25110253550386741
	.quad	0x3fef24aa10a45af8              # double 0.97322562456505945
	.quad	0x3fe457293bdb6498              # double 0.6356397790033439
	.quad	0x3fddf460b6aabdfe              # double 0.46804063643045868
	.quad	0x3fd32606d82910ca              # double 0.29919596776404644
	.quad	0x3fd6d05c220250fa              # double 0.35646727868267158
	.quad	0x3fecb1a68cd2a887              # double 0.89668586258382355
	.quad	0x3fe78464b5f96dc8              # double 0.73491130391942594
	.quad	0x3fe832fb96f1cdcc              # double 0.75622348290783625
	.quad	0x3fd74e03df341ba4              # double 0.36413666531773914
	.quad	0x3fcad22a51b98de0              # double 0.20953873625249653
	.quad	0x3fa81306039a07b0              # double 0.047020137729318789
	.quad	0x3fddffd8ebd686c6              # double 0.46874068289808368
	.quad	0x3f7064fa4286e980              # double 0.0040025497223105111
	.quad	0x3fe893af9e3fe420              # double 0.76802807720298815
	.quad	0x3fb6c23646fd6c90              # double 0.088900940257575777
	.quad	0x3fe2fa92ca8d9ee4              # double 0.59308757363484377
	.quad	0x3fe92f3ff3a931c7              # double 0.78701779928228965
	.quad	0x3fe9cc663d227a60              # double 0.80620109501235148
	.quad	0x3fefd889a47074cb              # double 0.99518282048270501
	.quad	0x3fa0a07f09751dc0              # double 0.03247448912093942
	.quad	0x3fe46534b300f1c9              # double 0.63735423051508022
	.quad	0x3fec52cda3487f71              # double 0.88510782138108202
	.quad	0x3fe297876648b989              # double 0.58099718072280482
	.quad	0x3fdaca8dce13e5f6              # double 0.41861291050699323
	.quad	0x3fc079aa8472c4e8              # double 0.12871295420840245
	.quad	0x3fa43239d91a3b10              # double 0.039445693732991782
	.quad	0x3fe598e3aa4e23e6              # double 0.67491324675313247
	.quad	0x3fe0a79fe06f8187              # double 0.52046197733948041
	.quad	0x3fad47f98033cb70              # double 0.057189747714707972
	.quad	0x3fe0ef23a6b2ac45              # double 0.52919180448714853
	.quad	0x3fd9969a27614a96              # double 0.39981702657420592
	.quad	0x3fe51a003de57271              # double 0.65942394341580102
	.quad	0x3feacfa801ff8f98              # double 0.83784866705217365
	.quad	0x3fe980645cff5207              # double 0.79692285693687459
	.quad	0x3fc4c931f77d9aa0              # double 0.16238998970512331
	.quad	0x3fec62fbaef71604              # double 0.8870829026497522
	.quad	0x3fc16706876380e4              # double 0.13595658884788187
	.quad	0x3fd4bb0a6a6de032              # double 0.32391605752445962
	.quad	0x3fe4d9585fe4de94              # double 0.65153139809895544
	.quad	0x3fe623283136323c              # double 0.6917916260877699
	.quad	0x3fd196ab78889fba              # double 0.27482115527027029
	.quad	0x3fe3c5b952a26ec2              # double 0.61788622035552287
	.quad	0x3feda2f571538260              # double 0.92614242681527159
	.quad	0x3fd1ba729dcf3f06              # double 0.27700486575211902
	.quad	0x3fe14c7d78752ba6              # double 0.5405871727647209
	.quad	0x3fe1018bfb4e3875              # double 0.53143881877055199
	.quad	0x3fd7ec35d4aceae0              # double 0.37379213112914833
	.quad	0x3fda43e591c73c80              # double 0.41039408908995512
	.quad	0x3fc6cd022565db44              # double 0.17813135934894764
	.quad	0x3fcd6c4b934adb8c              # double 0.22986740772259073
	.quad	0x3fe7de4aa61e8aca              # double 0.74588520474602515
	.quad	0x3feb0f39312dca67              # double 0.8456083260083006
	.quad	0x3fc9c4efe41c7ca4              # double 0.20132254255529347
	.quad	0x3fec32a5742d91c7              # double 0.88118241015450216
	.quad	0x3fe4e588577f9c87              # double 0.653019114394639
	.quad	0x3febc8087a335e54              # double 0.86816810481372863
	.quad	0x3fe30f59bd1e90fc              # double 0.59562384545691271
	.quad	0x3fd8ac9eb83bf07a              # double 0.3855358885919099
	.quad	0x3f9f2176be9df0a0              # double 0.030401091942153458
	.quad	0x3fd6a93480340030              # double 0.35407745857083039
	.quad	0x3fd7be3ceca2341c              # double 0.37098620518446679
	.quad	0x3fe442ec6fa0bfe6              # double 0.6331693821175548
	.quad	0x3fe1605cc2a22c0a              # double 0.54301298155167044
	.quad	0x3fef2833f53a8760              # double 0.97365758796898305
	.quad	0x3fe58ef447cb208b              # double 0.67370046636735148
	.quad	0x3fea599182450622              # double 0.82343364184652423
	.quad	0x3fcfdbac5fc85a20              # double 0.24889139820943829
	.quad	0x3fcf796784f64c10              # double 0.2458924674252505
	.quad	0x3fe0d8bc8c30a0cf              # double 0.5264570940098795
	.quad	0x3feb8559f76831cf              # double 0.86002825090104718
	.quad	0x3fd135d397cb8fe0              # double 0.26891031097170348
	.quad	0x3fe155490e196fa3              # double 0.54166081193715276
	.quad	0x3feb92661f99e24e              # double 0.86162096187678983
	.quad	0x3fe9cd584774fa7d              # double 0.80631650883135786
	.quad	0x3fd4e3f102629f12              # double 0.32641244156774107
	.quad	0x3fc330905c5dbfe4              # double 0.14991955289906322
	.quad	0x3fee020b7e226656              # double 0.93774962077732016
	.quad	0x3fc92507a6dfd2d0              # double 0.1964425625625581
	.quad	0x3fd92bb622795b5e              # double 0.39329293600660786
	.quad	0x3feb42508acff306              # double 0.85184504615571721
	.quad	0x3febe68284e27d8d              # double 0.87188840822266089
	.quad	0x3febda2d0843cf13              # double 0.8703828011916549
	.quad	0x3fe491fa73c11526              # double 0.64281962021110384
	.quad	0x3fdcda8b665fca2a              # double 0.45083889958837864
	.quad	0x3fecd0c4adc87d16              # double 0.90048440877936531
	.quad	0x3fe902964847ed15              # double 0.78156580083251248
	.quad	0x3fb9c89bd21782c8              # double 0.10071729544825836
	.quad	0x3fc0e5b8c3f83104              # double 0.13201055115531102
	.quad	0x3fc7bf8c970a312c              # double 0.18553311705580577
	.quad	0x3f82eba3faceb400              # double 0.0092385111728052748
	.quad	0x3fc0fbe8c09ff9c0              # double 0.13268765836251184
	.quad	0x3fc937ae24806abc              # double 0.19701172621065222
	.quad	0x3fe66fad661f2e23              # double 0.70113248773254033
	.quad	0x3feb8f57da4de619              # double 0.86124794614369471
	.quad	0x3fd72093f36314aa              # double 0.36136339920296712
	.quad	0x3fc19ca598ec8654              # double 0.13759298293102751
	.quad	0x3fd13ff87f1d7f00              # double 0.26952946103664033
	.quad	0x3fc35a17897dcf88              # double 0.1511868878693543
	.quad	0x3fe4ec14b91ca4ba              # double 0.65381847529092529
	.quad	0x3fa13a61392cd260              # double 0.033648527364140035
	.quad	0x3fcfb2ebc2551d68              # double 0.24764773358240721
	.quad	0x3fcfdcc27655b738              # double 0.2489245488936207
	.quad	0x3fecc0a6973026b6              # double 0.89851693657802545
	.quad	0x3fe1ef5def9c9ee1              # double 0.56046959685496855
	.quad	0x3feaa0f48795c32b              # double 0.8321478508133614
	.quad	0x3fc13ce386f76f78              # double 0.13467067804492294
	.quad	0x3fe04b0db85349b9              # double 0.50916181565326391
	.quad	0x3fd4314c9596b836              # double 0.31550898178363995
	.quad	0x3fd0dadc4f870612              # double 0.26335819021559914
	.quad	0x3fe0c304adbded11              # double 0.52380594190563745
	.quad	0x3fef84e35b7bfb33              # double 0.98497169368770298
	.quad	0x3fd2009a97e67a70              # double 0.28128685792936547
	.quad	0x3fb83eeec302ea80              # double 0.094710276231959156
	.quad	0x3fe2c4c989300651              # double 0.58652188105060976
	.quad	0x3feaef344afba702              # double 0.84169973988647961
	.quad	0x3fd9ecb148457158              # double 0.4050715642713576
	.quad	0x3fda5fb8e0d1fcc0              # double 0.41209241824249077
	.quad	0x3fe7f53cfdd56694              # double 0.74868630959390936
	.quad	0x3fd2078aff4e379c              # double 0.28171038562947515
	.quad	0x3fd7a21279a4d97a              # double 0.36926710013667441
	.quad	0x3fe419d6bd3bb8f2              # double 0.62815415343882663
	.quad	0x3fc97a21d203bd9c              # double 0.19903967623347973
	.quad	0x3fd1bc3d9f7310e2              # double 0.27711430140722204
	.quad	0x3fe284186700953f              # double 0.57862491719848907
	.quad	0x3fec1bad1352a0fd              # double 0.87837842725733106
	.quad	0x3fda3ef8d307bc06              # double 0.41009350403231826
	.quad	0x3fef9cbf58cf01ca              # double 0.987884210066164
	.quad	0x3fe3704747b0f31f              # double 0.60745586397351647
	.quad	0x3fe57c4be624dba1              # double 0.67142291021342626
	.quad	0x3fe7ebf019491494              # double 0.74755101145332725
	.quad	0x3fe8ecc973d5a0e8              # double 0.77890465377734319
	.quad	0x3fe283c0295822e1              # double 0.57858284068160171
	.quad	0x3f9694c439de6620              # double 0.022051874191310827
	.quad	0x3fc49169d3292ca8              # double 0.16068766413295532
	.quad	0x3fc49ef74f9fa55c              # double 0.161101259115905
	.quad	0x3fb6f543ed865a70              # double 0.089679952134568585
	.quad	0x3fe505398af8a881              # double 0.65688779013477483
	.quad	0x3fefa75612ea0d3d              # double 0.98917678541366849
	.quad	0x3fc14a7c1d0e89a4              # double 0.13508559626377548
	.quad	0x3fea451cca26f231              # double 0.82093657954061972
	.quad	0x3fd44f278e8450da              # double 0.31733120839750273
	.quad	0x3fd123d8e4344a74              # double 0.26781294141361589
	.quad	0x3fe8119c3a1a48dc              # double 0.75214969013384402
	.quad	0x3fe639d953b174bb              # double 0.69456163736653964
	.quad	0x3fdd8ea66c059666              # double 0.4618316702747961
	.quad	0x3fd67a19deb662a6              # double 0.35120245694410313
	.quad	0x3fec985b19eec2c4              # double 0.89359812798473869
	.quad	0x3fc7726bedbf0964              # double 0.18317937000945073
	.quad	0x3fec395c6887b764              # double 0.88200207153361676
	.quad	0x3fe28a4005981b42              # double 0.57937623112307102
	.quad	0x3fe86d90c63e68d6              # double 0.76337469787110979
	.quad	0x3fe67334375bf19d              # double 0.70156298458418898
	.quad	0x3fd4bfb4c0cc50d8              # double 0.32420080974521914
	.quad	0x3fe9487e0ae9dc6f              # double 0.79009916430994831
	.quad	0x3fea458ee7f7b580              # double 0.82099099451231439
	.quad	0x3fece74f186550ef              # double 0.90323595776365362
	.quad	0x3f97b1be3db461a0              # double 0.023138973728323742
	.quad	0x3fee85b93ef8fd14              # double 0.95382368373239723
	.quad	0x3fe62efc6e86bed7              # double 0.69323560321023592
	.quad	0x3feb88336652081d              # double 0.8603760717817327
	.quad	0x3fe45599ddc4821e              # double 0.6354493457220689
	.quad	0x3fc2a4ad3200a680              # double 0.1456505293038397
	.quad	0x3fea28e2c2a10ae9              # double 0.81749094022265212
	.quad	0x3fceadda6cbca264              # double 0.23968057927528996
	.quad	0x3fe56e30ff22b4a0              # double 0.66970109778562303
	.quad	0x3fe92e8fd11f48fa              # double 0.78693381160908804
	.quad	0x3fec6df543cd108f              # double 0.8884226154555267
	.quad	0x3fcf06b423668e74              # double 0.24239207962556331
	.quad	0x3feceb6dc0af6eec              # double 0.90373885759205796
	.quad	0x3fe124ff50c9e821              # double 0.53576627520601872
	.quad	0x3fda2880bc22fdf4              # double 0.4087220990440692
	.quad	0x3fce4336ec53fa8c              # double 0.23642622508483091
	.quad	0x3fcf2a922481a9cc              # double 0.24348665983718687
	.quad	0x3fe2e142b4a9b99b              # double 0.58999762807598033
	.quad	0x3fd1cb797c89ce54              # double 0.27804410135215574
	.quad	0x3fed483b6f5d87c0              # double 0.91506740332646785
	.quad	0x3fe64b086664e0a9              # double 0.69665927885855183
	.quad	0x3fcdaf0ce39768a0              # double 0.23190461266387263
	.quad	0x3fd41fb761ddb852              # double 0.31443581158862799
	.quad	0x3fce976603ee3f80              # double 0.23899531547476371
	.quad	0x3fde5f83a1b26d08              # double 0.47457972326965647
	.quad	0x3feabe84b1904b5a              # double 0.83575663261795374
	.quad	0x3fe2808d7886c092              # double 0.57819245853717605
	.quad	0x3fe47cf50ec2862c              # double 0.64025357134614103
	.quad	0x3fef5d4deb2596e4              # double 0.98013969351879071
	.quad	0x3feb1c2a7ed38957              # double 0.84718823214306382
	.quad	0x3fc572cf72549dc8              # double 0.16756623346848998
	.quad	0x3fd13eb63bc3ed4c              # double 0.26945262752970645
	.quad	0x3fef9f05f6005c03              # double 0.98816202208661285
	.quad	0x3f92b89f57500700              # double 0.018282403663767433
	.quad	0x3fc92967c5d2ff38              # double 0.19657609137902354
	.quad	0x3fb21856d4025338              # double 0.07068388629916178
	.quad	0x3fef78527985d2cf              # double 0.98343776450072961
	.quad	0x3fea73dbb10d815d              # double 0.82664284306160207
	.quad	0x3fe4a30e62b356ba              # double 0.6449043205018008
	.quad	0x3fee2797f92120de              # double 0.94233320863807157
	.quad	0x3fc0bf66890cb3b4              # double 0.13084108058811028
	.quad	0x3fc557035952ca20              # double 0.16671792851919154
	.quad	0x3fb5ee9b08d1d4d0              # double 0.085672082570300789
	.quad	0x3fe5c7473fdde097              # double 0.68057596658674668
	.quad	0x3fe4f24f68ff4d4e              # double 0.65457888133315989
	.quad	0x3fd4e6067ed1b6c8              # double 0.32653963455855406
	.quad	0x3fd163bdf78c6f9c              # double 0.27171277212777922
	.quad	0x3fd1699a93aaf204              # double 0.27207054539374576
	.quad	0x3fd259759924ab06              # double 0.28671016650575643
	.quad	0x3fef0fc1fa93d92a              # double 0.97067355099605845
	.quad	0x3fcda2c5f58cd7b8              # double 0.23152994622949818
	.quad	0x3feb3f4f7d9752ec              # double 0.85147833375466808
	.quad	0x3fdf0a597408993e              # double 0.48500667888074023
	.quad	0x3feaa2dbfd9ca6ed              # double 0.83238029035166294
	.quad	0x3fb0d29cf2a56c28              # double 0.065713700523176599
	.quad	0x3fd50585ab8f3544              # double 0.32846204522941869
	.quad	0x3f9db3f5a93b85e0              # double 0.029006803945668014
	.quad	0x3fb1181a078f5760              # double 0.066774012418446826
	.quad	0x3fcbcdfd9d3dc80c              # double 0.21722383668708323
	.quad	0x3fe04a082876d215              # double 0.50903709319260548
	.quad	0x3fa2f828fe0d6590              # double 0.037049561512229379
	.quad	0x3fce5ac142d92334              # double 0.2371446205527491
	.quad	0x3fe0db659e489b83              # double 0.52678185381670095
	.quad	0x3fb9845a8b106000              # double 0.099675806952632229
	.quad	0x3fca8313a468106c              # double 0.20712514426861917
	.quad	0x3f882daf9f978040              # double 0.011805889184813734
	.quad	0x3fd02a362a23433a              # double 0.25257639040960422
	.quad	0x3fea8e095ba743ec              # double 0.82983844662714778
	.quad	0x3fd3f47466d4ab60              # double 0.31179533044876528
	.quad	0x3fed1ac86398f0f6              # double 0.90951938107130448
	.quad	0x3fb86743b4078ae0              # double 0.095325690701013154
	.quad	0x3fe5fa744925e00c              # double 0.68682302748402568
	.quad	0x3fe1b23eaecee6fa              # double 0.55300840513447658
	.quad	0x3fced73c5e9386a8              # double 0.24094347589475729
	.quad	0x3fd5791a0aa54ce0              # double 0.33551646270389135
	.quad	0x3fe46d09026d5496              # double 0.63830996011769758
	.quad	0x3fde07d175e87d44              # double 0.46922718538731467
	.quad	0x3fc928dc9c6a37bc              # double 0.19655950200507089
	.quad	0x3fe08d84f9ad4e9a              # double 0.51727532162699963
	.quad	0x3fd56d1f2d008da2              # double 0.33478526491873073
	.quad	0x3fe37c2320cf395b              # double 0.60890346916293525
	.quad	0x3fd367f8233d6ada              # double 0.30322078172109246
	.quad	0x3fdc1197dfbe5352              # double 0.4385738072390285
	.quad	0x3fe0253000c86ce9              # double 0.50453949120438069
	.quad	0x3fe7f38188859315              # double 0.74847485222253118
	.quad	0x3fe21f8bef3f07ea              # double 0.56635090568329116
	.quad	0x3fd12262c597e1ce              # double 0.26772374435634283
	.quad	0x3feb7a301390e577              # double 0.85866550275311126
	.quad	0x3fe708b34c3cd1e7              # double 0.71981205835487294
	.quad	0x3fd26734fda97a52              # double 0.28754925510103135
	.quad	0x3fd1e3ffcb3c3c56              # double 0.2795409664840397
	.quad	0x3fe21fd3f73fa00a              # double 0.56638525286416663
	.quad	0x3fd8ee59e686d400              # double 0.38954780113573406
	.quad	0x3fd0e5ba2408e158              # double 0.26402143019688173
	.quad	0x3fe42874e83c45e2              # double 0.62993855818256983
	.quad	0x3fef3fef083e2f42              # double 0.97655440912192426
	.quad	0x3fe5df16767caede              # double 0.68348239080429685
	.quad	0x3fa659886544a270              # double 0.043651831018284848
	.quad	0x3fe3179e2fca0c30              # double 0.59663304647290794
	.quad	0x3fdb5c17f152550a              # double 0.42749594275058256
	.quad	0x3fecd8753889da5a              # double 0.90142308275865024
	.quad	0x3fcb1ee6cf0c6064              # double 0.21188054189474592
	.quad	0x3fd1655e67e0b70c              # double 0.27181205887141924
	.quad	0x3fda0b6a177ecc36              # double 0.40694668096984132
	.quad	0x3feab9abd228fdf2              # double 0.83516493842028994
	.quad	0x3fb63786cab4ecd8              # double 0.086784767617177905
	.quad	0x3fe8e7052ae25b68              # double 0.77820070625135163
	.quad	0x3fdc4f04a72422c4              # double 0.44232288668039765
	.quad	0x3fc81f70cf2a4df8              # double 0.18845949283114272
	.quad	0x3fbc9d01d7cb47c0              # double 0.11177073973092799
	.quad	0x3fc279714d595104              # double 0.14433113362122907
	.quad	0x3f9e30e124603ca0              # double 0.029483335347376127
	.quad	0x3fde8f60950d073e              # double 0.47750105434180401
	.quad	0x3fe2baf760446a85              # double 0.58532303621480308
	.quad	0x3fa6c049ee875cf0              # double 0.044435797087936879
	.quad	0x3fe9a155f2ff6ba7              # double 0.80094430408950223
	.quad	0x3fee8803ea78ea80              # double 0.95410342975021933
	.quad	0x3fe5794a9e022db9              # double 0.67105608807599204
	.quad	0x3fdf7645834545ca              # double 0.49159372157472758
	.quad	0x3fe97fc43570f263              # double 0.79684648931249702
	.quad	0x3fee9b76ddb3d954              # double 0.95647757817531919
	.quad	0x3fd8b57876d6db54              # double 0.3860760841884503
	.quad	0x3fea243d74f6d9d5              # double 0.81692383617956443
	.quad	0x3fe3353cc5e415ab              # double 0.60024870539262076
	.quad	0x3fd07c96f856d252              # double 0.25760435344571875
	.quad	0x3fde8decb2186a0a              # double 0.47741238968015465
	.quad	0x3fb3be7031dafdd0              # double 0.07712460724996295
	.quad	0x3fd4ff2dfffbceae              # double 0.32807493208313587
	.quad	0x3fe2f973a58d534c              # double 0.59295065245042045
	.quad	0x3fc7f6c965559ee8              # double 0.18721883247348292
	.quad	0x3fd65fedaab2117c              # double 0.34960500401964345
	.quad	0x3fe28910c3249274              # double 0.57923162568893227
	.quad	0x3fbb58eedf320e78              # double 0.10682576130971622
	.quad	0x3fdc47c669d4a77a              # double 0.44188080153491394
	.quad	0x3fed16f91ff0f2ce              # double 0.90905433882252296
	.quad	0x3fd09cb6c26b81f0              # double 0.25956505762408622
	.quad	0x3fe40b1522d6bfb2              # double 0.62635285191026058
	.quad	0x3fec98ff57c0f053              # double 0.89367644442928407
	.quad	0x3fe43923525e2519              # double 0.63197485053493374
	.quad	0x3fe7a30445a5d9a0              # double 0.73864949801536639
	.quad	0x3fa91b9280c17fb0              # double 0.049038484780566605
	.quad	0x3fef59d447dfdc8b              # double 0.97971548116665141
	.quad	0x3fef0cf1193a4722              # double 0.97032980849528294
	.quad	0x3fe917fde58e8c54              # double 0.78417868457143891
	.quad	0x3fe9df06f9915f73              # double 0.80847500556681806
	.quad	0x3fe64df9a2701bf6              # double 0.6970184490791087
	.quad	0x3fe8b5f2ddcddaba              # double 0.77221053429715103
	.quad	0x3fe2c05685fa63b2              # double 0.58597875754923323
	.quad	0x3fe832e2cadd5795              # double 0.75621165868754991
	.quad	0x3fd83a22a9d7b2a4              # double 0.37854830347240864
	.quad	0x3fe3c286210a29ae              # double 0.61749559834543333
	.quad	0x3fd36cfa56d70808              # double 0.30352648239579638
	.quad	0x3fefd18e9ee661b7              # double 0.99433070216314589
	.quad	0x3fd163ee84c71e0e              # double 0.27172434774954091
	.quad	0x3fe49b2fd364266e              # double 0.64394370353075003
	.quad	0x3fe07519a5b86c1c              # double 0.51429445616975356
	.quad	0x3fb6e1fc16f7a4d0              # double 0.089385753257050781
	.quad	0x3fd47d0c5cacd006              # double 0.32013234186456463
	.quad	0x3fea1655b9081365              # double 0.81522642268155876
	.quad	0x3fe3261c125396c5              # double 0.59840205745123198
	.quad	0x3fe5a4d6e640eae5              # double 0.67637200328257718
	.quad	0x3fcdf8befbd44b60              # double 0.23415362640715909
	.quad	0x3fe4a956d787d4fd              # double 0.64567129226512032
	.quad	0x3fd0a7892a8c7d8c              # double 0.26022557406573621
	.quad	0x3fc046ad3d080d54              # double 0.12715688209582743
	.quad	0x3fd917faa9e02dae              # double 0.3920885714475969
	.quad	0x3f9bbaa454bf3560              # double 0.027079169914761336
	.quad	0x3fb125f1302e8248              # double 0.066985201132873873
	.quad	0x3fbb39fdd3c7dec8              # double 0.10635363026073741
	.quad	0x3fb7797d02a6ed00              # double 0.091697514674638824
	.quad	0x3fedc2382ac6981d              # double 0.92995842318191857
	.quad	0x3f8a886097b39180              # double 0.012955431584892763
	.quad	0x3fd32a3487d58f34              # double 0.29945100083408538
	.quad	0x3fce0276f6f73110              # double 0.23445021685473266
	.quad	0x3fe8c3cbcdb5c0f7              # double 0.77390089204530355
	.quad	0x3fd1e87fd0379278              # double 0.2798156293268117
	.quad	0x3fdbda79cd97cf36              # double 0.43520970418397853
	.quad	0x3fee29fcf5023783              # double 0.9426255021405584
	.quad	0x3fe7d49e79f7b4c4              # double 0.74470447370335835
	.quad	0x3febc0a661c52cc9              # double 0.86726683707947771
	.quad	0x3fc2996a2a2ec100              # double 0.14530684528063631
	.quad	0x3fcd606488823420              # double 0.22950417199572914
	.quad	0x3fea76b186d88c29              # double 0.82698894822204239
	.quad	0x3fce81d68955a138              # double 0.23833734231744486
	.quad	0x3fd0af2926865e7c              # double 0.26069096338458286
	.quad	0x3fecc7aeb544e67e              # double 0.89937529949311545
	.quad	0x3fd9a290865d4828              # double 0.40054715272447305
	.quad	0x3fe0fd439e02fe08              # double 0.53091603147180511
	.quad	0x3fd6b18dc5fe24d4              # double 0.3545870240710205
	.quad	0x3fb5904c00cf2170              # double 0.084233045766387126
	.quad	0x3fd75e3092a44f5c              # double 0.36512388535014906
	.quad	0x3fa85f0593df62d0              # double 0.047599958706717183
	.quad	0x3fb7a41990f9a270              # double 0.092347715277023345
	.quad	0x3fd962f2c75bf100              # double 0.39666432827631581
	.quad	0x3feb4da528d4f0f5              # double 0.85322816824876091
	.quad	0x3fe9a221e0032011              # double 0.80104154350647339
	.quad	0x3fde4d4339a2a1d0              # double 0.47346573475308862
	.quad	0x3fe6311e6abc5085              # double 0.69349594923780045
	.quad	0x3fd1ed4ad982a1f2              # double 0.28010817757834083
	.quad	0x3fd03a4df5507808              # double 0.25355862575986565
	.quad	0x3fd48326d22398ec              # double 0.32050486108199894
	.quad	0x3fee090504a41c98              # double 0.93860102564294134
	.quad	0x3fdd3f29f0233e92              # double 0.45698021365112951
	.quad	0x3fde6eecf858b3ba              # double 0.47552036526286268
	.quad	0x3fc65a1ef541a520              # double 0.17462527251635951
	.quad	0x3fec1ff04f90fdfb              # double 0.87889876880939199
	.quad	0x3fe0ec2e994ee548              # double 0.52883081381802644
	.quad	0x3fe229e54036cca7              # double 0.56761419812973635
	.quad	0x3fea384a47d0669a              # double 0.81937135721382792
	.quad	0x3febff68bedb8c35              # double 0.87492787625195112
	.quad	0x3fd661b672ce1172              # double 0.34971390925809154
	.quad	0x3fcb2357ba01ad3c              # double 0.21201607305861525
	.quad	0x3fe714392a36c11f              # double 0.72121866459750439
	.quad	0x3fb1d451b5ee3020              # double 0.069645983616454021
	.quad	0x3f913531f1fc33e0              # double 0.016804485697367144
	.quad	0x3fe72495f0693f20              # double 0.72321602778717775
	.quad	0x3fe77d31f35e156d              # double 0.73403260739057219
	.quad	0x3fefab65dd8c4bd6              # double 0.98967259665584595
	.quad	0x3fd0223ebf826730              # double 0.25209015562141968
	.quad	0x3fead7b86e9792e3              # double 0.83883306121842016
	.quad	0x3fe33e19af4d61b8              # double 0.60133060682988226
	.quad	0x3fda8bad40bb80b6              # double 0.41477519341971048
	.quad	0x3fb456b0da6d2fe8              # double 0.079447797133240905
	.quad	0x3fe09cad9f9d6ec4              # double 0.51912575888442136
	.quad	0x3fcd376f05ad08ac              # double 0.22825420167106836
	.quad	0x3fc0a872cce0bad4              # double 0.13014063838769252
	.quad	0x3fedb7db30bfad85              # double 0.92869338532675327
	.quad	0x3fd043fc7ec60610              # double 0.25414955501773395
	.quad	0x3feae9c607a4d519              # double 0.84103681080765391
	.quad	0x3feb7e5134495b5d              # double 0.85916958057610382
	.quad	0x3fd7ffc50e3f8c92              # double 0.37498594657353934
	.quad	0x3fd0657e08fb54a0              # double 0.25619459988713267
	.quad	0x3fdb09f49a1f243a              # double 0.42248263407651943
	.quad	0x3fcfcf937e35d9a0              # double 0.24852222120871392
	.quad	0x3feda44211927967              # double 0.92630103523314922
	.quad	0x3fe33ab58e3a7ac3              # double 0.6009166505717406
	.quad	0x3fc57ca320dbe310              # double 0.16786612610283003
	.quad	0x3feac6cd3f69ceb3              # double 0.83676779160892634
	.quad	0x3fc8abb1a725ad88              # double 0.19273968373759609
	.quad	0x3fe39a148a1b366c              # double 0.61255862211119227
	.quad	0x3fdff47bc8028038              # double 0.49929708988384247
	.quad	0x3fb00c2ed01dcdf8              # double 0.062685895738290642
	.quad	0x3fc70564ab530a0c              # double 0.17985208859870772
	.quad	0x3fe8b49b2cfbdba8              # double 0.77204664979841642
	.quad	0x3fe1644bd1fa373d              # double 0.54349318515026079
	.quad	0x3fd2418365ababaa              # double 0.28524861267822621
	.quad	0x3fbe426019c9eb70              # double 0.11820030812843441
	.quad	0x3fc4246558d690ac              # double 0.1573607143192296
	.quad	0x3fe08e67271f37bb              # double 0.51738317147259438
	.quad	0x3fa9bbac0e1d5bf0              # double 0.050259949419959926
	.quad	0x3fe3ef17b19eb75d              # double 0.62293610278514289
	.quad	0x3fb6fbc71a8e7940              # double 0.089779323562173552
	.quad	0x3fc6ecd8df12a2a8              # double 0.17910300152040759
	.quad	0x3fdd0b297a429cd6              # double 0.45380627574418264
	.quad	0x3fe70819c983a450              # double 0.71973885877845056
	.quad	0x3fe9c373355ca6ae              # double 0.80510864660501169
	.quad	0x3fbeac9e1e638830              # double 0.11982143632806763
	.quad	0x3fe096903f809898              # double 0.5183793297080852
	.quad	0x3fc5c36ee9c83590              # double 0.17002664961948399
	.quad	0x3fe38baeb612044c              # double 0.61080108223553387
	.quad	0x3fd1d21198555e0c              # double 0.27844657779994075
	.quad	0x3fc98d306966b858              # double 0.19962124964280537
	.quad	0x3fbda6aa5cab9e80              # double 0.11582436335049273
	.quad	0x3fcbafe93cd05e90              # double 0.21630588025503927
	.quad	0x3fd012fd4168c8fa              # double 0.25115901363018589
	.quad	0x3fd9980d6bbbd48c              # double 0.39990554352636631
	.quad	0x3fe682a975320d04              # double 0.7034499443983866
	.quad	0x3fe128231ea124f3              # double 0.53614955885237092
	.quad	0x3f96683634a85960              # double 0.021881911243405994
	.quad	0x3fb8f07884f875f0              # double 0.097419292891991693
	.quad	0x3fef27aec3a7bd06              # double 0.97359407628928873
	.quad	0x3fd1346d168ef404              # double 0.26882483675927937
	.quad	0x3fe4a0ff7cac03f3              # double 0.64465307569491725
	.quad	0x3f9282835f496b00              # double 0.018075993243068744
	.quad	0x3fd8e3516b83ac06              # double 0.38887439250419253
	.quad	0x3fba47ea5cc42998              # double 0.10265984310914289
	.quad	0x3fcf002b90634a28              # double 0.24219269323528292
	.quad	0x3fd5607e49b7aae0              # double 0.33401448439569315
	.quad	0x3f95361d245e3580              # double 0.020714240402914808
	.quad	0x3f9fda156c35f7a0              # double 0.031105360726989439
	.quad	0x3fa662fc61ea9c20              # double 0.04372395224827863
	.quad	0x3fe0614678933277              # double 0.51187442350199219
	.quad	0x3f9b37d91ec4dc60              # double 0.02658023119257924
	.quad	0x3fecece2cdc60973              # double 0.90391674223091767
	.quad	0x3fe47a48677b7973              # double 0.63992710315123558
	.quad	0x3fd5e854515c6f16              # double 0.34230525918404575
	.quad	0x3fde866e57ac16e4              # double 0.47695501863232281
	.quad	0x3fe9f4ddce07133e              # double 0.81114092101834223
	.quad	0x3fd46ed5f3c7ff0e              # double 0.31926487738381659
	.quad	0x3fd2528d9c296e78              # double 0.28628864526920195
	.quad	0x3fa2f89a5cdd1570              # double 0.037052940212144558
	.quad	0x3fe9db8ef4152b3a              # double 0.80805156395340494
	.quad	0x3fd753d0fd1e0758              # double 0.36449074476705823
	.quad	0x3fe99ffe00e4b6bb              # double 0.80078029798979544
	.quad	0x3feb9ee8a56606b5              # double 0.86314804367449105
	.quad	0x3fcd84f280ada368              # double 0.2306197288810623
	.quad	0x3fce5ea742937e88              # double 0.23726359129704044
	.quad	0x3fea134526d18562              # double 0.8148523100063978
	.quad	0x3fde6a07b8aeafb8              # double 0.47522156749141287
	.quad	0x3fdd692556f3d914              # double 0.45954259387453189
	.quad	0x3fee579637014945              # double 0.94819174521607208
	.quad	0x3fd2b57d1325062a              # double 0.29232718343345943
	.quad	0x3fe640d7c3c15fd9              # double 0.69541538461180175
	.quad	0x3fc2ca3b1086af70              # double 0.14679659182490523
	.quad	0x3fe2ba964505506f              # double 0.58527673225991161
	.quad	0x3fe152376d332272              # double 0.54128619506907527
	.quad	0x3fee00fd0c49f580              # double 0.93762066269088962
	.quad	0x3fbf2c0067c31d70              # double 0.12176516087776235
	.quad	0x3fc554de68e763a0              # double 0.16665248987444858
	.quad	0x3fe58df836c56d5f              # double 0.6735802716970446
	.quad	0x3fbe333e267016c8              # double 0.11796940267967237
	.quad	0x3fe132aeecbffbad              # double 0.53743692627164352
	.quad	0x3fe7dee6c9019093              # double 0.74595965632444672
	.quad	0x3f90e51b6ae77240              # double 0.016498974227817209
	.quad	0x3fe3372f24010b28              # double 0.60048634559675396
	.quad	0x3fd75170c5bc9fa8              # double 0.36434573469386544
	.quad	0x3fe7ad469dc27601              # double 0.7399018365137523
	.quad	0x3f9e2935aae741a0              # double 0.02945407729731786
	.quad	0x3fd630883284a1ba              # double 0.34671215947539802
	.quad	0x3fe8a5ea2e44c47d              # double 0.77025326763954605
	.quad	0x3fc878f1cefc2068              # double 0.19119093519862251
	.quad	0x3fc3abccf6fe881c              # double 0.15368043957011046
	.quad	0x3fef7e3d4e7d1d19              # double 0.98416009263829373
	.quad	0x3fef300fc7bd277c              # double 0.97461689960003594
	.quad	0x3fc75fc9a3a52750              # double 0.18261070719227712
	.quad	0x3fe1ca8373453fa9              # double 0.55597088350076718
	.quad	0x3fe2dae7c128a9ad              # double 0.5892218372949195
	.quad	0x3fe7c72580e4220c              # double 0.74305987524081862
	.quad	0x3fd97b30027d3338              # double 0.39814377062866724
	.quad	0x3fe6a506a900291b              # double 0.70764477737364773
	.quad	0x3feb4252c9e0fe0f              # double 0.85184611730068294
	.quad	0x3fcbd73b2dd55538              # double 0.21750583398776668
	.quad	0x3fef59787af73edf              # double 0.97967170731314101
	.quad	0x3fe47d79e1fe7c83              # double 0.64031690730543322
	.quad	0x3fd8694d29b61310              # double 0.38142708848344942
	.quad	0x3fe940694d7e79bf              # double 0.78911271224551871
	.quad	0x3fde729db0cd0476              # double 0.47574560418804113
	.quad	0x3fee72176d17349e              # double 0.95142718607680243
	.quad	0x3fe47e8dcfd0e8c6              # double 0.64044848050186753
	.quad	0x3fdf0dc5bab502b0              # double 0.48521559937584424
	.quad	0x3fe1f705a98f433a              # double 0.56140406720269387
	.quad	0x3feaa05d8f613324              # double 0.83207586292119062
	.quad	0x3fe8129a7805663c              # double 0.75227092210406665
	.quad	0x3fe02f898e6cf3e1              # double 0.5058028966665199
	.quad	0x3fc74c6c42ea0184              # double 0.18201974170007074
	.quad	0x3fa7386f6a0b44e0              # double 0.045352441496683715
	.quad	0x3fc4d3bdb6a8a0b8              # double 0.16271182459718658
	.quad	0x3fe7e36e06529b97              # double 0.74651242480182389
	.quad	0x3fe81c331e06e29a              # double 0.75344234337451899
	.quad	0x3fe439018c67f69f              # double 0.63195874617641212
	.quad	0x3fefb894fb6781ac              # double 0.99128197767645565
	.quad	0x3fedbc845c2c21fe              # double 0.92926233293934479
	.quad	0x3fef875a33ce79a3              # double 0.98527250402894528
	.quad	0x3fd84eee75644c4e              # double 0.37981759513894964
	.quad	0x3fdddf3c387ce9e0              # double 0.46675019756699321
	.quad	0x3fe25372dd03e40f              # double 0.57268660704642282
	.quad	0x3fc3859978f7aad0              # double 0.15251463324178482
	.quad	0x3f9b900b8cdf7840              # double 0.026916676018906793
	.quad	0x3fe279f2fc40492e              # double 0.57738637225910394
	.quad	0x3fe95cdd06e6620c              # double 0.79258586261409069
	.quad	0x3fe78c71ec311169              # double 0.73589416629014892
	.quad	0x3fc07b3a6aae9984              # double 0.12876062592586035
	.quad	0x3fb4992c8a5a54f0              # double 0.080462249543717723
	.quad	0x3fc312fc85ac9f48              # double 0.14901691939416595
	.quad	0x3fda91b9cd9fd598              # double 0.41514439659598557
	.quad	0x3fd08a728169bf44              # double 0.25845015180583553
	.quad	0x3fc7915d1d60130c              # double 0.18412364897098887
	.quad	0x3fe6efb85a7c8914              # double 0.71676271126878754
	.quad	0x3fe97ac3a8d02db1              # double 0.79623587580993249
	.quad	0x3fdb0888cdeb9d6e              # double 0.42239589795504784
	.quad	0x3fefe1190839e85c              # double 0.9962277565639499
	.quad	0x3fe24250e40e9c06              # double 0.57059521238704813
	.quad	0x3fd9aba1b1b28faa              # double 0.40110056260368288
	.quad	0x3feb72e7a211a552              # double 0.85777646688544906
	.quad	0x3fec504f3620d2b3              # double 0.88480339595715518
	.quad	0x3fdebbcc0c5dbdd4              # double 0.48021222312578726
	.quad	0x3fb497e2e42f7628              # double 0.080442600926709518
	.quad	0x3fef416f5c6e5d5e              # double 0.97673767140342327
	.quad	0x3fd35b016bc97ac2              # double 0.30242953802182282
	.quad	0x3fd59c1e60fecde0              # double 0.33765372726631249
	.quad	0x3fd868b3ab59f506              # double 0.38139049275908155
	.quad	0x3feb02e4490b2c98              # double 0.84410299555146917
	.quad	0x3fe0a19ad44d5409              # double 0.51972714867827208
	.quad	0x3fe0dd81c7bf0276              # double 0.52703942311207075
	.quad	0x3fe03b0e67eaffc5              # double 0.5072090177200087
	.quad	0x3fe2df8baa40b1a6              # double 0.58978827717287596
	.quad	0x3fe4edef4001c690              # double 0.65404474736551954
	.quad	0x3fdcfbba00551b98              # double 0.45286417038408322
	.quad	0x3fc4fe7c9693b40c              # double 0.16401631691351815
	.quad	0x3fc11c889b502428              # double 0.1336832769741545
	.quad	0x3fb9fc9adc7e4c28              # double 0.10151069529665391
	.quad	0x3fe598711faa69f8              # double 0.67485862908080119
	.quad	0x3fdb51ecd9d116d4              # double 0.42687531729857864
	.quad	0x3fc460bf65cd3338              # double 0.15920250387935098
	.quad	0x3fe62419690bcf18              # double 0.69190664784261724
	.quad	0x3fedec25818d9acc              # double 0.93507647803638738
	.quad	0x3fdde19e73ac6552              # double 0.46689568802101633
	.quad	0x3fe7831a73e58911              # double 0.7347538245778954
	.quad	0x3fe71606f256f9dc              # double 0.72143885929090912
	.quad	0x3febfdae2b2e261d              # double 0.87471683915754606
	.quad	0x3fd5e507587bafde              # double 0.34210380211766089
	.quad	0x3fe3813978deee32              # double 0.60952447516996799
	.quad	0x3fed9b281f44d7f7              # double 0.92519003016673096
	.quad	0x3fe27995ebc5b505              # double 0.57734199570919087
	.quad	0x3fde99f451c7c05e              # double 0.47814662920337081
	.quad	0x3fdbb5a8603e1136              # double 0.43296250723530549
	.quad	0x3fc5607a54f0fae8              # double 0.16700677058721358
	.quad	0x3f8080c9a222e780              # double 0.0080581429104886748
	.quad	0x3fc3b94b3f08aa9c              # double 0.15409222200226658
	.quad	0x3fe409d2ecc0621e              # double 0.62619920959975039
	.quad	0x3fe60234693f23f0              # double 0.68776913219437397
	.quad	0x3fdfd367bcb3c6a2              # double 0.49727815082506244
	.quad	0x3fb641b5d0e897a8              # double 0.086940158370082288
	.quad	0x3feefae40fb34b39              # double 0.96812632624128192
	.quad	0x3fd1863180114efe              # double 0.27381551272013371
	.quad	0x3fe214b3ecbe7dc5              # double 0.56502720107158011
	.quad	0x3fecf1ef2dfe9404              # double 0.90453299506464235
	.quad	0x3fca41785d9fd784              # double 0.20512299129012146
	.quad	0x3fe8dd49b7a5f255              # double 0.77701269024653163
	.quad	0x3fda1e07663cd79a              # double 0.40808281883379893
	.quad	0x3fc4cc55333c5654              # double 0.16248574258559023
	.quad	0x3fef48c97a1c2aaa              # double 0.97763513421644643
	.quad	0x3fd33e352296bc72              # double 0.30067184808553471
	.quad	0x3fddca02b035e9b2              # double 0.46545474250856522
	.quad	0x3fe08bd30e7a7294              # double 0.51706841304583628
	.quad	0x3fd264f8352af85e              # double 0.28741269294903826
	.quad	0x3febfd6498f088ca              # double 0.8746817576505006
	.quad	0x3fa997224db21c80              # double 0.049981185898155367
	.quad	0x3f9970c4819ff740              # double 0.024844236766504268
	.quad	0x3fea5251f2e323b6              # double 0.82254884184759791
	.quad	0x3fec7c95027fb04e              # double 0.89020777214092006
	.quad	0x3fefc10cdbcb8dad              # double 0.99231570175873218
	.quad	0x3feb9658dc5dcf15              # double 0.86210291900940439
	.quad	0x3fd0401e7055247a              # double 0.25391350717524797
	.quad	0x3fdb27cfc253ec30              # double 0.42430490472151217
	.quad	0x3fbe1f223acf2ea0              # double 0.11766256271146824
	.quad	0x3fe70a516018968e              # double 0.72000950592765078
	.quad	0x3feaa798108f46ec              # double 0.83295825228034692
	.quad	0x3fbbc6de63d2c148              # double 0.10850324570742942
	.quad	0x3fd700f3233bb9de              # double 0.35943296852829387
	.quad	0x3fe8f2ce3576a653              # double 0.77963934366307297
	.quad	0x3fbf3cd731306278              # double 0.12202210379508382
	.quad	0x3fcf00b53febae24              # double 0.24220910664676965
	.quad	0x3fde486790e4269e              # double 0.47316922330410616
	.quad	0x3fd6068c24525390              # double 0.34414962336568866
	.quad	0x3feb7110f22814cf              # double 0.85755202575878708
	.quad	0x3fd5f0f8cb822eda              # double 0.34283275483970288
	.quad	0x3fe5a52bdff0fb18              # double 0.67641252268353735
	.quad	0x3f860691cae5ce80              # double 0.010754717831083171
	.quad	0x3fd38d2ef558ff10              # double 0.30549215278368624
	.quad	0x3fd1b5e465e6693e              # double 0.2767268176190959
	.quad	0x3fe1a71d09fa7605              # double 0.55164958905123795
	.quad	0x3fb4112fc03a68d0              # double 0.078387245588973586
	.quad	0x3fc3af3c6b75fcc8              # double 0.15378527876962367
	.quad	0x3fd28e6e03c3a5c6              # double 0.28994322173693055
	.quad	0x3fea44c68c00dcb0              # double 0.82089545578391743
	.quad	0x3fdc8d3f66d849d4              # double 0.44612107318348859
	.quad	0x3fed26ca1321021e              # double 0.91098502861138164
	.quad	0x3fe8fd485cd964f3              # double 0.78091829428299631
	.quad	0x3fea72d929f1a804              # double 0.82651956741506227
	.quad	0x3fc13bfc18833100              # double 0.13464308926484847
	.quad	0x3fc8e00a5dc8b944              # double 0.1943371732645095
	.quad	0x3fb97ad07c6e0700              # double 0.09953024900280738
	.quad	0x3fe44f51e91108b3              # double 0.63468261261757275
	.quad	0x3fc18a9a9d71a708              # double 0.13704235732739556
	.quad	0x3fee9f195775fc6c              # double 0.95692126352504436
	.quad	0x3fd52186fe3564ba              # double 0.33017134499602785
	.quad	0x3fee5fb833f75259              # double 0.94918451451901398
	.quad	0x3f6ac7e415d71700              # double 0.0032691435614847775
	.quad	0x3fd354aba640764a              # double 0.30204287753608539
	.quad	0x3fe756a922108157              # double 0.72932869580476278
	.quad	0x3fdc4df85c6f3730              # double 0.44225892092514396
	.quad	0x3fe1ced56ce86827              # double 0.55649825354635574
	.quad	0x3fd6476aaa180d14              # double 0.34810892687546979
	.quad	0x3fa1d76a531e1d10              # double 0.034846613546557603
	.quad	0x3fe1449d597b2e0c              # double 0.53962581135550769
	.quad	0x3fe9b5753c453642              # double 0.80340062877230189
	.quad	0x3fe58bda2a71c1dc              # double 0.67332180299677757
	.quad	0x3fee159441051277              # double 0.94013416957075335
	.quad	0x3fe94342a59d5f11              # double 0.78946049067141832
	.quad	0x3fc847987adfa694              # double 0.18968492507638202
	.quad	0x3fe4e6f13c14685c              # double 0.65319120153732113
	.quad	0x3f8278889f277cc0              # double 0.009018962246896911
	.quad	0x3fe1f8325a56982b              # double 0.56154744762603082
	.quad	0x3fd7f2cda38c391e              # double 0.3741945359369242
	.quad	0x3fcffa4991ac4238              # double 0.24982566464361056
	.quad	0x3fe933beab262c49              # double 0.78756650378762416
	.quad	0x3fda9b2d25e753e4              # double 0.41572121335531009
	.quad	0x3fbe7e704f1a7080              # double 0.11911680155975723
	.quad	0x3fdafa1aef6943fa              # double 0.42151521091460575
	.quad	0x3fee81be63f28c25              # double 0.95333785553919326
	.quad	0x3fd18f88f56ab192              # double 0.27438568083268777
	.quad	0x3feb9fb225e561e4              # double 0.86324412728850719
	.quad	0x3fdf65f84ecb3046              # double 0.49059875197122371
	.quad	0x3fe7c834510ddb14              # double 0.74318900900729767
	.quad	0x3fe6eb38a2a1fa2f              # double 0.71621352924541337
	.quad	0x3fe815d1e38ad277              # double 0.75266355935907725
	.quad	0x3fe760473cbec3a1              # double 0.73050271858493343
	.quad	0x3fd5e13b06a04712              # double 0.34187198302343902
	.quad	0x3fe33bd7fe7cebe3              # double 0.60105514244730462
	.quad	0x3fd40959bfd53b3c              # double 0.31307071431813305
	.quad	0x3feccbe7b7959313              # double 0.89989076477340502
	.quad	0x3fe907b7eb7bbaf8              # double 0.782192192009318
	.quad	0x3fc4b82e8db759d8              # double 0.16187078399407429
	.quad	0x3fe6c83b181ae95d              # double 0.71194224079162505
	.quad	0x3fe5c1b04252428c              # double 0.6798936171854435
	.quad	0x3feddf3e44d66099              # double 0.93350137181097914
	.quad	0x3f92884b4d4f2240              # double 0.018098045915197369
	.quad	0x3fc26650abb08cbc              # double 0.14374740966113631
	.quad	0x3fe4f3547929bf2b              # double 0.6547033659425997
	.quad	0x3fdf7da2622eb7b0              # double 0.49204310978063415
	.quad	0x3fd5b7a6dc9177d6              # double 0.33933421649805717
	.quad	0x3fdc8b3275b4a266              # double 0.44599591726959031
	.quad	0x3fb9d11c326d7308              # double 0.10084701758519199
	.quad	0x3fe4944988710d60              # double 0.64310146950485247
	.quad	0x3fd9c3c5c481052e              # double 0.40257400693743051
	.quad	0x3feead4cfec171bc              # double 0.95865487820588368
	.quad	0x3fdbf0e71112efec              # double 0.43657852809314934
	.quad	0x3fd6862b13ef9992              # double 0.35193898150318959
	.quad	0x3fd80a9edc2f26cc              # double 0.3756482267605008
	.quad	0x3fd144407ecf323c              # double 0.26979076751448239
	.quad	0x3fcd7134653b5708              # double 0.23001723235091043
	.quad	0x3fe7644ad6f3d7e4              # double 0.73099271757996265
	.quad	0x3fef03288f69e04d              # double 0.96913555155243502
	.quad	0x3fe8859c18dc208c              # double 0.76630978446429898
	.quad	0x3fef68bfe3f5f5c6              # double 0.98153681300726059
	.quad	0x3fea9dd8504d1023              # double 0.83176818546099118
	.quad	0x3fad53da9506e7f0              # double 0.057280379001397708
	.quad	0x3fd611e883b9f592              # double 0.34484303344637468
	.quad	0x3fed3608470a34c7              # double 0.91284574389433082
	.quad	0x3fdfcde40cce49ae              # double 0.49694157839362674
	.quad	0x3fed6b6b139591d1              # double 0.91936258149194761
	.quad	0x3fec842b528af461              # double 0.89113393899573279
	.quad	0x3f87e2ba436f9e80              # double 0.011662917311652921
	.quad	0x3fd5e2181810143a              # double 0.34192468976863533
	.quad	0x3fdedb100420357a              # double 0.48212051775848119
	.quad	0x3fd8f7752e96902c              # double 0.39010362195608894
	.quad	0x3fe8158091c94731              # double 0.7526247832667875
	.quad	0x3fc68a64b80846a0              # double 0.17609843240693568
	.quad	0x3fccecc10263a94c              # double 0.22597515694298875
	.quad	0x3fd4fceda378dbba              # double 0.32793751682350669
	.quad	0x3fe0adc941f254a9              # double 0.52121413116642146
	.quad	0x3fa13cb8589cd9b0              # double 0.033666382615069934
	.quad	0x3fc09503d16d7f98              # double 0.12954757429087915
	.quad	0x3febc0c407d76d93              # double 0.86728097468896903
	.quad	0x3fde77d6333adbea              # double 0.47606425288125698
	.quad	0x3fe2e8c4bd9d1905              # double 0.59091412576597746
	.quad	0x3fbcc1634b226f98              # double 0.11232586464251282
	.quad	0x3fd24be0bd4c30cc              # double 0.28588121877761519
	.quad	0x3feb658bffda966e              # double 0.85614585849243752
	.quad	0x3fe06447146f8cff              # double 0.51224092475277405
	.quad	0x3fe22f76c23bb30f              # double 0.56829393325969757
	.quad	0x3fb56d92df7f8630              # double 0.083703212323165798
	.quad	0x3fec0e3386703c49              # double 0.87673355348113902
	.quad	0x3fe195ae4f9616f1              # double 0.54952159446903981
	.quad	0x3fb7fad6b5e2c888              # double 0.093671245008211668
	.quad	0x3fcbb3681e515c38              # double 0.2164125583683203
	.quad	0x3fe774f5e4bf49fc              # double 0.73302740742866446
	.quad	0x3fc05d749266f010              # double 0.1278520312170035
	.quad	0x3fba143e580f0858              # double 0.10187139177199478
	.quad	0x3fa02725fce80f80              # double 0.031548678514837114
	.quad	0x3fd458480c80b558              # double 0.31788827153180454
	.quad	0x3fde5e0b28b62b04              # double 0.47448996520749653
	.quad	0x3feaab56d0a3eede              # double 0.83341542005606661
	.quad	0x3fe35707bf6ee9b6              # double 0.60437381161982873
	.quad	0x3fe5369314c64e5b              # double 0.66291193063302545
	.quad	0x3fec9d3faa3ab2a9              # double 0.89419539688022553
	.quad	0x3fd9dcbbbe6fda48              # double 0.40409749600749878
	.quad	0x3fe676b82fe7fa3a              # double 0.70199212414428946
	.quad	0x3fd20d3a557c28ce              # double 0.28205736492294597
	.quad	0x3fa517203c0e35e0              # double 0.04119206173991663
	.quad	0x3fe889822441acc7              # double 0.76678568917613965
	.quad	0x3f93e275f4ad1000              # double 0.01941856675991005
	.quad	0x3fc4d7f254552db8              # double 0.16284016721543337
	.quad	0x3fb6af09244f4858              # double 0.088608332981750748
	.quad	0x3fe4adeb7ebdd278              # double 0.64623045686910441
	.quad	0x3fd3dc9b465a4458              # double 0.31033975477573028
	.quad	0x3fe37af6a33ab515              # double 0.6087601841042295
	.quad	0x3feb48057df4cdf1              # double 0.85254168129762153
	.quad	0x3fe8a454feddebb1              # double 0.77006006029784235
	.quad	0x3fef00d89c87ef1b              # double 0.96885328838786521
	.quad	0x3fef710f376635a2              # double 0.98255120105902827
	.quad	0x3fdeeef3b6c8110a              # double 0.48333447313076816
	.quad	0x3fe42f372f48851c              # double 0.63076361880317533
	.quad	0x3fc909f933ea10e8              # double 0.19561686549071244
	.quad	0x3fe0bce10becc263              # double 0.52305652932234314
	.quad	0x3fa2dfad5e59ed40              # double 0.036862771766176028
	.quad	0x3f70d5cbd20efb00              # double 0.004110141920078858
	.quad	0x3fe4c94beecb2c9e              # double 0.64957234038719824
	.quad	0x3fdde7132ce1e2fe              # double 0.4672286928467172
	.quad	0x3fa2bb8d94aedc20              # double 0.036587166213785105
	.quad	0x3fe357d876c868c3              # double 0.60447333526396851
	.quad	0x3fef0899d05a726a              # double 0.96979990667348415
	.quad	0x3f97996c9e15a040              # double 0.023046204708777163
	.quad	0x3fddee0e140d0d56              # double 0.46765472372154215
	.quad	0x3fdeda8860fef41a              # double 0.48208817932374048
	.quad	0x3fc68ae03a769324              # double 0.17611315588615029
	.quad	0x3feba0f922a801f7              # double 0.86340004700474438
	.quad	0x3fb111eee08c4cd0              # double 0.066679887601185373
	.quad	0x3fed2f078efdffd1              # double 0.91199090889130663
	.quad	0x3fef1d8837517291              # double 0.97235499195410757
	.quad	0x3feadb2a8ed25887              # double 0.83925369162422292
	.quad	0x3fd84eb9da567308              # double 0.37980505296745593
	.quad	0x3fedd23787cf3210              # double 0.93191124463334241
	.quad	0x3fea20c3cbf0add0              # double 0.81649961311398478
	.quad	0x3fea81c115f90891              # double 0.82833914081153825
	.quad	0x3fcdd56a3ba93a50              # double 0.23307540810715688
	.quad	0x3fce8afbdc12755c              # double 0.23861644979198615
	.quad	0x3fe576fdd6091158              # double 0.67077533534806388
	.quad	0x3fddf824b294cad0              # double 0.46827046813556894
	.quad	0x3fb5b19cc8556d48              # double 0.084741400632471486
	.quad	0x3fe173fa76d58c0d              # double 0.54540751657293784
	.quad	0x3fda4adf7145caee              # double 0.41081987439899492
	.quad	0x3fa794e739087df0              # double 0.04605791636663159
	.quad	0x3fe6362eab0649fa              # double 0.69411404994235615
	.quad	0x3fdd8f83d1cd3dc2              # double 0.46188445557069369
	.quad	0x3fbd63ce5d3584b8              # double 0.11480417037593582
	.quad	0x3fbd17af82f76060              # double 0.11364266345424445
	.quad	0x3fead53e83b0c4a4              # double 0.83853078575898054
	.quad	0x3fc59585e388c058              # double 0.16862557992999672
	.quad	0x3fe5f156ad240be6              # double 0.68571027580798893
	.quad	0x3fe861ca4a55a9f3              # double 0.76193727987748472
	.quad	0x3feff275c44d1181              # double 0.99834717121170524
	.quad	0x3fdf669bd2717a8e              # double 0.49063773680783462
	.quad	0x3fe47a9cbef3d959              # double 0.63996732039849313
	.quad	0x3fef58c1a0f9e7d0              # double 0.97958451691305903
	.quad	0x3fe9d8194a126446              # double 0.8076292463985133
	.quad	0x3f76565148fdf080              # double 0.0054534125518977961
	.quad	0x3fed2ef376849091              # double 0.9119813265611062
	.quad	0x3fe547799476c9fe              # double 0.66497496601942863
	.quad	0x3f9777c929449740              # double 0.022917884010119183
	.quad	0x3fdf8678f3fbf8fc              # double 0.49258254839504878
	.quad	0x3fe7fb089a66d941              # double 0.74939375073044101
	.quad	0x3fb9b04b92adc150              # double 0.1003463013746615
	.quad	0x3fb1265cfc1eb378              # double 0.066991626312938979
	.quad	0x3fe99acc152081ae              # double 0.80014614225733793
	.quad	0x3fd96851dcf5b5a6              # double 0.39699217393975983
	.quad	0x3fddc935a96540d6              # double 0.46540586035281473
	.quad	0x3fe12e973f48c0d5              # double 0.53693735466188264
	.quad	0x3fd3a0dacf8f007e              # double 0.30669279355425505
	.quad	0x3fd36b331b750968              # double 0.30341794663777089
	.quad	0x3fe715725e9a0f60              # double 0.72136801220811364
	.quad	0x3fee36c503951f93              # double 0.94418574046811654
	.quad	0x3fe7a9d5b97c9f2c              # double 0.73948179462329255
	.quad	0x3fefece23e318f3c              # double 0.99766647479234604
	.quad	0x3fe9d64e0fe1282b              # double 0.80741026975124919
	.quad	0x3fdf6a292ac6c98c              # double 0.49085454156297526
	.quad	0x3fe1dd2901c66941              # double 0.55824709269226258
	.quad	0x3fd6303f66733cfa              # double 0.3466948032846201
	.quad	0x3febe3fde8840f0d              # double 0.87158103383305419
	.quad	0x3fe8bf7a430413e4              # double 0.77337372864769493
	.quad	0x3fe74eb369faebc9              # double 0.72835703562974985
	.quad	0x3f687c8f61f12a00              # double 0.002989082378495711
	.quad	0x3fe46cd15152867b              # double 0.63828340419077223
	.quad	0x3fb090f231f8ee70              # double 0.06471170158413897
	.quad	0x3fe6800ac0a78dd3              # double 0.70313012721856649
	.quad	0x3fd2d18e2c276b2a              # double 0.29404024421607977
	.quad	0x3fe02f1b313f2c23              # double 0.50575027102002357
	.quad	0x3fd997c047ab92e0              # double 0.39988715170902189
	.quad	0x3fecbb05ae33c84e              # double 0.89782985710031382
	.quad	0x3fe733c53955e11b              # double 0.7250696296532938
	.quad	0x3f8bb954c94013c0              # double 0.013537084952995104
	.quad	0x3fc43227b303bdc0              # double 0.15778061142871813
	.quad	0x3fcf720d60b36bcc              # double 0.24566809865686279
	.quad	0x3fa677d9e708c810              # double 0.043883141949109583
	.quad	0x3fe9350367169277              # double 0.78772134909065883
	.quad	0x3fdc31c04f76c290              # double 0.44053657302996729
	.quad	0x3fd402b64661833c              # double 0.3126655280412256
	.quad	0x3fe53f7f3c446d5f              # double 0.66400110026317438
	.quad	0x3fd9d6071a0bab86              # double 0.40368821662439591
	.quad	0x3fdddc555f940126              # double 0.46657308896830541
	.quad	0x3fb66952258f4078              # double 0.087544569177454679
	.quad	0x3fe1a24a597b5425              # double 0.55106084324745963
	.quad	0x3fd44420fe17356c              # double 0.31665825665989789
	.quad	0x3fc3981dbcb6ffa8              # double 0.1530797168215916
	.quad	0x3fca092df0a4ef3c              # double 0.20340513467987786
	.quad	0x3fe3e7942e3f0e61              # double 0.62201890022738493
	.quad	0x3fc2bdf63b8a135c              # double 0.14642217547602854
	.quad	0x3fe3bfd4468ffb64              # double 0.6171666505978064
	.quad	0x3f5f13c155048a00              # double 0.001896799851302533
	.quad	0x3fd90d5d1aedc6ac              # double 0.39144065503851766
	.quad	0x3fe27277cc98b36a              # double 0.57647314033748143
	.quad	0x3fdfcfe27603913a              # double 0.49706326985166849
	.quad	0x3fe032d94959bec7              # double 0.50620712591440842
	.quad	0x3fdf43853955b132              # double 0.48849611853690356
	.quad	0x3fe5a7781be2a8cf              # double 0.67669301458706765
	.quad	0x3feecb6b3187d652              # double 0.96233138727138567
	.quad	0x3fd2ddca33cba58a              # double 0.29478697832254197
	.quad	0x3fdc2b8cdc079f4c              # double 0.44015809523852023
	.quad	0x3fc0f25a524b1410              # double 0.13239602106310189
	.quad	0x3fbe80e8e886c8a8              # double 0.11915450741688238
	.quad	0x3fd7f34628de74a8              # double 0.37422327033147917
	.quad	0x3fdfe73e6ee37e78              # double 0.49848900631875592
	.quad	0x3fe44d15ff887c53              # double 0.63440990361039906
	.quad	0x3fd53be1317abf50              # double 0.33177976448040614
	.quad	0x3f936b26b5eeb180              # double 0.018963436941406453
	.quad	0x3fdd045a57cba456              # double 0.45339068006302818
	.quad	0x3fef228144971b7b              # double 0.97296203037772899
	.quad	0x3fec55397e405ee9              # double 0.88540339144216518
	.quad	0x3fe21baed518dce2              # double 0.56587926502734498
	.quad	0x3fcb4bef1e22b808              # double 0.21325482341256952
	.quad	0x3fed9d59f058e305              # double 0.92545792525115245
	.quad	0x3fe96055ae059743              # double 0.79300960529938214
	.quad	0x3fc742aefe45c218              # double 0.1817225209774882
	.quad	0x3fbb170dc4c693c8              # double 0.10582052282423071
	.quad	0x3fc5062885da4d4c              # double 0.16425043617037216
	.quad	0x3fc294285a5a5794              # double 0.14514641200792922
	.quad	0x3fea13b067b19742              # double 0.81490345242193762
	.quad	0x3fe51809c3a9817e              # double 0.65918434348354515
	.quad	0x3fed9fb053f6d184              # double 0.9257432594227315
	.quad	0x3fa1c9a059e41b50              # double 0.034741412137057837
	.quad	0x3fe6791da6459c7a              # double 0.70228464579567107
	.quad	0x3fe64d886277f458              # double 0.69696444732802387
	.quad	0x3fe638927cffee71              # double 0.69440578855524226
	.quad	0x3fb8811e20dff3a8              # double 0.095720179582669318
	.quad	0x3fd85cbaa8c8c5fe              # double 0.38065973742331483
	.quad	0x3fcc438128158f2c              # double 0.22081007439839462
	.quad	0x3fe6a74369cf7ee3              # double 0.70791788736456984
	.quad	0x3fef2bfa446beaad              # double 0.97411836017211828
	.quad	0x3fd8ccb5525ee652              # double 0.38749440235151156
	.quad	0x3fe782d6d38c4cda              # double 0.73472157781580028
	.quad	0x3fea16f00c993e2a              # double 0.81530001125969886
	.quad	0x3fda8e6eaa178e12              # double 0.41494337664173131
	.quad	0x3fed74ae95c4aa72              # double 0.92049340488058662
	.quad	0x3fe0a143945268f9              # double 0.51968554467319372
	.quad	0x3fe4fc40b456c6f5              # double 0.65579257223563892
	.quad	0x3fe5a982587890bc              # double 0.67694203643306805
	.quad	0x3fe891d341ec2449              # double 0.76780093074297284
	.quad	0x3fc09bfa33833f68              # double 0.12976005091922649
	.quad	0x3feac16484cf17e9              # double 0.8361075014042828
	.quad	0x3fc0bc047b0d5138              # double 0.1307378388252205
	.quad	0x3fe9c4353cc719b3              # double 0.8052011668267397
	.quad	0x3fd2387d299c6a10              # double 0.28469780982564519
	.quad	0x3feab7c0c41de182              # double 0.83493078521773634
	.quad	0x3feacc9fc86b7ca8              # double 0.83747853416925455
	.quad	0x3fe40a17d3397e9d              # double 0.62623206381609331
	.quad	0x3fd202cfad424ad8              # double 0.28142158431834963
	.quad	0x3fc6dd80bb9b5068              # double 0.1786347309158629
	.quad	0x3fe4dafac35e7068              # double 0.65173090131748967
	.quad	0x3febad57df166ff5              # double 0.86491006442838503
	.quad	0x3fda8b8751e0e57c              # double 0.41476614948222568
	.quad	0x3fdd374e0168f956              # double 0.45650053155613557
	.quad	0x3f741df35a792100              # double 0.0049113756172760592
	.quad	0x3febe4728e2963f6              # double 0.87163665548280167
	.quad	0x3fa9f1f3ac6fa070              # double 0.050674071120568764
	.quad	0x3fe7b71d99055b83              # double 0.74110298048877643
	.quad	0x3fcce8c9c92dd434              # double 0.22585413287348077
	.quad	0x3feaffadeacee90e              # double 0.84371085988030514
	.quad	0x3fe2e015511451b3              # double 0.58985391460242054
	.quad	0x3fe8aac2a5eb40b2              # double 0.77084476858182982
	.quad	0x3fea78048fee9de1              # double 0.82715061294305425
	.quad	0x3f68f48523813000              # double 0.0030462837567366563
	.quad	0x3fe6e5cba2c22f42              # double 0.71555120266700833
	.quad	0x3fee09c4512c4b4d              # double 0.93869224409204721
	.quad	0x3f9ae771e30fa4a0              # double 0.026273517116270129
	.quad	0x3fe49394e5f273b5              # double 0.64301533614672357
	.quad	0x3fe16980602591d3              # double 0.54412859705603933
	.quad	0x3fe1d47a79091bd5              # double 0.55718730582963849
	.quad	0x3fe4dc55ed26615c              # double 0.65189644163460114
	.quad	0x3f9dd767a9258b80              # double 0.029142017077343763
	.quad	0x3fe14bc0d2bb1085              # double 0.54049721868842993
	.quad	0x3fb111682d62e3a0              # double 0.066671858864437272
	.quad	0x3fd8b937735d0634              # double 0.38630472436861685
	.quad	0x3fe8a2c1976315d0              # double 0.76986770217689049
	.quad	0x3fba04552753a2c0              # double 0.10162861070751728
	.quad	0x3fe05e8987050f55              # double 0.51154018755958452
	.quad	0x3febbb3ab4b17901              # double 0.86660514156008628
	.quad	0x3fe365a3c947cf4d              # double 0.60615720093344694
	.quad	0x3feaf36569e6ee40              # double 0.84221144374846091
	.quad	0x3fbe5cbedf569700              # double 0.11860268547624386
	.quad	0x3fedbb925bfad896              # double 0.92914693798845138
	.quad	0x3fe467272e458c66              # double 0.63759192502437823
	.quad	0x3fcf73fdf0cd5fe8              # double 0.24572729356691458
	.quad	0x3fdfb65687961bc6              # double 0.49550402870994181
	.quad	0x3fd5cfe0e672a670              # double 0.34081289772675571
	.quad	0x3fc9024b0099ca14              # double 0.19538247613270754
	.quad	0x3fd7bb532bf4a8a0              # double 0.37080840389774927
	.quad	0x3fd23177abf43612              # double 0.28426925461175856
	.quad	0x3fd5ffaa230b5b94              # double 0.34372952863980655
	.quad	0x3fd01b68407b720e              # double 0.25167280480471355
	.quad	0x3fcf93504a8aa188              # double 0.24668315543864261
	.quad	0x3fc3add2158dc3b8              # double 0.15374208500318587
	.quad	0x3fe207ea3189a62f              # double 0.56346616435366126
	.quad	0x3fc433386bd8d3e4              # double 0.15781312242475487
	.quad	0x3f5152dcbb9b0000              # double 0.0010573535532074629
	.quad	0x3fa1bf8dfd75fdc0              # double 0.034664570989658028
	.quad	0x3fd889ae00434e02              # double 0.38340330148386681
	.quad	0x3fd56664836fa1ac              # double 0.33437455020478057
	.quad	0x3fe62add6a9b3c4b              # double 0.69273253270683577
	.quad	0x3fcc7e078a411c94              # double 0.22259611368847187
	.quad	0x3fd299e8e7eef40e              # double 0.29064390802142348
	.quad	0x3fcf4c596920f0b8              # double 0.24451749451862326
	.quad	0x3fe6915a96743ac7              # double 0.7052433908991923
	.quad	0x3fe3cd4a590fba47              # double 0.618809865902059
	.quad	0x3feb4cd9875223bb              # double 0.85313106946806927
	.quad	0x3fc541ad71f8c8d8              # double 0.1660668188574792
	.quad	0x3fdfb201ac9114a0              # double 0.49523965694636196
	.quad	0x3fc20cedc28f9ab0              # double 0.14101955413862788
	.quad	0x3fde0d17d4317ce8              # double 0.46954913827899114
	.quad	0x3fedd710462b2421              # double 0.93250287728108472
	.quad	0x3fe96f4ff06619c6              # double 0.79483792260071406
	.quad	0x3fc339bede508214              # double 0.15019975524138884
	.quad	0x3fe01c93c111fe83              # double 0.5034884234336946
	.quad	0x3fe01285115917e2              # double 0.50226071728024757
	.quad	0x3fd8577e92491132              # double 0.3803402355736295
	.quad	0x3f9445c469eda8c0              # double 0.019797390904763956
	.quad	0x3f9073ad8a8c4940              # double 0.01606627615098799
	.quad	0x3feab6a69a782e02              # double 0.83479623956503723
	.quad	0x3fd068c1c632aa74              # double 0.2563938556219576
	.quad	0x3fb51c4c18427610              # double 0.082463031695134469
	.quad	0x3fed013795bedf5e              # double 0.90639857527910883
	.quad	0x3fec2ee280d922b9              # double 0.88072323957120269
	.quad	0x3fc326d503426f14              # double 0.14962256106525074
	.quad	0x3fee233bf901c213              # double 0.94180105814126802
	.quad	0x3fdab5e9c0bad554              # double 0.41735309430381062
	.quad	0x3fcbb5de8b04e3dc              # double 0.21648771083871921
	.quad	0x3fee2161d91253da              # double 0.94157497784419353
	.quad	0x3fc59e28adc3d9c0              # double 0.16888912663098488
	.quad	0x3fe235f87b47d4f9              # double 0.56908821180573377
	.quad	0x3fd34ff953234046              # double 0.30175622099796262
	.quad	0x3f99418a8371ed60              # double 0.024664081833618012
	.quad	0x3fe704d8a1769814              # double 0.71934157882492622
	.quad	0x3fdbd89d2d9eb9be              # double 0.43509606795387501
	.quad	0x3fb183f56e090090              # double 0.068419780124715723
	.quad	0x3fdd907c2d2313aa              # double 0.46194366844093315
	.quad	0x3fdab68192b5208c              # double 0.41738929106623668
	.quad	0x3fe910838f72e0f9              # double 0.78326585786183422
	.quad	0x3fe6e58a6a2413bd              # double 0.71552010279321332
	.quad	0x3fdef771f9b8728e              # double 0.48385285746352558
	.quad	0x3fe4ca61ea066505              # double 0.64970489223483752
	.quad	0x3f81102cce309900              # double 0.0083316326545852526
	.quad	0x3fbcfd379977ebc0              # double 0.11323878762043105
	.quad	0x3f8f076383451200              # double 0.015150811618362958
	.quad	0x3fee83e9d7d13681              # double 0.95360271598629265
	.quad	0x3fdf9276a0339608              # double 0.49331441540411491
	.quad	0x3fed685a407ae5ac              # double 0.91898834794772232
	.quad	0x3fc86086d14892f8              # double 0.19044575900002036
	.quad	0x3fed051e3f47d469              # double 0.90687477454652055
	.quad	0x3fc9d864d9c36340              # double 0.20191631920786257
	.quad	0x3fe4054d2c6b5b11              # double 0.62564715076118393
	.quad	0x3fc1f17312119aa8              # double 0.14018095381034823
	.quad	0x3fa9004566ac2450              # double 0.048830193312888626
	.quad	0x3fed0d1ac885be64              # double 0.90784968533075671
	.quad	0x3feb556a45067857              # double 0.85417664987086084
	.quad	0x3fe1ec8c3fddcfc1              # double 0.56012546991268419
	.quad	0x3fadad7242066680              # double 0.057963915404980249
	.quad	0x3fd3c250e66fc67c              # double 0.30873510840965657
	.quad	0x3fc883f37d532f88              # double 0.1915268289507106
	.quad	0x3fe9ad6d5286a567              # double 0.80242029302932572
	.quad	0x3fe2169327ccfa31              # double 0.5652557160718229
	.quad	0x3fe8b0f72156f8c3              # double 0.77160221587816868
	.quad	0x3fe06b66ec9157b9              # double 0.51311060146939902
	.quad	0x3fd48f544c1e01ce              # double 0.32124812539407521
	.quad	0x3fd916fbe7cd719a              # double 0.39202783238376926
	.quad	0x3fa3e410a88d61f0              # double 0.038849373412350618
	.quad	0x3fe510dea7959146              # double 0.65830929499910762
	.quad	0x3fbcada4f13d5fd0              # double 0.11202460183756036
	.quad	0x3feb1bd04cad14b1              # double 0.84714522338676634
	.quad	0x3fb7e281f942f1d8              # double 0.093299983363017147
	.quad	0x3fec6f2b26dd1200              # double 0.88857038107431663
	.quad	0x3fd39e3254310132              # double 0.30653055402582929
	.quad	0x3fef014e5d8a214a              # double 0.96890943784186701
	.quad	0x3fdd0bed2ab0fe60              # double 0.45385293168144436
	.quad	0x3fe719ca9803b12d              # double 0.72189836206738323
	.quad	0x3fded681b344520e              # double 0.48184244638949358
	.quad	0x3fe3f509dbd3a915              # double 0.62366192755624417
	.quad	0x3fd7e9e556b0d996              # double 0.37365086999798203
	.quad	0x3fe607774f6448b4              # double 0.68841138368795507
	.quad	0x3feefa7098fc2393              # double 0.96807126884333383
	.quad	0x3f98683012f08c40              # double 0.02383494487379445
	.quad	0x3fb9bdf84272fb98              # double 0.10055495855611551
	.quad	0x3fdc05bd0fd9134c              # double 0.43785025165225444
	.quad	0x3fd4baee71dce3a8              # double 0.32390938872736763
	.quad	0x3fe80e3dabdf58f2              # double 0.75173839157903743
	.quad	0x3fe914dd44af8e8b              # double 0.78379691519917694
	.quad	0x3fe235b712039a70              # double 0.56905702131628111
	.quad	0x3f7357960b92e100              # double 0.0047222005024922797
	.quad	0x3fdb551321208c0a              # double 0.42706754908630329
	.quad	0x3fe7ca7e7d849e5e              # double 0.74346851840250472
	.quad	0x3fe48c2c96a5057b              # double 0.64211110518242209
	.quad	0x3fc67d6cdb6d3ec4              # double 0.17570267404743423
	.quad	0x3fe1c7af30196f6c              # double 0.55562552828221845
	.quad	0x3fb1236bf3bc2ae8              # double 0.066946742063162312
	.quad	0x3feaaeabb1de0ba9              # double 0.83382210483283814
	.quad	0x3fe563da1e32b815              # double 0.66843896768637256
	.quad	0x3fb4d2b5dcc04d70              # double 0.081340185541469045
	.quad	0x3fed77207ed22bf5              # double 0.92079186219905174
	.quad	0x3fe0a528e866cd28              # double 0.52016110793048131
	.quad	0x3fa9edec4bbf7430              # double 0.050643333670202018
	.quad	0x3fdbff87f44c1152              # double 0.43747137887136944
	.quad	0x3fe84b47c50549af              # double 0.75918949585530082
	.quad	0x3fedcf8360a9fbce              # double 0.93158120040595249
	.quad	0x3feb10e85d07d759              # double 0.84581392450375426
	.quad	0x3fc6e5efcea8c804              # double 0.17889211264406424
	.quad	0x3fecb46908f847d8              # double 0.89702274085925193
	.quad	0x3fd9cecc145d8ca8              # double 0.40324689854441909
	.quad	0x3fec3f7360aa6167              # double 0.88274544601430882
	.quad	0x3fa6708b89fc1830              # double 0.043827400773850278
	.quad	0x3fe49da38b11fd9e              # double 0.64424302255786237
	.quad	0x3fc5d09b4e3e39b8              # double 0.17042867012464824
	.quad	0x3febe039a0b22005              # double 0.87112122903727196
	.quad	0x3febc07c9083d025              # double 0.86724689698758495
	.quad	0x3fe5112a4dc37368              # double 0.6583453673189128
	.quad	0x3fe6587ee4bc2798              # double 0.69830269503403297
	.quad	0x3fed658af729ed0b              # double 0.91864536546873532
	.quad	0x3fed9e1b6a2ed1c5              # double 0.92555018175931336
	.quad	0x3fcb07c3eeadef14              # double 0.2111744800021077
	.quad	0x3fa529d9a04028e0              # double 0.041334915935367311
	.quad	0x3fe48ae6dba4b541              # double 0.64195578478908299
	.quad	0x3fee1bb98e122453              # double 0.9408843779393784
	.quad	0x3fb170169f26e6f0              # double 0.068116582732638653
	.quad	0x3fe85a26221bdbad              # double 0.76100451146964121
	.quad	0x3fc4793fe72b4654              # double 0.15995024478484032
	.quad	0x3feeb7dbbe1d25fd              # double 0.9599436486398073
	.quad	0x3fd0914eaccf8102              # double 0.25886885524779768
	.quad	0x3fd888ae08ebfbe0              # double 0.38334227439184865
	.quad	0x3fe6c5d5a74d9538              # double 0.71164972950342698
	.quad	0x3fe99872d2e10e03              # double 0.79985943972900519
	.quad	0x3feba7cb668849b6              # double 0.86423273111204568
	.quad	0x3fec07cb6821d86d              # double 0.87595148409196855
	.quad	0x3fe9c277c182b39e              # double 0.80498874468831949
	.quad	0x3fe11d7fc807bd1f              # double 0.53485096996692849
	.quad	0x3fec7dd8c0989fb3              # double 0.89036214462702501
	.quad	0x3fe00c8777ccb127              # double 0.50152943991046051
	.quad	0x3fda16353612d2e4              # double 0.40760545998209197
	.quad	0x3fc9c8c0f8d9a410              # double 0.20143901968847944
	.quad	0x3fd931c0834948ae              # double 0.39366162129330007
	.quad	0x3fedb911a1fc6fcd              # double 0.92884141576677737
	.quad	0x3feabfdfaf42c240              # double 0.83592209082241453
	.quad	0x3fe3368b330a316c              # double 0.60040817230905708
	.quad	0x3fd3d2a27535323c              # double 0.30973111578058243
	.quad	0x3fe9f8e0245ee236              # double 0.81163031676903219
	.quad	0x3fc71e7e66640de0              # double 0.18061809539368223
	.quad	0x3fe4f5350714533f              # double 0.65493251211828596
	.quad	0x3fe5fdc3fd7dff23              # double 0.68722724447431849
	.quad	0x3fe424114681f651              # double 0.62940276881244916
	.quad	0x3fa0ecfa7e74d3e0              # double 0.033058002411429532
	.quad	0x3fc472ab0643ad18              # double 0.1597493916118331
	.quad	0x3f9a04e30696ec60              # double 0.025409266736215463
	.quad	0x3fd4ec3c48cf1c22              # double 0.32691866979843287
	.quad	0x3fe92e239d0d2d97              # double 0.78688221620670873
	.quad	0x3fe886de3d507d67              # double 0.76646339393111595
	.quad	0x3fb111ecb14e39c0              # double 0.066679757392399175
	.quad	0x3fd65d4dac42f554              # double 0.34944478819291658
	.quad	0x3fd65fa2bc244dda              # double 0.34958713887428206
	.quad	0x3fe3cd9e093653f8              # double 0.61884977149259068
	.quad	0x3fb62e979c3aa060              # double 0.086648440973136953
	.quad	0x3f9ad0c60f4d2660              # double 0.026187033351823152
	.quad	0x3fd612cde3759770              # double 0.34489772045923583
	.quad	0x3fc9449e0927c258              # double 0.19740653464352209
	.quad	0x3fef4ef603fd3671              # double 0.97838879374621801
	.quad	0x3f91c14defe504a0              # double 0.017338960425381189
	.quad	0x3fd3e15897456cac              # double 0.31062903187348456
	.quad	0x3feb59162eace89c              # double 0.85462483516973319
	.quad	0x3feb74f9f642dd93              # double 0.85802934739961001
	.quad	0x3f811cc9f3deba80              # double 0.0083556916759708333
	.quad	0x3fe5fd2836aa132c              # double 0.68715296436912388
	.quad	0x3f7cdd32855ef480              # double 0.007046887729243001
	.quad	0x3fe17d1d26287a46              # double 0.54652268841511709
	.quad	0x3fd6661f28eb9b54              # double 0.3499830150234875
	.quad	0x3fb38bcebb28e2a0              # double 0.076352043813026516
	.quad	0x3feee28e1ccad0b2              # double 0.96515565513120394
	.quad	0x3fe83874b0b34c65              # double 0.7568915797404655
	.quad	0x3fe5fc92161539ad              # double 0.68708137810772529
	.quad	0x3fbd35e1e733f1a0              # double 0.1141034306965083
	.quad	0x3fdd95d3ede47f08              # double 0.462269766156155
	.quad	0x3fe99cf6d91c56f8              # double 0.80041067509111397
	.quad	0x3fc9f65ff0055f30              # double 0.20283126086973757
	.quad	0x3fedc940f56d9783              # double 0.93081710753607216
	.quad	0x3fe158af6ab49406              # double 0.54207583275695082
	.quad	0x3fc508b3003a86ec              # double 0.16432797919428965
	.quad	0x3fd9f141a7f6678c              # double 0.40535012629117584
	.quad	0x3fed01a6723e28de              # double 0.90645143807457962
	.quad	0x3fe06b403f22210a              # double 0.51309215861059099
	.quad	0x3fee6845d57884a0              # double 0.95022861188421714
	.quad	0x3fc65219aae5c59c              # double 0.17438050121886028
	.quad	0x3fe6d06451f51413              # double 0.71293846137325756
	.quad	0x3fefed804adedbf9              # double 0.99774183867600563
	.quad	0x3fd647f221d444a2              # double 0.34814122489576438
	.quad	0x3fda832f19ded824              # double 0.41425683523573498
	.quad	0x3fe8f424409f9bd3              # double 0.77980244275829091
	.quad	0x3febe1489c9e6fb1              # double 0.87125044431330967
	.quad	0x3fc9ee9753f06c18              # double 0.20259372328368452
	.quad	0x3fe70e44fe341957              # double 0.72049188279269571
	.quad	0x3fe1cb13344d646b              # double 0.55603943076415641
	.quad	0x3fdb6dd382c8955c              # double 0.42857826015309342
	.quad	0x3fdb57da08b64f56              # double 0.42723704195781431
	.quad	0x3fe2ab249bafc965              # double 0.58339147956421
	.quad	0x3fe788fde351db1e              # double 0.73547262571705452
	.quad	0x3fe3e85354c4c91c              # double 0.62211004787812696
	.quad	0x3fe32fb5dfdbcbf7              # double 0.59957402918223479
	.quad	0x3fdd261445e271c4              # double 0.4554491693941396
	.quad	0x3fd0faf98415c382              # double 0.26531827830245203
	.quad	0x3faedebd84a10720              # double 0.060293123664918236
	.quad	0x3fb0b94faaaa8240              # double 0.065327624479786017
	.quad	0x3fefd280fd8e77ae              # double 0.99444627306706024
	.quad	0x3fc14755654a0188              # double 0.13498942800289293
	.quad	0x3fa7d6ef273d92b0              # double 0.046561692752935868
	.quad	0x3fe112a47a5193f7              # double 0.5335256947552115
	.quad	0x3fd964953ba1ea12              # double 0.39676409553035896
	.quad	0x3fef5cd7eaa05bde              # double 0.98008342576474283
	.quad	0x3fbfadc34e331d50              # double 0.12374516162082227
	.quad	0x3fe5bea667f55fa5              # double 0.67952270798104009
	.quad	0x3fe57723f6a2810e              # double 0.67079351588111691
	.quad	0x3fc3cf47fc13c2f8              # double 0.15476321991402364
	.quad	0x3febfced908a98e0              # double 0.87462499838582274
	.quad	0x3fbf1cb187aeb7c0              # double 0.12153157770691703
	.quad	0x3fea3bf2e027ef67              # double 0.81981796055286515
	.quad	0x3fc81c3f75ab03c0              # double 0.18836205716618615
	.quad	0x3fed32d0586177f1              # double 0.91245286237585621
	.quad	0x3fb1ab5852cffd58              # double 0.069020767419705975
	.quad	0x3fb5bb683386d778              # double 0.084890854434744756
	.quad	0x3fe00bceddef5a03              # double 0.50144141527817998
	.quad	0x3fe47c7eb7217faa              # double 0.64019714133973094
	.quad	0x3fe9dea3854841f4              # double 0.8084275820893354
	.quad	0x3fc43b79ac7d4a8c              # double 0.15806504175505542
	.quad	0x3fd632b1e9f16b4a              # double 0.34684417577743842
	.quad	0x3fe4d0dc0fb943ca              # double 0.65049555846246077
	.quad	0x3fdd4c8f00aae470              # double 0.45779776635351421
	.quad	0x3fe8d29bf4469197              # double 0.77570913038339284
	.quad	0x3fe69c5601bd8a44              # double 0.70658397998733635
	.quad	0x3fe3c368519c3139              # double 0.61760345401265859
	.quad	0x3feaf22c2a41f304              # double 0.84206207517090136
	.quad	0x3fdc06973a57b43e              # double 0.43790226647871922
	.quad	0x3fe8baba88c9f458              # double 0.77279402462557822
	.quad	0x3fe82bb5f89e8341              # double 0.75533579405246354
	.quad	0x3fe0996edc423e97              # double 0.51872962016382729
	.quad	0x3fdd749e8f729ad2              # double 0.46024288185655593
	.quad	0x3fe1a28d9727f1e1              # double 0.55109290621436113
	.quad	0x3fdf0b64cdbd8d9a              # double 0.48507042018737823
	.quad	0x3fe8a2b603914dad              # double 0.76986218163294995
	.quad	0x3fe1f75c85cf8d63              # double 0.56144548544800121
	.quad	0x3fe430c5e6c10dc5              # double 0.63095374173320151
	.quad	0x3fb0274009143670              # double 0.063098909584562213
	.quad	0x3fb99d2924e7c8f8              # double 0.10005433226595872
	.quad	0x3fb875e49a7b3598              # double 0.095548904147298663
	.quad	0x3fe97797dfe74359              # double 0.79584878665091729
	.quad	0x3fe1810bddad59e2              # double 0.5470027284271135
	.quad	0x3fe28e6f8de596be              # double 0.57988717760300523
	.quad	0x3fe394c36658c475              # double 0.61190958013152275
	.quad	0x3fdffef364453d22              # double 0.49993595878636843
	.quad	0x3fccfc9cc7db10e8              # double 0.2264591194017449
	.quad	0x3fd83d19e670aa40              # double 0.37872931960979273
	.quad	0x3fde41674047edf6              # double 0.47274190213622036
	.quad	0x3fa11a0dbf16ed70              # double 0.033401898933756224
	.quad	0x3fe6201c1a0b685b              # double 0.69141964995220506
	.quad	0x3fbb0aa2594ac5b0              # double 0.10563101463301083
	.quad	0x3fc4f1830eb93400              # double 0.1636203596011967
	.quad	0x3fec8246ead9a8be              # double 0.89090295666871788
	.quad	0x3feaaafbb9822b56              # double 0.83337198478816776
	.quad	0x3fc09509b2293598              # double 0.12954827498689947
	.quad	0x3fedd2d99c31fda1              # double 0.93198853022470385
	.quad	0x3fe6548a45b537d5              # double 0.6978198396188825
	.quad	0x3fe6988ff38eba91              # double 0.70612332887488283
	.quad	0x3fe38891df55bdb2              # double 0.61042111988165559
	.quad	0x3fe6608952fac15f              # double 0.69928423125206141
	.quad	0x3fb5f72e949e84b8              # double 0.085802947315204103
	.quad	0x3fca9eea82ed9040              # double 0.20797473328559768
	.quad	0x3fd1432c593f43dc              # double 0.26972492900409661
	.quad	0x3fe3092e96247dda              # double 0.59487084698406112
	.quad	0x3fd53ee3265866cc              # double 0.33196333641681686
	.quad	0x3fdf38db0ba6b08a              # double 0.48784519326978482
	.quad	0x3fd42612c4b488b6              # double 0.31482381066792742
	.quad	0x3fe992bd857f7d11              # double 0.79916263650730646
	.quad	0x3fdbb3daf621f4ee              # double 0.43285249744788146
	.quad	0x3fe373e68c8a5f8d              # double 0.60789802026100548
	.quad	0x3fe96902362ad70c              # double 0.79406843738135668
	.quad	0x3fd1105e3037bb64              # double 0.26662401875267094
	.quad	0x3fe96d0c984e39e7              # double 0.7945616697996315
	.quad	0x3fc1bac638b8fcec              # double 0.13851239938410431
	.quad	0x3fe11b680609345f              # double 0.53459550074479611
	.quad	0x3fdd6e199c9096c4              # double 0.45984497346431064
	.quad	0x3fe5d22f021c6b15              # double 0.68190718090349611
	.quad	0x3fd45569c998f946              # double 0.31771320998440833
	.quad	0x3fd28da7a503281a              # double 0.28989592661366859
	.quad	0x3fd9d7122b6fcf78              # double 0.40375189058180849
	.quad	0x3fc37159034e185c              # double 0.15189659749393314
	.quad	0x3fe6d1203f616b83              # double 0.71302807215703046
	.quad	0x3fef7d06119fcbda              # double 0.98401168291308783
	.quad	0x3fa0ab7df2c5f950              # double 0.03255838001767819
	.quad	0x3fa5f14432b92240              # double 0.042856341544908805
	.quad	0x3fd4605619a77960              # double 0.3183799028901344
	.quad	0x3fd7588e2cbfb24c              # double 0.36477999086381341
	.quad	0x3fdf6c4380406a8a              # double 0.49098289036343401
	.quad	0x3fe0ab413ab623ff              # double 0.52090512721144921
	.quad	0x3fee3cd332c6f42f              # double 0.94492492597021804
	.quad	0x3fed071d19df3296              # double 0.90711836865519291
	.quad	0x3fe394165007903c              # double 0.6118270457341235
	.quad	0x3fe51be18e6a43f1              # double 0.65965345206688941
	.quad	0x3fef9a0ac7554727              # double 0.98755396778344539
	.quad	0x3fd86354d6df021c              # double 0.38106270774372475
	.quad	0x3fe6b1bf7691cb52              # double 0.70919774206263697
	.quad	0x3fdd1f25fb3d2624              # double 0.4550261453156017
	.quad	0x3fef5a6cdb6a10bf              # double 0.97978823522910107
	.quad	0x3fb421b84441b450              # double 0.078639523185942694
	.quad	0x3fecfb5c398daccc              # double 0.90568362465764939
	.quad	0x3fee3bba0b697c76              # double 0.94479086140553536
	.quad	0x3fe72a55197d2033              # double 0.72391753175998586
	.quad	0x3fb845c94a5a0568              # double 0.094814854290253714
	.quad	0x3fd4c354e5549d7c              # double 0.32442209621009233
	.quad	0x3fee25a3f013f267              # double 0.94209477319925561
	.quad	0x3fd4115aacd03576              # double 0.31355921627331129
	.quad	0x3fd77610d52b85b2              # double 0.36658116166480703
	.quad	0x3fd439a848a1a32a              # double 0.31601912587079772
	.quad	0x3fd48e9a96c309a2              # double 0.32120384905661059
	.quad	0x3fd562b6cbba54f0              # double 0.33415002723025022
	.quad	0x3fe7ef12d817db93              # double 0.74793379026128759
	.quad	0x3fdb3ce3d4e4d924              # double 0.4255914286653868
	.quad	0x3fe709508ab723ea              # double 0.71988703816270783
	.quad	0x3faf229186818910              # double 0.060810611409367721
	.quad	0x3fe6fce5d7e4be1f              # double 0.7183713165922575
	.quad	0x3febf7ba45e5f276              # double 0.87399018909452653
	.quad	0x3fceaf5ac3d2ed58              # double 0.2397263961955598
	.quad	0x3fef84972593eb2d              # double 0.98493535365500906
	.quad	0x3fed3f08d6dc48c2              # double 0.91394464459360614
	.quad	0x3feeb1af0155db65              # double 0.95918989430252266
	.quad	0x3fe5b883eef886cb              # double 0.67877384828553866
	.quad	0x3fd8206df59fff10              # double 0.37697934138121614
	.quad	0x3fee97a78f0d768e              # double 0.95601251544913324
	.quad	0x3fef912c82412113              # double 0.9864714187652076
	.quad	0x3fcb20a3bdb9d35c              # double 0.21193358196219492
	.quad	0x3fed8ae5b2bfe99a              # double 0.92320523178141234
	.quad	0x3fe981e669d4934b              # double 0.79710693998331672
	.quad	0x3fd76b8c5280f046              # double 0.36593921715735112
	.quad	0x3fbdc38348a57930              # double 0.11626453898995659
	.quad	0x3fe9d325069de070              # double 0.80702449123692865
	.quad	0x3fcdad332454dd54              # double 0.23184813760756617
	.quad	0x3fd1429068b8921e              # double 0.26968775011690294
	.quad	0x3fc166d3cd9c282c              # double 0.1359505418734569
	.quad	0x3fefc65c7b113aaa              # double 0.99296402012426666
	.quad	0x3fef6344117bb083              # double 0.9808674184291849
	.quad	0x3fd3e6d5e106cc08              # double 0.31096407866715525
	.quad	0x3fd1c474c7034632              # double 0.2776157325252796
	.quad	0x3fe61fea919627ad              # double 0.69139603075858747
	.quad	0x3fe840ce5c4780a7              # double 0.75791090033819308
	.quad	0x3fc16257d46c2fa0              # double 0.13581369278142308
	.quad	0x3feec2a3c22a55d3              # double 0.96125972674297555
	.quad	0x3fe4dcb6ec9b073d              # double 0.65194269382502734
	.quad	0x3fe93714a7acad2a              # double 0.78797371624879031
	.quad	0x3fdbf0cd46f8d64c              # double 0.43657237940656013
	.quad	0x3fe4290fec7a20c8              # double 0.63001247584272679
	.quad	0x3fb4c695e511a0e8              # double 0.081155174660696994
	.quad	0x3fe637e3520ab3a5              # double 0.69432226203717973
	.quad	0x3fe2f8a6827eef50              # double 0.59285283553570345
	.quad	0x3fec31195c7914c5              # double 0.88099353848578998
	.quad	0x3fd2480d50386b8a              # double 0.28564770540258932
	.quad	0x3fb879e22192da60              # double 0.095609791943255029
	.quad	0x3fa13e6ad690cb40              # double 0.03367933148583413
	.quad	0x3fdcc13ac3cd488c              # double 0.44929379578855655
	.quad	0x3fecc58772a95250              # double 0.89911243815238073
	.quad	0x3fe2a8d13a9f00a4              # double 0.58310758065637858
	.quad	0x3fe79f0330be5b06              # double 0.73816070099096076
	.quad	0x3fd109e55d167220              # double 0.26622900095552104
	.quad	0x3fe54ca3bad0dda7              # double 0.66560541617848379
	.quad	0x3fec74a06e874964              # double 0.88923665607061908
	.quad	0x3fdaf6916b1a1b58              # double 0.42129931887796124
	.quad	0x3fdfac0dadaf2f90              # double 0.49487630807265592
	.quad	0x3fe1314e6e3e4dbc              # double 0.53726884395512498
	.quad	0x3fe1f71947771b4c              # double 0.56141342123087545
	.quad	0x3fef08fc531d25b5              # double 0.96984688027548904
	.quad	0x3fd29c41258a6f52              # double 0.29078701654519989
	.quad	0x3fe6685e53d380f8              # double 0.70024029133131105
	.quad	0x3fe423ae1ec53c88              # double 0.62935548791746587
	.quad	0x3fe2510d5da533ad              # double 0.57239406862355724
	.quad	0x3fd40c0209cd869a              # double 0.31323290784175983
	.quad	0x3fe5b7ba7c684606              # double 0.67867779062561406
	.quad	0x3fd8bae953455592              # double 0.38640816814344092
	.quad	0x3f9c9ec1d3ab0280              # double 0.027949360412778734
	.quad	0x3fe6715e663f4cbf              # double 0.7013389584557429
	.quad	0x3fe33502afd8f210              # double 0.6002210077782042
	.quad	0x3f882f1635e01c40              # double 0.011808560866496731
	.quad	0x3fedbed9e9e49f19              # double 0.92954726869809001
	.quad	0x3feccb7c2eaaa98b              # double 0.89983948816852555
	.quad	0x3fe58b0e7645c814              # double 0.67322466945757009
	.quad	0x3fef21753b3ed257              # double 0.97283422061316116
	.quad	0x3fc1984098034820              # double 0.13745887205601637
	.quad	0x3feebe34ddf92e71              # double 0.96071856836483793
	.quad	0x3fbdf7856da24ac0              # double 0.11705812384233649
	.quad	0x3fe83ec855d3a4b4              # double 0.75766388667138651
	.quad	0x3fe45196d3d305e9              # double 0.63495961543975199
	.quad	0x3fdb44f9c79f91be              # double 0.42608494276489839
	.quad	0x3fe7eed77163725f              # double 0.74790546556648596
	.quad	0x3feea48fb31353a7              # double 0.9575880525177255
	.quad	0x3fe939750c4033a2              # double 0.78826382057888034
	.quad	0x3fe86d577ceaef28              # double 0.76334738157263349
	.quad	0x3feac5363e8ebf0a              # double 0.83657371729165786
	.quad	0x3fc8e764ec4d5708              # double 0.19456159151257446
	.quad	0x3fb6008b31ad31c0              # double 0.085945796611844649
	.quad	0x3fd5a83dc154b80c              # double 0.33839362983678778
	.quad	0x3fe1401a6127eabb              # double 0.53907507873312654
	.quad	0x3fd099b6ec9c5738              # double 0.25938199144853824
	.quad	0x3fea3befbe075a5b              # double 0.81981646647438866
	.quad	0x3f9d4ddb7361fc00              # double 0.02861731425991465
	.quad	0x3fe33c820b5022ef              # double 0.60113622865273253
	.quad	0x3fe142802dac07cb              # double 0.53936776085196791
	.quad	0x3fecbec46a500968              # double 0.89828701748073758
	.quad	0x3fd5981ed0545c10              # double 0.33740969032936707
	.quad	0x3fedbaa812845c34              # double 0.92903522125823778
	.quad	0x3fe23ece3d4e93da              # double 0.57016670202267083
	.quad	0x3fd71856f7e30838              # double 0.36086057861041665
	.quad	0x3fa39a147f22a150              # double 0.038284912604754084
	.quad	0x3fce186c9c8191ac              # double 0.235120369357117
	.quad	0x3fdf81533a24f246              # double 0.49226837804943491
	.quad	0x3fea03c09024eb9f              # double 0.81295803216140772
	.quad	0x3fef46f0b3e680e9              # double 0.97740969788358456
	.quad	0x3fe75c297d1ada6b              # double 0.73000025209951269
	.quad	0x3fb7e349e9076960              # double 0.093311900512536905
	.quad	0x3fb09b6b651dfdf0              # double 0.064871513544850989
	.quad	0x3fe6fb61caaa6196              # double 0.7181862791358522
	.quad	0x3fbfc45d1d0e18a8              # double 0.1240900226531233
	.quad	0x3feaa1cd32bb503f              # double 0.83225116642507391
	.quad	0x3fbd09b586d94150              # double 0.11342939893916548
	.quad	0x3fe13165ba2bd737              # double 0.53727995263645922
	.quad	0x3fcc1b072b463828              # double 0.21957482922556548
	.quad	0x3fd01e4c8403c834              # double 0.25184929744785056
	.quad	0x3fe2e85b7e7114f3              # double 0.59086394019746391
	.quad	0x3fdf11be5ee3a9de              # double 0.48545798555883646
	.quad	0x3fdd24c457d22224              # double 0.45536907745602861
	.quad	0x3fdb17f55be12354              # double 0.42333730671503145
	.quad	0x3fe971f5a6fceee7              # double 0.79516108145568587
	.quad	0x3fe5a56a454be530              # double 0.67644227537599555
	.quad	0x3fb43938af587190              # double 0.07899812966247155
	.quad	0x3fe55c8153d52dba              # double 0.66754213689403419
	.quad	0x3fcc92d496ffdabc              # double 0.22323090909022436
	.quad	0x3fc129f8e9435454              # double 0.13409339322848501
	.quad	0x3fdb698cc9ed8ee8              # double 0.42831725806739351
	.quad	0x3fc261fed297221c              # double 0.14361558230145099
	.quad	0x3fe60bbd7973835b              # double 0.68893312188093192
	.quad	0x3fc9a82207b39e4c              # double 0.20044350982719761
	.quad	0x3feea3d8fc5b40fb              # double 0.95750092781420848
	.quad	0x3fd80c87fafc2944              # double 0.37576484213117944
	.quad	0x3fcae6379dbed60c              # double 0.21015067293562628
	.quad	0x3fd932db41b87d0a              # double 0.3937290326884556
	.quad	0x3fbbd8584284a538              # double 0.10876990913370299
	.quad	0x3fe09f2fa3251d85              # double 0.5194318949151443
	.quad	0x3fe50682ad91f5ab              # double 0.65704473400517338
	.quad	0x3fe3b37adc9c4236              # double 0.61565917098966483
	.quad	0x3fcd46637dc6e720              # double 0.22871059075787858
	.quad	0x3fe8f1205cb105df              # double 0.77943437675292759
	.quad	0x3fb43fee3a62e708              # double 0.079100503210522644
	.quad	0x3feb5eeb01b2ec36              # double 0.85533666927165686
	.quad	0x3fb937141a107af0              # double 0.098496681559918419
	.quad	0x3fd5c4ed81277448              # double 0.34014451611239283
	.quad	0x3f7e4e30c17fb980              # double 0.0073987869763939562
	.quad	0x3fec01ffa3912fa7              # double 0.87524396845536934
	.quad	0x3fe96bbc11d3f452              # double 0.79440120203038078
	.quad	0x3fe295502e883c66              # double 0.58072671020807998
	.quad	0x3fecfaa1a8508317              # double 0.90559466241765818
	.quad	0x3fd6aa3cb6537618              # double 0.35414045148158513
	.quad	0x3fdd162dfb744942              # double 0.4544787364585724
	.quad	0x3fed213c39a5a28e              # double 0.91030703791791878
	.quad	0x3f823ed4a46724c0              # double 0.0089089024230751823
	.quad	0x3fd8c1ac9422239e              # double 0.38682093111179394
	.quad	0x3fcd5f33cd04c5b4              # double 0.22946784506488671
	.quad	0x3f8f367efb0d07c0              # double 0.015240661655869903
	.quad	0x3fed0d8eff8822e1              # double 0.90790510090399945
	.quad	0x3fee2a1f1a8edc99              # double 0.94264178454513392
	.quad	0x3fee5a8790a8fac0              # double 0.94855097059174653
	.quad	0x3fec0547cef6f3b3              # double 0.87564459250244508
	.quad	0x3fa809a5d94afe00              # double 0.046948607230202555
	.quad	0x3fb756e6795772a8              # double 0.091169743179714602
	.quad	0x3fc3102baf637fd4              # double 0.14893098892116419
	.quad	0x3fed837127b960b1              # double 0.92229516752833807
	.quad	0x3fd254ecd9219508              # double 0.28643342212883782
	.quad	0x3fea89ee73ff10e8              # double 0.8293373361161942
	.quad	0x3fdf8c968ed8f9fe              # double 0.49295581769902685
	.quad	0x3fe4e59e8d66ae01              # double 0.6530297052135553
	.quad	0x3fc4d764a8c84480              # double 0.16282327882121095
	.quad	0x3fec20f09509735a              # double 0.87902096852085809
	.quad	0x3fcc3a040bfd0c74              # double 0.22052050195097517
	.quad	0x3fbb07c59bbc52e0              # double 0.10558733989848745
	.quad	0x3fe61210ca6e4c7b              # double 0.68970527207638044
	.quad	0x3fde5ef9ffac7d7c              # double 0.47454690902846841
	.quad	0x3fea824e150032c3              # double 0.82840637304033071
	.quad	0x3fef56a91e567fce              # double 0.97932868886345559
	.quad	0x3fddb44fe4c8a3a6              # double 0.46413037626421738
	.quad	0x3fe084b77f5eb43b              # double 0.5162007796949476
	.quad	0x3fc1d49b4e21c6bc              # double 0.13930074038539952
	.quad	0x3fc4123a732b5394              # double 0.15680628417490239
	.quad	0x3fd3647f6c706446              # double 0.30300889577626255
	.quad	0x3faaf0f1ee4edbf0              # double 0.05261951478990301
	.quad	0x3fbc7d7fbd1c8ee0              # double 0.11128996245366407
	.quad	0x3fe55978a8441795              # double 0.66717179169130481
	.quad	0x3fe634c0c808f409              # double 0.6939395815785484
	.quad	0x3fe7f5a49e4e1eb2              # double 0.748735722722776
	.quad	0x3fb31bec5f9d8450              # double 0.074644826263026376
	.quad	0x3fd143d4f5e2a2ba              # double 0.26976512920604601
	.quad	0x3f754205072aba00              # double 0.0051899143606264353
	.quad	0x3fd55e5ede4978a0              # double 0.33388492305483375
	.quad	0x3fe767743fadca28              # double 0.73137867390898226
	.quad	0x3fe7a3bb3df7e759              # double 0.73873674491117491
	.quad	0x3fed879d596d3ad4              # double 0.92280452219150754
	.quad	0x3fe9540680d3739c              # double 0.79150700723004119
	.quad	0x3fe9d3b9e975aafd              # double 0.80709548566423417
	.quad	0x3fe96a9374c0bcd1              # double 0.79425976565644352
	.quad	0x3fed0d0fba4f9712              # double 0.90784441365096513
	.quad	0x3fecdf12c9e13e0c              # double 0.90223063878687659
	.quad	0x3fe63a82f65d11b8              # double 0.69464252584344077
	.quad	0x3fe2d4096409da56              # double 0.58838338412062785
	.quad	0x3fdb7ee9715a2070              # double 0.42962108678376065
	.quad	0x3fee6ce5a3422530              # double 0.95079309355165798
	.quad	0x3fe5a67a4d826b0a              # double 0.676571990380894
	.quad	0x3fb94e5d3b712790              # double 0.098851992618760542
	.quad	0x3fe194403e266768              # double 0.54934703959154962
	.quad	0x3fc314077b5ff8f4              # double 0.14904874347843811
	.quad	0x3feec0aacdb5b6a4              # double 0.96101894548128941
	.quad	0x3fe15fccbf71ff73              # double 0.54294431106244045
	.quad	0x3fd4ef8ecedd9ae4              # double 0.32712145044062724
	.quad	0x3fad48f19e434ca0              # double 0.057197142190170469
	.quad	0x3feaa93a984f3118              # double 0.83315782306593444
	.quad	0x3fc230869fcfa068              # double 0.14210589221261505
	.quad	0x3fec68d9fd0041e1              # double 0.88779925741442522
	.quad	0x3feb1c44e246aa1e              # double 0.84720081514871359
	.quad	0x3fef47d294ebcdb9              # double 0.97751740537790177
	.quad	0x3fde02a78fb31ea0              # double 0.46891202004597154
	.quad	0x3fe9d5b76646b302              # double 0.80733842826666113
	.quad	0x3fc1fcebaaab51f0              # double 0.14053102334459266
	.quad	0x3fe0b81abe316c8e              # double 0.52247368952829887
	.quad	0x3fd488ec56cb887a              # double 0.32085712886885853
	.quad	0x3fa6a5aa43e2da90              # double 0.044232674395449867
	.quad	0x3fd1b6a134102678              # double 0.27677183231626357
	.quad	0x3fd9afc568823a82              # double 0.40135321813514946
	.quad	0x3fdd64c47ed082dc              # double 0.45927536377170752
	.quad	0x3fe796b451261163              # double 0.7371465287147142
	.quad	0x3f84ab1edbc8ca80              # double 0.010092011530195011
	.quad	0x3fe066f96e1f6fe7              # double 0.51257010944709414
	.quad	0x3fc928a583030d5c              # double 0.19655293366495641
	.quad	0x3fd828eec6c6a0e2              # double 0.37749833499630203
	.quad	0x3fec5a2925ba1bd1              # double 0.88600594872047556
	.quad	0x3fc94ae1b18d055c              # double 0.19759770554996237
	.quad	0x3fed1fa5ed3ecd21              # double 0.91011329972244337
	.quad	0x3fe48d1ae71707f0              # double 0.64222474226721538
	.quad	0x3f984cb4406edc60              # double 0.023730102951699528
	.quad	0x3fe221e53df450c6              # double 0.566637631420712
	.quad	0x3fe9ecb0308a0420              # double 0.8101426075010103
	.quad	0x3fd9126c14fd6b60              # double 0.39174940156742899
	.quad	0x3fb6d52358c1fda8              # double 0.089189728898409926
	.quad	0x3fd97b170322a658              # double 0.39813781076609223
	.quad	0x3fd54e034d865214              # double 0.33288652964373111
	.quad	0x3fe05f78712d9af2              # double 0.51165411095720814
	.quad	0x3fe13be4a934d4f9              # double 0.53856118248100338
	.quad	0x3fc4f46a342343c4              # double 0.16370894952572546
	.quad	0x3f8eeb71e0d80000              # double 0.015097512888132769
	.quad	0x3fe2e4ec1d6dd51a              # double 0.59044461963518136
	.quad	0x3fe52e7cc45e04c4              # double 0.6619247279451419
	.quad	0x3fe7a763bbd6656a              # double 0.73918329894074231
	.quad	0x3fe9328db72e8ef2              # double 0.78742109086712575
	.quad	0x3fd45a0160ced64c              # double 0.31799349264051524
	.quad	0x3fe0c37e512469af              # double 0.52386394355862886
	.quad	0x3fda75263fd389d0              # double 0.41340023263015002
	.quad	0x3fe0c7bf011b3c5e              # double 0.52438307014552854
	.quad	0x3fd1813c118ccf5c              # double 0.27351285661574365
	.quad	0x3febafaca3aeccca              # double 0.86519462556170734
	.quad	0x3fc7b2177d4f2298              # double 0.18512242907151655
	.quad	0x3fd6140b345cc520              # double 0.34497337449563936
	.quad	0x3fede71c7921e0bb              # double 0.93446181925448657
	.quad	0x3feae82d1b82b1b6              # double 0.84084182141446351
	.quad	0x3fc883f728bc1444              # double 0.19152726639745954
	.quad	0x3facc0d99ee869e0              # double 0.056158829353268436
	.quad	0x3fe8faf6934acd5e              # double 0.78063515441901266
	.quad	0x3fd5897e315b11f2              # double 0.33651690311333404
	.quad	0x3fcc169851564754              # double 0.2194395444062659
	.quad	0x3fed77e57fd68ef0              # double 0.92088580101377993
	.quad	0x3fe61441cc13d8c3              # double 0.68997278078929758
	.quad	0x3fe2378d41253726              # double 0.56928122256951919
	.quad	0x3f4531c70a04e000              # double 6.4680308063369552E-4
	.quad	0x3fe5d8cf18d9b11c              # double 0.68271593907914818
	.quad	0x3fe362681da3e874              # double 0.60576253689875026
	.quad	0x3fc228950101f600              # double 0.14186346577837128
	.quad	0x3fb20f4273dfd760              # double 0.07054534272159918
	.quad	0x3fdd00c69ea89224              # double 0.45317235464088612
	.quad	0x3fd800442aa0fb3a              # double 0.37501625216457379
	.quad	0x3fb2da32446e5eb8              # double 0.073641912180728464
	.quad	0x3fe0797ad7d369a7              # double 0.51482908395273774
	.quad	0x3fd68f6118541910              # double 0.35250117660361102
	.quad	0x3fb7f3f5f39682b8              # double 0.09356629559489249
	.quad	0x3fc20f40869fec2c              # double 0.14109045575591617
	.quad	0x3fe5ef9e67e0c383              # double 0.68550033844631775
	.quad	0x3fe5212d40a582af              # double 0.66029989839815595
	.quad	0x3fe1ae243bfd6866              # double 0.55250751225254358
	.quad	0x3fdb2bf49df2283a              # double 0.42455783295065752
	.quad	0x3fdacbd6cb5f51ba              # double 0.41869134769992977
	.quad	0x3fca171220720aa0              # double 0.2038290651726884
	.quad	0x3fda4eeb088da6b8              # double 0.41106677851949369
	.quad	0x3fb1f3da15c8c490              # double 0.070127134626789323
	.quad	0x3fee026d66774ae2              # double 0.93779630673301662
	.quad	0x3fd4fe91864fe934              # double 0.32803762546940907
	.quad	0x3fd397e101d44cc6              # double 0.30614495447771295
	.quad	0x3fd12a059aba2b08              # double 0.26818981275634757
	.quad	0x3fe2867b98924a35              # double 0.57891635703192057
	.quad	0x3fe855e4b064182c              # double 0.76048502398839934
	.quad	0x3fbacd06ebf0fc98              # double 0.10469096432005853
	.quad	0x3fe8207c93c46d51              # double 0.75396565304564878
	.quad	0x3fdaf9d3542310a0              # double 0.42149813858510221
	.quad	0x3fc8093198ca08e0              # double 0.18778057060632758
	.quad	0x3feab7d1aa83275b              # double 0.83493884375750882
	.quad	0x3fdf959a6e907e26              # double 0.49350605771357647
	.quad	0x3fd871b10e276a3c              # double 0.38193918592665788
	.quad	0x3fe789dcc8a12b84              # double 0.7355789106890005
	.quad	0x3fd0d7149bd1907e              # double 0.26312747208272202
	.quad	0x3fded48ddcbb3b86              # double 0.48172327571676765
	.quad	0x3fabc2e845bc68b0              # double 0.054221399796192116
	.quad	0x3f9649a19750bd80              # double 0.021765255795057836
	.quad	0x3fe7ebebb4db895e              # double 0.74754891704314352
	.quad	0x3fd360cd2b30444e              # double 0.30278329103118018
	.quad	0x3fd9664edcf04bf6              # double 0.39686938835183072
	.quad	0x3fe53d8623fb2a9d              # double 0.66376025226175595
	.quad	0x3fd38e5ca5f60bca              # double 0.30556408126011247
	.quad	0x3fd963bc27a088c8              # double 0.39671234006722189
	.quad	0x3fe1e150f2e98f1f              # double 0.55875441974464823
	.quad	0x3fad9e4346234ef0              # double 0.057848074256666382
	.quad	0x3fd788c8b52ca3b2              # double 0.36772363369760364
	.quad	0x3fd310b6a4cf197e              # double 0.2978951081717226
	.quad	0x3fe5778b7f9c236d              # double 0.67084288524448044
	.quad	0x3fe6834b730de80c              # double 0.70352718802974001
	.quad	0x3f99581e473fc1c0              # double 0.024750207041451366
	.quad	0x3fdab82806083daa              # double 0.41749001111107964
	.quad	0x3fd908cb6df9c600              # double 0.39116178264438872
	.quad	0x3fc883a2c18c59e8              # double 0.19151720476720802
	.quad	0x3feab908c7fffb22              # double 0.83508719503865714
	.quad	0x3fe9cb260780c37a              # double 0.80604840722490612
	.quad	0x3f9865af9663c0c0              # double 0.023825400880867376
	.quad	0x3fe098c9b49d22fd              # double 0.51865086818824546
	.quad	0x3fd05a98d1d22a34              # double 0.25552959909751682
	.quad	0x3fed7dcbe564c2bb              # double 0.92160601428448474
	.quad	0x3fde31098e257ff8              # double 0.47174300080769127
	.quad	0x3fe4f61fbafab5ea              # double 0.65504442710306177
	.quad	0x3fedcfb90fd2c21f              # double 0.93160679903491317
	.quad	0x3f7485e29b7e6900              # double 0.0050104953624219295
	.quad	0x3fc421f0e0a2dfd8              # double 0.15728579491201233
	.quad	0x3fe9fc8844d13737              # double 0.81207669678563021
	.quad	0x3fc7e87b157300c0              # double 0.18678225085569089
	.quad	0x3fd4adfb03fc4b1e              # double 0.32311892880641035
	.quad	0x3fe94c5a33526f13              # double 0.79057035468892634
	.quad	0x3fe39bb9dc12805a              # double 0.61275952322831562
	.quad	0x3fbe309505115d88              # double 0.11792880414701845
	.quad	0x3fdc80ea7ea86504              # double 0.44536840790677013
	.quad	0x3fe78020c906291c              # double 0.73439063322556164
	.quad	0x3fe819bee0b80b40              # double 0.75314277544416797
	.quad	0x3fd8c105daf0ee7c              # double 0.38678118115397075
	.quad	0x3fed98cdb3ef78dc              # double 0.92490277427330225
	.quad	0x3fd8aef3fd5a6ca8              # double 0.38567828885579525
	.quad	0x3fdde92753a05cca              # double 0.46735556761400388
	.quad	0x3fe8e3a2f10087c3              # double 0.77778765745846845
	.quad	0x3fe776a34c75aee7              # double 0.73323216374907652
	.quad	0x3fd57cb5242a1e2a              # double 0.33573654681865384
	.quad	0x3fbb893cb8d27f68              # double 0.10756282341253398
	.quad	0x3fecdc45face02ea              # double 0.90188883767413341
	.quad	0x3fe71a529106ee58              # double 0.72196319890594918
	.quad	0x3fe5a8e87a829f85              # double 0.67686866691381964
	.quad	0x3fe4484b9a5f8fac              # double 0.63382511282951759
	.quad	0x3fd75fa3c6c894ce              # double 0.36521238720372373
	.quad	0x3f9aace220864780              # double 0.026050122485294036
	.quad	0x3fe157104512b640              # double 0.54187787524069364
	.quad	0x3fe3d4fc58d2d75b              # double 0.61974923466071219
	.quad	0x3fb6bf747831da50              # double 0.088858870834749525
	.quad	0x3fb64d63f3964690              # double 0.087118384332166565
	.quad	0x3fd4b3be794138e4              # double 0.32347070542608791
	.quad	0x3fd05cd16533d124              # double 0.25566515811012125
	.quad	0x3fe6eb52e2540954              # double 0.71622604565372194
	.quad	0x3fe1280ada6ec30a              # double 0.53613798773412324
	.quad	0x3fe746a87e0dfa85              # double 0.72737526531257457
	.quad	0x3fede11055056d40              # double 0.93372360807135379
	.quad	0x3fee020dbb512308              # double 0.93775068841304776
	.quad	0x3fee321f8c6f83e1              # double 0.94361855915860471
	.quad	0x3fec26ed13a44983              # double 0.87975171886709835
	.quad	0x3fc0aa5a7321a570              # double 0.13019877072955977
	.quad	0x3fdb9f0cf1948d9c              # double 0.43158267585587295
	.quad	0x3fde0708f507136c              # double 0.46917938164215545
	.quad	0x3fd115af8652e4d6              # double 0.26694858663138399
	.quad	0x3fd3a9817d21ce80              # double 0.30722081394126377
	.quad	0x3fcc0d658fe45fe8              # double 0.21915883565884475
	.quad	0x3fec4de9474f272e              # double 0.88451064994408113
	.quad	0x3fbfd20c0871afb8              # double 0.12429881292490463
	.quad	0x3fc501d6c6d27360              # double 0.16411862094983132
	.quad	0x3fa544c580bf4dd0              # double 0.041540309873791537
	.quad	0x3feb6b170badfb13              # double 0.85682251244711194
	.quad	0x3fd50715f0125e42              # double 0.32855747646815214
	.quad	0x3fefbd510b0fc8c9              # double 0.99185993347625711
	.quad	0x3fc3d42e7664ba58              # double 0.15491276532107423
	.quad	0x3fc323664fe8f008              # double 0.14951781179286194
	.quad	0x3fc5799e3fbe7e8c              # double 0.16777399170404228
	.quad	0x3fef1e47fd527bc4              # double 0.97244643666260133
	.quad	0x3fe16010f291fcaf              # double 0.54297683121685292
	.quad	0x3fd842a21712d08c              # double 0.37906696561118092
	.quad	0x3fb0f1eb239b77c8              # double 0.066191383546054472
	.quad	0x3fc9252d1d78e0ac              # double 0.19644702853270724
	.quad	0x3fe8e55994f40792              # double 0.77799681751661098
	.quad	0x3fbf769621172248              # double 0.12290323551054272
	.quad	0x3fe507b6c74916d7              # double 0.65719164774847172
	.quad	0x3feeebb415e83690              # double 0.96627239493109762
	.quad	0x3fb7def4f6150a40              # double 0.093245802000674338
	.quad	0x3fd6b5418995a406              # double 0.35481298862447408
	.quad	0x3f9f8f8bafa6f700              # double 0.03082102069469439
	.quad	0x3fde7dacc91f5ba8              # double 0.47642058983677282
	.quad	0x3fd5db65cee7d712              # double 0.34151597219111907
	.quad	0x3fe4c4f319210deb              # double 0.64904169948607426
	.quad	0x3fc405f253e90df0              # double 0.1564314756125067
	.quad	0x3fde517406b67fca              # double 0.47372151046328936
	.quad	0x3fb4ceec71461f28              # double 0.081282403616680043
	.quad	0x3fe87446bc6f2173              # double 0.76419388583694425
	.quad	0x3feab77f1600b03f              # double 0.8348994664897943
	.quad	0x3fd2e5a8e04110de              # double 0.2952673139555041
	.quad	0x3fe5b51bbdb30b45              # double 0.6783579545084214
	.quad	0x3fc110bcc0a66300              # double 0.13332328230605839
	.quad	0x3fe20b6b19379dea              # double 0.56389384198422232
	.quad	0x3fd7be68de7cd32a              # double 0.37099668242744832
	.quad	0x3fe9c5743838412e              # double 0.80535326939028606
	.quad	0x3fd87aa01cab53e6              # double 0.38248446273547498
	.quad	0x3fd5b1cb3fc4779e              # double 0.33897668101587353
	.quad	0x3fd459df4d6a55a8              # double 0.3179853683480709
	.quad	0x3fc36d7305965be8              # double 0.15177762768573122
	.quad	0x3fedaee8b4c6ff71              # double 0.92760119731972968
	.quad	0x3fc9c126f85c2094              # double 0.20120703818270569
	.quad	0x3fc3227a7c7c8aa8              # double 0.14948969915811472
	.quad	0x3f90d991c91978a0              # double 0.016454961680545055
	.quad	0x3fea0729c0f2812a              # double 0.81337440190330779
	.quad	0x3fcd25b4ff9264b0              # double 0.22771322707266028
	.quad	0x3fe69aef218b7035              # double 0.7064128546876477
	.quad	0x3fa0e269363d7400              # double 0.032977378722286232
	.quad	0x3fd952cef90b556a              # double 0.39567922898034757
	.quad	0x3fe5d1caec1bafda              # double 0.68185945620416111
	.quad	0x3fc997039294d968              # double 0.1999210801820468
	.quad	0x3fd4b6a4afe5efbe              # double 0.3236476629024273
	.quad	0x3fde31611ba1fe6a              # double 0.4717638749934624
	.quad	0x3fed95a173d08d01              # double 0.92451546306656962
	.quad	0x3fed4c0fae58a35a              # double 0.91553482105255601
	.quad	0x3fde71f53264817e              # double 0.47570543213989669
	.quad	0x3fbce45ee9a16be0              # double 0.11285966113921075
	.quad	0x3fe0990827a6da39              # double 0.51868064636693767
	.quad	0x3fdb6ac637d1958a              # double 0.42839198542636636
	.quad	0x3fd772f3c17efb9a              # double 0.36639112373443938
	.quad	0x3fbb04c753ed2ae8              # double 0.1055416660212064
	.quad	0x3feacde4641cdcf8              # double 0.83763331940909236
	.quad	0x3fec2781c60994d7              # double 0.87982262305436165
	.quad	0x3fe8c0a9ea3a7c4c              # double 0.77351852176423951
	.quad	0x3fcc810c2f7236a8              # double 0.22268822018343326
	.quad	0x3fe0e4cc3f952e09              # double 0.52792942446234392
	.quad	0x3fb8ec168bb4f720              # double 0.097352418048981537
	.quad	0x3fe50a201d95bbf7              # double 0.65748601702023179
	.quad	0x3fe30254e883d96a              # double 0.59403462803929341
	.quad	0x3fdcd604e7919646              # double 0.45056269277697358
	.quad	0x3f90bf2679f469e0              # double 0.016354180520559924
	.quad	0x3fc06bbc3ca83210              # double 0.12828782045143372
	.quad	0x3fd2f5f45b981610              # double 0.29626187271819138
	.quad	0x3fdd34d4caaee276              # double 0.45634956162715612
	.quad	0x3fe02c0ca61f8550              # double 0.50537712522433687
	.quad	0x3fe239a298090a85              # double 0.56953553861997419
	.quad	0x3fe4f9f239684757              # double 0.65551100933428585
	.quad	0x3fbfff5bef39ce70              # double 0.12499022093271051
	.quad	0x3fd5148890458594              # double 0.32937826241512735
	.quad	0x3f89e02749c29ec0              # double 0.012634570063098649
	.quad	0x3fdc4d6f1528fdfe              # double 0.44222619120043294
	.quad	0x3fe33088eccf3b6b              # double 0.59967466594558283
	.quad	0x3fe70a09c110873c              # double 0.71997535427019654
	.quad	0x3fd463d5286ece8e              # double 0.3185933012821146
	.quad	0x3fd9996d0744b600              # double 0.39998937330059903
	.quad	0x3fc0dbee437417a4              # double 0.13171175283076508
	.quad	0x3fd70ba0696b63e2              # double 0.36008463187095974
	.quad	0x3fcdc633b22a5584              # double 0.23261114310723141
	.quad	0x3fd748701cdc03c8              # double 0.36379626100830054
	.quad	0x3fe96cf287b55030              # double 0.7945492411186077
	.quad	0x3fea281662414156              # double 0.8173934859314993
	.quad	0x3fe4fe98d0286808              # double 0.65607872634723297
	.quad	0x3fdc498f9bdf3ef6              # double 0.44198980543022459
	.quad	0x3fdbbb08cf0f5176              # double 0.43329067440688307
	.quad	0x3fea5a0bf712c7a8              # double 0.8234920335437339
	.quad	0x3fb366287ec1d770              # double 0.075777560183124981
	.quad	0x3fe6bb8a3be2159c              # double 0.71039306350637643
	.quad	0x3fa8953a1a7718c0              # double 0.048013511400812003
	.quad	0x3fe3765c09ee631e              # double 0.60819818439185602
	.quad	0x3fe2198dd7d855d0              # double 0.56561939389455951
	.quad	0x3fe1a58b9aa9823c              # double 0.55145817000818154
	.quad	0x3fd6d299c1af6d46              # double 0.3566040412385586
	.quad	0x3f97864d5236fe80              # double 0.022973259108538091
	.quad	0x3fd996c6135a668a              # double 0.39982749834016629
	.quad	0x3fd57348d0a1de72              # double 0.33516140341041656
	.quad	0x3fec1b7bf819070b              # double 0.87835501152605511
	.quad	0x3fe9e3deeee26e9b              # double 0.80906626374367663
	.quad	0x3fb15b020f19f698              # double 0.06779492253005015
	.quad	0x3fea63a4a39878c8              # double 0.824663466951983
	.quad	0x3fdc49b6b5a52282              # double 0.44199912775778938
	.quad	0x3fd99b70391f71d0              # double 0.40011220529939084
	.quad	0x3fc962708750a4e8              # double 0.19831663710764436
	.quad	0x3f91e894b8d5d9e0              # double 0.017488788396315402
	.quad	0x3fd3d0a6fda53824              # double 0.30961012620980655
	.quad	0x3fdbd77989d51de8              # double 0.43502653560832849
	.quad	0x3fe1e7cdd9c83d2b              # double 0.55954639945585904
	.quad	0x3fe20da01078a310              # double 0.56416323868788432
	.quad	0x3fe6e43265c7b986              # double 0.71535606268825869
	.quad	0x3feff95ff8c36e32              # double 0.99919127070046998
	.quad	0x3fd73d00c5ed30ea              # double 0.36309832886469329
	.quad	0x3fefb3db9f24ac99              # double 0.9907053097025652
	.quad	0x3fe62dfe49f4da03              # double 0.69311441845530941
	.quad	0x3fee37e97a01e36c              # double 0.94432519750180921
	.quad	0x3fbd5bb068675e18              # double 0.11468031453056715
	.quad	0x3fb3af1c26199190              # double 0.076890715886810179
	.quad	0x3fefe44e5015d0c7              # double 0.9966193737186807
	.quad	0x3fcd11850f188128              # double 0.22709716069312802
	.quad	0x3fcf3dbc413e1e84              # double 0.24407151399303839
	.quad	0x3fcb685c1c6ce928              # double 0.21412230861626225
	.quad	0x3fcbd7393b62abfc              # double 0.21750560187987833
	.quad	0x3fdbfd55cfb39ccc              # double 0.437337353547673
	.quad	0x3fec7e0c0ef39d27              # double 0.89038660927045477
	.quad	0x3fc68ce6331d63f8              # double 0.17617490287628335
	.quad	0x3fde8f732c68e9fe              # double 0.47750548684021499
	.quad	0x3fe2b67fad2eca9e              # double 0.58477767777215539
	.quad	0x3fea9a6104aa22a1              # double 0.83134509001782331
	.quad	0x3fe2fd2571a69754              # double 0.59340164372836535
	.quad	0x3fe56c71677f4d97              # double 0.66948766912757918
	.quad	0x3fd002eae747bf94              # double 0.25017807565654349
	.quad	0x3fe4c8f8dab52c63              # double 0.64953272549008678
	.quad	0x3fe36070cd1cda77              # double 0.6055225378139103
	.quad	0x3fd18c5eed24f2c4              # double 0.27419255407930287
	.quad	0x3f63a3cb001fe500              # double 0.0023974385121589004
	.quad	0x3fd522fdc7b63e96              # double 0.33026070120920659
	.quad	0x3fd2983fc0723662              # double 0.29054254334992013
	.quad	0x3fdda3b38bb88e54              # double 0.46311653751965776
	.quad	0x3fb78293496fc128              # double 0.09183617155918411
	.quad	0x3fdcfc3d3d6f0ed6              # double 0.45289546012302873
	.quad	0x3fbee003e4201ff8              # double 0.12060570067853849
	.quad	0x3fc18ed415d01d48              # double 0.13717127862057965
	.quad	0x3fe7a6da693a14e2              # double 0.73911781837582802
	.quad	0x3faf9b87e3638ab0              # double 0.06173348093741049
	.quad	0x3fed7a8a9659fad9              # double 0.92120866170429416
	.quad	0x3fda0eb3a7488fe8              # double 0.40714732490800865
	.quad	0x3fd2b7a1a1c80af4              # double 0.29245796965567128
	.quad	0x3fa69088d1f993e0              # double 0.044071460372641758
	.quad	0x3fb671bdc31ae700              # double 0.0876730538683681
	.quad	0x3fda9864e7a919a6              # double 0.4155514013586078
	.quad	0x3fda87a3e6111224              # double 0.41452882258843915
	.quad	0x3fd5012e46860d1a              # double 0.32819706809114424
	.quad	0x3fe152a4210ccdd4              # double 0.54133802847939672
	.quad	0x3fd8e4664fa5fa66              # double 0.38894040849837663
	.quad	0x3fdddb3a8bc001c4              # double 0.46650565764869278
	.quad	0x3fecc1d8d9facc21              # double 0.89866297315746035
	.quad	0x3fefe20682fa38c7              # double 0.99634099561242173
	.quad	0x3fe77cc0c7b43a4d              # double 0.73397864346208908
	.quad	0x3fd0497531a2c500              # double 0.25448350760696314
	.quad	0x3fa40cfed95a21b0              # double 0.039161647827373414
	.quad	0x3fefe4c7d4223d7d              # double 0.99667731697438421
	.quad	0x3fef5b2b56a401e5              # double 0.97987906381609646
	.quad	0x3fc8fb38e2700ea4              # double 0.19516669327287162
	.quad	0x3fd91904eba8ed6c              # double 0.39215205205592585
	.quad	0x3fa52b41a93dc7a0              # double 0.041345645818082533
	.quad	0x3fd14a90c5461032              # double 0.27017611756332649
	.quad	0x3fd6117886bb0d3e              # double 0.34481633336345741
	.quad	0x3fe439794f529162              # double 0.63201585285836992
	.quad	0x3fc7f064619f3224              # double 0.18702368513767553
	.quad	0x3fdfe61ac7283f50              # double 0.49841947030016787
	.quad	0x3fcbdab20e9f7e78              # double 0.21761155809416599
	.quad	0x3feaea781dbe7f92              # double 0.84112172898675142
	.quad	0x3feacdedb70d4202              # double 0.83763776542951995
	.quad	0x3fe5f9a202d813ed              # double 0.68672276072959237
	.quad	0x3fe1322db82c4b9a              # double 0.53737531634611746
	.quad	0x3fe58876d760a416              # double 0.67290823045653059
	.quad	0x3feda18b487ca47c              # double 0.92596973569483465
	.quad	0x3fd50ef86a23f466              # double 0.32903871884611247
	.quad	0x3fecb47d0bdc483a              # double 0.89703228298663551
	.quad	0x3fb92192514ae7c8              # double 0.098168511244607903
	.quad	0x3fd3f38eb6f5cc92              # double 0.31174056880190293
	.quad	0x3fd1f33b980cd9a0              # double 0.28047075127269672
	.quad	0x3feaec94bc66b1ed              # double 0.84137951657390675
	.quad	0x3fe8cbde69da92cc              # double 0.77488632845469274
	.quad	0x3facebe6e5046bb0              # double 0.056487288910111899
	.quad	0x3fe4a394df8fd191              # double 0.64496844925320052
	.quad	0x3fe0c3a316edcc08              # double 0.52388147810268126
	.quad	0x3fd4e77056414260              # double 0.32662590430576266
	.quad	0x3feac9f12543d691              # double 0.83715111997908498
	.quad	0x3fdb74ea84321774              # double 0.42901099118932184
	.quad	0x3fe9df730ffba156              # double 0.8085265457312214
	.quad	0x3fe3c8eb87f7676a              # double 0.61827637248937362
	.quad	0x3fabdd6e1feb7100              # double 0.054423753162810229
	.quad	0x3fe33b92eb21fcb2              # double 0.60102220463149636
	.quad	0x3fdd4cc8af7beb6c              # double 0.45781151902308781
	.quad	0x3fee6212c9f159de              # double 0.94947184984158262
	.quad	0x3fe60cc207c2694d              # double 0.68905736461173606
	.quad	0x3febda3ce7dc1afe              # double 0.8703903702269995
	.quad	0x3fd3c801d00bf396              # double 0.30908246342715395
	.quad	0x3fc2213cf7ba5818              # double 0.14163934799279398
	.quad	0x3fe55496725f46c9              # double 0.66657564485850529
	.quad	0x3fd15c4a5afed22e              # double 0.27125796209591868
	.quad	0x3fe6172211b4d0b6              # double 0.69032386263145074
	.quad	0x3fd440b36c837606              # double 0.31644902798674968
	.quad	0x3f937bad4ac452c0              # double 0.019026477516564055
	.quad	0x3fd5f453c207a250              # double 0.34303754757141736
	.quad	0x3fd301b4ecd2d474              # double 0.29697917105961058
	.quad	0x3fc54dd10ea9a384              # double 0.16643727508497019
	.quad	0x3fe0413234bbd9fd              # double 0.50795851039475759
	.quad	0x3fecb20a269a6978              # double 0.89673335590059278
	.quad	0x3fb1190fcb5a1420              # double 0.066788661142780814
	.quad	0x3fd47dc357f944f0              # double 0.32017596808607518
	.quad	0x3fbb1df631c63b18              # double 0.10592592921441868
	.quad	0x3fd9e77a2a88f4aa              # double 0.40475324777419053
	.quad	0x3fd5650ec422f108              # double 0.33429307130769859
	.quad	0x3fe73913d591a8cf              # double 0.72571746552173433
	.quad	0x3fdfe027c20cdf56              # double 0.49805635404799398
	.quad	0x3fdab8ebb38b196c              # double 0.41753666432887004
	.quad	0x3fd6ca01a857c122              # double 0.35607949676252038
	.quad	0x3fe349a4056e2926              # double 0.60273934422119591
	.quad	0x3fef1cde4d8f9766              # double 0.97227397106756253
	.quad	0x3feac4388ba9e4b4              # double 0.83645274427467208
	.quad	0x3fe03ecc138158de              # double 0.50766567048665556
	.quad	0x3fd687cabd42cf00              # double 0.35203808290974337
	.quad	0x3fe29a06ba729fc3              # double 0.58130203643394684
	.quad	0x3fefd0306b9b7dd5              # double 0.9941637136179745
	.quad	0x3feb705cb5552afe              # double 0.85746608177700501
	.quad	0x3fe010d586f26efb              # double 0.50205494267308326
	.quad	0x3fde318305121f00              # double 0.47177196021264933
	.quad	0x3fde5a5a02d5ce5e              # double 0.47426462437508643
	.quad	0x3fee9baf8432810c              # double 0.95650459117681085
	.quad	0x3fdadae3b95b22b2              # double 0.41960995770618148
	.quad	0x3fe3f6d8df8035c3              # double 0.62388271000389073
	.quad	0x3fdbe8572c649e12              # double 0.43605594001061931
	.quad	0x3fbdea18da694770              # double 0.11685328800493067
	.quad	0x3fed5030ab157d3e              # double 0.91603883185226898
	.quad	0x3fe6f2850a7cf3b9              # double 0.71710445450263827
	.quad	0x3fa95b7b40e964b0              # double 0.049526073144713023
	.quad	0x3fe75fd79e8cc429              # double 0.73044949499865652
	.quad	0x3feedae84e17cfc2              # double 0.96422209980527662
	.quad	0x3fe0ae1ed443f9ec              # double 0.5212549348651101
	.quad	0x3fb70303916ad3a8              # double 0.089889739038723548
	.quad	0x3fe50afef786dd5a              # double 0.65759228081780496
	.quad	0x3fd0b57c7e8fa57e              # double 0.26107704505428575
	.quad	0x3fe7057be7d8096d              # double 0.7194194343758632
	.quad	0x3fe29accd1c5f5d9              # double 0.58139649363846069
	.quad	0x3fdf2c40b494334e              # double 0.48707597384127588
	.quad	0x3fef8a37cdfea944              # double 0.98562231286386081
	.quad	0x3fefd5d1881bc204              # double 0.99485088905026985
	.quad	0x3fdc748377da083c              # double 0.44461142257944508
	.quad	0x3fe0c564effc9e80              # double 0.52409598228855714
	.quad	0x3fede0ddfaac6286              # double 0.93369959792751511
	.quad	0x3fdd0cdc0b3f9bcc              # double 0.45390988443835734
	.quad	0x3fcda01d7423526c              # double 0.23144882365035657
	.quad	0x3fe8476828a197da              # double 0.75871665893350415
	.quad	0x3fe0c7a84bf09211              # double 0.5243722422788456
	.quad	0x3fde12d170a9394a              # double 0.46989856721929313
	.quad	0x3fe87fa142a0d099              # double 0.76557982457463247
	.quad	0x3fef4f886ca43578              # double 0.97845860690146846
	.quad	0x3fd007ade4030418              # double 0.25046870486045369
	.quad	0x3fe2f6a9e055f04d              # double 0.59261030021253591
	.quad	0x3fe06a220c1b8bc2              # double 0.51295568814054371
	.quad	0x3fe3ff9996dd61ef              # double 0.62495116678024754
	.quad	0x3fe4f80aa6230999              # double 0.6552785153256081
	.quad	0x3fd8eb7ec8cceddc              # double 0.38937348946975958
	.quad	0x3fc14f63a73e8bac              # double 0.13523526827074528
	.quad	0x3fcaa71300602384              # double 0.2082237006982518
	.quad	0x3fc8238de9747a08              # double 0.18858503245515146
	.quad	0x3fe519c3d38f6b5f              # double 0.65939513511998971
	.quad	0x3fd6ca218e06ca28              # double 0.35608710164811663
	.quad	0x3fe9e8a418e86d30              # double 0.80964856018855436
	.quad	0x3feacd6a0a65a452              # double 0.83757497816726301
	.quad	0x3fbadf0fa83dda60              # double 0.10496614320241227
	.quad	0x3fe251a7a5a0ea9f              # double 0.5724676356251911
	.quad	0x3fef04f78e9364e8              # double 0.96935632559612106
	.quad	0x3fe1819380dc13a9              # double 0.54706740539460441
	.quad	0x3fc0999c6f11d2e0              # double 0.12968783782311899
	.quad	0x3fe8f275cb051ced              # double 0.77959718372667697
	.quad	0x3fe18e9928451241              # double 0.54865701546857093
	.quad	0x3f9f861cc5d143e0              # double 0.030785035680597761
	.quad	0x3f7d3bcdd536da00              # double 0.0071371116968550474
	.quad	0x3f937c211c206320              # double 0.019028203336435401
	.quad	0x3fdd84cfe382762a              # double 0.46123120515571492
	.quad	0x3fa1a636165fa3d0              # double 0.034471216422225504
	.quad	0x3fd8d1ffb27a5d92              # double 0.38781731061450231
	.quad	0x3fe225d5c6683cd4              # double 0.56711853743936524
	.quad	0x3fdd934f603b7eb8              # double 0.46211609265990772
	.quad	0x3feae3d0f01afb11              # double 0.8403095902975527
	.quad	0x3facd8a6b824e180              # double 0.056340417841457047
	.quad	0x3fe39252f2336db1              # double 0.61161181740629023
	.quad	0x3fd1456d8596fb24              # double 0.26986253782154024
	.quad	0x3fd689aab3d15eae              # double 0.35215251503312117
	.quad	0x3fdb3fd3da65bdee              # double 0.42577072456239662
	.quad	0x3fed6f805f82db05              # double 0.91986101774713858
	.quad	0x3fee53218547f24d              # double 0.94764781981900514
	.quad	0x3fe722bf3f0978c0              # double 0.72299158393777674
	.quad	0x3fd313864ddbc288              # double 0.29806668856966967
	.quad	0x3f7cea20ab316c00              # double 0.0070592189905154257
	.quad	0x3fc4fbe6e44209a8              # double 0.1639374365368671
	.quad	0x3fe258586bd7ba7c              # double 0.57328435004258393
	.quad	0x3fe35c49073c47d3              # double 0.6050152913396637
	.quad	0x3fe8bdfe5aef7623              # double 0.77319257508105854
	.quad	0x3fdfa2ccea3b3410              # double 0.49431155084749978
	.quad	0x3fec3170c1739f72              # double 0.88103521140599939
	.quad	0x3fd2bd49a1e04960              # double 0.2928031998464089
	.quad	0x3febfbfe8cd928bd              # double 0.87451102742604514
	.quad	0x3fc75419434d2618              # double 0.18225398813437788
	.quad	0x3fe2b764046665ea              # double 0.58488655909894516
	.quad	0x3fdbaeb098bb3cfe              # double 0.432537221099622
	.quad	0x3feb24cbeac0ac8f              # double 0.84824176645396843
	.quad	0x3fd52696a20eb2de              # double 0.33048024965209588
	.quad	0x3fd6e153afc55942              # double 0.35750286259771624
	.quad	0x3fed8429c93410f7              # double 0.92238320634399329
	.quad	0x3fe8f64c2c02ac75              # double 0.78006561847486344
	.quad	0x3fe31d87658f7499              # double 0.59735460124979334
	.quad	0x3fdeb58333c8b4d6              # double 0.4798286443427292
	.quad	0x3fd7856273902bba              # double 0.36751614842858837
	.quad	0x3fe515096b394f6a              # double 0.65881796781694146
	.quad	0x3fe2fb1afbe89248              # double 0.59315251541972547
	.quad	0x3fe72fff1246a884              # double 0.72460893220456102
	.quad	0x3fe5101dc209e66b              # double 0.65821731470277933
	.quad	0x3fe0e8edcae81fe4              # double 0.52843370084974284
	.quad	0x3fe6a40b8dfd7279              # double 0.70752504093577706
	.quad	0x3feb88f4d81e214e              # double 0.8604683133171791
	.quad	0x3fe1dfbdfc1cb1e4              # double 0.55856227150576077
	.quad	0x3fd8360670aa47b8              # double 0.37829743387657855
	.quad	0x3fe236b90510c860              # double 0.56918002118460365
	.quad	0x3fc7a4b00666bbbc              # double 0.18471336662829951
	.quad	0x3fe630913f6236a4              # double 0.69342863444918068
	.quad	0x3f7f5bf31c30a880              # double 0.00765604939355502
	.quad	0x3fdc18c765f7e27e              # double 0.43901238401262066
	.quad	0x3fc3ff6c622f2ab4              # double 0.15623240274574857
	.quad	0x3fe7519aa86d4e5c              # double 0.72871144195455484
	.quad	0x3feacc1f34e6130e              # double 0.83741722423346387
	.quad	0x3fd8a0542fa37236              # double 0.38478569652741912
	.quad	0x3fe21de960a3ead9              # double 0.56615132212695152
	.quad	0x3fe53223060b26cd              # double 0.66237021618254632
	.quad	0x3f9b5b4e3d5af280              # double 0.026715490813091325
	.quad	0x3fe80b26be49c117              # double 0.75136124768872292
	.quad	0x3fa03f7430879790              # double 0.031734114574461292
	.quad	0x3fed203f12719d9e              # double 0.91018632509524244
	.quad	0x3feafa09dc28b036              # double 0.84302227973740318
	.quad	0x3fb1cb6ec56bb650              # double 0.06951038665621323
	.quad	0x3fe6c187394647df              # double 0.71112405001099066
	.quad	0x3fe8d8f23609ef56              # double 0.77648268274740917
	.quad	0x3fee21ee984594c9              # double 0.94164209118448483
	.quad	0x3fe0209013979784              # double 0.50397495104401502
	.quad	0x3fda94b07cb19a96              # double 0.41532528092504017
	.quad	0x3fc53331f916955c              # double 0.16562485373030256
	.quad	0x3fe9ab04634ac51f              # double 0.80212611573202597
	.quad	0x3fdfe954423f20ac              # double 0.49861628026384142
	.quad	0x3fe4766ca61a983c              # double 0.63945610468068237
	.quad	0x3fe92605c589f9b6              # double 0.78589142400578882
	.quad	0x3fda08950f0aac92              # double 0.40677381962695691
	.quad	0x3fdc755019569b54              # double 0.44466021036571601
	.quad	0x3fe851156dd663a3              # double 0.75989791348103031
	.quad	0x3fef1b6a2ab2997d              # double 0.97209652270684865
	.quad	0x3fc2f65688fb9790              # double 0.1481426400052297
	.quad	0x3fe085efeafe9a01              # double 0.51634975335474576
	.quad	0x3f80726ef33ea800              # double 0.0080307643873602785
	.quad	0x3fb24e2219beea58              # double 0.071504718099200004
	.quad	0x3fe762d9f61852b9              # double 0.73081682267601089
	.quad	0x3fdeec160d5259dc              # double 0.48315955449052495
	.quad	0x3fe9d2c9db4ccb8e              # double 0.80698101837184466
	.quad	0x3fda3ec7422e6b14              # double 0.41008168662089983
	.quad	0x3fe41756b4e0aa54              # double 0.62784896209388785
	.quad	0x3fd626630d1d1b10              # double 0.34609295158991049
	.quad	0x3fd625ad38c19bee              # double 0.34604960005384455
	.quad	0x3fe254db67baf201              # double 0.57285852680030314
	.quad	0x3fd2fa71239a6b3e              # double 0.29653576352000133
	.quad	0x3f9210cb2adb5180              # double 0.017642187586561331
	.quad	0x3fdfa32d2af6abd6              # double 0.49433449931774243
	.quad	0x3fea839217e0fcec              # double 0.82856087364043906
	.quad	0x3fe5999ce3bbad92              # double 0.6750015685951658
	.quad	0x3fef6fbc5ba0e5cf              # double 0.98238962074463553
	.quad	0x3fd4c1ca1d90edb0              # double 0.32432797324482987
	.quad	0x3fd146c624e3dfe2              # double 0.26994470217277755
	.quad	0x3fe55b1ffe20566c              # double 0.6673736537365591
	.quad	0x3fed8808246f1a35              # double 0.92285544506086714
	.quad	0x3fc6cbbc8038d0b8              # double 0.17809253941380176
	.quad	0x3fed1f0958ed8eda              # double 0.910038636863159
	.quad	0x3fb857e861169598              # double 0.095091365531138172
	.quad	0x3fe0880cd47fda76              # double 0.51660768035692572
	.quad	0x3fd69c7701dff666              # double 0.35329985793200647
	.quad	0x3fe8bae92e97f4e2              # double 0.77281626797016778
	.quad	0x3f9199e065fb1540              # double 0.017188554977811465
	.quad	0x3fe6db8535dbdac0              # double 0.71429691809938589
	.quad	0x3fde7598b4dcae10              # double 0.47592752134616578
	.quad	0x3fa2e08945829340              # double 0.036869325385203044
	.quad	0x3fe5487d6f6f8503              # double 0.66509887470979867
	.quad	0x3fad5e8c5ddcf4a0              # double 0.057361971338175666
	.quad	0x3fe4544cd24f75b0              # double 0.63529053760765031
	.quad	0x3fe9e5a120860d91              # double 0.80928093292497938
	.quad	0x3fac3982ea325550              # double 0.055126277054265871
	.quad	0x3fd6268619ba997c              # double 0.34610130798900918
	.quad	0x3fe22543301c14ff              # double 0.56704863926339033
	.quad	0x3fdcb6fc499c3046              # double 0.44866854847419224
	.quad	0x3feab68f438cd6ad              # double 0.83478511041058356
	.quad	0x3fbc39236a0f7098              # double 0.1102468618332203
	.quad	0x3feb8c73c33d6f55              # double 0.86089504368599512
	.quad	0x3fddfa7cd814e7c6              # double 0.46841355420803799
	.quad	0x3fe5d92e78ffab06              # double 0.68276141769942522
	.quad	0x3fec4f926e120ac0              # double 0.88471337793483684
	.quad	0x3fd57de6b76d2e3e              # double 0.33580940163367134
	.quad	0x3fd3ee992e1b162e              # double 0.31143788816948159
	.quad	0x3fe99929d0fddee9              # double 0.79994669741333013
	.quad	0x3fd6f91ff05151de              # double 0.35895536869545974
	.quad	0x3fe3d8a0ddeb95b5              # double 0.62019389480399545
	.quad	0x3feb903aac00ceb7              # double 0.86135610193601664
	.quad	0x3fd4f41c6a8eb40a              # double 0.32739935308455925
	.quad	0x3fd18a5b815bcf5e              # double 0.2740696681278133
	.quad	0x3fb4f296689b5fe0              # double 0.081826592005540544
	.quad	0x3fdfc4c166aa3a2c              # double 0.49638400102495228
	.quad	0x3fe40f2724178b7d              # double 0.62684971856320681
	.quad	0x3fbd17e09c5af8a0              # double 0.11364558999318541
	.quad	0x3fe555be1381bcbf              # double 0.66671661195677945
	.quad	0x3fe044803652035d              # double 0.50836191758581217
	.quad	0x3fe70842bb2c0287              # double 0.71975838238729828
	.quad	0x3fe33332ae453550              # double 0.59999975239922243
	.quad	0x3fb5d495bdfc5680              # double 0.085275038607813158
	.quad	0x3fd807692317d058              # double 0.37545231272748003
	.quad	0x3fed027abb5bea84              # double 0.90655266374172116
	.quad	0x3fca8ec51e501778              # double 0.20748199443931603
	.quad	0x3fbfb2e980198fe0              # double 0.12382373216092857
	.quad	0x3fd822f64bf012c6              # double 0.37713391700553378
	.quad	0x3fdc29ca29d83c4c              # double 0.44005064093011437
	.quad	0x3fe31838952c9002              # double 0.59670666823922169
	.quad	0x3fd01022706e051c              # double 0.25098477344006809
	.quad	0x3feff4cc84ea213e              # double 0.99863267860295202
	.quad	0x3fddf6296563161e              # double 0.46814951802329741
	.quad	0x3fbfb64eeb42b580              # double 0.12387555354754021
	.quad	0x3fc03977523e1c18              # double 0.12675372615578406
	.quad	0x3fd6cf1d85be0aaa              # double 0.35639131603981389
	.quad	0x3fccee55cfb8abc4              # double 0.22602341311116281
	.quad	0x3fc0dc206e6885f0              # double 0.13171773329763381
	.quad	0x3fe983536c5f737f              # double 0.79728099028180555
	.quad	0x3fef302541369e5c              # double 0.97462713944419077
	.quad	0x3fe2ee9a2bb02738              # double 0.5916262486727879
	.quad	0x3fefd2f6afd9db9d              # double 0.99450239511394367
	.quad	0x3fed504eb8e61222              # double 0.91605316269903292
	.quad	0x3feee88ae368b7c0              # double 0.96588653961020298
	.quad	0x3fe9a1e3a85367b7              # double 0.80101187587864942
	.quad	0x3fe81576d52f9fec              # double 0.75262014043710001
	.quad	0x3fdc936680fd4176              # double 0.4464966067944468
	.quad	0x3febb2861c62a53f              # double 0.86554246467600382
	.quad	0x3fd7d1314e62dc74              # double 0.37214310316944155
	.quad	0x3fe81f47a18674b5              # double 0.75381833598989678
	.quad	0x3febd3f5aefea941              # double 0.86962398699441945
	.quad	0x3feec2118ddeeea9              # double 0.96119001111170121
	.quad	0x3fed88e63ad75564              # double 0.9229613446465632
	.quad	0x3fefc243ab274983              # double 0.9924639075127718
	.quad	0x3fdb73e00d7f9f66              # double 0.42894746130195072
	.quad	0x3fed55acbdd95a60              # double 0.91670834617509555
	.quad	0x3fe018dffb5bf976              # double 0.503036490379414
	.quad	0x3fd41ee97b56e28a              # double 0.31438672108519283
	.quad	0x3f9a7a5fcd5e4f00              # double 0.025857445630733444
	.quad	0x3fe97f774bf51ed6              # double 0.79680981479119839
	.quad	0x3fec1cf2953f5894              # double 0.87853364133731526
	.quad	0x3fc586592980195c              # double 0.16816248442064363
	.quad	0x3fde93478126a4aa              # double 0.47773921596906155
	.quad	0x3fd3a2ea70961d52              # double 0.30681859011425161
	.quad	0x3fec3beacb003e9d              # double 0.8823141064512644
	.quad	0x3fc55020deb295d4              # double 0.16650782464891611
	.quad	0x3fe78442c2dd057a              # double 0.73489511546374264
	.quad	0x3f9a139b351de3a0              # double 0.025465417019833958
	.quad	0x3feb009fb4e03782              # double 0.84382615401567329
	.quad	0x3fce6cce0aacf6bc              # double 0.23769546052237966
	.quad	0x3fbc2686a1dc9b68              # double 0.10996285869314948
	.quad	0x3f860d529fd1b800              # double 0.010767598631186814
	.quad	0x3fe114b47d74466a              # double 0.53377747061513259
	.quad	0x3fdc4ba0a1c430e8              # double 0.44211593434807961
	.quad	0x3fc346d27503513c              # double 0.15059881890796045
	.quad	0x3fd19a98725d61ca              # double 0.27506076019701864
	.quad	0x3fdb0a46d3801a40              # double 0.42250223783813468
	.quad	0x3fa9c34e3310b6f0              # double 0.050318187459522323
	.quad	0x3fd4076bb2208b7a              # double 0.31295292277552955
	.quad	0x3fc4858cc0b55b20              # double 0.16032561692801384
	.quad	0x3fe50a606b3ac7b9              # double 0.65751667922290047
	.quad	0x3f9219a8fd7b39a0              # double 0.017676010581277546
	.quad	0x3fe8f20197a836b7              # double 0.77954177494549171
	.quad	0x3fee9159a4818a23              # double 0.95524294023590917
	.quad	0x3fdae0c86152f1ce              # double 0.41996964935586056
	.quad	0x3fe4faa49233a19e              # double 0.65559605174080438
	.quad	0x3fd3fac7a4875212              # double 0.31218138758893688
	.quad	0x3fc033efdb2c2b20              # double 0.12658498956474151
	.quad	0x3fdd807dd85ba4c4              # double 0.46096750382146134
	.quad	0x3fc5a134aa2ed920              # double 0.16898210820881676
	.quad	0x3fce6b4048d2d7b4              # double 0.23764804416503937
	.quad	0x3fef9359f2382470              # double 0.98673722561319543
	.quad	0x3fd1dadb1e2bb4e0              # double 0.27898290583000396
	.quad	0x3fef1e8a1b738f65              # double 0.9724779640350617
	.quad	0x3fe74a7e82c4843b              # double 0.7278435281806489
	.quad	0x3fcdae7da0ae9bf4              # double 0.23188753457836209
	.quad	0x3f93222177f8ed20              # double 0.018684885928661576
	.quad	0x3fa37ddbc92c2da0              # double 0.038069599444578772
	.quad	0x3fb53624455e0fa8              # double 0.08285738652744945
	.quad	0x3fb72ed2cf9d9f68              # double 0.090558219611578061
	.quad	0x3fec36252f5d1130              # double 0.88160952807132809
	.quad	0x3fdefaa341919138              # double 0.48404771235643151
	.quad	0x3fe6f5256e55f3c9              # double 0.71742507505370512
	.quad	0x3fee8ff12a012423              # double 0.95507105068202625
	.quad	0x3fe7887c3ec5107a              # double 0.73541080722544838
	.quad	0x3fd728e7c6d4f032              # double 0.36187166611830712
	.quad	0x3fdaf1c7a32b7654              # double 0.42100706991718551
	.quad	0x3fec1ced44a3fe17              # double 0.87853110700956705
	.quad	0x3fad0e73df334ce0              # double 0.056750889774457525
	.quad	0x3fc2f98556983a8c              # double 0.14823977211240835
	.quad	0x3fee72f1458b97d1              # double 0.95153106291831524
	.quad	0x3f82f4ed90812000              # double 0.0092562255596391196
	.quad	0x3fe625e84fe6b0b1              # double 0.69212737661066204
	.quad	0x3fdb2700d693e3d0              # double 0.42425557093480126
	.quad	0x3fcaca104d39fc0c              # double 0.20929149409127523
	.quad	0x3fe8e89fee875445              # double 0.77839657390234918
	.quad	0x3fd81dfd91bc1280              # double 0.37683047515773893
	.quad	0x3fd98bfaff5c5bbe              # double 0.3991687291867797
	.quad	0x3fd896642b3f6edc              # double 0.38417915557304894
	.quad	0x3fe2085d2377afe5              # double 0.56352097441913129
	.quad	0x3fd223328f4b290c              # double 0.28339828485026497
	.quad	0x3fed6c6dff084ad5              # double 0.91948604403509171
	.quad	0x3fe2d371033918f8              # double 0.58831072453975164
	.quad	0x3fe64efc77163791              # double 0.69714186915529031
	.quad	0x3fdf24f998dde782              # double 0.48663177421951087
	.quad	0x3fd081e285b91be0              # double 0.25792754229445158
	.quad	0x3fc1e6b43f575524              # double 0.13985303013638728
	.quad	0x3fe301684c5104ed              # double 0.59392180352747703
	.quad	0x3fdc4f82d69e180e              # double 0.44235297163720666
	.quad	0x3fd06f13121014e6              # double 0.25677944911906392
	.quad	0x3fc8ba6b203104a8              # double 0.19318903991555669
	.quad	0x3fc8096a774e2d14              # double 0.18778734994371205
	.quad	0x3fefa578bf61efda              # double 0.98894917849929276
	.quad	0x3fd463733c6eb21e              # double 0.31856995488741002
	.quad	0x3fc0c0980d696040              # double 0.13087750105728624
	.quad	0x3fe1d3d943896bd3              # double 0.55711043539792582
	.quad	0x3fef55cb40e42ebc              # double 0.97922289537515139
	.quad	0x3fee2ecdae122db6              # double 0.94321331022495403
	.quad	0x3fe85408b4232d04              # double 0.76025805647933042
	.quad	0x3f8c5fe032e40080              # double 0.013854743531283242
	.quad	0x3fda953587959e2c              # double 0.41535700073879656
	.quad	0x3fed9479a82e6292              # double 0.92437441680802324
	.quad	0x3fd9827ffbb9f6d0              # double 0.39859008391054562
	.quad	0x3fe13a5a36ebc0e0              # double 0.53837309576740822
	.quad	0x3fbffe317c1094f0              # double 0.12497243193554985
	.quad	0x3fea61f408537178              # double 0.82445718408739221
	.quad	0x3fe5b5dd27bb611c              # double 0.6784501815809878
	.quad	0x3fc33897eeff32f4              # double 0.15016459626931289
	.quad	0x3fea0b0ba8c8acad              # double 0.81384833303072457
	.quad	0x3fe3053e95fb2864              # double 0.59439019482784916
	.quad	0x3fe6eabf1c3c5815              # double 0.71615558161534187
	.quad	0x3fc94f4f7d217620              # double 0.1977328644742764
	.quad	0x3fda7b7e35fa5236              # double 0.41378741523047624
	.quad	0x3fd0d58300c548c8              # double 0.26303172183282841
	.quad	0x3fb034656795acc0              # double 0.063299501218057053
	.quad	0x3fea7af3a0a60f58              # double 0.8275087487859123
	.quad	0x3fdb989fdc8d8f64              # double 0.43119045771003628
	.quad	0x3fb7dfb52981b7a8              # double 0.09325725806567553
	.quad	0x3fc3f58e15fc4d14              # double 0.15593124459756125
	.quad	0x3fa3aa7363e1bb20              # double 0.038409810965154501
	.quad	0x3fe5a8375a73ef4d              # double 0.67678420702530107
	.quad	0x3fc4928c6219a96c              # double 0.16072230138827182
	.quad	0x3fd17891c5af3e8a              # double 0.27298397355205195
	.quad	0x3fecf62c010a1ba8              # double 0.9050502796461517
	.quad	0x3fe191eda24cabec              # double 0.54906350802536741
	.quad	0x3fe90f1858dfca64              # double 0.78309266432036084
	.quad	0x3feef4903bfe270f              # double 0.9673539325460484
	.quad	0x3fcf5368311f55d4              # double 0.24473287962488988
	.quad	0x3fd2ab16c486333a              # double 0.29169243995493199
	.quad	0x3fcfbfbeb65a8278              # double 0.24803909210188002
	.quad	0x3fe11bcdfbacaa08              # double 0.53464411883516139
	.quad	0x3fe57a1a4c7b3787              # double 0.67115511834866559
	.quad	0x3f67115817dbb900              # double 0.0028158875055545041
	.quad	0x3fcaea98c83ea6fc              # double 0.21028432633948302
	.quad	0x3fe9c2b8a186c4a0              # double 0.80501967952854514
	.quad	0x3fe74488e1344958              # double 0.72711605057910855
	.quad	0x3fc943b8019806c0              # double 0.19737911298584798
	.quad	0x3fe92c535c761ad9              # double 0.78666084345681064
	.quad	0x3fe9fd565de9afc4              # double 0.81217497198439803
	.quad	0x3fdb4cc9adcb27cc              # double 0.42656175586728007
	.quad	0x3fda92bbce897b14              # double 0.4152059094393945
	.quad	0x3fd7b2298c98ef24              # double 0.37024916391577478
	.quad	0x3fe63a10906e115e              # double 0.69458797654128168
	.quad	0x3fe182f51951f4c4              # double 0.54723601289119772
	.quad	0x3fdf03fa0a99d2b2              # double 0.48461771998635605
	.quad	0x3fdf6bf40083c23c              # double 0.49096393633138624
	.quad	0x3fea5b02b6d0320b              # double 0.82360969262805506
	.quad	0x3fe69ba57b84fe35              # double 0.70649980664160827
	.quad	0x3fb0f621b1236f70              # double 0.066255670305904735
	.quad	0x3fed5b3e3d1060ae              # double 0.91738807608182582
	.quad	0x3f84ab593f5bc2c0              # double 0.010092446561857371
	.quad	0x3fe04154b8eb178a              # double 0.50797496907101558
	.quad	0x3fe59f4c08bc2df4              # double 0.67569543558187073
	.quad	0x3fdb830e26d9c8e6              # double 0.4298739795114116
	.quad	0x3fe3606307d889d4              # double 0.60551597149270231
	.quad	0x3fe2b88ed6f9c32d              # double 0.58502904879978745
	.quad	0x3fd1a500f0325308              # double 0.27569602448174679
	.quad	0x3fe9ee2f7197bc4e              # double 0.81032535730435895
	.quad	0x3fe648e3ed7f7b27              # double 0.69639774690935929
	.quad	0x3fd1b53b35982562              # double 0.27668647989101747
	.quad	0x3fd5e093e1ce94c4              # double 0.34183213283024494
	.quad	0x3fd50de8131d0278              # double 0.32897378794226695
	.quad	0x3fec7f72162a4ab7              # double 0.89055733040944218
	.quad	0x3fd8756b05609f84              # double 0.38216662907733956
	.quad	0x3fb85554a837d2e8              # double 0.095052043026793265
	.quad	0x3fea5f1562a708e6              # double 0.82410687702238472
	.quad	0x3fe7a97dfc0d0bd7              # double 0.73943995693877695
	.quad	0x3fedac475f469bed              # double 0.92728012665327031
	.quad	0x3fa82db3b92fa820              # double 0.047223678928119961
	.quad	0x3fe574a99ae87803              # double 0.67049103026852241
	.quad	0x3fd308f7d81c809a              # double 0.29742237190840515
	.quad	0x3feeb7220ae38e59              # double 0.95985509993301854
	.quad	0x3fc2aa3bd7751450              # double 0.14582012195947636
	.quad	0x3fedfdff6c837b9b              # double 0.93725558466018144
	.quad	0x3f9217b66bd5b080              # double 0.017668581325253729
	.quad	0x3fec98f7956451a6              # double 0.89367274454211976
	.quad	0x3fc7b4ef087ed264              # double 0.18520915903868052
	.quad	0x3fd2c8c29997bea4              # double 0.29350342749874359
	.quad	0x3fc7f2ce1648123c              # double 0.18709732139554258
	.quad	0x3fb41d1179e468e8              # double 0.078568546542019058
	.quad	0x3fe7765abd9dbf2e              # double 0.73319756540693048
	.quad	0x3fe2b56d31457022              # double 0.58464679358758453
	.quad	0x3fadc0b1eecb4c30              # double 0.058110771560358265
	.quad	0x3fe96a369c652043              # double 0.7942154936399749
	.quad	0x3fdfe23f15a9d074              # double 0.49818398585853818
	.quad	0x3f9a5192bcb48c00              # double 0.025701802032141785
	.quad	0x3fd34e26fcb2911e              # double 0.30164503743641713
	.quad	0x3fd480a671719fd6              # double 0.3203521831369448
	.quad	0x3fe83ad9d71ecd03              # double 0.75718395248114267
	.quad	0x3fec336dcce90894              # double 0.88127794286289651
	.quad	0x3fd6f1416ffea61a              # double 0.35847507416710445
	.quad	0x3fd3cb59cc32e604              # double 0.30928654614726292
	.quad	0x3fe5c7ea9a531ee3              # double 0.68065385953465485
	.quad	0x3fefddf07f2af8d3              # double 0.99584221684906493
	.quad	0x3fd2dc568f429024              # double 0.29469837179408587
	.quad	0x3fb14c4404d1c8f0              # double 0.067569972206715567
	.quad	0x3fe103ceb7b0d5d0              # double 0.53171478154279761
	.quad	0x3fd86e4766353420              # double 0.38173089009507244
	.quad	0x3fdf3ac863ae2c2e              # double 0.48796281561289134
	.quad	0x3fdc36d34438d644              # double 0.44084626829439721
	.quad	0x3fe0e67ee21eda19              # double 0.52813667453921476
	.quad	0x3fdad16f5949184e              # double 0.41903289527215726
	.quad	0x3fe138004477d6e3              # double 0.53808606503181655
	.quad	0x3fe10740a3ecba6d              # double 0.53213531509920886
	.quad	0x3fd7fab0aeb2afc8              # double 0.37467591343260809
	.quad	0x3fea6b418d34f7a2              # double 0.82559278087113719
	.quad	0x3fe51ad8fa413c35              # double 0.65952729108710761
	.quad	0x3fc6d16b4088b544              # double 0.17826595927309985
	.quad	0x3feb3abd06ab5519              # double 0.85092021277037866
	.quad	0x3fed1ad35f9f254b              # double 0.90952461887460723
	.quad	0x3fefb23bb696cbd5              # double 0.99050698911593804
	.quad	0x3fdaacfadbf726f6              # double 0.41680785637855366
	.quad	0x3fc02e11accd3318              # double 0.12640591561866965
	.quad	0x3fb9d14f843d87b0              # double 0.10085007647060595
	.quad	0x3fe28bfb5a40cc8d              # double 0.57958762767374739
	.quad	0x3feae8636b71d563              # double 0.8408677195099411
	.quad	0x3fd50cad431a5d14              # double 0.32889873078370724
	.quad	0x3fe8bf63dfd1cf82              # double 0.77336305346260326
	.quad	0x3fe3bb5eacaa45af              # double 0.61662229274423008
	.quad	0x3fe0b1e380bd06f5              # double 0.52171492714134493
	.quad	0x3fe09ea37c20f643              # double 0.51936506503961544
	.quad	0x3fea4efa17dc1656              # double 0.82214073810673471
	.quad	0x3fdd994b195e0daa              # double 0.46248128392491117
	.quad	0x3fee9b22ccc08843              # double 0.956437492281346
	.quad	0x3fc4ec8c379e0e74              # double 0.16346886363691093
	.quad	0x3fed9fabfd435c87              # double 0.92574119058089444
	.quad	0x3fd978d1e944c928              # double 0.39799926548143327
	.quad	0x3fe7f292433992b0              # double 0.74836075906622135
	.quad	0x3fe5554c714f879e              # double 0.66666242724408042
	.quad	0x3fe9f5b14e32ea38              # double 0.81124177239627837
	.quad	0x3fcd57863b1af860              # double 0.22923353086474929
	.quad	0x3fc8a63c0e36143c              # double 0.19257307714375027
	.quad	0x3fd40ed3bb74127c              # double 0.3134049730872801
	.quad	0x3fed9159c4b128e1              # double 0.92399300018703567
	.quad	0x3fe8adedc041d741              # double 0.77123153257591792
	.quad	0x3fef192f0e547ab8              # double 0.97182419585063595
	.quad	0x3fd22fb4177cdd0c              # double 0.28416158956265813
	.quad	0x3fe35618be9a1743              # double 0.60425984599053384
	.quad	0x3fdf2341d582fe3c              # double 0.48652692652465013
	.quad	0x3fecc72c34aaa1a7              # double 0.89931307112151593
	.quad	0x3fcdd2179eb53f94              # double 0.23297400712408189
	.quad	0x3fd3a2b6f1b97026              # double 0.30680631261725677
	.quad	0x3fe74f942195b616              # double 0.72846418914349687
	.quad	0x3fe4bc07cb9d0a9f              # double 0.64795293586969993
	.quad	0x3f82e5aa99f29fc0              # double 0.0092271164160847574
	.quad	0x3face8bcba119d40              # double 0.056463144029118784
	.quad	0x3fca80787591cc58              # double 0.20704560986232212
	.quad	0x3fec7fe9af7912a8              # double 0.89061435958918356
	.quad	0x3fe6425fff0e82dd              # double 0.69560241523512512
	.quad	0x3fd599212a2ddef4              # double 0.33747128600178589
	.quad	0x3fd427648c92c3ee              # double 0.31490434387074984
	.quad	0x3f9a2bf07b775360              # double 0.02555824044778221
	.quad	0x3fd594d3b97c1f98              # double 0.33720868219142508
	.quad	0x3fc6e112468184f8              # double 0.17874363367722146
	.quad	0x3fe0c70e66ea4669              # double 0.52429885960209532
	.quad	0x3fd7d0c7881e55b0              # double 0.37211788456746842
	.quad	0x3fe6e9dd790b6490              # double 0.71604798928741964
	.quad	0x3fef5cf7c2f29f34              # double 0.98009861064654169
	.quad	0x3fa8ca01f4a490d0              # double 0.048416195977809218
	.quad	0x3fe22f2d531eca77              # double 0.56825891718319965
	.quad	0x3fe63f6d72e6ac2b              # double 0.69524261895765471
	.quad	0x3fcac75330f61e4c              # double 0.20920791521733617
	.quad	0x3fef686fa1cd1723              # double 0.98149854280265846
	.quad	0x3fd3fdc96eb5999e              # double 0.31236491977178982
	.quad	0x3fe31c4e3a92a12d              # double 0.5972052711486292
	.quad	0x3fea6992ee57ba53              # double 0.82538744498544714
	.quad	0x3fe883a069958d9a              # double 0.76606770154869541
	.quad	0x3fed568f48515509              # double 0.9168163692908432
	.quad	0x3fcc692e84c9c828              # double 0.22195989116477333
	.quad	0x3fdc52163619c5ea              # double 0.44251017840642126
	.quad	0x3fddd60c844e7ee8              # double 0.46618950768059486
	.quad	0x3fd018f9591cbb26              # double 0.25152429296842838
	.quad	0x3feb298c3c3f15c6              # double 0.84882175223236156
	.quad	0x3fc733c7fc35dfa8              # double 0.18126773657763562
	.quad	0x3f7be4456fb8d500              # double 0.0068094932899402938
	.quad	0x3fdda341e3fe2818              # double 0.46308944001123242
	.quad	0x3fd885c410533272              # double 0.38316442102658421
	.quad	0x3fa3edba954b3210              # double 0.038923102115948294
	.quad	0x3fe85c13befdc8b9              # double 0.76123988440510637
	.quad	0x3fe3639a4b767bc1              # double 0.60590853442032977
	.quad	0x3fee25aee34826e2              # double 0.94209999457345028
	.quad	0x3fe9fcec903abf20              # double 0.81212452096767506
	.quad	0x3feac4f28d5e625d              # double 0.83654143916198687
	.quad	0x3fe60a6a020f3aad              # double 0.68877125169986686
	.quad	0x3fd95177002a4030              # double 0.39559721962087036
	.quad	0x3fe82743ad57714f              # double 0.75479301315093916
	.quad	0x3fd8c131c2d5ab56              # double 0.38679164912052977
	.quad	0x3fbe9468bb645970              # double 0.11945204329490422
	.quad	0x3fd47a49a076e924              # double 0.31996384306298098
	.quad	0x3fe5e562c1bc6039              # double 0.68425119246513255
	.quad	0x3fd6d8fae909824a              # double 0.3569934154275286
	.quad	0x3fe538d258bea490              # double 0.66318623860310488
	.quad	0x3fe424a3e4dad613              # double 0.62947268198212425
	.quad	0x3fef61e642f512a0              # double 0.98070061757660553
	.quad	0x3fcfaee1db9b69dc              # double 0.24752448294641638
	.quad	0x3fe762545c86b481              # double 0.73075311728975134
	.quad	0x3fd5e31941c5b898              # double 0.34198600218849995
	.quad	0x3fd6d8598b3fd5a0              # double 0.35695494268960637
	.quad	0x3fd9e12f42116684              # double 0.40436917736006017
	.quad	0x3fd14de44aba4fba              # double 0.27037913606295272
	.quad	0x3fe40e971cf2929e              # double 0.6267810407049017
	.quad	0x3fef0d64d9c0ec2f              # double 0.97038500337601429
	.quad	0x3fe820e5b2ca988f              # double 0.75401577873414449
	.quad	0x3fedd31090c5397a              # double 0.93201473498792997
	.quad	0x3f7f568c9d65ae00              # double 0.0076508991972832341
	.quad	0x3fc9820c027c3284              # double 0.19928121682496081
	.quad	0x3fc7869552fcf638              # double 0.18379465629725344
	.quad	0x3fee7deef2c30d2a              # double 0.95287272848546434
	.quad	0x3fef1236b2edd65d              # double 0.97097334811287405
	.quad	0x3febb6e9f850bf2b              # double 0.86607836245636827
	.quad	0x3fe435007b40e68d              # double 0.63146995614006729
	.quad	0x3fb51693450a2dd8              # double 0.082375721316729211
	.quad	0x3fe75f21905c0a86              # double 0.73036268420430939
	.quad	0x3febae2b7233c6ac              # double 0.86501095109107017
	.quad	0x3fe007bba4165209              # double 0.50094396637229111
	.quad	0x3fd11b7e4ef89aa2              # double 0.26730306350729383
	.quad	0x3fe7a910aafe9f2d              # double 0.7393878307093239
	.quad	0x3fd4333b08c0f604              # double 0.31562686781748561
	.quad	0x3fe692d20b36c525              # double 0.70542242231582419
	.quad	0x3fc5a394ea1fb61c              # double 0.16905461723165238
	.quad	0x3fe46d4de4e47676              # double 0.63834280686906086
	.quad	0x3fd4102578be1eba              # double 0.31348549643778834
	.quad	0x3fec4dbfc5836af1              # double 0.8844908578570011
	.quad	0x3fe362e5eff65ef6              # double 0.60582253329900371
	.quad	0x3f8cb5103b940a00              # double 0.014017226045784703
	.quad	0x3fd2f934d968e5c4              # double 0.29646035415097693
	.quad	0x3fe0c12a39b53df7              # double 0.52357970496262751
	.quad	0x3fe87a3b7ca7bf0e              # double 0.76492094370584751
	.quad	0x3fe9431ea89c81cc              # double 0.7894433301153696
	.quad	0x3fb3691e0ceac278              # double 0.075822713998386138
	.quad	0x3fe11922169f033b              # double 0.53431801241104127
	.quad	0x3fe002e5a077a3cb              # double 0.50035363522794662
	.quad	0x3fc822d99495353c              # double 0.18856353526136072
	.quad	0x3fdaf1f47419425e              # double 0.42101775491486204
	.quad	0x3fe86fbe80cb2431              # double 0.76364064364418571
	.quad	0x3fd18a209796da1e              # double 0.27405562213553647
	.quad	0x3fe4ace08fb83280              # double 0.64610317297190534
	.quad	0x3fc44170b9d52498              # double 0.1582470805535976
	.quad	0x3feff05ef6631da7              # double 0.99809215662474037
	.quad	0x3fe6b1cf594d86df              # double 0.70920531694374833
	.quad	0x3fe75bbac9471435              # double 0.72994746505776809
	.quad	0x3fddf395cf4fb472              # double 0.46799226041077369
	.quad	0x3fdc939b93984ce6              # double 0.44650926030699478
	.quad	0x3fc728981fe365c4              # double 0.18092633778614531
	.quad	0x3fd84d4334804174              # double 0.37971572997141512
	.quad	0x3fe46cbdfe880b44              # double 0.63827419007461872
	.quad	0x3fe846c961ced042              # double 0.75864094832514462
	.quad	0x3fdcb9d6e41fa8dc              # double 0.44884273793890173
	.quad	0x3fe0c4f5c89726d7              # double 0.52404297998256311
	.quad	0x3fb96711b12c3f98              # double 0.099228959803666306
	.quad	0x3fecebda2dde549c              # double 0.90379055937468733
	.quad	0x3fecc745b57d8f3a              # double 0.89932523200375347
	.quad	0x3f9b1a35123d7a60              # double 0.026467160452165905
	.quad	0x3fed2da5731ad63c              # double 0.91182205659305948
	.quad	0x3fe91e73c25fe586              # double 0.78496730769909173
	.quad	0x3fb54c85a5244ca0              # double 0.083198883836575366
	.quad	0x3fe0d37ba434072f              # double 0.52581579276031742
	.quad	0x3fe1bba8d59bb21d              # double 0.55415765495633063
	.quad	0x3fd490a8f756372c              # double 0.32132934717161521
	.quad	0x3fdc7b4537ae47e8              # double 0.44502382695747977
	.quad	0x3fde43da62679992              # double 0.47289142236550064
	.quad	0x3f95c12518ba12c0              # double 0.021244601854521816
	.quad	0x3fed5e58bc64d849              # double 0.91776692195595289
	.quad	0x3fe8e15f9cc04636              # double 0.77751141181415195
	.quad	0x3fd15013eeb8209e              # double 0.27051256477762731
	.quad	0x3febada9727f9652              # double 0.86494896281210232
	.quad	0x3fe52749573da40f              # double 0.66104571379867305
	.quad	0x3fe164fe0cf4dd03              # double 0.54357817202154057
	.quad	0x3fe9bcdd4ad47cc9              # double 0.80430473914375356
	.quad	0x3fe59094c4aa6da2              # double 0.67389906321789206
	.quad	0x3fe4708a50fd1943              # double 0.63873782938097923
	.quad	0x3fdecdd284c58742              # double 0.48131239858604513
	.quad	0x3fe9e86520f76e17              # double 0.80961853445791376
	.quad	0x3fe4433e281b20c3              # double 0.63320834954449656
	.quad	0x3fb4792ef3680cc0              # double 0.079974111962701322
	.quad	0x3fe61d97c2eec24a              # double 0.69111240456374756
	.quad	0x3fdbf4f8a8e6d944              # double 0.43682686323463238
	.quad	0x3fe29bda6eda6304              # double 0.58152505541792765
	.quad	0x3fe513cb1164d732              # double 0.65866616627929475
	.quad	0x3fc52f1087a0b740              # double 0.16549879667712197
	.quad	0x3feaedfa9747f211              # double 0.84155015513494125
	.quad	0x3fce0ecc29095b80              # double 0.23482658389795219
	.quad	0x3fe206f443f83e34              # double 0.56334889674503197
	.quad	0x3feeff786d3e1d4f              # double 0.96868535362674801
	.quad	0x3fe97be605e0ff7c              # double 0.79637433193418827
	.quad	0x3fd85468f58fa8a4              # double 0.38015197735388484
	.quad	0x3fdf7ee7aefcf6e8              # double 0.49212066734967985
	.quad	0x3fe5bea7a12ac516              # double 0.67952329137748069
	.quad	0x3fef2f1a4fa2b4d0              # double 0.9744998507864242
	.quad	0x3feff1dc3bef6c2a              # double 0.99827396112539657
	.quad	0x3fdc6d6131032f8c              # double 0.44417600427981863
	.quad	0x3fe8141f713d3c0d              # double 0.75245639912634632
	.quad	0x3fe30501543894d7              # double 0.59436098527353465
	.quad	0x3fe79200f40fcbd5              # double 0.73657272022534903
	.quad	0x3fed08e1a527906a              # double 0.90733415848491217
	.quad	0x3fd9f6a0713836a2              # double 0.40567790085411037
	.quad	0x3fe2237b0a061ad6              # double 0.56683113057882895
	.quad	0x3fe9853694541295              # double 0.79751137705223363
	.quad	0x3fe52c4457679ec7              # double 0.66165368148082215
	.quad	0x3fd2fdf4920cab80              # double 0.29675020468373958
	.quad	0x3fa103123a8315d0              # double 0.033226556437096044
	.quad	0x3fc8cac1b0e295cc              # double 0.19368764054267584
	.quad	0x3fe24a635b0caea1              # double 0.57158057959664543
	.quad	0x3fbc9b6402977b10              # double 0.11174607337259723
	.quad	0x3fe3b13443f202ef              # double 0.61538136740281668
	.quad	0x3fe12c1dbc24f183              # double 0.5366352724736746
	.quad	0x3fd6770fe4ac11ae              # double 0.35101697283996713
	.quad	0x3fefa306f3d5f0fe              # double 0.98865077613984886
	.quad	0x3fde147565236702              # double 0.46999869229112801
	.quad	0x3fe3f82e11d03b9f              # double 0.6240454051893386
	.quad	0x3fd755f3a0e37d80              # double 0.36462107383518827
	.quad	0x3fe2612fc2fcfc70              # double 0.57436359485281052
	.quad	0x3f6a6a1f9f7d6e00              # double 0.0032244317662113442
	.quad	0x3fb6e1a0b8e90940              # double 0.089380307335010123
	.quad	0x3fc7f74aac907264              # double 0.18723424364079044
	.quad	0x3fc61d9f9bd8ffc4              # double 0.17277903661488214
	.quad	0x3fe127be6c5a7dc2              # double 0.53610154307164515
	.quad	0x3fe3a66227d06352              # double 0.61406047607588676
	.quad	0x3febec670cd9a2fa              # double 0.87260773191255159
	.quad	0x3fe5600a207ed6d8              # double 0.66797357889910369
	.quad	0x3fd1ddefc63b6b7c              # double 0.27917093618969324
	.quad	0x3fddb62b3dfe8eb0              # double 0.46424370817315275
	.quad	0x3fea72aefe2d501d              # double 0.8264994587320903
	.quad	0x3fdf775c8860ff82              # double 0.49166024511577444
	.quad	0x3fec09db6a026570              # double 0.87620325760796725
	.quad	0x3fde261a03cbc52e              # double 0.47107553835583615
	.quad	0x3fdcc49836b2c6aa              # double 0.44949918119082588
	.quad	0x3fd0a4d1fae33086              # double 0.26005982876518663
	.quad	0x3fe8c16c6e3d6c88              # double 0.77361127406347041
	.quad	0x3fceb7c19c508648              # double 0.2399827969793924
	.quad	0x3fef19ed3fc00432              # double 0.97191488696274164
	.quad	0x3fc11b6c3056f154              # double 0.1336493717225361
	.quad	0x3f9c86f0345ed840              # double 0.027858498760643835
	.quad	0x3fbc67d0465b95b0              # double 0.11095906942099165
	.quad	0x3fe54a284cc0f6b0              # double 0.66530241957635461
	.quad	0x3fde50a44e4b1458              # double 0.47367198606327099
	.quad	0x3fe098b356a9adaf              # double 0.51864020277337441
	.quad	0x3fd4ce063045e130              # double 0.32507471765667884
	.quad	0x3fd97c0cf3c1c62a              # double 0.39819644741428084
	.quad	0x3fef8772bdfedf4f              # double 0.9852842055179084
	.quad	0x3fdd8bf4f9d86c28              # double 0.46166729353871228
	.quad	0x3fe1683899d62286              # double 0.54397230192360335
	.quad	0x3fcc50f65189261c              # double 0.2212207697032661
	.quad	0x3fb39e31b5c93218              # double 0.076632601624801899
	.quad	0x3fee60e3097e5e71              # double 0.9493270097181733
	.quad	0x3fd0c31cf6e2b390              # double 0.26190876111905315
	.quad	0x3fd142483303c396              # double 0.26967053396134
	.quad	0x3fc3ff72e6f5eb9c              # double 0.15623317983030638
	.quad	0x3fedc847f756642a              # double 0.93069837864016347
	.quad	0x3fd57d1d82556f52              # double 0.3357614300527888
	.quad	0x3fe22c9ebb5d8b27              # double 0.56794678301625801
	.quad	0x3fdff919b593179c              # double 0.49957888347523194
	.quad	0x3fde387afdbdda18              # double 0.47219729213193906
	.quad	0x3fd1e491d6f58bba              # double 0.27957578651529114
	.quad	0x3fc2af30a0d1efdc              # double 0.1459713731054525
	.quad	0x3fc08d7f5c83e06c              # double 0.12931816117611861
	.quad	0x3fbe24aea50595c8              # double 0.11774722603657672
	.quad	0x3fe7fd1ea9c801e5              # double 0.74964841041952168
	.quad	0x3fe78ba0793bd66d              # double 0.7357942931982514
	.quad	0x3fe077f67d7ddbbe              # double 0.51464390287480177
	.quad	0x3feb9a7de6aed771              # double 0.86260886245029955
	.quad	0x3fe061ba4e42022e              # double 0.51192965779052257
	.quad	0x3fd7a5c10d86316a              # double 0.36949182816240145
	.quad	0x3feb2e23c876c649              # double 0.84938229706876556
	.quad	0x3fec741427e8d5e8              # double 0.88916976733042663
	.quad	0x3fccf437b623ec28              # double 0.2262029303891222
	.quad	0x3fd6f07bd109258a              # double 0.35842795766492286
	.quad	0x3fa719ee58ec6970              # double 0.045119713168065512
	.quad	0x3fe9e68cecf3acfb              # double 0.80939337043437776
	.quad	0x3fc4f806982cacd4              # double 0.16381914549251653
	.quad	0x3fd8556db7801c5a              # double 0.38021414680446741
	.quad	0x3fe50c5e1d8936f8              # double 0.65775972145794892
	.quad	0x3fd14e120c1e8abe              # double 0.27039004500890573
	.quad	0x3fb3ab4e030b9638              # double 0.076832652801010037
	.quad	0x3fbfc3e8d49d5078              # double 0.1240830916479484
	.quad	0x3fe81f73032ccaf1              # double 0.75383902187453888
	.quad	0x3fe491d96021d726              # double 0.64280384803598589
	.quad	0x3fd3117b9d953a54              # double 0.29794206990201144
	.quad	0x3fe7a18251d69be7              # double 0.73846546157880943
	.quad	0x3fef8b4fe679f3be              # double 0.98575587286870081
	.quad	0x3fca3770b02e86c0              # double 0.20481690027832222
	.quad	0x3fecfccbb2265f56              # double 0.9058588485231478
	.quad	0x3fe89e4c52f92d75              # double 0.76932350354893109
	.quad	0x3fd8516ed928a2a0              # double 0.37997027594478006
	.quad	0x3febbb1a0e6d26cd              # double 0.86658957307482753
	.quad	0x3fd7412de63017a0              # double 0.36335322837146045
	.quad	0x3fc39ce228d28a8c              # double 0.15322520249636218
	.quad	0x3faccaf030c19c10              # double 0.056235795928664456
	.quad	0x3fef70d3baf827b5              # double 0.98252283589794464
	.quad	0x3fe33670d2baca60              # double 0.60039559515128005
	.quad	0x3fe86d4974b14a7d              # double 0.76334069053184772
	.quad	0x3fc39fd1ac9a1598              # double 0.15331479003741033
	.quad	0x3febbcb82fad922a              # double 0.86678704559432629
	.quad	0x3fb88e7ba0f9edb0              # double 0.095924116898393974
	.quad	0x3fee36dbf42625e9              # double 0.94419667897562676
	.quad	0x3fec384fd7f1b1d6              # double 0.88187400986276532
	.quad	0x3fc57a0288aa5aa8              # double 0.16778594658963653
	.quad	0x3fe5c5fb9cf56183              # double 0.68041783004723333
	.quad	0x3fedd9d92b65a12c              # double 0.93284281230902399
	.quad	0x3fd5d76328541762              # double 0.34127119959190655
	.quad	0x3f92586b7b933a40              # double 0.017915419976640701
	.quad	0x3fefcee610590383              # double 0.99400618737136914
	.quad	0x3fe9aba86b93bac6              # double 0.80220433245798328
	.quad	0x3fda14f2a34f3dc4              # double 0.40752855251500031
	.quad	0x3fe8582a475adb06              # double 0.76076234756951133
	.quad	0x3fc0ce836e5afacc              # double 0.13130228889891382
	.quad	0x3faed9a40f4ccca0              # double 0.060254217975306945
	.quad	0x3feff72625d0fef0              # double 0.99891955743802718
	.quad	0x3fd32d7562bf2d36              # double 0.29964956897011363
	.quad	0x3fe75b3cb6701af2              # double 0.72988734848408243
	.quad	0x3fef8c4d5a56259e              # double 0.98587672847604657
	.quad	0x3fe3f40f42989b7f              # double 0.62354243285231792
	.quad	0x3fecd7b594a71e04              # double 0.90133170160055486
	.quad	0x3feb054d7a93c9cd              # double 0.84439729634169114
	.quad	0x3fdd0f85f0c066f4              # double 0.4540724612321434
	.quad	0x3fe9e6cec7590c52              # double 0.80942477164388493
	.quad	0x3fef0be985146a49              # double 0.97020412437570613
	.quad	0x3fd488d233f3cdaa              # double 0.32085089753601415
	.quad	0x3fe88c8f1ac1dfc7              # double 0.76715808130301688
	.quad	0x3fea551c91020ccf              # double 0.82288959810139228
	.quad	0x3fc4aaa0fb468b48              # double 0.16145717877688015
	.quad	0x3feae02777e01b86              # double 0.83986256993453945
	.quad	0x3fc329459b08a23c              # double 0.1496970183373082
	.quad	0x3febb3453f0fc176              # double 0.86563360516269827
	.quad	0x3fd09f7dd714bcd2              # double 0.25973459247593411
	.quad	0x3fe1968ff40ab03d              # double 0.54962918915180803
	.quad	0x3fd1d1e8498519fc              # double 0.27843672923736995
	.quad	0x3fba00927692a260              # double 0.10157122988551626
	.quad	0x3fe5291e798493ed              # double 0.66126941427193986
	.quad	0x3fe91d5665f7f9cc              # double 0.78483123698952672
	.quad	0x3fcb434cd80a4000              # double 0.21299133824186356
	.quad	0x3fe22d58c074da03              # double 0.56803548421049788
	.quad	0x3fed4f6bb3cc51a1              # double 0.91594491116352483
	.quad	0x3fe4092e249feacb              # double 0.62612063554055319
	.quad	0x3fdff2b6e5fffad4              # double 0.49918911419801515
	.quad	0x3fe767ddb94883fd              # double 0.73142896831643578
	.quad	0x3fd8547f353a6992              # double 0.38015728185714537
	.quad	0x3fefa87a7835117a              # double 0.98931621053684116
	.quad	0x3fe7515519ba2aef              # double 0.72867827439162436
	.quad	0x3fe7493273a83bef              # double 0.72768519009866661
	.quad	0x3fbe8866a47b02c8              # double 0.11926881328237038
	.quad	0x3fd340f491e3f9ee              # double 0.300839560004447
	.quad	0x3fb172ec6348ceb0              # double 0.068159841765743634
	.quad	0x3fe465afb79aec2a              # double 0.63741289005645752
	.quad	0x3fede27b1fbb3b53              # double 0.93389660069974878
	.quad	0x3fd974db687a0228              # double 0.39775738909523506
	.quad	0x3fdbbb9ab7725bf8              # double 0.43332546152799933
	.quad	0x3fc51537f6870ff4              # double 0.16471004044990389
	.quad	0x3fe1416fceffb1d6              # double 0.53923788480238488
	.quad	0x3fe278bc9fcf74de              # double 0.57723838055576571
	.quad	0x3fee2aa730ccbe16              # double 0.94270667582708501
	.quad	0x3fdbef54fe7a32ea              # double 0.43648266650488543
	.quad	0x3f966eaf234ef340              # double 0.021906601457647001
	.quad	0x3fcf1c2ba75d1240              # double 0.24304719612168135
	.quad	0x3f97f1640bb7ba40              # double 0.023381770339194086
	.quad	0x3fd430b9913a89a8              # double 0.31547393019186609
	.quad	0x3f918a0d4a2ccda0              # double 0.017128188755305751
	.quad	0x3fe73e1f501734ce              # double 0.72633329050736406
	.quad	0x3fe3c993012c6aaa              # double 0.61835623006057472
	.quad	0x3fb63b4bacb70328              # double 0.086842279116365106
	.quad	0x3fc8d43280333398              # double 0.19397574672475737
	.quad	0x3fd6a3f7d1d551ec              # double 0.35375781528025985
	.quad	0x3fe65d4d4807c211              # double 0.69888938969057979
	.quad	0x3fee3fe486526c16              # double 0.94529939875372082
	.quad	0x3fd0480a41814e74              # double 0.25439697644217252
	.quad	0x3feb1b2ed5e3132f              # double 0.84706823134238174
	.quad	0x3fe84f2d8b0272fc              # double 0.75966527128511485
	.quad	0x3fc1276993950240              # double 0.13401527124553247
	.quad	0x3fe468ed257ac426              # double 0.63780839271760636
	.quad	0x3fd33777b86d453c              # double 0.30026047716554038
	.quad	0x3fe3ca628fa8ad4a              # double 0.6184552007520463
	.quad	0x3fe30466a38e38ef              # double 0.59428722328610017
	.quad	0x3fad9023f2535860              # double 0.057740329104192467
	.quad	0x3feeb4eaed856782              # double 0.95958467856256413
	.quad	0x3fed363f573a966f              # double 0.9128720000923759
	.quad	0x3fee6281bd572284              # double 0.94952475529233071
	.quad	0x3fd35270a9026f4e              # double 0.30190674309573218
	.quad	0x3fcd6dd737b69fb8              # double 0.22991457195644016
	.quad	0x3fe0770efd1b2d24              # double 0.51453351435467143
	.quad	0x3fef7b58708da6c4              # double 0.98380681975432837
	.quad	0x3fe11c2d508527f9              # double 0.53468957640256953
	.quad	0x3fe1d709af5ac89a              # double 0.55749973534536257
	.quad	0x3fc2ba33d14e3708              # double 0.14630744667049833
	.quad	0x3fa796f38ff6b8e0              # double 0.046073542903614984
	.quad	0x3fc9d29b3a1a0094              # double 0.20173969590178287
	.quad	0x3fd325134c89b2b4              # double 0.29913790201571122
	.quad	0x3fdddd8e2f6dde82              # double 0.46664766914134514
	.quad	0x3fdaa70edbabf210              # double 0.41644641353903555
	.quad	0x3fe8140bac96ee1f              # double 0.75244697293186735
	.quad	0x3fd4f3a70b8eefce              # double 0.3273713696360091
	.quad	0x3fd27e9345baa2fc              # double 0.28897554215886578
	.quad	0x3fe5130ce21458f5              # double 0.65857547908924963
	.quad	0x3fc3ab7bc0ca764c              # double 0.15367075837723332
	.quad	0x3f999ac757dc2540              # double 0.025004496324105618
	.quad	0x3fceb493b8cdf094              # double 0.23988577388434307
	.quad	0x3fea4f06da92fc77              # double 0.82214682283655705
	.quad	0x3fe09ec522ac3fca              # double 0.51938111087837879
	.quad	0x3fe3934f350057b5              # double 0.61173210479568374
	.quad	0x3fe44b277f5f1ccf              # double 0.63417410733463864
	.quad	0x3fbd3dc031d70958              # double 0.11422349182888547
	.quad	0x3feeab4923a42abe              # double 0.95840889893710091
	.quad	0x3fd16ac69d9e6146              # double 0.27214208023498931
	.quad	0x3fec806c6fe954fd              # double 0.89067670686441114
	.quad	0x3fee9ad22f2ccdee              # double 0.95639905179853968
	.quad	0x3fe4b71e3cfb379b              # double 0.64735328588880081
	.quad	0x3fed4ecde1cbeb96              # double 0.91586965657130537
	.quad	0x3fc95eaea3e36ed4              # double 0.19820197107661974
	.quad	0x3fe300de60742310              # double 0.59385603750806304
	.quad	0x3fe9b9ea167c5f93              # double 0.80394462959064794
	.quad	0x3feaba1119caf2a4              # double 0.83521323239945788
	.quad	0x3fe8880510fe5b42              # double 0.76660397833880034
	.quad	0x3fc89da784d6364c              # double 0.19231122957391944
	.quad	0x3fbc650bb3209af0              # double 0.11091683505274452
	.quad	0x3fd20dcbd31b286a              # double 0.28209205261067061
	.quad	0x3fdeda7710dc1678              # double 0.48208405157524892
	.quad	0x3fedf8277ba54c0b              # double 0.93654226445721755
	.quad	0x3fdfea425f4fa7ae              # double 0.49867305095414849
	.quad	0x3fdb8f2e66744360              # double 0.43061409001625428
	.quad	0x3f9f397346399080              # double 0.030492592965302823
	.quad	0x3fd959c7a7cdad9a              # double 0.39610473048261385
	.quad	0x3fe17070708c399b              # double 0.54497549039824678
	.quad	0x3fc61066ee25e86c              # double 0.17237555149387462
	.quad	0x3fed23fccd29e58e              # double 0.91064300604846138
	.quad	0x3fe309664ef80f18              # double 0.59489741729382484
	.quad	0x3fd9daba62d760ce              # double 0.40397510197136632
	.quad	0x3fa3f79a5850fac0              # double 0.038998435288239985
	.quad	0x3fd318675a7d6a18              # double 0.29836448513893421
	.quad	0x3fd78013719fa2bc              # double 0.36719213577320509
	.quad	0x3faa8459aa1985f0              # double 0.05179100228702882
	.quad	0x3feb5b0e1316a986              # double 0.85486510971286189
	.quad	0x3fe821fa75165923              # double 0.75414774769413773
	.quad	0x3fc2dedb113ffe2c              # double 0.14742601721080584
	.quad	0x3fb7b0481ad39b28              # double 0.092533594655475171
	.quad	0x3fd91b03e06b1c1c              # double 0.39227387348040721
	.quad	0x3fd56d39e9418f4c              # double 0.33479163912692367
	.quad	0x3fd613442390ae98              # double 0.34492591355476909
	.quad	0x3fdd4b434d871e1a              # double 0.45771868296694296
	.quad	0x3fc099b0853245e8              # double 0.12969023231248333
	.quad	0x3fe6635dadef800f              # double 0.69962963077341722
	.quad	0x3fe559333fce5128              # double 0.66713869535536663
	.quad	0x3febf27e21954794              # double 0.87335115966037557
	.quad	0x3fea5f0062905127              # double 0.82409686327676901
	.quad	0x3fece5e715b5e9f6              # double 0.90306429138519095
	.quad	0x3fd2c0d95d4206e8              # double 0.29302057368486922
	.quad	0x3fededc45004f92a              # double 0.93527427319330525
	.quad	0x3fecb59de4bd092e              # double 0.89717001605484881
	.quad	0x3fe390664bf951f8              # double 0.61137690390256605
	.quad	0x3f963ab3f6ba6a40              # double 0.021708309110730406
	.quad	0x3fd0c96f3910b9f6              # double 0.26229458401476735
	.quad	0x3fa0f79cf10de130              # double 0.03313913767391552
	.quad	0x3fe58ac7f00dc629              # double 0.67319104085453774
	.quad	0x3fec88c4a420d243              # double 0.89169532829561893
	.quad	0x3fa9d927c936dd20              # double 0.050484889328283211
	.quad	0x3fdf62967c7465d6              # double 0.4903923240068172
	.quad	0x3fc1df97fcdcfd34              # double 0.13963603827321835
	.quad	0x3fbc56ac6ed02fc0              # double 0.11069753365899171
	.quad	0x3fccdb52514beda8              # double 0.22544316262779529
	.quad	0x3fbe352d643576f0              # double 0.11799892136101753
	.quad	0x3fd6c0f0b20f7ad6              # double 0.35552613629071794
	.quad	0x3fd0ced8a775084c              # double 0.26262489655721732
	.quad	0x3fa2ced0e2ca2d50              # double 0.03673413055829633
	.quad	0x3fef53468e89c833              # double 0.9789154800366816
	.quad	0x3fedfb662989436a              # double 0.93693836319481005
	.quad	0x3fe63a53f70cce78              # double 0.69462011577566241
	.quad	0x3fc623283b17e990              # double 0.1729479111234693
	.quad	0x3fe9988b4de411b9              # double 0.79987111294808877
	.quad	0x3fe7dcd6fbf61c7b              # double 0.74570798121648296
	.quad	0x3fe5a8b51a3cee97              # double 0.67684416889774723
	.quad	0x3fb6e1b4a4c82790              # double 0.089381494741387124
	.quad	0x3fe30c09086ecabb              # double 0.59521915099170231
	.quad	0x3fe8b0b4b108a535              # double 0.7715705354395711
	.quad	0x3fe1905610f6d2bb              # double 0.54886916459380275
	.quad	0x3fecceb2a743617e              # double 0.90023167294116013
	.quad	0x3feb25affb62b611              # double 0.84835051630733649
	.quad	0x3fdcf8b5c7a91052              # double 0.45268005846106008
	.quad	0x3fc790243f0fbbcc              # double 0.18408635214970415
	.quad	0x3fd73f1d07afe3f0              # double 0.36322713614168745
	.quad	0x3fd4b4d97f4e7edc              # double 0.32353818352019714
	.quad	0x3fe6c875786a7e8a              # double 0.71197007673977564
	.quad	0x3fe03606fdeeda4a              # double 0.50659513088505403
	.quad	0x3fcfe2315163bfdc              # double 0.24909035181144545
	.quad	0x3fa286db169368a0              # double 0.036185118203961197
	.quad	0x3fe360d56d00e649              # double 0.60557051934956363
	.quad	0x3fd7e4fb71b8cd14              # double 0.37335096460010786
	.quad	0x3fc80254c1ae37dc              # double 0.18757113892610178
	.quad	0x3fe2de68ef684473              # double 0.58964964637028883
	.quad	0x3fc001db9c527ce8              # double 0.12505669720574208
	.quad	0x3fd1cf5ed7e7129a              # double 0.27828188976517654
	.quad	0x3fb5a58f279b4e88              # double 0.084557482881161161
	.quad	0x3fcc260e557bff40              # double 0.21991137670556249
	.quad	0x3fd1e6487200b72e              # double 0.27968035824857196
	.quad	0x3fdd40247a5d5640              # double 0.45703994702975947
	.quad	0x3fc9029638af9414              # double 0.19539144294609001
	.quad	0x3fc4282e1035f8e4              # double 0.15747619430107485
	.quad	0x3fded130769ac280              # double 0.48151790220712343
	.quad	0x3fbd2245def50268              # double 0.11380421345985214
	.quad	0x3fba4dd2b28c1850              # double 0.10274998530448554
	.quad	0x3fecc9eb8f8b02cb              # double 0.89964845691437156
	.quad	0x3fd2781ec221dfce              # double 0.28858155210718628
	.quad	0x3fdf3c5cd5e9f404              # double 0.48805924310710247
	.quad	0x3fe4a712161fc51d              # double 0.64539436646569792
	.quad	0x3fec78a729b9b65e              # double 0.88972814702510639
	.quad	0x3fdc8774ad52dad0              # double 0.44576756406915496
	.quad	0x3fb2c2496cc271a0              # double 0.073277081539748767
	.quad	0x3fe6885a095c8674              # double 0.70414449528125411
	.quad	0x3fef8c479f5c9b27              # double 0.98587399602260894
	.quad	0x3fc01dbbb6565e98              # double 0.1259073868102305
	.quad	0x3fd9cce1928e6090              # double 0.40312995254635897
	.quad	0x3fe1c2dc69f6b998              # double 0.55503674217270582
	.quad	0x3fd776a189397f6a              # double 0.36661566162910353
	.quad	0x3fd9cb58fb672446              # double 0.40303635169090446
	.quad	0x3fe98893eae28582              # double 0.79792209506938172
	.quad	0x3fdf9b2a9d3e0a6a              # double 0.49384560924241916
	.quad	0x3fe63c52cf41f8e9              # double 0.69486370544453024
	.quad	0x3fecd8f711c9dfbc              # double 0.9014849994118701
	.quad	0x3fd657a441fb69f8              # double 0.34909922069132859
	.quad	0x3feb6a8d92fefd76              # double 0.85675696096579546
	.quad	0x3f9751e2f69e57e0              # double 0.022773309996033109
	.quad	0x3fe3ccc6ced41ae0              # double 0.61874714275549181
	.quad	0x3fef56616f1520c2              # double 0.97929450698668341
	.quad	0x3fef7fa2a101a78f              # double 0.98433047720503619
	.quad	0x3fd7c09933318192              # double 0.37113027572015611
	.quad	0x3fedb20870a2d369              # double 0.92798254012323611
	.quad	0x3fd623d9852a32e8              # double 0.34593809131983599
	.quad	0x3fe9f60d8ae2f0a8              # double 0.81128575445429352
	.quad	0x3fe3bf272b3c51f1              # double 0.61708410686929771
	.quad	0x3fe781eb9a5abe3f              # double 0.73460941455227402
	.quad	0x3fe69b0c34373d85              # double 0.70642671774287236
	.quad	0x3fe50b22ab644917              # double 0.65760930514287252
	.quad	0x3fe0da7f3ecacbd6              # double 0.52667200340362785
	.quad	0x3fdd1c84def6d6e6              # double 0.45486566327904965
	.quad	0x3fabb840d74d1f30              # double 0.054140116006747951
	.quad	0x3fec12f1b047d37b              # double 0.87731251172827684
	.quad	0x3fe240c196bb6a69              # double 0.57040481033193402
	.quad	0x3fdd14bd55a4e06e              # double 0.4543908439986869
	.quad	0x3fdb0bfc1022b142              # double 0.42260648322805505
	.quad	0x3fda7f032e0e8714              # double 0.41400222299317702
	.quad	0x3fe28664a3eebc91              # double 0.57890541093901693
	.quad	0x3feba0501eb393ad              # double 0.86331945415860434
	.quad	0x3fd9f0265116819e              # double 0.40528257292501191
	.quad	0x3fe4bfb19a8f4964              # double 0.64840011775440276
	.quad	0x3fe0585f283f27cc              # double 0.51078756199535169
	.quad	0x3fc846a82bb91e84              # double 0.18965627798955975
	.quad	0x3feda9e729341abd              # double 0.92699010894360578
	.quad	0x3fd4171337e56f54              # double 0.31390839060417375
	.quad	0x3feed4bdeb528b53              # double 0.96346946679509881
	.quad	0x3fdf897591337804              # double 0.49276484660902065
	.quad	0x3fd68d65d5e6ea0a              # double 0.35238023651950867
	.quad	0x3fd4e309edb45066              # double 0.32635734761539081
	.quad	0x3f96108598baf880              # double 0.021547400900765457
	.quad	0x3fee333849c9fda4              # double 0.94375242626113164
	.quad	0x3fe85b6910a8a781              # double 0.76115849736855534
	.quad	0x3fec3ecc12773ecd              # double 0.88266566855050999
	.quad	0x3fd9b03e43b8c6dc              # double 0.40138203252273086
	.quad	0x3fc91733bc030b80              # double 0.19602057152050278
	.quad	0x3fe8cbfa2c140258              # double 0.77489956482902311
	.quad	0x3fcb93e16ab13d8c              # double 0.21545045575701882
	.quad	0x3fd87aa9287269ba              # double 0.3824866194715032
	.quad	0x3fe4c7a96e1da9e2              # double 0.64937278277403387
	.quad	0x3fe002029516e379              # double 0.50024537199997987
	.quad	0x3fecdcf24ac7dce4              # double 0.90197100263221985
	.quad	0x3fa64052b0171950              # double 0.043459495540036586
	.quad	0x3f917503f3a8b8c0              # double 0.017047940966386177
	.quad	0x3fefdeb489948a0c              # double 0.99593569632662726
	.quad	0x3fe3c044ce11c86e              # double 0.61722030876104639
	.quad	0x3fedeb83244a5297              # double 0.93499905670121819
	.quad	0x3fe26b3f65444717              # double 0.57559175280241248
	.quad	0x3fcf194eec7df2a8              # double 0.24295984790287162
	.quad	0x3feb979210a9dcc5              # double 0.86225226645083153
	.quad	0x3fd44ff856d9a770              # double 0.31738098603692944
	.quad	0x3fcec580b0288534              # double 0.24040230370978011
	.quad	0x3fddc90e8396892c              # double 0.46539652681726085
	.quad	0x3fd938d70a7f04a8              # double 0.39409423851982206
	.quad	0x3feca699214612df              # double 0.89533668993734838
	.quad	0x3fb55d16294c31b8              # double 0.083451638300352182
	.quad	0x3fcaa22b958dbd0c              # double 0.20807404329705326
	.quad	0x3fe456b6a5f38426              # double 0.63558514034605618
	.quad	0x3fd6c1411813d8d6              # double 0.35554530478783641
	.quad	0x3fe15354f0b04d27              # double 0.54142233857638622
	.quad	0x3fd60a0b1aea6d60              # double 0.34436299923409841
	.quad	0x3fd180b6101d4fa4              # double 0.27348090718919082
	.quad	0x3fe8e0ed1a421eda              # double 0.77745680931635808
	.quad	0x3f5990aeb4715a00              # double 0.001560373888215616
	.quad	0x3fec182dda646f99              # double 0.87795155195952923
	.quad	0x3fe2284a6ec5ff4a              # double 0.56741830478129285
	.quad	0x3fd4f2e5c82950b2              # double 0.32732529208193306
	.quad	0x3fe88c42416df1dd              # double 0.76712143687432965
	.quad	0x3fb52c20589aee68              # double 0.082704564697388627
	.quad	0x3fde335c437befda              # double 0.47188479032751973
	.quad	0x3fe66f22d1263fa8              # double 0.7010664067220107
	.quad	0x3fcd3a67315bd8dc              # double 0.22834482107254572
	.quad	0x3fd8e3e6674e7690              # double 0.38890991295361577
	.quad	0x3fd0f662b98c1888              # double 0.2650381862625939
	.quad	0x3fd7e84d248cbfc6              # double 0.3735535485202458
	.quad	0x3fe4ee35ab137388              # double 0.65407832539823207
	.quad	0x3fe18067ae7b0ee3              # double 0.54692443922291678
	.quad	0x3fc4c2916dd9a7c4              # double 0.16218774665622793
	.quad	0x3fee7096a71b5c5d              # double 0.95124371183454637
	.quad	0x3fb5ebafddd654a8              # double 0.085627547893028066
	.quad	0x3fd1797ba0657288              # double 0.27303972877215488
	.quad	0x3fc75cfea63ab4fc              # double 0.18252547375360695
	.quad	0x3fd58c9a588e7778              # double 0.33670672081085895
	.quad	0x3fe9d11962c5232a              # double 0.80677480021504278
	.quad	0x3fd4134e02f4006a              # double 0.31367826736823778
	.quad	0x3fbc1f63a5ade520              # double 0.10985396189598307
	.quad	0x3feec2b638b42c3e              # double 0.96126853060685113
	.quad	0x3fed162636ef7a78              # double 0.90895376901228442
	.quad	0x3fc72dd0137da69c              # double 0.18108559562397353
	.quad	0x3fdb2d9bee0a790e              # double 0.42465875860388358
	.quad	0x3fe24fef82149504              # double 0.57225776106193438
	.quad	0x3febf1f6ee213099              # double 0.87328669080445132
	.quad	0x3feca05fab237f68              # double 0.89457686830062944
	.quad	0x3fde68169d80641a              # double 0.47510304814346827
	.quad	0x3fe2e6d118c14760              # double 0.59067587695083645
	.quad	0x3fee882342ff8c4c              # double 0.95411837659447362
	.quad	0x3fe30049efd64e5a              # double 0.59378525584402131
	.quad	0x3fd81db984a3d618              # double 0.37681425049899664
	.quad	0x3fecc824552ed3df              # double 0.89943138730324879
	.quad	0x3fe03037ec8d0d27              # double 0.50588604165424023
	.quad	0x3fe09b0887ffdd7e              # double 0.51892496645352515
	.quad	0x3fa4d17c09fab1b0              # double 0.040660740106747695
	.quad	0x3fc40a1018a87b88              # double 0.15655709461222167
	.quad	0x3fcdad6757d6cdc4              # double 0.23185436047570651
	.quad	0x3feb40c924d14ff6              # double 0.85165841284697197
	.quad	0x3fef8d78bc26cbc5              # double 0.98601948498105029
	.quad	0x3fb8c085a4404f30              # double 0.096687653160469677
	.quad	0x3fea49fd8ff203f8              # double 0.82153204073267627
	.quad	0x3fef60279dbebbfc              # double 0.98048764047223313
	.quad	0x3fd226466ca85e46              # double 0.28358612643339531
	.quad	0x3fe0c27a9ef35bc7              # double 0.52374011082690053
	.quad	0x3feb0bdf4fe6d08e              # double 0.84519925695214382
	.quad	0x3f986e807cdb6140              # double 0.023859031315482726
	.quad	0x3fe65fc9398f898f              # double 0.69919263117144392
	.quad	0x3fc3037d12e45480              # double 0.14854396269280201
	.quad	0x3feb8b28d17eeefc              # double 0.86073723714022731
	.quad	0x3fd7c52980214878              # double 0.37140882027336586
	.quad	0x3fca5cf069fb35d0              # double 0.20596127676837606
	.quad	0x3fc3d2fbb93056f0              # double 0.15487619917319462
	.quad	0x3fd793728593fca4              # double 0.36837447209104313
	.quad	0x3febe1395666e5e4              # double 0.87124316096668197
	.quad	0x3fec31eb778c7156              # double 0.88109372472130576
	.quad	0x3fe1acb35d35e25a              # double 0.55233162121937629
	.quad	0x3fc563ce1cc8fab8              # double 0.16710831075211785
	.quad	0x3fe9bd3d2c4020b0              # double 0.80435045855212728
	.quad	0x3feca41f140980dc              # double 0.8950343505239533
	.quad	0x3fe9f4970c5f6ba8              # double 0.81110718170690621
	.quad	0x3fed10644ef1a498              # double 0.90825095576032577
	.quad	0x3fe4b0b31d80c74e              # double 0.64656978380501484
	.quad	0x3fcd4b0fe35d2e48              # double 0.22885321237332534
	.quad	0x3fdeb3d0143cfcc0              # double 0.47972490288152514
	.quad	0x3fe137e815ddc21b              # double 0.5380745341372547
	.quad	0x3fe66a804e5a645c              # double 0.70050063422526021
	.quad	0x3fe8fc814038db58              # double 0.7808233503663855
	.quad	0x3fe7ca773470e0a8              # double 0.7434650444256663
	.quad	0x3fcfdb69292c2fbc              # double 0.24888338575726532
	.quad	0x3feaeaa2a4e7f3ac              # double 0.84114200790610516
	.quad	0x3fedc83af4303e29              # double 0.93069217389160486
	.quad	0x3fd5e0ada5db661a              # double 0.34183827588057769
	.quad	0x3fe47570c3aaadcf              # double 0.63933599678187558
	.quad	0x3fe05ef8c3d70989              # double 0.51159322977064037
	.quad	0x3fdd708a3b59e556              # double 0.45999389453898709
	.quad	0x3fcf9edc10217c00              # double 0.24703551089893949
	.quad	0x3fd1eaa050eeda90              # double 0.27994544890990714
	.quad	0x3fa0c39ada308750              # double 0.032742346891849849
	.quad	0x3fc404e212e2b9b4              # double 0.15639902040625275
	.quad	0x3fe4b140d0a54d9c              # double 0.64663735152355484
	.quad	0x3fe14651dcdb2977              # double 0.5398339570613605
	.quad	0x3fd60429977d192a              # double 0.34400405687155688
	.quad	0x3fecd730700bbeca              # double 0.90126821407280855
	.quad	0x3fe8dbe1d4412f50              # double 0.77684108215314929
	.quad	0x3feebd4af402cb18              # double 0.96060702951794763
	.quad	0x3feff380c42798a5              # double 0.99847448646030001
	.quad	0x3fecec308c0752a4              # double 0.90383174275719513
	.quad	0x3fe9f5cb9a6ee59d              # double 0.81125431215984956
	.quad	0x3fe31715814f5949              # double 0.5965678716263848
	.quad	0x3fda5fc8ebdaae1e              # double 0.41209624321592908
	.quad	0x3fe8db6d9afdff03              # double 0.77678566238316227
	.quad	0x3fc180c4ea344978              # double 0.13674222408060266
	.quad	0x3f983873d913efa0              # double 0.02365284931600764
	.quad	0x3feba672c70e730d              # double 0.8640684020825532
	.quad	0x3fdf55db6f2a10cc              # double 0.48961530547991283
	.quad	0x3fedf01270328ac1              # double 0.93555566705284587
	.quad	0x3fd0782ff4094746              # double 0.25733565169968065
	.quad	0x3fddae1f56e1cfa6              # double 0.46375258907868966
	.quad	0x3feb087730aae936              # double 0.84478339677233438
	.quad	0x3feaacdd2f789a1e              # double 0.83360156318378009
	.quad	0x3fe5598991cacae1              # double 0.66717985606223007
	.quad	0x3fe21342ad33e642              # double 0.56485112980517038
	.quad	0x3fea189b5158cd7e              # double 0.81550374877990328
	.quad	0x3fd1c2d65b5790ec              # double 0.27751692695734564
	.quad	0x3fe96670aa0c5841              # double 0.79375489437621394
	.quad	0x3fe65936cc987f54              # double 0.69839038810821785
	.quad	0x3fe14b29f68a6780              # double 0.54042528297871684
	.quad	0x3fe5e36587f410b6              # double 0.68400837472338227
	.quad	0x3fe6a6214c56cd61              # double 0.70777954969382162
	.quad	0x3fada9e631a1b390              # double 0.05793685298781448
	.quad	0x3fe56bcc95420536              # double 0.66940907623226198
	.quad	0x3fc4fd0de5b2d0f8              # double 0.16397260394808888
	.quad	0x3fe010f6c5b198a7              # double 0.50207079517419551
	.quad	0x3fe2a0491949d1d7              # double 0.58206610621578647
	.quad	0x3fe4bf0ac5371e59              # double 0.64832056540121663
	.quad	0x3fe7f741ca24b73f              # double 0.74893273812424599
	.quad	0x3fe653793945cd91              # double 0.69768963991229971
	.quad	0x3fee2222eba99655              # double 0.94166704204389851
	.quad	0x3fc92b33d49ca0fc              # double 0.19663093453824121
	.quad	0x3fca603ab442f178              # double 0.2060616855795947
	.quad	0x3fec6cd510443b9d              # double 0.88828519036347908
	.quad	0x3feaad8cfe2c0d6d              # double 0.83368539469704006
	.quad	0x3fdc0fbbbfe956d6              # double 0.43846029034953682
	.quad	0x3fca12f00c0b5ed4              # double 0.20370293224436031
	.quad	0x3fec1c9aadfab367              # double 0.87849172573406242
	.quad	0x3fdc625d97461cfe              # double 0.44350375912513573
	.quad	0x3fbf787e37649818              # double 0.12293232776991692
	.quad	0x3fcd6d476017b624              # double 0.22989742462179763
	.quad	0x3fe18e6f8afed842              # double 0.54863717219883079
	.quad	0x3fdcc4f5f33ecac0              # double 0.44952152971670145
	.quad	0x3fe962af30ac5676              # double 0.79329642778857479
	.quad	0x3fe6511eeaa8c6f8              # double 0.69740243751422692
	.quad	0x3faad5681c8a53d0              # double 0.052409413799217597
	.quad	0x3fe37ec3401dc0fe              # double 0.6092239620466271
	.quad	0x3fd07803096585b8              # double 0.25732494275697659
	.quad	0x3fee9128d55ceb67              # double 0.95521966621832355
	.quad	0x3fbaa0fcf1b62f78              # double 0.1040189828983652
	.quad	0x3feb6711284a5c28              # double 0.85633142346603552
	.quad	0x3fd9e5cd24f00fea              # double 0.40465096099091957
	.quad	0x3fc0e97fd6ddb6b8              # double 0.13212583533770839
	.quad	0x3fe5712cbf281719              # double 0.67006528220437922
	.quad	0x3fddb66927299b0a              # double 0.46425846886124644
	.quad	0x3fe78947bf77fffa              # double 0.73550784488907017
	.quad	0x3fe906e5d7e2055a              # double 0.78209201969745412
	.quad	0x3f9a6d19e24414a0              # double 0.025806812701394066
	.quad	0x3fd404549cdb160a              # double 0.31276431386899672
	.quad	0x3fed494d1b7b4482              # double 0.91519790046199057
	.quad	0x3fd7cf8d069655da              # double 0.37204290049825561
	.quad	0x3fe28b18dbe2928d              # double 0.5794796270971162
	.quad	0x3fdfd2452c607554              # double 0.49720887502356459
	.quad	0x3fc48e4d67548d44              # double 0.16059272332595687
	.quad	0x3feb7317e710e055              # double 0.85779948358595937
	.quad	0x3fe4230cfaaf3ac0              # double 0.6292786499196481
	.quad	0x3fead4c7b3ec22d4              # double 0.83847413197608
	.quad	0x3fe10a34a0b6abde              # double 0.53249579800955948
	.quad	0x3fce0011248cfb18              # double 0.23437704357817135
	.quad	0x3fed5cadda3ce233              # double 0.9175633680779981
	.quad	0x3fe7180542fe82e5              # double 0.72168219647218435
	.quad	0x3fe21e0ff02679e6              # double 0.56616970924715981
	.quad	0x3fe18a9ac08edfd6              # double 0.54816949471477971
	.quad	0x3feccca1c6c36a31              # double 0.89997948475804013
	.quad	0x3fe6891d8daf2bf9              # double 0.70423772499759629
	.quad	0x3fd8ce05ca3464ac              # double 0.38757462259816111
	.quad	0x3fa2edc962697980              # double 0.036970418227372015
	.quad	0x3fedb87fe317d588              # double 0.92877191881295662
	.quad	0x3fed1eeb5a1f7bdf              # double 0.91002433397431648
	.quad	0x3fd0bb51a6c86dc2              # double 0.26143304145236013
	.quad	0x3fa514f990c6d6a0              # double 0.041175650523127105
	.quad	0x3fce634a400544a0              # double 0.2374050915337067
	.quad	0x3fddde60b0ebc1ea              # double 0.46669785764154759
	.quad	0x3fe7e72a6367218b              # double 0.74696845450039129
	.quad	0x3fe92d0070e09ba3              # double 0.78674337431299468
	.quad	0x3fc854c57b1b5958              # double 0.19008701811862738
	.quad	0x3fdbbc4ab23b57b2              # double 0.43336741834115877
	.quad	0x3fc47540155c1ab4              # double 0.15982819598158005
	.quad	0x3fe694ec20b124d2              # double 0.70567900071287171
	.quad	0x3fee4c828a70bdf9              # double 0.9468395904459036
	.quad	0x3feb783a551a602a              # double 0.85842625257192151
	.quad	0x3fe44d9691d3bb94              # double 0.63447121126033545
	.quad	0x3fe0255a71ebffc9              # double 0.50455972910276004
	.quad	0x3fec2fa737e45541              # double 0.88081704059974453
	.quad	0x3fe679c18bc3ce03              # double 0.70236279771637589
	.quad	0x3f9b50a2c53e5700              # double 0.026674788750447043
	.quad	0x3fe3d64c8750e4ca              # double 0.61990953854469777
	.quad	0x3fe0d81fb86407e0              # double 0.52638231290643134
	.quad	0x3fe047aaa655071c              # double 0.50874836432214776
	.quad	0x3feb4eee9b9933bb              # double 0.85338526144334226
	.quad	0x3fe604cb9ae9399e              # double 0.68808536773740392
	.quad	0x3fd97cc76e120554              # double 0.39824090718328375
	.quad	0x3fab3fbb70b74840              # double 0.053220613011618401
	.quad	0x3fee9229e1c37d0d              # double 0.9553422364660108
	.quad	0x3fcb6f67652527e8              # double 0.21433727682807491
	.quad	0x3fc6a2a306bf3654              # double 0.1768382819122275
	.quad	0x3fda8bef503dc72e              # double 0.41479094348970846
	.quad	0x3feb9ef316bfd120              # double 0.86315302317828823
	.quad	0x3fd502e190e99b7e              # double 0.32830084945310734
	.quad	0x3fe17a8861c0588a              # double 0.54620761005459539
	.quad	0x3fdc36750e6e943c              # double 0.44082380685205513
	.quad	0x3fe21db3d5d58787              # double 0.56612579121086604
	.quad	0x3fe3aa669c9d3e31              # double 0.61455088223187293
	.quad	0x3fed61c6301e13dd              # double 0.91818532369563466
	.quad	0x3fe5abb3746e3f52              # double 0.67720959415781068
	.quad	0x3fe7b47827866f31              # double 0.74077995033028377
	.quad	0x3fde9ed2bdec0b86              # double 0.47844379946780469
	.quad	0x3feff2a0fb47e7fb              # double 0.99836777761743122
	.quad	0x3fc55799cfebb41c              # double 0.16673586513880501
	.quad	0x3fe2a3dcd8478ecc              # double 0.58250276796430844
	.quad	0x3fcac380dc30e6c4              # double 0.20909128905787189
	.quad	0x3fc8fa82519aa7ac              # double 0.19514492973877162
	.quad	0x3fd3f6bcf4cb035a              # double 0.31193469911163663
	.quad	0x3fea41bda74bb880              # double 0.82052500414808094
	.quad	0x3fe9fc159e7ddbae              # double 0.81202202754399422
	.quad	0x3fed14defafe5d8c              # double 0.90879773161116039
	.quad	0x3fbb4e69ddec1580              # double 0.1066652457048658
	.quad	0x3fe1413dee3200dc              # double 0.53921410105251821
	.quad	0x3fcdba6abb90951c              # double 0.23225149305759707
	.quad	0x3fed24757d547b1a              # double 0.91070055464283262
	.quad	0x3fefcc530d1874a8              # double 0.99369194562645635
	.quad	0x3fcba37c51a2b6f8              # double 0.21592668520081992
	.quad	0x3fbdb5e1dde8f1a8              # double 0.11605655353282052
	.quad	0x3fd617375f2198f6              # double 0.34516701021347218
	.quad	0x3fe44d9f2416e044              # double 0.63447529839232475
	.quad	0x3fb900b196b33cf0              # double 0.097666835109737837
	.quad	0x3fedb9b315bbe4f3              # double 0.9289184021464777
	.quad	0x3fc82dce2e852750              # double 0.1888978697918966
	.quad	0x3fa54d80380262b0              # double 0.041606909596514696
	.quad	0x3fcb7b564449c90c              # double 0.21470144590745865
	.quad	0x3fe13cee03d949e6              # double 0.53868771316257091
	.quad	0x3fe8c9e53e35b1c5              # double 0.77464544439640604
	.quad	0x3fdb680c3f9e503c              # double 0.42822557652221227
	.quad	0x3fbc3a7aec9b0968              # double 0.1102673366213246
	.quad	0x3fd8b5864d6253b6              # double 0.38607938344039938
	.quad	0x3fe2376003db3fb8              # double 0.56925965073786866
	.quad	0x3fdd7408616de754              # double 0.46020707621174961
	.quad	0x3fe412ae6814f5bc              # double 0.62728042915812621
	.quad	0x3fd5d127b2c55b84              # double 0.34089081247423558
	.quad	0x3fe3b94165e38902              # double 0.61636419201047965
	.quad	0x3febf1cc8dfb1f54              # double 0.87326648455289523
	.quad	0x3fa1d5541d37cbc0              # double 0.034830692831654186
	.quad	0x3fe3cf532d8884e6              # double 0.61905821698397001
	.quad	0x3fefdb6999b216a0              # double 0.99553375261958265
	.quad	0x3fe33f3d00bb0da7              # double 0.60146951811514249
	.quad	0x3fca5c4d647cbb64              # double 0.20594184309581032
	.quad	0x3fdfb33b5366f908              # double 0.49531443733930347
	.quad	0x3fe416ab9ae8d0e9              # double 0.62776737457036547
	.quad	0x3fd6d883c949ec0c              # double 0.35696501404862668
	.quad	0x3fe4431ff6dc9660              # double 0.6331939527050956
	.quad	0x3fde276e09a07088              # double 0.47115660610303012
	.quad	0x3feb83a0d1f76083              # double 0.85981789597555325
	.quad	0x3feff2c0908a5106              # double 0.99838283758666146
	.quad	0x3fed4492351728b7              # double 0.91462049836379478
	.quad	0x3fed76915569b75f              # double 0.92072359735696441
	.quad	0x3fed255e2ba733ac              # double 0.91081150556566603
	.quad	0x3fd8fc7f3f93626c              # double 0.39041119774404964
	.quad	0x3feed768bf1b2614              # double 0.96379506421470972
	.quad	0x3fddd0ee00f7e07a              # double 0.46587705702359694
	.quad	0x3fe2ad98b1352a3c              # double 0.58369097338556442
	.quad	0x3f8d9665379a2800              # double 0.014447012671798376
	.quad	0x3feb4489eaa03e94              # double 0.85211654496557054
	.quad	0x3fe5327d24b06f37              # double 0.66241318860873022
	.quad	0x3fe5e6381b9415ad              # double 0.68435292612473619
	.quad	0x3fd948f4af5c9f3a              # double 0.39507786870170813
	.quad	0x3fdef2c9f04a9bc0              # double 0.48356865373574109
	.quad	0x3feb5cbccf13491e              # double 0.85507049984360939
	.quad	0x3fb3dc610d249fe8              # double 0.077581468304401491
	.quad	0x3fc20f32399f3d60              # double 0.14108875096870133
	.quad	0x3fee012241bd7099              # double 0.93763840522616981
	.quad	0x3fed342e8c31445b              # double 0.91261985188806294
	.quad	0x3fd37c3f2715ca04              # double 0.30445841614633218
	.quad	0x3fbf382ebc87f4b8              # double 0.12195102789697188
	.quad	0x3fb33609c9795ce8              # double 0.075043307960516281
	.quad	0x3fa5de811f1b8910              # double 0.04271319870692214
	.quad	0x3fb4a5467cd93520              # double 0.080646901588995679
	.quad	0x3fccc728c6fab65c              # double 0.22482785907543501
	.quad	0x3fac35cc9ee2f3a0              # double 0.055097956080749855
	.quad	0x3fda636b7c34d7ec              # double 0.41231810693295645
	.quad	0x3fe0036ede703a03              # double 0.50041907734868152
	.quad	0x3fe39fc477f524fa              # double 0.61325286320894112
	.quad	0x3fc134a0146db2d8              # double 0.13441849706159448
	.quad	0x3fc317d084196ff0              # double 0.14916426134266159
	.quad	0x3fe70cf89eed8275              # double 0.72033339539127772
	.quad	0x3fb038acca3741b0              # double 0.063364791268446963
	.quad	0x3fa04b736110fd60              # double 0.031825643156930594
	.quad	0x3fb86292452bfbe0              # double 0.095254079711579731
	.quad	0x3fca51105aec7fd4              # double 0.20559887351646344
	.quad	0x3fb6531d839b5f88              # double 0.087205738669011379
	.quad	0x3fb49f4f826b4828              # double 0.080555886593430714
	.quad	0x3fa81b6febcbe220              # double 0.047084329160444804
	.quad	0x3fb6fcf2abc2a7d0              # double 0.089797179158863871
	.quad	0x3fedf510351f3182              # double 0.93616495490418594
	.quad	0x3fd42e1716a4a04c              # double 0.31531312190282246
	.quad	0x3fea2f9b78564cbd              # double 0.81831143859235278
	.quad	0x3fdf9e90c884d57e              # double 0.49405307371065266
	.quad	0x3fba5cc351fd1900              # double 0.10297795058895431
	.quad	0x3fe1d91193649d63              # double 0.55774763858509535
	.quad	0x3fe5b5064a98015b              # double 0.67834772652717434
	.quad	0x3fd6f387d4aa412e              # double 0.35861392753669719
	.quad	0x3fe2eb5ffca7cb95              # double 0.59123229357497797
	.quad	0x3fe61594918a7810              # double 0.69013431955295523
	.quad	0x3fe898f9cb453dcf              # double 0.76867379857315565
	.quad	0x3fe81a91187c76cc              # double 0.75324301512201818
	.quad	0x3fd3e9a32027fd7c              # double 0.31113508358244935
	.quad	0x3fe701a34b32de73              # double 0.71894993483779357
	.quad	0x3fec14098150f1b4              # double 0.8774459386545943
	.quad	0x3fc433f6b1998e0c              # double 0.15783580467096703
	.quad	0x3fe6a326ed970913              # double 0.70741602329533959
	.quad	0x3fe09a89a50f922d              # double 0.51886446226541738
	.quad	0x3fec3f3caa2c9616              # double 0.88271935689107539
	.quad	0x3fd64151b4162ea4              # double 0.34773676477991899
	.quad	0x3fe7788addb3e0b0              # double 0.73346465398119243
	.quad	0x3f6f2422d2854700              # double 0.0038014106868694553
	.quad	0x3fea29a663ca3c19              # double 0.81758422365408301
	.quad	0x3fd79d12b7de03d6              # double 0.36896198230539079
	.quad	0x3fd3ab439025a00a              # double 0.30732812001088006
	.quad	0x3feabe9ce37483ec              # double 0.83576816963988909
	.quad	0x3fed554485e256b0              # double 0.91665865086789289
	.quad	0x3fd1b43d3eee9870              # double 0.27662593026833004
	.quad	0x3fe932a0082d4fdf              # double 0.78742982480116186
	.quad	0x3fb829cb6bde82c0              # double 0.094387735209703116
	.quad	0x3fe16e8cd80afc81              # double 0.54474489398843684
	.quad	0x3fed854e13e56601              # double 0.9225225819201911
	.quad	0x3fee199ec70e19d5              # double 0.94062746885247839
	.quad	0x3fde88b49e72573e              # double 0.47709384415917444
	.quad	0x3f8bc8f02bf4fa40              # double 0.013566852895221193
	.quad	0x3fe76d8895972b45              # double 0.73212079255004225
	.quad	0x3fe13f9955e68cc4              # double 0.53901354577501381
	.quad	0x3fe712701a3ccef8              # double 0.72100072025793249
	.quad	0x3fd1dd6acb183c0e              # double 0.27913923104728233
	.quad	0x3fd0da12c8608a78              # double 0.26331014221265248
	.quad	0x3fe16f4d22aa5004              # double 0.54483658571780369
	.quad	0x3fda7da55c6ad396              # double 0.41391881966711119
	.quad	0x3fee5e6c952b9bca              # double 0.94902638563950714
	.quad	0x3f71005abb393080              # double 0.0041507286255858533
	.quad	0x3fdf59afcf2df648              # double 0.48984904510857463
	.quad	0x3fd6bb8846017dc8              # double 0.35519606434351347
	.quad	0x3fc5d82559b80a48              # double 0.17065874939733505
	.quad	0x3fea0c072632e399              # double 0.81396825276088969
	.quad	0x3fe8259c629c55be              # double 0.75459117183589064
	.quad	0x3fe535b762b23f7d              # double 0.6628071715986007
	.quad	0x3fe050d4a0c31d7f              # double 0.509867013920413
	.quad	0x3fe390648add94c9              # double 0.61137606737306627
	.quad	0x3fefc91afdee0df0              # double 0.99329900355991008
	.quad	0x3fe6cefb1b5d00ad              # double 0.71276622146981128
	.quad	0x3fedec87d300385a              # double 0.93512335978608552
	.quad	0x3fc79bb6f4bf3400              # double 0.1844395346692238
	.quad	0x3fea8f3c046f21e4              # double 0.8299846731761673
	.quad	0x3fef61677b441f01              # double 0.98064016414079457
	.quad	0x3fe58185c6316b42              # double 0.67206085881785094
	.quad	0x3fe4a497795bb321              # double 0.64509175970815502
	.quad	0x3fd86356e78167a6              # double 0.38106320007283967
	.quad	0x3fe01069e135e650              # double 0.50200361238894153
	.quad	0x3fe26a727e124222              # double 0.5754940473871708
	.quad	0x3fe84d1bf482c8fd              # double 0.75941274410277482
	.quad	0x3fe55412a7b3b6b4              # double 0.66651280168817673
	.quad	0x3feea1bcb04b2a61              # double 0.95724329407068975
	.quad	0x3fe5af67f3af889a              # double 0.67766187281474122
	.quad	0x3fe71520ecea2e71              # double 0.72132917663971174
	.quad	0x3fed29b6f16428a3              # double 0.91134211680152466
	.quad	0x3fd76420ed3de020              # double 0.36548636596808315
	.quad	0x3fe18eec37dc60d8              # double 0.54869662199328229
	.quad	0x3fc9f4d632212a30              # double 0.20278432319385464
	.quad	0x3fdc8168bcfe434c              # double 0.44539850670212355
	.quad	0x3fddaae9d4f6219c              # double 0.46355672642723689
	.quad	0x3fd10e623fbaa1e6              # double 0.26650291656053893
	.quad	0x3fe7530774337700              # double 0.72888539023890075
	.quad	0x3fdb7d8017e2c084              # double 0.42953493435471324
	.quad	0x3fdbd0635e680212              # double 0.43459400386203229
	.quad	0x3f82159adbc750c0              # double 0.0088302706070993997
	.quad	0x3fdd06127540749e              # double 0.45349561167115293
	.quad	0x3fecec3f883e8778              # double 0.90383888826566672
	.quad	0x3feb10a480abd458              # double 0.84578156596274834
	.quad	0x3fe6a47b7696dbb5              # double 0.70757840311022469
	.quad	0x3fce5f5cc421c4ec              # double 0.23728522850755185
	.quad	0x3f932eca111ca140              # double 0.018733174604819824
	.quad	0x3fdc6c2799dbac18              # double 0.44410123849110184
	.quad	0x3fc284c2cc36a5c4              # double 0.14467654200897873
	.quad	0x3f9a11cf7bf58300              # double 0.025458566609247946
	.quad	0x3fed6f2518aa0f7f              # double 0.91981749360319032
	.quad	0x3fee6ca17a59356c              # double 0.95076059242425747
	.quad	0x3f90cdec3a6b60e0              # double 0.016410533013954232
	.quad	0x3fa7840abfaf0b30              # double 0.045929275416276005
	.quad	0x3fa681d0bd6acb40              # double 0.04395916282864798
	.quad	0x3fe67863b0507485              # double 0.70219597278959667
	.quad	0x3fdf16133681ae96              # double 0.48572235415370224
	.quad	0x3fce6bef6aed2464              # double 0.23766892167103315
	.quad	0x3fc208a8e80b5180              # double 0.14088927583965116
	.quad	0x3fe3ceddc4bb788d              # double 0.61900223182944247
	.quad	0x3feadeeac50e1516              # double 0.83971155631357663
	.quad	0x3fd7798779c8079a              # double 0.36679255383216403
	.quad	0x3fe1a57082fee90d              # double 0.55144525132280509
	.quad	0x3fea7b6977003ebd              # double 0.82756493799566722
	.quad	0x3fcb7e8fe9c48f1c              # double 0.21479987062877448
	.quad	0x3fed5f3d6eca00e4              # double 0.91787597311488555
	.quad	0x3fd78ea883ee5f82              # double 0.36808216937924254
	.quad	0x3fd8bb94f9b0f45a              # double 0.38644909271153483
	.quad	0x3fec3ea3286f95b5              # double 0.8826461591494793
	.quad	0x3fdadb56389effee              # double 0.41963725594905454
	.quad	0x3fc452bde51d65bc              # double 0.15877507865188345
	.quad	0x3fe3297e16ca227d              # double 0.59881500674335053
	.quad	0x3fcb1f8bbe032ee4              # double 0.21190020349455729
	.quad	0x3fea52f1cb645108              # double 0.82262506222699106
	.quad	0x3fe6d7648969085a              # double 0.71379305684991867
	.quad	0x3fe563970a9a0f89              # double 0.66840698309577917
	.quad	0x3fd81319b5f148a8              # double 0.37616579788039894
	.quad	0x3fed82f4c18e0e2d              # double 0.92223584941570425
	.quad	0x3fd6d2001b57f192              # double 0.35656740827814659
	.quad	0x3fe431757e5581e1              # double 0.63103747057544635
	.quad	0x3fb5d713b86ef0b8              # double 0.085313065078426287
	.quad	0x3fbab02d5a51a080              # double 0.1042507501130121
	.quad	0x3fd633c8529b2cd6              # double 0.3469105536175453
	.quad	0x3fd212e16bf0b530              # double 0.28240237752000308
	.quad	0x3fa29b72cbe3e760              # double 0.036342227353044931
	.quad	0x3fddf32c929422ba              # double 0.46796716989824072
	.quad	0x3fea65fad628bc51              # double 0.8249487097545033
	.quad	0x3fe389bce44c3f8f              # double 0.61056370343611543
	.quad	0x3f9d6f246c6db620              # double 0.028744286649660222
	.quad	0x3fb29db27630f098              # double 0.072718767028108977
	.quad	0x3f9ff2e83fcbf940              # double 0.031200055021139095
	.quad	0x3fdc0672d10791e8              # double 0.43789358532947498
	.quad	0x3fe8e42f99c112ae              # double 0.77785472898593411
	.quad	0x3fd11e6c37ecb5b8              # double 0.26748185597792995
	.quad	0x3fd32b2cc019eb52              # double 0.29951018104445837
	.quad	0x3feea53f37dc3b40              # double 0.95767174635134466
	.quad	0x3fea7e4165f37006              # double 0.82791204368868487
	.quad	0x3fd00992647d2416              # double 0.25058421910631645
	.quad	0x3fef7e092b5873cd              # double 0.98413523164674077
	.quad	0x3fe59bf8295d5a92              # double 0.67528923110042371
	.quad	0x3fda1b6241fa6b9c              # double 0.40792137568649323
	.quad	0x3f937e86a3fd8580              # double 0.019037345656561566
	.quad	0x3fd40bf464773272              # double 0.31322965441794459
	.quad	0x3feb12883d539828              # double 0.84601222970809875
	.quad	0x3fcc703e08cad630              # double 0.2221753638202002
	.quad	0x3fc5631fd4c6da34              # double 0.16708753480425431
	.quad	0x3fd4058603717e08              # double 0.31283712707769995
	.quad	0x3fc6acc576e36b7c              # double 0.17714756302924772
	.quad	0x3fb8fedd4d6d7e30              # double 0.097638923075913153
	.quad	0x3fb5a75b04def150              # double 0.084584892930199773
	.quad	0x3fcf26aeabf29d08              # double 0.24336799045452318
	.quad	0x3fc2bb4d14f2c864              # double 0.14634097597951545
	.quad	0x3fe9638f9a4cd1c6              # double 0.79340343605741093
	.quad	0x3fe9bea68fc367d8              # double 0.80452278212328121
	.quad	0x3fd48328372b721a              # double 0.32050519359271024
	.quad	0x3fc9fdedffe39648              # double 0.20306181902485521
	.quad	0x3fd541c17adf9d90              # double 0.33213841437687908
	.quad	0x3fd8fe1131dd1286              # double 0.39050702924240743
	.quad	0x3fe3ea38bbeb8895              # double 0.62234150603423422
	.quad	0x3fdf8d45da9454c8              # double 0.49299761148115495
	.quad	0x3fc327a59fc1eb5c              # double 0.14964742947253284
	.quad	0x3fe0d3a5881ef239              # double 0.52583576761350692
	.quad	0x3fe807821004e78e              # double 0.7509165108560738
	.quad	0x3fddcc3f7cee585e              # double 0.46559130859657738
	.quad	0x3fe77be2bbcfa669              # double 0.7338727634607497
	.quad	0x3fe1b32724e11bac              # double 0.55311925127977224
	.quad	0x3fe5424037207c04              # double 0.66433726088496359
	.quad	0x3fd9022e8c4f6b42              # double 0.39075816824122367
	.quad	0x3fe6acc5df7a2cc1              # double 0.70859044692897311
	.quad	0x3fef43430c93f91d              # double 0.97696068245548739
	.quad	0x3fe9579fd9b55242              # double 0.79194633980893792
	.quad	0x3fe231528ed63125              # double 0.56852081201353555
	.quad	0x3fecdd34af05acc0              # double 0.90200266059891732
	.quad	0x3fe7dd828cbeab4d              # double 0.74578979005068791
	.quad	0x3f9534984d120400              # double 0.020708446220400134
	.quad	0x3fe9e77962327682              # double 0.80950612239003328
	.quad	0x3fb23cca51955fd8              # double 0.071240086477131981
	.quad	0x3fe2e3bed7e67a84              # double 0.59030096214321803
	.quad	0x3fefd92bca2ace7f              # double 0.99526013837608207
	.quad	0x3fee75090ebdd41c              # double 0.95178654555514041
	.quad	0x3fd6243277b78c18              # double 0.34595929804908243
	.quad	0x3fdf5a2c10f40e48              # double 0.48987867026901144
	.quad	0x3fd91dd2f017724a              # double 0.39244531103557689
	.quad	0x3fe4e480cb143a9f              # double 0.65289344467040056
	.quad	0x3fd06d15662eba9e              # double 0.25665793398631276
	.quad	0x3fc4b6a5ec4f59f4              # double 0.161823978791929
	.quad	0x3fd78d51adca57a0              # double 0.36800043079107958
	.quad	0x3fe8ce3aa56ee05f              # double 0.77517444907335775
	.quad	0x3fe7dcadcd2e89cb              # double 0.74568834375923509
	.quad	0x3fea475eaa8398f6              # double 0.82121213248754432
	.quad	0x3fcb89a7d58a781c              # double 0.21513841559220814
	.quad	0x3fc3961013d3c160              # double 0.15301705330012805
	.quad	0x3fe7da2d2e46a2dd              # double 0.74538287199274189
	.quad	0x3fe6ff502cd07b07              # double 0.71866616013343865
	.quad	0x3fe966282958b0fc              # double 0.79372032237509371
	.quad	0x3fdad01452c91274              # double 0.41895015797152912
	.quad	0x3fb36aba835238e0              # double 0.075847298680148167
	.quad	0x3fd14f6849a038fc              # double 0.27047164144541092
	.quad	0x3fef50dd891ba84c              # double 0.97862126139558247
	.quad	0x3fd3c65bc040d1fe              # double 0.30898183607794738
	.quad	0x3fecfeaa99d9bdb8              # double 0.9060872082608773
	.quad	0x3fe1540f61c83e9a              # double 0.54151124094092329
	.quad	0x3fe8c6a73a1b4471              # double 0.77424966191223465
	.quad	0x3fd18b979795ffb4              # double 0.27414502909959571
	.quad	0x3fd19bcafb4d3680              # double 0.2751338438145936
	.quad	0x3fe18147edb7baa4              # double 0.54703136853443768
	.quad	0x3fa65a205c38d3a0              # double 0.043656359918180287
	.quad	0x3fe7588fea60a970              # double 0.7295608117758956
	.quad	0x3fdae5f04010b596              # double 0.4202843309056673
	.quad	0x3fa975da3bff5ae0              # double 0.049727268051062756
	.quad	0x3fd8deb0b2d94296              # double 0.3885919329232278
	.quad	0x3fe9e3562befc93a              # double 0.80900105077151996
	.quad	0x3fe7a88eeb84dd0e              # double 0.73932596206478407
	.quad	0x3feb128a6f85c1d0              # double 0.84601327687965444
	.quad	0x3fe8da7184f3eac0              # double 0.77666545836776635
	.quad	0x3feae7585a1d99bd              # double 0.84074037171085758
	.quad	0x3fe479703a538177              # double 0.6398240222152215
	.quad	0x3fa298d5422a5890              # double 0.036322273566086527
	.quad	0x3fd1786e0eb4343e              # double 0.27297545848779581
	.quad	0x3fe5b2b0569557d7              # double 0.67806260023894083
	.quad	0x3fe8a7d7d4b2bfe6              # double 0.77048865835785985
	.quad	0x3fed6d0ed98190a2              # double 0.91956274491942147
	.quad	0x3fef332752a052c0              # double 0.97499433649007727
	.quad	0x3fdd9f06efd9b2f6              # double 0.46283124373330453
	.quad	0x3febac6541e66523              # double 0.86479437705125795
	.quad	0x3fe7e2dd70613c20              # double 0.74644348096069634
	.quad	0x3fd370b04b233cac              # double 0.30375296914730643
	.quad	0x3fe1b46bb4053a6d              # double 0.55327401314009494
	.quad	0x3fc1f4e34e50fee0              # double 0.14028588604013859
	.quad	0x3fe36c21806f0631              # double 0.60694956860260707
	.quad	0x3fc41a27b78ca520              # double 0.15704819166538986
	.quad	0x3fd7608beb27da4a              # double 0.3652677341882834
	.quad	0x3fd3b78e0f92b978              # double 0.30807830353560162
	.quad	0x3fedf2b011ee6941              # double 0.9358749723644807
	.quad	0x3fdab47146b784f0              # double 0.41726333528465798
	.quad	0x3fdec2812662e052              # double 0.48062161205917164
	.quad	0x3fea441901b47198              # double 0.82081270535450113
	.quad	0x3fb7f4d32a9fe590              # double 0.093579481035609868
	.quad	0x3fdc1aed4112464e              # double 0.43914347986819713
	.quad	0x3fdad1e882220912              # double 0.41906178196235644
	.quad	0x3fcee4f765f1853c              # double 0.24136249997813219
	.quad	0x3fdbe6cf1d29e1f6              # double 0.43596246574409692
	.quad	0x3fe074515fa67a39              # double 0.51419895822238637
	.quad	0x3fd0055a501bba0c              # double 0.25032670806004442
	.quad	0x3f96b47978826bc0              # double 0.022172830562890544
	.quad	0x3fe35885a1947d52              # double 0.60455590780831359
	.quad	0x3fe8236cdce2d287              # double 0.75432437078286874
	.quad	0x3fed020cf27d7c8c              # double 0.90650031434405908
	.quad	0x3fe0c3152a31ffb8              # double 0.52381380311270842
	.quad	0x3fba7e7d52cfaef8              # double 0.10349257728347172
	.quad	0x3fbd9cdc747d0990              # double 0.11567476123767606
	.quad	0x3fda0b578a72082e              # double 0.40694225807249296
	.quad	0x3fb57f316d9f3288              # double 0.083972062361860833
	.quad	0x3fdacb959b363ffe              # double 0.41867580563939544
	.quad	0x3fca131c72a24e84              # double 0.20370822522510335
	.quad	0x3fe7fbc4bae4fdea              # double 0.74948345663864058
	.quad	0x3fe39e788aa91c8d              # double 0.61309458810946327
	.quad	0x3febe014031d8915              # double 0.87110329254599839
	.quad	0x3fefe56affe934bf              # double 0.99675512297257984
	.quad	0x3febbf2008264c3b              # double 0.86708070365637668
	.quad	0x3fe620b70dc9ca7e              # double 0.69149353688256077
	.quad	0x3fde8dd9557a1344              # double 0.47740777346944108
	.quad	0x3fdf963a5061c806              # double 0.49354417657662031
	.quad	0x3fe8c1007828e79b              # double 0.77355979412753884
	.quad	0x3fd6aff15820cd1c              # double 0.35448869329703014
	.quad	0x3fd552875c6efcba              # double 0.3331621554061247
	.quad	0x3fef4ae257a3a0bc              # double 0.97789113156343132
	.quad	0x3fcf523f2fc2ece8              # double 0.24469747383213947
	.quad	0x3fe6090652875567              # double 0.68860164755703301
	.quad	0x3fefc9ef41aa4aaa              # double 0.99340021920428012
	.quad	0x3feeae442b0a252a              # double 0.95877273946931507
	.quad	0x3fe22e3f29a0dcac              # double 0.56814535265484301
	.quad	0x3fbffccb629a24b8              # double 0.12495108754423512
	.quad	0x3fef514301ed48f4              # double 0.97866964699122016
	.quad	0x3fc34c199a67aec0              # double 0.1507598880701746
	.quad	0x3fc6f9cd70c009f0              # double 0.17949836736086366
	.quad	0x3fde3a2621921766              # double 0.47229913023362824
	.quad	0x3fcd4167fb9c1338              # double 0.22855853829983075
	.quad	0x3fd7574448fe2b06              # double 0.3647013390370123
	.quad	0x3fdb6f3c02572b7e              # double 0.42866420963826346
	.quad	0x3fe6101f51fecbe2              # double 0.68946805968004932
	.quad	0x3fd35a7f92b49da2              # double 0.30239857985221807
	.quad	0x3fe6956dbcd0899c              # double 0.70574080350734247
	.quad	0x3fedd885e1610e7f              # double 0.93268102664337948
	.quad	0x3fe988d6dd0feb16              # double 0.79795401741225436
	.quad	0x3fedd381d600d752              # double 0.93206874654308991
	.quad	0x3fb224863040a778              # double 0.070869814663323427
	.quad	0x3fb11e8cfe2f78f8              # double 0.066872417504303061
	.quad	0x3fe4bd2316c3e668              # double 0.64808802076659067
	.quad	0x3fd0dce953bdecce              # double 0.26348336389464755
	.quad	0x3fe017c60573260e              # double 0.50290204109586667
	.quad	0x3fd9d6f66b148870              # double 0.40374527413417294
	.quad	0x3febed91b8911958              # double 0.87275014923288108
	.quad	0x3fe8455026c14a6e              # double 0.75846107072204716
	.quad	0x3fd60d55d57f78b0              # double 0.34456392144592041
	.quad	0x3fcc3197add0b1dc              # double 0.22026344286986344
	.quad	0x3fe943e64d41bf2c              # double 0.78953852738593388
	.quad	0x3fee07696b355b51              # double 0.93840475978036342
	.quad	0x3fe26865103ef595              # double 0.57524350331339014
	.quad	0x3fc3e0ab06a30218              # double 0.15529382537899106
	.quad	0x3fed9494c2d92a38              # double 0.92438734108265574
	.quad	0x3febb69999c8adf8              # double 0.86604003940504892
	.quad	0x3fe45ea93954e1f2              # double 0.63655530164311203
	.quad	0x3fd8a1dbc9ce95e6              # double 0.38487906177246456
	.quad	0x3fe97874fa513c45              # double 0.7959542168627044
	.quad	0x3fe97a825c757353              # double 0.79620473917348489
	.quad	0x3f9e1f9ae7d91500              # double 0.029417438889386638
	.quad	0x3fec37467e8ddb56              # double 0.88174748151400695
	.quad	0x3fd4e9562a773952              # double 0.32674173495333492
	.quad	0x3fd5a124ec4420ae              # double 0.33796046326507223
	.quad	0x3fdc50ff59b09e08              # double 0.44244369276791007
	.quad	0x3fe6b110a7bf04aa              # double 0.70911438715861164
	.quad	0x3fe9eb49b952160a              # double 0.80997167773665635
	.quad	0x3fd353f7f97ceffc              # double 0.30200003971162892
	.quad	0x3fa415819f6ed7c0              # double 0.039226580345185891
	.quad	0x3fe0c7752fa95bc3              # double 0.52434787091157664
	.quad	0x3f923a160b154ea0              # double 0.017799705912081465
	.quad	0x3fa0c9c3a3a1bfa0              # double 0.032789338802899026
	.quad	0x3fc0438d30f8ff18              # double 0.12706150904886537
	.quad	0x3feee39c29f39db4              # double 0.96528442567517069
	.quad	0x3fd42a427d9c098c              # double 0.31507932917170289
	.quad	0x3fedc69339653970              # double 0.93049012384453356
	.quad	0x3f86dbcb82bba740              # double 0.011161413123278785
	.quad	0x3fe9a8a91b6582e9              # double 0.80183844900974777
	.quad	0x3f813c7a2e73cc00              # double 0.0084161324907423563
	.quad	0x3feb77ce843ebe70              # double 0.85837484196777147
	.quad	0x3fe5b950f5024bfd              # double 0.67887161114992944
	.quad	0x3fe6d638c5b75e41              # double 0.71365011803113287
	.quad	0x3fe935f3179a9505              # double 0.78783564195751465
	.quad	0x3fe836619aec7488              # double 0.7566383386471367
	.quad	0x3fe236e7c1eadec5              # double 0.5692023074579643
	.quad	0x3fc9e94816aa4e44              # double 0.20243168932630529
	.quad	0x3fe1dfdc58018811              # double 0.55857674778622102
	.quad	0x3feaf339e1b50172              # double 0.84219068606766556
	.quad	0x3fd860a624902482              # double 0.3808989865361313
	.quad	0x3fe0130c5fa9bb30              # double 0.50232523616964464
	.quad	0x3fef8d7f08dd71d5              # double 0.98602248889397492
	.quad	0x3fe8524bcbeb0486              # double 0.76004590823880913
	.quad	0x3fee99cfd36b229e              # double 0.95627585690188588
	.quad	0x3fdbaf10916167b8              # double 0.43256010243714682
	.quad	0x3fe2218f18dca201              # double 0.56659655433492173
	.quad	0x3fe4bcf1c9daa6cb              # double 0.64806451248770125
	.quad	0x3fe639b30f5341d0              # double 0.69454339020927058
	.quad	0x3fd5f3be8b5c12ce              # double 0.34300197228757845
	.quad	0x3fd4edca344baafe              # double 0.32701354128828075
	.quad	0x3fe86eb6f1d7294d              # double 0.76351496920077866
	.quad	0x3fe13574c9963031              # double 0.53777541515728988
	.quad	0x3fc5cc758da84878              # double 0.17030209938872409
	.quad	0x3fec10a6db64a3d4              # double 0.87703268861980143
	.quad	0x3fefa0cde4171663              # double 0.98837942646850895
	.quad	0x3fab2ad2861bcfc0              # double 0.053061083670314257
	.quad	0x3fd4cdda849c9a42              # double 0.32506430578579082
	.quad	0x3fe91fd4572d1c2e              # double 0.78513543154338605
	.quad	0x3feaa9710eed352f              # double 0.83318379321432257
	.quad	0x3fa75f9d3af0c6f0              # double 0.045651353306665032
	.quad	0x3fdb3dec33d860ea              # double 0.42565445960054993
	.quad	0x3fe8c1bbad08fb09              # double 0.77364906116403731
	.quad	0x3fe6a1367fa6b934              # double 0.70717930728804967
	.quad	0x3feaa457e2791969              # double 0.83256143792168047
	.quad	0x3fe34e86633e5943              # double 0.60333556540971534
	.quad	0x3fe812c7cdc9a83c              # double 0.752292539528987
	.quad	0x3fe3d61c1885e532              # double 0.61988644399312975
	.quad	0x3fef4cf6156d1824              # double 0.9781446856002316
	.quad	0x3fe5480d4d5660c5              # double 0.66504540543521584
	.quad	0x3fcdf4a5e752f714              # double 0.23402856631394597
	.quad	0x3fe92ac3d157bae1              # double 0.78647032630200553
	.quad	0x3fc5a16e1d3bdf28              # double 0.16898895671305891
	.quad	0x3fee78c495fa3162              # double 0.952242176937528
	.quad	0x3fdac244c8629a30              # double 0.41810721939910689
	.quad	0x3f958f27c8f72260              # double 0.021053907051994947
	.quad	0x3fe5ebf622ee2a3a              # double 0.68505389044123111
	.quad	0x3fd3e6993a5109a0              # double 0.31094961829162493
	.quad	0x3fe01c253283a698              # double 0.5034357058149963
	.quad	0x3fd80e77a955f314              # double 0.37588302170461074
	.quad	0x3fe79d20a8e8e978              # double 0.73793061247060532
	.quad	0x3fc8c57c3b2c3998              # double 0.19352677239699001
	.quad	0x3fc8139fd728de04              # double 0.18809888845292744
	.quad	0x3fd109909249b876              # double 0.26620878492293032
	.quad	0x3fe4eb6d8265241c              # double 0.65373874156751155
	.quad	0x3fe90e3b316a75d5              # double 0.78298720981154679
	.quad	0x3fe7ca1aa202aed2              # double 0.74342090265914806
	.quad	0x3fe0ec3e2bbeb6c9              # double 0.52883823913517702
	.quad	0x3fb5ab4a1978c598              # double 0.084644919604008328
	.quad	0x3fcade1189e6647c              # double 0.20990199311635027
	.quad	0x3fd0dec4e416e062              # double 0.26359674715377512
	.quad	0x3f8f60651a0eddc0              # double 0.015320577485779974
	.quad	0x3fc6f4f019109e30              # double 0.17934991096375219
	.quad	0x3febb478fcee5a02              # double 0.86578034782979807
	.quad	0x3fdba22d975180a4              # double 0.43177356507477271
	.quad	0x3fc4010db001e360              # double 0.15628214925871031
	.quad	0x3fd890689c6bd806              # double 0.38381400371088181
	.quad	0x3feb9a7449089b3e              # double 0.86260427727106737
	.quad	0x3fce51ff2588dc24              # double 0.23687733967537483
	.quad	0x3fc79cadf4cf7b2c              # double 0.18446897939335238
	.quad	0x3fe5d5f5f37282a8              # double 0.68236825512220367
	.quad	0x3fe8b843f5a29ef3              # double 0.77249334312088391
	.quad	0x3fe950d8e4b05926              # double 0.79111904779236819
	.quad	0x3fd6a05d250fd0ee              # double 0.35353783244433046
	.quad	0x3fde48ecf15d3c7a              # double 0.4732010228225999
	.quad	0x3fe188f6306ecdcc              # double 0.54796895465408957
	.quad	0x3fde528ce2186dc6              # double 0.47378847198134755
	.quad	0x3fe5c583b3eb294c              # double 0.68036065235473009
	.quad	0x3fe431fa3ffd7a12              # double 0.63110077379298191
	.quad	0x3fe47c034b60b2e9              # double 0.64013828966343767
	.quad	0x3fde4e3d30001d54              # double 0.47352533042472555
	.quad	0x3fa891621064b6f0              # double 0.047984184743070091
	.quad	0x3fea0a7f72b55df8              # double 0.81378147510525789
	.quad	0x3fdf070a88e3e8d8              # double 0.48480475776854126
	.quad	0x3f874e92e44e7c00              # double 0.01138033637272251
	.quad	0x3fe8e2f00c49d266              # double 0.77770235443183533
	.quad	0x3fe3ccc8afdc5248              # double 0.61874803874759099
	.quad	0x3fbfdee1489b39a0              # double 0.12449462912193221
	.quad	0x3fdaba5cad9af414              # double 0.41762463525430005
	.quad	0x3fd2f6cfa47ca9ca              # double 0.29631415427379848
	.quad	0x3fbdb74abd891bc0              # double 0.11607806327184189
	.quad	0x3fdeb4b3d4d2c038              # double 0.47977920325775214
	.quad	0x3fe84b805541f039              # double 0.75921646739835247
	.quad	0x3fb2fef003ca5180              # double 0.0742025384191205
	.quad	0x3fe043156aaefe2d              # double 0.50818892323144882
	.quad	0x3fd7f5a49fbf16ba              # double 0.37436786270368894
	.quad	0x3fdecebc856c7ac4              # double 0.48136818914091983
	.quad	0x3fefd5b0489b1e95              # double 0.99483503514143711
	.quad	0x3fdb4c2c47e354de              # double 0.42652422924341049
	.quad	0x3fd97009c19512e2              # double 0.397463263554796
	.quad	0x3fc0ba21ac9197fc              # double 0.13068028379637997
	.quad	0x3fe5b21c314ce98c              # double 0.67799195889465258
	.quad	0x3fe547b289220258              # double 0.66500212463149477
	.quad	0x3fc7e84f2169519c              # double 0.18677701121727075
	.quad	0x3f9148263622e440              # double 0.016876790098397487
	.quad	0x3fb69cbf7a7b2c50              # double 0.088329284098265903
	.quad	0x3fe41fd6ba569ecc              # double 0.62888656992159886
	.quad	0x3fd62b97692ea502              # double 0.3464106108827566
	.quad	0x3fc685df7b5f56d0              # double 0.175960479011954
	.quad	0x3fcb230910d1af9c              # double 0.21200669594997812
	.quad	0x3feed3e37b450f15              # double 0.96336530758023519
	.quad	0x3fd774db7206e862              # double 0.36650739798972698
	.quad	0x3fe4ab71117791db              # double 0.64592793857132891
	.quad	0x3fec9226b4fc21a4              # double 0.89284072254763602
	.quad	0x3fe829d098a1cdc4              # double 0.75510434924074631
	.quad	0x3fe02bde1528caff              # double 0.50535492069897703
	.quad	0x3fd95b1282a9c602              # double 0.39618361244274081
	.quad	0x3fea80974943652d              # double 0.82819713887434931
	.quad	0x3fed51b9a7f82136              # double 0.9162262230538889
	.quad	0x3fe2fe0afbe7ac59              # double 0.59351109695615911
	.quad	0x3fb20265a6164690              # double 0.070349076317393733
	.quad	0x3fe373b499970606              # double 0.60787420270952519
	.quad	0x3fdc945c273281e6              # double 0.44655517413960266
	.quad	0x3fdd9216648af8f8              # double 0.46204147165907683
	.quad	0x3fedc0313bea8b06              # double 0.92971097662334112
	.quad	0x3fefc36593e7cea9              # double 0.99260214698593529
	.quad	0x3fea0066c5543e58              # double 0.81254900494418347
	.quad	0x3fe3ab1d11ca37cd              # double 0.61463788485138482
	.quad	0x3fd11d4bc0ee22de              # double 0.26741308060495139
	.quad	0x3fcefecd29ec3d90              # double 0.24215092226993962
	.quad	0x3f92a3aef4e879a0              # double 0.018202527711872585
	.quad	0x3fd4a68130ebb29c              # double 0.32266263749515089
	.quad	0x3fcd0c8d500be640              # double 0.22694555672187455
	.quad	0x3fe4416edaf18cc3              # double 0.63298743021405135
	.quad	0x3fe0ac4d32ca341e              # double 0.5210329048146638
	.quad	0x3fccf2698ea678a0              # double 0.22614783730836496
	.quad	0x3fe1690c7feb1134              # double 0.54407334312467137
	.quad	0x3fef01e5cb9a0abc              # double 0.96898164525949637
	.quad	0x3fdd24d52f6c557e              # double 0.45537309294862627
	.quad	0x3fd5c5e29fe8a2b8              # double 0.34020295730673977
	.quad	0x3fc5d2a4ffc17528              # double 0.17049086082526199
	.quad	0x3fc5c2456e2d4e60              # double 0.16999118690238202
	.quad	0x3fe1d5ba495a635d              # double 0.55733980490468193
	.quad	0x3fd22751987a1dd0              # double 0.28364982500394564
	.quad	0x3fe8957f69784669              # double 0.76824923133444856
	.quad	0x3fe93238461e0065              # double 0.78738034910930976
	.quad	0x3fed0dc88a40a01f              # double 0.90793253900938342
	.quad	0x3fdc0c51469d29be              # double 0.43825179954424331
	.quad	0x3f828fc018cb1cc0              # double 0.0090632445875499234
	.quad	0x3fe0fa12a70cab7a              # double 0.53052647234777273
	.quad	0x3fed24af3ff96605              # double 0.91072809691394296
	.quad	0x3fe3b62110681d60              # double 0.61598256306107757
	.quad	0x3fe55479e28f4b47              # double 0.66656202554654775
	.quad	0x3fd847c8a21bf160              # double 0.37938133078548297
	.quad	0x3f893a02557f2500              # double 0.012317674860144567
	.quad	0x3fdb203ac97c522a              # double 0.42384214092570238
	.quad	0x3fe08227af9b836f              # double 0.51588806436858003
	.quad	0x3fe4448aa449d54c              # double 0.63336689078884367
	.quad	0x3fd5acd16c023580              # double 0.33867297694890652
	.quad	0x3fe57ff1b8aebaec              # double 0.67186819144066368
	.quad	0x3fe725186e2433a1              # double 0.72327825080866515
	.quad	0x3fe38ee99cc47f9a              # double 0.61119537943521896
	.quad	0x3fe1006d7ce2a3c3              # double 0.53130220786726345
	.quad	0x3fbcf4eaa00e5100              # double 0.11311212928405112
	.quad	0x3fe5245336feea79              # double 0.66068421117172627
	.quad	0x3fba31717f6578a0              # double 0.10231694565070137
	.quad	0x3fe28c4f6521222d              # double 0.57962770225373605
	.quad	0x3febdd54129941e8              # double 0.87076762802649643
	.quad	0x3fe25f244ecca095              # double 0.57411399260037632
	.quad	0x3fe25a50a4533d8b              # double 0.57352478117711436
	.quad	0x3fef2d5b4fba3661              # double 0.97428670474773693
	.quad	0x3fd9c94b9b0476c2              # double 0.40291109217092125
	.quad	0x3feed116f8a79041              # double 0.96302364888516234
	.quad	0x3fc7b954126b61fc              # double 0.18534327411067852
	.quad	0x3fea59cd08e34370              # double 0.8234620259846519
	.quad	0x3fed4a8aaecdc79f              # double 0.91534933225033288
	.quad	0x3fe270c4e786a031              # double 0.57626576633356852
	.quad	0x3fe96a1a6e4d6b06              # double 0.79420205634537022
	.quad	0x3fd14a155a5d3b72              # double 0.27014669251086965
	.quad	0x3fc8ef211e140104              # double 0.1947976490846558
	.quad	0x3fc0e517fcde5f18              # double 0.1319913849554204
	.quad	0x3fc714b970c84fec              # double 0.18031995779949683
	.quad	0x3fdb393ded4578dc              # double 0.42536876841576343
	.quad	0x3fb30344d6fe3ce8              # double 0.074268629540018005
	.quad	0x3fe92e7fd86bec75              # double 0.78692619581069201
	.quad	0x3febd05d8bf976ec              # double 0.86918523157848204
	.quad	0x3fd337df35d3563a              # double 0.30028515106582498
	.quad	0x3fd54010e1167afc              # double 0.33203527432662816
	.quad	0x3fea7f72264fc81c              # double 0.82805736048453892
	.quad	0x3fd5f01878aa7cce              # double 0.34277927192483737
	.quad	0x3fd851ddbaf09c32              # double 0.37999671226356491
	.quad	0x3fe5362fd7b3e2dc              # double 0.66286460999898678
	.quad	0x3feacd5ac4b8f83b              # double 0.83756769583101887
	.quad	0x3fe85404838a390c              # double 0.76025605861085088
	.quad	0x3feac39d5cb42fa2              # double 0.8363787470457178
	.quad	0x3fc663163cf566d0              # double 0.17489889122480529
	.quad	0x3fc57e8be596d880              # double 0.16792439184581909
	.quad	0x3fc3654634d60588              # double 0.15152814464458353
	.quad	0x3febf04a0b3670df              # double 0.87308218183491337
	.quad	0x3fedc994ec1e7d3a              # double 0.93085714451800716
	.quad	0x3fd9495eda2e0c86              # double 0.39510318094853181
	.quad	0x3fef4e7b969c0b7d              # double 0.97833041587760727
	.quad	0x3fc6a1259a330cb8              # double 0.17679281262653546
	.quad	0x3fd7f708b841911e              # double 0.3744527625442674
	.quad	0x3fe9510073a83f1b              # double 0.79113791074084661
	.quad	0x3fe94b16f4a43537              # double 0.79041621953516639
	.quad	0x3fdf37d33a7f05b8              # double 0.48778229439275433
	.quad	0x3fd6abdfa0c2e59c              # double 0.35424032878253242
	.quad	0x3fd2feac94a79bbc              # double 0.29679407612860209
	.quad	0x3fe95d1d0e7f7944              # double 0.79261639434461317
	.quad	0x3fe00eb8c0532a48              # double 0.50179708064508421
	.quad	0x3fe0d036190f3642              # double 0.52541642088335316
	.quad	0x3fe8fb677183f945              # double 0.7806889741039319
	.quad	0x3feda0ddb1d7fbfa              # double 0.9258869622716468
	.quad	0x3fdeba6522ab450e              # double 0.4801266516270325
	.quad	0x3fe4276ac4cec932              # double 0.62981165350928436
	.quad	0x3fef4f9e10892c64              # double 0.97846892575888633
	.quad	0x3fe34efffc535e08              # double 0.60339354784349641
	.quad	0x3fea7678095991c8              # double 0.8269615347494943
	.quad	0x3fe5e53c1baddfd8              # double 0.68423276334851391
	.quad	0x3fe92788b9d2641b              # double 0.7860759381611645
	.quad	0x3fb9bead121e58e0              # double 0.10056573574397332
	.quad	0x3fd2826ede30c096              # double 0.28921100328717253
	.quad	0x3fbb32bcc2318fa8              # double 0.10624294034056325
	.quad	0x3fe5a90c37da9ba5              # double 0.67688570889446409
	.quad	0x3fefb040f48b30f7              # double 0.99026534807629118
	.quad	0x3fb967822217b830              # double 0.099235661815072928
	.quad	0x3fe2be6a7f60b3b9              # double 0.58574414137330344
	.quad	0x3fc410d7cb0f8dec              # double 0.156764005804788
	.quad	0x3fe261c747a92864              # double 0.57443584438557282
	.quad	0x3fe522551e01219c              # double 0.66044097767103294
	.quad	0x3fdfa8a62e4a2138              # double 0.49466852684465179
	.quad	0x3fe3a855070cdfe9              # double 0.61429835679063871
	.quad	0x3fc1c1f9d09bd304              # double 0.13873217283221362
	.quad	0x3fd89e7fb26fbef8              # double 0.38467400002899366
	.quad	0x3fd837cced587990              # double 0.37840579202920654
	.quad	0x3fcf8f2ec774fc44              # double 0.24655709017858574
	.quad	0x3fb065a22d24ca88              # double 0.064050804158606423
	.quad	0x3fdb05f9fd04d320              # double 0.42223977764960985
	.quad	0x3fce2468b0425b04              # double 0.23548611265569985
	.quad	0x3fec337b81a8877e              # double 0.88128447841539503
	.quad	0x3fde6370deaa4de6              # double 0.47481939072278434
	.quad	0x3fe6c89d013d69ed              # double 0.71198892824332705
	.quad	0x3fa75a8f95bda0f0              # double 0.045612799672030024
	.quad	0x3fed9afb5104587e              # double 0.925168665157585
	.quad	0x3fbaa8bdbc31a820              # double 0.1041372856576861
	.quad	0x3fce87b7508615b8              # double 0.23851672584366468
	.quad	0x3fea324fba893d5d              # double 0.81864153321104605
	.quad	0x3fefa906239440b1              # double 0.9893828101067098
	.quad	0x3fc6608ba5ee3e8c              # double 0.17482133485872386
	.quad	0x3fe7e7ce2d9f07c0              # double 0.74704655561821909
	.quad	0x3fdc6ad97274d0b8              # double 0.44402156998991016
	.quad	0x3fe6d94d9647e91d              # double 0.71402625419367249
	.quad	0x3fec017454c63c81              # double 0.87517754132740333
	.quad	0x3fcf3980628251b0              # double 0.2439423066140427
	.quad	0x3fdc96fcac8736fa              # double 0.44671551559882483
	.quad	0x3fe0db3852fb5136              # double 0.52676025588383513
	.quad	0x3fd30800bb76aed2              # double 0.2973634558390873
	.quad	0x3fe4e266bc6a46a1              # double 0.65263687896568368
	.quad	0x3fc04c8c0318b150              # double 0.1273360266799366
	.quad	0x3feb0617a7ad4a33              # double 0.84449370145222813
	.quad	0x3fcb9fcf135e4390              # double 0.21581448026384153
	.quad	0x3fe036189b38eb7a              # double 0.50660353009094128
	.quad	0x3fdf7699fcb86044              # double 0.49161386184414746
	.quad	0x3fd8747bfa167fd6              # double 0.38210963652272534
	.quad	0x3fd5c19b14fa83e4              # double 0.33994175957383121
	.quad	0x3fcdf9eeddb20f04              # double 0.23418985199906939
	.quad	0x3fde750f28d3f120              # double 0.47589472758387963
	.quad	0x3fbd1311b401cdd0              # double 0.11357222218230523
	.quad	0x3fa9827a7adcd8e0              # double 0.049823596475492726
	.quad	0x3fd67e44555dc40c              # double 0.35145672165441577
	.quad	0x3fc4089e5d84d594              # double 0.15651301924087291
	.quad	0x3fe6528a6ecad754              # double 0.69757577551966188
	.quad	0x3feb65d0a47ac14e              # double 0.8561785900583716
	.quad	0x3fec43a1cbf7a727              # double 0.88325586163884828
	.quad	0x3fabef5351831040              # double 0.054560283374968765
	.quad	0x3fe7bd04de5745d8              # double 0.74182361055334933
	.quad	0x3fd083a8a36fad04              # double 0.25803581200189307
	.quad	0x3fc484569e57d974              # double 0.16028864604568194
	.quad	0x3fba4a7f430e1e20              # double 0.10269923579300455
	.quad	0x3fef5e182e1dee89              # double 0.98023613936625608
	.quad	0x3fed247456e9c4a3              # double 0.91070000624872127
	.quad	0x3fcffd9e639774b0              # double 0.24992732870933798
	.quad	0x3fe3cec025e13a4c              # double 0.61898810766599288
	.quad	0x3fec41871a59ac20              # double 0.88299899241008361
	.quad	0x3fdb32730d05318a              # double 0.42495418807518404
	.quad	0x3febb0ac68028151              # double 0.86531658472453377
	.quad	0x3fdeff5f3ddb0d0a              # double 0.48433667221634435
	.quad	0x3fe6d5477eae0153              # double 0.71353506796007549
	.quad	0x3fe05b0bd082f30e              # double 0.51111403202921379
	.quad	0x3fedc249eb5788bb              # double 0.92996688809605332
	.quad	0x3fe00dd633b7ccb6              # double 0.50168905354657656
	.quad	0x3fe59b618ac3ba8a              # double 0.67521741011098979
	.quad	0x3fecc51c99a5f9af              # double 0.89906148919526696
	.quad	0x3fd4b2ebca940fec              # double 0.32342047484439607
	.quad	0x3fe7b9be9774d532              # double 0.74142388898204659
	.quad	0x3fd57f465dc30160              # double 0.33589324146671196
	.quad	0x3f63702392d66300              # double 0.0023728079601820218
	.quad	0x3fef5e436010e6ec              # double 0.98025673640151245
	.quad	0x3fe1edd5c371ba4f              # double 0.56028259442047978
	.quad	0x3feb7474b694c252              # double 0.85796580944413336
	.quad	0x3fe33f4d5b303b9d              # double 0.6014773160003305
	.quad	0x3fdc6ce2e18c2ba4              # double 0.44414588953139345
	.quad	0x3fd5150327ac28e6              # double 0.32940749048488127
	.quad	0x3fe9b2bbfe6e1ddf              # double 0.80306815808665621
	.quad	0x3fe34b943ecdba8f              # double 0.60297596231778694
	.quad	0x3fe8d1448be1b191              # double 0.77554538078907076
	.quad	0x3fb779eb38666218              # double 0.09170408369971772
	.quad	0x3fc22df6064738a4              # double 0.14202761942437292
	.quad	0x3fda9ade50e33792              # double 0.41570241831947741
	.quad	0x3fc1fe845c1ddbd0              # double 0.14057974336512169
	.quad	0x3fe1ef1ac5911f37              # double 0.56043757045060871
	.quad	0x3fdbd86408593550              # double 0.43508244338302848
	.quad	0x3fd1d44614562f9c              # double 0.27858116136553135
	.quad	0x3fed7d28a2248152              # double 0.92152816456295228
	.quad	0x3fece8c9f8781a8e              # double 0.90341661957866548
	.quad	0x3fc6414e59930500              # double 0.1738679826139915
	.quad	0x3fd331a301a27bea              # double 0.29990458640707962
	.quad	0x3fc2c32d21e7fd80              # double 0.14658130794121504
	.quad	0x3fba5d0e7d91f0a0              # double 0.10298243108440142
	.quad	0x3fc4e3b463360a08              # double 0.16319899410525829
	.quad	0x3fc5a988ce4fbc10              # double 0.16923627923776552
	.quad	0x3faff03491f67fe0              # double 0.062379496400580825
	.quad	0x3fdcc84c7c9f62a8              # double 0.44972526712585159
	.quad	0x3fb71faf6bf48fa8              # double 0.090327228409079141
	.quad	0x3fddcb6a89a4f5f4              # double 0.46554053727945122
	.quad	0x3fe0a5979a2ef555              # double 0.52021389116240846
	.quad	0x3fe0690daf3f3d1e              # double 0.51282390811858014
	.quad	0x3fd0991eb58590c8              # double 0.2593457005189177
	.quad	0x3fed5a3a07fbac29              # double 0.91726399954985027
	.quad	0x3fd4a86f7fc629aa              # double 0.32278048971115914
	.quad	0x3fc68408f32ba4ec              # double 0.17590438722189761
	.quad	0x3fe22dc9adcea994              # double 0.56808933207257661
	.quad	0x3fb44deb7e58eea0              # double 0.079313963266879117
	.quad	0x3fd6b72db75b75e8              # double 0.35493033319457234
	.quad	0x3fd5673ab4e79e0c              # double 0.33442561785202041
	.quad	0x3fea360553e586d3              # double 0.81909433733036463
	.quad	0x3fe99467622d3807              # double 0.79936570334553003
	.quad	0x3f9c7c160bd9d920              # double 0.027817100976300968
	.quad	0x3fb82c5c188045a0              # double 0.094426876050667463
	.quad	0x3fe03aa41e12d306              # double 0.50715833543526467
	.quad	0x3fea20995bdc610a              # double 0.81647937718938235
	.quad	0x3fd142b89dd1a262              # double 0.26969733631134407
	.quad	0x3fd61ba103ae8d20              # double 0.34543633803896689
	.quad	0x3fd40035e5898240              # double 0.31251284995781603
	.quad	0x3fc9c6438c1e63f4              # double 0.20136303273901002
	.quad	0x3fdebaad88440c9c              # double 0.48014391238411647
	.quad	0x3fe5e4b33f23979a              # double 0.68416750270693005
	.quad	0x3fc6dc2f2ea38df8              # double 0.17859449174203212
	.quad	0x3fd9f4e6febc5d64              # double 0.40557265163939449
	.quad	0x3fe1310b1f928dcf              # double 0.53723674932956011
	.quad	0x3fe9b54dfd4bbc9a              # double 0.8033819148239616
	.quad	0x3fd0e0b3e8fa2edc              # double 0.2637147689026571
	.quad	0x3feacfb2ed4cd15f              # double 0.83785387370748399
	.quad	0x3fba8b3404e5c708              # double 0.10368657226151978
	.quad	0x3feba2fbad04d376              # double 0.86364539902443371
	.quad	0x3fe2af8e476e1a7f              # double 0.58393014861287884
	.quad	0x3f97922b2518efc0              # double 0.023018526210065948
	.quad	0x3fe32ecd97e4fc39              # double 0.59946326891793611
	.quad	0x3fd90c839d2cd38c              # double 0.39138880108958385
	.quad	0x3fe67e29de8b4e3e              # double 0.70290082421929134
	.quad	0x3fb0599e1eeed7c0              # double 0.063867456962582558
	.quad	0x3fd18eb664b19db6              # double 0.2743354781473174
	.quad	0x3fe83f10ad7b3660              # double 0.75769838221613028
	.quad	0x3feb588215b5846b              # double 0.85455421676682641
	.quad	0x3fde2ced372842f8              # double 0.47149210344745951
	.quad	0x3fe2708af70ebfaf              # double 0.57623813870849527
	.quad	0x3fefbfbedae90573              # double 0.99215643649965412
	.quad	0x3fef7ebc1e929c2f              # double 0.98422056170682548
	.quad	0x3fb02657b9899fe8              # double 0.06308506278730841
	.quad	0x3fd2ef5dfab56954              # double 0.29585980876222107
	.quad	0x3fe405fd030be0a7              # double 0.62573099703788138
	.quad	0x3fc08fa813f6509c              # double 0.12938405012812815
	.quad	0x3fe80d6725abccc4              # double 0.75163609845767398
	.quad	0x3fec8cb9b4b3c657              # double 0.89217839520842801
	.quad	0x3fe47aac6906af7e              # double 0.63997478974259514
	.quad	0x3fd2acce79fca692              # double 0.29179727471146422
	.quad	0x3fe4e9bc674adc0a              # double 0.65353222059536731
	.quad	0x3fe510c6a70f4bfa              # double 0.65829784993036289
	.quad	0x3fe15d8e64487dc9              # double 0.54267043673092374
	.quad	0x3fed2b607aed72a0              # double 0.91154502877505549
	.quad	0x3fc28d3b1cbecee0              # double 0.14493502524930246
	.quad	0x3fdb9a1df09a466a              # double 0.43128155227996123
	.quad	0x3fca35b776cadd38              # double 0.20476430225765241
	.quad	0x3fcc03c435f40994              # double 0.21886494287907665
	.quad	0x3fd663ffb5acdf02              # double 0.34985344640470839
	.quad	0x3fdbdb2438eecaca              # double 0.4352503353103826
	.quad	0x3fe1826da00e5616              # double 0.54717141400277813
	.quad	0x3fed3259a25a8257              # double 0.91239625653913492
	.quad	0x3fde4632723d0c04              # double 0.47303448825931604
	.quad	0x3fd9d5ed8edc75a8              # double 0.40368212653433
	.quad	0x3fee03e0a38164fe              # double 0.93797332701356573
	.quad	0x3fd1992cb3cea776              # double 0.27497403678227472
	.quad	0x3fb93af5a4a8ca80              # double 0.098555901241335064
	.quad	0x3fe7eb0ed1ed8740              # double 0.74744359017879702
	.quad	0x3fec0917ad9a0bfb              # double 0.87610992342558747
	.quad	0x3fedd226b009c2ce              # double 0.93190321333357828
	.quad	0x3fdfa51b2a32a748              # double 0.49445227738271003
	.quad	0x3febbf67a0e28e1d              # double 0.86711484358642432
	.quad	0x3fe766650060944a              # double 0.73124933313068508
	.quad	0x3fdcd8bc8844ff58              # double 0.45072854335375245
	.quad	0x3fed5a03385f7b01              # double 0.91723786363931492
	.quad	0x3fe691289a18e53d              # double 0.70521955582731943
	.quad	0x3fcd35a239221640              # double 0.22819927015022934
	.quad	0x3fe453c4d4b15cf1              # double 0.6352256921917655
	.quad	0x3fe7ba58835a109a              # double 0.74149728445674445
	.quad	0x3fe3d6a6b44f743d              # double 0.61995253769749292
	.quad	0x3fddb5fa62a8b8c8              # double 0.46423205980944404
	.quad	0x3fd70d79826854fa              # double 0.36019742713081337
	.quad	0x3fe1da326e846912              # double 0.55788537583728925
	.quad	0x3fd0721f40eff3a2              # double 0.25696545926603609
	.quad	0x3fee231425c656a7              # double 0.941782068041637
	.quad	0x3fe81be88d43a704              # double 0.75340678778340519
	.quad	0x3fc7649e71ee67a0              # double 0.18275814593363027
	.quad	0x3f9453c8560720a0              # double 0.019850855112765076
	.quad	0x3fe962ca0b2ec944              # double 0.79330923256046803
	.quad	0x3fa6da16e3c015c0              # double 0.044632640172533211
	.quad	0x3fd4da29c24538ec              # double 0.32581562015265209
	.quad	0x3fe4c6ca6056a71f              # double 0.64926642242537358
	.quad	0x3fd9585fd08a03b4              # double 0.39601893773220387
	.quad	0x3fedda5fa7bfd25a              # double 0.93290694011245567
	.quad	0x3fcbfb441a052b28              # double 0.21860553045765951
	.quad	0x3fd90fc5cd2dd07c              # double 0.39158768689163259
	.quad	0x3fe481484e5e0217              # double 0.64078154855821168
	.quad	0x3fe558a0f5bc1931              # double 0.66706893916197008
	.quad	0x3f94d428bee80d60              # double 0.0203405729789784
	.quad	0x3fe16070708ac693              # double 0.54302236538770143
	.quad	0x3fc9f40380ddcd44              # double 0.20275920669846859
	.quad	0x3fb18450046749b0              # double 0.068425179553094351
	.quad	0x3fe4165163396faa              # double 0.62772435550458749
	.quad	0x3fefc5ae39d7c59a              # double 0.99288092896874791
	.quad	0x3fb471e8c53a3aa8              # double 0.079863117362246272
	.quad	0x3fb8d9e875472368              # double 0.09707501281003561
	.quad	0x3feaa42b7a81f836              # double 0.83254026343616405
	.quad	0x3fde87312ab1f860              # double 0.47700146836712598
	.quad	0x3fb8d63387b3bb48              # double 0.097018452291860346
	.quad	0x3fe79c05c34dac97              # double 0.73779571671674915
	.quad	0x3f811371fb9a1940              # double 0.0083378701122113207
	.quad	0x3fe3b8fb18e171ef              # double 0.61633066997052122
	.quad	0x3fc74f19b7d5c1d4              # double 0.18210145450895132
	.quad	0x3fed7453d8b72b82              # double 0.9204501373982199
	.quad	0x3fd8af98f463b8cc              # double 0.38571761957326767
	.quad	0x3fd63afda586f130              # double 0.34735051312215415
	.quad	0x3fe2475f76d0bbdd              # double 0.57121251302839549
	.quad	0x3feb199f7e780559              # double 0.84687781048721
	.quad	0x3fdfabdf9a596a7a              # double 0.49486532281085938
	.quad	0x3fcebab93194e2f0              # double 0.24007334633804289
	.quad	0x3fc8d7a61bc74c38              # double 0.19408108097431565
	.quad	0x3fb7ea2f63b31238              # double 0.093417131272027443
	.quad	0x3fef6ff2da305bf2              # double 0.9824156056882869
	.quad	0x3fb969c37def2cb0              # double 0.099270075078652153
	.quad	0x3fd7127354f2f992              # double 0.36050113006413043
	.quad	0x3fd1169c3a743800              # double 0.26700502117535052
	.quad	0x3fd99dd9eed2a318              # double 0.40025947878398105
	.quad	0x3fc3704806e1e5b8              # double 0.15186405502372025
	.quad	0x3fd41ebb9221d656              # double 0.31437577505798708
	.quad	0x3fedecdcefaf5d05              # double 0.93516394437293171
	.quad	0x3fb5ac7d73cc47d0              # double 0.084663239260662992
	.quad	0x3fc8e1ee00514b64              # double 0.19439482703691191
	.quad	0x3fa461901614ece0              # double 0.03980684537460788
	.quad	0x3fee599900a3635d              # double 0.94843721508651024
	.quad	0x3fd1961c91cab5b2              # double 0.27478708493694193
	.quad	0x3fedfb9d2f9fee92              # double 0.93696460057931774
	.quad	0x3feb4c65203f0ccf              # double 0.85307556436637266
	.quad	0x3fd7ac581d5696f6              # double 0.36989405503332706
	.quad	0x3fe63e430fecaac2              # double 0.69510033712625607
	.quad	0x3fe4844bb50328fd              # double 0.64114938119863008
	.quad	0x3fcc6c59b9199a08              # double 0.22205659425817736
	.quad	0x3fed3716c577b168              # double 0.91297472541695601
	.quad	0x3f9bb3dc2b1d0fe0              # double 0.027053299075546877
	.quad	0x3fcacd9805060d5c              # double 0.20939922566695202
	.quad	0x3fc711615bcc17a0              # double 0.18021790487563027
	.quad	0x3fe573ea7499f01b              # double 0.67039988301940256
	.quad	0x3fe00b09028b758d              # double 0.50134706971191323
	.quad	0x3fef301a677bcdae              # double 0.97462196551935221
	.quad	0x3fd708c918dd01f2              # double 0.35991122654016217
	.quad	0x3fd3ab58734cca6a              # double 0.30733309993516988
	.quad	0x3fd02585b8915000              # double 0.25229018234426803
	.quad	0x3fe1fc197b98ead0              # double 0.56202386989692776
	.quad	0x3f90308aea607a80              # double 0.015810175471524079
	.quad	0x3fe501129d971c46              # double 0.65638094691610926
	.quad	0x3fe7410c6527b64c              # double 0.72669048077450205
	.quad	0x3fd9a96f9cc48d18              # double 0.40096655186990082
	.quad	0x3fecff50800833b5              # double 0.90616631513841261
	.quad	0x3fe53b5cae511b31              # double 0.66349634214643605
	.quad	0x3fbd6f01ad29b020              # double 0.11497507550819863
	.quad	0x3feb14d10debc224              # double 0.84629109114581924
	.quad	0x3fb3348742c874a0              # double 0.075020269207430434
	.quad	0x3fe59d6a681bce9b              # double 0.67546577771868799
	.quad	0x3fea0c01b7e8ecef              # double 0.81396566314597674
	.quad	0x3fdb1baa7fab8600              # double 0.42356359927916287
	.quad	0x3fe7822125a5520e              # double 0.73463494637195637
	.quad	0x3fef8d859058c181              # double 0.98602560227122648
	.quad	0x3fd335248a3b9af6              # double 0.30011857508945583
	.quad	0x3fc610d6a85800f0              # double 0.17238887042913786
	.quad	0x3fe828e1068b214f              # double 0.75499011304877139
	.quad	0x3fee1ac4352caa53              # double 0.94076738725318376
	.quad	0x3fb597239d7a6a40              # double 0.084337449976751522
	.quad	0x3fee94d2d717f449              # double 0.95566694269621977
	.quad	0x3fef5f79ad9420c6              # double 0.9804047002990266
	.quad	0x3fee9b206c4df296              # double 0.95643635895938206
	.quad	0x3fdd1faabbd2453a              # double 0.45505779592447804
	.quad	0x3fe885223e8fe115              # double 0.76625168055673731
	.quad	0x3fe497feded28e6a              # double 0.64355414886490547
	.quad	0x3fe3f340f1eaa340              # double 0.62344405412031989
	.quad	0x3fe8efd267580602              # double 0.77927513298362805
	.quad	0x3fc803505444f750              # double 0.18760112871853574
	.quad	0x3fe43b36c3bfa902              # double 0.63222826225435846
	.quad	0x3fdcdebc030bbafa              # double 0.45109463021701368
	.quad	0x3fdf112058a93422              # double 0.48542030962272709
	.quad	0x3fa0aa956f0fffc0              # double 0.032551450545724503
	.quad	0x3fe0b37ec7c1c63d              # double 0.52191103949571238
	.quad	0x3fe8731d1d33af34              # double 0.76405196860785062
	.quad	0x3fe88e8bc5bc2bb3              # double 0.76740063305020667
	.quad	0x3fedaf7feaf989ca              # double 0.92767330068118636
	.quad	0x3fbca877afd0a4c8              # double 0.11194561045035123
	.quad	0x3fc06856097b4b44              # double 0.12818408453912344
	.quad	0x3fd7475114f4f02e              # double 0.36372782751618871
	.quad	0x3fe68711a43539d7              # double 0.70398790428026359
	.quad	0x3fd24c30e3bc8bb0              # double 0.28590032806294641
	.quad	0x3fe1c1942ac5fd47              # double 0.55488022188357256
	.quad	0x3fdda7f9cf550f66              # double 0.46337743041316626
	.quad	0x3fe1c30f3f93e063              # double 0.55506098191746067
	.quad	0x3fbbc09678ed8600              # double 0.10840740635241986
	.quad	0x3fe79bbb81281bc7              # double 0.73776030755913602
	.quad	0x3fd0495660b87a44              # double 0.2544761604821455
	.quad	0x3fd3a193528aa2a2              # double 0.30673678456018127
	.quad	0x3feca591baf156fb              # double 0.89521109115841513
	.quad	0x3fbfde80c28b04d0              # double 0.12448887586198798
	.quad	0x3feecd3eb4b4a7d7              # double 0.96255431455687812
	.quad	0x3fe4329e68ce5ced              # double 0.63117905111257999
	.quad	0x3fecf8d91eaf44a9              # double 0.90537696831792858
	.quad	0x3feadb40fe3011a3              # double 0.83926438947724014
	.quad	0x3fdc371ca5f66a26              # double 0.4408637638786409
	.quad	0x3fdb6d3ccd8ca6aa              # double 0.42854232857880936
	.quad	0x3fe252dd59598f58              # double 0.57261531306401547
	.quad	0x3fb67d5d6eb67558              # double 0.087850417642092338
	.quad	0x3fd24e4b40006936              # double 0.28602868318707253
	.quad	0x3fe75044635c8681              # double 0.72854823500183852
	.quad	0x3fe625f080957cf8              # double 0.69213128198671736
	.quad	0x3fe2c147a3745fed              # double 0.5860937302086292
	.quad	0x3fc545ae714c01dc              # double 0.16618900806498871
	.quad	0x3fcf6af84ba0a8f8              # double 0.24545196240189404
	.quad	0x3fdb0ad21c4b13b8              # double 0.42253544581427205
	.quad	0x3fdbca977f909aec              # double 0.43424022157198183
	.quad	0x3fc081a13aa8c060              # double 0.12895598758905447
	.quad	0x3fe00e9d7b27a631              # double 0.50178407720267704
	.quad	0x3fdb11a3f2264814              # double 0.4229516854039741
	.quad	0x3fec30ae0fc1681b              # double 0.88094237401242326
	.quad	0x3fe489e159dfa8ae              # double 0.6418310885758467
	.quad	0x3fe50dd9bcb2cf9e              # double 0.65794073920413942
	.quad	0x3fd63a6c2bf5f878              # double 0.34731582921074944
	.quad	0x3fe817e2df7ee1c5              # double 0.7529157986783096
	.quad	0x3fdc6fa59fc85344              # double 0.44431439021837016
	.quad	0x3fe25a9e48bee9aa              # double 0.57356180389551992
	.quad	0x3fef5faedb452132              # double 0.98043005777529957
	.quad	0x3fe205b52ad04729              # double 0.56319673883465271
	.quad	0x3fe1ac993f6ce388              # double 0.55231916797411973
	.quad	0x3fc7a74988e02fa0              # double 0.1847927015627393
	.quad	0x3fd59cd58b02c418              # double 0.33769739699624912
	.quad	0x3fd2f0dd09f426c2              # double 0.29595113727610223
	.quad	0x3fddacd6a9bae688              # double 0.46367422652438295
	.quad	0x3feb44c1054e1a70              # double 0.85214282070303504
	.quad	0x3fd09e4d4eea7a18              # double 0.25966198641427374
	.quad	0x3fe9e0a6ac09573a              # double 0.80867322541119013
	.quad	0x3fcbc6adbe1a58a8              # double 0.21700069219941054
	.quad	0x3fdef470596b3bfa              # double 0.48366936428368457
	.quad	0x3fd304e5c5a136ea              # double 0.29717392253665642
	.quad	0x3f97fe8418e22940              # double 0.023431839007153288
	.quad	0x3fe6fbd35afcc142              # double 0.71824043055497833
	.quad	0x3fe10069580e83e1              # double 0.53130023191999609
	.quad	0x3fc79af707ca5e60              # double 0.18441665535350449
	.quad	0x3fc726633ad2a754              # double 0.1808589970799469
	.quad	0x3fed2668b41b09ee              # double 0.91093859841231306
	.quad	0x3fee4c7e607f22b6              # double 0.94683760497090108
	.quad	0x3fed09a33a90f585              # double 0.90742646635742175
	.quad	0x3f998df12e83a8c0              # double 0.024955528701789076
	.quad	0x3fe236f3a944882b              # double 0.56920798359010882
	.quad	0x3fe75388abdbbb71              # double 0.72894700590209827
	.quad	0x3fcef658f370aeb4              # double 0.24189292799689144
	.quad	0x3fe2e685079bd87d              # double 0.59063960538948346
	.quad	0x3fd2aedaf7a2eadc              # double 0.29192232306711019
	.quad	0x3fdb42deb6644290              # double 0.42595641910251292
	.quad	0x3fbd43e71e0f9770              # double 0.11431736453923036
	.quad	0x3fc1beac30abb3e0              # double 0.1386313665056198
	.quad	0x3fec38a97b37d716              # double 0.88191675249138046
	.quad	0x3fef48424211b226              # double 0.97757065681577582
	.quad	0x3fd138dcb1de8a90              # double 0.26909558649109844
	.quad	0x3fe8fa2892da250b              # double 0.7805369251447315
	.quad	0x3fdc36944ff00a32              # double 0.44083125883495022
	.quad	0x3f980212e14757e0              # double 0.023445410728378024
	.quad	0x3fee07c5eb1b3bca              # double 0.93844886702742625
	.quad	0x3fdef633c17a56cc              # double 0.48377698797535795
	.quad	0x3fd4e85b8e496bee              # double 0.32668198485561006
	.quad	0x3fe2973e54fb0de7              # double 0.58096233938016162
	.quad	0x3f9da21831b22d40              # double 0.028938653977587991
	.quad	0x3fcd052c974f62b8              # double 0.22672040355862122
	.quad	0x3fd1929d62a023e0              # double 0.27457365638161768
	.quad	0x3fe9a87cb0ba4274              # double 0.80181726948838027
	.quad	0x3fdadd7f846bf418              # double 0.41976917201810826
	.quad	0x3fa978efe6c3e5f0              # double 0.049750801963408864
	.quad	0x3fd897ed56c0db2e              # double 0.38427289459234515
	.quad	0x3fe6ecc777213349              # double 0.71640370624081939
	.quad	0x3fefd68fa0327d78              # double 0.99494153297921084
	.quad	0x3fe2206d4133a379              # double 0.56645834669789885
	.quad	0x3fd6330a89fc3426              # double 0.34686530566324547
	.quad	0x3fccc883690afed8              # double 0.22486918095636699
	.quad	0x3fee688866b15fed              # double 0.95026035363389172
	.quad	0x3fd2b94600db6214              # double 0.29255819400489824
	.quad	0x3febe38706804929              # double 0.87152434606313023
	.quad	0x3fe718f49d04a744              # double 0.7217963282357478
	.quad	0x3f4e819769e2e000              # double 9.3097584956236545E-4
	.quad	0x3fec2ec69760e87f              # double 0.88070993009684162
	.quad	0x3fc398d398f467a8              # double 0.15310139626018082
	.quad	0x3fa3b047be5ff100              # double 0.038454286564929774
	.quad	0x3f94b250aa978ba0              # double 0.02021146813593655
	.quad	0x3fe404aa255683c1              # double 0.62556941311424208
	.quad	0x3febdef0c119dd8d              # double 0.87096440997167834
	.quad	0x3fc9a101f5c915b4              # double 0.20022606374020102
	.quad	0x3fcd0c9558b86198              # double 0.22694651443522385
	.quad	0x3fd3f3f1c70a431e              # double 0.31176418721683941
	.quad	0x3fef17f767017a70              # double 0.97167558782878238
	.quad	0x3fef1ffd6233c6fa              # double 0.97265500240447911
	.quad	0x3fd0d0efc0a5768c              # double 0.26275247395629076
	.quad	0x3fc6bfdf40319130              # double 0.17773047098592931
	.quad	0x3fb7333e6083e7e0              # double 0.090625666201872956
	.quad	0x3fe1887bc4e15de9              # double 0.54791058018866778
	.quad	0x3fb32e54ce66a4c8              # double 0.074925709143502606
	.quad	0x3fe4346bfdde8e69              # double 0.63139915069446062
	.quad	0x3fec64d1aa0b2f96              # double 0.88730700694712783
	.quad	0x3fc5ae983a49b160              # double 0.16939070554816293
	.quad	0x3fbaa0220fe664c0              # double 0.10400593650992374
	.quad	0x3fef8bffd1884c53              # double 0.98583975719737748
	.quad	0x3fdd275ed8a8e1bc              # double 0.45552798422024998
	.quad	0x3fc6933679bdad70              # double 0.17636757797604785
	.quad	0x3fd51fe0e93452dc              # double 0.33007071279398104
	.quad	0x3fd041083d6c8e6e              # double 0.25396924971048562
	.quad	0x3feb049a6a2153eb              # double 0.84431191185524079
	.quad	0x3fd97a026c51a786              # double 0.3980718667795532
	.quad	0x3fa14e711bebd840              # double 0.033801588686330764
	.quad	0x3fec39856b305dcc              # double 0.88202162680948381
	.quad	0x3fe362759c4ef498              # double 0.60576897171962951
	.quad	0x3fc7ff04bf49bd4c              # double 0.18747004833447034
	.quad	0x3fe5bdbdbd17e6d9              # double 0.67941176349924171
	.quad	0x3fb36e83ad9a40a0              # double 0.075905065425333706
	.quad	0x3fbb8b13e5100a80              # double 0.10759090750074485
	.quad	0x3fdaaa64aa669cde              # double 0.4166499771185509
	.quad	0x3fe21ecd90705f66              # double 0.56626013003095177
	.quad	0x3fcb72e41f0505b0              # double 0.21444369806890284
	.quad	0x3fb4d24b7c9f80f8              # double 0.081333845067550814
	.quad	0x3fe014c0154d8489              # double 0.50253299866393875
	.quad	0x3fd82487242ef3c4              # double 0.37722948583160254
	.quad	0x3fd708bccb7128e4              # double 0.35990829341302644
	.quad	0x3fea42d63529dcec              # double 0.82065878280164161
	.quad	0x3f91f7b2f7c37a60              # double 0.017546459553040683
	.quad	0x3fecf9ab07302860              # double 0.90547706035546227
	.quad	0x3fee19f755c4d20d              # double 0.94066969634747155
	.quad	0x3fec1b3b498c6ff9              # double 0.8783241688247464
	.quad	0x3fe00b7936f2d6c0              # double 0.50140057308336594
	.quad	0x3febfefb039bd655              # double 0.87487555222350954
	.quad	0x3fe8b8b6bf38791c              # double 0.77254807803891223
	.quad	0x3fd0fdafc3797258              # double 0.26548379983231518
	.quad	0x3fa3db52debcf0a0              # double 0.038782682122900924
	.quad	0x3fe8a196eb2e18ef              # double 0.76972528394324324
	.quad	0x3fd5e97cd39e3290              # double 0.34237595239464103
	.quad	0x3fb8f282ad732b90              # double 0.097450415941393808
	.quad	0x3fd2833d64369b92              # double 0.2892602423329943
	.quad	0x3fe90ab1f03f81db              # double 0.78255555079891381
	.quad	0x3fc4c5abae38f8d0              # double 0.1622824288078335
	.quad	0x3fe7f784a80482d0              # double 0.74896462264958963
	.quad	0x3fccc6408af7f62c              # double 0.22480017457557844
	.quad	0x3fe063dc39eedc59              # double 0.51218997302101876
	.quad	0x3feb2b14a224c2a5              # double 0.84900886219664484
	.quad	0x3fe68e51def1c422              # double 0.7048730234511178
	.quad	0x3fc179dd356bc99c              # double 0.13653149708222834
	.quad	0x3fe077f0d44f7fe0              # double 0.51464120356467546
	.quad	0x3f9119a6155fe3a0              # double 0.016699404768562354
	.quad	0x3fdf67d12a788c42              # double 0.490711490130881
	.quad	0x3fe5bd72270f98ff              # double 0.67937572125518375
	.quad	0x3fe069dd5f1c7011              # double 0.512922940982664
	.quad	0x3feac347929af320              # double 0.83633783944933171
	.quad	0x3fbd7a8183c62aa8              # double 0.11515054194584684
	.quad	0x3feeb8b33ac4c1eb              # double 0.96004640081633618
	.quad	0x3fd6b3315e3a7e66              # double 0.35468706323624699
	.quad	0x3fe6f9b076e7180e              # double 0.71797965262590124
	.quad	0x3fecef620f04d8bd              # double 0.90422156270394505
	.quad	0x3fe15a6b543bae47              # double 0.54228750659735503
	.quad	0x3fca0f8860a23d9c              # double 0.20359902113385153
	.quad	0x3fd9d12c70d1d946              # double 0.40339194314528404
	.quad	0x3fef0ca28acfdced              # double 0.97029234992706181
	.quad	0x3fdd954958f37812              # double 0.46223672567964613
	.quad	0x3fd9069466e8a3a8              # double 0.39102659272844642
	.quad	0x3fb99b657bf4d960              # double 0.10002741123466796
	.quad	0x3fe17c76e8635761              # double 0.54644341839114585
	.quad	0x3fe4797a758caeb5              # double 0.63982890089888278
	.quad	0x3fe04031481c892d              # double 0.50783599933882828
	.quad	0x3fec8542e41f0721              # double 0.89126724772379273
	.quad	0x3feb8366c971aaec              # double 0.85979022354635281
	.quad	0x3fcc653058acc264              # double 0.22183803872896413
	.quad	0x3fec8a6a381fc3fd              # double 0.8918963524030229
	.quad	0x3fa631cc861f93d0              # double 0.0433486856198112
	.quad	0x3fe6c53d3c46d3e8              # double 0.71157705090319912
	.quad	0x3fc263bb71c8c474              # double 0.14366858535644023
	.quad	0x3fdac762328a1d88              # double 0.41841940818309142
	.quad	0x3fe37542a971dc85              # double 0.60806401343042238
	.quad	0x3fd19d174dbd43a0              # double 0.27521307555894658
	.quad	0x3fa9505d862e10c0              # double 0.049441263799083313
	.quad	0x3fe6eaf61a6996a9              # double 0.71618180426294942
	.quad	0x3fde922a0a3b9f70              # double 0.4776711559229545
	.quad	0x3febe200a4c7f8df              # double 0.87133819755379338
	.quad	0x3fe8e336f1e7f071              # double 0.7777361607291039
	.quad	0x3fe69f86d476b928              # double 0.70697347161129631
	.quad	0x3fea86277db9224c              # double 0.82887625270184051
	.quad	0x3fdd176ccb949520              # double 0.45455474739931567
	.quad	0x3febee2024605b89              # double 0.87281806092038139
	.quad	0x3fe2e6da619bfcb0              # double 0.590680304187023
	.quad	0x3fedb7e60e17892d              # double 0.9286985659821646
	.quad	0x3fe85224177973d7              # double 0.76002697548721698
	.quad	0x3fc3128022a46e54              # double 0.14900209132689446
	.quad	0x3fb89b37557fd3e8              # double 0.096118410467013526
	.quad	0x3fcacad7c8fff45c              # double 0.20931527437633946
	.quad	0x3fe7c79ea5c67235              # double 0.74311764123883128
	.quad	0x3fe0ba398b36ac2d              # double 0.52273251714848856
	.quad	0x3febab66d165845d              # double 0.86467305085910662
	.quad	0x3fe166ac38853792              # double 0.54378329314362106
	.quad	0x3fd115954d4277fa              # double 0.26694233460318595
	.quad	0x3fd88f730b94439a              # double 0.38375545626427654
	.quad	0x3fe925e0524b08f6              # double 0.78587356636879124
	.quad	0x3fcde36bdcacc8a8              # double 0.23350284838813207
	.quad	0x3fefe0a476096ac1              # double 0.99617217115459066
	.quad	0x3fbe6c0ba390baa8              # double 0.11883614295286782
	.quad	0x3fc1bac5bd6ef7d4              # double 0.13851234197312456
	.quad	0x3fecb151422cd8c2              # double 0.89664519238319706
	.quad	0x3fe3cd8b0d1e127b              # double 0.61884071886068115
	.quad	0x3fec0fac0487d8d0              # double 0.87691307911770799
	.quad	0x3fce3e05dd29b330              # double 0.23626778887719402
	.quad	0x3fec89a643a719b5              # double 0.89180291379380228
	.quad	0x3fe12fd383cf67f2              # double 0.53708816284347294
	.quad	0x3fd49dfb4cf93d8a              # double 0.32214243428185141
	.quad	0x3fb81ec67c2340c8              # double 0.094219594294602804
	.quad	0x3fea0a475b447635              # double 0.81375472856206577
	.quad	0x3fe9c4aa13fce4ac              # double 0.80525688079719293
	.quad	0x3fe70409b59b0bf8              # double 0.71924291105130944
	.quad	0x3fee228b7d800b12              # double 0.9417169047522711
	.quad	0x3fe0fddbfd0b555b              # double 0.53098868773183072
	.quad	0x3fcc3d5cdebf04f0              # double 0.22062264324453151
	.quad	0x3fe04626a6b61739              # double 0.5085633522109908
	.quad	0x3fd01b5f5428397c              # double 0.25167067736119697
	.quad	0x3fe7c63943950912              # double 0.74294722747461805
	.quad	0x3fec3c66bac1e2b8              # double 0.88237320400283803
	.quad	0x3f7d7acb44a62300              # double 0.0071971836245061649
	.quad	0x3fc1f3fa26212a34              # double 0.14025809156221813
	.quad	0x3fede8d82629ed73              # double 0.93467338041175052
	.quad	0x3feccedbdbbfd814              # double 0.90025132102778337
	.quad	0x3fe72e324b8f86c2              # double 0.72438921697558833
	.quad	0x3fda60e537cc5052              # double 0.41216402482064496
	.quad	0x3feb74c656dd383d              # double 0.85800473180439207
	.quad	0x3fdea0e0f52e32c4              # double 0.47856925910381798
	.quad	0x3fd57c92b8fe0d3e              # double 0.33572834077513736
	.quad	0x3fc4d095ae9b3a2c              # double 0.16261549974156375
	.quad	0x3fe55aa338d39a52              # double 0.66731415842952857
	.quad	0x3f9440b0eebabe00              # double 0.019778027125253672
	.quad	0x3fee6e031b293dc3              # double 0.95092921547796327
	.quad	0x3f98af14e8372ce0              # double 0.024105383561430993
	.quad	0x3fefa1a6aa97f5b9              # double 0.98848279303609054
	.quad	0x3fd917fccd60e678              # double 0.39208908134933251
	.quad	0x3fe9d7e334086c62              # double 0.80760345614124796
	.quad	0x3fe0d4822b6a7936              # double 0.52594097594900435
	.quad	0x3fe41362c5234a78              # double 0.62736643317687335
	.quad	0x3fe67e28796532c0              # double 0.7029001589777053
	.quad	0x3fd626e7eec00304              # double 0.34612463298258
	.quad	0x3fb96ca6ac0f14c8              # double 0.099314133650369674
	.quad	0x3f8d7d2f30355680              # double 0.014398926409437296
	.quad	0x3fe326656381bbc1              # double 0.59843701777378311
	.quad	0x3feff04589c39a35              # double 0.99808003336949602
	.quad	0x3fcbaff2a0281440              # double 0.21630699939865572
	.quad	0x3fe27709500582e4              # double 0.57703080777363569
	.quad	0x3fdfa959719c1162              # double 0.49471126646701269
	.quad	0x3fe4c50539dfc649              # double 0.64905034354723867
	.quad	0x3f9e498065922b80              # double 0.029577261161232382
	.quad	0x3fcffceb0abad300              # double 0.24990594886698858
	.quad	0x3fe5cc4cddb15943              # double 0.68118899630898289
	.quad	0x3fee97f204712813              # double 0.95604802005368794
	.quad	0x3fef4009176701d3              # double 0.97656683512473774
	.quad	0x3fe7b9b8ba31835a              # double 0.74142109266186229
	.quad	0x3fe5cc25d6a5c539              # double 0.68117038653705386
	.quad	0x3fecfbc33bfea970              # double 0.90573274343232235
	.quad	0x3fc4c98cd6b76f88              # double 0.16240082248884513
	.quad	0x3fed5cd42ee9526f              # double 0.91758164560685695
	.quad	0x3fa057fafd90b760              # double 0.031921237423701454
	.quad	0x3fb6bf13b72fdb30              # double 0.088853103850720982
	.quad	0x3fe4e31f72a3e3c8              # double 0.65272495642340633
	.quad	0x3f94a599e2f720c0              # double 0.020162968137612536
	.quad	0x3fec42892d55067b              # double 0.88312205175334613
	.quad	0x3feec3746230168d              # double 0.96135920693696308
	.quad	0x3fef270cea1b4a88              # double 0.97351690029093251
	.quad	0x3fec0d56706f3da9              # double 0.87662813148374596
	.quad	0x3fe1b0e8ed75b75f              # double 0.55284544352410225
	.quad	0x3feb2d189a849bd7              # double 0.8492548959665055
	.quad	0x3fdf42014af3a658              # double 0.48840362853534236
	.quad	0x3fd1ba766fba4388              # double 0.2770057765092635
	.quad	0x3feb16c7fdbc808c              # double 0.84653091009023873
	.quad	0x3fef4e79d847bd14              # double 0.97832958452446172
	.quad	0x3fd5653bf2ae8da2              # double 0.33430384349250108
	.quad	0x3fee014ad8d13185              # double 0.93765776011564184
	.quad	0x3fec370d133a8e4e              # double 0.88172010188686456
	.quad	0x3fe476e15ef23cec              # double 0.63951176208675298
	.quad	0x3fda7aaa03c21d52              # double 0.41373682372109954
	.quad	0x3fdef6477f17074a              # double 0.48378169451836028
	.quad	0x3fc31cf3ce6a223c              # double 0.14932105616414215
	.quad	0x3fd789cbf0af3c66              # double 0.36778543953273013
	.quad	0x3fd1479a66b726a4              # double 0.26999530821613349
	.quad	0x3feee8e399f7f555              # double 0.96592884132375422
	.quad	0x3fd727fb2a1d1442              # double 0.36181525337844189
	.quad	0x3fee972179d1fede              # double 0.95594857972170266
	.quad	0x3fe11d575ebe0d74              # double 0.53483170036672201
	.quad	0x3fe47365cd39fbb1              # double 0.63908662875461719
	.quad	0x3fb56f368c9f14a8              # double 0.083728226977728526
	.quad	0x3fe18a6ec433ce64              # double 0.54814852066779141
	.quad	0x3fbe4ccaeb499598              # double 0.11835926288912046
	.quad	0x3fe9d9d61b457bfd              # double 0.80784135176133953
	.quad	0x3fe60375b84f7ba9              # double 0.68792234419003251
	.quad	0x3fddc5fce7236d82              # double 0.46520922252758379
	.quad	0x3fceff4a8b5f2e24              # double 0.24216586880935254
	.quad	0x3fe45f0682045ed7              # double 0.63659978288611796
	.quad	0x3fedc237ad7facbb              # double 0.9299581898352679
	.quad	0x3fd4e9bfd2779ba8              # double 0.32676692536773055
	.quad	0x3fe004119b51a1e0              # double 0.50049667678564091
	.quad	0x3fe341c65c3b9465              # double 0.60177915586667707
	.quad	0x3fb1fac86f594980              # double 0.070232894119987677
	.quad	0x3fd988a55460c85c              # double 0.39896519889874127
	.quad	0x3fcfb87e7bb23760              # double 0.24781781234599531
	.quad	0x3fd2d0c0e0aec0ea              # double 0.293991298119194
	.quad	0x3fce0ad84e8938d8              # double 0.23470596155897883
	.quad	0x3fb8ba09c6b097e0              # double 0.096588717468506057
	.quad	0x3fd064402060e476              # double 0.25611880456887748
	.quad	0x3fecfada9953ab04              # double 0.90562181421896115
	.quad	0x3fb5e723b34370e8              # double 0.085558158174027121
	.quad	0x3fee850583492b6a              # double 0.95373798028718437
	.quad	0x3fbe316fa3e5ffa0              # double 0.11794183494020993
	.quad	0x3fea93a4432aa87d              # double 0.83052266233904926
	.quad	0x3fd30436793f212e              # double 0.29713212814796719
	.quad	0x3fc555b691d81f64              # double 0.16667825814533466
	.quad	0x3fe25162a08f54a4              # double 0.57243472442009535
	.quad	0x3fdc3b64cbef72b2              # double 0.44112510600624966
	.quad	0x3fdb64ef8fd581c8              # double 0.42803563162126723
	.quad	0x3fe55a44062f001f              # double 0.66726876456960216
	.quad	0x3fba390c7e271a38              # double 0.10243299560452435
	.quad	0x3fbb295527f6fc20              # double 0.10609943605139494
	.quad	0x3fdf0ed9e047931a              # double 0.48528143789580869
	.quad	0x3fe97282fab35210              # double 0.79522847142158248
	.quad	0x3fdb9a7145b2386a              # double 0.43130142027155804
	.quad	0x3fbf89a23a1869e8              # double 0.12319387358039757
	.quad	0x3feb33dd19801e91              # double 0.85008101444778295
	.quad	0x3fe4d79185e599e1              # double 0.6513145079778121
	.quad	0x3fd54355971d740a              # double 0.3322347617848328
	.quad	0x3fecab44ef2640b6              # double 0.89590689381477406
	.quad	0x3fe2762675f20f44              # double 0.5769226363777098
	.quad	0x3f9611b47e2101e0              # double 0.021551914404200789
	.quad	0x3fedfd146c69e999              # double 0.93714352774195497
	.quad	0x3fc4c60f2cb7c4a4              # double 0.16229428943146218
	.quad	0x3fe2553e156e1fe6              # double 0.57290558038311867
	.quad	0x3fe712b0301f3ffe              # double 0.72103127859918437
	.quad	0x3febd8e7a027bb64              # double 0.8702276351958571
	.quad	0x3fe99f65b0983595              # double 0.80070766917349323
	.quad	0x3fed1d886817ad75              # double 0.90985508280338812
	.quad	0x3fd53f7c90a0f2d2              # double 0.33199991344353663
	.quad	0x3fc655f035811184              # double 0.1744976292849395
	.quad	0x3fe19a80bfc1ab38              # double 0.55011022045559965
	.quad	0x3feb004e82f5261e              # double 0.84378743722590221
	.quad	0x3fe5897e2c77529d              # double 0.67303379711900713
	.quad	0x3fd791e7bb17f60e              # double 0.36828034659251407
	.quad	0x3fed1b550673b846              # double 0.90958644161379065
	.quad	0x3fb1c01754977b10              # double 0.069337328102374807
	.quad	0x3fe7ef06f13d6303              # double 0.74792811505457768
	.quad	0x3fddd7f47a04bdd4              # double 0.46630584636565442
	.quad	0x3fd295adbccca242              # double 0.2903856605285321
	.quad	0x3fe61e118edbfe20              # double 0.69117048170295803
	.quad	0x3fd0c14d0a35f1c8              # double 0.26179815289631536
	.quad	0x3fe4f7d59d6ff342              # double 0.65525322675203079
	.quad	0x3fce026ada6fa2b8              # double 0.23444877305816703
	.quad	0x3fca02986e63586c              # double 0.20320420637171155
	.quad	0x3fcce395d7ebc278              # double 0.22569535296453913
	.quad	0x3fe36ea2bfd78a3f              # double 0.60725533932811249
	.quad	0x3fb81656f18ac8a0              # double 0.094090875597233836
	.quad	0x3fed715611cb1fbe              # double 0.92008498645099457
	.quad	0x3feae6bbde31a72c              # double 0.84066575429208034
	.quad	0x3fb1f9a95e714618              # double 0.070215783650631969
	.quad	0x3fb59123ba6fcd00              # double 0.084245903984811576
	.quad	0x3fe8ed3475be50e3              # double 0.77895567890893991
	.quad	0x3fdd95572a8c9604              # double 0.46224002032462885
	.quad	0x3fd6952d2d6a350a              # double 0.35285500941320491
	.quad	0x3fde3c50db5e1a5e              # double 0.47243138716331667
	.quad	0x3fda09ba2926492a              # double 0.40684370058547137
	.quad	0x3fc9fa35d9aa45e0              # double 0.20294831398182023
	.quad	0x3fe95f55562babf9              # double 0.79288737135118403
	.quad	0x3fd1292b678c34f8              # double 0.26813778984144632
	.quad	0x3fe5c7756f280f2e              # double 0.68059798918009107
	.quad	0x3fe86b932af2d79b              # double 0.76313169849776175
	.quad	0x3fda79b178e7e8a2              # double 0.41367756659713895
	.quad	0x3fe56d4e5d3eba58              # double 0.6695930310432443
	.quad	0x3fd226f249800b46              # double 0.28362710168601202
	.quad	0x3fe9c5c88281f9f9              # double 0.80539346208371321
	.quad	0x3faa942e0a343f70              # double 0.051911772485367602
	.quad	0x3fec8ff2762fbde3              # double 0.89257166941927968
	.quad	0x3fb2c2e745051860              # double 0.073286489821016598
	.quad	0x3fd8a146ca7fca82              # double 0.3848435380488483
	.quad	0x3fe5ff772533bbba              # double 0.68743474260360604
	.quad	0x3fcf67dec97986b8              # double 0.24535736882812897
	.quad	0x3fda464f28f27292              # double 0.41054133414017102
	.quad	0x3fd9117188bd92b4              # double 0.3916896663052214
	.quad	0x3fd3daee81342108              # double 0.3102375280145826
	.quad	0x3fdf20aac29973c8              # double 0.48636883739328285
	.quad	0x3fbfc023ef48a218              # double 0.12402557937515046
	.quad	0x3fc746ff4d817e74              # double 0.18185416492905271
	.quad	0x3fb9adf0dafe5458              # double 0.10031037661095021
	.quad	0x3fec8477dd68dc1e              # double 0.89117043727935985
	.quad	0x3fdb7b26c001f998              # double 0.4293915629458751
	.quad	0x3febd2ba65468f48              # double 0.86947364597697518
	.quad	0x3fd49a1b14171454              # double 0.32190587007454963
	.quad	0x3fe0d6fb781340e2              # double 0.52624295665921417
	.quad	0x3f56591f53876000              # double 0.0013640218659158876
	.quad	0x3fd171e04a01199c              # double 0.27257544733984118
	.quad	0x3fec48ae6f81fc7f              # double 0.88387223986491381
	.quad	0x3fdde0c04824a4b4              # double 0.46684271855572068
	.quad	0x3fcdec4f35f924f0              # double 0.23377409110461356
	.quad	0x3fe07611ecdc9387              # double 0.51441284429584833
	.quad	0x3fe5bea74995882b              # double 0.67952312824150363
	.quad	0x3fe3ca2862d73fc7              # double 0.6184274607166963
	.quad	0x3fd7457b705da27e              # double 0.36361585591524903
	.quad	0x3fdf0f5de63974ec              # double 0.48531291468482496
	.quad	0x3fe8759d8ec5f6aa              # double 0.76435735593232335
	.quad	0x3feef547fff5c204              # double 0.96744155876336934
	.quad	0x3fe499990ca74be9              # double 0.64374973746668929
	.quad	0x3fe19df2e232cf51              # double 0.55053085498227905
	.quad	0x3fe36b94fc1cf105              # double 0.60688256493406867
	.quad	0x3fe448d1add56e1b              # double 0.63388904525658363
	.quad	0x3fd1e8270bbd2212              # double 0.27979446550719544
	.quad	0x3fe3ff0691c46ede              # double 0.62488106222323458
	.quad	0x3f84638a6acb0e80              # double 0.0099554838028617087
	.quad	0x3fcf968ff887e91c              # double 0.24678229937837493
	.quad	0x3fe90cc08c0b3a15              # double 0.78280665733638222
	.quad	0x3fe666781b0f0f9d              # double 0.70000844273498652
	.quad	0x3fa246894af301d0              # double 0.035694399260595255
	.quad	0x3feed1754fa7827b              # double 0.96306863362776995
	.quad	0x3fd8b0133e775d42              # double 0.38574677562924731
	.quad	0x3fe2a7d893bcf648              # double 0.58298901419738858
	.quad	0x3fc7a1cc21f9eec0              # double 0.18462516459464062
	.quad	0x3fb097bcdb366080              # double 0.064815333861021784
	.quad	0x3fe53ce4458744f2              # double 0.66368306712879943
	.quad	0x3fdc92d022687c0e              # double 0.44646075592203338
	.quad	0x3fb3e1dd7eba4930              # double 0.07766517967164499
	.quad	0x3fe30253364d1e90              # double 0.59403381925308629
	.quad	0x3fd1b71bde2cd03c              # double 0.27680107781202756
	.quad	0x3fea2c928c33bc2e              # double 0.81794097312184078
	.quad	0x3fceb4cc86563b08              # double 0.23989254531303339
	.quad	0x3fef85f9970124f8              # double 0.98510436528263678
	.quad	0x3fec7ae3df1a2d6b              # double 0.89000123572024614
	.quad	0x3fc66737d0d9d7f8              # double 0.1750249643116033
	.quad	0x3fe9f7e0e4ecbdce              # double 0.8115086051165521
	.quad	0x3fd63a1a3f302f8e              # double 0.34729629679417762
	.quad	0x3fcc710c441d7568              # double 0.22219994855815206
	.quad	0x3fe36e4eda8966ac              # double 0.60721533472970668
	.quad	0x3feef565830ade7e              # double 0.96745563120107625
	.quad	0x3fe021170c8f1f67              # double 0.50403931096023491
	.quad	0x3fd0d7456b0d6010              # double 0.26313910917588235
	.quad	0x3fd5b89a6cc889cc              # double 0.33939228652357367
	.quad	0x3fe2e342888222fd              # double 0.59024168645655062
	.quad	0x3fd920d553186cb0              # double 0.39262898554597836
	.quad	0x3fd67dd413335a78              # double 0.35142995715197101
	.quad	0x3fd3de96fa66e57e              # double 0.31046080067934401
	.quad	0x3fc8baf82defc498              # double 0.19320585482595187
	.quad	0x3feab706c6bb52e4              # double 0.83484209837714873
	.quad	0x3fe4620eb1b779bb              # double 0.63696989736836629
	.quad	0x3fe9660a2cdc1e6b              # double 0.7937060238045438
	.quad	0x3fbed68c13e36ef8              # double 0.12046123014027532
	.quad	0x3fe30282e8a7865c              # double 0.59405656280814467
	.quad	0x3fe42fe8b14e10e1              # double 0.63084826116439896
	.quad	0x3fc3a7266190a150              # double 0.15353851093210347
	.quad	0x3fe2921a5c31d358              # double 0.58033483511699568
	.quad	0x3fd5c63267221fd8              # double 0.34022197791682407
	.quad	0x3fecccf02aedb4c9              # double 0.9000168646286052
	.quad	0x3fd190808973a344              # double 0.27444470809000543
	.quad	0x3feae587ae0574cf              # double 0.84051879871881308
	.quad	0x3fd07e1a60d16abc              # double 0.25769671873937816
	.quad	0x3feaff43681ee22e              # double 0.84366007171690227
	.quad	0x3fdf60d7af5be8d2              # double 0.49028579831032204
	.quad	0x3f9023882d93e700              # double 0.015760543615193079
	.quad	0x3fca4624f6133088              # double 0.20526563659075614
	.quad	0x3fe590fb8c3831bf              # double 0.67394807230589737
	.quad	0x3fe1d501f2209c7f              # double 0.55725190439706285
	.quad	0x3fdb0639607c921e              # double 0.42225489065666177
	.quad	0x3fe067590d647054              # double 0.51261570563975534
	.quad	0x3fd6b4593f938742              # double 0.35475760658856725
	.quad	0x3fe813bc93808c72              # double 0.75240925606739339
	.quad	0x3fe21cfb0a3b30d3              # double 0.56603767393382964
	.quad	0x3fe8160963118b7a              # double 0.75269002293894904
	.quad	0x3fe164a06647a336              # double 0.54353351570634945
	.quad	0x3fe52229a5dbc272              # double 0.66042024988389714
	.quad	0x3faa70c24fbe6d00              # double 0.051641533121449257
	.quad	0x3fdf982b343277e4              # double 0.49366264436127794
	.quad	0x3fc8058da6a90b94              # double 0.18766947400771683
	.quad	0x3fe69e1142ce3eed              # double 0.70679534004190503
	.quad	0x3fe49838d0e72d3d              # double 0.64358177949308237
	.quad	0x3fe089a8f0f8f039              # double 0.51680419030117897
	.quad	0x3fea1a369627bf4c              # double 0.81569985701751468
	.quad	0x3fd6c54b37c1e14e              # double 0.3557918591027559
	.quad	0x3fd86e8e71b7ad0c              # double 0.38174782853339262
	.quad	0x3fe2b2a11fdff211              # double 0.58430534577888882
	.quad	0x3fef26b78011de3a              # double 0.97347617162353761
	.quad	0x3f75b6841d584680              # double 0.0053010140159287511
	.quad	0x3fe235355b2303a6              # double 0.56899516868735556
	.quad	0x3feb4ab0cd582302              # double 0.85286750894837859
	.quad	0x3fd1d3131f8bebfa              # double 0.27850797730178523
	.quad	0x3fc19926d85ffc3c              # double 0.13748632016356221
	.quad	0x3fb79e37c0729a68              # double 0.092257961735052185
	.quad	0x3fe4a3651ce408d2              # double 0.64494567530371172
	.quad	0x3fd9b950ce98c78c              # double 0.40193576980083701
	.quad	0x3fddbacb67de5a9c              # double 0.46452603476920173
	.quad	0x3fb796eefde7d7c0              # double 0.092146813381844161
	.quad	0x3fd7f6feb16e8b44              # double 0.37445037200284426
	.quad	0x3f95c1434bb122e0              # double 0.021245051855916297
	.quad	0x3fe05e96f5b30e11              # double 0.51154659259958823
	.quad	0x3fb3ddfb755437c8              # double 0.07760593046643216
	.quad	0x3fd615fe3d5b5ac0              # double 0.34509235374336455
	.quad	0x3fef1b12f940381d              # double 0.97205494577224593
	.quad	0x3fd3354512bc12da              # double 0.30012633161122226
	.quad	0x3fbd0d0eff918568              # double 0.11348050822700417
	.quad	0x3fb674e1df74a818              # double 0.087720982603656572
	.quad	0x3fe1c7e28bdf22fd              # double 0.55565001791646262
	.quad	0x3fd1817587ef3c58              # double 0.27352655672888693
	.quad	0x3fdf9447d344c610              # double 0.49342532760337665
	.quad	0x3fe48bd18134e4ad              # double 0.64206767306963786
	.quad	0x3fd7816d03796afc              # double 0.36727452601705557
	.quad	0x3fe5ba7547111296              # double 0.67901100044453488
	.quad	0x3fd3d5f62d826aee              # double 0.30993418163568165
	.quad	0x3fdf870aca2d5aaa              # double 0.49261731857169855
	.quad	0x3fe4eedc1af82891              # double 0.65415768878416902
	.quad	0x3fc19a1203060e18              # double 0.13751435420645985
	.quad	0x3fbabbea6edc9170              # double 0.10442986685354128
	.quad	0x3fe67c4d989eb97c              # double 0.70267371948811741
	.quad	0x3fe51b499cf6ba51              # double 0.65958099991787311
	.quad	0x3fe3a67fdc55e28e              # double 0.6140746406009201
	.quad	0x3fcfbafd7d5d2ac4              # double 0.24789398785863714
	.quad	0x3fdc7f962403737c              # double 0.44528726117078299
	.quad	0x3fe101ef62fd01f5              # double 0.53148621877340807
	.quad	0x3fd0a39779fc1622              # double 0.25998484528131105
	.quad	0x3fe1bebd09cc3263              # double 0.55453349984743416
	.quad	0x3fc30fa45708e278              # double 0.1489148545240544
	.quad	0x3fdc3d607c7b6e14              # double 0.4412461486478787
	.quad	0x3fdbc153babaf70c              # double 0.43367474780448911
	.quad	0x3fe64e17bcfcc828              # double 0.69703280364615683
	.quad	0x3fd39a7c0aee3cb4              # double 0.30630398814623594
	.quad	0x3fdded5ad87a0b76              # double 0.46761199131304154
	.quad	0x3fdf0751c70a9c04              # double 0.48482174337044648
	.quad	0x3fe199c333e8eea0              # double 0.55001983774805652
	.quad	0x3fed3c2ec1042245              # double 0.91359651277986897
	.quad	0x3fb0deb3c70795c8              # double 0.065898166743486475
	.quad	0x3fdef63e191d4dfc              # double 0.48377945377907827
	.quad	0x3fda0572cd33b3d2              # double 0.40658254660848769
	.quad	0x3fe2bc83500e7aa7              # double 0.58551183353468594
	.quad	0x3fe54b2b374ecd3e              # double 0.66542588045414397
	.quad	0x3fe95ac41e7014a1              # double 0.79232984490285585
	.quad	0x3fc38500350322d8              # double 0.15249636257637778
	.quad	0x3fe17d837bffd046              # double 0.54657148569686664
	.quad	0x3fd1e0d886f60abc              # double 0.27934849910540627
	.quad	0x3fefb28c568a0af0              # double 0.99054543401902428
	.quad	0x3fe6d2e13ac1fa7e              # double 0.71324216343039359
	.quad	0x3fd81fb77964d954              # double 0.37693583350064341
	.quad	0x3fe02d99b9639dec              # double 0.5055664654618659
	.quad	0x3fea3a187292349e              # double 0.81959173562212917
	.quad	0x3fec1037d5c0fda1              # double 0.87697974919131039
	.quad	0x3fe11c55ce4b9a3c              # double 0.53470888416342843
	.quad	0x3fd0415a2a2c556a              # double 0.25398878210520215
	.quad	0x3fe62c913cf99bc8              # double 0.69294034871278942
	.quad	0x3fd8e731092d1fcc              # double 0.38911081215019006
	.quad	0x3fedcd10ca20ff3f              # double 0.93128241995143657
	.quad	0x3fe9301cc9ab00cb              # double 0.78712310207631597
	.quad	0x3fc20a386562215c              # double 0.14093689871175286
	.quad	0x3fdd095585bff0f8              # double 0.45369470654965438
	.quad	0x3fe5124e6d6ddcb7              # double 0.65848466275101358
	.quad	0x3fbc1fda30bb47b8              # double 0.10986102761969974
	.quad	0x3fe1ae3146a34bd5              # double 0.55251373096904877
	.quad	0x3fef16fbe7621c72              # double 0.97155566398659077
	.quad	0x3fed64ff5ea7f746              # double 0.91857880103609868
	.quad	0x3fd9cf45d6fccbac              # double 0.40327592844840399
	.quad	0x3fea7b8ce6858616              # double 0.82758183501954607
	.quad	0x3fedf4fca8bcb65a              # double 0.93615563351131503
	.quad	0x3fd1776291a47816              # double 0.27291168425461032
	.quad	0x3fc17edac8141008              # double 0.13668379563762323
	.quad	0x3fe1f29882e3336f              # double 0.56086373867002048
	.quad	0x3fdbea2a7c17468c              # double 0.43616735571149756
	.quad	0x3fc436aa8a97aa28              # double 0.15791827933510771
	.quad	0x3fd07a2d7a25cbf8              # double 0.25745713165741746
	.quad	0x3fde04145c099d78              # double 0.46899899471323847
	.quad	0x3fdf89bcda1797d4              # double 0.49278184221327348
	.quad	0x3fed9156cedd333c              # double 0.92399158862244901
	.quad	0x3fe44cca09550681              # double 0.63437368223840462
	.quad	0x3fdf73b6f030a814              # double 0.49143765884457591
	.quad	0x3fee345fcc7ec2ac              # double 0.9438933366819433
	.quad	0x3fd04a85efb5b2c2              # double 0.25454853448063031
	.quad	0x3fb1247cd8fb21c0              # double 0.066963007902024252
	.quad	0x3fd3c0033d3bd530              # double 0.30859452228408468
	.quad	0x3fe3a065d03e8881              # double 0.6133297984381586
	.quad	0x3fe7af227de4ae05              # double 0.74012875164538683
	.quad	0x3fe84e3f97b7b0f4              # double 0.75955180771191388
	.quad	0x3fc65e103960e1a8              # double 0.17474558641130256
	.quad	0x3fb280f885fd0548              # double 0.072280438148500825
	.quad	0x3fe916ab222fd1b0              # double 0.78401714970691749
	.quad	0x3feeaf5c4c361f40              # double 0.95890631566087591
	.quad	0x3fd3bd03f7ffd95e              # double 0.3084115907544368
	.quad	0x3fe57814a1357e40              # double 0.67090827451824708
	.quad	0x3fedddafb3806f78              # double 0.93331131991315797
	.quad	0x3fd606a217d9f582              # double 0.34415485696066395
	.quad	0x3fd73cfa93780d4a              # double 0.36309685136094016
	.quad	0x3f60ddf2ce71fc00              # double 0.0020589582741759038
	.quad	0x3fdbfeeabb2f519a              # double 0.43743389396447585
	.quad	0x3fc6f831624950f8              # double 0.17944924639835569
	.quad	0x3feba709a524481e              # double 0.86414034132235762
	.quad	0x3feccec453a0ac45              # double 0.90024010022660461
	.quad	0x3fa31debab317710              # double 0.037337650916681508
	.quad	0x3fe98ff57c177dc4              # double 0.79882311093017976
	.quad	0x3fbcc13683e31138              # double 0.11232319564721116
	.quad	0x3fefb5eb0310b6b1              # double 0.9909567890042209
	.quad	0x3fe970e9564184c9              # double 0.79503313872205539
	.quad	0x3feff8f095229f57              # double 0.99913815620400725
	.quad	0x3feb4ff8c4d9e3f6              # double 0.85351217696654547
	.quad	0x3fd7a181e0cea188              # double 0.36923262552092995
	.quad	0x3fe5d2a363fa5781              # double 0.6819626763051333
	.quad	0x3fc047cc087f2e20              # double 0.12719107069857305
	.quad	0x3fc5ea7c1c1b855c              # double 0.17121840832173063
	.quad	0x3fe543b47fb0f4cf              # double 0.66451477946943693
	.quad	0x3fdd64964792ba1c              # double 0.45926434506955771
	.quad	0x3fd0e046adb7f01e              # double 0.26368872608850491
	.quad	0x3fd9b07abc032920              # double 0.40139644966679278
	.quad	0x3fdb5a1755610250              # double 0.42737372720515499
	.quad	0x3fec497b8fef506d              # double 0.88397005188245503
	.quad	0x3f31b5ccb003c800              # double 2.702355123026523E-4
	.quad	0x3fd53dbe0a88c15a              # double 0.33189345387201785
	.quad	0x3fe41dd42f315889              # double 0.62864121644339932
	.quad	0x3fec2b83f8ae0257              # double 0.88031195230730475
	.quad	0x3fb148187fde7530              # double 0.067506343095790511
	.quad	0x3fecbb7f7114971d              # double 0.89788791738530771
	.quad	0x3fe367381482fb1d              # double 0.60634998327427392
	.quad	0x3fd8422a47067b98              # double 0.37903840004030931
	.quad	0x3fbb9bb5da1f3dc8              # double 0.10784470153088599
	.quad	0x3fc50cc19e3ec0a4              # double 0.16445179201901283
	.quad	0x3fdb7ea41e484be4              # double 0.42960455853716284
	.quad	0x3fea4be2d9fe4a0f              # double 0.8217634446794494
	.quad	0x3fdd52c5492843aa              # double 0.45817691940561167
	.quad	0x3fe46602fcd89161              # double 0.63745259651163277
	.quad	0x3fe97aa19b5fc0aa              # double 0.79621963831416065
	.quad	0x3febc0a999cfc6b7              # double 0.8672683719762152
	.quad	0x3fe72ab5ff382a14              # double 0.72396373603379738
	.quad	0x3fd5c4bdc13fe270              # double 0.34013313171411763
	.quad	0x3fe1460bbf41a9bc              # double 0.53980052332672512
	.quad	0x3fcb6b1b3929ba60              # double 0.21420612612878909
	.quad	0x3fe3fcdf3b99c1f7              # double 0.62461816445107743
	.quad	0x3fcd4d9b69b24c78              # double 0.228930880174264
	.quad	0x3fedda6f5c7fb53a              # double 0.93291442934211166
	.quad	0x3fd6d73bcc262c1a              # double 0.35688681541859213
	.quad	0x3fc79b1f4efd8254              # double 0.18442145688006184
	.quad	0x3fb88f23a56a3100              # double 0.095934131512141362
	.quad	0x3fed4f9071ac0cf7              # double 0.91596243096901631
	.quad	0x3feb3da5e474d341              # double 0.85127539272671282
	.quad	0x3fa70fda86bf41c0              # double 0.045042828510875932
	.quad	0x3fe2cee9c7acaab3              # double 0.5877579593555623
	.quad	0x3f911161b37a5900              # double 0.016667868213141368
	.quad	0x3fd048cbd08c8882              # double 0.25444312444791006
	.quad	0x3fe29a8f1f0bba1c              # double 0.58136707366594775
	.quad	0x3fe8c189737f88f2              # double 0.77362511213530483
	.quad	0x3fe3c5cf56a07b3a              # double 0.61789671820938641
	.quad	0x3fd68a243c5df762              # double 0.35218149085254968
	.quad	0x3fdfc6f1ffaf8dc6              # double 0.49651765794098102
	.quad	0x3fe7a9b2ae13536e              # double 0.73946508406753053
	.quad	0x3fe02fb3f4471992              # double 0.50582311354155451
	.quad	0x3fe6d56b90cca995              # double 0.71355226784844439
	.quad	0x3fe5f2c9b9e9f163              # double 0.68588720618531018
	.quad	0x3fdcbca50d2b86da              # double 0.44901396070609467
	.quad	0x3fde64f06bcc1322              # double 0.47491083647791943
	.quad	0x3fb157c109084278              # double 0.067745270447867045
	.quad	0x3fd515e7efe5087a              # double 0.3294620363923354
	.quad	0x3fe7e18e74b0ba2e              # double 0.74628374854166224
	.quad	0x3fe7fc30ff263977              # double 0.74953508218622644
	.quad	0x3fd8c3c82115b0d2              # double 0.3869495699971256
	.quad	0x3fee6f81862956cf              # double 0.95111156657613971
	.quad	0x3fea4573ec077d8c              # double 0.82097812747444853
	.quad	0x3f86e5e7bc7015c0              # double 0.011180696905294663
	.quad	0x3fb36113a55396d0              # double 0.075700023520393289
	.quad	0x3fda61ea7d280770              # double 0.41222631666470644
	.quad	0x3fe18a80d7eeebb7              # double 0.54815714048833442
	.quad	0x3fe9e2e83a034fa4              # double 0.80894862490321317
	.quad	0x3fe290c1b59a4925              # double 0.58017049283288158
	.quad	0x3feb2a8a6d5222bc              # double 0.84894296027876903
	.quad	0x3fda4e87068bff40              # double 0.41104293479292053
	.quad	0x3fee1eca8b230ea9              # double 0.94125868964370796
	.quad	0x3fe4673c8a1722f4              # double 0.63760210963036323
	.quad	0x3fe1a81287f2499f              # double 0.55176664878881698
	.quad	0x3fd69e381f590ad2              # double 0.35340693532286338
	.quad	0x3feb4134e129e31b              # double 0.85170978524465413
	.quad	0x3fe5f569b344987a              # double 0.6862076283766918
	.quad	0x3fe1e5237281f62f              # double 0.55922100415017961
	.quad	0x3fb1d6798d4c0578              # double 0.069678875919654604
	.quad	0x3fe848ab0e73dcfd              # double 0.75887062857410081
	.quad	0x3fdbab09e56d68e2              # double 0.43231437115686167
	.quad	0x3fdfc225308ef8c0              # double 0.49622468702353828
	.quad	0x3fe5c877d5d9cfc2              # double 0.68072120445003059
	.quad	0x3feb23c4def35b88              # double 0.84811633629839012
	.quad	0x3fe4b2eb40c3cce1              # double 0.64684069299110203
	.quad	0x3fc1e9c30656a840              # double 0.1399463444661837
	.quad	0x3fcecbc43a24b7b4              # double 0.24059346045527052
	.quad	0x3fbeedbbeac460b0              # double 0.12081503373736058
	.quad	0x3fd9617f510a2a3c              # double 0.39657576478990442
	.quad	0x3fde53f9438214ae              # double 0.47387534706678991
	.quad	0x3fe5c92ab2de6a78              # double 0.68080649314226971
	.quad	0x3fd8ac492049f18a              # double 0.38551548150260173
	.quad	0x3fd9478caedb0636              # double 0.39499203754175782
	.quad	0x3fe28b7fffed5b19              # double 0.57952880845809596
	.quad	0x3fda6f91470ef7ec              # double 0.41305953921607741
	.quad	0x3feea9a024b08f46              # double 0.95820624509767849
	.quad	0x3fe8d80339368e45              # double 0.77636872457919337
	.quad	0x3fd6189810fd2e5a              # double 0.34525109919625196
	.quad	0x3fd1dcb6c44c7c4a              # double 0.27909630937387375
	.quad	0x3fe077796bf071c1              # double 0.51458426553613645
	.quad	0x3fee31ede1e5c689              # double 0.94359487648598972
	.quad	0x3fea7f9b360a6f50              # double 0.82807694010578281
	.quad	0x3fa8dd5246e55a80              # double 0.048563548235212473
	.quad	0x3fd91ded1cbb7a30              # double 0.39245155149356759
	.quad	0x3fe3ea3488b82273              # double 0.62233950331672216
	.quad	0x3fd87159afa3547c              # double 0.38191835548543174
	.quad	0x3fdb104ca961adf8              # double 0.42286984006088302
	.quad	0x3fe8f032fcc51919              # double 0.77932118767856473
	.quad	0x3fecc3aeae77550c              # double 0.89888700557153944
	.quad	0x3fdc76217840b7e2              # double 0.44471012824476308
	.quad	0x3fcb1c17fc522518              # double 0.21179485149722477
	.quad	0x3fe5fbe8ae05c17c              # double 0.68700059880033804
	.quad	0x3fea9a09138048da              # double 0.8313031559830748
	.quad	0x3fe3790a7ac0059c              # double 0.60852550482393353
	.quad	0x3fe5e2f2ec75b175              # double 0.68395372565787105
	.quad	0x3feb15528531f9c3              # double 0.84635282530489808
	.quad	0x3fd0e2febfea5fbc              # double 0.26385468236685106
	.quad	0x3fead076207aa289              # double 0.8379469522815991
	.quad	0x3febdf31f2114bf9              # double 0.87099549559422862
	.quad	0x3fe2cb220342130b              # double 0.58729649196956879
	.quad	0x3fe5cc61139a4502              # double 0.68119863346706233
	.quad	0x3fee4e2c2242798e              # double 0.94704252902356401
	.quad	0x3fe8ff5d3fe46c63              # double 0.78117239455185616
	.quad	0x3fe66aa5f2a3c00e              # double 0.70051858320766924
	.quad	0x3fbb46837ebde900              # double 0.10654470295222396
	.quad	0x3fcb6c95397aeb1c              # double 0.2142511873879237
	.quad	0x3fe90089fa9cbff0              # double 0.78131579349246572
	.quad	0x3fe0eeb095c68e03              # double 0.52913693669364681
	.quad	0x3fddee8384b04c58              # double 0.46768272359731133
	.quad	0x3fd6cbf25ac528ba              # double 0.35619791855118488
	.quad	0x3fe73c27538e89b9              # double 0.7260929710358176
	.quad	0x3fe9ef7cfe7e563e              # double 0.8104844065262069
	.quad	0x3fef5133cf674ce9              # double 0.9786624003267238
	.quad	0x3fe5e90f02243ece              # double 0.68469953935888284
	.quad	0x3fec48da4faa8c85              # double 0.88389316139036167
	.quad	0x3fd1cfcdd2603c5a              # double 0.2783083490803101
	.quad	0x3feec64e627d3731              # double 0.9617072986236278
	.quad	0x3fe00a47b54099b3              # double 0.50125489617203411
	.quad	0x3fd2f4109e452c96              # double 0.29614654022288656
	.quad	0x3fa68ae1152b8630              # double 0.044028314432363991
	.quad	0x3feec352a6ee14ef              # double 0.9613431225158403
	.quad	0x3fd687befb6e30ce              # double 0.35203527978661675
	.quad	0x3fe1f45d5ae77146              # double 0.56107967142774196
	.quad	0x3fbe393d9872ac70              # double 0.11806092235444665
	.quad	0x3fe5e302738c0bd5              # double 0.68396112983497892
	.quad	0x3fef25ea12137bf4              # double 0.97337821512689837
	.quad	0x3fed9e98d84c7e93              # double 0.92560999151096934
	.quad	0x3fe6f5cadf1b549b              # double 0.7175039632371808
	.quad	0x3fe911fec42f4645              # double 0.78344667737310003
	.quad	0x3fecb5fd4dbaac7a              # double 0.89721551114543208
	.quad	0x3fdc7d46f2ac2820              # double 0.44514630983815273
	.quad	0x3fd95c6e2f05f466              # double 0.39626650421252518
	.quad	0x3fe47bbaee2d0244              # double 0.64010378378595378
	.quad	0x3fdb107d5a16461a              # double 0.42288144872245115
	.quad	0x3fe2281f0219958c              # double 0.56739759836334391
	.quad	0x3fed1aa694e3c7f9              # double 0.90950326042206975
	.quad	0x3fe7c696dfa1cbb6              # double 0.74299186399581774
	.quad	0x3fd15b0f27322958              # double 0.2711828120015034
	.quad	0x3feedf2d711042d9              # double 0.96474334795683625
	.quad	0x3fbc0d729722de28              # double 0.10958019437645616
	.quad	0x3fcb8b49f8a62d5c              # double 0.215188261423786
	.quad	0x3fba964575814498              # double 0.10385545843861832
	.quad	0x3fe1ab527d53db12              # double 0.55216335752524714
	.quad	0x3fd4caf13888579a              # double 0.32488661309013767
	.quad	0x3fb5cc99fbd753c8              # double 0.085153221115731204
	.quad	0x3fbcb0adafe8db90              # double 0.1120708994356916
	.quad	0x3fd5888a2fd82c16              # double 0.33645872757250694
	.quad	0x3fc272de5c11de70              # double 0.14413051124187204
	.quad	0x3fea7f00d52cb814              # double 0.82800332675629073
	.quad	0x3fecc3f895b1212e              # double 0.89892224537564913
	.quad	0x3fe68e8f24afcab4              # double 0.70490224042290217
	.quad	0x3fe45720a45d3720              # double 0.63563568212859778
	.quad	0x3fdbbbe186d79c20              # double 0.43334234398065696
	.quad	0x3f76c16993f81500              # double 0.0055555462017811141
	.quad	0x3feb07129224109e              # double 0.84461334746494621
	.quad	0x3fc406a34c654a94              # double 0.15645257215745245
	.quad	0x3fe55cda3c89bc7f              # double 0.66758453201136081
	.quad	0x3fea765f9964bcfd              # double 0.82694988212270426
	.quad	0x3fd96feeee846ee6              # double 0.39745686810213809
	.quad	0x3fddc73dc9fc241c              # double 0.4652857277401965
	.quad	0x3fe8fec97f88cb19              # double 0.7811019411950354
	.quad	0x3fd8b9a1b7acaf92              # double 0.38633006035774387
	.quad	0x3fe6d5824b5676d9              # double 0.71356310572056281
	.quad	0x3fd48e0a725575ac              # double 0.32116948285496494
	.quad	0x3fdcc4c2a9c612d6              # double 0.44950930194344829
	.quad	0x3fee8db12d0eb4cf              # double 0.95479639816553596
	.quad	0x3fe15133e17f1622              # double 0.54116243402740261
	.quad	0x3fc8b318968b7308              # double 0.19296557761017419
	.quad	0x3fadf0924ae35070              # double 0.058476039544672953
	.quad	0x3fe9861dd8d9a680              # double 0.79762165406755514
	.quad	0x3fe0544f0e947aac              # double 0.51029160354285841
	.quad	0x3fe432764a2a7322              # double 0.6311599205542715
	.quad	0x3fee93948fb0c6de              # double 0.95551517548139109
	.quad	0x3fdffa21f461a512              # double 0.49964188447354829
	.quad	0x3fb7159d697ec608              # double 0.090173567062059701
	.quad	0x3fd520f6d0e79b22              # double 0.33013697052813218
	.quad	0x3fc0617a1ebe8ffc              # double 0.12797476292791987
	.quad	0x3febaceebcb79322              # double 0.86485993250662241
	.quad	0x3fd9330b322cd42e              # double 0.39374046230233517
	.quad	0x3fdc172a16a72a96              # double 0.43891384327131655
	.quad	0x3fd07e25086baeec              # double 0.25769925901725688
	.quad	0x3fe9f31ce02e3675              # double 0.81092685494668493
	.quad	0x3fe87f8b5c0a387b              # double 0.76556938149020881
	.quad	0x3fc72dad34a60a00              # double 0.18108143873912752
	.quad	0x3fd189dec3e3b3d8              # double 0.27403992776708952
	.quad	0x3fbac207a07ef3e8              # double 0.10452315967900427
	.quad	0x3fdea57c0f31d7b4              # double 0.4788503788362235
	.quad	0x3fd321c369574752              # double 0.29893574988556282
	.quad	0x3fe0a2c5aff47eed              # double 0.51986965528700824
	.quad	0x3fc5896004c41e10              # double 0.16825485451430255
	.quad	0x3fde29bfc69ac844              # double 0.47129816431982285
	.quad	0x3fdb0dff47d470f6              # double 0.42272932066568047
	.quad	0x3fd374cc24f4ae00              # double 0.30400374993288892
	.quad	0x3fcd4b8e3afb886c              # double 0.22886827354438155
	.quad	0x3fb01bb665a82178              # double 0.062922859018845645
	.quad	0x3fe18b46110cd3e0              # double 0.5482511837968751
	.quad	0x3fe09145e45b2589              # double 0.517733522422689
	.quad	0x3fb711f754b13f38              # double 0.090117891480301249
	.quad	0x3f953de1f5af8220              # double 0.020743876095254632
	.quad	0x3fe5b94527f17755              # double 0.67886598397647424
	.quad	0x3fd0ecc62ca4109c              # double 0.26445154532871995
	.quad	0x3fec496735c63843              # double 0.88396034720222649
	.quad	0x3fdf79c457cc00de              # double 0.4918070657149779
	.quad	0x3fe46ba37ebb57a9              # double 0.63813948395067144
	.quad	0x3fc93363a989e6c8              # double 0.19688077715163943
	.quad	0x3fecb0e66a50c1f9              # double 0.89659424557436218
	.quad	0x3fe0cf2207b351e7              # double 0.52528478149411917
	.quad	0x3fd9b2303f833446              # double 0.40150076105493715
	.quad	0x3fe889ea967cbe18              # double 0.76683549301191345
	.quad	0x3fe9723199514e29              # double 0.7951896662220338
	.quad	0x3fee34d2ce664f00              # double 0.94394817650251639
	.quad	0x3fce902fdc46067c              # double 0.23877523665946743
	.quad	0x3fe103ac4f8a7701              # double 0.53169837508514217
	.quad	0x3feb88b920cba9f7              # double 0.86043983846076244
	.quad	0x3fec639611b1f87a              # double 0.88715651947110463
	.quad	0x3fc7be81f252c384              # double 0.18550133068267993
	.quad	0x3fd1192e952b25a8              # double 0.26716198508492051
	.quad	0x3fca542c75a90750              # double 0.20569377656107202
	.quad	0x3fd67a085f62bec0              # double 0.35119828524601004
	.quad	0x3fe9ca0015a2d828              # double 0.8059082434253968
	.quad	0x3fe46aa89bc36c9b              # double 0.63801985189947474
	.quad	0x3fd7545d70e7f4c0              # double 0.36452423120483601
	.quad	0x3feb3cb52ca1b4d6              # double 0.85116060940859017
	.quad	0x3fddcf74a7fc0320              # double 0.46578709034661081
	.quad	0x3fd6206f4ac03886              # double 0.34572965907944597
	.quad	0x3fef45a45c79a3c4              # double 0.97725122510484441
	.quad	0x3fb2ec7a9adf06d8              # double 0.073920882044173353
	.quad	0x3fe4939c27cd6590              # double 0.6430187966717984
	.quad	0x3fe0d34140f06be5              # double 0.52578795131136913
	.quad	0x3fda74aef2546306              # double 0.41337178864482416
	.quad	0x3f967fb6d2b0ae00              # double 0.021971565827852757
	.quad	0x3fe879270cc9a434              # double 0.76478912828054612
	.quad	0x3fe4623071cae9ed              # double 0.63698599076388762
	.quad	0x3fee7155bb9aef39              # double 0.95133482591288676
	.quad	0x3fef00ac12f54ef0              # double 0.96883205130367678
	.quad	0x3feb0d21aaef5c36              # double 0.84535296807997073
	.quad	0x3fd4de6cc6e0fe5c              # double 0.32607573911443466
	.quad	0x3fd01f6f37b78838              # double 0.25191860619645778
	.quad	0x3fc23d33f5a2bbfc              # double 0.14249276632241947
	.quad	0x3fe582aa35d1badd              # double 0.67220030318807356
	.quad	0x3fa8d89d0be14160              # double 0.048527629566367692
	.quad	0x3fed9d4a57e9b307              # double 0.9254504887627214
	.quad	0x3fdb5c6fd2f134fa              # double 0.42751689529252668
	.quad	0x3fcff1f1f184dfb0              # double 0.24957107823297298
	.quad	0x3fc90e4b86c0a29c              # double 0.19574874953948018
	.quad	0x3fd0a52a37419bee              # double 0.26008086582299839
	.quad	0x3fed12332f91505e              # double 0.9084716729216884
	.quad	0x3fd9d245f80a6ba2              # double 0.40345906470036585
	.quad	0x3fda27dd2757b236              # double 0.40868309824034854
	.quad	0x3f94d01c275383a0              # double 0.020325126552851125
	.quad	0x3fd5ba3f0c263de6              # double 0.33949257074797712
	.quad	0x3fe5e66e23b541d5              # double 0.68437869047380195
	.quad	0x3fec9627cae6a3f6              # double 0.89332952145662037
	.quad	0x3fd3e39e5edad008              # double 0.31076773894460574
	.quad	0x3fdfa41bb6826a04              # double 0.49439137290178814
	.quad	0x3fe5040de0777ccf              # double 0.6567448982349563
	.quad	0x3fd2b17019d19a64              # double 0.29207994958270533
	.quad	0x3fdb862d3a56c288              # double 0.43006449410589953
	.quad	0x3fee9ab2e09007fc              # double 0.95638412341963841
	.quad	0x3fe22b5eee7e1015              # double 0.56779429035714435
	.quad	0x3fe4c67914b13227              # double 0.64922765771331548
	.quad	0x3fe8d190834edd73              # double 0.77558160444361446
	.quad	0x3feb114c647e1ad2              # double 0.8458616221185713
	.quad	0x3fe031c11fbb3d77              # double 0.50607353398838384
	.quad	0x3fd775c238c5dfb4              # double 0.36656241935952072
	.quad	0x3fce8b40e4488c6c              # double 0.23862467905664475
	.quad	0x3fcd7ebcd57ca978              # double 0.23043022560279858
	.quad	0x3feaee4cfa1d2771              # double 0.84158943987243451
	.quad	0x3fc5b0c8c9532808              # double 0.16945752935708946
	.quad	0x3fcfaed692c7d968              # double 0.24752313773178547
	.quad	0x3feb2b07d1702f6f              # double 0.84900275140669901
	.quad	0x3fd6672591ab41c0              # double 0.35004557824597882
	.quad	0x3fee2c90f8ba43ed              # double 0.94294022159203694
	.quad	0x3fc5f2a47c83cd9c              # double 0.17146736221148451
	.quad	0x3fe7248bcf350c3b              # double 0.72321119756850949
	.quad	0x3fc96da5b907e360              # double 0.19865867171008755
	.quad	0x3fe94bb1d635c8f0              # double 0.79049007261190063
	.quad	0x3fa625c3ed2a3730              # double 0.043256876660150545
	.quad	0x3feab579fd372af4              # double 0.8346528955092638
	.quad	0x3fd90c5cb433cf1a              # double 0.39137952421082078
	.quad	0x3fca9830c919067c              # double 0.207769487564338
	.quad	0x3fe0be4c870cdb67              # double 0.52322985054966586
	.quad	0x3fdef19f52d19128              # double 0.48349745834117863
	.quad	0x3fef62a35b2aaf58              # double 0.98079078489306947
	.quad	0x3fe654c9cece7cfb              # double 0.697850135726099
	.quad	0x3fd2ec9fd58e4206              # double 0.29569240431831678
	.quad	0x3fdc5470f224f980              # double 0.44265388152043528
	.quad	0x3fd6bedcaa0c425e              # double 0.35539929014433891
	.quad	0x3fcd7cd52b87634c              # double 0.23037209153587879
	.quad	0x3fec6b45e91b4877              # double 0.88809485939624622
	.quad	0x3fd6275378ab6d4e              # double 0.34615027221817207
	.quad	0x3fd873581aa64d40              # double 0.38204004862310015
	.quad	0x3fb1fb22378a82e8              # double 0.070238245544270606
	.quad	0x3fe3e55ef236220b              # double 0.62174937540936648
	.quad	0x3feb0db691946b30              # double 0.84542396958872779
	.quad	0x3fe66ffa163f4f71              # double 0.70116905541588725
	.quad	0x3fdb521bb831db2a              # double 0.42688649165886494
	.quad	0x3fddc66da9f816cc              # double 0.46523610685867989
	.quad	0x3fee7ac4d875e53e              # double 0.95248644139716254
	.quad	0x3fe2039f4b6b178c              # double 0.5629421685232372
	.quad	0x3fee7140a8675972              # double 0.95132477656697589
	.quad	0x3fd9c53fc17e83d0              # double 0.4026641263572488
	.quad	0x3fe21e5ffb95a011              # double 0.5662078775176288
	.quad	0x3feb99c813752c72              # double 0.86252216148694871
	.quad	0x3f8c721ba5f9b140              # double 0.013889518740335505
	.quad	0x3fed48ea0ddf63e0              # double 0.91515066823478363
	.quad	0x3fbf039f82816058              # double 0.12114903389135756
	.quad	0x3fee485d1cd528e5              # double 0.94633346206071833
	.quad	0x3fe4ef9f63a0cf68              # double 0.65425080736757213
	.quad	0x3fed96a604589489              # double 0.92463970993834821
	.quad	0x3fd94ba401abdf02              # double 0.39524173892230874
	.quad	0x3fe9ef1f15ac967f              # double 0.8104396270106945
	.quad	0x3fe7fcfe2a2a9ec5              # double 0.74963291392938258
	.quad	0x3fec92ba4d6d990f              # double 0.89291110155753184
	.quad	0x3fe2f1fa77624f1e              # double 0.59203837697211603
	.quad	0x3fc2f3b38fb93600              # double 0.14806217687366541
	.quad	0x3fd17ed6a1d5e2a8              # double 0.27336660198447271
	.quad	0x3fd7e64c33933284              # double 0.37343125378246378
	.quad	0x3fc7789f0da6baf8              # double 0.18336857000891604
	.quad	0x3fef29195493dc05              # double 0.97376696127946671
	.quad	0x3feada664796e6e5              # double 0.83916009886089837
	.quad	0x3fa157ca94667950              # double 0.033872919669408419
	.quad	0x3fee17b957e61f0e              # double 0.94039599578624844
	.quad	0x3fe4cec468d2906c              # double 0.65024013970515915
	.quad	0x3fe80b426cc4b0f8              # double 0.75137444728673497
	.quad	0x3fd1f7ea135a087e              # double 0.28075649156392746
	.quad	0x3fe4b68103f4ab96              # double 0.64727831623655407
	.quad	0x3fc7e4b9d826779c              # double 0.18666766218387643
	.quad	0x3fe0dc671960ad44              # double 0.52690463024684009
	.quad	0x3fe50c3da0313639              # double 0.65774422919793729
	.quad	0x3fcc6e319053fb90              # double 0.22211284205692694
	.quad	0x3fd127290648aec6              # double 0.26801515210784677
	.quad	0x3fd52e744122cd2a              # double 0.33096033440524997
	.quad	0x3fefe7c671476603              # double 0.99704286694321841
	.quad	0x3fde1b2ffe5d56aa              # double 0.47040939178746533
	.quad	0x3f962e3b0a71b060              # double 0.021660730850655674
	.quad	0x3fd60a95ae136c0a              # double 0.34439603805157104
	.quad	0x3fd37861d8e85220              # double 0.30422254736302712
	.quad	0x3fc85f53efa33950              # double 0.19040917588285788
	.quad	0x3fde9c5b8462ff98              # double 0.47829330376043222
	.quad	0x3fda89e9a381870a              # double 0.41466752021197861
	.quad	0x3fe26644f8185ff8              # double 0.5749840589151054
	.quad	0x3fe37c2a9421ac84              # double 0.60890702182713641
	.quad	0x3fed8037b37b577b              # double 0.92190156035461202
	.quad	0x3fc6e8efe49de254              # double 0.17898367560316564
	.quad	0x3fdef47e00dd5f40              # double 0.4836726196713137
	.quad	0x3fe234bdfb8224d9              # double 0.56893824694375461
	.quad	0x3fd0ae3ca92e69a4              # double 0.26063457986460947
	.quad	0x3fee797acadf177a              # double 0.95232905982332672
	.quad	0x3fe8d9f34abdf9ad              # double 0.7766052684599366
	.quad	0x3fc08724605a27c8              # double 0.12912420944877412
	.quad	0x3fe0a25604549f1d              # double 0.51981640668688878
	.quad	0x3fb498b5cd03b698              # double 0.080455172111863482
	.quad	0x3fe67e584ba8b0bd              # double 0.70292296197069215
	.quad	0x3fd3faf559ef794a              # double 0.31219228537328958
	.quad	0x3fe4265bd47b7551              # double 0.62968245983544524
	.quad	0x3f88f7d775a169c0              # double 0.012191470410631733
	.quad	0x3feef73ffa8700f6              # double 0.96768187457203569
	.quad	0x3fd948c3ade4115a              # double 0.39506618482143596
	.quad	0x3fdd4a83a817133c              # double 0.45767299094250169
	.quad	0x3fec44fac065a28e              # double 0.88342034890691123
	.quad	0x3fc09d8496f08964              # double 0.12980706567857248
	.quad	0x3fe1d7f5a9104b3b              # double 0.55761225719684349
	.quad	0x3fc910e0f7bb0c58              # double 0.19582759948943607
	.quad	0x3fe3e99d37668939              # double 0.62226734943786888
	.quad	0x3fc23ad3e1bcc434              # double 0.14242027780849897
	.quad	0x3fe79977aeb920e4              # double 0.7374838268815691
	.quad	0x3fd27361b618d8f0              # double 0.28829233916202579
	.quad	0x3fe2d4703841a067              # double 0.58843241679734326
	.quad	0x3fe20e4908c362f3              # double 0.56424380981033406
	.quad	0x3fe74b619a650096              # double 0.72795181422408706
	.quad	0x3fbf20d9464bcca8              # double 0.1215949818250005
	.quad	0x3fc2ac68ef16f3b8              # double 0.14588653253841044
	.quad	0x3fe9dcb065fdb2a2              # double 0.80818958206289815
	.quad	0x3f886628fde28b40              # double 0.011913604972794922
	.quad	0x3fdbd9d71fc6a47c              # double 0.43517091849441392
	.quad	0x3fea6d451c6ab7c6              # double 0.82583861875695486
	.quad	0x3fecf388b082e240              # double 0.90472826456886679
	.quad	0x3fe1b7bf65911976              # double 0.55368013226761437
	.quad	0x3fed0b8d0c500a34              # double 0.90766003041091503
	.quad	0x3fdec4daa8415fc8              # double 0.48076502257526643
	.quad	0x3fe255f8063f43ca              # double 0.57299424381391728
	.quad	0x3f8fc28c3eddeb80              # double 0.015507789295716057
	.quad	0x3f95bf211157ce80              # double 0.021236912425548926
	.quad	0x3f8aa34ef6edbc00              # double 0.013006798659004559
	.quad	0x3fc76bdf7ff31d38              # double 0.18297952411215035
	.quad	0x3fbe311107b8c7c8              # double 0.11793619574089498
	.quad	0x3fc212efd0b427ac              # double 0.14120290461170037
	.quad	0x3fb7f009cb254b48              # double 0.093506443115342397
	.quad	0x3feb35dd41cdcf43              # double 0.85032523014385963
	.quad	0x3fbf8d5d7c800848              # double 0.12325081147722117
	.quad	0x3fcb5251c90b92a8              # double 0.2134496909776733
	.quad	0x3fe5eb8af055eef0              # double 0.68500277462541526
	.quad	0x3fdc49b7295521d2              # double 0.44199923550015996
	.quad	0x3fbf75c730e5fdd0              # double 0.12289090102966971
	.quad	0x3fe7cc20fb44dbda              # double 0.74366807056400863
	.quad	0x3fecaae21f84190b              # double 0.8958597770258917
	.quad	0x3fd0731f4b5d6d2c              # double 0.2570265041337787
	.quad	0x3fdaf97490ecc24a              # double 0.42147554543320054
	.quad	0x3fe2c7d33739f1cd              # double 0.58689270769496604
	.quad	0x3fc85f2b700516c0              # double 0.19040434808464646
	.quad	0x3fdabaffbb150586              # double 0.4176635100339684
	.quad	0x3fec7a9e61b52efd              # double 0.88996810039085938
	.quad	0x3fc0bcb55cac71fc              # double 0.13075892472342321
	.quad	0x3fa6b8e22ff8bd20              # double 0.044379299503243042
	.quad	0x3fd04266051b0046              # double 0.25405264376241055
	.quad	0x3fa6f7cd70961130              # double 0.044859333032066906
	.quad	0x3fc04c8a29fc0808              # double 0.12733580637001318
	.quad	0x3fe864a332d0c7b9              # double 0.76228485035812021
	.quad	0x3fdda2bb66cab4ba              # double 0.4630573753191346
	.quad	0x3fd599ac90aa6aa2              # double 0.33750452163227795
	.quad	0x3fe28b13098fe018              # double 0.57947685115414327
	.quad	0x3fe5fea96a70684f              # double 0.68733664311299403
	.quad	0x3fe1770d98a13aba              # double 0.54578285036571761
	.quad	0x3fe82e8194f997a4              # double 0.75567702385591362
	.quad	0x3fe2f8e1a4e617ef              # double 0.59288103300855066
	.quad	0x3fce8f78d9958428              # double 0.23875342010708889
	.quad	0x3fb538608815e388              # double 0.082891495918273717
	.quad	0x3fd6ae8e2b327144              # double 0.35440401285611167
	.quad	0x3fe44b9ad77cdffe              # double 0.63422910773715535
	.quad	0x3fe77bc4f9f96d20              # double 0.73385857413396493
	.quad	0x3fad3c267dff5730              # double 0.057099535828156411
	.quad	0x3fd605b667937802              # double 0.34409866442535997
	.quad	0x3fc08f1d2cd2e7e8              # double 0.12936749161400418
	.quad	0x3fd2441e58e1f328              # double 0.2854076259607603
	.quad	0x3fe20c462587556b              # double 0.56399829225362674
	.quad	0x3fe0c188e594a244              # double 0.52362484779320839
	.quad	0x3fee53f2aabdc77d              # double 0.94774754856028631
	.quad	0x3fc5b7a337ba2c28              # double 0.16966667386108836
	.quad	0x3fb22e5226ef49f8              # double 0.071019300942943064
	.quad	0x3fd229a047278b3e              # double 0.28379065464666897
	.quad	0x3fecb84141cfa284              # double 0.8974920544979601
	.quad	0x3fd8e91394db114e              # double 0.38922585999195725
	.quad	0x3fe54dde6382b0dd              # double 0.66575545726439211
	.quad	0x3fa4d3d2437a1730              # double 0.040678568589142095
	.quad	0x3fd24187dacd69c4              # double 0.28524967544003865
	.quad	0x3fe5393b9f7c1efb              # double 0.66323643826851197
	.quad	0x3feea7881ffae72d              # double 0.95795065160857506
	.quad	0x3fd2e04024d029be              # double 0.29493716807396797
	.quad	0x3fd3ae4356aa7f90              # double 0.30751117194631039
	.quad	0x3fd6359846a120a6              # double 0.34702116868403221
	.quad	0x3fd42ca1f2eb0f2a              # double 0.31522415850143892
	.quad	0x3fd6f860543a7dd0              # double 0.35890968537748069
	.quad	0x3fdaf5b645757860              # double 0.42124707015125828
	.quad	0x3fc2634884945b9c              # double 0.14365488504037394
	.quad	0x3fd54e79a0a975d2              # double 0.33291474046367597
	.quad	0x3fe6016134c6e1ce              # double 0.68766842182145083
	.quad	0x3feea8d287c22976              # double 0.95810820117303197
	.quad	0x3fd284bdf822b64c              # double 0.28935193283073057
	.quad	0x3fec173e87896ff9              # double 0.87783743354839239
	.quad	0x3fd11168d0bae4d2              # double 0.26668758758348787
	.quad	0x3fa5cb6565024760              # double 0.042567413883388694
	.quad	0x3fe4ac2f13980726              # double 0.64601854159284211
	.quad	0x3fc256d1a9e901bc              # double 0.14327450558086052
	.quad	0x3fed5878e75e648b              # double 0.91704983891681147
	.quad	0x3fe9bca05abb0b89              # double 0.80427568169430785
	.quad	0x3fe5acfba5e51ba2              # double 0.67736608888013827
	.quad	0x3fd3a5f8a140fd6e              # double 0.3070050787682338
	.quad	0x3fe8d5a12cfce28b              # double 0.77607783114133733
	.quad	0x3fe003afaf4e388e              # double 0.50044998397221874
	.quad	0x3fd05c2e4c408a96              # double 0.25562627264495441
	.quad	0x3fe708ddd44ddc60              # double 0.7198323389592467
	.quad	0x3fded88cbeb13ce4              # double 0.48196714994715095
	.quad	0x3fbecbf0b9efa038              # double 0.12029938258604111
	.quad	0x3feb1188e5d0791c              # double 0.84589047322859611
	.quad	0x3fe1af820c8b33a7              # double 0.55267431688263435
	.quad	0x3fe506254f6846af              # double 0.65700021275752885
	.quad	0x3fe0e1ad220eb4fb              # double 0.5275483765778114
	.quad	0x3fe2611e33713626              # double 0.57435522124587091
	.quad	0x3fe3da11137b2ff2              # double 0.62036947064325276
	.quad	0x3fc0b5a6576bb66c              # double 0.13054351109115048
	.quad	0x3fee6e8a7e310c23              # double 0.9509937729529877
	.quad	0x3fc8eddff277cb80              # double 0.19475936259513205
	.quad	0x3fe6788717c73504              # double 0.70221285480661821
	.quad	0x3fb58e21056f2c38              # double 0.084199966265416815
	.quad	0x3fe367298aebdccb              # double 0.60634305127214227
	.quad	0x3f6af836699c2400              # double 0.0032921850914857664
	.quad	0x3fe97598158c7d95              # double 0.79560474594829833
	.quad	0x3fe69507442923bb              # double 0.70569194138180735
	.quad	0x3fee4cb999af06a4              # double 0.94686584488245673
	.quad	0x3fee61e250077a2c              # double 0.94944873457626988
	.quad	0x3fd36b948d049304              # double 0.30344117900158118
	.quad	0x3fc86658f3b8f73c              # double 0.19062339687837404
	.quad	0x3fd51fc24d79598a              # double 0.33006341520140181
	.quad	0x3fe870a51f29d160              # double 0.76375061117736819
	.quad	0x3fe344aac9fe248a              # double 0.60213221980770126
	.quad	0x3fd8eaf6d03c2cf8              # double 0.38934107146697228
	.quad	0x3fd4f51afcc6b4e6              # double 0.32746004758048597
	.quad	0x3fb5f146120f1dd8              # double 0.08571279469389681
	.quad	0x3fda6b50ce03ca5a              # double 0.41280002707131802
	.quad	0x3fb222412138c218              # double 0.070835180865067904
	.quad	0x3fe06c90e733f9b0              # double 0.51325268894998111
	.quad	0x3f9da53d7e817780              # double 0.028950653883263566
	.quad	0x3fc04b17b6f70af8              # double 0.12729164537275728
	.quad	0x3fd07ff54e3f07a8              # double 0.25780995026809217
	.quad	0x3fe3af6fcb5a1810              # double 0.61516561238454592
	.quad	0x3fd34aba6ff49c9a              # double 0.30143605168491094
	.quad	0x3fe8f2c4683a7937              # double 0.77963466984855401
	.quad	0x3fe9d2a90c6d9871              # double 0.80696537425389014
	.quad	0x3fd0a3d10eeb2850              # double 0.25999857384579617
	.quad	0x3fe705c41516b18a              # double 0.71945385092617298
	.quad	0x3fe3b92fe7ae77e9              # double 0.6163558506993897
	.quad	0x3feb68602bd93449              # double 0.85649117054129775
	.quad	0x3fafe98e88c7d280              # double 0.062328771778912717
	.quad	0x3f889e4df14e0a40              # double 0.012020691801585603
	.quad	0x3fe5abe26782e213              # double 0.67723198144000418
	.quad	0x3fcd90f3b683c460              # double 0.23098608409739807
	.quad	0x3fca59c64242c1a8              # double 0.20586469874753033
	.quad	0x3fef8ce6f3fbc3bf              # double 0.98594997075098678
	.quad	0x3fde1b707e611f7c              # double 0.47042476979958514
	.quad	0x3fe300d9d526c13d              # double 0.59385387068872542
	.quad	0x3fd46e5185e34d32              # double 0.31923330378522785
	.quad	0x3fd39d50af520cf6              # double 0.30647675629752713
	.quad	0x3fec892be77e0b9e              # double 0.89174456799843305
	.quad	0x3fe7a7fdb9196004              # double 0.73925672676250587
	.quad	0x3fd2e2c8f7ed99ac              # double 0.29509185992938103
	.quad	0x3fe41c51bc44872b              # double 0.62845694323570933
	.quad	0x3fe00a74968c42ad              # double 0.50127629665265305
	.quad	0x3fb7e5ca5cb32f20              # double 0.093350074416943318
	.quad	0x3fe429b3c64be47c              # double 0.63009060601974864
	.quad	0x3fe8792703ca9088              # double 0.76478911152345663
	.quad	0x3fd3c28aac645c54              # double 0.30874888262900879
	.quad	0x3fe2505f8f90afe0              # double 0.5723111919410222
	.quad	0x3fecc970d8cbeb8d              # double 0.89958994238928514
	.quad	0x3fd7e19fef800bfe              # double 0.37314604176225419
	.quad	0x3feb808d03af3b6c              # double 0.85944224090222354
	.quad	0x3fdc86afe79e585a              # double 0.44572064990041371
	.quad	0x3fb698f91d345ef0              # double 0.088271684293768748
	.quad	0x3fd35d94b50d53d8              # double 0.30258672409882825
	.quad	0x3fdfaf248177fc5c              # double 0.4950648559897155
	.quad	0x3fef6a86d9ce2fe7              # double 0.98175375499840533
	.quad	0x3faf7fec0e211880              # double 0.061522843098416935
	.quad	0x3fb68ca492d309c8              # double 0.08808353981570527
	.quad	0x3fe4545cfa6f2557              # double 0.63529824173853455
	.quad	0x3f53a04c535d2200              # double 0.0011978860251976586
	.quad	0x3fe37a9d748eaa18              # double 0.60871765866369554
	.quad	0x3fe8911348545a14              # double 0.76770938994269721
	.quad	0x3fe4d219e125c129              # double 0.65064710592381403
	.quad	0x3fe67a9961511d17              # double 0.7024657154769639
	.quad	0x3feff9a6ab1cf778              # double 0.99922498150384253
	.quad	0x3fedda9b2aa3bee8              # double 0.93293531730702473
	.quad	0x3fc25296491a55b8              # double 0.14314535684085938
	.quad	0x3fc8ecf1bb0e8fe8              # double 0.19473096498143083
	.quad	0x3fee9e8df9135f59              # double 0.95685480735390194
	.quad	0x3fefa3a16709b7cf              # double 0.98872442364312884
	.quad	0x3feb7c7a86913801              # double 0.85894514353435636
	.quad	0x3fefa7d1862a4b18              # double 0.98923565105573896
	.quad	0x3fa93dd811315650              # double 0.049299957369538405
	.quad	0x3fe58c15fd46f4a9              # double 0.67335032909581571
	.quad	0x3fb23c4ee2f0a5b8              # double 0.071232729344635426
	.quad	0x3fb7e52da23b6320              # double 0.093340732676904015
	.quad	0x3fdab996f60a1d80              # double 0.4175774958352676
	.quad	0x3fe03a314e11e93d              # double 0.5071035885623939
	.quad	0x3fe671a61622414f              # double 0.70137314150819374
	.quad	0x3fc17428407b8658              # double 0.13635733746109469
	.quad	0x3fe8df7121c7e28c              # double 0.77727562520802129
	.quad	0x3feb4c2ba8c18578              # double 0.85304816208024103
	.quad	0x3fe1d9016129a3fe              # double 0.55773991562921288
	.quad	0x3feec831a2ce7944              # double 0.96193773077155997
	.quad	0x3fc3a1ea848afa94              # double 0.15337878677197081
	.quad	0x3feffa73c3195deb              # double 0.9993227777985657
	.quad	0x3fee3f46db6cf39e              # double 0.94522421700058934
	.quad	0x3fb371a678281230              # double 0.075952915511216856
	.quad	0x3fd5aa7f312ef488              # double 0.33853130152767408
	.quad	0x3fe3cb6e06653dda              # double 0.61858273743740289
	.quad	0x3fc36d57312f3c54              # double 0.15177431012714016
	.quad	0x3fc4e4ca43c2e36c              # double 0.16323211964279538
	.quad	0x3fbb8e89629c2428              # double 0.10764368684262193
	.quad	0x3fbe15bc944a38d8              # double 0.11751917476997009
	.quad	0x3fe7b1754eda87cb              # double 0.74041238213634963
	.quad	0x3fd32f7bd8e2c832              # double 0.29977317981968377
	.quad	0x3fd05f97ef5865d4              # double 0.25583456395687887
	.quad	0x3fd812b0311ea590              # double 0.37614064022872018
	.quad	0x3fd9b6a5eb1b197c              # double 0.40177295646244437
	.quad	0x3fbbfd8a835e2058              # double 0.10933747966021323
	.quad	0x3fecf314cd3b8402              # double 0.90467300495595304
	.quad	0x3fe5cdb0f5b141ed              # double 0.68135879504012353
	.quad	0x3fe7545bc3a6ca40              # double 0.72904766286075784
	.quad	0x3fe8c9c3fe9d045e              # double 0.77462959031266698
	.quad	0x3fc1d857c3a6163c              # double 0.13941475918925217
	.quad	0x3fe3d8c99e98d1f4              # double 0.62021332717864519
	.quad	0x3fcb6accc76c3d94              # double 0.21419677483980293
	.quad	0x3fefd0ca7f2ff095              # double 0.99423718301069874
	.quad	0x3fdc0bef5fa4f30e              # double 0.4382284578348824
	.quad	0x3fb828eceb280190              # double 0.09437447301025359
	.quad	0x3fdce433ddb8e55e              # double 0.45142838146747077
	.quad	0x3fe5ce4939a60cb7              # double 0.68143140086649268
	.quad	0x3fb2a0a80db1dda0              # double 0.072763923018888566
	.quad	0x3fb742317bb95298              # double 0.090853779512438115
	.quad	0x3fefaf3f67921087              # double 0.99014253834367671
	.quad	0x3fda495df8e6b988              # double 0.41072797114147663
	.quad	0x3fe0fdae36b57cfe              # double 0.53096686063136622
	.quad	0x3fe41eb40b7d4247              # double 0.62874796146395162
	.quad	0x3fca7851137497f4              # double 0.20679677438710053
	.quad	0x3fdbf94e480f311c              # double 0.43709141766591286
	.quad	0x3fe6d28cd5a88e09              # double 0.71320192079696298
	.quad	0x3fc34278966c7aac              # double 0.15046603531751168
	.quad	0x3fc5da97675bd5ac              # double 0.17073338076413103
	.quad	0x3fdf5e5771c4c760              # double 0.4901331530592099
	.quad	0x3fdedad891ec1910              # double 0.48210729837627841
	.quad	0x3fea2396f3fd2f6c              # double 0.81684444097616681
	.quad	0x3fbab75a5ada15d0              # double 0.10436024396957255
	.quad	0x3fe230a722a268fb              # double 0.56843907131704385
	.quad	0x3fed5f85de211b17              # double 0.91791051277764069
	.quad	0x3fe89d6453af1c44              # double 0.76921287865196363
	.quad	0x3fa9637b1b11ed30              # double 0.04958710389561316
	.quad	0x3fe9ff24b0f35b2f              # double 0.81239542542139087
	.quad	0x3fc7e078c0c3a950              # double 0.18653783237761923
	.quad	0x3feff054951b1795              # double 0.99808720705253739
	.quad	0x3fdb9e6b67285638              # double 0.43154416154843345
	.quad	0x3fe253780a5beda7              # double 0.5726890756918025
	.quad	0x3fda0e888457714c              # double 0.40713704036695186
	.quad	0x3fd39d8f6fb08078              # double 0.30649171740697723
	.quad	0x3fcd50bf84e812c0              # double 0.22902673711373289
	.quad	0x3fee5a1c2cc617db              # double 0.94849976296313387
	.quad	0x3fbf18f2dfc70db0              # double 0.12147443736380725
	.quad	0x3fdda6bdd48775e4              # double 0.46330209498213848
	.quad	0x3fea8e118209a450              # double 0.82984233282071251
	.quad	0x3fef05a4e79c6699              # double 0.96943898426544017
	.quad	0x3fe3c96bb629459b              # double 0.61833749369013746
	.quad	0x3fef03ec466dc2ce              # double 0.96922887569061245
	.quad	0x3fd9350c69187180              # double 0.39386282218199398
	.quad	0x3fdc4f20c5873e52              # double 0.44232959070084121
	.quad	0x3fd6241243556f2c              # double 0.34595161986884437
	.quad	0x3fe62dddbb52539c              # double 0.69309889398811064
	.quad	0x3fe9f3203fae31d3              # double 0.81092846334063962
	.quad	0x3fc66e0da7161d4c              # double 0.17523356112017507
	.quad	0x3fedd48e2067fb35              # double 0.93219667748767299
	.quad	0x3fe81d533e2d2b35              # double 0.75357973235927622
	.quad	0x3fccc86952329aec              # double 0.22486607087667865
	.quad	0x3fdc8f29aea9c030              # double 0.44623796517317071
	.quad	0x3fb367e7730e8158              # double 0.075804200735097083
	.quad	0x3fed34e9535ab0b1              # double 0.91270891456726677
	.quad	0x3f708866e51fde80              # double 0.0040363330208418313
	.quad	0x3fed7435c54e7cf2              # double 0.92043579613155502
	.quad	0x3fd4a66fae0bd426              # double 0.32265846249294083
	.quad	0x3fef1e3f50acbc80              # double 0.97244230038440094
	.quad	0x3fe159ba53b5647a              # double 0.54220310544327721
	.quad	0x3fdfa43f41bbc076              # double 0.49439984721448782
	.quad	0x3fe88d640cd18e2a              # double 0.76725962165477779
	.quad	0x3fc6a7ef361cd628              # double 0.17699995176524053
	.quad	0x3fedc532bd0a275a              # double 0.93032204553422138
	.quad	0x3fbd094c418bad20              # double 0.11342312431559209
	.quad	0x3fcedad143db21d4              # double 0.24105277837067141
	.quad	0x3fe9617dbceecf31              # double 0.79315077687213009
	.quad	0x3fc65dbe70ce68e4              # double 0.17473583706016094
	.quad	0x3fec2253b757d557              # double 0.87919030961226496
	.quad	0x3fbe97437aedad18              # double 0.11949559928114117
	.quad	0x3fe6705fee4a5fca              # double 0.70121761838071817
	.quad	0x3fed0f263e5f2959              # double 0.90809929067590212
	.quad	0x3fea5381000b11eb              # double 0.822693348011453
	.quad	0x3fd2bda0f271c874              # double 0.29282401729790952
	.quad	0x3fe4f7f0efa95a06              # double 0.65526625450985487
	.quad	0x3fb1368c644d0cf0              # double 0.067238592612784975
	.quad	0x3fe5f13772038708              # double 0.68569538372341388
	.quad	0x3fb9f9d901de5be8              # double 0.10146862311954374
	.quad	0x3fd505135ee28550              # double 0.32843479410265264
	.quad	0x3fc901fed92cd9d0              # double 0.19537339786775343
	.quad	0x3fd17e657cca6220              # double 0.27333962618425467
	.quad	0x3fe278f9d5752160              # double 0.57726756754804498
	.quad	0x3fdc961c75ada5d2              # double 0.44666205875418286
	.quad	0x3fcdac5f6bb1e8b8              # double 0.23182289846937976
	.quad	0x3fe630eba21a6e3d              # double 0.69347173367299997
	.quad	0x3fc8b29a7736b840              # double 0.19295054265006861
	.quad	0x3fe6187a444c0b3e              # double 0.69048798884646323
	.quad	0x3fe6d6e1fc39aa79              # double 0.71373080504174802
	.quad	0x3fdfb78ec6ea15e4              # double 0.49557847428545032
	.quad	0x3fe773716fe610ca              # double 0.73284217696393594
	.quad	0x3fa1ae528ac4d7d0              # double 0.034533099593701544
	.quad	0x3fd3d875f682c462              # double 0.31008671830483625
	.quad	0x3fc0d0202747b900              # double 0.13135148923851858
	.quad	0x3fe323ed933a6557              # double 0.59813574557771687
	.quad	0x3fe4f631f8785c09              # double 0.65505312470747967
	.quad	0x3fe6d6c8a3907d9a              # double 0.71371871896910766
	.quad	0x3feecb52a5461616              # double 0.96231968193086703
	.quad	0x3feb39ff7ca1bc9e              # double 0.8508298334326303
	.quad	0x3fee23511de06b05              # double 0.94181114039687996
	.quad	0x3fbe10dd3c28ace0              # double 0.11744482725832794
	.quad	0x3fee1b961719a1c2              # double 0.94086746703856527
	.quad	0x3fe3e856aa6fda1a              # double 0.62211163795911095
	.quad	0x3fe30f89b9ab9d0e              # double 0.59564672721617895
	.quad	0x3fe66bd329468038              # double 0.70066221295929321
	.quad	0x3fef28eabecd7788              # double 0.97374474779256647
	.quad	0x3fe3a71213cf0174              # double 0.61414436215277002
	.quad	0x3feeb3a6cdb456b7              # double 0.95943012406015426
	.quad	0x3fd6925129b0f0ba              # double 0.35268048354533799
	.quad	0x3f9b47364c07cba0              # double 0.026638840094118543
	.quad	0x3fe9f258a86c35e4              # double 0.81083329100664203
	.quad	0x3fc66bde23ddb638              # double 0.17516686202309173
	.quad	0x3fc3a2c31b0915c4              # double 0.15340460605709272
	.quad	0x3fdc1661802e2f08              # double 0.43886601941697778
	.quad	0x3fe4819c42b06a8b              # double 0.64082158112735621
	.quad	0x3fc03e29d617e4c0              # double 0.12689707711959919
	.quad	0x3fedcc77d5c9f88e              # double 0.93120948558477479
	.quad	0x3fc99fc3d2c5fce8              # double 0.20018813888234566
	.quad	0x3fea838e6d4df832              # double 0.82855912540958898
	.quad	0x3fc60e2432d77f1c              # double 0.17230656130322408
	.quad	0x3fbd6d9447b353d0              # double 0.11495329618931227
	.quad	0x3fccbf30f9b14e24              # double 0.22458469573995032
	.quad	0x3fde59a9745215f2              # double 0.47422252997816294
	.quad	0x3fe5a2fc75784c67              # double 0.67614577239363605
	.quad	0x3fb7c010046d2890              # double 0.09277439220491801
	.quad	0x3fd813c2dcbebb52              # double 0.37620612675794007
	.quad	0x3fe864ae58ee6535              # double 0.76229016656285487
	.quad	0x3fe3c8cc21259328              # double 0.61826139902095623
	.quad	0x3fe23559b6373209              # double 0.56901250447259699
	.quad	0x3feb555f5ceb2c92              # double 0.85417144916699983
	.quad	0x3feac9c744d2a7db              # double 0.83713115159957441
	.quad	0x3fe021bccbcd9451              # double 0.5041183453109942
	.quad	0x3fcdc39cb0621108              # double 0.23253210651831346
	.quad	0x3fcf865b76e51484              # double 0.24628775887882537
	.quad	0x3fa5d4b984d0eba0              # double 0.042638585532095208
	.quad	0x3fdc7ad27fabe398              # double 0.44499647586740698
	.quad	0x3fd37a16d323529a              # double 0.30432673090880658
	.quad	0x3fdaf77f5b3749e4              # double 0.42135604770478907
	.quad	0x3f99c572b107a400              # double 0.025167266898197482
	.quad	0x3fece2fc87191b56              # double 0.90270830522863821
	.quad	0x3fefa5a3280bcb75              # double 0.9889694006109112
	.quad	0x3fdd19326c957966              # double 0.45466290096182715
	.quad	0x3fda5458b841efa0              # double 0.41139810556318857
	.quad	0x3fd88c245079ac4c              # double 0.38355357989229755
	.quad	0x3fd6192f5799240a              # double 0.34528716616165467
	.quad	0x3fb4e5c51dd62ef0              # double 0.081631011757220539
	.quad	0x3feb729be768212e              # double 0.85774035641319357
	.quad	0x3fa82e89d01bb5d0              # double 0.047230059293592697
	.quad	0x3fedfa775640a3e2              # double 0.93682448240462812
	.quad	0x3fad4236bd287240              # double 0.057145796385360104
	.quad	0x3fe033ab3d5149ea              # double 0.50630723930436017
	.quad	0x3fb6ca0cd967caa8              # double 0.089020541265009911
	.quad	0x3fb5b0ec92ca3f80              # double 0.084730897748384492
	.quad	0x3fe3cb38f9cbbc8e              # double 0.61855744159937998
	.quad	0x3fada634b5831920              # double 0.057908675343741445
	.quad	0x3fed1b2c7c2695c5              # double 0.90956711052120254
	.quad	0x3fc092b26f792620              # double 0.12947683756856154
	.quad	0x3fbc6be84ff2c578              # double 0.11102153732169551
	.quad	0x3fe56fc92bb3cff0              # double 0.6698957303583466
	.quad	0x3fd8cb32c711e002              # double 0.38740224304592641
	.quad	0x3fe69414da0758bb              # double 0.70557634910326017
	.quad	0x3fd42c50d5dc3204              # double 0.31520481953410262
	.quad	0x3fc33ece217164e0              # double 0.1503541625304825
	.quad	0x3fda665d64e605f8              # double 0.41249785283443385
	.quad	0x3f8c5e100655ad40              # double 0.013851285165137228
	.quad	0x3fe37970fc109926              # double 0.60857438308156442
	.quad	0x3fd084512a24d464              # double 0.25807599177944085
	.quad	0x3fede8c951ca2b4c              # double 0.93466630911402992
	.quad	0x3feffe72ac4b3735              # double 0.99981053973326672
	.quad	0x3fec24e873057374              # double 0.87950537171455644
	.quad	0x3fd3ca93b6ce5466              # double 0.30923931934495952
	.quad	0x3fd8891b07c559b6              # double 0.38336826094510046
	.quad	0x3fe03f114eb2ca3e              # double 0.50769868250637962
	.quad	0x3fa459f3f3596020              # double 0.03974878640718793
	.quad	0x3fb6dd4ab7ee53f0              # double 0.089314145951291612
	.quad	0x3fb588b665479fc8              # double 0.084117316938885911
	.quad	0x3fdb1d6e7f355252              # double 0.42367136404690087
	.quad	0x3feecce4fa910a7a              # double 0.96251152933866924
	.quad	0x3fe25e98268c0b5d              # double 0.57404716042251958
	.quad	0x3fd1fe7a9657963a              # double 0.28115715677117559
	.quad	0x3feb1a43cf489304              # double 0.84695616231019288
	.quad	0x3fef1168f875c636              # double 0.97087524916987067
	.quad	0x3fe413a43ed2ba9d              # double 0.62739765424869953
	.quad	0x3fe8e1a69c09b9dc              # double 0.77754526592417105
	.quad	0x3fcc42467c3d80a8              # double 0.22077256266039069
	.quad	0x3fcf1b6987437ea8              # double 0.24302405457182386
	.quad	0x3f66384dfc17ea00              # double 0.0027123950137568631
	.quad	0x3fb03f7ffc2b36b8              # double 0.063468932213448848
	.quad	0x3fe71c9d0f5e0f41              # double 0.72224286080788869
	.quad	0x3fec9a492289de85              # double 0.89383370157061448
	.quad	0x3fe9dbcdb315624b              # double 0.80808148362400212
	.quad	0x3fd5905377c62d22              # double 0.33693396279041299
	.quad	0x3fb1f3a7148f9b20              # double 0.07012409450508672
	.quad	0x3fdb6cef4e6078a6              # double 0.42852385190952658
	.quad	0x3fe2d078d44dae33              # double 0.58794824090495579
	.quad	0x3fbf3dcc2bc51620              # double 0.12203670567131342
	.quad	0x3fd8668c2f6d0dc4              # double 0.38125900870747054
	.quad	0x3fe623a0f06f60a2              # double 0.69184920272802608
	.quad	0x3fe7077864926005              # double 0.71966189997601815
	.quad	0x3fd5b610adb0248a              # double 0.33923737489437455
	.quad	0x3f9582536a0ed3c0              # double 0.021004966114293699
	.quad	0x3fdb6fa4bdc0f4e8              # double 0.42868917971266152
	.quad	0x3fe6cd3c52c2b71e              # double 0.71255317844563471
	.quad	0x3fe894b3892a62a4              # double 0.76815201559209755
	.quad	0x3fdd54ad4fd02bd0              # double 0.45829327387099017
	.quad	0x3fc042487e502734              # double 0.12702280204421756
	.quad	0x3fdd66da0ab4c70e              # double 0.45940257115863481
	.quad	0x3fded79289011468              # double 0.48190749530141952
	.quad	0x3fdb39daf683a340              # double 0.42540620874074264
	.quad	0x3feb4fe64e3f1cae              # double 0.85350337297940881
	.quad	0x3feb65a0dce4df48              # double 0.8561558069550097
	.quad	0x3fada760c478d410              # double 0.057917617782017428
	.quad	0x3fe11185bcc2001e              # double 0.53338896624336818
	.quad	0x3fce865f161030b8              # double 0.23847569062525564
	.quad	0x3facee0b7cd2b980              # double 0.056503638255310129
	.quad	0x3fe7650fee142319              # double 0.73108669757593525
	.quad	0x3fcacdaeb1dd2928              # double 0.20940192875634378
	.quad	0x3fe6848bded0b7a8              # double 0.70367997664083237
	.quad	0x3fc504a0d1c9bc4c              # double 0.16420374148899197
	.quad	0x3fe9cb9929b753c0              # double 0.80610330722503676
	.quad	0x3fdb47e558c89aaa              # double 0.42626317663454449
	.quad	0x3fd391e89531f788              # double 0.30578054971544377
	.quad	0x3fe88fb2db81b0a1              # double 0.76754134056456647
	.quad	0x3fa4d996ce327450              # double 0.040722572966139681
	.quad	0x3fd749e041ffa918              # double 0.36388403363402366
	.quad	0x3fe000d235f9a53e              # double 0.50010023633982548
	.quad	0x3fc8be8d4d854fa0              # double 0.19331518445198714
	.quad	0x3fd9fe6124be5d4a              # double 0.40615109050982723
	.quad	0x3fe13ad9a94fa4b4              # double 0.53843386715484209
	.quad	0x3fc2227bcb887b60              # double 0.14167735517636526
	.quad	0x3fd9b45ca0930e58              # double 0.401633412180876
	.quad	0x3fcca1ec05afca0c              # double 0.2236914661185242
	.quad	0x3fe9d6679257f96f              # double 0.80742243368858435
	.quad	0x3fe42c7b59ea5c8a              # double 0.63042991220108147
	.quad	0x3fd7b96f5858adb4              # double 0.37069305064752744
	.quad	0x3fe3375179094b9e              # double 0.6005027164450103
	.quad	0x3fe0227430a028f4              # double 0.5042057943076359
	.quad	0x3fe8aade25e7f2d5              # double 0.77085788157963953
	.quad	0x3fdf04bbb4f12d4c              # double 0.48466389341475202
	.quad	0x3fd25be4ebce7166              # double 0.28685877826662531
	.quad	0x3fe4a2bf845c48ac              # double 0.64486671306283005
	.quad	0x3fe5ae9e2fe1e979              # double 0.67756566383404426
	.quad	0x3fb43914137f9360              # double 0.078995947609269646
	.quad	0x3fc8aa45c29e8424              # double 0.19269630434885798
	.quad	0x3fb63a3807804c28              # double 0.086825849372232811
	.quad	0x3fd6dd620dac02d2              # double 0.35726214728496786
	.quad	0x3feb7f885be8e90d              # double 0.85931795073637007
	.quad	0x3fd2d16bd3ac3ece              # double 0.29403205557990197
	.quad	0x3fe4a6ffc2afa269              # double 0.6453856279814093
	.quad	0x3fe2cc2855138634              # double 0.58742157570322329
	.quad	0x3fe84839e19ad8b3              # double 0.75881666243983259
	.quad	0x3fe27ea754f93933              # double 0.5779606494559516
	.quad	0x3fd0a1902b03c4fa              # double 0.25986103249222448
	.quad	0x3fb459a89f765f50              # double 0.079493082934616099
	.quad	0x3fe49c843d7fbd6b              # double 0.64410602580566712
	.quad	0x3fd0c333934a7030              # double 0.26191415199150736
	.quad	0x3fe104120861e48e              # double 0.53174687993227265
	.quad	0x3fe19a81a8898375              # double 0.5501106540433357
	.quad	0x3fd7e0e1595d6674              # double 0.37310060240779497
	.quad	0x3fe820ef391642cd              # double 0.75402032041355371
	.quad	0x3fc3d440d5afa404              # double 0.15491495546237399
	.quad	0x3fe2476202b667e1              # double 0.57121372728147091
	.quad	0x3fa8f590c76cd790              # double 0.048748516410724752
	.quad	0x3fd9589a3db29c56              # double 0.39603286767164059
	.quad	0x3feafb9671ec8c48              # double 0.84321138621124536
	.quad	0x3fe6d881b0cae909              # double 0.71392902879532116
	.quad	0x3fdaf4c9602fa848              # double 0.421190589839743
	.quad	0x3fe350aa0884843d              # double 0.60359670318224057
	.quad	0x3fe92468648f2237              # double 0.78569430962040243
	.quad	0x3fe82817120fc1ff              # double 0.75489381339690442
	.quad	0x3fcfc891f5e1dd50              # double 0.24830841546984539
	.quad	0x3fef7faa48c08c46              # double 0.98433412751581595
	.quad	0x3fdca7828f8268a8              # double 0.44772399916258587
	.quad	0x3feaff531fd7af3a              # double 0.84366756648294161
	.quad	0x3fe8a0d696246733              # double 0.76963357281349543
	.quad	0x3fe7a9140f342de0              # double 0.73938944787499494
	.quad	0x3fd1885804f23ffe              # double 0.27394676669155149
	.quad	0x3fea9f1d1897476b              # double 0.83192305376927089
	.quad	0x3fe68abc748d34af              # double 0.70443556560498688
	.quad	0x3fdd6ccf4bfb4454              # double 0.4597662202841708
	.quad	0x3febd6a2d52fce48              # double 0.86995069158587857
	.quad	0x3fccad5d7821a91c              # double 0.22404068342013594
	.quad	0x3f95fe3040466840              # double 0.021477464602505103
	.quad	0x3fb852a4a47fb720              # double 0.095011034165250141
	.quad	0x3febc2e68a107884              # double 0.86754157033625789
	.quad	0x3fe6c9c07f9234ff              # double 0.712127923166605
	.quad	0x3fd439d316af18f0              # double 0.31602933135253775
	.quad	0x3fdd015d1bf618f2              # double 0.45320823412511324
	.quad	0x3fbe43d6cfad2fa8              # double 0.11822264261462456
	.quad	0x3fe8e6e355070998              # double 0.77818457228595417
	.quad	0x3fc7183daa868d0c              # double 0.18042727304882822
	.quad	0x3f8f8e79677c14c0              # double 0.015408466787912523
	.quad	0x3fea90c186211f57              # double 0.83017040440698053
	.quad	0x3fc94bdbc51a1c28              # double 0.19762751697655401
	.quad	0x3feab00c9687ebe5              # double 0.83399037743162963
	.quad	0x3fd5631ba8ee101c              # double 0.33417407509864616
	.quad	0x3feb506fabec88de              # double 0.85356887415789706
	.quad	0x3fe8b2edf08acc1c              # double 0.77184197407621324
	.quad	0x3fcb2fc9a7e30f1c              # double 0.21239586541752764
	.quad	0x3fd72ce27d920648              # double 0.36211454642043295
	.quad	0x3fe1f62b7a27762a              # double 0.56130002840263171
	.quad	0x3fee86e4beedc8fb              # double 0.95396649637976283
	.quad	0x3fd2ead765cb4894              # double 0.29558358136012797
	.quad	0x3fdc891cf649a8d6              # double 0.44586872149978996
	.quad	0x3fec6541959ce22b              # double 0.88736037465338791
	.quad	0x3fe1b6a8ad3feb2c              # double 0.55354722822025826
	.quad	0x3fd7f4adf5c63026              # double 0.37430905343421939
	.quad	0x3fc032cd7f5099cc              # double 0.12655037609620334
	.quad	0x3fdb23615a7d0834              # double 0.42403444134481849
	.quad	0x3feeb97a1080002e              # double 0.96014121267945085
	.quad	0x3fde735e1fc02e7e              # double 0.47579148388533798
	.quad	0x3fd51cb2cb479c30              # double 0.32987661220107878
	.quad	0x3feab66b1f91f584              # double 0.83476787725491918
	.quad	0x3fc8f79b1881f490              # double 0.19505633064901362
	.quad	0x3fead636b70c1b75              # double 0.83864913703369715
	.quad	0x3fe5479774f1e88f              # double 0.66498921242534148
	.quad	0x3fd553092f690cae              # double 0.33319310789029088
	.quad	0x3fe1eb7fd3498f81              # double 0.55999747530994182
	.quad	0x3fafd2a004140840              # double 0.062153816697915421
	.quad	0x3fe8d08d51a4390c              # double 0.77545801110844214
	.quad	0x3fee162fc8b2bd78              # double 0.94020833205097087
	.quad	0x3fe5294fbd11afac              # double 0.66129290511661543
	.quad	0x3fd3a336673d4fd6              # double 0.30683670122129791
	.quad	0x3fdc8c354f7de6a4              # double 0.44605763209220073
	.quad	0x3fed5905f6458d25              # double 0.91711710071505037
	.quad	0x3fcf490c64476828              # double 0.24441676041061666
	.quad	0x3fe533d257266eaa              # double 0.66257588407048229
	.quad	0x3fe54396e25faf03              # double 0.6645006581652243
	.quad	0x3fcac7272f0213d4              # double 0.20920266909902685
	.quad	0x3fec61d7727f4cc8              # double 0.88694355356928956
	.quad	0x3fee638b1a579fef              # double 0.94965129036881801
	.quad	0x3fdc6cdfc39efe4e              # double 0.44414514640445624
	.quad	0x3fe736ffd3780af2              # double 0.72546378424189428
	.quad	0x3fe22de97728501a              # double 0.56810448906844901
	.quad	0x3fe440339f7f324a              # double 0.63283711578112301
	.quad	0x3fe9cb4518e51b3d              # double 0.80606322157186805
	.quad	0x3fcf950b01737cbc              # double 0.24673593111854142
	.quad	0x3fa744671230d380              # double 0.045443745585010298
	.quad	0x3fa824513f4227a0              # double 0.047152079555487392
	.quad	0x3fea3dea8b56e483              # double 0.82005812849742232
	.quad	0x3fc93f5b121d3d2c              # double 0.19724596390231264
	.quad	0x3fe5bdc1279f3d09              # double 0.67941339243580601
	.quad	0x3fe57a75a4c5df3e              # double 0.67119867498602281
	.quad	0x3fe62570523372c9              # double 0.69207016043545722
	.quad	0x3fdc50a42c40a772              # double 0.44242195436037612
	.quad	0x3fecda392dd1e0ab              # double 0.90163859318910988
	.quad	0x3fe330bd2c664bad              # double 0.59969957992358547
	.quad	0x3fd6fe8f9f7e6b08              # double 0.35928717208450722
	.quad	0x3fb0234b33d91690              # double 0.063038540037348989
	.quad	0x3fd4368fb46b4b64              # double 0.31583016032271005
	.quad	0x3f263650c69b3000              # double 1.6946540863782555E-4
	.quad	0x3fe13866b8b1039b              # double 0.53813491890479115
	.quad	0x3fe2642211ae863d              # double 0.57472327664817835
	.quad	0x3fe053698a7c92ce              # double 0.51018216179053311
	.quad	0x3fbe32bb27e65440              # double 0.1179615948115762
	.quad	0x3fdc9f6ece87f620              # double 0.44723100823452633
	.quad	0x3fecc1ea9464cd3f              # double 0.89867142661243082
	.quad	0x3fa57afb8c2de0f0              # double 0.041953907834740067
	.quad	0x3fc8197887247878              # double 0.18827730749848448
	.quad	0x3fa7ee33823e87e0              # double 0.046739205979306808
	.quad	0x3feca6966ef6f15e              # double 0.89533540413644253
	.quad	0x3fec34dd3ba21046              # double 0.88145314833719435
	.quad	0x3fe07c978fa966b2              # double 0.51520898875170063
	.quad	0x3fe0ea0ecdb81539              # double 0.52857151202684982
	.quad	0x3fe781790f706ab6              # double 0.73455479636625998
	.quad	0x3fe12b3b33d3f3d5              # double 0.53652725336689377
	.quad	0x3fe54d147a8cf885              # double 0.66565917907406968
	.quad	0x3fe20badb07f1ac0              # double 0.5639255950162223
	.quad	0x3fe8cfbb15447b81              # double 0.77535776284990743
	.quad	0x3fe063533e56465f              # double 0.51212465453336253
	.quad	0x3fc98a2dd586a068              # double 0.19952938963001832
	.quad	0x3febf0565fb80e37              # double 0.87308806128607486
	.quad	0x3fe81e5dc1d86ca6              # double 0.75370681629592151
	.quad	0x3feadfc1dee52549              # double 0.83981412443351033
	.quad	0x3fe37b055973ed53              # double 0.60876719924218958
	.quad	0x3fa810e15e970ea0              # double 0.047003786846770312
	.quad	0x3fea890f45988965              # double 0.82923091500223889
	.quad	0x3feface4a30a7fa4              # double 0.98985511630961697
	.quad	0x3fe37f1a60648544              # double 0.60926550699893101
	.quad	0x3fdb3dec3b07a1e2              # double 0.42565446629171622
	.quad	0x3fcfb608d2303818              # double 0.2477427507696468
	.quad	0x3fdb5e5d0444af26              # double 0.42763448159051831
	.quad	0x3fea75f4df1b4d81              # double 0.82689899039762349
	.quad	0x3fec100fa06c341d              # double 0.87696057636788149
	.quad	0x3fed6bb4942e1174              # double 0.91939763013264874
	.quad	0x3fe64ae204ad54b2              # double 0.69664097703448236
	.quad	0x3fa9807bb62c9a50              # double 0.049808374393525257
	.quad	0x3f9a944945176500              # double 0.025956292001727554
	.quad	0x3fee2e743b6cae73              # double 0.94317065817217693
	.quad	0x3fcf683659f21154              # double 0.24536780731080887
	.quad	0x3fdf8b927325eea8              # double 0.49289380307139163
	.quad	0x3fe00a21a0b0be12              # double 0.50123673806041524
	.quad	0x3fe7b56d1b484fc8              # double 0.74089675263029964
	.quad	0x3fac80c764a93800              # double 0.055670004880639112
	.quad	0x3feef066c477a885              # double 0.96684587833921453
	.quad	0x3fe0acedd0fdb03f              # double 0.52110949343251167
	.quad	0x3fdefbf81a641500              # double 0.48412897660485044
	.quad	0x3fab5b41e222ec70              # double 0.05343061337904309
	.quad	0x3fdcca3270c8b130              # double 0.44984112752969718
	.quad	0x3fea944544d2c881              # double 0.83059943620743593
	.quad	0x3fd0a7b57dd08468              # double 0.26023614203047041
	.quad	0x3fe0add92106368a              # double 0.52122169923832584
	.quad	0x3febbbadf2d25f29              # double 0.86666009355665097
	.quad	0x3fe6d6f7b83ab2d4              # double 0.71374116880687177
	.quad	0x3fed3d0e15ee94a5              # double 0.91370300563416562
	.quad	0x3fd59a5b86a734e6              # double 0.33754623555871743
	.quad	0x3fef2b6d435bb292              # double 0.97405112415215656
	.quad	0x3feb10194c00c130              # double 0.84571518749547714
	.quad	0x3fe6a366e39c887c              # double 0.7074465222870141
	.quad	0x3feef96a021acb21              # double 0.96794605647150799
	.quad	0x3fde1f0c18d0cfda              # double 0.47064497397809435
	.quad	0x3fb9dae2a032c548              # double 0.10099617396442284
	.quad	0x3fe32058f56970fd              # double 0.59769866878517031
	.quad	0x3feeefb335f80fff              # double 0.96676025906390339
	.quad	0x3fb4dfcc161fb4b8              # double 0.081539874459582218
	.quad	0x3fd48604443af526              # double 0.32067972815623802
	.quad	0x3fd80a3825a9adfc              # double 0.37562373807915583
	.quad	0x3fe681e0d07ae8f1              # double 0.70335427016041596
	.quad	0x3fea6e42e240869d              # double 0.82595962705473236
	.quad	0x3fe44684fa25d3cc              # double 0.63360833031640018
	.quad	0x3fdfdf8156d5c5fa              # double 0.49801667671189842
	.quad	0x3feb95e3e10647e2              # double 0.86204713773826946
	.quad	0x3fd99273eeb0c3dc              # double 0.39956377324693704
	.quad	0x3fe5e3d0fc0c87f7              # double 0.6840596125441597
	.quad	0x3fee8b2c1f0aef58              # double 0.95448881209402269
	.quad	0x3fd4bcee1d84fa22              # double 0.32403138048894864
	.quad	0x3fc894480d0ee6ec              # double 0.19202519071205104
	.quad	0x3fe6ec0a804de0ba              # double 0.71631360110679698
	.quad	0x3fef8f0e969b6fd7              # double 0.98621301093543933
	.quad	0x3fe3d2900691789f              # double 0.61945344241009426
	.quad	0x3fd6946868c4329a              # double 0.35280809622853726
	.quad	0x3fe499bebddc8f8d              # double 0.64376771051728243
	.quad	0x3fe1b3fcdf753f9d              # double 0.55322116512433051
	.quad	0x3fe3627d12711e35              # double 0.60577252962042982
	.quad	0x3fec8006c5c91e4d              # double 0.8906282294273723
	.quad	0x3fc0faa016d14a30              # double 0.13264847864282237
	.quad	0x3fe09935161c27b6              # double 0.51870207136493351
	.quad	0x3fb7ad05b4582db0              # double 0.092483860520750083
	.quad	0x3fb1197ccb7bdee8              # double 0.066795158079795081
	.quad	0x3fe517f985f51d5d              # double 0.6591765991551416
	.quad	0x3fe191ef7695804e              # double 0.54906438027320248
	.quad	0x3fe53054c90b03b6              # double 0.66214980379310506
	.quad	0x3fd2dfa7df8dcae8              # double 0.29490086394723258
	.quad	0x3fe580546a4cea7b              # double 0.671915252321312
	.quad	0x3fe637c77900391a              # double 0.6943089831636684
	.quad	0x3fd1c438266eb90c              # double 0.27760127785849487
	.quad	0x3fef38711a64ea0d              # double 0.97563986926189871
	.quad	0x3fd15cbab7fb0a9c              # double 0.27128475157602749
	.quad	0x3feca45412edc94b              # double 0.89505962082902479
	.quad	0x3fee0561dc920819              # double 0.93815701561129849
	.quad	0x3fbf0a91d21c7060              # double 0.12125502948441769
	.quad	0x3fb8cbf15f791058              # double 0.09686192112809644
	.quad	0x3fe8f455e6046bde              # double 0.77982611584900119
	.quad	0x3fdbfdd2c7113e3c              # double 0.43736714782878372
	.quad	0x3fe0c77e90659b83              # double 0.52435234262962671
	.quad	0x3fed45d7bcd23a2b              # double 0.91477572325840606
	.quad	0x3fe94f065413ca5a              # double 0.79089657231663613
	.quad	0x3fe519c6b3f20adc              # double 0.65939650674439632
	.quad	0x3fba5b9dbe7d18f0              # double 0.10296045208551496
	.quad	0x3fe00d1e22bc5a92              # double 0.50160128387763536
	.quad	0x3fea50127d174630              # double 0.82227444106883318
	.quad	0x3fe1759064e31e77              # double 0.54560107903030441
	.quad	0x3fc9e808be67c4e4              # double 0.2023936204637159
	.quad	0x3fdfb037fc98f634              # double 0.49513053577161092
	.quad	0x3fef459c40f034a1              # double 0.97724735911619486
	.quad	0x3fea8efef9ff9fe8              # double 0.82995556667173975
	.quad	0x3fd21c04abaa53c0              # double 0.28296009792512322
	.quad	0x3fbc21976099e5c8              # double 0.10988756283213441
	.quad	0x3fda87394509aeee              # double 0.41450340024924415
	.quad	0x3febee45093c54a8              # double 0.87283565334168589
	.quad	0x3fa5c59185cc9080              # double 0.042522952635665412
	.quad	0x3feab2f358a6c8e8              # double 0.83434455218073555
	.quad	0x3fe669f62d98d000              # double 0.70043476968430696
	.quad	0x3fe07666478e63e0              # double 0.51445306754896691
	.quad	0x3fe3d320d63f1f22              # double 0.61952249379189461
	.quad	0x3fd340625447ea18              # double 0.30080469351347139
	.quad	0x3fc59e2fb0f8a118              # double 0.16888996258899946
	.quad	0x3fb23fac316aec60              # double 0.071284067215786617
	.quad	0x3fdd8095110d8a56              # double 0.4609730402500295
	.quad	0x3fd5bf49a8c092da              # double 0.33980027656279577
	.quad	0x3fc4e625b472c950              # double 0.1632735377402903
	.quad	0x3fd645e2af5f2b40              # double 0.34801547170780012
	.quad	0x3fdc8f2c0c279294              # double 0.44623852908106554
	.quad	0x3fe9deb88bb32ce1              # double 0.80843760762345707
	.quad	0x3fe54f1337baeef9              # double 0.66590271839910919
	.quad	0x3fe535a638b31ccc              # double 0.66279898714210495
	.quad	0x3fce8d2d9b21e0a4              # double 0.23868341517277714
	.quad	0x3fd4b23def55d6fa              # double 0.32337902424420373
	.quad	0x3fe633bfe2b7e311              # double 0.69381708413047438
	.quad	0x3fefccda2a91e9d1              # double 0.99375637354324386
	.quad	0x3fbe2c5da361eba0              # double 0.11786446799116712
	.quad	0x3fc6721426157ed0              # double 0.17535640582626977
	.quad	0x3fb82363e17b7388              # double 0.094290010976193384
	.quad	0x3fe3d1256bba7c90              # double 0.61928053894725288
	.quad	0x3fd2cb47df6594da              # double 0.29365727249235152
	.quad	0x3fc9274a82c223d8              # double 0.19651156792340774
	.quad	0x3fe99ed2c9174faa              # double 0.80063761973950887
	.quad	0x3fc806271c8fba9c              # double 0.18768776793099995
	.quad	0x3f8397cadde3cf00              # double 0.0095668648686806357
	.quad	0x3fdeffaec4d4b278              # double 0.484355632989526
	.quad	0x3fd89841543416b4              # double 0.3842929193782354
	.quad	0x3fe983b6e2a41587              # double 0.79732841745196559
	.quad	0x3fed4aaa3a8d801f              # double 0.91536437450486463
	.quad	0x3f9aa85ea0977720              # double 0.026032904197442197
	.quad	0x3fce77cffb368c24              # double 0.23803138510001631
	.quad	0x3fde3014aa48ff0e              # double 0.47168461446197874
	.quad	0x3fd2d3467498d16c              # double 0.29414521585865461
	.quad	0x3fe43e976bb4ff95              # double 0.63264056240585609
	.quad	0x3fd45fa9dcbacbfe              # double 0.31833883815414754
	.quad	0x3fbf4cf47ba2aa50              # double 0.12226799028818758
	.quad	0x3fe5c3eaac0e27a0              # double 0.68016561131047482
	.quad	0x3fcc0a07515c5ff0              # double 0.21905604813286983
	.quad	0x3fd8543e68ad39f0              # double 0.38014183256464573
	.quad	0x3fdf36b59bd6c3e6              # double 0.4877141973366278
	.quad	0x3fdd63f6a7cc6c4e              # double 0.45922628771376572
	.quad	0x3fe463aa69cb6831              # double 0.63716622031211589
	.quad	0x3fe60df339fa8bd8              # double 0.68920289348568087
	.quad	0x3fdb2baa7b2d85e0              # double 0.42454015759548547
	.quad	0x3fe702d1c7d98941              # double 0.71909417184023294
	.quad	0x3feca373d6882c36              # double 0.89495269680754208
	.quad	0x3fde632877f213e0              # double 0.47480212891997375
	.quad	0x3fd60471aa8e4cd4              # double 0.34402124076696095
	.quad	0x3fe39aa46251db96              # double 0.61262721255376351
	.quad	0x3fe118e9b0182564              # double 0.53429111855909328
	.quad	0x3fee64d52c98e3a5              # double 0.94980868063349944
	.quad	0x3fa165e923b91b20              # double 0.033980641947485291
	.quad	0x3fdf9bd1da6cceb8              # double 0.49388548212594285
	.quad	0x3fe7afa0876a295e              # double 0.74018885086233488
	.quad	0x3fead191d053e246              # double 0.83808222474096605
	.quad	0x3fea3ffcf905bc92              # double 0.82031105649174862
	.quad	0x3fb7e82e87bfb7a8              # double 0.093386562482662527
	.quad	0x3fe6d43948980b02              # double 0.71340622118472674
	.quad	0x3fd4fea3ad143c78              # double 0.32804195310831785
	.quad	0x3fd81a9f0e14d3ca              # double 0.37662483573086247
	.quad	0x3fa4aa8508b1c620              # double 0.04036346179135486
	.quad	0x3fe6f06fc210dca6              # double 0.71685016540040603
	.quad	0x3fcba19e7691b52c              # double 0.21586972035894669
	.quad	0x3fe8d3761a965b39              # double 0.77581315224492819
	.quad	0x3fdafae6b6e14042              # double 0.42156379565586033
	.quad	0x3fcd785479e3085c              # double 0.23023467971330802
	.quad	0x3feb6eb4a5f57076              # double 0.85726387418573213
	.quad	0x3faf8198c852afb0              # double 0.061535620168199912
	.quad	0x3fd6fc1b0b92d4ae              # double 0.35913730745535133
	.quad	0x3fe3420966996207              # double 0.60181112326523667
	.quad	0x3fe64916ffbed4ff              # double 0.69642209959297918
	.quad	0x3f9bfd116d366380              # double 0.027332565584945012
	.quad	0x3fbbe011f21b4410              # double 0.10888778839877511
	.quad	0x3fede82eed9e1dc9              # double 0.93459268960662556
	.quad	0x3fad8db7fcce3610              # double 0.057721852884338287
	.quad	0x3fdbb12e9f049b44              # double 0.43268933800793641
	.quad	0x3facc85a17b2eba0              # double 0.056216063874180877
	.quad	0x3fed4a376af79f87              # double 0.91530962841078256
	.quad	0x3fef2ce110e5ca23              # double 0.97422841358485745
	.quad	0x3fe816cf9d9b4a20              # double 0.75278454573191666
	.quad	0x3fee03df089ef908              # double 0.93797256168161968
	.quad	0x3fdbea0db7feae44              # double 0.43616049736258256
	.quad	0x3fe70fc9972ed9a6              # double 0.72067718055659635
	.quad	0x3fae587dba21b2d0              # double 0.059268883677622619
	.quad	0x3fd8ccbe6057e34e              # double 0.38749656113173081
	.quad	0x3fe988c769a18f98              # double 0.79794664984773345
	.quad	0x3fe8bafda39d1c72              # double 0.77282602268031853
	.quad	0x3fe166d1b6e94021              # double 0.54380117153960239
	.quad	0x3fdb28496304b582              # double 0.4243339030243406
	.quad	0x3fc471d406f9da14              # double 0.15972376194595539
	.quad	0x3fd7eae3e23b5428              # double 0.3737115582746946
	.quad	0x3fe3951c0284c148              # double 0.61195183269413977
	.quad	0x3fe9cf40fd3dcc31              # double 0.80654954396448464
	.quad	0x3fe9e85a49fa11da              # double 0.80961336563683095
	.quad	0x3fdec9c1cbd874b0              # double 0.4810642710379609
	.quad	0x3fd81d1f607d91de              # double 0.37677750037098956
	.quad	0x3fa831c56a7bbc00              # double 0.047254723785833619
	.quad	0x3fe26d5fba1fd738              # double 0.57585131027619862
	.quad	0x3fef17c4e4b17ec0              # double 0.97165150324504878
	.quad	0x3fd368cd05da558c              # double 0.30327153750962377
	.quad	0x3fe0809197e1d8fa              # double 0.5156944242906143
	.quad	0x3fea22401a153d18              # double 0.81668095678643038
	.quad	0x3fdeb648c3d5df3c              # double 0.4798757469611592
	.quad	0x3fe0dd9a301e37a9              # double 0.52705106161169113
	.quad	0x3fc17edde1c4c674              # double 0.13668416522846238
	.quad	0x3fdd6e33a10d90ce              # double 0.45985117652732022
	.quad	0x3fd47495d84a09b4              # double 0.31961580392831057
	.quad	0x3fd8c8550ff45b9e              # double 0.38722731168803104
	.quad	0x3fe12dc76a1df1c3              # double 0.53683825231524229
	.quad	0x3fe41fffd1802371              # double 0.62890616338800787
	.quad	0x3fb4129a57c1ec60              # double 0.078408857751058658
	.quad	0x3fc0435c15687630              # double 0.12705565495791538
	.quad	0x3fe2ce83f843ffa7              # double 0.58770941247347686
	.quad	0x3fe7f3c778a8cc8c              # double 0.74850820127757478
	.quad	0x3fcbecf3c65ac444              # double 0.21816870866089932
	.quad	0x3fea5b651b852219              # double 0.82365661025056902
	.quad	0x3feb57c5a1a1bcce              # double 0.85446435517033037
	.quad	0x3fdd0625e7bae504              # double 0.45350024824036006
	.quad	0x3fca2f21e3c42be4              # double 0.20456336614037618
	.quad	0x3fe007909d526708              # double 0.50092344977312653
	.quad	0x3fe1e7fa57668b5f              # double 0.55956761427328761
	.quad	0x3fe341da33965915              # double 0.6017886169018164
	.quad	0x3fd11c5bae08ce48              # double 0.26735584254786149
	.quad	0x3f938677faab67e0              # double 0.019067644762664204
	.quad	0x3fd380aad0f1512e              # double 0.30472822575144931
	.quad	0x3fcc0f6762051340              # double 0.21922008787273661
	.quad	0x3fe0f452cead2b54              # double 0.52982464186184552
	.quad	0x3fa13dc2286d3480              # double 0.033674304423223056
	.quad	0x3fe22a0b4ef81a1b              # double 0.56763234542524132
	.quad	0x3fc3618ba9cb1054              # double 0.15141435423550098
	.quad	0x3fb16a28e3423280              # double 0.068026118739178187
	.quad	0x3fd0b684d308cfac              # double 0.26114006623105968
	.quad	0x3fef78d502aa8e7c              # double 0.98350000878095
	.quad	0x3fd451722fb848c0              # double 0.31747107181685053
	.quad	0x3fef5f3c519aa78d              # double 0.98037544191650882
	.quad	0x3fc921127db524d8              # double 0.1963217843824967
	.quad	0x3fe225cdabe511c8              # double 0.56711467335895183
	.quad	0x3fd4451830e54b5c              # double 0.31671719336480009
	.quad	0x3fecf0beb19b63f4              # double 0.90438780487886427
	.quad	0x3fead76e0decdf77              # double 0.83879759521276653
	.quad	0x3fe32aaad919035f              # double 0.59895841981788667
	.quad	0x3fd47839891474aa              # double 0.31983793627461898
	.quad	0x3fe943fdb57486cf              # double 0.78954968872513998
	.quad	0x3fe7a0951b3bef7a              # double 0.73835234946407913
	.quad	0x3fe2c4c6639b9e05              # double 0.58652038054145861
	.quad	0x3fd2e5dd744fd934              # double 0.29527984961113707
	.quad	0x3fe310de28413330              # double 0.59580905782931914
	.quad	0x3fe63ba8689f44a0              # double 0.69478245195400135
	.quad	0x3fd352b833a67c4c              # double 0.30192379993417684
	.quad	0x3fd0d25180857aec              # double 0.26283681441229478
	.quad	0x3facdf7f8ccb2130              # double 0.056392656265929708
	.quad	0x3fc600968ce20124              # double 0.17189294699711255
	.quad	0x3feca51d18dcbcd6              # double 0.89515547614964919
	.quad	0x3fc2a5b49c7d6634              # double 0.14568193093400483
	.quad	0x3fe5f99352c20460              # double 0.68671575702331822
	.quad	0x3fdea908604ddb32              # double 0.4790669384450893
	.quad	0x3fdc875eb3ef1f6a              # double 0.44576232501684976
	.quad	0x3fe5df3ad76c58bd              # double 0.68349973749970838
	.quad	0x3fc4973e14217f58              # double 0.16086555464698438
	.quad	0x3fee0863343297d1              # double 0.93852386660432263
	.quad	0x3fe79df893e63458              # double 0.73803357016152926
	.quad	0x3fed7748db678560              # double 0.92081110813539268
	.quad	0x3fca8e1d67f46234              # double 0.20746200157079075
	.quad	0x3f92ade5d9bd6a00              # double 0.018241492666996706
	.quad	0x3feb44e552b6bfc8              # double 0.85216013102580579
	.quad	0x3fedf69d605cd4c6              # double 0.9363543397982077
	.quad	0x3fd991fe770ab034              # double 0.39953576684161196
	.quad	0x3fe77b56853745af              # double 0.73380590456706851
	.quad	0x3fe93b888a67cc67              # double 0.78851725609127932
	.quad	0x3febac90ba0bafed              # double 0.86481510483781465
	.quad	0x3fd3721c266f01fc              # double 0.30383971932681653
	.quad	0x3fe65860c7175db0              # double 0.69828833470358198
	.quad	0x3f8cb3c1fc800300              # double 0.014014735716047166
	.quad	0x3fefb20febb8dc0b              # double 0.99048610724901331
	.quad	0x3fe8c7024aa96327              # double 0.77429308493001237
	.quad	0x3fd713d223ab9d44              # double 0.36058476909098069
	.quad	0x3fe3c292d161abec              # double 0.61750164885358805
	.quad	0x3fce371343916dbc              # double 0.23605576323721589
	.quad	0x3fec1283f8e34a32              # double 0.87726019488247275
	.quad	0x3fed94f28e912432              # double 0.92443206639393893
	.quad	0x3fbc6a993f299cf0              # double 0.11100156585745302
	.quad	0x3fc1cd3d5eade1b4              # double 0.13907591937073749
	.quad	0x3fe54edf3306fd80              # double 0.66587791410704256
	.quad	0x3fe872e15e37b4e9              # double 0.76402347947955918
	.quad	0x3fe3b346256d9ace              # double 0.61563403425392393
	.quad	0x3fdc6c143b1bfe20              # double 0.44409662029645069
	.quad	0x3fdae18dea143288              # double 0.42001674517886345
	.quad	0x3fd9319c24a49f40              # double 0.39365295008109413
	.quad	0x3fe98e598d374557              # double 0.79862668591719455
	.quad	0x3fe0bd8a5df4d92d              # double 0.52313726759783707
	.quad	0x3fd9e47490abc7f2              # double 0.4045688069155623
	.quad	0x3fd0749e78bb35aa              # double 0.25711786070027165
	.quad	0x3fb438acea9a3c70              # double 0.078989798809048883
	.quad	0x3f991327022ef780              # double 0.02448712302042777
	.quad	0x3fe6606bf99cc81e              # double 0.69927023651530695
	.quad	0x3fd68555c7205d8e              # double 0.3518881268114108
	.quad	0x3fdfff0c262ed1e6              # double 0.49994186142728692
	.quad	0x3fe69bedd9435a72              # double 0.70653431352805129
	.quad	0x3fea692b4c6d04aa              # double 0.82533802916454602
	.quad	0x3febd2896d05aa1e              # double 0.8694502953852099
	.quad	0x3fe80bff4009e466              # double 0.75146448619410644
	.quad	0x3feb5d82da0d56d1              # double 0.85516493404676386
	.quad	0x3fba40c20ba2a308              # double 0.10255062851014085
	.quad	0x3fe4abc25d39e9ab              # double 0.64596670349356111
	.quad	0x3fc0a1fa326b52b0              # double 0.12994315587879646
	.quad	0x3fe6599106eac54f              # double 0.69843341208449228
	.quad	0x3fefa1aa6f6bec5f              # double 0.98848459016825163
	.quad	0x3fe569b37f95ca9a              # double 0.66915297430962828
	.quad	0x3feaf0f32f5f7e89              # double 0.84191283466857769
	.quad	0x3fdfd4bb576cd5e2              # double 0.49735911882029715
	.quad	0x3fc170dc6cbdba2c              # double 0.13625674543023203
	.quad	0x3fb60f58c40a23c0              # double 0.086171672688705847
	.quad	0x3fe71048989a6d6d              # double 0.72073774152106085
	.quad	0x3fe4774e28d2d0ec              # double 0.63956363652553483
	.quad	0x3fe0fa63a83fb57b              # double 0.5305650983915905
	.quad	0x3fe859dbf205b07a              # double 0.76096913595166815
	.quad	0x3fcb7c7b4ec9ebf8              # double 0.21473637911898869
	.quad	0x3fec3c7eb7773998              # double 0.88238464196347177
	.quad	0x3fe3b6804d984ca3              # double 0.61602797656305019
	.quad	0x3fe20d46d5198dbc              # double 0.56412068959291828
	.quad	0x3fea51bbb263cfc1              # double 0.82247719613814507
	.quad	0x3fef1549fe6da063              # double 0.97134875958455457
	.quad	0x3fed52878a32d648              # double 0.91632439605627614
	.quad	0x3fd8ae9deeb2c56e              # double 0.38565777120955758
	.quad	0x3fed3a852788daa6              # double 0.91339357110594643
	.quad	0x3fe3e36183ce25f2              # double 0.62150645964828599
	.quad	0x3fe922fbead5f666              # double 0.78552051416745594
	.quad	0x3fe8e9afbb505b93              # double 0.77852617821450776
	.quad	0x3fe03b1763afe3c4              # double 0.50721330137377452
	.quad	0x3fe7207966964f67              # double 0.72271413837959819
	.quad	0x3fe89fdf77f8d2a5              # double 0.76951573783897642
	.quad	0x3fde86fb347f334a              # double 0.47698860289238054
	.quad	0x3fb1e576e056d458              # double 0.069907598276431115
	.quad	0x3fbc76f1f292bbd8              # double 0.11118995830723521
	.quad	0x3fc7e283e21dd6bc              # double 0.18660019436690856
	.quad	0x3fe3ebd8ee2271da              # double 0.62253996382383581
	.quad	0x3fc86a04e4d62e0c              # double 0.19073544667877262
	.quad	0x3fdc049f5b4bf308              # double 0.43778213420573353
	.quad	0x3f93872da06c22a0              # double 0.019070351520925954
	.quad	0x3fe2fa5aa83fd7c5              # double 0.59306080685814122
	.quad	0x3fefcff2ea6cb051              # double 0.99413438592956471
	.quad	0x3fe77c51f5e36d42              # double 0.73392580056262369
	.quad	0x3fefb689a0de23ac              # double 0.99103242320517415
	.quad	0x3fe5387eb47a2517              # double 0.66314635514678144
	.quad	0x3fe7bb2d2018fee4              # double 0.74159866589613133
	.quad	0x3fc881736971efbc              # double 0.19145052574810772
	.quad	0x3fe973f029707c81              # double 0.79540260404236574
	.quad	0x3fe2d24180b02cb2              # double 0.58816599974070116
	.quad	0x3fa546f5657b2fb0              # double 0.041556996000138624
	.quad	0x3fd543d7d7f9f2fa              # double 0.33226581660692001
	.quad	0x3fe1587b68ee6a40              # double 0.54205103392025222
	.quad	0x3fe6a2351ec64ef4              # double 0.70730072031662283
	.quad	0x3fb4e47586421fd8              # double 0.081611008909134752
	.quad	0x3fd31a7ed9303106              # double 0.29849215707578514
	.quad	0x3fd0a483de46be2c              # double 0.26004120546983489
	.quad	0x3fe4d4c585144eaa              # double 0.65097309104972578
	.quad	0x3fe07adc0aef28a8              # double 0.51499750266636557
	.quad	0x3fd73b87f28f87f2              # double 0.36300848662915464
	.quad	0x3fd309d8c578b7a0              # double 0.29747599872905006
	.quad	0x3feaf7e02ea328fa              # double 0.84275826557976008
	.quad	0x3fea90217eaba4eb              # double 0.83009409656838551
	.quad	0x3fe4f50de831741c              # double 0.65491385793905321
	.quad	0x3fe4d19641abee2f              # double 0.65058434320912351
	.quad	0x3fbd27df03999800              # double 0.11388963544740704
	.quad	0x3fde59979dca4ca2              # double 0.47421827706529929
	.quad	0x3fed83bdd9a4ae8d              # double 0.92233173855261585
	.quad	0x3feacfc0fda71e74              # double 0.8378605798870482
	.quad	0x3fe3a3eccd195f88              # double 0.61376037653370563
	.quad	0x3fdeb76b4850f9b0              # double 0.47994501173152582
	.quad	0x3fe085cccf541fd0              # double 0.51633301252240393
	.quad	0x3fea3580d60867ed              # double 0.81903116038597334
	.quad	0x3fd1f5f175f9c192              # double 0.28063618203216223
	.quad	0x3fdacf6654b16a00              # double 0.41890867491534323
	.quad	0x3f86db79210a9640              # double 0.011160799332468163
	.quad	0x3febbd273d4b9822              # double 0.86683999988304472
	.quad	0x3fb24e5db167af80              # double 0.071508270084164494
	.quad	0x3fed4d03e9da3999              # double 0.91565128015809016
	.quad	0x3fee91938d770a1c              # double 0.95527055387384818
	.quad	0x3fef46bc5b1c25ef              # double 0.97738473696625571
	.quad	0x3fe3ecc48499ef99              # double 0.6226523008221988
	.quad	0x3fdb77f02511261c              # double 0.42919543857405684
	.quad	0x3feeafb9346c8309              # double 0.958950617208843
	.quad	0x3fe8995b35dc69cd              # double 0.76872025031780711
	.quad	0x3fda3f1f03ffac5e              # double 0.41010260954380395
	.quad	0x3fd405bcf77f496e              # double 0.31285022897386383
	.quad	0x3fe87766e7dc5e27              # double 0.76457543645205284
	.quad	0x3fdb6bc75e9b67a2              # double 0.42845329512567265
	.quad	0x3fe23d8d5cda6e45              # double 0.57001369605445318
	.quad	0x3fe403f19224142c              # double 0.62548140090132653
	.quad	0x3fb7b1ea1b728120              # double 0.09255850954150846
	.quad	0x3fe15e81a754c226              # double 0.54278643304684659
	.quad	0x3fdcf896c299cccc              # double 0.45267266277296581
	.quad	0x3fed9c9cf82e5908              # double 0.92536781761990117
	.quad	0x3fe0114340b11ef1              # double 0.50210726390011307
	.quad	0x3feb14b882496851              # double 0.84627938696508853
	.quad	0x3fea640e8e42e5c8              # double 0.82471397195257001
	.quad	0x3fbd7576bb693e90              # double 0.11507360530344557
	.quad	0x3fcbe81796831fe4              # double 0.21802039002636697
	.quad	0x3fefa4df920c99b1              # double 0.98887613797415074
	.quad	0x3fdac1e1bf6e7d4c              # double 0.41808360762111785
	.quad	0x3f9b703d2a4594e0              # double 0.026795345025125594
	.quad	0x3fd3b96f827d0aba              # double 0.30819308989536476
	.quad	0x3feefa779a2b51c5              # double 0.96807460890936936
	.quad	0x3fe959630d1267cb              # double 0.79216148903946626
	.quad	0x3fdde6d42df30b38              # double 0.46721367346997367
	.quad	0x3fe4d8ca63c6dded              # double 0.65146369445477392
	.quad	0x3fe293b3b6287e97              # double 0.58053002908487172
	.quad	0x3feafda7e1191faa              # double 0.84346384014587739
	.quad	0x3fcfca4b8c849c94              # double 0.24836105691176569
	.quad	0x3fee6af622f56dda              # double 0.95055682018158483
	.quad	0x3fe0fee8b758b07d              # double 0.5311168271050658
	.quad	0x3fb6890c160812f0              # double 0.088028674486917202
	.quad	0x3fe72a34c6f0aaea              # double 0.72390211921205361
	.quad	0x3fb6dabe09e64958              # double 0.089275243203052468
	.quad	0x3fe9cea743df8c47              # double 0.80647624260417039
	.quad	0x3fe8b391b12a9e19              # double 0.77192005732371449
	.quad	0x3fd2ef6d1983a656              # double 0.29586341373087544
	.quad	0x3fdf3e4e2697644e              # double 0.48817781227768797
	.quad	0x3fec5596a60245d9              # double 0.88544781135186235
	.quad	0x3fe24459239a3f7f              # double 0.57084328607196244
	.quad	0x3fc2b53ca3c363cc              # double 0.14615591045619991
	.quad	0x3fc7c3b6e80004c4              # double 0.18566023185852576
	.quad	0x3fe3a0656e67fcc2              # double 0.61332961620055237
	.quad	0x3fe3bf982961c981              # double 0.61713798601549297
	.quad	0x3fefb7ebbd483976              # double 0.99120127648511303
	.quad	0x3fc8cc9ee67f7338              # double 0.19374452833917544
	.quad	0x3fe38228df216834              # double 0.60963862972426464
	.quad	0x3fe1824c51760ca8              # double 0.54715553198220324
	.quad	0x3fe539b5f496a62a              # double 0.66329477091966749
	.quad	0x3feae4f02e7040dc              # double 0.84044655866639628
	.quad	0x3fe28fd273246ed7              # double 0.58005640495999955
	.quad	0x3feb66512a2d73b6              # double 0.85623987424661752
	.quad	0x3fc792c792aca118              # double 0.18416685735542937
	.quad	0x3fe9126bc7f72022              # double 0.78349865966538723
	.quad	0x3fe198aaad25feec              # double 0.5498860723309611
	.quad	0x3fb0dba32b26c7a0              # double 0.065851400408773575
	.quad	0x3fec9eeca7146e00              # double 0.89439995415472139
	.quad	0x3fe9a7e17e24206c              # double 0.80174326550424046
	.quad	0x3feb99d2921bd8e7              # double 0.86252716576453003
	.quad	0x3fdefa9abce93176              # double 0.48404568146067761
	.quad	0x3fecc0a44d1b7148              # double 0.89851584491729231
	.quad	0x3fda4ba67699b2b6              # double 0.41086732465809506
	.quad	0x3fe5ead3e6ba7875              # double 0.68491549553051689
	.quad	0x3fb40ab03a82e7f0              # double 0.078288091931341119
	.quad	0x3feb0c7a959d6ce9              # double 0.84527329656284877
	.quad	0x3fdb27a4d0253a3e              # double 0.42429466559125106
	.quad	0x3fc965fd3d75626c              # double 0.19842496395974096
	.quad	0x3fe38547680b8deb              # double 0.61001940079989703
	.quad	0x3fec22f375afcc1d              # double 0.87926648126301965
	.quad	0x3fe7d84c44c0e016              # double 0.74515355518724635
	.quad	0x3fe37db9808b0161              # double 0.60909724336674398
	.quad	0x3fc7c8c076e749ac              # double 0.18581395917733567
	.quad	0x3fccec9e817fcd88              # double 0.22597104380802713
	.quad	0x3fdfca3545eaf6ca              # double 0.49671680286324416
	.quad	0x3fee6e3dd261d33f              # double 0.95095721330890359
	.quad	0x3feab4302a4b53fd              # double 0.83449562321277393
	.quad	0x3fcfa54302bcf5f8              # double 0.2472308886880652
	.quad	0x3fe3d8c9ff020ad2              # double 0.62021350675817133
	.quad	0x3feeeea7a392670a              # double 0.9666326708567976
	.quad	0x3fcb5e00057ad0c8              # double 0.21380615489545662
	.quad	0x3fd06a589aa40194              # double 0.25649085141778838
	.quad	0x3fe2156f7e0fe16b              # double 0.56511664029589548
	.quad	0x3fe704e5076a0c28              # double 0.71934749076934157
	.quad	0x3fe32245bc5306f7              # double 0.59793364317030651
	.quad	0x3fd1dadc04cf4b56              # double 0.27898312062932484
	.quad	0x3fd72343d49ee328              # double 0.36152740253196436
	.quad	0x3fcc98cded3565dc              # double 0.22341322023821319
	.quad	0x3fef31c909169eca              # double 0.9748273065096893
	.quad	0x3fa6a8033768a770              # double 0.044250584138651017
	.quad	0x3fc3785b189074bc              # double 0.15211046885898394
	.quad	0x3fc767b0223571e4              # double 0.18285180731153539
	.quad	0x3fbb13b43180ba68              # double 0.10576940735402618
	.quad	0x3fea4476f47924de              # double 0.82085750340152308
	.quad	0x3fe7cd53cedfc38d              # double 0.74381437687962804
	.quad	0x3fb8829e8ab8c748              # double 0.09574309241068335
	.quad	0x3fecede1fe1b2549              # double 0.90403842573247417
	.quad	0x3fc0f87dfd52e8fc              # double 0.13258337849931212
	.quad	0x3fe25794470808d7              # double 0.57319082139317856
	.quad	0x3fd3a4a75b0100fe              # double 0.30692466628171633
	.quad	0x3fdc87b5b16fa0a4              # double 0.44578306510676158
	.quad	0x3fed81342917cbec              # double 0.92202194238632051
	.quad	0x3fe00233e2674e01              # double 0.50026888102951272
	.quad	0x3f821a10003f6900              # double 0.0088387727809515759
	.quad	0x3fe02e9e8bb12198              # double 0.50569083484247113
	.quad	0x3fddd0c459004bb4              # double 0.46586712543028885
	.quad	0x3fc30a62327ecf64              # double 0.14875438180535661
	.quad	0x3fec9ca4465f95b8              # double 0.89412130112457699
	.quad	0x3fc6bc62315fc19c              # double 0.17762401018945873
	.quad	0x3fe0ec151830cfbd              # double 0.52881865238895609
	.quad	0x3fef7acfe7ab9500              # double 0.98374171493620111
	.quad	0x3fdbabc0c8e1a58c              # double 0.43235797517135022
	.quad	0x3fee7f8e3e770a26              # double 0.95307075691409149
	.quad	0x3f93efafa070b640              # double 0.019469017188546767
	.quad	0x3fef160a6356081d              # double 0.97144050027441475
	.quad	0x3fcf1a586653666c              # double 0.24299149509788565
	.quad	0x3fd6a6bccbeb0132              # double 0.35392684854379575
	.quad	0x3fd40fc7a6baea3e              # double 0.31346312792053144
	.quad	0x3fef97b4911f17c0              # double 0.9872687181857529
	.quad	0x3fdaa7bab31cf1a6              # double 0.41648738376150118
	.quad	0x3fed2075200f32c2              # double 0.91021209966273653
	.quad	0x3feb834cdc6186d5              # double 0.85977786105305631
	.quad	0x3fbd4667d8ee8ca0              # double 0.11435555502116523
	.quad	0x3fe3d5f136b657be              # double 0.61986599622718308
	.quad	0x3feb21411a0a6b73              # double 0.84780936323237055
	.quad	0x3fed551619ae1d25              # double 0.91663651481295416
	.quad	0x3fe2ef3e8f4c0fa1              # double 0.59170463550298191
	.quad	0x3fc7c39db725680c              # double 0.18565722887689196
	.quad	0x3fb982714907c5b0              # double 0.099646644906690395
	.quad	0x3feebb91200eb277              # double 0.96039634953701991
	.quad	0x3fc18c7c7c5b02c4              # double 0.13709980079695161
	.quad	0x3fe9a8f3b0c31787              # double 0.80187401317447005
	.quad	0x3fe966d82305ff33              # double 0.79380423393738508
	.quad	0x3fd199e37f2d2a72              # double 0.27501761836598526
	.quad	0x3fe9540d60566b74              # double 0.79151028457577732
	.quad	0x3fea27b2b9f4f05e              # double 0.81734596557317807
	.quad	0x3fe31ce1ebb05bab              # double 0.59727569611537967
	.quad	0x3fdfcf6c72d07066              # double 0.49703513347936334
	.quad	0x3feb6c4db6fac88e              # double 0.85697065103728831
	.quad	0x3fe826446360d349              # double 0.7546712819081246
	.quad	0x3fed97637c608808              # double 0.92473005573651879
	.quad	0x3fe5d59c24ab74da              # double 0.68232543146191493
	.quad	0x3fb4b471acd4a9d0              # double 0.080878357596396499
	.quad	0x3fd43a194ebbd8ac              # double 0.31604607285351949
	.quad	0x3fd98b83d8e41b56              # double 0.39914032154813606
	.quad	0x3feae0e9a5262c71              # double 0.83995516067206044
	.quad	0x3fc0305b39f4cb30              # double 0.12647571878331965
	.quad	0x3fefbefda584d0d3              # double 0.99206430747883656
	.quad	0x3fba73fd0d0370e8              # double 0.10333234374724365
	.quad	0x3fed6778ff512070              # double 0.91888093821127192
	.quad	0x3fe9ccd78bcaad70              # double 0.80625512412136224
	.quad	0x3fd9d880b6930d68              # double 0.40383928136380698
	.quad	0x3fada03bbad079d0              # double 0.057863108210074565
	.quad	0x3fe7a3f68596672d              # double 0.73876501170454889
	.quad	0x3fe1d1db631aa91a              # double 0.55686730724599731
	.quad	0x3fe55bb2026dddbb              # double 0.66744327997633179
	.quad	0x3fe48543a0516e53              # double 0.64126759826781166
	.quad	0x3fc6d4f688866b10              # double 0.17837411562216987
	.quad	0x3fedb2c4f4f0b21a              # double 0.928072431944716
	.quad	0x3fe9fef53924bc6f              # double 0.81237279091682335
	.quad	0x3fe469494d9c96ec              # double 0.63785233648806416
	.quad	0x3fe16db8a7b05860              # double 0.54464371444442961
	.quad	0x3fd5e5e948b0eb5e              # double 0.34215767000903508
	.quad	0x3fefb42fb573df7d              # double 0.9907454055782946
	.quad	0x3feea32bd76a2819              # double 0.95741836617640097
	.quad	0x3fe4f066a8ba0908              # double 0.65434582666810659
	.quad	0x3fcc1ffb3122762c              # double 0.21972598933364063
	.quad	0x3fd6b7725803ab2c              # double 0.35494669528150058
	.quad	0x3fddec918784e858              # double 0.46756399378103231
	.quad	0x3feff17482d886c0              # double 0.99822450214215763
	.quad	0x3fe4b04c9c215a07              # double 0.64652090543933205
	.quad	0x3fedc77b84276b21              # double 0.93060088931392582
	.quad	0x3fe0a5f6b7da3bdb              # double 0.52025924595534023
	.quad	0x3feace90d6bad78f              # double 0.83771554889129785
	.quad	0x3fca5f9b7f4e9a08              # double 0.20604270664371449
	.quad	0x3feec91502e9b978              # double 0.96204615181868202
	.quad	0x3fece7439839bd31              # double 0.90323047381926902
	.quad	0x3fe49ca57d2d4175              # double 0.64412188004102566
	.quad	0x3fd7d7e88d4687dc              # double 0.37255300327717378
	.quad	0x3fe589cdb297a2ba              # double 0.67307171708406277
	.quad	0x3fe6ef70ff4190ac              # double 0.71672868590078087
	.quad	0x3fea6566b696bab9              # double 0.8248780790507545
	.quad	0x3fea128f57db2d47              # double 0.81476561698347261
	.quad	0x3fca0f3ab628ec28              # double 0.2035897626354608
	.quad	0x3fd672e9b6732fae              # double 0.35076372926118438
	.quad	0x3fe048452514ff8c              # double 0.50882203333456877
	.quad	0x3fba778e3c793bf8              # double 0.10338677383809614
	.quad	0x3fe0970d48439934              # double 0.51843895067285084
	.quad	0x3fe333334879a9cf              # double 0.60000003962823623
	.quad	0x3fe5e503cfb7acd7              # double 0.68420591897793315
	.quad	0x3fab596baf012110              # double 0.053416600334971531
	.quad	0x3fa37e380ca41ae0              # double 0.038072349112601378
	.quad	0x3fdd690fbb78b294              # double 0.45953744228135318
	.quad	0x3fd603101f094e98              # double 0.34393694907087413
	.quad	0x3fe7a0f3319108d4              # double 0.73839721375432044
	.quad	0x3fe4b8220904c31d              # double 0.64747716676183453
	.quad	0x3fe1dae6b24fbe34              # double 0.55797133280242983
	.quad	0x3fe6bf7002655ea3              # double 0.7108688399120705
	.quad	0x3fd605ca1e411b10              # double 0.34410336451075896
	.quad	0x3fd58ae9ea57329e              # double 0.33660362133813659
	.quad	0x3fdb90fafe96bd92              # double 0.43072390424910012
	.quad	0x3feee031ee7c80b2              # double 0.96486755923617396
	.quad	0x3fe0d1f94e7a55a0              # double 0.52563157394131466
	.quad	0x3fd36d96d98bb912              # double 0.30356379742342299
	.quad	0x3fcd5eb002fea68c              # double 0.22945213457324021
	.quad	0x3fdbb1b0b3bc1c3c              # double 0.43272035171725398
	.quad	0x3fc225f41f99809c              # double 0.1417832521719945
	.quad	0x3fe56123f39bcd8f              # double 0.66810796336942413
	.quad	0x3fc6cc334c366444              # double 0.17810670110046278
	.quad	0x3fea8104a2a0f6f4              # double 0.82824928058081903
	.quad	0x3fe04a103f867a11              # double 0.50904095084462331
	.quad	0x3fd3f5f005fedfd4              # double 0.31188583932407465
	.quad	0x3fef43f9025813b5              # double 0.97704744775602725
	.quad	0x3fe45aa3492e0404              # double 0.63606418888969118
	.quad	0x3fe83416ca99412a              # double 0.7563585240368742
	.quad	0x3fd0deadc4bc16b8              # double 0.26359123432517206
	.quad	0x3fe2fc3678143963              # double 0.59328769162111106
	.quad	0x3fe3668ca6eb2fe5              # double 0.60626823998745449
	.quad	0x3fe08c90678c694a              # double 0.51715870117485818
	.quad	0x3fc2d90be9307650              # double 0.14724873434254215
	.quad	0x3fc0e2c0c656320c              # double 0.13191995319756733
	.quad	0x3fbfeb3bddedab90              # double 0.12468313377546125
	.quad	0x3f89ae766a20ee40              # double 0.012539792169369623
	.quad	0x3fc4dae9de78c0d8              # double 0.16293071139217008
	.quad	0x3fc4c58686d6bdf8              # double 0.16227799972465085
	.quad	0x3fea1ad53ae7b459              # double 0.81577550415898792
	.quad	0x3fe2da6f2a82bcfb              # double 0.58916433623190245
	.quad	0x3fefdccf0dd32a40              # double 0.99570419979256286
	.quad	0x3fe0d2c3de302c89              # double 0.52572816272858447
	.quad	0x3fecc780a5035b75              # double 0.89935333470462686
	.quad	0x3fe541f4749a96e0              # double 0.66430113577072447
	.quad	0x3fdddd063eb48d26              # double 0.46661525844156626
	.quad	0x3fa749a8cc323a30              # double 0.045483851362508765
	.quad	0x3fdbcbc198896dfe              # double 0.43431129356551412
	.quad	0x3fef96b297fbf362              # double 0.98714570698176041
	.quad	0x3fdaceaff3021160              # double 0.41886519175775128
	.quad	0x3fef2b3ec2f8da1e              # double 0.9740289505051043
	.quad	0x3fe3ec11e525c56e              # double 0.62256712680225035
	.quad	0x3fe200dd4335b49b              # double 0.56260550619994676
	.quad	0x3fe68c73ebf2997f              # double 0.70464511950994779
	.quad	0x3fd35d757cc6b706              # double 0.30257928071192486
	.quad	0x3fe8f5fe4b1db3a8              # double 0.78002848311517869
	.quad	0x3fec531fa3247e5d              # double 0.88514692176608956
	.quad	0x3fd35ce78f6aff28              # double 0.30254544263515237
	.quad	0x3fd07128a5713bc8              # double 0.25690666347958002
	.quad	0x3fd5fdaf6fc80c4e              # double 0.34360872188716918
	.quad	0x3fed75c48d259466              # double 0.92062594955190202
	.quad	0x3fe861b4bd08d5d8              # double 0.76192700310519523
	.quad	0x3fc4629675cb1738              # double 0.15925865890147306
	.quad	0x3fd67cd72694057a              # double 0.35136965529826336
	.quad	0x3fdbde64b8c577d8              # double 0.43544881862714879
	.quad	0x3fca2495a6c2d918              # double 0.20424147265084325
	.quad	0x3fe8c71070596a38              # double 0.77429983084886711
	.quad	0x3fbee0358683c8b8              # double 0.12060865911533625
	.quad	0x3fada8205131f060              # double 0.057923326407917086
	.quad	0x3fdf5b50dec1788e              # double 0.48994848016253278
	.quad	0x3fead466d38a4705              # double 0.83842793766436385
	.quad	0x3fde92f3d4cae686              # double 0.47771926670575515
	.quad	0x3fef0b7cf8c7a45f              # double 0.97015236463370146
	.quad	0x3fdb7981aff09e92              # double 0.42929117375977299
	.quad	0x3fc10aaa3f9b70d8              # double 0.13313797097987989
	.quad	0x3fe2c3980637260d              # double 0.58637620176267691
	.quad	0x3fe9b89544664a6b              # double 0.80378211364070518
	.quad	0x3fe6a34bfa9f6d3c              # double 0.70743369054563443
	.quad	0x3febcd1147c7c6fe              # double 0.86878265399556631
	.quad	0x3fe52380debfb20f              # double 0.66058391099574176
	.quad	0x3fef3872d409e383              # double 0.97564069188875668
	.quad	0x3fa0260a88cb9740              # double 0.031540230940477532
	.quad	0x3f9f414391809e40              # double 0.03052239966942083
	.quad	0x3fcf62573543dbd8              # double 0.24518861866792352
	.quad	0x3f94efc28e92f040              # double 0.020445861770653773
	.quad	0x3fe881febcfff909              # double 0.76586853899041885
	.quad	0x3fe303114b331264              # double 0.59412445723917218
	.quad	0x3feb53a441213957              # double 0.85396015854511631
	.quad	0x3fddcf3b2ad1012a              # double 0.46577338391581924
	.quad	0x3fc965a2dfcad31c              # double 0.19841419150693518
	.quad	0x3fd19033f89c796e              # double 0.274426453384783
	.quad	0x3fe7df3d546b5312              # double 0.74600092399723139
	.quad	0x3fe895c9f0e73609              # double 0.76828476954841662
	.quad	0x3fbdc775ee80cd20              # double 0.11632477829771348
	.quad	0x3fe801ae1ce712f5              # double 0.75020509381337652
	.quad	0x3fe2c85786c1c418              # double 0.58695579833704681
	.quad	0x3f9acc3ec49e0cc0              # double 0.026169758558819423
	.quad	0x3fe137a722300f94              # double 0.53804356267254372
	.quad	0x3fe0beb85506a858              # double 0.52328125578538742
	.quad	0x3f875d1498e7aa40              # double 0.011408005634582996
	.quad	0x3fe732ae3ec43046              # double 0.7249366022019863
	.quad	0x3fe15310b0be1e0c              # double 0.54138979454086344
	.quad	0x3fd7dd34e2ed01dc              # double 0.37287637863849254
	.quad	0x3fda0fd53bf10e90              # double 0.40721636632609037
	.quad	0x3fe51402b99ea15e              # double 0.65869270566785665
	.quad	0x3fe99b736fad9046              # double 0.80022594272714609
	.quad	0x3fe879e67640f733              # double 0.76488040062370144
	.quad	0x3fed78a19c7861ce              # double 0.92097549973100867
	.quad	0x3fe8e270a1d8fce6              # double 0.77764159785138243
	.quad	0x3fda8a8b35cb3268              # double 0.41470604184431759
	.quad	0x3fec415542c3aea2              # double 0.88297522582930221
	.quad	0x3fec60a65b0264fa              # double 0.88679807448639214
	.quad	0x3fe2616bfcfa909b              # double 0.57439231309810468
	.quad	0x3fee75f09c7abe48              # double 0.95189695894618697
	.quad	0x3fe83516c4a90030              # double 0.75648058328807188
	.quad	0x3fee78e37f9d7bfb              # double 0.95225691723669514
	.quad	0x3fee336104a5470f              # double 0.94377184779497891
	.quad	0x3fd07863c96d53d0              # double 0.25734800978289929
	.quad	0x3fe2fddd98dfa98e              # double 0.59348945482388316
	.quad	0x3fed262b59dbe0e2              # double 0.91090934324804729
	.quad	0x3fe7850000c74f70              # double 0.73498535301267331
	.quad	0x3feceb65b74bcb99              # double 0.90373502540602424
	.quad	0x3fdbacab11864296              # double 0.43241383277294554
	.quad	0x3fc12bb12af33cd4              # double 0.13414587590384619
	.quad	0x3fc3ff6c757ca67c              # double 0.15623241173425473
	.quad	0x3fd484f9f1e0e244              # double 0.32061623211805945
	.quad	0x3fd5c08594e29124              # double 0.33987559833100733
	.quad	0x3fb81dab003606f8              # double 0.094202697326206564
	.quad	0x3fe4baa6b6c0e47c              # double 0.64778457349815666
	.quad	0x3fe568476efee37b              # double 0.66897937468375746
	.quad	0x3fdc15ac3fef752a              # double 0.43882280582131961
	.quad	0x3fd565e50f2e4422              # double 0.33434416277401813
	.quad	0x3feca96f0b6351a7              # double 0.89568283294879769
	.quad	0x3fdd6f8d922a0116              # double 0.45993365548930976
	.quad	0x3f9204f12e868080              # double 0.017596977677044823
	.quad	0x3fe7fcadaf002f4e              # double 0.74959453754261474
	.quad	0x3fc0acf743b1d4cc              # double 0.13027849965479843
	.quad	0x3feab75826ef1887              # double 0.83488090137758852
	.quad	0x3fec4787ca61d5cd              # double 0.88373174217002204
	.quad	0x3fe6fc9886312c47              # double 0.71833444795027723
	.quad	0x3fd217222b6bc168              # double 0.28266195526432236
	.quad	0x3fef337e1db512c7              # double 0.97503572275362493
	.quad	0x3f6b479710ae9e00              # double 0.0033300352565281965
	.quad	0x3fa119a32d7e9ae0              # double 0.033398722938093206
	.quad	0x3fec44d160c7d63a              # double 0.88340062048400303
	.quad	0x3f94c0a1466f4b20              # double 0.020266075061793676
	.quad	0x3fd75b611ca1ce88              # double 0.36495235248660451
	.quad	0x3fe5de9807aee0a2              # double 0.68342210293396399
	.quad	0x3fdf425f38bfd48c              # double 0.48842602292945325
	.quad	0x3fd518c9c4dbecc6              # double 0.32963794922370615
	.quad	0x3fc6ba2b11235fe0              # double 0.17755640351128843
	.quad	0x3fe2c0a9988968eb              # double 0.58601836960158715
	.quad	0x3fec8da27dfd063f              # double 0.89228939635376736
	.quad	0x3fc6662a54e81264              # double 0.17499283929659548
	.quad	0x3fd47c50add198c0              # double 0.32008759474264181
	.quad	0x3fe90bfc725bfa37              # double 0.78271314941213788
	.quad	0x3fd4a4855b1a1d10              # double 0.32254156014137525
	.quad	0x3fdfadfc8f5ff550              # double 0.49499429704140585
	.quad	0x3fe5488fe2daefc4              # double 0.66510767276440008
	.quad	0x3fe019c96e53304c              # double 0.50314780757754241
	.quad	0x3fe413503253d432              # double 0.62735757665234915
	.quad	0x3fe66b41aedf9854              # double 0.70059284357990714
	.quad	0x3fdf3877aaa5631c              # double 0.4878214994874257
	.quad	0x3fe4ef08d64e5b99              # double 0.65417901856095562
	.quad	0x3fc117d1d65af664              # double 0.13353941885536635
	.quad	0x3fe5d4e4a9205ceb              # double 0.68223794014457206
	.quad	0x3fed32f83e5b55fa              # double 0.91247188738878937
	.quad	0x3fd4844e77f705b4              # double 0.32057534900021811
	.quad	0x3fd2f635964f82d8              # double 0.2962774246098383
	.quad	0x3fe0a5e8bb7a2573              # double 0.52025257698657723
	.quad	0x3fe47cd0c3165bf4              # double 0.64023626425739488
	.quad	0x3fee1ad45580b1f9              # double 0.94077507686375761
	.quad	0x3fe9aadc98fa193f              # double 0.80210714224157431
	.quad	0x3fbe291a918acb90              # double 0.11781469395900346
	.quad	0x3fe7dfa667ebd871              # double 0.74605102822421376
	.quad	0x3fea4d4650766fd8              # double 0.82193294253692795
	.quad	0x3fe2b6091d71608a              # double 0.58472114325106017
	.quad	0x3fce25756c7bc738              # double 0.2355181483940727
	.quad	0x3fe15e2330e24fcb              # double 0.54274138972913855
	.quad	0x3fe64922571ce794              # double 0.69642750753631555
	.quad	0x3fe1b9d871913557              # double 0.5539362161741036
	.quad	0x3fd7b20a99ea0d7c              # double 0.3702417853421236
	.quad	0x3fe110d2fec41cbd              # double 0.53330373534199504
	.quad	0x3fc1c62dc9549678              # double 0.13886043863856279
	.quad	0x3fcee631f86723d0              # double 0.24139999989554761
	.quad	0x3f9fa3bb7a5687c0              # double 0.030898026792449462
	.quad	0x3fa392e837540ad0              # double 0.03823018718141713
	.quad	0x3fda856d88d42d76              # double 0.41439379083813976
	.quad	0x3fdc9efafc3b551c              # double 0.44720339424141442
	.quad	0x3fa6454bb468d3c0              # double 0.043497434399263124
	.quad	0x3fd9098978175d5e              # double 0.39120709159529621
	.quad	0x3f806b3160ddd940              # double 0.0080169542013491801
	.quad	0x3fdf07cab8eb9884              # double 0.48485057886717464
	.quad	0x3fe903a16ae522f3              # double 0.78169318082754413
	.quad	0x3fd1a7d63b969b1e              # double 0.27586894816561081
	.quad	0x3fe97fea3153034c              # double 0.79686460145613002
	.quad	0x3fe1e44ec895b500              # double 0.5591195981666317
	.quad	0x3fd92c971fa46b6c              # double 0.39334657754959923
	.quad	0x3fea447df4bfe8bf              # double 0.82086084177651475
	.quad	0x3fec3fb6da5904a4              # double 0.88277762075462762
	.quad	0x3fd622bbbc8e70c0              # double 0.34586995519363128
	.quad	0x3fadd9319a13f210              # double 0.058297681864107997
	.quad	0x3fe52a8505fc9acb              # double 0.66144038361820756
	.quad	0x3fe818fd252bf7b1              # double 0.7530503965388019
	.quad	0x3fc207355b7fcad8              # double 0.14084498374685128
	.quad	0x3f8eb2dc2bc31b80              # double 0.014989585958017804
	.quad	0x3fd120a638c449ec              # double 0.26761775535228938
	.quad	0x3fd80bcd8af1ebe8              # double 0.37572039193008644
	.quad	0x3fd2bb5a4c44c980              # double 0.29268510292163086
	.quad	0x3fe7c0295fea1165              # double 0.74220722897784397
	.quad	0x3fe7f2059088bc98              # double 0.7482936690265829
	.quad	0x3fdad3e2b3270278              # double 0.41918246741628407
	.quad	0x3fee848c63bcdc5f              # double 0.95368022422816157
	.quad	0x3fbd93f23c681488              # double 0.11553873038072215
	.quad	0x3fe4aad3842a8091              # double 0.64585281194378485
	.quad	0x3fc2018489d89098              # double 0.14067131739387118
	.quad	0x3feef8b82dd4912a              # double 0.96786126090276992
	.quad	0x3fe50fc80e2cbca0              # double 0.65817644852167589
	.quad	0x3fa8a8a3cea877b0              # double 0.048161620117965653
	.quad	0x3fe832ebdb1f8389              # double 0.75621598050575856
	.quad	0x3fd776a763a2d25e              # double 0.36661705713348691
	.quad	0x3fca7def455bae6c              # double 0.20696822058322384
	.quad	0x3f736e0072a1a380              # double 0.0047435777179111183
	.quad	0x3fc874f503955dec              # double 0.19106924700712058
	.quad	0x3fdfd9b37120a426              # double 0.49766241119010812
	.quad	0x3fa7dab6bdba85d0              # double 0.046590529117803592
	.quad	0x3fdf2ee7106cc238              # double 0.48723770717609538
	.quad	0x3fd0c9c67082a648              # double 0.26231537806834071
	.quad	0x3fdf87799cc443a6              # double 0.49264374074214812
	.quad	0x3fec291b50263e21              # double 0.88001790670563562
	.quad	0x3fefccf311ebbc2b              # double 0.99376824855960899
	.quad	0x3fee789b495994cd              # double 0.95222248388440678
	.quad	0x3fd8b32c748e5bca              # double 0.38593589193754652
	.quad	0x3f94d773e6d19b60              # double 0.020353136981067776
	.quad	0x3fef49fc0e5220d1              # double 0.97778132245096049
	.quad	0x3fd110012eabf13a              # double 0.26660184438493995
	.quad	0x3fe358993de4c0a3              # double 0.60456525887095258
	.quad	0x3f93ad10a3ee2960              # double 0.019214878087532639
	.quad	0x3fd849f45a2dc814              # double 0.37951382452513482
	.quad	0x3fd0c4f9354c943c              # double 0.26202230648988567
	.quad	0x3fd0357d8f01a5de              # double 0.25326479878876096
	.quad	0x3fb8cd62fcc922c8              # double 0.096883951869254692
	.quad	0x3fd253201b4b2af4              # double 0.28632357278244958
	.quad	0x3fd7579fe234e764              # double 0.36472317781919217
	.quad	0x3fd4a2bc9d8b6e40              # double 0.32243266473026111
	.quad	0x3febf216361ba420              # double 0.87330160682643409
	.quad	0x3feef1bfef220666              # double 0.96701046662947188
	.quad	0x3fef21b432b033c8              # double 0.97286424541527427
	.quad	0x3fe472c5bae0367b              # double 0.63901030062852671
	.quad	0x3febd38571b2b0c8              # double 0.86957046705858776
	.quad	0x3fed3647d1b77249              # double 0.91287604294081703
	.quad	0x3fe20f67c09039ec              # double 0.56438052759204771
	.quad	0x3feecff4f0f309ed              # double 0.96288535175727718
	.quad	0x3fe570e9701a0c72              # double 0.67003318686364666
	.quad	0x3fdd2656069a04e8              # double 0.45546484608355664
	.quad	0x3feeec68052d9d7d              # double 0.96635819445957304
	.quad	0x3fd0697927650154              # double 0.25643757674335643
	.quad	0x3fc2a20ad9daf4d4              # double 0.14557014119592415
	.quad	0x3fe11a2bff188cfa              # double 0.53444480727594557
	.quad	0x3fef53f1289250bf              # double 0.97899682926301767
	.quad	0x3fceca2fc3b2f704              # double 0.24054524474734518
	.quad	0x3fe9a383aaf0f9d2              # double 0.80121024500823013
	.quad	0x3fee756c167c005c              # double 0.95183376685600817
	.quad	0x3f41bd6a81e03400              # double 5.4137898018924435E-4
	.quad	0x3fd36ff386f8c810              # double 0.30370796376075848
	.quad	0x3febaf8c62f16dd1              # double 0.86517924618550002
	.quad	0x3fc86a4d0875ecf8              # double 0.19074404633634123
	.quad	0x3fe87d12c74f5d72              # double 0.76526774337518888
	.quad	0x3fe07761a8208a29              # double 0.51457293355298817
	.quad	0x3fe572644ff994b7              # double 0.67021384830572728
	.quad	0x3fa158e404e69a40              # double 0.033881307218781576
	.quad	0x3fee4c7e764a771e              # double 0.94683764556586758
	.quad	0x3fdc132ede5893ae              # double 0.43867084229924103
	.quad	0x3fef64276155f013              # double 0.98097580920102911
	.quad	0x3fe92154b1e8a6b5              # double 0.78531870601474074
	.quad	0x3fd6c1e1cd9287d4              # double 0.35558362079075079
	.quad	0x3fba8f3cbb19bc18              # double 0.10374812667736
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
