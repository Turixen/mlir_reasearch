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
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	.cfi_offset s11, -104
	csrr	a1, vlenb
	slli	a1, a1, 4
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0x90, 0x01, 0x22, 0x11, 0x10, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 144 + 16 * vlenb
	li	s3, 0
	li	t5, 0
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s7, 256(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a6, 352(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t0, 344(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t1, 336(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t2, 328(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t3, 320(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s8, 312(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t4, 304(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t6, 176(a1)
	csrr	s10, vlenb
	li	s6, 99
	li	s2, 800
	slli	s9, s10, 4
	slli	s11, s10, 1
	slli	s10, s10, 3
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	s3, s3, 800
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
	or	s4, a4, a5
	slli	s0, s0, 32
	or	s5, s0, a3
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s4, s4, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s4, s5, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	ra, 0
	slli	a3, s4, 3
	add	a4, a7, a3
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	add	a3, a3, t6
	fld	fa5, 0(a3)
	slli	a5, a5, 32
	or	a4, a4, a5
	mul	a4, a4, s2
	li	a3, 100
	mv	a5, s3
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	a1, zero, e32, m8, ta, ma
	vmv.v.x	v8, s1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	add	s1, s8, a4
	vsetvli	a1, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	addi	a0, sp, 32
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	add	a1, s7, a5
	vsetvli	s0, zero, e32, m8, ta, ma
	vid.v	v24
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vl8r.v	v0, (a0)                        # Unknown-size Folded Reload
	vsetvli	s0, zero, e32, m4, ta, ma
	vmslt.vv	v7, v24, v0
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vl8r.v	v16, (a0)                       # Unknown-size Folded Reload
	vmslt.vv	v6, v28, v20
	vsetvli	zero, zero, e64, m8, ta, mu
	vmv.v.i	v16, 0
	add	s0, s1, s10
	vmv1r.v	v0, v6
	vle64.v	v8, (s0), v0.t
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	addi	a0, sp, 32
	vl8r.v	v24, (a0)                       # Unknown-size Folded Reload
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	vle64.v	v24, (s1), v0.t
	vle64.v	v16, (a1), v0.t
	add	a1, a1, s10
	vmv.v.i	v8, 0
	vmv1r.v	v0, v6
	vle64.v	v8, (a1), v0.t
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vfmul.vf	v8, v8, fa5
	csrr	a1, vlenb
	slli	a1, a1, 3
	add	a1, a1, sp
	addi	a1, a1, 32
	vl8r.v	v24, (a1)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	vse64.v	v8, (s0), v0.t
	vmv1r.v	v0, v7
	vse64.v	v16, (s1), v0.t
	add	ra, ra, s11
	add	a4, a4, s9
	add	a5, a5, s9
	sub	a3, a3, s11
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, ra, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	s1, a3
	blt	a3, s11, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	s1, s11
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s8, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	csrr	a0, vlenb
	slli	a0, a0, 4
	add	sp, sp, a0
	.cfi_def_cfa sp, 144
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
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
	.cfi_restore s11
	addi	sp, sp, 144
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
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	131                             # 0x83
	.quad	132                             # 0x84
	.quad	138                             # 0x8a
	.quad	176                             # 0xb0
	.quad	183                             # 0xb7
	.quad	185                             # 0xb9
	.quad	219                             # 0xdb
	.quad	227                             # 0xe3
	.quad	230                             # 0xe6
	.quad	265                             # 0x109
	.quad	271                             # 0x10f
	.quad	275                             # 0x113
	.quad	310                             # 0x136
	.quad	311                             # 0x137
	.quad	316                             # 0x13c
	.quad	353                             # 0x161
	.quad	359                             # 0x167
	.quad	362                             # 0x16a
	.quad	401                             # 0x191
	.quad	406                             # 0x196
	.quad	407                             # 0x197
	.quad	443                             # 0x1bb
	.quad	446                             # 0x1be
	.quad	450                             # 0x1c2
	.quad	486                             # 0x1e6
	.quad	490                             # 0x1ea
	.quad	492                             # 0x1ec
	.quad	529                             # 0x211
	.quad	532                             # 0x214
	.quad	535                             # 0x217
	.quad	570                             # 0x23a
	.quad	573                             # 0x23d
	.quad	579                             # 0x243
	.quad	616                             # 0x268
	.quad	620                             # 0x26c
	.quad	623                             # 0x26f
	.quad	660                             # 0x294
	.quad	664                             # 0x298
	.quad	667                             # 0x29b
	.quad	704                             # 0x2c0
	.quad	706                             # 0x2c2
	.quad	710                             # 0x2c6
	.quad	747                             # 0x2eb
	.quad	753                             # 0x2f1
	.quad	761                             # 0x2f9
	.quad	796                             # 0x31c
	.quad	798                             # 0x31e
	.quad	800                             # 0x320
	.quad	836                             # 0x344
	.quad	839                             # 0x347
	.quad	844                             # 0x34c
	.quad	881                             # 0x371
	.quad	885                             # 0x375
	.quad	889                             # 0x379
	.quad	924                             # 0x39c
	.quad	929                             # 0x3a1
	.quad	930                             # 0x3a2
	.quad	967                             # 0x3c7
	.quad	974                             # 0x3ce
	.quad	975                             # 0x3cf
	.quad	1013                            # 0x3f5
	.quad	1014                            # 0x3f6
	.quad	1019                            # 0x3fb
	.quad	1056                            # 0x420
	.quad	1061                            # 0x425
	.quad	1066                            # 0x42a
	.quad	1102                            # 0x44e
	.quad	1108                            # 0x454
	.quad	1115                            # 0x45b
	.quad	1151                            # 0x47f
	.quad	1157                            # 0x485
	.quad	1159                            # 0x487
	.quad	1196                            # 0x4ac
	.quad	1198                            # 0x4ae
	.quad	1202                            # 0x4b2
	.quad	1239                            # 0x4d7
	.quad	1241                            # 0x4d9
	.quad	1246                            # 0x4de
	.quad	1284                            # 0x504
	.quad	1285                            # 0x505
	.quad	1287                            # 0x507
	.quad	1324                            # 0x52c
	.quad	1330                            # 0x532
	.quad	1335                            # 0x537
	.quad	1373                            # 0x55d
	.quad	1376                            # 0x560
	.quad	1377                            # 0x561
	.quad	1413                            # 0x585
	.quad	1415                            # 0x587
	.quad	1419                            # 0x58b
	.quad	1456                            # 0x5b0
	.quad	1460                            # 0x5b4
	.quad	1462                            # 0x5b6
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	99                              # 0x63
	.quad	21                              # 0x15
	.quad	48                              # 0x30
	.quad	75                              # 0x4b
	.quad	98                              # 0x62
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	30                              # 0x1e
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	2                               # 0x2
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	98                              # 0x62
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	80                              # 0x50
	.quad	3                               # 0x3
	.quad	24                              # 0x18
	.quad	48                              # 0x30
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	44                              # 0x2c
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	74                              # 0x4a
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	63                              # 0x3f
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
	.quad	9                               # 0x9
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	42                              # 0x2a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	59                              # 0x3b
	.quad	83                              # 0x53
	.quad	62                              # 0x3e
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	21                              # 0x15
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
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	24                              # 0x18
	.quad	49                              # 0x31
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	44                              # 0x2c
	.quad	79                              # 0x4f
	.quad	0                               # 0x0
	.quad	14                              # 0xe
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	21                              # 0x15
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
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
	.quad	58                              # 0x3a
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
	.quad	5                               # 0x5
	.quad	97                              # 0x61
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	85                              # 0x55
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
	.quad	41                              # 0x29
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
	.quad	26                              # 0x1a
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	15                              # 0xf
	.quad	85                              # 0x55
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
	.quad	22                              # 0x16
	.quad	45                              # 0x2d
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	32                              # 0x20
	.quad	55                              # 0x37
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
	.quad	28                              # 0x1c
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
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	52                              # 0x34
	.quad	97                              # 0x61
	.quad	11                              # 0xb
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	86                              # 0x56
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
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	70                              # 0x46
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
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
	.quad	69                              # 0x45
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
	.quad	40                              # 0x28
	.quad	99                              # 0x63
	.quad	53                              # 0x35
	.quad	88                              # 0x58
	.quad	0                               # 0x0
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
	.quad	46                              # 0x2e
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
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
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
	.quad	34                              # 0x22
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
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	30                              # 0x1e
	.quad	65                              # 0x41
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
	.quad	0                               # 0x0
	.quad	49                              # 0x31
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	26                              # 0x1a
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
	.quad	46                              # 0x2e
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
	.quad	7                               # 0x7
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	78                              # 0x4e
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	10                              # 0xa
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	83                              # 0x53
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	25                              # 0x19
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
	.quad	34                              # 0x22
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
	.quad	14                              # 0xe
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	27                              # 0x1b
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	22                              # 0x16
	.quad	70                              # 0x46
	.quad	24                              # 0x18
	.quad	60                              # 0x3c
	.quad	96                              # 0x60
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
	.quad	29                              # 0x1d
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
	.quad	21                              # 0x15
	.quad	53                              # 0x35
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	0                               # 0x0
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
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	32                              # 0x20
	.quad	21                              # 0x15
	.quad	50                              # 0x32
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
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
	.quad	13                              # 0xd
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	44                              # 0x2c
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	39                              # 0x27
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
	.quad	58                              # 0x3a
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
	.quad	99                              # 0x63
	.quad	71                              # 0x47
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	27                              # 0x1b
	.quad	53                              # 0x35
	.quad	66                              # 0x42
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
	.quad	2                               # 0x2
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	0x3fc02a31948ef9fc              # double 0.12628764871438125
	.quad	0x3fe08666ae66af5b              # double 0.51640638411252426
	.quad	0x3fd3bceef21f5e4e              # double 0.30840657849100672
	.quad	0x3fee81ee4c3b4313              # double 0.95336069954837155
	.quad	0x3fe61179c3c560f9              # double 0.68963325726056646
	.quad	0x3fabff5df6d8cd20              # double 0.054682670958209778
	.quad	0x3fc6254c232aaeb4              # double 0.17301322667241481
	.quad	0x3fe98011ad7b2091              # double 0.79688342936516865
	.quad	0x3fe98cb7f85b3b79              # double 0.79842756754975064
	.quad	0x3fe1a4a64a94377e              # double 0.55134882513242167
	.quad	0x3fe8a57354ba6ce9              # double 0.77019659565430942
	.quad	0x3fea38deead1ada1              # double 0.81944223273369599
	.quad	0x3fe926f7fec06143              # double 0.78600692516469228
	.quad	0x3fe66fa2815a374e              # double 0.7011272932447612
	.quad	0x3fe514e254a6ca1f              # double 0.65879932912350003
	.quad	0x3fcb0d2dec641b0c              # double 0.21133970301180971
	.quad	0x3fe5fc142661b71b              # double 0.68702132698465179
	.quad	0x3fd9083c47242a30              # double 0.39112765262021565
	.quad	0x3fee42796eaec3c4              # double 0.94561454408368961
	.quad	0x3fbb0a6e96efef98              # double 0.10562792954436728
	.quad	0x3fdde66db771dcf8              # double 0.46718924440888498
	.quad	0x3feb4e548dd97798              # double 0.85331180291153697
	.quad	0x3fd8d5e287130dce              # double 0.3880544966779923
	.quad	0x3fec144308bc379a              # double 0.87747337061022113
	.quad	0x3fb1f474da156490              # double 0.07013635944658092
	.quad	0x3faf9a275854db60              # double 0.061722974331522407
	.quad	0x3fd09c8683130f8a              # double 0.2595535545371993
	.quad	0x3fcd15406e78a1d8              # double 0.22721104997732655
	.quad	0x3fe1b17a7cf06c16              # double 0.5529148521631011
	.quad	0x3fe19c3f6373e54c              # double 0.55032319473608871
	.quad	0x3fd25f52435b1b20              # double 0.28706795289729037
	.quad	0x3fd0169ac517d106              # double 0.25137967345587275
	.quad	0x3fc2712d94d68c6c              # double 0.1440789200542868
	.quad	0x3fde3f6535c07a9e              # double 0.47261934518057014
	.quad	0x3fe9499a17f006b3              # double 0.79023461032212194
	.quad	0x3fc1f77afaf8f4d8              # double 0.14036500219837111
	.quad	0x3fc552318b41c620              # double 0.166570847507999
	.quad	0x3fe05e2342bb7bd9              # double 0.51149142297424099
	.quad	0x3fc7d3d19cd5cdb4              # double 0.18615169675795828
	.quad	0x3fa2b9837db38560              # double 0.036571606726065964
	.quad	0x3fd458b72e0c107e              # double 0.31791476723470413
	.quad	0x3fe68996daca90c2              # double 0.7042955659167307
	.quad	0x3fecf87a7e9d707e              # double 0.90533184747211215
	.quad	0x3fd385467a0d14b6              # double 0.30500947875072926
	.quad	0x3fc749fd7b2f083c              # double 0.1819455005152707
	.quad	0x3fe25a857ebbf00a              # double 0.57354998352775621
	.quad	0x3fdcf08eb4184c18              # double 0.4521824606646887
	.quad	0x3fefae17b43d27b4              # double 0.99000153735072737
	.quad	0x3fe19f58af4f7177              # double 0.55070146789834851
	.quad	0x3fe26c13f6ad3ccb              # double 0.57569311312718108
	.quad	0x3fe7d884ce62afb2              # double 0.74518051442782096
	.quad	0x3fec7870ecfd5e40              # double 0.88970228468946999
	.quad	0x3fe4d2c15d4c6a11              # double 0.65072696897851945
	.quad	0x3fcbc0dd9c254c1c              # double 0.21682329296399494
	.quad	0x3fea562a1992605c              # double 0.82301812166680177
	.quad	0x3fe984b488fe0065              # double 0.79744936710632131
	.quad	0x3fd61a894bca7000              # double 0.34536964799349334
	.quad	0x3fbb472076c88ef0              # double 0.10655405902849302
	.quad	0x3fbcc77358afad38              # double 0.11241837420646028
	.quad	0x3fe80955574b5de1              # double 0.75113932656944027
	.quad	0x3fa1924c4030fe90              # double 0.034319289050924628
	.quad	0x3fe78fbdc81cb174              # double 0.73629654964820057
	.quad	0x3f82abb90ae2f740              # double 0.0091165977904626993
	.quad	0x3f9293daabcb2e40              # double 0.018142143950895084
	.quad	0x3fe67efd01f10bcf              # double 0.70300150279251195
	.quad	0x3fc8fb79aa3c7938              # double 0.19517441570583016
	.quad	0x3fa0471a319ab260              # double 0.031792467646799549
	.quad	0x3fd09241895f6d20              # double 0.25892675795849307
	.quad	0x3fda575bd30d1592              # double 0.41158195124111174
	.quad	0x3fd2719cccd4aa92              # double 0.28818435671807052
	.quad	0x3fc9f2b8de6eda00              # double 0.20271979199397094
	.quad	0x3f74a7f543e3c880              # double 0.0050429897948892632
	.quad	0x3fd7772ddd232f04              # double 0.36664911838009595
	.quad	0x3fec7dc83af2c1de              # double 0.89035426629385106
	.quad	0x3fe6dd93f1c6c3dd              # double 0.7145480844684432
	.quad	0x3fea66de5e5b29e8              # double 0.82505720547606831
	.quad	0x3fe5ba7590edc237              # double 0.67901113802333313
	.quad	0x3fe2799cbdcefa5e              # double 0.57734524795507602
	.quad	0x3fe570686ff59457              # double 0.66997167460489038
	.quad	0x3fd1666c2abd9bf0              # double 0.2718763749493851
	.quad	0x3fea248c61a4d469              # double 0.81696147032802202
	.quad	0x3fe584d668c77497              # double 0.67246551956818024
	.quad	0x3fc2c204dda71814              # double 0.14654599020849501
	.quad	0x3fd55c2fc148d97c              # double 0.33375162005849979
	.quad	0x3f940db75023dae0              # double 0.019583572641716951
	.quad	0x3fc75058629e4960              # double 0.18213944259020831
	.quad	0x3fd89487e8665d6c              # double 0.38406560607241746
	.quad	0x3fcb517178acd588              # double 0.21342295067158212
	.quad	0x3fdcf6ec9c6e0e1a              # double 0.45257106090886767
	.quad	0x3fdb186e253a9bf8              # double 0.42336610446585565
	.quad	0x3fe79cbfebfcc074              # double 0.73788448420783803
	.quad	0x3fc0da5ba4624320              # double 0.13166375662378815
	.quad	0x3fdabaf6a4258f98              # double 0.41766134290650703
	.quad	0x3fe8778d68d487b7              # double 0.76459379648826242
	.quad	0x3fd5ccdbf69695d4              # double 0.3406286151970026
	.quad	0x3fed76f95e7ea453              # double 0.92077320533747764
	.quad	0x3fe984ee15b4ad37              # double 0.79747680892379591
	.quad	0x3fe0497e0d76e1d9              # double 0.50897123937380251
	.quad	0x3f927e6cfdf223e0              # double 0.01806040096247219
	.quad	0x3fdb53246adc58aa              # double 0.4269496005594059
	.quad	0x3fcf8a404e71e13c              # double 0.24640659170450785
	.quad	0x3fe8789f825936fe              # double 0.7647244974011469
	.quad	0x3fbff47e69dd2168              # double 0.12482442936482629
	.quad	0x3fdc3482bc1b2954              # double 0.44070499772773997
	.quad	0x3fe192037ecd5029              # double 0.54907393232361301
	.quad	0x3fc691fa9dfd1f88              # double 0.17632992471976316
	.quad	0x3fe4c07b2f04ce93              # double 0.64849623854975602
	.quad	0x3fe205afd008f4b3              # double 0.56319418556053902
	.quad	0x3fb5fef29647d178              # double 0.085921441735825499
	.quad	0x3fe8871c298ef3aa              # double 0.76649292103649214
	.quad	0x3fd183c87e4e3870              # double 0.27366840681577909
	.quad	0x3fbc856adb59d060              # double 0.11141078810925498
	.quad	0x3fd45679ed291878              # double 0.31777809295852633
	.quad	0x3fecda140c2a78f6              # double 0.90162088752893399
	.quad	0x3fef5431458f44dd              # double 0.9790274008356864
	.quad	0x3fe7c9eb20de826e              # double 0.74339825076829213
	.quad	0x3fd0bb6fd940170a              # double 0.26144024101118701
	.quad	0x3fe7e7c288f8f67e              # double 0.74704100372737492
	.quad	0x3fa5f5f69f7dd370              # double 0.042892176598718801
	.quad	0x3fd4a7b2264fd50e              # double 0.32273534528151593
	.quad	0x3fe030afe2b81ec4              # double 0.50594324380013989
	.quad	0x3fd146de5713113c              # double 0.26995047095649105
	.quad	0x3febea538684407e              # double 0.87235428116584024
	.quad	0x3fec0f912d8e3a74              # double 0.87690028092931848
	.quad	0x3fc77173aa1b6220              # double 0.18314977460865212
	.quad	0x3fefb9670317dd15              # double 0.99138212780136092
	.quad	0x3fd01c6c319bf8d6              # double 0.25173477978377201
	.quad	0x3fd992417d4e0d02              # double 0.39955174671941063
	.quad	0x3fe7715df6965d01              # double 0.73258875047295657
	.quad	0x3fed0cb0fc439395              # double 0.90779923696810505
	.quad	0x3fea198a6b95ba9e              # double 0.81561776173278466
	.quad	0x3fd90b07221be6a4              # double 0.39129808741527428
	.quad	0x3fd54c38b0c38c78              # double 0.33277718793960487
	.quad	0x3feb5d00d9e2abbb              # double 0.85510294490574468
	.quad	0x3fb35ddd8f4c4950              # double 0.075651023373471959
	.quad	0x3fdb12114f97abac              # double 0.42297776005460253
	.quad	0x3feaaccb686edfcb              # double 0.83359308621492667
	.quad	0x3feb072546b92538              # double 0.84462226689462394
	.quad	0x3fd578a7f0561b8a              # double 0.3354892584833854
	.quad	0x3fcf6a14e15844cc              # double 0.24542485240139056
	.quad	0x3fe0cdfb42cbd612              # double 0.52514422460689247
	.quad	0x3fe50f32d442489b              # double 0.65810529190845857
	.quad	0x3fe7fd3c01675f96              # double 0.74966240190677769
	.quad	0x3fefd0cce484544b              # double 0.99423832542618961
	.quad	0x3fde9a111bc4d98a              # double 0.4781534930401895
	.quad	0x3fed081045a6691a              # double 0.90723432162784268
	.quad	0x3fe328b75156d4b0              # double 0.59872022520598556
	.quad	0x3fec44476594fc5c              # double 0.8833348258994067
	.quad	0x3fd683831386db9e              # double 0.35177685648835133
	.quad	0x3fe2c1cde8e2ab32              # double 0.58615775571283835
	.quad	0x3fed5729e333c779              # double 0.9168900907081784
	.quad	0x3fed3f245b427a20              # double 0.91395776580958809
	.quad	0x3fdc2f420d4b6728              # double 0.44038440035147852
	.quad	0x3fa543efebb35dd0              # double 0.041533944627811459
	.quad	0x3fcc5afad93b04e4              # double 0.22152648550949217
	.quad	0x3fe5ba365cfc8ab3              # double 0.67898100053238009
	.quad	0x3fdb49d6516cd302              # double 0.42638166381520659
	.quad	0x3fe45726d8ec2770              # double 0.63563864104911083
	.quad	0x3fe2bbc841f82616              # double 0.58542263874659528
	.quad	0x3fcb80590d300b3c              # double 0.21485436576775807
	.quad	0x3feb87974d38cd9d              # double 0.86030163843536267
	.quad	0x3fd446f86abf3352              # double 0.31683168816089335
	.quad	0x3fd3b5561ab71116              # double 0.3079428921594326
	.quad	0x3f91d68210f5d980              # double 0.017419845853021254
	.quad	0x3fe3d8481040251f              # double 0.62015155004442934
	.quad	0x3fd1d538f22e33e6              # double 0.27863906526982729
	.quad	0x3fd024d3436555ca              # double 0.25224763471245792
	.quad	0x3fe456d0db90d23d              # double 0.63559763797690716
	.quad	0x3fe9f512d18f7fb9              # double 0.81116619996827588
	.quad	0x3fc9da3392e51ec8              # double 0.20197148010833232
	.quad	0x3fd695e49f6b137a              # double 0.35289874618711503
	.quad	0x3fe9ef92cc642ab3              # double 0.81049480362101745
	.quad	0x3fc0cf8418c4ac64              # double 0.13133288583171343
	.quad	0x3fe68a87b2e7ecdc              # double 0.70441040937967214
	.quad	0x3fe2f98567412747              # double 0.59295911948104496
	.quad	0x3fed30803f9aaf9c              # double 0.91217052862838299
	.quad	0x3fe828fa38d0baee              # double 0.75500212761639118
	.quad	0x3feac9241b3e3e77              # double 0.83705334969449907
	.quad	0x3fea9b22326cd1dd              # double 0.83143720482490446
	.quad	0x3fe30d14b8cd1f63              # double 0.5953467950248349
	.quad	0x3fe24ac2d9f0a9a8              # double 0.57162611547874054
	.quad	0x3fc9ddead8d77390              # double 0.20208488071412178
	.quad	0x3fdb7d3ea6cdf3a4              # double 0.42951933183194968
	.quad	0x3fe993d6112223bc              # double 0.79929641100272119
	.quad	0x3fe15657bb2c78c7              # double 0.54178988034598141
	.quad	0x3fe900ddd135eb2e              # double 0.78135577069710904
	.quad	0x3fed6c24cd0a6660              # double 0.91945114180562015
	.quad	0x3feac358dc15de22              # double 0.83634608254846321
	.quad	0x3fbe3370d3f3ede8              # double 0.11797242331152058
	.quad	0x3fe0b06ab538d60f              # double 0.52153525729107908
	.quad	0x3fb403a0f95b4038              # double 0.078180371168174001
	.quad	0x3fee75a13b2c9628              # double 0.95185910756544434
	.quad	0x3fc4e1412928a7e0              # double 0.16312422284801098
	.quad	0x3fc2a921ba3e4dd0              # double 0.14578649133600985
	.quad	0x3feb84a524bae959              # double 0.85994202779628914
	.quad	0x3fc04e7efe0d3dd8              # double 0.12739550976628666
	.quad	0x3fedcfe877d79a97              # double 0.93162940413170048
	.quad	0x3fda9755bec37440              # double 0.41548675183532069
	.quad	0x3fef737690412fe4              # double 0.98284462141736783
	.quad	0x3fce7eb7ea7a1c84              # double 0.23824213933059835
	.quad	0x3fce4855839ed230              # double 0.23658245970513425
	.quad	0x3fdf255579de5e4e              # double 0.48665367985947661
	.quad	0x3fc3a3479c1c7bcc              # double 0.15342040178890526
	.quad	0x3fe6b4dd27a96075              # double 0.70957811113750202
	.quad	0x3fe9f86cb59d9467              # double 0.81157527419840114
	.quad	0x3fe796680f4a1930              # double 0.7371101664182671
	.quad	0x3fc3fdeb6e619038              # double 0.15618651284887775
	.quad	0x3fb7847dd231cd98              # double 0.091865409676577747
	.quad	0x3fe1b911bb22bdd3              # double 0.55384146261161005
	.quad	0x3fc474fe8aafcf20              # double 0.1598203828030984
	.quad	0x3fe7117410a7eded              # double 0.72088053944702113
	.quad	0x3fe2bd64ddeac328              # double 0.58561938613101905
	.quad	0x3fe0d4ad6144d535              # double 0.52596158025577344
	.quad	0x3fe0dbbbd8d5099a              # double 0.52682297086748808
	.quad	0x3fc80d927eccc21c              # double 0.18791419211767468
	.quad	0x3fb97ed8c04bbe70              # double 0.099591776797518738
	.quad	0x3fd659c90b5ff41e              # double 0.34923006163427484
	.quad	0x3fd412a6093d650e              # double 0.31363821890188681
	.quad	0x3fd65e48d43227d6              # double 0.34950466844804617
	.quad	0x3fe6f39c81a92243              # double 0.71723771404601455
	.quad	0x3fc69a0c87ec6ba8              # double 0.17657620083704484
	.quad	0x3fe2853e007e6956              # double 0.57876491638607308
	.quad	0x3feddb09bacb55a7              # double 0.93298803790337537
	.quad	0x3fdf20c04c3aeb76              # double 0.48637397236205204
	.quad	0x3fe8dd2a1161bfb2              # double 0.77699759859932827
	.quad	0x3feacd9421f1a074              # double 0.83759504918727012
	.quad	0x3fe973168628dd9f              # double 0.79529882624676762
	.quad	0x3feeaf4438b497b5              # double 0.95889483523637031
	.quad	0x3fc170c0394ae828              # double 0.13625338361254191
	.quad	0x3fdee9aec9a62330              # double 0.4830128640392557
	.quad	0x3feab9636ccdd314              # double 0.83513041735440873
	.quad	0x3fcbdf852d88a10c              # double 0.21775879596067005
	.quad	0x3fed9b4ae6e8ed1f              # double 0.92520661449035291
	.quad	0x3fda57731e35e004              # double 0.41158750486602025
	.quad	0x3fc804101405cedc              # double 0.18762398698492333
	.quad	0x3fe1d5576938e88a              # double 0.55729265738706713
	.quad	0x3fcf70051bc8d4e4              # double 0.24560607773461307
	.quad	0x3f9a10adc6a3f860              # double 0.025454249619535907
	.quad	0x3fc471842db1ed88              # double 0.15971424323275252
	.quad	0x3fd7efb845cdd514              # double 0.37400633637237601
	.quad	0x3fe9b267b22a03b1              # double 0.80302796170882662
	.quad	0x3fca989ed3397658              # double 0.20778260530180392
	.quad	0x3fef55da52144f61              # double 0.97923007994766575
	.quad	0x3fedd40823638953              # double 0.93213278686406864
	.quad	0x3fb6b6bb50340d98              # double 0.08872576435174151
	.quad	0x3fd773dbcfa79ed8              # double 0.36644645003114595
	.quad	0x3fe88e459e2e553a              # double 0.76736718077396593
	.quad	0x3fe7c837fd7d6af3              # double 0.74319076070545831
	.quad	0x3fe58e73ebc71ffc              # double 0.67363925981862804
	.quad	0x3fc339e60481169c              # double 0.15020442218717711
	.quad	0x3fc0b151fa77943c              # double 0.13041138391341345
	.quad	0x3f985d2e1ac83ca0              # double 0.023792953858045807
	.quad	0x3fd939eb1626558a              # double 0.39416005290089429
	.quad	0x3fc2b3ff5b4798ec              # double 0.14611808735862242
	.quad	0x3fe934605d8a8cd4              # double 0.7876436068512711
	.quad	0x3fe8873245802ce2              # double 0.76650346350052367
	.quad	0x3fc7581334bc682c              # double 0.1823753364085986
	.quad	0x3fc92e2c3bff2220              # double 0.19672158174059096
	.quad	0x3fef58562943ce8e              # double 0.97953327235741638
	.quad	0x3fe13f460a12fc03              # double 0.53897382705315555
	.quad	0x3fef8c3f79c337ed              # double 0.98587011129143109
	.quad	0x3fb2b6c85760a6e0              # double 0.073101540882500426
	.quad	0x3fe130af00666041              # double 0.53719282224756892
	.quad	0x3fc60317d77f3d70              # double 0.17196939489665963
	.quad	0x3fd85c0e9766e180              # double 0.38061871323909457
	.quad	0x3f722d94c88dfb00              # double 0.0044380008556561545
	.quad	0x3fd57edce7233dba              # double 0.33586809703862353
	.quad	0x3fdd4592b4dc5de0              # double 0.45737140333355164
	.quad	0x3fec390ca1e72fcd              # double 0.88196403142637225
	.quad	0x3fed799786742b06              # double 0.92109276066307255
	.quad	0x3fe80b2efcd192fe              # double 0.75136517885820786
	.quad	0x3fd4aec985972fb0              # double 0.32316816373781432
	.quad	0x3fdbf19c74b47ba0              # double 0.4366217746446015
	.quad	0x3fee145a2913c622              # double 0.93998439810656387
	.quad	0x3fb5259f9b5bdc60              # double 0.082605338506128501
	.quad	0x3fcf8d09dbb87270              # double 0.24649165371456006
	.quad	0x3fe1ed083c78e648              # double 0.56018459139813448
	.quad	0x3fd5747e4f302f08              # double 0.33523519261574153
	.quad	0x3fe16d5bd100a61d              # double 0.5445994455414539
	.quad	0x3fd818d4b0230716              # double 0.37651555252897262
	.quad	0x3fe92f7ee613aac1              # double 0.78704781472091423
	.quad	0x3fe721a7ee5ba3ae              # double 0.72285839609422964
	.quad	0x3fce2a27ae32a99c              # double 0.23566146856076109
	.quad	0x3fd8a1a1a9b2c37c              # double 0.38486520359133869
	.quad	0x3fd1ff9d24b2b968              # double 0.28122643073847664
	.quad	0x3fe9ae44ee42c881              # double 0.8025231030972152
	.quad	0x3fc3e0bc415f4fa0              # double 0.15529587928778898
	.quad	0x3fe051483742cb6f              # double 0.50992213051936897
	.quad	0x3fcdff2390cb0aa0              # double 0.23434872217156499
	.quad	0x3fe0c129fcea8311              # double 0.52357959172886315
	.quad	0x3fea3fa2aa861f2b              # double 0.82026799493266844
	.quad	0x3fe0f22661a61fca              # double 0.52955931732230366
	.quad	0x3fe6b18c926241bc              # double 0.70917347517575235
	.quad	0x3fe38021ed680673              # double 0.60939117783000396
	.quad	0x3fef1c4aeea56d46              # double 0.97220369921289129
	.quad	0x3fef3e2b6af64175              # double 0.97633906260493452
	.quad	0x3fcb25ba6b7fa980              # double 0.21208887337645521
	.quad	0x3fb68b728001ea08              # double 0.088065296413255223
	.quad	0x3fe72b70ee51d09d              # double 0.72405287310404598
	.quad	0x3fd1c4416ca3e0c4              # double 0.27760348901166432
	.quad	0x3fd33803a08b0362              # double 0.30029383352307637
	.quad	0x3fdbadb87ccd3320              # double 0.43247806728031613
	.quad	0x3fe0cada2cf52891              # double 0.52476223736563743
	.quad	0x3fefb5a0c04c7d56              # double 0.99092137869221619
	.quad	0x3feff411200f4bc2              # double 0.99854332219762676
	.quad	0x3fe3acdf5347e90c              # double 0.61485258355904326
	.quad	0x3fe5f1174e7fec2f              # double 0.68568005878421967
	.quad	0x3fc3be354826c718              # double 0.15424219153424512
	.quad	0x3fe28f6d4bc4c182              # double 0.58000817106771785
	.quad	0x3fead702a69f6261              # double 0.83874638122058454
	.quad	0x3fdb0d79ea3456cc              # double 0.4226975237992121
	.quad	0x3fe9d5843a1bbf4b              # double 0.8073140273026892
	.quad	0x3fd8df20fa5f7080              # double 0.38861870241613161
	.quad	0x3fd8ab0069b66c8c              # double 0.38543711017127502
	.quad	0x3fe75c74d90379c6              # double 0.73003618607963783
	.quad	0x3fc7a695d1c7c8d4              # double 0.18477127783950797
	.quad	0x3fed66f372664dd0              # double 0.91881725639034961
	.quad	0x3fd6cc2070cee4ce              # double 0.35620890633033475
	.quad	0x3fe33c00aa6f00bd              # double 0.60107453620732765
	.quad	0x3fec233b142f383b              # double 0.87930063192630514
	.quad	0x3fb4ed0399daae50              # double 0.081741547643724432
	.quad	0x3fe0eab1f86b1c17              # double 0.52864931601732479
	.quad	0x3fda93e67cc16166              # double 0.41527712042945664
	.quad	0x3fe3692590ae0cae              # double 0.60658529527463201
	.quad	0x3fee9329d9dac59a              # double 0.95546429204675865
	.quad	0x3f8c31be358e0b00              # double 0.013766752251972658
	.quad	0x3fe1773516042796              # double 0.54580168056530698
	.quad	0x3feab202d9a7918a              # double 0.83422987471253518
	.quad	0x3fd39c4e09880410              # double 0.30641508990089594
	.quad	0x3fcaef6c0c3baa58              # double 0.21043158147161267
	.quad	0x3fc557bbb7387640              # double 0.1667399067527402
	.quad	0x3fe31ac968c931d7              # double 0.59701986757277836
	.quad	0x3feae259a6b6ed9f              # double 0.84013063966215273
	.quad	0x3fd5fef5c55e6182              # double 0.34368652605328276
	.quad	0x3fe9c99acb8ac790              # double 0.80585994486158263
	.quad	0x3fce3d6f884ccb38              # double 0.23624986796638736
	.quad	0x3fd39a3798ddf288              # double 0.30628766945282182
	.quad	0x3fd0976714efe5ba              # double 0.2592408852065905
	.quad	0x3feba02cbbe500b2              # double 0.8633025808158179
	.quad	0x3fe6f4fabc1a05ef              # double 0.71740471590618238
	.quad	0x3fd0213d0447f170              # double 0.25202870767659302
	.quad	0x3fdce7a74b420b5a              # double 0.45163900708592097
	.quad	0x3fd2d8f9b24ef1fc              # double 0.29449312603881572
	.quad	0x3fcf9db87babdfcc              # double 0.24700075186387804
	.quad	0x3fe4599df6161bf9              # double 0.6359395796179107
	.quad	0x3fd91abf25da9f74              # double 0.392257487265389
	.quad	0x3fe01fa48aa368c8              # double 0.50386263921543506
	.quad	0x3fe85dd5f22dc148              # double 0.76145455647023486
	.quad	0x3fb0974387c75e58              # double 0.064808102273098966
	.quad	0x3fd83286a1cd4f7c              # double 0.37808385659194932
	.quad	0x3feacaa48d1a834a              # double 0.83723666724481771
	.quad	0x3fb6253703592f38              # double 0.086505354230379861
	.quad	0x3fef74eafd40603d              # double 0.98302220786263883
	.quad	0x3fb8395d01696100              # double 0.094625294537198811
	.quad	0x3fe9c6dbc26c96bd              # double 0.8055247113558931
	.quad	0x3fdf00307f248c48              # double 0.4843865625027246
	.quad	0x3fb48a0a0b502740              # double 0.080231311571108854
	.quad	0x3fe92abeb43921cc              # double 0.7864678878768756
	.quad	0x3fe685bd22a5b8a9              # double 0.70382553832111683
	.quad	0x3fd770bad3e92586              # double 0.36625548071295844
	.quad	0x3fd38b43f3eaebf4              # double 0.30537508792957557
	.quad	0x3fd8fd73fac3bf92              # double 0.39046954621061858
	.quad	0x3fef222628ec5547              # double 0.97291858666236741
	.quad	0x3fce1af32ad6634c              # double 0.23519744483635419
	.quad	0x3feb8f83a52a5e4c              # double 0.86126882799994453
	.quad	0x3fae2b04681a30b0              # double 0.058921945293236688
	.quad	0x3fe16bef8cb9618b              # double 0.54442574963745594
	.quad	0x3fcdc857867cca80              # double 0.23267644945879695
	.quad	0x3f8e11f738a4e240              # double 0.014682704368724875
	.quad	0x3fd17d3858e48ac0              # double 0.27326782875949718
	.quad	0x3fe0f1bd0eb4c728              # double 0.52950909492776521
	.quad	0x3fc954a3bdf71ffc              # double 0.19789549613619772
	.quad	0x3fea4d0dd0fe8622              # double 0.8219060022276532
	.quad	0x3fe6b8bccc19b84e              # double 0.71005096305248983
	.quad	0x3f739e8e757bf080              # double 0.0047898831178337931
	.quad	0x3fe5690c7ac4e567              # double 0.66907333353371434
	.quad	0x3fcab5baf5b4301c              # double 0.20867096898325677
	.quad	0x3fea3e6e55e445ac              # double 0.82012097144813855
	.quad	0x3fe7bbb58e9ddd48              # double 0.74166372160736049
	.quad	0x3fdc2f8eedaefb0a              # double 0.4404027291420084
	.quad	0x3fbf08f8f9f77a00              # double 0.12123066046431319
	.quad	0x3fe27ea2078ba9ef              # double 0.57795812104933286
	.quad	0x3fb4749d37ce24d8              # double 0.079904390453651941
	.quad	0x3fe6817b8b3117d0              # double 0.70330598054783344
	.quad	0x3fea2124f9d862bc              # double 0.81654595182325051
	.quad	0x3fc5ed68c6f81018              # double 0.17130765643389689
	.quad	0x3fd48e1750442c02              # double 0.32117255056863325
	.quad	0x3fe0d40574477b55              # double 0.52588150702272662
	.quad	0x3fdc94b9309488ec              # double 0.44657735580598401
	.quad	0x3fda39cacc564b26              # double 0.40977735476296784
	.quad	0x3fe57485eafe6ad8              # double 0.67047401330213585
	.quad	0x3fc63d8db5aac95c              # double 0.17375346537080361
	.quad	0x3fa66bc311d37490              # double 0.043790908742928569
	.quad	0x3fe1ec7d27135783              # double 0.56011827117866664
	.quad	0x3fee209e4be8566a              # double 0.94148173165986049
	.quad	0x3fe6f9a52b23e044              # double 0.71797426629837746
	.quad	0x3fd621892ebd0454              # double 0.34579686703006485
	.quad	0x3fef9181e3f61705              # double 0.9865121319168969
	.quad	0x3fbff1d9dc3085d0              # double 0.12478410363885151
	.quad	0x3fe390727eb1b1f7              # double 0.61138272042222652
	.quad	0x3fb8382d0c852718              # double 0.094607177311584301
	.quad	0x3fec469722a2b6ca              # double 0.88361698879972406
	.quad	0x3fec401211fa851a              # double 0.88282111655658757
	.quad	0x3fe4b256406e9c6a              # double 0.64676964363469591
	.quad	0x3fdd2a86c0390a92              # double 0.45572060367354894
	.quad	0x3fde01c3bdf8887a              # double 0.4688577037032996
	.quad	0x3fe3931b1733905d              # double 0.61170725375678681
	.quad	0x3f88b554408b6040              # double 0.012064607829799567
	.quad	0x3fd9bd4e1518e4e8              # double 0.40217926082875843
	.quad	0x3fb297ff96b6d728              # double 0.072631811423744197
	.quad	0x3fec227e01ac8cd3              # double 0.87921047522504592
	.quad	0x3fc370342b165468              # double 0.1518616876971095
	.quad	0x3feda5a01801ae69              # double 0.92646794022352907
	.quad	0x3fe1663a7ff4a179              # double 0.54372906676603272
	.quad	0x3fe8bf063b698bca              # double 0.77331840137446162
	.quad	0x3fe08a7f7eaeb819              # double 0.51690649740862959
	.quad	0x3fd586bd5e20c1d8              # double 0.33634885971244222
	.quad	0x3fda01c31749cb64              # double 0.40635754846805683
	.quad	0x3fe6f143c3b7626f              # double 0.7169512579522016
	.quad	0x3fda5c4f9163c362              # double 0.4118842048474588
	.quad	0x3fbfc2dc632303b0              # double 0.12406709118205472
	.quad	0x3fd9e088786bb9e8              # double 0.40432941207737239
	.quad	0x3fe0e33e77117ca9              # double 0.52773974662331569
	.quad	0x3feccc57e9c35597              # double 0.89994426400032779
	.quad	0x3fd524d780ac1078              # double 0.33037364545476278
	.quad	0x3fda9da6afd51c54              # double 0.41587226077212347
	.quad	0x3fed1c635f8dbef8              # double 0.90971535361128897
	.quad	0x3feb9fc133ea6cd5              # double 0.86325130595960309
	.quad	0x3fec4eaa99c68ac5              # double 0.88460283312118604
	.quad	0x3f982d09d32b2c20              # double 0.023609307779036581
	.quad	0x3fe1c1602078488d              # double 0.55485540715950921
	.quad	0x3fc19d23de069cd4              # double 0.13760803547959333
	.quad	0x3fb950ebb4d33500              # double 0.09889100231812975
	.quad	0x3fe69e72547b2822              # double 0.70684162616931112
	.quad	0x3fe2b7dbcee76542              # double 0.58494367991367135
	.quad	0x3fb78d111a2d45b0              # double 0.091996258631545257
	.quad	0x3f9894da6e1a6340              # double 0.024005330057295327
	.quad	0x3f96f2fb49dad9a0              # double 0.022411276228660904
	.quad	0x3fefbadcf3b6967d              # double 0.99156043625107737
	.quad	0x3fa7846b25c09ae0              # double 0.045932148321573996
	.quad	0x3fed88a5e10e92c7              # double 0.92293065983229716
	.quad	0x3fd0ae9b2608daa0              # double 0.26065710748972926
	.quad	0x3fdd2fcd13b76c7a              # double 0.4560425465148864
	.quad	0x3fe56c1d2e53a65f              # double 0.66944750831789779
	.quad	0x3fca898285f78aa4              # double 0.2073214677939933
	.quad	0x3fdc02bd18404592              # double 0.43766715400951128
	.quad	0x3fe53932a48e13b2              # double 0.66323215617796039
	.quad	0x3fe1ac651c4f888c              # double 0.55229430703572424
	.quad	0x3fd204310d75f56a              # double 0.28150583567170051
	.quad	0x3fe5f98df06a41dd              # double 0.68671318965976591
	.quad	0x3fea9e0ac5ca952c              # double 0.83179224616165958
	.quad	0x3fe993c3f887878b              # double 0.79928778210545326
	.quad	0x3fe0d363c8587f7e              # double 0.52580441598909977
	.quad	0x3fe4bc55426ba630              # double 0.64798987362627791
	.quad	0x3fe5eb4a74d6c5d1              # double 0.68497202701672155
	.quad	0x3fb67725ad249b58              # double 0.087755541583289243
	.quad	0x3fed50c1b349e078              # double 0.91610798852253961
	.quad	0x3fe0f25da86fabaf              # double 0.5295856752176088
	.quad	0x3fe9a0c0066841ec              # double 0.80087281466881909
	.quad	0x3fdf2564666c17d6              # double 0.48665723802730321
	.quad	0x3fd7a38648283474              # double 0.36935574575983954
	.quad	0x3fe25f0619d5d571              # double 0.57409958883242329
	.quad	0x3fe7c68e1ba36d24              # double 0.74298768423196693
	.quad	0x3fe4b2696ab82ac5              # double 0.64677878230698893
	.quad	0x3fefa5997b72397a              # double 0.98896478758415118
	.quad	0x3fda17cafe55de16              # double 0.4077022060150467
	.quad	0x3fe5851ab3be5ba7              # double 0.67249808412713186
	.quad	0x3fcc3d0ab6f39534              # double 0.22061284955194937
	.quad	0x3fe6c47e0b6a16ba              # double 0.71148588399292767
	.quad	0x3feec90e271cba12              # double 0.96204288138489091
	.quad	0x3fe43e7ca78a2f50              # double 0.63262779924978396
	.quad	0x3fe075abc8c537c8              # double 0.51436413968053163
	.quad	0x3fa507585b446c50              # double 0.041071663990998375
	.quad	0x3fb2e62da57f42c0              # double 0.073824742226189066
	.quad	0x3fe347da973a6947              # double 0.60252122437240352
	.quad	0x3fd0aae01931f54e              # double 0.26042940578903007
	.quad	0x3fc355af8aa716e0              # double 0.1510524203314878
	.quad	0x3fe15fb7652bcbef              # double 0.54293412933327356
	.quad	0x3fd0784a78c5af48              # double 0.25734197420273519
	.quad	0x3fedd3adfa238dda              # double 0.93208979468584663
	.quad	0x3fe8c7f07010b782              # double 0.77440664184335639
	.quad	0x3fc3856fa223cc94              # double 0.15250964562401192
	.quad	0x3fd3a47c6058d644              # double 0.30691441925896279
	.quad	0x3fdd8072bf000c80              # double 0.46096485760080697
	.quad	0x3fe9b69a1d5dc61b              # double 0.80354028449636716
	.quad	0x3fe8593b36b0aa48              # double 0.76089249307308027
	.quad	0x3fb94ef268364a70              # double 0.098860884134674753
	.quad	0x3fca7c68f6199910              # double 0.20692169205285227
	.quad	0x3fe834ac1202d98d              # double 0.7564297057895587
	.quad	0x3fe389351aa7c470              # double 0.61049895483132666
	.quad	0x3fe985f606c26d7e              # double 0.7976026660939366
	.quad	0x3fe4eb52c98d9ece              # double 0.65372599950657118
	.quad	0x3fe436c4b6b00987              # double 0.6316855972402643
	.quad	0x3fd49a0c6729a9d8              # double 0.32190237116324516
	.quad	0x3fea43627819d8e1              # double 0.82072566468448482
	.quad	0x3fe730af5ffb6e53              # double 0.72469300028337569
	.quad	0x3fde1fd5f28e7d76              # double 0.47069309889953759
	.quad	0x3fe914af948e7a61              # double 0.78377512946083183
	.quad	0x3fef10930b3780f2              # double 0.97077324095519502
	.quad	0x3fd12d64b975c546              # double 0.2683955966122834
	.quad	0x3fe7e57a0f177655              # double 0.74676230380618824
	.quad	0x3fefdd87d6dc42ba              # double 0.99579231228752652
	.quad	0x3fefb57745f8e7f0              # double 0.99090160051787102
	.quad	0x3fe7a1911b509234              # double 0.73847251257809043
	.quad	0x3fe6a6b62df0248f              # double 0.70785054180409357
	.quad	0x3f9661d192be2660              # double 0.021857523519008715
	.quad	0x3fe04608bae0e32d              # double 0.50854908466053461
	.quad	0x3fe98e8e12c9be88              # double 0.79865173024696023
	.quad	0x3fd01b3c039192bc              # double 0.25166225765705597
	.quad	0x3fcc36398abbce08              # double 0.220404808751127
	.quad	0x3fc8990458e506bc              # double 0.19216970768507291
	.quad	0x3ef4a26eb4f08000              # double 1.9678594352368073E-5
	.quad	0x3fdcfd8c26b34f20              # double 0.45297530917490469
	.quad	0x3fed7443da081dd3              # double 0.92044251045529746
	.quad	0x3fcdc70ed245efb8              # double 0.23263726489301262
	.quad	0x3fe806666b28a001              # double 0.75078125886375358
	.quad	0x3fe3e0fb56ce2e03              # double 0.62121359781434682
	.quad	0x3fef01e7f6f09df8              # double 0.9689826796574712
	.quad	0x3fcd1d72bebc73e4              # double 0.22746118844307184
	.quad	0x3fee87228e5dde11              # double 0.95399596982946566
	.quad	0x3fd7611d48346e6c              # double 0.3653023915410134
	.quad	0x3fe8b564365ba46a              # double 0.77214251152794344
	.quad	0x3fd6985ee5d491a6              # double 0.35304996914262643
	.quad	0x3fcbb8876a76669c              # double 0.21656887720455564
	.quad	0x3fc8fdf71b87b1dc              # double 0.19525040477982614
	.quad	0x3fd6cf864b2e9470              # double 0.35641629545199915
	.quad	0x3fe7245586ba5916              # double 0.72318531335875735
	.quad	0x3fed9527db004181              # double 0.92445748113281934
	.quad	0x3fc2fe1c239d59b8              # double 0.1483798192882213
	.quad	0x3fd2f12d8835b8d4              # double 0.29597032834761916
	.quad	0x3fd5e2b694de1962              # double 0.34196247613762953
	.quad	0x3fe7761a025f4bfe              # double 0.73316669905977938
	.quad	0x3fc783cacafd7554              # double 0.18370947753548228
	.quad	0x3fef058d28be9b4c              # double 0.96942766149445835
	.quad	0x3fed6f7f596d4606              # double 0.91986052957707964
	.quad	0x3fc6e3ef433ebf24              # double 0.17883101256801937
	.quad	0x3fee17faf93017f8              # double 0.94042729062562013
	.quad	0x3fd76f50d942d8b0              # double 0.36616917817026273
	.quad	0x3fead866b8b7add5              # double 0.83891616895328502
	.quad	0x3fe9f0d03bde7330              # double 0.81064616864350647
	.quad	0x3fea7795b5b19f5e              # double 0.82709775435521826
	.quad	0x3fdd9925b682f65e              # double 0.46247237037082367
	.quad	0x3fb5439d4de732c0              # double 0.083062964934650374
	.quad	0x3fe4ce347acaf0e2              # double 0.65017150862652451
	.quad	0x3fe14146f643d2a2              # double 0.53921840761775663
	.quad	0x3fe58e506bd7107b              # double 0.67362233221548651
	.quad	0x3fe104ce8356f83a              # double 0.53183675434389177
	.quad	0x3fc46ad6d5539790              # double 0.1595104734071211
	.quad	0x3fe569a982fdefa9              # double 0.66914821228373456
	.quad	0x3fd662ddbd9812b0              # double 0.34978431239168639
	.quad	0x3fe3b2cc9748f472              # double 0.61557607219550747
	.quad	0x3fb4fbe5cfacd128              # double 0.081968653871460462
	.quad	0x3feb2c2725ead175              # double 0.84913976102556765
	.quad	0x3fd13018ab81d532              # double 0.26856056927438765
	.quad	0x3f806662040399c0              # double 0.0080077798342700345
	.quad	0x3fe021b71d47c6bd              # double 0.50411563605140197
	.quad	0x3fe132a9d9ff4e13              # double 0.53743450715632191
	.quad	0x3fece70b08ea2141              # double 0.90320350400092064
	.quad	0x3fee26fe55cc6c17              # double 0.94225994832538873
	.quad	0x3fd782ed957263d4              # double 0.36736621469895892
	.quad	0x3fe949b6e24d6572              # double 0.79024833869622868
	.quad	0x3fead13ac12ba0a2              # double 0.83804071167562122
	.quad	0x3fe9327f16071c45              # double 0.78741411497402025
	.quad	0x3fd8e2e8a6a1bf86              # double 0.38884941361083525
	.quad	0x3fc9fbeb1abe5854              # double 0.2030004387458485
	.quad	0x3fd6625461fd7564              # double 0.34975156373351113
	.quad	0x3feb16824e50432d              # double 0.84649768157587391
	.quad	0x3fe1f07d9fc2cb4a              # double 0.56060677722266772
	.quad	0x3fd1aa80189be994              # double 0.27603151705957285
	.quad	0x3febaef52af4b019              # double 0.86510713949019469
	.quad	0x3fe212b728a0f45d              # double 0.56478460250185558
	.quad	0x3fe5a3a1d9b5ebfb              # double 0.67622463723762338
	.quad	0x3fd017b39ffa2778              # double 0.25144663450975413
	.quad	0x3fed47e05c102a79              # double 0.9150239751919137
	.quad	0x3fee200903605cf3              # double 0.94141054782349298
	.quad	0x3fe53aacfda95e14              # double 0.66341256659774439
	.quad	0x3fb330c76dc550a8              # double 0.074963058757307466
	.quad	0x3fce931d7bdffa48              # double 0.2388645987375233
	.quad	0x3feeaaf169d1b11d              # double 0.95836706798357662
	.quad	0x3fc217fedf0dbb10              # double 0.14135728732386399
	.quad	0x3fde711dfbd07434              # double 0.47565412131536111
	.quad	0x3fd8480dfb6b18ce              # double 0.37939786484311078
	.quad	0x3fe155f87d16d337              # double 0.54174446517445218
	.quad	0x3fdd722e4f3a61e8              # double 0.46009404885401617
	.quad	0x3fdc2dfa69b4cc42              # double 0.44030628512263459
	.quad	0x3fe11f942a7d29d6              # double 0.53510483072869408
	.quad	0x3fe10e8e5b1fc4ba              # double 0.53302686498331942
	.quad	0x3fe9f8dacd4e1bee              # double 0.81162777041106238
	.quad	0x3fa68a271a8f1a70              # double 0.044022771827759821
	.quad	0x3fb77f6843ecf9d8              # double 0.091787830909175638
	.quad	0x3fd730cf011bf122              # double 0.36235404117884873
	.quad	0x3fd14101505dc528              # double 0.26959259842176886
	.quad	0x3fe4c69e5e404ec3              # double 0.64924543770253995
	.quad	0x3fcc37660a89f784              # double 0.22044063105198231
	.quad	0x3fe4d2e4b74fde24              # double 0.65074382594224689
	.quad	0x3fe6ea1fbdcda504              # double 0.71607958861309884
	.quad	0x3fe8da4ecd0c9387              # double 0.77664890335709991
	.quad	0x3fe4921276f44426              # double 0.64283107026324582
	.quad	0x3fd1ce97183c9b6a              # double 0.27823426596517342
	.quad	0x3fe4fe33e5e53e69              # double 0.65603060628377563
	.quad	0x3fb15a8b4b271628              # double 0.067787843559096062
	.quad	0x3fee90fdb7540e77              # double 0.95519910627667926
	.quad	0x3fd918d5da1d0870              # double 0.39214083004129119
	.quad	0x3feb7f39adfe0b06              # double 0.85928043349153493
	.quad	0x3fe9daa019563fcc              # double 0.8079376692639868
	.quad	0x3fe0aa2f691e4e30              # double 0.52077456026967717
	.quad	0x3fee52cc5cf06c07              # double 0.94760721351792732
	.quad	0x3febe5fe80baa715              # double 0.87182545797733957
	.quad	0x3fde97820db6bbfc              # double 0.47799731578101023
	.quad	0x3fbd8eec94d7c108              # double 0.1154620993982044
	.quad	0x3fe074955263ac38              # double 0.51423135844868906
	.quad	0x3fd071f4f80ac0a4              # double 0.25695537779666666
	.quad	0x3fdc62758ece784e              # double 0.44350947328519374
	.quad	0x3fe826aad1a32691              # double 0.75472012467180793
	.quad	0x3fd79e078d13466e              # double 0.3690203550041592
	.quad	0x3fe001ea79a2d0a7              # double 0.50023387677221798
	.quad	0x3fe727b10535922f              # double 0.72359515206750824
	.quad	0x3feb0ab9384ec643              # double 0.84505902288055557
	.quad	0x3fd4ef51e66527be              # double 0.32710692882085002
	.quad	0x3fe84946bb797557              # double 0.758944860611943
	.quad	0x3fe66924cff815a4              # double 0.70033493632279376
	.quad	0x3fdc5456a7d9e040              # double 0.44264761344630088
	.quad	0x3fefa258b140ede4              # double 0.98856768245553583
	.quad	0x3fdd6b28ddaf5144              # double 0.4596655049220042
	.quad	0x3fe4abea1eb61ff4              # double 0.64598566053700646
	.quad	0x3fce8f5a77361e80              # double 0.2387497980200699
	.quad	0x3fdc18187a86b346              # double 0.43897067990728933
	.quad	0x3fd5448740bbbb34              # double 0.33230763742078584
	.quad	0x3fe93131bd23187d              # double 0.78725516262853967
	.quad	0x3fd7d0b5aca32a8c              # double 0.37211362704389539
	.quad	0x3fe38818d2d954c2              # double 0.61036339932856998
	.quad	0x3fd4b22ce265bd10              # double 0.32337495907900493
	.quad	0x3fc5d6e34513e1f0              # double 0.17062035439427303
	.quad	0x3fd8605343468988              # double 0.38087922639729088
	.quad	0x3fdb88c6b97e7bf4              # double 0.43022316088348522
	.quad	0x3febc5c683fa7908              # double 0.86789251114876809
	.quad	0x3fe8e9e16f92f276              # double 0.77854987899588823
	.quad	0x3fe6edae4cf95064              # double 0.71651377710305697
	.quad	0x3fedad09e6234dc5              # double 0.92737288426217701
	.quad	0x3fcece2018cb38dc              # double 0.24066544733654538
	.quad	0x3fce90090a06ccf0              # double 0.23877060880258894
	.quad	0x3fdca8e8b2a2475a              # double 0.44780938572613638
	.quad	0x3f87e0cdd9fe0d80              # double 0.01165924855718603
	.quad	0x3fd0c22590285bd4              # double 0.26184977605720161
	.quad	0x3fe6eeca36271417              # double 0.71664915634812842
	.quad	0x3fe0ea7f62e5b2dd              # double 0.52862519565459432
	.quad	0x3fd7f12bad15c1b4              # double 0.37409488585310702
	.quad	0x3fd486976e7ed9ca              # double 0.32071481504990784
	.quad	0x3fce1bf57392df90              # double 0.23522823470352394
	.quad	0x3fc532ca763c8af8              # double 0.16561251424089796
	.quad	0x3fe0cb410e9d2d52              # double 0.52481129507342872
	.quad	0x3fe013682b45cafe              # double 0.502369007603505
	.quad	0x3fe7cbeac6230602              # double 0.74364222239108835
	.quad	0x3fc2d89ebbce46d8              # double 0.14723571939662494
	.quad	0x3fe2fc2bc849e964              # double 0.59328259581461085
	.quad	0x3fc67d7ea2745928              # double 0.17570479328487321
	.quad	0x3fc2eb3fa954249c              # double 0.14780421989442949
	.quad	0x3fd87e3667655b0e              # double 0.38270340058572649
	.quad	0x3fedb388daea9a01              # double 0.92816584355460929
	.quad	0x3fec2ba35161697a              # double 0.88032689947730991
	.quad	0x3fe70802518b1d8f              # double 0.71972766806077171
	.quad	0x3fc65ae7aeb1aa94              # double 0.17464920072537338
	.quad	0x3fda57fcb5ab9922              # double 0.41162030926934012
	.quad	0x3fe30e16ea80153e              # double 0.5954699115833717
	.quad	0x3fe2446e2d559f21              # double 0.57085331777941317
	.quad	0x3fe1955b30b9eb88              # double 0.54948195950361001
	.quad	0x3fe8ae1a58c23cb5              # double 0.77125279746714759
	.quad	0x3fa43cc895545190              # double 0.039526241520579153
	.quad	0x3fe6ce80c691837f              # double 0.71270788939374075
	.quad	0x3fd3fc2f6bf3ab2c              # double 0.31226716558619461
	.quad	0x3fcc7cdc3426e020              # double 0.22256043001630221
	.quad	0x3fdf005dcef19a38              # double 0.48439736565925129
	.quad	0x3fde7470c474a060              # double 0.47585696396936861
	.quad	0x3fe7aaa882b462f2              # double 0.73958230522393209
	.quad	0x3fdfa52b62099430              # double 0.49445614408461136
	.quad	0x3fe8c656b410808f              # double 0.77421126526680151
	.quad	0x3fea011135971b38              # double 0.81263027636382557
	.quad	0x3fd4c42d42eb4cdc              # double 0.32447368178436675
	.quad	0x3fd6b6f7604635c2              # double 0.35491737748892771
	.quad	0x3fb2d77a2f62baa0              # double 0.073600422447933855
	.quad	0x3fd9b89268d49302              # double 0.4018903754934372
	.quad	0x3fd3ac0e9aed0bbe              # double 0.30737652902115176
	.quad	0x3fc94ec966b49518              # double 0.19771687998687848
	.quad	0x3fe5ed236810c505              # double 0.68519754720014758
	.quad	0x3fec69c8e1b409bb              # double 0.88791317064924813
	.quad	0x3fe00b433bcc3f2d              # double 0.50137483290925433
	.quad	0x3fc0a59d11b855e0              # double 0.13005412450063059
	.quad	0x3fee3ccb222b205d              # double 0.94492108033683631
	.quad	0x3fe82cfb1f84185a              # double 0.75549083857982713
	.quad	0x3fc1653c4402886c              # double 0.1359019596175729
	.quad	0x3fd3dad807fe82c6              # double 0.31023216992074898
	.quad	0x3fe4f94190ecf96a              # double 0.65542677217289946
	.quad	0x3fe6ed1bf25c9a2a              # double 0.7164439900996673
	.quad	0x3fea5c831f8b5450              # double 0.82379299317347865
	.quad	0x3fd79c57a9b8f3de              # double 0.36891738485775061
	.quad	0x3fe2bd6b815908f3              # double 0.58562255156746656
	.quad	0x3fe47e9439dd75f2              # double 0.64045153905652641
	.quad	0x3fe3d37262241ddc              # double 0.61956137817554291
	.quad	0x3fcd5bab60bbea4c              # double 0.22936002944318756
	.quad	0x3fe6e10f4c31832b              # double 0.71497311479115433
	.quad	0x3fb1650b6f547ef8              # double 0.067948069267455113
	.quad	0x3feb95e8d540f6ff              # double 0.86204949999930125
	.quad	0x3fdcaa6aed32c022              # double 0.44790146983996426
	.quad	0x3febaabc6db4a241              # double 0.86459180285334736
	.quad	0x3fdd366e50db5f5a              # double 0.45644719978507953
	.quad	0x3fb59e3ee1331348              # double 0.084445886593198627
	.quad	0x3fd7ffa920c3f4d6              # double 0.37497928809882575
	.quad	0x3fe69fe1525cc4d5              # double 0.70701662145998034
	.quad	0x3fecf26af9ff54b9              # double 0.90459202602018884
	.quad	0x3fe5886a212046cf              # double 0.6729021689409026
	.quad	0x3fedd15aa4fd51e9              # double 0.93180591797368806
	.quad	0x3fe9309edf8ce416              # double 0.78718513166598103
	.quad	0x3fe7a40ecf8b8a3f              # double 0.73877659355304803
	.quad	0x3fe891948d43ac79              # double 0.76777103033727123
	.quad	0x3fd509dcd991b0ca              # double 0.32872697112067029
	.quad	0x3fc64472ba6759d4              # double 0.1739638719725024
	.quad	0x3feb3067231a66ae              # double 0.84965855461196838
	.quad	0x3fcf11a469410f88              # double 0.24272589816439116
	.quad	0x3fec1dbe87118039              # double 0.87863088970698933
	.quad	0x3fad8b8ed6d59410              # double 0.057705367779625871
	.quad	0x3fe312846baa39b0              # double 0.59601040867146615
	.quad	0x3fdd75a76157f1ca              # double 0.46030601984218988
	.quad	0x3fe9ba3a67fb6a62              # double 0.80398292836191509
	.quad	0x3fb0b175c968ac18              # double 0.065207826301659444
	.quad	0x3fe0ce3a30e989e2              # double 0.52517423203635993
	.quad	0x3fe0fba993bf38a3              # double 0.53072050911739088
	.quad	0x3fe1f3b4f19c11e8              # double 0.56099936665901584
	.quad	0x3feb854961d695f1              # double 0.86002034291294482
	.quad	0x3fcd7e9fc7ecdf6c              # double 0.23042676221825376
	.quad	0x3fed9a486eab58e5              # double 0.92508336653807233
	.quad	0x3fe63238b025deff              # double 0.693630546606954
	.quad	0x3fbd46291a69b760              # double 0.11435181517455595
	.quad	0x3fe8530e34ec40db              # double 0.7601386102342319
	.quad	0x3fe9249af1b2c790              # double 0.78571841437063661
	.quad	0x3fe4d435722fc05d              # double 0.65090439130836908
	.quad	0x3fee651c467c7b95              # double 0.94984258429382129
	.quad	0x3fe24d0f9a41abdf              # double 0.57190685394504814
	.quad	0x3fe79b012a577ff4              # double 0.73767145414239943
	.quad	0x3fe5cd7fe0910556              # double 0.68133539066927074
	.quad	0x3fe65a6502e22c11              # double 0.69853449404888768
	.quad	0x3fe747d3b2ef9b7a              # double 0.7275179381220902
	.quad	0x3fc87a17d13292f4              # double 0.19122598376011235
	.quad	0x3fedb53811c1621e              # double 0.92837146251537539
	.quad	0x3fd14e7be105f61c              # double 0.2704152772419961
	.quad	0x3fe20b160267d3ad              # double 0.56385326833571059
	.quad	0x3fad2e01077475f0              # double 0.056991607818627332
	.quad	0x3fe4c54ea9c8af7d              # double 0.64908536110804926
	.quad	0x3fb3498658c71d48              # double 0.075340649294152517
	.quad	0x3fdb2357913711ee              # double 0.42403210812724879
	.quad	0x3fefb9c72a88ed8c              # double 0.99142797763436041
	.quad	0x3fd9e127fc2088c2              # double 0.40436744329248253
	.quad	0x3fe54ae469ca50d8              # double 0.66539211904685214
	.quad	0x3fcd53dcafccd920              # double 0.22912176689141805
	.quad	0x3fefd4c66e64ac8d              # double 0.99472352563079058
	.quad	0x3fe2c9e6cc556acd              # double 0.58714618595998902
	.quad	0x3fe3e4a63d439ae1              # double 0.62166130033150691
	.quad	0x3feb6802754080af              # double 0.85644648457311756
	.quad	0x3fe84c40dfa5dcf0              # double 0.75930827790480571
	.quad	0x3fee5fb03180302f              # double 0.9491806952296481
	.quad	0x3fe5bcc404afd746              # double 0.67929268756299943
	.quad	0x3fc415a1d8bb9740              # double 0.15691016276030645
	.quad	0x3fc053b3146cd558              # double 0.12755430695839709
	.quad	0x3fe4c9470b6a560e              # double 0.64957000951352639
	.quad	0x3fedc56f1dc3a75a              # double 0.93035083592733803
	.quad	0x3fef555145a24908              # double 0.97916473007561055
	.quad	0x3fedb87201a09508              # double 0.92876529996706925
	.quad	0x3fdb56992276a35a              # double 0.42716053357667294
	.quad	0x3fe6fd9eefd79783              # double 0.71845957607432387
	.quad	0x3fe155d255bbf298              # double 0.54172627205805934
	.quad	0x3f801d22985be580              # double 0.007868070864321508
	.quad	0x3f9baf4b99b7ebe0              # double 0.027035886056164915
	.quad	0x3fdbb8116c8343fe              # double 0.43310962292622424
	.quad	0x3fe74f2867c9e4b2              # double 0.72841282149524589
	.quad	0x3fd0eb250b1cfc70              # double 0.26435209355617584
	.quad	0x3fcfb7d065c279bc              # double 0.2477970597146405
	.quad	0x3fe43139578c4d6b              # double 0.63100878810147998
	.quad	0x3fdc74934e655238              # double 0.44461519866789301
	.quad	0x3fda08d90db79694              # double 0.40679003085674847
	.quad	0x3fa1ac8d1a166c60              # double 0.034519586023826987
	.quad	0x3fe469d6a62582b8              # double 0.63791973543637592
	.quad	0x3fec0720378c15d4              # double 0.87586985444130016
	.quad	0x3fd5dbd35985c320              # double 0.34154208891327364
	.quad	0x3febfdc2ddeb0b4c              # double 0.8747267088259405
	.quad	0x3fec75b42c8cbd33              # double 0.88936814023137456
	.quad	0x3fd08680f18bd606              # double 0.25820945347308599
	.quad	0x3fe77d77aa43e5f5              # double 0.73406584982802647
	.quad	0x3fdf13052e240412              # double 0.48553590303350902
	.quad	0x3fe7547fa857db85              # double 0.7290647781327243
	.quad	0x3fd0998002de2772              # double 0.259368899155212
	.quad	0x3fe815c77b8172b4              # double 0.75265859720419436
	.quad	0x3feaf74e2f13275f              # double 0.84268864816952405
	.quad	0x3fee06f9f1d5903d              # double 0.93835160477875201
	.quad	0x3fd92004da2c582a              # double 0.39257928186396163
	.quad	0x3fccce040189faa0              # double 0.22503709864755184
	.quad	0x3fd13f48865e2d68              # double 0.26948750612128558
	.quad	0x3fd9b4e17e34835e              # double 0.40166508984298399
	.quad	0x3fa88c29773f10a0              # double 0.047944351011694808
	.quad	0x3fd017654f122888              # double 0.25142796251078225
	.quad	0x3fbea4f608cf8ad8              # double 0.11970460620026857
	.quad	0x3fea87f159d58dbe              # double 0.82909457727185276
	.quad	0x3fe46041a15b138d              # double 0.63675004496382004
	.quad	0x3fee746b6bfd4ebf              # double 0.95171137897201408
	.quad	0x3fed4e029c7b81b4              # double 0.91577272952058885
	.quad	0x3fe8e60570911822              # double 0.77807876573274748
	.quad	0x3fd77f66498f7ad6              # double 0.36715085204734288
	.quad	0x3fe07c3c010caf56              # double 0.51516533093443218
	.quad	0x3fa0e028cda61ff0              # double 0.032960200408581275
	.quad	0x3fead30d9291f992              # double 0.8382633078288555
	.quad	0x3fed562c24ce7fdb              # double 0.91676909626766745
	.quad	0x3fe2a1082284546d              # double 0.58215719930252663
	.quad	0x3f8a061c818905c0              # double 0.012706968978025368
	.quad	0x3fe83793262fa3b7              # double 0.75678403337689459
	.quad	0x3fc830a8b3e6638c              # double 0.18898495468308985
	.quad	0x3fe02840030166b0              # double 0.50491333567625496
	.quad	0x3fe264b1810abe1a              # double 0.57479167178638879
	.quad	0x3fa32653f4b1e450              # double 0.03740179407118005
	.quad	0x3fe6952a668a221c              # double 0.70570869471800135
	.quad	0x3fe62682b2f04861              # double 0.69220099400468993
	.quad	0x3fa198786ed3e940              # double 0.034366382149487951
	.quad	0x3fea4dad65de93e9              # double 0.82198209663749566
	.quad	0x3fe2d51f26e0621a              # double 0.58851583092752269
	.quad	0x3feca8503569965c              # double 0.89554605896109817
	.quad	0x3fdc3b862be8676c              # double 0.44113306320070111
	.quad	0x3fc788fee04f3e18              # double 0.18386827423681562
	.quad	0x3fd94b7a698eceb6              # double 0.39523182209380125
	.quad	0x3f9491e804130180              # double 0.020087838410064673
	.quad	0x3fe21046f62d618e              # double 0.56448696214197169
	.quad	0x3fc049036e942de4              # double 0.12722819232327176
	.quad	0x3fbdca15cce54740              # double 0.11636482479414401
	.quad	0x3fe6ef31969d60bf              # double 0.71669845025009937
	.quad	0x3fca451ee9ce67d0              # double 0.20523439804384092
	.quad	0x3fa3e935378df6a0              # double 0.038888609916267969
	.quad	0x3fb601f9a146f568              # double 0.085967637895881688
	.quad	0x3fea94ea2188e479              # double 0.83067804860833327
	.quad	0x3fd124a1d2dbbbb6              # double 0.26786084739336091
	.quad	0x3fd182f5a3707654              # double 0.27361813507909472
	.quad	0x3fe86bcfe6ec4b53              # double 0.76316065885689921
	.quad	0x3fd05514429065c8              # double 0.2551928186454373
	.quad	0x3fe6bde8142a96c5              # double 0.71068195284598146
	.quad	0x3fc7aceaf1dbc064              # double 0.18496453103535082
	.quad	0x3fd5eff15dd4a1a2              # double 0.34276994860786136
	.quad	0x3fd49b24105bee4c              # double 0.32196904752320132
	.quad	0x3faa892f62f1ba50              # double 0.05182788927856008
	.quad	0x3fe559a89854ab8f              # double 0.66719465019319724
	.quad	0x3f8b583e1c4953c0              # double 0.013351903188928094
	.quad	0x3fa03bb11d312770              # double 0.03170541268680338
	.quad	0x3fc6c4444640a6b8              # double 0.17786458425807949
	.quad	0x3fc7eb81747b6ee8              # double 0.18687456309896011
	.quad	0x3fb498a6d9b4e8c0              # double 0.080454280997318328
	.quad	0x3fbaf04ba41a9db0              # double 0.10522911793179079
	.quad	0x3fd3821c968ffa3c              # double 0.30481638625488805
	.quad	0x3feed1c60aaf3b0c              # double 0.9631071289712465
	.quad	0x3fdfc89578484f1e              # double 0.49661766764005388
	.quad	0x3feb9f98487bfe20              # double 0.86323179394816307
	.quad	0x3fee6d8ecbf68b35              # double 0.95087375484977221
	.quad	0x3fd21ccde38f528c              # double 0.28300807211534429
	.quad	0x3fe8b5c21f0aaa29              # double 0.77218729079078685
	.quad	0x3fe68cb3cc127aee              # double 0.70467557771538991
	.quad	0x3fdf46d1e19f25e8              # double 0.48869750054708883
	.quad	0x3fe429efd382939e              # double 0.63011924086150706
	.quad	0x3fb91b4259ff5eb8              # double 0.098072192165427619
	.quad	0x3feb2afd88d0c731              # double 0.84899784776482623
	.quad	0x3fe7858bf381fbcf              # double 0.73505208549601686
	.quad	0x3fe9c70269d4dd17              # double 0.80554314298834384
	.quad	0x3fd44ed70f80db40              # double 0.31731201662062247
	.quad	0x3fe1a7ec12d6ab37              # double 0.55174831084636977
	.quad	0x3fec0b6c8facdb59              # double 0.87639453946654122
	.quad	0x3fee666a9c88a5c4              # double 0.95000200818065438
	.quad	0x3feb8301b6f43af3              # double 0.85974202855308446
	.quad	0x3fcf812262c58f00              # double 0.24612836668813287
	.quad	0x3fee1e83d28cb5ba              # double 0.94122496722200499
	.quad	0x3fe3a30c08cf1858              # double 0.61365319939137475
	.quad	0x3fda3dea1489ab1c              # double 0.41002895360604596
	.quad	0x3fea71ffd404a674              # double 0.82641593370244814
	.quad	0x3fe1682ebb4356e9              # double 0.54396759581387955
	.quad	0x3fe79824957eb038              # double 0.73732213209360165
	.quad	0x3fc1b215a17554d0              # double 0.13824720748622221
	.quad	0x3fcbaa1f353b0a2c              # double 0.21612920855666695
	.quad	0x3fcb5a8fe206ed00              # double 0.21370123421170462
	.quad	0x3fe42fbac321a383              # double 0.63082635985948377
	.quad	0x3fe55621103ff05d              # double 0.66676381276875996
	.quad	0x3fe73c6ee1444398              # double 0.72612709042924717
	.quad	0x3fc53bda6522693c              # double 0.16588907182888046
	.quad	0x3fd55bf140afa288              # double 0.33373671833991425
	.quad	0x3fc7833c8e5ae328              # double 0.18369252158097393
	.quad	0x3fdfb69da9733dc0              # double 0.49552098796717914
	.quad	0x3fe870b3079cd16c              # double 0.76375724303083591
	.quad	0x3fa5e3dc8a0b1f40              # double 0.042754070139891187
	.quad	0x3feed498460eca42              # double 0.96345151599081924
	.quad	0x3fe22dfb5e42023e              # double 0.56811302575812994
	.quad	0x3feff84f4dc39242              # double 0.99906125248214317
	.quad	0x3fe0f7f4082018c8              # double 0.53026773058879773
	.quad	0x3fb6e8c6620cc2c0              # double 0.089489363611174433
	.quad	0x3fe70c01475e5ab1              # double 0.72021545352148142
	.quad	0x3fdf84f827c7f802              # double 0.49249080548167978
	.quad	0x3fca7653eb3eb43c              # double 0.20673607813424322
	.quad	0x3feb986db09c8160              # double 0.86235699171451685
	.quad	0x3fc0a72cda68fd78              # double 0.13010178246075177
	.quad	0x3feaa1fb6965099e              # double 0.83227320275209471
	.quad	0x3fa338a1ef5e0a00              # double 0.03754144713368035
	.quad	0x3fe079fe7533a8cb              # double 0.51489184275603728
	.quad	0x3fe7dfcdc1a8189a              # double 0.74606979201850554
	.quad	0x3fef4a650480b027              # double 0.97783137206488823
	.quad	0x3fb38d9f7861b290              # double 0.076379744424864393
	.quad	0x3fb345350dd41528              # double 0.075274768711172002
	.quad	0x3fe8aeacda3e4dfd              # double 0.7713226568761794
	.quad	0x3fe1f7573a9851be              # double 0.56144296116195114
	.quad	0x3fd606512ec9c294              # double 0.34413556641724452
	.quad	0x3fb62faa65793d68              # double 0.086664819501711343
	.quad	0x3fe107bec8c3da81              # double 0.53219546520161043
	.quad	0x3fb0d3e36a9eaf78              # double 0.065733159570923294
	.quad	0x3fee1a00fd60a440              # double 0.94067430007738295
	.quad	0x3fe7c8506dbaa123              # double 0.74320241385888541
	.quad	0x3fcddbbafa02746c              # double 0.23326813895701848
	.quad	0x3fea153011883708              # double 0.8150863974021556
	.quad	0x3fc27b19744802e8              # double 0.14438169648931098
	.quad	0x3fe3c30a600e0eda              # double 0.61755865822530187
	.quad	0x3fce085ea07bf61c              # double 0.23463042102950815
	.quad	0x3fe66bb902e182ad              # double 0.70064974367786237
	.quad	0x3fd8fcfdbc6b4f12              # double 0.39044135475454411
	.quad	0x3fe58edaa1186ec7              # double 0.67368823493912877
	.quad	0x3fded3b99b12e9d2              # double 0.48167266982968926
	.quad	0x3fc394b73c022d40              # double 0.15297594480612453
	.quad	0x3fdbf24682db47a2              # double 0.43666231898270713
	.quad	0x3fcc8584e6416134              # double 0.22282468073786676
	.quad	0x3fb72cf5d0d7b818              # double 0.090529788481689244
	.quad	0x3fe6df3c2493d703              # double 0.71475035804789433
	.quad	0x3fe7bd2048c5766c              # double 0.74183668339874265
	.quad	0x3fe4aadf5aac857b              # double 0.64585845670460118
	.quad	0x3fd87e2288fd2bc6              # double 0.3826986635000903
	.quad	0x3fad05ad5be25430              # double 0.056683938471146056
	.quad	0x3feaa631cf5d3a0b              # double 0.83278742314161158
	.quad	0x3fd15e0d2643505e              # double 0.27136543976417282
	.quad	0x3fd837000eb342ae              # double 0.37835694728441183
	.quad	0x3fedb1e9a2acb471              # double 0.92796785137546867
	.quad	0x3fb0e20fd3bf7ae8              # double 0.065949429699212581
	.quad	0x3fd2bf78d448472c              # double 0.29293652277657389
	.quad	0x3feaf81dc45a819b              # double 0.84278763151455693
	.quad	0x3fdd33874523db14              # double 0.45627004386862891
	.quad	0x3fbf9b3b11abb1c0              # double 0.12346238309300528
	.quad	0x3fc59d7609b1cc5c              # double 0.16886783097615676
	.quad	0x3fe74a2b3bbaace1              # double 0.72780381837710817
	.quad	0x3fdd73012cc75a40              # double 0.4601443230907627
	.quad	0x3fed1c55a716d4b9              # double 0.9097088111363042
	.quad	0x3fbea724eff57010              # double 0.11973791941039758
	.quad	0x3fb21831b1da20d0              # double 0.070681672974504339
	.quad	0x3fd127e3ef86d748              # double 0.26805971518784988
	.quad	0x3fee3b0d0aab68b1              # double 0.94470836719417239
	.quad	0x3fa5d5821b30cfc0              # double 0.042644563502477251
	.quad	0x3fe1bbe410dfa901              # double 0.55418589873923463
	.quad	0x3fd42fced0d0ff28              # double 0.31541796104646602
	.quad	0x3fde406a0219483a              # double 0.47268152432400579
	.quad	0x3fe1cfaee05becf5              # double 0.55660194225438764
	.quad	0x3fd34b6216c82af6              # double 0.30147602295680487
	.quad	0x3fe141d10a7dbc54              # double 0.53928424881986325
	.quad	0x3fed6ac70a55a64e              # double 0.91928436296911697
	.quad	0x3febfaffc1c7ce28              # double 0.87438953254463048
	.quad	0x3fd1dd00d2dd50e2              # double 0.2791139659141334
	.quad	0x3fddb264a162c36e              # double 0.46401324997264382
	.quad	0x3fda8279d69a30c0              # double 0.41421361882454377
	.quad	0x3fe9541df6970bc9              # double 0.79151819383729916
	.quad	0x3f989b66982df3e0              # double 0.024030306852626526
	.quad	0x3fe82bebc2428dd6              # double 0.75536144200708111
	.quad	0x3fc1537896cd98ac              # double 0.13535983432229182
	.quad	0x3fd6b2a46160d4c2              # double 0.35465344915003183
	.quad	0x3fc04af0c3023420              # double 0.12728700181870156
	.quad	0x3fc8c3c13b4a36b0              # double 0.19347396273626805
	.quad	0x3fc8190ddeb43678              # double 0.18826459287850006
	.quad	0x3fc45a658bc44e3c              # double 0.15900868725349138
	.quad	0x3fcb6b16525c08e0              # double 0.21420554181538076
	.quad	0x3fe125df4b12dc9e              # double 0.53587307608440304
	.quad	0x3fe7e93639535a99              # double 0.7472182387962959
	.quad	0x3fe4e20e13ac824c              # double 0.65259460299064065
	.quad	0x3fec1dbc53c89a32              # double 0.87862984050736359
	.quad	0x3fec9807575e549e              # double 0.89355818809658039
	.quad	0x3fcb42653e44e4a8              # double 0.21296372929081042
	.quad	0x3fe2feb714e9962c              # double 0.59359315952742042
	.quad	0x3febda2a413f0d2b              # double 0.87038147681633882
	.quad	0x3fc909325b203bd4              # double 0.19559316110141245
	.quad	0x3fdfd1ccc16c0fd0              # double 0.49718016518477004
	.quad	0x3fc7835613b66d4c              # double 0.1836955639126735
	.quad	0x3fe558e250b278a9              # double 0.66710010300791567
	.quad	0x3feb78b113753796              # double 0.85848287392012668
	.quad	0x3fcb3fdd458e4728              # double 0.21288648506429664
	.quad	0x3fe43bfd3c86b6bf              # double 0.63232290097740662
	.quad	0x3fe4b81b069c5cea              # double 0.64747382441683254
	.quad	0x3fe8915b39d0ca65              # double 0.76774369518382157
	.quad	0x3fb45d9dfb0acad8              # double 0.079553483762349386
	.quad	0x3fd225e1aef47648              # double 0.28356210790102354
	.quad	0x3fde07f536a9e272              # double 0.46923570955508531
	.quad	0x3fe7e35bc56119ac              # double 0.74650372076648841
	.quad	0x3fd08c4c93c41784              # double 0.25856317930480821
	.quad	0x3feaca2743dc7a99              # double 0.83717692617559003
	.quad	0x3fb54f922f309950              # double 0.083245407601315379
	.quad	0x3fedb884cb9dbb67              # double 0.92877425926949975
	.quad	0x3fdca7a8bd5b57d8              # double 0.44773310176731007
	.quad	0x3fe653840fd3a287              # double 0.69769480792190641
	.quad	0x3fd0fabd80bde11a              # double 0.26530397007401663
	.quad	0x3fe460765b708b97              # double 0.63677518710425118
	.quad	0x3fc95892eb8a57bc              # double 0.19801556111332086
	.quad	0x3fe0a0ad9fba4cc8              # double 0.51961404034445824
	.quad	0x3fc5ddefe1932c10              # double 0.17083548082732181
	.quad	0x3fb313eec9520ed8              # double 0.074522899771234719
	.quad	0x3fdb515e992af02c              # double 0.42684140165124762
	.quad	0x3fba8cac60408ed0              # double 0.10370900487810819
	.quad	0x3fe66071ee721833              # double 0.69927307673856942
	.quad	0x3fd51f0e4d4660d8              # double 0.33002049967173042
	.quad	0x3fcb5912c9f87d0c              # double 0.21365580427025355
	.quad	0x3fc3acffbe02140c              # double 0.15371701028576046
	.quad	0x3fdc1ddd2b1ee91c              # double 0.4393227501965542
	.quad	0x3fc6090239cfb144              # double 0.17214992354218783
	.quad	0x3fd84a8bf693a724              # double 0.37954997138750657
	.quad	0x3fc41d87871b443c              # double 0.15715116593358569
	.quad	0x3fd7add122adf2c4              # double 0.36998394381207
	.quad	0x3fd058a2c6b38d9a              # double 0.25540990261489471
	.quad	0x3f99aba3556011e0              # double 0.025068809591191399
	.quad	0x3fe240f3ff8bf36b              # double 0.57042884742223288
	.quad	0x3fef4fa15434385d              # double 0.97847048231211497
	.quad	0x3fc42cf138c747bc              # double 0.15762152931580242
	.quad	0x3fe224deba6dcb4a              # double 0.56700073634997605
	.quad	0x3fd211153dcb018a              # double 0.28229266199561975
	.quad	0x3fc9ff8e81427080              # double 0.20311147033214993
	.quad	0x3fe988502b4da1de              # double 0.79788979013124695
	.quad	0x3fece62e58e016a4              # double 0.90309827192750846
	.quad	0x3fe517536204e7d0              # double 0.65909737724654782
	.quad	0x3fed1b55a60a249f              # double 0.90958673886884245
	.quad	0x3fae34066e754580              # double 0.058990670188573624
	.quad	0x3fe950e9c6acc244              # double 0.79112709811858694
	.quad	0x3fe027e36411eb31              # double 0.50486917061730285
	.quad	0x3fb301cc9abaead8              # double 0.07424620416251615
	.quad	0x3fb1b0f49bde34d0              # double 0.069106376699170413
	.quad	0x3fe0cf57ce4d4a7c              # double 0.52531042378753012
	.quad	0x3fe1f25116b41924              # double 0.56082968172339465
	.quad	0x3fef94d2ff37e826              # double 0.98691701743451143
	.quad	0x3f920e5c89b30e20              # double 0.017632909683710563
	.quad	0x3fcb1a27d54b65fc              # double 0.21173570551654552
	.quad	0x3fc7088264a39f9c              # double 0.1799471846963997
	.quad	0x3fe3cb552ed6a3d5              # double 0.61857089183933545
	.quad	0x3fe10cd62a61e0e7              # double 0.53281696584511173
	.quad	0x3fe7f739524e4876              # double 0.74892870021200397
	.quad	0x3fdffa1ecc70b93c              # double 0.49964113201976423
	.quad	0x3fe9317b3e944a08              # double 0.78729021284590406
	.quad	0x3fe86b9bdf0c4950              # double 0.76313584865628492
	.quad	0x3fd9f0c27ad69d30              # double 0.40531980510646104
	.quad	0x3fde169a3d79e23a              # double 0.470129547152769
	.quad	0x3fec977c9fbb388f              # double 0.89349204251790748
	.quad	0x3fe3649339b21283              # double 0.60602723377867596
	.quad	0x3fd78f85dab93d5c              # double 0.36813494071698982
	.quad	0x3fd917b0b0f6f934              # double 0.39207093507492918
	.quad	0x3fbaee0a0eb87af8              # double 0.10519469127073566
	.quad	0x3fe14a685a2d715b              # double 0.5403329621581564
	.quad	0x3fe67e23dbf6eb5d              # double 0.70289795839139979
	.quad	0x3fe0d5dbcca7550d              # double 0.52610578509725914
	.quad	0x3fcf59abdc32fa24              # double 0.24492405177984822
	.quad	0x3feffe043e8d2197              # double 0.99975788323449676
	.quad	0x3fec57b8e0516e1e              # double 0.88570827304960509
	.quad	0x3fee6c4fbd358131              # double 0.95072161631472885
	.quad	0x3fe3ab3f81ea5f5a              # double 0.61465430616497518
	.quad	0x3fd46b32a52b706c              # double 0.31904283647396059
	.quad	0x3fe0f8c200cc2a65              # double 0.53036594539419168
	.quad	0x3fd2ff464ae7136e              # double 0.29683072390280685
	.quad	0x3fd8ba8ba1d06450              # double 0.38638582994605475
	.quad	0x3faba3973d47baa0              # double 0.053982473593227498
	.quad	0x3fc7aec7404e75cc              # double 0.18502131118741116
	.quad	0x3fec5237a3809932              # double 0.88503629621553714
	.quad	0x3fe236618a4981c7              # double 0.5691383076592097
	.quad	0x3fcdb25aa7c71f38              # double 0.23200543586994526
	.quad	0x3fd616f1695bc9fa              # double 0.34515033043786014
	.quad	0x3fef79d35a62c809              # double 0.98362128880967347
	.quad	0x3fe0981a938c364e              # double 0.51856736009512772
	.quad	0x3fd096cad8ae359e              # double 0.25920363578992489
	.quad	0x3fc393ddafcb0884              # double 0.15295001109740636
	.quad	0x3fc25e6a65d5689c              # double 0.14350633594842044
	.quad	0x3fe9144c95d5f2e4              # double 0.78372792496483301
	.quad	0x3fc1f0a46f528edc              # double 0.14015632091206143
	.quad	0x3fe49f5a4e6d179c              # double 0.64445224111181032
	.quad	0x3fd2faafc4e95d3e              # double 0.29655069570204151
	.quad	0x3fee08da926b432c              # double 0.93858078572711667
	.quad	0x3fec588e7db4f269              # double 0.88581013252367058
	.quad	0x3f90307080dd1360              # double 0.015809781899651099
	.quad	0x3fdb25928ad1a1b0              # double 0.42416823917894941
	.quad	0x3fb5eed9f77d50e0              # double 0.085675833627934406
	.quad	0x3fde23a0b3f3b708              # double 0.47092454503477699
	.quad	0x3fe2917a4b52ab8e              # double 0.58025850974569138
	.quad	0x3fdbb4eb7be2a114              # double 0.43291747186823781
	.quad	0x3f75695b79942880              # double 0.0052274296988433777
	.quad	0x3fbea8513ecf20d0              # double 0.11975581916260869
	.quad	0x3fec9e3997c69188              # double 0.89431457179721097
	.quad	0x3fd535f01104cd64              # double 0.33141709959018884
	.quad	0x3fea190eb1f7d5e7              # double 0.81555876502414726
	.quad	0x3febf99a5e69ee82              # double 0.87421911659426166
	.quad	0x3fdba7ba4c1d9a48              # double 0.43211228783767242
	.quad	0x3fdaf8971c023d6e              # double 0.42142274604062535
	.quad	0x3fc6c9f56bb28f84              # double 0.17803828962962254
	.quad	0x3fe61b3a84a51e68              # double 0.69082380206323268
	.quad	0x3fe5b3b58445379a              # double 0.67818713983591583
	.quad	0x3fedbc0ef7c6676e              # double 0.92920635598714596
	.quad	0x3fdef0a395ecbd3e              # double 0.48343743935670946
	.quad	0x3fecb8134db62aaa              # double 0.89747014215511922
	.quad	0x3feb195160880324              # double 0.84684056142586827
	.quad	0x3fe870d88722e35c              # double 0.76377512353711152
	.quad	0x3fbe084504be77d8              # double 0.11731368413754184
	.quad	0x3fd5083412b0fcbe              # double 0.32862569642379558
	.quad	0x3fdfa5d139d679f8              # double 0.49449568412992972
	.quad	0x3fe0d004f3b9f7c9              # double 0.52539298632449871
	.quad	0x3fe0df990839fbf1              # double 0.52729465109575646
	.quad	0x3fdf6ec5ba227d4e              # double 0.49113600899905385
	.quad	0x3fe8d1de112d79b4              # double 0.77561858515746573
	.quad	0x3fc89c5b5e484298              # double 0.19227163413645054
	.quad	0x3fcab7061695cd60              # double 0.20871044256964932
	.quad	0x3fe80b0061829686              # double 0.7513429550642321
	.quad	0x3fcef0529426ac88              # double 0.24170906289996119
	.quad	0x3fe4c99681697cc5              # double 0.64960789943497643
	.quad	0x3fda8dd786fdec2a              # double 0.41490734274674657
	.quad	0x3fe803de24f3d84b              # double 0.75047213761605158
	.quad	0x3fdaeb2c170e180a              # double 0.420603773607923
	.quad	0x3fd0e2fcdda5cc82              # double 0.26385423321989532
	.quad	0x3fe856ae4c0b9662              # double 0.76058115818586836
	.quad	0x3fa4aab154f3c0e0              # double 0.040364781971108377
	.quad	0x3fe7c1ecda112b11              # double 0.74242251006339377
	.quad	0x3fe53cb95753832e              # double 0.66366259628202839
	.quad	0x3feb587d953b63d7              # double 0.85455207011102174
	.quad	0x3fe4a94ec6c65994              # double 0.64566744635776496
	.quad	0x3fdef47eaac18f76              # double 0.48367277789497309
	.quad	0x3fcb282e8f75f2e8              # double 0.21216375355643113
	.quad	0x3fec0fe46321e48f              # double 0.87693995820804271
	.quad	0x3fedf8ab6c9f36b8              # double 0.93660517897816131
	.quad	0x3fd6433e3bd5bf5c              # double 0.34785419314629507
	.quad	0x3fd0f916168a4a06              # double 0.26520302010717989
	.quad	0x3fb60046f18dd048              # double 0.085941728566298115
	.quad	0x3fed0b77bc95e36f              # double 0.90764986832719596
	.quad	0x3fd813b1eb085dd2              # double 0.37620208694849311
	.quad	0x3fe6f59fbf72095e              # double 0.7174834002656032
	.quad	0x3fe24b2e262d22df              # double 0.5716772790557022
	.quad	0x3fe72f1588f52f86              # double 0.72449757337152287
	.quad	0x3fee82831ffe01a4              # double 0.95343166588286409
	.quad	0x3fece28cf2bc8f74              # double 0.90265509995923176
	.quad	0x3fd6a6fd0f568198              # double 0.35394217012255913
	.quad	0x3fb7537ddb3ced50              # double 0.091117731118108169
	.quad	0x3fef988dd7193c40              # double 0.98737232219162507
	.quad	0x3fef1508ec7a349f              # double 0.97131773173318325
	.quad	0x3fc5e6c9ff61df34              # double 0.1711056229576059
	.quad	0x3fe9f37b7373d2b9              # double 0.81097195195487537
	.quad	0x3fe0ec7b32f557f1              # double 0.52886733963782551
	.quad	0x3fed4f806bd7f470              # double 0.91595479071805919
	.quad	0x3fce159529ffd2b8              # double 0.23503365088222039
	.quad	0x3fe1cebb25b54c42              # double 0.55648572316057021
	.quad	0x3fa4803be6a6b2c0              # double 0.040040847688350478
	.quad	0x3fed18d1dcef5872              # double 0.90927975798946492
	.quad	0x3fef043767095761              # double 0.96926469921411861
	.quad	0x3fe07cb6c02225b9              # double 0.51522386098911632
	.quad	0x3fe367d6de88a54f              # double 0.60642569984080719
	.quad	0x3fe4197e6395557b              # double 0.62811202478285055
	.quad	0x3fe893281ad978fc              # double 0.76796345943492339
	.quad	0x3f9aa776f23ac6c0              # double 0.026029451879998389
	.quad	0x3fd7b40e906fdff4              # double 0.37036480050255638
	.quad	0x3fe5f2a58f8b3b93              # double 0.68586996112741117
	.quad	0x3fea0d40ad4f79ec              # double 0.81411775445650169
	.quad	0x3fb1c55d6032e390              # double 0.069417797075301602
	.quad	0x3fde6cc370df3a2a              # double 0.475388393618149
	.quad	0x3fdef1d1efb2ead6              # double 0.48350952537627501
	.quad	0x3fe7e131fb8d9a1e              # double 0.74623965388747471
	.quad	0x3fe8d89aba8766aa              # double 0.7764409678595332
	.quad	0x3fed0fa5b3890156              # double 0.90816006722892939
	.quad	0x3feb08405001a711              # double 0.84475722910176121
	.quad	0x3fe26849cd42a0fb              # double 0.57523050393959296
	.quad	0x3fee66de9ec9ce1f              # double 0.95005732549038047
	.quad	0x3f99a7b21347a380              # double 0.025053770472286185
	.quad	0x3fc5806bc49be4d0              # double 0.16798159694716341
	.quad	0x3feec88658f71c88              # double 0.96197812438994478
	.quad	0x3fdc22d8b2b2da84              # double 0.43962686015166974
	.quad	0x3fb0403ef1be8b40              # double 0.063480314273459904
	.quad	0x3fe0e7c86f557062              # double 0.5282938169944027
	.quad	0x3fda3a33ed32e77a              # double 0.40980241931867278
	.quad	0x3fda7228089eb99e              # double 0.41321755258368309
	.quad	0x3fd11d041c324408              # double 0.26739599946546422
	.quad	0x3fd9d324641192a6              # double 0.40351209423378476
	.quad	0x3fc434eb222a9ce0              # double 0.15786494415554042
	.quad	0x3fec1e9d68df86e0              # double 0.87873716815030533
	.quad	0x3fe522f54c245a20              # double 0.66051735755428709
	.quad	0x3fc5d88930b9a640              # double 0.17067065123710456
	.quad	0x3fe2cd4514c43d80              # double 0.58755735450715463
	.quad	0x3fe557c9bc0a4988              # double 0.66696631170843634
	.quad	0x3fee409049935718              # double 0.94538130159591826
	.quad	0x3fe1f4524dba3223              # double 0.56107440167540223
	.quad	0x3fdba6398bf4f7cc              # double 0.43202055614153489
	.quad	0x3fdb54d7dd9f45fe              # double 0.42705341952122911
	.quad	0x3febeac2787d88dc              # double 0.87240718396449379
	.quad	0x3fb876963a2db778              # double 0.095559491351847714
	.quad	0x3f95e9984e780da0              # double 0.021398906506886584
	.quad	0x3fee0425b6693750              # double 0.9380062639918183
	.quad	0x3feb0dcf5ff277b1              # double 0.8454357980697208
	.quad	0x3fb7705ea17d03c8              # double 0.091558374811042786
	.quad	0x3fe851b040a50a47              # double 0.75997173906245841
	.quad	0x3fe4213def30df0d              # double 0.62905785290692651
	.quad	0x3fe78a32a5a7f6bc              # double 0.73561985354145731
	.quad	0x3fe9daa888ffede4              # double 0.80794169194944887
	.quad	0x3fe219777c743941              # double 0.56560873324796301
	.quad	0x3fe937454fb7ced4              # double 0.78799691743776145
	.quad	0x3fe5a0f34337d5fc              # double 0.67589724663292783
	.quad	0x3fe9b85618c7642f              # double 0.803751991649852
	.quad	0x3fd1ecdff0ecdcae              # double 0.2800826885972566
	.quad	0x3fe3bdb93c8a7b02              # double 0.61690961670305478
	.quad	0x3fd26f655d5d8ef8              # double 0.28804906957360243
	.quad	0x3f92728bb759eb20              # double 0.018015082422134232
	.quad	0x3fbaeb428ad947b8              # double 0.10515228166448665
	.quad	0x3fe577c580d38e96              # double 0.67087054406552471
	.quad	0x3feed81d31de22c3              # double 0.96388110866345078
	.quad	0x3fe58527e9e050f6              # double 0.67250438384010525
	.quad	0x3fe35582e4773277              # double 0.60418839094343368
	.quad	0x3fe2aa6e7e0ffda3              # double 0.5833046400220393
	.quad	0x3fd92e44944e78c0              # double 0.39344896777209826
	.quad	0x3feaf9a39dd973a7              # double 0.84297352628674538
	.quad	0x3febf3b981f85d20              # double 0.87350154290007608
	.quad	0x3fe3e00dcd6d7c22              # double 0.62110033152191968
	.quad	0x3f82cbc90535d9c0              # double 0.0091777519908021742
	.quad	0x3fe1d8a3194b39d6              # double 0.55769495907025646
	.quad	0x3fefdc901ff996b3              # double 0.99567419285877745
	.quad	0x3feabc2471512eb3              # double 0.83546659595727701
	.quad	0x3fc249eaac376960              # double 0.14288075837141445
	.quad	0x3fed9de2f79c8fcf              # double 0.92552326547274244
	.quad	0x3fcc86e7c5df12e4              # double 0.22286698495567869
	.quad	0x3fc1a327b13eeb88              # double 0.13779159693316623
	.quad	0x3fcc41dc7debe4f0              # double 0.22075992725857629
	.quad	0x3fe5b4bdfb85fae9              # double 0.67831324697166651
	.quad	0x3fb7d756aa220b78              # double 0.09312955526006117
	.quad	0x3feadaa463989300              # double 0.83918971493093864
	.quad	0x3fe051dd8d11bfbe              # double 0.50999333908656985
	.quad	0x3fdea5b2559e2e76              # double 0.47886331902620982
	.quad	0x3fe860c83e28a019              # double 0.76181423321122843
	.quad	0x3fe27f95daf7ee7e              # double 0.57807438628465468
	.quad	0x3febbe5ad3426452              # double 0.86698666822042925
	.quad	0x3fe6e47f6178dcbf              # double 0.71539277112506017
	.quad	0x3fe623ac3bb31f51              # double 0.69185458812806122
	.quad	0x3fda1025e61a90bc              # double 0.40723559828826317
	.quad	0x3fd12ad6e9bf6300              # double 0.26823971583284845
	.quad	0x3fe1404a76adeeca              # double 0.5390980070073621
	.quad	0x3fdb4493aa15e2b0              # double 0.42606059656058459
	.quad	0x3feb2e73a31b23d6              # double 0.84942037445682206
	.quad	0x3fc5f7d4708a26fc              # double 0.17162566657162148
	.quad	0x3fb083e541014ca8              # double 0.064512565966014734
	.quad	0x3fc9d0ed577547e4              # double 0.2016884495774881
	.quad	0x3fe211530ab084b2              # double 0.56461479270742232
	.quad	0x3fec3ecafbaa6b68              # double 0.88266514924485495
	.quad	0x3feb6d2b9819bb5a              # double 0.85707645136958921
	.quad	0x3fe676aed6a8c6a4              # double 0.70198766637459586
	.quad	0x3fe2c79ac53103ae              # double 0.58686579240758419
	.quad	0x3fe1ab8df54b139b              # double 0.55219171437112224
	.quad	0x3fda540c82e167fe              # double 0.41137993603990697
	.quad	0x3fd06009efa105d4              # double 0.25586174393910466
	.quad	0x3fe1752790f0aef9              # double 0.54555109318377426
	.quad	0x3fd704272228f85e              # double 0.35962847076360116
	.quad	0x3fed828a7e1fb2ee              # double 0.92218517907676101
	.quad	0x3fd33efaa97b2978              # double 0.3007189421738512
	.quad	0x3feb25f59452191f              # double 0.84838370293508436
	.quad	0x3fe962dc49672f3a              # double 0.79331793152366648
	.quad	0x3fca0aefce42f934              # double 0.20345876284950182
	.quad	0x3fd10a0d7ec50f04              # double 0.26623856906756793
	.quad	0x3fd4eef1903c713a              # double 0.327083960395402
	.quad	0x3fd15908b022783e              # double 0.27105920029305597
	.quad	0x3fe09cf3a6807f3a              # double 0.5191591503134767
	.quad	0x3fddf565b1201298              # double 0.46810285851851452
	.quad	0x3fc243ab3fc46848              # double 0.14269009221681217
	.quad	0x3fc5336a791b3384              # double 0.1656315890635619
	.quad	0x3fd097bc32eed958              # double 0.25926117872167742
	.quad	0x3fe728e6b9366562              # double 0.72374283003152251
	.quad	0x3fdb05f41c586432              # double 0.42223837631314887
	.quad	0x3fe7be7af5a05a38              # double 0.74200199102307973
	.quad	0x3fe82e0f63f578ff              # double 0.75562257312029135
	.quad	0x3fc9686c458186f8              # double 0.19849923509450895
	.quad	0x3fecb1fc7a05b27f              # double 0.89672683556052835
	.quad	0x3fe84bb52e13c9cd              # double 0.75924166678879035
	.quad	0x3fe6f8829656361e              # double 0.71783570635460925
	.quad	0x3fe66a99d963cba1              # double 0.70051281413030975
	.quad	0x3febbe36a3ed59d8              # double 0.86696941391965776
	.quad	0x3fce0d84cd91cfcc              # double 0.23478755986763955
	.quad	0x3feb46340f50e6e9              # double 0.85231974593554327
	.quad	0x3fdaf7bf6fcfc8e8              # double 0.42137132567508084
	.quad	0x3fdd8aa2b03986ca              # double 0.46158663949436785
	.quad	0x3fdc070f5d4cb1d2              # double 0.43793090926444933
	.quad	0x3fa5124ea926ed70              # double 0.041155298374600302
	.quad	0x3fdc27243227d3ac              # double 0.4398890008736156
	.quad	0x3fe0794034fa3f29              # double 0.51480112406895728
	.quad	0x3fd984460b167678              # double 0.39869834025180451
	.quad	0x3feab22b842e98b4              # double 0.83424926583099656
	.quad	0x3fe7a16157b29323              # double 0.73844973686627602
	.quad	0x3fe16badf289c4fc              # double 0.54439446802840008
	.quad	0x3fedbbd52d974b34              # double 0.92917879967203598
	.quad	0x3fda6e62cd6df80e              # double 0.41298742352944451
	.quad	0x3fe757b3d78b2aa6              # double 0.72945587252009569
	.quad	0x3fe32ea6c341b1a9              # double 0.59944475303705247
	.quad	0x3fef3355391ecf36              # double 0.97501622349088879
	.quad	0x3fedb53c439bc8a6              # double 0.92837346272269339
	.quad	0x3feffabe23a6d841              # double 0.99935824359159408
	.quad	0x3fe0576d45ce86ba              # double 0.51067222246293587
	.quad	0x3fe77274883e7783              # double 0.73272158250959796
	.quad	0x3fdb9378e9e25a60              # double 0.43087599601986959
	.quad	0x3fbfd609525c4588              # double 0.1243596864772113
	.quad	0x3febee1e60baf088              # double 0.87281721966384485
	.quad	0x3f82e73aa2135780              # double 0.0092300968848737508
	.quad	0x3fdb68cacabae884              # double 0.42827100561010689
	.quad	0x3fe1de6972818a66              # double 0.55839989056069039
	.quad	0x3fd4b47a2faa56d8              # double 0.32351545958350192
	.quad	0x3fc5993467e62c80              # double 0.16873793671797799
	.quad	0x3fda65ce2573ee84              # double 0.41246369988923726
	.quad	0x3fe90153dc436461              # double 0.78141205806890579
	.quad	0x3fee37cf240ec8b6              # double 0.94431263964204137
	.quad	0x3fe88757f88dd3e2              # double 0.76652143998819278
	.quad	0x3f9e1d4cbad70e00              # double 0.029408644584476562
	.quad	0x3fe0790fe595b5cb              # double 0.51477808800489677
	.quad	0x3fe49e1bde580a9e              # double 0.64430039812608064
	.quad	0x3fd428d30eb6a8b6              # double 0.31499172627321614
	.quad	0x3fe29856e738ac87              # double 0.58109612617899209
	.quad	0x3fe06bd4e58d9aec              # double 0.5131630404910914
	.quad	0x3fe038008a9e49b8              # double 0.50683619569672711
	.quad	0x3fefe2a84a07d2b8              # double 0.99641813716023985
	.quad	0x3fd18085aeb1fed0              # double 0.27346937236869184
	.quad	0x3fc6e135b4e2b5f4              # double 0.17874785740188737
	.quad	0x3fd1f1693a79435c              # double 0.28035956106491766
	.quad	0x3fbc3661c4627b88              # double 0.11020480198429372
	.quad	0x3fcd2beb3a8cab30              # double 0.22790279730664897
	.quad	0x3fcbb6b6396b64a0              # double 0.21651342204748847
	.quad	0x3f9af319968b4a20              # double 0.026317977727396635
	.quad	0x3feeba5d74872e65              # double 0.96024964103112309
	.quad	0x3feb684695f5dbc6              # double 0.85647897042405741
	.quad	0x3fe6c696a03678dd              # double 0.7117417458682912
	.quad	0x3fd41c07c63ec0f0              # double 0.31421083793521998
	.quad	0x3feaaf264f3cecbe              # double 0.83388057209176458
	.quad	0x3fc5062852437c24              # double 0.16425041214731195
	.quad	0x3fef1622b28d443e              # double 0.97145209191706505
	.quad	0x3fd2b393e3734bc2              # double 0.29221055232954651
	.quad	0x3feeeebdbbb698cd              # double 0.96664320624111044
	.quad	0x3fef76b881a44b09              # double 0.9832422763887233
	.quad	0x3fd44c2a793f85c0              # double 0.31714879837644716
	.quad	0x3fe3a389b5056387              # double 0.61371312480615436
	.quad	0x3fc7eb5232178aec              # double 0.18686892934700639
	.quad	0x3fe6301252f86edc              # double 0.69336811261333819
	.quad	0x3fe63650fe20382a              # double 0.69413041719395108
	.quad	0x3fdb75c7301f89c2              # double 0.42906360339670979
	.quad	0x3fd294605c62990a              # double 0.29030617734896735
	.quad	0x3fe155fc3641a4e4              # double 0.54174624058682896
	.quad	0x3fea8d03df2e55d2              # double 0.8297137602809761
	.quad	0x3fe5198d2cbbe5b6              # double 0.65936907517532606
	.quad	0x3fec48632ade2e18              # double 0.88383634922633103
	.quad	0x3fe844eb9fd0daf6              # double 0.75841313566237889
	.quad	0x3fcb411650d4deb8              # double 0.21292380282260637
	.quad	0x3fdaa836bfd2d2fc              # double 0.41651695950285705
	.quad	0x3fc9d805652126e4              # double 0.20190494001354076
	.quad	0x3fdbaa936fe456f4              # double 0.43228612830112856
	.quad	0x3fcdad13fb4c0644              # double 0.23184442301139729
	.quad	0x3fee5cc14a13cf6d              # double 0.94882263630141284
	.quad	0x3fe2641f66d2be10              # double 0.57472200472506252
	.quad	0x3fe8894ec07dbf16              # double 0.76676118465363419
	.quad	0x3fdf241787c2f50e              # double 0.48657787569011723
	.quad	0x3fea5f312aa96e96              # double 0.8241201241721281
	.quad	0x3fd52b63b5ca5cae              # double 0.33077328446365584
	.quad	0x3fe923fa7412b815              # double 0.78564188643008726
	.quad	0x3f91fbf29d462f60              # double 0.017562666749241784
	.quad	0x3f73ef288c8eac80              # double 0.0048667510936112324
	.quad	0x3fcd49493ddc0f8c              # double 0.22879901428688887
	.quad	0x3fef36c6e6e93a67              # double 0.97543664073766656
	.quad	0x3fe04eb9edbad6dc              # double 0.50961014205560273
	.quad	0x3fb582f7f08c14f0              # double 0.084029670932142641
	.quad	0x3fc5ca90da8353a0              # double 0.17024431867198775
	.quad	0x3fca8ed21d28e36c              # double 0.2074835436231085
	.quad	0x3fdc1330cc1f5218              # double 0.43867130216429606
	.quad	0x3feeca592db9b615              # double 0.96220072680233903
	.quad	0x3fec5a1fa2187bce              # double 0.8860014120035602
	.quad	0x3fc575e93acc8468              # double 0.16766085978545964
	.quad	0x3fe9f43acdb019ad              # double 0.81106319592872966
	.quad	0x3feee517bf72d21a              # double 0.96546542541779279
	.quad	0x3fe9e5e2d996b3bf              # double 0.80931227205075362
	.quad	0x3fe018fa72b314bd              # double 0.50304911043408362
	.quad	0x3fa8129ed69414c0              # double 0.047017062848718094
	.quad	0x3fdc80702eca7054              # double 0.44533924645816581
	.quad	0x3fd8105322e249b6              # double 0.37599638373026367
	.quad	0x3fe09cb517bc8577              # double 0.51912932048814653
	.quad	0x3fe651eccf2490fc              # double 0.69750061471543701
	.quad	0x3fef3fbe0086ba5a              # double 0.97653102972783334
	.quad	0x3fe1facd6f24020f              # double 0.56186553675803619
	.quad	0x3fd0e62ef9c2a884              # double 0.26404928579962239
	.quad	0x3fe7f5c245fdf180              # double 0.74874986334138782
	.quad	0x3fe7242b36e33898              # double 0.72316513748389166
	.quad	0x3fef9dd6207a7f3d              # double 0.9880171427102834
	.quad	0x3fc6827d2e0f48a4              # double 0.17585720776566405
	.quad	0x3fb2fecc8c2e9538              # double 0.074200424408066179
	.quad	0x3fe581bcbdf04482              # double 0.67208706948635233
	.quad	0x3fc628b24240475c              # double 0.17311695322910736
	.quad	0x3fec60d7b1728d92              # double 0.88682160051068792
	.quad	0x3fe5c55a67ef28b2              # double 0.68034096049929915
	.quad	0x3fcf263ce0ecb830              # double 0.24335442526484163
	.quad	0x3feb40dedbdee70a              # double 0.85166876739023789
	.quad	0x3fdc11f449738a26              # double 0.4385958401964295
	.quad	0x3fed457bd0b45161              # double 0.91473189127513532
	.quad	0x3fe82f7a42dfbbde              # double 0.75579560338325869
	.quad	0x3feda7463b947bd9              # double 0.92666923176499971
	.quad	0x3fd4131db5a56f5a              # double 0.31366675127877885
	.quad	0x3fe90d35178dfe2a              # double 0.782862230305857
	.quad	0x3fe68245efc9da1a              # double 0.70340248902977298
	.quad	0x3fa4e1c43cd405f0              # double 0.040784962106055533
	.quad	0x3fe5a79dfe397037              # double 0.67671107915112472
	.quad	0x3fde73eb3151dc6c              # double 0.47582511726745369
	.quad	0x3fa3787f11dbf770              # double 0.038028689317782916
	.quad	0x3fd12e1370355734              # double 0.26843725164268339
	.quad	0x3fe790bcece40747              # double 0.73641821162912258
	.quad	0x3fe4b78ce418c345              # double 0.64740604925291534
	.quad	0x3fc476f73c03e684              # double 0.15988054686004116
	.quad	0x3fe112c7ad56ce65              # double 0.53354247908869168
	.quad	0x3fb2bae0e0b5fdc0              # double 0.073164038525638908
	.quad	0x3fde82fb173687ae              # double 0.47674443499465269
	.quad	0x3fcd05a40b4d2c48              # double 0.22673464347676231
	.quad	0x3fc2d914cfd6a900              # double 0.14724979542126704
	.quad	0x3fd214fe0e61678a              # double 0.28253127483696316
	.quad	0x3fe387dcee19274f              # double 0.61033483985486636
	.quad	0x3fddfcb268739dbe              # double 0.46854839516023705
	.quad	0x3fd42d171b5098ec              # double 0.31525209109749031
	.quad	0x3f8d2555585f5980              # double 0.014231364020741877
	.quad	0x3fcaa202227fdcac              # double 0.20806910213989249
	.quad	0x3fe97ba01a6ed688              # double 0.79634099161803906
	.quad	0x3fde91e51227be24              # double 0.47765471241925384
	.quad	0x3feb23fcd36b58c4              # double 0.84814301770054401
	.quad	0x3fd908dbbee5b0c8              # double 0.39116567270572178
	.quad	0x3fe064ad98d6679a              # double 0.51228980876043129
	.quad	0x3fe74c3a06bd788a              # double 0.72805501285962859
	.quad	0x3fc089cac2245f70              # double 0.12920507888406574
	.quad	0x3fe33105a5eecd43              # double 0.59973413857225244
	.quad	0x3fd14d6a0c8ae95a              # double 0.27034999108186286
	.quad	0x3fe5e1ab9533420c              # double 0.68379763737363097
	.quad	0x3feccf64b3b2c008              # double 0.90031657311738034
	.quad	0x3fdbcaa96bc7ea4c              # double 0.43424449468117099
	.quad	0x3f2039f2d0a0c000              # double 1.237973122569791E-4
	.quad	0x3fe2a4b24c14cdc0              # double 0.58260454997655842
	.quad	0x3fe741452e348974              # double 0.72671755814034933
	.quad	0x3fde645f483b0574              # double 0.47487623265995826
	.quad	0x3fdd5048019b3afc              # double 0.45802498013374282
	.quad	0x3fe84d4cfbd5e819              # double 0.75943612276683148
	.quad	0x3fc494b2508ade9c              # double 0.1607878583215453
	.quad	0x3fc6c5b71480a700              # double 0.17790878773785579
	.quad	0x3fa9888575fe7ce0              # double 0.049869700101447867
	.quad	0x3fdc2c99c4c1b7a8              # double 0.44022220816156699
	.quad	0x3fcb8c5a6ddaab84              # double 0.21522074092839827
	.quad	0x3fd01db509afef40              # double 0.25181318231601679
	.quad	0x3feb810986132b66              # double 0.85950161158085048
	.quad	0x3fecdee6dcf7af2f              # double 0.9022096935054601
	.quad	0x3fd227533995b75e              # double 0.28365021346586683
	.quad	0x3fe4ff1e74c8d248              # double 0.65614245233025148
	.quad	0x3fc1369f924990f0              # double 0.13447947161615259
	.quad	0x3fea41b668df45f7              # double 0.82052155001491556
	.quad	0x3fe2cb26e7d30248              # double 0.58729882505583308
	.quad	0x3fafe230938d3910              # double 0.062272565852810158
	.quad	0x3faeb658c0cdc580              # double 0.059984944854373445
	.quad	0x3fe092beae93018f              # double 0.51791318985492463
	.quad	0x3fd2eea9d144c082              # double 0.29581685482390452
	.quad	0x3fcc2b6d18346db8              # double 0.22007526094317398
	.quad	0x3fcedb79f5462d3c              # double 0.2410728881480767
	.quad	0x3fa5a0614ea50170              # double 0.042239228105702575
	.quad	0x3febbb8903674b44              # double 0.86664248146767208
	.quad	0x3fec27e1a4873586              # double 0.87986833700567568
	.quad	0x3fe5860f64d0ba3e              # double 0.67261476221558048
	.quad	0x3fea8006639b519a              # double 0.82812804655491168
	.quad	0x3fdfd9108f542590              # double 0.49762357708876781
	.quad	0x3fe4a457f3733d9d              # double 0.64506146954402122
	.quad	0x3fe5d0283ec88100              # double 0.6816598154291853
	.quad	0x3feab3f60a04e2c8              # double 0.8344679065404188
	.quad	0x3fe1a681ea44607e              # double 0.55157562022488071
	.quad	0x3fe5e794f4aefdca              # double 0.68451926984556022
	.quad	0x3fe4e823b9d3484a              # double 0.65333734792717135
	.quad	0x3fe1862349d5498a              # double 0.54762424870050208
	.quad	0x3fea39781bd218c8              # double 0.81951528009155883
	.quad	0x3feceafc8c9b9817              # double 0.90368487799128416
	.quad	0x3fbf97bd5e503e90              # double 0.1234091143853624
	.quad	0x3fe033d70c552c3c              # double 0.50632812889796908
	.quad	0x3febed97d856c6f2              # double 0.87275306943612763
	.quad	0x3fd987c94b0bfd52              # double 0.39891273812096018
	.quad	0x3fe4d7cd7758e8c0              # double 0.65134309110660382
	.quad	0x3fe1880197c96bd7              # double 0.54785232206210821
	.quad	0x3faa60a661017190              # double 0.05151863035345905
	.quad	0x3fda7536811d70ee              # double 0.41340410813223982
	.quad	0x3fce0846fa7c5b54              # double 0.23462760191679399
	.quad	0x3fb10be4f35e9910              # double 0.066587743202578986
	.quad	0x3fe6e73dbf82c2aa              # double 0.71572768597078107
	.quad	0x3fda0d83c144352c              # double 0.40707486985850738
	.quad	0x3fe39c4eab1a8f44              # double 0.61283048075390711
	.quad	0x3fa7dc2c60b05b40              # double 0.04660166435512858
	.quad	0x3fed1fe613345864              # double 0.91014388800500656
	.quad	0x3feaa92c25622966              # double 0.83315093327955192
	.quad	0x3fd72cbb2f6d07f6              # double 0.36210517531810582
	.quad	0x3fd4db480d281aaa              # double 0.32588387760953685
	.quad	0x3fe9584529ed2ac5              # double 0.79202516735798467
	.quad	0x3faa138b072da790              # double 0.050930351854574174
	.quad	0x3fea903e2f97b6e8              # double 0.83010777755199872
	.quad	0x3f9175e6c2cc5b20              # double 0.017051320685904092
	.quad	0x3feb8b2e5f378b11              # double 0.86073988530219669
	.quad	0x3fef19fe2e67747b              # double 0.97192296088509466
	.quad	0x3fe675a14f42f99a              # double 0.7018591449812448
	.quad	0x3fea9d423af2cac3              # double 0.83169662011490464
	.quad	0x3fd75abf971f4544              # double 0.36491384275457883
	.quad	0x3fe8bc4e55929e49              # double 0.77298657143996607
	.quad	0x3fd35e2218d0504a              # double 0.30262043402877181
	.quad	0x3fea3e4a10cf2a9b              # double 0.82010367663436357
	.quad	0x3fee7db08bd7bf80              # double 0.95284297287979314
	.quad	0x3f9bc6190a7cdaa0              # double 0.027122870698088719
	.quad	0x3faf1940584a0af0              # double 0.060739527490133116
	.quad	0x3fe84e4dfe6f8884              # double 0.75955867475956084
	.quad	0x3fdda7d8c90200ca              # double 0.46336955670996061
	.quad	0x3f9e6bece97fab00              # double 0.029708577872876951
	.quad	0x3fc30ea9a92a7e18              # double 0.14888497123773514
	.quad	0x3fdb66f8c5559fd8              # double 0.4281598975271641
	.quad	0x3fef564cd13e620d              # double 0.97928467624575576
	.quad	0x3fec986ca1d9195a              # double 0.8936064873785583
	.quad	0x3fc1bef45780a0c8              # double 0.13863996765690545
	.quad	0x3fe1fa444136a721              # double 0.56180012452134431
	.quad	0x3fd23a92d65f0dec              # double 0.28482504782388562
	.quad	0x3fb59b1b47fb8708              # double 0.084397988389835032
	.quad	0x3fa168ca70fcfc50              # double 0.034002615253932889
	.quad	0x3feb1fc2d0fbd8df              # double 0.84762707535881165
	.quad	0x3fe4ee50f6ce2c3b              # double 0.65409134105846733
	.quad	0x3fdf917f2faddf7c              # double 0.49325542122050314
	.quad	0x3fd44d7a98c7c878              # double 0.31722893638573835
	.quad	0x3fedc8a59530da63              # double 0.93074301852068364
	.quad	0x3fd0974435ff6b68              # double 0.25923257134643629
	.quad	0x3fc1ee9ce0ff7604              # double 0.14009438501572913
	.quad	0x3f9e39182f65f640              # double 0.029514673130952795
	.quad	0x3fee5e0e0dae9a25              # double 0.94898131057999946
	.quad	0x3fdd94d0d09d8aa2              # double 0.46220798847768141
	.quad	0x3fe4728d3386c678              # double 0.63898334563982839
	.quad	0x3fcd22abb1deec70              # double 0.22762056527230667
	.quad	0x3fe852a043e9736f              # double 0.76008618606611644
	.quad	0x3fa3a9ccd8daaac0              # double 0.03840484759469609
	.quad	0x3fe27becd06f8fab              # double 0.57762757024874156
	.quad	0x3fedaf4008f38f53              # double 0.92764283893891741
	.quad	0x3fdf9650b27c5a36              # double 0.49354951315163775
	.quad	0x3fe718cde12264a3              # double 0.72177785846283304
	.quad	0x3fedf858e80269bc              # double 0.93656583132115356
	.quad	0x3fe890cfb7be8e1a              # double 0.76767717254228107
	.quad	0x3fde428967792362              # double 0.47281108002476036
	.quad	0x3fd524e6a0d05906              # double 0.33037725166776999
	.quad	0x3fd8bf158a482942              # double 0.38666285041894721
	.quad	0x3fe0bae747be3a5d              # double 0.52281536114044125
	.quad	0x3fef922e67a9a111              # double 0.98659439322094233
	.quad	0x3fef4302bd2b7793              # double 0.97693001696801429
	.quad	0x3fbee899a80d36b0              # double 0.12073669770071649
	.quad	0x3fe6db9fbed17e7e              # double 0.71430957097250292
	.quad	0x3fe6c2c2e6be3ce0              # double 0.71127457682623785
	.quad	0x3fe4d06694413e05              # double 0.65043953853631875
	.quad	0x3fe5a5a100bca02a              # double 0.67646837371740287
	.quad	0x3fecd21ba278ab14              # double 0.9006479428547629
	.quad	0x3fda2b36f046827e              # double 0.40888761009595231
	.quad	0x3fef26b695836333              # double 0.97347573472789006
	.quad	0x3fe53258cfccdb4e              # double 0.66239586435299613
	.quad	0x3fe2cdcf23642d5f              # double 0.58762318527571356
	.quad	0x3fedfe8347c8f756              # double 0.93731845875275144
	.quad	0x3fec0c93bf2f650f              # double 0.87653529492232163
	.quad	0x3fe4ef6ad10da4ee              # double 0.65422573881838075
	.quad	0x3f9952c626b9d620              # double 0.024729820359843058
	.quad	0x3fa05926af7af930              # double 0.031930169030135125
	.quad	0x3fec2398546ba580              # double 0.87934509743097067
	.quad	0x3fe3fe6d58b26995              # double 0.62480799983613855
	.quad	0x3fe9b135a7f9877b              # double 0.80288203055918872
	.quad	0x3febe7dd111a3c8a              # double 0.87205365505532595
	.quad	0x3fd3b25555e33092              # double 0.30775960338065389
	.quad	0x3fcc443e11fdaa78              # double 0.22083259466610961
	.quad	0x3fd24d4f5f4907ac              # double 0.28596863084032509
	.quad	0x3fded2137bf9d9e4              # double 0.48157202822713274
	.quad	0x3fc0925f19b334f8              # double 0.12946690325626498
	.quad	0x3fd3b1418633cc2e              # double 0.30769384484955509
	.quad	0x3fe505e0bb9709c1              # double 0.65696751249952723
	.quad	0x3fe667055269af1a              # double 0.70007577987914549
	.quad	0x3fc1611700763ccc              # double 0.13577544710685741
	.quad	0x3fea731a03db668d              # double 0.82655049088789811
	.quad	0x3fe81f98ba41fe60              # double 0.75385700586771164
	.quad	0x3fc78d6ceb6ada70              # double 0.18400346274366397
	.quad	0x3fc4dabfee043428              # double 0.16292571184058713
	.quad	0x3fc30dabb13ad86c              # double 0.14885469583322519
	.quad	0x3fe855ca93fe9b6c              # double 0.76047257332980455
	.quad	0x3fc58584f0f432c4              # double 0.16813718571974878
	.quad	0x3fe6d8a6e4be590d              # double 0.71394676853631867
	.quad	0x3fa3be89d0a46950              # double 0.038563067168257192
	.quad	0x3fe68297997e761c              # double 0.70344142894072403
	.quad	0x3febcba18b49a614              # double 0.86860730366351157
	.quad	0x3fe6097ffba7cec5              # double 0.68865965987648592
	.quad	0x3fe937fc1b7017df              # double 0.78808408125837193
	.quad	0x3fec57bba45ff6e3              # double 0.88570959190812137
	.quad	0x3fedcbe5c1d4ebbb              # double 0.93113983018644519
	.quad	0x3fed4867f3af4c18              # double 0.91508863062552148
	.quad	0x3feff1aaf455ae02              # double 0.99825046273821294
	.quad	0x3fd3db9aa975d5a0              # double 0.31027857350212606
	.quad	0x3fa167fb84bbe500              # double 0.033996448471905083
	.quad	0x3fdaf59608e85978              # double 0.42123938436397834
	.quad	0x3f9cc771cec0b440              # double 0.028104570621668268
	.quad	0x3f9e5e8b98ed4240              # double 0.029657536705885557
	.quad	0x3fe6f5a709deca84              # double 0.7174868767527447
	.quad	0x3fb7d592be4b74c8              # double 0.093102618654898994
	.quad	0x3febf46775fb2d29              # double 0.87358449023432627
	.quad	0x3fd41bcd0e94c0e8              # double 0.31419683860714409
	.quad	0x3fea1d6c0800b64e              # double 0.81609155238192854
	.quad	0x3feef1f6e5870f18              # double 0.96703667478184041
	.quad	0x3fdb8320a4087ec6              # double 0.42987838763108888
	.quad	0x3fdf94f4e398b10e              # double 0.4934665892240141
	.quad	0x3fec31c4011d09db              # double 0.88107490746943584
	.quad	0x3feba95752eb64cb              # double 0.86442152209488066
	.quad	0x3fec734d178ab9be              # double 0.88907484624888133
	.quad	0x3febcd55620d3792              # double 0.86881512785633874
	.quad	0x3fd613a802cbf23e              # double 0.34494972489463638
	.quad	0x3fe779cfae9792bd              # double 0.73361953830734417
	.quad	0x3fef9b920a8c9061              # double 0.9877405363117867
	.quad	0x3feee2e1ded2602c              # double 0.9651955940235033
	.quad	0x3fe444d496c9e83e              # double 0.63340215159337965
	.quad	0x3fdac6e068f73946              # double 0.41838846445616118
	.quad	0x3fdec8272166f5a2              # double 0.48096636068279441
	.quad	0x3fd2f23eb78443c4              # double 0.29603546067761166
	.quad	0x3fd2c852d3f1604c              # double 0.29347677896067093
	.quad	0x3fd36d399f3eb8ac              # double 0.30354157019872718
	.quad	0x3fee7dab42a4d673              # double 0.95284045235048465
	.quad	0x3fe64d0952d8cdab              # double 0.69690385991127834
	.quad	0x3fc263a7d9465ffc              # double 0.14366624936224059
	.quad	0x3fd608674797686c              # double 0.34426290503836898
	.quad	0x3fc9a534c0b16fa4              # double 0.20035418900340318
	.quad	0x3fe0086ae4e1661c              # double 0.50102753356185614
	.quad	0x3fde29f11b6357e6              # double 0.47130992579093201
	.quad	0x3fe097b62248029b              # double 0.51851946540417104
	.quad	0x3fbdb4da5c413358              # double 0.11604084732352982
	.quad	0x3fe86f1d1e6177cf              # double 0.76356368955361542
	.quad	0x3fed8e922dff965d              # double 0.92365368827877214
	.quad	0x3fed438805658f61              # double 0.91449357084318816
	.quad	0x3fe3b9fa05486dda              # double 0.61645222694226764
	.quad	0x3fc9e87c43cb93fc              # double 0.20240739164651689
	.quad	0x3fc120b2c0b782bc              # double 0.13381037149431119
	.quad	0x3fe864ece5ed577a              # double 0.7623199930919633
	.quad	0x3fe2c93175ef842f              # double 0.58705971750544517
	.quad	0x3fe7fadf04d3bb34              # double 0.74937392180240758
	.quad	0x3fc3d71e8d2893b8              # double 0.15500242130761221
	.quad	0x3fdecfc49654f7c6              # double 0.48143114739275139
	.quad	0x3fea01a2145a4719              # double 0.81269935584188879
	.quad	0x3fdcd7e036058afa              # double 0.45067601466705265
	.quad	0x3fd54849c3959b30              # double 0.33253711795844065
	.quad	0x3fe1cc28d319ef80              # double 0.55617181044316055
	.quad	0x3feb05c843b1b095              # double 0.84445584508422888
	.quad	0x3fb67f12a74e9410              # double 0.087876478048727557
	.quad	0x3fe11667e6072e33              # double 0.53398508956292401
	.quad	0x3fdc849123d9c120              # double 0.44559124470744571
	.quad	0x3fe4eddbe8d799e9              # double 0.65403552510252638
	.quad	0x3fec67c9485b1dfe              # double 0.88766922122971414
	.quad	0x3fea0c019dbc9046              # double 0.81396561439442716
	.quad	0x3fd6b26002bac47a              # double 0.35463714853819506
	.quad	0x3fe83436a4cc8d04              # double 0.7563737124186507
	.quad	0x3fe55e5fa256ab3d              # double 0.66777021128414271
	.quad	0x3fecb69ba6305425              # double 0.89729101618525375
	.quad	0x3fc09eac2a287d20              # double 0.12984230097297544
	.quad	0x3fe962d482060516              # double 0.79331422229020876
	.quad	0x3fe2ba33e4bf37d6              # double 0.58522982289445724
	.quad	0x3fea7e97e032dd33              # double 0.82795327938848684
	.quad	0x3fb2bc6a8ef0c3a8              # double 0.073187503717021429
	.quad	0x3fea37dfb318e93e              # double 0.81932053546851313
	.quad	0x3fdb19e2a8738bea              # double 0.42345491838767535
	.quad	0x3fb2f8f04798f420              # double 0.074111001472332294
	.quad	0x3fd9c386f5e2ada8              # double 0.4025590325570314
	.quad	0x3fdf8eba5e5712f4              # double 0.4930864259043084
	.quad	0x3fe7ec216cd7e080              # double 0.74757453211260838
	.quad	0x3fd1e0c57e30c7dc              # double 0.27934396098419056
	.quad	0x3fd27ff21e74355e              # double 0.28905919050233375
	.quad	0x3f76ccda7278ae80              # double 0.0055664570896102328
	.quad	0x3fe40b622a202367              # double 0.62638958194393701
	.quad	0x3fe70b1190a43382              # double 0.72010114908481193
	.quad	0x3fe45b4d9a8f9184              # double 0.63614540279063236
	.quad	0x3fd8b578eebec730              # double 0.38607619585956154
	.quad	0x3fdad6ba1067c1e0              # double 0.41935588457184103
	.quad	0x3fe60953dc190860              # double 0.68863862026070066
	.quad	0x3f9b82a0f9624f60              # double 0.026865496846382952
	.quad	0x3fd04dc4f11afcfc              # double 0.25474666161967696
	.quad	0x3fdeba54bee3082e              # double 0.48012274400037114
	.quad	0x3fd269eb88dc2746              # double 0.28771484723312246
	.quad	0x3fe21efcf4ac6dfc              # double 0.56628272807887425
	.quad	0x3feaa001b3d96bcb              # double 0.83203206183258638
	.quad	0x3fcf2328d4e5d814              # double 0.24326048274423384
	.quad	0x3fe9f9a3d42c0dc4              # double 0.81172362747059212
	.quad	0x3fe13c7f15667e4d              # double 0.53863481693037729
	.quad	0x3fe164e93ecd1ca1              # double 0.54356825128424557
	.quad	0x3fe441735cdcaf9a              # double 0.63298957955474866
	.quad	0x3fe5e081c18a173b              # double 0.68365562248866441
	.quad	0x3faf3868905cd560              # double 0.06097723734130045
	.quad	0x3fdead36851f8592              # double 0.4793220806150994
	.quad	0x3fe5d641e16b3c81              # double 0.68240446116568887
	.quad	0x3fe92bdac7f8497a              # double 0.7866033464108988
	.quad	0x3fd832f8bdbac328              # double 0.37811106231952119
	.quad	0x3fe244621e0f6a5a              # double 0.57084756728302044
	.quad	0x3fe94048561c7fc5              # double 0.7890969926702317
	.quad	0x3fe31f882b694088              # double 0.59759911040056668
	.quad	0x3fd58bd2d9ff14ec              # double 0.33665915764534193
	.quad	0x3f933975ff411580              # double 0.018773883537752223
	.quad	0x3fc06f9dfa305bb4              # double 0.12840628353361938
	.quad	0x3fd967d207f51cd0              # double 0.39696169640633361
	.quad	0x3fcd8d720f2756c0              # double 0.23087907543111008
	.quad	0x3fe42c61483bbcdf              # double 0.63041748149944599
	.quad	0x3feccb77628daad5              # double 0.89983720062931616
	.quad	0x3fd67240fb8e01a6              # double 0.35072350088014514
	.quad	0x3fee77dc30967dd7              # double 0.95213136186424208
	.quad	0x3fe2aae3702334a1              # double 0.58336040403232314
	.quad	0x3feaccc171a555d4              # double 0.83749458500340745
	.quad	0x3fe7382abfbf1e80              # double 0.7256063218164428
	.quad	0x3fedc36fa4bba952              # double 0.93010694670128147
	.quad	0x3fa0b8beb2cfe3b0              # double 0.032659491851468103
	.quad	0x3fd9ce09506222d0              # double 0.40320046281753452
	.quad	0x3fe20f7c048f23c7              # double 0.56439019098717658
	.quad	0x3fa9f0e8b6407430              # double 0.050666115043192739
	.quad	0x3fe5dd61ec393e82              # double 0.68327423226760708
	.quad	0x3febf30483091fa0              # double 0.87341523735902981
	.quad	0x3f894572d7e2e580              # double 0.012339493954970804
	.quad	0x3fe5efa00c3d798e              # double 0.6855011214318425
	.quad	0x3febbd37837e1554              # double 0.86684776003009256
	.quad	0x3fdfe7180789c788              # double 0.49847985016014507
	.quad	0x3fe0d590b445794d              # double 0.52606997689489676
	.quad	0x3fbef8cd35474640              # double 0.12098391104452677
	.quad	0x3fe98fa4f7bbbf44              # double 0.79878471742083734
	.quad	0x3fe46ae477d5ae39              # double 0.63804839520657375
	.quad	0x3fc0e6cc7df067b0              # double 0.13204342030877347
	.quad	0x3f9836ca2849da20              # double 0.023646506032003356
	.quad	0x3fd4dfcd1692ba86              # double 0.32615973667535803
	.quad	0x3feb8f158fab3c6a              # double 0.86121633587198443
	.quad	0x3fd342b20b57f27c              # double 0.30094576938407847
	.quad	0x3f8d254463388cc0              # double 0.014231237676602837
	.quad	0x3fe9a48d4fdba805              # double 0.80133691403648355
	.quad	0x3fefcb859e1a6d6d              # double 0.99359398726975955
	.quad	0x3fe3e14cd16643cb              # double 0.6212524499734341
	.quad	0x3fee2d9f286a2c88              # double 0.94306905644897742
	.quad	0x3f9b8c9d5cf2c080              # double 0.026903590009795142
	.quad	0x3fe99a20051ff18b              # double 0.800064096459708
	.quad	0x3fce7e3d4884fd4c              # double 0.23822752037993167
	.quad	0x3fed74d2413d9c47              # double 0.92051041357343244
	.quad	0x3febef12ac6c7334              # double 0.87293370892039101
	.quad	0x3fc199737bf206e0              # double 0.13749545623800596
	.quad	0x3fd84be4ad20ed3c              # double 0.37963215739337719
	.quad	0x3fddb2ffb6b62fee              # double 0.46405022471367274
	.quad	0x3fe1bcdecaa3bf33              # double 0.55430545404485654
	.quad	0x3fed514632625c34              # double 0.91617116776149609
	.quad	0x3fe925181453824b              # double 0.78577808351480749
	.quad	0x3fe9fcf533c5b05d              # double 0.81212864028703857
	.quad	0x3fb4b30fcdd73818              # double 0.080857265237881726
	.quad	0x3fbc44f79fa22560              # double 0.11042735717105279
	.quad	0x3fbb8df01225ebd0              # double 0.10763454859799926
	.quad	0x3fd93fd6469371f6              # double 0.39452130214866032
	.quad	0x3fe0add960976e61              # double 0.52122181764157116
	.quad	0x3fcc347544d71dec              # double 0.22035089360564031
	.quad	0x3fc9138645c379fc              # double 0.19590834051537331
	.quad	0x3fec3e9ec14ed0c4              # double 0.88264405970996806
	.quad	0x3fe353bb43db77fc              # double 0.60397113088015386
	.quad	0x3fd10bbce2fda364              # double 0.26634142081325352
	.quad	0x3fd5b8e39717095e              # double 0.33940973048097145
	.quad	0x3fec343acb2bcc5d              # double 0.88137569124081561
	.quad	0x3fa0d68821a97c10              # double 0.032886747464310528
	.quad	0x3fe30c3a0e72f01d              # double 0.59524252721849147
	.quad	0x3feda01f20612b73              # double 0.92579609226355186
	.quad	0x3feeca56bda98531              # double 0.96219956439396103
	.quad	0x3fde474c00c697fa              # double 0.47310161662824124
	.quad	0x3fe4396c524843c2              # double 0.63200965948828292
	.quad	0x3f5552706ab75400              # double 0.001301393301095688
	.quad	0x3fcd16ab00bae470              # double 0.22725427184721836
	.quad	0x3feb9d75f39f0966              # double 0.86297128278992541
	.quad	0x3fe86385284e984c              # double 0.76214845535720021
	.quad	0x3fec587da67c9682              # double 0.8858021022503666
	.quad	0x3fc4b301fc267104              # double 0.16171288311023357
	.quad	0x3fe14be579cfc58b              # double 0.54051469603852931
	.quad	0x3fde7f1fd77f7d30              # double 0.47650905651785802
	.quad	0x3fadb4a4d2322f90              # double 0.058018828066536021
	.quad	0x3fe9eb81a839db2c              # double 0.80999834877625209
	.quad	0x3fe5fc6880e5af28              # double 0.68706154990420476
	.quad	0x3fdefc6e6f8249cc              # double 0.48415718926949292
	.quad	0x3fd36a38033eb752              # double 0.30335808102505724
	.quad	0x3fdfafa7a81d1990              # double 0.49509612481451715
	.quad	0x3fc1eadf726022f8              # double 0.13998025021307803
	.quad	0x3faa0849e4ddb560              # double 0.05084448736929903
	.quad	0x3fc18efb33fa4584              # double 0.13717594182939419
	.quad	0x3fe2540cb7dc664f              # double 0.57275997076357921
	.quad	0x3fe4f7ce47cdde4c              # double 0.65524972938778481
	.quad	0x3fc1b9bdb0a0b45c              # double 0.1384808647575565
	.quad	0x3fd241bb9976d824              # double 0.28526201235524895
	.quad	0x3fd24d5d54eb907c              # double 0.28597195904718098
	.quad	0x3fe52209ac4ea42d              # double 0.66040500310658035
	.quad	0x3f6c9ffc1e5c5a00              # double 0.0034942554656354208
	.quad	0x3febf8f0f293f3e1              # double 0.87413833025459209
	.quad	0x3fedd452492ec7d8              # double 0.9321681432104425
	.quad	0x3fca3a7f86973b60              # double 0.20491022178472473
	.quad	0x3fc1904967f8d858              # double 0.13721578194389639
	.quad	0x3fe917591b62ee29              # double 0.78410010670581187
	.quad	0x3fe36ca98f8c78db              # double 0.60701444661006165
	.quad	0x3fa489d0fbef8b50              # double 0.040113955263015755
	.quad	0x3fd259772bea53c4              # double 0.28671054161651122
	.quad	0x3fb8460ccb691198              # double 0.094818877850292416
	.quad	0x3fe70de3e8c829f2              # double 0.72044558968747041
	.quad	0x3fd0e4f50b810372              # double 0.26397443889077643
	.quad	0x3fcbdadf2b5f54bc              # double 0.21761693589966125
	.quad	0x3fe158b43555b6fe              # double 0.54207811753232682
	.quad	0x3fed7e8db0ee6992              # double 0.92169842297453131
	.quad	0x3fd2173eef8f7f54              # double 0.28266881365379004
	.quad	0x3feae6afa0decbca              # double 0.84065991802196405
	.quad	0x3fe25dca8287a1d3              # double 0.57394910329918003
	.quad	0x3fef9bc596b6ed73              # double 0.98776511608541139
	.quad	0x3fa8eda9d8547fb0              # double 0.048688228280524881
	.quad	0x3fe34af72e1d8d0d              # double 0.60290106779976471
	.quad	0x3feeea7cbe0f0415              # double 0.96612393494445092
	.quad	0x3fe57e6289b289ff              # double 0.67167784589793189
	.quad	0x3fe00e5e3a6375eb              # double 0.50175391582496098
	.quad	0x3fc9b617fa151310              # double 0.20086955748606572
	.quad	0x3fb96a15692381d8              # double 0.099274957817676479
	.quad	0x3fe5cb9478c03bb9              # double 0.68110107025301325
	.quad	0x3fe85c3ea6149ea4              # double 0.76126034200293135
	.quad	0x3fc02c4498eee2b4              # double 0.12635095088423542
	.quad	0x3feabdf8ec9972fe              # double 0.83568998537847938
	.quad	0x3fe114f9dded4eac              # double 0.5338105520736085
	.quad	0x3feaf46b119ca700              # double 0.84233621063069108
	.quad	0x3fd58b44fb6a5952              # double 0.33662533333099021
	.quad	0x3fe1b06aa17c7027              # double 0.55278522053004486
	.quad	0x3fe81a630b5eb7c6              # double 0.75322105618192192
	.quad	0x3fe6116bf2634190              # double 0.68962666837073705
	.quad	0x3fe3f3ba1813d8ab              # double 0.62350182249681063
	.quad	0x3fede67f314752da              # double 0.93438682198265188
	.quad	0x3fe4272186a6c95c              # double 0.62977672862170264
	.quad	0x3fc76acdb15d1ea4              # double 0.18294688377703949
	.quad	0x3fe3a4325ddc1835              # double 0.61379354793530772
	.quad	0x3fef986721c43839              # double 0.98735386462227048
	.quad	0x3fd2805e87bef182              # double 0.28908503776963113
	.quad	0x3fd2c7a8a61b0110              # double 0.29343620511282698
	.quad	0x3fc2fb3284833108              # double 0.14829093427977846
	.quad	0x3fd28ebd0ba9d0bc              # double 0.28996206416128323
	.quad	0x3fc4d1a8809b6048              # double 0.16264826087604178
	.quad	0x3fd9a10e5ac1aad0              # double 0.40045508253994644
	.quad	0x3fe8382a0359d7b3              # double 0.75685597090227075
	.quad	0x3fd8d7fff6d43c1a              # double 0.38818358520887986
	.quad	0x3fd63b73618e3020              # double 0.34737858321091331
	.quad	0x3fb0854d7ebe2bb0              # double 0.064534038012580508
	.quad	0x3fb62791edd96598              # double 0.086541290825513761
	.quad	0x3fd2e792fefc6f6a              # double 0.29538416768058673
	.quad	0x3fda456bced3b768              # double 0.41048712919188413
	.quad	0x3fc595bd01110260              # double 0.16863215019295108
	.quad	0x3fb829d31d24cab8              # double 0.094388193717160784
	.quad	0x3fd30eb5dd1023aa              # double 0.29777285183132085
	.quad	0x3feef78350cb50c5              # double 0.96771398334615155
	.quad	0x3fc514924adbfeb4              # double 0.16469029097787813
	.quad	0x3fc109c0efec988c              # double 0.13311015811013183
	.quad	0x3fec74f33e146904              # double 0.88927614331194648
	.quad	0x3fea3a0cf0144476              # double 0.81958624735319918
	.quad	0x3fe659fab88f77e4              # double 0.69848381087262768
	.quad	0x3fe5511322ce2211              # double 0.66614682004825643
	.quad	0x3fc9c16a1215a5f8              # double 0.20121503718409861
	.quad	0x3fe6b3872c3467e8              # double 0.70941504129154698
	.quad	0x3fd8d64c22a95782              # double 0.38807967553054123
	.quad	0x3fe0946857174222              # double 0.51811615953380774
	.quad	0x3fd1e09a47aaacec              # double 0.2793336582059982
	.quad	0x3fdb3511e8977902              # double 0.42511413301498646
	.quad	0x3fe8bffddc3502c0              # double 0.77343647965616213
	.quad	0x3fd79e50920bb34e              # double 0.36903776418948986
	.quad	0x3fe6ae0597f36149              # double 0.70874290159103126
	.quad	0x3fe472a1ed1e7eb2              # double 0.6389932280762507
	.quad	0x3fe381dd47c7f482              # double 0.60960258502713338
	.quad	0x3fce2d8613e1c210              # double 0.23576427431864078
	.quad	0x3fdccda91e75b9ee              # double 0.45005252813908114
	.quad	0x3fdfea9b0dcbf0d2              # double 0.49869419429138617
	.quad	0x3fbf68261c85cfa8              # double 0.12268293567996003
	.quad	0x3fc5fdd7505d6c04              # double 0.17180911468571491
	.quad	0x3fee698f2b6d9762              # double 0.9503856514172464
	.quad	0x3fee3b02ab6617fb              # double 0.94470342136696617
	.quad	0x3fb05ee4970c3d70              # double 0.063947951199443187
	.quad	0x3fd231b1d0cd212c              # double 0.28428311720610355
	.quad	0x3fe0128d05382f3e              # double 0.50226450938632872
	.quad	0x3fdaa585ab172e2e              # double 0.41635266979276053
	.quad	0x3fe66659e1b113bc              # double 0.69999403076564404
	.quad	0x3fc99b648aaace94              # double 0.20005471011028375
	.quad	0x3feef7ad2548186a              # double 0.9677339294583025
	.quad	0x3fe71052b947d50a              # double 0.72074257075897319
	.quad	0x3feecac4d2b855e3              # double 0.96225205570470639
	.quad	0x3fedce80c5dc51a8              # double 0.93145788807537588
	.quad	0x3fb08e4cc07aeee0              # double 0.064671322815168519
	.quad	0x3fe7a2cfe08b5b96              # double 0.73862451416322261
	.quad	0x3fef3fc5ad799443              # double 0.97653468972988155
	.quad	0x3fecce5e74b5e6cf              # double 0.90019152445821671
	.quad	0x3fe2856de65233de              # double 0.57878775581923114
	.quad	0x3fc51bd10cf8d85c              # double 0.16491139539147326
	.quad	0x3fe7d8ad125cdc20              # double 0.74519971453162625
	.quad	0x3feb40b257f9ed1d              # double 0.85164754088274075
	.quad	0x3fe75fe7727e993f              # double 0.73045704233371811
	.quad	0x3fc6e02826338850              # double 0.17871572366044797
	.quad	0x3fe25f20304c1dca              # double 0.5741120284373491
	.quad	0x3fb732e513256118              # double 0.090620343374557044
	.quad	0x3fd5714bce59009a              # double 0.33504004622592165
	.quad	0x3fe7358c70e2fd8b              # double 0.7252866940324777
	.quad	0x3fe112088743a2e8              # double 0.53345133227148001
	.quad	0x3fc84a1e551f6838              # double 0.18976191669827513
	.quad	0x3fd71c18dc3d897a              # double 0.36108991153573522
	.quad	0x3fbb624dfc11d658              # double 0.10696875957531782
	.quad	0x3fef13d6d05be63a              # double 0.97117176718820208
	.quad	0x3fe2af64006e5971              # double 0.58390998920621773
	.quad	0x3fc4032239bcfb4c              # double 0.15634563273666868
	.quad	0x3fe01916dbee15aa              # double 0.50306265788156179
	.quad	0x3fe7c41e4fcfa08e              # double 0.74269023502439935
	.quad	0x3fe8fc57d39e8c86              # double 0.78080359775448538
	.quad	0x3fd1bd5d5ad094fa              # double 0.27718290203695484
	.quad	0x3fc900f6b207e768              # double 0.1953419083873158
	.quad	0x3fe0ca9af5973f89              # double 0.52473209349590022
	.quad	0x3fd2374bf8baacc2              # double 0.28462504663430022
	.quad	0x3fe443bb59888b0c              # double 0.63326804625498445
	.quad	0x3fdd0737cfce8dba              # double 0.45356555265081122
	.quad	0x3f9896e5aa80d840              # double 0.024013126880355395
	.quad	0x3fecada3a94e9f88              # double 0.89619620387837617
	.quad	0x3feb0c6542fe9358              # double 0.84526312908983936
	.quad	0x3fef130ea75037c5              # double 0.97107632330311643
	.quad	0x3fb5e570f49a8660              # double 0.085532245366743975
	.quad	0x3fd4c8fff3774b06              # double 0.32476805473304216
	.quad	0x3fcc995044eab5f8              # double 0.22342875828819309
	.quad	0x3fe13485f0ec7298              # double 0.53766152434725978
	.quad	0x3fea6d48240407c5              # double 0.82584006342244065
	.quad	0x3fcc7507fcce5240              # double 0.2223215088275925
	.quad	0x3fb7b74d3ba69750              # double 0.092640711844606871
	.quad	0x3fdfa087813428c4              # double 0.49417293183854505
	.quad	0x3fcce45a77e8a9b8              # double 0.22571879248546423
	.quad	0x3fbcaa4596f53078              # double 0.11197314200870945
	.quad	0x3fde433db1154c92              # double 0.47285406392365659
	.quad	0x3fd8f4d89a9b784e              # double 0.38994422052735878
	.quad	0x3fef4418c7025665              # double 0.97706259602518896
	.quad	0x3fe4015b3aaa1dd3              # double 0.62516557176507559
	.quad	0x3fd71346c60d4788              # double 0.36055154171946713
	.quad	0x3fa7aa6a7915a6c0              # double 0.046222045212585439
	.quad	0x3fd0a468413bace8              # double 0.26003462191029181
	.quad	0x3fefddaa18414694              # double 0.9958086465578213
	.quad	0x3fd75df14c5678f2              # double 0.36510879950391406
	.quad	0x3fd24aeb16fcd9f2              # double 0.28582265133755336
	.quad	0x3fd5b3f64f634fa0              # double 0.33910901787498382
	.quad	0x3fee2420d0d517e2              # double 0.9419101790197113
	.quad	0x3fe606cdf4b8f2a1              # double 0.68833062932352018
	.quad	0x3fcc0d961aa995f0              # double 0.21916462232472567
	.quad	0x3feb939807c148ec              # double 0.8617668296303953
	.quad	0x3f92d7c7a590ad20              # double 0.018401259880346577
	.quad	0x3fe20c38bc6d69d9              # double 0.56399189760423518
	.quad	0x3fd3fb68fdefa6d0              # double 0.31221985624743542
	.quad	0x3fe75d01a44d23f7              # double 0.7301033219347336
	.quad	0x3fef066a1c4b1025              # double 0.96953301931398938
	.quad	0x3fdf37315ce6b2d0              # double 0.48774370262507905
	.quad	0x3fc23876058f78b4              # double 0.14234805366044656
	.quad	0x3fe07552c4c8bc44              # double 0.51432169374846426
	.quad	0x3fde521a2b03c1d6              # double 0.47376112175609586
	.quad	0x3fec19e486c48538              # double 0.87816072770889431
	.quad	0x3fecbfc72fc46017              # double 0.89841040925512317
	.quad	0x3fdbb92f681209aa              # double 0.43317780650263649
	.quad	0x3fe5832c60b0c6c7              # double 0.6722623718726134
	.quad	0x3fe775f53f0a13da              # double 0.73314916908622796
	.quad	0x3feaac6b5f1ce80b              # double 0.83354729248753878
	.quad	0x3fdf765e13cc9ca0              # double 0.49159957822343792
	.quad	0x3fe6fcf80612fb77              # double 0.71837998567921957
	.quad	0x3fd9aae98a569f2e              # double 0.40105665692907422
	.quad	0x3fdfb4be5bc5af02              # double 0.49540671312455242
	.quad	0x3fe167aca4c774f1              # double 0.54390556510375465
	.quad	0x3fd3d0a14dbb68c0              # double 0.30960877028486422
	.quad	0x3fe4bb06ea2a768a              # double 0.64783044562837344
	.quad	0x3fe535893dae7392              # double 0.66278516814382926
	.quad	0x3fe66da26ab3fd07              # double 0.70088311043210261
	.quad	0x3fe7646ed16763b8              # double 0.73100987338249634
	.quad	0x3fbe54ca1fa7d3e0              # double 0.11848128578988293
	.quad	0x3fc2f20e3c0fc8e4              # double 0.1480119508046932
	.quad	0x3fe5d5ebc5a29ff5              # double 0.68236340141902352
	.quad	0x3fe30c50c6e9d641              # double 0.59525336122778338
	.quad	0x3fea4eef2af79c51              # double 0.82213552848851112
	.quad	0x3fd7961ca5ee0860              # double 0.36853710369189763
	.quad	0x3fb7e54f31db28f0              # double 0.093342733070276073
	.quad	0x3fd1def4a0183e16              # double 0.27923312792060651
	.quad	0x3fc17cb64f6ee868              # double 0.13661841276718012
	.quad	0x3feabbd6aac5b0c3              # double 0.83542950967741836
	.quad	0x3fd050d999b9d474              # double 0.25493469250006418
	.quad	0x3fdb55fc6209fcd4              # double 0.42712316106913062
	.quad	0x3fdd0f77f38cf776              # double 0.45406912597888238
	.quad	0x3feec23a60d9c09e              # double 0.96120947757846742
	.quad	0x3fbc96c7edacdac8              # double 0.1116757350217582
	.quad	0x3fc48144606e657c              # double 0.16019491871410796
	.quad	0x3fb54c08f9decf48              # double 0.083191452983382708
	.quad	0x3fe56dd3c7c9aeda              # double 0.66965664883670262
	.quad	0x3fe6df31e0abc46c              # double 0.71474546319053678
	.quad	0x3f9030e57df4af00              # double 0.015811525166255613
	.quad	0x3fd4cb99628316d4              # double 0.32492670650786448
	.quad	0x3fdc595284dc2e96              # double 0.44295180296533354
	.quad	0x3fbaeac658fe4ca0              # double 0.10514487908067105
	.quad	0x3fc0ae3b9174173c              # double 0.13031715967388802
	.quad	0x3fe950d0726823cd              # double 0.79111502022817037
	.quad	0x3fefe6ad9b61055b              # double 0.99690895411928737
	.quad	0x3fe74b337d36846c              # double 0.72792982535987738
	.quad	0x3fe7df1aa1afc068              # double 0.7459843786182434
	.quad	0x3fdf6f04b6bc7444              # double 0.49115102620436724
	.quad	0x3fcdd337493bbb54              # double 0.23300829959722569
	.quad	0x3fdba1e99f35327e              # double 0.43175735995900044
	.quad	0x3fe1fc07f2a16bfc              # double 0.56201550854473181
	.quad	0x3fdf053c51e8c9c2              # double 0.48469455718000287
	.quad	0x3fe403e3624ec10c              # double 0.62547463608464815
	.quad	0x3fe6431529ff79cb              # double 0.69568880274510414
	.quad	0x3fc2fd998df2336c              # double 0.14836425238572859
	.quad	0x3fdf933016fb0982              # double 0.49335863346291131
	.quad	0x3fe3dd0fb1f4da45              # double 0.62073502308960171
	.quad	0x3fdde7b01eeddc32              # double 0.46726611156867925
	.quad	0x3fd3aa8a2663c542              # double 0.30728391407963696
	.quad	0x3fdac7390e783e74              # double 0.4184095994287198
	.quad	0x3fd95effdae8ad74              # double 0.39642330529996817
	.quad	0x3feb4f0e2901d1b1              # double 0.85340030678940171
	.quad	0x3fe885699b7597ae              # double 0.7662857090297075
	.quad	0x3fef97127c48b299              # double 0.98719143175329115
	.quad	0x3fe58f8685b93e85              # double 0.67377019994633314
	.quad	0x3fe52b24fcbef2a0              # double 0.66151666035110068
	.quad	0x3fde30ba73ac0b2e              # double 0.4717241410837002
	.quad	0x3fb5291dee167530              # double 0.082658644320379393
	.quad	0x3fd3d1ce20df0062              # double 0.30968049249714202
	.quad	0x3fe124a2e33acec2              # double 0.53572220211795973
	.quad	0x3fe1176e3bdff42f              # double 0.53411018080044481
	.quad	0x3fe004c5ee1f4af7              # double 0.50058266170739685
	.quad	0x3fe779559cd9f859              # double 0.73356133112953181
	.quad	0x3fee973989edcc46              # double 0.95596005381811078
	.quad	0x3fe9e00bce641377              # double 0.80859937964178996
	.quad	0x3fe0ed365ff1b2b7              # double 0.52895659197891731
	.quad	0x3feb8787233092eb              # double 0.86029393074985927
	.quad	0x3fc8c6685a535200              # double 0.1935549202959379
	.quad	0x3fe375b8ff2ee505              # double 0.60812043991532561
	.quad	0x3fdb67a0ee38e298              # double 0.42819998992812591
	.quad	0x3fd36f3be84d35e0              # double 0.30366418538764428
	.quad	0x3f83b228eb712540              # double 0.0096171566821278142
	.quad	0x3fd7cdf3aa5b1880              # double 0.3719453014022136
	.quad	0x3fe031ac4449e31e              # double 0.50606358850118105
	.quad	0x3fe201b4d7b6a436              # double 0.56270830279857509
	.quad	0x3fbc9e17b2080dc0              # double 0.11178730102988421
	.quad	0x3fe86d8f4b8f7bbe              # double 0.76337399251848814
	.quad	0x3fc6b3588e4845dc              # double 0.17734820315722188
	.quad	0x3fa81e6b934d8330              # double 0.047107087832733874
	.quad	0x3fe98af6f942af20              # double 0.79821346934975068
	.quad	0x3feb20cc53b4dda2              # double 0.84775368069579238
	.quad	0x3fe3fd77a4d3074e              # double 0.62469083969356531
	.quad	0x3fec3875eb8e0244              # double 0.8818921662023702
	.quad	0x3fa40e2e0250e650              # double 0.039170682699886883
	.quad	0x3f9c796232a5f840              # double 0.027806791631057814
	.quad	0x3fe264f85a979ec7              # double 0.57482545560648013
	.quad	0x3fd83d3e7b98fd24              # double 0.3787380415924011
	.quad	0x3fcc9fe4d752caec              # double 0.22362957490766833
	.quad	0x3fe45ea16dc62365              # double 0.63655158462743755
	.quad	0x3fe7c566a873c66a              # double 0.74284680271939618
	.quad	0x3fde4df518d7dbd0              # double 0.47350814272016084
	.quad	0x3feca3d1634549ca              # double 0.89499730480957251
	.quad	0x3fc7f1d7d37d8920              # double 0.18706796480825805
	.quad	0x3fef79c6575d818d              # double 0.98361508430029831
	.quad	0x3fef7db3685778ec              # double 0.98409433726535899
	.quad	0x3fd26c695c6f3554              # double 0.28786691691205601
	.quad	0x3fd86df85bb4a89e              # double 0.38171204524645386
	.quad	0x3fe938a46274d56f              # double 0.78816432218324717
	.quad	0x3feabfeebfc5db6f              # double 0.83592927413597617
	.quad	0x3fbde9b8243f8420              # double 0.11684752354587191
	.quad	0x3fc357f885f2950c              # double 0.15112215557488928
	.quad	0x3fe6cc1dff059a3e              # double 0.71241664704286456
	.quad	0x3fc479512d4b5a20              # double 0.15995230399740112
	.quad	0x3fe5ade7c122417f              # double 0.67747867318580279
	.quad	0x3fe23e3be0ceeeb2              # double 0.57009691150547881
	.quad	0x3fe7cad67cd4e01b              # double 0.74351047879372645
	.quad	0x3fc487e291a0c8b0              # double 0.16039688215966441
	.quad	0x3fda7c8938da4524              # double 0.41385107566846302
	.quad	0x3fec56f557d9d86a              # double 0.88561503561392141
	.quad	0x3fe6b09c0ba07be2              # double 0.70905878325345051
	.quad	0x3fe108056af68dfa              # double 0.53222914592009762
	.quad	0x3fe5bd64a0109bbc              # double 0.67936927092238575
	.quad	0x3fd99a25d81f0016              # double 0.40003343682838144
	.quad	0x3fe63f6afe6d6047              # double 0.69524144833395318
	.quad	0x3fef7f9b3d886881              # double 0.984326954060876
	.quad	0x3fec93ae5935170f              # double 0.89302747176472674
	.quad	0x3fd30a47713c41d0              # double 0.29750238474028112
	.quad	0x3fc311a682f81c18              # double 0.14897614855746677
	.quad	0x3fe416eec279167f              # double 0.62779939635284154
	.quad	0x3febd02dd282cbdc              # double 0.869162474779269
	.quad	0x3fe1e5e9d03cf325              # double 0.55931559249402041
	.quad	0x3fbcce4173f38058              # double 0.1125222118457726
	.quad	0x3fe6367451d29846              # double 0.69414726239188762
	.quad	0x3fe9abf369d87587              # double 0.8022400920196312
	.quad	0x3fe638d8044a203d              # double 0.6944389423160896
	.quad	0x3fdcb6e530bd88ce              # double 0.44866304168511995
	.quad	0x3fd99f7d83449c16              # double 0.40035951441899564
	.quad	0x3fe6386b9d2f98be              # double 0.69438725185752737
	.quad	0x3fd69c95fcb57e14              # double 0.35330724409684078
	.quad	0x3fdff6ce58a9e94c              # double 0.49943884523931525
	.quad	0x3fb5e2afd016d5f0              # double 0.085490215590503515
	.quad	0x3fd83d9f130cae54              # double 0.37876107082658916
	.quad	0x3fd4af859f5304c4              # double 0.32321301039707984
	.quad	0x3fd067df987170ee              # double 0.25633993041061742
	.quad	0x3fe2e1e4f608b3a2              # double 0.59007499745859016
	.quad	0x3fd4360001a3aa64              # double 0.31579589996423452
	.quad	0x3feba5c307094c9a              # double 0.86398459791452642
	.quad	0x3feab1b25eaf30f3              # double 0.83419149868998799
	.quad	0x3fe1d2efe4bcc56e              # double 0.55699915576239589
	.quad	0x3fed49013dfad22c              # double 0.91516172509597515
	.quad	0x3fadece44d86c230              # double 0.058447966064140267
	.quad	0x3fe61301c7761bf2              # double 0.68982018430040015
	.quad	0x3fe987b54cfacc01              # double 0.79781594309895365
	.quad	0x3fd4d0b042106342              # double 0.32523733569683
	.quad	0x3fae01a1f68fb8c0              # double 0.058606206271961891
	.quad	0x3f919ef2b2efa520              # double 0.017207901164430273
	.quad	0x3fee5194b663432b              # double 0.94745860693556005
	.quad	0x3fd0273db56cb0a0              # double 0.2523950835918729
	.quad	0x3fe20e49869434a1              # double 0.56424404416033636
	.quad	0x3fe398a60146ca8d              # double 0.61238384484598074
	.quad	0x3fec85fdc4a725bd              # double 0.89135635765813215
	.quad	0x3fdc2c6ab5e42202              # double 0.44021098864371322
	.quad	0x3fbdb3d002b82b00              # double 0.11602497164146186
	.quad	0x3fe4fc7c6477241f              # double 0.65582103368899769
	.quad	0x3fe51979635c24b4              # double 0.65935964018094362
	.quad	0x3fc4cdf62be067c8              # double 0.16253544943248088
	.quad	0x3fe2ec7b0c182894              # double 0.59136726724797706
	.quad	0x3fe5fcafdc1b3e72              # double 0.68709557523284404
	.quad	0x3fd4d84568ff90a4              # double 0.32570014241924583
	.quad	0x3fe0bb0125e16341              # double 0.52282769583244015
	.quad	0x3fb20880d3d0c3f8              # double 0.07044224902416818
	.quad	0x3fd69f606a91821e              # double 0.35347757727689266
	.quad	0x3fc8ac34853a3fdc              # double 0.19275528435946299
	.quad	0x3fd689722bd8acd6              # double 0.35213903695939786
	.quad	0x3ec65e22f9fc0000              # double 2.6664401530096526E-6
	.quad	0x3fc7f040ea2ff374              # double 0.18701945719649482
	.quad	0x3fd5d3c6a00a6d86              # double 0.34105077389696026
	.quad	0x3fd04f424654ba8e              # double 0.25483757847079225
	.quad	0x3fd1695de28bc3e0              # double 0.27205607532147091
	.quad	0x3febe096cad63a38              # double 0.87116565338676022
	.quad	0x3fe83f1baa1c72f8              # double 0.75770362114744128
	.quad	0x3feffb4fd7bd48e5              # double 0.9994277204189329
	.quad	0x3fea6e04fab9cf1a              # double 0.82593010873685846
	.quad	0x3fe83db913d6a161              # double 0.75753454088866701
	.quad	0x3fe5f9b7c682f860              # double 0.68673313876912445
	.quad	0x3fe4987a9962543a              # double 0.64361314733344632
	.quad	0x3fcd85723da6294c              # double 0.23063495645721799
	.quad	0x3fe56d1fff04a081              # double 0.66957092102258298
	.quad	0x3fe5dc4545394a16              # double 0.68313849945326655
	.quad	0x3fe6c917514d3571              # double 0.71204725150316339
	.quad	0x3fb23b344cad7800              # double 0.071215885849113647
	.quad	0x3feee13429dace1a              # double 0.9649906938051942
	.quad	0x3fb625cd5e7c0b08              # double 0.086514316146388492
	.quad	0x3fbd0422a8f5f1d0              # double 0.11334435105340579
	.quad	0x3fd87268a4a001f6              # double 0.38198295666373328
	.quad	0x3feaa6e54f376e2b              # double 0.83287301513650414
	.quad	0x3fe5fd93e4838c0f              # double 0.68720430976498104
	.quad	0x3f94ec2ae1b04c20              # double 0.020432157540266727
	.quad	0x3fe30a320edc7d09              # double 0.59499457266420663
	.quad	0x3fd36b672579b5ac              # double 0.30343035373410987
	.quad	0x3fe8a560202506f6              # double 0.77018743780374055
	.quad	0x3fc1890f2eae6850              # double 0.13699521808013282
	.quad	0x3fee568cf358448c              # double 0.94806525734215219
	.quad	0x3fe6fd516beba0ff              # double 0.71842261388977124
	.quad	0x3fe5c26d3f58862e              # double 0.67998373386598643
	.quad	0x3fe4bbd0446ecacd              # double 0.64792645803239568
	.quad	0x3fbfb3b15c39b280              # double 0.12383564473720732
	.quad	0x3fb900a53af79dc0              # double 0.097666098495770903
	.quad	0x3f8321c63e81b080              # double 0.0093417632890224755
	.quad	0x3fe27c292e916a49              # double 0.57765635581319785
	.quad	0x3fb6ec1aa87a55b0              # double 0.08954016316632507
	.quad	0x3fac99dcbfd9d4c0              # double 0.055861376208591107
	.quad	0x3fdcd39add3b4c06              # double 0.45041534046794174
	.quad	0x3febd3c841e80a51              # double 0.8696023261293907
	.quad	0x3fe2fddf6317bf8e              # double 0.59349030832344041
	.quad	0x3fdee26321eb3ff2              # double 0.48256758034130975
	.quad	0x3fd5ba714410fc62              # double 0.33950454375366779
	.quad	0x3fae00433acb9ef0              # double 0.058595753600284683
	.quad	0x3fe2808d6567dbe4              # double 0.57819242292214001
	.quad	0x3fd6880f45e1aec4              # double 0.35205442261097297
	.quad	0x3f99ce2e1433cda0              # double 0.025200576766065574
	.quad	0x3fddf6ea95dafcf2              # double 0.46819557794874733
	.quad	0x3fc948f15f9c780c              # double 0.19753853958621936
	.quad	0x3fe3607c4df8d0e2              # double 0.60552802304166797
	.quad	0x3fb4abede4088c88              # double 0.080748432323661246
	.quad	0x3fa07acb7ffbd310              # double 0.032186850903519582
	.quad	0x3fc81f0fd59a67a4              # double 0.18844793252793324
	.quad	0x3fb6ef27cfcbc658              # double 0.08958672354835906
	.quad	0x3fe6f1c57ee5c533              # double 0.71701311859775385
	.quad	0x3f7ed94e7673b280              # double 0.0075314583730060613
	.quad	0x3fc3f921c363db3c              # double 0.15604040184526891
	.quad	0x3fcbc20ee425d1e0              # double 0.21685968532587108
	.quad	0x3fe9dbfa5c7502a8              # double 0.80810277994176705
	.quad	0x3fe032bb9ccf1c5d              # double 0.50619297625315662
	.quad	0x3fec4d7310899114              # double 0.8844542811389453
	.quad	0x3fc5f305be787ea8              # double 0.17147895622564602
	.quad	0x3fe5c5bc1a88740b              # double 0.68038754636984444
	.quad	0x3feeecb0a2c0ef77              # double 0.96639282024214778
	.quad	0x3fe354aa48c67109              # double 0.60408510412119754
	.quad	0x3fce778a6bbf4024              # double 0.23802309285247347
	.quad	0x3fcc4647e582e770              # double 0.22089480120285598
	.quad	0x3fdad31dd35b9416              # double 0.41913552894976769
	.quad	0x3fb88573dde57b88              # double 0.095786325143747075
	.quad	0x3fe63504a160caa8              # double 0.69397193450125361
	.quad	0x3f90b68555706a20              # double 0.016321261729993819
	.quad	0x3fd3530ddd775f9a              # double 0.30194422366684537
	.quad	0x3fe5ea292e32ce59              # double 0.68483408949982583
	.quad	0x3fdf6655524af9b0              # double 0.49062092815793346
	.quad	0x3fc52c1b60033148              # double 0.16540853679760859
	.quad	0x3fd1b4fdbe9fbdba              # double 0.27667182555793668
	.quad	0x3fe6050dbebc575e              # double 0.68811690571849815
	.quad	0x3f9af1478bd9d820              # double 0.0263110331638573
	.quad	0x3fe0317d98fccc4a              # double 0.50604133491868564
	.quad	0x3fdb84772a4074b0              # double 0.42996005178595009
	.quad	0x3fe5a6a19d315240              # double 0.67659073545161874
	.quad	0x3feed1bf558921ef              # double 0.96310393053232512
	.quad	0x3fd82ae05643c2be              # double 0.3776169626644722
	.quad	0x3fe557ecf9792dc1              # double 0.66698311543716937
	.quad	0x3fb34e7e05cf92c0              # double 0.075416447085056681
	.quad	0x3fb746edcddbcdc0              # double 0.090926039465379027
	.quad	0x3fe3d4567adc6933              # double 0.61967014309201429
	.quad	0x3fe2d2ee36c1de62              # double 0.58824835486207072
	.quad	0x3fb4909e071e59e0              # double 0.080331684816293158
	.quad	0x3fed0b609d9f4407              # double 0.90763884339878664
	.quad	0x3feb31495e863a5e              # double 0.84976643049033007
	.quad	0x3fc14c27343d78ec              # double 0.13513650942599698
	.quad	0x3fe902382190048c              # double 0.78152090602101642
	.quad	0x3fe4d388b2fac9ed              # double 0.65082201916658067
	.quad	0x3fdf685f55bba43c              # double 0.49074538586006944
	.quad	0x3fec4d07b5b76e67              # double 0.8844030903960175
	.quad	0x3fe32b30cbdf1d61              # double 0.59902229136143259
	.quad	0x3fcc8602711ac304              # double 0.22283964655573396
	.quad	0x3fc5c298f2808bbc              # double 0.17000114289211676
	.quad	0x3fdd0a388edd26d6              # double 0.45374883605528049
	.quad	0x3fe02c1959db291f              # double 0.50538318204897681
	.quad	0x3fe58269b1393d75              # double 0.67216953863127904
	.quad	0x3feb41dd4dda9cde              # double 0.85179009633875657
	.quad	0x3fdf639a35c77462              # double 0.49045424701563978
	.quad	0x3fde52bb61555494              # double 0.47379955773551186
	.quad	0x3f79a5b0cfd4a800              # double 0.0062615305626341211
	.quad	0x3fee2f9c4c97c5c8              # double 0.94331183394950191
	.quad	0x3fce32b3cc05fa18              # double 0.23592231237485417
	.quad	0x3feec346ecdc72dd              # double 0.96133753072680472
	.quad	0x3fc8805caa8e8d08              # double 0.1914172966763561
	.quad	0x3fedb3b34a1183d3              # double 0.92818607775199735
	.quad	0x3fe208674c1b7056              # double 0.5635258184879699
	.quad	0x3fdf03ba153edcb4              # double 0.48460247111092802
	.quad	0x3fd5d494ac470238              # double 0.34109989952051789
	.quad	0x3fed54d49e0e141b              # double 0.91660529012790748
	.quad	0x3fe30b6e4b7ab857              # double 0.59514536611619462
	.quad	0x3fd4f9d5e049bdda              # double 0.32774874594812575
	.quad	0x3f9b564ed5dff840              # double 0.026696426204573465
	.quad	0x3fe901b28d5340d1              # double 0.78145721056537287
	.quad	0x3fa2fbe9c2aacce0              # double 0.037078194630703498
	.quad	0x3fee425933e4c432              # double 0.94559917579147723
	.quad	0x3fd30f740e5121f2              # double 0.2978181972326005
	.quad	0x3fe07436a46f85a8              # double 0.51418621174177748
	.quad	0x3fb7cd6f1e7da840              # double 0.09297842497258646
	.quad	0x3fb0e389770bfef0              # double 0.065971938671278485
	.quad	0x3fd825dcc88948ac              # double 0.37731093963260309
	.quad	0x3fefba71ac5744cb              # double 0.99150928173380614
	.quad	0x3fe20573d10c16e6              # double 0.56316557721649185
	.quad	0x3fd87e436a471f64              # double 0.3827065027112353
	.quad	0x3fd3b729e7c3831a              # double 0.30805442460227683
	.quad	0x3fd93471951bd456              # double 0.393825908292745
	.quad	0x3fcca57f1ebe4eb0              # double 0.22380055428640366
	.quad	0x3fea42fb3f66cdb9              # double 0.82067644484634805
	.quad	0x3fea3c775d750941              # double 0.8198811364493751
	.quad	0x3fb250edb46f48e0              # double 0.071547371436540441
	.quad	0x3fea10c8105478fd              # double 0.81454852284858215
	.quad	0x3fe7c51178d8bdef              # double 0.74280618288861244
	.quad	0x3fe4b33eef761999              # double 0.64688059587278979
	.quad	0x3fd9e2fb54cfc714              # double 0.40447886736284144
	.quad	0x3fe813c8b149975c              # double 0.75241503359277883
	.quad	0x3f867b713d7163c0              # double 0.010977635085667958
	.quad	0x3feb5c9b044e6dfc              # double 0.85505438653075271
	.quad	0x3fb5a26a3b141c78              # double 0.084509505675770202
	.quad	0x3fd7ff7e5496b890              # double 0.37496908436413268
	.quad	0x3fd50893d7237722              # double 0.32864852914450371
	.quad	0x3fdab3300e45ebf0              # double 0.41718675035343633
	.quad	0x3fe242443837a5fb              # double 0.57058917026478129
	.quad	0x3fe439c1ff5e2d7c              # double 0.63205051304377902
	.quad	0x3fef22385064bb50              # double 0.97292724325039082
	.quad	0x3fc0ef9e27a0847c              # double 0.13231255469239389
	.quad	0x3fe2ac957d6593d0              # double 0.58356737605628872
	.quad	0x3f80f149a4bddd40              # double 0.0082727197075046499
	.quad	0x3feb756e3271f542              # double 0.85808477261131366
	.quad	0x3fcc12a2aea44914              # double 0.21931870963505473
	.quad	0x3fc1874834f5d5e8              # double 0.1369409807772819
	.quad	0x3fe0ed11ab43ede7              # double 0.52893908930076072
	.quad	0x3fedd13f7fc9f4f7              # double 0.93179297407883055
	.quad	0x3fb35d095104bee8              # double 0.075638372688213829
	.quad	0x3fea4c0d898b0b32              # double 0.82178379882711838
	.quad	0x3fefbacd6b4adb09              # double 0.99155302959010882
	.quad	0x3fe13390b2777249              # double 0.53754458290820495
	.quad	0x3fc0d048b4f7f5f8              # double 0.13135632358891747
	.quad	0x3fd55e93e46c529a              # double 0.33389756495425049
	.quad	0x3fd32697b4e7bafc              # double 0.29923050562403808
	.quad	0x3fe9d788eb583337              # double 0.80756040540436558
	.quad	0x3fef47ca92d7be8a              # double 0.97751358680939515
	.quad	0x3fd1cfddbe024ba0              # double 0.27831214480937128
	.quad	0x3fe6b59c845acf8a              # double 0.70966935968907419
	.quad	0x3fccd936936af6c8              # double 0.22537882040153634
	.quad	0x3fee158d40a9d98e              # double 0.9401308310469163
	.quad	0x3fe919ad3cc479b7              # double 0.78438436382912513
	.quad	0x3fc66b6980b9ea20              # double 0.17515295777759921
	.quad	0x3fc7be243ae10988              # double 0.18549015879586883
	.quad	0x3fc7253000e82354              # double 0.18082237285878
	.quad	0x3fe66e0badf30f99              # double 0.70093330358985206
	.quad	0x3fdbc2753941c760              # double 0.43374376861094355
	.quad	0x3fee60cc6ea59bf8              # double 0.94931623087620575
	.quad	0x3fee6acbd4a84f84              # double 0.95053664717350772
	.quad	0x3fe44df3b757461d              # double 0.63451562699100672
	.quad	0x3fd03a48965b86a0              # double 0.25355734523155071
	.quad	0x3fbbcef41b459750              # double 0.10862661042992028
	.quad	0x3fd28bac2c803dc2              # double 0.28977493615908767
	.quad	0x3fdbf82366c5c4cc              # double 0.43702015911464964
	.quad	0x3fe90ef9e80d1b42              # double 0.78307814905642936
	.quad	0x3fc5d31c247a15a0              # double 0.17050506383035913
	.quad	0x3fc3cf7bfe152724              # double 0.15476941973093361
	.quad	0x3fdc79c8242411aa              # double 0.44493297128090126
	.quad	0x3fea4b59e8ceb88a              # double 0.82169814558234688
	.quad	0x3fc9df0d49735714              # double 0.20211950384571564
	.quad	0x3fe48e4e00c98581              # double 0.64237117913960173
	.quad	0x3fe72fe93770ee13              # double 0.72459851101251826
	.quad	0x3fce869afc1f578c              # double 0.23848283110299595
	.quad	0x3fe93523d64fa8a7              # double 0.78773681504869308
	.quad	0x3fd1a09e9130b87c              # double 0.27542843035451603
	.quad	0x3fe1d647494508b6              # double 0.55740703878861697
	.quad	0x3fe3bf6404b5b39f              # double 0.61711312217595438
	.quad	0x3fe59514fb75ccf7              # double 0.67444848168670901
	.quad	0x3fe1ecd8dc5b5540              # double 0.5601620010226398
	.quad	0x3fd29ab7fa289550              # double 0.29069327764076025
	.quad	0x3fca9cd5b2792a64              # double 0.20791121687428238
	.quad	0x3fef2f2b1e155b98              # double 0.97450786472005557
	.quad	0x3fe255c59221b838              # double 0.57297018567420022
	.quad	0x3fdde5785718d1e8              # double 0.46713074212610062
	.quad	0x3fefd8bad25dbd7a              # double 0.99520627104895643
	.quad	0x3fea2482e9f8fbf4              # double 0.8169569558884846
	.quad	0x3fdf7239d927be50              # double 0.49134679991309316
	.quad	0x3fb210c228c15660              # double 0.070568213415151515
	.quad	0x3fd1710e4b465be4              # double 0.27252538062151488
	.quad	0x3fc62af3cb22fa2c              # double 0.17318580073147538
	.quad	0x3fe06ac31fbb1829              # double 0.51303249547413998
	.quad	0x3f88d98bb66d8280              # double 0.012133685593370247
	.quad	0x3fb3d6eed35c9658              # double 0.077498365976304995
	.quad	0x3fee41edb507b53c              # double 0.94554791791384884
	.quad	0x3fc763cda95a7190              # double 0.18273325700000642
	.quad	0x3fedb9eb1b1963f1              # double 0.92894511502083621
	.quad	0x3fe1e08c0855aa64              # double 0.55866052272660882
	.quad	0x3fe8f9a3c9a57392              # double 0.78047360786477982
	.quad	0x3fec92e8fe766a7b              # double 0.89293336581916039
	.quad	0x3fed99d82f3a1f78              # double 0.92502984260589383
	.quad	0x3fe97e693298358f              # double 0.79668102151633657
	.quad	0x3fddcd88dadb89fe              # double 0.46566983578500742
	.quad	0x3fe5e95754a06733              # double 0.68473402527454252
	.quad	0x3fe5ed5c4849b122              # double 0.68522466772768476
	.quad	0x3fecfadc4b7d62c9              # double 0.90562262291049322
	.quad	0x3fecbd015a587dcd              # double 0.89807193418158138
	.quad	0x3fe94c1e00b2b5cd              # double 0.79054165016503364
	.quad	0x3fdd3ff229ff2df6              # double 0.45702795125245588
	.quad	0x3fe6c3705ec84df3              # double 0.71135729324526975
	.quad	0x3fc1b613e5d699b8              # double 0.13836907122204223
	.quad	0x3feda3e1f3b5e4b9              # double 0.92625520324431598
	.quad	0x3fd27b23a25dcdfe              # double 0.288765820084535
	.quad	0x3fd66e1367900630              # double 0.35046849359068499
	.quad	0x3fed25a9e6925370              # double 0.9108476165152819
	.quad	0x3fe48a0580c887e3              # double 0.64184832718842377
	.quad	0x3fd182728e15ade8              # double 0.27358688235719208
	.quad	0x3fd26dc285a572e4              # double 0.28794920970339732
	.quad	0x3fda77a964937fb0              # double 0.41355357000247306
	.quad	0x3febf35952005252              # double 0.873455677183822
	.quad	0x3fc56a34d54bd320              # double 0.16730366148808518
	.quad	0x3fe31d7aa51072d5              # double 0.59734852065192945
	.quad	0x3feb171d66dd3e01              # double 0.846571637064642
	.quad	0x3fde376d205ccace              # double 0.47213295135877054
	.quad	0x3fd4a2ba460b60fa              # double 0.322432106402189
	.quad	0x3fb305412d35ab98              # double 0.074298928773414707
	.quad	0x3fe59598496ddb8b              # double 0.67451109258296194
	.quad	0x3fea5370d2471ef1              # double 0.82268563337217249
	.quad	0x3febb08e175bdb14              # double 0.86530212938564199
	.quad	0x3fd10e39a5825726              # double 0.2664932361889093
	.quad	0x3f4abaf7854c3400              # double 8.1574521991145676E-4
	.quad	0x3fc5f2e7f803839c              # double 0.17147540674252759
	.quad	0x3fe81be6bec4c3f2              # double 0.75340592631812187
	.quad	0x3fe23da456c71a21              # double 0.57002465199258634
	.quad	0x3fce037977c91c88              # double 0.23448103283792343
	.quad	0x3fccc1d04efa3cb0              # double 0.22466472488711053
	.quad	0x3fcdd1dc1dc7d360              # double 0.2329669137394843
	.quad	0x3fdca03ccf1084fa              # double 0.44728012295861641
	.quad	0x3fbb43a076c2b9b8              # double 0.10650065326146929
	.quad	0x3fd763af10b437fa              # double 0.36545921927688563
	.quad	0x3fda7173c72793e8              # double 0.41317457627002208
	.quad	0x3fd492409ca5747a              # double 0.32142653748980587
	.quad	0x3fb8405b6071bbd8              # double 0.094732008977856608
	.quad	0x3fe42f67bcaa3b90              # double 0.63078677033068864
	.quad	0x3fce48f88c27028c              # double 0.2366018947923475
	.quad	0x3fe664a81da1088f              # double 0.69978719508095988
	.quad	0x3fe008cfea5fceab              # double 0.5010757043478028
	.quad	0x3fb499d08c7e2538              # double 0.080472025203694453
	.quad	0x3fd08c6be0ed03ea              # double 0.25857064214147718
	.quad	0x3fca982a36d9cb00              # double 0.20776870420703375
	.quad	0x3fe9b8266be105d5              # double 0.80372925825229891
	.quad	0x3fe606a66ab62853              # double 0.68831177560901791
	.quad	0x3fd9c6f2f170ce9c              # double 0.40276788309277278
	.quad	0x3fe424aeea2ce470              # double 0.62947793710112698
	.quad	0x3fdb5dd2cef2add8              # double 0.42760153016817304
	.quad	0x3fb8755790de86a8              # double 0.095540497654406864
	.quad	0x3fe17812c2609f4f              # double 0.54590738262502636
	.quad	0x3fecd819fa4f289f              # double 0.90137957466619756
	.quad	0x3fefe59eba1434bd              # double 0.99677978843251191
	.quad	0x3feffb8284d00741              # double 0.99945188465083145
	.quad	0x3fe30061a4d80a61              # double 0.59379656025005201
	.quad	0x3fe1c6aaa8c221ea              # double 0.55550129852877927
	.quad	0x3fb4cbc0515c2f90              # double 0.081233997214608999
	.quad	0x3fec3f8214fed7d6              # double 0.88275245762519705
	.quad	0x3fecfbe301cc4a60              # double 0.90574789382146647
	.quad	0x3fefb5ece1e53f7d              # double 0.99095768089499325
	.quad	0x3fcf921a07b5550c              # double 0.24664616943724871
	.quad	0x3fcaf3397edd9f20              # double 0.2105476254903289
	.quad	0x3feb02f9075ae32d              # double 0.84411288677720153
	.quad	0x3fecd3a91ad0b7c1              # double 0.90083747136463199
	.quad	0x3faa064a6f533c10              # double 0.050829244698995635
	.quad	0x3fe21fe47ff19b43              # double 0.56639313687342285
	.quad	0x3fe9d982358dcd91              # double 0.80780134639501189
	.quad	0x3fee9ea44b4e6a97              # double 0.95686545093788566
	.quad	0x3fec522ab74a4d87              # double 0.88503013419033116
	.quad	0x3fbb5b2d50b6df68              # double 0.10686000080647562
	.quad	0x3fde75031485f0cc              # double 0.47589184765071191
	.quad	0x3fd6a4442c8c4bf4              # double 0.35377601957696858
	.quad	0x3fed27caa9c81408              # double 0.9111073795362481
	.quad	0x3fce7c9c314cf608              # double 0.23817779929406435
	.quad	0x3fefc03446c50395              # double 0.99221242735085246
	.quad	0x3fe1a3e574f121d3              # double 0.55125687446803295
	.quad	0x3feb5764ba75c4a4              # double 0.85441814821219397
	.quad	0x3fd0ee1b906bf446              # double 0.26453293899232155
	.quad	0x3fbd451312b9aef8              # double 0.11433524329339295
	.quad	0x3fc39c7e1b09308c              # double 0.15321327514755401
	.quad	0x3fd0a6ad57b9c1c0              # double 0.26017316405252799
	.quad	0x3fdd1f37e0e26ebc              # double 0.45503041230561414
	.quad	0x3fc2433c6d1295e0              # double 0.1426768810826351
	.quad	0x3fd5911847b0c412              # double 0.33698088646912183
	.quad	0x3fb99313c8171620              # double 0.099900471067563945
	.quad	0x3fef85b433b20c00              # double 0.98507127854134069
	.quad	0x3fe698487e3a73c5              # double 0.70608925489397534
	.quad	0x3fc639cc4aede2c8              # double 0.17363885553984049
	.quad	0x3fc7b3614b5abc6c              # double 0.18516174487510584
	.quad	0x3fc1e644e2a18bf0              # double 0.13983975473374199
	.quad	0x3fd3f84970d91f98              # double 0.31202922840429315
	.quad	0x3fbbbcc26a8648e0              # double 0.10834899044701585
	.quad	0x3fe93e03e57a042a              # double 0.78882021731999896
	.quad	0x3fe2d175cf63acaa              # double 0.58806887155278287
	.quad	0x3fde5b0feb676d9a              # double 0.47430799473451091
	.quad	0x3fe54ca73c22e6b1              # double 0.66560708756806808
	.quad	0x3fe7f8a7ec2698e8              # double 0.74910350917050739
	.quad	0x3fdb5383b4ad73b0              # double 0.42697231907169009
	.quad	0x3fe5b6b71565b9e5              # double 0.67855409793065447
	.quad	0x3fc41cb5450107cc              # double 0.15712610120141191
	.quad	0x3fd3ab7711081700              # double 0.30734039939157753
	.quad	0x3fe837cb17e533fe              # double 0.75681070963912567
	.quad	0x3fe6af02ae0a7a78              # double 0.70886358253831272
	.quad	0x3fe5ee56422af0f6              # double 0.68534386561762406
	.quad	0x3fc048c2f6797b10              # double 0.12722050700082166
	.quad	0x3fe609dc0707532a              # double 0.6887035500791161
	.quad	0x3fe62067b88eef22              # double 0.69145570799398492
	.quad	0x3fd5bfc4ff253792              # double 0.33982968250790535
	.quad	0x3fde6e22ca0d9c6a              # double 0.47547216159586603
	.quad	0x3fdb9ab154f2fc32              # double 0.43131669326607203
	.quad	0x3fd70a44a3771c18              # double 0.36000171626477728
	.quad	0x3fe8957479c4d8c8              # double 0.76824401648516361
	.quad	0x3fe4493669fd59fc              # double 0.63393707944015842
	.quad	0x3f8befb07d7b50c0              # double 0.013640765027425394
	.quad	0x3fe6171f0935076b              # double 0.69032241628904722
	.quad	0x3fee828a4ce39a7f              # double 0.95343508736989679
	.quad	0x3f9624fff119f480              # double 0.021625517931614713
	.quad	0x3fdd8cce6693f29c              # double 0.4617191316354281
	.quad	0x3fe8591742387c5d              # double 0.76087534841270676
	.quad	0x3fec5478c195ea8c              # double 0.88531148729028208
	.quad	0x3fd4eea2927c958c              # double 0.32706512742364491
	.quad	0x3fd39583380cdc68              # double 0.30600052331596439
	.quad	0x3fed6591144f5fcb              # double 0.91864828078086569
	.quad	0x3fedc406ca16d913              # double 0.93017901869351005
	.quad	0x3fed2fa90c10073f              # double 0.91206791263559939
	.quad	0x3fb9efd96dda1ed0              # double 0.10131606037077323
	.quad	0x3fe04f52f0699625              # double 0.50968310313755139
	.quad	0x3fd6c0088a09b78a              # double 0.35547078590649817
	.quad	0x3fea41074a4e13df              # double 0.82043804657643793
	.quad	0x3fdc028b6ef21efe              # double 0.43765531382130962
	.quad	0x3fe4baedf40b5968              # double 0.64781854309948717
	.quad	0x3fa924697cc20f80              # double 0.049105926970724134
	.quad	0x3fe16da45af287ac              # double 0.54463403475914651
	.quad	0x3fec05a6a41af373              # double 0.87568981220066033
	.quad	0x3fac7575fe8b73b0              # double 0.055583655664782738
	.quad	0x3fe8b60a318495e5              # double 0.77222165748088101
	.quad	0x3fd7443179bf170e              # double 0.36353718652058908
	.quad	0x3fd6e5dc00475d94              # double 0.35777950312827866
	.quad	0x3fea7dc6f1e82346              # double 0.82785365340632988
	.quad	0x3fcff61f650a6a4c              # double 0.24969856675746127
	.quad	0x3fd00b36cb960a14              # double 0.25068445092634417
	.quad	0x3fefc55a948123df              # double 0.99284104351783841
	.quad	0x3fde535507c32bd4              # double 0.47383619077726036
	.quad	0x3fed3db3316139a7              # double 0.91378173489083714
	.quad	0x3fefbae4a0a42f91              # double 0.99156409621490315
	.quad	0x3fe0eb81308c1b7a              # double 0.52874812585729036
	.quad	0x3fe113d8bc502dd7              # double 0.53367268352433939
	.quad	0x3fedd1c0ab141447              # double 0.93185456670529099
	.quad	0x3fce3ae85e2434f0              # double 0.23617271992444655
	.quad	0x3fbe941dfe4f1e00              # double 0.11944758852688864
	.quad	0x3fdb56a468c61efc              # double 0.42716322166278053
	.quad	0x3fb2464f3e56cca0              # double 0.071385338515755681
	.quad	0x3fdccfbef435cccc              # double 0.45017980431221072
	.quad	0x3fe042bf4899352f              # double 0.50814785174740063
	.quad	0x3fcfdb046e2ce6a0              # double 0.24887137775094903
	.quad	0x3fe0d5eb23ad2d9d              # double 0.52611309974729503
	.quad	0x3f939324807b12e0              # double 0.019115991918414177
	.quad	0x3fe69e803737ffcd              # double 0.70684824738418117
	.quad	0x3fe76c6143cd03a1              # double 0.73197997324324515
	.quad	0x3fe4e53cd9bb6945              # double 0.65298311734958558
	.quad	0x3fafd8ba83f8b420              # double 0.06220038281421858
	.quad	0x3fded3e2f086dd52              # double 0.48168252457567917
	.quad	0x3fd22a464b39b9d4              # double 0.28383023592223577
	.quad	0x3fee822f84ff970a              # double 0.95339179970025723
	.quad	0x3fc20661d43482a0              # double 0.14081976758554493
	.quad	0x3fd7c55c9dd35956              # double 0.37142100727705463
	.quad	0x3faf000e5089d850              # double 0.060547301608423809
	.quad	0x3fb3aa97869f3fa0              # double 0.076821775786128033
	.quad	0x3fc08a5838603f44              # double 0.12922194245083507
	.quad	0x3fd97a4ae26b0b3a              # double 0.39808914290567865
	.quad	0x3fd7fc43c6614620              # double 0.37477201817555006
	.quad	0x3fb9f7ca68683da0              # double 0.10143723534587545
	.quad	0x3fe0cd75ceebf809              # double 0.52508058943181013
	.quad	0x3fdd6360e5f68a12              # double 0.45919058282211822
	.quad	0x3fc3c163e6c7ccf0              # double 0.15433930176332167
	.quad	0x3fe87f1e7bc8979f              # double 0.7655174653671003
	.quad	0x3fe5ad9a0c404fcd              # double 0.67744161980453443
	.quad	0x3fed89936f4e8fe5              # double 0.92304393519998185
	.quad	0x3feb63b841cc2364              # double 0.85592282153184529
	.quad	0x3fc9f6ee5d1bcaf4              # double 0.20284823938671759
	.quad	0x3fc1d79ad3ff80f4              # double 0.13939223624675601
	.quad	0x3fe73e8e0ffb6c6e              # double 0.7263861000204892
	.quad	0x3feb2044e187e6b4              # double 0.84768909501072764
	.quad	0x3faa8b8864e0cdc0              # double 0.051845800699449551
	.quad	0x3fb7fdeaaa44a7f8              # double 0.093718210763341747
	.quad	0x3fdbb46bd7694ae0              # double 0.43288703953036922
	.quad	0x3fb6051fb7b1e1e8              # double 0.086015684459091468
	.quad	0x3fd91fca9b2577a4              # double 0.39256539488803299
	.quad	0x3fef0f27d042aeeb              # double 0.97060003925204563
	.quad	0x3f6a183a16f65500              # double 0.0031853804172877753
	.quad	0x3fb07346b2b145b8              # double 0.064258974672404601
	.quad	0x3fdf0e83355d361e              # double 0.48526077472055984
	.quad	0x3fef551f0f92d5a6              # double 0.9791407875224436
	.quad	0x3fd106aff5e8b76c              # double 0.26603316320949122
	.quad	0x3fd0f4fe6e47dd8c              # double 0.26495323915101987
	.quad	0x3fec4f171c15d525              # double 0.88465457425505589
	.quad	0x3fb3f11f63c47380              # double 0.077897989136955558
	.quad	0x3fcf39e020071890              # double 0.24395371974805302
	.quad	0x3fd1d3d7eb4e7892              # double 0.27855489710953762
	.quad	0x3fcc5e0b779385e8              # double 0.22162001932797115
	.quad	0x3fd5446e2286896a              # double 0.33230164882311064
	.quad	0x3fd1f89226961c30              # double 0.28079656379890405
	.quad	0x3fe8b4f6aa88a0c9              # double 0.77209027583469336
	.quad	0x3fe0f0d29a366f36              # double 0.52939729804663815
	.quad	0x3fe9f991cecdb3c4              # double 0.81171503440202075
	.quad	0x3fc3e2bf4d115238              # double 0.15535727751798034
	.quad	0x3fefaf56712cc539              # double 0.99015352348775487
	.quad	0x3fee0fdf12044f3e              # double 0.93943742293274801
	.quad	0x3fd1c54c03f23502              # double 0.2776670492683736
	.quad	0x3fdcf6631c28ad5a              # double 0.45253827810184577
	.quad	0x3fb46097598a8fe0              # double 0.079598864899309785
	.quad	0x3fef4c595a9fa362              # double 0.97806995105666439
	.quad	0x3fdc66b79b1fed44              # double 0.44376936100862374
	.quad	0x3fd78b97f757e060              # double 0.36789511828056298
	.quad	0x3f8cd8d668bb7f80              # double 0.014085459777049669
	.quad	0x3f89b4ead67b02c0              # double 0.01255210368197035
	.quad	0x3fef07afe4bfbc47              # double 0.96968836476833863
	.quad	0x3fe3d268621d07ae              # double 0.61943453943989879
	.quad	0x3feaab23aab43a8a              # double 0.83339103069904863
	.quad	0x3fdda800e2b343d2              # double 0.46337911738106385
	.quad	0x3fd6fb57f03a3180              # double 0.35909079036425595
	.quad	0x3fdb31a6810b6aa0              # double 0.42490542032252598
	.quad	0x3fecb6997f3a6379              # double 0.89728998994097176
	.quad	0x3fc1c03673f93bc4              # double 0.1386783663060368
	.quad	0x3fe40c8375052527              # double 0.62652752738464279
	.quad	0x3fe2f4f3716d71fe              # double 0.59240123895466446
	.quad	0x3fc5f79ee4ac6924              # double 0.17161928334901078
	.quad	0x3fd7e2880c9575b2              # double 0.3732013819588601
	.quad	0x3fc8864323efbe2c              # double 0.19159735922538468
	.quad	0x3fea790c29f35989              # double 0.827276307997452
	.quad	0x3febf604ad1f4f3b              # double 0.87378152668905018
	.quad	0x3fc5379734c9d704              # double 0.16575899198112876
	.quad	0x3fea5ac74ce145a6              # double 0.82358136191958375
	.quad	0x3fda6977d065a1d0              # double 0.41268725730199396
	.quad	0x3fc98aacccec6aa8              # double 0.19954452520399468
	.quad	0x3fedf6a74bb886ca              # double 0.93635906972141325
	.quad	0x3fe7e74a0f7f45f1              # double 0.74698355700291874
	.quad	0x3fe017a28c9634d3              # double 0.5028851266703448
	.quad	0x3fdab4e76118b57c              # double 0.41729149324495274
	.quad	0x3fdbbcc64881da64              # double 0.43339688378129027
	.quad	0x3fea77330b035c92              # double 0.82705070639612388
	.quad	0x3fea63db08a67a47              # double 0.82468940438759197
	.quad	0x3fd78d4fc5cfaa42              # double 0.36799997632502734
	.quad	0x3fe99985abc4a1ee              # double 0.79999049709755155
	.quad	0x3fce1daa7e317c8c              # double 0.23528033410818627
	.quad	0x3fd349a9c22f6eea              # double 0.30137103999525883
	.quad	0x3fe1e435869f135a              # double 0.55910755437126203
	.quad	0x3fd5fc15a819fa1c              # double 0.34351102272185741
	.quad	0x3fdc5e49bdba930e              # double 0.44325488594249485
	.quad	0x3fe9c19c16b97f12              # double 0.80488399923703668
	.quad	0x3fe226a008b7eb0d              # double 0.56721498205965448
	.quad	0x3febec4678da04b7              # double 0.87259219745478489
	.quad	0x3fd18966f8f3a93e              # double 0.27401136695575079
	.quad	0x3fec1bc24b9a87e4              # double 0.87838854566893731
	.quad	0x3fea55bc0a944088              # double 0.8229656416533695
	.quad	0x3fe2952c2a5c2028              # double 0.58070953629885924
	.quad	0x3fc292a03c3a2b10              # double 0.14509966793806273
	.quad	0x3fc1d78589b4d358              # double 0.1393896982569014
	.quad	0x3fe3679708463520              # double 0.6063952600103768
	.quad	0x3fdcd363ad704c24              # double 0.45040218293542211
	.quad	0x3fed846a4ee37e47              # double 0.92241397293032257
	.quad	0x3fe2dda0e6919d59              # double 0.58955426247568277
	.quad	0x3f88d15ee3b55840              # double 0.012118092846019946
	.quad	0x3fe8f3eefed8df90              # double 0.77977704787098112
	.quad	0x3f93622b77b03e00              # double 0.018929175548747068
	.quad	0x3fc9fb1892072ac4              # double 0.20297534113190896
	.quad	0x3fca9624cb071578              # double 0.20770702279530062
	.quad	0x3fb6b5043c120ff8              # double 0.088699593225157858
	.quad	0x3fd32ac996bed726              # double 0.29948653908955902
	.quad	0x3fedff5207bd9604              # double 0.93741704475240839
	.quad	0x3fc71df448fb7514              # double 0.18060163081728631
	.quad	0x3fe7e6c8e43e6f1c              # double 0.74692196444400194
	.quad	0x3fdfec85a360645e              # double 0.49881115870227244
	.quad	0x3fec6474f339d86a              # double 0.88726279740400327
	.quad	0x3fcc7299e23f8b04              # double 0.2222473482825863
	.quad	0x3fe9b2d64980c7d6              # double 0.80308069568695362
	.quad	0x3fb05775f76fbed8              # double 0.063834546002677128
	.quad	0x3fdd29dfb3b6af42              # double 0.45568077612073321
	.quad	0x3fd90695f8c52e96              # double 0.39102696699112849
	.quad	0x3fee4d2d880b855c              # double 0.94692112513818527
	.quad	0x3fd164f5eeb20750              # double 0.27178715047931679
	.quad	0x3fc31fbb9e47800c              # double 0.14940591076356247
	.quad	0x3faa113445233100              # double 0.050912507476455815
	.quad	0x3fe0f1a56c4be99e              # double 0.52949782516161625
	.quad	0x3fd7ec6575bd07fc              # double 0.37380348680392195
	.quad	0x3f7c5c3f1fdb2700              # double 0.0069239106939649187
	.quad	0x3fe7b184fe98c5b1              # double 0.740419862040815
	.quad	0x3fe520302fe3427f              # double 0.66017922738144807
	.quad	0x3fe026ddc438f3b7              # double 0.50474441837979256
	.quad	0x3fd4c4c82d1b37a8              # double 0.32451061634935252
	.quad	0x3fd6ccef8a2ef7e8              # double 0.35625828260879056
	.quad	0x3f826ec8e20d6dc0              # double 0.0090003675447211106
	.quad	0x3fce80a7d3fbd578              # double 0.23830125666396973
	.quad	0x3fd6a87c3a8bad94              # double 0.35403352467866367
	.quad	0x3f9cd543b9cbdbe0              # double 0.028157289710147526
	.quad	0x3fea22d062aac4f3              # double 0.8167497565356413
	.quad	0x3fe1d3d220aea8b4              # double 0.55710703261617889
	.quad	0x3fe0ab8bcbae7402              # double 0.52094068318876929
	.quad	0x3fe60f92abaf17da              # double 0.68940099269888866
	.quad	0x3fe0d53981766bb7              # double 0.52602839742336627
	.quad	0x3fc8b7eff7a84dd8              # double 0.19311332314155893
	.quad	0x3fe57d4d863ed42e              # double 0.67154575557527152
	.quad	0x3fcb0fbeea36a888              # double 0.21141802250105379
	.quad	0x3fd4bbfcc0d5bcdc              # double 0.32397383529219126
	.quad	0x3fd27d215a4e9c76              # double 0.28888734644937786
	.quad	0x3fd94dcc0e61a4ca              # double 0.3953733578151285
	.quad	0x3fea9ee14cf2ced3              # double 0.83189454106328709
	.quad	0x3fdcc793d52597bc              # double 0.44968124213334781
	.quad	0x3fd7805202414538              # double 0.36720705242358376
	.quad	0x3fe4fcedd9db588a              # double 0.65587513494644267
	.quad	0x3fd453ea55f83e04              # double 0.31762178798177865
	.quad	0x3fcb87af56349d7c              # double 0.21507827481512354
	.quad	0x3fc73cdcc3603a10              # double 0.18154487171018774
	.quad	0x3fe815e0a69997fe              # double 0.75267059840257367
	.quad	0x3fe9922851ec43b7              # double 0.79909149170463578
	.quad	0x3fd415c4e084e114              # double 0.31382867742242238
	.quad	0x3fe7e323c665afa7              # double 0.74647701978164072
	.quad	0x3fe14745706ef865              # double 0.53995010337508786
	.quad	0x3f2334094ecaf000              # double 1.4650930042658938E-4
	.quad	0x3fbad5bc8fb60eb0              # double 0.10482386120389253
	.quad	0x3fc107318554ab70              # double 0.13303202638902745
	.quad	0x3fe1a765d0e6717d              # double 0.55168429184736534
	.quad	0x3fea313b09886f35              # double 0.81850959646133126
	.quad	0x3fac781b51406020              # double 0.055603841465370119
	.quad	0x3fea3d762385033d              # double 0.82000262200754259
	.quad	0x3fe7d5f02ac8f92f              # double 0.74486549717383876
	.quad	0x3fd61a2312338188              # double 0.34534527566395257
	.quad	0x3fd3269bccdd6994              # double 0.29923148161255964
	.quad	0x3fd774fa7d909b6c              # double 0.36651479971117484
	.quad	0x3fe3c6c58308c65b              # double 0.61801410286552583
	.quad	0x3fe17332fc1a99aa              # double 0.54531239737553006
	.quad	0x3fdc7ade65b92848              # double 0.44499931272423909
	.quad	0x3fd3c570176e302a              # double 0.30892565048339071
	.quad	0x3fee7c6cf2707c76              # double 0.9526886687416567
	.quad	0x3fee7e0b1d651567              # double 0.95288615933592957
	.quad	0x3fd9e7cf02149024              # double 0.40477347567707711
	.quad	0x3fec296354bb6075              # double 0.88005224751670019
	.quad	0x3fe787c32b4dc414              # double 0.73532255609291264
	.quad	0x3fc605e90edeac74              # double 0.17205537057938936
	.quad	0x3fc3e2f136fa0de8              # double 0.15536322769558741
	.quad	0x3feda21c81426730              # double 0.92603898282979991
	.quad	0x3fd93b9abe16bc0c              # double 0.39426296771392866
	.quad	0x3fd704fb8fca6444              # double 0.35967911760377924
	.quad	0x3f94723c10a58880              # double 0.019967020526913348
	.quad	0x3fe6acfdcdb46c0d              # double 0.70861711670602434
	.quad	0x3fe7ba7f89ce79c3              # double 0.74151589312878519
	.quad	0x3fd2f91ee78bb5fc              # double 0.29645512210740299
	.quad	0x3fdea4aed29931b0              # double 0.4788014465928212
	.quad	0x3fd6dad04b33f87a              # double 0.3571053251652142
	.quad	0x3feeb4bc54ec528a              # double 0.95956245981740662
	.quad	0x3fd8f9d2d7ed5b0a              # double 0.39024802290570959
	.quad	0x3fe6c9cb83fb94c8              # double 0.71213317659262376
	.quad	0x3fd8e3b06dd12bf4              # double 0.38889704441379469
	.quad	0x3feb9b71e99163ef              # double 0.86272521609055086
	.quad	0x3fe5b8fa45001d25              # double 0.67883027531289442
	.quad	0x3f6d09ca41094700              # double 0.0035447073244448957
	.quad	0x3fea092b70ee33bf              # double 0.81361934715970807
	.quad	0x3fe3abe2ec9b312f              # double 0.61473222934868044
	.quad	0x3fe37fdde45cf63d              # double 0.60935873605894353
	.quad	0x3fb54f6a0e0a4060              # double 0.083243015697236356
	.quad	0x3fe1bc8340be9a13              # double 0.55426180501382516
	.quad	0x3fe616d590d62556              # double 0.69028738296871484
	.quad	0x3fd6263c48243b06              # double 0.34608370823927748
	.quad	0x3fb5278680c9f288              # double 0.082634359781829869
	.quad	0x3fdb08de73c34558              # double 0.42241631798704793
	.quad	0x3feafdf0f997fdbd              # double 0.84349869488499218
	.quad	0x3fdf3f4b3937cc6e              # double 0.48823814952556333
	.quad	0x3fe1cac5262bba62              # double 0.55600221114384518
	.quad	0x3fe446518876caca              # double 0.63358379986888136
	.quad	0x3fe4cee6c0ddeab0              # double 0.65025651616391222
	.quad	0x3fe32d0180f4f5b5              # double 0.59924388110055438
	.quad	0x3fd141a397bcae7c              # double 0.26963128870077191
	.quad	0x3feabe4477bb1c9f              # double 0.83572600731794811
	.quad	0x3fd2943d0ae41d40              # double 0.29029775680142578
	.quad	0x3fea70b90f57dbcb              # double 0.82626011845320002
	.quad	0x3fef1304c7196a40              # double 0.97107161413743625
	.quad	0x3fba61411c4b9128              # double 0.10304648342895872
	.quad	0x3fcceff0fc3687ec              # double 0.2260724288472028
	.quad	0x3fd1d9fb0670016e              # double 0.27892947796501388
	.quad	0x3feab20c94ec8a61              # double 0.83423451506343949
	.quad	0x3fe3a46beac3cfe6              # double 0.61382099010961322
	.quad	0x3fe984d880736f8c              # double 0.79746651733465645
	.quad	0x3fd76c1363e9ae14              # double 0.36597141987906068
	.quad	0x3fd50032e11955c0              # double 0.32813713056870242
	.quad	0x3fbb402eb5daabb0              # double 0.10644809665488597
	.quad	0x3fde450032717240              # double 0.47296147276009393
	.quad	0x3fb492bd68129860              # double 0.080364072712286738
	.quad	0x3feb7cd0ca1becf1              # double 0.85898627733641153
	.quad	0x3fdd92cec2cd7bac              # double 0.46208542846391754
	.quad	0x3fe8a01aafed8c05              # double 0.76954397545739595
	.quad	0x3feb8732ce10a985              # double 0.86025371787154425
	.quad	0x3fcf3c3a7cb11820              # double 0.24402552689042611
	.quad	0x3fec7348f69a5722              # double 0.88907287754657127
	.quad	0x3fd732e135836472              # double 0.36248045183089694
	.quad	0x3fdb67d0057df5f0              # double 0.42821121727305833
	.quad	0x3fda89c34d8b43b4              # double 0.41465838024765422
	.quad	0x3fe316be44ae37ac              # double 0.59652627386252766
	.quad	0x3fa8c930ba2a5ba0              # double 0.048409960484767867
	.quad	0x3fdefdaf645555e2              # double 0.4842337112252989
	.quad	0x3fc5af6aebc4be78              # double 0.16941582214484519
	.quad	0x3fed9da240d175fb              # double 0.9254924074154468
	.quad	0x3fe5e34c86e3695c              # double 0.68399645181061031
	.quad	0x3fe42ead826251c7              # double 0.63069797006260664
	.quad	0x3fe3fcda422f2732              # double 0.62461579252815214
	.quad	0x3fe1912591c379d3              # double 0.54896810979317434
	.quad	0x3faf37b269f28110              # double 0.060971808846490672
	.quad	0x3feb9c144adb2cea              # double 0.86280264492361636
	.quad	0x3fc4cc5965ba6ee0              # double 0.16248624293517988
	.quad	0x3fa832f3af73c190              # double 0.047263732116223811
	.quad	0x3febb66aa0810498              # double 0.8660176405757225
	.quad	0x3fe20890be69e3a6              # double 0.56354558172380531
	.quad	0x3fdf9c3708355eb0              # double 0.49390960504158965
	.quad	0x3fdb2ba6e916872a              # double 0.42453930628299708
	.quad	0x3fecfe65c6c743ab              # double 0.90605439018155687
	.quad	0x3febd3eeedb86ac1              # double 0.86962076596986304
	.quad	0x3fedb6af0f6837c2              # double 0.92855027207564711
	.quad	0x3fdfbf2b8859945e              # double 0.49604309382841005
	.quad	0x3fe520db7a8a55de              # double 0.66026090558687733
	.quad	0x3fef8eb54142463e              # double 0.98617041345477907
	.quad	0x3fd1f2689fe6475a              # double 0.28042045226276502
	.quad	0x3fd0d5be7ac581dc              # double 0.26304590215116064
	.quad	0x3fee7976c211e6e2              # double 0.95232713608058028
	.quad	0x3f82ec6c65b47b40              # double 0.0092400044000534586
	.quad	0x3fee8a9b8e4e9fc3              # double 0.95441987795219807
	.quad	0x3fb40deb3b0fcb70              # double 0.078337385100707868
	.quad	0x3fb3c4dc429ac690              # double 0.077222601185690686
	.quad	0x3fc25c809c9e6490              # double 0.14344794890783819
	.quad	0x3feab9fb43bb9011              # double 0.83520282010113267
	.quad	0x3fe223d0586d3589              # double 0.56687180777378032
	.quad	0x3fdb2825d6cbd27c              # double 0.42432542778195859
	.quad	0x3fa79096ad793d80              # double 0.046024998355842506
	.quad	0x3fefb5ac3ff10b19              # double 0.99092686165417653
	.quad	0x3fe7f337bb11d372              # double 0.74843966042554499
	.quad	0x3fe2995f8652e03e              # double 0.58122230753998116
	.quad	0x3fe579746ee75e87              # double 0.67107602749725082
	.quad	0x3fb0f72fb2973588              # double 0.066271763898120395
	.quad	0x3fb0d2f723566af0              # double 0.065719076278053512
	.quad	0x3fd8a550d14b75a6              # double 0.38509006918851652
	.quad	0x3fe8e70b39fb310b              # double 0.77820359539467299
	.quad	0x3fb1dfab2adb8910              # double 0.069819162333747409
	.quad	0x3fd101794795ef00              # double 0.26571495047367932
	.quad	0x3fdddcfa0768bd1c              # double 0.46661234592007061
	.quad	0x3fba059f1b2b3248              # double 0.10164827740954607
	.quad	0x3fd746d7011fcf48              # double 0.3636987219790524
	.quad	0x3fe6a10b187191f4              # double 0.70715861105105526
	.quad	0x3fdd37b68b55d76e              # double 0.45652545554127399
	.quad	0x3fccb7122eac1b94              # double 0.22433688429756826
	.quad	0x3fdbc68936c1419c              # double 0.43399267527731822
	.quad	0x3fe90141f636b2b4              # double 0.78140352333647067
	.quad	0x3feed6a42b2aaa76              # double 0.96370132857312174
	.quad	0x3fbb70e3cc0a55d0              # double 0.10719131213621513
	.quad	0x3fdb6898a3c1fe56              # double 0.42825904838534734
	.quad	0x3fe5c3d09381cf3d              # double 0.68015316781973179
	.quad	0x3fd227fc73197c1c              # double 0.28369055977049285
	.quad	0x3feff86da3230c66              # double 0.99907571661641437
	.quad	0x3feb215c0b03f2a0              # double 0.84782220984887501
	.quad	0x3fd2b8208773b22a              # double 0.29248822429397825
	.quad	0x3fdb1d5f1cb7c62c              # double 0.42366769604186305
	.quad	0x3fbb694b53cd7ac8              # double 0.1070754127117467
	.quad	0x3fa2f1e5e7c28760              # double 0.037001785794258835
	.quad	0x3fde7dd39fde1532              # double 0.47642984973966229
	.quad	0x3fe8f1f002801089              # double 0.77953339088755158
	.quad	0x3feb9891b934e690              # double 0.86237417386219484
	.quad	0x3fd9397e64f8359a              # double 0.39413413868245473
	.quad	0x3fcac4d5dfc07924              # double 0.20913194108374811
	.quad	0x3fd6425c8f0adaf4              # double 0.34780038804039681
	.quad	0x3fe35dce7d55bce3              # double 0.60520100097155838
	.quad	0x3fd66239e6b86ac4              # double 0.34974525004660628
	.quad	0x3fc0e219ea936860              # double 0.13190006212136307
	.quad	0x3faf2684d25237e0              # double 0.060840750383348796
	.quad	0x3fedbdec37ffb630              # double 0.92943392693786642
	.quad	0x3fdc6767cdbfc19c              # double 0.44381136982613056
	.quad	0x3f644cf964674900              # double 0.0024781104031968981
	.quad	0x3fe5729e78d98482              # double 0.6702415809960629
	.quad	0x3fe0ced2d7faa94e              # double 0.52524702247073107
	.quad	0x3fd0437eaa56a5c2              # double 0.25411955484977622
	.quad	0x3fe311775bb96add              # double 0.59588210978412415
	.quad	0x3fe7a51f0c3d060c              # double 0.73890640631015136
	.quad	0x3fd0826f627aea2e              # double 0.25796112649155389
	.quad	0x3fe1ad0e969901ac              # double 0.55237512029275626
	.quad	0x3fe67d5c400d456a              # double 0.70280277738690455
	.quad	0x3fe4a26191f8bb6f              # double 0.64482191572265701
	.quad	0x3fe852565dacff89              # double 0.7600509481053318
	.quad	0x3fec3926c0c74ef6              # double 0.88197648670254014
	.quad	0x3fe49508b165663c              # double 0.64319262168573443
	.quad	0x3fe468b8825261f6              # double 0.63778329328039152
	.quad	0x3febda8c93d1089b              # double 0.8704283606569051
	.quad	0x3fd84e30e16a263e              # double 0.37977239621304537
	.quad	0x3fe549e8d267094a              # double 0.66527215093837211
	.quad	0x3fd3104f3c61c3d8              # double 0.29787045380277055
	.quad	0x3fe6b99444a020f3              # double 0.7101537075368739
	.quad	0x3fe1588839cd8c39              # double 0.54205714501984581
	.quad	0x3fead120c329e535              # double 0.83802831762219532
	.quad	0x3fc22c6c6a7e1f8c              # double 0.14198069763028476
	.quad	0x3fe93797808aa181              # double 0.78803610902564014
	.quad	0x3fd40c34625790de              # double 0.31324491122928844
	.quad	0x3fe6e7223c80f0c1              # double 0.71571456734775307
	.quad	0x3feb6492b64872b4              # double 0.85602698900364382
	.quad	0x3fe0c326d0f7cbc6              # double 0.52382221998265588
	.quad	0x3fe547934ea36cde              # double 0.66498723372515278
	.quad	0x3fe4731da68b0a11              # double 0.63905222442582688
	.quad	0x3fd211755376fd8a              # double 0.28231557036266308
	.quad	0x3fd17756f5e1d33c              # double 0.27290891658713057
	.quad	0x3fe5fb9f8456e88a              # double 0.68696571204715551
	.quad	0x3fdc837c55a30620              # double 0.44552524912805502
	.quad	0x3fe4d92238863358              # double 0.65150557556044486
	.quad	0x3fecc6af98d23b9c              # double 0.89925365302939352
	.quad	0x3fddf346a1d4334e              # double 0.46797338298420221
	.quad	0x3fdbefb4b1887aea              # double 0.43650548302859582
	.quad	0x3fefff0331d311ca              # double 0.99987945300431957
	.quad	0x3fc893ca0c909944              # double 0.1920101701118232
	.quad	0x3fe36029ce7a8b5a              # double 0.60548868492001451
	.quad	0x3fe2918f7b91f24c              # double 0.58026861319337675
	.quad	0x3fb8f33e466a2348              # double 0.097461597624840413
	.quad	0x3fd06e2bdfdff4b4              # double 0.25672432768608222
	.quad	0x3fd0d696c75c8b00              # double 0.26309747189422694
	.quad	0x3fe857d5bcbd04e1              # double 0.76072203505477998
	.quad	0x3fc3f4e200435a98              # double 0.15591073048445447
	.quad	0x3fd4cb3cb9232488              # double 0.3249046142560208
	.quad	0x3fe8d8b2f92d291c              # double 0.7764525286413888
	.quad	0x3fe54de7e1afaefc              # double 0.66575998381946944
	.quad	0x3fec3b3b09836fac              # double 0.88223029954996468
	.quad	0x3fd85d7bd0c726d4              # double 0.38070578945608458
	.quad	0x3fc6ab6a13d35cb8              # double 0.17710615127609741
	.quad	0x3fe75fe10bdd986c              # double 0.73045399014951107
	.quad	0x3fe0acc69759cb85              # double 0.52109078942008635
	.quad	0x3fdf9c41116b8612              # double 0.49391199780629436
	.quad	0x3fea1f5d8e5b4635              # double 0.81632879070293163
	.quad	0x3fc417963ae41d78              # double 0.15696981311360125
	.quad	0x3fed639e19c67335              # double 0.91841034921853881
	.quad	0x3feb74af65bf3cf0              # double 0.85799379227128547
	.quad	0x3feff3e168204e2e              # double 0.99852056824824387
	.quad	0x3fd3c3052bceeb84              # double 0.30877808836128673
	.quad	0x3fe3f47704185986              # double 0.62359190749957416
	.quad	0x3fe4a7be711e4160              # double 0.64547655194659725
	.quad	0x3fd7acfbaddaf698              # double 0.36993305185374359
	.quad	0x3fab48e3c07cfcb0              # double 0.053290478942011332
	.quad	0x3fd834560bd15816              # double 0.3781943431289404
	.quad	0x3fe6d9269adc9d2b              # double 0.71400766607704236
	.quad	0x3fe00888a2e8110b              # double 0.50104171579053636
	.quad	0x3fddda7221b44288              # double 0.46645787516994419
	.quad	0x3fa93d56c55b16b0              # double 0.049296104041372302
	.quad	0x3fc2489b9bc6f098              # double 0.14284081560424933
	.quad	0x3fdc7bdd6a9c55da              # double 0.44506011401366907
	.quad	0x3fede5f95b0720c5              # double 0.93432300356746423
	.quad	0x3fea60d6a96029fe              # double 0.82432110863857111
	.quad	0x3fb7b4ededdfdfd0              # double 0.092604513716536773
	.quad	0x3fd0e6a7a0cfc6e0              # double 0.2640780516077097
	.quad	0x3fbe879d9d8c6d40              # double 0.11925683113479568
	.quad	0x3fd131e7a7462cb2              # double 0.2686709531341861
	.quad	0x3fe5fb0f3d5573bf              # double 0.68689691523797325
	.quad	0x3feb0a7e9c39f593              # double 0.8450310756012861
	.quad	0x3feb6b588920547a              # double 0.85685374052503893
	.quad	0x3fcb443e24aeea34              # double 0.21302010337042676
	.quad	0x3fd9c0d6a19ea0fc              # double 0.40239492209595062
	.quad	0x3f98d45b77793ba0              # double 0.024247578780257961
	.quad	0x3fdc8ad041f96054              # double 0.4459725040701461
	.quad	0x3fe7f67a84322f21              # double 0.74883771724259784
	.quad	0x3fe28f71a0d89e69              # double 0.58001023688570996
	.quad	0x3fe527dbb0c0f91e              # double 0.66111549875475695
	.quad	0x3fdc6dad4a251fd4              # double 0.44419414749836261
	.quad	0x3fc27edddf053620              # double 0.14449666394868732
	.quad	0x3feb5cdb3fdd4fdb              # double 0.85508501504454715
	.quad	0x3fd4a98fc27cdfd0              # double 0.32284921639393094
	.quad	0x3fe8be5bf0c63224              # double 0.77323720003329698
	.quad	0x3fcada601b1d2814              # double 0.2097892887489371
	.quad	0x3fe3753498994285              # double 0.60805730633190136
	.quad	0x3fe4834591605a36              # double 0.64102438348601853
	.quad	0x3fb29b36a917dd80              # double 0.072680870325589453
	.quad	0x3fe620698645877a              # double 0.69145656800195288
	.quad	0x3fe75ff876c9a52a              # double 0.73046515656202371
	.quad	0x3fed994d1f80f137              # double 0.92496353295385958
	.quad	0x3fe3a09425dac6a5              # double 0.61335189240908916
	.quad	0x3fd44a0e22b54186              # double 0.31701997174698027
	.quad	0x3fcd556b1b5d53a8              # double 0.22916926227722212
	.quad	0x3feb5a3694d39ebf              # double 0.85476235454276395
	.quad	0x3fe70cc7e784c989              # double 0.72031016558166627
	.quad	0x3febb878a676950e              # double 0.86626846802087853
	.quad	0x3fec98f22a90fe25              # double 0.89367016137834254
	.quad	0x3fe83d1a928be53f              # double 0.75745895979267874
	.quad	0x3fec943cabd0d0e3              # double 0.89309533651114881
	.quad	0x3fd79ed2dbb77b1c              # double 0.36906882721625478
	.quad	0x3fb89aeeda5d6f18              # double 0.096114090263139551
	.quad	0x3fe043236ae3b022              # double 0.5081955993350713
	.quad	0x3fc63408ed478fd0              # double 0.1734629782287116
	.quad	0x3fe5212c000dd552              # double 0.66029930124811131
	.quad	0x3f8d348ba8fafe80              # double 0.014260378927587469
	.quad	0x3fed87710d11ce4b              # double 0.92278339913031837
	.quad	0x3fd988a56acd78a4              # double 0.39896521978324473
	.quad	0x3fe03660aa9892a8              # double 0.50663789100197665
	.quad	0x3fd4f6a6a6d18be6              # double 0.32755438128350389
	.quad	0x3fd1e4e8b484dc5c              # double 0.27959649685675969
	.quad	0x3fea0c4913bd6839              # double 0.81399968963092484
	.quad	0x3fa5a3f328b588a0              # double 0.042266463012098798
	.quad	0x3fd0fb66adad3562              # double 0.26534430466275272
	.quad	0x3fe3dbd6e25aa67d              # double 0.62058586320672726
	.quad	0x3fea4aa8a7bfb503              # double 0.82161362422417061
	.quad	0x3fd9d7107552c332              # double 0.40375148255684501
	.quad	0x3fe40f095a7bcdca              # double 0.62683551476077892
	.quad	0x3fdd88e71ff95e38              # double 0.46148088571996793
	.quad	0x3febdf9267cafe45              # double 0.87104149124201824
	.quad	0x3fdeba8464904502              # double 0.48013410397204848
	.quad	0x3f9463ba22df31c0              # double 0.019911678675087918
	.quad	0x3fdfa85208c5fe06              # double 0.49464846474435864
	.quad	0x3fb1135b4165ee70              # double 0.066701606241559963
	.quad	0x3fd8d28604ce4026              # double 0.38784933537772515
	.quad	0x3fb801c51def5c10              # double 0.093777007873868223
	.quad	0x3fcf7a20128b024c              # double 0.24591446786327464
	.quad	0x3fd1e70ccbc40d08              # double 0.2797271718884109
	.quad	0x3fd0b95140eb4192              # double 0.26131087627165883
	.quad	0x3fe42c636036c73d              # double 0.63041847984116084
	.quad	0x3fd3674ec4bd4a30              # double 0.30318040097077681
	.quad	0x3fe988439d7b9d00              # double 0.79788380392429303
	.quad	0x3fe56a5257a43d5e              # double 0.66922871701710185
	.quad	0x3feb41a05590c6d2              # double 0.85176102363603889
	.quad	0x3fcedcfb3abddbb0              # double 0.24111881607288188
	.quad	0x3fecdbe8660d5bab              # double 0.90184421474520116
	.quad	0x3fdc6495b15de140              # double 0.44363920517891486
	.quad	0x3fe4cd129e1cf202              # double 0.65003329163988632
	.quad	0x3fd3a45d8686ca50              # double 0.30690706384044564
	.quad	0x3fefd7d96407ef25              # double 0.9950987771730736
	.quad	0x3fce151937db74cc              # double 0.23501887538342314
	.quad	0x3fd8384ed5214852              # double 0.37843676389195935
	.quad	0x3fd854b619f1137c              # double 0.38017036946649063
	.quad	0x3fe623b126b561b5              # double 0.69185693321474295
	.quad	0x3fe60edc5b77e274              # double 0.68931405892278841
	.quad	0x3fbb4665626d9b68              # double 0.10654290822058743
	.quad	0x3fb9f0fe42db71f0              # double 0.10133351452117956
	.quad	0x3fd024079716c094              # double 0.25219907526753471
	.quad	0x3fb2b83d38d00830              # double 0.073123766298551329
	.quad	0x3fece6937bd7b484              # double 0.90314649761207066
	.quad	0x3fd1d2500e8053b6              # double 0.27846146980419506
	.quad	0x3fec77e6a0ff8d79              # double 0.88963633961650068
	.quad	0x3fc248183670b220              # double 0.1428251519986512
	.quad	0x3fe9bf9a857d58a6              # double 0.80463911125368237
	.quad	0x3fe0b296ecdcd110              # double 0.52180048238963828
	.quad	0x3fe06c1d717c435b              # double 0.51319763341062286
	.quad	0x3fb5f7a7be6576f0              # double 0.0858101692042188
	.quad	0x3fe41cb9f7149f3b              # double 0.62850664384766419
	.quad	0x3fed04d19fd214b3              # double 0.90683823790518259
	.quad	0x3fd0684e5a8ea2e6              # double 0.25636633723710955
	.quad	0x3fe654a9781b3ee5              # double 0.69783471544539266
	.quad	0x3fe543cee98d2064              # double 0.66452737441524024
	.quad	0x3fe7ec6e2e74eb18              # double 0.74761113236977206
	.quad	0x3fe7643d6350e802              # double 0.73098630330719083
	.quad	0x3fe4e59da108fbd4              # double 0.65302926494757196
	.quad	0x3fd9c126412a3560              # double 0.40241390575177682
	.quad	0x3fc16f35c2ce2880              # double 0.13620635997751052
	.quad	0x3feb71283eeaaca6              # double 0.85756313599030842
	.quad	0x3fe692e7305f0028              # double 0.7054325051067325
	.quad	0x3fe88e690324b70f              # double 0.76738405813168409
	.quad	0x3fd3107375c3316c              # double 0.2978790903114461
	.quad	0x3fd2d32d27e8e734              # double 0.29413918397368666
	.quad	0x3fe30221c37d1209              # double 0.59401024037703209
	.quad	0x3fc87ae13c26eeb0              # double 0.19124999463189374
	.quad	0x3fef2077bd95057c              # double 0.97271334674603293
	.quad	0x3fdd7e9beb8b480e              # double 0.46085260393476879
	.quad	0x3fe670f3b7b61a9d              # double 0.70128808861848635
	.quad	0x3fc434e5719c78d4              # double 0.15786426589415348
	.quad	0x3feb7e54fbe99fc7              # double 0.85917138292006079
	.quad	0x3fea26acd7580892              # double 0.81722108897544588
	.quad	0x3fe06932bf7365a7              # double 0.51284158127525792
	.quad	0x3fe73740838117a9              # double 0.72549462971141054
	.quad	0x3fddf51da8fbb5c4              # double 0.46808568479795221
	.quad	0x3fd9e76eb6d8de28              # double 0.4047505174271202
	.quad	0x3fb1d3da5521ce28              # double 0.069638868126098985
	.quad	0x3fc52f95b4121ab0              # double 0.16551467220798122
	.quad	0x3fca17fb54f92520              # double 0.20385686539729253
	.quad	0x3fd4d9cca9540ae4              # double 0.32579342399564681
	.quad	0x3fae25448ee024d0              # double 0.058878080788483111
	.quad	0x3fbf2b16fd419ad8              # double 0.12175124819769267
	.quad	0x3fcd513d299453e4              # double 0.22904171495670689
	.quad	0x3fcfe0a56e7e4870              # double 0.24904315848522485
	.quad	0x3fc2ca6d01e496c4              # double 0.14680254547527316
	.quad	0x3fd91745cb7b2e4e              # double 0.39204544898232008
	.quad	0x3feccce588a41d12              # double 0.90001179397305209
	.quad	0x3fe9da07e88a874b              # double 0.80786509912670945
	.quad	0x3fddf919d4dfa10a              # double 0.46832891262467113
	.quad	0x3fdff31b33b3ceca              # double 0.4992130284219739
	.quad	0x3fe2d8242183d8b2              # double 0.58888441606429454
	.quad	0x3feb209227bc3013              # double 0.84772594223750486
	.quad	0x3fbafd497614dd40              # double 0.10542735226487299
	.quad	0x3fd35e17386f8dea              # double 0.30261784087471588
	.quad	0x3fccef88965713a8              # double 0.22605998364283875
	.quad	0x3fd7e138f0971868              # double 0.37312148566377923
	.quad	0x3febe8a0bfeb119a              # double 0.87214696392088631
	.quad	0x3fe531f218b1d82e              # double 0.66234688590225743
	.quad	0x3fe34307c3f0d745              # double 0.60193241376575968
	.quad	0x3fe41cc344eea4f9              # double 0.62851108039208647
	.quad	0x3fe5984afca03ed4              # double 0.67484044400222354
	.quad	0x3fe18d895c8bf1df              # double 0.54852741313476006
	.quad	0x3fe21621dad25462              # double 0.56520169008821264
	.quad	0x3fe1b841ba740fe2              # double 0.55374227921174346
	.quad	0x3fd6acd7a1d6c1b4              # double 0.3542994575937215
	.quad	0x3fd6199f6e7d9e86              # double 0.34531389036281046
	.quad	0x3fddbc8ae8138f2e              # double 0.46463272727690963
	.quad	0x3fe1783eabb280ba              # double 0.5459283212149082
	.quad	0x3fded71e2cf0ad28              # double 0.48187975300489194
	.quad	0x3fcc448b437e5c2c              # double 0.22084179683290139
	.quad	0x3fea0409de3ae7c5              # double 0.81299298672023979
	.quad	0x3fba1bcf9258dd08              # double 0.10198685954025077
	.quad	0x3fe514d05f475705              # double 0.65879076584926166
	.quad	0x3fce54e664713a54              # double 0.23696594147118566
	.quad	0x3fe52df20c4f7313              # double 0.6618585815845982
	.quad	0x3fdd83f8f3ef4f44              # double 0.46117996045835619
	.quad	0x3fc32d1d661e5418              # double 0.14981429563764048
	.quad	0x3fdf22f30e79505e              # double 0.48650814450707525
	.quad	0x3fe3f3dd886a298f              # double 0.62351872104163586
	.quad	0x3fdf6fb29704558c              # double 0.49119248149630645
	.quad	0x3fc2c08e958174f4              # double 0.14650137233812865
	.quad	0x3fe134ba645431dd              # double 0.53768653483853834
	.quad	0x3fe3048eeeb02245              # double 0.5943064367175529
	.quad	0x3fddef2223ac3992              # double 0.46772054179828004
	.quad	0x3fe952376f012c0f              # double 0.79128619843084091
	.quad	0x3fe5a040131364f1              # double 0.67581180310949496
	.quad	0x3fb69363f9f49868              # double 0.088186501049308696
	.quad	0x3fedc4ec39d29a5d              # double 0.93028842252244781
	.quad	0x3fc078ccaffd1a20              # double 0.12868651002118359
	.quad	0x3fb85d619d33a9f8              # double 0.095174885634754847
	.quad	0x3fe672a9c68e925e              # double 0.70149697094582186
	.quad	0x3fa4ae1bee4ccf30              # double 0.0403908470529174
	.quad	0x3fd9e5e946b30e50              # double 0.40465766815416249
	.quad	0x3fb08398b9f2ade0              # double 0.064508004567577881
	.quad	0x3fe71db706e0deb1              # double 0.72237731307446584
	.quad	0x3fdaa3fd2b68f9ca              # double 0.41625909079803292
	.quad	0x3fc0c5e83acb5b4c              # double 0.131039646824059
	.quad	0x3fecfff6d3b76188              # double 0.9062456259808167
	.quad	0x3fedf7e9232898ef              # double 0.93651253573332649
	.quad	0x3fde271ada375e8c              # double 0.47113677320656033
	.quad	0x3fe9fb2d28595c97              # double 0.8119111812656169
	.quad	0x3fec99d5ca0f908e              # double 0.89377870049476527
	.quad	0x3fd80de7476b8dd4              # double 0.37584859823820449
	.quad	0x3fb75ade67ffd6e8              # double 0.091230297461006082
	.quad	0x3fe18424a0c1c63e              # double 0.54738074682081339
	.quad	0x3fed67187f918434              # double 0.91883492389400212
	.quad	0x3fe45213b3310cec              # double 0.63501915930137676
	.quad	0x3feedc8d1df78eeb              # double 0.96442275860723947
	.quad	0x3fecae7b31814860              # double 0.89629897755572685
	.quad	0x3fc73a96480adb54              # double 0.18147543447204362
	.quad	0x3fe6e54602cf3ba5              # double 0.71548748539668294
	.quad	0x3fe72c32568f5aa8              # double 0.72414509683843153
	.quad	0x3fdd15c0a1b85b54              # double 0.45445266526205796
	.quad	0x3fc46bf402d0dbc0              # double 0.15954446923725918
	.quad	0x3fec7212a9105a1a              # double 0.88892491359985404
	.quad	0x3fd500f2dcba8560              # double 0.32818290286566842
	.quad	0x3fdf78e57772b236              # double 0.49175392784926275
	.quad	0x3fdf910d41f670b2              # double 0.49322825853028995
	.quad	0x3fe82496df5ad8e8              # double 0.75446647285459978
	.quad	0x3fc2ede98def1714              # double 0.14788550787323429
	.quad	0x3fed60842501e0ec              # double 0.91803176143642195
	.quad	0x3fddf895957d987c              # double 0.46829738234226403
	.quad	0x3fce2973e18df1b8              # double 0.23564003480340801
	.quad	0x3fe0373c23996800              # double 0.50674254372574978
	.quad	0x3fd904822bd7c4d6              # double 0.39090017587211656
	.quad	0x3feb10cf0d9eaaad              # double 0.84580185566058719
	.quad	0x3fecefe0ab9187bf              # double 0.90428193578213001
	.quad	0x3fe33d7c7265aa3e              # double 0.60125562995137449
	.quad	0x3fe48a03dce9436b              # double 0.6418475451156217
	.quad	0x3fe6992b0806c52d              # double 0.70619727676072375
	.quad	0x3feb0852371dd0c9              # double 0.84476576580939267
	.quad	0x3fc4d1ecbc0ffe4c              # double 0.16265639479387273
	.quad	0x3fbc8a46d783a9d8              # double 0.11148493539409488
	.quad	0x3fe8eac9249eb164              # double 0.77866036560366724
	.quad	0x3fe3b104e01112ff              # double 0.61535877001787742
	.quad	0x3fbff57c091bec98              # double 0.12483954641713735
	.quad	0x3fe3d92c3bb41035              # double 0.62026034985365774
	.quad	0x3fe61b45a873bed6              # double 0.6908291139679601
	.quad	0x3fe27b45be4b4638              # double 0.57754790465168693
	.quad	0x3fd9b8f848b5bdce              # double 0.40191466427401401
	.quad	0x3fe4ca2760d3e9b5              # double 0.64967698012997366
	.quad	0x3fe66ae915bdfbfd              # double 0.70055059668072739
	.quad	0x3fe3a26dc25c49b5              # double 0.61357772789988607
	.quad	0x3fd9a937a64f893a              # double 0.4009532093169984
	.quad	0x3fe357a584e06071              # double 0.60444904282031875
	.quad	0x3fead7754246d6f4              # double 0.83880103058501598
	.quad	0x3fcd8c715f077d44              # double 0.23084847583866452
	.quad	0x3fe7d60af4df0cf6              # double 0.74487827135490536
	.quad	0x3fe0ff9d1e188b63              # double 0.53120284917927696
	.quad	0x3fd973716ad87f42              # double 0.39767108377599325
	.quad	0x3fcb67cafea54bf4              # double 0.21410500940200416
	.quad	0x3fc643150565e0e8              # double 0.17392218364307799
	.quad	0x3fda68e4000f0b54              # double 0.41265201574076582
	.quad	0x3fe68c7bde98cfb0              # double 0.7046489093395305
	.quad	0x3fdedea613fc730e              # double 0.48233940078516546
	.quad	0x3fe27fa5e1603d8e              # double 0.57808202761400351
	.quad	0x3fe8d62073f702e6              # double 0.77613852166549857
	.quad	0x3fe866d2a9e34bc2              # double 0.76255162411904842
	.quad	0x3fd029b2f7863e0e              # double 0.25254511043837702
	.quad	0x3fe5088b43c803ed              # double 0.65729296911751833
	.quad	0x3fe4b7f3fdfc8541              # double 0.64745521170349474
	.quad	0x3fe0684e8cdbef57              # double 0.5127327681688979
	.quad	0x3fd7be05583347e0              # double 0.3709729539233404
	.quad	0x3fe840b7bc2d9cc7              # double 0.7579001117091132
	.quad	0x3fd05516f853100e              # double 0.25519346476016913
	.quad	0x3fd5943dd464a83e              # double 0.33717294446489976
	.quad	0x3fee4a15e9bb16ef              # double 0.94654365206289792
	.quad	0x3fec961cc5f1bf99              # double 0.8933242670154754
	.quad	0x3fd5e57295612372              # double 0.34212936961971885
	.quad	0x3fccd1d1ef85de5c              # double 0.22515320010619433
	.quad	0x3fcf981ab3476050              # double 0.24682935479973134
	.quad	0x3fddcec6ccd09f84              # double 0.46574563981493378
	.quad	0x3fe5a5782b10ac56              # double 0.6764489022365392
	.quad	0x3fe7d92310c8ab26              # double 0.74525597837541535
	.quad	0x3fe281e7498e3952              # double 0.57835735670395594
	.quad	0x3fa2f8cd0f640e10              # double 0.03705445111156902
	.quad	0x3fe0c192ae98adf5              # double 0.52362951374874334
	.quad	0x3fe1e61eb843f9ac              # double 0.55934082021103881
	.quad	0x3fd919dc4a7d2654              # double 0.39220340036681489
	.quad	0x3fd89e0a97c8000a              # double 0.3846460802305961
	.quad	0x3fe0d4e315a6301f              # double 0.52598718860963689
	.quad	0x3fec31e9cb0b138b              # double 0.8810929265679176
	.quad	0x3fdae6d5d012a954              # double 0.42033906287783407
	.quad	0x3febd089d168bbee              # double 0.86920634174555089
	.quad	0x3fde87423ca06584              # double 0.47700553818284441
	.quad	0x3fe6d6429205125d              # double 0.7136547901105349
	.quad	0x3fe57c931a87a1a3              # double 0.67145686322787801
	.quad	0x3fdc4467114a49a6              # double 0.44167496384138827
	.quad	0x3fecd6cb5a163b72              # double 0.90122001261793927
	.quad	0x3fe0b9ce6d6c88a9              # double 0.52268144008509865
	.quad	0x3fe90f409bebff81              # double 0.78311186269273503
	.quad	0x3fec6e9d3ec9db21              # double 0.88850271476153264
	.quad	0x3febfa45a65957f1              # double 0.87430078973807046
	.quad	0x3fe1c56e8377952f              # double 0.5553505485264959
	.quad	0x3fb63090d9d89a10              # double 0.086678555665095524
	.quad	0x3fe012ff44e964bf              # double 0.50231898745837344
	.quad	0x3fe61206a5125538              # double 0.68970043411778814
	.quad	0x3fd6369d474a21b4              # double 0.34708339654801112
	.quad	0x3fe8644dea8798f1              # double 0.76224418455674769
	.quad	0x3fe0984494f1f75f              # double 0.51858738985877639
	.quad	0x3fe25d049c67308a              # double 0.57385473773457929
	.quad	0x3fe9cf200f5eb92b              # double 0.80653384210544254
	.quad	0x3fd83436cb7cfc98              # double 0.37818689224145308
	.quad	0x3fe84fe35dc7594f              # double 0.75975197139886486
	.quad	0x3fcf9292f92c1b40              # double 0.24666058699241411
	.quad	0x3fece2489e661eb0              # double 0.90262251794134407
	.quad	0x3fe0544495c23f69              # double 0.51028661012422305
	.quad	0x3fe16b351856af90              # double 0.54433684114109049
	.quad	0x3feee1221d095b4a              # double 0.96498208686066644
	.quad	0x3feb3206bc1c2681              # double 0.84985672703005843
	.quad	0x3fd6956f5b9b48cc              # double 0.35287078805880578
	.quad	0x3fe678d1f2c263aa              # double 0.70224854864055897
	.quad	0x3f93549721d523e0              # double 0.018877374114968037
	.quad	0x3fb4f9235dfffe58              # double 0.081926546525204258
	.quad	0x3fd600d9c76a679c              # double 0.34380192255195552
	.quad	0x3fda4e2f8281e97a              # double 0.41102206940526964
	.quad	0x3fa65a9d63b0c810              # double 0.043660086077935145
	.quad	0x3fdd877e3edcb544              # double 0.4613948453796477
	.quad	0x3fe3099166827bb2              # double 0.5949179651396348
	.quad	0x3fd1a6833b7bdefc              # double 0.2757881241700344
	.quad	0x3fef90309d5f2a52              # double 0.98635130631130097
	.quad	0x3fe37c0e19de5d6d              # double 0.60889344265426149
	.quad	0x3feda36791f28689              # double 0.92619684701294702
	.quad	0x3fbac6909edac8a0              # double 0.10459236028944696
	.quad	0x3fe180711576c793              # double 0.54692892257866033
	.quad	0x3fe66223bb0e60ef              # double 0.69947992834479844
	.quad	0x3fe4430f9778ce72              # double 0.63318614563327302
	.quad	0x3fcedeee37896b60              # double 0.24117830001599838
	.quad	0x3fcc9b1c0fe79458              # double 0.22348356987564233
	.quad	0x3fe1305789467782              # double 0.53715111552786277
	.quad	0x3fdb65478ba5ae96              # double 0.4280566085569516
	.quad	0x3fead62307e11f1c              # double 0.83863975085202779
	.quad	0x3fe6d6fcb1d5eb2f              # double 0.71374354108352189
	.quad	0x3fe259fceb67b3d5              # double 0.57348485925251202
	.quad	0x3fd8d0bd0e347116              # double 0.38774038684074819
	.quad	0x3fe3d05493e7911a              # double 0.61918095481499624
	.quad	0x3feb2720453b848b              # double 0.84852612993212639
	.quad	0x3fdf59a8ea5a26e2              # double 0.48984740148499217
	.quad	0x3fea0ef15ffed929              # double 0.81432408093568143
	.quad	0x3fc55d0b460a35c4              # double 0.16690197868267209
	.quad	0x3fc2845b337fae80              # double 0.14466419233882633
	.quad	0x3fe08eddcabf470e              # double 0.51743974303301044
	.quad	0x3fe89cb415589ac0              # double 0.76912883919870723
	.quad	0x3fdd7b4daa1b2a7c              # double 0.46065084087300767
	.quad	0x3fe0a12e2a7e909f              # double 0.51967533397375465
	.quad	0x3fbca57fee1dba80              # double 0.11190032542593009
	.quad	0x3fe89a8501dcf02c              # double 0.76886225093722293
	.quad	0x3feac1ce6e0acf1e              # double 0.83615800373670246
	.quad	0x3fe3980e5c5902db              # double 0.61231153523120996
	.quad	0x3fece7ff73edb0e8              # double 0.90332005159646389
	.quad	0x3fe12bd8042f41bc              # double 0.53660202805809076
	.quad	0x3feccb7bb86f3e8f              # double 0.89983926794407576
	.quad	0x3fc9fc592976a6f4              # double 0.20301355862220982
	.quad	0x3fe078c14f457e3a              # double 0.51474061472612864
	.quad	0x3fe362da96ced048              # double 0.60581712202702764
	.quad	0x3f9d888f8e19ce00              # double 0.028841250465530877
	.quad	0x3fba470d97e754a0              # double 0.1026466842516407
	.quad	0x3fe87504e18ab7cf              # double 0.76428455401559769
	.quad	0x3fe47e7b790a687f              # double 0.64043973580125158
	.quad	0x3fa8d0c744470930              # double 0.048467852673200418
	.quad	0x3fe84a50ed83dd60              # double 0.75907179250399892
	.quad	0x3fd8dc79666c3a28              # double 0.38845667841170206
	.quad	0x3fee8b41773bdce6              # double 0.95449898994311577
	.quad	0x3fd60d2eca1a49fc              # double 0.34455461250868757
	.quad	0x3fe4475d6f9d1542              # double 0.63371154593975398
	.quad	0x3fee3fb3bf665547              # double 0.94527614004861327
	.quad	0x3fe5cd31d3a5c742              # double 0.68129817330757469
	.quad	0x3fe6566e22cbc4e9              # double 0.69805056377495334
	.quad	0x3fa5e424982bc690              # double 0.042756217551766729
	.quad	0x3fd91d36ba8a451a              # double 0.39240806786354343
	.quad	0x3fe994de34da5719              # double 0.79942236254530308
	.quad	0x3fca1543daabe2a4              # double 0.2037739579898431
	.quad	0x3fed2346727d3835              # double 0.91055605279121343
	.quad	0x3f71656fae39c480              # double 0.0042471277734971169
	.quad	0x3fd3efb8c5966a10              # double 0.31150645538005595
	.quad	0x3fc7f7d03cf20748              # double 0.18725016570902597
	.quad	0x3fe700c4721d5a32              # double 0.7188436726381211
	.quad	0x3fe17b5cbd2fbcf6              # double 0.54630886984332849
	.quad	0x3fe595c6a3e373e0              # double 0.67453319558591929
	.quad	0x3fedf6c3e11692b8              # double 0.93637269938024925
	.quad	0x3fc2cfc9d5e2f38c              # double 0.14696619933775101
	.quad	0x3fe2d342434c15cb              # double 0.58828843254075858
	.quad	0x3fe2c675918d0ccc              # double 0.58672598293233014
	.quad	0x3fe6dbaba2de1d61              # double 0.7143152409561645
	.quad	0x3fc21d2dc6c32ef0              # double 0.14151546673962612
	.quad	0x3fe7cebb303f33dd              # double 0.74398574279041052
	.quad	0x3fdf5bcc741c76e4              # double 0.48997794474585832
	.quad	0x3fcd53e99509dce0              # double 0.22912330415031246
	.quad	0x3fd9579a1990066a              # double 0.3959717988619561
	.quad	0x3fe45a45f24f280e              # double 0.6360196812249812
	.quad	0x3febd8d723ff5fa7              # double 0.87021977453968169
	.quad	0x3f9207537b3c4960              # double 0.017606071850488347
	.quad	0x3f78352d842bde00              # double 0.0059100893001793331
	.quad	0x3fe226249581ea31              # double 0.5671561164920772
	.quad	0x3fd0897a413049a8              # double 0.25839096418453744
	.quad	0x3fec9b1aa6be448d              # double 0.89393360678708833
	.quad	0x3fe5bfe752f72b13              # double 0.67967573360633293
	.quad	0x3fe2848fd884a5c9              # double 0.57868187226011358
	.quad	0x3fe51fe14a9fa567              # double 0.66014160704541502
	.quad	0x3fcee9102ee40714              # double 0.24148752488695691
	.quad	0x3fd9d4953eb055b0              # double 0.40360003587678772
	.quad	0x3fa7ec6ba5421200              # double 0.046725620196443884
	.quad	0x3fe386728c3b2f6c              # double 0.61016204251198536
	.quad	0x3fe0d4e821cfc127              # double 0.525989595449606
	.quad	0x3fe4b3a2e66f6baa              # double 0.64692826277620452
	.quad	0x3fef349df3bb59b0              # double 0.9751729736697623
	.quad	0x3fd5b47e58707974              # double 0.33914145123153294
	.quad	0x3fe698d5ff4a435f              # double 0.70615672932954598
	.quad	0x3fee23524bcf72fe              # double 0.94181170279225035
	.quad	0x3fe8bf86d5dd7dd7              # double 0.77337972422167922
	.quad	0x3fbd1691f6f80e20              # double 0.11362564353481064
	.quad	0x3f94b872b9a21fc0              # double 0.020234863834531103
	.quad	0x3fec663c3df5d13f              # double 0.88747989751440304
	.quad	0x3fbf844c363d6138              # double 0.12311245273793225
	.quad	0x3fcf1e0bf789a270              # double 0.24310445391462876
	.quad	0x3fe066acf2b005d7              # double 0.51253363990707157
	.quad	0x3fd58ba12bfb1e36              # double 0.33664731307041806
	.quad	0x3fe6ceb2a7042697              # double 0.7127316724811007
	.quad	0x3febbec1c7c94e16              # double 0.86703576107760472
	.quad	0x3fe7578eae270318              # double 0.72943815244807109
	.quad	0x3fd82b1be913188e              # double 0.37763116608801617
	.quad	0x3fecc637c5a94614              # double 0.89919651609142414
	.quad	0x3fe80e25e35d5b1a              # double 0.75172705084955571
	.quad	0x3fe7b295eb3e421a              # double 0.74055000253617043
	.quad	0x3fe18162edde8443              # double 0.54704424341992597
	.quad	0x3fdb53296054fc06              # double 0.42695078284663202
	.quad	0x3fe001347380e2b5              # double 0.5001470809866847
	.quad	0x3fefc9d504ec2fe7              # double 0.99338770829626532
	.quad	0x3feb810699fde468              # double 0.85950021816746602
	.quad	0x3fe6e4672bd73cb7              # double 0.71538122713709285
	.quad	0x3fe2b9bf5f741b70              # double 0.58517426150579688
	.quad	0x3fe481cf29a18302              # double 0.64084585314785181
	.quad	0x3fd00661a5b599e2              # double 0.25038949186855863
	.quad	0x3feb4fd76ee4e26e              # double 0.85349628123283394
	.quad	0x3fda923ecea5a786              # double 0.41517610721950182
	.quad	0x3fd6776c23586562              # double 0.35103896571816595
	.quad	0x3fe743d5863a190a              # double 0.72703052726936446
	.quad	0x3fe3feb1daf737e3              # double 0.62484066740739441
	.quad	0x3fe393f67f833fc5              # double 0.61181187538931481
	.quad	0x3fc2441c4e7b511c              # double 0.14270356971849985
	.quad	0x3fead98199ce144e              # double 0.8390510562900404
	.quad	0x3fccac6f7a27a3b0              # double 0.22401231255142084
	.quad	0x3fe5363dcd5e9f3f              # double 0.66287126647237204
	.quad	0x3fd6072a974633c0              # double 0.34418740055917496
	.quad	0x3fe8f5e9b23bdc89              # double 0.78001866160674738
	.quad	0x3fe7b1fef55f2531              # double 0.74047801899101817
	.quad	0x3fdcea0f1c5123ee              # double 0.45178582921340549
	.quad	0x3fb7bc6ad56a0410              # double 0.09271877012544416
	.quad	0x3fd6c36d1978a308              # double 0.35567786681581071
	.quad	0x3fe030003d488904              # double 0.50585948914911727
	.quad	0x3fd03614503a20ba              # double 0.25330074152635584
	.quad	0x3fc9e94efd0f06e4              # double 0.20243251186734945
	.quad	0x3fda68ef28157ee0              # double 0.41265467562150882
	.quad	0x3fde907805c54d9c              # double 0.47756767810388978
	.quad	0x3fea733492e678af              # double 0.82656315509281864
	.quad	0x3fd9b893d2848208              # double 0.40189071234092966
	.quad	0x3fe5470d57a43da8              # double 0.66492335431569405
	.quad	0x3fdd6fa0b6e65ce2              # double 0.4599382196551699
	.quad	0x3fe898b5dcce8dba              # double 0.76864140631044298
	.quad	0x3fe023b9a0944085              # double 0.50436097491366694
	.quad	0x3fd7bf98abd917ca              # double 0.37106911451371316
	.quad	0x3fd75235eb58f882              # double 0.36439273818167106
	.quad	0x3fe5905461aa675d              # double 0.67386836123771909
	.quad	0x3fd69de629e8b8fc              # double 0.35338739483530879
	.quad	0x3fe80f46ec3c6df2              # double 0.75186487331251173
	.quad	0x3fe0432ad7b06abc              # double 0.50819913985045373
	.quad	0x3fd02bedb677d4fc              # double 0.25268118685865182
	.quad	0x3fce42b82a9ad684              # double 0.23641111450495
	.quad	0x3fe9f1a51724df94              # double 0.81074766655273089
	.quad	0x3fe626cc6604d40e              # double 0.69223613668020945
	.quad	0x3fb14a4951814180              # double 0.067539770506533259
	.quad	0x3fc1ac3d4e024e10              # double 0.13806883152993565
	.quad	0x3fcc95dd77d2017c              # double 0.22332352018930723
	.quad	0x3fe377720b74c0b7              # double 0.60833074796212017
	.quad	0x3fcead34396b936c              # double 0.23966076663705438
	.quad	0x3fc742f59700653c              # double 0.18173093674776364
	.quad	0x3fe99b84102bf34e              # double 0.80023387106448651
	.quad	0x3fc0f335084d6dc8              # double 0.13242209344285372
	.quad	0x3fe8c2bb56f77ff6              # double 0.77377097116186522
	.quad	0x3fec645c09572af8              # double 0.88725091766659059
	.quad	0x3fa163a2ffb27090              # double 0.033963292801872602
	.quad	0x3fa87166f613f5a0              # double 0.047740190066160482
	.quad	0x3fea04a77b9c623d              # double 0.81306814329861476
	.quad	0x3fe8d73f12dba1f9              # double 0.77627519305411774
	.quad	0x3fdd9492661b3816              # double 0.4621931073314739
	.quad	0x3fe2965f58993f57              # double 0.58085601143282417
	.quad	0x3fea51ab6848c1b1              # double 0.82246942871102224
	.quad	0x3febb52d505305b2              # double 0.86586633385029743
	.quad	0x3fcf264a05cd9e48              # double 0.24335599215850068
	.quad	0x3fd62a24095c07d8              # double 0.34632206834805634
	.quad	0x3fe8688156f0ccfa              # double 0.76275698643294665
	.quad	0x3fdc7cf993bb54ee              # double 0.44512786318712372
	.quad	0x3fe50306af6472ea              # double 0.65661939865421215
	.quad	0x3fda6f1a097a98a8              # double 0.4130311100547126
	.quad	0x3fd2045404396022              # double 0.28151417171966575
	.quad	0x3fcc6ba77b7aae18              # double 0.22203534631022204
	.quad	0x3fd6864a44ad798c              # double 0.35194641787338621
	.quad	0x3feac44ce3ef8f3d              # double 0.83646244543749726
	.quad	0x3f85ec496b6f8080              # double 0.010704587546513489
	.quad	0x3fe745b4efa7b156              # double 0.72725912864329234
	.quad	0x3fdbf8e108650062              # double 0.43706537074831975
	.quad	0x3fd2898dee3110ac              # double 0.28964565525917396
	.quad	0x3fd12b3ce725c080              # double 0.26826403210635164
	.quad	0x3fb8b7a4d0ea1790              # double 0.096552182201860015
	.quad	0x3fdbbc1fc13ec612              # double 0.43335718032457848
	.quad	0x3fe4ebdc8b23362f              # double 0.65379168677617894
	.quad	0x3fd478879fe4cf68              # double 0.31985655417087466
	.quad	0x3fd8feba201a19a0              # double 0.39054730544048688
	.quad	0x3fe6d86bdaa30170              # double 0.71391861631859221
	.quad	0x3fd23a26c12a9a40              # double 0.28479927886874989
	.quad	0x3fee48757b96c7e6              # double 0.94634508264993822
	.quad	0x3fe8de31d87cb61a              # double 0.77712337763449857
	.quad	0x3fefa35df0d53444              # double 0.98869225537931315
	.quad	0x3fda8b3762693942              # double 0.41474709139301436
	.quad	0x3fd2eaca2e721680              # double 0.29558043037136628
	.quad	0x3fcd5b67227a1c98              # double 0.22935189422080238
	.quad	0x3fdd69d82870ab9e              # double 0.45958522748213138
	.quad	0x3fd947c0ecff8878              # double 0.39500449318268904
	.quad	0x3fd4fce92cb082d0              # double 0.32793645252426717
	.quad	0x3fe77ef8662c9beb              # double 0.73424930530461319
	.quad	0x3fdbfec6c2e74b18              # double 0.43742531808418184
	.quad	0x3fefd4697dafdcea              # double 0.99467920826182632
	.quad	0x3fc0bebaa62c02d4              # double 0.13082059015143577
	.quad	0x3fe214790b1379a6              # double 0.56499912417693987
	.quad	0x3febfa10b18db8b5              # double 0.87427553823888238
	.quad	0x3fe7c48e7fb38f73              # double 0.74274372998887228
	.quad	0x3fe247114243b124              # double 0.5711752218462931
	.quad	0x3fea8001b3e6247e              # double 0.82812581192514734
	.quad	0x3fe5ec6e9cc0d579              # double 0.68511133781309674
	.quad	0x3feb38060571fcf2              # double 0.85058880866554731
	.quad	0x3fd6125651711230              # double 0.34486921265878134
	.quad	0x3fe99a79beb63659              # double 0.80010688064948987
	.quad	0x3fc7b4712cb3df40              # double 0.18519415552850127
	.quad	0x3feb9b0b1eb97ce2              # double 0.86267620087519625
	.quad	0x3fdc1a0fd518bf3a              # double 0.4390906888029239
	.quad	0x3feefb7f7df15ad2              # double 0.9682004413433225
	.quad	0x3fabb2e7a3966c30              # double 0.054099310607135798
	.quad	0x3fe4b9b8a4c85a9b              # double 0.64767105278118053
	.quad	0x3fec4a63cf87ebb7              # double 0.8840807965601617
	.quad	0x3fe4d514efd07361              # double 0.65101095999453318
	.quad	0x3fd37fca73dd45dc              # double 0.30467473330381067
	.quad	0x3fe1f302109deb01              # double 0.56091407056314335
	.quad	0x3fcc5d35c298847c              # double 0.22159454347368868
	.quad	0x3fe98e1f29dde2e9              # double 0.79859884430979122
	.quad	0x3fecaf0642514d57              # double 0.89636528923657977
	.quad	0x3fe638594fec5907              # double 0.69437852487570317
	.quad	0x3fe9ea13958fe9d0              # double 0.80982379161224038
	.quad	0x3fee063fc0bd81d6              # double 0.9382628216226816
	.quad	0x3fc71f6ea3e25d48              # double 0.18064673425826983
	.quad	0x3fe2ad335008d30c              # double 0.58364263183338627
	.quad	0x3fe9bc304c2a769a              # double 0.80422224880358617
	.quad	0x3fdd8a0811980e2a              # double 0.46154977529679064
	.quad	0x3f93e0e2fd55c2a0              # double 0.019412562095967645
	.quad	0x3fe9b1e9878e0b43              # double 0.80296780086096253
	.quad	0x3fced504206b40e8              # double 0.24087573607403745
	.quad	0x3fa6281f3db71770              # double 0.043274856837839049
	.quad	0x3fcfb49e385933a4              # double 0.2476995253695381
	.quad	0x3fae57e053c20830              # double 0.059264192795140835
	.quad	0x3fe1b72667f253e8              # double 0.55360718061512859
	.quad	0x3fd90c843e8101a4              # double 0.39138895133876361
	.quad	0x3fe7136f35e0063a              # double 0.72112236521224493
	.quad	0x3fe1a31e7c983a0e              # double 0.55116199812784017
	.quad	0x3fee446d370302e0              # double 0.94585285896763693
	.quad	0x3fee801b070dc5f1              # double 0.95313788774200081
	.quad	0x3fe250f2c2968724              # double 0.57238138204067868
	.quad	0x3fbff70305a82768              # double 0.12486285102946015
	.quad	0x3fecfcdfc36e5457              # double 0.90586841745483582
	.quad	0x3fe05397f41d1fd2              # double 0.51020429304571224
	.quad	0x3fae44f3505da840              # double 0.059119800148281332
	.quad	0x3fe6c4c1479fa1b4              # double 0.71151794423081194
	.quad	0x3fbe75087aa268f0              # double 0.11897328371052018
	.quad	0x3fee032a8ad96267              # double 0.93788649672485469
	.quad	0x3fb7d358dd9ae4b0              # double 0.093068651297374627
	.quad	0x3fe6fbdf1eeec9aa              # double 0.71824604074054332
	.quad	0x3fef5862404de1eb              # double 0.97953903731746316
	.quad	0x3fdbae87381688a4              # double 0.4325273559317202
	.quad	0x3fd50f2b40dcc1e0              # double 0.32905083975040661
	.quad	0x3fd5ae9eb1544624              # double 0.33878295247368073
	.quad	0x3feaf16a4bf392cf              # double 0.84196963152188598
	.quad	0x3fe9621eefdbb3b6              # double 0.79322764251047917
	.quad	0x3feb4f62259910a0              # double 0.85344035476056845
	.quad	0x3fe24ae5f2cfa3dd              # double 0.57164285110513513
	.quad	0x3fe7c0203c441f50              # double 0.74220287104342653
	.quad	0x3febb0bed678c6ed              # double 0.86532537354488925
	.quad	0x3fcb5f5ccbbaf5e4              # double 0.21384773204583418
	.quad	0x3fab83e0e6bfdb10              # double 0.053740528266578491
	.quad	0x3fdababe54714492              # double 0.41764791723569161
	.quad	0x3fed972f77bd646f              # double 0.92470525156671879
	.quad	0x3fc96d28a46ef6a8              # double 0.19864376095749958
	.quad	0x3fe5649de526fd35              # double 0.66853232151326003
	.quad	0x3fc6679fb2c21b18              # double 0.17503734806469917
	.quad	0x3fe5596ab9a74422              # double 0.66716514835764351
	.quad	0x3fcc13df031be964              # double 0.21935641910369974
	.quad	0x3fd151c5b52ae626              # double 0.27061598484178473
	.quad	0x3fe41c88bb78c34e              # double 0.62848316779682434
	.quad	0x3fe17f7ab576b1fa              # double 0.54681144182319419
	.quad	0x3fe4fa2c08c1eec3              # double 0.65553857527216797
	.quad	0x3fe9cf6a56086bd7              # double 0.80656925967502502
	.quad	0x3fd17e88aaac8fdc              # double 0.27334801356687222
	.quad	0x3fef91af1e58388d              # double 0.98653369833643156
	.quad	0x3fadef3b09102a60              # double 0.058465809685078751
	.quad	0x3fbf65ad03b0b660              # double 0.12264520015806957
	.quad	0x3fde0d44e86b9c20              # double 0.46955988595294862
	.quad	0x3fb8fc400c084758              # double 0.09759903234251277
	.quad	0x3fa2875fe5958d00              # double 0.036189076209462101
	.quad	0x3fde5b7571855fc6              # double 0.47433219991716802
	.quad	0x3fc4ee37b03de4ec              # double 0.1635198221736468
	.quad	0x3fcc76009b44606c              # double 0.22235114652062593
	.quad	0x3fe5f467851ed7f7              # double 0.68608451843351659
	.quad	0x3fe144feb865adde              # double 0.53967224135470437
	.quad	0x3fc725e4036b6384              # double 0.18084383170096541
	.quad	0x3f9d33d5160d21a0              # double 0.028518037291435427
	.quad	0x3febefef6a069af5              # double 0.87303896625675625
	.quad	0x3fd14df55e0162d8              # double 0.27038320713249453
	.quad	0x3febe7472fff4a59              # double 0.87198218702753671
	.quad	0x3fa0ec891bfaec60              # double 0.033054623284862528
	.quad	0x3fb50a3c8566e1f8              # double 0.082187445229358391
	.quad	0x3f7256c754d29900              # double 0.0044772898083123014
	.quad	0x3fce54e5d0a1efe8              # double 0.23696587264191682
	.quad	0x3fdd79022a21c70a              # double 0.46051076998183815
	.quad	0x3fb85798f74b73d8              # double 0.095086632132236004
	.quad	0x3f8842c805290f00              # double 0.011846125276071984
	.quad	0x3fd43ad97b3d9dc8              # double 0.31609189067100063
	.quad	0x3fe7696001235f6e              # double 0.73161316129970344
	.quad	0x3fe16fee14955fb7              # double 0.54491333027089339
	.quad	0x3fa2505e54137230              # double 0.035769412768534514
	.quad	0x3feb778b60624608              # double 0.85834282708145881
	.quad	0x3fde2b4d3975eafc              # double 0.47139292346371042
	.quad	0x3fd8f583cd844a3a              # double 0.38998503751750813
	.quad	0x3fdf16d4423773ba              # double 0.48576837984529286
	.quad	0x3fecc93a5faf217b              # double 0.89956396759320911
	.quad	0x3fe47c3bea7ba0ee              # double 0.64016528890081559
	.quad	0x3fe0402c6d272025              # double 0.50783368414795815
	.quad	0x3fcaaabb35e5434c              # double 0.20833530551547097
	.quad	0x3fdfc20f0ac7b7a8              # double 0.49621940663097996
	.quad	0x3fa45425f639bdb0              # double 0.039704500490980066
	.quad	0x3fc22446fa62a1c4              # double 0.14173209405750076
	.quad	0x3fe771fdd1913de1              # double 0.73266497546313414
	.quad	0x3fe348cbfd422f81              # double 0.60263633217390133
	.quad	0x3fc06a33876e44d8              # double 0.12824100601986888
	.quad	0x3fd6100f8a8bd254              # double 0.34473026780986982
	.quad	0x3fc66e98735a180c              # double 0.17525010712068967
	.quad	0x3fe35ce260c1b424              # double 0.60508841417106796
	.quad	0x3fee6c0affb4ed25              # double 0.95068883841250751
	.quad	0x3fcc68fa33c7d698              # double 0.22195365455961702
	.quad	0x3fbddc4e861b0f50              # double 0.11664286397995949
	.quad	0x3fe74f093fc4c568              # double 0.72839796500026655
	.quad	0x3fe833606e7bd21b              # double 0.75627156809656826
	.quad	0x3fd3fd71266d159e              # double 0.3123438716177932
	.quad	0x3fd239b7ab09457a              # double 0.28477279379611498
	.quad	0x3fd9ae001a5e0142              # double 0.40124514174387482
	.quad	0x3feb1bc4ed85aff5              # double 0.84713980094011154
	.quad	0x3fe1b15f2528b2bb              # double 0.55290181405651795
	.quad	0x3fd7c3398066ec8e              # double 0.37129056491148382
	.quad	0x3fdaddaa216c5840              # double 0.41977933181749805
	.quad	0x3fc4ef182282ac38              # double 0.1635465782650003
	.quad	0x3fb8d1b2af107520              # double 0.096949737301163185
	.quad	0x3fe9862fb7d471da              # double 0.79763017563123673
	.quad	0x3fddfb1dcd5db032              # double 0.46845192961950766
	.quad	0x3fcf9a99fbf59dbc              # double 0.24690556338030756
	.quad	0x3fc336d8d2699cf8              # double 0.15011129640627252
	.quad	0x3fc1925e316b26b0              # double 0.13727929509177761
	.quad	0x3fe1de52606caa3f              # double 0.55838888962654909
	.quad	0x3fe1b5b5d28264e8              # double 0.55343142619235852
	.quad	0x3fd525a4041517ce              # double 0.33042240523024879
	.quad	0x3feb25875f7329ba              # double 0.84833115236806766
	.quad	0x3fcb834e7d5ae734              # double 0.21494465943197272
	.quad	0x3fc8d1d8d4647d78              # double 0.19390402193765133
	.quad	0x3fd07cd8a89f62f0              # double 0.25762001483012309
	.quad	0x3fdc6a3e7603ecbe              # double 0.44398461842474635
	.quad	0x3fe1c8284ca7d445              # double 0.55568327876847745
	.quad	0x3fd9d83393a656f0              # double 0.40382089060709259
	.quad	0x3fdcf9686b9fc5d8              # double 0.45272264967124221
	.quad	0x3fd62d1005bc05e8              # double 0.34650040206915245
	.quad	0x3fe1d6a774cae84b              # double 0.55745289622360283
	.quad	0x3fe9c470e63ab93c              # double 0.80522961584737329
	.quad	0x3fe59ff65187ad22              # double 0.67577663348985006
	.quad	0x3fdf925401e67056              # double 0.49330616174279862
	.quad	0x3f8a30005ecf2400              # double 0.012786867993684226
	.quad	0x3fe8d1c8fb5f94cb              # double 0.77560853096351801
	.quad	0x3fd621162f8b0270              # double 0.34576944964286493
	.quad	0x3fdad6095ea91ef4              # double 0.41931375736429222
	.quad	0x3fca999667fed518              # double 0.20781211927320764
	.quad	0x3fda1694daba3b5e              # double 0.40762826309303601
	.quad	0x3fd414df9a4f0d44              # double 0.31377401417940498
	.quad	0x3f8a0b508d5bebc0              # double 0.012716893495498982
	.quad	0x3fe5d8f1d7d98636              # double 0.68273250730653134
	.quad	0x3fe39f1c0eb2f257              # double 0.61317255850696994
	.quad	0x3fec0f2815cce3b7              # double 0.87685016878014366
	.quad	0x3fc635928bd32418              # double 0.17350990130788158
	.quad	0x3fbd5d8fc1e052e0              # double 0.11470888598735085
	.quad	0x3fe2f4469298651b              # double 0.59231880790608515
	.quad	0x3fc930b7cbafcb98              # double 0.19679925389899888
	.quad	0x3feeb6175bcf52ee              # double 0.95972793513882748
	.quad	0x3fa91a1f7ba69470              # double 0.049027427524642841
	.quad	0x3fe72a1ed9549b88              # double 0.72389166304934438
	.quad	0x3fdfe8ac69a2a730              # double 0.49857626262620425
	.quad	0x3fd1e4b4b9d14eec              # double 0.2795841040253737
	.quad	0x3fdbb18a5244fcd6              # double 0.43271120103959271
	.quad	0x3fba547c8149c810              # double 0.10285165935945906
	.quad	0x3fce1e4534d4c3c0              # double 0.23529877738613258
	.quad	0x3fdbf9a826cbf900              # double 0.4371128443598451
	.quad	0x3fdeea68ee2baa38              # double 0.48305724390835136
	.quad	0x3fe8740c2ebfcae8              # double 0.76416596537305015
	.quad	0x3fdb9948962fc930              # double 0.43123068491617556
	.quad	0x3fe8e3aa182fd37e              # double 0.77779106830585909
	.quad	0x3fe8a0fc02f54579              # double 0.76965141847374163
	.quad	0x3fd61a2ad539620e              # double 0.34534712622328889
	.quad	0x3f9214a008a22de0              # double 0.017656803633640084
	.quad	0x3fb77af9fb56a4c8              # double 0.091720222341467594
	.quad	0x3feac93db7a45003              # double 0.83706556193874382
	.quad	0x3fb58e191d8072d8              # double 0.08419949503190638
	.quad	0x3fe1cbb8ad079891              # double 0.55611833376748809
	.quad	0x3fe20173a6733322              # double 0.56267721662297654
	.quad	0x3fe90f116553080d              # double 0.78308934965048282
	.quad	0x3fe7df4581a692f4              # double 0.74600482294462589
	.quad	0x3fe674c5b234dd53              # double 0.70175442510564279
	.quad	0x3fd683a2a5b1c338              # double 0.35178438359348574
	.quad	0x3f94047ae9aa3f40              # double 0.019548340331822844
	.quad	0x3fd4860e1b032ff2              # double 0.32068207395491222
	.quad	0x3fd1425bedab5288              # double 0.26967523774991564
	.quad	0x3feff7aa94dfb572              # double 0.99898270680357215
	.quad	0x3fd118f1ce744310              # double 0.2671474949029724
	.quad	0x3fe5c2f9e4bfe136              # double 0.68005079915659539
	.quad	0x3fbc603e0c3db710              # double 0.11084354208807334
	.quad	0x3fec530ff2cbc295              # double 0.88513944073754891
	.quad	0x3fda6cc2c9e7e9c0              # double 0.41288823811887809
	.quad	0x3fd92204529460dc              # double 0.39270122589506484
	.quad	0x3fc1e8067a5884f4              # double 0.13989335035243011
	.quad	0x3fe05c3f8820e9db              # double 0.51126076305018431
	.quad	0x3fed5634c2d97461              # double 0.916773205342576
	.quad	0x3feae4dd90931adc              # double 0.84043768155319353
	.quad	0x3fecbc830bd6d68a              # double 0.89801170646997375
	.quad	0x3fb3527b998c2cc8              # double 0.075477337825009205
	.quad	0x3feec21093919777              # double 0.96118954488768693
	.quad	0x3fefe1d9d7a3b4e3              # double 0.99631969563565936
	.quad	0x3fef860f12dca2e6              # double 0.98511460956532626
	.quad	0x3fe067a6aa16e408              # double 0.51265271397198919
	.quad	0x3fd1380782aeb0d2              # double 0.26904475938750949
	.quad	0x3fe66e08733f603c              # double 0.70093176373757826
	.quad	0x3fe9e289823579cc              # double 0.80890345984863065
	.quad	0x3fb2abf1445da8a8              # double 0.072936133566744332
	.quad	0x3fd4cba19a601c84              # double 0.32492866588331304
	.quad	0x3fe3a07a214024c3              # double 0.61333948606729682
	.quad	0x3fee9eeea16f583f              # double 0.95690089731466077
	.quad	0x3fee87a442ca9a1a              # double 0.95405781789014843
	.quad	0x3fe6a09e1c95a1a2              # double 0.70710664351377184
	.quad	0x3fe942376a3932e3              # double 0.78933306452526286
	.quad	0x3fe4c59762eaea8b              # double 0.64912003822185349
	.quad	0x3fee40af512026e3              # double 0.94539609761087851
	.quad	0x3fe02e0b834eae92              # double 0.50562072416274106
	.quad	0x3fbccad79fbcbee0              # double 0.11247012758098718
	.quad	0x3fcfc8fa7d3b3ea0              # double 0.24832087626281396
	.quad	0x3fef7d5ec1638776              # double 0.98405397197005473
	.quad	0x3feab10affe18e6e              # double 0.83411169029973364
	.quad	0x3fce60b97503c53c              # double 0.23732679570779591
	.quad	0x3fd84b056ae77a86              # double 0.37957892837395268
	.quad	0x3fdc28618ceb0e4c              # double 0.43996466409246149
	.quad	0x3fcc77e7bea492d0              # double 0.22240921791776325
	.quad	0x3fe03797eec0e59f              # double 0.50678631431144427
	.quad	0x3fe49a89f0ecd9a3              # double 0.64386460357382125
	.quad	0x3fea831e6d02766e              # double 0.82850571909848525
	.quad	0x3fc8d9ab4e7f6dc0              # double 0.19414273579501007
	.quad	0x3fe0a8744cf59c86              # double 0.52056326895844118
	.quad	0x3fe90bb9c90c9c3c              # double 0.78268136279519451
	.quad	0x3fee94f0dabdbc82              # double 0.95568125460512499
	.quad	0x3fbbc50c1122e608              # double 0.1084754506909108
	.quad	0x3fe5a8e5774ac179              # double 0.67686723040792096
	.quad	0x3fe87311f379737f              # double 0.76404664567563418
	.quad	0x3fe9e4f0ebacff97              # double 0.80919691114830783
	.quad	0x3fe6586675ff575c              # double 0.69829104467747127
	.quad	0x3fd5c265d580d8e0              # double 0.33999009942944092
	.quad	0x3f818f1d71538880              # double 0.0085737514695589656
	.quad	0x3fe435d13625600a              # double 0.63156948638334254
	.quad	0x3fe86a93207fc1e7              # double 0.76300960872145829
	.quad	0x3fe5eb65bbb26413              # double 0.68498503360308616
	.quad	0x3fe2b4f27453d0f9              # double 0.58458826751896631
	.quad	0x3fda2cedcaf47d68              # double 0.4089922410948561
	.quad	0x3fe74f941bcc97d8              # double 0.7284641783669441
	.quad	0x3fd7d278bde6d21e              # double 0.37222116990167986
	.quad	0x3fdd43867eaffe96              # double 0.45724642154525819
	.quad	0x3fee9607e7442f56              # double 0.95581431550224738
	.quad	0x3fe8371c9a911315              # double 0.75672750653083887
	.quad	0x3fd0422fbe52842a              # double 0.25403970323719938
	.quad	0x3fd1c5cb884fb7ba              # double 0.277697451702689
	.quad	0x3fdceb8181f230e8              # double 0.4518741387371521
	.quad	0x3fda5be56e2f549a              # double 0.41185889969103473
	.quad	0x3fd8c934bd9b4d28              # double 0.38728064075731305
	.quad	0x3fd46942d4e08cda              # double 0.3189246252897654
	.quad	0x3fca0b2b4ce58c2c              # double 0.20346585516662807
	.quad	0x3fecd896162c5c92              # double 0.90143875437469689
	.quad	0x3fd643bac6350bee              # double 0.34788388591931507
	.quad	0x3fe25f1607e1f3f3              # double 0.57410718478752043
	.quad	0x3fd802b3f1b91a0c              # double 0.37516497236029589
	.quad	0x3fe39480d81ea51e              # double 0.61187784396057388
	.quad	0x3fa17a914c167590              # double 0.034138241327336449
	.quad	0x3fcfa4067b70a824              # double 0.24719315554949717
	.quad	0x3fcb2ebc5e4b46d8              # double 0.21236376384927413
	.quad	0x3fde461459cbc23e              # double 0.47302731293806122
	.quad	0x3fd021b64d7323b0              # double 0.25205762446835944
	.quad	0x3fecc92298df1224              # double 0.89955263002099572
	.quad	0x3feba53493534126              # double 0.86391667150931961
	.quad	0x3fe311a3779bb858              # double 0.59590314255707266
	.quad	0x3fe51eba87803f0f              # double 0.66000105347663574
	.quad	0x3fe80a84442bbf2f              # double 0.7512837726080529
	.quad	0x3fef43f87de7fca1              # double 0.97704720107130438
	.quad	0x3fcd649d0313b1b0              # double 0.22963297510376668
	.quad	0x3feed4dc3567ef96              # double 0.96348390990123067
	.quad	0x3fd04b846b41d0d0              # double 0.25460920786214292
	.quad	0x3feaeb4aecc4b7dd              # double 0.84122225040277565
	.quad	0x3fecd15ec29f595a              # double 0.90055788051794683
	.quad	0x3fe88c6f3134c92c              # double 0.7671428643282403
	.quad	0x3fd9e739d77a4f7a              # double 0.40473791163207518
	.quad	0x3feb23b2dca7f008              # double 0.84810774895550001
	.quad	0x3fea816df2c1f57b              # double 0.82829949773410705
	.quad	0x3fd68ebaf561f3cc              # double 0.35246156657359218
	.quad	0x3fb945a90b6af228              # double 0.098719182288683371
	.quad	0x3feddb4548bf771a              # double 0.93301643570495973
	.quad	0x3fe2a9e4722e1bdc              # double 0.58323881436160319
	.quad	0x3fdd1ba6c8010f28              # double 0.45481271297124914
	.quad	0x3fe46689f22dee5a              # double 0.63751694965999239
	.quad	0x3fbf01bb3f1a4b08              # double 0.12112016954987948
	.quad	0x3fc6c6567ffafb14              # double 0.17792779206316622
	.quad	0x3fef2056e6947623              # double 0.97269768748418916
	.quad	0x3fd44f91315b162c              # double 0.31735639400389704
	.quad	0x3fc2072a8e816758              # double 0.14084369619632287
	.quad	0x3feb6943c1ed2cbb              # double 0.85659969211828668
	.quad	0x3fb76016fdf8f710              # double 0.091309964184770331
	.quad	0x3fdf07d738be7d98              # double 0.48485355893532178
	.quad	0x3fe467c165d88004              # double 0.63766546146143854
	.quad	0x3fb6dad879fcbf28              # double 0.089276819021276155
	.quad	0x3fece926f3072d8b              # double 0.90346095529950909
	.quad	0x3fee64bd3cff4220              # double 0.94979726708885792
	.quad	0x3fdf302966233a0e              # double 0.48731455778480004
	.quad	0x3fb9b9e9eb7128c8              # double 0.10049306867691421
	.quad	0x3fcd5dc577ff2a90              # double 0.22942417487350442
	.quad	0x3fd421cdd69c0990              # double 0.31456323583565737
	.quad	0x3fe2504300308927              # double 0.57229757344274368
	.quad	0x3fd1b132928d3b50              # double 0.27644028007209887
	.quad	0x3f7d3b4b40bc5480              # double 0.0071366252484682535
	.quad	0x3fdfade44283c970              # double 0.4949885034140129
	.quad	0x3fda648e71273fdc              # double 0.41238747644547202
	.quad	0x3fd45fcc01a2b9da              # double 0.31834697875720297
	.quad	0x3fd341483bf6aa38              # double 0.30085950713933896
	.quad	0x3fe443a35c34f2e4              # double 0.633256607142894
	.quad	0x3fe77fd086453a42              # double 0.73435236191455311
	.quad	0x3fefa6fac8b85ada              # double 0.98913325503493899
	.quad	0x3fd6a015b6a0d746              # double 0.35352080187600554
	.quad	0x3febce0d754053df              # double 0.86890290165558415
	.quad	0x3fdc545db58171ae              # double 0.4426492950931572
	.quad	0x3fe6e337ff39cd45              # double 0.71523666237627792
	.quad	0x3fe171c546bac6d6              # double 0.54513801397680584
	.quad	0x3fe6543a04a1eb41              # double 0.69778157143387187
	.quad	0x3fda6e81edfd8950              # double 0.41299484483001425
	.quad	0x3fef96a59519bd97              # double 0.98713950272751815
	.quad	0x3fe1905496847c69              # double 0.5488684596820238
	.quad	0x3fd533c4d8401d34              # double 0.33128472440917567
	.quad	0x3fb14976f486adc0              # double 0.067527231882812622
	.quad	0x3fccc8182a59f274              # double 0.22485639636933608
	.quad	0x3fe4c19593582188              # double 0.64863089349914649
	.quad	0x3fd3147f871d51dc              # double 0.29812610811975815
	.quad	0x3fda90ab1a291e74              # double 0.4150798564410032
	.quad	0x3fe9225215f898c9              # double 0.78543953219630069
	.quad	0x3fe1c9bf23bdb86e              # double 0.55587727528269482
	.quad	0x3fd8e9f53e441142              # double 0.38927966194775732
	.quad	0x3fc700b14c08d810              # double 0.17970863545059546
	.quad	0x3fe10face6aec191              # double 0.53316350035861337
	.quad	0x3fe3c023088d227c              # double 0.61720420522858843
	.quad	0x3fd64e178b105182              # double 0.34851635532802316
	.quad	0x3fbcf51cf26e6800              # double 0.11311512869579587
	.quad	0x3fe21228aef02b27              # double 0.56471666495904038
	.quad	0x3fb892196f121898              # double 0.09597929917990411
	.quad	0x3fcd671203baf04c              # double 0.22970795805111022
	.quad	0x3fd782f30b62ecf8              # double 0.36736751663165945
	.quad	0x3fe9c7a20151a3a5              # double 0.80561924226377768
	.quad	0x3fdc55cc5119a43c              # double 0.44273670120179864
	.quad	0x3febf39940e72b1e              # double 0.8734861629139663
	.quad	0x3fe1eb080d15bbd9              # double 0.55994036250728663
	.quad	0x3fe014bcdcac71ad              # double 0.50253146267237059
	.quad	0x3fd3ca27b67699c8              # double 0.3092135698192604
	.quad	0x3fec1aff6fc5de58              # double 0.8782956297936364
	.quad	0x3fd0fae5512c6b64              # double 0.26531346251583998
	.quad	0x3fa5477ee9894750              # double 0.041561094291536649
	.quad	0x3fbbe446337ebb58              # double 0.10895193822100901
	.quad	0x3fa0b08285a25e10              # double 0.032596663296484363
	.quad	0x3fe19abb813df66f              # double 0.55013823740564571
	.quad	0x3fe9674d90f9dfe7              # double 0.79386022868766026
	.quad	0x3fe41c4b419df725              # double 0.62845385375814955
	.quad	0x3fd050d1a07255f6              # double 0.25493279141059533
	.quad	0x3fd51e262340a51e              # double 0.32996514742497307
	.quad	0x3fe47909255aa588              # double 0.63977486892433522
	.quad	0x3fe433bac70dcad1              # double 0.63131464841566232
	.quad	0x3fdbcee9712f21ee              # double 0.43450389912734877
	.quad	0x3fb3304182f34b40              # double 0.07495507666616863
	.quad	0x3fefa07aabc98a38              # double 0.98833974411201719
	.quad	0x3fe82925ed411e4a              # double 0.755022967708052
	.quad	0x3fe99d32fc583b19              # double 0.80043935094895169
	.quad	0x3fecaaf963f887e0              # double 0.89587087178756164
	.quad	0x3fd198474dea6b04              # double 0.27491934403376228
	.quad	0x3fe5e60f3136d7bc              # double 0.68433341610101861
	.quad	0x3fee78b27a9884b0              # double 0.95223354286658513
	.quad	0x3fec2e8ed8547ad2              # double 0.88068334819748828
	.quad	0x3fe55ab3e6069663              # double 0.66732211043263268
	.quad	0x3fe6590d87c8e9a0              # double 0.69837070961448333
	.quad	0x3fe597b6b6864b0f              # double 0.67476974152882174
	.quad	0x3fb7df8f8eb61ce8              # double 0.093255016652722511
	.quad	0x3fe16313d0ef629f              # double 0.54334441001545375
	.quad	0x3fef7a476fe4ffca              # double 0.98367664198303228
	.quad	0x3fe49bab1d1c020e              # double 0.64400249181204727
	.quad	0x3fc9b58c9c3cbae8              # double 0.20085294369479034
	.quad	0x3feb19aa7a72b556              # double 0.84688304820671578
	.quad	0x3fe1f3922bab06ca              # double 0.56098278550072078
	.quad	0x3fd8520a6861d850              # double 0.38000736421179671
	.quad	0x3fbf006c7d4d9f80              # double 0.12110021647606395
	.quad	0x3fe9d800305c4e67              # double 0.80761727757858359
	.quad	0x3febd0d3f828b542              # double 0.86924169987256783
	.quad	0x3feef670c77e6e73              # double 0.96758307422301326
	.quad	0x3fe8011a2910f297              # double 0.75013454457037454
	.quad	0x3fe1f3d936499a6d              # double 0.56101666071920209
	.quad	0x3fe8e7c85da0fc00              # double 0.77829378401645499
	.quad	0x3fe111dcd6cb2afa              # double 0.53343049957160749
	.quad	0x3feb4c1f377d1109              # double 0.85304222905736637
	.quad	0x3fe079adcbd9ebc5              # double 0.51485338034341821
	.quad	0x3fccf3f649d8a4bc              # double 0.22619513135695068
	.quad	0x3fe8fe6c983a3d52              # double 0.78105764133389699
	.quad	0x3fe2e5e52b89d477              # double 0.59056337836831474
	.quad	0x3fe81c0016d431fa              # double 0.75341801127211672
	.quad	0x3fe114dc4d4fdb48              # double 0.53379645442951418
	.quad	0x3fe085739a13890a              # double 0.51629047482518442
	.quad	0x3fe17883f5181167              # double 0.54596135969090376
	.quad	0x3fcf3c93abb51444              # double 0.24403615841052517
	.quad	0x3fe316105bb9a079              # double 0.5964433471208529
	.quad	0x3fe8a3609b9d185c              # double 0.76994352715770331
	.quad	0x3fc8965783ce5a48              # double 0.19208806930392286
	.quad	0x3fb2e5854fd13a28              # double 0.073814708696979481
	.quad	0x3fe25403ec6cc700              # double 0.57275577713718917
	.quad	0x3fe909d3c97e03d1              # double 0.78244962076143498
	.quad	0x3fb5295af3316730              # double 0.082662281392370529
	.quad	0x3feb3018633caf2c              # double 0.84962100393520278
	.quad	0x3fed031ae1e76ef7              # double 0.90662902948267188
	.quad	0x3fed7947535871c0              # double 0.92105451849379704
	.quad	0x3fb9148265089c38              # double 0.097969197908796768
	.quad	0x3feaf48c8edd31b7              # double 0.84235217955715924
	.quad	0x3fea1a3b77048392              # double 0.81570218320495003
	.quad	0x3feb60763dacd852              # double 0.85552513166363497
	.quad	0x3fd90df7b8103b40              # double 0.39147751784269147
	.quad	0x3fde51a37580c418              # double 0.47373281931783273
	.quad	0x3fa4b5ad30a16950              # double 0.040448581873266165
	.quad	0x3fe0b758ed112a65              # double 0.52238127042921845
	.quad	0x3fe293f57116f29a              # double 0.58056137168712785
	.quad	0x3fb7b3149ac7b060              # double 0.092576301372618186
	.quad	0x3fe1f2533d29a085              # double 0.56083070703336146
	.quad	0x3fd699a8d3b4bb26              # double 0.35312863039409803
	.quad	0x3fe68b6f8197ce40              # double 0.70452094374781637
	.quad	0x3fef4bfccb17da6f              # double 0.97802581469188776
	.quad	0x3fe6cc12c43cb72a              # double 0.7124112923390602
	.quad	0x3fdc922c25cca326              # double 0.44642165843338188
	.quad	0x3f82f5f7dd254ac0              # double 0.0092582096446326422
	.quad	0x3fba7bea5e37c940              # double 0.10345330047838264
	.quad	0x3fd5639e56517dc6              # double 0.3342052309944531
	.quad	0x3fec58a7b7b88071              # double 0.88582216151190896
	.quad	0x3fe95d7e2e557c10              # double 0.79266270684809292
	.quad	0x3fceedfa524ef1ac              # double 0.24163750666583661
	.quad	0x3fd43c19a0bfc1f4              # double 0.31616821954869967
	.quad	0x3fd5e4393ff6ff52              # double 0.3420546650559021
	.quad	0x3fe4386865b5a5fc              # double 0.63188571801327909
	.quad	0x3fed7f38b57063a9              # double 0.92177997052487115
	.quad	0x3fe63c3a1e1108f7              # double 0.69485193130847633
	.quad	0x3fea79fa544cfbe0              # double 0.82738987412437481
	.quad	0x3fd24e212a2c4618              # double 0.28601864927722565
	.quad	0x3fefd40abd0b2751              # double 0.9946340267426682
	.quad	0x3feef73414ce078f              # double 0.96767620147169164
	.quad	0x3fd93bbe48b2a918              # double 0.39427144145396786
	.quad	0x3fdb5f69e3d3939a              # double 0.42769858597449117
	.quad	0x3fe1982103bd031d              # double 0.54982043008940062
	.quad	0x3fda7b6f2dd1fb92              # double 0.41378383135445873
	.quad	0x3fe70addc1388c5f              # double 0.72007644403891991
	.quad	0x3fc8daa655e80df0              # double 0.19417266077662942
	.quad	0x3fae859f0e220e50              # double 0.059613199687217233
	.quad	0x3fe489ea5a1abc73              # double 0.64183538054011391
	.quad	0x3fe85677d1d12fb1              # double 0.76055518131169297
	.quad	0x3fbce1ce12be4aa8              # double 0.11282051045990704
	.quad	0x3fe8bffb207d044f              # double 0.77343517632847092
	.quad	0x3fabecddc92384d0              # double 0.054541521838254448
	.quad	0x3feb8c00c1964492              # double 0.86084020433385633
	.quad	0x3fef02178de32e75              # double 0.96900537216556748
	.quad	0x3fdbc948cf34b1a0              # double 0.43416042551941736
	.quad	0x3fc152cfe7f80b84              # double 0.13533972574813558
	.quad	0x3fef67aa59e12752              # double 0.98140447191802083
	.quad	0x3fe27cda8f532ff0              # double 0.57774093621401157
	.quad	0x3fe07b5dae181240              # double 0.51505931856861054
	.quad	0x3fc1077e36ec1de0              # double 0.13304116899256169
	.quad	0x3fe544f76bb59441              # double 0.6646687606522691
	.quad	0x3fef40690cedb3b4              # double 0.97661259198286254
	.quad	0x3fde473f80e8cfde              # double 0.473098636520488
	.quad	0x3fe78fc0ab726b5f              # double 0.73629792676670636
	.quad	0x3fe8baf9143cdf9e              # double 0.7728238482732086
	.quad	0x3fca0270cdc4d320              # double 0.20319948241526564
	.quad	0x3fa00ce50a727980              # double 0.031348378682412026
	.quad	0x3fe9ef3b8291f30f              # double 0.81045318128562538
	.quad	0x3fe71bfc9ab0773a              # double 0.72216634953267733
	.quad	0x3fe85822483eae56              # double 0.76075853452989395
	.quad	0x3fdba2035f9b4702              # double 0.43176349960877769
	.quad	0x3fee7bb6ea4ec655              # double 0.95260186923241952
	.quad	0x3fd0c86c075a4650              # double 0.26223278730421828
	.quad	0x3fd1ab6af5f839b8              # double 0.27608751316520452
	.quad	0x3fd008c872cc11f8              # double 0.25053607187899685
	.quad	0x3fee4fd6ac0ca234              # double 0.94724591830624271
	.quad	0x3fef7f89bab6db87              # double 0.98431860416063521
	.quad	0x3fd12930e3dbdcd6              # double 0.26813909770812694
	.quad	0x3feac2bed29cbb9c              # double 0.83627263198092149
	.quad	0x3fe0890368d9687a              # double 0.51672525862092233
	.quad	0x3fdbbb45fd430bee              # double 0.4333052609692335
	.quad	0x3f9452e9d7959500              # double 0.019847539694997529
	.quad	0x3fe74a0a3d8240e8              # double 0.72778808606565537
	.quad	0x3fe506d4561c1aa5              # double 0.65708367174450599
	.quad	0x3fe3490c9b5b75d2              # double 0.60266714423385737
	.quad	0x3fbabf6911693e28              # double 0.10448319125247763
	.quad	0x3fe5569dbe23168b              # double 0.66682326446671547
	.quad	0x3f65e3ea671a4b00              # double 0.0026721552065479548
	.quad	0x3fe0c91de6054a9b              # double 0.52455038953697242
	.quad	0x3fdda3ee7c4e55b4              # double 0.46313058985955569
	.quad	0x3fea466c502bf346              # double 0.8210965696194783
	.quad	0x3fcc69e3cb025760              # double 0.22198150074535317
	.quad	0x3fd6916bd75931cc              # double 0.35262580900305518
	.quad	0x3fd73e6b03fab1d4              # double 0.36318469418145338
	.quad	0x3fe0c8bcda9f20ba              # double 0.52450411510019213
	.quad	0x3fe04aa285ef59c7              # double 0.50911070021793925
	.quad	0x3fdfce1e1667a004              # double 0.49695541561095546
	.quad	0x3fd45591a18c5d82              # double 0.3177227094288001
	.quad	0x3fdfcbe37dc3b70c              # double 0.496819374863535
	.quad	0x3fc8b7bd22874638              # double 0.19310726343114637
	.quad	0x3fe6f868842faad0              # double 0.71782327478043761
	.quad	0x3fbc84c055ab6500              # double 0.111400624194534
	.quad	0x3fe1e7a40d0acc94              # double 0.55952646777440629
	.quad	0x3f7bd63ae9e41400              # double 0.0067961026491092369
	.quad	0x3fe8db82b519d5b1              # double 0.77679572459481083
	.quad	0x3fb17e804ca50c98              # double 0.068336504661646535
	.quad	0x3fe244ef9846cb14              # double 0.57091502896796209
	.quad	0x3fed05ae97e24b73              # double 0.90694360413395569
	.quad	0x3fd0c5a12ea4201e              # double 0.26206235461040872
	.quad	0x3fe53b07f68db5dd              # double 0.66345594553939302
	.quad	0x3f7337cb3b720480              # double 0.0046918810613770789
	.quad	0x3feee0db62d779e3              # double 0.96494836144466622
	.quad	0x3fe8624297253032              # double 0.76199464340743917
	.quad	0x3fe3dae4b6ba9b5f              # double 0.6204703873562315
	.quad	0x3fe8cf3b07f87ae5              # double 0.77529670292628039
	.quad	0x3fe7c599093333c1              # double 0.74287082478405619
	.quad	0x3fc79acb99dd8228              # double 0.18441147816612724
	.quad	0x3fef7506847de382              # double 0.98303533437056978
	.quad	0x3f854d619108ed40              # double 0.010401499022114735
	.quad	0x3fdf8303f73773bc              # double 0.49237155096289675
	.quad	0x3fcfc10db81d86ac              # double 0.24807902803427362
	.quad	0x3fd476d1789e8204              # double 0.31975209025588947
	.quad	0x3fe0bb1d190095fc              # double 0.52284102328547943
	.quad	0x3fb32560a5e0bed8              # double 0.074789085862671967
	.quad	0x3fedada6efc85b35              # double 0.92744776566073617
	.quad	0x3fe2d131916d158e              # double 0.58803633121049059
	.quad	0x3fdcd828b9eb23ee              # double 0.45069330364327598
	.quad	0x3fefa1e8cdf17702              # double 0.98851433013234691
	.quad	0x3fd96ff224d61d04              # double 0.39745763394644507
	.quad	0x3fe16bb4dafa4c5a              # double 0.54439776200377854
	.quad	0x3fe4a64e82c7e44e              # double 0.64530110877161362
	.quad	0x3fa1e56bbd576d70              # double 0.034953467238404978
	.quad	0x3fa55927cb2c3220              # double 0.041695827056262624
	.quad	0x3fdab11c11d6d456              # double 0.41705991499049355
	.quad	0x3fd95fb69f36339c              # double 0.39646688030262012
	.quad	0x3febc2e7bbd6fa7b              # double 0.86754213988736184
	.quad	0x3fdaaba5bba44dd6              # double 0.41672652553935785
	.quad	0x3fea10e34e1b6c67              # double 0.81456151252076558
	.quad	0x3fdaa06cb90dbce6              # double 0.41604154655119741
	.quad	0x3fd4e51066998e1a              # double 0.32648096103204838
	.quad	0x3fa0ff6f871d7960              # double 0.033198819392725509
	.quad	0x3fe30661253cd1ce              # double 0.59452874443973669
	.quad	0x3fe50b41c311d6b8              # double 0.65762413119838126
	.quad	0x3fe129d18573180f              # double 0.53635479034778821
	.quad	0x3fd140423315d1f6              # double 0.26954703320305329
	.quad	0x3fdee07f26aa82ca              # double 0.48245219017011876
	.quad	0x3fef1b2dfbf267b6              # double 0.97206782539728098
	.quad	0x3fe0026823a51f89              # double 0.50029379808346264
	.quad	0x3fe9f8ca413bf8c4              # double 0.81161988011424357
	.quad	0x3fcc5cb0d3a28234              # double 0.22157869657259399
	.quad	0x3fa483fef3cea400              # double 0.040069548856372705
	.quad	0x3fb7084ab0b13e70              # double 0.089970272195609046
	.quad	0x3fe1867d8242bee1              # double 0.5476672691492831
	.quad	0x3fe6eb9d62851b33              # double 0.71626157037903793
	.quad	0x3fdbce7f9368482a              # double 0.43447865863083968
	.quad	0x3fe87048d8b04468              # double 0.76370661088925562
	.quad	0x3fb73db9e9b09e68              # double 0.090785617402269758
	.quad	0x3fdc18532fc8356e              # double 0.43898467699258148
	.quad	0x3fcddd6f6caf6150              # double 0.23332016760719876
	.quad	0x3fe5da868163bc81              # double 0.68292546531110088
	.quad	0x3fe57ed0ea7c5d74              # double 0.67173047826774601
	.quad	0x3fe977f54162f42a              # double 0.79589331408317787
	.quad	0x3feb9baa8890dafb              # double 0.86275221512809652
	.quad	0x3fe54091bead1751              # double 0.66413199654992117
	.quad	0x3fd2a73a1ca8a444              # double 0.29145672606188477
	.quad	0x3fef43011705767b              # double 0.97692923065524384
	.quad	0x3fc20ddc05da4dc4              # double 0.14104795728472486
	.quad	0x3feebf7bd565a8f1              # double 0.96087447814104909
	.quad	0x3fb4621254b940e8              # double 0.079621453937992137
	.quad	0x3fe8c9ccce0fcaf5              # double 0.77463379141258193
	.quad	0x3fdc02d1085e17ec              # double 0.43767190758842278
	.quad	0x3fdab7121645948e              # double 0.4174237458704021
	.quad	0x3fbbf51397b2dca0              # double 0.1092083211286643
	.quad	0x3fdb77d164b2afe6              # double 0.42918810685909958
	.quad	0x3faacccdc1fc01d0              # double 0.052343778543221142
	.quad	0x3fedafe415a19d98              # double 0.92772106385102671
	.quad	0x3fe8d901cfc648d1              # double 0.77649012165991327
	.quad	0x3fe2cfe34c2146d0              # double 0.58787693852556266
	.quad	0x3fc0fac2061acf18              # double 0.13265252397615579
	.quad	0x3fef80aa83ca9dfe              # double 0.98445630779764293
	.quad	0x3fe74f562663b541              # double 0.72843463418909249
	.quad	0x3fe2e57e832ab80e              # double 0.59051442736176951
	.quad	0x3faa9482f9938470              # double 0.051914303747033652
	.quad	0x3fe38dc68488e33c              # double 0.61105657468497254
	.quad	0x3fe44d768213ef75              # double 0.63445592313608634
	.quad	0x3fd3167b337ddfee              # double 0.29824714687811038
	.quad	0x3fe32a2127bc733d              # double 0.59889276276553682
	.quad	0x3fb9bc63d30389e8              # double 0.100530852334067
	.quad	0x3fb490d97f1f2bd0              # double 0.080335229430757992
	.quad	0x3fe4fba70a52c2a3              # double 0.65571929947153185
	.quad	0x3fd772ef9a7d64a2              # double 0.36639013373275919
	.quad	0x3fe0451709bf623a              # double 0.50843383697344469
	.quad	0x3fdf027aa67a012c              # double 0.48452631242254784
	.quad	0x3fd0183aec307520              # double 0.25147889199600293
	.quad	0x3fb9fc29e4e48920              # double 0.1015039619274245
	.quad	0x3fdee00c8836c7ca              # double 0.4824248628821094
	.quad	0x3fe20d2aa820802f              # double 0.56410725438400344
	.quad	0x3fef13c0969a74a0              # double 0.97116116919245953
	.quad	0x3feff9e9bac9d4b7              # double 0.99925695879087228
	.quad	0x3fe914555131eec9              # double 0.78373208864601296
	.quad	0x3fd7201f42c98f5a              # double 0.36133557817651296
	.quad	0x3fd7ba1573645610              # double 0.37073265331977812
	.quad	0x3fdac6dfc2d1dbd8              # double 0.41838830972068086
	.quad	0x3fe42185930f5efd              # double 0.62909201357521705
	.quad	0x3fc9fd72a3f5ec80              # double 0.20304711347475646
	.quad	0x3fe3e859d02a312f              # double 0.62211313874425922
	.quad	0x3fdd6514d2c4b1ca              # double 0.45929451544614308
	.quad	0x3fd3f0dcfd638f26              # double 0.31157612557420789
	.quad	0x3fc45ff315ba19a4              # double 0.15917814789663709
	.quad	0x3feab72e34273969              # double 0.83486089883971915
	.quad	0x3fce0a68d423e21c              # double 0.23469267233282742
	.quad	0x3fe039c2a1c724a1              # double 0.50705081555601705
	.quad	0x3fe970d9d6040019              # double 0.79502574729849862
	.quad	0x3fd77abeeaa0ef58              # double 0.36686680710748965
	.quad	0x3fc10d8da8f31360              # double 0.13322611569870002
	.quad	0x3fb5326d601ed940              # double 0.082800708739203976
	.quad	0x3fe15b0ea65119c2              # double 0.54236538394689426
	.quad	0x3fe0597a5e7e84cd              # double 0.51092260795498989
	.quad	0x3fe7e4ba88402db9              # double 0.74667097674812688
	.quad	0x3fe5faecf310a5ce              # double 0.68688056443823498
	.quad	0x3fc3c428c1dcae44              # double 0.15442380395812638
	.quad	0x3fe68583611fdf4d              # double 0.70379799813870536
	.quad	0x3fec562a2633d04d              # double 0.8855181451931543
	.quad	0x3fe63fc4cda6c84a              # double 0.69528427282626493
	.quad	0x3fe43bf3175ad58b              # double 0.63231806336868723
	.quad	0x3fdefb0903ed4afe              # double 0.48407197364319632
	.quad	0x3fcafe86b9708eac              # double 0.21089252524062851
	.quad	0x3fe5edb9bfa87fc6              # double 0.6852692359279835
	.quad	0x3fd2f3d10cefd388              # double 0.2961313845001361
	.quad	0x3fe5acb7183c6abc              # double 0.67733340009302578
	.quad	0x3feda136ef83541a              # double 0.92592951564677439
	.quad	0x3fee5ab927acf2f6              # double 0.94857461690079847
	.quad	0x3feea80e9fdda949              # double 0.95801478599359157
	.quad	0x3fe73b884830f8aa              # double 0.72601713275777979
	.quad	0x3fd808f71732db50              # double 0.37554719224447286
	.quad	0x3fe9bb7d433a86f5              # double 0.80413687830534164
	.quad	0x3fe33cb35e028350              # double 0.60115974770824643
	.quad	0x3fca62711c730ff8              # double 0.20612920655378253
	.quad	0x3fc0272dc5c60490              # double 0.12619564206037071
	.quad	0x3fed57da3b03c322              # double 0.91697417761142597
	.quad	0x3fe487006426f860              # double 0.64147967873556055
	.quad	0x3fe939b06146ce26              # double 0.78829211234409935
	.quad	0x3fe5d5265a658139              # double 0.6822692647511196
	.quad	0x3fecc7da18e30594              # double 0.89939598904327278
	.quad	0x3fb866000b0ff000              # double 0.095306399060007152
	.quad	0x3fdf1c83aea0a4d4              # double 0.48611537984340925
	.quad	0x3fe0b92290b1c1e8              # double 0.52259948979013604
	.quad	0x3fe0847367ac9c40              # double 0.51616831063154933
	.quad	0x3f91d1895ca5fec0              # double 0.017400881080446906
	.quad	0x3fd55971016bc49c              # double 0.33358407152906877
	.quad	0x3fd5668b6b9aaa62              # double 0.33438382633418062
	.quad	0x3fee52abb6e9366b              # double 0.94759164547731467
	.quad	0x3fd01d357ef8d732              # double 0.25178277396786364
	.quad	0x3fd32b7fbd4e5df0              # double 0.29952996718335978
	.quad	0x3fe647f5969b5092              # double 0.69628409781809553
	.quad	0x3fa62552a7573d40              # double 0.043253500869122607
	.quad	0x3feb792d98df0be9              # double 0.85854225022955888
	.quad	0x3fb0dd0f169126e0              # double 0.065873091706773135
	.quad	0x3feba00db0fd9f2f              # double 0.86328777855394445
	.quad	0x3fdc77bc30f4a19c              # double 0.44480805188006811
	.quad	0x3fc52172cbff9110              # double 0.16508326493124814
	.quad	0x3feb77812c1a2cea              # double 0.8583379613277462
	.quad	0x3fd3b22dc5411aaa              # double 0.30775017035595431
	.quad	0x3fd1c98da52b6422              # double 0.27792683725198419
	.quad	0x3fe42b88a90b7c75              # double 0.63031418816161866
	.quad	0x3fe9f3db84cda360              # double 0.81101776064052089
	.quad	0x3fe96fad895c9cc9              # double 0.79488255337209879
	.quad	0x3fe787fece45c56c              # double 0.73535099303823648
	.quad	0x3fd8417c7ba9d4ce              # double 0.37899696423057783
	.quad	0x3fdb9249ba5bb0d8              # double 0.43080371092834246
	.quad	0x3faf5031f282d650              # double 0.06115871510830273
	.quad	0x3fecdd07bbe07f85              # double 0.90198122687068916
	.quad	0x3fe20ea6087565bd              # double 0.56428815509860153
	.quad	0x3fe0a8d78edd4a80              # double 0.52061059859472891
	.quad	0x3fdbedc45cd8a3e4              # double 0.43638714854256322
	.quad	0x3fddd3baa833bba0              # double 0.46604792047485866
	.quad	0x3fe705caab6c1967              # double 0.71945699196730295
	.quad	0x3fee29ac2baa1d3d              # double 0.94258698013519615
	.quad	0x3fe120f0a3d754df              # double 0.53527099609587114
	.quad	0x3fcbf4b4de6da160              # double 0.21840535031084141
	.quad	0x3f712fdf24fdca80              # double 0.004196044595902948
	.quad	0x3fd9d90e9170c530              # double 0.40387310221838657
	.quad	0x3fefe9dc25df12fb              # double 0.99729735752825321
	.quad	0x3fd02454cfb83c50              # double 0.25221748623966267
	.quad	0x3feef13aeb04493a              # double 0.96694703962047091
	.quad	0x3fe2b9c4fe9a228c              # double 0.58517694212885507
	.quad	0x3fe3eabe823903ac              # double 0.62240529474376194
	.quad	0x3fd84146b6bf5b48              # double 0.37898414465364683
	.quad	0x3fd4f4ee9b37c004              # double 0.32744946630464278
	.quad	0x3fe2a510cc8c1037              # double 0.58264961195573661
	.quad	0x3fee9f11072ac175              # double 0.9569172992687941
	.quad	0x3fb6908eb994c540              # double 0.08814327269353317
	.quad	0x3fe8c566917aac95              # double 0.77409675992875526
	.quad	0x3fc4a97ddff85640              # double 0.16142247615850813
	.quad	0x3fc62a31939dfb6c              # double 0.17316264827601502
	.quad	0x3fe484e8850107fd              # double 0.64122415521001097
	.quad	0x3fd98c214c5ad08a              # double 0.39917786079900763
	.quad	0x3fea2c56acc91f53              # double 0.8179124235839289
	.quad	0x3fe29025ebab4507              # double 0.58009620694261421
	.quad	0x3fd87e69aece53fc              # double 0.38271562643905077
	.quad	0x3fecb035815ad97e              # double 0.8965098883116267
	.quad	0x3fee031e76051548              # double 0.93788073588135834
	.quad	0x3fecd3bad5be8b1c              # double 0.90084592577872824
	.quad	0x3fdbc51e7ee5f2c6              # double 0.43390619652181461
	.quad	0x3fcc3d319a58ae2c              # double 0.22061748539395987
	.quad	0x3fea873764aa0cdf              # double 0.82900590573299471
	.quad	0x3fefd7cb1990218e              # double 0.99509196274543554
	.quad	0x3fcbbceb92b338b0              # double 0.21670288718309427
	.quad	0x3fc0bf742f6a7aa4              # double 0.13084270777922768
	.quad	0x3fe8c2c535d2d463              # double 0.77377567779934642
	.quad	0x3fc898a0ce0cb4d8              # double 0.19215784131066616
	.quad	0x3fe63328e78a9a52              # double 0.6937450907033258
	.quad	0x3fefbff907c16286              # double 0.99218417658546865
	.quad	0x3fe8381fa100b4dd              # double 0.75685101934291377
	.quad	0x3fb1f5de0ba93928              # double 0.070157888266497381
	.quad	0x3fea99bc546b6887              # double 0.83126656044193303
	.quad	0x3fe4ad30afcdf429              # double 0.64614137970750563
	.quad	0x3fe145d5df43302e              # double 0.53977483373592405
	.quad	0x3fe3c004b0a6b815              # double 0.61718973638721997
	.quad	0x3fd7bc3983337cde              # double 0.37086332142457745
	.quad	0x3fe5acf3640480af              # double 0.67736215147671952
	.quad	0x3fe1803939817276              # double 0.54690228683064279
	.quad	0x3f901a1360c16140              # double 0.015724470882873876
	.quad	0x3fc18193accbb920              # double 0.13676687180800062
	.quad	0x3fdf5c87351c1a94              # double 0.49002247034551627
	.quad	0x3fe8fcec90adccaf              # double 0.78087452180479555
	.quad	0x3fe99e3aec86b17d              # double 0.80056520649445384
	.quad	0x3fca6ec8c7f367f8              # double 0.2065058685610095
	.quad	0x3fe927b154328e03              # double 0.78609529919452859
	.quad	0x3fe22c9c2fa626f5              # double 0.56794556909991789
	.quad	0x3fd734d82e5f85ea              # double 0.36260036972643539
	.quad	0x3fb9e573a16804e0              # double 0.10115740480980007
	.quad	0x3fc3202b89133a14              # double 0.14941925233002051
	.quad	0x3fe166ff2cfedd6e              # double 0.54382284916111501
	.quad	0x3fe92e2f9f044c5b              # double 0.78688794191328826
	.quad	0x3f9e32a861fd85e0              # double 0.02949011896214937
	.quad	0x3fedbbdfdc98ed10              # double 0.92918389401839541
	.quad	0x3fd5204c8e359cb6              # double 0.33009637725485719
	.quad	0x3fdebed8fc670030              # double 0.48039841316858922
	.quad	0x3fe5d86c7e2130c5              # double 0.68266892084786746
	.quad	0x3fda3ddac868dc2c              # double 0.41002530642748769
	.quad	0x3fe2a4a17264e8b4              # double 0.5825965151082273
	.quad	0x3fc11cd59d835b4c              # double 0.13369245711393274
	.quad	0x3fddea7e49f5edfc              # double 0.46743733618470151
	.quad	0x3feca67280178857              # double 0.89531826990083629
	.quad	0x3feb1827527c00d7              # double 0.84669843778831477
	.quad	0x3fea38f48607e51f              # double 0.81945253541849528
	.quad	0x3fe89f80e2c78b7d              # double 0.76947063725343379
	.quad	0x3fed286454c12e09              # double 0.91118065408358107
	.quad	0x3fe11b6539c2ce87              # double 0.53459416657865766
	.quad	0x3fdfb04d3b03326a              # double 0.49513560069025309
	.quad	0x3fe32210ec634011              # double 0.59790846032592715
	.quad	0x3fec56248a6c1c1a              # double 0.88551547084432802
	.quad	0x3fa8673b183447a0              # double 0.047662588791481442
	.quad	0x3fb9c692af8ce930              # double 0.10068623338603255
	.quad	0x3fe7381a2b3b866c              # double 0.7255984157929567
	.quad	0x3fae7612c316ebd0              # double 0.059494577707901564
	.quad	0x3fe2f0615654c547              # double 0.59184328900861594
	.quad	0x3fd89cb320c717f8              # double 0.38456419182727997
	.quad	0x3fee5a0f998c8b09              # double 0.94849376668966656
	.quad	0x3fe1e6e5575ebf5f              # double 0.55943553032373561
	.quad	0x3fb6d4c73c6e36e0              # double 0.089184238675638294
	.quad	0x3fecdfe88043a95d              # double 0.90233254481908498
	.quad	0x3feeb4b21d17e947              # double 0.95955758745484664
	.quad	0x3fdc38a9ffe9ffba              # double 0.44095849982840785
	.quad	0x3fe88bf926787ada              # double 0.76708657754701481
	.quad	0x3fbdefbc06736ec0              # double 0.11693930776112449
	.quad	0x3fe5e07582a9b721              # double 0.68364978332622084
	.quad	0x3fe9345b587c97c2              # double 0.78764121325070158
	.quad	0x3fb7cf779ace3790              # double 0.0930094483321382
	.quad	0x3fd2317e07dc053a              # double 0.28427077071690443
	.quad	0x3fdc2b205660a82a              # double 0.44013222155865839
	.quad	0x3fe1a3986e209db4              # double 0.55122014531382613
	.quad	0x3fd3fb74e005e47c              # double 0.31222268941161935
	.quad	0x3fe7675979bb0f46              # double 0.73136590743568131
	.quad	0x3fd4676db4e5e958              # double 0.31881277719334866
	.quad	0x3fe051e81faaa2fe              # double 0.50999838051674806
	.quad	0x3fe7036c0bafb9bb              # double 0.71916773111825394
	.quad	0x3fb008eec416f6a8              # double 0.062636301873647882
	.quad	0x3fe9916eec2f0287              # double 0.7990030873261994
	.quad	0x3fe5c6b6517cbd9d              # double 0.68050685801965793
	.quad	0x3fd870922c4366ac              # double 0.38187078783594575
	.quad	0x3feb9a3a02318d9d              # double 0.86257648876601289
	.quad	0x3fe06d08a1e0f700              # double 0.51330978028246932
	.quad	0x3fe59c41a3020750              # double 0.67532426679120228
	.quad	0x3fe0159667e40c5c              # double 0.50263519564795045
	.quad	0x3fdb2079b0b5b40c              # double 0.42385713822187721
	.quad	0x3fca29a58bd01748              # double 0.20439595534133503
	.quad	0x3fe670d948b739b6              # double 0.70127548410692131
	.quad	0x3fb7f16b246a9a50              # double 0.093527504339911304
	.quad	0x3f996ce58f505300              # double 0.024829470512560015
	.quad	0x3fe84fc50195c8a4              # double 0.75973749456013139
	.quad	0x3fe3b09ff18b5ef4              # double 0.6153106420196921
	.quad	0x3fe68d24c5f0a214              # double 0.70472944889212608
	.quad	0x3fead782ad829159              # double 0.83880742920568274
	.quad	0x3fdec277c2274174              # double 0.48061937294280388
	.quad	0x3fe02d96e47b8db9              # double 0.50556511521829528
	.quad	0x3fd03ac9a509682e              # double 0.25358811489934652
	.quad	0x3fcaf5b967b0aea8              # double 0.21062390864368763
	.quad	0x3fd6df04c19f6228              # double 0.35736197384315682
	.quad	0x3fa2695877b9bcc0              # double 0.035959972968038212
	.quad	0x3fe4831f74b54c3f              # double 0.64100621027535698
	.quad	0x3fe05cc61cef6c05              # double 0.51132493640341237
	.quad	0x3fed0ab67d1d4b61              # double 0.90755772053158179
	.quad	0x3fc6b066444c20b8              # double 0.17725828490097739
	.quad	0x3fe87b08d04eb99c              # double 0.76501885113775669
	.quad	0x3fd2a46bc0e455a0              # double 0.29128545605757417
	.quad	0x3fd4cfb20e2b9ede              # double 0.32517672904803685
	.quad	0x3fe9c3c17e59b541              # double 0.80514597585503378
	.quad	0x3fe28767238e1251              # double 0.57902867264108171
	.quad	0x3fe4dfe634e35b95              # double 0.65233145074567978
	.quad	0x3fd8235315de9600              # double 0.37715603957835242
	.quad	0x3fb13ae065608f50              # double 0.067304634809770336
	.quad	0x3fae729ebabf25f0              # double 0.05946823148367375
	.quad	0x3fe10877d65ad82c              # double 0.53228370538886827
	.quad	0x3fd3bb40e8d516d2              # double 0.30830404984986359
	.quad	0x3fe84dbfef3e531a              # double 0.75949093558537872
	.quad	0x3fd0530976a9618c              # double 0.25506817424823036
	.quad	0x3fc7b0847e04438c              # double 0.18507438805729881
	.quad	0x3fdbb66db748d7d0              # double 0.43300955675965458
	.quad	0x3fc272c2c7422480              # double 0.14412722329533167
	.quad	0x3fc93ec935dc7810              # double 0.1972285759920287
	.quad	0x3fe2a64d360f2ab9              # double 0.58280048902937331
	.quad	0x3fc03e5996fbbad0              # double 0.12690276977760684
	.quad	0x3f9d0dfd54377200              # double 0.02837367846028549
	.quad	0x3fbf951533425398              # double 0.12336857320253924
	.quad	0x3fc6289cd7987f10              # double 0.17311440016873592
	.quad	0x3f8b197364fbc100              # double 0.01323213722159311
	.quad	0x3fe8a2edb73aa081              # double 0.76988874232212379
	.quad	0x3fdcc18e302d4570              # double 0.44931368546266182
	.quad	0x3fdcc536c1e344de              # double 0.44953698095657824
	.quad	0x3fbfafeb626c2198              # double 0.12377806809320757
	.quad	0x3fd0bdb1abe99698              # double 0.26157800472570036
	.quad	0x3fd6135fa8e4a4f6              # double 0.34493247502776059
	.quad	0x3fd8bdc45aac3284              # double 0.38658245901823585
	.quad	0x3fc8bb738a7b2220              # double 0.19322056066290916
	.quad	0x3fba50dd7f776b20              # double 0.10279640542959756
	.quad	0x3fd1951df32b55ee              # double 0.2747263788890838
	.quad	0x3fbd969160bdd098              # double 0.11557873355724479
	.quad	0x3feca9f6fa4fedd6              # double 0.89574765099626563
	.quad	0x3fefe731e07e0626              # double 0.99697202535771079
	.quad	0x3fa15b2c6819b3a0              # double 0.03389872332341004
	.quad	0x3fc91a24a7280ff4              # double 0.19611032640398174
	.quad	0x3fc4515a0b4ed428              # double 0.15873265792984736
	.quad	0x3fe0e74efb18fe65              # double 0.52823590319162561
	.quad	0x3fee4b73f2d15de9              # double 0.9467105619941637
	.quad	0x3fbb055b7a059558              # double 0.10555049637840364
	.quad	0x3fef950e4fd74400              # double 0.9869453009979452
	.quad	0x3fee5b8c12424b74              # double 0.94867518964961883
	.quad	0x3fed7bceaa62941b              # double 0.92136319425901847
	.quad	0x3fbce67c980b4c90              # double 0.11289194786086143
	.quad	0x3fdebd3df0f0e684              # double 0.48030041245838384
	.quad	0x3fc388861cd00844              # double 0.15260387808672438
	.quad	0x3fe8683fd7733605              # double 0.76272575454794433
	.quad	0x3feb2167e2eebaec              # double 0.84782785723458919
	.quad	0x3fef35a07cd21d19              # double 0.9752962530045891
	.quad	0x3fe2cc6aad9e7b86              # double 0.5874532118794924
	.quad	0x3fd6d3a65f099a0a              # double 0.35666808396345628
	.quad	0x3fde6dbaf4fcb972              # double 0.47544740604907709
	.quad	0x3fe5a29b0a0333e0              # double 0.67609931903427523
	.quad	0x3fdb5fd30c580990              # double 0.42772365766008935
	.quad	0x3fe3f9964469f2f7              # double 0.62421716081698164
	.quad	0x3fd6e51863f8e252              # double 0.35773286593351827
	.quad	0x3fdfcbd6e3878204              # double 0.49681637019787694
	.quad	0x3fe3400e928cc0ba              # double 0.60156944869051832
	.quad	0x3fda0f6da625db5a              # double 0.40719166970614185
	.quad	0x3fea2a495bd18a42              # double 0.81766193326286207
	.quad	0x3fe2fb9dd89fb27d              # double 0.59321491536464033
	.quad	0x3fdec5f21684c25e              # double 0.48083164404946455
	.quad	0x3f7aeadcfbb90b80              # double 0.0065716392669540324
	.quad	0x3fe8539d619729c2              # double 0.76020688114777379
	.quad	0x3fe53bdeb786240b              # double 0.66355834812668613
	.quad	0x3fe5a915c4cd4935              # double 0.67689026296492349
	.quad	0x3fd861654012e628              # double 0.38094455010613837
	.quad	0x3fa97e27682df820              # double 0.049790603129608479
	.quad	0x3fdbe31ba007f9a2              # double 0.43573656681101103
	.quad	0x3fb4b189072cc8a8              # double 0.080833973170941875
	.quad	0x3fc789c8ecf0f100              # double 0.18389236039536883
	.quad	0x3fd871b721bd2400              # double 0.38194063467796013
	.quad	0x3fe5ec14c9561095              # double 0.6850685055110427
	.quad	0x3fefde2bea391c18              # double 0.99587054964729571
	.quad	0x3fd215bfbce555f6              # double 0.28257745215282115
	.quad	0x3fe72e5f540c1a5b              # double 0.72441069045528239
	.quad	0x3fef8ce843e8a88d              # double 0.98595059646074079
	.quad	0x3fe8ac419799db9b              # double 0.77102737054416381
	.quad	0x3fc404c66cfc97d8              # double 0.15639572450271433
	.quad	0x3fd32b9dba9fc800              # double 0.29953711724294863
	.quad	0x3fdf144a8a2fba56              # double 0.48561347479600181
	.quad	0x3fea521b59f935fc              # double 0.82252280781693754
	.quad	0x3f9a97dbe5ad44c0              # double 0.025969921010361885
	.quad	0x3fe72695e50351f8              # double 0.723460147181469
	.quad	0x3fd94b29775fbeb8              # double 0.39521252305619781
	.quad	0x3fea08ffc1442476              # double 0.813598515961657
	.quad	0x3fefd30723536d53              # double 0.9945102395971993
	.quad	0x3fcee539a21aec8c              # double 0.24137039580623243
	.quad	0x3f969c83e5358f40              # double 0.02208143316728628
	.quad	0x3fe64ccecb405fff              # double 0.6968759507899448
	.quad	0x3fc74be98d10dd84              # double 0.18200415981275964
	.quad	0x3fe8b2aaef9c1f57              # double 0.77181002425002532
	.quad	0x3fe798b745eb9ae0              # double 0.73739207893671832
	.quad	0x3fc975087c5c5970              # double 0.19888406822492355
	.quad	0x3fe9c0ca64643e03              # double 0.80478400809983019
	.quad	0x3fe70aa8dccdd3bd              # double 0.72005122304710023
	.quad	0x3fe22166be401e9b              # double 0.56657731207174622
	.quad	0x3fe392e91e7d502b              # double 0.61168342547398902
	.quad	0x3fe23fa2d2fc6684              # double 0.57026807029906523
	.quad	0x3fce3e4dd9c9b0a4              # double 0.23627637037441673
	.quad	0x3fd5744591c66f1c              # double 0.33522166477063009
	.quad	0x3fbaca38848e6010              # double 0.10464814411386691
	.quad	0x3fba4d001ee1e7f8              # double 0.10273743394819224
	.quad	0x3fe8816a14cdb56e              # double 0.76579765380090037
	.quad	0x3fd30b9899e95cec              # double 0.29758276968409691
	.quad	0x3fe5f788a9e4240f              # double 0.68646653348798903
	.quad	0x3fe9b1b14c9b2ad3              # double 0.80294098817952386
	.quad	0x3fc06bf329431108              # double 0.12829436793084192
	.quad	0x3fe2778a7c863086              # double 0.57709240265968798
	.quad	0x3fe44f5918f3055d              # double 0.63468603966627379
	.quad	0x3fe87a8aa6f5a85d              # double 0.76495869263932159
	.quad	0x3fdc25675355e7cc              # double 0.43978293550719338
	.quad	0x3fde6071cfdd1d04              # double 0.47463650988761708
	.quad	0x3fe3f1f0e33d42b4              # double 0.62328380949664686
	.quad	0x3fd150b6d954840c              # double 0.27055140708586189
	.quad	0x3fe29e420991258b              # double 0.58181859844732864
	.quad	0x3fef7ffaa05a695f              # double 0.98437243765810567
	.quad	0x3fdd45f92933667e              # double 0.45739583037866527
	.quad	0x3fa9fc657ef481b0              # double 0.050753757235955432
	.quad	0x3fe5a66e908396b5              # double 0.67656639314073763
	.quad	0x3fdadd7489d016e6              # double 0.4197665544346435
	.quad	0x3fe25ef60ed2bc05              # double 0.57409193892624499
	.quad	0x3fe84aed6ac7e1ed              # double 0.75914641242621672
	.quad	0x3fc44ac31e0ff430              # double 0.15853156059157092
	.quad	0x3fe1984ece92ace9              # double 0.5498422655704448
	.quad	0x3f70d1d78402e480              # double 0.0041063707905603097
	.quad	0x3fe4b4fb9f094671              # double 0.6470926386047734
	.quad	0x3febb07773f12291              # double 0.86529133458050655
	.quad	0x3fdd296f8c3a0402              # double 0.45565403646475044
	.quad	0x3fe2b00b0b7fa225              # double 0.58398964162649192
	.quad	0x3fed139aab2683a6              # double 0.90864308765241186
	.quad	0x3fc4279f6864eed8              # double 0.15745918843628348
	.quad	0x3fe3fee21d507ef7              # double 0.6248636791751484
	.quad	0x3fd00f042a5a1b2c              # double 0.25091652046141877
	.quad	0x3fe61c13cb30b9d2              # double 0.69092740712749845
	.quad	0x3fdc3b273065326a              # double 0.44111041761497083
	.quad	0x3fc04c207064c5a4              # double 0.12732320297213306
	.quad	0x3f6d03cfd6546d00              # double 0.0035418567009749546
	.quad	0x3fb0038d523b1ea8              # double 0.06255419976798271
	.quad	0x3fe77ec55b5d7bb5              # double 0.73422496647605462
	.quad	0x3fec326a6c943b7e              # double 0.88115426260797824
	.quad	0x3fe994c089148f22              # double 0.79940821431634768
	.quad	0x3fb90d57f82b2ac8              # double 0.097859857643167847
	.quad	0x3fe2ba0c8713917c              # double 0.58521105177037169
	.quad	0x3fc26514901d4af8              # double 0.14370972668492477
	.quad	0x3fa345775307b210              # double 0.037639359364991631
	.quad	0x3fef67c4aa08d994              # double 0.98141701898457478
	.quad	0x3fd749ea4fb4fac2              # double 0.36388643058664283
	.quad	0x3feaa384c955661d              # double 0.83246077845541644
	.quad	0x3fe9e046c92790e4              # double 0.8086275032806296
	.quad	0x3fbb7faebbecae40              # double 0.10741703117371859
	.quad	0x3fcca57df78f8484              # double 0.22380041683121388
	.quad	0x3fe5bf8528f8ec5f              # double 0.67962892534650254
	.quad	0x3fdc4345dbe9de5e              # double 0.44160601116116094
	.quad	0x3fd43b2313bb6cc8              # double 0.31610943724599538
	.quad	0x3fcc883b8d64f7b0              # double 0.22290748981498387
	.quad	0x3feaffff7fe44aae              # double 0.84374976137981661
	.quad	0x3fee31b7191c8e3d              # double 0.94356875328634937
	.quad	0x3fe2690112fb9f8f              # double 0.57531789500807118
	.quad	0x3fb3e7086723fe08              # double 0.077744031124886814
	.quad	0x3fc2c40fe77f5b18              # double 0.14660834125125954
	.quad	0x3fec8989c5160383              # double 0.8917893266044391
	.quad	0x3fea824556253eef              # double 0.82840220284739796
	.quad	0x3fd110b5adf1d6f8              # double 0.26664487826143057
	.quad	0x3feb1e74a1f798b3              # double 0.84746772417272209
	.quad	0x3fcec13c3bfbca78              # double 0.24027207306751897
	.quad	0x3fc70d17bc14e18c              # double 0.18008705791158908
	.quad	0x3fd4844ca0c4fe86              # double 0.3205749101652845
	.quad	0x3fa656bd19db4760              # double 0.043630513578718277
	.quad	0x3fa434f05f49d650              # double 0.039466392166030873
	.quad	0x3fe978f9a0bf37dd              # double 0.79601746936691209
	.quad	0x3fd3724d8e460056              # double 0.30385149854555971
	.quad	0x3fb6df4ce682a358              # double 0.089344793583803095
	.quad	0x3fd78dbc6773c630              # double 0.36802587607153026
	.quad	0x3fc57ae442152420              # double 0.167812855021368
	.quad	0x3fda2c15494c34c8              # double 0.40894062192894554
	.quad	0x3fe0d75bae57fd14              # double 0.52628883410935368
	.quad	0x3fbeba2ef4a22090              # double 0.12002843353741555
	.quad	0x3fd4ab8d27a73f4c              # double 0.32297066566842569
	.quad	0x3fd975d2203a2bd6              # double 0.39781621119680943
	.quad	0x3fe8e1bbc3848994              # double 0.77755535304122469
	.quad	0x3fa670d342beda30              # double 0.04382953824772462
	.quad	0x3fda60cc6186d018              # double 0.41215810321887281
	.quad	0x3fef2420a83c97ac              # double 0.9731601034043158
	.quad	0x3fdb90a7f26c2e0e              # double 0.43070410417632921
	.quad	0x3fef7b8ac8d7abc4              # double 0.98383082606357463
	.quad	0x3feffbe7967b14c5              # double 0.99950007811335039
	.quad	0x3fd32442d73c4e0c              # double 0.29908820170496209
	.quad	0x3fea5405ff26c4fb              # double 0.82275676569238898
	.quad	0x3fd98a613c459c7a              # double 0.39907103429727153
	.quad	0x3fe0dff504c222a2              # double 0.52733851365436046
	.quad	0x3fe1b16cb6378894              # double 0.55290828313106255
	.quad	0x3fce677ffad8d990              # double 0.23753356693641736
	.quad	0x3fd5f2920ce50070              # double 0.34293032893402309
	.quad	0x3fe13758d8435342              # double 0.5380062316786296
	.quad	0x3fd0ae72f082e13c              # double 0.2606475208990735
	.quad	0x3feea283fdffb562              # double 0.95733832940247177
	.quad	0x3fe05d46c2041670              # double 0.51138627904647471
	.quad	0x3fcd29991b3b92e4              # double 0.22783197240564512
	.quad	0x3fe754c079a238dd              # double 0.72909568554475934
	.quad	0x3fc4819e55ec80dc              # double 0.16020564265728054
	.quad	0x3fe17ed3c76388ef              # double 0.54673184340597725
	.quad	0x3feb36dd5fc9f36e              # double 0.85044735630763824
	.quad	0x3fe82502736ca487              # double 0.75451777023148814
	.quad	0x3f88f4a7a4f22880              # double 0.012185392113924332
	.quad	0x3fe3d2d8cd6d15e0              # double 0.61948814508712857
	.quad	0x3fef01a20f1c352d              # double 0.9689493460770443
	.quad	0x3fe77a7a6a9b55c6              # double 0.73370095082889786
	.quad	0x3fc6981d47079fb4              # double 0.17651716202021606
	.quad	0x3fe8a7fa64068c2a              # double 0.77050513778920515
	.quad	0x3fd9b71d6f7ede74              # double 0.40180145157089631
	.quad	0x3fd81cca56b2b7ba              # double 0.37675722567189107
	.quad	0x3fc767f4399ed168              # double 0.18285992444510701
	.quad	0x3fec38ee70221b47              # double 0.88194963360806689
	.quad	0x3fcddd1e792ba3cc              # double 0.23331051746870768
	.quad	0x3feacfa3eb2d1010              # double 0.83784671719377179
	.quad	0x3fc8b64015d11f88              # double 0.19306183877256111
	.quad	0x3fe5a1eec613c1ab              # double 0.67601717650363946
	.quad	0x3fde8f13b54185a8              # double 0.47748272610450693
	.quad	0x3fc48c06f54ef23c              # double 0.16052329042385505
	.quad	0x3fd71eb1095801d8              # double 0.36124826347807248
	.quad	0x3fd8aea4dec2e1d6              # double 0.38565942529706143
	.quad	0x3fecb109f4b8fbb9              # double 0.89661119267827083
	.quad	0x3fe158a39756b505              # double 0.54207019384708188
	.quad	0x3fb0e4cc49c3b070              # double 0.065991180428399465
	.quad	0x3fd4d5a0adec71b2              # double 0.32553879723289036
	.quad	0x3fda6769b1384df4              # double 0.41256182009348596
	.quad	0x3fdbd37a2a97f6e2              # double 0.43478254470379174
	.quad	0x3fece525ded4f231              # double 0.90297215959396315
	.quad	0x3fd990bbe7a46828              # double 0.3994588625079154
	.quad	0x3fe7bed10ba627d5              # double 0.74204304003910215
	.quad	0x3fe85453aca56431              # double 0.76029380531247714
	.quad	0x3fe253a70288d58c              # double 0.57271147246380982
	.quad	0x3fd6dc4bee253f9c              # double 0.35719583755871454
	.quad	0x3fdbfbd0c01bfa72              # double 0.43724459419892192
	.quad	0x3fc8aa1353c8d9e0              # double 0.19269029227298429
	.quad	0x3fb1253c05d97580              # double 0.066974402835930036
	.quad	0x3fd330f9e6baa88a              # double 0.29986426860944759
	.quad	0x3fec74b283cf1e39              # double 0.88924527877765691
	.quad	0x3fe7859f5eaec00c              # double 0.73506134503077325
	.quad	0x3fe3edcac47b8632              # double 0.62277735114566313
	.quad	0x3feec6933521aa5e              # double 0.9617401159023975
	.quad	0x3fd06d4f9669750a              # double 0.25667180718103622
	.quad	0x3fd7c288e5913bba              # double 0.37124845904048309
	.quad	0x3fe673515828fc7e              # double 0.70157687395830215
	.quad	0x3fc3c073abad84bc              # double 0.15431066401200677
	.quad	0x3feeaa1d1f578973              # double 0.95826583978150237
	.quad	0x3fdfd66e647303ba              # double 0.49746284303187915
	.quad	0x3fecfaeb6b8e387d              # double 0.90562983519500018
	.quad	0x3fe9144b75c844af              # double 0.78372738842349132
	.quad	0x3feec9d3e9decbeb              # double 0.96213718107025891
	.quad	0x3fe651c49f5badee              # double 0.69748145222314206
	.quad	0x3fbb4732af8e6f60              # double 0.10655514513058284
	.quad	0x3fd464069462aca4              # double 0.31860508433119095
	.quad	0x3fea48563613075b              # double 0.82133017121689578
	.quad	0x3fe3f3b539058eb7              # double 0.62349949967434426
	.quad	0x3fdaf9ae09c7dfc4              # double 0.42148924784805453
	.quad	0x3fc8320980d833c8              # double 0.18902701178777037
	.quad	0x3fdcb1466980b9d8              # double 0.44832001021395973
	.quad	0x3fe3c15057d89f80              # double 0.61734788091142434
	.quad	0x3fc7824978845348              # double 0.18366354355444003
	.quad	0x3fe373cf24172406              # double 0.60788685845284429
	.quad	0x3fe2d620a51956ab              # double 0.58863861318487432
	.quad	0x3fb4a0e7ddea71e8              # double 0.080580226591741799
	.quad	0x3fd57c7830ba7844              # double 0.3357220149863489
	.quad	0x3feecb8c69d7496a              # double 0.96234722778380655
	.quad	0x3fd781d918025864              # double 0.36730029434818889
	.quad	0x3fe310d57e58b02c              # double 0.59580492665327744
	.quad	0x3f9dc6137351a6e0              # double 0.029075912393102921
	.quad	0x3fd1ff19c42d6f76              # double 0.28119510801274517
	.quad	0x3fdbcd9de044801c              # double 0.43442484761362876
	.quad	0x3fe3a9a7b4f526c2              # double 0.61445985167775796
	.quad	0x3fcf6c855f9bc6e8              # double 0.24549929779418922
	.quad	0x3fdf1fee8775554e              # double 0.48632395962097952
	.quad	0x3fdabb8edd9eb2b2              # double 0.41769763605661148
	.quad	0x3fe1abdf4311ec75              # double 0.55223048305141609
	.quad	0x3fc5868871abcb98              # double 0.16816812086434818
	.quad	0x3fe6643d75d0a549              # double 0.69973633776422972
	.quad	0x3fd2fbc2c7392c62              # double 0.29661626296428356
	.quad	0x3fd31a9cd2ee8774              # double 0.29849930380634437
	.quad	0x3fc8e0390bf495cc              # double 0.19434273799667634
	.quad	0x3fcab2969b127164              # double 0.20857508251072965
	.quad	0x3fc5c8faec7190b0              # double 0.17019592805002537
	.quad	0x3fa705cd72a423d0              # double 0.044966144794734597
	.quad	0x3fed9be1de1c9d73              # double 0.92527860051352062
	.quad	0x3fb22c75e0c234b0              # double 0.070990912792882055
	.quad	0x3fddeb393b3feca8              # double 0.46748190675834644
	.quad	0x3fecd12bd89abdf7              # double 0.90053360276755157
	.quad	0x3fdca95808fcfc38              # double 0.44783593061214644
	.quad	0x3fe56e17f269388f              # double 0.66968915315534783
	.quad	0x3fa7591d936c6f50              # double 0.045601772542993246
	.quad	0x3fe59de83dda052b              # double 0.67552578049086287
	.quad	0x3f9c2034194693a0              # double 0.027466596644120878
	.quad	0x3fe840e8bf882613              # double 0.757923482976539
	.quad	0x3feff663d63efb36              # double 0.99882690281797326
	.quad	0x3fef9de92b305c57              # double 0.98802622256597316
	.quad	0x3fe52fbe250caa38              # double 0.66207797275757851
	.quad	0x3fc4a8d2bf9bf860              # double 0.16140207630081971
	.quad	0x3fd2da576dc92d9e              # double 0.29457650872492447
	.quad	0x3fd6fdfe12942a9e              # double 0.35925247015317463
	.quad	0x3fc72adb2f45b120              # double 0.18099536712851094
	.quad	0x3fe4b818b5e982ce              # double 0.6474727204295847
	.quad	0x3fe40b1afe15ad3a              # double 0.62635564447319969
	.quad	0x3fe308239e1df77a              # double 0.59474354631650717
	.quad	0x3fea211c1f3ca86d              # double 0.81654172993627372
	.quad	0x3fe1dbd3454971c5              # double 0.55808414013477459
	.quad	0x3fe8035a832d914b              # double 0.7504093706198004
	.quad	0x3febc40496a47299              # double 0.86767796919191931
	.quad	0x3fe7c404444228f6              # double 0.74267781573988034
	.quad	0x3fe9423d0056f484              # double 0.78933572832433229
	.quad	0x3fea38e3e56ae6df              # double 0.81944460685846454
	.quad	0x3fe4f4b0317d2de0              # double 0.65486917177025461
	.quad	0x3fdd550590f3d078              # double 0.45831431537158762
	.quad	0x3fc62b0c0238c904              # double 0.17318868740546389
	.quad	0x3fd324a1c4425892              # double 0.29911083379682524
	.quad	0x3fc2bf96d32e8620              # double 0.14647183715446577
	.quad	0x3fe7e9d5cba63e4e              # double 0.74729432845374233
	.quad	0x3fe39fc2b2ec8f36              # double 0.61325201936822427
	.quad	0x3feb04992171c0d5              # double 0.84431129963015883
	.quad	0x3fe9958d56cfa16f              # double 0.79950587230000092
	.quad	0x3fefa3bd4774e607              # double 0.98873771625875483
	.quad	0x3fd2f827793f5a3a              # double 0.29639612999509135
	.quad	0x3fe8797834875c0d              # double 0.76482782611390265
	.quad	0x3f9def0f10497540              # double 0.029232249611927275
	.quad	0x3fe0bdf4a6cc3f5e              # double 0.52318794801429269
	.quad	0x3fe39a716f0df3c4              # double 0.6126029175790042
	.quad	0x3fed1f5fa664fa0d              # double 0.9100797891513267
	.quad	0x3fdd499f0897113c              # double 0.45761848296048746
	.quad	0x3fe904039e24aec8              # double 0.78174000632631024
	.quad	0x3fb8885653089878              # double 0.095830340644711742
	.quad	0x3fd5faa5f598be06              # double 0.34342335685775571
	.quad	0x3fe97bbf4b32b431              # double 0.79635586440202222
	.quad	0x3fec2e17c919c603              # double 0.88062657620884044
	.quad	0x3fe9f3ea11acf379              # double 0.81102469875587169
	.quad	0x3fd36bc33e5d5bdc              # double 0.30345231142331186
	.quad	0x3fe906a8218756e3              # double 0.7820625929695918
	.quad	0x3fe6380925465244              # double 0.69434029846394951
	.quad	0x3fe613c0c99ed1a4              # double 0.68991126421910964
	.quad	0x3fcc06d537141aa0              # double 0.21895852269536409
	.quad	0x3f8194b42a536600              # double 0.0085844111840058801
	.quad	0x3fe6dda3428fd478              # double 0.71455538750036762
	.quad	0x3fe17ae1a6142cd4              # double 0.54625017583148372
	.quad	0x3fe943bcbfa9a218              # double 0.78951871332270951
	.quad	0x3fe56c19002e799d              # double 0.66944551501710559
	.quad	0x3fa3f2313a4fd7a0              # double 0.038957155578756231
	.quad	0x3fb4290c6505a500              # double 0.078751349128328485
	.quad	0x3fc4458be94dc9bc              # double 0.15837239162244809
	.quad	0x3febdf5a35d000da              # double 0.87101469526535458
	.quad	0x3fd91caa6128a068              # double 0.39237460601953567
	.quad	0x3feed9762db8c988              # double 0.96404560976070374
	.quad	0x3fe3e42b4581aca9              # double 0.62160266471382386
	.quad	0x3fec630c568eeb4d              # double 0.8870908442107549
	.quad	0x3fe7448a700d47c8              # double 0.72711679349071634
	.quad	0x3fe3c3c2e69ee31a              # double 0.61764664691063165
	.quad	0x3fe72b1b98fdcca9              # double 0.72401218300946824
	.quad	0x3fe8c588f973e042              # double 0.7741131660577667
	.quad	0x3fd2f5d5b87100ea              # double 0.29625456821305696
	.quad	0x3fe049922874257d              # double 0.50898082638848019
	.quad	0x3fe6ecbbf56573f6              # double 0.71639821938481307
	.quad	0x3fec0897cbdbc44d              # double 0.87604894462686789
	.quad	0x3fe91d0eff972479              # double 0.78479719085693411
	.quad	0x3fc7a60d7d331a84              # double 0.18475502599013194
	.quad	0x3fb35f071ce4f2c8              # double 0.075668758920936274
	.quad	0x3fe925bd8b84c95e              # double 0.78585698365922574
	.quad	0x3fddfaa6b281f1d4              # double 0.46842353279478499
	.quad	0x3fe1c95f96e7e085              # double 0.55583171342642912
	.quad	0x3fe04469b6291d28              # double 0.50835118845217142
	.quad	0x3fc714139f24c0a8              # double 0.18030019064599867
	.quad	0x3fc6e7eb18584874              # double 0.17895258606637621
	.quad	0x3fe3be511c1b9d40              # double 0.6169820355397988
	.quad	0x3fe8a48a5215e811              # double 0.7700854876741251
	.quad	0x3fd69c0fd6c888f6              # double 0.35327526068625958
	.quad	0x3fd97f5044feb4e2              # double 0.39839560258663032
	.quad	0x3fefa114955416d8              # double 0.98841313520162099
	.quad	0x3fe6352ff99d72df              # double 0.69399260285316788
	.quad	0x3fce2ecd63f85114              # double 0.23580329305026082
	.quad	0x3fb329f2c0976580              # double 0.074858829516776026
	.quad	0x3fcc4e87f89056d0              # double 0.22114658009438992
	.quad	0x3feb74d99f7d9052              # double 0.85801392698750534
	.quad	0x3fd6611a3708f6e4              # double 0.3496766602946606
	.quad	0x3fe25530ec5aa18a              # double 0.57289930498977637
	.quad	0x3feda00eaf511d61              # double 0.92578825227330352
	.quad	0x3fe1084c6bbf484b              # double 0.532263002818817
	.quad	0x3fd8d9382d3a1db4              # double 0.38825802246762042
	.quad	0x3fc629094b758bac              # double 0.17312732872514169
	.quad	0x3fed8b11c42181a4              # double 0.92322624499142991
	.quad	0x3fee1e15200a000d              # double 0.94117218263272806
	.quad	0x3fed991c7ef91bc7              # double 0.92494034575872142
	.quad	0x3fd37ff8ce420d4e              # double 0.30468578474411323
	.quad	0x3fe31f669a770c7b              # double 0.59758310479118337
	.quad	0x3fe649e533de3a62              # double 0.69652042513355306
	.quad	0x3fe5e5456c2a6bb0              # double 0.68423720480074302
	.quad	0x3fd239ac8e5c1f66              # double 0.28477014448480131
	.quad	0x3fe792c8c20fbfc2              # double 0.73666799452438902
	.quad	0x3fe231944d0b5ca1              # double 0.56855216071825876
	.quad	0x3fbf5b0ef82bb630              # double 0.12248319205146951
	.quad	0x3fd19c237b30d0ce              # double 0.27515494375553551
	.quad	0x3fd748d4dc17d8f6              # double 0.36382028096649266
	.quad	0x3feb94f1e9e676b6              # double 0.86193175967829094
	.quad	0x3fd5d4f53e6eb8d6              # double 0.34112292382168385
	.quad	0x3feba0c42084054c              # double 0.86337477064822953
	.quad	0x3fd94bfc7f194c2c              # double 0.39526283657068251
	.quad	0x3fc59f2ca52e6364              # double 0.16892011704910737
	.quad	0x3fa7524ac97ecaa0              # double 0.045549714180556977
	.quad	0x3fe78a5e4eb4657a              # double 0.73564067241674924
	.quad	0x3fe0ebf23aaae87d              # double 0.52880202730672432
	.quad	0x3fc7e175c8957fb8              # double 0.18656799596919682
	.quad	0x3fcfbaaf7449ef0c              # double 0.24788468530811547
	.quad	0x3fc159e5e504ba00              # double 0.13555597002546449
	.quad	0x3fe8e6b6349ee9cb              # double 0.77816305425158683
	.quad	0x3fd1ee1d1a75c15a              # double 0.2801583059690721
	.quad	0x3fe2448fd55756dd              # double 0.57086936634251695
	.quad	0x3fb8192591ca9bd0              # double 0.094133709043134006
	.quad	0x3fe40bd56f9c388b              # double 0.62644454764246527
	.quad	0x3fca4daf551b3f48              # double 0.20549575477206816
	.quad	0x3fe1b2eb832d6162              # double 0.55309081669387816
	.quad	0x3feff62e97f5cfb9              # double 0.99880151443220832
	.quad	0x3fe930454a91ead5              # double 0.78714241566134524
	.quad	0x3fb363d6dbc06ca0              # double 0.07574217667608929
	.quad	0x3fecec90d3d25288              # double 0.90387765284920452
	.quad	0x3fd587f9107582ae              # double 0.33642412764860807
	.quad	0x3fe8fc1eb8a3bd01              # double 0.78077636778280646
	.quad	0x3fc4b96d2a5b19bc              # double 0.16190876548917099
	.quad	0x3fec2b3ab25c9649              # double 0.88027701221717181
	.quad	0x3fd4556dd2210c06              # double 0.3177141716043369
	.quad	0x3fee348122b216f6              # double 0.94390923286911632
	.quad	0x3fea105c2e53e945              # double 0.81449708031076595
	.quad	0x3fe49aea34fde709              # double 0.64391050672495098
	.quad	0x3fb8df06d85e8c10              # double 0.097153117966215285
	.quad	0x3fe577e2d7ad18d8              # double 0.67088453411340776
	.quad	0x3fe195124d74182e              # double 0.54944720389972246
	.quad	0x3fbb69475140fa10              # double 0.10707517369971975
	.quad	0x3fe4285146381a07              # double 0.62992156710316827
	.quad	0x3fdbc831e11c6908              # double 0.43409392341131126
	.quad	0x3fd652c5c3389c0c              # double 0.34880203308642943
	.quad	0x3fcc07da02d6fa54              # double 0.21898961199436207
	.quad	0x3fecf8037e969c34              # double 0.90527510380059661
	.quad	0x3fe60c90621dabae              # double 0.68903369105588808
	.quad	0x3fe26c22a7be11b7              # double 0.57570011865805426
	.quad	0x3fce7e9734703b64              # double 0.23823823986500792
	.quad	0x3fe9c0aae8fcbf27              # double 0.80476899628954335
	.quad	0x3fc8aa3867586ccc              # double 0.19269471212542155
	.quad	0x3fcd3d39171d516c              # double 0.22843087795866823
	.quad	0x3fe46bcbc16d0a7a              # double 0.63815868166450618
	.quad	0x3faf94165e3bb6e0              # double 0.061676692011912726
	.quad	0x3fd2f23ab771e6c6              # double 0.29603450693649014
	.quad	0x3fd0e6bbaa0bb7f2              # double 0.26408282857926146
	.quad	0x3fe10dc0195b0479              # double 0.53292851402524299
	.quad	0x3fe16e1c71aa3608              # double 0.54469129753278001
	.quad	0x3fe20a6260a2e4ac              # double 0.56376761316564261
	.quad	0x3fccaa47e4433e58              # double 0.22394655843389688
	.quad	0x3fe4c8d81cd11df6              # double 0.64951711300176274
	.quad	0x3fe23b2380e48cad              # double 0.56971907781953279
	.quad	0x3fb9cf031362fea8              # double 0.10081500266368926
	.quad	0x3fe90393425ee6bb              # double 0.78168642962483348
	.quad	0x3fed44c28bf49cb7              # double 0.91464354834615491
	.quad	0x3fa98979193849e0              # double 0.049876961067770287
	.quad	0x3fe59eb5fd0a618c              # double 0.67562388822538955
	.quad	0x3fe66afa660a0cfe              # double 0.70055885247748484
	.quad	0x3fa82a7c39021a10              # double 0.047199136694917709
	.quad	0x3fb48fa731b250c8              # double 0.080316972382493579
	.quad	0x3fbd76954f8cec70              # double 0.11509068672323663
	.quad	0x3fd3920e62975c7c              # double 0.30578956249286882
	.quad	0x3fd93263b5320c48              # double 0.39370053000329053
	.quad	0x3fe90c6921191d5e              # double 0.78276497330163486
	.quad	0x3fbebe1f3e9f5c80              # double 0.12008853224630123
	.quad	0x3fe656c5b7c77102              # double 0.69809232611035577
	.quad	0x3fd96bea434efffa              # double 0.39721161435227226
	.quad	0x3fd16e37b97f15bc              # double 0.27235215296635906
	.quad	0x3fb4701cc57ef798              # double 0.079835699288166473
	.quad	0x3fd8498343869efa              # double 0.37948686212847316
	.quad	0x3feb4cb709de27b2              # double 0.85311462333014831
	.quad	0x3fc9e610c7d2aca4              # double 0.20233354336719345
	.quad	0x3fdfca022ab091b0              # double 0.49670461815756095
	.quad	0x3fe0b4b16a089b2f              # double 0.52205725393000602
	.quad	0x3fe72746de326a14              # double 0.72354453466261015
	.quad	0x3fee85bc59bcc6ef              # double 0.95382516409719453
	.quad	0x3fe163399c3211fe              # double 0.54336243159247011
	.quad	0x3fcd3f1cd6847530              # double 0.22848854517443717
	.quad	0x3fe74cfa459ff868              # double 0.72814668272600347
	.quad	0x3fd8ab33f306390a              # double 0.38544939740030826
	.quad	0x3fd9221c6833cc76              # double 0.39270696807870509
	.quad	0x3fa672b6ddb22910              # double 0.043843950808041154
	.quad	0x3fec548d83744d42              # double 0.88532138514202807
	.quad	0x3fc0ac7b7eed7654              # double 0.13026374528537821
	.quad	0x3fd55c81b2512394              # double 0.33377115644230426
	.quad	0x3fefa4488af46fcb              # double 0.98880412234893222
	.quad	0x3fe2b40d652bd3fd              # double 0.58447904357910796
	.quad	0x3fe23dbfd2b464ad              # double 0.57003775742773188
	.quad	0x3fec97a62f31e4a0              # double 0.89351186006310356
	.quad	0x3fc50472ace5c128              # double 0.16419824068317124
	.quad	0x3fe3664c2292b283              # double 0.60623747589632193
	.quad	0x3fed1737605b570d              # double 0.90908402270972177
	.quad	0x3febc7f15d4f597b              # double 0.86815708374596967
	.quad	0x3fe7414171e23ea3              # double 0.72671577685283173
	.quad	0x3fe5828f748f6cef              # double 0.67218754544901838
	.quad	0x3fe9a81f7bf0d83d              # double 0.80177282530963334
	.quad	0x3fef0899fdb197cf              # double 0.96979999112658699
	.quad	0x3fe641401d0c2c42              # double 0.6954651419959037
	.quad	0x3fe2610ff1cbcbd3              # double 0.57434842325016644
	.quad	0x3fe19d0fd33ca2a5              # double 0.55042258507917963
	.quad	0x3febf5a9e85a3215              # double 0.87373824483217055
	.quad	0x3fc9439aa680d4ac              # double 0.19737561349908128
	.quad	0x3fd069c7e4091ce0              # double 0.25645634907819037
	.quad	0x3fd8485d6c379554              # double 0.37941680496290542
	.quad	0x3fd5559cc9f1290c              # double 0.33335036965276355
	.quad	0x3fd57b6343076706              # double 0.33565599008362346
	.quad	0x3feb876cc327b177              # double 0.86028135410519624
	.quad	0x3fe22418cc6a6ca7              # double 0.56690635609574691
	.quad	0x3fefa5d528bde3c2              # double 0.98899324376463249
	.quad	0x3fd4495920c16eca              # double 0.31697681616581674
	.quad	0x3fdabb6ee5086718              # double 0.41769001356588964
	.quad	0x3fdd4e12836f0b2e              # double 0.45789015612915562
	.quad	0x3fee90d6413262fa              # double 0.95518028959040113
	.quad	0x3fe1b3925dcf6ed5              # double 0.5531703788978698
	.quad	0x3fe24ff45ba064ae              # double 0.57226007362182485
	.quad	0x3fe3bc333f9cfced              # double 0.61672365593395073
	.quad	0x3fd8ab5a3e287a16              # double 0.38545852728012286
	.quad	0x3fce9d89fdee7c08              # double 0.23918270968439992
	.quad	0x3fef51f55d2dcae8              # double 0.97875469397544367
	.quad	0x3fda206e23b4aa80              # double 0.40822938429725042
	.quad	0x3fd66e13d6de3614              # double 0.35046859725193369
	.quad	0x3fe8a8c0e60f6537              # double 0.77059979375477539
	.quad	0x3fd5d54ecb12bfe6              # double 0.34114427405711323
	.quad	0x3fd11da2633dda56              # double 0.26743373576701879
	.quad	0x3fefa0d59bd71fdb              # double 0.98838310658993167
	.quad	0x3fe66323b0283801              # double 0.69960197835621341
	.quad	0x3f7d93d864140800              # double 0.0072210743685463541
	.quad	0x3fec36f5686d556b              # double 0.88170881648936239
	.quad	0x3fddc7c1c8fdbba4              # double 0.4653171980671067
	.quad	0x3fe6f34451a5b925              # double 0.71719566294431003
	.quad	0x3fd3ed097b31e9de              # double 0.31134259253272301
	.quad	0x3fdef8c31abb2356              # double 0.48393323526811594
	.quad	0x3fd4e52472db21c8              # double 0.32648574081806858
	.quad	0x3f9ad2112ee0a6e0              # double 0.026191967474153866
	.quad	0x3febed38e046d171              # double 0.87270778469114252
	.quad	0x3f8efbd66dc875c0              # double 0.015128779626190858
	.quad	0x3fe5e63f24fa216f              # double 0.68435628149113181
	.quad	0x3fee30046173a14c              # double 0.94336146386653174
	.quad	0x3fd828c0c1f4cf62              # double 0.37748736325305832
	.quad	0x3fd7a3e2b32ca650              # double 0.36937777993680232
	.quad	0x3feebdd7a6f65455              # double 0.96067412004289087
	.quad	0x3fe8eafc7202ef3c              # double 0.77868482845176556
	.quad	0x3fe5d7f036ac7b35              # double 0.68260965994327327
	.quad	0x3fdb8df2e22cb48e              # double 0.43053886496893135
	.quad	0x3fc56608c484605c              # double 0.16717633815346999
	.quad	0x3fd742c48b9f2648              # double 0.36345018038682442
	.quad	0x3fe42c8e81523ef2              # double 0.63043904550610663
	.quad	0x3fd8d97094051a6e              # double 0.3882714696414159
	.quad	0x3fe15e87fa1c13a6              # double 0.54278944825692998
	.quad	0x3fb791d56ff48ed8              # double 0.092068996270025294
	.quad	0x3fc36655c293b7ec              # double 0.15156051636534984
	.quad	0x3fb492da1e0896c8              # double 0.080365784008416985
	.quad	0x3f85140fe5cce3c0              # double 0.010292171669435635
	.quad	0x3fd966d9d4eaeaae              # double 0.3969025210641729
	.quad	0x3fdfff78c494ef98              # double 0.49996775815429251
	.quad	0x3fc6498f7c51aecc              # double 0.17411988802211054
	.quad	0x3fe4ad7dc9f68793              # double 0.64617814489268921
	.quad	0x3fdb7928f520c9be              # double 0.42927001894272709
	.quad	0x3fdc4a781574c268              # double 0.44204523177453448
	.quad	0x3fca6f229fb52bd4              # double 0.20651657865741291
	.quad	0x3fe1799cf62105d8              # double 0.54609535286015909
	.quad	0x3fe20d4e67e12327              # double 0.56412430085137977
	.quad	0x3fdef45b772138d2              # double 0.48366438516394539
	.quad	0x3fee30ebf32677d5              # double 0.94347188463484122
	.quad	0x3fecd7e148313056              # double 0.90135254001644216
	.quad	0x3fe6992e7f55fb6b              # double 0.70619892950331342
	.quad	0x3fe2e58c1f12f423              # double 0.59052091664455408
	.quad	0x3fc6c3d1479dc8f8              # double 0.17785087582485182
	.quad	0x3fe12b9be0e8c29f              # double 0.53657335212308854
	.quad	0x3fdb3801878cfabc              # double 0.42529333341000686
	.quad	0x3fe3e83b4712bbae              # double 0.62209857827644099
	.quad	0x3fce2ba3e54fb86c              # double 0.23570679375501713
	.quad	0x3fea42c5a016e8db              # double 0.82065087573507911
	.quad	0x3fd8c531195d802e              # double 0.38703563191484391
	.quad	0x3fef3b89116bf6af              # double 0.97601750757867999
	.quad	0x3fec59cea3fd7998              # double 0.88596279172252235
	.quad	0x3febb1c7061652fd              # double 0.86545134724528305
	.quad	0x3fd1a236415b7924              # double 0.27552563078451642
	.quad	0x3fe36b861400fe8b              # double 0.60687545687683675
	.quad	0x3fd59572ff5db3e2              # double 0.33724665582741242
	.quad	0x3fee78b55483b311              # double 0.95223490244606712
	.quad	0x3fc38402810bc884              # double 0.1524661188228188
	.quad	0x3feaca2081387b82              # double 0.83717370260625068
	.quad	0x3fef9ec6ba7b886e              # double 0.98813187048314233
	.quad	0x3fe96733e2981984              # double 0.79384798294704284
	.quad	0x3fefcedb53aeef94              # double 0.99400106758501971
	.quad	0x3fe4b4113abbeb55              # double 0.64698087188240072
	.quad	0x3fe35181d085757b              # double 0.6036995957071406
	.quad	0x3fd36318a1e3e80a              # double 0.30292335328670161
	.quad	0x3fc0d39b7172e1b8              # double 0.13145773925294946
	.quad	0x3fed9732d26c1b1b              # double 0.9247068509874653
	.quad	0x3febfcf560212a8f              # double 0.87462872290901028
	.quad	0x3fe69773e4ca12f2              # double 0.70598787961406928
	.quad	0x3fe26e361bced4cb              # double 0.57595353537785721
	.quad	0x3fdbab53890b6258              # double 0.43233192809342347
	.quad	0x3fdc55a39939264e              # double 0.44272699320990661
	.quad	0x3fd59fab7ac1580a              # double 0.33787047374551149
	.quad	0x3fd5caa70eb33e60              # double 0.34049393115581061
	.quad	0x3fad4d986de40e00              # double 0.057232631124886524
	.quad	0x3fedeb064a12ba86              # double 0.93493952243245881
	.quad	0x3fd1621ff4ba2cae              # double 0.27161406420845935
	.quad	0x3f96effa339e5800              # double 0.022399815941376744
	.quad	0x3fe16d395f20c47a              # double 0.5445830209702216
	.quad	0x3fe31de3eedd89e4              # double 0.59739872601886335
	.quad	0x3fe2fb495edfa1b1              # double 0.59317463426582695
	.quad	0x3fdf88dbcad81eca              # double 0.49272818383222428
	.quad	0x3febd6c0e4f805a8              # double 0.86996502609706727
	.quad	0x3fe701c371076b6f              # double 0.71896526409123662
	.quad	0x3fe3365fa7e983f6              # double 0.6003874091658179
	.quad	0x3fdb4c1c78512862              # double 0.42652045964917396
	.quad	0x3fe8b61ae6e7b1e0              # double 0.77222962473529932
	.quad	0x3f7a8d3b2b763300              # double 0.006482344753192093
	.quad	0x3fe9ec67835c76f9              # double 0.81010795265657898
	.quad	0x3fe894b684568bf7              # double 0.76815343711166306
	.quad	0x3fdc820ef8d8f2c0              # double 0.44543813992985903
	.quad	0x3fb2626885694330              # double 0.071814091273392888
	.quad	0x3fe34cbb12944f0e              # double 0.60311654690528527
	.quad	0x3fc6044c6594b348              # double 0.17200617752078018
	.quad	0x3fdaf715c9ee7fce              # double 0.4213308784474038
	.quad	0x3fe262f499e4d618              # double 0.57457952554131264
	.quad	0x3fe756a6c32c3043              # double 0.72932756538057963
	.quad	0x3fd4ebaca96e7388              # double 0.32688442750969005
	.quad	0x3fd26a3ecef4201e              # double 0.28773470125497791
	.quad	0x3fea57fd5ccb54d5              # double 0.82324092983130959
	.quad	0x3fc0ea51b93d8308              # double 0.13215085549293115
	.quad	0x3fe7c21fbc701b5d              # double 0.74244677356987732
	.quad	0x3fa72529e25850e0              # double 0.045205410842898308
	.quad	0x3fe6f044905ac2ca              # double 0.71682956880803173
	.quad	0x3fce5ba10b2527cc              # double 0.23717129749485222
	.quad	0x3fc1486f3a090150              # double 0.13502302488087503
	.quad	0x3fa279af31c2daf0              # double 0.036084627937659763
	.quad	0x3fd4bf732d50adce              # double 0.32418517518337076
	.quad	0x3fee1f78ec543b7e              # double 0.9413418403436109
	.quad	0x3fd4ae644d11522e              # double 0.32314403082026188
	.quad	0x3fceceb90d809f20              # double 0.24068368109987492
	.quad	0x3fedf79b712f4bfa              # double 0.93647548777005274
	.quad	0x3fd1988702a53c52              # double 0.27493453272194757
	.quad	0x3f8c422b4e8b1c80              # double 0.013798082670645195
	.quad	0x3fef750e1510ec3c              # double 0.98303894152139248
	.quad	0x3fd00db3fd5836b0              # double 0.25083636990243985
	.quad	0x3fe12d859395f0dc              # double 0.53680685830434127
	.quad	0x3fc05bbdf7e68184              # double 0.12779974560272589
	.quad	0x3fe377f7dd5559f7              # double 0.6083945582311675
	.quad	0x3fe115872e7b9bf4              # double 0.53387793615990953
	.quad	0x3fea96cf0eae2f4a              # double 0.8309092795111408
	.quad	0x3fc8faad94ed26b8              # double 0.19515008708758841
	.quad	0x3fec72fcc9f56775              # double 0.88903655476609222
	.quad	0x3fd8eb297ffbf89e              # double 0.38935315607512588
	.quad	0x3fbad58facc64b00              # double 0.10482118576173249
	.quad	0x3fcd49bd7114a6d0              # double 0.22881286641614063
	.quad	0x3fd225015be22814              # double 0.28350862477293615
	.quad	0x3fc8d60b8c7a6e9c              # double 0.19403213843621792
	.quad	0x3fe9e277e5e1cf01              # double 0.80889506243553921
	.quad	0x3fd7e9a7ae76883c              # double 0.37363616979030545
	.quad	0x3fc5125f5cd89740              # double 0.16462318452357216
	.quad	0x3fe6928d04c8dabd              # double 0.70538950857629568
	.quad	0x3fd2e2e75824013a              # double 0.29509910209164369
	.quad	0x3fe996df043d6128              # double 0.79966688945845465
	.quad	0x3fc85f4b567ef614              # double 0.19040815089640317
	.quad	0x3fdb5af4669435de              # double 0.42742643372988975
	.quad	0x3fd3cc38aa54d852              # double 0.30933968194893169
	.quad	0x3feb1921e384ccc7              # double 0.84681791722541611
	.quad	0x3fe8d32290200df1              # double 0.77577331685500728
	.quad	0x3fc400d3a346fbb0              # double 0.15627522919200265
	.quad	0x3fa70af2145da4a0              # double 0.045005383478220695
	.quad	0x3fe8818800c6b298              # double 0.76581192161173117
	.quad	0x3fb5424c90bf1ba0              # double 0.083042893732552248
	.quad	0x3fcc5c5f3e6091d0              # double 0.22156897111666618
	.quad	0x3fd214921a5e11be              # double 0.28250553679415791
	.quad	0x3feb75d9da24c25e              # double 0.85813610654993133
	.quad	0x3fcc3cc550b7b190              # double 0.22060457650458121
	.quad	0x3fc776f7551de890              # double 0.18331805854888161
	.quad	0x3feaabd622571266              # double 0.83347613055282177
	.quad	0x3fe1bb1cc6f8e490              # double 0.55409087049260286
	.quad	0x3fe4f699d764893e              # double 0.65510265416040858
	.quad	0x3fc8171a9a6848d8              # double 0.18820507563993405
	.quad	0x3fd3b45dd59cfb06              # double 0.30788369999565679
	.quad	0x3feae8084f454f25              # double 0.84082427485052291
	.quad	0x3fda8f8cfa44cfba              # double 0.4150116390258024
	.quad	0x3fe423edbdc4793d              # double 0.62938582481346084
	.quad	0x3fabca068a997090              # double 0.054275707644337534
	.quad	0x3fe0fe98fc113ae3              # double 0.53107880813498942
	.quad	0x3fe9b0e56bb23d8c              # double 0.8028437713091292
	.quad	0x3fd5edda8912a18c              # double 0.3426424349404662
	.quad	0x3fd39251420fbdec              # double 0.30580550624196579
	.quad	0x3fef26df64778952              # double 0.97349519369553605
	.quad	0x3fd211a1b7bf88de              # double 0.28232615417631546
	.quad	0x3fe8af59b566fed4              # double 0.77140508108274241
	.quad	0x3febb67529bce3f8              # double 0.86602266456532018
	.quad	0x3fe30ffde6fd8ccb              # double 0.59570212474172857
	.quad	0x3fdcb2b849eeaa3a              # double 0.44840819568586066
	.quad	0x3fd9a86d11ec9096              # double 0.40090491056822353
	.quad	0x3fee88319d05edaf              # double 0.95412521999917554
	.quad	0x3fd9b403ade61142              # double 0.40161220533652309
	.quad	0x3fee24b3e1a822af              # double 0.94198030541982358
	.quad	0x3f8552b82287fb40              # double 0.010411680749709995
	.quad	0x3fe3ff6b9cc7f893              # double 0.62492924329105148
	.quad	0x3fd8f19e711a16e0              # double 0.3897472481261115
	.quad	0x3fe61a43c1938f13              # double 0.69070613677874559
	.quad	0x3fc0ce23865290c0              # double 0.13129085596768242
	.quad	0x3fe6e65fd432e4e7              # double 0.71562186665610461
	.quad	0x3fcc39add4bb16b0              # double 0.22051022422072242
	.quad	0x3fee1e4db38aaa0b              # double 0.94119916025857842
	.quad	0x3fec68bc3a34e74e              # double 0.88778506630408471
	.quad	0x3fedd27e6bab1843              # double 0.93194504765484287
	.quad	0x3fea401d0cd97e0a              # double 0.82032635221179473
	.quad	0x3fd1fc3a6d635f48              # double 0.28101978952826245
	.quad	0x3fd20f42435b70ae              # double 0.28218132570124055
	.quad	0x3fee137e086bf9c5              # double 0.93987943310622113
	.quad	0x3fedd4eff19bd764              # double 0.93224332036218671
	.quad	0x3fed9c819ac4b2ee              # double 0.92535476902193436
	.quad	0x3fe0ed7e33d2ccbb              # double 0.52899084207310609
	.quad	0x3febb60f0b70ed4e              # double 0.86597397074312155
	.quad	0x3fe27c6e261bddb6              # double 0.57768924182067027
	.quad	0x3fd760afa84f31fc              # double 0.36527625500164596
	.quad	0x3fd421569975cf72              # double 0.31453480707499815
	.quad	0x3fed712b2cc1b632              # double 0.92006453267612742
	.quad	0x3fc9ca881af65810              # double 0.20149327579991949
	.quad	0x3fad6b253ac14190              # double 0.057458079740743462
	.quad	0x3fdb248abe543958              # double 0.42410534464661032
	.quad	0x3fea43612ccbbd3a              # double 0.82072504758062981
	.quad	0x3fee1f9a6fe48445              # double 0.94135782102615251
	.quad	0x3fee661ed79a5dce              # double 0.94996587858161674
	.quad	0x3fe46602b45ea4b9              # double 0.63745246151406498
	.quad	0x3fe57f222c076b3c              # double 0.67176922416124496
	.quad	0x3fe77efee70b9030              # double 0.73425240636834666
	.quad	0x3fe14c8f34f7e6ae              # double 0.54059563012488865
	.quad	0x3faff4f4450580e0              # double 0.062415727067447468
	.quad	0x3fb4c5096b0e7668              # double 0.081131542813147939
	.quad	0x3fd0bfe9b0d5e7b4              # double 0.26171343106363598
	.quad	0x3fe87d8018754722              # double 0.76531986977554234
	.quad	0x3f991c737b43e580              # double 0.024522594831954958
	.quad	0x3feccc4f52f21459              # double 0.89994016838376034
	.quad	0x3fe90451da0721bf              # double 0.78177731116834781
	.quad	0x3f95750502b80920              # double 0.020954206744144277
	.quad	0x3fe65a796cafd550              # double 0.69854422786617398
	.quad	0x3fd9810592203fa2              # double 0.398499863339561
	.quad	0x3fde9a09676a6966              # double 0.47815165614306065
	.quad	0x3fce19dc2bece448              # double 0.23516418595116506
	.quad	0x3fe0f6c12e9d7786              # double 0.53012141327393247
	.quad	0x3fddc91bad43a6de              # double 0.46539966507280706
	.quad	0x3fc1c0c0cb8ad57c              # double 0.13869485796537251
	.quad	0x3feaadec038e160d              # double 0.83373070425358409
	.quad	0x3febd7b6f3741537              # double 0.87008235501767828
	.quad	0x3fe3e70d941e34b2              # double 0.62195471696181515
	.quad	0x3feacccb46671745              # double 0.83749927282836067
	.quad	0x3fd8a47b5e0e5ba4              # double 0.3850391787067855
	.quad	0x3fabe43a67315350              # double 0.054475617501032247
	.quad	0x3fe5780de901c050              # double 0.67090507039211822
	.quad	0x3fc4a062c94833d4              # double 0.16114458873963022
	.quad	0x3fcb92f8066b6fa0              # double 0.21542263329945133
	.quad	0x3fde0bc2cbe1837a              # double 0.46946782980199198
	.quad	0x3fec355fc812f3b7              # double 0.88151539875945317
	.quad	0x3feab04906c28360              # double 0.8340191967036894
	.quad	0x3fd49d91f355e3ce              # double 0.32211731684907086
	.quad	0x3fdcb5c443810f84              # double 0.44859415619088616
	.quad	0x3fed16d1f7f609ab              # double 0.90903566770457667
	.quad	0x3fd31a12e889eb62              # double 0.29846642216550923
	.quad	0x3fd4d2f0493d15de              # double 0.32537467148025978
	.quad	0x3fc741c96152f210              # double 0.18169514896534666
	.quad	0x3fce63f29a69d454              # double 0.2374251607867871
	.quad	0x3fc53890d2d48aac              # double 0.16578874868817672
	.quad	0x3feb2662f176fc5e              # double 0.84843585167972058
	.quad	0x3fbcd540c79d7c50              # double 0.11262898324410853
	.quad	0x3fe55b2c728d6ed9              # double 0.66737959264306845
	.quad	0x3fe218741fa3fe50              # double 0.56548505954556028
	.quad	0x3fe2818fd92135f7              # double 0.5783156624617608
	.quad	0x3fdd70efb7ba53fc              # double 0.46001809065029398
	.quad	0x3fe70e5dbc6a8780              # double 0.72050368118310359
	.quad	0x3fe2fd2dba8e4d66              # double 0.59340559422200267
	.quad	0x3fe993ac9fd64b5b              # double 0.79927664964848633
	.quad	0x3feca60c655ce84c              # double 0.89526958272404888
	.quad	0x3fe7f5229b5437a8              # double 0.74867372834863932
	.quad	0x3fe613fb49bf1ea1              # double 0.68993915942788331
	.quad	0x3fda4903ff452858              # double 0.41070651940083769
	.quad	0x3f86e43766f3e5c0              # double 0.011177475766532718
	.quad	0x3fe5615092a044d9              # double 0.66812924039745802
	.quad	0x3fd80e1c43e7fd0e              # double 0.37586123115029657
	.quad	0x3fdc6dff1606da3e              # double 0.44421364928294682
	.quad	0x3fee5f7b9d324bdb              # double 0.94915562345920124
	.quad	0x3feece98e77da0b2              # double 0.96271939480813828
	.quad	0x3fc8665ea90e1584              # double 0.19062407736434406
	.quad	0x3fe86ed6b9d90ea8              # double 0.76353012369550743
	.quad	0x3f5626bb750e4000              # double 0.0013520079266733376
	.quad	0x3fd89529b6c656de              # double 0.384104183665256
	.quad	0x3fd80ae30b27fa68              # double 0.37566448296994404
	.quad	0x3fe3a539147a3176              # double 0.61391881942249316
	.quad	0x3fe0311f5ee96858              # double 0.50599640405131208
	.quad	0x3fc7e24c22906b58              # double 0.18659354865743683
	.quad	0x3fe116d37221d2d3              # double 0.53403637210302646
	.quad	0x3fdb6748cee9739a              # double 0.42817897993318754
	.quad	0x3fea9f61a5b25b4a              # double 0.83195574152601037
	.quad	0x3feef0c8c6039293              # double 0.96689261126137393
	.quad	0x3fe52f0fbae31836              # double 0.6619948053492013
	.quad	0x3fec4aa35c291a5e              # double 0.8841110992442045
	.quad	0x3fed32e794e1323d              # double 0.91246394231854533
	.quad	0x3fea518ab65b901c              # double 0.82245383850795716
	.quad	0x3feba2d1a18462a2              # double 0.8636253504401632
	.quad	0x3fda455848a2ee02              # double 0.41048247426417117
	.quad	0x3fd248b34bb231cc              # double 0.28568727867312016
	.quad	0x3fd601030d93a6bc              # double 0.3438117630563331
	.quad	0x3fdf138c41e69710              # double 0.48556810794467342
	.quad	0x3fe7566046312d88              # double 0.72929395398516395
	.quad	0x3fed813eaef18dc1              # double 0.92202696007409923
	.quad	0x3fc5934fed268cf4              # double 0.16855811195009773
	.quad	0x3fd41473a109b4e0              # double 0.31374827123984339
	.quad	0x3fea31296541899c              # double 0.81850118423999473
	.quad	0x3f90540b3da55c60              # double 0.01594560207135165
	.quad	0x3fa858b4c9efa040              # double 0.04755177464522875
	.quad	0x3fe9306a114bff09              # double 0.78715995195668242
	.quad	0x3fa8ea9e3a03b260              # double 0.048664993841019522
	.quad	0x3fda42d79cb31c32              # double 0.41032972624492736
	.quad	0x3fdcaa251c79046e              # double 0.44788482456721723
	.quad	0x3fd696efdd70f81c              # double 0.35296246171117374
	.quad	0x3fe9f3fd4d5119ed              # double 0.8110338697522913
	.quad	0x3fef2d68676b75a1              # double 0.97429294776127417
	.quad	0x3fdda9c56d509ebc              # double 0.4634870116737877
	.quad	0x3fdbc420a7b898c4              # double 0.43384567622196024
	.quad	0x3feec1ecad17a6d4              # double 0.96117242629153532
	.quad	0x3feb700ac1180559              # double 0.85742700303687081
	.quad	0x3fc0b78fe1f1544c              # double 0.13060186893804582
	.quad	0x3fd7c6e1ac2ab526              # double 0.37151376546065007
	.quad	0x3fe1bb36094bb77e              # double 0.55410291495876129
	.quad	0x3fcb5e418345c148              # double 0.21381396207608305
	.quad	0x3fc73f5743ea0c24              # double 0.18162051025510195
	.quad	0x3fecda97dcc7e512              # double 0.90168374177224764
	.quad	0x3fd655aef082ac52              # double 0.34897969710681764
	.quad	0x3fecf09f0a101b41              # double 0.90437271085179571
	.quad	0x3fcda91dc5beefa4              # double 0.23172351985510631
	.quad	0x3feaf4176979bab8              # double 0.84229631996807708
	.quad	0x3fe5b2a3ce957876              # double 0.67805662487422924
	.quad	0x3fe171775e50abc5              # double 0.54510086460992879
	.quad	0x3fd1d19bcf0136fc              # double 0.27841849532420304
	.quad	0x3fe4e7b84e19458f              # double 0.65328612569480693
	.quad	0x3fe8ed17b4b61d62              # double 0.77894196791832493
	.quad	0x3fcf12e44c4bc07c              # double 0.2427640316523173
	.quad	0x3fc5f570ae6773dc              # double 0.17155273929429782
	.quad	0x3fd3418a7587e104              # double 0.30087529637923205
	.quad	0x3fa443ca0b7215e0              # double 0.03957969083516466
	.quad	0x3fd3c6613e8ef970              # double 0.30898314580181019
	.quad	0x3fe0d76cbff7b4e7              # double 0.52629697316811253
	.quad	0x3fef1cf1b8e84c77              # double 0.97228323092202983
	.quad	0x3fea3dfc01e6d805              # double 0.82006645556862223
	.quad	0x3fe32bb40c282cf4              # double 0.5990848767700343
	.quad	0x3fb68985670b21a8              # double 0.088035905510997936
	.quad	0x3fae20abb8845190              # double 0.058843008302719046
	.quad	0x3fec03a0b0f263cd              # double 0.87544283447197702
	.quad	0x3fc50b3d0ded5868              # double 0.16440547161136299
	.quad	0x3fde6ab0d70a656e              # double 0.47526188850459661
	.quad	0x3f698b2030007200              # double 0.0031180981313936318
	.quad	0x3fefc3eff8f7421c              # double 0.99266813875334802
	.quad	0x3fd78e3328f18e28              # double 0.36805418966671022
	.quad	0x3fe2ba8174a6c3fa              # double 0.58526680739862447
	.quad	0x3fc314d79524b628              # double 0.14907355101006314
	.quad	0x3feae45ec0019997              # double 0.84037721158238099
	.quad	0x3fdd4b370e5c4698              # double 0.45771576311481388
	.quad	0x3fe52bdd5388fa58              # double 0.66160456004565571
	.quad	0x3fc13c4aec7dd410              # double 0.13465248629987103
	.quad	0x3fe2e3961d2c0193              # double 0.59028154084812667
	.quad	0x3f878e26e62a6b40              # double 0.011501602076625539
	.quad	0x3fecfc9a88efb434              # double 0.90583540673617912
	.quad	0x3fecb2dfda6577ac              # double 0.89683525710619482
	.quad	0x3fd7556a56af77c6              # double 0.36458834138272456
	.quad	0x3faa117e277473c0              # double 0.050914709392805957
	.quad	0x3fe8a077cdb789a4              # double 0.76958837679949398
	.quad	0x3fb33011c618bba0              # double 0.074952231276923076
	.quad	0x3fe205b3dffc9e72              # double 0.56319612262173124
	.quad	0x3fe6f4fae1809f30              # double 0.71740478557055631
	.quad	0x3fe03425682cad7d              # double 0.506365493265022
	.quad	0x3f96629e6484ac40              # double 0.021860575566432283
	.quad	0x3fd65f607d589d12              # double 0.34957134476503982
	.quad	0x3fae009c4111cda0              # double 0.058598406737384368
	.quad	0x3fc3c19c44076ca0              # double 0.15434602090576721
	.quad	0x3fc2666d915eccf0              # double 0.14375085447463887
	.quad	0x3fe660f1173f1017              # double 0.69933371105480802
	.quad	0x3fef9ec6b276131e              # double 0.98813185554226712
	.quad	0x3fe46dfffc913011              # double 0.63842772798079939
	.quad	0x3fb60c272acb4660              # double 0.08612294001366072
	.quad	0x3fe6266a41d648d5              # double 0.69218933924482917
	.quad	0x3fe7e0b7a4356a1a              # double 0.74618131706239699
	.quad	0x3fe6846d55c2f3f0              # double 0.70366541624355072
	.quad	0x3fdb0be72c16422e              # double 0.42260150246969175
	.quad	0x3fefe6939644c767              # double 0.99689654683446071
	.quad	0x3fe46efd2d45a4ab              # double 0.63854845850177833
	.quad	0x3fdc9917637bff92              # double 0.44684395518560749
	.quad	0x3fc15e329eee0f6c              # double 0.13568718681573999
	.quad	0x3fcaed56c7102840              # double 0.21036801071051237
	.quad	0x3fe20a234542ce1b              # double 0.56373752143412348
	.quad	0x3fd5a5ecd10e9e1e              # double 0.33825226226551475
	.quad	0x3fe309142a04f935              # double 0.59485824782294705
	.quad	0x3fef307cc3e69d55              # double 0.97466886770136318
	.quad	0x3fe66348a0b68f92              # double 0.6996195925644193
	.quad	0x3fd896797a3c71b2              # double 0.38418423592681983
	.quad	0x3fa17f305c0a06b0              # double 0.03417349933171232
	.quad	0x3fe85362d80842a7              # double 0.76017896837045817
	.quad	0x3fe062e8f2bdfbf0              # double 0.51207396898814572
	.quad	0x3fd928aa9f622a38              # double 0.39310708584585852
	.quad	0x3facfb7dd45281a0              # double 0.056606228035209982
	.quad	0x3fec9dc84891fa81              # double 0.89426054166672497
	.quad	0x3fd73e8e59128396              # double 0.36319311808079513
	.quad	0x3fbeb5c7a15c0cc8              # double 0.11996123971407535
	.quad	0x3fe0db1a6974272c              # double 0.52674599262647837
	.quad	0x3fe89ec1e8bb3d90              # double 0.76937957244256161
	.quad	0x3fe5d9139502bc13              # double 0.6827485952725304
	.quad	0x3fd2c00093a5e1d6              # double 0.29296888750789429
	.quad	0x3fc6cc4c865a9898              # double 0.17810970840691165
	.quad	0x3fe70adfe3ffb3f0              # double 0.7200774624922115
	.quad	0x3fde181668c46b2e              # double 0.47022018653085496
	.quad	0x3fd3f7d4522afef6              # double 0.31200130485738897
	.quad	0x3fb063c5e1d27238              # double 0.064022414810502748
	.quad	0x3fddc3593ba2d09a              # double 0.46504813026263891
	.quad	0x3fe6307a0317fd45              # double 0.69341755489578161
	.quad	0x3fd030880ab5ddcc              # double 0.25296212240160965
	.quad	0x3fcb4780794c2c38              # double 0.21311956331951065
	.quad	0x3fee7b31940bdb9e              # double 0.95253828921601147
	.quad	0x3fd0c2078ecc0b46              # double 0.26184262223266719
	.quad	0x3fd875c640d54bce              # double 0.38218838054052362
	.quad	0x3fe97de3ea6b72aa              # double 0.79661746773816344
	.quad	0x3fec62072738c518              # double 0.88696630154132361
	.quad	0x3fe971eff261d6c6              # double 0.79515836086530878
	.quad	0x3fe67714d40497bb              # double 0.70203629884485197
	.quad	0x3fd9488021fe69a4              # double 0.39505008048731782
	.quad	0x3fd2a0dc22d645c6              # double 0.29106810953188889
	.quad	0x3fee4b77b10c9e2b              # double 0.94671234683932448
	.quad	0x3fe6f3efd3b1d7e6              # double 0.71727744433041773
	.quad	0x3fb738fa72a56260              # double 0.090713170041803348
	.quad	0x3fd3036a9cd585ce              # double 0.29708352390124737
	.quad	0x3fe79c10ca3a6c04              # double 0.73780097482392692
	.quad	0x3fe828b26c458996              # double 0.75496789118578778
	.quad	0x3fd203844e2dc5f2              # double 0.28146464953087424
	.quad	0x3fea9f5de86be6bd              # double 0.83195395846197295
	.quad	0x3fcc98132b86ad78              # double 0.22339095711991397
	.quad	0x3fea3d2ea1dacceb              # double 0.81996852504962925
	.quad	0x3fdaafe27784e152              # double 0.41698514625342853
	.quad	0x3fca89a066fe754c              # double 0.20732502964976118
	.quad	0x3fe7e36d7884423f              # double 0.74651216066747128
	.quad	0x3fe0229a862418b7              # double 0.50422407340445019
	.quad	0x3fec556bb64a64fa              # double 0.88542733768113568
	.quad	0x3fcb7d780d78fce4              # double 0.21476650865404345
	.quad	0x3fd4b350dc4a2584              # double 0.3234445716157881
	.quad	0x3fdecd9e1e20b3d8              # double 0.48129990522539634
	.quad	0x3fd0b59bc742d60e              # double 0.26108450373735159
	.quad	0x3fe51d095d09ba08              # double 0.65979450389369365
	.quad	0x3fd6f2f0fdb2bd80              # double 0.35857796454634894
	.quad	0x3fd947dd1f40ee80              # double 0.39501121570695119
	.quad	0x3fd29edf20ba4a62              # double 0.29094675251068314
	.quad	0x3fbf12026f822d80              # double 0.12136855337501196
	.quad	0x3fe3593e6af9d041              # double 0.60464402097432679
	.quad	0x3fd56b027730f34c              # double 0.33465634956137502
	.quad	0x3fd14bf339afb008              # double 0.27026062615800628
	.quad	0x3fe0f6104fe94399              # double 0.5300370751157174
	.quad	0x3feba750031bc716              # double 0.86417389495020092
	.quad	0x3fe73f533308f2ea              # double 0.72648010223164516
	.quad	0x3fd0379d227efdd6              # double 0.25339439743762904
	.quad	0x3fee467e76bcb447              # double 0.94610522452206502
	.quad	0x3fba3c8448eff258              # double 0.10248591213889691
	.quad	0x3fe0c2c0e85c96a0              # double 0.52377362616671874
	.quad	0x3fd71ebb2cea34a6              # double 0.3612506807920205
	.quad	0x3fe8fa1edbbcde8a              # double 0.78053229253323875
	.quad	0x3fe71de7ea7c426d              # double 0.72240062520911652
	.quad	0x3fc43ec92db41184              # double 0.15816607219325018
	.quad	0x3fd34b0e91974c58              # double 0.30145611017105045
	.quad	0x3fe83072da3a0ff9              # double 0.7559141409151372
	.quad	0x3fcc9cae8c4418a8              # double 0.22353154992032853
	.quad	0x3fdc3567dac2cfce              # double 0.4407596241319397
	.quad	0x3fbd8b87193cc9d0              # double 0.11541027418278493
	.quad	0x3fabc7f2435cb190              # double 0.054259844515715305
	.quad	0x3fdf761838118b00              # double 0.49158292270128356
	.quad	0x3fef7d14979267e4              # double 0.98401860813032415
	.quad	0x3fe99aabfb8a5a40              # double 0.8001308358096324
	.quad	0x3fe697b8652449fe              # double 0.70602054361580691
	.quad	0x3fefb5f02b0fc603              # double 0.99095924768897736
	.quad	0x3fe987801ab17329              # double 0.79779057706364143
	.quad	0x3fe44113f5a784b3              # double 0.63294408778542388
	.quad	0x3fc6b343faf6bbf0              # double 0.1773457503709035
	.quad	0x3fd8c574dffdca00              # double 0.38705179094463915
	.quad	0x3fe63033c34d7fc6              # double 0.69338405747475274
	.quad	0x3fdf2f9acf98ce32              # double 0.48728056214460758
	.quad	0x3fc5108deb6cf818              # double 0.16456769938844285
	.quad	0x3fc091dde07107a0              # double 0.12945149859484406
	.quad	0x3fe483fe24e97554              # double 0.64111239632954176
	.quad	0x3fed86a3b67e030e              # double 0.92268548625006175
	.quad	0x3fd90c2743fe517e              # double 0.39136678352340215
	.quad	0x3fbb0177358d79f8              # double 0.10549111421048696
	.quad	0x3fc2dde3b24c1530              # double 0.14739652830045591
	.quad	0x3fd57a8d89f57f4e              # double 0.33560503456645996
	.quad	0x3fc86331fd105960              # double 0.19052719933160756
	.quad	0x3fe9b1f447193c7e              # double 0.80297292601052539
	.quad	0x3fe81991bf42c267              # double 0.75312125545140141
	.quad	0x3fe403b1ce2091b5              # double 0.62545099505637458
	.quad	0x3fee06137c9def05              # double 0.93824171389812305
	.quad	0x3fc0c75f622d4db8              # double 0.13108436864659523
	.quad	0x3fef365c4c2050c8              # double 0.97538580768971261
	.quad	0x3fed5677ec45fb8e              # double 0.91680523059027208
	.quad	0x3fb67868fb9291f8              # double 0.087774812144353009
	.quad	0x3fdbf9098f85d720              # double 0.43707503333949838
	.quad	0x3fdb20e464d49148              # double 0.4238825783416087
	.quad	0x3fd84f5c8acef968              # double 0.37984384112851055
	.quad	0x3fca8cd5dd1963ac              # double 0.20742295547350176
	.quad	0x3fd6966bbcc7e320              # double 0.35293096004129332
	.quad	0x3fe3292c210159ca              # double 0.59877592512457878
	.quad	0x3fcc44a9b1065994              # double 0.22084542411603236
	.quad	0x3fef444a00652cb9              # double 0.97708606793584984
	.quad	0x3fd570bae6f18df8              # double 0.33500549843867544
	.quad	0x3fbf26656194be90              # double 0.12167962677335198
	.quad	0x3fe943f4671592e2              # double 0.7895452512135217
	.quad	0x3fea3cc3fd477463              # double 0.81991767376497326
	.quad	0x3fef2f8c8392f389              # double 0.97455430696537448
	.quad	0x3fc66525b197538c              # double 0.17496176883164727
	.quad	0x3fe3320acd814a6c              # double 0.59985866677955135
	.quad	0x3fd7584a113fc756              # double 0.36476375278936268
	.quad	0x3fe6e382a5ec3296              # double 0.71527225882307977
	.quad	0x3fee0a2633dc9b53              # double 0.93873891953703958
	.quad	0x3fc053d9cacea5fc              # double 0.12755892183967876
	.quad	0x3f683fa149113b00              # double 0.0029600286584704483
	.quad	0x3fc321e0ac1bf224              # double 0.14947136310355902
	.quad	0x3feef53548d13465              # double 0.96743263456449979
	.quad	0x3fb4e167f5784ac8              # double 0.081564423970387101
	.quad	0x3fe37d671d584a78              # double 0.60905795794890505
	.quad	0x3fd787cc70d5a066              # double 0.36766348856918396
	.quad	0x3fcd78bb0276411c              # double 0.23024690265857195
	.quad	0x3fd0dc139322f64e              # double 0.26343240135961288
	.quad	0x3fd972331ef9f97e              # double 0.39759519600911364
	.quad	0x3faa5e9a75467dc0              # double 0.05150301629623355
	.quad	0x3fb6b3bd701ae070              # double 0.088680114621526362
	.quad	0x3fe7b2a2087f604a              # double 0.74055577907257342
	.quad	0x3fcbf775a3848610              # double 0.21848936542760145
	.quad	0x3fe30813d34f8a02              # double 0.59473601600285542
	.quad	0x3fd6e60645cbdb7e              # double 0.35778958145186113
	.quad	0x3fdd2ddca1e953dc              # double 0.45592418491042763
	.quad	0x3fd366c896787abe              # double 0.30314840979000823
	.quad	0x3fd20a1ff1c57f48              # double 0.28186796770568323
	.quad	0x3fe5c9056ab022c1              # double 0.68078871572023314
	.quad	0x3fe97e4af3442f89              # double 0.79666659844359444
	.quad	0x3fe30df69ab48e95              # double 0.59545450416449575
	.quad	0x3fc8f41db8a976d8              # double 0.19494983212182748
	.quad	0x3fe9e20be74cf835              # double 0.80884356666479695
	.quad	0x3fda1ce48a8d9934              # double 0.40801347284868261
	.quad	0x3fd3d6f2e3399c72              # double 0.30999443235345503
	.quad	0x3fee295e348fbb5a              # double 0.94254980340870564
	.quad	0x3fef1efee5c3a68a              # double 0.97253365398246783
	.quad	0x3fd90deec1d51cee              # double 0.39147538117363367
	.quad	0x3fecf29c61c3bb00              # double 0.90461558432238576
	.quad	0x3fdc4ada39e6230c              # double 0.44206863073536407
	.quad	0x3febed506e2ec996              # double 0.87271901626654613
	.quad	0x3fc91b315164ac18              # double 0.196142353766249
	.quad	0x3fe08bcd42fb733c              # double 0.51706564981905201
	.quad	0x3f9b4d57fc1700a0              # double 0.02666223026403769
	.quad	0x3fe7e2b97ff8b09c              # double 0.74642634386465856
	.quad	0x3fe181176efb8553              # double 0.54700824428815975
	.quad	0x3f81e4783ec75bc0              # double 0.008736552635054795
	.quad	0x3fd2137d2ff9e53a              # double 0.28243951497241293
	.quad	0x3fdc7f3baea7a974              # double 0.44526569419999551
	.quad	0x3fe9d752b1f4268c              # double 0.80753454929909329
	.quad	0x3fa11dfaf4999de0              # double 0.033431856497198487
	.quad	0x3fe68e96f569d8ae              # double 0.70490596706692599
	.quad	0x3fe38f3558d7354b              # double 0.61123149253550346
	.quad	0x3fb7910796c9dd60              # double 0.092056726754767393
	.quad	0x3fed5a5659b73a7b              # double 0.91727750322918611
	.quad	0x3fc1f98e6b89b60c              # double 0.14042835474849402
	.quad	0x3fee5ff32e36d0d2              # double 0.94921263719745697
	.quad	0x3fef34d69d53f9df              # double 0.97519999244815014
	.quad	0x3fe88375816fc025              # double 0.76604724197932639
	.quad	0x3fbbb2260baa4558              # double 0.108187082145624
	.quad	0x3fe010e8f4fef80f              # double 0.50206420756126302
	.quad	0x3fde94da0dc82e26              # double 0.47783519121068918
	.quad	0x3fcede0c29f178dc              # double 0.24115135238657259
	.quad	0x3fe7192aaf058857              # double 0.72182211097630045
	.quad	0x3fee838ca3adee76              # double 0.9535582730163259
	.quad	0x3fea55454fb2c1f8              # double 0.82290902677601618
	.quad	0x3fd2963a931e0ab8              # double 0.29041923872879805
	.quad	0x3fe593fcc3ab1bf4              # double 0.67431486336215452
	.quad	0x3f9e63bd6b4a7c60              # double 0.029677352593918349
	.quad	0x3fd83967785e5d78              # double 0.37850367312190469
	.quad	0x3fe54f7332fd8b64              # double 0.66594848593772982
	.quad	0x3fe5b0bc6f30fa22              # double 0.67782422749570892
	.quad	0x3fe404f87afe162d              # double 0.62560676595666609
	.quad	0x3fea63d50c57f77f              # double 0.82468655024398163
	.quad	0x3feef9f8b3dcd3c3              # double 0.96801409844794539
	.quad	0x3fd0d3221d42b66c              # double 0.26288655145149309
	.quad	0x3feef63e5b36e053              # double 0.96755903067879456
	.quad	0x3fd889250dbc9a48              # double 0.38337065068700271
	.quad	0x3fe14320dc6b1238              # double 0.5394443802875406
	.quad	0x3fe2b4d378f2e791              # double 0.58457349417516202
	.quad	0x3fe4ee856bd05192              # double 0.65411635453578953
	.quad	0x3fec88988bcd26e0              # double 0.89167430214839882
	.quad	0x3fe9389e63e94bfb              # double 0.78816146387032349
	.quad	0x3fc2f6963b91dc10              # double 0.14815023335151567
	.quad	0x3fe1f6df99a50e16              # double 0.56138591774692048
	.quad	0x3fdee0d6eb73450e              # double 0.48247311585608166
	.quad	0x3fe05345c1efa56a              # double 0.51016509893558504
	.quad	0x3fdca2734394346e              # double 0.44741517638687511
	.quad	0x3febfe47eccefdbc              # double 0.87479015590354647
	.quad	0x3fe10e5eff337ce1              # double 0.53300428241700726
	.quad	0x3fe53419d2817d7c              # double 0.66260996927660143
	.quad	0x3faf909c105f37f0              # double 0.061650158880737993
	.quad	0x3fc29e8fe167a42c              # double 0.14546392923446783
	.quad	0x3fec4ad4d1d3aaa5              # double 0.88413468343545232
	.quad	0x3fd103afd74f7d2e              # double 0.26585002924362555
	.quad	0x3fe27c65e601c1aa              # double 0.57768530772414306
	.quad	0x3fdc5766186e22b6              # double 0.44283440004123109
	.quad	0x3fe18c0f6e2e6b0d              # double 0.54834720153607608
	.quad	0x3fea8fa94d5e88bc              # double 0.83003678427873905
	.quad	0x3fd67b557958e72a              # double 0.35127770281143234
	.quad	0x3fdbc52b03fee8b8              # double 0.43390918150147284
	.quad	0x3fea29f3c173119b              # double 0.81762111456969266
	.quad	0x3f503bde24e11a00              # double 9.9083608394467947E-4
	.quad	0x3fee65bccaf3b309              # double 0.94991912497570852
	.quad	0x3feb32774e1a75c6              # double 0.84991040472567003
	.quad	0x3fe5578856bc1986              # double 0.66693512859710391
	.quad	0x3fe04ae98ef41d4f              # double 0.50914457245463918
	.quad	0x3fef0d87e49a1df8              # double 0.97040171288330068
	.quad	0x3fe3c2bcb608ddf9              # double 0.61752162507667585
	.quad	0x3fc6b53d3dfefc34              # double 0.17740598227644144
	.quad	0x3feb8ead2ca481f5              # double 0.86116656035670636
	.quad	0x3feb09353ac74ae7              # double 0.84487401466534784
	.quad	0x3fe0e4a598b3f073              # double 0.52791099381239659
	.quad	0x3fd1d0f2bc07244a              # double 0.27837818491076816
	.quad	0x3fee9a4cfc2feadd              # double 0.95633553748424627
	.quad	0x3fb9bb0462e6b1e0              # double 0.1005099050004854
	.quad	0x3fc00d407a4c22fc              # double 0.12540441485932508
	.quad	0x3fc466fb19464374              # double 0.15939272626976797
	.quad	0x3fefe518080538af              # double 0.9967155605934489
	.quad	0x3fd2adcf37f13ba6              # double 0.29185848677746618
	.quad	0x3fea3b2a2709e5d1              # double 0.81972224831332074
	.quad	0x3fbd57fcc6223100              # double 0.11462383115048524
	.quad	0x3fd9d4089fee2b3e              # double 0.40356650942037564
	.quad	0x3fe3565d2b023e71              # double 0.60429247284078091
	.quad	0x3fcdd361e3af8fb8              # double 0.23301337830991797
	.quad	0x3fec0fa225e70fa0              # double 0.87690837290618972
	.quad	0x3fefc86621f96153              # double 0.9932127631719062
	.quad	0x3fd6cf5b10ab582c              # double 0.35640598895895681
	.quad	0x3fea29d45c65fad0              # double 0.81760614439539303
	.quad	0x3fdfa3cfc79f30a0              # double 0.49437326902694601
	.quad	0x3fb2a74c19a7a070              # double 0.072865253699662125
	.quad	0x3fe4daa91d253bd2              # double 0.65169196789235628
	.quad	0x3fe25c7bcb10c124              # double 0.57378949795932899
	.quad	0x3fe50a3508b84157              # double 0.65749599173617923
	.quad	0x3fdb5747f8be0f32              # double 0.42720221797229663
	.quad	0x3fed8d61db855510              # double 0.92350857615625337
	.quad	0x3fe90525e6862bfe              # double 0.78187842392196649
	.quad	0x3fed322dc4986f75              # double 0.91237533948468175
	.quad	0x3fe5ec8805d62278              # double 0.68512345447477596
	.quad	0x3fe5f84514fa2c62              # double 0.68655637833706984
	.quad	0x3fc487d260f3702c              # double 0.1603949521439757
	.quad	0x3fe1c8b4ae4f69f8              # double 0.55575021786654499
	.quad	0x3feaceca4d9e576a              # double 0.83774295005671928
	.quad	0x3fd6fecdfc4c53e8              # double 0.35930204046718339
	.quad	0x3fe7e07c50c44bde              # double 0.74615302824747309
	.quad	0x3fc602df5db92198              # double 0.17196266247107128
	.quad	0x3fd9d9ba91749824              # double 0.4039141102279038
	.quad	0x3fbf195d852232a0              # double 0.12148079395610489
	.quad	0x3feb17a14ca28598              # double 0.84663453071350414
	.quad	0x3fe59d9bbb6ea0b6              # double 0.67548929794158741
	.quad	0x3fb6662858e4f190              # double 0.087496301367485651
	.quad	0x3fef1ad543347f30              # double 0.97202551961888695
	.quad	0x3fea52e2988efd4d              # double 0.82261781498520181
	.quad	0x3fe91cfb5fa26617              # double 0.78478783300960486
	.quad	0x3fef0af8c14c0edb              # double 0.97008931878414317
	.quad	0x3fd0045979b5158a              # double 0.25026547322735182
	.quad	0x3fe5a47d1079870f              # double 0.67632916658132725
	.quad	0x3fa838a759536e30              # double 0.04730723348049215
	.quad	0x3fe8e590bdaec1cd              # double 0.77802311942473923
	.quad	0x3fee3c95653bc678              # double 0.94489545604865465
	.quad	0x3fea58be481054e0              # double 0.82333292078933695
	.quad	0x3fbf9d0826feb9d0              # double 0.12348986579920695
	.quad	0x3fbaa5a67e5a4ad0              # double 0.10409012398512663
	.quad	0x3fe06be986f1bdd2              # double 0.51317287784871213
	.quad	0x3fef5cc1fa7dba9f              # double 0.9800729648976193
	.quad	0x3fe5bf13d42861e1              # double 0.67957488476809769
	.quad	0x3fa82ade17f172f0              # double 0.047202053473233252
	.quad	0x3fe93df83972d553              # double 0.78881465168403009
	.quad	0x3fd831e678437648              # double 0.37804567093357777
	.quad	0x3fe3c95a4808ddeb              # double 0.61832918233170397
	.quad	0x3fd4b7083c24b986              # double 0.32367139695534097
	.quad	0x3fe415eafb04a00a              # double 0.6276755240151044
	.quad	0x3fe551a60e3eb6f2              # double 0.6662168768141028
	.quad	0x3fe3526c5d8431be              # double 0.60381143822592498
	.quad	0x3feb2848c8770110              # double 0.84866751817028963
	.quad	0x3feb3c464f78df33              # double 0.85110774537949963
	.quad	0x3fd12aa3716849f8              # double 0.26822744440974544
	.quad	0x3fc040d6bfafbc4c              # double 0.12697872504893082
	.quad	0x3fe50c0c20031ed6              # double 0.6577206254232475
	.quad	0x3fe79c2c28e564da              # double 0.73781402575982757
	.quad	0x3fe00081cae256bb              # double 0.5000618898945598
	.quad	0x3fd4f255f931a6c0              # double 0.32729100547167533
	.quad	0x3fe2fd84796de66e              # double 0.59344695774707446
	.quad	0x3f715c18b2c84d00              # double 0.0042382206707032299
	.quad	0x3feaa8720215b017              # double 0.83306217581912534
	.quad	0x3fea24883442ee56              # double 0.8169594784480505
	.quad	0x3fe603282e5e45b5              # double 0.6878853707914262
	.quad	0x3fef90bb5d2dbc00              # double 0.98641746710734424
	.quad	0x3fedfa0fd8ed57a7              # double 0.93677513474061846
	.quad	0x3fdc2d531aa4693c              # double 0.44026639558582636
	.quad	0x3fe5cd7268147c14              # double 0.68132896736267634
	.quad	0x3fc56780e6be18ec              # double 0.16722117678381865
	.quad	0x3fdadbf6b57e961c              # double 0.4196755192191135
	.quad	0x3fd74f4f8e2e1550              # double 0.36421574482695451
	.quad	0x3fd059cf4d813a3e              # double 0.25548155373408921
	.quad	0x3fdfc5ad8da83130              # double 0.49644030412379703
	.quad	0x3fd879e24d73de6a              # double 0.38243920863849346
	.quad	0x3fcdc7a53d45acb4              # double 0.2326551961117268
	.quad	0x3fd4f469d3d15758              # double 0.32741780934644771
	.quad	0x3fd83e754cb64448              # double 0.37881214610485303
	.quad	0x3fd6417e2c7f7778              # double 0.34774736733913114
	.quad	0x3fd5ace7b5e1d54c              # double 0.33867829095773483
	.quad	0x3fe5a1730af4a062              # double 0.67595817699203686
	.quad	0x3fe32c79f9064c36              # double 0.59917925489060653
	.quad	0x3fbc6bc20f7a9ab0              # double 0.11101925733474149
	.quad	0x3fc2307f6485b900              # double 0.14210503013914177
	.quad	0x3faad973199a9c40              # double 0.052440258861047528
	.quad	0x3fec3294b76891e1              # double 0.88117442914932209
	.quad	0x3fe826abb4e916d2              # double 0.75472054800112631
	.quad	0x3fe632f6201fb209              # double 0.69372087740117749
	.quad	0x3fe40331427bfad2              # double 0.62538969979490333
	.quad	0x3fd2b9a608e8dc24              # double 0.29258108968810093
	.quad	0x3fe42254b10d141b              # double 0.62919077472963936
	.quad	0x3fe8f8a069a05150              # double 0.78034992818951743
	.quad	0x3fde1b80a2f0bfb4              # double 0.47042861854697127
	.quad	0x3faa78ce2c5293f0              # double 0.051702921781988098
	.quad	0x3feadd311816710c              # double 0.83950094895001958
	.quad	0x3fa11d8ec8676820              # double 0.033428632701273608
	.quad	0x3fe31692a68b7e1b              # double 0.59650547531413467
	.quad	0x3fd01c7086110c88              # double 0.25173581211510809
	.quad	0x3fe3f4b514d5ec28              # double 0.62362150258502869
	.quad	0x3fa7c9bc2313bf10              # double 0.046460990220905996
	.quad	0x3fe2adf22e5655aa              # double 0.58373364496462909
	.quad	0x3fe130d5164c3e0d              # double 0.53721098284762692
	.quad	0x3fc5da2552f92be8              # double 0.17071978141242927
	.quad	0x3fe2e280cbd13a64              # double 0.59014930542055
	.quad	0x3fecda3a389e37f4              # double 0.90163909013949572
	.quad	0x3fdbb0854af5b640              # double 0.43264896698278577
	.quad	0x3fcdf4ce92b57818              # double 0.23403341449278581
	.quad	0x3fde3616193a0e40              # double 0.47205116714050988
	.quad	0x3fec895189957106              # double 0.8917625128920299
	.quad	0x3fd2e28418cb906a              # double 0.29507543965724514
	.quad	0x3fe337e6a4a5b4dd              # double 0.60057384641336464
	.quad	0x3fd2ac4af97b11fa              # double 0.29176592219690145
	.quad	0x3fc0ab3f77709eec              # double 0.13022607166316591
	.quad	0x3fd45dbc43f434ca              # double 0.3182211555111506
	.quad	0x3fe85a25ba87e96e              # double 0.76100431854074002
	.quad	0x3fe79dcb3371b62c              # double 0.73801193282787869
	.quad	0x3fe299ca8524f3fa              # double 0.58127332691913058
	.quad	0x3fb869c1cfb75980              # double 0.095363724910702885
	.quad	0x3fe43834050a1bfc              # double 0.63186074241900725
	.quad	0x3fb8eae045448b68              # double 0.09733392420871001
	.quad	0x3fd20490bb8ebcda              # double 0.28152864757698881
	.quad	0x3fed9cbd29e34b04              # double 0.92538316899512595
	.quad	0x3fe018d0f55a59c9              # double 0.50302932663435584
	.quad	0x3fdeb7e82f9a6f88              # double 0.47997479103809626
	.quad	0x3fdeac81be3c8ce2              # double 0.47927898004327407
	.quad	0x3fecb563e970ecb4              # double 0.89714236825911664
	.quad	0x3feb71c493d7cdfa              # double 0.85763768077452984
	.quad	0x3fe495eeaacedf04              # double 0.64330228196101347
	.quad	0x3fde3a974904e6b0              # double 0.47232610827232246
	.quad	0x3fec4793df95a631              # double 0.88373750370846527
	.quad	0x3fd6ab10242364a2              # double 0.35419086007238765
	.quad	0x3fd00439a56d21fa              # double 0.25025788454925613
	.quad	0x3fdd784459f320f0              # double 0.46046551498558497
	.quad	0x3fdab3c0ba9ac52e              # double 0.41722124312498721
	.quad	0x3fd193bf9f3b2b78              # double 0.27464285421290624
	.quad	0x3fd22d97b2269e6e              # double 0.28403274915260723
	.quad	0x3fd51866dd3bccb2              # double 0.32961436848490699
	.quad	0x3fddb1f9630e09c4              # double 0.46398768113445166
	.quad	0x3fca9a4b1db5587c              # double 0.20783366156200944
	.quad	0x3fe9727990af1127              # double 0.79522398241582415
	.quad	0x3fcb366eaffbb998              # double 0.21259864418921093
	.quad	0x3fdd58149bf85624              # double 0.45850100738002397
	.quad	0x3f9983be89ffa8a0              # double 0.024916627095003308
	.quad	0x3fea15e077414c6e              # double 0.81517051021581977
	.quad	0x3fd0c501e4bc1e66              # double 0.26202437722574812
	.quad	0x3fe7007df7272799              # double 0.71881006500301503
	.quad	0x3fe6b8023a2f4099              # double 0.70996199955154105
	.quad	0x3fd3a0820d75461e              # double 0.30667163194911662
	.quad	0x3fdc39d0c498fbc6              # double 0.44102877806647844
	.quad	0x3fe2fc9c1eefd36c              # double 0.59333616297099701
	.quad	0x3fae12719351ea20              # double 0.058734463914295043
	.quad	0x3fef173395b10311              # double 0.97158221470462724
	.quad	0x3fd8c00bc8ea13b0              # double 0.38672155972045186
	.quad	0x3fe88b76cf03d4e7              # double 0.76702442581759278
	.quad	0x3fe29dd4f6322053              # double 0.58176658711546236
	.quad	0x3fdace700e02e91c              # double 0.41884995811746406
	.quad	0x3fc2431b25ed0508              # double 0.14267291404579674
	.quad	0x3fe18b4a318fa737              # double 0.54825315170203381
	.quad	0x3fe5395ff23824cc              # double 0.66325375851115487
	.quad	0x3fe3b6e4ebd6ffcc              # double 0.6160759550330055
	.quad	0x3fe24062a93229ae              # double 0.57035954519351661
	.quad	0x3fe33093c928f39f              # double 0.59967984475189329
	.quad	0x3fe85a3645098551              # double 0.76101220592333096
	.quad	0x3fd2d802775ad068              # double 0.29443418174492431
	.quad	0x3fe1ad2c6631243d              # double 0.55238933524481804
	.quad	0x3fe87d41cf9591f0              # double 0.76529017013359457
	.quad	0x3fe9234c01c7420d              # double 0.78555870387396143
	.quad	0x3fef49abf93864f1              # double 0.97774313617551744
	.quad	0x3face007538d14d0              # double 0.056396702717884772
	.quad	0x3fded3c9ff50dd96              # double 0.48167657788459317
	.quad	0x3fc51df31994ff84              # double 0.164976489535544
	.quad	0x3fc85feb72d94430              # double 0.19042723758551139
	.quad	0x3fb17e4404e424e8              # double 0.068332911676538211
	.quad	0x3fc10d5f897c12cc              # double 0.13322061741941693
	.quad	0x3fcf5a2c895732f0              # double 0.24493939119420061
	.quad	0x3fe467096c87754a              # double 0.63757773587318778
	.quad	0x3fe020fd8a71bc17              # double 0.50402714767358503
	.quad	0x3fbe326e74b59fd8              # double 0.11795702313759138
	.quad	0x3fd8842c41a8a3d4              # double 0.3830671921919564
	.quad	0x3fe97b7b5ff0d390              # double 0.79632347811149096
	.quad	0x3fd1916696df56e8              # double 0.27449955686220884
	.quad	0x3fe896966c3fe15b              # double 0.7683822740791969
	.quad	0x3fef740b39d755bd              # double 0.98291550919628145
	.quad	0x3fcb64acde6af360              # double 0.21400986538165068
	.quad	0x3feafcfec976d03c              # double 0.84338321064433996
	.quad	0x3fddccdeb9047798              # double 0.4656292731104883
	.quad	0x3fc913470a09eab8              # double 0.19590080251858466
	.quad	0x3fcf68336d154b24              # double 0.24536745859458009
	.quad	0x3fe81277eb0fe459              # double 0.75225444708406564
	.quad	0x3fd4a6bf8ca7bd54              # double 0.32267750488150182
	.quad	0x3fb3694bf19e3370              # double 0.07582544945598868
	.quad	0x3feb66914d7946a7              # double 0.85627045756901488
	.quad	0x3fe4a46c548c7efa              # double 0.64507118714752143
	.quad	0x3fdc90e2b7b71cde              # double 0.44634311619706846
	.quad	0x3f98e9657a9e8c60              # double 0.024327836617555554
	.quad	0x3f70b3d511a27100              # double 0.0040777514460865749
	.quad	0x3f745df4d12b9000              # double 0.0049724162260851301
	.quad	0x3fe21df17ebea28c              # double 0.56615519289796756
	.quad	0x3fd7f767e04aa952              # double 0.37447544959527079
	.quad	0x3fd95cab3a8569fe              # double 0.39628105845409312
	.quad	0x3fd9af99cde14212              # double 0.40134282212696448
	.quad	0x3fe3463b80413b52              # double 0.60232329416053632
	.quad	0x3feb7122c65accad              # double 0.85756052724027187
	.quad	0x3fe5f1cd51e9a461              # double 0.68576684950415878
	.quad	0x3fd89734df6a7c7e              # double 0.38422891443219231
	.quad	0x3fe2935459069d27              # double 0.58048455608232963
	.quad	0x3fbfeae767964808              # double 0.12467809943180452
	.quad	0x3fe374839710b21e              # double 0.60797290329861986
	.quad	0x3fdab47d01528d00              # double 0.41726613167902826
	.quad	0x3fb36955a88fc9e8              # double 0.0758260284926916
	.quad	0x3fee3872cb28af9d              # double 0.94439067534902998
	.quad	0x3fe673bfe6906432              # double 0.70162959129368674
	.quad	0x3fe7b1f4e4221a09              # double 0.74047321851031811
	.quad	0x3fab12849e858810              # double 0.052875656462461618
	.quad	0x3fe0a9eb7b6ced9d              # double 0.52074216944258789
	.quad	0x3fe6d40b036ded58              # double 0.71338415784650078
	.quad	0x3fd5f104cd572dd2              # double 0.3428356175688495
	.quad	0x3fb3e012df301c78              # double 0.077637843598596379
	.quad	0x3fd84c485a8b850c              # double 0.37965592233929679
	.quad	0x3fec994083f93954              # double 0.89370752121048235
	.quad	0x3fe077f6ab92dbd2              # double 0.51464398870927597
	.quad	0x3fb6cd0e00b53778              # double 0.089066386387654961
	.quad	0x3fe9ff5ddfbd77c7              # double 0.81242269229164144
	.quad	0x3fba8479b104c728              # double 0.10358391353363727
	.quad	0x3fed4611173f1cd6              # double 0.91480307140673278
	.quad	0x3fe91431b6047409              # double 0.78371511030457086
	.quad	0x3fde2c31e15c21f8              # double 0.47144743926813204
	.quad	0x3fdc6c7fec3cb4e6              # double 0.44412229604752296
	.quad	0x3fd74d82ee7e5fba              # double 0.36410592356105165
	.quad	0x3fe36714192c9794              # double 0.60633282582124304
	.quad	0x3fdd1e23d1399906              # double 0.45496459419372604
	.quad	0x3fdc1ea02fd79932              # double 0.43936924621665974
	.quad	0x3fefed4e06a3269a              # double 0.99771786972378895
	.quad	0x3fa64f81bc9bd8f0              # double 0.043575338624508464
	.quad	0x3fe39ef10a9e5e2d              # double 0.61315204690885639
	.quad	0x3fd03c48c6784218              # double 0.25367946035206179
	.quad	0x3fe046bbb7e8eead              # double 0.50863443298245203
	.quad	0x3fba8da39ac9acb0              # double 0.10372374085425196
	.quad	0x3fd3a11f85b4ad08              # double 0.30670917565539968
	.quad	0x3fec993d3fb49c89              # double 0.89370596353991616
	.quad	0x3fde11444608cee8              # double 0.46980387534425327
	.quad	0x3fb9c849a3533ad0              # double 0.10071239697866052
	.quad	0x3fee705fbe9fd45e              # double 0.95121752959552075
	.quad	0x3fe2e024c4d4bc1f              # double 0.5898612827639943
	.quad	0x3fb3529ac82608a0              # double 0.075479196419140582
	.quad	0x3fe0f0abc25221ff              # double 0.52937877610480644
	.quad	0x3fefeb90aef1029a              # double 0.99750551384211694
	.quad	0x3feae1aeb2edda6b              # double 0.84004912325947367
	.quad	0x3fea273a22460994              # double 0.81728846258220011
	.quad	0x3fef0b69a9114271              # double 0.9701431562517212
	.quad	0x3fe0df68bfa60296              # double 0.52727162772505909
	.quad	0x3fe6409b9536af28              # double 0.69538668769152867
	.quad	0x3feb6c8f5020ab91              # double 0.85700193071294184
	.quad	0x3fbc47cedcb56288              # double 0.11047070396797143
	.quad	0x3f734f5f720b5c00              # double 0.0047143677081384894
	.quad	0x3fe0500c3ac44aab              # double 0.50977145650752698
	.quad	0x3fd7486c57981428              # double 0.36379536203486618
	.quad	0x3fda8eb3ba76b2fc              # double 0.41495984277098308
	.quad	0x3fe0d47add66ae56              # double 0.52593749277498136
	.quad	0x3fea25b3fb971d30              # double 0.81710242403724997
	.quad	0x3fe744d39834ab70              # double 0.72715167739566589
	.quad	0x3fdddb7035f5c00e              # double 0.4665184523537399
	.quad	0x3fdb449a30899abc              # double 0.42606215229026723
	.quad	0x3fbf93e629b24718              # double 0.12335051076868486
	.quad	0x3fe07f521b8268ae              # double 0.51554208157474135
	.quad	0x3fef64017841f120              # double 0.98095773208436654
	.quad	0x3fe72f9f8073706c              # double 0.72456336105416375
	.quad	0x3fbcc4a46a3463a8              # double 0.11237552254568917
	.quad	0x3fe85da8cf1afda6              # double 0.76143303346900804
	.quad	0x3fd46a1cca743fe4              # double 0.3189765908327884
	.quad	0x3fe056255c683978              # double 0.5105158619715402
	.quad	0x3feaa28270951707              # double 0.83233758915659528
	.quad	0x3fde3156dda0c6f2              # double 0.47176143306124552
	.quad	0x3fc2eeda21fbcc54              # double 0.14791418704371273
	.quad	0x3fea9d1b726a61a6              # double 0.83167812678134534
	.quad	0x3fb2e9457d1d2c48              # double 0.073871939702415124
	.quad	0x3fee5a9c74a2dd02              # double 0.94856093197350355
	.quad	0x3fcf7a12ba43e694              # double 0.245912877034972
	.quad	0x3fe9d5004af47c1e              # double 0.80725111617710232
	.quad	0x3fcec6c9cdf9b0e0              # double 0.24044153745069874
	.quad	0x3fca7adcf839f3b0              # double 0.20687448616436432
	.quad	0x3fd8cfba6a7e5cee              # double 0.38767872237936174
	.quad	0x3fed39243f763907              # double 0.91322529215702353
	.quad	0x3fe0dad972cc3558              # double 0.52671501561568856
	.quad	0x3fe61f11a6ad8f42              # double 0.69129259638109652
	.quad	0x3f572779f72d0400              # double 0.0014132205075869653
	.quad	0x3fea34ea904fd9cf              # double 0.81895950494691216
	.quad	0x3fd106f56642f3bc              # double 0.26604971872785277
	.quad	0x3fd435f3ae31033a              # double 0.31579296122440648
	.quad	0x3fd965e8322426bc              # double 0.39684491058924798
	.quad	0x3fc457d871ef05ec              # double 0.15893083155792398
	.quad	0x3f9cb59c1e40bc00              # double 0.028036536547173085
	.quad	0x3feb236a23c83861              # double 0.84807307232564366
	.quad	0x3fdffc869579ba3a              # double 0.4997879466745051
	.quad	0x3fc89959d8cedb00              # double 0.19217990003900098
	.quad	0x3fde5ceb88a7d9e4              # double 0.47442139001159789
	.quad	0x3fc15c703c420f84              # double 0.13563349668777047
	.quad	0x3fc16d004f716e6c              # double 0.13613895300919709
	.quad	0x3fc541384cf4e048              # double 0.16605285413402471
	.quad	0x3fd43f0c18a23988              # double 0.31634809880861114
	.quad	0x3fdc77073a39a8b4              # double 0.44476490675027525
	.quad	0x3fc7925305ad88e8              # double 0.1841529634212471
	.quad	0x3fd08f6d74840350              # double 0.258754123482551
	.quad	0x3fe384ab80cfcdfd              # double 0.6099450603346096
	.quad	0x3fc04a4536ee7d20              # double 0.12726655180174706
	.quad	0x3fe62af36aa3f470              # double 0.6927430231877576
	.quad	0x3fe7b974e8bd7988              # double 0.7413887544351363
	.quad	0x3fe3e1690947914f              # double 0.62126590549864058
	.quad	0x3fe327aa686d0596              # double 0.59859199901272819
	.quad	0x3feed8c1dbc9af47              # double 0.96395962645827004
	.quad	0x3fb08d407c12e578              # double 0.064655332843264079
	.quad	0x3fe7e02e87fb6459              # double 0.7461159377954899
	.quad	0x3fc360c49ff23658              # double 0.15139062700147821
	.quad	0x3fe9b360efc926e3              # double 0.80314680894045087
	.quad	0x3fe9060922b22fe4              # double 0.78198677803584049
	.quad	0x3fd4207ef7387cd8              # double 0.31448339598314368
	.quad	0x3fe74955082deb79              # double 0.72770167920621909
	.quad	0x3fe05cccc2ceb1c7              # double 0.51132810638733239
	.quad	0x3feee93d242edbb2              # double 0.96597153727531393
	.quad	0x3f778a1e53a32c00              # double 0.0057469544064572275
	.quad	0x3fe1c9bcafbe2f13              # double 0.55587610554491318
	.quad	0x3fe939a66536d3b3              # double 0.78828735130684036
	.quad	0x3fd411e9b8f38d3c              # double 0.3135933214345703
	.quad	0x3fe187ac72195083              # double 0.54781172070444517
	.quad	0x3f9036e60eede7e0              # double 0.015834421788419095
	.quad	0x3fe2349559f335d4              # double 0.56891887253157813
	.quad	0x3fe6d3d27e80575e              # double 0.71335720736781716
	.quad	0x3fbc443e7490c7f0              # double 0.1104163202842583
	.quad	0x3fe6a2b2bd66404e              # double 0.70736062042306869
	.quad	0x3fbe70585ca34728              # double 0.11890175115265988
	.quad	0x3fe9564cc86f4bae              # double 0.79178465983783552
	.quad	0x3fd504020fdf7244              # double 0.32836963224488991
	.quad	0x3fc004faaf0abf5c              # double 0.12515195414516256
	.quad	0x3f74c30845a01e80              # double 0.0050688098072054766
	.quad	0x3febb61e41f31a1c              # double 0.86598122483048056
	.quad	0x3fe1df5edd161340              # double 0.55851691418556726
	.quad	0x3fe3f8e074da146b              # double 0.62413046667701388
	.quad	0x3fe9e36d4af2ef1b              # double 0.80901207579106271
	.quad	0x3fe01b16b3375b3a              # double 0.50330672267123266
	.quad	0x3fe8fa4ce4aa8992              # double 0.78055424367294024
	.quad	0x3fc4544a09a6fa20              # double 0.15882230254460783
	.quad	0x3fb4ba36c9c6eef8              # double 0.080966400396331184
	.quad	0x3fe84718beaa6124              # double 0.75867879142154892
	.quad	0x3fdcef2e55d31d86              # double 0.4520984495288406
	.quad	0x3fccc80737043630              # double 0.22485437570905864
	.quad	0x3fee27a9fdfab455              # double 0.94234180074057383
	.quad	0x3fe22bf1d7d678a9              # double 0.56786434322181834
	.quad	0x3fd50583cd804e8e              # double 0.32846160000301772
	.quad	0x3fe78c9a0afac75d              # double 0.73591329712347042
	.quad	0x3fa8eff083373510              # double 0.048705593125854318
	.quad	0x3fc5764f1aa3879c              # double 0.16767300415727682
	.quad	0x3feb2301534e7a67              # double 0.84802309294520917
	.quad	0x3fe7bd0c59215a73              # double 0.74182717712649404
	.quad	0x3fe8d4f904db899b              # double 0.77599764775031888
	.quad	0x3fc3c8b8eea645f0              # double 0.1545630612641129
	.quad	0x3fec0f223ab30df7              # double 0.87684737648709088
	.quad	0x3fe9243cc2d6d53b              # double 0.78567350439576644
	.quad	0x3fe6c01b663fa436              # double 0.71095056505612919
	.quad	0x3fe307f5dbe8b53a              # double 0.59472172690372038
	.quad	0x3fef92e394eaa5bd              # double 0.98668078503867884
	.quad	0x3fce36d15a0f0af8              # double 0.23604790589714475
	.quad	0x3fdcd05432fa4a5e              # double 0.45021538713732479
	.quad	0x3fd06b45d6a0482a              # double 0.2565474124868411
	.quad	0x3fe2f4d9776466ef              # double 0.59238885229862415
	.quad	0x3faacb90b3087970              # double 0.05233432946646388
	.quad	0x3feaa3ed9887b8df              # double 0.83251075545356545
	.quad	0x3fe42d9794a98911              # double 0.63056544337840326
	.quad	0x3fec5c4191c47a31              # double 0.88626173467839042
	.quad	0x3fe5ee1dabb984d3              # double 0.68531688251473566
	.quad	0x3fd456f8dd35bae6              # double 0.31780835726287504
	.quad	0x3fe1d1d6db8f68a5              # double 0.55686514742707927
	.quad	0x3fcf6eb51a2cb008              # double 0.24556602266363847
	.quad	0x3fac6a2df0ce77f0              # double 0.055497584958388191
	.quad	0x3fe169affa94dce7              # double 0.544151296059593
	.quad	0x3fde19c0a7c41c28              # double 0.47032181151775143
	.quad	0x3fe7f44e95f75d4e              # double 0.74857262888228049
	.quad	0x3fe4abe15916014e              # double 0.64598147773362213
	.quad	0x3fba176c453ba0a0              # double 0.1019199055696185
	.quad	0x3fb05d89c365f1c8              # double 0.063927278713840185
	.quad	0x3fd855b27b6e3000              # double 0.38023054174186655
	.quad	0x3fc728bec8eaea84              # double 0.18093094644958196
	.quad	0x3fe15d879b28f1c2              # double 0.54266720108676503
	.quad	0x3fe5255d598b998e              # double 0.66081111420935357
	.quad	0x3fdad2c5554250f2              # double 0.41911443067625875
	.quad	0x3fe30729eb8a0f1a              # double 0.59462448123710776
	.quad	0x3fd5956a7bac5f2e              # double 0.33724462583039638
	.quad	0x3fddeb497bc77824              # double 0.46748578155336618
	.quad	0x3fd27a53d366d5a6              # double 0.28871627468773864
	.quad	0x3fac32f43e4b4a40              # double 0.055076248745212997
	.quad	0x3fb14cfb9be22440              # double 0.067580915029012978
	.quad	0x3fc8cb9ea0599624              # double 0.19371397809588686
	.quad	0x3fe55d64282d2d78              # double 0.66765029761283667
	.quad	0x3fe234c84532bce9              # double 0.56894315257332295
	.quad	0x3fe7cdc3908fbb2b              # double 0.74386766657503267
	.quad	0x3fc4e0e81044bfe0              # double 0.16311360163081101
	.quad	0x3fd17660c69dbc96              # double 0.27285022159680616
	.quad	0x3fe919f182241fde              # double 0.78441691797433655
	.quad	0x3fc7db4ba8fc3bd0              # double 0.1863798689959979
	.quad	0x3fc693905f02c160              # double 0.1763782943649046
	.quad	0x3fd780a616463c3a              # double 0.36722709822874189
	.quad	0x3fdace53092f1446              # double 0.41884303948274171
	.quad	0x3fe7eb5e5d0d0822              # double 0.74748151945118857
	.quad	0x3fe9ea06dfc70f02              # double 0.80981773096615961
	.quad	0x3feb604065a3e179              # double 0.85549945689767448
	.quad	0x3fe9c1dbfb42bdd3              # double 0.80491446565968727
	.quad	0x3fd6334e55c439fa              # double 0.34688146949420651
	.quad	0x3fc7ca89c030133c              # double 0.18586847194833378
	.quad	0x3fe575f4d05c028c              # double 0.67064896292875309
	.quad	0x3fe6d5f091839654              # double 0.71361568852143842
	.quad	0x3fa14d4d40d516f0              # double 0.03379289070521263
	.quad	0x3fd6e2b651ebb3ae              # double 0.35758741378850345
	.quad	0x3fbecee6a0e0ef30              # double 0.1203445570726529
	.quad	0x3fdaeabf99817560              # double 0.42057790747442958
	.quad	0x3fe3594e220a4390              # double 0.60465151451545474
	.quad	0x3faba7f72673b6a0              # double 0.054015849536751093
	.quad	0x3fe8d104c92eb2a8              # double 0.77551497739257957
	.quad	0x3fe80b5204af99db              # double 0.75138188281271867
	.quad	0x3fce91bd06af7d40              # double 0.23882258249703092
	.quad	0x3fe7ec31da1dea10              # double 0.74758236504504971
	.quad	0x3fceeba8c829472c              # double 0.24156675122736126
	.quad	0x3fcf86575d7a8afc              # double 0.24628727020634489
	.quad	0x3fed9a66a70b95a4              # double 0.92509777666116521
	.quad	0x3fe9ef6e47de279d              # double 0.81047739063909641
	.quad	0x3fb3ac2f44e81548              # double 0.076846079180616589
	.quad	0x3feb9c0c9fc96994              # double 0.86279898842194535
	.quad	0x3feb02e83918a6de              # double 0.84410487319584226
	.quad	0x3fd9bc3d87b45772              # double 0.40211427929295163
	.quad	0x3fe04b0ffb48539b              # double 0.50916289404505066
	.quad	0x3fdca65d310fc38e              # double 0.44765405455751128
	.quad	0x3feb14aa1acf21fa              # double 0.84627251850275731
	.quad	0x3fe70e23bd2ce878              # double 0.72047602604221961
	.quad	0x3fe6203e9b7ec74a              # double 0.69143610353624152
	.quad	0x3fd1ba5403e9335c              # double 0.27699756986549118
	.quad	0x3fe198acad70e45c              # double 0.54988702655021937
	.quad	0x3feb9e6b575f1c78              # double 0.86308829369308082
	.quad	0x3fd2d115dd142d38              # double 0.2940115603421023
	.quad	0x3fe85c45fe339832              # double 0.76126384400118341
	.quad	0x3fd827ea20c662dc              # double 0.37743619156530683
	.quad	0x3fe3f047d464e07c              # double 0.62308112605298005
	.quad	0x3fefa2c475b48f91              # double 0.98861906995124304
	.quad	0x3fc39adec14f0874              # double 0.15316376150991895
	.quad	0x3fe5c8f14dde61df              # double 0.6807791252968477
	.quad	0x3fe553c0b1c5a4e6              # double 0.66647371979811676
	.quad	0x3fee9826c599333d              # double 0.95607317536778391
	.quad	0x3febc34851ffe66b              # double 0.86758819594906578
	.quad	0x3fb2fcb639e7c220              # double 0.074168576371228756
	.quad	0x3feba62cb8b2e486              # double 0.86403499673828388
	.quad	0x3fbc67fa7accbb48              # double 0.11096158502617215
	.quad	0x3fef36f988178346              # double 0.97546078281821091
	.quad	0x3fe6eaa8be5ea703              # double 0.71614491635884325
	.quad	0x3fc30d51940fe7ac              # double 0.1488439534148801
	.quad	0x3fdc34d10a2716c6              # double 0.44072366706346278
	.quad	0x3fe94d9f3997db50              # double 0.79072533844633064
	.quad	0x3fb20f8f6b2400e8              # double 0.070549930245764281
	.quad	0x3fecae2fd0fb2c4f              # double 0.89626303497915127
	.quad	0x3fd37f2a0e4794e2              # double 0.30463649172300056
	.quad	0x3fe4e724c721b4fe              # double 0.65321577923683072
	.quad	0x3fec8c929246731b              # double 0.89215973443387797
	.quad	0x3fcb69ac3194de90              # double 0.21416237278912265
	.quad	0x3f8ac5fbf6708440              # double 0.013072937448727839
	.quad	0x3fe513564d0c1be2              # double 0.65861048744488593
	.quad	0x3fe40fa5604be818              # double 0.62690991218483116
	.quad	0x3fd097a65d6b7024              # double 0.25925597308173765
	.quad	0x3fed81846d5a38c8              # double 0.92206021650215408
	.quad	0x3fe7b3d83a1f1699              # double 0.74070369102328748
	.quad	0x3fd8d0671db85020              # double 0.38771989729252887
	.quad	0x3fefc75f5af8f019              # double 0.9930874611668542
	.quad	0x3fe106eb26a70f12              # double 0.53209455060320665
	.quad	0x3fd9c24eabd7a170              # double 0.40248457700228979
	.quad	0x3fcd0b6dc260dce8              # double 0.22691127768641839
	.quad	0x3fd9647eb40ee55e              # double 0.39675872405822143
	.quad	0x3fdb2479c8d0edbe              # double 0.42410130129766432
	.quad	0x3fed68b472e88df7              # double 0.91903135722208062
	.quad	0x3fc4c7a48a293904              # double 0.16234261270660266
	.quad	0x3fd7a842ff35b9e4              # double 0.36964487955893177
	.quad	0x3fe9cb0109d27dd9              # double 0.80603076856999245
	.quad	0x3fef948f0f00f8d3              # double 0.98688462191037229
	.quad	0x3fd0faf3c275f8a0              # double 0.26531690588297785
	.quad	0x3fce92915b0fe40c              # double 0.23884789415731722
	.quad	0x3fa42444bc016040              # double 0.039339206647753588
	.quad	0x3fcce3c6d5a00038              # double 0.22570119315060011
	.quad	0x3fca97ce877a7058              # double 0.20775777449751121
	.quad	0x3febfec4f4021cad              # double 0.87484977395879115
	.quad	0x3fe566e86b36c2dd              # double 0.66881199779717415
	.quad	0x3fda1f6c7b4efc8a              # double 0.40816795389032079
	.quad	0x3fc37788d125336c              # double 0.15208540165113094
	.quad	0x3fe570353ddba4e4              # double 0.66994726258886006
	.quad	0x3fd5ca10749c485c              # double 0.34045802486173726
	.quad	0x3fe9997a9e4964ce              # double 0.79998522677774431
	.quad	0x3fdd24a0d77a414c              # double 0.45536061327677113
	.quad	0x3fe8be9c94c5224a              # double 0.77326802307749998
	.quad	0x3fd71bf96b1db788              # double 0.36108241520457129
	.quad	0x3fe0a1b039d6a9a7              # double 0.519737351384994
	.quad	0x3fdc2d2e657ce11a              # double 0.44025764380377697
	.quad	0x3fe071d8594b3614              # double 0.51389710846132397
	.quad	0x3fee034c09dc7144              # double 0.93790246892925965
	.quad	0x3fe8cdeee8a51fed              # double 0.77513833464126736
	.quad	0x3fe7259eddb1a70b              # double 0.72334235477066622
	.quad	0x3fe801b9c44b9097              # double 0.75021065081502314
	.quad	0x3fd385235a0ee33c              # double 0.30500110430471117
	.quad	0x3fe5f48fe04a93f3              # double 0.68610376173876231
	.quad	0x3fd10acc5cdba20a              # double 0.26628407543333366
	.quad	0x3fe17b23b47039f8              # double 0.54628167383071879
	.quad	0x3fec63fdc2c098c3              # double 0.88720596349300995
	.quad	0x3fea97d3a539db9c              # double 0.83103353758530174
	.quad	0x3fe45153e6755567              # double 0.6349277020587295
	.quad	0x3fe6dae4595cc366              # double 0.71422021344743025
	.quad	0x3fe3e573ba2c455e              # double 0.62175928460980479
	.quad	0x3febd7db9556abd2              # double 0.8700998226898895
	.quad	0x3fb87dd04831b0c8              # double 0.095669763207925418
	.quad	0x3fb6a2417e5252f8              # double 0.088413327541569831
	.quad	0x3fda1827209cd98e              # double 0.40772417244752368
	.quad	0x3fbc326bf45bd1d0              # double 0.11014437404430244
	.quad	0x3fc7530106c1e3c4              # double 0.1822205813403156
	.quad	0x3fd2b1b6774e7b7a              # double 0.29209672595054992
	.quad	0x3fe9782d9d1d90a5              # double 0.79592018782252139
	.quad	0x3fe6275bcd44332e              # double 0.69230451670737181
	.quad	0x3fb44e781c9eae20              # double 0.079322344767824848
	.quad	0x3fe95edab65c149f              # double 0.79282889954687963
	.quad	0x3fe8d38eda1e8b0c              # double 0.77582495309283805
	.quad	0x3fd8bb00ca62da78              # double 0.38641376270553662
	.quad	0x3fcd56cfbab6babc              # double 0.22921177498706935
	.quad	0x3fda8b4a241db64a              # double 0.41475156332930807
	.quad	0x3fc5b8c13b23de7c              # double 0.16970076930714473
	.quad	0x3fee9a23614263b6              # double 0.95631569858516374
	.quad	0x3fb339a6c9079750              # double 0.075098442153458622
	.quad	0x3fe8d19182a7a83f              # double 0.77558208006417562
	.quad	0x3fcf602776a49d18              # double 0.24512189190975486
	.quad	0x3fe7cd7ad769a008              # double 0.74383298943303178
	.quad	0x3feacd50f7944a74              # double 0.83756302218746592
	.quad	0x3fbac5a941a1da00              # double 0.10457856991147452
	.quad	0x3fa0d5e362cec110              # double 0.032881837665060698
	.quad	0x3fd568add76aaae4              # double 0.33451410328659237
	.quad	0x3fd83752882c03f8              # double 0.37837661073723394
	.quad	0x3fe35ff5056a6919              # double 0.60546351487872407
	.quad	0x3fb5a2ddbe6845a0              # double 0.084516390787277462
	.quad	0x3fca1a4c34de7860              # double 0.20392754155631376
	.quad	0x3fedd9e005f5c6e7              # double 0.93284608043742601
	.quad	0x3fe546d9b4065b5e              # double 0.6648987308607095
	.quad	0x3fe21bc918bc5c9a              # double 0.56589178878029434
	.quad	0x3fe7a498ea22b0fb              # double 0.73884244660942444
	.quad	0x3fc50cc3397d8314              # double 0.16445198351996082
	.quad	0x3fc21eb861f91d60              # double 0.1415625074753093
	.quad	0x3f56b3f637ac6600              # double 0.0013856796710512986
	.quad	0x3fe3a39da273a3b8              # double 0.61372262696124036
	.quad	0x3fcaeb77887b31ec              # double 0.21031088031885703
	.quad	0x3fe9bd4c75a8a960              # double 0.8043577478431807
	.quad	0x3fef58a2c68b1f5f              # double 0.97956980493561818
	.quad	0x3fe22bf204b59b43              # double 0.56786442680172688
	.quad	0x3fa5d61bcd826f40              # double 0.042649144016847718
	.quad	0x3fe72683f322f97d              # double 0.72345159041996931
	.quad	0x3fee696f36439ffd              # double 0.95037041281193491
	.quad	0x3fdc475eb87c4340              # double 0.44185607925560433
	.quad	0x3fcb2f09c53c6700              # double 0.21237299090062578
	.quad	0x3fc7e779098a25bc              # double 0.18675148931315089
	.quad	0x3fdfff3443968bc0              # double 0.49995142555615857
	.quad	0x3fc65628e906dec4              # double 0.17450438860190876
	.quad	0x3fbbe035f51661e0              # double 0.1088899348600374
	.quad	0x3fe7220bc972b780              # double 0.72290601106008978
	.quad	0x3fe1060ef7fd78f9              # double 0.53198955951282223
	.quad	0x3fc117d38fd00fb4              # double 0.13353962442499567
	.quad	0x3fdd7a4604240d06              # double 0.46058798221947972
	.quad	0x3fc9da8f68ca8ce8              # double 0.2019824277568667
	.quad	0x3fa9b4edee4d51f0              # double 0.050208506908038575
	.quad	0x3fea4b478b08ab72              # double 0.82168938784648859
	.quad	0x3fd949f592eb00d4              # double 0.39513911578616256
	.quad	0x3fe622a616a45f66              # double 0.69172958776742344
	.quad	0x3fed34532a0e22d6              # double 0.91263731206808063
	.quad	0x3fe9ab7e5a915791              # double 0.80218427361499967
	.quad	0x3fe508d4f8b4796e              # double 0.65732811522665968
	.quad	0x3fd6cc22b2417ffe              # double 0.35620944412039524
	.quad	0x3fe8fee230b8904f              # double 0.78111371532259877
	.quad	0x3fbef007246a5db8              # double 0.12085003508615599
	.quad	0x3fc51bca8f3a6d80              # double 0.16491062158170777
	.quad	0x3fd7aa3cdd9d73fa              # double 0.36976548807234588
	.quad	0x3feec9764a924086              # double 0.96209253849703269
	.quad	0x3fe26896e3114a1d              # double 0.57526726101997705
	.quad	0x3fd80b792a9e7ab4              # double 0.37570027505891379
	.quad	0x3feb9d9662685a1b              # double 0.86298674793471564
	.quad	0x3fef211f5fc68a1b              # double 0.97279328066025827
	.quad	0x3fc8372a555b7094              # double 0.18918351333457351
	.quad	0x3fdd899a24bc4a1a              # double 0.46152356708003739
	.quad	0x3fe15bdc6cf9ccb0              # double 0.54246350559551182
	.quad	0x3fc15897cce35f64              # double 0.13551614288621316
	.quad	0x3fe5b5103fe27e90              # double 0.67835247495163919
	.quad	0x3fc60e17724e11fc              # double 0.17230504113480538
	.quad	0x3fcef3757ddd7a0c              # double 0.24180477758177721
	.quad	0x3fec6ef983f1cbf7              # double 0.88854671259320994
	.quad	0x3fe93028f659147b              # double 0.78712890734517715
	.quad	0x3fef620db65c5f5e              # double 0.9807194291815724
	.quad	0x3fe6580eb1fff31f              # double 0.69824919477068537
	.quad	0x3fb5cce22c88dbf0              # double 0.085157523987490213
	.quad	0x3fd371a3f86ba81c              # double 0.30381106624429477
	.quad	0x3fde732611586a04              # double 0.47577811902888834
	.quad	0x3f663a53fbcf5f00              # double 0.0027133598618823696
	.quad	0x3fea98aa92fbd82e              # double 0.83113602359549588
	.quad	0x3fedc1601d004dbc              # double 0.92985540069860617
	.quad	0x3fea645afb0468de              # double 0.82475041415025507
	.quad	0x3fca339227bb0144              # double 0.20469881954159963
	.quad	0x3fe7c2755745e56d              # double 0.7424875931311995
	.quad	0x3fd6224040d3e71a              # double 0.34584051447710495
	.quad	0x3fd2576883a62738              # double 0.28658497673369565
	.quad	0x3fcb39b344abadbc              # double 0.21269837239320377
	.quad	0x3fee72e50589ab7f              # double 0.95152522164913467
	.quad	0x3febd5f578eb858d              # double 0.86986802689732345
	.quad	0x3fe7d06a80a43e30              # double 0.74419140935237316
	.quad	0x3f9a9371ec7ab9a0              # double 0.025953083094174212
	.quad	0x3fdca34f0d409bee              # double 0.44746757787873903
	.quad	0x3fd36de5ada7abea              # double 0.30358259161465517
	.quad	0x3fd1bceb0f9b34fe              # double 0.27715565227556727
	.quad	0x3fde1e637dd4092e              # double 0.47060477531353484
	.quad	0x3fcde932b02582fc              # double 0.23367913819222241
	.quad	0x3fec97a749455973              # double 0.89351238547059919
	.quad	0x3fef12c13baf7ba0              # double 0.97103940636940322
	.quad	0x3fd2a9fb0477a15c              # double 0.29162478863010732
	.quad	0x3fcd905acd3b35a8              # double 0.23096785565432509
	.quad	0x3fec8c83b2151133              # double 0.89215264112184511
	.quad	0x3fd1e390b8edeb3e              # double 0.27951448497303832
	.quad	0x3fb2a9641f0c5578              # double 0.072897203045007575
	.quad	0x3fcc22e1f8758d50              # double 0.21981453544422402
	.quad	0x3fd114f94abcee5c              # double 0.26690513895639412
	.quad	0x3feaf3fde1cdbac7              # double 0.84228414633056381
	.quad	0x3fba083f75b26588              # double 0.10168835280855693
	.quad	0x3fd9822ca9eacad6              # double 0.39857021897766509
	.quad	0x3fd4f208dbff7f9e              # double 0.3272726200502748
	.quad	0x3fcb41e777baadfc              # double 0.21294873567727268
	.quad	0x3fe4e5cc7887b63c              # double 0.65305160084762504
	.quad	0x3fe632476186c147              # double 0.69363755272028349
	.quad	0x3fe8657e4961690f              # double 0.76238931972628332
	.quad	0x3fc75e38f2d15da0              # double 0.1825629411348304
	.quad	0x3fef166b42efbdb8              # double 0.97148669312985358
	.quad	0x3feadf8a41a46f5e              # double 0.83978760548368903
	.quad	0x3fec15ab0d7c9e97              # double 0.87764504083766581
	.quad	0x3fa4e5ff43c5be20              # double 0.040817238829614633
	.quad	0x3fbb1aab0fd865d8              # double 0.10587567459915392
	.quad	0x3fb11df911d6c318              # double 0.066863600592807493
	.quad	0x3fd8c1fa7a73f00e              # double 0.38683950384415844
	.quad	0x3fef10f69cb08119              # double 0.97082071879779896
	.quad	0x3fed338b04564c4f              # double 0.91254187438097201
	.quad	0x3fad3f5170d61f60              # double 0.057123703979469864
	.quad	0x3fe070b45cc90309              # double 0.51375787851438404
	.quad	0x3febe19f8ab53457              # double 0.87129189578412081
	.quad	0x3fe177183c8bf8a1              # double 0.5457879240564304
	.quad	0x3fe3059113019794              # double 0.59442952835228136
	.quad	0x3fc0095b149b4c90              # double 0.12528551584418723
	.quad	0x3fee2ceda4102e60              # double 0.94298440974803199
	.quad	0x3f92409b0602a760              # double 0.017824575654834418
	.quad	0x3fd75d9767f05f32              # double 0.36508736753738724
	.quad	0x3fe51a3509bd3ffd              # double 0.65944911863516575
	.quad	0x3fe95394d7b339e2              # double 0.79145280960966269
	.quad	0x3fc12a25ed1cb110              # double 0.13409875943887828
	.quad	0x3fe9ad0e400a79d1              # double 0.8023749590682262
	.quad	0x3fe6767d2b4fb3b0              # double 0.70196398219342448
	.quad	0x3fc20bbbbaf08e14              # double 0.14098307254708742
	.quad	0x3fee1b2b0c5d158e              # double 0.9408164254643212
	.quad	0x3feac8df6615daa6              # double 0.83702058733509399
	.quad	0x3fa8d45bc4fd0ea0              # double 0.048495166584442417
	.quad	0x3fe49b8493befb26              # double 0.64398411614078976
	.quad	0x3fe87df65e642f97              # double 0.76537626682101034
	.quad	0x3fde6f69e7bd7a38              # double 0.47555015211938523
	.quad	0x3fe117cb089b39f2              # double 0.53415443116119676
	.quad	0x3feec0c586eefc13              # double 0.9610316882534583
	.quad	0x3fe79d0fa5d060e6              # double 0.73792250047247587
	.quad	0x3fe19ecaafbcc654              # double 0.550633757817375
	.quad	0x3fec42e15ef37bc8              # double 0.88316410584581551
	.quad	0x3fe2594cdbe74f22              # double 0.57340090703880642
	.quad	0x3fe09a62347a18a6              # double 0.51884565591241905
	.quad	0x3fd612fb49550fe6              # double 0.34490854417185657
	.quad	0x3fe50115dbbfa60c              # double 0.65638249320653719
	.quad	0x3fbced1c28b4c958              # double 0.11299301141551632
	.quad	0x3fc937bc721801bc              # double 0.19701343127236537
	.quad	0x3fe5ca83e5c6881b              # double 0.68097109678297174
	.quad	0x3fe241e11cce1fe9              # double 0.57054191232691409
	.quad	0x3fe5454fb77cce8d              # double 0.66471086347014963
	.quad	0x3fdb33eba4b0d4bc              # double 0.42504397471504851
	.quad	0x3fe3aa40babfe9a7              # double 0.61453281855147146
	.quad	0x3feb0dfba3e4c5cf              # double 0.8454569054649087
	.quad	0x3fe7d45c253ee1b7              # double 0.74467284464394978
	.quad	0x3fe6e5c17b2e2b2c              # double 0.71554636057530763
	.quad	0x3fec49eea9389af4              # double 0.88402493525504022
	.quad	0x3febfdfc6350a7c7              # double 0.87475413701508209
	.quad	0x3feb59968b7dcc45              # double 0.8546860432092066
	.quad	0x3fe68090942c3563              # double 0.70319394054392281
	.quad	0x3fecbe9f153ab2a4              # double 0.89826921602578524
	.quad	0x3fdbc5e774ce68e4              # double 0.43395410925735534
	.quad	0x3fe23aa991738da6              # double 0.56966093452904398
	.quad	0x3fe9c5726d25a350              # double 0.80535241430070847
	.quad	0x3fe2deefe865e39b              # double 0.58971400633082582
	.quad	0x3feb224b0afb8894              # double 0.84793617386846387
	.quad	0x3fe10ebe81d99073              # double 0.53304982529927114
	.quad	0x3febaaedae803b51              # double 0.86461528856475856
	.quad	0x3febb4c4131310b9              # double 0.86581615186198413
	.quad	0x3fe49b769080e778              # double 0.64397743438097077
	.quad	0x3fde4a9c7cf50f7c              # double 0.47330391123636395
	.quad	0x3fe9aaeb786eb905              # double 0.80211423418020955
	.quad	0x3fedf751613c1f8d              # double 0.93644017211134811
	.quad	0x3fea13989885cc67              # double 0.81489209928112138
	.quad	0x3fe74f67c28a9f3f              # double 0.72844303127656207
	.quad	0x3fef783a1cbfef26              # double 0.98342614760574487
	.quad	0x3fe1b139e14f04b2              # double 0.55288404470061026
	.quad	0x3feeb05019673f24              # double 0.95902256929000317
	.quad	0x3fea239a14eb3abf              # double 0.81684593282428597
	.quad	0x3fe5123d1b172eee              # double 0.65847640315175027
	.quad	0x3fc9435e756089e8              # double 0.19736843806556625
	.quad	0x3fe7e6a3e4d4be5d              # double 0.7469043225627946
	.quad	0x3fcba8c54af97bb4              # double 0.21608797226778409
	.quad	0x3fd719171bcc94c8              # double 0.36090638842354084
	.quad	0x3fca5ab6f3c700e8              # double 0.20589339163962639
	.quad	0x3fdb48ee0abe6094              # double 0.42632628487764035
	.quad	0x3fa6a60ae24bfc70              # double 0.04423555385982858
	.quad	0x3fcaa9a1d3c3b2bc              # double 0.20830176200924722
	.quad	0x3fe5296feed0110b              # double 0.66130825656048964
	.quad	0x3fa5285acfe19710              # double 0.041323507190823006
	.quad	0x3fda04d82c51a2d2              # double 0.40654568031326932
	.quad	0x3fe6e8c5f640d359              # double 0.71591470810254088
	.quad	0x3fa17bdef1b58730              # double 0.03414818478155579
	.quad	0x3fea1b7628a6ff56              # double 0.81585224094303999
	.quad	0x3fed8dfb0be7d39d              # double 0.92358162236506625
	.quad	0x3fe5f5ed61938a63              # double 0.68627041871907257
	.quad	0x3fcac3e010c8b928              # double 0.20910263843092847
	.quad	0x3fe3f49da5a169b2              # double 0.62361032819472073
	.quad	0x3fe6ac1dd112c66a              # double 0.70851031145703058
	.quad	0x3fcbfc325233ca58              # double 0.2186339284304093
	.quad	0x3fd8598f8a19ef80              # double 0.38046635137992979
	.quad	0x3fe27fb0c7015c63              # double 0.57808722370363019
	.quad	0x3fcee55d44a0c054              # double 0.24137464381192564
	.quad	0x3fc8f4ed29f7cb78              # double 0.19497456120697243
	.quad	0x3fe38b7205c9ee6f              # double 0.61077214365600507
	.quad	0x3fea3b807859a553              # double 0.81976340776342693
	.quad	0x3fee8a77ac1f9256              # double 0.95440276735150564
	.quad	0x3fd8d857ee3e9686              # double 0.38820455804884835
	.quad	0x3fd17893737053b4              # double 0.27298437379186713
	.quad	0x3fea70b9ac9182dd              # double 0.82626041130796646
	.quad	0x3fe26326b69307c3              # double 0.57460342082071525
	.quad	0x3fd4363d8729f4de              # double 0.31581056785200967
	.quad	0x3feea28a26da4ef0              # double 0.95734126652175
	.quad	0x3fe4c908d75cf201              # double 0.64954034865473897
	.quad	0x3fd48966a5390e86              # double 0.32088628897711435
	.quad	0x3fe5067fd78df9d6              # double 0.65704338169580967
	.quad	0x3fe97291df2ca7d4              # double 0.79523557270771982
	.quad	0x3faac7f0181d9410              # double 0.052306654876510206
	.quad	0x3fad3f55becac760              # double 0.057123832263995977
	.quad	0x3fc2b837f343ebb0              # double 0.14624690416516506
	.quad	0x3fc9dabfce8aa934              # double 0.20198819718400218
	.quad	0x3fde10e078fe97bc              # double 0.4697800809466306
	.quad	0x3fe8a94e24d8be6b              # double 0.77066714474308406
	.quad	0x3fb32277e40f49f8              # double 0.074744694880145235
	.quad	0x3fedc8ecc40fb3de              # double 0.93077696126203668
	.quad	0x3fe51237bf0473a6              # double 0.65847384746631543
	.quad	0x3fe1a531e0e249dd              # double 0.55141538546223112
	.quad	0x3fe24f77607adee8              # double 0.5722004780172627
	.quad	0x3fb89124b0b58f20              # double 0.09596471132459472
	.quad	0x3fce8ace0782819c              # double 0.23861098639191602
	.quad	0x3febca3247037ce3              # double 0.86843217725609312
	.quad	0x3fe5d000664598a9              # double 0.68164081549618516
	.quad	0x3fd1089f5b2f3b82              # double 0.2661512747262621
	.quad	0x3fd46d1896f23f2a              # double 0.31915869465682312
	.quad	0x3fdd47f13c77f988              # double 0.45751601128713348
	.quad	0x3fe832ea7e9db0b8              # double 0.75621533136065633
	.quad	0x3fd9fa75f33fb650              # double 0.405911910579424
	.quad	0x3fdadcfed46c76a8              # double 0.41973849052906553
	.quad	0x3fe9546aa99c1f9d              # double 0.79155476691174764
	.quad	0x3fd801492a5d4ef2              # double 0.37507847916752646
	.quad	0x3fe6448b50ac75e6              # double 0.69586721188141776
	.quad	0x3fdc037eb633d9c8              # double 0.43771331589905715
	.quad	0x3fee70bf30f58c66              # double 0.95126304209078394
	.quad	0x3fda616823be5b70              # double 0.41219523897728205
	.quad	0x3fd85518313de31e              # double 0.38019375618709883
	.quad	0x3feaca33accfe083              # double 0.83718284370753826
	.quad	0x3f9b87e7cab490e0              # double 0.026885625598098595
	.quad	0x3fe76d17e734d8b7              # double 0.73206706197267735
	.quad	0x3fa89c0aa825c8d0              # double 0.048065503145055311
	.quad	0x3fc417c065ad34e0              # double 0.15697483982731963
	.quad	0x3fcf13a8d421e734              # double 0.24278745992688189
	.quad	0x3fede21f1ac753f4              # double 0.93385272245597983
	.quad	0x3fc78a3f7ada9220              # double 0.18390649317474672
	.quad	0x3fdac9184e2e02ca              # double 0.41852386126269592
	.quad	0x3f9c0f1bcc9ee9c0              # double 0.027401384700832088
	.quad	0x3fb2f2b56582f300              # double 0.074015939028821975
	.quad	0x3fd189fd54bab6ee              # double 0.27404721521712261
	.quad	0x3fc6c68e433f9dc4              # double 0.17793443950288979
	.quad	0x3fe9734d44ce54d0              # double 0.79532493055980957
	.quad	0x3fe6b06d83da0ff3              # double 0.70903659584337075
	.quad	0x3fdaa270202320c6              # double 0.41616442812347676
	.quad	0x3fef91c403082bf2              # double 0.98654366104289992
	.quad	0x3fe156c5392329d4              # double 0.54184209022178687
	.quad	0x3fd777f497636900              # double 0.36669649871841159
	.quad	0x3fe50e31cca32326              # double 0.65798273056234247
	.quad	0x3fb42e54282e3038              # double 0.078831920442269943
	.quad	0x3fef8896e4c71c26              # double 0.98542351420554009
	.quad	0x3feeb68bc94230be              # double 0.95978345211326377
	.quad	0x3febf11fe0eb5da5              # double 0.8731841462094293
	.quad	0x3fef898e1a3afd0f              # double 0.98554139254693662
	.quad	0x3fe03c18f55c1c21              # double 0.50733611986004601
	.quad	0x3fe166fec993e128              # double 0.54382266398082368
	.quad	0x3fe860942e7bfbdc              # double 0.76178940848319198
	.quad	0x3fee38427d951144              # double 0.94436764266769346
	.quad	0x3feaa205719dd3bd              # double 0.83227798643803619
	.quad	0x3fe2a06bbca84127              # double 0.58208262297742841
	.quad	0x3fe977cb526f1817              # double 0.79587331867583344
	.quad	0x3fd274b0f2e47e5c              # double 0.28837226600623977
	.quad	0x3fe6789ea1fdba7c              # double 0.7022240795029826
	.quad	0x3fb0c2a5b8e1b860              # double 0.065470082890642711
	.quad	0x3feb17d9560e56b9              # double 0.84666125114264112
	.quad	0x3fd488b4d8fde050              # double 0.32084389868351071
	.quad	0x3fe7bf7cbae79329              # double 0.7421249056320437
	.quad	0x3fb7c48223d52e48              # double 0.092842229603030124
	.quad	0x3fea1163cd383873              # double 0.81462278444247571
	.quad	0x3feb8de3182ea40d              # double 0.86107020114025234
	.quad	0x3fef5dd0e459eb4a              # double 0.98020214652874782
	.quad	0x3fbd5077a8a54ee0              # double 0.11450908534362325
	.quad	0x3fd3fbd0d5295faa              # double 0.31224461380542812
	.quad	0x3fe6587545a441e8              # double 0.69829810716515528
	.quad	0x3fd857ddf21b0b3e              # double 0.38036297457817969
	.quad	0x3fe5e0551c4327ad              # double 0.68363433380112826
	.quad	0x3fe8d50b61cbe978              # double 0.77600640393147469
	.quad	0x3fd03c8c2f364b12              # double 0.25369553194575289
	.quad	0x3fde06f4c118b0b8              # double 0.4691745649058805
	.quad	0x3fe762c2752ec271              # double 0.73080561530339427
	.quad	0x3febe1693bd04a4a              # double 0.87126599962568574
	.quad	0x3fc94d57633eeb2c              # double 0.1976727709387317
	.quad	0x3fd89449eeba42a4              # double 0.38405083001365825
	.quad	0x3fca5eebdb93f4e0              # double 0.20602176877574774
	.quad	0x3fea75388c14aac5              # double 0.82680919036405298
	.quad	0x3fca54af88ee61ec              # double 0.20570940195172172
	.quad	0x3fec9962bc04144a              # double 0.89372383806097244
	.quad	0x3fedf51462d0b834              # double 0.93616694736352323
	.quad	0x3fc35236a8aeca4c              # double 0.15094645725692357
	.quad	0x3fed8e64e15e09d8              # double 0.92363208787019868
	.quad	0x3fc87bc261d48914              # double 0.19127683426729247
	.quad	0x3fe4ae2e643ac9a9              # double 0.64626235557652933
	.quad	0x3fefbfb1f8e6dc1e              # double 0.99215029348022532
	.quad	0x3fd1954f9296a222              # double 0.27473820987009578
	.quad	0x3fed38e05765d640              # double 0.91319291181452655
	.quad	0x3fcde4ca165de128              # double 0.23354459850430342
	.quad	0x3fd700bf1b6879e2              # double 0.35942056347439977
	.quad	0x3fd94dab1536d6f6              # double 0.39536549636555607
	.quad	0x3fcc98cd70de492c              # double 0.22341316233775765
	.quad	0x3f6a3477369b4900              # double 0.0031988457093145017
	.quad	0x3fd87656ea217398              # double 0.38222287048648118
	.quad	0x3fefce9332486059              # double 0.99396667309612063
	.quad	0x3fcd6c19fb8f0928              # double 0.22986149581090243
	.quad	0x3fc52db3ab26d4c0              # double 0.165457209177168
	.quad	0x3febf3a6861960fd              # double 0.87349249068486723
	.quad	0x3fe7b3fe04d63362              # double 0.74072171158477951
	.quad	0x3fe029574775e423              # double 0.50504650075084034
	.quad	0x3fd027659d540cb0              # double 0.25240459789365399
	.quad	0x3fe9824d5674b08d              # double 0.79715601812269343
	.quad	0x3f8ff70d6bd8aa00              # double 0.015607933858594158
	.quad	0x3fefde951d3bbd0c              # double 0.99592071256293612
	.quad	0x3fcf17441cbf993c              # double 0.24289752391559627
	.quad	0x3fdaffbc6144347e              # double 0.42185887812303935
	.quad	0x3fe70aeb11e806b7              # double 0.72008279321035829
	.quad	0x3fe0bfb99807470f              # double 0.52340392773678157
	.quad	0x3f968ff27b92d300              # double 0.022033489982919541
	.quad	0x3fb2f05866da0748              # double 0.0739798785307616
	.quad	0x3feb8634834dd3fb              # double 0.8601324619800147
	.quad	0x3f96855d3cc8b660              # double 0.021993119082415524
	.quad	0x3fe2770004c91b71              # double 0.57702637610132801
	.quad	0x3fcc9ae39ca38a6c              # double 0.22347684048061767
	.quad	0x3fe73ab701b0c984              # double 0.72591734247389228
	.quad	0x3fe89d03cb0dafbc              # double 0.76916684779052202
	.quad	0x3fd4f022b4d04aa8              # double 0.3271567121275134
	.quad	0x3fd8370a773660e0              # double 0.37835942880475493
	.quad	0x3fd1378718b3a94c              # double 0.26901414310727456
	.quad	0x3fdeead01b3f32d0              # double 0.48308184300257739
	.quad	0x3fda0569e5c5afa4              # double 0.40658042372410308
	.quad	0x3fd7041c247bf770              # double 0.35962585032381522
	.quad	0x3fe5bd052b392358              # double 0.67932375375776655
	.quad	0x3fe4f62cec4cb12b              # double 0.65505071785222435
	.quad	0x3fe10488ca54de79              # double 0.53180350797533926
	.quad	0x3fe585543ea17fef              # double 0.67252552254285358
	.quad	0x3feea3f5209010f3              # double 0.95751434669412416
	.quad	0x3fc09a5d8f5ad59c              # double 0.12971086024996914
	.quad	0x3fec13baa7e0b84e              # double 0.87740834034571846
	.quad	0x3fc4bcea5bd4df24              # double 0.16201524242364329
	.quad	0x3fe1bb08a73f4cda              # double 0.55408127465707513
	.quad	0x3fda618fa9afa2e2              # double 0.41220466204553763
	.quad	0x3fd37a909b57c612              # double 0.3043557660122086
	.quad	0x3fed40187ef6a055              # double 0.91407418057952816
	.quad	0x3fe13afd609cee4d              # double 0.53845089788178202
	.quad	0x3fdea19269ef9646              # double 0.47861156792928161
	.quad	0x3fee2d92f0d33966              # double 0.94306323085929189
	.quad	0x3fdde8f764777b3c              # double 0.46734413920596629
	.quad	0x3fa57bed8b32a9e0              # double 0.041961119882518494
	.quad	0x3fd9c6a107c7013e              # double 0.40274835357196881
	.quad	0x3fe3467d54401ce2              # double 0.60235468344845011
	.quad	0x3fd09b17c07f37ec              # double 0.25946611212282167
	.quad	0x3fcce124a904887c              # double 0.22562082531755212
	.quad	0x3fee698a9db387ee              # double 0.95038348008188023
	.quad	0x3feed4bc23ef7e4d              # double 0.96346861857086596
	.quad	0x3fd1ee197ad3d432              # double 0.28015744204396065
	.quad	0x3fccce61cc1a0aa0              # double 0.22504827943710826
	.quad	0x3fed0d90b6aea771              # double 0.90790591888547401
	.quad	0x3fd19c0e3bb67cde              # double 0.27514987784702594
	.quad	0x3fe7f35412031f90              # double 0.74845317380912668
	.quad	0x3fa67c5cacc85210              # double 0.043917556850065265
	.quad	0x3fd9fad3b2ffe0d8              # double 0.40593426208898853
	.quad	0x3fe9ee2a80b63729              # double 0.81032300128001566
	.quad	0x3fe21ebcc86088b2              # double 0.56625212799214908
	.quad	0x3fb64ddb2d5db968              # double 0.087125490737638978
	.quad	0x3fe65641f2b5507b              # double 0.69802949336964504
	.quad	0x3fd01e86089e345c              # double 0.25186301080322493
	.quad	0x3fb32442e58adae0              # double 0.074772053757310442
	.quad	0x3fd8231afa5ce20e              # double 0.37714266252035678
	.quad	0x3fe6cafb63fc2254              # double 0.71227807548809574
	.quad	0x3fa1eeeee47886f0              # double 0.035026040448668527
	.quad	0x3fd5ba4fdcef2094              # double 0.33949657989115534
	.quad	0x3fe85e882bb3adbe              # double 0.7615395406295915
	.quad	0x3fe7222bbe87d0d9              # double 0.72292124951357117
	.quad	0x3fe9554b7754c940              # double 0.7916619616210383
	.quad	0x3fbd19f7cbc8f590              # double 0.11367748952121404
	.quad	0x3fb72240474c31e0              # double 0.090366380125665113
	.quad	0x3fed9bcdb403ff40              # double 0.92526898536014101
	.quad	0x3fd10f377f492444              # double 0.26655375890965538
	.quad	0x3fbd7c695e85ed58              # double 0.11517962033933793
	.quad	0x3fda8280dab6b66e              # double 0.41421529158365089
	.quad	0x3fe427913aeccfd9              # double 0.62982999333189149
	.quad	0x3fd8c34d92c4ca44              # double 0.38692035038835493
	.quad	0x3fef137aa7d47364              # double 0.97112782267832331
	.quad	0x3fa7b7dea78d65b0              # double 0.046324689820447573
	.quad	0x3fa21271e390ef60              # double 0.035296973256179198
	.quad	0x3fef7e795589f894              # double 0.98418871599985147
	.quad	0x3fe3d3e9d5e3010f              # double 0.61961833739045058
	.quad	0x3fe0f7b2f0142059              # double 0.5302366913829345
	.quad	0x3fe98996cb6c6d98              # double 0.79804553729211403
	.quad	0x3fefec8af388de29              # double 0.9976248508964477
	.quad	0x3f7b1091a48b0080              # double 0.0066075982255712207
	.quad	0x3fe522b6e0bdc3f7              # double 0.66048759360103204
	.quad	0x3fee8339571b6ab6              # double 0.95351855290512932
	.quad	0x3fc936b4526e88b8              # double 0.19698194527615498
	.quad	0x3fa6615edbc60070              # double 0.043711628272831926
	.quad	0x3fe7ab2e76fc3a10              # double 0.73964617957409651
	.quad	0x3fe9388e583ea701              # double 0.78815381274509388
	.quad	0x3f873bac3b220980              # double 0.011344285540194177
	.quad	0x3fd01392e465539e              # double 0.25119468979146997
	.quad	0x3fe9cef41d224e8a              # double 0.80651288690792566
	.quad	0x3fe9e955c9cac13f              # double 0.80973328983785808
	.quad	0x3fe3f5eb8fbd12c0              # double 0.62376955102862297
	.quad	0x3fd42fd0a25f0374              # double 0.31541839462811727
	.quad	0x3fc1733bfa7fc444              # double 0.13632917148018653
	.quad	0x3fc22999631355f4              # double 0.14189450586006525
	.quad	0x3fe563459c9b8768              # double 0.6683681544056812
	.quad	0x3fccc2fb14376eb0              # double 0.22470034110198389
	.quad	0x3fc6e2df82ab8780              # double 0.17879861717579715
	.quad	0x3fee2338a90e37b1              # double 0.94179947870883585
	.quad	0x3fec55ce35a2a572              # double 0.88547430492069013
	.quad	0x3fd0dccbbe43af6a              # double 0.26347631054408416
	.quad	0x3fe38e0397f26c86              # double 0.61108569790975831
	.quad	0x3fe732757212b6c2              # double 0.7249095180502183
	.quad	0x3fef5ee9cb5b0447              # double 0.98033609121206033
	.quad	0x3feff3a4ab0ddd5b              # double 0.99849160584464458
	.quad	0x3fc92fb192b10494              # double 0.19676799452466709
	.quad	0x3fd9984549e89346              # double 0.39991886346460992
	.quad	0x3fdf953d0754c3a0              # double 0.49348378864220344
	.quad	0x3f834636086eec80              # double 0.0094112607310903317
	.quad	0x3fb41e89519c7eb0              # double 0.078590948509822622
	.quad	0x3fe4dd53d33eca8a              # double 0.65201751002162323
	.quad	0x3fe46d5aeb3b21b7              # double 0.63834901755858808
	.quad	0x3fd27dee006c4bc6              # double 0.28893613854705469
	.quad	0x3fef45b42b47db5f              # double 0.97725876286754587
	.quad	0x3fe3bdcdf71049d4              # double 0.61691950087179714
	.quad	0x3fd35aef75b24750              # double 0.30242525571622014
	.quad	0x3fe6fbd57eefa7df              # double 0.71824145118921112
	.quad	0x3fce08eb02837668              # double 0.23464715597849595
	.quad	0x3f921cf27cde1fc0              # double 0.01768854987270152
	.quad	0x3fd25b77b234533c              # double 0.2868327369954391
	.quad	0x3fdc59dfb1d5f062              # double 0.44298546187179089
	.quad	0x3fea4a6a8e75db16              # double 0.82158401321689456
	.quad	0x3fb6b75345e6ef00              # double 0.08873482185930115
	.quad	0x3fe76c0988dabc3f              # double 0.73193814019567316
	.quad	0x3fd12b3995ff57da              # double 0.26826324127375545
	.quad	0x3fc9153fd0a547bc              # double 0.19596097648405741
	.quad	0x3fe456fe248ba258              # double 0.63561923158438116
	.quad	0x3fdcf7635dfeeffa              # double 0.45259937457353738
	.quad	0x3feba47fe86f07a7              # double 0.86383052251061521
	.quad	0x3fd874521133e92c              # double 0.38209964446982059
	.quad	0x3fe6c4e76c392acc              # double 0.71153613221516698
	.quad	0x3fda4aff062fb156              # double 0.41082740406161145
	.quad	0x3fc0475071fda19c              # double 0.12717633787111715
	.quad	0x3fe1c0c7177e9db1              # double 0.55478243435657337
	.quad	0x3fa2070cec14aa50              # double 0.035210040873000836
	.quad	0x3fe5749058f689ca              # double 0.67047898650735616
	.quad	0x3fd06120a3f3b908              # double 0.25592819224301921
	.quad	0x3fe884af16c4a0c0              # double 0.76619677016153531
	.quad	0x3fdaf03d4c9137b4              # double 0.42091305234213938
	.quad	0x3fec5d0abf7bbd14              # double 0.88635766409962224
	.quad	0x3fd7d6e2c51acb8e              # double 0.37249058960440429
	.quad	0x3fec13ba4d3c85ed              # double 0.87740817151296613
	.quad	0x3fe87affc78012f3              # double 0.76501454319858764
	.quad	0x3fc9abfa7651ece0              # double 0.20056086327881584
	.quad	0x3feef67ce1ff6264              # double 0.96758884563594138
	.quad	0x3fd32f4c1c4b9d3a              # double 0.29976179850787654
	.quad	0x3fbfad828d18ddd0              # double 0.12374130196336997
	.quad	0x3fa261c1532fa910              # double 0.035902062801897228
	.quad	0x3fe8df50fafa32db              # double 0.77726029414187836
	.quad	0x3f9e2081897ece60              # double 0.029420875565575932
	.quad	0x3f7ab0e57ad22500              # double 0.0065163578084448393
	.quad	0x3fde374636688750              # double 0.47212367356597884
	.quad	0x3fed0b0ef7a0f395              # double 0.90759991040214294
	.quad	0x3fdd94b603e5eb52              # double 0.46220159893680546
	.quad	0x3fe6c0cb7247ff09              # double 0.71103451080850377
	.quad	0x3fe564e7fb7ae7e0              # double 0.66856764905173449
	.quad	0x3fc8425f1c00e6e8              # double 0.18952549807891406
	.quad	0x3fdf3fd766b430fa              # double 0.48827157048869163
	.quad	0x3f9115603e0149e0              # double 0.016683105263220699
	.quad	0x3fedb858f528f3a0              # double 0.92875335581594598
	.quad	0x3fe8dfc677529635              # double 0.77731631570049464
	.quad	0x3fd023dfc8c6c6a4              # double 0.25218958479954723
	.quad	0x3fd72ba02de50f88              # double 0.36203770143423997
	.quad	0x3fea97cf082319ab              # double 0.83103133763579728
	.quad	0x3fd955e600611a98              # double 0.39586782490770522
	.quad	0x3fdbf61b55d1741a              # double 0.43689616566354206
	.quad	0x3fee5e86fad67bef              # double 0.94903897277606386
	.quad	0x3fce86ff515da9f4              # double 0.23849479172652333
	.quad	0x3fec0d652e3612bf              # double 0.87663516069058989
	.quad	0x3fdc0a23e78fee40              # double 0.4381189118719
	.quad	0x3fed22046e9b8489              # double 0.91040250399613953
	.quad	0x3fc039de46c344c8              # double 0.12676599936688704
	.quad	0x3fccc39cb244d04c              # double 0.22471960739642538
	.quad	0x3fe08a0c3d2cdc99              # double 0.51685153911866444
	.quad	0x3fef3c54600f9b3c              # double 0.97611445199877477
	.quad	0x3fbcd12cb9469078              # double 0.11256675265627958
	.quad	0x3fd915ae3638867c              # double 0.39194827361107065
	.quad	0x3fe210fa8d96edf6              # double 0.56457259802067372
	.quad	0x3fd74cab60928bc6              # double 0.36405453139212474
	.quad	0x3fe421d9ae90b431              # double 0.62913211912894529
	.quad	0x3fc748b016f6799c              # double 0.18190575715284474
	.quad	0x3fdb3fb2c581499a              # double 0.42576283729172248
	.quad	0x3fe5bd6a82d98225              # double 0.67937207752772066
	.quad	0x3feef7242b114409              # double 0.96766861354456168
	.quad	0x3feeafb38997718e              # double 0.95894791482310082
	.quad	0x3fa92d6d8759be00              # double 0.049174711963924977
	.quad	0x3febb3104a22cd7c              # double 0.86560835342099506
	.quad	0x3fe57bb73badacaa              # double 0.67135202079716305
	.quad	0x3fe28054d3365b5d              # double 0.57816544773491396
	.quad	0x3fe0d6f31071b6e7              # double 0.52623894893414735
	.quad	0x3fd8ba86b31d3cca              # double 0.38638465396520572
	.quad	0x3fdb50606dfce8ee              # double 0.42678080311783517
	.quad	0x3fe39a793205e729              # double 0.61260661859634979
	.quad	0x3fd111dde2df7892              # double 0.26671549945411599
	.quad	0x3fee49a051df916b              # double 0.94648757925874116
	.quad	0x3fc23ef1b011fd44              # double 0.14254590127164068
	.quad	0x3fa4ab90acf87420              # double 0.040371438135686555
	.quad	0x3fd9bff668bb9c6a              # double 0.40234146335428156
	.quad	0x3fe8adf258927bf6              # double 0.77123372363337128
	.quad	0x3fea43986e9d0588              # double 0.82075139621899584
	.quad	0x3fd7faab3a30bf7c              # double 0.37467461283357983
	.quad	0x3fb576e822dd09a8              # double 0.08384562350423741
	.quad	0x3feb7ae1ee98d2a1              # double 0.85875031090707321
	.quad	0x3fe52f829a60c0d7              # double 0.66204958106939216
	.quad	0x3fe01f67ac00a888              # double 0.50383361429455054
	.quad	0x3fe23c13d73e24e0              # double 0.56983367957687037
	.quad	0x3fdb4ed6856b925a              # double 0.42668688802067367
	.quad	0x3fe9983eb5d448d8              # double 0.79983459008715396
	.quad	0x3fe383150d15f9d5              # double 0.60975124889210497
	.quad	0x3fdbba203f493172              # double 0.43323522739662856
	.quad	0x3fd293a1f90031ea              # double 0.29026078526001575
	.quad	0x3fe0250182353f25              # double 0.50451732093094803
	.quad	0x3fc0adfb80bead44              # double 0.13030952249878613
	.quad	0x3fc216a9afb1f160              # double 0.14131661490308556
	.quad	0x3fecfef57a2d218f              # double 0.90612291204983986
	.quad	0x3faabd5e3b2ccbd0              # double 0.052226013873585608
	.quad	0x3fbe7487465bc298              # double 0.11896558253989509
	.quad	0x3fe27f8b471d9d84              # double 0.57806934251577546
	.quad	0x3fda7eba30073552              # double 0.41398482027292005
	.quad	0x3fdd1b57469fd9b8              # double 0.45479375740924466
	.quad	0x3fbfb065719b5fe0              # double 0.12378534339529734
	.quad	0x3fe3a7f69492aaf8              # double 0.61425332086704909
	.quad	0x3fdd99e9b0c123d2              # double 0.46251909505059274
	.quad	0x3fca3254aadee83c              # double 0.20466097205445688
	.quad	0x3fe7c9eb63ad4d56              # double 0.7433983752074862
	.quad	0x3fecc63f1f3449da              # double 0.89920002073841521
	.quad	0x3fdde26c0698e0e2              # double 0.46694470066314697
	.quad	0x3fe9fd5cd362a105              # double 0.81217805181680147
	.quad	0x3fd60091e5b9ab06              # double 0.34378478464229578
	.quad	0x3fc48e5834cefde0              # double 0.16059401110213312
	.quad	0x3fea2dd4407624ee              # double 0.81809437360894122
	.quad	0x3fd72f11b0accf86              # double 0.3622478700010493
	.quad	0x3fafc5de87213d80              # double 0.062056497569410674
	.quad	0x3fe73e76683fa9e3              # double 0.72637482033797729
	.quad	0x3fca3bd40197da64              # double 0.20495081022064021
	.quad	0x3fb590356e795138              # double 0.084231700392881304
	.quad	0x3fede5082d30bdd1              # double 0.93420800043343821
	.quad	0x3fcbdf2d9ce3d438              # double 0.2177483573974841
	.quad	0x3fe013ecb5ce7d2d              # double 0.50243220814801293
	.quad	0x3fe8e334abdb8d88              # double 0.77773507657950436
	.quad	0x3fd6589e211326ee              # double 0.34915879468881783
	.quad	0x3fe534a7dc5e5249              # double 0.66267769852363145
	.quad	0x3fe9f9b0c93ce1ac              # double 0.81172980598699018
	.quad	0x3fe2b2d10da4b87a              # double 0.58432820000395158
	.quad	0x3fe9aa5ed80230d1              # double 0.80204717816516269
	.quad	0x3feef122e63e924b              # double 0.96693558663953049
	.quad	0x3fe5d48dbead5b21              # double 0.6821964954532157
	.quad	0x3fe493865246ae46              # double 0.64300838536787164
	.quad	0x3fc0e49044bfa2c0              # double 0.13197520596374623
	.quad	0x3fcbe763fea0cd40              # double 0.2179989808370042
	.quad	0x3fee9a6a3ad2906b              # double 0.95634948242924389
	.quad	0x3fee6a9db7b320fa              # double 0.95051465872623386
	.quad	0x3fe6295ff382a301              # double 0.6925506359158079
	.quad	0x3fd681b15264a9ba              # double 0.35166581197941194
	.quad	0x3fea68d277735553              # double 0.8252956707971556
	.quad	0x3feb4b05de7f5903              # double 0.85290807205709063
	.quad	0x3fab9690bc92ecc0              # double 0.053883097667005497
	.quad	0x3fe9ea57b20c0be1              # double 0.80985626959624935
	.quad	0x3feb4575c62fdbac              # double 0.85222901066196277
	.quad	0x3fd9710b0e691d94              # double 0.39752460868154427
	.quad	0x3fee0e90ad74ce8a              # double 0.93927797201327334
	.quad	0x3fdc00a6d1b20424              # double 0.43753977277816802
	.quad	0x3fd55ef4b3cb42d0              # double 0.3339206462670008
	.quad	0x3fe8c4649ec3fcbd              # double 0.77397376068974888
	.quad	0x3fe12a4dda4deb59              # double 0.53641407620976189
	.quad	0x3fe3827895c4aa55              # double 0.60967664004904043
	.quad	0x3fb85ea48d2d8350              # double 0.095194134204132696
	.quad	0x3fc2763066d14c68              # double 0.14423184414281143
	.quad	0x3fe7f5bad3be8c41              # double 0.74874631267847047
	.quad	0x3fd47595061b0cfe              # double 0.31967664333588164
	.quad	0x3fc40d7d3618b9d0              # double 0.15666165486750439
	.quad	0x3fe04c829c486427              # double 0.50933962367992514
	.quad	0x3fe1ab24998c6898              # double 0.55214147558150994
	.quad	0x3fe0a9dcea553cfd              # double 0.5207352234664594
	.quad	0x3fe0dfedf4922649              # double 0.52733514564278849
	.quad	0x3fc46cfbde9b02c0              # double 0.15957592362794593
	.quad	0x3fe04b1988ce2559              # double 0.50916744918610413
	.quad	0x3fdb4594c8842432              # double 0.42612189847619952
	.quad	0x3fdf15581503f510              # double 0.48567773868838149
	.quad	0x3fe59e7a089c13af              # double 0.6755952995450708
	.quad	0x3fc044133eb0a0fc              # double 0.12707748948128728
	.quad	0x3fe449d7f7593948              # double 0.63401411352405379
	.quad	0x3fbd330039ceb848              # double 0.1140594617015448
	.quad	0x3fef762b3d746e54              # double 0.98317491534130363
	.quad	0x3fbfb1c24f3bdc68              # double 0.123806137413213
	.quad	0x3fdaca06f87158b8              # double 0.41858076345432549
	.quad	0x3fe22473387c362d              # double 0.56694947273508023
	.quad	0x3fe8ef15bc7c899a              # double 0.77918516935123994
	.quad	0x3fc888350af5254c              # double 0.19165671381987648
	.quad	0x3fdef27b4f60976e              # double 0.4835499072236108
	.quad	0x3fe40f967b1f1903              # double 0.62690280959284939
	.quad	0x3fdd8b58178c9ae8              # double 0.46162988948564854
	.quad	0x3fdcb77ac817c370              # double 0.44869870701136616
	.quad	0x3fc78aa7407af43c              # double 0.18391886375857947
	.quad	0x3feede7b9ccd51a7              # double 0.96465855241199427
	.quad	0x3fedc393928e2d4f              # double 0.93012407898042138
	.quad	0x3fd4c1523f8d8f3a              # double 0.32429939466804891
	.quad	0x3fa1a3a351df0f10              # double 0.034451583618219428
	.quad	0x3fec5a0aa470e5b9              # double 0.88599140279182287
	.quad	0x3fef7dac16ebd18f              # double 0.98409084774771027
	.quad	0x3fd4ec6fdb8d5c82              # double 0.32693096581119374
	.quad	0x3fe37ce69a897672              # double 0.60899667914391231
	.quad	0x3fda4d75c89027ee              # double 0.41097778879395619
	.quad	0x3fef9008a95290da              # double 0.9863322550850413
	.quad	0x3fc075a08b680358              # double 0.12858969504307072
	.quad	0x3fe4960361c2d2f4              # double 0.64331215948058551
	.quad	0x3fe5198d75835674              # double 0.65936921073689669
	.quad	0x3fc39d32425e7e24              # double 0.15323475113562879
	.quad	0x3fe0c530030d4513              # double 0.52407074543057985
	.quad	0x3fe650b9d74c7abe              # double 0.69735424089943598
	.quad	0x3fa9fba1b2a74960              # double 0.050747921999248602
	.quad	0x3fe4ddd55ee40cf2              # double 0.65207928212512756
	.quad	0x3fe5291b8c3b3006              # double 0.66126801861673878
	.quad	0x3fed8fdc259c89a4              # double 0.92381102891913657
	.quad	0x3fa605185ff83e00              # double 0.043007623400736605
	.quad	0x3fdcbbc74874d8b4              # double 0.44896108699630166
	.quad	0x3fee0eaaebb7ee6a              # double 0.93929048575178098
	.quad	0x3fe7f3e91007655c              # double 0.74852421885149622
	.quad	0x3feef072f1dfe881              # double 0.96685168496266282
	.quad	0x3faa1b62c12fe2b0              # double 0.05099018676987066
	.quad	0x3fd48bc69c35ab50              # double 0.32103123907898112
	.quad	0x3fb9d34996427e28              # double 0.1008802406163275
	.quad	0x3feef8fc2fc55692              # double 0.96789368944401333
	.quad	0x3feac170b8a7d80f              # double 0.83611332002215188
	.quad	0x3fdcaf21fa05967c              # double 0.44818925300783241
	.quad	0x3fc0ee7f948a257c              # double 0.13227839234268035
	.quad	0x3fc6234d85ca70ac              # double 0.17295235665085806
	.quad	0x3fd9a94d3baf4770              # double 0.4009583552225342
	.quad	0x3fd516c8df61c186              # double 0.32951566519388853
	.quad	0x3fdea2a77328709e              # double 0.47867761846442558
	.quad	0x3fef588fd29c8c71              # double 0.97956076750814535
	.quad	0x3fc37c30cd600440              # double 0.15222749736861552
	.quad	0x3fe8a9aa31ce05d6              # double 0.77071103789801998
	.quad	0x3fe112e774281b8f              # double 0.5335576313672038
	.quad	0x3fdb234e7c43a492              # double 0.42402994284800244
	.quad	0x3fe898e6ef15a81d              # double 0.76866480537615056
	.quad	0x3fdd62be361a127c              # double 0.45915179522879845
	.quad	0x3fd2733c1845a3f4              # double 0.28828337068858834
	.quad	0x3fe4c7c0b8425e8c              # double 0.64938388813148284
	.quad	0x3fe19662870b867b              # double 0.54960752845745675
	.quad	0x3fc4c04638e07f48              # double 0.16211774613565866
	.quad	0x3fdfd6da99c90aea              # double 0.4974886419114869
	.quad	0x3feea9b816b1b777              # double 0.95821766312086154
	.quad	0x3fd8b2280b5653e0              # double 0.3858738051142705
	.quad	0x3feef1183a289cfd              # double 0.96693049773321571
	.quad	0x3fe23ae6a10dd249              # double 0.56969005065781986
	.quad	0x3fee7e1862981ec6              # double 0.95289248711284169
	.quad	0x3fd05a5b6888b2ca              # double 0.25551495750805187
	.quad	0x3fbc8728683f58c8              # double 0.11143734498122904
	.quad	0x3fea74c0dc80fd31              # double 0.82675211970482654
	.quad	0x3fe496dd6ca5324d              # double 0.64341613025460165
	.quad	0x3fe3909d29a15336              # double 0.61140306597608318
	.quad	0x3fe92b9e5be9d397              # double 0.78657453491051654
	.quad	0x3fe3926abbbb69b5              # double 0.61162316004202089
	.quad	0x3fcb4f7842a3629c              # double 0.21336272481746199
	.quad	0x3fe7ef7adad12688              # double 0.74798338639921358
	.quad	0x3fc468870e1538a8              # double 0.15943992793694872
	.quad	0x3fe748f4c5a2a0f2              # double 0.72765577889097544
	.quad	0x3fe3a03d3760d295              # double 0.61331044021661063
	.quad	0x3fb1f5b233324bc8              # double 0.07015527486718931
	.quad	0x3fc4ee11939fd270              # double 0.16351527889459616
	.quad	0x3fd0c1848c61b1c0              # double 0.26181138714926178
	.quad	0x3fea9cbc8c984813              # double 0.83163287601405711
	.quad	0x3fdc4f69f6607b94              # double 0.44234704075091114
	.quad	0x3fc087857d6aaf34              # double 0.12913578628410394
	.quad	0x3fb8346b4fea0c80              # double 0.094549853334727984
	.quad	0x3fd9be18e95786a6              # double 0.40222761904997595
	.quad	0x3fdf654b45a0728e              # double 0.49055749701964479
	.quad	0x3fe1a9045229994f              # double 0.5518819432007066
	.quad	0x3fc8c57d60f6d968              # double 0.19352690920431859
	.quad	0x3fd997c0daa11504              # double 0.399887288575272
	.quad	0x3fe443b560c5c457              # double 0.63326519871601306
	.quad	0x3fc13c5398e50a28              # double 0.13465352025566912
	.quad	0x3fd50f79c9c27dbe              # double 0.32906956389521358
	.quad	0x3febb070a14d7cdd              # double 0.86528808121138534
	.quad	0x3fb5cb1eddc59eb0              # double 0.085130623954337236
	.quad	0x3fd549cc036a1360              # double 0.33262920697625553
	.quad	0x3fe9b3d22cb36125              # double 0.80320080500226665
	.quad	0x3fe5445daed91a47              # double 0.66459545278559851
	.quad	0x3fe217bc218cf5e3              # double 0.5653973250661547
	.quad	0x3fe770db005f47a3              # double 0.7325263030308985
	.quad	0x3fd2e06de177a0be              # double 0.29494807260790512
	.quad	0x3fcb7af7e02e0078              # double 0.21469019361757424
	.quad	0x3fc585934117a94c              # double 0.16813889196721232
	.quad	0x3fe9e7bb941655fe              # double 0.80953768657008118
	.quad	0x3f8743a7d3af8680              # double 0.011359511516221277
	.quad	0x3fe1ebe5d51267a5              # double 0.56004611602405829
	.quad	0x3fd3a794ea77cbc6              # double 0.30710337540875476
	.quad	0x3fd827be1eaf27d2              # double 0.37742569920066871
	.quad	0x3fd25c12c7240894              # double 0.28686971137370532
	.quad	0x3fe296385443edb7              # double 0.58083740671229733
	.quad	0x3fe9f310b2534a8c              # double 0.81092104748889104
	.quad	0x3fe1218950bb26f8              # double 0.5353437973764974
	.quad	0x3fe8426e9dde6614              # double 0.75810938676585459
	.quad	0x3fd6a05a445796fe              # double 0.3535371463207041
	.quad	0x3fc74678a20fd350              # double 0.18183811104941094
	.quad	0x3fe8848204f58f6b              # double 0.7661752793178328
	.quad	0x3fe6c0f0625af077              # double 0.71105212411886398
	.quad	0x3fec33129a165fd8              # double 0.88123445601649575
	.quad	0x3fe76eccad1eeb17              # double 0.73227533161784464
	.quad	0x3fdb9bd6831ba600              # double 0.43138659289851944
	.quad	0x3fec9cf188d8d991              # double 0.8941581414026577
	.quad	0x3fd5373bc729ff32              # double 0.33149618577589302
	.quad	0x3fd3df0b027e9154              # double 0.31048846477121583
	.quad	0x3fd9db53d5f0564a              # double 0.40401168720686498
	.quad	0x3fd8673f83d6aeac              # double 0.38130176424850037
	.quad	0x3fead6a8e2077a6a              # double 0.83870357652979277
	.quad	0x3fd6450909fab13a              # double 0.34796358084237833
	.quad	0x3fec878e07480611              # double 0.89154721662652225
	.quad	0x3fcf51a08d6aaf44              # double 0.24467856316675285
	.quad	0x3fec9e780ecf3d28              # double 0.89434435741887786
	.quad	0x3fc988c5b5bebec4              # double 0.19948645948669796
	.quad	0x3feaafbce581d38b              # double 0.83395237756359231
	.quad	0x3fc5e60eb32bc390              # double 0.17108329533178024
	.quad	0x3fe05e0520d5e66a              # double 0.51147705472176352
	.quad	0x3fc05171a06846c0              # double 0.12748546917332781
	.quad	0x3fe87fb548786619              # double 0.76558937219960221
	.quad	0x3fd635e96a95aeb8              # double 0.34704051407491532
	.quad	0x3fe876abe86c2bc5              # double 0.76448626894977478
	.quad	0x3fceaa2e867d10a0              # double 0.23956853453467364
	.quad	0x3fe037e4fb7d3375              # double 0.50682305449445997
	.quad	0x3fc98f1255766778              # double 0.19967869923567227
	.quad	0x3fd28b5cc8dd56da              # double 0.28975600829776982
	.quad	0x3fe0b44eb4fbb443              # double 0.52201018665585541
	.quad	0x3fe33fa2139a8816              # double 0.60151771382175201
	.quad	0x3fedee2638121ccc              # double 0.93532095862692576
	.quad	0x3fe7e380cb1124f0              # double 0.7465213743354564
	.quad	0x3fe9c169b71d5771              # double 0.80485997929166164
	.quad	0x3f998d1df3872280              # double 0.024952381123315437
	.quad	0x3fed54291bd00952              # double 0.91652350837856944
	.quad	0x3fc7007bf8a7ea64              # double 0.17970227853205067
	.quad	0x3fdf805fb142f62c              # double 0.49221031485271527
	.quad	0x3fe64000a3393fe1              # double 0.69531280402770446
	.quad	0x3feb901f37a909cd              # double 0.8613430106273029
	.quad	0x3fdd26ee82da326a              # double 0.45550120142505668
	.quad	0x3fe38853fb83b30a              # double 0.61039160846630236
	.quad	0x3fef6cbc3dda2f65              # double 0.98202335434460208
	.quad	0x3fe6a0961ef29b24              # double 0.70710283321827605
	.quad	0x3fdb129dec05447c              # double 0.42301128434070967
	.quad	0x3fccc5bb26abebf4              # double 0.22478427303562365
	.quad	0x3fe81ecd6eae19d9              # double 0.75376006715014932
	.quad	0x3fe882f4b94fa6c2              # double 0.76598583406049436
	.quad	0x3fe4382be8809661              # double 0.63185687456707396
	.quad	0x3fd7a6294fc2c0de              # double 0.36951668538223525
	.quad	0x3fd062b59fef161c              # double 0.25602474802539787
	.quad	0x3feb06b1dd0996ed              # double 0.84456723376635312
	.quad	0x3feaaaad6cb2e669              # double 0.83333464842071436
	.quad	0x3fdc9d6cc9442c4a              # double 0.44710845618164241
	.quad	0x3fe8ccdcf903db6e              # double 0.77500771175151129
	.quad	0x3fdb5abbc5818f7c              # double 0.42741293227867749
	.quad	0x3fbeac145b5c7670              # double 0.11981322508332837
	.quad	0x3fdfdafe8e00861a              # double 0.49774135463130309
	.quad	0x3fb8a2bc9ae3a6e0              # double 0.096233165564310052
	.quad	0x3fd42574ac9fea8e              # double 0.31478611810568047
	.quad	0x3fd981672f623dfc              # double 0.39852313639946124
	.quad	0x3fd2e6219c3af04e              # double 0.2952960992513497
	.quad	0x3feb7b377e864d51              # double 0.85879111015166576
	.quad	0x3fe4c1038c4ccd9f              # double 0.64856126215311238
	.quad	0x3fbd4bbddac3e9a8              # double 0.11443697539281195
	.quad	0x3fd021e54e31a560              # double 0.25206883083463616
	.quad	0x3fe206502de610c8              # double 0.56327065434063517
	.quad	0x3fe7b10bdc8529e1              # double 0.7403621012720657
	.quad	0x3fefc484f265dd68              # double 0.99273917525617338
	.quad	0x3fd087ec0ccb5bd8              # double 0.25829602479410374
	.quad	0x3fecc716ffbb981a              # double 0.89930295894442058
	.quad	0x3fd896c90d904114              # double 0.38420320820388665
	.quad	0x3fefe467faaa064f              # double 0.99663161237567432
	.quad	0x3fbd4323c3c74ae0              # double 0.11430572061298561
	.quad	0x3fe1ba40dd4aa183              # double 0.55398600789071428
	.quad	0x3fe9b693a7dd9881              # double 0.80353720461131684
	.quad	0x3fdfd1c99117f8fc              # double 0.49717940491963453
	.quad	0x3fe0f70bc440b468              # double 0.53015697794547822
	.quad	0x3fe1bbd58e3dc50f              # double 0.55417897969724261
	.quad	0x3fefa71e55361716              # double 0.98915020602064163
	.quad	0x3fc9c177ed092698              # double 0.20121668886195176
	.quad	0x3fc130e1c19f263c              # double 0.13430425600226836
	.quad	0x3fe6d3711a90e9c1              # double 0.71331076801953242
	.quad	0x3fe3e8362698ddd8              # double 0.62209613359930938
	.quad	0x3fe9b6b3c06080ef              # double 0.80355250905634346
	.quad	0x3fc1a91dcaf51a50              # double 0.13797352228194137
	.quad	0x3f93ad22c7a776c0              # double 0.019215148387835113
	.quad	0x3fee0b6f728852e4              # double 0.93889591569549368
	.quad	0x3fe956ede8b19c0d              # double 0.79186149070744849
	.quad	0x3fd923079680afa2              # double 0.39276303956534708
	.quad	0x3fed44ca31ed7212              # double 0.91464719535321337
	.quad	0x3fe969562b949a15              # double 0.79410847198306789
	.quad	0x3fe68693d336e385              # double 0.70392791035475055
	.quad	0x3fcc3e5b232b26e0              # double 0.22065295426573694
	.quad	0x3fb83f92669fe160              # double 0.09472002988321071
	.quad	0x3fe4b8f629a8855e              # double 0.64757831703552049
	.quad	0x3fe466bf82748d3f              # double 0.63754249076411174
	.quad	0x3fe4418a1da70be1              # double 0.6330004290724639
	.quad	0x3fe2e92f9b6bb51b              # double 0.59096508365260847
	.quad	0x3feaa77455d8abf5              # double 0.8329412151991834
	.quad	0x3fcb1bbb35bede5c              # double 0.21178379177375717
	.quad	0x3f9c08237a1b3500              # double 0.027374796226287579
	.quad	0x3fc23817c1f842d8              # double 0.14233681651287244
	.quad	0x3f67a8772e433a00              # double 0.0028879478214556276
	.quad	0x3fcd0357159fd324              # double 0.22666443401217251
	.quad	0x3fccc380af29335c              # double 0.22471626808910627
	.quad	0x3f8b63b5d9b43300              # double 0.013373776155753969
	.quad	0x3fe851b38b2cdbb9              # double 0.75997330839788113
	.quad	0x3fea76ee6a3c4578              # double 0.82701798199757004
	.quad	0x3fad0a833ea134a0              # double 0.056720830340603046
	.quad	0x3fbf359b99123ce0              # double 0.12191174017992834
	.quad	0x3f914f47f6946640              # double 0.016903995919255843
	.quad	0x3fdd9cf8d34ca210              # double 0.46270580897046987
	.quad	0x3fe41cea6de9e996              # double 0.62852975337527783
	.quad	0x3fe57758368a438e              # double 0.6708184304462621
	.quad	0x3fb40008b1815658              # double 0.078125518165813701
	.quad	0x3fd7dc913e0eda6e              # double 0.37283736286500513
	.quad	0x3fcd916380e0c430              # double 0.23099941056128293
	.quad	0x3fcd9b077d17b554              # double 0.23129361732518794
	.quad	0x3fe5c6c7645ea1b3              # double 0.68051499942253313
	.quad	0x3fdceb4b41c99d24              # double 0.45186120438161681
	.quad	0x3fcfe465890e0f10              # double 0.24915761177191387
	.quad	0x3fc7f764b3b00880              # double 0.18723734639940304
	.quad	0x3fed7dc0dba19260              # double 0.92160075089175208
	.quad	0x3fd89ffaa953fef4              # double 0.38476435218761584
	.quad	0x3fc167d7b768f54c              # double 0.13598152595106183
	.quad	0x3fe555b0d5501cfd              # double 0.66671029722866104
	.quad	0x3fe1c881061592bc              # double 0.55572558582624465
	.quad	0x3fe491dbedf0b1db              # double 0.64280506584833164
	.quad	0x3fe4e69d86a59a32              # double 0.65315128610820339
	.quad	0x3fecfee33ff43092              # double 0.90611422053327062
	.quad	0x3feeb3ec43c0c82c              # double 0.95946324570673402
	.quad	0x3f86adbd86028180              # double 0.011073570873407546
	.quad	0x3fe9641219fc524a              # double 0.7934656627208565
	.quad	0x3fe10aeb0c02b0d3              # double 0.53258278222849709
	.quad	0x3fde25f8f8a251f2              # double 0.47106766014738277
	.quad	0x3fdd50c8251d20f4              # double 0.45805553078072525
	.quad	0x3fed6effb00d6569              # double 0.91979965577335776
	.quad	0x3fec6a4a8f210fc7              # double 0.88797500567351839
	.quad	0x3fd82bb814511564              # double 0.37766839965873644
	.quad	0x3fe06a38200b6efc              # double 0.51296621569369405
	.quad	0x3fcbea6313365028              # double 0.21809042394727496
	.quad	0x3fee82fe652e3bea              # double 0.95349044572674058
	.quad	0x3fe923f5c5bfa1c9              # double 0.78563965437666028
	.quad	0x3fea43673d77abec              # double 0.82072793965687429
	.quad	0x3fd9122c6d9d4346              # double 0.39173422531625979
	.quad	0x3feacae04ca8e3d3              # double 0.83726515743830487
	.quad	0x3fefa3518fd58417              # double 0.98868635265910398
	.quad	0x3f4b171288a0d400              # double 8.2672505346315095E-4
	.quad	0x3fe563208922b197              # double 0.66835047516137791
	.quad	0x3fd1b0d41746e946              # double 0.27641775391716228
	.quad	0x3fdffdd4554a4a0c              # double 0.49986751870270107
	.quad	0x3fc1a3632d848e08              # double 0.13779868814991425
	.quad	0x3fd774603fbf5bd8              # double 0.36647802567807508
	.quad	0x3faf0b6ed31a6510              # double 0.060634101170942256
	.quad	0x3fd7289743088ea6              # double 0.36185246988518782
	.quad	0x3fe286de5bf90a62              # double 0.57896345103683822
	.quad	0x3fdd1945268203f4              # double 0.45466736565145927
	.quad	0x3fccf9d94c5f7374              # double 0.22637478093283969
	.quad	0x3feacfb3593917fe              # double 0.83785407472964812
	.quad	0x3fe1ceaedc72a542              # double 0.55647986465661625
	.quad	0x3fe8e22e46cf8164              # double 0.77760995702923851
	.quad	0x3fd9caa28c5d262c              # double 0.40299285609634938
	.quad	0x3fed25bf432b071a              # double 0.91085780257000981
	.quad	0x3fc8c0502bb45f7c              # double 0.19336893209469597
	.quad	0x3fd13cb231c2816c              # double 0.26932959422449332
	.quad	0x3fab57211b8a3440              # double 0.053399119006919182
	.quad	0x3fc407951e8f146c              # double 0.15648139946111728
	.quad	0x3fd591db0be74fd4              # double 0.33702732241112909
	.quad	0x3fe3f4cfe7e714c3              # double 0.62363429349411381
	.quad	0x3f8ab1c03eb4d740              # double 0.013034345544479131
	.quad	0x3febd336eee4fd2c              # double 0.86953303011970239
	.quad	0x3fcbec1df5f38344              # double 0.21814322003685949
	.quad	0x3fdde58cc7efc53e              # double 0.46713561558779648
	.quad	0x3fe1cd7a35ca7b68              # double 0.55633268838924455
	.quad	0x3fcded4fde15e510              # double 0.23380468696613166
	.quad	0x3febdfcf6664d633              # double 0.87107057570273694
	.quad	0x3fee9c8641406eaa              # double 0.95660698646994047
	.quad	0x3fe6f804614c8a19              # double 0.71777552608211004
	.quad	0x3fe2562917203c52              # double 0.57301764027386981
	.quad	0x3fe9078103327994              # double 0.78216601013609698
	.quad	0x3fef8c694d57e37b              # double 0.98589005571476151
	.quad	0x3fe6501e206917b8              # double 0.69727999048404055
	.quad	0x3f8263c8638be3c0              # double 0.0089793830279506492
	.quad	0x3fe5b45ad4fb66ac              # double 0.67826596830419339
	.quad	0x3fb44ee16d43add8              # double 0.079328622032043383
	.quad	0x3fecb4cf280f8f36              # double 0.89707143616076368
	.quad	0x3fe835be49358d4b              # double 0.75656046198529603
	.quad	0x3fc8838d15adb9f0              # double 0.19151462133909503
	.quad	0x3fed9fc58d9c60c8              # double 0.92575338037843213
	.quad	0x3fdf10f79e1fb866              # double 0.48541059915340268
	.quad	0x3fc961b70083b2a0              # double 0.19829452061766961
	.quad	0x3fe171a0e35c0d0c              # double 0.54512066274802029
	.quad	0x3fa52c7d987d2770              # double 0.041355061401715854
	.quad	0x3fca7d10f8a68f5c              # double 0.20694172040122794
	.quad	0x3fd954b7577f1384              # double 0.39579566521234022
	.quad	0x3fd879c32d7638ea              # double 0.38243178786878096
	.quad	0x3fb70fd34395f130              # double 0.090085224152009812
	.quad	0x3fd1581eebe277f4              # double 0.27100346599206593
	.quad	0x3fefd27de38ffebf              # double 0.99444479413792652
	.quad	0x3fd82fa9886a8236              # double 0.37790907213096447
	.quad	0x3fe8ae0f0c67c010              # double 0.77124741003899722
	.quad	0x3fe83ebf603e5ee4              # double 0.75765961453995744
	.quad	0x3fd07b17a33f51cc              # double 0.25751295988200407
	.quad	0x3fc0e43e279d9dec              # double 0.13196541723594579
	.quad	0x3fe3647ecd14b9c7              # double 0.60601749472498845
	.quad	0x3fe659d090ca74e0              # double 0.69846370963537296
	.quad	0x3fee141b907a15e9              # double 0.93995454996246253
	.quad	0x3f8af5347dbe4c00              # double 0.01316300400484316
	.quad	0x3fc03cd64235246c              # double 0.12685659630577406
	.quad	0x3fe735f12d2e6e74              # double 0.72533472847449199
	.quad	0x3fe0a153ed36672e              # double 0.51969333963936548
	.quad	0x3fb3c4d74e3acd30              # double 0.077222305869146579
	.quad	0x3fd9f8f63a479f58              # double 0.40582042399772922
	.quad	0x3fb2137e7eccf708              # double 0.07060995670050485
	.quad	0x3fe84d193756a651              # double 0.75941143806739764
	.quad	0x3febe225092f7c69              # double 0.87135555070916582
	.quad	0x3fccdac09114be40              # double 0.22542578777346201
	.quad	0x3fec52fefe68adf5              # double 0.88513135613669525
	.quad	0x3fdeb13b0398d80e              # double 0.47956729270242782
	.quad	0x3fe30bfac64925e4              # double 0.59521235206301215
	.quad	0x3fec18c8a36b4db2              # double 0.87802535932353565
	.quad	0x3fdb206c8352ddec              # double 0.42385399651126821
	.quad	0x3fc57bfb97933c24              # double 0.1678461542237254
	.quad	0x3fe910c90888266c              # double 0.78329898516058227
	.quad	0x3fc7f3dad4d2a788              # double 0.18712935821286814
	.quad	0x3fcdff1e31d5f7d8              # double 0.23434808190717038
	.quad	0x3fdf41d44aac4b52              # double 0.48839289943969277
	.quad	0x3fc3c9826c708f80              # double 0.15458708090693207
	.quad	0x3feed5188c02dc07              # double 0.96351268144542323
	.quad	0x3feafd0d91c08117              # double 0.8433902594297561
	.quad	0x3fe015d637739ee3              # double 0.50266562300108963
	.quad	0x3feb186b8bd6c736              # double 0.84673096954632032
	.quad	0x3fdc0a2c80881920              # double 0.43812096168439219
	.quad	0x3fe2f31b6fb55792              # double 0.59217616861382028
	.quad	0x3fef01a63f4e5068              # double 0.96895134319721609
	.quad	0x3fe5827ffd6e2c29              # double 0.672180170994925
	.quad	0x3fea1c85cdb9469f              # double 0.81598177128235594
	.quad	0x3fe16066e7a96e5d              # double 0.54301781889393974
	.quad	0x3fde62cd37dabc6e              # double 0.47478037313971455
	.quad	0x3fe4755a70708854              # double 0.63932535134177693
	.quad	0x3fa9fe72fcebfcb0              # double 0.050769418119665288
	.quad	0x3fefdf4a9757dff9              # double 0.99600724753599856
	.quad	0x3fe30121c99cb144              # double 0.59388818147048328
	.quad	0x3fdafa3eb306d524              # double 0.42152373774600194
	.quad	0x3fe2241dc30a8f55              # double 0.56690872282022531
	.quad	0x3fd39a72f4ee4cc6              # double 0.30630182189015576
	.quad	0x3fc2d72a38cb2a40              # double 0.14719131253362328
	.quad	0x3feaaae5709fc324              # double 0.83336135861290872
	.quad	0x3fea0ecf7d1236b0              # double 0.81430792262991325
	.quad	0x3fc7937cf1b82294              # double 0.18418847849558928
	.quad	0x3fee3de86c04c7a3              # double 0.94505711648365709
	.quad	0x3fd86191992eddb2              # double 0.38095512351307115
	.quad	0x3fee48f0284d0768              # double 0.94640357848423395
	.quad	0x3fe85d1d118b51da              # double 0.7613664000187399
	.quad	0x3fde8501ead0a056              # double 0.47686813288828966
	.quad	0x3fdbca5b2b3c5adc              # double 0.43422583791963887
	.quad	0x3fe406ae7617f9a8              # double 0.62581561150709764
	.quad	0x3fed8a2f9e8c0558              # double 0.92311840978815507
	.quad	0x3fbd25a7c3b4f250              # double 0.11385582473753542
	.quad	0x3fc7079bc3fba144              # double 0.1799196917484186
	.quad	0x3fb9e42524f38ea0              # double 0.10113746788152378
	.quad	0x3fe515a4f1759b34              # double 0.65889212760962446
	.quad	0x3fb181efd9048a28              # double 0.0683889298275423
	.quad	0x3fe8dd476552e932              # double 0.77701158323114883
	.quad	0x3fedf1dc4dd15713              # double 0.93577399443413112
	.quad	0x3f9e7994e2a2a520              # double 0.029760671932909877
	.quad	0x3fd0e8c468297e2a              # double 0.2642069833000017
	.quad	0x3fdb396433b06fea              # double 0.42537789390348613
	.quad	0x3fd90fb6dae8fbae              # double 0.39158412340105542
	.quad	0x3fda02a00218ba4a              # double 0.40641021923776022
	.quad	0x3f887d09e1946240              # double 0.011957242199558071
	.quad	0x3fdd9a57c731b176              # double 0.46254534199285702
	.quad	0x3febb0348f392324              # double 0.86525943730621124
	.quad	0x3fedd2912b77c2e0              # double 0.9319539879780585
	.quad	0x3fc22b4fbdc268f8              # double 0.1419467617568626
	.quad	0x3fe9dad8bf2083b2              # double 0.80796468095296903
	.quad	0x3fb8c6e2d57ce668              # double 0.096784760590617247
	.quad	0x3fdacebf941ad088              # double 0.4188689180694003
	.quad	0x3feb5b2e1e36e0a7              # double 0.85488038922541854
	.quad	0x3fe256721d4815f5              # double 0.57305246085223749
	.quad	0x3fd4f01f237518d4              # double 0.32715586149823861
	.quad	0x3fd61a6346f1aec4              # double 0.34536058357364774
	.quad	0x3fad33281f4e46e0              # double 0.057030919858460427
	.quad	0x3fe43ff1d2895cb5              # double 0.63280573959754938
	.quad	0x3fec5bcbe18f1ab8              # double 0.88620561651699514
	.quad	0x3fd1006296e844d8              # double 0.26564850556412756
	.quad	0x3fd18ecf958d127e              # double 0.27434148411365544
	.quad	0x3fe4615f3c896fb5              # double 0.63688623260121935
	.quad	0x3fe4a84f11753ec5              # double 0.64554551515353664
	.quad	0x3fb1a7763050db40              # double 0.0689615123709304
	.quad	0x3fe53e429c81acdd              # double 0.66385012214359629
	.quad	0x3fda3fe27209826a              # double 0.41014920364799556
	.quad	0x3fea77b422e7a489              # double 0.82711226289133422
	.quad	0x3fc21c74e6f82cb8              # double 0.14149342801861109
	.quad	0x3fa129b18cb3c780              # double 0.033521221566743087
	.quad	0x3fdb52d230072934              # double 0.42692999544364629
	.quad	0x3fac009b639d9210              # double 0.054692130956741747
	.quad	0x3fe41119655b99ef              # double 0.62708730503510235
	.quad	0x3fecc50bcbefc6ca              # double 0.89905347663280932
	.quad	0x3fdde1efd549add8              # double 0.46691509083640659
	.quad	0x3fdeb173931f9c0e              # double 0.47958077781226016
	.quad	0x3fe306651b481376              # double 0.59453063324381961
	.quad	0x3fe965da35e2a7d1              # double 0.79368315243231724
	.quad	0x3fd307879a2ac2ba              # double 0.29733457618116754
	.quad	0x3fa8b99f652e6450              # double 0.048291188336584967
	.quad	0x3fec8092bd1de156              # double 0.89069497048243806
	.quad	0x3fb740890aff7160              # double 0.090828480896964603
	.quad	0x3fe1cd1cb903fa5e              # double 0.55628811012122603
	.quad	0x3fe627e1096a27da              # double 0.6923680480842862
	.quad	0x3fed2628c9a25dde              # double 0.91090812093437612
	.quad	0x3fe0bff4f2f3058e              # double 0.52343223048244325
	.quad	0x3fc1a51d39550458              # double 0.13785138415736031
	.quad	0x3fe661930d5da81f              # double 0.69941094027058515
	.quad	0x3fecc41fea07926c              # double 0.89894099911596248
	.quad	0x3fc49beeaad229f4              # double 0.1610086759649928
	.quad	0x3fc9f400dd12ae28              # double 0.20275889200762376
	.quad	0x3fc5a05a81fd1470              # double 0.16895610186671517
	.quad	0x3fb778b8744dd5d8              # double 0.091685799021284153
	.quad	0x3fe0ea9e814a4f22              # double 0.5286400342178903
	.quad	0x3fddeb28a267da4c              # double 0.46747794971398515
	.quad	0x3fdc8b375ad2367c              # double 0.44599708432438212
	.quad	0x3fbea8ced830fff8              # double 0.11976330545530789
	.quad	0x3f9a345cd3036700              # double 0.02559037244723239
	.quad	0x3fdc4c4acea013d0              # double 0.44215650728466205
	.quad	0x3feccae11c4a527d              # double 0.8997655441804252
	.quad	0x3fd367e9cc3cd4fc              # double 0.3032173628337913
	.quad	0x3fd30cb5a634c73a              # double 0.29765073042937085
	.quad	0x3fef64a7af499ac8              # double 0.98103698955386509
	.quad	0x3feb4913d1e22b57              # double 0.85267058365694026
	.quad	0x3fd45d607459761e              # double 0.31819926607372107
	.quad	0x3fa77e8020612880              # double 0.045886997177675859
	.quad	0x3fe20186a193d05f              # double 0.56268626745305628
	.quad	0x3fe47e13441ca713              # double 0.64039004614935136
	.quad	0x3febb8c06994c766              # double 0.86630268689462464
	.quad	0x3fe5e2c5ac84d5e8              # double 0.68393214888663767
	.quad	0x3fe6f009b8fc77ae              # double 0.71680151109807411
	.quad	0x3fe47c60a3fef62a              # double 0.64018280058343646
	.quad	0x3fd5fe3fbda7fdd0              # double 0.34364312668909935
	.quad	0x3fd767e2746ab0ea              # double 0.36571561211418546
	.quad	0x3fd332e5ab8b7340              # double 0.29998151543059137
	.quad	0x3faaf6afb4b4dbb0              # double 0.052663317498108042
	.quad	0x3fe7105a07414d25              # double 0.72074605385788415
	.quad	0x3fe10f975cd95080              # double 0.53315323004291315
	.quad	0x3feb910a8f0bbb0f              # double 0.86145523012769043
	.quad	0x3f8091a278d01f00              # double 0.008090276061934798
	.quad	0x3fd0f53bbd4d56ae              # double 0.26496785627873976
	.quad	0x3f9795c1ab5bd420              # double 0.023032213291077963
	.quad	0x3fc17b5484ad70d4              # double 0.13657623747247405
	.quad	0x3fdd980759a51ae8              # double 0.46240409616841172
	.quad	0x3f9dfaa13e712340              # double 0.02927638953795797
	.quad	0x3fe380a34f6aaaf1              # double 0.60945287238186385
	.quad	0x3fe93881c02b9e46              # double 0.78814780743864143
	.quad	0x3fea8f7e73e9a98b              # double 0.83001635207374258
	.quad	0x3fda7fbed73b392a              # double 0.41404696482358594
	.quad	0x3fa91e9f044b1430              # double 0.049061745905000342
	.quad	0x3fdb7f78cd0e4b0a              # double 0.42965526604636806
	.quad	0x3fc2592169d834ac              # double 0.14334504764739131
	.quad	0x3faa688934d97400              # double 0.051578796101900082
	.quad	0x3fe87c386dc31048              # double 0.76516362607845512
	.quad	0x3fdece2232bf1886              # double 0.48133139568052064
	.quad	0x3fed0d254888add1              # double 0.90785469214227466
	.quad	0x3fe1f3d000b9ee94              # double 0.56101226941923921
	.quad	0x3fe726fcda1259d0              # double 0.72350924102902958
	.quad	0x3fec97f1f169701c              # double 0.8935479846072698
	.quad	0x3fe0b294b92d4048              # double 0.52179943244301175
	.quad	0x3fe9bf0b2fe760e7              # double 0.80457076412406259
	.quad	0x3feaf95776df5e97              # double 0.84293721406261823
	.quad	0x3fe7a3bd73c0a6bf              # double 0.73873779876631562
	.quad	0x3fe1eca3f51ca789              # double 0.56013677476333712
	.quad	0x3fdb698c4a595d76              # double 0.42831713925030301
	.quad	0x3fbb836e4faf5a60              # double 0.10747422643121629
	.quad	0x3feaf75429a6a7c1              # double 0.842691499089817
	.quad	0x3fd170a40a4a5ac6              # double 0.2725000477306988
	.quad	0x3fa2eef760c3ed20              # double 0.036979418337035108
	.quad	0x3fb29589c2e104a8              # double 0.072594270780444448
	.quad	0x3fee794d7eb386cc              # double 0.95230746027319801
	.quad	0x3fe4fd521c5e73c1              # double 0.65592294255076677
	.quad	0x3fe25c14689fd577              # double 0.57374020037120388
	.quad	0x3fda5c76bfccd396              # double 0.41189354639510023
	.quad	0x3fd38872c815314e              # double 0.30520314730963072
	.quad	0x3fe469a2fa433b56              # double 0.6378950965825918
	.quad	0x3fcedadc5dcf567c              # double 0.24105410175859621
	.quad	0x3fe8400e89415c2a              # double 0.75781943137815699
	.quad	0x3fd3ab87dde4ee6c              # double 0.30734440488206505
	.quad	0x3fd53ea7a73fffe0              # double 0.33194915135390879
	.quad	0x3fe346436fe0933f              # double 0.60232707835221067
	.quad	0x3fe5124cf1fa51c3              # double 0.65848395596781761
	.quad	0x3fe78bc9461397f4              # double 0.73581374823402124
	.quad	0x3fb2221b5002a4b8              # double 0.070832926782389616
	.quad	0x3fd1e417c18eb81a              # double 0.27954667951678547
	.quad	0x3fcdfb8e6318121c              # double 0.23423938597274307
	.quad	0x3fee6ff6e9be4fe2              # double 0.95116754200944009
	.quad	0x3fe8a4f2b34f47fc              # double 0.77013525983261343
	.quad	0x3fcdcf9f7d071ae0              # double 0.23289865116949837
	.quad	0x3fc26a992e54bfc0              # double 0.14387812387712806
	.quad	0x3fbcd17a6db51ca0              # double 0.11257138422398549
	.quad	0x3fe38301bcaedaf2              # double 0.60974203922418568
	.quad	0x3fdbd399468ccb04              # double 0.43478996171613482
	.quad	0x3f9216fb793f4280              # double 0.017665795588813982
	.quad	0x3fdb1cf6f7159dc2              # double 0.42364286546077434
	.quad	0x3fe7c24885ae6a7c              # double 0.74246622190123857
	.quad	0x3fef03afcd8dd9a7              # double 0.96920004031453721
	.quad	0x3feb34a3f621fae1              # double 0.85017583916473083
	.quad	0x3fe684d64479a600              # double 0.70371545194683449
	.quad	0x3fd2003b14867c86              # double 0.28126408581187723
	.quad	0x3fddc645c751dcf6              # double 0.46522659745046668
	.quad	0x3fdebeb753cff000              # double 0.4803903883437215
	.quad	0x3feddeaf60337760              # double 0.93343323506608655
	.quad	0x3fe1b1cd16f1cd90              # double 0.55295423966747315
	.quad	0x3fe24a2e5f966847              # double 0.5715553156799239
	.quad	0x3fa4f1f098beb3f0              # double 0.040908354421254844
	.quad	0x3feae799c9fad3a6              # double 0.84077157448938489
	.quad	0x3fee66daf2b61eea              # double 0.95005557446071731
	.quad	0x3fec7d103b67a81a              # double 0.89026652910729642
	.quad	0x3fed53429a7ac1c5              # double 0.91641359493046848
	.quad	0x3fe38d31ad3be3a8              # double 0.61098560175661465
	.quad	0x3fd43d3da24f20c6              # double 0.31623783922669835
	.quad	0x3fe838448c062b4a              # double 0.7568686232419648
	.quad	0x3fdd283bcb495acc              # double 0.45558066227151239
	.quad	0x3fec32776af273fb              # double 0.8811604584512901
	.quad	0x3fc84be058e881b0              # double 0.18981556264135468
	.quad	0x3fdb8072ec92a90a              # double 0.42971490004369228
	.quad	0x3fe9693fb8ec71a7              # double 0.79409776800053045
	.quad	0x3fd014d975a29a1e              # double 0.25127254951294897
	.quad	0x3fe2b49c98e2ff25              # double 0.58454732762036044
	.quad	0x3fddcc9c378fc89c              # double 0.46561341691916325
	.quad	0x3fedfde7285649cd              # double 0.93724401357968079
	.quad	0x3fd95f284cd94f00              # double 0.39643294815799379
	.quad	0x3fe2936982b3e8bd              # double 0.58049464729199196
	.quad	0x3fe57a9baab3ca57              # double 0.67121680584234411
	.quad	0x3fe29838b17a2dbe              # double 0.58108172095801769
	.quad	0x3fea7c555be0c906              # double 0.82767742104468378
	.quad	0x3f82611b33dbf2c0              # double 0.0089742779923595028
	.quad	0x3fe1ef446f876c7e              # double 0.56045743735320719
	.quad	0x3fdc532f0339982e              # double 0.44257712664546289
	.quad	0x3fea63270732e1db              # double 0.82460357099540305
	.quad	0x3fe3a1bc15ac576d              # double 0.61349300606773982
	.quad	0x3fe8ea0547df5280              # double 0.77856697118347995
	.quad	0x3feed840bedaac0d              # double 0.96389806057175209
	.quad	0x3fc1b681f09320d4              # double 0.1383821892434357
	.quad	0x3fdb8f14cc8834b8              # double 0.43060798620065155
	.quad	0x3fd564fbecda6acc              # double 0.33428857927507916
	.quad	0x3fea738b3243a3ff              # double 0.82660445992689791
	.quad	0x3fe09873957723c4              # double 0.51860980217417607
	.quad	0x3feac79027a0d9fc              # double 0.83686073055179077
	.quad	0x3fe1801afd1afb62              # double 0.54688786921165566
	.quad	0x3fe758d5d41333ea              # double 0.72959414883518758
	.quad	0x3fe1c40338cc3666              # double 0.55517731755544442
	.quad	0x3fe9cc228c736d66              # double 0.80616881782354421
	.quad	0x3fd75de6d422fa48              # double 0.36510630337207717
	.quad	0x3fdf14b26cfe95e0              # double 0.48563824314109461
	.quad	0x3febe3a74e1fb5eb              # double 0.87153973825996667
	.quad	0x3fe17cd0787382f7              # double 0.54648612523678153
	.quad	0x3fe060c3bc893aa9              # double 0.51181208442161108
	.quad	0x3feb830399e0547b              # double 0.85974292806589803
	.quad	0x3fe782070ed94ba5              # double 0.73462250614317226
	.quad	0x3fce68000105f800              # double 0.23754882860151838
	.quad	0x3fe8f290294cd8c2              # double 0.77960975710336577
	.quad	0x3fe9e0f56ac75870              # double 0.80871077399457469
	.quad	0x3fe2cdf1312c4f50              # double 0.5876394234096356
	.quad	0x3fd576328fd9f234              # double 0.33533920333846656
	.quad	0x3fddf26ef6c92cec              # double 0.46792196369342665
	.quad	0x3feaae10a8e220d4              # double 0.83374817833921577
	.quad	0x3fe0f146f557d60f              # double 0.529452780900728
	.quad	0x3fef3ec5de582b1f              # double 0.97641271044389899
	.quad	0x3fea34638241ac79              # double 0.81889510575037072
	.quad	0x3fddcb9edc71c7e4              # double 0.46555301215914668
	.quad	0x3fe3a63eb0536e26              # double 0.61404356421138995
	.quad	0x3fdb0d9aa5ac7890              # double 0.4227053277881021
	.quad	0x3fd578fda81101c6              # double 0.33550969517457607
	.quad	0x3fdcf6a1b8e60334              # double 0.45255320602886973
	.quad	0x3f8e3fd8b5d6d240              # double 0.014770215081491789
	.quad	0x3fc2eb5a8c9aa40c              # double 0.14780742516930478
	.quad	0x3feb59ddb1020bd7              # double 0.85471996852754273
	.quad	0x3fe6948ec59698d1              # double 0.70563448516329619
	.quad	0x3fea5c67d470483e              # double 0.82377997867502706
	.quad	0x3fe6f141a16b98d6              # double 0.71695024039652355
	.quad	0x3fda93d0d6c0915c              # double 0.4152719590367917
	.quad	0x3fb1dd572c94ce40              # double 0.069783638366794243
	.quad	0x3fcf7649216b2968              # double 0.24579729205863576
	.quad	0x3fe6ba1afef8739d              # double 0.7102179508107046
	.quad	0x3fbfff3c583cc530              # double 0.1249883380339909
	.quad	0x3fe584e762b55cfd              # double 0.67247361449236076
	.quad	0x3feccb2517dbc9e9              # double 0.8997979608523653
	.quad	0x3fe0f835836cbdcc              # double 0.53029895466709709
	.quad	0x3fd45fe51126bd80              # double 0.31835295367178418
	.quad	0x3fe49f1e6338d261              # double 0.64442366961754882
	.quad	0x3fe278e8a866a304              # double 0.57725937739186906
	.quad	0x3febc302ad6f2ebd              # double 0.8675549876583869
	.quad	0x3fd5bf726463b7c6              # double 0.33980998805679652
	.quad	0x3fc5bdb2743675b4              # double 0.16985159563493613
	.quad	0x3fedf437bfde04f8              # double 0.93606173967432848
	.quad	0x3fec4e0ab3cd8b8e              # double 0.88452658765560144
	.quad	0x3fe5c301598e6eaf              # double 0.68005435458640828
	.quad	0x3fbda466399cf160              # double 0.11578978449410249
	.quad	0x3fdc8392c84e306a              # double 0.4455306011302641
	.quad	0x3fcba4d8bd123e40              # double 0.21596822006221039
	.quad	0x3fc6ac51aa6114e0              # double 0.17713375872896275
	.quad	0x3fe165bbc838c2b1              # double 0.54366864305310092
	.quad	0x3fa48915c9df0fa0              # double 0.040108376400467494
	.quad	0x3fe0b59bfd447464              # double 0.52216910806931738
	.quad	0x3fe8ebf04abd9161              # double 0.7788011035704977
	.quad	0x3fe1f2726c3ed1dc              # double 0.56084557668378521
	.quad	0x3fe4250e1d0fb754              # double 0.62952333141377403
	.quad	0x3fd9c984c4b152c0              # double 0.40292472084301423
	.quad	0x3fe72885efdcbb6d              # double 0.72369667862026932
	.quad	0x3fd27eeb6806e452              # double 0.28899655493620913
	.quad	0x3fccb467dd340148              # double 0.22425554562506478
	.quad	0x3fe0289e5d4746d0              # double 0.50495832651560058
	.quad	0x3fc7057006780d28              # double 0.17985344234339462
	.quad	0x3fb532e16d2dbde8              # double 0.082807625918341565
	.quad	0x3fd7b6fc40115ebe              # double 0.37054353958727038
	.quad	0x3fe3038ada61d2bb              # double 0.59418242123373177
	.quad	0x3fcbd7b6f3f54ab4              # double 0.21752058898944926
	.quad	0x3fe15ed0c49ec56d              # double 0.54282415773756798
	.quad	0x3fe9fbf0e6bd885a              # double 0.81200451914288441
	.quad	0x3fecaa93c231a440              # double 0.895822409901605
	.quad	0x3fe388c667fd26e2              # double 0.61044616995169698
	.quad	0x3fef3de89962363a              # double 0.97630720098249602
	.quad	0x3fe52fbed37473d9              # double 0.66207829761298875
	.quad	0x3fb04ecc7b315ca8              # double 0.063702373577472771
	.quad	0x3fda8261dbe19694              # double 0.41420790169500177
	.quad	0x3fc53d303d270928              # double 0.16592982278786761
	.quad	0x3fed3b2a0365a137              # double 0.9134721819255337
	.quad	0x3fc7b834d271c860              # double 0.18530903125389653
	.quad	0x3fda5797cfe1cf0e              # double 0.41159625340445494
	.quad	0x3fe27fba32f159f7              # double 0.57809171628724598
	.quad	0x3fe8e42f2670deec              # double 0.77785451419819429
	.quad	0x3fc69db0fab47e2c              # double 0.17668735734422236
	.quad	0x3fe548407b2941d7              # double 0.6650698094836639
	.quad	0x3fe2b67836fe1868              # double 0.58477411976560933
	.quad	0x3fe84a7f2a5e7953              # double 0.75909384036257632
	.quad	0x3f621cc9018b7b00              # double 0.0022109914683449139
	.quad	0x3fd370e27ac9db0e              # double 0.30376493445457775
	.quad	0x3feb4fa69e8c2834              # double 0.853473004973472
	.quad	0x3fe1fa4bd038400e              # double 0.56180372875133044
	.quad	0x3fe83cbcc4a35ad8              # double 0.75741423040275446
	.quad	0x3fe2f8a2e239ae27              # double 0.59285110649711192
	.quad	0x3fe5a6276aea8d77              # double 0.67653246767115049
	.quad	0x3f8d8e7b35b10300              # double 0.014431917739899713
	.quad	0x3fc51452d5b152f0              # double 0.16468272623264779
	.quad	0x3fdde71cbd120a60              # double 0.4672309728995625
	.quad	0x3fd4f01da5f74404              # double 0.32715550620656608
	.quad	0x3fc4ded0ce1e2aa8              # double 0.16304979385707452
	.quad	0x3fb4c7f8855d67c8              # double 0.081176312026769115
	.quad	0x3fee997f9608e3f0              # double 0.95623759559305022
	.quad	0x3fd39bf1934300cc              # double 0.30639304524448785
	.quad	0x3fe4a56bbc11c2e3              # double 0.64519297344494608
	.quad	0x3fe0461e72bcc7d2              # double 0.50855944070485237
	.quad	0x3fd757f7262dcdd2              # double 0.36474398353967985
	.quad	0x3fead9370b7ea777              # double 0.83901550526682811
	.quad	0x3fe72817f67ac19f              # double 0.72364423885851525
	.quad	0x3feccba524301226              # double 0.89985901897359066
	.quad	0x3fe8a6f3ec77806c              # double 0.7703799837581875
	.quad	0x3fed9f73b64b25c8              # double 0.92571435550888115
	.quad	0x3fe4d44118199ce0              # double 0.65090994555512438
	.quad	0x3fe5dd5569452e87              # double 0.6832682663020514
	.quad	0x3fcd35bd74fe61c8              # double 0.22820251667577751
	.quad	0x3fe9b8efbb570eb8              # double 0.8038252505288801
	.quad	0x3fe61088bf4634ed              # double 0.6895183311295604
	.quad	0x3fe6c6d29a0d1dbc              # double 0.71177034462100819
	.quad	0x3fcc788cd5801cb4              # double 0.2224288980944259
	.quad	0x3fc7e3ba83c7288c              # double 0.18663722452612708
	.quad	0x3fc78cfea183cab8              # double 0.18399031530824117
	.quad	0x3feef5d5b41b7670              # double 0.96750912835314118
	.quad	0x3fce6c3356b342f8              # double 0.23767701848421274
	.quad	0x3fdf2d27c6341778              # double 0.48713106494721314
	.quad	0x3fa2a6322bcb3070              # double 0.036424224706565478
	.quad	0x3fed37d676cc5795              # double 0.91306613161826766
	.quad	0x3fec1f8ff65f242f              # double 0.87885282630407413
	.quad	0x3fec89a4c27400a2              # double 0.89180219630363333
	.quad	0x3fe7e20df830a83f              # double 0.74634455179808146
	.quad	0x3feb769e983316d5              # double 0.85822992063978154
	.quad	0x3fc72fdef351e4bc              # double 0.18114840393881149
	.quad	0x3fc6b88b99217868              # double 0.1775068757733067
	.quad	0x3fe50aa707e6edda              # double 0.65755034964916637
	.quad	0x3f4b3dd82b415400              # double 8.3134703755638473E-4
	.quad	0x3fd6515f5dad7f6a              # double 0.34871658466544508
	.quad	0x3f998031c449cba0              # double 0.024903085332379171
	.quad	0x3fe257416b9c1f49              # double 0.57315131204175274
	.quad	0x3fd5b362cf4e3c22              # double 0.33907385105789178
	.quad	0x3fe2b76d938bd8d0              # double 0.58489111726410137
	.quad	0x3fc6426040678960              # double 0.17390063423870128
	.quad	0x3fbaba645706e710              # double 0.1044066154926464
	.quad	0x3fd9bec204e23b6a              # double 0.40226793744016354
	.quad	0x3fbd8617e5093820              # double 0.11532735196780708
	.quad	0x3fe03c1be21f1900              # double 0.50733751453734044
	.quad	0x3fc1ead7e9785c40              # double 0.13997935199651756
	.quad	0x3fe2b75828aba9da              # double 0.58488090461224407
	.quad	0x3fe8b99415bd8575              # double 0.77265362020641126
	.quad	0x3fe128a43086fe6a              # double 0.53621110418312168
	.quad	0x3fda3f0ffa2d44d8              # double 0.41009902411776755
	.quad	0x3feee653797de3de              # double 0.96561597565516499
	.quad	0x3f9e08347d8d59e0              # double 0.029328174746604208
	.quad	0x3fbee85df60ae128              # double 0.12073313958069731
	.quad	0x3fef261b1f65ae32              # double 0.97340160496009376
	.quad	0x3febcc28aebdae1c              # double 0.86867174271668856
	.quad	0x3fe439fe194db9fb              # double 0.63207917158234694
	.quad	0x3fea79be323e05cb              # double 0.82736120045609007
	.quad	0x3f98ccef265cc8a0              # double 0.024219261852700513
	.quad	0x3fef84ec74c018d2              # double 0.98497603228386255
	.quad	0x3fe554c9a3f327cb              # double 0.66660005589914684
	.quad	0x3fefcfa911d36605              # double 0.99409917337033049
	.quad	0x3fc3b3366872a284              # double 0.15390663242330416
	.quad	0x3fe91abe6114a809              # double 0.78451460801193307
	.quad	0x3fd67e59269597e6              # double 0.35146168487551532
	.quad	0x3fe5bf2b395a6c24              # double 0.67958604051398597
	.quad	0x3fedd3276c2fa9a1              # double 0.93202563409913719
	.quad	0x3fe7cc5fc075e985              # double 0.74369800176582201
	.quad	0x3fe40d609280a3ca              # double 0.62663296331185703
	.quad	0x3fe18e7aad2c5d9f              # double 0.5486424810687146
	.quad	0x3fe4a524cbac385e              # double 0.64515914707022737
	.quad	0x3fe6bc1fe4678cf5              # double 0.7104644261384282
	.quad	0x3fd2e6f33aa6161c              # double 0.29534607627314968
	.quad	0x3fe0958390d834d5              # double 0.51825121202423452
	.quad	0x3fcb2740addeee84              # double 0.21213539590631936
	.quad	0x3f9e16ea23ba11c0              # double 0.029384287291138511
	.quad	0x3fc40aec9db039f0              # double 0.1565833826029599
	.quad	0x3fc90cd54cc9a91c              # double 0.19570413827325062
	.quad	0x3fe699bc8e76843c              # double 0.7062666685561747
	.quad	0x3fcaf4bf4ab78854              # double 0.21059409282958319
	.quad	0x3fa9d1f8234bc3a0              # double 0.050430063541973214
	.quad	0x3fc10679f341fd7c              # double 0.13301014306851389
	.quad	0x3fe7c8bc215bd28c              # double 0.74325377002112836
	.quad	0x3fc7e513d9a5c460              # double 0.18667839171715439
	.quad	0x3fe696df4c06c0b8              # double 0.70591702317144378
	.quad	0x3fefd9e2a84044c8              # double 0.99534733640225514
	.quad	0x3fe47bc14af57211              # double 0.64010681763062582
	.quad	0x3feecf3ee84f895e              # double 0.96279855130368808
	.quad	0x3fec7d0e7885f513              # double 0.89026568927480054
	.quad	0x3feeb97933138809              # double 0.96014080024565473
	.quad	0x3fa91c52f5d9a0b0              # double 0.049044220458030252
	.quad	0x3fc5ef2729d06e24              # double 0.17136086980541265
	.quad	0x3fe412724af2be65              # double 0.62725176466296928
	.quad	0x3fbf931749e25790              # double 0.12333818010151121
	.quad	0x3fc3f8c192e8d850              # double 0.15602893517797378
	.quad	0x3fe44c375bcdf1b0              # double 0.63430374079285023
	.quad	0x3fc1caf60943a944              # double 0.13900638058050607
	.quad	0x3fc86104719637f8              # double 0.19046073480825476
	.quad	0x3fe54a2dd192cee3              # double 0.66530505115812522
	.quad	0x3fda76557bba285a              # double 0.4134725292466378
	.quad	0x3fd9456c3710cf74              # double 0.39486222627169032
	.quad	0x3fe345e9f7ff1ab8              # double 0.60228441654984177
	.quad	0x3fdd91125600f5c0              # double 0.46197946928790756
	.quad	0x3fcbd2b3df664c28              # double 0.2173676338976247
	.quad	0x3fe5ebd44c1bdba5              # double 0.68503775467876393
	.quad	0x3fe74cf688246a87              # double 0.72814489927562043
	.quad	0x3fea39158a57b460              # double 0.81946827907598773
	.quad	0x3fe0a74e57c34e05              # double 0.52042309895699701
	.quad	0x3fe3c38ebcf6c4fd              # double 0.61762177378673722
	.quad	0x3feebed3ec40d644              # double 0.96079441207138716
	.quad	0x3fe1124ed0f89653              # double 0.53348484816224084
	.quad	0x3fe45ac25ae3653f              # double 0.6360790038262748
	.quad	0x3fe818a4a981538e              # double 0.75300820452194883
	.quad	0x3fc50eb6eed8d304              # double 0.16451155340623569
	.quad	0x3fd9a5dd7a0303ca              # double 0.40074860491955333
	.quad	0x3fe94341a8f7acbe              # double 0.78946002007923943
	.quad	0x3fec8f6914e8c4bf              # double 0.89250616153562834
	.quad	0x3fe1b4082ddfac54              # double 0.55322655639373375
	.quad	0x3fdddffabc0f09ce              # double 0.46679561963187843
	.quad	0x3fbf6a55ded21530              # double 0.12271629991490296
	.quad	0x3fd3ffb0c095362a              # double 0.31248110587043476
	.quad	0x3febbe522aaeef8c              # double 0.86698253952589388
	.quad	0x3fe6a6c1664eda6b              # double 0.70785589201007093
	.quad	0x3fd4630e10e6abf4              # double 0.31854583406919734
	.quad	0x3fe5b49c038ed288              # double 0.67829704947378477
	.quad	0x3fef0c0dc728e600              # double 0.97022141359701663
	.quad	0x3fd576064d7c392c              # double 0.33532865111273469
	.quad	0x3fe1ed8ae2ca1e2d              # double 0.56024689001873684
	.quad	0x3fe06a44c736676d              # double 0.51297224911398376
	.quad	0x3fdedbaa7fd8a780              # double 0.48215734944334798
	.quad	0x3fed68247d7d9050              # double 0.91896271238193528
	.quad	0x3f99e042c161a060              # double 0.025269549420415038
	.quad	0x3fdcef0c30870c6c              # double 0.45209030856148646
	.quad	0x3fdd774c6b570154              # double 0.46040640337380023
	.quad	0x3fed532f63f4043e              # double 0.91640443346125955
	.quad	0x3fe23cd3fb1adbce              # double 0.56992529910973544
	.quad	0x3fefecc1b0f49cf2              # double 0.99765095292687378
	.quad	0x3fa5b0bf25e012b0              # double 0.04236409509033956
	.quad	0x3fea1dedafa814f6              # double 0.81615337665485188
	.quad	0x3fdde320bdcab0a6              # double 0.4669877866206299
	.quad	0x3f9c1c66364c0580              # double 0.027452084602378246
	.quad	0x3fe02b52ec8c9fe5              # double 0.50528856469190642
	.quad	0x3fde8cb83c0edfd0              # double 0.47733884682702143
	.quad	0x3fe2ba0f412076ca              # double 0.58521235199051458
	.quad	0x3f748db0f38ac700              # double 0.0050179397737097897
	.quad	0x3fecbdec652ae478              # double 0.8981840110710797
	.quad	0x3fe179ea2e14ac92              # double 0.54613217353962029
	.quad	0x3fe619b71325e47c              # double 0.69063905467841336
	.quad	0x3fea79e04c9b1aeb              # double 0.82737746202550733
	.quad	0x3fd1c535fc14ebfa              # double 0.27766179673534419
	.quad	0x3fb723a49269e0f0              # double 0.090387616868500719
	.quad	0x3fe8bfedbde592f8              # double 0.77342879380429874
	.quad	0x3fd5961ade13f368              # double 0.33728667914674881
	.quad	0x3fcec4e5f6a1a618              # double 0.24038385908652127
	.quad	0x3fdd7a7a52e5e124              # double 0.4606004533338981
	.quad	0x3fe6b13b80625bdc              # double 0.70913481783906773
	.quad	0x3fe4ee236fbe7e46              # double 0.65406963181516953
	.quad	0x3fdb233be4bf54f0              # double 0.42402551020252499
	.quad	0x3fed69a36b361119              # double 0.91914530696570573
	.quad	0x3fdf3a2a144b94fc              # double 0.48792507154423936
	.quad	0x3fcf569429add67c              # double 0.24482967410192547
	.quad	0x3fe61bca4d67f01c              # double 0.69089236372338148
	.quad	0x3fd4e781f62ec024              # double 0.32663010636588496
	.quad	0x3fca2013a0635484              # double 0.2041039021629879
	.quad	0x3fe8cf30ef58794a              # double 0.77529188868701593
	.quad	0x3f73d7a52e646e00              # double 0.0048443272010234573
	.quad	0x3fc3b51fdc79b434              # double 0.15396497979546242
	.quad	0x3feca5abc487acd5              # double 0.89522350678216844
	.quad	0x3fe79a444b56e845              # double 0.73758139338247786
	.quad	0x3fe8228f123cdcaa              # double 0.75421861230906484
	.quad	0x3f95f50f8cd0b5a0              # double 0.0214426450440236
	.quad	0x3fe8b92ff8808639              # double 0.77260588203006997
	.quad	0x3fc60212c1d4c4e0              # double 0.171938271183115
	.quad	0x3fe2823615b732aa              # double 0.57839493028003131
	.quad	0x3fc7b34e74d1f2b8              # double 0.18515949920756269
	.quad	0x3fef2de93f025393              # double 0.97435438448393296
	.quad	0x3fe6325d5934872a              # double 0.69364802763832256
	.quad	0x3fd73679ce1969f2              # double 0.3626999390304767
	.quad	0x3fee34cb2217541e              # double 0.94394451769278809
	.quad	0x3fed8f18514ce9d9              # double 0.92371765021317309
	.quad	0x3fd9f511aabe32ca              # double 0.40558282541387014
	.quad	0x3fef65b7639ad825              # double 0.98116654829096161
	.quad	0x3f9c3e973de28c20              # double 0.027582514907987243
	.quad	0x3fe44a192750c36c              # double 0.63404519728474673
	.quad	0x3fcfe2fb77ab1178              # double 0.24911444991279175
	.quad	0x3fec4199b5bd0ff1              # double 0.88300786491208616
	.quad	0x3fe9dc1aa129561d              # double 0.80811816670274406
	.quad	0x3fea13018914fedf              # double 0.81482006810980667
	.quad	0x3fdb4c53591d2e50              # double 0.4265335436109341
	.quad	0x3fd784377df3e3a8              # double 0.36744487094943645
	.quad	0x3fc5884f09713b40              # double 0.1682223125557929
	.quad	0x3fe585e983a1eb99              # double 0.67259669980500114
	.quad	0x3fe7de7fb232e00b              # double 0.74591049961509392
	.quad	0x3fee64830e78a04f              # double 0.94976952387242786
	.quad	0x3f93e63918841580              # double 0.019432918664298082
	.quad	0x3fda0fa1fa3cc3e8              # double 0.40720414578669173
	.quad	0x3fd259dbb4c42510              # double 0.28673451092670721
	.quad	0x3fdce1ad9e8b153c              # double 0.45127430422538217
	.quad	0x3f95f352f9439fc0              # double 0.021436020339848261
	.quad	0x3fc0bf7e0cb3c038              # double 0.13084388370725875
	.quad	0x3fdbf8be993ac0d6              # double 0.43705716098612635
	.quad	0x3fd6bacb4cf5d154              # double 0.35515100970885283
	.quad	0x3fdc2381f4ace5ce              # double 0.43966721433716038
	.quad	0x3fedae4153dd2339              # double 0.92752138499881831
	.quad	0x3fcff8514c409144              # double 0.24976555083515894
	.quad	0x3fdb815e3f6d3e7a              # double 0.42977100557343528
	.quad	0x3fe981814b071daf              # double 0.79705872205606976
	.quad	0x3fe4015bf9b4cb16              # double 0.62516592760798306
	.quad	0x3fe8f44b883a0e73              # double 0.77982117277902174
	.quad	0x3f5443c801616200              # double 0.0012368634393365996
	.quad	0x3fcb186917c79e28              # double 0.2116824499237151
	.quad	0x3fd2b3e7fe28fde8              # double 0.29223060436558379
	.quad	0x3fc966dd3b758290              # double 0.19845166590950614
	.quad	0x3f8359588cff1500              # double 0.0094477575329485752
	.quad	0x3fd2a462d161e1a8              # double 0.29128332564826076
	.quad	0x3fde11391666b7ae              # double 0.46980120837803951
	.quad	0x3fea15f68a0bf76e              # double 0.81518103563551647
	.quad	0x3fe9629e8bac567e              # double 0.7932884910575948
	.quad	0x3fd2a4a41e152d88              # double 0.29129889428869449
	.quad	0x3fd5f2455b5cc22a              # double 0.34291204378226559
	.quad	0x3fc16f3afaed33b8              # double 0.13620698215745874
	.quad	0x3fe526ced00eb6e5              # double 0.66098728786684247
	.quad	0x3fc0491013636664              # double 0.12722969958012975
	.quad	0x3feb00ddf3740390              # double 0.84385583447884649
	.quad	0x3fdb65bb562174d0              # double 0.42808421527099672
	.quad	0x3fd95d056a787d2c              # double 0.39630256078267467
	.quad	0x3feb27ece51df8e0              # double 0.84862370252065133
	.quad	0x3fcaadf6d61ded50              # double 0.20843396620680688
	.quad	0x3fb4b09fd8d82250              # double 0.080820074501511074
	.quad	0x3fe1e25b6b3ca587              # double 0.55888148255068948
	.quad	0x3fdba8ce3ba585a0              # double 0.43217807602749225
	.quad	0x3fbbfe025a954708              # double 0.10934462272168954
	.quad	0x3fe45c6d9e5d87fa              # double 0.63628273897870646
	.quad	0x3fe789065f1ffffa              # double 0.73547667101956837
	.quad	0x3fef28839c8be619              # double 0.97369556975826576
	.quad	0x3fdcc2ee41059bb4              # double 0.44939762449069609
	.quad	0x3fee38df5d9b883c              # double 0.94444244654392361
	.quad	0x3fe5bccb02b09065              # double 0.67929602170307801
	.quad	0x3fe5cbef6c600778              # double 0.68114443938269087
	.quad	0x3fe66d8f3722b6ee              # double 0.70087395447418799
	.quad	0x3fd590f0c7391800              # double 0.33697146849988258
	.quad	0x3fd022baad931c7a              # double 0.25211970282220586
	.quad	0x3fdfb07045e976fa              # double 0.49514395549145684
	.quad	0x3fdbafc435168084              # double 0.43260293182721221
	.quad	0x3fe39e81f9529af7              # double 0.61309908576808325
	.quad	0x3fd733c3026a1df2              # double 0.36253428684037126
	.quad	0x3fee9b0d1e01ffc5              # double 0.95642715321445648
	.quad	0x3fd0b2687b224d0c              # double 0.26088916802218942
	.quad	0x3fd7dd6d1c7c75ac              # double 0.37288978368618575
	.quad	0x3fcad2b517799c80              # double 0.20955527921907802
	.quad	0x3fda14371dbf4fe2              # double 0.4074838438511944
	.quad	0x3fe818a05ec6ea82              # double 0.75300615798126125
	.quad	0x3fe35b710191482e              # double 0.60491228395608743
	.quad	0x3fded822cc3b9ece              # double 0.48194189018839217
	.quad	0x3fdb80167b7de9ba              # double 0.42969286021948572
	.quad	0x3fbf83fdc02f83f8              # double 0.12310777608901435
	.quad	0x3fe21bb3ebe843c3              # double 0.5658816917003765
	.quad	0x3fe3ea35c03b27c2              # double 0.6223400835526649
	.quad	0x3fe1edac27671980              # double 0.56026275344702015
	.quad	0x3fe6ea281f713558              # double 0.71608358517702708
	.quad	0x3fe8093f3aa3ac02              # double 0.7511287827777553
	.quad	0x3fd70f7490e5a01c              # double 0.36031831884474896
	.quad	0x3fece44be293e5b0              # double 0.90286821607076284
	.quad	0x3fe5a236c298bf21              # double 0.67605150229607969
	.quad	0x3feedd0efb07efe3              # double 0.96448468236439699
	.quad	0x3fdedda6c47f19d4              # double 0.48227853001699583
	.quad	0x3fa7a1ca95797dd0              # double 0.046156244989784434
	.quad	0x3feba6768dfd8eef              # double 0.8640702031375137
	.quad	0x3fb9063e70b2ffc8              # double 0.097751524462181938
	.quad	0x3fd4958cb9e98b0a              # double 0.32162779002662545
	.quad	0x3fe9af3e4a6a49f7              # double 0.80264200720040335
	.quad	0x3fc77c594e23ea44              # double 0.18348232570117962
	.quad	0x3fc12d10667e5720              # double 0.13418774609152084
	.quad	0x3fee62cbe4ac7cb5              # double 0.94956011450621836
	.quad	0x3fe774a12f6ffdf7              # double 0.73298701539164213
	.quad	0x3fcf0326c3f20700              # double 0.24228367393157413
	.quad	0x3facb362d33d5190              # double 0.056056106840205122
	.quad	0x3fc07bf469a4f788              # double 0.12878279837053364
	.quad	0x3fedd56e3ea86393              # double 0.93230354535909254
	.quad	0x3feacc87676e9053              # double 0.83746690942326507
	.quad	0x3fe16f0990c82453              # double 0.54480436589904924
	.quad	0x3fe85e6c6fcad06e              # double 0.76152631601736487
	.quad	0x3fb0916789a46e50              # double 0.064718695739821586
	.quad	0x3fee19b338eed021              # double 0.94063721770954001
	.quad	0x3fe1a2c724c38301              # double 0.55112034969724288
	.quad	0x3fc960156b1bd1c0              # double 0.19824474077144139
	.quad	0x3fe0773a725b0a49              # double 0.51455423674662726
	.quad	0x3fe29c2c832849c9              # double 0.58156419388461089
	.quad	0x3fe1d0d5b77dafd3              # double 0.5567425330932515
	.quad	0x3fe8e05e3c03f320              # double 0.77738868448031794
	.quad	0x3fd5b7f91eea25da              # double 0.33935382861144847
	.quad	0x3fd9f7b0b023b938              # double 0.40574280930640638
	.quad	0x3fe4509f0650d404              # double 0.63484145387212765
	.quad	0x3febd6bb68559bce              # double 0.86996240976156414
	.quad	0x3fe821a09fbf52db              # double 0.75410491181045403
	.quad	0x3fee9d185164b3b2              # double 0.95667663476125697
	.quad	0x3fad3dbf8d5367e0              # double 0.057111726762471227
	.quad	0x3fdb5d442ea1daa6              # double 0.42756752542428911
	.quad	0x3fee4a3b4d03c623              # double 0.94656147996846973
	.quad	0x3f9253d828e221a0              # double 0.017897965903587498
	.quad	0x3fd04f77b7109892              # double 0.25485031964707006
	.quad	0x3fc72cf15cc01208              # double 0.18105904606649426
	.quad	0x3fead7f14b3cb258              # double 0.83886017508263944
	.quad	0x3fe8fa620d2de928              # double 0.78056433271493564
	.quad	0x3fdaef606ef82764              # double 0.42086039387560548
	.quad	0x3fe902552f9d3de3              # double 0.78153476047185355
	.quad	0x3fe6cffe3c6fcbf4              # double 0.71288978389782054
	.quad	0x3fb0e86f790ce310              # double 0.066046683362298575
	.quad	0x3fd9a4fffdff19fc              # double 0.40069579891533613
	.quad	0x3fc5aac5d543f1e4              # double 0.16927407182073673
	.quad	0x3fca64652b0674cc              # double 0.20618881798592381
	.quad	0x3fe6c33461f9d9a4              # double 0.7113286889642052
	.quad	0x3fdf73a1e1b8e80e              # double 0.49143263858025044
	.quad	0x3fed8cc33c2db938              # double 0.92343293908724089
	.quad	0x3fd6ce1d6f609db8              # double 0.35633026005458701
	.quad	0x3fa2ff5a10b91fa0              # double 0.037104429761313229
	.quad	0x3fe5a90120c6068f              # double 0.67688042069512899
	.quad	0x3fd8c262c4e0d66e              # double 0.38686436869043106
	.quad	0x3fbcfcd354dc72f8              # double 0.11323281118206896
	.quad	0x3fe88aab4e79f2bb              # double 0.76692738845266406
	.quad	0x3fcef30651aef9ec              # double 0.24179152477695653
	.quad	0x3fec08d876c869c7              # double 0.87607978057649738
	.quad	0x3fec09ad6bd43e4a              # double 0.87618132648817348
	.quad	0x3fed3ef159827f33              # double 0.91393344385503494
	.quad	0x3fb24412ae4c4c40              # double 0.071351211121780445
	.quad	0x3fec73b969fb7845              # double 0.88912649821919187
	.quad	0x3fec6862149532a8              # double 0.88774208087996431
	.quad	0x3fe17054d4aa8f90              # double 0.54496232544305379
	.quad	0x3fe6482922d25a25              # double 0.69630867768393456
	.quad	0x3fd7f4520e8a6806              # double 0.37428714199052171
	.quad	0x3fcaf3f69487a0dc              # double 0.21057016613418156
	.quad	0x3fed79f333ce5945              # double 0.92113647573823043
	.quad	0x3fe23046c5a14d30              # double 0.56839312171579159
	.quad	0x3fe45ed62ff02ee3              # double 0.63657674181873991
	.quad	0x3fe393c0097c204a              # double 0.6117859063388178
	.quad	0x3fd8e249d5f25c30              # double 0.38881154912218374
	.quad	0x3fe4fca02384f2a5              # double 0.6558380788552155
	.quad	0x3fde72e0914996a6              # double 0.47576154888370537
	.quad	0x3fd3f7ba4963a1b4              # double 0.31199509779846868
	.quad	0x3fd30235232d3ffa              # double 0.2970097392581007
	.quad	0x3fc78b248b67f02c              # double 0.1839337998097802
	.quad	0x3fb721b2f3651380              # double 0.09035795633560717
	.quad	0x3fe43498b33cdd5f              # double 0.63142046935437779
	.quad	0x3fd75fea8173ae50              # double 0.36522925035271658
	.quad	0x3fdab0e500802cb8              # double 0.41704678582091104
	.quad	0x3fc46315e9f5b32c              # double 0.15927385257546101
	.quad	0x3fb9d4b9c5877670              # double 0.10090218613137281
	.quad	0x3fca4042ebff4f0c              # double 0.20508610270791683
	.quad	0x3fc6efb601b51fd0              # double 0.17919039805769765
	.quad	0x3fe7d32543cf9980              # double 0.74452460522006447
	.quad	0x3fdffbe6240e74c4              # double 0.49974969407214709
	.quad	0x3fd0cb3f024b04f6              # double 0.26240515922479746
	.quad	0x3feaa2c2feea9a18              # double 0.832368371852513
	.quad	0x3fb30a57ac040270              # double 0.074376563545237806
	.quad	0x3fe2ebcc735118b9              # double 0.59128401301202083
	.quad	0x3fd2143d3d2777d8              # double 0.2824853036125865
	.quad	0x3fd34d50f071e176              # double 0.30159400444929163
	.quad	0x3fb2de79f1d48810              # double 0.073707219639374211
	.quad	0x3fe897d83d3699d9              # double 0.7685357280323003
	.quad	0x3fb6a19390d49790              # double 0.088402960642808503
	.quad	0x3feb8432355b4694              # double 0.85988722249222115
	.quad	0x3fda04ddafa58862              # double 0.40654699471463662
	.quad	0x3fd89b7dadc09772              # double 0.3844904133605872
	.quad	0x3fe3e937db2284e8              # double 0.62221901702664884
	.quad	0x3fed9bf9a8e197d5              # double 0.92528994545568344
	.quad	0x3febe0abbdac7f2f              # double 0.87117564244906542
	.quad	0x3fe925bdaf00e090              # double 0.78585704975468396
	.quad	0x3fb6043b25e71500              # double 0.086002060655193446
	.quad	0x3fdd06bd22ea4b9c              # double 0.45353630456627925
	.quad	0x3fd21bc52f5e86c6              # double 0.28294496179487927
	.quad	0x3fb2651ac455a050              # double 0.07185523312875941
	.quad	0x3faeeb9333927fd0              # double 0.060391044660036308
	.quad	0x3fe46f66306aa117              # double 0.63859853226043384
	.quad	0x3fe0780dc8f5fa41              # double 0.51465501070180875
	.quad	0x3feca9d0e592e680              # double 0.89572949255598644
	.quad	0x3feb74aefe9ce0eb              # double 0.85799360016883719
	.quad	0x3fdbe07cef2e29aa              # double 0.43557666165784303
	.quad	0x3fe462f25d8d38c8              # double 0.63707845947080788
	.quad	0x3fecefc69cb425cb              # double 0.90426951032821401
	.quad	0x3fd2b6c565540574              # double 0.29240546126683076
	.quad	0x3fde5c5042f71ab2              # double 0.47438437022757818
	.quad	0x3fec2e0cdcab1743              # double 0.88062136744768116
	.quad	0x3fc7a2274ba4da00              # double 0.18463603204300227
	.quad	0x3fe1c05212f96c91              # double 0.55472663598938443
	.quad	0x3fec0f64044a5729              # double 0.87687874639479901
	.quad	0x3fe5e8625ccff9ce              # double 0.68461721541808074
	.quad	0x3fda681784ad7f16              # double 0.41260326344307552
	.quad	0x3fe357a50d7a5a42              # double 0.60444882042322257
	.quad	0x3fcd358e215e864c              # double 0.22819687489850293
	.quad	0x3fe914210ef020b1              # double 0.78370716970041177
	.quad	0x3fd04ef954533030              # double 0.25482018694742958
	.quad	0x3fd68ca9a0352be6              # double 0.35233536381991681
	.quad	0x3fec76fc0add148e              # double 0.88952448007388951
	.quad	0x3faecbf01ee3d880              # double 0.060149673243288682
	.quad	0x3fe57d969bf14e7d              # double 0.67158060510196516
	.quad	0x3fecd6e17ac8fdc4              # double 0.90123056394070788
	.quad	0x3fe6cdf3e12804ed              # double 0.71264070487828024
	.quad	0x3fe777976bab3fb6              # double 0.73334857014741917
	.quad	0x3fe5f4e170578f4c              # double 0.68614265386393347
	.quad	0x3fede1d459a365c3              # double 0.93381707675433068
	.quad	0x3fc4c0739bfc0a80              # double 0.16212315670425781
	.quad	0x3feb17c356315a35              # double 0.8466507609799182
	.quad	0x3fdca88533d67926              # double 0.4477856641987209
	.quad	0x3fefb8db9fea9b68              # double 0.9913156627052162
	.quad	0x3fcf1a5ac4271bf0              # double 0.24299177720806098
	.quad	0x3feff0d9d012f3d0              # double 0.99815073623141792
	.quad	0x3fe555e3ab4fe093              # double 0.66673453769091606
	.quad	0x3fc97af39aa5d040              # double 0.19906468440206204
	.quad	0x3fef15c8c59cf344              # double 0.97140921207719843
	.quad	0x3fd6aa3f7b2b859e              # double 0.35414111164399198
	.quad	0x3fc96c89a9261384              # double 0.19862480887618628
	.quad	0x3fc45666c4746b6c              # double 0.15888676254766254
	.quad	0x3fc2e2bd44f87cc0              # double 0.14754453532893841
	.quad	0x3fd03fdfd123beea              # double 0.25389857696335005
	.quad	0x3fe8346e7d6c1a3e              # double 0.75640034195459527
	.quad	0x3fec71fc1c836eeb              # double 0.88891416138673429
	.quad	0x3febd8bfcabf908d              # double 0.87020864104535323
	.quad	0x3fe6c76c0bbed044              # double 0.71184351247803379
	.quad	0x3febcefaea90fb0b              # double 0.86901613057838867
	.quad	0x3fe20842e57eac28              # double 0.56350846121984421
	.quad	0x3fee9db56d35b3f3              # double 0.95675155000719625
	.quad	0x3fe4cb10907a80cd              # double 0.64978817194426031
	.quad	0x3fee690c0b59fd01              # double 0.95032312600224611
	.quad	0x3fef2fde1f5cf3d1              # double 0.97459322095493849
	.quad	0x3fef226cf1ab0208              # double 0.97295233917981338
	.quad	0x3fe535760282270a              # double 0.66277599801944231
	.quad	0x3fdc5edc1408d4e6              # double 0.44328977543348314
	.quad	0x3fed55a54453a2cc              # double 0.91670478196200511
	.quad	0x3fed919152add114              # double 0.92401949070202471
	.quad	0x3fee97d844035506              # double 0.95603574069778641
	.quad	0x3fb5536e7a1febe0              # double 0.083304314437483651
	.quad	0x3fbdf55a93c18ad0              # double 0.11702505214047254
	.quad	0x3fef94493fd940a4              # double 0.98685133428991322
	.quad	0x3fe3bdb8ce68eb6f              # double 0.61690941156790113
	.quad	0x3fece884ce074f90              # double 0.90338363876297656
	.quad	0x3fccc0ab10cf44c0              # double 0.22462976761611309
	.quad	0x3feb505d354b0a85              # double 0.8535600701219016
	.quad	0x3fd9d1386cc92692              # double 0.4033948004112996
	.quad	0x3fe58ffdcf2e14fc              # double 0.67382708039136174
	.quad	0x3fc76f3bb92ddc28              # double 0.18308207075071548
	.quad	0x3fc1344390d85b4c              # double 0.13440746853367569
	.quad	0x3fd60ae9fda5744c              # double 0.34441613931796122
	.quad	0x3fe9f2e2ea4cdfad              # double 0.81089921724104885
	.quad	0x3fd4eb6a440117f8              # double 0.32686859742204843
	.quad	0x3feb50eb1b482843              # double 0.85362773254861002
	.quad	0x3fd89e2e53e9e0a8              # double 0.38465460009275398
	.quad	0x3fcc9a96604cb89c              # double 0.22346763326772112
	.quad	0x3fd3f87d0d9d8936              # double 0.31204153375269372
	.quad	0x3fe9f7a06606d9e3              # double 0.81147785117246618
	.quad	0x3fca230762740dd0              # double 0.20419399554530893
	.quad	0x3fdcccd2d303dd7a              # double 0.45000143629973588
	.quad	0x3fd1ed0bd81c3a36              # double 0.28009315590398687
	.quad	0x3fe416fd142a5c1b              # double 0.62780622423713639
	.quad	0x3fc39353b02ec048              # double 0.15293356039683403
	.quad	0x3fe7a53e82da5fa6              # double 0.73892140919905525
	.quad	0x3feb74948224cbc8              # double 0.85798097056100975
	.quad	0x3fe0fc55cb9d68e4              # double 0.53080262917071908
	.quad	0x3fbe5b68fa78ac40              # double 0.11858230700515637
	.quad	0x3fb5beb8c9cf6430              # double 0.084941434164094387
	.quad	0x3fcbb59537b8e1f0              # double 0.2164789697724383
	.quad	0x3fdc0b9c71e5c0e6              # double 0.43820868609237917
	.quad	0x3fb6d508f7ad27b0              # double 0.089188156574123267
	.quad	0x3feb353a3dd07d1c              # double 0.85024749825598489
	.quad	0x3feb64815bf0f9ab              # double 0.8560187144974426
	.quad	0x3fc5c0920a13ed20              # double 0.16993928424913296
	.quad	0x3f65fa3e9f1f7000              # double 0.0026828024938208017
	.quad	0x3fed7a187ae2ef61              # double 0.92115425111067506
	.quad	0x3fe56a3d3cc0502e              # double 0.66921865334962205
	.quad	0x3fd84fbad87c4b10              # double 0.37986632481731508
	.quad	0x3fa7b1b9cbca16a0              # double 0.046277814985882459
	.quad	0x3fd4e9d0ad1ac436              # double 0.32677094368688431
	.quad	0x3fc46b331acc4144              # double 0.15952147301187314
	.quad	0x3feae8cf813042ba              # double 0.84091925842411475
	.quad	0x3fea21daa249bb0e              # double 0.81663257309796378
	.quad	0x3fe2893e7a67dae9              # double 0.57925342471466224
	.quad	0x3feb189ac1ef2f8e              # double 0.84675348165318254
	.quad	0x3fc4c4dad781aefc              # double 0.16225753329069181
	.quad	0x3fe3fa864a4cf411              # double 0.62433161269984982
	.quad	0x3fdb26a8531a2b6e              # double 0.42423446765376738
	.quad	0x3fcd757886fcb9f4              # double 0.2301474246136902
	.quad	0x3feb14f8151c9b2c              # double 0.84630970118891957
	.quad	0x3fdf6cee1cea1d90              # double 0.49102356742556541
	.quad	0x3fed73701ceac298              # double 0.9203415455613877
	.quad	0x3fdcfb08771cdf2a              # double 0.45282184249980395
	.quad	0x3feffa5618c8e107              # double 0.99930863228567623
	.quad	0x3fb8faefa0860760              # double 0.097578980150527794
	.quad	0x3fd55681f416ddce              # double 0.33340500676009988
	.quad	0x3fe515c6e3ed5fac              # double 0.65890831486739421
	.quad	0x3fe5c4c16de6a21a              # double 0.68026801552793192
	.quad	0x3fd5646b02ca0324              # double 0.33425402901052537
	.quad	0x3feb1a0d9b4fdd1b              # double 0.84693031629913962
	.quad	0x3fe8c5447808160c              # double 0.77408050006550999
	.quad	0x3fdbf7ee5fbc12ee              # double 0.43700751637542978
	.quad	0x3fd29ca7e798d5a8              # double 0.29081151596923371
	.quad	0x3feccf1b51257140              # double 0.90028158043745776
	.quad	0x3feb97f752885885              # double 0.86230054969452452
	.quad	0x3fe4a1c941efcdab              # double 0.64474928739803283
	.quad	0x3fe9bfaacc9202ed              # double 0.80464687304637794
	.quad	0x3fe44494b1147034              # double 0.63337168298631363
	.quad	0x3fd2ba6fb38f3874              # double 0.29262917075255435
	.quad	0x3fdc28f582baadb6              # double 0.43999994055294722
	.quad	0x3fe5e20f383cb6fe              # double 0.68384514793225981
	.quad	0x3fd9a97902d74956              # double 0.40096879270017405
	.quad	0x3fdf8025fb0366c2              # double 0.4921965552617672
	.quad	0x3f9746736303b740              # double 0.022729685705534353
	.quad	0x3fee46d7df7ab1d4              # double 0.94614785812660295
	.quad	0x3fca07de3c2e5f88              # double 0.20336511553318481
	.quad	0x3feb6d09acb4bb6b              # double 0.85706027728688861
	.quad	0x3fd26ec001fb2dce              # double 0.28800964539979368
	.quad	0x3fe1ba3753cd69b6              # double 0.55398146026282435
	.quad	0x3fd4b3bc397716ae              # double 0.32347016918024962
	.quad	0x3fd576dcbb16d968              # double 0.33537977476534886
	.quad	0x3fab2092d4d6a850              # double 0.052982891541731747
	.quad	0x3fe0ab443f5afd76              # double 0.52090656637294219
	.quad	0x3fe3d26766ddc270              # double 0.61943407145561302
	.quad	0x3fcaba277db31318              # double 0.20880597722693817
	.quad	0x3fcec77917bd010c              # double 0.24046243342491669
	.quad	0x3fda02bc49f926e8              # double 0.40641696189832865
	.quad	0x3fc651dc08e1bf94              # double 0.17437315400775033
	.quad	0x3f94a55c2d0b4780              # double 0.020162048577567315
	.quad	0x3fe761d187127c56              # double 0.73069073087016068
	.quad	0x3fd527f857f9f580              # double 0.33056458083577667
	.quad	0x3fe4824be8f39a0f              # double 0.64090533731797616
	.quad	0x3fdc30ef3e8941ae              # double 0.44048672778174136
	.quad	0x3fde9eb34601b138              # double 0.47843629681189581
	.quad	0x3fb9e11a808286e0              # double 0.10109105718086253
	.quad	0x3fedc92475e7ac60              # double 0.93080351856532317
	.quad	0x3fe403eac191520a              # double 0.62547815138037888
	.quad	0x3fe1199e5f08762e              # double 0.5343772750963518
	.quad	0x3fe62e03a38d3282              # double 0.69311696952497948
	.quad	0x3fe08eaa14948441              # double 0.51741508502539812
	.quad	0x3fe70a4863bf0ed0              # double 0.7200052211923893
	.quad	0x3fbf4cbd59afe340              # double 0.12226470412850876
	.quad	0x3fe3dc2f54b5faa7              # double 0.62062803788270038
	.quad	0x3fd287d21c8893a0              # double 0.28953984056925641
	.quad	0x3fdcb5bb52c1d1c4              # double 0.44859202462910397
	.quad	0x3febbaee4f179f83              # double 0.86656871268949975
	.quad	0x3fc9ab817d59b690              # double 0.20054644222857521
	.quad	0x3fda74709b061274              # double 0.41335692538294855
	.quad	0x3f82f96d617d0580              # double 0.0092648072601402287
	.quad	0x3fe3adede38f99d2              # double 0.61498159833427679
	.quad	0x3fc3948db7e5c6e8              # double 0.15297099570630412
	.quad	0x3fe7a24f0a01c811              # double 0.73856307939991173
	.quad	0x3fdf373537ab41a4              # double 0.48774462162421117
	.quad	0x3fe997c2834cd72c              # double 0.79977536816179428
	.quad	0x3feac81e453ce575              # double 0.83692849658034041
	.quad	0x3fd5bb4bea87639c              # double 0.33955667403420775
	.quad	0x3fdf12a30c4b5bd0              # double 0.48551250649091759
	.quad	0x3fca8b773f270d50              # double 0.20738115867252782
	.quad	0x3fe46433684d3128              # double 0.63723154422180972
	.quad	0x3fa958ec1b4c1050              # double 0.049506548244636961
	.quad	0x3fdcbbec594ae7a2              # double 0.44896992416362924
	.quad	0x3fee24052cf27b6e              # double 0.94189699915646741
	.quad	0x3fed2e0f36da76c0              # double 0.91187248910474494
	.quad	0x3fdc9848a1d96592              # double 0.44679466062151463
	.quad	0x3fd1c29575c00f90              # double 0.27750145434424045
	.quad	0x3fd4df11c8486bfc              # double 0.32611507948757867
	.quad	0x3fe4d5f384942735              # double 0.65111709493905912
	.quad	0x3fe7f213cb378b3b              # double 0.74830045405210599
	.quad	0x3f3ed2577a762000              # double 4.7030101492184784E-4
	.quad	0x3fd26a71272b59ec              # double 0.28774670434122984
	.quad	0x3feb3d6f5acfe10b              # double 0.85124938713764331
	.quad	0x3fed807c5ebe5dc1              # double 0.92193430428135781
	.quad	0x3fd992efeb868c8c              # double 0.39959333420319676
	.quad	0x3fe2fdd7fb5d54e0              # double 0.59348677725452248
	.quad	0x3fe999319337bb2d              # double 0.79995039704758641
	.quad	0x3fec475162d5315e              # double 0.88370580008772115
	.quad	0x3fe37ed22a01a5eb              # double 0.60923107342131055
	.quad	0x3fea36b5e2f43ca0              # double 0.81917852713549521
	.quad	0x3fbfb4bef38ea618              # double 0.12385171362134206
	.quad	0x3fef777bad4c8dd6              # double 0.9833353409525738
	.quad	0x3fedcc29b7d41f05              # double 0.93117223648093328
	.quad	0x3fe2d49151800222              # double 0.58844819944357973
	.quad	0x3fd8be4797e60c2a              # double 0.38661374887323297
	.quad	0x3fe1b91fcbb89e22              # double 0.5538481692246402
	.quad	0x3fe15cd318af1f41              # double 0.54258112736804531
	.quad	0x3fef1f4f03db130b              # double 0.97257185700490944
	.quad	0x3ee09d50a4820000              # double 7.9224165718816408E-6
	.quad	0x3fe7ccde92dd4204              # double 0.74375847515517579
	.quad	0x3fd07086f6981040              # double 0.25686811524815667
	.quad	0x3fe93bc8ff5e9f60              # double 0.7885479915321234
	.quad	0x3fd2505dc0e94424              # double 0.28615516509040817
	.quad	0x3fe8b1be1f9e1bcd              # double 0.77169710326494967
	.quad	0x3f7a82a5dd8f3880              # double 0.0064722518081464786
	.quad	0x3fe41badc531af8a              # double 0.62837875856847458
	.quad	0x3f7ebe4965f96c80              # double 0.0075056903002305164
	.quad	0x3f898aa21e9cc6c0              # double 0.01247145324632315
	.quad	0x3fdaf46fcb47feec              # double 0.42116923190768207
	.quad	0x3fe2d0ad4996e714              # double 0.58797325489942631
	.quad	0x3fdd8fd393dcc606              # double 0.46190347137152832
	.quad	0x3fc83c571c94adcc              # double 0.1893414392046523
	.quad	0x3fe1ec1deabdd6dc              # double 0.56007285926781547
	.quad	0x3fe66bfd3689d82d              # double 0.70068226482431373
	.quad	0x3fe842c353156729              # double 0.75814977862612409
	.quad	0x3fe88960ff9614d0              # double 0.76676988524618572
	.quad	0x3fda0f9c530e14bc              # double 0.40720279799308989
	.quad	0x3fd48d4de0129712              # double 0.32112452394572799
	.quad	0x3fd1b0ae4585ef9c              # double 0.27640873708127756
	.quad	0x3fe399a8b33c179e              # double 0.61250720030578854
	.quad	0x3fc6e686ed6a3404              # double 0.17891012756845737
	.quad	0x3fe131c64b777d0b              # double 0.5373259996376033
	.quad	0x3fe8f3ae832d1dbb              # double 0.77974629993780498
	.quad	0x3fde78ce49f0533e              # double 0.47612340183814073
	.quad	0x3f9baf0005411820              # double 0.027034759827323396
	.quad	0x3feabc1b09b0ff0a              # double 0.83546211140489501
	.quad	0x3feb06fefc40c0d4              # double 0.84460400837090299
	.quad	0x3fe1f817ae254271              # double 0.56153472912599345
	.quad	0x3fd733f685d4e4d6              # double 0.36254656857961487
	.quad	0x3fe37d739e08add2              # double 0.60906391969677487
	.quad	0x3fea6684143d9ea9              # double 0.8250141520811286
	.quad	0x3fe2b1900a250205              # double 0.58417512875900057
	.quad	0x3fe27c05a802e129              # double 0.57763941588112744
	.quad	0x3fba694b316638d0              # double 0.10316915470159249
	.quad	0x3fd6c04e4a9f0c60              # double 0.35548741614565493
	.quad	0x3fd0e2ec7b0a45dc              # double 0.2638503266872172
	.quad	0x3fe135aae50e0a84              # double 0.53780121552729598
	.quad	0x3fae885ee25f5ad0              # double 0.05963417542777949
	.quad	0x3fe9b9185d4075f8              # double 0.80384462559930991
	.quad	0x3fe0fc54e88a5c6b              # double 0.53080220621167251
	.quad	0x3fee6e9d59a4e6f6              # double 0.95100276478407753
	.quad	0x3fe8f909a739d417              # double 0.78040011082942129
	.quad	0x3fdbe98ea831a7cc              # double 0.43613020348732046
	.quad	0x3fe9ae1e20f80212              # double 0.8025046008988872
	.quad	0x3fed0051378bae21              # double 0.90628872727160481
	.quad	0x3fe1b7b45c736ee3              # double 0.55367487007921701
	.quad	0x3fcdef823d318134              # double 0.23387172687490365
	.quad	0x3febc5d239220182              # double 0.86789809378392158
	.quad	0x3fdee49314fb38d4              # double 0.48270108269651968
	.quad	0x3fb0ea0a98c7c3e0              # double 0.066071188259015923
	.quad	0x3fd5be96c030fad8              # double 0.33975762146648725
	.quad	0x3fcd23610e9733d4              # double 0.22764218532975511
	.quad	0x3fe14e9d097ba751              # double 0.54084636547234244
	.quad	0x3febd947a9cd7e2a              # double 0.87027342953291975
	.quad	0x3fe7da3d0c679e23              # double 0.74539043829731033
	.quad	0x3fe6690ae6bee0ad              # double 0.70032258098128397
	.quad	0x3fef45f6fdf4a52d              # double 0.97729062653266896
	.quad	0x3fd8fb9682869786              # double 0.39035570856719237
	.quad	0x3fecb5044b7441a5              # double 0.89709677445539582
	.quad	0x3fc3f49b553cd5f8              # double 0.1559023061942495
	.quad	0x3fd633bd9c780f4c              # double 0.34690799980329667
	.quad	0x3fe3b1f2c03139ce              # double 0.61547219789081864
	.quad	0x3fe7e09f55536c04              # double 0.74616972603996645
	.quad	0x3fe1b159f82a81bc              # double 0.55289934606485458
	.quad	0x3fe6ec9c5818d1a4              # double 0.71638314444003415
	.quad	0x3feaf9b547e496ef              # double 0.84298194924914849
	.quad	0x3fede9c4f33100ce              # double 0.93478629587482387
	.quad	0x3fdcce27ac90dc52              # double 0.45008270122656768
	.quad	0x3fd887f6832a41d4              # double 0.38329851922119684
	.quad	0x3fe8bc8d259d5f6a              # double 0.77301652285221434
	.quad	0x3fe695d73f48a3b2              # double 0.70579111442667952
	.quad	0x3fe0c60b62c03c14              # double 0.52417535102165624
	.quad	0x3fe0c6ce4f20b4ba              # double 0.52426829771652383
	.quad	0x3fd30ca3ed0574b8              # double 0.29764650484669231
	.quad	0x3fef97e86451c6dc              # double 0.98729343026772253
	.quad	0x3fd6ea7b0bf38438              # double 0.3580615631781856
	.quad	0x3fe4f58414cdcd93              # double 0.65497020781769988
	.quad	0x3fed6212f1350ad7              # double 0.91822192297726246
	.quad	0x3fe1eb983ab96c78              # double 0.56000911206810056
	.quad	0x3feb36e71e557a68              # double 0.85045200275983479
	.quad	0x3feede8a34962be2              # double 0.96466551085302066
	.quad	0x3fd4b448ea81524c              # double 0.32350371266264655
	.quad	0x3feadcb5cd3f6ae8              # double 0.83944215857931415
	.quad	0x3fdcc46d5225a72e              # double 0.44948895475555417
	.quad	0x3fcadd800b98f424              # double 0.20988464895518277
	.quad	0x3fe20fdee903cb31              # double 0.56443734656054378
	.quad	0x3fdbcfa229a2385e              # double 0.43454793992794361
	.quad	0x3fea3fa9ba8e6f47              # double 0.82027136265558276
	.quad	0x3fecc87c8e431adc              # double 0.89947345529148092
	.quad	0x3fd688333b77f180              # double 0.35206299598191748
	.quad	0x3fde7052f987d1b2              # double 0.4756057202169145
	.quad	0x3fd54384a8b8c436              # double 0.33224598385556037
	.quad	0x3fef7c45a43331b4              # double 0.98391992636020697
	.quad	0x3fe282bbbd11eea6              # double 0.57845866134399127
	.quad	0x3fd6c22c2d876022              # double 0.35560135313198959
	.quad	0x3feb6bb6e37f981b              # double 0.85689873154911156
	.quad	0x3fed07808c9d2f99              # double 0.90716578925774904
	.quad	0x3fc52e028ee09f04              # double 0.1654666135448154
	.quad	0x3fdcbb8c6812b0ca              # double 0.44894704974536792
	.quad	0x3fa517eb888e9c70              # double 0.04119812051731564
	.quad	0x3fc4bb7fe0c3b504              # double 0.16197203135326543
	.quad	0x3fc8250243f78120              # double 0.18862942045871822
	.quad	0x3fe7fd8439f50bba              # double 0.74969683952109922
	.quad	0x3fe2710eef58c1f6              # double 0.57630106685070248
	.quad	0x3fd7b203d49420dc              # double 0.37024017104751095
	.quad	0x3fbaaceff8073320              # double 0.10420131497739904
	.quad	0x3fd6c6f911bf0722              # double 0.35589434369113537
	.quad	0x3fe09c3f0c06f04c              # double 0.51907303189319398
	.quad	0x3fe1ea1ba442b3a5              # double 0.55982763368739497
	.quad	0x3fe6209d1c4f792b              # double 0.69148116616614652
	.quad	0x3fec40a252e2288c              # double 0.88288990200204997
	.quad	0x3fee3c1df9b9ea06              # double 0.94483851217893355
	.quad	0x3f9825faea87f020              # double 0.023582382740627961
	.quad	0x3fe4f1aa3b8d1041              # double 0.65450011855183032
	.quad	0x3fe67b2285dcf4ec              # double 0.70253111024035553
	.quad	0x3fa58c5be789ebb0              # double 0.042086479200370674
	.quad	0x3fc775acb247e480              # double 0.18327864365690871
	.quad	0x3fecd04518413438              # double 0.90042357194182099
	.quad	0x3fedc4a1d8cb5e00              # double 0.93025295584351397
	.quad	0x3fc1b02f36d09bcc              # double 0.1381892221117752
	.quad	0x3fe8328b04a5c84c              # double 0.75616980464679661
	.quad	0x3fe5e037782a5c38              # double 0.68362019986933031
	.quad	0x3fd80e5fa7a971e0              # double 0.37587729809982129
	.quad	0x3fdb9ffc04be195c              # double 0.43163967574255024
	.quad	0x3fa9182ee1c910a0              # double 0.049012627660460995
	.quad	0x3fd22bdb8e2a7d2a              # double 0.28392685778995264
	.quad	0x3fb25816aeb053c0              # double 0.071656625412585662
	.quad	0x3fcb129b54a024c0              # double 0.21150533325297793
	.quad	0x3fe8c57e3b43a3fe              # double 0.7741080434326475
	.quad	0x3fe6575806fd8edc              # double 0.69816209187817035
	.quad	0x3fe951f9d0feb151              # double 0.79125681704821649
	.quad	0x3fef319e5b46dac6              # double 0.97480695559973962
	.quad	0x3fe544b5940fa640              # double 0.66463736456098133
	.quad	0x3fe08ee6d460b0cb              # double 0.51744405250567505
	.quad	0x3fcef6e007b44338              # double 0.2419090306871341
	.quad	0x3fe9560644e0f2aa              # double 0.7917510361945308
	.quad	0x3fe808fcf05c32a9              # double 0.75109717316953095
	.quad	0x3fe667bbc4d97860              # double 0.7001627773968373
	.quad	0x3fd248f9ee5ee76e              # double 0.28570411947622787
	.quad	0x3fd4f7b8041cc508              # double 0.32761955644225838
	.quad	0x3fe6f7ef5dbc5664              # double 0.71776550586464483
	.quad	0x3fd353824a07a6ea              # double 0.30197198132974157
	.quad	0x3f8b3f41abe943c0              # double 0.013304246004880116
	.quad	0x3fe88fbef66ae7a3              # double 0.76754711273610032
	.quad	0x3fea6794c72f3298              # double 0.82514418509670673
	.quad	0x3fd00148397c70e6              # double 0.25007825483204582
	.quad	0x3fe3e457de603238              # double 0.62162393028990603
	.quad	0x3fe658c017ed9771              # double 0.69833378480391961
	.quad	0x3fd0d65b3c85f9e8              # double 0.26308327589495528
	.quad	0x3fee1b126c1a5158              # double 0.94080468286351059
	.quad	0x3fd948e31bb7dfaa              # double 0.39507367808209415
	.quad	0x3feffcaec20ef954              # double 0.99959504987763603
	.quad	0x3fe88fd43f688ef9              # double 0.76755726227244658
	.quad	0x3fef4e63788fe4e5              # double 0.97831891581804752
	.quad	0x3fc926d2b9794878              # double 0.19649728828750646
	.quad	0x3fd5f9bb50063a56              # double 0.34336741270900484
	.quad	0x3fe1d75f64696c60              # double 0.55754060374909997
	.quad	0x3fe1c45d86c991ad              # double 0.55522037816677072
	.quad	0x3fe795a9531d43db              # double 0.73701921685471505
	.quad	0x3fde538bf91353dc              # double 0.47384929012087951
	.quad	0x3fe8e2ac95509699              # double 0.77767018473669502
	.quad	0x3fda1203ea076d6a              # double 0.40734956602474048
	.quad	0x3fdb4a38fb9ca752              # double 0.42640518733479837
	.quad	0x3fe8935d7785ea03              # double 0.76798890442233902
	.quad	0x3fd272b0761d36b2              # double 0.28825007948476433
	.quad	0x3fe5553fee40b228              # double 0.66665646108373711
	.quad	0x3fe39a8241da3695              # double 0.61261093961521118
	.quad	0x3fefe26edced5943              # double 0.99639075422127409
	.quad	0x3f9030440b92c2e0              # double 0.015809119421365092
	.quad	0x3fe468017333db7f              # double 0.63769600391866266
	.quad	0x3fdbb28d0ee3c770              # double 0.43277288869932473
	.quad	0x3feed5bb5294c067              # double 0.96359029893029635
	.quad	0x3fbd138fb23b4230              # double 0.11357973195414028
	.quad	0x3fea382205fb4239              # double 0.81935216110475217
	.quad	0x3fe1bb57e0798b63              # double 0.55411905138712958
	.quad	0x3fc08f7f51c4b858              # double 0.12937919132804399
	.quad	0x3fd89800da4e2c2c              # double 0.38427754706271133
	.quad	0x3fd81b1d80d630ea              # double 0.37665498334605607
	.quad	0x3facf55df4dfce80              # double 0.056559501783252308
	.quad	0x3fee78ed0e09e12e              # double 0.95226147405540984
	.quad	0x3fe278f092fd0346              # double 0.57726315220507085
	.quad	0x3fed95ac844f26c8              # double 0.92452073899877352
	.quad	0x3fea4df7069109bf              # double 0.82201720507173792
	.quad	0x3fd78520e47a5462              # double 0.36750051796236083
	.quad	0x3fef1f17814ece3b              # double 0.97254538779674903
	.quad	0x3fcce65ab8b3e0f4              # double 0.22577985781368393
	.quad	0x3fd6d18948a01782              # double 0.35653907863922296
	.quad	0x3fd4a7ee466b60fa              # double 0.32274968029879825
	.quad	0x3fdc65c8fa3288ae              # double 0.44371246751155524
	.quad	0x3fe714cfea214b15              # double 0.72129054764295353
	.quad	0x3fe76e44869b7d08              # double 0.73221041002753484
	.quad	0x3fe1441818f06459              # double 0.53956227179436234
	.quad	0x3fc4b8b160743480              # double 0.16188637933410988
	.quad	0x3fe6255856f94986              # double 0.69205872523370782
	.quad	0x3feec0ee80b659fb              # double 0.96105122698901312
	.quad	0x3fe7757e40c4b2a1              # double 0.73309242868488778
	.quad	0x3fd9fccfa0512f86              # double 0.40605536132783759
	.quad	0x3fe7e9ec5996dd74              # double 0.74730508325494194
	.quad	0x3fe444e6fbd0bcaf              # double 0.63341092283908107
	.quad	0x3fdd3776becdf166              # double 0.45651024468658929
	.quad	0x3fe34c2cf9915294              # double 0.60304878944096396
	.quad	0x3fe7f4197b8f762a              # double 0.7485473073281288
	.quad	0x3fe788f836a08d2f              # double 0.73546991986623833
	.quad	0x3fd90d1a4933a374              # double 0.39142472408871432
	.quad	0x3fe5ea14d4106dd9              # double 0.68482438486847308
	.quad	0x3fe9e851d2615b91              # double 0.80960932817366615
	.quad	0x3fed2269e414d49b              # double 0.91045088336126712
	.quad	0x3fd83b06882c007e              # double 0.37860263155017282
	.quad	0x3fb03172c86039d8              # double 0.063254522247212619
	.quad	0x3fe80ec592e5a21b              # double 0.75180319491215941
	.quad	0x3fd21fa725216dbe              # double 0.28318194032700805
	.quad	0x3fac59cf74104b80              # double 0.055372698705602907
	.quad	0x3fe13ca5aba934cf              # double 0.53865321662456178
	.quad	0x3fe984c243e12976              # double 0.79745591409418526
	.quad	0x3fe745f84434f7da              # double 0.72729123422299868
	.quad	0x3fef4ecb771f5a77              # double 0.97836850420101384
	.quad	0x3feaf077df6219be              # double 0.84185403470546993
	.quad	0x3fcab78902c6626c              # double 0.20872604976172526
	.quad	0x3fb8830159eee0e8              # double 0.095748981911018327
	.quad	0x3fcffb99bef93aa0              # double 0.24986574005966578
	.quad	0x3fe941372eea702d              # double 0.78921088374364035
	.quad	0x3fd94e9db3db6d8a              # double 0.3954233414094338
	.quad	0x3feabce51a086b56              # double 0.83555846294926073
	.quad	0x3fdcb970d3a89efa              # double 0.44881840390961225
	.quad	0x3fe179b57b227c43              # double 0.54610704469440241
	.quad	0x3fe9a4530e5e6971              # double 0.80130913549809979
	.quad	0x3fe28a9809e755cc              # double 0.57941820082003792
	.quad	0x3fd3b8c8d970ccc4              # double 0.30815335497318253
	.quad	0x3feb51acb4455afe              # double 0.85372004708446503
	.quad	0x3fed4265806749cf              # double 0.91435504034807902
	.quad	0x3fa1b1ed34fa80f0              # double 0.034560597149949746
	.quad	0x3fef3aa1c487f018              # double 0.9759072149749981
	.quad	0x3fef0a5ee8266a62              # double 0.97001595823105569
	.quad	0x3fe7dae6ac153102              # double 0.74547132120054038
	.quad	0x3fe51bfa872a5f03              # double 0.65966535949243654
	.quad	0x3fa6d6e08b723800              # double 0.044608132383572752
	.quad	0x3fe6de5184c96a50              # double 0.71463848051946322
	.quad	0x3fe8617e1bf5e9de              # double 0.76190095387510914
	.quad	0x3fe5c16d0fc02302              # double 0.67986157490040022
	.quad	0x3fe4884a94f94674              # double 0.64163712593490496
	.quad	0x3fef606d2783e988              # double 0.98052079885319276
	.quad	0x3fe6c9eebdaa312f              # double 0.71214997333439622
	.quad	0x3fe879b5748bed49              # double 0.76485703242307423
	.quad	0x3febcc643d94370c              # double 0.86870014216558066
	.quad	0x3fe31e6feb430027              # double 0.59746547650866411
	.quad	0x3fe218535243edef              # double 0.56546941821528474
	.quad	0x3fe917f9f46e22ec              # double 0.78417680492665686
	.quad	0x3fd962421aa3fc9c              # double 0.39662220574968798
	.quad	0x3fce4c7aa191ef98              # double 0.23670895470774833
	.quad	0x3fda46115ba9513c              # double 0.41052659941967184
	.quad	0x3fe769009e3b2517              # double 0.73156767754076923
	.quad	0x3fe0c2c39e52adbf              # double 0.52377491877034987
	.quad	0x3fe248bbea6a426b              # double 0.57137866768068812
	.quad	0x3fce190cbcb08874              # double 0.23513945783003332
	.quad	0x3fdb156aeba2aee2              # double 0.4231822301032776
	.quad	0x3fe519c91af2488e              # double 0.65939765227291658
	.quad	0x3fe912fd60220733              # double 0.78356808448754689
	.quad	0x3feb84d7dcb0a3ed              # double 0.85996621230617409
	.quad	0x3f8e74796062ad40              # double 0.01487059426684445
	.quad	0x3fe15dd079bcb3b2              # double 0.54270194794445659
	.quad	0x3fe14591e650ba95              # double 0.53974242194620337
	.quad	0x3fcbaca95d172d18              # double 0.21620671315609097
	.quad	0x3fcdbfa7af700b2c              # double 0.23241134706776145
	.quad	0x3fe6eaf2e45f738b              # double 0.71618027309487908
	.quad	0x3fe53a8b32e120ef              # double 0.66339645326027419
	.quad	0x3fe2d952a84f4e3c              # double 0.58902867196088193
	.quad	0x3fe7b1647cbd653b              # double 0.74040436137435195
	.quad	0x3fe12d5b7f1585b7              # double 0.53678679295642595
	.quad	0x3fd80ca301227e1e              # double 0.37577128516019964
	.quad	0x3fda8ecb62049a3c              # double 0.41496548244541365
	.quad	0x3fed0336f908df1a              # double 0.90664242400723372
	.quad	0x3fe2542d86fa3d86              # double 0.57277561533730714
	.quad	0x3fece17bbd02a190              # double 0.90252482334203599
	.quad	0x3fecd93181fc8cee              # double 0.90151286495202299
	.quad	0x3fe820fbf8f26e06              # double 0.75402639982661479
	.quad	0x3fe229b74b464c13              # double 0.56759228422231656
	.quad	0x3feb512cb53c324d              # double 0.85365901372422004
	.quad	0x3fea4c1e7da5a0c8              # double 0.82179188290049243
	.quad	0x3fe3da56d88c6ed2              # double 0.62040273947374147
	.quad	0x3fe82f7890591455              # double 0.75579479401552396
	.quad	0x3fe8ec9933969ef3              # double 0.77888164592601894
	.quad	0x3fe0ff56ebb642db              # double 0.53116937673083997
	.quad	0x3f6eb7779a366500              # double 0.0037495933517673885
	.quad	0x3fe21cc6b7c9ee44              # double 0.56601272484062592
	.quad	0x3fe854b3e4b9d6ba              # double 0.76033968613656744
	.quad	0x3fd0892ee1720950              # double 0.25837299362332988
	.quad	0x3fde63e31b95d532              # double 0.4748466271770041
	.quad	0x3fcd8e70f02094a4              # double 0.23090945935215246
	.quad	0x3fda62feb6785326              # double 0.41229217357003944
	.quad	0x3fe775ed43d1f533              # double 0.73314536329386326
	.quad	0x3fe1062aeaec9a81              # double 0.53200288661612671
	.quad	0x3fe89c83b8422357              # double 0.76910577762564969
	.quad	0x3fe332e8c16d1ed7              # double 0.59996450213017283
	.quad	0x3fe706bff8501ff9              # double 0.71957396029119913
	.quad	0x3feacc8088c48b0e              # double 0.83746363365603016
	.quad	0x3fd61aa56e33ed9a              # double 0.34537635576244841
	.quad	0x3fd138887a180e0a              # double 0.26907550738562291
	.quad	0x3fd2a0d88262a7b0              # double 0.29106724484392554
	.quad	0x3fefbe5aafd44279              # double 0.99198660222653167
	.quad	0x3fef6c18dbed94f9              # double 0.98194544748972056
	.quad	0x3fe671f3b148fc31              # double 0.70141014696117143
	.quad	0x3fe8f5a75d55d85c              # double 0.7799870322185245
	.quad	0x3fc10d7b5906530c              # double 0.13322393271359834
	.quad	0x3fea0ae7f9f325de              # double 0.81383131807632103
	.quad	0x3fdf9f56d6bc10c6              # double 0.49410029382876208
	.quad	0x3fd6c451e165b946              # double 0.35573241244755527
	.quad	0x3fc684c3c2d7e330              # double 0.17592665685494913
	.quad	0x3fe4343eeb8348c2              # double 0.63137765883063701
	.quad	0x3feaed0a0bf24070              # double 0.84143545468579184
	.quad	0x3fea166841fef99c              # double 0.81523526086657538
	.quad	0x3fecfa7d33f522af              # double 0.90557727954827338
	.quad	0x3f966fdc7096b580              # double 0.021911091205472299
	.quad	0x3fe6537d23597574              # double 0.69769150642575406
	.quad	0x3fd52ae37ae66c84              # double 0.33074271203958738
	.quad	0x3fc6072d042b5a58              # double 0.17209398940640841
	.quad	0x3fe2fa1ac93528c4              # double 0.59303035066957266
	.quad	0x3fefb23e9bd96b3b              # double 0.9905083698207372
	.quad	0x3fd11184f0071594              # double 0.26669429245188181
	.quad	0x3fe53cbe032a9885              # double 0.66366482370791913
	.quad	0x3fd53885dc03083c              # double 0.33157488332301788
	.quad	0x3fdfc111c3c8719c              # double 0.49615902060920702
	.quad	0x3fda9df2d3d2a30a              # double 0.4158904141027483
	.quad	0x3fedf454e3f3e2ab              # double 0.93607563516623793
	.quad	0x3fdf250e42f6e7f8              # double 0.48663670100688661
	.quad	0x3fef9bafed0ea27c              # double 0.9877547864935674
	.quad	0x3fd870d8a2cdfeec              # double 0.38188758753675134
	.quad	0x3fecb271a158f18b              # double 0.89678269875689531
	.quad	0x3fc0e94ac87357d8              # double 0.13211951053261717
	.quad	0x3fed7aa433e8962e              # double 0.92122087610613845
	.quad	0x3fed5ea4ff0b885e              # double 0.91780328572736969
	.quad	0x3fd7c70d44e772a4              # double 0.37152415970721564
	.quad	0x3fb290d7e1eb95d8              # double 0.072522633224785138
	.quad	0x3fe0fbffcb04cbf3              # double 0.53076162006470751
	.quad	0x3fcd4ea61bc7dae4              # double 0.22896267277220439
	.quad	0x3fe4454acf524123              # double 0.63345852367823274
	.quad	0x3fe12d2e146f6588              # double 0.53676513663519732
	.quad	0x3fe236fa9a3e94ca              # double 0.56921129346724197
	.quad	0x3fd933d7904a319e              # double 0.39378918734362311
	.quad	0x3fd4d127ce7c669a              # double 0.32526583828585276
	.quad	0x3fe6937f53841e1e              # double 0.70550504981742157
	.quad	0x3fd60f7357039902              # double 0.34469302651849898
	.quad	0x3fcdca9b70394b0c              # double 0.23274558047941019
	.quad	0x3f92b75b59bd6ae0              # double 0.018277575828828385
	.quad	0x3fd62228bee423d8              # double 0.34583490983692178
	.quad	0x3fe11e801d1e7b2a              # double 0.53497319876973859
	.quad	0x3fad3c2ef71bb960              # double 0.057099788345896796
	.quad	0x3fe27c5246dbfa8d              # double 0.5776759513826889
	.quad	0x3feade2a926060ce              # double 0.8396199091830796
	.quad	0x3fd765fb063552e4              # double 0.36559939962653076
	.quad	0x3fd3db070886aa66              # double 0.31024337608929498
	.quad	0x3fd0d686423355d6              # double 0.26309353318114626
	.quad	0x3fe43fbfa4ac5bdd              # double 0.63278181231259689
	.quad	0x3fe10375015f751f              # double 0.53167200344219967
	.quad	0x3fe1afc3f1a44432              # double 0.55270573802602585
	.quad	0x3fcee104919d60e4              # double 0.24124199972243965
	.quad	0x3fea9e49a23526b2              # double 0.83182222062278854
	.quad	0x3fc4ca207aef5bdc              # double 0.16241842272458384
	.quad	0x3fe62530001fff70              # double 0.69203948997890841
	.quad	0x3fde39e257c9a612              # double 0.47228296826378469
	.quad	0x3fcee3360f48ee10              # double 0.24130893465358882
	.quad	0x3feba67782a17cd4              # double 0.86407065881567257
	.quad	0x3fe593534b1c7f90              # double 0.67423405332736941
	.quad	0x3fd63edb02c156f0              # double 0.34758639592233376
	.quad	0x3fdc40f157292b1e              # double 0.44146379005239733
	.quad	0x3fbcf1f424f28580              # double 0.11306692029986287
	.quad	0x3fe1466cc43e8a7b              # double 0.53984678582158041
	.quad	0x3fe2552bee5a9159              # double 0.57289692452881547
	.quad	0x3fad7175109dba30              # double 0.057506235388121829
	.quad	0x3fd945a1e7c2dda8              # double 0.3948750270169179
	.quad	0x3fe00f6dde75466e              # double 0.50188344429825604
	.quad	0x3fee01fe34047ece              # double 0.93774328384093919
	.quad	0x3fd416f9389e31f6              # double 0.31390219239327111
	.quad	0x3fde205de92c6964              # double 0.47072551508758509
	.quad	0x3fac502b44d45b90              # double 0.055299141075173641
	.quad	0x3fb654d2b8b3b828              # double 0.08723179826094507
	.quad	0x3fe891cfc4e1d660              # double 0.76779926732588066
	.quad	0x3f93e9abe498f380              # double 0.019446073367578531
	.quad	0x3fe3c949c6eccaca              # double 0.61832131245167798
	.quad	0x3fe41a5cb080cb95              # double 0.62821802590620968
	.quad	0x3fcac3c834e55ff8              # double 0.20909979422390257
	.quad	0x3fce6097fa38ee94              # double 0.2373228046216026
	.quad	0x3fe36ddcf58b975a              # double 0.60716102560102603
	.quad	0x3fb87c8db310ff08              # double 0.095650535790806512
	.quad	0x3fdc01ed92379f62              # double 0.43761767653494676
	.quad	0x3fe95bb6ca6b93f3              # double 0.79244555983734555
	.quad	0x3fefb416c00a6dfd              # double 0.99073350437123475
	.quad	0x3fe254341f316939              # double 0.57277875988373872
	.quad	0x3fe823ab87f62a96              # double 0.75435425333974382
	.quad	0x3fe5162233f9c5cd              # double 0.6589518561506168
	.quad	0x3fd08a6893762f4a              # double 0.25844778442909855
	.quad	0x3fcace3d155c680c              # double 0.20941890280738595
	.quad	0x3fe26d80425cf1da              # double 0.57586682282959178
	.quad	0x3fb10b9d2a21c3c8              # double 0.06658346441851315
	.quad	0x3fc13e5558551410              # double 0.13471476376631175
	.quad	0x3fbc4377088d86e8              # double 0.11040443381127896
	.quad	0x3fd225be4051c5be              # double 0.28355366021341044
	.quad	0x3fe4d802e6c5e094              # double 0.65136857102244727
	.quad	0x3fe40ec0e089451c              # double 0.62680095534065883
	.quad	0x3fd1ca3cc34315ac              # double 0.2779685885292007
	.quad	0x3fe86df1802bff5e              # double 0.7634208205563302
	.quad	0x3fddfb9ef9af4a14              # double 0.46848272689126813
	.quad	0x3feb3ba4026737e0              # double 0.8510303542077473
	.quad	0x3fe0970fd1af1400              # double 0.51844016031157025
	.quad	0x3feb1308fa8acb52              # double 0.84607361730591379
	.quad	0x3fe1dbace52287fc              # double 0.55806584122569758
	.quad	0x3fd06c3a2a65c64a              # double 0.25660566463838974
	.quad	0x3fd4cceef60a6526              # double 0.32500814463999672
	.quad	0x3fd19b268ac71784              # double 0.27509463837156312
	.quad	0x3fe382abedacbb79              # double 0.60970112248274611
	.quad	0x3feb66c5891979d9              # double 0.85629536416291352
	.quad	0x3fb34a71687e26d8              # double 0.075354660044605892
	.quad	0x3feaa08c204f03d4              # double 0.83209806738170266
	.quad	0x3fd2e75211171f84              # double 0.29536868733384147
	.quad	0x3fee6e335906c17e              # double 0.95095221889464177
	.quad	0x3fec3a1b98bc65a7              # double 0.88209323722110333
	.quad	0x3fc6b28220511eec              # double 0.17732264116261065
	.quad	0x3fad652b242b3780              # double 0.057412479558123231
	.quad	0x3fc8d7ec4e7ab758              # double 0.19408944923400884
	.quad	0x3fdc580177929682              # double 0.44287144352924923
	.quad	0x3fd11959d63b815c              # double 0.26717229767930006
	.quad	0x3fc7e4e2745fd50c              # double 0.18667250330296559
	.quad	0x3fc67796090f701c              # double 0.17552447740934063
	.quad	0x3fe0696d27612d07              # double 0.5128694314129526
	.quad	0x3fba693bd353a430              # double 0.10316823872894143
	.quad	0x3feb7e3e9ddf422b              # double 0.85916071733851618
	.quad	0x3fb9e94da2dbf780              # double 0.10121617532783311
	.quad	0x3fd0d9019ac649c2              # double 0.26324501146987356
	.quad	0x3fce301c2dc1c0ac              # double 0.23584320291729932
	.quad	0x3fe6495b3ccb7968              # double 0.69645463823307541
	.quad	0x3fe28cf16c4503d3              # double 0.57970496317295284
	.quad	0x3fc57b99a40d6118              # double 0.16783447752346414
	.quad	0x3fe65d1f366c87f3              # double 0.69886742238690969
	.quad	0x3fba17b1f868dfd0              # double 0.10192406000794496
	.quad	0x3fdb869892210fde              # double 0.43009008665489812
	.quad	0x3fe5abab526056df              # double 0.67720571602941593
	.quad	0x3fe237a7979ea6ea              # double 0.56929378140668274
	.quad	0x3fe1a77bd40d36f2              # double 0.55169478813487971
	.quad	0x3fd4117ab6e1351c              # double 0.31356685504290893
	.quad	0x3fb280935de02888              # double 0.072274408739902651
	.quad	0x3fe7aa9c6e65f98a              # double 0.73957654535461015
	.quad	0x3faca4b2f262c370              # double 0.055944053733930299
	.quad	0x3fb003817aae3f38              # double 0.062553493930178727
	.quad	0x3fd075792289aa1a              # double 0.25716999409510921
	.quad	0x3fd5bf0b67ad292c              # double 0.33978543400430072
	.quad	0x3fedd0a8aa26638f              # double 0.93172105057156951
	.quad	0x3fdaf9503c6e8596              # double 0.42146688367400864
	.quad	0x3feeea886c378113              # double 0.96612950454803792
	.quad	0x3fd1684eae6059b0              # double 0.27199141529981841
	.quad	0x3fc3a4a3368295d4              # double 0.15346183930993951
	.quad	0x3fbfc1fcd21fced0              # double 0.12405376558291015
	.quad	0x3fe61efcd97a844e              # double 0.69128267742429172
	.quad	0x3fee1042a2f91d2d              # double 0.93948489981349825
	.quad	0x3fd8d08b76579fac              # double 0.38772856289733215
	.quad	0x3feda0d674db7b29              # double 0.92588351081562792
	.quad	0x3fbfd1e7bea427c0              # double 0.12429664997412626
	.quad	0x3fd5b89ebbb3d4d6              # double 0.33939331369704229
	.quad	0x3fb9c18082ed98b0              # double 0.10060885616767012
	.quad	0x3fb641f2349b6560              # double 0.08694375786162345
	.quad	0x3fe01df057dbf73d              # double 0.50365464363105839
	.quad	0x3fe0837bee1a6b57              # double 0.51605030540973018
	.quad	0x3fb8736c8c06b1d0              # double 0.095511230646202038
	.quad	0x3fefc449252e99ac              # double 0.99271065961948101
	.quad	0x3fed60b66dd58c6e              # double 0.91805573894488446
	.quad	0x3fee3e43d159fa74              # double 0.94510069741211433
	.quad	0x3fe92cd30cb860e2              # double 0.78672173008365243
	.quad	0x3fda577a8c75c680              # double 0.41158927647402521
	.quad	0x3fecd63bd2e04d8b              # double 0.90115157305483373
	.quad	0x3fe6d1915a064a7d              # double 0.71308200438427571
	.quad	0x3fd49626a3814b5a              # double 0.3216644856194556
	.quad	0x3fb7942c5b1fd040              # double 0.092104694602142878
	.quad	0x3fc63e4fddfb51a4              # double 0.17377661074591544
	.quad	0x3fcf01459ddb2a70              # double 0.24222631652658633
	.quad	0x3fa10b0d2b258b80              # double 0.033287440792967082
	.quad	0x3fe47a6e687198a6              # double 0.6399452247540196
	.quad	0x3fe429f69ac34894              # double 0.63012247302164548
	.quad	0x3fd1f89a2256fb46              # double 0.28079846719258617
	.quad	0x3fe1d56c01282dd6              # double 0.55730247713057213
	.quad	0x3fe3715f46aa2ead              # double 0.60758937646592914
	.quad	0x3fdd03ca4bdf9b38              # double 0.45335633668439668
	.quad	0x3fe27a73c94fa98a              # double 0.5774477893694876
	.quad	0x3fbf5ebc85e03a40              # double 0.12253931301550214
	.quad	0x3fddf4e1c032f1ee              # double 0.46807140130456915
	.quad	0x3fe13a6e3ee64cbc              # double 0.53838264737205277
	.quad	0x3fedc5ed7d8d40b6              # double 0.93041109582738701
	.quad	0x3fe2b921a9b3a920              # double 0.58509905953295416
	.quad	0x3fdf5f7904d00f64              # double 0.49020219297402989
	.quad	0x3fe719191a97f2b7              # double 0.72181372827579693
	.quad	0x3fe394150ec3216a              # double 0.61182644732711577
	.quad	0x3fe145cd19efa999              # double 0.5397706514898345
	.quad	0x3fc23b1d18ee7b6c              # double 0.14242900578843931
	.quad	0x3fea74f0f1272c04              # double 0.82677504635046306
	.quad	0x3fe5f3e7640d2b52              # double 0.68602342168137853
	.quad	0x3fe884684eca4dfb              # double 0.76616301907273454
	.quad	0x3fe8b407e35de37c              # double 0.77197641761368585
	.quad	0x3fb48c26d1104bb8              # double 0.080263544121676911
	.quad	0x3fe1585f612af811              # double 0.54203766801924946
	.quad	0x3fe98d5e83b911e5              # double 0.79850698210844639
	.quad	0x3fe06a8a7ced346b              # double 0.5130054893467223
	.quad	0x3fec4bb90fadc021              # double 0.88424351751564612
	.quad	0x3f8d44a02f578540              # double 0.014291049427756719
	.quad	0x3fe6655c6d7963fd              # double 0.69987317449260866
	.quad	0x3fd8a21e2c3147b8              # double 0.38489488902734648
	.quad	0x3fea1d1138a618b2              # double 0.81604825081082866
	.quad	0x3fe3334539e17b77              # double 0.60000859551278907
	.quad	0x3fea4b551131d9fe              # double 0.82169583662363244
	.quad	0x3fe60814bfd8a644              # double 0.68848645658471996
	.quad	0x3feabed69c32a219              # double 0.83579569346790372
	.quad	0x3fe2bd42417dbe26              # double 0.58560288230177515
	.quad	0x3fd501f4f4410efc              # double 0.32824443676894055
	.quad	0x3fc13b85e9f44e38              # double 0.13462900088835439
	.quad	0x3fedc9ab397a797d              # double 0.93086777902844597
	.quad	0x3fe4df56fb9d402d              # double 0.65226315635118726
	.quad	0x3fe7b5844de930a7              # double 0.74090781418774021
	.quad	0x3fdad90ac0448b7c              # double 0.41949719215534009
	.quad	0x3fe02011f4d768b8              # double 0.50391481228441304
	.quad	0x3fbc787fbd074f60              # double 0.11121366848902658
	.quad	0x3fd9648625bae538              # double 0.39676049885345632
	.quad	0x3fb8f353e9383628              # double 0.097462887228367934
	.quad	0x3fada199774446d0              # double 0.057873531159328473
	.quad	0x3fecf1870f756ccf              # double 0.90448334712291423
	.quad	0x3fe94d12af86f2f1              # double 0.7906583240761319
	.quad	0x3fa829727049bec0              # double 0.047191215712584889
	.quad	0x3fd809cbb5ce95f2              # double 0.37559788469874811
	.quad	0x3f92d86db3dbd360              # double 0.018403734305099007
	.quad	0x3fe6a2646e6a788d              # double 0.70732328000646449
	.quad	0x3fc5c52fbdb40b28              # double 0.17008015406471455
	.quad	0x3f9d815992657ae0              # double 0.028813743172004247
	.quad	0x3fe04ef8af549600              # double 0.50964006656857919
	.quad	0x3fc3fa9110b18d2c              # double 0.15608418765177967
	.quad	0x3fe9806c66a0e998              # double 0.79692668957368351
	.quad	0x3fef1ccff88bcd1d              # double 0.97226713699493283
	.quad	0x3fe57c5fc356d186              # double 0.67143238212752077
	.quad	0x3fe4fecfe4834366              # double 0.6561049903049081
	.quad	0x3fede148546d5bef              # double 0.93375030984577545
	.quad	0x3fe8115772ab2afe              # double 0.75211689373222135
	.quad	0x3fe8c8210bc72bf2              # double 0.77442982006448191
	.quad	0x3fd4c88781466ffc              # double 0.32473933815504075
	.quad	0x3fe82792e629f05d              # double 0.75483078912612778
	.quad	0x3fe274d52f1ebc9d              # double 0.57676181033265872
	.quad	0x3fec16611669eb64              # double 0.87773184182820473
	.quad	0x3fd21af237385ba8              # double 0.28289466278641351
	.quad	0x3fd424a1a6a56b18              # double 0.31473580621757113
	.quad	0x3fd6dd318008d79a              # double 0.35725057128308324
	.quad	0x3fd73f7e440f56c8              # double 0.36325031897045479
	.quad	0x3fbcc4765c84aea0              # double 0.11237277754542641
	.quad	0x3fc05143e3d0cb38              # double 0.12748001693543087
	.quad	0x3fee1fa378c10fa0              # double 0.94136212906640892
	.quad	0x3fe14f829e76e189              # double 0.54095583868097308
	.quad	0x3fef8f024b873310              # double 0.98620714904390816
	.quad	0x3fd02babd59c3144              # double 0.25266548023570956
	.quad	0x3fe978a59be64ece              # double 0.79597740601681166
	.quad	0x3fe7fab57716f544              # double 0.74935410747244945
	.quad	0x3fd9582fff7d6a3a              # double 0.39600753736673122
	.quad	0x3fc7d567c6e1d2dc              # double 0.18620011530915448
	.quad	0x3fef104807829828              # double 0.9707374712641057
	.quad	0x3fe7b3a6c47be7c9              # double 0.74068010688574148
	.quad	0x3fe3c76655aa7616              # double 0.6180907891427434
	.quad	0x3fe04d59fe957335              # double 0.50944232676884005
	.quad	0x3fe15986b8ed9663              # double 0.54217849844708288
	.quad	0x3fb8b089789f9fc8              # double 0.096443740796188782
	.quad	0x3febedd0d5f68219              # double 0.87278024472840621
	.quad	0x3fb8e2dae4dccb40              # double 0.097211533426883712
	.quad	0x3fea79c13bf5628a              # double 0.82736264906550727
	.quad	0x3fc5e39cc8dc2410              # double 0.17100868041623629
	.quad	0x3fd5a7ded53a989a              # double 0.33837099860319031
	.quad	0x3fc0413fe5b74d78              # double 0.126991259733227
	.quad	0x3feb7faca2aa12ba              # double 0.85933524866467015
	.quad	0x3fcdb0f5fb2bab80              # double 0.23196291698635818
	.quad	0x3fce93ebfbee98c0              # double 0.23888921548240738
	.quad	0x3fd3750300733b1a              # double 0.30401682895619475
	.quad	0x3feabd1a5c972b4a              # double 0.83558385929186696
	.quad	0x3fe4ce2187189565              # double 0.65016247163718488
	.quad	0x3fdcc3acac731ef6              # double 0.44944302407064585
	.quad	0x3fbfeaf0ce6496c0              # double 0.12467865980996873
	.quad	0x3fe7f9d3e56e3141              # double 0.74924654780037525
	.quad	0x3fe58c2904322b3b              # double 0.67335940188909349
	.quad	0x3fe84fe894f43933              # double 0.75975445835664457
	.quad	0x3fee62059b0064f1              # double 0.94946556352365807
	.quad	0x3fe44e649ca6f4ec              # double 0.63456945987823365
	.quad	0x3fd1ec2f155e739a              # double 0.28004052244960465
	.quad	0x3fdc3aaa556aa290              # double 0.44108064977130201
	.quad	0x3fd05b90730c2e88              # double 0.2555886386405537
	.quad	0x3f970e521010a820              # double 0.022515566092046524
	.quad	0x3fda2d755ffe1d0a              # double 0.40902456640510876
	.quad	0x3fd69efc42efc6a8              # double 0.35345369850902353
	.quad	0x3fec74c4f0f43bb0              # double 0.88925406514487371
	.quad	0x3fec08baccf87e6e              # double 0.87606563599906706
	.quad	0x3fede8f1b8076617              # double 0.93468557303566768
	.quad	0x3fefb3f0fa0fdd1d              # double 0.99071549263217983
	.quad	0x3feafc565417e60c              # double 0.84330288338168335
	.quad	0x3fe3a61542bfdcf7              # double 0.61402380978589022
	.quad	0x3fe2825cb5b032c8              # double 0.57841334806433853
	.quad	0x3fe75d3b8ab8d40d              # double 0.73013093084466762
	.quad	0x3fd4df50719b1174              # double 0.3261300191336638
	.quad	0x3fe6f8b8807c57c3              # double 0.71786141486040156
	.quad	0x3fb6e0a66a5bdea8              # double 0.089365387884635994
	.quad	0x3fe5826c1463065c              # double 0.67217067701148947
	.quad	0x3fbc49c3824c0220              # double 0.11050054484440652
	.quad	0x3f429f3a11a3d400              # double 5.6829772373012677E-4
	.quad	0x3fe514110f0750bc              # double 0.658699540474593
	.quad	0x3fe98dc52326381a              # double 0.79855591645332713
	.quad	0x3fcecfdc4c6e164c              # double 0.24071840030608127
	.quad	0x3fa6d1d821498710              # double 0.044569734633809088
	.quad	0x3fb778599eaefae0              # double 0.091680146447270072
	.quad	0x3fd847919b10d22e              # double 0.37936821120391329
	.quad	0x3fef356de9db9fca              # double 0.97527213740704011
	.quad	0x3fdf52e8dc7a000e              # double 0.48943540125765217
	.quad	0x3fef8be5b7261f25              # double 0.98582731028816239
	.quad	0x3fc96c15a5bf08ec              # double 0.19861097901418334
	.quad	0x3fcfbff93fc24880              # double 0.24804607022503333
	.quad	0x3fcc56ae74f10e84              # double 0.22139530859032075
	.quad	0x3fe019f38c92e621              # double 0.50316789108109472
	.quad	0x3fec2a685008b5c0              # double 0.88017669326443837
	.quad	0x3fd64d6a0a381be8              # double 0.3484749889179839
	.quad	0x3febc24db7623dde              # double 0.86746869866504617
	.quad	0x3fc0bfb1eb3ba07c              # double 0.13085006700498869
	.quad	0x3fed332ddbd334fe              # double 0.91249745306564001
	.quad	0x3fd849b8cee64ac2              # double 0.37949962811505256
	.quad	0x3fdda3202963c7ac              # double 0.46308139841050422
	.quad	0x3fe01c7033ebb067              # double 0.50347147122148506
	.quad	0x3fc197104212a8d0              # double 0.13742259241309407
	.quad	0x3fe423776a4f170d              # double 0.62932940257516778
	.quad	0x3fca68cf28ac1334              # double 0.20632352338739113
	.quad	0x3fd4a2ca3eb4cfe2              # double 0.32243591426526852
	.quad	0x3fe5f15ae341d15e              # double 0.68571228395607497
	.quad	0x3fe2dd29299ae630              # double 0.58949716688147724
	.quad	0x3fe9deacfe7b000c              # double 0.80843209937302296
	.quad	0x3fe06cd2957b1cc2              # double 0.51328400798311002
	.quad	0x3fe2bb9edc3d82ec              # double 0.58540289893798336
	.quad	0x3fecbbc087fd5f38              # double 0.8979189544724937
	.quad	0x3fb7682332f21628              # double 0.091432762086775754
	.quad	0x3fe30070ccedc772              # double 0.59380378747139972
	.quad	0x3fc457dced3b9598              # double 0.15893136581068457
	.quad	0x3fe28968c16384dc              # double 0.57927358409156282
	.quad	0x3fee9ab0dd127506              # double 0.95638316324371497
	.quad	0x3fd2f51662922db0              # double 0.29620895029139671
	.quad	0x3fe46a91f78ba60f              # double 0.63800905560236909
	.quad	0x3fe4bdc1f518ef70              # double 0.64816377516352297
	.quad	0x3fe7e25735b8aea0              # double 0.74637947552169592
	.quad	0x3fd1a4428e74458c              # double 0.27565063392202016
	.quad	0x3fdd6c1cea4a3144              # double 0.45972369079460784
	.quad	0x3fad118308a634f0              # double 0.056774229818168709
	.quad	0x3fe77174730fe2a1              # double 0.73259947274262427
	.quad	0x3fd56cd0b84c9f20              # double 0.33476655958155455
	.quad	0x3fd0ea067662bdba              # double 0.26428376732925651
	.quad	0x3fe9468452362a0d              # double 0.78985801751088192
	.quad	0x3fb23162f10b8750              # double 0.071066078041920777
	.quad	0x3f9379cb3f03c840              # double 0.019019294472805592
	.quad	0x3fe0a22cbf9590af              # double 0.51979672831341428
	.quad	0x3fd7e46bd1502f46              # double 0.37331672135109206
	.quad	0x3fe04275a318bf07              # double 0.5081127343637214
	.quad	0x3fee35eadce967bd              # double 0.94408171793769891
	.quad	0x3fead3694633b16b              # double 0.83830703460038813
	.quad	0x3fdad6917adf5450              # double 0.41934620856529126
	.quad	0x3fe51955dda35f0e              # double 0.65934270180420795
	.quad	0x3fea65532793e4f4              # double 0.82486875276586468
	.quad	0x3fbd3bed3f730758              # double 0.1141956596284478
	.quad	0x3fe763126bb89f46              # double 0.73084374465268165
	.quad	0x3fd354be10c88d06              # double 0.30204726828579032
	.quad	0x3fe0451bddbe52e7              # double 0.50843613919513764
	.quad	0x3fe53393160bb135              # double 0.6625457220630212
	.quad	0x3fca358694fbc9b8              # double 0.20475847506129496
	.quad	0x3fee0278ad0bff00              # double 0.93780168340887826
	.quad	0x3fe950c424cbf00f              # double 0.79110915362207546
	.quad	0x3fe5ffdbcdfb3643              # double 0.68748274069520965
	.quad	0x3fea7bc7c29862f5              # double 0.82760990149389946
	.quad	0x3fee99281525238c              # double 0.95619587068459699
	.quad	0x3fe8fe72125782b8              # double 0.78106025297537141
	.quad	0x3fe26cc2b791db0e              # double 0.57577644208399348
	.quad	0x3fb91bb03ca6cd60              # double 0.098078741843712347
	.quad	0x3fe9ed3ec5131d0c              # double 0.81021059504647174
	.quad	0x3fa56153bc881ae0              # double 0.041758171810263311
	.quad	0x3fbbc05f658390a8              # double 0.1084041235768064
	.quad	0x3fd3abdab1c40852              # double 0.30736415252625193
	.quad	0x3fe0a2fe805a2150              # double 0.51989674633754568
	.quad	0x3fe5122028c24eb7              # double 0.65846260033364146
	.quad	0x3fecee02c65ea120              # double 0.90405405754157541
	.quad	0x3fd58ae847e52cc4              # double 0.33660323163048766
	.quad	0x3fe6de51e3c0ba3e              # double 0.71463865740754051
	.quad	0x3fd08ed25c7337f8              # double 0.25871714618995112
	.quad	0x3fec20471b789670              # double 0.87894015660704206
	.quad	0x3f9a7a9c70f1b7c0              # double 0.025858349221770771
	.quad	0x3fd33a8f4d8bafba              # double 0.30044920513932605
	.quad	0x3fe3096ac8030ccb              # double 0.59489955010249085
	.quad	0x3fe88c851d77ab13              # double 0.76715331797945152
	.quad	0x3fd53cf318e22550              # double 0.33184506826417692
	.quad	0x3fe63a24b534ae9e              # double 0.69459758178478004
	.quad	0x3fef24cffa2c03da              # double 0.97324370252328696
	.quad	0x3fe7fd44e863cc72              # double 0.74966664684906292
	.quad	0x3fc33125da2c8768              # double 0.14993737366699667
	.quad	0x3fbab147c98d9518              # double 0.10426758452156937
	.quad	0x3fea39e751f1aaca              # double 0.81956830982866191
	.quad	0x3fec24bb8570a559              # double 0.87948394834999555
	.quad	0x3fc1a4a5f5ddeaf8              # double 0.13783716683595748
	.quad	0x3fcc585697d9eaa0              # double 0.22144586958514356
	.quad	0x3fd278622f5d8282              # double 0.28859762788309962
	.quad	0x3fe37c7e770270c8              # double 0.6089470219044637
	.quad	0x3fbe685a4499b900              # double 0.1187797944528235
	.quad	0x3fe361d170bea1ab              # double 0.60569068928184799
	.quad	0x3fe3e3b6aa39acf2              # double 0.62154706236961332
	.quad	0x3fe3c2819086760f              # double 0.61749342181764344
	.quad	0x3feb06315e5923de              # double 0.84450596263297562
	.quad	0x3fca07dca25a75cc              # double 0.20336492469225076
	.quad	0x3fa96802b1303f40              # double 0.049621662263346966
	.quad	0x3fcf3664767d2548              # double 0.24384742532337556
	.quad	0x3fd51bb13c043df8              # double 0.329815205202038
	.quad	0x3fe343c401375568              # double 0.60202217328575802
	.quad	0x3fea0ae2be44249a              # double 0.81382882272113766
	.quad	0x3fef3dd20e0e4894              # double 0.97629645104668094
	.quad	0x3fa405f08c577590              # double 0.039107815867946205
	.quad	0x3fe8cff646e4f091              # double 0.77538598867933406
	.quad	0x3fee5f75ead54801              # double 0.94915290704580013
	.quad	0x3fefc3651474484b              # double 0.99260190958944727
	.quad	0x3fe0e13910b16159              # double 0.52749303112345125
	.quad	0x3fe9d8ad6ddfaf2a              # double 0.80769988498420742
	.quad	0x3fe14264167c9d29              # double 0.5393543662256991
	.quad	0x3fec93ec6e21a70e              # double 0.89305707464265693
	.quad	0x3fdd6397d4eff9f0              # double 0.45920367998760891
	.quad	0x3f92b4fc1e6dab80              # double 0.01826852737159923
	.quad	0x3fe0c3721b943812              # double 0.52385812174338953
	.quad	0x3fefa04e5deef742              # double 0.98831861826304412
	.quad	0x3fd6812a9c26aaa0              # double 0.35163369416356183
	.quad	0x3fc3ac1114facd5c              # double 0.15368855976485463
	.quad	0x3f9222e90f8468e0              # double 0.017711297580810803
	.quad	0x3fdb857a2d301b10              # double 0.43002180493242381
	.quad	0x3fea39a3dbd5f3a1              # double 0.81953614174527811
	.quad	0x3fe97e3e7a183ea1              # double 0.7966606506979198
	.quad	0x3fd55287fb094f8e              # double 0.33316230311651729
	.quad	0x3fe17f66c02ae9ac              # double 0.54680192501773695
	.quad	0x3fe4c5ccafd11c86              # double 0.64914545382716038
	.quad	0x3fbe766b3f725758              # double 0.11899442957868922
	.quad	0x3fe4ef4a53e257c4              # double 0.65421024688361529
	.quad	0x3fcfd71cc1287afc              # double 0.2487522071032443
	.quad	0x3fd589b44ecba738              # double 0.33652980513453512
	.quad	0x3fe7344dbd829ad2              # double 0.72513472570138959
	.quad	0x3fe820bd0d700110              # double 0.75399639725222478
	.quad	0x3fe75bfd01982753              # double 0.72997904120823376
	.quad	0x3fe157506d203722              # double 0.54190846742287513
	.quad	0x3fe25aa7b2ee00a1              # double 0.57356629321295227
	.quad	0x3f9c180ea6dd5aa0              # double 0.027435521063433499
	.quad	0x3fd4d1cee6f7fa66              # double 0.32530567698987622
	.quad	0x3fe9cd493d801038              # double 0.80630933772818647
	.quad	0x3fe686a0217b3c96              # double 0.70393377818426717
	.quad	0x3fd61bf6a63a0b24              # double 0.34545675499991746
	.quad	0x3fe71199173e937d              # double 0.72089819469384475
	.quad	0x3fbc231099e50938              # double 0.10991004712289942
	.quad	0x3fe4b67b95139b3f              # double 0.64727572552224177
	.quad	0x3fe0423285a81748              # double 0.50808073143773758
	.quad	0x3fdaf6df3fbd04e8              # double 0.42131787514160957
	.quad	0x3fed7bfa69406697              # double 0.92138405377336852
	.quad	0x3fe871b51a1fe670              # double 0.76388030149901276
	.quad	0x3fe55d601b82066d              # double 0.66764836666716365
	.quad	0x3fd235a996fdba1e              # double 0.28452529664255788
	.quad	0x3fe62ce8ba085a22              # double 0.69298206648347027
	.quad	0x3fe2b01e15ebf726              # double 0.58399872094716865
	.quad	0x3fefb7f5bfc0a71a              # double 0.99120604945821644
	.quad	0x3fbba34beb3b8338              # double 0.10796045773487328
	.quad	0x3fe2bc03586efb33              # double 0.58545081398174259
	.quad	0x3fde20f760dcdfb4              # double 0.4707621045995396
	.quad	0x3fd3429f3c6362da              # double 0.30094128510749629
	.quad	0x3fef9ae4207f3cc0              # double 0.98765760752748832
	.quad	0x3fd686d85c1dccc6              # double 0.35198029514067419
	.quad	0x3fd38f6089ac49c4              # double 0.3056260437453171
	.quad	0x3fe3a1176bdab4ff              # double 0.61341448846147262
	.quad	0x3fe0bf6afa7accd1              # double 0.5233664409810449
	.quad	0x3fb9bffd649b28d8              # double 0.10058578211024682
	.quad	0x3fec77cc0169fb6e              # double 0.8896236446015402
	.quad	0x3feb0c73a3a8ed10              # double 0.84526998486345128
	.quad	0x3fdb4127cadc2eee              # double 0.42585177240901728
	.quad	0x3fc3a054152dd0e8              # double 0.15333033594254819
	.quad	0x3fe585a2ff41e6e9              # double 0.67256307463614207
	.quad	0x3fe8e3a88c634164              # double 0.77779033107257733
	.quad	0x3fdf019dec6010fa              # double 0.48447368701478377
	.quad	0x3feaecc447ac3497              # double 0.84140218733377281
	.quad	0x3fe14c6106dea3d2              # double 0.54057360975013524
	.quad	0x3fc0a0e6574cc4dc              # double 0.12991027128877064
	.quad	0x3fd15f1957e04766              # double 0.27142938214921342
	.quad	0x3fe317839a7d7265              # double 0.59662037061532358
	.quad	0x3fd5783e1ca3d6a6              # double 0.33546402737497727
	.quad	0x3fe67dae7e3e1c67              # double 0.70284199387323276
	.quad	0x3fe758d98f37106d              # double 0.72959592792223094
	.quad	0x3fd809ba02282236              # double 0.37559366427061336
	.quad	0x3fe6fbc423426b21              # double 0.71823317419634602
	.quad	0x3f805873a1e8d600              # double 0.0079812082086432312
	.quad	0x3fe9b8fb4da69d40              # double 0.80383076826266375
	.quad	0x3fd35ca8b1997b5e              # double 0.30253045409874868
	.quad	0x3fcc1c1cb304ee1c              # double 0.21960791340994568
	.quad	0x3fecf6ed2686f840              # double 0.90514237904404382
	.quad	0x3fd3d52e1144f3fc              # double 0.30988647161922223
	.quad	0x3fbe5636ca77d510              # double 0.11850302165096971
	.quad	0x3fd88a18129a43aa              # double 0.38342859093341508
	.quad	0x3fb6dcad56472ee0              # double 0.089304765285472154
	.quad	0x3fe154211e3e7d6a              # double 0.54151969821024903
	.quad	0x3fbbcfd04590a6d8              # double 0.10863973329892518
	.quad	0x3fd5f8a4b172c8ec              # double 0.34330098465865322
	.quad	0x3fc28f18e1c08b10              # double 0.14499197981884793
	.quad	0x3fd873238e1c3f6c              # double 0.38202751996958884
	.quad	0x3fd9c885f38c55f6              # double 0.40286396774294475
	.quad	0x3fdd23d77452d9e4              # double 0.45531259879808617
	.quad	0x3feb40909ea120ca              # double 0.85163146002107593
	.quad	0x3fd5799b64ae0084              # double 0.33554730255128384
	.quad	0x3fd2026107becda2              # double 0.28139520412806907
	.quad	0x3fe09959dda13702              # double 0.51871960913715065
	.quad	0x3fe5d085ce28d219              # double 0.6817044283439514
	.quad	0x3fa9620bbf8202c0              # double 0.049576155784057274
	.quad	0x3fe721c2cd782aef              # double 0.72287120943778216
	.quad	0x3fde628612b79394              # double 0.47476341083375329
	.quad	0x3fbbe25ca81ce808              # double 0.10892275909728266
	.quad	0x3fd5b56c0d383f32              # double 0.33919812479961131
	.quad	0x3fec61df00153f91              # double 0.88694715515338107
	.quad	0x3fe7a2a3a607f4b8              # double 0.73860342433876891
	.quad	0x3faa47e1d735d040              # double 0.05132966758802171
	.quad	0x3fd4b7c4005c3aa6              # double 0.3237161639707814
	.quad	0x3fe90ce8c7ab9788              # double 0.78282584188558335
	.quad	0x3fecd7f715980f3c              # double 0.90136293618750285
	.quad	0x3fc7b09e14d81e80              # double 0.1850774385240932
	.quad	0x3fd7099f2ffef904              # double 0.3599622696600735
	.quad	0x3fd702743a744008              # double 0.35952478130730059
	.quad	0x3feecc925b4621dd              # double 0.96247213198608572
	.quad	0x3fe1823342192c82              # double 0.54714358243781214
	.quad	0x3fe499fed50dccd7              # double 0.64379827129450973
	.quad	0x3fe5c9b0f32b3463              # double 0.68087050908947011
	.quad	0x3fc13d0a105d8a98              # double 0.13467527197925189
	.quad	0x3fdd8181d1f79f52              # double 0.46102948670021704
	.quad	0x3fe669c93285e349              # double 0.70041332118771849
	.quad	0x3fc279012b34ee18              # double 0.14431776628212911
	.quad	0x3fdd9b9834b87fc4              # double 0.46262173794275108
	.quad	0x3fe5322266f9bf79              # double 0.66236991989533955
	.quad	0x3fd9d1a6a800494a              # double 0.40342108160361489
	.quad	0x3fce1a1560488794              # double 0.23517100526174473
	.quad	0x3fed97cd2826afc5              # double 0.92478044359221967
	.quad	0x3fe1e50c0ef52b2c              # double 0.55920985146926716
	.quad	0x3fae5029f30afdc0              # double 0.059205351751639324
	.quad	0x3fe8569c326ec781              # double 0.76057252740996273
	.quad	0x3fe6bc916bbc3d2b              # double 0.71051856081058895
	.quad	0x3fec6fe177e11afe              # double 0.88865731634072609
	.quad	0x3fe059a80024d888              # double 0.51094436672316679
	.quad	0x3fc76e51a230b4c0              # double 0.18305416507192795
	.quad	0x3fd82d4f0521dc66              # double 0.37776542187879725
	.quad	0x3fcfe72c287a6d04              # double 0.24924232460475804
	.quad	0x3fea57db089a6a8a              # double 0.82322456054983317
	.quad	0x3fbc381ce9ac0bf8              # double 0.11023121552356929
	.quad	0x3fe336681eb068c0              # double 0.60039144510235332
	.quad	0x3fd4eb4e9f773de6              # double 0.32686200688200839
	.quad	0x3fd88d5872edd6ea              # double 0.38362704490223953
	.quad	0x3fecc1e722b8c4c2              # double 0.89866978437034839
	.quad	0x3fddc4e77aa148c0              # double 0.46514307952487499
	.quad	0x3fce08c30b24faec              # double 0.23464239162600309
	.quad	0x3fab92682f5e0350              # double 0.053851371557363081
	.quad	0x3fe741e3c9fc703e              # double 0.72679318857581854
	.quad	0x3fedd790a9940c80              # double 0.93256409760250847
	.quad	0x3fe735d8eb4ac484              # double 0.72532316165428812
	.quad	0x3fdf085effee1bc0              # double 0.48488593094992538
	.quad	0x3fe9c758478ec52d              # double 0.80558408714401752
	.quad	0x3feb09b03a5b8555              # double 0.84493266485166407
	.quad	0x3fd0028ac314e42e              # double 0.25015515376032027
	.quad	0x3fe73372d7c7872a              # double 0.7250303472939994
	.quad	0x3fee43dfc7652728              # double 0.9457854170261486
	.quad	0x3fd7cb0a06620012              # double 0.37176752684899939
	.quad	0x3fcb760a9d34a720              # double 0.21453983951624256
	.quad	0x3fd3fd55abdbdbc4              # double 0.31233732016647431
	.quad	0x3fe0f0817c6cef9f              # double 0.52935861875402057
	.quad	0x3fe67f6758bc0054              # double 0.70305220919545741
	.quad	0x3fd7967c9bf92fe4              # double 0.36855998260284495
	.quad	0x3fdec00e111452e6              # double 0.48047210376652882
	.quad	0x3fb38e2d85ebb408              # double 0.076388211436736353
	.quad	0x3fd739a285cbea7c              # double 0.3628927523238088
	.quad	0x3fef05438b0b6b49              # double 0.96939255864286011
	.quad	0x3fdbb35bf507db24              # double 0.43282221726205905
	.quad	0x3fc471d73a798128              # double 0.15972414355474851
	.quad	0x3fe53b2775c62850              # double 0.66347096445793774
	.quad	0x3fd46dfb1904675a              # double 0.31921269839368949
	.quad	0x3fd1ce737f3956ce              # double 0.27822577881066202
	.quad	0x3fdaaf88814df236              # double 0.41696369769468633
	.quad	0x3fd2480ea3e36468              # double 0.28564802174293513
	.quad	0x3fe01b330a695b31              # double 0.50332023652558722
	.quad	0x3fed99724950c86c              # double 0.92498125380940399
	.quad	0x3fad6bc20babd730              # double 0.05746275322409955
	.quad	0x3fe603f12fb8b96d              # double 0.68798121758099529
	.quad	0x3fed0987ecf79e4d              # double 0.90741344721477335
	.quad	0x3fed42c94a033b64              # double 0.91440262275305572
	.quad	0x3fdf28783e3bb292              # double 0.4868450744386702
	.quad	0x3fe18e04b2921e1e              # double 0.54858622433761517
	.quad	0x3fe65436cfaf7e73              # double 0.69778004230097534
	.quad	0x3fee7fe324631a51              # double 0.95311123949870524
	.quad	0x3fe62b02c590d475              # double 0.69275034510668709
	.quad	0x3fecdf84d8b87f10              # double 0.90228502586612258
	.quad	0x3fe7411afd8b6291              # double 0.72669744034199557
	.quad	0x3fd2f7eaad3258aa              # double 0.29638163484322411
	.quad	0x3fd664fe5d9269b4              # double 0.34991416108973827
	.quad	0x3feeea9bd31ce8c5              # double 0.96613875611299049
	.quad	0x3fefc1bc318a9c9d              # double 0.99239930797638786
	.quad	0x3fc063cc2e3bb2e8              # double 0.12804558045845416
	.quad	0x3fdeaa13768ffb26              # double 0.47913061693536674
	.quad	0x3fd127eb3a8cec10              # double 0.26806145398921988
	.quad	0x3fe74df7c56b95f6              # double 0.72826756056446018
	.quad	0x3faf0aaef9712d10              # double 0.060628383588289592
	.quad	0x3fc9ae9584419e38              # double 0.20064038236454151
	.quad	0x3fcb22c03662456c              # double 0.2119980111643075
	.quad	0x3fea7afea68e8c7d              # double 0.82751400499945726
	.quad	0x3fddf6b59e71cd28              # double 0.46818294976329122
	.quad	0x3f85e9e053317c00              # double 0.010699989832742673
	.quad	0x3fedd7bdbcad128a              # double 0.93258559084695603
	.quad	0x3fd3b0a6e296dac0              # double 0.30765697601183817
	.quad	0x3feaac9f949aa26c              # double 0.83357218765475016
	.quad	0x3fe03bd5c39472e8              # double 0.50730407904810892
	.quad	0x3fdf4b3525a77ed6              # double 0.48896530797172255
	.quad	0x3fee4d601694359c              # double 0.94694523248624618
	.quad	0x3fc4c7a4584b82bc              # double 0.16234258948590774
	.quad	0x3fc9a66e4a7801c4              # double 0.20039156566782712
	.quad	0x3fdc33e3946cecce              # double 0.44066705221821401
	.quad	0x3fed0559f604f9a6              # double 0.90690324831648605
	.quad	0x3fef068443dc2c32              # double 0.96954549077907459
	.quad	0x3fec879ee905302e              # double 0.891555266492565
	.quad	0x3fe7102cb4278ebb              # double 0.72072444139890679
	.quad	0x3fca8948ba7cfc14              # double 0.2073145781123179
	.quad	0x3fd6415bed3c2648              # double 0.34773920218922116
	.quad	0x3fbab9116597db78              # double 0.1043864129095321
	.quad	0x3fd71fbb920c8c48              # double 0.36131181013678715
	.quad	0x3fe08d6212035d33              # double 0.51725867765609335
	.quad	0x3fb7e3d748800108              # double 0.093320326996039538
	.quad	0x3fe25a2d6e1ae8f0              # double 0.57350799088388094
	.quad	0x3fe281c1cb3d0734              # double 0.57833947844503664
	.quad	0x3fefa649796d3a24              # double 0.98904870716234372
	.quad	0x3fdd5755cb2c1064              # double 0.45845551339176027
	.quad	0x3fcd7ce9e919fd40              # double 0.23037456399831946
	.quad	0x3fef1fce94849a35              # double 0.97263268477838116
	.quad	0x3fd72aeed17c6ee2              # double 0.36199541528342938
	.quad	0x3fe3a20aa75f6bdf              # double 0.61353047075260381
	.quad	0x3fe056e698057904              # double 0.51060800258326866
	.quad	0x3fdc3d5c1c53556c              # double 0.44124510542072559
	.quad	0x3fe7c4356b95a6c9              # double 0.74270125401127374
	.quad	0x3fed9fac4007fb01              # double 0.92574131494606615
	.quad	0x3fe12d69061e7d3e              # double 0.53679324336182055
	.quad	0x3fe524ff770e6cce              # double 0.66076634648507038
	.quad	0x3fe6298ce8c0c14f              # double 0.69257207355080108
	.quad	0x3fed21265ca422f8              # double 0.91029661268211637
	.quad	0x3fe0e417766df365              # double 0.52784321909676335
	.quad	0x3feb5441ded3c510              # double 0.85403531571333424
	.quad	0x3fc0589d50e84730              # double 0.12770430040887382
	.quad	0x3fe58649edb7e5a6              # double 0.67264267377247644
	.quad	0x3fee6988b8491162              # double 0.95038257592436204
	.quad	0x3fc1a1c9c3190e48              # double 0.13774988199485194
	.quad	0x3fe5324e6bd2b86d              # double 0.66239090975956361
	.quad	0x3fb6793c55f89700              # double 0.08778740977194488
	.quad	0x3fe52447dbaa2d46              # double 0.66067879584571965
	.quad	0x3fdbd61eb18c3282              # double 0.43494384134900355
	.quad	0x3fd0c376c16f8b9c              # double 0.2619301690121405
	.quad	0x3fda447b9dbbc1ea              # double 0.41042986301093143
	.quad	0x3fcc4c84eec27f90              # double 0.22108518274489741
	.quad	0x3fe7448d4ee2a9bc              # double 0.72711816222481884
	.quad	0x3fefdcb94a702c03              # double 0.99569382227616676
	.quad	0x3fe026f1b558d778              # double 0.50475392741530722
	.quad	0x3fb24614e419abc0              # double 0.071381860436004807
	.quad	0x3f896f3369931a80              # double 0.012419130000478562
	.quad	0x3fd6176d4cf18142              # double 0.3451798678779775
	.quad	0x3fc6250dfb4f70b0              # double 0.17300581713687313
	.quad	0x3fd7910f15d3c7ca              # double 0.36822869426316329
	.quad	0x3fd84f0b9a9e42ac              # double 0.37982454394754472
	.quad	0x3fa4048ced69c0d0              # double 0.039097217541781526
	.quad	0x3fd65973a5aa6d20              # double 0.34920970133107865
	.quad	0x3fe6460848ed7e69              # double 0.69604887241071112
	.quad	0x3fe6ea237d30ead8              # double 0.71608137561210139
	.quad	0x3fc55db19119995c              # double 0.16692180237732657
	.quad	0x3fda606ec2a2bb78              # double 0.41213578231229731
	.quad	0x3fe1c032b6704f10              # double 0.55471168167648166
	.quad	0x3fccbf709abfe040              # double 0.2245922809231633
	.quad	0x3fe782c0ede3d242              # double 0.73471113646389363
	.quad	0x3fda4b1a6ee0be1e              # double 0.41083393886489883
	.quad	0x3fe1450df5d63250              # double 0.5396795083521031
	.quad	0x3fb9afdf0c2d3380              # double 0.10033983275680036
	.quad	0x3fd64b53c8d75382              # double 0.34834761250868251
	.quad	0x3fe7c98f18e522fe              # double 0.74335436689679546
	.quad	0x3fe7bde28ff64029              # double 0.74192932241021936
	.quad	0x3fdc429192a373bc              # double 0.44156302757420085
	.quad	0x3fe8910f42882f45              # double 0.76770747179532661
	.quad	0x3feab1e8b3f87719              # double 0.83421740675450728
	.quad	0x3fd3b9d79a24e9c4              # double 0.30821790745872257
	.quad	0x3fd7f02df61e3582              # double 0.37403439555131268
	.quad	0x3feb10d1266808bb              # double 0.84580285550352785
	.quad	0x3fea5aa4293b300d              # double 0.82356460621804362
	.quad	0x3fe2ca41eedcf31b              # double 0.58718964245744887
	.quad	0x3fe8233e9426123b              # double 0.75430230078979521
	.quad	0x3fd456ed4f6c2598              # double 0.31780560260866642
	.quad	0x3fd59d64ce095868              # double 0.33773155327560866
	.quad	0x3fd393e6f81e04b6              # double 0.30590223531914817
	.quad	0x3fe1eb75c88988a7              # double 0.5599926869147297
	.quad	0x3fe7d6a36662ed01              # double 0.74495096204137223
	.quad	0x3fc4ae111ca8fa14              # double 0.16156209849755554
	.quad	0x3fc1c542d02e5250              # double 0.13883242764554149
	.quad	0x3fdb0abc6c1a7898              # double 0.42253027493451034
	.quad	0x3f862e43903f8040              # double 0.01083042892418018
	.quad	0x3fd1690d18700d6e              # double 0.27203681360716458
	.quad	0x3fe9a6b1b057b19e              # double 0.80159840051560471
	.quad	0x3fcd83adff3484fc              # double 0.23058104478062791
	.quad	0x3fe83cdf6401955c              # double 0.75743073971231522
	.quad	0x3fcddf528cba1e50              # double 0.2333777606147458
	.quad	0x3fc18ea06463ce1c              # double 0.1371651163277513
	.quad	0x3fb75da18a5fb748              # double 0.091272445948303305
	.quad	0x3fef7109b2f7acf2              # double 0.98254857019983732
	.quad	0x3fc0e4a3e29f4ffc              # double 0.13197754445593535
	.quad	0x3fe6b5f6f01942d3              # double 0.70971247572205198
	.quad	0x3fec6661a3e37d3c              # double 0.88749773034570678
	.quad	0x3feb461955b5f388              # double 0.85230700245266267
	.quad	0x3fedb707ee2aa0d1              # double 0.92859264866731384
	.quad	0x3fcaa2c1c13fb818              # double 0.20809194503766615
	.quad	0x3fe8ab5a355c7a7c              # double 0.7709170381748005
	.quad	0x3fc784a519d48f44              # double 0.18373550187345178
	.quad	0x3fe6b25672c3acc8              # double 0.70926973738587495
	.quad	0x3fdb38fe133dab74              # double 0.42535354498857392
	.quad	0x3fca6500113541f0              # double 0.20620728340374184
	.quad	0x3fe6dd4383ab6cda              # double 0.71450973240589666
	.quad	0x3fe7cf6780585f4a              # double 0.74406790797636657
	.quad	0x3fed34c8b1ace47f              # double 0.912693354627791
	.quad	0x3fd0e56456655098              # double 0.26400097310148274
	.quad	0x3fee05e7cf9c9401              # double 0.93822088765284672
	.quad	0x3fc9bb6dd66f6704              # double 0.20103238077609131
	.quad	0x3fdc88bdf9a86998              # double 0.44584607487345229
	.quad	0x3fb2de96b1080830              # double 0.073708933086920281
	.quad	0x3fe9065b0b8ae957              # double 0.78202583555620719
	.quad	0x3fdcd0134b9d6b40              # double 0.45019991287488281
	.quad	0x3fe7d2b118ada385              # double 0.74446921176887371
	.quad	0x3fec36ddfe6d9acb              # double 0.88169765179630966
	.quad	0x3fefcc3484bc3d7e              # double 0.99367738652101401
	.quad	0x3facfe147843ee00              # double 0.056625976258114719
	.quad	0x3f786c337dd6f500              # double 0.0059625636471853927
	.quad	0x3fc30d53d5872a4c              # double 0.14884422231837602
	.quad	0x3fd6ad8a8a986614              # double 0.35434211287210471
	.quad	0x3fdca6cb14e84cb6              # double 0.44768025438061032
	.quad	0x3fed8fbe57b30c16              # double 0.92379681710042649
	.quad	0x3fd02f6819c8e488              # double 0.25289347188988431
	.quad	0x3fe2480d61f75d63              # double 0.57129544385945186
	.quad	0x3feb7c50be0bd60d              # double 0.85892521971135383
	.quad	0x3feae7cf5b62bd66              # double 0.8407971176983835
	.quad	0x3fd39827738d139a              # double 0.30616174968991461
	.quad	0x3fbe4374ac5fce58              # double 0.11821679313998723
	.quad	0x3fef5dc0307acfae              # double 0.9801941820974116
	.quad	0x3fe0d39604da1338              # double 0.52582837054851606
	.quad	0x3fbe5fae252fa560              # double 0.11864746482719601
	.quad	0x3fe12129dcc6dfc2              # double 0.53529828186491835
	.quad	0x3fa9b3b59e645650              # double 0.050199199280694828
	.quad	0x3fea29ac89c95e91              # double 0.8175871554512516
	.quad	0x3fe26f0aa9ca5581              # double 0.57605488931828586
	.quad	0x3fe1c65c2558b63f              # double 0.55546386045688922
	.quad	0x3fd6c53041416086              # double 0.35578543064685453
	.quad	0x3fb9306c1583fc50              # double 0.098395114186119458
	.quad	0x3fc43dd86c7456bc              # double 0.15813737197520605
	.quad	0x3fec49387f960489              # double 0.88393807334081587
	.quad	0x3fc99d32246985b0              # double 0.20010973718585268
	.quad	0x3fb77c9fcdd5e460              # double 0.091745364907084959
	.quad	0x3fbf6644bef429d0              # double 0.12265424406010728
	.quad	0x3fd26091f22c3f54              # double 0.2871441712350038
	.quad	0x3fe073ca8af37724              # double 0.51413466585993151
	.quad	0x3fef58c9b4e9eb70              # double 0.97958836874691535
	.quad	0x3fe3087d04228272              # double 0.59478617484644603
	.quad	0x3fd8cb9bae6eb95c              # double 0.38742725405145051
	.quad	0x3fd6512b3ab93412              # double 0.34870415434562674
	.quad	0x3fe637fc4e94f6fc              # double 0.69433417652155027
	.quad	0x3fe5f46764d48f2b              # double 0.68608445828838194
	.quad	0x3febb8523451d3db              # double 0.86625013559989428
	.quad	0x3fe4f398ab28e511              # double 0.65473588399541616
	.quad	0x3fe906c67eddbf36              # double 0.7820770719390342
	.quad	0x3fea7855cae49e94              # double 0.8271893465761928
	.quad	0x3fe0f032d826c885              # double 0.52932111947144789
	.quad	0x3fc8b385b212afd8              # double 0.19297858424158565
	.quad	0x3feafe4ddf759144              # double 0.84354299206146565
	.quad	0x3fe144cded0e78f2              # double 0.53964897441963289
	.quad	0x3fede288a316c396              # double 0.9339030442553049
	.quad	0x3feca36f57e32f38              # double 0.89495055356517295
	.quad	0x3fcce55cf4a585a4              # double 0.2257496065677006
	.quad	0x3fd44149db670cf8              # double 0.31648489404706437
	.quad	0x3fcd8afe4725f5d8              # double 0.23080423807179673
	.quad	0x3fde64ae7be1a24a              # double 0.47489511583129185
	.quad	0x3fe870c2e135c928              # double 0.76376480089519294
	.quad	0x3fd6a95651e4307c              # double 0.35408552167132945
	.quad	0x3fc9417c1d0ca65c              # double 0.19731093805721656
	.quad	0x3fd1926548f47f92              # double 0.27456028103369434
	.quad	0x3fd1d323b297a50c              # double 0.27851192894611709
	.quad	0x3fd9476c18f69124              # double 0.39498426854904012
	.quad	0x3fe344f4780776d0              # double 0.60216735308832803
	.quad	0x3fadb0a85d5b3b50              # double 0.057988416095773432
	.quad	0x3f868854ed08eec0              # double 0.011002219661455981
	.quad	0x3fea58dd58024eea              # double 0.82334773244153081
	.quad	0x3febb75aa5b03f7c              # double 0.86613209115056077
	.quad	0x3fe3e62e8f74a867              # double 0.62184837359133105
	.quad	0x3fe92675dd3960b3              # double 0.78594487388456569
	.quad	0x3fd99f514b805fce              # double 0.40034897206487308
	.quad	0x3fd7b6cdff19b444              # double 0.37053251182698355
	.quad	0x3fd1df91bd3935b8              # double 0.27927058676581451
	.quad	0x3fd8b8aef2824ab2              # double 0.38627217943682546
	.quad	0x3fefac67fd323515              # double 0.98979567959182424
	.quad	0x3fe9f13456aa80eb              # double 0.81069390227278626
	.quad	0x3fd0e95f5f9b67d2              # double 0.26424393021227133
	.quad	0x3fe35fa91df85b81              # double 0.60542732099098384
	.quad	0x3fdc5ad296470514              # double 0.44304337192086618
	.quad	0x3fc25d42c33c28c8              # double 0.14347109349211551
	.quad	0x3fd656bca5258200              # double 0.34904399993504853
	.quad	0x3fd2f0da6b6106fc              # double 0.29595051275474282
	.quad	0x3fe2c299c8d890f7              # double 0.58625497081496192
	.quad	0x3fda529569f9eb1a              # double 0.41129050587885418
	.quad	0x3feb538d8def36cc              # double 0.85394933435028397
	.quad	0x3fe1c2ba41928732              # double 0.55502045447449277
	.quad	0x3feb085e954da482              # double 0.84477166329192266
	.quad	0x3fe08ba7ad4abebb              # double 0.51704772802437249
	.quad	0x3fd3b14646d731cc              # double 0.30769497793224043
	.quad	0x3fe1f1139d9c8b8a              # double 0.56067829879280962
	.quad	0x3fe12784ce111698              # double 0.53607406852161699
	.quad	0x3fea5801ad4a40ed              # double 0.82324298711503519
	.quad	0x3fb3eb11b9e4c5c8              # double 0.07780562199038521
	.quad	0x3fbceff49160a6b0              # double 0.11303642796760971
	.quad	0x3fd8612e25b7aea0              # double 0.38093141253805562
	.quad	0x3fe2067a2cb1762b              # double 0.56329067925589038
	.quad	0x3fd0fb8958ff65f8              # double 0.26535257044960714
	.quad	0x3fe399c838aee25b              # double 0.61252223082471902
	.quad	0x3fca8572bda8dfe4              # double 0.20719751606679815
	.quad	0x3fd441b9e7c874a8              # double 0.31651160845815207
	.quad	0x3fb9be68d634c2a0              # double 0.10056166867867455
	.quad	0x3fef41aaa15fe07f              # double 0.97676593321286009
	.quad	0x3fee5b5014d0aaeb              # double 0.9486465841813162
	.quad	0x3fd060ff1c130390              # double 0.25592019788387521
	.quad	0x3fecabe69aa677aa              # double 0.89598398404244972
	.quad	0x3fca0520b691d008              # double 0.20328148760347653
	.quad	0x3fd4b45846151316              # double 0.32350737422920994
	.quad	0x3fac2dfe67866130              # double 0.055038404595679657
	.quad	0x3fd013a8573cdb54              # double 0.25119980353649862
	.quad	0x3fa37fdcbab32a40              # double 0.03808488635111873
	.quad	0x3fd78075aaf33c50              # double 0.36721555418347851
	.quad	0x3fd0d45a022b0e44              # double 0.26296091281640011
	.quad	0x3fc82483dcdfc7f0              # double 0.18861435208196964
	.quad	0x3fd4924b0be3367e              # double 0.32142902527707651
	.quad	0x3fefa466c19e6af9              # double 0.98881852928329216
	.quad	0x3fefa7e39ec8b850              # double 0.98924427998077569
	.quad	0x3fb26591d82ec190              # double 0.071862330702748389
	.quad	0x3fdbd502ecc2ec0e              # double 0.43487618561965824
	.quad	0x3fe1d89dcb68b2b2              # double 0.5576924298125816
	.quad	0x3fce2f4dfd99ca60              # double 0.23581862337921944
	.quad	0x3fefacc44cac40f3              # double 0.98983969664734983
	.quad	0x3fd654dd40a69b18              # double 0.34892970384173472
	.quad	0x3fda693c36469f44              # double 0.41267304706933694
	.quad	0x3fe2aa1e93b012a7              # double 0.5832665333296817
	.quad	0x3fcf122c935c572c              # double 0.24274213023516589
	.quad	0x3fef59a2369f5b60              # double 0.97969160717444125
	.quad	0x3fd908076a46adb0              # double 0.39111504915737338
	.quad	0x3fe9681740628c17              # double 0.79395639968095366
	.quad	0x3faf7af53098d780              # double 0.061484968359237335
	.quad	0x3fc90dd60a5a7140              # double 0.19573474412471548
	.quad	0x3fddc96ccb5cb208              # double 0.46541900500849964
	.quad	0x3fe063acd35d988d              # double 0.51216737062783724
	.quad	0x3fe14776b13598b7              # double 0.53997358905032555
	.quad	0x3fe088a0ade1f92e              # double 0.51667818032709589
	.quad	0x3fe095375050548f              # double 0.51821485220229302
	.quad	0x3feca806edc23ffb              # double 0.8955111163832038
	.quad	0x3feaf965181b83b5              # double 0.84294371326915629
	.quad	0x3fd08f32d9abd4b8              # double 0.25874015099482106
	.quad	0x3fe6799ed7798c81              # double 0.70234624943658741
	.quad	0x3fe8c359d2589675              # double 0.77384654124462193
	.quad	0x3fe6cd9d024c5e59              # double 0.71259928177728249
	.quad	0x3fd72b2664c7d662              # double 0.36200866548401767
	.quad	0x3feb5c87c46730f1              # double 0.8550452075956213
	.quad	0x3fe2285c819412c5              # double 0.56742692287715413
	.quad	0x3fdfd8a16b4f5b60              # double 0.49759707908144968
	.quad	0x3fc5c4faf103a0f4              # double 0.17007385986585855
	.quad	0x3fdb4312047e5aac              # double 0.42596865118813798
	.quad	0x3fcacbffee306d10              # double 0.20935057764368326
	.quad	0x3fd8b26c420a3bae              # double 0.38589006852356078
	.quad	0x3fe36c65173697a4              # double 0.60698179754102854
	.quad	0x3fe388569bd940c9              # double 0.61039286078632771
	.quad	0x3fece87b0045709a              # double 0.90337896397570039
	.quad	0x3fd895501f0bb694              # double 0.3841133406811903
	.quad	0x3fbd870d08b59810              # double 0.1153419634116235
	.quad	0x3fcd6c06b5165224              # double 0.22985919801853172
	.quad	0x3fe5166ac47b78c2              # double 0.65898645759059371
	.quad	0x3fcb4adc2ac954d8              # double 0.21322204674894496
	.quad	0x3febf250a754ca2c              # double 0.87332947427632268
	.quad	0x3fef21b07eae6147              # double 0.97286247961441396
	.quad	0x3fefd88eedc59e43              # double 0.99518534126122693
	.quad	0x3fdcadaa577ea700              # double 0.4480996946755198
	.quad	0x3fe1da8db6abdcaa              # double 0.5579289024161842
	.quad	0x3fe917a1c7a4b987              # double 0.78413475983488545
	.quad	0x3fed7123b9163cad              # double 0.92006097936418529
	.quad	0x3fcf6dbeed217588              # double 0.2455366762032265
	.quad	0x3fe6cd73327a2e60              # double 0.71257934435693571
	.quad	0x3fe11b3c7e2bed27              # double 0.53457474367988744
	.quad	0x3fc4b331c1b3d078              # double 0.1617185779392718
	.quad	0x3fef09e7635ff7db              # double 0.96995896729617514
	.quad	0x3fb8acbd5e1f69c8              # double 0.096385798911263199
	.quad	0x3fedb6be2d5307df              # double 0.9285574803582185
	.quad	0x3feda01ed5789f45              # double 0.92579595273580451
	.quad	0x3fe2c001e90c2fb3              # double 0.58593841092214516
	.quad	0x3fcc80d00fda334c              # double 0.22268105291405005
	.quad	0x3fe585bf7c25df8a              # double 0.6725766587032791
	.quad	0x3fec05d74243ae82              # double 0.87571299497854249
	.quad	0x3fa109c92eefb570              # double 0.033277785281692895
	.quad	0x3fd9c00035b2b56a              # double 0.40234380001023473
	.quad	0x3f99cfe93f2a0ea0              # double 0.025207180481187863
	.quad	0x3fe7db9f0cd81f14              # double 0.74555923946988623
	.quad	0x3fe5d0c29e45631e              # double 0.68173342621148314
	.quad	0x3fe5b3712e442493              # double 0.67815455471385844
	.quad	0x3fd418507708c528              # double 0.31398402809562009
	.quad	0x3fe0b7b521bbe9ee              # double 0.52242523754767745
	.quad	0x3fe47109e72fe613              # double 0.63879866746646241
	.quad	0x3fe27abc8588eeef              # double 0.57748247223886817
	.quad	0x3fc76e347c98f5fc              # double 0.18305069049704048
	.quad	0x3fed6ccd78c2c3f3              # double 0.91953157030195454
	.quad	0x3fe6131c3bcc28a6              # double 0.68983279875944414
	.quad	0x3fe29fd68554e35a              # double 0.58201147118880248
	.quad	0x3fb0ca110ff3ac88              # double 0.065583292383666003
	.quad	0x3fe0771ac7df7311              # double 0.51453913724580691
	.quad	0x3fdd799ffb353436              # double 0.46054839641584822
	.quad	0x3fd7a5999579faa0              # double 0.36948241803467319
	.quad	0x3fd5caf682f707e4              # double 0.34051287450358658
	.quad	0x3fde34be091741be              # double 0.47196913612154023
	.quad	0x3f98e3cb79b3e260              # double 0.024306468299047146
	.quad	0x3fea39fa80dfdea4              # double 0.81957745714949625
	.quad	0x3fe03067a70c51f7              # double 0.50590880037867592
	.quad	0x3fec5616f5d0a44a              # double 0.88550899515861059
	.quad	0x3fc6f945ca7d69e0              # double 0.17948219668581
	.quad	0x3fee104dd8717471              # double 0.93949024461802655
	.quad	0x3fd376998495c7c4              # double 0.30411374995958007
	.quad	0x3fdaf8ded77c03fa              # double 0.42143984836007997
	.quad	0x3fd82a16d22253a4              # double 0.37756891747386079
	.quad	0x3fd02ea77db1c66c              # double 0.25284755015227378
	.quad	0x3fea17db0e00bf92              # double 0.81541207060762333
	.quad	0x3fbff2bcdb709708              # double 0.12479763371865371
	.quad	0x3fc65c9dd7e03b98              # double 0.17470143357101331
	.quad	0x3fe4121ebfe7072e              # double 0.62721192818591986
	.quad	0x3feabaca41f9dbb8              # double 0.83530152212084996
	.quad	0x3fe3e8d7d9f388cd              # double 0.62217323845495687
	.quad	0x3fc86eaa618b8dec              # double 0.19087724459596644
	.quad	0x3fc040e9f28bcbd0              # double 0.12698101370878456
	.quad	0x3fe87b492f57269e              # double 0.76504954572847672
	.quad	0x3fde7bd1b14513b2              # double 0.47630731879717836
	.quad	0x3fe0f6e3fd356fe3              # double 0.53013801054794063
	.quad	0x3fe670c3322a3d3d              # double 0.70126495168543779
	.quad	0x3feb2c62a608b94f              # double 0.84916813305407313
	.quad	0x3fed6687778d83d5              # double 0.9187657675757871
	.quad	0x3fe918e7de174e69              # double 0.78429025056034363
	.quad	0x3fe02dec44a23a6d              # double 0.50560582547207178
	.quad	0x3fc6b5d1960141ec              # double 0.1774236662336216
	.quad	0x3fec331e0ef978e8              # double 0.88123991894442799
	.quad	0x3fe6a5fe92d010cf              # double 0.70776299166075229
	.quad	0x3fe2308abfc28d86              # double 0.56842553570861365
	.quad	0x3fe09c127d4147fa              # double 0.51905178512447425
	.quad	0x3fcdf829d50cc08c              # double 0.23413584616492178
	.quad	0x3fb8061077eab498              # double 0.093842534329001359
	.quad	0x3fd858ebe95b3970              # double 0.38042733944612106
	.quad	0x3fd20cbd9d635d7e              # double 0.28202762956558292
	.quad	0x3fede5d849bdcded              # double 0.93430723574277652
	.quad	0x3fca8112b4933064              # double 0.20706399743210391
	.quad	0x3fea564c6aa18fbf              # double 0.82303448511492394
	.quad	0x3fd9bd0bcd5f4108              # double 0.40216345840328005
	.quad	0x3fd98baca4bd1082              # double 0.39915004813907029
	.quad	0x3fe5a9ee031fa666              # double 0.67699337587437181
	.quad	0x3fc33ada6132bcbc              # double 0.15023355241780745
	.quad	0x3fea719ec46709a4              # double 0.82636965141164298
	.quad	0x3fc0c707cb4f8118              # double 0.13107392718576061
	.quad	0x3feead7583dbfd2d              # double 0.95867419961715472
	.quad	0x3fd55a31d34eb632              # double 0.33363004336829072
	.quad	0x3fee9415bee37c6f              # double 0.95557677538807961
	.quad	0x3fe4cd379e7345fd              # double 0.65005093524285906
	.quad	0x3fe15294a28dc2d0              # double 0.54133064030437517
	.quad	0x3fee7019de8e5dc7              # double 0.9511842104720295
	.quad	0x3fe3cdb0a3c7e5b9              # double 0.61885864246794775
	.quad	0x3fe7830911df84a4              # double 0.73474553576319979
	.quad	0x3fba48a806f7c6c0              # double 0.10267114801515742
	.quad	0x3feb6cf568970869              # double 0.85705061366776392
	.quad	0x3fc4403feeea9a88              # double 0.15821074643936961
	.quad	0x3fefbae4fcb84784              # double 0.99156426772445671
	.quad	0x3fc2a5ae234d0470              # double 0.14568115924524561
	.quad	0x3fe68330c1c8d0fa              # double 0.70351446007273855
	.quad	0x3fc6be8a8575ca0c              # double 0.17768985287291661
	.quad	0x3fe97fec6e431882              # double 0.79686566863598807
	.quad	0x3fe8b96ddadfd87b              # double 0.77263539074807797
	.quad	0x3fefafee35f668db              # double 0.99022589244421099
	.quad	0x3feccb6b0b4dcc68              # double 0.89983131606858269
	.quad	0x3fd49d1bdbd5662e              # double 0.32208916156887113
	.quad	0x3fdb1cb6161be706              # double 0.42362739714700159
	.quad	0x3fe5cf10cb6b36c6              # double 0.68152656297908076
	.quad	0x3fd457dcd617989c              # double 0.31786271007002553
	.quad	0x3fcbcecc1cae4c0c              # double 0.21724845314437891
	.quad	0x3fec88a51f41667c              # double 0.89168029884895316
	.quad	0x3fcd33761efe6034              # double 0.22813297761308748
	.quad	0x3fe1bfe7ddc654db              # double 0.55467599215867425
	.quad	0x3fe327be0c36f96f              # double 0.59860136399929142
	.quad	0x3fdaa54034543c14              # double 0.41633610830553036
	.quad	0x3fa4a6c57735a2c0              # double 0.040334864427511885
	.quad	0x3feba96822367373              # double 0.86442953760307117
	.quad	0x3febefffb85dd871              # double 0.87304674157236495
	.quad	0x3fe14b641d6f2d70              # double 0.54045301197895235
	.quad	0x3fb0998c579d02d0              # double 0.064842959775897713
	.quad	0x3fe64cacf3d2bef3              # double 0.6968598138973604
	.quad	0x3fead5de2f2aafe3              # double 0.83860692226653233
	.quad	0x3fe8e6abf0880c8e              # double 0.77815815905377561
	.quad	0x3fec46e26baa3509              # double 0.88365288761420502
	.quad	0x3fd133c4d14bd094              # double 0.26878471793248448
	.quad	0x3fecc6fedc6cd367              # double 0.89929144908692826
	.quad	0x3fe68fca17a8a1fb              # double 0.7050524198612601
	.quad	0x3feec5544668b682              # double 0.96158803703083628
	.quad	0x3fe6c291dc6a488d              # double 0.71125119256818581
	.quad	0x3fea56033ca97324              # double 0.82299959037809289
	.quad	0x3fee10374955cfa9              # double 0.93947948764115552
	.quad	0x3fca1298c69976dc              # double 0.20369252869834653
	.quad	0x3fd764bda4ef9c68              # double 0.36552373034505203
	.quad	0x3fc908e41a5b2ae8              # double 0.19558383261604395
	.quad	0x3fc941fbd50a6794              # double 0.1973261633145823
	.quad	0x3fee37e9309b6820              # double 0.94432506078306133
	.quad	0x3fd47413835a41ba              # double 0.31958473040961233
	.quad	0x3fe2042c51b5cb27              # double 0.56300941428194029
	.quad	0x3fdcf72b4414bc34              # double 0.45258599899802054
	.quad	0x3fef1dec42c073d4              # double 0.97240269696669168
	.quad	0x3fefc502e96e1497              # double 0.99279924003407671
	.quad	0x3fbe8a0246d65658              # double 0.11929334859299823
	.quad	0x3fe935778f02e532              # double 0.78777673656364855
	.quad	0x3febb46e8170ed29              # double 0.86577534944027434
	.quad	0x3fd6869d13377470              # double 0.35196616055129137
	.quad	0x3fae7ae85961e340              # double 0.059531460677084258
	.quad	0x3feadfe8e700351e              # double 0.83983273618074228
	.quad	0x3fefce7035e8fdac              # double 0.99394999055214361
	.quad	0x3fe8cbea21473227              # double 0.77489191531782786
	.quad	0x3fce5e6682b13988              # double 0.23725587254962144
	.quad	0x3fdcd8ba155d5522              # double 0.4507279595030288
	.quad	0x3fa93bd019e3f270              # double 0.04928446117444174
	.quad	0x3fe79483b8b45c3b              # double 0.73687921595672579
	.quad	0x3fd27739e4914fbc              # double 0.28852698632294582
	.quad	0x3fe4eaecaeafba3a              # double 0.65367731207317736
	.quad	0x3fd3bd859cb7f2d2              # double 0.30844250015779295
	.quad	0x3fe467263f666efa              # double 0.63759148009145794
	.quad	0x3f8485280c12fd80              # double 0.010019600742792845
	.quad	0x3fcd8d697d0c9464              # double 0.230878053721571
	.quad	0x3fb5365cae24beb8              # double 0.08286074878264571
	.quad	0x3fec6a85d9fbfff2              # double 0.88800327849457816
	.quad	0x3fecc01285d76727              # double 0.89844633236791516
	.quad	0x3fea9216f2b908c0              # double 0.83033320814890743
	.quad	0x3f9199c20416cf20              # double 0.01718810224492906
	.quad	0x3fb94000bca1d8a0              # double 0.09863285641935926
	.quad	0x3fded9d314672fba              # double 0.48204495422828197
	.quad	0x3fcea20faa18da6c              # double 0.23932071500321983
	.quad	0x3fb9ffbe06c8e878              # double 0.10155856767315352
	.quad	0x3fede48014b6fc71              # double 0.93414310499055209
	.quad	0x3fc95a3de46f0074              # double 0.19806646017059715
	.quad	0x3fe1df68729f93a1              # double 0.55852148425457326
	.quad	0x3fe88591ea538ad1              # double 0.76630492941725425
	.quad	0x3fea59c565736eaf              # double 0.82345838369970703
	.quad	0x3fd92cda5eb4bb8e              # double 0.39336261032706765
	.quad	0x3fe9641f1c8adc49              # double 0.79347186636631151
	.quad	0x3fc489d2a426a8c0              # double 0.16045601859270242
	.quad	0x3fdc739726a33e88              # double 0.44455508015833134
	.quad	0x3fe0dd93ad8d5272              # double 0.52704795739061994
	.quad	0x3fe5634f4e87c742              # double 0.66837277734723721
	.quad	0x3fd93f026aaf2b80              # double 0.39447079103836558
	.quad	0x3fbbf2a009d9b970              # double 0.10917091598978401
	.quad	0x3fd3d46c3eaaa140              # double 0.30984026069429049
	.quad	0x3fe53099f535dd4a              # double 0.66218278782518181
	.quad	0x3fe81f7cb3e0e138              # double 0.75384364254481451
	.quad	0x3fe634490da31bcc              # double 0.69388249076370689
	.quad	0x3fc500ab338f5724              # double 0.16408290879797349
	.quad	0x3fd68e7178d70574              # double 0.35244404602789037
	.quad	0x3fec28b58823e363              # double 0.8799693736064963
	.quad	0x3fc135e948eb7c14              # double 0.13445774136104716
	.quad	0x3f91fcc2b3c38ce0              # double 0.017565767499843399
	.quad	0x3fe6f8cabb31e5d8              # double 0.71787010728365441
	.quad	0x3fe03a7e22a7caa8              # double 0.50714022415771343
	.quad	0x3fccb801756ca21c              # double 0.22436540826426288
	.quad	0x3fe5cd6d47493712              # double 0.68132652209325983
	.quad	0x3fe04c20b2db2369              # double 0.5092929356843402
	.quad	0x3fe383ea7a71499d              # double 0.60985301889950316
	.quad	0x3fedad01b915ce38              # double 0.92736898564766701
	.quad	0x3fe0d51040c4867a              # double 0.52600872659623055
	.quad	0x3fe89aab3d45f483              # double 0.76888048140939735
	.quad	0x3fda11bd6dc0d13a              # double 0.40733276098332605
	.quad	0x3fdc4f4e23d28d7a              # double 0.44234040735519609
	.quad	0x3fe56d6142b4a385              # double 0.66960204151574543
	.quad	0x3feb5ef58fff5fdc              # double 0.85534170269510978
	.quad	0x3f8e7c8f997110c0              # double 0.014886018629234221
	.quad	0x3fed725c4f69914c              # double 0.92021003256062661
	.quad	0x3fdcc139386e6dd8              # double 0.44929342757106161
	.quad	0x3fe8fe88292ad3b4              # double 0.78107078590857392
	.quad	0x3fd646881e5bb9b4              # double 0.34805491413763012
	.quad	0x3fe5e539dcaf3a64              # double 0.68423169233740255
	.quad	0x3fdd33626c49dad0              # double 0.45626125884102198
	.quad	0x3fe38cacaf3a9853              # double 0.61092218613044691
	.quad	0x3fc7e21679b0e57c              # double 0.1865871519274086
	.quad	0x3fe27211910d8689              # double 0.57642439203864726
	.quad	0x3fea6305e157fba0              # double 0.82458776485860951
	.quad	0x3fee8356f46f6061              # double 0.95353267422889243
	.quad	0x3fe3348bfee4f568              # double 0.60016441139275134
	.quad	0x3fde054b4d4758da              # double 0.46907312914608001
	.quad	0x3fe27ab5b4faa1c6              # double 0.57747922275034891
	.quad	0x3feffd37c3edfefe              # double 0.99966038005365454
	.quad	0x3fe2a5a6af3106e6              # double 0.58272108285038082
	.quad	0x3fe168ef74263ce6              # double 0.54405949292586508
	.quad	0x3fe67a160062577b              # double 0.70240306925801066
	.quad	0x3fdc8a18933fd020              # double 0.4459287107449672
	.quad	0x3fbb7cda28f30e60              # double 0.10737384319059506
	.quad	0x3fe669b0e0f331e4              # double 0.70040172515433285
	.quad	0x3fe1eabea9995f96              # double 0.55990536808802704
	.quad	0x3fe876e50542f755              # double 0.76451350238469706
	.quad	0x3fbdd414e6ca6828              # double 0.11651735910928152
	.quad	0x3feaabc76c30a0dd              # double 0.83346911555147651
	.quad	0x3fc4f47dba0bfec0              # double 0.16371127685851228
	.quad	0x3fcc8fbf5613d0a8              # double 0.2231368227290933
	.quad	0x3fdc55a62844a2e4              # double 0.44272760326798122
	.quad	0x3fbf12030ba70040              # double 0.12136858973008291
	.quad	0x3feb06fc50eb724b              # double 0.84460273556357757
	.quad	0x3fecda6175891639              # double 0.90165780025626596
	.quad	0x3fda2b0aebfa0fda              # double 0.40887711567506602
	.quad	0x3fce54de7e1f07dc              # double 0.23696499975454699
	.quad	0x3fc7ec872c36181c              # double 0.18690576227908273
	.quad	0x3fe0edac0e88203b              # double 0.52901270712118931
	.quad	0x3fd42dd60f15ed8a              # double 0.31529761765678954
	.quad	0x3fe1de33cc13c852              # double 0.55837430819361544
	.quad	0x3fdd84bf334fb282              # double 0.46122722636099678
	.quad	0x3fe02771d1e2ba3f              # double 0.504815015728873
	.quad	0x3f8ebcc270ee2780              # double 0.015008467742308573
	.quad	0x3fd4546f4a9c325a              # double 0.31765348707339103
	.quad	0x3fef7eaa21f74dca              # double 0.98421198495855688
	.quad	0x3fcd460bae564330              # double 0.22870012295290953
	.quad	0x3fba4e790e439d90              # double 0.10275990103001775
	.quad	0x3fd9bf75a3efc910              # double 0.40231076249541875
	.quad	0x3f988a5f2d9d21a0              # double 0.023965346488041939
	.quad	0x3fcd302671d1c208              # double 0.22803192670427586
	.quad	0x3fde0fb8e744a996              # double 0.46970961174761194
	.quad	0x3fd61d7d21c6680c              # double 0.34554985330908106
	.quad	0x3faed6c703bb6860              # double 0.060232371526311779
	.quad	0x3fed7677affa2b12              # double 0.92071136827994082
	.quad	0x3fe3d3e0e5c408e8              # double 0.6196140754330175
	.quad	0x3fe3864f4eb5ded0              # double 0.61014523862010073
	.quad	0x3f951dc10c95bfa0              # double 0.020621315377354343
	.quad	0x3fd9c906eb269254              # double 0.40289471591885229
	.quad	0x3fd96c9e6f918888              # double 0.39725457091675098
	.quad	0x3fea0a5613186167              # double 0.81376174668825463
	.quad	0x3fe5246b50486e8c              # double 0.66069570236455055
	.quad	0x3fe9436bc30fc074              # double 0.78948009584384104
	.quad	0x3fef0d1c959198ef              # double 0.97035054409641741
	.quad	0x3fc456201c418884              # double 0.15887833957373598
	.quad	0x3fe64431a4a9dc50              # double 0.69582445298045492
	.quad	0x3fc0257e0ae2ef50              # double 0.12614417583051329
	.quad	0x3fd095fa90070880              # double 0.25915397706206278
	.quad	0x3fec6ac26416bd64              # double 0.8880321459636602
	.quad	0x3fcb4d99aa7f50dc              # double 0.21330567193093131
	.quad	0x3fd2ec562536d0e4              # double 0.29567483553115737
	.quad	0x3fdbab2e1cbcbfc8              # double 0.43232300573708615
	.quad	0x3fe3302951580253              # double 0.59962907683809374
	.quad	0x3fe1e9e076596a35              # double 0.55979941477864392
	.quad	0x3fe334f95b33eebd              # double 0.60021655858096035
	.quad	0x3fbdae798dd4b440              # double 0.11594352448146683
	.quad	0x3fe0856a4aa46b60              # double 0.5162860353333194
	.quad	0x3fed785ef54cc550              # double 0.92094371709951339
	.quad	0x3fe8e984c1d91e3f              # double 0.77850568638763906
	.quad	0x3fdc60eb99d0f59e              # double 0.44341554661863281
	.quad	0x3fb67a6a056a75c8              # double 0.087805391618949291
	.quad	0x3fe38906ad2a07ff              # double 0.61047681637887752
	.quad	0x3fee3d251dce52e2              # double 0.94496398755526578
	.quad	0x3feb029ba64d02ff              # double 0.84406836014395015
	.quad	0x3fe4a7bc734114bf              # double 0.64547560225096123
	.quad	0x3fd9c7d748f6c162              # double 0.40282232404117313
	.quad	0x3fbcdbfdfb7eace0              # double 0.11273181333551774
	.quad	0x3febaa0d3e7c8bca              # double 0.86450826839824768
	.quad	0x3fe753ec05ca3402              # double 0.72899438029128327
	.quad	0x3fdb492a4d4f8888              # double 0.42634065198775106
	.quad	0x3fd13f46c758eeee              # double 0.26948708980101699
	.quad	0x3fe26882ed826c63              # double 0.5752577437264218
	.quad	0x3fe82397c0ee4793              # double 0.7543448227099695
	.quad	0x3fe2fe0a20e95a7d              # double 0.59351068904909676
	.quad	0x3fe4640c7afe2db6              # double 0.63721298238799906
	.quad	0x3fe57892f3f5669a              # double 0.67096851013339465
	.quad	0x3fee6f0e5f9a7c09              # double 0.95105665848302678
	.quad	0x3fd81f223cf4c22a              # double 0.37690025284522
	.quad	0x3fef590077b71fe3              # double 0.97961448079967927
	.quad	0x3fe607c62b3b8c53              # double 0.68844898647183539
	.quad	0x3faa9165c7a08dd0              # double 0.051890545481252937
	.quad	0x3fe9b16c8f11c6fc              # double 0.80290821021318903
	.quad	0x3fef19ca73a64254              # double 0.97189829433234331
	.quad	0x3fe710d4fff870ea              # double 0.72080469125969882
	.quad	0x3fae399b65714020              # double 0.059033256657699207
	.quad	0x3f98f1c2902bccc0              # double 0.024359741258149326
	.quad	0x3faf9bd28fc73570              # double 0.061735706378025834
	.quad	0x3fb532dd34b2a600              # double 0.082807374349293639
	.quad	0x3fe4d0d1a88bd434              # double 0.65049059790783881
	.quad	0x3fb3cd64c80e1250              # double 0.077352808801216754
	.quad	0x3febfa06b7f1db53              # double 0.87427078177175088
	.quad	0x3fe86d8d75251fff              # double 0.76337311630140892
	.quad	0x3fe4f3f4d19245b3              # double 0.65477982456120853
	.quad	0x3fcbb5c1b5c3bb5c              # double 0.21648427367423551
	.quad	0x3fecac67674c8974              # double 0.89604540038662472
	.quad	0x3fef18acfb789878              # double 0.97176217189259173
	.quad	0x3fc6ebb57a3d3894              # double 0.17906826466282111
	.quad	0x3fd661c6d1202ebc              # double 0.34971781179840966
	.quad	0x3fdb44add8779144              # double 0.42606683863984451
	.quad	0x3fe16de668a7d300              # double 0.54466553154506414
	.quad	0x3feb10318ffc449f              # double 0.84572675821449994
	.quad	0x3fc1175ad77cd788              # double 0.13352523347719747
	.quad	0x3fc3c078e8fcabd0              # double 0.15431128860777088
	.quad	0x3fe02c625b8d27ab              # double 0.50541799431924994
	.quad	0x3fea3960d33205d0              # double 0.81950417756177707
	.quad	0x3fde652cf51d0cb2              # double 0.47492526947844305
	.quad	0x3fe177e233f4f007              # double 0.54588422916231216
	.quad	0x3fe2f9352b56b9f8              # double 0.59292086090664409
	.quad	0x3fe3e6e1a001999f              # double 0.62193375827046171
	.quad	0x3fe4eeabe77fb744              # double 0.65413470472933755
	.quad	0x3fb084eb81ad6d28              # double 0.064528197440655632
	.quad	0x3fe679f66597a9b6              # double 0.70238799898407112
	.quad	0x3fb186bdfbaab278              # double 0.068462251607977254
	.quad	0x3fe7ad566205700e              # double 0.73990935463689467
	.quad	0x3feae73d4f6334cc              # double 0.84072747712493756
	.quad	0x3fe96df37d0a2f0f              # double 0.79467176839668408
	.quad	0x3fb6ed2c1743fd90              # double 0.089556461029124401
	.quad	0x3fe4ba4fce164781              # double 0.64774313212750212
	.quad	0x3fe065ab56afef73              # double 0.51241080218413371
	.quad	0x3f95e63548f373e0              # double 0.021385986878943331
	.quad	0x3fe90879a34de76a              # double 0.78228456397412782
	.quad	0x3fee45b2248bad92              # double 0.9460077966481768
	.quad	0x3fee94be76e4083c              # double 0.95565722676133857
	.quad	0x3fcaa3a6b0d78334              # double 0.20811923632484197
	.quad	0x3fea92611188b750              # double 0.83036855148905353
	.quad	0x3fea1220e5bd5403              # double 0.81471295233734542
	.quad	0x3fe9eeae9682f747              # double 0.81038598439020226
	.quad	0x3fefa233678ba273              # double 0.98854990218849392
	.quad	0x3fe924712facb597              # double 0.78569850264982477
	.quad	0x3fe0e761b889c56c              # double 0.52824483912097042
	.quad	0x3fce2cbafdfa5a7c              # double 0.23574006463305242
	.quad	0x3feec3a95f00df8f              # double 0.96138447337487942
	.quad	0x3fba88edfc2fe4c0              # double 0.1036518803301929
	.quad	0x3fe030fc501c6d84              # double 0.50597968718231856
	.quad	0x3fa0e2270834b500              # double 0.032975406409926578
	.quad	0x3fd396919d6b23fa              # double 0.30606499073888893
	.quad	0x3fedadfdbaa4c980              # double 0.92748915151450717
	.quad	0x3fe82043963cd3db              # double 0.75393847792895075
	.quad	0x3fe367f4422025e7              # double 0.6064397136225893
	.quad	0x3fdc5c5607d74324              # double 0.44313574567518033
	.quad	0x3fcc89a5ba99c7c0              # double 0.22295066462862501
	.quad	0x3fefcc6311bfc6b7              # double 0.99369958368898536
	.quad	0x3febdef4268ca9f7              # double 0.87096602944558199
	.quad	0x3fe3c341c11e6447              # double 0.61758506506442579
	.quad	0x3fc38e98037ef15c              # double 0.15278911753365321
	.quad	0x3feaa92ad95515ad              # double 0.83315031478621437
	.quad	0x3fdcb9cc4c757d48              # double 0.44884021250432626
	.quad	0x3fe8e923b68f6392              # double 0.77845941215774617
	.quad	0x3fdfdf3c66fae75a              # double 0.49800024086618111
	.quad	0x3fe4ee5f1597a414              # double 0.65409807412391041
	.quad	0x3fed643e3fe5235c              # double 0.91848671416765226
	.quad	0x3fe392f6a7fcc902              # double 0.61168988046691219
	.quad	0x3fe00571fb33cfcf              # double 0.50066470206228952
	.quad	0x3fd24a700ef2f04e              # double 0.28579331836568123
	.quad	0x3fec5d031a54a45a              # double 0.88635401861860008
	.quad	0x3feedfca98a6e1fc              # double 0.96481828512975154
	.quad	0x3fee4e6e9d70d186              # double 0.94707422971855304
	.quad	0x3fd6d0b9a0296eee              # double 0.35648956909947926
	.quad	0x3f9b57457fab8340              # double 0.026700101773602158
	.quad	0x3fdbc6fb392ac1a2              # double 0.43401985724178804
	.quad	0x3f708c9d43f12e80              # double 0.0040403502635616428
	.quad	0x3fe07f9540be1521              # double 0.51557409901639428
	.quad	0x3fe7a33688a38ef1              # double 0.73867346465382699
	.quad	0x3fe8b185712674d7              # double 0.77167007541325006
	.quad	0x3fd4697474ea7fd8              # double 0.31893645684794825
	.quad	0x3fca6be5ee088b7c              # double 0.20641779062961152
	.quad	0x3fefd887f89a95ee              # double 0.99518202357711316
	.quad	0x3fe7f3db1e4a3148              # double 0.74851756969432248
	.quad	0x3fe242c844e4f661              # double 0.57065213638243162
	.quad	0x3fde0cb2f775bc0c              # double 0.46952509084707184
	.quad	0x3fe618b41bb1ba01              # double 0.69051556977302664
	.quad	0x3fe7d03f95f42cdb              # double 0.74417094505170256
	.quad	0x3fd264352b4174ee              # double 0.28736619209469338
	.quad	0x3feebc25d5a13a24              # double 0.96046725964135193
	.quad	0x3fd6321cc7d0a536              # double 0.34680861962495457
	.quad	0x3fe1c617a444ed97              # double 0.55543119510496097
	.quad	0x3fec2501c33bf5dc              # double 0.87951744205173154
	.quad	0x3fef1ba9529ce56b              # double 0.9721266377957084
	.quad	0x3f9c418547c715a0              # double 0.0275936913547149
	.quad	0x3fda3354d1d63d46              # double 0.40938301555521084
	.quad	0x3fe31d0cb32b68ab              # double 0.59729609483772117
	.quad	0x3fe30a08ec33711c              # double 0.59497495778080944
	.quad	0x3feaff91ccd95cdf              # double 0.84369745263657225
	.quad	0x3fdd9dc5e80c97d4              # double 0.46275470410398367
	.quad	0x3fed0df40d89e162              # double 0.90795328754670046
	.quad	0x3fe3ebd10804ff70              # double 0.62253619734108945
	.quad	0x3fb7f88613589b38              # double 0.093635921214269113
	.quad	0x3fc170068aa93f28              # double 0.13623124857485291
	.quad	0x3fda6cf74f6817f8              # double 0.41290076021721189
	.quad	0x3feb1b1070017217              # double 0.84705373645880655
	.quad	0x3fde780363746650              # double 0.47607502663013168
	.quad	0x3fe5d96b3cc4f2bb              # double 0.6827903925801232
	.quad	0x3fe893e79a7bbc18              # double 0.76805477306868664
	.quad	0x3fef9e58506d6d51              # double 0.98807922085272015
	.quad	0x3fef1c0fc3bf1b4d              # double 0.97217548591366098
	.quad	0x3feff1a7831225b3              # double 0.99824882125647318
	.quad	0x3fe03841369f0f00              # double 0.50686703365542485
	.quad	0x3fefa525c45e237d              # double 0.98890961030075141
	.quad	0x3fdd84de2d9a5ad6              # double 0.461234612020616
	.quad	0x3fefa081072e9c38              # double 0.9883427753710583
	.quad	0x3fd65ef261878256              # double 0.34954509281491164
	.quad	0x3fef411261fa653a              # double 0.97669333587979357
	.quad	0x3fd2cf5d9881b1ee              # double 0.29390659230446559
	.quad	0x3fefcd9497011c31              # double 0.9938452672294088
	.quad	0x3fc0a2d3a264445c              # double 0.12996907643585842
	.quad	0x3fe1ae594490271e              # double 0.5525328005907999
	.quad	0x3fdacfaeedf479e6              # double 0.41892598378936297
	.quad	0x3fe597fb48d725c5              # double 0.67480243899006409
	.quad	0x3fe75d6bb05f36f0              # double 0.73015388915675139
	.quad	0x3fa1f12543e90be0              # double 0.035042919673763384
	.quad	0x3fe2b107be73e35d              # double 0.58411013791838295
	.quad	0x3fdaf7593483d368              # double 0.42134695175564341
	.quad	0x3feebd6e4ebe8525              # double 0.96062388782244012
	.quad	0x3fed599b06a1544e              # double 0.91718817992171764
	.quad	0x3f923fa74f864700              # double 0.017820944050590093
	.quad	0x3fef6d64ed96d2a6              # double 0.98210379032260131
	.quad	0x3fe5eb4a86cd75d2              # double 0.68497206047657699
	.quad	0x3fe48760893a0689              # double 0.64152552415926423
	.quad	0x3fbe4a8f16c2f478              # double 0.11832517915441254
	.quad	0x3feaeb379cde74dc              # double 0.84121304167242838
	.quad	0x3fe7a255d96a0bf7              # double 0.73856632674903622
	.quad	0x3feeb02fd9b96fb9              # double 0.95900719188966043
	.quad	0x3f90b767cec90d20              # double 0.016324636455704256
	.quad	0x3fd077c3291ad1d6              # double 0.25730971349846976
	.quad	0x3fd5df6dd0b8c42c              # double 0.34176202185614346
	.quad	0x3fdd5c60a99b6944              # double 0.45876328051749149
	.quad	0x3fe059994f762ef6              # double 0.51093736190656958
	.quad	0x3fdc231483be57b2              # double 0.4396411215360515
	.quad	0x3fdfe12c720a58f2              # double 0.49811850678214775
	.quad	0x3fe476d7dace5746              # double 0.63950722442198393
	.quad	0x3fdc3e02492dc06a              # double 0.44128472467764956
	.quad	0x3fdb6c36e57a13a2              # double 0.42847988519525348
	.quad	0x3fb5b7d6e98a6600              # double 0.084836418167832051
	.quad	0x3fe211c72f4a9b73              # double 0.56467017399414343
	.quad	0x3fcc05bd1d9a397c              # double 0.21892513223106025
	.quad	0x3fd37c9760caaf62              # double 0.30447945072477556
	.quad	0x3fed3406a857869b              # double 0.91260083083416832
	.quad	0x3fca8df3b1e8f52c              # double 0.20745702921878129
	.quad	0x3fc6291ad3302e8c              # double 0.17312941848682717
	.quad	0x3fce5ff580835208              # double 0.2373034360413302
	.quad	0x3fb4d70e61f687e0              # double 0.081406496922255212
	.quad	0x3fe02875a74a4493              # double 0.50493891404961955
	.quad	0x3fb1a4c0974a7368              # double 0.06892017072318668
	.quad	0x3fe84871d136b672              # double 0.75884333478980026
	.quad	0x3fefb14c3e8ad962              # double 0.99039280143078323
	.quad	0x3fd17466eef68b92              # double 0.27272961937176732
	.quad	0x3fe33f7478d30924              # double 0.60149596785075632
	.quad	0x3fcfcd829837d258              # double 0.24845917160532127
	.quad	0x3fd4200e59bab230              # double 0.31445654642701282
	.quad	0x3fc1d7050220898c              # double 0.13937437633383032
	.quad	0x3fcfca9ab2373704              # double 0.24837049199998529
	.quad	0x3feb750f67141dbb              # double 0.85803957111868756
	.quad	0x3feb525f06e48955              # double 0.85380507799372174
	.quad	0x3fb20090d00245b0              # double 0.070321131499688105
	.quad	0x3fd6458321c3f42e              # double 0.34799269006163314
	.quad	0x3feb6a70549ea542              # double 0.8567430165032095
	.quad	0x3fe711b8ae2a1dd9              # double 0.72091325775630388
	.quad	0x3fd2a2b257753158              # double 0.29118021527098881
	.quad	0x3fa370185c3693c0              # double 0.037964593178265726
	.quad	0x3fe07f9d3b66963a              # double 0.51557790376381907
	.quad	0x3fe047d2a4b90917              # double 0.50876743481083764
	.quad	0x3fdcc6c6b0783c0e              # double 0.44963233216634613
	.quad	0x3fef14fc6f147e3b              # double 0.97131177611658559
	.quad	0x3fb469203be4e858              # double 0.079729094145393531
	.quad	0x3fd57a8de9d8d182              # double 0.33560512386909391
	.quad	0x3fdc8bc95594c678              # double 0.44603188855680953
	.quad	0x3fe0eaca1fdd7d77              # double 0.52866083358450922
	.quad	0x3fcd56b9385aa1c4              # double 0.22920909167920744
	.quad	0x3fcb7ff0c75c33b8              # double 0.21484193548567787
	.quad	0x3fef9db8b76712b8              # double 0.98800311871362733
	.quad	0x3fd9c41ffb524630              # double 0.40259551566223006
	.quad	0x3fc90a71a8bb89d4              # double 0.19563122500319585
	.quad	0x3fc3e4921c94d880              # double 0.15541292567803922
	.quad	0x3fd2cde13662c140              # double 0.29381590186223505
	.quad	0x3fcf71b026b86e7c              # double 0.24565698519369394
	.quad	0x3fe9f9093f0a59b4              # double 0.81164991676887732
	.quad	0x3fca9dc7599e6aa4              # double 0.20794002414625823
	.quad	0x3fc61f3d941cc61c              # double 0.17282838565874747
	.quad	0x3fc869bc6134c294              # double 0.19072680231467543
	.quad	0x3f94b40888620e20              # double 0.020218022655639101
	.quad	0x3fe42cf74fae4b30              # double 0.63048902094519654
	.quad	0x3fec30784d0c891f              # double 0.88091673897386957
	.quad	0x3fde0212f96585fc              # double 0.4688765941155848
	.quad	0x3fe36ea3b6526149              # double 0.6072557984325978
	.quad	0x3fe2b357ae835b0d              # double 0.5843923958262579
	.quad	0x3fecd9679fcaf436              # double 0.90153866967705798
	.quad	0x3fef11a8f31b51e1              # double 0.97090575677662738
	.quad	0x3fda6aa72d28039c              # double 0.41275958452029626
	.quad	0x3fd90385fc5d1a82              # double 0.39084005017176804
	.quad	0x3fd5b8eb6a89ec1c              # double 0.33941159633804019
	.quad	0x3fb7bd07b9945190              # double 0.092728121573889987
	.quad	0x3fead4e76eaeab31              # double 0.83848926179539351
	.quad	0x3fd42cae181010c8              # double 0.3152270541179516
	.quad	0x3fe016c6d2e176d0              # double 0.50278035342827287
	.quad	0x3fea8d253f433434              # double 0.82972967487297077
	.quad	0x3fe9e318039bef2b              # double 0.80897141175180332
	.quad	0x3fe3b95759b562c0              # double 0.61637465974043693
	.quad	0x3fdaa7373cadc552              # double 0.41645604062712949
	.quad	0x3fea75f3c0066135              # double 0.82689845566623055
	.quad	0x3fe89a5472e4745a              # double 0.76883909645006132
	.quad	0x3fd61e0a40f6df6e              # double 0.3455834993760537
	.quad	0x3fef71ad765c1a3b              # double 0.98262665860313036
	.quad	0x3fe5da15adccaf6e              # double 0.68287166543221445
	.quad	0x3fe11805c93e6675              # double 0.53418244653148739
	.quad	0x3fe0c5802e0adb7a              # double 0.52410897247942434
	.quad	0x3fdf9c64e0ae348a              # double 0.49392053548292181
	.quad	0x3fedb57dbc643e88              # double 0.92840468211393645
	.quad	0x3fb2d4fd3a6d8a28              # double 0.073562456860181258
	.quad	0x3fe6559a3d381611              # double 0.69794952351429818
	.quad	0x3fe052ec565cbed7              # double 0.51012246005663087
	.quad	0x3fe3c0d0c039e19d              # double 0.6172870401779168
	.quad	0x3fd2c93e533543c0              # double 0.29353292585170365
	.quad	0x3f95fa48b771bfe0              # double 0.021462570377877799
	.quad	0x3fd2f8bddcdc501e              # double 0.29643198555391048
	.quad	0x3feddce46a5d882b              # double 0.93321438574299032
	.quad	0x3fe4bc75a9cf53e1              # double 0.64800532499304719
	.quad	0x3fcccfeca1009a1c              # double 0.22509534703677125
	.quad	0x3fe793fd9d9abbeb              # double 0.73681526929965224
	.quad	0x3fe6a4fb917dbd8b              # double 0.70763948837513746
	.quad	0x3fbc1186a5fbaa20              # double 0.10964242508240618
	.quad	0x3fdfe7c0ab4f4016              # double 0.4985200570054088
	.quad	0x3fe60576e19a4338              # double 0.68816703856473449
	.quad	0x3fcc39936798ff00              # double 0.22050707396009983
	.quad	0x3fab925a9ecaf910              # double 0.05385096729649963
	.quad	0x3febe5b394057a51              # double 0.87178973112515667
	.quad	0x3fe576193e8a70ab              # double 0.6706663342952387
	.quad	0x3fe2d3768d8eee8f              # double 0.58831336639510023
	.quad	0x3fe11e39bbb6797e              # double 0.53493963873533779
	.quad	0x3fe4ab66ebc8e4ef              # double 0.64592310001094499
	.quad	0x3fde5c44f1287276              # double 0.47438167143426513
	.quad	0x3fd7b5ae7ef534c0              # double 0.3704639663527125
	.quad	0x3f608094fdc02500              # double 0.0020144376740104386
	.quad	0x3fb6dfe01b1413e0              # double 0.08935356770605507
	.quad	0x3fce19f2a5296834              # double 0.23516686501062767
	.quad	0x3fbb5cf4294cec00              # double 0.10688711174309162
	.quad	0x3fd0925159192d64              # double 0.25893052769671088
	.quad	0x3feaf7c953d360ef              # double 0.84274736759382829
	.quad	0x3fb7cb29d19060a8              # double 0.092943776763038444
	.quad	0x3f599a79e978f400              # double 0.0015627089068310784
	.quad	0x3fed7232c4520505              # double 0.92019022315813059
	.quad	0x3fea4f8e3b17ff53              # double 0.82221137563463242
	.quad	0x3fe7ddf5d45ced1e              # double 0.74584475972315878
	.quad	0x3fe714ac64d59a00              # double 0.72127361005988178
	.quad	0x3fd6381681d861f0              # double 0.34717333488654756
	.quad	0x3fd8ddca92b25d0c              # double 0.38853706670620691
	.quad	0x3feee0b2424aa9c0              # double 0.96492875049198545
	.quad	0x3fdcddb4a9ef1398              # double 0.45103184313875877
	.quad	0x3fd51a02f9b096fa              # double 0.32971262344140906
	.quad	0x3fe1ee9d2e8a56e8              # double 0.56037768449706693
	.quad	0x3fd4e375e77feec2              # double 0.32638309104343588
	.quad	0x3fdb6bc30bc7e908              # double 0.42845226431349248
	.quad	0x3fe445cf45f586ce              # double 0.63352168716320434
	.quad	0x3fe7d14679bb7d58              # double 0.74429630065780383
	.quad	0x3fd10dd549f1cc98              # double 0.26646930905480692
	.quad	0x3fac4cf2aa587180              # double 0.055274565977216916
	.quad	0x3fd8068a44a5af08              # double 0.37539917663410494
	.quad	0x3fcfb24ffa3560b4              # double 0.24762916295253989
	.quad	0x3feb6686c2901cb7              # double 0.85626543045591219
	.quad	0x3fe1bc9c37c0b579              # double 0.55427370919430452
	.quad	0x3fdc8e820593c0a4              # double 0.44619799179691655
	.quad	0x3fe532ff4136ad2d              # double 0.66247523057010016
	.quad	0x3fdc1615a4948320              # double 0.43884793350484763
	.quad	0x3fd959357aebff08              # double 0.39606987957084572
	.quad	0x3fc1a023fb57f998              # double 0.13769960186614294
	.quad	0x3fec0beb87c074a6              # double 0.87645508302707209
	.quad	0x3fdc8aff88f63092              # double 0.44598377585567406
	.quad	0x3fefceed5592edfa              # double 0.99400965417538534
	.quad	0x3fd2d5a9ef769e42              # double 0.29429100403874398
	.quad	0x3fe878254205369c              # double 0.76466620344736524
	.quad	0x3fe73967f7c57ea1              # double 0.72575758355010944
	.quad	0x3fe58a91c7f6acf4              # double 0.67316521697412535
	.quad	0x3fe57b1ca3f0dd1b              # double 0.67127830524160303
	.quad	0x3fea65ac27a418da              # double 0.82491119139083513
	.quad	0x3fe951e086f3dcd7              # double 0.79124475820472184
	.quad	0x3fdb99badcedc66c              # double 0.43125793051795003
	.quad	0x3fd2839900cd87fa              # double 0.28928208425907054
	.quad	0x3f75e6bfdc3d4800              # double 0.0053470129531252297
	.quad	0x3fd3bbf7cfbef814              # double 0.30834765708630241
	.quad	0x3fed519b0ddccbd8              # double 0.91621163089291269
	.quad	0x3fd17f733331e8de              # double 0.27340393065936819
	.quad	0x3fe969fe07284829              # double 0.79418851278228886
	.quad	0x3fd724c7863672a8              # double 0.36161983591754643
	.quad	0x3f7b76dac17ac780              # double 0.0067051453731198363
	.quad	0x3fd3a9f9fb935fc2              # double 0.3072495419305562
	.quad	0x3fb16df81df83a68              # double 0.06808424693756765
	.quad	0x3fdfc2a46bfc8432              # double 0.49625502152963741
	.quad	0x3fe9c3879aa6eafd              # double 0.80511837201569814
	.quad	0x3fc09abb23983ba0              # double 0.1297220157434511
	.quad	0x3fea1e9b3c3497e2              # double 0.816236131275897
	.quad	0x3fd3e89bf59887a0              # double 0.31107233985869165
	.quad	0x3fc203fe69afe2dc              # double 0.14074688110829114
	.quad	0x3feae53574709d0e              # double 0.84047959081809309
	.quad	0x3fd2794fdcb98e64              # double 0.28865429454001501
	.quad	0x3fbd1521ac377eb8              # double 0.1136036916209332
	.quad	0x3fe7e5be6eef5454              # double 0.74679490725487563
	.quad	0x3fc17776ce6ad320              # double 0.13645825461358019
	.quad	0x3fef5c929c95dd1a              # double 0.98005037863814271
	.quad	0x3fb8a921912d6848              # double 0.096330736106581161
	.quad	0x3fea37acfdc6c137              # double 0.8192963558740648
	.quad	0x3fdd6b8a46344fbc              # double 0.45968872886555423
	.quad	0x3fe6d25151b90400              # double 0.71317354165523739
	.quad	0x3fe84d007452ecfc              # double 0.75939963073270133
	.quad	0x3f8272981c0ecb00              # double 0.009007633548980376
	.quad	0x3fe10021cc483d32              # double 0.53126611613143937
	.quad	0x3fe4a2b03ac56c70              # double 0.64485942343470803
	.quad	0x3fc7dce83ba9f3f8              # double 0.18642905152583444
	.quad	0x3fe63f5111e1b434              # double 0.69522908680449413
	.quad	0x3fe5fe98a6e4bf9d              # double 0.68732864948650596
	.quad	0x3fd49fd93bfc37ba              # double 0.32225638254100952
	.quad	0x3fac7b86078d8470              # double 0.055629909917805587
	.quad	0x3fe54d853e2e4835              # double 0.66571294922528657
	.quad	0x3fe67e45dffb45f0              # double 0.7029141783370374
	.quad	0x3fcf25f3a81b0718              # double 0.24334569652824523
	.quad	0x3fd61e0742be9bf8              # double 0.34558278577827606
	.quad	0x3fb7b1b5be91ba00              # double 0.092555388475126676
	.quad	0x3fec716b73fd2bb7              # double 0.88884518293467962
	.quad	0x3fec6f6286d65fab              # double 0.88859678588322788
	.quad	0x3fcf48c37a57bc80              # double 0.24440806840673091
	.quad	0x3fd894b45c6aa486              # double 0.38407620453887892
	.quad	0x3fcc2e192ce08b04              # double 0.2201568097235268
	.quad	0x3fd54683b4a23af6              # double 0.33242886199961619
	.quad	0x3fb55d561ded6588              # double 0.083455450350262805
	.quad	0x3fd11ace9195968c              # double 0.26726116387576648
	.quad	0x3fee67d440b57e58              # double 0.95017445219486784
	.quad	0x3fe20189c521ee9c              # double 0.56268776419115651
	.quad	0x3f83f0438ba533c0              # double 0.0097356106749887372
	.quad	0x3fae3cf8bb8f2cc0              # double 0.059058926482600693
	.quad	0x3fcf58375ccb2f64              # double 0.2448796465963553
	.quad	0x3feb1bbf01ac3480              # double 0.8471369774503188
	.quad	0x3feff4f05cb41970              # double 0.99864976984171783
	.quad	0x3fe1a38baf5a3b15              # double 0.55121406792190675
	.quad	0x3fd7e43e3211bd7e              # double 0.37330584420757151
	.quad	0x3fc876c912197c70              # double 0.1911250437142118
	.quad	0x3fca99f05bc05058              # double 0.20782284240761117
	.quad	0x3fea9dac26a914f1              # double 0.83174712706445864
	.quad	0x3fdfce3d02b851de              # double 0.49696278825402185
	.quad	0x3fdc16732992585c              # double 0.43887023029072281
	.quad	0x3fe7b9621b436d00              # double 0.74137978863601006
	.quad	0x3feea864804550a7              # double 0.95805573513873276
	.quad	0x3fe70357d56be0c8              # double 0.71915809329859659
	.quad	0x3fbfe98fb0566f90              # double 0.12465761237257156
	.quad	0x3fd272aef8965254              # double 0.28824972416012895
	.quad	0x3fe3b9dda2d19b08              # double 0.61643869209805846
	.quad	0x3fb3060bdcde92d0              # double 0.07431100981063854
	.quad	0x3fe1c23c672e7f3f              # double 0.55496044304525316
	.quad	0x3fcc22d04cc14cfc              # double 0.21981242893034636
	.quad	0x3fee96205765f1f9              # double 0.95582596845593948
	.quad	0x3fd18a604dc110b0              # double 0.27407081216029905
	.quad	0x3fe80f8bf9c5e99f              # double 0.75189780029113595
	.quad	0x3fc404b863c23524              # double 0.15639405127550632
	.quad	0x3fd7bcf26b0bf518              # double 0.37090740636615882
	.quad	0x3fac47f8d47c58c0              # double 0.055236602724265449
	.quad	0x3fd2cfb364af9c5e              # double 0.29392704804053504
	.quad	0x3fdf93692430e3f4              # double 0.49337223562503074
	.quad	0x3fbf38704efb6320              # double 0.12195493629714038
	.quad	0x3fdcbfb7fcc0a416              # double 0.44920158083783812
	.quad	0x3fe812988b21b6bb              # double 0.75227000402602273
	.quad	0x3fe35e953dc2aff4              # double 0.60529577314946303
	.quad	0x3fcd0451ec0ab11c              # double 0.22669433618046575
	.quad	0x3fe6165e43d1f585              # double 0.69023049589274932
	.quad	0x3feff3bb8456dfff              # double 0.99850250098734238
	.quad	0x3fc1b1d894f82500              # double 0.13823992990391076
	.quad	0x3fce035a0db6e3c8              # double 0.23447728795670586
	.quad	0x3fe36d2ef7879df5              # double 0.60707805963187289
	.quad	0x3f9007ad9000ad40              # double 0.015654289163802959
	.quad	0x3fe01010ee9d97b3              # double 0.50196119885071366
	.quad	0x3fc770bbc98d70b8              # double 0.18312785474234317
	.quad	0x3fc03f0394047264              # double 0.12692303397570293
	.quad	0x3fa017abe3d496c0              # double 0.031430598794299325
	.quad	0x3fb76d033c88cf38              # double 0.091507150916012914
	.quad	0x3fc71b7295709a68              # double 0.18052513405673953
	.quad	0x3fee2d53f04694df              # double 0.94303318909501488
	.quad	0x3fe3fecbe1f60d4d              # double 0.62485307820353742
	.quad	0x3fcca413a2aea868              # double 0.22375722354383076
	.quad	0x3fdcf914e9995438              # double 0.45270273983379949
	.quad	0x3fe9c674a6aa9932              # double 0.8054755454257132
	.quad	0x3fe32464f49eae76              # double 0.59819267060579651
	.quad	0x3fe0fc4a6f0ca1a6              # double 0.53079721154522441
	.quad	0x3fccabd175055cc0              # double 0.2239934750930157
	.quad	0x3fd6bc0e383214dc              # double 0.35522799957136697
	.quad	0x3fe741b146625aa1              # double 0.72676910159028207
	.quad	0x3fb57f0e6a7dba90              # double 0.083969975470362223
	.quad	0x3fdf959a5a9dbd44              # double 0.49350603913531566
	.quad	0x3fdd991e5e046f38              # double 0.46247061902407749
	.quad	0x3fd27cfd8834de34              # double 0.28887880612771544
	.quad	0x3fdfb811cd663688              # double 0.4956097131588213
	.quad	0x3fd6dd99bce46bb6              # double 0.3572754234934864
	.quad	0x3fc2a80d92535070              # double 0.14575357098385977
	.quad	0x3feac41530430c47              # double 0.83643588472512753
	.quad	0x3fa3eff69c186ca0              # double 0.038940149836173221
	.quad	0x3fd0bb1599708e5c              # double 0.26141872391074172
	.quad	0x3fe7e83fcb4f627f              # double 0.74710073193553217
	.quad	0x3fe6c3c57e544916              # double 0.71139788316421249
	.quad	0x3fc08b06f8df2fd8              # double 0.12924277450508614
	.quad	0x3fef062e7b2b950c              # double 0.96950458580673304
	.quad	0x3fefe1dde2b0ba5f              # double 0.99632162356813214
	.quad	0x3feaf8a85e4530cc              # double 0.84285372173465011
	.quad	0x3fe29a3d51db0366              # double 0.58132806765943879
	.quad	0x3f97732fc5a7e1a0              # double 0.022900339545203985
	.quad	0x3f96d6a0fcfdbb40              # double 0.022303119126657167
	.quad	0x3fe728263b761e3c              # double 0.72365104306749783
	.quad	0x3fdace9851efbb16              # double 0.41885955812078757
	.quad	0x3fbb7ed8b4580518              # double 0.10740427401471597
	.quad	0x3fe698550a0cc769              # double 0.70609523737787783
	.quad	0x3fcc9e7865183bd0              # double 0.22358612953436685
	.quad	0x3fdeba0af184896a              # double 0.48010514817919747
	.quad	0x3fde0163b909a014              # double 0.46883481092527401
	.quad	0x3fd506b4f31f2386              # double 0.32853435270640607
	.quad	0x3fc136b72f37b084              # double 0.13448228650611693
	.quad	0x3fb6a5b7ef0f2958              # double 0.088466163505619533
	.quad	0x3fdd87f32bdf445a              # double 0.461422722667583
	.quad	0x3fcf2766b019bed4              # double 0.2433899268976264
	.quad	0x3fe944d09bcfc4ff              # double 0.78965025360062657
	.quad	0x3fe15a01248fdf91              # double 0.54223687306419965
	.quad	0x3feafd0951d7eb7f              # double 0.843388233042205
	.quad	0x3feb722e7b4c3001              # double 0.85768817979396783
	.quad	0x3fde6d071f6059d6              # double 0.47540453018282613
	.quad	0x3fe801b76f3fb19d              # double 0.75020953872949614
	.quad	0x3fdec4c28d9ce53a              # double 0.48075927571661092
	.quad	0x3fda996c6a205308              # double 0.41561422695058114
	.quad	0x3fc6253692e918c0              # double 0.17301065610280908
	.quad	0x3f9c804c79a34aa0              # double 0.027833170818505892
	.quad	0x3fe12b2e76cb1178              # double 0.53652117921642084
	.quad	0x3fd357a7084c209c              # double 0.30222488222399035
	.quad	0x3fdb6f1e5d309c7e              # double 0.42865714169096936
	.quad	0x3fefeb6b19082704              # double 0.99748759163887301
	.quad	0x3fe85d7605ee9487              # double 0.76140881689629303
	.quad	0x3fcaa29590d29218              # double 0.20808667727864427
	.quad	0x3feb7753d95d1647              # double 0.85831634954292546
	.quad	0x3fe5c8ef92497af1              # double 0.68077829906164145
	.quad	0x3fecc4608b62570f              # double 0.89897181724038144
	.quad	0x3fda60d497ac8824              # double 0.41216006099614533
	.quad	0x3fed06af8f749c4e              # double 0.90706613558439542
	.quad	0x3fee055900701b23              # double 0.9381527908852586
	.quad	0x3fe1935b400e58e6              # double 0.54923784743257609
	.quad	0x3fe35b9f0d7118f0              # double 0.60493424058293321
	.quad	0x3fe17a8bef782f2f              # double 0.54620930453663685
	.quad	0x3feb8fdfa7facf04              # double 0.86131270226039235
	.quad	0x3fe8d5d13d5ac78c              # double 0.7761007498104262
	.quad	0x3fcaaeee70160f48              # double 0.20846348259885361
	.quad	0x3fc1687f5d301e64              # double 0.1360015110988001
	.quad	0x3fbb91bcfd47cd68              # double 0.10769253905873699
	.quad	0x3f82d64b862fe400              # double 0.0091977978063244592
	.quad	0x3fe69afcaf777047              # double 0.70641931792079837
	.quad	0x3fa0661e0e4266c0              # double 0.032029093971869482
	.quad	0x3f88205b347c2500              # double 0.011780464686597103
	.quad	0x3fee99cc5a3cf7d2              # double 0.9562742006744378
	.quad	0x3fdf24336a0b1978              # double 0.48658452373310679
	.quad	0x3fee6c6de8fc48f1              # double 0.9507360029695332
	.quad	0x3fe36be14f45541b              # double 0.60691895945149399
	.quad	0x3fd32d64e4251084              # double 0.29964563636554709
	.quad	0x3fd26b3eb9f1019a              # double 0.28779571684210625
	.quad	0x3fe05ea55efa4f46              # double 0.51155346441599003
	.quad	0x3fef5f115392a4ed              # double 0.98035494158571412
	.quad	0x3fe0d9a45c2f2a15              # double 0.52656763081296509
	.quad	0x3fcbe282de6a1fc8              # double 0.21785007343373608
	.quad	0x3fd0998d8c09385e              # double 0.2593721263446066
	.quad	0x3fdc7f580ec7d542              # double 0.44527245944421534
	.quad	0x3fed5e063be5cc90              # double 0.91772758196602133
	.quad	0x3fe1869b21ffbd0a              # double 0.54768139496255341
	.quad	0x3fe0747c3ec64541              # double 0.51421940098422436
	.quad	0x3fe339b6fff01c72              # double 0.60079526889684431
	.quad	0x3fde5f777093eec4              # double 0.47457681650096739
	.quad	0x3fd1721cdc75d256              # double 0.27258988885231383
	.quad	0x3fe79567a4cb1577              # double 0.73698789774122886
	.quad	0x3fc0830ab0688168              # double 0.12899907697375146
	.quad	0x3fec2970ccf64e8e              # double 0.88005867034594742
	.quad	0x3fedf07633335cc1              # double 0.93560323715328064
	.quad	0x3f97ad38237f99c0              # double 0.023121716658261127
	.quad	0x3fe024af87d7542d              # double 0.504478230776504
	.quad	0x3fe56860cee9c633              # double 0.66899147427301953
	.quad	0x3fc956fea84df9e4              # double 0.19796736925122993
	.quad	0x3fc3e977d0ff75e4              # double 0.15556237893080926
	.quad	0x3fca89cac80e6ad0              # double 0.20733008163809652
	.quad	0x3fc8925e8ab899d4              # double 0.19196683667651249
	.quad	0x3feca86f14a22187              # double 0.89556077985712157
	.quad	0x3fd8f5f472bc6d4e              # double 0.39001189427081762
	.quad	0x3fb5bf75d5647228              # double 0.084952702138658354
	.quad	0x3fc7f618d623bc40              # double 0.18719778495821693
	.quad	0x3fc9f6a15c6e2470              # double 0.20283905995555385
	.quad	0x3febe989360c6f4f              # double 0.87225781017648696
	.quad	0x3fee91cbce7040eb              # double 0.95529737777726831
	.quad	0x3fea155ac9b4a47b              # double 0.81510676761276046
	.quad	0x3fe3588ba799cf82              # double 0.6045587800458494
	.quad	0x3fe4790b62ba6acb              # double 0.63977593691682821
	.quad	0x3f78b766177ecb00              # double 0.0060342777214141829
	.quad	0x3fe1e491b6b8f33e              # double 0.55915151298504617
	.quad	0x3fc7076632f36288              # double 0.17991330612018808
	.quad	0x3fe58fdc7ef1edf0              # double 0.67381119531586187
	.quad	0x3fdd09499eb73590              # double 0.45369186877800249
	.quad	0x3fef3d002556dd3f              # double 0.97619635861239106
	.quad	0x3fb54d4d38f35110              # double 0.083210779575271454
	.quad	0x3feca011cb3164c2              # double 0.89453973470804038
	.quad	0x3fedd026514fdcd9              # double 0.93165889626734633
	.quad	0x3fea307db6aa0f82              # double 0.8184193198835461
	.quad	0x3fe28eee4cc9904e              # double 0.57994761464625255
	.quad	0x3fd889e03e129ab0              # double 0.38341527997765024
	.quad	0x3fdac57876def03e              # double 0.41830264671785133
	.quad	0x3fc30021d6a3be50              # double 0.14844153385591818
	.quad	0x3fe9bc45043126f1              # double 0.80423212832212532
	.quad	0x3fda19c2f7600022              # double 0.40782236249651949
	.quad	0x3fa048d5cb9d3da0              # double 0.031805688004733712
	.quad	0x3fee38fd7d0666ac              # double 0.9444568101782429
	.quad	0x3fe25440a0a42cbb              # double 0.57278472304587724
	.quad	0x3fe40c2eafa7fbb1              # double 0.62648710544441688
	.quad	0x3fe4ab576b501681              # double 0.64591570815601085
	.quad	0x3fe0eed2b175373b              # double 0.52915320071927086
	.quad	0x3fd93a2ee94eed80              # double 0.39417622360243598
	.quad	0x3fe1e5eb6ab6c9e0              # double 0.55931635706502547
	.quad	0x3fdf419e3d6e25ac              # double 0.48838001250313812
	.quad	0x3fba48a7962db0e0              # double 0.10267112175432969
	.quad	0x3fe89ff40d568e07              # double 0.76952555279825752
	.quad	0x3fcca9f9a856a738              # double 0.22393723220494066
	.quad	0x3fc020c615aba8b4              # double 0.12600017603046398
	.quad	0x3fecc4b9efd54163              # double 0.89901444284809562
	.quad	0x3fa0d310f3503940              # double 0.032860307408656642
	.quad	0x3fe036d04f884a2d              # double 0.50669112714451148
	.quad	0x3fe38c57fd28c41e              # double 0.61088180012859872
	.quad	0x3fe4c577f82a7439              # double 0.64910505742921665
	.quad	0x3fd811d8c555b208              # double 0.37608927985164131
	.quad	0x3fccbf4fd0481664              # double 0.2245883719444236
	.quad	0x3fc749d196f68998              # double 0.18194026824228327
	.quad	0x3fc13519bde35900              # double 0.13443300029639005
	.quad	0x3fd9170f378ef140              # double 0.39203243661519949
	.quad	0x3fa23029790efb40              # double 0.035523696925784609
	.quad	0x3febca0e8738c795              # double 0.86841513071543608
	.quad	0x3fe818ed3033531d              # double 0.75304278768689736
	.quad	0x3fcdcfa00bc97f3c              # double 0.23289871764699821
	.quad	0x3fa1ee9655e10470              # double 0.035023401244424046
	.quad	0x3fb6e61d883fd768              # double 0.089448781742104466
	.quad	0x3fe2566057e414f6              # double 0.57304398695182956
	.quad	0x3fe827ba98b53f81              # double 0.75484971833974168
	.quad	0x3fde605811584fec              # double 0.4746303719887226
	.quad	0x3fe5dbb0a1285814              # double 0.68306762195675441
	.quad	0x3fe81e2fba7b2ab9              # double 0.75368486806959034
	.quad	0x3fd0561b6c0586cc              # double 0.25525556134207927
	.quad	0x3fbc50e6dcb6d0f0              # double 0.11060946358231027
	.quad	0x3fead046bf9ee8cb              # double 0.8379243605225154
	.quad	0x3fe76786bbd2c812              # double 0.73138748821497956
	.quad	0x3fd32c050c246170              # double 0.29956175027611831
	.quad	0x3fb43715b20aa698              # double 0.078965526549519161
	.quad	0x3fe0dbb3288ddf8f              # double 0.52681882782688827
	.quad	0x3fd033689e1d34a6              # double 0.25313773575619292
	.quad	0x3fdd9557cb40726c              # double 0.46224016999057116
	.quad	0x3fecaea10b6ac92f              # double 0.89631702642353683
	.quad	0x3fecc2e2cac758bb              # double 0.89878978352751149
	.quad	0x3fbb3b464275ba60              # double 0.10637320635371728
	.quad	0x3feeaef8204e2efa              # double 0.958858550163739
	.quad	0x3fc96385d0cf3434              # double 0.19834969230433475
	.quad	0x3fd631eda1c2a8f8              # double 0.34679737851060066
	.quad	0x3f96cb66def201c0              # double 0.022260291440490354
	.quad	0x3fed3d4ef91f57fb              # double 0.91373394638753724
	.quad	0x3fab04c728c56b20              # double 0.052770827986668545
	.quad	0x3fed1cd1d8cd0f36              # double 0.90976803153942032
	.quad	0x3fdc47755b9fb46e              # double 0.44186147639886186
	.quad	0x3feb2af340fd55ed              # double 0.84899294560699234
	.quad	0x3fdd6c88a3c213a4              # double 0.45974937431338447
	.quad	0x3fb2350c387f1648              # double 0.071121944230150835
	.quad	0x3fe445f2ce7f632f              # double 0.63353863078655148
	.quad	0x3fe4358f189498ec              # double 0.63153796006079466
	.quad	0x3fdcef7e8d7b5226              # double 0.45211757484983861
	.quad	0x3fcb2d2b42a79870              # double 0.21231594805357501
	.quad	0x3fe7ad58ebc5eb07              # double 0.73991056489407547
	.quad	0x3fe594dac78381fb              # double 0.67442072837371769
	.quad	0x3fdfee4f13db5ac6              # double 0.49892022074838527
	.quad	0x3fee6d7d7de62fb3              # double 0.95086550321274499
	.quad	0x3fe2f2d81a9cd313              # double 0.59214406202099423
	.quad	0x3fe880051c2d0d97              # double 0.76562743666765953
	.quad	0x3fe102c43810c873              # double 0.5315877051382486
	.quad	0x3fe2f190de996eaf              # double 0.59198802448687171
	.quad	0x3fd42a99e8f06ba2              # double 0.31510017154658432
	.quad	0x3feb513628823fdd              # double 0.85366351997253853
	.quad	0x3fdd399ce2f509cc              # double 0.45664140857493574
	.quad	0x3fe61aeb3a6f01e1              # double 0.69078599369828109
	.quad	0x3fe359d2294ff06f              # double 0.60471447056580796
	.quad	0x3feb55c069176922              # double 0.85421772504495075
	.quad	0x3fd9e73cb65c52e2              # double 0.40473859604507656
	.quad	0x3fb1a7e35cc23d08              # double 0.068968019624879529
	.quad	0x3fedc4b289375b74              # double 0.93026091384932252
	.quad	0x3fe80c14fadd1bcd              # double 0.75147484776322815
	.quad	0x3fe8e0a5db9956e8              # double 0.77742283716608274
	.quad	0x3fc2e2f6aecb94e0              # double 0.14755137953685615
	.quad	0x3fee9d50d64046dd              # double 0.95670358510889353
	.quad	0x3fe52cba3455b8a9              # double 0.6617098829426783
	.quad	0x3fd4136149940cbe              # double 0.31368286309607274
	.quad	0x3fd5c18febdf7a66              # double 0.33993909868687522
	.quad	0x3fef5d5aff739251              # double 0.98014593022214502
	.quad	0x3fe6c3160ed7ec44              # double 0.71131422900305852
	.quad	0x3fd4359f37790b48              # double 0.3157728234984245
	.quad	0x3fe32def40a8395e              # double 0.59935724857659145
	.quad	0x3fc8ae2293dd0284              # double 0.19281418056381849
	.quad	0x3fea2e82eba430b3              # double 0.81817766212181764
	.quad	0x3fdb8284d21fea1e              # double 0.42984123725878642
	.quad	0x3fefc40ace12cdb6              # double 0.99268093346329667
	.quad	0x3fe554bc9ee6b95a              # double 0.66659384761241403
	.quad	0x3fae4e58971b86f0              # double 0.059191482969039089
	.quad	0x3fdfd704d4b3a6a2              # double 0.49749871036201843
	.quad	0x3fc456fdf9316d04              # double 0.15890478770857197
	.quad	0x3fd63ba3399480a6              # double 0.34738999007277938
	.quad	0x3fb296a15a213720              # double 0.072610935692150935
	.quad	0x3fcb95cc95750c14              # double 0.21550900743213275
	.quad	0x3f49c1058ac75c00              # double 7.8594942675180857E-4
	.quad	0x3fe970c68ea9304c              # double 0.79501655448394492
	.quad	0x3fe3c8a141736839              # double 0.61824095519410271
	.quad	0x3fb486227ecc2158              # double 0.080171733814613844
	.quad	0x3fb9c824c7baaff0              # double 0.10071020008280107
	.quad	0x3fe67a9de845684e              # double 0.70246787419751811
	.quad	0x3fea32fee4e34e4b              # double 0.81872505860014522
	.quad	0x3fcca6e7399885b8              # double 0.22384348213476613
	.quad	0x3fef8b360d441e44              # double 0.98574354735405522
	.quad	0x3fbbf20175712448              # double 0.10916146390185688
	.quad	0x3fc4f7eef97a974c              # double 0.16381632978044036
	.quad	0x3f9fcb095726d800              # double 0.031047960228271165
	.quad	0x3fcba2ff26462b10              # double 0.2159117638478496
	.quad	0x3fe9ad76decbd06a              # double 0.80242484583733398
	.quad	0x3fe65e0b9a0a77cf              # double 0.69898014150725796
	.quad	0x3fad422b172d92f0              # double 0.057145449237202217
	.quad	0x3fe50967661b2b88              # double 0.65739793722728823
	.quad	0x3fd6c7f72115dfe4              # double 0.35595491629601228
	.quad	0x3fe74fa653550fc5              # double 0.7284728648742137
	.quad	0x3fc624412596da5c              # double 0.17298139892018838
	.quad	0x3fedc9d25d731f8b              # double 0.93088644267935317
	.quad	0x3fe5295fffc989fd              # double 0.66130065878343169
	.quad	0x3fc06429c12ff418              # double 0.12805673535322692
	.quad	0x3fece962d077335a              # double 0.9034895011514934
	.quad	0x3fc67a1f48929e74              # double 0.17560187381353709
	.quad	0x3feff921cb9d6547              # double 0.99916162270088981
	.quad	0x3fecd6dc8150f9a7              # double 0.90122819192020109
	.quad	0x3fa41d9360e47b90              # double 0.039288144662570024
	.quad	0x3fe76b0faf3426a7              # double 0.73181900233722252
	.quad	0x3fdc59d8f96e236c              # double 0.44298385961933806
	.quad	0x3fdaaeb8c5f28e8c              # double 0.41691417055901847
	.quad	0x3fdc537d25e173c2              # double 0.44259575557026321
	.quad	0x3fd15e586356225e              # double 0.27138337803675039
	.quad	0x3fc41db5071593e0              # double 0.1571565899459122
	.quad	0x3f91b477c6d4f820              # double 0.017289992819535027
	.quad	0x3fe0b60686402bb1              # double 0.52221990795930229
	.quad	0x3fc4431772538454              # double 0.15829747278533779
	.quad	0x3fd10fe85a249690              # double 0.26659592440624014
	.quad	0x3fe23a9984be5ee5              # double 0.56965328146449379
	.quad	0x3fc412b759478210              # double 0.15682117328016476
	.quad	0x3fd5b26ddf7fac8c              # double 0.33901545358703156
	.quad	0x3fdfc7dddc126936              # double 0.49657389155767662
	.quad	0x3fe7323bc777ab6d              # double 0.72488202055442985
	.quad	0x3fc753b31c1ecaa8              # double 0.18224181054173028
	.quad	0x3fe21711feb0c4af              # double 0.56531619781721598
	.quad	0x3fd3a56aedb2143e              # double 0.30697129452193284
	.quad	0x3fe521a1d2504d70              # double 0.66035548283472956
	.quad	0x3faf7b22cd86e8f0              # double 0.061486327732795831
	.quad	0x3fd7e4a06b25c6ae              # double 0.37332926238660036
	.quad	0x3fd14ebd4b1c4d64              # double 0.27043087325110649
	.quad	0x3fefe71e454da0af              # double 0.99696267638957702
	.quad	0x3fd8cb68ec3cb996              # double 0.38741515226402023
	.quad	0x3fee971d95a69609              # double 0.95594672421128835
	.quad	0x3fe41280fba60783              # double 0.62725876951320492
	.quad	0x3fea548624177168              # double 0.82281786965499482
	.quad	0x3fd732c97d1bedea              # double 0.36247479646382763
	.quad	0x3fe6d99998817f19              # double 0.71406249796197863
	.quad	0x3fc92fae25303fb0              # double 0.19676758590548848
	.quad	0x3fec6b01612ce8c3              # double 0.8880621812779953
	.quad	0x3fea5553d98971b2              # double 0.82291595924066585
	.quad	0x3fd2a6a184e2465c              # double 0.29142034508649828
	.quad	0x3fe9bccfd3ed7066              # double 0.80429831878747104
	.quad	0x3fe98de2298c00ab              # double 0.79856975664735808
	.quad	0x3fe8ab27c0bb9b6e              # double 0.77089297907956023
	.quad	0x3faa26a645283a90              # double 0.051076122228654985
	.quad	0x3fda31b60fc3ecfc              # double 0.40928412952025872
	.quad	0x3fea9869cae7b5d5              # double 0.83110513334184566
	.quad	0x3fec0111f74f25ee              # double 0.87513063719341999
	.quad	0x3fe77e9dc8c91b94              # double 0.73420609680111903
	.quad	0x3fb33853cbd1cb18              # double 0.075078236828442946
	.quad	0x3fee5220b718cb7d              # double 0.94752536545853128
	.quad	0x3feb7000d7b9646c              # double 0.8574222768176134
	.quad	0x3feab391e5f22cc4              # double 0.83442015563323268
	.quad	0x3fb952714d25ac00              # double 0.098914223990206551
	.quad	0x3fe89830f8560f46              # double 0.76857803824575721
	.quad	0x3fc3a1ae3cd8fcc4              # double 0.15337160082888179
	.quad	0x3fd59ef422ca8b9e              # double 0.33782676122262412
	.quad	0x3fd84b1f3560c238              # double 0.37958507740680458
	.quad	0x3fd38d11921c259a              # double 0.30548514622258838
	.quad	0x3fdc0bb500163d1c              # double 0.43821454056247133
	.quad	0x3fc2e4bf8548f498              # double 0.14760583885246059
	.quad	0x3fca28b66cfa4b40              # double 0.20436744996239931
	.quad	0x3fb1e85e2994e800              # double 0.069951901580594722
	.quad	0x3fd33006afd95f4c              # double 0.29980628178372082
	.quad	0x3fec6b91b16a03ee              # double 0.88813099528499406
	.quad	0x3fd01a3dd9c60266              # double 0.25160166041317777
	.quad	0x3fd452dc5683a552              # double 0.31755741547256833
	.quad	0x3feec1e394f1c35a              # double 0.96116808977795221
	.quad	0x3fd6c045987b9e12              # double 0.35548534289270706
	.quad	0x3fe4535447a2736e              # double 0.6351720236885805
	.quad	0x3fddf7e32f511a7a              # double 0.4682548486784196
	.quad	0x3fe96551dd124eff              # double 0.79361813715010487
	.quad	0x3fb2dc0edd796460              # double 0.073670319624754566
	.quad	0x3fe9672b45c15409              # double 0.79384387611446627
	.quad	0x3fe069016eadd69e              # double 0.51281806580546507
	.quad	0x3fe304fce90caf0c              # double 0.59435887830247358
	.quad	0x3fee063241c9ea67              # double 0.93825638627397445
	.quad	0x3fe566179081d38e              # double 0.66871240829515144
	.quad	0x3fec0cfba857161d              # double 0.87658484343473086
	.quad	0x3fccbc29365d7c40              # double 0.22449221758412996
	.quad	0x3fe8b19af4af01c7              # double 0.77168033399362279
	.quad	0x3fe27b4df2c61be5              # double 0.57755181710024017
	.quad	0x3fcde6a1b5f18b40              # double 0.23360082038842656
	.quad	0x3fa0cde00dd79950              # double 0.032820703210563296
	.quad	0x3fe99c34d7fde385              # double 0.80031816659821742
	.quad	0x3fbfee85a187c278              # double 0.12473330682383643
	.quad	0x3fde2f7174840e28              # double 0.47164570215702151
	.quad	0x3fd28705665eba16              # double 0.28949103352616257
	.quad	0x3fd8ca9697476ab0              # double 0.38736500523888662
	.quad	0x3fc68f33ff1829cc              # double 0.17624521213322308
	.quad	0x3fdc17542efd3490              # double 0.43892387951638856
	.quad	0x3fd909862b9318a0              # double 0.39120630507785314
	.quad	0x3fe6a00bc0239441              # double 0.70703685309548103
	.quad	0x3fecd545af6185ff              # double 0.90103420499889342
	.quad	0x3fda7f575ed2db76              # double 0.41402229557154813
	.quad	0x3fe4675714499139              # double 0.63761476480843904
	.quad	0x3fe34ba15cd713ea              # double 0.60298221714822131
	.quad	0x3fcee604205d7a0c              # double 0.24139453487710261
	.quad	0x3fcddd5f94b05a78              # double 0.2333182788867878
	.quad	0x3fe3722ff97e8464              # double 0.60768889169061113
	.quad	0x3fd7f2851c5badba              # double 0.37417724389407747
	.quad	0x3fe02c8eeee7cbf1              # double 0.50543924962255293
	.quad	0x3feaddfb600f3ae5              # double 0.83959740411395656
	.quad	0x3febbd44e1e4b9b5              # double 0.86685413474861284
	.quad	0x3fc2052b58a5d870              # double 0.1407827551699401
	.quad	0x3fef7fe335515ff2              # double 0.98436127103468452
	.quad	0x3fd5a228cc49dab6              # double 0.33802242231414981
	.quad	0x3fe83ac47afb1388              # double 0.75717376727753649
	.quad	0x3fe199a0c7541915              # double 0.55000342303609051
	.quad	0x3fa7cb0d97755bf0              # double 0.04647104715211714
	.quad	0x3f8ee81b38782f80              # double 0.015091145191966637
	.quad	0x3f7bb774451a1a00              # double 0.0067667524141428181
	.quad	0x3fe7fd00eab83e0e              # double 0.74963422626200482
	.quad	0x3fbb66ad96c8f3e8              # double 0.10703549319528316
	.quad	0x3fe42d9193fd08bf              # double 0.63056258110034225
	.quad	0x3fd9b3e75baf64a0              # double 0.40160545304895301
	.quad	0x3fc6300fd41e7dec              # double 0.17334173066500058
	.quad	0x3fe6197ef7671162              # double 0.69061230011770314
	.quad	0x3fe4a2722b6789fc              # double 0.64482983090812196
	.quad	0x3feb78f715ab7ff1              # double 0.85851625664144937
	.quad	0x3fdbd470ef8b5f68              # double 0.43484137909898957
	.quad	0x3fe9314af86c7f74              # double 0.78726719398762989
	.quad	0x3fe746340869b30c              # double 0.72731973307745212
	.quad	0x3fe5af0754ca75fc              # double 0.67761580048289671
	.quad	0x3feb731af0d0a400              # double 0.85780093225650944
	.quad	0x3fe32fe2b8a23fd7              # double 0.59959541379248094
	.quad	0x3fe81df89f5fa8a9              # double 0.75365859153432269
	.quad	0x3fca1a8c4946ea0c              # double 0.20393518045405334
	.quad	0x3fef86665e6e7ebd              # double 0.9851562351577382
	.quad	0x3fe64042ef0c9647              # double 0.6953444165162147
	.quad	0x3fa28fe319bd40a0              # double 0.036254021541595849
	.quad	0x3fe5c84026bab73e              # double 0.68069465221717684
	.quad	0x3fdccd36b09eb2c2              # double 0.45002524612463557
	.quad	0x3fc87dd34c714630              # double 0.19133988602202257
	.quad	0x3fee748b1d7f7264              # double 0.95172649155899735
	.quad	0x3fee7414373c82bd              # double 0.95166979587892053
	.quad	0x3fbddffe62771dc8              # double 0.1166991224664492
	.quad	0x3fe7e841d2abb3b1              # double 0.74710169932006043
	.quad	0x3fe85901eeed0eaa              # double 0.76086517968402245
	.quad	0x3fc75004fd3c77b8              # double 0.18212950100945391
	.quad	0x3fddb334161924de              # double 0.46406271131543331
	.quad	0x3fc99683d89c5114              # double 0.19990585400285765
	.quad	0x3fe5b2f89f70091b              # double 0.67809706821597915
	.quad	0x3fec04caf096dd1d              # double 0.87558505048847091
	.quad	0x3fed2eb3b8647925              # double 0.91195093168406471
	.quad	0x3fc2551cb0b9ab7c              # double 0.1432224142948505
	.quad	0x3fe2e15c58397c5e              # double 0.59000985366209213
	.quad	0x3fedec7da5b032d0              # double 0.93511850701323773
	.quad	0x3fe6a8c4954fe1e8              # double 0.70810155069835634
	.quad	0x3fe0e1e41b4dd9e3              # double 0.52757459004243079
	.quad	0x3fe60f428c10cbd5              # double 0.68936278683247088
	.quad	0x3fb3c4707e658af8              # double 0.077216177805478625
	.quad	0x3fdc0487ab34de38              # double 0.43777648658167179
	.quad	0x3fb59a67d3d6aa78              # double 0.084387292116540169
	.quad	0x3fe55370d84dcf02              # double 0.66643564459670324
	.quad	0x3fddfe05b7c9f3d2              # double 0.4686292929471253
	.quad	0x3fcc6145c2a57d3c              # double 0.22171852115841684
	.quad	0x3fd82e4899a30500              # double 0.37782492641061083
	.quad	0x3fe12a6699f4bf5b              # double 0.53642587728061686
	.quad	0x3fe8f34526d240c6              # double 0.77969606001172376
	.quad	0x3fd927425c0e67e2              # double 0.39302119245405553
	.quad	0x3fece84cdbe8f6ae              # double 0.90335696173834434
	.quad	0x3fdfd1635dddbe70              # double 0.49715503851528009
	.quad	0x3fd582127c7848bc              # double 0.33606397776851415
	.quad	0x3fe98c246b6fd3ea              # double 0.79835721000438054
	.quad	0x3fefa3ef897255d6              # double 0.98876168103259476
	.quad	0x3fd23b5c73a62990              # double 0.28487311643461855
	.quad	0x3fe19b9440e5b3e0              # double 0.55024159121751026
	.quad	0x3fef912be171f2f8              # double 0.9864711192345501
	.quad	0x3fcda81b9fe10b88              # double 0.2316927462253171
	.quad	0x3fd653e548468208              # double 0.348870583135096
	.quad	0x3fdb2a8ce3c966fc              # double 0.42447206730649589
	.quad	0x3fe90682ecd83164              # double 0.78204485186283223
	.quad	0x3fe06768385a603d              # double 0.51262293821765292
	.quad	0x3fe770657f466441              # double 0.73247027262107889
	.quad	0x3fd274161dabb1ec              # double 0.2883353509667177
	.quad	0x3fe77c13ced68ee8              # double 0.73389616392202317
	.quad	0x3fe9f8ecc08405d8              # double 0.81163632965779708
	.quad	0x3fd486500e5e2d4c              # double 0.32069779780495788
	.quad	0x3fce7f3e88a4aa34              # double 0.23825818702728585
	.quad	0x3fe3f3d36e09eafc              # double 0.62351390354100955
	.quad	0x3fedf172e088cd00              # double 0.93572372297640527
	.quad	0x3fe6d0e73de8ca3e              # double 0.71300088969866926
	.quad	0x3fedb00764700a3e              # double 0.9277378999398207
	.quad	0x3fee75411d3484cc              # double 0.95181327537661664
	.quad	0x3fde6ea15dab37ae              # double 0.47550233981462042
	.quad	0x3fdede2c68729b74              # double 0.48231039237946693
	.quad	0x3fdd05d8666d4c24              # double 0.45348176958686026
	.quad	0x3fce03ffd9d64eac              # double 0.23449705254153252
	.quad	0x3fe3de0ce2bc1f77              # double 0.62085575374747648
	.quad	0x3fd14d4682438c60              # double 0.27034151764946124
	.quad	0x3fee8456bf816f54              # double 0.95365464595259163
	.quad	0x3fe531136ed94bef              # double 0.66224071169051324
	.quad	0x3febd5d64523e965              # double 0.86985314849816275
	.quad	0x3fe324465b5ccde6              # double 0.59817808002702288
	.quad	0x3fe0d3b76cfe74ba              # double 0.52584430015453809
	.quad	0x3fe4379ca0979980              # double 0.6317885529104359
	.quad	0x3fc6f167b758cf88              # double 0.17924210026250997
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
