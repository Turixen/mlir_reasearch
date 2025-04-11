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
	.quad	50                              # 0x32
	.quad	50                              # 0x32
	.quad	100                             # 0x64
	.quad	100                             # 0x64
	.quad	150                             # 0x96
	.quad	150                             # 0x96
	.quad	200                             # 0xc8
	.quad	200                             # 0xc8
	.quad	250                             # 0xfa
	.quad	250                             # 0xfa
	.quad	300                             # 0x12c
	.quad	300                             # 0x12c
	.quad	350                             # 0x15e
	.quad	350                             # 0x15e
	.quad	400                             # 0x190
	.quad	400                             # 0x190
	.quad	450                             # 0x1c2
	.quad	450                             # 0x1c2
	.quad	500                             # 0x1f4
	.quad	500                             # 0x1f4
	.quad	550                             # 0x226
	.quad	550                             # 0x226
	.quad	600                             # 0x258
	.quad	600                             # 0x258
	.quad	650                             # 0x28a
	.quad	650                             # 0x28a
	.quad	700                             # 0x2bc
	.quad	700                             # 0x2bc
	.quad	750                             # 0x2ee
	.quad	750                             # 0x2ee
	.quad	800                             # 0x320
	.quad	800                             # 0x320
	.quad	850                             # 0x352
	.quad	850                             # 0x352
	.quad	900                             # 0x384
	.quad	900                             # 0x384
	.quad	950                             # 0x3b6
	.quad	950                             # 0x3b6
	.quad	1000                            # 0x3e8
	.quad	1000                            # 0x3e8
	.quad	1050                            # 0x41a
	.quad	1050                            # 0x41a
	.quad	1100                            # 0x44c
	.quad	1100                            # 0x44c
	.quad	1150                            # 0x47e
	.quad	1150                            # 0x47e
	.quad	1200                            # 0x4b0
	.quad	1200                            # 0x4b0
	.quad	1250                            # 0x4e2
	.quad	1250                            # 0x4e2
	.quad	1300                            # 0x514
	.quad	1300                            # 0x514
	.quad	1350                            # 0x546
	.quad	1350                            # 0x546
	.quad	1400                            # 0x578
	.quad	1400                            # 0x578
	.quad	1450                            # 0x5aa
	.quad	1450                            # 0x5aa
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.quad	1550                            # 0x60e
	.quad	1550                            # 0x60e
	.quad	1600                            # 0x640
	.quad	1600                            # 0x640
	.quad	1650                            # 0x672
	.quad	1650                            # 0x672
	.quad	1700                            # 0x6a4
	.quad	1700                            # 0x6a4
	.quad	1750                            # 0x6d6
	.quad	1750                            # 0x6d6
	.quad	1800                            # 0x708
	.quad	1800                            # 0x708
	.quad	1850                            # 0x73a
	.quad	1850                            # 0x73a
	.quad	1900                            # 0x76c
	.quad	1900                            # 0x76c
	.quad	1950                            # 0x79e
	.quad	1950                            # 0x79e
	.quad	2000                            # 0x7d0
	.quad	2000                            # 0x7d0
	.quad	2050                            # 0x802
	.quad	2050                            # 0x802
	.quad	2100                            # 0x834
	.quad	2100                            # 0x834
	.quad	2150                            # 0x866
	.quad	2150                            # 0x866
	.quad	2200                            # 0x898
	.quad	2200                            # 0x898
	.quad	2250                            # 0x8ca
	.quad	2250                            # 0x8ca
	.quad	2300                            # 0x8fc
	.quad	2300                            # 0x8fc
	.quad	2350                            # 0x92e
	.quad	2350                            # 0x92e
	.quad	2400                            # 0x960
	.quad	2400                            # 0x960
	.quad	2450                            # 0x992
	.quad	2450                            # 0x992
	.quad	2500                            # 0x9c4
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	0x3fecf985dc593452              # double 0.90545933758552111
	.quad	0x3fd618a2698db234              # double 0.34525356586417222
	.quad	0x3fe9776c5af35e31              # double 0.79582803500938415
	.quad	0x3fd41e9c5e65ae36              # double 0.3143683359000734
	.quad	0x3fd10c7fbac69386              # double 0.26638787498296101
	.quad	0x3fed5a77f12c313b              # double 0.91729352096584849
	.quad	0x3fd26113d6890ed2              # double 0.2871751399108976
	.quad	0x3fe24f7e0c27963e              # double 0.57220365880920787
	.quad	0x3fe8e5668aa8f5ae              # double 0.77800299722701083
	.quad	0x3fe915dc67ac265b              # double 0.7839185738423099
	.quad	0x3fde930d6c8d3184              # double 0.47772536850677505
	.quad	0x3f42720abaaa4400              # double 5.6291126141350123E-4
	.quad	0x3fe9edb59dabc2cc              # double 0.8102672652731484
	.quad	0x3fdc7376fffd378c              # double 0.44454741476953852
	.quad	0x3fea841c22e27012              # double 0.82862669766791641
	.quad	0x3fd92af356cc24b2              # double 0.39324649311363225
	.quad	0x3fe2ecd9457aee9e              # double 0.59141219683029411
	.quad	0x3fe07c5cbadff1d0              # double 0.51518093584996372
	.quad	0x3fee9365172f1b36              # double 0.95549253967406034
	.quad	0x3fe49f82967fc830              # double 0.64447144884457508
	.quad	0x3fe965ff7b81844d              # double 0.7937009250855539
	.quad	0x3fe97ef77ff7b402              # double 0.79674887651128778
	.quad	0x3fc23678e98180c4              # double 0.1422873630681406
	.quad	0x3fc40aa79472d064              # double 0.156575152859321
	.quad	0x3fecf1146935669b              # double 0.90442867802194671
	.quad	0x3fed41daab625857              # double 0.91428884004086342
	.quad	0x3fe5e3d455eba366              # double 0.68406121045437085
	.quad	0x3fef72e4c484d533              # double 0.98277510054200545
	.quad	0x3fde4dad1948d81a              # double 0.4734909769935044
	.quad	0x3fc357a0765ad804              # double 0.15111165789647896
	.quad	0x3fd3e46c365222ca              # double 0.31081681542177064
	.quad	0x3fd03aa28a2ba9de              # double 0.2535787915536768
	.quad	0x3fa67e3a753c20d0              # double 0.043931795893571768
	.quad	0x3fe23f0284d38e40              # double 0.57019163077024615
	.quad	0x3fb9e81e2730bb60              # double 0.1011980863265598
	.quad	0x3fc461f0f33b4ce8              # double 0.15923892857117683
	.quad	0x3fecce6a9034fa64              # double 0.90019729772013734
	.quad	0x3fe7c0eccdda9a14              # double 0.74230041700212945
	.quad	0x3fe8a89b7b5eae8b              # double 0.77058195205377567
	.quad	0x3fe3488f76f306f7              # double 0.60260747177400631
	.quad	0x3fe066e0af6902a7              # double 0.51255831012538955
	.quad	0x3fb91b58191c5508              # double 0.098073488359961769
	.quad	0x3fd8c4597762c112              # double 0.38698422106519204
	.quad	0x3fe3475e4917c8c2              # double 0.60246195102651989
	.quad	0x3fea6281384e2a73              # double 0.82452450749526773
	.quad	0x3fb873467d3ed908              # double 0.095508962228311955
	.quad	0x3fdd67e9905a2d94              # double 0.45946730706119721
	.quad	0x3fed43f4eb47a718              # double 0.91454549744705371
	.quad	0x3fe9036550dcb2d0              # double 0.78166452210788329
	.quad	0x3fcef5b7ef5d16a8              # double 0.24187373340298746
	.quad	0x3fec463da315754a              # double 0.88357431270893838
	.quad	0x3fd5330288721de0              # double 0.33123839688093248
	.quad	0x3fe58040300ea002              # double 0.67190560709150327
	.quad	0x3fd317ee799cb44c              # double 0.29833566547569457
	.quad	0x3fd7584b0e2399b4              # double 0.36476398831146217
	.quad	0x3fec89576133ea48              # double 0.89176529869957566
	.quad	0x3fbbc30a3b44b020              # double 0.10844482371311459
	.quad	0x3fdbc2ed0117ff0c              # double 0.43377232653436759
	.quad	0x3fed13c9e202deaf              # double 0.90866560118498352
	.quad	0x3fe9b0598629cc64              # double 0.80277706340565346
	.quad	0x3fdf38b08c7f07fc              # double 0.48783506126721909
	.quad	0x3fc22b33f6ceb6ac              # double 0.14194345046182855
	.quad	0x3fe28fe539e4036d              # double 0.58006535822651772
	.quad	0x3fc80b8e2ab5b398              # double 0.18785264096677845
	.quad	0x3fd97a71d24756fa              # double 0.39809842619921165
	.quad	0x3fc156013615a224              # double 0.13543715611309992
	.quad	0x3fe04b0458db0422              # double 0.50915734629245812
	.quad	0x3fa6115caa6eb4c0              # double 0.043101211361638914
	.quad	0x3fe2aedf38d74570              # double 0.58384667493571207
	.quad	0x3fe251f4626d5c9a              # double 0.57250422691403746
	.quad	0x3fe50233afde5343              # double 0.65651878690059851
	.quad	0x3feca6b35b033c97              # double 0.89534919525057688
	.quad	0x3fe78970a8b27283              # double 0.73552735279697889
	.quad	0x3fdd63554497b020              # double 0.45918780992974639
	.quad	0x3f8eedd117223100              # double 0.015102036970596533
	.quad	0x3feb08a78386958d              # double 0.84480643929116328
	.quad	0x3fecf59453f68ad7              # double 0.90497795485529309
	.quad	0x3fe70c19f32c6f91              # double 0.72022721762503938
	.quad	0x3fd9409b58ebc73c              # double 0.39456828769390362
	.quad	0x3feb8d5d62ac20fd              # double 0.86100644370983981
	.quad	0x3fa2c98eacd90080              # double 0.03669401035267672
	.quad	0x3fee028bbe320d8c              # double 0.93781077525675149
	.quad	0x3fccecb4b4b3f888              # double 0.22597369025601588
	.quad	0x3fe5999aa0b68a51              # double 0.67500049008624263
	.quad	0x3fda5c32c296f1b2              # double 0.41187733652966607
	.quad	0x3fe943bdb315cafd              # double 0.78951916673244649
	.quad	0x3fd2956d1100516a              # double 0.2903702417400128
	.quad	0x3fd8c3465af67b06              # double 0.38691862948500988
	.quad	0x3fea859eb8026236              # double 0.82881103457754679
	.quad	0x3fe4382c41b08388              # double 0.63185704069120252
	.quad	0x3fecb99343198739              # double 0.89765322785772306
	.quad	0x3fed14901859f4b8              # double 0.90876011615878038
	.quad	0x3fcc35f4f12670bc              # double 0.22039663100156826
	.quad	0x3fd8eed27bdc15c2              # double 0.38957655044245254
	.quad	0x3fd8a05d6d576634              # double 0.38478789975997363
	.quad	0x3fc3a2e3202370b8              # double 0.15340842313060477
	.quad	0x3fd7a244151703c4              # double 0.36927892741738
	.quad	0x3fb9b1506f11e558              # double 0.10036184989612218
	.quad	0x3fd8e583d5dc05ce              # double 0.38900848278725852
	.quad	0x3fc10f8b7f53ff5c              # double 0.1332868930548966
	.quad	0x3fe2bbf08b67e52f              # double 0.58544184901908192
	.quad	0x3fe423818bbfdf29              # double 0.62933423323463444
	.quad	0x3feb96cfdee4672d              # double 0.86215966733582194
	.quad	0x3f8b258f3b5c9840              # double 0.013255232810092221
	.quad	0x3fd84852a79ca336              # double 0.37941423767420035
	.quad	0x3feca2a9e1fc4d4f              # double 0.89485639703563347
	.quad	0x3feca47a948fdcfb              # double 0.89507798210152545
	.quad	0x3fee093b80520dbd              # double 0.93862700522043208
	.quad	0x3fc3648ee4e4d020              # double 0.15150629211859812
	.quad	0x3fa7a1920368b190              # double 0.046154559055454958
	.quad	0x3fe7c4f093aaaa15              # double 0.7427904972185525
	.quad	0x3fce94d8b36936c4              # double 0.23891743431379642
	.quad	0x3fea75b26a11c616              # double 0.8268673011463672
	.quad	0x3fc82650f46eceb0              # double 0.1886693185348256
	.quad	0x3fe000028ead27de              # double 0.50000121942980136
	.quad	0x3fd4ea39a5276b94              # double 0.32679597023314355
	.quad	0x3fed63f74f2e9641              # double 0.91845288720350748
	.quad	0x3fbaa9962d509fa8              # double 0.10415018659898456
	.quad	0x3fe84bc6f7af1da9              # double 0.75925014854231165
	.quad	0x3fed9121f314f2a9              # double 0.92396638371390793
	.quad	0x3feb7a1f0fb770a1              # double 0.85865738935128288
	.quad	0x3f905838d1833660              # double 0.015961540019637233
	.quad	0x3fd54a8e8d3018b6              # double 0.33267558849218959
	.quad	0x3fe28034f03a2a0e              # double 0.57815024299026319
	.quad	0x3f9611512a757c80              # double 0.021550434319007383
	.quad	0x3fd7e16d2f5e1328              # double 0.37313394189577531
	.quad	0x3fc3b1a5f8a0da9c              # double 0.15385889663749175
	.quad	0x3fe112a8c99372c1              # double 0.53352774973208039
	.quad	0x3fe3c62824795b20              # double 0.6179390632995343
	.quad	0x3fe2919eabcfdd80              # double 0.58027585560823525
	.quad	0x3fdcf4bdb9cb274e              # double 0.45243781227019475
	.quad	0x3fdb0d90aa1267e8              # double 0.42270294769843852
	.quad	0x3fce0db7904e006c              # double 0.23479361101272234
	.quad	0x3fe94d3291b8d75b              # double 0.79067352734885377
	.quad	0x3fdcdb9d353508d4              # double 0.45090418048870373
	.quad	0x3febb797533bef40              # double 0.86616102463401745
	.quad	0x3fc3ac0cb899cbec              # double 0.1536880399104058
	.quad	0x3fc1a96723791b58              # double 0.13798226577838579
	.quad	0x3fa66ca7fee16230              # double 0.043797731269198059
	.quad	0x3fb0fc433d3313b8              # double 0.066349222604073499
	.quad	0x3fdf9742be5f0a22              # double 0.49360722151701186
	.quad	0x3fd57d04a9506b3a              # double 0.3357555058916436
	.quad	0x3fef4e7c5d033d70              # double 0.9783307854321901
	.quad	0x3fe042282e30173a              # double 0.50807580014291109
	.quad	0x3fd641b0d715b336              # double 0.34775944713946971
	.quad	0x3fe59a6e7f463571              # double 0.67510151727917223
	.quad	0x3fdd2ffe98aafade              # double 0.45605435284589457
	.quad	0x3fe7e1edf677c2be              # double 0.74632928980107471
	.quad	0x3fc0d7fac51dac54              # double 0.13159117340851145
	.quad	0x3fef29ae5fe86b33              # double 0.97383803112038547
	.quad	0x3fe8b2c345fd8a82              # double 0.77182162923811881
	.quad	0x3fd726ad27ec2300              # double 0.36173561953232536
	.quad	0x3fe2772aa06fa41a              # double 0.57704669318366375
	.quad	0x3fa25786ab3c4170              # double 0.035824020769839815
	.quad	0x3fdd5fabc986493e              # double 0.45896429710514386
	.quad	0x3fea7562ad4ded95              # double 0.82682927940861595
	.quad	0x3fd34e3582dfc288              # double 0.30164850025816081
	.quad	0x3fe0d668adadf5a0              # double 0.52617296144278569
	.quad	0x3fd7e586775064f0              # double 0.3733841099907087
	.quad	0x3f8bc8653e50c8c0              # double 0.013565817798824376
	.quad	0x3fede396529c746b              # double 0.93403164038649089
	.quad	0x3fd267ed3b101dd2              # double 0.28759318130366041
	.quad	0x3fb21d591516ac58              # double 0.070760314606262198
	.quad	0x3fe9ed7fa7425fa8              # double 0.81024153392626364
	.quad	0x3f8295a8bd0e3ac0              # double 0.0090745146460710079
	.quad	0x3fe7121f2cf6a632              # double 0.72096213132789999
	.quad	0x3fd9b77866824156              # double 0.40182313929201052
	.quad	0x3fce4bb1d7d9168c              # double 0.23668501891568317
	.quad	0x3fea8cbb656d34aa              # double 0.82967920122032024
	.quad	0x3fdae624af4690e8              # double 0.42029683224451597
	.quad	0x3fe662203c0ad1fd              # double 0.69947826125149926
	.quad	0x3fd709b9c750b9e0              # double 0.35996860947025588
	.quad	0x3feed32c48a2cf0b              # double 0.96327795206750133
	.quad	0x3fd24b92456f768a              # double 0.28586251049805667
	.quad	0x3fd1948c56d9ef3e              # double 0.27469166261265687
	.quad	0x3fe72bf0f34667b2              # double 0.72411391749050424
	.quad	0x3fe9e2119b0c927e              # double 0.80884628565816263
	.quad	0x3fd29b935fbdfeb0              # double 0.29074558591671984
	.quad	0x3fd6afc54dcbeb00              # double 0.3544781932575205
	.quad	0x3feba3b759109b4e              # double 0.8637348880336988
	.quad	0x3fe9ca69e0751e2b              # double 0.80595868911126922
	.quad	0x3fe6ba336e133883              # double 0.71022960185088413
	.quad	0x3f74d5dff6357e80              # double 0.0050867794519430243
	.quad	0x3fee3ff98f63d0bf              # double 0.94530942922440164
	.quad	0x3f92885cba1d4c60              # double 0.018098305568241435
	.quad	0x3fe5be9f363f3ed0              # double 0.67951927752616292
	.quad	0x3fe1f0b4ccd08f77              # double 0.56063308718556371
	.quad	0x3fada05ed170ba10              # double 0.057864153925368922
	.quad	0x3fd6aa2c2396e3b2              # double 0.35413650012520315
	.quad	0x3fe323f4f37029a0              # double 0.59813926264296313
	.quad	0x3fed49fdc3411708              # double 0.91528213630292132
	.quad	0x3fee06239360a410              # double 0.93824938568752891
	.quad	0x3fa5b96e9ec6eee0              # double 0.042430359727829048
	.quad	0x3fbada4a00513848              # double 0.1048933268332074
	.quad	0x3fd16daa660de48c              # double 0.27231845823514145
	.quad	0x3fcd808ab47425a4              # double 0.23048528491225995
	.quad	0x3fd5626239da511a              # double 0.33412986421287061
	.quad	0x3fdfbf170ce8b626              # double 0.4960382104935398
	.quad	0x3fe7cfe3aa77c67f              # double 0.74412711424356803
	.quad	0x3fe9b4c9c956e330              # double 0.80331887554266324
	.quad	0x3fd7db162ce6243c              # double 0.37274698624293356
	.quad	0x3fe8794d7418b342              # double 0.76480744052023675
	.quad	0x3fe4b6fb826234af              # double 0.64733672586011959
	.quad	0x3fec44131c7193b5              # double 0.88330989413645133
	.quad	0x3fe8eeb7b87bcf76              # double 0.77914033920249781
	.quad	0x3fe00345871d0763              # double 0.50039936436972388
	.quad	0x3fb74f3913e2fe50              # double 0.091052596430921228
	.quad	0x3fdd9076837e0fe0              # double 0.46194231835420219
	.quad	0x3fd0a1aac9f604f2              # double 0.25986737940554783
	.quad	0x3fd72758d418ba52              # double 0.36177654945905602
	.quad	0x3fc3c6af56b031cc              # double 0.15450088246178806
	.quad	0x3fdd1c49c98ccbe8              # double 0.45485157663932663
	.quad	0x3fddbd1a43776ee8              # double 0.46466690624741469
	.quad	0x3fde1b76e9994534              # double 0.47042630016683806
	.quad	0x3fcc72aa7b6af598              # double 0.2222493269563699
	.quad	0x3fedf9525a848b3c              # double 0.93668477706191977
	.quad	0x3f2eed2fb661c000              # double 2.359505408011664E-4
	.quad	0x3f9b65ab88bd35e0              # double 0.026755027981655632
	.quad	0x3fd64e0cec740070              # double 0.34851382342458859
	.quad	0x3fb19636f9a9f7b8              # double 0.068698345139607819
	.quad	0x3faa8f5286b52050              # double 0.051874712890424335
	.quad	0x3fe49fdee8ac29ae              # double 0.64451547092294503
	.quad	0x3fd5dee37130c5ba              # double 0.34172903112183983
	.quad	0x3fc7044bc01b5ff4              # double 0.17981860046597797
	.quad	0x3fda20fb991c9870              # double 0.40826311065973808
	.quad	0x3fb78e6904a71990              # double 0.092016757617875422
	.quad	0x3fea5284a0e55c71              # double 0.82257300782192833
	.quad	0x3fd4fb661749e686              # double 0.32784416460308596
	.quad	0x3feebc346466a066              # double 0.96047420129344796
	.quad	0x3feed004da01b51c              # double 0.96289293841769874
	.quad	0x3fdfacdee25c3b7e              # double 0.4949261866140019
	.quad	0x3fe23f0ce6875789              # double 0.57019658112652494
	.quad	0x3fdf97d6576ec838              # double 0.49364241159776467
	.quad	0x3fec306c5ba39a77              # double 0.88091104410416576
	.quad	0x3fe134e938cd7b2b              # double 0.53770886511106164
	.quad	0x3fe8ced3803b5b89              # double 0.77524733586584305
	.quad	0x3fd86201c7373e60              # double 0.38098186926524669
	.quad	0x3fec16f0987e7b3d              # double 0.87780027183530474
	.quad	0x3fe9b40db90c64f7              # double 0.80322919981259033
	.quad	0x3facb3f48f50c900              # double 0.056060450071884205
	.quad	0x3fd6485cdcbea044              # double 0.34816667134373724
	.quad	0x3fe1f22713bf1a13              # double 0.56080964905487674
	.quad	0x3fec1ad653c8eb65              # double 0.87827602733828469
	.quad	0x3fdcd1ac3b346da0              # double 0.45029741079062013
	.quad	0x3fe176f2a3b963e6              # double 0.54576999642733592
	.quad	0x3fe000f9ec796451              # double 0.50011917291988983
	.quad	0x3fe57293fa0a44a6              # double 0.67023657642325385
	.quad	0x3fbe6e4a7bf9e078              # double 0.1188704064060192
	.quad	0x3fe712b4c8c1409f              # double 0.72103347024860287
	.quad	0x3fd945badafe232e              # double 0.39488097558983071
	.quad	0x3f82a2ba8d801500              # double 0.0090994429047079883
	.quad	0x3fe6a28aa7acccf1              # double 0.70734150647186145
	.quad	0x3fedfe9896dfeaf4              # double 0.93732861964903557
	.quad	0x3fee9d627ef6bc51              # double 0.95671200559253056
	.quad	0x3fdf4a83430ddd7c              # double 0.48892289684541601
	.quad	0x3fe30cb0054b53b6              # double 0.59529877695114553
	.quad	0x3fee211f98cbc455              # double 0.94154338686906647
	.quad	0x3fec1b88666e904d              # double 0.87836093908527746
	.quad	0x3fbec8cf4ac15b80              # double 0.12025161337929369
	.quad	0x3fc15a115b9fa9fc              # double 0.13556115125477664
	.quad	0x3fd3c29b4f632cec              # double 0.30875284912754242
	.quad	0x3fdf18cccd808944              # double 0.48588867252887646
	.quad	0x3fd27798810db3bc              # double 0.28854954340823347
	.quad	0x3fd3b572399f8a40              # double 0.30794959666505761
	.quad	0x3fea5e276bde7571              # double 0.82399340694580137
	.quad	0x3f87eace0f71d800              # double 0.011678323599181084
	.quad	0x3fb80e284ee213d0              # double 0.093966025599072411
	.quad	0x3feb49e0f388d1a9              # double 0.8527683979541979
	.quad	0x3fcd0998f0386490              # double 0.22685538987642362
	.quad	0x3fec635a91aa2f78              # double 0.88712814760354686
	.quad	0x3fd96b9e19d91e4c              # double 0.39719345592718436
	.quad	0x3feebd39f7f93439              # double 0.96059893066706714
	.quad	0x3fee5d5dc3acd515              # double 0.94889724939153786
	.quad	0x3fd495cf7205b7be              # double 0.32164369711869856
	.quad	0x3fe340c1a5ba06de              # double 0.60165483826150612
	.quad	0x3fd7625ce43929a8              # double 0.36537859237128112
	.quad	0x3fed19180a46379d              # double 0.90931322104164602
	.quad	0x3fe73d5fb6dd300e              # double 0.72624192920329889
	.quad	0x3fe1476e4f1d9932              # double 0.53996959163922598
	.quad	0x3fcfe0fafd163af8              # double 0.24905335767513015
	.quad	0x3fd31de20dee3e4c              # double 0.29869891510404467
	.quad	0x3fdb78be6c500916              # double 0.42924461915403478
	.quad	0x3fdfd7885a816d1e              # double 0.49753006781038944
	.quad	0x3feedfdb0e0a4d01              # double 0.96482613317712673
	.quad	0x3fe04e2a3a4244d2              # double 0.50954162005123238
	.quad	0x3fee18d33dcd7110              # double 0.9405304152565197
	.quad	0x3fe93c4edea26ab6              # double 0.78861182673730101
	.quad	0x3fe66867bf50deac              # double 0.70024478308092375
	.quad	0x3fde14f6db0ac2ca              # double 0.47002955809425073
	.quad	0x3feff5d62899ba7f              # double 0.99875934533868349
	.quad	0x3fe06e4750398af0              # double 0.51346173924352279
	.quad	0x3fdc7cf261cfb7f8              # double 0.44512614776510828
	.quad	0x3fc55822810e1260              # double 0.1667521600867472
	.quad	0x3fe3c01420e8f730              # double 0.6171970980428565
	.quad	0x3fc61651e784ff30              # double 0.1725561504808808
	.quad	0x3fd0d07b05fa7294              # double 0.26272464355296532
	.quad	0x3f632ee3940caa00              # double 0.0023416943444278804
	.quad	0x3fd381a3eed53eb6              # double 0.30478761981519698
	.quad	0x3fdde6dcd52a69c6              # double 0.46721573655090898
	.quad	0x3fbeffdb505e42e8              # double 0.121091563340325
	.quad	0x3fdee09a6079ad8a              # double 0.48245868131081038
	.quad	0x3fefcac963a97546              # double 0.99350423302863855
	.quad	0x3fd196cc53721b60              # double 0.27482898854252902
	.quad	0x3fdbd7935a472b8c              # double 0.43503269020282498
	.quad	0x3fa2a822a6631150              # double 0.036439020930205346
	.quad	0x3fe79ca43506fd89              # double 0.73787126881499987
	.quad	0x3fc6f1960c92d164              # double 0.17924762357655333
	.quad	0x3fe152a1a9fe329b              # double 0.54133685304403245
	.quad	0x3fd048f7be4605c0              # double 0.25445359784506749
	.quad	0x3f9b2fe93a79df20              # double 0.026549953645797264
	.quad	0x3fec153d0a1bff10              # double 0.87759258245930205
	.quad	0x3fcf33bcdb9c177c              # double 0.24376641009456168
	.quad	0x3fe4194face75a15              # double 0.62808975000627021
	.quad	0x3fcf071b195aa3b0              # double 0.24240435350409717
	.quad	0x3fa53be7c2dd8490              # double 0.041472666299122385
	.quad	0x3fcdf4c439e62a88              # double 0.2340321810446151
	.quad	0x3feb78d80c65cff3              # double 0.85850145741869566
	.quad	0x3fe53c39ef56c3ea              # double 0.66360184427150881
	.quad	0x3fda9005b0bd3edc              # double 0.41504041919413992
	.quad	0x3fedde893419effb              # double 0.93341503311194118
	.quad	0x3fd1f7f426e10160              # double 0.28075889393587339
	.quad	0x3fea46c5950fafdd              # double 0.82113913644343095
	.quad	0x3fd4cd5ac5e9eec8              # double 0.32503384902495869
	.quad	0x3fe842269b335859              # double 0.75807504952059468
	.quad	0x3fadedd82ee7e5c0              # double 0.058455234266101552
	.quad	0x3fc693ec74fd50c4              # double 0.17638927185419651
	.quad	0x3fe2cbc47c5b30da              # double 0.5873739651520069
	.quad	0x3fda120619e83c5c              # double 0.40735008745190782
	.quad	0x3fea035312c141f9              # double 0.81290582335537842
	.quad	0x3fe8bdf477dd85c3              # double 0.77318786059566269
	.quad	0x3fe0096ad2ee047c              # double 0.50114957043855624
	.quad	0x3f96af4d5ac13ca0              # double 0.022153099693522749
	.quad	0x3fe68f07b51b2e8e              # double 0.70495972988415345
	.quad	0x3fda076bc66b7782              # double 0.40670294167454568
	.quad	0x3fea9872d3e48ffc              # double 0.83110944161717226
	.quad	0x3fd0cc938fb52e06              # double 0.2624863532443843
	.quad	0x3fd5c9fa3e203ad6              # double 0.34045272891027645
	.quad	0x3fe30bd313bdf40b              # double 0.5951934228502308
	.quad	0x3fdef1c4f59f97ca              # double 0.48350643145238037
	.quad	0x3fe65bc9fc74de6e              # double 0.69870471294320935
	.quad	0x3fcb6185281f78d8              # double 0.21391357859733406
	.quad	0x3fceeaa617e451cc              # double 0.24153591314883582
	.quad	0x3fe9df082b00698f              # double 0.8084755744815072
	.quad	0x3fea2e664ff05173              # double 0.81816402066264826
	.quad	0x3fe611e659d37e1e              # double 0.68968503517311652
	.quad	0x3fe671138eb291d3              # double 0.70130327101338208
	.quad	0x3fe14cd53d15e3b9              # double 0.54062902384531875
	.quad	0x3fea38e262aa3d1a              # double 0.81944388647562794
	.quad	0x3fdfceab4d9cfae8              # double 0.4969890840474549
	.quad	0x3fbdd97e741ff6f8              # double 0.11659994444923061
	.quad	0x3fed7be82cc5309e              # double 0.92137535804933512
	.quad	0x3fee2dbe97ca4ae6              # double 0.94308404585384831
	.quad	0x3fed5a1e329e56fb              # double 0.91725072752407699
	.quad	0x3fdf56e42aa57d56              # double 0.48967842259113092
	.quad	0x3fec0f96be35451e              # double 0.876902934551399
	.quad	0x3fe590debf7a10cd              # double 0.67393433950248893
	.quad	0x3fe8f1e91a3de78e              # double 0.7795300972495498
	.quad	0x3fecc3073f9c2729              # double 0.89880716728041421
	.quad	0x3fe7d9e01fc56671              # double 0.74534612851421234
	.quad	0x3fe6f89edf8ba341              # double 0.71784919415686244
	.quad	0x3fb797d80b865870              # double 0.092160704435032547
	.quad	0x3fd96240ad64886e              # double 0.39662186558610457
	.quad	0x3fd8f4bdbc0fa34e              # double 0.3899378143819846
	.quad	0x3fd3e800fa5513ac              # double 0.31103538939015141
	.quad	0x3f9470be0bd8d840              # double 0.019961328003965884
	.quad	0x3fec5a7bb4dd2cc8              # double 0.88604531598084524
	.quad	0x3fdc1e9b8b758504              # double 0.4393681394486324
	.quad	0x3fd4393cf1d1647a              # double 0.315993534231502
	.quad	0x3fe945dc7861c81f              # double 0.78977797996617827
	.quad	0x3fe56b0ddf1465df              # double 0.66931813783883942
	.quad	0x3fee57cd9328c6c9              # double 0.9482181429104567
	.quad	0x3fd27e01f7c4216a              # double 0.28894089885627372
	.quad	0x3fbdc4b4e4842100              # double 0.11628275469786686
	.quad	0x3fef0d485cd56444              # double 0.97037141925387304
	.quad	0x3fec72172ca296ee              # double 0.88892706601902005
	.quad	0x3fe3cd1bcc0b7d89              # double 0.61878766872898538
	.quad	0x3fda5c56cfe9d90a              # double 0.41188593200730905
	.quad	0x3fb8d35ad9b88198              # double 0.096975019602274393
	.quad	0x3feb1d37289fb74b              # double 0.8473163407740939
	.quad	0x3fc4a1ec68262654              # double 0.1611915119686268
	.quad	0x3f9be168ae032cc0              # double 0.027227054234384651
	.quad	0x3fa30833f38ee3d0              # double 0.037171958428593777
	.quad	0x3fd04a90f1640bbe              # double 0.25455115865059585
	.quad	0x3fec0aa1eaa48639              # double 0.87629791096350751
	.quad	0x3fec1f8474a68a47              # double 0.87884733947095917
	.quad	0x3fe0c89a163b3736              # double 0.52448753683140725
	.quad	0x3fe9107650a8fe99              # double 0.78325954202587689
	.quad	0x3fe84ce370f8a385              # double 0.75938579621025382
	.quad	0x3fd023f535e7c2d4              # double 0.25219469322386812
	.quad	0x3fec6738c4ed48de              # double 0.88760031187328159
	.quad	0x3fa6f1107b78dca0              # double 0.044807925293235629
	.quad	0x3fea140b0941beca              # double 0.81494666870090637
	.quad	0x3feb3e49079bfab8              # double 0.85135318266096416
	.quad	0x3fe09ee3ef155634              # double 0.51939579673734793
	.quad	0x3fd479c0b585b5ce              # double 0.31993119932925829
	.quad	0x3fe81c9d719f28ee              # double 0.75349304382078031
	.quad	0x3fce5b4e9dc54a90              # double 0.23716147140165278
	.quad	0x3fc9c0911d9c5504              # double 0.20118917413552861
	.quad	0x3fb99fad6e658ea0              # double 0.10009273476822012
	.quad	0x3fe79ff611598f50              # double 0.73827651394501892
	.quad	0x3fe489ee2840c964              # double 0.64183719503334347
	.quad	0x3feba137321818f0              # double 0.86342963966379038
	.quad	0x3fe1dea70667ab26              # double 0.55842925311057878
	.quad	0x3fe8274f67bb1ea8              # double 0.75479860553692379
	.quad	0x3fe7d268e3d7dc06              # double 0.74443478108048633
	.quad	0x3fe3be713483fa55              # double 0.61699733979169002
	.quad	0x3fd22b5385f7a050              # double 0.2838944252275768
	.quad	0x3fec6e7c45023a5f              # double 0.88848699072134341
	.quad	0x3fea9ea519981aed              # double 0.83186583517894308
	.quad	0x3fda0b8613e1ced0              # double 0.40695335332496274
	.quad	0x3fe3d4e66eac57d6              # double 0.61973878494131429
	.quad	0x3feb67bdf81b074b              # double 0.85641382654305553
	.quad	0x3fe6d8d8e614e7bc              # double 0.71397061288666164
	.quad	0x3fe990b305edd8e1              # double 0.79891348989511013
	.quad	0x3feac179b51e5154              # double 0.8361176049680048
	.quad	0x3fe65d659900e5e5              # double 0.69890098460672034
	.quad	0x3fcc2244bb20e218              # double 0.21979579102641433
	.quad	0x3fec955b0c641e6c              # double 0.89323189182409867
	.quad	0x3fc4309320dacd80              # double 0.15773238281472501
	.quad	0x3febc6198c8e4e67              # double 0.86793210460969028
	.quad	0x3fe65f023836b786              # double 0.69909773806806252
	.quad	0x3fdccbdfffac7a18              # double 0.44994354217661359
	.quad	0x3fa49f5fc40a0340              # double 0.040278427773051906
	.quad	0x3fdc6229ec5d8cec              # double 0.44349144060670542
	.quad	0x3fad2e39df7324b0              # double 0.056993301893791481
	.quad	0x3f8509411d08a080              # double 0.010271557520425967
	.quad	0x3fcdc367f7e25b28              # double 0.232525821721276
	.quad	0x3fddabfbf34eb13c              # double 0.46362208137977112
	.quad	0x3fee3d9eaa60ee72              # double 0.94502194668844042
	.quad	0x3fdc3dd1445b85f4              # double 0.44127303767717696
	.quad	0x3fe07e747312111c              # double 0.51543638682099724
	.quad	0x3fb611ea8a7e4fe0              # double 0.086210879146448871
	.quad	0x3fd5966a838517a2              # double 0.33730566829432906
	.quad	0x3f896e80c9919d40              # double 0.012417799140350128
	.quad	0x3fe5beda4320dbac              # double 0.67954743491178737
	.quad	0x3fef59ad1770b76b              # double 0.97969679430182787
	.quad	0x3fe39fd56b23cadb              # double 0.61326094556565225
	.quad	0x3fe700d1be9812fb              # double 0.71885001397512782
	.quad	0x3fc414fb000f28c8              # double 0.15689027312175186
	.quad	0x3fc88df7a68f9524              # double 0.19183250077109293
	.quad	0x3fe2f678beeccd66              # double 0.5925868729595265
	.quad	0x3fc166e1b9dcb0ec              # double 0.13595220160767185
	.quad	0x3fe29ced33ab5476              # double 0.58165607539798603
	.quad	0x3fe5aa2b9af56453              # double 0.67702274575561672
	.quad	0x3fda41e93fdf30f0              # double 0.41027289617046758
	.quad	0x3fe08f82e9e74b3f              # double 0.51751847919727101
	.quad	0x3fe82ab5ea0d6d6c              # double 0.75521369660729709
	.quad	0x3fe5c3b1adee45a6              # double 0.68013843508577021
	.quad	0x3fed76520bea474c              # double 0.92069341971566975
	.quad	0x3fd4b67e66ed1afe              # double 0.32363853503595397
	.quad	0x3fd39b949a7d10f4              # double 0.30637087904712179
	.quad	0x3fba3bd4375f1a08              # double 0.10247541763155976
	.quad	0x3fd2c9d64798894a              # double 0.29356915466100431
	.quad	0x3fea9b9355e73c6a              # double 0.83149115350705682
	.quad	0x3fd732795931329e              # double 0.3624556895272607
	.quad	0x3fb70095cd201670              # double 0.089852678851537026
	.quad	0x3fe241133172a2b4              # double 0.57044372232220164
	.quad	0x3fe9bb981d13ad75              # double 0.80414968184542934
	.quad	0x3fe2093d16255769              # double 0.56362776112903845
	.quad	0x3fda06c511d1b030              # double 0.40666319599290812
	.quad	0x3fe6f765c7f16add              # double 0.71769990016340623
	.quad	0x3fde2c7889fb76ee              # double 0.47146428561050768
	.quad	0x3fe040f5fb285148              # double 0.50792979292104068
	.quad	0x3fc239e2cc376ae4              # double 0.14239153834827001
	.quad	0x3fd839618a2863ec              # double 0.37850225917787728
	.quad	0x3fecd12644e54540              # double 0.90053094345254436
	.quad	0x3fd6b5904cbd6c5c              # double 0.35483176702627417
	.quad	0x3f8fb31ac0137ec0              # double 0.015478333460520743
	.quad	0x3fe4417c7553a677              # double 0.63299391665823534
	.quad	0x3fe8f3a82cb24967              # double 0.77974327783367137
	.quad	0x3fec2ef54000a5ad              # double 0.88073217869275811
	.quad	0x3fe550665f7ec377              # double 0.666064440263752
	.quad	0x3fe13aca5e3e3cbf              # double 0.53842657477243694
	.quad	0x3fe0cd21091cc7cb              # double 0.52504016666193232
	.quad	0x3feff1b1578db0b2              # double 0.99825350857056194
	.quad	0x3fe5f6465a289fcb              # double 0.68631284340971754
	.quad	0x3fb210f63aebdd48              # double 0.070571317086309482
	.quad	0x3fb2f80e1fc89c28              # double 0.074097521552730528
	.quad	0x3fe1262f8437e606              # double 0.53591132949731057
	.quad	0x3fba3033ea2f7308              # double 0.10229801623740908
	.quad	0x3fe262239ebd6ae3              # double 0.57447987560166458
	.quad	0x3fdde77bd7ffc0a6              # double 0.46725364774375533
	.quad	0x3fe0f833c973dcbc              # double 0.53029813142975213
	.quad	0x3fec5eff179252e9              # double 0.88659624675582649
	.quad	0x3fd528924e8d2be4              # double 0.33060128851928838
	.quad	0x3fe459897be872b3              # double 0.6359298152998093
	.quad	0x3fdf72aed7d461ba              # double 0.4913746936522575
	.quad	0x3fc40a9d1eb6a840              # double 0.15657390594179965
	.quad	0x3fed281437e0b907              # double 0.91114245332372057
	.quad	0x3feb997b37381509              # double 0.86248551163649367
	.quad	0x3fda67eed9ee2022              # double 0.41259356767887045
	.quad	0x3fea7112ff7ed7cc              # double 0.82630300427876468
	.quad	0x3feea9f23f5d57a2              # double 0.95824539543058429
	.quad	0x3fe2a7dd2c3fad2f              # double 0.58299120561915696
	.quad	0x3fe5d89306f66fb0              # double 0.68268729553118668
	.quad	0x3fe63ca60313c9a2              # double 0.69490337945017111
	.quad	0x3fdb861c7a816458              # double 0.43006050074979418
	.quad	0x3fef9abb3ca7e59b              # double 0.98763810965390363
	.quad	0x3fe70de821f61465              # double 0.72044760354095827
	.quad	0x3fdfc70f52bbc1da              # double 0.49652464942394448
	.quad	0x3fe8c5761dc1829e              # double 0.77410417377184948
	.quad	0x3fc1d3d0f9ee6dd8              # double 0.13927662089996207
	.quad	0x3fc2982f9804d4a4              # double 0.14526934550091142
	.quad	0x3fe410ae385a2166              # double 0.62703619962944113
	.quad	0x3fe18823ae30d983              # double 0.5478685762562211
	.quad	0x3fecbe32ccafec41              # double 0.89821758249252792
	.quad	0x3fa156c844e0caf0              # double 0.033865221412630819
	.quad	0x3fea095d3edfcd94              # double 0.81364309578059357
	.quad	0x3fcd3d9eaf139570              # double 0.22844298885972192
	.quad	0x3fef637ab176df60              # double 0.98089346562390389
	.quad	0x3fc232dd4951bacc              # double 0.14217725830118011
	.quad	0x3faa6cf9064ff5b0              # double 0.051612646122502936
	.quad	0x3fa921cc6d6233d0              # double 0.049085987427225697
	.quad	0x3fbd8213c7bd6000              # double 0.11526607157190938
	.quad	0x3fe3318ea14eec88              # double 0.59979945664908119
	.quad	0x3feeb196bbe5978f              # double 0.95917832087137522
	.quad	0x3fedb57936fdaef9              # double 0.92840252628727093
	.quad	0x3fecc282a7d37f68              # double 0.89874394205615449
	.quad	0x3fef0168b94e68e1              # double 0.96892200653681126
	.quad	0x3fc02b0f0167c644              # double 0.12631404465314422
	.quad	0x3faf80241928e570              # double 0.06152451331258646
	.quad	0x3fddda7ef9eb3764              # double 0.46646093755850004
	.quad	0x3fb00e2cd6b269e0              # double 0.06271629563926906
	.quad	0x3fe25c01861dcf4d              # double 0.57373119539850281
	.quad	0x3feef4bbaf5c099c              # double 0.96737465143114631
	.quad	0x3fe3057392243217              # double 0.59441546004524326
	.quad	0x3fef2e37e4021ec8              # double 0.97439188511722196
	.quad	0x3fe4339a9b8dda2d              # double 0.63129930860197236
	.quad	0x3fe2ded72f574354              # double 0.58970221754325758
	.quad	0x3fd26c3e22d3f972              # double 0.28785661126303019
	.quad	0x3fd28e5b34623172              # double 0.28993873706419671
	.quad	0x3fe7adef163798b8              # double 0.73998216952602203
	.quad	0x3fb05c1ca8371320              # double 0.063905516689441999
	.quad	0x3fefe9a6fd2e8b98              # double 0.99727200936864601
	.quad	0x3fee26091e906095              # double 0.94214302033926123
	.quad	0x3fe9e65bfe44d648              # double 0.80937003766911975
	.quad	0x3feba0b438058903              # double 0.86336718503687881
	.quad	0x3fe91e494cb8fa97              # double 0.78494706139447856
	.quad	0x3fe1463f594b5c08              # double 0.53982512893969758
	.quad	0x3fd8e73a9316ffbc              # double 0.3891130863594261
	.quad	0x3fe601a14d69c990              # double 0.68769898528835149
	.quad	0x3fe01418d740b118              # double 0.50245325128119855
	.quad	0x3f94d98677e46140              # double 0.020361043040879823
	.quad	0x3fecadd69280c4f6              # double 0.8962204800974678
	.quad	0x3fc33578d5db5888              # double 0.15006933634021302
	.quad	0x3f957537fe302ee0              # double 0.020954966439645228
	.quad	0x3fd58b93e188b9d8              # double 0.33664414429486333
	.quad	0x3fe05e0feb379d21              # double 0.51148220005862666
	.quad	0x3fef60511775220e              # double 0.98050741750290782
	.quad	0x3fdaebd1be3e3a5a              # double 0.42064326837945532
	.quad	0x3fe7945533cecf0a              # double 0.73685703390808155
	.quad	0x3fe16d4eb3109f0e              # double 0.54459319089525748
	.quad	0x3f9b40ec7321efa0              # double 0.026614851500638914
	.quad	0x3fd69eee3d1afc06              # double 0.35345035521817214
	.quad	0x3fd71e2f9dc83258              # double 0.36121740730667318
	.quad	0x3fed232b2065d8e7              # double 0.91054302528098396
	.quad	0x3fd6765e092bf820              # double 0.35097456832579788
	.quad	0x3feb691f35bd8d0f              # double 0.85658226486376232
	.quad	0x3feb1f3ef03cceee              # double 0.84756419106858316
	.quad	0x3fee2cf5e544a1c8              # double 0.94298834589886215
	.quad	0x3fef8b212af2b427              # double 0.98573358906071895
	.quad	0x3fbe3a68325f9a28              # double 0.11807872037716349
	.quad	0x3fe89345c67c732c              # double 0.76797760741064768
	.quad	0x3f99404aaef13ec0              # double 0.024659315993914133
	.quad	0x3fe3f0cb6a7c9e0f              # double 0.62314387129021209
	.quad	0x3fcab9f9607fda68              # double 0.20880048000227025
	.quad	0x3fa116d36134dc30              # double 0.033377271286035515
	.quad	0x3f8ac6281e976540              # double 0.013073266442847342
	.quad	0x3fedfe4927cedc83              # double 0.93729074263582424
	.quad	0x3fe48f246de6d0bf              # double 0.64247342553291975
	.quad	0x3fb26fb2dd436128              # double 0.07201688672956108
	.quad	0x3fe90096d0d0bb19              # double 0.78132191452263833
	.quad	0x3fca3d813362669c              # double 0.20500197419169275
	.quad	0x3fc98fc3a539013c              # double 0.19969983642114097
	.quad	0x3fd38ab5467b3c32              # double 0.30534107096622443
	.quad	0x3fe736ece21865d7              # double 0.72545475157965711
	.quad	0x3fd7b9a2ec48d8f2              # double 0.37070534777320951
	.quad	0x3feffa223fa8c609              # double 0.99928390916301268
	.quad	0x3fe2bd8a14c8dffb              # double 0.58563713130479245
	.quad	0x3fdebf2136f43bba              # double 0.48041563383679498
	.quad	0x3fd012c7e2daf630              # double 0.25114628938522099
	.quad	0x3fdde2af694205ac              # double 0.46696076659290031
	.quad	0x3fe9a8de81b5828e              # double 0.80186391195100426
	.quad	0x3fd341d41590007c              # double 0.30089284997666943
	.quad	0x3fd7e668dbb95e00              # double 0.3734380861037323
	.quad	0x3fec3ea0bfe5acdc              # double 0.88264501075664325
	.quad	0x3fe6963b7d4d4d8e              # double 0.70583891366043061
	.quad	0x3fc084c4acd93e38              # double 0.12905176582215616
	.quad	0x3fec0a0faf2608dc              # double 0.87622818192201235
	.quad	0x3fcc241079ef0608              # double 0.2198505969409299
	.quad	0x3fd58eea07ed61e6              # double 0.33684778951785999
	.quad	0x3fe897907a7297e7              # double 0.76850150981476595
	.quad	0x3fe81aee81120a52              # double 0.75328755578113715
	.quad	0x3febce647095608b              # double 0.86894437779393863
	.quad	0x3fca860ebff6acf8              # double 0.20721611378881
	.quad	0x3fe700b4269fd16e              # double 0.71883590263182184
	.quad	0x3fd1f4eb540611b2              # double 0.28057368474426447
	.quad	0x3fe060b35786c99e              # double 0.51180426688215497
	.quad	0x3fee440eea2bd684              # double 0.94580789314814284
	.quad	0x3fb5b87d4230b9c0              # double 0.084846333179235067
	.quad	0x3fe5cc0d431471aa              # double 0.68115866757903132
	.quad	0x3fbd633ef997a828              # double 0.11479562371792496
	.quad	0x3fdac4e3a6cd9250              # double 0.41826716698986832
	.quad	0x3fe95b37d57eb7e6              # double 0.79238502214661533
	.quad	0x3fd5cb95ebba3842              # double 0.3405508806253047
	.quad	0x3fdf5d718da25f2e              # double 0.49007834273787665
	.quad	0x3fe0f108579b106c              # double 0.52942292318813378
	.quad	0x3fd306720b6a955e              # double 0.29726840128781429
	.quad	0x3fca5d0be53546ec              # double 0.20596455280115522
	.quad	0x3fef0330f564fb8b              # double 0.96913955620390035
	.quad	0x3fb874857a77fa20              # double 0.095527975463462144
	.quad	0x3feeb7d9c2c9cc96              # double 0.95994270367227119
	.quad	0x3fe40b7f72724c6f              # double 0.62640354492977035
	.quad	0x3faa13abc8edca30              # double 0.050931328084420691
	.quad	0x3fdfb81db7e97308              # double 0.49561255417010885
	.quad	0x3fd1ed4ec68e7872              # double 0.28010911360059432
	.quad	0x3feef264c309587d              # double 0.96708906262462301
	.quad	0x3fd5810043410e74              # double 0.33599859779153651
	.quad	0x3fc3d66a0d585718              # double 0.15498090411772902
	.quad	0x3fdfc38c2c8bfbc4              # double 0.49631027555727436
	.quad	0x3fe471086c61da3f              # double 0.63879796188741256
	.quad	0x3fe8de2427b25027              # double 0.77711684945325465
	.quad	0x3fe1517bd2aa955e              # double 0.54119673867959839
	.quad	0x3fe93d5c90800845              # double 0.78874042723351379
	.quad	0x3fef63776b50033c              # double 0.98089190444452567
	.quad	0x3febaf3a32e3998e              # double 0.86514005603093991
	.quad	0x3fee59ff4d10ab89              # double 0.94848599483280893
	.quad	0x3fcf5dfb66aef128              # double 0.24505560411297123
	.quad	0x3fef2ac1273864b1              # double 0.97396905575000947
	.quad	0x3fdf7cf463ca1058              # double 0.49200162644433965
	.quad	0x3fb7d0bba3ad46d0              # double 0.093028762302562073
	.quad	0x3fda77a9b592667c              # double 0.41355364543560547
	.quad	0x3fba9047f15a42b8              # double 0.10376405374905573
	.quad	0x3fdd3287a5efd802              # double 0.45620909886145011
	.quad	0x3fdb511d4ac36b30              # double 0.42682583142384356
	.quad	0x3fd416d86f7f1944              # double 0.31389437568977407
	.quad	0x3fc0209dd9c605f0              # double 0.12599537976716091
	.quad	0x3fe83e60be914fcd              # double 0.75761449070204778
	.quad	0x3fecef22f92a4191              # double 0.90419148125697479
	.quad	0x3fee7036ad3bbf96              # double 0.95119794687888048
	.quad	0x3fc534aeb7075edc              # double 0.16567024170830436
	.quad	0x3fd047ed3f9fce5a              # double 0.25439006055169033
	.quad	0x3fe0df7f1a845f4c              # double 0.52728228739850058
	.quad	0x3fdbe83d4a91ea54              # double 0.43604976923203265
	.quad	0x3fd24704d11a6e0c              # double 0.28558464451063581
	.quad	0x3fe9d606d5b5b92e              # double 0.80737630596357746
	.quad	0x3f9f40c608b90f80              # double 0.030520529062655566
	.quad	0x3fe722b439623c01              # double 0.72298632819899933
	.quad	0x3fd87c765a4e9526              # double 0.38259657687224757
	.quad	0x3fe461d7e0b2aa9e              # double 0.63694375883399679
	.quad	0x3fea9bb17bd97412              # double 0.83150552930203703
	.quad	0x3fd1ae6f600936ba              # double 0.27627167109026696
	.quad	0x3fe9c4aa57bee7b4              # double 0.80525700700603985
	.quad	0x3fbf62ec10c28060              # double 0.12260318192648034
	.quad	0x3fb18606d021f330              # double 0.068451333821894833
	.quad	0x3fe9ab448b1e2b9f              # double 0.80215670749145207
	.quad	0x3fc577e339b25060              # double 0.16772117917264762
	.quad	0x3fb845407ca605a8              # double 0.094806700164574154
	.quad	0x3fed1eaddd8fb13c              # double 0.90999501489344636
	.quad	0x3fe6bd9a0dedcc15              # double 0.71064474792945254
	.quad	0x3fa4d1aae7731d20              # double 0.040662136796124182
	.quad	0x3fe1bb87682342f3              # double 0.55414171542551427
	.quad	0x3fd682c697be0362              # double 0.35173191851213492
	.quad	0x3fd9aa276345a5ac              # double 0.40101036734139472
	.quad	0x3fe0cbab089a08d3              # double 0.5248618286134622
	.quad	0x3fd8d96e2d0317c0              # double 0.38827089687071847
	.quad	0x3fe90114e1fcc07b              # double 0.78138202798983458
	.quad	0x3fe2ae327eeeea99              # double 0.58376431266454454
	.quad	0x3fa63887eb36a970              # double 0.043400046789730307
	.quad	0x3fef6588883fed7e              # double 0.98114420520089118
	.quad	0x3fe7ac84ef7d6c92              # double 0.73980948233965393
	.quad	0x3fae086dafac5e70              # double 0.058658054060455878
	.quad	0x3fd6cf0e2e389d7a              # double 0.35638765825066054
	.quad	0x3fe2c8999bee362a              # double 0.58698730902842056
	.quad	0x3fc9575bac728a6c              # double 0.19797845764431388
	.quad	0x3fddefdaeca378e6              # double 0.46776459798083037
	.quad	0x3fe9255416775688              # double 0.78580669773028067
	.quad	0x3fe3cd6fde4af2f1              # double 0.61882775703960935
	.quad	0x3fef59cacc5a2803              # double 0.97971095955404086
	.quad	0x3fe30dadb8a3baa6              # double 0.59541975080886256
	.quad	0x3fb9d0d75deee0a8              # double 0.10084291499413445
	.quad	0x3f7ac34b73ef1800              # double 0.0065339038255327608
	.quad	0x3fca969cb66b5710              # double 0.20772131831352469
	.quad	0x3fea07b4b2cb728a              # double 0.81344065590708792
	.quad	0x3feba1f901690116              # double 0.86352205539154414
	.quad	0x3feed00d18cbf81b              # double 0.96289687007061119
	.quad	0x3fecf76614d6d95d              # double 0.90520004339377247
	.quad	0x3fe7320ab6b06711              # double 0.72485862428149705
	.quad	0x3fe915da8a4a88bd              # double 0.78391768465032607
	.quad	0x3fd235477181bfd4              # double 0.28450189671184245
	.quad	0x3fd1455e19d5a76a              # double 0.2698588611880185
	.quad	0x3fead53bd471b3af              # double 0.83852950566289575
	.quad	0x3fe37b7acdc6386f              # double 0.60882320585529992
	.quad	0x3fed893282f7b2e5              # double 0.92299771861652558
	.quad	0x3fe14f8f95c2c55a              # double 0.54096202135239513
	.quad	0x3fdc7f5f310ccb9c              # double 0.44527416029012001
	.quad	0x3fe634282b9105b9              # double 0.69386681088524604
	.quad	0x3fd0f7cd7f62c23c              # double 0.26512467803971496
	.quad	0x3fe1c51d81e437df              # double 0.55531192178181843
	.quad	0x3fc01e23da3e8d00              # double 0.12591980129682412
	.quad	0x3fd32030e08e9a34              # double 0.29883977822683794
	.quad	0x3fe38f487959a3e7              # double 0.61124061299517229
	.quad	0x3fd0737963e6ee50              # double 0.25704798465787793
	.quad	0x3fd1f7172dd0edcc              # double 0.28070620989066408
	.quad	0x3fd4627127663fb6              # double 0.31850842330549811
	.quad	0x3fc4308b2e89cdd4              # double 0.15773143551233082
	.quad	0x3fec6214cc2d48cb              # double 0.8869728076772615
	.quad	0x3fd19847f765fb14              # double 0.27491950187679604
	.quad	0x3fcc5622f4e38ce4              # double 0.22137867886986051
	.quad	0x3fef9aa4f769a32d              # double 0.98762749026091045
	.quad	0x3fd64e901203bec6              # double 0.34854509124032196
	.quad	0x3fe8d9a247bf6326              # double 0.77656663907246037
	.quad	0x3fd2394b96f54266              # double 0.2847470258903172
	.quad	0x3fb8ff53269fceb0              # double 0.097645947389362275
	.quad	0x3f96d2228338b060              # double 0.022285975703354999
	.quad	0x3fc1c695f8477dc0              # double 0.13887285826693407
	.quad	0x3fd9a8b89a1d3af6              # double 0.40092291879857045
	.quad	0x3fdd0e3958dfe9be              # double 0.45399316481748631
	.quad	0x3fdef2e34b64e63e              # double 0.48357469904621897
	.quad	0x3fea28c2f5f5496a              # double 0.81747577704144914
	.quad	0x3fef513532db1b9c              # double 0.97866306240836165
	.quad	0x3feb171b146309df              # double 0.84657052976427483
	.quad	0x3fe086e6aa9a8067              # double 0.51646741219520897
	.quad	0x3fe9de94dc840c28              # double 0.8084205920171188
	.quad	0x3fa802730ef1d250              # double 0.046893687795919292
	.quad	0x3fe08ea3ceadcb64              # double 0.51741209380120923
	.quad	0x3fcbb4011352e930              # double 0.21643079227016804
	.quad	0x3fa0ce34c95e6ab0              # double 0.032823228436617113
	.quad	0x3fe0df4317e37b01              # double 0.5272536722730764
	.quad	0x3fac72f58259dac0              # double 0.055564567720400415
	.quad	0x3fdefbca5cc2f1be              # double 0.48411807116260863
	.quad	0x3fec5872b73f5eb6              # double 0.88579688826117464
	.quad	0x3fedf1ad550b2cdb              # double 0.93575159654701723
	.quad	0x3fcc1dea52bcf1f4              # double 0.21966294326729463
	.quad	0x3fee8e3b21d28355              # double 0.95486218076630769
	.quad	0x3fa27f2da886cab0              # double 0.036126543829046454
	.quad	0x3fe999d7b54e11c9              # double 0.80002961550831586
	.quad	0x3fc020f7a5261b08              # double 0.12600608409794511
	.quad	0x3fd1885715a6f152              # double 0.27394654383148975
	.quad	0x3fdb68875aae2054              # double 0.42825492721067815
	.quad	0x3fdb0bb908f48f5e              # double 0.42259050249616859
	.quad	0x3fddcc53d7ceca22              # double 0.46559616160371509
	.quad	0x3fe1189e79d57ec1              # double 0.53425525470444069
	.quad	0x3fd672e58971c6f6              # double 0.35076273367222599
	.quad	0x3fee922914664ecd              # double 0.95534185394577664
	.quad	0x3f9dd296b7ce3dc0              # double 0.029123644798856096
	.quad	0x3fe3acc2392fa27a              # double 0.61483870667605278
	.quad	0x3fe9450ddfe3502f              # double 0.78967946746934625
	.quad	0x3fca6401e799567c              # double 0.20617698486846681
	.quad	0x3fe569fbc54ee032              # double 0.66918743645420009
	.quad	0x3febb3612d932a64              # double 0.865646924031648
	.quad	0x3feb6e2a82276833              # double 0.8571980039662378
	.quad	0x3fecdab40f67d02d              # double 0.90169718750849415
	.quad	0x3fedfd033a3c8cac              # double 0.93713532804794885
	.quad	0x3fe0109a664966bd              # double 0.50202674844623341
	.quad	0x3fcf78685efe215c              # double 0.24586205137553463
	.quad	0x3fe3aa1e08f31f2c              # double 0.61451627490985095
	.quad	0x3fd876ececd6a544              # double 0.38225863579517161
	.quad	0x3fea83630bccc01b              # double 0.82853843979501407
	.quad	0x3febc62e384856f6              # double 0.86794196121874623
	.quad	0x3fef7f695c172305              # double 0.98430316912080739
	.quad	0x3fe08ecb67128575              # double 0.51743097430532592
	.quad	0x3fef6261d34526c8              # double 0.98075953735061549
	.quad	0x3fc164678666b878              # double 0.13587659895478388
	.quad	0x3fe7dfba801f72ed              # double 0.74606061004632596
	.quad	0x3fca9ab649eef7bc              # double 0.20784643754990195
	.quad	0x3fd678c91740236a              # double 0.35112216253815254
	.quad	0x3f9b2c291a7818e0              # double 0.026535646668002566
	.quad	0x3fe3bde2febdfb56              # double 0.6169295287544212
	.quad	0x3fd42aa06b9481fe              # double 0.3151017237269399
	.quad	0x3fe21e3e8e825f72              # double 0.56619193872300699
	.quad	0x3fb316c19640cbb8              # double 0.074565982039344614
	.quad	0x3fe82c6776a957e1              # double 0.75542042900155704
	.quad	0x3fc2322dfdc5fa30              # double 0.14215636149670408
	.quad	0x3fdc6f9fc06997c6              # double 0.44431299009590608
	.quad	0x3fdbab39f016a1b2              # double 0.43232582517751006
	.quad	0x3fe514f08f926971              # double 0.65880611459151173
	.quad	0x3f613cb57b688400              # double 0.0021041435786774976
	.quad	0x3feda4fd1874dbfb              # double 0.92639021660477228
	.quad	0x3fa3908805c83a00              # double 0.038212061601473835
	.quad	0x3fec11a2911127ac              # double 0.87715271314049436
	.quad	0x3fc123da89f916b8              # double 0.13390666710818322
	.quad	0x3fc103d9026faca4              # double 0.1329299222846646
	.quad	0x3fe74825e5818c33              # double 0.72755713296317592
	.quad	0x3feb0970d6ac4b6d              # double 0.84490243843388912
	.quad	0x3fe31bc78d134ad7              # double 0.59714105180531873
	.quad	0x3fc47a53a634290c              # double 0.15998311629693551
	.quad	0x3fe424cc842df4e6              # double 0.62949205223381166
	.quad	0x3fd9e5d656017dfe              # double 0.40465315245634759
	.quad	0x3fe912b08ea8ff68              # double 0.7835314546900749
	.quad	0x3fe5bf75fd23f3f3              # double 0.67962169114582449
	.quad	0x3fdb3992162498c0              # double 0.42538883364103341
	.quad	0x3faa2bbfcb6eec60              # double 0.051115029891172226
	.quad	0x3fedab19bed0fdba              # double 0.92713629978964396
	.quad	0x3fd6e2ae1f89b64a              # double 0.35758545951725706
	.quad	0x3fc3ea5dc4dfe290              # double 0.155589791422035
	.quad	0x3fe71844fc856f40              # double 0.7217125827841997
	.quad	0x3fdedf0d79f89c5a              # double 0.48236405287975048
	.quad	0x3fe3ce00984114d3              # double 0.61889676797059179
	.quad	0x3fe7607362f474de              # double 0.73052377059107321
	.quad	0x3fede0c562d39547              # double 0.93368787099886041
	.quad	0x3fe584c43b46111c              # double 0.67245685173887493
	.quad	0x3fd12168bda5fe3a              # double 0.26766413231232244
	.quad	0x3fea1f87352bc954              # double 0.81634865174263859
	.quad	0x3fcc942b90f99a38              # double 0.22327179507120021
	.quad	0x3fe418122d8fa744              # double 0.62793835543309529
	.quad	0x3fe25ff2d654ebb5              # double 0.57421247350372673
	.quad	0x3fe2bd85cf4ed648              # double 0.58563509454570184
	.quad	0x3fd004a21908c2f4              # double 0.2502827877497531
	.quad	0x3fea7ba1260c12e9              # double 0.82759149008833532
	.quad	0x3fe318defc6eeb0d              # double 0.59678601554273458
	.quad	0x3fcb26cf8c79162c              # double 0.21212190970452249
	.quad	0x3fea7e07ad827c4f              # double 0.82788452042212579
	.quad	0x3fc0b04213fcb1dc              # double 0.13037897087032391
	.quad	0x3fc4168aa1fdd424              # double 0.15693791303388693
	.quad	0x3fd3dabd54a75a9e              # double 0.31022580401387667
	.quad	0x3fe2ce51a4db048b              # double 0.58768541525218276
	.quad	0x3fdb42c23a6803a0              # double 0.42594962791195634
	.quad	0x3fd2750a3a30e65e              # double 0.28839355166164704
	.quad	0x3fe2623162906ea9              # double 0.57448643923585963
	.quad	0x3fe72064c6211ea2              # double 0.7227043027605371
	.quad	0x3fcce7e49fa49390              # double 0.22582681460440002
	.quad	0x3fd2f9269adf0a24              # double 0.29645695804734573
	.quad	0x3fed359ac2890930              # double 0.91279352183508955
	.quad	0x3fe83151137fa04b              # double 0.75602010544117471
	.quad	0x3fa1cc5cef9e98f0              # double 0.034762291193418338
	.quad	0x3feba3c7d6c09841              # double 0.86374275153935554
	.quad	0x3fe832025fdbc575              # double 0.75610464784965237
	.quad	0x3fe89360a42ed47e              # double 0.76799041811922542
	.quad	0x3fed4ed4180f1b1d              # double 0.91587261866593261
	.quad	0x3fee728803c33baa              # double 0.95148087248695856
	.quad	0x3fd97a9868bab71a              # double 0.39810762622333729
	.quad	0x3fdf747074fa817a              # double 0.4914818899506127
	.quad	0x3fc5d15fb2230bfc              # double 0.17045208166209125
	.quad	0x3fe80a954673af72              # double 0.75129188308845429
	.quad	0x3fcf1aa9c8d72320              # double 0.24300119692477384
	.quad	0x3fe85b272d83d610              # double 0.76112707986493611
	.quad	0x3feb19a5ebc4392c              # double 0.84688087509292619
	.quad	0x3fcbb0cb79eb84f8              # double 0.21633285000920188
	.quad	0x3fdd84378784eb4e              # double 0.46119487985895524
	.quad	0x3fbdeadd4a0776a0              # double 0.1168649965033759
	.quad	0x3fabc859a2589800              # double 0.054262925212512414
	.quad	0x3fe04ef10e5e95f9              # double 0.50963642889536154
	.quad	0x3fddc5888e63478c              # double 0.46518148331699005
	.quad	0x3fb0b5242edc3910              # double 0.065263997498025583
	.quad	0x3fdb76b8e6e3028e              # double 0.42912123248610434
	.quad	0x3fe3da2776e30969              # double 0.62038014621820736
	.quad	0x3fec673c59c5e70d              # double 0.88760201963234098
	.quad	0x3fc05a6681413480              # double 0.12775880156769759
	.quad	0x3fe61e6992acfe26              # double 0.69121245048149116
	.quad	0x3fe8f321118141ef              # double 0.77967885416916072
	.quad	0x3fee065a718780ac              # double 0.93827554868405149
	.quad	0x3fcdc270a9e64a68              # double 0.23249634071233349
	.quad	0x3feb683d204e38ab              # double 0.85647445974043046
	.quad	0x3fee10a18f4e1e07              # double 0.93953016270910517
	.quad	0x3fd7fa69df5e6b58              # double 0.37465903104173526
	.quad	0x3fc1490fb8c1309c              # double 0.13504215737555547
	.quad	0x3fde7a8eb3ac5c84              # double 0.47623031183452036
	.quad	0x3fba5a88afa65910              # double 0.10294393814396963
	.quad	0x3fe4f7b69273128e              # double 0.65523842433374724
	.quad	0x3fd9c77d9379ee4a              # double 0.40280093576413789
	.quad	0x3fe7886b6b164a16              # double 0.73540278354113542
	.quad	0x3fc792a6539bc55c              # double 0.18416289408154796
	.quad	0x3fefa7fb474e6079              # double 0.98925556113228119
	.quad	0x3fef55b02b9ebe56              # double 0.97920998115109614
	.quad	0x3fe70a2412e72eec              # double 0.71998790447238781
	.quad	0x3fe125b1a8b9c734              # double 0.53585131601560088
	.quad	0x3fe25f90e9ade93b              # double 0.5741657794999705
	.quad	0x3fcd14af2bd23ca4              # double 0.22719373359402539
	.quad	0x3fd94298bfc7748a              # double 0.39468973854474909
	.quad	0x3fe71d216e8e50d9              # double 0.72230598061517093
	.quad	0x3fd8152e4dcb556e              # double 0.37629277798745064
	.quad	0x3fcfa15d6bcc7370              # double 0.24711196673970504
	.quad	0x3fda98ea55c321aa              # double 0.41558321356981287
	.quad	0x3fe921b6b7d81c9f              # double 0.78536544711177558
	.quad	0x3fe024b3931af788              # double 0.50448015910636546
	.quad	0x3fea86ec9a0aa964              # double 0.82897024236926286
	.quad	0x3fd42b48735ce604              # double 0.31514178529650416
	.quad	0x3f9f7a48e5682000              # double 0.03073991680324184
	.quad	0x3fe5db444810e329              # double 0.68301595759758016
	.quad	0x3fea61998bd8c97b              # double 0.82441403688271409
	.quad	0x3fee41eabf1997bd              # double 0.94554650615895464
	.quad	0x3fe2423c7d6cbcd1              # double 0.57058548447630575
	.quad	0x3fedfcffbad42898              # double 0.93713366022099631
	.quad	0x3fda87330a3e6c2e              # double 0.41450191498160194
	.quad	0x3f95172acd90ddc0              # double 0.020596188351388767
	.quad	0x3fe3bfb6cd05c26f              # double 0.61715259593445448
	.quad	0x3fe7b83f29c6b302              # double 0.74124105605514523
	.quad	0x3fe0cc8dbcdb224b              # double 0.52496992956100408
	.quad	0x3fe4d3df7258c302              # double 0.65086338361115303
	.quad	0x3fed87b6699762b3              # double 0.92281647322950844
	.quad	0x3fe894c95255bb17              # double 0.76816240387947488
	.quad	0x3fead3cc2d24bf90              # double 0.83835419480418416
	.quad	0x3fe290856fba3813              # double 0.58014175245057442
	.quad	0x3fa0ea901c175040              # double 0.033039573124967081
	.quad	0x3fb35be99d811540              # double 0.075621224358731531
	.quad	0x3fe1e5f0c8785cb2              # double 0.55931891588524807
	.quad	0x3fc10ee4abfcc81c              # double 0.1332670058996549
	.quad	0x3fe4aec3d2b5dad6              # double 0.64633361009949897
	.quad	0x3fc4c32dc73d5ea4              # double 0.16220638493063178
	.quad	0x3feda0dc9d12aa89              # double 0.92588644674590725
	.quad	0x3fe4218a3e2e58a2              # double 0.62909423966154443
	.quad	0x3fe17b3c9510205f              # double 0.54629353631845479
	.quad	0x3fed654316de4b4c              # double 0.91861109224769554
	.quad	0x3fd7cd7ee5540938              # double 0.37191746135080761
	.quad	0x3fdf161b8570a010              # double 0.48572433501476642
	.quad	0x3fd4e9b9954d7c34              # double 0.32676543789233681
	.quad	0x3fd9a255fb87032c              # double 0.40053319514486208
	.quad	0x3fed19ff8b73aa50              # double 0.90942361103709324
	.quad	0x3fe2f8883fa3c59c              # double 0.59283840589175751
	.quad	0x3fef5777e1ab8895              # double 0.97942728115255539
	.quad	0x3fe51fcfdb0abe9a              # double 0.66013329297671253
	.quad	0x3fd7ab5d8ce08a3a              # double 0.36983431584863846
	.quad	0x3fe6d32d9fa79004              # double 0.71327859098937596
	.quad	0x3fc998c1b9d64ef8              # double 0.19997426580504629
	.quad	0x3fc61cdf4748e93c              # double 0.17275610905364569
	.quad	0x3fea457826fed999              # double 0.82098014465627778
	.quad	0x3fcb4327d3673c04              # double 0.21298692533898145
	.quad	0x3fee59f537c2b800              # double 0.94848118677850835
	.quad	0x3fd67568bea0adba              # double 0.35091608634931115
	.quad	0x3fae1815e46da7c0              # double 0.058777507910078963
	.quad	0x3fddeff30a46b238              # double 0.46777034762888858
	.quad	0x3fb1dc09144f38a8              # double 0.069763724764217216
	.quad	0x3fe20fb0561ab230              # double 0.56441513840906588
	.quad	0x3fe8a18be5de61b7              # double 0.76972002884126922
	.quad	0x3fe331dc3a227d08              # double 0.5998364577716595
	.quad	0x3fe0d16684462491              # double 0.52556157908215273
	.quad	0x3fd2e8e4389ca0f6              # double 0.29546456840991142
	.quad	0x3fd8e4f9dda06e20              # double 0.38897558825712686
	.quad	0x3feb858bc8548538              # double 0.86005200507148682
	.quad	0x3fb47e95fe234880              # double 0.080056547685019907
	.quad	0x3fe4d840adc8edcb              # double 0.65139802877768582
	.quad	0x3fe3ac63a1c4747d              # double 0.61479360194392962
	.quad	0x3feffe69b29f97db              # double 0.99980625998864114
	.quad	0x3fec8b6d3c0eea53              # double 0.8920198605549764
	.quad	0x3fe78ab52cf99bc2              # double 0.73568209442316168
	.quad	0x3fedf846bb54646d              # double 0.93655716502975184
	.quad	0x3fc98679edfeead4              # double 0.1994163906182026
	.quad	0x3fd240449cf6b3d4              # double 0.28517260864719884
	.quad	0x3febd9feeebe8ed7              # double 0.87036081914672081
	.quad	0x3fd576cbd7259f20              # double 0.33537574778027768
	.quad	0x3feef805fe9f5e9b              # double 0.96777629595722503
	.quad	0x3fd8ee5914a0df4a              # double 0.38954760565274127
	.quad	0x3fe6f11e61122067              # double 0.71693343123571374
	.quad	0x3fd0cdeb65f9b9f6              # double 0.26256833036941829
	.quad	0x3fe17d5c483cb3df              # double 0.54655279263317513
	.quad	0x3fe85c8a0a0692d8              # double 0.76129629095211282
	.quad	0x3fe29bd3d3e41154              # double 0.58152190575541818
	.quad	0x3fe3f9bc8ccce2ba              # double 0.62423541545930239
	.quad	0x3fc5918f110e06fc              # double 0.16850460369828812
	.quad	0x3fce83a03931a9c4              # double 0.23839190285373324
	.quad	0x3fec43cd2671d1bb              # double 0.88327653416359142
	.quad	0x3fedc885f9d347c0              # double 0.93072794717794948
	.quad	0x3fcb92632cda6acc              # double 0.2154048890123107
	.quad	0x3fdcd5cf6deb9a10              # double 0.45054994329839904
	.quad	0x3fe9bf81c8e9f84f              # double 0.80462731591229353
	.quad	0x3fd5ecc0be646dfe              # double 0.34257525055883764
	.quad	0x3fe48fdf5ef22f6f              # double 0.64256256622455321
	.quad	0x3fe72b0adfe62247              # double 0.72400420885339478
	.quad	0x3fdeebba85ac3a2c              # double 0.48313773206692434
	.quad	0x3fe5273baf3ddfcf              # double 0.66103920199292954
	.quad	0x3fe73ff0d6c44b7b              # double 0.72655527063976366
	.quad	0x3fea2ef5ae804d0b              # double 0.818232384512528
	.quad	0x3fe34294cf7f4bde              # double 0.60187759901816285
	.quad	0x3fc02d323709e230              # double 0.1263792771094514
	.quad	0x3fe8c81c7e79a4d4              # double 0.77442764951879405
	.quad	0x3fe2575f18c7fd25              # double 0.57316546287612324
	.quad	0x3fd60f2ba1fb064c              # double 0.34467593019880804
	.quad	0x3fe18702627f3c20              # double 0.5477306293267965
	.quad	0x3fc16fd1a0f8d8bc              # double 0.13622494087184644
	.quad	0x3fe768757c289c66              # double 0.73150133371099169
	.quad	0x3fdae715aedd0af4              # double 0.42035429073818809
	.quad	0x3fee06e977c17685              # double 0.93834374799526243
	.quad	0x3fec85a1735b99a3              # double 0.89131233721564163
	.quad	0x3fbc3e64fe77be50              # double 0.11032706463424202
	.quad	0x3fee2aa84f8fdd9e              # double 0.94270720996330559
	.quad	0x3fe6f5bc0184ef85              # double 0.7174968747781213
	.quad	0x3fdf22e37a2a3a84              # double 0.48650443010493682
	.quad	0x3fe057072af7d35e              # double 0.51062353508187264
	.quad	0x3fa80e165eedf750              # double 0.046982478225784718
	.quad	0x3fae20dcc8532cb0              # double 0.058844470456813069
	.quad	0x3fd9873ea25a9df4              # double 0.39887967924957413
	.quad	0x3fd4777c4fb83f4e              # double 0.3197928217423297
	.quad	0x3f810f0faeabd500              # double 0.0083295083218026811
	.quad	0x3fe2905a39293658              # double 0.58012114681487059
	.quad	0x3fe8790fbeac013c              # double 0.76477801552395119
	.quad	0x3fccb90a67ee3f2c              # double 0.22439699244250144
	.quad	0x3fe5cec02f265c46              # double 0.68148812493280597
	.quad	0x3fde46d294e004fa              # double 0.47307266748983035
	.quad	0x3fea5692dbe2b93d              # double 0.82306807466901655
	.quad	0x3fe4c541e16dac98              # double 0.64907926587092657
	.quad	0x3fe517a7a05e719b              # double 0.65913754770331268
	.quad	0x3fc8c6f2a7e641cc              # double 0.19357140730109135
	.quad	0x3faa6451c1259be0              # double 0.051546625926498058
	.quad	0x3fee512645a843e9              # double 0.94740594487131802
	.quad	0x3fe14cb7fcdfcec3              # double 0.54061507596494385
	.quad	0x3fed50b53fbfee2f              # double 0.91610205126875666
	.quad	0x3fe1aeb8a22773d4              # double 0.55257827444767793
	.quad	0x3fe6aac99304a10d              # double 0.70834807123631693
	.quad	0x3fcda18c612d50b0              # double 0.23149256463023482
	.quad	0x3fd2c7462f842184              # double 0.2934127296471376
	.quad	0x3fbee1dcdb1c1450              # double 0.12063389157636206
	.quad	0x3fdc4155e2637506              # double 0.4414877615761984
	.quad	0x3fee936967024a42              # double 0.95549459570822415
	.quad	0x3fc57df80b76f344              # double 0.16790676650807701
	.quad	0x3fd6ea274c85d2be              # double 0.35804159615444664
	.quad	0x3fd3e7e61db0f5f8              # double 0.31102898501907772
	.quad	0x3fe34c1a86b3aeed              # double 0.60303999241793138
	.quad	0x3fed4f370fc39b4c              # double 0.91591981009410394
	.quad	0x3fce6c2a52d34ac0              # double 0.23767594379622459
	.quad	0x3fee4a8eddb6b981              # double 0.94660132697553945
	.quad	0x3fdfcbb47bcf0de0              # double 0.49680816736892375
	.quad	0x3fe0b71a7b2b5252              # double 0.5223514943741725
	.quad	0x3febb2d449f79118              # double 0.8655797428769203
	.quad	0x3fd81af5237fe88e              # double 0.3766453596759981
	.quad	0x3fee9e168aad0460              # double 0.95679785809637607
	.quad	0x3fabeb6e47b593d0              # double 0.054530569318366084
	.quad	0x3fcbf26c47ee7940              # double 0.21833566200525389
	.quad	0x3fee5781aa009f0e              # double 0.94818194583510418
	.quad	0x3fcf74f165f1c440              # double 0.24575631597284264
	.quad	0x3fe4de33646a0711              # double 0.65212411510603563
	.quad	0x3fdba19104a61642              # double 0.43173623517973081
	.quad	0x3fd953d09eecfd3c              # double 0.39574065704433159
	.quad	0x3fd71f42f24e388e              # double 0.3612830511345998
	.quad	0x3fd3cce53210645c              # double 0.30938081635537684
	.quad	0x3fe08c71439c81a4              # double 0.51714385228483595
	.quad	0x3fef8c9346da6123              # double 0.98591007078633585
	.quad	0x3fd14b254ad90320              # double 0.27021152791353309
	.quad	0x3fea5fd057f730fc              # double 0.82419602566508798
	.quad	0x3fe0ed0bfde2669f              # double 0.52893638216774608
	.quad	0x3fefcfbbaae27417              # double 0.99410804153342524
	.quad	0x3fca1f4f5afe739c              # double 0.20408050482811013
	.quad	0x3fe81233b7ff0f72              # double 0.75222192703993884
	.quad	0x3fb75e3f47222d28              # double 0.091281847826554796
	.quad	0x3fe09d73e850cc6a              # double 0.51922030805725439
	.quad	0x3fed8b206423bac8              # double 0.92323321875104458
	.quad	0x3fe6973f406b3e5e              # double 0.70596277791805639
	.quad	0x3fc3485464a11d24              # double 0.15064482606451535
	.quad	0x3fd8ac44f021ba94              # double 0.38551448297850155
	.quad	0x3fe1f7a0c0e0d51a              # double 0.56147802039655237
	.quad	0x3fe27373c808caed              # double 0.57659329480369836
	.quad	0x3fd2cf87544ad690              # double 0.29391654235528453
	.quad	0x3feada75b8b8a403              # double 0.83916746214265492
	.quad	0x3fb1a3618cc57018              # double 0.068899247043589518
	.quad	0x3fe835dc5bf9634c              # double 0.7565748020525489
	.quad	0x3fe0e4153b5be0b2              # double 0.52784215539488444
	.quad	0x3fea444dcfaab209              # double 0.82083788452070039
	.quad	0x3fe7040c10e1d7a1              # double 0.71924403474143983
	.quad	0x3fe3d9efb2c37b62              # double 0.6203535548664656
	.quad	0x3fc8d47ad5e3f3ac              # double 0.19398436969632138
	.quad	0x3fe61c4fbb045337              # double 0.69095598723160989
	.quad	0x3feb44fe560fe4ca              # double 0.85217205819130837
	.quad	0x3fde9ddf17197284              # double 0.4783857083873857
	.quad	0x3feb022233bbf053              # double 0.84401044945071602
	.quad	0x3fe4f7cd490357cb              # double 0.65524925480235063
	.quad	0x3fc91a264c947404              # double 0.19611052264454554
	.quad	0x3fd33f6c3f185462              # double 0.30074602281212581
	.quad	0x3febba1c70ffd9e5              # double 0.86646864004324853
	.quad	0x3fe78df284cee77e              # double 0.73607755602937153
	.quad	0x3fdafc5c44855ad6              # double 0.42165285769935446
	.quad	0x3feac08ff2a8ca8b              # double 0.83600613970186666
	.quad	0x3fe4a0b079106673              # double 0.64461539883923391
	.quad	0x3fe564e3094bea02              # double 0.66856529060106618
	.quad	0x3febfcc9568d8ffd              # double 0.87460772423628408
	.quad	0x3f65dd5132e9ed00              # double 0.0026690088191664296
	.quad	0x3fdf3706e283b9c2              # double 0.48773357506334147
	.quad	0x3fc73c47132a4180              # double 0.18152702747148552
	.quad	0x3fbf53734372c5b8              # double 0.12236709973037463
	.quad	0x3fd8af6eaad49d70              # double 0.38570753748577769
	.quad	0x3fe447ee7e878cb0              # double 0.633780715110694
	.quad	0x3fd0e057557fa5d8              # double 0.26369269704318077
	.quad	0x3fd7edd4f4616606              # double 0.37389110436706152
	.quad	0x3fe87045703710cc              # double 0.76370498578082779
	.quad	0x3fef0ac53545d5bb              # double 0.97006473927347458
	.quad	0x3fdefbca68e6d52c              # double 0.48411808246904076
	.quad	0x3fe569dcd8236778              # double 0.6691726895762562
	.quad	0x3fea661fd592fde1              # double 0.82496635163982657
	.quad	0x3fc1dcc152df027c              # double 0.13954941317026115
	.quad	0x3fefd98f76b33c91              # double 0.99530766662236846
	.quad	0x3fd14cc17697c2ac              # double 0.27030979710893166
	.quad	0x3fd92fcda00d4d96              # double 0.39354267721247405
	.quad	0x3fd81b669187388a              # double 0.37667240344752229
	.quad	0x3fe71bc16a4382e5              # double 0.72213812594062843
	.quad	0x3febd2a5c5cd7101              # double 0.86946381219198099
	.quad	0x3f704c3030195600              # double 0.0039789087619133134
	.quad	0x3feb77081decf011              # double 0.85828023762542405
	.quad	0x3fd8e1183208c328              # double 0.38873867880015434
	.quad	0x3fda1de76444b538              # double 0.40807518760523775
	.quad	0x3fcb36d632087308              # double 0.21261098330514749
	.quad	0x3fcf764f9a6a74cc              # double 0.24579806365810553
	.quad	0x3fd149fe664d6a5a              # double 0.27014122000188012
	.quad	0x3fc6cca47d64f630              # double 0.17812019465229545
	.quad	0x3fea55c7bdce9e2d              # double 0.82297122070025852
	.quad	0x3fed460d5d020603              # double 0.9148012939987783
	.quad	0x3fe9be92b4921fcf              # double 0.80451331393941838
	.quad	0x3fe633e6f83f8f9f              # double 0.69383572088235101
	.quad	0x3fe1c2d8e6b9189f              # double 0.55503506720630813
	.quad	0x3fe12257c23474b2              # double 0.5354422371925891
	.quad	0x3fe2d1a294d44abe              # double 0.58809022014823831
	.quad	0x3feca6ed003d36d7              # double 0.8953766827268862
	.quad	0x3fb9e4acf1abb860              # double 0.10114556217351511
	.quad	0x3fe2439f6bb5de30              # double 0.57075472867194854
	.quad	0x3fe29c61ec353fc3              # double 0.58158966192603889
	.quad	0x3fcb9ac475920068              # double 0.21566062679994791
	.quad	0x3feb2c9d6c114517              # double 0.84919615847516894
	.quad	0x3fd4ff1afbe0eba6              # double 0.32807039830702889
	.quad	0x3fce239b6316fb38              # double 0.2354616388165256
	.quad	0x3fcb73318bb89854              # double 0.21445292780225833
	.quad	0x3fd3213db9aab9cc              # double 0.29890387660534823
	.quad	0x3fe77fcabc4aa7c8              # double 0.73434960151393458
	.quad	0x3fc1500ca6138700              # double 0.13525541409676833
	.quad	0x3fd2d95d3f27bd86              # double 0.29451686065200311
	.quad	0x3feed4e2a13db716              # double 0.96348697178265996
	.quad	0x3fd383df66ca9584              # double 0.30492386854378872
	.quad	0x3fe0d7423ba0fd5f              # double 0.52627669950735967
	.quad	0x3fc8fb93cec14d10              # double 0.19517753215277667
	.quad	0x3fe9d8c89f4f6539              # double 0.80771285166989693
	.quad	0x3fcbdb74ab979280              # double 0.21763475779075137
	.quad	0x3fb09aa1439b47a8              # double 0.064859465604313216
	.quad	0x3fe21c4c9b63a8f5              # double 0.56595449780914342
	.quad	0x3fe51df0c05bb4e0              # double 0.65990483827559032
	.quad	0x3fe81606967b7ee0              # double 0.75268868819327039
	.quad	0x3fd89a4966d963a4              # double 0.3844169144045344
	.quad	0x3fcdf6a49b9cb250              # double 0.23408944700476519
	.quad	0x3fe353aa99c3f636              # double 0.60396318466491183
	.quad	0x3fd397ba05dfc930              # double 0.30613565992020408
	.quad	0x3fe19b17ef75a002              # double 0.55018231172016407
	.quad	0x3fd8cc72b8e2933c              # double 0.38747852378064684
	.quad	0x3fe8f25f2bdf41c0              # double 0.77958639687317799
	.quad	0x3fdf2550bad5fa7e              # double 0.4866525482720262
	.quad	0x3fec3fc43a34cd51              # double 0.88278399818811171
	.quad	0x3fce62f00a5a6a5c              # double 0.23739433770681984
	.quad	0x3fdf81304bab649a              # double 0.49226004972076398
	.quad	0x3fe7f9ed4ef318b0              # double 0.74925866527407514
	.quad	0x3fcf3c2e9cc3e264              # double 0.24402411131429169
	.quad	0x3fe3285b0faf6bd4              # double 0.59867623389743096
	.quad	0x3fe92e7a093e2034              # double 0.78692342572413176
	.quad	0x3fec55df32782b61              # double 0.88548240525538457
	.quad	0x3fe318925ff70e17              # double 0.59674948447394882
	.quad	0x3fd34f33d363768c              # double 0.30170913356219198
	.quad	0x3fbb1598e576ba70              # double 0.10579829790251849
	.quad	0x3feab1379c4b7515              # double 0.83413296247786894
	.quad	0x3fe5f533189d8d7d              # double 0.68618159110739863
	.quad	0x3fdbafff0f7a465c              # double 0.4326169634960928
	.quad	0x3fee6a43d69e9541              # double 0.9504718009745049
	.quad	0x3febf26558d76391              # double 0.87333934165791238
	.quad	0x3fe67470e5702a9d              # double 0.70171398937357632
	.quad	0x3fcddff2008a96cc              # double 0.2333967688220383
	.quad	0x3fa9c84f1f0e3da0              # double 0.050356361905069535
	.quad	0x3fcd399689d66704              # double 0.22831994753214968
	.quad	0x3fa1b11dee302b90              # double 0.034554419828132343
	.quad	0x3fc1f261c137d9b8              # double 0.14020940718155628
	.quad	0x3fef4801a189b58b              # double 0.97753984022499318
	.quad	0x3fe6608fa7418908              # double 0.69928724925219488
	.quad	0x3fd5126689e424b2              # double 0.32924807992874172
	.quad	0x3fef6c517a4e24b2              # double 0.9819724453710903
	.quad	0x3fe95f4846384b5b              # double 0.79288114275764643
	.quad	0x3fb9729de4a1f488              # double 0.099405163115038886
	.quad	0x3fe3afe7a6976da6              # double 0.61522276437192569
	.quad	0x3fe656ad752b3a5b              # double 0.69808075794737634
	.quad	0x3fea4de84405dc8a              # double 0.82201016698572116
	.quad	0x3fe940eb1a83598d              # double 0.78917460611664725
	.quad	0x3fee3bd12276e0e1              # double 0.94480187159845397
	.quad	0x3fbc9b4f0ff53418              # double 0.11174482478709569
	.quad	0x3fde87b0f1a8f43e              # double 0.47703193282706369
	.quad	0x3fdf19b2a819cf70              # double 0.48594347396941995
	.quad	0x3fe4619a71e6c714              # double 0.63691446539289354
	.quad	0x3febf6a7a8ca4780              # double 0.87385924307658058
	.quad	0x3fd548d5d1e7fc0a              # double 0.33257050989772152
	.quad	0x3fe673c384aad44f              # double 0.70163131629545628
	.quad	0x3fee01f6e66ecac3              # double 0.93773980146792046
	.quad	0x3fcbe288566ae30c              # double 0.21785072536092576
	.quad	0x3fe7febda6d47725              # double 0.74984629234288447
	.quad	0x3fd7d8768ffe3476              # double 0.37258686124625429
	.quad	0x3fe56983e8bd8c29              # double 0.66913028199303881
	.quad	0x3fd20a17c50b5de8              # double 0.28186601870171879
	.quad	0x3fd9e499a1cb1000              # double 0.40457764434927412
	.quad	0x3fe806caae5e2222              # double 0.75082906776612313
	.quad	0x3fca82293ed78e68              # double 0.20709720200021597
	.quad	0x3feb919db6e0605c              # double 0.86152539938030825
	.quad	0x3fb685abbfdfddd8              # double 0.087977156013827496
	.quad	0x3fedb81cdd364148              # double 0.92872470097976478
	.quad	0x3fe30cd79b569e9b              # double 0.595317653079252
	.quad	0x3fc3a06835e1391c              # double 0.15333273535583991
	.quad	0x3fec6a84b3c25483              # double 0.88800273045730227
	.quad	0x3fda876972f064ba              # double 0.41451488708987549
	.quad	0x3f6b6e25a76b9e00              # double 0.0033484206609164513
	.quad	0x3fe53ea1bf1e183a              # double 0.66389548614166149
	.quad	0x3fe994460dc1e048              # double 0.79934981047609543
	.quad	0x3fd80c2515c87eea              # double 0.37574126364960014
	.quad	0x3fbcbe76bb26fc20              # double 0.11228124684474539
	.quad	0x3fd5f28a2f267ea2              # double 0.34292845348861978
	.quad	0x3feb51951a2feffc              # double 0.85370879282663691
	.quad	0x3fd544dcb6ac5522              # double 0.33232801284005309
	.quad	0x3fe12a3e89a2d688              # double 0.53640677339599652
	.quad	0x3fe81f8a97d80a2d              # double 0.75385026604664562
	.quad	0x3fe37f942c768959              # double 0.60932358440576728
	.quad	0x3feabe7b41e719c7              # double 0.83575213309887253
	.quad	0x3fe44f2eb618d645              # double 0.63466582837890739
	.quad	0x3fa74a973ba95f20              # double 0.045490957291518308
	.quad	0x3fec8beb59a303f0              # double 0.89207999713118902
	.quad	0x3fefb6d01ddb0ee0              # double 0.99106603461447306
	.quad	0x3fde8f84599a8660              # double 0.47750958204605887
	.quad	0x3fe98afe768353fb              # double 0.79821704051084852
	.quad	0x3fd0405cd5764afa              # double 0.25392838331133272
	.quad	0x3fe872e197b4218c              # double 0.76402358655563906
	.quad	0x3fb55c89f7b48510              # double 0.08344328210343499
	.quad	0x3fe25597bb39b3cb              # double 0.57294832770787119
	.quad	0x3fe7bbbb3c2616b5              # double 0.7416664290219247
	.quad	0x3fc9d2a7f385884c              # double 0.20174121275619183
	.quad	0x3feeae6d4523ac3b              # double 0.95879233840731303
	.quad	0x3feacea221e43f66              # double 0.83772379512263906
	.quad	0x3fd25a1305128eec              # double 0.28674769873963046
	.quad	0x3fe7b3eaa34c8530              # double 0.74071247000043705
	.quad	0x3fe1f745218d033e              # double 0.56143433144470811
	.quad	0x3fe9bfe75a4774f1              # double 0.80467574722902502
	.quad	0x3fd43eff78e49956              # double 0.31634508901551806
	.quad	0x3fca0cb0082e9780              # double 0.20351219558250122
	.quad	0x3fd1d62ff1dfd730              # double 0.27869795437378553
	.quad	0x3fef0b458de00832              # double 0.97012593946442949
	.quad	0x3fecdcd665c90193              # double 0.90195770149152776
	.quad	0x3fda39d4c3d4fc3a              # double 0.40977973102775744
	.quad	0x3feba0d682338eeb              # double 0.86338353567086068
	.quad	0x3fe9db9fc0860fb2              # double 0.80805957414894736
	.quad	0x3fe815e1acb1d260              # double 0.75267108659188508
	.quad	0x3fe4e17c3093b9ff              # double 0.65252503860193645
	.quad	0x3fe31990af856f31              # double 0.59687074929704498
	.quad	0x3fe82027bc09ce1b              # double 0.75392519689779947
	.quad	0x3fe220c0be07af7c              # double 0.56649815669287262
	.quad	0x3faf7ebedeb4cce0              # double 0.061513867078611062
	.quad	0x3fd94656289208fa              # double 0.39491800271947819
	.quad	0x3fd8b50cbf9077a8              # double 0.38605040271238034
	.quad	0x3fac61ca4e5880e0              # double 0.055433580459295362
	.quad	0x3fd8a0aa06c25628              # double 0.38480616245337496
	.quad	0x3feeb0d578f86011              # double 0.95908616663928303
	.quad	0x3fc2eb52dd2e902c              # double 0.14780650901696057
	.quad	0x3fccfc3a1d2bb59c              # double 0.22644735740997823
	.quad	0x3febd36e3ab1c64b              # double 0.86955939735180132
	.quad	0x3fc81a84cae26100              # double 0.18830928713283157
	.quad	0x3fdc8a4c454ae6e2              # double 0.44594103590826084
	.quad	0x3fe8b9cc4b02a94f              # double 0.77268042231052358
	.quad	0x3fe55933dae7c98c              # double 0.66713898425068541
	.quad	0x3fbed7463a5393f8              # double 0.12047232555376286
	.quad	0x3fabd6598143d950              # double 0.054369732884810618
	.quad	0x3fc7bb266fb77a10              # double 0.18539886908452319
	.quad	0x3fedd49c04bc2ad0              # double 0.93220330166635712
	.quad	0x3fc928608461f5fc              # double 0.1965447088622766
	.quad	0x3feef11e9d8772c1              # double 0.9669335438480503
	.quad	0x3fc7d656fbbeacb0              # double 0.18622863094546949
	.quad	0x3fe7acaba3b7fd55              # double 0.73982793785391243
	.quad	0x3fec8e282e4414c6              # double 0.89235314403836052
	.quad	0x3fe1c406564583d0              # double 0.55517880296621946
	.quad	0x3fd0fcf74ef811b0              # double 0.265439822309669
	.quad	0x3fa04c8c47db7ee0              # double 0.031834014674812172
	.quad	0x3fe8f339f8141b78              # double 0.77969072773781445
	.quad	0x3fc4f7bdbef8d230              # double 0.16381046128084753
	.quad	0x3fe497e855e71ad6              # double 0.64354340341454974
	.quad	0x3fd3195a1410287c              # double 0.29842235526360361
	.quad	0x3fd4a470afc9999a              # double 0.32253663222072648
	.quad	0x3fcc0e5730b4d28c              # double 0.21918763998259683
	.quad	0x3fd03cf9365225d6              # double 0.25372152619146726
	.quad	0x3fe90d190f70b8b7              # double 0.78284886375128948
	.quad	0x3fdb58e0834622c8              # double 0.42729962177012881
	.quad	0x3fea9d1c54878afb              # double 0.83167854795132656
	.quad	0x3fd4c6348b2db932              # double 0.32459748832379198
	.quad	0x3f9cf2c5a7fe1ec0              # double 0.028269852045496036
	.quad	0x3fd641a28575c96a              # double 0.34775603326047266
	.quad	0x3fe6d2c19061650c              # double 0.71322706412607451
	.quad	0x3fdf96e266b4e486              # double 0.49358425168936326
	.quad	0x3fe6d2c6ef28a1ca              # double 0.71322962485015151
	.quad	0x3fe1f9bd0f6adcfc              # double 0.56173565875260989
	.quad	0x3fce3191ace506b4              # double 0.23588772718544748
	.quad	0x3fe7a94af945099d              # double 0.73941563306316349
	.quad	0x3fe3f27bc034cbd7              # double 0.62335002460747091
	.quad	0x3fd4266f83161ef2              # double 0.31484592248351284
	.quad	0x3fe0f266d880824b              # double 0.52959005628151468
	.quad	0x3fddfba10e588edc              # double 0.46848322297067369
	.quad	0x3feefda462a7a685              # double 0.96846217411548762
	.quad	0x3fd25b5784491c50              # double 0.28682506483568648
	.quad	0x3fe5444dc2a04325              # double 0.66458786023040217
	.quad	0x3fe526594756591b              # double 0.66093124325815056
	.quad	0x3fdd1b0737c9f694              # double 0.45477467010628314
	.quad	0x3fd64d9f52d2f9a8              # double 0.34848769272130165
	.quad	0x3fea2475bf829102              # double 0.81695067791272913
	.quad	0x3fd7ee84d2ddbcb0              # double 0.3739330348243568
	.quad	0x3fd6612e0b74e222              # double 0.34968138808065607
	.quad	0x3fed0cffac457a2e              # double 0.9078367581058211
	.quad	0x3fe495ccd68d79dc              # double 0.64328615097820885
	.quad	0x3fd914605e835aa0              # double 0.39186867933077885
	.quad	0x3fef852e616be460              # double 0.98500746753337509
	.quad	0x3fe9283435e4b49d              # double 0.78615770841647115
	.quad	0x3feea8b8b76baccb              # double 0.95809589218461022
	.quad	0x3fdd666408bdf756              # double 0.4593744359370836
	.quad	0x3fdde545b52e4fac              # double 0.46711867040107324
	.quad	0x3fea79005777951d              # double 0.82727067073270499
	.quad	0x3fda731f5353e09e              # double 0.41327651154962008
	.quad	0x3fe6bbab0392de1c              # double 0.71040869424809072
	.quad	0x3fe59558dd1317c5              # double 0.67448085001591862
	.quad	0x3feabbaec3e22625              # double 0.835410482964282
	.quad	0x3fdcb92b355c5fa2              # double 0.4488018056013009
	.quad	0x3fec74341be81284              # double 0.889185003762194
	.quad	0x3fe611504ce377bb              # double 0.68961348550123291
	.quad	0x3fd8fcd2af6d4400              # double 0.39043109065556791
	.quad	0x3feeab49dbf06f4f              # double 0.95840924221872991
	.quad	0x3fec3a4d6eb6b5bd              # double 0.88211700080653765
	.quad	0x3fd5a947aa59aef2              # double 0.33845702777647013
	.quad	0x3fdff9eb8aae48a6              # double 0.49962891142889487
	.quad	0x3fddb7458f5d8422              # double 0.46431101799504593
	.quad	0x3fe8de2e1ce2a175              # double 0.77712159768729683
	.quad	0x3fb888afbebedf60              # double 0.095835670536755568
	.quad	0x3fdeea30972a2c42              # double 0.48304381143742969
	.quad	0x3fb68ea5a9fdbe70              # double 0.088114122392420446
	.quad	0x3fe21848f4a39bdf              # double 0.56546447545121825
	.quad	0x3fe039000539c142              # double 0.50695801754594805
	.quad	0x3fd4b8099307274c              # double 0.32373275144765468
	.quad	0x3fc960845b198d70              # double 0.19825796554787756
	.quad	0x3fcb47fcb6557188              # double 0.21313437369361687
	.quad	0x3fe9a711a1be48a6              # double 0.80164414968955522
	.quad	0x3fe3999d5ab8b2de              # double 0.61250179022826123
	.quad	0x3feb68ccfd4ede52              # double 0.85654305910333961
	.quad	0x3fe294fcbd18f443              # double 0.58068692143536571
	.quad	0x3fcecb66809a1cd4              # double 0.24058228759188316
	.quad	0x3fef0bc71862442d              # double 0.97018770945044752
	.quad	0x3fc52b4ad0338d38              # double 0.1653836742981214
	.quad	0x3fe9a655bd7d6cd1              # double 0.80155455598596792
	.quad	0x3fb3694baa282b00              # double 0.07582543281766263
	.quad	0x3fef65d7fa0d2ec8              # double 0.98118208730871803
	.quad	0x3fe0969fb59ee827              # double 0.51838670227812578
	.quad	0x3fd3c5c123db6020              # double 0.30894497396139009
	.quad	0x3fe90415767b3639              # double 0.78174851551893376
	.quad	0x3fc8aeced885ae48              # double 0.19283471653339945
	.quad	0x3fdfb672ad3f9470              # double 0.49551073950562508
	.quad	0x3f5b7b1775937800              # double 0.0016772965521378858
	.quad	0x3fe2db8394305662              # double 0.58929614012840781
	.quad	0x3fe84072983beb56              # double 0.75786714299406799
	.quad	0x3fe7b10a7f9ef320              # double 0.74036145139652731
	.quad	0x3fa9b77602616ab0              # double 0.05022782115039115
	.quad	0x3fc3541633f63fcc              # double 0.15100362336352047
	.quad	0x3fe0ccbab7c5d97e              # double 0.52499137776503324
	.quad	0x3fe9a94d12ac3bdf              # double 0.80191663405446068
	.quad	0x3fe83d3f10d4931b              # double 0.75747636115247319
	.quad	0x3fddfbf1f817b0a6              # double 0.46850251415049582
	.quad	0x3fe2abb8e97a8eee              # double 0.58346219636265828
	.quad	0x3fe7fe354506205b              # double 0.74978126031147541
	.quad	0x3fd2c12332d8fea8              # double 0.29303817716206959
	.quad	0x3fe2dbe3c16abcde              # double 0.58934200073954535
	.quad	0x3fe8d91b57d58fb1              # double 0.77650229601976239
	.quad	0x3fcea1bc498ab128              # double 0.23931077567011383
	.quad	0x3fcd82aead7ba958              # double 0.2305506083569735
	.quad	0x3fd05dc884e9e2a6              # double 0.25572407703252009
	.quad	0x3fdc452724bd1aec              # double 0.44172075832140822
	.quad	0x3fdc42081b0b7764              # double 0.44153025284855674
	.quad	0x3fc01571be10c720              # double 0.12565442829650753
	.quad	0x3fe27bcdf03709c7              # double 0.57761284749022301
	.quad	0x3fe0cc684706a1ba              # double 0.52495206711051101
	.quad	0x3fd62684860ad702              # double 0.34610093202660164
	.quad	0x3fd24b4e8a7842cc              # double 0.28584636232794192
	.quad	0x3feb86a3612f1502              # double 0.86018532735093367
	.quad	0x3fec9f0662c74fd4              # double 0.89441222469985826
	.quad	0x3fe6628b8e199ae2              # double 0.6995294356719024
	.quad	0x3fcf9975b71d12c8              # double 0.24687072220890216
	.quad	0x3fdb06151187907e              # double 0.4222462340533254
	.quad	0x3fc91779940ca8c4              # double 0.19602889756180819
	.quad	0x3fddd6f08c7776f4              # double 0.46624387471625472
	.quad	0x3fee23853d8738b9              # double 0.94183599488476155
	.quad	0x3fe2a2965439494d              # double 0.58234707307773592
	.quad	0x3fb3af39c084ac80              # double 0.076892480374839422
	.quad	0x3fe9b11559f9f2c5              # double 0.80286662648685392
	.quad	0x3fea19283b8227bd              # double 0.81557094214189585
	.quad	0x3feac3b8f2189f6a              # double 0.83639189991388929
	.quad	0x3fc3f6f70b62d4b4              # double 0.15597427421531551
	.quad	0x3fe95752485d588c              # double 0.79190935262410411
	.quad	0x3fd874582e425c94              # double 0.38210110204222159
	.quad	0x3fc46e31e3742900              # double 0.1596128807653443
	.quad	0x3fee319b6ef32929              # double 0.94355556173221544
	.quad	0x3fef0a55566dc059              # double 0.97001139526947632
	.quad	0x3fec7330f058f021              # double 0.88906142180303871
	.quad	0x3fe30242e284d715              # double 0.59402603380178454
	.quad	0x3fe5980361bffb02              # double 0.67480630008489606
	.quad	0x3fc6f6ac2e47c704              # double 0.17940284976753429
	.quad	0x3fd748fb1b1420ca              # double 0.36382939953228954
	.quad	0x3fe51fe41ef7c1d8              # double 0.66014295624159569
	.quad	0x3fdd3c0d0c54a49e              # double 0.45679022030032879
	.quad	0x3fed444ae7e141d3              # double 0.9145864991096978
	.quad	0x3fee587c2969fab4              # double 0.94830139244716926
	.quad	0x3fe80244ac22bd85              # double 0.75027688617949251
	.quad	0x3fed4e398ed5150c              # double 0.91579893013900592
	.quad	0x3fe1ed866f77b4d2              # double 0.56024476786628896
	.quad	0x3fe46081d082fc6b              # double 0.63678065037664788
	.quad	0x3fd04e59446c2dee              # double 0.25478202516452952
	.quad	0x3febaf5fb4e85daf              # double 0.86515794118434097
	.quad	0x3fed1a9d080712dd              # double 0.90949870651146691
	.quad	0x3fe217eaba19a243              # double 0.56541954372102798
	.quad	0x3fc933663fb4b404              # double 0.19688108549726746
	.quad	0x3fe451a882a8430e              # double 0.63496804732321421
	.quad	0x3fd428f5f8d05540              # double 0.31500005052778945
	.quad	0x3fe894bb188baabc              # double 0.76815562051827823
	.quad	0x3fd3c3108845ef3a              # double 0.30878079708030592
	.quad	0x3fe184782ec3b340              # double 0.54742058881456757
	.quad	0x3fdd7c6d02a86bf2              # double 0.46071934947548165
	.quad	0x3fbce63d1f712310              # double 0.11288816468835372
	.quad	0x3fdf06d797cc74b6              # double 0.48479261230552184
	.quad	0x3fdc9f167a6ce5fa              # double 0.44720994907001421
	.quad	0x3febbe09d63f3311              # double 0.86694804997532249
	.quad	0x3fe9968f238e2816              # double 0.79962880081552856
	.quad	0x3fe3ec20635dcf6f              # double 0.62257403762349195
	.quad	0x3fef9f3d286eb7b6              # double 0.98818834206553308
	.quad	0x3fed5226a08356c1              # double 0.91627818441585174
	.quad	0x3fdbe1a35af3eff6              # double 0.43564685709111417
	.quad	0x3fb389fbe23bf5a0              # double 0.076324217541659412
	.quad	0x3fb534024cd4a118              # double 0.082824844129053665
	.quad	0x3fe36b479aa3bf33              # double 0.6068456669145007
	.quad	0x3fe098b4d757967f              # double 0.51864091929446932
	.quad	0x3feae05616f04cce              # double 0.8398848007222115
	.quad	0x3fe7d49b9b39d04f              # double 0.74470310514016969
	.quad	0x3fa6cbf46bded7c0              # double 0.044524801414282944
	.quad	0x3fe67ca10a3cc36f              # double 0.70271350860103421
	.quad	0x3fbdf0d3ccf2ae58              # double 0.11695598367321602
	.quad	0x3fe23b1deb48b000              # double 0.56971641496556913
	.quad	0x3fd50b247c199a3c              # double 0.32880508536473818
	.quad	0x3fe9da722f16d509              # double 0.80791577527148306
	.quad	0x3fdbfe54d2b21fa6              # double 0.43739815307389518
	.quad	0x3fd75f92319191f2              # double 0.36520819512068592
	.quad	0x3fda13d0150e35ec              # double 0.40745927864267517
	.quad	0x3fe9ba6a24b438e4              # double 0.8040056912302842
	.quad	0x3fb01a63a5b39338              # double 0.062902667955836544
	.quad	0x3f9e571902ab8c00              # double 0.029629126346559786
	.quad	0x3febfb7b12a2369c              # double 0.87444833411582889
	.quad	0x3fe2e64c2b7822e6              # double 0.59061249246687164
	.quad	0x3fe97770fe69af67              # double 0.79583024683004744
	.quad	0x3fef56064b7a8240              # double 0.97925104848770416
	.quad	0x3fe8ddf5caa74f24              # double 0.77709474163791414
	.quad	0x3fe63653cc56e289              # double 0.69413175497091217
	.quad	0x3fe8da994d846bdc              # double 0.77668442859737352
	.quad	0x3fcad91e1d94522c              # double 0.20975090450578315
	.quad	0x3fe28898f09112a9              # double 0.5791744898384269
	.quad	0x3fe0f6503d3db515              # double 0.53006755791799043
	.quad	0x3fe294cc5c4cf313              # double 0.58066385295350853
	.quad	0x3fe2b26c33313da5              # double 0.58428010939126251
	.quad	0x3fe74050409ab8d5              # double 0.72660076730769652
	.quad	0x3fe83bbb12ad4f76              # double 0.75729135177469575
	.quad	0x3fdd5af56d2e4454              # double 0.45867667829685854
	.quad	0x3fe0cd9838edf0b3              # double 0.52509699934991827
	.quad	0x3fd901c9ee72a720              # double 0.39073417936252675
	.quad	0x3fe4d075b35e5888              # double 0.6504467490474477
	.quad	0x3fac9b8213df3ef0              # double 0.055873932767665724
	.quad	0x3fe334fb0d52097a              # double 0.60021736718799379
	.quad	0x3fe88cd326b45d6d              # double 0.76719052848322422
	.quad	0x3fe93164c0f9897a              # double 0.78727948847180973
	.quad	0x3fdd6f47d4276fbe              # double 0.45991702764672115
	.quad	0x3fd00b650aa8ebfe              # double 0.25069547692299909
	.quad	0x3fecc10a60274050              # double 0.89856451778360658
	.quad	0x3fe3387b9ca96c00              # double 0.60064488027580865
	.quad	0x3fec18f91be45198              # double 0.87804847190504898
	.quad	0x3fcb982416e21730              # double 0.21558047406522851
	.quad	0x3fc99baab01e33e0              # double 0.20006307219992348
	.quad	0x3fe4e2eab33d9695              # double 0.65269980438161446
	.quad	0x3fee2be1ee81285b              # double 0.94285675604738672
	.quad	0x3fe14e8bbed110bd              # double 0.54083812016371946
	.quad	0x3feb333210d030a1              # double 0.84999945911251384
	.quad	0x3fd67f88a5824ad8              # double 0.35153404391273346
	.quad	0x3feeb289c0c58823              # double 0.95929420138077536
	.quad	0x3fb2e7d9b0873b58              # double 0.073850255582539659
	.quad	0x3fea4544106b3c38              # double 0.82095530707181918
	.quad	0x3fd8f2f041c3cd98              # double 0.38982778951977926
	.quad	0x3fd1b7ff89e94b74              # double 0.27685535877133494
	.quad	0x3fe2ae0bffbd62fd              # double 0.58374595593622269
	.quad	0x3fe12a9d8615c2b8              # double 0.53645206631161724
	.quad	0x3fe99a56d9c28072              # double 0.80009024172978926
	.quad	0x3fe874b5d46d56f8              # double 0.76424685945195758
	.quad	0x3f8266dc7332d6c0              # double 0.0089852545409984108
	.quad	0x3fdc15cc64b175ea              # double 0.43883046944924209
	.quad	0x3fe96bf7fce16839              # double 0.79442977324220643
	.quad	0x3fe88a0505c88779              # double 0.76684809808305865
	.quad	0x3fecb2324b387400              # double 0.89675249759204689
	.quad	0x3febb3ee4a3924c9              # double 0.86571421143266847
	.quad	0x3fe6aaa48a1d9c27              # double 0.70833041167941679
	.quad	0x3fe12f8287bddf58              # double 0.53704954635666535
	.quad	0x3fec4fb25851db3e              # double 0.88472859621001709
	.quad	0x3fe3433423a6ba99              # double 0.60195357287541917
	.quad	0x3fce9d26ec1e7a1c              # double 0.23917089967012906
	.quad	0x3fe8068c46d6dc13              # double 0.7507993110256187
	.quad	0x3fdb6d20e197a108              # double 0.42853567152498373
	.quad	0x3fea55d4f9627346              # double 0.82297753055500134
	.quad	0x3fa4b2cdc7554720              # double 0.040426664908080889
	.quad	0x3fea6804e9753c55              # double 0.82519765469795436
	.quad	0x3fcda7a1dbeca008              # double 0.23167823065273319
	.quad	0x3fe4d81e77da3a73              # double 0.65138171585733884
	.quad	0x3fcdfe3ccee91c50              # double 0.23432121375137394
	.quad	0x3fd2c27e6e52a67c              # double 0.29312096379963015
	.quad	0x3feb9b409ad14955              # double 0.86270170438573734
	.quad	0x3fe20576bcbae737              # double 0.56316696988435566
	.quad	0x3fe855c0c55f6277              # double 0.76046789693198391
	.quad	0x3fe02cdc248c657f              # double 0.50547606600154882
	.quad	0x3fefd2776d3524e4              # double 0.99444171266182168
	.quad	0x3fd9e5dbc7d88a46              # double 0.404654450571034
	.quad	0x3fd58abb8fc2d7c6              # double 0.33659256972475438
	.quad	0x3fcace739d863368              # double 0.20942540351498029
	.quad	0x3fbb0193f75bb9a0              # double 0.10549282826443696
	.quad	0x3fcb1efc4e6e59b4              # double 0.21188310460702342
	.quad	0x3fbd3366a1509298              # double 0.1140655654749686
	.quad	0x3f88e27086a67ac0              # double 0.012150649174882289
	.quad	0x3fac24add706ca50              # double 0.054967339037280127
	.quad	0x3fe3cb8376e91a4e              # double 0.61859296059339797
	.quad	0x3fd11c70f34501f2              # double 0.26736091381829319
	.quad	0x3fe95431a449fefa              # double 0.7915275772829482
	.quad	0x3f8e3dc2b0ba0e80              # double 0.014766236322663717
	.quad	0x3fc48063b886b6d4              # double 0.16016813764638604
	.quad	0x3fc76bbb1242a95c              # double 0.18297518149968084
	.quad	0x3fbb5bdffef86640              # double 0.10687065100537385
	.quad	0x3fee770a7ed67283              # double 0.95203137181268038
	.quad	0x3fd23cc43477082c              # double 0.28495888827831339
	.quad	0x3fe64c6ec934c9d7              # double 0.69683017061316377
	.quad	0x3fcfbf938e5c18c8              # double 0.24803394747886487
	.quad	0x3fe8d456d0ccddc3              # double 0.77592030316639471
	.quad	0x3fe9c567bd589947              # double 0.8053473184743688
	.quad	0x3fee62fce6eba3e2              # double 0.94958348371175938
	.quad	0x3fe3d98509eb4ba8              # double 0.62030269563034768
	.quad	0x3fcddf4a44587f14              # double 0.23337677323524331
	.quad	0x3feb6c99210a57b6              # double 0.85700661137774747
	.quad	0x3fe9d3f3f0186fbc              # double 0.80712315457957783
	.quad	0x3fddeefc03dfdaf8              # double 0.46771145227778232
	.quad	0x3feebd687328122b              # double 0.96062109462269995
	.quad	0x3fe850257e1043a4              # double 0.7597835027864801
	.quad	0x3fc131bbdee9c55c              # double 0.13433025726730363
	.quad	0x3f9d459d2ff5d640              # double 0.028585868885292465
	.quad	0x3fa04975ca376cf0              # double 0.031810456213600236
	.quad	0x3feb2e2b5b8c39aa              # double 0.84938590889378429
	.quad	0x3fe160a38ea49c03              # double 0.54304674015008947
	.quad	0x3fd13fcc59856450              # double 0.26951893560687257
	.quad	0x3fef9b2be1ed13e8              # double 0.98769182325542903
	.quad	0x3fe9a60baf77bd37              # double 0.80151924391785812
	.quad	0x3fdb9582ebd0743a              # double 0.43100045231568951
	.quad	0x3fe8955dc4c4e93e              # double 0.76823318892937897
	.quad	0x3fb488160028f2d8              # double 0.080201506651927601
	.quad	0x3f98583b133ea620              # double 0.023774073648075711
	.quad	0x3fed9efab788b6cc              # double 0.92565666052333872
	.quad	0x3fbd9260eed88bf0              # double 0.11551481085966464
	.quad	0x3fedb0044d16b674              # double 0.927736425937566
	.quad	0x3fe1b277d735f173              # double 0.55303566010802141
	.quad	0x3fec6b30f26e8d0b              # double 0.88808486318558388
	.quad	0x3fed04ec02371a7f              # double 0.90685081894555697
	.quad	0x3fd0f02ef6bac3a6              # double 0.26465963453943642
	.quad	0x3fe83c58fbdee128              # double 0.75736664956551625
	.quad	0x3fd45f04309d69d0              # double 0.31829933879421635
	.quad	0x3fb6d00b13fe3ad8              # double 0.089111988431095468
	.quad	0x3fd2134c50afa5c8              # double 0.28242786292556987
	.quad	0x3fd79d96eb6ae038              # double 0.36899350156773236
	.quad	0x3fdf550e6f148300              # double 0.4895664295927844
	.quad	0x3fdafd334aba143e              # double 0.42170412347360642
	.quad	0x3fd9a30c935a5ad2              # double 0.40057672872482641
	.quad	0x3fe68e88584bc016              # double 0.70489899869244499
	.quad	0x3fe6a5bc72f94995              # double 0.70773146110359397
	.quad	0x3fdb40e96a1eae4a              # double 0.42583690036073973
	.quad	0x3fc3b3e9e9939340              # double 0.15392803101635799
	.quad	0x3fe7d2675e3f41d5              # double 0.74443405540119534
	.quad	0x3fd4f0971a5cc6a0              # double 0.32718446325734796
	.quad	0x3fe21805ad3ae2c0              # double 0.565432394351852
	.quad	0x3fe2bb0b8b079fca              # double 0.58533265260938916
	.quad	0x3fd9ac2b6dc6db98              # double 0.40113340111150242
	.quad	0x3fe7f76d416e64c8              # double 0.74895346431289855
	.quad	0x3fed7f813d0ca946              # double 0.92181455539438484
	.quad	0x3fe97997a84b911e              # double 0.79609282369759504
	.quad	0x3fde6e99573407fc              # double 0.47550042644445489
	.quad	0x3fd19d0acdb47b48              # double 0.27521009529475693
	.quad	0x3fe023ba3173bb2d              # double 0.50436124476059307
	.quad	0x3fed9e3aea8cffd7              # double 0.92556520281504617
	.quad	0x3fd5a83c4c4e4db2              # double 0.33839328243012823
	.quad	0x3fdc135d0baadd6e              # double 0.43868185176275787
	.quad	0x3fb4393c3bed7490              # double 0.078998341208221356
	.quad	0x3fe2ed4b3053ea3c              # double 0.59146651686689422
	.quad	0x3fef9c723bfa160a              # double 0.98784743990171475
	.quad	0x3fdd31aed402c8ba              # double 0.45615740493952794
	.quad	0x3fe7a479ec53b2b1              # double 0.73882766873938099
	.quad	0x3fe42463d2b29558              # double 0.62944213058350851
	.quad	0x3fe25194c82ae550              # double 0.57245864005305158
	.quad	0x3fe3ce057732e5c8              # double 0.61889909058589243
	.quad	0x3fe58e45a40ada8e              # double 0.67361719169169176
	.quad	0x3fee408377d5463f              # double 0.94537518887427285
	.quad	0x3fe2e8314f11a957              # double 0.59084382479822295
	.quad	0x3fd73f5a2d813978              # double 0.36324171489550094
	.quad	0x3fca9c5357d2e3f0              # double 0.20789567745467208
	.quad	0x3fc502f53cb122e8              # double 0.16415276969407633
	.quad	0x3fe4a0f4a5087bc8              # double 0.64464790566477692
	.quad	0x3fee02f4797162eb              # double 0.93786071509665925
	.quad	0x3fe36c79345b8a11              # double 0.60699138856972656
	.quad	0x3fea16fd627b6832              # double 0.81530637011315421
	.quad	0x3fcc91d8f35e1bfc              # double 0.22320091136154463
	.quad	0x3febf6d030b50b61              # double 0.87387856972814515
	.quad	0x3fe55af6ce9dc99f              # double 0.66735401491887447
	.quad	0x3fcfc11f959d5020              # double 0.24808115773578354
	.quad	0x3fd383b79eeef820              # double 0.3049143840870574
	.quad	0x3fea09b0f6256f46              # double 0.81368301463542347
	.quad	0x3fd52fb29eb76eb2              # double 0.33103623866712006
	.quad	0x3fdeafe0dee9b604              # double 0.47948476570931597
	.quad	0x3fd3218bd1487368              # double 0.29892249524873771
	.quad	0x3fd0a9fb49d8f7d2              # double 0.2603748532454776
	.quad	0x3fe767e965b52053              # double 0.73143453469038844
	.quad	0x3f8db7809f378380              # double 0.01451015935794131
	.quad	0x3fe17314fa4c22e0              # double 0.54529808889591536
	.quad	0x3fe4170d5832696f              # double 0.62781398035012426
	.quad	0x3fe35a809bd507fb              # double 0.60479765354125392
	.quad	0x3fdfc604232788b6              # double 0.49646094735193047
	.quad	0x3fe0a6d262d6bd65              # double 0.52036399177988513
	.quad	0x3fde29606991ac20              # double 0.47127542790866706
	.quad	0x3fe3913c7e1e4332              # double 0.61147904045546952
	.quad	0x3fd2283e931a33b6              # double 0.28370632520164507
	.quad	0x3fedc5a607eefa25              # double 0.93037702130806521
	.quad	0x3fee1dbc97af0eef              # double 0.94112996698137674
	.quad	0x3fb85ab15da0fd10              # double 0.095133862837418314
	.quad	0x3fd72c2994d49540              # double 0.36207046064585668
	.quad	0x3fa6519275ca6d00              # double 0.043591095808745095
	.quad	0x3fd312889eb06a92              # double 0.29800620553002333
	.quad	0x3fed70eb88890bc0              # double 0.92003418604905817
	.quad	0x3fd8bb15c02280bc              # double 0.38641875994836616
	.quad	0x3fcf9449f18721b8              # double 0.2467129163108106
	.quad	0x3fc38d3011210d94              # double 0.15274620853788845
	.quad	0x3fe44215ea966689              # double 0.63306709115859505
	.quad	0x3fe39f63d1a58e51              # double 0.61320677706357618
	.quad	0x3fdebf74d7b9cd0c              # double 0.48043557230921929
	.quad	0x3fc71ed48a69521c              # double 0.18062836416596972
	.quad	0x3fe8ffda2f452038              # double 0.78123196823526708
	.quad	0x3fe26f7f2e98dd46              # double 0.57611044980050319
	.quad	0x3fe55ac2951ce4be              # double 0.6673291122780467
	.quad	0x3fd51e2cc90e0ef2              # double 0.32996673235196206
	.quad	0x3fe9328b058ba64e              # double 0.78741980631930075
	.quad	0x3fd1531acb881c96              # double 0.27069730640546064
	.quad	0x3fdd381622c1abdc              # double 0.45654824632827995
	.quad	0x3fe2fd4bb3a63169              # double 0.59341988647206023
	.quad	0x3fe35d935ffb90bf              # double 0.60517281290642433
	.quad	0x3fe2a0cdb45bb92e              # double 0.58212933756093377
	.quad	0x3fbfe123e8ff51d0              # double 0.12452911795055077
	.quad	0x3fe933a1de785a81              # double 0.78755277110288102
	.quad	0x3fd2fa25422c1bf8              # double 0.29651767217768521
	.quad	0x3fd7f0bfab6de820              # double 0.37406913510460704
	.quad	0x3fe8a2e8331a80a2              # double 0.7698861120334366
	.quad	0x3fe1aaadc89c9bb0              # double 0.55208481962187328
	.quad	0x3fd9b998ca1c94de              # double 0.40195293176141245
	.quad	0x3feb2deaba0d0422              # double 0.8493550905042222
	.quad	0x3fc4df5c8c52f520              # double 0.16306645251999274
	.quad	0x3fb800a35e5fb018              # double 0.093759737530206499
	.quad	0x3fdcab0db1efd404              # double 0.44794027687686389
	.quad	0x3f9c3654eedf4c60              # double 0.027551009254079495
	.quad	0x3fef086dfbeb72e6              # double 0.96977900698729225
	.quad	0x3fe95d3e1c064b19              # double 0.79263215516616292
	.quad	0x3fc7fd6cc4ab6c10              # double 0.18742141345032381
	.quad	0x3feffafd2aba1c6d              # double 0.99938829751125768
	.quad	0x3fd7cfe346705f80              # double 0.37206346396259704
	.quad	0x3feb924b1a77967e              # double 0.86160807771075532
	.quad	0x3fc5f713662ec254              # double 0.17160265435588207
	.quad	0x3feafe20460204f8              # double 0.84352124856391608
	.quad	0x3feadd2f2955bfc5              # double 0.83950002740129348
	.quad	0x3f8d9baa37977c80              # double 0.014457063504720091
	.quad	0x3fed6293c27d76e7              # double 0.91828334795328892
	.quad	0x3fe789378c852056              # double 0.73550012059514347
	.quad	0x3fef2c710d62c88b              # double 0.97417500128200751
	.quad	0x3feae1783a998c3c              # double 0.84002314992211024
	.quad	0x3fcbb557d9f2e12c              # double 0.21647165433911064
	.quad	0x3fc91da3dfc94ffc              # double 0.19621704508847404
	.quad	0x3fee98d5d4d7eb0a              # double 0.95615665026648
	.quad	0x3fe84946a85a6855              # double 0.75894482499576077
	.quad	0x3fd2ad9ef33884dc              # double 0.29184697868374854
	.quad	0x3fd1820d36d1369c              # double 0.27356272080656097
	.quad	0x3fc91aea3c077128              # double 0.19613387995821907
	.quad	0x3fd1a0d035767e6a              # double 0.27544026585562753
	.quad	0x3fc89f7098cbc340              # double 0.19236571751346254
	.quad	0x3fda08aee5f00b76              # double 0.40677998022891104
	.quad	0x3fe47b1721e4b672              # double 0.64002567882353234
	.quad	0x3fbe7df8137ad008              # double 0.11910963512019646
	.quad	0x3feb562008cec135              # double 0.85426332206956224
	.quad	0x3fe7386a8605ec60              # double 0.7256367318763175
	.quad	0x3fe8f44dfbe56b31              # double 0.77982234190435495
	.quad	0x3fcdbd34faafec9c              # double 0.23233663788400782
	.quad	0x3fd2868d9b8f65f6              # double 0.28946247283383231
	.quad	0x3febb337025d2141              # double 0.86562681638410066
	.quad	0x3fb0648ad86dff18              # double 0.064034154738689231
	.quad	0x3fe04394bfd7fa85              # double 0.50824964017358865
	.quad	0x3fef80bcad99d341              # double 0.98446496874257871
	.quad	0x3fd3326a6eb63f24              # double 0.2999521332903774
	.quad	0x3fd9a5a193a789b8              # double 0.40073432368640338
	.quad	0x3fb0899a249ae2a0              # double 0.0645996417396284
	.quad	0x3faf6fff3bce0a40              # double 0.061401344347377762
	.quad	0x3fdadd405b1d036a              # double 0.41975411317621669
	.quad	0x3fd4dd283a6b9994              # double 0.3259983606825696
	.quad	0x3f9732088f596060              # double 0.022651799916588167
	.quad	0x3fe11cf1033fc95a              # double 0.53478289255717049
	.quad	0x3fe79e8b421f7a9c              # double 0.73810351290360954
	.quad	0x3fb4219189e3ce68              # double 0.078637214817541712
	.quad	0x3fd883b9958a27bc              # double 0.38303985217555314
	.quad	0x3fd6e38ae28a094c              # double 0.35763809321374107
	.quad	0x3fc6bfc779ec0e4c              # double 0.17772763684489445
	.quad	0x3fc12817ddef870c              # double 0.1340360482855022
	.quad	0x3fdf5cff7a46e140              # double 0.49005114499188451
	.quad	0x3fe1295950660ca5              # double 0.53629747107369907
	.quad	0x3fe2c085f4af2bf9              # double 0.58600137510199979
	.quad	0x3fe3ae27f0abfd77              # double 0.61500927931039839
	.quad	0x3fd2bb84b0980978              # double 0.29269520993707188
	.quad	0x3fe69ba442a7b619              # double 0.70649922388628561
	.quad	0x3f9ab41b92119940              # double 0.026077681341484693
	.quad	0x3fe244aab20ce7e3              # double 0.5708821752116332
	.quad	0x3fe2051263ae8daf              # double 0.56311912030326094
	.quad	0x3fe33f7165497cad              # double 0.60149450094822543
	.quad	0x3fdf17b4ec84cf6c              # double 0.48582194421327674
	.quad	0x3fec65f70754b796              # double 0.88744689399549048
	.quad	0x3feacafea0d1fda0              # double 0.83727961931429106
	.quad	0x3fd1c19a4c610876              # double 0.27744157275095149
	.quad	0x3fd62ec0674ded20              # double 0.3466034897644068
	.quad	0x3fce7e33d866cc18              # double 0.23822639528734224
	.quad	0x3fecb25e9bfbfa1f              # double 0.89677362886124345
	.quad	0x3febc49fdaba333c              # double 0.86775200576958111
	.quad	0x3fb4957a367cb8b0              # double 0.080405844023263339
	.quad	0x3fcc666a329c41e8              # double 0.22187545272073739
	.quad	0x3fec57e36ac60ab3              # double 0.88572855810374163
	.quad	0x3fc9acf020c4dea8              # double 0.20059014892625737
	.quad	0x3febbd9d3ff36215              # double 0.86689627161382765
	.quad	0x3fdd4b0f00504000              # double 0.45770621328938432
	.quad	0x3fddbade4247d83c              # double 0.46453052971571984
	.quad	0x3fea75375e3ad5af              # double 0.82680862812292399
	.quad	0x3fab880657fc8f70              # double 0.053772161713168454
	.quad	0x3fcf2fede502046c              # double 0.24365018541360273
	.quad	0x3fe2b9837c7a0a49              # double 0.58514570533618226
	.quad	0x3fefc61ea079fe72              # double 0.99293452590059261
	.quad	0x3fd244ecffd5938a              # double 0.28545689567391064
	.quad	0x3fc57a8b80105e74              # double 0.16780227425691729
	.quad	0x3fe7ccce07cf2c74              # double 0.74375058675049255
	.quad	0x3fecc21cc588a425              # double 0.89869536000071959
	.quad	0x3fc135a5c06ad730              # double 0.13444969077470992
	.quad	0x3fd77725224720ba              # double 0.36664703700490586
	.quad	0x3fe31c4d9e8b73cb              # double 0.59720498052376436
	.quad	0x3fb0fbc5c1d188e8              # double 0.066341743296593259
	.quad	0x3fb9a03582e85b90              # double 0.10010084577548484
	.quad	0x3fea1baa241f24a2              # double 0.81587702803621576
	.quad	0x3fe6bd0b6e96c6e2              # double 0.71057674025925288
	.quad	0x3f8bdf2fcaff0a00              # double 0.01360928858037358
	.quad	0x3fed2d87730e0273              # double 0.9118077513849826
	.quad	0x3fd43e3b465eecdc              # double 0.3162983119215832
	.quad	0x3fe1bf747ecb8664              # double 0.55462097897197937
	.quad	0x3f676f7cd3a80000              # double 0.0028607786200609553
	.quad	0x3fb9e501c0f17890              # double 0.1011506172230574
	.quad	0x3fe503feffd7ae44              # double 0.65673780411948046
	.quad	0x3fe45e469d1158fe              # double 0.63650828053758324
	.quad	0x3fd38e4a2e523400              # double 0.30555967830224517
	.quad	0x3f905e2c546f7a20              # double 0.015984242108851743
	.quad	0x3fdc59dd5c0bd1a4              # double 0.44298490513690525
	.quad	0x3fdc56d21e54c9d8              # double 0.44279911958724716
	.quad	0x3fe8bb951bde0531              # double 0.77289824908090143
	.quad	0x3fe699a022900438              # double 0.70625311613560537
	.quad	0x3fe362d28fa5c1ca              # double 0.60581329399251982
	.quad	0x3fd75ae2f91de850              # double 0.36492227866950078
	.quad	0x3fc164428c86cc58              # double 0.1358721910633871
	.quad	0x3fe6eb31b085e006              # double 0.71621021725786771
	.quad	0x3fdf6f12eca28ad0              # double 0.49115441426162665
	.quad	0x3fee6032dec07e5d              # double 0.94924300676570861
	.quad	0x3fa831607647b4d0              # double 0.047251715124596694
	.quad	0x3fcaabc6262d3710              # double 0.20836712707608074
	.quad	0x3fe51bb4664eb1ea              # double 0.6596319196883631
	.quad	0x3fa7b3e5aa1b2ee0              # double 0.046294381155886688
	.quad	0x3fe202ba51906fd4              # double 0.56283298426159911
	.quad	0x3fe98fb69c51ba39              # double 0.79879313021758158
	.quad	0x3fe875ab6c426d06              # double 0.76436396736554069
	.quad	0x3fd5cfdb36db7680              # double 0.34081154210239362
	.quad	0x3fc6dbf19baa18e4              # double 0.17858715153506133
	.quad	0x3fdf400cdc9400ea              # double 0.48828431645234949
	.quad	0x3fdf564519d82180              # double 0.48964049838880186
	.quad	0x3fea20556fd43ed3              # double 0.81644698945634742
	.quad	0x3fdda8fa599a981a              # double 0.46343859434489476
	.quad	0x3fe115b8e4afba6d              # double 0.53390164056129452
	.quad	0x3fdc2a7c002e1762              # double 0.44009304063398791
	.quad	0x3fef8c2714e97125              # double 0.98585847935058679
	.quad	0x3fee57dfcf2ea545              # double 0.94822683778071648
	.quad	0x3fd91403f06d5b78              # double 0.39184664229599475
	.quad	0x3fb9e68544df5298              # double 0.10117371493772465
	.quad	0x3fe95ea585ed57b5              # double 0.7928035369648031
	.quad	0x3feac7043148152f              # double 0.83679399133021615
	.quad	0x3fe9e1eafe9cad2a              # double 0.80882787445935844
	.quad	0x3fd4c6f98669b518              # double 0.32464445234548256
	.quad	0x3fd07da7dca835f4              # double 0.25766941593687354
	.quad	0x3fe75b7c915525c6              # double 0.72991779694819381
	.quad	0x3feb27774ef2aae5              # double 0.84856763286128667
	.quad	0x3fdc19850afaebc4              # double 0.43905759880334139
	.quad	0x3fd4dd162c73a24c              # double 0.32599405613885746
	.quad	0x3fc8c023dfc6de90              # double 0.19336365152934265
	.quad	0x3faedc22129c7cd0              # double 0.060273232242474273
	.quad	0x3fe3bf5ce0490011              # double 0.61710971646971491
	.quad	0x3fe879e738a40f87              # double 0.76488076269787164
	.quad	0x3fd31484032c663c              # double 0.29812717733293304
	.quad	0x3feefba041a73c90              # double 0.96821606467155341
	.quad	0x3fc3b9d143630474              # double 0.15410819807405896
	.quad	0x3fe63fe6391b2ef4              # double 0.69530020860244557
	.quad	0x3f9929ac4d63c9a0              # double 0.02457303259229493
	.quad	0x3fe54a5bd0fb2a9f              # double 0.66532698456406425
	.quad	0x3fe26b91deb59903              # double 0.57563107965395977
	.quad	0x3fb7a078254ac898              # double 0.092292317490122122
	.quad	0x3fd43470dfe06686              # double 0.31570073950715771
	.quad	0x3feda01199d60800              # double 0.92578964277367959
	.quad	0x3fbde4c635421758              # double 0.11677206802604922
	.quad	0x3fde2b9081195904              # double 0.47140896422696721
	.quad	0x3fa31ee6838da2f0              # double 0.037345126684902641
	.quad	0x3f6bcd3d7fe75100              # double 0.0033937646069067684
	.quad	0x3fea23ab321c085c              # double 0.81685409342777459
	.quad	0x3fe0ab518d133827              # double 0.52091291002011963
	.quad	0x3fccc45626bda84c              # double 0.2247417153515151
	.quad	0x3fe597dbac4a7171              # double 0.67478736544175721
	.quad	0x3fe4344377a00952              # double 0.63137982715879049
	.quad	0x3fd7331a344a58ec              # double 0.36249404055105461
	.quad	0x3f646b2a8dc3a300              # double 0.0024925070884943556
	.quad	0x3fd06c17f3f1caa2              # double 0.25659750769333745
	.quad	0x3fe09a09945e486c              # double 0.51880339601690428
	.quad	0x3fe6540fdf4a65b4              # double 0.69776147471855277
	.quad	0x3fd04ffbb2cc0300              # double 0.25488178692471308
	.quad	0x3fe9152e955fea85              # double 0.783835689303786
	.quad	0x3feb104fcfab1357              # double 0.84574118194778236
	.quad	0x3fb1cf90f3392810              # double 0.069573459034615093
	.quad	0x3fe79495c9afc77f              # double 0.73688783065720986
	.quad	0x3fd15e78ab88a2b4              # double 0.27139107467022971
	.quad	0x3fe9229c72f6b72c              # double 0.78547499135831833
	.quad	0x3fc042e793c64310              # double 0.12704176631498187
	.quad	0x3fe0fe049092e7a2              # double 0.53100803601340751
	.quad	0x3fa8131c1609e440              # double 0.047020795526755865
	.quad	0x3fe411df4cc58f91              # double 0.62718167299725469
	.quad	0x3fe4a7582ba1900c              # double 0.64542778512668653
	.quad	0x3fda28746f106512              # double 0.40871916624162552
	.quad	0x3feddd2a94ce85e1              # double 0.93324784339727895
	.quad	0x3fd309ed5892f630              # double 0.29748090410052708
	.quad	0x3fe3d19ead795ef7              # double 0.61933835870419685
	.quad	0x3fefae903b6e37bc              # double 0.99005900962378445
	.quad	0x3fe9e21b818946f9              # double 0.80885100650831909
	.quad	0x3fe7d85f032395e5              # double 0.74516249287688352
	.quad	0x3fc346f8defa3b48              # double 0.15060339820453295
	.quad	0x3fd498ad513410e2              # double 0.32181866579072793
	.quad	0x3fa60e34fd32db00              # double 0.043077140720404472
	.quad	0x3fe5eae0af81f70a              # double 0.68492159155695842
	.quad	0x3fe55f657f94018f              # double 0.66789507787329849
	.quad	0x3fe5d74a87052565              # double 0.68253065463174478
	.quad	0x3fd09d47244f0f20              # double 0.25959948106559416
	.quad	0x3fd285715043dd2c              # double 0.28939469183338207
	.quad	0x3feca6912cc1d60b              # double 0.89533289662966931
	.quad	0x3fe36be82ba89807              # double 0.6069222309786263
	.quad	0x3fde8813bd62adb8              # double 0.47705548758196015
	.quad	0x3fdd7e3041fedfdc              # double 0.46082693524249208
	.quad	0x3fca8799c6c7a390              # double 0.20726320463225223
	.quad	0x3fda14697eba20be              # double 0.40749585509957942
	.quad	0x3fe9e6d569bc9303              # double 0.80942793513949629
	.quad	0x3fe028e4b6e078e2              # double 0.50499187200673767
	.quad	0x3fedc30470119db9              # double 0.93005582703056355
	.quad	0x3fe6bd0f317e8495              # double 0.71057853381002423
	.quad	0x3fec3849495895cb              # double 0.88187088323018636
	.quad	0x3fc2f075002c4f7c              # double 0.14796316631747775
	.quad	0x3fd1600522623b68              # double 0.27148559911522918
	.quad	0x3fdcedef390710ae              # double 0.45202236718274491
	.quad	0x3fc3e5db4bce1eb0              # double 0.15545216752456303
	.quad	0x3fda18db6d3d22a2              # double 0.40776715915539274
	.quad	0x3fd472da84665bb0              # double 0.31951010636970079
	.quad	0x3fcc47f8abb352a0              # double 0.22094639190494991
	.quad	0x3feec7156fa73f9e              # double 0.96180221373832686
	.quad	0x3fd539f06546ac36              # double 0.33166131868592019
	.quad	0x3fd2bc6689f94b6e              # double 0.29274905656818972
	.quad	0x3feb45a9f676a99c              # double 0.85225389611632662
	.quad	0x3fea810f6047dd0f              # double 0.82825440220668323
	.quad	0x3fd6585d566af1a8              # double 0.34914334716065776
	.quad	0x3fc572eee682f42c              # double 0.16756998305746273
	.quad	0x3fd4d90c1106c066              # double 0.32574750578624501
	.quad	0x3fef6fe93d2727e5              # double 0.98241102165161164
	.quad	0x3fc8a44bd64896a8              # double 0.19251392329276951
	.quad	0x3feb6d9ee698b1ac              # double 0.85713143385287571
	.quad	0x3fcc31929e54c7ac              # double 0.22026283961309667
	.quad	0x3fee38e253fe754b              # double 0.94444385914872819
	.quad	0x3fa1bfda9d639210              # double 0.034666854584234241
	.quad	0x3fe149c63280d416              # double 0.5402556406394321
	.quad	0x3fee6ef1c442a5d2              # double 0.9510430176935023
	.quad	0x3fedd311cbb0b65c              # double 0.93201532157190625
	.quad	0x3fd949bad1f08396              # double 0.39512510778336585
	.quad	0x3fedb8e6f4382c45              # double 0.92882106494051497
	.quad	0x3fe642bd175f6909              # double 0.69564680638294007
	.quad	0x3fe19aefb7b69209              # double 0.55016313439824771
	.quad	0x3fd6e53420b2c9e8              # double 0.35773947900011516
	.quad	0x3fcb5ab36e7406f4              # double 0.21370547192787337
	.quad	0x3fd7b154d32a4342              # double 0.37019844647970868
	.quad	0x3fe2a7e5e3b08131              # double 0.58299536200141777
	.quad	0x3fecb9fa86f345da              # double 0.89770246846654378
	.quad	0x3fe373e97557bc34              # double 0.60789940756320116
	.quad	0x3fede893c533033a              # double 0.9346407748745158
	.quad	0x3fe430e5d3ce3f06              # double 0.63096896522799351
	.quad	0x3fd7f432e79225a4              # double 0.37427971472114963
	.quad	0x3fdf37a646d65a4c              # double 0.48777157705027174
	.quad	0x3fd95a1d0a740c1c              # double 0.39612508793669732
	.quad	0x3fe201a02ce2c2de              # double 0.56269844786410395
	.quad	0x3fd5897b516dd4a2              # double 0.33651621772816942
	.quad	0x3fe685754d52fb22              # double 0.7037912855374524
	.quad	0x3fe431b522adfc3d              # double 0.63106781743397955
	.quad	0x3fb83595a47e5588              # double 0.094567635211509793
	.quad	0x3fd8a51dabbdacf6              # double 0.38507787486624012
	.quad	0x3fef9e532c94bb60              # double 0.98807676989768467
	.quad	0x3feb7894b4f7b568              # double 0.85846934647785833
	.quad	0x3fec244c3458fd10              # double 0.87943086837904794
	.quad	0x3fb4bfa7b19ed1e0              # double 0.081049424042084706
	.quad	0x3fef92a41ec6f118              # double 0.98665052424579169
	.quad	0x3fd2c8f6bce1956e              # double 0.29351585812977177
	.quad	0x3fd91896ce9ef3a8              # double 0.39212579896757882
	.quad	0x3fd269b155036d2a              # double 0.28770097066963507
	.quad	0x3feb30c02b0c52c6              # double 0.84970100791778047
	.quad	0x3feb32b4f3eb68be              # double 0.84993980064907482
	.quad	0x3fe6c626683e29c8              # double 0.71168823585440411
	.quad	0x3fcf39559ea607b4              # double 0.24393720861922719
	.quad	0x3fdc0b31063d6c00              # double 0.4381830750405129
	.quad	0x3fdcd53c889b6636              # double 0.45051492062120546
	.quad	0x3fec0a8a98c033e4              # double 0.87628679117335339
	.quad	0x3fe38a74798b44c7              # double 0.6106512426287275
	.quad	0x3fbd569193e9bf00              # double 0.11460218297156288
	.quad	0x3f88a138402fdc80              # double 0.012026252230482593
	.quad	0x3fe502180ab5a947              # double 0.65650560466500785
	.quad	0x3febb4b88d66e91a              # double 0.86581065766884824
	.quad	0x3fe59a808ed3a272              # double 0.67511012931670522
	.quad	0x3fc8b0a5692c0fa4              # double 0.19289081225735771
	.quad	0x3fd8d5c981f5b70c              # double 0.3880485314501676
	.quad	0x3fb713d5fb0e3350              # double 0.090146421234931439
	.quad	0x3fd7f469bf1ddfe4              # double 0.37429279006710048
	.quad	0x3fec24551144c34f              # double 0.87943509457373092
	.quad	0x3faf71e74e9312e0              # double 0.061415890065779299
	.quad	0x3fbee120b24b6e40              # double 0.12062267640015367
	.quad	0x3fd03983c7f24bee              # double 0.25351042295477455
	.quad	0x3fe6e06f52eb51e1              # double 0.71489683337363996
	.quad	0x3fe90860bfa7a766              # double 0.78227269585225367
	.quad	0x3fa823d1a837fff0              # double 0.047148277077212586
	.quad	0x3fe4e8707869cc17              # double 0.65337394254891279
	.quad	0x3fec86f55ea93090              # double 0.89147442329842086
	.quad	0x3fc1afd8ba20ecb8              # double 0.13817891205130706
	.quad	0x3fef9da9313e7171              # double 0.98799571626618221
	.quad	0x3fda772db528a758              # double 0.41352408114709283
	.quad	0x3fe67332be0048cc              # double 0.70156228170005752
	.quad	0x3fd9ec45142ec4f0              # double 0.40504576655355518
	.quad	0x3fe24bc75cfa629a              # double 0.57175033721712798
	.quad	0x3fde7f350cf5ad08              # double 0.47651411309807701
	.quad	0x3fd2a27ccf14f438              # double 0.29116745207631167
	.quad	0x3feb2e6de38d23b1              # double 0.84941763347261745
	.quad	0x3fcfa6e7e9fe0368              # double 0.24728106427576368
	.quad	0x3fe3bc6d11f3bef0              # double 0.61675122743869615
	.quad	0x3fed5150b213d889              # double 0.91617617398039031
	.quad	0x3fdcd3147b930762              # double 0.45038330142789651
	.quad	0x3fb9f10dc0a659e0              # double 0.10133443787922358
	.quad	0x3fd333e156f8e2f2              # double 0.3000415181482331
	.quad	0x3fedf049bf75a89e              # double 0.93558204073385176
	.quad	0x3fd851ae0be007e4              # double 0.37998534354858138
	.quad	0x3fdeb4047073c2a2              # double 0.47973738652857822
	.quad	0x3fdfb3a84ee9eeb0              # double 0.4953404207842409
	.quad	0x3fc5fec3421a92c8              # double 0.17183724143719403
	.quad	0x3fef7832d4d90caa              # double 0.98342267581792453
	.quad	0x3fe048459d780822              # double 0.50882225757255051
	.quad	0x3f8160c65d1a0900              # double 0.008485364643324278
	.quad	0x3fe901b7aec4b922              # double 0.78145965704405662
	.quad	0x3fbb50f90d458f10              # double 0.10670429777161083
	.quad	0x3fefec1c96b71a34              # double 0.99757222591944705
	.quad	0x3fdf62af1a558f34              # double 0.49039819308949295
	.quad	0x3fe11c388a5c38f0              # double 0.53469492934689633
	.quad	0x3f8d8f0968dd7800              # double 0.014432977211694009
	.quad	0x3fe4121b3d889957              # double 0.627210254843514
	.quad	0x3fe89bce028b5222              # double 0.76901913163107261
	.quad	0x3fd0c5b79ffde088              # double 0.26206770538511437
	.quad	0x3f8e47187a6e4600              # double 0.014784041630067968
	.quad	0x3fbd349c4d448448              # double 0.11408402334611012
	.quad	0x3fb995a5926b65a0              # double 0.09993967842765139
	.quad	0x3fea13b1192123f0              # double 0.81490378292175869
	.quad	0x3feeda620a07e0fd              # double 0.96415807685028165
	.quad	0x3fdf5ccb32457ad6              # double 0.49003868016545249
	.quad	0x3fc7bee967063d98              # double 0.18551366358267951
	.quad	0x3fcc14dec8e18198              # double 0.21938690956723117
	.quad	0x3fa50fe349d03c50              # double 0.041136839638163836
	.quad	0x3fefc0d93df73e0c              # double 0.99229108908360919
	.quad	0x3fdc929f8ecf7c74              # double 0.44644917436921294
	.quad	0x3fa10de1c7282db0              # double 0.033309035836363576
	.quad	0x3fee371bfe164dd0              # double 0.94422721506492202
	.quad	0x3fe848766f67403c              # double 0.75884553678952881
	.quad	0x3fd00792e05f816c              # double 0.25046226417000272
	.quad	0x3fc9df2d85167758              # double 0.20212334631372175
	.quad	0x3fe719889c15e7d2              # double 0.72186689839804274
	.quad	0x3fd385a8e3277cf8              # double 0.30503294165642059
	.quad	0x3fc9f6ee864b77c8              # double 0.20284825856555089
	.quad	0x3fe0d3e3235ad395              # double 0.52586514382584204
	.quad	0x3fce5920944da0f4              # double 0.23709494820946697
	.quad	0x3fcd2eb08b9654b0              # double 0.22798735442908002
	.quad	0x3fd19b3ff19d5b24              # double 0.27510069461043174
	.quad	0x3fdcf8771f579388              # double 0.4526651197505136
	.quad	0x3fe959acd5109292              # double 0.79219667066770882
	.quad	0x3fd78bf1dd3b31b2              # double 0.36791655163394943
	.quad	0x3fb9b3a20a985d90              # double 0.10039723166152315
	.quad	0x3fdc8d3a034bad6e              # double 0.44611978837811861
	.quad	0x3fcc61a55cbae50c              # double 0.22172991779169882
	.quad	0x3fa428d1378fe1c0              # double 0.039373910934901613
	.quad	0x3fe72fe5ab01ff4a              # double 0.72459681892358074
	.quad	0x3fc17d7ed589ba0c              # double 0.13664231707248609
	.quad	0x3fd5c20ea76cf5c2              # double 0.33996931409987152
	.quad	0x3fe7d627557427cb              # double 0.74489180269414967
	.quad	0x3fd4528705bff83a              # double 0.31753707467567305
	.quad	0x3fe2250c2ec321c5              # double 0.56702241070984682
	.quad	0x3fee7895f19d14fd              # double 0.9522199362769751
	.quad	0x3fc9236675850200              # double 0.1963928293062196
	.quad	0x3fe0acfdd1193055              # double 0.5211171230271342
	.quad	0x3fe996409fd18875              # double 0.79959136213825721
	.quad	0x3fe5467b791fdd0e              # double 0.66485379845735948
	.quad	0x3fe49ef01386054d              # double 0.64440158665835556
	.quad	0x3fd70026c71df292              # double 0.35938424534814672
	.quad	0x3feb9e53c5e30f18              # double 0.86307705545229663
	.quad	0x3fe96f0054c0e80e              # double 0.79479996255327179
	.quad	0x3fda40994df84308              # double 0.4101928006576121
	.quad	0x3fd88514487127e4              # double 0.38312251161971589
	.quad	0x3fc79647dc869480              # double 0.18427370326859105
	.quad	0x3fc427460229df64              # double 0.15744853120463198
	.quad	0x3fdff55937027d4c              # double 0.49934988376658818
	.quad	0x3fe240ee18047263              # double 0.57042603197949082
	.quad	0x3fe06ceaefb9340f              # double 0.51329562016474195
	.quad	0x3fbf1798403c5828              # double 0.12145377701048743
	.quad	0x3fe9d12e00ea668a              # double 0.80678463152726576
	.quad	0x3fdac611a273dd90              # double 0.41833916534911797
	.quad	0x3fc4f4244caf19b0              # double 0.16370061630568733
	.quad	0x3fe58bc4552c16b8              # double 0.67331139216613334
	.quad	0x3fec3345bb2b5ba2              # double 0.88125883633152946
	.quad	0x3fd02ed1c6daf498              # double 0.25285763186895727
	.quad	0x3feb497317b37096              # double 0.85271601323212809
	.quad	0x3fe7618dbcc86359              # double 0.73065840598710985
	.quad	0x3fbe7798fe4a6b40              # double 0.11901241501111048
	.quad	0x3fe482ccb034be5f              # double 0.64096674361458017
	.quad	0x3fcd65acbd0d48d8              # double 0.22966536742257548
	.quad	0x3fc240bb355444b8              # double 0.14260044197047761
	.quad	0x3fec666657b39c63              # double 0.88749997262210589
	.quad	0x3fe4a5425f9e6733              # double 0.64517325091876498
	.quad	0x3fd9a0be75759cd6              # double 0.40043603392264282
	.quad	0x3fd6fbfafb55d8c0              # double 0.35912966293780002
	.quad	0x3fcf3512279094bc              # double 0.24380709583161841
	.quad	0x3f96c7f4dfd80e80              # double 0.02224714866862465
	.quad	0x3fe7145df8fe95ea              # double 0.72123621589406395
	.quad	0x3fc7a397d71e1524              # double 0.18467996600899383
	.quad	0x3fa72c009d7fc0c0              # double 0.045257586694675833
	.quad	0x3fca0755ce7b75f0              # double 0.20334885198728569
	.quad	0x3fdb31f040cd1422              # double 0.42492300346595091
	.quad	0x3fe267380bf25569              # double 0.57509996732066526
	.quad	0x3fd098be7ac26592              # double 0.25932275760859469
	.quad	0x3fca5c859d85edf8              # double 0.20594854537544882
	.quad	0x3feaed99f257d93a              # double 0.84150407154701345
	.quad	0x3fb05cbfd4703048              # double 0.06391524254303349
	.quad	0x3fe9b5b6c0da7600              # double 0.80343187014267414
	.quad	0x3fd1b71ce9a6909e              # double 0.27680132691808434
	.quad	0x3fdecb27ff457930              # double 0.4811496727833342
	.quad	0x3fe0207a53d3d95f              # double 0.50396458027425328
	.quad	0x3fe966621c3f0b80              # double 0.79374795452928026
	.quad	0x3fea11ddf9e41e79              # double 0.81468104178288947
	.quad	0x3fed995f677bc5f0              # double 0.92497225009554818
	.quad	0x3fd323069a6c7e36              # double 0.29901280479859638
	.quad	0x3fc9ab19fdd1f8f4              # double 0.20053410428585716
	.quad	0x3fc475caf2671f5c              # double 0.15984474979472452
	.quad	0x3fdd4790e7bb04c2              # double 0.45749304418502501
	.quad	0x3fe0b2c7995928e7              # double 0.521823691852913
	.quad	0x3fed553efdf2f934              # double 0.91665601348339587
	.quad	0x3fd8c8c1e4adfedc              # double 0.38725325901030572
	.quad	0x3fc740de433b58e4              # double 0.1816671207695385
	.quad	0x3fde91bd4c3362f4              # double 0.47764522973515899
	.quad	0x3fed3d3d9e70b802              # double 0.91372567124722104
	.quad	0x3fc5b9804c6f7cbc              # double 0.16972354633523945
	.quad	0x3fc0a5af5026dd58              # double 0.13005629933989371
	.quad	0x3fd7acf65df5bf9a              # double 0.36993178535248605
	.quad	0x3fe6f59907b1c285              # double 0.7174801969795942
	.quad	0x3fefb630add89479              # double 0.99099000887203125
	.quad	0x3f9de42279191a40              # double 0.029190577164877718
	.quad	0x3fe3a17314f79ef8              # double 0.61345819564027604
	.quad	0x3fb75c963a0518c0              # double 0.091256512799279044
	.quad	0x3feafa3f574c33fa              # double 0.84304778147054482
	.quad	0x3f89b34c53981600              # double 0.012549015332306901
	.quad	0x3fe0256529548a0a              # double 0.50456483909903338
	.quad	0x3f86f8594c7c2380              # double 0.011215875288614674
	.quad	0x3fe376cd3597385c              # double 0.60825214831289598
	.quad	0x3fe66948cfddecd8              # double 0.70035210227015465
	.quad	0x3fd4d36b5c5d71e8              # double 0.32540401477834147
	.quad	0x3fb24ccdc27b27f8              # double 0.07148443220208367
	.quad	0x3f95406ecd02bca0              # double 0.020753604185924091
	.quad	0x3fbab303ca700f88              # double 0.10429404918983043
	.quad	0x3fdb985d86db9a38              # double 0.43117464227399038
	.quad	0x3fde0d8afa097f7e              # double 0.46957659166036325
	.quad	0x3fc813a3bc3b6ed4              # double 0.18809935275100165
	.quad	0x3fd388da7d5eedae              # double 0.30522787326091361
	.quad	0x3f29da97949fd000              # double 1.972494158618554E-4
	.quad	0x3fd6b13bc95a671c              # double 0.35456747687713785
	.quad	0x3fe80072db2606d6              # double 0.75005476763200352
	.quad	0x3fad59269205d390              # double 0.057320790600818516
	.quad	0x3fabe278b391c620              # double 0.054462215347381937
	.quad	0x3fd3fd1366a722ec              # double 0.31232152008719427
	.quad	0x3fdfefcbd77a9db0              # double 0.49901100199573545
	.quad	0x3fe9bb9a3ee8073c              # double 0.80415069853209031
	.quad	0x3fe2e642d190b54f              # double 0.59060803347316859
	.quad	0x3fe703036fa6555c              # double 0.7191178494128212
	.quad	0x3fdc4b7676bc434a              # double 0.44210588069204404
	.quad	0x3fe4d43aab8037c8              # double 0.65090688225040427
	.quad	0x3fdd8288e88f2602              # double 0.46109221182686622
	.quad	0x3fe36183b29f66a1              # double 0.60565361869085532
	.quad	0x3feee71cc32bf825              # double 0.96571195716365265
	.quad	0x3fef1e8ca23d9bc7              # double 0.97247916877392348
	.quad	0x3fecdafbb324d96a              # double 0.90173134793330445
	.quad	0x3fda79996b017bac              # double 0.41367183160576348
	.quad	0x3fcc1111b701d5c0              # double 0.21927091060540072
	.quad	0x3fe3dd6ddc01fd8f              # double 0.6207799241091595
	.quad	0x3fe6144af55dad81              # double 0.68997714922936393
	.quad	0x3fe019af5f0a5ece              # double 0.50313538134192881
	.quad	0x3fba874e2ab8e9d8              # double 0.10362709563279482
	.quad	0x3fe9617ba186c916              # double 0.79314977214952154
	.quad	0x3fd27d6e564dc376              # double 0.28890570095159462
	.quad	0x3fe1a38284f3d9aa              # double 0.55120969741147019
	.quad	0x3fe99d0f5208f96f              # double 0.80042234442207227
	.quad	0x3fe8a03be49d37bc              # double 0.76955980921933742
	.quad	0x3fd96a520853cd32              # double 0.39711428464143517
	.quad	0x3fe26c7a147c725f              # double 0.57574180604167313
	.quad	0x3fd3b21a5dbcff48              # double 0.30774554399612386
	.quad	0x3fea5f8f7ad2de0d              # double 0.82416509617809341
	.quad	0x3fd95ed97a289722              # double 0.39641415528818602
	.quad	0x3feb901dbdbbec07              # double 0.86134230668483347
	.quad	0x3fe52ecd13cc5f21              # double 0.66196302286968856
	.quad	0x3fd1608e78dd3f0a              # double 0.27151834300183053
	.quad	0x3feb633631ff2fff              # double 0.8558608032703886
	.quad	0x3fe84d3edcbf9ab2              # double 0.75942938914234603
	.quad	0x3fe5b7c34f43667e              # double 0.67868199807271856
	.quad	0x3fd5d6bafec16606              # double 0.34123110655272659
	.quad	0x3fbf1f2015f605b0              # double 0.12156868492276973
	.quad	0x3febea6f66a02a44              # double 0.87236757320472024
	.quad	0x3fdaef89515a12f4              # double 0.42087014145390289
	.quad	0x3fe31ad2a0d48fea              # double 0.59702426349803983
	.quad	0x3fe37fe70638bec5              # double 0.60936309065979144
	.quad	0x3fdec603036574d2              # double 0.480835679356301
	.quad	0x3feb6d4f01f3f904              # double 0.85709333783577834
	.quad	0x3fe2b05e42f7a7dd              # double 0.58402932242938344
	.quad	0x3fe00a8c3c98c9cd              # double 0.50128757319753847
	.quad	0x3f54d3c7b51b1400              # double 0.0012711954372417456
	.quad	0x3fd25f2e06f1b2e2              # double 0.28705931356561909
	.quad	0x3fc9e9b3f2788fd0              # double 0.2024445470752867
	.quad	0x3fedcd7c3952c318              # double 0.93133364864306412
	.quad	0x3f88e89636731a40              # double 0.012162374054594527
	.quad	0x3fdf89277c5b21ce              # double 0.49274623054637068
	.quad	0x3fd8217ed23dfafa              # double 0.37704439670044076
	.quad	0x3fd9c072fb1dd3a4              # double 0.40237116358849279
	.quad	0x3fe6b625a58b587f              # double 0.70973474820017646
	.quad	0x3fb50f660528b570              # double 0.082266212710882191
	.quad	0x3feaf50e7f8ea012              # double 0.84241413987638425
	.quad	0x3fc59370d37ec1b4              # double 0.16856203390990532
	.quad	0x3fe49a6cb8b0036d              # double 0.6438506705454593
	.quad	0x3fe102cd7b392326              # double 0.53159212176351356
	.quad	0x3fb4e10b1a982d90              # double 0.081558889382156829
	.quad	0x3fec2a19ed93ad1d              # double 0.88013931657534139
	.quad	0x3fe2319520f5a0ad              # double 0.56855255544089334
	.quad	0x3fcc42d8eb26d75c              # double 0.2207900188638473
	.quad	0x3fef811b8b1ccc51              # double 0.98451020403298106
	.quad	0x3fe54552559745f3              # double 0.66471211163496802
	.quad	0x3fe1591dd85d1113              # double 0.54212848909858946
	.quad	0x3fea8d4f5ec0b458              # double 0.82974976068875161
	.quad	0x3fe1191dd5a8fb66              # double 0.53431598406301073
	.quad	0x3fb9122d5c7c76a0              # double 0.097933611945757892
	.quad	0x3fd36fedb0e168b8              # double 0.30370657227980358
	.quad	0x3fae493019807bd0              # double 0.059152129281066501
	.quad	0x3fe8cc7138cb540b              # double 0.77495633213641335
	.quad	0x3fe11c99a6b6d286              # double 0.53474123536450757
	.quad	0x3fe3b8d99f324862              # double 0.61631470768976393
	.quad	0x3feae3f707dcb3f0              # double 0.84032775435991702
	.quad	0x3f8f8c5c2bebc440              # double 0.015404434290276936
	.quad	0x3febd9d4b6876044              # double 0.87034068727644653
	.quad	0x3fe88e303abeaa32              # double 0.76735698197928159
	.quad	0x3fc11f3500325efc              # double 0.13376486310584557
	.quad	0x3feb8844b6dcab06              # double 0.86038432803374643
	.quad	0x3fce121e1fbcab64              # double 0.23492790746362424
	.quad	0x3fd2b47a1155458c              # double 0.29226543133435068
	.quad	0x3fee345afff21a14              # double 0.94389104833027426
	.quad	0x3fe819e033f6c218              # double 0.75315866612624216
	.quad	0x3fe4c01229b6c27a              # double 0.64844616076705042
	.quad	0x3fc2c824359313cc              # double 0.14673283210700416
	.quad	0x3fe7a5631815cfdc              # double 0.73893885330334852
	.quad	0x3fe69519654cd061              # double 0.70570058617751041
	.quad	0x3fe0e55c8c92ce3a              # double 0.5279982324195267
	.quad	0x3fde57bf0af15dd0              # double 0.47410560673367019
	.quad	0x3fef39b16c5d9f4f              # double 0.97579260983636995
	.quad	0x3fee24322fa62d5a              # double 0.9419184618613301
	.quad	0x3fe8668e67c67884              # double 0.76251907604798008
	.quad	0x3fed0858f7c4f9a9              # double 0.9072689856764572
	.quad	0x3fd5519e03bf12b4              # double 0.33310652128083551
	.quad	0x3fc7b2a0c9152948              # double 0.18513879602898897
	.quad	0x3fe270071b719013              # double 0.5761752639778045
	.quad	0x3fe331c9f4207e4f              # double 0.59982774430313579
	.quad	0x3fde90dd89ffe728              # double 0.47759188152814369
	.quad	0x3fc9ed3e79dbe6e0              # double 0.20255261373659206
	.quad	0x3fe4a40439619406              # double 0.64502154547938129
	.quad	0x3fbb7842ed680638              # double 0.10730379386952726
	.quad	0x3fd5d3a5a2fb9184              # double 0.34104290882375943
	.quad	0x3fef6a5557a009fb              # double 0.98173014749801212
	.quad	0x3fefc4f5864b1abf              # double 0.99279285649466675
	.quad	0x3fe2195b80e2f96d              # double 0.56559539006393111
	.quad	0x3fe0a6b5efcaed9a              # double 0.52035042604932191
	.quad	0x3fd8d253cfa11618              # double 0.38783736492436693
	.quad	0x3fde8f162537a822              # double 0.47748330721390364
	.quad	0x3fe7e9b59ae90414              # double 0.74727897888090178
	.quad	0x3fc5937b9cf77e18              # double 0.1685633198203369
	.quad	0x3f9ad4ddf9d178c0              # double 0.026202648518272253
	.quad	0x3f97a011561be620              # double 0.023071547394442615
	.quad	0x3fec4be50a768618              # double 0.88426448863555418
	.quad	0x3fa971bf69263a50              # double 0.049695951066600075
	.quad	0x3fc8645012a3a018              # double 0.19056130323520004
	.quad	0x3fe9ea314e93141b              # double 0.80983796450221079
	.quad	0x3fe18c5c28871a84              # double 0.54838378825736855
	.quad	0x3fc6fa25b793d420              # double 0.17950889075987764
	.quad	0x3fe5c328a029cd08              # double 0.6800730827511936
	.quad	0x3fe6a55f41d4b80d              # double 0.70768702371219805
	.quad	0x3fdf3dd723102d8a              # double 0.48814943718090176
	.quad	0x3fe809a713225cc4              # double 0.75117830025819687
	.quad	0x3fe5dd10adbc0e53              # double 0.68323549206292922
	.quad	0x3fec4bbdfcb1ae06              # double 0.88424586633976854
	.quad	0x3fea1f77928ab8c9              # double 0.81634119626485202
	.quad	0x3fd0a8df28fceda6              # double 0.26030711176619048
	.quad	0x3fe925da56334c1e              # double 0.78587071262370833
	.quad	0x3fe33bb8752a05e5              # double 0.60104010470984959
	.quad	0x3fe25c243a35afed              # double 0.57374774331173983
	.quad	0x3feca87489bf0090              # double 0.8955633821824609
	.quad	0x3fee1d847c67a7d4              # double 0.94110321328957491
	.quad	0x3fe9c6bfb49ca1b1              # double 0.80551133418798859
	.quad	0x3fe24c9ba4683c55              # double 0.57185155974174029
	.quad	0x3febc5fc449a9543              # double 0.86791814231097708
	.quad	0x3fe1b45fe2abd500              # double 0.5532683779880756
	.quad	0x3fc322227fd3ed74              # double 0.14947921029657218
	.quad	0x3fec64e355646331              # double 0.88731543234016474
	.quad	0x3fdea34352f8128c              # double 0.47871478178448323
	.quad	0x3f9d1e8cf930f900              # double 0.028436854085378549
	.quad	0x3fce6a7d27bd5198              # double 0.23762478294760281
	.quad	0x3fb7da9ba7f318b8              # double 0.093179443839377707
	.quad	0x3faff06404d71670              # double 0.062380910483210594
	.quad	0x3fe799097870ef39              # double 0.73743127368604811
	.quad	0x3fe104ae0d9ce485              # double 0.53182127627145859
	.quad	0x3feffaa1dbc13bda              # double 0.99934475823271929
	.quad	0x3fe254c7d646cd2e              # double 0.57284919596569295
	.quad	0x3fd99be717f09b38              # double 0.40014054620626238
	.quad	0x3fdbbcbffcd5eef2              # double 0.4333953827951823
	.quad	0x3f9795c17b96d600              # double 0.023032210510526951
	.quad	0x3fc129318c5cd730              # double 0.13406962731976924
	.quad	0x3fed89126ab8bbdb              # double 0.92298241466584885
	.quad	0x3fe577feccf344f3              # double 0.67089786557531139
	.quad	0x3fec60f5ad4fc768              # double 0.8868358979218387
	.quad	0x3feff9cb89da1a6f              # double 0.99924256252491072
	.quad	0x3fe71df5bf9d2f9e              # double 0.72240722107516198
	.quad	0x3fe28908723c4e49              # double 0.57922766029009509
	.quad	0x3fde01203bd7a02e              # double 0.46881872028325489
	.quad	0x3fb146f331e46480              # double 0.067488860779478799
	.quad	0x3feae5e4ce227d9e              # double 0.84056320439042387
	.quad	0x3fe51729f895fdd1              # double 0.65907763053831492
	.quad	0x3fed4e81546a8ab3              # double 0.91583315360579431
	.quad	0x3fd23b818fac5b7a              # double 0.28488196402161459
	.quad	0x3fcef191646c89ac              # double 0.24174706843866767
	.quad	0x3fc744adafa4f190              # double 0.18178340031034823
	.quad	0x3fdd148b9e9a58c2              # double 0.45437899101797197
	.quad	0x3fc21868950c8d78              # double 0.14136988904747816
	.quad	0x3fd71e1b03abcf00              # double 0.36121249540813949
	.quad	0x3fdfef81fa2fcb5e              # double 0.49899339134497278
	.quad	0x3fe7bae919a5ffd9              # double 0.74156622895679469
	.quad	0x3fe6410dce330d55              # double 0.69544115327191014
	.quad	0x3fd2533cfe9e7726              # double 0.2863304602159239
	.quad	0x3fe4b24249a536fd              # double 0.64676012405263317
	.quad	0x3fb712fa2d2f68d8              # double 0.090133319884816543
	.quad	0x3fefe81882836a2d              # double 0.99708199969183441
	.quad	0x3fd007d3cd4e6d0c              # double 0.25047774362038022
	.quad	0x3fc50b2c59e282bc              # double 0.16440348042399033
	.quad	0x3fc9155b667269d8              # double 0.19596426489154228
	.quad	0x3fd12093d007c3bc              # double 0.26761336627447085
	.quad	0x3fe9cc4b35be45e8              # double 0.80618820664147695
	.quad	0x3fd6d9c45ee83e5e              # double 0.35704144733697329
	.quad	0x3fed259370c2f31c              # double 0.91083690665945793
	.quad	0x3fd6a39913b96414              # double 0.35373522688092973
	.quad	0x3fe2dbf69f448bee              # double 0.58935099703773886
	.quad	0x3fc350cd5ccb953c              # double 0.15090338736551157
	.quad	0x3fe7298fdd201ec7              # double 0.72382348240440642
	.quad	0x3fc0d77937a8fbac              # double 0.1315757295396599
	.quad	0x3fc3bd801183d768              # double 0.15422058921074755
	.quad	0x3fd99a817084fab0              # double 0.40005527485110814
	.quad	0x3fcb060d6dacad98              # double 0.21112220626069411
	.quad	0x3fcda80f039215cc              # double 0.23169124292705445
	.quad	0x3fe03ebe3208fdf0              # double 0.50765905163274105
	.quad	0x3fe652f010d6045a              # double 0.69762423790246975
	.quad	0x3fd8c76613911b90              # double 0.38717033301184589
	.quad	0x3fe97e3914412e4d              # double 0.79665807682017376
	.quad	0x3fbd75708e92d750              # double 0.11507323723602991
	.quad	0x3fe9b7610ab9f5e0              # double 0.80363514037133754
	.quad	0x3fe317a93d0f32c3              # double 0.59663831639917253
	.quad	0x3fd033163cfc4ffa              # double 0.25311809497475191
	.quad	0x3fe4a50159a68867              # double 0.64514224538676224
	.quad	0x3f7e4f01782ae980              # double 0.0073995644949554906
	.quad	0x3fe9dbef50e005c9              # double 0.80809751315990141
	.quad	0x3feaa09f1bdeed70              # double 0.8321071190215843
	.quad	0x3fef56547c21599e              # double 0.97928833240694124
	.quad	0x3fec1aed18952437              # double 0.87828688432012469
	.quad	0x3fe6504af7640453              # double 0.69730137175077755
	.quad	0x3fe52f3834dec904              # double 0.66201410604688293
	.quad	0x3fc5db6e2ddd058c              # double 0.17075898398801959
	.quad	0x3feed8538eded996              # double 0.9639070311011888
	.quad	0x3fdb79195bbc2b3e              # double 0.42926629980563635
	.quad	0x3fe206f2f32ac5ba              # double 0.56334826940126637
	.quad	0x3fdd95847707117a              # double 0.46225082038679199
	.quad	0x3feb2d87c6487294              # double 0.84930790640972242
	.quad	0x3fdbf9c560aef196              # double 0.43711981240974163
	.quad	0x3fe1fbc009bcd885              # double 0.56198121930971523
	.quad	0x3fc9d1cad1bcf074              # double 0.20171485177150184
	.quad	0x3fb8b7e07423f598              # double 0.09655573687992669
	.quad	0x3fd8969e7eb02a16              # double 0.3841930615605248
	.quad	0x3fb1fbae625a2258              # double 0.070246600162258033
	.quad	0x3fe86f54f3d99483              # double 0.76359031321466408
	.quad	0x3fc0ec2bf66db744              # double 0.13220738918919939
	.quad	0x3fac71762385dd60              # double 0.055553142391483901
	.quad	0x3fe1ecccf1ed0c1d              # double 0.56015631915250064
	.quad	0x3fe6f6913c41ccf4              # double 0.71759855050041077
	.quad	0x3fe14cf77454f9af              # double 0.54064533921319036
	.quad	0x3fdf46065fe46440              # double 0.488648980755503
	.quad	0x3fdfe88cf3a75a1e              # double 0.49856876177128295
	.quad	0x3fd2709afeb4d584              # double 0.28812289117498602
	.quad	0x3feee4338e34e44f              # double 0.96535661482551826
	.quad	0x3fc2de6999da0090              # double 0.14741249096187348
	.quad	0x3fbefd30940fc168              # double 0.12105086912902652
	.quad	0x3feb6a2fe678411d              # double 0.85671229375478541
	.quad	0x3fd574899972991a              # double 0.33523788437959612
	.quad	0x3fd9c4ecad287dbe              # double 0.40264431867577943
	.quad	0x3fe16be557980086              # double 0.54442088230281693
	.quad	0x3feefc1b14127dbd              # double 0.9682746307407154
	.quad	0x3fe402a318f16153              # double 0.6253219115415426
	.quad	0x3fe0efded4da0991              # double 0.52928105900382338
	.quad	0x3f90f45da9335de0              # double 0.016557181789577657
	.quad	0x3fcc26323067133c              # double 0.21991565097246191
	.quad	0x3fe73192a6247cba              # double 0.72480137300217184
	.quad	0x3feb3dbd823f74b1              # double 0.85128665389097169
	.quad	0x3fdf3a8c2d35be2c              # double 0.48794845976860546
	.quad	0x3f8a8a26d2c7e400              # double 0.012958815867920137
	.quad	0x3fe432610e290e3d              # double 0.63114979520509673
	.quad	0x3fe8df6bc89cff47              # double 0.77727307493476239
	.quad	0x3fe27a32e279a3c0              # double 0.57741684182575881
	.quad	0x3fea993b3ac2d254              # double 0.8312050006557663
	.quad	0x3fd2893ae9f1da22              # double 0.28962586256185052
	.quad	0x3facf9f4aca81880              # double 0.056594511104820278
	.quad	0x3fe2f4ff7ffda4dd              # double 0.59240698812677872
	.quad	0x3fb83cc43bf1fd68              # double 0.094677223811222455
	.quad	0x3fb45185ff492480              # double 0.079368948770154545
	.quad	0x3fc15517f6d786ac              # double 0.13540935089900097
	.quad	0x3fcb16da308ad004              # double 0.21163489694811244
	.quad	0x3fd319556877e46a              # double 0.29842124177918683
	.quad	0x3fdd3b7369dec6d4              # double 0.45675359095467383
	.quad	0x3fe7483f3d9d45c7              # double 0.72756921800662944
	.quad	0x3fea807f84d37bd0              # double 0.82818580572699751
	.quad	0x3fe4a85ebc4e76d2              # double 0.64555298594106092
	.quad	0x3fea5240bd3339bd              # double 0.82254063561577306
	.quad	0x3fecd4015757c9dc              # double 0.90087954577603168
	.quad	0x3fed3bec15d4c631              # double 0.91356472267052002
	.quad	0x3fef8bbcd9967a01              # double 0.98580782411210077
	.quad	0x3fe64a8fbda71a6e              # double 0.69660174409439235
	.quad	0x3fb574b6fed54c70              # double 0.083812176909576541
	.quad	0x3fda894710567ff4              # double 0.41462875934121191
	.quad	0x3fd44ed3896b2c82              # double 0.31731117648877938
	.quad	0x3fdf975b6db281aa              # double 0.49361310684801174
	.quad	0x3fddf7253bfb5364              # double 0.46820956094352639
	.quad	0x3feb3a939d8fde2c              # double 0.85090046666932073
	.quad	0x3fdc3dd76280d07e              # double 0.44127449626399329
	.quad	0x3fd689303dd19500              # double 0.35212331807117891
	.quad	0x3fe06f13175bded2              # double 0.51355890810278937
	.quad	0x3fecdacf9172d58d              # double 0.90171030433582333
	.quad	0x3fd03b54b225d38e              # double 0.2536212672924244
	.quad	0x3fc9cefaf1b87794              # double 0.20162903597605164
	.quad	0x3fe43fabecb6e0c2              # double 0.63277240975642024
	.quad	0x3fd521894fc5c73c              # double 0.33017189779558342
	.quad	0x3fe035e655b63d44              # double 0.50657955875968996
	.quad	0x3fe294a2004d3ba6              # double 0.58064365443157295
	.quad	0x3fc39a96420b4eec              # double 0.15315511917889724
	.quad	0x3fe6c56cafedf4e9              # double 0.71159967766984977
	.quad	0x3fb822d60e5e8cc8              # double 0.094281557567728602
	.quad	0x3fec3466a354cbbe              # double 0.88139659786826718
	.quad	0x3fc2bc41fe9a9944              # double 0.14637017185050116
	.quad	0x3fddd1ab5f0ee52a              # double 0.46592220576310928
	.quad	0x3fdd6bcee712a70c              # double 0.45970509114941716
	.quad	0x3fc9a1bcbbad4560              # double 0.20024832881839938
	.quad	0x3fd125b19729db1c              # double 0.26792564165173061
	.quad	0x3fd696b0f582d5b2              # double 0.35294746375742669
	.quad	0x3fd9dad157d68614              # double 0.40398057535102905
	.quad	0x3fed57fc38b34153              # double 0.91699038576374858
	.quad	0x3fe447d82981dd62              # double 0.6337700663270136
	.quad	0x3fe5bd51676de75d              # double 0.67936010552441994
	.quad	0x3f917778fee0d4e0              # double 0.017057314449819283
	.quad	0x3fec4f163fcc79b0              # double 0.88465416393937879
	.quad	0x3fce90fef53f9d10              # double 0.23879992461227362
	.quad	0x3febaad612f54d0b              # double 0.86460403158926746
	.quad	0x3fec72f770951d89              # double 0.88903400410429001
	.quad	0x3fefc583170c8c24              # double 0.99286036016235756
	.quad	0x3fb51455caac5d80              # double 0.082341539364611193
	.quad	0x3fe9cf087ba05c1d              # double 0.80652259965689022
	.quad	0x3fe81c665acd5f3e              # double 0.75346677527247841
	.quad	0x3fe3f6e815cb25eb              # double 0.62388996368934835
	.quad	0x3faac7935b2326b0              # double 0.052303891062888908
	.quad	0x3fd204ffa94267fa              # double 0.28155509499777021
	.quad	0x3fdbc9429ddec6ba              # double 0.43415894906057029
	.quad	0x3fe2636cc1212173              # double 0.57463681908215702
	.quad	0x3fef5809a0edffcd              # double 0.97949677878931995
	.quad	0x3fcb5ae6c02af3bc              # double 0.21371158965294323
	.quad	0x3fe709822fe9fa85              # double 0.71991071088980674
	.quad	0x3fdeebf9b47401bc              # double 0.48315279600503991
	.quad	0x3feb15e08470465d              # double 0.8464205347720043
	.quad	0x3fe317a24fd8c497              # double 0.59663501353328996
	.quad	0x3fac3994ee176aa0              # double 0.055126813949489817
	.quad	0x3feec8a73612ffff              # double 0.96199379502650106
	.quad	0x3fe66a0f60ec47f0              # double 0.70044678621547796
	.quad	0x3fe174c5209b76c7              # double 0.54550415390596008
	.quad	0x3fef8cba0a91b412              # double 0.98592855514800903
	.quad	0x3fd0abf8e5ef2304              # double 0.26049635366921131
	.quad	0x3fd57a89acf69b74              # double 0.33560411349247166
	.quad	0x3fdc5a842bbc4012              # double 0.44302467604666262
	.quad	0x3fe16a3d825deee4              # double 0.54421878301897353
	.quad	0x3fc5422f64995818              # double 0.16608230983791894
	.quad	0x3fe872a039708210              # double 0.76399241655968986
	.quad	0x3fcd259358805ddc              # double 0.2277092153678798
	.quad	0x3fbec200f034d5e0              # double 0.12014776100553304
	.quad	0x3fdf59bcab67d9da              # double 0.48985211123308903
	.quad	0x3fbd2883557237a8              # double 0.11389942966545041
	.quad	0x3fe0b1b7389453b9              # double 0.5216938118998008
	.quad	0x3fe9ef43c9398c92              # double 0.81045712758749944
	.quad	0x3fdd4a801915e6e6              # double 0.45767214250336818
	.quad	0x3fe2fecc5e346795              # double 0.59360330962521124
	.quad	0x3fe2c0610208629d              # double 0.58598375699064642
	.quad	0x3fdc8e9e340554e6              # double 0.4462047107711683
	.quad	0x3fe7cc5a2e18badb              # double 0.74369534495584888
	.quad	0x3fe3d22b460ff985              # double 0.61940540012419432
	.quad	0x3fdeea9efbc9a33a              # double 0.4830701311935176
	.quad	0x3fe44d2e9c5eb67f              # double 0.63442163983354749
	.quad	0x3fea623525bb10ef              # double 0.82448823327334064
	.quad	0x3fe8dc7bb403d111              # double 0.77691445502435574
	.quad	0x3fe765fd2b6e3f61              # double 0.73119982225942348
	.quad	0x3fdf2be392d0adb4              # double 0.48705376946847001
	.quad	0x3fe59ea497270d53              # double 0.67561559221250389
	.quad	0x3fcf2ba4455428b4              # double 0.24351933846657448
	.quad	0x3fe54f124ce22c9d              # double 0.6659022809630134
	.quad	0x3fe6b9c4a9d5f34a              # double 0.7101767842392317
	.quad	0x3fef5a07b0e5f684              # double 0.97973999548385437
	.quad	0x3fefac8c09a5d165              # double 0.98981286892243913
	.quad	0x3fec0e2e3524ac03              # double 0.87673101787129359
	.quad	0x3fe918deb9fb9d8f              # double 0.78428589176921715
	.quad	0x3fc93bc765fe5618              # double 0.19713680725242066
	.quad	0x3fc382ed1b640504              # double 0.15243305051266287
	.quad	0x3fd25d712892f8e6              # double 0.28695324861827343
	.quad	0x3fe57b263b0e8518              # double 0.67128287825122168
	.quad	0x3fc804f43a7a38bc              # double 0.18765118460982488
	.quad	0x3fec527b5e581d02              # double 0.88506859232521173
	.quad	0x3fef468444c2164d              # double 0.97735799245192256
	.quad	0x3fdcb8e9a9729a02              # double 0.44878617808936394
	.quad	0x3fe7f1443a501905              # double 0.74820147885546417
	.quad	0x3fcddfda10199554              # double 0.23339391504411344
	.quad	0x3fc8a67bc8a43774              # double 0.19258067414233049
	.quad	0x3fb491c84ecb64c0              # double 0.080349463688793143
	.quad	0x3fbe7601e6ac5568              # double 0.11898815042180433
	.quad	0x3fd45d2ccb423bd2              # double 0.31818694924816981
	.quad	0x3fe6a62df69bb773              # double 0.70778558889081322
	.quad	0x3fbbba5d3282b200              # double 0.10831243975798799
	.quad	0x3fe26cc01efce489              # double 0.57577520420376616
	.quad	0x3fce0506a63cb698              # double 0.23452838055657277
	.quad	0x3fed090dea9cc9c2              # double 0.90735526869530525
	.quad	0x3fef88d7c1cc34c8              # double 0.98545444346532296
	.quad	0x3fe65ed2e306df4c              # double 0.69907516804867376
	.quad	0x3fd49e25ce2a6a96              # double 0.32215256818168692
	.quad	0x3fe715d449b24432              # double 0.72141470331019364
	.quad	0x3fe6a189003ecf73              # double 0.70721864746017926
	.quad	0x3fe79ead1bc81e7d              # double 0.73811965395084622
	.quad	0x3fa0e3bca826c190              # double 0.032987494970600939
	.quad	0x3fef18e1f0041f43              # double 0.97178742292542386
	.quad	0x3fa58d094dbf63c0              # double 0.042091646900821456
	.quad	0x3fb4bd66867cc780              # double 0.081015022119371948
	.quad	0x3fe3ff993c0f7138              # double 0.62495099764377127
	.quad	0x3f9537de2281a860              # double 0.020720930915935631
	.quad	0x3f8e00a0b5ddb1c0              # double 0.014649634885892548
	.quad	0x3fea5f04f7ec32eb              # double 0.82409904882805785
	.quad	0x3fe1b5a93cdbda42              # double 0.55342542540058326
	.quad	0x3fea866fc21cb7c4              # double 0.82891071236166924
	.quad	0x3feaf22b5e68143b              # double 0.84206169546872134
	.quad	0x3fd1657548e07ae8              # double 0.27181751362688411
	.quad	0x3fe940b529b9db5c              # double 0.78914888524637261
	.quad	0x3fb9fd1681e48aa0              # double 0.10151806517800788
	.quad	0x3fec106933606e8a              # double 0.87700328859814758
	.quad	0x3fded71c91b68ff2              # double 0.48187937001989589
	.quad	0x3fe58c7597e9e7ad              # double 0.67339591665881005
	.quad	0x3fe4d776b155a4c7              # double 0.65130171428349903
	.quad	0x3fe07ba27d2fcf1b              # double 0.51509212923562886
	.quad	0x3fee54847700d5d4              # double 0.94781707041573293
	.quad	0x3fe7baa338e564b4              # double 0.74153290855897191
	.quad	0x3fc77677dde9a3a0              # double 0.18330286346033819
	.quad	0x3fed59e8cebb1516              # double 0.91722526909930724
	.quad	0x3fef38fb0ec5aacd              # double 0.97570565114195917
	.quad	0x3fe9ab14b6256c66              # double 0.80213389945437252
	.quad	0x3fa41a838b2ee5e0              # double 0.03926478456510174
	.quad	0x3feaab1dbb46e260              # double 0.83338820054548179
	.quad	0x3fba841b2a6251c8              # double 0.103578279349967
	.quad	0x3fed832312923a53              # double 0.92225793482959728
	.quad	0x3fe73e41b2184621              # double 0.72634968551773593
	.quad	0x3feaf91c217bfd90              # double 0.84290892162236908
	.quad	0x3fd50ea5374ba528              # double 0.32901888275098878
	.quad	0x3fcf447a93b6cce8              # double 0.24427730763054645
	.quad	0x3fef9e607a5e2cea              # double 0.98808311367011226
	.quad	0x3fb82f6e1c66cd78              # double 0.094473726209619246
	.quad	0x3fe9fbc9104791e3              # double 0.81198552302936056
	.quad	0x3fdaea087a85e7be              # double 0.42053424801963135
	.quad	0x3fd9b32dc1a06176              # double 0.40156120213352808
	.quad	0x3fdb75f70c2f5e84              # double 0.42907501401848713
	.quad	0x3fd665cfce13aa3e              # double 0.34996409535111528
	.quad	0x3fea3314b26d7abd              # double 0.81873545502806844
	.quad	0x3fe473a65f0f98a3              # double 0.63911741797052846
	.quad	0x3fc8da917e418f38              # double 0.19417017617080901
	.quad	0x3feb8a202b16fe14              # double 0.86061104217509631
	.quad	0x3fd3f78cf7181bee              # double 0.31198429231920854
	.quad	0x3fd894e1ccbb816e              # double 0.38408703797724442
	.quad	0x3fde417f081aa578              # double 0.4727475718633154
	.quad	0x3fd94320663efd96              # double 0.39472208008734222
	.quad	0x3fe54999ac05c91c              # double 0.66523440931476641
	.quad	0x3fe01e08047ea58d              # double 0.50366593244432212
	.quad	0x3fe5f2fbea585a11              # double 0.68591113825351802
	.quad	0x3fef36c3870236a2              # double 0.97543503159404943
	.quad	0x3fe4d3ea179fcce4              # double 0.65086845983605857
	.quad	0x3fd72869ea858908              # double 0.36184165861608664
	.quad	0x3fc4e23e2ab871e8              # double 0.16315438352547962
	.quad	0x3fd9d69dbe63af20              # double 0.4037241324683567
	.quad	0x3fc398c2065a36e4              # double 0.15309930143523964
	.quad	0x3fe0350a67177510              # double 0.50647468695720654
	.quad	0x3fe19cb81ba5a681              # double 0.55038075828379374
	.quad	0x3fc31d6f0e5eb3e0              # double 0.14933574868828625
	.quad	0x3fe37ad0f8406b0e              # double 0.60874222265860722
	.quad	0x3fe29fbb687472a9              # double 0.58199854279844943
	.quad	0x3fed875c79eda906              # double 0.92277358831532363
	.quad	0x3fa24e71e5584a50              # double 0.03575473713512578
	.quad	0x3fd1f85c823f5c34              # double 0.28078377456171499
	.quad	0x3fcd1cb4a0a31dc8              # double 0.22743852466213199
	.quad	0x3fef507b8bc7f5ac              # double 0.9785745363330327
	.quad	0x3fd7ef219e3c8eca              # double 0.37397041752613502
	.quad	0x3f99284cddf0cae0              # double 0.024567795797518666
	.quad	0x3fdddbf915a07e62              # double 0.46655108558659297
	.quad	0x3fe752d507bdeda1              # double 0.72886134636012312
	.quad	0x3fe48d1fe7f2a88d              # double 0.64222712805100601
	.quad	0x3fde9179a9c0610a              # double 0.47762910439770734
	.quad	0x3fcb99d6c9da6b78              # double 0.21563229423631092
	.quad	0x3fdb276d0e0d42b8              # double 0.42428137180562997
	.quad	0x3fe80028ec2aa3d7              # double 0.75001951338083017
	.quad	0x3fd9310cd3b6ef04              # double 0.39361878085377122
	.quad	0x3fdfaca8766776a6              # double 0.49491321146875078
	.quad	0x3fe110a1c36a9ec0              # double 0.53328025977403826
	.quad	0x3fd228ec3c3cbd86              # double 0.28374772913499446
	.quad	0x3feedd9f867bfbd7              # double 0.96455360666720479
	.quad	0x3fe4b7110368c8cf              # double 0.64734697976953182
	.quad	0x3fdbba407ecd066e              # double 0.43324291594408393
	.quad	0x3fee7bfa3f61c3a9              # double 0.95263397578502407
	.quad	0x3fe67c4f71aa2276              # double 0.70267460060229214
	.quad	0x3fd466ca99152f30              # double 0.31877388905990056
	.quad	0x3fef00f2ee339d55              # double 0.96886583827737615
	.quad	0x3fca9dfb40c8546c              # double 0.20794621146402237
	.quad	0x3fee9848783af8b0              # double 0.9560892437218822
	.quad	0x3fea981d984e9d8d              # double 0.83106879947165313
	.quad	0x3fe103d42896e8f5              # double 0.53171737601885971
	.quad	0x3feda2f640c90e43              # double 0.92614281323808034
	.quad	0x3fcf8dee062c40b8              # double 0.2465188532010012
	.quad	0x3fd72699a42b57b0              # double 0.36173096687468398
	.quad	0x3fe1874a87d75cf9              # double 0.54776503116127551
	.quad	0x3fd23a1ed7007a36              # double 0.28479739185596331
	.quad	0x3fd71cb04a630192              # double 0.36112601532297461
	.quad	0x3fde96f4fb997440              # double 0.47796368189102978
	.quad	0x3feceb31ac4adee9              # double 0.90371020937797397
	.quad	0x3fd98791c9155aa8              # double 0.39889950406124308
	.quad	0x3feddb4c468f0e7f              # double 0.93301976948755783
	.quad	0x3fc4a5548911ffb0              # double 0.16129547779928322
	.quad	0x3fe610bcca20e120              # double 0.68954314687929141
	.quad	0x3fe455b29fefe2ff              # double 0.63546115148264437
	.quad	0x3fed8b8f93155ca5              # double 0.92328623511538821
	.quad	0x3fcec8c0067a0074              # double 0.2405014068244814
	.quad	0x3fad106d0494c920              # double 0.056765944298961424
	.quad	0x3fe2ade7ecb60de4              # double 0.58372875435491922
	.quad	0x3fed59a8f9f93226              # double 0.91719483206685903
	.quad	0x3fd6ea0937e9f454              # double 0.35803442440357469
	.quad	0x3fe08de471e4d2c8              # double 0.51732084507838128
	.quad	0x3fe553c04ca2a80c              # double 0.66647353141638765
	.quad	0x3fee7996aa04c9d3              # double 0.95234235007074586
	.quad	0x3fd3d6faf8daa09c              # double 0.30999635984563567
	.quad	0x3fa9ca739db331f0              # double 0.050372708321081094
	.quad	0x3fd8d387af8eda5e              # double 0.38791076797807544
	.quad	0x3fd850dbe5d85b6e              # double 0.37993524022879555
	.quad	0x3fbfc4fce565cb20              # double 0.12409954643753141
	.quad	0x3f963d4304ff4640              # double 0.021718070201876438
	.quad	0x3fc2b1f267388fcc              # double 0.14605550804219403
	.quad	0x3febb2bb7b950a0a              # double 0.86556791436334035
	.quad	0x3fcd32de44e31548              # double 0.22811487544655962
	.quad	0x3fc8ea16b3e845a8              # double 0.19464381966149102
	.quad	0x3fd8cf2764d88f32              # double 0.38764366958843077
	.quad	0x3fd9473e8a8a476e              # double 0.39497340707122575
	.quad	0x3fd079faffa7d990              # double 0.25744509664891613
	.quad	0x3fb64cba4148bdb0              # double 0.087108269632827584
	.quad	0x3fed1af3000d36c7              # double 0.90953969965058767
	.quad	0x3fe5f424258175a0              # double 0.68605239224750747
	.quad	0x3fe711f3f44bd533              # double 0.72094152177911608
	.quad	0x3fccdde485572888              # double 0.22552162657513386
	.quad	0x3fd22e02bab938a8              # double 0.28405826792448829
	.quad	0x3fe1d56e7f26c067              # double 0.55730366548779109
	.quad	0x3fdd9d5a336d146e              # double 0.46272902509765046
	.quad	0x3fef850bbe5ed5c2              # double 0.98499095136383397
	.quad	0x3fb0312d52370880              # double 0.063250382015242579
	.quad	0x3fd8a1fc1e46413e              # double 0.3848867698334465
	.quad	0x3fdb41997b338a08              # double 0.42587887793902768
	.quad	0x3fee530ba29a1be8              # double 0.94763738401604502
	.quad	0x3fe7e4e3243d61dc              # double 0.74669034078675223
	.quad	0x3fec4b802c0aa102              # double 0.88421639062747226
	.quad	0x3f9da210ddafb5a0              # double 0.028938544779455122
	.quad	0x3fe643bce899082c              # double 0.69576878957037058
	.quad	0x3fd0506b34bd19f8              # double 0.25490837240468478
	.quad	0x3fe816255f719f6f              # double 0.75270336762785728
	.quad	0x3fc3f2f4be1a324c              # double 0.15585192949619608
	.quad	0x3fe9a04eba282c1b              # double 0.80081879004262946
	.quad	0x3fe510071a2b4086              # double 0.65820651160358135
	.quad	0x3f81410ee68d3f00              # double 0.0084248699291999962
	.quad	0x3fe801518d672e46              # double 0.7501609575060193
	.quad	0x3fe00d9ac216a267              # double 0.50166070850270905
	.quad	0x3fe95985d9f5ea43              # double 0.79217808313780613
	.quad	0x3fec27fbd7c138d1              # double 0.87988083018879071
	.quad	0x3fc6c11d3315f56c              # double 0.17776837343619023
	.quad	0x3fd8786e97f605d8              # double 0.38235058631843577
	.quad	0x3fdfbfc764938c36              # double 0.49608025381002407
	.quad	0x3fdc63dc7693188c              # double 0.44359504298734787
	.quad	0x3fd85ce548d90386              # double 0.3806699000743311
	.quad	0x3fed866a76461ceb              # double 0.92265818691603607
	.quad	0x3fe281a6580f23a0              # double 0.57832638930368674
	.quad	0x3fea4ed08d4d2add              # double 0.82212092969833928
	.quad	0x3fec0b8117d45a9c              # double 0.87640432981682492
	.quad	0x3fd36696e3fd309e              # double 0.3031365610556892
	.quad	0x3fceef81bdfe56a0              # double 0.24168416764284917
	.quad	0x3fd7f726525eae32              # double 0.37445982021265245
	.quad	0x3fe4c47a3c2e0dcd              # double 0.64898406747709603
	.quad	0x3fe2819f0a3343a9              # double 0.57832290642010264
	.quad	0x3fced823243713f0              # double 0.2409709860641267
	.quad	0x3fc66de8dc1b036c              # double 0.17522917506542102
	.quad	0x3fe0fd05f610897e              # double 0.53088663157932081
	.quad	0x3fd2e8058a263f7e              # double 0.29541147700455628
	.quad	0x3fd7803bb335b768              # double 0.36720173359832708
	.quad	0x3fd421f3f49f7486              # double 0.31457232369377441
	.quad	0x3fe74e64ed179e61              # double 0.7283196097095691
	.quad	0x3fe86fcb53560c5b              # double 0.76364675785624614
	.quad	0x3fe73c59902adcbb              # double 0.72611692578984532
	.quad	0x3fe46529a199da02              # double 0.63734895289127302
	.quad	0x3fbe90ddc820bea8              # double 0.11939798484740527
	.quad	0x3fe89873f373f8d3              # double 0.76860997723977176
	.quad	0x3fc5c9a9b578aec0              # double 0.17021676407727249
	.quad	0x3fdca36282747e92              # double 0.44747221698524087
	.quad	0x3f7621e8fafbc480              # double 0.0054034329220807864
	.quad	0x3fe9d0378aad7f1e              # double 0.80666710935108532
	.quad	0x3fd02c496bbbe21a              # double 0.25270305176630503
	.quad	0x3fd2a1aed434b66e              # double 0.29111834262116687
	.quad	0x3fcc5b3326723884              # double 0.22153319718603737
	.quad	0x3fe26838bbcc2997              # double 0.57522236518097969
	.quad	0x3fbf66eea45062b0              # double 0.12266437064716729
	.quad	0x3fe9ce0015b53721              # double 0.80639652480906332
	.quad	0x3fe017697b477a55              # double 0.50285791471453456
	.quad	0x3fde7a6f368c6a1e              # double 0.47622280432702435
	.quad	0x3feb8d51430c2dec              # double 0.86100066275815612
	.quad	0x3fe4eb03dd4124ee              # double 0.65368836606753944
	.quad	0x3fc82550d34d6ab8              # double 0.18863878552914115
	.quad	0x3fd45601ad6bee34              # double 0.31774942336753331
	.quad	0x3fe0493ffbdfc5fa              # double 0.50894164270556463
	.quad	0x3f55c7b92a656e00              # double 0.0013293560274040273
	.quad	0x3fde53edeb9c9f94              # double 0.47387264260259454
	.quad	0x3fe7d7301b82e55b              # double 0.74501805661490594
	.quad	0x3fe08a80eb899d42              # double 0.5169071770041358
	.quad	0x3fbfba8ecb212fd0              # double 0.12394039591998696
	.quad	0x3fe803116c0e77af              # double 0.75037451844013059
	.quad	0x3fed65f33a87bd87              # double 0.91869508201300298
	.quad	0x3fe895a851064a5c              # double 0.76826873612510437
	.quad	0x3f8a6c6cccbfefc0              # double 0.012902116774050287
	.quad	0x3fc53013d884ac90              # double 0.16552970955067225
	.quad	0x3fd27d22609bf796              # double 0.28888759073731174
	.quad	0x3fe1b493dd808b7c              # double 0.5532931638921208
	.quad	0x3fed83139a683c04              # double 0.92225055844926417
	.quad	0x3fe3419f7e90b59d              # double 0.60176062316684276
	.quad	0x3fc64403b1ff657c              # double 0.17395063582697989
	.quad	0x3fc4645e11eaf68c              # double 0.159312971829355
	.quad	0x3fca08ef4b9139c4              # double 0.2033976668339631
	.quad	0x3fcc7cadb74a9d98              # double 0.22255488824633285
	.quad	0x3fdd1131f440e2be              # double 0.45417450764538703
	.quad	0x3fe8382606ef775a              # double 0.75685407023022866
	.quad	0x3feb2ee648324748              # double 0.84947504139766128
	.quad	0x3fe80643f924cf25              # double 0.75076483403106364
	.quad	0x3fe25b1d81745249              # double 0.57362246784266191
	.quad	0x3fde1c291ce3faf4              # double 0.4704687864431627
	.quad	0x3fe51ebfbc99758b              # double 0.66000353656606714
	.quad	0x3fe211b508fcf432              # double 0.56466151957977773
	.quad	0x3fe29a4c77019c91              # double 0.58133528941552204
	.quad	0x3fe05cab0a904bb0              # double 0.51131202758039329
	.quad	0x3fd0008a029c8eb6              # double 0.2500329041961139
	.quad	0x3fea3c739fa913a0              # double 0.81987935241396669
	.quad	0x3fdc8a4de3f14432              # double 0.44594142208103726
	.quad	0x3fdc00dcfe07bfd8              # double 0.43755268867152841
	.quad	0x3fb31e5f6421cd68              # double 0.074682199426936102
	.quad	0x3fd77b42043adfac              # double 0.36689806378444234
	.quad	0x3fe896521cbc6477              # double 0.76834970104677225
	.quad	0x3feb838b38a6057b              # double 0.85980759681858332
	.quad	0x3fe43039aa9057cb              # double 0.63088687241792607
	.quad	0x3fea3bc5eaecd2ad              # double 0.8197965229397447
	.quad	0x3fd9fc69ec8581e0              # double 0.40603111360363009
	.quad	0x3fd92410bfeb39ba              # double 0.39282625906062274
	.quad	0x3fd35324d61225c8              # double 0.30194970040664915
	.quad	0x3fe1388016d87e1c              # double 0.53814701520963437
	.quad	0x3fb1c18c27bc2258              # double 0.069359550190833175
	.quad	0x3fe1f2f5f6da967f              # double 0.56090830052990259
	.quad	0x3fcdc080b4151690              # double 0.23243721764645331
	.quad	0x3fdcd1aa8296a952              # double 0.45029700043473497
	.quad	0x3fe094ec321dc347              # double 0.51817903316814629
	.quad	0x3fe575ea2008f18e              # double 0.67064386612723736
	.quad	0x3fc88b1757f1d1a8              # double 0.19174472612543281
	.quad	0x3fa2c02e8971c780              # double 0.036622480657469758
	.quad	0x3fc0e7e67ee876f8              # double 0.13207703777964475
	.quad	0x3fea04aaa766db30              # double 0.81306965537701181
	.quad	0x3fedea6943759e50              # double 0.93486464667962288
	.quad	0x3fd96db255982966              # double 0.39732035025431001
	.quad	0x3fd53fbaa803a6a2              # double 0.33201471717493736
	.quad	0x3fe5f4b4a05064f9              # double 0.68612128554664686
	.quad	0x3fde978b260873de              # double 0.47799948419725335
	.quad	0x3fe9e29067e47686              # double 0.8089067486905186
	.quad	0x3fefb6943b6a081f              # double 0.99103747944196018
	.quad	0x3fbbd330509a6e40              # double 0.10869123428204208
	.quad	0x3fdd5dc1f3b095dc              # double 0.45884751127081613
	.quad	0x3fd8b4a627240926              # double 0.38602594206180851
	.quad	0x3fd605081977becc              # double 0.34405710684857804
	.quad	0x3fd0289b2e2c4d36              # double 0.25247840413176748
	.quad	0x3fe06e61b2b59e94              # double 0.51347432045163766
	.quad	0x3fe2c2eb99d66139              # double 0.58629398390170373
	.quad	0x3fa7d27d7d6857e0              # double 0.046527787741226012
	.quad	0x3fde8bcc059afb6e              # double 0.47728252932932136
	.quad	0x3fe4ed035a6d4379              # double 0.65393226300703511
	.quad	0x3fb789b8550c3378              # double 0.091945191157902673
	.quad	0x3feaad86fa2d2a02              # double 0.83368252623159855
	.quad	0x3fd13ff343908862              # double 0.26952821348289124
	.quad	0x3fd47ca1f986384e              # double 0.32010697715384573
	.quad	0x3fb4f249c47036c8              # double 0.081822023829057788
	.quad	0x3fdfc8ea6082b8da              # double 0.49663791108004107
	.quad	0x3fa22125b3566140              # double 0.035409143583083225
	.quad	0x3fe4928e795031d3              # double 0.6428902024650206
	.quad	0x3f88a583c9183400              # double 0.012034444403093758
	.quad	0x3fe354cc0e382145              # double 0.60410120751570473
	.quad	0x3fc77126d9f9b698              # double 0.18314061778385304
	.quad	0x3fe1aa5927e15996              # double 0.55204446591487755
	.quad	0x3fe844e9e134b821              # double 0.75841230378660296
	.quad	0x3fed9e677448fcff              # double 0.92558644020019176
	.quad	0x3fe9612437558379              # double 0.7931080895178716
	.quad	0x3fe1cbaa3aa7288f              # double 0.55611144500405085
	.quad	0x3fefb45f0a93cbec              # double 0.99076797548184236
	.quad	0x3f9550c3ba8d4560              # double 0.020815904866429036
	.quad	0x3fea66261bbb2a81              # double 0.82496934334024286
	.quad	0x3fea8691749f33a2              # double 0.82892678048812152
	.quad	0x3fe560b569ceb8b1              # double 0.66805525460747195
	.quad	0x3fdb50c173ddcf3e              # double 0.42680393519480109
	.quad	0x3fd537f9f62938d8              # double 0.33154152907526457
	.quad	0x3fd186a96818e1ae              # double 0.27384410062543452
	.quad	0x3fbd56b398d15288              # double 0.11460421067142523
	.quad	0x3fe83b61fdb5af7a              # double 0.75724887421300413
	.quad	0x3febae20ce95c999              # double 0.86500587795881068
	.quad	0x3fea5d471ef1f295              # double 0.82388645214048728
	.quad	0x3fe3af93acaa62d6              # double 0.61518272136444341
	.quad	0x3fe462233382eff6              # double 0.63697967587313431
	.quad	0x3fe41cffc312215c              # double 0.62853992557306126
	.quad	0x3febb1c6b5563ff5              # double 0.86545119683614635
	.quad	0x3fc9bf38c8562e24              # double 0.20114812643110824
	.quad	0x3fea43a02fb055a0              # double 0.82075509371013666
	.quad	0x3fec857b5fc1001f              # double 0.89129418088851142
	.quad	0x3fef0cc258cd12b2              # double 0.9703075155635672
	.quad	0x3fdb47df05425a02              # double 0.42626166833488821
	.quad	0x3fd39a97c540bc74              # double 0.30631059897400026
	.quad	0x3f6e76d95b8d4c00              # double 0.0037187810197933935
	.quad	0x3fe07512e5e31027              # double 0.51429123782918829
	.quad	0x3fe23a597abb18e5              # double 0.5696227452360999
	.quad	0x3fdffc66c1e98a3a              # double 0.49978035866493864
	.quad	0x3fe30efa368fcb9f              # double 0.59557829529363804
	.quad	0x3fe10fbc40ac9d6b              # double 0.53317082053847054
	.quad	0x3fe943c8eaa72558              # double 0.78952451544425184
	.quad	0x3fe53fbe328a6eba              # double 0.66403112288704524
	.quad	0x3fe70a290edaf9e7              # double 0.71999028111877983
	.quad	0x3fe95c8167ad2067              # double 0.79254217385552017
	.quad	0x3fd95c255da7799a              # double 0.39624914308469672
	.quad	0x3fe7fc2a487bd6d1              # double 0.74953188092214351
	.quad	0x3fe33b7d0149a0c6              # double 0.6010117554806349
	.quad	0x3fdedc98754e2338              # double 0.4822140832480275
	.quad	0x3fe89c6bcd3666a1              # double 0.76909437256400193
	.quad	0x3fe53a99b6332a4d              # double 0.66340337358389834
	.quad	0x3feed4130410203e              # double 0.96338797372391816
	.quad	0x3fd09b0664abd2c4              # double 0.25946197348757161
	.quad	0x3fe265dd7cee4dfd              # double 0.57493471527635587
	.quad	0x3fb61b8a5cff6270              # double 0.086357734398356589
	.quad	0x3fd05989f04aba32              # double 0.25546501604086125
	.quad	0x3f9e63092be27180              # double 0.029674666694164298
	.quad	0x3fe550d1fe50abda              # double 0.66611575766489328
	.quad	0x3fce2ac35d860504              # double 0.23568002764299234
	.quad	0x3fec28f122f5babd              # double 0.87999779537297906
	.quad	0x3fe6554773459f4f              # double 0.69791004671149348
	.quad	0x3fd6845702d878f8              # double 0.35182738569154948
	.quad	0x3fc6c28aca0fc9c0              # double 0.1778119551305064
	.quad	0x3fe4dffc97e706d0              # double 0.65234212559172455
	.quad	0x3fd2d9a2af1b1eaa              # double 0.2945334157961762
	.quad	0x3fd0a201f249035c              # double 0.25988815937676235
	.quad	0x3fd1fbcd43263a38              # double 0.28099376256514885
	.quad	0x3fe20ce5a9fda8b8              # double 0.56407435609187129
	.quad	0x3fd8983251d5fc1a              # double 0.38428934089455569
	.quad	0x3fecfb23d210ee00              # double 0.90565672901669813
	.quad	0x3fefcef279a37b67              # double 0.9940121055368366
	.quad	0x3fb712bfb89047d0              # double 0.090129835662337898
	.quad	0x3fe39e9222382894              # double 0.61310679133863966
	.quad	0x3fe61d895a7dc77c              # double 0.69110553430640165
	.quad	0x3fe18acd9bdafb1b              # double 0.54819374504572538
	.quad	0x3fdd1049be97ee48              # double 0.45411914456028457
	.quad	0x3fe80931589a3b83              # double 0.75112216286821398
	.quad	0x3fcb2cade489a974              # double 0.21230100306577138
	.quad	0x3fec0251cf43ad28              # double 0.8752831504947709
	.quad	0x3fc55a5cdc6fd028              # double 0.16682015193475874
	.quad	0x3fc31ae0d9cb1264              # double 0.14925776132999424
	.quad	0x3fd44314189a38bc              # double 0.3165941467531288
	.quad	0x3fd2bdf9dfc8b04a              # double 0.29284521917248141
	.quad	0x3fd36aa3c5ec1214              # double 0.30338377312026066
	.quad	0x3fe259a790931770              # double 0.57344415890905331
	.quad	0x3fe89a91eb0eade2              # double 0.76886840734135498
	.quad	0x3fee2241bcced783              # double 0.94168173672254374
	.quad	0x3feefc7813ef6118              # double 0.96831897634095565
	.quad	0x3fd01842abda6710              # double 0.25148073942692495
	.quad	0x3fe4c017558c988c              # double 0.64844862660244607
	.quad	0x3febd6070b93e555              # double 0.86987640630028784
	.quad	0x3fa6bc81e13a3bd0              # double 0.044406946891392018
	.quad	0x3f96dc3e6e8ea340              # double 0.022324538705706276
	.quad	0x3fd706d7bb8844fc              # double 0.35979264558507373
	.quad	0x3fbb2754946d61b8              # double 0.10606888412201598
	.quad	0x3fefbae4e1f0fce1              # double 0.99156421784564596
	.quad	0x3fccbab165abc41c              # double 0.22444741691973114
	.quad	0x3fea483aab75cb8a              # double 0.82131703842456827
	.quad	0x3fd4c375796709a6              # double 0.32442986350738534
	.quad	0x3fe8b99a9f4cd872              # double 0.77265673745456653
	.quad	0x3fe2f9fc62a979d0              # double 0.59301585454869077
	.quad	0x3fe73fc9c4f21db1              # double 0.7265366407963737
	.quad	0x3fed8074a74c6e6f              # double 0.92193062472820297
	.quad	0x3fe535989d4a37aa              # double 0.66279249878583824
	.quad	0x3f8357c9f16457c0              # double 0.0094447876731854618
	.quad	0x3fd98c6f33dd035a              # double 0.39919643463877252
	.quad	0x3fce847f08e7fee0              # double 0.2384184640395608
	.quad	0x3fe21c013364f71f              # double 0.56591854131668018
	.quad	0x3fdbaa3384103744              # double 0.43226325890360706
	.quad	0x3febb468b47bd360              # double 0.86577258349153041
	.quad	0x3fe1fd61a4de4135              # double 0.56218034935776606
	.quad	0x3fefec157dacdb32              # double 0.99756884141866053
	.quad	0x3fe2ea7c71e05228              # double 0.59112379304366858
	.quad	0x3fd9985510c986be              # double 0.39992262496353337
	.quad	0x3fdd74b6562571f0              # double 0.46024855053636227
	.quad	0x3fedb828d031f913              # double 0.9287303987801202
	.quad	0x3fd5f027176d34f6              # double 0.34278275764229649
	.quad	0x3fd9a003ffef4e9a              # double 0.40039157861358776
	.quad	0x3fef61d806a32a36              # double 0.98069382950172357
	.quad	0x3f9bef653de3aa00              # double 0.027280408766197084
	.quad	0x3fe433c295af1b38              # double 0.63131837115438483
	.quad	0x3fa8ca8f2ef262d0              # double 0.04842040489274313
	.quad	0x3fe0b9168c30c124              # double 0.52259375935503671
	.quad	0x3fc502c8c9c0ed64              # double 0.16414747096301163
	.quad	0x3fea5daa7614df28              # double 0.82393382132338377
	.quad	0x3fb3f1b553b50720              # double 0.077906926094354123
	.quad	0x3fd5a6fc3cabc50e              # double 0.33831697392368276
	.quad	0x3fefc6edc7d1b57f              # double 0.9930333044737124
	.quad	0x3fecef7418ddbede              # double 0.90423016411474655
	.quad	0x3fe1aa12eb2a1087              # double 0.55201097422151768
	.quad	0x3fe35e1620ae73ca              # double 0.60523516066643279
	.quad	0x3fe40242d6e94f9a              # double 0.62527601218106388
	.quad	0x3f91662b7e950600              # double 0.016991309739074367
	.quad	0x3fecc93cad51d904              # double 0.89956506587512352
	.quad	0x3fd6014d661b7986              # double 0.34382948848169581
	.quad	0x3fef71d602db1aae              # double 0.98264599378383877
	.quad	0x3fdb472c910035cc              # double 0.42621912155376829
	.quad	0x3feeddb32b4286fd              # double 0.96456297349160957
	.quad	0x3fa58b33792607e0              # double 0.042077644861833852
	.quad	0x3fd9edf66a464b0c              # double 0.40514908197762689
	.quad	0x3fe9caad4ec1e516              # double 0.80599084265046161
	.quad	0x3fd6c677bccf8132              # double 0.3558635085919547
	.quad	0x3feed918dde45247              # double 0.96400111521013165
	.quad	0x3faa3ffd1b426ce0              # double 0.051269445016453252
	.quad	0x3fef18e5fde2e0a0              # double 0.97178935610920191
	.quad	0x3f94a2a31fa3ffe0              # double 0.020151661688032507
	.quad	0x3fe5abf269e9fe4e              # double 0.67723961531005172
	.quad	0x3fd7426a77b73616              # double 0.36342870417578987
	.quad	0x3fe36f617d3b3bbc              # double 0.60734629115346861
	.quad	0x3fe9d1556f48b885              # double 0.80680343375367214
	.quad	0x3fdb5f6f3a5d5be6              # double 0.42769985866237759
	.quad	0x3feaea0e70b635a4              # double 0.8410713387872204
	.quad	0x3fdbe97222110830              # double 0.43612340285119711
	.quad	0x3fed3c3e7fc8d6a1              # double 0.91360402067103419
	.quad	0x3fedc83e2b3abd9a              # double 0.93069370692494435
	.quad	0x3fd9b23f6d9aa7f0              # double 0.4015043802597793
	.quad	0x3fd9efec395c4b68              # double 0.40526872254957036
	.quad	0x3fe80883c73bc22e              # double 0.75103939926890972
	.quad	0x3fe4daf1c1df017e              # double 0.65172660699322171
	.quad	0x3fe924817c0cbd0c              # double 0.78570627430409123
	.quad	0x3fac4d4af0700c80              # double 0.055277196741394086
	.quad	0x3fdbc0d2f91e3336              # double 0.43364404991079952
	.quad	0x3fd8fc00c54c27b8              # double 0.39038104312259803
	.quad	0x3fc61664dc8150a8              # double 0.17255841032841102
	.quad	0x3fec64ce12de9dd0              # double 0.88730529485195042
	.quad	0x3fda2083c106d3aa              # double 0.40823453760395501
	.quad	0x3fe05d59ef2743bd              # double 0.51139542302745833
	.quad	0x3fe950abe5ad8d20              # double 0.79109759196254358
	.quad	0x3fe66026d3710ee6              # double 0.69923726365274486
	.quad	0x3fcfb13a7eaf9f30              # double 0.24759608445969539
	.quad	0x3fe71aaccbee6a5d              # double 0.72200622396787717
	.quad	0x3fda3c1f7bbdf100              # double 0.40991961559463164
	.quad	0x3fec8859630a1471              # double 0.89164418548229041
	.quad	0x3f609882ac35db00              # double 0.0020258476449116491
	.quad	0x3fed7bc77a9cf97a              # double 0.92135976741683057
	.quad	0x3fed4eb55dd532fe              # double 0.9158579666778619
	.quad	0x3f9264f7e3a3e300              # double 0.017963288563779933
	.quad	0x3febbb9f532e15d8              # double 0.86665312048051657
	.quad	0x3fb4e81ba5b0df98              # double 0.081666686965830571
	.quad	0x3fb5a85826ccddb0              # double 0.084599980805129204
	.quad	0x3fed9363ffa12880              # double 0.92424201896325542
	.quad	0x3fe4d548983a7d6f              # double 0.65103559238552389
	.quad	0x3fe904b3f94d9112              # double 0.7818240994643324
	.quad	0x3fe2d6f1d94bf421              # double 0.58873836937675972
	.quad	0x3f88e8f0b9b7afc0              # double 0.012163048427247136
	.quad	0x3fe5b81c7744ff88              # double 0.6787245110972302
	.quad	0x3fc38a6d82188440              # double 0.15266198017437382
	.quad	0x3fe142cd64cdd7ff              # double 0.53940458000465685
	.quad	0x3fdca63d3419c9da              # double 0.44764642799341703
	.quad	0x3fe12b11a090f655              # double 0.5365074287471524
	.quad	0x3fc3a733846f3a64              # double 0.15354007689025473
	.quad	0x3fe7b5d8eaf724b0              # double 0.74094816104584105
	.quad	0x3fe969e6e83d3f48              # double 0.79417748793819332
	.quad	0x3f7c58d1d2cf5b00              # double 0.0069206424932051203
	.quad	0x3f73278da95f2500              # double 0.0046763929039539409
	.quad	0x3fe9e6a556f3d4d3              # double 0.80940501196769288
	.quad	0x3fe4ce1f603580da              # double 0.65016144553012656
	.quad	0x3faea26f50e08120              # double 0.059833029387166059
	.quad	0x3fc09da58d2f9d30              # double 0.12981099504325178
	.quad	0x3fbca7aa1ca7fad0              # double 0.11193335723508402
	.quad	0x3fd627fc73ed8be8              # double 0.34619056054196884
	.quad	0x3fb4d7bbc86bac60              # double 0.081416832381067561
	.quad	0x3fd90e51af4d2c1e              # double 0.3914989673546091
	.quad	0x3fe982d20dd479df              # double 0.7972193021885764
	.quad	0x3fc1c6aa6498a908              # double 0.13887529289178979
	.quad	0x3fd247d770b09f34              # double 0.28563486103893188
	.quad	0x3fd81612eb778102              # double 0.37634728426748165
	.quad	0x3febe0f7e6281329              # double 0.87121195747804336
	.quad	0x3fe5a96693ecb389              # double 0.67692879573370235
	.quad	0x3fc7c4145729a9f4              # double 0.18567137008660917
	.quad	0x3fd38a2133cef5b6              # double 0.30530576762597705
	.quad	0x3fbee510c29e6500              # double 0.12068276168283276
	.quad	0x3fe30a234f97c0ed              # double 0.59498754067865678
	.quad	0x3feb10a1245bf083              # double 0.84577996350664397
	.quad	0x3fb8aebe9b22f568              # double 0.096416390299926769
	.quad	0x3fef785a715813ab              # double 0.98344156396398341
	.quad	0x3fd057334cc19880              # double 0.25532228942609692
	.quad	0x3fd1755ab1027ea4              # double 0.27278773580654048
	.quad	0x3feb58cfa15f1c33              # double 0.85459119336963452
	.quad	0x3fe72c3eb3378494              # double 0.72415099147123607
	.quad	0x3feecc0012033d75              # double 0.96240237730118727
	.quad	0x3fdf83692e0831fa              # double 0.49239568229020814
	.quad	0x3fe8309186bf0257              # double 0.75592876737216386
	.quad	0x3fe5e681b26c8cfc              # double 0.68438801620905521
	.quad	0x3fe8b1871dd0ca5e              # double 0.77167087386471755
	.quad	0x3fe7d6c86ec71e85              # double 0.74496862064639002
	.quad	0x3fe188a2a2e466e4              # double 0.54792911352998575
	.quad	0x3feebfb94d7e043c              # double 0.96090378890233507
	.quad	0x3fc540dfb2650788              # double 0.16604229174305041
	.quad	0x3fe1e4dca13f0fee              # double 0.55918723576951179
	.quad	0x3fe41cb9ba333071              # double 0.62850653044871596
	.quad	0x3fd30c867ce76acc              # double 0.29763948629048964
	.quad	0x3fe051dfcd910426              # double 0.50999441289616665
	.quad	0x3feae356fd44cf41              # double 0.84025144068298385
	.quad	0x3fe5a7018795f659              # double 0.67663647157287266
	.quad	0x3fa4c30f853fc4b0              # double 0.040550694480665839
	.quad	0x3fe126577d81b1a4              # double 0.53593039048205471
	.quad	0x3feea6697ac1e5e9              # double 0.95781396843011379
	.quad	0x3fd9b7d436290656              # double 0.40184502877318573
	.quad	0x3feefb606d9f426c              # double 0.96818562899177385
	.quad	0x3fee0126ec7b40a8              # double 0.93764063060554736
	.quad	0x3fec712d087c60d0              # double 0.88881541879075066
	.quad	0x3fcdc9656a4ed4b4              # double 0.2327086228448586
	.quad	0x3fd379936b84f532              # double 0.30429540157259105
	.quad	0x3fdf6d27df1b6118              # double 0.49103733814037431
	.quad	0x3fd17fd300c110c6              # double 0.2734267718663087
	.quad	0x3fc2d6931ea2717c              # double 0.14717329974963522
	.quad	0x3fbf5b44fc109100              # double 0.12248641160892149
	.quad	0x3fda6ef14e958706              # double 0.41302139925220194
	.quad	0x3fbf15b0eb0ccb50              # double 0.12142472971463047
	.quad	0x3fbed618ce9c6e70              # double 0.12045435947623573
	.quad	0x3fb305a906c14c90              # double 0.074305118703067885
	.quad	0x3fe227db0bad5067              # double 0.56736519127526897
	.quad	0x3fe87b3a01ba0610              # double 0.76504230820882135
	.quad	0x3fde90ddb08a4590              # double 0.4775919174217842
	.quad	0x3fec2d1e45c15eef              # double 0.88050759910671939
	.quad	0x3fd4eeafddd3386c              # double 0.32706829702954709
	.quad	0x3fe570f3129cc6c6              # double 0.67003778109775491
	.quad	0x3fe4019095e2401d              # double 0.62519101404359712
	.quad	0x3fd7453f9081a8fe              # double 0.36360158073388493
	.quad	0x3fd201cfef8948a0              # double 0.28136061088765452
	.quad	0x3fd9e45bfbce1d5e              # double 0.40456294622750544
	.quad	0x3fd0d87af0e8b97c              # double 0.26321290518071527
	.quad	0x3fe38586691838b3              # double 0.61004944349567436
	.quad	0x3fcc4b465d2258d8              # double 0.22104720637862019
	.quad	0x3fd96416e65558b8              # double 0.39673397534842136
	.quad	0x3fef79737704aab3              # double 0.98357556577442151
	.quad	0x3fd4206bdbe280cc              # double 0.31447884057162123
	.quad	0x3fe91b8fe2e8c7ba              # double 0.78461450880262551
	.quad	0x3fd54ea09a4395fa              # double 0.33292403282970862
	.quad	0x3fe5f16e9d918037              # double 0.68572169089384871
	.quad	0x3fe9af856f2ffb52              # double 0.80267593113226554
	.quad	0x3fe3b3e2856a53f0              # double 0.61570859964069591
	.quad	0x3fe1edd7dd85d13c              # double 0.56028359666974081
	.quad	0x3fdae0db87fd2cc4              # double 0.41997421531841561
	.quad	0x3fe6e7dc3a2d121c              # double 0.71580325472365613
	.quad	0x3fe2910d302f29d3              # double 0.58020648394568253
	.quad	0x3fe3a8bdb8f5cdf4              # double 0.614348279238071
	.quad	0x3fde791abf956b8e              # double 0.47614163121550568
	.quad	0x3fe6ec2491c8d64a              # double 0.71632603143252394
	.quad	0x3fd2ee30ffb6ac0a              # double 0.29578804943111037
	.quad	0x3feaceac67871fc8              # double 0.83772869320181886
	.quad	0x3feb6251f9dd5a54              # double 0.85575197984401052
	.quad	0x3fe1409be7bba582              # double 0.53913684139585905
	.quad	0x3fe7a58cceb5374f              # double 0.73895874378806947
	.quad	0x3fec07af6c96a54d              # double 0.87593814095195344
	.quad	0x3fe1ea0b5ad3d0a7              # double 0.55981986751296098
	.quad	0x3fda7372db1d88a2              # double 0.41329642675385447
	.quad	0x3fe69f918e95788b              # double 0.70697858665859437
	.quad	0x3feb67ccddf0c054              # double 0.85642093036404753
	.quad	0x3feb2373d4c46732              # double 0.84807769352048568
	.quad	0x3fdcfd0756bf2734              # double 0.45294364425045619
	.quad	0x3fe6d12efbde2c00              # double 0.71303509896222295
	.quad	0x3fb16f9d585f9b78              # double 0.06810935409121821
	.quad	0x3fe4aa2c06a98ae2              # double 0.64577294636941596
	.quad	0x3fbc43422a8b2e00              # double 0.1104012826792129
	.quad	0x3fc6e177f5dbf0c0              # double 0.17875575547066624
	.quad	0x3fc6d72efd557bcc              # double 0.17844188089199375
	.quad	0x3fe6475d24516e38              # double 0.69621140569092343
	.quad	0x3fe1a33829610131              # double 0.55117424089261224
	.quad	0x3fe53d79b1af08f8              # double 0.66375431732038148
	.quad	0x3fe0d13a0d90741d              # double 0.52554037713310076
	.quad	0x3fdb994d1cd34b38              # double 0.43123176398255536
	.quad	0x3fe18ef819bed908              # double 0.54870228794496345
	.quad	0x3fee85b40a1dac06              # double 0.95382120109332003
	.quad	0x3feea3abf27ec6b1              # double 0.95747945177409666
	.quad	0x3fae530e29da04f0              # double 0.059227411850779066
	.quad	0x3fe5d151805977d5              # double 0.68180155819185961
	.quad	0x3fde37cf4fe73ca4              # double 0.47215636065534228
	.quad	0x3fe9f3318e22eb55              # double 0.81093671570793424
	.quad	0x3feb6f8c68b24375              # double 0.85736675690178166
	.quad	0x3fc3d5c65ae1a418              # double 0.15496138989991048
	.quad	0x3fe33d1974cb89ae              # double 0.60120842753922488
	.quad	0x3fea247a0d68873d              # double 0.81695273035823102
	.quad	0x3feefa6e32ff70a0              # double 0.96807012520322999
	.quad	0x3fdcf2235a369d5a              # double 0.45227893648048723
	.quad	0x3fc1cf6a694ddd7c              # double 0.13914232389263848
	.quad	0x3fc00ec259fa4b84              # double 0.12545041459506134
	.quad	0x3fd2afee1cc71376              # double 0.2919879227668426
	.quad	0x3fe84a091c8838ce              # double 0.75903754780463273
	.quad	0x3fd7ebad05738c48              # double 0.37375951320990852
	.quad	0x3fdc60da5d124b34              # double 0.4434114369297959
	.quad	0x3fc5b7631244dfa4              # double 0.16965902702372404
	.quad	0x3fe6ebb3c5ca07de              # double 0.71627224569987979
	.quad	0x3feeaae4bba00fcf              # double 0.95836102147631574
	.quad	0x3fef351542ce2d83              # double 0.9752298645775429
	.quad	0x3fd45eba3c44bb78              # double 0.31828170667261402
	.quad	0x3fdd267575777726              # double 0.45547234031060879
	.quad	0x3fe24ac9897411f8              # double 0.57162930342070606
	.quad	0x3fe68fd9e82f6692              # double 0.70505996082938993
	.quad	0x3fd841d08fcb9420              # double 0.37901701014044598
	.quad	0x3fde7167a2656ff0              # double 0.47567168101318114
	.quad	0x3fefa88f3ed14a72              # double 0.9893261172204133
	.quad	0x3fe455792f0f948b              # double 0.6354337615163258
	.quad	0x3fcb9a8bf6fe9548              # double 0.21565389213825825
	.quad	0x3fc8343094cb54dc              # double 0.18909270539612677
	.quad	0x3fed9a1a82e7b166              # double 0.92506146972077086
	.quad	0x3fe3537f86d427a5              # double 0.60394264539467157
	.quad	0x3febee9dd942a938              # double 0.87287800248785796
	.quad	0x3fa1b779316879d0              # double 0.034602916032088538
	.quad	0x3fc85959d4f9c8ec              # double 0.19022677325444393
	.quad	0x3fe0ebd989298645              # double 0.52879025258534595
	.quad	0x3febd12bd4768da0              # double 0.86928359505366259
	.quad	0x3fd4f26e4cf1c606              # double 0.32729680551628382
	.quad	0x3fe0aaefe9cbac05              # double 0.5208663526840388
	.quad	0x3fee5322d52a2c69              # double 0.94764844545114812
	.quad	0x3fe5f07c1da9c22b              # double 0.68560605805948194
	.quad	0x3fb525b794addeb0              # double 0.082606767462375385
	.quad	0x3fdc19f01bd2f506              # double 0.43908312527840143
	.quad	0x3fa2c040d0d56180              # double 0.036623025410054133
	.quad	0x3fe5df7a7cf83c7f              # double 0.68353008659495618
	.quad	0x3fdffe25a4da72d6              # double 0.49988690470654029
	.quad	0x3f9d997f7bb2b460              # double 0.028905860829287255
	.quad	0x3fdd58cd04d72cc2              # double 0.45854497406680761
	.quad	0x3fe6d666e7fb9387              # double 0.71367211636662453
	.quad	0x3fd80538164842d2              # double 0.37531854797366038
	.quad	0x3fea5b5ac15eefc2              # double 0.82365167396300643
	.quad	0x3fdc48cc630dc4d2              # double 0.44194326089116232
	.quad	0x3fe1e8738ee48df4              # double 0.55962541493175744
	.quad	0x3fd3509ef2582d98              # double 0.30179570833635117
	.quad	0x3fed8b12b89df967              # double 0.9232267003824689
	.quad	0x3fb7f5f50e7bc6a8              # double 0.093596759830485099
	.quad	0x3fdfabd6cae86d92              # double 0.49486322226740598
	.quad	0x3fe18a889f26a9a4              # double 0.54816084942040222
	.quad	0x3fe68d7b03a5f273              # double 0.70477057182831826
	.quad	0x3fe86fd48e64aa72              # double 0.76365115939309036
	.quad	0x3fe964729bc0615e              # double 0.79351168079578449
	.quad	0x3fd44a3c66e6fbb2              # double 0.31703100251246064
	.quad	0x3fd55b0534b63746              # double 0.33368044040331701
	.quad	0x3fd98459977cd8ee              # double 0.39870300096244093
	.quad	0x3fe202403aa674c7              # double 0.56277476744767163
	.quad	0x3fda5cb9bd00f194              # double 0.41190951783553342
	.quad	0x3fdaabe50381fb8a              # double 0.41674161284020583
	.quad	0x3fe04139d5e4e1c4              # double 0.50796214843926935
	.quad	0x3fd0296ca37eb9d2              # double 0.25252834287939863
	.quad	0x3feb088b62ecc601              # double 0.84479302712696847
	.quad	0x3fed9f4b3b45b1de              # double 0.9256950528775254
	.quad	0x3fe077ab097270e9              # double 0.51460792393802735
	.quad	0x3fd7c6ff1eb32d3a              # double 0.37152078626668905
	.quad	0x3fedec91c320c1f8              # double 0.93512809859208712
	.quad	0x3feb4c9db9b3eefe              # double 0.85310255308237948
	.quad	0x3fc43336898ca580              # double 0.15781289783744157
	.quad	0x3fa2384667013410              # double 0.035585594247642516
	.quad	0x3fe469427a100bf3              # double 0.63784908142440455
	.quad	0x3fa09dc9a048cc80              # double 0.032453823867762743
	.quad	0x3fea6aa7f08d1d36              # double 0.82551953299199599
	.quad	0x3fc6f18e0a9ee82c              # double 0.17924666899290409
	.quad	0x3fe13b674622a27b              # double 0.5385013933019559
	.quad	0x3fc143ab4d990910              # double 0.13487759865717708
	.quad	0x3fe7446c3a989488              # double 0.72710238880667166
	.quad	0x3fc796e17d8f8108              # double 0.18429201727759215
	.quad	0x3fc1ae417b9d4968              # double 0.13813036476001206
	.quad	0x3fc73d31b0ebf204              # double 0.18155499590638169
	.quad	0x3fe7b934a18f32d8              # double 0.74135810427250259
	.quad	0x3fd836fc9604a726              # double 0.37835611963474702
	.quad	0x3fd98ada0211d148              # double 0.399099828740209
	.quad	0x3fef52d9951b297c              # double 0.97886351702008722
	.quad	0x3fd52ff6dfea213a              # double 0.33105251185090234
	.quad	0x3fdbed0f0427c98e              # double 0.43634391217997226
	.quad	0x3fa2e4f2ca80fdc0              # double 0.036902987689696243
	.quad	0x3fd6905d5adf263a              # double 0.35256132005870067
	.quad	0x3fe4b22922925bde              # double 0.64674813034332224
	.quad	0x3fea8eb2a07d617c              # double 0.8299191603246494
	.quad	0x3fadeb0f3f6e3610              # double 0.058433987133963083
	.quad	0x3fd0d8710580df8e              # double 0.26321054017488954
	.quad	0x3fe5fdc3a5600411              # double 0.68722708034340674
	.quad	0x3fe315fd06d52893              # double 0.59643412909032845
	.quad	0x3fe30ce15d754c60              # double 0.59532230619005233
	.quad	0x3fe07c46b9089b43              # double 0.51517044200304729
	.quad	0x3f7607fb6ef0cb80              # double 0.0053787061324780394
	.quad	0x3fd4488f4e7c7418              # double 0.31692869820273151
	.quad	0x3fcd2dd33e51c260              # double 0.22796097319543929
	.quad	0x3fda5353d57569c2              # double 0.41133590550967025
	.quad	0x3fdd24abf134dfc4              # double 0.45536325984312165
	.quad	0x3fea4eebf4717686              # double 0.822133996418146
	.quad	0x3fd50f76254a0e00              # double 0.32906869546442863
	.quad	0x3fc13360c9e4746c              # double 0.13438043458964744
	.quad	0x3fd1e53286f6cc16              # double 0.2796140974052731
	.quad	0x3fe9a82813ba13d9              # double 0.80177692273047818
	.quad	0x3fecb7be4a658214              # double 0.89742960482186839
	.quad	0x3fe1c1f42de1b792              # double 0.55492600404044112
	.quad	0x3fc41eeeafd809b4              # double 0.15719398103835902
	.quad	0x3febb388bb676c6c              # double 0.8656657848581637
	.quad	0x3fec5b16aa6dc294              # double 0.88611920630326546
	.quad	0x3fb3f79505f5af80              # double 0.077996553378111954
	.quad	0x3fcf8adc265e0bf4              # double 0.24642516969115003
	.quad	0x3fee654623accb27              # double 0.94986254661339309
	.quad	0x3fc0f943607f3b18              # double 0.13260690891044002
	.quad	0x3fca410aac8cdbd0              # double 0.2051099150209823
	.quad	0x3fd375a98912e332              # double 0.30405653368102314
	.quad	0x3fd4eac93633ede0              # double 0.32683019917723577
	.quad	0x3f8396b9340c7d00              # double 0.0095648259171512429
	.quad	0x3fd2c3ff1d5c292a              # double 0.29321267955005459
	.quad	0x3fe2d774bdadde5b              # double 0.58880078360284516
	.quad	0x3fefcd720f0eefa0              # double 0.99382880154688635
	.quad	0x3fbeb2659273f9d8              # double 0.1199096186210008
	.quad	0x3fedded7a54bf45c              # double 0.93345243725310522
	.quad	0x3fdcd1b062bb62da              # double 0.45029840127749099
	.quad	0x3fe4f5d16876121a              # double 0.65500708010273745
	.quad	0x3fd995895681020c              # double 0.39975198218965668
	.quad	0x3fde905bcc963b14              # double 0.47756094912703984
	.quad	0x3fd9a822ddc9d30a              # double 0.40088721903821123
	.quad	0x3fe46c5ebb182c40              # double 0.63822876493339464
	.quad	0x3fea48ef7dc28c8f              # double 0.82140326082698489
	.quad	0x3febf486b1b4e674              # double 0.87359938343361287
	.quad	0x3fc22b777ed66ac4              # double 0.14195150082817609
	.quad	0x3fcf7971a7870748              # double 0.24589367561389452
	.quad	0x3fddff25097c4928              # double 0.46869779516522891
	.quad	0x3fef3d92b2ca156b              # double 0.97626624030878639
	.quad	0x3fe1fa59be737500              # double 0.5618103713747189
	.quad	0x3fd5601c685bfeea              # double 0.33399114791244122
	.quad	0x3fd4a2bf37d55f34              # double 0.32243328526009241
	.quad	0x3fe9c5ed81d1f1bb              # double 0.80541110377776393
	.quad	0x3fecf1e76259b91e              # double 0.90452927788809112
	.quad	0x3f8a2ddddbd5a180              # double 0.01278279616481437
	.quad	0x3fc4dfb2b881bb24              # double 0.16307672509307125
	.quad	0x3fe597ebfab02ade              # double 0.67479514086275194
	.quad	0x3fe656bdf6de4579              # double 0.69808862892584422
	.quad	0x3fe8370af51c0f02              # double 0.75671909211129695
	.quad	0x3fdbe07340d5e098              # double 0.43557435351932261
	.quad	0x3fd5633e89559624              # double 0.33418239032320884
	.quad	0x3fd385d85f5c0aee              # double 0.3050442630048299
	.quad	0x3fcc676d5540ed0c              # double 0.2219063440587451
	.quad	0x3fdec2764f3ae3ac              # double 0.48061902749355556
	.quad	0x3fc9fab797a5a33c              # double 0.20296378044738528
	.quad	0x3fe8da4c755b4d2e              # double 0.77664778634281162
	.quad	0x3fd9a8ab83954c9c              # double 0.40091979837343117
	.quad	0x3feb205b8fae7a50              # double 0.84769990980914578
	.quad	0x3fe9eb00d665c316              # double 0.80993692278397833
	.quad	0x3fab39978bca54a0              # double 0.053173766912700815
	.quad	0x3fb89803822035a8              # double 0.096069545048712457
	.quad	0x3fca2cc51a6532c0              # double 0.2044912699588135
	.quad	0x3f9359b857897160              # double 0.018896942465617683
	.quad	0x3fe59f493e3914b5              # double 0.67569410469936619
	.quad	0x3fee6a10d51ade33              # double 0.95044747945843822
	.quad	0x3fc81634b6e74bbc              # double 0.18817767077288561
	.quad	0x3fd5bca61d3adfc0              # double 0.33963921408166797
	.quad	0x3fe0f37c15ed18f3              # double 0.52972225458577638
	.quad	0x3fdb78a5f85afa08              # double 0.42923878911452151
	.quad	0x3fd2fd333cf5e1ce              # double 0.29670411065265234
	.quad	0x3fc3382a5674b890              # double 0.15015153142434601
	.quad	0x3fe407c719fe7949              # double 0.62594943119965152
	.quad	0x3fd5363b48cc767e              # double 0.33143503293272392
	.quad	0x3febc6315cb74ddd              # double 0.86794345959281893
	.quad	0x3fecc46e1ee432f3              # double 0.89897829087712322
	.quad	0x3fd9a7e2175c8ee8              # double 0.40087177544977104
	.quad	0x3fe5feda30b53c46              # double 0.68735990060111685
	.quad	0x3fcd247a12c14f24              # double 0.22767568507935565
	.quad	0x3fdfac6e167f8b0e              # double 0.49489929387179721
	.quad	0x3fede13af98281c7              # double 0.93374394161588092
	.quad	0x3fd46d2747ab10d0              # double 0.31916219710207105
	.quad	0x3fe9884974fad99a              # double 0.79788658950456015
	.quad	0x3fc9c149d0fb7fcc              # double 0.20121119217128436
	.quad	0x3feda663f12891be              # double 0.92656132794632362
	.quad	0x3fd3032a961c57f8              # double 0.29706825885057198
	.quad	0x3fe8eb852f4786af              # double 0.77875003084428396
	.quad	0x3fdc07dad6a99452              # double 0.43797942126395129
	.quad	0x3fe6cd21ff5b62b9              # double 0.71254062532815177
	.quad	0x3fdc88f9086bfdae              # double 0.44586015531964562
	.quad	0x3fe52a615c1a217e              # double 0.66142337788282624
	.quad	0x3fecd170ace95445              # double 0.90056642314687763
	.quad	0x3fdad3aa3d349284              # double 0.41916900612913133
	.quad	0x3feb6706791b63da              # double 0.85632632878980108
	.quad	0x3fcfa90256e7735c              # double 0.24734524958958104
	.quad	0x3fec53714a6a40d8              # double 0.88518585714521247
	.quad	0x3fec9fe643800530              # double 0.89451897796258173
	.quad	0x3fe4546d2fd1111a              # double 0.63530597056572735
	.quad	0x3fe25a2b4f8b9e7e              # double 0.57350698028763225
	.quad	0x3fbd9a45469b7bc8              # double 0.115635232675671
	.quad	0x3fe296bf40b567e1              # double 0.58090174330140709
	.quad	0x3fc5ba178b15f5dc              # double 0.16974157611177432
	.quad	0x3fdb472242df0b54              # double 0.42621666460415963
	.quad	0x3fda1f2b99c0aa30              # double 0.40815248503591572
	.quad	0x3fdff009839fe24e              # double 0.4990257058521238
	.quad	0x3fdaaaa0f913f32e              # double 0.41666435550705472
	.quad	0x3fea7fdf5056f098              # double 0.82810941401796168
	.quad	0x3feca32791d87aab              # double 0.89491632924530984
	.quad	0x3fe698f1e714b297              # double 0.70617003567675141
	.quad	0x3fc3a0c8d9bf7ec4              # double 0.1533442557547372
	.quad	0x3fc34355423e118c              # double 0.1504923413705338
	.quad	0x3fdd866bf96f5b34              # double 0.46132945402989667
	.quad	0x3fe483b9d9d96798              # double 0.64107983158759207
	.quad	0x3fca214c24dc46bc              # double 0.20414115714861747
	.quad	0x3fe098f665df1d1c              # double 0.51867217919144393
	.quad	0x3fda99e083e01248              # double 0.41564190748639307
	.quad	0x3fe4d69412ef003c              # double 0.65119365404098728
	.quad	0x3fd797d4c8a03366              # double 0.36864204017984148
	.quad	0x3fe006857a6789eb              # double 0.50079606921309272
	.quad	0x3feb7820cf378039              # double 0.85841408226043037
	.quad	0x3fe20fda0c0ce541              # double 0.56443502763355735
	.quad	0x3fe7b48f537fc690              # double 0.74079099949286054
	.quad	0x3fe42605ebd6c782              # double 0.62964149534512637
	.quad	0x3fdd7db2c7ae0210              # double 0.46079701900456005
	.quad	0x3fe436e20fb7db5b              # double 0.63169959135016585
	.quad	0x3fe615d116fabbeb              # double 0.69016317833108809
	.quad	0x3fe13cefc735a094              # double 0.5386885538873849
	.quad	0x3fa7b575ce186140              # double 0.046306306274518594
	.quad	0x3fe1fffb42362435              # double 0.56249773914271961
	.quad	0x3fecf064b4be1888              # double 0.90434489537507634
	.quad	0x3feae3c57640aa8f              # double 0.84030411812030248
	.quad	0x3fe26a71d3afe71d              # double 0.57549373002186466
	.quad	0x3fe3ec71425bc2dc              # double 0.62261259995110718
	.quad	0x3fe0e4c38a3acd7c              # double 0.52792527196872596
	.quad	0x3fe60a9e2b8e929c              # double 0.68879612452709038
	.quad	0x3fe975fcf55655ed              # double 0.79565284650260326
	.quad	0x3fe14516b4004150              # double 0.53968367725796362
	.quad	0x3fc32cc89eff309c              # double 0.14980418933408124
	.quad	0x3fe99628bed7bd4d              # double 0.79957997583361762
	.quad	0x3fb8c083ba420390              # double 0.096687539075004602
	.quad	0x3fef2416c0220224              # double 0.97315537954279252
	.quad	0x3fd78bc259fc35c4              # double 0.36790522372833956
	.quad	0x3fd4c7f48471d466              # double 0.3247042935757406
	.quad	0x3fe8e0a2e7b1815d              # double 0.7774214291821796
	.quad	0x3fb30ac4c60f22c0              # double 0.074383066515234297
	.quad	0x3f6e19de81b9c300              # double 0.0036744447550564052
	.quad	0x3fe7a01e15995dc4              # double 0.73829559534618072
	.quad	0x3fd995654f1d4388              # double 0.39974339223868371
	.quad	0x3fbe8af70ded1fc8              # double 0.11930793848034604
	.quad	0x3f5de74b8dee3600              # double 0.0018251645885557499
	.quad	0x3fed584122352a97              # double 0.91702324563205451
	.quad	0x3fe6b2789cb25387              # double 0.7092860279541221
	.quad	0x3fda72ba86706676              # double 0.41325247887434757
	.quad	0x3fe2815d193e06aa              # double 0.5782914631856404
	.quad	0x3fe8f21f531fc03b              # double 0.77955595240746989
	.quad	0x3f8e451cd9a8e2c0              # double 0.014780259506652071
	.quad	0x3fe88ef65c256c31              # double 0.76745145795155711
	.quad	0x3fdbea42bb3c54b8              # double 0.43617313656552481
	.quad	0x3fa1a18ddb301940              # double 0.034435685163816121
	.quad	0x3fe70fc815ff62d7              # double 0.72067646309286715
	.quad	0x3fed06d5606cb7e1              # double 0.90708416779466117
	.quad	0x3fe7e298668477fe              # double 0.74641056082668888
	.quad	0x3fe076b5538f2d45              # double 0.51449076004193073
	.quad	0x3fef9008e00475a4              # double 0.98633235696222643
	.quad	0x3fa10343e93223d0              # double 0.033228037086764695
	.quad	0x3fa49122bc72e900              # double 0.040169797424328024
	.quad	0x3fe2527b0c36399f              # double 0.57256843934174018
	.quad	0x3fdb6966d9f3d80a              # double 0.428308213085416
	.quad	0x3fe04c48fcf2a73c              # double 0.50931214717750306
	.quad	0x3fe1620d8fd588c8              # double 0.54321935741997951
	.quad	0x3fea60b7a66d703f              # double 0.82430632119531555
	.quad	0x3fd051a2b55fc9be              # double 0.25498264038392537
	.quad	0x3fe0196f98b15fc4              # double 0.50310497114968955
	.quad	0x3fbfb62acf051a50              # double 0.12387340120503976
	.quad	0x3fdcff7ffc58e8f2              # double 0.45309447902003719
	.quad	0x3fe6293a00ee2deb              # double 0.69253254110065876
	.quad	0x3fefdd8c9ad6bf81              # double 0.99579458467449921
	.quad	0x3fe9cdd1a78f2865              # double 0.8063743851319144
	.quad	0x3fd44f3073dbd572              # double 0.31733332933739355
	.quad	0x3feee288edb6627c              # double 0.96515318325243937
	.quad	0x3fc9041404fef71c              # double 0.19543695682471529
	.quad	0x3fd7a0396b01086e              # double 0.36915431451428204
	.quad	0x3fd158b40c3e438a              # double 0.27103902049662365
	.quad	0x3fdd4fe62185328e              # double 0.45800164483515793
	.quad	0x3feb8dc4a9840de4              # double 0.86105568989335923
	.quad	0x3fe2ac7c14d2d7e8              # double 0.5835552603446077
	.quad	0x3fe2c64fa60e3d96              # double 0.5867079013132066
	.quad	0x3fc7da61269f0ab0              # double 0.1863519133167606
	.quad	0x3fc6a0ff48994128              # double 0.17678824467521648
	.quad	0x3fedc1f35adc40d5              # double 0.9299256109825601
	.quad	0x3fe9a6eecdf1fcc0              # double 0.80162754272159731
	.quad	0x3fe4d011cef31012              # double 0.65039911670510464
	.quad	0x3feae2fd1bfdb213              # double 0.84020858256332287
	.quad	0x3feba4333bc60ae4              # double 0.8637939612820813
	.quad	0x3fec07c890add78f              # double 0.87595012910490933
	.quad	0x3fde0474e980ffc4              # double 0.4690220146476316
	.quad	0x3fef1f4e5120d1d7              # double 0.97257152409889158
	.quad	0x3fe987f48dec5417              # double 0.79784610480658358
	.quad	0x3fdc33d194010674              # double 0.44066276029125295
	.quad	0x3fe7e11d08a7c321              # double 0.7462296647118799
	.quad	0x3feb19a505d566c4              # double 0.846880446809529
	.quad	0x3fe5bf820baa77a5              # double 0.67962744024747634
	.quad	0x3fdcabeff8a29392              # double 0.44799422531860345
	.quad	0x3f93a5a166a15f60              # double 0.019186517609653619
	.quad	0x3fd186c17e6aeda4              # double 0.27384984345891383
	.quad	0x3fe0213fff91dfeb              # double 0.50405883708935784
	.quad	0x3f999365b8eb2b80              # double 0.024976338779008511
	.quad	0x3fd4bf54f5cb1b88              # double 0.32417797091732625
	.quad	0x3fb1f0825f006b58              # double 0.07007613009811331
	.quad	0x3fe2a564b8c7d3a1              # double 0.58268962945895819
	.quad	0x3fcfb7d98dad3738              # double 0.24779815118602655
	.quad	0x3fd86d7f9e623f94              # double 0.38168325869718811
	.quad	0x3fe5500ac7fb0f0b              # double 0.66602076586465964
	.quad	0x3fe84c2c0a512e66              # double 0.75929834380208372
	.quad	0x3fe383a61d526c5d              # double 0.60982042052217944
	.quad	0x3fe70dbfba70e129              # double 0.72042833723302124
	.quad	0x3fc0b80cf5e42184              # double 0.13061677938845773
	.quad	0x3fe6a99d748cf463              # double 0.70820496333875516
	.quad	0x3fed3a0afea63fd7              # double 0.91333532081807334
	.quad	0x3fe0b2ef0aac87ed              # double 0.52184249958758999
	.quad	0x3fb0b6f82d42e170              # double 0.065291892099485827
	.quad	0x3fc14e453293f7cc              # double 0.13520112008694551
	.quad	0x3feff6ba56f47efe              # double 0.99886815055285161
	.quad	0x3fd1b7c8950cb382              # double 0.27684225612284064
	.quad	0x3fe1630c0cf1e71b              # double 0.54334070709521443
	.quad	0x3fbee9ef94ad13d8              # double 0.12075707797801216
	.quad	0x3fd3ed202e685954              # double 0.31134800464623891
	.quad	0x3fed70a5c13ae48e              # double 0.92000091305011877
	.quad	0x3f82592c27ce1340              # double 0.0089591455123440022
	.quad	0x3fe6c1891fa9d26f              # double 0.71112495598079117
	.quad	0x3fef19da3a122d10              # double 0.97190581647865493
	.quad	0x3fe6693f8e9d925b              # double 0.70034768919556301
	.quad	0x3fe10ed2ae382ddf              # double 0.53305944468723598
	.quad	0x3fd8fcda30e05ff0              # double 0.39043288014499833
	.quad	0x3fc0471bf2deca54              # double 0.12717007979297767
	.quad	0x3fda002e6563dbc4              # double 0.40626106168150167
	.quad	0x3fe02bca39b9dda6              # double 0.50534545206658232
	.quad	0x3fe52d55c0ac7ee1              # double 0.66178405410388674
	.quad	0x3fe7a83404a3f244              # double 0.73928261667567385
	.quad	0x3fdbbc9d4a010c00              # double 0.43338711001359798
	.quad	0x3fe8d2b98a155ac7              # double 0.77572323769967333
	.quad	0x3fef2f8911eb7f17              # double 0.97455266475660351
	.quad	0x3fce12e353b87d8c              # double 0.23495141590045099
	.quad	0x3fead639674fa3b6              # double 0.83865041902492155
	.quad	0x3fec503ef51975be              # double 0.88479564543711553
	.quad	0x3fe214c2494710fa              # double 0.56503404914886279
	.quad	0x3fb15b40771b2900              # double 0.067798642233501738
	.quad	0x3fd7d92d76023aec              # double 0.37263046764648666
	.quad	0x3fba5e2832c85020              # double 0.1029992221813818
	.quad	0x3f916b8b151cd2c0              # double 0.017011807597742346
	.quad	0x3fc9ffeb2af1bb4c              # double 0.20312251660240077
	.quad	0x3fe8a7693a4455bf              # double 0.77043591861973215
	.quad	0x3fd71425d5ac458e              # double 0.36060472361085594
	.quad	0x3fcf8c256fbbfab8              # double 0.24646442371154875
	.quad	0x3fe1b633498e3760              # double 0.55349125257792409
	.quad	0x3febfe76fd79a441              # double 0.87481259829394997
	.quad	0x3fe7f89773d99118              # double 0.74909565569808745
	.quad	0x3fd8ebffa67d6a54              # double 0.38940421351222665
	.quad	0x3feece19dcc1766c              # double 0.96265881649351348
	.quad	0x3fe7c0da1a23a7ae              # double 0.74229149918868642
	.quad	0x3fe5251e5831fc64              # double 0.66078107095371452
	.quad	0x3f64360a744c4f00              # double 0.002467174929174365
	.quad	0x3f76d9076823ef00              # double 0.0055780686691340176
	.quad	0x3fe380a01ecdf76a              # double 0.60945135132327022
	.quad	0x3fd653b37069e242              # double 0.34885869958774063
	.quad	0x3fed8fc9fb662235              # double 0.92380236722335118
	.quad	0x3fea2a53bf797640              # double 0.8176668872581061
	.quad	0x3fdc19b5ef1dd4a6              # double 0.43906925536368602
	.quad	0x3feb564d2b59eed7              # double 0.85428484408427152
	.quad	0x3fe6c00a19d8c531              # double 0.71094231651492212
	.quad	0x3fe62ec0406ab61d              # double 0.69320690709509203
	.quad	0x3fd085ab5cdfb946              # double 0.2581585318538554
	.quad	0x3fe5416675f86318              # double 0.66423342743937308
	.quad	0x3fe3ad2ca4005398              # double 0.61488945037364129
	.quad	0x3fc089915671beac              # double 0.12919823380388118
	.quad	0x3fdbb042c73a8ce2              # double 0.43263310867241789
	.quad	0x3fdb474d682cbd2e              # double 0.42622695134464805
	.quad	0x3fd9a11c23b9b1ec              # double 0.40045836914830946
	.quad	0x3fe428ceab5c6d6d              # double 0.62998136013940853
	.quad	0x3fe37362796cadeb              # double 0.60783504214981343
	.quad	0x3fe852474aaaacd9              # double 0.76004376014079889
	.quad	0x3fd8b687869603c8              # double 0.38614071028865427
	.quad	0x3faf65991d36a7a0              # double 0.061322007003880019
	.quad	0x3fca0406995700bc              # double 0.20324785697267156
	.quad	0x3feb94e4a3791c42              # double 0.86192542961442364
	.quad	0x3fe5e91d8b48ab05              # double 0.68470647052649325
	.quad	0x3fe783e7482165b3              # double 0.73485149467449273
	.quad	0x3fc8be2e2a0111a0              # double 0.19330384303078763
	.quad	0x3fa37828369a0e60              # double 0.038026100793129514
	.quad	0x3feb2e9ccf780007              # double 0.84944000741234127
	.quad	0x3feb65cc0736883e              # double 0.85617638977806343
	.quad	0x3fdbd98d5c514ea6              # double 0.43515333190337413
	.quad	0x3feb034c7eb9bca1              # double 0.84415268660622556
	.quad	0x3fe66acd7dd605c7              # double 0.70053743913029443
	.quad	0x3fe26941ec741f65              # double 0.57534881765694179
	.quad	0x3fd5f4b169c11732              # double 0.34305987670483085
	.quad	0x3fe19c5902e08ad9              # double 0.55033541261613117
	.quad	0x3fb9f9248f088038              # double 0.10145786754628794
	.quad	0x3fdffa01b3b6cd06              # double 0.49963419485284566
	.quad	0x3fdea94ecb2e549c              # double 0.47908372728245197
	.quad	0x3fd5aa287e9c2a3a              # double 0.33851063122043323
	.quad	0x3fc07c02c7eed6ac              # double 0.12878451120712009
	.quad	0x3fd2365223985b82              # double 0.28456548191154962
	.quad	0x3fea2d3aa53fabef              # double 0.81802112841739738
	.quad	0x3fdb3e9df8ac1a9e              # double 0.42569684299852806
	.quad	0x3fe253b9d4ef7b22              # double 0.57272044743499273
	.quad	0x3fd0419b36e8fdbc              # double 0.25400429117504664
	.quad	0x3fe718f8a1d5d53a              # double 0.72179824455694264
	.quad	0x3fe67e553b6c9f36              # double 0.70292150121983954
	.quad	0x3fe10a93d623b452              # double 0.53254119705310132
	.quad	0x3fecbb8e15f84bba              # double 0.89789490023610274
	.quad	0x3fde1e206dfc5f34              # double 0.47058878651431546
	.quad	0x3feb39ffac370562              # double 0.85082992206313812
	.quad	0x3fc39ab9e0627d60              # double 0.15315936523709706
	.quad	0x3fc5e66c2fd13cf0              # double 0.17109443983870376
	.quad	0x3fe7859b199f843a              # double 0.73505930904878558
	.quad	0x3fde69f66e2a2d04              # double 0.47521744497562701
	.quad	0x3fcadb419b78d4f4              # double 0.20981617061048718
	.quad	0x3fd88120f24a18c6              # double 0.38288139020040679
	.quad	0x3fe9db0792d1b842              # double 0.80798700976971127
	.quad	0x3fed58fad719d2f8              # double 0.9171117974461529
	.quad	0x3feca4ee9c48103d              # double 0.89513330959062609
	.quad	0x3fd1329565ab1002              # double 0.26871237686668803
	.quad	0x3fe29b27a044101a              # double 0.58143979360511655
	.quad	0x3fe567469bf70065              # double 0.66885691129574509
	.quad	0x3fd449459c712588              # double 0.3169721629861546
	.quad	0x3fc1f69c3270be8c              # double 0.14033844435606502
	.quad	0x3fec552c70fb4a19              # double 0.88539716784208899
	.quad	0x3fe0d33403fd0e6f              # double 0.52578163889888951
	.quad	0x3fe2432e0b3e0271              # double 0.57070066638705275
	.quad	0x3fc9c68ba24d3ff0              # double 0.20137162613764259
	.quad	0x3fe936eb280102db              # double 0.78795392812034082
	.quad	0x3fe5bafae89b0f06              # double 0.67907472067642582
	.quad	0x3fb5daa7c408dec8              # double 0.085367665634176082
	.quad	0x3fead05cb32655af              # double 0.83793482771095806
	.quad	0x3fc902b2b7b01220              # double 0.19539483994607654
	.quad	0x3fc0e0511e4ea754              # double 0.13184560756536234
	.quad	0x3fe19034fc7e41f7              # double 0.54885339083744966
	.quad	0x3fd475bc1d727522              # double 0.3196859633988699
	.quad	0x3fc6372afdfe19e8              # double 0.17355859186154921
	.quad	0x3fdda18a9d06932e              # double 0.46298470816172965
	.quad	0x3f6fbb9528072000              # double 0.003873626061452029
	.quad	0x3fec54ca06cd3663              # double 0.885350240024945
	.quad	0x3fe41bc0744b6adb              # double 0.62838766778744615
	.quad	0x3fdaf54e69c60000              # double 0.42122230843961006
	.quad	0x3fe06977ecd936d5              # double 0.51287456759902261
	.quad	0x3fde18d524110a4c              # double 0.47026566049695329
	.quad	0x3fd75d3339c77e54              # double 0.36506348268992395
	.quad	0x3fda68e4c7357f84              # double 0.41265220121385249
	.quad	0x3fe987ab2753ad46              # double 0.79781110459354276
	.quad	0x3fd483cf7184bc26              # double 0.32054506383696191
	.quad	0x3fec4804873254f9              # double 0.88379122167194091
	.quad	0x3fd2f6d4ea387ac2              # double 0.2963154113112233
	.quad	0x3fe661836802d510              # double 0.69940347971592765
	.quad	0x3fd449ad64301348              # double 0.31699690612758902
	.quad	0x3fdc7160bf760cd0              # double 0.44442003915191908
	.quad	0x3fe057e35e7eeab7              # double 0.51072853523449779
	.quad	0x3fe8a7cbf9cd4fc4              # double 0.77048300542309577
	.quad	0x3fabe358af70d2c0              # double 0.054468890586951257
	.quad	0x3fea6b4e2ee9d73e              # double 0.82559880411893238
	.quad	0x3fe10d17827f138b              # double 0.53284812438561013
	.quad	0x3fe41781b07030aa              # double 0.62786945782274484
	.quad	0x3fd5efc2bb11884c              # double 0.34275882976919969
	.quad	0x3fc7e7f75edcfb1c              # double 0.18676654941551696
	.quad	0x3fe431698d227485              # double 0.63103177609777161
	.quad	0x3fe2d9cb013a00b3              # double 0.5890860580402858
	.quad	0x3fd21c6d43504b7e              # double 0.28298503469084568
	.quad	0x3fd2758f4978edf0              # double 0.28842527556454822
	.quad	0x3face6c2ca381a40              # double 0.056448065934138203
	.quad	0x3fe8e1529d2e8f7d              # double 0.77750521373353332
	.quad	0x3feac7858b2a411c              # double 0.83685567074465749
	.quad	0x3fe1d3f567cbc21c              # double 0.55712385437624645
	.quad	0x3feca13144efa12c              # double 0.89467681373665675
	.quad	0x3feafab79615c55e              # double 0.84310511888012818
	.quad	0x3fe7bc5a73b857c7              # double 0.74174234963970143
	.quad	0x3fef6f01c4e9fda9              # double 0.98230064830561503
	.quad	0x3fe7eaadddc31df9              # double 0.74739735901761073
	.quad	0x3fe79aadc13f3d5f              # double 0.73763168090401254
	.quad	0x3fc49b9412c816d4              # double 0.16099787633009177
	.quad	0x3fdda80cd09f0742              # double 0.46338196156658651
	.quad	0x3f93b5bb812ec6c0              # double 0.019247941741645347
	.quad	0x3fd9dda767e1d07a              # double 0.40415368218169301
	.quad	0x3fea8e70d1fab7c5              # double 0.82988778125376739
	.quad	0x3fdcf09075f420e2              # double 0.45218287962826598
	.quad	0x3fd06077baee1134              # double 0.25588792090299539
	.quad	0x3fdd6f86e321053e              # double 0.45993206196370184
	.quad	0x3fb9a595758f08b0              # double 0.10018285865865795
	.quad	0x3fab3d40eba66510              # double 0.053201702848307275
	.quad	0x3fe1e891ca040e93              # double 0.55963983017177765
	.quad	0x3fcc0a1b0eb2b610              # double 0.21905840127639964
	.quad	0x3fd9beed5e8a991e              # double 0.40227827293928609
	.quad	0x3feda08d59c0ad9b              # double 0.92584865121664295
	.quad	0x3fdebbb27b35e72e              # double 0.48020612747460489
	.quad	0x3fdb6039261c37d8              # double 0.42774800035192362
	.quad	0x3fe10e4d41b0ab4d              # double 0.53299582319355354
	.quad	0x3fe20741ebb329df              # double 0.56338592562797973
	.quad	0x3fd4400c6447dfda              # double 0.3164092044166843
	.quad	0x3fe3e742730f934d              # double 0.62197992775745947
	.quad	0x3fdbded1f90e910a              # double 0.43547486612284614
	.quad	0x3fc5c71ee0ff14f4              # double 0.17013917909768106
	.quad	0x3fdcfc24860f75a8              # double 0.45288956729731433
	.quad	0x3fea3e0133b1ad86              # double 0.82006893249983714
	.quad	0x3fac460dcfe8cc60              # double 0.055221969251214587
	.quad	0x3fed009bfdc0c0ea              # double 0.90632438241121105
	.quad	0x3fececabbc69d27a              # double 0.90389048385129844
	.quad	0x3fd1483c5c37beea              # double 0.27003392224922484
	.quad	0x3fc82c3a6af1d59c              # double 0.18884973737628463
	.quad	0x3fd55ba1335b8842              # double 0.33371763244042907
	.quad	0x3fc80f309e93e1f8              # double 0.18796355956125388
	.quad	0x3fe7eef7f256d195              # double 0.74792096454489132
	.quad	0x3fc8d295a86ec2ac              # double 0.1939265320229614
	.quad	0x3fd2e12677f0b2aa              # double 0.29499208176529612
	.quad	0x3feeba5c98308d01              # double 0.9602492306188709
	.quad	0x3fcf815426b42f30              # double 0.24613429918132956
	.quad	0x3fe8fc230b17c96a              # double 0.78077842871270531
	.quad	0x3fd3c9c49154c72c              # double 0.30918993179794785
	.quad	0x3fc6fa928f444100              # double 0.17952186580124163
	.quad	0x3fe0792b4ac0f73f              # double 0.5147911510500548
	.quad	0x3f797e7dcfe5e180              # double 0.0062241472754681615
	.quad	0x3fec06bf2c1e5236              # double 0.87582357994921867
	.quad	0x3fd4d2cbae6457cc              # double 0.32536594419923115
	.quad	0x3fd46697a05084f8              # double 0.31876173644748418
	.quad	0x3fd672d2544d9d72              # double 0.3507581542275694
	.quad	0x3fdb68f297702922              # double 0.4282804945838895
	.quad	0x3f93bef06cf44900              # double 0.019283062601126666
	.quad	0x3fefda275e394411              # double 0.99538010027947809
	.quad	0x3feacbe4dab90da0              # double 0.83738939971265224
	.quad	0x3fd50f046eff2648              # double 0.32904158439177822
	.quad	0x3fe071d6bc03bde4              # double 0.51389633866886841
	.quad	0x3fe9688ca9f82566              # double 0.79401238629467907
	.quad	0x3fd93054d3674ec0              # double 0.3935749115455387
	.quad	0x3fe2171db05464b1              # double 0.56532177390467642
	.quad	0x3fc9302d983fda8c              # double 0.19678277906469466
	.quad	0x3fe1a8aad68341ca              # double 0.55183927437797675
	.quad	0x3fea7ce48141e43f              # double 0.82774567838271895
	.quad	0x3fad76d4c661bee0              # double 0.057547234741716968
	.quad	0x3f9613bf2b23af00              # double 0.021559702880877829
	.quad	0x3fdcb98a7edeeb16              # double 0.44882452382778248
	.quad	0x3fef1cfb4bd6a64b              # double 0.97228779613687643
	.quad	0x3fbff5e15ab8b498              # double 0.12484558548813351
	.quad	0x3fe51bae8b98e4b5              # double 0.65962912812314889
	.quad	0x3fbaafefab49ca18              # double 0.10424707347718998
	.quad	0x3fadbf7a6d771200              # double 0.058101487982217037
	.quad	0x3fdebb7fa709a2aa              # double 0.48019400894421926
	.quad	0x3fe26fa9e0cf6876              # double 0.57613080890884194
	.quad	0x3fe17660497e3f57              # double 0.54570021013385428
	.quad	0x3fdb50fb0045e0d8              # double 0.42681765581757025
	.quad	0x3feda1954825d481              # double 0.92597450343477317
	.quad	0x3fc081c7e5ae84ac              # double 0.12896059718062725
	.quad	0x3feaa5372d128445              # double 0.83266791155995945
	.quad	0x3fe9e0279379d992              # double 0.80861262134458145
	.quad	0x3fcc61a4ee03da9c              # double 0.22172986623600799
	.quad	0x3fd25d6c7d1069ac              # double 0.28695213521282414
	.quad	0x3fe3682eb0b048fb              # double 0.60646757611746638
	.quad	0x3fefb7d49d2f46c5              # double 0.99119024944430889
	.quad	0x3fcc1179cfb97324              # double 0.21928331988137828
	.quad	0x3f6e180304fe7700              # double 0.003673559091068479
	.quad	0x3fc24a3f6a595ed4              # double 0.14289086048915201
	.quad	0x3feaab914d2e82cb              # double 0.83344330858752735
	.quad	0x3fed3e7ad811f32c              # double 0.91387693597025565
	.quad	0x3fe152ab2e4c8a31              # double 0.54134139101763001
	.quad	0x3fcc5afde8af52f0              # double 0.22152685033383746
	.quad	0x3fd6d45349f1f78e              # double 0.35670931073388423
	.quad	0x3fcd106f22207640              # double 0.22706402937267178
	.quad	0x3fec1ed774f503c0              # double 0.87876484721356718
	.quad	0x3fe16cd14a54d5f7              # double 0.54453339116906718
	.quad	0x3fe33606b816506e              # double 0.60034500078701369
	.quad	0x3fd47cb2db1a57aa              # double 0.32011100193755715
	.quad	0x3fe5dce396635e12              # double 0.68321399090467794
	.quad	0x3fdf060f7cd4f278              # double 0.48474490347488297
	.quad	0x3fbc0a4aa8b74838              # double 0.10953203791658062
	.quad	0x3fea7230078b01bc              # double 0.82643891785851719
	.quad	0x3fd06615bfb2c632              # double 0.25623077126064964
	.quad	0x3fdf8a6d643e0a18              # double 0.49282393254557766
	.quad	0x3fe23262b80fdcc0              # double 0.56865058850862482
	.quad	0x3fdaa33ff11fbcb2              # double 0.41621397540343275
	.quad	0x3fe3347416e5d41b              # double 0.60015301201076754
	.quad	0x3fad98a32461dee0              # double 0.057805154982757179
	.quad	0x3fe0b4643695d251              # double 0.52202044163875361
	.quad	0x3fecb32ca64438f0              # double 0.89687187646793909
	.quad	0x3feb3ccb4231c418              # double 0.85117113998979033
	.quad	0x3fd4e903acdd3fe2              # double 0.32672206765437128
	.quad	0x3fc1e5e13e72ed4c              # double 0.13982787656082463
	.quad	0x3fea7a595ac485cc              # double 0.82743518570003393
	.quad	0x3fdb20daed4c9ecc              # double 0.42388032125243735
	.quad	0x3fe174fad3ca587e              # double 0.54552976002993581
	.quad	0x3feca338e8290d97              # double 0.89492459625073451
	.quad	0x3fdf788bcd5e5d30              # double 0.4917325501969172
	.quad	0x3fe714d2c1a52e26              # double 0.72129190274558108
	.quad	0x3feb75baffca495a              # double 0.85812139472026705
	.quad	0x3fcd1476032ffa8c              # double 0.2271869197429236
	.quad	0x3fe174b91d4f4750              # double 0.54549842571780438
	.quad	0x3f9fcbcb5f2d4420              # double 0.031050851520664335
	.quad	0x3fd7a44a078bb5da              # double 0.36940241562737486
	.quad	0x3fe5e3eb578880bf              # double 0.68407218071299514
	.quad	0x3fe661365a606d65              # double 0.69936673785870751
	.quad	0x3fdf2f4617cba064              # double 0.48726036380549531
	.quad	0x3fd7e9a7c269f6ec              # double 0.37363618837103618
	.quad	0x3fd6448801fd4f82              # double 0.3479328174046189
	.quad	0x3fe4bdb74bf13499              # double 0.64815869171583806
	.quad	0x3fd05663dafbe986              # double 0.25527283082160357
	.quad	0x3fec64d4c99302ac              # double 0.88730849618885576
	.quad	0x3fce1ed68d859088              # double 0.23531610403290792
	.quad	0x3fd8fa3be5e6b048              # double 0.39027306987077681
	.quad	0x3fd420c6a92242da              # double 0.31450048939681852
	.quad	0x3febf9b550155f31              # double 0.87423196450524732
	.quad	0x3fd9ffe82d8c32ca              # double 0.40624432037365621
	.quad	0x3fea0321bc92d1b8              # double 0.81288229780925914
	.quad	0x3fd423d0b4f64cde              # double 0.31468599006730169
	.quad	0x3fd3e410992584e2              # double 0.31079497295111314
	.quad	0x3fefccc8937cb340              # double 0.99374798589779089
	.quad	0x3fe57e4e93487f9e              # double 0.67166832700967283
	.quad	0x3fa2abd88e6d2610              # double 0.036467330347090265
	.quad	0x3fd5fabb5abc4f74              # double 0.34342845784089282
	.quad	0x3fe218a3523d5008              # double 0.56550756513979739
	.quad	0x3fb1c7ad44157348              # double 0.069453076478976361
	.quad	0x3fe66a35bc321994              # double 0.70046507603619768
	.quad	0x3fcf615cb47c3f5c              # double 0.24515875637780027
	.quad	0x3fe6d867940c68fe              # double 0.71391657748907256
	.quad	0x3fee9387d8596f9e              # double 0.95550911193594223
	.quad	0x3fc49597bb199cd4              # double 0.16081520686859696
	.quad	0x3fcdd7218ea2b998              # double 0.23312777962332798
	.quad	0x3fe30a8607a54ab2              # double 0.59503461354537124
	.quad	0x3f713c48d9964c80              # double 0.0042078824711949681
	.quad	0x3fe30fd14b2d6b54              # double 0.59568085368241919
	.quad	0x3fef973178fdcbc7              # double 0.98720620757227883
	.quad	0x3fed945cbf97cfca              # double 0.92436063213835351
	.quad	0x3fedbb4c0dcda152              # double 0.92911341377206669
	.quad	0x3fe796dcd8c93a8f              # double 0.73716585484528874
	.quad	0x3fcf21b28e52f618              # double 0.24321586560647357
	.quad	0x3feff8ed34342934              # double 0.99913654514356275
	.quad	0x3fe0968c6a418e63              # double 0.51837750199451837
	.quad	0x3fe687a407a5fabc              # double 0.70405770772762066
	.quad	0x3fd7edcb2f2383a0              # double 0.37388877490416839
	.quad	0x3fd3624174b2445c              # double 0.30287205120209193
	.quad	0x3fe162377669cd52              # double 0.54323933723063988
	.quad	0x3feae27f2f49bfa6              # double 0.84014853702500569
	.quad	0x3fea1d83b3cf6db3              # double 0.81610283965294739
	.quad	0x3fd0f5d2136fe3cc              # double 0.26500369928504308
	.quad	0x3fe46193c154a011              # double 0.63691127548099946
	.quad	0x3fefc04ea10ea23b              # double 0.99222499329068314
	.quad	0x3fc3b213ef4b5730              # double 0.15387200531284284
	.quad	0x3f96c1ebc2f0dbc0              # double 0.022224124692197256
	.quad	0x3fc78bd73530e79c              # double 0.18395509812563382
	.quad	0x3fe1bed449b6210c              # double 0.55454458615079849
	.quad	0x3fec76d1a2524061              # double 0.88950425818803691
	.quad	0x3fe9649c1aee0ef8              # double 0.79353146800755692
	.quad	0x3fd04362e75f0b9e              # double 0.25411293597078977
	.quad	0x3fe551743603fce8              # double 0.66619310903470552
	.quad	0x3fe568df779c0933              # double 0.6690518699763629
	.quad	0x3fe17a12aa6da480              # double 0.54615147864127778
	.quad	0x3fd0c89e5c030db0              # double 0.26224478707828336
	.quad	0x3fd356090a574072              # double 0.30212617883535764
	.quad	0x3fe79adff54f230d              # double 0.73765561973513771
	.quad	0x3fe5e0fa30eff4e2              # double 0.6837130504424318
	.quad	0x3fe3788a12dcdb96              # double 0.6084642761623964
	.quad	0x3fe3741f81ccfbff              # double 0.60792517997458606
	.quad	0x3fab72cdb9278b00              # double 0.053610257007468576
	.quad	0x3fe3278a8d1aded1              # double 0.59857680854380579
	.quad	0x3fd18589469a0144              # double 0.27377540487943386
	.quad	0x3fc8e5495dba4a30              # double 0.19449727131412109
	.quad	0x3fd2e45de1513344              # double 0.29518839839584055
	.quad	0x3fea422674f8787f              # double 0.82057497831171122
	.quad	0x3fea114013e56507              # double 0.8146057499499485
	.quad	0x3fead5203d547cc2              # double 0.83851634958764287
	.quad	0x3fee08e74b9768ae              # double 0.93858685268357589
	.quad	0x3fc28a8c7a1409bc              # double 0.14485317192891312
	.quad	0x3fe25aa367f5a34a              # double 0.57356424622148805
	.quad	0x3fe9b33cba9b0f2c              # double 0.80312954374719458
	.quad	0x3fda53f58d0330ee              # double 0.41137446184872217
	.quad	0x3fed0407aec2de90              # double 0.90674194462822477
	.quad	0x3fd57f9c343636b6              # double 0.33591370676809207
	.quad	0x3fe3c2a055a308dc              # double 0.61750809408138307
	.quad	0x3fea2a0d2a646ef7              # double 0.81763323096990248
	.quad	0x3fd29a5db9d0862e              # double 0.29067176004363915
	.quad	0x3fedf421b7f3aaf5              # double 0.9360512345131996
	.quad	0x3fa7c573a62fbf60              # double 0.046428312336387334
	.quad	0x3fe327d0568b72da              # double 0.59861008551851147
	.quad	0x3fe077333ce805fc              # double 0.51455079932946957
	.quad	0x3fda048f19162dc6              # double 0.4065282578455619
	.quad	0x3fe172462ce6e27c              # double 0.54519947786236811
	.quad	0x3fee6c45387d771b              # double 0.95071660073492426
	.quad	0x3fb007c22d1903f0              # double 0.062618385324654247
	.quad	0x3fd13bfde698f364              # double 0.26928660887988642
	.quad	0x3fec86522b59a472              # double 0.89139660326794812
	.quad	0x3fe027be2f079f7c              # double 0.50485142884734513
	.quad	0x3fd16aababa79732              # double 0.2721356560053777
	.quad	0x3fec5f6213cc9a8c              # double 0.88664344660794958
	.quad	0x3fc1bb0956189a44              # double 0.13852040008460353
	.quad	0x3feb1cb537a75b5a              # double 0.84725437993879926
	.quad	0x3fbd16b425911150              # double 0.11362768094210662
	.quad	0x3feb4b61d7e4701d              # double 0.85295192877265757
	.quad	0x3fe5f3c5b4af2a27              # double 0.6860073594082835
	.quad	0x3fe67254d19355a8              # double 0.70145646031112552
	.quad	0x3feaf9269426a040              # double 0.84291390357703477
	.quad	0x3fd8edcb59bcfd9a              # double 0.38951381457806067
	.quad	0x3fd306fc7993ff82              # double 0.29730140564787899
	.quad	0x3fd1c9a7053c7b96              # double 0.27793288718560782
	.quad	0x3fd091ed3e98ce46              # double 0.2589066611574008
	.quad	0x3fdab7ea40aa48e2              # double 0.41747528376539667
	.quad	0x3fc77be9a6bfe9ec              # double 0.18346901552270312
	.quad	0x3fcf843cde54647c              # double 0.24622307640018792
	.quad	0x3feb0cb0c26cfca7              # double 0.84529912923598693
	.quad	0x3fec17d624155d87              # double 0.87790972755003416
	.quad	0x3fddbfad085a42bc              # double 0.46482396903688161
	.quad	0x3fd80e93ecd9b3ce              # double 0.37588976030275212
	.quad	0x3fecaf6b3dfe61e2              # double 0.89641344173565707
	.quad	0x3fef919fbdec5a8a              # double 0.98652636618028677
	.quad	0x3feeb1cb6f0d1fde              # double 0.95920345010471997
	.quad	0x3fe1cb405a2f3654              # double 0.55606095899720254
	.quad	0x3fcab9dc5e01397c              # double 0.20879702177121462
	.quad	0x3fe9b26b03d58d10              # double 0.80302954434265139
	.quad	0x3fe743e587b0c05e              # double 0.72703815938985961
	.quad	0x3fe48fffc03e1727              # double 0.64257800624247785
	.quad	0x3fed42506da2dc25              # double 0.91434499181093953
	.quad	0x3fe6a9835b8dd527              # double 0.70819251901290137
	.quad	0x3fd4db6138785ea6              # double 0.32588987841288952
	.quad	0x3fe2a3d4a70c8744              # double 0.58249886156793496
	.quad	0x3fc4603aad2d3e1c              # double 0.15918668228049249
	.quad	0x3fe8190538c5f5b9              # double 0.75305424774676688
	.quad	0x3fea26a69096ee5a              # double 0.81721809616233121
	.quad	0x3fdaeff0cd2e87d0              # double 0.42089481389313921
	.quad	0x3fec77c810b496b1              # double 0.88962176573541829
	.quad	0x3fdf947a87abd712              # double 0.49343741654534867
	.quad	0x3fd7cc7c0d335f5c              # double 0.37185574807289412
	.quad	0x3fc9683c44af2bc4              # double 0.1984935126659747
	.quad	0x3fe2f1aa7db6b727              # double 0.59200024178946797
	.quad	0x3fe4bd5a1be8011e              # double 0.64811425638621123
	.quad	0x3fef4d0b75f5a0d6              # double 0.97815487898790354
	.quad	0x3feea222534eb9f6              # double 0.95729175826073631
	.quad	0x3fea40e5f7bba71d              # double 0.82042215714793409
	.quad	0x3fe992af07207f40              # double 0.7991557254026489
	.quad	0x3f8131e224e4c580              # double 0.0083959262379689203
	.quad	0x3fd948a1cf290f1c              # double 0.39505810957438015
	.quad	0x3fd46aeabcd818f4              # double 0.31902569238481182
	.quad	0x3fe0e8edecca7705              # double 0.52843376396387554
	.quad	0x3fdd981223466a9a              # double 0.46240666813688736
	.quad	0x3fd145a629c9d752              # double 0.26987604218390004
	.quad	0x3fb9e4a82f1d6d60              # double 0.10114527845637644
	.quad	0x3fe97a1a3b9db67a              # double 0.79615508693468873
	.quad	0x3fe03c62185da447              # double 0.50737099417632059
	.quad	0x3fe267344fbf079b              # double 0.57509818625861742
	.quad	0x3feae9960f7e71d2              # double 0.84101393724591333
	.quad	0x3fe3531d07877a62              # double 0.60389567823933654
	.quad	0x3febb21292f11b84              # double 0.86548737239432727
	.quad	0x3fe8f65c57c00a96              # double 0.7800733293409674
	.quad	0x3fe2a311196d4053              # double 0.58240561453022577
	.quad	0x3fe60906edce16ef              # double 0.68860193678184867
	.quad	0x3fe20d2915aa5e95              # double 0.56410650474113544
	.quad	0x3fcb3bcf3cb925c8              # double 0.21276274170877074
	.quad	0x3fd45009b6c14940              # double 0.31738512847109135
	.quad	0x3fc7a4ebf72f7fe0              # double 0.18472051210028351
	.quad	0x3fcdf6f113024504              # double 0.23409856250922456
	.quad	0x3fee6cdd810bc93d              # double 0.95078921512894221
	.quad	0x3fcf7c4bb1de07d4              # double 0.24598070321013543
	.quad	0x3feda40392f20117              # double 0.92627123546847911
	.quad	0x3feea98a21dfdf29              # double 0.95819574943650309
	.quad	0x3fe6558f3263fbcc              # double 0.69794425813585681
	.quad	0x3fea7bd799f05e39              # double 0.8276174551601293
	.quad	0x3fe325fa38553dae              # double 0.59838591578038858
	.quad	0x3fcd9d8bbb95c2d4              # double 0.23137041720794704
	.quad	0x3fec5f43ea6272e7              # double 0.8866290643523741
	.quad	0x3fefd5a51f83086d              # double 0.99482971338899306
	.quad	0x3fe52af495ecea32              # double 0.66149358064951103
	.quad	0x3fec98c0659700bf              # double 0.89364642946022588
	.quad	0x3fda7877bd746f46              # double 0.41360276700446652
	.quad	0x3fee181ab715ccad              # double 0.94044242628878794
	.quad	0x3feee7d5d6aa29f4              # double 0.96580020834636437
	.quad	0x3fc94b29db3b14d4              # double 0.19760630802753687
	.quad	0x3fefa00a9785dde0              # double 0.98828630060500799
	.quad	0x3fc789b71683fc44              # double 0.18389023398774118
	.quad	0x3fd4b1267f874f84              # double 0.32331240133247996
	.quad	0x3fed4f9294b8a590              # double 0.91596344992756151
	.quad	0x3fe357f7b6012696              # double 0.60448823497536597
	.quad	0x3fcb9b5454451038              # double 0.21567777743087091
	.quad	0x3fd8a01389043a64              # double 0.38477028255957735
	.quad	0x3fe0b3e1a6635254              # double 0.52195818421985019
	.quad	0x3fe0d8392e339284              # double 0.52639445327493251
	.quad	0x3fea495e49959d64              # double 0.82145609256705798
	.quad	0x3fde77dfcb944402              # double 0.47606654053475961
	.quad	0x3febc79a3895cb71              # double 0.86811553050789148
	.quad	0x3fe7c749b480cd59              # double 0.7430771375133346
	.quad	0x3feaa62baeff5c09              # double 0.83278450183104369
	.quad	0x3fe6432138111dd9              # double 0.69569455099638866
	.quad	0x3fdb2b0d1203df24              # double 0.42450262793816962
	.quad	0x3fe532347dbfc6b7              # double 0.66237854538322594
	.quad	0x3fd1f9f9276eca18              # double 0.28088215685707629
	.quad	0x3fda02bdfbac75a2              # double 0.40641736581332044
	.quad	0x3fe89eefe15f2ba9              # double 0.76940149324342599
	.quad	0x3fd72246c30bd6da              # double 0.36146706626401015
	.quad	0x3feb9de8d7d942c8              # double 0.86302606733269105
	.quad	0x3fee46da932cfa77              # double 0.94614914651158599
	.quad	0x3fe69844f61555c7              # double 0.70608757079269757
	.quad	0x3fe36a12d4c6f548              # double 0.60669843252223021
	.quad	0x3f8d429391d6a240              # double 0.014287140739569826
	.quad	0x3fd27d18dc683e94              # double 0.28888532184735394
	.quad	0x3fe323f6e77c4ced              # double 0.59814019405385255
	.quad	0x3fc9aa1dab10ef90              # double 0.20050402500953313
	.quad	0x3fc070f109199154              # double 0.12844670242624068
	.quad	0x3fe3a7f2784f2174              # double 0.61425136087295451
	.quad	0x3fe3ef9d7021a39d              # double 0.62299987698235137
	.quad	0x3fc58a22fd1c5ec8              # double 0.16827809676100558
	.quad	0x3fe55a2f98c2502a              # double 0.66725902400731241
	.quad	0x3fe2458816220628              # double 0.57098774264176644
	.quad	0x3fee6fe042d04b8f              # double 0.95115674066106404
	.quad	0x3fa335a64a0c4b10              # double 0.037518688715996729
	.quad	0x3fef3f63a07967b2              # double 0.97648793547272406
	.quad	0x3fdda12b23a77d56              # double 0.46296194536076507
	.quad	0x3fec2df2d4a3acd0              # double 0.88060895472644951
	.quad	0x3fd47b908bc3eada              # double 0.32004178666072181
	.quad	0x3fe38b90fe0fbc2a              # double 0.61078691121463646
	.quad	0x3feee0b90e2de8b0              # double 0.96493199128533114
	.quad	0x3fe9e25f33622cdc              # double 0.80888328586425073
	.quad	0x3fe6505282fab375              # double 0.69730496961493194
	.quad	0x3fe1067fada16d1d              # double 0.53204330360623298
	.quad	0x3fcf7a4d1d91dec8              # double 0.24591983741605916
	.quad	0x3fefdc90a49b6434              # double 0.99567443990520709
	.quad	0x3fedc7082208ad52              # double 0.93054587027783442
	.quad	0x3fcc2e89a149a8f4              # double 0.22017021537187242
	.quad	0x3fdbedb9603599d2              # double 0.43638452907034975
	.quad	0x3feff5c2611c0379              # double 0.99874991385159639
	.quad	0x3fe383e95c1d72f1              # double 0.60985248557298466
	.quad	0x3fcc1dca60eae0b0              # double 0.21965913517283786
	.quad	0x3fe6841263e532ae              # double 0.70362205038835213
	.quad	0x3fd634903eb2cde6              # double 0.34695821879287647
	.quad	0x3fcaaeaecca461d8              # double 0.20845589630404393
	.quad	0x3fe89f91a5c1243a              # double 0.76947862981717852
	.quad	0x3fe41c5e98b6b8e4              # double 0.62846307589441297
	.quad	0x3fd5d7286ab8833a              # double 0.34125719472835991
	.quad	0x3fd60fb2c1f9d102              # double 0.34470814650491388
	.quad	0x3fe3483b868afb81              # double 0.6025674464980143
	.quad	0x3fee226b6f4e9b3c              # double 0.94170161952647601
	.quad	0x3fe97aea6b69831e              # double 0.79625435809075262
	.quad	0x3fe80ccebb792b43              # double 0.75156342140085319
	.quad	0x3fbb5e8b6dfa6cf0              # double 0.10691138682379964
	.quad	0x3fed1d83528694c8              # double 0.90985265844633378
	.quad	0x3fe5c563cdf58462              # double 0.68034544206978986
	.quad	0x3fed9d9e7bcd275d              # double 0.92549060993153953
	.quad	0x3fe74c9b2cdd861b              # double 0.72810133707770619
	.quad	0x3fdd95b438612458              # double 0.46226220613295288
	.quad	0x3f88695bf16c8a00              # double 0.011919706635642235
	.quad	0x3fc5ed96bfc94130              # double 0.17131313671644355
	.quad	0x3fed0fb21192332e              # double 0.90816596443037212
	.quad	0x3fee6691aa0e5620              # double 0.95002063001692604
	.quad	0x3fe78e82c8e14e0d              # double 0.73614634737390505
	.quad	0x3fa28190880a6000              # double 0.03614474926615685
	.quad	0x3fbc70e6170bd0b0              # double 0.11109769880914899
	.quad	0x3fe6dcc0b78f94b4              # double 0.71444736339312565
	.quad	0x3fefe30347d09fa1              # double 0.99646152521471631
	.quad	0x3fe3af4d3c23ce77              # double 0.61514913316791719
	.quad	0x3fed29f90842b158              # double 0.91137363065130739
	.quad	0x3fcb4424f7c1ff34              # double 0.21301710221814008
	.quad	0x3fd576ff9deb6ac0              # double 0.33538809224925714
	.quad	0x3fcd822730d42e84              # double 0.23053445705624054
	.quad	0x3fe2c931f96fb6e0              # double 0.58705996244472303
	.quad	0x3fe3724b93412e94              # double 0.60770205269496325
	.quad	0x3fef1c21b11b9108              # double 0.972184034264985
	.quad	0x3fc3b35ec0dd02ac              # double 0.15391144196657558
	.quad	0x3fd612ed5f6cb084              # double 0.34490522688680181
	.quad	0x3fdb3b4f9476bfc8              # double 0.42549504755424694
	.quad	0x3fe81fbeb69484a7              # double 0.75387511882958769
	.quad	0x3fe40a5c4599c1cf              # double 0.62626470178479987
	.quad	0x3feccdb9c2b0f648              # double 0.9001129915774948
	.quad	0x3fd1e27a890163be              # double 0.27944815997539851
	.quad	0x3fc7187f27226ecc              # double 0.18043507967819605
	.quad	0x3fd5c6ac5f9767c8              # double 0.34025105795955968
	.quad	0x3fdef57e9a37c6d4              # double 0.48373379764880764
	.quad	0x3fc5c1793fbe5ebc              # double 0.16996684658510286
	.quad	0x3fe0349ca460591b              # double 0.50642234902150862
	.quad	0x3fcc3d477df4fb90              # double 0.22062009477846489
	.quad	0x3fba428cbb39f3a8              # double 0.10257796832043076
	.quad	0x3fb8b3b7890f94e8              # double 0.096492262804151019
	.quad	0x3fb69e188cec2918              # double 0.088349851994426465
	.quad	0x3fe9d38c5bb3b74e              # double 0.80707376394796326
	.quad	0x3fe10452fc38d2a3              # double 0.53177785169699054
	.quad	0x3fde7cfad54058c8              # double 0.47637816262557608
	.quad	0x3fc3eb789e42ee34              # double 0.15562350967035032
	.quad	0x3fdde183ff2fa592              # double 0.46688938065070673
	.quad	0x3fefce27b883bb9e              # double 0.99391542470936023
	.quad	0x3fe36f25526188d7              # double 0.60731760110891286
	.quad	0x3fce010a2e7d4570              # double 0.23440673131930678
	.quad	0x3fe16de5378bfb73              # double 0.54466496323571645
	.quad	0x3fe52af25c1f0684              # double 0.66149251930637876
	.quad	0x3fe3bfba8932b951              # double 0.61715437695037612
	.quad	0x3fd6318419171b8c              # double 0.34677221727582075
	.quad	0x3fd84a5764d0a2c8              # double 0.37953743787015215
	.quad	0x3fd4f80ac32032e8              # double 0.32763928466083181
	.quad	0x3fc7ff5ef21237a8              # double 0.18748080081826157
	.quad	0x3fea51177796a9a8              # double 0.82239888531812699
	.quad	0x3fef24ab939585c0              # double 0.97322634530080875
	.quad	0x3fe978ecc9ac0da1              # double 0.796011346712863
	.quad	0x3fe9ff109003a065              # double 0.8123858273293193
	.quad	0x3fc1e625a5e564a0              # double 0.13983603096383934
	.quad	0x3fe04bd0809b13ff              # double 0.5092546951133271
	.quad	0x3fc48562062e3fd8              # double 0.16032052327909585
	.quad	0x3f9f923774c4f5e0              # double 0.030831209661519199
	.quad	0x3fe1b1f4cf98effd              # double 0.55297318025941389
	.quad	0x3fea9123dff610ed              # double 0.83021730177327202
	.quad	0x3fe3631d260fd610              # double 0.60584886011082695
	.quad	0x3fdcb4de40a25c0c              # double 0.44853931724486595
	.quad	0x3fe1a463e8fb954f              # double 0.5513171720928457
	.quad	0x3fc767a7ed2ba0a0              # double 0.18285082893931293
	.quad	0x3fd9b3bf73f5b19a              # double 0.40159593891328316
	.quad	0x3fedeb1a0530e619              # double 0.93494893087262476
	.quad	0x3fdd0bd27930489e              # double 0.45384656748604779
	.quad	0x3f90d213c86ee700              # double 0.016426381214592389
	.quad	0x3fe368243ee0a216              # double 0.60646259575611583
	.quad	0x3fae6534f47daf50              # double 0.059365897030913772
	.quad	0x3fe523103701fb33              # double 0.66053019279192993
	.quad	0x3febdb8cb4dc7e5a              # double 0.8705504925200771
	.quad	0x3fc76648f2c1c694              # double 0.18280898908010512
	.quad	0x3fe6ac4585d1a9d6              # double 0.70852924477122303
	.quad	0x3fcdfa1ac87f50b8              # double 0.23419508733662098
	.quad	0x3fe77a21fec71314              # double 0.73365878831154641
	.quad	0x3fea5496cae3058f              # double 0.82282580972985098
	.quad	0x3fb17bea55bc85d8              # double 0.068297048503630164
	.quad	0x3fea477b4df8ac72              # double 0.82122578839097415
	.quad	0x3fea0ad9c2d89a6f              # double 0.81382453971748514
	.quad	0x3fe578ec56adbfbb              # double 0.67101113252100875
	.quad	0x3f8992a49800b240              # double 0.012486730469469909
	.quad	0x3fe0eac1af22c87c              # double 0.52865680891251499
	.quad	0x3fcb2a2ca8a4005c              # double 0.21222456201940332
	.quad	0x3fc0368ac724a884              # double 0.12666449283398518
	.quad	0x3fc34176ed1cd628              # double 0.15043531968847046
	.quad	0x3fd8f7e04be70b3c              # double 0.3901291600451946
	.quad	0x3fd567259196850e              # double 0.33442057817053772
	.quad	0x3fdf575e8a1c3982              # double 0.48970759856538149
	.quad	0x3feb1bdd1896bdeb              # double 0.84715132524973791
	.quad	0x3fe90974b97b3863              # double 0.78240429140874956
	.quad	0x3fcb2e028d61567c              # double 0.21234161284762709
	.quad	0x3fcd86ca1ad5e084              # double 0.23067594824147275
	.quad	0x3fcc30af70244c34              # double 0.22023575759576064
	.quad	0x3fe9353fa0721a88              # double 0.78775006615690391
	.quad	0x3fec18ac78746bf3              # double 0.87801192785570803
	.quad	0x3fe72713704d2e7a              # double 0.72352001127133225
	.quad	0x3fe857495279942b              # double 0.76065507992155312
	.quad	0x3fec28387582da52              # double 0.87990973426242136
	.quad	0x3fe528d836732b7c              # double 0.66123591074698096
	.quad	0x3fc17c667a166118              # double 0.13660889588641889
	.quad	0x3fdeaa034da12466              # double 0.47912676411630739
	.quad	0x3fec485a377acebb              # double 0.88383208118326395
	.quad	0x3fd5b5ad8329919a              # double 0.3392137318499181
	.quad	0x3fe98acbeeefccff              # double 0.79819294612244096
	.quad	0x3fee189a05992427              # double 0.94050313084983805
	.quad	0x3fe51fbb901a75fb              # double 0.66012361664951358
	.quad	0x3fe839b594f1ffa4              # double 0.75704459277038838
	.quad	0x3feedd8d75af63bf              # double 0.96454499230741663
	.quad	0x3fc3384740992b40              # double 0.15015497831549318
	.quad	0x3fd6a64e7d6f82be              # double 0.35390054940766535
	.quad	0x3fe3b816a88ae5a3              # double 0.61622174185247436
	.quad	0x3fd8dd79b1517c66              # double 0.38851778331986109
	.quad	0x3fefbab38ce90024              # double 0.99154069444194137
	.quad	0x3feab85a90eb8b43              # double 0.83500412277894787
	.quad	0x3fecce075a49d28f              # double 0.90014999041030019
	.quad	0x3fe7b8ac7df96d4e              # double 0.74129318813667466
	.quad	0x3fd4c6e78305e352              # double 0.32464015765395005
	.quad	0x3fe6f8a3c2c1aa68              # double 0.71785152471904912
	.quad	0x3fe5305d3e234ddd              # double 0.66215383659658367
	.quad	0x3fe0b231a557718a              # double 0.52175218861843686
	.quad	0x3fca63364efce7e8              # double 0.20615271431762427
	.quad	0x3fc4f79030ee43a4              # double 0.1638050307197122
	.quad	0x3fe26ef75257b0dd              # double 0.57604566652801348
	.quad	0x3fe1e436beb71f34              # double 0.55910813569150841
	.quad	0x3fbcfe76802e2c30              # double 0.11325779561427463
	.quad	0x3fde6c94bdc33930              # double 0.47537725955489218
	.quad	0x3fbb3119e5271b90              # double 0.1062179741339675
	.quad	0x3fdc32b069a51252              # double 0.44059381787181906
	.quad	0x3fcbd8a11ec54318              # double 0.21754850389927394
	.quad	0x3fe3b87721c1da73              # double 0.61626774399958462
	.quad	0x3fd1b372ed593946              # double 0.27657769373481178
	.quad	0x3fc57e1101f84a80              # double 0.16790974231897238
	.quad	0x3fce3b1e5c86dcfc              # double 0.23617915647421472
	.quad	0x3fdec2488815f9fa              # double 0.4806081131900154
	.quad	0x3fe7f3c69ccddbcf              # double 0.74850779176528615
	.quad	0x3feebdc5acb4c099              # double 0.960665547672778
	.quad	0x3fe4fc5605c6ca43              # double 0.65580273750521945
	.quad	0x3fa72300b99edc20              # double 0.04518892541766939
	.quad	0x3feb6faf8d27689e              # double 0.85738351410988733
	.quad	0x3fcb2c184b51b57c              # double 0.21228316953367343
	.quad	0x3fe0f0a7ea643497              # double 0.5293769433934753
	.quad	0x3fdc37feb8849834              # double 0.44091766375857167
	.quad	0x3fe18cd39e7ef6e0              # double 0.54844075161210171
	.quad	0x3fef0ead56ad93c5              # double 0.9705416386537925
	.quad	0x3fcc424183e085f8              # double 0.22077197017010497
	.quad	0x3fd5987b6c806ff8              # double 0.33743177028532001
	.quad	0x3fe974bbdc2d8194              # double 0.79549973491161773
	.quad	0x3fe7b9b3f4f42742              # double 0.7414188179256842
	.quad	0x3fdda89f1665db1e              # double 0.46341683566372349
	.quad	0x3fe43c30de96b65f              # double 0.63234752153739382
	.quad	0x3fe508eac138c55a              # double 0.65733850229859603
	.quad	0x3fe202607cfe278b              # double 0.56279014980940312
	.quad	0x3fd9eb9ea472a366              # double 0.4050060850082019
	.quad	0x3fed5b2680a64a71              # double 0.91737675787801554
	.quad	0x3fe18569b383d337              # double 0.54753575383674657
	.quad	0x3fe1a07bc9da5722              # double 0.5508402769507692
	.quad	0x3fe506255676e7f8              # double 0.6570002259024923
	.quad	0x3fe2fe6bb65a461a              # double 0.59355722060917349
	.quad	0x3fa957dec2334bc0              # double 0.049498521047687927
	.quad	0x3fefa58dffd45454              # double 0.98895931212121945
	.quad	0x3fc2ebdcde11ee70              # double 0.14782296031249897
	.quad	0x3fc139a5f1b01ca4              # double 0.13457178403061676
	.quad	0x3fe712396afb9a92              # double 0.72097464461406191
	.quad	0x3fd0b9d29d924156              # double 0.26134171855757893
	.quad	0x3fee9e2092ad2e73              # double 0.95680264137031512
	.quad	0x3fc9c85585dcadcc              # double 0.2014262107489756
	.quad	0x3fd9d30b79abaddc              # double 0.40350615388771671
	.quad	0x3fc5245f471e792c              # double 0.16517249081238938
	.quad	0x3fe3837bc1d4633c              # double 0.60980022294379621
	.quad	0x3fdbc0c756c76c66              # double 0.43364127611648084
	.quad	0x3fee415b8ffd7544              # double 0.94547823069630299
	.quad	0x3fc72d775b4b0438              # double 0.18107501943271287
	.quad	0x3fdf784b92a7c17e              # double 0.49171723672682066
	.quad	0x3fe3cea2961a325a              # double 0.61897401158200727
	.quad	0x3fce095a107aa348              # double 0.23466039471284206
	.quad	0x3feafc91481eb651              # double 0.84333099447185067
	.quad	0x3feec64d4cdceff4              # double 0.96170678150474353
	.quad	0x3fedf2379cebc20f              # double 0.93581753395670997
	.quad	0x3fd32acc2b2fe902              # double 0.29948715417380367
	.quad	0x3fd4c5e7687d201c              # double 0.32457909778577387
	.quad	0x3fb52e799fcac160              # double 0.082740403663370099
	.quad	0x3feea5c1031500f6              # double 0.95773363687479107
	.quad	0x3fe9785d15a2fb98              # double 0.79594282365711688
	.quad	0x3fe745f1a13a7e31              # double 0.7272880696290881
	.quad	0x3fe5af8a85998c2b              # double 0.67767835706434221
	.quad	0x3fef37924f1ef6ef              # double 0.97553363278686144
	.quad	0x3fe41851a81687a9              # double 0.62796862439812628
	.quad	0x3fd92805b794049e              # double 0.39306776931341314
	.quad	0x3fd5fe3619713368              # double 0.34364082798565798
	.quad	0x3fd23d3f1c80c4b4              # double 0.28498819144722209
	.quad	0x3fea556c85633dad              # double 0.82292772342946352
	.quad	0x3fcdd1cf45c15bc8              # double 0.23296538263340794
	.quad	0x3fe362debc8ad885              # double 0.60581909966164516
	.quad	0x3f9c85cc32f092e0              # double 0.027854147538294849
	.quad	0x3feb8949577207bf              # double 0.86050860480485614
	.quad	0x3fe9d86f90c1c318              # double 0.80767038605526675
	.quad	0x3feaa0e7a7aba226              # double 0.83214171169408213
	.quad	0x3fc26faa430a6fe8              # double 0.14403274796938992
	.quad	0x3fdd9e8232567e26              # double 0.46279959598357079
	.quad	0x3fe94d55d611c59a              # double 0.79069034395631665
	.quad	0x3fe652db34b184d2              # double 0.69761429111181372
	.quad	0x3fe8d25ca6518464              # double 0.77567894443576479
	.quad	0x3fee3ee3c7f952e6              # double 0.94517697389036637
	.quad	0x3fe045e69b8057d1              # double 0.50853281375270332
	.quad	0x3fd4db10c7570454              # double 0.32587069956577364
	.quad	0x3fe23eb31801388e              # double 0.57015375793868528
	.quad	0x3fcc6f0c4c16cf04              # double 0.22213891711509615
	.quad	0x3fedca59ecc773e2              # double 0.93095108266754445
	.quad	0x3fe583e9f97b3c74              # double 0.67235277869066445
	.quad	0x3fe9afcb85769d56              # double 0.80270935122545484
	.quad	0x3fbe4d5de73a3640              # double 0.11836802382659872
	.quad	0x3fd2616e27265e74              # double 0.28719667266111704
	.quad	0x3fc1c1d35efb14fc              # double 0.13872758996709667
	.quad	0x3fdea3e02b0bc622              # double 0.47875217632017286
	.quad	0x3fe34e9a3c4dccc8              # double 0.6033450296221412
	.quad	0x3fe63c4637895ca7              # double 0.69485770079599696
	.quad	0x3fd59117bd40a5fe              # double 0.33698075753872547
	.quad	0x3fe48dca66bf87eb              # double 0.64230842655183318
	.quad	0x3fe2029c857d9f4e              # double 0.56281877586750695
	.quad	0x3fe89df2f76da43e              # double 0.76928089452588444
	.quad	0x3fd507e429053724              # double 0.3286066437329842
	.quad	0x3fea1973cd524c8d              # double 0.81560697652675318
	.quad	0x3fdef429b9f068ec              # double 0.48365252645602541
	.quad	0x3fe727a18629694a              # double 0.72358776286572746
	.quad	0x3fe821f09cb6644d              # double 0.75414305313018704
	.quad	0x3fd57f1f3133681e              # double 0.33588390164152482
	.quad	0x3fd832986835a5e2              # double 0.37808809448924141
	.quad	0x3fe859644a610e5f              # double 0.7609120800702377
	.quad	0x3fe6fb8aed08d5fa              # double 0.71820589347652164
	.quad	0x3fe6041c78027c63              # double 0.68800185622593479
	.quad	0x3fe98dc8d0d43e1e              # double 0.79855767046860016
	.quad	0x3feb01dca2cd2e81              # double 0.84397727772871189
	.quad	0x3fc42482b9078980              # double 0.15736421618118968
	.quad	0x3fdf4b837f021996              # double 0.48898398783821884
	.quad	0x3fb89a74908ec4a0              # double 0.096106801311878431
	.quad	0x3fcaef567891e638              # double 0.21042900931552011
	.quad	0x3fe30b73a29e268d              # double 0.59514791260990452
	.quad	0x3fe2c2de371331c9              # double 0.58628760105926248
	.quad	0x3fc5256fa8307ad4              # double 0.16520496094104564
	.quad	0x3fdc659a7860504c              # double 0.44370137935152765
	.quad	0x3fb988b69b28f410              # double 0.099742329483845759
	.quad	0x3fcd44a07e8163d0              # double 0.22865682770750917
	.quad	0x3fe28c565aa7ed7e              # double 0.57963102060550376
	.quad	0x3fec6813c9a93c9a              # double 0.88770474802904009
	.quad	0x3fef91c4d00fa1dd              # double 0.98654404293943864
	.quad	0x3fd86f9919408b22              # double 0.38181140390422474
	.quad	0x3fb4dfae306642d0              # double 0.081538092438005138
	.quad	0x3fd828e2a87d59b2              # double 0.37749544576709149
	.quad	0x3fd9a0522a53e28a              # double 0.40041021474420602
	.quad	0x3fe36de7e6d76544              # double 0.60716624342163827
	.quad	0x3febe765750becd3              # double 0.87199662075672746
	.quad	0x3fe4b9e1a5146a6c              # double 0.64769060365808917
	.quad	0x3fea08f1c7d6e65b              # double 0.81359185248511368
	.quad	0x3fef9117e90834c8              # double 0.98646159662316623
	.quad	0x3fc5aeb3d3ec3810              # double 0.16939399574079106
	.quad	0x3fd9e7f0158172ae              # double 0.4047813615814374
	.quad	0x3fe05290964ecbba              # double 0.51007871014586859
	.quad	0x3fed8af9dd9f4310              # double 0.92321484838075385
	.quad	0x3fd5212eb55da520              # double 0.33015029632095327
	.quad	0x3fd86e99bef916a8              # double 0.3817505230875704
	.quad	0x3feb02ada36090a7              # double 0.84407693776713166
	.quad	0x3fd57e400d33d090              # double 0.33583070077225674
	.quad	0x3fe48d31b4d5e9fe              # double 0.64223561591580824
	.quad	0x3fef39707dd9c703              # double 0.97576164798940145
	.quad	0x3fd0875ad25e8180              # double 0.25826139968742012
	.quad	0x3fc781b753c3b090              # double 0.18364612188395713
	.quad	0x3fee4163b55bff0a              # double 0.94548211499929491
	.quad	0x3fac1e048fc6b200              # double 0.054916517782974239
	.quad	0x3fcf36d57af6d47c              # double 0.24386089805708255
	.quad	0x3fe6c5155c8da208              # double 0.71155803753669122
	.quad	0x3fe801847ec5cd66              # double 0.75018524894987304
	.quad	0x3fd325a440e581aa              # double 0.29917246186780722
	.quad	0x3fe8b3321e04abdb              # double 0.77187448370875289
	.quad	0x3fedb85d0a0d5b7b              # double 0.92875530207935186
	.quad	0x3fc694eedbc56fa8              # double 0.17642007571236928
	.quad	0x3fed9da0155050ed              # double 0.92549137270773729
	.quad	0x3fe69a0adb11d043              # double 0.70630400454548015
	.quad	0x3fe4916f11d82ba2              # double 0.64275315747487505
	.quad	0x3fe8d21ea3fff5c7              # double 0.77564937621326002
	.quad	0x3fde27586a554e18              # double 0.47115145095924182
	.quad	0x3fdba582a0e18bc4              # double 0.43197694502867656
	.quad	0x3f8c974bc2ea26c0              # double 0.013960449109862494
	.quad	0x3fe44d449091d59d              # double 0.63443210827124441
	.quad	0x3fcb29e1f62dd4f4              # double 0.21221565742931825
	.quad	0x3fdc819874a9c4a4              # double 0.44540988343130494
	.quad	0x3fccb8d223d724a8              # double 0.2243902850152939
	.quad	0x3fe91e4ca98f1ef4              # double 0.78494866482739533
	.quad	0x3fe3c76dc619d6d5              # double 0.61809433642948852
	.quad	0x3fe44cf8249a53ac              # double 0.63439566754333532
	.quad	0x3fd43f49f072426c              # double 0.31636284333311582
	.quad	0x3fe2c6126ddcfed1              # double 0.58667870958012192
	.quad	0x3fd063045c82e5a6              # double 0.25604352030094402
	.quad	0x3fe2237fb00bd54a              # double 0.56683334716823564
	.quad	0x3fe61d3ac7f73a23              # double 0.69106806808287435
	.quad	0x3fe5261e1d3c9cbf              # double 0.66090303144746787
	.quad	0x3fd4b80e690932ce              # double 0.32373390443244154
	.quad	0x3fcc86e2d4da7aa0              # double 0.22286639588579238
	.quad	0x3fc18f7f4ecf6d80              # double 0.13719168995053721
	.quad	0x3fef78cec403b3d8              # double 0.98349703105997843
	.quad	0x3f949b5c94146c20              # double 0.020123907602379032
	.quad	0x3fea375a5860d9ae              # double 0.81925694714919017
	.quad	0x3fed776bb72003d3              # double 0.92082772986042938
	.quad	0x3fee70fa3394334a              # double 0.95129118036275284
	.quad	0x3fdd5083a0a5dd78              # double 0.45803919494888801
	.quad	0x3fd4349800d975d6              # double 0.31571006854013939
	.quad	0x3fe361b2b71326d1              # double 0.60567603833006889
	.quad	0x3fd57d32bf522232              # double 0.33576649364161704
	.quad	0x3fedaa0b29901577              # double 0.92700727575053932
	.quad	0x3fef71f4fba1ceca              # double 0.98266076228034049
	.quad	0x3fb97bc6b7cc6b78              # double 0.099544925568279541
	.quad	0x3fed4a67273291b3              # double 0.91533239036339464
	.quad	0x3fe38e8b149ea88e              # double 0.61115030314728513
	.quad	0x3fd33be84dae9a4c              # double 0.30053145967614081
	.quad	0x3fd59f70559026fe              # double 0.33785637241145128
	.quad	0x3fecfe7810eb8c2a              # double 0.9060631113501405
	.quad	0x3feb1632e5cd9498              # double 0.84645981677444393
	.quad	0x3fd511a3fe86ccc2              # double 0.32920169693097645
	.quad	0x3fe0134ed8b5c336              # double 0.50235693288968863
	.quad	0x3fefd0cc6dd782d0              # double 0.99423810437664351
	.quad	0x3fe1ec3cb90fb78b              # double 0.56008754868320076
	.quad	0x3fd7f9cb2b1fdd1c              # double 0.37462119304059782
	.quad	0x3fe68ecc492e4ea0              # double 0.70493139546529804
	.quad	0x3fe6ae36beccd27d              # double 0.70876633897439911
	.quad	0x3fceb3cc46597850              # double 0.2398619979384784
	.quad	0x3fe2062a75224c33              # double 0.56325266721467526
	.quad	0x3fe4b7dd950ef98e              # double 0.6474445258425463
	.quad	0x3fdf0928a6e83cc2              # double 0.48493400859383595
	.quad	0x3fee417b5500cb9c              # double 0.94549337961358359
	.quad	0x3fdd185d8ae14850              # double 0.4546121460199446
	.quad	0x3fd2e3ee956e0ff2              # double 0.29516186325804405
	.quad	0x3fd066f52bddfe4c              # double 0.25628403934385768
	.quad	0x3fb512419dff3c00              # double 0.082309819291580766
	.quad	0x3fcbae6a152d9304              # double 0.21626020464022855
	.quad	0x3fbfd8b798d19b20              # double 0.12440059166838724
	.quad	0x3fea381f2973e08e              # double 0.81935079666347277
	.quad	0x3fc479c2040d5d44              # double 0.15996575544225256
	.quad	0x3fe9ee2dd6c2ff53              # double 0.8103245920719736
	.quad	0x3fec5ea494c90b8a              # double 0.88655308780322284
	.quad	0x3fe4fdc640c07adf              # double 0.65597832342958984
	.quad	0x3fd7ba3272003e0e              # double 0.37073956616311043
	.quad	0x3fd82b37ebd149f6              # double 0.37763784436279424
	.quad	0x3fbef08e7336da20              # double 0.12085810005996978
	.quad	0x3fecea10084da1de              # double 0.90357209798554172
	.quad	0x3fe5e28b4115d413              # double 0.68390429222074756
	.quad	0x3feca8333a31619f              # double 0.8955322395877835
	.quad	0x3feb861159227273              # double 0.86011569413274314
	.quad	0x3fd137ea2a67b81c              # double 0.26903776303413607
	.quad	0x3fccf2eaab0003dc              # double 0.22616322850811243
	.quad	0x3fe71f5e51ca8f54              # double 0.72257915472844525
	.quad	0x3febec9ada6e5983              # double 0.87263243353190523
	.quad	0x3fe46bb47cc9e9b5              # double 0.6381475865630849
	.quad	0x3fea7c7610f6d130              # double 0.8276930171328214
	.quad	0x3fe34024ffe21f19              # double 0.60158014275745864
	.quad	0x3fe223bf8d6dce3c              # double 0.56686380026662375
	.quad	0x3feddb3dd29792de              # double 0.93301287776247555
	.quad	0x3fc4d574df4f43b8              # double 0.16276417640486129
	.quad	0x3fe66f8444a8c1b9              # double 0.70111287508011977
	.quad	0x3fda4b8abcf709e8              # double 0.41086071447003158
	.quad	0x3fc046166e92d004              # double 0.12713890456291221
	.quad	0x3fe9316ee067774e              # double 0.78728431538523025
	.quad	0x3fd406e2db54ad7a              # double 0.31292029780407626
	.quad	0x3fe0b5cdba7c8b5b              # double 0.52219282553810886
	.quad	0x3fe5232c10b89240              # double 0.6605434729177162
	.quad	0x3fd26a77a7ab8fb6              # double 0.28774825452841968
	.quad	0x3fe029d427fe3a9d              # double 0.50510604678295901
	.quad	0x3fc2a608098b5ebc              # double 0.14569187608753065
	.quad	0x3fd6cd00e59f7fda              # double 0.3562624208843751
	.quad	0x3fd7656ba40057b2              # double 0.36556521430736233
	.quad	0x3fe52bc0b9e9cad6              # double 0.66159092246229068
	.quad	0x3fa5570096aad5b0              # double 0.041679399864203659
	.quad	0x3fead6608ec46cdb              # double 0.83866908916698024
	.quad	0x3fd7bd3528aa43aa              # double 0.37092331858826333
	.quad	0x3fd772a09aabd928              # double 0.36637129883401309
	.quad	0x3fe9a04ce0fcc0f8              # double 0.80081790869556269
	.quad	0x3fd5437254fda446              # double 0.33224161434060695
	.quad	0x3fa7262e47955fa0              # double 0.045213171232432403
	.quad	0x3fe0b007b0219432              # double 0.52148804092997225
	.quad	0x3fed456bc5e129eb              # double 0.91472424171780398
	.quad	0x3fe660e045a0c592              # double 0.6993256912157213
	.quad	0x3fe49fdc6d102457              # double 0.64451428700807412
	.quad	0x3fe13cdf2a417bf6              # double 0.53868063214383599
	.quad	0x3fe66e0f15b3011a              # double 0.7009349273503489
	.quad	0x3fe4fbc18616bc2a              # double 0.65573192776890221
	.quad	0x3fd99fac92f51c44              # double 0.40037073470415785
	.quad	0x3fb2f44d6bf524b8              # double 0.074040259224733229
	.quad	0x3fe6d94d5b9c91b4              # double 0.71402614491358074
	.quad	0x3fe776db088479d9              # double 0.7332587400776972
	.quad	0x3fe4a8248d46a306              # double 0.64552524178461179
	.quad	0x3fc88b2183efc0f4              # double 0.19174593870366829
	.quad	0x3fc9878b9eecacc4              # double 0.19944901714311503
	.quad	0x3fe3d8c88c15e457              # double 0.62021281586124644
	.quad	0x3fe48322497a77b4              # double 0.6410075602650438
	.quad	0x3fe00ad8a6da6120              # double 0.50132401073918587
	.quad	0x3fe02571d4aa5007              # double 0.5045708802813359
	.quad	0x3fea515a3dc20cf8              # double 0.82243072568999676
	.quad	0x3fdcd4df333e9bfa              # double 0.4504926681933622
	.quad	0x3fb3b2f8f546ef28              # double 0.076949653513051275
	.quad	0x3fef2b8587108ed1              # double 0.97406269435711057
	.quad	0x3fe7cfd39d9369f3              # double 0.74411946083574632
	.quad	0x3fe08a9f2c0f1344              # double 0.51692160229922779
	.quad	0x3fd76b51888c5f98              # double 0.36592520079420288
	.quad	0x3fd4e736ea052848              # double 0.32661221364526627
	.quad	0x3fed80129045b31f              # double 0.92188385179688115
	.quad	0x3fd6ee35216d7ec6              # double 0.35828903450417859
	.quad	0x3fee926e2f87c15a              # double 0.95537480624447402
	.quad	0x3fe1efaa24970350              # double 0.56050593515838365
	.quad	0x3fd92fd6d8ebefbe              # double 0.39354487594368581
	.quad	0x3fd412a3e74b080c              # double 0.31363771044937105
	.quad	0x3fd36445795ec392              # double 0.30299507954173877
	.quad	0x3fe81c415f8ff8b8              # double 0.75344914116410333
	.quad	0x3fe1261df6fc3e39              # double 0.53590296019860439
	.quad	0x3fe33c5199cae877              # double 0.60111312902087277
	.quad	0x3fe24625f763e365              # double 0.57106302564998812
	.quad	0x3fe5f1499abf1c02              # double 0.68570404266290574
	.quad	0x3fec4eac19c71682              # double 0.88460354838089494
	.quad	0x3feb74fc8e164afe              # double 0.85803058387168085
	.quad	0x3fddbfaca1f9ae72              # double 0.46482387369062572
	.quad	0x3fbc7196efe77618              # double 0.11110823971781547
	.quad	0x3fe62e57546ed12d              # double 0.69315687647625668
	.quad	0x3fe4196967d2e713              # double 0.62810201910108032
	.quad	0x3fb3eeca8c48f398              # double 0.077862414597758778
	.quad	0x3fe5196b986a402d              # double 0.65935306328356591
	.quad	0x3fe2561e2164d774              # double 0.57301241419075533
	.quad	0x3fd9272fb37c2564              # double 0.39301674392534935
	.quad	0x3fe98f5e73ee4af2              # double 0.79875109331837124
	.quad	0x3fee442c2b130fdb              # double 0.94582184231739619
	.quad	0x3f97516daff03040              # double 0.022771562446038951
	.quad	0x3fe93ecc56a1bb58              # double 0.78891579551951008
	.quad	0x3fd6e94ef0d74db2              # double 0.35799001235610739
	.quad	0x3fe654ac14725135              # double 0.69783596032588113
	.quad	0x3fcf98bc24660a10              # double 0.24684860017085031
	.quad	0x3fe1e60a5f9f3b33              # double 0.55933111835643101
	.quad	0x3fd55107d7dc9cc6              # double 0.33307071762324048
	.quad	0x3fd92f2ba991c8ea              # double 0.39350406226652856
	.quad	0x3fcf8ecaec9004a8              # double 0.24654518652827062
	.quad	0x3fd6e619f1e961b8              # double 0.35779427169975575
	.quad	0x3fd02b5a9a28a406              # double 0.2526461129623957
	.quad	0x3fd4aa7e79ed94f0              # double 0.32290613085781583
	.quad	0x3fc64c49f2e4ce5c              # double 0.17420315132186459
	.quad	0x3fb8f5f6d6033678              # double 0.097503115891606984
	.quad	0x3fc785567e10809c              # double 0.18375664859286622
	.quad	0x3fd2479a0d479ac4              # double 0.28562022492262096
	.quad	0x3fd3cea1f09ed58a              # double 0.30948685167398848
	.quad	0x3fe5bbe5a12f4d59              # double 0.6791866443767659
	.quad	0x3feac3378efbb732              # double 0.83633020330828445
	.quad	0x3fc26964cf582784              # double 0.14384136318431839
	.quad	0x3fb813ecd186a960              # double 0.094054032472433046
	.quad	0x3fefa175844df083              # double 0.98845935669625395
	.quad	0x3fd3cc6e422fe51e              # double 0.30935245956023205
	.quad	0x3fd55f8e6851f812              # double 0.33395729243773176
	.quad	0x3fe14d88961e7d9f              # double 0.5407145435346371
	.quad	0x3fd9d918ebb89d22              # double 0.40387557048457456
	.quad	0x3feee676d52a27ee              # double 0.96563283570980984
	.quad	0x3fe33c4f55eb7cb8              # double 0.60111204892373049
	.quad	0x3fa143223daa8da0              # double 0.033715314891448189
	.quad	0x3fe813a27a7d96d4              # double 0.7523968117136186
	.quad	0x3febe68c83247eda              # double 0.8718931733492028
	.quad	0x3fe8734a2762e503              # double 0.7640734452499206
	.quad	0x3fef910711e916e8              # double 0.98645356653352411
	.quad	0x3fef8bc55464db5d              # double 0.98581186755368899
	.quad	0x3fece3d3ad6253ac              # double 0.90281089653091362
	.quad	0x3f5086ad321a5800              # double 0.0010086718906783254
	.quad	0x3fbd61dcfb497d00              # double 0.11477452406824185
	.quad	0x3fe8b743279c5b7d              # double 0.77237088905791007
	.quad	0x3febe0e486618f67              # double 0.87120271917636394
	.quad	0x3fe55b8478acf5b7              # double 0.66742156571824907
	.quad	0x3fe00744e2a1f9b1              # double 0.50088733925058737
	.quad	0x3fda62f44d7f2b96              # double 0.41228969162028173
	.quad	0x3fe5d31b3182255d              # double 0.68201980275732021
	.quad	0x3fed03ea82833f90              # double 0.90672803393134593
	.quad	0x3fe5fbcc335a1480              # double 0.68698701886809488
	.quad	0x3fd6ad97759fdf22              # double 0.3543451927830451
	.quad	0x3fe4c9811ac0fad2              # double 0.64959769463879469
	.quad	0x3fe2e3467a17b782              # double 0.59024356695384506
	.quad	0x3fe089338a0bb484              # double 0.51674820863776505
	.quad	0x3fe3ca5c29e41a16              # double 0.61845215017166555
	.quad	0x3fd72fa0b1130e7e              # double 0.3622819642298295
	.quad	0x3fed687a2aabf276              # double 0.91900356611547696
	.quad	0x3fec6ca9575f5e8f              # double 0.8882643419737678
	.quad	0x3fbc47fce5925070              # double 0.11047344784521029
	.quad	0x3fe282f0e70cfbe8              # double 0.57848401190846932
	.quad	0x3fe58ec6095b195c              # double 0.67367841555896346
	.quad	0x3fc7907daf32aa0c              # double 0.18409701399407685
	.quad	0x3fa7b8a19506b560              # double 0.046330499116588042
	.quad	0x3fd7d1005d44f0c2              # double 0.37213143452005337
	.quad	0x3fdecb9d5895d2ae              # double 0.48117765093710829
	.quad	0x3fa7cb130c0d6e90              # double 0.046471209737061092
	.quad	0x3fab55690edbd430              # double 0.053386004508788054
	.quad	0x3fef4770328bf12f              # double 0.97747049209968916
	.quad	0x3fcea7b43a1b6148              # double 0.23949292027715274
	.quad	0x3fefa3428eac7bda              # double 0.98867919794053738
	.quad	0x3fe9c256e91ff713              # double 0.8049730828495022
	.quad	0x3fe445128e15bd56              # double 0.63343169928513521
	.quad	0x3fb00ce3d4963160              # double 0.062696685219810089
	.quad	0x3fe80d28eeb5947a              # double 0.75160643217954193
	.quad	0x3fdc553de7778c46              # double 0.44270274738500281
	.quad	0x3fe189de365b5bf2              # double 0.54807959190918454
	.quad	0x3fe729eb81329e00              # double 0.7238671801941905
	.quad	0x3fd9d5ee87ff0836              # double 0.40368235855942503
	.quad	0x3fde44da3f12c744              # double 0.47295242461688169
	.quad	0x3fe086f282fb1ac0              # double 0.5164730604381802
	.quad	0x3fdecb9a8cfff62c              # double 0.481176984496275
	.quad	0x3fdc517da701dfb2              # double 0.44247380551632454
	.quad	0x3fe8a291fe64ee42              # double 0.76984500585917481
	.quad	0x3fe3c375de87e2ee              # double 0.6176099153809369
	.quad	0x3fc3853062802680              # double 0.1525021058044338
	.quad	0x3fea5351bafc7e6c              # double 0.82267080803644665
	.quad	0x3fe653e87cd67d41              # double 0.69774269468681649
	.quad	0x3fef71e5b5b401a7              # double 0.98265347947021985
	.quad	0x3fc8ae8f3d11fb28              # double 0.19282713396020168
	.quad	0x3f9ac2263a26dea0              # double 0.02613124589853888
	.quad	0x3fdc4ed4b520328e              # double 0.44231145561278928
	.quad	0x3fbbc9b58309e898              # double 0.10854658555209296
	.quad	0x3fb0fb4efed15920              # double 0.066334664546364497
	.quad	0x3fdef6629b1405e6              # double 0.48378815788609442
	.quad	0x3fe2e163d30d40c0              # double 0.59001342030571635
	.quad	0x3fde4a68233c1fe0              # double 0.47329142990974837
	.quad	0x3fe7564f9d5b1e2e              # double 0.72928601010875638
	.quad	0x3fe8e4427d5c4b47              # double 0.77786373600461267
	.quad	0x3fed44d4b3d00771              # double 0.91465220565463146
	.quad	0x3fdd2c1a20a91fae              # double 0.45581677617564764
	.quad	0x3fee7028e7d9adea              # double 0.95119138034118333
	.quad	0x3feb130e17c9ebae              # double 0.84607605596771918
	.quad	0x3fe212aaa59e371f              # double 0.56477863642951209
	.quad	0x3fdb423d5af6cd36              # double 0.42591794856271592
	.quad	0x3fe8870b4bf4bcce              # double 0.76648487887532624
	.quad	0x3fed67d069985b56              # double 0.9189226210026884
	.quad	0x3fc33ae989ccaf7c              # double 0.15023535946363242
	.quad	0x3fd89313f0227710              # double 0.3839769215645541
	.quad	0x3fe621e6fdbb2362              # double 0.69163846546971919
	.quad	0x3fecb51ad1db69ee              # double 0.89710751521789489
	.quad	0x3fe419a862a7c4c8              # double 0.62813205021498053
	.quad	0x3fdfabfd36f06c84              # double 0.49487238278533874
	.quad	0x3fd78c5b3a751ba6              # double 0.367941672408444
	.quad	0x3fe050fb2b337cf3              # double 0.50988539159507551
	.quad	0x3fc6fbf32d379c7c              # double 0.17956390102265007
	.quad	0x3fd368df3064f166              # double 0.30327586866385159
	.quad	0x3fe45680dce88d1a              # double 0.63555949350521534
	.quad	0x3fe62b8e9d72d7e8              # double 0.69281702758484887
	.quad	0x3fdbdf9e32124bb0              # double 0.43552355661193598
	.quad	0x3feb8665d3f6b5e7              # double 0.86015597724116055
	.quad	0x3fe96b90e70ddd0a              # double 0.79438061836018048
	.quad	0x3fe33e8d7f577695              # double 0.60138583060661921
	.quad	0x3fef6e2844504aa0              # double 0.98219693510539585
	.quad	0x3fedf784bf7222c8              # double 0.93646466628805402
	.quad	0x3fc065ce0e977f5c              # double 0.12810683929910283
	.quad	0x3fc79cc346d406d0              # double 0.18447152098092667
	.quad	0x3fd8f3600c7e9126              # double 0.38985444278866266
	.quad	0x3fe17bf6cfe28774              # double 0.54638233759418009
	.quad	0x3fee21eb094f3e07              # double 0.94164039438504765
	.quad	0x3fdd010ad02494b2              # double 0.45318861319021686
	.quad	0x3fd5219405a88f80              # double 0.3301744513757896
	.quad	0x3fe94f44557ecdc1              # double 0.79092613886171403
	.quad	0x3fd6864cfd83622a              # double 0.35194706685209332
	.quad	0x3fd1d63bedb5590c              # double 0.27870081151685677
	.quad	0x3fe79b27d3172f16              # double 0.7376898882734817
	.quad	0x3fd56300c22e5846              # double 0.33416766131393094
	.quad	0x3fe6aa62d4785bad              # double 0.70829907892299604
	.quad	0x3fe75638640d2823              # double 0.7292749361161025
	.quad	0x3fe11757008e33fc              # double 0.53409910305492714
	.quad	0x3fd5cbc806dab38c              # double 0.34056282681813665
	.quad	0x3fca02bd1e93222c              # double 0.20320857994944796
	.quad	0x3fd277bdc8a00c5c              # double 0.28855843155196736
	.quad	0x3fd6f2e4be2353b8              # double 0.35857504432834331
	.quad	0x3fd1853bf75e3f68              # double 0.27375697285696399
	.quad	0x3fe6bf7f291209c7              # double 0.71087606450628804
	.quad	0x3fc454ead8ceffb8              # double 0.15884147249562175
	.quad	0x3fdeea64cfca4072              # double 0.48305626193997064
	.quad	0x3fc2ca294baf47f0              # double 0.14679447360555242
	.quad	0x3fed83adecf6aa1f              # double 0.92232414514484506
	.quad	0x3fce8e06b446a9a8              # double 0.23870929529705376
	.quad	0x3fc9da8b09b4a1c0              # double 0.20198190664201654
	.quad	0x3fe2fd6155a3fbc7              # double 0.59343020178482042
	.quad	0x3fd618d88e2d8cf4              # double 0.34526647457660364
	.quad	0x3fe5e065f0ba8dee              # double 0.68364235894517633
	.quad	0x3fe9b8e36c8b0baf              # double 0.8038193817122784
	.quad	0x3fef92593d9b9f7f              # double 0.98661481888574076
	.quad	0x3fef596b76c9005d              # double 0.97966550064303314
	.quad	0x3fe5e6745fa2f45d              # double 0.6843816631222911
	.quad	0x3feb848cf34ef9a4              # double 0.8599304916495396
	.quad	0x3fdc75f846cf9718              # double 0.44470030703665619
	.quad	0x3fee0ac7a1cfeeeb              # double 0.93881589511826513
	.quad	0x3fe933b65fc9efba              # double 0.78756254872086306
	.quad	0x3fea2ba03c3b44a3              # double 0.81782542957275373
	.quad	0x3fdb92e529a1a5b0              # double 0.43084076943940897
	.quad	0x3fe7947324f23367              # double 0.73687131134066142
	.quad	0x3fd7352138725e68              # double 0.36261778366449571
	.quad	0x3fd51fc2ed48ffb4              # double 0.33006356403711412
	.quad	0x3fdf8921da936e12              # double 0.4927448877840287
	.quad	0x3fde2fae98330052              # double 0.47166027892308648
	.quad	0x3fe461d730f08cfd              # double 0.63694343145871779
	.quad	0x3fb73ee66e7d6570              # double 0.090803529715591357
	.quad	0x3fe90cd0593b2820              # double 0.78281419208474645
	.quad	0x3fc65822aac6f7a8              # double 0.17456467951518317
	.quad	0x3fdb2422ba131806              # double 0.42408054515215132
	.quad	0x3fe3b836f797a61e              # double 0.61623714788328576
	.quad	0x3feeaf8b28352a01              # double 0.95892865994511577
	.quad	0x3fe6c8d64db4cea8              # double 0.71201625039107785
	.quad	0x3fe00dc83756624c              # double 0.50168238456814995
	.quad	0x3fd7e52c30ce760c              # double 0.37336258665331523
	.quad	0x3fd5aa0bdfd93cca              # double 0.33850380764210952
	.quad	0x3fe832561891abd2              # double 0.75614456938398633
	.quad	0x3fe4b73ece0d2bdb              # double 0.64736881489204323
	.quad	0x3fe3a0d3fb8b49eb              # double 0.6133823311777723
	.quad	0x3fe2dc70b5934e57              # double 0.58940921272228308
	.quad	0x3fb18ee6b9ee0758              # double 0.068586750405328245
	.quad	0x3fe2b5224aeae5a9              # double 0.58461107857072137
	.quad	0x3fdbd60873af27b6              # double 0.43493853852543951
	.quad	0x3fda5023f2650312              # double 0.4111413828978111
	.quad	0x3fc993553ea5bd88              # double 0.19980874594646658
	.quad	0x3feb18b63e8d90a6              # double 0.8467665883768134
	.quad	0x3f687d55fe40dc00              # double 0.0029894523195497236
	.quad	0x3fbd1d6d078273f0              # double 0.11373025353755373
	.quad	0x3fca432d50f16388              # double 0.20517507984439143
	.quad	0x3fea790bd25af762              # double 0.8272761448385888
	.quad	0x3febeb042b5f8723              # double 0.87243851157493102
	.quad	0x3fb8984a220f99f0              # double 0.096073754611644579
	.quad	0x3fdfea7bd20ffd94              # double 0.49868674768364341
	.quad	0x3fef444e7a6ebd6e              # double 0.9770882025967873
	.quad	0x3fe556c0d7c59747              # double 0.6668400015157453
	.quad	0x3fe1b52ad26ca583              # double 0.55336514566913342
	.quad	0x3fc697ee857911a4              # double 0.17651158826096236
	.quad	0x3fe3375f72f26ef8              # double 0.60050938082301197
	.quad	0x3fdea4d12dc9fafc              # double 0.47880963775234853
	.quad	0x3f933b6e9d67b560              # double 0.018781402928586544
	.quad	0x3fddedaf2fba2efc              # double 0.46763209973208553
	.quad	0x3fd4e8fc576a0084              # double 0.32672031914263067
	.quad	0x3fa6bcff87df70d0              # double 0.044410691581761363
	.quad	0x3fc386c90617de10              # double 0.15255081937333204
	.quad	0x3fa3c0a3f37224f0              # double 0.03857910486937921
	.quad	0x3fdb557d822f4b8e              # double 0.4270929118476311
	.quad	0x3fe7eaac83755f73              # double 0.74739671397672536
	.quad	0x3fdbf3e894c67e70              # double 0.43676199463695919
	.quad	0x3fd055c654b64b2c              # double 0.25523527405418878
	.quad	0x3fddef3e77e3605c              # double 0.46772729595023121
	.quad	0x3fe6b38c071dddc5              # double 0.70941735639547032
	.quad	0x3fca834c06ed75d0              # double 0.20713186586628618
	.quad	0x3fa4108b7ac13b80              # double 0.039188727125853084
	.quad	0x3fbbe80853614870              # double 0.10900928531307996
	.quad	0x3fb949c4876ba968              # double 0.098781855641993155
	.quad	0x3fdbd74f22d30186              # double 0.43501642609410174
	.quad	0x3fd4b12e807aed10              # double 0.3233143095673805
	.quad	0x3fefdcf2723ad3e8              # double 0.99572107611186044
	.quad	0x3feca5c8faeb6c01              # double 0.89523743636834763
	.quad	0x3fc2221eec092ca4              # double 0.14166628384768842
	.quad	0x3fce99dfbf339fd8              # double 0.23907086215990492
	.quad	0x3fef80147c989125              # double 0.98438476882123338
	.quad	0x3fc0745a1cc653cc              # double 0.12855078129783093
	.quad	0x3fea68fe5f270953              # double 0.82531660637350013
	.quad	0x3fde4818b9aff1ba              # double 0.47315042623065617
	.quad	0x3fe449644213f9f1              # double 0.63395893960824712
	.quad	0x3fc8f8feae753434              # double 0.19509871977280258
	.quad	0x3fe4dc2887da0af8              # double 0.65187479527989378
	.quad	0x3fd1ba290016e808              # double 0.27698731430757606
	.quad	0x3fe53a5a97e78f98              # double 0.6633732764134832
	.quad	0x3fd1fd6254e65376              # double 0.2810903386210194
	.quad	0x3fe97296a39cc9a9              # double 0.79523784595067071
	.quad	0x3fea99036e8c52bf              # double 0.83117839423592688
	.quad	0x3f97077031e2eee0              # double 0.022489312214687085
	.quad	0x3fe632a87a867f0a              # double 0.69368385248887532
	.quad	0x3fe14305206a41ec              # double 0.53943115550106091
	.quad	0x3fda41f2957a919e              # double 0.41027512166535895
	.quad	0x3fe2261071050a28              # double 0.56714651178510156
	.quad	0x3feec99a10b22c43              # double 0.96210959683356411
	.quad	0x3fb7f4a3c925d2e0              # double 0.093576656921708245
	.quad	0x3fe6654da371ea85              # double 0.69986612246368962
	.quad	0x3fe7783cc8537fc3              # double 0.73342742086605772
	.quad	0x3fe90c6fb04b1397              # double 0.78276810104636041
	.quad	0x3fd9e38eb94107f8              # double 0.40451400843824059
	.quad	0x3fe6a354b3b9934f              # double 0.7074378500225097
	.quad	0x3f8e2ae02c47cbc0              # double 0.014730216361362625
	.quad	0x3fe59e8b241316ab              # double 0.67560345693410306
	.quad	0x3fdfb19a68645496              # double 0.49521503633997932
	.quad	0x3fed4541193226ce              # double 0.91470389290881271
	.quad	0x3f96524dadcf5d00              # double 0.021798337682267466
	.quad	0x3fe3abcddd2428f9              # double 0.61472218696260861
	.quad	0x3fde143e35a137a0              # double 0.46998553502350582
	.quad	0x3fc3b968cc3cb918              # double 0.15409574482459543
	.quad	0x3f9fe175e9d4da00              # double 0.03113350143140714
	.quad	0x3fd86e7fe4952d6c              # double 0.38174435923129724
	.quad	0x3fca799e9a33d7d8              # double 0.20683653382701439
	.quad	0x3faf811cee4b2f20              # double 0.061531929100594462
	.quad	0x3fe108857b72025c              # double 0.5322902117769206
	.quad	0x3fefc1744c882483              # double 0.99236502597445086
	.quad	0x3fcf0716f0bac220              # double 0.24240385774966544
	.quad	0x3fe1efb590ac0fbd              # double 0.56051138168594827
	.quad	0x3fe67221be7311f4              # double 0.70143210599104444
	.quad	0x3fc264ad60c33c18              # double 0.14369742607820579
	.quad	0x3fea2e277c3b9196              # double 0.81813406242558773
	.quad	0x3fe12159dd38a6e8              # double 0.53532117087635545
	.quad	0x3fd854af1f0a196e              # double 0.38016870528408375
	.quad	0x3fe98cb279dbe104              # double 0.79842494774405325
	.quad	0x3fedf978772271c3              # double 0.93670295017687299
	.quad	0x3fc4b36097c43710              # double 0.16172416124793942
	.quad	0x3fedda41d59bb860              # double 0.93289272041671367
	.quad	0x3fe092db9c0d6c03              # double 0.51792698363294709
	.quad	0x3fe524920b6ceea6              # double 0.66071417075678052
	.quad	0x3fee8ec52ae5135b              # double 0.95492800119300669
	.quad	0x3fcc9cd51e686b40              # double 0.22353614792594989
	.quad	0x3fe0784697ff63fb              # double 0.51468209921870256
	.quad	0x3fb84cf161f10300              # double 0.094924055491912184
	.quad	0x3fdabdb06ffb409e              # double 0.4178277104920286
	.quad	0x3fe58474e0c09ac6              # double 0.67241901299424778
	.quad	0x3fec249ddfd01d1a              # double 0.87946981156793247
	.quad	0x3fcbecdd93ef3f3c              # double 0.21816606257788773
	.quad	0x3fe64e33d35e4a9a              # double 0.69704619677425517
	.quad	0x3f7847fdc2a42f80              # double 0.0059280312073147767
	.quad	0x3f9d8b3ebcd76a20              # double 0.028851490283935743
	.quad	0x3fde203dde1deb0e              # double 0.47071787539577847
	.quad	0x3fea535d0c90c2f5              # double 0.82267620519823359
	.quad	0x3fd2f3f6e83ec8f8              # double 0.29614041023445692
	.quad	0x3fe2bab11ba1b95e              # double 0.58528952977011861
	.quad	0x3fed15a6eecbfda5              # double 0.90889307632453564
	.quad	0x3fe4a8bf7d88f782              # double 0.64559912222442528
	.quad	0x3fcf0b2e68fb92fc              # double 0.24252872587307894
	.quad	0x3fc7f75724773598              # double 0.18723572998571281
	.quad	0x3fd6c386f1b2f606              # double 0.35568402865814652
	.quad	0x3fbf4477a8fcde08              # double 0.12213847995450788
	.quad	0x3fd3baeecad967e4              # double 0.30828447160240402
	.quad	0x3fe42d821a953261              # double 0.63055520240738983
	.quad	0x3fe91c967dcc137b              # double 0.78473972863922314
	.quad	0x3fadddad80a6e290              # double 0.058331891970231031
	.quad	0x3fb22d1d6e631c58              # double 0.071000899744022461
	.quad	0x3fd111548bb47bb8              # double 0.26668275492732674
	.quad	0x3fb6e0dbf2e38898              # double 0.089368578719162151
	.quad	0x3fc29b8c51af6214              # double 0.14537195194749641
	.quad	0x3fe766b19d8d3d59              # double 0.73128586551494401
	.quad	0x3fb14d4845da7158              # double 0.067585484556223263
	.quad	0x3fc6bfab2b978880              # double 0.17772426250946083
	.quad	0x3fd13297f87da9c4              # double 0.26871299044310271
	.quad	0x3fd1509823c63e72              # double 0.27054408544152075
	.quad	0x3fb8ed2caf65e580              # double 0.097368996450219569
	.quad	0x3fe9bee8bba9fe47              # double 0.80455433514720986
	.quad	0x3fe843f47969bad3              # double 0.75829528535345003
	.quad	0x3fafb9bb757bc720              # double 0.061963899699448044
	.quad	0x3fe7779aeb4a0170              # double 0.73335023836993507
	.quad	0x3fdd4c4b329b7b24              # double 0.457781600400198
	.quad	0x3feb430500eec035              # double 0.85193109686043178
	.quad	0x3fe1f79faf3a8638              # double 0.56147751068437568
	.quad	0x3fc5e4cbdd26e2ac              # double 0.1710448102801555
	.quad	0x3fd9cb349bec4080              # double 0.40302767969934195
	.quad	0x3fcbdf921d0a8514              # double 0.21776033800146222
	.quad	0x3fd39625ec7d1782              # double 0.30603931517213578
	.quad	0x3fb483bb421f3d08              # double 0.080135062830994142
	.quad	0x3fd250d413a81a68              # double 0.28618337554545414
	.quad	0x3fe0dd1d73c1cda3              # double 0.52699158295438442
	.quad	0x3fef0d3bc8a4321b              # double 0.97036542117854496
	.quad	0x3fd2d31de03d0340              # double 0.29413554094576355
	.quad	0x3fed35c0dabf8b81              # double 0.91281168674719038
	.quad	0x3fe6c16f15f553c9              # double 0.71111254013759961
	.quad	0x3f9c27432a3b4b20              # double 0.027493524029362892
	.quad	0x3fd3c79d30e0371c              # double 0.30905847332984293
	.quad	0x3fc596e305287228              # double 0.16866719962935517
	.quad	0x3fe6f09f24da9e55              # double 0.7168727607540385
	.quad	0x3fde8603c531e64a              # double 0.47692960984531807
	.quad	0x3fe83b5ce8a3e46b              # double 0.75724645078220243
	.quad	0x3fde6897aef807a4              # double 0.47513382040789964
	.quad	0x3fe1889278403010              # double 0.54792140470954287
	.quad	0x3febf9caae4753d5              # double 0.87424215353768864
	.quad	0x3fb85404a64110a0              # double 0.095032015408892167
	.quad	0x3fdcc2377a478d20              # double 0.44935404721600669
	.quad	0x3fda165f3aeba678              # double 0.40761547807651466
	.quad	0x3fe4abc3afc03a46              # double 0.64596733404489082
	.quad	0x3fd2c9db2791445a              # double 0.29357031692513191
	.quad	0x3fe3bbbd6887fb0f              # double 0.6166674653648857
	.quad	0x3fe500c21fe94c88              # double 0.65634256584816431
	.quad	0x3fe5a83924a1020a              # double 0.67678506044473008
	.quad	0x3fe8eff926b0e6b7              # double 0.7792936092075341
	.quad	0x3f85285af9033740              # double 0.010330877994785603
	.quad	0x3fe6b4f9d10ed360              # double 0.70959177810309981
	.quad	0x3fdbb1d1fc42fb74              # double 0.43272828707625099
	.quad	0x3fd83c52cf5635ee              # double 0.37868185279589184
	.quad	0x3fe98c628fdc4d49              # double 0.7983868417526675
	.quad	0x3fea7a167ecbfa18              # double 0.82740330471989676
	.quad	0x3fc1114b80e0df24              # double 0.13334029953852522
	.quad	0x3fdb72e01c02ba96              # double 0.42888643966117834
	.quad	0x3fef15004c7c82d9              # double 0.97131361902946899
	.quad	0x3f943784f8b06c60              # double 0.019743039778500893
	.quad	0x3fe52348ab121852              # double 0.66055711185686961
	.quad	0x3fd457248a53fadc              # double 0.31781877049063012
	.quad	0x3fbb9c29dc75dc10              # double 0.10785161621412009
	.quad	0x3fd1464581c5d884              # double 0.26991403267982883
	.quad	0x3fad918807d208f0              # double 0.057750941233296049
	.quad	0x3febf0b9f783fc00              # double 0.87313555090793216
	.quad	0x3fd9a3ec2cf9957a              # double 0.40063003913959216
	.quad	0x3f8dae7f8fccdf40              # double 0.014492985320984197
	.quad	0x3fe2c8d494f20db8              # double 0.5870154294101928
	.quad	0x3fee6a4a23b20128              # double 0.95047480556244057
	.quad	0x3fbc48ccb22cbb08              # double 0.11048583364457099
	.quad	0x3fd762bf027d7b8e              # double 0.36540198558025672
	.quad	0x3fa87a63e722d690              # double 0.047808763470510773
	.quad	0x3fe063bc1eee456f              # double 0.512174663936248
	.quad	0x3fe71f1ee2ca198b              # double 0.72254890723051923
	.quad	0x3feaf588a7a8fdd8              # double 0.8424723887073311
	.quad	0x3feb6ae00fd69106              # double 0.85679629414929148
	.quad	0x3fc41d846d918e84              # double 0.15715079641369212
	.quad	0x3feeb08cbf5af016              # double 0.95905148862903178
	.quad	0x3fed41f379ec6552              # double 0.91430066884201211
	.quad	0x3fe2f25942e4b29a              # double 0.59208357873065443
	.quad	0x3fe9dc10b485ea48              # double 0.80811343439501915
	.quad	0x3fe55f661a568ea3              # double 0.66789536613619693
	.quad	0x3fc84c0c34326620              # double 0.18982079075503666
	.quad	0x3fefc97efec63a5f              # double 0.99334668884860011
	.quad	0x3fe9de42b894633e              # double 0.80838142443381122
	.quad	0x3fe11bc8bf63f101              # double 0.53464162236153367
	.quad	0x3fe2016b1651d3be              # double 0.56267313346199166
	.quad	0x3fde95af8704beba              # double 0.47788608727840265
	.quad	0x3fe099a3480ade11              # double 0.51875461645880894
	.quad	0x3fe927434d80ce72              # double 0.7860428346379662
	.quad	0x3fe7ad4bce0a772d              # double 0.73990431063041273
	.quad	0x3fe400d3cae615e6              # double 0.62510099056879365
	.quad	0x3fe920b1e74f3c3e              # double 0.78524108102454426
	.quad	0x3feb6cd6baf29063              # double 0.85703598511873869
	.quad	0x3fe6b87535d6f03e              # double 0.7100168277315857
	.quad	0x3fd6ec4b90897d4c              # double 0.35817231287906703
	.quad	0x3fc09c757b05ae84              # double 0.12977474696105074
	.quad	0x3fdc431926537da2              # double 0.44159535162722297
	.quad	0x3fdfa79749c974e2              # double 0.49460394101863703
	.quad	0x3fdcef48c709fde4              # double 0.45210475385098747
	.quad	0x3fd0952d08b63d3c              # double 0.2591049752308725
	.quad	0x3fe31c4613277571              # double 0.59720138302843229
	.quad	0x3fa7da2e91895840              # double 0.046586470857321149
	.quad	0x3fe515726c49aaaa              # double 0.65886803770020674
	.quad	0x3fd3d6949244c45c              # double 0.30997194561047592
	.quad	0x3fedb2090aff471b              # double 0.92798282764326545
	.quad	0x3fd8dd7cf174f0c8              # double 0.38851855830922633
	.quad	0x3fefe33884215ce1              # double 0.99648690993026545
	.quad	0x3fe6ed6327a159ca              # double 0.71647794475830406
	.quad	0x3fd76b2d54a52244              # double 0.36591656938665929
	.quad	0x3fefb6d7833a735a              # double 0.99106956129581225
	.quad	0x3fdc7910839155b4              # double 0.44488919113549774
	.quad	0x3fe66ab299760b31              # double 0.70052461598274907
	.quad	0x3fc1d173dc009304              # double 0.13920448534295116
	.quad	0x3feff608908352b9              # double 0.99878338074866868
	.quad	0x3fed72bfe31ccfa4              # double 0.92025751455229398
	.quad	0x3fbef9b6088014d0              # double 0.12099778850104603
	.quad	0x3fc424a8ed31e378              # double 0.15736877042561637
	.quad	0x3fc7b413d202b1e0              # double 0.18518302683277366
	.quad	0x3fe6f601f79c6f04              # double 0.7175302349237147
	.quad	0x3faeb4eb9996b870              # double 0.059974062441470077
	.quad	0x3fe9580dbe0ee9e6              # double 0.79199874039414619
	.quad	0x3fe75b7453e295a3              # double 0.7299138677960183
	.quad	0x3fe9f391fbf6fe34              # double 0.81098269664648237
	.quad	0x3fe8c9d3f82adffa              # double 0.77463720770083389
	.quad	0x3fefb48e230bff7f              # double 0.99079043240634223
	.quad	0x3feaa40312bccb76              # double 0.83252099666275003
	.quad	0x3fd9bcd93fc8d0b8              # double 0.40215140561054907
	.quad	0x3fc218e5946e7108              # double 0.14138478992106962
	.quad	0x3fd855d6f76d8708              # double 0.38023924029231226
	.quad	0x3fec9ba42918bfd0              # double 0.89399917627997105
	.quad	0x3fcf4e080846b6ac              # double 0.24456882862198392
	.quad	0x3fe03fb624485cdb              # double 0.5077772816320264
	.quad	0x3feee845cdb1de92              # double 0.96585359740034193
	.quad	0x3fd3e59f5f333324              # double 0.31089004799723541
	.quad	0x3fce6c0e1a7f6578              # double 0.23767257970647981
	.quad	0x3fc8292b005565a8              # double 0.18875634685791209
	.quad	0x3fe0b0ff3eba5618              # double 0.5216060853151161
	.quad	0x3fe5c3f2bbd3b323              # double 0.68016945538474649
	.quad	0x3fde892c2c0c5e1a              # double 0.47712234784691676
	.quad	0x3fcec2662795e14c              # double 0.24030758793720464
	.quad	0x3fed042150a85f65              # double 0.9067541671129048
	.quad	0x3feb97ff97b88fe4              # double 0.86230449326512514
	.quad	0x3fd1c2b034929758              # double 0.27750783094449138
	.quad	0x3fbabf7ce6f41f10              # double 0.10448437345996475
	.quad	0x3fed53b74cf6515b              # double 0.91646924049068035
	.quad	0x3fd6fa199867fd62              # double 0.35901489146632148
	.quad	0x3fdd32dd1792d7c4              # double 0.45622947027311178
	.quad	0x3fefa0338c8067fc              # double 0.98830583039966724
	.quad	0x3fd98ccf541ad61a              # double 0.39921935284960031
	.quad	0x3fec270ccf37c791              # double 0.87976685020679402
	.quad	0x3fa64d990d094b20              # double 0.043560774651856926
	.quad	0x3fc14b13d85b088c              # double 0.13510368408430329
	.quad	0x3fed6709b4062413              # double 0.91882786904273173
	.quad	0x3fed94ac5ddc2f6a              # double 0.92439859706926808
	.quad	0x3fdbd82eeb7c3b72              # double 0.43506978031739785
	.quad	0x3fd013cdcb7f8cac              # double 0.25120873329997084
	.quad	0x3f9f9f1e4939ccc0              # double 0.030880425662371591
	.quad	0x3fb3d5972aa934c0              # double 0.077477882304452628
	.quad	0x3fd237300aba5b46              # double 0.28461838767673375
	.quad	0x3fc2166a215e4b74              # double 0.14130903844178599
	.quad	0x3fe8a3dea04e8efa              # double 0.7700036173814333
	.quad	0x3fbbfc1c547c9bf0              # double 0.10931565344490912
	.quad	0x3fdeac0588646d28              # double 0.47924936599311474
	.quad	0x3fe9f6df654ac639              # double 0.81138582023249406
	.quad	0x3fad74d500933170              # double 0.057531982727229258
	.quad	0x3fce0011cece57b4              # double 0.23437712285948253
	.quad	0x3fe7d3de90b6e461              # double 0.74461296333823779
	.quad	0x3fdffd1140d5df94              # double 0.49982100802980622
	.quad	0x3fe9221d8af0a98b              # double 0.78541447769866701
	.quad	0x3fde554a43aa03e2              # double 0.47395569427322759
	.quad	0x3fcb51d7bd2a009c              # double 0.2134351419117636
	.quad	0x3fe95bce2ed42f91              # double 0.79245671411762164
	.quad	0x3f7d6363b7c7a880              # double 0.0071748633604135081
	.quad	0x3fea568f58bc5b81              # double 0.82306639987187691
	.quad	0x3fe4de39051f1b97              # double 0.65212679863258216
	.quad	0x3fd324306852127c              # double 0.29908380687292158
	.quad	0x3fea5cfa0ad2ebeb              # double 0.82384969820065856
	.quad	0x3fe9e5d1bf7dd958              # double 0.80930411720945994
	.quad	0x3fe19109365f8e71              # double 0.54895458812502629
	.quad	0x3fe21921df2f04ca              # double 0.5655679091506951
	.quad	0x3fd3fc6b4d813f9e              # double 0.31228144234500543
	.quad	0x3fe83263bd6aa4c4              # double 0.75615107531952974
	.quad	0x3fcb3946cbc80f8c              # double 0.21268544149654323
	.quad	0x3fef49896bb76995              # double 0.97772666014070586
	.quad	0x3fe38983ffc32059              # double 0.61053657487446877
	.quad	0x3fd8b317798dce66              # double 0.38593088980198897
	.quad	0x3fee7ca64b4972f0              # double 0.95271601395105954
	.quad	0x3fc101b9da8e40bc              # double 0.13286517306960899
	.quad	0x3fef4653516f4c08              # double 0.97733465104318018
	.quad	0x3fe1e58e0d297c59              # double 0.55927183695520022
	.quad	0x3f9e7a39c811b520              # double 0.029763129078152706
	.quad	0x3fe18e6ef4a7d323              # double 0.54863689216890454
	.quad	0x3fe727c687ebb314              # double 0.72360540911685911
	.quad	0x3fdc94d1118e7b4a              # double 0.44658304895886103
	.quad	0x3fd53ab7d50c4a02              # double 0.33170886807889144
	.quad	0x3fcd47b6def8607c              # double 0.22875104796617396
	.quad	0x3fdcbba002052aba              # double 0.44895172307284847
	.quad	0x3fee3556c64e1596              # double 0.94401110392998322
	.quad	0x3fdc45cb46137504              # double 0.44175989001617233
	.quad	0x3fedaa461d4095bf              # double 0.92703538621270087
	.quad	0x3fd2441a0be0845e              # double 0.28540660056939327
	.quad	0x3fe03e308fd60d5c              # double 0.50759151547428472
	.quad	0x3fdd478500ca9b96              # double 0.45749020650185324
	.quad	0x3fe5a5dca818371e              # double 0.67649681883787927
	.quad	0x3fe6e136e0cbcf7d              # double 0.71499198823447296
	.quad	0x3fcacba9373d0b24              # double 0.2093402404517174
	.quad	0x3fdd17d048c2d564              # double 0.45457846742222885
	.quad	0x3fc9bd52482b31ac              # double 0.20109013103355033
	.quad	0x3fea7109b44fc44d              # double 0.82629857270343054
	.quad	0x3fb075298e12c660              # double 0.064287755189775364
	.quad	0x3fdc4f9413209342              # double 0.44235708110709393
	.quad	0x3fd0d1737e9a8f4c              # double 0.26278388370177619
	.quad	0x3fe0c7bf4f38d9a6              # double 0.52438321564732315
	.quad	0x3fddaceb1a03972e              # double 0.46367909946853814
	.quad	0x3fe1be678a81bec5              # double 0.55449273159134604
	.quad	0x3fe7a857fce06b7b              # double 0.73929976835221056
	.quad	0x3fd3e30da4b1630c              # double 0.31073323329251035
	.quad	0x3fa33b5f6ab63880              # double 0.037562352920859077
	.quad	0x3feab32d2ad63931              # double 0.83437212339939582
	.quad	0x3fe995635da03eb0              # double 0.79948585783309589
	.quad	0x3feb7b5522fdf699              # double 0.85880524477370834
	.quad	0x3fde5976cf8f9662              # double 0.47421045560472497
	.quad	0x3fd53cc67cf13a82              # double 0.3318344326152457
	.quad	0x3febf40c4f41083d              # double 0.87354102591803662
	.quad	0x3fa8614156ada6a0              # double 0.047616998511171404
	.quad	0x3fe23c4e64082245              # double 0.56986159837203643
	.quad	0x3fe9f81e8b97cf87              # double 0.81153800262698972
	.quad	0x3fc480ec69ebef8c              # double 0.16018443271593374
	.quad	0x3fd60fac49552e80              # double 0.34470660363579242
	.quad	0x3fe88320b0827d73              # double 0.76600679850154874
	.quad	0x3feda84b64143833              # double 0.92679376169849659
	.quad	0x3fd36870ec7e2096              # double 0.30324957938183539
	.quad	0x3fe4b6a0dd5ad322              # double 0.64729350312572742
	.quad	0x3fe0958e23435903              # double 0.51825625312156409
	.quad	0x3fd939922de92264              # double 0.39413885577645247
	.quad	0x3fe3bda07685052e              # double 0.61689780376778969
	.quad	0x3fd2543a5d4de52c              # double 0.28639086829896843
	.quad	0x3fe183ec719cf347              # double 0.54735395612770155
	.quad	0x3feb321c9797d6ee              # double 0.84986714942962549
	.quad	0x3fd90a8e39bbba76              # double 0.39126926076907098
	.quad	0x3feffa3fbf522f85              # double 0.99929797522916941
	.quad	0x3f86f8c9b799eac0              # double 0.011216712871136791
	.quad	0x3fdee491e0a02464              # double 0.48270079551782019
	.quad	0x3fdade13b4be9e4e              # double 0.41980450297203198
	.quad	0x3fe60413ca3e5611              # double 0.68799771786388153
	.quad	0x3fa78c4aed8f5540              # double 0.045992223261843268
	.quad	0x3fe36e8cbb4691b9              # double 0.60724484040525006
	.quad	0x3fb5fd2874ea6418              # double 0.085894135040135544
	.quad	0x3fc8690f6493d4e4              # double 0.19070618067750111
	.quad	0x3fa8ed56c436e780              # double 0.048685752346002253
	.quad	0x3fe8fa3c507bcd88              # double 0.78054633826688846
	.quad	0x3fc0f29e3f198078              # double 0.13240411835704768
	.quad	0x3fd9ba295f0bcf3e              # double 0.40198740274285061
	.quad	0x3fefce0780b1cf22              # double 0.99390006194741809
	.quad	0x3fb65582f955f970              # double 0.0872423037271568
	.quad	0x3fe81b20494332e9              # double 0.75331129368859451
	.quad	0x3fd9788e5d4ed908              # double 0.39798316108807841
	.quad	0x3fde6adb1519520c              # double 0.47527195988121274
	.quad	0x3fe86f5c52db812e              # double 0.76359382804006315
	.quad	0x3fd6dc93334e6110              # double 0.35721282968872092
	.quad	0x3fec17a765ed4b34              # double 0.87788743884661935
	.quad	0x3feaa2b44a09a10d              # double 0.83236135921927856
	.quad	0x3fcb9be55c38c830              # double 0.21569506648080639
	.quad	0x3fb112afe8014610              # double 0.066691393033828428
	.quad	0x3fad4a6e0490c880              # double 0.057208478982276212
	.quad	0x3fcddabf66cdf204              # double 0.23323814887761796
	.quad	0x3fef3a0b154bc085              # double 0.97583536300045692
	.quad	0x3fe3eabbebeb28b6              # double 0.62240406110620117
	.quad	0x3fd1ded94f0e7c92              # double 0.27922661514635039
	.quad	0x3fe7dca110b28c4d              # double 0.74568227063390113
	.quad	0x3fbc659ab73afc50              # double 0.11092535947226279
	.quad	0x3fcd920e3ce715d4              # double 0.2310197636963226
	.quad	0x3fe71094020f3fe8              # double 0.72077370073566005
	.quad	0x3fb67eeaa5e273c0              # double 0.087874093531765674
	.quad	0x3fd3c2404105228e              # double 0.3087311396562108
	.quad	0x3fd34d2f3313d8ec              # double 0.30158596027412332
	.quad	0x3fb836a5b6654e70              # double 0.094583851843077715
	.quad	0x3fc754916f876838              # double 0.18226831384419184
	.quad	0x3fc9ff0a1e9cf360              # double 0.20309568877010076
	.quad	0x3fc5905384f82f34              # double 0.16846698753976741
	.quad	0x3fd821c73a6baf1e              # double 0.37706165986195284
	.quad	0x3fd0ac17530a65cc              # double 0.26050360783991944
	.quad	0x3fc5bf502a7b40f4              # double 0.16990091394701035
	.quad	0x3feb80ee220ee5ae              # double 0.85948855068197871
	.quad	0x3fe8eb98b2d35949              # double 0.77875933577414813
	.quad	0x3fd0bc5bc397052c              # double 0.26149648762300859
	.quad	0x3fe63ccad032cad8              # double 0.69492092765571112
	.quad	0x3f9aa6c91d0e4be0              # double 0.026026861570766502
	.quad	0x3fe094adc94af421              # double 0.51814927401540356
	.quad	0x3fd3fc8ab47ad060              # double 0.31228892922377405
	.quad	0x3fdc49fa76b0d5a2              # double 0.44201528159040937
	.quad	0x3fe87eeb8871226b              # double 0.76549317025007946
	.quad	0x3fc48ae718504220              # double 0.16048897444899612
	.quad	0x3fda9d83752e8c06              # double 0.41586386149919041
	.quad	0x3feafd5b0ac4618f              # double 0.84342720129920845
	.quad	0x3fa81bf8aa73d020              # double 0.047088404471566259
	.quad	0x3fbb8dcba0704f18              # double 0.10763237635574929
	.quad	0x3fed16ee32d6b50d              # double 0.90904912881311051
	.quad	0x3fd55125637c7100              # double 0.33307776179732684
	.quad	0x3fd940da41e65006              # double 0.39458328662408382
	.quad	0x3fe87bebaa072004              # double 0.76512702187119474
	.quad	0x3fe80a74d93ba3d8              # double 0.75127642086328716
	.quad	0x3fe59bca2d4918a6              # double 0.6752673038943342
	.quad	0x3fceac4686215944              # double 0.23963243054704197
	.quad	0x3fee77b4393f621c              # double 0.95211230450792383
	.quad	0x3f97247a8c563260              # double 0.022600092711899555
	.quad	0x3fefec4c5020f584              # double 0.99759498262544399
	.quad	0x3fbfe0dafc8f2c30              # double 0.12452477136609796
	.quad	0x3fea0b2ce527ba02              # double 0.81386418110724912
	.quad	0x3fd2cdb1ecdac37e              # double 0.29380462770773608
	.quad	0x3fcfac0632a73994              # double 0.24743726228048202
	.quad	0x3fef4a69f213fb46              # double 0.97783372193212226
	.quad	0x3fe5f33ae8161460              # double 0.68594117478700056
	.quad	0x3fd33ea567e985ae              # double 0.30069861552882571
	.quad	0x3fbdbac0d7833648              # double 0.11613087903534691
	.quad	0x3fe8a5d9d8d861fd              # double 0.77024547913157415
	.quad	0x3fe2c87ab7fa5b40              # double 0.58697257931894598
	.quad	0x3fed18d2fe69f243              # double 0.9092802971859516
	.quad	0x3fc692c7102e0080              # double 0.17635429658912827
	.quad	0x3fecf15bd5f7d167              # double 0.90446273604042637
	.quad	0x3fedcb01cdcc9dce              # double 0.93103113360569423
	.quad	0x3fe4875ee10b0486              # double 0.64152473405569377
	.quad	0x3fbfb1312acd35b0              # double 0.12379748625718068
	.quad	0x3fd8c8d1b5a7503a              # double 0.38725702991110078
	.quad	0x3fbb410eb9756ef8              # double 0.10646144893456355
	.quad	0x3fd4955468756516              # double 0.32161436272652233
	.quad	0x3fd118e1ede76bd0              # double 0.26714370949565325
	.quad	0x3fc128f04cf07f0c              # double 0.1340618491822102
	.quad	0x3fe94b0572f3f983              # double 0.79040787173998728
	.quad	0x3fe50c096a356521              # double 0.65771933311330966
	.quad	0x3fe69d85f8804cef              # double 0.70672892127404718
	.quad	0x3fd82bcdca1a6a0c              # double 0.37767357575072036
	.quad	0x3febdbfa8a861b97              # double 0.87060286574784385
	.quad	0x3fe97122da482096              # double 0.79506056435731653
	.quad	0x3feb861266db7c38              # double 0.8601161965306181
	.quad	0x3fe82f7a7dcb5e50              # double 0.75579571313114435
	.quad	0x3fe816215a639c7e              # double 0.75270145086405171
	.quad	0x3feed3f206cdb53a              # double 0.96337224320237813
	.quad	0x3fe38c59b9481402              # double 0.61088262737087029
	.quad	0x3fd64e4cbd2f6ec0              # double 0.34852903819203718
	.quad	0x3fdfc7c7f1e0fe70              # double 0.49656866665825472
	.quad	0x3fe964fa4340133e              # double 0.79357636580298396
	.quad	0x3fe0bd8756741d85              # double 0.52313582311119033
	.quad	0x3fc3841188d1061c              # double 0.15246791058056963
	.quad	0x3fd7c09f3737e332              # double 0.37113170998013623
	.quad	0x3fd25236a4829594              # double 0.2862679106277366
	.quad	0x3fe837d12af59e22              # double 0.75681360617176474
	.quad	0x3fc8ac98b1086648              # double 0.19276722568683824
	.quad	0x3fb05aa2d3d36df0              # double 0.063882996287638383
	.quad	0x3fe2703776f47b10              # double 0.57619832261466009
	.quad	0x3fe8efd6d81001b7              # double 0.77927725028717176
	.quad	0x3fd299fef37d50ac              # double 0.2906491639926212
	.quad	0x3fbdb576f0e551e8              # double 0.11605018025631575
	.quad	0x3fb3b337469d7f08              # double 0.076953367939037176
	.quad	0x3fc56a8cc8f48410              # double 0.16731414615881635
	.quad	0x3fe088e2a5d11ead              # double 0.51670963655575053
	.quad	0x3fd37992917643de              # double 0.3042951984908181
	.quad	0x3fed032b3470ae34              # double 0.90663681261270889
	.quad	0x3fec0f25e2ff8bb5              # double 0.87684912047949715
	.quad	0x3fd13ad084d49b6a              # double 0.26921475383499305
	.quad	0x3fafe7735aace6c0              # double 0.062312702959798738
	.quad	0x3fe159ce4cca9155              # double 0.54221262930199521
	.quad	0x3fece5665e793d1e              # double 0.90300291492340867
	.quad	0x3feb019278becf0b              # double 0.84394191344333203
	.quad	0x3fd2e46a4a35df92              # double 0.29519135710824529
	.quad	0x3fb8e29dc0c5d2e0              # double 0.097207889140757952
	.quad	0x3fcdf4c2f40fd6e8              # double 0.2340320293148388
	.quad	0x3fd08fe9f140f530              # double 0.25878380355773611
	.quad	0x3fe057078749bfbb              # double 0.51062370704129678
	.quad	0x3fa76e0ecc9be2d0              # double 0.04576154945056532
	.quad	0x3fdd1c535f8fbe2c              # double 0.45485386211564349
	.quad	0x3feba028d379b1aa              # double 0.863300717389895
	.quad	0x3fd6660a4095fc64              # double 0.34997803027358132
	.quad	0x3feb7d0b0a4774a2              # double 0.85901405341759962
	.quad	0x3fe5b4f86eaee1d0              # double 0.67834111802863539
	.quad	0x3fed13181851120a              # double 0.90858082532264572
	.quad	0x3fb8ced00cf4c620              # double 0.096905711329576593
	.quad	0x3fec6733792af3fb              # double 0.88759778657515598
	.quad	0x3fc9ede9af3a62a4              # double 0.20257302337701788
	.quad	0x3fe451cc48e8b6d1              # double 0.6349851058964423
	.quad	0x3fc45f9e3c237c0c              # double 0.1591680329938473
	.quad	0x3fe018b155ba1c7b              # double 0.50301424735597722
	.quad	0x3fe471d602475079              # double 0.63889599270852593
	.quad	0x3fa467c1c77952b0              # double 0.039854102706759931
	.quad	0x3fce8f6a6d4820f0              # double 0.23875170074484897
	.quad	0x3fe7513874905711              # double 0.72866461531040916
	.quad	0x3fe78f5fc78026da              # double 0.7362517258163408
	.quad	0x3fe2febff92caff3              # double 0.59359739939600187
	.quad	0x3fd0ffd708fe9942              # double 0.26561523321506197
	.quad	0x3fcd993580dbe5e8              # double 0.23123806755010823
	.quad	0x3fe635416e56b1cb              # double 0.69400092649953515
	.quad	0x3fe9bd445ee81299              # double 0.80435389076645258
	.quad	0x3fea1892c113ad4f              # double 0.81549966535878038
	.quad	0x3fdb6977bea8ee44              # double 0.42831224078301866
	.quad	0x3fb3ef3c11d276b0              # double 0.077869181014160515
	.quad	0x3fe043c0dc9cdc52              # double 0.5082706745951191
	.quad	0x3fdd023212f50e36              # double 0.45325900889676818
	.quad	0x3fe3da20282581cd              # double 0.62037666169276806
	.quad	0x3fe60ffa80c646c9              # double 0.68945050383828133
	.quad	0x3fe2d737d37fb1d1              # double 0.58877173717842812
	.quad	0x3fb0a58f210a6290              # double 0.065026231352371733
	.quad	0x3fe3ab86febf137c              # double 0.61468839411882881
	.quad	0x3fd623003f9c429c              # double 0.34588628971054347
	.quad	0x3fc57c0aad5af100              # double 0.16784795250521967
	.quad	0x3fe07ce2f05f2e7a              # double 0.51524493167512664
	.quad	0x3fdebfa6bd11cd60              # double 0.48044746841261166
	.quad	0x3fe8b8ec0bcaed4d              # double 0.77257349303492051
	.quad	0x3fa726091bd1fec0              # double 0.045212063451797402
	.quad	0x3fd66fe8a253e1c6              # double 0.35058036663351932
	.quad	0x3fee96a2694d94e9              # double 0.95588799063685059
	.quad	0x3fe5db9103e00fef              # double 0.68305254704364227
	.quad	0x3fd67c5f04cc6426              # double 0.35134101360887582
	.quad	0x3fe08fd43df83df6              # double 0.51755725959259169
	.quad	0x3fb1a9b2293ec4f0              # double 0.068995604581477243
	.quad	0x3fe2ab4ac3a77071              # double 0.58340967382129183
	.quad	0x3fbabac3c4c1e068              # double 0.10441230348249209
	.quad	0x3fe47314a88244f9              # double 0.63904793655288394
	.quad	0x3fbe3476e2f73da0              # double 0.11798804322392309
	.quad	0x3feb0725eb9019d0              # double 0.84462257393243512
	.quad	0x3f6f576d6b445d00              # double 0.0038258683290554041
	.quad	0x3fe2197cbc265b0f              # double 0.56561123607647967
	.quad	0x3fe830b54871ce4e              # double 0.75594581746413225
	.quad	0x3fe8b145ea33f8ab              # double 0.77163978331352234
	.quad	0x3fd14fd46d374eea              # double 0.27049742379789044
	.quad	0x3fd10cc798601e3e              # double 0.26640500908294829
	.quad	0x3fef84ebb92e1285              # double 0.98497568290675074
	.quad	0x3fc74b634d258f64              # double 0.18198815600328111
	.quad	0x3fec473411c3b09a              # double 0.88369182080852515
	.quad	0x3fe8f381a00a67c0              # double 0.77972489602984041
	.quad	0x3fec9118bbdd70e5              # double 0.89271198933013507
	.quad	0x3fd2650f2d0d74da              # double 0.28741816901840667
	.quad	0x3fc4f56882113f60              # double 0.16373926497407876
	.quad	0x3fcfdbadc15cbd80              # double 0.24889156285778924
	.quad	0x3fad27e64edbef30              # double 0.056945035101277575
	.quad	0x3fe1231090b0f588              # double 0.5355303598404797
	.quad	0x3fd9bcc3d1f9013e              # double 0.40214629655021727
	.quad	0x3fdbdbff7fc64832              # double 0.43530261495573364
	.quad	0x3fd21068d85d1f28              # double 0.28225155953667747
	.quad	0x3fb7f8209aef9318              # double 0.093629873109943751
	.quad	0x3fe3a1cceb08918d              # double 0.61350103287672797
	.quad	0x3fda6738c479e2f6              # double 0.41255015551682506
	.quad	0x3fcc8745f2529728              # double 0.22287821132811669
	.quad	0x3fcef9a2992eaf98              # double 0.24199326018913037
	.quad	0x3f869f1dd033a380              # double 0.011045678058921871
	.quad	0x3fd0da1109a00e06              # double 0.26330972614252379
	.quad	0x3fed6d5f26c78e9b              # double 0.91960103582501362
	.quad	0x3fdc2afc8a8990ea              # double 0.44012368706741134
	.quad	0x3fd4a5e508e18b7e              # double 0.32262540690697239
	.quad	0x3fe4e8a8814a1863              # double 0.65340066196291635
	.quad	0x3f9d89e8e40bc1c0              # double 0.028846396368807481
	.quad	0x3fbc1c7b045dcfb0              # double 0.10980957848170081
	.quad	0x3feed5f5ecc57dee              # double 0.96361824268745777
	.quad	0x3fb6505c8215b498              # double 0.087163717040043998
	.quad	0x3fe2e486a5b1a8cc              # double 0.59039623605829084
	.quad	0x3fef8c44a056ddb5              # double 0.98587256733201533
	.quad	0x3f7672045b5d8900              # double 0.0054798288527726502
	.quad	0x3fd7c9392550f744              # double 0.37165669101874621
	.quad	0x3fef313efb1ac6ca              # double 0.97476147693506587
	.quad	0x3feb4785d57ab109              # double 0.85248080916565627
	.quad	0x3fef65e348762721              # double 0.98118747856753796
	.quad	0x3fcfe4a466d08d48              # double 0.24916510601279129
	.quad	0x3fb41fefe96cdcc8              # double 0.07861232231958859
	.quad	0x3fdf2821a284f040              # double 0.4868244254209948
	.quad	0x3fe7c34195e9f43c              # double 0.74258498458915012
	.quad	0x3fedcc452ab263ae              # double 0.93118532504296581
	.quad	0x3fe5d3f2c91acbf5              # double 0.68212260511643186
	.quad	0x3fbe555f9160bd70              # double 0.118490193359994
	.quad	0x3fd74f4c4ed02076              # double 0.36421497055608343
	.quad	0x3fcfcffb825f9800              # double 0.24853462091340361
	.quad	0x3fe2e398f9489bc3              # double 0.590282904512485
	.quad	0x3fb7787e302d0b10              # double 0.091682326089579158
	.quad	0x3fd22a7876e07294              # double 0.2838421975045915
	.quad	0x3fe658a0fd2cf917              # double 0.69831895302175695
	.quad	0x3feda9aee86d49a5              # double 0.92696328540687445
	.quad	0x3feba2722d827876              # double 0.86357983482936507
	.quad	0x3fcc94abb2577af8              # double 0.22328706939784815
	.quad	0x3fddc31aa30583fc              # double 0.46503320617745181
	.quad	0x3fe2708f0290c64a              # double 0.57624006749228696
	.quad	0x3fe60cc0e916b52a              # double 0.68905683064591483
	.quad	0x3fe5a037e8c600e6              # double 0.67580790961804094
	.quad	0x3fd26232a256025c              # double 0.28724351742861187
	.quad	0x3fcfdf799f3ef154              # double 0.24900741840054741
	.quad	0x3feb45b146aafe2d              # double 0.8522573833687993
	.quad	0x3fbd490d44a0cec8              # double 0.11439593244068214
	.quad	0x3fe8194285425a3c              # double 0.75308347727952407
	.quad	0x3fbea6b6f1c54f90              # double 0.11973136332136236
	.quad	0x3fefbf1d2010ffce              # double 0.99207931769341839
	.quad	0x3fdc8b9f9088c114              # double 0.44602192988078682
	.quad	0x3feb6e2af202d2b2              # double 0.85719821231631088
	.quad	0x3fcb6c9b715a0c60              # double 0.21425192866090281
	.quad	0x3f9a76d56a5af1c0              # double 0.025843939415368444
	.quad	0x3fcb26a84536104c              # double 0.21211722735836458
	.quad	0x3fe86ff627e6e61b              # double 0.76366718095158903
	.quad	0x3fe21a578d72c2d4              # double 0.56571557642572623
	.quad	0x3fdc49f7c3aa0060              # double 0.44201463802165186
	.quad	0x3fd90eb0f4904242              # double 0.39152168162494061
	.quad	0x3fe717c2a7b759eb              # double 0.72165043599198719
	.quad	0x3fd1ca6f1a0c5202              # double 0.27798059028398836
	.quad	0x3fef1de934b6371a              # double 0.97240124030369945
	.quad	0x3fc74aaf5f60c4b0              # double 0.18196670682076421
	.quad	0x3fdff5b5c19addba              # double 0.49937194735272394
	.quad	0x3fd93d5135971238              # double 0.39436750634584739
	.quad	0x3feef96e85be9fe1              # double 0.96794820901868316
	.quad	0x3fe631f82f7d9350              # double 0.69359978938573796
	.quad	0x3fdad3a138a5f2e8              # double 0.41916685611776794
	.quad	0x3fe65531c22b0030              # double 0.69789970324928241
	.quad	0x3fe1c49e8435d8cd              # double 0.55525136778194339
	.quad	0x3fd5b38b82b6acf6              # double 0.33908355488774988
	.quad	0x3fb09d6509167630              # double 0.064901652067839377
	.quad	0x3fe2bc39965b0723              # double 0.58547667852710494
	.quad	0x3fb3a841f9fb6b30              # double 0.076786159067904646
	.quad	0x3fef3aeef01ac3e5              # double 0.97594401259823071
	.quad	0x3fc4ab09f32fb95c              # double 0.16146969198548333
	.quad	0x3fc9d5e71c7b4ca0              # double 0.20184029474930743
	.quad	0x3feb0a767c7c9156              # double 0.84502720178401591
	.quad	0x3fcd5b8a7dc16d88              # double 0.22935610905083714
	.quad	0x3fb574fee74765d0              # double 0.083816462959837467
	.quad	0x3fe4e8aa72135111              # double 0.65340158729898878
	.quad	0x3fe5bdc2a728981d              # double 0.67941410682829295
	.quad	0x3fe3869e498f3fc6              # double 0.61018289916136648
	.quad	0x3fc1783ad2dcede0              # double 0.13648162170453215
	.quad	0x3fe0ea296a309592              # double 0.52858420124236916
	.quad	0x3fc8915d97164950              # double 0.19193620564744629
	.quad	0x3fd43fe10c266892              # double 0.31639887033964798
	.quad	0x3fcb2a9855568f70              # double 0.21223739783192341
	.quad	0x3fe18631eed815ab              # double 0.54763123177752016
	.quad	0x3fea73d8c9335702              # double 0.82664145752889362
	.quad	0x3fd74a96cc9ee0ec              # double 0.36392755491716744
	.quad	0x3fd2867bc687653c              # double 0.28945822131716503
	.quad	0x3fe3d7763c8e53ce              # double 0.62005149676644478
	.quad	0x3fe098ccffcc4567              # double 0.51865243874105438
	.quad	0x3fed0a61888f73d8              # double 0.90751721069284041
	.quad	0x3feb16fe52aa8bee              # double 0.84655681749097567
	.quad	0x3fea2153ba267a06              # double 0.81656824452858312
	.quad	0x3feb1ffd9628a75a              # double 0.8476550991810925
	.quad	0x3fefe3c34c1957ce              # double 0.99655308592877545
	.quad	0x3fbb999d5c68e458              # double 0.10781272417161014
	.quad	0x3fd6e97e8284d880              # double 0.35800135370244135
	.quad	0x3fc736933927d5fc              # double 0.18135299959946838
	.quad	0x3f9ad96176b27420              # double 0.02621986662835607
	.quad	0x3fd111048b0cbf52              # double 0.26666368083077885
	.quad	0x3fdbd7e7fc73f734              # double 0.43505286840069179
	.quad	0x3fee7db560c70fe6              # double 0.95284527685043652
	.quad	0x3fd36999cafdb9fa              # double 0.30332035849906414
	.quad	0x3fe86b0f20149828              # double 0.76306873574936152
	.quad	0x3fe3f33a48038fa6              # double 0.62344087662903713
	.quad	0x3fdb086bdc02cbb6              # double 0.42238899693910115
	.quad	0x3fe3144a0d032e0b              # double 0.59622671643723046
	.quad	0x3fcebb5249982640              # double 0.24009159654115031
	.quad	0x3fd985e13b91cbbc              # double 0.39879637543998192
	.quad	0x3fef3da07e37e37a              # double 0.97627281810774424
	.quad	0x3fcb4a17d17b714c              # double 0.21319864014265943
	.quad	0x3fe490ae47091520              # double 0.64266122697941697
	.quad	0x3fb25305f2ca0fa0              # double 0.071579334044200582
	.quad	0x3fca30acb4fb6980              # double 0.20461043202415041
	.quad	0x3fe4c6d51b643302              # double 0.64927153921016179
	.quad	0x3fda185548807b0e              # double 0.407735176851859
	.quad	0x3fcee0f80289f1a8              # double 0.24124050258604979
	.quad	0x3fe1ba9cde7e5cce              # double 0.55402987914831114
	.quad	0x3fb6cd46946fde70              # double 0.089069758643626206
	.quad	0x3fd71a5b79c649b8              # double 0.36098372356459718
	.quad	0x3fdf9f50de9811ee              # double 0.49409887063691726
	.quad	0x3fd6250e4daa10e2              # double 0.34601171097189198
	.quad	0x3fde098ff3515140              # double 0.46933363687027807
	.quad	0x3fd8c373f54d36c2              # double 0.38692950206027998
	.quad	0x3fed058691813bfb              # double 0.90692451876554914
	.quad	0x3fe6f3fc889d76f5              # double 0.71728350336681379
	.quad	0x3fd558dffe8a30dc              # double 0.33354949815180901
	.quad	0x3fcdeadf3e26aa90              # double 0.23373022589415315
	.quad	0x3fdc1dd8e781a498              # double 0.43932173355148896
	.quad	0x3fe0b4801443bf94              # double 0.52203372915208712
	.quad	0x3fe313ea37de9043              # double 0.59618101989736549
	.quad	0x3fc2a3dafb6cc830              # double 0.14562546993835346
	.quad	0x3fb11e73b4650498              # double 0.066870910207415313
	.quad	0x3fe829014085276b              # double 0.75500547982777044
	.quad	0x3feed8fba07843f2              # double 0.9639871725249789
	.quad	0x3fdb72126de6edc8              # double 0.42883740170119866
	.quad	0x3f957c8301d108a0              # double 0.020982787118790314
	.quad	0x3fec3a92c7e5a9e8              # double 0.88215006868750567
	.quad	0x3fe960d6cfbc2384              # double 0.7930711800882908
	.quad	0x3fc0240a37c17c20              # double 0.12609985086871323
	.quad	0x3fd1e2e655496d20              # double 0.27947386101523541
	.quad	0x3fe320f485948039              # double 0.59777284707889244
	.quad	0x3fec25af43d30b64              # double 0.87960017439796134
	.quad	0x3fe36334e5578cb2              # double 0.60586018365247285
	.quad	0x3fe9b1062c3186c5              # double 0.80285938865218809
	.quad	0x3fe918b91e342ab4              # double 0.78426795863318554
	.quad	0x3fc09c3c4150e4ec              # double 0.12976792516000246
	.quad	0x3fdf41ae02533532              # double 0.48838377215436701
	.quad	0x3fd31314d90aeb38              # double 0.29803963847705317
	.quad	0x3fa7a3feacd19590              # double 0.046173056217223452
	.quad	0x3fe65dc366723679              # double 0.6989457131291622
	.quad	0x3fd1f55abce7e8ce              # double 0.28060024688569463
	.quad	0x3fe39738e3a4e90a              # double 0.61220974408868867
	.quad	0x3f95d91fbef7d800              # double 0.021336074858446352
	.quad	0x3fd29e7990234032              # double 0.29092253757426356
	.quad	0x3fdb714b0bfe68b6              # double 0.42878986521976559
	.quad	0x3fbed79536409b10              # double 0.12047703337212234
	.quad	0x3fde4be7da83ae8e              # double 0.47338291491789952
	.quad	0x3fd0a720d9c917be              # double 0.26020070331685108
	.quad	0x3fab2b667bc40200              # double 0.053065493209945913
	.quad	0x3fe17336f4d7e49e              # double 0.54531429120028796
	.quad	0x3fe5ffe86dc14da3              # double 0.68748876034299078
	.quad	0x3fe9a982c1dba29b              # double 0.80194223273163645
	.quad	0x3fdf1ca765cd3040              # double 0.48612389508776133
	.quad	0x3fd5915966b2ac7a              # double 0.33699641255470392
	.quad	0x3fe842d9de68f702              # double 0.75816052855927318
	.quad	0x3fbdac09d0594e80              # double 0.11590634667055078
	.quad	0x3fc4a381fcc0dd08              # double 0.16123986093018794
	.quad	0x3fede367b9820e99              # double 0.93400942070043691
	.quad	0x3feaecbca572ff9e              # double 0.84139854730891606
	.quad	0x3fe998d8b364e539              # double 0.79990801847376425
	.quad	0x3fd97fd014236c76              # double 0.3984260746635252
	.quad	0x3fc698b3557a4050              # double 0.17653505014141269
	.quad	0x3fd82ffc230b49a6              # double 0.37792876646303808
	.quad	0x3fd72ee0d15b1702              # double 0.36223621792701988
	.quad	0x3fd084e07cea2086              # double 0.25811016272246723
	.quad	0x3fe591033c138852              # double 0.67395173772480121
	.quad	0x3fc65a5341e2a8a0              # double 0.17463150708255615
	.quad	0x3fe2e88bebe30b63              # double 0.59088703223856631
	.quad	0x3fc30824f4aec1a8              # double 0.1486860460986581
	.quad	0x3fe81da4784a2bf5              # double 0.75361846441353342
	.quad	0x3fe9f23b12090046              # double 0.81081918261043806
	.quad	0x3fe90e7157deb57c              # double 0.78301303064442562
	.quad	0x3fd943a2b31d8e5a              # double 0.39475314609282963
	.quad	0x3fea7eab98eb4730              # double 0.82796268336298873
	.quad	0x3fe7e17f9beacf9a              # double 0.7462766690500644
	.quad	0x3fd8828c94d4939c              # double 0.38296808752266442
	.quad	0x3fd2ab17a2ac87e8              # double 0.29169264684799012
	.quad	0x3feff2c9e4bf0dbf              # double 0.99838728596699144
	.quad	0x3f8716aca03574c0              # double 0.011273716582474669
	.quad	0x3fda519d3e11e4c4              # double 0.41123133718026517
	.quad	0x3fdfec447eec7d4a              # double 0.49879562754536677
	.quad	0x3fefdee4d512384c              # double 0.99595872512305438
	.quad	0x3fd76546e71a7ec0              # double 0.36555645531369052
	.quad	0x3fe72b33b96c2f32              # double 0.72402368750906576
	.quad	0x3feb95f51b6761a6              # double 0.86205535270987776
	.quad	0x3feb8e1ead5ee33c              # double 0.86109861241775531
	.quad	0x3fe2f39fafaf925c              # double 0.59223923028600778
	.quad	0x3fd62c43703585fc              # double 0.34645162542264507
	.quad	0x3fc68e51bd795cc4              # double 0.17621824027694377
	.quad	0x3fcc35e5f1857c2c              # double 0.22039484303511025
	.quad	0x3fe998d201ebc628              # double 0.79990482688134978
	.quad	0x3fe50f40208298c8              # double 0.65811163282048657
	.quad	0x3fd1c55fe43c9c4c              # double 0.2776717881083115
	.quad	0x3fd2a46950202b7c              # double 0.29128487419864491
	.quad	0x3fe43f7f913cec9e              # double 0.63275125853342096
	.quad	0x3fe9f63412555ea8              # double 0.81130412655598594
	.quad	0x3fed9e2252f63ae6              # double 0.92555347636684071
	.quad	0x3fd678990a01df7c              # double 0.35111070611264217
	.quad	0x3fe161b749ad41b6              # double 0.54317821874615535
	.quad	0x3fd9806674b35c4a              # double 0.39846192738099673
	.quad	0x3f9430b82f1faf20              # double 0.019717100025373857
	.quad	0x3fd439c8f4b8dc52              # double 0.31602691553729756
	.quad	0x3fdf7012baa1720e              # double 0.49121540284775811
	.quad	0x3fee888522649053              # double 0.95416504590367379
	.quad	0x3fe7505539277b9a              # double 0.72855626261649609
	.quad	0x3fe5b8b327ceead3              # double 0.67879636550000055
	.quad	0x3fce26d783d772cc              # double 0.23556035935953046
	.quad	0x3fe06a1e3f746c55              # double 0.51295387643348056
	.quad	0x3feb935d31037cb2              # double 0.86173877308819713
	.quad	0x3fe20c09e5b1e248              # double 0.5639695631244388
	.quad	0x3fd76915dad2a6fe              # double 0.36578890199108105
	.quad	0x3fe1874f7d792b5c              # double 0.54776739603526492
	.quad	0x3fc5b8ba2f96a38c              # double 0.16969992946294743
	.quad	0x3fe23529c6e5f196              # double 0.56898964736278645
	.quad	0x3fc707c7748a0a18              # double 0.17992489996329719
	.quad	0x3fe8002f6d2b0f4f              # double 0.75002261468805809
	.quad	0x3fd6e4e739c87b9c              # double 0.35772114413151157
	.quad	0x3fed4c1a15b512fa              # double 0.91553978194914909
	.quad	0x3fd86d3119f9c9a2              # double 0.38166453873341244
	.quad	0x3fe9c7bfea7e2cad              # double 0.80563350486172214
	.quad	0x3fe4b088a0d3328b              # double 0.64654952441340308
	.quad	0x3fc6463e54b2e854              # double 0.17401866088568119
	.quad	0x3fe89c2caa85cdd8              # double 0.7690642672081891
	.quad	0x3fa1f4fd92d3e440              # double 0.035072254346183218
	.quad	0x3fdda0a209389640              # double 0.46292925739757962
	.quad	0x3f9cea35866d2840              # double 0.028237186746345566
	.quad	0x3fe5e4b26b495110              # double 0.68416710810063996
	.quad	0x3fe736d76b68cc87              # double 0.72544451692955725
	.quad	0x3fe70bf2556b5d2c              # double 0.72020832713579841
	.quad	0x3fec9d940332b049              # double 0.89423561691865772
	.quad	0x3fd4607653f65c64              # double 0.31838758658836341
	.quad	0x3fe8bbc089dfe2af              # double 0.77291895798324173
	.quad	0x3fba0e0ff5832c60              # double 0.10177707427935578
	.quad	0x3fee44b04056e662              # double 0.94588482443141353
	.quad	0x3fd5ef5644d49f2c              # double 0.34273297044500128
	.quad	0x3fe1a3e0332b3d2c              # double 0.5512543677704449
	.quad	0x3fef3c66274fd2c3              # double 0.97612292936408839
	.quad	0x3fe56db3d2fcd4aa              # double 0.66964141090888529
	.quad	0x3fc51633da539e48              # double 0.1647400680587785
	.quad	0x3fe1345b56c42c24              # double 0.53764121004622156
	.quad	0x3fe6c8efbbfeb27b              # double 0.71202837674861941
	.quad	0x3fc9e780553df8c4              # double 0.20237735902987286
	.quad	0x3fed565ee259bd06              # double 0.91679329117860742
	.quad	0x3fc511cf7e303b64              # double 0.1646060339121177
	.quad	0x3fe81e634cf630b9              # double 0.75370945960596381
	.quad	0x3fe33d6bb56d399d              # double 0.60124764857191659
	.quad	0x3fa0e4534f318700              # double 0.032991984765216031
	.quad	0x3fe6e2c90ecf2586              # double 0.71518376247802062
	.quad	0x3fe271d0179b5f7d              # double 0.57639317141273205
	.quad	0x3fdf1fc3926aff1c              # double 0.48631371782902177
	.quad	0x3fe328c0b2de2fd5              # double 0.59872469840183362
	.quad	0x3feb917a14f62e2e              # double 0.86150840848990184
	.quad	0x3fc92a8df1da6624              # double 0.19661115941271234
	.quad	0x3fda30f54c566ec0              # double 0.40923817114683558
	.quad	0x3fe49ae5a99fe019              # double 0.64390833978450523
	.quad	0x3fe2ce5541e3165c              # double 0.58768713825765984
	.quad	0x3fd4c03d8e232358              # double 0.32423342590896231
	.quad	0x3fc6ce283fe44f0c              # double 0.17816641921728438
	.quad	0x3fb1fc03a9ef5aa0              # double 0.070251683223754302
	.quad	0x3fedf3f0704d2c90              # double 0.93602773603324074
	.quad	0x3fb6e06711607208              # double 0.089361612074249419
	.quad	0x3feff1b133e2ce57              # double 0.99825344213463551
	.quad	0x3febca16f7311407              # double 0.86841915397292346
	.quad	0x3fe024a7276346e3              # double 0.50447423642091527
	.quad	0x3fefd2e4f9b33d22              # double 0.99449394959984638
	.quad	0x3fee3e29061e4e4e              # double 0.94508792109486151
	.quad	0x3fc22ef641a41e80              # double 0.14205816464549414
	.quad	0x3fe13e951f170ff4              # double 0.53888946602137233
	.quad	0x3fea9044e765999e              # double 0.83011098093702507
	.quad	0x3fec4bdee75ce416              # double 0.88426156223352126
	.quad	0x3fec63d23df8d904              # double 0.8871852121726822
	.quad	0x3fca04f37e001610              # double 0.2032760968433398
	.quad	0x3fd178a81bc7c698              # double 0.27298929894377855
	.quad	0x3fd64dc04f80e6c2              # double 0.34849555744186145
	.quad	0x3fedf254ca6e41d4              # double 0.93583144700283549
	.quad	0x3fe45a4f900cb708              # double 0.63602426657391309
	.quad	0x3fe64d31758ac3b5              # double 0.69692299802237889
	.quad	0x3fc15a93ac75c5dc              # double 0.13557668610478302
	.quad	0x3fd6211bb6e2f04a              # double 0.34577076778419225
	.quad	0x3fe07fd8218a4b51              # double 0.51560598898718457
	.quad	0x3f93e95478f85380              # double 0.019444770701813052
	.quad	0x3fc83100d3fc598c              # double 0.18899546004167822
	.quad	0x3fc0182ed6ec2b04              # double 0.12573800558342196
	.quad	0x3fdb0d3601ecef76              # double 0.42268133342781
	.quad	0x3fdc868989a4e080              # double 0.4457115024738485
	.quad	0x3fda09d876077d6a              # double 0.40685092474264783
	.quad	0x3fed2b6883877ae4              # double 0.91154885949421471
	.quad	0x3fe9b81d29d1e075              # double 0.8037248436730936
	.quad	0x3fe9c51dc04025b4              # double 0.80531203793468941
	.quad	0x3fd732e577eac280              # double 0.36248146734855169
	.quad	0x3fe2cc240c164512              # double 0.58741953240147127
	.quad	0x3fe5dcb0b81a918e              # double 0.68318973500986302
	.quad	0x3fe794873f645147              # double 0.73688089734290763
	.quad	0x3f99f975d49ab3a0              # double 0.025365677930199504
	.quad	0x3fe1ea3231f7f116              # double 0.55983838805653607
	.quad	0x3fd5d04b8eea20a2              # double 0.34083832699298899
	.quad	0x3fd2891cde8c5ebc              # double 0.2896186993907397
	.quad	0x3fe780ca4c631018              # double 0.73447146338776559
	.quad	0x3fdd60ea6e1b16bc              # double 0.45904026749154148
	.quad	0x3fd775ee6a93ae6e              # double 0.36657295616053076
	.quad	0x3fd55f7ade53ceb2              # double 0.33395263396890151
	.quad	0x3fdcd09ae5e9d9b6              # double 0.45023224308479415
	.quad	0x3f86e15def6d9a40              # double 0.011172040814654172
	.quad	0x3fde032a79b8dde8              # double 0.46894323241164537
	.quad	0x3fa1e40289d08f80              # double 0.034942702601511222
	.quad	0x3fe8ab664e96ae47              # double 0.77092280721030526
	.quad	0x3fdc048a278afa74              # double 0.43777707921609665
	.quad	0x3fe16758a104989e              # double 0.54386550377673237
	.quad	0x3fed1cc78301c0d9              # double 0.90976310336375399
	.quad	0x3fe6eb78e514cf48              # double 0.71624417059363399
	.quad	0x3fd10c776bf9eda4              # double 0.26638589424666237
	.quad	0x3feadf7e8888dff2              # double 0.83978201548506903
	.quad	0x3fe9902f2f35c54e              # double 0.79885062428199105
	.quad	0x3f75a4cbaa7bce00              # double 0.0052841144276842833
	.quad	0x3fe1a45e48d13dee              # double 0.55131448957575713
	.quad	0x3fede951f6908956              # double 0.93473146588466238
	.quad	0x3fe523dd52583125              # double 0.66062799532804617
	.quad	0x3fc1cd23ae845688              # double 0.13907285710654471
	.quad	0x3fa3e9114c5d3600              # double 0.038887539455213727
	.quad	0x3fe962a7931fa16e              # double 0.79329279646939965
	.quad	0x3fc05e18f0dd51f0              # double 0.12787162552798703
	.quad	0x3febfdf646bc4884              # double 0.87475122275851946
	.quad	0x3feaf8ba5192a0b8              # double 0.84286228115254058
	.quad	0x3fca39b0e9aeaaa4              # double 0.20488559160488251
	.quad	0x3fdc30937ca92156              # double 0.44046485113041933
	.quad	0x3fcfe84041fc2244              # double 0.24927523824614373
	.quad	0x3fcd00323f97ada8              # double 0.22656849007703994
	.quad	0x3fb32c63f6606d88              # double 0.074896094942621727
	.quad	0x3fe4a6e1f843dcfb              # double 0.64537142266536252
	.quad	0x3fe6ed9051776835              # double 0.71649948035633904
	.quad	0x3fea8852acb98516              # double 0.82914098487177301
	.quad	0x3feaae83e63e40fb              # double 0.83380312890406516
	.quad	0x3fe2ff1128f71584              # double 0.59363611222276846
	.quad	0x3fe2e375fc0ea2ca              # double 0.59026622037807752
	.quad	0x3fca95f400212b3c              # double 0.20770120626760924
	.quad	0x3fbd497f16b63cc0              # double 0.114402716679467
	.quad	0x3f86eecf75d08740              # double 0.011197682173648027
	.quad	0x3fba87c8145f2100              # double 0.10363436219552469
	.quad	0x3fe285b912437998              # double 0.57882360045532533
	.quad	0x3fb9b5ea589c7bb8              # double 0.10043205893860729
	.quad	0x3fe264e63e7ca034              # double 0.57481682018715796
	.quad	0x3feefc80c1cf629c              # double 0.96832311490568967
	.quad	0x3fd1318c29c0589c              # double 0.26864914014130092
	.quad	0x3fd93919877bae2c              # double 0.39411009054922164
	.quad	0x3fe6e7536447bb21              # double 0.7157380064580573
	.quad	0x3fefd4a7d8a35d54              # double 0.99470894157540579
	.quad	0x3fbe584a06e9acf8              # double 0.11853468579072401
	.quad	0x3fe143360a7816ae              # double 0.53945447964425397
	.quad	0x3fcb2aaa61db71c8              # double 0.21223954942878565
	.quad	0x3fd138292683384e              # double 0.26905277977937636
	.quad	0x3fcc7b34c6e9eb4c              # double 0.22250995361886294
	.quad	0x3fe0d211356214df              # double 0.5256429712905194
	.quad	0x3fe09f63909fad74              # double 0.51945665594887069
	.quad	0x3fe5b6b571d183e3              # double 0.67855331640396022
	.quad	0x3fefea1d51285518              # double 0.99732843257030179
	.quad	0x3fb9f1988cf7ab20              # double 0.10134271089161162
	.quad	0x3fed3dfde6d7b019              # double 0.9138173588412456
	.quad	0x3fed5bada00d87d3              # double 0.91744118938754082
	.quad	0x3fef914f0901c9c3              # double 0.98648788222481476
	.quad	0x3fead770d353224c              # double 0.83879891657222449
	.quad	0x3fe99d96150b41de              # double 0.80048660383368619
	.quad	0x3fedb89ee15e4112              # double 0.9287866975519441
	.quad	0x3fe0abd0d48e41fd              # double 0.52097360148223937
	.quad	0x3fe2bcbb8a1712c2              # double 0.58553864451149473
	.quad	0x3fda54b0aade9962              # double 0.41141907392957056
	.quad	0x3fee589549557c86              # double 0.94831337283166373
	.quad	0x3fef21f2614e21e9              # double 0.97289389614985311
	.quad	0x3fd810e2e0be67e4              # double 0.37603065440782601
	.quad	0x3fe7c43430a34482              # double 0.74270066737712193
	.quad	0x3fdbd4723d744d72              # double 0.43484169007680074
	.quad	0x3fc3897fe130652c              # double 0.15263365264471795
	.quad	0x3f86c3f81b3ab000              # double 0.011115969019861893
	.quad	0x3fea84d2cd0066a3              # double 0.82871379889839536
	.quad	0x3fed233de9404733              # double 0.91055198246815505
	.quad	0x3fc323bf5e944314              # double 0.14952842825052726
	.quad	0x3fd1fd541281da80              # double 0.28108693892810521
	.quad	0x3fec834c6fac49ee              # double 0.89102765856870092
	.quad	0x3fe0e78218eabc71              # double 0.5282602774294799
	.quad	0x3fe7470760ec76d2              # double 0.72742051058204482
	.quad	0x3fd5e2c1a32d8bb2              # double 0.3419651120695405
	.quad	0x3fec2078224d9c69              # double 0.87896353435361363
	.quad	0x3fd9f94e8e818eac              # double 0.40584148327455227
	.quad	0x3fe4261236727017              # double 0.62964735635933067
	.quad	0x3fe3b1a1ce08c96c              # double 0.61543359986380386
	.quad	0x3fda1b3c51bb706e              # double 0.4079123304525244
	.quad	0x3fe7dbaf318fd761              # double 0.74556693725638123
	.quad	0x3fc64927fed2d374              # double 0.1741075510268747
	.quad	0x3fdc8e9338f8bfac              # double 0.44620209277763467
	.quad	0x3fc5bec0e9ba85cc              # double 0.16988383686570641
	.quad	0x3feba86089b38ebb              # double 0.864303845356026
	.quad	0x3fe46c25c30136d4              # double 0.63820159994949188
	.quad	0x3fde08f909aa1cdc              # double 0.46929765647696597
	.quad	0x3fe75e6699b18cf8              # double 0.73027353304169562
	.quad	0x3fc72b1ff81dd69c              # double 0.18100356688562591
	.quad	0x3fedb20ad73e1e51              # double 0.92798368491726013
	.quad	0x3fac8161d6ebf9c0              # double 0.055674607739991
	.quad	0x3feec59ddb12a4e7              # double 0.96162312305127961
	.quad	0x3fdb34a029c46050              # double 0.42508701399629434
	.quad	0x3fc219845f919e4c              # double 0.14140371958204623
	.quad	0x3fdbaf9daa0557b0              # double 0.43259374240494264
	.quad	0x3fd3385bf298eea0              # double 0.30031489077712514
	.quad	0x3fd5ba84853a459c              # double 0.33950913439283581
	.quad	0x3fe8f46477452db4              # double 0.7798330621239331
	.quad	0x3fe1a6bf8adcc2a4              # double 0.55160500642349009
	.quad	0x3fc54a9bd37fae08              # double 0.16633937670791021
	.quad	0x3fcd256a889d1f30              # double 0.22770435019105539
	.quad	0x3fe0a3ba107eedd0              # double 0.51998618337477787
	.quad	0x3f8c25817224afc0              # double 0.013743411346318513
	.quad	0x3fea45f4ead4e943              # double 0.82103963723719919
	.quad	0x3fd696b81f19d3b8              # double 0.35294917142101268
	.quad	0x3fe33543d54e1a20              # double 0.60025207196378361
	.quad	0x3fa0326d25e19650              # double 0.031634722589654829
	.quad	0x3fe7e6ee264a960c              # double 0.74693973044185347
	.quad	0x3fc8700623d8a968              # double 0.19091870069798778
	.quad	0x3fb779dd4646f3f8              # double 0.091703252465734297
	.quad	0x3fe54cd43442ff04              # double 0.66562853057254801
	.quad	0x3fe8334e7c034c55              # double 0.75626301022783571
	.quad	0x3feebe81b6fd60bb              # double 0.96075521221339188
	.quad	0x3fd8d12e2497b0fe              # double 0.38776734899035137
	.quad	0x3fd999594fb4dac8              # double 0.39998467239221869
	.quad	0x3fed96ed2bb8f9a9              # double 0.92467363872110753
	.quad	0x3fee3e525eaaed79              # double 0.94510763635427886
	.quad	0x3fe3f8540c09a96b              # double 0.62406351424332962
	.quad	0x3fed78fd211a0dca              # double 0.92101913895788212
	.quad	0x3fd2a64d504aa8a6              # double 0.29140026894550386
	.quad	0x3fd0652ac5966750              # double 0.25617474837928444
	.quad	0x3fb3ce9f49f3c2f0              # double 0.077371554903731043
	.quad	0x3fc0fbb60215ed50              # double 0.1326816091712808
	.quad	0x3fba6cacf28033c8              # double 0.10322075767926642
	.quad	0x3fe990b0aa6e9298              # double 0.7989123657940409
	.quad	0x3fe1a2845b058205              # double 0.55108850267066656
	.quad	0x3fd141b30a8e8a64              # double 0.26963497191369457
	.quad	0x3fec0b3759678628              # double 0.87636916600985604
	.quad	0x3fb76b4cc5539948              # double 0.091481016326359854
	.quad	0x3fe6574006032a24              # double 0.69815064596452148
	.quad	0x3fe3a6272fed1711              # double 0.61403235779354948
	.quad	0x3fea6e029761b2a8              # double 0.82592897001957954
	.quad	0x3fdbf6b580ba78b4              # double 0.43693292208798629
	.quad	0x3fd726bcf246d6b2              # double 0.36173938426814367
	.quad	0x3fe4498bcfcda912              # double 0.6339778002414127
	.quad	0x3fe65269c18cde5c              # double 0.69756019404207903
	.quad	0x3fe53452117f7863              # double 0.66263678948940841
	.quad	0x3fdf7927c2dd3868              # double 0.49176973371220933
	.quad	0x3fd5646940e0267a              # double 0.33425360999590448
	.quad	0x3fd81ee4c849dec0              # double 0.376885600656788
	.quad	0x3fec0b46997d1e8f              # double 0.87637643793364528
	.quad	0x3fe1073957e0e5a0              # double 0.5321318355919864
	.quad	0x3fd59087ef686ec4              # double 0.33694647197419791
	.quad	0x3feb2f63fecd9937              # double 0.84953498617395595
	.quad	0x3feff85dd30b92bb              # double 0.99906817645804524
	.quad	0x3fac06a83ad223e0              # double 0.054738290004997969
	.quad	0x3fe199347c896fb2              # double 0.54995178531270583
	.quad	0x3feb117e46d55b31              # double 0.84588540873196483
	.quad	0x3fa0a43d1fadfc30              # double 0.032503042332784893
	.quad	0x3feddeecd8f15c2e              # double 0.93346254703181386
	.quad	0x3fe13f1dcf0de3f8              # double 0.53895464363370049
	.quad	0x3fcbf568e685f8cc              # double 0.21842681175252776
	.quad	0x3fc621413ef0c048              # double 0.17288985799086931
	.quad	0x3fd1e551a30f3824              # double 0.27962151454710438
	.quad	0x3fd7e3556ccdfd36              # double 0.37325034738019569
	.quad	0x3fdd380eef0dc9a4              # double 0.45654652924636197
	.quad	0x3fefabb84ff9674d              # double 0.98971191043822559
	.quad	0x3fe9ffaa7d5d4f1e              # double 0.81245922551395089
	.quad	0x3fba793648ebc2c0              # double 0.10341204910560986
	.quad	0x3fe6b0911287dc76              # double 0.70905355090407229
	.quad	0x3fd39b81bc6ccd40              # double 0.30636638069991662
	.quad	0x3fd391d319aaad36              # double 0.30577542788042267
	.quad	0x3fec1c3b63d26b55              # double 0.87844628807520542
	.quad	0x3fce428f06ff9030              # double 0.2364062103434903
	.quad	0x3fb40aa6049a7f00              # double 0.078287483333493668
	.quad	0x3fd49af1ceb1d1aa              # double 0.3219570654394156
	.quad	0x3fe657c8aeab8a31              # double 0.69821580996751298
	.quad	0x3fd7f14264e4357e              # double 0.3741003022449475
	.quad	0x3fd89da88f8bc310              # double 0.38462270754011829
	.quad	0x3f86082571baf300              # double 0.010757725270531093
	.quad	0x3fe4461fbfdcc7f8              # double 0.63356006119852193
	.quad	0x3fe849c60b5f0715              # double 0.75900556775033812
	.quad	0x3fc28279ab898380              # double 0.14460678935850169
	.quad	0x3fe4620701624925              # double 0.63696623106287531
	.quad	0x3fe0cfb5f2d55ae6              # double 0.52535531452562334
	.quad	0x3fc35cb35e9085d0              # double 0.15126649968537587
	.quad	0x3fe879871f55330e              # double 0.76483493919076451
	.quad	0x3fb2a8574fcd3d30              # double 0.072881180746880103
	.quad	0x3fda28729cf6d964              # double 0.40871873215237131
	.quad	0x3fe850d8f37bd802              # double 0.75986907535002524
	.quad	0x3fd597dbc03e87d4              # double 0.33739370130399249
	.quad	0x3fb7688149ddfc48              # double 0.091438370260207624
	.quad	0x3feaa14ff0aa460f              # double 0.83219143872173784
	.quad	0x3fb0ef42c0a01398              # double 0.066150829341565021
	.quad	0x3fee1a83c8f0269c              # double 0.94073666806908162
	.quad	0x3fe93da21aaca483              # double 0.7887735863670432
	.quad	0x3fe580b630fdf520              # double 0.67196187561754428
	.quad	0x3fe2242e1d96d0c8              # double 0.56691652087331423
	.quad	0x3fe846cac25ad99c              # double 0.75864160499513699
	.quad	0x3fe9d1c73951762c              # double 0.80685769267046714
	.quad	0x3febd31fecc3d00c              # double 0.86952205889838429
	.quad	0x3fd24093e402bd06              # double 0.28519150988263708
	.quad	0x3fb96adc8b25e888              # double 0.099286827060412475
	.quad	0x3fc3e901e68fabc4              # double 0.15554832227584658
	.quad	0x3fe53bd3852a9368              # double 0.66355300911946546
	.quad	0x3fe5dd17cda40493              # double 0.68323888935278132
	.quad	0x3fdc8eb020690a24              # double 0.44620898404187614
	.quad	0x3fe4b817273dde91              # double 0.64747197784795862
	.quad	0x3fc937c4c17ec814              # double 0.19701442192086971
	.quad	0x3f95cd96b695b120              # double 0.021292071241462485
	.quad	0x3fef2566ee30106c              # double 0.97331568261189493
	.quad	0x3fe61f0ee58f8ee2              # double 0.69129128299797693
	.quad	0x3fc86eed94941520              # double 0.19088525538260459
	.quad	0x3fe99898777ffde5              # double 0.79987738933408237
	.quad	0x3fe267297c93d0ca              # double 0.57509302455448474
	.quad	0x3fb4084f1afe4fc8              # double 0.078251785364329085
	.quad	0x3fe9ff212a1bad0d              # double 0.81239374374618623
	.quad	0x3fe794842d72cdb5              # double 0.73687943340922024
	.quad	0x3fe98ff24af78fa7              # double 0.79882158891677058
	.quad	0x3fe12e25231c4bb2              # double 0.53688294274831194
	.quad	0x3fcbd9c388ecddf4              # double 0.21758312402538105
	.quad	0x3febf5db99c5936c              # double 0.87376194032240794
	.quad	0x3fe16278d95014b1              # double 0.54327051586064645
	.quad	0x3fe786f9e681101d              # double 0.7352265836748334
	.quad	0x3fea22f0b5a76eb7              # double 0.81676516989997239
	.quad	0x3fdcdebf46d94874              # double 0.45109540861915964
	.quad	0x3fad6088945b95a0              # double 0.057377117261960153
	.quad	0x3fddcb943e9f2eb2              # double 0.46555048098955887
	.quad	0x3fe443bae74c82cc              # double 0.6332678334766455
	.quad	0x3fe5b852aa4f1a50              # double 0.67875035537219652
	.quad	0x3faf9bfebfc7c3a0              # double 0.061737023268398916
	.quad	0x3fa5796a04c80a70              # double 0.041941941341083644
	.quad	0x3fe1511a41e4189e              # double 0.54115021581016598
	.quad	0x3fe6d2302550938e              # double 0.71315772331273464
	.quad	0x3fe081b9dc819807              # double 0.51583569591161982
	.quad	0x3fc21e7409bacc4c              # double 0.14155436015207312
	.quad	0x3fd91bedb8c85aea              # double 0.39232962651423853
	.quad	0x3fea423f299663bd              # double 0.82058675882864629
	.quad	0x3fe4702959ed34bb              # double 0.63869159282480525
	.quad	0x3fa72432499f2020              # double 0.045198031889924772
	.quad	0x3fbe4f3b1dd908e0              # double 0.11839646795945979
	.quad	0x3f6eb2d8e602cd00              # double 0.0037473903940622444
	.quad	0x3fdd80ccb9c6b100              # double 0.46098631040764815
	.quad	0x3fe0bbbaf014b520              # double 0.52291628733442863
	.quad	0x3feec385261189b6              # double 0.96136720118766195
	.quad	0x3fed9125ab8ab975              # double 0.92396815780902719
	.quad	0x3fc2264c37e41ce8              # double 0.14179375390106164
	.quad	0x3fe422d84ca8f4ee              # double 0.62925353024152542
	.quad	0x3fe07c446a552ea2              # double 0.51516934173692541
	.quad	0x3feffc1fd07f1355              # double 0.9995268890566914
	.quad	0x3fe4e3787e1384e4              # double 0.65276741623179335
	.quad	0x3fc2ac1a1c704f94              # double 0.14587713612183661
	.quad	0x3fd3b2f7f440796c              # double 0.30779837467880244
	.quad	0x3fe899c0dc7fcbd8              # double 0.76876872125864804
	.quad	0x3fddd43039d16b8c              # double 0.46607595106404953
	.quad	0x3fbe78f56269ce18              # double 0.11903318073910218
	.quad	0x3fc6076b28c785e0              # double 0.17210139743023856
	.quad	0x3fe43d400084a7a2              # double 0.63247680760581582
	.quad	0x3fc240243664471c              # double 0.14258244186253755
	.quad	0x3fe4d006832f72be              # double 0.65039373037469494
	.quad	0x3fe889e42dc653a0              # double 0.7668324369466184
	.quad	0x3fed858ebd4846f3              # double 0.92255341500478349
	.quad	0x3fe9e1554bd4b87d              # double 0.80875649271707994
	.quad	0x3fbf0741ea64acc0              # double 0.12120449039928172
	.quad	0x3fe2a6d35d0c5aeb              # double 0.58286445783127527
	.quad	0x3feb93757946b39c              # double 0.86175035177949466
	.quad	0x3feb84e3303bbaff              # double 0.85997161312647552
	.quad	0x3fe54d31eee06d23              # double 0.66567322402571383
	.quad	0x3fefccf1ee56f9d0              # double 0.99376770544750492
	.quad	0x3fc1e21d42395da8              # double 0.1397129605636398
	.quad	0x3fe83dba3e45e168              # double 0.75753509676637254
	.quad	0x3fd9336c84d91e6a              # double 0.39376366589974643
	.quad	0x3fe63e4852f7b3a8              # double 0.69510284618956053
	.quad	0x3fe3a7406a4ad955              # double 0.61416645775060863
	.quad	0x3fed35467748a27d              # double 0.91275332734683412
	.quad	0x3fd5c9f572ebbbd6              # double 0.34045158598649772
	.quad	0x3fc1084f450885f8              # double 0.13306609030500716
	.quad	0x3fcdd365d18e5734              # double 0.23301384670474479
	.quad	0x3fdbbfb1bb81dd1a              # double 0.43357508956201374
	.quad	0x3fe705aef25754b2              # double 0.71944377262356896
	.quad	0x3fe4361d50039c97              # double 0.63160577419047825
	.quad	0x3feab2045d742973              # double 0.83423059704482083
	.quad	0x3fcffa98d59ea21c              # double 0.2498351138176681
	.quad	0x3fd2508b664c9b38              # double 0.28616604795608991
	.quad	0x3fb84d8e7c314d50              # double 0.094933419533210328
	.quad	0x3fbc8101ebf245f8              # double 0.11134349832925483
	.quad	0x3fbc466fec5e8638              # double 0.11044978638394631
	.quad	0x3fb4411bb5082028              # double 0.079118472764208136
	.quad	0x3fe49a8238288fa3              # double 0.64386092155881547
	.quad	0x3fac7042fca961b0              # double 0.055543988554464518
	.quad	0x3f9a6307cf6d0dc0              # double 0.025768396411206984
	.quad	0x3f8fa00cf5db8100              # double 0.01544199109361033
	.quad	0x3fcdd9568a2c4964              # double 0.23319513079384102
	.quad	0x3fd8aeb77210e97c              # double 0.38566385401977477
	.quad	0x3fbf84f33a9418b0              # double 0.12312240772380068
	.quad	0x3feabd46d9bbd475              # double 0.83560507322421407
	.quad	0x3fdf746bc93d60d6              # double 0.49148077633209419
	.quad	0x3fc3c55ddbee2eb0              # double 0.15446065176762636
	.quad	0x3fb889341d03f870              # double 0.095843560298790597
	.quad	0x3fd15b21a5d30798              # double 0.27118722146780661
	.quad	0x3fc34ba5609dd944              # double 0.15074603288275956
	.quad	0x3f9cc270806ff400              # double 0.028085477675620751
	.quad	0x3f50e40e519cd400              # double 0.0010309352714561459
	.quad	0x3fea750746311b34              # double 0.82678569516506295
	.quad	0x3fe346620055da3c              # double 0.6023416525411629
	.quad	0x3fde794dd071aa04              # double 0.47615380626544401
	.quad	0x3fe62578d2d3ba40              # double 0.69207421471748631
	.quad	0x3fe5fe8918c73782              # double 0.6873212322186506
	.quad	0x3fc32148dc9960ac              # double 0.14945326587144814
	.quad	0x3fb011859679b0b8              # double 0.062767361867090865
	.quad	0x3fc3353ac86b4994              # double 0.15006193910683108
	.quad	0x3fe0cfa75b2ec653              # double 0.52534835633395927
	.quad	0x3fef315e232aa555              # double 0.97477633350824055
	.quad	0x3fc3e3e5e3510824              # double 0.15539239501419033
	.quad	0x3fdae28c6d1075d6              # double 0.42007742548761706
	.quad	0x3fdff1193a5e4ffc              # double 0.49909048748054352
	.quad	0x3fe4bda7eaf74099              # double 0.64815135852588235
	.quad	0x3fb98e6ac9a62348              # double 0.099829363089282031
	.quad	0x3fd60230d7721872              # double 0.34388371505372739
	.quad	0x3fe1242a01edc713              # double 0.53566456200334966
	.quad	0x3fd05a26c90778a8              # double 0.25550241119152384
	.quad	0x3fe8d5260b7f72bc              # double 0.77601911779091592
	.quad	0x3febfce971615273              # double 0.87462303299487443
	.quad	0x3fefb546628eb7cd              # double 0.99087828874120875
	.quad	0x3fd9bd26e2b89324              # double 0.40216991558763682
	.quad	0x3fc2a637b78e6200              # double 0.1456975599546837
	.quad	0x3fd5cb7a6f7e9800              # double 0.34054432762275155
	.quad	0x3fdee7424606663e              # double 0.48286492193583175
	.quad	0x3fc68967a53c03b8              # double 0.17606826370322692
	.quad	0x3fc293e7854eb148              # double 0.14513868340635327
	.quad	0x3fcba0499310fda8              # double 0.21582908326125261
	.quad	0x3fbc74eeb5057d10              # double 0.11115924758404483
	.quad	0x3fe4239f8650ad6f              # double 0.62934852822711018
	.quad	0x3fcad891b3f5f3bc              # double 0.20973416602273953
	.quad	0x3feae8b70eaf7193              # double 0.84090760105350382
	.quad	0x3fe4175637682657              # double 0.62784872838637795
	.quad	0x3fe9a43bf46d7a3c              # double 0.80129811992430388
	.quad	0x3fe7f53372baff74              # double 0.7486817589597039
	.quad	0x3fecd5b6dbf2d540              # double 0.90108817061142332
	.quad	0x3fe02709c305eb40              # double 0.50476539698079392
	.quad	0x3fe2d2a7abc29ca5              # double 0.58821471735872832
	.quad	0x3fc5a0c5cc69fd10              # double 0.16896889191773612
	.quad	0x3fdd1e3a85af6cd8              # double 0.45497000746918337
	.quad	0x3fe797fa241615cb              # double 0.73730189369296661
	.quad	0x3fbee56767e13be8              # double 0.1206879261601298
	.quad	0x3fd76d2eb112aff0              # double 0.36603896419796822
	.quad	0x3fcdf36394c04d3c              # double 0.2339901424717058
	.quad	0x3feff0b3eb10fc8f              # double 0.99813266669652189
	.quad	0x3fde8da060fa4246              # double 0.47739419432130992
	.quad	0x3fdf67aab978c24e              # double 0.49070232498619226
	.quad	0x3feb37651ef8d103              # double 0.85051208543021095
	.quad	0x3fe0c71be2a0df90              # double 0.52430528891908246
	.quad	0x3fec8e8dae7421d2              # double 0.89240154335953492
	.quad	0x3fddcf0a7b4868c4              # double 0.46576177634564098
	.quad	0x3fdd60376f0f49c2              # double 0.45899759145427421
	.quad	0x3fca975c5a7b7dc4              # double 0.20774416368565884
	.quad	0x3fd29c7586980fa8              # double 0.29079950469917515
	.quad	0x3fd8122165764bfc              # double 0.37610659511955169
	.quad	0x3fd8c3a87502fa5c              # double 0.38694201876561407
	.quad	0x3fdd369be215783a              # double 0.45645806387426868
	.quad	0x3fd232490e962340              # double 0.28431917595348821
	.quad	0x3fc09c2ff52f0cf0              # double 0.12976645919670871
	.quad	0x3fd8ecdee1f9eacc              # double 0.38945743625633322
	.quad	0x3fc859c904099d70              # double 0.19024002740045942
	.quad	0x3fcb090132ceb3bc              # double 0.21121230107146782
	.quad	0x3fe1fc5d7512abba              # double 0.56205628267104335
	.quad	0x3fe0f25d9f6f7ea9              # double 0.52958565845252281
	.quad	0x3fd250b07de31436              # double 0.28617489141135211
	.quad	0x3fd7b3560f9d70cc              # double 0.37032081150915697
	.quad	0x3fd7c6bc2ceafe98              # double 0.37150482546346941
	.quad	0x3fe771f59332a3c4              # double 0.73266104459354908
	.quad	0x3f54d092dfebac00              # double 0.0012704309771673916
	.quad	0x3fe48d013afb7ea3              # double 0.64221250076294145
	.quad	0x3fdb897794086fbe              # double 0.43026532608359591
	.quad	0x3fe058ffe7a3d42d              # double 0.51086421243838276
	.quad	0x3fc364d0089fb2e4              # double 0.15151405736050727
	.quad	0x3fe73631d0619597              # double 0.72536555003596248
	.quad	0x3fc261ee1d221008              # double 0.14361359045517497
	.quad	0x3fc7a0923bfa498c              # double 0.1845877449855603
	.quad	0x3fe29b6b1cebba56              # double 0.58147197388263794
	.quad	0x3fc20c44dff911f8              # double 0.14099942146471256
	.quad	0x3febcb198f2c57c5              # double 0.86854246104734811
	.quad	0x3fdeeb3a3833bb08              # double 0.48310714233859686
	.quad	0x3fd18df400b2a26e              # double 0.27428913181441927
	.quad	0x3fdff8106bcd5ab4              # double 0.49951563384585573
	.quad	0x3fe0edaa6a62d4f2              # double 0.52901192453887647
	.quad	0x3fe23c8fe0440d6d              # double 0.56989282419128318
	.quad	0x3fe9758c255ff5aa              # double 0.79559905338071712
	.quad	0x3fe6964719916c94              # double 0.70584444993746098
	.quad	0x3fe254ca1969bf6e              # double 0.57285027469150207
	.quad	0x3fa298c211c20090              # double 0.036321701686575669
	.quad	0x3fecf95f8006af83              # double 0.90544104580975249
	.quad	0x3fabec2d44fb9320              # double 0.054536261244527262
	.quad	0x3fd7715bc7a50a92              # double 0.36629385468055731
	.quad	0x3fd0c72a05c56398              # double 0.26215601504878228
	.quad	0x3fe7ce8e39e2d3d7              # double 0.74396430307262562
	.quad	0x3fb239e5eef54be8              # double 0.071195956077005129
	.quad	0x3fe139fdb2dc16d1              # double 0.53832898076572111
	.quad	0x3fe4d9586b120388              # double 0.65153141891652044
	.quad	0x3fe76e7d581c71a7              # double 0.73223750313950553
	.quad	0x3fe69114831c102d              # double 0.70520997626636517
	.quad	0x3fc23781938f3b40              # double 0.14231891350797277
	.quad	0x3fdb350d01485f50              # double 0.42511296391738984
	.quad	0x3fdeb8fc8500a6ca              # double 0.48004067410020623
	.quad	0x3fcc951161ce372c              # double 0.22329919124279607
	.quad	0x3feb98ccf350166c              # double 0.86240241548575857
	.quad	0x3feeeda52cece9e3              # double 0.96650942587376353
	.quad	0x3fb6069d47264558              # double 0.086038427229387593
	.quad	0x3fef6379a3487698              # double 0.98089296237204148
	.quad	0x3fd76487f2072bb8              # double 0.3655109275393289
	.quad	0x3fb370fb5ea41928              # double 0.075942717176165631
	.quad	0x3fecfd0ced447bca              # double 0.90588995305358222
	.quad	0x3fec028cb4192ebb              # double 0.8753112332865024
	.quad	0x3fe04948bd36eea0              # double 0.50894581752750767
	.quad	0x3fe2f37638782a8f              # double 0.59221945790462083
	.quad	0x3fe0d25fa9dd64ba              # double 0.52568038155290897
	.quad	0x3fe9eb03986db168              # double 0.80993823786915886
	.quad	0x3fda760310afb2c0              # double 0.41345287923358498
	.quad	0x3fec8642ddb0d96c              # double 0.89138930605876742
	.quad	0x3fe6d90c55e0462c              # double 0.71399513981504503
	.quad	0x3fabf23294796200              # double 0.054582195877348028
	.quad	0x3fa38f8b2ccf9a30              # double 0.038204526157461394
	.quad	0x3fd66553e2424e7c              # double 0.34993455024343922
	.quad	0x3febfd8e7ec2a060              # double 0.87470173604834755
	.quad	0x3fd662aac3692b60              # double 0.34977215846145349
	.quad	0x3f8a486d06278d80              # double 0.012833453893967173
	.quad	0x3fe54abc64eba785              # double 0.66537303648986834
	.quad	0x3fdfe184ca630abe              # double 0.49813956989616404
	.quad	0x3fecad560d54d822              # double 0.89615919688981571
	.quad	0x3f9d760eeda3f400              # double 0.028770669226094725
	.quad	0x3fc382e60852ca5c              # double 0.15243220716873196
	.quad	0x3fcec14bfc41e1cc              # double 0.2402739507413244
	.quad	0x3fd5aa61fd8e9e54              # double 0.3385243393081272
	.quad	0x3f61041c0d915d00              # double 0.0020771549139159129
	.quad	0x3fd28499bedd8532              # double 0.28934329642477785
	.quad	0x3fe4253e243ca0f0              # double 0.62954623296266554
	.quad	0x3fedb4a1f3509237              # double 0.92829988024147425
	.quad	0x3f61abc2a5002b00              # double 0.0021570970202494655
	.quad	0x3f96db4e795bc4a0              # double 0.022320963055737608
	.quad	0x3fcb06850e5c1a1c              # double 0.21113646699105082
	.quad	0x3fdd41f68281b9e6              # double 0.45715105767058473
	.quad	0x3fcdcc577532c018              # double 0.23279851172037591
	.quad	0x3fbdae6b4ed805c8              # double 0.11594267535112757
	.quad	0x3f723eee3963c700              # double 0.0044545465118390748
	.quad	0x3fe1ebf9c6ff99fd              # double 0.56005562655337793
	.quad	0x3fe8432afbf2c777              # double 0.75819920738852786
	.quad	0x3fe7c65f18007daa              # double 0.74296526611208447
	.quad	0x3fe493450bdf894a              # double 0.64297725981695319
	.quad	0x3fecf007fa62092b              # double 0.90430067923469915
	.quad	0x3fdbf4dbaecc2670              # double 0.43681995458664513
	.quad	0x3fe0289aa4f13a34              # double 0.50495655265132777
	.quad	0x3fdb7e8258950ec4              # double 0.42959650660143844
	.quad	0x3fc3c7b5eff9978c              # double 0.15453218667533652
	.quad	0x3fe8752d669c97e8              # double 0.76430387536379119
	.quad	0x3f633cb316776c00              # double 0.0023482797439391412
	.quad	0x3fe25a0dc9c1cbb1              # double 0.57349290280978071
	.quad	0x3fee488a5db81d74              # double 0.94635504059344421
	.quad	0x3fa3939776a98cc0              # double 0.038235409960884592
	.quad	0x3fe445166702d451              # double 0.63343353385301715
	.quad	0x3fe9377881590863              # double 0.78802132857550722
	.quad	0x3febcdb453fd4c4d              # double 0.86886040119350982
	.quad	0x3fd9e28b97dbb212              # double 0.40445222692395177
	.quad	0x3fe2fa2c15310a29              # double 0.59303859843231976
	.quad	0x3f9c77a7b0a88520              # double 0.027800197751394085
	.quad	0x3fea4d80dbf783a3              # double 0.82196085893894055
	.quad	0x3fec59cbdc33eac8              # double 0.88596146591529479
	.quad	0x3fe3735b5553033c              # double 0.60783163704773058
	.quad	0x3fed9383c209ef94              # double 0.92425716303067639
	.quad	0x3fe7c4bf8dc946ed              # double 0.74276712124466615
	.quad	0x3fed0f645dddd08d              # double 0.90812891324323319
	.quad	0x3fec4770e1f2b1c4              # double 0.88372081881021147
	.quad	0x3fddd7fba1362e9c              # double 0.46630755179715222
	.quad	0x3fd6bf03c8a0f704              # double 0.35540861694958914
	.quad	0x3fcf8e77a270726c              # double 0.24653525764087492
	.quad	0x3fe7fb5c90098152              # double 0.7494337857461153
	.quad	0x3fd599e92f4d18e4              # double 0.33751897448781976
	.quad	0x3fbbe1698f6e0850              # double 0.10890826942161991
	.quad	0x3fe2df351878353f              # double 0.58974699763499661
	.quad	0x3fdf07ce5918a286              # double 0.48485144329837515
	.quad	0x3fba65d4c1324c60              # double 0.10311631886206518
	.quad	0x3fed2865876c386f              # double 0.91118122529748102
	.quad	0x3fae40839e7b7580              # double 0.059085953803996283
	.quad	0x3fd71560a63e792c              # double 0.36067978129166778
	.quad	0x3fd59e225ee8eee2              # double 0.33777674931091728
	.quad	0x3fe3710aa3ec42f4              # double 0.60754901901427028
	.quad	0x3feb1da6bcec0f2c              # double 0.84736954592560698
	.quad	0x3fdf373e0840d5b0              # double 0.48774672323210222
	.quad	0x3fe987c11006e5a8              # double 0.79782155161153856
	.quad	0x3fdf95114f4f57aa              # double 0.49347336526022423
	.quad	0x3fc0d6420c34cc18              # double 0.13153863521583342
	.quad	0x3feae1b3b1c2edad              # double 0.8400515052703007
	.quad	0x3fd92576d63b016e              # double 0.39291163369127602
	.quad	0x3fb5e6f340f8f7a8              # double 0.085555270540651152
	.quad	0x3fe6b0134745cc60              # double 0.70899356766166122
	.quad	0x3fbf53d09d8f6538              # double 0.12237266394312918
	.quad	0x3fe402091daec0af              # double 0.62524848744762618
	.quad	0x3fe591f909a1b421              # double 0.67406894570524767
	.quad	0x3fe210806a2131e3              # double 0.56451435783816029
	.quad	0x3fd11106c2ee5f26              # double 0.26666420971149518
	.quad	0x3fed7dbef01c3d4e              # double 0.92159983536286361
	.quad	0x3fc4d24832ad59ac              # double 0.16266729807348435
	.quad	0x3fe84a4711ef911e              # double 0.75906709197127831
	.quad	0x3fde11bc80d8188e              # double 0.46983254034456301
	.quad	0x3fe193ad7a53a68c              # double 0.54927705661721538
	.quad	0x3f8daad0f1596640              # double 0.014485962262528962
	.quad	0x3fee0f3e5b8a1414              # double 0.93936078909666997
	.quad	0x3fe09b3282c81ba2              # double 0.51894498389525645
	.quad	0x3fd90af5cc3a6bae              # double 0.3912939543167181
	.quad	0x3fd74ce62f868e2a              # double 0.3640685524098638
	.quad	0x3fb5be73f0420058              # double 0.084937330395406518
	.quad	0x3fef680a8e905b7e              # double 0.98145034641753148
	.quad	0x3feeb0535c1a32fc              # double 0.95902412403810854
	.quad	0x3fd5cd9d7a5ebbe8              # double 0.34067475271416336
	.quad	0x3fe9fd74e4609408              # double 0.81218952755864482
	.quad	0x3fd0335dcb1800de              # double 0.25313515504241291
	.quad	0x3fe4f7a037b729fa              # double 0.655227764910989
	.quad	0x3fe67baf9e0a2bcf              # double 0.70259838931212382
	.quad	0x3fe6ecb24cbc4a70              # double 0.71639361369518717
	.quad	0x3fe939a806b773cc              # double 0.7882881289657404
	.quad	0x3fe5f53b616f9a92              # double 0.68618554144343791
	.quad	0x3fe693a61d116c1c              # double 0.70552354504923498
	.quad	0x3fe9b467e5664bf5              # double 0.8032721977673406
	.quad	0x3fe3e8b13379ce9e              # double 0.62215480855816785
	.quad	0x3fc3f0451287b7bc              # double 0.15576995281975126
	.quad	0x3fd6b15ddf124676              # double 0.35457560333552551
	.quad	0x3fea72b0344a3e0f              # double 0.82650003636257618
	.quad	0x3fdf86fb5d0615e0              # double 0.49261364063599267
	.quad	0x3fe5e6e1141a1fc0              # double 0.68443349767857597
	.quad	0x3feeeb9d384e5baf              # double 0.96626149174959674
	.quad	0x3fee210f4a6e7aa2              # double 0.94153561150945486
	.quad	0x3fd59560a95f21ea              # double 0.33724228420444879
	.quad	0x3fca8d59be571ebc              # double 0.20743867677651007
	.quad	0x3fd1b110e0f1d502              # double 0.27643224684955225
	.quad	0x3fed90f638bd3c5b              # double 0.92394553262591772
	.quad	0x3fec6e57a835b4f6              # double 0.88846953252291772
	.quad	0x3fda663b79e2e93e              # double 0.4124897661491963
	.quad	0x3fb73867a543d778              # double 0.090704419944669712
	.quad	0x3fc0d2301f3a7ff8              # double 0.131414427994059
	.quad	0x3fc2fecd74c1d510              # double 0.14840095711739609
	.quad	0x3fe61a2eaf4d75ba              # double 0.69069608916077319
	.quad	0x3fb1b70c8eb9a8d0              # double 0.069199356884982466
	.quad	0x3fd1448d7c08a57a              # double 0.26980912316010797
	.quad	0x3fd3de7185f875d8              # double 0.3104518707567343
	.quad	0x3fe0a96fa8b562fe              # double 0.52068312598120747
	.quad	0x3feed2c49e055eee              # double 0.96322852004501924
	.quad	0x3fe353f12fc69487              # double 0.60399684268180998
	.quad	0x3fc9662562aea1e4              # double 0.19842974966492399
	.quad	0x3fe2f8417e85b088              # double 0.59280466758129169
	.quad	0x3fd92fd318e505cc              # double 0.39354398184886175
	.quad	0x3fd706eb9acd9b78              # double 0.35979738347526036
	.quad	0x3fdd24876e23cf3e              # double 0.45535455470893627
	.quad	0x3fe6dafe1115d960              # double 0.71423247658712441
	.quad	0x3fbae488501d2418              # double 0.10504962879089452
	.quad	0x3fed170cadbf44db              # double 0.90906366286267415
	.quad	0x3fd4e588eb439be2              # double 0.32650969481477266
	.quad	0x3fe2a663bacf151d              # double 0.58281122671238317
	.quad	0x3fe3b099e406b231              # double 0.61530775581701935
	.quad	0x3fc9c8bba2700d54              # double 0.20143838340309606
	.quad	0x3fc3f16ed0b743c4              # double 0.15580544654087991
	.quad	0x3fded977071feb92              # double 0.48202300735254611
	.quad	0x3fe4ef3b8e37072f              # double 0.65420320297582701
	.quad	0x3fdb500d728961f0              # double 0.4267610186120967
	.quad	0x3fee0ec41fc3efef              # double 0.9393025036256385
	.quad	0x3fdf802bef6cf1a8              # double 0.49219797498133255
	.quad	0x3fe19749e957ae60              # double 0.54971786093433295
	.quad	0x3fd5478d4004fda4              # double 0.33249217273620446
	.quad	0x3feca9eb267240e2              # double 0.89574201115649665
	.quad	0x3fd7710a9c9df974              # double 0.36627450270307027
	.quad	0x3fe5de57d84b9d0b              # double 0.68339149708927616
	.quad	0x3fe34eb8f9707423              # double 0.60335968702895959
	.quad	0x3fecffb479b3fec2              # double 0.90621398706567668
	.quad	0x3f95bc7d4dcb0600              # double 0.021226842759238806
	.quad	0x3fb785bb0e59fea0              # double 0.091884318355364147
	.quad	0x3fd1aec24ba7caae              # double 0.27629144085146151
	.quad	0x3fe1492247e2569a              # double 0.54017747917051229
	.quad	0x3fe2533e97697ac0              # double 0.57266168186819044
	.quad	0x3feb36057d3823f5              # double 0.85034441429991026
	.quad	0x3f818e7964c49d00              # double 0.0085725292088469907
	.quad	0x3feab74b38a4b4cd              # double 0.83487473548088931
	.quad	0x3fc740f28dbbfdec              # double 0.18166953964826804
	.quad	0x3fec98f264bda82e              # double 0.89367026973673602
	.quad	0x3fd3224beeea8c22              # double 0.29896829921398382
	.quad	0x3fe04e2a8b76e518              # double 0.50954177130839451
	.quad	0x3fd4cbefc687d2a4              # double 0.32494730365514557
	.quad	0x3fa0f6ffb32349f0              # double 0.033134451501286466
	.quad	0x3fd29aa9296a84bc              # double 0.29068974537410575
	.quad	0x3fcbcd9e5bcf4de0              # double 0.21721248133563531
	.quad	0x3fe6a9feacb2ce2b              # double 0.70825132112662936
	.quad	0x3fe1e8e770330dd4              # double 0.55968067087126849
	.quad	0x3fef2a456cefaeaa              # double 0.97391005779851025
	.quad	0x3fecfbd96db2017c              # double 0.90574332642431398
	.quad	0x3fce62c9fa69e774              # double 0.23738980033140999
	.quad	0x3fe70b8dbde919db              # double 0.72016036121277283
	.quad	0x3fe767fe4f61c57f              # double 0.73144450668603145
	.quad	0x3fc16651bcf263b4              # double 0.1359350369064295
	.quad	0x3fe4bfa2472d71f9              # double 0.64839280988559189
	.quad	0x3feffee3e0ea5fd1              # double 0.99986452034772288
	.quad	0x3fe098014b1571ac              # double 0.51855530419157025
	.quad	0x3fe03c63c1b995bd              # double 0.50737178646948389
	.quad	0x3fba2d0afae3e4f8              # double 0.10224979996918993
	.quad	0x3fe3bd8b71680890              # double 0.61688778066333505
	.quad	0x3fcc6c4019de6f94              # double 0.22205353987817189
	.quad	0x3fe7099ed29620a5              # double 0.71992436533129889
	.quad	0x3fe5c9638a0679c4              # double 0.68083359678330924
	.quad	0x3fec93c09952ec71              # double 0.89303617425993143
	.quad	0x3fe9071aab82dd54              # double 0.78211720941809881
	.quad	0x3fe3e903dfe20394              # double 0.62219423033831101
	.quad	0x3fe2f7e8df2533e3              # double 0.59276240904875654
	.quad	0x3fe42d50d0cdf090              # double 0.6305316999637558
	.quad	0x3fd8931bb6822d92              # double 0.38397877524467916
	.quad	0x3feeb5166e8ba716              # double 0.95960542288705386
	.quad	0x3fe46ccb93b65b27              # double 0.63828066682876716
	.quad	0x3fdd66be27676984              # double 0.45939592216532099
	.quad	0x3fcb2ca96fc35454              # double 0.21230047185113909
	.quad	0x3fe7f7b74d3ccf66              # double 0.74898877225357974
	.quad	0x3fe6268074a2e9e2              # double 0.69219992428343979
	.quad	0x3fd344d4125b643c              # double 0.30107595246005636
	.quad	0x3febc595b7778aa1              # double 0.8678692420329136
	.quad	0x3fb285413ea90b78              # double 0.072345807836468157
	.quad	0x3fb4bb2e37128570              # double 0.080981148190877538
	.quad	0x3fa477fce8b924e0              # double 0.039977935227008876
	.quad	0x3fd6c2cb91f8ba78              # double 0.35563935523069956
	.quad	0x3fd616dcef54548c              # double 0.34514544841778938
	.quad	0x3fe5951a5a0fb694              # double 0.67445104208100526
	.quad	0x3fe44747a58301df              # double 0.63370115591538567
	.quad	0x3fe0fe8806148094              # double 0.53107072055356008
	.quad	0x3feaa621429650d4              # double 0.83277953152949146
	.quad	0x3febf6d31b0c9fc2              # double 0.87387995989865197
	.quad	0x3fe685b2e5615f54              # double 0.70382065583087661
	.quad	0x3fe5a810489ba58c              # double 0.67676557713746055
	.quad	0x3fd447ca7d2729fc              # double 0.31688177320452815
	.quad	0x3fc729c466ed4814              # double 0.18096213365294089
	.quad	0x3fe9652581cb64c3              # double 0.79359698629846098
	.quad	0x3fe0f8876794eddc              # double 0.53033800345240989
	.quad	0x3fecaeceebe2a022              # double 0.89633890220011758
	.quad	0x3fb3c9973749dd00              # double 0.077294779775787248
	.quad	0x3fcdd083f458d784              # double 0.23292588644988765
	.quad	0x3fdcd323a0cffaae              # double 0.45038691238725448
	.quad	0x3fdcc0898b4f846c              # double 0.44925154308845694
	.quad	0x3fe7aceafae58efc              # double 0.73985814097656499
	.quad	0x3fe03dc1ed767cd8              # double 0.50753876094304484
	.quad	0x3fd292c0bd359570              # double 0.29020708539459061
	.quad	0x3fcd85f5784205b8              # double 0.23065060016601335
	.quad	0x3fe6d3177a8484f7              # double 0.71326803139905237
	.quad	0x3fe4c3531c8e4400              # double 0.6488433416108137
	.quad	0x3fc125362cc29ea0              # double 0.13394810853536843
	.quad	0x3fee4129382d1283              # double 0.94545422527205891
	.quad	0x3fec65759b1a85ef              # double 0.88738518041298942
	.quad	0x3fea90fd5f2eafcb              # double 0.83019894209200495
	.quad	0x3febeb02923057fc              # double 0.87243774940975482
	.quad	0x3fda52dc79939b10              # double 0.41130744812692033
	.quad	0x3fc6183c18a4ff5c              # double 0.17261458590837264
	.quad	0x3fd7e3a3ff26510c              # double 0.37326908032379502
	.quad	0x3fe7f050b2e4b725              # double 0.74808535518761643
	.quad	0x3fd0b014642f56fc              # double 0.26074704917606062
	.quad	0x3fea8417e655adc1              # double 0.82862467753641778
	.quad	0x3fd6d624a9620cca              # double 0.35682026425656643
	.quad	0x3fd98e9da54bcf9c              # double 0.39932957784844247
	.quad	0x3fede93b87e54132              # double 0.93472076932997639
	.quad	0x3fa2bd048a8a19a0              # double 0.036598340903810866
	.quad	0x3fcced4492a0acb0              # double 0.22599084052612772
	.quad	0x3fd64fb066f6ee44              # double 0.34861383490690323
	.quad	0x3fcb5a7c6a98a394              # double 0.21369891362089943
	.quad	0x3fe30873362ea0c0              # double 0.59478149969529426
	.quad	0x3fc0c2574840dea8              # double 0.13093081501005099
	.quad	0x3fb11e289526bab0              # double 0.066866432584655966
	.quad	0x3fec20b21c179974              # double 0.87899117933993275
	.quad	0x3fc52eb055a6c130              # double 0.16548732931324528
	.quad	0x3fea0ca3d9f27f64              # double 0.81404297416518689
	.quad	0x3fe43539300ad344              # double 0.63149699576624885
	.quad	0x3fea3532355045e9              # double 0.81899366772466664
	.quad	0x3fe807b9f57a5de6              # double 0.75094316430016472
	.quad	0x3fdc190303a0126e              # double 0.43902659753829354
	.quad	0x3fe02396cb7afb7e              # double 0.50434436552301043
	.quad	0x3fe1e96f8e31a06d              # double 0.55974557659375324
	.quad	0x3fcd4dbb6ab4abcc              # double 0.22893469534150623
	.quad	0x3fe447e8c33f100b              # double 0.63377798208284852
	.quad	0x3fc0000808312bbc              # double 0.12500095748904794
	.quad	0x3fdee0d62421f804              # double 0.48247293022711824
	.quad	0x3f65e926ec7eb400              # double 0.0026746521216041153
	.quad	0x3fe011ce9703f48a              # double 0.50217370505528547
	.quad	0x3fe3f61dfbe765da              # double 0.62379359436016135
	.quad	0x3fd8e2cfee96ea2c              # double 0.38884352016217139
	.quad	0x3fb7eed6d12eed80              # double 0.093488145895141983
	.quad	0x3fee3d5a9392a980              # double 0.94498947928268251
	.quad	0x3fcd8641c62390c4              # double 0.23065969633819894
	.quad	0x3fe1acda76fb66be              # double 0.55235026587180136
	.quad	0x3fbc003ddf0266d0              # double 0.10937868780674909
	.quad	0x3fe0316ea66b4a31              # double 0.50603420737963323
	.quad	0x3f7cdede40f79700              # double 0.0070484811580848739
	.quad	0x3f90d00303306a40              # double 0.01641850192036487
	.quad	0x3fe9eb97f84edc85              # double 0.81000898835817792
	.quad	0x3fda8b94844388ec              # double 0.41476929584872724
	.quad	0x3fd64a56fa31262c              # double 0.3482873385697498
	.quad	0x3fe6f7970f3c0ebb              # double 0.71772339797504203
	.quad	0x3fecdc49f6d25d8b              # double 0.90189073760386529
	.quad	0x3fc4637394af4258              # double 0.15928501853933841
	.quad	0x3fd326f5f154b836              # double 0.29925297324632838
	.quad	0x3fddb3f1c8142e70              # double 0.46410793818424789
	.quad	0x3fe3877428b78262              # double 0.61028488113886348
	.quad	0x3fdae7221a9250d0              # double 0.42035725207211971
	.quad	0x3fc1bb971976f884              # double 0.13853729957003591
	.quad	0x3feb0d61b02ad7f5              # double 0.84538349540412006
	.quad	0x3fe1ac90f32646f8              # double 0.55231521120205596
	.quad	0x3fb22b880d1f7ac8              # double 0.070976737216805863
	.quad	0x3fea806a34c10b4e              # double 0.82817564300089841
	.quad	0x3fc76cee591d1334              # double 0.1830118117451548
	.quad	0x3fef3df5d8909fff              # double 0.97631351754989725
	.quad	0x3fe668e12e72228f              # double 0.70030268737271395
	.quad	0x3fe3e1e6c51f3ea6              # double 0.62132586002731638
	.quad	0x3fb0652f43fabd58              # double 0.064043954941316428
	.quad	0x3fe46a73fbfa54b4              # double 0.63799475874352263
	.quad	0x3fda87a8a4f6e512              # double 0.41452995405013937
	.quad	0x3fe521631cb41b60              # double 0.6603255806556767
	.quad	0x3fec7f23dd79e998              # double 0.89052003151964509
	.quad	0x3f915c3afc17ea20              # double 0.016953393589554833
	.quad	0x3fe4b3e3e357240d              # double 0.64695925142689392
	.quad	0x3fc3d151edb5cadc              # double 0.15482544047298219
	.quad	0x3fdb1f7637011a98              # double 0.42379527446284149
	.quad	0x3fe3c91580114252              # double 0.61829638493697758
	.quad	0x3fef483b225c3e6c              # double 0.97756725989343129
	.quad	0x3fe02f6697521283              # double 0.50578622393420891
	.quad	0x3fdad4ed42261246              # double 0.41924601993403987
	.quad	0x3fe85b04be652c7c              # double 0.7611106604248472
	.quad	0x3fdb7b2273f20e88              # double 0.42939053843313291
	.quad	0x3fb277a7cf3ec710              # double 0.07213829812715411
	.quad	0x3fc3202418714dcc              # double 0.14941836541639331
	.quad	0x3fdc6061f4dc88a6              # double 0.44338272964717829
	.quad	0x3fc03a826ef0bc6c              # double 0.12678556839952948
	.quad	0x3fdcc7791857a156              # double 0.44967486741235996
	.quad	0x3feae52e867350ba              # double 0.84047628650525685
	.quad	0x3fcc2277c3dfd3bc              # double 0.21980187477279667
	.quad	0x3fde0497aa82f286              # double 0.46903030063166573
	.quad	0x3fe14b9f143a6cac              # double 0.54048112822365146
	.quad	0x3faca9d462dfba40              # double 0.055983197278568486
	.quad	0x3fd4702de0bb6230              # double 0.31934687563401365
	.quad	0x3fe5002c71511ccf              # double 0.65627119190403416
	.quad	0x3fdfe2a2383275e0              # double 0.49820762145995268
	.quad	0x3fdd58086b2e6a72              # double 0.458498100919008
	.quad	0x3fe01fe8725cbc5c              # double 0.50389501892449173
	.quad	0x3fe946f504ee9ab2              # double 0.78991175616541498
	.quad	0x3fc82f19ff039c08              # double 0.18893742515430767
	.quad	0x3fe179357f76400c              # double 0.54604601759820204
	.quad	0x3fd3b5bbfb8977ea              # double 0.3079671818176154
	.quad	0x3fd480cd1ffbd5c8              # double 0.32036140559588633
	.quad	0x3fd8e00f521396e6              # double 0.38867552771840364
	.quad	0x3fe6b1772552c5aa              # double 0.70916325845444317
	.quad	0x3fed0afc630a17f6              # double 0.90759105056417755
	.quad	0x3fe8b50d77e43f6b              # double 0.77210114876105018
	.quad	0x3fe3c205ba3992be              # double 0.61743437168168902
	.quad	0x3fe1ca598496b2b0              # double 0.55595088859771202
	.quad	0x3fe5e2162f33c92f              # double 0.6838484689635943
	.quad	0x3fe20222e15d0737              # double 0.5627607728604066
	.quad	0x3fcef864d16fa354              # double 0.24195537783023247
	.quad	0x3fe0b0ed2af36c44              # double 0.5215974654087252
	.quad	0x3fe36fb4cc29ed36              # double 0.60738601566064321
	.quad	0x3fe946e8988215f3              # double 0.78990583216426413
	.quad	0x3fd78838ac0fb578              # double 0.36768929293506103
	.quad	0x3fe2fe49986338ef              # double 0.59354095233154947
	.quad	0x3fe2c873400f01fe              # double 0.5869690180916789
	.quad	0x3f8d5d45cf819c80              # double 0.014338059802140757
	.quad	0x3fcf240043641d40              # double 0.24328616419391302
	.quad	0x3fe8aeb336f8e082              # double 0.7713256906199748
	.quad	0x3fc4f6709e451ee0              # double 0.16377074935939273
	.quad	0x3fe824888d8b2ecd              # double 0.75445964474916993
	.quad	0x3fcbc2b1d4b51c14              # double 0.21687910925012999
	.quad	0x3fc4f0951d51b538              # double 0.16359199458694618
	.quad	0x3fde0f92502394f8              # double 0.46970041109155103
	.quad	0x3fe9b3d363b36806              # double 0.80320138428510357
	.quad	0x3fddd4bcbe1cc32e              # double 0.46610945287379735
	.quad	0x3fee5abb0aa2715e              # double 0.9485755164819627
	.quad	0x3fe00b2ac82212fa              # double 0.50136317337509628
	.quad	0x3feed2849dfef0e5              # double 0.96319800242011111
	.quad	0x3fd35913392fa542              # double 0.30231171211797314
	.quad	0x3fe638beb91e6c6d              # double 0.69442688137077158
	.quad	0x3fde4b1260569ef8              # double 0.47333201797526625
	.quad	0x3fe33f39f3b6860a              # double 0.60146806335632275
	.quad	0x3fe6cd0056e3af1a              # double 0.7125245759066019
	.quad	0x3fb6dc5a098aac08              # double 0.089299800233377025
	.quad	0x3fd62018cd66063c              # double 0.34570903833818867
	.quad	0x3fbedef0252120b8              # double 0.12058926493148447
	.quad	0x3fd59fbfc6df3d36              # double 0.33787531300636731
	.quad	0x3fd8410d25ff323a              # double 0.37897041998511194
	.quad	0x3fe545dcd272d33f              # double 0.66477814772824917
	.quad	0x3fe6d9ef38a9b5c6              # double 0.71410332743624205
	.quad	0x3feb688af010dca2              # double 0.85651156318535393
	.quad	0x3fee476ce1b97333              # double 0.94621891104507083
	.quad	0x3fcdc33229b2762c              # double 0.23251940761558509
	.quad	0x3fe80019df233357              # double 0.75001233655494104
	.quad	0x3fe8b9b94077c78d              # double 0.77267134276756766
	.quad	0x3fd2510bc2ece918              # double 0.28619665179907505
	.quad	0x3fe6e1db78a0f02c              # double 0.71507047233854371
	.quad	0x3fe02cee5251ad26              # double 0.50548473432482832
	.quad	0x3fd3f49b4c45eeea              # double 0.31180460403969212
	.quad	0x3fe7f070c61c313f              # double 0.74810064977058477
	.quad	0x3fb0f224265f17e8              # double 0.066194781654388302
	.quad	0x3fe223082aa99ff7              # double 0.5667763551000452
	.quad	0x3fce937995f2218c              # double 0.23887557813237625
	.quad	0x3fe2b1baca878761              # double 0.5841955142643479
	.quad	0x3fae4ad5a98fff70              # double 0.059164692829653087
	.quad	0x3fd5c651d7f1147c              # double 0.34022947395380476
	.quad	0x3fdfe745e48fe326              # double 0.49849078484071396
	.quad	0x3fe2026c2d40d7c2              # double 0.56279572332891115
	.quad	0x3fe52842d81d9d4d              # double 0.66116468629926717
	.quad	0x3fe101242138f990              # double 0.53138929833203186
	.quad	0x3fe2406f41c280e9              # double 0.57036555141169487
	.quad	0x3fe1076a2d2945de              # double 0.53215512104560125
	.quad	0x3fe37e15cc402ce2              # double 0.60914125340186964
	.quad	0x3fc3161670ca03e8              # double 0.14911156184464791
	.quad	0x3fe550eb8f88b484              # double 0.66612794908509487
	.quad	0x3febf23225a37641              # double 0.87331492759012275
	.quad	0x3fe1806ce86f8516              # double 0.54692693135817438
	.quad	0x3fdc0736db7cace4              # double 0.43794032511023162
	.quad	0x3fde837f353671e4              # double 0.47677593418646169
	.quad	0x3fe099a306a87a54              # double 0.51875449467099566
	.quad	0x3fe18c4c8fbc7180              # double 0.54837635110338567
	.quad	0x3fcb01afaec0f6d4              # double 0.21098896057986016
	.quad	0x3fe0b52b69a5c884              # double 0.52211542734427541
	.quad	0x3feb794c1035cd74              # double 0.8585567776303109
	.quad	0x3fd2cbade7cefa9c              # double 0.29368159902143431
	.quad	0x3feec02ec6e63207              # double 0.960959804987909
	.quad	0x3fecc5f8c8525474              # double 0.89916648030579304
	.quad	0x3fe8e3f9449237eb              # double 0.77782882111364182
	.quad	0x3fd636f46ced6e2c              # double 0.34710417401740545
	.quad	0x3fe6a1dbf9cac297              # double 0.70725821292406266
	.quad	0x3feef9d59a8dd11c              # double 0.96799736200640351
	.quad	0x3fe182bddd0c05ca              # double 0.5472096745799544
	.quad	0x3fe460d59b0661ac              # double 0.63682060507112714
	.quad	0x3feb011164d78e45              # double 0.84388036437707881
	.quad	0x3fd4dab86bdff2a6              # double 0.32584963354728769
	.quad	0x3fe962af1e2fb263              # double 0.79329639335408009
	.quad	0x3fbbdc0d29e005f8              # double 0.10882646820393649
	.quad	0x3fe5c202ffc02c07              # double 0.67993307067206465
	.quad	0x3fdabf1bdcd87f96              # double 0.41791435782396869
	.quad	0x3fd4116ec7c6f0f4              # double 0.31356400975688747
	.quad	0x3fdd875129b2c318              # double 0.46138409683321546
	.quad	0x3fdd7383f473b5c6              # double 0.46017550346627123
	.quad	0x3fe8456cef4dd109              # double 0.75847479571396648
	.quad	0x3fde752d870b0abc              # double 0.47590196788602745
	.quad	0x3fed5dcba8773832              # double 0.91769965079743643
	.quad	0x3fe99f45987562e9              # double 0.80069236542757694
	.quad	0x3fecc5f0adf8bec0              # double 0.8991626165279385
	.quad	0x3fe5096b9e819e89              # double 0.65739994962946569
	.quad	0x3fedc0bb6737220b              # double 0.92977686080217958
	.quad	0x3fe3195ba4b05b9b              # double 0.59684545675087308
	.quad	0x3feb3a188cbcd9b2              # double 0.85084178436118507
	.quad	0x3fe2f1dc56b41cff              # double 0.59202401098528401
	.quad	0x3fe54a8ef75763d7              # double 0.66535137471066264
	.quad	0x3fe7dabc19a74935              # double 0.74545102129403651
	.quad	0x3fea81584f7f9f5e              # double 0.82828918005996477
	.quad	0x3fbbdb7939962b20              # double 0.10881765037462943
	.quad	0x3fd6cf7af118444a              # double 0.35641358894742281
	.quad	0x3fd6b6d329dc9b96              # double 0.35490874374448234
	.quad	0x3fdcb4c14ab47086              # double 0.44853241248507236
	.quad	0x3fe04d640dc9a635              # double 0.50944712345989862
	.quad	0x3fd830629524b146              # double 0.37795319142130201
	.quad	0x3fe1674f47d42d9b              # double 0.54386104611460284
	.quad	0x3fe710c52df6af41              # double 0.72079714753406432
	.quad	0x3fd93ce8499571dc              # double 0.39434249101557639
	.quad	0x3feec02228f91581              # double 0.96095378878150949
	.quad	0x3fef2639c48681d4              # double 0.97341621765013508
	.quad	0x3fbc9a0a7a18d378              # double 0.11172547798999044
	.quad	0x3fcd5ce0ae38c918              # double 0.22939690119671563
	.quad	0x3fefb1474e2dba5b              # double 0.99039044636976869
	.quad	0x3fea0c7b0567009c              # double 0.81402350478312568
	.quad	0x3fe82312c19e4247              # double 0.75428140464834648
	.quad	0x3fe4be2f625976ac              # double 0.64821595391159326
	.quad	0x3fe9b401c48e93d4              # double 0.80322349920299496
	.quad	0x3fcd9bab5a9927a0              # double 0.23131315158599097
	.quad	0x3fbef106ed941870              # double 0.12086528110748573
	.quad	0x3fda465d6218ce2c              # double 0.41054472522521013
	.quad	0x3fe4676070f12fc7              # double 0.63761922892580791
	.quad	0x3fe8ae3fa6bf1219              # double 0.77127058570528384
	.quad	0x3feda92d8fddce08              # double 0.92690160845671787
	.quad	0x3fc8f9e6ff4ea920              # double 0.19512641397643282
	.quad	0x3fd3853f557943ea              # double 0.30500777575531279
	.quad	0x3fd56b1d56353ef2              # double 0.33466275614499275
	.quad	0x3fe752c572c90b45              # double 0.72885391634950081
	.quad	0x3fb8f0cba3bd5850              # double 0.097424247241492567
	.quad	0x3fe9c22a0e0ca0c9              # double 0.8049516939545579
	.quad	0x3fe2b53a284c8759              # double 0.58462245818030134
	.quad	0x3fedf19551b939cb              # double 0.93574014627102409
	.quad	0x3fd3aa522d13526c              # double 0.30727056886579507
	.quad	0x3fec4d771a5a0f48              # double 0.88445620676837056
	.quad	0x3fe235e3392cf4e7              # double 0.56907807509528829
	.quad	0x3fdba185ebdc259e              # double 0.43173358948896545
	.quad	0x3fe23d3c774c521d              # double 0.56997512150207152
	.quad	0x3fdcf00be3431d4e              # double 0.45215127175875558
	.quad	0x3fbe57baf367fff8              # double 0.11852615778479947
	.quad	0x3fda60292bcc1f66              # double 0.41211919095120775
	.quad	0x3fb32448da1c8618              # double 0.074772408723696393
	.quad	0x3fdc557643c8e4ae              # double 0.44271618480304198
	.quad	0x3fef5ff1128fdb8e              # double 0.9804616320169417
	.quad	0x3fe76b0e70d01201              # double 0.73181840928788244
	.quad	0x3fd290c26ba7cd12              # double 0.29008541596631787
	.quad	0x3fea9fa91dbc34b6              # double 0.83198982055332382
	.quad	0x3fe0383a68b58512              # double 0.50686378909100172
	.quad	0x3fe86af1f7230ab9              # double 0.76305483120844209
	.quad	0x3fe43f17c0ef4dee              # double 0.63270175631117609
	.quad	0x3fe55453e4a15f20              # double 0.66654390959135768
	.quad	0x3fe3ced34239f369              # double 0.61899722037160843
	.quad	0x3fb56aa32a5d8840              # double 0.083658407061677487
	.quad	0x3fb3523d9585dfe8              # double 0.075473641399980473
	.quad	0x3fe7d2c49dad39e9              # double 0.74447851940368281
	.quad	0x3fd94b0246b4e786              # double 0.39520317940661476
	.quad	0x3fade02523732060              # double 0.058350716187818064
	.quad	0x3fd8d1d742af62b4              # double 0.38780766975609571
	.quad	0x3f7ea20a831a2880              # double 0.0074787531499486137
	.quad	0x3fec28ed65754a29              # double 0.87999601188704901
	.quad	0x3fe4b0eac6108f0e              # double 0.64659632381924026
	.quad	0x3fa0e0b45e9b9600              # double 0.03296435980682233
	.quad	0x3fe1d5cb92de3835              # double 0.55734804806866711
	.quad	0x3fed1045751188f8              # double 0.90823624482098264
	.quad	0x3fea3e0f618f9f5b              # double 0.82007569365394362
	.quad	0x3fda7aebd67866a2              # double 0.41375251716963579
	.quad	0x3fe5f4435fb4b3a1              # double 0.68606728260566652
	.quad	0x3feabe44a4f58851              # double 0.83572609156204625
	.quad	0x3fc8983e0c424978              # double 0.19214606855946292
	.quad	0x3fe7f3740394224b              # double 0.7484684057136034
	.quad	0x3fefd2703969148d              # double 0.99443827832205189
	.quad	0x3fe218a8a05875df              # double 0.56551009480943637
	.quad	0x3fe483bd588536fd              # double 0.64108149804243875
	.quad	0x3fe6fdf4fbfac518              # double 0.71850060667762516
	.quad	0x3febaeebd80f0626              # double 0.86510269354784408
	.quad	0x3fe069d350f8f2d5              # double 0.51291814627583199
	.quad	0x3fe94641a49822d3              # double 0.789826222871023
	.quad	0x3fb5aa5b550deae0              # double 0.084630687966562146
	.quad	0x3fd0a8732b6891ba              # double 0.26028136481388808
	.quad	0x3faebef679c0c790              # double 0.0600506805061648
	.quad	0x3fc9272cf65bf5d8              # double 0.19650804547556677
	.quad	0x3fe6c993a76fa530              # double 0.71210653974882199
	.quad	0x3f9945c74fa85960              # double 0.024680246579089071
	.quad	0x3fecac6e47127b74              # double 0.89604867821968392
	.quad	0x3fdbfa72cad23bb2              # double 0.43716115767250152
	.quad	0x3fe4cff7ffbbecc2              # double 0.65038680980742236
	.quad	0x3f8f8ad118284f40              # double 0.015401490735747481
	.quad	0x3fe3cb28fba036e5              # double 0.618549815613474
	.quad	0x3fb439f1ff38a450              # double 0.079009175119282959
	.quad	0x3fd479d99bad5dbc              # double 0.31993713572361648
	.quad	0x3fc26831ea4fbe10              # double 0.14380477848997986
	.quad	0x3fe118d8a7231288              # double 0.534282995643097
	.quad	0x3fdd5603c185d596              # double 0.45837491892538063
	.quad	0x3feb857e0ef2c9a8              # double 0.86004546088797884
	.quad	0x3fe8d34553c6ff34              # double 0.77578989374885631
	.quad	0x3fd862c9577cf6e8              # double 0.38102944892658153
	.quad	0x3fd727511cfbe9c0              # double 0.36177470999214378
	.quad	0x3fe5de9e8bd73817              # double 0.68342521011959689
	.quad	0x3fb3a497828997e8              # double 0.076730222100735213
	.quad	0x3fd7b5459d6a2ffc              # double 0.37043896076715987
	.quad	0x3fee30ac618cef6e              # double 0.94344157269322948
	.quad	0x3fed0b2ce3e39481              # double 0.90761417874877293
	.quad	0x3fe9d6c088e49c16              # double 0.80746485459246986
	.quad	0x3fe234af44a340b2              # double 0.56893123060037554
	.quad	0x3fe892b829cc0436              # double 0.76791008151497553
	.quad	0x3fb422a5f131a720              # double 0.078653689751857048
	.quad	0x3febd36ad572bd83              # double 0.86955777825453173
	.quad	0x3fc4489c16ac4fcc              # double 0.15846587283215141
	.quad	0x3fd76fc8e09e9882              # double 0.36619779525279494
	.quad	0x3fee30159945bf71              # double 0.94336967407251227
	.quad	0x3fb72dfe45719478              # double 0.09054555125620023
	.quad	0x3fd69bfbc87b5678              # double 0.3532704789953196
	.quad	0x3f8da0550d04c500              # double 0.014465965709492767
	.quad	0x3fda573dd03e0bb4              # double 0.41157479606789171
	.quad	0x3fe1b574293093c2              # double 0.55340011639474818
	.quad	0x3fce9f30f4306800              # double 0.239233130677178
	.quad	0x3fe72d1c1b81e769              # double 0.72425656673952432
	.quad	0x3fed9f24a46fe5c8              # double 0.92567665211316186
	.quad	0x3fe7b6ddbc31c232              # double 0.74107252842629223
	.quad	0x3f8ddcc72a13ca80              # double 0.014581256839368395
	.quad	0x3fa4e36c9367f050              # double 0.040797608369729788
	.quad	0x3fbcc650757a0988              # double 0.11240103595813455
	.quad	0x3fc8deee9c1abbe8              # double 0.19430334684645278
	.quad	0x3fe0efc67dc02c39              # double 0.52926945267370862
	.quad	0x3fdf1673fb64e1e2              # double 0.48574542570307078
	.quad	0x3fb6ac38c8166f58              # double 0.088565396165390609
	.quad	0x3feed62e481af1c3              # double 0.96364511569077426
	.quad	0x3fef49ddd274c7c0              # double 0.97776690582963254
	.quad	0x3fd05f36ec2bae28              # double 0.25581143439805709
	.quad	0x3fc735fe3da2928c              # double 0.18133523950122699
	.quad	0x3fd50503fb8151d6              # double 0.32843112526941576
	.quad	0x3fcff5b1f41e7748              # double 0.24968552036164682
	.quad	0x3fcc329529c290d4              # double 0.22029366053641886
	.quad	0x3fdd74209a95043c              # double 0.46021285148532676
	.quad	0x3fd83ba8b7d58440              # double 0.37864129974883909
	.quad	0x3fdcaa7c351ca24c              # double 0.44790558993057483
	.quad	0x3fe19ef103c0bc59              # double 0.55065203412039943
	.quad	0x3fe8cf8c86962bf8              # double 0.77533556257674174
	.quad	0x3fe1f4a0d8520699              # double 0.56111185312348077
	.quad	0x3fe292607e87146d              # double 0.58036827766831112
	.quad	0x3fdda427fe7bb8c6              # double 0.4631443009556161
	.quad	0x3f977b2a18e49ec0              # double 0.022930772561408075
	.quad	0x3fe261a807680b50              # double 0.57442094275061528
	.quad	0x3fe8e4f4884b8cac              # double 0.77794863338603681
	.quad	0x3fe30e8e12e08fb0              # double 0.59552673041297588
	.quad	0x3fd48284dc1edd82              # double 0.320466246568195
	.quad	0x3fe3f48105740757              # double 0.62359667840085364
	.quad	0x3fe3e6dee7435e0a              # double 0.62193246048531248
	.quad	0x3fe86e343e0b5573              # double 0.76345264547368996
	.quad	0x3fe0cc3d5bc6e460              # double 0.52493160176448939
	.quad	0x3fdb3c39f945e9b2              # double 0.42555093138767142
	.quad	0x3fe3967aa4c6dde2              # double 0.61211902792905115
	.quad	0x3fee8b1f668d8300              # double 0.95448274640884279
	.quad	0x3fefecfd9365173c              # double 0.9976795080953944
	.quad	0x3fe687de35685eab              # double 0.70408544951620422
	.quad	0x3fe79e7e2aee9c87              # double 0.73809727082415655
	.quad	0x3fe9aefa6e51a664              # double 0.80260964914959886
	.quad	0x3fbd0b9657a4d388              # double 0.11345805778257845
	.quad	0x3fdf0bef42788672              # double 0.48510343066491324
	.quad	0x3fe24a0237e4b2f6              # double 0.57153426090880433
	.quad	0x3fe98bc96156cff9              # double 0.7983137990145216
	.quad	0x3fe5c494c11aadf1              # double 0.68024671283404647
	.quad	0x3fd2ea5397c7a886              # double 0.29555215666062684
	.quad	0x3fe2028ad9fa9415              # double 0.56281035017002756
	.quad	0x3fe9adcd7c888e60              # double 0.80246614764150692
	.quad	0x3fd4a8e5eb683956              # double 0.32280872334458388
	.quad	0x3fcd09d1a3556234              # double 0.22686214900274282
	.quad	0x3feab423f37c9e1a              # double 0.83448979908002063
	.quad	0x3fe0770d4aa7bd13              # double 0.51453270512675642
	.quad	0x3fe525a0aace6f66              # double 0.66084321365950127
	.quad	0x3fe4d0b31e517268              # double 0.65047603532327702
	.quad	0x3fe87c0535343c4e              # double 0.76513920203604768
	.quad	0x3feef13e8c70da41              # double 0.96694877080773988
	.quad	0x3f740d36eab05a80              # double 0.0048954148469620984
	.quad	0x3fe2d056f2251bdc              # double 0.58793208402573383
	.quad	0x3fb9507ab01159e0              # double 0.09888426588563659
	.quad	0x3fec86db24ebb575              # double 0.89146191798287922
	.quad	0x3fc79ac64c8fb42c              # double 0.18441084612223457
	.quad	0x3fe1c3c58ef3b462              # double 0.55514791412646169
	.quad	0x3fce5829bcf4b8f8              # double 0.23706552244534129
	.quad	0x3fdcba32ad3252e0              # double 0.44886462129333715
	.quad	0x3fc85e67aa2d0a9c              # double 0.19038101014492248
	.quad	0x3febbae957ffec8d              # double 0.86656634509508168
	.quad	0x3fef6b8f7725533b              # double 0.98187993307747178
	.quad	0x3fdd7031e7e36944              # double 0.45997283597320782
	.quad	0x3fe110450e12ada2              # double 0.53323605297685028
	.quad	0x3febccc901ef2810              # double 0.86874819162153649
	.quad	0x3fed89ab2670f87f              # double 0.92305524356903834
	.quad	0x3fe849ace3942f39              # double 0.75899357270234369
	.quad	0x3fd1b42e441545d2              # double 0.27662235878696351
	.quad	0x3feba95c6637cbaf              # double 0.86442394222682661
	.quad	0x3fe400384fc9a4c1              # double 0.62502685149697623
	.quad	0x3fde0bceef93aa46              # double 0.46947072406934287
	.quad	0x3fe65936f3a28e28              # double 0.69839046082455969
	.quad	0x3fe95e6784d1fd96              # double 0.79277397099933711
	.quad	0x3fe2549697f21f6b              # double 0.5728257148448227
	.quad	0x3fefa43d42795955              # double 0.98879874213416008
	.quad	0x3fd00f0f2f28c60a              # double 0.25091914754293099
	.quad	0x3fe5d32346a24e30              # double 0.68202365680412491
	.quad	0x3fd00a6e7322fdce              # double 0.25063668483559531
	.quad	0x3fee90ac5a7c12d0              # double 0.9551603095320278
	.quad	0x3fef7ccf69bf8ccf              # double 0.98398562101319864
	.quad	0x3fec1fd53c76b182              # double 0.87888585862451429
	.quad	0x3fc4c8709a1daf00              # double 0.16236693883126208
	.quad	0x3fc633f6bc0c7a60              # double 0.17346080953662391
	.quad	0x3fd6b09e07523d92              # double 0.3545298644539453
	.quad	0x3fcb6e4129e0098c              # double 0.21430220169720504
	.quad	0x3fd2a5cb3251bab4              # double 0.29136924661626584
	.quad	0x3fd6df2648694086              # double 0.35736996718788594
	.quad	0x3fed3da14b291337              # double 0.91377319984221728
	.quad	0x3fdce49e30383e32              # double 0.45145373066859229
	.quad	0x3fef4b6084b9c560              # double 0.97795129702550909
	.quad	0x3fefda67df7eb3e4              # double 0.99541085864404665
	.quad	0x3fe3975e0a2b53a4              # double 0.61222745882206597
	.quad	0x3fb6b9eb49c212d0              # double 0.088774400241230511
	.quad	0x3fe28fdacc31199e              # double 0.58006038552484873
	.quad	0x3fca5715178663c0              # double 0.20578254364661852
	.quad	0x3fd5ac540d8dc62a              # double 0.33864308665860909
	.quad	0x3fd4a8f9d0eb37c8              # double 0.32281346704700953
	.quad	0x3fd7bfe9b07fb2ae              # double 0.3710884307500163
	.quad	0x3fd69c20ba7db2ce              # double 0.35327928745281845
	.quad	0x3f709a0af82b6a80              # double 0.0040531567089724385
	.quad	0x3fee2d08d9df99a0              # double 0.94299738458066784
	.quad	0x3fb2916748f12bb8              # double 0.072531180675624252
	.quad	0x3fe74f1af4ea5cee              # double 0.728406408644245
	.quad	0x3fe155ef06c4c408              # double 0.54173995325084068
	.quad	0x3fe3010cf4535f6c              # double 0.59387824745043138
	.quad	0x3fb72af30005c018              # double 0.090499103074535348
	.quad	0x3feca154e3fa6fd3              # double 0.89469379927640558
	.quad	0x3fda5dcb47df5c7e              # double 0.41197473543929408
	.quad	0x3faccab7b3625100              # double 0.056234112403361181
	.quad	0x3fc29fb0c56631c0              # double 0.14549836767799995
	.quad	0x3fb9e8efedfba9b0              # double 0.10121058998234989
	.quad	0x3fedd62b38ce7b0b              # double 0.93239365668327545
	.quad	0x3fe219f00ddd470f              # double 0.56566622455486193
	.quad	0x3fcb76c4d5efe50c              # double 0.21456203886172209
	.quad	0x3fed44b1074911ca              # double 0.9146351949971685
	.quad	0x3feff66fa9b3dac5              # double 0.99883254189520498
	.quad	0x3fc0f43a5ee0babc              # double 0.13245324738223541
	.quad	0x3f89ae1312ca1140              # double 0.012539052019982067
	.quad	0x3fef53a9ecfb6526              # double 0.97896286283063172
	.quad	0x3fbb561ddd344fe0              # double 0.10678278589722323
	.quad	0x3fd202e11d3a518a              # double 0.28142574171331403
	.quad	0x3fef32d8de61cae1              # double 0.97495692666992905
	.quad	0x3fddb8c8cee0bbce              # double 0.4644033451358468
	.quad	0x3f92a95741095900              # double 0.01822410902453786
	.quad	0x3fe57e769b72d729              # double 0.67168741570524049
	.quad	0x3fc740b41558f1ec              # double 0.1816620926127962
	.quad	0x3f9c452e6ae8f0a0              # double 0.027607655787719509
	.quad	0x3fd10466aef4f40e              # double 0.2658936222613314
	.quad	0x3fedc536dd7ed3d6              # double 0.93032401333641235
	.quad	0x3fe1056066c2dd60              # double 0.53190631933732035
	.quad	0x3fdb36a4cc01f26a              # double 0.42521018908136077
	.quad	0x3fc8e4a6e4e601f4              # double 0.19447790314372038
	.quad	0x3fef052aa2852e3b              # double 0.96938068144067501
	.quad	0x3fd992a69b22d2b6              # double 0.39957585477831559
	.quad	0x3fdb4c9caca5f726              # double 0.42655102596460137
	.quad	0x3fe6f59c912655d2              # double 0.71748188352165188
	.quad	0x3fd100fd9914dbc6              # double 0.26568546246874936
	.quad	0x3fcc2002aec57a20              # double 0.21972688230285176
	.quad	0x3fb00ba8724056a8              # double 0.062677886861218668
	.quad	0x3fcac44b4006bb5c              # double 0.2091154158237839
	.quad	0x3fddbc18f4b29596              # double 0.46460555931329262
	.quad	0x3f8a0ba95d695240              # double 0.012717555201711694
	.quad	0x3fdc1aca08970fec              # double 0.43913508261562018
	.quad	0x3fe2deb5795750e1              # double 0.58968614291600485
	.quad	0x3fe9beb4de82a729              # double 0.80452960452132516
	.quad	0x3fd438a7b832bd16              # double 0.3159579562006497
	.quad	0x3fe4a9f3c5cbd34d              # double 0.64574612266606268
	.quad	0x3fc9e76853a435e0              # double 0.20237449726157219
	.quad	0x3fe0b345f2bc73c5              # double 0.52188393983271253
	.quad	0x3fe8a93e31a6445b              # double 0.77065953919567265
	.quad	0x3fe676ddb34d58d9              # double 0.70201001186321854
	.quad	0x3fd58850b5522884              # double 0.33644502360460415
	.quad	0x3fe9d0bfbea47e65              # double 0.80673205599664455
	.quad	0x3fbc49f963eb09f8              # double 0.11050375642211197
	.quad	0x3fc1e45e2287da14              # double 0.13978172956531465
	.quad	0x3fb6792133633a20              # double 0.087785792394449391
	.quad	0x3fe8a92016084c6e              # double 0.77064518264013571
	.quad	0x3f92420e4c2575c0              # double 0.017830108068087602
	.quad	0x3fe9b4748bc32402              # double 0.80327822968786244
	.quad	0x3fc643fe2f804870              # double 0.17394997901334674
	.quad	0x3fbd7976fe81dbd8              # double 0.11513465608173534
	.quad	0x3fe2085d75d5608d              # double 0.56352112783771846
	.quad	0x3fd6404203e953b2              # double 0.34767198926902687
	.quad	0x3fe0134e1f5a8a2d              # double 0.50235658763660285
	.quad	0x3fe587759db76111              # double 0.67278557590455723
	.quad	0x3fdb4cc3aec68c06              # double 0.42656032627036244
	.quad	0x3fb54546999b4420              # double 0.083088314534748964
	.quad	0x3fe9dab104dd46ad              # double 0.80794573736257791
	.quad	0x3fd849c4988e4222              # double 0.37950243852631804
	.quad	0x3fd0e869c7ee061e              # double 0.2641853763999239
	.quad	0x3fde13fe44538798              # double 0.46997028992165601
	.quad	0x3fe50b07d9b7bda5              # double 0.65759651682849507
	.quad	0x3fe1130c2864805d              # double 0.53357513322044847
	.quad	0x3fed04eba7950ffb              # double 0.90685065012848953
	.quad	0x3fd87139b560cfe2              # double 0.38191073143684495
	.quad	0x3fe790dcdc1c2fa9              # double 0.73643343916181891
	.quad	0x3fce1b110cc1ee98              # double 0.23520100710799308
	.quad	0x3fe0ff11ae532aa0              # double 0.53113636062456138
	.quad	0x3fdcf5ba51fa3682              # double 0.45249803548436074
	.quad	0x3fec276340f9438d              # double 0.87980807008908501
	.quad	0x3fe7d0ae93cf30c9              # double 0.74422386998187406
	.quad	0x3fe1b52b4009271a              # double 0.55336534983618724
	.quad	0x3fd38cda15342204              # double 0.3054719168726765
	.quad	0x3fe84fe28c18e364              # double 0.75975158083666061
	.quad	0x3fe8c170a2aa55f4              # double 0.77361327906208865
	.quad	0x3fe36cd392b0cdf3              # double 0.60703447962299462
	.quad	0x3fd4cc44911c9d5e              # double 0.32496751948425195
	.quad	0x3fd0d9e1a594fb5a              # double 0.26329842729676545
	.quad	0x3feb869e37dda6af              # double 0.86018286620420337
	.quad	0x3fe1b6ec80cc947f              # double 0.55357957035143091
	.quad	0x3fd0e05dcbfbdae4              # double 0.2636942379025824
	.quad	0x3fe431dc9f9cf7f3              # double 0.63108664678997994
	.quad	0x3fe8816a6caf684f              # double 0.76579781749320286
	.quad	0x3feddc10aa12ce21              # double 0.93311341493103239
	.quad	0x3fc0f4660a2187e8              # double 0.13245845312763938
	.quad	0x3feeffea88e2f7a4              # double 0.96873976455366461
	.quad	0x3fead461c342f13d              # double 0.83842552315721941
	.quad	0x3fd269aaf7d6a09a              # double 0.28769945338218295
	.quad	0x3fda6e35daee1800              # double 0.41297670726669367
	.quad	0x3fefdd8580c01894              # double 0.99579119822080253
	.quad	0x3fec0738a5101302              # double 0.87588150252176455
	.quad	0x3fda74a9d482019e              # double 0.41337056877821421
	.quad	0x3fa1c58c0cb39610              # double 0.03471028952644073
	.quad	0x3fe7f12b92785251              # double 0.74818972213194901
	.quad	0x3fe87c50bc0eeb62              # double 0.76517521600849769
	.quad	0x3fe594cf0d33593d              # double 0.67441513612974513
	.quad	0x3fd11b4357b22578              # double 0.26728900493670649
	.quad	0x3f90aa887ab63a40              # double 0.01627553223584699
	.quad	0x3fe91763784a8355              # double 0.78410504812573356
	.quad	0x3fe0e4c1aa710750              # double 0.52792437829359962
	.quad	0x3fd52e96c9b6f470              # double 0.33096856783578854
	.quad	0x3fedd024d0b0fde8              # double 0.93165817985567134
	.quad	0x3fe711cec2b30dd5              # double 0.72092378642303834
	.quad	0x3fe07793b0713939              # double 0.5145967908991117
	.quad	0x3fe223e4d7fb8372              # double 0.56688158210827866
	.quad	0x3f98596a2c18d4e0              # double 0.023778590146510292
	.quad	0x3fd46c7e9dc14a60              # double 0.31912198453679785
	.quad	0x3fd2cb91f0ea2fc2              # double 0.29367493178210335
	.quad	0x3fdf0a7a8ca4300e              # double 0.48501456961162226
	.quad	0x3feee3c54f85cd38              # double 0.96530404598016783
	.quad	0x3fdb19f477fcfff4              # double 0.42345916478734513
	.quad	0x3fad43463b5361c0              # double 0.057153887502582545
	.quad	0x3fec975ade269dcf              # double 0.89347594631993299
	.quad	0x3fe5facf15d18403              # double 0.68686632405672332
	.quad	0x3fd3d17fed3ad24a              # double 0.30966184775323724
	.quad	0x3fcdab985a71faac              # double 0.23179916778822951
	.quad	0x3fe36c47f60044df              # double 0.60696790740089657
	.quad	0x3fe6d7d17e6c7810              # double 0.71384501163606906
	.quad	0x3fdf8bc233fde17e              # double 0.49290518834416008
	.quad	0x3fea51c2f70de88f              # double 0.82248066189574043
	.quad	0x3fbc56625c054138              # double 0.11069311853976138
	.quad	0x3fdc204caa96e838              # double 0.43947140368584625
	.quad	0x3feea80a71056826              # double 0.95801279138982376
	.quad	0x3fe54cb5c908cc31              # double 0.66561402573132089
	.quad	0x3fd59c8cf287f6c4              # double 0.33768008885077117
	.quad	0x3fda29bcf8b94106              # double 0.40879749574106972
	.quad	0x3fea03613842a0c6              # double 0.81291256893475672
	.quad	0x3fd587a12ffd993e              # double 0.3364031761797327
	.quad	0x3fbef555fb99faf8              # double 0.12093102829565427
	.quad	0x3fe5fcdd53bb11bd              # double 0.6871172557226185
	.quad	0x3fde373dd0e11b18              # double 0.47212167166110097
	.quad	0x3fb238664115e2a0              # double 0.07117308701516345
	.quad	0x3fe4f5f9af2e0abd              # double 0.65502628531279294
	.quad	0x3fef4b0605753fb8              # double 0.977908144626773
	.quad	0x3feda729cfce5253              # double 0.92665567957971928
	.quad	0x3fbd5a3dae98fc58              # double 0.11465821755062799
	.quad	0x3fbc323de231d418              # double 0.11014162800150051
	.quad	0x3fe948faa442e2e0              # double 0.79015857775001663
	.quad	0x3feeae2ef6b208da              # double 0.95876262839035609
	.quad	0x3fe5ebb741662339              # double 0.68502390645253464
	.quad	0x3fda86e4bc1d2fd0              # double 0.41448324556836003
	.quad	0x3fcc0730714550f8              # double 0.21896939783858449
	.quad	0x3fd5c9256a75518a              # double 0.34040198704067193
	.quad	0x3fe3b3b812c978a7              # double 0.61568835896811869
	.quad	0x3fc12dbc2b3831ec              # double 0.13420822248771402
	.quad	0x3fb2b376914fe970              # double 0.073050890423393744
	.quad	0x3fdaf04f9116a5f0              # double 0.42091740769191599
	.quad	0x3fe7fce8e808f2f2              # double 0.74962277716949033
	.quad	0x3fd81f577061d618              # double 0.37691293692418659
	.quad	0x3fd3236040cd8292              # double 0.2990341790046297
	.quad	0x3fcd5117811ec004              # double 0.22903722576802477
	.quad	0x3fece2b91a0d09ac              # double 0.90267615402290379
	.quad	0x3fe8306b023540a8              # double 0.75591040068868143
	.quad	0x3fe0ec213693d875              # double 0.52882443103477661
	.quad	0x3fedd234100d9068              # double 0.93190959105824067
	.quad	0x3fd7e0ee0a93756c              # double 0.37310362847150347
	.quad	0x3fe43c69a6f2749c              # double 0.63237459761480208
	.quad	0x3feb2ecf3a5add69              # double 0.84946404836129574
	.quad	0x3fed55aac6fe9d7b              # double 0.91670740953570318
	.quad	0x3fe227a1a3cfbd7b              # double 0.56733781809263861
	.quad	0x3fefe696cb46bb1a              # double 0.99689807608033054
	.quad	0x3fe450a820d42788              # double 0.63484579479084946
	.quad	0x3fd2060171ad6834              # double 0.28161655522638118
	.quad	0x3fe70d662ade1610              # double 0.72038563129962263
	.quad	0x3fa310d9b990bc10              # double 0.037237934019110353
	.quad	0x3fd3cb4419f042ea              # double 0.30928137333925909
	.quad	0x3feeb6ff372acf9c              # double 0.95983849310731583
	.quad	0x3fe6a95fd473f649              # double 0.7081755780670359
	.quad	0x3fbc59cf8e39ecb8              # double 0.1107454035026646
	.quad	0x3fd3042f26b0d2f2              # double 0.29713038233175759
	.quad	0x3fd934c4e8ce8adc              # double 0.39384577498473816
	.quad	0x3fd0d1f6afc2a7c6              # double 0.26281516231631163
	.quad	0x3fec191d59af2b88              # double 0.87806575314003599
	.quad	0x3fdae09d7bd6e4c6              # double 0.41995942205137415
	.quad	0x3fef3b165bcc3f7b              # double 0.97596280984178862
	.quad	0x3fbdbd1b73395310              # double 0.11616679728588175
	.quad	0x3fde2f3626005b20              # double 0.47163156233857428
	.quad	0x3fea417c4710db78              # double 0.82049383049057578
	.quad	0x3fcaa8494f9d9024              # double 0.20826069247698442
	.quad	0x3fd2aa089c13c172              # double 0.29162802926932507
	.quad	0x3fcede48a2908bcc              # double 0.24115856111265399
	.quad	0x3fd38d3f67394c5e              # double 0.30549607353640862
	.quad	0x3fe36d6016df8a47              # double 0.60710148303434941
	.quad	0x3fec481cf5c9e14a              # double 0.88380287175736183
	.quad	0x3fc3a66bfebbffe8              # double 0.15351629198266825
	.quad	0x3fe5bb02a1628a67              # double 0.67907840271466291
	.quad	0x3fc79346761bc548              # double 0.18418198363318994
	.quad	0x3fe97f2b0406ef0d              # double 0.79677344118633331
	.quad	0x3feb61e6562580b2              # double 0.85570065331923773
	.quad	0x3fe04ff25b3cad72              # double 0.50975911922198081
	.quad	0x3fd8681c855a2fe8              # double 0.38135445616421615
	.quad	0x3fd51db41b53d0ea              # double 0.32993796032611888
	.quad	0x3fe5f358eb50b907              # double 0.68595548591636735
	.quad	0x3fe5a8c152e0f9c1              # double 0.67684999644534838
	.quad	0x3fab6702124d0d20              # double 0.053520264371878179
	.quad	0x3fd86c5e19a35fe6              # double 0.38161423209885326
	.quad	0x3feb39fde7c457f2              # double 0.85082907931314211
	.quad	0x3fbb6220effc5760              # double 0.10696607455278473
	.quad	0x3fd108902842bb92              # double 0.26614765102106575
	.quad	0x3fd1b1bb8d42485a              # double 0.27647293848815979
	.quad	0x3fc2e3cf993c2338              # double 0.14757723791287858
	.quad	0x3fee0300d138698a              # double 0.93786660064078942
	.quad	0x3fd7d082d74c3860              # double 0.37210150742692427
	.quad	0x3fd1a0aa2420e862              # double 0.27543118980577763
	.quad	0x3fe260d64de860c5              # double 0.57432093826630448
	.quad	0x3fc8f9cf299913c8              # double 0.19512357264662072
	.quad	0x3fef68dec5093ca8              # double 0.98155153735742306
	.quad	0x3fe5ff25c3872113              # double 0.68739593686135192
	.quad	0x3fefbcdb3d254f09              # double 0.99180375998045733
	.quad	0x3fda743e5244de7c              # double 0.41334493669589967
	.quad	0x3fc01d341d54d204              # double 0.12589122230714633
	.quad	0x3fe8067ef11a5678              # double 0.75079295244604705
	.quad	0x3fe35cea76228412              # double 0.60509226868828336
	.quad	0x3fc6ff82b1dc0f94              # double 0.17967256245185281
	.quad	0x3fedc122c003eb59              # double 0.92982614043226441
	.quad	0x3feecc7b05fa64ba              # double 0.96246100585553696
	.quad	0x3fe2497a554aafa8              # double 0.57146946581405178
	.quad	0x3fe6464beeee07c8              # double 0.69608112970330982
	.quad	0x3fea300add72df3e              # double 0.8183645558519641
	.quad	0x3fd2016822e2f2e8              # double 0.28133586317907922
	.quad	0x3febd24e05d549d3              # double 0.86942196978844277
	.quad	0x3fd8b641fe52c4c0              # double 0.3861241325021858
	.quad	0x3fad3146d8916140              # double 0.05701657670641902
	.quad	0x3fe09db1abc9f7f4              # double 0.5192497592213372
	.quad	0x3fc81d1429a04dd8              # double 0.18838741333512021
	.quad	0x3fea7f5309975591              # double 0.82804252503653875
	.quad	0x3feb1fafc5555b1c              # double 0.84761799375232582
	.quad	0x3fc6880af5cc05e8              # double 0.1760266971760267
	.quad	0x3fd8d9f4f744fa0a              # double 0.38830303332716254
	.quad	0x3fc206fa5c2c3b64              # double 0.14083795071243366
	.quad	0x3fc649a719f9c890              # double 0.17412270325036561
	.quad	0x3fe806368ff6864d              # double 0.75075843923350194
	.quad	0x3fcfabad33b5e458              # double 0.2474266531460525
	.quad	0x3fe6cd8cc1ec1725              # double 0.71259153247294604
	.quad	0x3fd2b4f36918568e              # double 0.29229436171713352
	.quad	0x3fe57a9bc37c5a13              # double 0.67121685200510439
	.quad	0x3fc6479ab3b86f60              # double 0.17406018996632167
	.quad	0x3feec10719681841              # double 0.96106295549612508
	.quad	0x3fe2af3d437a4ea6              # double 0.58389151744127754
	.quad	0x3fda8f3587d739f6              # double 0.41499079003997907
	.quad	0x3fe052f18bc57e28              # double 0.51012494372475192
	.quad	0x3fe819637be42bad              # double 0.75309919545667514
	.quad	0x3fe343970a6d48ea              # double 0.60200073276999189
	.quad	0x3fe6c56726d56c40              # double 0.71159703812316621
	.quad	0x3fc33c2a9e74a2b8              # double 0.15027363526430348
	.quad	0x3fef81c01128f143              # double 0.98458865500973791
	.quad	0x3fd2a9a74bd38a66              # double 0.29160482792773335
	.quad	0x3fdaeea7ea984cc0              # double 0.42081640157375588
	.quad	0x3fe8237bf9936f44              # double 0.75433157677932927
	.quad	0x3fd66dd382a49ab6              # double 0.35045326002220223
	.quad	0x3feb480fa057f6fb              # double 0.85254651372062484
	.quad	0x3fed9263624dc07d              # double 0.92411965560860632
	.quad	0x3fe9eea62c3b524a              # double 0.81038197173126858
	.quad	0x3fe8f7e41575c0b8              # double 0.78026012603188288
	.quad	0x3fd41a4a68eafdf0              # double 0.31410465474979699
	.quad	0x3fe2cfb8ace70bce              # double 0.58785661478065676
	.quad	0x3fe2e7c5c894a9e0              # double 0.59079255271836573
	.quad	0x3fcf86bf7e720c24              # double 0.24629968332382746
	.quad	0x3fe780c2eea8aed9              # double 0.73446795094556727
	.quad	0x3fd0fd90fb50fc2a              # double 0.26547646086322862
	.quad	0x3fe1cb38f9890ae0              # double 0.55605744111411681
	.quad	0x3fb5e37cb0fc6fe0              # double 0.085502427300923056
	.quad	0x3fe1dd72327c9ba8              # double 0.55828199253743538
	.quad	0x3fd9d04c9524dc60              # double 0.40333857121317429
	.quad	0x3fe9745bb6ba3fb9              # double 0.79545388878795287
	.quad	0x3fd86f67dc801996              # double 0.38179966481438876
	.quad	0x3fe81a3b19f43abf              # double 0.75320200986046604
	.quad	0x3fe87a9abcfa5979              # double 0.76496636304618371
	.quad	0x3fca6dae20c26054              # double 0.20647217368673643
	.quad	0x3fe69c42391fac8f              # double 0.70657454640367401
	.quad	0x3fc67d318209b7f4              # double 0.17569559907445831
	.quad	0x3fd78b82d55894e6              # double 0.36789007982799971
	.quad	0x3fe892b949e8cecb              # double 0.76791061816626305
	.quad	0x3fe6922d4685834f              # double 0.70534385465371396
	.quad	0x3fb46f4f6a86b880              # double 0.079823459155450748
	.quad	0x3fe223b38522c6f9              # double 0.56685806277366091
	.quad	0x3fe58d6487e733b9              # double 0.67350985091763171
	.quad	0x3fd9f8057b0f0d5a              # double 0.4057630254503316
	.quad	0x3fdf78830af33da2              # double 0.49173046178199276
	.quad	0x3fe11e72868b58ea              # double 0.53496671941937035
	.quad	0x3fef061f610a6de6              # double 0.96949738457936685
	.quad	0x3feeb0e6a5edc46c              # double 0.95909435661282094
	.quad	0x3fe4bd787d59d12f              # double 0.64812874300563361
	.quad	0x3fac8a28a2b3c590              # double 0.055741567479240861
	.quad	0x3fea39aeefce6336              # double 0.81954142415188502
	.quad	0x3fde5ebc6f695010              # double 0.47453223114030241
	.quad	0x3fe76e611c294b2f              # double 0.73222404003386099
	.quad	0x3faabc5c102bdca0              # double 0.052218319868125862
	.quad	0x3fe89f7345c86ec1              # double 0.76946414594154799
	.quad	0x3fc32cb4f58e0ef8              # double 0.14980184545503739
	.quad	0x3fd9053aa6ca342a              # double 0.39094415939399829
	.quad	0x3fec25e3f0cba58c              # double 0.87962529211397244
	.quad	0x3fe3a9a992f830b5              # double 0.61446074204424994
	.quad	0x3fe9b07c21cea934              # double 0.80279356577856342
	.quad	0x3fe56533f89fab9e              # double 0.66860388335532028
	.quad	0x3f44a8a133f80000              # double 6.3045378914239336E-4
	.quad	0x3fedd148e8a8b4c8              # double 0.93179746094906424
	.quad	0x3fc70254a504b9f0              # double 0.17975862557928179
	.quad	0x3fd9adecf392943c              # double 0.40124057566055504
	.quad	0x3fe39b34748eb036              # double 0.61269591107475807
	.quad	0x3fdb1ae9af27db7e              # double 0.42351762871788157
	.quad	0x3fd1c372e23016ce              # double 0.2775542458406165
	.quad	0x3fe8274eaf53127d              # double 0.75479826205317091
	.quad	0x3fe884659056ad7a              # double 0.76616171065454286
	.quad	0x3fe400ba88470d33              # double 0.62508894554813421
	.quad	0x3fc858d283b6d7b4              # double 0.19021064216002304
	.quad	0x3fd66fa306f60462              # double 0.35056377105508407
	.quad	0x3fbb03b8b6113a80              # double 0.10552553601267256
	.quad	0x3fc90ea59639a930              # double 0.19575948558060352
	.quad	0x3fe13c32d8479d84              # double 0.53859846346033224
	.quad	0x3fbe0fd051227090              # double 0.11742879849265564
	.quad	0x3fdcdf5e2c5a3db6              # double 0.45113329249667389
	.quad	0x3fe98f4432742217              # double 0.79873857359149525
	.quad	0x3fc1343104496910              # double 0.13440525731386588
	.quad	0x3fed2a1942075022              # double 0.91138899704174414
	.quad	0x3fe6057f4a3e487b              # double 0.68817104817050223
	.quad	0x3fd0ab0b24036628              # double 0.26043966786309847
	.quad	0x3fec51aa2b561621              # double 0.88496883834949724
	.quad	0x3fefaec726d8e558              # double 0.99008519732812327
	.quad	0x3f9a3a64139814c0              # double 0.02561336869805042
	.quad	0x3fbc67ba6d0b7468              # double 0.11095776712632388
	.quad	0x3fea08f8d05c08c7              # double 0.81359520621506298
	.quad	0x3fc169144245e43c              # double 0.13601926074969295
	.quad	0x3fecf8e8de4b977e              # double 0.90538447777792874
	.quad	0x3fe16c4b95c55463              # double 0.54446963550675453
	.quad	0x3fe24a3cf17ed297              # double 0.57156226317472913
	.quad	0x3fb6d9a5da3079f8              # double 0.089258542794119822
	.quad	0x3fd02f02b0684a5c              # double 0.25286929347308784
	.quad	0x3fed27c54b9dc5c6              # double 0.91110481995399861
	.quad	0x3fc75ac410b284f8              # double 0.18245745482730746
	.quad	0x3fc78648e9fa68d8              # double 0.18378554749216991
	.quad	0x3fde50de6c6e27a6              # double 0.47368584240813971
	.quad	0x3fc6954e827c5778              # double 0.1764314782273535
	.quad	0x3fdcd310372072da              # double 0.45038228400680469
	.quad	0x3fc513c873924284              # double 0.16466622965937827
	.quad	0x3fe70120f684b4c1              # double 0.71888778827783295
	.quad	0x3f922e94f02e4680              # double 0.017755820426435864
	.quad	0x3fc600ced1a057d4              # double 0.17189965472851887
	.quad	0x3fc18b5330f130b4              # double 0.13706436052087201
	.quad	0x3fe3f2c5d9ab1527              # double 0.62338535798395334
	.quad	0x3fe3c202182f08b6              # double 0.61743263934501758
	.quad	0x3fe78418399a2c06              # double 0.73487483263431908
	.quad	0x3fe439b3285a24fb              # double 0.63204343682551156
	.quad	0x3fa2ee9cadbf4ad0              # double 0.036976715287570294
	.quad	0x3fe00339fb54a5ba              # double 0.50039385879534071
	.quad	0x3fd472c5bbdde704              # double 0.31950515123718071
	.quad	0x3fef46f238526c7e              # double 0.97741042137512557
	.quad	0x3fe1d2eb9ab22549              # double 0.55699711050071088
	.quad	0x3fc23771cfa80b54              # double 0.14231703414415142
	.quad	0x3fc70e64e32b00d0              # double 0.18012677280603961
	.quad	0x3feaf10f0c33a74e              # double 0.84192612059744376
	.quad	0x3fcff8d130ed105c              # double 0.24978079689947463
	.quad	0x3fe9494faa0fdf99              # double 0.79019911971316781
	.quad	0x3fd3525c87dfda0a              # double 0.30190194386469271
	.quad	0x3fe9aea237d94811              # double 0.80256758602104317
	.quad	0x3feeb6b9ac1e97a3              # double 0.95980533234682174
	.quad	0x3fde43e189a33512              # double 0.47289312783398529
	.quad	0x3fe440295a9bb653              # double 0.63283221909450516
	.quad	0x3fab29c2f4f22d90              # double 0.053052990341792783
	.quad	0x3fee70cba12a4c68              # double 0.95126897313674607
	.quad	0x3fe9e6fff2281007              # double 0.80944821640196174
	.quad	0x3fe7ffcd49c7388a              # double 0.74997581872755004
	.quad	0x3fe78098c3670ed0              # double 0.73444784321369561
	.quad	0x3fe6ef2fb0e76bea              # double 0.71669754554329512
	.quad	0x3fe54407a8859841              # double 0.66455443300652217
	.quad	0x3fd50f6d76e912f6              # double 0.32906662571285439
	.quad	0x3feb645809dd24ae              # double 0.85599901129275735
	.quad	0x3fe1d1c1b574b43e              # double 0.55685506287193909
	.quad	0x3fc5d1cdf25db808              # double 0.17046522459298807
	.quad	0x3fe2973a428dea2e              # double 0.58096039770982144
	.quad	0x3fe229340ab66371              # double 0.56752969829822864
	.quad	0x3fe892f620b31294              # double 0.76793962847348717
	.quad	0x3fecdb8b07959290              # double 0.90179969292928952
	.quad	0x3fed7d58883e39bc              # double 0.92155100450491245
	.quad	0x3fe9ba7b4c9b89ef              # double 0.80401387178818406
	.quad	0x3fe0585eb07a44ca              # double 0.51078733890803929
	.quad	0x3fcaaf3bdee06f0c              # double 0.20847271330500694
	.quad	0x3fa5aa77efc9ec90              # double 0.042316196461762989
	.quad	0x3fe6982a83420052              # double 0.70607495914738139
	.quad	0x3fd4c1ff49f1e00c              # double 0.32434065076040564
	.quad	0x3fe26f77edcf15f3              # double 0.5761069912629736
	.quad	0x3fa4cd9ba7a6ecc0              # double 0.040631164756143701
	.quad	0x3fe1443a4bfbc8cc              # double 0.53957857933553433
	.quad	0x3fdfc84689526d5a              # double 0.49659884844159807
	.quad	0x3fcb886ff072a464              # double 0.21510123482338195
	.quad	0x3fe2d8e4cf1b4f85              # double 0.58897629213832714
	.quad	0x3fe9e00fb0b61411              # double 0.80860123170771392
	.quad	0x3fd9d1bb389a89cc              # double 0.40342598464681312
	.quad	0x3fc48823396dd970              # double 0.16040458969264249
	.quad	0x3fce81aa8c76450c              # double 0.23833209856506021
	.quad	0x3feac001c8629fd6              # double 0.83593835008377471
	.quad	0x3fc15a47c7d1aef8              # double 0.13556763893881629
	.quad	0x3fc86c43025710c8              # double 0.19080388654959379
	.quad	0x3fc038d8d8aa44f8              # double 0.12673483447409928
	.quad	0x3fd75db2bc078b5a              # double 0.36509388315442026
	.quad	0x3fd8c75337f39456              # double 0.38716583694469386
	.quad	0x3feae4a9a5d3081b              # double 0.84041292560164338
	.quad	0x3fea8c487fffb1e6              # double 0.82962441444174995
	.quad	0x3fd440d75713bf38              # double 0.31645759109140981
	.quad	0x3fa5cb10a043bc60              # double 0.042564887584256139
	.quad	0x3fd9e975dab8eae2              # double 0.40487429008105214
	.quad	0x3fcb3d8f208c93bc              # double 0.21281613435090019
	.quad	0x3fa706ed5a849b10              # double 0.044974725055274445
	.quad	0x3fdf2f663d0e44a4              # double 0.48726802790140256
	.quad	0x3feb1813de37eb90              # double 0.84668916132010175
	.quad	0x3fca324f0030c51c              # double 0.20466029652883655
	.quad	0x3fd88d92e6e41b6a              # double 0.38364098117783973
	.quad	0x3fbf1368ad32f828              # double 0.12138990620130186
	.quad	0x3fecea49ddaa457d              # double 0.90359967512101458
	.quad	0x3fd4adfa3de345d0              # double 0.32311874431351573
	.quad	0x3fe1cda570d4b263              # double 0.5563533023574333
	.quad	0x3fc8258f69d2d8fc              # double 0.18864624659699547
	.quad	0x3fa9c37af3a2d470              # double 0.050319521179894688
	.quad	0x3fe6b4241496aed6              # double 0.70948986073696108
	.quad	0x3fe091471e82a354              # double 0.51773410758060345
	.quad	0x3feb0f2fc9a35cda              # double 0.84560384161423063
	.quad	0x3fe70bed85c38d37              # double 0.72020603299862429
	.quad	0x3fdc98864541e784              # double 0.44680935634061592
	.quad	0x3fdbc144bac1a924              # double 0.43367117155016133
	.quad	0x3fe4ce63f79c5394              # double 0.65019415246443879
	.quad	0x3fcc742339468dc4              # double 0.22229423805866422
	.quad	0x3fcf3bc0b9ff891c              # double 0.24401101190512342
	.quad	0x3fe3edddb2a0cade              # double 0.6227863777952185
	.quad	0x3fcb935588dddf64              # double 0.21543378050750583
	.quad	0x3fe27e73753c58b9              # double 0.57793591401675493
	.quad	0x3fe4bbd35e4580a3              # double 0.64792793667222204
	.quad	0x3fea293144a5338b              # double 0.81752837569512005
	.quad	0x3fee1e0781658ace              # double 0.94116568825514846
	.quad	0x3f5f82dd56cdd600              # double 0.0019232903971134752
	.quad	0x3fed6f7e4eb7c4f1              # double 0.91986003279285289
	.quad	0x3fd29e07c8de6e5c              # double 0.29089541069126823
	.quad	0x3fded8cce6bceb8e              # double 0.48198244603161633
	.quad	0x3fe1497d8065cf72              # double 0.54022097661662216
	.quad	0x3fe274023dcfd21e              # double 0.57666122505776563
	.quad	0x3fec2a9bb021b00f              # double 0.88020119095517824
	.quad	0x3fea45e95883e3e9              # double 0.8210341194927625
	.quad	0x3fe3bec1c3c46d0a              # double 0.61703575359152407
	.quad	0x3fcb3e5495090810              # double 0.21283967282403227
	.quad	0x3fcc7756c98f2e18              # double 0.22239193765413812
	.quad	0x3fec17447fb097d8              # double 0.87784027995507596
	.quad	0x3fdacb0a6e3b4636              # double 0.41864262356566273
	.quad	0x3fece8cdcbc4a801              # double 0.90341844366525959
	.quad	0x3fe9aec6a67c7dc5              # double 0.80258495823721232
	.quad	0x3fedf7d795cd29d7              # double 0.93650416620340138
	.quad	0x3fe6c64b941115a7              # double 0.711705960457654
	.quad	0x3fd0f559f6e1251e              # double 0.26497506245921609
	.quad	0x3fedf7f83f031674              # double 0.9365197401718448
	.quad	0x3fe517fce8253d33              # double 0.65917821255599163
	.quad	0x3fd46965312f75fc              # double 0.31893281749020708
	.quad	0x3fc0a5b71e64c250              # double 0.13005722984373103
	.quad	0x3fef65222246ec38              # double 0.98109537787184475
	.quad	0x3fd9e8cbb0ed2a8c              # double 0.40483371999713635
	.quad	0x3fcd02177feb1c9c              # double 0.22662633653655895
	.quad	0x3fecb91c4000b26d              # double 0.8975964784672904
	.quad	0x3fd06d7184a79b2a              # double 0.2566798968750158
	.quad	0x3fdf2fe13cc4177e              # double 0.48729735311678002
	.quad	0x3fefa8ec0262ff68              # double 0.98937035051492916
	.quad	0x3fe45b445fef05ad              # double 0.63614100205466217
	.quad	0x3fcaca6c3548aab8              # double 0.20930245019674998
	.quad	0x3fdd762571bb2ba6              # double 0.46033607584530001
	.quad	0x3fe8c6c866afe652              # double 0.77426548057628453
	.quad	0x3fd321ed37f0e3e4              # double 0.29894571745859211
	.quad	0x3fc1b152a22a7734              # double 0.13822396200424125
	.quad	0x3fdc0b67032c5ec0              # double 0.43819594678778273
	.quad	0x3fe99088565637c1              # double 0.79889313566831544
	.quad	0x3fdc2e320ac987e2              # double 0.44031954816284558
	.quad	0x3fe6d581f7af6033              # double 0.71356294990528679
	.quad	0x3fe54cc9320b28d0              # double 0.66562328123225178
	.quad	0x3fe231883caee661              # double 0.56854640819728897
	.quad	0x3fe5eb002418cc3c              # double 0.68493659067315305
	.quad	0x3feaec0cf5d419ab              # double 0.84131477368719254
	.quad	0x3fed8b1cf0114709              # double 0.92323157203847572
	.quad	0x3fe8a1847dd88150              # double 0.76971649722330859
	.quad	0x3fd94c24c96eeb40              # double 0.39527244254320593
	.quad	0x3fdab87349267330              # double 0.41750795501302473
	.quad	0x3fe3cbd7a425a010              # double 0.61863309917407783
	.quad	0x3fe2a792e1871e06              # double 0.58295578049086383
	.quad	0x3fdb39f7fec95e98              # double 0.42541313058380004
	.quad	0x3fd83ba8cc46931c              # double 0.37864131878659335
	.quad	0x3fb0e223408b22c0              # double 0.065950587518396553
	.quad	0x3fc82ae7b17d0188              # double 0.18880935827656864
	.quad	0x3fda802feef9213a              # double 0.41407392823431943
	.quad	0x3fedb8f714e3b406              # double 0.92882875518773811
	.quad	0x3fe7f365caf0a7f9              # double 0.74846162449580256
	.quad	0x3fabdd329c058ed0              # double 0.054421979470843262
	.quad	0x3fdd170d32fb91c6              # double 0.4545319555166113
	.quad	0x3fef7b34517ba2cf              # double 0.98378959574355373
	.quad	0x3fd13b4db848fb82              # double 0.26924460407820316
	.quad	0x3fd4dff3228cae96              # double 0.32616880773523726
	.quad	0x3fe754ff291fc5c6              # double 0.72912557632496866
	.quad	0x3fe664f08604bf94              # double 0.69982172179696756
	.quad	0x3fa1ecea347bb6e0              # double 0.035010641962669231
	.quad	0x3fc243415d3b07f4              # double 0.14267746975207241
	.quad	0x3fef0043242858cb              # double 0.96878201543838693
	.quad	0x3fe6fb43e88ad843              # double 0.71817202967100291
	.quad	0x3fd8ae2b80d7e486              # double 0.38563048918110387
	.quad	0x3fc62f8294040e7c              # double 0.173324892304766
	.quad	0x3f8063353aa02600              # double 0.0080017241016490103
	.quad	0x3fdf36d0f8ce5a80              # double 0.48772072122066135
	.quad	0x3fddbd9912b6698a              # double 0.46469714000127083
	.quad	0x3fe37b394cde0444              # double 0.60879197133193275
	.quad	0x3fe840d950c432e6              # double 0.75791612410247633
	.quad	0x3fe8d73d8bfa55e8              # double 0.77627446498325714
	.quad	0x3fd6eb402e721298              # double 0.35810856376364475
	.quad	0x3fd3308c8a9717b6              # double 0.29983819517326127
	.quad	0x3fef585a97ef95a5              # double 0.97953538584686283
	.quad	0x3fdb003b1989dfae              # double 0.42188909048081313
	.quad	0x3fc1a8f2ce0e9a98              # double 0.13796839772586078
	.quad	0x3fd2ba143a779c4a              # double 0.29260736188593184
	.quad	0x3f37db1529f87000              # double 3.6401049325873736E-4
	.quad	0x3fab54d2b2249e90              # double 0.053381523366906269
	.quad	0x3febfb92ab9e5df8              # double 0.87445958632719023
	.quad	0x3feae97283ab4a30              # double 0.84099698750134699
	.quad	0x3fc20c2cb736d2dc              # double 0.14099654146197949
	.quad	0x3febbb211bf22464              # double 0.86659293611695575
	.quad	0x3fed3bbca84234d9              # double 0.91354210722934248
	.quad	0x3feb1cfad5cac5fe              # double 0.84728757625833828
	.quad	0x3fd37f79d00bf10c              # double 0.30465550725036006
	.quad	0x3fe466ef45d98a13              # double 0.63756526606113295
	.quad	0x3fd40460a5d656de              # double 0.31276718325658048
	.quad	0x3fe8c8abc0ec5633              # double 0.77449596100149731
	.quad	0x3fb59eac0a6bb578              # double 0.084452393097043443
	.quad	0x3fd26b131ab1b252              # double 0.2877853165325962
	.quad	0x3feda681b05d408e              # double 0.92657551237245328
	.quad	0x3fda0547445f8a14              # double 0.40657216717787148
	.quad	0x3fbfb7d8c722b6c8              # double 0.12389902936657926
	.quad	0x3fe02343bfc976b8              # double 0.50430476625816478
	.quad	0x3fe145374f1d3beb              # double 0.5396992249678737
	.quad	0x3fef5e9cb8874482              # double 0.98029933968258853
	.quad	0x3fd1f4c7e72b2dd6              # double 0.2805652387148404
	.quad	0x3fbf7393d9cdbd40              # double 0.12285732333633792
	.quad	0x3fe749451061de76              # double 0.72769406509082901
	.quad	0x3fe32dcd1fb4675b              # double 0.59934097473454118
	.quad	0x3fe9c7f7edbfa458              # double 0.80566021380685537
	.quad	0x3fef10562a468652              # double 0.97074421173983638
	.quad	0x3fda013715e388ba              # double 0.40632416856363884
	.quad	0x3fd9651b416eb034              # double 0.39679604902153476
	.quad	0x3fdbabf201e6f0ae              # double 0.43236971078637054
	.quad	0x3fd527a234ed5a30              # double 0.33054404419582095
	.quad	0x3faaf6c5ef32b130              # double 0.052663979958511908
	.quad	0x3fd550b0605f8480              # double 0.33304986392437996
	.quad	0x3fdc2492ed37360e              # double 0.43973229566185601
	.quad	0x3feea139c8e207b0              # double 0.95718087420413234
	.quad	0x3fecb385a599fb4f              # double 0.89691431373635477
	.quad	0x3fd55d9462a352c6              # double 0.33383664734473617
	.quad	0x3fd3c0be5192b4c8              # double 0.3086391255008718
	.quad	0x3fe87ae3f85c2dcc              # double 0.76500128276659884
	.quad	0x3fc84dc53b18562c              # double 0.18987336526395049
	.quad	0x3fd49b5661c526be              # double 0.32198104427207486
	.quad	0x3fe53b27631bdd69              # double 0.66347092969128341
	.quad	0x3fec44eb95eab823              # double 0.88341311722411253
	.quad	0x3fee4fc39e4ff666              # double 0.9472368328130869
	.quad	0x3fee35238276f802              # double 0.94398665887251831
	.quad	0x3feccb9b531fee31              # double 0.89985433802889336
	.quad	0x3fc7c28b22ffbde4              # double 0.18562449654517288
	.quad	0x3fe411e45634c00e              # double 0.62718407475586146
	.quad	0x3fc811b165684180              # double 0.18803994609380581
	.quad	0x3fdd70ee10ebad2c              # double 0.46001769688037331
	.quad	0x3fc83c7c49be447c              # double 0.18934587097877287
	.quad	0x3fea4f95558fd5c2              # double 0.82221476279544725
	.quad	0x3fcb2d2615fea4ac              # double 0.21231533121070834
	.quad	0x3fe13e5339d8e036              # double 0.53885804460788367
	.quad	0x3fe88be3fe94209c              # double 0.76707648966204855
	.quad	0x3fe8136f927aaa80              # double 0.75237253770076506
	.quad	0x3fba27f08d369ea8              # double 0.10217193076698072
	.quad	0x3f82f893be5eddc0              # double 0.0092631857367980741
	.quad	0x3fcd9d401c579d74              # double 0.23136140235804314
	.quad	0x3fea928f2def72a7              # double 0.83039053889986725
	.quad	0x3fd38d32f51f3db8              # double 0.30549310624789028
	.quad	0x3fcecb13b67de62c              # double 0.2405724183152399
	.quad	0x3fd41c05b8e315a8              # double 0.31421034865737818
	.quad	0x3fe1d3668acb54f9              # double 0.55705573185210178
	.quad	0x3fea360174c95274              # double 0.81909249124380645
	.quad	0x3fea1d815672fe81              # double 0.81610171208008364
	.quad	0x3fe1f5b1dfa22ef1              # double 0.56124204328940952
	.quad	0x3f9fe345e7c9b4c0              # double 0.031140415451251569
	.quad	0x3fbc39c7f4bbe5d8              # double 0.11025666928244193
	.quad	0x3fdd0893d1efdcbe              # double 0.45364852430015989
	.quad	0x3fe1812ae5e1eb63              # double 0.54701752566266426
	.quad	0x3fdba0e0640226be              # double 0.43169412390180273
	.quad	0x3fd7e131da4bf436              # double 0.3731197959712661
	.quad	0x3fe0e5ae8121bd3e              # double 0.52803731175473678
	.quad	0x3fddb8a62703b6ec              # double 0.46439508256922468
	.quad	0x3febebccdde32ce0              # double 0.87253421151526922
	.quad	0x3fd22920bdce3f26              # double 0.28376024757106888
	.quad	0x3fed16d82df4bd13              # double 0.90903862930091106
	.quad	0x3fd5e30231644308              # double 0.34198050330546481
	.quad	0x3fee862883d25752              # double 0.95387674089827557
	.quad	0x3fd860b3cbd70c3c              # double 0.38090224176648113
	.quad	0x3fd0bb28e95e99aa              # double 0.26142332830422765
	.quad	0x3fc53219589a9e8c              # double 0.16559140039793296
	.quad	0x3fd7f575b482226c              # double 0.37435667636649472
	.quad	0x3fc5493161e70650              # double 0.16629617004768926
	.quad	0x3fc70d8b7b83a184              # double 0.18010085612264615
	.quad	0x3fa2e5b07ee46440              # double 0.03690864132858751
	.quad	0x3fe3b75281639a86              # double 0.61612820884040853
	.quad	0x3fc9a8113087bd98              # double 0.20044150228157487
	.quad	0x3fdad9a9f7a20f42              # double 0.41953515227236349
	.quad	0x3feb51858d09f5ef              # double 0.85370137735998053
	.quad	0x3fe65a36c5900853              # double 0.69851244532061185
	.quad	0x3fe9b6b03cbd2955              # double 0.80355083334988342
	.quad	0x3fe4575376c388e3              # double 0.63565991588646076
	.quad	0x3fde8047381abf08              # double 0.47657947997048256
	.quad	0x3fbe3d685e2fb0b0              # double 0.11812450694532362
	.quad	0x3fe8299d313d1191              # double 0.75507983796028288
	.quad	0x3fe0b876d57dd809              # double 0.52251760194371955
	.quad	0x3fef079d611c2f2d              # double 0.96967953650298499
	.quad	0x3fe419e6d815c4c4              # double 0.62816183284862648
	.quad	0x3fb01159149e5bc0              # double 0.062764709028086507
	.quad	0x3f9dd85c2fd97840              # double 0.029145660801411788
	.quad	0x3fe131dbb7cfc922              # double 0.53733621502604856
	.quad	0x3fe8a7e95a8ca79c              # double 0.77049701390682256
	.quad	0x3fe9f3207e297a08              # double 0.8109285797216339
	.quad	0x3fd4e9273876ac24              # double 0.3267305423166269
	.quad	0x3fdcc0ef6d495e54              # double 0.44927583382147884
	.quad	0x3fd49d9c6df2f64c              # double 0.32211981522764144
	.quad	0x3fd75103bd6e7406              # double 0.36431973933378037
	.quad	0x3fc46adcbadab7b0              # double 0.15951117633579548
	.quad	0x3fbbcde481ef7fd0              # double 0.10861042186979764
	.quad	0x3f8003d269b4f680              # double 0.0078197897442990882
	.quad	0x3fe01ce2aea7f4c7              # double 0.50352605927005178
	.quad	0x3fe99acd9a5ac4a3              # double 0.80014686725020956
	.quad	0x3fbfba5e98855228              # double 0.1239375231137464
	.quad	0x3fdec6047d7b7b40              # double 0.48083603147636111
	.quad	0x3fec5a9b28a951a4              # double 0.88606031362228465
	.quad	0x3fe71e7a98862b81              # double 0.72247056760657824
	.quad	0x3fe5eb533a65f9f2              # double 0.68497620969702511
	.quad	0x3fc2d8d9d31d0000              # double 0.14724276359811483
	.quad	0x3fed829ed9e7e434              # double 0.9221948867772256
	.quad	0x3fc45f3b9bf80f08              # double 0.1591562758986742
	.quad	0x3fe059f2df96ad60              # double 0.51098006887097469
	.quad	0x3fea5dc2ac67bf4e              # double 0.82394536660101791
	.quad	0x3fdda8017b15dab2              # double 0.46337925930076118
	.quad	0x3fdea3ff5a558a02              # double 0.47875961133664202
	.quad	0x3fd293d605812c52              # double 0.2902731946712197
	.quad	0x3fe972f908d90204              # double 0.79528476455749386
	.quad	0x3fc7d0fdbc371824              # double 0.18606540384479431
	.quad	0x3fe61ccafcd0139f              # double 0.69101476075649149
	.quad	0x3fcb3e024a0dac34              # double 0.2128298627461348
	.quad	0x3fdc6dcf02561e9c              # double 0.44420218685307034
	.quad	0x3fe1d6c193a8f899              # double 0.55746535148479659
	.quad	0x3fd116df7a841294              # double 0.26702105488247097
	.quad	0x3fdbbd16af92e860              # double 0.43341605325588795
	.quad	0x3fe5298a75080b6c              # double 0.66132090432834678
	.quad	0x3fc08945fbb34f64              # double 0.12918925085125033
	.quad	0x3fe8a54f6af82583              # double 0.7701794709438875
	.quad	0x3fe02084794f0a55              # double 0.50396941846004017
	.quad	0x3fd1bad3058b7b88              # double 0.27702785054673784
	.quad	0x3fec4f08e04a3fc3              # double 0.88464778715751213
	.quad	0x3fea221908b62015              # double 0.81666232778025238
	.quad	0x3fef7d92cf1ade3d              # double 0.98407879305063483
	.quad	0x3fecdf1ec1e27b21              # double 0.90223634594062585
	.quad	0x3fd540b0c8a36136              # double 0.33207339852880879
	.quad	0x3fdcf4a9b612bd28              # double 0.45243304043374843
	.quad	0x3febe51799daffa0              # double 0.87171535539527056
	.quad	0x3fc872a95970e500              # double 0.19099919192539261
	.quad	0x3fefcfc03ed809a4              # double 0.9941102244777551
	.quad	0x3fe6292a1a225f06              # double 0.6925249586520017
	.quad	0x3fdc078167c4589e              # double 0.43795809873098246
	.quad	0x3fe5d3717adbe61a              # double 0.68206094737905976
	.quad	0x3fb75047c06c4040              # double 0.091068729856716324
	.quad	0x3fc03dfd16709e20              # double 0.12689174266528003
	.quad	0x3fc448098e1ed4b0              # double 0.15844840468858967
	.quad	0x3fd762b0b619beb2              # double 0.36539857657678987
	.quad	0x3fe2e3618f34709d              # double 0.5902564808816525
	.quad	0x3fe21eec6fae951f              # double 0.5662748509682024
	.quad	0x3fd11f1ef62dd172              # double 0.26752447167316185
	.quad	0x3fe0d19fbe8cd8d4              # double 0.52558886734802934
	.quad	0x3fe085ffd5617534              # double 0.51635734249035758
	.quad	0x3fb2ef5bf5138608              # double 0.07396483166987633
	.quad	0x3fcd9eb3c6ef0d68              # double 0.2314057084423482
	.quad	0x3fe5516520311093              # double 0.66618591582711628
	.quad	0x3fe06c3fac1f9486              # double 0.51321395509570844
	.quad	0x3feb572a1a44cdc2              # double 0.85439019327753152
	.quad	0x3fc6dd570a181fe0              # double 0.17862976067431102
	.quad	0x3fccaaae06e666fc              # double 0.22395873391069887
	.quad	0x3fe3f65a910019b6              # double 0.62382248230351567
	.quad	0x3febdb9c2f139132              # double 0.8705578727208716
	.quad	0x3fe7397271223cca              # double 0.72576257797654731
	.quad	0x3fca3cd90338dfe0              # double 0.20498192460377052
	.quad	0x3fcfaf3af61b0e70              # double 0.24753510491256092
	.quad	0x3fbcd191fd2c5e18              # double 0.11257278853405983
	.quad	0x3fa63f45070d39a0              # double 0.043451459036634832
	.quad	0x3fdbb5cf82cbba2e              # double 0.43297183774021419
	.quad	0x3fdbdc539ec3bd3e              # double 0.43532267097812738
	.quad	0x3fc8fc0836629624              # double 0.1951914086868537
	.quad	0x3fd968616457575a              # double 0.39699587630217581
	.quad	0x3fef5eed6b1fc6e1              # double 0.98033781931573227
	.quad	0x3fec8c5443254b7b              # double 0.89213002313986978
	.quad	0x3fe4b3fb19561756              # double 0.64697031925673332
	.quad	0x3fe5a7b99b0a807c              # double 0.67672424584817703
	.quad	0x3fbd39442c267d98              # double 0.11415506437196254
	.quad	0x3fe1f20facfa054c              # double 0.56079849037647866
	.quad	0x3fd76048a2ce697a              # double 0.36525169276287495
	.quad	0x3fe9046a95fd5984              # double 0.78178910536625823
	.quad	0x3fe72bbae71b7086              # double 0.72408814561960422
	.quad	0x3fdf775959ce2578              # double 0.49165948648495528
	.quad	0x3fe80df87e3fb557              # double 0.7517054048345625
	.quad	0x3fa22e4e129fc2e0              # double 0.035509528897710529
	.quad	0x3fe8199593b63360              # double 0.75312308168359365
	.quad	0x3fe26f88f0c1cba3              # double 0.57611510298589896
	.quad	0x3fde0bebd4099356              # double 0.46947761256006026
	.quad	0x3fe41c9e8029413a              # double 0.62849354773974331
	.quad	0x3fdb506c72d74498              # double 0.42678366866045669
	.quad	0x3feee500979ab9b6              # double 0.96545438394769323
	.quad	0x3fc5ae9e0b6f666c              # double 0.16939139898640876
	.quad	0x3fe68a7675330683              # double 0.70440218821040934
	.quad	0x3fd2dc7db1141ab8              # double 0.29470770161462267
	.quad	0x3fede379078d8e21              # double 0.93401767230210819
	.quad	0x3fea126c3b4674aa              # double 0.81474887444678257
	.quad	0x3fd2a7dac8decc9a              # double 0.29149503341904792
	.quad	0x3fd7d7bc80a4f948              # double 0.37254250109608167
	.quad	0x3fe9d3339319415b              # double 0.80703142862516175
	.quad	0x3fcd611df99e93bc              # double 0.22952627838563255
	.quad	0x3fec8eb6108bb0a0              # double 0.89242079955649344
	.quad	0x3fd631af14991318              # double 0.34678246509092636
	.quad	0x3fd46007978993fa              # double 0.31836118506026845
	.quad	0x3fd168f02816358e              # double 0.27202991404268395
	.quad	0x3fefb97a22081e34              # double 0.99139124533480194
	.quad	0x3fe3a376626a7945              # double 0.61370391103609079
	.quad	0x3fd9ac704537e844              # double 0.40114981422050655
	.quad	0x3fea9e7b76faac0a              # double 0.83184598196146564
	.quad	0x3fd3d93b908f7576              # double 0.31013383023476793
	.quad	0x3fa4e43a1805b610              # double 0.040803733284388355
	.quad	0x3fe73521e6656978              # double 0.72523589133497435
	.quad	0x3fd67872b5a17b02              # double 0.35110156762486622
	.quad	0x3fe35cecafda3c12              # double 0.60509332987010311
	.quad	0x3fd3f5bc9f772098              # double 0.31187358448779312
	.quad	0x3fdaee88924f9084              # double 0.42080892837680772
	.quad	0x3fc705d0ab01629c              # double 0.17986496305345134
	.quad	0x3fec6f5eca80e0b2              # double 0.88859500457240004
	.quad	0x3fe24c6443c5a06e              # double 0.57182515370096865
	.quad	0x3feb1f435db0f92f              # double 0.84756630229074925
	.quad	0x3fce3a4e5c2ee74c              # double 0.23615436078199037
	.quad	0x3fddac755de21636              # double 0.46365102928425317
	.quad	0x3fd33c5a23254672              # double 0.30055859977901556
	.quad	0x3fd6c7f31a213132              # double 0.35595395614361103
	.quad	0x3fd9bc541714ef5e              # double 0.40211965803222494
	.quad	0x3fd78abe2b62a1e0              # double 0.36784319149822231
	.quad	0x3fb721371a1c5bd0              # double 0.090350574373913916
	.quad	0x3fb42eabb74b31b8              # double 0.07883713936752812
	.quad	0x3feac79ac44725da              # double 0.83686579070598133
	.quad	0x3fd8b8d071066590              # double 0.38628016507717522
	.quad	0x3fd146da6d4ddc54              # double 0.26994953798516019
	.quad	0x3fe9006aebc9c90d              # double 0.78130098392856129
	.quad	0x3fbe3ecee688e240              # double 0.11814587715424185
	.quad	0x3fe15f82a1045de7              # double 0.54290896843570813
	.quad	0x3fececda6f22c300              # double 0.90391275125702464
	.quad	0x3fe6501fb48dd9f6              # double 0.697280743260136
	.quad	0x3fe78515267d3bba              # double 0.73499543683453017
	.quad	0x3fe029ccb1162f9d              # double 0.50510248744238917
	.quad	0x3fe157d7d38ab9d2              # double 0.54197303120400364
	.quad	0x3fe5a95bfadfe10b              # double 0.67692374228411845
	.quad	0x3f70e07a61203a80              # double 0.0041203289456591685
	.quad	0x3fbb8b49143dd4f0              # double 0.10759407753160466
	.quad	0x3fe03702e9d2df70              # double 0.50671525639243775
	.quad	0x3fd852207f0f3496              # double 0.3800126305403152
	.quad	0x3fc90cce030a1a64              # double 0.19570326946650873
	.quad	0x3fec0eafe2547404              # double 0.87679285244996707
	.quad	0x3fe21ac79cfa5f16              # double 0.56576901111381761
	.quad	0x3fe07c9877b50462              # double 0.51520942096989253
	.quad	0x3f98b97da9a8bcc0              # double 0.024145091514750971
	.quad	0x3fe4895105d21f18              # double 0.64176226746437504
	.quad	0x3fea5c8eb793be62              # double 0.82379852156550393
	.quad	0x3fed1a6d7f0280f8              # double 0.90947603994939552
	.quad	0x3fd43dbcc74740fa              # double 0.31626815281653331
	.quad	0x3fdbd4957856c786              # double 0.43485008956769666
	.quad	0x3fc0cc468f69bb90              # double 0.13123399736965924
	.quad	0x3feb10bd0e12367e              # double 0.84579327343244848
	.quad	0x3fbfc3bddaf8a410              # double 0.12408053012826792
	.quad	0x3fde86b430773194              # double 0.47697167141884589
	.quad	0x3fdf9fc20adda9f2              # double 0.49412585316772983
	.quad	0x3f84b0df079bdb80              # double 0.010102980060293865
	.quad	0x3f9584ffc876c240              # double 0.021015164003701736
	.quad	0x3fe9e38139820f7a              # double 0.80902158004799607
	.quad	0x3fe58e8d0c78924a              # double 0.67365124164332113
	.quad	0x3fe3e3de67d69a09              # double 0.62156601220050434
	.quad	0x3fe1e1ec00ea1f1a              # double 0.55882835558529398
	.quad	0x3febacdc80bc2463              # double 0.86485123771229799
	.quad	0x3fe296f0fc6807bf              # double 0.58092545793646611
	.quad	0x3fef35a33cb600a8              # double 0.975297564102239
	.quad	0x3fa236898964f0e0              # double 0.03557233621765632
	.quad	0x3fee54bcb3de5420              # double 0.94784388666687746
	.quad	0x3f6231d13b6ded00              # double 0.0022210203709939202
	.quad	0x3fd29258977f5dac              # double 0.29018225474052417
	.quad	0x3fe73df8bceb5ab5              # double 0.72631489656745052
	.quad	0x3fe76a2f17a26bb5              # double 0.73171190849404033
	.quad	0x3fdd876287182eac              # double 0.46138823693102426
	.quad	0x3fe045737c47aa03              # double 0.50847791932511688
	.quad	0x3fe6685e654c9fea              # double 0.70024032387754898
	.quad	0x3fee71e12598e286              # double 0.95140130370334997
	.quad	0x3fee9bb5cc3f009b              # double 0.95650758640114775
	.quad	0x3fe7cd0a92ac623b              # double 0.74377945563453041
	.quad	0x3fcaf80109eab184              # double 0.21069348320214598
	.quad	0x3fb9e93bb6f7ae50              # double 0.10121510712604587
	.quad	0x3fe9a1c93e741b1a              # double 0.80099928091007944
	.quad	0x3fe876d37921561c              # double 0.76450513513799789
	.quad	0x3feed1d9202bce16              # double 0.96311622889919835
	.quad	0x3febdf2796d7fb48              # double 0.87099055730491504
	.quad	0x3fe767dd81e0ba3b              # double 0.73142886511579464
	.quad	0x3fe3977e9d38f3d7              # double 0.61224299151910599
	.quad	0x3fc28080457a8930              # double 0.14454654114258281
	.quad	0x3fc93c2fc36e35ac              # double 0.19714924852853011
	.quad	0x3fd2eb3e4bb93178              # double 0.29560811419357647
	.quad	0x3fe14ae8bfd0ff43              # double 0.54039418663158079
	.quad	0x3fe4573aa6630537              # double 0.63564808366223857
	.quad	0x3fc00034333956a8              # double 0.12500622273608042
	.quad	0x3fee0011e93f1fef              # double 0.93750854068730216
	.quad	0x3fb7b185739122b8              # double 0.092552509989341725
	.quad	0x3fd1ec8e673e0862              # double 0.28006324846513142
	.quad	0x3fe0a4dccd3bbe15              # double 0.52012481770174424
	.quad	0x3fd82cb15ef5072a              # double 0.37772783539922961
	.quad	0x3fdc91d2ddd12f7e              # double 0.44640037214116279
	.quad	0x3fef58a45f8f80f7              # double 0.97957056678936182
	.quad	0x3fc70200f9df80c0              # double 0.17974865151246
	.quad	0x3fe8aeb3e60e79f4              # double 0.7713260167400322
	.quad	0x3fe300dbcc99708a              # double 0.59385480843367699
	.quad	0x3fb47a4bfea224d0              # double 0.079991101900435568
	.quad	0x3fb5b1c583b07270              # double 0.084743828440375201
	.quad	0x3fba1114238d7188              # double 0.10182309978467263
	.quad	0x3fe3ffb794187e77              # double 0.62496546673715059
	.quad	0x3fefcf8786cc271f              # double 0.99408317878371466
	.quad	0x3fc113283316124c              # double 0.13339712614483046
	.quad	0x3fe6642783069fb0              # double 0.69972587195387881
	.quad	0x3fd9c87f8a8a362c              # double 0.4028624394348721
	.quad	0x3feaeebcb224497d              # double 0.84164271157560189
	.quad	0x3fdcd73a0d68b5cc              # double 0.45063639935946465
	.quad	0x3fea1cf406463df2              # double 0.81603432870355008
	.quad	0x3fec3d1db9374e6b              # double 0.88246046233184694
	.quad	0x3fe62d00dd36aea1              # double 0.69299357610494294
	.quad	0x3fd259ac183b0754              # double 0.28672315946834215
	.quad	0x3fe7e1728e8a6cc7              # double 0.74627044525132014
	.quad	0x3fbaa9661e45f0b0              # double 0.10414732207385913
	.quad	0x3fdcb742588106b2              # double 0.44868525164575168
	.quad	0x3fd80218987e3892              # double 0.37512793437861902
	.quad	0x3fe4ab64f4789ce0              # double 0.64592216251631029
	.quad	0x3fda6770698254ae              # double 0.41256342223762033
	.quad	0x3fdc2a890414b3b8              # double 0.44009614370844075
	.quad	0x3fc1904eb3b2cd78              # double 0.13721641325319545
	.quad	0x3fe9b61572c992ad              # double 0.80347702426350553
	.quad	0x3feb706eefded50d              # double 0.85747477388091087
	.quad	0x3fe83908a1c2fb2f              # double 0.7569621238143095
	.quad	0x3fd8c551ceebe272              # double 0.3870434303967506
	.quad	0x3feb5d5669f1cbee              # double 0.85514374439514795
	.quad	0x3fd15d1ce7477e1e              # double 0.27130816064706831
	.quad	0x3fd5cf476a4a6026              # double 0.3407763040536359
	.quad	0x3fe6b47607b610ad              # double 0.70952893739788225
	.quad	0x3fee02c19a418f3b              # double 0.93783645752089428
	.quad	0x3fe8a0f1446deb61              # double 0.76964629521476635
	.quad	0x3fe6edbcf6d534d0              # double 0.71652076921022889
	.quad	0x3fefe4fd9072965e              # double 0.99670294010565974
	.quad	0x3fe65da4eab13a6f              # double 0.69893117750491551
	.quad	0x3fc37cad3cf9d6f0              # double 0.15224233128872511
	.quad	0x3fef1d2907bc6777              # double 0.97230960379532305
	.quad	0x3fde4b12457fbeba              # double 0.47333199297916517
	.quad	0x3fda93055a97e2dc              # double 0.41522344443323589
	.quad	0x3fd3b34acf40a894              # double 0.30781812896260274
	.quad	0x3fb50c8b553cacb0              # double 0.082222660360161681
	.quad	0x3fde91f09dbae614              # double 0.47765746501281225
	.quad	0x3fc4714fe7e1f3b0              # double 0.159708011840761
	.quad	0x3fcb25ba60edf1c4              # double 0.21208886845478336
	.quad	0x3fec1ffb77822288              # double 0.87890408841583767
	.quad	0x3fe5c4f738ad0144              # double 0.68029366559498117
	.quad	0x3fec3acf60eb7f1b              # double 0.88217896394414497
	.quad	0x3fef5eb04746f6f2              # double 0.98030866547898499
	.quad	0x3fb41b272eee3fc0              # double 0.078539322812729573
	.quad	0x3fea189a0ae5d5e3              # double 0.81550314072108809
	.quad	0x3fbfa6ea90afbd88              # double 0.12364069015870005
	.quad	0x3fe71b5875178276              # double 0.72208807820795928
	.quad	0x3fe7e2005476fcd4              # double 0.74633804795294134
	.quad	0x3fcf6900a31c72b4              # double 0.24539192165766155
	.quad	0x3fdeb3b979b39f9a              # double 0.4797195137493816
	.quad	0x3fd78c977df7413a              # double 0.36795604039527385
	.quad	0x3fe8d87f67958554              # double 0.77642793875944926
	.quad	0x3fdd66c1553647c0              # double 0.45939668008315593
	.quad	0x3fdb705c03a56a1c              # double 0.42873287540501948
	.quad	0x3fe8d6213e93c4a5              # double 0.7761388990603747
	.quad	0x3fef4c9b49405b28              # double 0.97810138995086948
	.quad	0x3fd42f8e5937bfca              # double 0.31540259087250588
	.quad	0x3fdbcdc3134f2fe8              # double 0.43443371663738484
	.quad	0x3fdceb1d019405e0              # double 0.45185017732737087
	.quad	0x3fea0c062411084e              # double 0.8139677719521019
	.quad	0x3fd50334bce505d4              # double 0.32832067915668728
	.quad	0x3fcc08af0e4b0980              # double 0.21901500890642112
	.quad	0x3fe16359f38e8701              # double 0.54337785310437436
	.quad	0x3fef49f1155bc120              # double 0.97777609035077617
	.quad	0x3fe05fba19b54a60              # double 0.5116854192841167
	.quad	0x3fc7f79fc74db2e8              # double 0.18724438888184314
	.quad	0x3fc5896d98bf85d8              # double 0.1682564731445797
	.quad	0x3feffa33d8f23277              # double 0.99929230091363663
	.quad	0x3fe2ea7923e3d262              # double 0.59112221727134462
	.quad	0x3fe62562733ccdf6              # double 0.69206354625060729
	.quad	0x3fc9f04494292b9c              # double 0.2026448939744484
	.quad	0x3fee8179fbd1b4c5              # double 0.95330523665838796
	.quad	0x3fd76e7531d5d7e6              # double 0.36611680857401863
	.quad	0x3fe86de90ad1f570              # double 0.76341678727446372
	.quad	0x3fef953d4dfeadb4              # double 0.98696770890585705
	.quad	0x3feafc529ef14b32              # double 0.8433011154505492
	.quad	0x3fd7589e763bdf94              # double 0.36478387399937984
	.quad	0x3fd51534ac5d75d8              # double 0.3294192965748528
	.quad	0x3fd783ac3f52dca6              # double 0.36741167243912753
	.quad	0x3feb60e1b3215a63              # double 0.85557637201675296
	.quad	0x3fdabfaaf23a55b2              # double 0.4179484715944809
	.quad	0x3fc19fc91b30811c              # double 0.13768876865015833
	.quad	0x3fe9344d60300998              # double 0.7876345518746346
	.quad	0x3feddb5d12269367              # double 0.93302777810150139
	.quad	0x3fd741784b08373c              # double 0.36337096526482404
	.quad	0x3fec59d914c6b768              # double 0.88596777017458539
	.quad	0x3fe0a3fad2f342fa              # double 0.52001706315249341
	.quad	0x3fd281986f847d7e              # double 0.28915987863907577
	.quad	0x3fd31c1aa8a17660              # double 0.29859034030764597
	.quad	0x3f70cfd235404b00              # double 0.00410444366936491
	.quad	0x3fc952e82c1cfef0              # double 0.19784261850326557
	.quad	0x3fe53d50bb54d22a              # double 0.66373478496695282
	.quad	0x3fe8b2145a2dc3a5              # double 0.77173822033920614
	.quad	0x3fd30607575c6aa6              # double 0.29724296122882732
	.quad	0x3fed0d86779641b3              # double 0.9079010329897329
	.quad	0x3fdf1810a23bcae0              # double 0.48584380953904649
	.quad	0x3fe51fdfc302faa8              # double 0.66014087761125939
	.quad	0x3fe1ad3c1e9b21de              # double 0.55239683130008266
	.quad	0x3fee117680e93e08              # double 0.93963170221280822
	.quad	0x3fb6ebcbb6deb478              # double 0.089535457750303027
	.quad	0x3fe38f7cd2d134a0              # double 0.61126557517276936
	.quad	0x3fd8f413ec9b4c56              # double 0.38989732843510205
	.quad	0x3fef52e5b4c26512              # double 0.97886929802476375
	.quad	0x3fedfec9dd4fa0fe              # double 0.93735211586775313
	.quad	0x3fe255fe1e17f65b              # double 0.57299714925438694
	.quad	0x3fe6054fff792e33              # double 0.68814849755421503
	.quad	0x3fe30bdd2c94a82f              # double 0.59519823748747125
	.quad	0x3fe17b59c65a1444              # double 0.54630745640373179
	.quad	0x3fe82af73ca25ef0              # double 0.75524484484318855
	.quad	0x3fef60535e815c1c              # double 0.98050850351399132
	.quad	0x3fda07d0fbfa7476              # double 0.40672707183131906
	.quad	0x3fde895bc9575e24              # double 0.47713370001062771
	.quad	0x3fb96923ac756ea0              # double 0.099260549167804246
	.quad	0x3fbe5330c4c02b80              # double 0.1184568863247204
	.quad	0x3fecf43701e61bbc              # double 0.90481138583060483
	.quad	0x3fe950b6e0b4f257              # double 0.79110282791186648
	.quad	0x3fe7b8267753cc32              # double 0.74122927957649254
	.quad	0x3fd3fe1c3ea4f13c              # double 0.31238466374977114
	.quad	0x3fdabfdd2037e9f6              # double 0.41796043535546745
	.quad	0x3fdd1815c98bb990              # double 0.45459503824431469
	.quad	0x3fee2a1539e38947              # double 0.94263707453163981
	.quad	0x3fdea60ef62532fa              # double 0.47888540303829041
	.quad	0x3fcdc93be9c56cd0              # double 0.23270367540940251
	.quad	0x3fe95fd2fd5ac890              # double 0.79294728740048193
	.quad	0x3fd4a4e4acc4cf1c              # double 0.32256428596450504
	.quad	0x3faa853f50d1d9e0              # double 0.051797846427621641
	.quad	0x3fbba01b8e0a9178              # double 0.10791179864697209
	.quad	0x3fef7497a21bb6e9              # double 0.98298246061105232
	.quad	0x3fde8594fda3bb48              # double 0.47690319795122038
	.quad	0x3fcf4812b8ee9c9c              # double 0.24438699750792103
	.quad	0x3feaf1bbd91a9359              # double 0.84200851824844414
	.quad	0x3fbb98af11d784e8              # double 0.10779852090447017
	.quad	0x3fcd109c3a75c380              # double 0.22706940512173546
	.quad	0x3fdd4e70de1a8310              # double 0.4579126519184209
	.quad	0x3fe01c220ea7e2bf              # double 0.50343420851194043
	.quad	0x3feb87a0be3c67d4              # double 0.86030614047489928
	.quad	0x3fc24dee842bbffc              # double 0.14300328687340869
	.quad	0x3fe0f4460cefa3a6              # double 0.52981855894642105
	.quad	0x3feea758ddf0ca16              # double 0.95792811725397331
	.quad	0x3fcfbb9d735b7e68              # double 0.24791305668530872
	.quad	0x3fda6c88a84c40b4              # double 0.41287437854135622
	.quad	0x3fed47959e284a1b              # double 0.91498833551515035
	.quad	0x3fee14598c52ad7b              # double 0.93998410612896011
	.quad	0x3fedd68404a169e4              # double 0.93243599800490217
	.quad	0x3fe342f8a838acaa              # double 0.60192520957698048
	.quad	0x3fe08d7400a54aae              # double 0.51726722837550709
	.quad	0x3fe199a1954d6550              # double 0.55000380669222615
	.quad	0x3fefc479a0ffeeaa              # double 0.99273377843151889
	.quad	0x3fe34c8298e1bef0              # double 0.60308961734514632
	.quad	0x3fe9f65c17c2bf84              # double 0.81132321015137209
	.quad	0x3fe8db6271ddd961              # double 0.77678034057207068
	.quad	0x3fc6c851906111c0              # double 0.17798823880924708
	.quad	0x3febe59d9f51a012              # double 0.87177926175081866
	.quad	0x3fc880caa24d3960              # double 0.19143040585408766
	.quad	0x3fa18ea5d08a2140              # double 0.034291440683832608
	.quad	0x3fca838df7436710              # double 0.20713972638514422
	.quad	0x3fb0f7e619064978              # double 0.066282635793219913
	.quad	0x3feb0a1564376a47              # double 0.84498090337303544
	.quad	0x3fab1c8ba07171a0              # double 0.052952159247726671
	.quad	0x3fe364ba555128e1              # double 0.60604588187677788
	.quad	0x3fd46bae8119b0ec              # double 0.31907236678558948
	.quad	0x3fe824f33b20d67f              # double 0.75451051281443415
	.quad	0x3fec85b6cdf132ef              # double 0.89132251952250197
	.quad	0x3fa7217d0ad2d380              # double 0.045177371569855573
	.quad	0x3fe11b640bb2ae61              # double 0.53459360394249356
	.quad	0x3fea336a7d36f8b9              # double 0.81877636390688402
	.quad	0x3fd5fb9be0ed199a              # double 0.34348198857733225
	.quad	0x3fe20cfe8504757c              # double 0.56408620815243138
	.quad	0x3fd796a2d8dbb3cc              # double 0.368569099212263
	.quad	0x3fe138832ffc334a              # double 0.53814849254704566
	.quad	0x3fbdce09da182598              # double 0.11642514776771973
	.quad	0x3fee60094030056f              # double 0.94922316109311378
	.quad	0x3fdb021aca7fff44              # double 0.42200345778836756
	.quad	0x3fd654310eac89aa              # double 0.3488886493015807
	.quad	0x3fd96071019752bc              # double 0.39651131778127158
	.quad	0x3fcbc73091e16e80              # double 0.21701628802371786
	.quad	0x3fd9f24839f4e35a              # double 0.40541272792647975
	.quad	0x3fd5d0f154137ee2              # double 0.34087784967958445
	.quad	0x3feaec19374ae2c1              # double 0.84132061766930388
	.quad	0x3fedf1c0aeb06af5              # double 0.93576082343073941
	.quad	0x3fc70eff088157a0              # double 0.18014514842314799
	.quad	0x3f864b2655f4f340              # double 0.010885524271196823
	.quad	0x3fc2cb905edcec30              # double 0.1468372786710872
	.quad	0x3fe46328d38f1bcc              # double 0.63710442848320659
	.quad	0x3fe2e0abf03e7952              # double 0.58992573664344605
	.quad	0x3fe73b1e7fbc1113              # double 0.72596669147654536
	.quad	0x3fe2c43ed45e53e0              # double 0.58645574072090412
	.quad	0x3f700131ccd9b580              # double 0.0039073891945070605
	.quad	0x3fc58b5a4f0c7da8              # double 0.16831520900539698
	.quad	0x3fe845c155db54cf              # double 0.75851504105471601
	.quad	0x3fc922b85b72d964              # double 0.19637207474961393
	.quad	0x3fe99a94c5df34b6              # double 0.80011976858954514
	.quad	0x3fd5ea9b0ecb7944              # double 0.34244419522100977
	.quad	0x3fe8065605c1f732              # double 0.75077344059511675
	.quad	0x3feba168dcd7b4e1              # double 0.86345332272835773
	.quad	0x3fe8fc2e2cb31983              # double 0.78078373651878541
	.quad	0x3fd3ceb5e400712e              # double 0.30949160829347278
	.quad	0x3fdf52cbc9b4f572              # double 0.48942846963821929
	.quad	0x3fba2f011b363818              # double 0.10227972902632165
	.quad	0x3fe8ca2a1722e866              # double 0.77467827338047068
	.quad	0x3fe5dcdd09beaa6c              # double 0.68321086791304486
	.quad	0x3fd32671c8187634              # double 0.29922146359044466
	.quad	0x3fe518ab2cb7c267              # double 0.65926130994746479
	.quad	0x3fe1b686ce786a2b              # double 0.55353107763523235
	.quad	0x3feb519a9551bfcc              # double 0.85371140636379427
	.quad	0x3fe15a436c5e052a              # double 0.54226847806436251
	.quad	0x3fe0ae91cce76926              # double 0.5213097574262846
	.quad	0x3fe30acc18bac070              # double 0.59506802396755454
	.quad	0x3fd6d27f4fd065c4              # double 0.35659773630467506
	.quad	0x3fc6c19412022ec4              # double 0.17778254393885196
	.quad	0x3fea8375ce111384              # double 0.82854738471415645
	.quad	0x3fb003a8ea5c8af0              # double 0.062555844514047498
	.quad	0x3f8d8902f538bc40              # double 0.014421485050745031
	.quad	0x3fe301fa3a799758              # double 0.59399138852016176
	.quad	0x3fcc9b15ea7b0688              # double 0.2234828371929789
	.quad	0x3fd20fe4d59c30f4              # double 0.28222008571971391
	.quad	0x3feb38ef67315e99              # double 0.85070009379247147
	.quad	0x3fea475e79193c12              # double 0.82121204044404039
	.quad	0x3fc4fc40033b8bf4              # double 0.16394806058732991
	.quad	0x3f958c465f3c4360              # double 0.021042918741901118
	.quad	0x3fb991f3efdb3400              # double 0.099883314188630834
	.quad	0x3fe619515aaa2294              # double 0.69059055049827345
	.quad	0x3fed9f49b0e78de8              # double 0.92569431831037452
	.quad	0x3fd2eb08e3147324              # double 0.29559538055200307
	.quad	0x3fb0f4b083d42ee0              # double 0.066233665642524198
	.quad	0x3fec31f9bf2abc8e              # double 0.88110053384106535
	.quad	0x3fec2722e3a35c15              # double 0.879777378659926
	.quad	0x3fed66faced47ec9              # double 0.91882076641555799
	.quad	0x3fe61e94c0a6cfcb              # double 0.69123304011599751
	.quad	0x3fb892e005c8ad20              # double 0.095991135990221909
	.quad	0x3f44b66b37082400              # double 6.3209757905824393E-4
	.quad	0x3fc9cab1408da6c0              # double 0.20149818088548521
	.quad	0x3fe6c6d6595c2b78              # double 0.71177213147289731
	.quad	0x3fdcdaf8cb1c2352              # double 0.45086498103096517
	.quad	0x3fee85a33fd69bd7              # double 0.95381319492741568
	.quad	0x3fb6c45df5637ab0              # double 0.088933823022197655
	.quad	0x3fea0640e86950bf              # double 0.81326337235307011
	.quad	0x3fb618b5b754f090              # double 0.086314542063464338
	.quad	0x3fb22c77e5972528              # double 0.070991033127161374
	.quad	0x3fec8aeffb68a230              # double 0.89196013549105224
	.quad	0x3fc9d7ce1c182244              # double 0.20189834949293772
	.quad	0x3fc13c4ec8cb0c50              # double 0.13465294651368476
	.quad	0x3fd1a60acfd1e5f6              # double 0.27575941367066947
	.quad	0x3fe02c6c4020b309              # double 0.50542271161029462
	.quad	0x3fd004cc384c784c              # double 0.25029283044739681
	.quad	0x3fefdb0ddca73ce2              # double 0.99549000831930479
	.quad	0x3fe435d2b707df5b              # double 0.63157020328706481
	.quad	0x3fe3e7d38aac50b3              # double 0.62204911312666977
	.quad	0x3fd72c3b0ed7e8ca              # double 0.36207462739515661
	.quad	0x3fe07e86ef140790              # double 0.51544520087212398
	.quad	0x3fd49bc7a058b820              # double 0.32200804385036186
	.quad	0x3fdd87843add3eac              # double 0.46139627216778467
	.quad	0x3fe9023ab8d001f7              # double 0.78152214142033827
	.quad	0x3fe2bbd04a8dcf23              # double 0.5854264694339445
	.quad	0x3fda62ca16836a4c              # double 0.41227962683266095
	.quad	0x3fe67f23ec0a776f              # double 0.70302005864844641
	.quad	0x3fc6367449711254              # double 0.1735368116952879
	.quad	0x3fcfae23aaa3a138              # double 0.24750181037894392
	.quad	0x3fe5fea0b4aa8ebe              # double 0.68733248983740913
	.quad	0x3fe0c570705f8234              # double 0.52410146663539203
	.quad	0x3fc7f919ae3a5288              # double 0.18728943831651557
	.quad	0x3fe632b92dcae158              # double 0.69369181579444739
	.quad	0x3fe400a84905a152              # double 0.62508024465663881
	.quad	0x3fdcf00c26b646fe              # double 0.45215133457632806
	.quad	0x3fd079ef9569095e              # double 0.25744237509583978
	.quad	0x3fd5bb7f88f39d70              # double 0.33956898092443222
	.quad	0x3f5100f0f3935c00              # double 0.0010378220597908605
	.quad	0x3fe5a6efa32a61fc              # double 0.67662793987534497
	.quad	0x3fe65c0e86af73f5              # double 0.69873739534125312
	.quad	0x3fa0bbd6b5434030              # double 0.03268309557609006
	.quad	0x3fefbe41c3648433              # double 0.99197471773744039
	.quad	0x3fc40b5c646b3d64              # double 0.15659670737521048
	.quad	0x3fee753c92c6f31b              # double 0.95181111018573306
	.quad	0x3febe3497178b712              # double 0.87149498140726878
	.quad	0x3fe1cc3c387613bf              # double 0.55618105914674476
	.quad	0x3fe1618ac8392ba8              # double 0.54315699678533225
	.quad	0x3fdc2f63d8349192              # double 0.44039245714000075
	.quad	0x3fb721376d073700              # double 0.090350593679627167
	.quad	0x3fd6014babbd624e              # double 0.34382907649481786
	.quad	0x3fe6387b53982de5              # double 0.69439474417725633
	.quad	0x3fba4ab355df7658              # double 0.10270233961588227
	.quad	0x3f58f268a7b8aa00              # double 0.0015226385138570331
	.quad	0x3fef42bccb42f686              # double 0.9768966646149273
	.quad	0x3f646040364cc900              # double 0.0024873022215611273
	.quad	0x3fca2867c66ef8a8              # double 0.20435807408461426
	.quad	0x3fe3329540629efd              # double 0.59992468428842438
	.quad	0x3feb5c2c615d0100              # double 0.85500163093823289
	.quad	0x3fc2a85550738ec8              # double 0.1457621233777131
	.quad	0x3fe6e4940f781b7d              # double 0.71540263196298748
	.quad	0x3fe8a0ee581c2611              # double 0.7696449013612342
	.quad	0x3fd22f847439f780              # double 0.28415023184049204
	.quad	0x3fe9862c9aa04668              # double 0.7976286907234682
	.quad	0x3feb9852274767f8              # double 0.86234386130968144
	.quad	0x3fef5ceaaf3be825              # double 0.98009237504380009
	.quad	0x3fe548419c085428              # double 0.66507034754852601
	.quad	0x3fb360f3fb811878              # double 0.075698136236583724
	.quad	0x3fe4e28f53f5e560              # double 0.65265623472729928
	.quad	0x3feecbbf58dd4d0e              # double 0.96237151485766659
	.quad	0x3fed4623aa8d74b6              # double 0.91481192885443963
	.quad	0x3fee139629851f95              # double 0.93989093884828157
	.quad	0x3fe85fb845d4f791              # double 0.76168454779666395
	.quad	0x3fe795680fab755e              # double 0.73698809681415489
	.quad	0x3fd5eb52d6ee231a              # double 0.34248801221160508
	.quad	0x3fe64e0db7a545fc              # double 0.69702802532464103
	.quad	0x3fc92e07d7d4c454              # double 0.19671724356297438
	.quad	0x3fd6e95d5dbe4f06              # double 0.35799345163944485
	.quad	0x3fc927a1e92b59b8              # double 0.19652198682042665
	.quad	0x3fd2c272cade34d2              # double 0.29311818896605957
	.quad	0x3fc2747545bc1d74              # double 0.14417901902218555
	.quad	0x3fe4d2e46cf2bd5d              # double 0.6507436874289102
	.quad	0x3fe13edb8e8c35c7              # double 0.53892305222842019
	.quad	0x3fea2e81dbf95777              # double 0.81817715610189523
	.quad	0x3fcb504b0fd6a374              # double 0.21338785432206075
	.quad	0x3fae88167f9995f0              # double 0.059632018161931089
	.quad	0x3fd0019d497a3010              # double 0.25009853530423332
	.quad	0x3fe858ca32fea7b9              # double 0.76083860359107469
	.quad	0x3fe43f7c79d0cb9f              # double 0.63274978439436669
	.quad	0x3fd78fc9812790ce              # double 0.36815106976270051
	.quad	0x3fc561cad584137c              # double 0.1670468847807135
	.quad	0x3fc39487741f9320              # double 0.15297024889073274
	.quad	0x3fe30a88080f181b              # double 0.5950355679895013
	.quad	0x3fedbd85209b9aaf              # double 0.92938476914135559
	.quad	0x3fedf4a1a3096870              # double 0.93611223071208194
	.quad	0x3fee297511c1421e              # double 0.94256070583111629
	.quad	0x3fe3323e52de1fbc              # double 0.59988323388187537
	.quad	0x3fb8ca4fccdeea98              # double 0.096837031857754829
	.quad	0x3fcc8eb1f5106234              # double 0.22310471025481748
	.quad	0x3fe79bf6906fa895              # double 0.73778846941174214
	.quad	0x3fccc553e8e76278              # double 0.22477196571596259
	.quad	0x3fde98f8a35b8a14              # double 0.47808662369621513
	.quad	0x3fe80d38d2565e85              # double 0.75161400872725947
	.quad	0x3fb4c8231ec2acb0              # double 0.081178851137041929
	.quad	0x3fe64a3cc0fd2741              # double 0.69656217282429378
	.quad	0x3fd84084bb725f7e              # double 0.37893789582584947
	.quad	0x3fe70f86b7b62751              # double 0.72064529305610325
	.quad	0x3fa4b555a7e77ae0              # double 0.040445973154182857
	.quad	0x3fee345621951886              # double 0.94388872679771008
	.quad	0x3fdf5923fcbe69a4              # double 0.48981570894252457
	.quad	0x3fe8d94453dc28d1              # double 0.77652183894067595
	.quad	0x3fed297ee86e7594              # double 0.91131539723180532
	.quad	0x3fdd6239c4e1309c              # double 0.45912021852996943
	.quad	0x3fe4fd3be662b5c3              # double 0.65591235158142813
	.quad	0x3fdf64634747323a              # double 0.49050218544724411
	.quad	0x3fefcfca6216bcd8              # double 0.99411505849811998
	.quad	0x3f977e95b4ea9780              # double 0.022943820159205597
	.quad	0x3fe78e3a618ad3bd              # double 0.73611182261685537
	.quad	0x3fcf1f3e07e96868              # double 0.24314093958202254
	.quad	0x3fd38165c6aeef30              # double 0.3047728004710164
	.quad	0x3feeb70448acb581              # double 0.95984090990320691
	.quad	0x3fe11fa8dbbf1792              # double 0.53511469763974362
	.quad	0x3fdd763a86f75892              # double 0.46034110241215231
	.quad	0x3fe1523caecd71dc              # double 0.54128870144955554
	.quad	0x3f91996d1e180a00              # double 0.017186837159906432
	.quad	0x3fa9708021e69aa0              # double 0.049686435831337805
	.quad	0x3fdcd0fc60fb97f6              # double 0.45025548430419293
	.quad	0x3fdf63a32b4c9b58              # double 0.49045638302270822
	.quad	0x3fe9ecb82f1a7620              # double 0.8101464195239636
	.quad	0x3fed950bbe9284eb              # double 0.92444407673988616
	.quad	0x3fec8fad9a00186c              # double 0.89253883436391623
	.quad	0x3fbe5f41c915e808              # double 0.118641006081731
	.quad	0x3fe3e158d5039a0c              # double 0.62125817875204481
	.quad	0x3fe4bf58ba4bb0dd              # double 0.64835773836014321
	.quad	0x3fe6ec1cf73a04d4              # double 0.71632240568592431
	.quad	0x3fe1ad1535a9e6d5              # double 0.55237827759921265
	.quad	0x3fc69b0475b66060              # double 0.17660575626064468
	.quad	0x3fe4da6db14766bf              # double 0.65166363358294876
	.quad	0x3fd1eb8b7c0b71a8              # double 0.28000151742687729
	.quad	0x3fd8c65388e6453e              # double 0.38710487717715469
	.quad	0x3fed2a8fe1280068              # double 0.91144556022483147
	.quad	0x3fb04a59b2fb99d0              # double 0.063634496876694202
	.quad	0x3fd5d4515903e95a              # double 0.34108384793184643
	.quad	0x3fd5d97e4f7f7158              # double 0.34139974368533421
	.quad	0x3fe25535ffcbf708              # double 0.57290172539043827
	.quad	0x3fee436bbd7370a1              # double 0.94573008539329717
	.quad	0x3fec960116453cde              # double 0.89331106519412251
	.quad	0x3fea673c2e6351e4              # double 0.82510193882131632
	.quad	0x3fd24c1bbdaf1d3e              # double 0.28589528583366419
	.quad	0x3fe8a205fde7fa03              # double 0.76977824774786574
	.quad	0x3fa704d0faefe660              # double 0.044958620674105942
	.quad	0x3fd8edc41515e9ee              # double 0.38951208171024987
	.quad	0x3fe29ad9d80546e1              # double 0.5814027041580766
	.quad	0x3fe98903091c25ea              # double 0.79797508029258535
	.quad	0x3fd5a806f668363c              # double 0.33838056624594848
	.quad	0x3fe1fecebcd9fe53              # double 0.56235443959298903
	.quad	0x3fd43351a8aa9858              # double 0.31563226195647109
	.quad	0x3fe920db8f282a97              # double 0.78526094398815161
	.quad	0x3fd267151fb6ec28              # double 0.28754165742037907
	.quad	0x3fe0a1c2731fb0c2              # double 0.51974604115596201
	.quad	0x3fd4645b417d6424              # double 0.31862527270783603
	.quad	0x3fe9300242fd6ade              # double 0.78711045345275088
	.quad	0x3fbd9602bb273d00              # double 0.11557023114368192
	.quad	0x3fc88b8b318c61a4              # double 0.19175853652337793
	.quad	0x3fd195a2fa382f1e              # double 0.2747580951261045
	.quad	0x3fd527088e10ce8c              # double 0.33050741075133128
	.quad	0x3fe5b587845a8b27              # double 0.67840934610680825
	.quad	0x3fe0751a0af9a387              # double 0.51429464477142595
	.quad	0x3fe056975fe1b595              # double 0.51057022787942918
	.quad	0x3fe186bd34550da1              # double 0.5476976415742919
	.quad	0x3fd9175694185ec8              # double 0.39204945051595219
	.quad	0x3fd75a4da00d1106              # double 0.3648866713522384
	.quad	0x3fd5dcae797bfafe              # double 0.34159433234883341
	.quad	0x3fd98a693b13aa12              # double 0.39907294053287601
	.quad	0x3fb65253c077f528              # double 0.087193712701225778
	.quad	0x3fb888a57bae6600              # double 0.095835058875671564
	.quad	0x3fd2c486accd25be              # double 0.29324499964840445
	.quad	0x3fde55b009a0e8b0              # double 0.47397995891845834
	.quad	0x3feffd4cd1db9463              # double 0.99967041957701174
	.quad	0x3fe2461c88fa41ba              # double 0.57105852845602745
	.quad	0x3fd82c5d9304a332              # double 0.37770785672414597
	.quad	0x3fe676017185b54d              # double 0.70190498516391531
	.quad	0x3fc2ce504bd9f0a0              # double 0.14692119315794105
	.quad	0x3fddd0e3096a12c6              # double 0.46587444228525177
	.quad	0x3fe65d86c3a8d3b2              # double 0.69891679968588094
	.quad	0x3fe9235c3f9ae3da              # double 0.78556644842967249
	.quad	0x3fdbc4d988d2b638              # double 0.43388975488310022
	.quad	0x3fe1941f55f61539              # double 0.54933134831723074
	.quad	0x3fdc8abcd7e2f7f4              # double 0.44596787531543147
	.quad	0x3fa4a26edb11f4e0              # double 0.040301765672646317
	.quad	0x3fe077f1eac85376              # double 0.5146417222591555
	.quad	0x3fd8aa93a65f0028              # double 0.38541117903878552
	.quad	0x3fdcf4637e07521a              # double 0.45241629893760804
	.quad	0x3fd2ab6e49e801ec              # double 0.29171330659303751
	.quad	0x3fda4500e587869e              # double 0.41046163954715975
	.quad	0x3fb4e3435b76baf0              # double 0.081592759923960533
	.quad	0x3fa7e0ca5490cc70              # double 0.04663688928885612
	.quad	0x3fdd7ab8222dbf3e              # double 0.46061518991244899
	.quad	0x3fd2e5f390da5400              # double 0.29528512140069552
	.quad	0x3f9593e915818220              # double 0.021072046220412699
	.quad	0x3fea0be33cd7f324              # double 0.81395112880236242
	.quad	0x3fd1d0b75b1684c4              # double 0.27836402793225212
	.quad	0x3fdfa33695208184              # double 0.49433674395734095
	.quad	0x3fed19d41bd9de31              # double 0.90940289916665595
	.quad	0x3fe42831f702aa20              # double 0.62990663761349097
	.quad	0x3fdd9a0e0006e618              # double 0.46252775194770512
	.quad	0x3f9059ce01f0e060              # double 0.015967577808823186
	.quad	0x3feec3594e1c3756              # double 0.96134629493620127
	.quad	0x3fe5497426f493a4              # double 0.66521651848289709
	.quad	0x3fe996337be54e71              # double 0.79958509634384545
	.quad	0x3fec7e188b9e6a66              # double 0.89039256352709795
	.quad	0x3fee202396f66060              # double 0.9414232204899342
	.quad	0x3fd26e68cc7b7364              # double 0.28798885315864298
	.quad	0x3fd998c8aab76e86              # double 0.39995018645797875
	.quad	0x3fdfeef75fd1f8f2              # double 0.49896034581605797
	.quad	0x3feee1ced5db5a74              # double 0.96506444710651217
	.quad	0x3fd5b0c679f9df58              # double 0.33891450797772427
	.quad	0x3fca2dd8798b3b4c              # double 0.20452409682044459
	.quad	0x3fca95069e1bf42c              # double 0.20767290802169336
	.quad	0x3fbe11fc58206738              # double 0.11746194030311308
	.quad	0x3fefee6b47039095              # double 0.99785388822467047
	.quad	0x3fb98a384cfe30b8              # double 0.099765318677046078
	.quad	0x3fe919acf4750980              # double 0.7843842291406844
	.quad	0x3fedf2b4c97cbf72              # double 0.93587722161281151
	.quad	0x3fe55c6684b7c981              # double 0.66752935334652375
	.quad	0x3fec36dc359ea9e8              # double 0.88169680092442793
	.quad	0x3f995c53ac87bca0              # double 0.024766261487397245
	.quad	0x3fb8caf9b571bd80              # double 0.096847159192966714
	.quad	0x3fdeab98a391c902              # double 0.47922340367871652
	.quad	0x3fe63262dcb369e4              # double 0.69365065675384274
	.quad	0x3fe3e3b1cd3ed44d              # double 0.62154474341390087
	.quad	0x3fe9d62cc181550d              # double 0.80739438814149056
	.quad	0x3fe0b27720ab991e              # double 0.52178532010001155
	.quad	0x3fc2f7d4bb48b7fc              # double 0.14818820137719502
	.quad	0x3fd91ccf3ef079b8              # double 0.39238339563771829
	.quad	0x3fd62c88837b4f62              # double 0.34646809425361458
	.quad	0x3feb35ed7b3a96b2              # double 0.85033296650063606
	.quad	0x3fdb540ea739385e              # double 0.4270054467241432
	.quad	0x3fdada03f9d289f0              # double 0.41955661198349414
	.quad	0x3fd95192764a97b6              # double 0.39560376693622901
	.quad	0x3fbc88b35bc14ad8              # double 0.11146088590730174
	.quad	0x3fedf445ea354be9              # double 0.93606849426066419
	.quad	0x3fc458c23f502b98              # double 0.15895870295966286
	.quad	0x3f9f36b4c4880c60              # double 0.030482124800993993
	.quad	0x3f86dced0453f680              # double 0.011163570112781018
	.quad	0x3fe4852433f2b642              # double 0.64125261446105974
	.quad	0x3fe7d21ace84028a              # double 0.74439754805651259
	.quad	0x3fe3549456497a98              # double 0.60407463887152613
	.quad	0x3fbd3c88e6d2d0b8              # double 0.1142049373182229
	.quad	0x3feb9ee2f7e243a4              # double 0.86314533629239464
	.quad	0x3fc35ab9b6e089f4              # double 0.15120622090860503
	.quad	0x3fe6db77bf85355b              # double 0.71429049879376849
	.quad	0x3fb7c58f1b9607b8              # double 0.092858261332394387
	.quad	0x3fe2ed30dc91711b              # double 0.59145396308625509
	.quad	0x3fc6a349f2dbe794              # double 0.17685818060254788
	.quad	0x3fec4e97f3e8117e              # double 0.88459394109717926
	.quad	0x3fc39a459f0e0848              # double 0.15314550653789838
	.quad	0x3fe73d0841793c38              # double 0.72620022571380272
	.quad	0x3fcaceb5b12fc938              # double 0.20943328048412879
	.quad	0x3fe833fc0da85bdc              # double 0.7563457743407258
	.quad	0x3fa2e0646465b360              # double 0.036868226295019069
	.quad	0x3fc8dfa0f9b39cd4              # double 0.1943246096845771
	.quad	0x3fe09efe2153af03              # double 0.51940828808935213
	.quad	0x3fc089e2b34d4dd8              # double 0.1292079329965492
	.quad	0x3fef37e22e9f6aa8              # double 0.97557171922683938
	.quad	0x3fe0cc4c57248321              # double 0.5249387456898128
	.quad	0x3fddc071338a4a2a              # double 0.46487073929998479
	.quad	0x3fe92ead332592d7              # double 0.78694782247165562
	.quad	0x3fdc9567f7026a28              # double 0.44661902544035792
	.quad	0x3f99e4ecaa9109e0              # double 0.025287340078884557
	.quad	0x3fefbbc64a642197              # double 0.9916717007591157
	.quad	0x3fe382b71677a42a              # double 0.60970644367364923
	.quad	0x3fc7fec8d514ce64              # double 0.18746290592536063
	.quad	0x3fedd896aa1ab3af              # double 0.93268902991768765
	.quad	0x3fe69d5de780670c              # double 0.70670981612349371
	.quad	0x3fe21c2334a9aece              # double 0.56593475614268995
	.quad	0x3fef8d8fdd52ad08              # double 0.98603051402224739
	.quad	0x3fe9c7e240ff8250              # double 0.80564987845361635
	.quad	0x3fd60a3bd2fe3a8c              # double 0.34437461476128628
	.quad	0x3fc26640d13c5650              # double 0.14374551979624295
	.quad	0x3fd4e3dc895caad0              # double 0.32640756048446651
	.quad	0x3fc7121aa868c8d4              # double 0.18023999426947646
	.quad	0x3fe42cce34e77fb2              # double 0.63046942074651313
	.quad	0x3fe91405dbc8a64c              # double 0.78369419981499666
	.quad	0x3fdb16edf48cd8dc              # double 0.42327450639585407
	.quad	0x3fd957acd0c4949e              # double 0.39597626101960681
	.quad	0x3fe79b42fc07dbca              # double 0.7377028391336975
	.quad	0x3fa386eeb9d80680              # double 0.038138828454987284
	.quad	0x3fec0ca8e913142b              # double 0.8765453865277143
	.quad	0x3fed163c54cb2c6b              # double 0.90896431504496655
	.quad	0x3fe8ad6163bb63ce              # double 0.77116460303215617
	.quad	0x3fe2248eaa9c5772              # double 0.56696255991367495
	.quad	0x3fd3e0d74ccfd6b0              # double 0.31059820653113501
	.quad	0x3fe70f0490851f49              # double 0.72058323122562584
	.quad	0x3feb623ebf4bb424              # double 0.85574281084484882
	.quad	0x3fd46638ee3d7784              # double 0.31873915925631757
	.quad	0x3fbca8d3f3ba2300              # double 0.11195110988968437
	.quad	0x3fec1fc1ef434de0              # double 0.87887665492092637
	.quad	0x3fe8de3240e18ee6              # double 0.77712357208335159
	.quad	0x3fd00f0aeeb50a7a              # double 0.25091813384293682
	.quad	0x3fe7a054357d37f5              # double 0.73832140395256707
	.quad	0x3fb6f94ff0ceec48              # double 0.089741703311049581
	.quad	0x3fc22010c8154a9c              # double 0.14160356301961918
	.quad	0x3fef93e1f38098b2              # double 0.9868020778565294
	.quad	0x3fc2b9b3745d9d80              # double 0.14629214460294904
	.quad	0x3fda2fc2cb1e7350              # double 0.4091650947173564
	.quad	0x3fe39b7ad5dad00c              # double 0.61272947090628938
	.quad	0x3fe5a0fee9a9edd0              # double 0.67590280187089924
	.quad	0x3fc94c21b8fb9da0              # double 0.19763585598341837
	.quad	0x3fc2d0ec89c3ea78              # double 0.14700085379429928
	.quad	0x3fe2bdf846c1f7ee              # double 0.58568967647420123
	.quad	0x3fe0a130221b2ad4              # double 0.51967627202369693
	.quad	0x3fe0e3afef5742c3              # double 0.52779385324728201
	.quad	0x3fc3864985065bb8              # double 0.15253561969140406
	.quad	0x3fec4875de2a1d91              # double 0.88384526626116344
	.quad	0x3fb4ad421ebd6678              # double 0.080768711571545526
	.quad	0x3feb5a39ca82b043              # double 0.85476388504822187
	.quad	0x3fab830e534ece80              # double 0.053734252614416
	.quad	0x3fdf2df9fa769fdc              # double 0.48718118151964318
	.quad	0x3fb934b736c1bcd0              # double 0.098460627430301927
	.quad	0x3fd001984847828a              # double 0.25009734209565038
	.quad	0x3fe2d58482551339              # double 0.58856416183025495
	.quad	0x3fe2b7d3d590fc9e              # double 0.58493987762621535
	.quad	0x3fa0abbaa9ebc350              # double 0.032560189478209822
	.quad	0x3fe05b705e5014bc              # double 0.51116197987052869
	.quad	0x3fc37e20f08007b8              # double 0.15228664153261007
	.quad	0x3fef43250cbd4e82              # double 0.97694637764148262
	.quad	0x3fe99050fccb56ce              # double 0.79886674283872039
	.quad	0x3fde310dceff2e8a              # double 0.47174401487857465
	.quad	0x3fbc02d7def9e3d8              # double 0.10941838449242824
	.quad	0x3fe7187c12ee557d              # double 0.72173885056933751
	.quad	0x3fae792e49c50430              # double 0.059518286233022244
	.quad	0x3fb328486f9371f0              # double 0.074833419075225782
	.quad	0x3fd6ade86a1e5fa8              # double 0.35436449397229319
	.quad	0x3fd8c1598a52f29e              # double 0.3868011332340674
	.quad	0x3fca69141f6123e0              # double 0.2063317445011128
	.quad	0x3fd10d94b6dc34a0              # double 0.2664539132827688
	.quad	0x3fe086e6605f8a3b              # double 0.51646727393046576
	.quad	0x3fe06689bd59f8c6              # double 0.51251685126023783
	.quad	0x3fe3f0db28b9843c              # double 0.62315137819326294
	.quad	0x3fccb20c6af9804c              # double 0.22418360923166103
	.quad	0x3fe20952d1175069              # double 0.56363812292194126
	.quad	0x3fe620ced10a8438              # double 0.69150486782394349
	.quad	0x3fd4e9f3f610144c              # double 0.32677935628482113
	.quad	0x3fd3fa1f975a56e6              # double 0.31214132099681391
	.quad	0x3fc3d2556fc51d28              # double 0.15485637624281279
	.quad	0x3fe2af4f412c16f3              # double 0.58390009621572714
	.quad	0x3fe4235c41879058              # double 0.62931645201434616
	.quad	0x3fe4e6aa2bcd4125              # double 0.65315731577905878
	.quad	0x3fe64ab75420db7d              # double 0.69662062102621258
	.quad	0x3fee102d06736133              # double 0.93947459468748773
	.quad	0x3fe489aa3f6383fe              # double 0.64180481320011018
	.quad	0x3fb9f33998abf808              # double 0.10136756875360231
	.quad	0x3fd80fbfa37111f4              # double 0.3759612175092848
	.quad	0x3fed551dd5ad950f              # double 0.91664020284648184
	.quad	0x3fe70217b3d3264c              # double 0.7190054428294359
	.quad	0x3fd8b4f106204318              # double 0.38604379270786771
	.quad	0x3fd5cda1be4c1bf4              # double 0.34067576965065816
	.quad	0x3fe8bad2e6ab4c72              # double 0.77280564358296844
	.quad	0x3fe7d28817b6a97e              # double 0.7444496596483956
	.quad	0x3fb3e8ce9e13fb00              # double 0.077771104424737558
	.quad	0x3fd5b96ccb52412e              # double 0.33944244247051614
	.quad	0x3fd6942f3d5a81ec              # double 0.35279446593815922
	.quad	0x3fefb4f509c61ee5              # double 0.99083949955908379
	.quad	0x3fcdacf14c5310c0              # double 0.23184028841763471
	.quad	0x3fe1cda19a611e02              # double 0.55635147239894445
	.quad	0x3fe81577b84ef0ab              # double 0.75262056348539852
	.quad	0x3fe16b3623808f91              # double 0.54433733877202617
	.quad	0x3fedef1c2065183e              # double 0.93543821646813519
	.quad	0x3fe54cc3c9f5816d              # double 0.66562070317381272
	.quad	0x3fe33cc701ce7eb3              # double 0.60116911270957585
	.quad	0x3fdbbd423ed8c3d8              # double 0.43342643868805686
	.quad	0x3fdf5e700bf976f2              # double 0.49013901872045473
	.quad	0x3fec42b5505719b4              # double 0.88314309779598554
	.quad	0x3fefb33cc6fe4e77              # double 0.99062956682105507
	.quad	0x3fe08aa3c33bb181              # double 0.51692379123191767
	.quad	0x3fc89a924935df94              # double 0.19221714567879344
	.quad	0x3fed9903e0e1083b              # double 0.92492860719381242
	.quad	0x3fe634606f96d9b4              # double 0.6938936404683802
	.quad	0x3fbdbe6f4bf356c8              # double 0.11618705372105886
	.quad	0x3fe55fb70c60eb3e              # double 0.66793396394437088
	.quad	0x3fe38a425433aedf              # double 0.61062733121567792
	.quad	0x3fabe50b04400140              # double 0.054481834667969853
	.quad	0x3fac6f6f2e4ac2c0              # double 0.055537676239855838
	.quad	0x3fe31e9e3c3936bb              # double 0.59748756182099017
	.quad	0x3fd07530a43201e8              # double 0.25715271029187514
	.quad	0x3fefb5d8e74be7de              # double 0.99094815421198823
	.quad	0x3fc2c172f6712468              # double 0.14652859719561495
	.quad	0x3fd7393220a05e48              # double 0.36286595522094389
	.quad	0x3fdbdcfe3fa8b3f4              # double 0.43536335198115172
	.quad	0x3fe10987fef8d9bf              # double 0.53241348075135153
	.quad	0x3fdb118cd84c90b2              # double 0.42294617770154297
	.quad	0x3fef1521954bdf67              # double 0.97132949027489423
	.quad	0x3fe2839a90901381              # double 0.578564913129057
	.quad	0x3fdc249e4e4de884              # double 0.43973500868708748
	.quad	0x3f8064a9f4ebb480              # double 0.0080045011395333265
	.quad	0x3fe58447af0084c7              # double 0.6723974626549073
	.quad	0x3fe6a14adadb27eb              # double 0.70718901391341882
	.quad	0x3fd5d760cb5faf44              # double 0.34127063618392506
	.quad	0x3fb999cebc8ecbb8              # double 0.10000316718541924
	.quad	0x3fe0b4edcd83c906              # double 0.52208604945761361
	.quad	0x3fe805dbd6e584ac              # double 0.75071517917617347
	.quad	0x3fd2e67b5d2d5e72              # double 0.29531749820078013
	.quad	0x3fd008eac07a29f6              # double 0.25054425045587381
	.quad	0x3fdee8fd68200c86              # double 0.48297057312465375
	.quad	0x3fd866e074ad90c8              # double 0.3812791003640652
	.quad	0x3fd37dc3438630ee              # double 0.3045509490409718
	.quad	0x3fe87cc2cf72100e              # double 0.76522961155615277
	.quad	0x3fef8f8065853a48              # double 0.98626727894026888
	.quad	0x3fec389fd5ad0455              # double 0.88191215261043487
	.quad	0x3fe48297298f757a              # double 0.64094122044814061
	.quad	0x3fc9cb9809b6d480              # double 0.20152569269490428
	.quad	0x3fd502de567be836              # double 0.32830007978157327
	.quad	0x3fb4c93350466e00              # double 0.081195075128952965
	.quad	0x3fdaab32822e630e              # double 0.41669905388839446
	.quad	0x3fe23703cba9dbcc              # double 0.56921567705182374
	.quad	0x3fea6d9dda858f00              # double 0.82588093452474709
	.quad	0x3fc73694e22edd28              # double 0.18135319751829937
	.quad	0x3fd28c924615dca4              # double 0.2898297962596621
	.quad	0x3fee2df3afd5f81a              # double 0.94310936301167492
	.quad	0x3fe7867932b4ad8c              # double 0.73516521361800491
	.quad	0x3fd8809efcdf77ce              # double 0.38285040564175865
	.quad	0x3fcfa4b7bb0f35f4              # double 0.24721428521881672
	.quad	0x3fe961f5ca1a1dde              # double 0.79320802186060368
	.quad	0x3fe3008367e8de94              # double 0.5938126592145232
	.quad	0x3fefedfc38cee21b              # double 0.99780093283976911
	.quad	0x3fd0dd3d9e3c0ce8              # double 0.26350346043200412
	.quad	0x3fcd1f3b5f9505ec              # double 0.22751562277885229
	.quad	0x3feedf4c90f4b11d              # double 0.96475818931279244
	.quad	0x3fbc26d7356755e0              # double 0.10996766141700887
	.quad	0x3fd0f7bf7a124d36              # double 0.26512133523029335
	.quad	0x3fee2e4f3d8df20b              # double 0.94315301916464145
	.quad	0x3fed15377ac7a39d              # double 0.90883993130147511
	.quad	0x3fe57a2a4c89163d              # double 0.67116274784411412
	.quad	0x3fccf9213c13a76c              # double 0.22635283883510782
	.quad	0x3fe9eaea0f707ac3              # double 0.80992606177809312
	.quad	0x3fec3652c40b4d1b              # double 0.88163126268264891
	.quad	0x3fec85d79c621019              # double 0.89133816283765832
	.quad	0x3fdcc0cbdf1ffb6c              # double 0.44926735677284202
	.quad	0x3fe16ab7ff0f9bcb              # double 0.54427718941303149
	.quad	0x3fc8010b44728728              # double 0.18753186075360273
	.quad	0x3fe31589372d40c4              # double 0.59637890602791588
	.quad	0x3fc8bc4d898ad658              # double 0.19324654785093531
	.quad	0x3fd3c32172259f94              # double 0.30878482958950682
	.quad	0x3fc6a92f9821ecfc              # double 0.17703814438196008
	.quad	0x3fdfe560a82779a8              # double 0.4983750955706463
	.quad	0x3fe15f4604ba1c56              # double 0.54288006709328829
	.quad	0x3fb4bd67f8c6c0d8              # double 0.081015108333989061
	.quad	0x3fe5cb0af763c5a7              # double 0.68103550260837131
	.quad	0x3fc8facda6b72664              # double 0.19515391006852945
	.quad	0x3fd7c88fb1ec355a              # double 0.3716162908102284
	.quad	0x3fd8c500ed30af3a              # double 0.38702414668181329
	.quad	0x3fd900473320c400              # double 0.39064197533576817
	.quad	0x3fde4fb1903d6cb4              # double 0.47361411176616319
	.quad	0x3fdd0d48bb5f7a1a              # double 0.45393579767360992
	.quad	0x3fe84a9fcfb69c87              # double 0.75910940712937325
	.quad	0x3fd8a17e693dc652              # double 0.38485679891082214
	.quad	0x3fc0f2077c49d010              # double 0.13238614624754108
	.quad	0x3fdde7fcaf4949d6              # double 0.46728436582375588
	.quad	0x3fc773ba9810b98c              # double 0.18321926522316934
	.quad	0x3fea6e4b7cb8a85a              # double 0.82596372947342478
	.quad	0x3fd6b554d49ca5cc              # double 0.35481758845216116
	.quad	0x3feb3ca65cb3df03              # double 0.85115354639035024
	.quad	0x3fe9d479bb34c52d              # double 0.80718695224473935
	.quad	0x3fd1c5eaefb37826              # double 0.27770493896776072
	.quad	0x3fdcfb3a2def8172              # double 0.45283369527717021
	.quad	0x3fbf8f657b30e560              # double 0.12328180558769963
	.quad	0x3fca9ca47d6a6684              # double 0.20790535091218854
	.quad	0x3fcd85623803de8c              # double 0.23063304648507132
	.quad	0x3fdf192aa36e30aa              # double 0.48591104469302115
	.quad	0x3fe62c34ec11626a              # double 0.69289632899297016
	.quad	0x3fed5d5e75975e29              # double 0.91764758078619935
	.quad	0x3fedb739d28f6aef              # double 0.92861643910450009
	.quad	0x3feaed7e336c116c              # double 0.84149084132563478
	.quad	0x3fdf3af535bbf6f0              # double 0.48797350165828757
	.quad	0x3fce7497722d5f3c              # double 0.23793309283314013
	.quad	0x3fe54426aeeaa38e              # double 0.66456922686949027
	.quad	0x3fea873b14e13121              # double 0.82900766447122376
	.quad	0x3fb28663181c0dd8              # double 0.072363084207658246
	.quad	0x3fc8e7106cc8ec60              # double 0.19455151855240427
	.quad	0x3f8ee6ff7682b280              # double 0.015089031032709643
	.quad	0x3fd0d54de980d814              # double 0.26301906397873265
	.quad	0x3fe7e1146a829be2              # double 0.74622555544635483
	.quad	0x3fec4b2c86abe1bf              # double 0.88417650511751578
	.quad	0x3fb963cd90c30cb0              # double 0.099179122774375683
	.quad	0x3fafac0f1106c920              # double 0.06185957987635704
	.quad	0x3f58dd5059a4a600              # double 0.0015176090879073234
	.quad	0x3fd0f8e1d3724878              # double 0.26519055985512052
	.quad	0x3fdeb097427c1d72              # double 0.47952825062426208
	.quad	0x3fe146cd058d5902              # double 0.53989268383409716
	.quad	0x3fed563c39a2213a              # double 0.91677676445491518
	.quad	0x3fe4d294ba57d200              # double 0.65070568461538869
	.quad	0x3fdece2e51393156              # double 0.48133428508733311
	.quad	0x3fe61fb3312c92a7              # double 0.69136962513274092
	.quad	0x3fe37f5b1cc3b1f1              # double 0.6092963754468298
	.quad	0x3fed1558f2b89161              # double 0.90885589033545611
	.quad	0x3fdc099c939d6be2              # double 0.43808664718170409
	.quad	0x3fd125b0865cb112              # double 0.26792538758560724
	.quad	0x3fe9052d417d20f5              # double 0.78188193121698524
	.quad	0x3fd3b6f98ee5f1ec              # double 0.30804289774803695
	.quad	0x3feb4bfe8fe04705              # double 0.85302665806577294
	.quad	0x3fd0e9abab2543c2              # double 0.26426212037500474
	.quad	0x3fe9ffe77cdcc4e3              # double 0.81248831164534996
	.quad	0x3fdc76cc521ca52e              # double 0.44475086230029859
	.quad	0x3fcf43855730b804              # double 0.24424807317103625
	.quad	0x3fe7b6386a235e63              # double 0.74099369745358634
	.quad	0x3fe06366c1bdaa10              # double 0.51213395919813998
	.quad	0x3fe885108eee17f6              # double 0.76624324718500136
	.quad	0x3fdb3289e6633428              # double 0.42495963572293016
	.quad	0x3feb7c8819218f08              # double 0.85895161541381615
	.quad	0x3fe0e32bce730986              # double 0.52773084947720927
	.quad	0x3feede6996996e03              # double 0.96464995778973194
	.quad	0x3fe7a570ee49b1db              # double 0.73894545116996413
	.quad	0x3fef3438fe53d552              # double 0.97512483285269469
	.quad	0x3fd1e10801d45dac              # double 0.27935981920878805
	.quad	0x3fd7c153ffd36b72              # double 0.37117481215471237
	.quad	0x3fe16937924caba0              # double 0.54409388136024361
	.quad	0x3fdb42c9ee6eb0ac              # double 0.4259514645043605
	.quad	0x3fdf56afffc83422              # double 0.48966598490443591
	.quad	0x3fef30c206e876e3              # double 0.97470189427596343
	.quad	0x3fca36bb6b3e4e68              # double 0.20479529129498819
	.quad	0x3fe73a9d474e69eb              # double 0.72590507437717855
	.quad	0x3fd5d9f6c1957d9e              # double 0.34142846016580986
	.quad	0x3fe2b8ac396cbfee              # double 0.58504306045324284
	.quad	0x3fe9f70051e883cf              # double 0.81140151975352548
	.quad	0x3fd8ff065f501d92              # double 0.39056548412232772
	.quad	0x3fe3888dc257052f              # double 0.61041915852562123
	.quad	0x3f53f3790425f800              # double 0.0012177163885946918
	.quad	0x3fec496a465655a7              # double 0.88396180856459672
	.quad	0x3fe04c9934f3ccf4              # double 0.50935039846663566
	.quad	0x3fe3eb6aef09be7c              # double 0.62248751341935771
	.quad	0x3fa43383fe3b56f0              # double 0.039455532821802808
	.quad	0x3fe3da9f8fd5f2be              # double 0.62043741314808876
	.quad	0x3fc537837ed7c160              # double 0.16575664227958509
	.quad	0x3fd0d3c5b93cb646              # double 0.2629255589443783
	.quad	0x3fe132ed81ba5fc4              # double 0.53746676766876833
	.quad	0x3fc92f7b72cd47b4              # double 0.19676154237327881
	.quad	0x3fed2d9f399aff59              # double 0.91181908846918269
	.quad	0x3fd46e6a41b098e8              # double 0.31923920073530931
	.quad	0x3fed4468c7658cd8              # double 0.91460074371971256
	.quad	0x3fd51a388dc86f5c              # double 0.32972539754859098
	.quad	0x3fd6cde7c9ef20d4              # double 0.35631746978880341
	.quad	0x3fcb0a9a1da47050              # double 0.21126104781513044
	.quad	0x3fe601cb0a3394eb              # double 0.68771888725737307
	.quad	0x3fa0c656a12f9970              # double 0.032763201881425341
	.quad	0x3fddb20dc7d1228c              # double 0.46399254334804918
	.quad	0x3fe9486fb2cb2ada              # double 0.79009232445363442
	.quad	0x3fed178577df3ada              # double 0.90912125980852498
	.quad	0x3fe8ab5b00773814              # double 0.77091741648632927
	.quad	0x3febb87aa39c7bd5              # double 0.86626941638302901
	.quad	0x3fdb510613cd7b1e              # double 0.42682029661038878
	.quad	0x3fed148f220a9686              # double 0.90875965737059583
	.quad	0x3fe76d4360b0b250              # double 0.73208779225167042
	.quad	0x3febe7449d528c25              # double 0.87198096015015791
	.quad	0x3fe35c5dcc6d16a9              # double 0.60502519537904675
	.quad	0x3fdb19762bd3c796              # double 0.42342905311590451
	.quad	0x3fbbc32b169cbd58              # double 0.10844678213174086
	.quad	0x3fdecc2fc2a0ca64              # double 0.48121255880975
	.quad	0x3feea94a7bcb9b8b              # double 0.95816539934900057
	.quad	0x3fa630ae1dde8920              # double 0.043340150018837287
	.quad	0x3fcf3b36e4cb9340              # double 0.24399458095208537
	.quad	0x3fee18ba3a0fac80              # double 0.94051848735888655
	.quad	0x3fee56a73a2f8ef0              # double 0.94807778705987111
	.quad	0x3fe74d83a1763f9b              # double 0.72821218047646441
	.quad	0x3fad513cc4f568f0              # double 0.057260417025377097
	.quad	0x3fe968114637ba58              # double 0.79395354952232378
	.quad	0x3fc72b55585f72b0              # double 0.181009929800799
	.quad	0x3fdf0f0072190418              # double 0.48529063360553115
	.quad	0x3fd7774497198948              # double 0.36665453677973803
	.quad	0x3febbd03399c6929              # double 0.86682282688278633
	.quad	0x3fecc7a40bbd7487              # double 0.89937021534900985
	.quad	0x3fe3c2208c6af4e6              # double 0.61744716096259533
	.quad	0x3fd0c80703688298              # double 0.26220870335422708
	.quad	0x3fd9b74d1f79330c              # double 0.40181282113626149
	.quad	0x3fe733548208e478              # double 0.7250158824673596
	.quad	0x3feb965cd43797d6              # double 0.86210481117881943
	.quad	0x3fdb81056160fdcc              # double 0.42974981794028788
	.quad	0x3fa089a5ec0cfba0              # double 0.032300171913895115
	.quad	0x3fe2ab611256bf74              # double 0.58342031080063217
	.quad	0x3fe72261a2956c3a              # double 0.72294694666505355
	.quad	0x3fce9c8e440e4310              # double 0.23915270159752611
	.quad	0x3fb45caa417d2e58              # double 0.079538956631205138
	.quad	0x3fd5d0934629c13c              # double 0.34085542537561131
	.quad	0x3fe7fa43fc08fe9a              # double 0.74929999566662109
	.quad	0x3fc34967fd08ea60              # double 0.15067767958847167
	.quad	0x3f9090e905d52160              # double 0.016177788716306707
	.quad	0x3fdb7f47264d96cc              # double 0.42964342823539137
	.quad	0x3fe94aa7eb08f948              # double 0.79036327271732265
	.quad	0x3fe57f67456e404c              # double 0.67180217323949298
	.quad	0x3fb52eeabe0a6570              # double 0.082747146031030061
	.quad	0x3feb104d3c1572a7              # double 0.84573995337594432
	.quad	0x3f970e29a1bb10a0              # double 0.022514963623294748
	.quad	0x3fe32af8a5d7987a              # double 0.59899551764534853
	.quad	0x3fbb9f901a236d68              # double 0.10790348661560289
	.quad	0x3fd018a0dbcb9056              # double 0.25150319542286093
	.quad	0x3feeaa91b6c4864b              # double 0.95832143494426114
	.quad	0x3fd914b5d7bcfe2e              # double 0.39188905780972305
	.quad	0x3fd6df13200d4e14              # double 0.3573653996474786
	.quad	0x3fd41bc556d1e088              # double 0.31419499853610278
	.quad	0x3fedcb33eca61194              # double 0.93105503292513214
	.quad	0x3fe0ee2ce828feb5              # double 0.52907414764191307
	.quad	0x3fdb2d6f7b99913e              # double 0.42464816160488172
	.quad	0x3fd1568f7c7997ae              # double 0.27090823322066171
	.quad	0x3fe7a46502f56649              # double 0.73881769731378555
	.quad	0x3fe3a378e7010127              # double 0.61370511167482256
	.quad	0x3fe0d48d0a750b67              # double 0.52594615976736925
	.quad	0x3febde27671bb968              # double 0.87086839807834071
	.quad	0x3fd402e5c119c3c6              # double 0.31267684800610274
	.quad	0x3fee790ef0b90263              # double 0.95227763191367065
	.quad	0x3fe8da7d09ec2f33              # double 0.77667095125204921
	.quad	0x3f74cdb835e54180              # double 0.0050790019725613922
	.quad	0x3fd8ab217b97ae72              # double 0.38544499463635085
	.quad	0x3fea6642fe3fd58f              # double 0.82498311670376434
	.quad	0x3fc3946fc7a9a3dc              # double 0.15296742676880981
	.quad	0x3fd7ed3a433841b0              # double 0.37385422291211068
	.quad	0x3fd016dcfd1fe6fa              # double 0.25139546126557344
	.quad	0x3fef1457478d2367              # double 0.97123302435748548
	.quad	0x3fe3620d62208afd              # double 0.60571927228406219
	.quad	0x3fe36dd306056bca              # double 0.60715628791819509
	.quad	0x3fe42ba416dde5a3              # double 0.6303272673241519
	.quad	0x3fe9ff850ed82a61              # double 0.81244137667938443
	.quad	0x3fe35aa9080a66ef              # double 0.60481692858158265
	.quad	0x3fece221b27c0245              # double 0.90260395870434051
	.quad	0x3fafa768216e7760              # double 0.061824087220186952
	.quad	0x3fed5735ffe0b8cf              # double 0.9168958661664649
	.quad	0x3fd6b8761c87dbf6              # double 0.35500862871361905
	.quad	0x3fd8874279c10f44              # double 0.38325559511234908
	.quad	0x3fe5fcdb3819f495              # double 0.68711625058462522
	.quad	0x3fcef5ce0bc1775c              # double 0.24187636922845968
	.quad	0x3fef64716bc655ad              # double 0.98101111459498258
	.quad	0x3fe7bea374e0ef09              # double 0.74202130153523271
	.quad	0x3fe47e705f9f37b7              # double 0.6404344432464687
	.quad	0x3fb733eba76e5300              # double 0.090635994316766499
	.quad	0x3fd8c2938a636a04              # double 0.3868759967278097
	.quad	0x3fbd487375017488              # double 0.11438676458915797
	.quad	0x3fb8e1de0fef9898              # double 0.097196463480573647
	.quad	0x3fe86f9a6f3fb11b              # double 0.76362344482689382
	.quad	0x3fd2b0d5e35ccdec              # double 0.29204318240519345
	.quad	0x3fe36dc9725cd1bd              # double 0.60715172134819506
	.quad	0x3fcac673de0e6d50              # double 0.20918129294009669
	.quad	0x3fe486f21be171ef              # double 0.64147286839903284
	.quad	0x3fba79b845b631f8              # double 0.10341979696222114
	.quad	0x3fd73b56cf3bc396              # double 0.36299677121774587
	.quad	0x3fdcf82ec68d4a70              # double 0.45264787092052128
	.quad	0x3fda2a9f65916406              # double 0.40885147970908553
	.quad	0x3feae1e5f952eef0              # double 0.84007548042379021
	.quad	0x3fd11509819a8436              # double 0.26690900475120161
	.quad	0x3fe3ea76e0dc8e3f              # double 0.62237113874693495
	.quad	0x3fe31295f7ce0c3a              # double 0.59601877593411889
	.quad	0x3fd4333ec6765c90              # double 0.31562775975312096
	.quad	0x3fd69f946ca51226              # double 0.3534899769768195
	.quad	0x3fd24e60f259942e              # double 0.28603385607704268
	.quad	0x3fe6e0d760af783e              # double 0.71494645007965807
	.quad	0x3feec1310df31801              # double 0.96108296131637882
	.quad	0x3fca5449007460dc              # double 0.20569717905232821
	.quad	0x3fe9db1cf0aa5d24              # double 0.80799719815232551
	.quad	0x3fe441683cc9ca55              # double 0.63298427460388018
	.quad	0x3fe17ad1905a3a8f              # double 0.54624250596846646
	.quad	0x3fd46056b5dd5aac              # double 0.31838004837247058
	.quad	0x3fea33a8bb5aeb9d              # double 0.81880604355625375
	.quad	0x3fc8a3e0ce6e2cfc              # double 0.19250116424186803
	.quad	0x3faa7d2ecb439300              # double 0.051736318886275612
	.quad	0x3fe45228cb7e4dd4              # double 0.63502921814727609
	.quad	0x3fdf4f7fb3fcc97a              # double 0.48922722412967057
	.quad	0x3fddfb7d477f0fda              # double 0.46847469312728907
	.quad	0x3fc3791751d0b5d8              # double 0.15213290686499081
	.quad	0x3fdfa15b4247cfc8              # double 0.49422341797548741
	.quad	0x3fd258890a04fe56              # double 0.28665376642672891
	.quad	0x3fe2f34b3a634444              # double 0.59219895748004392
	.quad	0x3fd514d9ea90f570              # double 0.32939765841350432
	.quad	0x3fe81b77268bdcae              # double 0.75335271385747204
	.quad	0x3feccea966343f07              # double 0.90022726022468269
	.quad	0x3fda26b1de9deb3e              # double 0.40861174335411821
	.quad	0x3fa7a5101f7ff040              # double 0.046181205601869113
	.quad	0x3fe4618f26b7e906              # double 0.63690908014476189
	.quad	0x3fe2f89765b08be5              # double 0.59284562932259333
	.quad	0x3fa6c2e5c2967de0              # double 0.044455699923897418
	.quad	0x3fe3e72405a38734              # double 0.62196541882824485
	.quad	0x3fe24b17ad8ad064              # double 0.57166656393975446
	.quad	0x3fec8aab46ecd819              # double 0.89192737438748104
	.quad	0x3fd75e2d6d7df8fa              # double 0.36512313549600572
	.quad	0x3fe0e249093ea017              # double 0.52762271695701457
	.quad	0x3fda3649b97a2140              # double 0.40956347573275664
	.quad	0x3fc35c04633fba20              # double 0.15124564024104448
	.quad	0x3fd235776cb5a1d2              # double 0.28451333633577491
	.quad	0x3fc585f22fc055e8              # double 0.16815020877463316
	.quad	0x3f9beda3f11f9d20              # double 0.027273713676462141
	.quad	0x3fdd8c05a3a39994              # double 0.46167126636864819
	.quad	0x3fcfe64f28c013d4              # double 0.24921597947846286
	.quad	0x3fd68f766f34218e              # double 0.35250626430254151
	.quad	0x3fe8ebb60a6057ba              # double 0.77877332712772973
	.quad	0x3feb170313dec871              # double 0.84655908471019192
	.quad	0x3f92e8164dc13ba0              # double 0.018463467117097232
	.quad	0x3fba313619f3f5d8              # double 0.10231340535752709
	.quad	0x3fe48dab3176998e              # double 0.64229354534909233
	.quad	0x3fe67eb2ef7ffa01              # double 0.70296618249250298
	.quad	0x3fe11fc859f6fe2c              # double 0.53512971469166848
	.quad	0x3fdf3ed0e85d546a              # double 0.48820898715832206
	.quad	0x3fe3b267a1928602              # double 0.61552793080426249
	.quad	0x3fcf1170ace57e34              # double 0.2427197307797414
	.quad	0x3fdb65b1fc8a05a2              # double 0.4280819860651609
	.quad	0x3fd4d040dc05f33e              # double 0.32521077620167549
	.quad	0x3fc1e8e2c8f09340              # double 0.13991961299429967
	.quad	0x3fe19299561dc04c              # double 0.54914538211415609
	.quad	0x3fcea9766dc1a710              # double 0.23954658850862431
	.quad	0x3fd7a63592e67c3a              # double 0.36951960893378877
	.quad	0x3fde779a076cc570              # double 0.47604990696989713
	.quad	0x3fe665e1df94d132              # double 0.6999368063757514
	.quad	0x3fe359a2f0f7d459              # double 0.60469195427016154
	.quad	0x3fdfe9b2c9d3163c              # double 0.49863881787709707
	.quad	0x3fef505f4c89d1c8              # double 0.97856106709382917
	.quad	0x3fe336a27d7ff087              # double 0.60041927825615538
	.quad	0x3febb64e3b122338              # double 0.86600410020137186
	.quad	0x3fa2db3cb32efb90              # double 0.036828896401394862
	.quad	0x3fe4a3e614946c5d              # double 0.6450071718167113
	.quad	0x3fdcd501764904d0              # double 0.45050083686153375
	.quad	0x3fcb9fa727d70b8c              # double 0.21580972142518495
	.quad	0x3fee6354f76b82c7              # double 0.9496254761143853
	.quad	0x3fdb967a868945da              # double 0.43105948580077114
	.quad	0x3fea54e4a4f20444              # double 0.82286293235677776
	.quad	0x3fe59cc31218bc15              # double 0.67538598570343089
	.quad	0x3fdc3dabc68b6698              # double 0.44126409901728314
	.quad	0x3fd4398522473348              # double 0.31601074550126329
	.quad	0x3fbc418eb8011380              # double 0.11037532799043781
	.quad	0x3fce6957c4157db4              # double 0.23758980822002018
	.quad	0x3fe6ebabc799e5fe              # double 0.71626843437769572
	.quad	0x3fe1b6316171b010              # double 0.55349034339951864
	.quad	0x3fe03e9a41d9c63f              # double 0.50764191495381528
	.quad	0x3fe919202919c358              # double 0.78431709315746456
	.quad	0x3fe6ffa75cf4730e              # double 0.71870773463487736
	.quad	0x3fe66fdccd8e7477              # double 0.70115509174105639
	.quad	0x3fe5b780512e896a              # double 0.67865005355660668
	.quad	0x3fa28a8988325b10              # double 0.03621320521886251
	.quad	0x3fe41676f03cd212              # double 0.6277422611370318
	.quad	0x3fc9b8c47ac85ae0              # double 0.20095115657087259
	.quad	0x3fe200479af61a63              # double 0.56253414407622093
	.quad	0x3fe25026fdca4d07              # double 0.57228421753316716
	.quad	0x3fbf179efaa97f78              # double 0.12145417804413039
	.quad	0x3fe1f7991f9bcc58              # double 0.56147438214828593
	.quad	0x3fdcce97f63bcda8              # double 0.45010947271586099
	.quad	0x3fd31cc355b805d2              # double 0.29863055582981446
	.quad	0x3fc6b29814939428              # double 0.17732525829993162
	.quad	0x3fe9c1f0c7c1cb0f              # double 0.80492438330688454
	.quad	0x3fe22907ff299da9              # double 0.56750869594991571
	.quad	0x3fd0ef7e6d5961ce              # double 0.26461754492404743
	.quad	0x3fd85e22a38cb104              # double 0.38074556323660169
	.quad	0x3fc24ea63ff00b1c              # double 0.14302518960911292
	.quad	0x3fe4ed321bbcb8b6              # double 0.65395455758495902
	.quad	0x3fc17308dd533f24              # double 0.13632307822126066
	.quad	0x3fd0be09cdd6bf64              # double 0.261599017157087
	.quad	0x3fea7ad2d21a204e              # double 0.82749310527379705
	.quad	0x3feee0a4ca535190              # double 0.96492232815448808
	.quad	0x3fe76eff09bdcd5f              # double 0.73229934599514113
	.quad	0x3fed2f7577e8f126              # double 0.91204331798465854
	.quad	0x3fedb70ce4f77fea              # double 0.92859501571728953
	.quad	0x3fbebbc31f897288              # double 0.12005252380317633
	.quad	0x3fea538e3b667f69              # double 0.82269965745579754
	.quad	0x3fae9f85d5ea6be0              # double 0.059810812342412367
	.quad	0x3fe30edb8683bd9c              # double 0.59556366226563595
	.quad	0x3fdbfac038e11034              # double 0.43717961840252717
	.quad	0x3fd66664ba5a9e8a              # double 0.3499996013510801
	.quad	0x3fd9a9d42b0ac084              # double 0.40099052623100584
	.quad	0x3fbe2b9e79a29520              # double 0.11785307378393783
	.quad	0x3fb6c6767db38bc8              # double 0.088965802849585107
	.quad	0x3fe07b0c2e76382a              # double 0.51502045702523458
	.quad	0x3fe380fb4303b6c2              # double 0.60949481095095615
	.quad	0x3fe202069e34e7a6              # double 0.56274729633081644
	.quad	0x3fd94a1591ccd902              # double 0.395146744139666
	.quad	0x3fe9e81ddd83706f              # double 0.80958455337851187
	.quad	0x3fde94cf49733728              # double 0.47783262417657335
	.quad	0x3fd522801c0a91a4              # double 0.33023073900610656
	.quad	0x3fc82b51d52ab248              # double 0.18882201107534713
	.quad	0x3fe675798cf44146              # double 0.70184018640615231
	.quad	0x3fe95885506b21b2              # double 0.7920557566331381
	.quad	0x3fe1c94d3de62122              # double 0.55582296456944769
	.quad	0x3fe25abec6f1a950              # double 0.57357729774711608
	.quad	0x3fe5bc8ab2f1a1d7              # double 0.67926535558677414
	.quad	0x3fe2468e2ddb6913              # double 0.57111271816691767
	.quad	0x3fd54cf68506a0ac              # double 0.33282244673547257
	.quad	0x3fc2b8fe39c0dedc              # double 0.14627054042806875
	.quad	0x3fd1ab4b9d363688              # double 0.27608003952705262
	.quad	0x3fe49effbc162c07              # double 0.64440905318895225
	.quad	0x3fd04c37dbe295ec              # double 0.25465198968080816
	.quad	0x3fc6e770914172e8              # double 0.17893797962724212
	.quad	0x3fd1bbcdbe212ca2              # double 0.27708762709944257
	.quad	0x3fd0e8ac6b6183f2              # double 0.26420126425187995
	.quad	0x3fdfe1d0059cba3e              # double 0.49815750644748735
	.quad	0x3fee843759deb52b              # double 0.95363967468953115
	.quad	0x3fe8f10a3bad773f              # double 0.77942382484227568
	.quad	0x3fe07045bb54433b              # double 0.51370512569165017
	.quad	0x3feecafe622dd0ec              # double 0.96227950263576422
	.quad	0x3fddd7bc39a64df6              # double 0.46629243497702022
	.quad	0x3fe991bebc3c91ea              # double 0.79904114499055123
	.quad	0x3fe980e818a490f9              # double 0.79698567212156413
	.quad	0x3fdf9d12cf0867be              # double 0.49396200388002487
	.quad	0x3fa22574673eab90              # double 0.035442006686330463
	.quad	0x3fe743a45b1827e8              # double 0.72700708190791108
	.quad	0x3fea7236a357af14              # double 0.82644206908068662
	.quad	0x3fb34759aad43528              # double 0.075307468611033657
	.quad	0x3faaa182624cc0f0              # double 0.052013468265046714
	.quad	0x3fe0f46c0cd6242c              # double 0.52983667857291072
	.quad	0x3fe161e79d20c78d              # double 0.54320126236983557
	.quad	0x3fef0681781506d0              # double 0.96954415753881484
	.quad	0x3fd97033f7e85aee              # double 0.39747332772951338
	.quad	0x3fd981e06974f4ba              # double 0.3985520391323224
	.quad	0x3fef2ae5f50fe1b9              # double 0.97398660529784486
	.quad	0x3fd07e53222731ba              # double 0.2577102502371208
	.quad	0x3fe026c5b9cdce78              # double 0.50473295488195813
	.quad	0x3fe5a19d60903a4c              # double 0.67597836360966701
	.quad	0x3fb61e4327d5bcd0              # double 0.086399266457863221
	.quad	0x3fbf708f233226a0              # double 0.12281126603388737
	.quad	0x3fe6e171755ecc8f              # double 0.71501992153061333
	.quad	0x3fea083b5d9601a5              # double 0.81350487020977325
	.quad	0x3fe1a273627289f8              # double 0.55108041027079846
	.quad	0x3fc3e8a532fac32c              # double 0.15553727139697437
	.quad	0x3fee7353a1616c61              # double 0.95157796401634809
	.quad	0x3fd6f404f99f0678              # double 0.35864376427716804
	.quad	0x3fceaf8615af89b0              # double 0.23973156031486331
	.quad	0x3fe06c0e9d628741              # double 0.51319056262239127
	.quad	0x3fcc3a172789b8e4              # double 0.22052277975621515
	.quad	0x3feaebfbef464406              # double 0.84130665524765003
	.quad	0x3fe8dc1036c09f39              # double 0.77686320012887855
	.quad	0x3fc31e09f93d4d9c              # double 0.1493542162885263
	.quad	0x3fb8e14fa28df9a0              # double 0.097187974153689626
	.quad	0x3feca9cbd3218e7d              # double 0.89572707401789808
	.quad	0x3fdb39bf59b4d7d8              # double 0.42539962540047105
	.quad	0x3fe687edecceb054              # double 0.70409294368210817
	.quad	0x3fb02bbd37f2bda0              # double 0.063167406234006851
	.quad	0x3feb59d1cba691c2              # double 0.8547142961074814
	.quad	0x3fd56f1af01839f0              # double 0.33490632483235938
	.quad	0x3fee99e27dda2140              # double 0.95628475742800134
	.quad	0x3fe190cef9057431              # double 0.54892681729291415
	.quad	0x3fe8b5b8df0c91ca              # double 0.77218288006093272
	.quad	0x3fe7e11940632f1a              # double 0.74622786117240314
	.quad	0x3fdfa3a60f738032              # double 0.49436332234290881
	.quad	0x3fd2145ee88b9a2e              # double 0.28249333104614294
	.quad	0x3fdf06a79a4e17f4              # double 0.48478117054798919
	.quad	0x3fea233383aca43d              # double 0.81679702489521555
	.quad	0x3fc523439b26211c              # double 0.16513867450363129
	.quad	0x3fd9266d24d7063a              # double 0.39297035787248868
	.quad	0x3fc421b566cb8d14              # double 0.15727870482724227
	.quad	0x3feed283516b26c2              # double 0.96319738294661073
	.quad	0x3fd27213d8544d64              # double 0.28821273923786905
	.quad	0x3fee804776002f48              # double 0.95315907523170384
	.quad	0x3fed16976a94227e              # double 0.90900774780409654
	.quad	0x3fee72984516e434              # double 0.95148862356211916
	.quad	0x3fdfcf29c60ba624              # double 0.49701923694974171
	.quad	0x3fee9e0c44b293aa              # double 0.95679295938008591
	.quad	0x3fe79c75cdb0efdc              # double 0.73784914182715111
	.quad	0x3fc32f96f9d6693c              # double 0.14988982390497962
	.quad	0x3fef2ffdd48a941b              # double 0.97460834037758858
	.quad	0x3fd7b824518b7000              # double 0.37061412776324687
	.quad	0x3fb26d91a377a1a0              # double 0.071984388741503924
	.quad	0x3fdc7cfabf581e86              # double 0.44512814222296304
	.quad	0x3fe652695b6df74a              # double 0.69756000382742767
	.quad	0x3febdd485d00ea54              # double 0.8707620445705495
	.quad	0x3fe75abd7880282a              # double 0.7298266747977824
	.quad	0x3fee77b869193c7b              # double 0.95211430098596794
	.quad	0x3fbd2caccbb987b0              # double 0.11396293615101061
	.quad	0x3feefbc2379b3973              # double 0.96823225842108084
	.quad	0x3fd42e57f9873446              # double 0.3153285919950729
	.quad	0x3fe4b5918e7f6ea8              # double 0.6471641333732423
	.quad	0x3f952c561d9a5260              # double 0.020676942402661047
	.quad	0x3fbeed4592c20390              # double 0.1208079798980306
	.quad	0x3fddfb0221eaea86              # double 0.46844533264417298
	.quad	0x3fd266040146cd68              # double 0.2874765408007165
	.quad	0x3fdae5e31e9e3ec6              # double 0.42028120031407601
	.quad	0x3f94ec455d3826a0              # double 0.020432552160889572
	.quad	0x3fe3d5a832af8479              # double 0.61983117961439327
	.quad	0x3fcb9235f768a6ec              # double 0.21539949970729511
	.quad	0x3fe5e2f72f65f1e3              # double 0.68395575768914474
	.quad	0x3fec8aa7cbf52cc0              # double 0.8919257148312667
	.quad	0x3fc4d9cb65c50530              # double 0.1628965613290716
	.quad	0x3fd5c9e92ba26db8              # double 0.34044865857296314
	.quad	0x3fcc71f18ef6bfb8              # double 0.22222728233964317
	.quad	0x3fd982a931096d7e              # double 0.39859990872147211
	.quad	0x3fe8c89c02d4a078              # double 0.7744884543690338
	.quad	0x3fc02e5976d46670              # double 0.12641447355490554
	.quad	0x3fe8be5192edabb4              # double 0.77323225686028829
	.quad	0x3fc0d9b2f89ebdd4              # double 0.13164364947941343
	.quad	0x3fef405bbc06ed57              # double 0.97660624240908588
	.quad	0x3fe574ed881ca092              # double 0.67052342018452493
	.quad	0x3fde7dd96429fe7e              # double 0.47643122464794618
	.quad	0x3fdc383d79634144              # double 0.44093262533444411
	.quad	0x3fb35bf54b5b9160              # double 0.075621920488236238
	.quad	0x3fdeef8fed2ccd88              # double 0.48337171708700355
	.quad	0x3fd6bf03ee102008              # double 0.35540865181292292
	.quad	0x3feed70d990b5622              # double 0.96375160113774805
	.quad	0x3fee21f772d0c56d              # double 0.94164631295113355
	.quad	0x3fc277cf9bf6d638              # double 0.14428134074630505
	.quad	0x3feb33cb3da4e628              # double 0.85007249870176782
	.quad	0x3fe7c90d01c72c38              # double 0.74329233500737413
	.quad	0x3f94c6c4327f0d40              # double 0.020289483625459015
	.quad	0x3fedc7521431c3d1              # double 0.930581130449463
	.quad	0x3fe43f275c751469              # double 0.63270919855189078
	.quad	0x3fe18f1e87d43dd7              # double 0.54872061280360185
	.quad	0x3fdb9d826a6634a4              # double 0.43148861303854802
	.quad	0x3fe7d3bb319ab8c0              # double 0.74459609688144468
	.quad	0x3f98ea96f836df20              # double 0.024332388782311587
	.quad	0x3fd0f7d100e260a4              # double 0.26512551390033878
	.quad	0x3fb9b8ca4cdfec00              # double 0.10047592522452931
	.quad	0x3fedc6304a08bc6f              # double 0.93044294795789806
	.quad	0x3fc0585058d025a4              # double 0.12769512497497459
	.quad	0x3fc1483d661d6af0              # double 0.13501708494262443
	.quad	0x3fd9ac616d2088b8              # double 0.4011462751096917
	.quad	0x3fb540856a299c78              # double 0.083015764635648526
	.quad	0x3fd2e8ed7dafc9d2              # double 0.29546677850808323
	.quad	0x3fedf55f9307984b              # double 0.93620279995662636
	.quad	0x3fd11a02f0b18bae              # double 0.26721261506298333
	.quad	0x3fd41fd974b3e964              # double 0.31444393536334858
	.quad	0x3feacff4a092b18e              # double 0.83788520204466166
	.quad	0x3fd269567c16d7dc              # double 0.28767931097115507
	.quad	0x3fec8405c54a2793              # double 0.89111603291643104
	.quad	0x3fec96d22d598efe              # double 0.89341076714887868
	.quad	0x3fd659e1a3f2debc              # double 0.34923592577568363
	.quad	0x3fea0635fb7e086c              # double 0.81325816268532724
	.quad	0x3fe243de1cc9fdcd              # double 0.5707846224103662
	.quad	0x3fd4efff1c62a1e0              # double 0.32714822551727529
	.quad	0x3fe13287d1caca31              # double 0.53741827940968367
	.quad	0x3fee96d062a737ee              # double 0.95590991275980541
	.quad	0x3fe2e619de812d94              # double 0.59058850725107215
	.quad	0x3fec50b459a5ec58              # double 0.88485162267114514
	.quad	0x3fe7b97b4221dd7d              # double 0.74139178196394051
	.quad	0x3fd80635772f10c8              # double 0.37537895812080224
	.quad	0x3fe4fdacdce69b48              # double 0.65596621651352738
	.quad	0x3fdc7c25f5ecec16              # double 0.44507740989837552
	.quad	0x3fbfb0e42c039330              # double 0.12379289698180851
	.quad	0x3fe6430d58979bf1              # double 0.69568507483643149
	.quad	0x3fa557a4ab3f8a20              # double 0.041684289841004807
	.quad	0x3fe6d723965f858f              # double 0.71376208657982143
	.quad	0x3fc4c24cade545dc              # double 0.16217955103870352
	.quad	0x3fe3587298fdcb8b              # double 0.60454683190470015
	.quad	0x3fe13c43416bb9a5              # double 0.53860628869533811
	.quad	0x3fd95bb5751eba42              # double 0.39622246205809486
	.quad	0x3fde36a0572c815c              # double 0.47208412659712962
	.quad	0x3fe6170136131d53              # double 0.6903081947465729
	.quad	0x3fed576938ab3ec2              # double 0.91692029064321212
	.quad	0x3fd02a5903c0256e              # double 0.2525846993090316
	.quad	0x3fe4f49045dff6a9              # double 0.6548539509528456
	.quad	0x3fe1aa704654ef5d              # double 0.55205548988986275
	.quad	0x3fd72299a56fe7e2              # double 0.36148682743043825
	.quad	0x3fca8194479caf84              # double 0.20707944389993937
	.quad	0x3fd4e61e5b036a1c              # double 0.32654532325764918
	.quad	0x3fe189c553aae77a              # double 0.54806772557570516
	.quad	0x3fd789b51fb7d2de              # double 0.36777999970881392
	.quad	0x3fb00bd967106378              # double 0.062680804884065355
	.quad	0x3fe37a736fc808f7              # double 0.60869762260725124
	.quad	0x3fe7b0a75f67d972              # double 0.7403141845123129
	.quad	0x3fd9a0dee677c482              # double 0.40044376856446473
	.quad	0x3fd066f59365804e              # double 0.25628413576305753
	.quad	0x3f8bbf23b35b35c0              # double 0.013548163329143104
	.quad	0x3fd29af82a4c11b4              # double 0.29070858126240329
	.quad	0x3fd22ba3429b0c16              # double 0.28391343597849195
	.quad	0x3fd9eeb08011561a              # double 0.40519344812978064
	.quad	0x3fe0520f6ba5f0da              # double 0.51001711869278243
	.quad	0x3fe423c1424c801d              # double 0.62936461400022703
	.quad	0x3fe50443eb714e61              # double 0.65677066788562055
	.quad	0x3f8722730e000d00              # double 0.011296175827743671
	.quad	0x3fc5e178db7ed2bc              # double 0.17094336240338304
	.quad	0x3fe338bfd4008262              # double 0.60067740828169414
	.quad	0x3f85d402b6a14800              # double 0.010658284376550142
	.quad	0x3fec8b8ca8d8630e              # double 0.89203484513845566
	.quad	0x3fcd28b997383b08              # double 0.22780532726070413
	.quad	0x3fecd20f60fcc202              # double 0.90064209883536273
	.quad	0x3fe17b4acc42a013              # double 0.54630031485158026
	.quad	0x3fd3906d3b581548              # double 0.30569010539359853
	.quad	0x3fdcc7fa0e97d42e              # double 0.44970561432939149
	.quad	0x3fe3d684144546ad              # double 0.6199360271368356
	.quad	0x3fb10d0d215ce788              # double 0.066605396886101897
	.quad	0x3fc8891bf537b5a4              # double 0.19168424104229331
	.quad	0x3fee1ac04fd12cc8              # double 0.94076552953028969
	.quad	0x3fc2413fa3e19168              # double 0.14261622907646232
	.quad	0x3fc42e3518f2bbd0              # double 0.15766013830349701
	.quad	0x3fe133a607035bc6              # double 0.53755475396871399
	.quad	0x3feabb40a627831d              # double 0.83535797550220858
	.quad	0x3fe7af46e2bfbf4e              # double 0.74014610564152306
	.quad	0x3fe48057fb3a0bd9              # double 0.6406669527790384
	.quad	0x3fdb2d53d224bda2              # double 0.42464156648471818
	.quad	0x3fc9abf527ebd3a8              # double 0.20056023072507156
	.quad	0x3f9075e97d4c5f60              # double 0.016074798843959015
	.quad	0x3fbb3de921462e58              # double 0.10641343176228568
	.quad	0x3fc99771fcc63d08              # double 0.19993424265383219
	.quad	0x3fd311f0f0f9dfac              # double 0.29797004254168757
	.quad	0x3fe802e94e9ec294              # double 0.75035539012431451
	.quad	0x3fd16ead98a58d52              # double 0.2723802557649907
	.quad	0x3fca468226bc6074              # double 0.20527674571417587
	.quad	0x3febeaebcb560b7a              # double 0.87242688860020157
	.quad	0x3fe52542bb3266fb              # double 0.66079842149630907
	.quad	0x3fe8ed6ce94be9db              # double 0.7789825970242491
	.quad	0x3fdddc0f25291f6e              # double 0.46655634526222556
	.quad	0x3fe912360a17d6cd              # double 0.78347303363144649
	.quad	0x3feab4919f424050              # double 0.83454209428055925
	.quad	0x3fe91a52c9dc4b52              # double 0.78446330476649906
	.quad	0x3feab626ab212569              # double 0.8347352354405021
	.quad	0x3fe9f57ef2b9d302              # double 0.81121776015660907
	.quad	0x3feb43fb8f580477              # double 0.85204866406287649
	.quad	0x3feea37416b2ac44              # double 0.95745281632606138
	.quad	0x3fe072a1ca31ef0e              # double 0.51399316302510711
	.quad	0x3fd2fb7a96d9d432              # double 0.29659905177624346
	.quad	0x3faf037a0941cd60              # double 0.060573400144586342
	.quad	0x3fe1827519410cfc              # double 0.54717497761194478
	.quad	0x3fe0c06f3b21eb92              # double 0.52349053906742626
	.quad	0x3fe85f6f42a93ddd              # double 0.76164973277803549
	.quad	0x3fdf854296515abc              # double 0.49250855140182259
	.quad	0x3fef39e67543c8ee              # double 0.9758178987815691
	.quad	0x3fe63ed30939bcec              # double 0.69516898919928627
	.quad	0x3fc82fea9a645ea0              # double 0.18896229304003942
	.quad	0x3fe1a2fcfccda84a              # double 0.55114602447179917
	.quad	0x3fb3fc3f43e691f8              # double 0.078067735745726341
	.quad	0x3fd0501dc09552b6              # double 0.25488990599596251
	.quad	0x3fcba5691a54f998              # double 0.21598542962778988
	.quad	0x3fc2e78014bb9080              # double 0.147689828990341
	.quad	0x3fd4cd83d8503da8              # double 0.32504364132270291
	.quad	0x3fe1ac175c81b9fa              # double 0.55225723331187671
	.quad	0x3fecdb8dd6f2cdca              # double 0.9018010328494992
	.quad	0x3fdf8b7f6bf2d2ba              # double 0.49288926641319686
	.quad	0x3faab951d8e255e0              # double 0.052195127225029614
	.quad	0x3feac9aec1627a27              # double 0.83711946268505677
	.quad	0x3fe0a6df8d1d4c33              # double 0.52037026940741382
	.quad	0x3f855cc10252a240              # double 0.010430820353875991
	.quad	0x3fe4d1614199ad53              # double 0.65055907070692809
	.quad	0x3fe855f9c7c2e553              # double 0.76049508109933084
	.quad	0x3fe3cf2c48612963              # double 0.61903967033985585
	.quad	0x3fe3e3bc351e756d              # double 0.62154970526505127
	.quad	0x3fcf67bbfa3f759c              # double 0.24535321921477482
	.quad	0x3fd829ab39a6f8f2              # double 0.37754326467610533
	.quad	0x3fe70bb011a54be8              # double 0.72017672964500168
	.quad	0x3fe928c1248d31f6              # double 0.78622491015408857
	.quad	0x3fed17782f142a6d              # double 0.90911492533753135
	.quad	0x3fe62198fb8ef605              # double 0.69160126812465761
	.quad	0x3fdea413c86a211a              # double 0.47876448222861401
	.quad	0x3fdb2116d38adbaa              # double 0.42389460237921617
	.quad	0x3fe3d0792e32d975              # double 0.61919840834779782
	.quad	0x3feb7b02b808f4dd              # double 0.85876594490369096
	.quad	0x3fea443ea63abcd5              # double 0.82083065478027584
	.quad	0x3fde21a76363d4b4              # double 0.47080406862307744
	.quad	0x3fa4cda49c077840              # double 0.040631431623964875
	.quad	0x3fb29fae1c48f368              # double 0.072749025254734812
	.quad	0x3fec39b10fd08fdb              # double 0.88204243744666699
	.quad	0x3fd63453967c49a2              # double 0.34694375701760738
	.quad	0x3fafcce2177feef0              # double 0.062110009544964373
	.quad	0x3faddaab8e4011e0              # double 0.058308945765052078
	.quad	0x3fe7279d6a5c65f2              # double 0.72358580373400927
	.quad	0x3fd45c6fe7c27176              # double 0.31814191468017528
	.quad	0x3fe61f66b1161fc7              # double 0.69133314692680237
	.quad	0x3feda1668b11bb9c              # double 0.92595221673933592
	.quad	0x3fd5c3c4684ad03c              # double 0.34007368263997129
	.quad	0x3fe0930bc67f4986              # double 0.51794995087611606
	.quad	0x3fec035fb07b221d              # double 0.87541183918898791
	.quad	0x3fe00e485aba12f2              # double 0.50174348564232063
	.quad	0x3fe9fb555823804c              # double 0.81193034376702533
	.quad	0x3fc6335b0dc1307c              # double 0.17344225093473031
	.quad	0x3fd83dd708bb0480              # double 0.37877441265670342
	.quad	0x3fd15629b8202718              # double 0.27088397007956777
	.quad	0x3fe4027a83762148              # double 0.62530255962432424
	.quad	0x3f9d1d5fe3b06e40              # double 0.028432367584271256
	.quad	0x3fe507391529965d              # double 0.65713171132365356
	.quad	0x3fcda59ecc8bef7c              # double 0.2316168307078178
	.quad	0x3fd35347d012f586              # double 0.30195803947193445
	.quad	0x3fe81b074b1b90d0              # double 0.75329937619656029
	.quad	0x3fd46811ec7a7dcc              # double 0.31885192960359343
	.quad	0x3fef56eda59c5b98              # double 0.9793613657555964
	.quad	0x3fdf9d977e6118c6              # double 0.49399363843657473
	.quad	0x3fd0a4908c6a6064              # double 0.26004422867254662
	.quad	0x3fe02f33cdba06b3              # double 0.50576200657834247
	.quad	0x3fc9a7558d8f6434              # double 0.2004191342555558
	.quad	0x3fdf5180c8afe62c              # double 0.48934955213880715
	.quad	0x3fe64572dd420cc3              # double 0.69597762312368905
	.quad	0x3fba10dd106b3158              # double 0.1018198170742769
	.quad	0x3fe7107da9548694              # double 0.72076304504681099
	.quad	0x3fe5564dc8f465f0              # double 0.66678513764344238
	.quad	0x3fddef15b28a3964              # double 0.46771757541218606
	.quad	0x3fc0e0c549c583f8              # double 0.13185945608259408
	.quad	0x3fd1db1b7c75f734              # double 0.27899825243354148
	.quad	0x3fba181f7bda64d0              # double 0.10193058751828521
	.quad	0x3fe8688f88c84b13              # double 0.7627637549906886
	.quad	0x3fd2bdb60ab38642              # double 0.29282904667897836
	.quad	0x3fc04c4dd22719d0              # double 0.12732861291278974
	.quad	0x3fecdf2330cc5077              # double 0.90223845988158657
	.quad	0x3fe8925900211c83              # double 0.76786470437299703
	.quad	0x3fdc89c9484167ee              # double 0.44590980583382034
	.quad	0x3fe3b79f7fa01e71              # double 0.61616492201660666
	.quad	0x3fcf3a79883fa054              # double 0.24397200730095625
	.quad	0x3fee94fc53925fcd              # double 0.95568672487842721
	.quad	0x3fe38c58c8568dda              # double 0.61088217857871574
	.quad	0x3fe7c560e7939984              # double 0.74284405927464592
	.quad	0x3fd054506f6b80aa              # double 0.25514613037922607
	.quad	0x3fcb9cd8b1516160              # double 0.21572407396412085
	.quad	0x3fe9f55ce9876e0e              # double 0.81120153056275668
	.quad	0x3fdf9664b46fbeb6              # double 0.4935542833399994
	.quad	0x3fe671f641be98b1              # double 0.70141136971212437
	.quad	0x3fe092cb8677e37e              # double 0.5179193140348699
	.quad	0x3fe1b0f07f3e8e5d              # double 0.55284905292905828
	.quad	0x3fd44ffb27a8696a              # double 0.31738165734136337
	.quad	0x3f825fc0a33ba240              # double 0.0089716958822957382
	.quad	0x3feffbe491989f7e              # double 0.99949863850359555
	.quad	0x3fd972a60e195274              # double 0.3976225984272681
	.quad	0x3fe437b9634e4d12              # double 0.63180226703335252
	.quad	0x3fe1e7f59d2979e7              # double 0.55956536002832713
	.quad	0x3fe3f8e48f650259              # double 0.6241324234652651
	.quad	0x3fdcf2e619bf9d64              # double 0.45232536806584833
	.quad	0x3fe693a821516152              # double 0.70552450663948663
	.quad	0x3fe7c5433999a00d              # double 0.74282990694064355
	.quad	0x3fe3aae8437132dd              # double 0.61461270496655696
	.quad	0x3fa5c650fba627a0              # double 0.042528658598782743
	.quad	0x3fcb4665de18c9ac              # double 0.21308587402888912
	.quad	0x3fe36203895b19d5              # double 0.60571457698170639
	.quad	0x3fe0c2b48f8de6f9              # double 0.52376773870420756
	.quad	0x3fea56357d365d86              # double 0.82302355247058823
	.quad	0x3fdf953de37d6424              # double 0.49348399368097007
	.quad	0x3fea153c1b344502              # double 0.81509213746372233
	.quad	0x3fdcd38a3ea07ee0              # double 0.45041137805854525
	.quad	0x3fe13f609b2370ac              # double 0.53898649502254647
	.quad	0x3fe9b40a40ebacfd              # double 0.80322754554563824
	.quad	0x3fd70619d2c14fec              # double 0.35974736768298388
	.quad	0x3fef694b88cd1e9c              # double 0.98160340041154681
	.quad	0x3fd8358dc74216dc              # double 0.37826866587452712
	.quad	0x3fdc3913c9c63a0a              # double 0.44098372177623502
	.quad	0x3feb12d9fa1a4fdf              # double 0.84605120514106236
	.quad	0x3f9a00930095ace0              # double 0.025392815504727717
	.quad	0x3fe1af6f9612972e              # double 0.55266551314409695
	.quad	0x3fb61b823dd89580              # double 0.086357250308159549
	.quad	0x3fe10ff2508fb956              # double 0.5331965993371266
	.quad	0x3fd2dc0aa673e03a              # double 0.29468027358189242
	.quad	0x3fd3b7a4bf0de6ee              # double 0.30808371217390984
	.quad	0x3fe1fc10b9d7df18              # double 0.56201969430455545
	.quad	0x3fc8e7650ffa35ac              # double 0.19456160812516765
	.quad	0x3fc60189103efc48              # double 0.17192185681594396
	.quad	0x3feb884f4d754c34              # double 0.8603893769126274
	.quad	0x3fe9fdf085cd8904              # double 0.81224847920773912
	.quad	0x3fe50dec4d87823a              # double 0.65794959204146797
	.quad	0x3fe52eec323b07cc              # double 0.6619778615060965
	.quad	0x3fe3d77f04119053              # double 0.62005568308496561
	.quad	0x3fdd5ca9e9e458ee              # double 0.45878074494375098
	.quad	0x3fef8617b8f6a043              # double 0.98511873365078661
	.quad	0x3fd07d9b050d86d6              # double 0.25766635411683347
	.quad	0x3fab23b71af0e6b0              # double 0.053006860769938213
	.quad	0x3fed71dffce9172b              # double 0.9201507510813135
	.quad	0x3fd005c67e1a0982              # double 0.25035250010127907
	.quad	0x3fd9523fad719188              # double 0.39564506471494854
	.quad	0x3fe2dd7b23a2ec5c              # double 0.58953625641096208
	.quad	0x3fd2ee8f50abfbc0              # double 0.29581053617578945
	.quad	0x3fec1dc499e6eb09              # double 0.878633785810366
	.quad	0x3fc5cbe0a09d5194              # double 0.17028434603220133
	.quad	0x3fe6f1c68baf5eb6              # double 0.71701361925348439
	.quad	0x3fc4d9d305548fc0              # double 0.16289747009534317
	.quad	0x3fbee53eef68a688              # double 0.12068551392499149
	.quad	0x3fce14fe9bb43024              # double 0.23501570322730558
	.quad	0x3fe062559354f55e              # double 0.5120036962104384
	.quad	0x3fd6002f6a1a41dc              # double 0.34376130448893405
	.quad	0x3fbae7b4b3b92660              # double 0.10509805095457514
	.quad	0x3fd82d50caec76bc              # double 0.37776584450498851
	.quad	0x3fecdaebe2cd536a              # double 0.90172380730892354
	.quad	0x3fe7faba63d65b54              # double 0.74935645579794618
	.quad	0x3fdb02ee34fe7c5c              # double 0.42205386328891392
	.quad	0x3fc07e5ca1cc12f8              # double 0.12885625744106455
	.quad	0x3fc70df6e923a310              # double 0.18011366256475769
	.quad	0x3fe5696eb983e667              # double 0.66912018044895383
	.quad	0x3fdc5e2cc67f7532              # double 0.443247979970539
	.quad	0x3f968c4b1867dcc0              # double 0.022019551624876454
	.quad	0x3fbe632020a47a00              # double 0.11870003506599147
	.quad	0x3fe35ea2d70c9090              # double 0.6053022575547562
	.quad	0x3f9a10e82d6efd40              # double 0.025455119870227749
	.quad	0x3fed173765205f61              # double 0.90908403159390272
	.quad	0x3fe8704505354dc6              # double 0.76370478646497797
	.quad	0x3fe6861917acbb57              # double 0.70386938690158274
	.quad	0x3f91d29aa67475e0              # double 0.017404953393556855
	.quad	0x3fd1fe7c7764fd4a              # double 0.28115760478609231
	.quad	0x3fbd256b15aa0360              # double 0.11385220793637307
	.quad	0x3fe3b0030795fc7a              # double 0.61523581964128415
	.quad	0x3fe4dd151eab93bd              # double 0.65198760977056447
	.quad	0x3fe412ca51dbe4d3              # double 0.62729373920515241
	.quad	0x3fc7199ac00ece84              # double 0.18046888711761622
	.quad	0x3fbd4d60f4ae46a8              # double 0.11446195577289109
	.quad	0x3fc3168b0f3c4e30              # double 0.14912546390461179
	.quad	0x3fef994916057f95              # double 0.98746160794324799
	.quad	0x3fecbe5f11a06954              # double 0.89823869173714365
	.quad	0x3fec0a35b480f9e4              # double 0.87624631170893652
	.quad	0x3fadaa9fd3743360              # double 0.057942385256047002
	.quad	0x3fe94dbfe4a902b5              # double 0.7907409158725246
	.quad	0x3fa2e0f8ddf82740              # double 0.036872651191585337
	.quad	0x3fbb5247b47a98f8              # double 0.10672424465392172
	.quad	0x3f986de03a7a9480              # double 0.023856643265976363
	.quad	0x3fd4909df96fa566              # double 0.32132672652240613
	.quad	0x3fe2862b82ea0b80              # double 0.57887816971957307
	.quad	0x3fca27f66510e2c0              # double 0.2043445580946095
	.quad	0x3fd9d0350f72ecea              # double 0.40333296307262734
	.quad	0x3fb9a2a0f18ec6d0              # double 0.10013776681332875
	.quad	0x3feb30324ea38b4e              # double 0.84963336333417216
	.quad	0x3fef5d052edd2851              # double 0.98010501053910037
	.quad	0x3fc9a6e46266db8c              # double 0.20040564350867063
	.quad	0x3fd35d8c7d600110              # double 0.30258476489690711
	.quad	0x3fe2ce1be5a1def0              # double 0.5876597867017761
	.quad	0x3fc7cbb7902ed2d8              # double 0.18590445079975981
	.quad	0x3fce5debd11dffd4              # double 0.23724124632644694
	.quad	0x3fe2697f7835558c              # double 0.57537816503706685
	.quad	0x3fe973c339b7f605              # double 0.79538117669261565
	.quad	0x3fe074fd49eb411f              # double 0.51428093373582218
	.quad	0x3fe660ff751f96e7              # double 0.69934056163466785
	.quad	0x3fed04aae2fb5473              # double 0.90681976635336381
	.quad	0x3fbaba7b11a6b0a0              # double 0.10440797024665693
	.quad	0x3fe0fff025321a47              # double 0.531242439887884
	.quad	0x3febcc4e29be7c97              # double 0.86868961480276397
	.quad	0x3fe5586dfccdf96e              # double 0.66704463363548228
	.quad	0x3fe87d72d082daf7              # double 0.76531353688082404
	.quad	0x3fdf7b381f0c4e08              # double 0.49189570457494414
	.quad	0x3fee28ca7eddbf49              # double 0.94247936991266912
	.quad	0x3faed926692a7c50              # double 0.060250473344460986
	.quad	0x3fd8a26e1ffd4ebc              # double 0.38491395114872851
	.quad	0x3fd41017bb41d626              # double 0.31348222052415264
	.quad	0x3fd7f9d8571b8dc6              # double 0.37462433344464008
	.quad	0x3fd080bf096879f4              # double 0.25785804671059442
	.quad	0x3fef2b8a80812d4d              # double 0.97406506632379719
	.quad	0x3f1af18101802000              # double 1.0278081788339666E-4
	.quad	0x3fc83d84470cd510              # double 0.18937734097713887
	.quad	0x3fe2a848d4d33c80              # double 0.58304254119310883
	.quad	0x3f7fd50f85067200              # double 0.0077715498195201071
	.quad	0x3fdd191ea7c2e39e              # double 0.45465818770349553
	.quad	0x3fd15e14ea0b50e6              # double 0.27136729102973189
	.quad	0x3fd2f0e141921974              # double 0.29595214274777182
	.quad	0x3fe1115dc86b292c              # double 0.53336991447694038
	.quad	0x3fbc054d978acb10              # double 0.10945591878661909
	.quad	0x3fed2d1599e780dc              # double 0.91175346431193871
	.quad	0x3fdcef54ae0fa514              # double 0.4521075916114381
	.quad	0x3fdd9a609feb6cfc              # double 0.46254745118285689
	.quad	0x3fecf280b8bf6354              # double 0.90460239490048843
	.quad	0x3fdd50b85adf1e5e              # double 0.45805176614928722
	.quad	0x3fde57fd13894758              # double 0.47412039668880857
	.quad	0x3fc87684c9e13954              # double 0.19111690385256941
	.quad	0x3fe7b5a672f988c9              # double 0.74092409568790984
	.quad	0x3fd3b7a9ee220086              # double 0.30808494811208964
	.quad	0x3feae49cea5bacd0              # double 0.84040685437266838
	.quad	0x3fe9355fd1eac73c              # double 0.78776541709360214
	.quad	0x3fb4d63201762558              # double 0.08139336143189746
	.quad	0x3fbacff336526938              # double 0.10473556591242505
	.quad	0x3fa75b7a2f74de30              # double 0.045619791310340552
	.quad	0x3fe45a45c5ad336e              # double 0.6360195980902128
	.quad	0x3fe2a5ea48847ea6              # double 0.58275331653199625
	.quad	0x3feb26056ec1f924              # double 0.84839126236309825
	.quad	0x3fdc9a8a6a246e9a              # double 0.4469324146791479
	.quad	0x3fa4580da616f8e0              # double 0.039734293484330996
	.quad	0x3fcae8db7d062884              # double 0.21023124317827435
	.quad	0x3fe6a5e2d449fd4e              # double 0.7077497621793698
	.quad	0x3fe0e528451f4aa4              # double 0.52797330379901952
	.quad	0x3fe05ce42d295ce9              # double 0.51133927174205696
	.quad	0x3fe019cc898bcc96              # double 0.50314928879233167
	.quad	0x3fea68f837b7209e              # double 0.82531367189314486
	.quad	0x3fe9e8bddf10ee9b              # double 0.80966085021596557
	.quad	0x3fe6251c6918c4bb              # double 0.69203014876088476
	.quad	0x3fb57907cd621cc8              # double 0.083878028528590609
	.quad	0x3fce169a6a150b00              # double 0.23506479434771421
	.quad	0x3fb3afcc00fcefb0              # double 0.076901197663515885
	.quad	0x3fdde5c7ad8d37e4              # double 0.46714965771104588
	.quad	0x3fe416b229bf0910              # double 0.62777050164757675
	.quad	0x3fed7efe5a5fd6f9              # double 0.92175214434857289
	.quad	0x3fe7cbd5ad639b09              # double 0.74363216271453425
	.quad	0x3fcde012560b2b54              # double 0.23340062333439937
	.quad	0x3fe5eebd7e4ea299              # double 0.68539309186333519
	.quad	0x3fd0a749b5d4bde6              # double 0.26021044499336055
	.quad	0x3fdb5035aa459332              # double 0.42677060726264238
	.quad	0x3fe0357a643d607b              # double 0.50652808740689126
	.quad	0x3fed3fbf6968b512              # double 0.91403170192430339
	.quad	0x3fde15ef7396eb36              # double 0.47008882797279072
	.quad	0x3fe6cc00ae8a3521              # double 0.71240266885584813
	.quad	0x3fe331e5b9e68940              # double 0.59984098728845225
	.quad	0x3fe6a1db21d9ff79              # double 0.70725781070358018
	.quad	0x3fd2a13d9e8889c0              # double 0.29109135133526465
	.quad	0x3fe8cd71be9054d5              # double 0.77507865161410427
	.quad	0x3fe7d8df8e11fd5b              # double 0.74522378681278256
	.quad	0x3fe937468197088a              # double 0.78799748716871076
	.quad	0x3fe48accfceadaa2              # double 0.64194344900063904
	.quad	0x3fdcfefc5f67266e              # double 0.45306310002033612
	.quad	0x3fe7d84984f3689c              # double 0.7451522442527394
	.quad	0x3fd118c4f7f3877c              # double 0.26713680471413404
	.quad	0x3fe0db5dd7402b60              # double 0.52677814522881405
	.quad	0x3fdc21cf8d027fee              # double 0.43956364412770099
	.quad	0x3fc8318048667ffc              # double 0.18901065383124649
	.quad	0x3feed3206e0458ae              # double 0.96327229964915317
	.quad	0x3fb09e4e03acf488              # double 0.06491553868996125
	.quad	0x3fc1b3407196aad0              # double 0.13828282877269382
	.quad	0x3fc97b4362487994              # double 0.19907419489841216
	.quad	0x3fe2fba3a1df11fa              # double 0.59321767440320561
	.quad	0x3fd64e070cc0e9f6              # double 0.34851242299524132
	.quad	0x3fbb2dc1702909a8              # double 0.10616692531860983
	.quad	0x3fe94c9fa15a5c0e              # double 0.79060346140147586
	.quad	0x3fe3539e62ba2325              # double 0.6039573601020477
	.quad	0x3fe5e61aad8be648              # double 0.68433889289662719
	.quad	0x3fcb3d7801522b5c              # double 0.2128133779954976
	.quad	0x3fe0dac6abb03c2e              # double 0.52670606167692369
	.quad	0x3f9ee52d30cc8520              # double 0.030171114066552041
	.quad	0x3fe7a1b66c5d7172              # double 0.73849030652085745
	.quad	0x3fd496cd20c43988              # double 0.32170417976239962
	.quad	0x3fbad1714d0b9988              # double 0.10475834017743157
	.quad	0x3fc9fc19ec851644              # double 0.20300602005788637
	.quad	0x3fed980bfcbe4b39              # double 0.92481040347988774
	.quad	0x3fe2db090b2c9d65              # double 0.58923771078563603
	.quad	0x3fd9d41ded22bdb8              # double 0.40357158811363147
	.quad	0x3fe80765a5eaad88              # double 0.75090296178443428
	.quad	0x3fe9a141367cb6f1              # double 0.80093441621803951
	.quad	0x3fd2c465715e95ca              # double 0.29323707648503883
	.quad	0x3fe0b4915bb71026              # double 0.52204196847060724
	.quad	0x3fd71fba6861745c              # double 0.36131153291154816
	.quad	0x3fcf148b3d6e2ee0              # double 0.24281445025950799
	.quad	0x3fd401ce2bc0b202              # double 0.3126101901314372
	.quad	0x3fbb8057c3440b00              # double 0.10742710606795569
	.quad	0x3fd3cdeffd62a150              # double 0.30944442505508096
	.quad	0x3fed5eab21e3510c              # double 0.91780621165028852
	.quad	0x3fc6d947c3cac614              # double 0.17850586948547742
	.quad	0x3fe693d3aa2bdd19              # double 0.70554526554670638
	.quad	0x3fd5396a0a55e1c8              # double 0.33162928590129725
	.quad	0x3fe3d4bc04aecb4a              # double 0.61971856035811723
	.quad	0x3fe0cd44f4275181              # double 0.52505729376075305
	.quad	0x3fdaf0669c43611e              # double 0.4209229017265147
	.quad	0x3fa0dafe3adf3ad0              # double 0.032920784651300772
	.quad	0x3fd68bae95e29d0a              # double 0.35227551114299216
	.quad	0x3fdab026d6715d3e              # double 0.41700144712145348
	.quad	0x3fe259f785592f4c              # double 0.57348228497128551
	.quad	0x3fe3d45cae12f749              # double 0.61967309950680616
	.quad	0x3fe7625cdae3f8e8              # double 0.73075716735891394
	.quad	0x3fc37f73aed1df44              # double 0.15232702289699251
	.quad	0x3fe8c18a78d42caf              # double 0.77362559890152294
	.quad	0x3fe6c5190ee4e134              # double 0.71155980023380616
	.quad	0x3fd59638403f1350              # double 0.33729368471204157
	.quad	0x3fea1a0b72160cde              # double 0.81567928583572402
	.quad	0x3fec2ebbd89ef397              # double 0.88070480641146076
	.quad	0x3fc36a11c6e7b3b8              # double 0.15167448246157078
	.quad	0x3fd99f9e2cd5149e              # double 0.4003673017326238
	.quad	0x3fec12213b997346              # double 0.87721311226378229
	.quad	0x3fce23c8b8a09850              # double 0.23546704306608257
	.quad	0x3fd7a63f507a752c              # double 0.36952193125928789
	.quad	0x3fedcce023938acd              # double 0.93125922153952845
	.quad	0x3fe7f420f9456dee              # double 0.74855087934287012
	.quad	0x3fd6e23a5b1afa8e              # double 0.35755785843859023
	.quad	0x3feeffcc4619632e              # double 0.96872533503765168
	.quad	0x3fc8cdc52713d59c              # double 0.19377960594253529
	.quad	0x3fd95c06c66adfea              # double 0.39624184967715215
	.quad	0x3fe76305caaaa76d              # double 0.73083772261928248
	.quad	0x3fb985997b99f1f8              # double 0.099694817234144639
	.quad	0x3fe9c43ad734caff              # double 0.80520383865800216
	.quad	0x3fecbf2b09c6d1b2              # double 0.89833595189570858
	.quad	0x3fd305d0b1aaa834              # double 0.29722993231064554
	.quad	0x3fe75c8da0587a66              # double 0.73004800145629356
	.quad	0x3fde489b769798a2              # double 0.47318159657732839
	.quad	0x3fed429b481071cd              # double 0.91438068461462196
	.quad	0x3fe2da20701352b9              # double 0.58912679567091353
	.quad	0x3fd6558d53e1247a              # double 0.34897168341974061
	.quad	0x3feca14fec6d70e7              # double 0.89469143082854152
	.quad	0x3febc06283facd9f              # double 0.86723447587285196
	.quad	0x3fd34f4432c9a282              # double 0.30171303710680075
	.quad	0x3fd4e8c6c19c3818              # double 0.32670754344224084
	.quad	0x3fdef693d5b28f54              # double 0.48379989498993337
	.quad	0x3fd3ce62486130d6              # double 0.30947167461705527
	.quad	0x3fea48f061fd52e4              # double 0.82140368593772139
	.quad	0x3fa5dad90832cbd0              # double 0.042685301066192616
	.quad	0x3fe51b874c06873b              # double 0.65961041306238799
	.quad	0x3fec971617dccccc              # double 0.89344315205235025
	.quad	0x3fe8ddcdc0a3c5ee              # double 0.77707564949940688
	.quad	0x3fe4a11ae86899a7              # double 0.64466615097335456
	.quad	0x3fd813938e325edc              # double 0.3761948479309305
	.quad	0x3fba1dddc89a78f8              # double 0.10201822421592854
	.quad	0x3fea06f5329c7c10              # double 0.81334934124959268
	.quad	0x3fd3659ca53b5f32              # double 0.30307689796380821
	.quad	0x3fd2b4ef47ef4912              # double 0.2922933771598234
	.quad	0x3fedeef67d3a4aba              # double 0.93542026957069102
	.quad	0x3fde0ed3413e801a              # double 0.4696548592710329
	.quad	0x3fd946fa2e35d8cc              # double 0.39495710861900757
	.quad	0x3fedcff19f7567e3              # double 0.93163376945744536
	.quad	0x3fb18681be5e61b0              # double 0.068458661057212877
	.quad	0x3fec83bd1b4c8d7d              # double 0.89108138400881354
	.quad	0x3fc7718ee0d21aa8              # double 0.18315301873754675
	.quad	0x3fd3abcba0ba96ca              # double 0.30736056038072646
	.quad	0x3fe50c074ce2dec5              # double 0.65771832482183668
	.quad	0x3fd6856b345907bc              # double 0.35189323532187777
	.quad	0x3fc0bc413f458d78              # double 0.13074508275449737
	.quad	0x3febbef877291368              # double 0.86706183694387295
	.quad	0x3f72aecec988d180              # double 0.0045612409235683549
	.quad	0x3fe3efc4f1c7779d              # double 0.62301871511930396
	.quad	0x3fc41b90d0061e80              # double 0.15709123761574872
	.quad	0x3fb39ee262acdc38              # double 0.076643132296212779
	.quad	0x3fdd462a2ee82172              # double 0.45740751820314707
	.quad	0x3fa5afb6c9668320              # double 0.042356216511740152
	.quad	0x3fd2b830df21768e              # double 0.29249212064846908
	.quad	0x3fea6c2b56e38642              # double 0.82570425959074378
	.quad	0x3fee412f7bf7aa31              # double 0.94545721256628756
	.quad	0x3faa64b2d687f360              # double 0.051549519241212094
	.quad	0x3fe349deeed1df2d              # double 0.60276743549818479
	.quad	0x3fecacde83cef876              # double 0.8961021971115446
	.quad	0x3fd1d71a2055c2cc              # double 0.27875378759112546
	.quad	0x3fe8ec1d7f4a386a              # double 0.77882265912354609
	.quad	0x3fea4d68f59b3173              # double 0.82194946260419355
	.quad	0x3fe775963257e7f9              # double 0.7331038459080893
	.quad	0x3fe85992774cea3c              # double 0.76093409825200053
	.quad	0x3fef07724bafdbe0              # double 0.96965899260146315
	.quad	0x3fdbb15df1a697ea              # double 0.43270062063891024
	.quad	0x3feee8846eca099e              # double 0.965883461365866
	.quad	0x3fe4556d57219f30              # double 0.63542811410750311
	.quad	0x3fc9be7ac5ece68c              # double 0.20112547554326843
	.quad	0x3fee5d8f074e90ac              # double 0.9489207403862756
	.quad	0x3fefada7d87c6c94              # double 0.98994819910457687
	.quad	0x3fe9d9d0adc3cdd2              # double 0.80783876360367857
	.quad	0x3fd0c47ebc47dde0              # double 0.26199310671606035
	.quad	0x3fe5c2010de02436              # double 0.67993214330738883
	.quad	0x3fbbf695c8b6de30              # double 0.10923133993389267
	.quad	0x3fd1ae64cafc255a              # double 0.27626914808987169
	.quad	0x3fea18687fe42b5a              # double 0.81547951678053754
	.quad	0x3fc302dd57eec644              # double 0.14852492135610096
	.quad	0x3fda55cb59868f10              # double 0.41148647063003896
	.quad	0x3fed7ff056605a0c              # double 0.9218675314940028
	.quad	0x3fec8860ef3ef01e              # double 0.89164778449731208
	.quad	0x3faf7a739fec8af0              # double 0.061481107017490433
	.quad	0x3fe3a4850dad879c              # double 0.61383297606902287
	.quad	0x3fcadefad8bbc0bc              # double 0.20992980559049623
	.quad	0x3fc8329b38f513e8              # double 0.18904438286895631
	.quad	0x3fc94f7fa9a38870              # double 0.19773860724587022
	.quad	0x3fc5a86a8b550140              # double 0.1692021541912343
	.quad	0x3f87b06704346940              # double 0.011566929641550261
	.quad	0x3fd3b0f5cd15f494              # double 0.3076757910528809
	.quad	0x3fb5d80216f796b0              # double 0.085327272994244252
	.quad	0x3fe45dce6cc4e4fb              # double 0.63645097011536167
	.quad	0x3febff1ab4ae6b4e              # double 0.87489066399880655
	.quad	0x3fecada7ba9590b4              # double 0.89619814340814807
	.quad	0x3fec21ad8a4b6d9f              # double 0.87911107073471217
	.quad	0x3fdd62196072cbee              # double 0.4591124956015723
	.quad	0x3fbc50b1f56c54c0              # double 0.11060631028915946
	.quad	0x3fcfc94bdd1ae5ec              # double 0.24833057685991322
	.quad	0x3feee217c7b96998              # double 0.96509922989507668
	.quad	0x3fd2dee1fb416396              # double 0.2948536828676479
	.quad	0x3fb2185d1da88720              # double 0.070684261074827948
	.quad	0x3fe94f2aa5d2eb54              # double 0.79091389071923368
	.quad	0x3f88ecf4278c6580              # double 0.01217070337002002
	.quad	0x3fe6ae1d0c0985e7              # double 0.70875408507361903
	.quad	0x3fe3803d35f66b57              # double 0.60940418757977965
	.quad	0x3fd2594aa32f8468              # double 0.28669992385954979
	.quad	0x3fe895a4a8cd8599              # double 0.76826699227619877
	.quad	0x3fee549382f564dc              # double 0.94782424524160147
	.quad	0x3fd64cd6959060ce              # double 0.34843983274323598
	.quad	0x3fe4bc51943d544a              # double 0.64798811867752559
	.quad	0x3fd433acd86fca78              # double 0.31565400253672449
	.quad	0x3fc0da0baebc1000              # double 0.13165422470058274
	.quad	0x3fd8597aecc25664              # double 0.38046143647202357
	.quad	0x3fed78026661e524              # double 0.92089958187640208
	.quad	0x3fe463d6fc8fbcbe              # double 0.63718747452175939
	.quad	0x3fd388cdf79c891c              # double 0.30522488766486489
	.quad	0x3fbc6f60878f4958              # double 0.11107447919429114
	.quad	0x3feec5e7141369b2              # double 0.96165803834019514
	.quad	0x3fc5be86c3bdca4c              # double 0.16987690503772723
	.quad	0x3fe6c6ffefbc76c8              # double 0.71179196189378846
	.quad	0x3fd7a4636804fd36              # double 0.36940846594002907
	.quad	0x3fd50b2c1af42632              # double 0.32880690223882703
	.quad	0x3febaba4e08ab7c3              # double 0.86470264297326371
	.quad	0x3fe67e51989799a0              # double 0.70291976740991302
	.quad	0x3fc255b08a549cf4              # double 0.14324003939075391
	.quad	0x3fd4ae18dfe4f906              # double 0.32312604775133058
	.quad	0x3feccbcb4ec31dbb              # double 0.8998772180865936
	.quad	0x3fe4fc32bcd1b8cb              # double 0.65578591231112549
	.quad	0x3fe32fb0dfab4363              # double 0.59957164464331603
	.quad	0x3fe425684e0fe769              # double 0.6295663380289912
	.quad	0x3fa114a9ca6b7930              # double 0.033360773047876768
	.quad	0x3fe99a5eac6cfb41              # double 0.80009397198578125
	.quad	0x3fd56b388349c950              # double 0.33466923543087024
	.quad	0x3fe67f767dcb7bdd              # double 0.70305943078335142
	.quad	0x3fc5a889c98b3d94              # double 0.16920587864886427
	.quad	0x3fdc83c7517be9ee              # double 0.44554312665391549
	.quad	0x3fc40dc6368de254              # double 0.15667035735875123
	.quad	0x3feaaaa8a3fc1ada              # double 0.83333236721304194
	.quad	0x3fec486d24b11324              # double 0.88384110609385801
	.quad	0x3fc1aa32d94209ac              # double 0.13800654991434891
	.quad	0x3fec7890c5a087a7              # double 0.88971747015988434
	.quad	0x3fdf5665bebe12b2              # double 0.48964828135676008
	.quad	0x3fea3baf4ec7ee15              # double 0.81978574168118945
	.quad	0x3fea2a1374aecf17              # double 0.81763623036974564
	.quad	0x3fea2ac29de03109              # double 0.817719753600188
	.quad	0x3fef846c80c3f278              # double 0.98491501950736815
	.quad	0x3fefe59fd1530425              # double 0.99678030856751276
	.quad	0x3fe731a12790b4b7              # double 0.72480828979100564
	.quad	0x3fc1a27710f66648              # double 0.13777054146048529
	.quad	0x3fee8dea8c96c53d              # double 0.95482375582483991
	.quad	0x3fe8ddf27d5c71e0              # double 0.77709316715805343
	.quad	0x3feda7b599d42305              # double 0.92672233624134093
	.quad	0x3fce087954b69d7c              # double 0.23463360439675884
	.quad	0x3fec4564f80f6c7f              # double 0.88347099732654033
	.quad	0x3fe3c74138c36c74              # double 0.61807309233280572
	.quad	0x3f8ef424764b1f00              # double 0.015114102230100013
	.quad	0x3fd0549c0cbb2538              # double 0.25516415828004169
	.quad	0x3fd585a94d192896              # double 0.33628304032448264
	.quad	0x3fef18305f1bda46              # double 0.97170275283753749
	.quad	0x3feee2c47168dcdd              # double 0.96518156194988657
	.quad	0x3fb11a69ad2880d8              # double 0.066809277319865301
	.quad	0x3fcb042dbaedc914              # double 0.21106502177605846
	.quad	0x3fe128e4e3ae21e2              # double 0.53624195545949882
	.quad	0x3fe6b5ab2b036112              # double 0.70967634583488093
	.quad	0x3fe6039d4e61e3cc              # double 0.6879412203699018
	.quad	0x3feb808b78baec5a              # double 0.85944150524245377
	.quad	0x3fd694f345038960              # double 0.35284120311384548
	.quad	0x3f6e37d70812b400              # double 0.0036887359461474922
	.quad	0x3fd8438eff3bdc5a              # double 0.37912344861201108
	.quad	0x3fe4ecfab46f9b07              # double 0.65392813912771508
	.quad	0x3fc49cb4d384a9a0              # double 0.16103229835546262
	.quad	0x3fd46bf600609426              # double 0.31908941304056027
	.quad	0x3fe29f14b3e80753              # double 0.58191905153237611
	.quad	0x3fec1b5b1d4c6059              # double 0.87833934519131696
	.quad	0x3fe88719736aa8a9              # double 0.76649162809669236
	.quad	0x3fe92168b713be39              # double 0.78532825238466508
	.quad	0x3fe292e0a74824af              # double 0.58042938873508898
	.quad	0x3fef6643c347d8d3              # double 0.98123348370315921
	.quad	0x3fead8159b618e8c              # double 0.83887749050013971
	.quad	0x3fe1f4ca13e15027              # double 0.5611315143855834
	.quad	0x3fdc5d1a17f08ae6              # double 0.44318249070981464
	.quad	0x3fc748bc023b7820              # double 0.18190717801093204
	.quad	0x3fd787654e881bd0              # double 0.36763889950856043
	.quad	0x3fbe9959c7f693a0              # double 0.11952744609750576
	.quad	0x3fcd4f7c19997740              # double 0.22898818254446418
	.quad	0x3febf53bc5c8aaec              # double 0.87368572835597779
	.quad	0x3fe92e0069d70796              # double 0.78686543151728716
	.quad	0x3fddfb8f02afef02              # double 0.46847892057824947
	.quad	0x3fee3f9093a7dd1a              # double 0.94525936926848719
	.quad	0x3fe42518f15ce2b5              # double 0.62952849522760934
	.quad	0x3fc3f064d53d31d8              # double 0.15577373897612179
	.quad	0x3fd699d0589101b6              # double 0.35313805245462093
	.quad	0x3feebb736f2d6f15              # double 0.96038219179488015
	.quad	0x3fd93a33b4ed6d14              # double 0.39417736691184868
	.quad	0x3fbe460842ab9598              # double 0.11825610759441074
	.quad	0x3fd42c8d0d3bd248              # double 0.31521917621947582
	.quad	0x3fc30b878de52ed0              # double 0.14878935268858706
	.quad	0x3fdb867990545340              # double 0.43008269400279531
	.quad	0x3fc7cf21fece5a60              # double 0.18600869123175112
	.quad	0x3fdbeac50b98a2be              # double 0.43620420582241681
	.quad	0x3fe02b74691c32d9              # double 0.50530453233076422
	.quad	0x3fe4947e94f5be87              # double 0.64312676519144041
	.quad	0x3fced7f243417d04              # double 0.24096515926337514
	.quad	0x3fdeda96dd393b4a              # double 0.48209163287986156
	.quad	0x3fe9797ceae034be              # double 0.79608007311039564
	.quad	0x3fee6d9319b56e35              # double 0.95087580701096519
	.quad	0x3fe1a39498b42e50              # double 0.5512183172699654
	.quad	0x3fe59acd6d1f634e              # double 0.67514678299913
	.quad	0x3fe70fa3166dc4f0              # double 0.72065882092115707
	.quad	0x3fdd6ee1f33e44ce              # double 0.45989273790571594
	.quad	0x3fe4d31bca3a1323              # double 0.65077008721764107
	.quad	0x3fc3139e80301720              # double 0.1490362287442446
	.quad	0x3fecdf685423ea21              # double 0.90227142747545852
	.quad	0x3fe1acce66b1e8c3              # double 0.55234451348885505
	.quad	0x3fe4ea10042da3ae              # double 0.653572090302182
	.quad	0x3fdc3bac1f5cfe6c              # double 0.44114211142366488
	.quad	0x3fdc31d920e934e8              # double 0.44054249013863833
	.quad	0x3fe45de1baaaca5d              # double 0.63646017511775776
	.quad	0x3fe66b8ac501250e              # double 0.70062769391475554
	.quad	0x3fee3c774532b954              # double 0.94488109126340669
	.quad	0x3fe32cb05191c67b              # double 0.59920516902475585
	.quad	0x3fecfac60b4eddc9              # double 0.90561201294524907
	.quad	0x3fed790ed5ad9377              # double 0.9210275815390635
	.quad	0x3fd11a28ab5d01f6              # double 0.26722161040018422
	.quad	0x3fe9c00f7951b3b2              # double 0.80469487853189592
	.quad	0x3fea4d90954a0dfb              # double 0.8219683566862267
	.quad	0x3fe3026f46e0a85e              # double 0.59404720156932078
	.quad	0x3fe940adf9e5c261              # double 0.78914545829873017
	.quad	0x3fcea54851c6e278              # double 0.23941902153980599
	.quad	0x3fb2599e7a192908              # double 0.071679978188658677
	.quad	0x3fe6b837d6f5a6b4              # double 0.70998756393711071
	.quad	0x3fef0288b5bf86f8              # double 0.96905932901083158
	.quad	0x3fe4c80222810832              # double 0.64941508044308294
	.quad	0x3fb3909ffdd2de38              # double 0.076425551861455499
	.quad	0x3fdf8779c02635e8              # double 0.49264377369476486
	.quad	0x3fed302953962815              # double 0.91212908101556656
	.quad	0x3fd96151acdbbd1e              # double 0.39656488304804494
	.quad	0x3feefca484530f27              # double 0.96834016651744014
	.quad	0x3fd4671c790d8c98              # double 0.31879340955328805
	.quad	0x3fda2a5d35b72998              # double 0.4088356995167941
	.quad	0x3fe5b358fd4f0575              # double 0.67814301943160038
	.quad	0x3fe3415953d09291              # double 0.60172716493669232
	.quad	0x3fe9186d9e018734              # double 0.78423195705929638
	.quad	0x3fd596cfe603c2c6              # double 0.33732984030124802
	.quad	0x3fc2511c8c574af0              # double 0.14310032703959719
	.quad	0x3feddb3547f2e6c4              # double 0.93300880482203085
	.quad	0x3fe517a86cb030c5              # double 0.6591379282777089
	.quad	0x3fd3bbd633823062              # double 0.30833964376575385
	.quad	0x3fc801d3f4e73fe8              # double 0.18755578478021495
	.quad	0x3fa4445fb90a7410              # double 0.039584151590340011
	.quad	0x3fea3d4d7ed41cfc              # double 0.81998324176029724
	.quad	0x3fd856b4f88c84ba              # double 0.38029217026093998
	.quad	0x3fc9aebcc3c398f8              # double 0.20064506109992641
	.quad	0x3fd82e9a447c8c30              # double 0.37784439743171827
	.quad	0x3fdf9aea30723208              # double 0.49383024912893392
	.quad	0x3fd1cd4b548dfece              # double 0.27815516717235489
	.quad	0x3fb2c1ee4edb1c40              # double 0.073271650554588952
	.quad	0x3fd5f7cffbdcbc7c              # double 0.34325027080462411
	.quad	0x3fe042879781fed6              # double 0.50812129584661636
	.quad	0x3fe84a5ebacd9236              # double 0.75907837376559573
	.quad	0x3fdec9a43908fd40              # double 0.48105722017131214
	.quad	0x3fb72e161e9630b0              # double 0.090546972720576546
	.quad	0x3fdc8680e96d537a              # double 0.44570944591151085
	.quad	0x3fc59e801ba7034c              # double 0.16889954900946191
	.quad	0x3fd5b12211572e08              # double 0.33893634503758152
	.quad	0x3fb260f98e3aac98              # double 0.07179221842186434
	.quad	0x3fe581aa7de5ab27              # double 0.67207836713109692
	.quad	0x3fc4b6a88ce7646c              # double 0.16182429199287485
	.quad	0x3fec35756ab5c5f6              # double 0.8815257152729703
	.quad	0x3fe37915f8a93123              # double 0.60853098455985266
	.quad	0x3fd00c3ef6642eae              # double 0.25074743329671889
	.quad	0x3fe5b304bb699ed7              # double 0.67810284236926577
	.quad	0x3fc530874ba88070              # double 0.16554347223518873
	.quad	0x3faa3e8f5a18c3e0              # double 0.051258544681679785
	.quad	0x3feb38b5c9b6e6bb              # double 0.8506726207480918
	.quad	0x3feedde1df18c1d0              # double 0.96458524297309545
	.quad	0x3fcb4036e0fa8b18              # double 0.21289716706549977
	.quad	0x3fd04630c4bf55a0              # double 0.25428408826459226
	.quad	0x3fdc17159a0c1452              # double 0.43890895885153214
	.quad	0x3fbdab3974299398              # double 0.115893927440608
	.quad	0x3fb78721a1382c78              # double 0.091905691013538404
	.quad	0x3fd0e310d0f85994              # double 0.26385898978460287
	.quad	0x3fe2d1a10b5477a7              # double 0.58808948719864851
	.quad	0x3fd7fb6204a0d1a2              # double 0.37471819354984792
	.quad	0x3fe7bf0f6557b453              # double 0.74207277101016655
	.quad	0x3fe8c06cd07e4817              # double 0.77348938676209655
	.quad	0x3fb4067310572620              # double 0.078223411073075955
	.quad	0x3fe6069ed5cf0166              # double 0.68830816039557585
	.quad	0x3fe8b4b9deda58fd              # double 0.77206128622017867
	.quad	0x3fd3a62b87e5bf02              # double 0.30701721450076047
	.quad	0x3fdd9d99ed830ea0              # double 0.46274421877408578
	.quad	0x3fc8824d367522b0              # double 0.19147648963032315
	.quad	0x3fea275565ae2f64              # double 0.81730146274047088
	.quad	0x3fed71514f7ba8a6              # double 0.92008271717101731
	.quad	0x3fe3d7d913fd506b              # double 0.62009862808419081
	.quad	0x3fb20a26b1371170              # double 0.070467394128234551
	.quad	0x3fbea45d052d9628              # double 0.11969548584382805
	.quad	0x3fe526a6ada0d79c              # double 0.66096815025115374
	.quad	0x3fd7d85174d75ae4              # double 0.37257801447178296
	.quad	0x3fee1c8825b31b99              # double 0.94098288882456693
	.quad	0x3fd60f4f5e26214a              # double 0.3446844500945373
	.quad	0x3fe2dadcfdd4e346              # double 0.58921670509798996
	.quad	0x3fec6ae2255e312d              # double 0.8880472879259621
	.quad	0x3fd9545fe7286cb0              # double 0.39577481817259308
	.quad	0x3fdb7f1b38b5d416              # double 0.42963295496093801
	.quad	0x3fd4426c4188c3aa              # double 0.31655413055255599
	.quad	0x3fc2e949256cc980              # double 0.14774431540861244
	.quad	0x3fc7d3f518b50560              # double 0.18615592676546111
	.quad	0x3fe967812b0228cd              # double 0.79388483429036116
	.quad	0x3fb749cef25fb9e0              # double 0.090969976590464352
	.quad	0x3fd39d22178d7cc2              # double 0.3064656476980866
	.quad	0x3feb5735c74cd537              # double 0.85439576078230217
	.quad	0x3fc5bb8bfac2bf2c              # double 0.16978597397018669
	.quad	0x3fddb68f6d42c70e              # double 0.4642675940514075
	.quad	0x3fe59aa36896e6e3              # double 0.67512674739483847
	.quad	0x3fe21e1b62b595f3              # double 0.56617516783870625
	.quad	0x3fd520b5fe317cd6              # double 0.33012151549878632
	.quad	0x3feeea5229d5111f              # double 0.96610363169068935
	.quad	0x3fa9b30e1b111c60              # double 0.050194207004601976
	.quad	0x3fe1e6757a69d983              # double 0.55938218983537558
	.quad	0x3fee72f7b59cc964              # double 0.95153413268262143
	.quad	0x3fc84eb7f9080b84              # double 0.18990230235803207
	.quad	0x3fdde530c0888ea2              # double 0.46711367418377325
	.quad	0x3fb387e6089df9e0              # double 0.076292397598059392
	.quad	0x3fa34a610ab771c0              # double 0.037676842268158151
	.quad	0x3fc966d7b8ca810c              # double 0.19845100901603308
	.quad	0x3fe7f126e8740ca8              # double 0.74818749810255714
	.quad	0x3fef862e92441fa0              # double 0.98512962882613308
	.quad	0x3fe3effdd087587f              # double 0.62304583290348592
	.quad	0x3fec8b871d65dfb8              # double 0.89203220121179694
	.quad	0x3fb2d63e47863e18              # double 0.073581593000419665
	.quad	0x3fe342591f96d64a              # double 0.60184913797156381
	.quad	0x3fc26f6521bdab40              # double 0.14402450702194791
	.quad	0x3fcab0b2e8f47794              # double 0.20851742148164176
	.quad	0x3fce45c71135cb80              # double 0.23650444355333988
	.quad	0x3fe556fcff5d3e37              # double 0.66686868549181255
	.quad	0x3fd5e12be7face3c              # double 0.34186837820309157
	.quad	0x3fdaf52a45dd7148              # double 0.42121369192843305
	.quad	0x3fe122d9a58b4585              # double 0.53550417263811367
	.quad	0x3fe5b36fda75557e              # double 0.67815392177241995
	.quad	0x3fd972dbc90a3634              # double 0.3976354087143108
	.quad	0x3fe26caef2c7a3a3              # double 0.57576701562821986
	.quad	0x3fd92c9cff35dd2c              # double 0.39334797785655229
	.quad	0x3f9665d662521f40              # double 0.021872853995346775
	.quad	0x3fdf80efef1cef6c              # double 0.4922447047317664
	.quad	0x3fe93b0ea894dd75              # double 0.78845913816523583
	.quad	0x3fe7554b026cdc9b              # double 0.72916174386672894
	.quad	0x3fe3b47a45612098              # double 0.61578095961251034
	.quad	0x3fdcfe9aecdc5a54              # double 0.45303986674244823
	.quad	0x3fe6082384304c35              # double 0.68849349802110871
	.quad	0x3fe90fdefacdae5f              # double 0.78318737969443564
	.quad	0x3fa8f0ca97476430              # double 0.048712092367800941
	.quad	0x3fd726a30e71a0a6              # double 0.36173321161778416
	.quad	0x3facaa73b62f2710              # double 0.055987945546418172
	.quad	0x3fece9da30522c6d              # double 0.90354642331784663
	.quad	0x3fed22d98417a9bb              # double 0.91050411032966083
	.quad	0x3f9d2ecafe91fc40              # double 0.028498813426719005
	.quad	0x3fef130c9d6bca7c              # double 0.97107535120296928
	.quad	0x3febb084135799a8              # double 0.86529735353251613
	.quad	0x3fd07379b7055078              # double 0.25704806206818587
	.quad	0x3fe509eb318c2a4d              # double 0.65746078183412637
	.quad	0x3fc3ef5046425ba0              # double 0.15574077063203351
	.quad	0x3fd11f430261e266              # double 0.26753306610729621
	.quad	0x3fdd46ebd32d25a6              # double 0.45745368597689617
	.quad	0x3fe86b375d6fad85              # double 0.76308792351976307
	.quad	0x3fd08cc96b6363b8              # double 0.25859294402249189
	.quad	0x3fc9b798df3d3134              # double 0.20091544056266175
	.quad	0x3fd679d82415c48e              # double 0.35118678592613939
	.quad	0x3fe9c0e99b498827              # double 0.80479889230287405
	.quad	0x3feed3973f7f84e3              # double 0.96332895662285655
	.quad	0x3fe5a0c34036787d              # double 0.67587435285146535
	.quad	0x3febc8e26f1eb511              # double 0.86827203467479042
	.quad	0x3fc4519d363dcbc8              # double 0.15874066494470029
	.quad	0x3fe58f49900566bc              # double 0.67374113206024999
	.quad	0x3fdf9d7a4ef02f30              # double 0.4939866801148467
	.quad	0x3feb4ee471b534d2              # double 0.85338041504442175
	.quad	0x3fe16cd253566f63              # double 0.5445338847816682
	.quad	0x3fb40247330f7c08              # double 0.078159761396349947
	.quad	0x3fa746f86489cac0              # double 0.045463335297332375
	.quad	0x3fec5abf8d541ce4              # double 0.88607766726718439
	.quad	0x3fe25d41a0b9ba25              # double 0.57388383285234978
	.quad	0x3fef889b0f3bd68b              # double 0.98542550063457789
	.quad	0x3fe0237e28f6064c              # double 0.5043326187153041
	.quad	0x3fe64d9c58860a35              # double 0.69697396554722124
	.quad	0x3fe5816e8c49eb5f              # double 0.67204978370805779
	.quad	0x3fd22e55da4822d2              # double 0.2840780860574742
	.quad	0x3fe674999adc4535              # double 0.70173340078523572
	.quad	0x3fe9ac09c94c5ee7              # double 0.80225076023176889
	.quad	0x3fec74415053b430              # double 0.88919130028592086
	.quad	0x3fe0de9b3bddb0e2              # double 0.52717363064359923
	.quad	0x3fd07a70a7bf6746              # double 0.25747314817055089
	.quad	0x3fe747772dbb1da5              # double 0.72747382098980451
	.quad	0x3fe46c153f063df1              # double 0.63819372472238289
	.quad	0x3f62f774603a4a00              # double 0.0023152611700620884
	.quad	0x3fd105e5ecae576c              # double 0.26598499406224252
	.quad	0x3fe44c4958ca7862              # double 0.63431231824848688
	.quad	0x3fe0234e33b04b51              # double 0.50430975051345162
	.quad	0x3fb33f3e17fdb550              # double 0.075183754784764689
	.quad	0x3fc25a0ec153a9cc              # double 0.14337334098611476
	.quad	0x3fcb1821874348c8              # double 0.21167391876821839
	.quad	0x3fe5a579d1ed5fd8              # double 0.67644968987860477
	.quad	0x3fd5baf448569bb6              # double 0.33953578056610512
	.quad	0x3fec0feb717b5c9e              # double 0.87694332279615472
	.quad	0x3fcf0326658e728c              # double 0.24228362997827835
	.quad	0x3fd8b24275e2075e              # double 0.38588010322574984
	.quad	0x3fe24f5b87db8435              # double 0.5721871999231839
	.quad	0x3fe1ade60e518257              # double 0.55247786327897586
	.quad	0x3fd6e66892ac74c8              # double 0.35781301807021437
	.quad	0x3fe4854bf200f1ef              # double 0.64127156511636751
	.quad	0x3fb647493b658eb8              # double 0.087025238991880083
	.quad	0x3feddffc41fdc28a              # double 0.9335919655696483
	.quad	0x3fe3e11bf53b13f1              # double 0.62122915169368131
	.quad	0x3fe933713758d99f              # double 0.78752957162832959
	.quad	0x3fe8ee300eb1083a              # double 0.77907564992370415
	.quad	0x3f9414495601f300              # double 0.01960863673638169
	.quad	0x3fea02438dac57f3              # double 0.81277635260153003
	.quad	0x3feaa93ad3f92891              # double 0.83315793419866868
	.quad	0x3fe649c0110bbfc2              # double 0.69650271729732816
	.quad	0x3fe286826ad84f41              # double 0.5789196097198116
	.quad	0x3fe67ff90c942f92              # double 0.70312168556982813
	.quad	0x3fe269a3da813468              # double 0.57539551426601765
	.quad	0x3fe94ca8774f9ca2              # double 0.79060767462660331
	.quad	0x3fee9c6ea89a2291              # double 0.95659573488326732
	.quad	0x3fd73c6341902730              # double 0.36306077387472424
	.quad	0x3fe3d360f5cfc4c3              # double 0.61955307016446459
	.quad	0x3fe13a0ba8920709              # double 0.53833563732061507
	.quad	0x3fe650fce4552a99              # double 0.69738621326662831
	.quad	0x3fd0d275552641d4              # double 0.26284535708785239
	.quad	0x3f9da398c4950920              # double 0.028944384573386661
	.quad	0x3fdb0e72c81d360e              # double 0.42275685827630205
	.quad	0x3fd17bf8c50ecbae              # double 0.27319163555074055
	.quad	0x3fe82bc44592a9c5              # double 0.75534261311013806
	.quad	0x3f943573bde1b460              # double 0.019735153641182612
	.quad	0x3fd65a1b040108c8              # double 0.34924960509318881
	.quad	0x3fd9c0e63dbee9ba              # double 0.40239864377840784
	.quad	0x3fe41e5fb7fd1de5              # double 0.62870775161075854
	.quad	0x3fc88d7911eeb8ec              # double 0.19181741119013596
	.quad	0x3fe88a632b29ad20              # double 0.76689299040063829
	.quad	0x3fe2b29035076664              # double 0.58429727894981598
	.quad	0x3fd32da5902700a2              # double 0.29966105534914267
	.quad	0x3fb38c9d7914a2b8              # double 0.076364366589255606
	.quad	0x3fdc19f45140286a              # double 0.43908412871008429
	.quad	0x3f9314d1f82dcd00              # double 0.018634110233915813
	.quad	0x3fea0e14ef25d0be              # double 0.81421896656549797
	.quad	0x3fe68cd56bc42160              # double 0.7046916107947645
	.quad	0x3fda0364704988c0              # double 0.4064570519023043
	.quad	0x3fe48d02b73025fa              # double 0.64221320895120404
	.quad	0x3fd1b83e54fd4c46              # double 0.27687032985449311
	.quad	0x3fc6bd804fadf8b0              # double 0.1776581181583814
	.quad	0x3fccfab9dd5484a4              # double 0.22640155131469897
	.quad	0x3fe2532ca16da33e              # double 0.57265311745604897
	.quad	0x3fd1bb0e45e5945e              # double 0.27704197717532064
	.quad	0x3fee339c3136e8fd              # double 0.94380006420331564
	.quad	0x3feeba5c1930cb1d              # double 0.96024899406470221
	.quad	0x3fef92f22e851216              # double 0.98668774686717842
	.quad	0x3fb0db47c83c88e8              # double 0.065845953355651354
	.quad	0x3fd17fe6e9ac4a2a              # double 0.27343151874188953
	.quad	0x3fe66597d5fbb23a              # double 0.69990150254813632
	.quad	0x3fc51ad8ab25fa98              # double 0.16488178593495628
	.quad	0x3fa609838162f360              # double 0.043041333717588115
	.quad	0x3fe7c12d2f012cb1              # double 0.74233111553748732
	.quad	0x3fe31117a701c28e              # double 0.59583647364168413
	.quad	0x3fc7f6687cc507d8              # double 0.18720728008525955
	.quad	0x3febe6717e1efc0d              # double 0.8718802893926082
	.quad	0x3fa6719d756feb10              # double 0.043835564218133283
	.quad	0x3fd5ec69115c921c              # double 0.34255434699505982
	.quad	0x3fec719f5ca616fd              # double 0.88886993499247036
	.quad	0x3fd7e8b973fd485a              # double 0.37357937171066669
	.quad	0x3fd5d91ddec4cca2              # double 0.34137675051460736
	.quad	0x3fbb67d927040e48              # double 0.10705334856543758
	.quad	0x3f9a86de3b83c620              # double 0.0259051059555927
	.quad	0x3fe779d35e28b63e              # double 0.73362129583774283
	.quad	0x3feb7c335242c380              # double 0.85891119066774024
	.quad	0x3fa20901fa7f92c0              # double 0.035224973514947688
	.quad	0x3fdd97578edcd6ec              # double 0.46236218406134699
	.quad	0x3fe4dc6d1aee36f1              # double 0.65190749416225746
	.quad	0x3feb3d527e9fc5b4              # double 0.85123562556525778
	.quad	0x3fb76247ab156600              # double 0.091343383091405883
	.quad	0x3fe3587e6fcb3c8a              # double 0.60455247721428518
	.quad	0x3fe89ff15bfd016c              # double 0.76952426878419322
	.quad	0x3fe6e78070228e5d              # double 0.71575948621143548
	.quad	0x3fe2e58d5fff8ea6              # double 0.59052151441251932
	.quad	0x3fbafe50b0f42f68              # double 0.10544304199373544
	.quad	0x3fe464079d6296ea              # double 0.63721066226272893
	.quad	0x3fc27ee8f7ea67f0              # double 0.14449798684364579
	.quad	0x3fe0d05585e0ee1c              # double 0.52543140552683409
	.quad	0x3fedb72b28a02a2e              # double 0.92860944685646074
	.quad	0x3fe5687ef0fbcdb2              # double 0.66900584284888098
	.quad	0x3fbb56250e8861a0              # double 0.10678321461489881
	.quad	0x3fe8e9c6dd7882dd              # double 0.77853720909123647
	.quad	0x3fcacedf9e50c1f4              # double 0.20943827848670049
	.quad	0x3fd1586d3a14f408              # double 0.27102213546805887
	.quad	0x3fb873e4b42ddd90              # double 0.095518392552426556
	.quad	0x3fbf4adac26d4208              # double 0.12223593947170042
	.quad	0x3fec9ddab64b3280              # double 0.89426932911153756
	.quad	0x3fe165dd72b11dc0              # double 0.54368469620469995
	.quad	0x3fb251d0d826b1f8              # double 0.071560910006787881
	.quad	0x3fd9d6a0bc6b6f82              # double 0.40372484588964863
	.quad	0x3fd101b6934b861e              # double 0.26572956451681928
	.quad	0x3fd265f142608db4              # double 0.28747207147736309
	.quad	0x3fdaa7c86ffffa20              # double 0.41649065911761518
	.quad	0x3fbb5e22283f1048              # double 0.10690511210037912
	.quad	0x3fcd00138512b3b4              # double 0.22656482694347135
	.quad	0x3fe76724e171fb18              # double 0.73134082824967361
	.quad	0x3fd543ebc66e0212              # double 0.33227056863691573
	.quad	0x3fc06908ebe2e0c8              # double 0.1282054092205327
	.quad	0x3fe37530cb7211b0              # double 0.60805549369302092
	.quad	0x3fe3cb575df9dfae              # double 0.61857193331433336
	.quad	0x3fb7f65516849820              # double 0.093602483747048825
	.quad	0x3fef2e86411c4907              # double 0.97442925183193629
	.quad	0x3fe299b73f7c63e9              # double 0.58126413726415394
	.quad	0x3fcb12e6d2f224f8              # double 0.21151433277217513
	.quad	0x3fe9de37820fab86              # double 0.80837607767658493
	.quad	0x3febb9500aafd6cf              # double 0.86637117469100555
	.quad	0x3fd9dc24f0eddc64              # double 0.40406154182659848
	.quad	0x3fbcb8d3d9bba4f0              # double 0.11219524446245877
	.quad	0x3fe92ec7f9910b62              # double 0.78696058982346195
	.quad	0x3f89c12eecc9ddc0              # double 0.01257549915429379
	.quad	0x3fd15e9bd67ca6f0              # double 0.27139945932377341
	.quad	0x3fec34d41d6196c9              # double 0.88144880045430185
	.quad	0x3fed2ebc5338724b              # double 0.9119550347709916
	.quad	0x3fe62bd98b5cc991              # double 0.69285275668362278
	.quad	0x3fe64bae7666c3d1              # double 0.69673846364286807
	.quad	0x3fbb9ce4c1dafa40              # double 0.10786275608823193
	.quad	0x3fba6c174d77a0d8              # double 0.1032118381623407
	.quad	0x3fab28992f9f2750              # double 0.053044116080470105
	.quad	0x3fe907f73eb3b370              # double 0.78222238775707176
	.quad	0x3fc5b8c03de1a640              # double 0.16970065137438617
	.quad	0x3fda08aa987199ac              # double 0.40677895438275402
	.quad	0x3fe643839a734393              # double 0.69574146429123329
	.quad	0x3fc4a1eebebc5150              # double 0.16119179070723044
	.quad	0x3fdd9a378af69638              # double 0.46253765650394341
	.quad	0x3fd53f69e4e9c3da              # double 0.33199546198653496
	.quad	0x3fe9458f1c50c3e0              # double 0.78974109201783093
	.quad	0x3fc86b1e6798eab0              # double 0.19076900537932806
	.quad	0x3fd46e3bc7a334a0              # double 0.31922811981059773
	.quad	0x3fdc3b237091a0fa              # double 0.44110952370694145
	.quad	0x3fe150481ee759f2              # double 0.54105001483804771
	.quad	0x3fea0bcd9f5e4252              # double 0.81394082190133532
	.quad	0x3fee50ec10f88c8a              # double 0.94737819018009017
	.quad	0x3fe5a16896198cd4              # double 0.67595319095962703
	.quad	0x3fd2bda9e86ab54e              # double 0.29282615372615772
	.quad	0x3fe134dc67e042eb              # double 0.53770275390897149
	.quad	0x3fb04667d4646640              # double 0.063574303964196055
	.quad	0x3fe8b9d4515c9b69              # double 0.77268424883810127
	.quad	0x3fdc73755b9044e2              # double 0.444547023217707
	.quad	0x3fbd8cdb5a6be360              # double 0.11543055493883747
	.quad	0x3fe0b69bd0fb8941              # double 0.52229109589487888
	.quad	0x3fe9d3f14f3a973e              # double 0.80712190126789785
	.quad	0x3fed37915ed68294              # double 0.91303318522484966
	.quad	0x3feb305e79c886fe              # double 0.84965442453196238
	.quad	0x3fedff27dc2e5bd7              # double 0.93739693645590705
	.quad	0x3fba026243239a08              # double 0.10159887446534566
	.quad	0x3fea91a22452574c              # double 0.83027751058646392
	.quad	0x3fec35d506f40e1a              # double 0.88157130582880261
	.quad	0x3feb41c31b926ba1              # double 0.85177760491511745
	.quad	0x3fd2a2f8c6224878              # double 0.29119700764670808
	.quad	0x3fe19ba487bac224              # double 0.55024935254738638
	.quad	0x3fc3aca6a26e07fc              # double 0.15370638781683954
	.quad	0x3fb205dbae0faf28              # double 0.070401887889315007
	.quad	0x3f78eff4c0dd2600              # double 0.0060882149389924756
	.quad	0x3fd6b78f3c67bdb6              # double 0.35495358370732377
	.quad	0x3fe5d32157002243              # double 0.68202273361482246
	.quad	0x3f7678362970f680              # double 0.0054857364366945882
	.quad	0x3fe2a6273124a12d              # double 0.5827823600602976
	.quad	0x3fe9274395fc45a7              # double 0.7860429696467478
	.quad	0x3fd9fef1058585fa              # double 0.40618539370743145
	.quad	0x3fedc44e9079bed3              # double 0.93021324365505575
	.quad	0x3fecced4ee83fffd              # double 0.90024801812251065
	.quad	0x3fc7a29a7c3a299c              # double 0.18464976373463748
	.quad	0x3fd80e34ac0152ac              # double 0.37586705014590893
	.quad	0x3feac4d09fbf486f              # double 0.83652526093125157
	.quad	0x3fd95c171817eb74              # double 0.39624574044108063
	.quad	0x3fec7881ae6967c8              # double 0.88971027436058936
	.quad	0x3fe968c284b29b75              # double 0.79403806607738991
	.quad	0x3fd192a7c156461c              # double 0.27457612877432935
	.quad	0x3fea5e64c216cd4f              # double 0.82402265460988555
	.quad	0x3fe42cf6d88e7ac3              # double 0.63048879905894528
	.quad	0x3fd8d25ceb58aab6              # double 0.38783953650515046
	.quad	0x3fb6eaf7a92f7438              # double 0.089522818379422442
	.quad	0x3fe3327e849587cb              # double 0.59991384406407045
	.quad	0x3fe4b964064cfd08              # double 0.64763070326435557
	.quad	0x3fce45a37a11328c              # double 0.23650020084678081
	.quad	0x3fed1d5ec1ec2fea              # double 0.90983522296437269
	.quad	0x3fc7590bab2f5268              # double 0.18240495546946822
	.quad	0x3fe3b40d956baa3d              # double 0.6157291334505498
	.quad	0x3fbf68554815eff8              # double 0.12268574724106418
	.quad	0x3fe2c298dc160a7f              # double 0.58625452981534909
	.quad	0x3fd709ad762c8de8              # double 0.35996567287858605
	.quad	0x3fc115ada2b9b97c              # double 0.13347406812267681
	.quad	0x3f96389337758900              # double 0.021700191745716246
	.quad	0x3fe0032e0ea81e21              # double 0.50038817274702663
	.quad	0x3fc8e61d8c544ee8              # double 0.19452256538408297
	.quad	0x3fea2012f0d70cf3              # double 0.8164152816683824
	.quad	0x3fb9a0a862523bb0              # double 0.10010769272251596
	.quad	0x3fd68bb430507a5e              # double 0.35227684705924911
	.quad	0x3fe1ed72b429ec36              # double 0.5602353590796898
	.quad	0x3fda4993d5935e52              # double 0.41074081284520958
	.quad	0x3fe9925274765f2a              # double 0.79911158320007769
	.quad	0x3fea8301ed80a795              # double 0.82849213015764411
	.quad	0x3fd459dc35808e1c              # double 0.31798463082142958
	.quad	0x3fe0b1a514bbcc65              # double 0.52168516206291982
	.quad	0x3feb11c5f29dbe73              # double 0.84591958414053037
	.quad	0x3fedc616612de19f              # double 0.93043059330289057
	.quad	0x3f7d662c2fd41980              # double 0.0071775175140430525
	.quad	0x3fdf4a2016a201e6              # double 0.48889925203550744
	.quad	0x3fc348d91d882f78              # double 0.1506606477927297
	.quad	0x3fec3520a74d74b2              # double 0.88148529697686784
	.quad	0x3fde546396196f7a              # double 0.47390069635525089
	.quad	0x3fd91ef6320b35c2              # double 0.39251475226486943
	.quad	0x3fccaaf8ff13ad9c              # double 0.22396767096448122
	.quad	0x3fd66e79bc5a780e              # double 0.35049289125333949
	.quad	0x3fdb6788b9bef3de              # double 0.42819421900986565
	.quad	0x3f9c001c808e03e0              # double 0.027344174715384528
	.quad	0x3fed53b740f35ea6              # double 0.91646921811748849
	.quad	0x3fda30f4b19edbdc              # double 0.40923802705532153
	.quad	0x3fe6f342b9cf464c              # double 0.7171949032874152
	.quad	0x3fe026ea072b39f5              # double 0.50475026512304899
	.quad	0x3fd1eb5bd8acedc0              # double 0.27999015960423534
	.quad	0x3fb065dcf0c99fa8              # double 0.064054306779893211
	.quad	0x3fd41346a99441c6              # double 0.31367651520215778
	.quad	0x3fd24694b8d67a56              # double 0.28555791903082672
	.quad	0x3fd0558ada039784              # double 0.25522109308655438
	.quad	0x3fb3c381ae1788d8              # double 0.077201943400300066
	.quad	0x3fec104c8c4773c0              # double 0.87698962591422713
	.quad	0x3fe8cba93b2e3c64              # double 0.77486096914971058
	.quad	0x3fdb4dd0e6021a08              # double 0.42662451230754117
	.quad	0x3fe6dc104b1f9739              # double 0.71436323807277013
	.quad	0x3fd6148d2e92ca36              # double 0.34500436351951025
	.quad	0x3fd85108252f69d8              # double 0.37994578963630721
	.quad	0x3fa6b5ecbfe702e0              # double 0.04435672609861796
	.quad	0x3fe2b7a5ad4467eb              # double 0.58491786805393298
	.quad	0x3fe186e1dc807e12              # double 0.54771512095243424
	.quad	0x3fc26e15599b1adc              # double 0.14398447871481934
	.quad	0x3fe2548cba1e3f63              # double 0.57282101012422648
	.quad	0x3fee76f1589abb5a              # double 0.95201937966872241
	.quad	0x3fe0a9d5bd97ad6e              # double 0.52073180227072924
	.quad	0x3fdfa9e0e948aa56              # double 0.49474356443048373
	.quad	0x3fe8d5f848b0a1d4              # double 0.77611936757335309
	.quad	0x3fe2daf62647c3ae              # double 0.58922870136858818
	.quad	0x3fc13a32e0da5018              # double 0.13458858470096469
	.quad	0x3fd27754533d3d40              # double 0.28853328827695535
	.quad	0x3fdcdb2a2b47fb2c              # double 0.45087675310780884
	.quad	0x3fe3c389b04a172d              # double 0.61761936599279965
	.quad	0x3fd69ce8639f737a              # double 0.3533268902663661
	.quad	0x3fa196ef3b140260              # double 0.034354663812341313
	.quad	0x3fda85fc6b34ae2c              # double 0.41442785710634911
	.quad	0x3feb5e5d43978261              # double 0.85526908113031308
	.quad	0x3fd1045051fc6906              # double 0.2658882904667198
	.quad	0x3fe5da4410e40d93              # double 0.68289378451338434
	.quad	0x3fed1587bdfbda79              # double 0.90887820345126535
	.quad	0x3feb3106836be456              # double 0.84973455112698093
	.quad	0x3fd8c88fee9b85a4              # double 0.38724134732737014
	.quad	0x3fdc349f92c7a3c4              # double 0.44071187337845807
	.quad	0x3fa8940afdb23680              # double 0.048004477947967139
	.quad	0x3fd64df481d05096              # double 0.34850800206300769
	.quad	0x3feeddc17eac93db              # double 0.96456980458298902
	.quad	0x3fd9db692eb914a0              # double 0.40401677668371327
	.quad	0x3fd82ce8e66d2a8e              # double 0.37774107458668815
	.quad	0x3f738bcf03e36f00              # double 0.0047720037966560991
	.quad	0x3fd3962ca1f85daa              # double 0.30604091470146477
	.quad	0x3fdc1d7e2b5d7a26              # double 0.43930010065915537
	.quad	0x3fe5fec8daaf1672              # double 0.68735163413721367
	.quad	0x3feda567b6a2e8df              # double 0.92644105597653581
	.quad	0x3fab7227c186de40              # double 0.053605310796623673
	.quad	0x3fbd3469b2bb1a00              # double 0.11408100713297387
	.quad	0x3fec8994a934d695              # double 0.89179451988339287
	.quad	0x3fea2aad1cb8f33c              # double 0.81770949945312265
	.quad	0x3fb4c9e6d54d0330              # double 0.081205775332830354
	.quad	0x3fed25bc63838da8              # double 0.91085643230728852
	.quad	0x3fe75c52f73bc059              # double 0.73002002990507286
	.quad	0x3fe6cdb895c975c3              # double 0.71261243109955108
	.quad	0x3fe4b6cf693b38d0              # double 0.64731569817538492
	.quad	0x3fede8584056fcc7              # double 0.93461239401212814
	.quad	0x3fdb05f29e8389ba              # double 0.4222380207048918
	.quad	0x3fd00feec4c09678              # double 0.25097245420543102
	.quad	0x3fe5b3d43edde221              # double 0.67820179251345192
	.quad	0x3fb45bb0d01861f8              # double 0.079524088673117777
	.quad	0x3fc2743b48da37e4              # double 0.144172106335133
	.quad	0x3fec5d7740d4fc6b              # double 0.88640940344329289
	.quad	0x3fed695cd39f1b53              # double 0.91911164600683504
	.quad	0x3fe7e355c55dd70e              # double 0.74650085971981794
	.quad	0x3fd878fa3424d586              # double 0.38238387195755086
	.quad	0x3fd3d05155ad2b5a              # double 0.30958970419731247
	.quad	0x3febefda0401f05c              # double 0.87302876265267626
	.quad	0x3fd6142f6e321d36              # double 0.34498201142601503
	.quad	0x3fee85a06603b039              # double 0.95381183552445414
	.quad	0x3fdc96fce12435b0              # double 0.44671556459874306
	.quad	0x3fea855087627e54              # double 0.8287737507088857
	.quad	0x3fed238430a9398f              # double 0.91058549408062273
	.quad	0x3fe8f3aa32c61e42              # double 0.77974424282815158
	.quad	0x3fe111462b066c0a              # double 0.53335865405404204
	.quad	0x3fe947be5fd4b8c0              # double 0.7900077697466017
	.quad	0x3feaa7a645afa992              # double 0.83296502695638908
	.quad	0x3fa621fc33506e40              # double 0.043228036178529994
	.quad	0x3fbfd19ea5b0cca8              # double 0.12429229302579137
	.quad	0x3fce80f58ce2dfc0              # double 0.23831052188120161
	.quad	0x3fe1985953464a80              # double 0.54984728111806191
	.quad	0x3feb104e32ae17aa              # double 0.8457404126972865
	.quad	0x3fec2b3ded46fecf              # double 0.88027855246760989
	.quad	0x3fe0630e4144524e              # double 0.5120917582267539
	.quad	0x3fe80c3a3f977d3f              # double 0.75149261875404949
	.quad	0x3feba076a8f5d4fa              # double 0.86333783149771581
	.quad	0x3fd2170094ee46f4              # double 0.2826539472963383
	.quad	0x3fd778a507c46eb0              # double 0.36673856504942659
	.quad	0x3fd392c2bfd401ba              # double 0.3058325646707335
	.quad	0x3fe2c750e8edd967              # double 0.58683057302441177
	.quad	0x3fb18fceced219c0              # double 0.068600583546959193
	.quad	0x3fb27edee7b9b218              # double 0.072248393605783057
	.quad	0x3fe5901b242956c9              # double 0.6738410669592777
	.quad	0x3fe6a600443f7a84              # double 0.70776379899673758
	.quad	0x3fd03c81de188e36              # double 0.2536930722146481
	.quad	0x3fe63d6100b7b7cd              # double 0.69499254360356988
	.quad	0x3fc362b9ddcbc86c              # double 0.15145037965664032
	.quad	0x3fd0ebd0af3ab208              # double 0.26439301597818643
	.quad	0x3fe86df5144ecbb4              # double 0.76342252699247703
	.quad	0x3fe351870cef4bdf              # double 0.60370209242170947
	.quad	0x3fe11640ef2cfd14              # double 0.53396650995265071
	.quad	0x3fe370e9443bb13a              # double 0.60753310515205006
	.quad	0x3fa3ed18f12dd020              # double 0.03891828483656945
	.quad	0x3fe9a78be5edd224              # double 0.80170245082860391
	.quad	0x3fe6e2943210ff92              # double 0.71515855578035059
	.quad	0x3fee66223dea627a              # double 0.94996749966510596
	.quad	0x3fe242f5445b3689              # double 0.57067359305229204
	.quad	0x3f9bf362f44fc720              # double 0.027295633470152514
	.quad	0x3fd2056c9b8ef0e6              # double 0.2815810698628084
	.quad	0x3fea2798a0ba7890              # double 0.81733352081552546
	.quad	0x3feaa5279fd1f4e3              # double 0.83266049589988389
	.quad	0x3fc4ac7cbd6ec1b4              # double 0.16151389360085278
	.quad	0x3fe3c8b121e310a6              # double 0.61824852579640743
	.quad	0x3feeb2991ce73961              # double 0.95930152554664627
	.quad	0x3f70230fa01ba700              # double 0.003939686810306986
	.quad	0x3fc390faea291d40              # double 0.15286194261191532
	.quad	0x3fcb3aa3eda28700              # double 0.21272706130280739
	.quad	0x3fe21be7f43e09db              # double 0.56590650275785082
	.quad	0x3fc8827663c19540              # double 0.19148139830500988
	.quad	0x3fd743a7702fb030              # double 0.3635042758530771
	.quad	0x3fe482a3f47d3b6d              # double 0.64094732047838721
	.quad	0x3fecb0be08bcd813              # double 0.89657499033524102
	.quad	0x3fde65947cdc53a6              # double 0.47494995301650034
	.quad	0x3fe1eae87f4b11ed              # double 0.55992531644784338
	.quad	0x3fc9c1ef6f845dd4              # double 0.20123093552750382
	.quad	0x3fd2d05ca91dc786              # double 0.29396740451112924
	.quad	0x3fef17baa2aed860              # double 0.97164661191960632
	.quad	0x3fddcfd29436af80              # double 0.46580948328004723
	.quad	0x3fe0d399d88b6561              # double 0.52583019536829678
	.quad	0x3fd0d6381c196044              # double 0.26307490104727926
	.quad	0x3fe6b765926a3c92              # double 0.70988730045964332
	.quad	0x3fc8aeb26bc97ec0              # double 0.19283132803956526
	.quad	0x3fec7d556e6f17a7              # double 0.89029952592021722
	.quad	0x3fdedb720b9aa4d2              # double 0.48214388974390687
	.quad	0x3fea2f204613d02c              # double 0.81825269400588274
	.quad	0x3fd174577becce46              # double 0.27272593595555283
	.quad	0x3fda6d82a28a5cb2              # double 0.41293397782414865
	.quad	0x3fed27b9d86275d1              # double 0.9110993601095122
	.quad	0x3fb6f81f4185a690              # double 0.089723542687034418
	.quad	0x3fd05a91334e19a0              # double 0.25552778253804753
	.quad	0x3fe4d815d1efb93b              # double 0.65137759211737689
	.quad	0x3fe1a94dc5ff900f              # double 0.55191696807423962
	.quad	0x3fd37ee6e16e3e02              # double 0.3046204759093315
	.quad	0x3fe97c95053ff355              # double 0.79645777726509925
	.quad	0x3febbba21e52bdb5              # double 0.86665445253850371
	.quad	0x3fe05838700f284d              # double 0.51076909910740087
	.quad	0x3fe67360bb17bf55              # double 0.70158421079211541
	.quad	0x3fe5064c90b5f36a              # double 0.6570189310437915
	.quad	0x3fe4aa8e8d6a7f48              # double 0.64581992740929994
	.quad	0x3fe343ebbdf25156              # double 0.60204112147270439
	.quad	0x3fe3c9c04b99cfb9              # double 0.61837782636438654
	.quad	0x3fe76948353b021d              # double 0.7316018142374251
	.quad	0x3fc9009ec55a68e4              # double 0.19533142696747696
	.quad	0x3fe81f49ef4f7ea0              # double 0.75381943455063904
	.quad	0x3fe32d2ab9cf1c73              # double 0.59926353731942894
	.quad	0x3faf820dda51a2c0              # double 0.061539109134917336
	.quad	0x3f790b7f8cb49300              # double 0.0061144812018809613
	.quad	0x3fd3c421d944cf6a              # double 0.30884596078543913
	.quad	0x3fcaea6328f82e00              # double 0.21027793407880324
	.quad	0x3fe36d78beffcae2              # double 0.6071132402851982
	.quad	0x3fd0ec141f787a56              # double 0.2644090945558778
	.quad	0x3fe75738814a7fef              # double 0.72939706089164058
	.quad	0x3fefe50994a471ff              # double 0.99670866996490292
	.quad	0x3fbedf8cab37c1b8              # double 0.12059859447595656
	.quad	0x3fbbe939a4477908              # double 0.10902748356554437
	.quad	0x3fe48573455ef109              # double 0.6412903170489993
	.quad	0x3fa70dcf415c5df0              # double 0.045027233818640044
	.quad	0x3fd4e414c8e922b6              # double 0.32642097110923929
	.quad	0x3fb9e1db4acf4fd8              # double 0.10110254837428501
	.quad	0x3fedec5c044bc890              # double 0.93510247077053243
	.quad	0x3fe496e500a1fbb6              # double 0.64341974376281175
	.quad	0x3fe4ac681eff05a0              # double 0.64604574254933667
	.quad	0x3fd10324a315afc2              # double 0.26581684042207254
	.quad	0x3fd6374d05432756              # double 0.34712529672525727
	.quad	0x3fe2b13e0c1a8ab7              # double 0.5841360317611678
	.quad	0x3fd9d6f7dcf3df76              # double 0.40374561860470892
	.quad	0x3fda6e42c2c199a8              # double 0.41297978419461367
	.quad	0x3fd90f1c5d4c756c              # double 0.39154728995511934
	.quad	0x3fc01c168d000cd8              # double 0.12585718045020289
	.quad	0x3fad64a7cf64df80              # double 0.057408565584807114
	.quad	0x3fe541f8aa29f223              # double 0.66430314288260595
	.quad	0x3fbd7ae9fc6965b8              # double 0.11515676891703819
	.quad	0x3fe67f4c599ee6cc              # double 0.70303933624310266
	.quad	0x3fd4a7da8d130542              # double 0.32274497772967348
	.quad	0x3fecea074f36213f              # double 0.90356793852792083
	.quad	0x3fd6a7d4aae3f234              # double 0.35399357498662032
	.quad	0x3f74f9512e533380              # double 0.0051205798274168712
	.quad	0x3fe886c573687be9              # double 0.76645157375957951
	.quad	0x3fd3f780f4dad304              # double 0.3119814292106613
	.quad	0x3fcc2ab21684d0c0              # double 0.22005296802092822
	.quad	0x3fecf22b542c7081              # double 0.90456167640833496
	.quad	0x3fd5724a34c4ddfa              # double 0.33510069993232572
	.quad	0x3fe63a66408fa7e3              # double 0.69462883576965984
	.quad	0x3fee89245356e5bd              # double 0.95424095418200461
	.quad	0x3fee83b9defe6584              # double 0.95357984116996918
	.quad	0x3fd8e04f27721e1e              # double 0.38869074680448701
	.quad	0x3feb5781b89498ad              # double 0.8544319729887967
	.quad	0x3fe2aaca19932c20              # double 0.58334832186790564
	.quad	0x3fea307673d0ed5d              # double 0.81841585750900558
	.quad	0x3fee1b8a9338660d              # double 0.94086197618452305
	.quad	0x3fc48b51d77b1b38              # double 0.16050169965293448
	.quad	0x3feb09ec7f050b2e              # double 0.84496140297446742
	.quad	0x3fe65b805015a2cb              # double 0.6986695827627839
	.quad	0x3fefc1c6ce2bc42a              # double 0.99240436809316646
	.quad	0x3f7c5ff45dbbf480              # double 0.0069274468949035439
	.quad	0x3fe661578693acca              # double 0.6993825558141904
	.quad	0x3f9466381923d4a0              # double 0.019921185049459056
	.quad	0x3fe4d1d3d0a4977b              # double 0.65061369658063428
	.quad	0x3fbb438472ef08b0              # double 0.10649898344039133
	.quad	0x3fd85a6906f81e7e              # double 0.38051820450389318
	.quad	0x3fdc8885ebebc7f8              # double 0.44583271063959229
	.quad	0x3fd87fd812abc174              # double 0.38280298064548579
	.quad	0x3fca6b9744920c28              # double 0.20640841339272353
	.quad	0x3f6201fbbbe9ce00              # double 0.0021982113533398628
	.quad	0x3fd33ddf8f931d46              # double 0.3006514455887167
	.quad	0x3fc804dc1a03f02c              # double 0.18764830847055813
	.quad	0x3fe9d2c4543f0de6              # double 0.80697838262898069
	.quad	0x3fe4ba3b457ca048              # double 0.64773334094662349
	.quad	0x3fe63b0da4bef6b8              # double 0.69470865418380523
	.quad	0x3fe69b7ec90dd4c6              # double 0.70648135441174342
	.quad	0x3fd37bb43705bd42              # double 0.30442529080660929
	.quad	0x3feda9cc3b99b691              # double 0.92697726860724761
	.quad	0x3fde9adde2d25a9a              # double 0.47820231581264638
	.quad	0x3fe3992ce4c7b7f5              # double 0.6124481647836989
	.quad	0x3fe8a2a5af744118              # double 0.76985439556486579
	.quad	0x3fe84d1aa850e68b              # double 0.75941212534162739
	.quad	0x3fdeb9e67f4bc674              # double 0.48009645873307893
	.quad	0x3fbf9bae183b9da0              # double 0.12346923915503405
	.quad	0x3fe4a75ba1f6ff1a              # double 0.64542943605190151
	.quad	0x3fe7575a86b72995              # double 0.72941328345887035
	.quad	0x3fe3160ea6e4ffc4              # double 0.59644253346049725
	.quad	0x3fe02c9a80875727              # double 0.50544476607567368
	.quad	0x3fe09292fca25ac6              # double 0.51789235441796033
	.quad	0x3fd3d5c5685e85b0              # double 0.30992255394275059
	.quad	0x3fe579a117a4b322              # double 0.67109732263415744
	.quad	0x3fe2aeaf138c7534              # double 0.58382371728990856
	.quad	0x3fc7b2fc3b3357d4              # double 0.18514969721462526
	.quad	0x3fe100f8c9203613              # double 0.5313686302412769
	.quad	0x3fa5c3433eed27d0              # double 0.042505361014789522
	.quad	0x3fb32a022334d788              # double 0.074859746547046524
	.quad	0x3fee06b47db7783e              # double 0.93831848672903795
	.quad	0x3fe912a534980396              # double 0.78352604171969875
	.quad	0x3fd1c6cfe1623d3e              # double 0.27775952348834554
	.quad	0x3fef0a98019baad5              # double 0.97004318536832079
	.quad	0x3feefcf673f405e1              # double 0.96837923667061087
	.quad	0x3fb021aa8370b0d0              # double 0.063013703431980206
	.quad	0x3fd96dbb7e7af1b8              # double 0.39732253409945484
	.quad	0x3fdb68ffd3abfdcc              # double 0.42828365012243519
	.quad	0x3fe48922b7eba8ba              # double 0.64174018785458675
	.quad	0x3fe5a89593f297f2              # double 0.67682913681050949
	.quad	0x3fd7afeb0ce334b8              # double 0.37011219271228013
	.quad	0x3fc0dd7611b4d0e4              # double 0.13175845970693623
	.quad	0x3fd95e1eb1e1214a              # double 0.39636962290798705
	.quad	0x3fe77e404f6690c8              # double 0.7341615248483544
	.quad	0x3fc0cccd8b52b73c              # double 0.13125008871923594
	.quad	0x3fe83e7b3ec46e92              # double 0.75762712725868853
	.quad	0x3f5b1c5b87629600              # double 0.0016547101818472632
	.quad	0x3f5c9da946d40200              # double 0.001746573743105384
	.quad	0x3fe1b78c3b45b9b0              # double 0.55365573479303087
	.quad	0x3fe20bae4c13c40b              # double 0.56392588480787376
	.quad	0x3fe37e31ba7658bb              # double 0.60915457170883458
	.quad	0x3fd71335f12c58b8              # double 0.3605475287635147
	.quad	0x3fe3b2f6e38fac44              # double 0.61559624143172487
	.quad	0x3fdee04dc25308ae              # double 0.48244041420924588
	.quad	0x3feab2c44fce5bb9              # double 0.83432212435842878
	.quad	0x3fec449aeffbfc2e              # double 0.88337466117798669
	.quad	0x3fe8ea8d76442c41              # double 0.77863190745245714
	.quad	0x3fbbf224883ec390              # double 0.1091635544423879
	.quad	0x3fe22402f0a24c97              # double 0.56689593314003417
	.quad	0x3fe43c19f67fc48f              # double 0.63233659881929494
	.quad	0x3fe6892f826d4b88              # double 0.70424628709803105
	.quad	0x3fec5e0dd8978425              # double 0.88648121169183425
	.quad	0x3fd5bdaac87ca86e              # double 0.33970136240771509
	.quad	0x3fbb7b16e0a4a300              # double 0.10734694466067296
	.quad	0x3febf521c6512f1e              # double 0.87367333158315197
	.quad	0x3fef078cbc593e89              # double 0.96967160021627407
	.quad	0x3fbab02115868e18              # double 0.10425001884009821
	.quad	0x3fe3d2f68752a645              # double 0.6195023196243673
	.quad	0x3fd210cf5290130a              # double 0.28227599203846465
	.quad	0x3fbb81d9fab7ee88              # double 0.10745012637192464
	.quad	0x3fe748b7a0380520              # double 0.72762662213077434
	.quad	0x3fd984dfd53ebeca              # double 0.398735006568114
	.quad	0x3fe8ed068d4ef62a              # double 0.77893378829293636
	.quad	0x3fef801d3b9360c4              # double 0.9843889392459677
	.quad	0x3febe92ec77d1011              # double 0.87221468889811338
	.quad	0x3fb2917acc3bdbe8              # double 0.072532343732617854
	.quad	0x3fbdfcde397c3070              # double 0.11713971045918625
	.quad	0x3fddf53aa9943168              # double 0.46809259949147597
	.quad	0x3fd34e2f953dccc0              # double 0.30164708685260777
	.quad	0x3fe3fbd2fb8b72a9              # double 0.62449025277927206
	.quad	0x3fbf700cb1b76b08              # double 0.12280349100857901
	.quad	0x3fd79f56df33d3bc              # double 0.36910030171503272
	.quad	0x3feb7f81b1c0c877              # double 0.85931477277178103
	.quad	0x3fb89ee51822bfd8              # double 0.096174543755068398
	.quad	0x3fe6d1be955abe77              # double 0.71310357256693535
	.quad	0x3fe2099479293ea7              # double 0.56366943039207207
	.quad	0x3fe85f7a423c98f4              # double 0.76165497719628527
	.quad	0x3fca70e59015a678              # double 0.20657033477191411
	.quad	0x3fef965caf0751b4              # double 0.98710474190970964
	.quad	0x3feb505b567fa675              # double 0.85355917829765693
	.quad	0x3fda7903db5945c8              # double 0.41363617344640291
	.quad	0x3fe52106778a48d9              # double 0.66028140399637458
	.quad	0x3fed7efc36a42976              # double 0.92175112411614069
	.quad	0x3fe5b216644bb81e              # double 0.67798919285792514
	.quad	0x3feea129fec9d68a              # double 0.95717334521641928
	.quad	0x3fe6aa8fc0ae4066              # double 0.70832049973433864
	.quad	0x3fe44bba0d1afa0b              # double 0.63424398955959427
	.quad	0x3f9e7900d6dae1c0              # double 0.029758465875348028
	.quad	0x3fe187446ef524dc              # double 0.54776212378888145
	.quad	0x3fef5e8627cc2bf8              # double 0.98028857968290505
	.quad	0x3fd9620043ce5570              # double 0.39660650846175027
	.quad	0x3fdc4965ba0641ba              # double 0.44197981993150004
	.quad	0x3fb428ec4c5563c8              # double 0.078749436031457454
	.quad	0x3fe3cc59921fe626              # double 0.61869505443536776
	.quad	0x3fc5e2e9109c9288              # double 0.17098725615609944
	.quad	0x3fbc0bfbf50ddb20              # double 0.10955786450163574
	.quad	0x3fd1f5057ee544f2              # double 0.28057992355486683
	.quad	0x3fdcc01901a4ea0e              # double 0.44922471199575476
	.quad	0x3fd898c12f0a1a36              # double 0.38432340234467988
	.quad	0x3fb0e3a953947e08              # double 0.065973837762150933
	.quad	0x3fd7ed28f933ae92              # double 0.37385010086175285
	.quad	0x3fe3415ad976ddb9              # double 0.6017278907156004
	.quad	0x3fa323a921ec2910              # double 0.037381444350176207
	.quad	0x3fd37966add92ee6              # double 0.30428473451023164
	.quad	0x3fa6b956cf36cb10              # double 0.044382775110895278
	.quad	0x3fc6d91f5849057c              # double 0.17850105105211955
	.quad	0x3fb025fa96cf9920              # double 0.063079511469912308
	.quad	0x3fc7b756435e1110              # double 0.18528250016618886
	.quad	0x3fe6edfc1ce230dc              # double 0.71655088082618645
	.quad	0x3fbf57bccf3c3b08              # double 0.12243251857237791
	.quad	0x3fdb4ddbff1fa42c              # double 0.42662715830244013
	.quad	0x3fe17fe8cbd2c98c              # double 0.54686393555884782
	.quad	0x3fe0b01a34375e20              # double 0.5214968700265139
	.quad	0x3fe6d53d67e35f9d              # double 0.71353025713596063
	.quad	0x3fea2b9251619cac              # double 0.81781879324707551
	.quad	0x3f9c63e07e644d20              # double 0.02772475024637544
	.quad	0x3fd9b4891e762f0e              # double 0.40164401983996434
	.quad	0x3f97bbcdd64969a0              # double 0.023177353099848141
	.quad	0x3fe89b44f55ab53c              # double 0.76895378037230655
	.quad	0x3fd489b885df2c76              # double 0.32090581010260821
	.quad	0x3fd5197560abd18e              # double 0.32967886391204437
	.quad	0x3fec7e05ed636611              # double 0.89038368573091209
	.quad	0x3fabf23c81ead090              # double 0.054582491740263639
	.quad	0x3fd6d4eaa9c2d08c              # double 0.35674540117475639
	.quad	0x3fe23af3fa2c6e10              # double 0.56969641553900097
	.quad	0x3fdd1eba34e6d3c6              # double 0.45500044981173138
	.quad	0x3fdf2dd4353c4484              # double 0.48717217634936838
	.quad	0x3fe872409d4980ec              # double 0.76394682617322251
	.quad	0x3febadbe702f2595              # double 0.86495897208185346
	.quad	0x3fd73ea20ec25994              # double 0.36319781724287137
	.quad	0x3fd6d8226ec13864              # double 0.35694180313010393
	.quad	0x3fa5ebb5720c0480              # double 0.042813940212007573
	.quad	0x3fe4fdb0086292c2              # double 0.6559677280207199
	.quad	0x3fdc5307df759698              # double 0.44256779501152144
	.quad	0x3fdeed50355237a2              # double 0.48323445517677943
	.quad	0x3fe33b195562884c              # double 0.6009642284082104
	.quad	0x3fee5a1cf618e290              # double 0.94850013795719867
	.quad	0x3fc3b8236661df94              # double 0.15405695437561617
	.quad	0x3fed6d9f67f44bb1              # double 0.9196316748005896
	.quad	0x3fd5198167721626              # double 0.32968173124422362
	.quad	0x3fbb10f0ffad2e38              # double 0.10572725526906701
	.quad	0x3fd9c1a7ef209290              # double 0.40244482376355339
	.quad	0x3fe5b58a38bbafd0              # double 0.67841063576406135
	.quad	0x3fe521cda0501c99              # double 0.66037637053604492
	.quad	0x3fc46d9bf812cdd0              # double 0.15959500897370882
	.quad	0x3feb088bbbabf856              # double 0.84479319243088002
	.quad	0x3fe02bb4b4f6e40b              # double 0.50533519119847037
	.quad	0x3fea0e48578ebe08              # double 0.8142434797391056
	.quad	0x3fece21e3f2435bb              # double 0.90260231334985208
	.quad	0x3fc33f3a93202398              # double 0.15036709007133875
	.quad	0x3fdfb02c281910b0              # double 0.49512771526157007
	.quad	0x3febc7f0d3633cab              # double 0.86815682684563933
	.quad	0x3fe12468360e53d0              # double 0.53569422300153668
	.quad	0x3fe965a159a16577              # double 0.79365603929470196
	.quad	0x3fca56650dbd57c0              # double 0.20576155825500386
	.quad	0x3fcd6b95a3e9b864              # double 0.2298457193714426
	.quad	0x3f734f76daee2f80              # double 0.0047144549161081128
	.quad	0x3fe985db9d917e13              # double 0.79759007239403201
	.quad	0x3fcd083dd7813fa0              # double 0.22681401274394108
	.quad	0x3fca09d533ef9bd4              # double 0.20342507396637066
	.quad	0x3fa32d03249f1060              # double 0.037452791424158915
	.quad	0x3fc7a4f8d47bf958              # double 0.18472204566200889
	.quad	0x3fe574b9e89867e9              # double 0.67049880436684106
	.quad	0x3fc0ee36b0476dcc              # double 0.13226970298170071
	.quad	0x3fb02c55da25f960              # double 0.063176503905173487
	.quad	0x3fdaff3e082fc0fe              # double 0.42182875441996248
	.quad	0x3fd11cdbcd2ace2a              # double 0.26738638912067592
	.quad	0x3fb52c66f47707f0              # double 0.08270877331145221
	.quad	0x3fc394603bdba3ec              # double 0.15296557352783624
	.quad	0x3fd402e69aa7aad8              # double 0.31267705061934015
	.quad	0x3fe426ad8e48a940              # double 0.62972142972765965
	.quad	0x3fea37a2fed2c0fb              # double 0.81929158945243274
	.quad	0x3fe19c9e3abeddab              # double 0.55036841844314688
	.quad	0x3febe01069b7242c              # double 0.87110157630480022
	.quad	0x3fd685b187573b2e              # double 0.3519100019156437
	.quad	0x3fdc957feb669b3a              # double 0.44662473667488067
	.quad	0x3fd01f3a40b14892              # double 0.2519059783709362
	.quad	0x3fd786ffb911b384              # double 0.36761468003424391
	.quad	0x3fc25f8d944dd538              # double 0.14354104749114938
	.quad	0x3fdecf3c6810b84e              # double 0.48139867937687064
	.quad	0x3fe91a5fc1a436a2              # double 0.78446948834035291
	.quad	0x3fe606774e08e511              # double 0.68828931084786593
	.quad	0x3fe71417fb8a7424              # double 0.72120284203595419
	.quad	0x3feb86a4e9ae0a62              # double 0.86018605843157681
	.quad	0x3fdd81dcbf3db8d2              # double 0.46105116535080726
	.quad	0x3fc38213dc35174c              # double 0.15240715267480665
	.quad	0x3fa905e3f43e9f10              # double 0.04887306553365367
	.quad	0x3fc0a961fe9f85b4              # double 0.13016915257234773
	.quad	0x3fdc8dda30ae4650              # double 0.44615797761898524
	.quad	0x3fed83f4bcea8cf6              # double 0.92235791108797005
	.quad	0x3fbcbae884723eb0              # double 0.11222699388076296
	.quad	0x3fd3b0ee17250a8a              # double 0.30767395267700037
	.quad	0x3fcd1ca0716ab6f4              # double 0.22743611848766643
	.quad	0x3fd1c38f37e7e364              # double 0.27756100139190765
	.quad	0x3fe4b0eed76a7480              # double 0.64659826348692206
	.quad	0x3fd3edf4f4160bcc              # double 0.31139873348746216
	.quad	0x3fe1783e60f07db2              # double 0.54592818196754522
	.quad	0x3fc7c5a0e6cdc824              # double 0.18571864385336412
	.quad	0x3fc3446abea9bb44              # double 0.15052542028157678
	.quad	0x3fe4f7802419c8d1              # double 0.65521246958658186
	.quad	0x3f72242d34629d80              # double 0.0044290319257592747
	.quad	0x3fe731681d4a77e4              # double 0.72478109093549081
	.quad	0x3fb7c91b7ff6daa0              # double 0.092912405720975588
	.quad	0x3fd93749751d0f34              # double 0.39399944722048308
	.quad	0x3fb75b3fd4d773a0              # double 0.091236104453356948
	.quad	0x3fd7a9ccedae1924              # double 0.36973880015320248
	.quad	0x3fec7631305274d7              # double 0.88942775190266843
	.quad	0x3fe396eba5fe81de              # double 0.61217291279541164
	.quad	0x3fd8a94474704732              # double 0.38533126231151293
	.quad	0x3fea2e560dbe127d              # double 0.81815626796794982
	.quad	0x3fd2d862fd9cbe0a              # double 0.29445719496558864
	.quad	0x3fa1f4723b406d30              # double 0.035068101628178971
	.quad	0x3fd0ad3c2c927004              # double 0.26057342865692612
	.quad	0x3fe5557363026319              # double 0.66668099725493157
	.quad	0x3fe874e7e4bfaa49              # double 0.76427073171118665
	.quad	0x3fc936fd17822d94              # double 0.19699062011600843
	.quad	0x3fbcf706da987810              # double 0.11314432942205621
	.quad	0x3fa8b2aab2da41c0              # double 0.048238119442547411
	.quad	0x3fe794a00f256c62              # double 0.73689272840728059
	.quad	0x3fcadb7fed8c6324              # double 0.20982359980623599
	.quad	0x3fdf1e1add5a214e              # double 0.48621245972073701
	.quad	0x3fe99c7fe24c5cd1              # double 0.8003539485825063
	.quad	0x3fd2e2569cf43168              # double 0.29506459548499331
	.quad	0x3fc7c8ceb83d5888              # double 0.18581565853191173
	.quad	0x3fa4da33aad36640              # double 0.040727247812992307
	.quad	0x3fe1c002da1e9e0d              # double 0.55468885995372974
	.quad	0x3fda5b5f2439b226              # double 0.41182688272127377
	.quad	0x3fd893d9be0d63bc              # double 0.38402408180041525
	.quad	0x3fc09deed4559e70              # double 0.12981973045247086
	.quad	0x3fec9ac6b86d1f7e              # double 0.89389358540300612
	.quad	0x3faa73f45cfdf820              # double 0.051665912963457794
	.quad	0x3fd27d180d343086              # double 0.28888512887420636
	.quad	0x3fe2a3b040164de5              # double 0.58248150364891826
	.quad	0x3fb410ae176a4658              # double 0.078379517284952072
	.quad	0x3fd6791cb1943590              # double 0.35114209500974258
	.quad	0x3fb6e9202e148078              # double 0.089494715929051227
	.quad	0x3fc75a96ff71f1c4              # double 0.18245208237557453
	.quad	0x3fc342c3f1803b04              # double 0.15047501842533262
	.quad	0x3fb8c78b83c0e030              # double 0.096794814745295054
	.quad	0x3fe60d8c61cb1311              # double 0.68915385341878921
	.quad	0x3fe6f210651b4057              # double 0.71704883334497083
	.quad	0x3fda500c09afd55a              # double 0.41113568254453059
	.quad	0x3fd1de7b250e6ec6              # double 0.27920416468417064
	.quad	0x3fabf900357aa0a0              # double 0.054634100464057811
	.quad	0x3fd48382de70dc28              # double 0.320526807048227
	.quad	0x3fd5a5c4c76dbdfc              # double 0.33824271655518579
	.quad	0x3fe693c74a06c712              # double 0.70553936441703713
	.quad	0x3feb85c348fecaff              # double 0.86007847077266308
	.quad	0x3f93e38bb6aed840              # double 0.019422705674252194
	.quad	0x3fd1d4529a422f08              # double 0.27858414711293777
	.quad	0x3fe2d5eca014a74c              # double 0.58861380830533383
	.quad	0x3fef1ac3a3d50ca4              # double 0.97201711653214717
	.quad	0x3fa185b87efd81e0              # double 0.03422333288358792
	.quad	0x3fe90516f34e728d              # double 0.78187129517353215
	.quad	0x3f86d985dec23540              # double 0.011157079563668959
	.quad	0x3fef0fc73cae7529              # double 0.97067605831003789
	.quad	0x3fd338382f69c0e4              # double 0.30030636434731961
	.quad	0x3fbdad4b13d48798              # double 0.11592549547324749
	.quad	0x3fe4a676498dcfd4              # double 0.64532007566458072
	.quad	0x3fd05757b766b0ce              # double 0.25533097181574937
	.quad	0x3fee0b6b358f6aab              # double 0.93889389477711427
	.quad	0x3fd90be683626f7c              # double 0.39135134535330685
	.quad	0x3fd9bdd6d053a41c              # double 0.40221186012655763
	.quad	0x3fb68aebf2c9af40              # double 0.088057276510594029
	.quad	0x3fe99547aca0101f              # double 0.7994726535403095
	.quad	0x3fed4ef1c7c24bc3              # double 0.9158867742102007
	.quad	0x3fdfae56696207c6              # double 0.49501571933080546
	.quad	0x3faf3df0757ff5f0              # double 0.061019434302561737
	.quad	0x3fbb0c9d34c99ea0              # double 0.10566122568854519
	.quad	0x3fb4d89348d468a0              # double 0.081429677277272905
	.quad	0x3fedef85554f8b18              # double 0.93548838293313263
	.quad	0x3fa01eecf3a67150              # double 0.031485943548633544
	.quad	0x3fdb92adcb33a60a              # double 0.43082756847306369
	.quad	0x3fe829538f43c663              # double 0.75504472714801485
	.quad	0x3fe1462a79c0ae30              # double 0.53981517581764216
	.quad	0x3fe3b37ae9f0e65d              # double 0.6156591958198977
	.quad	0x3fc89e082dd07f44              # double 0.19232275235207841
	.quad	0x3feca5eb1fa8fb52              # double 0.89525371726618119
	.quad	0x3fed2878788b78d8              # double 0.91119025749119498
	.quad	0x3fec672f93c4158c              # double 0.88759592876947257
	.quad	0x3fecc6396deb78c2              # double 0.89919730633462103
	.quad	0x3fef882ed79ef055              # double 0.98537389863441637
	.quad	0x3fd765bbfab40246              # double 0.36558436854105414
	.quad	0x3fe118040a667017              # double 0.53418161422041777
	.quad	0x3fe9777270cdc441              # double 0.79583093673694105
	.quad	0x3fe98d5532b9d2b3              # double 0.79850253970524532
	.quad	0x3fef8b3c2d593f78              # double 0.98574646813538802
	.quad	0x3fd9640562a8dd0c              # double 0.39672979960182952
	.quad	0x3fe9e77106187e67              # double 0.8095021361404634
	.quad	0x3fe584577040c58a              # double 0.67240497517029607
	.quad	0x3fe8cf0bf4ed3f6e              # double 0.77527425610786138
	.quad	0x3fdaae54e00719da              # double 0.41689035299023447
	.quad	0x3fe0f70f2049d736              # double 0.53015857988677939
	.quad	0x3fb5252081fe7aa8              # double 0.082597762810545761
	.quad	0x3fde89da685868ca              # double 0.47716388883567318
	.quad	0x3feb08d87a44c40e              # double 0.84482978706921741
	.quad	0x3fdecf54cd2fb4ec              # double 0.48140449559907839
	.quad	0x3fec53707a9dcc07              # double 0.88518547009005111
	.quad	0x3fd8219852fd115c              # double 0.37705047706937989
	.quad	0x3fdb975063d38fac              # double 0.43111047505066824
	.quad	0x3fe3e1eccff13b2a              # double 0.62132874120456916
	.quad	0x3febf37045b7d009              # double 0.87346662155914701
	.quad	0x3fc7a840629b4d40              # double 0.18482212843682966
	.quad	0x3fca38bf994ebc34              # double 0.20485682473869959
	.quad	0x3fa63b070dad3720              # double 0.043419094485768861
	.quad	0x3fe51892cad76652              # double 0.65924968354665681
	.quad	0x3fcbb1ca66aad108              # double 0.21636323941277902
	.quad	0x3fefcb190e7a2b11              # double 0.99354222133237801
	.quad	0x3fc0b6a57c3b4888              # double 0.13057392660136125
	.quad	0x3fed76f83cf5923f              # double 0.92077266603570951
	.quad	0x3fd942c23b0ed896              # double 0.39469962851888718
	.quad	0x3fcc3bbb48e31020              # double 0.22057286318715885
	.quad	0x3fed95f20ae58b68              # double 0.92455389145139311
	.quad	0x3fc0442feef467c4              # double 0.12708090942106598
	.quad	0x3fd23c290b9f17b8              # double 0.28492189536006718
	.quad	0x3fbc8586d64ab208              # double 0.11141245586140525
	.quad	0x3feb14898931bf64              # double 0.84625698848502084
	.quad	0x3fe4c6d2a94a6671              # double 0.6492703730065853
	.quad	0x3fe0c0dbc87df9ec              # double 0.52354230078327424
	.quad	0x3fce0f9c31a5b284              # double 0.23485138343984968
	.quad	0x3fe0b810aacbbbff              # double 0.52246888502656919
	.quad	0x3fb759b6bccc5588              # double 0.091212674229913415
	.quad	0x3fdbcc13356b7880              # double 0.43433075157907552
	.quad	0x3fa65414286b4390              # double 0.043610219892463609
	.quad	0x3fe41120be242d4a              # double 0.62709080826736252
	.quad	0x3fd44c8205d464da              # double 0.31716967171958077
	.quad	0x3fb847be032ce9b8              # double 0.094844699645284858
	.quad	0x3fd5d8c32e9692f8              # double 0.34135512876154861
	.quad	0x3fed9957479f5cb1              # double 0.92496837605258098
	.quad	0x3f8148ced8797a80              # double 0.0084396514714033533
	.quad	0x3fb65de4338c8d48              # double 0.087370169244015305
	.quad	0x3fa480856f692db0              # double 0.040043039178807915
	.quad	0x3fdc42427aca07e8              # double 0.44154417029505888
	.quad	0x3fea1d0c439f847b              # double 0.81604588706626602
	.quad	0x3fce5665cb8f6980              # double 0.23701164664710106
	.quad	0x3fbc62a9a5fb33a8              # double 0.11088047315861493
	.quad	0x3fc54c0bd3eda6fc              # double 0.16638324592650366
	.quad	0x3fe0c6cb1837a25a              # double 0.52426676492639079
	.quad	0x3fcfcc3f69aab194              # double 0.24842064532766683
	.quad	0x3fe080533ad48f74              # double 0.51566468706412971
	.quad	0x3feaa3301391de12              # double 0.83242038557267706
	.quad	0x3fe314589b25e6bd              # double 0.59623365690568841
	.quad	0x3fe2dbd5f796dd4e              # double 0.58933542592323263
	.quad	0x3fc78057980a4898              # double 0.18360419200741229
	.quad	0x3fe5d53a0a779d0e              # double 0.68227865261442999
	.quad	0x3fd0570ccca3bf3e              # double 0.2553131102022127
	.quad	0x3fc3910154b3e08c              # double 0.15286270748015729
	.quad	0x3fd1f2c36e20af06              # double 0.28044210199981057
	.quad	0x3fb1c38ce14f0688              # double 0.069390110976224162
	.quad	0x3f6d97fcad5c0600              # double 0.0036125121213224087
	.quad	0x3fed7f3adc938856              # double 0.92178099709804928
	.quad	0x3fe19192264f7f11              # double 0.54901988489652542
	.quad	0x3fbbbd9db7191828              # double 0.10836206169287321
	.quad	0x3fe2cb177034c634              # double 0.58729144969237845
	.quad	0x3fd4e0f40d05f754              # double 0.32623006126219889
	.quad	0x3fedfaed67d3f5f9              # double 0.93688078192616253
	.quad	0x3fec8b8b057bb26c              # double 0.89203406401572982
	.quad	0x3fd2f2f8f3efb9a0              # double 0.29607986280361764
	.quad	0x3fdcf5707247f1ee              # double 0.4524804225946174
	.quad	0x3fef4d0b0b3189a5              # double 0.97815468012077089
	.quad	0x3fe460446910733c              # double 0.63675137062418896
	.quad	0x3fe37ab832f66407              # double 0.60873041108709536
	.quad	0x3fe7ee9bccf4950e              # double 0.74787702589370197
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
