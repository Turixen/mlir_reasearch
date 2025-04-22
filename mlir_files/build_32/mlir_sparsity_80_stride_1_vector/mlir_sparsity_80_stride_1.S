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
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	57                              # 0x39
	.quad	86                              # 0x56
	.quad	111                             # 0x6f
	.quad	127                             # 0x7f
	.quad	143                             # 0x8f
	.quad	156                             # 0x9c
	.quad	181                             # 0xb5
	.quad	194                             # 0xc2
	.quad	212                             # 0xd4
	.quad	236                             # 0xec
	.quad	255                             # 0xff
	.quad	273                             # 0x111
	.quad	281                             # 0x119
	.quad	302                             # 0x12e
	.quad	323                             # 0x143
	.quad	338                             # 0x152
	.quad	357                             # 0x165
	.quad	368                             # 0x170
	.quad	391                             # 0x187
	.quad	418                             # 0x1a2
	.quad	445                             # 0x1bd
	.quad	462                             # 0x1ce
	.quad	483                             # 0x1e3
	.quad	502                             # 0x1f6
	.quad	524                             # 0x20c
	.quad	547                             # 0x223
	.quad	567                             # 0x237
	.quad	587                             # 0x24b
	.quad	615                             # 0x267
	.quad	636                             # 0x27c
	.quad	659                             # 0x293
	.quad	671                             # 0x29f
	.quad	690                             # 0x2b2
	.quad	706                             # 0x2c2
	.quad	730                             # 0x2da
	.quad	752                             # 0x2f0
	.quad	775                             # 0x307
	.quad	790                             # 0x316
	.quad	811                             # 0x32b
	.quad	836                             # 0x344
	.quad	856                             # 0x358
	.quad	877                             # 0x36d
	.quad	898                             # 0x382
	.quad	914                             # 0x392
	.quad	936                             # 0x3a8
	.quad	959                             # 0x3bf
	.quad	978                             # 0x3d2
	.quad	998                             # 0x3e6
	.quad	1019                            # 0x3fb
	.quad	1043                            # 0x413
	.quad	1057                            # 0x421
	.quad	1082                            # 0x43a
	.quad	1111                            # 0x457
	.quad	1131                            # 0x46b
	.quad	1155                            # 0x483
	.quad	1176                            # 0x498
	.quad	1197                            # 0x4ad
	.quad	1216                            # 0x4c0
	.quad	1238                            # 0x4d6
	.quad	1257                            # 0x4e9
	.quad	1277                            # 0x4fd
	.quad	1291                            # 0x50b
	.quad	1310                            # 0x51e
	.quad	1328                            # 0x530
	.quad	1339                            # 0x53b
	.quad	1359                            # 0x54f
	.quad	1383                            # 0x567
	.quad	1408                            # 0x580
	.quad	1429                            # 0x595
	.quad	1449                            # 0x5a9
	.quad	1474                            # 0x5c2
	.quad	1499                            # 0x5db
	.quad	1513                            # 0x5e9
	.quad	1532                            # 0x5fc
	.quad	1553                            # 0x611
	.quad	1572                            # 0x624
	.quad	1591                            # 0x637
	.quad	1612                            # 0x64c
	.quad	1630                            # 0x65e
	.quad	1645                            # 0x66d
	.quad	1663                            # 0x67f
	.quad	1682                            # 0x692
	.quad	1699                            # 0x6a3
	.quad	1717                            # 0x6b5
	.quad	1731                            # 0x6c3
	.quad	1749                            # 0x6d5
	.quad	1769                            # 0x6e9
	.quad	1789                            # 0x6fd
	.quad	1811                            # 0x713
	.quad	1835                            # 0x72b
	.quad	1856                            # 0x740
	.quad	1874                            # 0x752
	.quad	1892                            # 0x764
	.quad	1915                            # 0x77b
	.quad	1931                            # 0x78b
	.quad	1951                            # 0x79f
	.quad	1979                            # 0x7bb
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	25                              # 0x19
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	91                              # 0x5b
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	34                              # 0x22
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	5                               # 0x5
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	75                              # 0x4b
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	0x3fed98a21c827ab3              # double 0.9248819882230549
	.quad	0x3fad27b7d26d7e20              # double 0.056943649708724786
	.quad	0x3fdcc60a9a9f863a              # double 0.44958748912731361
	.quad	0x3fce69d22061275c              # double 0.2376043947318135
	.quad	0x3fe8b09a82cf049c              # double 0.77155805157248691
	.quad	0x3fdeb8fa7e0f9a48              # double 0.48004019079818194
	.quad	0x3fe4949f73eafeb4              # double 0.64314243927215964
	.quad	0x3fef4bb03f92fb82              # double 0.97798931519342625
	.quad	0x3fa4bccb0729ac90              # double 0.040502876877178129
	.quad	0x3fde2466ff32fdd0              # double 0.47097182199283072
	.quad	0x3febc847bec880be              # double 0.86819827329966137
	.quad	0x3fe7d5c9a3c284c1              # double 0.74484712585776702
	.quad	0x3fe62c13c68212b7              # double 0.6928805234061518
	.quad	0x3fe8d1c729542b0e              # double 0.77560766288783767
	.quad	0x3fe274693caf8667              # double 0.57671033718743281
	.quad	0x3fd1448d93574e6c              # double 0.26980914486669039
	.quad	0x3fd4ceb7300448f8              # double 0.32511691750654803
	.quad	0x3fc5ab75b9f7c3f0              # double 0.1692950399442732
	.quad	0x3fd62ca7ffbab888              # double 0.34647560094425289
	.quad	0x3fa31ee2881ea0d0              # double 0.037345008007208969
	.quad	0x3fe2f33041a58857              # double 0.59218609639743647
	.quad	0x3febcca6b4e72e3d              # double 0.86873183567644896
	.quad	0x3fef543de48271ee              # double 0.97903341894885698
	.quad	0x3fc44d5d362087e4              # double 0.15861096518443596
	.quad	0x3fe33e55c24eaa77              # double 0.60135925245897581
	.quad	0x3fb69bcf3cde9118              # double 0.088314964638417925
	.quad	0x3fdbc69069ed2a5c              # double 0.4339943918645639
	.quad	0x3fd6251a6e000c0c              # double 0.34601460210996104
	.quad	0x3fb1d03902fa4de0              # double 0.069583476283063828
	.quad	0x3fedee8a266fdf17              # double 0.93536860949731959
	.quad	0x3fe08e91ef393241              # double 0.51740357135128801
	.quad	0x3fe8f6e44f2acafb              # double 0.78013816320739637
	.quad	0x3fe0fbdf9aa6fd1d              # double 0.53074627118613515
	.quad	0x3fd66d624d0257d8              # double 0.35042626877236449
	.quad	0x3fda9a6d2afa41ca              # double 0.41567544171359982
	.quad	0x3feb819d1326139e              # double 0.85957196941363967
	.quad	0x3fdde0d1585ee6fc              # double 0.46684678678467129
	.quad	0x3fdd4a082e2f62ba              # double 0.45764355192435924
	.quad	0x3fc98c213e226aa0              # double 0.19958892377765824
	.quad	0x3fe6c0efb0d2e485              # double 0.71105179344080283
	.quad	0x3fc36093ca1e47bc              # double 0.15138480538422339
	.quad	0x3fe5f99a4765aeec              # double 0.68671907372251217
	.quad	0x3feb183ed543ffa5              # double 0.84670964864198039
	.quad	0x3fd8326572c4b436              # double 0.37807594497536756
	.quad	0x3fe02b0b680c05a4              # double 0.50525446244880756
	.quad	0x3fedbfc66909a177              # double 0.92966003909263761
	.quad	0x3f939b69746d5360              # double 0.019147536975043677
	.quad	0x3fcf0c489077ffa4              # double 0.2425623612798492
	.quad	0x3feccee1d897d288              # double 0.90025417617160119
	.quad	0x3fe066737ccb8bc3              # double 0.51250624059718353
	.quad	0x3fe430b957c0543a              # double 0.63094775332377329
	.quad	0x3fee1f8cd5b936b7              # double 0.94135133498067247
	.quad	0x3fefd010c91c5eb7              # double 0.99414862899262501
	.quad	0x3fe96a328b2f1db8              # double 0.79421355423340056
	.quad	0x3fe2e066eeedbdbb              # double 0.58989283242947665
	.quad	0x3fbdbe2d65080d40              # double 0.11618312565410793
	.quad	0x3fe3ba063a927977              # double 0.61645804824710992
	.quad	0x3feec4adda76adf5              # double 0.96150868099851882
	.quad	0x3fc7f075ae2d7f90              # double 0.18702574734470234
	.quad	0x3fe47617581c1b19              # double 0.63941542824690878
	.quad	0x3febf957b6989307              # double 0.87418733275680516
	.quad	0x3fd9a8172e7c1e64              # double 0.40088443316969902
	.quad	0x3fbbb8cccc7e3060              # double 0.10828857414725368
	.quad	0x3fcc286480c2fe68              # double 0.21998268401329146
	.quad	0x3fe0cac3f4193f45              # double 0.52475164103996319
	.quad	0x3fe3cea29230cb9a              # double 0.61897400429585336
	.quad	0x3fd600c08235804a              # double 0.34379589763375817
	.quad	0x3fefa865347609d9              # double 0.98930607076936916
	.quad	0x3fedbfe480214751              # double 0.92967438722028295
	.quad	0x3fe0a236f6233733              # double 0.51980159829847705
	.quad	0x3fe4973919d0c40e              # double 0.6434598449906177
	.quad	0x3fde05b978a163ee              # double 0.46909939556422742
	.quad	0x3fc12c45fd1d4efc              # double 0.1341636167440966
	.quad	0x3fe23bc7f31b2e56              # double 0.56979749185252149
	.quad	0x3fe816115d5e4a21              # double 0.75269382701873522
	.quad	0x3fe580f5b55e91c7              # double 0.67199216293061503
	.quad	0x3fe5b1227965572d              # double 0.67787288389329137
	.quad	0x3fec8308983f38a5              # double 0.89099530921682357
	.quad	0x3fe224d52aa01c3d              # double 0.56699617696074933
	.quad	0x3fce58d078454ebc              # double 0.23708539841265075
	.quad	0x3fb17e3c6ffe89e0              # double 0.068332459776264454
	.quad	0x3fb06d9ae5b15288              # double 0.064172440602599079
	.quad	0x3fe1b550d50ed40f              # double 0.55338327038646351
	.quad	0x3fa676c3a868b400              # double 0.043874849612940636
	.quad	0x3fe369fce01bb28f              # double 0.60668796321040641
	.quad	0x3fdbd4934006aa08              # double 0.43484956028501687
	.quad	0x3feac9db74c797e2              # double 0.83714077766921613
	.quad	0x3fdfed6b673a01dc              # double 0.49886593895646825
	.quad	0x3fe453710b3b9f08              # double 0.63518573945927503
	.quad	0x3fd7879bdf0bff3a              # double 0.36765190870208964
	.quad	0x3fe1a333d12da721              # double 0.55117216925757273
	.quad	0x3fef0eaaf69a842f              # double 0.97054050602685559
	.quad	0x3fc62e5f6cf65bd0              # double 0.17329018421580011
	.quad	0x3fee165372ce3290              # double 0.94022533820096221
	.quad	0x3fc60ca5ecd58ad4              # double 0.17226099075477086
	.quad	0x3fe8d63221064272              # double 0.77614695024574432
	.quad	0x3fc586ce514b9ab4              # double 0.16817645043848517
	.quad	0x3fe2dea6e099d2c0              # double 0.58967918269498654
	.quad	0x3fe3dd171c3670a6              # double 0.62073855886730622
	.quad	0x3fe0f5be653f908c              # double 0.52999801421221227
	.quad	0x3fe0eaf9b793ebad              # double 0.52868352751771897
	.quad	0x3fd53cff09b0ad96              # double 0.33184791513732514
	.quad	0x3fd1e93edd0c0fb4              # double 0.27986117922432219
	.quad	0x3fd55099a73b61ac              # double 0.33304444628950125
	.quad	0x3fe96942277fb11d              # double 0.79409892763718271
	.quad	0x3fb07c220cd31cb8              # double 0.064394119387645499
	.quad	0x3fd9d0fec170d78a              # double 0.40338105097486532
	.quad	0x3fe8b9f4f793ec39              # double 0.77269981722873304
	.quad	0x3fecf94e1cdf39ee              # double 0.90543275488908903
	.quad	0x3fcde57a61f24bc8              # double 0.23356561453382896
	.quad	0x3fe41c93f14503b6              # double 0.62848851321188337
	.quad	0x3feb7cacacffdb2f              # double 0.85896905697777537
	.quad	0x3fe18aa505d8e75f              # double 0.54817439214751207
	.quad	0x3fda8f8c4e461b40              # double 0.4150114788430308
	.quad	0x3fec1fe10cd989f8              # double 0.8788914919826416
	.quad	0x3fee1c502cbb5004              # double 0.94095619904192107
	.quad	0x3fb31d6695bcfa08              # double 0.074667369420218788
	.quad	0x3fe5e61868c6f293              # double 0.68433781112942638
	.quad	0x3faa5e71bd8ffd80              # double 0.051501802816342312
	.quad	0x3fe949bb7f288bbe              # double 0.79025053821202795
	.quad	0x3fea367909c3bca3              # double 0.81914951235912203
	.quad	0x3fe55e040869c59b              # double 0.66772653239438584
	.quad	0x3fd244d467bdae56              # double 0.28545103198005017
	.quad	0x3fe2cc567dd0f655              # double 0.58744358609664948
	.quad	0x3fade76a75b3f870              # double 0.058406187885325589
	.quad	0x3fa13c60a541f200              # double 0.033663768933340776
	.quad	0x3fdfd3e62ed24296              # double 0.49730829784770358
	.quad	0x3fcd4ae180fffefc              # double 0.22884768294169777
	.quad	0x3fdb0f4205190e62              # double 0.42280626771773744
	.quad	0x3fe046689ba6652f              # double 0.50859480286013603
	.quad	0x3fe9fc62b8572f91              # double 0.8120587921525716
	.quad	0x3fe7a8e794f70726              # double 0.73936823935239171
	.quad	0x3fe0c4d84eea3d68              # double 0.52402892506681287
	.quad	0x3fe1cb52bfd2a6d4              # double 0.5560697313823888
	.quad	0x3fda4050f144309c              # double 0.41017554818314195
	.quad	0x3fdcda3666d0a3be              # double 0.4508186344197006
	.quad	0x3faa3591ad32aa10              # double 0.051189949409792601
	.quad	0x3fee5c00558d685e              # double 0.948730628103714
	.quad	0x3fe15324d655be39              # double 0.5413994013051201
	.quad	0x3fefd939998c8ee1              # double 0.99526672353792033
	.quad	0x3fe05de5dff85ed6              # double 0.51146215194872968
	.quad	0x3fe432e6fb464420              # double 0.63121365620657244
	.quad	0x3fe15a4bf07ec89c              # double 0.54227253886917337
	.quad	0x3fe194ad5094a43f              # double 0.54939904917149096
	.quad	0x3feb2251e89af808              # double 0.84793944769603602
	.quad	0x3fe27b6e235cf87a              # double 0.5775671663939328
	.quad	0x3fe7f321b077acc9              # double 0.74842915026001677
	.quad	0x3fec45c87b76e9fc              # double 0.88351844896470721
	.quad	0x3feac4db62b41be0              # double 0.83653039243733573
	.quad	0x3fd98eb50662d72c              # double 0.39933515189783253
	.quad	0x3fd1839597e04ed6              # double 0.27365627128277248
	.quad	0x3fdcb001ba2b3e54              # double 0.4482425993018968
	.quad	0x3fd90cc3a9871736              # double 0.3914040713828969
	.quad	0x3fd7010911ba5536              # double 0.35943819743382066
	.quad	0x3fe5aa5ae7f9c655              # double 0.67704530055761813
	.quad	0x3fecfb62b1957ce8              # double 0.90568670925486305
	.quad	0x3fd38281e798627c              # double 0.30484054199909116
	.quad	0x3fec7a0fd2493a8c              # double 0.88990012237066329
	.quad	0x3fd77117294910cc              # double 0.36627749473360605
	.quad	0x3fd43bf1904f23be              # double 0.31615866749467247
	.quad	0x3fe032f81ee6569a              # double 0.50622182879552047
	.quad	0x3fee652749653649              # double 0.94984783492118041
	.quad	0x3fe095d2779ae77c              # double 0.51828883514757207
	.quad	0x3feff342179256bf              # double 0.99844460109553512
	.quad	0x3fe83e361f48e337              # double 0.75759416685386938
	.quad	0x3fd43c580253a1ec              # double 0.31618309237685938
	.quad	0x3fd1de2adb1bddae              # double 0.27918502232884179
	.quad	0x3fdff3ae288a9f94              # double 0.49924806555872547
	.quad	0x3feb562ba86b0bd3              # double 0.85426886457605133
	.quad	0x3fe8b39d27ed2fb4              # double 0.77192552374025646
	.quad	0x3feba37ad9455bd8              # double 0.8637060397694496
	.quad	0x3fbe353ceec989b8              # double 0.11799984769598992
	.quad	0x3fe32648fe03bc31              # double 0.59842347728943512
	.quad	0x3fdede6c61596fa8              # double 0.48232564455769955
	.quad	0x3fcde3ac230e81d4              # double 0.23351051055671113
	.quad	0x3fea0020622c9b80              # double 0.81251544165284884
	.quad	0x3fe7e55b137696a5              # double 0.74674752999699889
	.quad	0x3fce708e20f11ac8              # double 0.23780991180884414
	.quad	0x3fef5ab76457194d              # double 0.97982377622319349
	.quad	0x3fdc4dc65e3591f8              # double 0.44224700164912134
	.quad	0x3fc6f0a577c9c610              # double 0.17921894406349326
	.quad	0x3fd6d17fdd1c5d12              # double 0.3565368327412709
	.quad	0x3fe1506edae0124d              # double 0.54106848477437952
	.quad	0x3fe52b4a1ff9742a              # double 0.66153436894422168
	.quad	0x3fe8f6afca308f6e              # double 0.78011311998532817
	.quad	0x3fe57f6928a4a189              # double 0.67180307329276545
	.quad	0x3fe97fb8dc1ab8a2              # double 0.79684107770096468
	.quad	0x3fed83b5178608e9              # double 0.92232756227920476
	.quad	0x3fe75c4912267cc6              # double 0.73001531167019418
	.quad	0x3fe8defad3bbdaee              # double 0.7772192130495037
	.quad	0x3feee8fe3398ebb4              # double 0.96594152524573084
	.quad	0x3fd1602a024ab05a              # double 0.27149439071468395
	.quad	0x3fd38dee5bba73d6              # double 0.30553778608174065
	.quad	0x3fcb768058760d90              # double 0.2145538742007429
	.quad	0x3fe3e684f665e989              # double 0.62188957333209871
	.quad	0x3fdd9894b92e4116              # double 0.46243780216265529
	.quad	0x3fc16c75ce72daa8              # double 0.13612244205952106
	.quad	0x3fe03b13357d2f7d              # double 0.50721130797454317
	.quad	0x3fe23b60679e44ab              # double 0.56974811780869083
	.quad	0x3fbf04883529abc0              # double 0.12116290376586303
	.quad	0x3fe09cbe2613a613              # double 0.51913363873353757
	.quad	0x3fe29cab605c1a09              # double 0.58162468738811512
	.quad	0x3fc217b59bdad834              # double 0.14134855375385913
	.quad	0x3fe447d4f86c7803              # double 0.63376854439025043
	.quad	0x3fef0aae016a51ce              # double 0.97005367542674903
	.quad	0x3f91a052a00164a0              # double 0.017213145271260388
	.quad	0x3fd9728d200669a6              # double 0.39761665465780494
	.quad	0x3fe9ce28593d798d              # double 0.8064157240840345
	.quad	0x3fe5ae081b4b1bb1              # double 0.67749409991016851
	.quad	0x3fe8aa2019adedf9              # double 0.77076725974569549
	.quad	0x3feb7269261ab4d2              # double 0.85771615450144112
	.quad	0x3fe4b7ea00091133              # double 0.64745044714849198
	.quad	0x3fe014684c18557d              # double 0.50249113905253717
	.quad	0x3fddcdfb03397774              # double 0.46569705309763454
	.quad	0x3fcac23eaf7d82f0              # double 0.20905288285123147
	.quad	0x3fe798aa94588396              # double 0.73738602613240078
	.quad	0x3fcef3010be97d70              # double 0.24179089624065453
	.quad	0x3fd3bbcc17b5e40a              # double 0.30833723369102073
	.quad	0x3fc26b2605710e80              # double 0.1438949133463332
	.quad	0x3fecd2edd1bf1436              # double 0.90074816671461266
	.quad	0x3fa64c1738e0bd70              # double 0.043549276059247854
	.quad	0x3fb3a77b7d31f998              # double 0.076774328294027305
	.quad	0x3fdbe438d8cfe080              # double 0.43580456898735775
	.quad	0x3f9913d5c430a3a0              # double 0.024489727115141968
	.quad	0x3fe0d4437d364314              # double 0.52591108756505145
	.quad	0x3fb1daceef5a6420              # double 0.069745000301182802
	.quad	0x3fdebf1fc81ff474              # double 0.4804152922004683
	.quad	0x3fe37b7eb9ee4139              # double 0.60882507624231785
	.quad	0x3fe76004c126dd21              # double 0.73047101712191786
	.quad	0x3fe44c4306ef1160              # double 0.6343093047549182
	.quad	0x3fc37bc36aa67798              # double 0.15221445758373586
	.quad	0x3fd27a0601330cdc              # double 0.28869772069101685
	.quad	0x3fe4a75ffbf7001d              # double 0.6454315110386265
	.quad	0x3fc568bca7b1bd24              # double 0.16725881756017558
	.quad	0x3fca44beac8cc674              # double 0.20522292542732468
	.quad	0x3fe6d7892f02a744              # double 0.71381053144180173
	.quad	0x3fe2f16af1633eff              # double 0.59196993967086076
	.quad	0x3fdd199c25a231dc              # double 0.45468810725358622
	.quad	0x3fe107108a97a6fc              # double 0.53211237973047742
	.quad	0x3fd451db0785a30e              # double 0.31749606833049959
	.quad	0x3fde9ff785254ba0              # double 0.47851360323437042
	.quad	0x3fc2fb69dcb02470              # double 0.14829753185066208
	.quad	0x3f955720851aa6a0              # double 0.020840175746946188
	.quad	0x3fddbf8bb343c7c2              # double 0.46481602197956928
	.quad	0x3f998a5722d5c8e0              # double 0.024941789151349592
	.quad	0x3fe0481215b23a77              # double 0.50879768598117792
	.quad	0x3fe978b4edda548e              # double 0.79598471122393888
	.quad	0x3fdce403bd6ebc16              # double 0.45141690730355444
	.quad	0x3fded22bbc2d0848              # double 0.48157781006387212
	.quad	0x3fe224204cb57cce              # double 0.56690993292058933
	.quad	0x3fddb3b9f0028a1e              # double 0.46409462393254042
	.quad	0x3fd8f69b2e4761e2              # double 0.39005164641778667
	.quad	0x3fe555ee4fa5002c              # double 0.66673961215565702
	.quad	0x3fe06e70f028d621              # double 0.51348158746867878
	.quad	0x3fec4698ab6b3f4b              # double 0.88361772041569375
	.quad	0x3fc56cf16523fea8              # double 0.16738717497354583
	.quad	0x3fb38c2c178ff640              # double 0.076357608559157519
	.quad	0x3fe2785831f9083a              # double 0.57719049225148145
	.quad	0x3feab0a59d72a94c              # double 0.83406334640066281
	.quad	0x3fe05780a08f2aba              # double 0.51068145140865018
	.quad	0x3faa9726ce21d250              # double 0.051934445059406031
	.quad	0x3fc4a8da0b87ccfc              # double 0.1614029461194163
	.quad	0x3fcadaf12f062d48              # double 0.20980658336734792
	.quad	0x3fe3c8ad1c0531dd              # double 0.61824660752023031
	.quad	0x3fdc6da7aba36834              # double 0.44419280778459158
	.quad	0x3fee2d50aec16fea              # double 0.94303163654285282
	.quad	0x3fe3d91c0e86c246              # double 0.62025263631046168
	.quad	0x3fd95301b8b41cc8              # double 0.39569132840592802
	.quad	0x3fe723ef103bd314              # double 0.72313645525591363
	.quad	0x3fd459fcb18dd7c2              # double 0.31799237574830042
	.quad	0x3fba5711ce2d72c0              # double 0.10289107593184621
	.quad	0x3fba7aa4f0b09dc0              # double 0.10343390346735415
	.quad	0x3fd5bd04e3c8d36c              # double 0.33966181034639109
	.quad	0x3fd00f644dd42262              # double 0.25093944168523852
	.quad	0x3fc976beeef3b020              # double 0.1989363352544169
	.quad	0x3fd52372ccdcfe1a              # double 0.33028860098053914
	.quad	0x3fb05823d36c6800              # double 0.06384490882592786
	.quad	0x3fb8aeba4ded6970              # double 0.096416133904687617
	.quad	0x3fdb3dba52d33fa2              # double 0.42564256752393181
	.quad	0x3fe1fcf1e010706e              # double 0.56212705385725115
	.quad	0x3fb745f69d47f218              # double 0.090911305807772513
	.quad	0x3fe2dabb6fe8ba7b              # double 0.58920070512051781
	.quad	0x3fd6f3fe5b572fe4              # double 0.35864218635538081
	.quad	0x3fda427a3ba52f5c              # double 0.41030746292812181
	.quad	0x3fea78c25ced42c1              # double 0.82724111699834435
	.quad	0x3fce5b46362802b8              # double 0.23716046947813196
	.quad	0x3fde0f314b1f46f8              # double 0.46967727981710494
	.quad	0x3fa539e704277630              # double 0.041457385308359185
	.quad	0x3fe745dfd06ccf9c              # double 0.72727957447067437
	.quad	0x3fe6a610ec7552c0              # double 0.70777174170742541
	.quad	0x3fb6016d5d8b8ae0              # double 0.085959277475506024
	.quad	0x3fd4895aabf07264              # double 0.3208834342092699
	.quad	0x3fcaa3b7fcb47544              # double 0.20812129820925851
	.quad	0x3feb710e80135df4              # double 0.85755085959220744
	.quad	0x3fcfa88cfb457b38              # double 0.24733125943290601
	.quad	0x3fcacc2b4d20e18c              # double 0.20935574785268007
	.quad	0x3fe2bd75fa5e87ee              # double 0.58562754535910044
	.quad	0x3fe21576f6aa3cee              # double 0.5651202027965192
	.quad	0x3fe91d34b029809a              # double 0.78481516272224217
	.quad	0x3fdc7e901bb65834              # double 0.44522478777196572
	.quad	0x3fd8cc0658f6d444              # double 0.38745268524082044
	.quad	0x3fdd8a8861d32606              # double 0.46158036759570142
	.quad	0x3fb942fc62e5af58              # double 0.098678373474908709
	.quad	0x3fd4eb1140ed05f8              # double 0.3268473753015253
	.quad	0x3fda76d01d8539dc              # double 0.4135017669949812
	.quad	0x3fe4300acb7cbec0              # double 0.63086452239618751
	.quad	0x3fdaeef938f2da28              # double 0.42083578645125153
	.quad	0x3feee8754b1fbf8e              # double 0.96587624237689496
	.quad	0x3fdca90588cc3544              # double 0.44781626090192028
	.quad	0x3fe33a07e1d21c49              # double 0.60083383660902101
	.quad	0x3fd487c5e12306b2              # double 0.3207869242288367
	.quad	0x3fec765e0f0a6f49              # double 0.88944914758347082
	.quad	0x3fc0afac243af43c              # double 0.13036109704072085
	.quad	0x3fe6e3ec997f0897              # double 0.71532278041583452
	.quad	0x3fd866d31a2d6096              # double 0.38127591663715898
	.quad	0x3fdf5611db84a2a8              # double 0.48962828099551325
	.quad	0x3fe1054ac2e3b8ae              # double 0.53189600052225727
	.quad	0x3febefbaa9a878d2              # double 0.8730138124117508
	.quad	0x3fc6c48fa8a65b18              # double 0.17787357077460153
	.quad	0x3fc78e17f35ea864              # double 0.18402385123528398
	.quad	0x3fc53d183b7fa3f8              # double 0.16592696099476689
	.quad	0x3fd6ba71f712add0              # double 0.35512971046656805
	.quad	0x3fe2aa292553ec60              # double 0.58327157297697951
	.quad	0x3fe30fbe08ba4390              # double 0.59567167000396815
	.quad	0x3fdbbbc70d3e44e6              # double 0.43333603184971847
	.quad	0x3fecc3816a34ed99              # double 0.89886542075639675
	.quad	0x3fd97438dbd3d5c2              # double 0.39771863429572474
	.quad	0x3fee47683336f808              # double 0.94621667864680691
	.quad	0x3fc4a401e2d299d8              # double 0.16125510764432138
	.quad	0x3fedae477a439fb4              # double 0.92752431754796882
	.quad	0x3fd0e5999db5a7de              # double 0.26401367570235645
	.quad	0x3fe4f40f33757ff1              # double 0.65479240465719901
	.quad	0x3f1ef9501911a000              # double 1.1815596941888717E-4
	.quad	0x3fcc2ba29e9a46b0              # double 0.22008164161939225
	.quad	0x3fbaf9bf2088e670              # double 0.10537333053880515
	.quad	0x3fe4c62180140151              # double 0.64918589606535637
	.quad	0x3fde74cd187c5992              # double 0.47587897673783985
	.quad	0x3fe9c5cf674cbfaf              # double 0.80539674926511917
	.quad	0x3fd9fc632f5bc2f8              # double 0.40602950692031881
	.quad	0x3fe432d05de76733              # double 0.63120287266358444
	.quad	0x3fc333ad2449d1b8              # double 0.15001453658955
	.quad	0x3fbbcbc7ad2b8b20              # double 0.1085781858233017
	.quad	0x3fc805437f611c48              # double 0.18766063422865131
	.quad	0x3fea454725139ef5              # double 0.82095677606136397
	.quad	0x3fe7ff8bd0cb0d22              # double 0.74994459896007393
	.quad	0x3fd47a62a9873fa0              # double 0.31996981196879837
	.quad	0x3feb8142969e4545              # double 0.85952882211328385
	.quad	0x3fee9939673bbf2a              # double 0.95620412981768266
	.quad	0x3fd8c45e8a26a73c              # double 0.38698543063457058
	.quad	0x3fed22d9322c957f              # double 0.91050395774497861
	.quad	0x3fef2b3b70eae73e              # double 0.97402736715523708
	.quad	0x3fe5013379006ca3              # double 0.65639661439071906
	.quad	0x3fce7c149c87d924              # double 0.23816163676355828
	.quad	0x3fec35fee1fe57bc              # double 0.88159126414642896
	.quad	0x3fc536f803fdd4e0              # double 0.16574001498125934
	.quad	0x3fe0a85fb45cb516              # double 0.52055344798069103
	.quad	0x3fb5187b5540bc38              # double 0.082404812158288432
	.quad	0x3fe37b29e344a596              # double 0.60878462208090656
	.quad	0x3fe7683ea8db74af              # double 0.73147519092494473
	.quad	0x3fe5449d9a3cbd70              # double 0.66462593197313247
	.quad	0x3fb60d36ac26a970              # double 0.086139122990663841
	.quad	0x3fe912e192447601              # double 0.78355482642990648
	.quad	0x3fd870a825c9692e              # double 0.38187602701295276
	.quad	0x3fe9899cb1045cff              # double 0.79804834912911804
	.quad	0x3fe5a4934ad2957e              # double 0.67633976568019682
	.quad	0x3fe9ef4fc03904bf              # double 0.81046283286573118
	.quad	0x3fe1de2dd6ead536              # double 0.55837146736181498
	.quad	0x3feaab154d4498e9              # double 0.83338418094060984
	.quad	0x3fc97d9da6bda0a0              # double 0.19914599076878847
	.quad	0x3fe1448aaa83eab2              # double 0.53961690238732829
	.quad	0x3fef1b846d14fac4              # double 0.97210904412335041
	.quad	0x3fe38a22b771022e              # double 0.61061225727468638
	.quad	0x3fbc9b0e4f8ff520              # double 0.11174096529426381
	.quad	0x3fee9d2382a5dc1e              # double 0.95668197171369562
	.quad	0x3feb1e631baa7dce              # double 0.84745936778556952
	.quad	0x3fc4985452b55f34              # double 0.16089872396946137
	.quad	0x3fc7c61d52a67bc0              # double 0.18573347602520407
	.quad	0x3fec308c8886c7d2              # double 0.88092638650254629
	.quad	0x3fe109e0ae18ccad              # double 0.53245576861663368
	.quad	0x3fd113acee95e926              # double 0.26682589816450031
	.quad	0x3fe5f7290bf323de              # double 0.68642093976916008
	.quad	0x3fcd984060e5afcc              # double 0.23120884639081252
	.quad	0x3febeb14463eab10              # double 0.87244619102179577
	.quad	0x3fcd637b24fc0cc4              # double 0.22959842019927212
	.quad	0x3fc44bd4e81f5270              # double 0.15856419881915285
	.quad	0x3fd0e4f558e3e4e6              # double 0.26397451096234048
	.quad	0x3fc0802a7ba31918              # double 0.12891131436317305
	.quad	0x3fe148cf4cec4f2f              # double 0.54013791107215592
	.quad	0x3fec94d46de1b1ed              # double 0.89316770039800775
	.quad	0x3fd437f86dc3c170              # double 0.3159161636276826
	.quad	0x3fed5413cb20ab74              # double 0.91651334451067478
	.quad	0x3fd26471e2184038              # double 0.28738066749156443
	.quad	0x3fe067e54f336927              # double 0.51268258541975775
	.quad	0x3fe1d51cea777c8c              # double 0.5572647647312734
	.quad	0x3fda795e6564c126              # double 0.41365775968280827
	.quad	0x3fe0bb460c40aa2f              # double 0.52286054986081421
	.quad	0x3fe804a86eef18ce              # double 0.7505685965232034
	.quad	0x3fdb42746b98ba0a              # double 0.42593107707480782
	.quad	0x3fe9ed967001251d              # double 0.81025239826081796
	.quad	0x3fe94f070815cf89              # double 0.79089690760746223
	.quad	0x3fd1646d9513c6e2              # double 0.27175464208913358
	.quad	0x3fd1e719a86dc3ec              # double 0.27973023841974398
	.quad	0x3fd505b831bb8ad6              # double 0.32847409111688586
	.quad	0x3fe18102286fe2c5              # double 0.54699809930669885
	.quad	0x3fdfcbd55a85e388              # double 0.49681600418221494
	.quad	0x3fcecd94c51f136c              # double 0.24064883828227879
	.quad	0x3fdfb04f8724ed32              # double 0.49513614843063458
	.quad	0x3fdf400604e9e09e              # double 0.48828268508760597
	.quad	0x3fe8775605ee4f97              # double 0.76456738623027121
	.quad	0x3fe237bdb09fd275              # double 0.56930431839880546
	.quad	0x3fd18439c8fb2b6a              # double 0.27369541766227334
	.quad	0x3fe1e083643af1fa              # double 0.55865640236112246
	.quad	0x3fe9cf774ecce711              # double 0.80657544508651047
	.quad	0x3fe1fed3423681dc              # double 0.56235659534655325
	.quad	0x3fe7b251e1469252              # double 0.74051755904344874
	.quad	0x3fd577324f34c2fe              # double 0.33540017828913438
	.quad	0x3fe4f668c6f522f5              # double 0.65507925852679583
	.quad	0x3fe7317bbcd9c19b              # double 0.72479044804463244
	.quad	0x3fd88953d075f43a              # double 0.38338179929252514
	.quad	0x3fecc094210819ea              # double 0.89850813342564817
	.quad	0x3fefd6d1ce6378d0              # double 0.9949730902697187
	.quad	0x3fede9d8aa2b186f              # double 0.93479569660190787
	.quad	0x3fef3e6931e210ea              # double 0.97636852019107079
	.quad	0x3fd584e94edde04a              # double 0.33623726560427214
	.quad	0x3fdff47830ac8228              # double 0.49929623368555776
	.quad	0x3fd7e9ab241fe6e0              # double 0.37363699462694733
	.quad	0x3fd77c3a48325d98              # double 0.36695725489104225
	.quad	0x3fd3a2cb69d867d6              # double 0.30681119286020697
	.quad	0x3fd05b97d536112e              # double 0.25559039899259772
	.quad	0x3feeaa2123cd3ad2              # double 0.95826775543704401
	.quad	0x3fd7ee1b87151438              # double 0.3739079302943682
	.quad	0x3fe0047f9876cb16              # double 0.50054912355548953
	.quad	0x3fdd29c85792500c              # double 0.45567520667941674
	.quad	0x3fdf67c66b0276b2              # double 0.49070892763289031
	.quad	0x3fe93bcde0258685              # double 0.78855031756047878
	.quad	0x3fdb6ca50f33bad8              # double 0.42850615009858251
	.quad	0x3fa9fe5b97bcb010              # double 0.050768720886793628
	.quad	0x3fe54fd6c945ed64              # double 0.66599597273981859
	.quad	0x3fe1fd12116176ac              # double 0.56214240450545594
	.quad	0x3fd04cabf0604620              # double 0.25467966531968678
	.quad	0x3fd97c916f3f9f3a              # double 0.39822803367723092
	.quad	0x3fdaf14980a145b6              # double 0.4209769970085192
	.quad	0x3fd31945072f71e8              # double 0.29841733648006974
	.quad	0x3fb4031b7b53d310              # double 0.078172414407003509
	.quad	0x3feb7194e1d4c4a9              # double 0.85761493785516507
	.quad	0x3fd90e0dd76955e6              # double 0.39148279224659033
	.quad	0x3fef0914144926b5              # double 0.96985820734081207
	.quad	0x3f77cd128cfab980              # double 0.0058108067166088295
	.quad	0x3fec12e6aee32792              # double 0.87730726392440972
	.quad	0x3fe6d4bbe70561b7              # double 0.71346850510877047
	.quad	0x3fef3353c9588b71              # double 0.97501553845755328
	.quad	0x3fe07f9beb1f2b1c              # double 0.51557727739541148
	.quad	0x3fe5c06a73fc8618              # double 0.67973826078031419
	.quad	0x3fdba1269d8097ea              # double 0.43171086674772019
	.quad	0x3feccc79c619e376              # double 0.89996041003824589
	.quad	0x3fd448c9684ff20e              # double 0.3169425505327873
	.quad	0x3fe2d616b8909f5b              # double 0.58863388107145498
	.quad	0x3fd2a8b4ecd7f95a              # double 0.29154704217207483
	.quad	0x3fd1e9a9c8918698              # double 0.27988667094005271
	.quad	0x3fe8bf1bb2e6797e              # double 0.77332863751853131
	.quad	0x3fa74487f9c4f320              # double 0.045444726218624831
	.quad	0x3fefa951a541a7c3              # double 0.98941881443646939
	.quad	0x3fbcc1522e3740c0              # double 0.11232484463039594
	.quad	0x3fc6e719b0263d7c              # double 0.17892762280505881
	.quad	0x3fe1120fd27a34af              # double 0.53345481022701857
	.quad	0x3fd9d60c00a92d8e              # double 0.40368938507591501
	.quad	0x3fe9f894f5061156              # double 0.81159446579162409
	.quad	0x3fd1487e5c5d26b6              # double 0.27004965801152581
	.quad	0x3fee60e303e2bbf6              # double 0.94932699927255615
	.quad	0x3fe04a177402303c              # double 0.5090443864623988
	.quad	0x3fdffd9d6ff25c14              # double 0.49985443050667411
	.quad	0x3fed1e47002e6365              # double 0.90994596515075143
	.quad	0x3fd3a2cf6dc2d4de              # double 0.30681215018132757
	.quad	0x3fe9264bdddd760b              # double 0.78592484791778483
	.quad	0x3fe4fecf865f15e6              # double 0.65610481495303641
	.quad	0x3fe7e34aae08bdf4              # double 0.74649557105106945
	.quad	0x3fd6a67a7e8fbc08              # double 0.35391104087369785
	.quad	0x3fecb4178d136bd6              # double 0.89698388627891279
	.quad	0x3f9cd0675c755ac0              # double 0.028138747232641093
	.quad	0x3fdab9826414752a              # double 0.41757259152821524
	.quad	0x3fcb3a977d336078              # double 0.21272557843508699
	.quad	0x3fd5d1e9aa792b28              # double 0.34093705795082707
	.quad	0x3fd1e71370cf7326              # double 0.27972875610957926
	.quad	0x3fd475202d0b95c4              # double 0.31964878462744317
	.quad	0x3fea19c2ed430a90              # double 0.81564470615588114
	.quad	0x3fea43dfe8a16dc4              # double 0.82078547893200282
	.quad	0x3fe4fb03d4caa7da              # double 0.65564147530426031
	.quad	0x3fe3b650e4c24837              # double 0.61600536994433852
	.quad	0x3fef1f0dad215114              # double 0.97254070105057843
	.quad	0x3fd3abd15a6183a0              # double 0.30736192537556839
	.quad	0x3fe3986de80c719d              # double 0.61235709497445934
	.quad	0x3fc76c9092e9eed0              # double 0.18300063298726466
	.quad	0x3fd8ccc2754b8602              # double 0.38749753431883971
	.quad	0x3fe52c05ee3b8c0c              # double 0.6616239216785984
	.quad	0x3fe0bfb8413b8174              # double 0.52340328922950485
	.quad	0x3fc9d17ee59a5494              # double 0.20170580111576852
	.quad	0x3f95c4c9b40ee780              # double 0.021258498778230273
	.quad	0x3fe8cbfe6ef62a9d              # double 0.77490159675774672
	.quad	0x3fb0bf8aa76af748              # double 0.065422693131918952
	.quad	0x3fea3e6a4430fac5              # double 0.82011903113001294
	.quad	0x3fef1b35b40f770d              # double 0.97207150619553461
	.quad	0x3fe39ab1eb52c971              # double 0.61263366662596586
	.quad	0x3fa7c01905587420              # double 0.046387464430360348
	.quad	0x3fb6d7b53b04af70              # double 0.089228941830411079
	.quad	0x3fb945ba138cd8a8              # double 0.098720197461121928
	.quad	0x3fb3a37e27a47d38              # double 0.076713452032426299
	.quad	0x3fde8826e5042332              # double 0.47706005444392752
	.quad	0x3fe48a2f0d5b91a8              # double 0.64186813935207443
	.quad	0x3fee84f44d99e406              # double 0.95372977405998038
	.quad	0x3feabb5461f5762b              # double 0.83536738522133669
	.quad	0x3fdb92b0f518f146              # double 0.43082832274719285
	.quad	0x3febe7e387dad216              # double 0.87205673727163702
	.quad	0x3fd66b80bc628cfa              # double 0.35031145474404435
	.quad	0x3fd13fc129bcef16              # double 0.26951626850107979
	.quad	0x3fc84a035c6ff858              # double 0.1897587014536295
	.quad	0x3fe037eab1b09d23              # double 0.50682577805574558
	.quad	0x3fd77a7297504b78              # double 0.36684860970233713
	.quad	0x3fd0d4aca09577a0              # double 0.26298061067597622
	.quad	0x3fd52af6fc0109f0              # double 0.33074736223002699
	.quad	0x3fea673e72a2223e              # double 0.82510301961253396
	.quad	0x3fed95c41dd2438a              # double 0.92453199219208781
	.quad	0x3fca14d1e4dd95c4              # double 0.20376037287785043
	.quad	0x3fd6624ad06117f4              # double 0.34974928235567337
	.quad	0x3fdba22d6348f5c2              # double 0.43177351661492136
	.quad	0x3fd5527925440a72              # double 0.33315876616703755
	.quad	0x3fad2ca00c8b9010              # double 0.056981088191406681
	.quad	0x3fcd3595b1225b1c              # double 0.22819777630930893
	.quad	0x3fc32768b276c020              # double 0.1496401664167033
	.quad	0x3fe00c0e35a7576d              # double 0.50147161940797746
	.quad	0x3fe62bda8e555011              # double 0.69285323905433149
	.quad	0x3fee99543f167f53              # double 0.9562169296441233
	.quad	0x3fe4c1a09020a094              # double 0.64863613271610854
	.quad	0x3fe15ab4171de1ce              # double 0.54232220187173552
	.quad	0x3f8ebb6f3db21640              # double 0.015005940504361992
	.quad	0x3fe10f215f1e89e6              # double 0.53309696748720792
	.quad	0x3fd4cf07fe1fb4f6              # double 0.32513618294508662
	.quad	0x3fe80f0c70d79ca7              # double 0.75183698691843837
	.quad	0x3fca5a8ed7f8ab50              # double 0.2058886103198696
	.quad	0x3fd3310352516ee4              # double 0.29986651457669056
	.quad	0x3fd0b08c32e85ee6              # double 0.26077561351256262
	.quad	0x3fe99a1f8ba73706              # double 0.80006387020122882
	.quad	0x3fd251074689a8a6              # double 0.28619558227968367
	.quad	0x3feaee3f0ed0b7d1              # double 0.84158280271162245
	.quad	0x3fddd19f364de10c              # double 0.46591930678506865
	.quad	0x3fefd1cc1091ac50              # double 0.9943600009550071
	.quad	0x3fbc36faaf77f0c0              # double 0.11021391662501667
	.quad	0x3fcfb6345d97ae38              # double 0.24774794168421166
	.quad	0x3fdfca98448c5ec0              # double 0.49674040502712202
	.quad	0x3f96248f549b6b40              # double 0.021623839892394914
	.quad	0x3fde7957a7920d0a              # double 0.476156152384832
	.quad	0x3fea0fc301103c85              # double 0.81442403991413015
	.quad	0x3fef31bb3d9969be              # double 0.97482072859866498
	.quad	0x3fe019356e2d7f91              # double 0.50307723540389493
	.quad	0x3fe61feea021ab89              # double 0.69139796519935814
	.quad	0x3fdc423b24c72c74              # double 0.44154242126086918
	.quad	0x3fd7ff857695426a              # double 0.37497078495383696
	.quad	0x3fe5a78246c346ca              # double 0.67669786282405053
	.quad	0x3fdcd43832c9b966              # double 0.45045285186542683
	.quad	0x3fdffbd8ef1b977c              # double 0.49974654531830942
	.quad	0x3fc6c6f671a94e8c              # double 0.17794685888167228
	.quad	0x3fdb827b8e3f23dc              # double 0.42983902827523734
	.quad	0x3fed7f40708a3655              # double 0.92178365688750807
	.quad	0x3fe818256be51cce              # double 0.75294753144489746
	.quad	0x3fdeda163ed54ff2              # double 0.48206096778926544
	.quad	0x3fc4a82df4933ba8              # double 0.16138243143219921
	.quad	0x3fec083850f149e1              # double 0.87600341614807686
	.quad	0x3fe25d6b41157626              # double 0.57390368186651552
	.quad	0x3fef8c9810ea7f55              # double 0.98591235450656233
	.quad	0x3fd519a5a2154ed0              # double 0.32969036892357639
	.quad	0x3fd042cdeb9c1c8e              # double 0.25407741554995134
	.quad	0x3febf5f9f6356d37              # double 0.87377641761432912
	.quad	0x3fd6689e36bd9b1a              # double 0.3501353773666992
	.quad	0x3fe615c1b5f2f321              # double 0.6901558450404971
	.quad	0x3fb1a97c725a0148              # double 0.0689924029520671
	.quad	0x3fccb93bc22fdb04              # double 0.22440287572654694
	.quad	0x3fcf635cd8510d54              # double 0.24521980821928457
	.quad	0x3fe5bc7f21ba60da              # double 0.67925983989246252
	.quad	0x3fd33381ce2bf470              # double 0.30001874097781123
	.quad	0x3fef28e3dbc76158              # double 0.97374146390488203
	.quad	0x3fe91e4c9a7fcc22              # double 0.78494863677622484
	.quad	0x3fedc73813d87c0f              # double 0.93056873203375001
	.quad	0x3fe9d137a5ede8d5              # double 0.80678923042367023
	.quad	0x3fd95cfddefeee2c              # double 0.3963007619565555
	.quad	0x3fe8b55ba4f06ae8              # double 0.77213842596696924
	.quad	0x3fec87fc84b63601              # double 0.89159990234628606
	.quad	0x3fb4ebf69107e788              # double 0.081725511939934603
	.quad	0x3f87f54449984500              # double 0.011698277946410318
	.quad	0x3fd402ce2d9b2f7e              # double 0.3126712270138724
	.quad	0x3fa539ba239e72d0              # double 0.041456047866835655
	.quad	0x3fdf46f6e0bc6a72              # double 0.48870632120966839
	.quad	0x3fd571e4173ee3be              # double 0.33507635374149547
	.quad	0x3fda8a0bf493e22e              # double 0.41467570194757541
	.quad	0x3fcbe4471b297d18              # double 0.21790398432038027
	.quad	0x3fce9e63c20499d4              # double 0.23920866941007424
	.quad	0x3fb4e31035fbcd90              # double 0.081589711360541494
	.quad	0x3fcf3147bc961a90              # double 0.24369141300504227
	.quad	0x3fcae7646276e8d0              # double 0.21018652732693122
	.quad	0x3fe057a29c73fc92              # double 0.51069765622368579
	.quad	0x3fd70daf3cb5795a              # double 0.36021023682214592
	.quad	0x3fb3d8542d47c888              # double 0.077519665770326651
	.quad	0x3fe37c2fbe3873ea              # double 0.608909484409762
	.quad	0x3fe98982b6c65ffb              # double 0.7980359620878511
	.quad	0x3faddf2f414c4d30              # double 0.058343388291314802
	.quad	0x3fef4d9832952c25              # double 0.97822198752817668
	.quad	0x3fefe378e5289000              # double 0.99651760823735457
	.quad	0x3feccc4d8441051b              # double 0.89993930655342369
	.quad	0x3fa23db5e7639de0              # double 0.035627064223998195
	.quad	0x3febffb900d4335c              # double 0.87496614610573031
	.quad	0x3fec722b0320cd38              # double 0.88893652544940149
	.quad	0x3fd4b91dc1e4d356              # double 0.32379859862276328
	.quad	0x3fe997c4a9e4f7de              # double 0.79977639372350118
	.quad	0x3fe99c7052452f9b              # double 0.80034652775201509
	.quad	0x3fe70bcd3167cae9              # double 0.72019061707973464
	.quad	0x3fd8ef096fd43eec              # double 0.38958965225991338
	.quad	0x3fee2804278be047              # double 0.94238479350952609
	.quad	0x3fbb110a4f72d790              # double 0.10572876395857933
	.quad	0x3fe7326723656654              # double 0.7249026957826552
	.quad	0x3fe6b6a1cac4e93d              # double 0.70979394534450757
	.quad	0x3fe8746b68337f5e              # double 0.76421137191571709
	.quad	0x3fe537fd83ab29ab              # double 0.66308475224041297
	.quad	0x3fd1c4b35d59eed8              # double 0.27763065449083291
	.quad	0x3fe8c7961ae291d3              # double 0.77436356783851534
	.quad	0x3fecd63dd597032b              # double 0.90115253178382682
	.quad	0x3fbb8c7e587cf218              # double 0.10761251125672577
	.quad	0x3fee4b3aa0c5ff9b              # double 0.94668322945652805
	.quad	0x3f9f12069e5dd880              # double 0.03034220067589688
	.quad	0x3fd7e8bbcdca40f6              # double 0.37357993218121466
	.quad	0x3fd106d39f7ae076              # double 0.26604166578500299
	.quad	0x3fe7661e07cc1275              # double 0.73121549151308207
	.quad	0x3fdade63f39d55b6              # double 0.41982363501059738
	.quad	0x3fecd8860f994dd3              # double 0.90143111273430987
	.quad	0x3fe0c6e50119f36b              # double 0.52427911963569096
	.quad	0x3fde73f004816390              # double 0.47582626762373881
	.quad	0x3fc01a5875dde520              # double 0.12580400233472577
	.quad	0x3fd569773d81bacc              # double 0.33456212049979395
	.quad	0x3fd3446ce8785ec4              # double 0.30105135633628444
	.quad	0x3fc37f677cfaa90c              # double 0.15232556917664686
	.quad	0x3fd9b76b69469c32              # double 0.40182004242746239
	.quad	0x3fed34790931126f              # double 0.91265537066699476
	.quad	0x3fd26dbaea656b96              # double 0.2879473961854101
	.quad	0x3fecc7f47bb714cf              # double 0.89940857089154658
	.quad	0x3fcab12bc109d9a8              # double 0.20853182721812158
	.quad	0x3fe24f8ce2ea5f9e              # double 0.57221073455274385
	.quad	0x3fb90982411e9090              # double 0.097801342867173568
	.quad	0x3fe8faeb026ee78d              # double 0.78062963938940444
	.quad	0x3fdf882c216f388a              # double 0.49268630280574455
	.quad	0x3fd2e9f95d4534a0              # double 0.29553064449721411
	.quad	0x3fcb70c3dac5b974              # double 0.21437881643528167
	.quad	0x3fefd1f4faca30bb              # double 0.99437951071151731
	.quad	0x3fd7b1ce9a5daff4              # double 0.37022748064805389
	.quad	0x3fdd0fdff2131c02              # double 0.45409392013647232
	.quad	0x3fe28ce9f4886f2e              # double 0.57970140228596789
	.quad	0x3fef2a8a047d250f              # double 0.97394276501396059
	.quad	0x3fe87d14e7c631ff              # double 0.76526875751875412
	.quad	0x3fc7d7b232a249e8              # double 0.18627002212868082
	.quad	0x3fe4b598efaf3ad8              # double 0.64716765225770256
	.quad	0x3fc5e02ae16f1ba0              # double 0.17090354926605489
	.quad	0x3fecfec4e253a348              # double 0.90609974102435675
	.quad	0x3fe800e9afa5d862              # double 0.75011143022744542
	.quad	0x3fdc1d8d1456c746              # double 0.43930365549305284
	.quad	0x3fe46a35ffa5e5b6              # double 0.6379652016759596
	.quad	0x3fb198dfeeddc988              # double 0.068738933388692414
	.quad	0x3fe02aef238cb814              # double 0.50524098342225665
	.quad	0x3fe0f7e238597879              # double 0.53025923734436653
	.quad	0x3fe1d0c1d4d3e5d1              # double 0.55673305099406367
	.quad	0x3fe339979cd9ae3f              # double 0.60078030237986713
	.quad	0x3fe51a06bfba3050              # double 0.65942704626787396
	.quad	0x3fbead5e7bc98510              # double 0.11983290216587172
	.quad	0x3fc8e09e8e768d7c              # double 0.19435483890729788
	.quad	0x3fe5f04ad4e101b9              # double 0.68558255746761809
	.quad	0x3fcff31dd387e850              # double 0.24960682705551784
	.quad	0x3fe8d1871f89ad95              # double 0.77557712707259674
	.quad	0x3fe062df56a6fe2c              # double 0.51206938671379509
	.quad	0x3fd65ccaeed1143c              # double 0.34941361734337639
	.quad	0x3fd471d1b2f4c308              # double 0.3194469688051389
	.quad	0x3fefbe2a1913c38f              # double 0.99196343324557456
	.quad	0x3fd4e89542c50698              # double 0.32669574280235159
	.quad	0x3fc8a0599f5b57f4              # double 0.19239349633306768
	.quad	0x3fd5afae5dd416b0              # double 0.33884772456108703
	.quad	0x3fecba110b4aa573              # double 0.89771320538890931
	.quad	0x3fd1f19178c05cbc              # double 0.28036915580873845
	.quad	0x3fe2d72cb7581bb2              # double 0.58876643952759466
	.quad	0x3fc26fc50bed8488              # double 0.14403594095623284
	.quad	0x3fed24622f0fdf05              # double 0.91069134895130388
	.quad	0x3fdb7761eb3a23fc              # double 0.42916152926824203
	.quad	0x3fec7dd48975c2f3              # double 0.89036013457925234
	.quad	0x3fde9c434165fe70              # double 0.47828751932681879
	.quad	0x3fcf144aa7637ddc              # double 0.24280675099633597
	.quad	0x3fd1346bed3e2348              # double 0.26882455986247011
	.quad	0x3fdac0340704f788              # double 0.41798115430344085
	.quad	0x3fe19f09587bca6f              # double 0.55066363603539326
	.quad	0x3fd66bb345c36014              # double 0.35032350361643805
	.quad	0x3fd76bc60d669754              # double 0.36595298107782992
	.quad	0x3f8537c7a989e780              # double 0.010360298024568726
	.quad	0x3fea0b641808e7ae              # double 0.81389050192159629
	.quad	0x3fedf8a64b17d149              # double 0.93660273233994318
	.quad	0x3fec8e47a6e5c246              # double 0.89236815068404307
	.quad	0x3fe4bc2e8ad653dc              # double 0.64797141186374629
	.quad	0x3fd6b8cbb673ff88              # double 0.35502903764426508
	.quad	0x3fe4e9f394ed7b68              # double 0.65355853164133482
	.quad	0x3fc7b0f1e7b225c0              # double 0.18508743108058745
	.quad	0x3fefa13b95a6123d              # double 0.98843173244728854
	.quad	0x3fc78080a75826a8              # double 0.18360908671484322
	.quad	0x3fca75f2dc6a71c4              # double 0.20672450792780073
	.quad	0x3fd550ddb109623c              # double 0.33306066788421496
	.quad	0x3fefb8229ec06d9c              # double 0.99122744566141163
	.quad	0x3fbee98d41e81458              # double 0.12075121745154271
	.quad	0x3fed492ca2ec98bf              # double 0.91518241711744241
	.quad	0x3fe6af98a1f8aada              # double 0.70893508563070928
	.quad	0x3fed7873c8c20d21              # double 0.92095364771413213
	.quad	0x3fe678107c408755              # double 0.70215629833203741
	.quad	0x3fe9050e98b4572a              # double 0.78186731171692725
	.quad	0x3fd4659573de0688              # double 0.31870018305935632
	.quad	0x3fc544a942eb18b8              # double 0.16615787284371719
	.quad	0x3fd3d8ff23945e14              # double 0.3101194236237188
	.quad	0x3fb43ee1f9eabbf0              # double 0.079084514155269181
	.quad	0x3fed1fb0a4220a1c              # double 0.9101184087488181
	.quad	0x3fe878f4a1b90c6e              # double 0.76476508699887602
	.quad	0x3fe5d24fcfd6aceb              # double 0.68192282289001349
	.quad	0x3fe7263041c01e40              # double 0.72341168252837207
	.quad	0x3fe3543ce506ba19              # double 0.60403294307417632
	.quad	0x3fbe284329980028              # double 0.11780185475800009
	.quad	0x3fe35fdc430071dd              # double 0.60545170866276588
	.quad	0x3fded13579d613ae              # double 0.48151909730978104
	.quad	0x3fed35e078a77eeb              # double 0.91282676282204755
	.quad	0x3fe1b8dacb94d8df              # double 0.55381526720045915
	.quad	0x3fdaca3bbfc7546a              # double 0.41859334686643612
	.quad	0x3fd7e6b59621f774              # double 0.3734563795222734
	.quad	0x3fe2ddd3b6432994              # double 0.5895784911929689
	.quad	0x3fe70e42a997f3c0              # double 0.72049077152006902
	.quad	0x3fef20a7c743b1eb              # double 0.97273625296435051
	.quad	0x3fa9f4e9e25f1150              # double 0.050696667559835817
	.quad	0x3fdaebc489d0023e              # double 0.42064012010817808
	.quad	0x3fd9ab3c138c2fbc              # double 0.40107633503862039
	.quad	0x3feef20474dac167              # double 0.9670431406321257
	.quad	0x3fe2f9de9ac8bd22              # double 0.59300165396954108
	.quad	0x3fe95b64154a8535              # double 0.79240612181107528
	.quad	0x3fe261fcdf6f4ac7              # double 0.57446139945599206
	.quad	0x3fe751e619ad7881              # double 0.72874741568718104
	.quad	0x3fcd86e169b8abc8              # double 0.23067872678924872
	.quad	0x3fcad591e5520114              # double 0.20964263627320945
	.quad	0x3fdc76a3138e1412              # double 0.44474102887790068
	.quad	0x3fe778d7336d9622              # double 0.73350105328126269
	.quad	0x3fe96d223b8e0d8d              # double 0.79457198745551383
	.quad	0x3fd69fbd52de9bea              # double 0.35349972813349828
	.quad	0x3fe06dcd31d3fac5              # double 0.51340350849189831
	.quad	0x3fc554f423953854              # double 0.1666550801987251
	.quad	0x3fa91e5f34ce5cf0              # double 0.049059844204004111
	.quad	0x3fe498694c4ea7fc              # double 0.64360489753494177
	.quad	0x3fee9c7dad4cefcd              # double 0.95660289619217453
	.quad	0x3fd91a3403dc948c              # double 0.39222431542504732
	.quad	0x3febbcf3161b93a6              # double 0.86681513135828392
	.quad	0x3fead5b54b1ee6ee              # double 0.8385874240113631
	.quad	0x3fdc6f5c0c5e9576              # double 0.44429684837299221
	.quad	0x3fcc16e4e33b1e1c              # double 0.21944867224941411
	.quad	0x3fee6d9b2703ed8a              # double 0.95087964649376144
	.quad	0x3fc4818e6168853c              # double 0.16020374065650766
	.quad	0x3fd27a65d3ed8988              # double 0.28872056671220792
	.quad	0x3fddb6d604b59cfa              # double 0.46428442439942297
	.quad	0x3fecf1da1ba7c738              # double 0.90452294732515437
	.quad	0x3febabd30a6ca697              # double 0.86472465549487054
	.quad	0x3fe86042f6d49462              # double 0.76175068100986842
	.quad	0x3fad31c069db8d80              # double 0.057020199701379504
	.quad	0x3f88daf2c23b3b00              # double 0.012136360695334414
	.quad	0x3fc99560bd820490              # double 0.19987115147890622
	.quad	0x3fcd96803c86a3a8              # double 0.23115542369239717
	.quad	0x3fb3033a5b138c98              # double 0.074268004641952934
	.quad	0x3fe7231ab1be6887              # double 0.72303518977720749
	.quad	0x3fea3e0743323c34              # double 0.82007182239784137
	.quad	0x3fe1eacf846e684f              # double 0.55991340508922771
	.quad	0x3fd10fde6d649d56              # double 0.26659355814850494
	.quad	0x3feac28a613f27ec              # double 0.83624762528893148
	.quad	0x3fe5c154cb93a600              # double 0.67985000382503813
	.quad	0x3fd25bba9985bdae              # double 0.2868486880533635
	.quad	0x3fd68f9d06d5ef8c              # double 0.35251546542689804
	.quad	0x3fec5720c015d57b              # double 0.88563573376329374
	.quad	0x3fd85ee6bab3cb0c              # double 0.38079231484077591
	.quad	0x3fe0999d1cdd756e              # double 0.51875167501172625
	.quad	0x3fe0b03b567ee256              # double 0.52151266950302033
	.quad	0x3fb60709d057d718              # double 0.086044896473904564
	.quad	0x3fc987832ecab634              # double 0.19944801125295586
	.quad	0x3fdf551ac1a3776e              # double 0.48956936750425128
	.quad	0x3fc375be934a1a98              # double 0.15203077499264306
	.quad	0x3fd8c2601d7ddac6              # double 0.38686373596230472
	.quad	0x3fe070d096b6fcf1              # double 0.51377133785709195
	.quad	0x3fda7ab14e8c120a              # double 0.41373856230373518
	.quad	0x3fea38bb62db4fc0              # double 0.81942529018350996
	.quad	0x3fd0c464c3ab5984              # double 0.26198691471417868
	.quad	0x3fcd8e930d5ceadc              # double 0.2309135260819265
	.quad	0x3fefa293dd41bdf0              # double 0.98859589781016943
	.quad	0x3fe3b2226f348073              # double 0.61549493522399101
	.quad	0x3fd28d93a1ec8a7a              # double 0.28989115536584331
	.quad	0x3fe1a26c4de7382e              # double 0.55107703414410536
	.quad	0x3fdd42b5cc540c0e              # double 0.45719666437088413
	.quad	0x3fe67b4a012e1770              # double 0.70254993658521236
	.quad	0x3fc9d4acd45af068              # double 0.20180282944591288
	.quad	0x3fd381423d5f70a4              # double 0.30476432794035646
	.quad	0x3fe0b87a8834b7c1              # double 0.52251936533661347
	.quad	0x3fd8cfebbe90c0e8              # double 0.38769048318773836
	.quad	0x3fd0068686a41452              # double 0.2503982844212419
	.quad	0x3fd4c79acf482f58              # double 0.32468290560131186
	.quad	0x3fe29eaccbea9320              # double 0.58186950518993186
	.quad	0x3fe14643292a16f3              # double 0.5398269466392932
	.quad	0x3f861a1518aca2c0              # double 0.010791935744764003
	.quad	0x3f738e188382a880              # double 0.0047741849486248045
	.quad	0x3faedcdd1f8c6660              # double 0.060278806782844141
	.quad	0x3feca2c57f6d303c              # double 0.89486956489555025
	.quad	0x3fad3ffa15dc0070              # double 0.057128729980832627
	.quad	0x3fe0606daebfb03c              # double 0.51177105074521689
	.quad	0x3fe339c594fffbb4              # double 0.60080222226667113
	.quad	0x3fedc04ff2c44808              # double 0.9297256223237591
	.quad	0x3fe665d653034a90              # double 0.69993129933784992
	.quad	0x3fcfcca25b803534              # double 0.24843244045079305
	.quad	0x3fe4d1b630d24fe8              # double 0.6505995706124823
	.quad	0x3fa5bfae7ebd8840              # double 0.042478039714084037
	.quad	0x3feb8fd28b3d3c0f              # double 0.86130644984393878
	.quad	0x3fe8daff77e2757b              # double 0.77673314490281997
	.quad	0x3fd46bf2e785c564              # double 0.31908867463706359
	.quad	0x3fd52bef082d27fc              # double 0.33080650137401313
	.quad	0x3fd807884dac5f0e              # double 0.37545974335942922
	.quad	0x3fda8fcf82c0c9fe              # double 0.41502750176292114
	.quad	0x3fd6c7924e5d5d30              # double 0.35593087818911595
	.quad	0x3fc730d3074af55c              # double 0.18117750030607283
	.quad	0x3fe0dde3b722ee4c              # double 0.52708612221562978
	.quad	0x3fe7fdb884c0a156              # double 0.74972177437033838
	.quad	0x3fca9bd3fd9ef538              # double 0.20788049587091861
	.quad	0x3f9818f49a122380              # double 0.023532697585810336
	.quad	0x3fd3e466de054bee              # double 0.31081554109294884
	.quad	0x3fc35f9e9dfa0474              # double 0.15135557855322512
	.quad	0x3fe19bd67f2db978              # double 0.55027317847797885
	.quad	0x3fe1388193548c4e              # double 0.53814772391741328
	.quad	0x3fe711381091fc84              # double 0.72085192905787254
	.quad	0x3fc2d488db27a620              # double 0.1471110410778218
	.quad	0x3fae7523b8ec3e80              # double 0.059487453769290433
	.quad	0x3fb0f77c6b129ba8              # double 0.066276336804192426
	.quad	0x3fa05169de2668f0              # double 0.031871136062550209
	.quad	0x3fdfb283b323ea18              # double 0.49527065748375909
	.quad	0x3fe2973693b78466              # double 0.58095864153814314
	.quad	0x3fd0ea4995dfeade              # double 0.26429977070044497
	.quad	0x3feb55ed178fedf6              # double 0.85423903085705777
	.quad	0x3fdad8483f980bea              # double 0.4194508191141596
	.quad	0x3fa216b016628050              # double 0.035329344494357984
	.quad	0x3fe422e57bf6b009              # double 0.62925981723447066
	.quad	0x3fdc08d7d48ee1a2              # double 0.43803973920469208
	.quad	0x3fd0b7aecb3474ee              # double 0.26121110767583289
	.quad	0x3fe66f4453abe2ff              # double 0.70108238546444557
	.quad	0x3fceced776e699e0              # double 0.24068730645849623
	.quad	0x3feeea4ea28701ed              # double 0.96610194915416303
	.quad	0x3fec1fda676bf1bc              # double 0.87888832282583662
	.quad	0x3feb6e87773cf30f              # double 0.85724232948959578
	.quad	0x3fd9a763cd15d632              # double 0.4008416655336503
	.quad	0x3fc729fabf1d0188              # double 0.18096861201958014
	.quad	0x3feddc75a07189a4              # double 0.93316155754682883
	.quad	0x3fed0e0719462d91              # double 0.90796236931184826
	.quad	0x3fc82a4e3e4fcfcc              # double 0.18879106562201142
	.quad	0x3feadfe1723f000b              # double 0.83982918084802927
	.quad	0x3fe06a15055dff54              # double 0.51294947670246893
	.quad	0x3fcd26ac25c424f0              # double 0.22774268955280474
	.quad	0x3feeadb6a01b7ece              # double 0.95870524664857171
	.quad	0x3fd597e0cd984294              # double 0.33739490583051546
	.quad	0x3fead12029436d53              # double 0.83802803096060996
	.quad	0x3fe7f3a04eafd2be              # double 0.74848952644841638
	.quad	0x3fca91b9d98b2b0c              # double 0.20757220384833663
	.quad	0x3fedfbd9f39a9650              # double 0.93699357584837095
	.quad	0x3fed1f2f579d0dcc              # double 0.910056754226781
	.quad	0x3fe0cf141c52f81f              # double 0.52527814418840879
	.quad	0x3fe7e07026327d8e              # double 0.74614722690960078
	.quad	0x3fde9a88b85d6d2e              # double 0.47818201069249511
	.quad	0x3fdb778d11c9ab20              # double 0.42917181717955266
	.quad	0x3fee1b7b5bba91ce              # double 0.9408547202661397
	.quad	0x3fe1ba2dcec1fc68              # double 0.55397692091345352
	.quad	0x3fd7c6e1928208b8              # double 0.37151374156395489
	.quad	0x3fd13558b8f3b2f8              # double 0.26888101636613682
	.quad	0x3fd06a15f801ebdc              # double 0.25647496432764938
	.quad	0x3fd3c952ddefd03e              # double 0.30916282342446155
	.quad	0x3fe5be87fd43590f              # double 0.67950820413060053
	.quad	0x3fe57cc40b5f998f              # double 0.67148020001768483
	.quad	0x3fcc6da3e27e0764              # double 0.22209595259851789
	.quad	0x3fae06bbce830fa0              # double 0.058645123442629954
	.quad	0x3fe0a5a881918fdf              # double 0.52022195154540529
	.quad	0x3fd0411cde9f9f80              # double 0.25397416821078167
	.quad	0x3fa854ccfa207f00              # double 0.047521977933000059
	.quad	0x3fda95d984af3caa              # double 0.41539609868500327
	.quad	0x3fdc3da9cf3e000e              # double 0.44126363028044657
	.quad	0x3fc658daeb80c204              # double 0.1745866441647338
	.quad	0x3fded24065dc31d4              # double 0.48158273646620597
	.quad	0x3fe6938b2733d6c3              # double 0.70551068932282879
	.quad	0x3feab92140fea126              # double 0.8350988645006836
	.quad	0x3fe03cf2b6a23339              # double 0.50743995352386329
	.quad	0x3fed1cf3e3bfbbf4              # double 0.90978426439494208
	.quad	0x3fea29929e127c2e              # double 0.81757479547002787
	.quad	0x3fca50b0ff430ae0              # double 0.20558750595053876
	.quad	0x3fd72afd81128f1c              # double 0.36199891667114215
	.quad	0x3fd5693565845964              # double 0.33454642213600594
	.quad	0x3fef9d4b6338b812              # double 0.98795098666392023
	.quad	0x3f971ffc918b7d00              # double 0.02258295667968202
	.quad	0x3fe06b8513a8db0d              # double 0.51312497939838553
	.quad	0x3fe3ff02e29e6484              # double 0.62487930547207826
	.quad	0x3fcb11b4d1e11620              # double 0.21147785423288301
	.quad	0x3fea1ae7adc633c7              # double 0.81578430118826695
	.quad	0x3fba3fcf9e68a990              # double 0.10253617875483756
	.quad	0x3fbbcee77cc1f740              # double 0.10862585826722881
	.quad	0x3fe3f60c09b917d4              # double 0.62378503703143418
	.quad	0x3fe7cba168469fc4              # double 0.74360723844892407
	.quad	0x3fb60b4464059e88              # double 0.086109423083707282
	.quad	0x3fc52704e4d79498              # double 0.16525326894694525
	.quad	0x3fd1ba1782e30aac              # double 0.27698314458772688
	.quad	0x3fc7686661af0750              # double 0.18287353296005415
	.quad	0x3fe235521fd7cb9c              # double 0.5690088865215901
	.quad	0x3fec659b4ba00be2              # double 0.88740315218489862
	.quad	0x3fce23c15688d074              # double 0.23546616292299272
	.quad	0x3fcbeef214f984dc              # double 0.21822954200891942
	.quad	0x3fc398144d582f00              # double 0.15307859207711516
	.quad	0x3fe9920d9a1b76c0              # double 0.79907875155523556
	.quad	0x3fe2b785f2f4ee8c              # double 0.5849027390717807
	.quad	0x3fa2377952bf8720              # double 0.035579482413380825
	.quad	0x3fe0a62f40006c05              # double 0.5202862024337952
	.quad	0x3fe135a2df11e640              # double 0.53779738968223256
	.quad	0x3fe74e9442a13455              # double 0.72834218038191045
	.quad	0x3f88f91c53e6ae40              # double 0.012193890867670309
	.quad	0x3fe36aaf2989292b              # double 0.60677297699411292
	.quad	0x3fe5318abb597a6c              # double 0.6622975978060146
	.quad	0x3fe196cff0448ee9              # double 0.54965969970041073
	.quad	0x3feba23c8f1614da              # double 0.86355426737341223
	.quad	0x3fe73074d59e8fa3              # double 0.72466508600745205
	.quad	0x3fdeebb391fb909c              # double 0.4831360746013702
	.quad	0x3fdedd49cde3d8ae              # double 0.4822563658375526
	.quad	0x3fe1f6338dfe7867              # double 0.56130388005454968
	.quad	0x3fec0d50caa7b140              # double 0.87662543850959906
	.quad	0x3fb784b0d60cd968              # double 0.091868450411174529
	.quad	0x3fead70df0852b72              # double 0.83875176407432961
	.quad	0x3fe6baeab0c3879b              # double 0.71031698726823167
	.quad	0x3fe955921e5e9be1              # double 0.79169565135532249
	.quad	0x3fe4f7fe90b97e12              # double 0.65527275339622038
	.quad	0x3fe397815191c68e              # double 0.61224428111582241
	.quad	0x3feefd0b2a527732              # double 0.96838911310235276
	.quad	0x3feeb051146dc538              # double 0.95902303686140211
	.quad	0x3fe4fad0f7a0e1a6              # double 0.65561722149782464
	.quad	0x3fe3a7f6f248deb3              # double 0.61425349541874252
	.quad	0x3fe2422765ac7a04              # double 0.5705754266562626
	.quad	0x3fe9449202ca5bff              # double 0.78962040467274608
	.quad	0x3fee39c19ff7fd7d              # double 0.94455033534897803
	.quad	0x3fce48bc881f1a04              # double 0.23659474035794414
	.quad	0x3fe7d5b16eff67da              # double 0.7448355834887892
	.quad	0x3fe6f4db27150d2c              # double 0.71738965638397678
	.quad	0x3fe3fb7495b9e61e              # double 0.62444524043457128
	.quad	0x3fcf89213c5359e4              # double 0.24637237020097225
	.quad	0x3fe352ee32a9b116              # double 0.60387334723557973
	.quad	0x3fd5ab72f713fba8              # double 0.33858942154614136
	.quad	0x3fcb8b31517a2e48              # double 0.21518532255537282
	.quad	0x3fe94a0630b8a999              # double 0.79028615489851284
	.quad	0x3fe2e8a3e4ec0304              # double 0.59089846335709284
	.quad	0x3fe9ceb942728504              # double 0.80648482301708712
	.quad	0x3fcf51d4c2dbc810              # double 0.24468478693557971
	.quad	0x3fbcadc7c7250c60              # double 0.11202667819911616
	.quad	0x3fc1b5c2d4ec9098              # double 0.13835940739329966
	.quad	0x3fda7bdc3d0822ce              # double 0.41380983314642783
	.quad	0x3fc613b31ca99268              # double 0.17247618579417012
	.quad	0x3fef64580a1bbc7d              # double 0.98099901174818138
	.quad	0x3fe5eeed122c95ca              # double 0.68541577863350622
	.quad	0x3fe054a987ea7ad7              # double 0.51033474489289687
	.quad	0x3fdaeedda4dae34e              # double 0.42082921122669326
	.quad	0x3fe603b1a9d0cd67              # double 0.68795092742076924
	.quad	0x3fed902d539b8dd2              # double 0.92384973840347073
	.quad	0x3fed834a7083ef26              # double 0.9222767064634112
	.quad	0x3fea1510ae534d87              # double 0.81507143066339516
	.quad	0x3fcb496c8dc4f930              # double 0.2131782238229305
	.quad	0x3fc553969fe613dc              # double 0.16661341483646097
	.quad	0x3fef689384bfa899              # double 0.98151565482591529
	.quad	0x3fea8b7e4ea47e43              # double 0.82952800140260086
	.quad	0x3fe3fe4748b5eeb2              # double 0.62478985024741562
	.quad	0x3fb31d28d5867f80              # double 0.074663688783855874
	.quad	0x3fe1296872094929              # double 0.53630468628606309
	.quad	0x3fd20531400191c2              # double 0.28156691790198007
	.quad	0x3fed6f1c1e2411ad              # double 0.91981321226972101
	.quad	0x3fe69f60bb7bc8fe              # double 0.70695530526998573
	.quad	0x3fd9a45b94efe354              # double 0.40065660042414675
	.quad	0x3feb7c53574ae8aa              # double 0.85892645882929242
	.quad	0x3fd4bd360f1a4b06              # double 0.3240485332000137
	.quad	0x3fa7b49e6a0d6420              # double 0.046299887128675943
	.quad	0x3fdc560a91355450              # double 0.44275154285907536
	.quad	0x3fea7813c569eb99              # double 0.8271578651177719
	.quad	0x3fed0c55aefb0ae0              # double 0.90775570083527767
	.quad	0x3feb958e9547e434              # double 0.86200646549617099
	.quad	0x3feff86f1e5435dd              # double 0.99907642291662634
	.quad	0x3fe54f7804fe6fe1              # double 0.665950784448338
	.quad	0x3fe030b7df189a34              # double 0.50594705174882515
	.quad	0x3fe9985f9fc73fb5              # double 0.79985028464033425
	.quad	0x3fd6543b39f7c744              # double 0.34889107380796625
	.quad	0x3fef8bb808aaa659              # double 0.98580552761741124
	.quad	0x3fe734fa863312be              # double 0.7252171155056073
	.quad	0x3fc11c832d5ae958              # double 0.13368262972455613
	.quad	0x3fefc9ef758b9ca7              # double 0.99340031583860344
	.quad	0x3fce4770d5f502c0              # double 0.23655519911883083
	.quad	0x3fd6171e2ab10460              # double 0.3451610009106556
	.quad	0x3fc8fdadda93978c              # double 0.19524167225534617
	.quad	0x3fe3d96d1ff034d8              # double 0.6202912925524755
	.quad	0x3feca6c30dd3d13e              # double 0.89535668087641063
	.quad	0x3fd8da13403c04b2              # double 0.38831025383849316
	.quad	0x3fec35640585f10d              # double 0.8815174205660995
	.quad	0x3fdeed5f5e96255c              # double 0.48323806988681439
	.quad	0x3fd031a8e5ad6f80              # double 0.25303099088136349
	.quad	0x3fe0720de71945c3              # double 0.5139226449629678
	.quad	0x3fe7ffff404c115a              # double 0.74999964292559729
	.quad	0x3fecc663cf805474              # double 0.89921751525493087
	.quad	0x3fa7f4161f9c9010              # double 0.046784106596788999
	.quad	0x3fbc227457d55ae8              # double 0.10990073341723028
	.quad	0x3fe8df721f640de2              # double 0.77727609759352512
	.quad	0x3fe122fd78d0a043              # double 0.53552125546139739
	.quad	0x3fc179558bdaba70              # double 0.13651532486752016
	.quad	0x3fd803b56fef5542              # double 0.37522636347906169
	.quad	0x3fd92e93e3772470              # double 0.39346787656228965
	.quad	0x3fe21671333c0e4e              # double 0.56523952490574358
	.quad	0x3fe33d06a97f21f8              # double 0.60119946579749151
	.quad	0x3fe237d8f68eaf35              # double 0.56931732326254425
	.quad	0x3fee9d6aa93af607              # double 0.95671589901729781
	.quad	0x3fe507edfeb77f6a              # double 0.65721797704098361
	.quad	0x3fde4849fb65b3b2              # double 0.47316216993823013
	.quad	0x3fbff5caddc33ad8              # double 0.1248442450916899
	.quad	0x3fdc9883bf2d1f3a              # double 0.44680875463062686
	.quad	0x3fd3719948b761e8              # double 0.30380851842121936
	.quad	0x3fbc6dc209356818              # double 0.11104977345294775
	.quad	0x3fe7231682c62c33              # double 0.72303319494074569
	.quad	0x3fe2738b593afc1e              # double 0.57660453250707966
	.quad	0x3feda64386d26d02              # double 0.92654587109009889
	.quad	0x3fd62b6160f5e3a2              # double 0.34639772862242968
	.quad	0x3fe7ac848afe57a8              # double 0.73980929515049798
	.quad	0x3feca8a9da7e96dc              # double 0.8955888049574372
	.quad	0x3fbf9b8097bc5a68              # double 0.12346652702795213
	.quad	0x3fdbc1ef4a081608              # double 0.43371183614394271
	.quad	0x3fa2dd811bb04f70              # double 0.036846193914384595
	.quad	0x3fe7d18d8d59d0e4              # double 0.74433019263826994
	.quad	0x3fdc3c66758786a6              # double 0.4411865375278502
	.quad	0x3fe20babcee59738              # double 0.56392469796694566
	.quad	0x3fdfd64ec792eb78              # double 0.49745530595435339
	.quad	0x3feac46055e0750b              # double 0.83647171757516625
	.quad	0x3fdce4ebce6ea034              # double 0.45147223624599353
	.quad	0x3fd9f84d396f4020              # double 0.40578013047070449
	.quad	0x3fd4ba4c5e59e1fa              # double 0.32387074674582517
	.quad	0x3fccf38eed163a00              # double 0.22618280960564618
	.quad	0x3fe2326b69881bba              # double 0.56865473376898668
	.quad	0x3fea33bc6f4fa04a              # double 0.81881543865621009
	.quad	0x3fd66814c52ac6b4              # double 0.35010260824774808
	.quad	0x3feb13b0e4ee6394              # double 0.84615368569494586
	.quad	0x3fef5048c26c028f              # double 0.97855031941442571
	.quad	0x3fed250a8c0bf5b2              # double 0.91077163079142154
	.quad	0x3fc7128ed8cf4fa8              # double 0.18025384508530107
	.quad	0x3fd414f6028c5308              # double 0.31377935646860111
	.quad	0x3fe46169d2495564              # double 0.63689127990316452
	.quad	0x3fe1393ca67a7352              # double 0.53823692813203139
	.quad	0x3febdff2694bf626              # double 0.87108727041021861
	.quad	0x3fda018d530efe16              # double 0.4063447295302195
	.quad	0x3fd1885bf23c14d4              # double 0.27394770293933601
	.quad	0x3fdeb4cf9885cb0e              # double 0.47978582281864213
	.quad	0x3feed19b3a5ea454              # double 0.96308671379405064
	.quad	0x3fc56cd56a56b5b0              # double 0.16738383953399483
	.quad	0x3feda49659430717              # double 0.92634122308683942
	.quad	0x3fed59caa992b801              # double 0.91721089477300677
	.quad	0x3fd42086d82939ea              # double 0.31448527440525587
	.quad	0x3fe147d492d9d557              # double 0.54001835519617714
	.quad	0x3fed14432db12a41              # double 0.90872343944767675
	.quad	0x3fc5b0ef3c1a6cf8              # double 0.16946211275794787
	.quad	0x3fd362a7482d68c8              # double 0.30289632843563341
	.quad	0x3fb4e38143eab650              # double 0.081596449929486114
	.quad	0x3fe830940a0549b5              # double 0.75592996556434022
	.quad	0x3fd5f01b4c0dc4de              # double 0.34277994563224279
	.quad	0x3f975032190ed020              # double 0.022766859797869299
	.quad	0x3feb6c27bd672164              # double 0.85695254318947577
	.quad	0x3fc4ba2a130aa2e8              # double 0.161931285188323
	.quad	0x3fdc41ab06e5631a              # double 0.44150806115571728
	.quad	0x3fd1421c0edc0db4              # double 0.26966000987178096
	.quad	0x3fe0f940d0b48b9d              # double 0.53042641413445646
	.quad	0x3fe50b5289b5d84e              # double 0.65763213058995418
	.quad	0x3fd835e298b3dd44              # double 0.37828888809550087
	.quad	0x3fcd229766a95f88              # double 0.22761814606451147
	.quad	0x3fa5ed5ab352e750              # double 0.042826494588963926
	.quad	0x3febb5fb0a7aacb5              # double 0.86596443220823593
	.quad	0x3fcf5f5f0782dcdc              # double 0.24509799830204926
	.quad	0x3fe0f19a0abcaa4d              # double 0.52949239823403504
	.quad	0x3fed90895309b3fc              # double 0.92389360636082029
	.quad	0x3fa433d19b8e6fa0              # double 0.039457845915620071
	.quad	0x3fe5b572d057c4ef              # double 0.6783994740673317
	.quad	0x3fcdf6232352cfc8              # double 0.23407401299266284
	.quad	0x3fe3540e33cc9058              # double 0.6040106784535153
	.quad	0x3fc3b49f146d7bc0              # double 0.15394962785191346
	.quad	0x3fe7eeb52549bed5              # double 0.74788911135507397
	.quad	0x3fd7de76cad78436              # double 0.37295312699103833
	.quad	0x3fa46a40a9e7bac0              # double 0.039873142948513074
	.quad	0x3fb0ff22e6411cb8              # double 0.066393071379127089
	.quad	0x3fd3856253f688ac              # double 0.30501611899866066
	.quad	0x3fd4430526dbb14e              # double 0.31659058375114035
	.quad	0x3fec7234c57a35eb              # double 0.88894117898752023
	.quad	0x3fdcd60b09a9ea7a              # double 0.45056415504192382
	.quad	0x3fe4317a72eb1609              # double 0.63103983349782411
	.quad	0x3fe3469070d8491e              # double 0.60236379661572292
	.quad	0x3fe9d619fca8376f              # double 0.80738543841446908
	.quad	0x3fee4a72831a9d24              # double 0.9465878067611908
	.quad	0x3fde4ba26db8b602              # double 0.47336636271469967
	.quad	0x3fe8ae261f34d2f7              # double 0.77125841231335712
	.quad	0x3fd793b58a7b894c              # double 0.36839045070350518
	.quad	0x3fdb43f9d0680eac              # double 0.4260239157886001
	.quad	0x3fe5b536ff885ab0              # double 0.67837095173566375
	.quad	0x3fc2abca54d88e6c              # double 0.14586762564532607
	.quad	0x3feb37dee52fe812              # double 0.85057015193092611
	.quad	0x3fe352fa9fe37274              # double 0.60387927273002484
	.quad	0x3fd30130b798eade              # double 0.29694765023638847
	.quad	0x3fddb841c6da393e              # double 0.46437115115340422
	.quad	0x3fd08afd33747b8a              # double 0.25848321938422514
	.quad	0x3fea4bb44172db58              # double 0.82174122603360455
	.quad	0x3fead37a528ae6c5              # double 0.83831516381834403
	.quad	0x3fea17979dedafa8              # double 0.81537991376307151
	.quad	0x3fe7a84bf3a904b2              # double 0.73929402913940678
	.quad	0x3fdd2f3388248608              # double 0.45600593848402626
	.quad	0x3fd41d8f2240f0e2              # double 0.31430414528928285
	.quad	0x3fddaf5932033912              # double 0.46382741817514372
	.quad	0x3fb03163c39af338              # double 0.063253627066797047
	.quad	0x3fe36fc30989616f              # double 0.60739280569673137
	.quad	0x3fe547b65818508d              # double 0.66500394063997847
	.quad	0x3fb6579880eedbd8              # double 0.087274104574006528
	.quad	0x3fe8f368be073da5              # double 0.77971303095721523
	.quad	0x3fe2fcc1ec13dad7              # double 0.59335418805025142
	.quad	0x3fd49d4482b26074              # double 0.32209885371549452
	.quad	0x3fedefc09dce5b06              # double 0.93551665135859774
	.quad	0x3fe9c7dba41b1473              # double 0.80564672519598302
	.quad	0x3fe2ed2f84290515              # double 0.59145332157655395
	.quad	0x3fa8ba4b56a6b150              # double 0.048296312644512285
	.quad	0x3fe2527858049cc8              # double 0.57256715003031733
	.quad	0x3fbb752f4664c170              # double 0.1072568461283987
	.quad	0x3fecc3f097d7cb19              # double 0.89891843468498955
	.quad	0x3fe3ed4194b26bea              # double 0.62271193544745285
	.quad	0x3fc401dc51f7fbb0              # double 0.15630678179146917
	.quad	0x3feeb612fd2726f1              # double 0.95972585147793953
	.quad	0x3fe955b8623e264b              # double 0.79171389759103172
	.quad	0x3fec26383f25cc9e              # double 0.87966549237752978
	.quad	0x3feb33edd403757a              # double 0.85008899124993254
	.quad	0x3fdfa54b0cbf88f8              # double 0.49446369404735391
	.quad	0x3fd2ee1ee342db6e              # double 0.29578373139832237
	.quad	0x3fd42b339c482632              # double 0.31513681661508308
	.quad	0x3fde719cceb5ed96              # double 0.47568435846889068
	.quad	0x3fdb5053d3bc9c66              # double 0.42677779843729124
	.quad	0x3fe3ae1bf154f3ba              # double 0.61500355849386001
	.quad	0x3fed3cb024704a3b              # double 0.91365820996208613
	.quad	0x3fcfa840ffd4d42c              # double 0.24732220165029284
	.quad	0x3fd33c96f41c4afa              # double 0.30057309950750233
	.quad	0x3fc3a380d437eef8              # double 0.1534272228453728
	.quad	0x3fe5bf0e480e6f60              # double 0.67957223962319446
	.quad	0x3fd605c189d45e3a              # double 0.34410131893079987
	.quad	0x3fe1df9312e785ff              # double 0.55854180996192315
	.quad	0x3fe08eba76a4ee65              # double 0.51742289707858602
	.quad	0x3fee42c613d293b1              # double 0.9456510913047308
	.quad	0x3fef6cdaae9ed9ee              # double 0.98203786950653948
	.quad	0x3fe6fb3f990e6146              # double 0.71816997426780271
	.quad	0x3fd5a23d250f4534              # double 0.33802727336031357
	.quad	0x3feb8d5c8d25c971              # double 0.86100604598895647
	.quad	0x3fa012f6db77b350              # double 0.031394686022258811
	.quad	0x3fe982c6a4a62eb8              # double 0.79721386106526548
	.quad	0x3fd73fee90e57528              # double 0.36327709341078895
	.quad	0x3fe65abf91870c15              # double 0.69857767508836111
	.quad	0x3fd2594f067bdb4a              # double 0.28670097001252215
	.quad	0x3fdcc64f4c7b77a2              # double 0.44960386723493617
	.quad	0x3fedc66ef5f1b5e6              # double 0.93047283206913955
	.quad	0x3feadd588bf31d89              # double 0.83951976140899476
	.quad	0x3fe891615cd2f367              # double 0.76774662141506844
	.quad	0x3fc3a66c455d4a24              # double 0.15351632487234312
	.quad	0x3fe24af0f2592cf8              # double 0.57164809545193318
	.quad	0x3fea98cb67eec307              # double 0.83115167903278653
	.quad	0x3fe99e9456ce91ac              # double 0.8006078429648844
	.quad	0x3fb18ae8d0fc2d80              # double 0.068525839826341084
	.quad	0x3fbd59126a63bbe8              # double 0.11464037988092424
	.quad	0x3fcaab578f13291c              # double 0.2083539436919829
	.quad	0x3fa03c456ebc94c0              # double 0.031709832923561887
	.quad	0x3fd46bbf997d5410              # double 0.31907644261565427
	.quad	0x3fa452befa7193a0              # double 0.039693801948295304
	.quad	0x3febfeefbad67635              # double 0.87487017146822288
	.quad	0x3f9c4486f3d22f80              # double 0.027605160361914738
	.quad	0x3fdc1b6b0ebaae56              # double 0.43917347372437143
	.quad	0x3fedf7f2f35cb5e7              # double 0.9365172150771145
	.quad	0x3fa7c74e6d8629f0              # double 0.04644246184314571
	.quad	0x3fe034998e0ae6ab              # double 0.50642087691013182
	.quad	0x3fda01ceec6fa3a4              # double 0.40636036958181365
	.quad	0x3fe0405e87c723e2              # double 0.50785757559890166
	.quad	0x3feff28f19c42546              # double 0.99835925133189884
	.quad	0x3fd2a3dcd372591e              # double 0.2912513794812116
	.quad	0x3fcdaba169347894              # double 0.23180024754487205
	.quad	0x3f8a0d697fe0af80              # double 0.012720894064919497
	.quad	0x3fe06ae31226bc77              # double 0.51304772896936768
	.quad	0x3fcc160fff45d858              # double 0.21942329372876901
	.quad	0x3fe03f3ae1b170db              # double 0.5077185066288864
	.quad	0x3fce3089b6e60494              # double 0.23585626059142284
	.quad	0x3febe063c92281f9              # double 0.87114133152141371
	.quad	0x3fee6c5a76caca3e              # double 0.9507267303618574
	.quad	0x3fec61bfa48f65d5              # double 0.88693220272687745
	.quad	0x3fd644dd05145e1c              # double 0.34795308586169127
	.quad	0x3fc008104d80a924              # double 0.1252460840635844
	.quad	0x3fe096109a52d5c3              # double 0.51831846371958823
	.quad	0x3fe763608e0d81ee              # double 0.73088100189857896
	.quad	0x3feca69f7a860153              # double 0.89533971720087846
	.quad	0x3fbca1cb44e74020              # double 0.11184378082475677
	.quad	0x3fe1df86c86946dd              # double 0.55853594916171867
	.quad	0x3fe23557f1e979f0              # double 0.56901166199150843
	.quad	0x3fc1a281984f7b80              # double 0.1377717965796954
	.quad	0x3fe15c97c5c42509              # double 0.54255283952912337
	.quad	0x3fb03ea192446790              # double 0.063455675325171379
	.quad	0x3fc07287d7d26528              # double 0.12849519766022266
	.quad	0x3fd6bb9303de8048              # double 0.35519862535329993
	.quad	0x3fea851b1a07902d              # double 0.82874827464957479
	.quad	0x3fe0a5181f8348b3              # double 0.52015310435151318
	.quad	0x3fc549e56039cb5c              # double 0.16631762693904306
	.quad	0x3fe4514cebfefc49              # double 0.63492437451339712
	.quad	0x3fd8ac9f01a4f0d8              # double 0.38553595696045084
	.quad	0x3fe4bbf4785112dd              # double 0.64794372081140816
	.quad	0x3fd8a6bad0001b86              # double 0.38517637550869954
	.quad	0x3fcacb01cd2ae10c              # double 0.20932028310722506
	.quad	0x3fa9e5798ed85b50              # double 0.050578879058028492
	.quad	0x3fb9b7d3a94e1b38              # double 0.10046122439790117
	.quad	0x3fd92cb6abf10452              # double 0.39335409918937103
	.quad	0x3fdc8fd79b822548              # double 0.44627943216672294
	.quad	0x3fdc0c2efa4cc470              # double 0.43824362223956026
	.quad	0x3f8e291c350cc7c0              # double 0.014726848954157989
	.quad	0x3fe0c082db97e5f1              # double 0.52349989785505902
	.quad	0x3fed682b6b04bd54              # double 0.91896601583531856
	.quad	0x3febc2c78bbbd08e              # double 0.86752679149368972
	.quad	0x3fde4a740fe153c8              # double 0.47329427290725024
	.quad	0x3fd45ca3f6e55852              # double 0.31815432654309916
	.quad	0x3fd4e509a9b14154              # double 0.32647935458682764
	.quad	0x3fe1265235627833              # double 0.53592787195862568
	.quad	0x3fea76c1770193eb              # double 0.826996548112786
	.quad	0x3fe7dde55bcf91a7              # double 0.74583690578270001
	.quad	0x3fc6f3f65714c108              # double 0.17932013751988785
	.quad	0x3fe09241d0e7060f              # double 0.51785364915139265
	.quad	0x3fe77f4bc0d3e695              # double 0.73428905164401448
	.quad	0x3fe48d8afdab2db0              # double 0.64227819008504206
	.quad	0x3fe7d3dc8d17f70a              # double 0.74461200291963903
	.quad	0x3fd77a3e5b5ec61c              # double 0.3668361561095439
	.quad	0x3fd12657846c242e              # double 0.26796520168187754
	.quad	0x3fd3faf7b49530f6              # double 0.31219284663235614
	.quad	0x3fcc7bb1fc8bb4c0              # double 0.22252487975439372
	.quad	0x3fe816c77b2fc2ba              # double 0.75278066692234025
	.quad	0x3fe2fbdce42055ad              # double 0.59324497753066441
	.quad	0x3fd7058f9c4e13fc              # double 0.35971441520842951
	.quad	0x3fb2871f5f5a4000              # double 0.072374306468418581
	.quad	0x3fddcffa5d361306              # double 0.46581896879824602
	.quad	0x3fe0cb2e9c59de39              # double 0.5248024991732968
	.quad	0x3fe30e7873dadcfa              # double 0.59551642063061583
	.quad	0x3fe1f48c3a7e0078              # double 0.56110202240235107
	.quad	0x3fda924d8fc44586              # double 0.41517962493625082
	.quad	0x3fe10e36d20e970e              # double 0.53298512484318095
	.quad	0x3fe52ef57b5b698f              # double 0.66198228924922542
	.quad	0x3fe2837867fb413c              # double 0.57854862507705418
	.quad	0x3fde47ad2cfd1c94              # double 0.47312478440694261
	.quad	0x3fd54c19928aa6ca              # double 0.33276976881698472
	.quad	0x3f9d73765f2973e0              # double 0.028760766561720774
	.quad	0x3fc905dbea298b0c              # double 0.1954913037653444
	.quad	0x3fe09c850d719161              # double 0.51910641313274308
	.quad	0x3fdeccbc790f9384              # double 0.48124610731456863
	.quad	0x3fc6c09dc271aecc              # double 0.17775318140353702
	.quad	0x3fe3a6fec919a470              # double 0.61413516309143112
	.quad	0x3fec13f1328bba78              # double 0.87743434784154228
	.quad	0x3fcb0ade42fed45c              # double 0.21126917144070745
	.quad	0x3fdf2eef1d435762              # double 0.4872396264812463
	.quad	0x3fe8f19cd760c8dd              # double 0.77949373308208758
	.quad	0x3fcf83c1eee8a5d4              # double 0.2462084213778285
	.quad	0x3fec81e7bbf67edd              # double 0.89085756980417907
	.quad	0x3f8b1e1f1880a580              # double 0.013241045890100223
	.quad	0x3fcadd7055ceee98              # double 0.20988277616367124
	.quad	0x3fd68c0b8f602e9c              # double 0.35229767800840661
	.quad	0x3fe61e22202eceee              # double 0.69117838178359903
	.quad	0x3fe87b41e8940702              # double 0.76504607606349873
	.quad	0x3fb168aefbc82378              # double 0.068003593893207426
	.quad	0x3fe190c19b5188cc              # double 0.5489204438747719
	.quad	0x3fec5e3cb42b8c19              # double 0.88650355519746704
	.quad	0x3fe8906d95e65d59              # double 0.76763037946049473
	.quad	0x3fe3f0c812a301c6              # double 0.62314227714528481
	.quad	0x3feb028f57b27c1e              # double 0.84406249168739911
	.quad	0x3fd3a232e80e9884              # double 0.30677483236139147
	.quad	0x3fed8db129e0b0c6              # double 0.92354639224279178
	.quad	0x3fc44355cd5ff190              # double 0.15830490615907111
	.quad	0x3fd0864e71b201c0              # double 0.25819741347370595
	.quad	0x3fe3e2c7d4fcc6d9              # double 0.62143317793944697
	.quad	0x3fe4a2f342c00f45              # double 0.64489138638644106
	.quad	0x3fdd1d7e13460cce              # double 0.4549250782221862
	.quad	0x3fa3e16de3a22000              # double 0.038829263722675478
	.quad	0x3fc1be3617782094              # double 0.13861728807410556
	.quad	0x3fedcab9270a4483              # double 0.93099649071713519
	.quad	0x3fda9b13c61ce78a              # double 0.41571516367877648
	.quad	0x3fb0aa50bf546048              # double 0.065098807059599584
	.quad	0x3fd9a2770fdd786e              # double 0.40054108189895643
	.quad	0x3fe96d535d40875d              # double 0.79459541524213828
	.quad	0x3fc65171e70f51b8              # double 0.17436050207346709
	.quad	0x3fe7fafe454b7b7f              # double 0.74938882383490568
	.quad	0x3fbe111799ce4288              # double 0.11744830613157309
	.quad	0x3fe81a56f77b5c55              # double 0.75321529709152435
	.quad	0x3feb1449281b8180              # double 0.84622629006848626
	.quad	0x3fe6e1a6dac924ed              # double 0.71504538280092123
	.quad	0x3fc8dd89b0e71d40              # double 0.19426079881507441
	.quad	0x3fd7cf5f856323c8              # double 0.37203205133533546
	.quad	0x3fd295def585acc4              # double 0.29039739586614766
	.quad	0x3fd6b53d089ea21e              # double 0.35481191484226027
	.quad	0x3fef7560096fa472              # double 0.98307802050579896
	.quad	0x3fd42a28fc7e9a14              # double 0.31507324845952778
	.quad	0x3fe0a1b0c38dba44              # double 0.51973760789935186
	.quad	0x3fd846b2fd92c7e8              # double 0.3793151356031772
	.quad	0x3fc42689a68ae75c              # double 0.1574260771938566
	.quad	0x3fee3663952f05cf              # double 0.94413928162992444
	.quad	0x3fe993710b211952              # double 0.79924823926629984
	.quad	0x3fe2933db55312e7              # double 0.58047376074736412
	.quad	0x3fe0c8c37b10130f              # double 0.52450727496815996
	.quad	0x3fe9bd46567b0203              # double 0.80435482874605702
	.quad	0x3fe6056da47e0a17              # double 0.68816263320360604
	.quad	0x3fe5064e02b282cd              # double 0.65701962019746818
	.quad	0x3fd5905ae6cb25b2              # double 0.33693573511535668
	.quad	0x3fa4a92ec6c7b8a0              # double 0.040353261723667488
	.quad	0x3fd1976ad716b33c              # double 0.27486678128007092
	.quad	0x3fec2d8715d9b6c4              # double 0.88055757777848286
	.quad	0x3fe91a4fdaa37887              # double 0.78446190550654726
	.quad	0x3fe4d269d0a82246              # double 0.65068522218013736
	.quad	0x3fcad59feb33582c              # double 0.20964430794146105
	.quad	0x3f99ab19b1171500              # double 0.025066758569455949
	.quad	0x3fc3a3ad6fb6b87c              # double 0.15343254046223709
	.quad	0x3fec91713e8c9122              # double 0.89275419441813519
	.quad	0x3f96e1bf755a9b40              # double 0.022345534837451497
	.quad	0x3fc7be5bcc889870              # double 0.18549678313246742
	.quad	0x3fee1f474aa66261              # double 0.94131817417207853
	.quad	0x3feb4ffe69416497              # double 0.85351486737922044
	.quad	0x3fee0c88ee71ded0              # double 0.93903013774157706
	.quad	0x3fbddc122c4258c8              # double 0.11663926678224634
	.quad	0x3fd4cb5dae4e9ea8              # double 0.32491247198275142
	.quad	0x3fea63f0cc736b63              # double 0.82469978267486643
	.quad	0x3fe58aed01724b41              # double 0.6732087162257373
	.quad	0x3fd08fcdcf31a122              # double 0.25877709611678956
	.quad	0x3fd37a342cae8592              # double 0.30433372844171303
	.quad	0x3fda2ad26cc94fda              # double 0.40886364577931789
	.quad	0x3fe1ba41bab96e7e              # double 0.5539864203414735
	.quad	0x3fe0da390315c766              # double 0.52663851358941538
	.quad	0x3fe049fb1a2b58e8              # double 0.50903086768337591
	.quad	0x3fe985d5815ef990              # double 0.79758715884945453
	.quad	0x3fc90534e34e2e38              # double 0.19547139262100344
	.quad	0x3fd390eed01f141c              # double 0.30572099994998481
	.quad	0x3fd1afa02c1dea6e              # double 0.27634434040343236
	.quad	0x3fe6384256da5a33              # double 0.69436757052864662
	.quad	0x3feddc2f797f9366              # double 0.93312810640473454
	.quad	0x3fed3b0b5bc7523b              # double 0.91345756459720151
	.quad	0x3fe53fef892caae1              # double 0.6640546492756948
	.quad	0x3feb7a158f48542e              # double 0.85865285858984008
	.quad	0x3fdff6f6cabed9f8              # double 0.49944848822943255
	.quad	0x3fddd46acff44530              # double 0.46608991916680775
	.quad	0x3fd3ee801f15dfac              # double 0.31143191371620094
	.quad	0x3fc23bdb9cd9df04              # double 0.14245171698325276
	.quad	0x3fe6dba31a0060ea              # double 0.71431117132581545
	.quad	0x3f6ad33928c5b600              # double 0.0032745472328119529
	.quad	0x3feb0ae4cce6d793              # double 0.84507980365627799
	.quad	0x3fe7de28318f7031              # double 0.74586877517459105
	.quad	0x3feba49ba4f08df1              # double 0.86384374823359
	.quad	0x3fcb35bf5850f408              # double 0.21257774174037558
	.quad	0x3fd83bbe4674d570              # double 0.37864643936639819
	.quad	0x3fecb8f08d2dc689              # double 0.89757564138399559
	.quad	0x3fe7d3d4ec209c21              # double 0.74460836523656238
	.quad	0x3fcccb5b7a43c180              # double 0.22495597333864836
	.quad	0x3fedb504d0fd40d5              # double 0.92834702318398377
	.quad	0x3fc34a7230928314              # double 0.1507094132585044
	.quad	0x3fcad80ecfe38dcc              # double 0.20971856261085831
	.quad	0x3fe3257695e2c05b              # double 0.5983231475311287
	.quad	0x3fbb0f09e5717878              # double 0.10569822169915877
	.quad	0x3f9542b47317e060              # double 0.020762271427856027
	.quad	0x3fbd27f7a8c1f3b0              # double 0.11389110441264338
	.quad	0x3fdabf323737d0ee              # double 0.41791968719850459
	.quad	0x3fccb20f17c7a0e8              # double 0.22418392811892507
	.quad	0x3fa8b980410e0eb0              # double 0.048290260258935347
	.quad	0x3fcac972b11dfaa0              # double 0.20927270553871313
	.quad	0x3fe04aa82f9da9ac              # double 0.50911340045904785
	.quad	0x3fcbf5271e525cec              # double 0.21841896992257348
	.quad	0x3fde62801efa71ba              # double 0.47476199174141309
	.quad	0x3feb34932de40dfd              # double 0.85016783679060348
	.quad	0x3feadfa012a6fe3b              # double 0.83979800837545981
	.quad	0x3fc4bca136a866c4              # double 0.1620065228351476
	.quad	0x3fe2e39cb9139153              # double 0.59028469226590585
	.quad	0x3fecc54464e3f392              # double 0.8990804644123378
	.quad	0x3fe4e0f7c460ced3              # double 0.65246189456089565
	.quad	0x3fdace3ca3fa28fa              # double 0.41883770001790277
	.quad	0x3fb53962fd4b86b0              # double 0.082906901206593941
	.quad	0x3fe92852c005ee1f              # double 0.78617227081798891
	.quad	0x3fd593b9d7ebd842              # double 0.33714147649823556
	.quad	0x3fef7d99e4e6fd3b              # double 0.98408217151146659
	.quad	0x3fd784119d2195fc              # double 0.36743584008067365
	.quad	0x3feede44a9427911              # double 0.96463234957244214
	.quad	0x3fe1489f134ff7c9              # double 0.54011491558025526
	.quad	0x3fd0fcacbbd72aec              # double 0.26542204231070232
	.quad	0x3fe29b19c685da7a              # double 0.58143318914410647
	.quad	0x3fb538acc6862bd8              # double 0.082896040408896865
	.quad	0x3fe2f4a8da1972d2              # double 0.59236567113438299
	.quad	0x3fc31fd21e6e4954              # double 0.14940859304312915
	.quad	0x3fe3b5f89f3df7a9              # double 0.61596327878918544
	.quad	0x3fe4018140eb7fb8              # double 0.62518370322867778
	.quad	0x3fa22f3960cdc760              # double 0.035516541544793112
	.quad	0x3fd451edc873b100              # double 0.31750053954489488
	.quad	0x3fbeea71e526cf38              # double 0.120764845318999
	.quad	0x3fcd17448f8b3334              # double 0.22727257737133189
	.quad	0x3fe14752c794058d              # double 0.53995646457785684
	.quad	0x3fdde428263ce702              # double 0.46705058797998344
	.quad	0x3fba7bb64520cd80              # double 0.10345019519518495
	.quad	0x3fb589329916b258              # double 0.084124719977532236
	.quad	0x3fcd2124ea3c7218              # double 0.22757398068724011
	.quad	0x3fea89d0a3aa2fb0              # double 0.82932311979083373
	.quad	0x3fe602ba90751b1a              # double 0.68783310140938458
	.quad	0x3fcfbdba10f17f18              # double 0.24797750308334154
	.quad	0x3fe05ff899f245cf              # double 0.51171522205020803
	.quad	0x3fee7d95a404e942              # double 0.95283014330861016
	.quad	0x3feba753b51d5379              # double 0.86417565702377808
	.quad	0x3fd600a979054412              # double 0.34379040544905692
	.quad	0x3fe3248d663b7a8c              # double 0.59821195571187635
	.quad	0x3fdebfcf7e0396da              # double 0.48045718484932609
	.quad	0x3fb9ad35e56823f0              # double 0.10029923296691812
	.quad	0x3fe59ee5cdbe96cf              # double 0.67564668831320229
	.quad	0x3fe25a7edbf9b03b              # double 0.57354681934294349
	.quad	0x3fea062ac8c1e3a8              # double 0.81325282297540458
	.quad	0x3feedfc4db3dd4c8              # double 0.96481554813967651
	.quad	0x3fed962d92eab4cb              # double 0.92458227820102346
	.quad	0x3fdca65ea44a3748              # double 0.44765440029083381
	.quad	0x3fb43c82f4ae20c8              # double 0.079048332916616393
	.quad	0x3fec8c022642f806              # double 0.89209086869209453
	.quad	0x3fd728f07506833e              # double 0.36187373569741854
	.quad	0x3fdd728097ff2fd4              # double 0.46011366694869804
	.quad	0x3faae965267e2160              # double 0.052561913441482089
	.quad	0x3fdc04f58cd313a4              # double 0.43780268432993297
	.quad	0x3fe6fa462c5409c4              # double 0.71805103929391878
	.quad	0x3fee505cd6ca0e8a              # double 0.94730989409477329
	.quad	0x3fda7ec40b86307a              # double 0.41398717046173028
	.quad	0x3fddf018b04e7a8c              # double 0.46777932374417541
	.quad	0x3fe63eee6e19f12d              # double 0.69518205169837233
	.quad	0x3fe8550a54c78507              # double 0.760380902847971
	.quad	0x3fda7f98d015c442              # double 0.4140378982620555
	.quad	0x3fe06bfe5a805dbc              # double 0.51318280864773369
	.quad	0x3fe8c0c3d8222042              # double 0.77353088582550122
	.quad	0x3fefc9a2fdc43b51              # double 0.99336385310912522
	.quad	0x3fe2cb784be1acb4              # double 0.58733763523686955
	.quad	0x3fe9c5f59215f74a              # double 0.80541494877227504
	.quad	0x3fe54a56795585af              # double 0.66532443712292444
	.quad	0x3fc5077d61257644              # double 0.16429106944535665
	.quad	0x3fbb641cd030c220              # double 0.10699634630942301
	.quad	0x3fed5168fbc86860              # double 0.91618775535904362
	.quad	0x3fd6f5322c9d717e              # double 0.35871557576117385
	.quad	0x3fd890bc98c0e324              # double 0.38383402745562223
	.quad	0x3fb4a60543ef7420              # double 0.080658272825033794
	.quad	0x3fb8b6c0585dc868              # double 0.09653856427556351
	.quad	0x3f9efbf9a47d92e0              # double 0.030258083977417694
	.quad	0x3fc4d3ec4957c660              # double 0.16271737652964458
	.quad	0x3fe01019c507dc93              # double 0.50196541292725028
	.quad	0x3feeac94a05356d4              # double 0.95856696427901022
	.quad	0x3fee53a26be54bf0              # double 0.94770928452851244
	.quad	0x3fe16105a2a9e8a1              # double 0.54309350748305374
	.quad	0x3fe6d2ab30fba8b0              # double 0.71321639601707965
	.quad	0x3fd81179d6e08e78              # double 0.37606664642428411
	.quad	0x3fcbf14a50bd9400              # double 0.21830109541329534
	.quad	0x3fef704bcc9ca81c              # double 0.98245801890630302
	.quad	0x3fd65d4ae2aada4a              # double 0.34944412360656385
	.quad	0x3fd71fddf90ebe1a              # double 0.36132001230268573
	.quad	0x3fd29ba58b71bf24              # double 0.29074991815194751
	.quad	0x3fd7d4fd6ca8a328              # double 0.37237487422184978
	.quad	0x3febdb6f80c60968              # double 0.8705365672215466
	.quad	0x3fe2420faf5f17ca              # double 0.57056411983716626
	.quad	0x3fbdc65b7b5c5558              # double 0.11630794297919544
	.quad	0x3fe647247521dfaf              # double 0.69618437650114184
	.quad	0x3fdde532f82c8f4a              # double 0.46711420284031091
	.quad	0x3fdb9ab8404b3970              # double 0.43131834295936411
	.quad	0x3feb90afc50b9a7d              # double 0.8614119385282063
	.quad	0x3fe76f1c09a49cc7              # double 0.73231317408944896
	.quad	0x3fa4c06d4b4ba1f0              # double 0.040530600968683106
	.quad	0x3fd558efee3dc57a              # double 0.33355329766990105
	.quad	0x3fe614c320e235cd              # double 0.69003445074638992
	.quad	0x3fa0bce17de970c0              # double 0.032691046352483877
	.quad	0x3fe72cb19027c60f              # double 0.72420576243729495
	.quad	0x3fb64f33ee3e2fe8              # double 0.087146039643073103
	.quad	0x3feba1d2c4e1b79c              # double 0.86350382283648086
	.quad	0x3fc0ad9ae9f852a4              # double 0.13029800819699233
	.quad	0x3fd56c1c2f352594              # double 0.33472351656072274
	.quad	0x3fb1e5ca7dfab090              # double 0.069912582165388537
	.quad	0x3fefd8f857788977              # double 0.99523560604238425
	.quad	0x3febaa65bf831844              # double 0.86455047039704213
	.quad	0x3fd308c6075fd5ba              # double 0.29741049499656536
	.quad	0x3fd6cd704606c614              # double 0.35628897512933233
	.quad	0x3fe61f5788e22167              # double 0.69132591948531974
	.quad	0x3fe88ec63552f850              # double 0.76742849745620312
	.quad	0x3fee829cb8d180e4              # double 0.95344387147272557
	.quad	0x3fee35f44c7b625a              # double 0.94408621728787101
	.quad	0x3f918fe73610ac40              # double 0.017150509524224811
	.quad	0x3feec5c224749081              # double 0.9616404258745349
	.quad	0x3fd369557449c8bc              # double 0.30330406528731735
	.quad	0x3fed6d64ac976d6a              # double 0.91960366925506531
	.quad	0x3fb41ef1b6a70940              # double 0.078597170918361492
	.quad	0x3feadbc021fa494f              # double 0.83932501446023788
	.quad	0x3fee134578aa8107              # double 0.9398524624594139
	.quad	0x3fc0f676395675b8              # double 0.1325214176148799
	.quad	0x3fe37dae1798b300              # double 0.60909180267989882
	.quad	0x3fe0ce202fcdce12              # double 0.5251618322058127
	.quad	0x3fe49a24f325cd8a              # double 0.64381644716051878
	.quad	0x3feba272eb6d2936              # double 0.86358018857689589
	.quad	0x3fe2af603738d3ad              # double 0.58390818391364052
	.quad	0x3fd9b62174944342              # double 0.40174137482340566
	.quad	0x3fc1fd4206f94460              # double 0.14054131832611727
	.quad	0x3fe7674bede83f7c              # double 0.7313594481110921
	.quad	0x3fb0b85bc7ec1c20              # double 0.065313087758213317
	.quad	0x3fda2895a25194ac              # double 0.40872708178933226
	.quad	0x3fce855eccf3bea4              # double 0.23844513900211439
	.quad	0x3fc4c5b46196b0f4              # double 0.16228346600599475
	.quad	0x3fe968e1ea5f67da              # double 0.79405303741372824
	.quad	0x3fec7a94ebb25f88              # double 0.88996358904385975
	.quad	0x3fbcb41431eda0b8              # double 0.11212278574896828
	.quad	0x3fc76ca7e23cdca8              # double 0.18300341173901313
	.quad	0x3fea12813f2e426b              # double 0.81475889530163437
	.quad	0x3fe3b2d3b059a3c3              # double 0.61557945674314174
	.quad	0x3fd5e0ec13c9acfc              # double 0.34185316021348888
	.quad	0x3fcfa2da98d58430              # double 0.24715740645027173
	.quad	0x3fa9175518324590              # double 0.049006137088450363
	.quad	0x3fe8d99b819068e1              # double 0.77656340890396447
	.quad	0x3fe7ff1bfd3826d8              # double 0.74989127594855187
	.quad	0x3fee17cc60492180              # double 0.9404050713138048
	.quad	0x3fef0af3eb0a10ef              # double 0.97008701234929428
	.quad	0x3fd8efa12549e4c4              # double 0.38962582246274402
	.quad	0x3fe929a16b2418b8              # double 0.78633185316063869
	.quad	0x3fea6ec977313be2              # double 0.82602380065679548
	.quad	0x3fe7122e92975af2              # double 0.72096947318172355
	.quad	0x3feb3a5e6edf968c              # double 0.85087510733565485
	.quad	0x3fcfdf747c8bd5a4              # double 0.24900680619582005
	.quad	0x3fc8f4ec64448f98              # double 0.19497446914567429
	.quad	0x3fb72310bf2361f8              # double 0.090378805794337214
	.quad	0x3feeea612f3fd232              # double 0.96611079433802716
	.quad	0x3feb8caa45ea5065              # double 0.86092103629426886
	.quad	0x3fe78e0018967f4c              # double 0.73608403017349522
	.quad	0x3fe6c4dfb9f2983d              # double 0.71153246229074052
	.quad	0x3fd6416770fa1dcc              # double 0.34774194748794396
	.quad	0x3fec042d27567877              # double 0.87550981219443613
	.quad	0x3fe37e64db7ae192              # double 0.60917895190418592
	.quad	0x3fd3bd4bcb94c206              # double 0.30842871552434337
	.quad	0x3fd24132d606be48              # double 0.28522940541276798
	.quad	0x3faaa8dd201df1a0              # double 0.052069578333404865
	.quad	0x3fd3a870470dd424              # double 0.3071556753050706
	.quad	0x3fd54ac62ff62004              # double 0.33268885310872087
	.quad	0x3fed13cb8bfa5927              # double 0.90866639460981424
	.quad	0x3fb7a0fcaa4c2608              # double 0.092300216270949531
	.quad	0x3fe2be62312f226f              # double 0.58574018102906489
	.quad	0x3fd051c40a69f8bc              # double 0.25499058739650216
	.quad	0x3fe9756273ef8984              # double 0.79557917255105836
	.quad	0x3fe14dd01ff9be2c              # double 0.54074865575052433
	.quad	0x3fe41dc1cb70c96b              # double 0.62863244757163039
	.quad	0x3fd7828080da9a9a              # double 0.36734020789519095
	.quad	0x3f950e2bf7679700              # double 0.020561873412495935
	.quad	0x3fe221cc281601de              # double 0.56662566975870354
	.quad	0x3fe06986910c4782              # double 0.51288154916458972
	.quad	0x3f9fd610cbc5e140              # double 0.031090032994570693
	.quad	0x3fd199137e079864              # double 0.27496802623352878
	.quad	0x3fd9c86accc88a76              # double 0.4028574943387534
	.quad	0x3fe5e02614444c7e              # double 0.68361190756185386
	.quad	0x3fc9a6914a24f564              # double 0.20039573784189735
	.quad	0x3fee0df203d3f4d2              # double 0.93920231578490587
	.quad	0x3fd3651f32a5bb4c              # double 0.30304698892625903
	.quad	0x3fe01850c7149062              # double 0.50296820528866371
	.quad	0x3fec59bfc660ce3d              # double 0.88595570321780992
	.quad	0x3fc25a00cba58cfc              # double 0.14337167686162633
	.quad	0x3fef6b3407723114              # double 0.98183633283909665
	.quad	0x3fe67a8f28aedbbb              # double 0.70246084161669076
	.quad	0x3fe3cebe7d6cf79d              # double 0.61898731705854326
	.quad	0x3fe88ddf63726e55              # double 0.76731843398324406
	.quad	0x3fd200019fe2b5f2              # double 0.28125038732363727
	.quad	0x3fd0c9a4e27b5e5c              # double 0.26230737798093684
	.quad	0x3feb2a53a49bdd4b              # double 0.84891683721699829
	.quad	0x3fd78e6607b6adf8              # double 0.36806631806641077
	.quad	0x3fcb08cd2c2a4248              # double 0.21120609909532306
	.quad	0x3fd3c78baf10954a              # double 0.30905429931802486
	.quad	0x3fe2a997d9a9cc6d              # double 0.58320229065283302
	.quad	0x3f87da4bf8082680              # double 0.01164683676417444
	.quad	0x3fef53cd64068d9a              # double 0.97897977386712687
	.quad	0x3fee80fb470c8513              # double 0.95324481846560827
	.quad	0x3fe1333a9629b262              # double 0.53750352219283237
	.quad	0x3fe39e675ac4a38f              # double 0.61308639267109466
	.quad	0x3fc0efbc62aaf794              # double 0.13231615846410405
	.quad	0x3fe05e8628223f59              # double 0.5115385803091882
	.quad	0x3fe9576b01611777              # double 0.79192114133250768
	.quad	0x3fe6e5da8c18c5aa              # double 0.71555831301355011
	.quad	0x3fe3685e0dcdce05              # double 0.60649016090468477
	.quad	0x3fb6e1b6513a69c8              # double 0.08938159449682026
	.quad	0x3fda21ba2afaa132              # double 0.40830854603929645
	.quad	0x3f8e922521e996c0              # double 0.014927187058855096
	.quad	0x3fd3e0ca564de478              # double 0.31059511593009104
	.quad	0x3fd98ba4eff7c81a              # double 0.39914821085324237
	.quad	0x3fe55558f3f59c1d              # double 0.66666839264223976
	.quad	0x3fe470e090b4938b              # double 0.63877895605820478
	.quad	0x3fe17e51e4e24cb9              # double 0.54666990951445549
	.quad	0x3fec0c567b16d6e2              # double 0.87650608101713723
	.quad	0x3fec4bf937a9e781              # double 0.88427410957159236
	.quad	0x3fc1a71e3245571c              # double 0.13791253523475511
	.quad	0x3f98889c4879a300              # double 0.023958627627879814
	.quad	0x3fc9552b7d631bc4              # double 0.19791167852801383
	.quad	0x3fee10c08ea55ddf              # double 0.93954494343318717
	.quad	0x3f82f0d90aeb6d80              # double 0.0092484432656678717
	.quad	0x3fd42a121b628676              # double 0.31506779360106607
	.quad	0x3f9cf5a58660b040              # double 0.028280817343486087
	.quad	0x3fc97b8ccc1c0744              # double 0.19908294645579805
	.quad	0x3fee47617ba2d245              # double 0.94621347568188041
	.quad	0x3fde4fa137bdddea              # double 0.47361021464845854
	.quad	0x3fe610e9768be359              # double 0.68956444886780865
	.quad	0x3feac7dcc5286ace              # double 0.83689726359747296
	.quad	0x3fc0833315a536f8              # double 0.12900389248755295
	.quad	0x3fc95a8216ae4fc4              # double 0.19807458980051085
	.quad	0x3fc7c38932c085a8              # double 0.18565478304030347
	.quad	0x3fdb0efc4ecbe1dc              # double 0.42278964705431377
	.quad	0x3fd9dda67b257d2c              # double 0.40415346170444155
	.quad	0x3fea0b89dcc02c72              # double 0.81390851130835373
	.quad	0x3fe48932047a9c60              # double 0.64174748301310203
	.quad	0x3fe1ed15114ffc46              # double 0.5601907098897605
	.quad	0x3fa0c78642b59860              # double 0.032772250788909885
	.quad	0x3fe8c130bd000dcb              # double 0.77358281053641897
	.quad	0x3fd25998d9f4bf8a              # double 0.28671857151766089
	.quad	0x3fe0a4512057b697              # double 0.52005821530265706
	.quad	0x3feaed7f8518499b              # double 0.84149147029011162
	.quad	0x3fe51211c10f5b65              # double 0.65845573145894021
	.quad	0x3fe7ab1014fbe076              # double 0.73963169191757916
	.quad	0x3fc8fce799d06700              # double 0.19521803865864484
	.quad	0x3fd3312a61010e68              # double 0.29987582657870471
	.quad	0x3feef9f170405c7d              # double 0.96801063465217362
	.quad	0x3fea11794dc5c399              # double 0.81463303747124194
	.quad	0x3fdf20e140b42dc8              # double 0.4863818294404294
	.quad	0x3fde6bea1fbf15dc              # double 0.47533658123242417
	.quad	0x3fa1aa7fb3d893d0              # double 0.03450392790208634
	.quad	0x3fd397a373ad33a6              # double 0.30613027855434394
	.quad	0x3fd443c0e1ea2bce              # double 0.31663534223542633
	.quad	0x3fccb6dc837509a4              # double 0.22433048647697007
	.quad	0x3fd601513a9ebf92              # double 0.34383040165538958
	.quad	0x3fedb4597bf2216c              # double 0.92826532562416508
	.quad	0x3fd7e9524e5a13bc              # double 0.37361581470059568
	.quad	0x3fdf7ed9bc4ba256              # double 0.49211734188296441
	.quad	0x3fe01b77ea19fdc7              # double 0.50335307810740282
	.quad	0x3fda2ea13a2df998              # double 0.40909605676270067
	.quad	0x3fe8788e5da18769              # double 0.76471632277774149
	.quad	0x3fcc52518dc3c564              # double 0.2212621633730506
	.quad	0x3f7b53186d4f5580              # double 0.0066710428408972566
	.quad	0x3fe0e6f769656181              # double 0.52819414696845979
	.quad	0x3fddcfb513eec224              # double 0.46580244967029416
	.quad	0x3fe800ae6b458df2              # double 0.75008316947463372
	.quad	0x3fceadde00055e48              # double 0.23968100548767013
	.quad	0x3fef81f67b583583              # double 0.98461460200057648
	.quad	0x3fe215dc3d9a2fa5              # double 0.5651684954805104
	.quad	0x3fe2e68f09a75f7b              # double 0.59064437757022803
	.quad	0x3fde3f752a474b88              # double 0.47262314919242288
	.quad	0x3fe38e7c71bcbd41              # double 0.611143324034778
	.quad	0x3fd653f006e073f4              # double 0.34887314483222487
	.quad	0x3fc4afd8670ae380              # double 0.16161637336133694
	.quad	0x3fe13250773a8311              # double 0.53739188467815968
	.quad	0x3fd3ae60c73649b6              # double 0.30751819090178445
	.quad	0x3fe7cbc9d5b50835              # double 0.7436265157668972
	.quad	0x3fc0983a61794000              # double 0.12964563140349128
	.quad	0x3fce4b8dfb49940c              # double 0.23668074388402294
	.quad	0x3fd1cf1ba2b8dc2a              # double 0.27826586619215965
	.quad	0x3fae5f481f5d8c90              # double 0.059320691899096833
	.quad	0x3fe74e7aec5cc21b              # double 0.72833009876746091
	.quad	0x3fe6afab2e7a3af9              # double 0.70894393041257253
	.quad	0x3fdfafee84b64520              # double 0.49511301956325049
	.quad	0x3fd59a49673ca062              # double 0.3375419147655575
	.quad	0x3fe5d572e421dd78              # double 0.6823057609280303
	.quad	0x3fbca5d569db49e0              # double 0.11190542063130904
	.quad	0x3f7fe41e077ea500              # double 0.0077859089869118936
	.quad	0x3fedefb33eb780b8              # double 0.93551027535797626
	.quad	0x3fe389c0a52a375a              # double 0.61056549319048803
	.quad	0x3fefd2be21a70036              # double 0.99447542736743944
	.quad	0x3feec425ed9c4c59              # double 0.9614438668089732
	.quad	0x3fdda4252f0b9032              # double 0.46314363092665467
	.quad	0x3fab5e1274153d80              # double 0.053452088041576751
	.quad	0x3fc86a28446a1d60              # double 0.19073966351082117
	.quad	0x3fec7b4680c60f9c              # double 0.89004826689823657
	.quad	0x3fe45702adf574c6              # double 0.63562139488535574
	.quad	0x3fe837172253b183              # double 0.75672489838102341
	.quad	0x3fa1eb75ba0cf070              # double 0.034999541245697041
	.quad	0x3fb48db478a569f0              # double 0.0802872461839923
	.quad	0x3fc693526df0646c              # double 0.17637091034046948
	.quad	0x3fd2b530b07d5646              # double 0.29230897174179338
	.quad	0x3fe013349a4786b5              # double 0.50234441883750114
	.quad	0x3fe38dc021190b91              # double 0.6110535284463926
	.quad	0x3fd8da61fdd3e7c4              # double 0.38832902706019135
	.quad	0x3fea8986f78cf95d              # double 0.82928799009077248
	.quad	0x3fd13d77e617821a              # double 0.26937673063187761
	.quad	0x3f92fb8f25fa9220              # double 0.018537747090379253
	.quad	0x3fd9488ef226f8a8              # double 0.39505361221007229
	.quad	0x3fe6d1aba3d167df              # double 0.71309453960133939
	.quad	0x3fe12f6c060dbedf              # double 0.53703881437646916
	.quad	0x3fed52bf4a1bf6cb              # double 0.91635097956142297
	.quad	0x3f7b3973b157a680              # double 0.0066465873000908227
	.quad	0x3fd21cee44f9dbc8              # double 0.28301579223574125
	.quad	0x3fe8aa0bba041170              # double 0.77075754481533743
	.quad	0x3fe27e291405c156              # double 0.57790044699326404
	.quad	0x3fed1047a9a3fe61              # double 0.90823729641847362
	.quad	0x3fb4171152f05fc0              # double 0.078476984738130362
	.quad	0x3fecbbeb5cb423e5              # double 0.89793937784372402
	.quad	0x3fde65f0b89cc20c              # double 0.47497194317387037
	.quad	0x3fea6b61f1a90b90              # double 0.82560822676929213
	.quad	0x3fe60e09fd80c78f              # double 0.68921374809564095
	.quad	0x3fe73e29ec1b9cc1              # double 0.72633834948364762
	.quad	0x3fd95d3039f8a12e              # double 0.39631276761294287
	.quad	0x3fdecae4c2cfa806              # double 0.481133642430564
	.quad	0x3fe0a0fbddad81de              # double 0.51965134903371868
	.quad	0x3fbc970ec81a8198              # double 0.11167995820370036
	.quad	0x3fefc8d79a0af924              # double 0.99326686941620723
	.quad	0x3fe9deddfd4b9189              # double 0.80845546218601883
	.quad	0x3fe1ad2f1bc1660b              # double 0.55239062710751463
	.quad	0x3feba13572141681              # double 0.86342880516959053
	.quad	0x3fe637bf908fab2f              # double 0.69430521235094556
	.quad	0x3fe2a393e1a2decc              # double 0.58246797627995184
	.quad	0x3fe93e749f406942              # double 0.78887396911458318
	.quad	0x3fef835cf8d0a3b3              # double 0.98478554341010349
	.quad	0x3fcb468f584b18ac              # double 0.21309081851194855
	.quad	0x3fde26cf4edf2046              # double 0.47111876203826275
	.quad	0x3fede15b924f0b8a              # double 0.93375948501521688
	.quad	0x3fef92b5550874fa              # double 0.98665873153700479
	.quad	0x3fb22475e742b440              # double 0.070868843994234432
	.quad	0x3fd03b156a135102              # double 0.25360617979937683
	.quad	0x3fe622fe4486a68e              # double 0.69177163490276583
	.quad	0x3fe84030c1360155              # double 0.75783574806704712
	.quad	0x3fc518b561fbaeac              # double 0.16481654438336102
	.quad	0x3fcc6b84f109f224              # double 0.22203122872805736
	.quad	0x3feddc8209ea4327              # double 0.93316747604885542
	.quad	0x3fedf35ef082c853              # double 0.93595835661677496
	.quad	0x3fad3ad162f41720              # double 0.057089370087892499
	.quad	0x3fb4e798dd434598              # double 0.081658891696198999
	.quad	0x3fecfb76e50239ee              # double 0.90569634178410552
	.quad	0x3fe5d7df7a194b32              # double 0.68260167930052362
	.quad	0x3fe424778241a24a              # double 0.62945151749324535
	.quad	0x3fd05b1cf455143e              # double 0.25556110249118891
	.quad	0x3fe18ee936028365              # double 0.54869518803398576
	.quad	0x3fef4f67ad4b5e25              # double 0.9784429917007783
	.quad	0x3fdd05d9e9ddc24e              # double 0.45348213041782948
	.quad	0x3fea52e9ca7d00de              # double 0.82262124584670082
	.quad	0x3fe2bd215c178b72              # double 0.58558719622338473
	.quad	0x3fdcac2410f3c2a8              # double 0.44800664573180393
	.quad	0x3fb2d6931d3191e0              # double 0.073586649539329141
	.quad	0x3fcfa03311ba1ba8              # double 0.24707640042853751
	.quad	0x3fc15530261ab5a8              # double 0.13541223393023682
	.quad	0x3fe7e41763ae1ac6              # double 0.74659318417328602
	.quad	0x3fde95a52348aec4              # double 0.47788361020750991
	.quad	0x3fdaad2c64e3b02c              # double 0.41681966640931267
	.quad	0x3fb29e73f7ce15a8              # double 0.072730300902625999
	.quad	0x3fd05c7aa96c9e7c              # double 0.25564447923031941
	.quad	0x3fc9485fe5daa5e8              # double 0.19752119754166064
	.quad	0x3fe812fee4bc90eb              # double 0.75231880831827647
	.quad	0x3fd511a6e5f87788              # double 0.32920238931716783
	.quad	0x3fed987ef2ffc668              # double 0.92486522160306794
	.quad	0x3fb7287b4089dfb0              # double 0.090461447960364038
	.quad	0x3fea2bed30ed77b6              # double 0.81786212497876565
	.quad	0x3fdb24dd0c175082              # double 0.42412496739166994
	.quad	0x3fd680f2a7f209ee              # double 0.35162035370754452
	.quad	0x3feae005ae5fd7e4              # double 0.83984645898339893
	.quad	0x3fd19b021c2c26be              # double 0.27508595229356192
	.quad	0x3fe72a05205824d0              # double 0.72387939755676634
	.quad	0x3fd7e48163e26374              # double 0.37332186464623551
	.quad	0x3fa8994397e2f6e0              # double 0.048044311800806261
	.quad	0x3fd4f699430bd860              # double 0.32755118892180768
	.quad	0x3fc55a4de2ff3220              # double 0.1668183668501948
	.quad	0x3fe5d5468003589e              # double 0.68228459360649985
	.quad	0x3fe8d1e93fad887c              # double 0.77562391697962551
	.quad	0x3feebce88210c456              # double 0.96056008723656805
	.quad	0x3fe11b87bcf399fe              # double 0.5346106234035799
	.quad	0x3fe9f96781c8043a              # double 0.81169486377633082
	.quad	0x3fbf3623383dcfc8              # double 0.12191982386667555
	.quad	0x3fccd0d068984340              # double 0.22512250048796467
	.quad	0x3fe7e08328e43771              # double 0.74615629183402465
	.quad	0x3fec601543c4b3ad              # double 0.88672888980874165
	.quad	0x3fbf38226b790350              # double 0.12195029376836186
	.quad	0x3fe293c402d8318d              # double 0.58053780131881327
	.quad	0x3fe4d74e4d1bc9f5              # double 0.65128245411170715
	.quad	0x3fe5514b03e1befa              # double 0.66617346532981903
	.quad	0x3fe3d47e30b54394              # double 0.61968907845776977
	.quad	0x3fe5569bb146c9f2              # double 0.66682228683776956
	.quad	0x3f71bb0693fd9e80              # double 0.0043287522274578771
	.quad	0x3fecd1a7f12317fb              # double 0.90059277627074097
	.quad	0x3fdd9dc8babec76c              # double 0.46275537716711912
	.quad	0x3fde800541e7850a              # double 0.47656375347112656
	.quad	0x3fb15bf71f68a0e8              # double 0.067809529464856078
	.quad	0x3fe9d883c028aab0              # double 0.8076800110914828
	.quad	0x3fec6f70e983504d              # double 0.88860364540097125
	.quad	0x3febb678e4f619ee              # double 0.86602444380770094
	.quad	0x3fe54f5a085cc93a              # double 0.66593648560800678
	.quad	0x3fc0b92e95b5b240              # double 0.13065130529447977
	.quad	0x3fba515a58a9c7d8              # double 0.10280384697560352
	.quad	0x3fdb3805d3dac83a              # double 0.42529435814788352
	.quad	0x3fd347cef806a948              # double 0.30125784131327693
	.quad	0x3fec4ec9e18e071b              # double 0.88461774877234534
	.quad	0x3fe8a2152d1e4e80              # double 0.76978548824486381
	.quad	0x3fec9fb1dfb62d56              # double 0.89449399655988304
	.quad	0x3fe792f675822f42              # double 0.73668978644261807
	.quad	0x3fcb7456b3f97c98              # double 0.21448787486858545
	.quad	0x3fdc3a282c8048fe              # double 0.44104961725055591
	.quad	0x3fe52ed4413fbd03              # double 0.66196644538823113
	.quad	0x3fd378aeece90568              # double 0.30424092422261717
	.quad	0x3fea398328bd150f              # double 0.81952054936178509
	.quad	0x3fe342c3991cc6b8              # double 0.60189990906493218
	.quad	0x3fd312bbfafd9142              # double 0.29801845083990852
	.quad	0x3fcd50c4d6ee491c              # double 0.22902737135570639
	.quad	0x3fcf9a640b12e470              # double 0.24689913311684419
	.quad	0x3fca678bc6512478              # double 0.20628497298665471
	.quad	0x3fdbf0261e438e68              # double 0.43653252559145139
	.quad	0x3fececde009560d0              # double 0.90391445268599036
	.quad	0x3fd52671bb1f7c2a              # double 0.33047145150880175
	.quad	0x3fe6aef56fe82752              # double 0.70885726792151105
	.quad	0x3feaa1faf23eb633              # double 0.83227298081846468
	.quad	0x3fe4b66c5ca0896d              # double 0.64726846781949876
	.quad	0x3fe8b43d59221146              # double 0.77200190933994217
	.quad	0x3fe669351684a742              # double 0.70034269712525821
	.quad	0x3fe6a39977e27d2b              # double 0.70747064032540175
	.quad	0x3fdfa2e7b7fed3d0              # double 0.49431794136336027
	.quad	0x3fea6aeac6a659b0              # double 0.82555140303411711
	.quad	0x3feda87412cef39c              # double 0.92681316064373531
	.quad	0x3fd48d222071b440              # double 0.32111409347891495
	.quad	0x3fe786625d88772b              # double 0.73515432613541998
	.quad	0x3fde74eaaa6d6b4a              # double 0.47588602679541181
	.quad	0x3fe10f025d0c8afd              # double 0.53308218167907706
	.quad	0x3fa0e4fbac0dd440              # double 0.032997002365768413
	.quad	0x3feff0151f0bfa83              # double 0.99805694640947739
	.quad	0x3fb4bbffb57267a8              # double 0.080993634985502383
	.quad	0x3fe1a56b95a63ab0              # double 0.55144290188203193
	.quad	0x3fd692ff97388f50              # double 0.35272207038564307
	.quad	0x3fc3a725c3b03f88              # double 0.15353843741513296
	.quad	0x3fc9ac8f111da0d0              # double 0.20057857833604098
	.quad	0x3fdcd69544ed2b26              # double 0.45059711199853536
	.quad	0x3fc2aab0e28957dc              # double 0.1458340746054877
	.quad	0x3fe2a5ef8fb34a0a              # double 0.58275583330606762
	.quad	0x3fc2d8a93b4e30ec              # double 0.14723697086117882
	.quad	0x3fb02bc7b8a1e3b0              # double 0.063168032242073791
	.quad	0x3fe2972d96c76e4a              # double 0.58095435570744169
	.quad	0x3fed9a1bf649c0e7              # double 0.92506216147560572
	.quad	0x3fe38c700d1515f7              # double 0.61089327387952508
	.quad	0x3fac4e946cd472c0              # double 0.055287016186615912
	.quad	0x3fde57f42764b6ec              # double 0.47411826941502855
	.quad	0x3fd7ca2ff6d7e0c6              # double 0.3717155371264308
	.quad	0x3fe069b92b683a2d              # double 0.51290567853886204
	.quad	0x3feda5b833dfc1d3              # double 0.92647943622255935
	.quad	0x3fc223e9905986c0              # double 0.14172095821691322
	.quad	0x3fd97bd361942d3e              # double 0.39818272141629396
	.quad	0x3fe3a1d6beb59999              # double 0.61350571868824766
	.quad	0x3fe7bea7a822bc03              # double 0.74202330435753117
	.quad	0x3fe0ce432440f898              # double 0.52517849999255173
	.quad	0x3fefc74fd7e271df              # double 0.99308006443930796
	.quad	0x3fe6204447328bae              # double 0.69143880754233122
	.quad	0x3fd3634ff822fc7e              # double 0.30293654663177694
	.quad	0x3fe378ca72a71bd2              # double 0.60849497216337967
	.quad	0x3fe3cf2be2a04511              # double 0.61903948080922266
	.quad	0x3fed27036f3712c0              # double 0.91101237985329675
	.quad	0x3fd80b5558cf6084              # double 0.37569173500879338
	.quad	0x3fe0bf330404fa6e              # double 0.52333975586937043
	.quad	0x3fd8c744665ca1c8              # double 0.38716230388902462
	.quad	0x3fde64225bc30b36              # double 0.47486170731660893
	.quad	0x3fcdb76d3ee4b550              # double 0.23216023989645374
	.quad	0x3fc757ef7614f4dc              # double 0.18237107530322916
	.quad	0x3fe8b15a85bf3534              # double 0.77164960977976315
	.quad	0x3fe647d49d8574f5              # double 0.69626837507135397
	.quad	0x3fb4387f781890d0              # double 0.078987089939406063
	.quad	0x3fc495505f68447c              # double 0.16080670031127287
	.quad	0x3fd908b5b57ef388              # double 0.39115660404404951
	.quad	0x3fe409a3fd5b96d3              # double 0.62617682918490869
	.quad	0x3fe1c769f526a183              # double 0.55559251671824972
	.quad	0x3fe70674133634d1              # double 0.71953777077001224
	.quad	0x3fb69012fd808018              # double 0.088135897531629204
	.quad	0x3fe06462933eaa4e              # double 0.51225403555629057
	.quad	0x3fee2afd32218af7              # double 0.94274768630233907
	.quad	0x3fe0673180128f7a              # double 0.51259684576187614
	.quad	0x3fefa54e3260f839              # double 0.98892888869864414
	.quad	0x3fe73c1601021b98              # double 0.72608471104546179
	.quad	0x3fd91ff63e89bd00              # double 0.39257579905729756
	.quad	0x3fe86b62c9547e54              # double 0.7631086284854498
	.quad	0x3fefa299c49fe759              # double 0.98859871295210688
	.quad	0x3fef29a93f228896              # double 0.97383558589014529
	.quad	0x3fdf55d795925022              # double 0.48961438757510412
	.quad	0x3fda5c2505d36c54              # double 0.41187406128819259
	.quad	0x3fb76224f711ee98              # double 0.091341314620814962
	.quad	0x3fe15d3a63847995              # double 0.54263038098342753
	.quad	0x3fe94978913e532f              # double 0.79021862380850461
	.quad	0x3fe188ae27f6ddea              # double 0.54793460660488091
	.quad	0x3fe2388adfa9bdca              # double 0.56940215763273128
	.quad	0x3fd3d4ce79b3b158              # double 0.30986368069604486
	.quad	0x3fe598be151b15e9              # double 0.67489532587268031
	.quad	0x3fe99022a608de8f              # double 0.79884464672700684
	.quad	0x3fd96efd50528b4c              # double 0.39739926189411245
	.quad	0x3fdaf569cb173928              # double 0.42122883637502406
	.quad	0x3fcad8c4dc22a4b8              # double 0.2097402644042512
	.quad	0x3fe38c156e849029              # double 0.61085006318581236
	.quad	0x3fe0ac7dcec80ac2              # double 0.52105608355517341
	.quad	0x3fd5a5f6b5d93e82              # double 0.33825462111142468
	.quad	0x3fd32c20291acf2e              # double 0.29956821455128846
	.quad	0x3fe54a6c6cbd885a              # double 0.66533490408279339
	.quad	0x3fe2f1845d3731e6              # double 0.59198206144497756
	.quad	0x3fdda568961eba3e              # double 0.46322073612364878
	.quad	0x3fc3ffe3fe17f8c0              # double 0.15624666125217423
	.quad	0x3fe433b8cf4dba7e              # double 0.63131371010770443
	.quad	0x3febb15da91a5a9a              # double 0.86540110614699306
	.quad	0x3fe367e596e74613              # double 0.60643271897623874
	.quad	0x3feb2118536b8469              # double 0.84778991978613505
	.quad	0x3feb38af0b5dc1ef              # double 0.85066940517395817
	.quad	0x3fed26e0fcac650f              # double 0.91099595403935207
	.quad	0x3fd01db7b01985a8              # double 0.25181381413684756
	.quad	0x3fe758d0843615b8              # double 0.72959161589158494
	.quad	0x3fe0778ddfbf2bf2              # double 0.51459401798763182
	.quad	0x3f69ab35161a8000              # double 0.0031333958475698864
	.quad	0x3fa11820877b9fb0              # double 0.033387199915352439
	.quad	0x3fe819972ebc8879              # double 0.75312384727682435
	.quad	0x3fe50f7d3bb3cec7              # double 0.65814077053661257
	.quad	0x3fea2ab5e2281121              # double 0.81771368189996363
	.quad	0x3fa2278a3d7f9e50              # double 0.035457916266577016
	.quad	0x3fd29b88208edf8c              # double 0.29074290446759998
	.quad	0x3fac214331856e90              # double 0.054941272540159791
	.quad	0x3fdbf4d5afe8e6ee              # double 0.43681852511109198
	.quad	0x3fc40ceb20996e80              # double 0.15664424030079616
	.quad	0x3fdad8ad7ca69820              # double 0.41947495625425013
	.quad	0x3fe298e9a0b06f6e              # double 0.58116608986482077
	.quad	0x3fcb1f391bd4b358              # double 0.21189035281113422
	.quad	0x3fe48503465a747f              # double 0.64123691311728226
	.quad	0x3fd77d2d64eafea4              # double 0.36701521735447273
	.quad	0x3fdad1a4f07febdc              # double 0.41904567228601564
	.quad	0x3f735ebdcbd91d80              # double 0.0047290243069889604
	.quad	0x3fb154113f618da0              # double 0.067689016317265871
	.quad	0x3fec123e9eb44ca2              # double 0.87722712513859258
	.quad	0x3fe98b8455ab041e              # double 0.79828087551152627
	.quad	0x3fca11ff10c05c5c              # double 0.20367420499744326
	.quad	0x3faff81715224130              # double 0.062439652757463882
	.quad	0x3fe00fd1f0480e0d              # double 0.50193116121266856
	.quad	0x3fe02ecc3ad0772e              # double 0.50571261870547857
	.quad	0x3fec3aab4a335e22              # double 0.88216175548854303
	.quad	0x3fed106293dd3555              # double 0.90825013045984326
	.quad	0x3fe082591004dc95              # double 0.51591160896977561
	.quad	0x3fd343e56efafddc              # double 0.30101905668194973
	.quad	0x3fea36fe8bb753a8              # double 0.81921317375473723
	.quad	0x3fe4614ebaf3b518              # double 0.63687836183604229
	.quad	0x3fe1db726391895d              # double 0.55803794333432288
	.quad	0x3fbc896203501bb8              # double 0.11147129612810047
	.quad	0x3fd2e9c3ca6cdf6e              # double 0.29551787155241172
	.quad	0x3fce8168aa362544              # double 0.23832424460514734
	.quad	0x3feee0c870c18428              # double 0.96493932745591326
	.quad	0x3fef48260504a61a              # double 0.97755719165906219
	.quad	0x3fd10ab553dc922e              # double 0.26627858342752375
	.quad	0x3fe5a29256bbacb0              # double 0.67609517040309264
	.quad	0x3fd05b42624aa312              # double 0.25557002638611082
	.quad	0x3fc936d81bea143c              # double 0.19698621142393502
	.quad	0x3fce7b04d348af48              # double 0.23812923733327751
	.quad	0x3f8f832ed59ca4c0              # double 0.015386930364530094
	.quad	0x3fd2abb37c38af6e              # double 0.29172980433462825
	.quad	0x3fe9c5012a29924e              # double 0.80529840693322696
	.quad	0x3fe26260f6fc6e1e              # double 0.57450912703956525
	.quad	0x3fd7b8a63a630982              # double 0.3706451006111352
	.quad	0x3f98a57bf3536820              # double 0.024068772055081067
	.quad	0x3fd7f562f73c7062              # double 0.37435220855855367
	.quad	0x3fb37ddc4da6fe38              # double 0.076139229734501934
	.quad	0x3fe81d24d8cbaac4              # double 0.75355760901342039
	.quad	0x3fe5fcece8f761a2              # double 0.68712468625294698
	.quad	0x3fd55ff41ccb29ae              # double 0.33398154079318487
	.quad	0x3f95bd18f71557a0              # double 0.021229162293216697
	.quad	0x3fa6abf6390a5e90              # double 0.044280714476539917
	.quad	0x3fe5d9d28bac3fda              # double 0.68283965377667788
	.quad	0x3fef26614f8de17c              # double 0.97343507326063116
	.quad	0x3fd73ea9cc6b021c              # double 0.36319966280646709
	.quad	0x3fd70d7b4a162d7a              # double 0.36019785151503181
	.quad	0x3fdf1a6e4e599e64              # double 0.48598821307539297
	.quad	0x3fe8651fd81f1d90              # double 0.76234428607215143
	.quad	0x3fd47c7a0653bbf6              # double 0.32009745233420916
	.quad	0x3fe8aef000b318dd              # double 0.77135467659607182
	.quad	0x3fcc9895d0c7bc84              # double 0.2234065312800092
	.quad	0x3febeaac2d655cb6              # double 0.87239655367274938
	.quad	0x3fe31ca2d4b02103              # double 0.59724561253190733
	.quad	0x3fe32d36b1485efc              # double 0.59926924348380295
	.quad	0x3fc4a734446211a4              # double 0.16135266627328548
	.quad	0x3fec84a8651144fd              # double 0.89119357814539024
	.quad	0x3fdbde2833e6e930              # double 0.43543438976816429
	.quad	0x3fe8e22ffe93c5e1              # double 0.77761077615849328
	.quad	0x3f8f13d268ef6180              # double 0.015174526049961612
	.quad	0x3fd7c1fb09ebb368              # double 0.3712146374589822
	.quad	0x3fae83bfe576e8b0              # double 0.059598919640352022
	.quad	0x3fe81a3c0593393e              # double 0.75320244873891062
	.quad	0x3feee076f6549865              # double 0.96490047561088643
	.quad	0x3fd943b1d33d07ae              # double 0.39475675228834006
	.quad	0x3fd1a4e455d98a6e              # double 0.2756892050148626
	.quad	0x3fe476ae01607b37              # double 0.6394872691051664
	.quad	0x3fd960c8bb26b538              # double 0.39653223301396023
	.quad	0x3fb73b10fdeec978              # double 0.09074503135233225
	.quad	0x3fe01ee0b6380888              # double 0.50376926030755076
	.quad	0x3fc44ceeb001befc              # double 0.15859778970797567
	.quad	0x3fa92eb8e60acfd0              # double 0.049184587556197479
	.quad	0x3faf50cefd3c1050              # double 0.061163395321302105
	.quad	0x3fe713f5a44a3aeb              # double 0.72118646705515965
	.quad	0x3fe20fbf9de512dd              # double 0.56442242468673565
	.quad	0x3fec4743a49a9729              # double 0.88369924687569779
	.quad	0x3fee6123aa89023d              # double 0.94935782725958229
	.quad	0x3fe73d5f56b3294a              # double 0.72624175008358205
	.quad	0x3fe0a53d96f28679              # double 0.52017096979052646
	.quad	0x3fdf329672462dfc              # double 0.48746262702545073
	.quad	0x3fe2947629f94071              # double 0.58062275121666407
	.quad	0x3fc039e2939a9c7c              # double 0.12676651198600897
	.quad	0x3fb363ca5c271738              # double 0.075741431711404128
	.quad	0x3fe3cb80481b86a1              # double 0.61859144290447798
	.quad	0x3fe28ab7ee971c76              # double 0.5794334087339752
	.quad	0x3fd767d81b6cbff6              # double 0.36571314504817509
	.quad	0x3fd51ae715f3c0c8              # double 0.32976700919881496
	.quad	0x3fdca0b37e0b6cac              # double 0.44730841931386567
	.quad	0x3fba01a315153b80              # double 0.10158747925491518
	.quad	0x3fe33c94804705ee              # double 0.60114502958475469
	.quad	0x3fe77d46bb608a4e              # double 0.73404251668063991
	.quad	0x3fd3f4f7b2a4f00e              # double 0.31182663388949627
	.quad	0x3fe5cbb50b8df5b7              # double 0.68111660248512507
	.quad	0x3fefbfcccebf5c44              # double 0.99216308956500443
	.quad	0x3fc308912a4cf394              # double 0.14869894566973285
	.quad	0x3fcba76630455c34              # double 0.21604611737231638
	.quad	0x3fb42ed42133e948              # double 0.078839548212191635
	.quad	0x3fe1fe715f47dd68              # double 0.56230991944805186
	.quad	0x3fd30e1330b8a76e              # double 0.29773406751575393
	.quad	0x3fe041f51ef6fe8f              # double 0.50805145309273481
	.quad	0x3fda7fc27160263e              # double 0.41404782363733605
	.quad	0x3fd70ac43a7c3a8c              # double 0.36003213607265461
	.quad	0x3fef6923c5e76208              # double 0.98158444073766393
	.quad	0x3fe2368688853194              # double 0.56915594734305097
	.quad	0x3fbc7a8156a1c9a0              # double 0.11124428143538134
	.quad	0x3fe57965ba628078              # double 0.67106901553417142
	.quad	0x3fa4a80b9f942150              # double 0.040344584684194218
	.quad	0x3f934a6ca1d3dd60              # double 0.018838593842671059
	.quad	0x3fe29a0508ad2f5c              # double 0.58130122847203891
	.quad	0x3fdc88b5f608a9f0              # double 0.44584416414968953
	.quad	0x3fe76230b5a159bd              # double 0.73073611712134545
	.quad	0x3fe162cca71d5b30              # double 0.54331047668060783
	.quad	0x3fe72dfa41a54a4f              # double 0.72436249562663046
	.quad	0x3feab268c38018ae              # double 0.83427847083728124
	.quad	0x3fd013dfd07be8ea              # double 0.25121302947776647
	.quad	0x3fd0f6015c7dad1c              # double 0.26501497299496335
	.quad	0x3fc8088b99ad8560              # double 0.18776078227805737
	.quad	0x3fe0eaf16dba22f4              # double 0.52867957526276976
	.quad	0x3fd0bbac9a3b82fe              # double 0.26145472585453422
	.quad	0x3fea52539f682094              # double 0.8225496400273351
	.quad	0x3fa41057eca32a10              # double 0.039187190662762217
	.quad	0x3fdb0989b313dabe              # double 0.42245714653055788
	.quad	0x3fc01515af6e1ef4              # double 0.12564345422673961
	.quad	0x3fe686062cb80645              # double 0.70386036619329018
	.quad	0x3fed818638e955ca              # double 0.92206107249756397
	.quad	0x3fc3b291689d9134              # double 0.15388696296862181
	.quad	0x3fe398ffd61089b6              # double 0.61242667970173303
	.quad	0x3fe9bf5c52d04559              # double 0.80460945295832709
	.quad	0x3fc49d4a29e96760              # double 0.16105010076972359
	.quad	0x3fee288391942259              # double 0.94244554932908919
	.quad	0x3fe4afb94776665c              # double 0.6464506526710454
	.quad	0x3fe06a93d0c5b084              # double 0.51300993705582743
	.quad	0x3fe5428e48a125a6              # double 0.6643744867844148
	.quad	0x3feb482ddaf738c4              # double 0.85256092802753657
	.quad	0x3fe722400f9d701f              # double 0.72293093728831426
	.quad	0x3fc2db067e85a780              # double 0.14730912378155026
	.quad	0x3fedb1153671fe84              # double 0.9278665603050773
	.quad	0x3fe9001022157e07              # double 0.78125769288084335
	.quad	0x3fe3a330bea28aa9              # double 0.6136707042063182
	.quad	0x3fe880324333ed08              # double 0.76564896703294583
	.quad	0x3feda4218011e60b              # double 0.9262855054250293
	.quad	0x3fd7cc46c3fa2db2              # double 0.37184304369358323
	.quad	0x3fec9e14eae17366              # double 0.89429708361749927
	.quad	0x3fd24e90a56e60c2              # double 0.28604522853266812
	.quad	0x3fe2d9a2a4941e44              # double 0.58906681198363531
	.quad	0x3fda769e6354967e              # double 0.41348991108166178
	.quad	0x3fae9fd335b84340              # double 0.059813118274297583
	.quad	0x3fc3d1ed489b2560              # double 0.15484396023957014
	.quad	0x3fdcbaacca6514d8              # double 0.44889373555299761
	.quad	0x3fc03560519bda58              # double 0.12662891373448093
	.quad	0x3fe09f750aba2f4f              # double 0.51946498961613397
	.quad	0x3fd0177d2d81f4fe              # double 0.25143365329843437
	.quad	0x3fd12ecba670b06a              # double 0.26848117116856562
	.quad	0x3fcb1fa1bb33ff9c              # double 0.21190282479073808
	.quad	0x3fbc2245d7dadf90              # double 0.10989796180626699
	.quad	0x3fd782566ea08c68              # double 0.36733017733985784
	.quad	0x3fe92018ecadd954              # double 0.78516813494096959
	.quad	0x3fd7d54589309576              # double 0.37239206693114768
	.quad	0x3fd26883dc8f876c              # double 0.28762909449698415
	.quad	0x3febcc86101d5479              # double 0.86871626994492523
	.quad	0x3fc31d68e5628e90              # double 0.149335014347447
	.quad	0x3fee6d657b39889c              # double 0.95085405413944412
	.quad	0x3fdfb3be90461faa              # double 0.49534572686433853
	.quad	0x3fc6abb6dbb3e91c              # double 0.17711530425715061
	.quad	0x3fe3315ea31d53ea              # double 0.59977657182991817
	.quad	0x3fdf10f05462f6ec              # double 0.48540886155011154
	.quad	0x3fda9cbcfc86fdd0              # double 0.41581654225225595
	.quad	0x3fd80b2f518f5e84              # double 0.37568266835067043
	.quad	0x3fe06e53b2bdcb95              # double 0.51346764479090956
	.quad	0x3fe9259c66007a7e              # double 0.78584117815246635
	.quad	0x3fd04e4af3b6e200              # double 0.25477861213906294
	.quad	0x3fc7a52c6d1b5bd4              # double 0.18472819640621074
	.quad	0x3fe6c1b1b4d92148              # double 0.71114430734545753
	.quad	0x3feaa5322ea9117d              # double 0.8326655303322209
	.quad	0x3fe6310a8713e0aa              # double 0.69348646528580571
	.quad	0x3fe051c744368ed8              # double 0.50998271296381414
	.quad	0x3fe51307f1642847              # double 0.6585731234238289
	.quad	0x3fe78ca6c0b51a2f              # double 0.73591935766382288
	.quad	0x3fd1381df8ed08e8              # double 0.26905011471911999
	.quad	0x3fe60a22546b72d9              # double 0.68873707283236307
	.quad	0x3fe8a519a37a8e50              # double 0.770153826994326
	.quad	0x3fed294493a11de1              # double 0.91128758272037313
	.quad	0x3fe754a16bb89d42              # double 0.72908087767874741
	.quad	0x3fee39b05d03ab61              # double 0.94454210440504138
	.quad	0x3fb8d028f6f459d8              # double 0.096926269809365251
	.quad	0x3fc12166282371bc              # double 0.13383175811658343
	.quad	0x3fe5f30d186cb382              # double 0.68591933031494556
	.quad	0x3fe090424ee352a2              # double 0.51760974319275399
	.quad	0x3fd34acf4b4776a6              # double 0.30144102431754971
	.quad	0x3fc770fa897a6958              # double 0.18313533509064928
	.quad	0x3fd89ed13382f332              # double 0.38469343214437679
	.quad	0x3fed6fcad43df27a              # double 0.91989652112495368
	.quad	0x3fcd6bbb91af005c              # double 0.22985024083573335
	.quad	0x3fdcaa4e3c283750              # double 0.44789462923732959
	.quad	0x3fdab96e18ab6088              # double 0.41756775292515913
	.quad	0x3fb4a9935b62edf8              # double 0.080712518511908971
	.quad	0x3fc98dfd0a7648f0              # double 0.19964564333765322
	.quad	0x3fd5de842f3cbc84              # double 0.34170631993306011
	.quad	0x3fe1926b72ee50a1              # double 0.54912350127644427
	.quad	0x3fd4ec3a843e9c4e              # double 0.32691824831494365
	.quad	0x3fdc1da64209482c              # double 0.43930965851643822
	.quad	0x3fbd0d18b4db5810              # double 0.11348108687829517
	.quad	0x3fe04a75a04a89a0              # double 0.50908929163806604
	.quad	0x3fee147243bdd8c3              # double 0.93999589186457688
	.quad	0x3fee10c5d9108fa3              # double 0.93954746623466112
	.quad	0x3fcf8b3151648f60              # double 0.24643532251604494
	.quad	0x3fec48e195f99ee7              # double 0.88389663021095266
	.quad	0x3fded33959c6327a              # double 0.48164209143650505
	.quad	0x3fc25ba73a4aa710              # double 0.14342203470487691
	.quad	0x3fe80b14054b9ef1              # double 0.75135232004410402
	.quad	0x3fde52a654ace8a2              # double 0.47379453915676539
	.quad	0x3fbaed81bc03a190              # double 0.105186565782452
	.quad	0x3fec339e915dae3b              # double 0.88130119697365872
	.quad	0x3fb48d7ca278dfb0              # double 0.080283918062262982
	.quad	0x3fdbc5adb1054edc              # double 0.43394033705884083
	.quad	0x3fe529556cc426ca              # double 0.66129561656381353
	.quad	0x3fbc054139c20590              # double 0.10945518169503132
	.quad	0x3fc022f0d1ae45c0              # double 0.12606630552595099
	.quad	0x3fe5350e85d1cca3              # double 0.66272665154101096
	.quad	0x3fb14c8656f5d960              # double 0.06757392523818373
	.quad	0x3fd8224cbae5ace6              # double 0.37709348918606478
	.quad	0x3fd377d4fbd43290              # double 0.3041889628664558
	.quad	0x3fec9549893aed61              # double 0.89322354128618653
	.quad	0x3fedff7b02242f34              # double 0.93743658464652535
	.quad	0x3fc155b5a74079a0              # double 0.13542814890474819
	.quad	0x3fd6ed7de911d660              # double 0.35824535141668967
	.quad	0x3fe54bb7ce1b443b              # double 0.665492918540742
	.quad	0x3fc57a25752bf4b0              # double 0.16779010983728915
	.quad	0x3fe2eaff3fa2c1f7              # double 0.59118616513120414
	.quad	0x3fdef0b16db2fb46              # double 0.48344073975379265
	.quad	0x3fbcce3da4fcedd0              # double 0.1125219848444694
	.quad	0x3fe82d239468569f              # double 0.75551012979368071
	.quad	0x3fe8249e0cd0e354              # double 0.75446989539259812
	.quad	0x3fe40e8795cfc612              # double 0.62677363643723738
	.quad	0x3fea1acd746bebda              # double 0.81577179659449972
	.quad	0x3fe0cb7e5b39c415              # double 0.52484052484044474
	.quad	0x3fd0cbe137056a34              # double 0.26244383214148859
	.quad	0x3fea67a0efc009db              # double 0.82514998270226714
	.quad	0x3fd31d026eb20252              # double 0.29864559946148461
	.quad	0x3fc5762d1ebde074              # double 0.16766895295200224
	.quad	0x3fcdbbd1e7fbc570              # double 0.2322943098766177
	.quad	0x3fe4e6a0d9e596ee              # double 0.65315287168479386
	.quad	0x3fe8d8dbac3af244              # double 0.77647193564150329
	.quad	0x3fd449ef1fa4eb6c              # double 0.31701257791762916
	.quad	0x3fed65c321a343a1              # double 0.91867214746354275
	.quad	0x3fd3ab500c6036ba              # double 0.3073310967309727
	.quad	0x3faaab4b3be79330              # double 0.052088118612834911
	.quad	0x3fef81a2e5d50d2b              # double 0.9845747460280213
	.quad	0x3fd8f7f9c01f4800              # double 0.39013522874768114
	.quad	0x3fa2c18a3d4b6860              # double 0.036632843000646842
	.quad	0x3fd23db04c13b682              # double 0.28501517705340274
	.quad	0x3fe598a636cbfcd6              # double 0.6748839445353052
	.quad	0x3fc4f426b5779914              # double 0.16370090351774336
	.quad	0x3feb97652feb21c4              # double 0.86223086699561024
	.quad	0x3fe648343618b8a4              # double 0.69631395879493541
	.quad	0x3fe5fe21b68acb78              # double 0.68727193501250294
	.quad	0x3fedd2668ca98ef4              # double 0.93193366501915742
	.quad	0x3fd9a506aadae98c              # double 0.40069739041396057
	.quad	0x3fe0b9fc3b3f3cf9              # double 0.52270328113254927
	.quad	0x3fe88efa8be83f08              # double 0.76745345426204015
	.quad	0x3fda6a4551f10bbe              # double 0.41273625375850631
	.quad	0x3fa78e3ddc2c8e00              # double 0.046007092596735077
	.quad	0x3fe572dd6f9431ba              # double 0.6702716044688295
	.quad	0x3fdc92ab176f9d02              # double 0.44645192421599245
	.quad	0x3fca4bc793062ffc              # double 0.20543760947145973
	.quad	0x3fd14d5cb809034a              # double 0.27034681293666962
	.quad	0x3fee352ea608380a              # double 0.9439919703306725
	.quad	0x3fe2a9855e2ed48d              # double 0.58319347758392015
	.quad	0x3fc01fffdab7cb1c              # double 0.12597654513918932
	.quad	0x3fe98fbb97d027bb              # double 0.79879550601002991
	.quad	0x3fe73846f40def13              # double 0.72561977068787298
	.quad	0x3fd004d3d133ea30              # double 0.25029464178047345
	.quad	0x3fe23e43785b3a2d              # double 0.57010053164578312
	.quad	0x3fea3e9642933246              # double 0.82014000895430494
	.quad	0x3fb625b7cb155bd8              # double 0.086513030129352742
	.quad	0x3f9532b4a0974220              # double 0.020701238919914045
	.quad	0x3febb42773eb5102              # double 0.8657414688155145
	.quad	0x3fe64bb8638ab5cb              # double 0.69674319688572817
	.quad	0x3fc4ac873583365c              # double 0.16151514161031144
	.quad	0x3fec593bc204c968              # double 0.88589275259282108
	.quad	0x3fe765853e357975              # double 0.73114263677761804
	.quad	0x3febf3a3475b580b              # double 0.87349094330670718
	.quad	0x3fa0cbdd4d1cbe90              # double 0.032805362380142644
	.quad	0x3fe489e6fd4cb9d1              # double 0.64183377716636347
	.quad	0x3fe2f1b31c2c27fb              # double 0.59200435163916099
	.quad	0x3fdce001e2cb56ec              # double 0.4511723246372259
	.quad	0x3fd955252e39ecc6              # double 0.39582185282024474
	.quad	0x3fe2fbdc53757edc              # double 0.59324470806674467
	.quad	0x3fc7c3a52d58e98c              # double 0.18565811838363933
	.quad	0x3fcd1dcd3180f41c              # double 0.22747197072195113
	.quad	0x3fe2043e194ab87a              # double 0.56301789226360133
	.quad	0x3fddb0e3d5861348              # double 0.46392150737692761
	.quad	0x3fe7a678b234fd66              # double 0.73907122427037275
	.quad	0x3fea86734be29e3c              # double 0.82891239949544326
	.quad	0x3fdc30a4e614da0e              # double 0.44046900242702314
	.quad	0x3fe7fbe261be4d96              # double 0.74949759569647045
	.quad	0x3fef48f1451caeb0              # double 0.97765410898633398
	.quad	0x3fe464051c80e545              # double 0.637209468527694
	.quad	0x3f777e4769dd7280              # double 0.0057356633750172969
	.quad	0x3face21461b2a470              # double 0.056412350584033599
	.quad	0x3fdeba868786f71e              # double 0.48013461337164809
	.quad	0x3f5e5cac0100d600              # double 0.0018531493879100358
	.quad	0x3fe40d2c5dda87ce              # double 0.62660806971347838
	.quad	0x3f311ee159794000              # double 2.6124002167637883E-4
	.quad	0x3fe60c6efff3fb3b              # double 0.6890177725871135
	.quad	0x3fe10217d4f480c7              # double 0.53150550453940404
	.quad	0x3fec18c61531082a              # double 0.87802414072962631
	.quad	0x3fdf5897f0ea702c              # double 0.48978231932574334
	.quad	0x3fdcedd33790c566              # double 0.45201569010085618
	.quad	0x3fb74adc670f0460              # double 0.090986037407689846
	.quad	0x3fcaa4f53e4ebd3c              # double 0.20815911810266552
	.quad	0x3fe2e46f3acf9475              # double 0.59038506971832183
	.quad	0x3fc480f269e8f7e8              # double 0.16018514796627348
	.quad	0x3fb1d431518d7ed0              # double 0.069644052896815412
	.quad	0x3fe65eec853d8645              # double 0.69908739112379037
	.quad	0x3fd84de2001adc46              # double 0.37975358972784468
	.quad	0x3fb507c44b8f45a8              # double 0.082149761626416962
	.quad	0x3fa235852f3defa0              # double 0.035564577118719187
	.quad	0x3fb7d880379a4c00              # double 0.093147290778048841
	.quad	0x3fcc36109e6116dc              # double 0.2203999303184706
	.quad	0x3fdf815fdeff0bce              # double 0.49227139260272856
	.quad	0x3fe63b1344fc2954              # double 0.69471133683809194
	.quad	0x3fa28af7eabb6b40              # double 0.036216494945355837
	.quad	0x3fec2c40e4316317              # double 0.88040203637055725
	.quad	0x3fd030f4a2cc6fc0              # double 0.25298801325129361
	.quad	0x3fd33d2e88737388              # double 0.30060923886576818
	.quad	0x3faae9aa9f52dde0              # double 0.052563983868306741
	.quad	0x3fe73381845955dc              # double 0.7250373444500684
	.quad	0x3fc493ff7a9e6b6c              # double 0.1607665394520511
	.quad	0x3fd59351e8060fca              # double 0.33711669596254679
	.quad	0x3fef069ba640ef33              # double 0.96955664130607599
	.quad	0x3fed68c9cd73e2df              # double 0.91904153945423761
	.quad	0x3f80e12d34e28440              # double 0.0082419902576608139
	.quad	0x3fe35422f048b254              # double 0.60402056627715206
	.quad	0x3fd43fea1724b3b2              # double 0.31640102634519984
	.quad	0x3fc8f7f5158a5e94              # double 0.19506705810339453
	.quad	0x3fd3681dab5cebd4              # double 0.30322972998299957
	.quad	0x3fd1126eabdfad6a              # double 0.26675001892609507
	.quad	0x3fe8d1ca3a5da066              # double 0.77560912513309854
	.quad	0x3fc8ab160f9297c0              # double 0.19272113571531513
	.quad	0x3feec9ac01c4ddfd              # double 0.96211815209875306
	.quad	0x3fbebbbd706d2a50              # double 0.12005218500886738
	.quad	0x3fe17693a490cb22              # double 0.54572469846457161
	.quad	0x3fe49ef546559b1a              # double 0.64440406548678486
	.quad	0x3fc0b55576a61fec              # double 0.13053386968044778
	.quad	0x3fd0999642b7be10              # double 0.25937420382885623
	.quad	0x3fe33a7cc164af52              # double 0.60088956615570965
	.quad	0x3feb146b77434164              # double 0.84624264997004816
	.quad	0x3fc62b281e73cf70              # double 0.17319203841145336
	.quad	0x3fe68d39f1ac98e0              # double 0.70473954393380822
	.quad	0x3fea82eb125dd6e5              # double 0.82848123156756215
	.quad	0x3fec29398df3b5ed              # double 0.88003232693671196
	.quad	0x3fe8698a59e46596              # double 0.76288335377755589
	.quad	0x3fe0c1c877c90724              # double 0.52365516086158381
	.quad	0x3fdd6f280aa4e1c8              # double 0.45990944899997688
	.quad	0x3fd55158f786da36              # double 0.33309005901847699
	.quad	0x3fdc7a8f60e16916              # double 0.44498047314631728
	.quad	0x3fe4692e96617b40              # double 0.63783959742782059
	.quad	0x3fd4dca66b6d0594              # double 0.3259674119072653
	.quad	0x3fcd9a9aff9eedac              # double 0.23128068429455817
	.quad	0x3fe33213c4463f2b              # double 0.59986294112056748
	.quad	0x3fec0d84b6ca71ec              # double 0.87665019704178126
	.quad	0x3fefb9f8848e4412              # double 0.99145151033201473
	.quad	0x3fe4ecbea7c0e5a7              # double 0.65389950527530949
	.quad	0x3fac7e6cdbe1ae00              # double 0.055652047959338091
	.quad	0x3fcbaf5e1f587320              # double 0.21628929644148176
	.quad	0x3fe075a38173e032              # double 0.5143601921436185
	.quad	0x3fe3042dbb6c54a8              # double 0.59426008802497154
	.quad	0x3fd2739b58ed2e60              # double 0.28830608066775731
	.quad	0x3feb2b1c0a64768b              # double 0.84901239423534614
	.quad	0x3feaea4b631973da              # double 0.84110040049892665
	.quad	0x3fc72b96788ca634              # double 0.18101769338800155
	.quad	0x3fd42c051a37209e              # double 0.3151867633828348
	.quad	0x3feaceccdacda86a              # double 0.8377441667082739
	.quad	0x3fec2cb749eef3fc              # double 0.88045849266165943
	.quad	0x3fe6fec6402bda27              # double 0.71860039266068021
	.quad	0x3fe977c67ed132c1              # double 0.79587101716023068
	.quad	0x3fa6eed8a57b70c0              # double 0.044791002464735552
	.quad	0x3fe61d79c1ca25dd              # double 0.69109809731997596
	.quad	0x3fea04dff39ced1c              # double 0.813095069700839
	.quad	0x3f6759eef63f4800              # double 0.0028505007958097295
	.quad	0x3fef0b8ff2db3656              # double 0.9701614135062282
	.quad	0x3fad6c35b35dbce0              # double 0.057466200013431168
	.quad	0x3fe231e14d369726              # double 0.5685888774939698
	.quad	0x3fde543f721bf9f8              # double 0.4738920797680346
	.quad	0x3fe510005efd5051              # double 0.65820330193174403
	.quad	0x3fc5e6305da4cef4              # double 0.17108730862093291
	.quad	0x3fd9133a2ca44a3e              # double 0.39179853782221474
	.quad	0x3fc5cd74e833cd3c              # double 0.17033253992085828
	.quad	0x3fe287e725c4ce29              # double 0.57908971192086256
	.quad	0x3fd1ab79895ab85c              # double 0.27609098828805201
	.quad	0x3fd5d0cd48995116              # double 0.34086925592170425
	.quad	0x3fd34b851f746438              # double 0.30148437568420006
	.quad	0x3fe86cc7cf67008f              # double 0.76327887066146782
	.quad	0x3fdc1165e7a63bb4              # double 0.43856189367300691
	.quad	0x3fee743146978b97              # double 0.95168365275854938
	.quad	0x3fe4c58e373f6898              # double 0.64911566534580611
	.quad	0x3fe677416a117c34              # double 0.70205755917039037
	.quad	0x3fc0c79f9b5380f0              # double 0.13109202465330538
	.quad	0x3fd812e10d76de0e              # double 0.37615228953242841
	.quad	0x3fe9ab8c8e0d4269              # double 0.80219104523173457
	.quad	0x3fd8b05efa05c0a4              # double 0.38576483169800668
	.quad	0x3fcce8267fe28054              # double 0.22583466762898985
	.quad	0x3fda3910f160fb70              # double 0.40973304340507521
	.quad	0x3fd1543641771f82              # double 0.27076488869760607
	.quad	0x3fbe0c3aac507cf0              # double 0.11737410265822112
	.quad	0x3f7c8caf7a311980              # double 0.0069701056082237534
	.quad	0x3fe61d291ec79dcd              # double 0.69105964671774134
	.quad	0x3fdb0404aa262dc6              # double 0.42212025276304777
	.quad	0x3fcd3e15e7131f78              # double 0.22845720084137233
	.quad	0x3fdb9202e290b0ce              # double 0.43078682065494156
	.quad	0x3fd57c959345bf56              # double 0.33572902090144419
	.quad	0x3fd44808bf0a38da              # double 0.31689661651843226
	.quad	0x3fce6e01fc3769c0              # double 0.23773217025047977
	.quad	0x3fe2cb35bfcd92ef              # double 0.58730590306785568
	.quad	0x3fe6132ea9259f6b              # double 0.68984158550754893
	.quad	0x3f98d4faae738980              # double 0.024249951265014058
	.quad	0x3fd2317a9186d6a8              # double 0.28426994525521332
	.quad	0x3fee6aed249464a1              # double 0.95055253166642129
	.quad	0x3fe2611cd7a5be77              # double 0.57435457342758311
	.quad	0x3fe337ee39fb553b              # double 0.60057746243061361
	.quad	0x3fae2a9fc3923ef0              # double 0.058918945907064812
	.quad	0x3fe4fffef9f8d2e0              # double 0.65624951193475667
	.quad	0x3fb5caf7eaf85d18              # double 0.085128302446140558
	.quad	0x3fcbc673835f040c              # double 0.21699375071150973
	.quad	0x3fd27025974dc9b2              # double 0.28809489990012616
	.quad	0x3fc1ee15ad7056f0              # double 0.14007826775257781
	.quad	0x3fe89207b0c4a952              # double 0.76782593274155375
	.quad	0x3fc17731f6d16560              # double 0.13645004798562876
	.quad	0x3fb5d92ae6b59530              # double 0.085344964337839668
	.quad	0x3fe0eaf83482a6b0              # double 0.52868280654839417
	.quad	0x3fc1cbea3328fe40              # double 0.13903548715642167
	.quad	0x3f955f97fdc43d40              # double 0.020872473586732498
	.quad	0x3fe8aeac6032648d              # double 0.77132242954680097
	.quad	0x3f75b6f843bd1880              # double 0.0053014467083071226
	.quad	0x3fe68a91c289f185              # double 0.704415206869769
	.quad	0x3fe75ba3e33b4f61              # double 0.72993654614627357
	.quad	0x3fee9521c512e638              # double 0.95570457926732554
	.quad	0x3fbd72ebd549ecf8              # double 0.11503480870480931
	.quad	0x3fe35c6c9f785a2d              # double 0.60503226419934253
	.quad	0x3fc51f7f6c70a37c              # double 0.16502373499795542
	.quad	0x3fefadb3c672d17d              # double 0.98995388755297109
	.quad	0x3fe028ce0be13b48              # double 0.50498106308246182
	.quad	0x3fe2f66cd46e7826              # double 0.59258119097262774
	.quad	0x3fdf8e8aedaff8a6              # double 0.493075115315046
	.quad	0x3febda9138bb2795              # double 0.87043057518279687
	.quad	0x3fe470a9e21c729b              # double 0.63875288164452415
	.quad	0x3fbf426e974e5948              # double 0.12210742181773526
	.quad	0x3fe8d26cb004042c              # double 0.7756865918928546
	.quad	0x3fd4b5c786f32c56              # double 0.32359493426037511
	.quad	0x3fe97dde50deaf1d              # double 0.79661479754347264
	.quad	0x3fe9f85407be5584              # double 0.81156350624466755
	.quad	0x3f9e0dc7dd3fa4c0              # double 0.029349444273894632
	.quad	0x3fea40426f7578f1              # double 0.82034417886077737
	.quad	0x3fb054715edbd7f8              # double 0.063788495692136737
	.quad	0x3fd41638886d1022              # double 0.31385625193456879
	.quad	0x3fef41e0e87df0e6              # double 0.97679181488595357
	.quad	0x3fbdd3daa40fe9f0              # double 0.11651388650344763
	.quad	0x3fe1a76a634210f4              # double 0.55168647180883434
	.quad	0x3fcc38079f5ab1f8              # double 0.22045989304514513
	.quad	0x3f883ade994d2640              # double 0.011831034711252575
	.quad	0x3fc423f792806388              # double 0.15734762814897985
	.quad	0x3fd9268681bc4e0c              # double 0.39297640485276086
	.quad	0x3fcc3f686c9b0a88              # double 0.2206850557614255
	.quad	0x3fd8e12aec4b9de0              # double 0.38874314380379182
	.quad	0x3fea71dfd0f49eb3              # double 0.8264006692088145
	.quad	0x3fe053eae21f18e0              # double 0.51024383701658493
	.quad	0x3fe5363b60b01617              # double 0.66287011036246468
	.quad	0x3fcfce2ebee11414              # double 0.2484796936061292
	.quad	0x3fe0876a3cca850e              # double 0.51653015015850356
	.quad	0x3feaa01b3107a37b              # double 0.83204421592846189
	.quad	0x3fdeb4c889305960              # double 0.47978413960790611
	.quad	0x3fcab8072c99e168              # double 0.20874108960903048
	.quad	0x3fe4b503464dfa5d              # double 0.64709628802649954
	.quad	0x3fa7896f288aeeb0              # double 0.045970414828358286
	.quad	0x3fdfdce1c0559642              # double 0.49785655768059567
	.quad	0x3fea39fe2543cccb              # double 0.81957919386186384
	.quad	0x3fdb324d18d780da              # double 0.42494513917882915
	.quad	0x3fe1d017dd628d53              # double 0.55665200461627717
	.quad	0x3fe96cc6f130f345              # double 0.79452845676096528
	.quad	0x3fc08846bf809b14              # double 0.12915882445050697
	.quad	0x3febe1dd1db6a9a4              # double 0.87132125667021798
	.quad	0x3fdb5dd2a1418482              # double 0.42760148761414751
	.quad	0x3fea77a38514d29c              # double 0.82710433952759698
	.quad	0x3fdad2eed5b96920              # double 0.41912432548055456
	.quad	0x3fc4c0842a6f9d08              # double 0.16212513038701837
	.quad	0x3fce98584ff09b1c              # double 0.23902419951738174
	.quad	0x3fe5722cc70033d6              # double 0.6701873671278189
	.quad	0x3fd8346eb72000f6              # double 0.3782002247171613
	.quad	0x3fc3050b80424f3c              # double 0.14859145891807113
	.quad	0x3fe1211fca87cc97              # double 0.53529347950679351
	.quad	0x3feca308c80856b1              # double 0.89490164822446705
	.quad	0x3fd62784369f38a6              # double 0.34616189321685409
	.quad	0x3fc32d0b5d30bc08              # double 0.14981214571295731
	.quad	0x3fa7a3afa3af6e00              # double 0.04617070077048524
	.quad	0x3fe4f923891bf43b              # double 0.65541245249881486
	.quad	0x3fedebf94193b257              # double 0.93505537803646177
	.quad	0x3fd5abb4a3285b32              # double 0.33860507901538306
	.quad	0x3fece3d01620210b              # double 0.90280918427836931
	.quad	0x3fc0952a44bc7d3c              # double 0.12955215793861352
	.quad	0x3fdd792f8b5370e4              # double 0.46052158933686216
	.quad	0x3fecae9df4beda9f              # double 0.89631555368289983
	.quad	0x3fe7b89e98764315              # double 0.74128656175352836
	.quad	0x3fe6c48a847eebe1              # double 0.71149183157046647
	.quad	0x3fe4b635bca94eb3              # double 0.64724242065354642
	.quad	0x3fb5c4cb17401988              # double 0.085034077812542574
	.quad	0x3f8d63910456d800              # double 0.014350064225123305
	.quad	0x3fef0063ffb9717c              # double 0.96879768320245274
	.quad	0x3fbfa6deb4b1bc88              # double 0.12363998328668135
	.quad	0x3fe922b5c7482035              # double 0.78548706934180379
	.quad	0x3f98e4598d90b3c0              # double 0.024308585420090401
	.quad	0x3fec5bc601a0103e              # double 0.88620281522208422
	.quad	0x3fe551bb6aacc6d6              # double 0.66622706255858577
	.quad	0x3fdbe2ce0157def8              # double 0.43571806079079023
	.quad	0x3fd16aed69474334              # double 0.27215132981386891
	.quad	0x3fde11eaeac3d220              # double 0.46984360624563415
	.quad	0x3fe8ee8f491aa00c              # double 0.77912105825544264
	.quad	0x3fd60f9bfa9124d8              # double 0.3447027155821849
	.quad	0x3fefbcdb7f95eb05              # double 0.99180388373437777
	.quad	0x3fdba9d27d6070b8              # double 0.43224012607403095
	.quad	0x3fe8210d43ecdf2b              # double 0.75403464571625045
	.quad	0x3fd715e361080930              # double 0.36071094966623019
	.quad	0x3fe3f0957219fe8a              # double 0.62311813626725265
	.quad	0x3fe4f2358442053d              # double 0.65456653434390655
	.quad	0x3fd34264e678aae8              # double 0.3009273768135885
	.quad	0x3f9f9b76e60a9ba0              # double 0.030866487303366719
	.quad	0x3fe22875cb852fb1              # double 0.56743898153353289
	.quad	0x3fe15d2c02c633ea              # double 0.54262352506486633
	.quad	0x3fad722d895b8640              # double 0.057511733071589521
	.quad	0x3fb16ae4413cc4e0              # double 0.068037286688894749
	.quad	0x3fef5c24aeba410c              # double 0.97999796034312813
	.quad	0x3fc4ec5eeafef2fc              # double 0.16346346353920882
	.quad	0x3fe6e296909d1d2f              # double 0.71515968556278675
	.quad	0x3fdb80139f3fe7c6              # double 0.42969217826577866
	.quad	0x3fdd9ba564494f30              # double 0.46262488168325699
	.quad	0x3f872c38add4e840              # double 0.011314814381524596
	.quad	0x3feb2b1df82cb557              # double 0.84901331397638102
	.quad	0x3feff82a9c58f3a4              # double 0.99904375588049676
	.quad	0x3fefc2a913acf16a              # double 0.99251226275332027
	.quad	0x3fe3b0e2a3451c07              # double 0.61534244431175089
	.quad	0x3fee5cdc9eb417bb              # double 0.9488356685330851
	.quad	0x3fcc273ad1fac848              # double 0.21994719746504843
	.quad	0x3fbe2084a6e95528              # double 0.117683687925212
	.quad	0x3feb1043cdcbc247              # double 0.84573545641439629
	.quad	0x3fdbf7fcc652f9e6              # double 0.4370109497794189
	.quad	0x3fd4970a413a2392              # double 0.32171875352701662
	.quad	0x3fdec603d57fc702              # double 0.48083587502979708
	.quad	0x3fed7b968a72b9c9              # double 0.92133643189100056
	.quad	0x3fe4cc98cd8a89aa              # double 0.64997520584829727
	.quad	0x3fb6975984e85908              # double 0.088246912906786545
	.quad	0x3fed6969d130f763              # double 0.91911784036322464
	.quad	0x3fbdb5c75fede838              # double 0.1160549744799092
	.quad	0x3fe4ae1138818af2              # double 0.64624844585736541
	.quad	0x3fd03d01a4c63da2              # double 0.253723536407927
	.quad	0x3fc6eb5a29b057a4              # double 0.17905737910831221
	.quad	0x3fb94d230f1fdf50              # double 0.098833266441826994
	.quad	0x3fe6798f235a626b              # double 0.70233876137633666
	.quad	0x3fe9ec8ae5fb1735              # double 0.81012482565049615
	.quad	0x3fd1c9abf48a56b2              # double 0.27793406372925766
	.quad	0x3feb80fcf66ddc4e              # double 0.85949562197391471
	.quad	0x3fd2a60b5a728cc0              # double 0.29138454277763159
	.quad	0x3feb3ee5b9012137              # double 0.8514278996818011
	.quad	0x3fe2b7ec6ae04172              # double 0.58495159982889633
	.quad	0x3fa03f0d90b719e0              # double 0.031731056132730862
	.quad	0x3fec119d38bc0089              # double 0.87715016442236149
	.quad	0x3fd75335c7746600              # double 0.36445373991008978
	.quad	0x3fb615bb7d8509e0              # double 0.086269109863713833
	.quad	0x3f966dd533b23560              # double 0.021903353958398042
	.quad	0x3feebf1f3a045a4f              # double 0.9608303197044935
	.quad	0x3fb610ed6d241d68              # double 0.086195792337198207
	.quad	0x3fe4b66533871e49              # double 0.64726505340599616
	.quad	0x3fe2be579788e94a              # double 0.58573512646334192
	.quad	0x3fd7f6a58950c424              # double 0.37442911538807011
	.quad	0x3fe7b79c60c141ce              # double 0.74116343400424411
	.quad	0x3fccbac0f93bfac0              # double 0.22444927377360635
	.quad	0x3fdb4729722df136              # double 0.42621837759340353
	.quad	0x3fc3ff9cef4dd1b4              # double 0.1562381905056448
	.quad	0x3feec4def18859ee              # double 0.96153208898868825
	.quad	0x3fd16c66eff27dfe              # double 0.27224133903834502
	.quad	0x3fd2f61d37d8a7f6              # double 0.29627161458722584
	.quad	0x3fec82e51fce51cc              # double 0.89097839557740021
	.quad	0x3fef42809fd4770f              # double 0.97686797348771559
	.quad	0x3fc7825db19bdac4              # double 0.18366595432572386
	.quad	0x3fe54d4ff43e5134              # double 0.66568753913683176
	.quad	0x3fd1012267ac9c54              # double 0.26569423794211855
	.quad	0x3fcdb5b9ac38c0e4              # double 0.23210831555616729
	.quad	0x3fd531e46e4d5dd0              # double 0.33117018481922589
	.quad	0x3fdd833a69f37828              # double 0.4611345324209446
	.quad	0x3fdbb613fb0e2e38              # double 0.43298816220405767
	.quad	0x3fe36c9029a7e615              # double 0.60700233589085661
	.quad	0x3fe4db02dbe9a8fc              # double 0.65173476173120504
	.quad	0x3fe664389dcd7f2e              # double 0.69973402806133378
	.quad	0x3fe5223453a050b6              # double 0.66042534192322111
	.quad	0x3fe5c9af4406de39              # double 0.68086970602502739
	.quad	0x3fde95dbe0263264              # double 0.47789666070528924
	.quad	0x3fab1a925c4341d0              # double 0.052937101137675691
	.quad	0x3fe14b3262ebb20a              # double 0.54042929954954499
	.quad	0x3feaa3f654c6badb              # double 0.83251492078656086
	.quad	0x3f993d00b884f800              # double 0.024646769773646326
	.quad	0x3fd5f8842a527a0e              # double 0.3432932294180383
	.quad	0x3fd4a5d77e8c3adc              # double 0.32262217863255471
	.quad	0x3fe47663da7c4e3e              # double 0.63945191071474716
	.quad	0x3fdd52babab7bff2              # double 0.4581744025626896
	.quad	0x3fefd81153a67358              # double 0.99512544954232406
	.quad	0x3fe4d1749ab6ffde              # double 0.65056829660170101
	.quad	0x3fea9c41ac00c437              # double 0.83157428354582563
	.quad	0x3fdfef4a9a2c83ea              # double 0.49898018890422569
	.quad	0x3fd2f1a57dc3706a              # double 0.29599892884812695
	.quad	0x3fd9cf362da8808a              # double 0.40327219446954443
	.quad	0x3fb26d3b244924c0              # double 0.071979233130281095
	.quad	0x3fe3550424d7c40d              # double 0.60412795253626117
	.quad	0x3fe1c2392d6a4e14              # double 0.55495890493551991
	.quad	0x3fe64770ebeddfcb              # double 0.69622083740159135
	.quad	0x3fbca5ebf73c6620              # double 0.1119067648509362
	.quad	0x3fa2a9a76f01d3c0              # double 0.036450607586551609
	.quad	0x3fcc06a54a5c4f64              # double 0.21895280962837227
	.quad	0x3fdbb9081101909e              # double 0.43316842709305969
	.quad	0x3feb231fd058d206              # double 0.84803763096584883
	.quad	0x3fe513988fff77c7              # double 0.65864208340257668
	.quad	0x3fe8db8270bf9f64              # double 0.77679559727856117
	.quad	0x3feecfd715f3ffaf              # double 0.96287111556738647
	.quad	0x3fd34b8b788f0dba              # double 0.30148588918038011
	.quad	0x3fef753dee553cdb              # double 0.98306175755888192
	.quad	0x3fec11fe9290d476              # double 0.87719658495065178
	.quad	0x3fec1c33154581aa              # double 0.87844232706634284
	.quad	0x3fe44e48cb622a5d              # double 0.6345561954816038
	.quad	0x3fd2a75a295bb824              # double 0.29146436728376757
	.quad	0x3fe8a6fa2c017fc7              # double 0.77038296313184496
	.quad	0x3fe59bb65137548f              # double 0.67525783407713103
	.quad	0x3fd75687091c0b84              # double 0.36465621842960894
	.quad	0x3fef6ac9d9e10ce7              # double 0.98178570322525338
	.quad	0x3fd13db701e2b59c              # double 0.2693917768873122
	.quad	0x3fa1a2a9162d36a0              # double 0.034444126088243765
	.quad	0x3fe0dcff8cfb7693              # double 0.52697732482529813
	.quad	0x3fd3071251151108              # double 0.29730661314194196
	.quad	0x3f6dd194a5953d00              # double 0.0036399749048211527
	.quad	0x3fd0876839f664de              # double 0.25826459560773951
	.quad	0x3fe90bed342e5b31              # double 0.78270588103882777
	.quad	0x3fe3f9239483a897              # double 0.62416247374246125
	.quad	0x3fbb1793e650f020              # double 0.10582851765588019
	.quad	0x3fd3ef5d3d3c775c              # double 0.31148463230225842
	.quad	0x3fda846755a28782              # double 0.41433127749234455
	.quad	0x3fe2a7613b1b9cdf              # double 0.58293210548881891
	.quad	0x3feb40b0d4ac92e8              # double 0.85164681947625542
	.quad	0x3faa1ee782705930              # double 0.051017031357491027
	.quad	0x3fe5aeda5acd3e1e              # double 0.6775943540068885
	.quad	0x3fdaa381dc6ca222              # double 0.41622969175162627
	.quad	0x3fe7192da8df2f8b              # double 0.72182353003289401
	.quad	0x3fed56cbebd81348              # double 0.91684528411188015
	.quad	0x3fdf4e98617637dc              # double 0.48917207257988848
	.quad	0x3fc5a8d5a4a30a94              # double 0.16921492136869587
	.quad	0x3fe6b7afbbc52695              # double 0.70992266343928867
	.quad	0x3fe5c6d76be23856              # double 0.68052264281301222
	.quad	0x3fb6bbb1f84d5870              # double 0.088801501389157655
	.quad	0x3febb0bb6e893c09              # double 0.86532374943806289
	.quad	0x3fe38a2b251913a9              # double 0.61061627622313097
	.quad	0x3fe8626af3342dfe              # double 0.76201388836619777
	.quad	0x3fed01e715bf4cbb              # double 0.90648226020348177
	.quad	0x3fe2daa5f9a48414              # double 0.58919047125175661
	.quad	0x3fe467c4bfd18ee6              # double 0.63766705956046787
	.quad	0x3fc4f1b1d6ded418              # double 0.16362593642921364
	.quad	0x3fe802730d9b0096              # double 0.75029900224037038
	.quad	0x3fe5e3f359a97a45              # double 0.68407599937547359
	.quad	0x3fd79e56761d0282              # double 0.36903916868690356
	.quad	0x3fda47781c115ec4              # double 0.41061213246346662
	.quad	0x3fd1a10339c6c426              # double 0.2754524292204813
	.quad	0x3fe7568a8dd5de46              # double 0.72931411459189444
	.quad	0x3fdcc509e1beb6fc              # double 0.44952628178985754
	.quad	0x3fc0bdcf67e717cc              # double 0.13079254697203024
	.quad	0x3fefcf90ae8b699b              # double 0.99408754435289681
	.quad	0x3fdbb55944091a26              # double 0.43294364589783851
	.quad	0x3fe3f6f44cc478ba              # double 0.62389578813215185
	.quad	0x3fec913f0bde416b              # double 0.89273025815968532
	.quad	0x3fecc02cea4636da              # double 0.89845891720480187
	.quad	0x3fd570c80b66c01c              # double 0.33500863183417251
	.quad	0x3fc457ae7e101bdc              # double 0.15892583041588082
	.quad	0x3f6390d5c892f200              # double 0.002388398691065996
	.quad	0x3fda52d981b10bdc              # double 0.41130674042886795
	.quad	0x3febdab551e1f82e              # double 0.87044778816903601
	.quad	0x3fc0d9d84a5ef1d0              # double 0.13164809829130641
	.quad	0x3fe46a47275f47f8              # double 0.63797338189965469
	.quad	0x3fcc55df435251a4              # double 0.2213706091612383
	.quad	0x3fe882102dda887e              # double 0.76587685542860107
	.quad	0x3fcd032f7ff65db0              # double 0.22665971515810446
	.quad	0x3fecccca68a328ec              # double 0.89999885975819671
	.quad	0x3fc4afa1dc39ba1c              # double 0.16160987141798067
	.quad	0x3fc8edd7ff562538              # double 0.19475841491320423
	.quad	0x3fe17889a81290e8              # double 0.54596407725014462
	.quad	0x3fc979c920bd2fec              # double 0.1990291032656154
	.quad	0x3fddb8c41f83368e              # double 0.46440222813985421
	.quad	0x3fd48f42ca29c954              # double 0.32124395124914895
	.quad	0x3fb160e99f2074d8              # double 0.06788501868182395
	.quad	0x3fea2dc6cb1b4c49              # double 0.81808795613540852
	.quad	0x3fcd8e0b34cdb730              # double 0.23089733198451645
	.quad	0x3fe6cc18f1f8125c              # double 0.71241423854423713
	.quad	0x3fd801b2974f0cf4              # double 0.37510361458062325
	.quad	0x3fecc55485a175bb              # double 0.89908815479036919
	.quad	0x3fe7a307025ec263              # double 0.73865080321236254
	.quad	0x3fb9617199305550              # double 0.099143123530969434
	.quad	0x3fe1f7179d14e171              # double 0.56141262702935368
	.quad	0x3fe1584cd80c2e8a              # double 0.54202882954400988
	.quad	0x3fd1c4b5313e9714              # double 0.27763109025032517
	.quad	0x3fee2e3ddd26eba0              # double 0.94314473336941162
	.quad	0x3fea0549909a29e3              # double 0.81314543001763828
	.quad	0x3fe5f6958458d39a              # double 0.68635059212703031
	.quad	0x3fdff1aafe7dbe54              # double 0.49912524082808329
	.quad	0x3fe3e9451ce15994              # double 0.62222533837011662
	.quad	0x3fe03a39aa031685              # double 0.50710757451516086
	.quad	0x3fee033e6cb7c46e              # double 0.93789597734406782
	.quad	0x3fb56674d03315c8              # double 0.083594609098404438
	.quad	0x3fe3764f6ec271a7              # double 0.60819217331623043
	.quad	0x3fec868d62f1bf65              # double 0.89142484021247681
	.quad	0x3fde3baabbc8697e              # double 0.47239178026361361
	.quad	0x3fe0b7b187924212              # double 0.52242351988576474
	.quad	0x3fe0c5d3c0bbe920              # double 0.5241488231979794
	.quad	0x3fcbe0ad5665a6a0              # double 0.21779410093886487
	.quad	0x3fc92823266572b4              # double 0.19653739332979614
	.quad	0x3fd6ac666255d07a              # double 0.3542724571518715
	.quad	0x3fa2759c598d14e0              # double 0.036053548747568831
	.quad	0x3fcea8729c64c994              # double 0.23951561581050085
	.quad	0x3fe03738299a93e3              # double 0.50674064756151116
	.quad	0x3fb877518061bd98              # double 0.095570653765881253
	.quad	0x3fee788e76616153              # double 0.95221636887712646
	.quad	0x3fed8180344b4b82              # double 0.92205820287414064
	.quad	0x3fd0c346aaea8f7c              # double 0.26191870394745087
	.quad	0x3f8b4926dcbeb1c0              # double 0.013323119746780132
	.quad	0x3fe106e6aa11b3b0              # double 0.53209241119986039
	.quad	0x3fe6c9a47d664b13              # double 0.71211456768137038
	.quad	0x3fe0751dc760525c              # double 0.51429642620730531
	.quad	0x3fecb2077dabbbca              # double 0.89673208756527711
	.quad	0x3fb9fac1862dc9a0              # double 0.10148248220301648
	.quad	0x3fe69a9cec13f827              # double 0.70637365445123101
	.quad	0x3fd48c7f94b0a44a              # double 0.3210753395129059
	.quad	0x3fea066f4e7ec2d3              # double 0.81328549700819008
	.quad	0x3fe7fc99309e227e              # double 0.74958476539275387
	.quad	0x3fc418bb498a64b4              # double 0.15700474825715605
	.quad	0x3fd101e70ababd98              # double 0.26574111984060655
	.quad	0x3fe23657e096f480              # double 0.56913370003861985
	.quad	0x3fe168472aa63e7f              # double 0.5439792473789139
	.quad	0x3fe17f134cfdf051              # double 0.54676213300218468
	.quad	0x3fe4466eb78bf028              # double 0.63359771584464841
	.quad	0x3fdd1394da928d82              # double 0.45432015747993415
	.quad	0x3fedc5e4a2257f8f              # double 0.93040687245592035
	.quad	0x3fe9f0ecca89f60b              # double 0.81065978582745524
	.quad	0x3fec831b38b8216d              # double 0.89100419118862606
	.quad	0x3fef6ae0fa191586              # double 0.98179673049223548
	.quad	0x3fc210afb1e3a1e0              # double 0.14113422571178003
	.quad	0x3fe27bbfe3ec0a53              # double 0.5776061488725851
	.quad	0x3feeeb171bb0d66c              # double 0.96619754227022047
	.quad	0x3fe500791d50fb4d              # double 0.65630775190207091
	.quad	0x3fd1ce1eac77576e              # double 0.27820555536651781
	.quad	0x3fc82554b23e4a98              # double 0.18863924697196377
	.quad	0x3fde8b327aa68942              # double 0.47724592187491421
	.quad	0x3fe26a8a863e6922              # double 0.57550550670137945
	.quad	0x3fea8b703d936a7d              # double 0.8295212938931652
	.quad	0x3fed50cc24788334              # double 0.91611296771234274
	.quad	0x3fd3cf0f45206ef4              # double 0.30951291800168623
	.quad	0x3fedaa6cb70cf969              # double 0.9270537924965484
	.quad	0x3fe5edc8fc150265              # double 0.6852765010335814
	.quad	0x3fefd7fae5686ab3              # double 0.99511475378252212
	.quad	0x3fbd8d648d7064b0              # double 0.11543873265363191
	.quad	0x3fc7edb5343e02c4              # double 0.18694176722421763
	.quad	0x3fc6ad14534034a8              # double 0.17715696396809233
	.quad	0x3fc674c9f0dceee4              # double 0.17543911229028375
	.quad	0x3fe7186952a444d1              # double 0.72172990933372649
	.quad	0x3fda5832b412cff8              # double 0.41163318238545754
	.quad	0x3fecb3f3e2dfcf39              # double 0.89696687995317526
	.quad	0x3fd67e15d55db6f0              # double 0.35144563519030125
	.quad	0x3fe77f60644b94c6              # double 0.73429889286912764
	.quad	0x3fec32403ba35413              # double 0.88113414428755943
	.quad	0x3fe7fb3ffcf78242              # double 0.74942016036590808
	.quad	0x3fef8d8e76717842              # double 0.9860298455566936
	.quad	0x3facba9817fe2160              # double 0.056111100128932945
	.quad	0x3fe820eb08e99cbd              # double 0.75401832333309182
	.quad	0x3fb2cd7cbf6703b0              # double 0.073447987298108641
	.quad	0x3fd8e12b69ff8d9a              # double 0.38874326087371858
	.quad	0x3fc806ac2d2d7d60              # double 0.18770363050405603
	.quad	0x3fe496daa4f097cc              # double 0.64341480459983691
	.quad	0x3fd568521cc71b76              # double 0.33449223337486644
	.quad	0x3fe929d778622295              # double 0.78635762703295831
	.quad	0x3fe882278235fd32              # double 0.76588797981086132
	.quad	0x3fc0a772a323a2dc              # double 0.13011010137349543
	.quad	0x3fe643ba1d3bcccf              # double 0.69576745710073762
	.quad	0x3fe6f6881510f43b              # double 0.71759418596742053
	.quad	0x3fc822b1ca863e60              # double 0.18855879200826831
	.quad	0x3feac704f7be74b3              # double 0.83679436099523341
	.quad	0x3fea956fe74deada              # double 0.83074183632501364
	.quad	0x3fd604f706a40cbc              # double 0.34405303619878302
	.quad	0x3fd1566a8aa253aa              # double 0.27089942491994157
	.quad	0x3fe7da2090588125              # double 0.74537685577891877
	.quad	0x3fdb93bee5ab411e              # double 0.43089268139466863
	.quad	0x3fe6911be2b1d2f6              # double 0.70521349216741558
	.quad	0x3fc506d2a45555fc              # double 0.16427071594323184
	.quad	0x3fdf193db4b410e8              # double 0.48591559073271506
	.quad	0x3fabe569d0428040              # double 0.054484659836135041
	.quad	0x3fed8bb2f68b9f62              # double 0.92330310967825491
	.quad	0x3fda3345529a41cc              # double 0.40937932078034289
	.quad	0x3f811a86b6679980              # double 0.0083513760009281679
	.quad	0x3fd5ce31cb8dee1e              # double 0.34071011427269748
	.quad	0x3fde80d642257afe              # double 0.4766135831795707
	.quad	0x3fa709a6138fd5f0              # double 0.044995489013597623
	.quad	0x3f9b996cf0acf660              # double 0.026952459516215277
	.quad	0x3fef908016fd85e7              # double 0.98638920297906629
	.quad	0x3fd98ec5e304b0c0              # double 0.39933917207487113
	.quad	0x3fe6e375f9d33ad9              # double 0.71526621622055153
	.quad	0x3fe7be340cd3be31              # double 0.74196817879960097
	.quad	0x3feeda56c10e23e8              # double 0.96415269571400319
	.quad	0x3fe5cd8cb5d039f9              # double 0.68134150991846731
	.quad	0x3f83ae98b9edd380              # double 0.0096103603116064473
	.quad	0x3fe475ca6a3a75ab              # double 0.63937874553419272
	.quad	0x3fed6c8c67729738              # double 0.91950054363835587
	.quad	0x3fed873fcc42bd58              # double 0.92275991339367192
	.quad	0x3fe29ccce68c1f86              # double 0.58164067295818778
	.quad	0x3fe45a7c7c7ad64d              # double 0.63604568779437332
	.quad	0x3fc11a9fb4de9730              # double 0.13362499553221019
	.quad	0x3fce83056f6e02c8              # double 0.23837345066933424
	.quad	0x3fddb93c4b49c76a              # double 0.46443087913859549
	.quad	0x3fefbbc5755a412f              # double 0.99167130394383729
	.quad	0x3fdce934964f6df6              # double 0.45173372915971244
	.quad	0x3fec173b6656f70a              # double 0.87783594120239283
	.quad	0x3feca78512468b3a              # double 0.89544919557042779
	.quad	0x3fd73ffda6534956              # double 0.36328068964680449
	.quad	0x3fd5cd380f055224              # double 0.34065057246087549
	.quad	0x3fe8d77e80b393d8              # double 0.77630543839461108
	.quad	0x3fe6bf047f8c468f              # double 0.71081757461270623
	.quad	0x3fd7e498d44f92a8              # double 0.37332745297889369
	.quad	0x3fe1f13a9a4138ec              # double 0.56069688918958382
	.quad	0x3fe655cc2c4eab6b              # double 0.69797333387155669
	.quad	0x3fc0a6d9aff70284              # double 0.13009186832461606
	.quad	0x3fe81bb22f4088b6              # double 0.75338086346552902
	.quad	0x3febc30e3dd0d8be              # double 0.86756050179862831
	.quad	0x3fed151c90d6d371              # double 0.90882709778689563
	.quad	0x3fcd6c258d4b112c              # double 0.22986287497600111
	.quad	0x3fead366f3e60d46              # double 0.83830592762425549
	.quad	0x3fe5d413403df4d9              # double 0.68213808581608781
	.quad	0x3fee00c18b2032a7              # double 0.93759228871347922
	.quad	0x3fef7798ff8111f6              # double 0.98334932234916894
	.quad	0x3fcc4ebac25c9338              # double 0.22115263452828926
	.quad	0x3fb292c2b20731a8              # double 0.072551887954608874
	.quad	0x3fa4d1eea84afb40              # double 0.040664156001631202
	.quad	0x3fcae4801f411628              # double 0.21009828115545415
	.quad	0x3fd49fd43741cec6              # double 0.32225518604466818
	.quad	0x3f4b5ef9f2517000              # double 8.3529667302739696E-4
	.quad	0x3fb546ba95085a20              # double 0.083110486397665273
	.quad	0x3fd982754a8b1acc              # double 0.39858753471018527
	.quad	0x3fedddd8e50cb938              # double 0.93333096252698677
	.quad	0x3fe976ad26dd4721              # double 0.79573686209389305
	.quad	0x3fc49dcc92457c6c              # double 0.16106564657363565
	.quad	0x3fed11b7d8f23a0e              # double 0.90841286060623516
	.quad	0x3fd62ccb05fc9562              # double 0.34648395142206401
	.quad	0x3fe6b3356680db1f              # double 0.70937604923424036
	.quad	0x3fc2f7693bb874d4              # double 0.14817538658181795
	.quad	0x3febeb842b569827              # double 0.87249954666618101
	.quad	0x3fec4018512c0d19              # double 0.88282409528656836
	.quad	0x3fe9c1d1de857ecb              # double 0.80490964375709362
	.quad	0x3fb347ba3e5b8740              # double 0.075313225006110152
	.quad	0x3fddfc92de7c19c6              # double 0.46854087569263603
	.quad	0x3fee6442d055d976              # double 0.94973889055726946
	.quad	0x3faf46f6522f9840              # double 0.061088273556194839
	.quad	0x3fcb67994b982a68              # double 0.21409908476956052
	.quad	0x3fe9061c60d27a82              # double 0.78199595366079699
	.quad	0x3fec5c2d5ee6eb52              # double 0.88625210319092163
	.quad	0x3fd7bbb5f78d49b0              # double 0.37083195853224549
	.quad	0x3febb2b7436f54a1              # double 0.86556590243221276
	.quad	0x3fe5b92dedbf3da1              # double 0.67885490832297901
	.quad	0x3fe6876f215d8744              # double 0.70403248325985901
	.quad	0x3fd7dd6a315734e4              # double 0.3728890878526967
	.quad	0x3fc6341f87794fac              # double 0.17346567263541368
	.quad	0x3fea8ceca28f5a26              # double 0.82970268011087422
	.quad	0x3fe7e14795914134              # double 0.7462499543417267
	.quad	0x3fe4a1b1530f263c              # double 0.64473787519927539
	.quad	0x3fe70a95fa0e4b4c              # double 0.72004221762686305
	.quad	0x3fe8edc40f31a7ac              # double 0.77902415244647249
	.quad	0x3fdf31c8922476ea              # double 0.48741354247782331
	.quad	0x3fce5f82af45d8f8              # double 0.2372897487472938
	.quad	0x3fab8cd97d404ac0              # double 0.053808971919484971
	.quad	0x3fbdb83d1e3480a8              # double 0.11609251010350141
	.quad	0x3fc50485a9c1d504              # double 0.16420050419734633
	.quad	0x3fe75bdf67c8e16c              # double 0.72996492643782807
	.quad	0x3fbfa78d06752208              # double 0.12365037353186648
	.quad	0x3fe916b8b7acf30c              # double 0.7840236270345442
	.quad	0x3fd884f47f8e7c60              # double 0.38311493355462822
	.quad	0x3fe8cc45a0f8bf78              # double 0.77493554534701925
	.quad	0x3fe8c143540cbc44              # double 0.77359167495695446
	.quad	0x3fd496040820f73e              # double 0.32165623468232585
	.quad	0x3fe079f33adf87a7              # double 0.51488648890175603
	.quad	0x3fe9d60a1754735c              # double 0.80737785870187961
	.quad	0x3fd675a4290361a6              # double 0.35093025212474982
	.quad	0x3fed70a96a34f349              # double 0.92000265830538652
	.quad	0x3fe99c20e2c521e1              # double 0.80030864993119277
	.quad	0x3fdd1241b050ff02              # double 0.45423929422757692
	.quad	0x3fea1a7492741abb              # double 0.81572941402631416
	.quad	0x3fc9e4753b21b85c              # double 0.20228448283473
	.quad	0x3fe5400b52d55217              # double 0.66406789949775458
	.quad	0x3fee02aa55b4f104              # double 0.93782536258325466
	.quad	0x3fd18734c20a442e              # double 0.27387732457379144
	.quad	0x3fe7c6af29a9c5e7              # double 0.74300344598139823
	.quad	0x3fe009dfb66bdeab              # double 0.50120530728505253
	.quad	0x3f9c20d645665900              # double 0.027469013200595249
	.quad	0x3fdd416290ba2524              # double 0.45711578496464456
	.quad	0x3fe11563dc0cfc34              # double 0.53386109331757448
	.quad	0x3fe223c11e7ae0b9              # double 0.56686454728244151
	.quad	0x3fc8a0fc743a5130              # double 0.19241290736375438
	.quad	0x3fe8857c41795bcf              # double 0.76629460132505212
	.quad	0x3fe970b1495f288e              # double 0.79500641184246645
	.quad	0x3fdb4419edf75ae8              # double 0.42603157271280034
	.quad	0x3fe671a0ba8f9547              # double 0.70137058675451491
	.quad	0x3fe6728136692377              # double 0.70147762896622978
	.quad	0x3fefd230afe05836              # double 0.99440798140381648
	.quad	0x3fec14778b83342a              # double 0.87749840973413495
	.quad	0x3fcf75f0d29c9d9c              # double 0.24578676494386975
	.quad	0x3fdeb05c9c0de11e              # double 0.47951426734609182
	.quad	0x3f9d7b8693a9ee20              # double 0.028791525614435654
	.quad	0x3fdcd591b1a339dc              # double 0.45053522441312821
	.quad	0x3fdb4601800db340              # double 0.42614781861520967
	.quad	0x3fdf0fdd75eda2dc              # double 0.48534332767898802
	.quad	0x3feb57c8da6e2091              # double 0.85446589147706409
	.quad	0x3fbffdf88185d540              # double 0.12496903574159024
	.quad	0x3fd3426ad6894b4c              # double 0.30092879248438886
	.quad	0x3febc09b7713fdcc              # double 0.86726163155975077
	.quad	0x3fb71fdc7efeca08              # double 0.0903299150511786
	.quad	0x3fb3820090b14808              # double 0.076202426266974155
	.quad	0x3fa5a309e6d9d860              # double 0.042259511404083794
	.quad	0x3fb25dcd5f252658              # double 0.071743808487690131
	.quad	0x3fec3da4d86eafd5              # double 0.88252489349315033
	.quad	0x3fae34e5b423a590              # double 0.058997324218419966
	.quad	0x3fbb5a8b2f1daee8              # double 0.10685033703128577
	.quad	0x3fe2ddeddb3aaed5              # double 0.58959095781525639
	.quad	0x3fe35198f0903ab3              # double 0.60371062264478892
	.quad	0x3fe7124fb1d726dc              # double 0.7209852670141248
	.quad	0x3fc79371b81ed084              # double 0.18418714037182238
	.quad	0x3feb74560d1e9002              # double 0.85795118868236409
	.quad	0x3fc209a3664173c4              # double 0.14091913693382996
	.quad	0x3febdff33705cde0              # double 0.87108765360465767
	.quad	0x3fe806d9425ff7fe              # double 0.75083601917117426
	.quad	0x3fccecba1ef5d3f4              # double 0.22597433578235349
	.quad	0x3fd828ace4118e18              # double 0.37748262665101739
	.quad	0x3febd8e6d5d9e9eb              # double 0.87022725837533466
	.quad	0x3fb1eefcec5612a0              # double 0.070052917193673014
	.quad	0x3fd1a4c6add76ae8              # double 0.27568213440615219
	.quad	0x3fe0ca4e498e1432              # double 0.5246955334301957
	.quad	0x3fb5255ab55daf18              # double 0.082601231840893852
	.quad	0x3fbb2e0f1fbbc800              # double 0.10617155575508264
	.quad	0x3fe8b9ef4ccf48e7              # double 0.77269711496253712
	.quad	0x3fe3244bc3a20aae              # double 0.598180658431678
	.quad	0x3fbab55787abd4f0              # double 0.10432955801282495
	.quad	0x3fe0db11534c89d1              # double 0.5267416598256266
	.quad	0x3fcafbae7f545bd4              # double 0.21080571381818791
	.quad	0x3fe614125d6844cd              # double 0.68995016330350156
	.quad	0x3fdd73cc7418f88e              # double 0.46019278848314904
	.quad	0x3fedcab88757fb33              # double 0.93099619325935234
	.quad	0x3fdd34dc2194b64c              # double 0.45635131148705876
	.quad	0x3fec9003b805b188              # double 0.8925798982796076
	.quad	0x3fe28e9a6992ba8a              # double 0.57990761394269552
	.quad	0x3fee6e24213749c8              # double 0.95094496238225989
	.quad	0x3fb1655a1908a668              # double 0.067952757941975528
	.quad	0x3fef2dcc9be49ef6              # double 0.97434072921620785
	.quad	0x3fe0c16a7740c9cb              # double 0.52361033717743888
	.quad	0x3fed57209b763858              # double 0.91688566554672501
	.quad	0x3fee47bb2968488d              # double 0.94625623786329671
	.quad	0x3fc22a7b32cc2638              # double 0.14192142467827451
	.quad	0x3fe88a6b66bbcba8              # double 0.76689691605712529
	.quad	0x3fc744d3efd9654c              # double 0.18178796016108334
	.quad	0x3fe6e2845c0e34ae              # double 0.7151510045965972
	.quad	0x3fd6535e109ec722              # double 0.34883834479397724
	.quad	0x3fcb0fbd7aab1ef4              # double 0.21141785134954427
	.quad	0x3fef142ff06ff2fd              # double 0.97121426544580879
	.quad	0x3feb4ee8636859a5              # double 0.85338229575682034
	.quad	0x3fd28d46fa515ea6              # double 0.28987287945845208
	.quad	0x3fe7bd1ad16054a2              # double 0.74183407682234681
	.quad	0x3fe5d8c55df386bc              # double 0.68271129941805198
	.quad	0x3fdaf7e81ab15bc2              # double 0.42138102156371471
	.quad	0x3fece6ff4d45f718              # double 0.90319790928308219
	.quad	0x3fe29597ed2242ba              # double 0.58076092066956808
	.quad	0x3fe50f53711f3bd6              # double 0.65812084287778805
	.quad	0x3fd516b7fe6e0eba              # double 0.32951164099379648
	.quad	0x3fe2f381794b2388              # double 0.59222482385767794
	.quad	0x3fe13fecafcfe1d0              # double 0.53905329073227826
	.quad	0x3fd6fdaedb45393e              # double 0.35923358357549151
	.quad	0x3fd0d8a3718ef560              # double 0.26322256173792447
	.quad	0x3fe9a21304b25e2e              # double 0.80103445927938366
	.quad	0x3fed64fdcdf1cbf6              # double 0.91857805465258369
	.quad	0x3fe536e632ff592c              # double 0.66295156441154779
	.quad	0x3fedef6c5eb4d4d2              # double 0.93547647950495105
	.quad	0x3fe822be05fec7d3              # double 0.75424100085205692
	.quad	0x3fdb37f2370c89b8              # double 0.42528968215824703
	.quad	0x3fef047dc363ad07              # double 0.96929824983581702
	.quad	0x3fcd44daaedf5760              # double 0.22866376436894154
	.quad	0x3fdff941520b990c              # double 0.49958832752453541
	.quad	0x3fe6a93010fde90c              # double 0.708152802645857
	.quad	0x3fe50deeaeb92b38              # double 0.65795072675368882
	.quad	0x3fd8ef4e1026150a              # double 0.38960601403262329
	.quad	0x3fd7820f4b278d96              # double 0.36731321658427285
	.quad	0x3fe6f7215859790e              # double 0.71766726737749464
	.quad	0x3fed8de6788613d4              # double 0.92357181110184649
	.quad	0x3fd61e18470d180a              # double 0.34558684290493658
	.quad	0x3fea92529e4b500a              # double 0.8303616611178779
	.quad	0x3fdff01da7330c42              # double 0.49903050735537502
	.quad	0x3fc608e77bf5bedc              # double 0.17214673569423311
	.quad	0x3fe42c6d20790ece              # double 0.63042312948570056
	.quad	0x3fd9325c5a4a023c              # double 0.39369877641005124
	.quad	0x3fda62432251738e              # double 0.41224745131858576
	.quad	0x3feb5a45593207c4              # double 0.85476939602835289
	.quad	0x3feba250d5db9758              # double 0.8635639359388092
	.quad	0x3fcba27b762a55cc              # double 0.21589606542390383
	.quad	0x3feeb544a0602590              # double 0.95962745021204121
	.quad	0x3fe380dce70ed8f3              # double 0.60948033455386363
	.quad	0x3fef2771352d52b8              # double 0.97356472383633896
	.quad	0x3fe6568110297db8              # double 0.69805958897261799
	.quad	0x3fe49df1fa1f82e5              # double 0.64428042270818919
	.quad	0x3fea2d457c649c04              # double 0.81802629752644451
	.quad	0x3fe98c9f902f90a7              # double 0.79841592942513706
	.quad	0x3fe17d2f6f90e222              # double 0.54653140821671209
	.quad	0x3fd62558bce4c954              # double 0.34602945753717518
	.quad	0x3fee498e07c68036              # double 0.94647885817176447
	.quad	0x3fdf4a1ceb1ac87a              # double 0.48889849624095627
	.quad	0x3fdd7088a4f5bbda              # double 0.45999351605763439
	.quad	0x3fdcfb613a6b00a6              # double 0.45284300522690513
	.quad	0x3fc01f2733e013c4              # double 0.1259507182404872
	.quad	0x3fdf0d8a1c734326              # double 0.4852013852915199
	.quad	0x3fd128895c3632ec              # double 0.26809915547418828
	.quad	0x3fc23c34c2e6c0b8              # double 0.14246234432858329
	.quad	0x3fd24816fbc31216              # double 0.28565001093036935
	.quad	0x3fe813062d010243              # double 0.75232228078682117
	.quad	0x3fe52c458c9f98c9              # double 0.66165425744545658
	.quad	0x3fc81260eb9dbf1c              # double 0.18806087021538864
	.quad	0x3fd130a07835f402              # double 0.26859294642764564
	.quad	0x3fefdc6a38a93c9d              # double 0.99565611902825745
	.quad	0x3feea41e2f22480a              # double 0.95753392415849814
	.quad	0x3fe4e345491330ea              # double 0.65274299881414533
	.quad	0x3fdfa40412011c36              # double 0.49438573606716163
	.quad	0x3fd5b34347ad21e2              # double 0.33906633376730444
	.quad	0x3fc664c7266d23bc              # double 0.17495049835477328
	.quad	0x3fbe1e9e48957770              # double 0.11765469810549489
	.quad	0x3fea0e151a05c793              # double 0.81421904642614817
	.quad	0x3fefd09f2e981448              # double 0.99421652889635314
	.quad	0x3fc2c853c88f0588              # double 0.14673850338844496
	.quad	0x3fee0713e631cb88              # double 0.93836398086419681
	.quad	0x3fe73cfe7c25fbb3              # double 0.72619556663254625
	.quad	0x3fcc6be6ad7c1eac              # double 0.22204287978114701
	.quad	0x3fdf20da984425ca              # double 0.48638024205919506
	.quad	0x3fcb35fd2adbdd50              # double 0.21258511154858661
	.quad	0x3feaeeb988b61ca1              # double 0.84164120389404584
	.quad	0x3fe7e212b20cf034              # double 0.74634680533882269
	.quad	0x3fe316ac185edba4              # double 0.5965176082598771
	.quad	0x3fb4d7e4d041da30              # double 0.081419277996112482
	.quad	0x3fe82f16e7e11bfd              # double 0.75574822701389588
	.quad	0x3fd00978ebd205fe              # double 0.25057814626060793
	.quad	0x3f8026085cf35900              # double 0.0078850415579094779
	.quad	0x3feb3aba551f87dd              # double 0.85091892839067962
	.quad	0x3fe2de9595b6dec9              # double 0.58967093697625572
	.quad	0x3fee041d492fcb66              # double 0.93800224584843472
	.quad	0x3fbdb7ba193dbef8              # double 0.11608470073928945
	.quad	0x3feaba34149fefc5              # double 0.83522991207382147
	.quad	0x3fed640ace4c7a64              # double 0.9184621838829341
	.quad	0x3fdb3c631087a4ca              # double 0.42556072820896118
	.quad	0x3fe3c5322c138e4e              # double 0.61782177551908446
	.quad	0x3fd21ed59e915ff6              # double 0.28313198552268604
	.quad	0x3fb060fcd2906620              # double 0.063979913146248624
	.quad	0x3fd31b73a4782554              # double 0.29855052052933684
	.quad	0x3fe5ca97f67a91be              # double 0.68098066463840445
	.quad	0x3fefe5068d8dfbad              # double 0.99670722625147833
	.quad	0x3fc7aed416098eec              # double 0.18502284122506951
	.quad	0x3fe4fa06a7acffc9              # double 0.6555207514684237
	.quad	0x3fe62bfd58a8518b              # double 0.69286982837597699
	.quad	0x3fd067650463ef28              # double 0.25631070545908807
	.quad	0x3fb373ed47eac8b8              # double 0.075987653787509823
	.quad	0x3fd5cfc687d0bfa4              # double 0.34080661071038265
	.quad	0x3fe1e8c1201ff062              # double 0.55966240190856476
	.quad	0x3fbab7ef131196e0              # double 0.10436910834831847
	.quad	0x3fd44889a272ea26              # double 0.31692734588765104
	.quad	0x3fd103b2e80a36b4              # double 0.26585076007982456
	.quad	0x3fee4a41e070f4de              # double 0.94656461559466343
	.quad	0x3fee3922d24826ca              # double 0.94447461195633164
	.quad	0x3fdaaf5b4f271bdc              # double 0.41695292215120872
	.quad	0x3fef0427a55f3b5f              # double 0.96925718592852294
	.quad	0x3fd46089269d03bc              # double 0.31839207430681049
	.quad	0x3fe61f542b5b8584              # double 0.69132431476843736
	.quad	0x3fe69c0bb8e3bcd6              # double 0.70654855834245711
	.quad	0x3fe0c62efce1c1f4              # double 0.52419232741345789
	.quad	0x3fc46b24f1500000              # double 0.15951978476368822
	.quad	0x3fe2ba211147c351              # double 0.58522084593833246
	.quad	0x3fe042e0b95fb308              # double 0.50816379743409446
	.quad	0x3fe7b96c7095746a              # double 0.74138471592926902
	.quad	0x3fe9c53eddb14703              # double 0.80532782840074935
	.quad	0x3fd40b9b44d64540              # double 0.31320840570795738
	.quad	0x3fe1f53610eb15bd              # double 0.56118300728183323
	.quad	0x3fd7da9f53612080              # double 0.37271865026969664
	.quad	0x3fdd88492aff7c3e              # double 0.46144322585127273
	.quad	0x3fdc5ff689a600ce              # double 0.44335711900931762
	.quad	0x3fe750b201cd62bd              # double 0.72860050537118293
	.quad	0x3fd72557df0b3418              # double 0.36165425092332404
	.quad	0x3fd6b8b11e0fa356              # double 0.35502269683506904
	.quad	0x3fdcb34014018248              # double 0.44844057038975338
	.quad	0x3fd7cc8ee1e1a366              # double 0.37186023768167897
	.quad	0x3fc3898c90fa3eb8              # double 0.15263516501408048
	.quad	0x3fdb152439c54d14              # double 0.42316537515326158
	.quad	0x3fcd7d6de7e8e5e0              # double 0.2303902990695823
	.quad	0x3fc8b9354543d020              # double 0.19315210229945112
	.quad	0x3fed43e308ba816c              # double 0.91453696923057981
	.quad	0x3feea068ee90b6ef              # double 0.95708128542693582
	.quad	0x3fb404a787dd16a8              # double 0.078196020765143204
	.quad	0x3fd7780b265fd8d4              # double 0.36670187709331725
	.quad	0x3fe272dffbc3d4c2              # double 0.57652281926007043
	.quad	0x3fd8d62898b0dfac              # double 0.38807120238515824
	.quad	0x3feae7959cc1b465              # double 0.84076958290610249
	.quad	0x3fd50fc5f6568670              # double 0.32908772522396301
	.quad	0x3fe191160b6a3053              # double 0.54896070699170207
	.quad	0x3fd0fb15e017ce7c              # double 0.26532503971177568
	.quad	0x3fd67b8a60568136              # double 0.35129031570433555
	.quad	0x3fa0995ea6aed730              # double 0.032420118186037405
	.quad	0x3fa3aa5ae022f570              # double 0.038409080372256876
	.quad	0x3fe0f22b8fd3a947              # double 0.52956178752109728
	.quad	0x3f8b041dde77d480              # double 0.013191445686042025
	.quad	0x3feaf6bdda8631a7              # double 0.84261982613093245
	.quad	0x3fde381e13dba194              # double 0.47217513980151549
	.quad	0x3fe02898fcc230fb              # double 0.50495576254755237
	.quad	0x3fe2cc4bcf4990ce              # double 0.58743849263967163
	.quad	0x3fe0646528612713              # double 0.51225526701566293
	.quad	0x3fe2924553a9d5cb              # double 0.5803553232241766
	.quad	0x3fe21bae74191f8a              # double 0.56587908435265999
	.quad	0x3faf2735ce1c1680              # double 0.060846024904134488
	.quad	0x3fe4d4049a451334              # double 0.65088110094857266
	.quad	0x3feb4c4154996f9f              # double 0.85305849574386972
	.quad	0x3fad98d15dfe9890              # double 0.057806532596530791
	.quad	0x3fd8cc0574a0aa5c              # double 0.38745247258581172
	.quad	0x3fe7c85d4d28d353              # double 0.74320855207643388
	.quad	0x3fe5e756e258a06c              # double 0.68448967178575293
	.quad	0x3fde100639bdad5e              # double 0.46972804678690305
	.quad	0x3fe5b31b503079de              # double 0.67811360990509306
	.quad	0x3fde13e233ce49ba              # double 0.46996359881554961
	.quad	0x3fbd2d5245700280              # double 0.11397279925587078
	.quad	0x3fd267645d6e2c06              # double 0.28756054996546287
	.quad	0x3fa3205b1c3bbf90              # double 0.037356230923136668
	.quad	0x3fcc9a348d83b080              # double 0.22345597181208987
	.quad	0x3fda29f76a8ffade              # double 0.408811430039277
	.quad	0x3fd4c7c618c13e0e              # double 0.32469322602716566
	.quad	0x3fe4669dd9a55579              # double 0.63752644070579756
	.quad	0x3fec9197110e4229              # double 0.8927722294921
	.quad	0x3fe3e56845b82849              # double 0.6217538224893896
	.quad	0x3fe416a763a6f7d3              # double 0.62776536429714225
	.quad	0x3fd31be8c9c5d860              # double 0.29857845024469576
	.quad	0x3fda184cc36c3578              # double 0.40773314556357532
	.quad	0x3fea1cb8d7b14e2c              # double 0.81600610854588273
	.quad	0x3fbe165f68314e38              # double 0.11752888005985873
	.quad	0x3fed597f0af86d29              # double 0.9171748365655833
	.quad	0x3fe12b3efd925227              # double 0.53652905965515607
	.quad	0x3fd8df5dcb581376              # double 0.38863320215050778
	.quad	0x3fcd7ebe6f56ade4              # double 0.2304304164548362
	.quad	0x3fcbc159740ea2cc              # double 0.21683805624822694
	.quad	0x3fd976f0841a446c              # double 0.39788449192662401
	.quad	0x3fbed08914905a60              # double 0.12036949874923542
	.quad	0x3fc6edeb861a7bcc              # double 0.17913574264545529
	.quad	0x3fd7c3b41fbe2cde              # double 0.37131980037584167
	.quad	0x3fe28fc2da8b0487              # double 0.58004896816432072
	.quad	0x3fd458b4c321d17a              # double 0.31791419082517047
	.quad	0x3fef58bc504ee710              # double 0.97958198247144601
	.quad	0x3fea18de625932fe              # double 0.81553572853735523
	.quad	0x3fe6a36bcda29dbf              # double 0.70744886553887187
	.quad	0x3fd44c2bf0b5c566              # double 0.31714914805259864
	.quad	0x3fe6daf1c668a253              # double 0.71422661544517962
	.quad	0x3feac8139846b44d              # double 0.83692340604251003
	.quad	0x3fd56a2b0f5e8f90              # double 0.33460499287525014
	.quad	0x3fe6bb667906850e              # double 0.71037601125513716
	.quad	0x3fe35a769d6c2a77              # double 0.60479288813196674
	.quad	0x3fd4922331260b18              # double 0.32141952323597556
	.quad	0x3fbecc0b1b3f2cb0              # double 0.12030095496372684
	.quad	0x3fc231972fffaa90              # double 0.14213838428198189
	.quad	0x3fb70454750f2d20              # double 0.089909819201399177
	.quad	0x3fef6e6d738773db              # double 0.98222992481498339
	.quad	0x3fbc6ded92ab88c0              # double 0.11105236845790767
	.quad	0x3fc57d2250004d4c              # double 0.16788128763492194
	.quad	0x3fe13b1f96c145b1              # double 0.53846721119241725
	.quad	0x3fc5ca9933140318              # double 0.17024531358767869
	.quad	0x3fc511ff2075a448              # double 0.16461171231211069
	.quad	0x3fee86379619efc2              # double 0.95388392750418682
	.quad	0x3fe593c1b75b4ddd              # double 0.67428670703742066
	.quad	0x3fbac615cb411740              # double 0.1045850392557357
	.quad	0x3fe222bafa2ee673              # double 0.5667395483389569
	.quad	0x3fa105e57082a870              # double 0.033248109802415438
	.quad	0x3fe32088b784dd8c              # double 0.59772144168430108
	.quad	0x3fddef4b62a03a5e              # double 0.46773037558970099
	.quad	0x3fe7daa89eba33cf              # double 0.74544173242031231
	.quad	0x3fd156973d6d7442              # double 0.2709100818518132
	.quad	0x3fdb54e80c5771fc              # double 0.42705727772934643
	.quad	0x3f98a5e4ae0eb4e0              # double 0.024070332645057202
	.quad	0x3fed41dfcae84a4f              # double 0.91429128294323359
	.quad	0x3fecb0862b6fc254              # double 0.89654835208609506
	.quad	0x3fe17cbc04b62cb3              # double 0.5464763729118175
	.quad	0x3fd404f305c328a0              # double 0.31280208170631774
	.quad	0x3fe7695d569fdd75              # double 0.73161189001886717
	.quad	0x3fd9a00797c53f82              # double 0.4003924352773468
	.quad	0x3fd4af359d8880b6              # double 0.32319393524268081
	.quad	0x3fb46a93f9c92f48              # double 0.079751251681213664
	.quad	0x3fe2c88f3a7919de              # double 0.58698235912816776
	.quad	0x3fe22818385e03ef              # double 0.56739436158397705
	.quad	0x3fe5770df6e1200b              # double 0.67078302591926453
	.quad	0x3fd1c1cc156d5370              # double 0.27745344250188619
	.quad	0x3fe5ed0c85327fa7              # double 0.68518663420762926
	.quad	0x3fa72905ca256750              # double 0.045234852720297369
	.quad	0x3fdf6a6da4c40076              # double 0.4908708676375747
	.quad	0x3fe6d9048b6b809e              # double 0.71399142485099154
	.quad	0x3fd9ffa73f002770              # double 0.4062288394203426
	.quad	0x3fe17ba3d9e9b3d9              # double 0.54634277878869419
	.quad	0x3fe954c589462184              # double 0.79159809886282106
	.quad	0x3faa82320b70d1f0              # double 0.051774562737055052
	.quad	0x3fda98571c9c9acc              # double 0.41554811281313841
	.quad	0x3fe8392fc7c35d7b              # double 0.75698079124678885
	.quad	0x3feab0cce957b88e              # double 0.83408208441484688
	.quad	0x3fd60fcb7766edfe              # double 0.34471403751714991
	.quad	0x3fe8cba1af9c419e              # double 0.77485737131978616
	.quad	0x3fdfb5e1d92cee0e              # double 0.49547620972200057
	.quad	0x3fede21b43169367              # double 0.93385089018975698
	.quad	0x3fd81072579d748c              # double 0.37600382381590047
	.quad	0x3fcceda097e6ae50              # double 0.22600181023641364
	.quad	0x3fe224fa086afcf0              # double 0.5670137562191524
	.quad	0x3fe968b90e72dc2d              # double 0.79403355428701661
	.quad	0x3fddda62657a74e8              # double 0.46645412359232674
	.quad	0x3fb13cf54ac6a7f0              # double 0.067336397891864186
	.quad	0x3fd86c344a1d1056              # double 0.38160426366471734
	.quad	0x3fee768d8b22de3f              # double 0.95197179007568156
	.quad	0x3fe45bd7f2b2b5bd              # double 0.63621137048692555
	.quad	0x3fe37253a03ce9b8              # double 0.60770589157555488
	.quad	0x3fce933554a43f78              # double 0.23886744149103456
	.quad	0x3fef7279e8df903f              # double 0.98272414668145546
	.quad	0x3fedd151a59e27ba              # double 0.93180162760949448
	.quad	0x3fd9bfdd63e480e4              # double 0.40233549838195715
	.quad	0x3fd1b47507639600              # double 0.27663922998030444
	.quad	0x3fe74dac65bb88bb              # double 0.7282316195453612
	.quad	0x3fd577023081ef52              # double 0.335388705607092
	.quad	0x3fa3e23fe7e03cb0              # double 0.038835522704283476
	.quad	0x3fc96dc526c2b934              # double 0.19866241829499531
	.quad	0x3fd920d511708f74              # double 0.39262892439932462
	.quad	0x3fda39b5918a32c8              # double 0.40977229321360342
	.quad	0x3fe3dedcee0da7e7              # double 0.62095495695870973
	.quad	0x3fc72e846143c8fc              # double 0.18110708951241594
	.quad	0x3fdc50134123b264              # double 0.44238740311883462
	.quad	0x3fe97692b45da205              # double 0.79572425105749345
	.quad	0x3fc76d4a13a130a8              # double 0.18302274664381923
	.quad	0x3fea296f1a35e76e              # double 0.81755786055803781
	.quad	0x3fedffde50463ff6              # double 0.93748393705936794
	.quad	0x3fcf55fcde450628              # double 0.24481163838395159
	.quad	0x3fe528032a5a124b              # double 0.66113432189792698
	.quad	0x3fcea5ef2bd239bc              # double 0.23943891181666099
	.quad	0x3fe25027d244c95b              # double 0.57228461330513924
	.quad	0x3f85555a4fef3c00              # double 0.010416703762443191
	.quad	0x3fe5210eba4dae8c              # double 0.66028534304992226
	.quad	0x3fe04e2d3520e2f4              # double 0.50954304100659309
	.quad	0x3fd3bf5a2998e158              # double 0.30855421125626981
	.quad	0x3fa0161fbf7d2ef0              # double 0.031418792843934784
	.quad	0x3febad1b689e88be              # double 0.86488123353435475
	.quad	0x3fee99ab8a8e0c12              # double 0.95625855504511237
	.quad	0x3fe703e4631161ca              # double 0.7192251143379107
	.quad	0x3fdd0c620b48bc44              # double 0.45388079740491016
	.quad	0x3fe1e04e4d204d1a              # double 0.55863108695703834
	.quad	0x3feca017233ec398              # double 0.89454228290388738
	.quad	0x3fed007048ba8c76              # double 0.90630354122948975
	.quad	0x3fd3ec04db028ae2              # double 0.31128045451820985
	.quad	0x3fea65118f1b64e8              # double 0.82483747435176458
	.quad	0x3fc7033d9bb98650              # double 0.17978639701600452
	.quad	0x3fe75e2f2da2c86f              # double 0.73024710572486906
	.quad	0x3fdfb2d3e9944e6e              # double 0.49528978167038573
	.quad	0x3febd102a6c841b2              # double 0.86926395964296987
	.quad	0x3fd534beb027d68e              # double 0.33134429171273261
	.quad	0x3fdecd52db500976              # double 0.48128196160555292
	.quad	0x3fc625e4700c7f6c              # double 0.17303138228544002
	.quad	0x3fd862fe62d51b58              # double 0.38104209567648217
	.quad	0x3feac733fa02c33d              # double 0.83681677656395659
	.quad	0x3fd877a12991cc72              # double 0.38230160769962318
	.quad	0x3fef4299dd3329a7              # double 0.97688000872704072
	.quad	0x3fecc608afcc2aa7              # double 0.89917406402067435
	.quad	0x3fd37a73f63a1326              # double 0.30434893651572492
	.quad	0x3fe35fd2eefa1cb4              # double 0.60544726062007337
	.quad	0x3fcb20d601f26bf0              # double 0.21193957419458753
	.quad	0x3fe9219b0eaa63b2              # double 0.78535225738879988
	.quad	0x3fc91e79eb518270              # double 0.19624256124645312
	.quad	0x3fcf3acfc60c6150              # double 0.24398228807764122
	.quad	0x3fe75c995807c9ec              # double 0.73005358880464888
	.quad	0x3fe7975784ed72e5              # double 0.73722434961709082
	.quad	0x3fd9594a69687854              # double 0.39607487005003361
	.quad	0x3fb9d65eaee07d40              # double 0.10092727441268767
	.quad	0x3fd2f08cd5e5f07e              # double 0.29593201530929736
	.quad	0x3fdcfd948dcc8290              # double 0.45297731254144313
	.quad	0x3fb0e5f0414c48b0              # double 0.066008583013430266
	.quad	0x3fc865db9d619f3c              # double 0.19060845551143213
	.quad	0x3fd0a552e9b1cf78              # double 0.26009056874976677
	.quad	0x3fe222656975ad4d              # double 0.56669874761193173
	.quad	0x3fbcc1e12a0ea5f0              # double 0.11233336712634645
	.quad	0x3fe6ae66d8412d0d              # double 0.70878927457070662
	.quad	0x3fc0d8f0b5125d4c              # double 0.13162049142258991
	.quad	0x3fc65aad0f21bd5c              # double 0.17464221228463372
	.quad	0x3fdab408d771088e              # double 0.41723843611919953
	.quad	0x3fe98fe804ee1065              # double 0.79881669009092759
	.quad	0x3febe6805bcda2bf              # double 0.87188737802815541
	.quad	0x3fb5f6a474737fa0              # double 0.085794714384518134
	.quad	0x3f9d916521954300              # double 0.028874950575587199
	.quad	0x3fe29e32b4c0d885              # double 0.58181128791217473
	.quad	0x3fe9b7f2c00bcd4b              # double 0.80370461949352412
	.quad	0x3feac67c6e53f421              # double 0.83672925518442665
	.quad	0x3fd0fe2568a4b222              # double 0.26551184863163446
	.quad	0x3fe87a13997cba75              # double 0.76490192392323186
	.quad	0x3fe337d747360bda              # double 0.60056651981755782
	.quad	0x3fe805412af695bf              # double 0.75064142600302108
	.quad	0x3fd41fadb4538ef4              # double 0.31443350419998173
	.quad	0x3fddb3394688af4c              # double 0.46406394851759525
	.quad	0x3fe6e13d3c46ba9e              # double 0.71499501965248036
	.quad	0x3fe5affd47496bf6              # double 0.67773307727054433
	.quad	0x3fe5712cdc37157c              # double 0.67006533633018206
	.quad	0x3fe1a60885ddf181              # double 0.55151773591892106
	.quad	0x3fe8758d40bd8812              # double 0.76434958119011953
	.quad	0x3fba8e12901e04b8              # double 0.10373035448539525
	.quad	0x3fcd3ddc95f57fd8              # double 0.22845036813941877
	.quad	0x3fd586ae24ed9626              # double 0.33634523016221107
	.quad	0x3fd0340798783dcc              # double 0.2531756390535207
	.quad	0x3fe4369ea5412fb5              # double 0.63166744495673888
	.quad	0x3fe2993207b291ec              # double 0.58120061400819401
	.quad	0x3fc8c0caf7dde138              # double 0.19338357069842416
	.quad	0x3fdadf11cd7cb560              # double 0.41986508433440939
	.quad	0x3fe1607129016237              # double 0.54302270897739546
	.quad	0x3fe6141ae2e1e9cd              # double 0.68995422661765249
	.quad	0x3fd291b45b450a50              # double 0.29014309800200966
	.quad	0x3fee45836c62505a              # double 0.9459855191112283
	.quad	0x3feef79a25de53c2              # double 0.96772487064537693
	.quad	0x3fd5d9730594d7ee              # double 0.34139705224094896
	.quad	0x3fb6cbb6caf50440              # double 0.08904592947966794
	.quad	0x3fc2906b53b8f300              # double 0.14503232563028945
	.quad	0x3fe182917772cfb2              # double 0.54718850450307444
	.quad	0x3fd91fd68ee2fe52              # double 0.39256824449328065
	.quad	0x3f994253e0bc7ca0              # double 0.024667082397283324
	.quad	0x3fd9bf2e55f200f0              # double 0.40229376214121171
	.quad	0x3fc9cbf08933d068              # double 0.20153624247871282
	.quad	0x3fef3685ffd2b31e              # double 0.97540569272459599
	.quad	0x3feb9904e44ca8a7              # double 0.862429090401993
	.quad	0x3fdf42f408466f7e              # double 0.48846150215262429
	.quad	0x3fe52e9425b76f75              # double 0.66193587652695263
	.quad	0x3fe053a3947ffa4b              # double 0.51020983699692957
	.quad	0x3fe1dc9ddcdfe62d              # double 0.55818074359485126
	.quad	0x3fe427ad7cb391db              # double 0.62984346729040952
	.quad	0x3fee569a62beab0f              # double 0.94807166372388163
	.quad	0x3fe2c8839b293443              # double 0.58697681717752237
	.quad	0x3fe717f82771cd18              # double 0.72167594627390752
	.quad	0x3fd99eeca6248fba              # double 0.40032497620472507
	.quad	0x3fda2c4135fca592              # double 0.40895109436186161
	.quad	0x3fe66c8e66748dd0              # double 0.7007514954643117
	.quad	0x3fe72ebac21d0e7b              # double 0.72445428765099906
	.quad	0x3fed0cd6e11be00d              # double 0.90781730619983281
	.quad	0x3fe0cdff4b6ff620              # double 0.52514614805085458
	.quad	0x3fec960da39b9d9e              # double 0.89331705050146915
	.quad	0x3fd8eb02762576f2              # double 0.38934384858826754
	.quad	0x3fe67cb4c99bac5b              # double 0.70272292496282363
	.quad	0x3fdfd5c85c27e774              # double 0.4974232578239175
	.quad	0x3fecee3c6c63361e              # double 0.90408154649202621
	.quad	0x3fc052eebb9b3ec8              # double 0.12753090057821326
	.quad	0x3fd2f3497a0cc488              # double 0.29609906119282714
	.quad	0x3fda724dccd69a6a              # double 0.41322655681361786
	.quad	0x3fd4bf4a3d613d30              # double 0.32417541498303404
	.quad	0x3fba95ff38758da0              # double 0.1038512719001603
	.quad	0x3fdf97da8fa6174a              # double 0.49364341762735775
	.quad	0x3fe7af5795329035              # double 0.7401540674222874
	.quad	0x3fce987aff4d9b38              # double 0.23902833429311854
	.quad	0x3fe0a8dfa00055fd              # double 0.52061444521194711
	.quad	0x3fe6b02b1438aa24              # double 0.70900491666299503
	.quad	0x3feafe6a5d5ea248              # double 0.84355657802832074
	.quad	0x3fe187ac42c9059b              # double 0.54781163257591758
	.quad	0x3fd224d2c877d964              # double 0.28349752022713504
	.quad	0x3fda3972dbe917c8              # double 0.40975638843189843
	.quad	0x3fdf815e9fc1a8e2              # double 0.49227109528750479
	.quad	0x3fe4d02b28414e4c              # double 0.65041120397877128
	.quad	0x3fa3677c23fe4f50              # double 0.037898902314877803
	.quad	0x3fd1603b387d5134              # double 0.27149849430613249
	.quad	0x3fecc47481896d0c              # double 0.8989813356414813
	.quad	0x3fa3c0f7e4cdbe80              # double 0.03858160655988474
	.quad	0x3fec4159cd8fb400              # double 0.88297739170741352
	.quad	0x3fca572b14f0be94              # double 0.20578516504746303
	.quad	0x3fd9c861a5202310              # double 0.40285531163731125
	.quad	0x3fe0baa4b942bbd3              # double 0.52278362449384941
	.quad	0x3fd3a6a9f3d3c976              # double 0.30704735575923026
	.quad	0x3fef05dba3c264a0              # double 0.96946508392570152
	.quad	0x3fcb3e0c2c1e4f44              # double 0.21283104089945415
	.quad	0x3fd52a368ef04912              # double 0.33070148428773039
	.quad	0x3fbc90db9e5481d0              # double 0.11158535590630625
	.quad	0x3fe513d9af81a567              # double 0.65867313650703074
	.quad	0x3fe09a10b28059a0              # double 0.51880679000423768
	.quad	0x3fc5b5edbf2ed3d0              # double 0.16961452326873294
	.quad	0x3fecc70613c989a2              # double 0.89929489006708629
	.quad	0x3fe6d58866f15a47              # double 0.71356601816189247
	.quad	0x3fe3e274334a5aa4              # double 0.6213932992712512
	.quad	0x3feee5993ddd87cf              # double 0.96552717288090572
	.quad	0x3fe8f2ef794fafd4              # double 0.77965520566567159
	.quad	0x3fe94917532a895f              # double 0.7901722549761806
	.quad	0x3fd584b304db542c              # double 0.33622432207386299
	.quad	0x3fd2513134b9e714              # double 0.28620557927170975
	.quad	0x3fc2af8ebc9a7cc0              # double 0.145982591716324
	.quad	0x3fe7ea92e91e49f8              # double 0.74738450556679847
	.quad	0x3fe43e192d3b6622              # double 0.63258036455517108
	.quad	0x3fd1d8725d74fed2              # double 0.27883586050664377
	.quad	0x3fe6145dbbfaf98e              # double 0.68998610224643797
	.quad	0x3fefd0f8d764fc73              # double 0.99425928181871225
	.quad	0x3fe8db9946cf4d0d              # double 0.77680648641617867
	.quad	0x3fe4af94710c47ac              # double 0.64643308715516445
	.quad	0x3fe37d6ee1557360              # double 0.60906166086679647
	.quad	0x3fef5cf8f92ab02d              # double 0.98009918847447397
	.quad	0x3fd0ae9ae485a2e6              # double 0.26065704647639476
	.quad	0x3fc7df9be19400a0              # double 0.18651150240475989
	.quad	0x3fe7c2a3ec6f62b6              # double 0.74250980547647916
	.quad	0x3fedd736a067ca9c              # double 0.93252116517244898
	.quad	0x3fe875687bb37dba              # double 0.76433204803827626
	.quad	0x3febd2331a367e79              # double 0.86940913314533852
	.quad	0x3fec3202c8def10a              # double 0.88110484345045958
	.quad	0x3feb5319a87e96c6              # double 0.85389407071189605
	.quad	0x3fded97d64acf7a8              # double 0.48202452499014692
	.quad	0x3fc4ac44db27d6a8              # double 0.16150723172147718
	.quad	0x3fd62abaf55be85c              # double 0.34635805092660177
	.quad	0x3fe6ecdbb5300fee              # double 0.71641335857611721
	.quad	0x3fe272dbfa9f4ed1              # double 0.57652090978305115
	.quad	0x3fe90b301feb154d              # double 0.78261572107354882
	.quad	0x3fc708d9064596e0              # double 0.17995751196138254
	.quad	0x3fb1d5faa0e64d38              # double 0.06967131069386745
	.quad	0x3fedcd728e8ebc37              # double 0.93132903903268172
	.quad	0x3f76b5b8b894f800              # double 0.0055443969407047433
	.quad	0x3fe9d3d4a0784fe6              # double 0.8071082243136487
	.quad	0x3feb960885f4c1ea              # double 0.8620646110849155
	.quad	0x3fe5345a741209e3              # double 0.66264078779232383
	.quad	0x3fe9ffd2f6238c77              # double 0.81247852396008013
	.quad	0x3fda1f8e15c1ca86              # double 0.40817596554476443
	.quad	0x3fc3a1432ceae1fc              # double 0.15335883801687078
	.quad	0x3fc724c2db9ac2f4              # double 0.18080936167600437
	.quad	0x3fbc7d43f3ab7c88              # double 0.11128639887782488
	.quad	0x3feb84194d4634c5              # double 0.8598753461134484
	.quad	0x3fe6d9c0df1bbd25              # double 0.71408122611856994
	.quad	0x3fe2e6a0bf5a181a              # double 0.5906528222410572
	.quad	0x3fd5be8abc54359a              # double 0.33975475684641199
	.quad	0x3fdb64c7f094b2b6              # double 0.42802618498061962
	.quad	0x3fc2832d78fcf6f4              # double 0.1446282234918993
	.quad	0x3fe0678a2a074850              # double 0.51263912399941525
	.quad	0x3feed926576716a8              # double 0.96400754042470726
	.quad	0x3fdc65a0ca071d58              # double 0.44370288590694917
	.quad	0x3fe96f31ac37957f              # double 0.79482349048764422
	.quad	0x3fdb7396c8a74288              # double 0.42892999262861808
	.quad	0x3fedb486ffe126a1              # double 0.92828702904190064
	.quad	0x3faa881df4389580              # double 0.051819740354669186
	.quad	0x3fda0ac93e690546              # double 0.40690833182096176
	.quad	0x3fe833453c7cdd20              # double 0.75625860036862846
	.quad	0x3fe1861bbf2ffaae              # double 0.54762065259258974
	.quad	0x3fe5b332012919b3              # double 0.67812442995709998
	.quad	0x3fc8fca7d37067ac              # double 0.19521043609785005
	.quad	0x3fe16dc820bb118d              # double 0.5446510924598883
	.quad	0x3fe2d0a459b60f3b              # double 0.58796899339402076
	.quad	0x3fee1a771115e92f              # double 0.9407306035712163
	.quad	0x3fed82849fd89031              # double 0.92218238086616655
	.quad	0x3fe0647860c67945              # double 0.512264431967005
	.quad	0x3fec8b4627e9b382              # double 0.89200122638213508
	.quad	0x3fe496bef85414e3              # double 0.64340160848282968
	.quad	0x3fd5a52cb25a16e6              # double 0.33820645730189225
	.quad	0x3fc52e9a0a9c2a98              # double 0.16548467176501869
	.quad	0x3fe2707c7d425baa              # double 0.57623123612107929
	.quad	0x3fe985c4749c09f9              # double 0.79757902884767795
	.quad	0x3fd836a95b88bc92              # double 0.37833627642516732
	.quad	0x3fd53282e5455240              # double 0.33120796575284217
	.quad	0x3fc4f011d639fb64              # double 0.16357634506490648
	.quad	0x3fee4d6c50a12647              # double 0.94695106265971496
	.quad	0x3fcc79d3dfabb9a8              # double 0.22246788426805364
	.quad	0x3feeec1a950d1093              # double 0.96632126914529903
	.quad	0x3fc726aa0a609e00              # double 0.18086743838033215
	.quad	0x3fe204b935a4bbaf              # double 0.56307659604305182
	.quad	0x3fcdadb85f5e4754              # double 0.23186401993421646
	.quad	0x3fc70df2a7012cc4              # double 0.18011315493126834
	.quad	0x3fe1d1cb1dad5c94              # double 0.55685954853369646
	.quad	0x3fbe5398c4771968              # double 0.11846308514131965
	.quad	0x3fe97c0069f21448              # double 0.79638691608909884
	.quad	0x3fe280f25ba651ce              # double 0.57824056530312773
	.quad	0x3fbba8f246695be8              # double 0.10804666728050416
	.quad	0x3fe7aad0927ac0a6              # double 0.73960140809324026
	.quad	0x3fd9e3693c5d0692              # double 0.40450507063733554
	.quad	0x3feae42945ab2fb5              # double 0.84035171134154629
	.quad	0x3fe8b96869ffb5d0              # double 0.77263279631523041
	.quad	0x3feb535232e4c8c9              # double 0.85392103138135511
	.quad	0x3fd43c06b634f338              # double 0.31616370957981443
	.quad	0x3fec9586d83000d4              # double 0.89325277542232095
	.quad	0x3faa9d2ee4ecc960              # double 0.051980462498607549
	.quad	0x3fc9650f5cb376dc              # double 0.19839660669725034
	.quad	0x3fd2c904f0c4ba7a              # double 0.29351924431367815
	.quad	0x3fe48aefcbb6a455              # double 0.64196004665167072
	.quad	0x3fe8768d75f347e6              # double 0.76447175061389028
	.quad	0x3fee865fedff6cae              # double 0.95390316471038772
	.quad	0x3fe517b76ec328c5              # double 0.65914508469838806
	.quad	0x3fa78293eeacfe00              # double 0.045918105015967825
	.quad	0x3fb31c8eadb95260              # double 0.074654500401558632
	.quad	0x3fe2103f5cccadf2              # double 0.5644833385935597
	.quad	0x3fe4d637c6530f65              # double 0.65114964232678274
	.quad	0x3fd255497273ebc4              # double 0.28645549943001591
	.quad	0x3fef0f86439926c3              # double 0.9706450767782474
	.quad	0x3fd32f40909f8df6              # double 0.29975904582371926
	.quad	0x3fe7f4952b6cabfd              # double 0.74860628587100531
	.quad	0x3f50a79dfe0d3400              # double 0.0010165255445884203
	.quad	0x3fc24e44a039b214              # double 0.14301355193619314
	.quad	0x3fed2418af8c75f6              # double 0.91065630232668471
	.quad	0x3fe428cb73779937              # double 0.62997982551750098
	.quad	0x3fee8b56de05e19a              # double 0.95450919498312037
	.quad	0x3fd2dd1d5a1f0a3e              # double 0.29474576760199855
	.quad	0x3fd05f2ad45650fa              # double 0.25580855117847501
	.quad	0x3fafa711f5e4c920              # double 0.061821519151992854
	.quad	0x3fd98ee4ce01273c              # double 0.39934654348018106
	.quad	0x3fda44a875aae42e              # double 0.41044055453272932
	.quad	0x3feb539587d0a9a5              # double 0.85395313764938818
	.quad	0x3fc97067f1ce5dd0              # double 0.19874285990657237
	.quad	0x3fd1027a85a39b92              # double 0.26577628184025415
	.quad	0x3fe5777d7a30e2d2              # double 0.67083619943067618
	.quad	0x3fea5bf43175287d              # double 0.82372483882615166
	.quad	0x3fd0a5e79b0d5a98              # double 0.26012601987660267
	.quad	0x3fd79ee3b2173acc              # double 0.3690728415648834
	.quad	0x3fe4e312a8df76bc              # double 0.65271885855664591
	.quad	0x3fe534acb0a3d0a3              # double 0.66268000125866811
	.quad	0x3fd75c2150d523ac              # double 0.36499817746931273
	.quad	0x3fad52b096b32310              # double 0.057271498104063068
	.quad	0x3fc160be644dca84              # double 0.13576488397264452
	.quad	0x3fc8717737511b84              # double 0.190962697992486
	.quad	0x3fd93751fea82cf6              # double 0.39400148266641055
	.quad	0x3fe3ea375efe038f              # double 0.62234085610553957
	.quad	0x3feec622b7eed5a5              # double 0.96168647694019127
	.quad	0x3fef6bd791fbdab6              # double 0.98191431534254181
	.quad	0x3fe1ecd3300676a5              # double 0.56015929584437585
	.quad	0x3fc05e5012a382cc              # double 0.12787819776624187
	.quad	0x3fac4afa650fc790              # double 0.055259537541032633
	.quad	0x3f9a35d0ba0a0140              # double 0.025595914225506222
	.quad	0x3fed632a634c5b3c              # double 0.91835517305558012
	.quad	0x3fdc956d70c677ea              # double 0.44662033093652431
	.quad	0x3fe39c6fffb18cc2              # double 0.61284637394091868
	.quad	0x3fd5a576d7648bb8              # double 0.33822413477372093
	.quad	0x3fe2cf3b4672ca8c              # double 0.58779681930021033
	.quad	0x3fefda61be92b0c8              # double 0.99540793629923829
	.quad	0x3fd88c5550a46c76              # double 0.38356526255819945
	.quad	0x3fe15d0ba89ad5c2              # double 0.54260809832219814
	.quad	0x3fedf0c35acf167e              # double 0.93564002739067553
	.quad	0x3fd128d73b1cb022              # double 0.26811772129690514
	.quad	0x3fa86c121f2e95f0              # double 0.047699514681237676
	.quad	0x3fe9650d5e62e0a1              # double 0.79358547625362885
	.quad	0x3fa0ad3f84f4a640              # double 0.032571778278292829
	.quad	0x3fee8aa0cb3ea71e              # double 0.95442237564313692
	.quad	0x3fda38ffde10228c              # double 0.40972897229998106
	.quad	0x3fef018a884ed00e              # double 0.96893812773351029
	.quad	0x3fccd2f94f8ff08c              # double 0.22518841156841451
	.quad	0x3fc6b8847e372e94              # double 0.17750602877491828
	.quad	0x3fd0719a3731a1be              # double 0.2569337405207327
	.quad	0x3fef7e5778bcfd3a              # double 0.98417256910025874
	.quad	0x3fef3d3f39e9a129              # double 0.97622643767411887
	.quad	0x3fab36093d3e9bf0              # double 0.053146637655394957
	.quad	0x3fc30266fd2d8194              # double 0.1485108123988651
	.quad	0x3fece9a86f23d728              # double 0.90352269846946331
	.quad	0x3fc6f70437eb27ec              # double 0.17941334467315018
	.quad	0x3fd96b777a6d6fda              # double 0.39718424754914639
	.quad	0x3fc0c0a028d0caa8              # double 0.13087846749256937
	.quad	0x3fe7dc3e7a56389d              # double 0.7456352605238582
	.quad	0x3fd17705eaf1f49a              # double 0.27288959449635686
	.quad	0x3fdee05f92933d18              # double 0.48244466127376162
	.quad	0x3fe1cf2d53d10dc3              # double 0.5565401684802328
	.quad	0x3fc2cec74c035138              # double 0.1469353791386625
	.quad	0x3fd2ead30b35c8c8              # double 0.2955825433229049
	.quad	0x3fc411630539aba0              # double 0.15678060298099883
	.quad	0x3f9f9ed24307dd60              # double 0.030879292813520975
	.quad	0x3fcc706ab2b77fec              # double 0.22218068815618552
	.quad	0x3fb66cbf72839ac0              # double 0.087596860368289065
	.quad	0x3fedd53240d1df7c              # double 0.93227493915672665
	.quad	0x3fecc7d5f4ebcc38              # double 0.89939401470326796
	.quad	0x3fc14b08345a46f4              # double 0.13510229641229154
	.quad	0x3fdb7b7b1e24045a              # double 0.42941167777468581
	.quad	0x3fd2ce9e5143e7ee              # double 0.29386098800716709
	.quad	0x3fd022bb26dd5704              # double 0.25211981578227971
	.quad	0x3fe87a99b472c4c2              # double 0.7649658703213833
	.quad	0x3fc6fdb50036a948              # double 0.17961752424646193
	.quad	0x3feb10cf941e8df0              # double 0.84580210618554297
	.quad	0x3fe8763d702860df              # double 0.76443359285169865
	.quad	0x3fd7f4775d5e33d6              # double 0.37429603689161917
	.quad	0x3fdf983e2438337e              # double 0.49366715943397554
	.quad	0x3fe373ed33630d06              # double 0.6079011920595867
	.quad	0x3fbcc40b5ac019d8              # double 0.11236639943681526
	.quad	0x3fee4030e2e0a863              # double 0.94533581077599782
	.quad	0x3fac5be9e08d5800              # double 0.055388744984767868
	.quad	0x3fea8b7dce4df6ff              # double 0.82952776235444492
	.quad	0x3fe09aedef50ce01              # double 0.5189122842916164
	.quad	0x3fe1f19a5592e019              # double 0.56074253762836002
	.quad	0x3fec215b565b9926              # double 0.8790718733478442
	.quad	0x3fef5bbee5fd3b23              # double 0.97994942588579581
	.quad	0x3fdf795649e74c88              # double 0.49178082673206136
	.quad	0x3fe356a3db4c7a12              # double 0.60432617980751702
	.quad	0x3fe5a153a0e1e426              # double 0.67594319746342957
	.quad	0x3feb988b44c5fd28              # double 0.86237109596541917
	.quad	0x3fe3c6dc4b719a94              # double 0.61802496657476746
	.quad	0x3fdb98aa90dec1f8              # double 0.43119300982928577
	.quad	0x3fe4219bc3998a48              # double 0.62910259440497729
	.quad	0x3fdcc0f38edfcb4a              # double 0.44927681877668546
	.quad	0x3fe51f953020ef15              # double 0.66010531807066519
	.quad	0x3fda259eac08d64c              # double 0.40854613113638005
	.quad	0x3fc1c37c9aa49ff0              # double 0.13877828169756823
	.quad	0x3fe8378c1108df49              # double 0.75678065611916978
	.quad	0x3fe7e4442efd5c42              # double 0.74661454370187408
	.quad	0x3fd7f730d4bf8db2              # double 0.37446232582280026
	.quad	0x3fe22af87f78b458              # double 0.56774544617440892
	.quad	0x3fc73020c9236970              # double 0.18115625210959818
	.quad	0x3faeb26402055c40              # double 0.059954762694069519
	.quad	0x3fe3aa45d701876e              # double 0.6145352553687482
	.quad	0x3f9c31b4048264c0              # double 0.027533352637509223
	.quad	0x3fe7183ae0dfcf7b              # double 0.72170776291612471
	.quad	0x3fd830524df321ee              # double 0.37794931041983559
	.quad	0x3feb6a1c7a18820e              # double 0.85670303198645725
	.quad	0x3fea61ccbd19d704              # double 0.82443844732071669
	.quad	0x3fedfd06fd46892b              # double 0.93713712184788756
	.quad	0x3fbbb96847559390              # double 0.10829784146842614
	.quad	0x3fcdc1886de60cc4              # double 0.23246865621704249
	.quad	0x3fc8722460ced0b8              # double 0.19098334052035226
	.quad	0x3fecfd4964e33d2a              # double 0.90591878609294452
	.quad	0x3fda5c453054ceb2              # double 0.41188173026896913
	.quad	0x3fe09efe54c67f86              # double 0.51940838391964017
	.quad	0x3fe66f7619e1e0e3              # double 0.70110611968177883
	.quad	0x3fc7f3b1c9ab2384              # double 0.18712446543784378
	.quad	0x3fc3ad0f83c80040              # double 0.15371889052039656
	.quad	0x3f7e441b364b0c80              # double 0.0073891699764231378
	.quad	0x3fc946acd22c70e4              # double 0.19746933233626074
	.quad	0x3f91da21fab3bce0              # double 0.017433672835008518
	.quad	0x3fea822ba430098a              # double 0.82838995044612429
	.quad	0x3fee766237041b96              # double 0.95195112939187498
	.quad	0x3fc021e0461927f4              # double 0.12603381560103311
	.quad	0x3fe19894af3fd3e9              # double 0.54987558582672336
	.quad	0x3fdd5d11eb187a36              # double 0.45880554159694797
	.quad	0x3fc173bcddb7b9c4              # double 0.13634453607615005
	.quad	0x3fe1ecf3aa1541d5              # double 0.5601747819837849
	.quad	0x3feb9d292c538f61              # double 0.86293467195035245
	.quad	0x3fe885b27562e446              # double 0.76632044722567438
	.quad	0x3fd490da334868c0              # double 0.32134108551111851
	.quad	0x3fd54711adb1b47c              # double 0.33246271097488722
	.quad	0x3fe8972ed1f59693              # double 0.76845494277650273
	.quad	0x3fd7984ecff9e27c              # double 0.36867113409201813
	.quad	0x3fe39089f50b120a              # double 0.61139390811928362
	.quad	0x3fe30a30b6121b84              # double 0.59499393044176019
	.quad	0x3fe1bbacc39d3738              # double 0.55415952878840979
	.quad	0x3fd76b9e970f1604              # double 0.36594357253883936
	.quad	0x3feef8ab21cbc9c1              # double 0.96785503960409624
	.quad	0x3fec71ab2e7f70be              # double 0.88887557107548054
	.quad	0x3fcdc34a90768554              # double 0.23252231649261523
	.quad	0x3fd8132c3b965b98              # double 0.37617021388126082
	.quad	0x3feb28bd97ae102d              # double 0.84872321724879429
	.quad	0x3fe3ae4aa6bb61be              # double 0.61502583088718388
	.quad	0x3fbec1360b58d480              # double 0.12013566758180794
	.quad	0x3fb1252487059ca0              # double 0.066973002399765225
	.quad	0x3fd07bde46fe8882              # double 0.25756031926187728
	.quad	0x3fec1f23ad9df5fa              # double 0.87880119237496435
	.quad	0x3fe5a7ec908b6e5b              # double 0.67674854499223203
	.quad	0x3fd371a19b677b22              # double 0.30381050277894606
	.quad	0x3f8f8078855b3340              # double 0.015381757325849343
	.quad	0x3fc3baed55a3554c              # double 0.1541420620111843
	.quad	0x3fe509318332f04b              # double 0.65737224221039392
	.quad	0x3fbb27c3fabd93a8              # double 0.10607552405924869
	.quad	0x3fdc66b23d03aace              # double 0.44376808126859835
	.quad	0x3fe74f3731afa0cf              # double 0.72841987327867652
	.quad	0x3fe05c7e827982a5              # double 0.51129079325990701
	.quad	0x3fe157fc8fcfc349              # double 0.54199054802129709
	.quad	0x3fe34f0d36ee4295              # double 0.60339985588696499
	.quad	0x3fe6be7d68ef630d              # double 0.71075315947663997
	.quad	0x3fe8b0d7d78098a2              # double 0.77158729639338142
	.quad	0x3fd3a3395aea02a8              # double 0.30683740499811529
	.quad	0x3fe35830e208eb75              # double 0.60451549670629723
	.quad	0x3fc1d28156ec2020              # double 0.13923660988098252
	.quad	0x3fd096cdec72662c              # double 0.25920436945452496
	.quad	0x3fb1c8c9e6699078              # double 0.069470041993158094
	.quad	0x3fd67a409ff1d44e              # double 0.35121169681162179
	.quad	0x3fefe4cb43f80881              # double 0.99667895579501941
	.quad	0x3fe54ab8a6f3a699              # double 0.66537125213399684
	.quad	0x3fd406728b2a50a0              # double 0.31289352026329631
	.quad	0x3fec8b0538dcd19a              # double 0.89197026353808728
	.quad	0x3fdf837f489dedbe              # double 0.49240095225806246
	.quad	0x3fc59a8f566bfe60              # double 0.16877929420296578
	.quad	0x3febfafe0988deba              # double 0.87438871252285044
	.quad	0x3fec924b03e04d97              # double 0.89285803563182042
	.quad	0x3fc58182e78d4130              # double 0.16801487261046466
	.quad	0x3fcf73f249fa18c0              # double 0.24572590458064347
	.quad	0x3fe77cb22fe18d69              # double 0.73397168494959175
	.quad	0x3fee095922f59086              # double 0.93864113643623237
	.quad	0x3fd5269d85fd2ee4              # double 0.33048189244139636
	.quad	0x3fe75e7a85154acf              # double 0.73028303139502693
	.quad	0x3fd135bd4250ccfe              # double 0.26890498615394154
	.quad	0x3fc7f73fdce4cd5c              # double 0.18723295484378866
	.quad	0x3fcf5dcbf065f520              # double 0.24504994619557241
	.quad	0x3fec3da27f5ce0a4              # double 0.88252377391383562
	.quad	0x3fef97a114b96c8a              # double 0.98725942657201071
	.quad	0x3fe78ff8dc47b98b              # double 0.73632472060653364
	.quad	0x3fc30ff4cfff8bb8              # double 0.14892444759524692
	.quad	0x3fcba6f08bdf6668              # double 0.2160320933315234
	.quad	0x3fdb224d63d3d09e              # double 0.42396864651460386
	.quad	0x3fee3ddc558e8352              # double 0.9450513525990607
	.quad	0x3fe210f598f730fe              # double 0.56457023502437642
	.quad	0x3fd85ca73a8ab70e              # double 0.38065510479906173
	.quad	0x3fe5bb683b9e6957              # double 0.67912685055061217
	.quad	0x3fe4c555d38d8156              # double 0.64908877676865973
	.quad	0x3feae4698a0bf6aa              # double 0.84038235628368807
	.quad	0x3fbca4c55fffb5a8              # double 0.11188920587274842
	.quad	0x3fe9f536c35451b6              # double 0.81118333959834987
	.quad	0x3fdf1d0cd8b0bd04              # double 0.48614808236284568
	.quad	0x3fbb862374a2e660              # double 0.1075155410534534
	.quad	0x3fdd115ceda930c8              # double 0.45418475350448917
	.quad	0x3fa5e7e445438500              # double 0.042784818129584679
	.quad	0x3fe569fc3b42ed13              # double 0.66918765615938225
	.quad	0x3fe1fddb5c93b6c0              # double 0.56223838883826005
	.quad	0x3fb957ee7a9d71b0              # double 0.098997979102427136
	.quad	0x3fed20cb5b32ceda              # double 0.91025321781350077
	.quad	0x3fda6262e23491d4              # double 0.41225502100340106
	.quad	0x3fd24466dd642d56              # double 0.28542491550679949
	.quad	0x3fc6ed4d81621154              # double 0.17911690537961056
	.quad	0x3fbe9773be468aa8              # double 0.1194984759845662
	.quad	0x3fc575e78444c764              # double 0.16766065557890919
	.quad	0x3fee7629ec1bb7b4              # double 0.95192428698441355
	.quad	0x3fe94c34e322ae00              # double 0.79055256235500337
	.quad	0x3fe4650e327cc2e0              # double 0.63733587132272973
	.quad	0x3fe545aa545f4240              # double 0.66475407103468598
	.quad	0x3fc65d7aafb0f92c              # double 0.17472776011158808
	.quad	0x3feefbe4d49e088b              # double 0.96824876334018605
	.quad	0x3fc1b0905b0e6500              # double 0.13820080228905596
	.quad	0x3fe9e73c2a0b3a7d              # double 0.80947693072978633
	.quad	0x3f8b2997041c2480              # double 0.013262920201230211
	.quad	0x3fe76db7c06df7e4              # double 0.73214328369044468
	.quad	0x3fc7a03692ebcccc              # double 0.18457681821710137
	.quad	0x3fe157ba4db4f206              # double 0.54195895363915336
	.quad	0x3fdd479332cc62c6              # double 0.45749359093455799
	.quad	0x3faeb709729752a0              # double 0.059990210760280549
	.quad	0x3fdad75b4363a374              # double 0.41939431744554345
	.quad	0x3fc3d12e1b363630              # double 0.15482117012690955
	.quad	0x3fd8d7c77b949efe              # double 0.38817011898434817
	.quad	0x3fde1fe3156c6d34              # double 0.4706962308134337
	.quad	0x3fcab066cc7fde54              # double 0.20850834832502818
	.quad	0x3fef0ba1541c9434              # double 0.97016970089010223
	.quad	0x3fd8e6c1e55c88a0              # double 0.3890843143327718
	.quad	0x3feb56b625361efb              # double 0.85433490054944572
	.quad	0x3fe317d43828f8f7              # double 0.59665881127128173
	.quad	0x3fd960238c28c982              # double 0.39649285018381175
	.quad	0x3fe2b5c44fe9bfa8              # double 0.58468833549521992
	.quad	0x3fc376cc4d4049fc              # double 0.15206292888667849
	.quad	0x3fce65afd90ec760              # double 0.23747823809167823
	.quad	0x3fed4931aff76658              # double 0.91518482559622338
	.quad	0x3fd0a2da52eb1aca              # double 0.25993974778650097
	.quad	0x3fe49439e164c4c8              # double 0.64309400579636478
	.quad	0x3fead342bc1e4de7              # double 0.83828865758772231
	.quad	0x3fb3680695901990              # double 0.07580605651319261
	.quad	0x3fe2feefed4e63c4              # double 0.59362026547307112
	.quad	0x3fe2e9b0e1d593d0              # double 0.59102672680148238
	.quad	0x3fe116b3028b7384              # double 0.53402090546624992
	.quad	0x3fd50f1bee84c44c              # double 0.32904718678316125
	.quad	0x3fc416ec64ca8f30              # double 0.15694956704566598
	.quad	0x3fe27792b149c9d4              # double 0.57709631563767028
	.quad	0x3fee2064fa6ab170              # double 0.9414544001534022
	.quad	0x3fef536a385173ec              # double 0.97893248557704515
	.quad	0x3fca112df312c8cc              # double 0.20364927643601616
	.quad	0x3fd01361c5c774c6              # double 0.25118297876708728
	.quad	0x3fef39b9098224e1              # double 0.97579624039749657
	.quad	0x3fd827163bf10f04              # double 0.37738567212748841
	.quad	0x3fece90f553cda87              # double 0.90344969413747911
	.quad	0x3fca3d8be20a6c98              # double 0.20500324761528499
	.quad	0x3fe1a1f07c5bf585              # double 0.55101799286755748
	.quad	0x3fe8972a04cbe7f6              # double 0.76845265328233725
	.quad	0x3fc1da30b4a32ca8              # double 0.13947113819299273
	.quad	0x3feca8d8e9f5c040              # double 0.89561124511056533
	.quad	0x3fe15d625db0052c              # double 0.54264944361071832
	.quad	0x3fc709a6b83b6c28              # double 0.17998203273495617
	.quad	0x3fd9250bdf1fc4bc              # double 0.39288613118612736
	.quad	0x3fc40fabec592ee8              # double 0.15672825851867533
	.quad	0x3fe3f6def1c865b7              # double 0.62388560507968449
	.quad	0x3f84115c5401df00              # double 0.0097987378251072066
	.quad	0x3fe9a781b9af4957              # double 0.80169760004563784
	.quad	0x3fe301ace7f63ffb              # double 0.59395451836644442
	.quad	0x3faccae2ed167f20              # double 0.056235400620833653
	.quad	0x3fe333c4d6cac851              # double 0.60006944610200652
	.quad	0x3fee4078ba28f66a              # double 0.94537006720902395
	.quad	0x3feea2114e19969e              # double 0.95728364232919083
	.quad	0x3fed49ff19e9b4eb              # double 0.91528277455441065
	.quad	0x3fd931da6a27c432              # double 0.39366779677135633
	.quad	0x3fea866a2fe2311a              # double 0.82890805580385352
	.quad	0x3fe86841fee9d8fb              # double 0.76272678172861619
	.quad	0x3fb8899ec39909f8              # double 0.09584991717660063
	.quad	0x3fed1803b6c1c6ca              # double 0.90918145842280151
	.quad	0x3fe6ecefedde84ec              # double 0.71642300089675137
	.quad	0x3fecc001d9d8b300              # double 0.89843838260784992
	.quad	0x3fe27980237b7d1a              # double 0.57733160905982861
	.quad	0x3fe10511fc6742a6              # double 0.53186892793208496
	.quad	0x3fef6b5abc90618f              # double 0.98185479000953701
	.quad	0x3fe55a2301193dd4              # double 0.66725301947183846
	.quad	0x3fe7d3b30e5c40c0              # double 0.74459221653707885
	.quad	0x3fe2c64119e3a25b              # double 0.58670096451266873
	.quad	0x3fe26ea25e53b9dd              # double 0.57600515769245997
	.quad	0x3fe06720ac008e6f              # double 0.51258882135557637
	.quad	0x3fe6aa992e1a2084              # double 0.70832499508198099
	.quad	0x3f92be264ffd4160              # double 0.018303488380582933
	.quad	0x3fe46af2c6f9be93              # double 0.63805521833815459
	.quad	0x3fdd9b0013c87f78              # double 0.46258546764328612
	.quad	0x3fd81df0b65e608c              # double 0.37682740983428498
	.quad	0x3fea416b2fea29ba              # double 0.82048568113650977
	.quad	0x3fce4caf9130dabc              # double 0.23671526517292374
	.quad	0x3fe9e8326f62840c              # double 0.80959436182831856
	.quad	0x3fd88da457d61cc8              # double 0.38364513948222312
	.quad	0x3fde536a35fa2ba6              # double 0.4738412406083462
	.quad	0x3fe9d7a8a5890f81              # double 0.80757553416377459
	.quad	0x3fe6bd2a89879a02              # double 0.71059157239216142
	.quad	0x3fe2375e273617c3              # double 0.56925876291710897
	.quad	0x3fee3e7bb13746d9              # double 0.94512734043584168
	.quad	0x3fee351ac31adf94              # double 0.94398248773994675
	.quad	0x3fed1100faf3fa91              # double 0.90832566274896653
	.quad	0x3fdde0ec0cb55c24              # double 0.46685315362032243
	.quad	0x3fe89082306b3b4a              # double 0.76764020401774613
	.quad	0x3fd553a308131108              # double 0.33322978771708778
	.quad	0x3fefad26e3d63fb1              # double 0.98988670825382574
	.quad	0x3fcf4aa819016f18              # double 0.24446583958603507
	.quad	0x3fdd8a9d048108c8              # double 0.4615852874741333
	.quad	0x3fec4a8a8aa77c7e              # double 0.88409926491648583
	.quad	0x3fc884259c2114bc              # double 0.19153280375954818
	.quad	0x3fe45c7ea4af75f7              # double 0.63629085698238341
	.quad	0x3fdb88e67e239dac              # double 0.43023073499940767
	.quad	0x3fea01df8dc00f2f              # double 0.81272866902916074
	.quad	0x3fe2970eeef1f86b              # double 0.58093973797782661
	.quad	0x3fad962d662254d0              # double 0.05778638717416984
	.quad	0x3fe684d4e57d698a              # double 0.70371479818577254
	.quad	0x3fcd1e49d31e304c              # double 0.22748682793133168
	.quad	0x3fe93fc26eb4d42d              # double 0.78903314230286059
	.quad	0x3fe4aa4b53d4242f              # double 0.64578787205494403
	.quad	0x3fe210991c800e3b              # double 0.56452613417099629
	.quad	0x3fe8b40f9817faa1              # double 0.77198009210390606
	.quad	0x3fe7ec4b35f0b84f              # double 0.74759445700852634
	.quad	0x3fec7ab936db7189              # double 0.88998089517876722
	.quad	0x3fec6c6a746ba4dc              # double 0.88823435533881989
	.quad	0x3fdb5fbc4fde8310              # double 0.42771823692059829
	.quad	0x3fe90ec048195226              # double 0.78305067140405948
	.quad	0x3fb6cc5022911560              # double 0.089055069388526586
	.quad	0x3fcbb3d8e8d35b40              # double 0.21642600410879176
	.quad	0x3fe31e037fd7cda7              # double 0.59741377801258444
	.quad	0x3fe67d443ec0ae9b              # double 0.70279133087520351
	.quad	0x3fd7ecb558c1df30              # double 0.37382253329950554
	.quad	0x3feffff71fe86053              # double 0.99999576789833566
	.quad	0x3fef9077a4534202              # double 0.98638517470141118
	.quad	0x3fe784b67d1bb09f              # double 0.73495029864490735
	.quad	0x3fee0832fc679e2c              # double 0.93850087449840691
	.quad	0x3fe77dd905eadaa0              # double 0.7341122737478436
	.quad	0x3fec67882359a051              # double 0.88763815788571254
	.quad	0x3fe3b6e984246d39              # double 0.6160781460670598
	.quad	0x3fe3b8dba486d6d5              # double 0.61631567129253517
	.quad	0x3fee6198dee636a2              # double 0.94941371474279301
	.quad	0x3fa08b2a55ea6340              # double 0.032311747539273572
	.quad	0x3fddda5d3dc52714              # double 0.46645289451827066
	.quad	0x3fd623252eb3e90c              # double 0.34589509545152519
	.quad	0x3fec92e9191fe32e              # double 0.89293341548100158
	.quad	0x3fe30dc811a4fd7d              # double 0.59543231435956978
	.quad	0x3fc1321dfeda0ec0              # double 0.13434195465025844
	.quad	0x3fd277358aa3d40a              # double 0.28852594889696148
	.quad	0x3fed38aa5c58a92c              # double 0.91316717182534068
	.quad	0x3fdd72d55adf14ec              # double 0.46013387560044694
	.quad	0x3fcb5b5ff535aefc              # double 0.21372603867654749
	.quad	0x3fe8c620f3338753              # double 0.77418563366175375
	.quad	0x3fef3cc895253bc1              # double 0.9761698639866766
	.quad	0x3f9f68ba915071c0              # double 0.030672946090008812
	.quad	0x3fb43a134d9c4e20              # double 0.079011160323994023
	.quad	0x3fb11a26f430ea28              # double 0.066805300347291152
	.quad	0x3fe4dc39490c1496              # double 0.65188278452901005
	.quad	0x3fefe843825779c5              # double 0.99710250336993822
	.quad	0x3fdd526f60decad4              # double 0.45815643749226109
	.quad	0x3f8f5552382c0e40              # double 0.015299455966221065
	.quad	0x3fe7a7f7fc5091ff              # double 0.73925399093837985
	.quad	0x3fe5dc78b1c34d95              # double 0.68316302031819254
	.quad	0x3fe5bca192c297cc              # double 0.67927626289451259
	.quad	0x3fe6666c37bf32ad              # double 0.70000277412471734
	.quad	0x3fd248d564889700              # double 0.28569540803651705
	.quad	0x3fed3b1692489373              # double 0.91346291132923196
	.quad	0x3fccc7a3dffe5690              # double 0.22484253346617722
	.quad	0x3fe1b48cde95cd72              # double 0.55328982804932836
	.quad	0x3fef72257e77efa6              # double 0.98268389416579249
	.quad	0x3fdce13d49d42ee6              # double 0.45124752244804112
	.quad	0x3fcab6b5413f2ca8              # double 0.208700806483056
	.quad	0x3fe4f14921b60cb7              # double 0.65445381721692442
	.quad	0x3fbfe023d76a9550              # double 0.12451385506809243
	.quad	0x3fe306c8d17f4863              # double 0.59457817952558079
	.quad	0x3fc3d7e96502a604              # double 0.15502660209794794
	.quad	0x3fe7ce240365a68b              # double 0.74391365684023592
	.quad	0x3fd1f20a57f57c0c              # double 0.28039797391642263
	.quad	0x3fda387f8e5fc24c              # double 0.40969838050572061
	.quad	0x3fa1f864970d2290              # double 0.035098212660675476
	.quad	0x3fe3df63e26b7524              # double 0.62101930830582264
	.quad	0x3fa37e31df046900              # double 0.038072164987356771
	.quad	0x3fc50e54eb77a2d4              # double 0.16449986932209149
	.quad	0x3fe528c52bb6f149              # double 0.66122683084498945
	.quad	0x3fb6f206a1fc4a38              # double 0.089630522296183623
	.quad	0x3fd592e7941c882e              # double 0.33709134544381214
	.quad	0x3fb4efd72de0a830              # double 0.081784676266267508
	.quad	0x3feae68e8a10496b              # double 0.84064413991499742
	.quad	0x3fe4946a28e749f2              # double 0.64311702717742336
	.quad	0x3fd2103c197f59a0              # double 0.28224089136110742
	.quad	0x3fc1928ad559577c              # double 0.13728461663657388
	.quad	0x3fdd9afeaddc967a              # double 0.46258513430289094
	.quad	0x3fce0c55a16b21ec              # double 0.23475141889345197
	.quad	0x3fb2a95f7cfa0e80              # double 0.072896926891241165
	.quad	0x3fd9ad29abd6b73e              # double 0.40119401723028492
	.quad	0x3fe87a731ac8be87              # double 0.76494746428757388
	.quad	0x3fe548506e794903              # double 0.66507741524608865
	.quad	0x3fe254feb449fc37              # double 0.57287535870262374
	.quad	0x3feda2b98b500dbd              # double 0.9261138649894104
	.quad	0x3fd5177da04be7b6              # double 0.32955876020389085
	.quad	0x3fe21d5c475b40e1              # double 0.5660840409928164
	.quad	0x3fe2ed60d6dbbe9e              # double 0.59147684063460182
	.quad	0x3fb8761ea1069170              # double 0.095552362740425555
	.quad	0x3fef9e5022baed32              # double 0.98807532103766094
	.quad	0x3f972ce2a4cd1d40              # double 0.022632161434811282
	.quad	0x3feb28196a41a74f              # double 0.84864493134703334
	.quad	0x3feddc93c61dae20              # double 0.9331759328319471
	.quad	0x3fe5916e473dd2e0              # double 0.67400278009753478
	.quad	0x3fd03ae14e69092c              # double 0.25359375626807679
	.quad	0x3fc9a6ca16bd3fc4              # double 0.20040250883402966
	.quad	0x3fe59e8aa0a48a71              # double 0.6756032121232477
	.quad	0x3fabae81b5ab97b0              # double 0.054065755297230012
	.quad	0x3fd9a7fb12b531a4              # double 0.40087773158009044
	.quad	0x3f9c1b50b44e9c00              # double 0.02744794941432005
	.quad	0x3febf062b6f1ae2b              # double 0.873093945801377
	.quad	0x3fee11a3ba6d0bd1              # double 0.93965326701470009
	.quad	0x3fe7a246f67a2b82              # double 0.73855922832568432
	.quad	0x3fee987c4ab7779e              # double 0.9561139544782582
	.quad	0x3fec120b0e63e3c2              # double 0.87720253763756539
	.quad	0x3faa6648652e4880              # double 0.051561605788394083
	.quad	0x3fe3c308658ddacd              # double 0.61755771479405441
	.quad	0x3fe2cc4590f6392c              # double 0.587435515526328
	.quad	0x3fda306ea3558c76              # double 0.4092060656605051
	.quad	0x3fe3d5528fb50496              # double 0.61979034488480766
	.quad	0x3fe4587dfa1effaf              # double 0.63580225803160839
	.quad	0x3fe892c78251ef0e              # double 0.76791739895949873
	.quad	0x3fda94adf7c838ac              # double 0.41532468030426162
	.quad	0x3fe5a26d36357b57              # double 0.67607746684721348
	.quad	0x3fe922113aa998b0              # double 0.78540860612408459
	.quad	0x3fd49a8150cad86a              # double 0.32193024530295722
	.quad	0x3fd0d4b7b257dc04              # double 0.26298324982002463
	.quad	0x3feee199ec21c81f              # double 0.96503921622775468
	.quad	0x3fd8a5674543b0e2              # double 0.38509542240241335
	.quad	0x3fe42546d886a67c              # double 0.62955038347463654
	.quad	0x3fdec654987cb4e6              # double 0.48085513011285597
	.quad	0x3fe9acaca77aaafc              # double 0.80232842169547735
	.quad	0x3fe47ee154e46947              # double 0.64048830585969874
	.quad	0x3fecfac3b644affe              # double 0.90561090087203389
	.quad	0x3fa7ed6e939274d0              # double 0.046733336939021819
	.quad	0x3fe83ca959bb8b63              # double 0.75740497136972029
	.quad	0x3fe49c377f83228d              # double 0.64406943230376756
	.quad	0x3fd0163e4b57c674              # double 0.25135762555792174
	.quad	0x3fe84659d5c0292a              # double 0.75858775852365068
	.quad	0x3febf82734fb9ea5              # double 0.87404213283749199
	.quad	0x3fd61c5baa6a4fdc              # double 0.34548083917729655
	.quad	0x3fd0ce7cfbec1320              # double 0.2626030407121096
	.quad	0x3fe661ca0f4161a1              # double 0.6994371698338463
	.quad	0x3fd01c530caa806c              # double 0.25172878491321771
	.quad	0x3fe126267d42b80c              # double 0.5359070250030995
	.quad	0x3fb5a0e00d5fe828              # double 0.084486010804454836
	.quad	0x3fcb4230f99f7fdc              # double 0.21295749844193679
	.quad	0x3fc4915b56edbdfc              # double 0.16068593735279524
	.quad	0x3fed2702274b0579              # double 0.91101176905082959
	.quad	0x3fe7867860a5c415              # double 0.73516482235402469
	.quad	0x3fdd76688282a0f6              # double 0.4603520655168859
	.quad	0x3fe49e85d7a0d372              # double 0.64435093035591096
	.quad	0x3faa2efc8c816200              # double 0.051139728690660746
	.quad	0x3fdf5f4a453955c8              # double 0.49019104728844498
	.quad	0x3fcd84144a3647a4              # double 0.23059323905596074
	.quad	0x3fa4e414820d13d0              # double 0.040802613139511501
	.quad	0x3feff3f31e2bcd2f              # double 0.99852901356499568
	.quad	0x3fe063d5f9c02d30              # double 0.51218699244910759
	.quad	0x3fc09e904649d864              # double 0.1298389762120592
	.quad	0x3fe82aa6e9d09c28              # double 0.7552065436074189
	.quad	0x3fe5277e02d09003              # double 0.66107082891221614
	.quad	0x3fe9f1feb146c9f2              # double 0.81079039215393167
	.quad	0x3f947ee80bcca4a0              # double 0.020015359611680439
	.quad	0x3fd3cf299586f806              # double 0.30951919176357057
	.quad	0x3fe7b8a8cc075a24              # double 0.74129142617568222
	.quad	0x3fdebeea3c527672              # double 0.48040252581436171
	.quad	0x3faaf8b3afbd3fc0              # double 0.052678694918199209
	.quad	0x3fd8bfcb14c2e372              # double 0.38670613315075919
	.quad	0x3fab6b7f251d4e60              # double 0.05355450943048079
	.quad	0x3fd0736efd3f4634              # double 0.25704550486725286
	.quad	0x3fea2410a56d1224              # double 0.81690246877457584
	.quad	0x3fe3cce1734c63e5              # double 0.61875984687059982
	.quad	0x3fe45a156b5422e7              # double 0.63599654162052566
	.quad	0x3fd2c522b362c1a2              # double 0.29328219907895392
	.quad	0x3fd4fd42e930df8e              # double 0.32795784733343047
	.quad	0x3fe9b053e353cde6              # double 0.8027743759143362
	.quad	0x3fd710ac1a149b08              # double 0.36039259478495511
	.quad	0x3fe28686f104f163              # double 0.57892176698764464
	.quad	0x3fe051193a8c2ebf              # double 0.5098997252948364
	.quad	0x3fd0d990549b2db6              # double 0.2632790399772732
	.quad	0x3fe847c63a11fb3b              # double 0.75876151410907455
	.quad	0x3fdf74bf7d78d2ee              # double 0.49150073292848517
	.quad	0x3fd9689a368d72c6              # double 0.39700942351718671
	.quad	0x3f9648b389268540              # double 0.021761708494186793
	.quad	0x3fe48555b93ba08b              # double 0.64127622774414428
	.quad	0x3fef86950f598ed8              # double 0.98517849920286959
	.quad	0x3fd2d275d6137784              # double 0.29409547716010587
	.quad	0x3fe2ba7cf0e68100              # double 0.58526465464458965
	.quad	0x3f843e25e44df780              # double 0.0098841629312536039
	.quad	0x3fe7ef7f0e35739c              # double 0.74798538947253546
	.quad	0x3fda54ef46b957da              # double 0.41143400103226002
	.quad	0x3fee4e088fad9918              # double 0.94702556669361381
	.quad	0x3fd9d48c32277dd4              # double 0.40359787843587225
	.quad	0x3fcff73c4a1822ec              # double 0.24973252885708719
	.quad	0x3fea553d3d94e600              # double 0.82290517833388321
	.quad	0x3fec52ad90084a73              # double 0.88509252673459426
	.quad	0x3fedf6c6672a4ff2              # double 0.93637390279263699
	.quad	0x3fe205dea433d1cc              # double 0.56321651526246219
	.quad	0x3feb10f2b71a8920              # double 0.84581886064941969
	.quad	0x3fcc6613913fd518              # double 0.22186512558224858
	.quad	0x3fe8239704f44479              # double 0.75434447257624904
	.quad	0x3fb5b37b5f45c860              # double 0.08476992679587303
	.quad	0x3f7e7df0fa1b9200              # double 0.00744432574876841
	.quad	0x3fec7facbce0a0ac              # double 0.89058529749038006
	.quad	0x3fbc72e60d3cf708              # double 0.11112821410366902
	.quad	0x3fe5e978319b8c49              # double 0.68474969567285726
	.quad	0x3f943f7fe6185400              # double 0.019773481768499579
	.quad	0x3faad0081cb94cb0              # double 0.052368405824972597
	.quad	0x3fd2f1b824ec7ca6              # double 0.29600337606275173
	.quad	0x3fc3ca282466c1a8              # double 0.1546068361035513
	.quad	0x3fefb995d7aaf441              # double 0.99140445826163425
	.quad	0x3fe24baee2851403              # double 0.5717386650291022
	.quad	0x3fe39c84a736e3a7              # double 0.61285622271599471
	.quad	0x3feca484e514d603              # double 0.89508290045222372
	.quad	0x3fe41ab2a8545620              # double 0.62825901867717349
	.quad	0x3fd1145fb3f3f804              # double 0.26686852048430887
	.quad	0x3fecd204a024db44              # double 0.90063697126502306
	.quad	0x3fcb4e1c8914f4c4              # double 0.21332127278757274
	.quad	0x3fedb164e3c9802e              # double 0.92790455331487975
	.quad	0x3fe86cc1fbef97a4              # double 0.76327609258872941
	.quad	0x3fe35530cafd0420              # double 0.60414924284134841
	.quad	0x3fcb2da886628ab8              # double 0.21233088075412865
	.quad	0x3fd6470f020318c2              # double 0.34808707424634744
	.quad	0x3fe2d9ee6b9af98b              # double 0.58910294548677322
	.quad	0x3feaa18b575013e3              # double 0.83221976331026004
	.quad	0x3fefdcdc6782e642              # double 0.99571056572967387
	.quad	0x3fd7189d88dd5eaa              # double 0.36087740293212767
	.quad	0x3fe59f7708766e75              # double 0.67571593907218974
	.quad	0x3fcaebf4f4f78d98              # double 0.21032583199767596
	.quad	0x3fde4c18462931e2              # double 0.47339445926334467
	.quad	0x3fadaf55ca4dee00              # double 0.057978325791705032
	.quad	0x3fd5edfa20bc4cd0              # double 0.34264996716337937
	.quad	0x3fd9abb680d049fa              # double 0.4011055238671869
	.quad	0x3fe6f027a365efbb              # double 0.71681577600201452
	.quad	0x3f827bd0d9d23380              # double 0.0090252224420284133
	.quad	0x3fe84d932caf9bcf              # double 0.75946959235886335
	.quad	0x3fd2ed3fbd1c314a              # double 0.29573052852426385
	.quad	0x3fe52692454c1d60              # double 0.66095841917642062
	.quad	0x3fed7a9377d6fd68              # double 0.92121289640628579
	.quad	0x3fdee317c8625910              # double 0.48261065071837184
	.quad	0x3fed07d9ec548863              # double 0.90720840605014208
	.quad	0x3fe5767d433e2fd1              # double 0.67071402676946879
	.quad	0x3fefc0474411b2fd              # double 0.992221482226881
	.quad	0x3fe4cfc4c735581e              # double 0.6503623858250227
	.quad	0x3fcf93329a4d7288              # double 0.24667961630156676
	.quad	0x3fed35d9db99736e              # double 0.91282360926161998
	.quad	0x3fc67b83869fac18              # double 0.17564434121536077
	.quad	0x3fd19e6c3b21fd44              # double 0.27529435896572729
	.quad	0x3fb442511d795000              # double 0.079136914916773549
	.quad	0x3fea57d80a01abbd              # double 0.82322313265228042
	.quad	0x3fedea9051279c6c              # double 0.93488326883824646
	.quad	0x3fd23e84a8529846              # double 0.28506580770261214
	.quad	0x3fd5dcdab3dfa026              # double 0.34160487714553012
	.quad	0x3fd4df9c521bdcaa              # double 0.32614810961190221
	.quad	0x3fdcc86004a229b4              # double 0.44972992374882925
	.quad	0x3feaba9c6ce4f67c              # double 0.83527966755327964
	.quad	0x3fedfd71ea26dac6              # double 0.93718810780304618
	.quad	0x3fed39f2949c6f69              # double 0.9133236792144831
	.quad	0x3fd78c1023f9cd22              # double 0.36792377007732757
	.quad	0x3feeea219b102a3a              # double 0.96608047757883431
	.quad	0x3fe2ef31d9a64988              # double 0.59169857511214818
	.quad	0x3fb567aaf92b76a8              # double 0.08361309607740941
	.quad	0x3fe71642a9548a41              # double 0.72146733352958148
	.quad	0x3fecae1ccd4c5608              # double 0.89625396821310321
	.quad	0x3fe148f5f009dc08              # double 0.54015633471033286
	.quad	0x3fd8a8a79a73467a              # double 0.38529386599575555
	.quad	0x3fe76f227009a137              # double 0.73231622583720124
	.quad	0x3fc3e863110237e8              # double 0.15552938776494263
	.quad	0x3fcfdf8276f08598              # double 0.2490084725150552
	.quad	0x3febaa42c5d95d06              # double 0.86453379290006249
	.quad	0x3fdc2ba0f1efb2d8              # double 0.44016288401216519
	.quad	0x3fcd0424e4d90bf0              # double 0.22668896841250286
	.quad	0x3fd411a79e8245d2              # double 0.3135775611818562
	.quad	0x3fc9e3971d192d44              # double 0.20225800438707087
	.quad	0x3fd7e66a4a48f64c              # double 0.37343842749018985
	.quad	0x3fe1bcbd66b62f95              # double 0.55428953228828226
	.quad	0x3fe86fc1a3746e49              # double 0.7636421387173381
	.quad	0x3fef66064a22a0cd              # double 0.98120417098564305
	.quad	0x3fcabac2ae9539f8              # double 0.20882447742992816
	.quad	0x3fec18d8f3decade              # double 0.87803313856997156
	.quad	0x3fb797728edee810              # double 0.092154655342625568
	.quad	0x3fdf35a60c45fe2e              # double 0.4876494521958844
	.quad	0x3fec2b27038c80c1              # double 0.88026762669689884
	.quad	0x3fe3b02018f3c6fc              # double 0.61524968026625926
	.quad	0x3fe16af09119dd3b              # double 0.54430416431470208
	.quad	0x3feebdb84945039f              # double 0.96065916357484926
	.quad	0x3fdf7e467d24d87c              # double 0.4920822355374026
	.quad	0x3fe1f17ffc1a8610              # double 0.56072997321115459
	.quad	0x3fc05e141c20b470              # double 0.12787104962754681
	.quad	0x3fe7ea0da9ce4dca              # double 0.74732096829614503
	.quad	0x3fe2178b3ed3bdff              # double 0.56537401457711656
	.quad	0x3f99e08b49045960              # double 0.025270630199054067
	.quad	0x3fdb490cf0b91638              # double 0.42633365161995895
	.quad	0x3fc20f611d0d0828              # double 0.14109434050084357
	.quad	0x3fe0f11ac819a8f6              # double 0.52943171579434423
	.quad	0x3fdbd5c923bb699c              # double 0.43492344369374236
	.quad	0x3fdfc022fe90bfae              # double 0.49610209331421629
	.quad	0x3fc0a49e874435e4              # double 0.13002378086859701
	.quad	0x3fb2fb5c6af565a0              # double 0.07414796458524231
	.quad	0x3fbb5021f365dd58              # double 0.10669147674876933
	.quad	0x3feaf2b22492fbd6              # double 0.84212596076383295
	.quad	0x3fe2a709d22f592f              # double 0.58289042522190992
	.quad	0x3fe0b72a15b43700              # double 0.52235893477492823
	.quad	0x3fcb4577ba797bfc              # double 0.21305748563005966
	.quad	0x3f9e5dc0bc8434a0              # double 0.029654513841752661
	.quad	0x3fb39299312eb638              # double 0.076455664164961301
	.quad	0x3fc10821c4c4c944              # double 0.13306066615911949
	.quad	0x3fe4af115d8e17fa              # double 0.64637058517905577
	.quad	0x3fc2759ced127190              # double 0.14421426368506873
	.quad	0x3feb38c29ce21ef8              # double 0.85067873612658129
	.quad	0x3fb392d052423258              # double 0.076458950121556568
	.quad	0x3fc7b433f1694004              # double 0.18518685615208608
	.quad	0x3fecc3fa04fca32b              # double 0.89892292951581021
	.quad	0x3fecb71bcb4542a4              # double 0.89735212041167189
	.quad	0x3fc52949f888e390              # double 0.16532253871426095
	.quad	0x3fdcc47053ee787a              # double 0.4494896716731841
	.quad	0x3fd4b4b9339a18a0              # double 0.32353048362018377
	.quad	0x3fc27293a43a4234              # double 0.14412160414623687
	.quad	0x3fbdb04f91d2d678              # double 0.11597153959413642
	.quad	0x3fa6cc63a9eb1650              # double 0.044528116695386033
	.quad	0x3fe1ab13f3d2638b              # double 0.5521335374970574
	.quad	0x3fe209bd221fa5ff              # double 0.56368881859560804
	.quad	0x3fa2a61ff2c7e9f0              # double 0.03642368162759968
	.quad	0x3fdeabdef049ebea              # double 0.47924016442965345
	.quad	0x3fb1e1cc2e275ac0              # double 0.06985164763259899
	.quad	0x3fe5ad28019b24f1              # double 0.67738724054029664
	.quad	0x3fd4bad089c03b20              # double 0.323902258417478
	.quad	0x3feb35c7dff94cf8              # double 0.85031503434075173
	.quad	0x3fee57a4d93d70ff              # double 0.94819872312248765
	.quad	0x3fe63ffd2a7e8610              # double 0.6953111486402026
	.quad	0x3fe97da026498f9f              # double 0.79658515432355503
	.quad	0x3fe1ac11a71f0951              # double 0.55225451126924885
	.quad	0x3fb47d4c0539c538              # double 0.080036879802510508
	.quad	0x3fc2b3e96aaa9e24              # double 0.14611547191928864
	.quad	0x3fe31367ffe8dafb              # double 0.59611892683355394
	.quad	0x3fcb92ff65cdc838              # double 0.21542351218119093
	.quad	0x3f82a3b0d697bcc0              # double 0.0091012778748037481
	.quad	0x3fee90611c126353              # double 0.95512443049220008
	.quad	0x3fccaa247eb1655c              # double 0.22394233881167736
	.quad	0x3fd8cc9243ab38ce              # double 0.38748604400906295
	.quad	0x3fe1c0c1038bc436              # double 0.55477953617640341
	.quad	0x3fd7d3964273f9bc              # double 0.37228924264482166
	.quad	0x3feb3845cde5d64b              # double 0.85061922277845647
	.quad	0x3fc88297c54b5314              # double 0.19148537763126028
	.quad	0x3fecbc3c15810d5c              # double 0.89797786903401854
	.quad	0x3fd2774aec7682e2              # double 0.28853104679187258
	.quad	0x3fd48210259af866              # double 0.32043842003247958
	.quad	0x3fd29f53584ad882              # double 0.29097446081448919
	.quad	0x3fd84eaad73c2e06              # double 0.37980147379923357
	.quad	0x3fb3a7dbf7144cb8              # double 0.076780078718274747
	.quad	0x3fe5b064e41152c5              # double 0.67778248352495807
	.quad	0x3fee9b38715e5fc2              # double 0.95644781248392285
	.quad	0x3fe17abc6f4be587              # double 0.54623243081657413
	.quad	0x3fe4702f1feaa762              # double 0.63869434579576656
	.quad	0x3fb56df2c6aaeb18              # double 0.083708928587764908
	.quad	0x3fce5683da8078c4              # double 0.23701522988353052
	.quad	0x3fdce97513a30a98              # double 0.45174910466827489
	.quad	0x3fe03c83d9e25895              # double 0.50738709025860607
	.quad	0x3fee108500cc62d3              # double 0.93951654582914512
	.quad	0x3fc08369343ab834              # double 0.129010344030975
	.quad	0x3f820d4928318740              # double 0.0088144030943940743
	.quad	0x3feed7c42c9c807d              # double 0.96383866036559562
	.quad	0x3fe85633d550abef              # double 0.7605227629004484
	.quad	0x3fe0a9c5d017dd54              # double 0.5207242073364946
	.quad	0x3fe4155f36a72a8e              # double 0.62760887789166175
	.quad	0x3fa3ab9d7389ca30              # double 0.038418693879880172
	.quad	0x3fc9cf8c51404744              # double 0.20164636580789808
	.quad	0x3fcf21e4544d024c              # double 0.24322179905176922
	.quad	0x3feffbb80b7b3892              # double 0.99947740786025663
	.quad	0x3fe1d04957d885dc              # double 0.55667559773808817
	.quad	0x3fe2808a7f6511cb              # double 0.57819104081914341
	.quad	0x3fac44ac916a1a60              # double 0.055211441756047419
	.quad	0x3fd230b333db8eea              # double 0.28422241272185877
	.quad	0x3fedf7a048ae7ffb              # double 0.93647779651291729
	.quad	0x3fe63dc39a85195e              # double 0.69503956012412593
	.quad	0x3fb046e5ecbbd690              # double 0.063581819816898255
	.quad	0x3fee0ecfc9f2d43e              # double 0.93930806582523707
	.quad	0x3f736651ad0d7a80              # double 0.0047362509220351123
	.quad	0x3fd0533a9e43c39c              # double 0.25507989364182904
	.quad	0x3fdd7813c0941f26              # double 0.46045392805580077
	.quad	0x3fe5409e39dde3a3              # double 0.66413794805622606
	.quad	0x3fea1f862de87492              # double 0.81634816137706623
	.quad	0x3fe995b94aed8e3b              # double 0.79952683100095301
	.quad	0x3fc80e474f63f94c              # double 0.18793574692240111
	.quad	0x3fedd30fa24729cc              # double 0.93201429076116815
	.quad	0x3fdf4f117caca46a              # double 0.4892009465716628
	.quad	0x3fe504269e61ab54              # double 0.65675669607058262
	.quad	0x3fc71a10b2784d38              # double 0.18048294748641935
	.quad	0x3fe7e960556221cc              # double 0.7472383182185296
	.quad	0x3fdfbd1a7588888c              # double 0.49591695287575344
	.quad	0x3fcf4cbfe9c064f4              # double 0.24452971376084742
	.quad	0x3fe88e0f15d44802              # double 0.76734117759247078
	.quad	0x3fd569513b3963b2              # double 0.33455305846797068
	.quad	0x3fec3e9290962d1b              # double 0.88263824691367476
	.quad	0x3fc1d81a94ff7054              # double 0.13940746569903928
	.quad	0x3fc62a50d9a01538              # double 0.17316637636410248
	.quad	0x3fe5ed0464ff2182              # double 0.68518275953196928
	.quad	0x3fe664946ec26de0              # double 0.69977780945503909
	.quad	0x3feb61c43399e571              # double 0.85568437651015306
	.quad	0x3fd88777eac2b51c              # double 0.38326833654248715
	.quad	0x3fdf75ee48b9bfa4              # double 0.491572924634051
	.quad	0x3fe9a75838055bbe              # double 0.80167780820453749
	.quad	0x3fd6e6d115c6ca00              # double 0.35783793570149669
	.quad	0x3fe75f00557a525f              # double 0.73034683890234564
	.quad	0x3fe349e6d619517f              # double 0.60277120414916385
	.quad	0x3fc37a216e5deaac              # double 0.15216462983138024
	.quad	0x3fecd42cc5d5e11c              # double 0.9009002555822323
	.quad	0x3fd2dabe8186f24e              # double 0.29460108422407394
	.quad	0x3fe71476b2bbf420              # double 0.72124800595304706
	.quad	0x3f81d0df33909dc0              # double 0.008699172745834427
	.quad	0x3fe3f2a64ef476e0              # double 0.62337031765829565
	.quad	0x3feb11515bd3f2a7              # double 0.84586399016514668
	.quad	0x3fe4f2063b991350              # double 0.65454398765778343
	.quad	0x3fd7a72b1dbbca7e              # double 0.36957815078418566
	.quad	0x3fcf07c1db7f68bc              # double 0.24242423265133606
	.quad	0x3fefd436d240d3fe              # double 0.99465504708371077
	.quad	0x3fede6f07084bcfe              # double 0.93444082237502335
	.quad	0x3fe15eecdb63fdc3              # double 0.54283755159115576
	.quad	0x3fedc700d78775a1              # double 0.93054239364180458
	.quad	0x3fdb59cc29ae170e              # double 0.42735580511394822
	.quad	0x3fee2a03c4d6b5a3              # double 0.94262875027714121
	.quad	0x3fc282c150ae2b3c              # double 0.14461533011884764
	.quad	0x3fb40d77ba1c1bd0              # double 0.078330500542605152
	.quad	0x3febe42675a1882d              # double 0.8716003701667937
	.quad	0x3fe2cc69a8f2cf52              # double 0.58745272634267054
	.quad	0x3feb8c981a152fb3              # double 0.86091237158097156
	.quad	0x3fe3724a86e9bfda              # double 0.6077015528699079
	.quad	0x3fdf421367617cce              # double 0.48840794654638564
	.quad	0x3fda8c3844471dd4              # double 0.41480833690408514
	.quad	0x3fe8e27d58bb981c              # double 0.7776476605474758
	.quad	0x3fd2def22eeba8a8              # double 0.29485754568180278
	.quad	0x3fcdb7d1ea57dfe4              # double 0.23217224066297526
	.quad	0x3febb46d5ad1c215              # double 0.86577480066449886
	.quad	0x3feecb33dfc141dd              # double 0.9623050089085684
	.quad	0x3f72bca49cf0c700              # double 0.0045744352528787058
	.quad	0x3fe4a19b934b2017              # double 0.64472750442746729
	.quad	0x3fc32d21a83a1cc4              # double 0.14981480325898222
	.quad	0x3fe95a0f15dbdedf              # double 0.79224352139769028
	.quad	0x3fe0d640e78ce35c              # double 0.52615399574925048
	.quad	0x3fac88b174eb3b70              # double 0.055730386278461164
	.quad	0x3fe77c2c47622447              # double 0.73390783254684144
	.quad	0x3fe0d4d7522d4ed9              # double 0.52598157930557499
	.quad	0x3fdbd80569041d56              # double 0.43505988364673465
	.quad	0x3fd8d9f79e547500              # double 0.38830366575150776
	.quad	0x3fe2504a94a86e1a              # double 0.57230118784667927
	.quad	0x3fec3b18a2f47952              # double 0.88221389605659284
	.quad	0x3fea7cd86667b925              # double 0.82773990632066285
	.quad	0x3fdcce731835b724              # double 0.45010068287125393
	.quad	0x3fdc5e622417c0f4              # double 0.44326070332228018
	.quad	0x3fe2486078ff98bc              # double 0.57133506424431557
	.quad	0x3fb3a157904c3048              # double 0.076680634240063772
	.quad	0x3fd65d897d96c958              # double 0.34945904984046683
	.quad	0x3feb7417bb0850a3              # double 0.85792147187978107
	.quad	0x3fef8c8ed96dbcbe              # double 0.98590795961890598
	.quad	0x3fe038c44efcb31e              # double 0.50692954470796159
	.quad	0x3f8f8926d7fc1940              # double 0.01539831492074184
	.quad	0x3fa4586373aa4f90              # double 0.039736850613876773
	.quad	0x3fe417e18d5498ff              # double 0.62791516879659059
	.quad	0x3fecb5047d235936              # double 0.89709686699897051
	.quad	0x3fdd176e0a3c3140              # double 0.45455504416965553
	.quad	0x3fdd33d8205c147e              # double 0.45628932151914359
	.quad	0x3fea0de3b749ebd0              # double 0.81419549749932152
	.quad	0x3fd0733d7ec93bd0              # double 0.25703370458080332
	.quad	0x3fe8f4a185b404e3              # double 0.77986217607408681
	.quad	0x3faea4eb770c99d0              # double 0.0598519881080396
	.quad	0x3fd773a9a544d8c0              # double 0.36643448962730574
	.quad	0x3fb12b58ed6a6be8              # double 0.067067678416080079
	.quad	0x3fcebfa587d898a4              # double 0.24022359021291095
	.quad	0x3fda0f96cf22f716              # double 0.40720148304159076
	.quad	0x3fde053b1788028c              # double 0.46906926439263752
	.quad	0x3fdbd73ae374c192              # double 0.43501159870631867
	.quad	0x3fb8cf0658ce81a8              # double 0.096908947640719334
	.quad	0x3fd79f733ee9e896              # double 0.36910706657330061
	.quad	0x3fd4c4dca329e8e4              # double 0.32451549467044871
	.quad	0x3fc3c983369291d0              # double 0.15458717503237418
	.quad	0x3fe045c933d1259e              # double 0.50851879234794573
	.quad	0x3fe545fa8dbb1fee              # double 0.66479232484652839
	.quad	0x3fc6c0e04b462d50              # double 0.17776111293310715
	.quad	0x3febcfe075137628              # double 0.86912558428202136
	.quad	0x3fcb686db5ad0118              # double 0.21412440653694698
	.quad	0x3fe49ac4d93596c5              # double 0.64389269279191608
	.quad	0x3fdc5583aa5770e4              # double 0.44271937975805842
	.quad	0x3febc5c67575cfa3              # double 0.86789248410649511
	.quad	0x3fcd7725a92b79a0              # double 0.23019858131642668
	.quad	0x3fec7b6261bf5c9f              # double 0.89006156054792374
	.quad	0x3fe7a19c019be3a1              # double 0.73847770990606787
	.quad	0x3fe7fb64a63209c1              # double 0.74943764171649019
	.quad	0x3fb4105bb2de3958              # double 0.078374606293640681
	.quad	0x3fea0ea97acbccc5              # double 0.81428979858028383
	.quad	0x3fcd502bcbc93908              # double 0.22900912714471411
	.quad	0x3fd3666254a34068              # double 0.30312402978325403
	.quad	0x3fe9e82afe225a34              # double 0.80959081302245872
	.quad	0x3fe86a745943104a              # double 0.76299493249872197
	.quad	0x3fd9444fca653a42              # double 0.39479441418817285
	.quad	0x3fe2a9197241068c              # double 0.58314201655612541
	.quad	0x3fd94c6911cddaa0              # double 0.39528872240718194
	.quad	0x3fe5a05dd1889e22              # double 0.67582598614257372
	.quad	0x3fef12c6d30ac803              # double 0.97104207247889495
	.quad	0x3fe133f9bfad46f4              # double 0.53759467541587336
	.quad	0x3fea20f152ea5f5f              # double 0.81652132219731388
	.quad	0x3fe8bbba89eb2918              # double 0.77291609704232922
	.quad	0x3fed88d6f7e86ac2              # double 0.92295406741626373
	.quad	0x3faeb1a814edd1c0              # double 0.059949162058646532
	.quad	0x3fda77bf49bdf168              # double 0.41355879021991493
	.quad	0x3fd5fcf80dca312c              # double 0.34356500002538115
	.quad	0x3fe17e99241f5f2a              # double 0.54670388274368986
	.quad	0x3fe791fe2b0798f8              # double 0.73657139209970435
	.quad	0x3fc7389de09910b4              # double 0.18141530482001189
	.quad	0x3fe01bc12f57feed              # double 0.50338801619360896
	.quad	0x3fe2c6690ff2ba8d              # double 0.5867200194823724
	.quad	0x3fabe390d55273d0              # double 0.054470563926976134
	.quad	0x3fed34690531f636              # double 0.91264773382835673
	.quad	0x3fecefed163f061a              # double 0.90428785653074617
	.quad	0x3fc8940b510d6154              # double 0.19201795060758775
	.quad	0x3fe120fa83845353              # double 0.53527570425885995
	.quad	0x3fd3f354ec1664b2              # double 0.31172679000298864
	.quad	0x3fea3b7556be9f89              # double 0.81975809995945881
	.quad	0x3fe7d0907e690bc7              # double 0.74420952500838033
	.quad	0x3fdfaf6f6f04f7a0              # double 0.49508272020090693
	.quad	0x3fe935c4db0a88bb              # double 0.78781359464144118
	.quad	0x3fcef81c8bfc6874              # double 0.24194676242115387
	.quad	0x3fd9b9c736befb34              # double 0.40196400018969602
	.quad	0x3fe112953ff5e3a5              # double 0.53351843349729633
	.quad	0x3fe52224cc16f8d0              # double 0.6604179369094485
	.quad	0x3fd723b22f305d98              # double 0.36155371292394411
	.quad	0x3febb59b7017726f              # double 0.86591884510887762
	.quad	0x3fe09e2eef2219b9              # double 0.51930948930458165
	.quad	0x3fef18b25661d235              # double 0.97176472541338532
	.quad	0x3fe17b17081d11af              # double 0.54627563080480523
	.quad	0x3fd4925ee34d3f0e              # double 0.32143375585018041
	.quad	0x3fe429cdbcbd2390              # double 0.63010298598338643
	.quad	0x3fe41160223abc9c              # double 0.62712103543698872
	.quad	0x3fec716ef26de94c              # double 0.88884684895973853
	.quad	0x3fe9ffd0c99c3fbd              # double 0.81247748734494218
	.quad	0x3fd215f88e7226f8              # double 0.28259099875195615
	.quad	0x3fe82e5a2c6b80e9              # double 0.75565823245781616
	.quad	0x3fc5b30548c07bcc              # double 0.16952577640856104
	.quad	0x3fdfea81be949828              # double 0.49868816005107641
	.quad	0x3fc51c4608c62948              # double 0.16492534092351208
	.quad	0x3fd34d0ee6e7ccbc              # double 0.30157825993883214
	.quad	0x3fc433a99cf58de4              # double 0.1578266159441305
	.quad	0x3fc693e33673f924              # double 0.17638816984976657
	.quad	0x3fd904ac0ef17b7e              # double 0.39091016253762934
	.quad	0x3febe6b03094d82a              # double 0.87191018570479639
	.quad	0x3fe3790228ef08d9              # double 0.60852153773182771
	.quad	0x3fc26e671c43ed18              # double 0.14399422531264672
	.quad	0x3fee2d3ccf3a99b7              # double 0.94302216028591246
	.quad	0x3feeb376501855a5              # double 0.95940700191083705
	.quad	0x3fb69dc916959790              # double 0.088345115674739682
	.quad	0x3fd25ad352fa5c62              # double 0.28679354766194909
	.quad	0x3fd278c6111d0632              # double 0.2886214415667353
	.quad	0x3feed093770574d3              # double 0.96296094175672874
	.quad	0x3feb6376fb41125a              # double 0.85589169571955925
	.quad	0x3fc499c42b6092a4              # double 0.16094257467297723
	.quad	0x3fe19309db22c05e              # double 0.54919903564406147
	.quad	0x3fb7c746391bd880              # double 0.092884434645243985
	.quad	0x3fed5a511493a934              # double 0.91727499026209224
	.quad	0x3fa80471fb3f4c40              # double 0.046908914489585118
	.quad	0x3fbbf74651237048              # double 0.10924186211508513
	.quad	0x3fe980c4ab793f28              # double 0.79696877947751421
	.quad	0x3fb74ed26b16f4a0              # double 0.091046477456034669
	.quad	0x3fdbcd735653faf6              # double 0.43441470556710671
	.quad	0x3fd980c0ce682e2a              # double 0.3984834685986437
	.quad	0x3fd721d6969e14c4              # double 0.36144032200565968
	.quad	0x3fc7eed044f68738              # double 0.18697551123937628
	.quad	0x3fc87a54a03ad808              # double 0.19123323272441461
	.quad	0x3fe5e9db5a4b8c8e              # double 0.68479697833790154
	.quad	0x3fe5d390fae6ab7c              # double 0.68207596782791269
	.quad	0x3fceda870cb1b24c              # double 0.2410439311965028
	.quad	0x3fd9b9266d4d1c3e              # double 0.40192566560694221
	.quad	0x3fcb72a286407c58              # double 0.21443587832706856
	.quad	0x3fddccfe2c939d70              # double 0.46563677170930529
	.quad	0x3fea0a7268bb8b14              # double 0.81377525764068758
	.quad	0x3fead2d55131342b              # double 0.83823648317195898
	.quad	0x3f92de0a5e956a60              # double 0.018425142310073972
	.quad	0x3fec9e85d5c511f9              # double 0.89435092689433227
	.quad	0x3fecadc499b8d1d7              # double 0.89621191047495585
	.quad	0x3fd408d368fb3278              # double 0.31303868534158807
	.quad	0x3fa5afab833e9c70              # double 0.04235588051897643
	.quad	0x3fd52a90949d0b40              # double 0.33072294724495421
	.quad	0x3fe701b44067376f              # double 0.71895802096126527
	.quad	0x3fe88f80d3a7d926              # double 0.76751748408313314
	.quad	0x3fcb9262b1d04828              # double 0.21540483171753633
	.quad	0x3fda4e3a5928f2ac              # double 0.41102465350176476
	.quad	0x3febd349ace4797d              # double 0.86954196708738574
	.quad	0x3fcb02a0a62af288              # double 0.21101768602047266
	.quad	0x3fdb3fb7f3008bd6              # double 0.42576407175709841
	.quad	0x3fd6b60b0aea4d1e              # double 0.35486103120747881
	.quad	0x3fdb812191566a22              # double 0.42975653832550809
	.quad	0x3fbb540d736f3d10              # double 0.10675129001832695
	.quad	0x3f90c2dd313e7060              # double 0.016368347292527452
	.quad	0x3fcc413d2a425ff8              # double 0.22074093402329686
	.quad	0x3fe49e5401f81fba              # double 0.64432716736427342
	.quad	0x3fd127516c6174c0              # double 0.26802478393603835
	.quad	0x3fc6e34603a3132c              # double 0.17881083657825891
	.quad	0x3fee8427c8cadc6f              # double 0.95363225190420831
	.quad	0x3fdb857b8d4b76e4              # double 0.43002213285750046
	.quad	0x3f8ab5705c539b00              # double 0.013041379754623161
	.quad	0x3fbcf050b56d4558              # double 0.11304191998830981
	.quad	0x3fe585f4a99a2019              # double 0.67260201573754153
	.quad	0x3fefde0c5e7e41e0              # double 0.9958555074281854
	.quad	0x3fe80f3435f024b8              # double 0.75185595068719291
	.quad	0x3fd32999ee562056              # double 0.299414141416951
	.quad	0x3fef5f7bd662f9f5              # double 0.98040572998416897
	.quad	0x3fe534717bb7954e              # double 0.66265176928997405
	.quad	0x3fb42025daa82c08              # double 0.078615537531888546
	.quad	0x3fd28e82eedff15c              # double 0.28994820907225516
	.quad	0x3fe39380cbbba25d              # double 0.61175575057593401
	.quad	0x3fe077c27b0f058e              # double 0.514619102810842
	.quad	0x3fdb06e668185464              # double 0.42229614415675187
	.quad	0x3fd9f3b469bd2c7c              # double 0.40549955679006877
	.quad	0x3feb78c9282b5b78              # double 0.85849435659007067
	.quad	0x3fcae6eabfebdc08              # double 0.21017202731283668
	.quad	0x3fea9c579b98e4d0              # double 0.8315847434052106
	.quad	0x3feeccfe3a3854e8              # double 0.96252356883146905
	.quad	0x3fed0f0ec04fa72c              # double 0.90808808861513545
	.quad	0x3fe574bfd58d38c3              # double 0.67050162991815687
	.quad	0x3fe5baea783dc90b              # double 0.67906688198698484
	.quad	0x3fba9ac609bb6608              # double 0.10392415750120432
	.quad	0x3fe4ec01804b323a              # double 0.65380930955286165
	.quad	0x3fe6a5a6a8cf87f1              # double 0.7077210709651337
	.quad	0x3feb47dd67c01219              # double 0.85252256644941149
	.quad	0x3fec0331303e6154              # double 0.87538966581909471
	.quad	0x3fe609c35840c15d              # double 0.68869178044227974
	.quad	0x3fd049c618d62dfa              # double 0.25450279641583473
	.quad	0x3fc13a3ccb23699c              # double 0.1345897666822794
	.quad	0x3fc78e61b2fea9f4              # double 0.18403264274577646
	.quad	0x3fde382ba6c22380              # double 0.47217837605472113
	.quad	0x3fb212793e0760e8              # double 0.070594384807353472
	.quad	0x3fc0580da6ee66c8              # double 0.12768717432918764
	.quad	0x3fe319c9f51f8b07              # double 0.59689805865886647
	.quad	0x3f9ab39b3e897920              # double 0.026075769130664672
	.quad	0x3fd2548e6b379558              # double 0.28641090841695904
	.quad	0x3fe04812bd6bcfb9              # double 0.50879799839321216
	.quad	0x3fced294f52ab0a4              # double 0.24080144854577157
	.quad	0x3fc623c1c8c5e5cc              # double 0.17296621611948948
	.quad	0x3fc060bfb207c100              # double 0.12795253937611761
	.quad	0x3fe5ad21bd844934              # double 0.67738425269116087
	.quad	0x3fd6c13d433e0e8a              # double 0.35554439131394899
	.quad	0x3fecf8d654caf7be              # double 0.9053756385908327
	.quad	0x3fcbb5a717959c98              # double 0.21648110057433168
	.quad	0x3fb926d48e7a93e0              # double 0.098248753342502492
	.quad	0x3fd604c653eaa652              # double 0.3440414256570864
	.quad	0x3fd34a53ec53343c              # double 0.30141161039938758
	.quad	0x3fd406a1ca0f54a2              # double 0.31290478451166781
	.quad	0x3fd43e71376ddbea              # double 0.31631117260934494
	.quad	0x3fedd1a25cac7019              # double 0.93184011555013335
	.quad	0x3feebe6a37bb5887              # double 0.96074400792237291
	.quad	0x3fca3d5473458d70              # double 0.20499663952351055
	.quad	0x3fe1e75a346c8fe1              # double 0.55949125517917875
	.quad	0x3fe089fd169e1935              # double 0.5168443147420364
	.quad	0x3fdab66038966f9a              # double 0.4173813393224407
	.quad	0x3fe0c1cc1ff4a482              # double 0.52365690461478231
	.quad	0x3fec03e56ab72a2b              # double 0.87547560541981306
	.quad	0x3fe63d21d9f90f9e              # double 0.6949624306948754
	.quad	0x3fe18424c05cfb93              # double 0.54738080569210223
	.quad	0x3fe13a13216fc1b4              # double 0.53833920031143245
	.quad	0x3fe535f6f7644b7d              # double 0.6628374893065111
	.quad	0x3fd14dda4a08b6a2              # double 0.27037675123106386
	.quad	0x3fc4e2df82a18cd8              # double 0.16317361715764522
	.quad	0x3fd053b6b5bb0ee6              # double 0.25510947940004625
	.quad	0x3fc8519a43340820              # double 0.18999031335266725
	.quad	0x3fd87efb088ef2ee              # double 0.38275028072148032
	.quad	0x3fd0cd4b361c7a70              # double 0.26253013881970499
	.quad	0x3fec52242dd8405c              # double 0.88502701715516307
	.quad	0x3fd91e39caa93ffc              # double 0.39246983328939655
	.quad	0x3fe8b9b5258d6cea              # double 0.77266938528501083
	.quad	0x3fd65b49cc667bbc              # double 0.34932179413766185
	.quad	0x3fcbcb41a9d53770              # double 0.21714039604779201
	.quad	0x3fb50796a5424950              # double 0.08214704069749712
	.quad	0x3fcbac9858f6f59c              # double 0.21620468467692155
	.quad	0x3fe085cbd3355c7d              # double 0.51633254291199615
	.quad	0x3fe1f7d80148a730              # double 0.56150436640493773
	.quad	0x3fb9bef968b458b0              # double 0.10057028585683514
	.quad	0x3fa54c05bfaed3e0              # double 0.041595630310815812
	.quad	0x3fefd8c72757080d              # double 0.99521215137088037
	.quad	0x3fe1fda78b10de2b              # double 0.56221367989832538
	.quad	0x3fe3286ff9f35caf              # double 0.59868620699389463
	.quad	0x3fdc4c8705adbf9a              # double 0.44217086367188474
	.quad	0x3f92c3b854db3460              # double 0.018324737719741413
	.quad	0x3fa82ad9a4c4f630              # double 0.047201920855951207
	.quad	0x3fd0b51a0b9c71fc              # double 0.26105357297799947
	.quad	0x3fd316fff3ac1092              # double 0.29827879711252436
	.quad	0x3fd2942f9070b1e0              # double 0.2902945433186499
	.quad	0x3fd51c2d77e49950              # double 0.32984482487008382
	.quad	0x3fb9447e5f3b6b98              # double 0.098701380014445284
	.quad	0x3fe9bf526f5ee95c              # double 0.8046047377786567
	.quad	0x3fd92bbe938a2c78              # double 0.39329494865587078
	.quad	0x3fea6b09ec5bc9d6              # double 0.82556625522402771
	.quad	0x3f7dd1e993ecbd80              # double 0.0072802662023571107
	.quad	0x3fefed231f8f69c4              # double 0.99769741214850471
	.quad	0x3fe033d03383ffca              # double 0.50632486402172927
	.quad	0x3fb8226a9fa15dc8              # double 0.094275154087305357
	.quad	0x3fe326445fa5c4ca              # double 0.59842127495917308
	.quad	0x3febf9a261cbc66c              # double 0.87422293759136726
	.quad	0x3fdc57b19830e734              # double 0.44285240042119089
	.quad	0x3fd1bbceef5059ce              # double 0.27708791132445476
	.quad	0x3fd65931bd49f896              # double 0.34919398770569765
	.quad	0x3fd7a2959e471d38              # double 0.36929836708846464
	.quad	0x3fb5889d8f2adc20              # double 0.084115836575492597
	.quad	0x3fa71dc638fbc120              # double 0.04514903493498168
	.quad	0x3fd2dd2d60cebe74              # double 0.29474958852640687
	.quad	0x3fe1785388da5268              # double 0.54593826989237204
	.quad	0x3fe34852c2c0460d              # double 0.60257852589910643
	.quad	0x3fefb1b2a934dcb2              # double 0.99044163749831271
	.quad	0x3fe2e94793eb48a7              # double 0.5909765137714843
	.quad	0x3fbd415803f72148              # double 0.1142783174210581
	.quad	0x3fe72fcceb3e6960              # double 0.72458501764348782
	.quad	0x3fe7e090b2959fc5              # double 0.74616274719027642
	.quad	0x3f8f620de8569080              # double 0.01532374253549329
	.quad	0x3fedef40fb0c84d0              # double 0.93545578988064371
	.quad	0x3fd90a95db9f1d44              # double 0.39127108046928449
	.quad	0x3fe571efda1d8f5c              # double 0.67015831566503037
	.quad	0x3fe21e833a5a2777              # double 0.56622468373210111
	.quad	0x3fe9547bfb040ecf              # double 0.79156302477391616
	.quad	0x3fd93a20488aeea0              # double 0.39417273601768876
	.quad	0x3fdc4effa9c0ab3c              # double 0.44232169701961133
	.quad	0x3fe1d90a00fe7190              # double 0.55774402803540291
	.quad	0x3fd71092f71a73ec              # double 0.36038660174545956
	.quad	0x3fd3d27a6ce9fb78              # double 0.3097215713132111
	.quad	0x3fecfebb1d3752c9              # double 0.90609508234282388
	.quad	0x3fd5532f61c2cf94              # double 0.33320221468897526
	.quad	0x3fe624dca3bd3cb8              # double 0.69199974041284573
	.quad	0x3fe91447143e4c6b              # double 0.78372529939441671
	.quad	0x3fcee8db80796578              # double 0.24148124478487509
	.quad	0x3fe3a5cdc5adc4b6              # double 0.61398972138535757
	.quad	0x3fd00f1b3da05fc8              # double 0.25092202203950054
	.quad	0x3fd24a04c5fc27fa              # double 0.28576773962470237
	.quad	0x3fea9d03f0613493              # double 0.83166691731607256
	.quad	0x3fd91d9145bf5c7e              # double 0.39242965518264572
	.quad	0x3feafd3283e61e2b              # double 0.84340787660125238
	.quad	0x3fcae7e3789e93a0              # double 0.21020167722340677
	.quad	0x3fef2fbdeb3be2ae              # double 0.97457786506773458
	.quad	0x3fe3704e22d56e13              # double 0.60745913318118239
	.quad	0x3fef4988d1018688              # double 0.97772637196995137
	.quad	0x3fe82440fc1d4797              # double 0.75442551842774008
	.quad	0x3fcba56bfaa79128              # double 0.21598577250473139
	.quad	0x3fd731449c72b81c              # double 0.36238208082329648
	.quad	0x3fef30f3c5432170              # double 0.97472561385897727
	.quad	0x3fe5c5d45cc03f61              # double 0.68039911380217799
	.quad	0x3fda0610ee8807c4              # double 0.40662024778441386
	.quad	0x3fe1938d41e4765b              # double 0.54926169271102354
	.quad	0x3feeaaea79e5a9b8              # double 0.95836376007110057
	.quad	0x3fd78f7bb895e556              # double 0.36813252473765112
	.quad	0x3fee46eba7ccda19              # double 0.94615729115941172
	.quad	0x3fda8a2283353034              # double 0.41468107999094461
	.quad	0x3fc982afd49147d0              # double 0.19930074576637802
	.quad	0x3fe0b9f73c2af394              # double 0.52270089866179825
	.quad	0x3fd61d76a18fb282              # double 0.34554830338928622
	.quad	0x3fd9f3a8a9d38b5a              # double 0.40549675545314801
	.quad	0x3fe924bb06c37a68              # double 0.78573371239674561
	.quad	0x3fd05b6e34ec1bb8              # double 0.25558047455018196
	.quad	0x3fd0c8bbb41b1c56              # double 0.26225178326098353
	.quad	0x3fc840842a652844              # double 0.1894688803679988
	.quad	0x3fd087fcd9ea809a              # double 0.25830003052579686
	.quad	0x3f8abe340cc63040              # double 0.013058096542202802
	.quad	0x3fc7f11cce479b74              # double 0.18704567024471042
	.quad	0x3feea85a9235b6fe              # double 0.95805100018125677
	.quad	0x3fd920fba56988f8              # double 0.39263812211551352
	.quad	0x3fd5541a72d94e2e              # double 0.33325825896938255
	.quad	0x3fc8970db0d4a8c4              # double 0.19210978636085063
	.quad	0x3fe14a7d83e9d279              # double 0.54034305347757006
	.quad	0x3fee87815d39e642              # double 0.95404117782818099
	.quad	0x3fc21d8c64fedf70              # double 0.14152674609590177
	.quad	0x3fcba850ced98d40              # double 0.21607408619011359
	.quad	0x3fe6a7fc7548d5d0              # double 0.70800612361079551
	.quad	0x3fa23f539fafadc0              # double 0.035639394038152528
	.quad	0x3fe6338d7b7af914              # double 0.69379304997690605
	.quad	0x3feb3cd8217ade44              # double 0.85117727793744579
	.quad	0x3fd6360ffc85c230              # double 0.34704970989608608
	.quad	0x3fe9a48546abc030              # double 0.80133308222685251
	.quad	0x3fe6f42a16ed9554              # double 0.71730522611748393
	.quad	0x3fd98b3cb95aab30              # double 0.39912336445802321
	.quad	0x3fed24480773b3af              # double 0.91067887740574871
	.quad	0x3fefd6550e9d1bea              # double 0.99491360525359807
	.quad	0x3fefbd2c27965b2b              # double 0.99184234363460654
	.quad	0x3fe33ab6f9c717d6              # double 0.60091732773502815
	.quad	0x3fd8e100e77f1506              # double 0.38873312575408681
	.quad	0x3fa13466e3b02eb0              # double 0.033602919858905067
	.quad	0x3fd2319dd83037ae              # double 0.2842783557142593
	.quad	0x3fea059b6dc54d00              # double 0.81318446578589487
	.quad	0x3fe5d5598c0d570e              # double 0.68229367593696266
	.quad	0x3fec54dea106e4e9              # double 0.88536006403515188
	.quad	0x3fd241961d80cd02              # double 0.28525307542004452
	.quad	0x3fe402cea4e0df4a              # double 0.62534267618955508
	.quad	0x3f9ab7ee8ba5fae0              # double 0.026092269204577856
	.quad	0x3fc89f7b2646fb64              # double 0.19236697548873416
	.quad	0x3fd40ca67ae9968a              # double 0.31327211383027331
	.quad	0x3fe80f938e0932ed              # double 0.75190141431229807
	.quad	0x3f822a7501cc5980              # double 0.0088700429128436564
	.quad	0x3fed363e9496a3ea              # double 0.91287163754634304
	.quad	0x3fc3f7ab3f27c964              # double 0.15599575599442084
	.quad	0x3fdc2fb290634166              # double 0.44041122532237009
	.quad	0x3febe84e6b823967              # double 0.87210770604887677
	.quad	0x3fcdf9de6198cd10              # double 0.23418788686249359
	.quad	0x3fb9c42b638284c8              # double 0.10064955882491511
	.quad	0x3fc3b236facb0948              # double 0.15387618299252837
	.quad	0x3fe6549de900fc97              # double 0.6978292036873367
	.quad	0x3feff0b4dcaab611              # double 0.99813311671249682
	.quad	0x3fd5253544a5fb78              # double 0.33039600089971755
	.quad	0x3fd739d5d191daf4              # double 0.36290498224063517
	.quad	0x3fe29b6087c78a98              # double 0.58146692771363728
	.quad	0x3fe761f76eb1f2ba              # double 0.73070880527628579
	.quad	0x3fd99091d443c762              # double 0.39944883088093353
	.quad	0x3fa990c253653260              # double 0.049932549171533891
	.quad	0x3fcdb10e93f1bf14              # double 0.23196584915012208
	.quad	0x3fe753b52fec7dc6              # double 0.72896823272815747
	.quad	0x3fd5e81d1d1cc1d0              # double 0.34229209750176626
	.quad	0x3fe8e06ef988b07f              # double 0.77739666688059106
	.quad	0x3fe4981967bf9e0e              # double 0.64356680167560554
	.quad	0x3fd2cc14d6ddb7c4              # double 0.29370614035621778
	.quad	0x3fdfc6558176592c              # double 0.49648034708788447
	.quad	0x3fe42e13bd818739              # double 0.63062464726338086
	.quad	0x3fe70de84133a066              # double 0.72044766173077046
	.quad	0x3fba0b365b8e5240              # double 0.1017335866475344
	.quad	0x3fe2553cac46dcd0              # double 0.57290490768255076
	.quad	0x3fe8d3be74aaaa7e              # double 0.77584765230615438
	.quad	0x3fe36086171b9ae3              # double 0.60553268922089065
	.quad	0x3fe640e1be588e54              # double 0.69542014290750354
	.quad	0x3fd972c4dd772186              # double 0.39762994410968877
	.quad	0x3fe36d6229bc0da2              # double 0.60710247184072252
	.quad	0x3fe0deb9819d278c              # double 0.52718806567394116
	.quad	0x3fee4ffeb075b87a              # double 0.94726500000776004
	.quad	0x3fcbd64a77100f50              # double 0.21747713864908258
	.quad	0x3fdd6d2db0d23468              # double 0.45978872554480299
	.quad	0x3fefda4177eee217              # double 0.99539254593315973
	.quad	0x3fe08d8e901f7163              # double 0.51727989338864366
	.quad	0x3fe586a815b704b0              # double 0.67268757096475973
	.quad	0x3fe93b19a0ee43c2              # double 0.78846436912328266
	.quad	0x3fee339feaee2fa6              # double 0.94380184063765138
	.quad	0x3feb57231808e210              # double 0.85438685125615343
	.quad	0x3fd5c59231492c06              # double 0.34018378079480305
	.quad	0x3fa9d9c790eac450              # double 0.050489651146002346
	.quad	0x3fecbbcb9f6ab789              # double 0.89792424331766185
	.quad	0x3fdd427fa3e2cf64              # double 0.45718375210275597
	.quad	0x3fd710a9662b681e              # double 0.36039195039268346
	.quad	0x3fca8b84218f0b6c              # double 0.20738269461261483
	.quad	0x3fe69e9107c6847d              # double 0.70685626524586065
	.quad	0x3f86ad842f4a9080              # double 0.011073143666472385
	.quad	0x3fc455e027f51d70              # double 0.15887071562813615
	.quad	0x3f9cd4739a4807e0              # double 0.028154188434207472
	.quad	0x3fc14aa6a0a6097c              # double 0.13509066433114103
	.quad	0x3fef7e465762a65b              # double 0.98416440074397415
	.quad	0x3fe4aa21987689f5              # double 0.64576797273576736
	.quad	0x3fe0d37adae3835f              # double 0.52581541778281948
	.quad	0x3fe947a40bbde73e              # double 0.78999521535227024
	.quad	0x3fdce17dd096fa78              # double 0.45126290674298941
	.quad	0x3f8452b071625100              # double 0.0099233421899858065
	.quad	0x3fe007fa0f7485a2              # double 0.50097373026453718
	.quad	0x3fd46e0a34748a78              # double 0.3192163002260382
	.quad	0x3fd17646e37969d2              # double 0.27284404958996078
	.quad	0x3fea96a22d30b95f              # double 0.83088787866817515
	.quad	0x3fe9c6e897df572b              # double 0.80553083098013667
	.quad	0x3fee69689edfbd30              # double 0.95036726980280228
	.quad	0x3fec12ac156b8584              # double 0.87727932151408127
	.quad	0x3fea6d5c2fb90759              # double 0.82584962197163769
	.quad	0x3fb0ab905abfa778              # double 0.065117857127601542
	.quad	0x3fe8d6a27d37c259              # double 0.77620052773097392
	.quad	0x3fee4c8d0e46d3ea              # double 0.94684460438167872
	.quad	0x3fecd054df0f3963              # double 0.90043109480192773
	.quad	0x3feb50b59e1b914a              # double 0.85360222702414856
	.quad	0x3fe7a3970cb12d3c              # double 0.7387194869892606
	.quad	0x3feca425e25a8723              # double 0.89503759584133424
	.quad	0x3fb8a2cc3fb8d420              # double 0.096234098012090374
	.quad	0x3fd4e87582a0abe8              # double 0.32668817288020913
	.quad	0x3fe8c528cb943224              # double 0.77406730424406022
	.quad	0x3fc16e865bc450f8              # double 0.13618545037082419
	.quad	0x3fdc4687f5443d88              # double 0.44180487586796646
	.quad	0x3fd548fdc587647c              # double 0.332580035113615
	.quad	0x3fe24eaceac6c25d              # double 0.5721039376713396
	.quad	0x3feafbf356991cbd              # double 0.8432556811684645
	.quad	0x3fc3a96dcdea8c7c              # double 0.15360806040289166
	.quad	0x3fe5d970eb695550              # double 0.6827931020622291
	.quad	0x3f912e26758f3cc0              # double 0.016777611661208836
	.quad	0x3fc8f8bca9c9e334              # double 0.19509084978542435
	.quad	0x3fe8afdbc7bccdc0              # double 0.77146710406525898
	.quad	0x3fd4d09aa5bddf32              # double 0.32523218332015624
	.quad	0x3fe82a6082207a5c              # double 0.7551729718723652
	.quad	0x3fed5fd8617f0119              # double 0.91794985811432916
	.quad	0x3fe8fa513dee05a5              # double 0.7805563172880069
	.quad	0x3fbbf224ed6299b0              # double 0.10916357799087595
	.quad	0x3fe1666345569938              # double 0.5437485079062645
	.quad	0x3fdadf94a8a7c43a              # double 0.41989628286598057
	.quad	0x3fc3e22da96f19b8              # double 0.15533991597312791
	.quad	0x3fd4e66b5bd2e200              # double 0.32656368224300536
	.quad	0x3fc99657095bb430              # double 0.19990051228470085
	.quad	0x3fe4b9948b078f43              # double 0.64765383867459325
	.quad	0x3fe2b9831f54b470              # double 0.58514553183853302
	.quad	0x3f914f60e7eeae20              # double 0.016904367595698244
	.quad	0x3fae286abcc6cee0              # double 0.058902106803911058
	.quad	0x3fe3bbc66cc53582              # double 0.61667176479538477
	.quad	0x3fc52a853d7eee24              # double 0.16536012175298354
	.quad	0x3fddcc0985ca7626              # double 0.46557844224466505
	.quad	0x3fd0152b2c45ac00              # double 0.25129203151180945
	.quad	0x3fcc2d5cf998c000              # double 0.22013437449777484
	.quad	0x3fc0df14ef4cb0dc              # double 0.13180791554021354
	.quad	0x3fedb4cf3f8ab457              # double 0.92832147989760017
	.quad	0x3fe1f1466423b001              # double 0.56070251043774999
	.quad	0x3fcae4c631c6c150              # double 0.2101066344307676
	.quad	0x3fd31e391a3d0108              # double 0.29871966898282709
	.quad	0x3fe27619b3e7fbea              # double 0.57691655290534283
	.quad	0x3fbcfc3e9730e710              # double 0.11322394553362991
	.quad	0x3feee1b8f2d06ed0              # double 0.96505401062628415
	.quad	0x3fed008f0ecbb46f              # double 0.90631821527280276
	.quad	0x3fb999bd1fc3e7c0              # double 0.10000211740034981
	.quad	0x3fd636604729712a              # double 0.34706885289576184
	.quad	0x3fdba919a79ea2ee              # double 0.43219605797871352
	.quad	0x3fed53ce2b748b19              # double 0.91648014533379574
	.quad	0x3feb16d4e68caed9              # double 0.84653706578452692
	.quad	0x3fec12daca8bdbdf              # double 0.87730159339741565
	.quad	0x3fe5b336115b2b42              # double 0.67812636747235211
	.quad	0x3fe630d27f44849d              # double 0.69345974785769082
	.quad	0x3fee1182934ee554              # double 0.93963745852594593
	.quad	0x3fefaf2aadd1119f              # double 0.99013265560693131
	.quad	0x3fe7f3b0af910b33              # double 0.74849733629557702
	.quad	0x3fdefd487a8ab0ca              # double 0.48420917479485281
	.quad	0x3fd3bc4fefd3bb2a              # double 0.30836866779911765
	.quad	0x3fe0f2a418293c11              # double 0.52961926192245035
	.quad	0x3fd94a9b2ea36b7e              # double 0.39517859987761728
	.quad	0x3fee7dceaea93023              # double 0.95285734284835077
	.quad	0x3fdcbde08a673250              # double 0.44908917919091085
	.quad	0x3fda38dc80068e38              # double 0.40972054007054082
	.quad	0x3fe67ade57d362a4              # double 0.70249859956227967
	.quad	0x3fcead6ac57a8bcc              # double 0.23966726915850101
	.quad	0x3fe3b1cf4f10b243              # double 0.61545529787469666
	.quad	0x3fe5fc9c47b5da37              # double 0.68708623891763565
	.quad	0x3fd5560bbe4063ec              # double 0.33337682322740991
	.quad	0x3fe74173d6b08841              # double 0.7267398064761964
	.quad	0x3fe9f32fc877c1ca              # double 0.81093587068431217
	.quad	0x3fcac53cfc90c9cc              # double 0.20914423305801078
	.quad	0x3fd3d5218ab85ca2              # double 0.30988348528758014
	.quad	0x3fc0b01a497055cc              # double 0.13037422738913873
	.quad	0x3fc78acbd5599ec0              # double 0.18392322461590105
	.quad	0x3fb3917772c4f140              # double 0.076438394088602202
	.quad	0x3fd97ed74f056052              # double 0.39836676327604892
	.quad	0x3fd4d364eaa1f386              # double 0.32540247834531788
	.quad	0x3fe9110a6e337b89              # double 0.78333016894963337
	.quad	0x3fca9a0dc9bfa318              # double 0.20782635069851874
	.quad	0x3fa8ddde9d0d6b10              # double 0.048567730590283742
	.quad	0x3fd476a92af04f02              # double 0.31974248116715398
	.quad	0x3feb4bf1cc45b0fd              # double 0.85302057167930878
	.quad	0x3fdc8cde4626527a              # double 0.44609791613155603
	.quad	0x3fd843d6bbd1883c              # double 0.37914055196427277
	.quad	0x3fdeaa718309845c              # double 0.4791530398998185
	.quad	0x3fd195c41d3a3abc              # double 0.27476599554294601
	.quad	0x3fe588b693316911              # double 0.672938621031138
	.quad	0x3fdd5069ae67c33c              # double 0.45803300887841991
	.quad	0x3fe2b7cc47f3bf8c              # double 0.58493627598908082
	.quad	0x3fcc36f8cff04c68              # double 0.22042760995154542
	.quad	0x3fae6a94e103fd60              # double 0.059406902759287616
	.quad	0x3fce01a978237600              # double 0.23442571989191663
	.quad	0x3fc4a2b065a068bc              # double 0.16121487581478344
	.quad	0x3fd5587834a13312              # double 0.33352475299470641
	.quad	0x3fed9df8d70fbf6e              # double 0.92553369526102158
	.quad	0x3fea73189d3dab07              # double 0.82654982291327961
	.quad	0x3fdc3aaca24cef78              # double 0.441081198212252
	.quad	0x3fea6d414baf9cfe              # double 0.82583679945392396
	.quad	0x3f91b4a0286181c0              # double 0.01729059454408044
	.quad	0x3fd0a4ccab13dd4a              # double 0.26005856234356328
	.quad	0x3fdec5c2af973842              # double 0.48082034251718053
	.quad	0x3fc805ed16b65ddc              # double 0.18768085106851984
	.quad	0x3fabecc882032ab0              # double 0.054540887709284447
	.quad	0x3fe84bea0ceaefaa              # double 0.75926687739364707
	.quad	0x3fe9272430f509e4              # double 0.78602799951505319
	.quad	0x3fc5e16e9cd7bcf0              # double 0.17094214113556161
	.quad	0x3fe6c26a2299e45f              # double 0.71123224981341682
	.quad	0x3fd052c79944ca00              # double 0.25505247085234828
	.quad	0x3fcf21d7fd45f680              # double 0.24322032801494586
	.quad	0x3fe0c566750bb229              # double 0.52409670696721833
	.quad	0x3fde9bbae6fb86ba              # double 0.47825501019370231
	.quad	0x3fd962de14fd22b6              # double 0.39665939378441395
	.quad	0x3fe2e06fdffb5bed              # double 0.58989709612330687
	.quad	0x3fd7b9aa42dd1e6a              # double 0.37070709733641272
	.quad	0x3fda68f43d6ee3fa              # double 0.41265588759739524
	.quad	0x3f4ff5c6c53c7c00              # double 9.7534375752050816E-4
	.quad	0x3fe6f483d152542c              # double 0.71734801180958163
	.quad	0x3fe003032278a9ba              # double 0.50036770565684852
	.quad	0x3fb6df5eaabcff70              # double 0.089345852550648308
	.quad	0x3fd37b8ba5100a5c              # double 0.30441561812782481
	.quad	0x3fe1803c34b70596              # double 0.54690370841869895
	.quad	0x3fe0bded13fa4d76              # double 0.52318433668044295
	.quad	0x3fedc35095f334ed              # double 0.93009213721384543
	.quad	0x3fe08878f4ef345f              # double 0.51665923918484313
	.quad	0x3fe62b7f3f246912              # double 0.69280969936815695
	.quad	0x3feed2c15359bbe6              # double 0.96322695044898121
	.quad	0x3fee75b7457f5d5a              # double 0.9518696172116663
	.quad	0x3fe003c0d31079bb              # double 0.5004581568098766
	.quad	0x3fd69a98e8b14d98              # double 0.35318587039838567
	.quad	0x3fd386eb863d761c              # double 0.30510986432440901
	.quad	0x3fb5ede1dbfb3530              # double 0.085661045271270053
	.quad	0x3fe8699907f48057              # double 0.76289035371520242
	.quad	0x3fbf31974193c7b8              # double 0.12185044623382069
	.quad	0x3fabdd0371835020              # double 0.054420573813019013
	.quad	0x3fec19e1e45b3cc6              # double 0.87815947152002916
	.quad	0x3fd3e356f140e38e              # double 0.31075070915135761
	.quad	0x3feab2bc3a0c6c35              # double 0.83431826913454776
	.quad	0x3fddaeeb52e5f448              # double 0.46380122275860858
	.quad	0x3fe14f7f09487cb3              # double 0.54095413029781125
	.quad	0x3fed16d610c72a18              # double 0.9090376212782898
	.quad	0x3fdaaa8d0b82f704              # double 0.41665960430314919
	.quad	0x3f57fd5af845ea00              # double 0.0014642132165066934
	.quad	0x3fea7c5bf6e4e3e4              # double 0.82768057080749857
	.quad	0x3fd1b1c3c62cafde              # double 0.27647489884361487
	.quad	0x3fb3f2e2b3a5a4b0              # double 0.077924889430181165
	.quad	0x3fef878ff9c8a04b              # double 0.98529814515951252
	.quad	0x3fdace553b1143ec              # double 0.4188435627775664
	.quad	0x3fec04ce2be0178c              # double 0.875586591428815
	.quad	0x3fe1c12944f19775              # double 0.55482924905366693
	.quad	0x3fe80139fe682509              # double 0.75014972390013768
	.quad	0x3fe77cf56f4667db              # double 0.73400375111964011
	.quad	0x3fc996c169c10470              # double 0.19991319335716495
	.quad	0x3fe50f5e5eb965de              # double 0.65812605381796252
	.quad	0x3fe05b688191e0f6              # double 0.511158230844585
	.quad	0x3fe5aa62f2725a73              # double 0.67704913475865991
	.quad	0x3fe2f69c5178355b              # double 0.59260383522056814
	.quad	0x3fe87e10880bf00a              # double 0.7653887421761294
	.quad	0x3fc1bfbdd1e6a18c              # double 0.13866398572032457
	.quad	0x3fc8ae20341e8a50              # double 0.19281389756095502
	.quad	0x3fe8bfba4783e33e              # double 0.77340425460634044
	.quad	0x3fe4a82e142f4fbc              # double 0.64552978460641652
	.quad	0x3fbe177a2f7cde38              # double 0.11754573497170717
	.quad	0x3fd9b3ee41b40c14              # double 0.40160709778155135
	.quad	0x3fbd960ee6584180              # double 0.11557095645571813
	.quad	0x3fc93ee089009e84              # double 0.19723135652133206
	.quad	0x3fef6e38179d64d7              # double 0.98220448124188919
	.quad	0x3fd300f236dfe30c              # double 0.29693274840205741
	.quad	0x3fe767e6747db881              # double 0.73143313171546265
	.quad	0x3fa210a0a0b658a0              # double 0.035283107393454971
	.quad	0x3fd49acf2605ead6              # double 0.32194880212015897
	.quad	0x3fed7e4f57ed8cb7              # double 0.92166869328902734
	.quad	0x3fe3d37ae767309f              # double 0.61956544109263578
	.quad	0x3fe3e3d73d15dc05              # double 0.62156259470691622
	.quad	0x3fdd9f2184d21158              # double 0.46283758135566222
	.quad	0x3fc41d6f6e80844c              # double 0.15714829345327741
	.quad	0x3fdb4d93493c7d8c              # double 0.42660982276898873
	.quad	0x3feb213d97125b6d              # double 0.84780768877213364
	.quad	0x3fea488dc4ce31ed              # double 0.82135666311802213
	.quad	0x3fc5435e2c6399bc              # double 0.16611840407786171
	.quad	0x3fee8b71ce90e2c3              # double 0.95452204079546055
	.quad	0x3fc9766d58ec5f48              # double 0.19892660943946283
	.quad	0x3f946f9aa657c400              # double 0.019956985857735532
	.quad	0x3fb7a03a480ebea8              # double 0.092288630096613589
	.quad	0x3fe86e0dd166db1b              # double 0.76343432329926786
	.quad	0x3fe5c69db6473cf1              # double 0.6804951248285801
	.quad	0x3fe35ae267e76e06              # double 0.60484428685907754
	.quad	0x3fc09770fe7eb690              # double 0.12962162424576151
	.quad	0x3fe53b85fedd8ff1              # double 0.66351604250348661
	.quad	0x3fd7bb98fa01360e              # double 0.37082504667782323
	.quad	0x3fea83accbe3f6ec              # double 0.82857360670433655
	.quad	0x3fad0bac7d38a750              # double 0.05672968891697272
	.quad	0x3fba671e4ee378f8              # double 0.10313596178045603
	.quad	0x3fd971834cc26c5c              # double 0.39755327697793574
	.quad	0x3feda6240e926f40              # double 0.92653086515517912
	.quad	0x3fe98ada22fc0892              # double 0.79819971878920826
	.quad	0x3fe2bafd40570046              # double 0.58532583776833103
	.quad	0x3feec49a9125a973              # double 0.96149948452993638
	.quad	0x3fd64c1c82cd841e              # double 0.3483954694148127
	.quad	0x3fe94e66d26d3c9a              # double 0.79082051371541984
	.quad	0x3fe6d9c2a4aca165              # double 0.7140820709510477
	.quad	0x3fe313d35bd3ae43              # double 0.59617011961876931
	.quad	0x3fd4e61bdd69eca8              # double 0.32654472944677559
	.quad	0x3fda8c3c73aa9edc              # double 0.4148093347125561
	.quad	0x3fe843a9c1972611              # double 0.75825965700750164
	.quad	0x3fc74a4fdbdb6d9c              # double 0.18195532069408393
	.quad	0x3febc49445030854              # double 0.86774648169399393
	.quad	0x3fd45b9f8b73859c              # double 0.31809223764693129
	.quad	0x3fd953a82125213a              # double 0.39573100315876142
	.quad	0x3fdd9527ed619856              # double 0.46222875768433391
	.quad	0x3feb7ed87bfe66d5              # double 0.85923408715754113
	.quad	0x3fe88da2dcccd1d3              # double 0.76728957295432065
	.quad	0x3fef87d738d3f86c              # double 0.98533211802692965
	.quad	0x3feedcaf75e731fd              # double 0.96443913486433496
	.quad	0x3fed9fee8baf9324              # double 0.92577292711630265
	.quad	0x3fc923d4143fa70c              # double 0.19640589703276878
	.quad	0x3fe854f55d7b0164              # double 0.76037090547474095
	.quad	0x3fe0ce3640c05b6d              # double 0.52517235419041486
	.quad	0x3fef4b3a2e97a845              # double 0.97793301677780475
	.quad	0x3fd65977415284ec              # double 0.34921056155333363
	.quad	0x3fb0357d39fc84b8              # double 0.063316179901920289
	.quad	0x3fdf14797f94fe22              # double 0.48562467059307057
	.quad	0x3fc4e4bd2f104d98              # double 0.16323056028396077
	.quad	0x3fdeb523c47f7a0c              # double 0.47980589093450088
	.quad	0x3fd7ab2f8c9fa8f4              # double 0.36982334835796782
	.quad	0x3fe65625028edd10              # double 0.69801569461461277
	.quad	0x3fd9eeccfe56dcea              # double 0.40520024144957623
	.quad	0x3fd36eaa6b3de26e              # double 0.30362949822259722
	.quad	0x3fe414bdeb69350c              # double 0.62753196695999369
	.quad	0x3fd20060ea985d58              # double 0.28127310666737548
	.quad	0x3fe4bccb97acd5f7              # double 0.64804629921007872
	.quad	0x3fe2506653835122              # double 0.57231441794514049
	.quad	0x3fc3302e129fae70              # double 0.14990783604968128
	.quad	0x3fd11765397aae66              # double 0.26705294240193778
	.quad	0x3feaa65d09ea23ec              # double 0.83280803619811427
	.quad	0x3f8237d569b0a940              # double 0.0088955567244580757
	.quad	0x3feaa2bc578261ed              # double 0.83236519900952788
	.quad	0x3fed37fd9c9b1eb3              # double 0.91308479868981463
	.quad	0x3fc22c69213edfc8              # double 0.14198030589409272
	.quad	0x3fd2d6ac78432ce6              # double 0.29435264343619705
	.quad	0x3fb6b24f9c455090              # double 0.088658309604684015
	.quad	0x3feb8fbc8832026e              # double 0.86129595375684942
	.quad	0x3fe2f733d19740cd              # double 0.5926760762759159
	.quad	0x3fe2e74249ce01de              # double 0.59072985091193764
	.quad	0x3fc813ed237a907c              # double 0.18810810310708692
	.quad	0x3feb2c420270a573              # double 0.84915256954734131
	.quad	0x3fbb3a6ff3174898              # double 0.10636043248021776
	.quad	0x3fd8a8add2755b20              # double 0.38529534866886372
	.quad	0x3fa8e3637ae82b90              # double 0.048609837296758163
	.quad	0x3feff9884c45cd4a              # double 0.99921049973492271
	.quad	0x3fd056d6512cdf06              # double 0.2553001206137967
	.quad	0x3fe58cc697a13c88              # double 0.67343453993989133
	.quad	0x3fc61e4b6888764c              # double 0.1727995167174633
	.quad	0x3fd3b1e8ee58012c              # double 0.30773375774153311
	.quad	0x3fe709400e7c5fe4              # double 0.71987917737260121
	.quad	0x3fb50cadc503af08              # double 0.082224712943283262
	.quad	0x3fd4395971f1ceda              # double 0.3160003292789334
	.quad	0x3fc83b526356df60              # double 0.18931035852960587
	.quad	0x3fe21ae87f97faaf              # double 0.56578469200743153
	.quad	0x3fe67da19c60df43              # double 0.70283585112245139
	.quad	0x3fe9dce254416b2e              # double 0.80821339088592992
	.quad	0x3fea215799bfd404              # double 0.81657009152570525
	.quad	0x3fe35aaa96540474              # double 0.60481767044997392
	.quad	0x3fd6ce03220d4c78              # double 0.35632398915658525
	.quad	0x3fb3f2c76528abe0              # double 0.077923261830320723
	.quad	0x3fecf7333b270628              # double 0.90517579606256948
	.quad	0x3fec893178ee7986              # double 0.89174722308580168
	.quad	0x3fdc202c033de826              # double 0.43946361843666393
	.quad	0x3fee5684efd36113              # double 0.94806143609005955
	.quad	0x3fe5e1dd33653794              # double 0.68382129705581685
	.quad	0x3fc458a424333b6c              # double 0.15895511405548335
	.quad	0x3fb96d1074cf6ce8              # double 0.099320438879135886
	.quad	0x3fe1bf5da4b3e0ce              # double 0.55461008232580311
	.quad	0x3fdb757f84f3be50              # double 0.4290465162621091
	.quad	0x3fecd525e579b3d5              # double 0.90101904696859469
	.quad	0x3fc612053c59be94              # double 0.17242494055561919
	.quad	0x3fe40facf4648a2c              # double 0.62691352589565019
	.quad	0x3fcf33c475d1e238              # double 0.24376731636927373
	.quad	0x3fd93b7a0d40514e              # double 0.39425517362657991
	.quad	0x3fe814d8013dae8d              # double 0.75254440538761147
	.quad	0x3fe03d882b3ef303              # double 0.50751121946777322
	.quad	0x3fe478ecb8008f29              # double 0.63976131380011225
	.quad	0x3fdb10a3d5d18d04              # double 0.42289062386244347
	.quad	0x3fd64886f5d36542              # double 0.34817670828268288
	.quad	0x3fd42a0d79afb83e              # double 0.31506668933332438
	.quad	0x3fe7ddfabb2ea63a              # double 0.74584709700611218
	.quad	0x3fe196bec75177f7              # double 0.54965151719420546
	.quad	0x3fb9b7106dfc0438              # double 0.10044958768050172
	.quad	0x3fe34d56dc232ab8              # double 0.60319083209591096
	.quad	0x3fe7800396a3e92d              # double 0.73437671110085534
	.quad	0x3fda28f1afca769a              # double 0.40874902884557118
	.quad	0x3fed989e18da715d              # double 0.92488007406386041
	.quad	0x3fbcc761abf651b8              # double 0.1124173207120468
	.quad	0x3fb905a4158ab150              # double 0.09774232412263939
	.quad	0x3fd89664518aa682              # double 0.38417919123694599
	.quad	0x3fc946747e324cd8              # double 0.19746261751115557
	.quad	0x3fe10f91805afcf7              # double 0.53315043515604443
	.quad	0x3fda2b44cb9c6f08              # double 0.4088909138097141
	.quad	0x3fe1c2e5c449296c              # double 0.55504120194499995
	.quad	0x3fd6370c5c5a9478              # double 0.34710988062790404
	.quad	0x3fe009ce5e6d6471              # double 0.50119703715166797
	.quad	0x3fd210f3500de88a              # double 0.28228457277112595
	.quad	0x3fe1225ab44b1ecc              # double 0.53544364179193726
	.quad	0x3fca435917d9ed48              # double 0.20518029846776131
	.quad	0x3fc803aa8e4976e0              # double 0.18761188457113231
	.quad	0x3fc06735b87e8ce8              # double 0.12814971455109192
	.quad	0x3febc3d17c4ae691              # double 0.86765360141653691
	.quad	0x3fe193964a8f6d3e              # double 0.5492660003905383
	.quad	0x3fe9e83c2258ab13              # double 0.80959898670457375
	.quad	0x3fef071278bf879c              # double 0.96961330016732771
	.quad	0x3fef4394afbae698              # double 0.97699961015969716
	.quad	0x3fbfaf6690f5b458              # double 0.12377015151078419
	.quad	0x3fecfcc1e6ac2f80              # double 0.90585417798273227
	.quad	0x3feec6403a5ecf94              # double 0.96170054817638339
	.quad	0x3fe06a45536afdf3              # double 0.51297251026693258
	.quad	0x3fec80c2c4b517b9              # double 0.89071787280476322
	.quad	0x3fe269e38a3d25f7              # double 0.57542588233735514
	.quad	0x3fb35a95949b95f0              # double 0.075600956708136157
	.quad	0x3fda53f9c881d45c              # double 0.41137547093177829
	.quad	0x3fdd66d6bf0cc7f8              # double 0.45940178544253696
	.quad	0x3fb798b01ba1e300              # double 0.09217358278864296
	.quad	0x3feb79277069b97d              # double 0.85853931384717408
	.quad	0x3fe520398df606e4              # double 0.66018369414106504
	.quad	0x3fe46bf91c16fddf              # double 0.63818030821124327
	.quad	0x3fd9808a1d073534              # double 0.39847042879849259
	.quad	0x3fe1aa87ec557ee6              # double 0.55206676634767571
	.quad	0x3fe89e96cfdd0efb              # double 0.76935902212468876
	.quad	0x3fe9231b6e7d0aff              # double 0.78553554134154513
	.quad	0x3fd4f80129a01434              # double 0.32763699593516837
	.quad	0x3fbb8db78a2aca30              # double 0.10763117907735231
	.quad	0x3fc2ebe554ccbdbc              # double 0.14782396927465224
	.quad	0x3fe3779dc524dce0              # double 0.60835159783064441
	.quad	0x3fcf333df23629b0              # double 0.24375128103959076
	.quad	0x3fd0c8a117ecfc34              # double 0.26224543892380159
	.quad	0x3fef331de9adf901              # double 0.97498984947722544
	.quad	0x3fb84c5b2d2dd4c8              # double 0.094915102510486737
	.quad	0x3fe4a1962f0f4152              # double 0.64472493354154836
	.quad	0x3fb9f0bebef61b00              # double 0.10132972871916124
	.quad	0x3fde2903b21d0d0a              # double 0.47125332254309227
	.quad	0x3fe7fedd83f6f7ad              # double 0.74986148619040238
	.quad	0x3fa0c10a152e4130              # double 0.03272277363351106
	.quad	0x3fe5aeb3c4f7c260              # double 0.67757595510745361
	.quad	0x3fd1272580855c74              # double 0.26801431227563133
	.quad	0x3fefb09460e27152              # double 0.99030512736093557
	.quad	0x3fe4fc99abdc799a              # double 0.6558349949516924
	.quad	0x3fe80597cca73cdc              # double 0.75068273516981376
	.quad	0x3fdbb1a0b29d9194              # double 0.43271653597755599
	.quad	0x3feccc44404c102c              # double 0.89993488843947977
	.quad	0x3fdd11fea95bc54e              # double 0.45422331370271685
	.quad	0x3fd58903d731fe76              # double 0.33648773207821792
	.quad	0x3feebb139e2c6073              # double 0.96033650296432282
	.quad	0x3fce74cdd724a938              # double 0.23793957715072067
	.quad	0x3fe950dcc0c60564              # double 0.79112088824346615
	.quad	0x3fefd3b42da00575              # double 0.99459275160931659
	.quad	0x3fdf34831e1d7a18              # double 0.48758008900577599
	.quad	0x3fa3ce0bce575e30              # double 0.038681382120270391
	.quad	0x3fec3d2952f4a087              # double 0.88246599390278468
	.quad	0x3fe3157464994e28              # double 0.59636897705280933
	.quad	0x3f9700fd7e5ca7c0              # double 0.022464714849014689
	.quad	0x3fc716af810223b4              # double 0.18037980841861911
	.quad	0x3fdde4b5d9c05fc4              # double 0.46708437218466892
	.quad	0x3fd8816aa5ea630e              # double 0.38289896204655427
	.quad	0x3fb76982843cd960              # double 0.091453702244370216
	.quad	0x3fe286168abe2348              # double 0.57886817072094576
	.quad	0x3fedc35a8b25cc5a              # double 0.93009688546443248
	.quad	0x3fd6070f8bac1262              # double 0.34418095245226799
	.quad	0x3fd08bee9c3d76ca              # double 0.25854077585050261
	.quad	0x3fbdd3c497db7e20              # double 0.11651257235961809
	.quad	0x3fd7fff094a58abc              # double 0.37499632374071346
	.quad	0x3fd33eb6d37cbfe0              # double 0.30070276883179581
	.quad	0x3fcddc17dab3abe8              # double 0.23327921084214087
	.quad	0x3fde2fd4ec3ff104              # double 0.47166941710726484
	.quad	0x3fb6bb2ba84cf430              # double 0.088793495739950101
	.quad	0x3fe431e57c3b4064              # double 0.63109087242083861
	.quad	0x3fb4baa71ae45e18              # double 0.080973095002598305
	.quad	0x3fee0eebb2c51f43              # double 0.93932137409226646
	.quad	0x3fd0b7eca2e83388              # double 0.26122585209741844
	.quad	0x3fcd642806cb7964              # double 0.22961902934816714
	.quad	0x3fe03391062162de              # double 0.50629473874422692
	.quad	0x3fe9240038873bb8              # double 0.78564463654207994
	.quad	0x3f9cd77192b0b8e0              # double 0.028165602281824742
	.quad	0x3fda3d64d45ea01e              # double 0.40999718417379138
	.quad	0x3fe949a080e8fbcd              # double 0.79023766687157038
	.quad	0x3fc26ad489dcca24              # double 0.14388519984784509
	.quad	0x3fd6dd8c31a38700              # double 0.35727219436203939
	.quad	0x3fdacf5d1298596a              # double 0.41890646758965622
	.quad	0x3fe6cbf30b3084af              # double 0.71239616570905706
	.quad	0x3fe5bfee06987977              # double 0.67967892921642103
	.quad	0x3fe25627cfe3ce14              # double 0.57301703074921528
	.quad	0x3fd38e6b06473f4c              # double 0.30556750882259531
	.quad	0x3fd29a9e8218f3e8              # double 0.29068720536071035
	.quad	0x3fe2df3253728d46              # double 0.58974567697843194
	.quad	0x3fe9364921aa5e19              # double 0.78787666869442596
	.quad	0x3fefd61a265a2dc0              # double 0.99488551607776543
	.quad	0x3fe0d94ff5338162              # double 0.52652738467081073
	.quad	0x3fe303e75c8feb02              # double 0.59422653273153991
	.quad	0x3feccfcbdb7ed83a              # double 0.9003657614728191
	.quad	0x3fe90fcba969ff2c              # double 0.78317816818887342
	.quad	0x3fd8e3ed365e7230              # double 0.38891153630700881
	.quad	0x3fd2127a06a29b08              # double 0.28237772605864153
	.quad	0x3fd6e2c916a9dd0a              # double 0.35759188855395563
	.quad	0x3fe2ec9f0e0b17f9              # double 0.59138443701590326
	.quad	0x3fde7853e6c78e46              # double 0.4760942224222372
	.quad	0x3feafc6850680033              # double 0.84331145958277032
	.quad	0x3fd18ba94cd49566              # double 0.27414925101250842
	.quad	0x3fd2b8a0cba5a086              # double 0.29251880538368658
	.quad	0x3fb1b31dca7c0100              # double 0.0691393489214569
	.quad	0x3fd437f9688f4780              # double 0.31591639719874109
	.quad	0x3fea69141601fa79              # double 0.82532696054825216
	.quad	0x3fe1a9f5bebcba7d              # double 0.55199706319201847
	.quad	0x3fe3721c1db54cd9              # double 0.60767942240127149
	.quad	0x3fe72ba72d9a5e12              # double 0.72407874018512275
	.quad	0x3fcf30827915d610              # double 0.24366789734237715
	.quad	0x3fdd344687a3abc6              # double 0.45631564374951628
	.quad	0x3fe601ac3e62ed4e              # double 0.68770420250749864
	.quad	0x3fea7489971c6ee9              # double 0.82672576440697043
	.quad	0x3fd44ad43179b34a              # double 0.31706719237881897
	.quad	0x3fec1edf247d9d10              # double 0.87876851203046336
	.quad	0x3fde85d6a05f1056              # double 0.47691884671462981
	.quad	0x3fdf0660bf798844              # double 0.48476427744583739
	.quad	0x3fc43ce9c7f8a93c              # double 0.15810892357087336
	.quad	0x3fb5e971968a5158              # double 0.085593318226817927
	.quad	0x3fe0132d3aaaaa62              # double 0.50234090288479316
	.quad	0x3fec5bee07c83169              # double 0.88622190017626423
	.quad	0x3fe41606919292f6              # double 0.62768867904796255
	.quad	0x3fd893b0761292a6              # double 0.3840142396023033
	.quad	0x3fe4020df40987e6              # double 0.62525079406281914
	.quad	0x3f95671fb647c200              # double 0.020901198864466508
	.quad	0x3feea190217341f6              # double 0.95722204716918102
	.quad	0x3fdea5ab7206b50a              # double 0.47886167655345047
	.quad	0x3feed2c4ffe3990d              # double 0.9632287023385132
	.quad	0x3fe4af77895b516b              # double 0.6464193041561378
	.quad	0x3fd07964f3a65d98              # double 0.25740932268078032
	.quad	0x3fec496b39b6514e              # double 0.88396226188573634
	.quad	0x3fef1ad50b0cfc2f              # double 0.97202541502327288
	.quad	0x3feec39940d6a4c4              # double 0.96137678779373247
	.quad	0x3fe5dc76ac3cdd92              # double 0.6831620563524885
	.quad	0x3fd8b09367b66ade              # double 0.38577733162098393
	.quad	0x3fe61506a5ae2f53              # double 0.6900666461892605
	.quad	0x3fedf6f4dc607a5f              # double 0.93639605562550432
	.quad	0x3fdf2bf0965d2440              # double 0.48705687221496774
	.quad	0x3fd385d649ade292              # double 0.30504376597631577
	.quad	0x3fe08499443dd9b7              # double 0.51618636444509647
	.quad	0x3fec53b5ef519e5b              # double 0.88521858922917873
	.quad	0x3fed6418df04a4d6              # double 0.9184688907454539
	.quad	0x3fece939bad824a2              # double 0.90346991055516335
	.quad	0x3fd02de2bfb0f51a              # double 0.25280064315650608
	.quad	0x3fc5b202b08585b4              # double 0.16949494952409128
	.quad	0x3feba3e4b7c76a1f              # double 0.86375652212456433
	.quad	0x3fd44716c392b58c              # double 0.31683892344411713
	.quad	0x3fed47a734f256e9              # double 0.91499672261371956
	.quad	0x3feb2d2f6f748539              # double 0.84926578301034461
	.quad	0x3fe0b4592aa648bf              # double 0.52201517419805288
	.quad	0x3febc812a1418797              # double 0.86817294593150762
	.quad	0x3fe42d680888ce75              # double 0.63054277102351242
	.quad	0x3fe4d2cfbd6e5b9d              # double 0.6507338237596404
	.quad	0x3fd268694596c7b4              # double 0.28762275501059809
	.quad	0x3fe23523d9ac04ff              # double 0.5689868213086412
	.quad	0x3fdfe6e2b4cbc6be              # double 0.49846713691577438
	.quad	0x3fc241a73635ed44              # double 0.14262857577328181
	.quad	0x3febbbd269db08bb              # double 0.86667748141214618
	.quad	0x3fe04a7f71d111e1              # double 0.50909397344417695
	.quad	0x3feca926abb52e1d              # double 0.89564832245509118
	.quad	0x3fe15c679b42ea19              # double 0.54252987217415971
	.quad	0x3fecb9d97926041d              # double 0.89768670713249643
	.quad	0x3fc09812eedcc808              # double 0.12964092887119727
	.quad	0x3fc9854f6565df4c              # double 0.19938080264159408
	.quad	0x3feabb8a7bd6ef92              # double 0.83539318263454931
	.quad	0x3fe5c7cabf9d0926              # double 0.68063867020126589
	.quad	0x3fdb4f9264bcf4b2              # double 0.42673168027597363
	.quad	0x3fee8b13321d4a3d              # double 0.95447692668887607
	.quad	0x3fd3c512e7fecbac              # double 0.30890343337812953
	.quad	0x3fdcb35ffe0df48a              # double 0.44844817934046743
	.quad	0x3fec2334234cfcb2              # double 0.8792973222224616
	.quad	0x3fea3800ae67cdb4              # double 0.81933626235552603
	.quad	0x3f9dffa4894f8900              # double 0.029295512085703912
	.quad	0x3fe70ed997ed5026              # double 0.72056274102442752
	.quad	0x3fe8043c525270a7              # double 0.75051704481622472
	.quad	0x3fd544928a969526              # double 0.33231032880788047
	.quad	0x3fe1567bb82fb6ad              # double 0.54180704091932841
	.quad	0x3fe4b415642d0fb0              # double 0.64698285642270115
	.quad	0x3fdfafd2177a2bfa              # double 0.4951062421102389
	.quad	0x3fc9c67d489480bc              # double 0.20136991542768168
	.quad	0x3fe32e3abcf9a74b              # double 0.59939324292393203
	.quad	0x3fe34dc542d7281c              # double 0.60324347548271673
	.quad	0x3fe10bce47331c40              # double 0.53269113451177219
	.quad	0x3feac447d3f81908              # double 0.83646003151150783
	.quad	0x3fdf7fc0e3f58c74              # double 0.4921724535144627
	.quad	0x3fcf4e6fa2a3a4fc              # double 0.24458117905968624
	.quad	0x3fefe52f630d351f              # double 0.99672669740690256
	.quad	0x3fe51fa75bf92c8a              # double 0.66011398280660782
	.quad	0x3feee275bec22b52              # double 0.96514403588785513
	.quad	0x3fe42bd125bac65b              # double 0.63034875268040069
	.quad	0x3fe0b0283d8d91a9              # double 0.52150356313773216
	.quad	0x3fbc0f2b632a7f88              # double 0.10960646792454842
	.quad	0x3fe93872939aacd2              # double 0.78814057187028141
	.quad	0x3fe51ee9fd8acf5c              # double 0.66002368469205974
	.quad	0x3fcc93fda7aa8c74              # double 0.22326632201029251
	.quad	0x3fb3d59edacc08e8              # double 0.077478340546835889
	.quad	0x3fe83b2d961623dd              # double 0.75722388566748189
	.quad	0x3fbf9f62c0a98a98              # double 0.12352578357380606
	.quad	0x3fe26353a206bf0c              # double 0.57462484021923066
	.quad	0x3feef784a7b198ac              # double 0.96771462204630642
	.quad	0x3fd90baabba388cc              # double 0.39133709262945326
	.quad	0x3fede6124bee0ace              # double 0.93433489637421885
	.quad	0x3fe7f0dbda97f90d              # double 0.74815170950003707
	.quad	0x3fe75fdb56aff182              # double 0.73045126849278597
	.quad	0x3fec3a82918a4be0              # double 0.88214233804535169
	.quad	0x3fd24d5ba3352f0c              # double 0.28597155512100936
	.quad	0x3fed66c58188d2b5              # double 0.91879535007190916
	.quad	0x3fe88d61faf65b8f              # double 0.76725863472062084
	.quad	0x3fe10829db2f35df              # double 0.53224652108627513
	.quad	0x3fdfda80aebcad44              # double 0.49771134437715525
	.quad	0x3fe644c0c09aba5d              # double 0.69589269273803789
	.quad	0x3fe0724ad6b2441b              # double 0.5139517014778251
	.quad	0x3feb2558e9461769              # double 0.84830899773872404
	.quad	0x3fc178c2201cc388              # double 0.13649775093065508
	.quad	0x3fe920495787fdff              # double 0.78519122215215009
	.quad	0x3fc8d00ea2386b5c              # double 0.1938494007198085
	.quad	0x3fd66bd1aa06d804              # double 0.35033074955151755
	.quad	0x3fde4bf63a1813ec              # double 0.47338634179351291
	.quad	0x3fe97aff42a35164              # double 0.79626429572321599
	.quad	0x3fe5f4aebdc73e34              # double 0.68611847940514403
	.quad	0x3fd49e12360c4a8a              # double 0.32214789655805787
	.quad	0x3fd96e06ce2b1d0c              # double 0.39734048970827085
	.quad	0x3fe6c69cbd9e23a4              # double 0.71174466166222716
	.quad	0x3fe2544ca577b47c              # double 0.57279045408144169
	.quad	0x3fd60351af3b73ca              # double 0.343952580571394
	.quad	0x3fd87913fa6051b4              # double 0.38239001704030362
	.quad	0x3fe3c5cc769278cc              # double 0.61789534720062411
	.quad	0x3fbc8e84139f9470              # double 0.11154962042890459
	.quad	0x3fcebbb3bb180498              # double 0.2401032126945537
	.quad	0x3fdf110e328b3b40              # double 0.4854159825890072
	.quad	0x3fdbdfc571acca04              # double 0.43553291417188711
	.quad	0x3fb8d75d0e021720              # double 0.097036186141931768
	.quad	0x3fa34dabb5251260              # double 0.037701955664066089
	.quad	0x3fc88b1ffd56d074              # double 0.191745756817571
	.quad	0x3fd9cd7e7519cbac              # double 0.40316735683080185
	.quad	0x3feca9e3c9502280              # double 0.89573849982214426
	.quad	0x3fd8b654de7b9e76              # double 0.38612863280147935
	.quad	0x3fd45bcfe57cb4c2              # double 0.31810376559117171
	.quad	0x3fee5381095c4b9b              # double 0.94769336536625148
	.quad	0x3fd8a519487ce610              # double 0.38507682875533167
	.quad	0x3fda772efb524dbc              # double 0.41352438490977383
	.quad	0x3fd32a10715a2928              # double 0.29944239682721951
	.quad	0x3fecc27e11725a6b              # double 0.89874175460393013
	.quad	0x3fd7545fd2a0efa6              # double 0.36452479905323754
	.quad	0x3fdd981031fa6150              # double 0.46240620499294938
	.quad	0x3fd24b9551fe8712              # double 0.28586323745013076
	.quad	0x3fed960ba4a1f961              # double 0.92456609873606166
	.quad	0x3fe0def4dc1d5674              # double 0.52721636763699431
	.quad	0x3fe867ce0147c3c4              # double 0.76267147302689197
	.quad	0x3fd48a6a737520d2              # double 0.32094823146009077
	.quad	0x3fe1c8bae14c31a7              # double 0.55575317386096834
	.quad	0x3fc281d59ba6e3b0              # double 0.14458723163786891
	.quad	0x3fd1fd7c81f06774              # double 0.28109657945025579
	.quad	0x3fdb1cca7cd5e490              # double 0.42363226119011532
	.quad	0x3fe7e2282983e135              # double 0.74635704143933046
	.quad	0x3fc9076c719082d8              # double 0.19553905053273613
	.quad	0x3fe8ace7db2e5961              # double 0.77110665139006696
	.quad	0x3fb28bd5ed1e0d70              # double 0.072446222677219785
	.quad	0x3fd7507754f90e84              # double 0.36428626344807236
	.quad	0x3fabaa591640faa0              # double 0.054034027067691115
	.quad	0x3fb1f22c67dff8d8              # double 0.070101523742752803
	.quad	0x3fcab7058a5b29c0              # double 0.20871037727040509
	.quad	0x3fc4176eccc0dd40              # double 0.15696511266444624
	.quad	0x3fe552deacdd5ca8              # double 0.66636594545970684
	.quad	0x3fc7dad5dbd71870              # double 0.1863658259810026
	.quad	0x3fc81db7f05e9e58              # double 0.18840693699643185
	.quad	0x3fe483ef00cd99f1              # double 0.64110517651425714
	.quad	0x3fef0e0e1aa32157              # double 0.97046570971091739
	.quad	0x3fda23b200ddf4bc              # double 0.40842866978330128
	.quad	0x3fc1c569ade94148              # double 0.13883706084971892
	.quad	0x3fd6f3d1b0f5a1d6              # double 0.35863153725815999
	.quad	0x3fe0fbe87b96636a              # double 0.53075050485777564
	.quad	0x3fe04500457dd47e              # double 0.50842298100054939
	.quad	0x3fed0d54be3a6043              # double 0.90787732271110888
	.quad	0x3fe3d7552857dc6e              # double 0.62003572349102654
	.quad	0x3fd83150f8803a92              # double 0.37801002757707025
	.quad	0x3fef410d76cc9b1e              # double 0.9766909904763883
	.quad	0x3fe4780b967b9cd0              # double 0.63965396300491228
	.quad	0x3fd2afaaeb19ded0              # double 0.29197190245711813
	.quad	0x3fc8faad98e12220              # double 0.19515008892837304
	.quad	0x3fc36dfec409c328              # double 0.15179428646254078
	.quad	0x3fecf9ce7d7a5f12              # double 0.90549396998810239
	.quad	0x3fd20e3b96bda6c4              # double 0.28211869927200106
	.quad	0x3fef18ba7d740b5e              # double 0.97176861288640359
	.quad	0x3fe3f3614f380c62              # double 0.62345948669861806
	.quad	0x3fe0a2d40d68fed0              # double 0.5198765050808678
	.quad	0x3fe286791798810f              # double 0.57891516312159463
	.quad	0x3fdb9fe25c186bbe              # double 0.43163355821314642
	.quad	0x3fdfad3980131798              # double 0.49494779116900522
	.quad	0x3fdcbcd839c450fa              # double 0.44902616158766728
	.quad	0x3fc56ac3a34f2048              # double 0.16732068513943177
	.quad	0x3fed1dd8d09740f3              # double 0.90989342441937848
	.quad	0x3fe0b5bd4641ed8f              # double 0.5221849796502499
	.quad	0x3fc56dab502f9138              # double 0.16740933814356551
	.quad	0x3fec601edd4a190a              # double 0.88673346729845659
	.quad	0x3fe0d7dee8e30882              # double 0.5263514088221799
	.quad	0x3fbdf3c5ff4c3628              # double 0.11700093729833638
	.quad	0x3fe451a0f06a7d2d              # double 0.63496443706745753
	.quad	0x3fc8619063281e68              # double 0.19047741738926338
	.quad	0x3f856c5af7194400              # double 0.010460577646115965
	.quad	0x3fc473ce7fb3ebd4              # double 0.15978413806428071
	.quad	0x3fe20c8a1811fa96              # double 0.56403069211212897
	.quad	0x3feeefd12716dfc4              # double 0.96677453646315614
	.quad	0x3fca927188fbf21c              # double 0.20759410084419094
	.quad	0x3fd8a29103f4c4ae              # double 0.38492226969089927
	.quad	0x3fea5b6dec8812ee              # double 0.82366081426206761
	.quad	0x3fde49a504f21d4c              # double 0.47324491007789926
	.quad	0x3feb0c1257675d52              # double 0.8452235896210516
	.quad	0x3fd7b2b25794a21a              # double 0.37028177788536853
	.quad	0x3fe27d78c7353b50              # double 0.57781638057518059
	.quad	0x3fe4a3476ae60db7              # double 0.64493151548997829
	.quad	0x3feb8f25bd7c8181              # double 0.86122405060818619
	.quad	0x3fed4526b082fcb0              # double 0.91469130015311428
	.quad	0x3fedb6399eb53cb5              # double 0.92849427220962488
	.quad	0x3fb4bf2620313970              # double 0.081041701182788861
	.quad	0x3fd7152a98a56f08              # double 0.36066689402444796
	.quad	0x3fea335294f2435b              # double 0.81876496401865084
	.quad	0x3fe5da76295c63bd              # double 0.68291767195034192
	.quad	0x3fd73cb86c790b56              # double 0.36308107941674927
	.quad	0x3fe41cce7b45e728              # double 0.62851642681855413
	.quad	0x3fd160cb25a309c8              # double 0.27153280902362242
	.quad	0x3fe4ba2703cb1dec              # double 0.6477236818399752
	.quad	0x3fca25a2c98c6db4              # double 0.20427355614888898
	.quad	0x3fe48985a0b6e96c              # double 0.64178735150862343
	.quad	0x3fc1d3fee4492fe4              # double 0.13928209444782091
	.quad	0x3fd46a18ec8fe8e8              # double 0.31897566892406681
	.quad	0x3f97fa845a728320              # double 0.023416584034410381
	.quad	0x3fe8181ac1b6f1c6              # double 0.75294244608772298
	.quad	0x3fedc0c8502ca057              # double 0.92978301676795183
	.quad	0x3fe5ba4f07c3090d              # double 0.67899276271808306
	.quad	0x3fc82d361f59b04c              # double 0.18887974291590337
	.quad	0x3fced5d04109d110              # double 0.24090006995869162
	.quad	0x3febaea17c5e2fb9              # double 0.86506723681076558
	.quad	0x3febdf228e1e71fc              # double 0.87098815686800845
	.quad	0x3fe17c102ee7f86f              # double 0.54639443551401523
	.quad	0x3fe10fc2e5bb4f3a              # double 0.53317398900478641
	.quad	0x3fd1d15466d66dd2              # double 0.27840147059188525
	.quad	0x3fe62e40bcd3bb60              # double 0.69314610367096563
	.quad	0x3fe6c5266e2e3f92              # double 0.71156617660197896
	.quad	0x3fe9ae63dc98d3b5              # double 0.80253785214755757
	.quad	0x3f8cbdbd7dfa6b80              # double 0.014033775717782637
	.quad	0x3fd834281b9d2e7a              # double 0.37818339058569672
	.quad	0x3fde3577c441fe82              # double 0.47201341787147311
	.quad	0x3feea56db3102d64              # double 0.95769391034393125
	.quad	0x3fe399a6ad2cbca4              # double 0.61250623534387616
	.quad	0x3fea773345104238              # double 0.82705081452338103
	.quad	0x3fdd36ed889b011a              # double 0.45647753086451959
	.quad	0x3fab635bd102bb10              # double 0.053492421401975077
	.quad	0x3fe9fa5031501c45              # double 0.81180581695014864
	.quad	0x3fe71e76d5195bf6              # double 0.72246877308759738
	.quad	0x3fb4713b624904a8              # double 0.079852782721916982
	.quad	0x3fdd8650fc114b3c              # double 0.46132301918003171
	.quad	0x3fe1ae7b07ad9c70              # double 0.55254889964716192
	.quad	0x3fc9abb2280b0fe4              # double 0.20055224375948832
	.quad	0x3fdc28a2e2110ab2              # double 0.43998024060071395
	.quad	0x3fd0864c54483296              # double 0.25819690924326133
	.quad	0x3fda58bb30e797a6              # double 0.41166572357030373
	.quad	0x3fd1048e05d415f0              # double 0.26590300149140855
	.quad	0x3fef7577037a5d17              # double 0.98308897666257422
	.quad	0x3fab185272c7d3c0              # double 0.052919937621403346
	.quad	0x3fba32a2e4ac1d10              # double 0.10233514864750171
	.quad	0x3fd8231fdb095d32              # double 0.37714382543841218
	.quad	0x3fd889fef942b9dc              # double 0.3834226068674107
	.quad	0x3feaa08510ac1c72              # double 0.83209470039663658
	.quad	0x3feab9daf7ed53b3              # double 0.83518742011312097
	.quad	0x3fd383b77aa61426              # double 0.3049143502942705
	.quad	0x3fe95e8f7fc67476              # double 0.79279303508850663
	.quad	0x3fe2aa5b3d5ec091              # double 0.58329545961716367
	.quad	0x3fa47e6903536490              # double 0.040026933341956838
	.quad	0x3fee42432e13080a              # double 0.94558867453474815
	.quad	0x3fcfe25f7e30e5b4              # double 0.24909585630102316
	.quad	0x3fea3deb1702e84c              # double 0.82005838865667035
	.quad	0x3fda68fb5b1cee2a              # double 0.4126575841689567
	.quad	0x3fe011b07121b3d9              # double 0.50215932937646379
	.quad	0x3fac4aa6b0f9b7b0              # double 0.055257042983483884
	.quad	0x3fd5d9037b06653a              # double 0.34137045873793037
	.quad	0x3fe037643d288efc              # double 0.50676166481977658
	.quad	0x3fe1ff8996ffd01e              # double 0.56244353763623045
	.quad	0x3fb6ecf2e60d1b48              # double 0.089553052105754039
	.quad	0x3fc22ba36422976c              # double 0.14195673360262206
	.quad	0x3fdce3f8223988e2              # double 0.45141414015064474
	.quad	0x3fa988623d8af7a0              # double 0.04986865044837363
	.quad	0x3fd91edc1cc7eaa4              # double 0.39250853357922666
	.quad	0x3fe05704858f5da4              # double 0.51062227331106103
	.quad	0x3fbf85cc8f693080              # double 0.12313536168329797
	.quad	0x3fc284184ca7a330              # double 0.1446562170306378
	.quad	0x3fe70aec264440af              # double 0.72008330797145514
	.quad	0x3fe2ac792f0c1b8e              # double 0.58355387867855923
	.quad	0x3fce3b5318254fc8              # double 0.2361854427241481
	.quad	0x3fd812c3b06699dc              # double 0.37614528872145825
	.quad	0x3fe9fab529c9748a              # double 0.8118539634848656
	.quad	0x3fbbb8eb0f4dd5f8              # double 0.10829037784227313
	.quad	0x3fc0150ec7e598e8              # double 0.12564263115490992
	.quad	0x3f6258e675991400              # double 0.002239656558943981
	.quad	0x3fe2fc5e4393c8a3              # double 0.5933066673153643
	.quad	0x3fba7395411a5ed8              # double 0.10332615699223469
	.quad	0x3fdbf84904bb6426              # double 0.43702912771328994
	.quad	0x3fe4e270861e46de              # double 0.65264154620146164
	.quad	0x3feccca940ef62e9              # double 0.89998305018079094
	.quad	0x3feb4bdacf90fd9f              # double 0.85300961056048041
	.quad	0x3fe8783e31e99720              # double 0.76467809437301426
	.quad	0x3fc4ce51cceeb984              # double 0.16254637247534387
	.quad	0x3fea2bbbbe3a0a13              # double 0.81783854631095421
	.quad	0x3fc6e03bcbc61158              # double 0.17871806573760796
	.quad	0x3fea0f5781f04683              # double 0.81437278154972181
	.quad	0x3fe2c2d1391c06f0              # double 0.58628140596576195
	.quad	0x3fd2f5bcee9574b6              # double 0.29624865817261126
	.quad	0x3fee56453acb73bc              # double 0.94803105815264343
	.quad	0x3fe055003f295605              # double 0.51037609420990349
	.quad	0x3fdace40b8fe889e              # double 0.41883867326590429
	.quad	0x3fd8961870fcf04c              # double 0.38416110071171228
	.quad	0x3fe3cfefabe3db56              # double 0.61913283893850735
	.quad	0x3fee7afde7f8cb99              # double 0.95251365000727894
	.quad	0x3fe69c45364305be              # double 0.70657597158440644
	.quad	0x3fceaf7d0ef0aaec              # double 0.2397304842900988
	.quad	0x3fc1725949d56fec              # double 0.13630214791453399
	.quad	0x3fd218e60ddbda1a              # double 0.2827696929302036
	.quad	0x3fbc2f4f04dc73d0              # double 0.11009687298469761
	.quad	0x3fe929a25729ac2b              # double 0.78633229278546446
	.quad	0x3fe54d4957a05a9e              # double 0.66568438639190552
	.quad	0x3fadec5fef56d5d0              # double 0.058444021192751827
	.quad	0x3fdfcf68d143ee54              # double 0.49703426776952608
	.quad	0x3fe61071837c13e9              # double 0.68950725250817613
	.quad	0x3fc4550b6e045d34              # double 0.15884535667348987
	.quad	0x3fda377f79baeda0              # double 0.40963732612336834
	.quad	0x3fcd60d850278ff4              # double 0.22951797403140939
	.quad	0x3fe27d3b90fab2b8              # double 0.57778719249980437
	.quad	0x3f859fbd56a48540              # double 0.010558585363983242
	.quad	0x3fc6cf7a13c321e4              # double 0.1782066914077084
	.quad	0x3fda66e66e7a18a2              # double 0.41253052510036003
	.quad	0x3fe80599e0f8fae2              # double 0.75068372669178651
	.quad	0x3fcb33af0bc6a780              # double 0.21251476359367061
	.quad	0x3fe62b695a963557              # double 0.69279926007008441
	.quad	0x3f92a5550fa90100              # double 0.018208817559071555
	.quad	0x3fead8a4df4ea13e              # double 0.83894580473592106
	.quad	0x3fe489c46496aa3c              # double 0.64181728025625473
	.quad	0x3fe636b15c7bc1b7              # double 0.69417636931580418
	.quad	0x3fe35d285d072843              # double 0.60512178582690301
	.quad	0x3fedd961807fdee5              # double 0.93278575036580647
	.quad	0x3feed3d34f7ce333              # double 0.96335759663552378
	.quad	0x3fe61a2e88e296d3              # double 0.69069601760267074
	.quad	0x3fcb5ea26c069794              # double 0.21382551455206722
	.quad	0x3fc86407a4a44370              # double 0.19055266894477141
	.quad	0x3fd1021b8f126b10              # double 0.26575364086026898
	.quad	0x3fe25349dd9145a3              # double 0.57266705775161986
	.quad	0x3fc04ffbd0ad0784              # double 0.12744090737583857
	.quad	0x3feaacd49371c632              # double 0.83359745786419226
	.quad	0x3fe38f09f2892b51              # double 0.61121079798008726
	.quad	0x3fdc2cf06d820bfa              # double 0.44024286932125245
	.quad	0x3fd8a6167f070f80              # double 0.38513719944989333
	.quad	0x3fe1f2c2ba30285f              # double 0.56088386883608254
	.quad	0x3fe710f89717a500              # double 0.72082166204668852
	.quad	0x3fd1081ea30c0310              # double 0.26612058565665198
	.quad	0x3fe790032b1e72a7              # double 0.73632963582675337
	.quad	0x3fe8b7f0d76475dd              # double 0.77245370930512147
	.quad	0x3fe26f9193cf390d              # double 0.5761192213920211
	.quad	0x3fd7a09813d4115a              # double 0.36917688309065044
	.quad	0x3fd44a1b54524330              # double 0.31702311739450106
	.quad	0x3fe15dc1eafd92e4              # double 0.54269500633799028
	.quad	0x3fe0ff198b0fee05              # double 0.53114010964003511
	.quad	0x3fcf3e046ee4c3d4              # double 0.24408011831977083
	.quad	0x3fd84beace9b2816              # double 0.37963361908316651
	.quad	0x3fe1475464695b68              # double 0.53995723353987746
	.quad	0x3fed70691e76a88c              # double 0.91997199964431919
	.quad	0x3fdab47edb876626              # double 0.41726657331818939
	.quad	0x3fd8ff70bf30fc3c              # double 0.39059084578542858
	.quad	0x3fee7cf9165fe0fd              # double 0.95275549287819639
	.quad	0x3fe971c18b71f958              # double 0.79513623462097893
	.quad	0x3fe3525e4ed11dde              # double 0.60380473512571675
	.quad	0x3f9ac875583b4100              # double 0.026155313024731619
	.quad	0x3fefc24fc587f6db              # double 0.99246967869086277
	.quad	0x3fc4a75ab211c1d0              # double 0.16135724730294365
	.quad	0x3fee8ce06c97a9cd              # double 0.95469685754260925
	.quad	0x3fe6220cd0cb477e              # double 0.6916565015801408
	.quad	0x3fe9e864450c9f2a              # double 0.80961812483017082
	.quad	0x3fd538b59f69599e              # double 0.33158627097636806
	.quad	0x3fe0b04e864b70ee              # double 0.52152181844169632
	.quad	0x3fbd621dfacc43e8              # double 0.11477839825626257
	.quad	0x3fdce7089827aa44              # double 0.45160117014771495
	.quad	0x3fd91b8abb91a248              # double 0.39230602566980055
	.quad	0x3fe8ccd409c2eb55              # double 0.77500345140956972
	.quad	0x3fe3106175a92d83              # double 0.59574959736475852
	.quad	0x3fb4cad874b44e98              # double 0.081220177166239416
	.quad	0x3fbc6b21bd1c0cc0              # double 0.11100970141346789
	.quad	0x3fe80dc5b44160d6              # double 0.75168118673448236
	.quad	0x3fdcf2e96a571860              # double 0.45232615837847412
	.quad	0x3fd208801eac1628              # double 0.28176882739384945
	.quad	0x3fc8fcc263dd3dd4              # double 0.19521360279257627
	.quad	0x3fb29c8a1e4a7000              # double 0.072701103587348825
	.quad	0x3feebf6d2558638c              # double 0.96086747449872822
	.quad	0x3fb32bd31f311840              # double 0.074887461772136454
	.quad	0x3fd45eda69008350              # double 0.31828937772848054
	.quad	0x3fe79c36584c26f2              # double 0.73781888242339577
	.quad	0x3fe960ca25d8b792              # double 0.79306514160065178
	.quad	0x3febb85967fe3266              # double 0.86625356970905609
	.quad	0x3fc1e75cceded358              # double 0.13987312413305619
	.quad	0x3fef404634b5822f              # double 0.97659597677927034
	.quad	0x3fee3a98664aaab3              # double 0.94465274790612452
	.quad	0x3fa2cb76d0201b40              # double 0.036708557992872759
	.quad	0x3fd1377787c7c228              # double 0.26901043185992757
	.quad	0x3fe7ea90a0dce336              # double 0.74738341730617353
	.quad	0x3fd6d85d9058675e              # double 0.35695590110991826
	.quad	0x3fd41108536cd53a              # double 0.31353958270058835
	.quad	0x3fd23277a8935c06              # double 0.28433028662169624
	.quad	0x3fb81927c78de480              # double 0.094133840770057375
	.quad	0x3fe2c77de2fa29c6              # double 0.58685201961025579
	.quad	0x3fc527437e694cf0              # double 0.16526073143413766
	.quad	0x3feb1fb585a1c1dd              # double 0.84762073612187872
	.quad	0x3fe978b730b1b58f              # double 0.79598578939992304
	.quad	0x3fe70b930642ecca              # double 0.72016288016256991
	.quad	0x3fe3791bfce5f5bf              # double 0.60853385347552791
	.quad	0x3fe37f2d2e7de693              # double 0.60927447395734402
	.quad	0x3fe87b05c0475341              # double 0.76501739077011888
	.quad	0x3fdd411d76d3a19e              # double 0.457099309961018
	.quad	0x3fb8831ca7285f98              # double 0.095750609216678106
	.quad	0x3fe2c157c99b77fa              # double 0.58610143066812204
	.quad	0x3fc98b6b0b2ba2e8              # double 0.19956720395500516
	.quad	0x3fb359ea97809730              # double 0.07559076498781958
	.quad	0x3fce05d938c43f0c              # double 0.23455348274045951
	.quad	0x3fd8e181f4f46302              # double 0.38876389428473612
	.quad	0x3fed99d4f7d221ef              # double 0.92502830889230647
	.quad	0x3fe6a48b02ef2f29              # double 0.70758581708057477
	.quad	0x3fd1a4354c071718              # double 0.27564747261600209
	.quad	0x3fe7d5fb283bfacd              # double 0.74487073763142464
	.quad	0x3feb1680f4eb29ff              # double 0.84649703822771005
	.quad	0x3fd0ae43809fe69a              # double 0.26063621102330503
	.quad	0x3fe07cf85bd6c225              # double 0.5152551454285158
	.quad	0x3fd50ca617079c2e              # double 0.32889702080723537
	.quad	0x3fee429e0a988224              # double 0.94563200063209196
	.quad	0x3fe16217022f4695              # double 0.54322386194890504
	.quad	0x3fef1afedb84d03a              # double 0.97204535364881584
	.quad	0x3fe3065fb9bdb800              # double 0.59452806737476749
	.quad	0x3fe58723fa43c946              # double 0.67274664764253411
	.quad	0x3fdf6e61a59a2566              # double 0.49111214801867786
	.quad	0x3feec19b965b77e2              # double 0.96113376013431329
	.quad	0x3fd9d2ed733bb742              # double 0.40349899533508815
	.quad	0x3fe7a2fcd446de9b              # double 0.73864594898528269
	.quad	0x3fef3410e333702b              # double 0.97510570883924196
	.quad	0x3fbe036a2a2cf448              # double 0.11723960427930635
	.quad	0x3fe61b8925121147              # double 0.69086129417750264
	.quad	0x3fcf6f9ec1da8928              # double 0.24559387650976672
	.quad	0x3fd082f6926d5350              # double 0.25799335765377851
	.quad	0x3fee23c16aeeb2f0              # double 0.94186468968618264
	.quad	0x3fe4fc9c3b9d8f85              # double 0.65583621638914791
	.quad	0x3fd7c4ecc7661668              # double 0.37139434311425257
	.quad	0x3fd2b37f78edacaa              # double 0.29220568475165953
	.quad	0x3fc86e29ff0156a8              # double 0.19086193992068456
	.quad	0x3fd61ec11102c8f2              # double 0.34562708531588193
	.quad	0x3fc1949e9ae52e50              # double 0.13734800875896491
	.quad	0x3fc897b78a55d79c              # double 0.19213003401426654
	.quad	0x3fe1100f0be91fc2              # double 0.53321029974267042
	.quad	0x3fc68c9b38ebbd0c              # double 0.17616596488321823
	.quad	0x3fd5fd4e74fdd58c              # double 0.3435856001372819
	.quad	0x3fe2cfdcb3d1db96              # double 0.58787379380270255
	.quad	0x3fda5f2793744896              # double 0.41205777549579048
	.quad	0x3fcbdc08de2ef404              # double 0.21765242432402954
	.quad	0x3fd30528355c263a              # double 0.2971897622197478
	.quad	0x3fefc634f6eb5dcb              # double 0.99294517733044906
	.quad	0x3fd118612d1ef4a4              # double 0.26711301237430463
	.quad	0x3feffeecc6073dd6              # double 0.99986876180076467
	.quad	0x3fd4fb6a4774c04a              # double 0.3278451631367757
	.quad	0x3feaf76c10b26433              # double 0.84270289670087661
	.quad	0x3fe498a495dbc251              # double 0.64363316792703007
	.quad	0x3fec7dac668bbd99              # double 0.89034099606026296
	.quad	0x3fed2ea7f6352db4              # double 0.91194532477805134
	.quad	0x3fe5073fabb804d9              # double 0.6571348527797013
	.quad	0x3fef97026513c687              # double 0.98718375913286215
	.quad	0x3f8f082406ef7040              # double 0.015152245961807975
	.quad	0x3fdc4d526ef05eba              # double 0.44221936067468059
	.quad	0x3fd0c573aa74b3aa              # double 0.26205150266724309
	.quad	0x3f76a9699a54ea80              # double 0.0055326581107758566
	.quad	0x3fd981a5b4ec80dc              # double 0.39853804272025939
	.quad	0x3fdcc8b3e826d6d6              # double 0.44974992438379269
	.quad	0x3fe1618cbe3bc839              # double 0.54315793185219896
	.quad	0x3feeaff1a099b550              # double 0.95897752158422556
	.quad	0x3fed0efdda72259c              # double 0.90808003106319601
	.quad	0x3fb2c4141a4df5d0              # double 0.073304420873646636
	.quad	0x3fe9e3ff8f2138ed              # double 0.80908182101282267
	.quad	0x3fcafde4fc6f7dc8              # double 0.21087324453308853
	.quad	0x3fe71840d5485217              # double 0.72171060234774387
	.quad	0x3fe9a1b92ef62452              # double 0.8009916226593623
	.quad	0x3fbc30339eb7ad28              # double 0.11011049866617795
	.quad	0x3feb41e15cdc4df3              # double 0.85179203163937556
	.quad	0x3feb0c88a588b900              # double 0.8452800019347535
	.quad	0x3fda70b57641b378              # double 0.41312920139790021
	.quad	0x3fe7f3d1f093b132              # double 0.74851319301300223
	.quad	0x3fd6dd41ddea64e0              # double 0.35725447341390115
	.quad	0x3fbdc09f7803e878              # double 0.1162204425817509
	.quad	0x3feaf222eaeb2458              # double 0.84205766565822682
	.quad	0x3fdf0ac3ffb70d00              # double 0.48503208133861619
	.quad	0x3fb6561e924342b8              # double 0.087251578053165413
	.quad	0x3fec316a53525cb5              # double 0.88103214525008033
	.quad	0x3f8aed27d3562780              # double 0.013147650849322678
	.quad	0x3fdaf2fab582afb4              # double 0.42108028150209553
	.quad	0x3fd5630b94afd57a              # double 0.33417024154854114
	.quad	0x3fdc757acf05e89c              # double 0.44467039315316881
	.quad	0x3fdb5d2da83e3ed6              # double 0.42756215505594974
	.quad	0x3feb8e77c679cd43              # double 0.86114109768679048
	.quad	0x3fe9d91ee8cfbad3              # double 0.80775399657235381
	.quad	0x3fe8d6c6a687f36b              # double 0.77621777082059162
	.quad	0x3fe5ae7948db676a              # double 0.67754806737796724
	.quad	0x3fe143d402b7f4e9              # double 0.53952980547879037
	.quad	0x3fe9d938469e73ee              # double 0.80776609223141604
	.quad	0x3fe551954aae79a5              # double 0.66620888315428728
	.quad	0x3fe9a32319e90ce3              # double 0.80116419849983023
	.quad	0x3fea0f97fb9f046d              # double 0.81440352577932418
	.quad	0x3fea2a0ae20610d4              # double 0.81763214249851978
	.quad	0x3fd9b8bee3db8e9a              # double 0.40190098048899758
	.quad	0x3fe2e61d03775df1              # double 0.59059000660903227
	.quad	0x3fddf38e50ea13ba              # double 0.46799047376435576
	.quad	0x3fb5cdad117bacb8              # double 0.085169617431961053
	.quad	0x3fee1170b24f3d9c              # double 0.939628933201607
	.quad	0x3fe99ac8c18100a1              # double 0.80014455598577083
	.quad	0x3fe97a39f3e6f00d              # double 0.79617021214608175
	.quad	0x3fdd26373684c89a              # double 0.45545749973383354
	.quad	0x3fca68ce8e1af0f4              # double 0.20632345141155606
	.quad	0x3fd889ca16d29810              # double 0.38340999821446164
	.quad	0x3fdac223a54383f0              # double 0.41809931887661289
	.quad	0x3fc1d6f2bf11a8d8              # double 0.13937219934024969
	.quad	0x3fe8f19c607ac3f7              # double 0.7794935116163505
	.quad	0x3fe82ecf26e13a07              # double 0.75571401208600342
	.quad	0x3fed864b06662696              # double 0.92264319658098048
	.quad	0x3fed32c8669e13f9              # double 0.91244907419661481
	.quad	0x3fed9b34d4221c75              # double 0.92519608909868956
	.quad	0x3fd87bbbddcff17e              # double 0.38255211507182441
	.quad	0x3feba04275883f5f              # double 0.86331294017325522
	.quad	0x3fe743ec4bb81156              # double 0.72704138554449105
	.quad	0x3fe123fa048a1d4e              # double 0.53564167868254642
	.quad	0x3feeb9e5d52eb166              # double 0.96019260060488132
	.quad	0x3fef7bae17178ad7              # double 0.98384766111515886
	.quad	0x3f8b4674fc9ca0c0              # double 0.013317979773617927
	.quad	0x3fdb51279569ebaa              # double 0.42682828513323534
	.quad	0x3fe8adc8bcd6d048              # double 0.77121388323440332
	.quad	0x3fe5f90a59734f7e              # double 0.68665044279849474
	.quad	0x3fd8f6a06198f2fe              # double 0.39005288630487189
	.quad	0x3fe1c121454dc24f              # double 0.55482543502700732
	.quad	0x3fd411355faa3528              # double 0.31355032293579876
	.quad	0x3fd23025b58ba404              # double 0.28418867806482262
	.quad	0x3fd5afa95d47cb7e              # double 0.3388465319578059
	.quad	0x3fc0046968f2e9d8              # double 0.12513463615853371
	.quad	0x3fea049971b44b39              # double 0.81306144912591727
	.quad	0x3fd0f3cfcd17c7ec              # double 0.26488108662226639
	.quad	0x3fd8c5d30b32914c              # double 0.38707424252995248
	.quad	0x3fd7c469b32e0d9c              # double 0.37136309145008695
	.quad	0x3fef96ac1455d8fd              # double 0.98714260074373749
	.quad	0x3feb60b8ef1b70c6              # double 0.85555693340895611
	.quad	0x3fc078057c217da8              # double 0.12866276322436687
	.quad	0x3fc26285ae369bc0              # double 0.14363165861615634
	.quad	0x3fa07de875853060              # double 0.032210602136360178
	.quad	0x3fec64c6d51ada68              # double 0.88730184194612338
	.quad	0x3fee61d23930c217              # double 0.94944106264125849
	.quad	0x3febf3cd91e5a7e5              # double 0.87351110930944442
	.quad	0x3fcc3f5b76f1dc3c              # double 0.22068351085519733
	.quad	0x3fecb085106c4d20              # double 0.89654782493235884
	.quad	0x3fe630b4142b8617              # double 0.69344524325805679
	.quad	0x3fe66538b86bade7              # double 0.6998561479535369
	.quad	0x3fe5f9ab0b7d9870              # double 0.68672706836947661
	.quad	0x3fe3fa4434885f21              # double 0.62430010090153953
	.quad	0x3fe168d461be03db              # double 0.54404658403666006
	.quad	0x3fe9aa74c5e40f53              # double 0.80205763483579984
	.quad	0x3fe5c283e106372c              # double 0.67999452543310701
	.quad	0x3fe11809491b515b              # double 0.53418411520628284
	.quad	0x3fe06071665d9351              # double 0.51177282326953322
	.quad	0x3fedf26f0bae0b10              # double 0.93584396630498823
	.quad	0x3feef8f430bd3219              # double 0.96788987655014857
	.quad	0x3fe5494ff16180f4              # double 0.66519925255491197
	.quad	0x3fe1ea1ec1f343be              # double 0.55982911950024294
	.quad	0x3f9a3c465fe700c0              # double 0.025620555499472841
	.quad	0x3fedff596de999ce              # double 0.93742057292257086
	.quad	0x3fb7edccba307580              # double 0.093472285705919588
	.quad	0x3fd4069546317be2              # double 0.3129018006783878
	.quad	0x3fccff4c6cad8ed0              # double 0.2265410929349998
	.quad	0x3fcff0a33b8e015c              # double 0.24953117759651888
	.quad	0x3fefd413b1a613fa              # double 0.99463829705257401
	.quad	0x3fdb314b6428707e              # double 0.42488369732905784
	.quad	0x3fe6da563a668dae              # double 0.71415244490019858
	.quad	0x3fac6f8d77004c80              # double 0.055538578773984604
	.quad	0x3fbdd489d3b2d4e0              # double 0.11652432840749638
	.quad	0x3fef4c699ae90a3d              # double 0.97807770019455342
	.quad	0x3fe84e529bd19a2e              # double 0.75956087525702798
	.quad	0x3fca938eef48a834              # double 0.20762812312870127
	.quad	0x3fed8ec773b59699              # double 0.92367909049490315
	.quad	0x3fd11e637c16bd6e              # double 0.2674797736935578
	.quad	0x3fcce6620f6c8e14              # double 0.22578073266150567
	.quad	0x3fbbabcb8b610010              # double 0.10809013512425758
	.quad	0x3fdfb1986a345c5e              # double 0.49521456119095386
	.quad	0x3fb05c55461689e0              # double 0.063908891307199678
	.quad	0x3fe9f663901d09c6              # double 0.81132677218584415
	.quad	0x3f90847f264950a0              # double 0.016130434715095121
	.quad	0x3fed1f50e11163eb              # double 0.91007274588184595
	.quad	0x3fe716835d873c87              # double 0.72149818675269806
	.quad	0x3fe748509f7b78d7              # double 0.72757750653161224
	.quad	0x3fd54707cf0de12c              # double 0.33246035785807027
	.quad	0x3feaff8315769817              # double 0.8436904353336584
	.quad	0x3fe24bafc5ca3b6a              # double 0.57173908835271203
	.quad	0x3fc85fccaa8ea8e8              # double 0.19042356803885885
	.quad	0x3fd1ac2c28188f74              # double 0.27613357463473354
	.quad	0x3feb651ef5a3d738              # double 0.85609386421740563
	.quad	0x3fd280b710229556              # double 0.28910614562695025
	.quad	0x3fe7f24bc8fbb40e              # double 0.7483271527722779
	.quad	0x3fe812433a7a6bc5              # double 0.75222932263874809
	.quad	0x3fd2e43e665df106              # double 0.29518089291356409
	.quad	0x3fe444eff7a5fb55              # double 0.6334152066118387
	.quad	0x3fe70553fe21921a              # double 0.71940040240275782
	.quad	0x3fbe029a022e6980              # double 0.11722719720129327
	.quad	0x3fd8cabf78653a2e              # double 0.38737475163807999
	.quad	0x3fe62b97ca308dad              # double 0.69282140245598145
	.quad	0x3fc158cab7bd4124              # double 0.13552221271175668
	.quad	0x3fc13a5d3108f5c0              # double 0.13459362882887937
	.quad	0x3fed8bb97498ade0              # double 0.92330620548949227
	.quad	0x3fb07bade4fa39b0              # double 0.064387195971199018
	.quad	0x3fe4b859afee1e5f              # double 0.6475037037025223
	.quad	0x3fb994758c84e698              # double 0.099921557241851366
	.quad	0x3fd99299c23205c8              # double 0.39957279171366311
	.quad	0x3fea669c8ed11de2              # double 0.82502582448881534
	.quad	0x3fcf554310f9842c              # double 0.244789489067473
	.quad	0x3fd583260b338fdc              # double 0.33612967580688546
	.quad	0x3fe0b14705cf570a              # double 0.52164031157255519
	.quad	0x3fc6bf4e4b926060              # double 0.17771319093731375
	.quad	0x3fe99c43badc143c              # double 0.80032526489288313
	.quad	0x3fd12fa962a16a96              # double 0.26853403694045974
	.quad	0x3fe380d6bbef15b8              # double 0.60947739320606953
	.quad	0x3fd7709aecce4276              # double 0.36624787450367735
	.quad	0x3fb8a242a54c9970              # double 0.096225896221403095
	.quad	0x3fbc0f555ad90bc8              # double 0.10960896938290354
	.quad	0x3fd51691b19c8394              # double 0.32950250954495997
	.quad	0x3fd2e9b66c14044e              # double 0.29551468424330529
	.quad	0x3fe8588513ef270a              # double 0.76080564397236228
	.quad	0x3fe6fa7e32b820ed              # double 0.71807775407890306
	.quad	0x3f8334a2c4b4ac80              # double 0.0093777385978539573
	.quad	0x3fe51412c4daf606              # double 0.65870035599044807
	.quad	0x3fe5bdaab1325c24              # double 0.67940268143400262
	.quad	0x3fd8584442fe7e76              # double 0.38038736860651257
	.quad	0x3fc106654ec505fc              # double 0.13300768228695847
	.quad	0x3fe1818e55695acb              # double 0.54706494028035857
	.quad	0x3fee8bfcfb4cccff              # double 0.95458840448409876
	.quad	0x3fe494f1e2ae4da1              # double 0.64318174623115365
	.quad	0x3fe865dea656bb09              # double 0.76243526924176408
	.quad	0x3fe31526c782ba8b              # double 0.59633196799207278
	.quad	0x3fe5b2e89775e9d1              # double 0.67808942396305316
	.quad	0x3fd9c4f4d228b3b0              # double 0.40264626048411412
	.quad	0x3fe2c38eadb7cc5d              # double 0.58637174538888426
	.quad	0x3fef8b6dec483e0a              # double 0.98577018879763156
	.quad	0x3fef837e980ca565              # double 0.98480157563350856
	.quad	0x3fe3f6fb79dc34bf              # double 0.62389920998398185
	.quad	0x3feefcfc104d4234              # double 0.96838191207831991
	.quad	0x3fdbd8d019632bf8              # double 0.43510820845830223
	.quad	0x3fef4c2a167b2a75              # double 0.9780474127849873
	.quad	0x3f9bfe3a421ec520              # double 0.027336988721519906
	.quad	0x3fee2cb3722a7450              # double 0.94295666025176139
	.quad	0x3fe95e918ce231e1              # double 0.79279401317904441
	.quad	0x3fe3e8ad7cf91bed              # double 0.62215303810887479
	.quad	0x3fc1da56b7993edc              # double 0.13947566952491897
	.quad	0x3fefb1d1373b7907              # double 0.99045620715676896
	.quad	0x3fec20b2546631ef              # double 0.87899128421991957
	.quad	0x3fe8bda80e006e00              # double 0.7731514237852366
	.quad	0x3fd905b950f0f6ce              # double 0.39097435860081198
	.quad	0x3fdde5a5cff69aea              # double 0.46714158352771895
	.quad	0x3fc7c12c6b1851dc              # double 0.18558268765686037
	.quad	0x3fcff4c8eb82ea70              # double 0.24965774058894707
	.quad	0x3fdd9e8af14ea3e8              # double 0.46280168118624809
	.quad	0x3fea84ea3be3ccbc              # double 0.82872497269854461
	.quad	0x3fef0fe79429b4a6              # double 0.97069148004597561
	.quad	0x3fcf425c285f6290              # double 0.24421264621084449
	.quad	0x3fda6ea25dd08c1a              # double 0.41300257836900445
	.quad	0x3feb52b7bfa0b031              # double 0.85384738375933555
	.quad	0x3fd2c0749c169c26              # double 0.29299655192375196
	.quad	0x3fba433af03e6740              # double 0.10258835187269444
	.quad	0x3fe0809c1870c11f              # double 0.51569943212055935
	.quad	0x3fd26ad8f24ae15e              # double 0.28777145062806209
	.quad	0x3fe9f18c7b91f005              # double 0.81073593268183741
	.quad	0x3fda9c98a55106c0              # double 0.41580787796202046
	.quad	0x3fb4dadfc30502c8              # double 0.081464753257942779
	.quad	0x3fa952f586f00ed0              # double 0.049461052629366287
	.quad	0x3fd8bdd71ac8f190              # double 0.38658692947117235
	.quad	0x3fde13effe3310dc              # double 0.46996688675086573
	.quad	0x3fc904c005d5bbdc              # double 0.19545746121317975
	.quad	0x3fea8e47233a6582              # double 0.82986790543070321
	.quad	0x3fd826e66357cc62              # double 0.37737426473103686
	.quad	0x3fe37b6b202a36a5              # double 0.60881572992521582
	.quad	0x3fd2e1aeb727377a              # double 0.29502456556371437
	.quad	0x3fce2d39af507a1c              # double 0.23575516758224146
	.quad	0x3fef820ea0eeb352              # double 0.98462611610521322
	.quad	0x3fd4f0c8adc57768              # double 0.32719628305300441
	.quad	0x3fbd40778d2a9330              # double 0.11426493832057072
	.quad	0x3feeda2c4f35edec              # double 0.96413245650131562
	.quad	0x3fd1b63d8df9a4cc              # double 0.27674807419550684
	.quad	0x3fe684b2324e65b7              # double 0.70369825196683322
	.quad	0x3fe83595bfe2229b              # double 0.75654113270964574
	.quad	0x3fca9ca64a88ed5c              # double 0.20790556563756979
	.quad	0x3fdb403cd870b74a              # double 0.42579575669048053
	.quad	0x3fe787c7badf219d              # double 0.73532473085747407
	.quad	0x3fd1ced43a6835a6              # double 0.27824884132209105
	.quad	0x3fe8db24415bc0ee              # double 0.77675068631472555
	.quad	0x3fdfce85b3579502              # double 0.49698011888388305
	.quad	0x3feb88d1b6fcbc10              # double 0.86045156230636799
	.quad	0x3fe418fb343816c5              # double 0.62804947089235752
	.quad	0x3fdb766e0d93d782              # double 0.42910338712624008
	.quad	0x3fbaba89531eec30              # double 0.1044088199550266
	.quad	0x3fecc192c13400b5              # double 0.89862954840648135
	.quad	0x3fef332ae90d2543              # double 0.97499604719011079
	.quad	0x3fd7e5390ced7390              # double 0.3733656526799729
	.quad	0x3fc21cfc470b0420              # double 0.14150956601045639
	.quad	0x3fc9c71154a86b04              # double 0.20138756402669611
	.quad	0x3fc69c6f9fd71fc8              # double 0.17664904885009336
	.quad	0x3fbcee958720ed50              # double 0.11301550435103036
	.quad	0x3fec7b13c1d3a844              # double 0.89002406937402911
	.quad	0x3fe3de8ac2d537a4              # double 0.62091577580735136
	.quad	0x3feb952d8c5bb139              # double 0.86196019567208915
	.quad	0x3fe2f1e0a3fda42f              # double 0.59202606229258048
	.quad	0x3feb6a71cb87de9e              # double 0.85674371482942369
	.quad	0x3fde75eed1614b8e              # double 0.47594805190345191
	.quad	0x3fd0acf3be603ebe              # double 0.26055615989114844
	.quad	0x3fe8c0243d94bab9              # double 0.77345478084119812
	.quad	0x3fe365eedde3bc49              # double 0.60619300210772409
	.quad	0x3fd83c423f3e6ad6              # double 0.37867790390161582
	.quad	0x3feea91edad6f567              # double 0.9581445955479183
	.quad	0x3fe0d4516e432f8c              # double 0.52591773543962139
	.quad	0x3fe21d5cd987c311              # double 0.56608431326285047
	.quad	0x3fe3502058495bee              # double 0.60353104823559334
	.quad	0x3fac45d5d7c80310              # double 0.055220301237573932
	.quad	0x3fc036c58ff20418              # double 0.12667150047858011
	.quad	0x3fe992c9dba47765              # double 0.79916851900973696
	.quad	0x3fbce6ded04ecdf8              # double 0.11289780221596135
	.quad	0x3fb79872f5dc0578              # double 0.092169938110620353
	.quad	0x3fe28de0ccfab082              # double 0.579819107389554
	.quad	0x3fc101b89ae529dc              # double 0.13286502421608659
	.quad	0x3feba06121ffe99e              # double 0.86332756653364462
	.quad	0x3fda35d2c7a3ea90              # double 0.40953511711237756
	.quad	0x3fefe2993bbec846              # double 0.99641095799439294
	.quad	0x3fe42a5577564929              # double 0.63016770656603172
	.quad	0x3fd468ec6b08a9ac              # double 0.31890402271769847
	.quad	0x3fd3068237010bee              # double 0.29727225657933232
	.quad	0x3fe6253bad6990c0              # double 0.69204505796053439
	.quad	0x3fe9ce5036ed3aa8              # double 0.80643473365656337
	.quad	0x3fef6dc05a36f408              # double 0.98214738483477592
	.quad	0x3fd62ab2d56e4e6c              # double 0.34635611384258058
	.quad	0x3fe5eaa3934546e9              # double 0.68489245189468051
	.quad	0x3fd99e0a3eafa2aa              # double 0.40027099725424853
	.quad	0x3feccc580c19b1b0              # double 0.89994432795861279
	.quad	0x3feee267b6615d09              # double 0.96513734456212418
	.quad	0x3fec9ff242448c14              # double 0.89452469771311138
	.quad	0x3fa7ec3b582d2420              # double 0.046724180711471996
	.quad	0x3fe4ec6329be50b7              # double 0.65385587838183923
	.quad	0x3f95b35e4b768d80              # double 0.021192048412229436
	.quad	0x3fde22a650f4a63e              # double 0.4708648481924661
	.quad	0x3fe1e3942cc733b7              # double 0.55903061624268602
	.quad	0x3fd6ea24d02679e6              # double 0.35804100348641865
	.quad	0x3fe961297049c83c              # double 0.79311057978907895
	.quad	0x3fc7fc5cb788e96c              # double 0.18738898240719537
	.quad	0x3fe3fa9354362993              # double 0.62433783004353172
	.quad	0x3fd157cfd53ec3e4              # double 0.27098460983967088
	.quad	0x3fc67c39bbb92644              # double 0.17566606203245005
	.quad	0x3fe9ed87b12749df              # double 0.81024536705291073
	.quad	0x3fe01803cb0f7434              # double 0.50293149624088196
	.quad	0x3fd2b73dac0afdb8              # double 0.29243413735454338
	.quad	0x3fc46569b86c5bdc              # double 0.15934487824480825
	.quad	0x3fee620bbbe69ae1              # double 0.94946848582625532
	.quad	0x3fe18776c71d0d53              # double 0.54778612984993413
	.quad	0x3febed012dc845c4              # double 0.87268122617586429
	.quad	0x3fb519e3f51caa90              # double 0.08242630705050602
	.quad	0x3fe4985cf191cddf              # double 0.64359900647690071
	.quad	0x3fd1caaa658bc462              # double 0.27799472729299712
	.quad	0x3fe07648efe12069              # double 0.51443907596059291
	.quad	0x3fe86ffc34b847d9              # double 0.76367006584973318
	.quad	0x3fb6e2904777a780              # double 0.089394586036773304
	.quad	0x3fd9b305fb7a0c92              # double 0.40155171926762379
	.quad	0x3fea1aa3de2715c6              # double 0.81575196637339142
	.quad	0x3fe4a129f0000587              # double 0.64467331767097924
	.quad	0x3fb5e61f533f1188              # double 0.08554263861066691
	.quad	0x3fe3caf77c356604              # double 0.61852621325959989
	.quad	0x3fe7a2cde890db70              # double 0.73862357543008095
	.quad	0x3fda8bf7a2895c6e              # double 0.41479292748176178
	.quad	0x3fc6e450ec276c4c              # double 0.17884265452343795
	.quad	0x3fccd3b24dde2af0              # double 0.2252104644979549
	.quad	0x3fe177aebf65e8ec              # double 0.5458596933597426
	.quad	0x3f71a94cde57cd00              # double 0.0043118479420514166
	.quad	0x3fa103f2394d9b20              # double 0.03323323201657602
	.quad	0x3fc17d5e0477025c              # double 0.13663840501796443
	.quad	0x3febb7f9a98da36d              # double 0.86620791545747766
	.quad	0x3fb1c5b90baca108              # double 0.069423261022738214
	.quad	0x3fe4a92333348627              # double 0.64564666749010236
	.quad	0x3fda1e5d52a8bab0              # double 0.40810330459764099
	.quad	0x3fda897d1da35dc0              # double 0.41464164633131517
	.quad	0x3fd7e0c485117e54              # double 0.3730937289710472
	.quad	0x3fe9be50cd1d5b49              # double 0.80448188840350909
	.quad	0x3fdf583942c6e208              # double 0.48975974579983061
	.quad	0x3fe873b58cbb91ba              # double 0.76412465559820153
	.quad	0x3fec99dbb9f53cd1              # double 0.89378153152383721
	.quad	0x3fd631da2407dcde              # double 0.34679273146271139
	.quad	0x3fea73c49beddb4d              # double 0.8266318364611408
	.quad	0x3fcb1ed9125f5ad0              # double 0.21187890431493495
	.quad	0x3fe80848d5239dcf              # double 0.75101129177795112
	.quad	0x3fd850862eeece4c              # double 0.37991480429920865
	.quad	0x3fde0e33501d36ce              # double 0.46961672614712036
	.quad	0x3fef2f8a43e1bd7e              # double 0.97455323465503318
	.quad	0x3fe2df4896c4be8c              # double 0.58975629279116637
	.quad	0x3fc33f3e39082b48              # double 0.15036752495537997
	.quad	0x3fe748af34b86865              # double 0.72762260720197658
	.quad	0x3feea96c313eee71              # double 0.95818147295308453
	.quad	0x3fdb8f8f52a481cc              # double 0.43063719816748569
	.quad	0x3fd369b45de26ffc              # double 0.30332669418726232
	.quad	0x3fd501311022fe64              # double 0.32819773269509356
	.quad	0x3fcb68dd1b79b3a8              # double 0.21413768617221973
	.quad	0x3feb25150de7d0a7              # double 0.84827664104388567
	.quad	0x3fe827cd6ce0a739              # double 0.75485869660517502
	.quad	0x3fed93e4a7685aaf              # double 0.92430336663058721
	.quad	0x3fb89cddca413c40              # double 0.096143590811366586
	.quad	0x3fc810f1ac094078              # double 0.18801709079935214
	.quad	0x3fea12fba495915c              # double 0.8148172583137625
	.quad	0x3fe943ba3b8b81a5              # double 0.78951751356003241
	.quad	0x3f70f7cdb6dbba80              # double 0.0041425739016022201
	.quad	0x3feb8fa1f9310030              # double 0.86128328962514011
	.quad	0x3fe2c5a05a7cf89e              # double 0.5866243140551608
	.quad	0x3fc8be627139bae8              # double 0.19331007507886189
	.quad	0x3fc5ce19c454de58              # double 0.17035219274997604
	.quad	0x3feb29b8f5d3e899              # double 0.84884307873950882
	.quad	0x3fc8298951f16664              # double 0.1887675905334617
	.quad	0x3fd53de23529f71c              # double 0.33190207664289217
	.quad	0x3fe9c44099102e82              # double 0.80520658393056999
	.quad	0x3fefd2fb41bb9d53              # double 0.99450457418871918
	.quad	0x3fc8326817fe6798              # double 0.18903828784533228
	.quad	0x3fab98efdab79ea0              # double 0.053901191185841357
	.quad	0x3fdda843534bd80c              # double 0.46339495787049212
	.quad	0x3fe748ad22121b4e              # double 0.7276216187900475
	.quad	0x3f918be096928e80              # double 0.017135152044501556
	.quad	0x3fe7981e2ec74cb1              # double 0.73731907974651822
	.quad	0x3fcdbeb32435b3d4              # double 0.23238219516807013
	.quad	0x3fb83fb9b4fb52c0              # double 0.094722372708313962
	.quad	0x3fe657898c23656b              # double 0.69818570490603571
	.quad	0x3f91ca362bdb1f40              # double 0.017372938563112728
	.quad	0x3feee6c8528d019e              # double 0.96567169306949885
	.quad	0x3fb81dd50519d468              # double 0.094205201859794863
	.quad	0x3fba189006940b20              # double 0.10193729553797626
	.quad	0x3fea463ea0d01816              # double 0.82107478531611622
	.quad	0x3fc6193d8ef47a9c              # double 0.172645277788395
	.quad	0x3feaca76ef780047              # double 0.83721491595498143
	.quad	0x3fee6203be01d707              # double 0.94946467505244037
	.quad	0x3fe85c05f71577d8              # double 0.76123331316534415
	.quad	0x3fe47cc662c152b1              # double 0.64023131645315889
	.quad	0x3fa488333b2cedb0              # double 0.040101624463626862
	.quad	0x3fe4e298db667b97              # double 0.65266077853799487
	.quad	0x3fddd9506022212a              # double 0.46638879192370786
	.quad	0x3fd4391069145364              # double 0.31598291646633059
	.quad	0x3fe4cbe58ca9637b              # double 0.64988973114951365
	.quad	0x3feb54dfff1c70fc              # double 0.85411071611773037
	.quad	0x3fe10fc1dbc76310              # double 0.53317349362905198
	.quad	0x3fd0bb05764184c2              # double 0.26141487644606454
	.quad	0x3fe361dff1447948              # double 0.6056976043944724
	.quad	0x3fda60e046efd2b8              # double 0.4121628468267704
	.quad	0x3fe09283823e66e5              # double 0.51788497389062782
	.quad	0x3fe5bfe66390805c              # double 0.67967528768714258
	.quad	0x3feab12e6a88884f              # double 0.83412857825556752
	.quad	0x3fab7d2003c82c60              # double 0.053689003430996918
	.quad	0x3fe1c590e0896cfc              # double 0.55536693434569839
	.quad	0x3fbd021abd8003f0              # double 0.11331336142031012
	.quad	0x3fddf1207305ace4              # double 0.46784220917352415
	.quad	0x3fbba3110c3cc1e8              # double 0.10795694874537498
	.quad	0x3fdbd07f439fa136              # double 0.43460065463888797
	.quad	0x3fb9f2c4c256de00              # double 0.10136060471165109
	.quad	0x3fd0eea3fec35be2              # double 0.26456546668253911
	.quad	0x3fd4938302ebe2c2              # double 0.3215034035234049
	.quad	0x3fed65ccdbfad367              # double 0.91867678608705894
	.quad	0x3fed8ac494f6ac1a              # double 0.92318944067426689
	.quad	0x3fdadaef2babdcba              # double 0.41961268677500707
	.quad	0x3fd64c4b3a875b5c              # double 0.34840660777756738
	.quad	0x3f8ebfa56d928140              # double 0.015013973623638877
	.quad	0x3fd99d268f701e88              # double 0.40021671302427153
	.quad	0x3fab8af47809c7d0              # double 0.053794517186261381
	.quad	0x3fbbc164972f46d8              # double 0.10841969195396517
	.quad	0x3fe614aad34a1c4d              # double 0.69002286212424624
	.quad	0x3fe8748f56e34d46              # double 0.7642285058049445
	.quad	0x3fbee6fed45299c0              # double 0.1207122104993692
	.quad	0x3f96e73e4cc6cc00              # double 0.022366498409336799
	.quad	0x3fd685de178798dc              # double 0.35192062661952916
	.quad	0x3fb13d20fc8c6ae8              # double 0.067339002282476579
	.quad	0x3f6b35772343ab00              # double 0.00332139271823928
	.quad	0x3fe2b695040040f8              # double 0.58478785306399939
	.quad	0x3fdd7ed0375776f6              # double 0.46086507229288942
	.quad	0x3fd255f4aa678a2c              # double 0.28649632111606382
	.quad	0x3fcfd0f8ab65cb64              # double 0.24856479996705183
	.quad	0x3fd4cc11dc18bebc              # double 0.32495542997183313
	.quad	0x3fa97b6a02615fc0              # double 0.049769699850628069
	.quad	0x3fe9595675ca4581              # double 0.79215548520930679
	.quad	0x3fe6295d4331bcac              # double 0.69254935382732219
	.quad	0x3fea7d10fb59e51b              # double 0.8277668866350355
	.quad	0x3fe6fa2ed74a24e0              # double 0.71803991364245334
	.quad	0x3fb98eddc988ba58              # double 0.099836217596683041
	.quad	0x3feaf4ec50f64f8f              # double 0.84239784062309464
	.quad	0x3fe3430f5e0c8330              # double 0.60193603867455714
	.quad	0x3feaf37d2bf93289              # double 0.84222277248916655
	.quad	0x3fe523fe98451b37              # double 0.66064386120056084
	.quad	0x3fe718ce9e5fdc38              # double 0.72177821094999839
	.quad	0x3fd61ce885edda24              # double 0.34551442221655493
	.quad	0x3fbb2b7a7e5a2eb8              # double 0.1061321791150317
	.quad	0x3fe21a22946c2fc9              # double 0.56569031704702255
	.quad	0x3feeb34c826743ce              # double 0.9593870684567436
	.quad	0x3fc229ca7bda8774              # double 0.14190035865345474
	.quad	0x3fc9d13974ff54d8              # double 0.20169752323878387
	.quad	0x3f5cf3facc0d1600              # double 0.0017671536626989726
	.quad	0x3f96eb891a64bb00              # double 0.022382871852808073
	.quad	0x3fd0552938b3f0de              # double 0.25519781625167848
	.quad	0x3fc3a3fdfd24d060              # double 0.15344214306390125
	.quad	0x3fd2a3d841b2392a              # double 0.29125029006617587
	.quad	0x3fca6b4d6a884d68              # double 0.20639960958269943
	.quad	0x3fc320a8bda57e40              # double 0.14943417797165814
	.quad	0x3fe37b5a92b9d921              # double 0.6088078370801534
	.quad	0x3fe866978a2f0844              # double 0.76252343167312419
	.quad	0x3fda72bc277cab54              # double 0.41325286728049559
	.quad	0x3fc9fdadd40f7d24              # double 0.20305416922108421
	.quad	0x3fd46125af6e267c              # double 0.31842939502585188
	.quad	0x3fbcfb1ca59ec608              # double 0.11320666354620113
	.quad	0x3fd55220691d0ace              # double 0.33313761010155651
	.quad	0x3fed1db6b6dcfc62              # double 0.90987716403459395
	.quad	0x3fe11207836be412              # double 0.53345084827663158
	.quad	0x3fe1d40e9ea25f56              # double 0.55713587744956317
	.quad	0x3f9cf5c7611b2680              # double 0.028281321813472093
	.quad	0x3fe85ecc1d46df88              # double 0.76157193868765294
	.quad	0x3fe445f17db1e7ef              # double 0.63353800344270705
	.quad	0x3fe0dc9c5a01dabb              # double 0.52693002299823577
	.quad	0x3fe7e3986bd6ccdf              # double 0.74653264105145556
	.quad	0x3fedbc271b8842bd              # double 0.929217866682016
	.quad	0x3fc1eb8e1cdd28c0              # double 0.14000107201929346
	.quad	0x3fe93ac529928a79              # double 0.78842409247984258
	.quad	0x3fe319eda2555a49              # double 0.59691507058853077
	.quad	0x3fcb85db70a39aec              # double 0.21502249717669686
	.quad	0x3fb90d2f086c3c48              # double 0.097857417637201682
	.quad	0x3fe2cc368da193e1              # double 0.58742835676514116
	.quad	0x3fb74c8b7fe9b1c8              # double 0.091011732796409395
	.quad	0x3fe67a05526b8072              # double 0.70239511582987135
	.quad	0x3fb738e34a3900a8              # double 0.090711789723175174
	.quad	0x3fda5cc1d8bf31f4              # double 0.41191145102200655
	.quad	0x3fbad2c763742d10              # double 0.1047787301833305
	.quad	0x3fd8600e022e0efe              # double 0.38086271489031265
	.quad	0x3fe76f8a07e73307              # double 0.73236562293604457
	.quad	0x3fd32e5c033ec12a              # double 0.29970455471904478
	.quad	0x3fe948d9717a8eae              # double 0.79014274753395397
	.quad	0x3fd82f4226d5b4a6              # double 0.37788442413768519
	.quad	0x3fc3da6b889c82fc              # double 0.15510315103986005
	.quad	0x3feadf589fbf4848              # double 0.83976393890976286
	.quad	0x3fefdf4556d358ff              # double 0.99600474317665532
	.quad	0x3fb21e0ac0e29830              # double 0.070770904627892817
	.quad	0x3fef174c70d8e32b              # double 0.97159406700584349
	.quad	0x3fe2d84516c40e17              # double 0.58890013166859745
	.quad	0x3fb8af8d49995fb8              # double 0.096428709476980567
	.quad	0x3fdf71ab95d174c0              # double 0.49131288176233667
	.quad	0x3fdb25886a1b5476              # double 0.42416582452762641
	.quad	0x3f99a5233886f9a0              # double 0.025044012379788705
	.quad	0x3fd99ced0333c2b4              # double 0.40020299256051861
	.quad	0x3fe43c4e2b793cf7              # double 0.63236149302420486
	.quad	0x3fe169509d05e3de              # double 0.54410582226330084
	.quad	0x3fdc21902395761a              # double 0.4395485255716679
	.quad	0x3fedf88de29e640e              # double 0.9365910936495554
	.quad	0x3fea44e65ae6b686              # double 0.82091062311310803
	.quad	0x3fbe9eb95ef248c0              # double 0.11960943763759513
	.quad	0x3fdf580026f6d248              # double 0.4897461300381889
	.quad	0x3fcae1dc984e1c68              # double 0.21001775204442485
	.quad	0x3fde7be6d928ef44              # double 0.47631236273786137
	.quad	0x3fd3b96828ba5c30              # double 0.30819133736935367
	.quad	0x3fee8fb0580d854c              # double 0.95504014203849285
	.quad	0x3fede7525a691a00              # double 0.9344875112372506
	.quad	0x3fb01338d8968af8              # double 0.062793305280631873
	.quad	0x3fd8b1e038cdce18              # double 0.38585668132074735
	.quad	0x3fc549ec0548dcb0              # double 0.16631841905630074
	.quad	0x3fe3f121a90bc509              # double 0.62318499581138653
	.quad	0x3fe0f86157d8665b              # double 0.53031985432898965
	.quad	0x3f84332d7e8aa480              # double 0.0098632387392447729
	.quad	0x3fe7607710b32391              # double 0.73052552472755583
	.quad	0x3fe9879569f96ddc              # double 0.79780073831664877
	.quad	0x3fe83133a14277a6              # double 0.7560060643770512
	.quad	0x3fceead5b577dc50              # double 0.24154158936264247
	.quad	0x3fe309e23ef4b849              # double 0.59495651527482452
	.quad	0x3fdf7767c788e2ca              # double 0.49166292653857779
	.quad	0x3fd6c780cdd9a8c4              # double 0.3559267053848425
	.quad	0x3febba8a360a2f3a              # double 0.86652098230977193
	.quad	0x3fef917201e86d2e              # double 0.98650455830230555
	.quad	0x3fc596dda2f62a50              # double 0.16866655785664131
	.quad	0x3fe9f726a5ddf29a              # double 0.81141979595084313
	.quad	0x3feb6d9543e851d8              # double 0.85712683928664557
	.quad	0x3fd2367e49666e7e              # double 0.28457600753765877
	.quad	0x3fea0ead74b971f4              # double 0.81429169461949735
	.quad	0x3fecf1f1f9f0491d              # double 0.90453432861457694
	.quad	0x3fdf65304ccf0c48              # double 0.49055106640679869
	.quad	0x3fbdf09ecc4ac260              # double 0.11695282447431898
	.quad	0x3fe5c33c8b877acb              # double 0.68008258106041219
	.quad	0x3fd6840dac6f9de6              # double 0.35180990066007067
	.quad	0x3fd2a4bfc0f01b24              # double 0.29130548326104333
	.quad	0x3fbdf159ba811790              # double 0.11696396640135576
	.quad	0x3fe2f3bbd851034c              # double 0.59225265740688249
	.quad	0x3feeced77f194058              # double 0.96274924110367532
	.quad	0x3fc958950aaaa41c              # double 0.19801581402615021
	.quad	0x3fad16cb97218cb0              # double 0.056814539145102372
	.quad	0x3fc4d92036c2e014              # double 0.16287615465057625
	.quad	0x3fd70a97d68d5674              # double 0.36002155258515889
	.quad	0x3fee7d3f7c4a1827              # double 0.95278906131057262
	.quad	0x3fea27e3e354f228              # double 0.81736940766092392
	.quad	0x3fe2664daac47a9b              # double 0.57498820641542936
	.quad	0x3fbdb7c6a2f524a8              # double 0.11608544805962373
	.quad	0x3fdbc6af5ab542c2              # double 0.43400176866729734
	.quad	0x3fd41d54c2f4fc90              # double 0.31429022825972996
	.quad	0x3fe613ea88b5a883              # double 0.68993117047399755
	.quad	0x3fe080e242f83492              # double 0.51573288993826538
	.quad	0x3f9e41602ff1ab00              # double 0.029546263624449232
	.quad	0x3fca3e1e7fe50ff0              # double 0.20502072567808183
	.quad	0x3fb98c79aaf9bbd0              # double 0.099799732439108668
	.quad	0x3fc09e6f7668c220              # double 0.12983506471347628
	.quad	0x3fec818bf8045453              # double 0.89081381264498771
	.quad	0x3fedeb89ac293c4f              # double 0.93500217080316783
	.quad	0x3fec9bd78daf09f8              # double 0.89402368233305562
	.quad	0x3fc015bbc4455778              # double 0.12566325267351508
	.quad	0x3fd84083db521da4              # double 0.37893768709224163
	.quad	0x3fe2a7686127a912              # double 0.58293551421710021
	.quad	0x3fd4648ef047472e              # double 0.31863759483995835
	.quad	0x3fc5e16474774bac              # double 0.17094093024078683
	.quad	0x3fec0ab7188719b8              # double 0.87630801001142
	.quad	0x3fd87f53e16f7472              # double 0.38277146353886515
	.quad	0x3fe2de3059198409              # double 0.58962266351966364
	.quad	0x3fead7e9dafa9498              # double 0.83885662812521655
	.quad	0x3fcc7a04daf9dd7c              # double 0.22247372333707094
	.quad	0x3fee8b589bd90b9a              # double 0.95451002539663254
	.quad	0x3fecff3bc1746849              # double 0.90615642341732283
	.quad	0x3fd4aa5a2db91754              # double 0.32289747681749259
	.quad	0x3fc956e5ff3edd4c              # double 0.19796442950403514
	.quad	0x3fb1c9437ab73388              # double 0.069477288684721583
	.quad	0x3fdd753caa43a364              # double 0.46028057696690028
	.quad	0x3fe9a8dcd1240c88              # double 0.80186310622993151
	.quad	0x3fe7b262bc4f90ca              # double 0.74052559642270777
	.quad	0x3fdb657ed81919f2              # double 0.42806979277921109
	.quad	0x3feeda89808fb33f              # double 0.96417689427980934
	.quad	0x3f9d5dc269c40e80              # double 0.028677976327357246
	.quad	0x3fe63e265e22fbe1              # double 0.69508665453019713
	.quad	0x3fe1bd82434e526d              # double 0.55438340326015878
	.quad	0x3fe9cba95175a613              # double 0.80611101064750057
	.quad	0x3feacdc9831ccdbc              # double 0.83762050254738751
	.quad	0x3f9f291d52c7f5a0              # double 0.030430277040058962
	.quad	0x3fe19698cdaa3607              # double 0.54963340920375081
	.quad	0x3fdede185a6fb8ac              # double 0.48230561095887015
	.quad	0x3fe2147b2276b920              # double 0.56500012141421863
	.quad	0x3fea71dc2364549c              # double 0.82639891540988541
	.quad	0x3fca8f46d3761114              # double 0.20749745679143727
	.quad	0x3fe24125a1de6bda              # double 0.57045251479155046
	.quad	0x3fe41c035743fdcd              # double 0.6284195618063052
	.quad	0x3fe5285812513d55              # double 0.66117480828863029
	.quad	0x3feba3bdc6d5151a              # double 0.86373795351451865
	.quad	0x3fe6edc74cd54553              # double 0.71652569776976305
	.quad	0x3fe9ec78df997a30              # double 0.81011623069554695
	.quad	0x3fa126266e9ef910              # double 0.033494187358416139
	.quad	0x3feb3b993a4d16e1              # double 0.85102521311702273
	.quad	0x3fe8347fb4a12e09              # double 0.75640855101795623
	.quad	0x3fec9386c23c8eee              # double 0.89300859391047793
	.quad	0x3fcf0cd5a67562d4              # double 0.24257918002947199
	.quad	0x3fe38e016c57c51c              # double 0.61108466301644482
	.quad	0x3fd19ba6d4e33252              # double 0.27512522496980296
	.quad	0x3fe899dbae1a39b8              # double 0.76878150944121781
	.quad	0x3fed2a160e214a46              # double 0.91138746986173014
	.quad	0x3fe0e320e46e1bc0              # double 0.52772564521080056
	.quad	0x3fcb3028fb9e1cc4              # double 0.21240722929016986
	.quad	0x3fb9bf2b69ad9a90              # double 0.10057326631577213
	.quad	0x3fe2fde54c985ad8              # double 0.59349312744128735
	.quad	0x3fb9a27fc0fbe040              # double 0.10013578855057492
	.quad	0x3fd44ccddd227f4c              # double 0.31718775363150509
	.quad	0x3fe27b967266da01              # double 0.5775863871011212
	.quad	0x3fac02666723fa60              # double 0.054705810633085106
	.quad	0x3fd8ab934edb05c2              # double 0.38547213268983793
	.quad	0x3fc0ee8b3f3b5824              # double 0.13227978312960531
	.quad	0x3fc4f1c1b872d830              # double 0.16362782961158606
	.quad	0x3fd8963c5c377c0c              # double 0.3841696644357746
	.quad	0x3fe056c2166b0d53              # double 0.51059059504079085
	.quad	0x3fd5c55363c5cb86              # double 0.34016880744382438
	.quad	0x3feb85ffd24dcc5c              # double 0.86010733675938011
	.quad	0x3fe6497d1e86e92f              # double 0.69647079431823566
	.quad	0x3fd36d7517b7bc0c              # double 0.30355574909384653
	.quad	0x3fe4d8bc3fdf0ba6              # double 0.65145695185525621
	.quad	0x3fc0f17e40c14c74              # double 0.13236978685253897
	.quad	0x3fd6f1f14bcb9a80              # double 0.35851700212371185
	.quad	0x3fc5e42779513dc4              # double 0.17102521346758526
	.quad	0x3fe24612c2dff0e6              # double 0.5710538679263919
	.quad	0x3fbb3e5449ccdbe0              # double 0.10641981889499119
	.quad	0x3fd494b2f14e750c              # double 0.32157586636624624
	.quad	0x3fa924e0044ff1d0              # double 0.049109459425355717
	.quad	0x3fe426b0d87bf183              # double 0.62972299844800295
	.quad	0x3fe8122fe97fd564              # double 0.75222011189786686
	.quad	0x3fec31d502d86547              # double 0.88108301692697288
	.quad	0x3fe9b6a2a868cd04              # double 0.80354435818154046
	.quad	0x3fe6fe143be9ae93              # double 0.71851550771448769
	.quad	0x3febbf08b78ab0d6              # double 0.86706958625793606
	.quad	0x3fcfe6e76aa99d54              # double 0.24923412998325978
	.quad	0x3fb08995ceead880              # double 0.064599383370337549
	.quad	0x3fe896aa1dec9b46              # double 0.76839166493014299
	.quad	0x3fbcb6dc96789d60              # double 0.11216524766552061
	.quad	0x3fd470a23fce0f46              # double 0.31937462073277734
	.quad	0x3fdcf168d0d33762              # double 0.45223446267197265
	.quad	0x3fec1d37559f1eaa              # double 0.87856642458878764
	.quad	0x3fc6e4e76bf98664              # double 0.17886059543802724
	.quad	0x3f688ec65e4d6200              # double 0.002997767866343759
	.quad	0x3fda9546254fe974              # double 0.41536096233144026
	.quad	0x3fda706c47c3d366              # double 0.41311175354285579
	.quad	0x3fc9bc8145096b3c              # double 0.20106521483361373
	.quad	0x3fd51e893aa8517c              # double 0.32998877266188464
	.quad	0x3fe94061f946fd0c              # double 0.78910921751949691
	.quad	0x3fbd6fb845ad1c40              # double 0.11498595906333353
	.quad	0x3fee9fc70010442e              # double 0.95700407040033553
	.quad	0x3fd50a3d0f4fe7fe              # double 0.32874990935636095
	.quad	0x3fe8727f82c3ffb1              # double 0.76397681751404012
	.quad	0x3fe877ccdd3c76e3              # double 0.76462405405228784
	.quad	0x3fc39ce14ea934c0              # double 0.15322510090701336
	.quad	0x3feb0a44b1640634              # double 0.84500345846772129
	.quad	0x3fedd7dc125d52ca              # double 0.93260005556893444
	.quad	0x3fd83beb858d0a26              # double 0.37865722696384052
	.quad	0x3fd33e781b588c8c              # double 0.30068781538484113
	.quad	0x3fd05d1d93ed2324              # double 0.25568332143716277
	.quad	0x3fe81c566ecd9de7              # double 0.75345918313263105
	.quad	0x3fe492cbc26a53c2              # double 0.64291942569490623
	.quad	0x3fe2d68dad82b167              # double 0.58869060410283403
	.quad	0x3fbddb867e86f6a8              # double 0.11663094128649709
	.quad	0x3fe65160b7b1d814              # double 0.69743381383773562
	.quad	0x3fe1ad233b62beda              # double 0.55238496397756909
	.quad	0x3f8fbe4bd4de1080              # double 0.015499679979037007
	.quad	0x3fea0698241de30a              # double 0.81330496839572786
	.quad	0x3fe76be279d3f032              # double 0.73191951555737078
	.quad	0x3fd7dc9577d5a6ee              # double 0.37283837034793421
	.quad	0x3fda5b3341bd014c              # double 0.41181641978984795
	.quad	0x3fc2cd9a3918d348              # double 0.14689948833406619
	.quad	0x3fe567e0aad7650f              # double 0.66893037192781601
	.quad	0x3fef0dbb771aad81              # double 0.97042630445996291
	.quad	0x3fd3bf575707ec50              # double 0.30855353831401988
	.quad	0x3fde07792ec2b482              # double 0.46920613829099278
	.quad	0x3fddb7de7c198e82              # double 0.46434747809528443
	.quad	0x3feafffc53e9efad              # double 0.84374824895302469
	.quad	0x3fe1921a665c1040              # double 0.54908485405076846
	.quad	0x3fd7cc57335f66d4              # double 0.3718469621359024
	.quad	0x3fbfe66275447270              # double 0.1246091400430005
	.quad	0x3fe60e2553bd5e84              # double 0.68922678332724319
	.quad	0x3fa8fbafef4fb4f0              # double 0.048795221293269964
	.quad	0x3fb87feb66931c10              # double 0.095701897184980788
	.quad	0x3fb0f3ea63f5e068              # double 0.066221856502922116
	.quad	0x3fe8be2abc0f0609              # double 0.77321373682224348
	.quad	0x3fd30bcb42d84b98              # double 0.29759484794447522
	.quad	0x3feff8e3332f0d48              # double 0.9991317748721622
	.quad	0x3fcf638c6091b8a0              # double 0.24522547450346099
	.quad	0x3fc1e51c5cd7d074              # double 0.13980440648413472
	.quad	0x3fc1dfbd788ede58              # double 0.13964050661683092
	.quad	0x3fe5bd1085cb174c              # double 0.67932916766651763
	.quad	0x3fe2ff1164c9213a              # double 0.59363622364711621
	.quad	0x3fc71feceab6ea48              # double 0.18066178761167095
	.quad	0x3fe48a6b301d5761              # double 0.64189681432138113
	.quad	0x3fd52769d2e71a94              # double 0.33053060146304714
	.quad	0x3fe3d5cd8277d1b6              # double 0.61984897119560034
	.quad	0x3fe1307cea78f66d              # double 0.53716893954670086
	.quad	0x3febb7c4b8b108ee              # double 0.86618267128531357
	.quad	0x3fef966b5248d1e2              # double 0.98711172171766415
	.quad	0x3febfe058f64b57c              # double 0.87475851065180121
	.quad	0x3fd5b4efc0d7b488              # double 0.33916848976407055
	.quad	0x3fe0971c0775bdd1              # double 0.51844598252312768
	.quad	0x3feb64c17beecd1e              # double 0.85604929166439425
	.quad	0x3fd9eb24295aff56              # double 0.40497688330286985
	.quad	0x3fdd7031927d0ede              # double 0.4599727564384305
	.quad	0x3fe97f2ccdc7e833              # double 0.79677429381923159
	.quad	0x3fcb82e0213048a0              # double 0.21493150349175938
	.quad	0x3fde3ccef5f7993e              # double 0.47246145267708417
	.quad	0x3fee74c7b7f8a203              # double 0.95175538951758687
	.quad	0x3fcdbc495abba904              # double 0.23230854921650501
	.quad	0x3fe0437731aab614              # double 0.50823554707102625
	.quad	0x3fd239d064340956              # double 0.28477868829226816
	.quad	0x3feabb8da126377e              # double 0.83539468264073924
	.quad	0x3fe22125f578e33f              # double 0.56654642051498871
	.quad	0x3fc159cb5b2f5b60              # double 0.13555280640022271
	.quad	0x3fc7752948594e94              # double 0.18326297791155766
	.quad	0x3fc4a43dacce7334              # double 0.1612622350484344
	.quad	0x3fe39416f6ac1d01              # double 0.61182735613047623
	.quad	0x3fc369830b948be0              # double 0.15165746751253462
	.quad	0x3fd26ba9a7725f52              # double 0.28782121040557229
	.quad	0x3fdedfb8765f4596              # double 0.48240481910496535
	.quad	0x3fe696b7bad59802              # double 0.70589815608104822
	.quad	0x3fe6756e6b094791              # double 0.70183487802045097
	.quad	0x3fe7d30e9e530829              # double 0.74451380655978483
	.quad	0x3fe632a558a30879              # double 0.69368235885509855
	.quad	0x3fdd59257504d7c2              # double 0.45856605937603601
	.quad	0x3fef09231a181dd7              # double 0.96986537071728207
	.quad	0x3f7618a5f4c79480              # double 0.0053946001685051259
	.quad	0x3fc7d9cae4e12ae4              # double 0.18633400130996514
	.quad	0x3fe78bf50909b776              # double 0.735834615375764
	.quad	0x3fec2bd3258acf03              # double 0.88034970600571716
	.quad	0x3fe9cc40ea8120e1              # double 0.80618329812662293
	.quad	0x3fe71d07d5ea83dd              # double 0.72229377537234607
	.quad	0x3fef21cd05caba8c              # double 0.9728760827182028
	.quad	0x3fc2a513a3415624              # double 0.14566274138876267
	.quad	0x3fd10f62978703de              # double 0.26656403348539282
	.quad	0x3fe06002762c9150              # double 0.51171992379071618
	.quad	0x3fecd941cb92c666              # double 0.90152063141267713
	.quad	0x3fe025cf6e89469b              # double 0.50461551274402738
	.quad	0x3fde0ed7320640c4              # double 0.46965579877088381
	.quad	0x3fc2b4a30833e364              # double 0.14613759899637124
	.quad	0x3fd8025d6768523a              # double 0.37514433954609994
	.quad	0x3fe50711f6b72ac3              # double 0.65711305796261177
	.quad	0x3fd8b5f42a500104              # double 0.38610557682115165
	.quad	0x3fe74c656c65f456              # double 0.7280757062104708
	.quad	0x3fdb711923dc44fa              # double 0.4287779665183532
	.quad	0x3fcdc963ef7fc4b4              # double 0.23270844644824751
	.quad	0x3fe8c98a9da73ca5              # double 0.774602229992429
	.quad	0x3fdff7ccd0265c10              # double 0.49949951483853372
	.quad	0x3fd3d29c1c91abb4              # double 0.30972960271781891
	.quad	0x3feda87d62cdd336              # double 0.9268176011815743
	.quad	0x3fd2fe7f6966e2f8              # double 0.29678330701021549
	.quad	0x3fead28551013157              # double 0.83819833584997638
	.quad	0x3fec4b22e27c570a              # double 0.88417190776337518
	.quad	0x3feeb6ae55bb659b              # double 0.9597999262288569
	.quad	0x3fefb090bc1b389b              # double 0.99030338992612898
	.quad	0x3fc2bfb176c347f0              # double 0.14647501276937147
	.quad	0x3fd99a842d44f4d0              # double 0.40005592747531882
	.quad	0x3fc6aa8d8f0517cc              # double 0.17707986338990478
	.quad	0x3fb9d582823a1f30              # double 0.10091415099497847
	.quad	0x3fec863f7d7deea1              # double 0.89138769636288739
	.quad	0x3fcf40db6c76d5e8              # double 0.2441667823419913
	.quad	0x3fdc7d6f5c3c592a              # double 0.44515594489475296
	.quad	0x3fc28b39e279bdb8              # double 0.14487384374977608
	.quad	0x3fdcbf21f644425e              # double 0.4491658120105394
	.quad	0x3fe61bdba023e851              # double 0.69090062405963171
	.quad	0x3fea81a5dca1dd4e              # double 0.82832615940325538
	.quad	0x3fee011a7afd8153              # double 0.93763469716581438
	.quad	0x3fb19e6a23d060f8              # double 0.068823465102813119
	.quad	0x3fe040137645b30b              # double 0.50782178020526325
	.quad	0x3fea09c3799dbc9a              # double 0.81369184258609839
	.quad	0x3fe9bc9e30742f8a              # double 0.80427464927332548
	.quad	0x3fc1f5b346950ea0              # double 0.14031067797087804
	.quad	0x3fe6fee8eb653e5c              # double 0.71861692405395727
	.quad	0x3fdb2e1f3f6fc060              # double 0.42469006724332381
	.quad	0x3fe36c9f3a0c5465              # double 0.60700951898128308
	.quad	0x3fef117db483ef21              # double 0.97088513619334915
	.quad	0x3fed73627d086558              # double 0.92033504887073558
	.quad	0x3fe7326dd5b7833a              # double 0.72490588895389085
	.quad	0x3fd9f92497c3936e              # double 0.40583147831630739
	.quad	0x3fe50ae8114850c5              # double 0.65758136153683522
	.quad	0x3fde7d07183167e6              # double 0.47638108599278295
	.quad	0x3fb1701d9011e858              # double 0.068116996453598033
	.quad	0x3fb7d3ca3e358388              # double 0.093075409114602548
	.quad	0x3fecda42c5692635              # double 0.90164316708359726
	.quad	0x3fd39f1a9961f7fe              # double 0.30658593157556868
	.quad	0x3fcc0dc3512520f8              # double 0.21917001211318854
	.quad	0x3fc494024ce32770              # double 0.16076687578452775
	.quad	0x3fe1fd2789d1bd0a              # double 0.56215264242010332
	.quad	0x3feae9dbae44de12              # double 0.84104713475147919
	.quad	0x3fe3812dc6cdb7bb              # double 0.60951889828515193
	.quad	0x3fd4aca4557e8b88              # double 0.32303722714475969
	.quad	0x3fe66e6ccf4296a2              # double 0.70097961884012627
	.quad	0x3fba955c2f970760              # double 0.10384155427803199
	.quad	0x3fdab9ecdca9e068              # double 0.41759797619989181
	.quad	0x3fe81f1b535e9f96              # double 0.75379720957879459
	.quad	0x3fedd6bb9b212aa7              # double 0.93246250437490097
	.quad	0x3fad257528f8fae0              # double 0.05692640423921147
	.quad	0x3fece9fea8f4d334              # double 0.90356381415640507
	.quad	0x3fdca031585525d0              # double 0.44727738977652809
	.quad	0x3fec73f38a0f73d3              # double 0.88915421452440524
	.quad	0x3fe5ad65750fee4b              # double 0.67741654266087303
	.quad	0x3fea5b79647154ca              # double 0.82366628282275056
	.quad	0x3fe59e6aa9df0fef              # double 0.67558797052379116
	.quad	0x3fcff82bf2b2560c              # double 0.24976109838887373
	.quad	0x3fdc66803c04565c              # double 0.44375615941075863
	.quad	0x3fb971cf3e36c938              # double 0.099392845810858499
	.quad	0x3fe0dfad7cdb9763              # double 0.52730440508160503
	.quad	0x3fe6205e79a224c6              # double 0.69145129925268445
	.quad	0x3fe56b3fa6525e69              # double 0.66934187397687339
	.quad	0x3fe9b911b8984863              # double 0.80384145787889982
	.quad	0x3fd0c432a1579462              # double 0.26197496181550239
	.quad	0x3fe8bdf9a00a85e2              # double 0.77319031961468121
	.quad	0x3fef3d1d3fcf1006              # double 0.97621023619331093
	.quad	0x3fcd09946d12babc              # double 0.22685485196912747
	.quad	0x3fe596aa41aad0f1              # double 0.6746417315066805
	.quad	0x3fe74907a1a7acc7              # double 0.727664771778472
	.quad	0x3fecc0d090b20da3              # double 0.89853695164531577
	.quad	0x3fe28b752e4e23e9              # double 0.57952364963523195
	.quad	0x3feed5008aa59f5a              # double 0.96350123481259264
	.quad	0x3fdb4c04f4dc5ae6              # double 0.42651485359367169
	.quad	0x3fe393802d6c8b38              # double 0.61175545570254197
	.quad	0x3fc9037cfacac534              # double 0.1954189514704382
	.quad	0x3fea72e9164a8015              # double 0.82652716020311578
	.quad	0x3fc4bf7ed3dc09dc              # double 0.16209397644713774
	.quad	0x3fd91e50cf683084              # double 0.39247532133664031
	.quad	0x3febe7f94be2bc6f              # double 0.8720671159880008
	.quad	0x3fe58cdb9cdc446e              # double 0.67344456326294533
	.quad	0x3fc4f2e8e11db060              # double 0.16366301528921934
	.quad	0x3f8682f2561167c0              # double 0.01099194836767825
	.quad	0x3fcd2eed50afc804              # double 0.22799459876802086
	.quad	0x3fbb0b1b88e93c50              # double 0.10563823788219051
	.quad	0x3fcdcf76527421e0              # double 0.23289374376351102
	.quad	0x3fcac82b086f8d94              # double 0.20923364555265478
	.quad	0x3fd452d3e8ce6ee2              # double 0.31755540595052711
	.quad	0x3fefb65f3392e82c              # double 0.99101219246882044
	.quad	0x3fe59c293de2ac8f              # double 0.67531263434411126
	.quad	0x3fecb2bc41a78acd              # double 0.89681828330170676
	.quad	0x3fe27cc61c16d321              # double 0.57773118482746011
	.quad	0x3feacff9d07f3cca              # double 0.83788767549585796
	.quad	0x3fa8088220f22350              # double 0.046939913293562285
	.quad	0x3febfd3bcbc25427              # double 0.87466230198572681
	.quad	0x3fee50814c5b921f              # double 0.9473272792207047
	.quad	0x3fc5b7392de14058              # double 0.16965403309086713
	.quad	0x3fb69f9155ece040              # double 0.088372310140472088
	.quad	0x3fe0e6f7402f87f0              # double 0.52819407020819931
	.quad	0x3feed6da1fab275b              # double 0.9637270563627952
	.quad	0x3fb63a6eead47568              # double 0.086829120952150896
	.quad	0x3fdfc70cb8cbe8be              # double 0.49652402922187011
	.quad	0x3fcc5a9fd803888c              # double 0.22151563689755382
	.quad	0x3feaa7bf5ad15ac1              # double 0.83297698724603475
	.quad	0x3fe0330759e7dec0              # double 0.50622909126010285
	.quad	0x3fec2aef4ac5ba29              # double 0.88024105648020623
	.quad	0x3fdae79581cf8e32              # double 0.42038476635773059
	.quad	0x3fc2f1b69148b784              # double 0.1480015000719811
	.quad	0x3feb05321ee724fe              # double 0.84438425098156222
	.quad	0x3febc2069df05e5a              # double 0.86743479583214911
	.quad	0x3fd67e6c5ea17b52              # double 0.35146626702583206
	.quad	0x3fe300cdc071d528              # double 0.59384811007354177
	.quad	0x3fd6e1391c46acfa              # double 0.35749652634940754
	.quad	0x3fe9544206ae3a5e              # double 0.79153538994598782
	.quad	0x3fe5422098a7fa0e              # double 0.66432218375831709
	.quad	0x3fb0de5346800158              # double 0.065892414771956509
	.quad	0x3fe852db7df9a5d2              # double 0.76011442760971648
	.quad	0x3fe695af9f71deed              # double 0.70577222005428342
	.quad	0x3fd74bf2ed2d7882              # double 0.36401055490376433
	.quad	0x3fd478f7a06e91d4              # double 0.31988325755290004
	.quad	0x3fb961e26075b108              # double 0.099149845647563351
	.quad	0x3fd276593e21daa2              # double 0.28847342555619992
	.quad	0x3fd180d40d99d80a              # double 0.27348805740564386
	.quad	0x3fe01e73f203a1fc              # double 0.50371739643475122
	.quad	0x3fd420afba270450              # double 0.31449502161928411
	.quad	0x3fe7dcd3a4d868f0              # double 0.74570638843877468
	.quad	0x3fdcf1c264f07888              # double 0.45225581986768093
	.quad	0x3fd2572a89aab336              # double 0.28657020038626813
	.quad	0x3fd959d4527d88e8              # double 0.39610775047016356
	.quad	0x3fab87ed61911af0              # double 0.053771417770397067
	.quad	0x3fe6263d4bddf0d7              # double 0.6921679002548683
	.quad	0x3fde69d01c0f3046              # double 0.4752083086029909
	.quad	0x3fdbebf52373d3d4              # double 0.43627670728829782
	.quad	0x3fe48ee7e1186d96              # double 0.6424445530314411
	.quad	0x3fd8a2ea2e4bb8d4              # double 0.38494352837632317
	.quad	0x3fdbd2baa4837d6e              # double 0.43473688188347281
	.quad	0x3fb3835fab57c3d8              # double 0.076223353702303043
	.quad	0x3fc3527836d44324              # double 0.15095427205280842
	.quad	0x3fe7884949686cd2              # double 0.73538650834543717
	.quad	0x3fc8596f8d905acc              # double 0.19022936260508627
	.quad	0x3f98804ccb9c7120              # double 0.023926925589976666
	.quad	0x3fd788cb8a3c27bc              # double 0.3677243089629163
	.quad	0x3fe4e411a5667ef9              # double 0.65284044556389553
	.quad	0x3fe011082760c5ed              # double 0.50207908335704377
	.quad	0x3fc705c5388606bc              # double 0.17986359844149102
	.quad	0x3fe4e02b0dd4a7ab              # double 0.6523642797594581
	.quad	0x3fda33caadf29a7e              # double 0.40941111552312026
	.quad	0x3fe2ed7c23d563a5              # double 0.59148985861530845
	.quad	0x3fd74554969dbad8              # double 0.36360659321409861
	.quad	0x3fe5719f7a679e2b              # double 0.67011999041728154
	.quad	0x3fe1ff2980780fba              # double 0.56239771930312732
	.quad	0x3fece991f429d899              # double 0.9035119789903262
	.quad	0x3fe6fd2a57fabe8f              # double 0.71840398009767792
	.quad	0x3fc3fdfdc32203b8              # double 0.15618869808170444
	.quad	0x3fa10929d3b69a40              # double 0.033273036092670072
	.quad	0x3fcfe0ec980ae58c              # double 0.24905164169267058
	.quad	0x3fcf5523f1fc8d98              # double 0.24478577914952093
	.quad	0x3fec2ebdd88183ba              # double 0.88070575987159505
	.quad	0x3fcb9134baa3d5d8              # double 0.2153688346221958
	.quad	0x3fe249c8302c91a9              # double 0.57150658997538983
	.quad	0x3fc98873764f8228              # double 0.19947665478595522
	.quad	0x3fc19882412ec814              # double 0.13746669943572043
	.quad	0x3fbb8927fc3ea330              # double 0.10756158741299937
	.quad	0x3fd366d099511a64              # double 0.30315031978935836
	.quad	0x3fd7f72c1c5795d8              # double 0.37446120040689612
	.quad	0x3fdac5d380a28df6              # double 0.41832435190209993
	.quad	0x3fe5013bbfe37c9c              # double 0.65640056112524148
	.quad	0x3fead445bcee3a12              # double 0.83841215992453244
	.quad	0x3feec5c414e5e8db              # double 0.96164135057122324
	.quad	0x3fe649c63ad9d156              # double 0.69650565618807536
	.quad	0x3fb1f608b54ce8b0              # double 0.070160431158827974
	.quad	0x3f85cac397ed6980              # double 0.010640647958713556
	.quad	0x3fda660364c96190              # double 0.41247639505811495
	.quad	0x3fd364d5a5a15aa4              # double 0.30302945303757611
	.quad	0x3fdca6a5b3633280              # double 0.44767134207067016
	.quad	0x3fbf8e13802e0930              # double 0.12326166037931752
	.quad	0x3fd0ea8766594832              # double 0.26431450839038739
	.quad	0x3fce8c08f9dcd8d8              # double 0.23864853096319538
	.quad	0x3fe01c527a0663c4              # double 0.50345729668617212
	.quad	0x3fd8b91833b19698              # double 0.38629727409566206
	.quad	0x3f929910644fc600              # double 0.018162017939124198
	.quad	0x3fe54286788993c7              # double 0.6643707613226234
	.quad	0x3fd06d77dab23962              # double 0.25668140751886004
	.quad	0x3fea114d47358f43              # double 0.81461204441118473
	.quad	0x3fa63f754d216050              # double 0.043452897706345639
	.quad	0x3fb9077601c25130              # double 0.097770095281082047
	.quad	0x3fe99bc8990275d7              # double 0.80026655087174958
	.quad	0x3fd58aca6b979e4c              # double 0.33659611231857833
	.quad	0x3fb7cebc4bfa29c0              # double 0.092998283909913049
	.quad	0x3feab1907d80fee1              # double 0.83417534363249157
	.quad	0x3fec698f515488a2              # double 0.88788572201544391
	.quad	0x3fe1743739909f1e              # double 0.54543648951673496
	.quad	0x3fb16986a29f6168              # double 0.068016447737482388
	.quad	0x3fe523779fccb457              # double 0.66057950220932582
	.quad	0x3fe8bb93a7ad0107              # double 0.77289755582026565
	.quad	0x3fd76764f0a429ae              # double 0.36568568706629889
	.quad	0x3fccfecd14e4d790              # double 0.2265259124775949
	.quad	0x3fd5fb6d8f04b16c              # double 0.34347094504007347
	.quad	0x3fea8994211955f8              # double 0.82929426636354631
	.quad	0x3fdb639ed614afd6              # double 0.42795534998253737
	.quad	0x3fe090bc3c40b6ed              # double 0.51766788261531149
	.quad	0x3fd8ddcb076f206a              # double 0.38853717542634192
	.quad	0x3fd1974d57e8673c              # double 0.27485974869488294
	.quad	0x3fea08f8d4cde114              # double 0.81359521449397442
	.quad	0x3fa38a64971044f0              # double 0.038165229263663281
	.quad	0x3fef04146cd36df1              # double 0.96924802069719195
	.quad	0x3fc3143c8c56a6c0              # double 0.14905506947007119
	.quad	0x3fce63b46bf9a668              # double 0.23741774818636263
	.quad	0x3fda87e4686c6a4c              # double 0.4145442027817452
	.quad	0x3fa77cc88ab53840              # double 0.045873896534076142
	.quad	0x3fefaabede8250a0              # double 0.98959296664044771
	.quad	0x3fe223a5acf5ba2b              # double 0.56685146123147001
	.quad	0x3fc0907c943ee678              # double 0.12940938223418974
	.quad	0x3fbb4ecf23522070              # double 0.10667128193210984
	.quad	0x3fefa3db39a1c03c              # double 0.98875199562281279
	.quad	0x3fd9813dfa9fbfd0              # double 0.3985133121013833
	.quad	0x3fb6a371b4c6f910              # double 0.088431460032527775
	.quad	0x3fcdd3117af2ba18              # double 0.23300379279449213
	.quad	0x3fdf317cf76c58a8              # double 0.48739551699089612
	.quad	0x3feef20556b9a98e              # double 0.96704356134914504
	.quad	0x3fdd2a4795851a70              # double 0.45570554353290671
	.quad	0x3f735e5f41f7e600              # double 0.0047286721232864259
	.quad	0x3fe40f51a3cfacb5              # double 0.62686998361950563
	.quad	0x3fe49d5c0e08f2c9              # double 0.64420893422319481
	.quad	0x3fede3b5ec254b33              # double 0.93404670831873771
	.quad	0x3fcf66ec81ff1e40              # double 0.24532848689544728
	.quad	0x3fdb9c09fdadd554              # double 0.4313988663992252
	.quad	0x3fd75bd7b33049b4              # double 0.36498062609566806
	.quad	0x3fd0c3e3a4e02f46              # double 0.26195613003868734
	.quad	0x3fdc940994438cce              # double 0.44653548697369849
	.quad	0x3fdfff81a2e86c20              # double 0.49996987256025882
	.quad	0x3fddfbe1122c4f10              # double 0.46849848532404881
	.quad	0x3fd108ae53dc96ae              # double 0.26615484418503399
	.quad	0x3fe81f849802fbf9              # double 0.7538474053361589
	.quad	0x3fc2ddbfbc8014f4              # double 0.14739224151723074
	.quad	0x3fd4753a028d6a98              # double 0.31965494393595284
	.quad	0x3fd3cbde7c144002              # double 0.30931818120097898
	.quad	0x3feed86cd35c3746              # double 0.96391907960217149
	.quad	0x3fc6f532d88ea45c              # double 0.17935786794740494
	.quad	0x3fe1f18f862d82d5              # double 0.56073738295170961
	.quad	0x3fe50803212428e3              # double 0.65722805474186108
	.quad	0x3fdd6bb863f8d95e              # double 0.45969972384354729
	.quad	0x3fe6e34d105550c1              # double 0.71524670782175559
	.quad	0x3fe84bbbe2ff8528              # double 0.75924486480304143
	.quad	0x3fa12d6ea929f510              # double 0.033549745702638245
	.quad	0x3fe8a0a68cd35056              # double 0.76961066727609295
	.quad	0x3f8d6e3932354180              # double 0.014370390743949413
	.quad	0x3fee2baad15b2aca              # double 0.942830475710559
	.quad	0x3fe2a031d64a590e              # double 0.58205501416776584
	.quad	0x3fdac4619ff85ef6              # double 0.41823616621103044
	.quad	0x3fda23033faa8cde              # double 0.40838700501826775
	.quad	0x3fd871d0632bfbda              # double 0.38194665608165013
	.quad	0x3fe20d9e5a2010a3              # double 0.56416242220486301
	.quad	0x3fc27590a8d628dc              # double 0.14421280139897064
	.quad	0x3fc2a5208bbbd104              # double 0.14566428015644572
	.quad	0x3fd3ae17b54ed66c              # double 0.30750076967101481
	.quad	0x3f9fcaa4d9d2a260              # double 0.031046462817047149
	.quad	0x3feac5245a9338d0              # double 0.83656518640943922
	.quad	0x3fcec875537e44c4              # double 0.24049250199144556
	.quad	0x3feaa7feb511d9a3              # double 0.83300719609433249
	.quad	0x3fed5bed68906d99              # double 0.91747160360994251
	.quad	0x3fb3d7cfac0c6ba0              # double 0.077511767868073012
	.quad	0x3fa2dcba917ab3f0              # double 0.036840276964859586
	.quad	0x3fe74eaf89f29725              # double 0.72835518782514852
	.quad	0x3fd0a5cd5e075afe              # double 0.26011976416104676
	.quad	0x3fd866069a0c4254              # double 0.38122715991724943
	.quad	0x3fe6dbafb293ea96              # double 0.71431717756725521
	.quad	0x3fe8ff87e3b789a5              # double 0.78119272685971863
	.quad	0x3fedc2cd1b804b29              # double 0.93002944346730942
	.quad	0x3fd2b7978fa78850              # double 0.29245556858780208
	.quad	0x3fe300648484eab6              # double 0.5937979305520773
	.quad	0x3fc8784ef14297bc              # double 0.19117152004508664
	.quad	0x3fc747f097892de8              # double 0.1818829288407493
	.quad	0x3fc5e65c8718ea04              # double 0.17109257313298099
	.quad	0x3fea6610e4f5216d              # double 0.82495922773618491
	.quad	0x3fd53b0ee5ace1c8              # double 0.33172962598066791
	.quad	0x3fee0d03b5539600              # double 0.93908868232091435
	.quad	0x3fe435ff014292eb              # double 0.63159132238487581
	.quad	0x3fe0c862290dcd79              # double 0.52446086901038236
	.quad	0x3fee74f6c18885f9              # double 0.95177781867476974
	.quad	0x3fe52feff44706c5              # double 0.66210172377051235
	.quad	0x3fef94feb1a0ed2a              # double 0.98693785374726883
	.quad	0x3fe39b0f7be81875              # double 0.61267828178894368
	.quad	0x3fdcf8476b3f0abc              # double 0.4526537463499769
	.quad	0x3fec71d97142c5d9              # double 0.88889762994056831
	.quad	0x3fd7a8f0ecb2489a              # double 0.36968634714970394
	.quad	0x3fc3b82b4b7acaf4              # double 0.15405789552240601
	.quad	0x3fee902cde4673cd              # double 0.95509951985479236
	.quad	0x3fc405f95546d8b4              # double 0.15643231071380159
	.quad	0x3fe64055c10242a5              # double 0.69535339066540713
	.quad	0x3fd1b4144a020d42              # double 0.27661616542191692
	.quad	0x3fe7b2b9c059f5d9              # double 0.74056708878168387
	.quad	0x3fb0e7eb99602b38              # double 0.066038823075513231
	.quad	0x3fd60883dd09c6fc              # double 0.34426971994172084
	.quad	0x3fe602b8175b23d6              # double 0.68783192216607847
	.quad	0x3fe1bb417e89c325              # double 0.55410837854842454
	.quad	0x3fe4b79bafd512ec              # double 0.64741310446023936
	.quad	0x3fe5b747a0ac3216              # double 0.67862302190184454
	.quad	0x3fd323d74b6d5460              # double 0.29906256071018866
	.quad	0x3fbc95b7df878030              # double 0.11165951926477713
	.quad	0x3f7cc37796d37f80              # double 0.007022349496054292
	.quad	0x3fe15a44b30d4fa8              # double 0.54226908656209094
	.quad	0x3fa006f7d7c6c520              # double 0.031303162660501593
	.quad	0x3fe256d55b4bb30b              # double 0.57309978324119137
	.quad	0x3fe154fd5fc81944              # double 0.54162472445822418
	.quad	0x3fee239cbd29191e              # double 0.94184719987314103
	.quad	0x3fe75ea7f5ff259d              # double 0.73030469938491971
	.quad	0x3fccc26b3f10d740              # double 0.22468319491752631
	.quad	0x3fd0c11d908edc7c              # double 0.26178683392522095
	.quad	0x3fd3e048b9eb47c8              # double 0.31056421428831671
	.quad	0x3fef20748e0c05eb              # double 0.97271182769344244
	.quad	0x3fe7f85a2351bbbf              # double 0.74906641863150714
	.quad	0x3fe69d89fd661bb7              # double 0.70673083774533196
	.quad	0x3fd3a0a22cdc05fe              # double 0.30667929058844823
	.quad	0x3fdd683f8ae19ff0              # double 0.45948780596381678
	.quad	0x3fe24ee36b164acc              # double 0.57212992587514
	.quad	0x3fe27ca16c8261a1              # double 0.57771369164679609
	.quad	0x3fd4ff7dbab65f90              # double 0.32809394105560674
	.quad	0x3fb93d54a5338888              # double 0.098592081386899122
	.quad	0x3fba6b65e0b78100              # double 0.10320126281976982
	.quad	0x3fd314f44cb455fa              # double 0.29815394869487444
	.quad	0x3fed43771e548c4f              # double 0.9144855110538489
	.quad	0x3fe5751810012369              # double 0.67054370046490164
	.quad	0x3fe66b754300a3db              # double 0.70061743818689182
	.quad	0x3fba6a2425631ff8              # double 0.10318208611272428
	.quad	0x3fe03af9cb835266              # double 0.50719918964985022
	.quad	0x3fe0e976066a357a              # double 0.52849866154581027
	.quad	0x3fee4e48f491ffc9              # double 0.94705627219809074
	.quad	0x3fe358c76585678a              # double 0.60458726719228761
	.quad	0x3fd4756cb8d75cba              # double 0.31966703463462987
	.quad	0x3fe8ea82f6a77fd8              # double 0.77862690138499158
	.quad	0x3fe9ddea1c973b9d              # double 0.80833917221194762
	.quad	0x3fd92bedb8bad706              # double 0.39330618896507052
	.quad	0x3fe5b47e6d736880              # double 0.67828294159996005
	.quad	0x3fe3bb5c76d0fde8              # double 0.61662123876879793
	.quad	0x3fd7403ddd183104              # double 0.36329599944362223
	.quad	0x3fbbb3b871e05610              # double 0.10821106701072147
	.quad	0x3fcb7ce95d4dae88              # double 0.21474949889976735
	.quad	0x3fc6674e25066548              # double 0.17502762611256117
	.quad	0x3fe4f3eb3f0bd499              # double 0.65477526010240006
	.quad	0x3fe9a9e9b812cf80              # double 0.80199132873393353
	.quad	0x3fefd399087971a4              # double 0.994579807807487
	.quad	0x3fef2f2b47769d26              # double 0.97450794179613776
	.quad	0x3fcd25ab96c430a4              # double 0.22771210538519882
	.quad	0x3fd855cad8078ecc              # double 0.38023635002739975
	.quad	0x3fc312a622d8082c              # double 0.14900662137375897
	.quad	0x3fe954ffce848992              # double 0.79162588439457893
	.quad	0x3fdef2ac257250d0              # double 0.48356155068291873
	.quad	0x3fe7b268d6d245cb              # double 0.74052850682544979
	.quad	0x3fede8a2b2659cb1              # double 0.93464789240979063
	.quad	0x3fed39b004f872e1              # double 0.91329194041062689
	.quad	0x3fe28d0e0c660ea9              # double 0.57971861287702098
	.quad	0x3fe5e9cc62a45ada              # double 0.68478984132783727
	.quad	0x3fe764f5c997ca8d              # double 0.7310742318498612
	.quad	0x3fc6cb0e688a5170              # double 0.17807178596980178
	.quad	0x3fbe42075478ce40              # double 0.11819501697828461
	.quad	0x3febb9567a2d6991              # double 0.86637424338123215
	.quad	0x3fe074144e0ed861              # double 0.51416983838749897
	.quad	0x3fdb8e4316a5a5a0              # double 0.43055798732401662
	.quad	0x3fe8bafe10fe2ed6              # double 0.77282622641493037
	.quad	0x3fd115ab05a3bf66              # double 0.26694751311059972
	.quad	0x3fe36db38bf2da92              # double 0.60714127858848799
	.quad	0x3feac127fdda9e58              # double 0.83607863980155184
	.quad	0x3fe0ed692ef60887              # double 0.52898081943591613
	.quad	0x3fb6d723c6e9ef70              # double 0.089220272124235
	.quad	0x3fec370223cf8a8d              # double 0.88171488756445771
	.quad	0x3fe038e7fd325dd7              # double 0.50694655849923265
	.quad	0x3fdbcf12cdb7461a              # double 0.43451376046604795
	.quad	0x3feeefe520ab666b              # double 0.96678406124847293
	.quad	0x3fd7e32479746c68              # double 0.37323867665117527
	.quad	0x3fe34debccc2aa9b              # double 0.60326185219067285
	.quad	0x3fe12cf7ae2cea1a              # double 0.53673919695512784
	.quad	0x3fd1aeb1b69ff05a              # double 0.27628748735856379
	.quad	0x3fc9e73e3bfb5194              # double 0.20236947945398909
	.quad	0x3fddca097c1f9a60              # double 0.46545636292868231
	.quad	0x3fd62981c7b461fa              # double 0.34628338339237497
	.quad	0x3fc2402afdd7c870              # double 0.14258324999497374
	.quad	0x3fd6cc285b950618              # double 0.35621079391066379
	.quad	0x3fdc23321e16fa28              # double 0.43964817942097278
	.quad	0x3fe3995bf77a26dd              # double 0.61247061095601973
	.quad	0x3f9a261c81b14be0              # double 0.025536008277707967
	.quad	0x3fe146ca8621a2e8              # double 0.5398914928201437
	.quad	0x3fed449a9f697284              # double 0.91462451110017228
	.quad	0x3fefcfe9e8be8e66              # double 0.9941300912655151
	.quad	0x3fe3329313b755ef              # double 0.59992364741145632
	.quad	0x3fe0e578fa833716              # double 0.52801178863748777
	.quad	0x3febb9144505ea10              # double 0.8663426731212116
	.quad	0x3fe1032d7e46eba1              # double 0.53163790381892195
	.quad	0x3f9cd441c7087fa0              # double 0.028153445981046965
	.quad	0x3feda488da151a97              # double 0.926334787313709
	.quad	0x3fe5a2c46378c620              # double 0.67611903598862355
	.quad	0x3fd82760393fe9fe              # double 0.3774033125952484
	.quad	0x3fdacf4cfcb27856              # double 0.41890263249832083
	.quad	0x3feee21dd8d981ab              # double 0.96510212281650831
	.quad	0x3fb716ec7b2df940              # double 0.090193538735523937
	.quad	0x3fba9adae711f590              # double 0.10392540112839854
	.quad	0x3fde22ad01e4b37a              # double 0.47086644349001683
	.quad	0x3fd8ccf730320d10              # double 0.38751010614960624
	.quad	0x3f86d01e0cbd2380              # double 0.011139139903791451
	.quad	0x3fd8c68f857d97f4              # double 0.38711917911712068
	.quad	0x3fdd2fde818ee69e              # double 0.45604670192879293
	.quad	0x3fe417bdaa979904              # double 0.62789805716309433
	.quad	0x3fd8ee59c687536e              # double 0.38954777133522256
	.quad	0x3fc8165a93ad3078              # double 0.18818218432204836
	.quad	0x3fefc7cda45400c0              # double 0.99314004988993787
	.quad	0x3f82ac8b06005380              # double 0.0091181622702067866
	.quad	0x3fefd48d74271b90              # double 0.99469635664068967
	.quad	0x3fe1f72a9a0b7812              # double 0.56142168127894565
	.quad	0x3fd3820e8b3498b8              # double 0.30481303781779046
	.quad	0x3fdbb9b2fec7ebfa              # double 0.43320917969657524
	.quad	0x3fec5dca286f2799              # double 0.88644893548301973
	.quad	0x3fbb1e6b2132deb0              # double 0.10593289909854309
	.quad	0x3fe5f5f4e9cf0c89              # double 0.68627401033190083
	.quad	0x3fe2bedff58bdbde              # double 0.58580015142694797
	.quad	0x3fba26e66861d210              # double 0.10215606735602756
	.quad	0x3fe34a025f6ad1ae              # double 0.60278433452781655
	.quad	0x3fe93121f07c7fe3              # double 0.78724762887941002
	.quad	0x3fd42ba723be165e              # double 0.3151643609092839
	.quad	0x3fd412da210b02b4              # double 0.31365063883644528
	.quad	0x3fe65017cff1b840              # double 0.69727697958092705
	.quad	0x3fd34766c7f605d4              # double 0.30123300101703632
	.quad	0x3fd08680014a1970              # double 0.25820922971651949
	.quad	0x3fde332c84b24082              # double 0.47187340696928726
	.quad	0x3fd5c142293a98d6              # double 0.33992055917987096
	.quad	0x3fd260cd95df898c              # double 0.28715839038900337
	.quad	0x3fe3fb054f65d00f              # double 0.6243921805130429
	.quad	0x3fd8acbd89710e3e              # double 0.38554323598893692
	.quad	0x3fcf566085dcb01c              # double 0.24482351814492709
	.quad	0x3fdca7be432ac6fc              # double 0.44773823317801464
	.quad	0x3fdd0193104bf874              # double 0.45322109786491827
	.quad	0x3fd8069c4d36d190              # double 0.37540347614710701
	.quad	0x3fdd716cf8c70458              # double 0.46004795355481098
	.quad	0x3fcf0ed4220a2f50              # double 0.2426400343141446
	.quad	0x3fd49d7efd996f9e              # double 0.32211279645502511
	.quad	0x3fdc6a5f13c37ff6              # double 0.44399239473386787
	.quad	0x3fcb20a85957eaf4              # double 0.21193413126442062
	.quad	0x3fe5d3a12c60dc32              # double 0.68208368938110753
	.quad	0x3fd6929d5724b8ea              # double 0.35269864568807796
	.quad	0x3fefd66ab5237134              # double 0.99492392901041748
	.quad	0x3fdec3ce947d2f1c              # double 0.48070110798720278
	.quad	0x3fd7f90869dcc070              # double 0.37457475984684319
	.quad	0x3fb18433857c8088              # double 0.068423481072843129
	.quad	0x3fad49e9e112ff50              # double 0.057204540943983972
	.quad	0x3fe2d7540edbb986              # double 0.58878519918452876
	.quad	0x3fe60454053d176b              # double 0.6880283453290138
	.quad	0x3fec73338c82023d              # double 0.88906266634882736
	.quad	0x3fe60868a115a4d0              # double 0.68852645360780151
	.quad	0x3fe8d52dd5a65019              # double 0.7760228321881214
	.quad	0x3fc53aca75493084              # double 0.16585665442324082
	.quad	0x3fe534ced27f54b8              # double 0.66269627678652565
	.quad	0x3fed71e610837c0c              # double 0.92015364861788517
	.quad	0x3fe589427cebfe67              # double 0.6730053367500205
	.quad	0x3f95a2497a3a5ca0              # double 0.021126888356402973
	.quad	0x3fdc409927b88fee              # double 0.44144276503561641
	.quad	0x3fc3478ebc3ccb38              # double 0.15062126342089655
	.quad	0x3fddf25620b7afc2              # double 0.46791604228087291
	.quad	0x3feb45791ae9d5ce              # double 0.85223059898879128
	.quad	0x3fd00110decc05e8              # double 0.2500650573493588
	.quad	0x3feb82ad69c86628              # double 0.85970183048920479
	.quad	0x3fd40377b6a3e0d6              # double 0.31271164737655732
	.quad	0x3fc429c0961b7678              # double 0.15752417878586633
	.quad	0x3fb4b41786324ff0              # double 0.080872984183144813
	.quad	0x3fd09df588749278              # double 0.25964105916708702
	.quad	0x3fd8d8b12b7505fa              # double 0.38822583431110014
	.quad	0x3fe95e2e661cc6c7              # double 0.79274673408345897
	.quad	0x3fe57b5b9b231f41              # double 0.67130832958444142
	.quad	0x3fea31b225f30907              # double 0.81856639301284495
	.quad	0x3fe390ac28462fdc              # double 0.61141021600769418
	.quad	0x3fdded2a9c2390d4              # double 0.4676004910272813
	.quad	0x3fe24f3a07c4a1cd              # double 0.57217122571187817
	.quad	0x3fd8d66a353017e6              # double 0.38808684534194382
	.quad	0x3fcbc26886ed6548              # double 0.21687037075279592
	.quad	0x3fee4583906051c0              # double 0.9459855861519415
	.quad	0x3fd72864c506f208              # double 0.3618404316037247
	.quad	0x3fbf7ad34effd768              # double 0.12296791723914924
	.quad	0x3fe70ec2e55ad8b6              # double 0.72055191799042606
	.quad	0x3feddae8b013488e              # double 0.93297228231155471
	.quad	0x3fc731b881c00734              # double 0.18120485625700555
	.quad	0x3fe7f4d32211ccd0              # double 0.74863583234982833
	.quad	0x3fe36a27107409fa              # double 0.60670808042078694
	.quad	0x3fd6e259445e8960              # double 0.35756522823989734
	.quad	0x3fe4393e71c8bc7d              # double 0.63198778365575914
	.quad	0x3fdbeee360afb8d0              # double 0.43645557825119585
	.quad	0x3fed8d81d4470cbe              # double 0.92352382145363499
	.quad	0x3fe976cf460c6905              # double 0.79575313264220482
	.quad	0x3fd1d3e47fb264b4              # double 0.27855789633174344
	.quad	0x3fe0a3cf5c2c0a45              # double 0.51999633791303579
	.quad	0x3f73e4b7f256f800              # double 0.0048567948737723299
	.quad	0x3fe099a5ff48701b              # double 0.51875591144517175
	.quad	0x3fe81dc07f0cb525              # double 0.75363182844526888
	.quad	0x3fd783da908efb16              # double 0.36742271534960602
	.quad	0x3fe616289c113eff              # double 0.69020491105945314
	.quad	0x3fedac5726875ea4              # double 0.92728765034822346
	.quad	0x3fda216e9ab380ae              # double 0.40829053027665452
	.quad	0x3fe665915b39cee9              # double 0.69989841287175836
	.quad	0x3fe5d35a7fa044c0              # double 0.68204998900377944
	.quad	0x3fd29a1df7236f06              # double 0.29065655836687687
	.quad	0x3fe5cabb20d34004              # double 0.68099743281527525
	.quad	0x3fedbd521869ba99              # double 0.92936043518223521
	.quad	0x3fe702298d01b981              # double 0.71901395359400067
	.quad	0x3fed45554c0d7788              # double 0.91471352437996334
	.quad	0x3fbac7fa10ab3a20              # double 0.10461390406565174
	.quad	0x3fdafe16578028ae              # double 0.42175825638754361
	.quad	0x3fa4b960ea3cb6e0              # double 0.040476826280025469
	.quad	0x3fd230cfeec8fcc4              # double 0.28422926253183456
	.quad	0x3fe9d7e0b89dea5f              # double 0.80760227258663153
	.quad	0x3fdd4defcf98ce82              # double 0.45788188241133565
	.quad	0x3fe278a6c1a15ff3              # double 0.57722795313293174
	.quad	0x3fd6fe69e0abcbee              # double 0.35927817287955477
	.quad	0x3fd1fa817be2d956              # double 0.28091466043715252
	.quad	0x3fd6d11c6c6b26fa              # double 0.35651312434912052
	.quad	0x3f979a0878019f20              # double 0.023048527073483815
	.quad	0x3fd826259ab0a4e0              # double 0.37732830149123053
	.quad	0x3f750e665c4e7580              # double 0.0051406858882762085
	.quad	0x3fdfe49b2b5687d0              # double 0.49832801086642764
	.quad	0x3fd04a01083c09f6              # double 0.25451684765007998
	.quad	0x3fee1efa50813e19              # double 0.94128146861652617
	.quad	0x3fe73783f2954d09              # double 0.72552678470165788
	.quad	0x3fe41412df51666a              # double 0.62745040528097928
	.quad	0x3fbe81fde58b9ee8              # double 0.11917101720939238
	.quad	0x3fe804e9c5e0629a              # double 0.75059975288157266
	.quad	0x3fea6c3b1cf0f9f8              # double 0.82571178104973253
	.quad	0x3fa637f9e00fc640              # double 0.043395813561698748
	.quad	0x3fec7b4b69191d67              # double 0.89005060698484051
	.quad	0x3fe3bf51124a8213              # double 0.61710408756704493
	.quad	0x3fe34abd5e9de89b              # double 0.60287350158548081
	.quad	0x3fe6f46e22d65ae1              # double 0.71733767322697528
	.quad	0x3fd7e484b39125be              # double 0.37332265411222554
	.quad	0x3fd5caf44bbc9f7e              # double 0.34051234623120041
	.quad	0x3fe783ae6896e768              # double 0.73482437541609347
	.quad	0x3fe5a1aed114bb0b              # double 0.67598667942169877
	.quad	0x3fc194fb37dd14ec              # double 0.13735904910769337
	.quad	0x3fc0547376180c00              # double 0.12757724062257125
	.quad	0x3fe6cdcb54755925              # double 0.71262136932162845
	.quad	0x3fb90e92b062fe88              # double 0.097878616393240248
	.quad	0x3fe15bf4fa9606db              # double 0.54247521345697736
	.quad	0x3fcfd8565dd66ec4              # double 0.24878959257045186
	.quad	0x3fe3bcf7274deb9d              # double 0.61681707073818226
	.quad	0x3fe33505d51647f3              # double 0.60022250765382379
	.quad	0x3fe7bd03a2d91733              # double 0.74182302290203095
	.quad	0x3fa058a93e8a0240              # double 0.031926430591742605
	.quad	0x3fce5ac8535efb84              # double 0.23714546271181913
	.quad	0x3fe41f6e4d57c4c2              # double 0.62883677583717934
	.quad	0x3febb05364edebc8              # double 0.86527414047974904
	.quad	0x3fe28f787f7f0eae              # double 0.58001351262688217
	.quad	0x3fcacb9f93150108              # double 0.20933909112682891
	.quad	0x3fdc294abded0d10              # double 0.44002026126345672
	.quad	0x3feb059ce0ddd800              # double 0.84443515700581884
	.quad	0x3fc5a773cedfb824              # double 0.16917274094834156
	.quad	0x3fc764b545359e00              # double 0.18276086692206661
	.quad	0x3fe26d3394dea8d7              # double 0.57583026004911175
	.quad	0x3fef3738bd52081f              # double 0.97549092270515191
	.quad	0x3fd2882257eeed44              # double 0.28955896937596415
	.quad	0x3fe06df1e50cea96              # double 0.51342100845734495
	.quad	0x3fe90dc99027d21a              # double 0.78293302684193411
	.quad	0x3fe0663d375720d6              # double 0.51248036202107516
	.quad	0x3febef923cb7fac2              # double 0.87299453600993382
	.quad	0x3fe5b44ded6384b2              # double 0.67825981488217324
	.quad	0x3fe46b054031100c              # double 0.63806402718955857
	.quad	0x3fadac9c4c878f70              # double 0.057957538930877628
	.quad	0x3fdd7ed286edebd0              # double 0.4608656232518884
	.quad	0x3fb16b58682bd210              # double 0.068044209892669238
	.quad	0x3fc2957725f394b0              # double 0.14518632271862009
	.quad	0x3fb96866e8a7f688              # double 0.099249297905737888
	.quad	0x3f814e53d33e7100              # double 0.0084501789895559121
	.quad	0x3fc9c26209d5f804              # double 0.20124459724678456
	.quad	0x3fd395f7477aa8e6              # double 0.30602819424042449
	.quad	0x3fb135c613ce7048              # double 0.067226772151515068
	.quad	0x3fe0ea276ede62da              # double 0.52858325628320846
	.quad	0x3fe6e332f283cbd7              # double 0.71523425451448019
	.quad	0x3fed259ad47b0175              # double 0.91084043026061912
	.quad	0x3fe9609a00527e30              # double 0.79304218352257827
	.quad	0x3fed4ab349d17189              # double 0.91536869447331626
	.quad	0x3fefa8e44ac3d4e6              # double 0.98936667063267403
	.quad	0x3fed6afae5b1a595              # double 0.91930909025284058
	.quad	0x3fedaec9f14b5444              # double 0.92758652808937158
	.quad	0x3fec72cd4eb1b41f              # double 0.88901391382171713
	.quad	0x3fe770acddb954ab              # double 0.73250430398424748
	.quad	0x3fead85df6013b26              # double 0.83891199157537666
	.quad	0x3fce5d74027d9208              # double 0.23722696420294676
	.quad	0x3fba3a30cad350a8              # double 0.10245041801255417
	.quad	0x3fead4e735f4d083              # double 0.83848915613499775
	.quad	0x3fec0d60a76e7c3a              # double 0.87663300229531349
	.quad	0x3fef62fff0116a43              # double 0.98083493126188903
	.quad	0x3fd8165557ed8196              # double 0.37636312090583013
	.quad	0x3fe3dd42ecbff0ab              # double 0.62075945129574472
	.quad	0x3fd0ae5b7bc5c404              # double 0.26064192855034229
	.quad	0x3fe6e32bfcc2e153              # double 0.71523093573982022
	.quad	0x3fd40df85666f07c              # double 0.31335266530709993
	.quad	0x3fdafed22ab62996              # double 0.42180303736736258
	.quad	0x3fcb6e469f6a54f4              # double 0.21430285247757974
	.quad	0x3fea1ce3dab8deee              # double 0.81602661818666689
	.quad	0x3fe6d5506e8a07ea              # double 0.71353932943042975
	.quad	0x3fd5480e65a28ce6              # double 0.33252296376504231
	.quad	0x3fe006cd7f6b9ba0              # double 0.50083041083131619
	.quad	0x3fa383754ba22e30              # double 0.038112321360213364
	.quad	0x3fdbbce85b52198c              # double 0.43340500753438316
	.quad	0x3fb99b82464ba748              # double 0.10002912727545976
	.quad	0x3fe6697e295cb520              # double 0.70037754133742069
	.quad	0x3faf6506f94790e0              # double 0.061317651681550123
	.quad	0x3f7d1b17e6618780              # double 0.0071059163657042346
	.quad	0x3fe81b74d1ca3448              # double 0.75335160231191711
	.quad	0x3febba8734a47640              # double 0.8665195491955231
	.quad	0x3fe726d261a29b63              # double 0.72348898953792362
	.quad	0x3feef2eec42ef3ab              # double 0.9671548682887211
	.quad	0x3fd3c11ccfdb1b1e              # double 0.30866165445734051
	.quad	0x3fd3a4f6a10c5dec              # double 0.30694356658338395
	.quad	0x3fdc10456de41f94              # double 0.43849311572602656
	.quad	0x3fc752fadf08bd3c              # double 0.18221984758700127
	.quad	0x3fd46a0b27df26ea              # double 0.3189723863002728
	.quad	0x3f7d737b9fb3eb80              # double 0.0071902112060752144
	.quad	0x3fdbcdf642a8a628              # double 0.43444592008254057
	.quad	0x3fe9bf2285d1bb82              # double 0.80458189140868819
	.quad	0x3fe742944fd90a60              # double 0.72687736125255853
	.quad	0x3fce4f647a7e05e8              # double 0.23679786664074176
	.quad	0x3fd5a115e1822cfa              # double 0.33795687696756682
	.quad	0x3fc3503956e5e598              # double 0.15088574164455504
	.quad	0x3fe2facc707d88cc              # double 0.59311506243491285
	.quad	0x3fe8a05b40e75215              # double 0.76957476307376516
	.quad	0x3fe07e65f2853922              # double 0.5154294716574308
	.quad	0x3fda2f24e7343016              # double 0.40912745073797063
	.quad	0x3fee71f3b8863d67              # double 0.9514101604453743
	.quad	0x3fd0fcb9044eca8e              # double 0.26542497082406491
	.quad	0x3fc81adea1516674              # double 0.18831999661306364
	.quad	0x3fdc7bc14ffc9322              # double 0.44505341349786154
	.quad	0x3fe42ede79adc2d4              # double 0.63072131886846217
	.quad	0x3fe0bc6611b630dd              # double 0.52299788913071732
	.quad	0x3fcc40c9ee18d690              # double 0.22072719693976639
	.quad	0x3fdb3035cef9e012              # double 0.42481751644618371
	.quad	0x3feae412b43a6ab6              # double 0.84034095002001297
	.quad	0x3fbc4c7b95d8e4e0              # double 0.11054203422908726
	.quad	0x3fdd943df43b229e              # double 0.46217297411616609
	.quad	0x3fe8f85df16fbb14              # double 0.78031823306614223
	.quad	0x3fe8b45577fc7be4              # double 0.77201341090028252
	.quad	0x3fd2f008fbecf784              # double 0.29590057947267945
	.quad	0x3fb13703562b23d0              # double 0.067245682275042684
	.quad	0x3fea41b8615911f2              # double 0.82052248967425911
	.quad	0x3fec5ed637313770              # double 0.88657675533043623
	.quad	0x3fef24ff783edeee              # double 0.97326634870020512
	.quad	0x3fe5868f03608c97              # double 0.67267561587904623
	.quad	0x3fe2e48b3bf59334              # double 0.59039842329784742
	.quad	0x3feaf004ff7968a6              # double 0.84179925820651103
	.quad	0x3fb208f417b55648              # double 0.070449119365855073
	.quad	0x3fe8cd6c1ab70345              # double 0.77507596223595299
	.quad	0x3fe4ec7c006a6717              # double 0.65386772233179868
	.quad	0x3fb4aed75e199030              # double 0.080792866204831836
	.quad	0x3feef19fe5f16794              # double 0.96699519072284312
	.quad	0x3fe8a948c7383562              # double 0.77066458616324618
	.quad	0x3fe52eddfa216fe1              # double 0.66197108129153659
	.quad	0x3fef8ed0c4589e56              # double 0.98618353222713995
	.quad	0x3fecfe1cf0a0df65              # double 0.90601965902076798
	.quad	0x3fe856540a69dd87              # double 0.76053812059301229
	.quad	0x3fe8ff539d96fc26              # double 0.78116780070547942
	.quad	0x3fbf922006923a18              # double 0.12332344208173429
	.quad	0x3fdae797e09153fc              # double 0.42038533144415147
	.quad	0x3fefc3cf5c5d1969              # double 0.99265258826998803
	.quad	0x3fd8e7e76f37033e              # double 0.38915429936246315
	.quad	0x3fe40d6032f68c7b              # double 0.62663278535582323
	.quad	0x3fce1fb84a452a44              # double 0.23534301401589819
	.quad	0x3fdcc0e1126e1f22              # double 0.44927241134472429
	.quad	0x3fdc806daa001d98              # double 0.44533864595038031
	.quad	0x3fb188790e601990              # double 0.068488660821549141
	.quad	0x3fe0d733f4d0eb2d              # double 0.52626989188806805
	.quad	0x3fc4d47869a34aa4              # double 0.16273408086870689
	.quad	0x3fe0c69259dfbc8f              # double 0.52423970750341364
	.quad	0x3fcd6e223178d290              # double 0.22992350974677267
	.quad	0x3fed2891d7e8e156              # double 0.91120235605107314
	.quad	0x3fe94c567a8d6cf2              # double 0.79056858001732011
	.quad	0x3fe407eb64a4bdda              # double 0.62596673638284561
	.quad	0x3fe99420f2b70a9b              # double 0.79933211713099028
	.quad	0x3fec59b04fd30383              # double 0.8859483298366374
	.quad	0x3fe78221bf117f65              # double 0.73463523214375626
	.quad	0x3fedd674fdcb85f4              # double 0.93242883271540089
	.quad	0x3fcd490fc6a66018              # double 0.22879216384603818
	.quad	0x3fd55d7d3273279c              # double 0.33383111883869687
	.quad	0x3fd2da6e7428dcec              # double 0.29458199828827847
	.quad	0x3fef5b8230c5b3c2              # double 0.97992047811350624
	.quad	0x3fd831d2e8ff77b4              # double 0.37804100755408432
	.quad	0x3fd291835d872102              # double 0.29013141759470795
	.quad	0x3fe20ebd10ec55fe              # double 0.56429913811979282
	.quad	0x3fbe8724e79a71c8              # double 0.11924963621499451
	.quad	0x3fc2594d65ed9ac0              # double 0.14335029103241048
	.quad	0x3fcdabfc7444d294              # double 0.23181110074223865
	.quad	0x3feb410a99291ce7              # double 0.85168962396792558
	.quad	0x3fe482fa8bd234cc              # double 0.6409886103516782
	.quad	0x3fdbfaff732aabce              # double 0.43719469305750358
	.quad	0x3febbaa3d7284e68              # double 0.86653320334376094
	.quad	0x3fc508fb0c9ba34c              # double 0.16433656802771635
	.quad	0x3fc612f2dbaea4dc              # double 0.17245326735181876
	.quad	0x3fcb20f9a3b2ad6c              # double 0.21194382184090033
	.quad	0x3fe9c527965fd793              # double 0.80531672830578527
	.quad	0x3fecdbe48b0f38a5              # double 0.90184237632799535
	.quad	0x3fd2f24b2a6491b0              # double 0.29603842868734898
	.quad	0x3fa2032750322660              # double 0.035180309810198152
	.quad	0x3fb8acb517af1570              # double 0.096385305673796883
	.quad	0x3fd9c27efbfdba0c              # double 0.40249609573848555
	.quad	0x3fde1729c6c7af8e              # double 0.4701637688838155
	.quad	0x3fe5adc093db352a              # double 0.67745999220065767
	.quad	0x3fd02d19b2787872              # double 0.25275270870941491
	.quad	0x3fe698497ad50e40              # double 0.70608972540544102
	.quad	0x3fe1cfa2d8549f76              # double 0.55659620525419373
	.quad	0x3fa883822c3a0660              # double 0.047878330134164981
	.quad	0x3fe37295a5078eeb              # double 0.60773737175301557
	.quad	0x3fd698e0855082b2              # double 0.35308087367051677
	.quad	0x3fdc20945b1c8f78              # double 0.43948849580396354
	.quad	0x3fdb310e51412268              # double 0.42486913619044353
	.quad	0x3fe9590040e11236              # double 0.7921143786593976
	.quad	0x3fe6f2e986da107a              # double 0.71715236986393838
	.quad	0x3fe2ef9a5dafb514              # double 0.59174841211430129
	.quad	0x3fe8b6067eb62475              # double 0.77221989391649848
	.quad	0x3fcb1cdd57ef7990              # double 0.21181837838862494
	.quad	0x3fec9ed9bddf24f9              # double 0.89439093670185266
	.quad	0x3fe063f5c296405f              # double 0.5122021484876419
	.quad	0x3fa76b59549bd8b0              # double 0.045740882471294042
	.quad	0x3fc3ffc5371fabb0              # double 0.15624299232089589
	.quad	0x3fc0501b52336228              # double 0.12744466317850933
	.quad	0x3fdf068cb4920964              # double 0.484774757707916
	.quad	0x3f9cf44c0e4c31a0              # double 0.02827566945329496
	.quad	0x3fa77f525ce223c0              # double 0.045893262708950555
	.quad	0x3fe30a769ca9a92b              # double 0.59502726171675613
	.quad	0x3fe84f85c032494b              # double 0.75970733202329066
	.quad	0x3fe8453ca45aa99e              # double 0.75845176792545366
	.quad	0x3fbbe5c947710fb8              # double 0.1089750098627168
	.quad	0x3fd98d0a2bc0e994              # double 0.399233381965723
	.quad	0x3fd0c62c7a2c8ad8              # double 0.26209556513837873
	.quad	0x3fe9baba9110dd6f              # double 0.80404404004268126
	.quad	0x3fe4f9cf2d66ad37              # double 0.6554942976703505
	.quad	0x3fea92844e4e8bd5              # double 0.83038535398770341
	.quad	0x3fea599aa7423fbb              # double 0.82343800227862773
	.quad	0x3fe1699e4a54eb95              # double 0.54414286153711322
	.quad	0x3fc24ebad2954e58              # double 0.14302764208206287
	.quad	0x3fe46316c04dc7b9              # double 0.63709580954877432
	.quad	0x3fca465660d99f18              # double 0.20527152756698608
	.quad	0x3fe4e67df9c9fcf8              # double 0.65313624178807483
	.quad	0x3fd3e7d1da54c582              # double 0.31102415391350047
	.quad	0x3fcf9e27d13759e8              # double 0.24701402392993477
	.quad	0x3fe275ae9e98d0af              # double 0.57686549163783762
	.quad	0x3fedabdb623cc1a7              # double 0.9272286337564325
	.quad	0x3fca52c6f3a239b4              # double 0.20565115829636016
	.quad	0x3fde3af9857f9fa8              # double 0.47234952961889087
	.quad	0x3f42b93829c31c00              # double 5.713962778138848E-4
	.quad	0x3fe5fb9c017211d9              # double 0.68696403772679127
	.quad	0x3fc75d3d023c47b8              # double 0.18253290757325913
	.quad	0x3fe169cec8dd1bdb              # double 0.54416598540489802
	.quad	0x3fef975a2d0e7a86              # double 0.98722561645611573
	.quad	0x3fc448ff3634f7f0              # double 0.15847768923589411
	.quad	0x3feee324daff614c              # double 0.96522753498997237
	.quad	0x3fe4e05560c18526              # double 0.65238446138042572
	.quad	0x3fec6e6edad0d67b              # double 0.88848059403853996
	.quad	0x3fe892d0bfc3597b              # double 0.76792180494048468
	.quad	0x3fd41f45cc3ee1fe              # double 0.31440873094427946
	.quad	0x3fda4b7f5a0c27f8              # double 0.41085799974155135
	.quad	0x3fe9237351525814              # double 0.7855774486840823
	.quad	0x3fc9ba769a6067e8              # double 0.20100290811461652
	.quad	0x3fdc3f8558e49f98              # double 0.44137700730288421
	.quad	0x3f8fb9c3766577c0              # double 0.015491034556074257
	.quad	0x3fe836bf98b3ba27              # double 0.75668315720196666
	.quad	0x3fe2bc39acac6b1c              # double 0.58547672009749219
	.quad	0x3fe6bffe8df0dbd8              # double 0.7109368107111278
	.quad	0x3fcfe93043a9d1a4              # double 0.24930384925722848
	.quad	0x3fde6286ad05cdc8              # double 0.47476355454201924
	.quad	0x3feaa14eeba7a6c8              # double 0.83219095255227504
	.quad	0x3fb570ee2dffb458              # double 0.083754430990397366
	.quad	0x3fddbb4eda91cf34              # double 0.46455737442669265
	.quad	0x3fe656efb21d7923              # double 0.69811234272109279
	.quad	0x3fdcf1ece98efe5e              # double 0.45226595695928562
	.quad	0x3fe70d20e434fbfb              # double 0.72035259792016804
	.quad	0x3fe9f688a5a69995              # double 0.81134445527713928
	.quad	0x3fed89f4617b3f4b              # double 0.92309016265242272
	.quad	0x3fe54677bead5705              # double 0.66485202066061844
	.quad	0x3fd23b6397e749be              # double 0.28487481912921087
	.quad	0x3fdc7fdab12bd876              # double 0.44530360509759903
	.quad	0x3fc89123e56b7788              # double 0.19192932798517526
	.quad	0x3fe1c6882016ed84              # double 0.55548483149998207
	.quad	0x3fd0eb6e05645902              # double 0.2643694927841268
	.quad	0x3fe5db681ca0be01              # double 0.68303304282557076
	.quad	0x3fe6d8c4efd68640              # double 0.71396109431606902
	.quad	0x3fde6fd6d24e911c              # double 0.47557611978324288
	.quad	0x3fe2e7253d593457              # double 0.59071599943275543
	.quad	0x3fc7f8c7c29d7a48              # double 0.18727967264836054
	.quad	0x3feda59f1b696986              # double 0.92646746972904803
	.quad	0x3fd4c3eff67535ee              # double 0.32445906704091854
	.quad	0x3fe892ceee969efc              # double 0.76792093848504761
	.quad	0x3fd03d43a89ebd50              # double 0.25373927561573328
	.quad	0x3feba2a485b7ac0e              # double 0.86360384098714049
	.quad	0x3fdfaaa0db9e5672              # double 0.4947893280708292
	.quad	0x3fe89944ec8aa2f0              # double 0.76870962333222614
	.quad	0x3fd2bace5c983412              # double 0.29265173952518453
	.quad	0x3f97d3465c12e6c0              # double 0.023266887063732922
	.quad	0x3feb28542139062c              # double 0.84867292870348398
	.quad	0x3fef80db13d0a3d0              # double 0.98447946424595933
	.quad	0x3fa69c9c9edd4540              # double 0.044163603203410506
	.quad	0x3fe72cd6b7fa0d1a              # double 0.72422347958527955
	.quad	0x3fe0c52f089fefe2              # double 0.52407027897379188
	.quad	0x3fadc4ab8f3f7be0              # double 0.058141099201513446
	.quad	0x3fd245665f7f2940              # double 0.28548583341457245
	.quad	0x3fd56daa4978d426              # double 0.33481843161581748
	.quad	0x3fe6703c54f7e11d              # double 0.70120064349524436
	.quad	0x3fef88d80088f54b              # double 0.98545456032267375
	.quad	0x3fe77b41ea52426b              # double 0.73379607931026436
	.quad	0x3fbd9f5ed2428828              # double 0.11571304925249193
	.quad	0x3fe0807ec87d2f58              # double 0.51568545492180373
	.quad	0x3fdb293a8d799282              # double 0.42439140144259835
	.quad	0x3fcc638cd58ae944              # double 0.2217880289734443
	.quad	0x3fe84c379e57e7f0              # double 0.75930386473123512
	.quad	0x3fca771265e7b7ec              # double 0.20675878501737033
	.quad	0x3fe84c91922abffa              # double 0.75934675739517776
	.quad	0x3fe142bf7d6a639d              # double 0.53939795012694314
	.quad	0x3fe15a5cde4e87be              # double 0.54228061122216054
	.quad	0x3fa6b55f3859e610              # double 0.044352508190922291
	.quad	0x3fe55b0fa267e152              # double 0.66736585349921485
	.quad	0x3fd44f9be697571e              # double 0.31735894697827571
	.quad	0x3fe3b4bef694eae2              # double 0.6158137146042828
	.quad	0x3fe6d8eb12d5ba91              # double 0.71397927931487193
	.quad	0x3fe4339cae2cfe04              # double 0.63130029696179735
	.quad	0x3fe41a5f9ab34609              # double 0.62821941580676921
	.quad	0x3f90e2e12299f9e0              # double 0.016490476357370443
	.quad	0x3fc6a39c0347a78c              # double 0.17686796341086752
	.quad	0x3fed1b9d43b17aa2              # double 0.90962088795989282
	.quad	0x3fd263e586886d28              # double 0.28734720361690558
	.quad	0x3fd44034d9c985aa              # double 0.31641885059624519
	.quad	0x3fd5b68d7f3ac388              # double 0.33926713394890173
	.quad	0x3fe44da12a0df3ba              # double 0.63447626317758155
	.quad	0x3fd8e392fe701fba              # double 0.38889002654513727
	.quad	0x3fd618125359b5ae              # double 0.34521921291055946
	.quad	0x3fdef60172523fa6              # double 0.48376499332607137
	.quad	0x3fe15f28a985a296              # double 0.54286606893318168
	.quad	0x3fd04dd87a0af362              # double 0.25475131910552851
	.quad	0x3fcf1bbfab1d9a74              # double 0.24303432326560748
	.quad	0x3fd7003177fa83ea              # double 0.35938679424913167
	.quad	0x3fe535080a787fe2              # double 0.66272356076296668
	.quad	0x3fdd02f89f89582e              # double 0.45330634670006276
	.quad	0x3fe25378c2f2751d              # double 0.57268941951375363
	.quad	0x3fe91d20da864040              # double 0.78480570488500945
	.quad	0x3fbddc5bfe75c800              # double 0.11664366686252947
	.quad	0x3fe7835f003440cd              # double 0.73478651084772084
	.quad	0x3fe12fdcaf6eac33              # double 0.53709253563045534
	.quad	0x3fe49d97d6afb7a6              # double 0.64423744135796279
	.quad	0x3fd08c2a3a36c5c2              # double 0.25855498967129276
	.quad	0x3feb8a6a93f83182              # double 0.86064652347845105
	.quad	0x3fe082afc25b46b4              # double 0.51595294914496614
	.quad	0x3fce83b362920358              # double 0.23839418709760696
	.quad	0x3fda51876e94f1be              # double 0.41122613715176815
	.quad	0x3fd90f7b126266ee              # double 0.39156986995077048
	.quad	0x3fe8f7f06a5b9ba4              # double 0.78026600621239028
	.quad	0x3fb840cbb3e004a0              # double 0.094738704123317862
	.quad	0x3fcb02f43216a808              # double 0.21102764554717646
	.quad	0x3feda4e9c4c9a972              # double 0.92638100085359398
	.quad	0x3fe0fab446478938              # double 0.53060353971912999
	.quad	0x3fcb45374bbcdbe8              # double 0.21304980466967938
	.quad	0x3feac72a9260c05c              # double 0.83681229199829543
	.quad	0x3fa7e0611d72adc0              # double 0.046633753628465779
	.quad	0x3fe74adc2953890d              # double 0.72788818427605551
	.quad	0x3fdc5fe278dc7e60              # double 0.44335233500348714
	.quad	0x3fe1633a9f029e76              # double 0.54336291367231015
	.quad	0x3fda5a39284c2a44              # double 0.41175679145149879
	.quad	0x3fb186a022c8bb10              # double 0.068460472576344467
	.quad	0x3fc3e4f4fe907aa8              # double 0.15542471341992337
	.quad	0x3fe66605f831f4bd              # double 0.69995401836026583
	.quad	0x3fc56ae17bc87e38              # double 0.16732424301243198
	.quad	0x3fac0a37b82b64e0              # double 0.054765454513196365
	.quad	0x3fee8149e904bdab              # double 0.95328231345586312
	.quad	0x3fe42f55fdb20f0e              # double 0.63077830839071836
	.quad	0x3fd01ddade419842              # double 0.25182220177373804
	.quad	0x3fe2c4712f38517c              # double 0.58647975180296852
	.quad	0x3fdf1f81d07acb0c              # double 0.48629804000226851
	.quad	0x3fbb356d164114a0              # double 0.10628396790805761
	.quad	0x3fdf046075dd9d6a              # double 0.48464213857956528
	.quad	0x3fe26d85aa13dce8              # double 0.57586940019873811
	.quad	0x3fdaec466b1718ae              # double 0.42067108591107683
	.quad	0x3fe84b6de091d20c              # double 0.75920766698124131
	.quad	0x3fe56b4a448a1c1d              # double 0.66934693705195836
	.quad	0x3fed7dc024c7d714              # double 0.92160041030612882
	.quad	0x3fe5cc9771a5b776              # double 0.68122455784553781
	.quad	0x3fe7993a9bf47254              # double 0.73745470485625697
	.quad	0x3fd6157f7f3f07de              # double 0.34506213594806734
	.quad	0x3fd4d54a99292396              # double 0.32551827389812027
	.quad	0x3fc331227f98d794              # double 0.14993697386097138
	.quad	0x3fe13c1697628a77              # double 0.53858499114387726
	.quad	0x3fec3694b418a574              # double 0.88166270422986636
	.quad	0x3fe0a9c2a4540a7b              # double 0.52072269530647419
	.quad	0x3fe751525284403e              # double 0.72867694965862717
	.quad	0x3fd2f73ac7ab31f4              # double 0.29633969782733449
	.quad	0x3fe0952ce81d4223              # double 0.51820988974401805
	.quad	0x3fe34a579bf77e19              # double 0.60282497846850724
	.quad	0x3fe38f385bc05f74              # double 0.61123292846876476
	.quad	0x3fc26865417e49c8              # double 0.14381089876094522
	.quad	0x3fdd8bdae850c3be              # double 0.46166107832965142
	.quad	0x3fd044584efcc14e              # double 0.25417144502263944
	.quad	0x3fc58836b9a5d41c              # double 0.16821941437561427
	.quad	0x3fee9a6a2a9a669a              # double 0.95634945221827938
	.quad	0x3fe5c69ada778497              # double 0.6804937617236132
	.quad	0x3fe491af8f04e049              # double 0.64278390820892028
	.quad	0x3fe23ea0ab8e4cb7              # double 0.57014497286799937
	.quad	0x3fdd52b8ea81c05c              # double 0.45817397023257
	.quad	0x3fb8d9403cec6f10              # double 0.097064986108702067
	.quad	0x3fb6cf0531e72280              # double 0.08909637897807876
	.quad	0x3fef063d03350fbb              # double 0.96951151491565867
	.quad	0x3f8763f4bb7e0380              # double 0.011421119663056478
	.quad	0x3fecf7bec0969900              # double 0.90524232497116941
	.quad	0x3fe12c913fde5e39              # double 0.53669035410252441
	.quad	0x3fdc3dea10cc1dbe              # double 0.4412789501224913
	.quad	0x3fe0004ce7296365              # double 0.50003667019619213
	.quad	0x3fd9de2e539e2cc0              # double 0.40418584981734895
	.quad	0x3fddd60f7f8722b6              # double 0.46619021848577391
	.quad	0x3fe759cf925e7b89              # double 0.72971323573789093
	.quad	0x3fd15a81dffa2af0              # double 0.27114912865424312
	.quad	0x3fc68a014bf58b50              # double 0.17608658036177838
	.quad	0x3fdc978869d7b5dc              # double 0.44674883209412797
	.quad	0x3fcb7f5c07ec408c              # double 0.21482420336588282
	.quad	0x3feaa4b2b48a560d              # double 0.83260474454681488
	.quad	0x3fe9b2afd3f16231              # double 0.80306235690210859
	.quad	0x3fec184e0165bb54              # double 0.87796688340118089
	.quad	0x3fd11aff29c09228              # double 0.26727274968496539
	.quad	0x3fd26a60fe2f21e2              # double 0.28774285147349421
	.quad	0x3fd713d09de44072              # double 0.36058440608122233
	.quad	0x3fe6b061e060f0e0              # double 0.70903104614219714
	.quad	0x3f9b01839520fdc0              # double 0.026372962929824828
	.quad	0x3fee770d62b6872e              # double 0.95203274993784759
	.quad	0x3feb4e6410db5e7d              # double 0.85331919948926294
	.quad	0x3fd44b508fafde02              # double 0.31709684402400751
	.quad	0x3fbb2be75d3022b8              # double 0.10613866829965957
	.quad	0x3fdd49073da28382              # double 0.45758229273820217
	.quad	0x3fedc2e365f1e2bf              # double 0.93004007254702248
	.quad	0x3fd927ab3081102c              # double 0.39304618584378903
	.quad	0x3fe002588046c45a              # double 0.50028634122839866
	.quad	0x3fb787da71320f68              # double 0.091916706691390737
	.quad	0x3fc4dde788ac3b74              # double 0.16302198575473492
	.quad	0x3fe77290097ddcb3              # double 0.73273469785535494
	.quad	0x3fd974269082f5e8              # double 0.39771427261788839
	.quad	0x3fe5df58b24cf320              # double 0.68351397346814124
	.quad	0x3fa96d1e5446c660              # double 0.049660632884649614
	.quad	0x3feff9f920818b93              # double 0.99926430081210282
	.quad	0x3fe37734d499d227              # double 0.6083015587196926
	.quad	0x3fdf0ca054997bcc              # double 0.48514564763712253
	.quad	0x3fcaa5ba4215cf18              # double 0.20818260409179667
	.quad	0x3fc1cc3b23e20840              # double 0.13904513599487878
	.quad	0x3fd6ff3607816cbc              # double 0.35932684643712398
	.quad	0x3fe52d88e3943182              # double 0.66180843781471332
	.quad	0x3f9a647d8014f8e0              # double 0.025773964827060847
	.quad	0x3fd3d6022ab006c8              # double 0.30993704003058697
	.quad	0x3fd2f907089725fe              # double 0.29644943083675901
	.quad	0x3fe3fa7b6a945a6a              # double 0.62432642761525625
	.quad	0x3fe614ee49f8c7c8              # double 0.69005503127686385
	.quad	0x3fc8f599df0ca4e0              # double 0.19499514952739272
	.quad	0x3f4e25570a176c00              # double 9.1997861835169115E-4
	.quad	0x3fc16eb1127bffb0              # double 0.13619054224545613
	.quad	0x3fcfa2cbb9bcfc4c              # double 0.24715563363312965
	.quad	0x3fe12a3af6f30ff2              # double 0.53640506965939339
	.quad	0x3fe7d94b954dc1d1              # double 0.7452752986992498
	.quad	0x3fe40000ddfc8451              # double 0.62500041348187996
	.quad	0x3f792e6029c94f00              # double 0.0061477428794949329
	.quad	0x3f600305ca7dc800              # double 0.0019545662980187117
	.quad	0x3fe0ddce8208100a              # double 0.52707600971962276
	.quad	0x3fb1715fa6fe5780              # double 0.068136194486525525
	.quad	0x3fdcee95a2294d34              # double 0.45206204258029747
	.quad	0x3fc0535b276d79cc              # double 0.12754382538964959
	.quad	0x3fe36c1fc723b812              # double 0.6069487466281791
	.quad	0x3fc2da9ab20af76c              # double 0.14729627316949789
	.quad	0x3fe0403f51baf032              # double 0.50784269297537876
	.quad	0x3fdbaf19fa89840c              # double 0.43256234613915079
	.quad	0x3fd097dd2bf89770              # double 0.25926904005097295
	.quad	0x3fefe91da7d753ed              # double 0.99720652371854401
	.quad	0x3fd78d95225b332a              # double 0.36801651339628683
	.quad	0x3fd22053ee729dd6              # double 0.28322313581381076
	.quad	0x3fefc05e673b29dd              # double 0.99223251497579278
	.quad	0x3fbcb7fc1984c510              # double 0.1121823847104404
	.quad	0x3fd9e5ef6aa9f38a              # double 0.4046591321601275
	.quad	0x3fcf624a02f34d00              # double 0.24518704551756088
	.quad	0x3fc75cce3a23a520              # double 0.18251970137434004
	.quad	0x3fd0d108d798ee28              # double 0.26275845579559354
	.quad	0x3fb8c1f008815de8              # double 0.096709253384112182
	.quad	0x3fe893100ca261d6              # double 0.76795198886525884
	.quad	0x3fd6dcebb7df2166              # double 0.35723393398486392
	.quad	0x3fe4a91e2da364e0              # double 0.64564427293512594
	.quad	0x3fe24d45ba1506b9              # double 0.57193266243139995
	.quad	0x3fe93e4e3d18a97b              # double 0.78885566647413385
	.quad	0x3fe219f70096770f              # double 0.56566953768535366
	.quad	0x3fd2d18bc31fd9a2              # double 0.29403966956251726
	.quad	0x3fd00a7369ad9cb0              # double 0.25063786811956401
	.quad	0x3fe406a4ff0884f3              # double 0.62581109820544467
	.quad	0x3fafab07f8517e50              # double 0.061851738989159188
	.quad	0x3fdf81f08d14851e              # double 0.49230588700636868
	.quad	0x3fe0af5987e2f66b              # double 0.52140499630304527
	.quad	0x3fd9da51a4acf8c8              # double 0.40395012933357721
	.quad	0x3fd80f969e1c937a              # double 0.3759514373835412
	.quad	0x3fe48da904caf836              # double 0.64229250846961494
	.quad	0x3f87e6a805265400              # double 0.011670410782963714
	.quad	0x3fdc7e3622fcf9a6              # double 0.4452033368760574
	.quad	0x3fc83c1dbd8d05b0              # double 0.18933460002339819
	.quad	0x3fe44308330231bf              # double 0.63318262064563402
	.quad	0x3fc66eae1a66b7e4              # double 0.17525268830416885
	.quad	0x3fefc744a1cebd80              # double 0.99307471850436002
	.quad	0x3feff9215bb718b5              # double 0.99916141427163174
	.quad	0x3fec8d65620b6ee0              # double 0.89226025723788993
	.quad	0x3fe69739ee5bfa8e              # double 0.70596024088429643
	.quad	0x3fcbde2eb813348c              # double 0.21771797168768037
	.quad	0x3fed53e4cc436d6d              # double 0.91649093527977998
	.quad	0x3fef99d048ebc310              # double 0.98752607576725104
	.quad	0x3fef7d059aef10d8              # double 0.98401146183507659
	.quad	0x3fc6a8e9afe14a78              # double 0.17702981078999236
	.quad	0x3fe7741d5a004aee              # double 0.73292415216778095
	.quad	0x3fe6c8f6cbca5634              # double 0.71203174403007674
	.quad	0x3feb6b03b0f2f875              # double 0.85681328354236419
	.quad	0x3fede31ddfa1ca8d              # double 0.93397420576214218
	.quad	0x3fc18479ef8758ec              # double 0.13685535617577871
	.quad	0x3fead3ad9cf5374d              # double 0.83833962112269378
	.quad	0x3fcd243a74dcc010              # double 0.22766810136954563
	.quad	0x3fe8e8d732582f46              # double 0.778422926262899
	.quad	0x3fd2f19c778f48da              # double 0.29599677730324248
	.quad	0x3fe3003e47c6c386              # double 0.59377969759781091
	.quad	0x3fd99353ea586394              # double 0.39961717496185512
	.quad	0x3fe85d079061dbe4              # double 0.76135614585552646
	.quad	0x3fda19752bfdc42c              # double 0.407803814850072
	.quad	0x3fc3b549b24d9a20              # double 0.15396996694762866
	.quad	0x3feee54e60fd1bac              # double 0.96549147551637792
	.quad	0x3fc185d8c05068c8              # double 0.1368971766503988
	.quad	0x3fed89250c963fa0              # double 0.92299129923229727
	.quad	0x3fee2b116f0fe61b              # double 0.94275733653848037
	.quad	0x3feb8aea0264df48              # double 0.86070728747925163
	.quad	0x3faa8cd1173a06f0              # double 0.0518555966236941
	.quad	0x3fe4ba24a711be6a              # double 0.64772255545353841
	.quad	0x3f75457a2c9bf580              # double 0.0051932117873979555
	.quad	0x3fe562198ac3fe38              # double 0.66822507002502274
	.quad	0x3fed84f0e0dbc948              # double 0.92247814099963765
	.quad	0x3fd428c821433092              # double 0.31498912094390008
	.quad	0x3fe5940655c718ec              # double 0.67431942704641079
	.quad	0x3fb39d9e88425c78              # double 0.076623829142009714
	.quad	0x3fe469ab1e02f7a3              # double 0.63789897786749739
	.quad	0x3fe30afa8b060acd              # double 0.59509017136618925
	.quad	0x3fd8cef1b639cd0a              # double 0.38763087077605063
	.quad	0x3fe90765d84e9574              # double 0.78215305564360315
	.quad	0x3fe8e2b58275de4f              # double 0.7776744411521096
	.quad	0x3fe482707bb3031f              # double 0.64092277679455723
	.quad	0x3feaed569ae3edbe              # double 0.84147196056385787
	.quad	0x3fe646c88cfe344f              # double 0.69614055192654145
	.quad	0x3fd266f4de19b350              # double 0.28753396691791
	.quad	0x3fb1c028c303e9e0              # double 0.069338367091325903
	.quad	0x3fc16918efddb71c              # double 0.13601981842241961
	.quad	0x3fe8effed6f99c53              # double 0.77929632174790198
	.quad	0x3fed6396e01359f6              # double 0.91840690388454393
	.quad	0x3fdb8b07b71da86c              # double 0.43036072618872967
	.quad	0x3f9103a2b5217160              # double 0.016615431123100932
	.quad	0x3f662833e0f8a200              # double 0.0027047169931118109
	.quad	0x3fed0cd87b274d67              # double 0.90781806996748748
	.quad	0x3fd9672b72c58256              # double 0.39692197998195888
	.quad	0x3fe5b50e559ac557              # double 0.67835156173365874
	.quad	0x3fdcab52113789d6              # double 0.4479565780767677
	.quad	0x3feede508ff63bd9              # double 0.96463802449749913
	.quad	0x3fd3c347bd3c3c16              # double 0.30879395942696541
	.quad	0x3fc23974d56b4da4              # double 0.14237842961175062
	.quad	0x3fe839333eecab98              # double 0.7569824437135706
	.quad	0x3fd24284ef7b08e4              # double 0.28531001459863448
	.quad	0x3fe49f89adc3c5cd              # double 0.64447483004021822
	.quad	0x3fe4fc54917b8848              # double 0.65580204405365183
	.quad	0x3fe49794ccc896d9              # double 0.64350357052600338
	.quad	0x3fe4663363df5a22              # double 0.63747567659703841
	.quad	0x3fcf9b945d4f3130              # double 0.2469354110347779
	.quad	0x3fe833530939d422              # double 0.75626518060619596
	.quad	0x3fe31fb053adf01d              # double 0.59761825889245623
	.quad	0x3fe97d0885d520ed              # double 0.79651285304228525
	.quad	0x3fa50c238abe38e0              # double 0.041108236967476008
	.quad	0x3fc7b76b67068d08              # double 0.18528502016588555
	.quad	0x3fef0b543bbf7003              # double 0.97013293904774433
	.quad	0x3fd4abc6ae873170              # double 0.32298438113936978
	.quad	0x3fc8996470078498              # double 0.19218116254981932
	.quad	0x3fc1154844ffadfc              # double 0.13346198433951872
	.quad	0x3fe0fd6a6a21bd0c              # double 0.53093453148713499
	.quad	0x3fc78e6528ff7688              # double 0.18403305532313063
	.quad	0x3fe8f48c186fa854              # double 0.77985195896804748
	.quad	0x3fe9d58bd17e4542              # double 0.80731764713906551
	.quad	0x3fdcd2d279f8968a              # double 0.45036756430850089
	.quad	0x3fed4b873906687d              # double 0.91546975267125641
	.quad	0x3fe715a21418d941              # double 0.7213907616158296
	.quad	0x3fecedd8141f4cd8              # double 0.90403369836931358
	.quad	0x3fc8fefe8684cddc              # double 0.19528180664347772
	.quad	0x3fe3bc32bcbad0fa              # double 0.6167234121444658
	.quad	0x3fc3a4fa82afb8f0              # double 0.15347224599049225
	.quad	0x3fbe8165b4e447d8              # double 0.1191619459753207
	.quad	0x3fccac72745b5d34              # double 0.2240126674794084
	.quad	0x3fd3eb6780c119a6              # double 0.31124293874418141
	.quad	0x3f9004b6616e3cc0              # double 0.01564297647160795
	.quad	0x3fba6e4559d46650              # double 0.10324510043246815
	.quad	0x3fb0329848961258              # double 0.063272016259426578
	.quad	0x3fd9f00cb8857634              # double 0.4052764703718339
	.quad	0x3fe570b1812b6aee              # double 0.67000651577413151
	.quad	0x3fed59289e552e35              # double 0.91713362621653138
	.quad	0x3fd6e1c141b64608              # double 0.3575289861410913
	.quad	0x3fe627741787acbc              # double 0.69231609912585368
	.quad	0x3fe02339d6f2c8d9              # double 0.50430004102806969
	.quad	0x3fe6e21bdd8b222d              # double 0.71510117788517891
	.quad	0x3fdd6e0715305e22              # double 0.45984055585128847
	.quad	0x3fc5afb650314688              # double 0.16942480960510786
	.quad	0x3fd9a74206df7050              # double 0.40083361312077148
	.quad	0x3fc36897e2fc8014              # double 0.15162943442646848
	.quad	0x3fdb9a0645dc013e              # double 0.43127590963560525
	.quad	0x3fecc09ae982e63c              # double 0.89851136787110119
	.quad	0x3fb6d5ed1bdb2ac0              # double 0.089201754856882864
	.quad	0x3fe37869129392af              # double 0.60844854000295878
	.quad	0x3fe5c35ac1097341              # double 0.68009698584101141
	.quad	0x3fdf9f97e371180a              # double 0.49411580287085199
	.quad	0x3fe408963e88ab79              # double 0.6260482045521335
	.quad	0x3fea3d0340889061              # double 0.81994783977689789
	.quad	0x3fd3122aee8b626a              # double 0.29798386855467263
	.quad	0x3fcf423a883a3ab8              # double 0.24420863773089763
	.quad	0x3fc55a9654909eb0              # double 0.16682700280329277
	.quad	0x3fe1cbce45e5e21e              # double 0.55612863208722607
	.quad	0x3fe6e138e3c222c1              # double 0.71499294742633179
	.quad	0x3fe10c6d093a534c              # double 0.53276683618842346
	.quad	0x3fa4a342095a58b0              # double 0.040308059350694037
	.quad	0x3fdcbb447f1a0566              # double 0.44892990505476005
	.quad	0x3fd443a6708f5bea              # double 0.31662903778254636
	.quad	0x3fea51f2201c42a7              # double 0.82250314971505112
	.quad	0x3fe1fcb4fc7ef44d              # double 0.56209801974876827
	.quad	0x3fef5c20fffff790              # double 0.97999620437598089
	.quad	0x3fe4759c7fdb4e31              # double 0.63935685131077069
	.quad	0x3fea0367349715b8              # double 0.81291542312162957
	.quad	0x3fd366c563441b00              # double 0.30314764684628415
	.quad	0x3fdf61d217253516              # double 0.49034549961364016
	.quad	0x3fc814ca3591019c              # double 0.18813445678280238
	.quad	0x3fe91f6eedc73246              # double 0.78508707467114713
	.quad	0x3febe9243d7304b4              # double 0.87220966340841821
	.quad	0x3fdd550643f18606              # double 0.45831448206999459
	.quad	0x3fe68ea20a8917c2              # double 0.70491125161856183
	.quad	0x3fe484c2a8b095fb              # double 0.64120610186790772
	.quad	0x3fc2aa3409f83d80              # double 0.14581919180680458
	.quad	0x3fed2409aa643d2e              # double 0.91064914016343379
	.quad	0x3fec873acfea2df5              # double 0.89150753601410193
	.quad	0x3fe60a51c4ba4d72              # double 0.68875969336879295
	.quad	0x3feabbd2c9b31c48              # double 0.83542765993559787
	.quad	0x3fe2f6303afe804a              # double 0.59255229494375183
	.quad	0x3fe3fcd5754ca9e3              # double 0.62461350355198098
	.quad	0x3fcbaf418a4a26e4              # double 0.216285889171835
	.quad	0x3fdd28775bd00ca0              # double 0.45559486356814638
	.quad	0x3fe2adaaf760128f              # double 0.58369968715176579
	.quad	0x3fc6f92b73ab5d74              # double 0.17947905681533494
	.quad	0x3fd3087786f9cb0a              # double 0.29739177876688017
	.quad	0x3fd59f1f3ef3ba22              # double 0.33783703944837573
	.quad	0x3fec610cae9c3867              # double 0.88684686759530684
	.quad	0x3f3326eee1d52800              # double 2.9223758777574549E-4
	.quad	0x3fd6d12e2a52780a              # double 0.35651735432645693
	.quad	0x3fedb2d8aba65d4c              # double 0.92808183217395301
	.quad	0x3fd174abbb43dcf4              # double 0.27274602210623233
	.quad	0x3fd1295bbecb4f22              # double 0.26814931518787166
	.quad	0x3fe1e72772b0ea40              # double 0.55946705246544326
	.quad	0x3fd1ded812fc2d04              # double 0.27922632078180265
	.quad	0x3fe3d92c9b2fbacc              # double 0.62026052770473816
	.quad	0x3fe400198ec1e68b              # double 0.62501218683537851
	.quad	0x3fe44e441bfe5e25              # double 0.63455396144394582
	.quad	0x3fd144a7417fe558              # double 0.26981526752895979
	.quad	0x3fefd3f388ef080a              # double 0.99462296242586601
	.quad	0x3fe2cac5de437b5a              # double 0.58725255404338417
	.quad	0x3fe12f4a2f2a6752              # double 0.5370226784900558
	.quad	0x3fd6b1528388775a              # double 0.35457289547945481
	.quad	0x3fe0cb01a15b153f              # double 0.52478105082324322
	.quad	0x3fbac548687b3b98              # double 0.10457279730620284
	.quad	0x3fdd3aa0bfee7aa6              # double 0.4567033647853499
	.quad	0x3fedd3e7a249c1cf              # double 0.93211728760621237
	.quad	0x3fb1ec33db4a9220              # double 0.070010415113366253
	.quad	0x3fd0d3533ff6c934              # double 0.26289826628193969
	.quad	0x3fdaf4dcaca3884a              # double 0.42119519099481251
	.quad	0x3fe4ec7dcc64c2ee              # double 0.65386857910752183
	.quad	0x3fd8865d0b231602              # double 0.38320089423754677
	.quad	0x3fe1b9b9080b3b4a              # double 0.5539212376696494
	.quad	0x3fe1d041547f9c36              # double 0.55667177680596214
	.quad	0x3f6d9d95a4c07200              # double 0.0036151812291917995
	.quad	0x3fa656c4f194ccf0              # double 0.043630747308634699
	.quad	0x3fef0318a14d28a8              # double 0.96912795547657015
	.quad	0x3fd39d11241fbc56              # double 0.30646160629016117
	.quad	0x3fd78bdf190b3874              # double 0.36791207738577403
	.quad	0x3fc3551d2dbe5158              # double 0.15103497251096587
	.quad	0x3fee7684163f3cc8              # double 0.95196728081818893
	.quad	0x3fefbe4c07dca6c7              # double 0.99197961364299025
	.quad	0x3fdfa3d0fa2055cc              # double 0.49437355448148135
	.quad	0x3fe0397955308b83              # double 0.50701586378669139
	.quad	0x3fe98f6ee9c780a8              # double 0.79875894222279431
	.quad	0x3fd6d03304d57526              # double 0.35645747634937874
	.quad	0x3fc69a5ad85911e8              # double 0.17658553661216492
	.quad	0x3fe04f7de855a4fc              # double 0.50970359208909555
	.quad	0x3fea74c1392eef2d              # double 0.82675229233379854
	.quad	0x3fef21e77d7ceed3              # double 0.97288870343569511
	.quad	0x3fdfc69715cc7822              # double 0.49649598244457327
	.quad	0x3fe13ce58002e9d0              # double 0.53868365289900488
	.quad	0x3fee4afa8188eb26              # double 0.94665265369198859
	.quad	0x3feafbc7622f2fbe              # double 0.84323472191453397
	.quad	0x3fdca8553c33543e              # double 0.44777422789531218
	.quad	0x3fd13922f0ead30e              # double 0.26911233450964367
	.quad	0x3fe675471ae992c3              # double 0.70181613212897564
	.quad	0x3fd0b961aa48bce0              # double 0.26131478909787909
	.quad	0x3fe41b4098543722              # double 0.62832669975043509
	.quad	0x3fa379d65ba13720              # double 0.038038920102378748
	.quad	0x3fc7e6841b439984              # double 0.18672229129078854
	.quad	0x3febef80115581f0              # double 0.87298587213086698
	.quad	0x3fd80425250edb88              # double 0.37525299662541345
	.quad	0x3fe1048ca1600210              # double 0.53180533903656801
	.quad	0x3fab297cc27b4720              # double 0.053050898304390026
	.quad	0x3fe9bc747f4a0378              # double 0.80425476895480497
	.quad	0x3fcf6062b84e5064              # double 0.24512895583450522
	.quad	0x3feb77820ede0724              # double 0.85833838371056403
	.quad	0x3fe86021d90a69ff              # double 0.76173488989599025
	.quad	0x3fd05698aeddc55c              # double 0.25528542591844938
	.quad	0x3fc314793b34efa0              # double 0.14906230345684168
	.quad	0x3fe23b330c62a85c              # double 0.56972649020213906
	.quad	0x3fd23f57c93447a4              # double 0.28511614464616231
	.quad	0x3fe162b533eb44d9              # double 0.54329929485734418
	.quad	0x3fe6a06170f2bbeb              # double 0.70707771358672511
	.quad	0x3fec77986959d9c9              # double 0.8895990426670376
	.quad	0x3fde1603cb6a14ce              # double 0.47009367813764136
	.quad	0x3feb0e3f46ea38ce              # double 0.84548915720531581
	.quad	0x3fe2c72e415bbce5              # double 0.58681404843619289
	.quad	0x3fdc02ce28722b82              # double 0.43767122220804577
	.quad	0x3fee98a0bdd0c9bd              # double 0.95613133500437864
	.quad	0x3fd83883ba26a05e              # double 0.37844937495038333
	.quad	0x3fee222d01c9870c              # double 0.94167185162607003
	.quad	0x3f86b63298e1ce80              # double 0.011089701929655194
	.quad	0x3fc58ff9ef71d2a4              # double 0.16845630828506331
	.quad	0x3fe124a3c1b4855a              # double 0.53572261651076336
	.quad	0x3f85ed70b66285c0              # double 0.010706787649101268
	.quad	0x3feeb5d17cf61eb6              # double 0.95969461828732139
	.quad	0x3feb3572c6d5e36d              # double 0.85027445635851751
	.quad	0x3fd91e10ea157640              # double 0.39246008739232607
	.quad	0x3fe6f7dbdcc7c23c              # double 0.71775620576051535
	.quad	0x3fd612e595fbdd10              # double 0.34490337035045204
	.quad	0x3feadfd0dafa43eb              # double 0.83982126969396853
	.quad	0x3fd6265bd3a97ed2              # double 0.34609122915388213
	.quad	0x3fdf1848be1298ec              # double 0.48585718690664126
	.quad	0x3fe25c1844cb06ad              # double 0.57374204097887616
	.quad	0x3fc0dcaa665acad0              # double 0.13173418042932505
	.quad	0x3fd10cc34c3e4d78              # double 0.26640398450509606
	.quad	0x3fe93ac2c8f4e213              # double 0.78842295884448033
	.quad	0x3fe911c98fd4fa53              # double 0.78342130748917282
	.quad	0x3fd13e989c6a6e1e              # double 0.26944556498503569
	.quad	0x3fdd790f4367563a              # double 0.46051389295948619
	.quad	0x3fdb8a469dd67eba              # double 0.43031468786100968
	.quad	0x3fe76684a728a130              # double 0.73126442573724226
	.quad	0x3fd86853a78c91dc              # double 0.38136760103432521
	.quad	0x3fe89934cfa331d5              # double 0.76870194009966986
	.quad	0x3faa657edc6957d0              # double 0.05155559959955236
	.quad	0x3fc114e690e7ddcc              # double 0.13345033717608457
	.quad	0x3fe6876d3258cb75              # double 0.70403156121606847
	.quad	0x3fe6de0d2e9ab7ae              # double 0.71460589506545147
	.quad	0x3fc9c457d2eddd60              # double 0.20130441474223471
	.quad	0x3fec60c411b6c0ac              # double 0.88681224307767569
	.quad	0x3fe0efe46709769b              # double 0.52928371548087527
	.quad	0x3f93228f30e85a40              # double 0.018686520919880545
	.quad	0x3fd70a429235ef04              # double 0.36000122335802609
	.quad	0x3fd4ede158f5f952              # double 0.32701905906278228
	.quad	0x3fd63f6e2db04dc0              # double 0.34762148343835619
	.quad	0x3fca015c823d8dec              # double 0.20316654548069779
	.quad	0x3fe82fd438e22282              # double 0.75583850011851461
	.quad	0x3f9a603b19421740              # double 0.025757716576229273
	.quad	0x3fdfcdb243d530b4              # double 0.49692970871252418
	.quad	0x3fee90d769a32caf              # double 0.95518084175400542
	.quad	0x3fe61a8ca7c3f653              # double 0.69074089781470105
	.quad	0x3fd561fda170533a              # double 0.33410588040833356
	.quad	0x3fe0896544f335fe              # double 0.51677192179494091
	.quad	0x3fd6f4e3a604c21c              # double 0.35869685375931382
	.quad	0x3fc1ad2b10361a98              # double 0.13809717456407067
	.quad	0x3fdfdc103138a24e              # double 0.49780659491310508
	.quad	0x3fbec665aab4e408              # double 0.12021480004922591
	.quad	0x3fe448c422b18d8a              # double 0.63388258720481017
	.quad	0x3fde8ade251a2856              # double 0.47722581504115646
	.quad	0x3fe1de50a9aba437              # double 0.55838807238354249
	.quad	0x3fc6ed6b2c04f4f8              # double 0.17912044190772014
	.quad	0x3fee35aaea923196              # double 0.94405122580205858
	.quad	0x3fc28b0d3433763c              # double 0.14486851738813467
	.quad	0x3fca5ce53b9976a8              # double 0.20595994386797156
	.quad	0x3fc1c9bab91f56b0              # double 0.13896879233532422
	.quad	0x3fe2827852d6878c              # double 0.57842651538179402
	.quad	0x3fea1a26da42a3d6              # double 0.81569235447852395
	.quad	0x3fb3b5153f5e1e18              # double 0.07698185727178275
	.quad	0x3f5ac45e5bdfd400              # double 0.0016337319825627805
	.quad	0x3fe6a86dac5984cb              # double 0.70806010877654424
	.quad	0x3fecb1000f38fc28              # double 0.89660647366679758
	.quad	0x3fed36ca08fa96b0              # double 0.91293813470539042
	.quad	0x3fccf60ef9fb5710              # double 0.22625910955564921
	.quad	0x3fce52a320a88534              # double 0.23689688772814466
	.quad	0x3fe0d1a3bb0bd1e5              # double 0.52559076816993111
	.quad	0x3fe9204a2b2917b2              # double 0.78519161634243617
	.quad	0x3feba7c057c02d66              # double 0.86422745837027715
	.quad	0x3fe8c89a62581116              # double 0.77448767860235779
	.quad	0x3fcb3fef043a33b8              # double 0.21288860041059166
	.quad	0x3fbb732024dd8800              # double 0.10722542667420498
	.quad	0x3fb18c495b80bfb8              # double 0.06854685291250362
	.quad	0x3fc0c1be743aad58              # double 0.13091259646658204
	.quad	0x3feb3cdfecac84d0              # double 0.85118099427577398
	.quad	0x3fc0eb621c8313bc              # double 0.13218332664669485
	.quad	0x3fa80fb20574abb0              # double 0.04699474636648604
	.quad	0x3fc43b2fded384d0              # double 0.15805624370754012
	.quad	0x3fe405bb4565020c              # double 0.62569964936852918
	.quad	0x3fd74dffef617038              # double 0.3641357267094949
	.quad	0x3fc95b45196dce08              # double 0.19809783689161997
	.quad	0x3fe7c5d4c4eae89d              # double 0.74289930782767366
	.quad	0x3fe43f51147121c3              # double 0.63272909157336021
	.quad	0x3feb906b2b9a6a86              # double 0.8613792277931942
	.quad	0x3fb795e14511c1c8              # double 0.092130736696851234
	.quad	0x3fa5c7a9b6657890              # double 0.042538932337934487
	.quad	0x3fc12a49a9422038              # double 0.13410301937642699
	.quad	0x3fe113cbf8fc46c7              # double 0.53366659765216518
	.quad	0x3fefc4bdfa77685d              # double 0.99276637000299283
	.quad	0x3fd7876a2ce67a8a              # double 0.36764006027980456
	.quad	0x3fe7c2f8cc49b0cd              # double 0.7425502767560147
	.quad	0x3f99cb64b51b06c0              # double 0.02518994670277297
	.quad	0x3fe8835be1945f65              # double 0.76603502329360806
	.quad	0x3fd52c157f738658              # double 0.33081567236340481
	.quad	0x3fe289d6e4ff7657              # double 0.57932610250618211
	.quad	0x3fe291d02957da23              # double 0.5802994544490655
	.quad	0x3fcf0c18c508e7f8              # double 0.24255666371192297
	.quad	0x3fd59c869933207e              # double 0.33767857514295219
	.quad	0x3fe2bba735f395e2              # double 0.58540688073543046
	.quad	0x3fc03639de8a6218              # double 0.12665484777677771
	.quad	0x3fed7c5f82318bb4              # double 0.92143226078439122
	.quad	0x3fa9eb1e02e914d0              # double 0.050621927123339128
	.quad	0x3fe991f1b12dd426              # double 0.79906544308926608
	.quad	0x3fd7bd85963243da              # double 0.37094249408351987
	.quad	0x3fe4331cd140922c              # double 0.63123932714058162
	.quad	0x3fea8f260667661a              # double 0.82997418642770815
	.quad	0x3fbea616d4bb51f8              # double 0.11972181981702323
	.quad	0x3fe4e998c456cfca              # double 0.6535152277706342
	.quad	0x3fe02a3cbf88cd8c              # double 0.50515592011508792
	.quad	0x3fe0d8768b3ac229              # double 0.52642371361986762
	.quad	0x3fedbcc851ee3f11              # double 0.92929473878936808
	.quad	0x3fda46054cdea814              # double 0.41052372462093101
	.quad	0x3feb57f9db19e078              # double 0.85448925774745899
	.quad	0x3fe5312d76b4a824              # double 0.66225312409119796
	.quad	0x3fe85387e63d6a14              # double 0.76019663780909008
	.quad	0x3fdb67a6021112bc              # double 0.42820120050263788
	.quad	0x3fde50e0a9954b30              # double 0.47368637619836118
	.quad	0x3fec5f9d5e66936e              # double 0.8866717189563198
	.quad	0x3fd4c9abd1b9df92              # double 0.32480903130589767
	.quad	0x3fb4e5b388c34d18              # double 0.081629963769320191
	.quad	0x3fede02e230adb8a              # double 0.93361574978085682
	.quad	0x3fe35ab2cc5c24cc              # double 0.60482158578920453
	.quad	0x3fe750889391c301              # double 0.72858074972290876
	.quad	0x3fb674863d2d57d8              # double 0.087715520797558511
	.quad	0x3fc99b3ff1d68894              # double 0.20005034740922112
	.quad	0x3fdbde824f3078c6              # double 0.43545587285360587
	.quad	0x3fd269c9c429862a              # double 0.28770679623093776
	.quad	0x3fd036923622d868              # double 0.25333075796823445
	.quad	0x3fc432f9c4b42600              # double 0.15780565361664856
	.quad	0x3fe822d65bb9eabb              # double 0.75425260463028765
	.quad	0x3fe3a8ec566f2804              # double 0.61437050706558738
	.quad	0x3fe9ba51102ff9b6              # double 0.80399373208620406
	.quad	0x3fb8c95845baa748              # double 0.096822278045377463
	.quad	0x3fa725481e6b9f70              # double 0.045206311906269003
	.quad	0x3fea9708d0be943f              # double 0.83093682070160202
	.quad	0x3fe826651ecf7493              # double 0.75468688981676946
	.quad	0x3fd6f42e38967ade              # double 0.35865359808114572
	.quad	0x3fd9161ed6ef2c5c              # double 0.39197512616801133
	.quad	0x3fe1aadd3c958f6c              # double 0.55210744698386582
	.quad	0x3fe0f3783414808e              # double 0.52972040340320503
	.quad	0x3fbf188d6a87e2c8              # double 0.12146838999604903
	.quad	0x3fc4b309d2c241c0              # double 0.16171381751020242
	.quad	0x3f97b4f83a06c860              # double 0.023151281873375118
	.quad	0x3fedbe8cbca48ac4              # double 0.92951046795163749
	.quad	0x3fe02cfe7d9baca7              # double 0.50549244435150775
	.quad	0x3fe6bd7d11a2f53b              # double 0.71063092655791793
	.quad	0x3fd7a959e415a97c              # double 0.36971137308014312
	.quad	0x3feee0bf4a5e31ec              # double 0.96493496441831672
	.quad	0x3fec5aa40f3936be              # double 0.886064557774908
	.quad	0x3feab342997c855c              # double 0.83438234308065828
	.quad	0x3fcaddee47ebef6c              # double 0.20989779006765319
	.quad	0x3fd6908bf7b29640              # double 0.35257243336886646
	.quad	0x3fea62066176e116              # double 0.82446593318948902
	.quad	0x3fe6053c1d4a0cc6              # double 0.68813901634748542
	.quad	0x3fbd4f11f46b48a0              # double 0.11448776452314968
	.quad	0x3feb989217d9fedb              # double 0.86237435015206232
	.quad	0x3fe79f0df7c97d59              # double 0.73816584010993858
	.quad	0x3fe42aad4f174c03              # double 0.63020959327184334
	.quad	0x3fcad11d44a27078              # double 0.20950666285796493
	.quad	0x3fe5e5ec1a6bd9ca              # double 0.68431668434532722
	.quad	0x3fc19b87c0aec564              # double 0.13755890758833822
	.quad	0x3fe725d521c524ad              # double 0.72336823077889323
	.quad	0x3fdaeb05b9562ecc              # double 0.42059462641985301
	.quad	0x3fe7f9de29aa318c              # double 0.74925144326839321
	.quad	0x3fed55880276f35f              # double 0.91669083100678594
	.quad	0x3fdbb7fd179e9456              # double 0.43310477549159054
	.quad	0x3fe9307a3b6e1316              # double 0.78716765983026238
	.quad	0x3fdfc2737a040b16              # double 0.49624335208516024
	.quad	0x3feac14dc9eea030              # double 0.83609666290158735
	.quad	0x3fe25f5339d44007              # double 0.57413636488672715
	.quad	0x3fe1675d883c3aec              # double 0.5438678418011853
	.quad	0x3fe3ff7d4636c79b              # double 0.62493766511601068
	.quad	0x3fe11cd62d883236              # double 0.5347700967118445
	.quad	0x3f422c585478fc00              # double 5.5460274683827304E-4
	.quad	0x3febc3cf7f7e229f              # double 0.86765265370293665
	.quad	0x3fdc1f7142c0dd52              # double 0.43941909331211548
	.quad	0x3fe00a80f94775d8              # double 0.50128220259983447
	.quad	0x3f9ecfd101cc06e0              # double 0.030089631781271886
	.quad	0x3fc78a7dbe8b9c6c              # double 0.18391391567203941
	.quad	0x3fd107bf9c31db06              # double 0.26609792951005351
	.quad	0x3fe9130cdfac305e              # double 0.7835754746061061
	.quad	0x3feafead7dea19b4              # double 0.8435885867373174
	.quad	0x3fdd0ec62a42c282              # double 0.45402673842458097
	.quad	0x3fd4f42c55bc8c2c              # double 0.32740314839083129
	.quad	0x3fc29ce191590770              # double 0.14541263196047849
	.quad	0x3fed8ce3e7593eca              # double 0.92344851670528638
	.quad	0x3f7cbd7256764b80              # double 0.0070166078870838033
	.quad	0x3fb3a818a601dcb0              # double 0.07678369572555499
	.quad	0x3fe48b4e988344e8              # double 0.64200525081301141
	.quad	0x3fefb2c7bcd10ba7              # double 0.99057375791777679
	.quad	0x3feb3262212a3ddc              # double 0.84990030744114219
	.quad	0x3fe198f3b219edac              # double 0.5499208906689339
	.quad	0x3feac93a41ca5e28              # double 0.83706391191203
	.quad	0x3fe064bc32de61ad              # double 0.51229677138603835
	.quad	0x3fdee0757a14ae1e              # double 0.48244988367034292
	.quad	0x3fc53a93ba83d5a0              # double 0.16585013014961891
	.quad	0x3fd8e7c3b5561818              # double 0.38914578159926938
	.quad	0x3fd35a3d382740e4              # double 0.3023827598926927
	.quad	0x3fdff0f09fd0b59e              # double 0.49908080679855427
	.quad	0x3fd17eac4922c3e8              # double 0.27335650579612869
	.quad	0x3fc7263eeb36d55c              # double 0.1808546684748461
	.quad	0x3fda4f3b4a0a0688              # double 0.41108591299426012
	.quad	0x3fddf56fb4f10b38              # double 0.46810524625850602
	.quad	0x3fedef5515a2f94b              # double 0.93546537614728587
	.quad	0x3fdb42aa2290bee2              # double 0.42594388366249636
	.quad	0x3f8acd70dc404a00              # double 0.013087159844904939
	.quad	0x3fe90fd06c73d7de              # double 0.78318043882495281
	.quad	0x3fcde1f7eb0038ac              # double 0.23345850920344924
	.quad	0x3fdc98025cc961b0              # double 0.44677790700145703
	.quad	0x3fcbd4fea106d8e4              # double 0.21743758070596819
	.quad	0x3fe09869d7482fa3              # double 0.51860515639554128
	.quad	0x3fe037a9bb261033              # double 0.50679480125882603
	.quad	0x3fbacb940efcdf28              # double 0.10466885915672874
	.quad	0x3fec2a2a430b9b82              # double 0.88014710516732486
	.quad	0x3fd564551bc8055e              # double 0.33424880707760518
	.quad	0x3fe9099a4442f52f              # double 0.78242219288191517
	.quad	0x3fda11944c026650              # double 0.40732295439520261
	.quad	0x3fd3d8189ed5ab1e              # double 0.31006446372218643
	.quad	0x3fccd702d9e6ac18              # double 0.22531161918354381
	.quad	0x3fda779ef1a010c0              # double 0.41355107876030317
	.quad	0x3fe85c611bbef40b              # double 0.7612767736351328
	.quad	0x3fcce80d1432a838              # double 0.22583163725113464
	.quad	0x3fedfa61af89d268              # double 0.93681415829503311
	.quad	0x3fe6c10f70175ad8              # double 0.71106693165605872
	.quad	0x3fe513e393f7607f              # double 0.65867785358115316
	.quad	0x3fe5b6dd825a6da4              # double 0.67857242068878465
	.quad	0x3feab70d86621ba5              # double 0.83484531637883619
	.quad	0x3fefd8a57117aa46              # double 0.99519607628219187
	.quad	0x3fd8882ebf7a3e0a              # double 0.38331192683196547
	.quad	0x3fbc38523a5acc20              # double 0.11023439335512863
	.quad	0x3fe64890d0942410              # double 0.69635811555883897
	.quad	0x3fe4c557c118cbe6              # double 0.6490896960661956
	.quad	0x3fef3d45650207c0              # double 0.97622937896834827
	.quad	0x3fb759f701a41700              # double 0.091216504955891509
	.quad	0x3fc4f21ac398cca4              # double 0.16363844442966979
	.quad	0x3f70a2d0370c0780              # double 0.0040615209006790165
	.quad	0x3fc5514f83bc9fe8              # double 0.16654390270673436
	.quad	0x3fe851c3f716637b              # double 0.75998113879459994
	.quad	0x3f8f9a780212a000              # double 0.015431344569449834
	.quad	0x3fe728837492210d              # double 0.72369549529779109
	.quad	0x3fe4c653570b6759              # double 0.64920966149223169
	.quad	0x3fe1b89cd11022ef              # double 0.55378571350692407
	.quad	0x3faa1578e24d6ff0              # double 0.050945069908919893
	.quad	0x3fd7249b6b0deb12              # double 0.3616093202069105
	.quad	0x3fe62258cc15400b              # double 0.69169273242914764
	.quad	0x3fad355140b72180              # double 0.057047404432128523
	.quad	0x3fc13ddb4abf251c              # double 0.13470021390666254
	.quad	0x3fe6700fc6a03f1a              # double 0.70117939752705927
	.quad	0x3fe79b7f963f10af              # double 0.73773173661222369
	.quad	0x3fc62e10472efc0c              # double 0.17328074908979862
	.quad	0x3f836190d25c2ec0              # double 0.0094634355732731156
	.quad	0x3fc2042fefbfbadc              # double 0.14075278479091125
	.quad	0x3fddb367c17d55f2              # double 0.46407503028362307
	.quad	0x3fe0bbe135771b3f              # double 0.52293453638490195
	.quad	0x3fe519fdef99b4cd              # double 0.65942284390407624
	.quad	0x3fe94a921142f671              # double 0.79035285350228268
	.quad	0x3fe2dbc86d1e2287              # double 0.58932896911672195
	.quad	0x3fda8f97730e6222              # double 0.41501413570361667
	.quad	0x3fd0e4dcfb5d7ae6              # double 0.26396870181444709
	.quad	0x3feac014f6f063e0              # double 0.83594749670293921
	.quad	0x3fe13bdd9f0cd94f              # double 0.53855782570352939
	.quad	0x3fe177fe6707a699              # double 0.54589767573380066
	.quad	0x3fae128b0afe6c20              # double 0.058735222904225504
	.quad	0x3fe83dc912718939              # double 0.75754216768499483
	.quad	0x3fe8f64c0fc741c1              # double 0.78006556588848508
	.quad	0x3feca56b3edbeea5              # double 0.89519274022264439
	.quad	0x3fa38f7c2121a970              # double 0.038204077762958089
	.quad	0x3fd56d1f4af128c2              # double 0.33478529280240477
	.quad	0x3fe14a882c81d455              # double 0.54034813587953556
	.quad	0x3fb0e9afd6c0b408              # double 0.066065778665418518
	.quad	0x3fe29b4112e4ab77              # double 0.58145192804418755
	.quad	0x3fc27d94e40261d0              # double 0.144457446415585
	.quad	0x3fd76e828c26170c              # double 0.36611999212651436
	.quad	0x3fd7b4d533f3eb9c              # double 0.370412159667177
	.quad	0x3fc81b1496e5979c              # double 0.18832642906198493
	.quad	0x3fd3d3fe17fed280              # double 0.30981399863529901
	.quad	0x3fd11a393d8fbbf6              # double 0.2672255612550879
	.quad	0x3fdbcccef68d3ec4              # double 0.43437551572149524
	.quad	0x3fe2f1b865aadedd              # double 0.5920068727200164
	.quad	0x3fe58482122e1ec8              # double 0.672425303943748
	.quad	0x3fbe9a79960c6620              # double 0.11954460061351613
	.quad	0x3fe7afe7b731ec37              # double 0.74022279529834278
	.quad	0x3fb372565151e098              # double 0.075963396886324808
	.quad	0x3fc7e894bd005fa8              # double 0.1867853091105165
	.quad	0x3fee8d8b1818c09d              # double 0.9547782393110712
	.quad	0x3fe4fc6afd44fb8d              # double 0.65581273523990691
	.quad	0x3fdda139ba9cb74e              # double 0.46296542381138728
	.quad	0x3fb507b527f1b6a0              # double 0.082148859264373986
	.quad	0x3fd665751231b91e              # double 0.34994246269970286
	.quad	0x3fd3ab2b2e86d8ea              # double 0.30732230704906149
	.quad	0x3fd2b687ce5441b2              # double 0.29239077710465289
	.quad	0x3fd03b8ca0b4582a              # double 0.25363460248752523
	.quad	0x3fdb90e453139364              # double 0.43071849930702499
	.quad	0x3fdcc6b0068a4fba              # double 0.44962692869853138
	.quad	0x3fb373d5138e1df0              # double 0.075986211084561494
	.quad	0x3fea7ce0fa952788              # double 0.82774399701996604
	.quad	0x3f613a0edbc58300              # double 0.0021028795437562087
	.quad	0x3fe2dadab0763136              # double 0.5892156073109962
	.quad	0x3fe4b7d78e6e4447              # double 0.64744165247442076
	.quad	0x3fe643b6344f6e73              # double 0.69576559273578054
	.quad	0x3fdf6e5e8b1d0006              # double 0.49111140809327514
	.quad	0x3fe6dd3e7ca23a8a              # double 0.71450733511467601
	.quad	0x3feb2795f05a78b6              # double 0.84858223861717508
	.quad	0x3fe3fb71e09dd4e0              # double 0.624443949417266
	.quad	0x3fba6f89ebf73d00              # double 0.10326444636233489
	.quad	0x3fd2adcc0d3d75ce              # double 0.291857731752171
	.quad	0x3fe6b26c189cfca7              # double 0.70928005988379972
	.quad	0x3fc5a58398c3e79c              # double 0.16911358794442044
	.quad	0x3fe1cccd22e2d475              # double 0.55625016034777153
	.quad	0x3fd4b9039bab8882              # double 0.32379236414102064
	.quad	0x3fe8aa736e4d2ab1              # double 0.77080699485062187
	.quad	0x3fee3c5d060319d0              # double 0.94486857580414529
	.quad	0x3fb2dbac40beadd8              # double 0.073664441878171671
	.quad	0x3fe9eb2a6d3e4768              # double 0.80995675407960466
	.quad	0x3f9f208947aebfe0              # double 0.030397553444060921
	.quad	0x3fd5498b0f03ff96              # double 0.33261372057312977
	.quad	0x3fda401b1555b890              # double 0.4101627071712608
	.quad	0x3fe938ca9dd90954              # double 0.78818255262039338
	.quad	0x3feb70b6666a2499              # double 0.85750885012488987
	.quad	0x3fe228523d8d2da4              # double 0.56742202779553397
	.quad	0x3feed4ed5c6b170a              # double 0.96349208879903014
	.quad	0x3fd567ff994e6eb4              # double 0.33447256060911035
	.quad	0x3fe064df3de2dfbf              # double 0.51231348120835907
	.quad	0x3fbdd5e6836829a0              # double 0.11654511173416049
	.quad	0x3fab7820077daac0              # double 0.053650856890120391
	.quad	0x3fef65aafbe97e7a              # double 0.98116063310221979
	.quad	0x3fea90fff03fbb3d              # double 0.83020016597388457
	.quad	0x3fe88a97490dbb5a              # double 0.76691784160889687
	.quad	0x3fee8e8754ae3934              # double 0.95489851512119239
	.quad	0x3fec9a8b9f48d113              # double 0.89386540518038016
	.quad	0x3fc4e5e243bed708              # double 0.1632654982365056
	.quad	0x3fd99fa1260eac32              # double 0.40036801067862193
	.quad	0x3fef61df0714d5e6              # double 0.98069716818889385
	.quad	0x3fa712ca9275fca0              # double 0.045065241220975993
	.quad	0x3fe731c9e860f5a8              # double 0.72482772242044735
	.quad	0x3fedc33756bac17c              # double 0.93008009852751127
	.quad	0x3fe42aba3fb1775f              # double 0.63021576347430741
	.quad	0x3fe3745cc092c533              # double 0.60795438396431789
	.quad	0x3fe1d282d77af979              # double 0.55694715581903076
	.quad	0x3fd1c706fba6f0be              # double 0.27777266097451647
	.quad	0x3fc4ef3c6811fd60              # double 0.16355090219074508
	.quad	0x3fe098098b9039a9              # double 0.51855923899147627
	.quad	0x3fc97c508662970c              # double 0.19910627900861078
	.quad	0x3feb39926c1f139e              # double 0.85077782742938601
	.quad	0x3fbd17f163f22190              # double 0.11364659013827905
	.quad	0x3fd354d1140359f4              # double 0.30205180124667597
	.quad	0x3fd66b91de601a42              # double 0.3503155395159504
	.quad	0x3feed8ad0733537d              # double 0.9639496937403319
	.quad	0x3fc6015ed2b2d898              # double 0.17191682136553221
	.quad	0x3fae9c8354409700              # double 0.059787849459366882
	.quad	0x3fef7af628a7656e              # double 0.98375995578969166
	.quad	0x3feaf2f9dcd2f4f1              # double 0.84216015939423816
	.quad	0x3fcc4fc72b52db38              # double 0.22118463149464573
	.quad	0x3fee2ab3dc743f55              # double 0.94271271760406228
	.quad	0x3fcdf212cf914a30              # double 0.23394999632962898
	.quad	0x3fd479ae502b5432              # double 0.31992681340244922
	.quad	0x3fe9a667c24569ef              # double 0.80156314796050576
	.quad	0x3fe531050c160ca1              # double 0.66223385201046281
	.quad	0x3fe1880a874cc7c5              # double 0.54785658288732775
	.quad	0x3fd192ec8ae2d246              # double 0.27459252894485464
	.quad	0x3fea0cec220804db              # double 0.81407744070761667
	.quad	0x3fcb257c827d4994              # double 0.21208149310639313
	.quad	0x3fe7df2d7eafc5ba              # double 0.74599337333182025
	.quad	0x3f9d376b447e61c0              # double 0.028531719260713961
	.quad	0x3fa599d4b6c6d210              # double 0.042189261733629135
	.quad	0x3fda75e1ec0e371a              # double 0.4134449773053902
	.quad	0x3fd28beaa527959e              # double 0.28978983047849194
	.quad	0x3fe60ed6e2a48f13              # double 0.68931144968198266
	.quad	0x3fd123791aa037a8              # double 0.26779010391407576
	.quad	0x3fb2025626f17ae8              # double 0.070348152644765016
	.quad	0x3fda202185301216              # double 0.40821111685389277
	.quad	0x3fb48a222816ae58              # double 0.080232748782401386
	.quad	0x3fef046fa1ceafda              # double 0.96929151156427484
	.quad	0x3fe08782385c26da              # double 0.51654158599668709
	.quad	0x3fc32837f1f283fc              # double 0.14966487230142878
	.quad	0x3fd9bfc4aa480e4a              # double 0.40232960347222912
	.quad	0x3fd5247b1f1fd4c2              # double 0.33035162009703012
	.quad	0x3fe1bb39e41b9fdd              # double 0.55410475303960605
	.quad	0x3fd414b70c35ae2c              # double 0.31376434509613449
	.quad	0x3fea546afca9f801              # double 0.82280492161203267
	.quad	0x3fd44e9ac890ee64              # double 0.31729764544045325
	.quad	0x3fd21e881f2d1e9e              # double 0.28311350864940177
	.quad	0x3fe46f7abf90bb34              # double 0.63860833563908281
	.quad	0x3fd5837c1e948d16              # double 0.33615019785266165
	.quad	0x3fb82725f0a9a9c0              # double 0.094347354178956344
	.quad	0x3fd8b2358561cf12              # double 0.3858770182189214
	.quad	0x3fe8a48b43f807ef              # double 0.77008593821687821
	.quad	0x3fc28bcc8e2dbd44              # double 0.14489132826154549
	.quad	0x3fdcef678176a516              # double 0.4521120800296371
	.quad	0x3fd8b42a1f9e6e48              # double 0.38599637115268992
	.quad	0x3fb9ad9680a4fd00              # double 0.10030499115690716
	.quad	0x3fed255c1b8e55b2              # double 0.91081052190809531
	.quad	0x3fd0ed6cddc13e6a              # double 0.26449128776309883
	.quad	0x3fbfe30af9f76520              # double 0.12455814936346998
	.quad	0x3fc9f0d3140bd8c8              # double 0.20266188124487017
	.quad	0x3fd092efe6856ccc              # double 0.25896832954249471
	.quad	0x3fd4914978ec781c              # double 0.32136761483150322
	.quad	0x3fb035d809498d58              # double 0.063321592585955044
	.quad	0x3fc521e3f79c5d70              # double 0.16509675588961725
	.quad	0x3fefe878475ab8db              # double 0.99712766586688006
	.quad	0x3fcf361feeefcc98              # double 0.24383925597030465
	.quad	0x3fe19c3c749d610e              # double 0.5503217961914133
	.quad	0x3fc79ca93e4c4138              # double 0.1844684175671405
	.quad	0x3fe028297732ea71              # double 0.50490258484872019
	.quad	0x3fda7cff8d1e39de              # double 0.41387928753911563
	.quad	0x3fe0463103d26348              # double 0.50856829401446024
	.quad	0x3fdabce98821fb3a              # double 0.41778028768742426
	.quad	0x3fec7641acffac55              # double 0.88943561352551603
	.quad	0x3fbf9d9aaa8f0fb0              # double 0.12349859870943081
	.quad	0x3feab526bf1d35fe              # double 0.83461320235227254
	.quad	0x3fe69dd7c1fa5e7e              # double 0.70676792036370251
	.quad	0x3fecfdfddfc0201f              # double 0.90600484563129047
	.quad	0x3fe3034ec56b3ed6              # double 0.59415377195724761
	.quad	0x3fe60e3b8101b208              # double 0.68923735806089415
	.quad	0x3fd174c9584d2a8e              # double 0.27275308249651509
	.quad	0x3fd4e7631fcb884e              # double 0.32662275414452757
	.quad	0x3fe4869bdb12f9ca              # double 0.64143173969187584
	.quad	0x3fc5e2eff79bcc18              # double 0.17098807897818413
	.quad	0x3fef6069fa570367              # double 0.98051928419600364
	.quad	0x3fa7d468c0cef1e0              # double 0.046542428528002722
	.quad	0x3fe6b0b8340bdee8              # double 0.70907220998102805
	.quad	0x3fecbe7648db875c              # double 0.89824976186740057
	.quad	0x3fcebb86335fd9d4              # double 0.24009778507725221
	.quad	0x3fea418dd9e6add4              # double 0.82050221022421476
	.quad	0x3fd827cfa06a9910              # double 0.37742987313903686
	.quad	0x3fed439343f59007              # double 0.91449893258368398
	.quad	0x3fe0708514a3d20e              # double 0.5137353327868952
	.quad	0x3feb4a920c20b40c              # double 0.85285284393978733
	.quad	0x3feb65df52a5c129              # double 0.85618559019170448
	.quad	0x3fe6a482081a2ee9              # double 0.70758153517223576
	.quad	0x3febb53224c9b9a7              # double 0.86586863694337957
	.quad	0x3fd6d3faaae56fbc              # double 0.35668818177304806
	.quad	0x3fda8adeb127f502              # double 0.4147259454765192
	.quad	0x3fef75d9b1dfad4f              # double 0.98313603154148576
	.quad	0x3fe13059eff2f7f7              # double 0.53715226044710007
	.quad	0x3fd76b2b57290cae              # double 0.36591609489205268
	.quad	0x3feb1c6e0d966325              # double 0.84722044614600078
	.quad	0x3fdd801a967f1738              # double 0.4609438390437961
	.quad	0x3fef1b830df0e2ca              # double 0.97210839007228711
	.quad	0x3fe0f6836c11a20a              # double 0.53009196383669743
	.quad	0x3f469ab889c19c00              # double 6.8983088159491057E-4
	.quad	0x3fd27abbf2399648              # double 0.28874109892635547
	.quad	0x3fccae6bae0ba5d4              # double 0.22407289503398309
	.quad	0x3fcaa88d428f8764              # double 0.20826879262954912
	.quad	0x3fb4578b01de0400              # double 0.079460800128813958
	.quad	0x3fdacd085c252316              # double 0.41876420019666349
	.quad	0x3fea3dfed5e7bf60              # double 0.82006780413028579
	.quad	0x3fe82fea01382480              # double 0.7558488868536557
	.quad	0x3fd092de84ebcd1c              # double 0.2589641855294802
	.quad	0x3fe000326333bd5a              # double 0.50002402663623546
	.quad	0x3fe9d1fff7234c5b              # double 0.80688474911802233
	.quad	0x3fe6480d3abe161a              # double 0.69629537079953541
	.quad	0x3fe3ac9351ed1107              # double 0.61481634141139885
	.quad	0x3fe0990d8f9eb1e3              # double 0.51868322420847013
	.quad	0x3fe7509360660ad0              # double 0.72858589961864517
	.quad	0x3fea448967031c61              # double 0.82086629981575865
	.quad	0x3fcea11930672cfc              # double 0.2392913328497811
	.quad	0x3fef54cddca44127              # double 0.97910206884447326
	.quad	0x3f71f1862d83e200              # double 0.0043807259864867554
	.quad	0x3f9e2834ae9097e0              # double 0.02945024791201678
	.quad	0x3fd0b0161f152984              # double 0.26074746165672757
	.quad	0x3fea96739e93377c              # double 0.83086567851726966
	.quad	0x3fe4b3b56ba8ab07              # double 0.6469370939933875
	.quad	0x3fda9b2f6b41d61c              # double 0.41572175478299456
	.quad	0x3faae2de00e04960              # double 0.052512109381626315
	.quad	0x3fe157c73cd300ba              # double 0.54196512107593908
	.quad	0x3fedb6a6c2d9baf5              # double 0.92854631478061711
	.quad	0x3fe31aed8624fff1              # double 0.5970370883951529
	.quad	0x3feab1a123e22fbf              # double 0.83418328293327437
	.quad	0x3fd29d9a393a1a30              # double 0.29086928928919331
	.quad	0x3fd43262459ad8fc              # double 0.31557518765784187
	.quad	0x3feeb65cd7364199              # double 0.95976106675702788
	.quad	0x3fe65d21e932f94e              # double 0.69886870905592402
	.quad	0x3feb74d34f78a6d3              # double 0.85801091691720399
	.quad	0x3faf1ad1df9fa360              # double 0.060751493976403337
	.quad	0x3f90ccd102e2a860              # double 0.016406312752828334
	.quad	0x3fe50e635eedfabb              # double 0.65800636807383428
	.quad	0x3fc754ceb40d440c              # double 0.18227561751930954
	.quad	0x3fe72dd08d19b9a1              # double 0.72434260901154712
	.quad	0x3fb97d95d979ba50              # double 0.099572530359844479
	.quad	0x3f7468301fc33d80              # double 0.0049821739050480707
	.quad	0x3f9f5716ff283e80              # double 0.030605658839759631
	.quad	0x3fef3288e06fb84f              # double 0.97491878352389871
	.quad	0x3fd5c099196e62dc              # double 0.33988025172724945
	.quad	0x3fa7d73d1a4c3240              # double 0.046564015827332828
	.quad	0x3fe97231433f9dbc              # double 0.79518950590584536
	.quad	0x3fe300f09d79d639              # double 0.59386473423973662
	.quad	0x3f91d292a3218a80              # double 0.017404833990790625
	.quad	0x3fe6d0f3abdde1c3              # double 0.71300681655616704
	.quad	0x3fed9bd1ff203efd              # double 0.92527103261269839
	.quad	0x3fea7d2af168f7d2              # double 0.82777926588436856
	.quad	0x3fe8bd39c6f4bb75              # double 0.77309883936491863
	.quad	0x3fd51b2693c276ba              # double 0.32978214673662942
	.quad	0x3fef58888e9421a6              # double 0.97955730292692489
	.quad	0x3fe8774212221cbe              # double 0.76455787221575355
	.quad	0x3fceac84c2bc82f8              # double 0.23963984974491104
	.quad	0x3fe02e002c15a2a9              # double 0.50561531648880476
	.quad	0x3fdcb336665d6bfa              # double 0.44843826290679056
	.quad	0x3fe079a8ab893f27              # double 0.51485093596599973
	.quad	0x3fbdfcd27a473a28              # double 0.11713901028927209
	.quad	0x3feecf2913c3c965              # double 0.96278814182577987
	.quad	0x3fea978ce51ceab0              # double 0.83099980114578464
	.quad	0x3fd8199390bdfcb0              # double 0.37656106123899757
	.quad	0x3fbf8daa96215bc8              # double 0.12325540700236026
	.quad	0x3fe5dd81394e31eb              # double 0.68328915779562516
	.quad	0x3fcf103ca881b00c              # double 0.24268301227436984
	.quad	0x3feb7ad3a1aaff76              # double 0.85874349189542332
	.quad	0x3fe8be32e4eda74a              # double 0.77321762764516078
	.quad	0x3fe8df31979dc5e4              # double 0.77724532711561922
	.quad	0x3fe6b758fe97e108              # double 0.70988130307435515
	.quad	0x3fe14e428289d243              # double 0.540803198774093
	.quad	0x3fc7f7ce6be28ec0              # double 0.18724994914838611
	.quad	0x3faa587660d882e0              # double 0.051456164667120552
	.quad	0x3fd6dac233cfdc92              # double 0.35710196552049311
	.quad	0x3fd655ad1a276f0a              # double 0.34897925905328064
	.quad	0x3fe4ad717f53da56              # double 0.64617228382742087
	.quad	0x3f9913d9bfb22100              # double 0.024489786458190999
	.quad	0x3fa181a6d0efc970              # double 0.034192288403476989
	.quad	0x3fe166e331c4e4b6              # double 0.54380950661211247
	.quad	0x3fe7eaa0efeaebc5              # double 0.74739119395177822
	.quad	0x3fce95c0809b8334              # double 0.23894506721173914
	.quad	0x3feac601f47f2264              # double 0.83667085412259867
	.quad	0x3fd8a4aaf22ef9f8              # double 0.38505052233440962
	.quad	0x3fdf6f5b9204e4ba              # double 0.49117173442534645
	.quad	0x3fe3fc9fb254654f              # double 0.62458786802305066
	.quad	0x3fd4749bb01c1d8e              # double 0.31961719701981728
	.quad	0x3fd8711436d9dcd0              # double 0.3819017921118304
	.quad	0x3fd914555b676dbc              # double 0.39186605383084916
	.quad	0x3fdf5cf05f9e5800              # double 0.49004754388568017
	.quad	0x3fc519634389f788              # double 0.16483727262305714
	.quad	0x3fe7dd18db9e2ad0              # double 0.74573939222440266
	.quad	0x3fce7fb5789b4d3c              # double 0.23827236546513031
	.quad	0x3feef8f982d26347              # double 0.9678924136270347
	.quad	0x3fe1e17e00d84aba              # double 0.5587759033681643
	.quad	0x3fe73a3c37be9e6d              # double 0.72585879218691007
	.quad	0x3fde5d06e3b4846c              # double 0.47442791210966706
	.quad	0x3feffdcd420ab6c7              # double 0.99973166369246591
	.quad	0x3fee601aaac8015d              # double 0.94923146587101892
	.quad	0x3fe08e3cc101bc4f              # double 0.517362954107634
	.quad	0x3fb74943998ef078              # double 0.090961670865853494
	.quad	0x3fde40e597308fe2              # double 0.47271098866099071
	.quad	0x3fd5b8d4dcc91dd0              # double 0.33940621911139335
	.quad	0x3fb7aa978d467b80              # double 0.092446777335210228
	.quad	0x3fd1fe81bd28702a              # double 0.2811588618512838
	.quad	0x3fd306a091f9667a              # double 0.29727949385924257
	.quad	0x3fd0b1495ce5f822              # double 0.2608207137308246
	.quad	0x3fea3940f766c68f              # double 0.81948898621176791
	.quad	0x3febfd86fcb97f80              # double 0.87469815597795275
	.quad	0x3fd8de469e81efea              # double 0.38856664160971255
	.quad	0x3fd58a569d1f0c84              # double 0.33656850189090215
	.quad	0x3fd0a4da2e6ef116              # double 0.26006178411968628
	.quad	0x3fe85d9e31e6ab70              # double 0.7614279722814512
	.quad	0x3fe63376e7f04c6b              # double 0.6937822847415992
	.quad	0x3fdd8cbff768d9c6              # double 0.46171569024172887
	.quad	0x3f8eb32b6a44ffc0              # double 0.014990176373089414
	.quad	0x3fed3d6f5d03e185              # double 0.91374939124129695
	.quad	0x3fe7551b4284b7ed              # double 0.72913897506600522
	.quad	0x3fc5650c9198956c              # double 0.16714627370053436
	.quad	0x3fe6dbcec0f63431              # double 0.71433198631132744
	.quad	0x3fe4dd6993061639              # double 0.65202788081723562
	.quad	0x3fe2d8a2eb1bd7c1              # double 0.58894487304382193
	.quad	0x3fcfc0e7f8a0571c              # double 0.24807452812154274
	.quad	0x3fe23348038ef907              # double 0.56875992484108984
	.quad	0x3fe76582d739fb8f              # double 0.7311414912836528
	.quad	0x3fe3013daa3b184d              # double 0.59390147445879793
	.quad	0x3fdb4f88a2eb266e              # double 0.42672935400023604
	.quad	0x3fe8aa1e6c1d7327              # double 0.77076645961969781
	.quad	0x3fd0726906d4438e              # double 0.25698304812345263
	.quad	0x3fa3da2206f9c390              # double 0.038773597098845092
	.quad	0x3fe1979b096244aa              # double 0.54975654442582322
	.quad	0x3fc39a36d128a11c              # double 0.15314374172999912
	.quad	0x3fe025880faf86d3              # double 0.50458148063281738
	.quad	0x3fa3851ee5409920              # double 0.038125005230812414
	.quad	0x3fd4598daf2ed9bc              # double 0.31796590907779509
	.quad	0x3feca75ebf8afed3              # double 0.89543092165691929
	.quad	0x3fa84d3268ee31b0              # double 0.047463965710537237
	.quad	0x3fe25a3f1f4024ae              # double 0.57351642707467021
	.quad	0x3fe7d3601b8bfd9d              # double 0.74455266361467276
	.quad	0x3feba0e9b22b8326              # double 0.86339268492529153
	.quad	0x3fe364e1e36ff9cf              # double 0.60606474324577586
	.quad	0x3fd9a628d84351a0              # double 0.40076657409124472
	.quad	0x3fda889fd674450e              # double 0.41458888953009498
	.quad	0x3fe1d079db6eff83              # double 0.55669873102304768
	.quad	0x3fd61132c96240e2              # double 0.34479970613848654
	.quad	0x3fb93c894e42c360              # double 0.098579961401595195
	.quad	0x3fe71f183714e922              # double 0.72254572637692527
	.quad	0x3fdf37f4d1e2a71c              # double 0.48779030319802685
	.quad	0x3fc6fa0bca733b00              # double 0.1795058001066181
	.quad	0x3fdc1b01b7d91cd4              # double 0.43914835885921133
	.quad	0x3fb55662241d9b48              # double 0.083349355523393176
	.quad	0x3fe7dfc11d1637f9              # double 0.74606376343740444
	.quad	0x3feca289114d9d74              # double 0.89484074954536518
	.quad	0x3fb0134fd9c7c2b8              # double 0.062794676465055654
	.quad	0x3fed42ca287c5e35              # double 0.91440303714165927
	.quad	0x3fe1ec472b792518              # double 0.56009253016341898
	.quad	0x3fea2bb6922c17b1              # double 0.81783608006730024
	.quad	0x3fd3a78345b71898              # double 0.30709916885496957
	.quad	0x3fd10b61b00434a4              # double 0.26631967724899597
	.quad	0x3fef623e7a13ed61              # double 0.9807426819165067
	.quad	0x3fdeee55db07c2b6              # double 0.48329683675460033
	.quad	0x3fe794674a2076f5              # double 0.73686565854924757
	.quad	0x3fd88bc86c645926              # double 0.38353167138247313
	.quad	0x3fddf6edd7ccd216              # double 0.46819635462023379
	.quad	0x3fec241ab65f119e              # double 0.87940726870924713
	.quad	0x3fd8237853af35e2              # double 0.37716491863542789
	.quad	0x3feed549cf7a7b46              # double 0.96353617213376519
	.quad	0x3fe42d30015891be              # double 0.63051605475316541
	.quad	0x3fec8b061b6e3bb8              # double 0.89197068555392089
	.quad	0x3fd15984d5e6bbe0              # double 0.27108879936980479
	.quad	0x3fb3aec4de41e2e0              # double 0.076885513555577045
	.quad	0x3fc0703800df0608              # double 0.12842464487589234
	.quad	0x3fda1b5ba7b61258              # double 0.40791980150269103
	.quad	0x3feab11cad22d8f0              # double 0.8341201192440888
	.quad	0x3fe3d5b7f260ee6d              # double 0.61983868922784569
	.quad	0x3fe95d32e58471cf              # double 0.79262680842981037
	.quad	0x3fcad8a8a56fed94              # double 0.20973690107335285
	.quad	0x3feb25057d91c885              # double 0.84826921963964763
	.quad	0x3fe3b6ecb8b0004a              # double 0.61607967445162015
	.quad	0x3fe15b5ba2eb95d9              # double 0.54240209408151963
	.quad	0x3fe0fce3fb247ef0              # double 0.53087042857438682
	.quad	0x3fc4b1fc61a634d4              # double 0.16168169754056427
	.quad	0x3fe18bb8ba10f6d2              # double 0.54830585805003751
	.quad	0x3fea7b99060e8e42              # double 0.82758761580448259
	.quad	0x3fec826a04e54805              # double 0.89091969448259134
	.quad	0x3fd67e15476d0e24              # double 0.35144550299830457
	.quad	0x3fdd799186d1d43c              # double 0.46054495016079833
	.quad	0x3fe0f3540644a978              # double 0.52970315193424167
	.quad	0x3fedb397593105fc              # double 0.92817275448049896
	.quad	0x3fae889ee9289a30              # double 0.059636083566421028
	.quad	0x3fe8956826ad36f8              # double 0.76823813966777177
	.quad	0x3fede19e4755c89f              # double 0.93379129345546008
	.quad	0x3fcdbc01c313a380              # double 0.23230001473646311
	.quad	0x3fefa6d82a4acda3              # double 0.98911674747653355
	.quad	0x3fe9f93fe6216ea4              # double 0.81167597720510231
	.quad	0x3feae7759ca67ef4              # double 0.84075432391907023
	.quad	0x3fe5e3c985da383f              # double 0.68405605452586105
	.quad	0x3fec0834bced82aa              # double 0.87600170993763027
	.quad	0x3fd6b26447a3417c              # double 0.35463816638823409
	.quad	0x3fce5f778f211a20              # double 0.23728842247710791
	.quad	0x3fd407c1d2380e38              # double 0.31297345666118614
	.quad	0x3fe33860837b6726              # double 0.60063195877157649
	.quad	0x3fe5a5aaeec82422              # double 0.67647310864515853
	.quad	0x3fdadba2295f566e              # double 0.41965536155962624
	.quad	0x3fe7d86bcaddd13a              # double 0.74516858694418109
	.quad	0x3facee3f4af15800              # double 0.056505182169232171
	.quad	0x3fde27cbdc84ad42              # double 0.47117897543894938
	.quad	0x3fec99ab41719d33              # double 0.89375841886513852
	.quad	0x3feab72abc41a1f9              # double 0.83485924500297337
	.quad	0x3fee4290e013ce21              # double 0.94562572255239641
	.quad	0x3fa37adaf5a90eb0              # double 0.038046686637725258
	.quad	0x3fe6f3c09c435301              # double 0.71725492973436655
	.quad	0x3f8c6b748c73f0c0              # double 0.013876829658777345
	.quad	0x3fe22339a73fc7ae              # double 0.56679995218131807
	.quad	0x3fcdb11bc35bf6b4              # double 0.23196742095017486
	.quad	0x3fe3191a55efca7d              # double 0.5968143156481599
	.quad	0x3fe3bd3e0ae56afa              # double 0.61685087326199484
	.quad	0x3fdc59b48e14976e              # double 0.4429751765732054
	.quad	0x3fc0ee536ef9b368              # double 0.13227312964172744
	.quad	0x3fc5d3034cbc6cc4              # double 0.17050210234524432
	.quad	0x3fef744ec68736f2              # double 0.98294771933589531
	.quad	0x3fd9d1c75f702eb2              # double 0.40342888183725301
	.quad	0x3fd937c7f6249260              # double 0.39402960812939192
	.quad	0x3fe80ffbb0f318a4              # double 0.75195107040851327
	.quad	0x3feb97e8fcabdd6e              # double 0.86229371404526289
	.quad	0x3fdd7501ec5cc770              # double 0.46026657182948494
	.quad	0x3fd8670e8ec3372e              # double 0.38129009191185304
	.quad	0x3fc77188119e10a8              # double 0.18315220699526447
	.quad	0x3fe303414fdc496c              # double 0.59414735410454744
	.quad	0x3fd546e5cbeb52da              # double 0.33245224870669932
	.quad	0x3fe59df546a12df3              # double 0.67553199572415534
	.quad	0x3fe28cf48189eedb              # double 0.57970643330142069
	.quad	0x3fc8c86bac4e7504              # double 0.19361635125543597
	.quad	0x3fa296ddf7b27f70              # double 0.036307274328691075
	.quad	0x3fb13fd28f0ec960              # double 0.067380103994570728
	.quad	0x3fbf08596ba28f78              # double 0.12122115018661173
	.quad	0x3fcb1b25c02e20cc              # double 0.21176597484396209
	.quad	0x3fe0f318d19d02e8              # double 0.52967492046454101
	.quad	0x3fdace71d38f6956              # double 0.4188503805177296
	.quad	0x3feae60aa1178882              # double 0.84058124030367787
	.quad	0x3fdfae79b77d2d12              # double 0.49502413672299028
	.quad	0x3fdc7ba95d8dda44              # double 0.44504770408767436
	.quad	0x3fefa8292a107690              # double 0.98927744117436767
	.quad	0x3fe07df29247cdf2              # double 0.51537445612342325
	.quad	0x3fe0af883850c9d7              # double 0.52142725943695722
	.quad	0x3fef779ceaae42cb              # double 0.9833511909110596
	.quad	0x3fe041045395a538              # double 0.50793663334949368
	.quad	0x3fe5c1f4e4ac5466              # double 0.67992634451605904
	.quad	0x3fc99c473bb546a8              # double 0.20008173385081318
	.quad	0x3fbe97fe19f78968              # double 0.1195067227741099
	.quad	0x3fe9589d5fe00e3f              # double 0.79206722951534647
	.quad	0x3fa245ccf6250310              # double 0.035688786551423601
	.quad	0x3fd17a6aae38c066              # double 0.27309672368847371
	.quad	0x3fb1cc2b12013bb0              # double 0.069521610160548475
	.quad	0x3feb8d4b5b765cec              # double 0.86099784721127781
	.quad	0x3fe4f98c9994f358              # double 0.65546255108311424
	.quad	0x3fe205d239c9d0f3              # double 0.56321059500490234
	.quad	0x3fefe0c06cf4caf5              # double 0.99618550568115316
	.quad	0x3fef5f2903c0ac0f              # double 0.98036623700079583
	.quad	0x3feaec78bb7c53d7              # double 0.8413661634282289
	.quad	0x3fd82363dd065e6e              # double 0.37716003975353984
	.quad	0x3fe32a195d891e76              # double 0.5988890482776259
	.quad	0x3fda77001ad18162              # double 0.41351320857031315
	.quad	0x3fcb686acda8fe80              # double 0.21412406007765483
	.quad	0x3fdc3e20330b0550              # double 0.44129185661957582
	.quad	0x3fe2dc13f29381ad              # double 0.58936498048938335
	.quad	0x3fe259e4b5d1a98b              # double 0.57347331534883617
	.quad	0x3fdf9cb5ec7af150              # double 0.49393985837720766
	.quad	0x3faebc751ab48430              # double 0.060031566152482063
	.quad	0x3fa8dfd27c2aa1c0              # double 0.048582627923056787
	.quad	0x3fb7bf1b4190ca40              # double 0.092759803302024046
	.quad	0x3fe3f7aa3d3d5c8c              # double 0.62398254357221239
	.quad	0x3fcf6d9940ff1120              # double 0.24553218530321264
	.quad	0x3f76fd8ddd996e80              # double 0.0056129018426777089
	.quad	0x3fd0b2679a72ce34              # double 0.26088895876748386
	.quad	0x3fcbae435d4f4e00              # double 0.21625558906690401
	.quad	0x3fe614df941b09a7              # double 0.69004801680448657
	.quad	0x3fe46469a3168767              # double 0.63725740292669009
	.quad	0x3fb5a654ec173958              # double 0.084569270743690139
	.quad	0x3fc21683cc018e8c              # double 0.14131209813341561
	.quad	0x3fcc214a1c491238              # double 0.21976591473698348
	.quad	0x3fbcacbd2b543348              # double 0.11201078708490997
	.quad	0x3fc839b53d26fe3c              # double 0.18926110731080026
	.quad	0x3fd00d6287c99c28              # double 0.25081694851400238
	.quad	0x3fefc6aebae8f5d8              # double 0.99300323968753456
	.quad	0x3fe4bc805817ed66              # double 0.64801041799311743
	.quad	0x3f8468f7aaf544c0              # double 0.0099658345267549242
	.quad	0x3fedabbebd99c5b7              # double 0.92721497565633271
	.quad	0x3fd2bfd627f71584              # double 0.29295877364014467
	.quad	0x3fc0ff07ac67ae64              # double 0.1327828971692383
	.quad	0x3fe0e55e5865f39b              # double 0.52799908890993963
	.quad	0x3fe6d00c79bdf258              # double 0.71289657380800531
	.quad	0x3fc6572c1d1130c8              # double 0.174535288041062
	.quad	0x3fdc05663dd3bb64              # double 0.43782955205727192
	.quad	0x3fd05c5fcdce1628              # double 0.25563807581088094
	.quad	0x3fe2dd91f21b58bc              # double 0.58954713140953841
	.quad	0x3fe9adecc402f24b              # double 0.80248106273172348
	.quad	0x3fe982b3d02c54ef              # double 0.79720488222906549
	.quad	0x3fca06f05eceabc8              # double 0.20333675984633559
	.quad	0x3fb8d8fc5cab7f88              # double 0.097060940384379291
	.quad	0x3fe85556a3209052              # double 0.76041728840619727
	.quad	0x3fe93a4b197553a2              # double 0.78836588833165799
	.quad	0x3fcdeb67d23b9864              # double 0.23374650731347224
	.quad	0x3feb4a86835cf54b              # double 0.85284734398707351
	.quad	0x3fae1cd4227052c0              # double 0.05881369514842083
	.quad	0x3fa2cbc9cc05c830              # double 0.036711031107998671
	.quad	0x3fe612e9fbe75c9a              # double 0.68980883789017189
	.quad	0x3fe30f6debbc9609              # double 0.5956334690314985
	.quad	0x3fb81383c6d860d8              # double 0.094047771497915433
	.quad	0x3fe6b480f5ccbc46              # double 0.70953414924395797
	.quad	0x3fc8b858b72b5520              # double 0.19312581008731744
	.quad	0x3fe0bc897beb8dd3              # double 0.52301477625990811
	.quad	0x3fd4024abacd298e              # double 0.31263988725972858
	.quad	0x3fe7f5e581dacb23              # double 0.74876666414488502
	.quad	0x3fc48b426d8ddc8c              # double 0.16049986218761025
	.quad	0x3fc24db4420777f4              # double 0.14299634193497435
	.quad	0x3fe444c46420b69f              # double 0.63339442783554378
	.quad	0x3fe0fc53f63ea359              # double 0.53080175490058956
	.quad	0x3fec1b1ac8e1270b              # double 0.87830867037084326
	.quad	0x3fd665a8f0f70db8              # double 0.34995482951873269
	.quad	0x3fadeab599a64f80              # double 0.058431315427838193
	.quad	0x3fe460aebd147875              # double 0.6368020718544033
	.quad	0x3fa1674d6e9ca890              # double 0.033991260292468017
	.quad	0x3fe4ad6079147f72              # double 0.64616416595889192
	.quad	0x3fc1acd2260a8cb8              # double 0.13808657510262434
	.quad	0x3fd25a2f66b1ceee              # double 0.28675446537748328
	.quad	0x3fdd8ed6b7809e3a              # double 0.46184318466336871
	.quad	0x3f927271c348df40              # double 0.018014695686559223
	.quad	0x3fe8c3db6409a14e              # double 0.77390832460972958
	.quad	0x3fdc4d39d81508f4              # double 0.44221349813245969
	.quad	0x3fdd59444e4ded66              # double 0.45857341429628773
	.quad	0x3fda0d7a24396a68              # double 0.40707257783438999
	.quad	0x3fc3ff22b91f0180              # double 0.15622362174145721
	.quad	0x3fd0832e93112f80              # double 0.2580067096903278
	.quad	0x3fe799cca52c9cad              # double 0.73752434025381819
	.quad	0x3fd51f40268297c0              # double 0.33003238449816408
	.quad	0x3fda31e6d416a350              # double 0.40929575645218552
	.quad	0x3fbc02ef91b61bd8              # double 0.1094197970142966
	.quad	0x3fe3f5c1c34a6892              # double 0.62374961989123023
	.quad	0x3fbb36bb5234ea70              # double 0.10630388981818739
	.quad	0x3fd35580ba1bf564              # double 0.30209367918708652
	.quad	0x3fd2cd6be9ffb018              # double 0.29378793574756079
	.quad	0x3fe451481fda7f27              # double 0.6349220869196629
	.quad	0x3fedba8cf218ed21              # double 0.92902228626863714
	.quad	0x3fe75bc2eb5ab2a1              # double 0.7299513432277146
	.quad	0x3fefcbc829f5490c              # double 0.99362571902227747
	.quad	0x3fe78205cad21e51              # double 0.7346219025939239
	.quad	0x3fe9b08c1b25977e              # double 0.80280118276708357
	.quad	0x3fee8eea293a23b1              # double 0.9549456410614906
	.quad	0x3fe5ba1bc70eb561              # double 0.67896832350167469
	.quad	0x3fcff409a7e0f55c              # double 0.24963494012073795
	.quad	0x3fe6309c53f062f9              # double 0.69343391794526987
	.quad	0x3fc75200256a9b48              # double 0.18218995882963385
	.quad	0x3fe93eee172ed3b1              # double 0.78893188980020146
	.quad	0x3fe7adc8c3f49f0e              # double 0.73996389648979899
	.quad	0x3fe9d327031eeb1f              # double 0.80702543839956664
	.quad	0x3fe64a283b62e555              # double 0.69655238722695378
	.quad	0x3fe3c368cbdbaef3              # double 0.61760368171732549
	.quad	0x3fb2b033eb7f3e58              # double 0.07300114154281212
	.quad	0x3fe51ca562ac8c4c              # double 0.65974683067578033
	.quad	0x3fe8b7bc3a861191              # double 0.77242862158213843
	.quad	0x3faef30d6f510da0              # double 0.060448093260244251
	.quad	0x3fee3d39da5d8c56              # double 0.94497387551781276
	.quad	0x3fd1451932703302              # double 0.26984243322003476
	.quad	0x3fdf9b35f30de8d6              # double 0.49384831176543054
	.quad	0x3fee10d8fabbe6f7              # double 0.93955658885462767
	.quad	0x3fc297feab69c0fc              # double 0.14526351327686615
	.quad	0x3fd8ae439781e898              # double 0.38563623233461319
	.quad	0x3fe85435d268a05f              # double 0.76027957053612372
	.quad	0x3fe4cc215c2586f1              # double 0.64991825101262013
	.quad	0x3faa942abf138b50              # double 0.051911674332379421
	.quad	0x3fe2ce5d5a48a977              # double 0.58769099839746175
	.quad	0x3fe78df75bfa6787              # double 0.73607986416321658
	.quad	0x3fdf1a9ab53a0334              # double 0.48599879930411594
	.quad	0x3fe6f8bcfb9faf38              # double 0.71786355157153192
	.quad	0x3fdae5bc91fd1258              # double 0.42027200943656373
	.quad	0x3fd961a8e24be894              # double 0.39658567523259447
	.quad	0x3fda82b6babaf2b0              # double 0.41422813640000822
	.quad	0x3fe9e1fe049d392f              # double 0.80883694554521479
	.quad	0x3fd880fd52f6480a              # double 0.38287289716493034
	.quad	0x3fd979262edd1caa              # double 0.39801935745749495
	.quad	0x3fecd874a3931e86              # double 0.90142280529194418
	.quad	0x3fbf706488f4f820              # double 0.1228087267272433
	.quad	0x3fdc7cb8f26bbad8              # double 0.44511245416553669
	.quad	0x3fd31064833fd5d0              # double 0.29787552659339855
	.quad	0x3fcc903fcc3ac824              # double 0.22315213653706778
	.quad	0x3fe324a015d5c6e6              # double 0.59822086586629264
	.quad	0x3fdc176949093c72              # double 0.4389289105647044
	.quad	0x3fc7dfd5cbcb5560              # double 0.18651840639965211
	.quad	0x3fed574cb2768bae              # double 0.91690668922489293
	.quad	0x3fe6aaece308baf2              # double 0.70836490957830578
	.quad	0x3fcbed6c3b8a4138              # double 0.21818306834439638
	.quad	0x3fe19c83c5cc3b84              # double 0.5503558028448059
	.quad	0x3fdb33669f3e5334              # double 0.4250122599708448
	.quad	0x3feff6b05cde2d0b              # double 0.99886339319474026
	.quad	0x3fed50a61ac7d2ec              # double 0.91609482985094592
	.quad	0x3fec5840ba07c72d              # double 0.88577305158671538
	.quad	0x3fdeb2c491a50436              # double 0.47966112349610357
	.quad	0x3fe53a42c805c409              # double 0.66336192194842269
	.quad	0x3fe06ecdcce2eaad              # double 0.51352586762307839
	.quad	0x3fc407a32ee9ce28              # double 0.15648307600678035
	.quad	0x3fe45f844fdb3b07              # double 0.63665977093646198
	.quad	0x3fc6aa1b7603fc68              # double 0.1770662618873502
	.quad	0x3fee75c59caef06a              # double 0.9518764553281589
	.quad	0x3fee1ffdb31db42d              # double 0.94140515311813078
	.quad	0x3fe66f5cfa1fcb2b              # double 0.70109413959867106
	.quad	0x3fd9becc5e8f3838              # double 0.40227040514298862
	.quad	0x3fe55cc801a4e3d9              # double 0.66757583924401864
	.quad	0x3fe8f57374b1d41d              # double 0.77996228019640379
	.quad	0x3fedfdb40e7b818c              # double 0.93721964672663338
	.quad	0x3fe08a0154560f7c              # double 0.51684633705052319
	.quad	0x3fccac9b836ed77c              # double 0.22401756208062895
	.quad	0x3fe9600a959eb809              # double 0.79297379706054116
	.quad	0x3fd12027c26dcfa8              # double 0.2675876044006551
	.quad	0x3feed9a2bc27b8e1              # double 0.96406685589843388
	.quad	0x3fd494bf5c898bf6              # double 0.32157882725567732
	.quad	0x3fd0d8952159ff22              # double 0.26321914917933686
	.quad	0x3fe917c602da6d6c              # double 0.78415203625938323
	.quad	0x3feb5bacfbeed916              # double 0.85494088369049126
	.quad	0x3feaa82ce5dafeaa              # double 0.83302922147409686
	.quad	0x3fe5dd8e5fbbcb7a              # double 0.68329542825664125
	.quad	0x3fd127b051357d1c              # double 0.26804740839539121
	.quad	0x3fe62bbcf5dfb169              # double 0.6928391267988846
	.quad	0x3fdc1d5d227d4a98              # double 0.43929222457988137
	.quad	0x3fb0d93a9ed3ddf8              # double 0.065814651275893143
	.quad	0x3fe99888fe19ae3f              # double 0.79987001065223484
	.quad	0x3feca9c47be9be7a              # double 0.89572357370157296
	.quad	0x3fec56bc42203ca1              # double 0.88558781542987586
	.quad	0x3fe444ed52244311              # double 0.63341394465723699
	.quad	0x3fe0529f7eacc6e0              # double 0.51008581868356018
	.quad	0x3fefaa5876b8dfc1              # double 0.98954413593218515
	.quad	0x3fca319e161a3d8c              # double 0.20463920668815339
	.quad	0x3fd5be09e9507f7e              # double 0.33972404274572188
	.quad	0x3fe012600f041624              # double 0.50224306996159784
	.quad	0x3fd8100de01c9c32              # double 0.37597987066186811
	.quad	0x3fdc316c3c8bdd00              # double 0.4405165282509671
	.quad	0x3fe29dbe33581629              # double 0.5817557337583753
	.quad	0x3fe09839366ee848              # double 0.5185819686078128
	.quad	0x3fec10ef704d9859              # double 0.87706729826164598
	.quad	0x3fd42a671a0535a4              # double 0.31508805790948657
	.quad	0x3fd7221a9ff3da90              # double 0.36145654316298081
	.quad	0x3fe6c058c3d0bb5b              # double 0.71097982640445012
	.quad	0x3fee8adb98d6db71              # double 0.954450415148001
	.quad	0x3fe33d52d9abbcab              # double 0.60123579515302106
	.quad	0x3fea34322982d072              # double 0.81887157542816014
	.quad	0x3fecc2a59e36f518              # double 0.89876061345390479
	.quad	0x3fd4cf11ae5ea11e              # double 0.32513849285398233
	.quad	0x3febf904261283ef              # double 0.8741474860763655
	.quad	0x3fe7abd797589b7c              # double 0.73972682533063461
	.quad	0x3fe63c7e50ab6e56              # double 0.69488445049087022
	.quad	0x3fe6334c0e3bb6cb              # double 0.69376185207303231
	.quad	0x3fd79c09e9041600              # double 0.36889884715523635
	.quad	0x3fe3750e30e0877d              # double 0.60803899332334732
	.quad	0x3fe1694cd962f992              # double 0.54410402735065788
	.quad	0x3fe2720735fa5cb6              # double 0.57641945402692474
	.quad	0x3fe8da3adc5962ef              # double 0.7766393951124807
	.quad	0x3fbbaf8d60e60f48              # double 0.10814746490183069
	.quad	0x3fee8a7dde63c4a7              # double 0.95440572200290752
	.quad	0x3fb09fd926c18f08              # double 0.064939090692458845
	.quad	0x3fef2cc205653bd4              # double 0.97421361020848928
	.quad	0x3feb1907e7ea71d0              # double 0.84680552764944572
	.quad	0x3fe19affbf796050              # double 0.55017077824869354
	.quad	0x3fe252f0701cee4d              # double 0.57262441536972519
	.quad	0x3fc04781ea8175b8              # double 0.12718223524545436
	.quad	0x3feda8f182a29300              # double 0.92687297358187948
	.quad	0x3fbd8b8910b05348              # double 0.11541039140167897
	.quad	0x3fe6277324c88edb              # double 0.69231564697517045
	.quad	0x3fec4ff96a894906              # double 0.88476248557916004
	.quad	0x3fe734e2bbe8b44f              # double 0.72520577145554366
	.quad	0x3fd59b5c27687660              # double 0.33760742042963976
	.quad	0x3fee369c354fc3c9              # double 0.9441662827722378
	.quad	0x3fdaa2a0ddbe0152              # double 0.41617604879867998
	.quad	0x3fd28d0e28e9ce8e              # double 0.28985933299484479
	.quad	0x3fe75a0aa37de04c              # double 0.72974140102361096
	.quad	0x3feb443435e96909              # double 0.85207567720070287
	.quad	0x3fe1a5649b72f0fb              # double 0.55143957482462669
	.quad	0x3fedc9dde50ce384              # double 0.93089194046397993
	.quad	0x3fdcb1a9a0d23a9e              # double 0.44834366517253865
	.quad	0x3fe5f9144d235f61              # double 0.6866551882367099
	.quad	0x3fe4644a4e0f99d7              # double 0.63724246259954043
	.quad	0x3fe56a749f5f581b              # double 0.66924506308965037
	.quad	0x3fc9280f3e2443e8              # double 0.1965350202013092
	.quad	0x3fd997892dda59c8              # double 0.39987401464295802
	.quad	0x3fd00ec5fd188500              # double 0.25090169636139592
	.quad	0x3fec401895ba0ee7              # double 0.88282422297967578
	.quad	0x3fefdcefb222228a              # double 0.99571976463001133
	.quad	0x3fed5716c2dd3fad              # double 0.91688097056793583
	.quad	0x3fe08c58f11776b6              # double 0.51713225448812383
	.quad	0x3fe2c9753e2ff960              # double 0.58709203859306669
	.quad	0x3feb42ae4bb6b4a0              # double 0.85188975131827149
	.quad	0x3fd522616b7bd0c8              # double 0.33022342201662669
	.quad	0x3fe55b85bab3d63b              # double 0.66742216554002398
	.quad	0x3fe16753c54ff757              # double 0.54386318719455573
	.quad	0x3fd4b302fa404d08              # double 0.32342600287047718
	.quad	0x3fed5702d07ddbd3              # double 0.91687145920774993
	.quad	0x3fd87fd05361a288              # double 0.38280113356317047
	.quad	0x3fc7e4480b24b8f4              # double 0.18665409607041961
	.quad	0x3fd73a3748f34f94              # double 0.36292822002473568
	.quad	0x3fd913ea9c194220              # double 0.39184060329447057
	.quad	0x3fd7fde92cdd5840              # double 0.37487248784362137
	.quad	0x3fe348e70882367e              # double 0.60264922773212937
	.quad	0x3fc2268355637084              # double 0.14180032414777
	.quad	0x3fe3b82a91c5f97c              # double 0.61623123618464559
	.quad	0x3fe61c5900b9ab99              # double 0.69096040860800934
	.quad	0x3fd97c19b8877c56              # double 0.39819949169572533
	.quad	0x3fda1cef7a7ca96e              # double 0.40801608049027649
	.quad	0x3fe81929188388b6              # double 0.75307135379650592
	.quad	0x3fed0c634a370fd1              # double 0.90776218886503035
	.quad	0x3fe7b8f10f21816d              # double 0.74132588343858929
	.quad	0x3fe7ce9a5048f58c              # double 0.74397006683982303
	.quad	0x3fe8c761ed12be53              # double 0.77433868697512265
	.quad	0x3fbffa63e50bbdf0              # double 0.1249144014543544
	.quad	0x3fc7d0fd362810b4              # double 0.18606534141884412
	.quad	0x3fd6681222e281e4              # double 0.35010198027342043
	.quad	0x3fe042d3f72bfd34              # double 0.50815771365879536
	.quad	0x3fe0dadb710647a4              # double 0.52671596598724024
	.quad	0x3fec60eaf6996ae8              # double 0.88683078922198622
	.quad	0x3feaddce1ea5c4cb              # double 0.83957582460257052
	.quad	0x3fe86a1e36bc40f4              # double 0.76295386019231026
	.quad	0x3fdaee7f3bd6ebb6              # double 0.42080670207695492
	.quad	0x3fe48178ff58c65d              # double 0.64080476639191952
	.quad	0x3fda9927c9f99bb6              # double 0.41559786533474197
	.quad	0x3fdb5f5a1d01f19a              # double 0.42769482453129515
	.quad	0x3fe354662dbd6d2a              # double 0.60405262883742705
	.quad	0x3fd47c6995eba35e              # double 0.32009353295011589
	.quad	0x3fecf528727ed7e4              # double 0.90492651331328177
	.quad	0x3fb86f5ab2751e80              # double 0.095449131554341093
	.quad	0x3fdb448b510efaba              # double 0.4260586062991184
	.quad	0x3feb12ef197765c6              # double 0.84606127714067081
	.quad	0x3fa13c85b7208a10              # double 0.033664873699553621
	.quad	0x3fdcda4160a599ee              # double 0.45082125127956274
	.quad	0x3fdc9b38495d3a76              # double 0.44697386898489044
	.quad	0x3fe420b59d7b506e              # double 0.62899285085815193
	.quad	0x3fc2599a729b8194              # double 0.14335947605196664
	.quad	0x3fc8385f25c7f754              # double 0.18922032685071122
	.quad	0x3fe3d3e8ea9dc6ee              # double 0.61961789916514731
	.quad	0x3fe8e2d6f20fe143              # double 0.77769038465252327
	.quad	0x3f458d0215b33400              # double 6.5767862124632703E-4
	.quad	0x3fb8eb310702d6c8              # double 0.097338737689678045
	.quad	0x3fcc1be135512d00              # double 0.21960082152723004
	.quad	0x3fe82a77cb1264ce              # double 0.75518407499762374
	.quad	0x3fee46c6110ba3c9              # double 0.94613936738198234
	.quad	0x3fe0bb2a1412562a              # double 0.52284721298446368
	.quad	0x3fe64d31984bf7e0              # double 0.69692306275805649
	.quad	0x3fd440bcfca5badc              # double 0.31645130798908183
	.quad	0x3fce3963c293137c              # double 0.23612639427861015
	.quad	0x3fee7f32de2dc405              # double 0.95302718538562259
	.quad	0x3fecfc92e9b7184b              # double 0.90583177230360812
	.quad	0x3fc253b608378a60              # double 0.14317965890139117
	.quad	0x3fefe80d68f7c290              # double 0.99707670690084349
	.quad	0x3fc1e186211a7384              # double 0.1396949445378618
	.quad	0x3feb5e4d765cd85c              # double 0.85526154630384665
	.quad	0x3fda0854509d8cac              # double 0.40675838348961224
	.quad	0x3fd6a3c72e855110              # double 0.35374621909183279
	.quad	0x3feb421a86843080              # double 0.85181928894736814
	.quad	0x3fbde7a88ae1e238              # double 0.11681607618982859
	.quad	0x3fcd0b7f50072b0c              # double 0.22691337020508973
	.quad	0x3fde9611cc9d240e              # double 0.47790951711482499
	.quad	0x3faf8e6208223cc0              # double 0.061633170597923392
	.quad	0x3fd3ee54cacf6844              # double 0.31142158322984792
	.quad	0x3fbe3f056fa91398              # double 0.11814912773213704
	.quad	0x3fe21362e5be3010              # double 0.56486649390854105
	.quad	0x3fbee3612d31f760              # double 0.12065703729055377
	.quad	0x3fcc84a61b060e98              # double 0.22279812163843782
	.quad	0x3fe886fa466c5aa5              # double 0.76647676233809092
	.quad	0x3fefa072d009b8c3              # double 0.98833599693696105
	.quad	0x3fecf675ed08e73c              # double 0.90508552833418987
	.quad	0x3fea88cb9ea93cf7              # double 0.82919865597241837
	.quad	0x3fc53b74b63e4cdc              # double 0.16587695025064064
	.quad	0x3fcd570a3bef6324              # double 0.22921874929922936
	.quad	0x3fe9bad5d74918ec              # double 0.80405704544025757
	.quad	0x3fd7a3617593bcf0              # double 0.36934696657313193
	.quad	0x3fed0447934d7e56              # double 0.90677241106090878
	.quad	0x3fec4a71a6e0b0a8              # double 0.8840873965578071
	.quad	0x3fe87febd1a10d51              # double 0.76561537688432157
	.quad	0x3fe1aac6c6878361              # double 0.55209673667205206
	.quad	0x3fb8310dceda8848              # double 0.094498503686311186
	.quad	0x3fa7592724be1ce0              # double 0.045602057681259245
	.quad	0x3fbda07bc4419dd8              # double 0.11573003331579146
	.quad	0x3fdb61bd73dee8b4              # double 0.42784057918073448
	.quad	0x3fd85093cf77f982              # double 0.37991805325136607
	.quad	0x3fca58aee58087a4              # double 0.20583139616161106
	.quad	0x3fdd8d2a3c2717f4              # double 0.46174102663314831
	.quad	0x3fe9a32c08b747c0              # double 0.80116845800716163
	.quad	0x3fe0d7d87be7ad3c              # double 0.52634834480469506
	.quad	0x3fe95c8c719d7b83              # double 0.79254743757688606
	.quad	0x3feb868c4a615504              # double 0.86017431762107365
	.quad	0x3fdbea3176275e78              # double 0.43616901911216344
	.quad	0x3fe7fd8a560f14c1              # double 0.74969975288754409
	.quad	0x3fe6a5df09e7ad5b              # double 0.70774795469825891
	.quad	0x3fde0f0792632fda              # double 0.46966733260773952
	.quad	0x3fcb00820e44ef08              # double 0.21095300385228932
	.quad	0x3fdfbfd51b1218d2              # double 0.49608352321264448
	.quad	0x3fee7593f73cb308              # double 0.95185278213975355
	.quad	0x3fb641ad453640a8              # double 0.086939649007265474
	.quad	0x3fefa55320041ea6              # double 0.98893123868125055
	.quad	0x3fe39688a3f78990              # double 0.61212570214074624
	.quad	0x3fef4b41ef426a0f              # double 0.97793671350820143
	.quad	0x3fde39c7d2c09ddc              # double 0.47227664548196713
	.quad	0x3fe0475a4fdf5fb1              # double 0.50871005630596333
	.quad	0x3fcdca63fe349b10              # double 0.23273897087457174
	.quad	0x3fe36c91b876954c              # double 0.60700307872745318
	.quad	0x3fe3c800a783465e              # double 0.61816437451689032
	.quad	0x3fe993f95fc42b07              # double 0.79931324676849236
	.quad	0x3fb100ab5e2aa200              # double 0.066416464319111412
	.quad	0x3fe648c004c56abe              # double 0.69638062412135304
	.quad	0x3fda6afef3eadd64              # double 0.41278051204741062
	.quad	0x3fe6004c14930bc9              # double 0.68753627794682715
	.quad	0x3fcff12aa422c0ec              # double 0.24954731954995368
	.quad	0x3fefed4eb076340f              # double 0.9977181860464287
	.quad	0x3feb6588d946cafd              # double 0.85614435612509932
	.quad	0x3fe1a42a24c36ed1              # double 0.55128962688783123
	.quad	0x3f9742382eb7b440              # double 0.022713544703879984
	.quad	0x3fefdb986ca00404              # double 0.99555608001549034
	.quad	0x3febb89650c6734c              # double 0.86628261352925894
	.quad	0x3fdedfc308131e14              # double 0.48240733898680443
	.quad	0x3fda90927f52c826              # double 0.41507399019167435
	.quad	0x3fbb55b14b20d0a8              # double 0.10677631458458114
	.quad	0x3feb6c9a95224513              # double 0.85700730445583628
	.quad	0x3fe0a234f62308e1              # double 0.51980064462284414
	.quad	0x3fde33c6a4ea6eb6              # double 0.47191015343717468
	.quad	0x3fd6b38ddada8d1a              # double 0.35470911381180914
	.quad	0x3fe1d3c73669d858              # double 0.55710182788494489
	.quad	0x3fb9142c5f601448              # double 0.097964070591914809
	.quad	0x3fea22ac55180d60              # double 0.81673256511605174
	.quad	0x3fc5f8e82d177570              # double 0.17165853692760491
	.quad	0x3feb36b8438c7678              # double 0.85042966073133552
	.quad	0x3fd4d8412d07ffd2              # double 0.32569913289625874
	.quad	0x3fefb599fc5f36c1              # double 0.99091815272705485
	.quad	0x3fe2fb43674860d5              # double 0.59317178890617106
	.quad	0x3fc1b434b7c22bdc              # double 0.1383119485147678
	.quad	0x3fe212c73da5e0bc              # double 0.56479227104775687
	.quad	0x3fe4ef1c13decbb0              # double 0.65418819313923926
	.quad	0x3fe330adbef6484c              # double 0.59969222352288787
	.quad	0x3fcca207089b5c64              # double 0.22369468612916699
	.quad	0x3fee677bc4db6ea2              # double 0.95013225983298732
	.quad	0x3fe66642d3747098              # double 0.69998303699277908
	.quad	0x3fc6f135a9770604              # double 0.17923613333373123
	.quad	0x3fe63add842f6509              # double 0.69468570535096419
	.quad	0x3fdf729ad98f304c              # double 0.49136992689159764
	.quad	0x3feefab4a84cb34c              # double 0.96810372229593033
	.quad	0x3fc36afcbc2e015c              # double 0.15170249165022198
	.quad	0x3feabb680ed76644              # double 0.83537676714622266
	.quad	0x3febef554ed4a058              # double 0.87296548267932916
	.quad	0x3fdce0b6e5f5b21e              # double 0.45121548134810208
	.quad	0x3fe54728d905c907              # double 0.66493646990991884
	.quad	0x3f7b1fc15b73f080              # double 0.0066220810906508776
	.quad	0x3fd08adb6fd519a0              # double 0.25847516938338266
	.quad	0x3fd34a964eeae812              # double 0.30142743784711101
	.quad	0x3faf4f06c12c0680              # double 0.061149798470080619
	.quad	0x3fed07a946d8a825              # double 0.90718520962878257
	.quad	0x3fe65761a08deeb8              # double 0.6981666694477644
	.quad	0x3fe1a8fb34017668              # double 0.55187759549489801
	.quad	0x3fe0c87e58f46dc0              # double 0.52447430967315967
	.quad	0x3fe54579f4819308              # double 0.6647310042868364
	.quad	0x3fec0ac2e6f46078              # double 0.87631363972015119
	.quad	0x3fed6bce5763d6e1              # double 0.91940991466864486
	.quad	0x3fc1c16376342af4              # double 0.13871424934071508
	.quad	0x3feaf1a3c7eb2658              # double 0.84199704214661164
	.quad	0x3fe0abe8d9c64f87              # double 0.52098505529510042
	.quad	0x3fd20d8fd95f72f0              # double 0.28207775333230156
	.quad	0x3fd18de0562dd51e              # double 0.27428444305344779
	.quad	0x3fe45f26e6bb3497              # double 0.63661522926999481
	.quad	0x3fc7e85a1b329a58              # double 0.18677831962596048
	.quad	0x3fe50baf5696b380              # double 0.65767638122416372
	.quad	0x3fc857b81aa8af14              # double 0.19017697622018004
	.quad	0x3fed942da13ff3c4              # double 0.92433816427330173
	.quad	0x3fdae3dddafd0f16              # double 0.42015787492367573
	.quad	0x3f9b0c65992b23e0              # double 0.02641447780004913
	.quad	0x3fc4a0235e8cd708              # double 0.16113702885348169
	.quad	0x3fd608202925c242              # double 0.34424594896612259
	.quad	0x3fcb6520fae00f84              # double 0.21402370691077632
	.quad	0x3fc3a2f8df474c68              # double 0.15341101553221681
	.quad	0x3fea94d0dc0c349f              # double 0.83066599824964615
	.quad	0x3fb9a3dd14b55238              # double 0.10015661006520638
	.quad	0x3fc59db852daa1c4              # double 0.16887573285681701
	.quad	0x3fe98782df650a07              # double 0.7977918971230914
	.quad	0x3f7a7c7b9eb05480              # double 0.0064663723851668964
	.quad	0x3fcecb3aa2ab4c1c              # double 0.24057705824688547
	.quad	0x3fd58af6e3d2d4f2              # double 0.33660671471018511
	.quad	0x3fc71448d35268dc              # double 0.18030653303578148
	.quad	0x3fd357cace264044              # double 0.30223341113833535
	.quad	0x3f9c6b90f3f1f000              # double 0.02775408257410561
	.quad	0x3fdf6aadf21dd632              # double 0.49088619846529291
	.quad	0x3feecd9d38454371              # double 0.96259938230842412
	.quad	0x3fd37335da6bc046              # double 0.30390688257375975
	.quad	0x3feae5e3489f5456              # double 0.84056247886713709
	.quad	0x3fe5e0020f619732              # double 0.68359473232405876
	.quad	0x3fe7e0c40c938995              # double 0.74618723350822569
	.quad	0x3fc8575622fe4490              # double 0.19016529759077061
	.quad	0x3fbb71a87b6ce438              # double 0.10720303548159016
	.quad	0x3faa56246111da10              # double 0.051438462113697736
	.quad	0x3fee6a08c46c90bf              # double 0.95044363369063223
	.quad	0x3fe1a61c63c1d37a              # double 0.55152720912756981
	.quad	0x3fd1bc7bf652ed06              # double 0.27712916426726542
	.quad	0x3fdd5a33213b40c6              # double 0.45863035435924038
	.quad	0x3fd572b9a7a5e814              # double 0.33512727138406828
	.quad	0x3fc7c6285e78ba58              # double 0.18573479283209582
	.quad	0x3fde715e55a950c2              # double 0.47566946378107045
	.quad	0x3fd378f75dac6a24              # double 0.30425819537927823
	.quad	0x3f7864aa2b78da00              # double 0.0059553763635933343
	.quad	0x3fe0b71024b3570d              # double 0.52234656494212717
	.quad	0x3fe395f5887c0f62              # double 0.61205555588865601
	.quad	0x3fe4603dd70d21a8              # double 0.63674823763090149
	.quad	0x3fda39c06c06c362              # double 0.40977488088087999
	.quad	0x3fe85ecf62ac7b7b              # double 0.76157349846094691
	.quad	0x3fa09b9d522f0320              # double 0.032437244684393685
	.quad	0x3fe59d7d83ac8092              # double 0.67547488896890884
	.quad	0x3fe0c63256d88b81              # double 0.52419392549596477
	.quad	0x3feb79cb7b535d04              # double 0.85861753546751673
	.quad	0x3fe27004c85667ac              # double 0.57617415550634155
	.quad	0x3fe54d727dc0ba3e              # double 0.66570400773145599
	.quad	0x3febee7354929079              # double 0.87285772817678187
	.quad	0x3fe109f2030d42af              # double 0.53246403308920331
	.quad	0x3fd5a754aef58b24              # double 0.33833806119780463
	.quad	0x3f95f90054ba3cc0              # double 0.021457677050929602
	.quad	0x3fd300494850997e              # double 0.29689247190471935
	.quad	0x3fc0e51cbe4de130              # double 0.13199195186803925
	.quad	0x3fe2d7a223ef2caf              # double 0.58882243173993298
	.quad	0x3febb518ced80f73              # double 0.86585655593124355
	.quad	0x3fa9c9a788ffb270              # double 0.050366626237381307
	.quad	0x3fe8a32628b98bf2              # double 0.76991565660534733
	.quad	0x3fe5f9a31f5a12cf              # double 0.68672329066665749
	.quad	0x3fcc9329269f540c              # double 0.223240989550192
	.quad	0x3fe5a38287b4689f              # double 0.67620970253780743
	.quad	0x3fe7773037bee0d2              # double 0.73329935920539868
	.quad	0x3fe7d2972f909fa7              # double 0.74445685663248617
	.quad	0x3fc2fbc5c76b18e8              # double 0.14830848920082151
	.quad	0x3fe2007a85909fdf              # double 0.56255842291738734
	.quad	0x3fb69775ad4d3390              # double 0.088248591241791851
	.quad	0x3fc2a4bdac73ae28              # double 0.14565249367238775
	.quad	0x3fee26798c6209a3              # double 0.94219663065478121
	.quad	0x3fc4e3ddb4668134              # double 0.1632039194928524
	.quad	0x3fd5dbbcd70d8386              # double 0.34153672219513742
	.quad	0x3fb0d2b7cf3151e0              # double 0.065715301593918252
	.quad	0x3fee97a6133246fe              # double 0.95601180791183515
	.quad	0x3fdfe114d162f952              # double 0.4981128735343151
	.quad	0x3fc4cdaae601447c              # double 0.16252647619925031
	.quad	0x3fc1c25c81ba0180              # double 0.13874393781953742
	.quad	0x3fd90b0eeee9f310              # double 0.39129994708473337
	.quad	0x3fe00cc18ebd148b              # double 0.50155713919288425
	.quad	0x3fe2dc1a7cb951b2              # double 0.58936809883248586
	.quad	0x3fc68c13d8fb4184              # double 0.17614982695387138
	.quad	0x3fe4eb98a1a31ecd              # double 0.6537593037582724
	.quad	0x3fd66604c776829a              # double 0.34997672537614621
	.quad	0x3fe240e815f5da16              # double 0.57042316712505925
	.quad	0x3fe3ae98107dadf9              # double 0.61506274433980856
	.quad	0x3fb55c32cc2f7b78              # double 0.083438086366624975
	.quad	0x3fed8c71895e1bda              # double 0.923393982215994
	.quad	0x3fe53cd1bf702855              # double 0.66367423429734151
	.quad	0x3fd5168a29881360              # double 0.32950071388068203
	.quad	0x3fe5bc668daa4250              # double 0.67924812001190027
	.quad	0x3fd247eb75bc55ec              # double 0.28563963410974114
	.quad	0x3fb6fcf0a7475248              # double 0.089797058906080029
	.quad	0x3fce257aae4b8b98              # double 0.23551877508643027
	.quad	0x3fece8770dba8410              # double 0.90337708169329467
	.quad	0x3fb6a7bfc0af29e8              # double 0.088497147123383635
	.quad	0x3fe07cfe0105179e              # double 0.51525783728787977
	.quad	0x3fed412772d59e29              # double 0.91420338085749109
	.quad	0x3fc9d77a10b413ac              # double 0.20188833060833866
	.quad	0x3fe1cd952911327c              # double 0.55634553929264952
	.quad	0x3fe47deb99f3ae9c              # double 0.64037113255240596
	.quad	0x3fd7a5599bee3570              # double 0.36946716525638745
	.quad	0x3fe8caed5f80df3c              # double 0.77477139142045059
	.quad	0x3fe5398950c658be              # double 0.66327348495794758
	.quad	0x3fcf2bb0f2b948fc              # double 0.24352084972139909
	.quad	0x3fe963389bfe366d              # double 0.79336195437799761
	.quad	0x3fc0a89e4922260c              # double 0.13014582224813898
	.quad	0x3feecb8a4f93ea0b              # double 0.96234622519051649
	.quad	0x3fd9e201e8a5f634              # double 0.40441940040168167
	.quad	0x3feb0925593bdf58              # double 0.84486644199840111
	.quad	0x3fda5228499124b2              # double 0.41126448807024041
	.quad	0x3fefed4cf177be39              # double 0.99771735345524981
	.quad	0x3fe9a82874546918              # double 0.80177710266733282
	.quad	0x3f9ce59274c329e0              # double 0.028219498039826152
	.quad	0x3fde035c0ac92abc              # double 0.46895505002309412
	.quad	0x3fd87c11b2990d02              # double 0.38257257882305862
	.quad	0x3fc3682691669d68              # double 0.15161592578554495
	.quad	0x3fd0a1316d8acec0              # double 0.25983844468576578
	.quad	0x3fd51e2cfa6e4584              # double 0.32996677833678967
	.quad	0x3fd4ee0612b39ad2              # double 0.32702781511617929
	.quad	0x3fd776b15346c76c              # double 0.36661942608326714
	.quad	0x3fe0bd679e65529f              # double 0.52312069832494845
	.quad	0x3fb550298e04b658              # double 0.083254429981672984
	.quad	0x3fb0fb5bc58af8e8              # double 0.066335426071393422
	.quad	0x3fe0f01b8dadf584              # double 0.52931001350195617
	.quad	0x3fed6500da65669a              # double 0.91857950835693036
	.quad	0x3fdae8ee6dda059a              # double 0.42046700217914579
	.quad	0x3fc31348dcef31dc              # double 0.1490260199337986
	.quad	0x3fdd208a7812a6ae              # double 0.45511113859047725
	.quad	0x3fe10312356e4301              # double 0.53162489352880027
	.quad	0x3fb4edaacff39578              # double 0.081751514214905785
	.quad	0x3fcfc1d8ec63bcec              # double 0.24810325186215409
	.quad	0x3fb920ad54d0bca0              # double 0.098154862601165238
	.quad	0x3fe08eeadebc94f6              # double 0.51744597914935642
	.quad	0x3fdc74286cafbb1a              # double 0.44458971609030729
	.quad	0x3fe55098cfee7baa              # double 0.66608849155078542
	.quad	0x3fc51c3455723aec              # double 0.16492323085954952
	.quad	0x3fc17c737ebb65c0              # double 0.13661044776999454
	.quad	0x3fedba9cc9fdb86b              # double 0.92902984095941343
	.quad	0x3fe673a21429ee2a              # double 0.70161537111511518
	.quad	0x3fd03c8ea4221734              # double 0.25369611767415567
	.quad	0x3fe44d919495488b              # double 0.63446883220810102
	.quad	0x3fec28049acae043              # double 0.87988500817210313
	.quad	0x3fda9dde72f85aec              # double 0.41588555553009487
	.quad	0x3fa8ddbd8316d080              # double 0.048566744091119496
	.quad	0x3fd06c7522f8a99c              # double 0.25661972441835146
	.quad	0x3fedfcc584074078              # double 0.93710590159208972
	.quad	0x3fe9255e29829173              # double 0.78581150157383062
	.quad	0x3fe7bf6b32aa6e30              # double 0.74211654563572971
	.quad	0x3fe13b78eecb3b7c              # double 0.53850981368473994
	.quad	0x3f9dbb0b9ca4f9a0              # double 0.029033833919351104
	.quad	0x3fed346f29199384              # double 0.91265066172910325
	.quad	0x3fd88921e7e01d8c              # double 0.38336990017020223
	.quad	0x3fe8d861154c83bd              # double 0.77641348037661084
	.quad	0x3fd2dcfd436d38f8              # double 0.29473811707147446
	.quad	0x3fd9ce394c7135d0              # double 0.40321190323888079
	.quad	0x3fc54ef11e03e728              # double 0.16647161450946979
	.quad	0x3fe7e3a2ad9d7fc8              # double 0.74653753194069683
	.quad	0x3fee32b76447423e              # double 0.9436909636079418
	.quad	0x3fc82a434e76d344              # double 0.18878976184137219
	.quad	0x3fdc2043338c9060              # double 0.43946914705361984
	.quad	0x3fdbae125b19ccbc              # double 0.43249949356613704
	.quad	0x3fdebc7e11500580              # double 0.48025466623956703
	.quad	0x3febff2005c84d0a              # double 0.87489319924716935
	.quad	0x3fcbb665a4b0878c              # double 0.216503816046551
	.quad	0x3fe0b5e6a4e874e2              # double 0.52220470627403537
	.quad	0x3fd47cc08684a5e6              # double 0.32011426102198326
	.quad	0x3fc4a2b8803c416c              # double 0.16121584187977633
	.quad	0x3fd09b4f9bc8362c              # double 0.25947942936986368
	.quad	0x3fe0d742dadb9478              # double 0.52627699609423839
	.quad	0x3fc032394c376cf8              # double 0.12653270932683092
	.quad	0x3fe0b3df1f3f2ba2              # double 0.52195697882540437
	.quad	0x3feacb0313a34728              # double 0.83728174052723592
	.quad	0x3fc25a203f0ade20              # double 0.14337542608494491
	.quad	0x3fd2b0725d3c78dc              # double 0.29201945405101326
	.quad	0x3fc3ea3aae17a110              # double 0.15558560848808911
	.quad	0x3fb2ab7569e24f70              # double 0.072928751326171826
	.quad	0x3fe2833781f1dd7b              # double 0.57851767902222606
	.quad	0x3fd7e13dacd38958              # double 0.37312261464662333
	.quad	0x3fe35cce04bd36d2              # double 0.60507870603188452
	.quad	0x3fee447a3ca1ff58              # double 0.94585906832069621
	.quad	0x3fdfb0560d5ba4ce              # double 0.49513770393839429
	.quad	0x3fd5a8702aea62d2              # double 0.33840564909909887
	.quad	0x3fe87a03b0ac7f86              # double 0.76489433771711002
	.quad	0x3fe5cae0bb962b92              # double 0.68101536405571239
	.quad	0x3fea4b29646f5533              # double 0.82167501083555405
	.quad	0x3fb5fa440f3f9f70              # double 0.085850003931793983
	.quad	0x3fe95f887432c14f              # double 0.79291174597714498
	.quad	0x3fe43fef1eceb998              # double 0.63280445115178718
	.quad	0x3fe1041373b1befd              # double 0.53174755665347073
	.quad	0x3fd2eae0ef7265e6              # double 0.29558585532649173
	.quad	0x3fd4819efd3b5ecc              # double 0.32041144113234732
	.quad	0x3fe54967f3dbab66              # double 0.66521070126087234
	.quad	0x3fbe18ae4c6d5f58              # double 0.11756409994029349
	.quad	0x3fcc184f99586c70              # double 0.21949191081589303
	.quad	0x3fa60157259c1610              # double 0.042978976574925665
	.quad	0x3fe8cd2d470e1040              # double 0.77504600408475
	.quad	0x3fe80ab587bbfc02              # double 0.75130726347549648
	.quad	0x3fc4b968c30be104              # double 0.16190824054479702
	.quad	0x3fc506fc64016dd4              # double 0.16427569277844489
	.quad	0x3fee6cc0ed17d3e3              # double 0.95077558810464458
	.quad	0x3fed28134c662ced              # double 0.91114201471046175
	.quad	0x3fef7ffc236c376c              # double 0.98437315863132601
	.quad	0x3fda0d45d9d7ea2a              # double 0.40706011079569981
	.quad	0x3f802c2d53842340              # double 0.0078967610466108562
	.quad	0x3fea320d8b1d3aeb              # double 0.8186099736284097
	.quad	0x3feaae25e1f2e657              # double 0.83375829821234049
	.quad	0x3febb344d3575885              # double 0.86563340451790849
	.quad	0x3fe6b31b3cbdcb93              # double 0.70936357368042235
	.quad	0x3fe2d291eeb13939              # double 0.58820435161195583
	.quad	0x3fec12ab9810d5a0              # double 0.87727908802360232
	.quad	0x3fedb377a0b7b37c              # double 0.92815762891915154
	.quad	0x3fe0378cd391db44              # double 0.50678101846902068
	.quad	0x3feaac666c90db06              # double 0.83354493335977575
	.quad	0x3fd4f6a9c7dde034              # double 0.32755512731773995
	.quad	0x3fe0fa766c2533f7              # double 0.53057404634603145
	.quad	0x3fe1e3c1153776e0              # double 0.55905203002813764
	.quad	0x3fcb4252ca38e2a8              # double 0.2129615294850471
	.quad	0x3fe775b581489479              # double 0.73311877489744781
	.quad	0x3fe21baf4897d001              # double 0.56587948015521772
	.quad	0x3feb2f9b3003ea13              # double 0.84956130388246931
	.quad	0x3feadf061d1fbf7e              # double 0.83972459495815577
	.quad	0x3f9944dfc03d67e0              # double 0.024676796062841677
	.quad	0x3fe2f52927daf4c2              # double 0.59242685112226234
	.quad	0x3fb3f569bb8058a8              # double 0.077963455464074571
	.quad	0x3fd777b25ba9f8d6              # double 0.36668070746953896
	.quad	0x3fa98c3823e41090              # double 0.049897913342676792
	.quad	0x3fb551ee5d4e3680              # double 0.083281419543903112
	.quad	0x3fee8206d49d0d02              # double 0.95337239767141591
	.quad	0x3fd444f3f2e6e842              # double 0.31670855255982044
	.quad	0x3fe6b1ad4b7f92c2              # double 0.70918907876747306
	.quad	0x3fe281de9af75f30              # double 0.578353216808841
	.quad	0x3fd34353d1b027bc              # double 0.30098433949808245
	.quad	0x3fe413a9ac2c18e7              # double 0.6274002421130519
	.quad	0x3fb9025c55105550              # double 0.097692271010904052
	.quad	0x3fce71db6536f7d4              # double 0.23784964029431299
	.quad	0x3fe2f668d20ff406              # double 0.59257927921100939
	.quad	0x3fee3ffa7c84eedc              # double 0.94530987091226448
	.quad	0x3fe8fe7793a11a62              # double 0.78106287797784213
	.quad	0x3fbfcf23f099b528              # double 0.1242544615176554
	.quad	0x3fe5719d4b4cf6e7              # double 0.67011894900471425
	.quad	0x3fe2aea2638cc863              # double 0.58381766742082808
	.quad	0x3fef6567f5c94abe              # double 0.98112867360244826
	.quad	0x3fec698a543d4ab0              # double 0.88788334324848073
	.quad	0x3fe01b0984cb91cc              # double 0.50330043732224672
	.quad	0x3fe156c8d09c6797              # double 0.54184380287482525
	.quad	0x3fe5aa76d345f5e8              # double 0.67705861343682461
	.quad	0x3fe749690d5a1ce0              # double 0.72771122558415513
	.quad	0x3fe6d79285a19c38              # double 0.71381498432027168
	.quad	0x3fd533a38155886c              # double 0.33127677564892255
	.quad	0x3fc245613cc14dd8              # double 0.14274230448300673
	.quad	0x3fe1dae489861881              # double 0.55797030315513052
	.quad	0x3feacc4ec0340fc9              # double 0.83743989505500693
	.quad	0x3fedb27b9fead5a3              # double 0.92803746446468371
	.quad	0x3fe228bfa4f851b3              # double 0.56747419567778079
	.quad	0x3feecf8c87c610ed              # double 0.96283556478786425
	.quad	0x3fe6a1d83c32f4b7              # double 0.70725642926813392
	.quad	0x3fe88eda444e375f              # double 0.76743806210445686
	.quad	0x3fe7b0087ec4f4e0              # double 0.74023842582360188
	.quad	0x3fd2b7fd42fc41a4              # double 0.29247981587925609
	.quad	0x3fe3a756e1fe8383              # double 0.61417717113009507
	.quad	0x3fd9b1986cade830              # double 0.40146456349578141
	.quad	0x3febbaf498d047de              # double 0.86657171102910602
	.quad	0x3fedf8e47cb44a99              # double 0.93663238865186138
	.quad	0x3fe103c6e95a5e63              # double 0.53171105934866281
	.quad	0x3feba144074db87c              # double 0.86343575884326595
	.quad	0x3fdef7d526f312fa              # double 0.48387650302565499
	.quad	0x3fe931b7f9be150d              # double 0.78731917169412358
	.quad	0x3fe4b08591cc9571              # double 0.64654806591413039
	.quad	0x3feb523c33d4442b              # double 0.85378847239383526
	.quad	0x3fe0825062021ad1              # double 0.51590747015219496
	.quad	0x3fda0de563e87fea              # double 0.407098147932628
	.quad	0x3fd549083e781328              # double 0.33258253193371212
	.quad	0x3feba59e45274f1d              # double 0.86396707064202227
	.quad	0x3fbb48785e5905b8              # double 0.1065745573369189
	.quad	0x3fe3aab22ef94cb3              # double 0.61458691763473039
	.quad	0x3fe44e6a6b845ba2              # double 0.63457222937983127
	.quad	0x3fdb46de9bc21cee              # double 0.42620053492323862
	.quad	0x3fe2b2f3d4d5b190              # double 0.5843447834900406
	.quad	0x3fe37cd5e58dffc0              # double 0.60898871264361532
	.quad	0x3fe74e60e90640c9              # double 0.72831769478400432
	.quad	0x3fd4a6ad8c789c36              # double 0.32267321317562236
	.quad	0x3fdfe9eaf615be12              # double 0.49865221053821174
	.quad	0x3feb2d593d3212b1              # double 0.8492857165552633
	.quad	0x3fd698328c310662              # double 0.35303939524246719
	.quad	0x3fd54a0d0742cfd0              # double 0.33264470776634614
	.quad	0x3fc9435b2fdf25ec              # double 0.19736804807170871
	.quad	0x3fe9b429bc4ae718              # double 0.80324255729576333
	.quad	0x3feb63684aca5c01              # double 0.85588469131005251
	.quad	0x3feeb6722b961d4d              # double 0.95977123749700299
	.quad	0x3fceac8eeebf066c              # double 0.2396410623314752
	.quad	0x3fe40e546d94a717              # double 0.62674924280620103
	.quad	0x3fca4f4bbe745410              # double 0.20554491805583597
	.quad	0x3fc2433aa04da1e4              # double 0.1426766665201874
	.quad	0x3fb4bdb047d7aed0              # double 0.081019418277431087
	.quad	0x3fd7cad5ad5bc460              # double 0.37175504617250077
	.quad	0x3fcb497af6cac040              # double 0.21317994165792875
	.quad	0x3feee7915021082a              # double 0.96576753282739003
	.quad	0x3fcad3442158c970              # double 0.2095723307443893
	.quad	0x3fc97422afd6e4b8              # double 0.19885667405995888
	.quad	0x3fd94e1b512f9e4a              # double 0.39539225509949871
	.quad	0x3fce43567444b988              # double 0.23642998387499525
	.quad	0x3fe3490ed36571bd              # double 0.60266820228894569
	.quad	0x3fd0f92b2d391902              # double 0.2652080480223874
	.quad	0x3fcf405f5c52d108              # double 0.24415199287398814
	.quad	0x3fe9bd2bc09abd1a              # double 0.80434215181404345
	.quad	0x3fd248ecd8ed5b34              # double 0.28570100006384114
	.quad	0x3fe2af4318134099              # double 0.58389429762066236
	.quad	0x3fe60700165ad1a6              # double 0.68835453382648804
	.quad	0x3fecca72bbfcbadc              # double 0.89971291271453024
	.quad	0x3fe5c1ada4ec7c36              # double 0.6798923703353299
	.quad	0x3feb2cfc535380df              # double 0.84924141192098179
	.quad	0x3fce3451adb120a8              # double 0.23597165089654948
	.quad	0x3facf4a3e0f30510              # double 0.056553956231718883
	.quad	0x3fd3f66fe09c2ea8              # double 0.31191632208422471
	.quad	0x3fe646c19de88d78              # double 0.69613724557386458
	.quad	0x3fc363fa4f6f763c              # double 0.15148857954675232
	.quad	0x3fa60412d8ebefa0              # double 0.04299982927292878
	.quad	0x3fcdf739fdd5bf34              # double 0.23410725492748841
	.quad	0x3fee9678e77f884a              # double 0.95586819853293403
	.quad	0x3fe355811c652290              # double 0.60418754144582643
	.quad	0x3fe02a970b8d8bfd              # double 0.50519897705487404
	.quad	0x3fb32fdff0492d78              # double 0.07494926086763154
	.quad	0x3fe29d103ef90d1f              # double 0.58167278575311687
	.quad	0x3fed3f5129999bf8              # double 0.91397913098341999
	.quad	0x3fecd47237fca431              # double 0.90093336996972628
	.quad	0x3fe2c4f1401d5535              # double 0.586540818427841
	.quad	0x3fbd89003f338760              # double 0.11537171881675823
	.quad	0x3fd1ec274dca8ac0              # double 0.28003866764826668
	.quad	0x3fbeb714d61c98b0              # double 0.11998110034309906
	.quad	0x3fef24bc1b61903f              # double 0.97323422763702882
	.quad	0x3feaabd0d0d53bfc              # double 0.83347359454808112
	.quad	0x3fe49c9049ca01a3              # double 0.6441117707436671
	.quad	0x3fb1194dd706d710              # double 0.066792359349019614
	.quad	0x3fe3af26838b898e              # double 0.61513066952129392
	.quad	0x3fee5e4d7a6c768b              # double 0.94901155386806246
	.quad	0x3f8d6d19f8035000              # double 0.014368250733618027
	.quad	0x3fef83b492f90ccc              # double 0.9848273153842455
	.quad	0x3fb4adff592dae70              # double 0.080779990455704497
	.quad	0x3fd756b0b893e2b0              # double 0.36466615700877991
	.quad	0x3fdf2324dc955088              # double 0.48652001897176733
	.quad	0x3fd23421dcfa07ca              # double 0.28443190173868216
	.quad	0x3fd37cebe8327054              # double 0.3044996039914214
	.quad	0x3fe7eaa98bb8b432              # double 0.74739529885630973
	.quad	0x3fdeb7f2666c5788              # double 0.47997722627894079
	.quad	0x3fe03086f8c0fef3              # double 0.50592373451942618
	.quad	0x3fda4bdd67c5cad8              # double 0.41088042387052104
	.quad	0x3fd388f7bda61176              # double 0.30523484726315731
	.quad	0x3fc53fc2229046d4              # double 0.16600825011896936
	.quad	0x3fe3bfbd2cced634              # double 0.61715563537172224
	.quad	0x3fcc2c71181152b8              # double 0.22010625529460071
	.quad	0x3fef74d189012b63              # double 0.98301007040695898
	.quad	0x3fa93b5951b95f70              # double 0.049280921197975114
	.quad	0x3fdc2b82c0cffe62              # double 0.44015568570464414
	.quad	0x3fe2440cb7fc9cd4              # double 0.57080684599795939
	.quad	0x3fc624089d62cadc              # double 0.17297465977534088
	.quad	0x3fef65beebd9c6e3              # double 0.98117013992870416
	.quad	0x3fe81f8906220cc7              # double 0.75384951780179044
	.quad	0x3fe6bc321170304a              # double 0.7104730930891574
	.quad	0x3fb683f67d2cfb10              # double 0.087951093254542422
	.quad	0x3fe94b83c56db636              # double 0.79046810684457713
	.quad	0x3fa2c1c315898b60              # double 0.036634537104666576
	.quad	0x3fbf77ef6e635f98              # double 0.12292381711028921
	.quad	0x3fedc432f60e6f9b              # double 0.93020008142365229
	.quad	0x3fbe9ee4bd21e540              # double 0.11961202256670322
	.quad	0x3feff95d4af160e5              # double 0.99918999326021362
	.quad	0x3fbd1357bf431760              # double 0.11357639712795509
	.quad	0x3fd9ab1643f9a5d2              # double 0.4010673202343159
	.quad	0x3fe2ffabf2763063              # double 0.59370992046161708
	.quad	0x3f90dc4130f3e4a0              # double 0.016465204823337687
	.quad	0x3fe401b5ee9729ba              # double 0.62520882224753582
	.quad	0x3fe3a3a120961c53              # double 0.61372429241681414
	.quad	0x3fd32a04210140ba              # double 0.29943946097501917
	.quad	0x3fd14b276289747a              # double 0.2702120268130056
	.quad	0x3feb642dab4578be              # double 0.85597880793991243
	.quad	0x3feed0c7967bcf8d              # double 0.96298579589209654
	.quad	0x3fb3517d9268f2e8              # double 0.075462196583383823
	.quad	0x3fdbc4adfcb18660              # double 0.43387937237830521
	.quad	0x3fd3ab85b993e8fa              # double 0.30734389422254049
	.quad	0x3feb2624cb562cc8              # double 0.84840621675666572
	.quad	0x3fd1695ad35f57fc              # double 0.2720553459342907
	.quad	0x3fcbf032242e1e1c              # double 0.21826769606217133
	.quad	0x3fe001324cc2098d              # double 0.50014605514324872
	.quad	0x3fbc55014ee53d10              # double 0.1106720750442387
	.quad	0x3fdc4f637c067472              # double 0.44234549629056297
	.quad	0x3fb4a90e33411fa8              # double 0.080704581750181803
	.quad	0x3fd0a5952aca7962              # double 0.26010636500168094
	.quad	0x3fe2fcdd04b5beca              # double 0.59336710853491437
	.quad	0x3fda2b160ffe9466              # double 0.40887977182348434
	.quad	0x3feac77e312511c6              # double 0.83685216520876149
	.quad	0x3fdcc72ee3c533a8              # double 0.44965717547602901
	.quad	0x3fec0cb16f9014e4              # double 0.87654945172894516
	.quad	0x3fe908e033836dba              # double 0.78233346997460917
	.quad	0x3fe3fbf64e15066a              # double 0.62450709581771702
	.quad	0x3fd0862fe8b2ffe4              # double 0.25819013332875174
	.quad	0x3feab9c9285aeffa              # double 0.83517892724876153
	.quad	0x3fe63070d2745cba              # double 0.69341317276384662
	.quad	0x3fdf72d50e398310              # double 0.49138380421759198
	.quad	0x3fe08b8996a5a945              # double 0.51703338073029015
	.quad	0x3fe1140775d18d80              # double 0.5336949635642867
	.quad	0x3fdaac63a98f6eae              # double 0.41677180822964999
	.quad	0x3febfd1abb07b9fd              # double 0.874646535199474
	.quad	0x3fda90ab04b30616              # double 0.41507983645360136
	.quad	0x3fe9a59ebe6c18be              # double 0.80146729652258109
	.quad	0x3fe54ec13cf2a7b7              # double 0.66586362747079064
	.quad	0x3fd0ce623ae96eae              # double 0.2625966620741832
	.quad	0x3fbaac60a2ddad90              # double 0.10419277168482766
	.quad	0x3fd1dc6b299a04ee              # double 0.27907828390750822
	.quad	0x3feadb267fcb8527              # double 0.83925175628624948
	.quad	0x3fe1ee67dfbf3a3b              # double 0.56035226536352611
	.quad	0x3feea1574a1f2cc8              # double 0.95719494320783216
	.quad	0x3fe7a9cc1b547f5a              # double 0.73947720849899246
	.quad	0x3fe93a3084ef4eb8              # double 0.78835321391894464
	.quad	0x3feec70c91ba2668              # double 0.96179798567136476
	.quad	0x3fdb451915c80c22              # double 0.42609240653126979
	.quad	0x3fc7b0e53bb32204              # double 0.18508592047716388
	.quad	0x3fea8793d6e965a3              # double 0.82904998755400461
	.quad	0x3fefe4631c434fbb              # double 0.99662929077248152
	.quad	0x3fd4eb03cdc19ec2              # double 0.32684416860000109
	.quad	0x3fe1dad2a231c921              # double 0.55796176603897518
	.quad	0x3fe6648c85c9e2ec              # double 0.69977403765287027
	.quad	0x3fe5f4ae4a39d3e8              # double 0.68611826417202071
	.quad	0x3fd53d093f4df2d4              # double 0.33185034925535928
	.quad	0x3febbe99c18c08ac              # double 0.86701667596959941
	.quad	0x3fd252da4e8b4f90              # double 0.28630693121271467
	.quad	0x3fa91ab2197bf6d0              # double 0.049031797037952907
	.quad	0x3fbcf9c24d7e2dc0              # double 0.11318601982036736
	.quad	0x3fe97ac48fd1698a              # double 0.79623630608993889
	.quad	0x3fef322cca841088              # double 0.97487487367517733
	.quad	0x3fd7da1825996a70              # double 0.37268642112545702
	.quad	0x3fa519007399f9d0              # double 0.041206373321063361
	.quad	0x3fdd4b5363496698              # double 0.45772251792878071
	.quad	0x3fed37031743a012              # double 0.91296534103185167
	.quad	0x3fe13ada78aa835b              # double 0.53843425338355233
	.quad	0x3feec80e11df69cf              # double 0.96192077151072818
	.quad	0x3fcc791f50523300              # double 0.22244635984352357
	.quad	0x3fefc14c9843b5be              # double 0.9923460935512407
	.quad	0x3f73469efb045980              # double 0.0047060213257935635
	.quad	0x3fe3b8386d3604b8              # double 0.61623784380221647
	.quad	0x3fe9f371d9eb1ee8              # double 0.81096737444110278
	.quad	0x3feab313d3602b57              # double 0.83436003956135607
	.quad	0x3fd4935ef0901f92              # double 0.32149480335692104
	.quad	0x3fe1b7e0e4373799              # double 0.55369610379578937
	.quad	0x3fc08db34ddcfdc8              # double 0.12932435323635461
	.quad	0x3fe1ec1a1d702a4a              # double 0.56007104634893179
	.quad	0x3fb0169dff49f358              # double 0.062845110727676512
	.quad	0x3fccdbfaf3f9ff48              # double 0.22546326554219775
	.quad	0x3fe369186c45d4b8              # double 0.6065790285780599
	.quad	0x3fd8a23ff12de9c0              # double 0.38490294029875471
	.quad	0x3fd5fd10ba9984a0              # double 0.34357088301300998
	.quad	0x3fcab4068d94bf38              # double 0.20861894524704794
	.quad	0x3fe222c189e4eff2              # double 0.56674267704465664
	.quad	0x3fd013eac766bb2e              # double 0.25121564362318594
	.quad	0x3fed0fe7a2240a90              # double 0.90819150608179378
	.quad	0x3fe19c079a868235              # double 0.55029659443613943
	.quad	0x3fe5a16c843a51c5              # double 0.67595506501907521
	.quad	0x3fd8bbb7975292b4              # double 0.38645734574883339
	.quad	0x3fdf4b16d8c2dafa              # double 0.48895808380204608
	.quad	0x3fe55460cdbcaf77              # double 0.66655006583231013
	.quad	0x3fe6d36b7c63c06a              # double 0.71330808920721478
	.quad	0x3fd3bd9560ef2546              # double 0.30844625917650992
	.quad	0x3fe55cf90230a696              # double 0.6675992052816635
	.quad	0x3fc0ac903223edf0              # double 0.13026621292361495
	.quad	0x3fdd120c4ab5d136              # double 0.45422656341476697
	.quad	0x3fdb73ff933823b2              # double 0.42895497681507344
	.quad	0x3fe72bc1eb9dab84              # double 0.72409149187784339
	.quad	0x3fdfadba7fddfcd4              # double 0.49497854697251609
	.quad	0x3fed8ffb9834925a              # double 0.92382602431878103
	.quad	0x3fdc053be3578d86              # double 0.43781945420615676
	.quad	0x3fc6eb61929c3544              # double 0.17905826243115019
	.quad	0x3fd574a30cde80fe              # double 0.33524395233872883
	.quad	0x3fba5eda4a708780              # double 0.10300983731624846
	.quad	0x3fb0c2ecb5f47cb0              # double 0.06547431413899818
	.quad	0x3fee992c039d836a              # double 0.95619774538145674
	.quad	0x3fe5b6263ae08f4c              # double 0.67848502635431762
	.quad	0x3fe71cb33ab539d6              # double 0.72225343195332914
	.quad	0x3fd3267adcdf8726              # double 0.29922362870830665
	.quad	0x3fdbc5adf775f352              # double 0.43394040266121181
	.quad	0x3fd8b52169a58e24              # double 0.38605532948551713
	.quad	0x3fe28d1c151634fa              # double 0.57972530478005457
	.quad	0x3fc60cc9b813d27c              # double 0.17226525772243295
	.quad	0x3fc9fed0ca53f9e8              # double 0.20308885459230841
	.quad	0x3fd981fe60dfcf52              # double 0.39855918369652443
	.quad	0x3fd44d83345d2838              # double 0.31723098863278976
	.quad	0x3fc0a4b72cc8bbd0              # double 0.1300267189667168
	.quad	0x3fdd8c0db578c32a              # double 0.46167319032524523
	.quad	0x3fe68557db23e637              # double 0.70377724457575297
	.quad	0x3fd51630ce4a13aa              # double 0.32947940965123712
	.quad	0x3fd6b4bd0b11fa02              # double 0.35478139954639698
	.quad	0x3fd6cb019f936c8e              # double 0.356140523753944
	.quad	0x3fe0527522ce163c              # double 0.51006562040192405
	.quad	0x3fd3cee03608adde              # double 0.30950169827221241
	.quad	0x3fd65d87e96ff16c              # double 0.34945867344483506
	.quad	0x3fdf01496d003048              # double 0.48445354122737116
	.quad	0x3feb920809622304              # double 0.86157609780011101
	.quad	0x3fb906825fe47f70              # double 0.097755573664924488
	.quad	0x3fc4e6b9f8d4ed78              # double 0.16329121255862922
	.quad	0x3fd197af336e7938              # double 0.27488307974444437
	.quad	0x3fe1cf31d18d42f8              # double 0.55654231002890153
	.quad	0x3fd4587fa21e46ec              # double 0.31790152389395021
	.quad	0x3feed6bdfcaaa7f8              # double 0.96371363972616475
	.quad	0x3fe85dafc1697ce0              # double 0.76143634582322405
	.quad	0x3fdce264607ff464              # double 0.45131787704287363
	.quad	0x3fe322108ebd8e5b              # double 0.59790828589434442
	.quad	0x3fe94fe1fa8ad12a              # double 0.79100130971940996
	.quad	0x3fd68752b86fe60a              # double 0.35200946818767476
	.quad	0x3fdf280829eb4dd0              # double 0.48681835263888917
	.quad	0x3fde12b29376ad04              # double 0.46989120865573875
	.quad	0x3fe3ce6443821e0e              # double 0.61894429383477401
	.quad	0x3fd8b33181331372              # double 0.38593709580555136
	.quad	0x3fe15ac22001f94d              # double 0.54232889415269769
	.quad	0x3fd7e614fb643694              # double 0.37341808843562174
	.quad	0x3fd2016a2cedf594              # double 0.2813363493695189
	.quad	0x3fc5f93ecadd408c              # double 0.17166886239511248
	.quad	0x3fe85c53daec9f1e              # double 0.76127045401242177
	.quad	0x3fecf470493180bc              # double 0.90483869834499541
	.quad	0x3fcea0a11886c10c              # double 0.23927701661660483
	.quad	0x3fca447c7254b420              # double 0.20521503050386602
	.quad	0x3fe4c41976b6485d              # double 0.64893792329736366
	.quad	0x3fbcd013e1ae23c8              # double 0.11255001315852475
	.quad	0x3fb629ae9c54e290              # double 0.086573517958536294
	.quad	0x3fcc1494b67e7b10              # double 0.21937807951777488
	.quad	0x3fee466cb7c05be8              # double 0.94609676255174424
	.quad	0x3fe6a23860149937              # double 0.70730227246966748
	.quad	0x3fe740e99e09af01              # double 0.72667389742625244
	.quad	0x3fef40ad05e58df1              # double 0.97664500381182339
	.quad	0x3fe772aa482b090f              # double 0.73274721236546891
	.quad	0x3fda2e944640612e              # double 0.4090929685639989
	.quad	0x3fd540b1d7fa8c14              # double 0.33207365123433985
	.quad	0x3fc29e0ba2a2c8c8              # double 0.14544816437916652
	.quad	0x3fee9e46e30f4157              # double 0.95682091090751953
	.quad	0x3fee4cd3ef240038              # double 0.94687840182451221
	.quad	0x3fdde5e614c5b732              # double 0.46715690640018004
	.quad	0x3fc23dccf18d71c0              # double 0.14251100344234935
	.quad	0x3fe7228bfa907fc9              # double 0.72296713770264731
	.quad	0x3fedffdf05e57326              # double 0.93748427535647205
	.quad	0x3fc6c0ff573e88b0              # double 0.17776481399511601
	.quad	0x3fd4bdc519f7119e              # double 0.32408263717322849
	.quad	0x3fe0a34dd442647e              # double 0.51993457276252264
	.quad	0x3fb49d00ba3853b8              # double 0.080520673240541352
	.quad	0x3fd571a64e06e552              # double 0.33506162280862839
	.quad	0x3fd9dfa6574e03e6              # double 0.4042754986367626
	.quad	0x3fc9619c1fdff708              # double 0.19829131657018473
	.quad	0x3fd288bd49f06832              # double 0.28959591122259376
	.quad	0x3fdd6058134de2ec              # double 0.45900537381343898
	.quad	0x3fd10f6b61b5d910              # double 0.26656612913156241
	.quad	0x3fdb3be5c9bb2bc2              # double 0.42553085995012563
	.quad	0x3fef7d0271c23936              # double 0.98400995462888008
	.quad	0x3fd05d67c7deb5c2              # double 0.25570101278830404
	.quad	0x3fab1cdbc7f4cc80              # double 0.052954548033448567
	.quad	0x3fb795e6ad718690              # double 0.092131059021563155
	.quad	0x3fba0015b6d30a90              # double 0.10156379426465834
	.quad	0x3feffccabd44d418              # double 0.99960839239668342
	.quad	0x3fd1e7a97224631a              # double 0.27976452013676723
	.quad	0x3fbb9addf496adf8              # double 0.10783183308983968
	.quad	0x3fdc4a7b04344192              # double 0.4420459309631265
	.quad	0x3fea894b461d6a14              # double 0.82925952619854337
	.quad	0x3feae4201a2e06ff              # double 0.84034733880272927
	.quad	0x3fefdd40368c5739              # double 0.99575815824457614
	.quad	0x3fb234ae0bbfdaa0              # double 0.071116330975068198
	.quad	0x3fd75e12bc040628              # double 0.36511677132520726
	.quad	0x3fe4c518aa358f57              # double 0.64905961269367196
	.quad	0x3fe177a89ef0ae1f              # double 0.54585677187919035
	.quad	0x3fb3ea417a8ed030              # double 0.077793209477761804
	.quad	0x3fe356b5cbd3254a              # double 0.60433473405388694
	.quad	0x3fe3ae8f73755327              # double 0.61505863714646558
	.quad	0x3fe07102446ed647              # double 0.51379502645313202
	.quad	0x3fe2303c0463a10a              # double 0.56838799340496959
	.quad	0x3fe1607aa1716ac4              # double 0.54302722484438748
	.quad	0x3fe13481b236380f              # double 0.53765950018873976
	.quad	0x3fdfe23958d86164              # double 0.49818261791508278
	.quad	0x3feaf3e4a14d6252              # double 0.84227210525848251
	.quad	0x3fed9b9cfb3199f5              # double 0.92524575291900979
	.quad	0x3fd3f80e9df019e2              # double 0.31201520370123437
	.quad	0x3fe9fde901d9360a              # double 0.81224489556342516
	.quad	0x3fe66b53803359c6              # double 0.70060133971383531
	.quad	0x3fd9639e65ba42ba              # double 0.39670524534544038
	.quad	0x3fbfaf792cc796b0              # double 0.12377126067402844
	.quad	0x3fece8917baa3ec1              # double 0.90338968423198918
	.quad	0x3fe2f86e1bbb599d              # double 0.59282594124197241
	.quad	0x3fe772db74d01921              # double 0.73277066054359719
	.quad	0x3fe649d34d10c91a              # double 0.69651188899868832
	.quad	0x3fd665068952db08              # double 0.34991610918534422
	.quad	0x3fdc8dd289cd3980              # double 0.44615615327065683
	.quad	0x3fe1ed5a1fc9d8bb              # double 0.56022363861736524
	.quad	0x3fd4626ebdf69868              # double 0.31850784827327638
	.quad	0x3fe51ad2b4957e8c              # double 0.65952430029206388
	.quad	0x3fe0d32770c7d43b              # double 0.52577564265687415
	.quad	0x3fe0cfb523c7d5d8              # double 0.52535492885970836
	.quad	0x3fde3cff4fae4346              # double 0.47247298032111862
	.quad	0x3fbc9b5411a553c8              # double 0.11174512320333385
	.quad	0x3fabb56e67509ef0              # double 0.054118585693059162
	.quad	0x3fe32f1ff879998a              # double 0.59950254946015602
	.quad	0x3fd58bd676d953e0              # double 0.33666001898137488
	.quad	0x3fe4b658688e5a5a              # double 0.64725895329577132
	.quad	0x3fd7615ff92f5bde              # double 0.36531829199287624
	.quad	0x3fe06c067794a641              # double 0.51318667750928892
	.quad	0x3fe7b4b8d9587b8b              # double 0.74081079912490233
	.quad	0x3fee4ba3ec811524              # double 0.94673343841774171
	.quad	0x3fbfda5c7d1a9c48              # double 0.12442567877097688
	.quad	0x3fdf62bdb6f5e756              # double 0.49040167681925106
	.quad	0x3fc321edbc3437e0              # double 0.14947292031905501
	.quad	0x3fd5e459e863e7fc              # double 0.34206245130883395
	.quad	0x3fcc9ec8f5426e14              # double 0.223595733409511
	.quad	0x3fc7cffa14ebe824              # double 0.18603445073660041
	.quad	0x3fd10c4f2580453a              # double 0.26637629186832934
	.quad	0x3fa5cfea6b517b30              # double 0.042601895904900267
	.quad	0x3fe98c113b48fc2c              # double 0.79834806040878936
	.quad	0x3fee804e2a03d6a8              # double 0.95316227155736488
	.quad	0x3fe00de2b94ec98f              # double 0.50169502442285985
	.quad	0x3feeaccc856a4cd9              # double 0.95859361703551393
	.quad	0x3fd0760b94c3f200              # double 0.25720490959045605
	.quad	0x3fa99528514943c0              # double 0.049966106341009731
	.quad	0x3f9089351ccae820              # double 0.016148404962884055
	.quad	0x3fe373487fd8e4e4              # double 0.60782265634693688
	.quad	0x3fe0b662d0e099b9              # double 0.52226391598087851
	.quad	0x3fe479f34677cdbb              # double 0.63988651049878997
	.quad	0x3fe9d6e90e001e11              # double 0.80748417601074796
	.quad	0x3fe62a4afd0a1399              # double 0.69266271039724636
	.quad	0x3fd001d23a380f28              # double 0.25011115727851285
	.quad	0x3fe3964da17a0011              # double 0.61209756410971938
	.quad	0x3fe6a36373d33d8e              # double 0.70744488355733082
	.quad	0x3fe2b9897fa5f33e              # double 0.58514857226655415
	.quad	0x3f432d506c874000              # double 5.8523585271963441E-4
	.quad	0x3fea75f72d508511              # double 0.82690008974546647
	.quad	0x3fe33364831512c3              # double 0.60002351381316321
	.quad	0x3fe09dfeab278af0              # double 0.5192864745007153
	.quad	0x3fd48f27a817ef66              # double 0.32123748221760307
	.quad	0x3fee88b24cb97ca1              # double 0.95418658242478582
	.quad	0x3fefa2f90fc69bfe              # double 0.98864415246214299
	.quad	0x3feb1c66d1b3c30a              # double 0.84721699674091266
	.quad	0x3fcf3395d56eb25c              # double 0.24376175805572842
	.quad	0x3fe9b092c33475b8              # double 0.80280435682259732
	.quad	0x3fe690d9ed527b2f              # double 0.70518204071036006
	.quad	0x3fd37571944e7cba              # double 0.30404319270196434
	.quad	0x3fd137bb7bc3b3b6              # double 0.26902663313267838
	.quad	0x3fe0cdc0b93bec22              # double 0.52511631182222041
	.quad	0x3fd1e4e1744e7fb2              # double 0.27959476812429351
	.quad	0x3fb0f243fb1196d0              # double 0.066196678920813712
	.quad	0x3fe2847c32ea4743              # double 0.57867250389447411
	.quad	0x3feaac5fefcba95c              # double 0.83354183993405284
	.quad	0x3fd4e9f383549836              # double 0.32677924943198222
	.quad	0x3fe6a9ba13a90c37              # double 0.70821861114416762
	.quad	0x3fe9942189528c4e              # double 0.79933239765922237
	.quad	0x3fc546a04a64eba8              # double 0.16621783859758676
	.quad	0x3fe0bbea50f6e60c              # double 0.52293887914055537
	.quad	0x3fc86b2c7f3c6fb4              # double 0.19077068531703179
	.quad	0x3fed9f4344273bd9              # double 0.92569125472243308
	.quad	0x3fe0fb0d2d64a627              # double 0.53064593187190645
	.quad	0x3fe382b1cc29cf18              # double 0.60970392108581262
	.quad	0x3fe21fb247cd473f              # double 0.566369190443062
	.quad	0x3feb4fde752e837f              # double 0.85349963080453495
	.quad	0x3fb8afb68ea85ae0              # double 0.096431169346355982
	.quad	0x3fe9479e1631da43              # double 0.78999237379941467
	.quad	0x3fe60ebffa0ae1d5              # double 0.68930052601268221
	.quad	0x3fe90b0b65ad26a0              # double 0.78259820803323876
	.quad	0x3fcfa064c4047410              # double 0.24708232470666802
	.quad	0x3fd2144a9ad3b2e6              # double 0.28248849029368583
	.quad	0x3fedde905b9113af              # double 0.93341844448206313
	.quad	0x3fcef6d60775b47c              # double 0.24190783848044706
	.quad	0x3fd81f39c5936f3a              # double 0.3769058637096695
	.quad	0x3fe51242f659bf43              # double 0.65847919574114433
	.quad	0x3f43bd7ec9405000              # double 6.0242357949613634E-4
	.quad	0x3fb8a7b675f12ff8              # double 0.096309093279330571
	.quad	0x3fe1b434d60279c4              # double 0.5532478504063012
	.quad	0x3fe77a16fde4b3b1              # double 0.7336535414557287
	.quad	0x3fc88c57b05fcb4c              # double 0.19178291427632599
	.quad	0x3feb0c58170019bf              # double 0.84525684826149206
	.quad	0x3febc767f3923813              # double 0.86809156010144972
	.quad	0x3fe76d9c37b3f75c              # double 0.73213015441408968
	.quad	0x3fec57646cf3f65a              # double 0.88566800384405586
	.quad	0x3fe2a6b185a5a73d              # double 0.58284832098909301
	.quad	0x3fd252e47aea1244              # double 0.28630935672143587
	.quad	0x3fd02e44afa49368              # double 0.25282399323105276
	.quad	0x3fecf7b5988b07ae              # double 0.90523795884677383
	.quad	0x3fd65481d7da134a              # double 0.34890791014941114
	.quad	0x3fcff363d5d82550              # double 0.24961517278306156
	.quad	0x3fea207645841b42              # double 0.81646264626838438
	.quad	0x3fef992ac7a55d2c              # double 0.98744715684271033
	.quad	0x3fe3f858f8289257              # double 0.62406586140111642
	.quad	0x3fd4b0815dd0f9ba              # double 0.32327303086995196
	.quad	0x3fee8e213c228e69              # double 0.95484983201135976
	.quad	0x3fee22d9121dd6b3              # double 0.94175389803304765
	.quad	0x3fc5f960c9633630              # double 0.1716729148233056
	.quad	0x3fec814c90b17da4              # double 0.89078357944884034
	.quad	0x3fbf74ab74e4e728              # double 0.12287398914204728
	.quad	0x3fdd3b7cb3470c1c              # double 0.45675580508776803
	.quad	0x3feac7a0327e4914              # double 0.83686838018391762
	.quad	0x3fed7fbca0deaccf              # double 0.92184287471664017
	.quad	0x3fe221d753b54424              # double 0.56663099621994606
	.quad	0x3f943a2ac47e12a0              # double 0.019753139727543556
	.quad	0x3fecae09fd855f3a              # double 0.89624499812905545
	.quad	0x3fd194186b826988              # double 0.27466402529685086
	.quad	0x3fdae3b1bdf5f0fe              # double 0.42014735747194709
	.quad	0x3fd7b1474711c9c4              # double 0.37019521656398191
	.quad	0x3fc80c02928cc724              # double 0.18786651759870054
	.quad	0x3fdfe58ed6c9a404              # double 0.49838610625607793
	.quad	0x3fe4cc7e55f7d72b              # double 0.64996258536004825
	.quad	0x3fd1d5e4ace37258              # double 0.2786800087322141
	.quad	0x3fe95d7330325662              # double 0.79265746510891355
	.quad	0x3febf92a39e4e389              # double 0.87416564280930331
	.quad	0x3fd89cd7fb12e334              # double 0.38457297820018543
	.quad	0x3fe175790afef1a2              # double 0.54558994434005492
	.quad	0x3fe0315faaaa29c1              # double 0.50602706273030418
	.quad	0x3fc5531aaa7ed37c              # double 0.16659863781901751
	.quad	0x3fe0444123582b5d              # double 0.50833184149938015
	.quad	0x3fcf7def0775a678              # double 0.24603069175946124
	.quad	0x3fda643030bb5f94              # double 0.41236500510194074
	.quad	0x3fe5acb628c8f590              # double 0.67733295408076977
	.quad	0x3fea98b84316feb4              # double 0.83114255050164453
	.quad	0x3fecd1a2823a3e99              # double 0.90059018549978298
	.quad	0x3fd13f4417d7191e              # double 0.2694864495100705
	.quad	0x3fe9f59b6ff418f6              # double 0.81123134485167614
	.quad	0x3feac66f480cca4c              # double 0.8367229850030724
	.quad	0x3fe9ac42290732a2              # double 0.8022776414232633
	.quad	0x3fe3721d8822c3a6              # double 0.60768009747527141
	.quad	0x3fc4fd73ae055b74              # double 0.16398473736873209
	.quad	0x3fe0a478a2114873              # double 0.52007705358324896
	.quad	0x3fdab6dfb779030e              # double 0.41741173665290965
	.quad	0x3fe31bb005f25d7f              # double 0.59712983285400856
	.quad	0x3fe9b7f8c21652a2              # double 0.80370748431831296
	.quad	0x3fd71b07954b7b28              # double 0.36102475719046589
	.quad	0x3fed5d88be4af209              # double 0.9176677433638939
	.quad	0x3fc13111dba3d6d8              # double 0.13430999016389111
	.quad	0x3fdec80bb1884c58              # double 0.48095981919431585
	.quad	0x3fbb3ae84841fbb8              # double 0.10636760486703067
	.quad	0x3fd474fcf30cdeee              # double 0.31964038596514299
	.quad	0x3fa2620c0235d6d0              # double 0.035904288549244989
	.quad	0x3fbcd6615d0524e8              # double 0.11264618416784666
	.quad	0x3fe4f2b487c4bbd9              # double 0.65462709920199835
	.quad	0x3fb313a7e0a08128              # double 0.074518673267907176
	.quad	0x3fe30c624c659256              # double 0.59526171609156608
	.quad	0x3fe2753d1b34c56f              # double 0.57681136430453062
	.quad	0x3fdc1b30776bd74c              # double 0.43915950453025654
	.quad	0x3fd45836a7d49962              # double 0.31788412465757265
	.quad	0x3fee5dc573b5f115              # double 0.94894669151065847
	.quad	0x3fdd48b0df5f6880              # double 0.45756170095194904
	.quad	0x3fdc24ab7fa7d15a              # double 0.43973815409051087
	.quad	0x3fcad8ef7bac9068              # double 0.20974534548543322
	.quad	0x3fe13b788f52be54              # double 0.53850963585677869
	.quad	0x3fe57e0d397b134b              # double 0.67163716532432127
	.quad	0x3feb4aeffa6630f4              # double 0.85289763361063686
	.quad	0x3fb3a1f0ee2ed4d8              # double 0.076689775610094713
	.quad	0x3fe032806dfc587d              # double 0.50616475564562757
	.quad	0x3fe9d73aee002043              # double 0.80752321705313823
	.quad	0x3fe3db08025edb98              # double 0.62048721755023717
	.quad	0x3fe89db4ce730020              # double 0.76925125429261598
	.quad	0x3fdd3281b1aca388              # double 0.45620767928135608
	.quad	0x3fe04132035fb593              # double 0.50795841845472223
	.quad	0x3fcc2b1f7c1a7c74              # double 0.22006600913752872
	.quad	0x3fee55672ac89bfb              # double 0.94792517048051594
	.quad	0x3fe766a034deba5f              # double 0.73127756429841984
	.quad	0x3fd4d66d5f0ecf7e              # double 0.325587599592147
	.quad	0x3fcaa60a529beb34              # double 0.20819214852948564
	.quad	0x3fe3adbaf0fd1a9b              # double 0.61495730465033505
	.quad	0x3feefdd0828548c5              # double 0.96848321430504624
	.quad	0x3fd34177c9dbe00e              # double 0.30087084496290195
	.quad	0x3fef4f9b5f8d686c              # double 0.97846764242718853
	.quad	0x3fe16c66933ff6bb              # double 0.54448250541437149
	.quad	0x3fc28480177ee660              # double 0.14466859004260169
	.quad	0x3fe7925a01732e31              # double 0.73661518366993139
	.quad	0x3fd0e6505de5951a              # double 0.26405724687204357
	.quad	0x3fa610077963d550              # double 0.043091043060409562
	.quad	0x3fc8199208c79098              # double 0.188280348097696
	.quad	0x3fec40d1176f7450              # double 0.88291220261783998
	.quad	0x3fe85915e02cd851              # double 0.76087468895162591
	.quad	0x3fd3acf090efc758              # double 0.3074304023167449
	.quad	0x3fcb4737b1cc28f0              # double 0.21311088735121286
	.quad	0x3fe78848a88b792e              # double 0.73538620871457794
	.quad	0x3fe646924f0d8681              # double 0.69611468734747473
	.quad	0x3fd72956202c4cb8              # double 0.36189797536753643
	.quad	0x3fda28e8de4a142e              # double 0.40874692638346033
	.quad	0x3f85864e8ad5a900              # double 0.010510076152702386
	.quad	0x3febf1abc9554219              # double 0.87325085947856274
	.quad	0x3fd17bbd4077e104              # double 0.27317744537096211
	.quad	0x3fbdf7b6030d9c40              # double 0.11706101965465709
	.quad	0x3fc81eb66789ddb8              # double 0.18843727164833779
	.quad	0x3fde0872cb2057ba              # double 0.46926565014416222
	.quad	0x3fe0454841e4a804              # double 0.50845730657351895
	.quad	0x3fef6e85de892ece              # double 0.98224156822240061
	.quad	0x3fd8e9d85c23f530              # double 0.38927277563182638
	.quad	0x3fd41d3b739597c4              # double 0.31428419387372863
	.quad	0x3fdbaba29c88b304              # double 0.43235078131219518
	.quad	0x3fdbe2c9e3b04396              # double 0.43571707949836858
	.quad	0x3fe9a090b0c726ce              # double 0.80085024382534598
	.quad	0x3fe73ebfd0d09f7f              # double 0.72640982422034017
	.quad	0x3f98dcf0e38ab200              # double 0.024280322921798714
	.quad	0x3feff86b8fb4664a              # double 0.99907472674676367
	.quad	0x3fe502b18a84bd2e              # double 0.65657879881283576
	.quad	0x3fec3d2378f3bb25              # double 0.88246320365383168
	.quad	0x3fc0ea65756bd690              # double 0.13215320809802167
	.quad	0x3fd28d720f379d06              # double 0.28988315092142647
	.quad	0x3fc297a78b41a478              # double 0.14525312709455185
	.quad	0x3fe2b79895fcd7ea              # double 0.58491162580935208
	.quad	0x3feddfba08db4b94              # double 0.93356038789566975
	.quad	0x3fe8b3d2c448c24c              # double 0.7719510873485631
	.quad	0x3fecf0cbf52dfd25              # double 0.90439412962578969
	.quad	0x3fd1e5144dea84f6              # double 0.27960689171784681
	.quad	0x3fd5eb83545d91ec              # double 0.34249957312411428
	.quad	0x3fe4a0ce46f23d82              # double 0.64462961060228019
	.quad	0x3fb31805b2c89c80              # double 0.074585300587033387
	.quad	0x3feda104669fa2b9              # double 0.92590541881244015
	.quad	0x3fd78b2968a3b0be              # double 0.36786875933354313
	.quad	0x3fde73213a30b63e              # double 0.47577696497578248
	.quad	0x3fd6fd8dd43a4710              # double 0.35922570920330177
	.quad	0x3feb9317bf791082              # double 0.86170565983822223
	.quad	0x3fdb4e073cc3526c              # double 0.42663746770748534
	.quad	0x3fe4838348c477f9              # double 0.64105381214517287
	.quad	0x3faf337919e404d0              # double 0.060939583216176652
	.quad	0x3fc9b1851784e588              # double 0.20072997711558238
	.quad	0x3fe5f91f5f6b0422              # double 0.6866604674943384
	.quad	0x3fca93f5219ba890              # double 0.20764030591027849
	.quad	0x3f91ae5a9e750740              # double 0.01726667015214578
	.quad	0x3fed6b875b34cfbe              # double 0.91937606633882019
	.quad	0x3fccf50c75a1dfc4              # double 0.22622829192891747
	.quad	0x3fee9125226c5c0f              # double 0.95521790240570847
	.quad	0x3fd38d255e50644e              # double 0.30548986635546249
	.quad	0x3fd434fea5440374              # double 0.31573454035974824
	.quad	0x3fee95ce8938b245              # double 0.95578696061199564
	.quad	0x3fe4d0b56f5cf808              # double 0.6504771399556839
	.quad	0x3fe0c823d3c18dd2              # double 0.52443114622695419
	.quad	0x3fe1260ccce1d451              # double 0.53589477554363374
	.quad	0x3fe4689ca0b5437f              # double 0.63776999843877025
	.quad	0x3feaa7f48c66636e              # double 0.83300235196939609
	.quad	0x3fdfb76178781da2              # double 0.49556767239161037
	.quad	0x3fef5f7553e9ca70              # double 0.9804026259356089
	.quad	0x3fe24774d582cc4e              # double 0.57122270299294953
	.quad	0x3fdf4365ebc4c610              # double 0.48848865532190278
	.quad	0x3fe891f5a7823766              # double 0.7678173324254487
	.quad	0x3fe9a0bbab8a7aa0              # double 0.80087073806847186
	.quad	0x3fe0308c2bfaf050              # double 0.50592621412170935
	.quad	0x3fa04403ad1cc220              # double 0.0317689083880206
	.quad	0x3fe54546ed710e2a              # double 0.66470667243306036
	.quad	0x3fe6ed2a82ebabae              # double 0.7164509350817434
	.quad	0x3fea3da5c4460f3f              # double 0.82002533278180312
	.quad	0x3fdb96d7e4e7a80a              # double 0.43108174661631493
	.quad	0x3fe048a8567866b8              # double 0.50886933220609532
	.quad	0x3fc94511768c4b84              # double 0.19742029465177435
	.quad	0x3feb143c0595893c              # double 0.84622002688073605
	.quad	0x3fd708223ab92b76              # double 0.35987144217204248
	.quad	0x3fe2f352f885cb5b              # double 0.59220264949395174
	.quad	0x3fe39c870f3baeb1              # double 0.61285737014028119
	.quad	0x3fbe4ebd37c651f0              # double 0.118388963810794
	.quad	0x3fdb4d81c4fac072              # double 0.42660564647940824
	.quad	0x3fd42b9b64345f00              # double 0.31516155992129313
	.quad	0x3fefc0fa2b7a55dc              # double 0.99230679027339929
	.quad	0x3fe38a64f81e74e7              # double 0.61064384899841861
	.quad	0x3fe59a3de38bd161              # double 0.67507833902940828
	.quad	0x3fb2f0d0adbc4930              # double 0.073987047592059652
	.quad	0x3fec904886932975              # double 0.89261270794058467
	.quad	0x3fedcba004d1fe3d              # double 0.93110657636129412
	.quad	0x3fe69b844812d200              # double 0.70648397518976935
	.quad	0x3f9f31d5bc7acca0              # double 0.030463542584311498
	.quad	0x3fe91d0d88f587da              # double 0.78479649305176769
	.quad	0x3fe3f98312b176a3              # double 0.62420800829905365
	.quad	0x3fde3c3c4f474f46              # double 0.47242648832365253
	.quad	0x3feacbc006f677dc              # double 0.83737183914103807
	.quad	0x3fec0ee768bc94a2              # double 0.87681932884574487
	.quad	0x3febe2853d5c9cf7              # double 0.87140142426224443
	.quad	0x3fe9e992b464f418              # double 0.80976233704825784
	.quad	0x3fec1f4ebf109332              # double 0.87882172887166221
	.quad	0x3fd8919dcdef91fa              # double 0.38388772116584813
	.quad	0x3fec86a86dab667b              # double 0.89143773479300081
	.quad	0x3febec4da20b3851              # double 0.87259561204133196
	.quad	0x3feafe0f44a7520c              # double 0.84351313980966002
	.quad	0x3fcf1f2406a3eb6c              # double 0.2431378395484346
	.quad	0x3fe02e17a9858866              # double 0.50562651738824793
	.quad	0x3fc5888dfe514428              # double 0.16822981756061606
	.quad	0x3fcebb609b17a4b0              # double 0.24009330342167834
	.quad	0x3fef8dcf8844d48a              # double 0.98606087317479418
	.quad	0x3fc3f37afe979ae4              # double 0.15586793357143514
	.quad	0x3fd09358a1593c54              # double 0.25899329907128288
	.quad	0x3fe129ce8dd15d4a              # double 0.53635337542338246
	.quad	0x3fda24ef86f6b45c              # double 0.40850437336013612
	.quad	0x3fd4835888287f1c              # double 0.32051671311090657
	.quad	0x3fecfbe7686d17fb              # double 0.90574999232990139
	.quad	0x3fec5394d08ed86f              # double 0.8852027963064425
	.quad	0x3fdf3351a98d758e              # double 0.4875072627817979
	.quad	0x3fa5c0bcab6fecf0              # double 0.042486091544526761
	.quad	0x3feacd452b5cb2ee              # double 0.83755739659463102
	.quad	0x3fea3d4ace0ca8a5              # double 0.81998195880921243
	.quad	0x3fe8f5b438dd3b29              # double 0.77999316316877298
	.quad	0x3fb3c99ba84247f8              # double 0.077295044497333154
	.quad	0x3fcafcf0d30d0348              # double 0.21084413819519399
	.quad	0x3fc61257358be0e4              # double 0.17243471254892662
	.quad	0x3fb06c971a778330              # double 0.06415695568240376
	.quad	0x3fe7c37a67f9cb3b              # double 0.74261207874074076
	.quad	0x3fe6032ac92d68bc              # double 0.68788661282021435
	.quad	0x3fee1c1a455b0ca8              # double 0.94093049570110043
	.quad	0x3fe370e823949743              # double 0.60753256749442419
	.quad	0x3fed31ffe048244b              # double 0.91235345654525568
	.quad	0x3fa9adbcdb8755c0              # double 0.050153638647013832
	.quad	0x3fbbb96b24996f48              # double 0.10829801219500468
	.quad	0x3fe3a4846c00c929              # double 0.61383267492627624
	.quad	0x3fb32287d2aab1f0              # double 0.074745644504851105
	.quad	0x3fc65da07bb705f4              # double 0.17473226586120882
	.quad	0x3fcbdc3ea1f50c9c              # double 0.2176588335806614
	.quad	0x3fc0cceb78c237ec              # double 0.1312536563531802
	.quad	0x3fe1a854b308b2c0              # double 0.55179820029805882
	.quad	0x3fd598e48e207e64              # double 0.33745683555205219
	.quad	0x3fd31f82b55a9ec8              # double 0.29879825315809372
	.quad	0x3fd8a67dc96255e6              # double 0.38516182581346781
	.quad	0x3fee9053042cfee8              # double 0.95511771026209846
	.quad	0x3fd61ec0932d803e              # double 0.34562696812463745
	.quad	0x3fe6a041e401bee5              # double 0.70706266911107873
	.quad	0x3fd0f3657b40e804              # double 0.26485573803404372
	.quad	0x3fed8d44ffcc5127              # double 0.92349481545037271
	.quad	0x3fc8b0b8aedda544              # double 0.19289310968751228
	.quad	0x3fd47dac0598509e              # double 0.32017040773758676
	.quad	0x3fe6082d95ee4245              # double 0.68849829943980778
	.quad	0x3fefea94b1f60cca              # double 0.99738535650285454
	.quad	0x3fd1907761d137fa              # double 0.27444252541033587
	.quad	0x3fe3f0c5dcbaba02              # double 0.62314122306071362
	.quad	0x3fe8db39965c29f4              # double 0.77676085822287044
	.quad	0x3fee946e65ed1947              # double 0.9556190481896828
	.quad	0x3fbe02eb954da268              # double 0.1172320594320212
	.quad	0x3fa3c20119b9dd30              # double 0.038589510336289101
	.quad	0x3fee45bb467a0da7              # double 0.94601215138429928
	.quad	0x3fe3a532de0cb04c              # double 0.61391585701995544
	.quad	0x3fe6c54698d1d7a1              # double 0.71158151481244059
	.quad	0x3fa6774a8f4609f0              # double 0.043878870000316428
	.quad	0x3fe31a4b7399f81b              # double 0.59695980623633049
	.quad	0x3fe30f14b4dd2ba6              # double 0.59559092831601812
	.quad	0x3f4fd0be0d732400              # double 9.7092895421113656E-4
	.quad	0x3fad9efd8a7e3fe0              # double 0.05785362544622763
	.quad	0x3fe2ca4cb3c5eb77              # double 0.58719477760256111
	.quad	0x3fb39a83c38d98a0              # double 0.076576457254847075
	.quad	0x3fe7e66546be6344              # double 0.74687446419839221
	.quad	0x3fe4ca447f2fd87c              # double 0.64969086495581463
	.quad	0x3fec6ec5ec53800f              # double 0.88852211148696536
	.quad	0x3fed235cd607c2aa              # double 0.91056672861858101
	.quad	0x3fe1aa11a9a8e568              # double 0.55201037537260067
	.quad	0x3fe3e11e02bf909a              # double 0.62123013054635412
	.quad	0x3fef3c74d3b95b08              # double 0.97612992622711747
	.quad	0x3fe9eb5091dd3ea0              # double 0.80997494210346943
	.quad	0x3fcf7ddfd3c09640              # double 0.24602887954204
	.quad	0x3fef02a3f044e833              # double 0.96907231261798754
	.quad	0x3fe414a40322163c              # double 0.62751961337989526
	.quad	0x3fe15b6660a1441d              # double 0.54240721581493612
	.quad	0x3fe76fcc5878cc28              # double 0.73239724425946395
	.quad	0x3fc4f50e43b36358              # double 0.16372850709628994
	.quad	0x3fc7ed77b16c4c1c              # double 0.18693443454012104
	.quad	0x3fba203e0ecc17a8              # double 0.10205448018322605
	.quad	0x3fd68d8af1f54584              # double 0.35238908413619918
	.quad	0x3fbabe07ffabf530              # double 0.10446214668259723
	.quad	0x3fda9f6477654d2c              # double 0.41597854289757907
	.quad	0x3fe33afe1017745c              # double 0.60095122473616014
	.quad	0x3fdb6a40be307860              # double 0.42836016247918529
	.quad	0x3fef7ff93b29dac0              # double 0.98437177234048789
	.quad	0x3fec6e058dc664a2              # double 0.88843038263725682
	.quad	0x3fe35a2363e52bce              # double 0.60475320349484618
	.quad	0x3fd6d922dc5b2b62              # double 0.35700294036057845
	.quad	0x3fd8284ffc07d4dc              # double 0.37746047603952859
	.quad	0x3fc6fbe793c26138              # double 0.17956251826104519
	.quad	0x3fe4906299678ba9              # double 0.64262514077960475
	.quad	0x3fdcc5c1490e6e50              # double 0.44957000860606389
	.quad	0x3fb8e0824c1f4690              # double 0.097175735077394742
	.quad	0x3fee0f22c8be9e62              # double 0.93934764106684221
	.quad	0x3fdd498ae26b23ca              # double 0.4576136790388402
	.quad	0x3fed4b9b8d2314d9              # double 0.91547944608523857
	.quad	0x3fe4b3a950e08a5d              # double 0.64693132206259529
	.quad	0x3fe6a890ddf0c715              # double 0.70807689044724731
	.quad	0x3fe074036ebd6166              # double 0.51416179303036524
	.quad	0x3fee2709d9e72bd5              # double 0.9422654395979132
	.quad	0x3fefbdc6001ad98d              # double 0.99191570301518228
	.quad	0x3fe40b71889acb81              # double 0.62639691048239865
	.quad	0x3fb199f98092e448              # double 0.068755716219031204
	.quad	0x3fe68bf9b03515b9              # double 0.70458683410168199
	.quad	0x3fe53fed0f3e7d75              # double 0.66405346848834645
	.quad	0x3fe9e09a15490884              # double 0.80866722256929834
	.quad	0x3fd4bfa701b9d2b2              # double 0.32419753235380278
	.quad	0x3fe243747a007412              # double 0.57073425129385869
	.quad	0x3fe6e9771f79e46e              # double 0.71599918506320903
	.quad	0x3fd3d85a34c600fc              # double 0.31008010057122681
	.quad	0x3fd1ac89f0a9b29e              # double 0.27615593435511154
	.quad	0x3fe0b40de9948c14              # double 0.5219792902101994
	.quad	0x3fd692fdfd976bfa              # double 0.35272168888849331
	.quad	0x3fd9885579008ade              # double 0.39894615952122858
	.quad	0x3fe8e6d1cec81325              # double 0.77817621600170084
	.quad	0x3febe30628a7d8c8              # double 0.8714628976875014
	.quad	0x3fe3e3973e624036              # double 0.62153207954725675
	.quad	0x3fbb548f1e3201d8              # double 0.10675901877585348
	.quad	0x3fdd7143c68476d8              # double 0.46003813158482165
	.quad	0x3fdf1a90acf8cc14              # double 0.48599640743049233
	.quad	0x3fd1ea40fbb9ef56              # double 0.27992271978995598
	.quad	0x3f66f43d85ccf500              # double 0.0028020097364832575
	.quad	0x3fca6a11770e7d54              # double 0.20636194527922191
	.quad	0x3fdb55472c324930              # double 0.42707995716149849
	.quad	0x3fe13a00b21fcbf1              # double 0.53833040990718761
	.quad	0x3fb88b5fc9443130              # double 0.095876680981920925
	.quad	0x3fe1cb6198f2103b              # double 0.55607681152515143
	.quad	0x3fd6772e3673e090              # double 0.35102420156136649
	.quad	0x3fca66ca6eb2f81c              # double 0.2062619247935239
	.quad	0x3febb1491b40df22              # double 0.86539130518847096
	.quad	0x3fa072f850885220              # double 0.032127151327731918
	.quad	0x3fe715e94401bb46              # double 0.72142470629283006
	.quad	0x3fd91e94a3b86d5c              # double 0.39249149311372888
	.quad	0x3fe9858fc38820cb              # double 0.79755390348238941
	.quad	0x3fdc529f27bb99ae              # double 0.44254282837064352
	.quad	0x3fbd8c0a89c715a0              # double 0.11541810859406221
	.quad	0x3fe5068ca06b0fd8              # double 0.65704947787935009
	.quad	0x3fea452a34c1ccaf              # double 0.82094297699076957
	.quad	0x3fb76abc36e24b88              # double 0.091472400092511674
	.quad	0x3fa60e625e8b4ee0              # double 0.043078493157421738
	.quad	0x3fe28c3d2da2ca20              # double 0.57961901582013198
	.quad	0x3fe6f16c1f3dec8c              # double 0.71697050191814204
	.quad	0x3fed2227b390c947              # double 0.91041932174111018
	.quad	0x3fdbb0227c643a74              # double 0.43262540958031726
	.quad	0x3fed515ad88ac85b              # double 0.91618101399786711
	.quad	0x3fe9282611aa8f4f              # double 0.78615096521796513
	.quad	0x3fd94dc679e27260              # double 0.39537202742375221
	.quad	0x3fef0f79c3beb899              # double 0.9706391165871252
	.quad	0x3fe362a0a5374d38              # double 0.60578949230913448
	.quad	0x3fefa6fe3d189744              # double 0.9891349023134599
	.quad	0x3fd3a427b6a5feee              # double 0.30689423405418281
	.quad	0x3fc870d50efa40c8              # double 0.19094336730313999
	.quad	0x3fe6891d7b9e7573              # double 0.70423769134838066
	.quad	0x3fa8daf878de5b90              # double 0.048545613054719827
	.quad	0x3fefa2b5d42b34c9              # double 0.98861209334577282
	.quad	0x3fcdc5b74d334118              # double 0.23259631413976289
	.quad	0x3fd9d83c018b3738              # double 0.40382290030253243
	.quad	0x3fdf4d1dcb2025bc              # double 0.48908181034547815
	.quad	0x3fa7134794fb1740              # double 0.045068966804633792
	.quad	0x3fdf8a91c5627884              # double 0.49283260608525148
	.quad	0x3fd73b4b95dbe608              # double 0.36299409517923253
	.quad	0x3fe866da308eacd2              # double 0.76255521282055327
	.quad	0x3fdd2008a5a4c362              # double 0.45508018661626271
	.quad	0x3fefab0f483f85d9              # double 0.9896313105675133
	.quad	0x3fa5924e5cbb7980              # double 0.04213185197817193
	.quad	0x3fd23ad811c82c3e              # double 0.28484155403629419
	.quad	0x3fe0ce29b266e308              # double 0.52516636699792318
	.quad	0x3fc5b87e44947004              # double 0.16969278668045729
	.quad	0x3fefdf07957366bd              # double 0.99597529592138978
	.quad	0x3fe613f96a9b7042              # double 0.68993826696124239
	.quad	0x3fc205330cfe3e3c              # double 0.14078367361479305
	.quad	0x3fd24c3300a97352              # double 0.2859008318389914
	.quad	0x3fcc90c204165e3c              # double 0.22316765975550534
	.quad	0x3fe7aff6df8494bf              # double 0.74023002296294027
	.quad	0x3fdfab5230e63688              # double 0.49483160758322997
	.quad	0x3fd9437c16c1e5fe              # double 0.39474394056705353
	.quad	0x3fef551f5e57ae59              # double 0.97914093424101189
	.quad	0x3fe74ccd1708de9f              # double 0.72812513827280501
	.quad	0x3fc8f6fa7f99b8f0              # double 0.19503718595974062
	.quad	0x3faf8199fd3b0be0              # double 0.061535656129784178
	.quad	0x3fea519ad7cbcd64              # double 0.82246153018642731
	.quad	0x3fe8e0058345b584              # double 0.77734637869950562
	.quad	0x3fe6b868b6cc375b              # double 0.71001086905173894
	.quad	0x3fc49a182e625cd0              # double 0.16095258965353887
	.quad	0x3fcfac634b236900              # double 0.24744836014617277
	.quad	0x3fc017507019c89c              # double 0.12571149324100339
	.quad	0x3fd5576031476ea2              # double 0.33345799267201859
	.quad	0x3fd4ae20461f64e8              # double 0.32312781188882278
	.quad	0x3fda86c147dc7c36              # double 0.41447479264928988
	.quad	0x3fef3dc8e1e01bdb              # double 0.9762920772199054
	.quad	0x3feef035f21d6655              # double 0.9668225983434221
	.quad	0x3fcd55e7381e30fc              # double 0.22918405761846106
	.quad	0x3fe310eeeaa1cd36              # double 0.59581704927987889
	.quad	0x3feb5456320bf278              # double 0.85404500746478984
	.quad	0x3fe1669c5510d4eb              # double 0.54377571691898419
	.quad	0x3fec8d151b1b58e9              # double 0.89222197813321913
	.quad	0x3fdcfa0cf66d87d4              # double 0.4527618795892725
	.quad	0x3fd93bdb803606e4              # double 0.39427840729341157
	.quad	0x3fd3f5385713f1be              # double 0.31184204581930064
	.quad	0x3fe536af4e838961              # double 0.66292538962106218
	.quad	0x3fd14a2ad55d4f12              # double 0.27015181385398634
	.quad	0x3fd373a56bf2ff84              # double 0.30393348256983921
	.quad	0x3fe3662f29c22b73              # double 0.60622366100265734
	.quad	0x3fd64010d6d37684              # double 0.34766026476959433
	.quad	0x3fe6e3f2fdca2efc              # double 0.71532582825008673
	.quad	0x3fd3d59317e87fa6              # double 0.30991055807862222
	.quad	0x3fe60cf0f5c4a0fd              # double 0.68907974244669357
	.quad	0x3fd74b05494a1efa              # double 0.36395389706784409
	.quad	0x3fbba2f05aa4f9c0              # double 0.10795500004767344
	.quad	0x3feb84ed84d24f19              # double 0.85997653905585303
	.quad	0x3fea0446d29e08ce              # double 0.8130220521564071
	.quad	0x3fe1dc132c16127f              # double 0.55811461077298918
	.quad	0x3fcfa2123c898b38              # double 0.24713352161332991
	.quad	0x3fe5b6b9fbc9be0f              # double 0.67855548074106931
	.quad	0x3fe1e704f3f6b2e8              # double 0.55945060395387447
	.quad	0x3fd16f904663377a              # double 0.27243430017266912
	.quad	0x3fe136772b06551c              # double 0.53789862063664229
	.quad	0x3fea6569a270316f              # double 0.82487947202893774
	.quad	0x3fe0cfd2227699a5              # double 0.52536875468358757
	.quad	0x3fd93f7ade8a3284              # double 0.3944995091667709
	.quad	0x3feddb833342d9b8              # double 0.93304595958652836
	.quad	0x3fbdcc0b8a0ab958              # double 0.11639473076022477
	.quad	0x3febdb937bd48b9a              # double 0.87055372415157994
	.quad	0x3feb1bea9a845d3c              # double 0.84715776614294879
	.quad	0x3faa4be592e33e90              # double 0.051360296421646301
	.quad	0x3f9f1149161215e0              # double 0.030339376422963471
	.quad	0x3fe4fcc139dc0203              # double 0.65585385609307456
	.quad	0x3fcf8e14cdd0f548              # double 0.24652347612019754
	.quad	0x3fcf241c0067d2e0              # double 0.24328947086146169
	.quad	0x3fc8685dfd38fb6c              # double 0.19068503250488378
	.quad	0x3fc21470da84f010              # double 0.14124880475890267
	.quad	0x3fe733cb60111965              # double 0.7250725628189626
	.quad	0x3fd4f8a31dfead3c              # double 0.32767560891325664
	.quad	0x3fcb8e56db808cac              # double 0.21528135030630347
	.quad	0x3fcee7852fb3dbf4              # double 0.24144043759562772
	.quad	0x3fbc6f76cc767e30              # double 0.11107580653924098
	.quad	0x3fde80f1f784c618              # double 0.47662018939726769
	.quad	0x3fd426d1719dacfa              # double 0.31486927123360398
	.quad	0x3fe388130a0d7523              # double 0.61036064113037403
	.quad	0x3fcf1a7a4c65cadc              # double 0.24299553613999236
	.quad	0x3fd56a3c39bab43a              # double 0.33460908544185808
	.quad	0x3fdf075b6f970842              # double 0.48482404611070617
	.quad	0x3fc468e40222a810              # double 0.15945100883737995
	.quad	0x3fede4f99e579231              # double 0.93420105863748948
	.quad	0x3fe5bc6d6e4951c6              # double 0.6792513994246796
	.quad	0x3fe6faf9b78f428a              # double 0.71813665248380798
	.quad	0x3febc8dec67bbb3b              # double 0.86827029005312484
	.quad	0x3fbca4c33de91ef0              # double 0.11188907872667264
	.quad	0x3fe9ea87c36267fa              # double 0.80987919007316056
	.quad	0x3fdff423aa5a7042              # double 0.49927608142911961
	.quad	0x3febc81fc8412b64              # double 0.86817921745510462
	.quad	0x3fdd02ec17557074              # double 0.45330335882841344
	.quad	0x3fe116e96d1b4e9c              # double 0.53404685315986766
	.quad	0x3fe4e3ccc4a97df5              # double 0.65280760202943944
	.quad	0x3fbb34e04f695df8              # double 0.10627557696113132
	.quad	0x3fe1d838cec8a5e0              # double 0.55764427554566609
	.quad	0x3fe721f2cd1c1b35              # double 0.72289409695154083
	.quad	0x3fe4a009f28234f4              # double 0.64453599324192945
	.quad	0x3fe58a6b684a8511              # double 0.67314691895822609
	.quad	0x3fe6e864cd0e5ade              # double 0.71586837816252191
	.quad	0x3fe7c83e9977070c              # double 0.74319391225455567
	.quad	0x3fdf8d8b5fd69630              # double 0.49301418647005146
	.quad	0x3feba3aafd18fd66              # double 0.86372899468544229
	.quad	0x3fc2358f4cb49150              # double 0.1422595142877392
	.quad	0x3fdb004b8c02fbe4              # double 0.4218930117894486
	.quad	0x3f80974bb794b6c0              # double 0.0081010737800072396
	.quad	0x3fe358c3e115aaeb              # double 0.60458558999866108
	.quad	0x3f970381e21fbfa0              # double 0.022474317003741029
	.quad	0x3febd00bfcbd3910              # double 0.86914634097209564
	.quad	0x3fc663a17b25302c              # double 0.1749154902739759
	.quad	0x3fc865d014ecc0ec              # double 0.1906070806667296
	.quad	0x3fcf00a32d147b84              # double 0.24220695210621213
	.quad	0x3fed75bd05b1b143              # double 0.92062235939150872
	.quad	0x3fe4cc9369a2686b              # double 0.6499726355716694
	.quad	0x3fd0c77abaf32ff8              # double 0.2621752572711098
	.quad	0x3fdd90a4a4bba7a8              # double 0.46195331656655947
	.quad	0x3fe2e184911ae20d              # double 0.5900290330965291
	.quad	0x3fe584e3f1e14d4e              # double 0.67247197382168067
	.quad	0x3fac9ce2fdc786a0              # double 0.055884450415544906
	.quad	0x3fe9b8a83741577f              # double 0.80379114906348537
	.quad	0x3fea436acce1d797              # double 0.82072963729909787
	.quad	0x3fd2167ed04a0cce              # double 0.28262300816295471
	.quad	0x3feed2410308fd42              # double 0.96316576569362433
	.quad	0x3fe82f2af34ba8c9              # double 0.75575778502140978
	.quad	0x3fe6168a2a578f61              # double 0.69025142927101168
	.quad	0x3fe66624e30d2546              # double 0.69996876092879101
	.quad	0x3fcc8a73090ba7fc              # double 0.22297513906170241
	.quad	0x3fdd2e76d1e6206a              # double 0.45596094606344784
	.quad	0x3fecccce37baede6              # double 0.90000067601016265
	.quad	0x3fd570c2c7ca0d5c              # double 0.33500737677259962
	.quad	0x3f82bf74476e6880              # double 0.0091542324351403526
	.quad	0x3feb6fc1153f6d38              # double 0.85739187383607085
	.quad	0x3fc3e4f69b605214              # double 0.15542490565043521
	.quad	0x3fec4a2ef7bf6a70              # double 0.88405559910036224
	.quad	0x3fefecddf6b61c25              # double 0.9976644342976938
	.quad	0x3fa3f357ef37c240              # double 0.038965938521759558
	.quad	0x3fec9a65ed9bcde5              # double 0.89384743125850419
	.quad	0x3feeb11860734fbb              # double 0.9591180690572324
	.quad	0x3fd2ccebc3ce28e0              # double 0.29375738259899542
	.quad	0x3fc253445b55c570              # double 0.14316610774725858
	.quad	0x3fe57d687df65ef1              # double 0.67155861475018075
	.quad	0x3fda01c4b4a5d3c4              # double 0.40635793343909321
	.quad	0x3fef6e78f3b6b5d2              # double 0.98223540878614757
	.quad	0x3fedd7bff6c14f24              # double 0.93258665270193263
	.quad	0x3fef6774462a2b8e              # double 0.98137868598984013
	.quad	0x3fd36dc27980d3f8              # double 0.30357419839430078
	.quad	0x3fc958977ab38c28              # double 0.19801610461499419
	.quad	0x3f59c8e20dd53800              # double 0.0015737731512959208
	.quad	0x3fdd6ab552bb985c              # double 0.4596379573762357
	.quad	0x3fadf6592a8fdd50              # double 0.058520113416245523
	.quad	0x3fba6bc01d2cf028              # double 0.10320664131444401
	.quad	0x3fe06b7b67747ecd              # double 0.51312036710802433
	.quad	0x3fe6ae99c6444c5b              # double 0.7088135597608799
	.quad	0x3fea89c54028c51c              # double 0.82931768923859605
	.quad	0x3fe6f43293e039e3              # double 0.71730927354820684
	.quad	0x3fed9f539dcacf34              # double 0.92569905108255179
	.quad	0x3fe1b7d52dc5d3a4              # double 0.55369051876060782
	.quad	0x3fe8522b02ac7fbd              # double 0.76003027460318828
	.quad	0x3fe519b36f73d817              # double 0.65938731926030669
	.quad	0x3fec6704ee3a09ef              # double 0.8875755932679662
	.quad	0x3fefff1f5b64286e              # double 0.99989288186885772
	.quad	0x3fec2989f8eb413e              # double 0.88007067315087517
	.quad	0x3fdbadbd7c85b116              # double 0.43247925911306717
	.quad	0x3fa99983e7b52c90              # double 0.04999935344184181
	.quad	0x3fc7ad5097c77b8c              # double 0.18497664843650019
	.quad	0x3fd8306e19221080              # double 0.3779559369506913
	.quad	0x3fee02548a2daf67              # double 0.93778445232372298
	.quad	0x3fdb13098b504858              # double 0.42303694348186616
	.quad	0x3fd2e3bf92cc1bbc              # double 0.2951506551329961
	.quad	0x3fe4499e400aebc6              # double 0.6339865923722463
	.quad	0x3fdfe03edae40c62              # double 0.4980618608098607
	.quad	0x3fe1c1c878d502cd              # double 0.55490516281141711
	.quad	0x3fe7254bb481e48e              # double 0.72330270057058654
	.quad	0x3fd7e2c533e0ff7e              # double 0.37321596208857233
	.quad	0x3fee543349bd11b9              # double 0.94777836229382395
	.quad	0x3feac2d42e4c543a              # double 0.83628281633958257
	.quad	0x3fe9c4d84fdab6d7              # double 0.80527892681649405
	.quad	0x3fe0e9a458f262d2              # double 0.52852074978280883
	.quad	0x3fc92741c139799c              # double 0.19651052412787073
	.quad	0x3fc1e52b6b19a3a8              # double 0.13980620126247101
	.quad	0x3fe7cc71e929373d              # double 0.74370666064508095
	.quad	0x3fe8d3a9c740d01e              # double 0.77583779255519736
	.quad	0x3fe66b466b259d43              # double 0.70059510161528527
	.quad	0x3fe9da039d2c0cff              # double 0.80786305139227454
	.quad	0x3fe38af264a142c0              # double 0.6107112851551264
	.quad	0x3feac648d588541f              # double 0.83670465188572851
	.quad	0x3fd2a0f49a23d778              # double 0.29107394268736853
	.quad	0x3fc8c63fbcf909ac              # double 0.1935500786513108
	.quad	0x3fe342055c0c879b              # double 0.60180919626531038
	.quad	0x3fc7c01ebd3650a0              # double 0.18555053938746813
	.quad	0x3feb437a3b6bc4a2              # double 0.85198699575098069
	.quad	0x3fed322e42e609a6              # double 0.91237557474260167
	.quad	0x3fe180e641bb9919              # double 0.54698479498327679
	.quad	0x3fd7e8f5d743b640              # double 0.37359376928256793
	.quad	0x3fdca23a0b99a30e              # double 0.44740153439356412
	.quad	0x3fedba4f95b1711f              # double 0.92899302708568487
	.quad	0x3fc5ff0695ce499c              # double 0.17184526743637896
	.quad	0x3fecd689ef3188bc              # double 0.90118881909827264
	.quad	0x3fd74ba9617057c2              # double 0.36399302020560864
	.quad	0x3fe303f30f22759d              # double 0.59423211055734593
	.quad	0x3fd5630b316be42e              # double 0.33417014910043263
	.quad	0x3fd4aa0c4cc02ae4              # double 0.32287890906506633
	.quad	0x3f8f453bab3fe940              # double 0.015268770373940144
	.quad	0x3fe05200c2b42aaf              # double 0.51001012828904446
	.quad	0x3fe87c617e0c01ce              # double 0.76518320673499729
	.quad	0x3fd028d3fa3560ea              # double 0.25249194559502419
	.quad	0x3fe934e6ba526458              # double 0.78770767584786494
	.quad	0x3fe591e5d7999520              # double 0.6740597926078955
	.quad	0x3fdf6d34a7c2f54e              # double 0.49104038603748712
	.quad	0x3fcbc809728a86ac              # double 0.21704214184597015
	.quad	0x3fd7d1a1240fb67c              # double 0.37216976663226098
	.quad	0x3fe16c34f8239a51              # double 0.54445885147726802
	.quad	0x3fc98825bc664ce4              # double 0.19946738909911865
	.quad	0x3fde88140ea30f02              # double 0.4770555632533019
	.quad	0x3fc488b1ee581250              # double 0.16042160165683805
	.quad	0x3fd4b796794bec32              # double 0.32370530934685171
	.quad	0x3fe02d455bd9b137              # double 0.50552623691104415
	.quad	0x3fe9e905deb606f4              # double 0.80969518182993605
	.quad	0x3fcb11788a65e63c              # double 0.21147066838948259
	.quad	0x3fe7c67db61e735d              # double 0.7429798657427501
	.quad	0x3fdbb7ba8471ef14              # double 0.43308890279853185
	.quad	0x3fdc8066de6ee38a              # double 0.44533702585209112
	.quad	0x3fcb3c70cec0f8f8              # double 0.21278200240516987
	.quad	0x3fdbf58453ad4b0a              # double 0.4368601624639018
	.quad	0x3feaf4e10a5208c4              # double 0.84239246383392485
	.quad	0x3fecf71ec634e047              # double 0.90516604149070978
	.quad	0x3fe7b109d2e122ef              # double 0.7403611296404885
	.quad	0x3fedbfe53b9e7c14              # double 0.92967473644592013
	.quad	0x3fe405341be58f9e              # double 0.62563519905642173
	.quad	0x3fed9f892519a8a0              # double 0.9257245754827359
	.quad	0x3fe0a3447e758622              # double 0.51993012141264594
	.quad	0x3fee57d7fda244e1              # double 0.94822310960639922
	.quad	0x3fe884bc270a6359              # double 0.76620299935448621
	.quad	0x3feeab460de7fd6b              # double 0.95840742794090993
	.quad	0x3fe4d9eeb73ef8dd              # double 0.65160308637839714
	.quad	0x3fda1fe19b2e2df8              # double 0.4081958785470472
	.quad	0x3fe4d2851acbf5b4              # double 0.65069823487981759
	.quad	0x3fe8f1a98343da7f              # double 0.77949977529245007
	.quad	0x3fedc2c012f63498              # double 0.93002322867836806
	.quad	0x3fc7a11e47c25354              # double 0.18460443977223895
	.quad	0x3f787b6a5b5c3780              # double 0.0059770731511558095
	.quad	0x3feeed029de84915              # double 0.96643191186220411
	.quad	0x3fab6a658a8d0520              # double 0.05354611698431655
	.quad	0x3fe439ec89455a06              # double 0.63207079706882108
	.quad	0x3fd0cce1e5a004b6              # double 0.26250502991031099
	.quad	0x3fe16462f5c0d01d              # double 0.54350421904246426
	.quad	0x3fec24fe37ffd72e              # double 0.87951575219515177
	.quad	0x3fe4acfb28cc7f00              # double 0.64611585587041986
	.quad	0x3fec5dfafbed723f              # double 0.88647221760363226
	.quad	0x3fe405e47d97de19              # double 0.62571930437019596
	.quad	0x3fe1d237d111b75f              # double 0.55691138109044036
	.quad	0x3fdd41ce03bc0058              # double 0.45714140286145755
	.quad	0x3fe8b5bd6395d97c              # double 0.77218503427756912
	.quad	0x3fe098eae3f39885              # double 0.51866669198786097
	.quad	0x3fd837e0e36d4e16              # double 0.37841055116334255
	.quad	0x3fde41ac5d686a92              # double 0.47275838014471916
	.quad	0x3fde828fabda7f9e              # double 0.47671882422036471
	.quad	0x3fe1a1a924422f45              # double 0.55098397332901838
	.quad	0x3fe92668554a65b2              # double 0.78593842180560203
	.quad	0x3fedef1acd6bb65e              # double 0.93543758507957953
	.quad	0x3fd87167ea7e4646              # double 0.3819217481587639
	.quad	0x3fbd3214059786b0              # double 0.11404538284798593
	.quad	0x3feb8ba0eb9aafa7              # double 0.86079450622991238
	.quad	0x3fe5b747db52adfb              # double 0.67862313114659345
	.quad	0x3fc8fdcf06c4c7b8              # double 0.19524562674047075
	.quad	0x3fd6b926a6a590a0              # double 0.35505071901412499
	.quad	0x3feab17aa84db7b7              # double 0.83416493293565608
	.quad	0x3fca45da83e1cd08              # double 0.20525676192810516
	.quad	0x3fe9cf0090d34139              # double 0.80651882444548229
	.quad	0x3fd5c7f6796a09a8              # double 0.34032976014000349
	.quad	0x3fd8347c84429144              # double 0.37820351520555939
	.quad	0x3f7b64269ea25600              # double 0.0066873081761023023
	.quad	0x3febca17db4aaaa8              # double 0.86841957884219756
	.quad	0x3fef6dad1d07c249              # double 0.98213821096403208
	.quad	0x3fd2b0e0fdcebd18              # double 0.29204582963844095
	.quad	0x3fc3a32d9b3a05dc              # double 0.15341730193544734
	.quad	0x3fe47300a257971f              # double 0.63903838832331761
	.quad	0x3fecefbf1898fa55              # double 0.9042659264012608
	.quad	0x3fc0ed85c8729da8              # double 0.13224861419187772
	.quad	0x3fc520b32833a288              # double 0.1650604196832044
	.quad	0x3fdb71692a8f0c70              # double 0.42879704624301151
	.quad	0x3fe64363494a75a9              # double 0.69572605433102297
	.quad	0x3fdbb63de4c80df6              # double 0.43299815504016637
	.quad	0x3fd230879a2c032a              # double 0.28421201759197123
	.quad	0x3fe4edcf00715894              # double 0.6540293701789488
	.quad	0x3fe96bd73258b95c              # double 0.79441413720432363
	.quad	0x3faa1d50ba0dd1d0              # double 0.051004908286731543
	.quad	0x3fe0ea15fcb5dc7b              # double 0.52857493741511463
	.quad	0x3fefd5936eff62c4              # double 0.99482127837389855
	.quad	0x3fe59a9d4563585b              # double 0.6751238208041842
	.quad	0x3fd0b67b7fab17de              # double 0.26113784282313002
	.quad	0x3fed90eb61c005a2              # double 0.92394036380590117
	.quad	0x3fbda522e6a14c10              # double 0.11580103045098178
	.quad	0x3febdaf330201617              # double 0.870477289194869
	.quad	0x3fd14c4d58a05fba              # double 0.27028211264541435
	.quad	0x3fe75ab97d57e500              # double 0.72982477646942812
	.quad	0x3fd46a136ed452c0              # double 0.31897435973341359
	.quad	0x3fcd9923cbd2512c              # double 0.23123595669006514
	.quad	0x3fedafa6158f9ecc              # double 0.92769149981628507
	.quad	0x3fd62ce5804757d6              # double 0.34649026419844853
	.quad	0x3fee3159be3e626a              # double 0.9435242381760649
	.quad	0x3fd4952a474d27e2              # double 0.3216043182661662
	.quad	0x3fea47dcce410867              # double 0.82127228054038148
	.quad	0x3fdf4f24ccd9f49e              # double 0.4892055511953205
	.quad	0x3fe535265e13d27d              # double 0.66273802160738138
	.quad	0x3fbe1fc23ea06918              # double 0.11767210034341635
	.quad	0x3fd41dc50aadd3ca              # double 0.31431699793693879
	.quad	0x3fd75ad6b38b1e6e              # double 0.36491935285128008
	.quad	0x3fd29f12e60853da              # double 0.29095909561266142
	.quad	0x3fef19ddb4f35597              # double 0.97190747587108006
	.quad	0x3fe94d190a650d71              # double 0.79066135435316032
	.quad	0x3faad26dcfa72350              # double 0.052386695478679912
	.quad	0x3fde4a0d8b9d9bb8              # double 0.47326983103124176
	.quad	0x3fc02c018d4ba7fc              # double 0.12634295844264887
	.quad	0x3fe945b9352525c2              # double 0.78976116542724406
	.quad	0x3fc24e547557eb08              # double 0.14301543931636496
	.quad	0x3fd3d5c854cf3384              # double 0.30992325098196027
	.quad	0x3fde9573dc542d58              # double 0.47787186161504769
	.quad	0x3fd89bb47b5f8ff6              # double 0.38450347946331875
	.quad	0x3fe1abaecbf002a3              # double 0.55220737296629741
	.quad	0x3fb75007e067b568              # double 0.091064922605900045
	.quad	0x3fa28a47a51eafa0              # double 0.036211241632684521
	.quad	0x3fe491315528bd5f              # double 0.64272371895451019
	.quad	0x3fd73c4b26756aa0              # double 0.36305502658584921
	.quad	0x3fc361c144f9ee2c              # double 0.15142074459059651
	.quad	0x3fac22a7cd06af60              # double 0.054951900270082232
	.quad	0x3fe6c52ca6291c25              # double 0.71156914189566989
	.quad	0x3fe79d675025e477              # double 0.73796430257711065
	.quad	0x3fe5296f5a20b592              # double 0.66130797961311516
	.quad	0x3fc2438b8790d19c              # double 0.14268631095332018
	.quad	0x3feab1c7124c53a9              # double 0.83420136998994565
	.quad	0x3fe588ad830842e6              # double 0.67293429939499272
	.quad	0x3fd971e2532c2504              # double 0.39757593271549774
	.quad	0x3feffdbdc2680e1c              # double 0.99972427339565994
	.quad	0x3fdd54fe6a821af0              # double 0.45831261063760476
	.quad	0x3fe1028d57078bb3              # double 0.53156153676933682
	.quad	0x3fd54309e558da64              # double 0.33221671483207715
	.quad	0x3fe06f8f20706641              # double 0.51361805282358131
	.quad	0x3fd370bd140170ee              # double 0.30375601724314449
	.quad	0x3fc807e0d07f17b4              # double 0.18774042301646221
	.quad	0x3fe946aa62386692              # double 0.78987616714148801
	.quad	0x3fec5a37b25731e6              # double 0.88601288635396425
	.quad	0x3fe14bbe20f5d223              # double 0.54049593389078543
	.quad	0x3fdadd7e127238ac              # double 0.41976882745155808
	.quad	0x3fddff59363c4264              # double 0.46871023460793126
	.quad	0x3fd618e5d4e65454              # double 0.34526963988293358
	.quad	0x3fc7b9f8a6f7f2f0              # double 0.18536289360772384
	.quad	0x3fdc5f8178dfd7a6              # double 0.44332920841349688
	.quad	0x3fcd53f3a4902adc              # double 0.22912450347242597
	.quad	0x3fe70a8aee68edcc              # double 0.72003695072583573
	.quad	0x3fe0d0f842ee243e              # double 0.5255090052825222
	.quad	0x3fcec2aa704b9464              # double 0.2403157280270164
	.quad	0x3fc50de384071508              # double 0.16448635050452531
	.quad	0x3fedde15dab4e15d              # double 0.93336003032804238
	.quad	0x3feb276bcebed5b7              # double 0.84856214885683456
	.quad	0x3fc2237801a84c64              # double 0.14170742112091539
	.quad	0x3feaaf4978317342              # double 0.83389733767726448
	.quad	0x3fee7abb1ad3289d              # double 0.95248179663873922
	.quad	0x3fe47b19c74defb0              # double 0.64002694059990084
	.quad	0x3fd14c61391955b4              # double 0.27028685165472699
	.quad	0x3fb94687e0cf9888              # double 0.098732464204291159
	.quad	0x3fe2760f286d7ba2              # double 0.57691152473477225
	.quad	0x3fd73118b6c4b40a              # double 0.36237161491845937
	.quad	0x3fdcdaba4014d980              # double 0.4508500695987081
	.quad	0x3fb025c66228c540              # double 0.063076399769461666
	.quad	0x3fdf1620f385d12a              # double 0.48572562963024046
	.quad	0x3fe16875f0ef3131              # double 0.54400155122269755
	.quad	0x3fea646a0006d4fc              # double 0.82475757603847865
	.quad	0x3fcf1b181f1785e0              # double 0.24301435011061212
	.quad	0x3fd8095ade4934d8              # double 0.37557098109830411
	.quad	0x3fec02fa6d1f410f              # double 0.87536355317027581
	.quad	0x3fea61e2d97e1ebb              # double 0.82444899062189536
	.quad	0x3fea51d6a844f81f              # double 0.82249005189055768
	.quad	0x3fea2bf74f990807              # double 0.81786695047799263
	.quad	0x3fe3ba7d3397d68d              # double 0.6165147788694455
	.quad	0x3fd279f3f040e3da              # double 0.2886934133744582
	.quad	0x3fe9ecd7df9fee72              # double 0.81016153027253623
	.quad	0x3fead2ae4ef34612              # double 0.8382178823468982
	.quad	0x3fe12e3221e79195              # double 0.53688913938508398
	.quad	0x3fc2a19aae49ba6c              # double 0.14555676946789065
	.quad	0x3fe7a70308c4f1a8              # double 0.73913718903309178
	.quad	0x3fe22e476ea3b2c5              # double 0.56814929589526086
	.quad	0x3fd9bc9c942c1bf2              # double 0.40213694066954908
	.quad	0x3fe3875abadc85eb              # double 0.61027275558825289
	.quad	0x3fd2e4b3190ebfbe              # double 0.29520871588738007
	.quad	0x3fdb63ac07b91ad2              # double 0.42795849565702071
	.quad	0x3feb0fa531fdf1d4              # double 0.84565982593590627
	.quad	0x3fe7009abccf9bd5              # double 0.71882378461020358
	.quad	0x3fe0ef495f8bfe79              # double 0.52920979176992866
	.quad	0x3fe4b6a588805379              # double 0.64729572925953882
	.quad	0x3fd876edb5c4103a              # double 0.38225882292340752
	.quad	0x3fc17c1962156388              # double 0.13659970559345092
	.quad	0x3fec104ecc8ff494              # double 0.87699069932536355
	.quad	0x3fcc99d6e014b824              # double 0.22344480458690541
	.quad	0x3fd2ab172405daa2              # double 0.29169252889497888
	.quad	0x3fc384b393ce062c              # double 0.1524872276022945
	.quad	0x3fdcd9b0c4ac6762              # double 0.45078677374259801
	.quad	0x3fe5a9c0cfe2058e              # double 0.67697182275894519
	.quad	0x3fe92b992d59e3e1              # double 0.78657206399577373
	.quad	0x3fd41efa4ff02998              # double 0.31439073378046478
	.quad	0x3fdeae958bf252ce              # double 0.4794057718911916
	.quad	0x3fac7c3f75865430              # double 0.055635436149863771
	.quad	0x3fd5c0aa08556486              # double 0.33988428891968459
	.quad	0x3fe3787895cc0491              # double 0.60845593697753675
	.quad	0x3fbadf3fc2fc4750              # double 0.10496901045214924
	.quad	0x3feda00f006c8d51              # double 0.92578840334719292
	.quad	0x3fd762679777989e              # double 0.36538114349094453
	.quad	0x3fe5545fc8491755              # double 0.66654957884086719
	.quad	0x3fdc53eb7ca77092              # double 0.4426220624279803
	.quad	0x3fe3cfa81ce628bb              # double 0.61909871715877018
	.quad	0x3febb4fd8f11d2c1              # double 0.865843562538963
	.quad	0x3fd1a135ccc9748c              # double 0.27546448706363758
	.quad	0x3f8b7386cbcb4240              # double 0.013403943151758857
	.quad	0x3fe5c2944d59d576              # double 0.68000235660171771
	.quad	0x3fef20a169795ed7              # double 0.97273321724329775
	.quad	0x3fe5af81443ce81e              # double 0.67767394378393297
	.quad	0x3fe0d3f75d81c5b0              # double 0.5258747888857922
	.quad	0x3feba1aac4c2aec6              # double 0.86348474912434692
	.quad	0x3fa387533ce6bb00              # double 0.038141823944320308
	.quad	0x3fdd4640a369c0d0              # double 0.45741287191686997
	.quad	0x3fef54e5a1caee92              # double 0.97911340332162156
	.quad	0x3fdfa0502a7dfcc6              # double 0.49415973806021574
	.quad	0x3fc2d6f2bf463cf4              # double 0.14718469943588952
	.quad	0x3fe09ab19c25a3d4              # double 0.51888351914851194
	.quad	0x3fd48287ab0405aa              # double 0.32046691609147138
	.quad	0x3fe22fb7531b3330              # double 0.56832472068490425
	.quad	0x3fd125a0fe8aae66              # double 0.26792168481435963
	.quad	0x3fe000a7f2a7ba11              # double 0.50008008378591928
	.quad	0x3fd3f5b666a527fe              # double 0.31187210105838392
	.quad	0x3fe46553c0955b3a              # double 0.63736903776121001
	.quad	0x3fceb1f5148934e8              # double 0.23980582716686816
	.quad	0x3fea3fa21b3b694b              # double 0.82026772803082204
	.quad	0x3fd1e7573a505714              # double 0.27974491781911692
	.quad	0x3fbea710c2d78a00              # double 0.11973671681293041
	.quad	0x3fce5f0c49e99c54              # double 0.23727563485155889
	.quad	0x3fd2cf52807caf10              # double 0.29390394733012304
	.quad	0x3fb0e607cfebda90              # double 0.066009987127339409
	.quad	0x3fe929129343b039              # double 0.7862637401826823
	.quad	0x3fc59453d92b37b4              # double 0.1685890970606444
	.quad	0x3faf4cfd1f03e3a0              # double 0.061134252582582649
	.quad	0x3fdba1e713981b7a              # double 0.43175675309651462
	.quad	0x3fc2a32c8239eabc              # double 0.14560467108443287
	.quad	0x3fe6b0de6b67f8af              # double 0.70909043290864371
	.quad	0x3fd77746d2a31edc              # double 0.36665506906545686
	.quad	0x3fb72574183e2d98              # double 0.090415244978592546
	.quad	0x3feac5125c574304              # double 0.83655660662961439
	.quad	0x3fdfb18d9b64c57a              # double 0.49521198439750658
	.quad	0x3fd6ff414ad7326c              # double 0.3593295317521441
	.quad	0x3fe69bfc5d9af84b              # double 0.70654123575492045
	.quad	0x3fde8659a00a54ce              # double 0.47695007924023691
	.quad	0x3fd36b30751553a6              # double 0.30341731485287438
	.quad	0x3f8d2dd58b26c040              # double 0.014247577961981617
	.quad	0x3fc6e1a996631954              # double 0.1787616714775121
	.quad	0x3fc485191eff8024              # double 0.16031183255745518
	.quad	0x3fda4bec89e384ec              # double 0.41088403192232081
	.quad	0x3fecc0bfe6ac5c2a              # double 0.89852900555968529
	.quad	0x3fd2a36e6314fd32              # double 0.29122504878974376
	.quad	0x3fb5118355953ae0              # double 0.082298477548856663
	.quad	0x3fe8ce61a7ceb123              # double 0.77519305014496742
	.quad	0x3fc01e2f9bec26dc              # double 0.12592120278741603
	.quad	0x3fe470ce732737c3              # double 0.6387703179441292
	.quad	0x3feb103dea91480c              # double 0.84573264898267686
	.quad	0x3fcdcc6eef4ad154              # double 0.23280131038849083
	.quad	0x3fdc4663bbe0c782              # double 0.44179623935189494
	.quad	0x3fed15306889a070              # double 0.90883655946255537
	.quad	0x3fd687d1d17bf4bc              # double 0.3520397706741496
	.quad	0x3fcbc33f7ba15980              # double 0.21689599548944827
	.quad	0x3fe69f3e376d6cfa              # double 0.70693884683296848
	.quad	0x3fe1dc92dfd68ab0              # double 0.5581755039059626
	.quad	0x3feacb35ec2bac85              # double 0.83730598570890946
	.quad	0x3fd615075677aa22              # double 0.34503348774038234
	.quad	0x3fc48208bff08d7c              # double 0.16021832820943505
	.quad	0x3fe6d0cd62c9e459              # double 0.71298856062561378
	.quad	0x3fec518751f7cb70              # double 0.88495222100605808
	.quad	0x3fc5a4905f214c0c              # double 0.1690845932485846
	.quad	0x3fe78c3fc12eacaa              # double 0.73587024432108206
	.quad	0x3fe8ae242ebfc73f              # double 0.771257487589743
	.quad	0x3fbdbf8e5c925060              # double 0.1162041641239866
	.quad	0x3fe090486d36fca2              # double 0.51761266070379386
	.quad	0x3fe903867b722444              # double 0.78168033705254247
	.quad	0x3fa6f4bafaa73090              # double 0.04483589467744864
	.quad	0x3fe87bf8433b8dec              # double 0.76513302928327453
	.quad	0x3fcba1edf4938b10              # double 0.21587919656948218
	.quad	0x3fee8466cc87d1d8              # double 0.95366229960796555
	.quad	0x3feff077be9a30da              # double 0.99810397364629044
	.quad	0x3fd9d45057e6b3ae              # double 0.40358360847568064
	.quad	0x3fe40ef01a9747c1              # double 0.6268234748224516
	.quad	0x3fe223281b97588c              # double 0.56679158581643341
	.quad	0x3fe5ab56911f5b62              # double 0.67716530174480405
	.quad	0x3fc62123ca7a6a6c              # double 0.17288634668951219
	.quad	0x3fe6083ac7fc96aa              # double 0.68850459155938393
	.quad	0x3fe0674c8bb05a72              # double 0.51260974200233833
	.quad	0x3fe4fabd2bb08b77              # double 0.65560778172617418
	.quad	0x3fdc3937f5ffc516              # double 0.44099234603261672
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
