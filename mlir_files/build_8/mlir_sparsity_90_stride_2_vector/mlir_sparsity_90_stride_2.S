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
	.quad	16                              # 0x10
	.quad	16                              # 0x10
	.quad	37                              # 0x25
	.quad	37                              # 0x25
	.quad	56                              # 0x38
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	73                              # 0x49
	.quad	97                              # 0x61
	.quad	97                              # 0x61
	.quad	113                             # 0x71
	.quad	113                             # 0x71
	.quad	128                             # 0x80
	.quad	128                             # 0x80
	.quad	148                             # 0x94
	.quad	148                             # 0x94
	.quad	167                             # 0xa7
	.quad	167                             # 0xa7
	.quad	183                             # 0xb7
	.quad	183                             # 0xb7
	.quad	201                             # 0xc9
	.quad	201                             # 0xc9
	.quad	215                             # 0xd7
	.quad	215                             # 0xd7
	.quad	236                             # 0xec
	.quad	236                             # 0xec
	.quad	265                             # 0x109
	.quad	265                             # 0x109
	.quad	286                             # 0x11e
	.quad	286                             # 0x11e
	.quad	307                             # 0x133
	.quad	307                             # 0x133
	.quad	333                             # 0x14d
	.quad	333                             # 0x14d
	.quad	350                             # 0x15e
	.quad	350                             # 0x15e
	.quad	376                             # 0x178
	.quad	376                             # 0x178
	.quad	396                             # 0x18c
	.quad	396                             # 0x18c
	.quad	414                             # 0x19e
	.quad	414                             # 0x19e
	.quad	433                             # 0x1b1
	.quad	433                             # 0x1b1
	.quad	453                             # 0x1c5
	.quad	453                             # 0x1c5
	.quad	473                             # 0x1d9
	.quad	473                             # 0x1d9
	.quad	488                             # 0x1e8
	.quad	488                             # 0x1e8
	.quad	510                             # 0x1fe
	.quad	510                             # 0x1fe
	.quad	534                             # 0x216
	.quad	534                             # 0x216
	.quad	556                             # 0x22c
	.quad	556                             # 0x22c
	.quad	575                             # 0x23f
	.quad	575                             # 0x23f
	.quad	592                             # 0x250
	.quad	592                             # 0x250
	.quad	612                             # 0x264
	.quad	612                             # 0x264
	.quad	631                             # 0x277
	.quad	631                             # 0x277
	.quad	651                             # 0x28b
	.quad	651                             # 0x28b
	.quad	672                             # 0x2a0
	.quad	672                             # 0x2a0
	.quad	694                             # 0x2b6
	.quad	694                             # 0x2b6
	.quad	706                             # 0x2c2
	.quad	706                             # 0x2c2
	.quad	728                             # 0x2d8
	.quad	728                             # 0x2d8
	.quad	749                             # 0x2ed
	.quad	749                             # 0x2ed
	.quad	781                             # 0x30d
	.quad	781                             # 0x30d
	.quad	798                             # 0x31e
	.quad	798                             # 0x31e
	.quad	812                             # 0x32c
	.quad	812                             # 0x32c
	.quad	837                             # 0x345
	.quad	837                             # 0x345
	.quad	860                             # 0x35c
	.quad	860                             # 0x35c
	.quad	875                             # 0x36b
	.quad	875                             # 0x36b
	.quad	899                             # 0x383
	.quad	899                             # 0x383
	.quad	919                             # 0x397
	.quad	919                             # 0x397
	.quad	941                             # 0x3ad
	.quad	941                             # 0x3ad
	.quad	961                             # 0x3c1
	.quad	961                             # 0x3c1
	.quad	977                             # 0x3d1
	.quad	977                             # 0x3d1
	.quad	999                             # 0x3e7
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
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
	.quad	0x3fd816d539ed535c              # double 0.37639361054362097
	.quad	0x3fe0ab58a54d9bc6              # double 0.52091629300854758
	.quad	0x3fe94cbe18540413              # double 0.79061798812483841
	.quad	0x3fdbe08391d2c200              # double 0.43557824364236808
	.quad	0x3fef953c81544a3a              # double 0.98696732768650652
	.quad	0x3fbea26ab414e670              # double 0.11966578384899562
	.quad	0x3fcfd8bb3e827ee8              # double 0.24880161812051615
	.quad	0x3fc9ef509287dc44              # double 0.20261580614871566
	.quad	0x3fd144d0fb1b8bb0              # double 0.26982521555162986
	.quad	0x3fe73fb37a2c7d29              # double 0.72652601110522597
	.quad	0x3fee8f552ce8257c              # double 0.95499666949142136
	.quad	0x3fb189ffc43b0a50              # double 0.068511948974483206
	.quad	0x3fbbedfe975c7268              # double 0.10910025782909261
	.quad	0x3fd53b1d427c90ae              # double 0.33173305027799926
	.quad	0x3fdb2b109829c334              # double 0.4245034681289781
	.quad	0x3fed413f26663a93              # double 0.91421468257779492
	.quad	0x3fde060a86bccb1a              # double 0.46911872060734228
	.quad	0x3fe53a7a9d62f211              # double 0.663388545413513
	.quad	0x3fd8f1500cfac278              # double 0.38972855823070729
	.quad	0x3fe182f52bca987e              # double 0.54723604729657871
	.quad	0x3fe7dee8f89b9782              # double 0.74596069866377968
	.quad	0x3fcf671b0efb1bfc              # double 0.24533403617371607
	.quad	0x3fc3c3f042673ed0              # double 0.15441706888531437
	.quad	0x3fd5fb62f5a56ef4              # double 0.34346841801537598
	.quad	0x3fe563dfd20fc641              # double 0.66844168689403471
	.quad	0x3fcfb43f23226108              # double 0.24768819060842184
	.quad	0x3fec7a1555ec46cc              # double 0.88990275174929811
	.quad	0x3fe154b7e3d1dad4              # double 0.54159159179729466
	.quad	0x3fe535b38c2e3122              # double 0.66280534152022974
	.quad	0x3fc6fcbd1770cc88              # double 0.1795879711586148
	.quad	0x3fc21e8d1c08afe8              # double 0.14155734890789451
	.quad	0x3fe789533d456902              # double 0.73551332442301054
	.quad	0x3feeb9505c42024a              # double 0.96012132662878824
	.quad	0x3fa057f70bfabd40              # double 0.031921119892440064
	.quad	0x3fd51c48f517e95c              # double 0.32985137877371584
	.quad	0x3feca7a7ca43fd41              # double 0.89546575074192714
	.quad	0x3feb2dffe0825d5d              # double 0.84936517571888326
	.quad	0x3fd087dc5b5401dc              # double 0.25829228323712328
	.quad	0x3fe136bd3efd34ef              # double 0.53793203642422138
	.quad	0x3fed5424d3ef86c3              # double 0.91652146714860583
	.quad	0x3fe89234ef8b1e47              # double 0.76784750734163587
	.quad	0x3fc4212eeb983238              # double 0.15726267341269007
	.quad	0x3fcc193c523593dc              # double 0.21952013029218065
	.quad	0x3f2e1aebf7cc4000              # double 2.2968416660562596E-4
	.quad	0x3fcf9f7f1c40ce0c              # double 0.24705494765804337
	.quad	0x3fec89f5a7de68ce              # double 0.89184077059624101
	.quad	0x3fed9aef07c330f9              # double 0.92516280666453021
	.quad	0x3fecd5da3289a551              # double 0.90110502119675051
	.quad	0x3fc146bea53a3fac              # double 0.13497145717383086
	.quad	0x3fead01f6e062da4              # double 0.83790561188782364
	.quad	0x3fdbdd5909892d38              # double 0.4353849976657389
	.quad	0x3fcca0d084c7a6c4              # double 0.22365766986268032
	.quad	0x3fe1885be473a725              # double 0.54789538020597617
	.quad	0x3fefe10aad3d68cb              # double 0.99622091136850465
	.quad	0x3fddb7a07cebbdba              # double 0.4643326969080267
	.quad	0x3fe68edd9fc6c3a6              # double 0.70493966299374189
	.quad	0x3fe2337ea0c7f1cb              # double 0.56878596689744521
	.quad	0x3fcfaae8e60b2334              # double 0.24740325195878088
	.quad	0x3fd7f6b605239994              # double 0.37443304540502109
	.quad	0x3fc2ed623aef3e44              # double 0.14786937596953653
	.quad	0x3fe87e1390445336              # double 0.76539018799903746
	.quad	0x3fd03635a794d5b8              # double 0.25330869069452033
	.quad	0x3fab7235151fbf50              # double 0.053605707958807813
	.quad	0x3fc2f0e0ba3dfb10              # double 0.14797600835660107
	.quad	0x3f9e38183e56e260              # double 0.029510859303373826
	.quad	0x3fc9a368deb50484              # double 0.20029936670656323
	.quad	0x3fa9b54c74729910              # double 0.050211323942948138
	.quad	0x3f8692d94f70c580              # double 0.011022279488403397
	.quad	0x3fec12805ad3aacd              # double 0.87725846995939494
	.quad	0x3fe01c114af615fc              # double 0.5034262146079409
	.quad	0x3fc2ef01fffa39c8              # double 0.14791893957995073
	.quad	0x3f9fef9e0e769b00              # double 0.031187505371828017
	.quad	0x3fe004d3098f42f5              # double 0.50058891169655217
	.quad	0x3fdd57eb51cb0a28              # double 0.45849116313562144
	.quad	0x3fec7054f177a14f              # double 0.88871237908919365
	.quad	0x3fc8a58de11ceb40              # double 0.19255231372684456
	.quad	0x3fe437941fdedc89              # double 0.63178449845044427
	.quad	0x3fb7d2407ca683c0              # double 0.093051939422834629
	.quad	0x3fd6ccd24dc64482              # double 0.35625131220974293
	.quad	0x3fdc78ba92bd8fea              # double 0.44486870126843192
	.quad	0x3fed55e90778740e              # double 0.91673709353529076
	.quad	0x3fe9ee220451979c              # double 0.81031895488262106
	.quad	0x3fac7ba88919cab0              # double 0.055630938278132702
	.quad	0x3fdcd89cc31e545e              # double 0.45072096876658019
	.quad	0x3fed41784c1ade1c              # double 0.91424193252800334
	.quad	0x3fc8229a8d0704d4              # double 0.18855602155784956
	.quad	0x3fc7a64f1f8177c4              # double 0.18476285017362504
	.quad	0x3fb3195828bd7078              # double 0.074605474420822548
	.quad	0x3fe9dd988ded1725              # double 0.80830028266857268
	.quad	0x3fcb4ab1fa472d64              # double 0.21321701737029308
	.quad	0x3fe50385c727b0d1              # double 0.65668000123471348
	.quad	0x3fed3826f933ee23              # double 0.91310452148849597
	.quad	0x3fccbb7944afe8a4              # double 0.22447124341835434
	.quad	0x3fd368da0c294bd0              # double 0.30327464282634953
	.quad	0x3fefbcff1f2a03a7              # double 0.99182087027303544
	.quad	0x3fdef8962b20c7d8              # double 0.48392252170299122
	.quad	0x3f98c993cfaa5980              # double 0.024206456708804946
	.quad	0x3fc3d8010976b090              # double 0.15502942049113644
	.quad	0x3fe983e37c0943af              # double 0.79734968400781792
	.quad	0x3fee8810a312714e              # double 0.95410949563987812
	.quad	0x3fe0b46ad73a4e49              # double 0.52202360188170716
	.quad	0x3fd6640365dcef78              # double 0.34985432574807573
	.quad	0x3fe96c3bc7303919              # double 0.79446209815958746
	.quad	0x3fec805602be9c05              # double 0.89066601310776206
	.quad	0x3fe51a2125977462              # double 0.65943963377106862
	.quad	0x3fe2e6fb4ebcdfd5              # double 0.59069600466227234
	.quad	0x3fe78fe49c6ea910              # double 0.73631506493737398
	.quad	0x3fe2ee851dc73228              # double 0.59161620918309143
	.quad	0x3fe415537f60e56c              # double 0.6276032913075773
	.quad	0x3fc10f7189580380              # double 0.13328379827728654
	.quad	0x3fd958ecc0904ab4              # double 0.39605253987353284
	.quad	0x3fbe10f4b709b6b0              # double 0.11744622677516747
	.quad	0x3fc07df30eecb490              # double 0.12884367207280834
	.quad	0x3fd1d00cd1df5016              # double 0.27832336898177468
	.quad	0x3fd0d5c7b255f5ee              # double 0.26304809966663256
	.quad	0x3feb0124b448c12d              # double 0.84388957225568151
	.quad	0x3fea510b1fc27448              # double 0.82239299967808055
	.quad	0x3fd26fd2ef4e6828              # double 0.28807519311669916
	.quad	0x3fefe852f46b1333              # double 0.9971098684114622
	.quad	0x3fcba5fff13ea634              # double 0.21600341109778898
	.quad	0x3fed194e141e0b0f              # double 0.90933898858233586
	.quad	0x3fe2389ab9358e1b              # double 0.56940971540138052
	.quad	0x3fa9f22ff4e80250              # double 0.050675867696558741
	.quad	0x3fda3506ed8215fe              # double 0.40948651498942457
	.quad	0x3fcf952b5a1c9ca0              # double 0.24673978710163613
	.quad	0x3feb47e57201db86              # double 0.85252640025179072
	.quad	0x3fea5e24e04763d4              # double 0.82399219326463901
	.quad	0x3fe65b944936f054              # double 0.6986791067097422
	.quad	0x3faf9e5e0c65a7a0              # double 0.06175512219745305
	.quad	0x3feea495085d7b18              # double 0.95759059556789605
	.quad	0x3fbea57a11d20150              # double 0.11971247611109459
	.quad	0x3fe27dddff52aeaa              # double 0.57786464565056872
	.quad	0x3fdf3e4c03ebe258              # double 0.488177303151621
	.quad	0x3fd32c1764530d8e              # double 0.29956612393672166
	.quad	0x3fa8327f678e05d0              # double 0.047260266676868334
	.quad	0x3fd08ff3ca053c90              # double 0.25878615120468229
	.quad	0x3fefe8c437c5cc54              # double 0.99716387646766202
	.quad	0x3fd52111462a80b4              # double 0.33014327861929904
	.quad	0x3fea5ed7d7a6b1f1              # double 0.82407753104558712
	.quad	0x3fe1463a0afa3f18              # double 0.53982259887740991
	.quad	0x3fba0d734aef0b10              # double 0.10176773623883784
	.quad	0x3fa2b376fa64f9e0              # double 0.036525457444884557
	.quad	0x3fed93c746c4b6f4              # double 0.9242893583484304
	.quad	0x3fd4958d32c6a450              # double 0.32162790258968688
	.quad	0x3fd9ab2021a409b0              # double 0.4010696724436924
	.quad	0x3fd8e6ab7c9bcc20              # double 0.38907897156531313
	.quad	0x3fd82be8eb8ced9c              # double 0.37768004420260026
	.quad	0x3fdf78a816b29988              # double 0.49173929421012774
	.quad	0x3fc45c29199d7940              # double 0.15906251669634663
	.quad	0x3fc1d64e7e67df94              # double 0.13935261890560169
	.quad	0x3fd7d7b8bd6fad6a              # double 0.3725416040385513
	.quad	0x3fdf49d2ddf48736              # double 0.48888084101973861
	.quad	0x3fbab3376fc7bf58              # double 0.10429712752352083
	.quad	0x3fd54e9cdda97ff0              # double 0.33292314192476535
	.quad	0x3fd3f95e10b8c27e              # double 0.31209518082599874
	.quad	0x3fd7bbbd1adbc8dc              # double 0.37083366034415888
	.quad	0x3fdfb6230627bcd4              # double 0.49549174882026858
	.quad	0x3fe3c75be833f0ec              # double 0.61808581688049236
	.quad	0x3fce8b7c1edc2474              # double 0.2386317396815546
	.quad	0x3fe974f420429a3b              # double 0.79552656460584303
	.quad	0x3fd83b98c2763b82              # double 0.37863749494948007
	.quad	0x3fe8190c9de1c2df              # double 0.7530577739363159
	.quad	0x3fb33ac22c5e32c0              # double 0.075115333396932549
	.quad	0x3fd020d99fa5c1ca              # double 0.25200501051497481
	.quad	0x3fe862b67826758b              # double 0.76204989878503804
	.quad	0x3fa551b07663f4d0              # double 0.041638864948234322
	.quad	0x3fecf10fa60ceab7              # double 0.90442640716295031
	.quad	0x3fc86a30998f9c98              # double 0.19074065683455355
	.quad	0x3fdd91501c0afd4a              # double 0.46199419725958946
	.quad	0x3fbd9067eb95bc30              # double 0.11548470975479641
	.quad	0x3fe805314c9144e5              # double 0.75063385920125525
	.quad	0x3fe00112a46e9d98              # double 0.50013095965998655
	.quad	0x3fbaa151f9c3bf10              # double 0.10402405116814983
	.quad	0x3fe214886e5c9fa0              # double 0.56500646166840696
	.quad	0x3fed5ade0f962d1c              # double 0.91734221500647405
	.quad	0x3fe4940aaa3d0b4e              # double 0.64307149171541211
	.quad	0x3fe919c4374a4637              # double 0.78439532088140751
	.quad	0x3feb574f244c67cc              # double 0.85440785493414628
	.quad	0x3fccfdc9b1b043b0              # double 0.22649499107549564
	.quad	0x3fda1d6c58994a12              # double 0.40804585125184289
	.quad	0x3fce1a2ccca1a294              # double 0.23517379752890533
	.quad	0x3fe35e5b673193fb              # double 0.60526819376957464
	.quad	0x3fd321ed19434d7c              # double 0.29894568888740713
	.quad	0x3fecbe5b5bd3ff97              # double 0.89823692259959642
	.quad	0x3fbc46fdeac71340              # double 0.11045824987293162
	.quad	0x3fe80d4cb2b1f138              # double 0.75162348653206035
	.quad	0x3fbbd08379078b80              # double 0.10865041451283552
	.quad	0x3fc996a77fa6e174              # double 0.19991010411264265
	.quad	0x3fe4e83e46f9dbdb              # double 0.65335000860693115
	.quad	0x3fb0c48f5cb4e6a0              # double 0.065499267705400488
	.quad	0x3fe8646e3ad3b684              # double 0.76225959291123546
	.quad	0x3fe9e703d74a990d              # double 0.80945007371045252
	.quad	0x3fe7f16a5bb8a035              # double 0.74821966089530767
	.quad	0x3fe3e794b0372241              # double 0.62201914231361155
	.quad	0x3fec4ded40c192d4              # double 0.88451254508671661
	.quad	0x3fe82badfa1ee49f              # double 0.75533198215193298
	.quad	0x3fd248d93ee39068              # double 0.28569632665153799
	.quad	0x3fe3e1d99a947e6b              # double 0.6213195819036178
	.quad	0x3fea449a39c44df0              # double 0.8208743217714396
	.quad	0x3fe4759b4b077b50              # double 0.63935627607484413
	.quad	0x3fc446635c230788              # double 0.1583980750929721
	.quad	0x3fe3ce65f003481e              # double 0.6189450919866919
	.quad	0x3fd6a113f0a4c88c              # double 0.3535814142261493
	.quad	0x3fe3db23c097c761              # double 0.62050044647024205
	.quad	0x3fc583d70bf49cc8              # double 0.16808593829884999
	.quad	0x3fe67bf4ea041456              # double 0.7026314325927483
	.quad	0x3fd026325d13438c              # double 0.25233134354953601
	.quad	0x3fd4a7d0999915e4              # double 0.32274260520747888
	.quad	0x3fd5ed298cea76ee              # double 0.34260023843113074
	.quad	0x3fed7c98dfbd3066              # double 0.92145961474444671
	.quad	0x3fed4388c847e94a              # double 0.91449393384326894
	.quad	0x3fe08c7f0c300305              # double 0.51715042477016537
	.quad	0x3fe7baae4f43639f              # double 0.74153819542981469
	.quad	0x3fb89c7ac02cb188              # double 0.096137687604544664
	.quad	0x3febbee71c4b1e06              # double 0.86705356145915924
	.quad	0x3f48a4fcf4fcc800              # double 7.5208999076026295E-4
	.quad	0x3f979a83c478e9c0              # double 0.023050364367216636
	.quad	0x3fec34ab1be73eb6              # double 0.88142924737800032
	.quad	0x3fecce4819db3916              # double 0.90018086481157655
	.quad	0x3fe575740bf45204              # double 0.67058756193961289
	.quad	0x3fec89f10e4dccf5              # double 0.89183857721073301
	.quad	0x3fe9d8cbc929736f              # double 0.80771436013638531
	.quad	0x3febc42721410807              # double 0.86769443983962524
	.quad	0x3fe4f793c08322b0              # double 0.65522182083176084
	.quad	0x3fe52601c958c55d              # double 0.66088952374972687
	.quad	0x3fe49eebe1991f40              # double 0.644399586316446
	.quad	0x3fd128b7a800c6ee              # double 0.26811019331499508
	.quad	0x3fec76b7519e8b6d              # double 0.88949171010277228
	.quad	0x3fc9dbf31889425c              # double 0.2020248288922798
	.quad	0x3fed198a33b66bf6              # double 0.90936765766252736
	.quad	0x3fedd4755cf75cf0              # double 0.93218486936066647
	.quad	0x3fd57b92478fa8b8              # double 0.33566719997783023
	.quad	0x3fd99c094810e122              # double 0.40014869725884428
	.quad	0x3fc7df14ed350548              # double 0.18649541456583507
	.quad	0x3fe2a367da4a4311              # double 0.58244698176176446
	.quad	0x3fd7549827078a66              # double 0.36453822909803646
	.quad	0x3fa86e0d57945ec0              # double 0.047714631024232457
	.quad	0x3fe4a222ca4a9877              # double 0.64479197988545323
	.quad	0x3fed98f74ea96e97              # double 0.9249226127971778
	.quad	0x3fec7cff03ff425f              # double 0.89025831967053282
	.quad	0x3fec4cb185f1ec14              # double 0.88436199341902232
	.quad	0x3fc20fd925947f74              # double 0.14110864958729119
	.quad	0x3fede37f93b3bfab              # double 0.93402079437327268
	.quad	0x3fe3fb7bd2236577              # double 0.62444869082098264
	.quad	0x3fec075e69b71cec              # double 0.87589951179043401
	.quad	0x3fd2ba1491ba9b7a              # double 0.29260744315472886
	.quad	0x3fdb69137e7bbb7a              # double 0.42828833915603293
	.quad	0x3fe32f7ab63fb303              # double 0.59954581828569109
	.quad	0x3fcc267ab3f3485c              # double 0.21992429529797419
	.quad	0x3fe7ffaa09bb9371              # double 0.74995901013299548
	.quad	0x3fec60107295144a              # double 0.8867265928207726
	.quad	0x3feb8722819021db              # double 0.86024594598080328
	.quad	0x3feb8bb33c58aa93              # double 0.86080323969265959
	.quad	0x3fe07067a66d4dfd              # double 0.51372129922168563
	.quad	0x3fda050590024eb2              # double 0.40655650199299054
	.quad	0x3fe528f6de92f4c5              # double 0.66125052901738768
	.quad	0x3fe4c95084caa793              # double 0.64957452712882213
	.quad	0x3fc1af556fceab40              # double 0.13816326102581833
	.quad	0x3fc2176198e0d378              # double 0.1413385387874333
	.quad	0x3fdaf124989d8ae8              # double 0.42096819785926565
	.quad	0x3feb560adc1243e2              # double 0.85425322516141144
	.quad	0x3fe9135ed7cff1de              # double 0.78361456061207568
	.quad	0x3fd462785640bc34              # double 0.31851013587123878
	.quad	0x3fe31704c5ad2dcb              # double 0.59655989273726939
	.quad	0x3fccbc03c4d9da60              # double 0.22448775398125331
	.quad	0x3fecf500b41a4d7b              # double 0.90490756203000389
	.quad	0x3fe8be1ee932b65b              # double 0.7732080988550466
	.quad	0x3fe2749582bd96b5              # double 0.57673144850988101
	.quad	0x3fd4acf7cbaeb798              # double 0.32305712595813807
	.quad	0x3feae49ba9ee576a              # double 0.84040625753071407
	.quad	0x3fd3f533d7938150              # double 0.31184097339975825
	.quad	0x3fda481360770532              # double 0.4106491510429634
	.quad	0x3f8d1328712a6f80              # double 0.014196697190804519
	.quad	0x3fb733cc20bd99f0              # double 0.090634115212743671
	.quad	0x3fe2d957f65e2242              # double 0.58903120154088406
	.quad	0x3fdf7937a4a03868              # double 0.49177352024788101
	.quad	0x3fc472a1abf3bc08              # double 0.15974827667329827
	.quad	0x3fe91472e23fbe16              # double 0.78374618710762678
	.quad	0x3fe2b0db4ca1f070              # double 0.58408894507694065
	.quad	0x3fe50f52a0bc1726              # double 0.65812045472623448
	.quad	0x3fe3881d30d35c2a              # double 0.61036548172240157
	.quad	0x3fe916601138fa84              # double 0.78398135532172874
	.quad	0x3fe8e5e41c8933a8              # double 0.77806287358690884
	.quad	0x3fef7fd836c8662d              # double 0.98435602855460546
	.quad	0x3fb60a4ae5f051f8              # double 0.086094552171125716
	.quad	0x3fd502e2a31d507a              # double 0.32830110482360164
	.quad	0x3fc6b78fc0ac35a8              # double 0.17747685344549535
	.quad	0x3fe0810a070dbfde              # double 0.51575185182263872
	.quad	0x3fd407d5e05397dc              # double 0.31297823817146564
	.quad	0x3fd8cd6bb91a745e              # double 0.3875378902101313
	.quad	0x3f81a22d5f6394c0              # double 0.0086101097808274351
	.quad	0x3fd29ad0e6305ff6              # double 0.29069921950713196
	.quad	0x3fc541858a1e1cb4              # double 0.16606206172966653
	.quad	0x3fe01a61c15f2f90              # double 0.50322044151242729
	.quad	0x3fe1b05a26502433              # double 0.5527773617078594
	.quad	0x3fb0f016912e4bf0              # double 0.066163454479734929
	.quad	0x3feb45e956115418              # double 0.85228411493392553
	.quad	0x3fe6d2f94cb5d056              # double 0.71325364096129351
	.quad	0x3fef117361405529              # double 0.97088021273035451
	.quad	0x3fee59641979d448              # double 0.94841198898087331
	.quad	0x3fe8583f204f8fd1              # double 0.76077228842449973
	.quad	0x3fecd79a37c61ef5              # double 0.90131865399686595
	.quad	0x3fb5356a7e2a6db0              # double 0.082846313287908257
	.quad	0x3fbcb11aeec6b7f0              # double 0.11207741097925328
	.quad	0x3fea250cad70e157              # double 0.81702264666732105
	.quad	0x3fc844f834f330a8              # double 0.18960478387305568
	.quad	0x3fd7097c4dcfe048              # double 0.35995395277814568
	.quad	0x3fe81b0a72fbd601              # double 0.75330088098297676
	.quad	0x3fefe0dd25754462              # double 0.99619920078306401
	.quad	0x3fd146563f81f746              # double 0.26991802408143817
	.quad	0x3f92934a47ac56a0              # double 0.018139992355904355
	.quad	0x3feeab7e42f7fdc2              # double 0.9584342296583872
	.quad	0x3fdb4f9662fb32d4              # double 0.42673263231408254
	.quad	0x3fdcd1c0942ef1e0              # double 0.45030226202996282
	.quad	0x3fe02aca8b754df1              # double 0.50522353399213504
	.quad	0x3fd3220dc5718834              # double 0.29895347863760269
	.quad	0x3fd0b3cf1d523a02              # double 0.26097467292211729
	.quad	0x3fe7fb5c707ed1f9              # double 0.74943372699504984
	.quad	0x3fe199c4c93ada6a              # double 0.55002059271539605
	.quad	0x3fc041997e2e9404              # double 0.1270019403574737
	.quad	0x3fd0fafbfac79018              # double 0.26531886568250362
	.quad	0x3fd0317121b18e60              # double 0.25301769533527896
	.quad	0x3fbcf8e501ad6d60              # double 0.11317282954171537
	.quad	0x3fe36b98a19a7217              # double 0.606884303695156
	.quad	0x3fe2b860b573688e              # double 0.58500705184566626
	.quad	0x3fe5203c75cf0072              # double 0.66018507966511053
	.quad	0x3fe62fb3a62e33ce              # double 0.69332296807407956
	.quad	0x3feb8d5e525cd317              # double 0.86100689016766097
	.quad	0x3fdfcece75bc4b54              # double 0.49699746606454664
	.quad	0x3fe58e30b8b8dc5c              # double 0.6736072166303404
	.quad	0x3fe5dd01655e59c0              # double 0.68322820471330914
	.quad	0x3fc4ace2d3fd2db0              # double 0.16152606345199905
	.quad	0x3fe1d9d8f7699ba2              # double 0.55784271548042264
	.quad	0x3fd3f95babcf6e92              # double 0.31209461000774141
	.quad	0x3fec292050c15e8d              # double 0.88002029202012155
	.quad	0x3fe893b799a34268              # double 0.76803188331002747
	.quad	0x3fb9e7ee502439c8              # double 0.10119523483829262
	.quad	0x3fd0619be9c9353c              # double 0.25595758276616087
	.quad	0x3fb9e7e6fafe7c30              # double 0.10119479778084961
	.quad	0x3fe9fb57487c445b              # double 0.81193126828487594
	.quad	0x3fe4abc338ba3ad2              # double 0.64596711234647786
	.quad	0x3fd9973a43d15e2e              # double 0.39985520003162633
	.quad	0x3fb594b049be5d50              # double 0.084300058368502961
	.quad	0x3fd8c70f5bd60caa              # double 0.38714965790149825
	.quad	0x3fec9268ac07e8c7              # double 0.89287217712196643
	.quad	0x3fe10a33fd39c615              # double 0.53249549348965053
	.quad	0x3febdf01521fa8c3              # double 0.87097230949191162
	.quad	0x3febf47a3a4d7e29              # double 0.87359343898055386
	.quad	0x3fe81a7fe790995f              # double 0.75323481776721823
	.quad	0x3f94cf5454f75580              # double 0.020322148977205412
	.quad	0x3fea3d5ff5456a30              # double 0.81999204544564996
	.quad	0x3fd17ec680171af2              # double 0.27336275585950809
	.quad	0x3fe592451c3c8e75              # double 0.67410521998358652
	.quad	0x3feb156c1fca12ee              # double 0.84636503418786702
	.quad	0x3fe2785822272d99              # double 0.57719046278491526
	.quad	0x3fe7d9b5c1bb5c37              # double 0.74532592619187354
	.quad	0x3fd9ae3c53d86822              # double 0.40125950038930303
	.quad	0x3fd0132a0384e890              # double 0.2511696848265581
	.quad	0x3fd33d41a0e4ff5c              # double 0.30061379158359158
	.quad	0x3fe62b9d3b7a4e08              # double 0.69282399765728631
	.quad	0x3fd0a099dff38cdc              # double 0.25980231161356726
	.quad	0x3fe1cd1dbc152ba6              # double 0.55628859267141162
	.quad	0x3fd0b50fff77a194              # double 0.26105117748240869
	.quad	0x3fc7a7d3cebdff30              # double 0.18480918497879761
	.quad	0x3fbc8d37f5134228              # double 0.11152982457429828
	.quad	0x3f92cf88a20f0ae0              # double 0.01836980332496807
	.quad	0x3fe63df23f91f4e6              # double 0.69506180206340384
	.quad	0x3fe9db4b24979902              # double 0.80801922938260895
	.quad	0x3fe011b92dde69af              # double 0.50216349562406559
	.quad	0x3fc8bd3efcffa544              # double 0.19327533105323813
	.quad	0x3fef1e1c68bb0dfe              # double 0.97242565589152696
	.quad	0x3fc461e70d2fdb18              # double 0.15923774856465722
	.quad	0x3fb602f84c4d6558              # double 0.085982817295549352
	.quad	0x3fd7cb98d4e4c238              # double 0.37180157461537844
	.quad	0x3fdb1622ccc8e012              # double 0.42322607038977467
	.quad	0x3fe1b23f97ae9a53              # double 0.55300883889578711
	.quad	0x3fc36468ea9a01dc              # double 0.15150176482349209
	.quad	0x3fde832692374970              # double 0.4767548015489842
	.quad	0x3fe4df9217a3c66f              # double 0.652291341945057
	.quad	0x3fb48df514b11940              # double 0.080291097213465612
	.quad	0x3fe96ffca7f5d02a              # double 0.7949202805016331
	.quad	0x3fc6dd18643ffdf4              # double 0.17862229247110373
	.quad	0x3fc571b4f563d32c              # double 0.16753255826883995
	.quad	0x3fe137c26cc2f935              # double 0.53805657618048619
	.quad	0x3fda314ef7bfab16              # double 0.40925955003938108
	.quad	0x3f931295728fcfe0              # double 0.018625578992171543
	.quad	0x3fee4696b5bc98e7              # double 0.94611678595972826
	.quad	0x3fbdfeac75780400              # double 0.11716726177111525
	.quad	0x3fb9a1545f0d6930              # double 0.10011794396033191
	.quad	0x3fcdadccfe99ea44              # double 0.23186647826863027
	.quad	0x3fe6e7918500e45f              # double 0.715767631313735
	.quad	0x3fd52ee6c5610b6c              # double 0.33098763728428682
	.quad	0x3fcafa3aaabff790              # double 0.2107613881816488
	.quad	0x3fe58bc734c42df3              # double 0.67331276231692383
	.quad	0x3fefba45a302e590              # double 0.99148828352115181
	.quad	0x3fd2c8e247b52766              # double 0.2935109806318138
	.quad	0x3fe65a61328c63fe              # double 0.69853267548307918
	.quad	0x3fcd1f606affd57c              # double 0.22752003883912753
	.quad	0x3fc9cf627ec62c74              # double 0.20164138021604894
	.quad	0x3f782f30feb20080              # double 0.0059043802131101275
	.quad	0x3fcc7196f4b01e50              # double 0.22221648166326924
	.quad	0x3fe6351807ee7e0d              # double 0.69398118542807341
	.quad	0x3fe7731e143dc239              # double 0.73280242875450263
	.quad	0x3fe5562783305064              # double 0.66676688788221528
	.quad	0x3fcacf6d326fb64c              # double 0.20945515597070352
	.quad	0x3fd0d6bdfcf3fa86              # double 0.263106820129828
	.quad	0x3f94041e3af11040              # double 0.019546959254754137
	.quad	0x3fcfffc788580488              # double 0.24999326856053394
	.quad	0x3fe5ceb197e04945              # double 0.68148116744331644
	.quad	0x3fe8ac9970485083              # double 0.77106925897761902
	.quad	0x3fe440c4724a567d              # double 0.63290617296543383
	.quad	0x3fe84062c97abd72              # double 0.75785960532623009
	.quad	0x3fe09a3f5e6beefe              # double 0.51882904473993086
	.quad	0x3fed55f17037a357              # double 0.91674110333870373
	.quad	0x3fccdf327488d2ec              # double 0.22556143465194312
	.quad	0x3fe0249d9202393d              # double 0.5044696666462084
	.quad	0x3fe2016f26eb8290              # double 0.56267507173113707
	.quad	0x3fe394d64a9ef291              # double 0.61191858839409197
	.quad	0x3fd925e493b7fade              # double 0.39293779779101878
	.quad	0x3feaacf5ece7c783              # double 0.83361336012443166
	.quad	0x3fb66004270b0fa8              # double 0.087402591259034268
	.quad	0x3fe435800f8a6b79              # double 0.63153079066556395
	.quad	0x3fde6192487f1452              # double 0.47470528678633628
	.quad	0x3fcaced489d2a0a4              # double 0.20943695764186032
	.quad	0x3fe3ebf9139820d8              # double 0.62255529238702945
	.quad	0x3fe6d02ea89a60e5              # double 0.7129128735569138
	.quad	0x3fe4c93775a58f15              # double 0.64956257799028327
	.quad	0x3fe30d5213177ade              # double 0.59537605027056961
	.quad	0x3fe5c8dacbfcccce              # double 0.68076839295681579
	.quad	0x3fb7131bca41d098              # double 0.090135323409244683
	.quad	0x3fd5357c9b64d01c              # double 0.33138957190681295
	.quad	0x3fdaa90d5972895a              # double 0.41656812415216893
	.quad	0x3fe3915855be9f15              # double 0.61149231669421289
	.quad	0x3fb90f21c915cac8              # double 0.097887145607994275
	.quad	0x3fe6d376ed577e86              # double 0.71331354480567266
	.quad	0x3fe0999abe15919a              # double 0.51875054479437499
	.quad	0x3fc1b4aebe916c2c              # double 0.1383264952190485
	.quad	0x3feddc2b70672f1f              # double 0.93312618211482234
	.quad	0x3fe66262b31e8d4e              # double 0.69950995430228047
	.quad	0x3fd8657c8ba1e132              # double 0.38119424472781127
	.quad	0x3fe6408ba9e56885              # double 0.69537909682118537
	.quad	0x3feca3f994962424              # double 0.89501647015379548
	.quad	0x3fec221f4eebd955              # double 0.87916531957925292
	.quad	0x3fe9876e3e4474a9              # double 0.79778206025698239
	.quad	0x3fbda785c6d48700              # double 0.11583744148495256
	.quad	0x3fdf0460e0afe298              # double 0.48464223806471685
	.quad	0x3fef52a3a531c7a2              # double 0.97883779778043256
	.quad	0x3fe38ac553ee8f8a              # double 0.61068979638047094
	.quad	0x3fdfda5c42182264              # double 0.49770266012686748
	.quad	0x3fdb507c61319504              # double 0.42678746692247693
	.quad	0x3fe3448347120a8f              # double 0.60211337929679754
	.quad	0x3fa35e67b297b360              # double 0.037829628516056202
	.quad	0x3fdba6913bb8c82a              # double 0.43204146225173423
	.quad	0x3fef1228092d7e59              # double 0.97096635620614357
	.quad	0x3fbf7820e3ddfae8              # double 0.12292676509057865
	.quad	0x3fe0cd779be5e97e              # double 0.52508144806715484
	.quad	0x3f8b7782c5bffac0              # double 0.013411542568062429
	.quad	0x3fdc9b1f8a9ec10a              # double 0.44696796929476135
	.quad	0x3fd34be300585d4c              # double 0.30150675805767402
	.quad	0x3fe49c8234678cca              # double 0.64410505519153927
	.quad	0x3fecefc683d66d97              # double 0.90426946401150843
	.quad	0x3f65f14e0e47e200              # double 0.0026785397078550321
	.quad	0x3fec353608b0d1e5              # double 0.88149549195673826
	.quad	0x3fe688e821b07875              # double 0.70421225147198518
	.quad	0x3febcea08dd3c8a5              # double 0.86897304249420826
	.quad	0x3fd6c1c20598beb8              # double 0.35557604357289163
	.quad	0x3fda0a9d35f6d464              # double 0.40689783353747644
	.quad	0x3fbcb1a7a1d6d8f0              # double 0.1120857973208762
	.quad	0x3f95db519a29e0e0              # double 0.021344447168730407
	.quad	0x3fe9c5181d2a1f77              # double 0.80530934997749071
	.quad	0x3fe027602c755cb9              # double 0.50480660136499644
	.quad	0x3fe4828a5d5055c0              # double 0.64093511796334468
	.quad	0x3fe1eba1f3c74c48              # double 0.56001374829282557
	.quad	0x3f85058502860d40              # double 0.010264433993831035
	.quad	0x3fdcf2239fddeafc              # double 0.45227900135039056
	.quad	0x3fdd46faabffea00              # double 0.45745722576944559
	.quad	0x3febb18e4e4a4cd6              # double 0.86542430201589116
	.quad	0x3fe88557498cd47a              # double 0.76627697339303258
	.quad	0x3fa5f2275df1a350              # double 0.042863111703644763
	.quad	0x3fe1decd9dd2e94e              # double 0.55844765496230209
	.quad	0x3fe227b4be20a9e2              # double 0.56734692701621392
	.quad	0x3fde98d77cd30ed0              # double 0.47807871999633011
	.quad	0x3fc9d1695a5d8be4              # double 0.20170323288320369
	.quad	0x3fdfc7895e55c0a2              # double 0.4965537472953746
	.quad	0x3fdeebbbab707248              # double 0.48313800565827991
	.quad	0x3fd389be3c29e2e0              # double 0.30528217196801499
	.quad	0x3fe79cec719ace7b              # double 0.7379057139246038
	.quad	0x3fe4cb7f2a5924a3              # double 0.64984091063628957
	.quad	0x3fd5daa44c015dec              # double 0.34146983549496102
	.quad	0x3fe0ef449e3a79d1              # double 0.52920752433765916
	.quad	0x3fedb35344e8600f              # double 0.92814029177225332
	.quad	0x3fdda3de69f6f4ec              # double 0.46312675808060422
	.quad	0x3fe6a1de3c6784f7              # double 0.70725929067353277
	.quad	0x3fe8c4e32d23751f              # double 0.77403410736193112
	.quad	0x3fe0a335fb691783              # double 0.51992320159546102
	.quad	0x3fb9d5c851db9a38              # double 0.10091831205827695
	.quad	0x3fee9618916db9a2              # double 0.9558222618486989
	.quad	0x3fe9b1041feeeb23              # double 0.80285841214149334
	.quad	0x3fa9d296d291c6b0              # double 0.050434792713429544
	.quad	0x3feff8da2b8d07c7              # double 0.99912746912036076
	.quad	0x3fd62ac32aa3c2b8              # double 0.3463600078967306
	.quad	0x3fea78b1992e9291              # double 0.8272331230005695
	.quad	0x3fcbbfda7405719c              # double 0.21679239907360859
	.quad	0x3fe4c79bb741f918              # double 0.64936624329110071
	.quad	0x3febf1d9475037a8              # double 0.87327255180729413
	.quad	0x3fd7fc1d6cb1368a              # double 0.3747628747413293
	.quad	0x3fe60433fef20f4e              # double 0.68801307481815299
	.quad	0x3fd2c5467e95bc8a              # double 0.29329073297316965
	.quad	0x3fad11657ed1ec50              # double 0.056773349505384929
	.quad	0x3fe4a49393a2f4e4              # double 0.64508990130675814
	.quad	0x3fe1688b0768d9f5              # double 0.54401160666640058
	.quad	0x3feeef1f67704127              # double 0.96668977930861366
	.quad	0x3fd9fd857525b55a              # double 0.40609871330419411
	.quad	0x3fe370aaf044a209              # double 0.60750338485110078
	.quad	0x3fe20c2ab85398f7              # double 0.56398521424560399
	.quad	0x3fdce0350c32c662              # double 0.45118452254528141
	.quad	0x3fe616851cb95d86              # double 0.69024901971981545
	.quad	0x3f5d060977a62200              # double 0.0017714588599081482
	.quad	0x3fda15b8bcc95c72              # double 0.40757578312099618
	.quad	0x3f983cdd5028eba0              # double 0.023669679658478437
	.quad	0x3fc24f203b9fc210              # double 0.14303973113375479
	.quad	0x3fd63e288f3e9b04              # double 0.34754384983754982
	.quad	0x3fb4c08c12ec9350              # double 0.081063036556384249
	.quad	0x3fc8d552859b2f74              # double 0.19401008151759991
	.quad	0x3fe89eb2e335b84b              # double 0.76937240960047271
	.quad	0x3fe6372aafc01b51              # double 0.69423422170880589
	.quad	0x3fd89a08f02ca36c              # double 0.38440154509094415
	.quad	0x3fe6467525b85ac1              # double 0.69610078208173587
	.quad	0x3fc87ed01044180c              # double 0.1913700179504193
	.quad	0x3fe2d61f55f5af7d              # double 0.58863798893933927
	.quad	0x3fe0c3306399bed6              # double 0.52382678464160892
	.quad	0x3fec3065f19914de              # double 0.88090798556427408
	.quad	0x3fd91b98f00fb7a2              # double 0.39230941241737061
	.quad	0x3fe924e21ebc3e22              # double 0.78575235369675434
	.quad	0x3fcc6087dbef4f00              # double 0.22169588316921107
	.quad	0x3fedb1f5ce8869a7              # double 0.92797365511369356
	.quad	0x3fb749c452953cf0              # double 0.09096934333978246
	.quad	0x3feb53f66272333e              # double 0.85399932124855815
	.quad	0x3fd25182eda5c2ea              # double 0.28622506339801979
	.quad	0x3fb6d15c770a8fb8              # double 0.089132098257833969
	.quad	0x3fc6673d06db5214              # double 0.1750255855064472
	.quad	0x3fef70f9e63dd6d8              # double 0.98254103631071654
	.quad	0x3fedd065f126e33b              # double 0.93168923473340415
	.quad	0x3fe4263102550084              # double 0.6296620412395133
	.quad	0x3fdefe023c5be708              # double 0.4842534627383519
	.quad	0x3fcf3d6f0e7b4308              # double 0.24406231124023514
	.quad	0x3fb83c413800eba8              # double 0.094669414685013664
	.quad	0x3fc77be250661504              # double 0.18346814084740271
	.quad	0x3fd86247820ce75e              # double 0.38099849415049458
	.quad	0x3fdaba0f06b3a122              # double 0.41760612158261001
	.quad	0x3f8eeb1a7d515680              # double 0.015096861791032312
	.quad	0x3fe749b6f0c3f8ca              # double 0.72774836563601153
	.quad	0x3fd42681df771464              # double 0.31485030005234749
	.quad	0x3fd2be132a2db938              # double 0.29285124892239223
	.quad	0x3fe63431f0df1ea6              # double 0.6938714699289974
	.quad	0x3fe54ba7adbb9f33              # double 0.66548522884565953
	.quad	0x3fe3581f103296a4              # double 0.60450699962230603
	.quad	0x3fed534b3da012c8              # double 0.91641771351040635
	.quad	0x3fe0fcb75a04a0e4              # double 0.53084914762169122
	.quad	0x3fe01d12e4ed1bf5              # double 0.50354904853963822
	.quad	0x3fb6dc9667927e80              # double 0.089303398405258249
	.quad	0x3fd30588414cd246              # double 0.29721266152344972
	.quad	0x3fe9416bc95f4f6a              # double 0.78923596697357579
	.quad	0x3fe91b450e222c82              # double 0.78457882652709565
	.quad	0x3fead62a7c3c7cf4              # double 0.83864330544375187
	.quad	0x3fe6082675523de4              # double 0.68849490083988174
	.quad	0x3fe01b62edaad69f              # double 0.50334307116891697
	.quad	0x3fe55b9cfb6867ee              # double 0.6674332533177656
	.quad	0x3fb59c1cf14e1950              # double 0.084413346207019346
	.quad	0x3fe61c89380a5ae3              # double 0.69098339982414492
	.quad	0x3fcf1b5993e47d88              # double 0.24302215310397579
	.quad	0x3fe194074b2b85e7              # double 0.54931988412516553
	.quad	0x3fc124df982397a0              # double 0.13393778732932748
	.quad	0x3fae949e0c70ace0              # double 0.059727610605784909
	.quad	0x3fa6b303fd0f10b0              # double 0.044334530487988189
	.quad	0x3fccf3b1d2df8224              # double 0.22618696972405516
	.quad	0x3fe5b3dae21e258e              # double 0.6782049576151381
	.quad	0x3fdbd68dd1cf4b92              # double 0.43497033585770695
	.quad	0x3fe205ce5b361d45              # double 0.56320874991153203
	.quad	0x3fecf624ad75cc31              # double 0.90504678610739664
	.quad	0x3f7cec9e70c9fe80              # double 0.0070615948758355751
	.quad	0x3fea187ee5252157              # double 0.81549019579783077
	.quad	0x3fa237da8a509c80              # double 0.035582379707471468
	.quad	0x3feaec05af6f4631              # double 0.84131130470831839
	.quad	0x3fefb7906cea0072              # double 0.99115773460654411
	.quad	0x3fa7e033eb542ea0              # double 0.046632406689324002
	.quad	0x3febef63f2084e27              # double 0.87297246238671711
	.quad	0x3fe8ca7196d5aecb              # double 0.77471236667539622
	.quad	0x3fc6a20cbbca747c              # double 0.17682036561464887
	.quad	0x3fea6e8e9c419abf              # double 0.82599573630144352
	.quad	0x3fed26df2345dd40              # double 0.9109950722621889
	.quad	0x3fe5997a1cb00232              # double 0.67498498538049589
	.quad	0x3feeb2d7e4c12f5b              # double 0.95933146170271343
	.quad	0x3fe9a4043db686ad              # double 0.80127155354803892
	.quad	0x3f884038d8a0aec0              # double 0.011841243849708305
	.quad	0x3fd278a41a232488              # double 0.28861334373920799
	.quad	0x3fa67e57f8202b10              # double 0.043932675398613452
	.quad	0x3fc887ccc582bac0              # double 0.19164428371501252
	.quad	0x3fc45efa1743682c              # double 0.15914846549895978
	.quad	0x3feef585cec84600              # double 0.96747103106662279
	.quad	0x3fe966b184888beb              # double 0.79378581891466859
	.quad	0x3fe1929fe18483da              # double 0.54914850279248673
	.quad	0x3feb0d405b0b3ff5              # double 0.84536760122318688
	.quad	0x3fea461eb0d7d246              # double 0.82105955638559958
	.quad	0x3fe859b4205ea829              # double 0.76095014879434075
	.quad	0x3febc61a8e63f18a              # double 0.86793258486390923
	.quad	0x3fd827f1fe7b39d2              # double 0.3774380669755405
	.quad	0x3fcccf1ecb0c9314              # double 0.22507080950267577
	.quad	0x3fc09d90ba70e444              # double 0.12980851272166849
	.quad	0x3fe2e9b9339d657b              # double 0.59103069382687978
	.quad	0x3fb6ed1d8ab52c88              # double 0.089555593837916558
	.quad	0x3fcb7a8e6a2113c4              # double 0.21467762167062976
	.quad	0x3feb6efdeeb1f591              # double 0.85729881878039482
	.quad	0x3fdfca9595419f7a              # double 0.49673976493658467
	.quad	0x3fea4735d8828d2b              # double 0.82119266783812372
	.quad	0x3f95666dea3c0ec0              # double 0.020898549481912054
	.quad	0x3feca74007b05c13              # double 0.89541627408732649
	.quad	0x3fbf708c0aa55cf0              # double 0.1228110815039718
	.quad	0x3fe73c537316e43f              # double 0.72611401060488123
	.quad	0x3fea9b174c0dcb02              # double 0.83143200735352729
	.quad	0x3fe0505f573ffbc6              # double 0.50981108704569844
	.quad	0x3fc31eedaeec7ae0              # double 0.14938136140059211
	.quad	0x3fe06d630bc5ccfa              # double 0.51335289286944819
	.quad	0x3fe93618cbc099c9              # double 0.78785362048511687
	.quad	0x3feb4b41cf35e1ee              # double 0.85293665381237616
	.quad	0x3fe4672087405b4f              # double 0.63758875290191408
	.quad	0x3fc464b4a0c4b984              # double 0.1593232903482652
	.quad	0x3fd5eb26427b70a4              # double 0.3424773835411179
	.quad	0x3fedb60b63975e3e              # double 0.92847222758695813
	.quad	0x3fe3c56cf7303d26              # double 0.61784981039992171
	.quad	0x3fea26b175f0217d              # double 0.81722329172866603
	.quad	0x3fdd0d62f6c69c0e              # double 0.45394205187989278
	.quad	0x3fe8b8def4d993e0              # double 0.77256725141762316
	.quad	0x3fe4dad16875138d              # double 0.65171118165800268
	.quad	0x3fefba52a7814a27              # double 0.99149449077441864
	.quad	0x3fd848309912d682              # double 0.37940611790268275
	.quad	0x3fe926e96f24b40b              # double 0.7859999819535245
	.quad	0x3fef29dc664ee74a              # double 0.97385997755120823
	.quad	0x3fee32a50db82595              # double 0.9436822193103348
	.quad	0x3fe474b634bed948              # double 0.63924703885894818
	.quad	0x3fecc935fd772e95              # double 0.89956187729827042
	.quad	0x3fd44f3a32b1f3e6              # double 0.31733565283485488
	.quad	0x3fe94f5a2ff42d6b              # double 0.79093655935268481
	.quad	0x3fefe055b63f7f48              # double 0.9961346206218673
	.quad	0x3fddd901b9011786              # double 0.46637003962347767
	.quad	0x3fe4e8e2a94fb39c              # double 0.65342839306468958
	.quad	0x3fedae48bc5cee64              # double 0.92752491750384224
	.quad	0x3feebba0c9153c65              # double 0.96040381692899912
	.quad	0x3feb50387a448028              # double 0.85354255562197512
	.quad	0x3fe1cbc977eae37d              # double 0.55612634107011127
	.quad	0x3fdc2d021adfacd6              # double 0.44024708389652056
	.quad	0x3fe1d87ec4ab6b68              # double 0.55767763530762426
	.quad	0x3fe9000f01ffc86d              # double 0.78125715628108383
	.quad	0x3fe7bc7c2b29b146              # double 0.74175842695471128
	.quad	0x3fcceb8ce49a64c0              # double 0.22593842661152586
	.quad	0x3fbc1b035e504ac8              # double 0.10978718807772758
	.quad	0x3fecf7b2a31d784a              # double 0.90523654802724107
	.quad	0x3fe7a41a1dba196c              # double 0.73878198438687326
	.quad	0x3fded42f127891c2              # double 0.48170067600065292
	.quad	0x3fe45a1fee9590e3              # double 0.63600155447468543
	.quad	0x3fee764b5d30434a              # double 0.95194023323902255
	.quad	0x3fe545c874cfbcf8              # double 0.66476843657247198
	.quad	0x3fc849554f2dbc30              # double 0.18973795286317019
	.quad	0x3fe17ed0b34fcbc9              # double 0.54673037549798054
	.quad	0x3fe56ad10885bf7f              # double 0.66928912796537066
	.quad	0x3fc6ec1d79035c90              # double 0.1790806618580274
	.quad	0x3fe5f0e2d2cb2b7b              # double 0.68565503283149043
	.quad	0x3fe5281568e8d446              # double 0.66114302148947313
	.quad	0x3fba3e0202838968              # double 0.10250866471645781
	.quad	0x3fe56fb5ca7f1c7a              # double 0.66988648939231088
	.quad	0x3fd3d819e1cff4fa              # double 0.31006476451859977
	.quad	0x3f9d1b299ccf0760              # double 0.028423929401248826
	.quad	0x3fc296f3b4bafdb4              # double 0.14523168873527725
	.quad	0x3fb2f26220161a08              # double 0.07401097567899495
	.quad	0x3fdfb8a84b9ea0ea              # double 0.49564559349756954
	.quad	0x3febe5860a4ca712              # double 0.87176801692587191
	.quad	0x3fc2a4d733437a2c              # double 0.14565553668121944
	.quad	0x3fdd9a4229142f8e              # double 0.46254018794638163
	.quad	0x3fce8cccef250e28              # double 0.23867189099301922
	.quad	0x3f9d279144bcb2a0              # double 0.028471250362758327
	.quad	0x3fe19495392a162e              # double 0.54938756146356638
	.quad	0x3fd14222cbf8ce2a              # double 0.26966161650782061
	.quad	0x3fb1d572b355ef20              # double 0.069663208754658701
	.quad	0x3fe33b27bf52e60d              # double 0.60097110145506039
	.quad	0x3fd90924f2880e18              # double 0.39118312535012612
	.quad	0x3fd95da6ea28ce10              # double 0.3963410650933108
	.quad	0x3f92fd26f1e075a0              # double 0.018543823731410947
	.quad	0x3fe1ddfdf4491bc8              # double 0.5583486338808763
	.quad	0x3fbec02fe404f868              # double 0.12012004200821169
	.quad	0x3fe4fcfbdf061f54              # double 0.65588182029112341
	.quad	0x3fd5a83da8075140              # double 0.33839360627213821
	.quad	0x3fec5b521639639c              # double 0.88614754048022659
	.quad	0x3fc4c7f95899b4e8              # double 0.16235272241775722
	.quad	0x3fe1ab536bd1d8d3              # double 0.55216380175149948
	.quad	0x3fa9799aaeb66c20              # double 0.049755891635151039
	.quad	0x3fedf9e18d873fae              # double 0.93675305979012591
	.quad	0x3fdceba3c9cfa440              # double 0.4518823118983768
	.quad	0x3fa8233e3785d590              # double 0.047143883016285248
	.quad	0x3fe7839a23f784d5              # double 0.73481471085338035
	.quad	0x3fdca5a715e3aa96              # double 0.44761063706997939
	.quad	0x3fd121daa3423026              # double 0.26769128745286463
	.quad	0x3fef7b07531f68ad              # double 0.98376814112568455
	.quad	0x3fbb55411ff3f290              # double 0.10676962881184182
	.quad	0x3f74b0d904284e80              # double 0.0050514676281810944
	.quad	0x3fe895ce13137c6a              # double 0.76828674054912693
	.quad	0x3fce181ecab2c684              # double 0.23511109254245721
	.quad	0x3fce42477142eaf4              # double 0.23639767675725631
	.quad	0x3feac9a9238bd706              # double 0.83711678450228599
	.quad	0x3fe97a4ca2d64432              # double 0.79617912105653077
	.quad	0x3fd6210b05c6cd92              # double 0.34576678814047412
	.quad	0x3fd501b895f7c37e              # double 0.32823004384322718
	.quad	0x3fdf09e4a977df0a              # double 0.48497883367188932
	.quad	0x3fdc7a8b2dea9bdc              # double 0.44497947200801291
	.quad	0x3fe6a82747dd44b1              # double 0.70802654300691448
	.quad	0x3fdf5785c599543a              # double 0.4897169522931254
	.quad	0x3fe636e05a3b5f31              # double 0.69419877646848793
	.quad	0x3fd3a9b13cd1e7ea              # double 0.30723219813773872
	.quad	0x3fd6529219151ff4              # double 0.34878971528496483
	.quad	0x3fdd0fea298ee736              # double 0.45409635599536402
	.quad	0x3fdf05c59db8d5e6              # double 0.484727291131405
	.quad	0x3fdfd9e82249b264              # double 0.49767497394967664
	.quad	0x3fde728005716c92              # double 0.47573853045987236
	.quad	0x3fd9b40b770d4a94              # double 0.40161406160511004
	.quad	0x3fef1913095d7503              # double 0.97181083516230193
	.quad	0x3fea3fa71aa91ebb              # double 0.82027011115220405
	.quad	0x3fe94c5301242b7a              # double 0.79056692335994616
	.quad	0x3fd8a3c36b87b832              # double 0.384995322236935
	.quad	0x3fd63de765559390              # double 0.34752831359792768
	.quad	0x3fdf34067f257da4              # double 0.48755037705083226
	.quad	0x3fd39efa19f67c78              # double 0.30657818351205135
	.quad	0x3fd73a2ee5010b32              # double 0.36292621959380533
	.quad	0x3fea310627528fa6              # double 0.8184843795793213
	.quad	0x3fd097a798688dea              # double 0.25925626643785782
	.quad	0x3facc0aad0b72d00              # double 0.056157434442491549
	.quad	0x3fb04a3f7f3b64d0              # double 0.063632935106755939
	.quad	0x3fe641c669a8da14              # double 0.69552918087612392
	.quad	0x3fe681a915917235              # double 0.70332769596604428
	.quad	0x3fd3a02951260124              # double 0.30665047573713111
	.quad	0x3fec7e25f2746a13              # double 0.89039895395700552
	.quad	0x3fef8db4f029f529              # double 0.98604819209109451
	.quad	0x3fe78180d189d32a              # double 0.73455849576439403
	.quad	0x3fed390d8579e010              # double 0.9132144553141206
	.quad	0x3fef3d6bab641c54              # double 0.97624762987914914
	.quad	0x3feb4a5c39c28643              # double 0.85282717972967992
	.quad	0x3fc8c93977894af4              # double 0.19364088379605671
	.quad	0x3fd765daee08a87e              # double 0.36559174771776515
	.quad	0x3fc24af56cd332ac              # double 0.14291255773277578
	.quad	0x3fbb55402b006f60              # double 0.10676957177969149
	.quad	0x3fe32bd9df824a2b              # double 0.59910291341868083
	.quad	0x3fb8765f964c9738              # double 0.095556234544884044
	.quad	0x3fe7c597d6888312              # double 0.74287025357270609
	.quad	0x3feecf6a54d4a617              # double 0.96281925743568563
	.quad	0x3fb6ecd471879d98              # double 0.089551236836646786
	.quad	0x3fd27d0be027c7fa              # double 0.28888222589659984
	.quad	0x3fe1502181e6517b              # double 0.54103160258323102
	.quad	0x3fc2949b26ae3c0c              # double 0.1451600970144401
	.quad	0x3fec9eff414c61a3              # double 0.89440882447802428
	.quad	0x3fe9c49b87c00bca              # double 0.80524994386393556
	.quad	0x3fd060a94db04518              # double 0.25589974009297256
	.quad	0x3fdce78e1dc1b038              # double 0.45163300424497121
	.quad	0x3fea4e09f4b28082              # double 0.82202623169361311
	.quad	0x3fccd61d18ae9e10              # double 0.22528423028164513
	.quad	0x3fed55088dc1a690              # double 0.91663005530172548
	.quad	0x3fc914ef63e3a458              # double 0.19595138909724841
	.quad	0x3fee6062858b252b              # double 0.94926572878572324
	.quad	0x3feea5ffe609bb87              # double 0.95776362351703959
	.quad	0x3fed801d5febde7c              # double 0.92188900694505049
	.quad	0x3fdefcf14ef97c6c              # double 0.48418839180334916
	.quad	0x3fad75a371f0f610              # double 0.05753813520321327
	.quad	0x3fa7bbc7c444f990              # double 0.046354525288268111
	.quad	0x3fc1344389db2344              # double 0.13440746527910552
	.quad	0x3feb80040e883770              # double 0.85937693441677077
	.quad	0x3fdccf2ca149a946              # double 0.45014491797214295
	.quad	0x3fd1100a1400c576              # double 0.2666039653150486
	.quad	0x3fdc36010c28a872              # double 0.4407961481798629
	.quad	0x3fdcabb075c6a36e              # double 0.44797908307605538
	.quad	0x3fecde82181437a7              # double 0.90216164305615087
	.quad	0x3fe22f33e7958db2              # double 0.56826205474174274
	.quad	0x3fd0aebfb1c66758              # double 0.26066582070199251
	.quad	0x3fcc8a3cf761bd70              # double 0.22296869353474902
	.quad	0x3fabe5ec0e1b2ba0              # double 0.054488541337909924
	.quad	0x3fec7396113e80fb              # double 0.88910964363097322
	.quad	0x3fbef260d45363a8              # double 0.120885898434962
	.quad	0x3fe1fb9c226e1754              # double 0.56196409916513312
	.quad	0x3fc52ff210a73948              # double 0.16552568257470512
	.quad	0x3fe8e5e9e49549fc              # double 0.77806563038967579
	.quad	0x3fe024213bd4a037              # double 0.5044103783193411
	.quad	0x3fe88f237a6ff829              # double 0.76747297204542975
	.quad	0x3feb829fe5461c88              # double 0.85969538478902141
	.quad	0x3fe5deea8fabae07              # double 0.68346145687741078
	.quad	0x3fe1613c1a660113              # double 0.54311947971294428
	.quad	0x3febcff8921338fa              # double 0.86913708238878873
	.quad	0x3feef4dde2bddf8a              # double 0.96739095960127597
	.quad	0x3fd8361607b8e0ce              # double 0.37830115083808102
	.quad	0x3fe5eb32276fe9b1              # double 0.68496043875284418
	.quad	0x3fe1259f49eed810              # double 0.53584255638156897
	.quad	0x3fe5e38b2e2c90c0              # double 0.68402632730842328
	.quad	0x3fe3b5c4db5cab92              # double 0.61593859523905992
	.quad	0x3fd2bd56da8aedd6              # double 0.29280635206279493
	.quad	0x3fd2ed7bcf2cb07c              # double 0.2957448504628315
	.quad	0x3fed98364914011c              # double 0.92483057282518954
	.quad	0x3fd04d981a7761d6              # double 0.25473597130397019
	.quad	0x3fda3cd7cffd9c5e              # double 0.40996356307591053
	.quad	0x3fc94db88b16a7c8              # double 0.1976843527930312
	.quad	0x3febdee7f544f856              # double 0.87096021560842973
	.quad	0x3fc6c87097d58014              # double 0.17799193776863886
	.quad	0x3fe53332bbe51673              # double 0.6624997777768854
	.quad	0x3fd26caabeed1f42              # double 0.28788250584738162
	.quad	0x3fdadd96f8172458              # double 0.41977476337030373
	.quad	0x3f855c0af9c51c80              # double 0.010429464099287467
	.quad	0x3fe88b05cdb8b7f4              # double 0.76697054080955107
	.quad	0x3fe9719ed6e9d223              # double 0.7951196858908286
	.quad	0x3fed0a79aa0549c2              # double 0.90752871710929406
	.quad	0x3fe81ce3cf6464a1              # double 0.75352659708291381
	.quad	0x3fe3a1a3b125e644              # double 0.6134813747332335
	.quad	0x3fe4e404f3af7a1d              # double 0.65283439249816733
	.quad	0x3fc15b940eaf3368              # double 0.13560724942217495
	.quad	0x3fee03951ebbebbc              # double 0.93793731692073079
	.quad	0x3fea8a198affa3c0              # double 0.82935788295900892
	.quad	0x3fe616dcb45e8674              # double 0.69029078701369295
	.quad	0x3fe14961792d5653              # double 0.54020761172678033
	.quad	0x3feed5e0258f0268              # double 0.96360785804433835
	.quad	0x3fc916becfe795f4              # double 0.19600663329690315
	.quad	0x3fe276d64d26d06a              # double 0.57700648373294183
	.quad	0x3fc38588441b47cc              # double 0.1525125820685943
	.quad	0x3fe40971bdc0f042              # double 0.62615286885512256
	.quad	0x3fdda3905e045390              # double 0.46310815030420205
	.quad	0x3fccf66023b69110              # double 0.22626878494077873
	.quad	0x3fb250e3acf946d8              # double 0.07154677365295059
	.quad	0x3fd87cb36494ab3e              # double 0.382611129973771
	.quad	0x3fc3eee973726294              # double 0.1557285131173286
	.quad	0x3fda4dafbcf7b616              # double 0.41099160627240516
	.quad	0x3fe5154de0d2423e              # double 0.65885061178602888
	.quad	0x3fb0a69c17944d38              # double 0.065042262798944317
	.quad	0x3fee956c2b1b841e              # double 0.95574005526953321
	.quad	0x3fd0709b42f4decc              # double 0.25687295473788363
	.quad	0x3fe225386e82528a              # double 0.56704351028254618
	.quad	0x3fde3e42909e3a0e              # double 0.47255004999979711
	.quad	0x3fed95d7048adcb0              # double 0.92454100501244874
	.quad	0x3fa527d777164100              # double 0.041319592749575307
	.quad	0x3fd90051c4e27296              # double 0.39064449526794343
	.quad	0x3feab455168373ff              # double 0.8345132293430878
	.quad	0x3fcc7a5c9f8d5e3c              # double 0.22248418608318044
	.quad	0x3fe2b4c66d12a994              # double 0.58456727317143242
	.quad	0x3fc61f8d4edbea20              # double 0.17283789015330431
	.quad	0x3fd740edd3fa738a              # double 0.36333795262344692
	.quad	0x3fe396c9648e2482              # double 0.61215657844253735
	.quad	0x3fc7a6ede90246f0              # double 0.1847817790735955
	.quad	0x3fa43804d482dc50              # double 0.039489890042596287
	.quad	0x3fda8cb47bda015a              # double 0.41483795256501355
	.quad	0x3fb39a4888a2b5d0              # double 0.076572926863000434
	.quad	0x3fe728b5e3687dc0              # double 0.72371954360635726
	.quad	0x3fb951e9a357b8f0              # double 0.09890613782747315
	.quad	0x3fbd150df6e0cef8              # double 0.11360251691149503
	.quad	0x3fe0355683e1e2a1              # double 0.50651098020815166
	.quad	0x3fe1380072bb265d              # double 0.53808615120324144
	.quad	0x3fd71df448612168              # double 0.36120326107313483
	.quad	0x3fc53479c365bed0              # double 0.1656639293755604
	.quad	0x3fe23b55c85a74bd              # double 0.5697430527831312
	.quad	0x3f86589b58506fc0              # double 0.010911191589961677
	.quad	0x3fcc9a7dc2651748              # double 0.22346469871461694
	.quad	0x3fbf04172363d870              # double 0.12115616430296128
	.quad	0x3fd673e968458934              # double 0.35082469160819874
	.quad	0x3fc27e437876a184              # double 0.14447825796129277
	.quad	0x3fea44c3da495590              # double 0.82089417108606888
	.quad	0x3fdb6f3919f3c29a              # double 0.42866351637261746
	.quad	0x3fe8ac433ac6bf9f              # double 0.77102815131910407
	.quad	0x3fd60a9ca7d8cc3e              # double 0.34439770118041568
	.quad	0x3fdced2a66c19ce8              # double 0.45197544131083456
	.quad	0x3fe27bd0f8b286e6              # double 0.57761429380135776
	.quad	0x3fd0073a318126e6              # double 0.25044112047599609
	.quad	0x3fe5d5e01b9ad2d6              # double 0.68235783950384632
	.quad	0x3fedcd1b399e5b55              # double 0.93128739598874211
	.quad	0x3fe569c5f92c646c              # double 0.66916178385430447
	.quad	0x3fb17c6d7f78bc70              # double 0.06830486642933109
	.quad	0x3fd7d2147caf07c4              # double 0.37219726730483793
	.quad	0x3fbc93e5e6b49db0              # double 0.11163174517115837
	.quad	0x3fe13edee2f1c060              # double 0.53892463994089823
	.quad	0x3fdc6b7b3b85808a              # double 0.44406014263768923
	.quad	0x3fd833e8ae95a448              # double 0.37816826867362296
	.quad	0x3fe94ec2c04f9241              # double 0.7908643489905175
	.quad	0x3fe42b81c9d7c122              # double 0.63031091139240325
	.quad	0x3fdf001d70c2ab1a              # double 0.48438201915512169
	.quad	0x3fc15d73462d2d0c              # double 0.13566437651238805
	.quad	0x3fe37837a0e6777c              # double 0.60842496324379125
	.quad	0x3fc2d281fc3a0374              # double 0.14704918685677237
	.quad	0x3fa31d346a423d20              # double 0.037332189532316429
	.quad	0x3fea0583d831feb7              # double 0.8131732199253382
	.quad	0x3fe4e849d8c5b8ca              # double 0.65335552538251673
	.quad	0x3fb0f40574ea6770              # double 0.066223469776017785
	.quad	0x3fe7a2cfcb24675d              # double 0.73862447429858558
	.quad	0x3fcd8e4918905180              # double 0.23090470981027167
	.quad	0x3fcdaa099cd17358              # double 0.23175163418900513
	.quad	0x3fc2ed46c36dd6f0              # double 0.14786610166964165
	.quad	0x3fc58f43ef6c1444              # double 0.16843461218391742
	.quad	0x3fea598617bc689b              # double 0.82342819820339075
	.quad	0x3fe7f3c2d0e98a15              # double 0.7485059814756051
	.quad	0x3fc11a61413206ec              # double 0.13361755069131875
	.quad	0x3fda32083d3b59a0              # double 0.40930372218772426
	.quad	0x3fb965f7a7239e70              # double 0.099212148957684709
	.quad	0x3fd454d6277450c4              # double 0.31767801144566143
	.quad	0x3fe1719f48a6d40f              # double 0.54511989774494107
	.quad	0x3fdffe2bde6a0f04              # double 0.49988838882585207
	.quad	0x3fee458e3e06a50b              # double 0.94599067797131065
	.quad	0x3fd7cee31a8060bc              # double 0.37200238788637896
	.quad	0x3fce39e2875c96d8              # double 0.2361415062852561
	.quad	0x3fecde6f07424455              # double 0.90215255182023191
	.quad	0x3f88fa6cfe968900              # double 0.012196399230394395
	.quad	0x3fe382bb50bc9931              # double 0.60970845955742992
	.quad	0x3fe3cab9976b8da9              # double 0.6184967000412388
	.quad	0x3fdcdab3109a8266              # double 0.45084835645142218
	.quad	0x3fe5d7de15f0e6d4              # double 0.68260101590495958
	.quad	0x3fc5bf1eb1f90b9c              # double 0.16989501657562023
	.quad	0x3fe59174f709225e              # double 0.67400596856266382
	.quad	0x3fec86e42f75599d              # double 0.89146622914522633
	.quad	0x3fe3aa0a91be13fc              # double 0.61450699296312861
	.quad	0x3fef026309eb692c              # double 0.96904136598030765
	.quad	0x3fed6fad39f7d5f4              # double 0.91988240548988509
	.quad	0x3fe55c024be9d595              # double 0.66748156382407109
	.quad	0x3fec968133a47620              # double 0.89337215505992517
	.quad	0x3fefd5e7cd0da92b              # double 0.994861507887696
	.quad	0x3fcce47f8b20ae98              # double 0.22572321217864011
	.quad	0x3fb0247b1c312938              # double 0.063056654341527074
	.quad	0x3fdceb296ae98568              # double 0.45185313645023095
	.quad	0x3fe59978535aeed4              # double 0.67498413353265585
	.quad	0x3fc7ab771cd74384              # double 0.18492020519491004
	.quad	0x3fe4070718a2a843              # double 0.62585787593457842
	.quad	0x3fe89038e03c1967              # double 0.76760524555065224
	.quad	0x3fe9912bc51e5838              # double 0.79897106647218319
	.quad	0x3fe72b017a94677a              # double 0.72399972859714912
	.quad	0x3fe513cd086a71c5              # double 0.65866710323057787
	.quad	0x3fe324a8c407fac7              # double 0.5982250050290866
	.quad	0x3fed87a9b4b2d0fe              # double 0.92281041424442356
	.quad	0x3fe88bc0e1ef7d6a              # double 0.76705974700955193
	.quad	0x3fd175f7cb8e4d36              # double 0.27282519224646096
	.quad	0x3fe0a3962c6fb9dd              # double 0.51996906928053088
	.quad	0x3fcd3853b2cdfc64              # double 0.22828146200842803
	.quad	0x3f918c9bcb337a00              # double 0.017137941625032127
	.quad	0x3f96c02514241200              # double 0.02221734939031883
	.quad	0x3fc7893eca8c9abc              # double 0.18387589349841515
	.quad	0x3fca7e54a1eeb918              # double 0.20698030382977417
	.quad	0x3fea7097db3251dd              # double 0.82624428569630093
	.quad	0x3fe7c3b823e48b00              # double 0.74264151583005855
	.quad	0x3fb821e31bbff7d0              # double 0.094267076754447787
	.quad	0x3feae3a152eb2399              # double 0.84028688616773473
	.quad	0x3fd9ae968fd15678              # double 0.40128101391505977
	.quad	0x3fe46cb1c13778fa              # double 0.63826835382113178
	.quad	0x3fee83a0ffb7eec9              # double 0.95356798119561248
	.quad	0x3fdf95ac255ae480              # double 0.493510281066456
	.quad	0x3fcd5eed9d620a90              # double 0.22945947823253166
	.quad	0x3fe21ec4ae115634              # double 0.5662558936844051
	.quad	0x3fda2c81f7ebc5fc              # double 0.40896653376611858
	.quad	0x3feafddd854a314b              # double 0.84348941834608959
	.quad	0x3fde13e63d8febd0              # double 0.46996456157620248
	.quad	0x3fc8fa3b019043f8              # double 0.1951364286074122
	.quad	0x3fe5aeb01dd107aa              # double 0.67757421325244604
	.quad	0x3feab92a3bdc8103              # double 0.83510314647358574
	.quad	0x3feb6288760cd41d              # double 0.85577796036398335
	.quad	0x3fef570b106a8dde              # double 0.97937539297384624
	.quad	0x3faa5dd8d0a0f6e0              # double 0.051497245280627046
	.quad	0x3fda528736d9f97a              # double 0.41128712040508442
	.quad	0x3fdcb8a1ce1e46f0              # double 0.44876904610383317
	.quad	0x3fdb36ec38f4923c              # double 0.42522721826597709
	.quad	0x3fdff85bacf29cf8              # double 0.49953357591080261
	.quad	0x3fdf9560c6d44566              # double 0.49349231163895124
	.quad	0x3fe5d458bb991cc0              # double 0.68217121734860342
	.quad	0x3fd97b31cf0a9a8a              # double 0.39814419955147484
	.quad	0x3fee6df2747b9632              # double 0.95092127562083406
	.quad	0x3fc605788ff5308c              # double 0.17204196004093253
	.quad	0x3fd83c5d55765cc6              # double 0.37868436189587518
	.quad	0x3fed33129709175f              # double 0.91248445033191306
	.quad	0x3fd164646db6b488              # double 0.27175245966174844
	.quad	0x3fd462448948920e              # double 0.31849778563108166
	.quad	0x3f57f409ef8d2c00              # double 0.0014619919804370607
	.quad	0x3fd87af7d740780c              # double 0.38250537892042824
	.quad	0x3feb35289802d308              # double 0.85023908319144059
	.quad	0x3fb74c520b6d1c28              # double 0.091008308209993616
	.quad	0x3fe623715072f4ec              # double 0.69182649338440916
	.quad	0x3fe91b87ee2da7e2              # double 0.78461071509559255
	.quad	0x3fe02e324d844f19              # double 0.50563922061926114
	.quad	0x3fe494df1bd52d38              # double 0.64317279277876249
	.quad	0x3fd01c5b24820cf4              # double 0.25173071446643225
	.quad	0x3fdd5f27aecb4a66              # double 0.45893280095802991
	.quad	0x3fd702540bbb5e5e              # double 0.35951710839933593
	.quad	0x3fe6af0e0eeddc5f              # double 0.70886900821541221
	.quad	0x3fcd4ef996751540              # double 0.22897262426901399
	.quad	0x3fd173d10fa7e3fc              # double 0.27269388703240316
	.quad	0x3fd4bf3d34093030              # double 0.32417230683927567
	.quad	0x3fedf856adbbb93d              # double 0.93656476909908515
	.quad	0x3fdcb01348aa9148              # double 0.44824678512874927
	.quad	0x3fa1fd0afc979fc0              # double 0.03513368924524185
	.quad	0x3fe441643bb392df              # double 0.63298236523095486
	.quad	0x3fac0ebf021c7370              # double 0.054800004012782177
	.quad	0x3fe52feae45ae2b9              # double 0.66209930992689359
	.quad	0x3fe8f2f2d1d5641d              # double 0.77965680106274571
	.quad	0x3fd993ddbb647784              # double 0.3996500329975492
	.quad	0x3fcab7154a45f4ac              # double 0.20871225477813959
	.quad	0x3fcc3139f1d701c4              # double 0.2202522688730949
	.quad	0x3fd17d8c3aed1852              # double 0.27328782801158014
	.quad	0x3fe249cfb8b9bd9b              # double 0.57151018218239658
	.quad	0x3fd0fc54d88fea2a              # double 0.26540108822487929
	.quad	0x3fe4d0fb9eddbdfb              # double 0.65051060703802877
	.quad	0x3fe593a0ba03f203              # double 0.67427097636351652
	.quad	0x3fe6466e014b55f7              # double 0.69609737637318758
	.quad	0x3fe1e7c803636419              # double 0.55954361593024082
	.quad	0x3fe35228ae6b9a42              # double 0.60377916399449583
	.quad	0x3fde3489b23234f8              # double 0.47195665742840687
	.quad	0x3fc97bf53948e440              # double 0.19909539506059737
	.quad	0x3fd3e27a596bc0a8              # double 0.31069811565886107
	.quad	0x3fd6898787c7dacc              # double 0.35214412937004336
	.quad	0x3fedab7887f9c162              # double 0.92718149717078924
	.quad	0x3fe87448886b8860              # double 0.76419474262753439
	.quad	0x3fd76bc60be68ea0              # double 0.36595297968072238
	.quad	0x3fecda070f785974              # double 0.90161469480044198
	.quad	0x3feed776fb640721              # double 0.9638018522238988
	.quad	0x3fb1df5ed0522190              # double 0.06981461130101807
	.quad	0x3fe7a9fb143e5e9a              # double 0.73949960664591008
	.quad	0x3fd413d7ce0f9252              # double 0.31371111987235623
	.quad	0x3fe42577d4218dc8              # double 0.62957374030923408
	.quad	0x3fe5d93cec10d39d              # double 0.68276830774867714
	.quad	0x3fde4e3d813a7b8e              # double 0.47352540607419591
	.quad	0x3f71a90572d81180              # double 0.0043115818821245488
	.quad	0x3f84ed5792dc6140              # double 0.010218319100702034
	.quad	0x3fe3c1124a39bf6f              # double 0.61731829163725915
	.quad	0x3fc5cb921884f0b4              # double 0.17027498433333721
	.quad	0x3fb822b5e6b39b68              # double 0.094279640983229052
	.quad	0x3fd00459f55f50c8              # double 0.25026558839932678
	.quad	0x3fa2f7e4d1d4b180              # double 0.037047529806247148
	.quad	0x3fe769ecc027828e              # double 0.73168027429717752
	.quad	0x3fd8090195ec24dc              # double 0.37554969445097952
	.quad	0x3fe0bdbe0f199dbd              # double 0.52316191624861796
	.quad	0x3fe893abc874dd12              # double 0.76802624847087686
	.quad	0x3fb2414507e31b38              # double 0.071308435845918505
	.quad	0x3fe613597499637c              # double 0.68986199162746642
	.quad	0x3fd3878d36aee57e              # double 0.30514841404109194
	.quad	0x3f998feffd7a65c0              # double 0.024963140340877876
	.quad	0x3fe2f32be1976406              # double 0.59218401013197375
	.quad	0x3fadf2266fc24270              # double 0.058488083975252958
	.quad	0x3fa119c63839d430              # double 0.033399767268669556
	.quad	0x3fd8c13ba889611a              # double 0.38679400881439252
	.quad	0x3feadd0f94ae86b1              # double 0.83948496856119992
	.quad	0x3fdb5dd54a818e9c              # double 0.42760212207779502
	.quad	0x3fe6814a310c5a5f              # double 0.70328244762169934
	.quad	0x3fe139c2ff10c8b5              # double 0.53830098931782422
	.quad	0x3fe2e5d5a91df18d              # double 0.59055598288209554
	.quad	0x3fea2161d14e489f              # double 0.8165749633792706
	.quad	0x3febff72ef96a9c4              # double 0.87493273539194449
	.quad	0x3f9f564de531fb20              # double 0.030602662195174379
	.quad	0x3fd8870a7d82c7d8              # double 0.38324224717064004
	.quad	0x3fe3045fa6db65d8              # double 0.59428389157545336
	.quad	0x3fc22a947ff1ed58              # double 0.14192444083514988
	.quad	0x3fa254ce98e21800              # double 0.035803276216981317
	.quad	0x3fd646de20859b64              # double 0.34807542015044235
	.quad	0x3fc1c6f025b069e4              # double 0.13888360824860435
	.quad	0x3fb4ed57bae11420              # double 0.081746562123115485
	.quad	0x3fd5d517faa5a8aa              # double 0.34113120534187635
	.quad	0x3fd7b2c4105434ea              # double 0.37028600306150727
	.quad	0x3fe0a0cbdf940eac              # double 0.51962846439024224
	.quad	0x3fb669d1917ee1f0              # double 0.08755216409816291
	.quad	0x3fb52ed709fa4720              # double 0.082745971618603864
	.quad	0x3fe2f337a6c16e3f              # double 0.59218962258768915
	.quad	0x3fdc0f96901b4d72              # double 0.43845142434039197
	.quad	0x3febd4857442677c              # double 0.86969254214203273
	.quad	0x3fe3544a4a9234d6              # double 0.60403933109923957
	.quad	0x3fda906a5f797320              # double 0.41506442378686081
	.quad	0x3fe786f93a2a6100              # double 0.73522626266915836
	.quad	0x3fc41b32644cc6d0              # double 0.15707998177963711
	.quad	0x3fe9e6529099abfe              # double 0.80936554186098397
	.quad	0x3fed5162837b8ddf              # double 0.91618467025949346
	.quad	0x3fa38d7d64fa1290              # double 0.038188856674456706
	.quad	0x3fdedfc14607c532              # double 0.48240691985036499
	.quad	0x3fcbfa2f1f99728c              # double 0.21857251208247808
	.quad	0x3fdde3476d51f1d8              # double 0.46699701000013993
	.quad	0x3fd20e2958d1c05a              # double 0.28211435006870078
	.quad	0x3fcfb263eb3c64e4              # double 0.24763154016617428
	.quad	0x3fe673277eedaf61              # double 0.70155691900934525
	.quad	0x3fec565dac6f0e2e              # double 0.88554271391371286
	.quad	0x3fe9c94dfb6619af              # double 0.80582331754049175
	.quad	0x3fe9cd6320a22161              # double 0.8063216817254607
	.quad	0x3fe6d4063fd5323e              # double 0.71338188617080056
	.quad	0x3fde8a7081095e3e              # double 0.47719967461805257
	.quad	0x3fe11b0b8468d3ec              # double 0.53455139027812271
	.quad	0x3fe2896a469ee45e              # double 0.57927430909252187
	.quad	0x3fee7a2f32afd84f              # double 0.95241508388313345
	.quad	0x3fca1a41795bae80              # double 0.2039262621468545
	.quad	0x3fb20e3bc8a4bd70              # double 0.070529686436875627
	.quad	0x3fef200f40e8a4e5              # double 0.97266352345937134
	.quad	0x3fd76cfb14d0eac8              # double 0.36602665932484202
	.quad	0x3feb61a5a38cdf3f              # double 0.85566980307974194
	.quad	0x3fca95f4d63fa01c              # double 0.20770130597452485
	.quad	0x3fc633f7e46a5c0c              # double 0.17346094754313446
	.quad	0x3fbcf402c2e9df78              # double 0.11309830912239061
	.quad	0x3fec112dd4082ceb              # double 0.87709704792487508
	.quad	0x3fc6ced39cd56a84              # double 0.17818684728520762
	.quad	0x3fea94703b734c59              # double 0.83061992274668761
	.quad	0x3fe8021b46ea155b              # double 0.75025714731661297
	.quad	0x3fe995356b13d807              # double 0.79946394837929879
	.quad	0x3fec41fd0ec951c5              # double 0.88305523765534899
	.quad	0x3fd892302d00252c              # double 0.38392261881434098
	.quad	0x3feb31d3b5eeac0d              # double 0.84983239682822076
	.quad	0x3fe4a6a31fc1c4dd              # double 0.64534145548364175
	.quad	0x3fd1bc2cdbe9f382              # double 0.27711030460323383
	.quad	0x3fb69490566b5c30              # double 0.088204403971176459
	.quad	0x3fa833298fef7e60              # double 0.047265337772611771
	.quad	0x3fee1b26e5508846              # double 0.94081444538120063
	.quad	0x3fe32d57169dad01              # double 0.59928469102069937
	.quad	0x3fee077a7feb1c2e              # double 0.93841290458738569
	.quad	0x3fc8eecb71f21918              # double 0.19478743613962801
	.quad	0x3fc4d1006a2fefbc              # double 0.16262822327541737
	.quad	0x3fe0c40072a19be7              # double 0.5239259947674072
	.quad	0x3fef0f8ffb15f4df              # double 0.97064971008481026
	.quad	0x3fe8ba9b9c3bc2e8              # double 0.77277927889198583
	.quad	0x3fbab4d59a315510              # double 0.10432181372137372
	.quad	0x3fe7cae158543200              # double 0.74351565601097036
	.quad	0x3fe3a0c989b78b23              # double 0.61337735078663902
	.quad	0x3fddce9588b36d72              # double 0.4657338938684098
	.quad	0x3fed08066edb54c1              # double 0.9072296300097592
	.quad	0x3fef876b3d9eb325              # double 0.98528062853947473
	.quad	0x3fead5a00182681c              # double 0.8385772733192911
	.quad	0x3fd0e4090cb95522              # double 0.2639181732423187
	.quad	0x3fd95ce5f9a5643a              # double 0.39629506473062615
	.quad	0x3fc7aae1413e6a84              # double 0.18490234075291678
	.quad	0x3fb63aec5c332868              # double 0.08683659792873899
	.quad	0x3fd38db8b602a584              # double 0.30552499556014134
	.quad	0x3fc0bebd88ddd24c              # double 0.13082093413290108
	.quad	0x3fd2ecd7affc8366              # double 0.29570572076959534
	.quad	0x3febb2d680e06ce4              # double 0.86558079882834393
	.quad	0x3fe8ae498cf81461              # double 0.77127530606288641
	.quad	0x3f8384044e1aea80              # double 0.00952914584501241
	.quad	0x3fcd774878f930c0              # double 0.23020273119835188
	.quad	0x3fc63cc8e2b93400              # double 0.17373000212174361
	.quad	0x3fe51f6bb8bc3ea2              # double 0.66008554535979536
	.quad	0x3fe8e74b6221b544              # double 0.77823418775884833
	.quad	0x3fe7d017879ec374              # double 0.74415184486689023
	.quad	0x3fd305bbbd361814              # double 0.29722493627230162
	.quad	0x3fe7e9593201061c              # double 0.74723491445928714
	.quad	0x3f87351c113aee40              # double 0.011331767345260535
	.quad	0x3fec485df49ed733              # double 0.88383386399684694
	.quad	0x3fe083bb8f17bbb6              # double 0.51608064601702242
	.quad	0x3fcc467dce414500              # double 0.22090122767489362
	.quad	0x3feba9d550ea1061              # double 0.8644815998418488
	.quad	0x3fdd914d9e56b692              # double 0.46199360335126827
	.quad	0x3fe15b722f31e9cb              # double 0.54241284578102389
	.quad	0x3fd597e8eef533c0              # double 0.33739684425091454
	.quad	0x3fddeb3ec7adfe3e              # double 0.46748322963682998
	.quad	0x3fc90e4670850214              # double 0.19574814314002309
	.quad	0x3fe7b7f6f5da9264              # double 0.74120662706679896
	.quad	0x3fecafba06eecac8              # double 0.89645100931223798
	.quad	0x3fd5e378cefc0c5e              # double 0.34200878346763897
	.quad	0x3fb59b36a8054df8              # double 0.084399620075877979
	.quad	0x3fed4cd69bd94ee1              # double 0.91562967719297828
	.quad	0x3fc73868f6c87744              # double 0.18140899705843527
	.quad	0x3fd8a9f1c87c29de              # double 0.38537258700003274
	.quad	0x3fcf879b4b6e75ac              # double 0.24632588561227686
	.quad	0x3fb15aed7c0daf98              # double 0.067793696199883846
	.quad	0x3fe5d6baf54bd680              # double 0.68246219548628062
	.quad	0x3feb0671a955a413              # double 0.84453661988402684
	.quad	0x3fe3941e2f1bcead              # double 0.61183079911139304
	.quad	0x3fb7abda08103cd0              # double 0.092465998619661649
	.quad	0x3fb74c8f8f6aeac8              # double 0.091011974824975472
	.quad	0x3fb2955e769caa68              # double 0.072591690023423916
	.quad	0x3fc33a2143456270              # double 0.15021148476332113
	.quad	0x3fd650a7abe58bae              # double 0.34867278849395233
	.quad	0x3feb2d787a7f9ea6              # double 0.84930061269274826
	.quad	0x3fe8472e7cb440cc              # double 0.75868915897628985
	.quad	0x3fe281d4b4aab31b              # double 0.5783484963081692
	.quad	0x3fe63f6666147282              # double 0.6952392572162156
	.quad	0x3fe634f2ee16f524              # double 0.69396349431886906
	.quad	0x3fba04a10a723278              # double 0.10163313393622697
	.quad	0x3fed7ae3eee02a43              # double 0.92125126510047328
	.quad	0x3feda69ea8a76a34              # double 0.92658932628848456
	.quad	0x3fef623800abbbc4              # double 0.98073959475538474
	.quad	0x3fee513c7af10867              # double 0.94741653453844499
	.quad	0x3fe08478be6f9c5b              # double 0.51617085642363791
	.quad	0x3fd5b97436625316              # double 0.33944421111054746
	.quad	0x3fda1dba024f56f4              # double 0.40806436753824404
	.quad	0x3fe113eeadba6210              # double 0.53368314677487838
	.quad	0x3fd9608cbfd4a36e              # double 0.39651793225725995
	.quad	0x3fb173de540a8108              # double 0.068174262540655062
	.quad	0x3fc3f4159318c608              # double 0.15588636095485264
	.quad	0x3fd15ab56e251ad8              # double 0.27116142040578728
	.quad	0x3feaf7bcf93709d0              # double 0.8427414767723409
	.quad	0x3fee8cff28fd0d79              # double 0.95471151357234796
	.quad	0x3fc360847ce23698              # double 0.15138298127969985
	.quad	0x3fa4764555b38860              # double 0.039964834891876633
	.quad	0x3fc2b6f7c2eeb87c              # double 0.1462087346857891
	.quad	0x3fefdcd31175697f              # double 0.99570611390963381
	.quad	0x3fb451cf412fdb58              # double 0.07937331525304836
	.quad	0x3fed6107889907f5              # double 0.91809441260579538
	.quad	0x3fc1c4ba8d734188              # double 0.13881618410824736
	.quad	0x3fee20e67bc6aae0              # double 0.94151615309723624
	.quad	0x3fca86cbdd867dbc              # double 0.20723865811031128
	.quad	0x3fc1b31e67e12348              # double 0.13827877113569742
	.quad	0x3fe61bb8b1083f35              # double 0.6908839662228049
	.quad	0x3fee18f9bdfa872b              # double 0.94054877381515689
	.quad	0x3fecb456abc2837e              # double 0.897013984173199
	.quad	0x3fefb829b032c848              # double 0.9912308160185228
	.quad	0x3f9706397f06e440              # double 0.022484682443721704
	.quad	0x3fa6e930a4eb72f0              # double 0.044747848636438436
	.quad	0x3fe0d222a908a41c              # double 0.52565129293828106
	.quad	0x3fd62db5b0a09bf2              # double 0.34653990029113324
	.quad	0x3fb72dc22e234d60              # double 0.09054196955121574
	.quad	0x3fe0889321dade3c              # double 0.51667172062202082
	.quad	0x3fd9daa9631b4af4              # double 0.40397104910259363
	.quad	0x3fcce120445856ac              # double 0.22562030160104507
	.quad	0x3fea498aecb4ea3c              # double 0.82147737724091696
	.quad	0x3fdd768ca3534b24              # double 0.46036067914717393
	.quad	0x3fd6107af6a1e0ac              # double 0.34475587926091111
	.quad	0x3fda4b48c3cf120c              # double 0.41084498521766544
	.quad	0x3fd4b56241fd54f8              # double 0.32357078975958542
	.quad	0x3fe795191881eab6              # double 0.73695044314020808
	.quad	0x3fa3b8aad484de80              # double 0.038518274729026025
	.quad	0x3f245b6653f33000              # double 1.5531181450112452E-4
	.quad	0x3fd653fac0aeea44              # double 0.34887570206379714
	.quad	0x3fedbbb4b8f5881d              # double 0.92916332363916221
	.quad	0x3fd2870c004cb9b2              # double 0.2894926073958245
	.quad	0x3fc4bec3caf50a98              # double 0.16207168016452012
	.quad	0x3fc77fc0d89ce1d0              # double 0.18358622147367365
	.quad	0x3fd8aa0902dd6d72              # double 0.38537812499790569
	.quad	0x3fde8bb408a9dba2              # double 0.47727681013150847
	.quad	0x3fe9142d20ad0b63              # double 0.78371292478582821
	.quad	0x3feaad9c21e576b0              # double 0.83369261379603721
	.quad	0x3fed21b8977c6fb2              # double 0.91036634051442022
	.quad	0x3fe4515ed1e2d762              # double 0.63493290894869525
	.quad	0x3fce0643e78c8e44              # double 0.23456620031457664
	.quad	0x3fe584ea1f8dc56c              # double 0.67247491991854025
	.quad	0x3fd01bde07f0ad1c              # double 0.25170088553814352
	.quad	0x3fe472f9c0741079              # double 0.63903510654974049
	.quad	0x3fecacf4118e166f              # double 0.89611247471539268
	.quad	0x3fea231c7b1a7727              # double 0.81678604167584445
	.quad	0x3fe90345fa492549              # double 0.78164957889490794
	.quad	0x3fc5e677e5613f10              # double 0.17109583568753139
	.quad	0x3fcc3de047c542b0              # double 0.22063830856725053
	.quad	0x3fdff5ed12b1562a              # double 0.49938513589345013
	.quad	0x3fdad71b0fb7cec4              # double 0.4193790105339128
	.quad	0x3fef683e42f315e9              # double 0.98147500110706886
	.quad	0x3fc3c1a3ad0d33b0              # double 0.15434690427573861
	.quad	0x3fe2359d3fb93157              # double 0.56904470869043677
	.quad	0x3fef973e99310175              # double 0.98721246643257976
	.quad	0x3fc4cc2e887d5714              # double 0.16248113312274681
	.quad	0x3fe395926fdfbccc              # double 0.6120083031691137
	.quad	0x3fe13b33d6328e78              # double 0.53847686610647738
	.quad	0x3fd6f99d10ed360c              # double 0.35898520138729917
	.quad	0x3fc37a0f5a89df34              # double 0.15216247483089662
	.quad	0x3feb0d73dd540571              # double 0.84539216259160643
	.quad	0x3fe4bc5d094a91f3              # double 0.64799358191208822
	.quad	0x3feff1f2bc0e9489              # double 0.99828469018815824
	.quad	0x3feadd70b7dd9330              # double 0.83953128730045101
	.quad	0x3feb83d455621878              # double 0.85984245945361604
	.quad	0x3fcd7dd42b9eb548              # double 0.23040248994713353
	.quad	0x3fe4d3c491847f83              # double 0.65085056706810496
	.quad	0x3fb98d7f3182d630              # double 0.099815320575395771
	.quad	0x3fd7dbcb3a838c4e              # double 0.37279015268558602
	.quad	0x3feb69ed9fd2221c              # double 0.85668069090849341
	.quad	0x3fb4ff5c1f9d6a48              # double 0.082021482199175044
	.quad	0x3fa55ef5b003db20              # double 0.041740110145772613
	.quad	0x3fd381099c3f9fbe              # double 0.30475082644124629
	.quad	0x3fe1c46a9176239b              # double 0.55522659693189114
	.quad	0x3fd31d5486eb68be              # double 0.29866517234553303
	.quad	0x3fcb4629abf37a18              # double 0.21307869812058366
	.quad	0x3fc324e0c60b8aac              # double 0.14956292791528847
	.quad	0x3fe89619749d9e3b              # double 0.76832268501761491
	.quad	0x3fe7e1d61b93ee34              # double 0.74631791483211041
	.quad	0x3fcb470517b46a98              # double 0.21310485513170785
	.quad	0x3fd111299ac4599c              # double 0.26667251695598693
	.quad	0x3fe0d765a6f00b40              # double 0.52629358868612286
	.quad	0x3fdddf506ff9a350              # double 0.46675501761506144
	.quad	0x3fe1090770787617              # double 0.53235218016533536
	.quad	0x3fe4b7e6792b91f6              # double 0.64744876543096441
	.quad	0x3fc4a1b4a82f954c              # double 0.16118486606789373
	.quad	0x3fd96b3d1d16af0c              # double 0.39717033234295296
	.quad	0x3fe55bd9249fcbc7              # double 0.66746194031872441
	.quad	0x3fc19573449b7958              # double 0.13737336015669643
	.quad	0x3fe95d8314f7f494              # double 0.79266504378724045
	.quad	0x3fe29ed07a0c194c              # double 0.58188651883464493
	.quad	0x3fe61f1ae69cbdaa              # double 0.69129700700243757
	.quad	0x3fe401b9e5887959              # double 0.6252107127254859
	.quad	0x3fc9d6dfd3db5338              # double 0.20186994404380143
	.quad	0x3fe19523ff9f530d              # double 0.54945564199678787
	.quad	0x3fb4bd4d509b72c0              # double 0.08101351945829105
	.quad	0x3fe7d4d5949a1572              # double 0.74473074935728634
	.quad	0x3feb3441e9ef7f6c              # double 0.85012908640417839
	.quad	0x3fda0679b36ee0fa              # double 0.40664522669568692
	.quad	0x3fd549424d919c00              # double 0.33259637427403277
	.quad	0x3fe48f63730c67ed              # double 0.64250347586061951
	.quad	0x3feea3a058834566              # double 0.9574739197507085
	.quad	0x3fe926811f9b3db1              # double 0.78595024273993463
	.quad	0x3fdc40ae1d333590              # double 0.44144776202741642
	.quad	0x3fb9f74d53f61ce8              # double 0.10142978000486702
	.quad	0x3fe62494ddadc7ac              # double 0.69196551605840773
	.quad	0x3feb32141fe10f95              # double 0.84986311174769702
	.quad	0x3fe4e7283e4dc8fb              # double 0.65321743172378832
	.quad	0x3fe8b7c5ab958156              # double 0.77243312370778017
	.quad	0x3fddabab137230b4              # double 0.46360279940632698
	.quad	0x3fee243cea26806b              # double 0.94192357761859336
	.quad	0x3faa30b5b3a12530              # double 0.051152876069475162
	.quad	0x3fecbfa92b4602bb              # double 0.89839609577037238
	.quad	0x3f6615b5eb484100              # double 0.0026958993059978953
	.quad	0x3fe0627c9224ee33              # double 0.51202229064751348
	.quad	0x3fd4df99e8666f1c              # double 0.32614753432584265
	.quad	0x3fe121f1118a49ac              # double 0.53539327073877052
	.quad	0x3fdaf5cd1f5a0fdc              # double 0.4212525182886091
	.quad	0x3fda72a8d3168328              # double 0.41324825872475168
	.quad	0x3feda829a760151b              # double 0.92677767458431803
	.quad	0x3fa7007230c85360              # double 0.044925278143785219
	.quad	0x3fd76bc8d4ce1b6a              # double 0.36595364362476934
	.quad	0x3fda0f93031140f0              # double 0.40720057773161411
	.quad	0x3fd8024a69881b7e              # double 0.37513981157137966
	.quad	0x3feb0d44c6cbbcca              # double 0.84536970927538246
	.quad	0x3fd384ed218c7052              # double 0.30498817707280523
	.quad	0x3fe85e99497be840              # double 0.7615477023348447
	.quad	0x3fe9fca5f99dbecc              # double 0.81209086182749379
	.quad	0x3fe8f2bd5095ba4c              # double 0.77963128794892488
	.quad	0x3f8e815119c76cc0              # double 0.0148950897209289
	.quad	0x3fe28607753a4d7c              # double 0.57886097808879766
	.quad	0x3fe8550b7b6eb46f              # double 0.76038145168207716
	.quad	0x3fe6c19d5c257d68              # double 0.71113460538246631
	.quad	0x3fa8d39f6e32e510              # double 0.048489553644183059
	.quad	0x3fe335dc5c80c572              # double 0.60032480303759272
	.quad	0x3fe37cbb458b7c6e              # double 0.60897601683599389
	.quad	0x3feb22b4fe87a7c3              # double 0.84798669541236682
	.quad	0x3fda5a84022fc3f8              # double 0.41177463735135644
	.quad	0x3fedb367d8e6c693              # double 0.92815010417526123
	.quad	0x3fca98498c56fd14              # double 0.20777243950394875
	.quad	0x3fcc36054ef06ec0              # double 0.22039858202412255
	.quad	0x3faae908030ac9d0              # double 0.052559137698512282
	.quad	0x3fc4d49d985167d0              # double 0.16273851334955092
	.quad	0x3fd773fb141ff1cc              # double 0.36645390477476947
	.quad	0x3fd8e19bd9db5182              # double 0.38877006793088509
	.quad	0x3fe3eedbdf62be75              # double 0.62290757780097172
	.quad	0x3fc3528b919078e4              # double 0.15095657928117767
	.quad	0x3fd7fa11e79ccd88              # double 0.37463805788430493
	.quad	0x3fe8bb268df53a71              # double 0.77284553266674838
	.quad	0x3fe8beaf732a5235              # double 0.77327702038980439
	.quad	0x3fe451ea2b4fa868              # double 0.63499935588084799
	.quad	0x3fcfce2e9ee79670              # double 0.24847967871680821
	.quad	0x3fb73ce2232afba8              # double 0.090772756181634606
	.quad	0x3fe110af64f9f5b5              # double 0.53328675958589733
	.quad	0x3fdcd0defedd8b62              # double 0.45024847878646856
	.quad	0x3fe78aaa47e3f45c              # double 0.73567689934828762
	.quad	0x3febf6b1748c6495              # double 0.87386391414033204
	.quad	0x3fe219cee7e5df6f              # double 0.56565041821066397
	.quad	0x3fd821f74810a0c2              # double 0.37707311666100563
	.quad	0x3fe34f3b5cd44b41              # double 0.60342186098782957
	.quad	0x3fc23f72f64db3f0              # double 0.14256131197490118
	.quad	0x3fd51ced93f7ccbc              # double 0.32989062738415575
	.quad	0x3fed67765de47141              # double 0.91887968386030405
	.quad	0x3fe0c6bdc69aeb68              # double 0.52426041402882806
	.quad	0x3fe186eb410b2e02              # double 0.54771959976045559
	.quad	0x3fe2b0e3f563c590              # double 0.58409307410890854
	.quad	0x3fe9da2c243b6562              # double 0.80788237644734928
	.quad	0x3fd27588e39e9dbc              # double 0.28842375019527444
	.quad	0x3fcd8b33cd5f8dc8              # double 0.2308106186675174
	.quad	0x3fa72be282c2aa70              # double 0.045256689512218951
	.quad	0x3fd2c2b8cec22004              # double 0.29313488188972792
	.quad	0x3febdcc80e17b88a              # double 0.87070086243126465
	.quad	0x3fe4e61ecc9d010a              # double 0.65309085811171141
	.quad	0x3fdba566b9c83abe              # double 0.4319702924994252
	.quad	0x3fe85b92be7e5fea              # double 0.76117837148467271
	.quad	0x3fed8230a34408bf              # double 0.92214233291476677
	.quad	0x3fe75520fdac42be              # double 0.72914170785414689
	.quad	0x3fc25872b5087984              # double 0.14332422103411713
	.quad	0x3fca57a637e783fc              # double 0.20579984407143559
	.quad	0x3fd3915b646f8d4c              # double 0.3057468872850293
	.quad	0x3febecd461f2292e              # double 0.87265986566607068
	.quad	0x3fe6e8fa71f2cd75              # double 0.71593973403507383
	.quad	0x3fc2dce510e3d840              # double 0.14736617397983487
	.quad	0x3fc588e8b966a87c              # double 0.16824063351424801
	.quad	0x3fdebf2c2b0671b8              # double 0.48041824533154509
	.quad	0x3fe78d74e1ef5857              # double 0.73601764800947478
	.quad	0x3fe1283968643021              # double 0.53616018666207677
	.quad	0x3fd0c0453b3302aa              # double 0.26173525601556469
	.quad	0x3fec73b680a6065e              # double 0.889125109926862
	.quad	0x3fd212aeb2504fa6              # double 0.28239028371285213
	.quad	0x3fd7378a01ae992e              # double 0.36276483692417372
	.quad	0x3febbabc535af7e9              # double 0.86654487877217179
	.quad	0x3fefd8faaf471885              # double 0.99523672326974177
	.quad	0x3feeae5776b0d9aa              # double 0.95878194028664621
	.quad	0x3fdcbe828e0e59f6              # double 0.44912780640279892
	.quad	0x3fec13d2a9761fc5              # double 0.87741978738721882
	.quad	0x3febf0bf5b24b587              # double 0.87313812066501917
	.quad	0x3feeab0f252cb483              # double 0.95838124523801615
	.quad	0x3fe18c59fb3a5435              # double 0.54838275020541138
	.quad	0x3fedbbd914b7861d              # double 0.92918066068904503
	.quad	0x3fe0ed5408be9bbd              # double 0.52897073467180855
	.quad	0x3fea9336cfffbac4              # double 0.83047047257226624
	.quad	0x3feeae6adb26b89f              # double 0.95879118731479084
	.quad	0x3fe8c94717c7e156              # double 0.77457003254589085
	.quad	0x3fdd037c36e857be              # double 0.4533377205092356
	.quad	0x3fb089f41e0a17d0              # double 0.064605004628986551
	.quad	0x3fd561258ae34b70              # double 0.33405436099308528
	.quad	0x3fde236fe043a008              # double 0.47091290379330575
	.quad	0x3fead9681c7609c6              # double 0.83903890188985808
	.quad	0x3fecf8720579091b              # double 0.90532780712991057
	.quad	0x3fe6c0da48c23469              # double 0.71104158602396439
	.quad	0x3fb0ea91d1a23c08              # double 0.066079248123273371
	.quad	0x3fd88a7c9019fc32              # double 0.38345254967129272
	.quad	0x3fe5e53742128880              # double 0.68423045067562782
	.quad	0x3fdb48079b133596              # double 0.42627134460493588
	.quad	0x3fe89697da6a3793              # double 0.76838295611536223
	.quad	0x3fb4661b6a79b548              # double 0.079683030600525062
	.quad	0x3feb5ae3a5822997              # double 0.85484487844341828
	.quad	0x3f9e49e5e897e2c0              # double 0.029578773805016167
	.quad	0x3fd47ad9e77d481e              # double 0.31999824148545197
	.quad	0x3fe88bd6e7db12cb              # double 0.76707024845435379
	.quad	0x3fe8cf44e41f90bb              # double 0.77530140452702001
	.quad	0x3fef33176ad43cc3              # double 0.97498675217675445
	.quad	0x3feb9009488a2349              # double 0.86133255164995959
	.quad	0x3fc5138f6f18a90c              # double 0.16465943264604055
	.quad	0x3fda6673a6a73120              # double 0.41250315928188463
	.quad	0x3fe9426efb6a96f9              # double 0.78935956101187721
	.quad	0x3fe946e45059bb93              # double 0.78990379041157366
	.quad	0x3faa10f282357860              # double 0.050910547632825098
	.quad	0x3fc90b27bc78f790              # double 0.19565293028602726
	.quad	0x3fed08f1f5a4617b              # double 0.90734193779921612
	.quad	0x3fe49561ec61aa38              # double 0.64323517006170672
	.quad	0x3feb4c8983b1c879              # double 0.85309291574073065
	.quad	0x3fe998897fbb71f8              # double 0.79987025211045104
	.quad	0x3fef0aa8930d3b33              # double 0.97005108567268505
	.quad	0x3fe4d62825a87181              # double 0.6511421905047855
	.quad	0x3fc03af7b6d5c3e4              # double 0.12679954936495996
	.quad	0x3feb5e880d8edea6              # double 0.8552894844824166
	.quad	0x3fe2441309b1a1ee              # double 0.57080985921225902
	.quad	0x3fe37f8689f24b01              # double 0.60931708281199815
	.quad	0x3fd589e71920f7ba              # double 0.33654191450102255
	.quad	0x3fde8295d9a4a41c              # double 0.47672029737674548
	.quad	0x3febdb2a15a8a664              # double 0.87050346594078265
	.quad	0x3fa67028d9376ba0              # double 0.043824459567722629
	.quad	0x3fe02a0969133883              # double 0.50513144037701385
	.quad	0x3fdbc9d69eefa6b4              # double 0.43419423600299045
	.quad	0x3fe4297dcf14180b              # double 0.63006487317102378
	.quad	0x3fcc8ca482ed0058              # double 0.22304207222805661
	.quad	0x3fe172df508cc510              # double 0.54527250034712615
	.quad	0x3fe3c511d6cb1af5              # double 0.61780635787803695
	.quad	0x3fe54ce4ea150bca              # double 0.66563649863416541
	.quad	0x3fc36301cde69ff4              # double 0.15145895532373255
	.quad	0x3fbf2a4b21c4c1c0              # double 0.12173909735134369
	.quad	0x3fc99abea3c4e138              # double 0.20003493305717668
	.quad	0x3fd6b385d3f6a8f2              # double 0.3547072000461774
	.quad	0x3fed2099161c9e13              # double 0.91022924727161791
	.quad	0x3feb762ecc606e8c              # double 0.85817661206552164
	.quad	0x3fe6781afae2c616              # double 0.70216130257739695
	.quad	0x3fd760d1222146d6              # double 0.3652842362690597
	.quad	0x3fd4d1f2e3eae780              # double 0.32531425721719387
	.quad	0x3fcabcae130ad50c              # double 0.20888305597114998
	.quad	0x3fe0a239c6e77b66              # double 0.51980294083101053
	.quad	0x3fed44d3a699ff54              # double 0.914651704209954
	.quad	0x3fe6b9a51e7c018d              # double 0.71016174272522081
	.quad	0x3fd0b558c0acd50a              # double 0.26106852355890509
	.quad	0x3fe9b3f82e6a4ade              # double 0.8032189280077906
	.quad	0x3fec0f72971d62ad              # double 0.87688569559676
	.quad	0x3fc9b89f7b32b50c              # double 0.2009467460206128
	.quad	0x3fd76495db00ed40              # double 0.3655142439563015
	.quad	0x3fc96cc833f091bc              # double 0.19863226448172877
	.quad	0x3f993e35f22c4c20              # double 0.024651377588338019
	.quad	0x3fe1c1ae1a792222              # double 0.55489258928816221
	.quad	0x3fe9f161da2d7a1e              # double 0.81071560490437711
	.quad	0x3fcf7425e9ab9c60              # double 0.24573205861745162
	.quad	0x3fa902de20fd8b80              # double 0.048850003745221748
	.quad	0x3fef97592cf88a64              # double 0.98722513945933743
	.quad	0x3feb5d707dfc5075              # double 0.85515617949069045
	.quad	0x3fd7e095a50d383a              # double 0.3730825530846037
	.quad	0x3fb17327a150a9a8              # double 0.068163372882429685
	.quad	0x3fc07922b9c41fbc              # double 0.12869676657305529
	.quad	0x3fd1823dff8c3726              # double 0.27357435184318246
	.quad	0x3faacacca821e270              # double 0.052328486942262553
	.quad	0x3f99a218fe3573e0              # double 0.025032415881799497
	.quad	0x3fe27cf014f99a98              # double 0.577751198736979
	.quad	0x3fb5cdde3e49b838              # double 0.085172548491500133
	.quad	0x3fb1962ba8246b90              # double 0.068697670507772424
	.quad	0x3fd28569f9e8a6f0              # double 0.28939294247776015
	.quad	0x3fe28a7aa5e5fb5b              # double 0.57940418626808865
	.quad	0x3fe0fe4bd48eec8d              # double 0.53104201808254603
	.quad	0x3fe58c9a05891265              # double 0.67341328698291802
	.quad	0x3fc57267434c57b0              # double 0.16755381380124623
	.quad	0x3fdf166c59675592              # double 0.48574360590767995
	.quad	0x3fb728f95a304058              # double 0.090468964117691342
	.quad	0x3fef81e377f865d3              # double 0.98460553580951637
	.quad	0x3feff171daf39674              # double 0.99822323574035332
	.quad	0x3fed0ddfa24bdbc7              # double 0.90794355104923674
	.quad	0x3fce8bf9f0a81da4              # double 0.23864673853698293
	.quad	0x3fec2ee1ad7117fd              # double 0.88072284579607152
	.quad	0x3fc80af26c0ad73c              # double 0.18783407474045954
	.quad	0x3fe5f79c0ac78698              # double 0.68647577386237213
	.quad	0x3fe01a011ff01c90              # double 0.50317436445119945
	.quad	0x3fee81d896791706              # double 0.9533503474164895
	.quad	0x3fe931c1eb286cce              # double 0.78732391289977399
	.quad	0x3fcbb34addd8202c              # double 0.21640907127607656
	.quad	0x3fe6d904eab895ea              # double 0.71399160236313475
	.quad	0x3fdac95507a669de              # double 0.4185383391101406
	.quad	0x3fdb5df7c2c1e20c              # double 0.42761034030220979
	.quad	0x3fee926e6b2619fc              # double 0.95537491729265822
	.quad	0x3fe073694079d13f              # double 0.51408827393473888
	.quad	0x3fd728ad9ca4e652              # double 0.36185779855040778
	.quad	0x3fc196cd51b60b2c              # double 0.13741461267280763
	.quad	0x3fdf2daa19cba45c              # double 0.48716213721360702
	.quad	0x3f651e80acb0fb00              # double 0.0025780213523199924
	.quad	0x3febfe132f02b23d              # double 0.87476500684494563
	.quad	0x3fda8f89cb4224ce              # double 0.41501087998819919
	.quad	0x3fe20007e94f59f5              # double 0.56250377243378458
	.quad	0x3fa907a3b21b8350              # double 0.048886409274706666
	.quad	0x3fe7c604050aebba              # double 0.74292183861631789
	.quad	0x3fed2e7599b75fba              # double 0.91192131064143855
	.quad	0x3fc7de153ddeb8ac              # double 0.18646493454929691
	.quad	0x3fe68fba9f88fb40              # double 0.7050450435561757
	.quad	0x3fe7c7695d7993ba              # double 0.74309223419969972
	.quad	0x3fd85a09029f0e96              # double 0.38049531227100297
	.quad	0x3fe900eafa6f0971              # double 0.78136204636420648
	.quad	0x3fed92532d99b419              # double 0.92411192804650277
	.quad	0x3fc8d040ea1998f8              # double 0.19385539465583412
	.quad	0x3fee59449ef404f0              # double 0.94839697881266538
	.quad	0x3fe5eb02bfd496d3              # double 0.68493783442382961
	.quad	0x3fe3f5a81a66f398              # double 0.62373738438292303
	.quad	0x3fe2b29112cfa66e              # double 0.58429769205140558
	.quad	0x3f7d883600052a00              # double 0.0072099789980009099
	.quad	0x3fc25a0fc038d43c              # double 0.14337345968093185
	.quad	0x3feb7063cc3f80f3              # double 0.85746946232032284
	.quad	0x3fc848b189b19ef4              # double 0.1897184297879374
	.quad	0x3fe9f44067832dc4              # double 0.81106586663502655
	.quad	0x3fa839911435e310              # double 0.047314199177838856
	.quad	0x3fd321e22d51312e              # double 0.29894308496001798
	.quad	0x3fc26ec5f906b1bc              # double 0.14400553378562886
	.quad	0x3fc85033a8b7bb9c              # double 0.18994756448907146
	.quad	0x3fe9b9c883389be0              # double 0.80392861966253903
	.quad	0x3fdc46a46fdd4382              # double 0.4418116657662311
	.quad	0x3fe36f99b515bd75              # double 0.60737309806965689
	.quad	0x3fe01cd9f5d6eefa              # double 0.50352190032523869
	.quad	0x3fe9f19d3143dccc              # double 0.81074390050971478
	.quad	0x3fbe0bc35b3784b0              # double 0.11736699082350088
	.quad	0x3fd5e2499e566456              # double 0.34193649733203324
	.quad	0x3fc2be106ccdaf58              # double 0.14642529785794056
	.quad	0x3fd986d7057a5c80              # double 0.39885497603376763
	.quad	0x3fdaf216a1d50e42              # double 0.42102590373926685
	.quad	0x3fe7c1a825a0db3e              # double 0.7423897490433331
	.quad	0x3fd1bc565914ae68              # double 0.27712019633574991
	.quad	0x3fe3ffaeb5a7cc9d              # double 0.62496123771269974
	.quad	0x3fd5ce871abe19b4              # double 0.34073045360164689
	.quad	0x3fe05099460933a7              # double 0.50983871153731719
	.quad	0x3fba2e1e8a9a48d8              # double 0.10226622470716806
	.quad	0x3fe43066e2f49c85              # double 0.63090843512772266
	.quad	0x3fe869b9de1fb071              # double 0.76290601142456016
	.quad	0x3fc7b940d19e6128              # double 0.18534097895895596
	.quad	0x3febf1709b5ba1bf              # double 0.87322264045092612
	.quad	0x3fe7658795418f00              # double 0.73114375258998621
	.quad	0x3fd6adb9dd51efae              # double 0.35435339558875512
	.quad	0x3fe6fad459ad5711              # double 0.71811883463917259
	.quad	0x3fc994ef30251ae0              # double 0.19985761500193799
	.quad	0x3fde18a86a0e1332              # double 0.47025499684268646
	.quad	0x3fd859bc6fb4e62a              # double 0.38047705563403389
	.quad	0x3fea1ae479d6f8f3              # double 0.81578277394126386
	.quad	0x3fe48b8260889bfc              # double 0.64202994207596431
	.quad	0x3fedd194ea56c1ba              # double 0.93183370370211738
	.quad	0x3fd3f36226ab4fc4              # double 0.3117299440029877
	.quad	0x3fd413fdb16d1a98              # double 0.31372015311027601
	.quad	0x3fd9668df77b42dc              # double 0.39688443344225077
	.quad	0x3fead320cf2be967              # double 0.83827248061360826
	.quad	0x3fecad39f8726496              # double 0.89614580654883258
	.quad	0x3fe0c998411132d6              # double 0.5246087332576177
	.quad	0x3fea5b21a9d2643e              # double 0.82362445038155108
	.quad	0x3fc9b07bef2a9998              # double 0.20069836786315132
	.quad	0x3fe1fd7ed446a86a              # double 0.56219426593930888
	.quad	0x3fd401fd427e3fd8              # double 0.31262141698334522
	.quad	0x3fb710889eab6070              # double 0.090096033799797359
	.quad	0x3fa6a3b4bdc29010              # double 0.044217727817596253
	.quad	0x3fdf6939f50c7a76              # double 0.49079750948468559
	.quad	0x3fd0940537a9bcca              # double 0.25903444705813838
	.quad	0x3fcffd28a2648158              # double 0.24991329125715356
	.quad	0x3fe44c69ed4ca778              # double 0.63432785365624422
	.quad	0x3fd771e0785872d0              # double 0.36632549049845142
	.quad	0x3fe46b497dc9f853              # double 0.63809656685021776
	.quad	0x3fd484fc04a25c1c              # double 0.32061672642288541
	.quad	0x3fafa8210637a3e0              # double 0.06182959748168293
	.quad	0x3fe4154cfc5fb6af              # double 0.6276001862695092
	.quad	0x3fecb4fe056571f3              # double 0.89709378293951969
	.quad	0x3fe582c5cac5a4aa              # double 0.67221345523752984
	.quad	0x3fe51fa4ec18a000              # double 0.66011282074487099
	.quad	0x3feb4cb5dec0771c              # double 0.85311406618322704
	.quad	0x3fde79f41da54bc2              # double 0.47619345564924853
	.quad	0x3feb5d4c0046a775              # double 0.85513877920059989
	.quad	0x3fd82b593630689a              # double 0.37764578143981853
	.quad	0x3fe6a0d1c6bb3d7c              # double 0.70713127913215557
	.quad	0x3fe782e13c86c8d3              # double 0.73472654172499074
	.quad	0x3fd1d75229d1c980              # double 0.27876714786466295
	.quad	0x3fecd57e1ed3a0be              # double 0.9010611154635837
	.quad	0x3fb8c5b4ed847f40              # double 0.09676676558274
	.quad	0x3fe619ed863964dc              # double 0.69066501823104032
	.quad	0x3fcda15a325a93ec              # double 0.23148658236200903
	.quad	0x3feed9961ff452d1              # double 0.96406084290591753
	.quad	0x3fee1c54aaf4b7e2              # double 0.94095834150152435
	.quad	0x3fbfcde577199198              # double 0.12423547895156728
	.quad	0x3fcd9b20ee817864              # double 0.23129665036953206
	.quad	0x3fe8389818e7cd3f              # double 0.75690846313811011
	.quad	0x3fd95c2f115b0dec              # double 0.39625145621195546
	.quad	0x3fda84e94e60c80e              # double 0.4143622651491804
	.quad	0x3fed4779971adacd              # double 0.9149749709384537
	.quad	0x3fc220f50d456900              # double 0.14163077495579302
	.quad	0x3fcef29ee28403ec              # double 0.24177919445358442
	.quad	0x3fd5ab1685f9e1b6              # double 0.33856738170245693
	.quad	0x3fdcf13444295c36              # double 0.45222193390276588
	.quad	0x3fea66c5f96cb4db              # double 0.82504557338475182
	.quad	0x3fef4314c0feabf9              # double 0.9769386071615137
	.quad	0x3febcef0ed28115d              # double 0.86901136703140092
	.quad	0x3fe73ef86e74e417              # double 0.72643682073169458
	.quad	0x3fed7647b4d6e07d              # double 0.92068848915279455
	.quad	0x3f9dd607c3454de0              # double 0.029136773389223936
	.quad	0x3fc9d2fb836ae1f8              # double 0.20175117413397436
	.quad	0x3f9f79f503e70e60              # double 0.030738666880792187
	.quad	0x3fdb4c408ac6b880              # double 0.4265290599095195
	.quad	0x3fe3c6a179f8edae              # double 0.61799691984872651
	.quad	0x3fee8eabef954f3f              # double 0.95491596978761339
	.quad	0x3fc9b5e39e84d254              # double 0.20086331596543749
	.quad	0x3fb8c764289d0708              # double 0.096792468943956433
	.quad	0x3fd31cc77d722516              # double 0.29863154650281964
	.quad	0x3fcb4884ac2c4f6c              # double 0.21315058142556198
	.quad	0x3fe8270eb13e726c              # double 0.75476774805026769
	.quad	0x3fd5c3adfccc46a0              # double 0.34006833731937469
	.quad	0x3fef4880952bae84              # double 0.97760037550820344
	.quad	0x3fe123f0eabcd036              # double 0.53563733908823141
	.quad	0x3f9d1fbfb8ab5400              # double 0.028441424986187513
	.quad	0x3fd567b9113a7726              # double 0.33445574457606353
	.quad	0x3fec53d036e584b6              # double 0.88523112031921047
	.quad	0x3fd0221922c7968a              # double 0.25208118816804215
	.quad	0x3fe265551c04503d              # double 0.57486968490639578
	.quad	0x3fb0a567cd0d52e0              # double 0.065023887216124177
	.quad	0x3fd274aa2e80efd0              # double 0.28837065259335493
	.quad	0x3febbfff5e163980              # double 0.86718719841319114
	.quad	0x3fce8fa0efe0d2a0              # double 0.238758198860201
	.quad	0x3fdc99152d051ca8              # double 0.44684342762452411
	.quad	0x3fe12760e928446c              # double 0.53605695284399024
	.quad	0x3fdd73599aa62af4              # double 0.46016540625048141
	.quad	0x3fd7a361cca7b288              # double 0.36934704767080762
	.quad	0x3fbbef27adb4ebc0              # double 0.10911796561133169
	.quad	0x3fbcee53a3fd0518              # double 0.11301157716390653
	.quad	0x3fcb185dfceeb638              # double 0.21168112611978684
	.quad	0x3fc7f4fe64ab01a8              # double 0.18716411509923359
	.quad	0x3f8dd0de6fa753c0              # double 0.014558542044065592
	.quad	0x3fc655299360c498              # double 0.17447395034972568
	.quad	0x3fee0eb026f5366c              # double 0.93929298027951579
	.quad	0x3fd8e81249077d12              # double 0.38916451579821498
	.quad	0x3fe72367fc72465c              # double 0.72307204538283143
	.quad	0x3feb454fce4c2cf8              # double 0.85221090595714966
	.quad	0x3fbd138cac5d3060              # double 0.11357955177408163
	.quad	0x3fe5c1c4a2d1e42b              # double 0.67990333367118205
	.quad	0x3fd356c7186859c8              # double 0.30217149146610867
	.quad	0x3fdfc1c00720a1a0              # double 0.49620056816140767
	.quad	0x3fcf0b4f525af7dc              # double 0.24253264924294526
	.quad	0x3fe2f7dd96bbf9e4              # double 0.59275702896394167
	.quad	0x3fd2cc1a5769f2cc              # double 0.29370745216855876
	.quad	0x3fdd41e1136fa422              # double 0.45714594743782488
	.quad	0x3fecddb1bdf740f2              # double 0.90206229307844255
	.quad	0x3fe7a7b1a829eba8              # double 0.73922045559389904
	.quad	0x3fe0ee0694212001              # double 0.52905587131044751
	.quad	0x3fe874ec8fcfae7d              # double 0.76427295768867476
	.quad	0x3fcc0ac9f41bb49c              # double 0.21907925052019983
	.quad	0x3feb12274e98c501              # double 0.84596600867203631
	.quad	0x3fae97dbe65bbef0              # double 0.059752342100066858
	.quad	0x3fef2bbbff75b9d5              # double 0.97408866781716574
	.quad	0x3fef6fa4cdb2540a              # double 0.98237838912120989
	.quad	0x3fdf9fccc3786f54              # double 0.49412840927992829
	.quad	0x3fedcae52023d427              # double 0.93101745869956154
	.quad	0x3fe1c0f28888787d              # double 0.55480314890498017
	.quad	0x3fe4fff964a7b66d              # double 0.65624684962467728
	.quad	0x3fe5ed38f4ac2a27              # double 0.68520782268143854
	.quad	0x3fe066cfae257572              # double 0.51255020153955244
	.quad	0x3fe8c862700958b7              # double 0.77446100122576567
	.quad	0x3f95222b46e8ccc0              # double 0.020638157084431397
	.quad	0x3fca9fffa4fd1bf4              # double 0.20800777011956451
	.quad	0x3fe07c802b451462              # double 0.51519783450261181
	.quad	0x3fc58873ccefe95c              # double 0.16822669512459754
	.quad	0x3fe65b5047ccdfa2              # double 0.69864667914861323
	.quad	0x3fe57f13d3e8fc8f              # double 0.67176238430683266
	.quad	0x3feb677e67484072              # double 0.85638351604758456
	.quad	0x3fec6f0428d97ed5              # double 0.88855178812442637
	.quad	0x3fe5fb5117538f95              # double 0.68692831569613821
	.quad	0x3fe8489ed3fde991              # double 0.75886479763657821
	.quad	0x3fd11d4b118bb7f6              # double 0.26741291726545968
	.quad	0x3fe9b4447240305c              # double 0.80325529398534056
	.quad	0x3fe56803e8be1ad9              # double 0.66894717652834423
	.quad	0x3fea523b33396108              # double 0.82253799442972397
	.quad	0x3fdbbff6d4df5956              # double 0.43359156406713362
	.quad	0x3fc5f2a4e69f8bd8              # double 0.17146741162204537
	.quad	0x3fec9869edc864e8              # double 0.89360519830657115
	.quad	0x3fd067d8b82edf4a              # double 0.25633829104070982
	.quad	0x3fec967f5ceb1c51              # double 0.89337127826810037
	.quad	0x3fcf488be2a3e584              # double 0.24440144125382457
	.quad	0x3fdbe89c7e5e0ef4              # double 0.43607246723716675
	.quad	0x3f9b9cc8da043980              # double 0.026965273195906914
	.quad	0x3fd8218655c309d2              # double 0.37704618811781387
	.quad	0x3fedc3cb77667103              # double 0.93015073128074766
	.quad	0x3fcae536f5c6e508              # double 0.2101200771410634
	.quad	0x3fe2a34838a56ba8              # double 0.58243189872461176
	.quad	0x3fd066efee027766              # double 0.25628278964165074
	.quad	0x3fed589e754031de              # double 0.91706774616755715
	.quad	0x3fb11d4bab8d44f8              # double 0.066853265173694498
	.quad	0x3fc398179fb7110c              # double 0.15307898806180054
	.quad	0x3fd63ac56f31ca0c              # double 0.34733711108052101
	.quad	0x3fc21fa4062ce414              # double 0.14159059812098518
	.quad	0x3f86ca8c5ac750c0              # double 0.011128517647115976
	.quad	0x3fdfc62c3ccf76f6              # double 0.4964705079890871
	.quad	0x3fcf284501981cf8              # double 0.24341642930833252
	.quad	0x3fe6ced05774cae8              # double 0.71274582940381226
	.quad	0x3fe73447012f2dae              # double 0.72513151389414587
	.quad	0x3fef49e32b8012dc              # double 0.97776945587301211
	.quad	0x3fd2faf537ac9dc0              # double 0.2965672534650956
	.quad	0x3fd7bb5e76b53a0c              # double 0.37081109612054841
	.quad	0x3fe8d3bbae73e637              # double 0.77584632942961818
	.quad	0x3fd07a32666fbdf8              # double 0.25745830539287295
	.quad	0x3fcd564875d2d240              # double 0.22919564965344996
	.quad	0x3fed4dd1dad44e89              # double 0.9157494806299421
	.quad	0x3fee91da344fca27              # double 0.95530424325108221
	.quad	0x3fd3a559b9b93c60              # double 0.3069671930033504
	.quad	0x3fdbd1bdfee5f0e2              # double 0.43467664616015445
	.quad	0x3fbf088af52e2218              # double 0.12122410283894458
	.quad	0x3fdcd220807dc3b4              # double 0.45032513187384926
	.quad	0x3fdcab112ddf2d52              # double 0.4479411075560239
	.quad	0x3fd34046da530cae              # double 0.30079814263099081
	.quad	0x3fe387a2d734e849              # double 0.61030714066078773
	.quad	0x3fdd33ab2edc8de2              # double 0.45627860618898641
	.quad	0x3fe24eb11058a134              # double 0.57210591499919028
	.quad	0x3fed7d8f358a082e              # double 0.92157707650063059
	.quad	0x3fd745e004af4e50              # double 0.36363983590601823
	.quad	0x3fd09f5dfc2d0fd4              # double 0.25972699762882923
	.quad	0x3fe187757fbdb086              # double 0.5477855200711168
	.quad	0x3fd3237932bb59ba              # double 0.29904012636452715
	.quad	0x3fd58aa78895f77c              # double 0.33658779467065592
	.quad	0x3fe2204c8e532660              # double 0.56644275472462979
	.quad	0x3fe3bfb0278406e8              # double 0.61714942663112726
	.quad	0x3fbb138c260f8e08              # double 0.10576702050416753
	.quad	0x3fd24f7e18f4a3c8              # double 0.28610184132645289
	.quad	0x3fbfc3b24c9bede0              # double 0.12407984133090322
	.quad	0x3fe496dd87aa9be9              # double 0.64341618058540206
	.quad	0x3fbc1c2819da7448              # double 0.10980463629899007
	.quad	0x3fe80dc156542caa              # double 0.75167910443396591
	.quad	0x3fdccc5f5dd687ea              # double 0.44997390903347301
	.quad	0x3fea26a4e9291d19              # double 0.81721730746440635
	.quad	0x3fd64770b627782a              # double 0.34811036861890676
	.quad	0x3fe09f8c9cea3316              # double 0.51947622916631775
	.quad	0x3fe37e860026f9ad              # double 0.60919475583778182
	.quad	0x3fc6e5de3f0c5068              # double 0.17889001921196557
	.quad	0x3fb8f4f89d8cde30              # double 0.097487963165683977
	.quad	0x3fcf4b3b21989524              # double 0.24448336735182707
	.quad	0x3fd1f5944d05e1b2              # double 0.28061397096419249
	.quad	0x3fea27cc0daf698d              # double 0.81735804245845289
	.quad	0x3fe2bc4d8d0ab353              # double 0.58548619792200396
	.quad	0x3fee994468100bb4              # double 0.95620937657110127
	.quad	0x3fd874a47501fd54              # double 0.38211928774395187
	.quad	0x3fecf0a076df625e              # double 0.90437339036277442
	.quad	0x3f952d458a0a8ee0              # double 0.020680510092133342
	.quad	0x3fe0b2f673cc736d              # double 0.52184603325768608
	.quad	0x3fdc5b95bc97d78a              # double 0.44308989922807795
	.quad	0x3fe44a530e0bafe2              # double 0.63407280677119737
	.quad	0x3fe28660c9290789              # double 0.57890357293239092
	.quad	0x3fcee261c370fdd4              # double 0.24128362696681782
	.quad	0x3fe0e31fb36c7a28              # double 0.52772507709216132
	.quad	0x3feb2327a9923761              # double 0.84804137343756392
	.quad	0x3f92f9122edfe600              # double 0.018528255568503127
	.quad	0x3febf9cefff6c6fc              # double 0.87424421303714394
	.quad	0x3feb357f4bcf40f0              # double 0.85028042608794685
	.quad	0x3fdbbc7a03c83cc0              # double 0.43337869996407719
	.quad	0x3fe2d211c6d8ff12              # double 0.58814324223928538
	.quad	0x3fe5f3656f231502              # double 0.68596145349934567
	.quad	0x3fe83a6bc1dddab9              # double 0.75713146080564464
	.quad	0x3fe67301cd772f99              # double 0.70153894548410556
	.quad	0x3fe7f972cbfe9d31              # double 0.74920024721806133
	.quad	0x3fdd440a534ec924              # double 0.45727785239718544
	.quad	0x3fed4069ee2d3eb7              # double 0.9141130115403574
	.quad	0x3fd38f1857e46d7a              # double 0.30560883124572735
	.quad	0x3feedf8f42a90494              # double 0.96478999156546985
	.quad	0x3fed75309a97d0b2              # double 0.92055540269804781
	.quad	0x3fe415be149d6dca              # double 0.62765411402090732
	.quad	0x3fdb2c6c84a6c2b0              # double 0.42458641962279398
	.quad	0x3fc100af81c35744              # double 0.13283342205130044
	.quad	0x3fefaca7f51b3628              # double 0.98982618210147155
	.quad	0x3feeb739898d0909              # double 0.95986630311406984
	.quad	0x3fd25fb69f0492c2              # double 0.28709188012207332
	.quad	0x3fe0aab7ca867d7e              # double 0.52083959155781634
	.quad	0x3fe2807d5b541d2c              # double 0.57818477475749352
	.quad	0x3fe22ba5717e83ae              # double 0.5678279129680186
	.quad	0x3fb87eaa5b886bc8              # double 0.095682761523149584
	.quad	0x3fcd34d0ed5ee7fc              # double 0.22817432012908501
	.quad	0x3fe2f0054c104ac9              # double 0.5917994008653632
	.quad	0x3fe0770dde4ae6e9              # double 0.51453298012276349
	.quad	0x3fc504ccef71e468              # double 0.16420900050778475
	.quad	0x3fd6d6ab8fb2c0be              # double 0.3568524268439538
	.quad	0x3fb551ecc44edfa8              # double 0.083281324316770822
	.quad	0x3fe1ece6d4c0ad7b              # double 0.56016866257907283
	.quad	0x3feb7efcbbf15e89              # double 0.85925137240970273
	.quad	0x3feee73d810b7e37              # double 0.96572756961899741
	.quad	0x3fd25694d4dacb84              # double 0.28653450762356436
	.quad	0x3fe9765da67f2e8e              # double 0.79569895285517744
	.quad	0x3fe5308212ea6c71              # double 0.66217139906383526
	.quad	0x3fcb692fe795bd48              # double 0.2141475563798656
	.quad	0x3fe7532f48756b05              # double 0.72890438224871501
	.quad	0x3fc97f70d896a500              # double 0.19920168471916355
	.quad	0x3fd9e690ec90b2f0              # double 0.40469763853143004
	.quad	0x3fca65fb4bb12adc              # double 0.20623723216916445
	.quad	0x3fe3e8c4c5cceb3f              # double 0.62216414101508366
	.quad	0x3feff11e78ce019b              # double 0.9981834754435569
	.quad	0x3fea260ae0bbfcc4              # double 0.81714385884688356
	.quad	0x3fe405cd59b48b13              # double 0.62570827026897502
	.quad	0x3fc76022ca1f54fc              # double 0.18262133473641728
	.quad	0x3fa0ef4b2a63da00              # double 0.033075665401998577
	.quad	0x3fd46e82536418a6              # double 0.31924493926670505
	.quad	0x3fef759ad454d3b4              # double 0.98310605498283232
	.quad	0x3fd56c4e29a56abe              # double 0.33473543231017888
	.quad	0x3fe834234ed1ccd0              # double 0.75636449236335501
	.quad	0x3fe7e1f8e2d59660              # double 0.74633449843959098
	.quad	0x3fb10bf7e0727430              # double 0.066588871285106377
	.quad	0x3fba60cf87ababe8              # double 0.10303971349973973
	.quad	0x3febfbd224bb6cf7              # double 0.87448985265964907
	.quad	0x3fdf3d1fcf0450aa              # double 0.48810572830667331
	.quad	0x3fadbc63ec305c80              # double 0.058077929097799519
	.quad	0x3fe6932d53a6f496              # double 0.70546594942392704
	.quad	0x3fd7bc5d0a10d28a              # double 0.37087179167728179
	.quad	0x3fd8e7bab5549cce              # double 0.38914363582666744
	.quad	0x3fe6afe76254be8a              # double 0.70897263722686543
	.quad	0x3febd2bc1d6a873e              # double 0.86947446580254684
	.quad	0x3fe6db53bb1e6684              # double 0.71427332445746616
	.quad	0x3fe856aeede2a795              # double 0.7605814596365571
	.quad	0x3fe62408752e29ec              # double 0.69189856421263363
	.quad	0x3fead5ed5ba3b1ea              # double 0.83861415766074043
	.quad	0x3fd01b957e446cf2              # double 0.2516835911826113
	.quad	0x3fcda850e7d69e54              # double 0.23169909782631015
	.quad	0x3fc258682c1984f0              # double 0.14332296517662924
	.quad	0x3fe4981b38424f0f              # double 0.64356766689386002
	.quad	0x3fe1f60b7a5d6df0              # double 0.56128477000623711
	.quad	0x3fa9227543ff5ae0              # double 0.049091019201730424
	.quad	0x3fcf93c9483decd8              # double 0.24669757869182862
	.quad	0x3fcfca12fd2c9134              # double 0.24835431444183487
	.quad	0x3fe38cba90ac04db              # double 0.61092880493392998
	.quad	0x3fece8c1a9ac3168              # double 0.90341265811143234
	.quad	0x3fe5aa2f99f1aba9              # double 0.67702465121452804
	.quad	0x3fea057e6cd67ee9              # double 0.81317063577077164
	.quad	0x3fd29470ac46106c              # double 0.29031006644823409
	.quad	0x3febcf95aaf357f8              # double 0.86908992184430556
	.quad	0x3fde3fcd65b5137c              # double 0.47264418537479691
	.quad	0x3fe29bc6916628f4              # double 0.58151558302168249
	.quad	0x3fad88ee25531b10              # double 0.057685319954137282
	.quad	0x3fe354e8155193c1              # double 0.60411457217980324
	.quad	0x3fe7759280878ab0              # double 0.73310208419237277
	.quad	0x3fe9aea31527f900              # double 0.8025679982381746
	.quad	0x3fdfaff6b18f4d92              # double 0.495114968679638
	.quad	0x3fe2b7dda7c2e27e              # double 0.58494456067917588
	.quad	0x3fd4fc3bdec8df54              # double 0.327895133555548
	.quad	0x3fe82d9f75d2f965              # double 0.75556920063517607
	.quad	0x3fe49b4c4cf9b206              # double 0.64395728143932796
	.quad	0x3fd634929c4a6954              # double 0.3469587827945777
	.quad	0x3fca7706ece5a4cc              # double 0.20675741736639563
	.quad	0x3fe2ce72a04c4202              # double 0.58770114238910787
	.quad	0x3fc57f832c8395b0              # double 0.167953869567254
	.quad	0x3fda10237ad32030              # double 0.4072350215396936
	.quad	0x3fe2b6dc46f74269              # double 0.58482183323401415
	.quad	0x3fd6441ed2975d98              # double 0.34790773931077856
	.quad	0x3fea34e79301f0b5              # double 0.81895807945649912
	.quad	0x3fef5c6b75540514              # double 0.98003170886673496
	.quad	0x3fd28832e309d48a              # double 0.28956291362494169
	.quad	0x3fe72427b01db6cf              # double 0.72316345594091469
	.quad	0x3fe332ff825b34af              # double 0.5999753519078207
	.quad	0x3feebd7efdc4a60b              # double 0.96063184322446326
	.quad	0x3fa0a73dc698b930              # double 0.032525949948068678
	.quad	0x3fc8a9036bd537d0              # double 0.19265787854459271
	.quad	0x3fb06b4d597777a0              # double 0.064137300817917353
	.quad	0x3fe953dcf39bf7c3              # double 0.79148719386989119
	.quad	0x3faf0eedf1147870              # double 0.060660777739244831
	.quad	0x3fdab1e10082d094              # double 0.41710686731244917
	.quad	0x3fef7a1459bdc463              # double 0.98365228202431997
	.quad	0x3f675b3f86ff7000              # double 0.0028511276977791766
	.quad	0x3feceee294ca9773              # double 0.90416077671828388
	.quad	0x3fd258ec87c6c356              # double 0.28667748698631124
	.quad	0x3fdd632e55481afe              # double 0.45917852714812557
	.quad	0x3fdbd6bbe4af310a              # double 0.43498132069068218
	.quad	0x3feb8c4b3af49ad8              # double 0.86087571635001847
	.quad	0x3fe50db3c2eea313              # double 0.65792263100329007
	.quad	0x3fe861c6af348414              # double 0.76193556041482901
	.quad	0x3fdcf3fb10a36c1a              # double 0.45239140152779245
	.quad	0x3fe3f3664611215f              # double 0.62346185383743691
	.quad	0x3fe786f28306fefc              # double 0.73522306052470254
	.quad	0x3fe19a90441e439d              # double 0.55011761955585181
	.quad	0x3fd40f77118ac216              # double 0.31344391549194606
	.quad	0x3fc4cca856747804              # double 0.16249565335687077
	.quad	0x3fdd7864338ab7b8              # double 0.46047310861001334
	.quad	0x3fe15e8622c6de55              # double 0.54278857033109296
	.quad	0x3fd8403bd2fafdf4              # double 0.37892051318701125
	.quad	0x3fdd8f66d8aa17fc              # double 0.46187754782329171
	.quad	0x3fe0a090a94afc89              # double 0.51960022988340981
	.quad	0x3fc5f0a60c3ae620              # double 0.1714065131871374
	.quad	0x3fdba2b2b8d4290c              # double 0.43180530595476863
	.quad	0x3fea6ec5dee4b8cb              # double 0.82602208646655961
	.quad	0x3f85bfa07d5d66c0              # double 0.010619405580360008
	.quad	0x3fef2a88c6bf5f99              # double 0.97394217317468012
	.quad	0x3feaa766ec9d8603              # double 0.83293482030802612
	.quad	0x3fed7949638d6664              # double 0.92105550235573874
	.quad	0x3fdb42871b9451c2              # double 0.42593553250597094
	.quad	0x3fe4c0f5ad9ff849              # double 0.64855464850530453
	.quad	0x3fe026a5aa202ff1              # double 0.50471766688997211
	.quad	0x3fc99b2171cf98d0              # double 0.20004671151327225
	.quad	0x3fe0ef8273f4ffdf              # double 0.52923700950486452
	.quad	0x3fe6c094a1e2e148              # double 0.71100837343605239
	.quad	0x3fd373cc27872e5a              # double 0.30394271717225296
	.quad	0x3fe55aca06828c6a              # double 0.66733266135669322
	.quad	0x3fdcc6f2a30698e4              # double 0.44964281006322282
	.quad	0x3fd9d8c75adc272c              # double 0.40385612366718493
	.quad	0x3fe59d1262c0529c              # double 0.67542380606990404
	.quad	0x3fe18333d6730f6a              # double 0.54726592907580351
	.quad	0x3fd8b51d021c1026              # double 0.38605427938478198
	.quad	0x3fd30ed51481ec16              # double 0.29778029444395437
	.quad	0x3fd97162bc47bafe              # double 0.39754551302659979
	.quad	0x3febf62efd224826              # double 0.87380170288293324
	.quad	0x3fefb13252e7ea7e              # double 0.99038044159472327
	.quad	0x3fe05a795976fca4              # double 0.51104419206230434
	.quad	0x3fdce8681b9c65c0              # double 0.45168497749690673
	.quad	0x3fda2447401d47de              # double 0.40846425305528367
	.quad	0x3fbef20d16c9eff0              # double 0.1208809071194421
	.quad	0x3fe3726e5f72332a              # double 0.60771864549460486
	.quad	0x3fd3f3841f6f21fe              # double 0.31173804349648992
	.quad	0x3fe1b2b39700e315              # double 0.55306415074218995
	.quad	0x3fb1ba926f76d078              # double 0.069253112996024657
	.quad	0x3fdc8b405b995f94              # double 0.44599923081613579
	.quad	0x3fde13ffdf1508b2              # double 0.46997067246787616
	.quad	0x3feec04fffcc2dd9              # double 0.96097564659560952
	.quad	0x3fc5357aeaa34554              # double 0.1656945844356793
	.quad	0x3fe227b56d0f1651              # double 0.56734725285122967
	.quad	0x3fc93845164f3da0              # double 0.19702972020466536
	.quad	0x3fe75d8bb8be8401              # double 0.73016916354038142
	.quad	0x3fe6a0bc3427caba              # double 0.70712099253281413
	.quad	0x3fd76185c3c3c97c              # double 0.36532730214744169
	.quad	0x3fc451c888211ef8              # double 0.15874582907621693
	.quad	0x3fe39de0dee4e0f5              # double 0.61302226575847263
	.quad	0x3fe48744e7927925              # double 0.64151234845102023
	.quad	0x3fcc9f39cab47f30              # double 0.22360918424328124
	.quad	0x3fae709159786740              # double 0.059452573939962949
	.quad	0x3fef59b32c6115e0              # double 0.97969969432659453
	.quad	0x3fd20846232c9580              # double 0.28175500330902281
	.quad	0x3fe12a4a2f982fe6              # double 0.53641232772633596
	.quad	0x3fee9f7cef430db7              # double 0.95696875315518681
	.quad	0x3fe6f38f626cff03              # double 0.71723145698339896
	.quad	0x3fe8e0a181147e78              # double 0.77742076121280856
	.quad	0x3fd15078ac033d3c              # double 0.27053658292875915
	.quad	0x3fec875829287aca              # double 0.89152153052040117
	.quad	0x3fc6fef0e60c0f78              # double 0.17965518219727605
	.quad	0x3fe400ab825852c3              # double 0.62508178194055863
	.quad	0x3fecc918bbe060b2              # double 0.89954792685150253
	.quad	0x3fea07c1b5892c29              # double 0.81344685989586651
	.quad	0x3fd842b59e08dff4              # double 0.37907162125657057
	.quad	0x3fc11e71af0252c0              # double 0.13374157948842047
	.quad	0x3febb249ef5cc657              # double 0.86551377058476475
	.quad	0x3fdad59c2b50955a              # double 0.41928772191962127
	.quad	0x3fd5d510e8c75c80              # double 0.34112951977062522
	.quad	0x3fae180a90da1630              # double 0.058777170354954555
	.quad	0x3f9ae9777b5ad2c0              # double 0.0262812298812658
	.quad	0x3fe4d3276b9eb625              # double 0.65077563304447905
	.quad	0x3feba596cde45584              # double 0.86396351063983489
	.quad	0x3fe7b2915833ec02              # double 0.74054782130349417
	.quad	0x3fee5a023acd3f55              # double 0.94848739132610638
	.quad	0x3fe1ee0d4aa36485              # double 0.56030907228263571
	.quad	0x3fd30e7d7568676e              # double 0.29775940385444855
	.quad	0x3fb9623bb2728548              # double 0.099155169550177225
	.quad	0x3fcf7bcc2b011f30              # double 0.2459655008299193
	.quad	0x3fd22beae94b60c6              # double 0.28393051893864329
	.quad	0x3feeb82d491fbb91              # double 0.95998253137610067
	.quad	0x3fdd57faa76b7922              # double 0.45849481916038048
	.quad	0x3fd471c1d7e81d52              # double 0.31944318852079789
	.quad	0x3fcb9c84c905e5b0              # double 0.21571407142236643
	.quad	0x3fed5073d9da8345              # double 0.91607086705708041
	.quad	0x3fdcb2d1585b443e              # double 0.44841416958394464
	.quad	0x3f91a61162c00d40              # double 0.017235061313852329
	.quad	0x3fe3e3f60573d391              # double 0.62157727303439192
	.quad	0x3f974b0e406594e0              # double 0.022747252159565856
	.quad	0x3fe05f10a03ceeaf              # double 0.51160460754859638
	.quad	0x3fd9819e37b1da6a              # double 0.39853625716151575
	.quad	0x3fcd0876dee084c8              # double 0.22682081110636987
	.quad	0x3fdeb6323e112ba0              # double 0.47987037717092029
	.quad	0x3fe3b1dc4f2595b9              # double 0.61546149690973728
	.quad	0x3fe0cc72d59243e4              # double 0.52495710099367132
	.quad	0x3fe94ecc2a336372              # double 0.79086883776026995
	.quad	0x3fecf51c853a820b              # double 0.90492082616043612
	.quad	0x3fe532eb81aca5a9              # double 0.66246581389457504
	.quad	0x3f9af86508b5c960              # double 0.026338175446150358
	.quad	0x3fe0c7e385556bc4              # double 0.52440048257573624
	.quad	0x3fefefe8da9977cc              # double 0.998035838081472
	.quad	0x3fe57e6a9ecf754c              # double 0.67168169992116011
	.quad	0x3feaf1c2f0c4a4e9              # double 0.84201190018680194
	.quad	0x3fed2b9228c2204e              # double 0.91156871758085756
	.quad	0x3fd28555dddc64b4              # double 0.28938814798454904
	.quad	0x3fcbe21c707b0bbc              # double 0.21783786289424067
	.quad	0x3fc33ad85f2a13f4              # double 0.15023331305215459
	.quad	0x3fa8d8ea05ddb390              # double 0.048529923645083461
	.quad	0x3fa2a4cbc3acf980              # double 0.036413543354217204
	.quad	0x3fc8b3efd244a678              # double 0.19299123541832208
	.quad	0x3fdb5654f486dfae              # double 0.42714427833152058
	.quad	0x3fbfbbd06bb49360              # double 0.12395956639791228
	.quad	0x3fe48d36b07423cd              # double 0.64223799193961784
	.quad	0x3fe38fd65c7cf34b              # double 0.61130827011184274
	.quad	0x3f958c2f728e7ee0              # double 0.021042577139836705
	.quad	0x3fde13033d65f3c0              # double 0.46991044040606411
	.quad	0x3fe3be9f6d265692              # double 0.61701937979042243
	.quad	0x3fef27eb717daa01              # double 0.9736230103129061
	.quad	0x3fd295beb8a82548              # double 0.29038970978634326
	.quad	0x3fe316a272c8b8db              # double 0.59651300829662135
	.quad	0x3fe871fa2bff488c              # double 0.76391323655322329
	.quad	0x3fcd1b0f8527b1e4              # double 0.22738832475387405
	.quad	0x3fc3582ff3a08380              # double 0.15112876315927437
	.quad	0x3fdac54baf627f00              # double 0.41829197051445988
	.quad	0x3fe24cd36704a85d              # double 0.57187814827672023
	.quad	0x3febba87db21ae64              # double 0.86651985930570818
	.quad	0x3fd2b627caa1c748              # double 0.29236788547779158
	.quad	0x3fe5b6edb3a30d78              # double 0.67858014188133975
	.quad	0x3fee4c4a6d71e028              # double 0.94681283355658241
	.quad	0x3fe89b53ffb24115              # double 0.76896095219311411
	.quad	0x3fefeac440b007dc              # double 0.99740803369808928
	.quad	0x3fdb46abda4bedcc              # double 0.42618843381907534
	.quad	0x3febe7fd555f6772              # double 0.87206904100751914
	.quad	0x3fd2d3489bdc33b2              # double 0.29414572926253435
	.quad	0x3fd696cf6c92172c              # double 0.35295472719768628
	.quad	0x3fe69d61cc04ef2a              # double 0.70671167228235743
	.quad	0x3fc815c8b8088330              # double 0.18816479669569608
	.quad	0x3fe8534084477a3a              # double 0.76016259990485158
	.quad	0x3fc63d67047fcbd4              # double 0.17374885291755382
	.quad	0x3fd19549e0caf9f2              # double 0.27473685219220478
	.quad	0x3fe3d4691e181b73              # double 0.61967903020636894
	.quad	0x3fdd2373a897ff1e              # double 0.45528880562049945
	.quad	0x3fdce0021b6e92e8              # double 0.45117237738513305
	.quad	0x3fc0936e40608654              # double 0.12949922698412542
	.quad	0x3fe24fcf679a417b              # double 0.57224245295405696
	.quad	0x3fe29abda88fe691              # double 0.58138926431930049
	.quad	0x3fe15d68c3cab8e9              # double 0.54265249481775613
	.quad	0x3fb16241b8d06738              # double 0.067905528660415437
	.quad	0x3fe7e952a1efc337              # double 0.74723178508984389
	.quad	0x3fe34fd0f76d8ec3              # double 0.60349319768689502
	.quad	0x3fe8ec3b1f1e9dd3              # double 0.77883678510709797
	.quad	0x3fe9a8cbd6ba7d8c              # double 0.80185501040607354
	.quad	0x3fe41571cffc8502              # double 0.62761774656624447
	.quad	0x3fe94dd75bddf2d3              # double 0.79075210516711036
	.quad	0x3fd8068db7af69f2              # double 0.37539999902733634
	.quad	0x3fd0711f83752e1c              # double 0.2569044860617582
	.quad	0x3fe3807d6cb2de83              # double 0.60943480711189613
	.quad	0x3fc4c61251c37acc              # double 0.16229466431010164
	.quad	0x3feb1d75e3be3847              # double 0.84734625321449009
	.quad	0x3fe64aea8b3a733e              # double 0.6966450423529762
	.quad	0x3fe4e2265f4949dd              # double 0.65260618792154512
	.quad	0x3fef3ee347fb5eb4              # double 0.97642673548667469
	.quad	0x3fe76b2b57f07f9c              # double 0.73183219123528742
	.quad	0x3fe382a4fe6898a2              # double 0.60969781579185089
	.quad	0x3fe4f7c91993b11b              # double 0.65524725909702697
	.quad	0x3fb39a73e25575e8              # double 0.076575510747225572
	.quad	0x3fdeca1d0dc9a0c2              # double 0.48108602854200566
	.quad	0x3fbb1c38d4f936b8              # double 0.10589938354061246
	.quad	0x3fea9c8bedd9ad86              # double 0.83160969214570524
	.quad	0x3fde6ad19854acb4              # double 0.47526969791460805
	.quad	0x3feccdf1cfbd52e7              # double 0.90013971876268506
	.quad	0x3fe6eac7d5548242              # double 0.7161597410777818
	.quad	0x3fe49879d2817582              # double 0.64361277689356222
	.quad	0x3fdb427a3c9ffefc              # double 0.42593246384056704
	.quad	0x3fcc46efea7c08f4              # double 0.22091483067931217
	.quad	0x3fd8e1032dbd2200              # double 0.38873366800956433
	.quad	0x3fdfec60b78c8892              # double 0.49880235600188272
	.quad	0x3fcdd2276b269ee0              # double 0.23297589046455069
	.quad	0x3fef20f912acba73              # double 0.97277501723676917
	.quad	0x3fce71ad1a47420c              # double 0.23784412177202829
	.quad	0x3fe8a9a533d5761a              # double 0.77070865749164175
	.quad	0x3fcec0408b81551c              # double 0.24024206935670456
	.quad	0x3fed2b574791eaa9              # double 0.91154064157975256
	.quad	0x3fdfcb52f8976366              # double 0.49678491856098217
	.quad	0x3f9b45554c775fe0              # double 0.026631672660954453
	.quad	0x3fef774dc9fc24c6              # double 0.98331345987494312
	.quad	0x3fcf67f59324b4d4              # double 0.24536008534179266
	.quad	0x3fef09cf9651fd89              # double 0.9699476180975789
	.quad	0x3fe42ee8338c5dc4              # double 0.63072595661190478
	.quad	0x3fd8f88c884466d0              # double 0.39017022425978798
	.quad	0x3fd63738397e8ab2              # double 0.34712033857992275
	.quad	0x3fbf7027ee644978              # double 0.12280511446104991
	.quad	0x3fd4e856886c11d2              # double 0.32668078730082784
	.quad	0x3fe5fdaa3746db21              # double 0.68721495434042279
	.quad	0x3fed214070c2dbbf              # double 0.91030904792466305
	.quad	0x3fc6974441d6a704              # double 0.17649129118699858
	.quad	0x3fdb485d97c1fea2              # double 0.42629184551331367
	.quad	0x3fecb3390b0ac61d              # double 0.89687778622300451
	.quad	0x3fe78d731f4e8502              # double 0.73601680864899799
	.quad	0x3fe7a1ee6930ef66              # double 0.73851700348994309
	.quad	0x3fc8e1f0c1b3693c              # double 0.19439515550659248
	.quad	0x3fd89de627686e26              # double 0.38463739250593887
	.quad	0x3feedf1ab9627c29              # double 0.96473442275953857
	.quad	0x3fe52adb50a6d1c2              # double 0.66148153068802906
	.quad	0x3fe657e93bd8465f              # double 0.69823133171503204
	.quad	0x3fb4ea0390377670              # double 0.081695769032614995
	.quad	0x3fd63c60842843ca              # double 0.34743512063965609
	.quad	0x3fb53a85692dbbd8              # double 0.082924211672192327
	.quad	0x3fc734fa0d37b04c              # double 0.18130422253978151
	.quad	0x3fd3d4a689dd1784              # double 0.30985415900465108
	.quad	0x3fe9db23b5c92cb5              # double 0.80800042634054725
	.quad	0x3fc1c9cae116a6b8              # double 0.13897071829460628
	.quad	0x3fed0c50a7043e6a              # double 0.90775330181527392
	.quad	0x3fe1c6a759499a7d              # double 0.55549971999137393
	.quad	0x3fe60a6029a44425              # double 0.68876655705583245
	.quad	0x3f8abe3efead5dc0              # double 0.013058178088313777
	.quad	0x3fe301e2a26ab8e6              # double 0.59398013803527472
	.quad	0x3fe26ee7a63bc180              # double 0.57603819339242079
	.quad	0x3fe5a485e6114181              # double 0.67633337912597835
	.quad	0x3fef375c7f3cdf1b              # double 0.97550797320488713
	.quad	0x3fe5ccb6ff353406              # double 0.68123960347441037
	.quad	0x3fd4279014206aea              # double 0.31491472211352678
	.quad	0x3febbcc510df4fff              # double 0.86679318709730058
	.quad	0x3fe51dd982efc5da              # double 0.65989375661427663
	.quad	0x3fe92dfdf53f0dc9              # double 0.78686426067036408
	.quad	0x3fe5ec43aea5add7              # double 0.68509086714532941
	.quad	0x3febafb956c9e692              # double 0.86520068121827109
	.quad	0x3fc3099af6399a2c              # double 0.14873063109117035
	.quad	0x3feb863fc76c6965              # double 0.86013783407115041
	.quad	0x3fc249395b556bb8              # double 0.14285962066318603
	.quad	0x3fd204af0afbc730              # double 0.28153587410553182
	.quad	0x3fe7071b35bdd8de              # double 0.71961746689228412
	.quad	0x3fe84bd351cc23cf              # double 0.75925603843745104
	.quad	0x3fbdf0caf5448f18              # double 0.11695545661910633
	.quad	0x3fdc616c6391ab7a              # double 0.44344625209367161
	.quad	0x3fec4067933d0097              # double 0.88286188847998204
	.quad	0x3fe4df2a5d38c0d2              # double 0.65224188048707732
	.quad	0x3fcfbb221c62ecb4              # double 0.24789835344367861
	.quad	0x3fed339b99f5688e              # double 0.91254978246731056
	.quad	0x3fc376862154ec84              # double 0.15205456378484794
	.quad	0x3fe64b0b261ee11a              # double 0.6966605896514324
	.quad	0x3fee4cba1e8e5b55              # double 0.94686609237656205
	.quad	0x3fd84096c9954d98              # double 0.37894220052586425
	.quad	0x3fe728665a41af80              # double 0.7236816180061254
	.quad	0x3fc91d2f013675a4              # double 0.19620311316695649
	.quad	0x3fe0daae23d6b301              # double 0.52669436454525009
	.quad	0x3fe4156d8e88ddb0              # double 0.6276157173041863
	.quad	0x3fa4cfd7265d6dc0              # double 0.040648196633550793
	.quad	0x3fbd9eac7b236bd0              # double 0.11570241934116088
	.quad	0x3fd7d2143a23a0e0              # double 0.37219720533040679
	.quad	0x3fe8d0e160d9ccee              # double 0.77549809375923728
	.quad	0x3fd9c8b9bd525282              # double 0.40287631500658716
	.quad	0x3fcdae891af023a0              # double 0.23188890281042251
	.quad	0x3fef08807ff6cbfb              # double 0.96978783600786699
	.quad	0x3fd90f83a14e29f6              # double 0.39157191040490547
	.quad	0x3fe407067a8df776              # double 0.62585758148610071
	.quad	0x3f927fe633a746a0              # double 0.018066021826433798
	.quad	0x3fc368ef74de4580              # double 0.15163987356622144
	.quad	0x3fe251f6ea5c8795              # double 0.57250543378562446
	.quad	0x3fec8b26a61c0428              # double 0.89198620265245143
	.quad	0x3fda8d7393cbacda              # double 0.41488351281323121
	.quad	0x3feea3254ed3dbe8              # double 0.95741525074015232
	.quad	0x3feb75b5c68d92ca              # double 0.85811890392195633
	.quad	0x3fe3e34c8e688bd7              # double 0.62149646581780871
	.quad	0x3fe4bf12c26f9fd2              # double 0.64832437492168027
	.quad	0x3fe44e40700b9d88              # double 0.63455221065389456
	.quad	0x3fb1a3252dc2d948              # double 0.068895648643637064
	.quad	0x3fa8f60ebce2f2c0              # double 0.048752270276485543
	.quad	0x3fe8fcdc6a5f577f              # double 0.78086682105889327
	.quad	0x3fc3dbd8c0044db0              # double 0.15514668823071309
	.quad	0x3fcee29e4c2c1594              # double 0.24129084319444571
	.quad	0x3fe5356eefbb90d9              # double 0.6627726251868139
	.quad	0x3fd413295f8c1c6c              # double 0.31366953211585868
	.quad	0x3fe3c587ed64f11d              # double 0.6178626667602064
	.quad	0x3fea7834b1b209ac              # double 0.82717356401581332
	.quad	0x3fe880a9c248d261              # double 0.76570594736274356
	.quad	0x3fb81d0d47865868              # double 0.094193296396356652
	.quad	0x3fdfe808930c3fc2              # double 0.49853720054761308
	.quad	0x3fed172469268eaf              # double 0.90907497918347768
	.quad	0x3feba5c1345c828b              # double 0.86398372866467932
	.quad	0x3fef31cc5a8dd87c              # double 0.97482888876289974
	.quad	0x3fec84be733cf30a              # double 0.8912040949577158
	.quad	0x3fe2564f38614271              # double 0.57303582202628267
	.quad	0x3fbf584e15d94b68              # double 0.12244117768686424
	.quad	0x3fdd00947724cbc8              # double 0.45316039691095655
	.quad	0x3fed69ff9f5badbf              # double 0.91918927311547083
	.quad	0x3fdf194143e5c9fe              # double 0.48591643934847173
	.quad	0x3fe3bcb381b7eb0f              # double 0.61678481422072362
	.quad	0x3feef55744efc8de              # double 0.96744883979979668
	.quad	0x3fe54cf771505ea3              # double 0.66564533359174438
	.quad	0x3fe3c7ecc5421ad2              # double 0.61815489317890582
	.quad	0x3febfd42e131bf09              # double 0.87466567977205145
	.quad	0x3fd7cc0766c154b4              # double 0.37182793650328994
	.quad	0x3faf36cfa839f050              # double 0.0609650509695433
	.quad	0x3fe25abaa242e5f1              # double 0.57357532207168849
	.quad	0x3feb72c107b32ac1              # double 0.8577580595386608
	.quad	0x3fe432127cc83db8              # double 0.63111233111879184
	.quad	0x3fc1fbdbf69170c8              # double 0.14049863376101812
	.quad	0x3fc2c244faaae974              # double 0.14655363311414826
	.quad	0x3feb0d7eeefbd816              # double 0.845397440686386
	.quad	0x3fa5cc9dcd7357e0              # double 0.042576724366582885
	.quad	0x3fc9bdacaa91eec8              # double 0.20110090569129668
	.quad	0x3fc1d2a152a209f8              # double 0.13924042258084035
	.quad	0x3fda4b4624f4e03e              # double 0.4108443604377533
	.quad	0x3fc339cce9472fb4              # double 0.1502014292767605
	.quad	0x3faca7e9ff4233c0              # double 0.055968582543847401
	.quad	0x3fb1dd4bc661aa78              # double 0.06978295892046471
	.quad	0x3fcd197cf586bf14              # double 0.22734033573714696
	.quad	0x3fd70f42a9384616              # double 0.36030642056820861
	.quad	0x3fd412f41345ed9a              # double 0.31365682489532676
	.quad	0x3fdd78a04eaf08a4              # double 0.46048743900258615
	.quad	0x3fee5c0b3d8310cc              # double 0.94873582853372218
	.quad	0x3fe0b99ba286f3ed              # double 0.52265722030244677
	.quad	0x3fdb6b42514a13be              # double 0.42842157305159023
	.quad	0x3fda878ebeba4bd2              # double 0.41452377916101313
	.quad	0x3fe190d48453bcdd              # double 0.54892946095597106
	.quad	0x3f9ea5d6ac392060              # double 0.02992949892203034
	.quad	0x3fedd9264bf19f04              # double 0.93275751908092319
	.quad	0x3fec7e8b73704830              # double 0.89044735476114134
	.quad	0x3fd83e165d2c4dce              # double 0.37878951167041641
	.quad	0x3fd3491902ed8326              # double 0.3013365295974374
	.quad	0x3fc81fe45285f258              # double 0.18847326306776568
	.quad	0x3feec8f5d5980873              # double 0.96203128545336225
	.quad	0x3fe4f75561c84e1d              # double 0.65519208047993838
	.quad	0x3fd86ca1365ac88e              # double 0.38163023288792253
	.quad	0x3f8a04859962b240              # double 0.01270393728585717
	.quad	0x3fe2ea5854bef7d1              # double 0.59110657264658972
	.quad	0x3fe9300de816135f              # double 0.78711600617735289
	.quad	0x3fc9a7e97687a054              # double 0.200436766506075
	.quad	0x3fe8feb34caa56b7              # double 0.78109135602672708
	.quad	0x3fe67fa615bab87e              # double 0.70308212512988155
	.quad	0x3fdb8909fee99fd4              # double 0.43023919957931622
	.quad	0x3fd33b73ff222770              # double 0.30050372996685493
	.quad	0x3fe7d5cf0f608416              # double 0.74484971049617132
	.quad	0x3fc59ef0d610ae88              # double 0.16891298725510162
	.quad	0x3fe786aed28bf612              # double 0.73519078371436053
	.quad	0x3fdf78aadc3ff7ca              # double 0.49173995503212764
	.quad	0x3fec6e7267a18391              # double 0.88848228683865405
	.quad	0x3fb394afe0eb6de0              # double 0.076487533962271481
	.quad	0x3fe3f552db9bf197              # double 0.62369673626340016
	.quad	0x3feb202453ab06b0              # double 0.84767357198162152
	.quad	0x3fbdb59c0ce43988              # double 0.11605239214643437
	.quad	0x3fd2b609d1f493d6              # double 0.29236073974089771
	.quad	0x3fd7a57394d0d21c              # double 0.36947335751327315
	.quad	0x3fb8011f26ddde40              # double 0.093767115582402916
	.quad	0x3fe1634fc99737a7              # double 0.54337300656492438
	.quad	0x3fd370c7e52123a2              # double 0.30375859619067047
	.quad	0x3fd7eb9bd428a91e              # double 0.37375541418681901
	.quad	0x3fe37af0625af268              # double 0.60875720224391916
	.quad	0x3fea4c00bd7179ae              # double 0.82177769661557476
	.quad	0x3fd9d2bf0d05af7c              # double 0.40348793288898555
	.quad	0x3febf052dcdf089f              # double 0.87308638705168906
	.quad	0x3fccfba7f91260a8              # double 0.22642993604381911
	.quad	0x3fc11f457dafdedc              # double 0.13376682889042157
	.quad	0x3fd6e15b94847a9c              # double 0.35750474456464487
	.quad	0x3fddc0d940d9e82e              # double 0.46489554722905069
	.quad	0x3fed50330dab3f71              # double 0.91603996915544716
	.quad	0x3fd4d667d6ababde              # double 0.32558628047871518
	.quad	0x3fe8cc52de3af49f              # double 0.77494185833315388
	.quad	0x3fe8b8c9603d828d              # double 0.77255696103027705
	.quad	0x3fc3367c9d8e1f14              # double 0.15010030453799372
	.quad	0x3fd05b176cdb21b4              # double 0.2555597842261037
	.quad	0x3fc991eccd914dc0              # double 0.19976577794532879
	.quad	0x3fda2d7b112bd308              # double 0.40902592350839528
	.quad	0x3fc987403d1056b0              # double 0.19944003087646456
	.quad	0x3fefef0d0945e571              # double 0.99793102084292517
	.quad	0x3fee47262dc114a1              # double 0.94618519722338956
	.quad	0x3fdb5948967a3f12              # double 0.4273244351870612
	.quad	0x3fd1484bd6527198              # double 0.27003761224639211
	.quad	0x3fe2d1d375a7e65e              # double 0.58811352710399567
	.quad	0x3fefc55eadeb85c2              # double 0.99284299820663358
	.quad	0x3fd8d3c3ef0d0d30              # double 0.38792513222525127
	.quad	0x3fd87746d55a54ee              # double 0.38228007159462052
	.quad	0x3fd8198b3d15233a              # double 0.37655907597632032
	.quad	0x3fdab7d8a6c39d02              # double 0.41747108731802041
	.quad	0x3fd2c89d4bf65e4c              # double 0.29349453371239487
	.quad	0x3fc9d25a3eb03798              # double 0.20173194943384654
	.quad	0x3fecee0d45b4e521              # double 0.90405906309675654
	.quad	0x3fdec7c502a25090              # double 0.48094296700697559
	.quad	0x3f9cb98dfaa60560              # double 0.02805158464753299
	.quad	0x3fa63391c6e64140              # double 0.043362193612781486
	.quad	0x3feaed9df28ec874              # double 0.8415059792953472
	.quad	0x3feaae5ad7bf4c4a              # double 0.83378355157982154
	.quad	0x3fe5b3440826d736              # double 0.67813302604802206
	.quad	0x3fd2016e2d8f14d6              # double 0.2813373036299941
	.quad	0x3facc3de19a90590              # double 0.056181851036409047
	.quad	0x3fedce99cdbea98e              # double 0.93146982368971165
	.quad	0x3fca2d40d0a07804              # double 0.20450601755959508
	.quad	0x3fe8935bc0477731              # double 0.76798808626674575
	.quad	0x3fe1b8179b4df1f1              # double 0.55372219403176193
	.quad	0x3fc7c9dcb626c98c              # double 0.18584784406773414
	.quad	0x3fe9d9c1eec553cf              # double 0.80783173212932435
	.quad	0x3fdad5d22f6e3bd6              # double 0.41930060035605032
	.quad	0x3fdaf6e1b92deda4              # double 0.42131846507956028
	.quad	0x3f8ea265483abb80              # double 0.014958182589308811
	.quad	0x3fb5467e3bbb0a20              # double 0.083106889326736155
	.quad	0x3fdad3b696c41432              # double 0.41917195056186352
	.quad	0x3fd650d257862194              # double 0.34868296191464165
	.quad	0x3fa3d1bd564111d0              # double 0.038709561137270421
	.quad	0x3fe3dfaf13621a15              # double 0.62105516229422852
	.quad	0x3fdbbd47bc4a5a9a              # double 0.4334277476095082
	.quad	0x3fd7c6f3ef9beef8              # double 0.37151811980559968
	.quad	0x3fe0a3d633ca6186              # double 0.5199996005567733
	.quad	0x3fe3a95d1243f72b              # double 0.61442426269033967
	.quad	0x3fe964f92d82607d              # double 0.79357584847004115
	.quad	0x3feac9b75f60cdfe              # double 0.83712357166808693
	.quad	0x3fd3a54fac8208c2              # double 0.30696479650954356
	.quad	0x3fbfd1d19148f928              # double 0.12429532811163269
	.quad	0x3fbb894eac41ce98              # double 0.10756389337057681
	.quad	0x3fea44604c03f9fb              # double 0.82084669920715159
	.quad	0x3fe89c2829715d6f              # double 0.769062119429618
	.quad	0x3fd1849340497c52              # double 0.27371674802811186
	.quad	0x3fea4233a8f21a15              # double 0.82058127400597647
	.quad	0x3fea2c5f29718e8b              # double 0.81791647047471494
	.quad	0x3fd76588cbe7faf8              # double 0.36557216561043004
	.quad	0x3fe7b56efd405553              # double 0.74089765036721145
	.quad	0x3fe6f39a85327dae              # double 0.71723676695903804
	.quad	0x3fd58c910db52eee              # double 0.33670450533530427
	.quad	0x3fd49387f5d719b4              # double 0.3215045834334902
	.quad	0x3fd18831554cc9dc              # double 0.2739375432021498
	.quad	0x3fd6e07fb8f00300              # double 0.35745232639605717
	.quad	0x3fed27e3771c91f5              # double 0.91111920608506003
	.quad	0x3fc71754f7c43754              # double 0.18039953325245028
	.quad	0x3fe1633e2c746e82              # double 0.54336460764484706
	.quad	0x3fce4dd035442478              # double 0.2367496738518502
	.quad	0x3fd8a9396e0c9264              # double 0.38532863375647808
	.quad	0x3fe5b5aced63dcc7              # double 0.67842718472720598
	.quad	0x3fe9992472876988              # double 0.79994413727699598
	.quad	0x3fe491d4115aa1c4              # double 0.64280131711444044
	.quad	0x3fc126f6099fbcf8              # double 0.1340014979354931
	.quad	0x3fb6c3341c2782c0              # double 0.088916069863908653
	.quad	0x3fb56937320da168              # double 0.08363671276095419
	.quad	0x3feadbdcb0301c39              # double 0.83933863078789905
	.quad	0x3fe02ac5aa0885a5              # double 0.50522120675684745
	.quad	0x3fc00d4e53837b88              # double 0.12540606572926216
	.quad	0x3fcfe5c6612be808              # double 0.24919967407896615
	.quad	0x3fea7293614fc4ae              # double 0.82648629194422596
	.quad	0x3feaa8d977785d70              # double 0.8331115086938734
	.quad	0x3fe09d95ab69a871              # double 0.51923640708015573
	.quad	0x3fba40f944026e08              # double 0.10255391989124274
	.quad	0x3fd3d115d779592a              # double 0.30963655512222721
	.quad	0x3fe34880ed893e64              # double 0.60260054010172981
	.quad	0x3feb5ac0721868a2              # double 0.85482809337851884
	.quad	0x3fd57af1c0d853e6              # double 0.33562892754099349
	.quad	0x3fedef90effcd11f              # double 0.93549391624995681
	.quad	0x3fe52adffc6c180c              # double 0.66148375798434378
	.quad	0x3fa181b1bb631e30              # double 0.034192613720332665
	.quad	0x3fb53eeb8bbb4948              # double 0.082991334547192541
	.quad	0x3fe7d12c6be85e22              # double 0.74428387714118949
	.quad	0x3fe452ba96cec1be              # double 0.63509873823755192
	.quad	0x3feda1d63e9f0f25              # double 0.92600548010566242
	.quad	0x3f8e7dd5ec0f5740              # double 0.014888449923016744
	.quad	0x3fe9071553e0fb58              # double 0.78211466200432778
	.quad	0x3fd31af306417ec2              # double 0.29851985560342709
	.quad	0x3fc6b1bf939701b8              # double 0.17729944902931805
	.quad	0x3fe4239adf3f6e56              # double 0.62934630969125283
	.quad	0x3fce410ca6347cd0              # double 0.2363601504848476
	.quad	0x3fefed4f1dfd6da6              # double 0.99771839005864105
	.quad	0x3fea03ba91f93871              # double 0.81295517454579003
	.quad	0x3fcac85ec52ac55c              # double 0.20923981311129125
	.quad	0x3fe7deaf46b9a1a9              # double 0.74593318761349281
	.quad	0x3fd0a6815a80884e              # double 0.26016267622083411
	.quad	0x3fefae92690de138              # double 0.99006004827882687
	.quad	0x3faf7ffe3dac8790              # double 0.061523385075147208
	.quad	0x3fd5693b00fc803e              # double 0.33454775902101008
	.quad	0x3fcc8992a24c69bc              # double 0.22294838833552244
	.quad	0x3fd943caf3c82a14              # double 0.39476274306130787
	.quad	0x3fe79907b031aa85              # double 0.73743042385952207
	.quad	0x3fe6a0fed3c7fd8f              # double 0.70715276111143222
	.quad	0x3fe3e7cf253a4305              # double 0.62204701682102892
	.quad	0x3fea3bf8496720c7              # double 0.81982054077618549
	.quad	0x3fea1bfa08c3e13a              # double 0.81591512405342503
	.quad	0x3fd8feec3899514e              # double 0.39055924918399831
	.quad	0x3fa2ab7e5110a4f0              # double 0.036464640994674613
	.quad	0x3fca020742f802a8              # double 0.20318690080605006
	.quad	0x3fea75804b9bad85              # double 0.82684340254984134
	.quad	0x3fb55098b31c1578              # double 0.083261054733233197
	.quad	0x3fd95ec8187dcc18              # double 0.3964100112127098
	.quad	0x3fdf876afbef0b94              # double 0.49264025309474246
	.quad	0x3fe50f8ab58b7b15              # double 0.65814719636896035
	.quad	0x3fde9b5a7431f486              # double 0.47823201510602364
	.quad	0x3fd388034f4022be              # double 0.30517657031354506
	.quad	0x3fe513a96b2cec24              # double 0.65865012104712095
	.quad	0x3fcd324e76d44bf4              # double 0.2280977325650323
	.quad	0x3fe7161d3005754a              # double 0.7214494645992684
	.quad	0x3feeacdfd1b53571              # double 0.95860281904758271
	.quad	0x3fc97be6a5eec39c              # double 0.19909365751439345
	.quad	0x3feb8a87c332d873              # double 0.86066043972711126
	.quad	0x3fea8c5cb6f89a53              # double 0.82963405357879549
	.quad	0x3fe9e7bb80c5f6bd              # double 0.80953765059503946
	.quad	0x3feece25088d2981              # double 0.96266414327810434
	.quad	0x3fe595db35476e08              # double 0.67454300314005966
	.quad	0x3fd278a7388c88e0              # double 0.28861408731803628
	.quad	0x3fd30b38f33a6d50              # double 0.29755996468312151
	.quad	0x3fe26b82ce05b2b0              # double 0.57562389601442554
	.quad	0x3fdbf48387a7e5c0              # double 0.43679893729821728
	.quad	0x3fe6f4bd2247ec2d              # double 0.71737534232614097
	.quad	0x3fd3b963eb894ca8              # double 0.30819032670587854
	.quad	0x3fc4d24ac27a7ed8              # double 0.16266760345478448
	.quad	0x3feff383da2df0ca              # double 0.99847595799612887
	.quad	0x3fe1e10fc9ea1d8c              # double 0.5587233489649619
	.quad	0x3fec3c807fe3f66d              # double 0.88238549212083017
	.quad	0x3fa393b089fb9680              # double 0.038236157268142001
	.quad	0x3fd61c4e48612912              # double 0.34547764843286288
	.quad	0x3fac6dfc49f91b20              # double 0.055526622800746717
	.quad	0x3fe864b6254faf6d              # double 0.76229388511045004
	.quad	0x3fe280a8840e1633              # double 0.57820535461423217
	.quad	0x3f84675474857600              # double 0.009962711149166914
	.quad	0x3febc8b57b9cd41c              # double 0.86825060027206601
	.quad	0x3fe680c69e5fa91e              # double 0.70321970875128037
	.quad	0x3fece9c5f1442b06              # double 0.9035367691261349
	.quad	0x3fe2835dee796291              # double 0.5785360009859507
	.quad	0x3fd2bc2d2c3fe374              # double 0.29273537942167782
	.quad	0x3fe841e22642cd35              # double 0.75804240677681511
	.quad	0x3fe5f3dd9560e61c              # double 0.68601874518862216
	.quad	0x3fb90e19cdfaacb0              # double 0.097871411121263518
	.quad	0x3fc8b02256e0c0e0              # double 0.19287518732153952
	.quad	0x3fdbab1a346f467c              # double 0.43231825943539781
	.quad	0x3fe663e4de64c782              # double 0.69969409405005956
	.quad	0x3fdbf6ee3ad9ab82              # double 0.43694644686791417
	.quad	0x3fc3b2c262b38308              # double 0.15389280146975914
	.quad	0x3fd04e2e3ec940e4              # double 0.25477176791629419
	.quad	0x3fef32d7fd9d6227              # double 0.97495650800835143
	.quad	0x3fefb7847530edd5              # double 0.99115202797787083
	.quad	0x3fe5c0d1d5ad6eec              # double 0.6797875569713745
	.quad	0x3fd325a3a201ec52              # double 0.29917231389089693
	.quad	0x3fea7931503abee7              # double 0.8272940222722952
	.quad	0x3fafd5c561b7ce30              # double 0.062177818468537871
	.quad	0x3fe207417b99d104              # double 0.56338571682729865
	.quad	0x3fc38604b9581338              # double 0.15252741861345398
	.quad	0x3fec9e42993c9530              # double 0.89431886605294686
	.quad	0x3fd5002af126e122              # double 0.32813523817050527
	.quad	0x3fe32eb2e3c3fb6f              # double 0.59945053563556694
	.quad	0x3fe0cac9f3726624              # double 0.52475450084893227
	.quad	0x3fe1a89310dbb5c8              # double 0.5518279389631795
	.quad	0x3fdac304b45e661c              # double 0.41815297712455091
	.quad	0x3febf8ae1eaf7cfe              # double 0.87410646432172689
	.quad	0x3fe05a73af7fc72a              # double 0.51104149129080167
	.quad	0x3fecfacbea2ec636              # double 0.9056148122674077
	.quad	0x3fde5927fa60e116              # double 0.47419166041392324
	.quad	0x3fe4abd5aadcbd96              # double 0.64597590800797167
	.quad	0x3fa4dd8d1c3e87d0              # double 0.040752801606927513
	.quad	0x3fe6335785b328f4              # double 0.69376731980562889
	.quad	0x3fce47723af034ac              # double 0.23655536535117017
	.quad	0x3fe3831cd45c0380              # double 0.6097549579281889
	.quad	0x3feb25c533601d27              # double 0.84836063417688912
	.quad	0x3fed3c6542da6a9c              # double 0.91362250382674714
	.quad	0x3fe98a7526bafa88              # double 0.79815156521347408
	.quad	0x3fd2a941e8c477e0              # double 0.29158065539547628
	.quad	0x3fee455f9ba80fbf              # double 0.94596844102533584
	.quad	0x3fed5f61dc5b0fc0              # double 0.91789334333633831
	.quad	0x3fe93891799e871b              # double 0.78815530542144374
	.quad	0x3fe245123f8814b3              # double 0.5709315529681106
	.quad	0x3fc348cf581151dc              # double 0.15065948295763476
	.quad	0x3fe65cefbfe31587              # double 0.69884479024828827
	.quad	0x3fdba6943c3199e8              # double 0.43204217794700961
	.quad	0x3febc25310edaab5              # double 0.86747124964070699
	.quad	0x3fd88d617d0d8936              # double 0.38362920009798829
	.quad	0x3fdaf6f3140eba0a              # double 0.42132260283224865
	.quad	0x3fe2a0ed2da6f3d1              # double 0.5821443454402645
	.quad	0x3fdfc9490522abcc              # double 0.49666047574526995
	.quad	0x3fd23bc32ff5b194              # double 0.28489761050766416
	.quad	0x3fdf3d86bc9349d6              # double 0.48813026824532579
	.quad	0x3fddc89fade631b8              # double 0.46537010176032423
	.quad	0x3fa9476579c14d60              # double 0.049372836220437533
	.quad	0x3fe199b2d82b1b40              # double 0.55001203747165306
	.quad	0x3fd87a13870a64dc              # double 0.38245094478186359
	.quad	0x3fefbfaa6961b51e              # double 0.99214668829305075
	.quad	0x3fa414e106555880              # double 0.039221794150464895
	.quad	0x3fdfec0d4dbc32dc              # double 0.49878246871302934
	.quad	0x3fea40bf398b2896              # double 0.82040368308050193
	.quad	0x3fcbb735a2d52144              # double 0.21652861071403084
	.quad	0x3fd241d2bb728b6a              # double 0.28526752763189356
	.quad	0x3feabe115dc6fd06              # double 0.8357016402805193
	.quad	0x3feb0efaf9588677              # double 0.84557865810729893
	.quad	0x3fe4dfa00e85a5c9              # double 0.65229800068225885
	.quad	0x3fe864d64d67292e              # double 0.76230921857612599
	.quad	0x3fd53994ac319f66              # double 0.33163945022396601
	.quad	0x3fdee3769f1d9d24              # double 0.48263326204910784
	.quad	0x3fd006361493eab2              # double 0.25037910470534108
	.quad	0x3fe00a6fbb4c8cc8              # double 0.50127398092117748
	.quad	0x3fea7ea8c6336474              # double 0.82796133719524656
	.quad	0x3fec1c90571ead45              # double 0.87848679557411258
	.quad	0x3fb284844e81c7c8              # double 0.072334546248185139
	.quad	0x3feda16d880aff50              # double 0.92595554896250043
	.quad	0x3fe236bff82ea3ac              # double 0.56918333504755969
	.quad	0x3fdf3e80cd66fdcc              # double 0.48818988856143331
	.quad	0x3fe43927ba44775c              # double 0.63197695141182519
	.quad	0x3fedeec92d411d55              # double 0.93539866293660145
	.quad	0x3fdc559001a68484              # double 0.44272232209375084
	.quad	0x3fe09c43328f470e              # double 0.51907501101433851
	.quad	0x3fc782ce439ba4cc              # double 0.18367937375231802
	.quad	0x3fc930fdddc20894              # double 0.19680760696434574
	.quad	0x3fd2ecc7825df992              # double 0.29570186358605455
	.quad	0x3fe5b7476008d66e              # double 0.67862290150396887
	.quad	0x3fd5c0a074f1b284              # double 0.33988200588536466
	.quad	0x3fe2742871de82d5              # double 0.57667944183421105
	.quad	0x3fd23bc3ed7a74ae              # double 0.28489778701061652
	.quad	0x3fe5ec1e102bdd15              # double 0.68507292898621819
	.quad	0x3fe1054022c29be9              # double 0.53189093388652708
	.quad	0x3fdde7ddc1d4b576              # double 0.46727699211881857
	.quad	0x3fb12e84402959a8              # double 0.067116037048754351
	.quad	0x3fc9b18dd9bf6154              # double 0.20073102123456954
	.quad	0x3fe0649cf052cc94              # double 0.51228186548395849
	.quad	0x3fedabbe7ecec997              # double 0.92721485869542419
	.quad	0x3fd727763c183654              # double 0.361783560453522
	.quad	0x3f863c64f31de3c0              # double 0.010857380551657303
	.quad	0x3fb6455e70401b78              # double 0.086995985417258725
	.quad	0x3fd5f5896ff26a0a              # double 0.34311138088529047
	.quad	0x3feb5364813aa18b              # double 0.85392976036114143
	.quad	0x3fe1b7ba77cbcb21              # double 0.55367778203649121
	.quad	0x3fae3cc6572393d0              # double 0.059057424676019488
	.quad	0x3feb5cd7d0b82c41              # double 0.85508337750923868
	.quad	0x3fda382215eab894              # double 0.40967609539337357
	.quad	0x3fe156cb94ce455f              # double 0.54184512199041623
	.quad	0x3fc9ddd0c040823c              # double 0.20208176982215942
	.quad	0x3fe40c81b8e3d69f              # double 0.62652670012785794
	.quad	0x3feb83d169c3bc2c              # double 0.85984106690546502
	.quad	0x3fc9d12b668c0bcc              # double 0.20169584757976933
	.quad	0x3fbd7a4731241490              # double 0.11514706563692045
	.quad	0x3feb3da961722f7d              # double 0.85127705604962467
	.quad	0x3fe3ec4324f04f21              # double 0.62259061064330379
	.quad	0x3fed9fbca44be6aa              # double 0.92574913109929935
	.quad	0x3fc0a2e515e1097c              # double 0.12997115677178417
	.quad	0x3fe69dba0c741ef6              # double 0.70675375397055862
	.quad	0x3fab18073e5ca550              # double 0.052917696344887077
	.quad	0x3feba5d36668abc0              # double 0.8639924049542671
	.quad	0x3fe672e3ad1e7624              # double 0.70152458011915941
	.quad	0x3fb56e7bbfb1c118              # double 0.08371709280050188
	.quad	0x3feb6bb6d79258f0              # double 0.85689870933381762
	.quad	0x3fc6e9335f29d1a8              # double 0.17899171969078265
	.quad	0x3fe16d0154614e4c              # double 0.54455629806984396
	.quad	0x3fd6352917828b80              # double 0.34699466033833204
	.quad	0x3fecbfb0bc48e373              # double 0.89839970373496525
	.quad	0x3fa27d2f7d6a8e50              # double 0.036111339625929717
	.quad	0x3fbef69d14e26750              # double 0.12095052490113045
	.quad	0x3fef1c0a799591d5              # double 0.97217296358990756
	.quad	0x3fb17e0ce7b82aa0              # double 0.068329626628989448
	.quad	0x3fe5491c25967cce              # double 0.66517455426574101
	.quad	0x3fe87578a1d45ad2              # double 0.76433974845243768
	.quad	0x3fe7dbe6faf242af              # double 0.74559353840785103
	.quad	0x3fe6d6b6e8ac253a              # double 0.71371026462399034
	.quad	0x3fdaca6418a8211c              # double 0.4186029663838029
	.quad	0x3fe5ca8ae08d70ae              # double 0.68097442491445803
	.quad	0x3fc3705001868364              # double 0.15186500620350352
	.quad	0x3fe944677ce204c8              # double 0.78960012808979574
	.quad	0x3fdec85a65e91448              # double 0.48097858383363645
	.quad	0x3fed28f54fb517e9              # double 0.91124978607035445
	.quad	0x3fd741be39cbbc5a              # double 0.36338763851285238
	.quad	0x3fa690d150ade490              # double 0.044073620890182075
	.quad	0x3fe791329f8fba54              # double 0.73647433437674659
	.quad	0x3feb226121b3d05e              # double 0.84794670660495419
	.quad	0x3fef59afd29d3fb0              # double 0.97969809661480234
	.quad	0x3fc18d33ce202de4              # double 0.13712165417415101
	.quad	0x3fe317602ed39235              # double 0.59660348077574687
	.quad	0x3fce5643a2307894              # double 0.2370075742664467
	.quad	0x3fdcba3e2de74e54              # double 0.44886736376540637
	.quad	0x3f9ba2f718a92960              # double 0.026988850479292892
	.quad	0x3fce0ad888199db4              # double 0.23470598836432333
	.quad	0x3fd2eb3b4a2ce57e              # double 0.29560739749611986
	.quad	0x3f8e9d859472dec0              # double 0.014948886482997081
	.quad	0x3fd93914cc5e21cc              # double 0.39410896261008754
	.quad	0x3fb20ba896e0ff30              # double 0.070490395389239735
	.quad	0x3fd56ac9261f4e2e              # double 0.33464268420104559
	.quad	0x3fe114fea850eb90              # double 0.53381283640134036
	.quad	0x3fd8b81dc85a569e              # double 0.38623756948195787
	.quad	0x3fcf3a8eb58f609c              # double 0.24397453179586115
	.quad	0x3fea61073e4b9ad5              # double 0.82434427420670409
	.quad	0x3fb42a818316e738              # double 0.078773588661445682
	.quad	0x3fce7bdc04ed397c              # double 0.23815489044723026
	.quad	0x3fe62ea289f61d5a              # double 0.69319273896773415
	.quad	0x3fc688bec5c2a644              # double 0.17604813247935358
	.quad	0x3fcc228627541df4              # double 0.21980359001484795
	.quad	0x3fdf45f0011e1be0              # double 0.48864364728109244
	.quad	0x3fc23b76f68cce60              # double 0.14243971861434357
	.quad	0x3fc56c91975ea77c              # double 0.1673757542715143
	.quad	0x3fde5bc8fde7b830              # double 0.47435211940217226
	.quad	0x3fc777a55cf80798              # double 0.18333880462165264
	.quad	0x3fe6378f6c0dc1b2              # double 0.69428225616689176
	.quad	0x3fbea9516e5da010              # double 0.11977108902431177
	.quad	0x3fe4927c53f804b7              # double 0.64288154983673607
	.quad	0x3f8cd637fcd411c0              # double 0.014080464747629473
	.quad	0x3fdacff065843fa8              # double 0.41894159234743222
	.quad	0x3fc8f53cad4ff158              # double 0.19498403990281576
	.quad	0x3fa32c1a31eb1d20              # double 0.037445849031025213
	.quad	0x3fe28dec083dc07d              # double 0.57982446298230139
	.quad	0x3fe482eb21425712              # double 0.64098125930715555
	.quad	0x3fe6d6097094e583              # double 0.71362754810904538
	.quad	0x3fbf787ea2557100              # double 0.12293235266901448
	.quad	0x3fd8b8298520d8f6              # double 0.38624036789714411
	.quad	0x3fd15ec8dd121538              # double 0.27141019429139446
	.quad	0x3feab411dd47b3a0              # double 0.83448117464796567
	.quad	0x3fe53b92d5716d5f              # double 0.66352216423130617
	.quad	0x3feec0201f8f9667              # double 0.96095281757579875
	.quad	0x3fe2a81ce79e9c8f              # double 0.58302159536551013
	.quad	0x3fe469111072c515              # double 0.63782551968157242
	.quad	0x3fdb837d7dab2d50              # double 0.42990052482919783
	.quad	0x3fe87db2a8adc17a              # double 0.76534398026528483
	.quad	0x3fd68a8dbe72d534              # double 0.35220664595120188
	.quad	0x3fdbb874fb2a88f0              # double 0.43313335922188312
	.quad	0x3fc0813bf412f064              # double 0.12894391458201249
	.quad	0x3fe2ebc1e76ff5b7              # double 0.59127898409467761
	.quad	0x3fd1e3b75a9e9238              # double 0.27952369546463585
	.quad	0x3fc2f5a133d88a70              # double 0.1481210234788537
	.quad	0x3fd6d532744873fc              # double 0.35676251750720644
	.quad	0x3fe306d858f25728              # double 0.59458558437720388
	.quad	0x3fdf5b5b58ea0cfc              # double 0.48995097811730637
	.quad	0x3febda3c8e2265d8              # double 0.87039020310038051
	.quad	0x3fc6c8eaea3bea64              # double 0.17800651967248193
	.quad	0x3febf6374dca17d5              # double 0.87380566781279845
	.quad	0x3fe25fa2206d3421              # double 0.57417398770633465
	.quad	0x3fe4b4127c6f176b              # double 0.64698147109514303
	.quad	0x3fd6545c1fea6e44              # double 0.34889891735813117
	.quad	0x3fcd0e2a96dd1280              # double 0.22699482313523234
	.quad	0x3fcaca73be75c8bc              # double 0.20930334853944099
	.quad	0x3fbf672c505e2a60              # double 0.12266804658990216
	.quad	0x3fceba49eaba6860              # double 0.2400600811132021
	.quad	0x3febe09ae6660fb0              # double 0.87116761207334115
	.quad	0x3fe2c3e2f7936b42              # double 0.58641193728121999
	.quad	0x3fe9273135b22bc9              # double 0.78603420722480977
	.quad	0x3fe5cb616b51e867              # double 0.68107672654083451
	.quad	0x3fe508e0cbc6be35              # double 0.65733375358644841
	.quad	0x3fd2f477ca0ff7c0              # double 0.29617113812116358
	.quad	0x3fa3192cb4299840              # double 0.037301442139139329
	.quad	0x3fe428d48b0541ce              # double 0.62998416092346488
	.quad	0x3fed1406b02899c6              # double 0.90869459539390429
	.quad	0x3fea3e1578c6685d              # double 0.82007859791634596
	.quad	0x3fbd2087095f9288              # double 0.11377758005944305
	.quad	0x3fec16c1f9f85b59              # double 0.87777804205220911
	.quad	0x3fee3c00d0213a1d              # double 0.94482460642194932
	.quad	0x3fdd928d358ab754              # double 0.4620697996968961
	.quad	0x3fd9714a9e2a65d8              # double 0.3975397629343127
	.quad	0x3fc8bf168de49bb4              # double 0.19333154610032255
	.quad	0x3feac3c9263c685c              # double 0.83639962642633802
	.quad	0x3fd6bee295e7fd8a              # double 0.35540070189741668
	.quad	0x3fef13b17fbf32da              # double 0.9711539740615891
	.quad	0x3fc51ad026d31c3c              # double 0.16488077064261286
	.quad	0x3fdf4fe77199eb9e              # double 0.48925195783493247
	.quad	0x3fb1845dfac2ec10              # double 0.068426011773155659
	.quad	0x3fd98262e423e2a4              # double 0.39858314780534898
	.quad	0x3fe788d87619fcdb              # double 0.73545477930738501
	.quad	0x3fccdb9fd4d31694              # double 0.22545240299057367
	.quad	0x3fe1c8e7d81fc087              # double 0.5557746144459238
	.quad	0x3fd99b09ebc6be18              # double 0.40008781456978815
	.quad	0x3fe439c103ec0542              # double 0.63205004468924408
	.quad	0x3fcbb022964971dc              # double 0.21631271684863307
	.quad	0x3fe9208a3a32b0c9              # double 0.7852221619300731
	.quad	0x3fd9c31e868f1c5a              # double 0.40253413334398191
	.quad	0x3fd424c980ea6856              # double 0.31474530782145871
	.quad	0x3fd75f4b1305c17e              # double 0.36519123895325112
	.quad	0x3feecf14b3a83470              # double 0.96277842606799702
	.quad	0x3f86093ce30c0580              # double 0.010759807280467326
	.quad	0x3fefcf4955b6e619              # double 0.99405352345565056
	.quad	0x3fba23ffa2155350              # double 0.10211179453956487
	.quad	0x3fc3600e1282eb50              # double 0.1513688650500975
	.quad	0x3fefe16d7d4a7720              # double 0.99626802893519439
	.quad	0x3fe9cbde30caf20d              # double 0.80613622217021119
	.quad	0x3fea66e8b50840f0              # double 0.82506213529452843
	.quad	0x3fdd062c3e23d3dc              # double 0.45350175922732006
	.quad	0x3feeb76d49bc2fd9              # double 0.95989097978007997
	.quad	0x3fe9b9897585894e              # double 0.80389855340426108
	.quad	0x3fee694f3ee86eb1              # double 0.9503551701231655
	.quad	0x3fdd07901aca0dac              # double 0.45358660331859357
	.quad	0x3fc31b009b00d0b8              # double 0.14926154678835757
	.quad	0x3fe7bb857c7e5658              # double 0.74164079966676422
	.quad	0x3fec50603a41f859              # double 0.88481150988060187
	.quad	0x3fe25853d2ef4849              # double 0.57328215788062054
	.quad	0x3fd484c761958e4a              # double 0.32060417680461184
	.quad	0x3fdef3c91cd8d8aa              # double 0.48362949196906391
	.quad	0x3fe385c43fb4f77b              # double 0.6100789303088584
	.quad	0x3feafe8b333d9728              # double 0.84357223518302238
	.quad	0x3fe46280deb632b8              # double 0.63702434061413893
	.quad	0x3fc7c2d40e98f6b8              # double 0.18563318932313222
	.quad	0x3fede410f5670004              # double 0.93409011774201688
	.quad	0x3fe5f71d7283e693              # double 0.68641540876633866
	.quad	0x3fe737f09636ca28              # double 0.72557858790088847
	.quad	0x3fd0c34f06c19010              # double 0.26192069682861163
	.quad	0x3fd8e71a26c23c6e              # double 0.38910535607369112
	.quad	0x3fec3bc8721dde7a              # double 0.88229772842801357
	.quad	0x3fec892fabdef909              # double 0.89174636429359666
	.quad	0x3fedce064c59f47d              # double 0.93139948761348956
	.quad	0x3fccd9715322d5bc              # double 0.2253858238160954
	.quad	0x3fd69b95e091a3ee              # double 0.35324618273312935
	.quad	0x3fefe9886c71bfba              # double 0.99725743465932415
	.quad	0x3fe4e85cca67675a              # double 0.65336455852523589
	.quad	0x3fdc6586deb173be              # double 0.44369670627002822
	.quad	0x3fe8f0366bd4b812              # double 0.77932282505730854
	.quad	0x3fdc73890bca98c8              # double 0.44455171729567811
	.quad	0x3fdd1e42853f76a6              # double 0.45497191441050189
	.quad	0x3fe29e8de0ea1c16              # double 0.5818547623501924
	.quad	0x3fe19743340f98cd              # double 0.54971466224812959
	.quad	0x3fe00e0a3bb60a9e              # double 0.50171386396717188
	.quad	0x3fe4f94907ae1939              # double 0.65543033123029837
	.quad	0x3fe380f0a8e90b62              # double 0.60948975553797546
	.quad	0x3fe56d5b3b03720f              # double 0.6695991661650299
	.quad	0x3fb60a55b2c77a38              # double 0.086095195910709132
	.quad	0x3fed28aed0245a4c              # double 0.91121616986021924
	.quad	0x3fe0231853a992b0              # double 0.50428406086265021
	.quad	0x3fe823d0d2302c99              # double 0.7543720345724011
	.quad	0x3feb53089e7bbc59              # double 0.85388594583299515
	.quad	0x3fe5c6bbf9dcb7f4              # double 0.68050955582816508
	.quad	0x3f6ffa1dcfc9bd00              # double 0.0039034445056170819
	.quad	0x3febfeb0dafcafb1              # double 0.87484019061002105
	.quad	0x3fe2c9dc278c3523              # double 0.58714111065060981
	.quad	0x3fd9344ad5b537f0              # double 0.39381667013083099
	.quad	0x3fdef66e94866ae4              # double 0.48379101280595038
	.quad	0x3fe018665e476e6b              # double 0.502978500498512
	.quad	0x3fdb39e7140c10c0              # double 0.42540909726836773
	.quad	0x3fc62b9dc96184bc              # double 0.17320606549313833
	.quad	0x3fee3b866afc1c1b              # double 0.94476624389142516
	.quad	0x3fe911344c508fe0              # double 0.78335013299192368
	.quad	0x3fd25662d4027df8              # double 0.28652258590770385
	.quad	0x3fb8b34dce4eb1b8              # double 0.096485960834519768
	.quad	0x3fda04aead24cdb0              # double 0.40653578671045931
	.quad	0x3feda72fa118a381              # double 0.92665845359907462
	.quad	0x3fd08b1ca148b688              # double 0.25849071264642776
	.quad	0x3fece524380bc888              # double 0.90297137209405864
	.quad	0x3fd7083b52ae0636              # double 0.35987742494771469
	.quad	0x3fa9f76b4f641190              # double 0.05071578354003059
	.quad	0x3fe06bd821c39d00              # double 0.51316458315423574
	.quad	0x3fcfd498600aa578              # double 0.24867539109736092
	.quad	0x3fce15d3efd682e0              # double 0.23504113398396154
	.quad	0x3fb924477923fc70              # double 0.098209826541266087
	.quad	0x3fd57c31334782ca              # double 0.3357050896429824
	.quad	0x3fc854be8c3c1a64              # double 0.19008619162942175
	.quad	0x3fbcdde67604cf30              # double 0.11276092892950085
	.quad	0x3fd2bfa635d5575e              # double 0.29294734246410836
	.quad	0x3fc375b6ab113ff4              # double 0.15202983239078061
	.quad	0x3fbebd0a9c1df0d0              # double 0.12007204352807155
	.quad	0x3fedd31a6781a023              # double 0.93201942649921354
	.quad	0x3fe29db06c5d6157              # double 0.58174916424745049
	.quad	0x3fe7ac2ad5351159              # double 0.73976651804018012
	.quad	0x3fe1b3e2c7cacffc              # double 0.55320872327729331
	.quad	0x3fb020cc33d27ed8              # double 0.063000452663341533
	.quad	0x3fe98cb1d0cda7b9              # double 0.79842463285353127
	.quad	0x3fe82dc5d8cdef6a              # double 0.75558750481239412
	.quad	0x3feab84e9d934d7f              # double 0.83499842430539661
	.quad	0x3fe7d151fc853edb              # double 0.74430178947838088
	.quad	0x3fdf8d900067e06a              # double 0.49301528968454156
	.quad	0x3fe9a10daf4b74f3              # double 0.80090984570747847
	.quad	0x3fec2b9c7f981107              # double 0.88032364769654314
	.quad	0x3fd827ff3c6f7d50              # double 0.37744122411637182
	.quad	0x3fdde881fc75bb9c              # double 0.46731614736830251
	.quad	0x3fc4b3e20b50b5d4              # double 0.16173959305289876
	.quad	0x3fe0856383acf0f9              # double 0.51628280370599022
	.quad	0x3fbef48e0d421858              # double 0.12091911147771961
	.quad	0x3fe748aaab8f3d96              # double 0.72762044437142737
	.quad	0x3fd407b42a828a5c              # double 0.31297020102843986
	.quad	0x3fd5611f7f1faf94              # double 0.33405291952544158
	.quad	0x3fecc142c8fbf53c              # double 0.89859141592720659
	.quad	0x3fdd4767a126cd3e              # double 0.45748320329149184
	.quad	0x3fe3f29caa42687b              # double 0.62336571935453777
	.quad	0x3fe2205da39e4bb6              # double 0.56645090061862535
	.quad	0x3fe852873db9beae              # double 0.76007425361418313
	.quad	0x3fe2e81e2aa663bb              # double 0.59083469705648584
	.quad	0x3fec8d37446f7318              # double 0.89223826757697378
	.quad	0x3fe29dfb50d11523              # double 0.58178487572209681
	.quad	0x3fe66ee7e7c49175              # double 0.70103831545979622
	.quad	0x3fa0a3f860e9ea60              # double 0.03250099356678926
	.quad	0x3fe8aa620cc74541              # double 0.77079870696812958
	.quad	0x3fe479d23cfc9fa0              # double 0.63987075721250974
	.quad	0x3fc1ce78eb37ab08              # double 0.13911353574015828
	.quad	0x3fe53597a746706b              # double 0.66279204054764074
	.quad	0x3fd982aa471c52b6              # double 0.39860016769788886
	.quad	0x3fe28172b7d69253              # double 0.57830177217381118
	.quad	0x3feb1e3f01d40906              # double 0.84744215352137142
	.quad	0x3fda681c536b121c              # double 0.41260440965950962
	.quad	0x3fde21b4f4c7cfa2              # double 0.47080730347010491
	.quad	0x3fe368d4b298af2d              # double 0.60654673463929998
	.quad	0x3fc4fc42456fde04              # double 0.16394832983472452
	.quad	0x3fbe9a55363e04f8              # double 0.11954243253969199
	.quad	0x3fd4cbe5a20bdd0e              # double 0.32494488549078049
	.quad	0x3fe8071e49a394cc              # double 0.75086893446555214
	.quad	0x3fe92888a593039a              # double 0.78619797075963338
	.quad	0x3fa7344541b23700              # double 0.045320667523908398
	.quad	0x3fe1ce2b8e2a0f8f              # double 0.55641725317444635
	.quad	0x3febebdbee0d022a              # double 0.87254139417934096
	.quad	0x3fe4b54867f2bf77              # double 0.6471292524565645
	.quad	0x3fe16d536faea120              # double 0.5445954495708385
	.quad	0x3fe16d1a08d641ef              # double 0.54456807828870335
	.quad	0x3fadf49aae6e40a0              # double 0.058506807129675709
	.quad	0x3fe804854a4c91e4              # double 0.75055183898490129
	.quad	0x3fda8ca2c8d9e8ba              # double 0.41483373274207802
	.quad	0x3feef38dfd214c38              # double 0.96723079146830226
	.quad	0x3fe58caa349fb8e1              # double 0.67342100408657413
	.quad	0x3fe73eaf3b2af386              # double 0.72640191608626092
	.quad	0x3fab4345e9afe830              # double 0.053247627998601721
	.quad	0x3fdd3a16defd3dd4              # double 0.45667049194613907
	.quad	0x3fd34a4706d7317c              # double 0.30140853565242032
	.quad	0x3fcb84992035d3a0              # double 0.21498407433287259
	.quad	0x3fb99b34bc67bd38              # double 0.10002450561272702
	.quad	0x3fe06a82ea79368b              # double 0.5130018786964724
	.quad	0x3fe9383d62984056              # double 0.78811520821364911
	.quad	0x3fd4078202902a2a              # double 0.31295824289614649
	.quad	0x3fd1e591cc939302              # double 0.27963681200189694
	.quad	0x3fb369e3ac57a8d0              # double 0.075834493232523003
	.quad	0x3fe50ea9a8a97c09              # double 0.65803988401228353
	.quad	0x3fd1df804e45ef9c              # double 0.27926643031946141
	.quad	0x3fdda83e05e661f6              # double 0.4633936936966444
	.quad	0x3fd5c7c0ccbae214              # double 0.34031696313061954
	.quad	0x3fac1e25603c88d0              # double 0.054917495725264609
	.quad	0x3fde7cb98be578c8              # double 0.47636259710078521
	.quad	0x3fedd6f243bc6bbb              # double 0.93248856763545207
	.quad	0x3fec3dc3cce28e99              # double 0.88253965393637934
	.quad	0x3fe289d03f12702e              # double 0.57932293242220623
	.quad	0x3fd4ee0562028caa              # double 0.32702765055928273
	.quad	0x3fe1f47ff427906a              # double 0.56109616934237505
	.quad	0x3fe6a9ee9b5288b6              # double 0.70824365936666456
	.quad	0x3fbbd03dc542ac90              # double 0.10864625993660781
	.quad	0x3fc1da2ddeb40be8              # double 0.13947080015358826
	.quad	0x3fca602145347570              # double 0.20605865363260589
	.quad	0x3fedb1fad81ec32f              # double 0.92797605715722919
	.quad	0x3fda18eb98a739be              # double 0.40777101428548324
	.quad	0x3fd18effd19ef7de              # double 0.27435298414991205
	.quad	0x3fedd4ab65177c08              # double 0.93221063370208501
	.quad	0x3fc81771486c7888              # double 0.18821540867151421
	.quad	0x3fdb6fda64883b90              # double 0.42870197122186315
	.quad	0x3fe99c5e5e3b48bd              # double 0.80033796696286397
	.quad	0x3fd0e16c646e4b92              # double 0.26375875289630202
	.quad	0x3feb4417cd1ddf7b              # double 0.85206213056424873
	.quad	0x3feff16458a333e3              # double 0.99821679412854924
	.quad	0x3fe56830e4545ca7              # double 0.66896862598050155
	.quad	0x3fe8e55d8e2197c4              # double 0.77799871215824412
	.quad	0x3fe9d1e06bcd6382              # double 0.80686970763336796
	.quad	0x3fe0eb7b90846780              # double 0.52874544359222853
	.quad	0x3fe8f1931efaa22e              # double 0.77948909807770916
	.quad	0x3fbcfa56320fa548              # double 0.11319483492083748
	.quad	0x3fdcbe21cef1b0b0              # double 0.4491047402323245
	.quad	0x3fd177a40c8ad6cc              # double 0.27292729592168707
	.quad	0x3fba33ce9de644c0              # double 0.10235301356285031
	.quad	0x3fa01b6d99b58280              # double 0.031459259999569333
	.quad	0x3fe90397c7ff767d              # double 0.7816885858735102
	.quad	0x3fd39ea2fe52068a              # double 0.30655741535165559
	.quad	0x3fe5b3a7a832b34a              # double 0.67818053103619858
	.quad	0x3fd46e2414cb3512              # double 0.31922246962206302
	.quad	0x3fec99702b8ca35f              # double 0.89373024469123752
	.quad	0x3fdaa3378bbee126              # double 0.41621197363885398
	.quad	0x3fb564aea3f18310              # double 0.083567538285489684
	.quad	0x3feef867af19d7e7              # double 0.96782287787823129
	.quad	0x3fe93e72524aea21              # double 0.7888728720930126
	.quad	0x3fe750b71951c232              # double 0.72860293336095183
	.quad	0x3fd717dce9cf732e              # double 0.36083147843401064
	.quad	0x3fb2a8281054a6a0              # double 0.07287836455057084
	.quad	0x3fbbb89d72e622d8              # double 0.10828575186873068
	.quad	0x3fe2d50463e859a1              # double 0.58850307000357216
	.quad	0x3fbc7b1f4ed82778              # double 0.11125369715605682
	.quad	0x3fafdf86a7e42ad0              # double 0.062252243036785893
	.quad	0x3fc1e980cbda0094              # double 0.13993844941797262
	.quad	0x3fe9d03df238d8d2              # double 0.80667016324039253
	.quad	0x3fe43888d03dea6f              # double 0.63190117523420308
	.quad	0x3fe7e4868b09231d              # double 0.74664618640335656
	.quad	0x3feaba8ae7eb4bd0              # double 0.83527131363586626
	.quad	0x3feeae52b7ca2d99              # double 0.95877967735707436
	.quad	0x3fe4d96d7af977b1              # double 0.65154146212056763
	.quad	0x3fe8c437fe59002b              # double 0.77395248105313408
	.quad	0x3fe2f24798d17ffa              # double 0.59207515570960756
	.quad	0x3fb3d6710b255a08              # double 0.077490868779342859
	.quad	0x3fd80677bbab21f2              # double 0.37539475752831131
	.quad	0x3fe9787038f7898e              # double 0.79595194937091818
	.quad	0x3fef1b6ce2f1013c              # double 0.97209781956193053
	.quad	0x3fe64145f4b08c4e              # double 0.69546792784638867
	.quad	0x3fea40a9e3fe4fec              # double 0.82039351015054995
	.quad	0x3fdd60346b6a86d6              # double 0.45899687280517065
	.quad	0x3fee0df142caf74e              # double 0.93920195622897906
	.quad	0x3fe116c3d0e76e2e              # double 0.53402891923491835
	.quad	0x3fec21cd97fa5cd7              # double 0.87912635501097725
	.quad	0x3fdae669d6878208              # double 0.42031331968431163
	.quad	0x3fe1e5a2596b6d97              # double 0.55928151573918938
	.quad	0x3fca9755d3136c84              # double 0.20774338537635029
	.quad	0x3fe5a086a1fc67ae              # double 0.67584544790155632
	.quad	0x3fdcd94c13bf5002              # double 0.45076276710938157
	.quad	0x3fadf03bd7d20040              # double 0.058473463149312455
	.quad	0x3f78a50ae86c3800              # double 0.0060167718973058726
	.quad	0x3fe1e7a5cd7fdeb2              # double 0.55952730309123511
	.quad	0x3fcf8a898bea1168              # double 0.24641532260660459
	.quad	0x3fd19979a354065e              # double 0.27499237966558165
	.quad	0x3fd9dd40d16a2642              # double 0.40412922335290002
	.quad	0x3fef81b43de61fae              # double 0.98458301629670131
	.quad	0x3fcb3c7b41722a08              # double 0.21278324790576186
	.quad	0x3fdb08e1edbbc00a              # double 0.42241714683677911
	.quad	0x3fdb01560f1675bc              # double 0.42195655320559999
	.quad	0x3fc29410ba770c28              # double 0.14514359574067837
	.quad	0x3fa9918a1fd34fc0              # double 0.049938503632489084
	.quad	0x3fc959b4a58acf1c              # double 0.19805009921184868
	.quad	0x3fe6fe42e3a2074a              # double 0.71853775462680258
	.quad	0x3fef3e1fa0f911c8              # double 0.97633344116234699
	.quad	0x3fedaff21dd80af9              # double 0.92772775486841319
	.quad	0x3fe0f17deb9010fb              # double 0.52947898872710597
	.quad	0x3fe48fa5931401e9              # double 0.64253500677301389
	.quad	0x3feee91c182459d5              # double 0.96595577922090092
	.quad	0x3f928e13714774a0              # double 0.018120101727494231
	.quad	0x3fda5522ee3b57a0              # double 0.41144631638359819
	.quad	0x3fec64e5c161561c              # double 0.88731658715795758
	.quad	0x3fcaadc2e3949294              # double 0.208427773593162
	.quad	0x3fdb2490e05ed5da              # double 0.42410680686165636
	.quad	0x3fee545a10f7a444              # double 0.9477968531983909
	.quad	0x3fdf8d6005672afa              # double 0.49300385024677917
	.quad	0x3fe66058ec9bcb3c              # double 0.69926115238772679
	.quad	0x3feec6e3a7ebe55a              # double 0.96177847668802063
	.quad	0x3fca2387ae703f8c              # double 0.20420928971770669
	.quad	0x3fe76f29182f585c              # double 0.73231940005895124
	.quad	0x3fef61cf81323d70              # double 0.98068976625101634
	.quad	0x3fb4c3efbbe11880              # double 0.081114753121342531
	.quad	0x3fdb2712b471dade              # double 0.42425983068043915
	.quad	0x3fe2b72da19614e6              # double 0.58486062583747578
	.quad	0x3fc682e3636ce788              # double 0.17586939196354145
	.quad	0x3fb2189465e030d0              # double 0.070687556144721997
	.quad	0x3fe02098227cd52d              # double 0.50397879348625951
	.quad	0x3fe14e6591672d3d              # double 0.54081991576223454
	.quad	0x3fd0e3eb201d6b50              # double 0.26391103874418764
	.quad	0x3fd10173ae35d10a              # double 0.26571361553875816
	.quad	0x3f9424dcfba43f00              # double 0.019671872004493274
	.quad	0x3fd8d41ec6f8b948              # double 0.38794679098909457
	.quad	0x3fecc7e9ceb929f3              # double 0.8994034802975065
	.quad	0x3fdb1c2e05ba9e24              # double 0.42359495696516292
	.quad	0x3febd2d40b77b507              # double 0.86948587646261977
	.quad	0x3fdfff19669f5c26              # double 0.49994502088287829
	.quad	0x3fda57b966f9f7b6              # double 0.41160426193516331
	.quad	0x3fe067584a0372f2              # double 0.51261534171825773
	.quad	0x3fc4616c658210d8              # double 0.15922312694977481
	.quad	0x3fe9bca90c4c382a              # double 0.80427982713604718
	.quad	0x3fd36aa3ea1a816c              # double 0.30338380681680266
	.quad	0x3fd787c2ae8d8f7e              # double 0.36766116186321784
	.quad	0x3fb91f913a6d1c00              # double 0.098137928737841662
	.quad	0x3febd43ee146bee0              # double 0.86965888976370919
	.quad	0x3fdeb2b3589848ae              # double 0.47965701724855137
	.quad	0x3fdf1e1766e50fea              # double 0.48621163414304525
	.quad	0x3fe6091fcdd854cc              # double 0.68861379818067681
	.quad	0x3fe0dacb8690d97e              # double 0.52670837671648463
	.quad	0x3fb5e471b25ee658              # double 0.085517030761275037
	.quad	0x3fbef06d6c1c7120              # double 0.12085613145285778
	.quad	0x3fddbff94880e008              # double 0.46484214859401662
	.quad	0x3fe3139030882bdd              # double 0.59613809088602532
	.quad	0x3feae08dcc95f29f              # double 0.83991136510993047
	.quad	0x3fe910359d5d843a              # double 0.78322869048509536
	.quad	0x3fa12899118aa2c0              # double 0.033512862578680025
	.quad	0x3fdb08991c6d63ee              # double 0.4223997857675944
	.quad	0x3fee6aada12b87a3              # double 0.95052224615595937
	.quad	0x3febe0d75dfeec4f              # double 0.87119644506982208
	.quad	0x3fc5229265b0d004              # double 0.16511754956593461
	.quad	0x3fce3bf65f3a1534              # double 0.23620490693807883
	.quad	0x3fe494a6cdd7eca2              # double 0.64314594463157371
	.quad	0x3fdaec937d423776              # double 0.42068946106234451
	.quad	0x3fdb9c6bb8c7293c              # double 0.43142216725086135
	.quad	0x3fefa6e1e9b6e604              # double 0.98912139556267719
	.quad	0x3fb73e5bd5d02c38              # double 0.090795268726808653
	.quad	0x3fee2a7f8364416d              # double 0.94268775618006162
	.quad	0x3fe06c3dd8b8de7f              # double 0.51321308449310254
	.quad	0x3fdbed568592dd06              # double 0.436360960429241
	.quad	0x3fefaf5f611d8276              # double 0.99015778510881947
	.quad	0x3fed20fc297f2e10              # double 0.9102764902576741
	.quad	0x3fc04fa058ef0ad0              # double 0.1274300035712117
	.quad	0x3f758c3ecb88eb00              # double 0.0052607014591170564
	.quad	0x3fd52af76c094b6c              # double 0.33074746656818976
	.quad	0x3fd3f46eec454500              # double 0.31179402421282987
	.quad	0x3fd6fd48d94887d8              # double 0.35920926302980893
	.quad	0x3fd4291ffcc1b42c              # double 0.31501006778018126
	.quad	0x3fe8e30d09707d94              # double 0.77771617740283938
	.quad	0x3fea2907432f253c              # double 0.81750834581286069
	.quad	0x3feb822ffea0a9fe              # double 0.85964202625228814
	.quad	0x3fe973f139c8af33              # double 0.79540311132357144
	.quad	0x3fe00af7917d45cd              # double 0.50133875289810137
	.quad	0x3fb9937363bf32f8              # double 0.099906169750464957
	.quad	0x3fe4652474b7551a              # double 0.6373464851009516
	.quad	0x3fed04b24566b045              # double 0.90682328753383301
	.quad	0x3fe3bbef40118f0a              # double 0.61669123185535679
	.quad	0x3fe165c8f8d44066              # double 0.54367493247447096
	.quad	0x3fdb24bbe2fb694a              # double 0.42411706129282278
	.quad	0x3fdc904069ba902e              # double 0.44630441975664581
	.quad	0x3fdd69ca0ec64368              # double 0.45958186571902226
	.quad	0x3fda793e314ae178              # double 0.41365008176537499
	.quad	0x3fed85f04f0a656e              # double 0.92259993970507792
	.quad	0x3fae45c6096f8680              # double 0.059126080180942786
	.quad	0x3fe8696fbe39361b              # double 0.76287066605590625
	.quad	0x3fec73d09342819f              # double 0.88913754235914044
	.quad	0x3fd76f4005729608              # double 0.36616516620628703
	.quad	0x3fe3334fef60da53              # double 0.60001370194988579
	.quad	0x3fe503ff2c75f1bf              # double 0.65673788722738624
	.quad	0x3fd594dff090d20c              # double 0.33721159451241145
	.quad	0x3fdc051752dce1b6              # double 0.43781073658058334
	.quad	0x3fd6c790fad6b9c8              # double 0.35593056198095185
	.quad	0x3fdf648acae634fe              # double 0.49051160635356428
	.quad	0x3fec5a4a903d5f4d              # double 0.88602188274215055
	.quad	0x3fe0f6f8f5ad9139              # double 0.53014801010116408
	.quad	0x3fb6121db743ea60              # double 0.086213929407600087
	.quad	0x3fdcdde11ba70e06              # double 0.45104243946499911
	.quad	0x3fe5091ea0f2e85d              # double 0.65736323771785587
	.quad	0x3fef1b15a02b96f2              # double 0.97205621035820244
	.quad	0x3fe3e6019a7cd413              # double 0.62182693646775744
	.quad	0x3fc3b02e42265720              # double 0.15381410818070496
	.quad	0x3fecfb70281db427              # double 0.90569312892114773
	.quad	0x3fb5355ac5ec75a8              # double 0.082845376321037834
	.quad	0x3fe5fe1ce536c8e4              # double 0.68726963775978023
	.quad	0x3fe266de6b83dcf9              # double 0.57505722998658293
	.quad	0x3fc1a81f8c6b12a8              # double 0.13794321400032072
	.quad	0x3fed025208a2dbb8              # double 0.90653325735808377
	.quad	0x3fec341b3959eb0f              # double 0.88136063767828599
	.quad	0x3fed6ddd32fac4b5              # double 0.91966114003130051
	.quad	0x3fd928265b60f922              # double 0.39307555125914651
	.quad	0x3fe856c9ec945d36              # double 0.76059433180754499
	.quad	0x3fca6230a33281ec              # double 0.20612152069681089
	.quad	0x3fece265e9196367              # double 0.90263648535902241
	.quad	0x3fed20e187fe597a              # double 0.91026379166832716
	.quad	0x3fd770f88d2f7f6a              # double 0.36627019679689587
	.quad	0x3febfe1b2168f2df              # double 0.87476879620916381
	.quad	0x3fc112b95e2b8c78              # double 0.13338391397619254
	.quad	0x3fd8b856309a02c2              # double 0.38625101801157424
	.quad	0x3fbb673ae8897fc0              # double 0.10704391648459843
	.quad	0x3fc17e564343f810              # double 0.1366679981655925
	.quad	0x3fa516ee53ccb1d0              # double 0.041190574387971801
	.quad	0x3fe7f4cfb62d7f85              # double 0.74863420087420762
	.quad	0x3feeff5cc5c9535e              # double 0.968672167111986
	.quad	0x3fe75f8af659d82c              # double 0.73041294207974294
	.quad	0x3feb930be9bbdf27              # double 0.86170001650950645
	.quad	0x3fc94bda3df26ca4              # double 0.19762733483080297
	.quad	0x3fc02a79472f357c              # double 0.12629619575310957
	.quad	0x3fecd0fdec83a94e              # double 0.90051170534324299
	.quad	0x3fec14211a79a75e              # double 0.87745719119014232
	.quad	0x3fd928b995165ade              # double 0.39311065253552424
	.quad	0x3fd307aed86e7172              # double 0.29734393249397961
	.quad	0x3fe1f18b1e3ab623              # double 0.56073528198402689
	.quad	0x3fe23cc9936a5442              # double 0.56992033760128202
	.quad	0x3fb0b63f45707940              # double 0.065280870869604435
	.quad	0x3fe6edb8a58adc6d              # double 0.71651871044640603
	.quad	0x3fde8d90ad4e2204              # double 0.47739045070969177
	.quad	0x3fe7b627cb2e538a              # double 0.74098577197820359
	.quad	0x3fc04ae12e0b28fc              # double 0.12728514431211824
	.quad	0x3fccd4da39bfe298              # double 0.22524574107935247
	.quad	0x3feffbdd6e75a825              # double 0.9994952351964953
	.quad	0x3fe881a9cf2a591a              # double 0.76582804166790486
	.quad	0x3fe8bd66a36de323              # double 0.77312023086333104
	.quad	0x3febea359f25eb4c              # double 0.87234002193086146
	.quad	0x3fd63f872ce43f08              # double 0.34762744316047689
	.quad	0x3feca155e43ab386              # double 0.89469427658114919
	.quad	0x3fb850b97dfa2ad8              # double 0.094981759315639791
	.quad	0x3fecd5f507fd7b5d              # double 0.90111781654909928
	.quad	0x3fd3b0b49b9aa87a              # double 0.30766024776188028
	.quad	0x3fc4e55a8d8ba5f0              # double 0.16324932013894466
	.quad	0x3fd2705d69c2f2b0              # double 0.28810820892594347
	.quad	0x3fe7ee13fd58d2e7              # double 0.74781226617650709
	.quad	0x3fe39359dd3d2a45              # double 0.61173718653419284
	.quad	0x3fef5b59399d49de              # double 0.97990094425977836
	.quad	0x3fea2a366702a557              # double 0.8176528942032445
	.quad	0x3fd485522a398a2c              # double 0.32063726542961279
	.quad	0x3fde4988bca87300              # double 0.47323816703446653
	.quad	0x3fb9674bea9c8590              # double 0.099232430246521952
	.quad	0x3fe36e9e1bdc45a5              # double 0.60725312654010521
	.quad	0x3fdc0a1a1ca46ff4              # double 0.4381165771208082
	.quad	0x3fced245b53351ec              # double 0.24079200122527256
	.quad	0x3fd8236965ae98ea              # double 0.37716135911831705
	.quad	0x3fb5d84cf0db4ec0              # double 0.085331734469316523
	.quad	0x3fe731a8016efeed              # double 0.72481155662532404
	.quad	0x3fe44e3b0a9c5442              # double 0.63454963753122962
	.quad	0x3fe4e3156800f33b              # double 0.65272016823983081
	.quad	0x3fbaa930871cbcf8              # double 0.10414412783278582
	.quad	0x3fe1ac8ad6fee9cc              # double 0.55231229773863211
	.quad	0x3fd3fe750c082cec              # double 0.31240583586686799
	.quad	0x3fe948366b558bb5              # double 0.79006501163200105
	.quad	0x3fd342e28609778a              # double 0.30095732774304251
	.quad	0x3fe9620dc0adc0bd              # double 0.79321944840014391
	.quad	0x3fbb1a66681b57b8              # double 0.10587158242864703
	.quad	0x3fe40da7005ac497              # double 0.62666654652834353
	.quad	0x3fd84e55c38f458c              # double 0.37978118989584497
	.quad	0x3fe3ba705b939c1d              # double 0.61650865446143011
	.quad	0x3fe9c7054b5807f5              # double 0.80554451671218763
	.quad	0x3fd99c9a92fda4d4              # double 0.40018333773202852
	.quad	0x3feec387e85f9d90              # double 0.96136851678322621
	.quad	0x3fe50818541bfbbb              # double 0.65723816325759488
	.quad	0x3feaed32924df446              # double 0.84145477843379335
	.quad	0x3fe20a2a8b80f153              # double 0.5637409901315017
	.quad	0x3fe93a3b249aad63              # double 0.78835827969798478
	.quad	0x3fd17832161c5eb0              # double 0.27296116027126072
	.quad	0x3fd2c20d05bde382              # double 0.29309392510145227
	.quad	0x3fc71c820b064898              # double 0.18055749452884551
	.quad	0x3fe8bafacbab6bf8              # double 0.77282466677877348
	.quad	0x3fc88db9573994cc              # double 0.19182507285146355
	.quad	0x3fc2d9aa870e9084              # double 0.14726764292311512
	.quad	0x3fe3776e1a9adf73              # double 0.60832886883052451
	.quad	0x3fdce888b252ba84              # double 0.4516927472531409
	.quad	0x3fe807c5790ffad6              # double 0.75094865460399762
	.quad	0x3fec5a191d379d27              # double 0.88599830347530861
	.quad	0x3fe0a35281f6f0ad              # double 0.5199368036624229
	.quad	0x3fab008deb17ceb0              # double 0.052738604495883634
	.quad	0x3fb4e5e6e2d012d0              # double 0.081633024572578039
	.quad	0x3fbca20addb09818              # double 0.11184757149075641
	.quad	0x3fc9b2d220a63e64              # double 0.20076967806061241
	.quad	0x3fed617ed4c5229f              # double 0.91815129810955287
	.quad	0x3fe10fd9ef528fd5              # double 0.53318497412373722
	.quad	0x3f72a16bc4c9bd00              # double 0.0045484742846462201
	.quad	0x3fe29384f22dbe7f              # double 0.58050772953534124
	.quad	0x3fe20aaa5838b5f6              # double 0.56380192976729293
	.quad	0x3fee20527e2e41ce              # double 0.94144558567682579
	.quad	0x3fe48f46ca9a5e92              # double 0.64248981066607969
	.quad	0x3f978a0cb084dce0              # double 0.022987554811348399
	.quad	0x3fe465b86eaf3b1e              # double 0.63741704576554858
	.quad	0x3fd529fadf44d71c              # double 0.33068725398639898
	.quad	0x3fee0bb338a084ac              # double 0.93892823276487069
	.quad	0x3f8c4c66974d5840              # double 0.013817597858786113
	.quad	0x3fd06df72e207df6              # double 0.25671176437933185
	.quad	0x3fee518b767517fa              # double 0.94745419632158634
	.quad	0x3fec09cd389a9653              # double 0.87619648986282994
	.quad	0x3fe10ca2a1fa5d34              # double 0.53279239307713633
	.quad	0x3fbf9b8c566ebee8              # double 0.12346722707911406
	.quad	0x3fe2a6dd13b824de              # double 0.58286908961704476
	.quad	0x3fe4979cddfeb1a8              # double 0.6435074172819002
	.quad	0x3fc78c2e2858ed38              # double 0.18396546335302744
	.quad	0x3feb4560d41196a3              # double 0.85221902293843177
	.quad	0x3fd0aba720995f8a              # double 0.2604768579817508
	.quad	0x3fe3e7941909423c              # double 0.62201886072040891
	.quad	0x3fe5b7ad48deb74d              # double 0.6786714957467922
	.quad	0x3fc0b6532df00760              # double 0.1305641149811505
	.quad	0x3fc7e85bbbee89ac              # double 0.18677851368290754
	.quad	0x3fea974ee2fec0e6              # double 0.83097023329721931
	.quad	0x3fd8d38acff00750              # double 0.38791151338965779
	.quad	0x3fcba818731bfd80              # double 0.2160673677499112
	.quad	0x3fe356615060febc              # double 0.60429444979668956
	.quad	0x3fd12bd020f2957e              # double 0.2682991334680408
	.quad	0x3fe04795fd173c95              # double 0.50873851234236389
	.quad	0x3fd4b82b7469c5ae              # double 0.32374082916711699
	.quad	0x3feb2a5d81a233eb              # double 0.84892154044211787
	.quad	0x3feba13ea3d395e0              # double 0.86343318936695467
	.quad	0x3fb41564e60d2640              # double 0.078451448597797402
	.quad	0x3fd6beaff0ac7774              # double 0.35538862708369057
	.quad	0x3fd77162e7074be4              # double 0.36629555283906101
	.quad	0x3fefa27414ba9f9e              # double 0.98858074234611926
	.quad	0x3fe71220dcf860ca              # double 0.72096293600318373
	.quad	0x3fee10c2ccc60b19              # double 0.93954601282925687
	.quad	0x3fe267ed6302d0b5              # double 0.57518643701634764
	.quad	0x3fee7e71d8e6a384              # double 0.95293514598334683
	.quad	0x3fcc1eaf2642547c              # double 0.2196864067852039
	.quad	0x3fd0c1a0ecaf7362              # double 0.26181815255931984
	.quad	0x3fd6d8125629fec2              # double 0.3569379655309427
	.quad	0x3fbe62c01f57a328              # double 0.11869431271737751
	.quad	0x3fc23eb530f937e0              # double 0.14253868953022586
	.quad	0x3fe537e11e8c3710              # double 0.66307121244764922
	.quad	0x3fea91b326d7b6f0              # double 0.83028562151386431
	.quad	0x3fed6586ea107820              # double 0.91864343372049361
	.quad	0x3fdd30d1389c30ac              # double 0.45610456970531277
	.quad	0x3fe026e501963c15              # double 0.50474787053997494
	.quad	0x3fd82a1975c456a0              # double 0.37756954670599363
	.quad	0x3fd76020c8f4e46e              # double 0.36524219154995918
	.quad	0x3fd534582344a000              # double 0.33131984180590734
	.quad	0x3fd27d160d11e1e4              # double 0.28888465191223944
	.quad	0x3fd1689b63fb8a54              # double 0.27200970424579407
	.quad	0x3fd2c5386790e6ac              # double 0.29328737367505187
	.quad	0x3fed0f9f6a2f125b              # double 0.90815706957853182
	.quad	0x3f9f16b0fca74e80              # double 0.030359998150585543
	.quad	0x3fe71a254e5a3427              # double 0.7219416170424936
	.quad	0x3fb2f3c1b9027540              # double 0.074031932514533771
	.quad	0x3fc386b5cb09a4c8              # double 0.15254852689694176
	.quad	0x3fc0eb0f6b2618b0              # double 0.13217346889377302
	.quad	0x3fe02f054772aa0b              # double 0.50573982195538869
	.quad	0x3fd27badb3b9c610              # double 0.28879873801551614
	.quad	0x3feeae3c9123d712              # double 0.95876911494881001
	.quad	0x3fdf9c17ce00cf7c              # double 0.49390215985771824
	.quad	0x3fe7e88c85dab983              # double 0.74713731902538461
	.quad	0x3fee0a6d6bf8902e              # double 0.93877287948681043
	.quad	0x3fb68b0a22736010              # double 0.088059075747310311
	.quad	0x3fdcd4f0b7aa4d4e              # double 0.45049684463557049
	.quad	0x3fe86e02dd4f67c4              # double 0.76342910027164423
	.quad	0x3fea19e5d035feb4              # double 0.8156613413447844
	.quad	0x3fe7a2899aab28df              # double 0.73859100540837719
	.quad	0x3fcfebf948f269e8              # double 0.24938884794103378
	.quad	0x3fec7552bb5cb713              # double 0.88932167619870695
	.quad	0x3fe1d6e32890b7ee              # double 0.55748136446868357
	.quad	0x3fef12214e345ca1              # double 0.97096314691852481
	.quad	0x3fd70f9a31bc20f0              # double 0.36032729012414588
	.quad	0x3fc24b2d822e37d4              # double 0.14291924339744233
	.quad	0x3fe8f9b6c02fd9e0              # double 0.780482650151324
	.quad	0x3f63fa065b854800              # double 0.0024385570688219005
	.quad	0x3fe121d623adc6a8              # double 0.53538042992132251
	.quad	0x3f9c0f20c40281e0              # double 0.027401458705414217
	.quad	0x3fe7a0d663c6cd31              # double 0.73838347900019674
	.quad	0x3fecd562c0546f08              # double 0.9010480648462087
	.quad	0x3fefb62d79e4a412              # double 0.99098848159076369
	.quad	0x3fe1814d20ff51cb              # double 0.5470338482360203
	.quad	0x3f8ee8fa1c636580              # double 0.015092805854169056
	.quad	0x3fd5dee4d60534fc              # double 0.34172936344550897
	.quad	0x3fc7d9b0a8ea08c4              # double 0.18633087394488801
	.quad	0x3fe5d253d6e91d8f              # double 0.68192474341133102
	.quad	0x3fc1a77d8f1d9ea8              # double 0.13792390335151095
	.quad	0x3fdb53848d2fa8d0              # double 0.4269725207110584
	.quad	0x3fdc7825c5b72d92              # double 0.44483322437437167
	.quad	0x3fd02950a0276696              # double 0.25252166404752907
	.quad	0x3fe7af8641dd30a8              # double 0.74017632354800345
	.quad	0x3fd7a6df5665ad74              # double 0.36956008374428184
	.quad	0x3fef67adc66a810f              # double 0.98140610459452826
	.quad	0x3fe783b765d13ddc              # double 0.73482866178704453
	.quad	0x3fbd59c302a8d1a8              # double 0.11465090575149495
	.quad	0x3fe5f0fa99b1ea3d              # double 0.68566637056876056
	.quad	0x3fe313070fe4e238              # double 0.59607270340263252
	.quad	0x3fd3a9837187a6f8              # double 0.30722127997306314
	.quad	0x3fcb2cd8c19bd24c              # double 0.21230611280010903
	.quad	0x3fa1eee7d6079740              # double 0.035025830151239834
	.quad	0x3fe647ba5c09c6bd              # double 0.69625585533341161
	.quad	0x3fc8fd897ec148e0              # double 0.19523733796319842
	.quad	0x3fd4d73639f7b828              # double 0.32563548718360602
	.quad	0x3fd3548194269dae              # double 0.3020328470979291
	.quad	0x3fe480bb65d08def              # double 0.64071435819317724
	.quad	0x3f9522dc50e579a0              # double 0.020640795171283366
	.quad	0x3febe0a480a59cf2              # double 0.87117219091751807
	.quad	0x3fdb3c6a57d5b5ba              # double 0.42556246354692073
	.quad	0x3fce596c44b2b258              # double 0.23710397104641134
	.quad	0x3fb012a3778d78f8              # double 0.062784401595738504
	.quad	0x3fc75894aaa28440              # double 0.18239076930788833
	.quad	0x3fe2bceecaa94b00              # double 0.58556308347974095
	.quad	0x3fd2bc6084e4f878              # double 0.29274762132616372
	.quad	0x3fbb3cc9da147088              # double 0.10639630865301986
	.quad	0x3fe77e288b658c81              # double 0.73415019250786895
	.quad	0x3fb6ad63ca34e500              # double 0.088583218447542578
	.quad	0x3fc3c030bbdf8e28              # double 0.15430268453120388
	.quad	0x3fea0f1ca4580d68              # double 0.81434471224239946
	.quad	0x3fedcbb9f60addca              # double 0.93111894660153749
	.quad	0x3fd26043558f8468              # double 0.28712542872933122
	.quad	0x3fc5be5dc175647c              # double 0.16987201639384242
	.quad	0x3fdb113257a436da              # double 0.42292460020767708
	.quad	0x3fe2126e718ad94e              # double 0.56474992920156253
	.quad	0x3febfc6c86d2f6df              # double 0.87456346829250353
	.quad	0x3fe7f2a2b87a89c2              # double 0.74836860686291851
	.quad	0x3fe826cb9cc8492e              # double 0.75473576184802993
	.quad	0x3fdcb46814f0edca              # double 0.44851114316017215
	.quad	0x3fd5349a3905b7c6              # double 0.33133559769236987
	.quad	0x3fcf50c6190fa178              # double 0.24465252135929538
	.quad	0x3fe17cea2570bc25              # double 0.54649836838314469
	.quad	0x3fea76476ef4edd3              # double 0.82693835898629187
	.quad	0x3fe0e198dd6bed93              # double 0.52753871199040459
	.quad	0x3fe8d4f0efd63474              # double 0.77599379389870515
	.quad	0x3fe9936e0937c43b              # double 0.79924680519446356
	.quad	0x3fe09ee0048007fa              # double 0.51939392928056738
	.quad	0x3fe7fa6bfdcda333              # double 0.7493190724463602
	.quad	0x3fe4fe87e02a7770              # double 0.65607064993285569
	.quad	0x3fbaaddff320acf0              # double 0.10421561895116205
	.quad	0x3fe6354f17624d98              # double 0.69400744025408567
	.quad	0x3fe83dacf6b86fe8              # double 0.75752876460637442
	.quad	0x3fcdbb63ccff1300              # double 0.23228118428792044
	.quad	0x3fe012093e3de248              # double 0.50220167309368779
	.quad	0x3fd04a795ad324b8              # double 0.25454553479773834
	.quad	0x3fee1d49a0a31194              # double 0.94107514738475339
	.quad	0x3fec82de3a454ea5              # double 0.89097510701181604
	.quad	0x3fe3a53580396d4d              # double 0.61391711276829997
	.quad	0x3feafd47a8c9bee4              # double 0.84341795889301041
	.quad	0x3fe202d172abf2e0              # double 0.56284401318370314
	.quad	0x3fefad2e1d6672fa              # double 0.98989015333390218
	.quad	0x3fe9cd65efcc02d2              # double 0.80632302127204469
	.quad	0x3fd72ae8509e68dc              # double 0.36199386475494832
	.quad	0x3fc280a3b5cf3de4              # double 0.14455076577586035
	.quad	0x3fe23984f18c71d7              # double 0.56952140023673337
	.quad	0x3fe7eba6dbb4a168              # double 0.74751608763930921
	.quad	0x3fc3d8f17d34e418              # double 0.1550580846176508
	.quad	0x3fe58c145e6e5bd2              # double 0.67334955638477312
	.quad	0x3fcfa8c4588600dc              # double 0.24733785936769592
	.quad	0x3fed2c35378b06b2              # double 0.91164646957641637
	.quad	0x3fc898e59e46a4b0              # double 0.19216604450528996
	.quad	0x3fec38e41191384f              # double 0.88194468909365209
	.quad	0x3fe53600e9a55ce4              # double 0.66284223207449289
	.quad	0x3fdd8703fdfd1fc8              # double 0.46136569789495896
	.quad	0x3fd6f4fdaec59a0c              # double 0.35870306079451164
	.quad	0x3fe157a2d3064f9d              # double 0.54194775787117389
	.quad	0x3fe4b3727041d74d              # double 0.64690515446884833
	.quad	0x3fea66cb6d9e92f6              # double 0.82504817400021468
	.quad	0x3fe7f88af3c53a69              # double 0.74908969508562706
	.quad	0x3fc78d3a4a810924              # double 0.18399742734806879
	.quad	0x3faed65e2ceb3390              # double 0.060229247077223325
	.quad	0x3fe6b481ce48dcf9              # double 0.70953455247845831
	.quad	0x3fe58f4b674c803f              # double 0.67374200988343336
	.quad	0x3fe6eba9eb1f9a87              # double 0.71626754686879301
	.quad	0x3fd2a39d3043e6a4              # double 0.29123620713617471
	.quad	0x3feda8180dc51076              # double 0.92676928224001531
	.quad	0x3fe981a00610875e              # double 0.79707337555394608
	.quad	0x3f91f3239e99ddc0              # double 0.01752906470798421
	.quad	0x3fe51e5f133da946              # double 0.65995744474393159
	.quad	0x3fc03f373c2a9ae4              # double 0.12692919194997565
	.quad	0x3fc593cff029ced0              # double 0.16857337214206902
	.quad	0x3fe4ea0ae86d745d              # double 0.65356965442664328
	.quad	0x3fde5468303cf4dc              # double 0.47390179358246853
	.quad	0x3fe73a2682e8e368              # double 0.72584844177536656
	.quad	0x3fde0e84121cb256              # double 0.46963598030814546
	.quad	0x3fb8128af9067168              # double 0.094032941624794142
	.quad	0x3fd9e33e120a2a98              # double 0.40449477922144572
	.quad	0x3fdbf3a097569bb2              # double 0.43674483088619376
	.quad	0x3fdef8c36bd40c14              # double 0.48393331079586344
	.quad	0x3fedb204c557f0e9              # double 0.9279807905545826
	.quad	0x3fd4b2fd60b9fba0              # double 0.32342466779658174
	.quad	0x3fe6e50f51350b96              # double 0.71546140538008518
	.quad	0x3fb46ac0e0062448              # double 0.079753927892071919
	.quad	0x3fe70a75b620db76              # double 0.72002683231299502
	.quad	0x3fddf685532b8f0a              # double 0.46817143556676
	.quad	0x3fd67b28281dd0e0              # double 0.35126689832328672
	.quad	0x3fe0574e6a9ed34d              # double 0.51065750908183249
	.quad	0x3fb79eb07d25f028              # double 0.092265158227690436
	.quad	0x3febcf1972a298a6              # double 0.86903068914104575
	.quad	0x3fbea644a61ca0b0              # double 0.1197245507761433
	.quad	0x3fa8c2e6b567e3b0              # double 0.048361978191628352
	.quad	0x3fb9ee1fabf71be0              # double 0.10128972957964733
	.quad	0x3fb871e990f4e770              # double 0.09548816479664679
	.quad	0x3fdfba36edd19400              # double 0.49574063515166245
	.quad	0x3fe8882f250479db              # double 0.76662404279687324
	.quad	0x3fcda2cd0c82b014              # double 0.23153079138626309
	.quad	0x3feb69b93b4e29e9              # double 0.85665570815154723
	.quad	0x3fe50df2159dc721              # double 0.65795234891831822
	.quad	0x3f7fc4838dd3f780              # double 0.0077557696179136881
	.quad	0x3fe090a1d36bc74d              # double 0.51765528958478912
	.quad	0x3fcd9afbabff4ee8              # double 0.23129220865541034
	.quad	0x3fe11a37a2a3d2d9              # double 0.53445035710918909
	.quad	0x3fec378b1e829477              # double 0.88178020438193883
	.quad	0x3fd706ded03e6e90              # double 0.35979433380428194
	.quad	0x3fd7adb459fa08f2              # double 0.36997708117281924
	.quad	0x3fc71fe505372270              # double 0.18066084627777768
	.quad	0x3fe4b51a2f4caf18              # double 0.64710721243088454
	.quad	0x3fc510110a86db78              # double 0.16455281270983924
	.quad	0x3fc53375e08ee5d4              # double 0.16563294853931032
	.quad	0x3fc011ebaf87ce30              # double 0.12554689474892333
	.quad	0x3fc4593472128348              # double 0.15897231645524301
	.quad	0x3fdc9691e0864b0a              # double 0.44669005323628197
	.quad	0x3fe3fe71858af090              # double 0.62480999071660115
	.quad	0x3fda39152a28854a              # double 0.40973404995937257
	.quad	0x3f9c60ccb342ef40              # double 0.027713011208774008
	.quad	0x3fe99ae691b00940              # double 0.8001587720357648
	.quad	0x3faefb6ddf050aa0              # double 0.060512002443393387
	.quad	0x3fec982c061fdb2a              # double 0.89357567974261554
	.quad	0x3fef7e80872c0fdf              # double 0.98419214630893836
	.quad	0x3fe6757ff01ce68d              # double 0.70184323212670707
	.quad	0x3fea194afc520979              # double 0.81558751374568239
	.quad	0x3fd26f82acbd618a              # double 0.28805605763548014
	.quad	0x3fe09d405d5ff4e4              # double 0.51919573056480006
	.quad	0x3fd4d4988ee036fa              # double 0.32547582581251755
	.quad	0x3fd1ab9753d3dc60              # double 0.27609809099471327
	.quad	0x3fd9d691296345a6              # double 0.40372113267684495
	.quad	0x3fd385b04859c2a4              # double 0.30503470483294337
	.quad	0x3fd2c437317f1d54              # double 0.29322604974409683
	.quad	0x3fed3308221377be              # double 0.91247946410634717
	.quad	0x3fd32574b212eb9a              # double 0.29916112318067578
	.quad	0x3fce41ec320b9bc0              # double 0.2363867992746389
	.quad	0x3fea42bda77843ba              # double 0.82064707478468013
	.quad	0x3fe8088add78de1f              # double 0.75104277855183799
	.quad	0x3fe2705e00afedfa              # double 0.57621669897292738
	.quad	0x3fc672f00b37b9b0              # double 0.17538261935938015
	.quad	0x3fe453284d8c74fe              # double 0.6351510538694638
	.quad	0x3fd0486e749711f6              # double 0.25442086587670987
	.quad	0x3fd5d27160b27068              # double 0.34096941416806326
	.quad	0x3fbf75c51c2b89a8              # double 0.1228907769941886
	.quad	0x3fd37a735fc6b50e              # double 0.30434879639763401
	.quad	0x3f9b3e0291aafca0              # double 0.026603737011779871
	.quad	0x3fdd1f33339f3fdc              # double 0.45502929726808161
	.quad	0x3fe2ade3386539e2              # double 0.58372651114205731
	.quad	0x3fe80c403fc58e7a              # double 0.75149548011218248
	.quad	0x3fd01b2cefefe0a4              # double 0.25165866309499507
	.quad	0x3fee1d8c256944ee              # double 0.94110686594845361
	.quad	0x3fda2a402d269a1a              # double 0.40882877740151147
	.quad	0x3fe464071dbcbb62              # double 0.63721042450002252
	.quad	0x3fef4aede23ba74f              # double 0.97789663492333456
	.quad	0x3fe0d5a52c37673d              # double 0.52607973705310196
	.quad	0x3fd22a40f1e3139c              # double 0.28382896062640284
	.quad	0x3fd0e8e7a5d5eb42              # double 0.26421538538822997
	.quad	0x3fdcc290b28eee60              # double 0.44937531888328941
	.quad	0x3fb771206c997238              # double 0.091569925797963303
	.quad	0x3fe248816fd5ab3c              # double 0.57135078280166551
	.quad	0x3fd3a5ceb6998646              # double 0.3069950850677724
	.quad	0x3fb1f7493e78f408              # double 0.070179536583012347
	.quad	0x3fdd2cd76587ccc2              # double 0.45586190142712379
	.quad	0x3fd3a776b06c1ae4              # double 0.30709616879214097
	.quad	0x3feadb42b392810c              # double 0.83926520416938066
	.quad	0x3fe4f1c24997b07d              # double 0.654511588797973
	.quad	0x3fd3a6dfea3d755a              # double 0.30706022143370648
	.quad	0x3fe0ef6379488ccb              # double 0.52922223747409569
	.quad	0x3fed931ebbd081b3              # double 0.92420899088397446
	.quad	0x3fd213f24d7cf402              # double 0.28246743743130776
	.quad	0x3fdccc025c545346              # double 0.44995173470060867
	.quad	0x3fbeca8707e4b588              # double 0.1202778238554939
	.quad	0x3fc41524693e87c4              # double 0.15689520968322601
	.quad	0x3fe1d3aeb37677b4              # double 0.55709013987847422
	.quad	0x3fcc0d557a4eeab4              # double 0.21915691825946271
	.quad	0x3fe2d2ff2ba77824              # double 0.58825644041258274
	.quad	0x3fb037d1c9ba0998              # double 0.063351737737355029
	.quad	0x3fed76336ecfa061              # double 0.92067882197171624
	.quad	0x3fd2290a354c7c56              # double 0.28375487523039078
	.quad	0x3fea1461f832fa63              # double 0.81498812176125701
	.quad	0x3fe2b260bcce4a65              # double 0.58427464367043724
	.quad	0x3fdb9db955c97982              # double 0.4315017068637631
	.quad	0x3feb958eb0411f1c              # double 0.86200651573833253
	.quad	0x3fe1e23cc66b8a97              # double 0.55886687044069816
	.quad	0x3fef1fd9b1d471e9              # double 0.97263798458476202
	.quad	0x3fdabb456e2d9ec8              # double 0.41768012771215668
	.quad	0x3fc2f0d5dd912e34              # double 0.14797471350390057
	.quad	0x3fee52c302ea5d6a              # double 0.94760275430136898
	.quad	0x3fddb2ec4d094918              # double 0.46404559634278675
	.quad	0x3fd62c9213f1d71e              # double 0.34647037456248764
	.quad	0x3fe6d9329122333b              # double 0.71401337000279541
	.quad	0x3fbb35db4b42cbf8              # double 0.10629053676056788
	.quad	0x3fc08cd76cb7d0fc              # double 0.12929814156053243
	.quad	0x3fd94e7185db895a              # double 0.39541280815151014
	.quad	0x3fd79c20055053be              # double 0.36890411871837248
	.quad	0x3fe9d1453dd185f8              # double 0.80679571222225288
	.quad	0x3fe43950679f76f2              # double 0.63199634779786451
	.quad	0x3f75b69221cf3b00              # double 0.0053010662349624038
	.quad	0x3fcde896e1cee6c4              # double 0.23366056466857377
	.quad	0x3fdd0c616b26a4f6              # double 0.45388064826927577
	.quad	0x3fecc63eb1121bec              # double 0.89919981559876083
	.quad	0x3fd214745d22a3a0              # double 0.28249844641919175
	.quad	0x3fd18678a36f3806              # double 0.27383247337718364
	.quad	0x3fba27a9585171c8              # double 0.10216768652157449
	.quad	0x3fd14a198ed5ef58              # double 0.2701476950530739
	.quad	0x3feffd0a51a43d80              # double 0.9996387095033441
	.quad	0x3fb7bbcade717378              # double 0.092709235484518149
	.quad	0x3fec730c031f8c1e              # double 0.88904381380087094
	.quad	0x3fcd32cdd77f0f54              # double 0.22811291715890525
	.quad	0x3febe82b7a986be8              # double 0.87209104484952338
	.quad	0x3fe6df22b40c1930              # double 0.71473822751503313
	.quad	0x3fcf5b623c599ee0              # double 0.24497631022244715
	.quad	0x3fcab0d0796d64f4              # double 0.20852094582622949
	.quad	0x3fba8fd3f78a5938              # double 0.10375714105098133
	.quad	0x3fdfb4a67296559a              # double 0.49540101232681766
	.quad	0x3fc7d7fb15149510              # double 0.18627871064487822
	.quad	0x3fe461b5ad119400              # double 0.63692745020364328
	.quad	0x3fe2b15665785f7f              # double 0.58414764231109462
	.quad	0x3fb72cb7df546408              # double 0.090526096366730369
	.quad	0x3fec4bd2fa02ac80              # double 0.88425587492146462
	.quad	0x3fb26d0d582cb888              # double 0.071976503397964575
	.quad	0x3fe0f33394fecc21              # double 0.52968768215794537
	.quad	0x3fd8a15f107e51b0              # double 0.38484932528197202
	.quad	0x3fd12b7ce67fa0fe              # double 0.2682792902910619
	.quad	0x3fdc9906296b8506              # double 0.44683984799310428
	.quad	0x3fd427e69db41ad4              # double 0.31493535423980501
	.quad	0x3fef7c6f22468fb0              # double 0.9839397115178965
	.quad	0x3fc15e5a74abe5c0              # double 0.13569193550919856
	.quad	0x3fbaa708b65a7d28              # double 0.10411123706807202
	.quad	0x3febf00093c66764              # double 0.87304715025241508
	.quad	0x3fd3e9ccf11cf59c              # double 0.31114505335048093
	.quad	0x3fcdbfbf700c0714              # double 0.23241417857212154
	.quad	0x3fe89418dd611c95              # double 0.76807826269295509
	.quad	0x3fe9b2e86bbf1501              # double 0.80308934253903896
	.quad	0x3fb91425e0487690              # double 0.097963683373075705
	.quad	0x3fbfad011ee6af18              # double 0.12373358730718242
	.quad	0x3fe781745d8c88be              # double 0.73455255767137095
	.quad	0x3fe310226a483891              # double 0.59571953542924139
	.quad	0x3feb957d6f4f4783              # double 0.86199828853772009
	.quad	0x3fbd7a834721c848              # double 0.11515064703579114
	.quad	0x3fecb64a66f4c8a3              # double 0.89725227459554835
	.quad	0x3fd6f6dcb9897566              # double 0.35881727331965008
	.quad	0x3fe558282064853d              # double 0.66701132132235552
	.quad	0x3fc78333ca151c80              # double 0.18369147651012341
	.quad	0x3fc7cde97c234f28              # double 0.18597143708631703
	.quad	0x3fc18e1dd2f1c5e4              # double 0.13714955139179985
	.quad	0x3fe9e21f5a5da173              # double 0.80885284089622045
	.quad	0x3fdd5b3973fd58be              # double 0.45869289710152461
	.quad	0x3fd72c53c9a5ca76              # double 0.36208052341604657
	.quad	0x3fee2e0976d5901e              # double 0.94311974725542647
	.quad	0x3fe0cb168ef8ab7c              # double 0.52479103015990303
	.quad	0x3fe9cc8575be4f0c              # double 0.80621598240620206
	.quad	0x3fc91d6c35f23bd0              # double 0.19621040948956514
	.quad	0x3fe82c44a8288768              # double 0.75540383189602966
	.quad	0x3fc15db98e0c9cb8              # double 0.13567275463103612
	.quad	0x3fc628484fecfc98              # double 0.17310432341216564
	.quad	0x3fd66433e98ccffc              # double 0.34986589248296673
	.quad	0x3fee6949795050e5              # double 0.95035241788948766
	.quad	0x3fed0ccfe3a6dd89              # double 0.90781397307630229
	.quad	0x3fecce3a994ba096              # double 0.90017442646514456
	.quad	0x3fe217c901c32a8e              # double 0.56540346473896519
	.quad	0x3fc7cd52b7f94684              # double 0.18595346434681315
	.quad	0x3f9fd3f3e83ff2e0              # double 0.03108197312393457
	.quad	0x3fc2c69b3c8b93f8              # double 0.14668598610219852
	.quad	0x3fe19587c1eaf88f              # double 0.54950321077900977
	.quad	0x3fb0b2dc07dbe060              # double 0.065229179304766571
	.quad	0x3fee3fdf104de4ba              # double 0.94529679474285122
	.quad	0x3fd69dbc04323caa              # double 0.35337734613217242
	.quad	0x3fe79de5999ff017              # double 0.73802452092013737
	.quad	0x3fcf12fab9cb520c              # double 0.24276670524581367
	.quad	0x3fc8160451c61724              # double 0.1881719016347968
	.quad	0x3fd71349537e3ec0              # double 0.36055215028407517
	.quad	0x3fd6927c71789e7c              # double 0.35269080239456918
	.quad	0x3fa3243dadde8e90              # double 0.037385871385848479
	.quad	0x3fee0bd65ae5fb8a              # double 0.93894498590076236
	.quad	0x3fe4d24e53011012              # double 0.65067211353061993
	.quad	0x3fec7324e5301e35              # double 0.88905567897103899
	.quad	0x3fe20c14b53ff436              # double 0.5639747180972623
	.quad	0x3feee07e4a369534              # double 0.96490396971481695
	.quad	0x3fe0cd25f0da5bb8              # double 0.52504250566095489
	.quad	0x3fe3efb0003e0dce              # double 0.62300872847884547
	.quad	0x3fe9e07790b13f83              # double 0.80865076313237727
	.quad	0x3fe27e17def4daea              # double 0.57789224191841737
	.quad	0x3fd09418ccf26950              # double 0.25903911604259111
	.quad	0x3fceefcdf4c6a7f0              # double 0.24169325305894018
	.quad	0x3fd0e21386336750              # double 0.26379860024973301
	.quad	0x3fb9456b53f481f0              # double 0.098715503689625228
	.quad	0x3fde341e1c71fc40              # double 0.47193100717408143
	.quad	0x3fed42bff8b5fdd6              # double 0.91439817978237659
	.quad	0x3fd24c677037aea4              # double 0.28591333349934644
	.quad	0x3fef0423c3cfeebb              # double 0.96925533527924956
	.quad	0x3fd81e6f74f07850              # double 0.37685762805802359
	.quad	0x3fdd43e2ec4c8422              # double 0.45726845813811867
	.quad	0x3fccf85b3d4b1fe8              # double 0.22632923596233856
	.quad	0x3fcc744a4f39a3a4              # double 0.22229889744201359
	.quad	0x3fd9914a3f7816a6              # double 0.39949279974130503
	.quad	0x3fdcf84ca45e3ff4              # double 0.45265499164179279
	.quad	0x3fe20a180e7771d5              # double 0.56373217416290322
	.quad	0x3fe945e83ed36e32              # double 0.78978359480556137
	.quad	0x3fe3a4b59ad327dc              # double 0.61385612715934768
	.quad	0x3fe65a35cfeadd7c              # double 0.6985119877707997
	.quad	0x3fe8f3e4fdb381c2              # double 0.77977227736487742
	.quad	0x3fdb97975cf9d57e              # double 0.43112739638976183
	.quad	0x3fe3d6ad7a62a427              # double 0.61995576766378668
	.quad	0x3fe371cfad70bbc1              # double 0.6076429736621024
	.quad	0x3feb45b95bc05965              # double 0.85226123733700077
	.quad	0x3fd22836f8ed8f90              # double 0.28370451268551111
	.quad	0x3fdba0a2897d728c              # double 0.43167937685738234
	.quad	0x3feed0440706fbb5              # double 0.96292306301608354
	.quad	0x3fc6ca89a3a902fc              # double 0.1780559586641387
	.quad	0x3fcfddce51649f6c              # double 0.24895647978086843
	.quad	0x3fcbfc76e5466a8c              # double 0.2186421031481881
	.quad	0x3fe28b57351b2622              # double 0.57950935718799124
	.quad	0x3fe3cf804fca827b              # double 0.61907973846616871
	.quad	0x3fc84a6312438e24              # double 0.18977011100570096
	.quad	0x3feecb78ff636b55              # double 0.96233796959436779
	.quad	0x3fedec6225979a54              # double 0.93510539381243029
	.quad	0x3fdf972699642b9e              # double 0.49360051135652749
	.quad	0x3fdb74369220b00a              # double 0.42896808882028437
	.quad	0x3fd37ce1ba285f70              # double 0.30449717692817213
	.quad	0x3fe8bec2f81be2e4              # double 0.77328632792258789
	.quad	0x3fccfc3c683d4b70              # double 0.2264476307851413
	.quad	0x3fe4587e119d34f1              # double 0.63580230179073116
	.quad	0x3fe3076bdd45f1db              # double 0.59465592591692074
	.quad	0x3fdbd0ff5732c710              # double 0.43463119044746268
	.quad	0x3fd7ec42a435f3ea              # double 0.37379518543440204
	.quad	0x3fd12ed02cfa568a              # double 0.2684822501408709
	.quad	0x3fdb34175bd84bf2              # double 0.4250543972895563
	.quad	0x3fded2a657bd58c6              # double 0.48160704201053439
	.quad	0x3fe4d5b203742fbe              # double 0.6510858600099636
	.quad	0x3fd59525c835a40e              # double 0.33722824622833592
	.quad	0x3feb3877de11c13f              # double 0.85064309475823296
	.quad	0x3fd11803e4520e68              # double 0.2670907716458033
	.quad	0x3fe6c56bf5fc6033              # double 0.71159933132276476
	.quad	0x3feaeeeb69ebe993              # double 0.84166498840140702
	.quad	0x3fe2640526f97c93              # double 0.57470948803156074
	.quad	0x3fd9e1ac40899496              # double 0.40439897825701487
	.quad	0x3fdace53c5ddc0b0              # double 0.4188432152068442
	.quad	0x3fee26da242bc7b8              # double 0.94224268974925617
	.quad	0x3fe11e32aeef6e9a              # double 0.53493627707526348
	.quad	0x3fefe3cece51ad59              # double 0.99655857369126998
	.quad	0x3fd37d8a7dd7a168              # double 0.30453741349494701
	.quad	0x3fd223fb5b333ef0              # double 0.2834461584688901
	.quad	0x3fe221d9e1842152              # double 0.56663221403236208
	.quad	0x3fe4b8045e92d1ad              # double 0.647463021005526
	.quad	0x3fd1a22ae1ace336              # double 0.27552291906936277
	.quad	0x3fe0e6c37677c9b5              # double 0.52816937578454903
	.quad	0x3fc669121b80826c              # double 0.17508150427694902
	.quad	0x3fd3d43ed6b13fb6              # double 0.3098294350247629
	.quad	0x3fe7d613dd618378              # double 0.74488251913508829
	.quad	0x3fd132c0cffd3248              # double 0.26872272788458362
	.quad	0x3fe30c2073ca7506              # double 0.59523031821632411
	.quad	0x3fed35121965d0cc              # double 0.91272835693828247
	.quad	0x3fe71043320153fc              # double 0.72073516623152001
	.quad	0x3fbc386dce188e90              # double 0.11023603707922747
	.quad	0x3fef00fb089a4e91              # double 0.96886970215060064
	.quad	0x3fcb606c61a07704              # double 0.21388010756430031
	.quad	0x3fec60e99eeb3a44              # double 0.88683014906730095
	.quad	0x3fdda0a9f27f4f1c              # double 0.46293114358307874
	.quad	0x3fbdbc89d9d36e98              # double 0.11615811889663019
	.quad	0x3fd5f8f43e9ffd80              # double 0.34331995120734149
	.quad	0x3fee0d4dead546f5              # double 0.93912406793444225
	.quad	0x3fe19f5fba6f0f15              # double 0.55070482647758701
	.quad	0x3fe850152407b5f0              # double 0.75977570569165032
	.quad	0x3feda336495cdd1e              # double 0.92617334679281149
	.quad	0x3fe178b623bf4d7d              # double 0.54598528844728345
	.quad	0x3fde9fd681141534              # double 0.47850573163335075
	.quad	0x3fe16242e772fb70              # double 0.54324479298507633
	.quad	0x3fd6133c209edf00              # double 0.34492400346378815
	.quad	0x3f9dfb98d76d73e0              # double 0.029280079029707085
	.quad	0x3fc1ea82966c05f4              # double 0.13996918053457785
	.quad	0x3feabe9d7189c738              # double 0.83576843429020808
	.quad	0x3fdef0f816c74e5c              # double 0.48345758652178517
	.quad	0x3fdcbdecdd72274e              # double 0.4490921175534951
	.quad	0x3fe88e38a2d18a9e              # double 0.76736099052898843
	.quad	0x3fd6f2c6aeeb8bac              # double 0.35856787759819997
	.quad	0x3fe759ec667c51ab              # double 0.72972698227618105
	.quad	0x3fe47794b9e9fd4c              # double 0.63959728537876392
	.quad	0x3fd5665a55be0888              # double 0.33437212346337519
	.quad	0x3fef62a8e3ccf5b3              # double 0.98079342357930554
	.quad	0x3fb9b4b07d1dbe60              # double 0.10041335157961262
	.quad	0x3fdb6fc4112381d2              # double 0.42869664834691179
	.quad	0x3fe1f4b7d72fa3a0              # double 0.56112281826527877
	.quad	0x3fed874758c21b00              # double 0.92276351295080872
	.quad	0x3fdbbe973d19957e              # double 0.43350773779669527
	.quad	0x3fca181b8723c000              # double 0.20386070345512053
	.quad	0x3fed325e9cf7a243              # double 0.91239863069228766
	.quad	0x3fe3274567f21239              # double 0.59854383756516605
	.quad	0x3fdbc8b1d7659a70              # double 0.43412443194248507
	.quad	0x3fa2e084367f5220              # double 0.036869174625881351
	.quad	0x3fe36959637d95c4              # double 0.60661000663520115
	.quad	0x3fe826fa4d697d4b              # double 0.75475802535576386
	.quad	0x3fdd7309d3338edc              # double 0.46014638543259223
	.quad	0x3fe0977ccf2c4246              # double 0.51849213088468882
	.quad	0x3fe393c2bc38bdc2              # double 0.61178719293632633
	.quad	0x3fe28604b5d79034              # double 0.57885966793083421
	.quad	0x3fb6403fc8323fe0              # double 0.086917864204451245
	.quad	0x3feee45a0a8f60db              # double 0.96537496626390451
	.quad	0x3fe741400c2eeecb              # double 0.72671511058384775
	.quad	0x3fe02f8e5871ecdb              # double 0.50580518030565302
	.quad	0x3fe62f22ebfd5290              # double 0.69325395671565282
	.quad	0x3fe18e70061aea38              # double 0.54863740150842144
	.quad	0x3fdcc45552f8b0ca              # double 0.44948323347740582
	.quad	0x3fecd469bcceb31b              # double 0.90092932583283714
	.quad	0x3fed53e29ceaf497              # double 0.91648989341742293
	.quad	0x3fe7bfa94b330705              # double 0.74214615523689587
	.quad	0x3fc866b1c024ec4c              # double 0.19063398248713026
	.quad	0x3fe0742b6791dc3e              # double 0.51418085316152662
	.quad	0x3fed3873b4a3a1e7              # double 0.91314111023990285
	.quad	0x3fd7e22d038b9c26              # double 0.37317967745042535
	.quad	0x3fc9452d9f462754              # double 0.19742365147640817
	.quad	0x3fd218228ae6e4fc              # double 0.28272307934419394
	.quad	0x3fe640682067e0cf              # double 0.69536215142491098
	.quad	0x3feb557cd95eaada              # double 0.85418550925291048
	.quad	0x3fde11fff273b1a4              # double 0.46984862019487594
	.quad	0x3fdf0b5c296d0a3a              # double 0.48506835980893792
	.quad	0x3fef99983b4aa844              # double 0.98749934749981393
	.quad	0x3fe5af43a94c38e1              # double 0.6776445681187192
	.quad	0x3fd5dce8632616a2              # double 0.34160813982485128
	.quad	0x3fc5d52cd08a5bd8              # double 0.17056808645858612
	.quad	0x3feb5b34c0da386a              # double 0.85488355318535736
	.quad	0x3fd4dceafe322c60              # double 0.32598376106097326
	.quad	0x3fd3eeaa8d01334e              # double 0.31144202966679735
	.quad	0x3fe2521c3b257d87              # double 0.57252322723427163
	.quad	0x3fd62ca793e5285a              # double 0.34647550051579901
	.quad	0x3f9134ff20977340              # double 0.016803728450997868
	.quad	0x3fec296f7c276408              # double 0.88005804299166446
	.quad	0x3fdd50a574850394              # double 0.45804726008287244
	.quad	0x3fc9cdec626af834              # double 0.20159678273734161
	.quad	0x3fe6d65e92cea340              # double 0.71366814301754999
	.quad	0x3fdd77875b6facd4              # double 0.46042045525855468
	.quad	0x3fd59c4cb77070a2              # double 0.33766477502809711
	.quad	0x3fdec7ae91b18972              # double 0.48093761661416246
	.quad	0x3fccd72b495c4efc              # double 0.2253164394575079
	.quad	0x3fd6dcdcd1cd7c06              # double 0.35723038185636857
	.quad	0x3fedc5dfeee882cc              # double 0.93040463125006445
	.quad	0x3fcf4c7d583b7184              # double 0.24452177818501408
	.quad	0x3fbd7cc9957c8010              # double 0.11518535518234807
	.quad	0x3fcf55ed9c6b6bd8              # double 0.2448098195808075
	.quad	0x3fb0ad2b7fb64db0              # double 0.065142363242833623
	.quad	0x3fec5cd1ea0d95e1              # double 0.88633056367387664
	.quad	0x3fe7cc6b7e81e774              # double 0.74370360096439336
	.quad	0x3fe7e3df8b09ebb2              # double 0.74656655460363752
	.quad	0x3fe781261d7df088              # double 0.73451524505755206
	.quad	0x3fc15c9641e0ccbc              # double 0.13563802925782464
	.quad	0x3fd581251d87cbdc              # double 0.33600738414605558
	.quad	0x3fba0f20650aa6d0              # double 0.10179331271015291
	.quad	0x3fd8d97430d1ff62              # double 0.38827233092887614
	.quad	0x3fd9755ab2ed070e              # double 0.39778773759108865
	.quad	0x3fe3751f22714427              # double 0.60804707266845959
	.quad	0x3fce46713547df94              # double 0.23652472592925433
	.quad	0x3fd1246184e4bdd4              # double 0.26784551599390949
	.quad	0x3fe36fc01d50c85c              # double 0.60739141202635549
	.quad	0x3fe2b4c984736a59              # double 0.58456874722771623
	.quad	0x3fd90967f92658be              # double 0.39119910555872284
	.quad	0x3fd95791096260f2              # double 0.3959696380275225
	.quad	0x3fe1a020ca9f5599              # double 0.55079688620269274
	.quad	0x3fabcfa5b87c8bc0              # double 0.054318598528218853
	.quad	0x3f409e9bd5efac00              # double 5.0718888439627019E-4
	.quad	0x3fe5908c5616c9fb              # double 0.67389504255544297
	.quad	0x3fd6d4516afbd7a8              # double 0.35670886466629748
	.quad	0x3fc3eca0cd178b6c              # double 0.15565881742721943
	.quad	0x3fcce37119dda3f4              # double 0.22569097292878804
	.quad	0x3fe1f2e858b263a2              # double 0.56090180705642845
	.quad	0x3fa615693b590880              # double 0.043132103437998559
	.quad	0x3fe6f11222280f27              # double 0.71692759200275169
	.quad	0x3fd90b49df2fd6d2              # double 0.39131399913399634
	.quad	0x3fcf2e0bd305e9c8              # double 0.24359271816122274
	.quad	0x3fec1cfcc15d33e1              # double 0.87853849188251953
	.quad	0x3fef90136ebe0fd7              # double 0.98633739117985441
	.quad	0x3fd8fb6dc07851ea              # double 0.39034599109552792
	.quad	0x3fe7a38482c969ec              # double 0.73871064705173017
	.quad	0x3fd16750fa32dcec              # double 0.27193092759576021
	.quad	0x3fe676f404471673              # double 0.7020206531094132
	.quad	0x3fd95c63d7685f8e              # double 0.39626403842839231
	.quad	0x3fc35ad9ac3c526c              # double 0.15121003065054894
	.quad	0x3fdcf638e16fc710              # double 0.45252820983215347
	.quad	0x3fd88390a2b49072              # double 0.38303008927528659
	.quad	0x3fede7e22b52e8ed              # double 0.934556088082244
	.quad	0x3fe8887bf701c4ad              # double 0.76666067355667666
	.quad	0x3fc9576b1714d7c8              # double 0.19798029543897955
	.quad	0x3fe164a11246f607              # double 0.54353383607639294
	.quad	0x3fe183ba74270e35              # double 0.54733011899992923
	.quad	0x3feeb872320adba3              # double 0.96001539014729464
	.quad	0x3fe8b89460e9b61b              # double 0.77253168991382226
	.quad	0x3fd42547f07c223e              # double 0.3147754524693801
	.quad	0x3fe5dcabdc2fe63b              # double 0.68318741803449912
	.quad	0x3fede6d3aa64f271              # double 0.93442710189954259
	.quad	0x3fec3f3b994c4a24              # double 0.88271884861962179
	.quad	0x3fe6c67426c1a6c1              # double 0.71172530717486648
	.quad	0x3fc64ab54be56464              # double 0.17415491300451713
	.quad	0x3fefa69662e9e8ca              # double 0.98908538168986948
	.quad	0x3fe4c0fd5f6af485              # double 0.64855831753051574
	.quad	0x3fedef1887cf4e8b              # double 0.93543650174474757
	.quad	0x3fe8cc6f8c09aed6              # double 0.77495553351533419
	.quad	0x3fd4bd44ae52fdd8              # double 0.32405201934667849
	.quad	0x3fe6d7aea8bc1f30              # double 0.71382840114617885
	.quad	0x3fef06f9de0645dd              # double 0.96960156788025708
	.quad	0x3fde40acb740ef74              # double 0.4726974286638701
	.quad	0x3fdd28ad831d9fa6              # double 0.45560777477521197
	.quad	0x3f9d899e68b5ef20              # double 0.028845286503823009
	.quad	0x3fed36078924a57f              # double 0.91284539018413102
	.quad	0x3fef871d387c88e7              # double 0.98524342567932599
	.quad	0x3fee77ddcd5f08bc              # double 0.9521321307331827
	.quad	0x3fe87a3516d82a85              # double 0.76491789304539337
	.quad	0x3fbc5955bf14a5c8              # double 0.11073814311080021
	.quad	0x3fe62f0895b89780              # double 0.69324139826197495
	.quad	0x3fec5cd7d7f65036              # double 0.88633339099988606
	.quad	0x3fe03f9c97c11b46              # double 0.5077650989486322
	.quad	0x3fec736b0125cc81              # double 0.88908910965109567
	.quad	0x3fea57495e8a9b55              # double 0.82315510239718981
	.quad	0x3fcf57133e4b2218              # double 0.24484482328104273
	.quad	0x3fdcd5ff27ad9014              # double 0.45056132197191912
	.quad	0x3fede0ec00bd1625              # double 0.93370628494512131
	.quad	0x3fea9852ddd6c864              # double 0.831094201354301
	.quad	0x3fe6ac0d11704b20              # double 0.70850232511506661
	.quad	0x3fb04e807fe92420              # double 0.063697844722938601
	.quad	0x3fead42e5ba08da8              # double 0.83840101142816525
	.quad	0x3fdb256b9bd4ccfe              # double 0.42415895669837755
	.quad	0x3fe0e5703a731bad              # double 0.52800761619515912
	.quad	0x3feb8dcefc7340ed              # double 0.86106061274224788
	.quad	0x3fdb1a7f4367c922              # double 0.42349225599822848
	.quad	0x3fd603a3877ae446              # double 0.3439720938727685
	.quad	0x3fed9a271d05f773              # double 0.92506747883429197
	.quad	0x3fd45d2323fc91c2              # double 0.31818464769665067
	.quad	0x3fed9f40bb4f6c8c              # double 0.92569004615815364
	.quad	0x3fd55102ac918c7c              # double 0.33306948521039437
	.quad	0x3fe5b914c97a15e1              # double 0.67884291983562772
	.quad	0x3fe43262431b0fd0              # double 0.63115037066062918
	.quad	0x3fe4b1e88603d5cb              # double 0.64671732115555736
	.quad	0x3fd261dd0b77f950              # double 0.28722311134324219
	.quad	0x3fc5ac2fa0aa097c              # double 0.16931720108921045
	.quad	0x3fc9edf57f49f310              # double 0.20257443156506172
	.quad	0x3fc3ceba29469ef0              # double 0.1547463132421778
	.quad	0x3fb5da79b0d65250              # double 0.085364919350760404
	.quad	0x3f90d96e0d2b30c0              # double 0.016454429200891907
	.quad	0x3fe44ad18cd190f8              # double 0.63413312438618075
	.quad	0x3fe591f0476f8d95              # double 0.67406476928992964
	.quad	0x3fb41d34bd355378              # double 0.078570648377832231
	.quad	0x3fbc500f8570dd40              # double 0.11059662826379668
	.quad	0x3fd5fddcb1ce3e16              # double 0.34361951221305398
	.quad	0x3fc269048da817b0              # double 0.14382988850428324
	.quad	0x3fe2b3f0f9961144              # double 0.58446549174599527
	.quad	0x3feda9ce6b2453a7              # double 0.92697831083443283
	.quad	0x3fee61ca8fa9baa5              # double 0.94943740901165496
	.quad	0x3fd6c70d0865a7f0              # double 0.35589910335568131
	.quad	0x3fe2844193537c0f              # double 0.57864455008155058
	.quad	0x3fe369405c08a8bd              # double 0.60659807181698222
	.quad	0x3fe57f5c68ee93e0              # double 0.67179699415703098
	.quad	0x3fb04c7829cc6798              # double 0.063666830258084395
	.quad	0x3feaf6a7f7fbd998              # double 0.84260939058622153
	.quad	0x3fe43ca1086fd748              # double 0.63240100524738185
	.quad	0x3fe5307d3dd73695              # double 0.6621690948320117
	.quad	0x3fef5c87b8c8cacb              # double 0.98004518595402012
	.quad	0x3f95d190e2d4d960              # double 0.021307243199055192
	.quad	0x3fe1877cda9bde0b              # double 0.54778902718584399
	.quad	0x3fe19aed623b19f1              # double 0.55016202150073756
	.quad	0x3fe5f1ee22d04c37              # double 0.68578249740165276
	.quad	0x3fe75c52dbd6a706              # double 0.73001997887806236
	.quad	0x3fcbb885d2615a38              # double 0.2165686871764636
	.quad	0x3fd9ffc816a1da52              # double 0.40623666963748406
	.quad	0x3fde48436a752ab2              # double 0.47316060444124297
	.quad	0x3fa6c3018b243430              # double 0.04445652793410948
	.quad	0x3fe40b5b45bc2216              # double 0.62638629551026059
	.quad	0x3fe58f64e45ec3e0              # double 0.67375416377592146
	.quad	0x3fd903ec34d2790e              # double 0.39086442144788769
	.quad	0x3fbf16949c398b80              # double 0.12143830122071897
	.quad	0x3fc48822a5961784              # double 0.16040452084797263
	.quad	0x3fd785ea3583d954              # double 0.36754851556851986
	.quad	0x3f9054eed39a5d00              # double 0.015948993363591235
	.quad	0x3fe0b93de67e9145              # double 0.52261252420843418
	.quad	0x3fe6bb69e942f0df              # double 0.71037765082249027
	.quad	0x3fe516bd836563e6              # double 0.65902591384212594
	.quad	0x3feac182a2207aeb              # double 0.83612186112790476
	.quad	0x3fcb014519c45900              # double 0.21097625501779049
	.quad	0x3fd1969e54f6754c              # double 0.27481802270070399
	.quad	0x3fe8a2c8d640a413              # double 0.76987115713302712
	.quad	0x3fada526756e8b30              # double 0.057900621256769091
	.quad	0x3fee13f4b9eec405              # double 0.93993603053070329
	.quad	0x3fe11e25525bab88              # double 0.53492990575374311
	.quad	0x3fe889da936a087d              # double 0.76682785789331798
	.quad	0x3fef9d5116485814              # double 0.98795370437688001
	.quad	0x3fcf3892ff930c74              # double 0.2439140079423826
	.quad	0x3fe43d8d74b7849d              # double 0.63251374050391329
	.quad	0x3fe807fe145aa374              # double 0.75097564673806838
	.quad	0x3fe1234272cce4a1              # double 0.5355541460222818
	.quad	0x3fce7a0286db723c              # double 0.23809844574761196
	.quad	0x3fe0ea2fe34132b1              # double 0.5285872877662624
	.quad	0x3fe0b64296d94928              # double 0.52224854910517582
	.quad	0x3f93f9d68aac4660              # double 0.019507744039464092
	.quad	0x3fd07be2f581efa0              # double 0.25756143546436228
	.quad	0x3fe3d85e9c1a4227              # double 0.62016230095656943
	.quad	0x3fccb22a8b4b781c              # double 0.2241872005606077
	.quad	0x3fba0640ca17ee40              # double 0.10165791448519546
	.quad	0x3fed7236a74db13b              # double 0.92019207645856882
	.quad	0x3fe006f7e3a6b350              # double 0.50085062468643038
	.quad	0x3fd6aa96c2eb454a              # double 0.35416192088185439
	.quad	0x3feab2fbb266decc              # double 0.83434853405102549
	.quad	0x3fc87650d29fc03c              # double 0.19111070904136962
	.quad	0x3fee01189a934fab              # double 0.93763380232347993
	.quad	0x3fe9b623bde3e06f              # double 0.80348383987349148
	.quad	0x3fe70cc3dead9ea9              # double 0.7203082417663228
	.quad	0x3fe0d394976a43b7              # double 0.52582768986950768
	.quad	0x3f86a310899391c0              # double 0.011053208540439452
	.quad	0x3fe106bc391184d1              # double 0.53207217355898184
	.quad	0x3fcb16c8b45fa660              # double 0.21163281256967803
	.quad	0x3fc9ec08056c4fe8              # double 0.20251560463714147
	.quad	0x3fe00f6b18aa7335              # double 0.50188212220709849
	.quad	0x3fe6de924067f12c              # double 0.71466934756566536
	.quad	0x3fd0ec264f299400              # double 0.26441343050674959
	.quad	0x3fe4ee94580ff951              # double 0.65412347030341256
	.quad	0x3fecc92ff543c6e3              # double 0.89955900100013897
	.quad	0x3fdeeccfdf517f50              # double 0.48320385750229367
	.quad	0x3fe2ae49ba48aeb4              # double 0.58377539046838089
	.quad	0x3fd871d9cff5251a              # double 0.38194890316352004
	.quad	0x3fe689f1ec486268              # double 0.70433899067854799
	.quad	0x3fe8d104213b0c3b              # double 0.77551466455805185
	.quad	0x3fec73d3a0c801c4              # double 0.88913899805634644
	.quad	0x3fe6e53f466765f7              # double 0.71548427344094889
	.quad	0x3fe1ceda52f708a3              # double 0.55650058940979752
	.quad	0x3fe7c2baed32f701              # double 0.7425207741541443
	.quad	0x3fe8fb28d6ca25c7              # double 0.7806591220007072
	.quad	0x3fe368e9f536176d              # double 0.6065568722994904
	.quad	0x3fe899e0129e7f86              # double 0.76878360401677592
	.quad	0x3fe94477495bb148              # double 0.78960766151207284
	.quad	0x3fe311ee4713e186              # double 0.5959388149486109
	.quad	0x3fedc95ea05f66ea              # double 0.93083125422273594
	.quad	0x3fec9096c98340df              # double 0.89265002592039966
	.quad	0x3feb35cc3380490e              # double 0.85031709727107496
	.quad	0x3fdd3e2f9fd24a3c              # double 0.45692053420603762
	.quad	0x3fed00b928bc2c5f              # double 0.90633829074921468
	.quad	0x3fe07940720f4eaf              # double 0.5148012378435477
	.quad	0x3fcbf76cd42b3a74              # double 0.21848831519897127
	.quad	0x3fe9ff471e32d61f              # double 0.81241184137497047
	.quad	0x3fefd82086834939              # double 0.99513269683874405
	.quad	0x3fe305c03037a2f6              # double 0.59445199410865146
	.quad	0x3fb5e86beda3dd68              # double 0.085577722089387742
	.quad	0x3fdd93ccbb60f4f2              # double 0.46214597986893502
	.quad	0x3fed37e8d6a967da              # double 0.91307489324685354
	.quad	0x3fec04524dd6db53              # double 0.87552752688393765
	.quad	0x3f591c621e016c00              # double 0.0015326460052367263
	.quad	0x3fe8090e67268181              # double 0.75110550066533233
	.quad	0x3fcb9bb63f223604              # double 0.21568945009896379
	.quad	0x3fb4b778728af798              # double 0.080924537624893822
	.quad	0x3fdbd1db7f54e6fc              # double 0.43468367991191292
	.quad	0x3fe51dc0c8134d44              # double 0.65988196446634406
	.quad	0x3fd2dc4eb2a3b8b6              # double 0.29469649739520365
	.quad	0x3fee7804eb3c1359              # double 0.95215078300735023
	.quad	0x3fd8490758f4b51c              # double 0.37945731818293083
	.quad	0x3fda1de93e9d0b52              # double 0.40807562937350383
	.quad	0x3fed28ffd9760c44              # double 0.91125481102825078
	.quad	0x3fc133bb570f695c              # double 0.13439122916208646
	.quad	0x3fef1295ed272bd9              # double 0.9710187560934812
	.quad	0x3feab09799f6700e              # double 0.83405666418866686
	.quad	0x3fdfcc574f2b8e44              # double 0.49684698802432004
	.quad	0x3fc393ad0e65dde8              # double 0.15294421389601998
	.quad	0x3feae0b7a2eaff9b              # double 0.83993131465830417
	.quad	0x3fe86e48d6cd0d96              # double 0.76346246674841001
	.quad	0x3fd9906af3affb40              # double 0.39943956182098717
	.quad	0x3fee29a017b3758c              # double 0.94258122090438822
	.quad	0x3fde7edb06ff8f56              # double 0.47649264987398021
	.quad	0x3fe2b4f371741dde              # double 0.58458873900320518
	.quad	0x3fcd0017709c77d8              # double 0.22656529425233773
	.quad	0x3fac4fe45fde9a70              # double 0.055297028258156966
	.quad	0x3fd8570ac9f45c48              # double 0.38031263086435674
	.quad	0x3fdf7a3a47358fda              # double 0.49183518365884782
	.quad	0x3fede3485a516f05              # double 0.93399446144346199
	.quad	0x3fd4ba014f818a74              # double 0.3238528515268293
	.quad	0x3fd2948eaae51486              # double 0.29031721772145891
	.quad	0x3fe51b2cefd48050              # double 0.65956732599080148
	.quad	0x3fb1d0634e41e5b0              # double 0.069585997205556138
	.quad	0x3fe2a1a0f3cfd80f              # double 0.58223006839284774
	.quad	0x3fb38206f4390e78              # double 0.076202807068563305
	.quad	0x3fea09507d1b6abe              # double 0.81363701281528455
	.quad	0x3fc329f71ec7f000              # double 0.14971817973116686
	.quad	0x3fcac3098231dde8              # double 0.20907706124465553
	.quad	0x3fd7a7dc598b15f8              # double 0.36962040657485273
	.quad	0x3fe8c0a72717a6e8              # double 0.77351720462067153
	.quad	0x3fe6992bf1a3b403              # double 0.70619771189888103
	.quad	0x3fcb3877dad70ebc              # double 0.21266077218580459
	.quad	0x3fde6b6f12c352ba              # double 0.4753072436554181
	.quad	0x3fe81744828a5903              # double 0.75284028526473923
	.quad	0x3fc1de701f0f9758              # double 0.1396007682480398
	.quad	0x3fef39d2ce92cc45              # double 0.97580852838871889
	.quad	0x3feea02199a89bec              # double 0.95704727183772098
	.quad	0x3fa5f6fb7e9ab5d0              # double 0.042899951176291418
	.quad	0x3fd078e4af291472              # double 0.25737874131693339
	.quad	0x3fef18c7e69d46f3              # double 0.97177500764720858
	.quad	0x3fd6d286885be5a2              # double 0.35659945789628911
	.quad	0x3fe288c810304848              # double 0.57919696008526333
	.quad	0x3fe1fc70a7a3e259              # double 0.56206543676587295
	.quad	0x3fcf9e5b34bef200              # double 0.24702014995081356
	.quad	0x3fed5e911194e820              # double 0.9177937835113461
	.quad	0x3fe1000e9f5da268              # double 0.53125697256207349
	.quad	0x3fec642c37d86b7c              # double 0.88722811610510587
	.quad	0x3feb1e6aba712aa8              # double 0.84746300138916286
	.quad	0x3fee3846e9288666              # double 0.94436975039225213
	.quad	0x3fcf87fa8b278af4              # double 0.24633724016810954
	.quad	0x3fd4f74eba9ed572              # double 0.32759445404675269
	.quad	0x3fda9685e0657236              # double 0.41543719209383612
	.quad	0x3fbfbc3d7ec57070              # double 0.12396606774331231
	.quad	0x3fd401b7d43a7618              # double 0.31260486340929239
	.quad	0x3fe0991abdee724b              # double 0.5186895093534728
	.quad	0x3fee9ee5df8c3acd              # double 0.95689672147440208
	.quad	0x3fdf38fcbedd6d30              # double 0.48785322798876773
	.quad	0x3fe80697b98f292c              # double 0.75080476991687339
	.quad	0x3fcbdbd2d3fb4b18              # double 0.2176459822718122
	.quad	0x3fee8b0dcc38e5c5              # double 0.95447435271415115
	.quad	0x3fde1306df553a12              # double 0.46991130647521218
	.quad	0x3fe5e0584450618b              # double 0.68363583891464097
	.quad	0x3fdbe6e279f430d8              # double 0.43596708211476942
	.quad	0x3fe6ce6a324c7d45              # double 0.71269712280256015
	.quad	0x3fefea05fecd1a61              # double 0.99731731191497996
	.quad	0x3fd9b585437ca82c              # double 0.40170413580438225
	.quad	0x3f9720abedf554c0              # double 0.022585569762061608
	.quad	0x3fc069e6af7441a8              # double 0.12823184554191625
	.quad	0x3fd8670990474a5e              # double 0.38128890123076598
	.quad	0x3fe5536b1ab4a05a              # double 0.66643290725643145
	.quad	0x3fee6516eca842b8              # double 0.94984003278849282
	.quad	0x3fcf1ee3962a9a78              # double 0.24313015777916624
	.quad	0x3fe943edac98d623              # double 0.7895420428309915
	.quad	0x3fda993a32486e12              # double 0.41560225401346529
	.quad	0x3fd477250fa57fae              # double 0.31977201965309632
	.quad	0x3fe182dbdb5a79a7              # double 0.54722397654022792
	.quad	0x3fd72d731563336c              # double 0.3621490200865114
	.quad	0x3fc325282b7588c0              # double 0.14957143899943581
	.quad	0x3fdc622cc5d66b46              # double 0.44349211998057958
	.quad	0x3fe5e75bb72bfcb9              # double 0.68449197555300778
	.quad	0x3fb2933270d50900              # double 0.072558548495212705
	.quad	0x3fec85b23b1118f9              # double 0.89132033859712501
	.quad	0x3fed72fc85c960c7              # double 0.92028642778589009
	.quad	0x3fa01b9be7150460              # double 0.031460639913810651
	.quad	0x3fbad8ea1c55d5f0              # double 0.10487235252170257
	.quad	0x3fdc28e1209ee92e              # double 0.43999508081073457
	.quad	0x3fee0b526fd3a5c1              # double 0.93888208237802229
	.quad	0x3fc3634ecffa12fc              # double 0.15146813540572868
	.quad	0x3fe7db6f371a0a3a              # double 0.74553642999700931
	.quad	0x3fe7e34f96348d9d              # double 0.74649791085214512
	.quad	0x3fe1ebba3387a4b7              # double 0.56002531113076415
	.quad	0x3fa7a0f3c99ec860              # double 0.046149843561025916
	.quad	0x3fd974a9fa6394ec              # double 0.39774560405778803
	.quad	0x3fe7c1e8e0db75f8              # double 0.74242061536250414
	.quad	0x3fe7ff1c95505a84              # double 0.74989155924670614
	.quad	0x3fcd780e3f4cd69c              # double 0.2302263077814829
	.quad	0x3fe7dea0d6a1d3b2              # double 0.74592630310382035
	.quad	0x3fe325f88b6cd703              # double 0.59838511687732454
	.quad	0x3fdd0f2f45a1e2ec              # double 0.45405179786716476
	.quad	0x3fe36fab8f67d4df              # double 0.60738161095528287
	.quad	0x3fe04f2146dd3623              # double 0.50965942230840644
	.quad	0x3fdd27d6f7bf7a4e              # double 0.45555662340294567
	.quad	0x3fe1377610652b3d              # double 0.53802016451059098
	.quad	0x3fd9ff1727e8ab0e              # double 0.40619448563909166
	.quad	0x3fdee4599ff690b0              # double 0.48268738385582832
	.quad	0x3fabdebb3f5f9890              # double 0.054433680997861278
	.quad	0x3fd7e02e450bfcec              # double 0.37305790655950832
	.quad	0x3fcdf4e5d2a63f10              # double 0.23403618608107779
	.quad	0x3fd66339741f8a0c              # double 0.34980617847591655
	.quad	0x3fdf90d143970f04              # double 0.49321395493119291
	.quad	0x3fe6bbaafc8390c1              # double 0.71040868109823674
	.quad	0x3fe1a9766403efe5              # double 0.55193633589032898
	.quad	0x3fc9dd389ea98c2c              # double 0.20206363436872843
	.quad	0x3fef19b5a5db1fad              # double 0.97188837426891938
	.quad	0x3fe1029281476372              # double 0.5315639996507413
	.quad	0x3fe5661b40f9b3d1              # double 0.66871416750438517
	.quad	0x3fdc05c79935ce32              # double 0.43785276376658822
	.quad	0x3fefbcaf5db03285              # double 0.99178283976068881
	.quad	0x3fea48084723e736              # double 0.82129300970630115
	.quad	0x3fc6b6cc76a767f4              # double 0.17745357316636012
	.quad	0x3fe705f989ae4cf1              # double 0.71947934046548145
	.quad	0x3fc59acf87a0f608              # double 0.16878694651124726
	.quad	0x3fd5a6778876ee24              # double 0.33828533484094891
	.quad	0x3fc45bfcda2e14b0              # double 0.15905724194832294
	.quad	0x3fee813f1040d5c3              # double 0.95327714132752595
	.quad	0x3f73c3c83851c680              # double 0.0048253842443145567
	.quad	0x3fef8ba3f151fe89              # double 0.98579594738835496
	.quad	0x3fec6acd95138a3f              # double 0.88803748241873126
	.quad	0x3fe8e642e116d608              # double 0.77810806238875418
	.quad	0x3fdc57c6e966db70              # double 0.44285748284476423
	.quad	0x3febca8a1d392c53              # double 0.86847406108553071
	.quad	0x3fdf11af4900a31c              # double 0.48545438889645864
	.quad	0x3f9f8b58b6c0a4e0              # double 0.030805002359703404
	.quad	0x3fe64a7308668a97              # double 0.69658805504544119
	.quad	0x3fdf569495345f2c              # double 0.48965944834479802
	.quad	0x3fc1b5cf60da8394              # double 0.1383609030645202
	.quad	0x3fef4147344d2351              # double 0.97671852316953267
	.quad	0x3fce2ffed4d8d0f0              # double 0.23583970444600011
	.quad	0x3feda10b02b31630              # double 0.92590857054955755
	.quad	0x3fd229bedc1a50aa              # double 0.28379794592297947
	.quad	0x3febbe250d402c1c              # double 0.8669610270311554
	.quad	0x3fe9e4ad3d39e0c2              # double 0.80916463812084083
	.quad	0x3fedecc8cc04c40b              # double 0.93515434119592677
	.quad	0x3fd8d72cc368e92c              # double 0.38813323100079589
	.quad	0x3fd01ae0a45394ae              # double 0.25164047286518609
	.quad	0x3fbda25161af3438              # double 0.11575802454827133
	.quad	0x3fe21cc3e8eb7346              # double 0.56601138584265054
	.quad	0x3fef2ce14a78aeee              # double 0.97422852082442346
	.quad	0x3fd39adc8eb3e486              # double 0.30632699905215366
	.quad	0x3fe1757907ead4c5              # double 0.54558993860577998
	.quad	0x3fe02eff58878495              # double 0.50573699274913742
	.quad	0x3fd1d25e1f62bb18              # double 0.27846482338911605
	.quad	0x3fc918c2acfc2298              # double 0.1960681290295454
	.quad	0x3fe4604dca7fec88              # double 0.63675584364627102
	.quad	0x3fba6b20b3043808              # double 0.10319713945884257
	.quad	0x3fde8bbe2f1a813c              # double 0.47727923011736428
	.quad	0x3fcce1ba13b9290c              # double 0.2256386371903506
	.quad	0x3fbf630fb1161360              # double 0.12260530541796077
	.quad	0x3fd7acae45b936e6              # double 0.36991459664282755
	.quad	0x3feda8fc053e5cb9              # double 0.92687798523083764
	.quad	0x3fca45d61e539bb0              # double 0.20525623780050983
	.quad	0x3fe2eab7d8a56a18              # double 0.59115211785985178
	.quad	0x3fd0af202e835038              # double 0.26068882505683488
	.quad	0x3fecd913b3adab8e              # double 0.90149865239560412
	.quad	0x3fe9aaf19c8027fc              # double 0.80211716238522923
	.quad	0x3feed349d1a3c568              # double 0.96329203553447673
	.quad	0x3fe9f4687342099f              # double 0.81108496199913194
	.quad	0x3fd5b382fdd0583a              # double 0.33908152376659795
	.quad	0x3fe038a5d1b2ea20              # double 0.50691500622571439
	.quad	0x3fe5d3d814d5b732              # double 0.68210987157156056
	.quad	0x3fe0ff042960f420              # double 0.53112991411001431
	.quad	0x3fcb5755bd6873b0              # double 0.21360275028646702
	.quad	0x3fde9165b7df1988              # double 0.47762434917640251
	.quad	0x3fc88ce377d18e44              # double 0.19179957724110086
	.quad	0x3fbc3671b0f4f588              # double 0.11020575113521691
	.quad	0x3fe1e6321b4f459c              # double 0.55935006460110825
	.quad	0x3fe984d638467540              # double 0.7974654292226333
	.quad	0x3f9fa646a691e940              # double 0.030907730023025382
	.quad	0x3fdfb61321ce2d08              # double 0.49548795987421146
	.quad	0x3fe137b95dbf66f8              # double 0.53805225668040091
	.quad	0x3fd52afa305aae44              # double 0.33074812624065353
	.quad	0x3fdbd0d829bfdde2              # double 0.43462184979531859
	.quad	0x3fe40060ab838a7b              # double 0.62504609583659432
	.quad	0x3fea8e70de06faca              # double 0.82988780369472548
	.quad	0x3fe1368f8809806b              # double 0.53791023797749682
	.quad	0x3fe36b344e869c7b              # double 0.60683646523547397
	.quad	0x3fd41a174c47fe80              # double 0.31409246873224816
	.quad	0x3f5bb0ebab462800              # double 0.0016901303725682659
	.quad	0x3fe9c1ab280c183e              # double 0.8048911840603592
	.quad	0x3fead9d3e28ffd52              # double 0.83909029245834632
	.quad	0x3fac01e8ae43a240              # double 0.05470206382034748
	.quad	0x3fd03ee1ed16b934              # double 0.25383804467391546
	.quad	0x3fc5146500c32360              # double 0.16468489205569892
	.quad	0x3feabc378c8f0274              # double 0.83547570660455372
	.quad	0x3fd608a2bbe11060              # double 0.34427708003591384
	.quad	0x3fe52fc6e7195724              # double 0.66208214890022932
	.quad	0x3fe1d014b4358fa9              # double 0.55665049740899974
	.quad	0x3fb31fd2f090dc50              # double 0.074704345447444753
	.quad	0x3fe183f4a2d14ae1              # double 0.54735786247541907
	.quad	0x3fc899bd85b6b23c              # double 0.19219178227412381
	.quad	0x3fdad136db2de664              # double 0.41901942638614842
	.quad	0x3fe36fc162ddfd6d              # double 0.60739201841344725
	.quad	0x3fc80caf835195b0              # double 0.18788713371320176
	.quad	0x3fc3f9ea6496a3f4              # double 0.15606431876702198
	.quad	0x3fd405c6a18d7550              # double 0.31285253311746875
	.quad	0x3fd4e7c18c40dd8c              # double 0.32664526650065606
	.quad	0x3fd93ea2d99f8586              # double 0.39444800617464926
	.quad	0x3fc80cbf7b05b0f0              # double 0.1878890371984947
	.quad	0x3fe60f4a08ee7792              # double 0.68936635727344453
	.quad	0x3fe68fd2d3cf6650              # double 0.70505658501788027
	.quad	0x3fd1fa9f62489650              # double 0.28092178915026
	.quad	0x3fd4471e6f5ca21e              # double 0.3168407523649267
	.quad	0x3fedbf449d922e94              # double 0.92959814811315988
	.quad	0x3fe980ff9582c61f              # double 0.79699687196097446
	.quad	0x3fcf66e3c7871e48              # double 0.24532744638985293
	.quad	0x3fd9442e8dcd18e4              # double 0.39478648994226107
	.quad	0x3f708e1545a42100              # double 0.0040417509974377541
	.quad	0x3fecd760af9ba7ed              # double 0.90129122065013478
	.quad	0x3fc5a7d1aa76fc08              # double 0.16918392966724149
	.quad	0x3fe39d7f6268c493              # double 0.61297578068310299
	.quad	0x3feb5c7f299e1127              # double 0.85504110458763172
	.quad	0x3fd61164275ec3c2              # double 0.34481147618049246
	.quad	0x3f8d6abf442d0440              # double 0.014363760250150404
	.quad	0x3fd415b8176404a8              # double 0.31382562908408795
	.quad	0x3fcc9df8ac8b3734              # double 0.22357090401640678
	.quad	0x3fabba18162f5fe0              # double 0.054154160221230319
	.quad	0x3fed0b04f580137b              # double 0.90759513806607062
	.quad	0x3feef749bad1b786              # double 0.96768652427793778
	.quad	0x3f6987565cba0300              # double 0.0031162916910151273
	.quad	0x3fd2a484c75ddea0              # double 0.29129142255212948
	.quad	0x3fd555b67f17067e              # double 0.33335649882437923
	.quad	0x3feeac98167ec3fc              # double 0.95856861489858102
	.quad	0x3fe2a68e223b7bd1              # double 0.58283144651420049
	.quad	0x3fe78d54e820cf9f              # double 0.73600240075619527
	.quad	0x3fea1fdb95064fb5              # double 0.81638888460519488
	.quad	0x3feb7f5e094ff8c5              # double 0.85929776972604854
	.quad	0x3fecd4a7b79c7cb9              # double 0.90095888005807645
	.quad	0x3fcc3e0ce58c8d88              # double 0.22064362724732356
	.quad	0x3fb8a0343ebc4480              # double 0.096194520298256591
	.quad	0x3fe0bcb044e5ad21              # double 0.52303327042082881
	.quad	0x3fe6519ccf868c01              # double 0.69746246845568305
	.quad	0x3fec28e65be19174              # double 0.87999265618831978
	.quad	0x3fe61b9537c102c9              # double 0.69086705102389445
	.quad	0x3fd409dcf5ebad76              # double 0.31310199752507317
	.quad	0x3fdbdca23575159a              # double 0.4353414079708614
	.quad	0x3fe21f4255d07ec9              # double 0.56631581078178173
	.quad	0x3fed0f4fbe803cf4              # double 0.90811907965863136
	.quad	0x3fe5da5dc76a465c              # double 0.68290604542034883
	.quad	0x3fedf317c2bf1015              # double 0.93592441593546261
	.quad	0x3fcfe925a7037138              # double 0.2493025842185348
	.quad	0x3fef442a4f713a2e              # double 0.9770709563834481
	.quad	0x3fef710ef360c47d              # double 0.98255107435956257
	.quad	0x3fe6b0e40651f34c              # double 0.70909310564420869
	.quad	0x3fd5caf655025a38              # double 0.34051283170393587
	.quad	0x3fb977d9a2057648              # double 0.099485017829885725
	.quad	0x3fe0a1cf449c07f1              # double 0.51975215339939329
	.quad	0x3fd3be3dda7023d6              # double 0.30848642665710935
	.quad	0x3fe3db756a22e019              # double 0.62053938607914738
	.quad	0x3fe2832b5b1710f4              # double 0.57851188460384018
	.quad	0x3fea20e5338a7ae0              # double 0.81651554171170559
	.quad	0x3fd340e4b5676916              # double 0.30083577838162634
	.quad	0x3fe0f35bfd1f624d              # double 0.5297069495964678
	.quad	0x3fecf59b8224adc3              # double 0.90498137873276396
	.quad	0x3fe242b660e3659d              # double 0.5706436054562577
	.quad	0x3fc9d22901fc34f0              # double 0.20172607991154434
	.quad	0x3f93ed118babc740              # double 0.019459032201616155
	.quad	0x3fec64f94ce02145              # double 0.887325906894184
	.quad	0x3febc7abdec5b2fb              # double 0.86812394628722644
	.quad	0x3fd3d045f037070a              # double 0.30958698709956478
	.quad	0x3fec252c1ba9115d              # double 0.8795376339190103
	.quad	0x3fcdc7d07b0227cc              # double 0.23266035085936065
	.quad	0x3fd3d95a197475b0              # double 0.31014111028511149
	.quad	0x3fda131867a66698              # double 0.40741548654623605
	.quad	0x3feb7f84e2b375ec              # double 0.85931629445593449
	.quad	0x3fdcd9a730c7d73a              # double 0.45078449023945988
	.quad	0x3fdeeaeb6e0c03aa              # double 0.48308835741777989
	.quad	0x3feb856213de3aa1              # double 0.86003211861119067
	.quad	0x3fe2342aa970ad08              # double 0.56886799901749985
	.quad	0x3fd112661fc0252a              # double 0.26674798107758824
	.quad	0x3fc87791ac400b4c              # double 0.19114895735409687
	.quad	0x3fe65d4b1ab13f2d              # double 0.69888835156777918
	.quad	0x3fee95f6c2c02647              # double 0.95580614125464869
	.quad	0x3fe26daa68e60822              # double 0.57588692176819145
	.quad	0x3faaf953c99d8e50              # double 0.052683466302167248
	.quad	0x3fcccaaeace85ab0              # double 0.22493537371402317
	.quad	0x3fca446a7a9f7bf8              # double 0.2052128885979696
	.quad	0x3fdde00bd8206e56              # double 0.46679969888802952
	.quad	0x3fdc4f4ceb3fccfc              # double 0.44234011624867242
	.quad	0x3fc2991f493e63dc              # double 0.14529791904786193
	.quad	0x3fd792ae6954af5a              # double 0.36832771574221612
	.quad	0x3fc7afee0a45f720              # double 0.18505645276666716
	.quad	0x3fbe288870671ea8              # double 0.11780598396500841
	.quad	0x3fc233f9486b5ec4              # double 0.14221111332039105
	.quad	0x3fdff892e29e8a00              # double 0.49954673891821244
	.quad	0x3fe360494a65ecc5              # double 0.60550369768989099
	.quad	0x3fe07f22acc441ff              # double 0.51551946395380799
	.quad	0x3fe66e4000fb2c31              # double 0.70095825378064636
	.quad	0x3fc4b351566306e8              # double 0.16172234266382834
	.quad	0x3fb3cd116204a450              # double 0.077347837858398493
	.quad	0x3fec8b88b21ea96f              # double 0.89203295506494651
	.quad	0x3fd691982c6c395e              # double 0.35263637865218367
	.quad	0x3fe5f95c84f4d7b9              # double 0.68668962448167925
	.quad	0x3fb350e53c249fc0              # double 0.075453116591801539
	.quad	0x3fcef13db4fd4484              # double 0.24173709237451046
	.quad	0x3fed9c9b5a1b6beb              # double 0.92536704634710298
	.quad	0x3fc66868d98461b8              # double 0.17506132718041356
	.quad	0x3fe0486f6ca5e530              # double 0.50884219379728357
	.quad	0x3fdf6bb8ef202994              # double 0.4909498534404062
	.quad	0x3fddc70f334c1040              # double 0.46527462014660514
	.quad	0x3fe78e754a33d712              # double 0.73613991253543731
	.quad	0x3fe95c054ed85d3a              # double 0.79248299979636916
	.quad	0x3fdc27c50b3a792e              # double 0.43992735001110617
	.quad	0x3fe6be1c730b1e15              # double 0.71070692510051237
	.quad	0x3fe9ebcf81d2a7a9              # double 0.81003547054318858
	.quad	0x3fcdbdda0fb54550              # double 0.23235631720539596
	.quad	0x3fe3c837066ec273              # double 0.61819030052545398
	.quad	0x3fd79704ee2d21ac              # double 0.36859248408702672
	.quad	0x3fed1345ab8fee2f              # double 0.90860255726096806
	.quad	0x3fd2b43225658e2a              # double 0.29224828388234647
	.quad	0x3fed9278efa6b2a3              # double 0.92412993246906117
	.quad	0x3fe1d857cb448117              # double 0.55765905094816304
	.quad	0x3fe86d9c6ca2a1be              # double 0.76338025300815793
	.quad	0x3fd7c833f599cf06              # double 0.3715944193311177
	.quad	0x3fe81da68ef37f0a              # double 0.75361946029804128
	.quad	0x3fde97a71472a540              # double 0.47800614353998938
	.quad	0x3fef2c035d21d3c6              # double 0.97412269773359905
	.quad	0x3fe5a33029652e73              # double 0.67617042622573675
	.quad	0x3fd530650df9b41c              # double 0.33107878079209896
	.quad	0x3fe1275cfe9808f4              # double 0.53605508542412261
	.quad	0x3fe0345d45c22557              # double 0.50639213204082523
	.quad	0x3fda04b978a18d2c              # double 0.4065383604085635
	.quad	0x3fe5e8f4845292c0              # double 0.68468690723656067
	.quad	0x3fe1ef05b68f500f              # double 0.56042752891744552
	.quad	0x3fe7af372af81afa              # double 0.74013861076750165
	.quad	0x3fab12e7aed93710              # double 0.052878608793078041
	.quad	0x3fdbfa439c576bac              # double 0.43714990871165571
	.quad	0x3fbb3d8aab5c7820              # double 0.10640780147193185
	.quad	0x3fedd18766a062fb              # double 0.93182725948562906
	.quad	0x3fdeb21fbeee0856              # double 0.47962182660569874
	.quad	0x3fe20856e61aaa68              # double 0.56351799909800793
	.quad	0x3fd2833f2ff24892              # double 0.28926067049281656
	.quad	0x3fb53ca1687197e0              # double 0.082956398009258248
	.quad	0x3fc6bd9d21b8b5f0              # double 0.17766155382689375
	.quad	0x3fda02ad64d97e32              # double 0.40641341065017678
	.quad	0x3fe4a3106cb1f805              # double 0.644905292792601
	.quad	0x3fd9bd8e07f15ef0              # double 0.40219450736684248
	.quad	0x3fe033026079bf6d              # double 0.50622671931158225
	.quad	0x3fe31e0df6a773a9              # double 0.59741876768713553
	.quad	0x3fe49a62a6236bba              # double 0.64384586762331897
	.quad	0x3fd9b4f8224c471c              # double 0.40167048787508164
	.quad	0x3f9b87c0dbc5af60              # double 0.026885045446234712
	.quad	0x3fe8bbf507faac5e              # double 0.77294398840366418
	.quad	0x3fe039d649d4afa5              # double 0.50706018848494649
	.quad	0x3fe4259b4fde8047              # double 0.62959066008989673
	.quad	0x3fce9bc4e3e05c54              # double 0.23912869574334883
	.quad	0x3fe32dfc12775f48              # double 0.59936336142252689
	.quad	0x3fc4aaea4a1dd8c0              # double 0.16146591776823094
	.quad	0x3fdda0a48acb7d24              # double 0.46292985490977601
	.quad	0x3fd71fbdd99f0818              # double 0.36131235363075254
	.quad	0x3fddc7900eeeb644              # double 0.46530534227608578
	.quad	0x3fec4411ad2c43be              # double 0.88330921004136775
	.quad	0x3fb6776d74f659f0              # double 0.0877598200371279
	.quad	0x3fdc8b248be3a0e0              # double 0.44599260006954289
	.quad	0x3feb3aa8cdba053a              # double 0.85091056996331038
	.quad	0x3fd40aebd5436398              # double 0.31316657854545715
	.quad	0x3fdd74623ef9040a              # double 0.4602285017936657
	.quad	0x3fdbb262980d6984              # double 0.43276276444307649
	.quad	0x3fec6a4fc34a5533              # double 0.88797748701714452
	.quad	0x3fc37a376618485c              # double 0.15216724858379649
	.quad	0x3fe508b1ee5e7081              # double 0.65731140667368504
	.quad	0x3fc4357c0333c204              # double 0.15788221508366018
	.quad	0x3fd27725e8b15824              # double 0.28852222179318887
	.quad	0x3fd23c99e6dc169e              # double 0.28494880242247145
	.quad	0x3fd379bd3c0f0cee              # double 0.3043053709518081
	.quad	0x3febd8b9b854f505              # double 0.87020574571911935
	.quad	0x3fec7ce81b2867c8              # double 0.8902473955561101
	.quad	0x3fe4f27e007d59b9              # double 0.65460109801897837
	.quad	0x3fd08370a9354792              # double 0.25802246593695444
	.quad	0x3fe6aa51d702f46a              # double 0.70829097742502012
	.quad	0x3fec2445ac67ef0e              # double 0.87942775414509966
	.quad	0x3fce462e2e462014              # double 0.23651673564404574
	.quad	0x3fd4a2ba15fa2fb0              # double 0.32243206163615934
	.quad	0x3fe1b5b285e4c63a              # double 0.55342985297301728
	.quad	0x3feeec5dee2bb2bf              # double 0.96635338323320485
	.quad	0x3fee1360ab0bc7d9              # double 0.93986543090272356
	.quad	0x3fe43f708a886749              # double 0.63274409348671512
	.quad	0x3fe84281fde8d000              # double 0.75811862556156484
	.quad	0x3fe493f24a905cf7              # double 0.64305986941590632
	.quad	0x3feb641aa8b7f8d0              # double 0.85596974327907027
	.quad	0x3fdf1c1d9de0b6b6              # double 0.48609104554894189
	.quad	0x3fd6c9f962a6603c              # double 0.35607752450733066
	.quad	0x3fe67fddfa998b6d              # double 0.70310877747793443
	.quad	0x3fc4de1cbd4eaff0              # double 0.16302832835697201
	.quad	0x3fbbe8d52955f7b0              # double 0.10902149447608056
	.quad	0x3fe315ee8f7fb89a              # double 0.59642723109370199
	.quad	0x3fe1720bae017cb4              # double 0.54517158494481643
	.quad	0x3fe5cf245968c2b5              # double 0.68153588736284709
	.quad	0x3fc5839fe335e54c              # double 0.16807936281456148
	.quad	0x3fe40517f1225170              # double 0.62562176796431679
	.quad	0x3fdbfa7ca2af72ec              # double 0.43716350447884511
	.quad	0x3fdd1f460c890bd8              # double 0.45503379081872941
	.quad	0x3fee3f232778d8e4              # double 0.94520719251047724
	.quad	0x3fefbca724c7e779              # double 0.9917789190651397
	.quad	0x3fe4646b80bfd9ce              # double 0.63725829264040512
	.quad	0x3fefaddb6dcc3fdd              # double 0.9899727959145782
	.quad	0x3fd99f8770854658              # double 0.40036188114490789
	.quad	0x3febb28b13b68959              # double 0.86554483270837601
	.quad	0x3feebbfe6a0fd5b7              # double 0.96044846263128291
	.quad	0x3fec70d3275e4fd3              # double 0.88877256096975044
	.quad	0x3fcf1c3b9bcc2a7c              # double 0.24304909808445874
	.quad	0x3fb367c720e43db0              # double 0.075802274255912349
	.quad	0x3fd50f1d9ae6f4d4              # double 0.32904758574643478
	.quad	0x3fa6f2dc7b094220              # double 0.044821634310782565
	.quad	0x3fee731b20fa7176              # double 0.95155102196763042
	.quad	0x3fbe12db9e069520              # double 0.11747524841355927
	.quad	0x3fef03758d75e66d              # double 0.96917226437581194
	.quad	0x3fa6c8c21929f680              # double 0.044500413486258772
	.quad	0x3fe54edd5248cab8              # double 0.66587701865349569
	.quad	0x3fe1a674cc71212f              # double 0.55156936578808835
	.quad	0x3fdc2b256fda9d00              # double 0.44013343737829302
	.quad	0x3fdcd298f29bca0c              # double 0.45035384838334447
	.quad	0x3fe5902542c306c4              # double 0.67384589232843739
	.quad	0x3feae6bac66f869b              # double 0.84066523320162234
	.quad	0x3fdbdd951fbef352              # double 0.43539932346520971
	.quad	0x3fd49c4ef40a5384              # double 0.32204030830444474
	.quad	0x3fe99c1818115183              # double 0.80030445767128844
	.quad	0x3fe6ef3c938847ab              # double 0.71670368971739629
	.quad	0x3feb993d2dccdf2a              # double 0.86245593018882016
	.quad	0x3fe8a0d92f4649a0              # double 0.76963481171906167
	.quad	0x3feaa143c1a44026              # double 0.83218562908769367
	.quad	0x3fd9101498d9cdaa              # double 0.39160647322497744
	.quad	0x3fbcaa0e602ec748              # double 0.11196985099993839
	.quad	0x3f9761f03f654460              # double 0.022834543103560256
	.quad	0x3fe1cc857f0204b4              # double 0.55621599966266055
	.quad	0x3fdc9bf9f3f55b8c              # double 0.44702004264893769
	.quad	0x3fe0d613aaebda92              # double 0.52613242514674341
	.quad	0x3fe7824900bb3f56              # double 0.73465395109995302
	.quad	0x3fe4bf54f8c33b2a              # double 0.64835594736527935
	.quad	0x3fe21ae10bef33f4              # double 0.56578113871512281
	.quad	0x3fc247dad1c2caa0              # double 0.1428178333495298
	.quad	0x3fdb1cfe243e9af0              # double 0.42364457644946096
	.quad	0x3fde4725502a8c74              # double 0.4730923922417738
	.quad	0x3fe77f588377e9d7              # double 0.73429513623642151
	.quad	0x3fd3a942ef474970              # double 0.30720589987790614
	.quad	0x3fd8f2465d9dda66              # double 0.38978728430030285
	.quad	0x3fd60d90c6b87aec              # double 0.34457797437964532
	.quad	0x3fbab517f03ff580              # double 0.10432576766466717
	.quad	0x3fd282d1d8b249d8              # double 0.28923460160981795
	.quad	0x3fe4b83353472012              # double 0.64748541131212023
	.quad	0x3fec261a057397f9              # double 0.87965107979539348
	.quad	0x3fe18676ee07eb44              # double 0.54766413202683184
	.quad	0x3fe7d046959dcede              # double 0.74417428228340632
	.quad	0x3fc5c7033191ce48              # double 0.17013587875736591
	.quad	0x3fd672b62c180de2              # double 0.35075144105959855
	.quad	0x3fb73654b7634fe8              # double 0.090672774097867781
	.quad	0x3fec0f8685c574d4              # double 0.87689520003518817
	.quad	0x3fb2cd8326897130              # double 0.073448368938845432
	.quad	0x3fed083a6f8cb88b              # double 0.90725442683266644
	.quad	0x3fc4d46fcfd5e558              # double 0.16273305557460094
	.quad	0x3fe9a078346503a1              # double 0.80083856805150699
	.quad	0x3fcc71840a169500              # double 0.22221422665203505
	.quad	0x3fed9f000acacff0              # double 0.92565919978960487
	.quad	0x3fbaaee89f88a750              # double 0.10423139471882092
	.quad	0x3fe85ef33a64b65e              # double 0.76159058957064096
	.quad	0x3fadc2d925eae680              # double 0.058127199057207868
	.quad	0x3fc1b017069a9c38              # double 0.13818633863886176
	.quad	0x3fc6a308f87cead4              # double 0.1768504346199139
	.quad	0x3fcfa1baee24c130              # double 0.24712311390022412
	.quad	0x3fc11dd44cf106d8              # double 0.13372281796369268
	.quad	0x3fdd3e344cceb43a              # double 0.45692164898611376
	.quad	0x3fdfcf5eaf6c980a              # double 0.49703185206669842
	.quad	0x3fd094d6494cd3dc              # double 0.25908429296697277
	.quad	0x3fe14b9fa8dc74b2              # double 0.54048140507406672
	.quad	0x3fd4242d182297c6              # double 0.31470801693864947
	.quad	0x3fc11b3e9fe66288              # double 0.1336439400445395
	.quad	0x3fe737bf97f5109f              # double 0.72555522612721635
	.quad	0x3fedb84e7a79108a              # double 0.92874835892190899
	.quad	0x3feb7e9dd37e8774              # double 0.85920611674758484
	.quad	0x3fe53b01eaf7e945              # double 0.66345306293741457
	.quad	0x3fa63953180205f0              # double 0.043406101875927194
	.quad	0x3fe51adce9c1c2ea              # double 0.65952916770592407
	.quad	0x3fe134265b99d1c8              # double 0.53761594668190416
	.quad	0x3fa78a6b78f7f6c0              # double 0.045977934376407514
	.quad	0x3fd5ebd3e3976e7c              # double 0.34251878000006974
	.quad	0x3fd67a061176e5b8              # double 0.35119773583900438
	.quad	0x3fda01fdbbacbd7a              # double 0.40637152984250913
	.quad	0x3fdb32d632fe8ce6              # double 0.42497782688060537
	.quad	0x3fd55a5e68fc82c0              # double 0.33364067318511204
	.quad	0x3fe83cf84b1e9112              # double 0.75744261428602244
	.quad	0x3fde36a7adefd592              # double 0.47208587633152732
	.quad	0x3fa62a3bf2740d40              # double 0.043290971132615486
	.quad	0x3fe15b70d4153b57              # double 0.54241219923447204
	.quad	0x3fa4d3b3022581e0              # double 0.040677637111688147
	.quad	0x3fb5588ce9637468              # double 0.08338242242776206
	.quad	0x3fe211ee6282a614              # double 0.56468886604597168
	.quad	0x3fd894a63cf38494              # double 0.38407283737439823
	.quad	0x3fbcc8735fdbc0e8              # double 0.112433634665425
	.quad	0x3fe0d2e7f914dad6              # double 0.52574537895892592
	.quad	0x3fdcaa3fc94c72f8              # double 0.44789118440694109
	.quad	0x3feab377f594f29d              # double 0.83440778699112494
	.quad	0x3fedbdf553fec0a4              # double 0.92943827061937556
	.quad	0x3fe1162d2dfde759              # double 0.53395709021354343
	.quad	0x3fda17f4b3f6cecc              # double 0.40771215033167318
	.quad	0x3fccdbb80b7ed4a0              # double 0.22545528947162996
	.quad	0x3fd0f4eb3f7903c2              # double 0.26494866560465991
	.quad	0x3fd737f4a4d1d336              # double 0.36279026122729208
	.quad	0x3fe6df8b65305d9b              # double 0.7147881485315567
	.quad	0x3fe6336f6f991763              # double 0.69377872272955832
	.quad	0x3faad6b515bae360              # double 0.052419337179748338
	.quad	0x3fe4112036416069              # double 0.62709055516007794
	.quad	0x3fe8c4c9b2ff0413              # double 0.77402195892512038
	.quad	0x3fd9dcae81263496              # double 0.40409433948736628
	.quad	0x3fb01379274e6a88              # double 0.062797138305919487
	.quad	0x3fc41f1605929fa4              # double 0.15719867012125832
	.quad	0x3fd43d7e31f9c3e0              # double 0.31625323181566323
	.quad	0x3fe770f0590846d0              # double 0.7325364817536073
	.quad	0x3fd5911d068846e8              # double 0.33698201787875215
	.quad	0x3fd7dcb9c4bd15cc              # double 0.37284702503924616
	.quad	0x3fe9a3ceedf91afb              # double 0.80124613265147049
	.quad	0x3fdd54098fc58c7e              # double 0.45825423279001842
	.quad	0x3fbdcc571794a120              # double 0.11639923406312791
	.quad	0x3fe8f289b803863f              # double 0.77960668506802466
	.quad	0x3fe2efe9a4cb74ed              # double 0.59178621469950843
	.quad	0x3fc8036e0f9bb430              # double 0.18760467302436856
	.quad	0x3f750ee6a763f880              # double 0.0051411638180508534
	.quad	0x3fda85f67d6d7adc              # double 0.41442644356531644
	.quad	0x3fdc610af4e5b1fa              # double 0.44342302242037557
	.quad	0x3fe6d4bfc38f8f47              # double 0.71347034640755502
	.quad	0x3fdf36a4c531ff20              # double 0.48771018273690636
	.quad	0x3fa91546ec813790              # double 0.048990455980500447
	.quad	0x3fed6db51b9ee47f              # double 0.91964202303564935
	.quad	0x3fdae93f5122f63c              # double 0.42048628734105242
	.quad	0x3fe02a97046b4da7              # double 0.50519896376720375
	.quad	0x3fd9555d9be053fc              # double 0.39583530638020625
	.quad	0x3fec3d2971fb2695              # double 0.88246605169225012
	.quad	0x3fe997db8c2b263c              # double 0.79978730560942024
	.quad	0x3fcd55471e8585a8              # double 0.229164972212897
	.quad	0x3fe9ed8886f6f6d8              # double 0.81024576530736692
	.quad	0x3fcea81652cecc94              # double 0.23950461428976111
	.quad	0x3fe9e69614f0c379              # double 0.80939773645341895
	.quad	0x3fe7dc2259c29dff              # double 0.74562184840482348
	.quad	0x3fd04a40302fe336              # double 0.25453190522925995
	.quad	0x3fd1f0d1db2b2700              # double 0.28032347109966338
	.quad	0x3fd5506af05a6c34              # double 0.33303330871575842
	.quad	0x3fd65650c2d9c274              # double 0.34901827839261235
	.quad	0x3feb270a6f32cf39              # double 0.8485157176823811
	.quad	0x3fe36ddb5fdd61fd              # double 0.60716026996220729
	.quad	0x3fe070e9d2ebca89              # double 0.5137833709289491
	.quad	0x3fe828ccacd3cb3a              # double 0.75498040919624221
	.quad	0x3fd1303f2fca7222              # double 0.26856975237913805
	.quad	0x3fdb7d641d6df780              # double 0.4295282637975717
	.quad	0x3fe557cc5ee47289              # double 0.66696756871859109
	.quad	0x3fdf426734be50c6              # double 0.48842792654728517
	.quad	0x3fc8c8064974de40              # double 0.19360426508659323
	.quad	0x3fbf17d3814733c0              # double 0.12145730882839612
	.quad	0x3fefbf432ee3ffa4              # double 0.99209746511768459
	.quad	0x3fe206a2ded6bfee              # double 0.56331008456436193
	.quad	0x3feecb90cca04153              # double 0.96234931913390153
	.quad	0x3fde6fd37a3aa5b8              # double 0.47557532249865231
	.quad	0x3f27f8c44e43c000              # double 1.8288990316461806E-4
	.quad	0x3fe3ef76000d0d79              # double 0.62298107156713833
	.quad	0x3fd8db8f6ef7d850              # double 0.38840089642269948
	.quad	0x3fe19d773e8ace66              # double 0.55047189917827377
	.quad	0x3fea9446a307929b              # double 0.83060008851733202
	.quad	0x3fce1528d6e1f36c              # double 0.23502073757472475
	.quad	0x3fbf885ab4ec8c68              # double 0.12317435185518522
	.quad	0x3fea1c038d821a0a              # double 0.81591966284105522
	.quad	0x3fe7b2a1aa9c2ced              # double 0.74055560419347233
	.quad	0x3fe27339136c6057              # double 0.57656530183431698
	.quad	0x3fd372b061e51236              # double 0.30387506065406755
	.quad	0x3fe1f57628fde465              # double 0.56121356970028258
	.quad	0x3fdf8aaf041b5c28              # double 0.49283957863866812
	.quad	0x3fefb08fa7babd9e              # double 0.99030287513408033
	.quad	0x3fe79f159b4ebba5              # double 0.73816948255067827
	.quad	0x3fe33861435bca15              # double 0.60063231616942636
	.quad	0x3fa1186f1d240430              # double 0.03338954191895771
	.quad	0x3fdb16ebc69605fc              # double 0.42327398675124051
	.quad	0x3fd47af16f975d1c              # double 0.32000385186752722
	.quad	0x3fe92c44fd0fec3f              # double 0.78665399004183445
	.quad	0x3fee41512562caa9              # double 0.94547326375898877
	.quad	0x3fb4b6c9f9b61810              # double 0.080914138283418646
	.quad	0x3fd8c45610462d22              # double 0.38698340977926382
	.quad	0x3fe40657e95eef77              # double 0.62577434139482946
	.quad	0x3fa382ca4329fbf0              # double 0.038107224177103549
	.quad	0x3fc300d817856d6c              # double 0.14846326015945566
	.quad	0x3fe00665876f55e5              # double 0.50078083469514623
	.quad	0x3fc327ee8b526f50              # double 0.14965612223465508
	.quad	0x3fda505c2c42638c              # double 0.41115478822899187
	.quad	0x3fad47cc0d3fb790              # double 0.057188393227860179
	.quad	0x3fb94e016969e6f8              # double 0.098846519695054869
	.quad	0x3fe6de5c2a3a0f11              # double 0.71464355704708471
	.quad	0x3fd1ba78584f1e8c              # double 0.27700623153621318
	.quad	0x3fe50f1328a8fbe6              # double 0.65809019032883209
	.quad	0x3fae374fb962b7d0              # double 0.059015742664413673
	.quad	0x3fe62b130fe66e1f              # double 0.69275811295978318
	.quad	0x3fd21c2132dca980              # double 0.28296689955700316
	.quad	0x3fed8999a38781ff              # double 0.92304689349481339
	.quad	0x3fd3229dbfd0216c              # double 0.29898780566920524
	.quad	0x3fcc296fb1920f44              # double 0.22001453562199391
	.quad	0x3fd746d5a783ce2a              # double 0.36369840010522358
	.quad	0x3fd7cb89131d7954              # double 0.37179781786644139
	.quad	0x3fea0187fcbf2188              # double 0.81268691410609595
	.quad	0x3fe6aa9701c1495d              # double 0.70832395880487875
	.quad	0x3fecdf0f428ff22b              # double 0.90222895622679766
	.quad	0x3fbe076b077dd780              # double 0.11730069096469542
	.quad	0x3fdd7095c3ac692c              # double 0.45999664410341512
	.quad	0x3fd31c4377ecea68              # double 0.2986000701090803
	.quad	0x3f9884c6256c2380              # double 0.023943992647250223
	.quad	0x3fed5ed3ca238479              # double 0.91782559852812462
	.quad	0x3fc6d99e3b45fb20              # double 0.17851617712218459
	.quad	0x3fe26d6e44a32cab              # double 0.57585824399702312
	.quad	0x3fbe65b23a08f808              # double 0.11873926083441699
	.quad	0x3fdeedbb922172e6              # double 0.48326005240032399
	.quad	0x3fccae7c26a85730              # double 0.22407485854699294
	.quad	0x3fc44a4df620fbc0              # double 0.15851759450921854
	.quad	0x3fdbaa2fa6ad3022              # double 0.4322623374653195
	.quad	0x3fb506fed021d850              # double 0.08213799077370365
	.quad	0x3fd4d84a27f00bbc              # double 0.32570127391971559
	.quad	0x3fdd36305d063d32              # double 0.45643242916499382
	.quad	0x3fbb03aa74cf61d0              # double 0.10552468635376688
	.quad	0x3fe1ba1777407b57              # double 0.55396626750357825
	.quad	0x3fc0dec5722384c4              # double 0.13179843972378624
	.quad	0x3fe6ee29a9974982              # double 0.71657260058627537
	.quad	0x3fd0afd01e0c49b6              # double 0.2607307713925836
	.quad	0x3fef07f659f99b2b              # double 0.96972196171995983
	.quad	0x3fe5f4c2f0d2b934              # double 0.68612811122674211
	.quad	0x3fdc7b898602cca0              # double 0.44504011237149577
	.quad	0x3fc102323550d274              # double 0.13287952044779028
	.quad	0x3fe7a996547b3434              # double 0.73945156574484949
	.quad	0x3fe923a4d03e57d9              # double 0.78560105011524251
	.quad	0x3feaeee2d91d4f7f              # double 0.84166090398001348
	.quad	0x3fca9ae8c64b94f0              # double 0.20785245592484314
	.quad	0x3fdf3bb1b0d96e6e              # double 0.48801843901103481
	.quad	0x3f9a4739ad58ff80              # double 0.025662327962208575
	.quad	0x3fe93a2552e3ef85              # double 0.78834787549520569
	.quad	0x3fe46322976d3b6d              # double 0.6371014554550648
	.quad	0x3fc6bf640f800204              # double 0.17771578556859435
	.quad	0x3fd713a18f2b6e98              # double 0.36057318669711824
	.quad	0x3fe8031c34223644              # double 0.75037965948440232
	.quad	0x3fd3123c42a60844              # double 0.29798799999855796
	.quad	0x3fd6d6c002bae318              # double 0.3568573023472239
	.quad	0x3fa80d9fd426dbd0              # double 0.046978945395884986
	.quad	0x3fc9910a28a6de9c              # double 0.19973875985100598
	.quad	0x3fb33eec014b8f50              # double 0.075178861919593886
	.quad	0x3fee13d74595a450              # double 0.9399219855378167
	.quad	0x3feb971f97d0ab95              # double 0.86219768191709767
	.quad	0x3fe4547cc4cf4626              # double 0.6353134006441834
	.quad	0x3fe327b190903214              # double 0.59859541163456464
	.quad	0x3feccf0002bf5706              # double 0.90026855980497156
	.quad	0x3fe059bee5161e40              # double 0.51095528357922859
	.quad	0x3fb71c4fc1af7428              # double 0.090275749956575724
	.quad	0x3f91de82009a3e20              # double 0.017450362478994674
	.quad	0x3fd2c83ba04616de              # double 0.29347124721276241
	.quad	0x3fe2ac64dd5b2350              # double 0.58354418977351408
	.quad	0x3fd46129f055f12e              # double 0.31843040914806664
	.quad	0x3fe81755c392db8d              # double 0.75284851263028119
	.quad	0x3fe512b95d322b55              # double 0.65853565409029591
	.quad	0x3fb8c03af8235a30              # double 0.096683202343549323
	.quad	0x3fd3a62c3ef5e614              # double 0.30701738499155451
	.quad	0x3feb47b1654b31dc              # double 0.85250158103877593
	.quad	0x3fb960df641ae478              # double 0.099134408893307824
	.quad	0x3fe8fd0d20f1db09              # double 0.78089004930993255
	.quad	0x3fb5eb3bfb182870              # double 0.08562064056619234
	.quad	0x3fdc438bc1d51f2e              # double 0.44162267617183459
	.quad	0x3fdc553224f4f756              # double 0.44269994362899945
	.quad	0x3fdc8456d67e8c16              # double 0.44557734438620977
	.quad	0x3fe7c9a65e7cb015              # double 0.74336546377662904
	.quad	0x3fcc05a0192eb0b4              # double 0.21892167310341437
	.quad	0x3fdccb26e677161e              # double 0.4498994112621818
	.quad	0x3fd4b40cbdd71aac              # double 0.32348936595046029
	.quad	0x3fd01e071b118fa8              # double 0.25183274882715034
	.quad	0x3fe994d7fdebad2c              # double 0.7994193992030083
	.quad	0x3fb4f2a113b16ec0              # double 0.081827227886090093
	.quad	0x3fe57bd7d5d8db92              # double 0.67136756674777787
	.quad	0x3fee14dfdb0b0620              # double 0.94004814893577659
	.quad	0x3fec65a278e21b26              # double 0.88740657434468484
	.quad	0x3fe2137fb6da55cb              # double 0.5648802348466061
	.quad	0x3fe1bf425c674454              # double 0.55459707305466077
	.quad	0x3fe0054f9edb058c              # double 0.50064831758952399
	.quad	0x3fe414e3fe6442d7              # double 0.62755012212627548
	.quad	0x3fd8d5eb6afe7cfc              # double 0.38805661629335453
	.quad	0x3fec6d729b35060f              # double 0.88836031259433124
	.quad	0x3fbdb51338cf9a20              # double 0.11604423653589224
	.quad	0x3fb57b80b26e5c90              # double 0.083915751993446585
	.quad	0x3fe2995f34764d1e              # double 0.58122215506083186
	.quad	0x3fdbf74906868cb2              # double 0.43696809422744842
	.quad	0x3fcab2fbfc3d5038              # double 0.20858716789609999
	.quad	0x3fe98ebe60643d2f              # double 0.79867476297832762
	.quad	0x3fbd2032bfdf5d70              # double 0.11377255615604098
	.quad	0x3fe7e91a7ea7811e              # double 0.74720501649065674
	.quad	0x3fe2ad5cf2f4c536              # double 0.58366248562211953
	.quad	0x3fe7439b69acc5ef              # double 0.72700281753185247
	.quad	0x3fe37158ad913c6b              # double 0.60758623027676373
	.quad	0x3fd1e3790a443d06              # double 0.27950883867829679
	.quad	0x3fd57bf2c27320b6              # double 0.33569020261030447
	.quad	0x3fcaecda83ee57c0              # double 0.21035319749779369
	.quad	0x3fb749eea7eb0840              # double 0.090971866603497098
	.quad	0x3fd949b17718873c              # double 0.39512287741137064
	.quad	0x3fe22e78dbc63e50              # double 0.56817286419568269
	.quad	0x3fc5dc916e287dd0              # double 0.17079370383087999
	.quad	0x3fc4e8325342b0bc              # double 0.16333607736067346
	.quad	0x3fe6900ffe4e35b7              # double 0.70508575123829231
	.quad	0x3fd7aa3b6b18e890              # double 0.36976514300079888
	.quad	0x3fcb9a4898860b3c              # double 0.21564586112443773
	.quad	0x3fd6a1993bb0a7ac              # double 0.35361319378955147
	.quad	0x3fde3263ea03ef56              # double 0.47182557919562862
	.quad	0x3fef4a960d7dfc60              # double 0.97785475382978503
	.quad	0x3fe26de09f9ea6b3              # double 0.57591277290085541
	.quad	0x3fbc1b6b46ef4810              # double 0.10979338151744877
	.quad	0x3fd0aa069e408e70              # double 0.2603775544577962
	.quad	0x3fdb48aae0c04e56              # double 0.42631027172430913
	.quad	0x3fddb0f2ae7fb7c2              # double 0.46392504731090523
	.quad	0x3fdbfecde6b7fcb4              # double 0.43742702036974923
	.quad	0x3fdc468eb1e62c76              # double 0.44180648205719508
	.quad	0x3fdf5cfb1dc553d6              # double 0.49005010516458236
	.quad	0x3fe7dc0d79090b7a              # double 0.7456118930789295
	.quad	0x3fe422dfefcb52f1              # double 0.6292571719628467
	.quad	0x3fd7a2ae96a51896              # double 0.36930432044426575
	.quad	0x3fee5f1ba1d97521              # double 0.94910985575885232
	.quad	0x3fe2849f5ad7c70a              # double 0.57868926756620565
	.quad	0x3fbc2b206d7a99e0              # double 0.1100330607683655
	.quad	0x3fc05c7c4198c3ac              # double 0.12782242968526469
	.quad	0x3fd9b507a279bdea              # double 0.40167418352845508
	.quad	0x3fd04e5e3ff979bc              # double 0.25478321311484442
	.quad	0x3fd69ec5fffb928a              # double 0.35344076155005466
	.quad	0x3fd6d472c118a5b8              # double 0.35671681267794098
	.quad	0x3feb8b8f1e3fe413              # double 0.86078601749534511
	.quad	0x3fed3a2dad703f18              # double 0.91335185885143044
	.quad	0x3fd868443c2da188              # double 0.38136392475873793
	.quad	0x3fcb5156631777dc              # double 0.21341972197018222
	.quad	0x3fe28abf8a6590fd              # double 0.57943703680623992
	.quad	0x3fe904f5026c85c6              # double 0.78185511086865556
	.quad	0x3fd98d922d58127a              # double 0.39926580837371939
	.quad	0x3fa2e356b1d7c160              # double 0.036890706261945239
	.quad	0x3fc8a878fdd362a4              # double 0.19264137643655943
	.quad	0x3fe5e6e58da92af2              # double 0.68443563144805197
	.quad	0x3fe8cb34854a0d04              # double 0.77480531724032219
	.quad	0x3fdce195e999fe04              # double 0.45126865208291655
	.quad	0x3fed9b1d6cd1c8f9              # double 0.92518492940715114
	.quad	0x3fea30b0e93309e0              # double 0.81844373270751802
	.quad	0x3fddc5eaad48f93a              # double 0.46520487711304137
	.quad	0x3feb7d0a1e6ec0c8              # double 0.85901361411927102
	.quad	0x3fed62b4a8bb79be              # double 0.91829903560192583
	.quad	0x3fc4338984b0ba74              # double 0.15782278994580035
	.quad	0x3fe7e98451a0336f              # double 0.74725547735725495
	.quad	0x3fe47df38566864a              # double 0.64037490896971261
	.quad	0x3fefd7cdeb526a74              # double 0.99509330712619581
	.quad	0x3feacd3305b115d5              # double 0.83754874335925911
	.quad	0x3fed0de27adc8968              # double 0.90794490810757811
	.quad	0x3fea3d3347ca79c3              # double 0.81997074147857807
	.quad	0x3fefbc66b9b17603              # double 0.99174820202068791
	.quad	0x3feff9434a3ba189              # double 0.99917759417171325
	.quad	0x3fe02b1418a4e8e4              # double 0.50525860608402384
	.quad	0x3f8743dde8b3b4c0              # double 0.011359914459229237
	.quad	0x3fed6029abb9297c              # double 0.91798862018303806
	.quad	0x3faae84687dc42a0              # double 0.052553371510048352
	.quad	0x3fcbd7c1c08fd80c              # double 0.21752187635837605
	.quad	0x3fd2b5c4be8e4b7e              # double 0.29234427079170888
	.quad	0x3fcfba6a0e9caf6c              # double 0.2478764125202092
	.quad	0x3fca36a1f6ed481c              # double 0.20479225689865721
	.quad	0x3fd8e1d17fdc3ec2              # double 0.38878285871849638
	.quad	0x3fdbc30cfcba79d2              # double 0.43377995186338325
	.quad	0x3fee2164fe1641bc              # double 0.94157647730212756
	.quad	0x3fc1cea7d522c7d4              # double 0.13911912829422468
	.quad	0x3fcc979aef50deec              # double 0.22337662396761659
	.quad	0x3fe5ada814e58e08              # double 0.67744831162821217
	.quad	0x3fe6bfd3a2c96890              # double 0.71091634554183436
	.quad	0x3fbe68068736c350              # double 0.11877480317231215
	.quad	0x3fd482f463711ec0              # double 0.32049283705826426
	.quad	0x3fc53a040155dd30              # double 0.16583299699025522
	.quad	0x3fe472f8721d6c30              # double 0.63903448379585903
	.quad	0x3fe8b9b540fadfcc              # double 0.7726694363727744
	.quad	0x3fe1834e42741f6f              # double 0.54727852801532417
	.quad	0x3fe120951c325211              # double 0.53522735125676679
	.quad	0x3fd092892ca18f8a              # double 0.2589438377237846
	.quad	0x3fdf19a9b7dc67d6              # double 0.48594134287998025
	.quad	0x3fbb042c93a8b8d8              # double 0.10553244214017654
	.quad	0x3fe3b6d5286b7899              # double 0.61606843847745829
	.quad	0x3fc098bdcdba93d0              # double 0.1296612982306713
	.quad	0x3fe5e3c6db92e3d3              # double 0.68405478368287687
	.quad	0x3fd7ca75ca1001e8              # double 0.37173218472164971
	.quad	0x3fe30ff995f789c8              # double 0.59570006647509732
	.quad	0x3fe69e0d34102f2d              # double 0.70679340523336054
	.quad	0x3fa32c339f800a30              # double 0.0374466068460787
	.quad	0x3fecef3d0d7134ab              # double 0.90420391679221745
	.quad	0x3fe94288e2476c0b              # double 0.78937191195598311
	.quad	0x3feddc7f14f4559c              # double 0.9331660660997616
	.quad	0x3fa575f7747d36e0              # double 0.041915638894904239
	.quad	0x3fe066a1c6fc9a05              # double 0.51252831329912907
	.quad	0x3fd5454787d954c0              # double 0.33235348001955956
	.quad	0x3fe30e974fa52cac              # double 0.59553113513665812
	.quad	0x3fc4124b98671b3c              # double 0.1568083280710314
	.quad	0x3fd1e84b2580bcda              # double 0.27980307257071291
	.quad	0x3fd6043a0caf63d2              # double 0.34400798071652361
	.quad	0x3fe3b525f9abf749              # double 0.61586283458721269
	.quad	0x3fedda9f6b7b3763              # double 0.93293734543270224
	.quad	0x3fe3c293a07de2f1              # double 0.6175020346264245
	.quad	0x3fc1ae8e922cdfd4              # double 0.13813955438104009
	.quad	0x3fe882be1abe553a              # double 0.76595978949868671
	.quad	0x3fcbbf7aee3f0e78              # double 0.21678101189728571
	.quad	0x3fe55ab07cca22b3              # double 0.6673204839035719
	.quad	0x3fa33573debd3200              # double 0.037517186107468348
	.quad	0x3fd7a3131cc0b6ca              # double 0.36932828719987454
	.quad	0x3f748d2ee258e700              # double 0.0050174552357533653
	.quad	0x3feee39d224bfb65              # double 0.96528488825411484
	.quad	0x3fad7c1467a4f4c0              # double 0.057587278034114231
	.quad	0x3fe43ced3ca0521e              # double 0.63243734208169022
	.quad	0x3fe771547a952417              # double 0.73258422796164069
	.quad	0x3fe9add8f60b2b7c              # double 0.80247161918065001
	.quad	0x3fe64fbc81fb28c3              # double 0.69723344218189032
	.quad	0x3fe5b09ca1b3cb0f              # double 0.6778090627907164
	.quad	0x3fe316b0e62155c7              # double 0.59651989886577261
	.quad	0x3fb57abb2524a060              # double 0.083903976982243389
	.quad	0x3fd4e9ea7bf533a6              # double 0.32677709679847522
	.quad	0x3fd389f7a3d4e674              # double 0.30529585837539419
	.quad	0x3fe7a3f42768b798              # double 0.73876388260918002
	.quad	0x3fdc6e1e8366d868              # double 0.44422114212227948
	.quad	0x3fe33db1f77a756c              # double 0.60128115020385797
	.quad	0x3fe18d9b005771ff              # double 0.54853582445826976
	.quad	0x3fc5fe40ffe9cb84              # double 0.17182171340718011
	.quad	0x3fd8a937dbe8c654              # double 0.38532825923457392
	.quad	0x3fe7f1d69a6c1283              # double 0.74827127609803801
	.quad	0x3fb7919432b801f8              # double 0.09206510771037546
	.quad	0x3fa27426d73a5c60              # double 0.036042417309709363
	.quad	0x3febb8e865a9436a              # double 0.86632175307941606
	.quad	0x3fce260f7685029c              # double 0.2355365112980693
	.quad	0x3fea1201e76fa478              # double 0.81469817354549345
	.quad	0x3fef40531d56d90c              # double 0.97660213213274138
	.quad	0x3fe4a08e2c1f6033              # double 0.64459904306114024
	.quad	0x3f99a2c189247c00              # double 0.025034927363886794
	.quad	0x3f7c05d520d39b80              # double 0.0068414998361053803
	.quad	0x3feb9ff38c26441a              # double 0.8632753121656862
	.quad	0x3fbbc4398d54ba50              # double 0.10846290302718242
	.quad	0x3fd9516764137d52              # double 0.39559349797305743
	.quad	0x3fd5a28ae14874be              # double 0.33804580688758878
	.quad	0x3fd4e6fb84846564              # double 0.32659805241708839
	.quad	0x3fb36a832ec00790              # double 0.075844000733950034
	.quad	0x3fc72051f5a98454              # double 0.18067383284781846
	.quad	0x3fe7574fab995d05              # double 0.72940810695118385
	.quad	0x3fcf0b823f39b3d0              # double 0.24253872000863774
	.quad	0x3fcf32573a8753c8              # double 0.24372377736895445
	.quad	0x3fd0d72a55c729fa              # double 0.26313265206104541
	.quad	0x3fe76d953742ad7d              # double 0.73212681572969951
	.quad	0x3fe6d8e7c4cd49d2              # double 0.71397770345566358
	.quad	0x3fe1c30506a152f8              # double 0.5550561074729492
	.quad	0x3fe22376c1938a27              # double 0.56682908828617407
	.quad	0x3fe5756efd880909              # double 0.67058515088891213
	.quad	0x3fc29e5b53acdb38              # double 0.14545766435340979
	.quad	0x3fe64e442bfea5ee              # double 0.69705399124830847
	.quad	0x3fc2b6718014e090              # double 0.14619272951108941
	.quad	0x3fe93a87f40ede8c              # double 0.7883949057349624
	.quad	0x3fe5bb0547f8a365              # double 0.67907966668017805
	.quad	0x3fd4878cdf23c814              # double 0.3207733325099309
	.quad	0x3fe1135cd8fa7708              # double 0.5336136091097794
	.quad	0x3fd1163348144248              # double 0.26697999991396104
	.quad	0x3fe7fd07ba51da57              # double 0.74963747397016334
	.quad	0x3fe3618a4008b25a              # double 0.6056567431128983
	.quad	0x3fec067f5be83101              # double 0.87579315138421532
	.quad	0x3fe76842dc219324              # double 0.73147719377866283
	.quad	0x3fd285f179e480c0              # double 0.28942524818013382
	.quad	0x3fe0348f81304e20              # double 0.50641608459631371
	.quad	0x3feb4f8c3f4cd5a2              # double 0.85346042979533743
	.quad	0x3fd875609cc1c4c0              # double 0.38216414745609129
	.quad	0x3fed056227c49edf              # double 0.90690715567776781
	.quad	0x3fe3ee5c46e1884c              # double 0.62284673541967939
	.quad	0x3fd1200d2a997b56              # double 0.26758126411543992
	.quad	0x3fd06e8c5aea1d5c              # double 0.2567473304593102
	.quad	0x3fc5f1fd6cbb1344              # double 0.17144744691008829
	.quad	0x3fcf844aa6fd7cb4              # double 0.24622471956079084
	.quad	0x3f917878c92559a0              # double 0.017061126019450534
	.quad	0x3fe210060265c785              # double 0.56445599048878192
	.quad	0x3fdc53aec52cddce              # double 0.44260758643528397
	.quad	0x3fe82b555d370719              # double 0.75528972822232554
	.quad	0x3fc50325b51b365c              # double 0.16415854781228034
	.quad	0x3f819bd9bb57fec0              # double 0.0085980425164956519
	.quad	0x3fdd3b5a557f819c              # double 0.45674761151715315
	.quad	0x3feaa9938d516c32              # double 0.83320024110014956
	.quad	0x3fedac5163e77bc3              # double 0.92728490364594796
	.quad	0x3fb594b310aca460              # double 0.084300223894972159
	.quad	0x3fe7c9e57c464e2d              # double 0.74339556000126594
	.quad	0x3fe14b31d79835a7              # double 0.54042904003442949
	.quad	0x3fe619f285f763bd              # double 0.69066740193658627
	.quad	0x3fd31b62d2b11fb0              # double 0.29854651046161518
	.quad	0x3fd26ee7dc104ff2              # double 0.28801914682958263
	.quad	0x3feb61ad8f259d91              # double 0.85567357977281422
	.quad	0x3fa642021bfe8d70              # double 0.043472352902678035
	.quad	0x3fe614568b32b47a              # double 0.68998267352220854
	.quad	0x3fdc8b472690c07a              # double 0.44600085035472825
	.quad	0x3fa867a4aa06c2c0              # double 0.047665735011269472
	.quad	0x3feea34fea9e1a41              # double 0.95743556808231045
	.quad	0x3fe16f60ad74de3f              # double 0.54484590414262601
	.quad	0x3fca98a7fe5a5194              # double 0.20778369826861065
	.quad	0x3fe4757f417a9aaa              # double 0.63934290684558914
	.quad	0x3fe69560457c78e2              # double 0.70573438235785724
	.quad	0x3fd16e430008aec8              # double 0.27235484126388743
	.quad	0x3fd1ad51af2369e2              # double 0.27620355704644173
	.quad	0x3fec5ed0483876d9              # double 0.88657392602518847
	.quad	0x3fbe5a274c32c060              # double 0.11856313333805835
	.quad	0x3feb8e0b51bb0f1a              # double 0.86108938181903061
	.quad	0x3fc26835a4222690              # double 0.14380522264791695
	.quad	0x3fdc53663650328a              # double 0.4425902872469939
	.quad	0x3fe669181f1f7d80              # double 0.70032888487541811
	.quad	0x3fd9de7830dd51a2              # double 0.40420346042562916
	.quad	0x3fe7fa9cb8e8f6fa              # double 0.74934230914342881
	.quad	0x3fdfd8f088e455c8              # double 0.49761594169953272
	.quad	0x3fb0c71ce8878be0              # double 0.065538222093479259
	.quad	0x3fca26054f330b98              # double 0.20428530089529029
	.quad	0x3fd5634e10f12d22              # double 0.33418609289647538
	.quad	0x3fc61042994ef73c              # double 0.17237122045292519
	.quad	0x3fcea0aac915a7b8              # double 0.23927817171653287
	.quad	0x3fd376347b212fce              # double 0.30408966087702261
	.quad	0x3fefb0cc74509e61              # double 0.99033186643368875
	.quad	0x3fe408078d951a62              # double 0.62598016407794099
	.quad	0x3fcc7420b71c17bc              # double 0.22229393902688155
	.quad	0x3fbcf82b41197ea8              # double 0.11316175784440452
	.quad	0x3fd2bc53352538a4              # double 0.29274444761257201
	.quad	0x3fceff3237032f28              # double 0.24216296850351537
	.quad	0x3fe3d33cb09602da              # double 0.61953577508401314
	.quad	0x3fe8d553a9e585e9              # double 0.77604087050366133
	.quad	0x3fd2a7ab5d5c7f80              # double 0.29148372762028174
	.quad	0x3fefa5470af55637              # double 0.9889254774122439
	.quad	0x3feea8ccca9ee2ff              # double 0.9581054646906465
	.quad	0x3fdbb56f30a2f3f2              # double 0.43294887303983309
	.quad	0x3fb20de5048188d8              # double 0.070524514770599622
	.quad	0x3fbe857121ceffa8              # double 0.11922366214184754
	.quad	0x3feae716fd0be91b              # double 0.84070920394086401
	.quad	0x3fefad8212266a11              # double 0.98993018670018007
	.quad	0x3fd18eb7feaf0088              # double 0.27433585998006338
	.quad	0x3fefb8f05f1284d5              # double 0.99132555550400047
	.quad	0x3fe9d593cf0b98a3              # double 0.80732145727667548
	.quad	0x3feb7ba04f26cd81              # double 0.85884108981410645
	.quad	0x3fd3ec9f2a1c1d96              # double 0.31131724464690913
	.quad	0x3fe4d1b1e0ad9911              # double 0.65059751398510646
	.quad	0x3feb86cfdd91f53c              # double 0.86020653987330986
	.quad	0x3fef8170d8a29b72              # double 0.98455087958869414
	.quad	0x3fed15a654c961be              # double 0.90889278945819973
	.quad	0x3fceeee1960bcdac              # double 0.24166507555456229
	.quad	0x3fe2a5cc792cc24e              # double 0.5827391020485011
	.quad	0x3fe20082d943abfe              # double 0.56256239351694126
	.quad	0x3fe93af23790f456              # double 0.78844557621745071
	.quad	0x3fd4a96e580501c2              # double 0.32284124942455261
	.quad	0x3f96987418355020              # double 0.022065938928179318
	.quad	0x3fec707b4f53d17a              # double 0.88873067372928394
	.quad	0x3fab8f4a9eaaa080              # double 0.053827602261038443
	.quad	0x3fd405e025bda88a              # double 0.31285861669187709
	.quad	0x3fd2b0a2ef907cb6              # double 0.29203103442155098
	.quad	0x3fd9b924846aa7a6              # double 0.40192521029768569
	.quad	0x3fc7ee21dee9d144              # double 0.18695472130242241
	.quad	0x3fd7d76d244247e4              # double 0.37252357998761298
	.quad	0x3fe429892bb2f5b7              # double 0.63007029089901934
	.quad	0x3fc4522d1430ce94              # double 0.15875781522628485
	.quad	0x3fc42cb739fa6ce4              # double 0.15761461573570223
	.quad	0x3fe37baa2b35664d              # double 0.60884579123666926
	.quad	0x3fb296383621d408              # double 0.072604668823103791
	.quad	0x3f8bad7e8908de00              # double 0.01351450782486463
	.quad	0x3fe123de521a3f87              # double 0.53562847171450378
	.quad	0x3fe4f2cda4ff4060              # double 0.65463907457343495
	.quad	0x3fe564fecb9c0012              # double 0.66857852714020027
	.quad	0x3fe6e8de77c566ff              # double 0.71592639344018483
	.quad	0x3fe6535bd6cfe0a3              # double 0.69767562823746621
	.quad	0x3fe6b25244a76339              # double 0.7092677441497478
	.quad	0x3fee74c32dbfd84d              # double 0.95175322471073687
	.quad	0x3fc374581cccb6d8              # double 0.15198804289086953
	.quad	0x3fec0b9ae3e489e5              # double 0.87641663084314969
	.quad	0x3f930d8d804cf400              # double 0.018606387096259169
	.quad	0x3fd73382442e8890              # double 0.36251885088325597
	.quad	0x3fef2c36795af91e              # double 0.97414706899852255
	.quad	0x3feac494b8b7231f              # double 0.83649669720861997
	.quad	0x3fde8d492a4347f4              # double 0.47737340094783964
	.quad	0x3fd489e215175d66              # double 0.3209157186479018
	.quad	0x3fe5b9af5e3fd69d              # double 0.67891662986831458
	.quad	0x3fd5b230ab487f9a              # double 0.33900086142420494
	.quad	0x3fe7dca536cb673f              # double 0.7456842489438954
	.quad	0x3fe1e381e8f0f0e7              # double 0.55902190681765951
	.quad	0x3fe38b6ddee3f317              # double 0.61077016385351868
	.quad	0x3fdea1f1a20bd6a8              # double 0.47863426995113878
	.quad	0x3fd586d277f0ff18              # double 0.33635389054323772
	.quad	0x3fe596c33802479b              # double 0.67465363444556503
	.quad	0x3fd4c6b314603446              # double 0.32462765683959949
	.quad	0x3fcc5edd16f8ed94              # double 0.22164500829408651
	.quad	0x3fe86aa63db844e3              # double 0.7630187230553499
	.quad	0x3fd0a74783ef8b72              # double 0.26020992168758206
	.quad	0x3fd291e93dfcb23c              # double 0.29015570691516124
	.quad	0x3fd9866e2a1863d8              # double 0.39882997618547966
	.quad	0x3fb7eecae83a4798              # double 0.093487436004834001
	.quad	0x3fe3f48bf23458d7              # double 0.62360188775599112
	.quad	0x3fecfce78e291188              # double 0.90587213292796864
	.quad	0x3fd5f8aff1658fce              # double 0.3433036668195627
	.quad	0x3fd7c685453956aa              # double 0.37149173507837452
	.quad	0x3febe89a598cc158              # double 0.87214391222191079
	.quad	0x3fec70cf693b61a7              # double 0.88877077630154566
	.quad	0x3fef5300a2bc072d              # double 0.97888213905409815
	.quad	0x3feead1d725c57c8              # double 0.95863220535351789
	.quad	0x3fe8dd17edc1177a              # double 0.7769889491689661
	.quad	0x3fec1799a04fac1c              # double 0.87788087187562124
	.quad	0x3f990d67e949e1e0              # double 0.02446520196323998
	.quad	0x3fe53a113992f68c              # double 0.66333829159676005
	.quad	0x3f9f5b0d6fd0ce20              # double 0.030620775174794557
	.quad	0x3fc02ba7b2973c94              # double 0.12633224697353695
	.quad	0x3f935fa75b6c8360              # double 0.018919577555723932
	.quad	0x3fc99e33de6ba4e8              # double 0.20014046059012647
	.quad	0x3fe67aef957c0e4b              # double 0.70250682064256276
	.quad	0x3fd38c18a2584bfa              # double 0.30542579511637735
	.quad	0x3fb1c8b9e2d53cd0              # double 0.069469087485447334
	.quad	0x3fe03d09373990aa              # double 0.50745068346124822
	.quad	0x3fedb4a57c12ac85              # double 0.92830156548497256
	.quad	0x3fef21e015f883c4              # double 0.97288517275966812
	.quad	0x3f973c3ba85428e0              # double 0.022690708302470664
	.quad	0x3fe3698f94c2a045              # double 0.60663584761369604
	.quad	0x3fed1164823d12e5              # double 0.90837312161656014
	.quad	0x3fe9145265f04dda              # double 0.78373069677257523
	.quad	0x3fcc86531a725964              # double 0.22284926215497614
	.quad	0x3fd46c2bbd8f4bb4              # double 0.31910222541517475
	.quad	0x3fdf6be8edc5a81e              # double 0.49096129627162266
	.quad	0x3fc1d96b2728d834              # double 0.13944758808219293
	.quad	0x3fed5eeb7073ab5e              # double 0.91783687556504012
	.quad	0x3fccc3b2c5c2780c              # double 0.22472223907692557
	.quad	0x3fa42aa75342e440              # double 0.039387921251041735
	.quad	0x3fc2aa48ab82b7f0              # double 0.14582165121595336
	.quad	0x3fda538abf6415da              # double 0.41134899797938618
	.quad	0x3fe04bda5eb7bcdc              # double 0.50925940036350026
	.quad	0x3fc1a13874a7cd10              # double 0.13773256012027746
	.quad	0x3fdb18d8ecda301a              # double 0.42339156274897649
	.quad	0x3fe066ead745a631              # double 0.51256315274549114
	.quad	0x3fc8d328fa125938              # double 0.1939440938046546
	.quad	0x3fb997d35eeb1728              # double 0.099972925828379133
	.quad	0x3fe654d24fb245bc              # double 0.69785419049929187
	.quad	0x3fd5c7c43be65886              # double 0.34031778192127893
	.quad	0x3fe88668c7519914              # double 0.76640738419954113
	.quad	0x3fe8db0673e32935              # double 0.77673647531745493
	.quad	0x3fdd9e095808794c              # double 0.46277078244192604
	.quad	0x3fdcfb7e6e85ad1a              # double 0.45284996789151111
	.quad	0x3fa693195566b680              # double 0.044091025996164213
	.quad	0x3fe7e6595ff0614d              # double 0.74686878908236454
	.quad	0x3f80c2cf9af4e5c0              # double 0.0081840724147806964
	.quad	0x3fea77a2d307fe6b              # double 0.82710400788341809
	.quad	0x3fe95af1dde5d6c7              # double 0.79235165919700357
	.quad	0x3fd1a41f6b92f700              # double 0.27564225678712262
	.quad	0x3fdd34c62bd8f51c              # double 0.45634607583981945
	.quad	0x3fd652396508629e              # double 0.34876856676559409
	.quad	0x3fce47a64fb82f98              # double 0.23656157391121435
	.quad	0x3fe6b6da8e737c98              # double 0.70982101271137577
	.quad	0x3f9f4ae2ebe54060              # double 0.030559106491012122
	.quad	0x3fc817f73195f534              # double 0.18823137208156882
	.quad	0x3fee5162a52aa865              # double 0.94743473300082981
	.quad	0x3fddbd471e219520              # double 0.46467760031221594
	.quad	0x3fd63a7099d80c44              # double 0.34731688522169102
	.quad	0x3fdd9bf171e1f0a8              # double 0.46264301415772957
	.quad	0x3fe463630bb79198              # double 0.63713218964089702
	.quad	0x3fc8b45a004dd918              # double 0.1930038930401643
	.quad	0x3fe182b1055b271e              # double 0.54720355077845162
	.quad	0x3fde4105cd9d2364              # double 0.47271866874193891
	.quad	0x3fe45fc49ca59afd              # double 0.63669043154808913
	.quad	0x3fee1021c458e40e              # double 0.93946922635143593
	.quad	0x3fe3896022956ff4              # double 0.61051947359692216
	.quad	0x3fb0e8cfc0845600              # double 0.066052422047810921
	.quad	0x3fddcb6ed91b7d88              # double 0.4655415649594592
	.quad	0x3fdc6f69d305c5e0              # double 0.44430013282462077
	.quad	0x3fb30640be6779d8              # double 0.074314161763573749
	.quad	0x3fefbe19f126cab3              # double 0.99195572948368349
	.quad	0x3fee2f11a9ba3587              # double 0.94324572706106913
	.quad	0x3fe983a0e798385f              # double 0.79731793626138969
	.quad	0x3fe2ed0d5b277b70              # double 0.59143703273353587
	.quad	0x3fed4d58b1b840af              # double 0.91569170676122791
	.quad	0x3fe133eccff6d75a              # double 0.53758850687038806
	.quad	0x3fa3ddcb0e799cd0              # double 0.038801522747968442
	.quad	0x3fbc1a49c9ee0370              # double 0.10977612667012493
	.quad	0x3fdf5eec16b8a30c              # double 0.49016859263296975
	.quad	0x3fe7b51adf219e8a              # double 0.74085753994309411
	.quad	0x3fec937d8aead69b              # double 0.89300419933597952
	.quad	0x3fd8d964674152c4              # double 0.38826856692803013
	.quad	0x3fa810d7ac828e40              # double 0.047003497894618551
	.quad	0x3f9539f598e61940              # double 0.020728909928515948
	.quad	0x3fe4ae43fb199a6a              # double 0.64627265017481972
	.quad	0x3fafa242764e3830              # double 0.061784817639918166
	.quad	0x3fe4304c92e52e78              # double 0.63089588823773024
	.quad	0x3fc44b025f95ec8c              # double 0.15853910128848658
	.quad	0x3fef4e34e0dd0fe9              # double 0.97829669874817881
	.quad	0x3fc04a0e123ef730              # double 0.1272599782077406
	.quad	0x3fe7251fe2646ff3              # double 0.72328180520298557
	.quad	0x3fe00fda44f7a12b              # double 0.50193513364960063
	.quad	0x3fb389ee84b3c9c0              # double 0.076323420904180317
	.quad	0x3fe5cde1362fa8aa              # double 0.68138180335269749
	.quad	0x3fe99eb3918b6b46              # double 0.800622734324272
	.quad	0x3fa57ab3df249570              # double 0.041951771725773024
	.quad	0x3fccf706f3892cac              # double 0.22628867045782408
	.quad	0x3fe3ce59fc5fb495              # double 0.61893939296500611
	.quad	0x3fd5719164ac5242              # double 0.3350566371093785
	.quad	0x3fee5b1777d68e3e              # double 0.94861958890800913
	.quad	0x3fee05458074c50a              # double 0.93814349259460639
	.quad	0x3fe5fe80f167bd3b              # double 0.68731734418353285
	.quad	0x3fd6e1bbd1b69944              # double 0.35752768974125027
	.quad	0x3feace9c03a971dc              # double 0.83772087779248805
	.quad	0x3fee5d9235c21fbd              # double 0.9489222574202284
	.quad	0x3fcbdbfd68f26b80              # double 0.2176510584293645
	.quad	0x3fec170065d4d379              # double 0.8778078068631735
	.quad	0x3fe652706a42803a              # double 0.69756336931096219
	.quad	0x3fd196704823ba7a              # double 0.274807043503564
	.quad	0x3fdc36133cdecd92              # double 0.44080048508041003
	.quad	0x3fed47be463715e6              # double 0.9150077220335191
	.quad	0x3fd3004a188192da              # double 0.29689266579798146
	.quad	0x3fe8f490072d299a              # double 0.77985383416789777
	.quad	0x3fc5a98106f24d88              # double 0.1692353519361911
	.quad	0x3fd06dd4b3226dea              # double 0.25670354360201364
	.quad	0x3feee7d931c9c203              # double 0.96580180858842401
	.quad	0x3fdec8d9555c3282              # double 0.48100884757949569
	.quad	0x3fd16df3888a2132              # double 0.27233589490835464
	.quad	0x3fe7e389fc3889ff              # double 0.74652575742612715
	.quad	0x3fdd86019e1a937a              # double 0.46130409660172911
	.quad	0x3fe927f6ef8338bc              # double 0.78612849025537157
	.quad	0x3f9d9d65150aa040              # double 0.02892072621276065
	.quad	0x3fef14aad7184fd9              # double 0.971272869212494
	.quad	0x3fd3761971d62ef0              # double 0.30408321492062296
	.quad	0x3fd95b2137aac05e              # double 0.39618711887579205
	.quad	0x3fba127774cee790              # double 0.10184427835238652
	.quad	0x3fe786a3b905b3af              # double 0.73518549096262642
	.quad	0x3fd258e915292788              # double 0.28667666498642363
	.quad	0x3fc559f1024b3a00              # double 0.16680729496006563
	.quad	0x3fdb5f0b256acf20              # double 0.42767599729562455
	.quad	0x3fecd56f7f30e13e              # double 0.90105414239864223
	.quad	0x3fefaa234ed1b4ca              # double 0.98951878923767222
	.quad	0x3fd83239d48f4926              # double 0.37806554563316508
	.quad	0x3fe3a9e946c5ed4b              # double 0.6144911176956297
	.quad	0x3fe6e1ccc252d70c              # double 0.71506345704867291
	.quad	0x3fcfaab3147e6f64              # double 0.24739683628728948
	.quad	0x3fe20f444b053422              # double 0.5643636193505055
	.quad	0x3fe3b343145172c8              # double 0.61563257187261744
	.quad	0x3fc73e9d64c33e30              # double 0.18159835262348301
	.quad	0x3fc45f6117d800bc              # double 0.15916074432607796
	.quad	0x3fe8603067a03265              # double 0.76174183120162964
	.quad	0x3fcabea9d6fcc4a4              # double 0.20894358632498211
	.quad	0x3fe1209644137168              # double 0.53522790237506701
	.quad	0x3fd50d61aa83d80e              # double 0.32894174243790608
	.quad	0x3fd808769850e4c2              # double 0.37551655649765447
	.quad	0x3fed4c27e8e7531f              # double 0.9155463742159532
	.quad	0x3fcd34afeb9c32d0              # double 0.2281703854026973
	.quad	0x3fea11348d329b82              # double 0.81460025384591028
	.quad	0x3fcfd917df1b1198              # double 0.24881266015848946
	.quad	0x3fab7e7007ff5a10              # double 0.053699017502072732
	.quad	0x3fef53afa4c4bedf              # double 0.97896558934550259
	.quad	0x3fecf63bfa2ae7dd              # double 0.90505789624080146
	.quad	0x3fc6dcbb064c9088              # double 0.17861116225788387
	.quad	0x3fdb5372bed86582              # double 0.42696827542530269
	.quad	0x3fd8dbbf4a7e8360              # double 0.3884123065454812
	.quad	0x3fbdb41b69434000              # double 0.11602946586504004
	.quad	0x3fc0e7dfcadd296c              # double 0.13207623868431584
	.quad	0x3fe12107d8b6db6a              # double 0.53528206183442006
	.quad	0x3fe3b9daed73ca00              # double 0.61643740060236496
	.quad	0x3fcb9d354ea3ca5c              # double 0.21573511447748472
	.quad	0x3fcf2092101f13c0              # double 0.24318147456338401
	.quad	0x3fd6290548f51b32              # double 0.34625370144606216
	.quad	0x3fe97e1cecccfb50              # double 0.79664465189112299
	.quad	0x3fd426ffc495467a              # double 0.3148803157574559
	.quad	0x3fe02454f675217a              # double 0.50443504463423428
	.quad	0x3fd7a5fb645b49b0              # double 0.36950573730896519
	.quad	0x3fef0cdd61dea733              # double 0.97032040705855704
	.quad	0x3feda262b32b33f5              # double 0.9260724543943285
	.quad	0x3fc1dd90493d5c28              # double 0.13957408500820745
	.quad	0x3fc8a28b3aafbfc8              # double 0.19246044507553806
	.quad	0x3fd81cc7af4b95c4              # double 0.37675659292866848
	.quad	0x3fe4a95d029e8a54              # double 0.64567423354703601
	.quad	0x3fcf485802fd36dc              # double 0.24439525743439716
	.quad	0x3fd9cd0f04d4cf58              # double 0.40314078780942486
	.quad	0x3fe08bc5f1acf039              # double 0.51706216051343923
	.quad	0x3fd276c47a6adc80              # double 0.28849899248911726
	.quad	0x3fdd5ac8bdf35da6              # double 0.45866602468364659
	.quad	0x3fee5147aced8466              # double 0.94742187285386303
	.quad	0x3fd6e7dd657b9e9e              # double 0.35790190611303696
	.quad	0x3fec85b4dd47ab7e              # double 0.89132159441702163
	.quad	0x3fd0b01699a815de              # double 0.26074757581258534
	.quad	0x3fe7bd89464e2361              # double 0.7418867467068645
	.quad	0x3fe4ee47cc266d57              # double 0.65408697007243688
	.quad	0x3fa69d433fe3a710              # double 0.044168569134695912
	.quad	0x3fe725e17443d5f6              # double 0.72337410648350331
	.quad	0x3fed9566c24a7fa1              # double 0.92448747584784396
	.quad	0x3fda03e6670ae344              # double 0.40648803770777797
	.quad	0x3fda4a2bc1b27524              # double 0.41077703395588316
	.quad	0x3fe301b022121cc0              # double 0.59395605711406319
	.quad	0x3fea5b42ffb8c3e4              # double 0.8236403460087982
	.quad	0x3fe16bfaaeb42bf3              # double 0.54443105813822823
	.quad	0x3fed0a5e72d154d2              # double 0.90751573968250399
	.quad	0x3fddfb5fb859306e              # double 0.46846764567158672
	.quad	0x3fd64c7e6a8018bc              # double 0.34841881180217249
	.quad	0x3fd08eaa18285e64              # double 0.25870754584454958
	.quad	0x3fe2ac278734d358              # double 0.58351494224062161
	.quad	0x3fca37f612af9a74              # double 0.20483280098342826
	.quad	0x3fe538dabc6432ca              # double 0.66319023890681561
	.quad	0x3fe1bbb3b8937f1d              # double 0.55416284608870436
	.quad	0x3fc538f61b908fbc              # double 0.16580082269604002
	.quad	0x3fc55c90758b3ae0              # double 0.16688733806082379
	.quad	0x3fd64fea06124f32              # double 0.34862757294580426
	.quad	0x3fb87452f0a22348              # double 0.095524963138939545
	.quad	0x3fe6aee25108afa5              # double 0.70884815051021077
	.quad	0x3fd5d519820f6e5a              # double 0.34113156987380011
	.quad	0x3fcfb0fde6d2ca74              # double 0.24758886118577872
	.quad	0x3fb05a6cb878d250              # double 0.063879771267985719
	.quad	0x3fea8268d4d035ce              # double 0.82841912808515317
	.quad	0x3fab49a8c644cb30              # double 0.053296350672459858
	.quad	0x3fe3270cdbe9c934              # double 0.59851687385370278
	.quad	0x3fc074d6424d75dc              # double 0.12856558072500845
	.quad	0x3fb5a708c8c292b8              # double 0.084579991353687656
	.quad	0x3fcf4b2df98985f4              # double 0.24448179897721867
	.quad	0x3feeacb3cfba1a1a              # double 0.95858183452293422
	.quad	0x3fd6084edc6b9874              # double 0.34425708318156656
	.quad	0x3feb494a8db90457              # double 0.85269668274134858
	.quad	0x3fe8c8906980d33d              # double 0.77448292356584825
	.quad	0x3fe58ec14c6db6c7              # double 0.67367615630583877
	.quad	0x3fe865f8a8e72121              # double 0.76244767178380723
	.quad	0x3fdf9841d0bd175c              # double 0.49366803536064707
	.quad	0x3fd5ea95af1ce724              # double 0.3424429140173848
	.quad	0x3fccdebb6eefa13c              # double 0.22554724613952171
	.quad	0x3fcb0377c77ed5e4              # double 0.21104333153714017
	.quad	0x3fe36d5a791da15b              # double 0.60709880500239011
	.quad	0x3fe5888bb2a81575              # double 0.67291817563879752
	.quad	0x3fe8c0cfc96dd328              # double 0.77353658048250384
	.quad	0x3fe41f6a2952cd6b              # double 0.6288348013971875
	.quad	0x3fd4075521d7e908              # double 0.31294754319209561
	.quad	0x3feaa3b3583da253              # double 0.83248297915003844
	.quad	0x3fc24241bc731400              # double 0.1426469965137187
	.quad	0x3fb6d4f615426dd0              # double 0.089187030973725045
	.quad	0x3fcc0ea1abbcef34              # double 0.21919651876111745
	.quad	0x3fdfcc4401d9f526              # double 0.49684238606262665
	.quad	0x3fe152cd31fd6e06              # double 0.54135761035598828
	.quad	0x3fe06571b42049b5              # double 0.51238331967242934
	.quad	0x3fe9dd963fc51359              # double 0.80829918341678841
	.quad	0x3fe7831853adb2cb              # double 0.73475281089266653
	.quad	0x3fd921ad9f862f38              # double 0.39268055513888411
	.quad	0x3fec4ee08aa5eca8              # double 0.88462855415072728
	.quad	0x3fea558ecd80171d              # double 0.82294407021319993
	.quad	0x3fd78f4eb433304a              # double 0.3681217918172065
	.quad	0x3fdbc6a9741720be              # double 0.43400036179492563
	.quad	0x3fe86eb7b72f9ace              # double 0.7635153367853833
	.quad	0x3f728c7c0ea1bd00              # double 0.0045285078032144543
	.quad	0x3fb9c934f89929e8              # double 0.10072642392439202
	.quad	0x3feb93a812e56256              # double 0.86177447977667998
	.quad	0x3feaa053f675f7c6              # double 0.83207128655316676
	.quad	0x3fe3aa28f962c853              # double 0.61452149112870769
	.quad	0x3fe0d0e52f753fb4              # double 0.52549990910664812
	.quad	0x3fc926a65974e8dc              # double 0.19649199836732734
	.quad	0x3fefb5041823ca89              # double 0.9908466788750313
	.quad	0x3fe74881611fcfdb              # double 0.72760075540144997
	.quad	0x3fee11fab034a1c6              # double 0.93969473281054472
	.quad	0x3fca8722aeb953b4              # double 0.2072490075248915
	.quad	0x3fced540407f1748              # double 0.24088290356865572
	.quad	0x3fedb829393ac76c              # double 0.92873059442193328
	.quad	0x3fee9cdd2b9ca3da              # double 0.95664843099541064
	.quad	0x3fe85e29fafe3ae1              # double 0.76149462720954031
	.quad	0x3fe7269d29eed7b4              # double 0.72346361341509757
	.quad	0x3f9e4ae586c442c0              # double 0.02958258280802073
	.quad	0x3fe19f99ba3faee8              # double 0.5507324826880593
	.quad	0x3fe4d063e5111996              # double 0.65043825854881976
	.quad	0x3fc009b3ce834560              # double 0.12529609283096033
	.quad	0x3febde4e38d275e5              # double 0.87088690851277006
	.quad	0x3fdf3c3a85391672              # double 0.48805106172617407
	.quad	0x3fbff4a2b6f4f5c8              # double 0.12482659308167066
	.quad	0x3fee1096785a187a              # double 0.93952487474668023
	.quad	0x3fe33c82d5388c3b              # double 0.60113660473542241
	.quad	0x3fe91dcb302b0458              # double 0.78488692672557203
	.quad	0x3fe0ced88d1ef19c              # double 0.5252497440592836
	.quad	0x3fea0d93d8ad610c              # double 0.81415741271760699
	.quad	0x3fd051d4c2c73a1e              # double 0.25499457379638268
	.quad	0x3fc36c940ccfb8d4              # double 0.15175104737813305
	.quad	0x3fecd6b6e7a8b66f              # double 0.90121026273636839
	.quad	0x3fd92b0d60ad2108              # double 0.39325270119708522
	.quad	0x3fc11bcc91a05e94              # double 0.13366086111704034
	.quad	0x3fb485479a101730              # double 0.080158686745644969
	.quad	0x3fcec22964c7dec4              # double 0.24030034466681205
	.quad	0x3fef2e296512b762              # double 0.97438497296182569
	.quad	0x3fd09ca38e8d86d4              # double 0.25956047936607018
	.quad	0x3fe3be0c21ec091c              # double 0.61694914460557326
	.quad	0x3fedbfd52c6f129e              # double 0.92966707876674426
	.quad	0x3fec5ee1053de88a              # double 0.88658190749926402
	.quad	0x3fd1bd5f54fc743e              # double 0.27718337344578348
	.quad	0x3febe576259ef8d0              # double 0.87176043842171147
	.quad	0x3fedd67b99931642              # double 0.93243198390036519
	.quad	0x3fd836856506ac64              # double 0.37832770219637823
	.quad	0x3fdf9e3cdc0bceca              # double 0.49403306473616893
	.quad	0x3fc08706d536494c              # double 0.12912068758721273
	.quad	0x3fdc652f8e92aab8              # double 0.44367588923584433
	.quad	0x3fde3679f9f04258              # double 0.47207497985895008
	.quad	0x3fe8406aab4e4177              # double 0.75786336382047537
	.quad	0x3fe4f7e557fca661              # double 0.65526072678512659
	.quad	0x3fb2482d8e01d5a0              # double 0.071413848085134735
	.quad	0x3fe0553fd82404c5              # double 0.51040641989688906
	.quad	0x3fe5d82a79100715              # double 0.68263744015732419
	.quad	0x3f8f428e85138e00              # double 0.01526366561524295
	.quad	0x3fe5448b05a41429              # double 0.66461707212204602
	.quad	0x3fec0d754e69b6d1              # double 0.87664285006550291
	.quad	0x3fea3238faaef2a3              # double 0.81863068544005946
	.quad	0x3fbf8a4020e57f98              # double 0.12320328524719881
	.quad	0x3fefca28ef3cf92d              # double 0.99342772222715824
	.quad	0x3fcaeab838725efc              # double 0.21028807407559913
	.quad	0x3fe8fef8ec0392b5              # double 0.78112455460048713
	.quad	0x3fefbfc7847704b6              # double 0.99216056701711497
	.quad	0x3fdf1641deb279d0              # double 0.48573347804804445
	.quad	0x3fe1b1ccb1c5d754              # double 0.55295405122044849
	.quad	0x3fe018f9176b9a38              # double 0.50304846357614164
	.quad	0x3fed9c618ee69483              # double 0.9253394881276481
	.quad	0x3febeefb6e01d676              # double 0.8729226254060467
	.quad	0x3fefde8edf7ebf77              # double 0.99591773654354553
	.quad	0x3fd016bcc878f570              # double 0.25138778283493135
	.quad	0x3fe4fd40b8fd1a11              # double 0.65591465120889059
	.quad	0x3fec36a729aa2902              # double 0.88167150628694935
	.quad	0x3fcdd45bec241250              # double 0.23304318456952666
	.quad	0x3fc0cd365f0433e4              # double 0.1312625850627277
	.quad	0x3fea1e27dffc60ce              # double 0.81618112323033087
	.quad	0x3feb5db8f39c802e              # double 0.85519073086107311
	.quad	0x3fec3a578b0363f1              # double 0.88212182189010779
	.quad	0x3fdab1a9f2238982              # double 0.41709374090546458
	.quad	0x3fea41a54454fd60              # double 0.82051337572185545
	.quad	0x3feffa46858b6b5a              # double 0.99930120547228829
	.quad	0x3fe1f6670d319bbb              # double 0.56132843567762991
	.quad	0x3fd29e7b80486654              # double 0.29092299964540769
	.quad	0x3fc55de8b88e7578              # double 0.16692837726160881
	.quad	0x3fee07b2759bce89              # double 0.93843958826478613
	.quad	0x3fd4cd8927c36868              # double 0.32504490740905689
	.quad	0x3fe7b77b7ce66eae              # double 0.74114775080257345
	.quad	0x3feee42ca4c8cb32              # double 0.96535331901973209
	.quad	0x3feba3cc7c8c21f2              # double 0.86374496770537079
	.quad	0x3fe48b911ab31ce9              # double 0.64203696455743142
	.quad	0x3fe50dfcecd7c57a              # double 0.65795751818056591
	.quad	0x3fef6d07bb347b3c              # double 0.98205935061910265
	.quad	0x3fe0e1a3ed2c78f7              # double 0.52754398653976764
	.quad	0x3fd3c45f5d8786e6              # double 0.30886062749605825
	.quad	0x3fc498cd19e462ec              # double 0.16091312183632256
	.quad	0x3fbcc0a7d6764df0              # double 0.1123146914090325
	.quad	0x3fd08d3a178fdcb4              # double 0.25861980725262446
	.quad	0x3fdc3d0be4272290              # double 0.44122597961953947
	.quad	0x3fe11ccd8aa1a90b              # double 0.5347659785886959
	.quad	0x3fe0ea09725370a0              # double 0.52856895760807632
	.quad	0x3fea6e1e78a03a47              # double 0.82594226417297356
	.quad	0x3fe980e107943bdd              # double 0.79698230247765489
	.quad	0x3fa81bdad3b9f500              # double 0.04708751520682064
	.quad	0x3fd0fae8697aa818              # double 0.26531420040794407
	.quad	0x3fd854d0c6a5a36e              # double 0.38017672919391188
	.quad	0x3fc9134354d24e70              # double 0.19590036050486814
	.quad	0x3fd906768a2ebf5c              # double 0.39101947302241569
	.quad	0x3fe1843a66f6b8cd              # double 0.54739112959011893
	.quad	0x3fc7ef59a31132f4              # double 0.18699188673271971
	.quad	0x3fef3d6d281306a5              # double 0.97624833895698215
	.quad	0x3fed562188b607bb              # double 0.916764037145405
	.quad	0x3fdd25952947b242              # double 0.45541886359459138
	.quad	0x3fedd75e01fdb511              # double 0.93253994358897974
	.quad	0x3fe002b24adf7535              # double 0.50032915710077097
	.quad	0x3fda0133e90085da              # double 0.40632341150384621
	.quad	0x3fd79a982a0f0bb4              # double 0.36881069285680756
	.quad	0x3fc3a1e37b313934              # double 0.1533779479527283
	.quad	0x3fe5dfb02d5f7971              # double 0.68355568754104301
	.quad	0x3fe204febcb016c8              # double 0.56310974934668767
	.quad	0x3fde632e87c07242              # double 0.47480357415205188
	.quad	0x3fde1233ecc17918              # double 0.46986101265601254
	.quad	0x3fbf2c75c1fef5f8              # double 0.12177215563038846
	.quad	0x3fedbf0aae904b6f              # double 0.92957052320921985
	.quad	0x3fe641ac812918e8              # double 0.69551682688395733
	.quad	0x3fe2fd5f92028f46              # double 0.59342936055734508
	.quad	0x3febb08fcf2dc9fc              # double 0.86530294861432777
	.quad	0x3fd3ff64a36f2b0a              # double 0.31246295891166709
	.quad	0x3f521dfbaaba2800              # double 0.0011057813343620104
	.quad	0x3fe3a206bc0da8a6              # double 0.613528601924618
	.quad	0x3fcef6f6ff31e2b0              # double 0.24191176853834895
	.quad	0x3fe394a6f52d95b1              # double 0.61189601789799586
	.quad	0x3f91179ab5550fe0              # double 0.016691605870860715
	.quad	0x3feb69d129658605              # double 0.85666711888569635
	.quad	0x3fe1ec90f3b9ec78              # double 0.56012771227632552
	.quad	0x3fd522ebf092df90              # double 0.33025644773032869
	.quad	0x3fe39d47152c3b99              # double 0.61294893393811656
	.quad	0x3fd5d591d476df74              # double 0.3411602568480625
	.quad	0x3fe173da1be5ad04              # double 0.545392088400519
	.quad	0x3fd137c6ed0b60b2              # double 0.26902936123725418
	.quad	0x3fed97cfd1ddf79c              # double 0.92478171338710835
	.quad	0x3fe270a6308c7c88              # double 0.57625112039740234
	.quad	0x3fe120371303fba4              # double 0.53518251146293894
	.quad	0x3fd61dc429c351b6              # double 0.34556678846754652
	.quad	0x3fecc0f4f3ae906e              # double 0.89855430215949439
	.quad	0x3fef37e133ec5881              # double 0.97557125226263974
	.quad	0x3fe82e0ee72483b9              # double 0.75562234063192257
	.quad	0x3fddbd0c415aaecc              # double 0.46466356642006867
	.quad	0x3fc246adbda5b41c              # double 0.14278194198723859
	.quad	0x3fd74d076c8c9f82              # double 0.36407647705572554
	.quad	0x3feb138fb534595a              # double 0.84613786117078438
	.quad	0x3fc6ef8ab4d07258              # double 0.17918523625202698
	.quad	0x3fe5207d66d5934d              # double 0.66021604618854612
	.quad	0x3fe5e21f219866b8              # double 0.68385273515305922
	.quad	0x3fc53072367ceb8c              # double 0.16554095898194665
	.quad	0x3fd0926fd219ef54              # double 0.25893779294687147
	.quad	0x3fe5e59f530d87e7              # double 0.68428007336865171
	.quad	0x3fee017fc5052627              # double 0.93768299561015034
	.quad	0x3fe51cfd63a03bfa              # double 0.65978879411875302
	.quad	0x3fe74c20aef792a9              # double 0.72804292844064833
	.quad	0x3fe76ffd1443c44d              # double 0.73242048223449674
	.quad	0x3fd80e406df92f3c              # double 0.3758698533972511
	.quad	0x3fd9b82979d257e0              # double 0.40186535736699902
	.quad	0x3fef98837c91d8f0              # double 0.9873673851969027
	.quad	0x3fe2c2c26623b3f8              # double 0.58627433728327016
	.quad	0x3fc9164412fcf970              # double 0.19599200179250031
	.quad	0x3fe5fe5598b857f9              # double 0.68729667499678648
	.quad	0x3f9a92914036b740              # double 0.025949735206885594
	.quad	0x3fc2895c7204f194              # double 0.1448169285521429
	.quad	0x3fe8d0eba121a28b              # double 0.77550298186277311
	.quad	0x3fcbacf8ba37c7d8              # double 0.21621617405577243
	.quad	0x3f9d774710ba3100              # double 0.028775320430711737
	.quad	0x3fe80955aea6ac9d              # double 0.75113948928391816
	.quad	0x3fedc7dd048806ac              # double 0.93064738163976334
	.quad	0x3fe4f245d591b9b8              # double 0.6545743151926251
	.quad	0x3fd258c3724a7c6a              # double 0.28666769181467677
	.quad	0x3fd3749e34d8dcb6              # double 0.30399279747821184
	.quad	0x3fd0dbde12e39cc0              # double 0.26341964573516563
	.quad	0x3fed9d1929b43567              # double 0.92542703767109635
	.quad	0x3fd14b08a5ed5d46              # double 0.2702046985991341
	.quad	0x3fd116a6d6ca09b0              # double 0.26700755095967121
	.quad	0x3fea4bcd5b76fb37              # double 0.82175319542134317
	.quad	0x3febf6ef9f6c84ec              # double 0.87389355790597056
	.quad	0x3fe675d9c7a18df9              # double 0.70188607206767906
	.quad	0x3fe969a7e3687110              # double 0.79414743819828182
	.quad	0x3f9fc660bf03b740              # double 0.031030189188576474
	.quad	0x3fbb516e0993cf80              # double 0.1067112706548965
	.quad	0x3fa5301d1bb5def0              # double 0.04138270343076822
	.quad	0x3fc177fae7be7e1c              # double 0.13647400203352411
	.quad	0x3fec9fa0c4afb720              # double 0.89448583998975905
	.quad	0x3fc6e180e989ea74              # double 0.17875682261713488
	.quad	0x3fa9e35c8659be70              # double 0.050562755012717342
	.quad	0x3fe7fd2f9f012351              # double 0.74965649657779398
	.quad	0x3fce7b2b0a431a74              # double 0.23813379288749881
	.quad	0x3fe4a506740d7863              # double 0.64514467875029557
	.quad	0x3fea8fd9fc692c5c              # double 0.830059998502644
	.quad	0x3fe796dda29316c0              # double 0.73716623070568943
	.quad	0x3fb12cd74491abf8              # double 0.067090467682348165
	.quad	0x3fe519b3c2c6ca32              # double 0.65938747446336365
	.quad	0x3fd4e040f589718e              # double 0.32618736246311009
	.quad	0x3fde501b4371ac26              # double 0.47363931261378622
	.quad	0x3fe8c824e86eb7ba              # double 0.77443166157694709
	.quad	0x3fd6537260dd1564              # double 0.34884318789803204
	.quad	0x3fec7a4ef4d82a2f              # double 0.88993022748156203
	.quad	0x3feb99ae54f65764              # double 0.86250988573258924
	.quad	0x3faa602613501020              # double 0.051514806611550279
	.quad	0x3fe4bffbe5497cd8              # double 0.64843554289464134
	.quad	0x3fb36c313bbfad60              # double 0.075869633757681409
	.quad	0x3fe5ff5465b62041              # double 0.68741817346109013
	.quad	0x3fe292fd4309b222              # double 0.58044303029379685
	.quad	0x3fe94b5109e4294d              # double 0.79044391567121297
	.quad	0x3fd934525d33c4fc              # double 0.393818465249822
	.quad	0x3fb2c77b3e75a600              # double 0.07335634493724541
	.quad	0x3fe2adff9d3fcca2              # double 0.58374005043733157
	.quad	0x3fee140a972c99c3              # double 0.93994645620551187
	.quad	0x3fe200970767a403              # double 0.56257201620348984
	.quad	0x3fcdab5c86dcff74              # double 0.23179203591461894
	.quad	0x3fc30df358d51bec              # double 0.14886323773882226
	.quad	0x3fc9f78223eb178c              # double 0.20286585573029148
	.quad	0x3fd97f62009f8bd6              # double 0.39839983044492777
	.quad	0x3fe7abdd33f25ba5              # double 0.73972950120775194
	.quad	0x3feee3c6b6aa532a              # double 0.96530471493551784
	.quad	0x3fd8d9536fddac62              # double 0.38826452183156424
	.quad	0x3fd747e39b07bbca              # double 0.36376276149433961
	.quad	0x3fed8ad043bc7e37              # double 0.92319501142259852
	.quad	0x3fed798dbcc2a139              # double 0.9210880934452127
	.quad	0x3fe0dd7f3d91fbe3              # double 0.52703821206511881
	.quad	0x3fe1902f00ddac75              # double 0.5488505379593237
	.quad	0x3fd2fcd850098854              # double 0.29668243232857106
	.quad	0x3fd8e719aeeb68c4              # double 0.38910524446476935
	.quad	0x3fd83aa965ae43ae              # double 0.3785804264999183
	.quad	0x3fc51b45e9cf2554              # double 0.16489480892622999
	.quad	0x3fe79542908ac9b5              # double 0.7369702170456579
	.quad	0x3fefcc736246cdfd              # double 0.99370736307758955
	.quad	0x3fb390d7d57c6c40              # double 0.076428880329715732
	.quad	0x3fe17f5a656bce2e              # double 0.5467960339432858
	.quad	0x3fe15cc2e6645664              # double 0.54257340429712686
	.quad	0x3fe57a4cdc5156db              # double 0.67117922812277742
	.quad	0x3fef0509c7244ef3              # double 0.96936501402748687
	.quad	0x3fe3b27cb9c42022              # double 0.61553798944897076
	.quad	0x3fd07d66d6228182              # double 0.25765391265488102
	.quad	0x3fcd38db2b08cf50              # double 0.22829761124887193
	.quad	0x3fe9a742dc807429              # double 0.80166762415649828
	.quad	0x3fcdf35a25fffc20              # double 0.23398901801553595
	.quad	0x3fb6bd79843a15f8              # double 0.088828654081304026
	.quad	0x3fbdad03172967f8              # double 0.11592120471451028
	.quad	0x3fddb7b89cc8d3c8              # double 0.46433844862923168
	.quad	0x3fe7575f9a78cd53              # double 0.72941570444383286
	.quad	0x3fdddad432b377fe              # double 0.46648125602030166
	.quad	0x3fe18e1befe8ecf2              # double 0.54859730584521871
	.quad	0x3fd541457b04e846              # double 0.3321088506087374
	.quad	0x3fe40fe426383c54              # double 0.62693984474925424
	.quad	0x3fcc3793a83ef9c0              # double 0.22044606890808716
	.quad	0x3fecbd4b3084e768              # double 0.89810714222333576
	.quad	0x3fc66377660d32d0              # double 0.17491047366129076
	.quad	0x3fe40ba2c88ded74              # double 0.6264203946188176
	.quad	0x3fe16e9efddcc816              # double 0.54475354750161631
	.quad	0x3fdff8bf32fa37e6              # double 0.4995573041750262
	.quad	0x3fe8a5400e5723a6              # double 0.77017214585167859
	.quad	0x3fd91739a8e6813e              # double 0.39204255575352309
	.quad	0x3fc7f78dba808664              # double 0.18724223715348665
	.quad	0x3fec7aee579c8021              # double 0.89000622855747136
	.quad	0x3fe298913f9d278c              # double 0.58112394737803319
	.quad	0x3fe5f2e6ebc7a55c              # double 0.68590112734561215
	.quad	0x3fd5a430a5284de0              # double 0.33814636353164751
	.quad	0x3fe585858876069d              # double 0.67254902508303227
	.quad	0x3feb45eb5e6a9893              # double 0.85228508415890969
	.quad	0x3fca7f4ac64349e8              # double 0.20700964623263407
	.quad	0x3fed86fc36bcd6fa              # double 0.92272768679569528
	.quad	0x3fbdfabe83c85e38              # double 0.11710730283118032
	.quad	0x3fe4265c4f0fc764              # double 0.62968268815732786
	.quad	0x3fce6e5e9406780c              # double 0.23774320819660522
	.quad	0x3fcb15e4f1745c04              # double 0.2116056612946694
	.quad	0x3fe0580eddb5a72d              # double 0.51074927618649257
	.quad	0x3f8568f423e62a40              # double 0.010454089494278951
	.quad	0x3fe08e9226e1bb7e              # double 0.51740367502303264
	.quad	0x3fdff190188cb85a              # double 0.49911882779531924
	.quad	0x3fe31a4caaf01b42              # double 0.59696038614570335
	.quad	0x3fef3771e3de6533              # double 0.97551817422496467
	.quad	0x3fde7a873ed28cdc              # double 0.47622853407865562
	.quad	0x3fcfb1a17b08358c              # double 0.2476083613150134
	.quad	0x3f92e44f437c4f20              # double 0.018449057096474708
	.quad	0x3fedd136b3e68ae2              # double 0.93178877960994222
	.quad	0x3fd6600303ae7ef2              # double 0.34961009368451734
	.quad	0x3fec3f9aaf176976              # double 0.8827641887431088
	.quad	0x3fdf2312a5bc1d7e              # double 0.48651567635575776
	.quad	0x3fe1761d28b5f090              # double 0.54566820098217939
	.quad	0x3fddb87466354af4              # double 0.46438322049395642
	.quad	0x3fd5a0e92eba35b4              # double 0.33794622004719632
	.quad	0x3fdf204ede1c8f2a              # double 0.48634692850667938
	.quad	0x3fdf0d57304dd01a              # double 0.48518924443419709
	.quad	0x3fe0699c8508a999              # double 0.51289201720401245
	.quad	0x3f9aa4570a4e5300              # double 0.026017532352471839
	.quad	0x3fbe51810f24e230              # double 0.11843115443924357
	.quad	0x3feadb5e323a225a              # double 0.83927831468561043
	.quad	0x3fd8b0561a8dca00              # double 0.38576271622801528
	.quad	0x3fd4a402f7f0147c              # double 0.32251047337224015
	.quad	0x3feb706184199071              # double 0.85746837425950961
	.quad	0x3fd94a106aba0ec0              # double 0.3951455156568322
	.quad	0x3fa2a749f2707a50              # double 0.036432562679909908
	.quad	0x3fef82efdb578534              # double 0.9847335132618924
	.quad	0x3fd57e1a2a9e07ee              # double 0.33582166826101811
	.quad	0x3fe766ce6ef8c8df              # double 0.73129960703070285
	.quad	0x3fcd8d89cd6aa394              # double 0.23088190584283252
	.quad	0x3fca9c00207b2114              # double 0.20788575731263192
	.quad	0x3f8d568f5a86ebc0              # double 0.014325256300130706
	.quad	0x3fdd61acddeb97bc              # double 0.45908662483122575
	.quad	0x3fc7b5049d7233cc              # double 0.18521173179433814
	.quad	0x3fc163a8df901174              # double 0.13585387149954509
	.quad	0x3fdf7557f9952d84              # double 0.49153708813965857
	.quad	0x3fdbbb0fb9aa3f52              # double 0.43329232341146906
	.quad	0x3fea0561208f117c              # double 0.81315666541244935
	.quad	0x3fd27a13cb7d9bb4              # double 0.2887010085309456
	.quad	0x3fef79d71078486b              # double 0.98362305847900921
	.quad	0x3fdddfac92d01eba              # double 0.46677698456958761
	.quad	0x3fdd8ff29ce48204              # double 0.46191087075752102
	.quad	0x3fe0c35a0a8e9654              # double 0.52384664594564834
	.quad	0x3fe1bdb424607379              # double 0.5544071875079758
	.quad	0x3fe52c65fe81fd76              # double 0.66166972836064875
	.quad	0x3fe8c7f0eb1a120e              # double 0.77440687101676686
	.quad	0x3fe93903b8d21514              # double 0.78820978257923224
	.quad	0x3fe11684df895758              # double 0.53399890574903974
	.quad	0x3fef882a8c7d293e              # double 0.9853718513416323
	.quad	0x3fc9ffefda010fb0              # double 0.20312307495816873
	.quad	0x3fe79c69d3405a42              # double 0.73784343013796438
	.quad	0x3fc04b3d5f5897c0              # double 0.12729613452500921
	.quad	0x3fda7789543b6ccc              # double 0.41354592538637003
	.quad	0x3fed75b83be3d7c3              # double 0.92062007615344787
	.quad	0x3fdf84eed8817bf0              # double 0.49248858588356281
	.quad	0x3fdc3b8a6c95a582              # double 0.44113407710991492
	.quad	0x3feee92e9c0b298f              # double 0.96596460797563732
	.quad	0x3fc7a998ee4c35e0              # double 0.1848632014811491
	.quad	0x3fc6a40e414dffec              # double 0.176881582152418
	.quad	0x3fe5af68c0fccbad              # double 0.67766225521915191
	.quad	0x3fda130aa1512f48              # double 0.40741220239282372
	.quad	0x3fe3a9b20b37de11              # double 0.61446478072224597
	.quad	0x3fe0bf35ba9f524c              # double 0.5233410496680988
	.quad	0x3fa359d54b02a270              # double 0.037794747740297008
	.quad	0x3fe819dc79813d9b              # double 0.75315688830771721
	.quad	0x3fe7ec737869ba8f              # double 0.74761365430988913
	.quad	0x3fe39d332206e602              # double 0.61293942113769639
	.quad	0x3fb48d3ebcd84140              # double 0.080280228714632251
	.quad	0x3fed5d690e5df5eb              # double 0.91765263372479688
	.quad	0x3fe9fed8cd94c6a4              # double 0.8123592391259149
	.quad	0x3f88f4b3f4bdaa80              # double 0.01218548384323026
	.quad	0x3fe159ba28b503ea              # double 0.54220302534679132
	.quad	0x3fe23c567595ff21              # double 0.56986544576645681
	.quad	0x3f83e14e252c87c0              # double 0.0097070794195736054
	.quad	0x3fee5f8be0d14aea              # double 0.94916337880780799
	.quad	0x3fe4663ddbbe54f4              # double 0.63748066824578453
	.quad	0x3fe340a332de8b5d              # double 0.6016403192082681
	.quad	0x3fe7797bdaf76514              # double 0.73357956663963586
	.quad	0x3fc37b93241524f8              # double 0.15220870267720676
	.quad	0x3fabbe74d1ad34b0              # double 0.054187441439901618
	.quad	0x3fea2e2b3b34d082              # double 0.81813584865314248
	.quad	0x3fd2da18b837287c              # double 0.29456155767241632
	.quad	0x3fe4070984160395              # double 0.6258590297512564
	.quad	0x3faf2eb56f6d7a10              # double 0.060903234340674683
	.quad	0x3fcff1a9c8c04bc4              # double 0.24956247618010086
	.quad	0x3fd4632e310bbac8              # double 0.31855349340086692
	.quad	0x3fe3cbfda100761b              # double 0.61865121312775118
	.quad	0x3fdd7fd2da24d824              # double 0.46092673590772137
	.quad	0x3fc9481a30fcd190              # double 0.19751288787814447
	.quad	0x3fea26d2e6bc7ffd              # double 0.81723923745812466
	.quad	0x3fc100c1f6b9bb7c              # double 0.13283562228340517
	.quad	0x3fc3156bc9cd62c8              # double 0.14909121850612039
	.quad	0x3fead53488da4325              # double 0.83852602700253398
	.quad	0x3fe411ff8e34fa09              # double 0.62719705366890921
	.quad	0x3fd1b923d3f1d8a2              # double 0.27692504594541323
	.quad	0x3fe5a7c16782e077              # double 0.67672796456373774
	.quad	0x3fe17bc66ef5fde1              # double 0.54635926887561592
	.quad	0x3feeee4de9905d6c              # double 0.96658988588289451
	.quad	0x3fc659aed35c1a3c              # double 0.17461190529157189
	.quad	0x3fe65482316d5be5              # double 0.6978159871458699
	.quad	0x3fd0dcda94cd0d92              # double 0.26347984820696368
	.quad	0x3fc5fb60e2e2d228              # double 0.17173396185320766
	.quad	0x3fb340a2813e91e8              # double 0.075204998544513679
	.quad	0x3fcc16512246d150              # double 0.21943105863250389
	.quad	0x3fc84210734d5fe4              # double 0.18951612119667438
	.quad	0x3fe03ee52d8815ba              # double 0.50767763989340797
	.quad	0x3fe5b8aee90359de              # double 0.67879434118622917
	.quad	0x3fe9a1844e0e51fd              # double 0.80096640820789811
	.quad	0x3fd832e84947a2d8              # double 0.37810713917001015
	.quad	0x3fea93a3a1b9373e              # double 0.83052236162777837
	.quad	0x3fd145c02a9464f0              # double 0.26988224180384091
	.quad	0x3fec75b40d063385              # double 0.88936808151048352
	.quad	0x3fe5b25f345be1d1              # double 0.67802391268110729
	.quad	0x3fe9528ae871c5e0              # double 0.7913260021143138
	.quad	0x3fed5f7beaefa7fe              # double 0.9179057682606524
	.quad	0x3fa5fde458c47640              # double 0.0429526670797995
	.quad	0x3fe889f78669799b              # double 0.76684166195245795
	.quad	0x3fede54512f50737              # double 0.93423703863684338
	.quad	0x3fdfc2d146a374bc              # double 0.49626571558276189
	.quad	0x3fe269a2ef20365f              # double 0.57539507583869554
	.quad	0x3fd6396c7e20e166              # double 0.3472548705790558
	.quad	0x3fe9079b20b247b5              # double 0.78217846284882475
	.quad	0x3fcedd55659cdb24              # double 0.24112956487234627
	.quad	0x3fc1b821708eae20              # double 0.13843172069515308
	.quad	0x3fd1ae604d7c042e              # double 0.27626807753410076
	.quad	0x3fe3b04568f40942              # double 0.61526747225460832
	.quad	0x3fd9f454af02c918              # double 0.40553776827722876
	.quad	0x3fe0ceac8365c948              # double 0.52522874511331796
	.quad	0x3fe0ced57111122d              # double 0.52524826129280699
	.quad	0x3fe338fbc4217b56              # double 0.60070598894877025
	.quad	0x3fef52ce1e98eaaa              # double 0.97885805107155943
	.quad	0x3fe10765e15e05bb              # double 0.53215307251973998
	.quad	0x3fec04e55e12b1c8              # double 0.87559765218389263
	.quad	0x3fdd802ebb314a26              # double 0.4609486415912748
	.quad	0x3fd401894e1ca9c6              # double 0.31259377124902377
	.quad	0x3fc567cd643da7e4              # double 0.16723029512951293
	.quad	0x3fb179e4adbc3df0              # double 0.068266193786477691
	.quad	0x3fe7653df37052fb              # double 0.73110864206918735
	.quad	0x3fe21d6b7e032a11              # double 0.56609129535474001
	.quad	0x3fd9153ffe424b9c              # double 0.39192199544884843
	.quad	0x3fee3001fc0e76cf              # double 0.94336032132897596
	.quad	0x3fd19e9cbca7e922              # double 0.27530592368533935
	.quad	0x3fe3efabc0738c59              # double 0.62300670231014543
	.quad	0x3fdc34c1615ecb50              # double 0.44071993359391559
	.quad	0x3fe6428b41e4525b              # double 0.69562304372318395
	.quad	0x3fe206b999ab9910              # double 0.56332092298251446
	.quad	0x3fc339794370f5b0              # double 0.15019145768193942
	.quad	0x3fc39168b7cba85c              # double 0.15287503218070497
	.quad	0x3fdb01bce8c76e28              # double 0.4219810746414816
	.quad	0x3faa7818b323e8a0              # double 0.051697513454159294
	.quad	0x3feaa647e3e0ebe9              # double 0.83279795177020077
	.quad	0x3fb38b4739b8f440              # double 0.076343967049028016
	.quad	0x3fc49a7f769d8ba8              # double 0.16096490184562851
	.quad	0x3fe56e66f024102e              # double 0.66972681906236686
	.quad	0x3fc7cf2267deb928              # double 0.18600874015596358
	.quad	0x3fef50dd7cb7a32e              # double 0.97862123831609948
	.quad	0x3fe826c3b0aca8f2              # double 0.7547319842026623
	.quad	0x3febd4f540a11ed4              # double 0.86974585173535468
	.quad	0x3fabc2b9b387e060              # double 0.054220011868836293
	.quad	0x3fea5237809f33bd              # double 0.82253623124562802
	.quad	0x3fd455dcdf90f856              # double 0.3177406485809845
	.quad	0x3fe1c16b346b9c66              # double 0.55486068952894807
	.quad	0x3fe1689076a9ecf3              # double 0.5440141980792802
	.quad	0x3fdc94e1c2ff0618              # double 0.44658702890964852
	.quad	0x3fe9cb1c841f6cea              # double 0.8060438709757396
	.quad	0x3fa041ffd7b4da90              # double 0.031753535348277073
	.quad	0x3fa7aded42f28350              # double 0.046248831198005491
	.quad	0x3fa71712619ba940              # double 0.045097898879094434
	.quad	0x3fe510def3bb660e              # double 0.658309436835397
	.quad	0x3fea1e5c6c2d8f40              # double 0.81620617989072031
	.quad	0x3fd9e4374f73b0f0              # double 0.40455420264221598
	.quad	0x3fe708dcfaf63d7d              # double 0.71983193412772517
	.quad	0x3fa0ae0c553b2760              # double 0.032577882198508545
	.quad	0x3fd4543787d8c586              # double 0.31764019266400856
	.quad	0x3fe8c6d4836211e3              # double 0.77427125607260583
	.quad	0x3fea54fa02842087              # double 0.82287312022619197
	.quad	0x3fe84632ac4eba72              # double 0.75856908468069961
	.quad	0x3fd9efe34175121e              # double 0.40526658432307439
	.quad	0x3fafdd3a77ba5460              # double 0.062234713664260921
	.quad	0x3fd9767a54319b12              # double 0.3978563139157113
	.quad	0x3fef7ee975e42a2a              # double 0.9842421820224605
	.quad	0x3fcd2e9895c568e8              # double 0.22798449814837984
	.quad	0x3fdecb7c55f07f6c              # double 0.48116978065990312
	.quad	0x3fd200610a457ef2              # double 0.28127313616822314
	.quad	0x3fd002f3763ab964              # double 0.25018011613692281
	.quad	0x3fed60144b6ad061              # double 0.91797842721872425
	.quad	0x3fea6a9b47ca54a4              # double 0.82551349660447614
	.quad	0x3fe70a88770c5b8a              # double 0.72003577472320157
	.quad	0x3fefa51e7f637a3c              # double 0.98890614395697395
	.quad	0x3febfed755c0d26e              # double 0.87485853909181599
	.quad	0x3febd42866675169              # double 0.8696481704778708
	.quad	0x3fcb6e7eb66995dc              # double 0.21430953890664639
	.quad	0x3fdd73e0b7b9d396              # double 0.4601976198385328
	.quad	0x3fe60184c10956d6              # double 0.68768537237584826
	.quad	0x3fe957701b704d6a              # double 0.79192357405774527
	.quad	0x3fefb9891f4eab66              # double 0.99139839281756958
	.quad	0x3fe9520936243d1a              # double 0.79126415800593297
	.quad	0x3fdbee40a1458c44              # double 0.43641677617251085
	.quad	0x3f8f14c2d0af7940              # double 0.015176317208837831
	.quad	0x3fd9f1a77a0e130a              # double 0.40537440223151633
	.quad	0x3fcf1f1a00eac76c              # double 0.24313664479046382
	.quad	0x3fed2fab168cfc1c              # double 0.91206888584554546
	.quad	0x3fe97128c7838887              # double 0.79506339042224361
	.quad	0x3fd2ad3b241a4402              # double 0.29182318235058358
	.quad	0x3fbe850c357761f8              # double 0.11921764664965184
	.quad	0x3fe91272e3f686fc              # double 0.78350204967520609
	.quad	0x3fd9fb3516731be4              # double 0.40595748131130294
	.quad	0x3fd5e54a6c20fa62              # double 0.34211979445891505
	.quad	0x3f9f2571365a7b80              # double 0.03041626829383004
	.quad	0x3feee306a444400b              # double 0.96521312793083902
	.quad	0x3fe1c6124f8ad52c              # double 0.55542865310295531
	.quad	0x3fe9627ca84acc00              # double 0.79327233190122115
	.quad	0x3fe256258fd2df3e              # double 0.57301595774240588
	.quad	0x3faca6c72979b6b0              # double 0.055959914982719794
	.quad	0x3fe4e15239a0c656              # double 0.65250502830003643
	.quad	0x3fee16f2708973bc              # double 0.94030115108363743
	.quad	0x3fde028ca36cf7d4              # double 0.46890560111557744
	.quad	0x3fe6bee9ecc70210              # double 0.71080490346509073
	.quad	0x3fe8c48f65732344              # double 0.77399415792852055
	.quad	0x3fcd6be87f7d4a48              # double 0.22985559678143574
	.quad	0x3fd59c20336664f0              # double 0.3376541616394908
	.quad	0x3f65c69853067a00              # double 0.0026581740459754588
	.quad	0x3fe1d0c9e113b556              # double 0.55673688850735448
	.quad	0x3fe283be07882de5              # double 0.57858182402690927
	.quad	0x3fa08bb699beab90              # double 0.032315927760769303
	.quad	0x3fe17415c4824623              # double 0.54542053585663941
	.quad	0x3fef4e610ce8b901              # double 0.97831776162436778
	.quad	0x3fc5a62a97eb0774              # double 0.16913349550128098
	.quad	0x3fec50218debb584              # double 0.88478162497419576
	.quad	0x3fd54d39c7d7d3de              # double 0.33283848300862739
	.quad	0x3fdf05846c8e5294              # double 0.48471174813429596
	.quad	0x3fbeadeee1ad7308              # double 0.11984150895791512
	.quad	0x3fcc402882be05c4              # double 0.22070795425319834
	.quad	0x3fbd13bb65582638              # double 0.11358233665682682
	.quad	0x3fd8c7600a5aa92e              # double 0.38716889392039178
	.quad	0x3fdd2b9272635d8e              # double 0.45578442736356173
	.quad	0x3fea529b1558e9b0              # double 0.82258371514699569
	.quad	0x3fe439d4f37c73ae              # double 0.63205955081831688
	.quad	0x3fcaf48a9b7d69e0              # double 0.2105878123500835
	.quad	0x3fc15fc94f021cc4              # double 0.13573566778015878
	.quad	0x3fd5ac64bad03124              # double 0.33864706271630696
	.quad	0x3fcb0ee121c3c4bc              # double 0.21139158390682222
	.quad	0x3f87db236c940ac0              # double 0.011648442030950945
	.quad	0x3fea5bf6785109c4              # double 0.82372592448546599
	.quad	0x3fefc47f3d75ea34              # double 0.99273645404838939
	.quad	0x3fdd8837440ed4b4              # double 0.46143895765574006
	.quad	0x3fdb3e77304f6976              # double 0.42568759649079568
	.quad	0x3feb2f26713cbe6f              # double 0.84950563542038349
	.quad	0x3fe68b126c4b9c30              # double 0.70447655822215971
	.quad	0x3fdd573e2d0f219c              # double 0.45844988251021745
	.quad	0x3fcac5ddfb9cbbe0              # double 0.20916342530969612
	.quad	0x3fdce92846e29d60              # double 0.45173079416641393
	.quad	0x3fe6f9b593b9a2fc              # double 0.71798209049765616
	.quad	0x3fedf0188623f8ff              # double 0.93555856894798228
	.quad	0x3f746b17a83e7200              # double 0.0049849437818036968
	.quad	0x3fdc87e6f3e778fa              # double 0.44579480952042128
	.quad	0x3fe694db5ff5725e              # double 0.70567101232479579
	.quad	0x3fc49deac0ff0d78              # double 0.16106924461028505
	.quad	0x3fc11487d5ea3320              # double 0.13343904442845034
	.quad	0x3fe43a81cee3140b              # double 0.63214197547552098
	.quad	0x3fed4be9acac59de              # double 0.91551669812434588
	.quad	0x3fe5e1aead933bb2              # double 0.68379911328690057
	.quad	0x3fd7027daee49b92              # double 0.35952703551668563
	.quad	0x3fe6c1ae347fd3c2              # double 0.71114263776564024
	.quad	0x3f52ce0b2e0cfa00              # double 0.0011477574518746758
	.quad	0x3fd562c9746f37b8              # double 0.33415447588492553
	.quad	0x3fc8bf0aeb471cb8              # double 0.19333015907452533
	.quad	0x3fe0da1ceb27aa6b              # double 0.52662511757564567
	.quad	0x3fd22ed1f0038602              # double 0.28410767020076844
	.quad	0x3feb9b61c4716ebc              # double 0.86271751754562542
	.quad	0x3fbe8e5eead111c8              # double 0.11935990555600207
	.quad	0x3fea4a095a326eb4              # double 0.82153766266443151
	.quad	0x3fe82a87cf83a2f1              # double 0.75519171266668483
	.quad	0x3fd1362127e4c136              # double 0.26892880340439562
	.quad	0x3fec4d0a9786fe47              # double 0.88440446467570488
	.quad	0x3fe94bceab5a3941              # double 0.7905038210608738
	.quad	0x3fe45c4530e43de7              # double 0.63626346158156089
	.quad	0x3f84599f5f8d48c0              # double 0.0099365664515612683
	.quad	0x3fd9496b92a8b90c              # double 0.39510621378111987
	.quad	0x3fee5e4805b99505              # double 0.94900895231390392
	.quad	0x3fea91b54488e09b              # double 0.83028663049391882
	.quad	0x3fd54642c628c450              # double 0.3324133811138994
	.quad	0x3fe59d4b2daeba9e              # double 0.67545088693971755
	.quad	0x3fe9de1eb2a0b707              # double 0.80836424720993783
	.quad	0x3feb672985098167              # double 0.85634304031195263
	.quad	0x3f53e60367984400              # double 0.001214507412786725
	.quad	0x3fe7a418685c6ea0              # double 0.73878116972942464
	.quad	0x3fdf50bb75dca19a              # double 0.48930250654168506
	.quad	0x3fe6745e5036537d              # double 0.70170512834975762
	.quad	0x3fdfe9e356985d04              # double 0.49865039307174208
	.quad	0x3fc5aa50dbe64470              # double 0.16926012742308982
	.quad	0x3fe3582d4e4f1905              # double 0.60451379103395253
	.quad	0x3fd5466228c1f444              # double 0.33242086391675607
	.quad	0x3fd4691d52e9032a              # double 0.31891568276118909
	.quad	0x3fa69345f4f3f8c0              # double 0.044092355872622502
	.quad	0x3fecf18c8d26dd61              # double 0.90448596543039284
	.quad	0x3fb17f445ff76d48              # double 0.06834819167072681
	.quad	0x3fe896da90bb1a38              # double 0.76841476695773903
	.quad	0x3fe61b5ac4b3fb4e              # double 0.69083918016972645
	.quad	0x3fe2292af671d639              # double 0.56752536901212303
	.quad	0x3fec3485bffc93d4              # double 0.88141143319500736
	.quad	0x3febbe00158c47d9              # double 0.86694339951122423
	.quad	0x3fc03911da3e1f70              # double 0.12674163013820872
	.quad	0x3fdc6413d6fdb9e0              # double 0.44360824580408398
	.quad	0x3feb206aec5f8902              # double 0.84770723501813472
	.quad	0x3fc3e523d7891b14              # double 0.15543029808233
	.quad	0x3fa10ba558ad78a0              # double 0.033291976046471605
	.quad	0x3fdd04c1b65e6e42              # double 0.45341532525501205
	.quad	0x3fe9bf9eee11736d              # double 0.80464121339501349
	.quad	0x3fd0e1fc7e7385b8              # double 0.26379310940509582
	.quad	0x3fe6bc39f8744fd7              # double 0.71047686125029486
	.quad	0x3fba6d4cd74c3c98              # double 0.10323028808874068
	.quad	0x3fe9f50968e213eb              # double 0.81116171345695187
	.quad	0x3fd62ca092470598              # double 0.34647383007912813
	.quad	0x3fd61cdc2c7ee8ca              # double 0.34551147790228909
	.quad	0x3fb1b73d72de3a98              # double 0.069202271026578166
	.quad	0x3fd95dbc2987c692              # double 0.39634613090229565
	.quad	0x3fea21415f8bbb74              # double 0.81655949269575822
	.quad	0x3fe680d5d0bd832b              # double 0.70322695512377231
	.quad	0x3fc28a3f86818c8c              # double 0.14484399860075248
	.quad	0x3fed8645e7c028c2              # double 0.92264075530808776
	.quad	0x3fd83681250c7d9a              # double 0.37832668893858001
	.quad	0x3fe3355dbe46a6ee              # double 0.6002644268348527
	.quad	0x3fe9269e0d49b172              # double 0.78596403689657124
	.quad	0x3fe7585d61367b7d              # double 0.72953671442870383
	.quad	0x3fee6d4254407647              # double 0.95083729224615687
	.quad	0x3feb8cc19b2e5493              # double 0.86093216236862913
	.quad	0x3fd81fd2278b03aa              # double 0.37694219457267286
	.quad	0x3fd3c8745aa4d08e              # double 0.30910977222379976
	.quad	0x3fef27e0c9dc6a9f              # double 0.97361792970635352
	.quad	0x3fe13e3a61fb1a7f              # double 0.53884619843377368
	.quad	0x3fd218e76693360a              # double 0.2827700139722259
	.quad	0x3fe165e1edbc5293              # double 0.543686832740223
	.quad	0x3fccef6cd9623c60              # double 0.22605667700233578
	.quad	0x3fd7c970943af24a              # double 0.37166990733729632
	.quad	0x3f9c4cf1067bc720              # double 0.027637258549425003
	.quad	0x3fd444f8b9177eba              # double 0.3167096908127679
	.quad	0x3fc0e872918b32a4              # double 0.1320937357580948
	.quad	0x3fee9bfa69449bda              # double 0.95654030380398614
	.quad	0x3feca9f0240039d2              # double 0.89574439078733747
	.quad	0x3fed1c88279a65a0              # double 0.90973289237006227
	.quad	0x3fe6bb30ff9e326b              # double 0.71035051274664107
	.quad	0x3fe5d22a23736873              # double 0.68190485881792851
	.quad	0x3fe35b1297c7a2c2              # double 0.60486726421830661
	.quad	0x3fe544dabd1fb315              # double 0.66465508402106599
	.quad	0x3f9581dadbf937a0              # double 0.021003169704549074
	.quad	0x3f7bc56a122f9500              # double 0.0067800658607428677
	.quad	0x3fd089c860fdc86a              # double 0.25840959045229417
	.quad	0x3fded5ac825d3a66              # double 0.48179161768795209
	.quad	0x3fd9fa7819178350              # double 0.40591242266059613
	.quad	0x3fb52cb7909a1a80              # double 0.082713578036512913
	.quad	0x3fe719d0a686509c              # double 0.7219012501177704
	.quad	0x3fd2b3383793c0ac              # double 0.29218869616944221
	.quad	0x3fe2aa947733bdb5              # double 0.58332274705565246
	.quad	0x3fe77176f445573b              # double 0.7326006670871047
	.quad	0x3fc8eb702cb35494              # double 0.1946850031151014
	.quad	0x3fde704971084224              # double 0.47560344732576909
	.quad	0x3fd1faf154691278              # double 0.28094132655340998
	.quad	0x3feaeee4cdac6f27              # double 0.84166183634394975
	.quad	0x3fda6ad68db63016              # double 0.41277088011770624
	.quad	0x3fdcd43f109d4b6e              # double 0.45045448896887919
	.quad	0x3fb59d54fd2055b8              # double 0.084431945608534842
	.quad	0x3fd9db10d4b1284a              # double 0.40399571200089623
	.quad	0x3fd62dc01be757d0              # double 0.34654238438576801
	.quad	0x3fc729adffe14130              # double 0.18095946306358135
	.quad	0x3fe89694027525a4              # double 0.76838112335206121
	.quad	0x3fe006598d072181              # double 0.50077512306693006
	.quad	0x3fd77a554ae7aa7c              # double 0.36684162440238999
	.quad	0x3fddffd74c259e72              # double 0.46874029575562937
	.quad	0x3fe4097fc2c3f556              # double 0.62615955391053535
	.quad	0x3fe03d0593694429              # double 0.50744894782304073
	.quad	0x3fd6ed2d410d8e18              # double 0.35822612145258992
	.quad	0x3fb96667ea81d188              # double 0.099218840363226701
	.quad	0x3fd8f1e1914f4d98              # double 0.38976325216682417
	.quad	0x3fdfafcb9eb8bedc              # double 0.49510469913637478
	.quad	0x3fe2f02f3df4a46a              # double 0.59181940174779624
	.quad	0x3fe03006c23f1dd0              # double 0.50586259783534082
	.quad	0x3fc1bf6c22bda104              # double 0.13865424820256333
	.quad	0x3fad3f6b09adf110              # double 0.057124466830801635
	.quad	0x3fed1face0b8b5bd              # double 0.91011661425516588
	.quad	0x3fe3baa4ca6f8bed              # double 0.61653365648487368
	.quad	0x3fd077637923df52              # double 0.25728689985361541
	.quad	0x3fddfb69e74dc43c              # double 0.46847007358798343
	.quad	0x3fcdddd34feea580              # double 0.23333207514705734
	.quad	0x3fcc8a763d9affd0              # double 0.22297552116469754
	.quad	0x3feebb05311d190a              # double 0.96032962410461775
	.quad	0x3fe57aec2cefda31              # double 0.67125519539587775
	.quad	0x3fe57e8b8500e609              # double 0.67169738747833307
	.quad	0x3fa84e0cd9641ff0              # double 0.047470475708962456
	.quad	0x3fddbecb1a99ded2              # double 0.46477010343322178
	.quad	0x3fe31afaf2fbab11              # double 0.59704349000580426
	.quad	0x3fdf8922247b4cb6              # double 0.49274495661411366
	.quad	0x3fe9dd8aea8e06c6              # double 0.80829377948267545
	.quad	0x3fefca1cfb9939a4              # double 0.9934220232042219
	.quad	0x3f9c1ea04ae98b60              # double 0.027460579464228529
	.quad	0x3fedb66542ea03af              # double 0.92851508206523714
	.quad	0x3fcc0cbcc7f64a70              # double 0.21913871539853202
	.quad	0x3fed12be051f163e              # double 0.90853787422447119
	.quad	0x3fe0fd887702ff59              # double 0.53094886059259772
	.quad	0x3fe8bba238dd4b36              # double 0.77290450197538152
	.quad	0x3fe4c33dba22fcb6              # double 0.64883314471071318
	.quad	0x3feac886f32f7553              # double 0.83697841164727504
	.quad	0x3fe29468eb0f5866              # double 0.58061643514771499
	.quad	0x3fcce369dc0c6ff4              # double 0.22569010967788439
	.quad	0x3fed46048540ce9f              # double 0.91479707742697147
	.quad	0x3fe847d704e1b703              # double 0.75876952126938624
	.quad	0x3fbcd17ccfa69068              # double 0.11257152623744704
	.quad	0x3fd874f7748c88cc              # double 0.38213907605871777
	.quad	0x3fed7e05d9d06af3              # double 0.92163364927122726
	.quad	0x3fe5c49810125ba8              # double 0.68024829043394153
	.quad	0x3fdb95674d8ff5f8              # double 0.4309938676304621
	.quad	0x3fe067ac48d96aee              # double 0.51265539387108361
	.quad	0x3fb9c1e14ce128d0              # double 0.10061462523404718
	.quad	0x3fe3bed0ff16fade              # double 0.61704301664562045
	.quad	0x3feec7e00c1b5140              # double 0.96189882626143941
	.quad	0x3fd62ba1e35a7894              # double 0.3464131088493414
	.quad	0x3feca4b36af4ad21              # double 0.89510508432195846
	.quad	0x3fee743101d5d4b9              # double 0.95168352468922202
	.quad	0x3fe1a5079a7a1f63              # double 0.5513952271585193
	.quad	0x3fe416c7a3fb321e              # double 0.62778074290833152
	.quad	0x3fb483bb4d79a9a8              # double 0.080135065474371658
	.quad	0x3fef7160d14b5c00              # double 0.98259011152083531
	.quad	0x3fe07169dc7213ff              # double 0.51384442382607165
	.quad	0x3fdb8256a8b3f354              # double 0.42983023142715138
	.quad	0x3fe398aca88f4772              # double 0.61238701745808855
	.quad	0x3fc266e4637970f0              # double 0.14376501900813521
	.quad	0x3fd2455cf9c43994              # double 0.2854835929037105
	.quad	0x3fe267863dc4c003              # double 0.57513725341959832
	.quad	0x3fdd3c71b06d333e              # double 0.45681421498447949
	.quad	0x3feac323a7b25ae8              # double 0.8363207125974812
	.quad	0x3fe24bf077d747de              # double 0.57176993757661498
	.quad	0x3fa8cd3070e8f940              # double 0.048440469534841046
	.quad	0x3fd234d433eb63c2              # double 0.2844744212175635
	.quad	0x3fc4329f60c62088              # double 0.15779487824716321
	.quad	0x3fcfa9069caf2f30              # double 0.24734575892068156
	.quad	0x3fda85b75a8bc71e              # double 0.41441139070876598
	.quad	0x3fa0a5c75009bf70              # double 0.032514790077469935
	.quad	0x3fbbcde123bf58f8              # double 0.10861022112598906
	.quad	0x3fe13ea5cfebf898              # double 0.53889742479056491
	.quad	0x3f87337c4dba6800              # double 0.011328669664454338
	.quad	0x3fdda416e9597dba              # double 0.46314022815746692
	.quad	0x3fef41311d5dacc4              # double 0.97670799003153563
	.quad	0x3febbc19f48dcc9e              # double 0.86671159519609708
	.quad	0x3fd9765de0ee44b8              # double 0.39784953084842867
	.quad	0x3fdd90833488150e              # double 0.46194534425770051
	.quad	0x3fe3ef8118dcba03              # double 0.62298636299038923
	.quad	0x3fdc51ff8d984052              # double 0.44250477626429074
	.quad	0x3fed8f3c54065466              # double 0.92373482142523922
	.quad	0x3fd929acf305b4a0              # double 0.39316867573399783
	.quad	0x3fe35dd3c2bb44de              # double 0.60520351441860121
	.quad	0x3fdc0fab6407d430              # double 0.43845639008151505
	.quad	0x3fdc1c410a57a2a6              # double 0.43922449121468288
	.quad	0x3fef9889088eefe3              # double 0.98737003013183899
	.quad	0x3fcbb646c9621b38              # double 0.21650013764539167
	.quad	0x3fdb6c92a55aba0a              # double 0.42850175998583551
	.quad	0x3fbeced0cf944bf0              # double 0.12034325664380652
	.quad	0x3fe6004c625f014e              # double 0.68753642285450112
	.quad	0x3fea249256bc9c64              # double 0.81696431103490541
	.quad	0x3fe5a3b70aa7f3b3              # double 0.67623474198591393
	.quad	0x3fedd75e2f1ecf3d              # double 0.9325400276488619
	.quad	0x3fb98bb7d47c6fd0              # double 0.099788178802952431
	.quad	0x3fd29ee56504ba08              # double 0.29094824662288987
	.quad	0x3fe5c9e040e57bdb              # double 0.68089306521494153
	.quad	0x3fe7fdff27cca020              # double 0.74975545666984899
	.quad	0x3fd33bdff08fcbae              # double 0.30052946560243299
	.quad	0x3fec3cd669a30298              # double 0.88242645866565095
	.quad	0x3fc1255d56969528              # double 0.13395277717533216
	.quad	0x3fdea63a6f45760c              # double 0.47889576784459176
	.quad	0x3fcfe59bbd3dd8e8              # double 0.24919459095298824
	.quad	0x3fd70dc082607650              # double 0.36021435482129949
	.quad	0x3fe66d8910f2e0db              # double 0.70087102232266874
	.quad	0x3fcca1e63ea9a064              # double 0.22369077739427035
	.quad	0x3fead28db6dda7f5              # double 0.83820234027848406
	.quad	0x3fee5e84bde9148f              # double 0.94903790561569845
	.quad	0x3fe411c04ddff0c5              # double 0.62716689309993312
	.quad	0x3fe4ee0381dc0110              # double 0.65405440676843973
	.quad	0x3fbcc51b6f9c81c0              # double 0.11238261675726502
	.quad	0x3fe3fffb1bb97094              # double 0.62499766745487983
	.quad	0x3fd6c6dd5c212f8a              # double 0.35588773724588718
	.quad	0x3fd7388dca6b8046              # double 0.3628267742879
	.quad	0x3fc5e3d3b1f305e4              # double 0.17101522625857435
	.quad	0x3fd03326798d2e74              # double 0.25312196607840254
	.quad	0x3fec96ea360fdf1d              # double 0.89342222746833821
	.quad	0x3fca55624d15796c              # double 0.20573071254598163
	.quad	0x3fdc1b1b5e1728be              # double 0.43915447414896025
	.quad	0x3fd8625013a9f43e              # double 0.38100053711224635
	.quad	0x3fe11c8b80eb2e7e              # double 0.53473448924474076
	.quad	0x3fd2d4f0dd6d3488              # double 0.29424687980355957
	.quad	0x3fb73396788b2940              # double 0.09063091700514736
	.quad	0x3fd34c3e9b91bd2a              # double 0.30152859871209847
	.quad	0x3fdb3eb5813b87cc              # double 0.42570245380750005
	.quad	0x3fdfad40088f6bcc              # double 0.49494934879265595
	.quad	0x3fe74f291a66f6a1              # double 0.7284131541889175
	.quad	0x3fe4f18831d239f9              # double 0.65448388796522672
	.quad	0x3fedbafff864daa5              # double 0.92907713427014882
	.quad	0x3fc10266cfd2f1e4              # double 0.13288579127937716
	.quad	0x3feefa0ae76087c8              # double 0.96802277746996256
	.quad	0x3fd0e1d74e0f4dc6              # double 0.26378424284959257
	.quad	0x3fdad0b98ea66ad2              # double 0.41898955279036187
	.quad	0x3f87be97d3043480              # double 0.011593996169290799
	.quad	0x3fed6f748f1c8a92              # double 0.91985538436377312
	.quad	0x3fa0dd3cc42152f0              # double 0.032937907163306579
	.quad	0x3febdc53e5155a65              # double 0.87064547293523431
	.quad	0x3fceb5bbf7c39980              # double 0.23992108915190258
	.quad	0x3fe98eccc389f63d              # double 0.79868162337488224
	.quad	0x3fe20f65785a5955              # double 0.56437943941527158
	.quad	0x3fd849d6b02ae392              # double 0.37950675205097995
	.quad	0x3fe05751f8863837              # double 0.5106592039098875
	.quad	0x3feab5958f27f89b              # double 0.83466604194815675
	.quad	0x3fefb387f2e89c62              # double 0.99066541140645037
	.quad	0x3fe2e65659dc1114              # double 0.59061734724721981
	.quad	0x3fe1fc9db9762be5              # double 0.56208692763300105
	.quad	0x3fee3637016b3129              # double 0.944118025561271
	.quad	0x3fd5dc8dd5e91dac              # double 0.34158655061443244
	.quad	0x3fb7685ac2b774a0              # double 0.09143607381652652
	.quad	0x3fde29fd3ab88b16              # double 0.47131281599483665
	.quad	0x3fdf33fa13bb7ad0              # double 0.48754741599070162
	.quad	0x3fee4645febb407e              # double 0.94607829811322097
	.quad	0x3fea5b0c0950a719              # double 0.82361413783403059
	.quad	0x3fe6a4fb1ead0ac8              # double 0.70763927451511055
	.quad	0x3fb545c600ad1fb0              # double 0.083095908322433187
	.quad	0x3fc9fde5419e012c              # double 0.20306077674832446
	.quad	0x3fe2de51be4aca44              # double 0.58963858763156241
	.quad	0x3fec95359416c31a              # double 0.89321402476898304
	.quad	0x3fe8468a7dd15cf9              # double 0.75861095975679327
	.quad	0x3fba68a8c72e0c20              # double 0.10315947401800019
	.quad	0x3fc0a57cb1b76180              # double 0.13005026509814499
	.quad	0x3fd587df6c96215c              # double 0.33641801456589859
	.quad	0x3fea3169ac2f700c              # double 0.81853183393423156
	.quad	0x3fedf90d40e77d46              # double 0.93665182758915289
	.quad	0x3fc7f2ebcddf38d8              # double 0.18710086395589687
	.quad	0x3fe6d6a1479abba3              # double 0.71369995103110673
	.quad	0x3fc3099248e83c40              # double 0.14872959670944574
	.quad	0x3fdbda74f4f9741a              # double 0.43520854876789061
	.quad	0x3feceb2393e9d957              # double 0.90370348824834934
	.quad	0x3fdda90348a08134              # double 0.46344072430112537
	.quad	0x3fe67c61fb2903d3              # double 0.70268343977670111
	.quad	0x3fc25a2709b83324              # double 0.14337623571955149
	.quad	0x3fcb36e3c4a51a4c              # double 0.21261260129741044
	.quad	0x3fdc08b9ca9db87e              # double 0.43803257738807833
	.quad	0x3fe82881cd556673              # double 0.75494470695703197
	.quad	0x3fbf4ab49459e520              # double 0.12223366376737888
	.quad	0x3fb4ab6a7a5dcd38              # double 0.080740599512684308
	.quad	0x3fc081fe6009314c              # double 0.12896709145787566
	.quad	0x3fdd92376c52e276              # double 0.46204934671872111
	.quad	0x3fd700fff3205550              # double 0.35943602316668422
	.quad	0x3fd826a01aee1088              # double 0.37735750799061707
	.quad	0x3fc5e3749f6b9980              # double 0.17100389274783012
	.quad	0x3fa4192cf45fba40              # double 0.039254574614336679
	.quad	0x3feb436c5d2381ac              # double 0.85198038283492882
	.quad	0x3fde4576b18717f0              # double 0.472989724509147
	.quad	0x3fdce58e358a1a3a              # double 0.45151095608199265
	.quad	0x3fecbe789acfaf54              # double 0.8982508681924437
	.quad	0x3fe1d9494166188e              # double 0.55777418873982909
	.quad	0x3febf845fea36c8a              # double 0.87405681356484988
	.quad	0x3fe2d9e2c4f50432              # double 0.58909738987143201
	.quad	0x3fb22d7f6423de60              # double 0.071006738613385689
	.quad	0x3fec0fc656fdea87              # double 0.87692563047979
	.quad	0x3fe483b8657ff338              # double 0.64107913803272876
	.quad	0x3fedd9146aec363c              # double 0.93274899371471731
	.quad	0x3fe00aeed4866f7e              # double 0.5013345862275711
	.quad	0x3fef490efa8a8963              # double 0.97766827520198906
	.quad	0x3fe32c3443548abc              # double 0.59914601469457507
	.quad	0x3fe9722a5c57b424              # double 0.79518621478712647
	.quad	0x3fe69a5cab6cf350              # double 0.70634301644859399
	.quad	0x3fe46587a01e4d0b              # double 0.63739377282254972
	.quad	0x3fe9c46d1997082e              # double 0.80522780416527495
	.quad	0x3feeb163d7abfad7              # double 0.95915405391118724
	.quad	0x3fe50ebe35755eaf              # double 0.65804968300922961
	.quad	0x3fe66e67e3105ad6              # double 0.70097727154174083
	.quad	0x3fe82693379d4565              # double 0.75470887052703672
	.quad	0x3fe6a5d2035c4650              # double 0.70774174362504461
	.quad	0x3fa5730cef879880              # double 0.041893390883886106
	.quad	0x3fd2877fd1228fa4              # double 0.28952022002544653
	.quad	0x3fdd0eee3c11b102              # double 0.45403629175304172
	.quad	0x3fe6d8f6ecd7a2c3              # double 0.71398493059413004
	.quad	0x3fc020f33710cae8              # double 0.12600555599927721
	.quad	0x3fefeeebacd6ccb2              # double 0.99791511304501612
	.quad	0x3fe2f1b172e31bfb              # double 0.5920035594834866
	.quad	0x3fcc3a0fd5425a58              # double 0.22052190697714269
	.quad	0x3fd63dfca4adaff2              # double 0.3475333793819565
	.quad	0x3fe85ddd53cb06b5              # double 0.7614580761512203
	.quad	0x3f963e2bdb020b40              # double 0.021721539728342565
	.quad	0x3fc89be753f0a900              # double 0.19225780104290635
	.quad	0x3fdb1ce96405e986              # double 0.42363962905769659
	.quad	0x3fe5548c46aae932              # double 0.66657079508084949
	.quad	0x3fe85cf5afbcf9d3              # double 0.76134762119164134
	.quad	0x3fe18e108b048dd9              # double 0.54859187271034238
	.quad	0x3fefa883a8f0c819              # double 0.98932059284402662
	.quad	0x3fb64e6b87968f28              # double 0.087134094812935659
	.quad	0x3fe768081bfce7ef              # double 0.73144917932881792
	.quad	0x3fce6d2c42ee832c              # double 0.23770669239186171
	.quad	0x3fd40bb98e17f2fe              # double 0.31321562649081602
	.quad	0x3fd3638b6c2f83a8              # double 0.30295072140693913
	.quad	0x3fdc27a4bf3ecff6              # double 0.4399196498518444
	.quad	0x3fde0ce840700f72              # double 0.46953779499766946
	.quad	0x3fee4a4a506fa3db              # double 0.94656863889860732
	.quad	0x3f92491964a870a0              # double 0.017856976288485371
	.quad	0x3fef1f76d30ab0d7              # double 0.97259083956808012
	.quad	0x3fbe8ef34ec33818              # double 0.11936875031389638
	.quad	0x3fdb8bb27ee41eb4              # double 0.43040144340236997
	.quad	0x3fd360dccdb7bdb8              # double 0.30278701867697633
	.quad	0x3fe8228f5d8ab2cc              # double 0.75421875257378578
	.quad	0x3fe08798500fae38              # double 0.51655212056124977
	.quad	0x3fcddcceb15fd924              # double 0.23330100689754218
	.quad	0x3fe4650d309eb65d              # double 0.63733539100730818
	.quad	0x3fe6a2b8a03f9f41              # double 0.70736342714824485
	.quad	0x3fdf45023ad95514              # double 0.48858695742576796
	.quad	0x3fe77ab2efbe1b17              # double 0.73372790169455271
	.quad	0x3fdc95bbd0ce0f28              # double 0.44663901702027653
	.quad	0x3fd7312dc0064be4              # double 0.36237663032915024
	.quad	0x3fef1ea6c1bef6a2              # double 0.97249162522321719
	.quad	0x3fd7a4f44bbde2aa              # double 0.36944301029829296
	.quad	0x3fb2012e9d846130              # double 0.070330537277531802
	.quad	0x3fc74494742fae9c              # double 0.18178039239079602
	.quad	0x3fcf152487675b98              # double 0.24283272372732934
	.quad	0x3fc3b36941adbbc8              # double 0.15391269404378094
	.quad	0x3fe319bf5ecbb984              # double 0.59689301028065289
	.quad	0x3fac1ac20bd18370              # double 0.054891647284199929
	.quad	0x3fb1a9502747df78              # double 0.068989762868907678
	.quad	0x3fdfb0bc67185ebc              # double 0.49516210620775403
	.quad	0x3fdfc8210488a324              # double 0.49658990328548414
	.quad	0x3fdd494013efa570              # double 0.45759584376226936
	.quad	0x3fb7e33a48c8cc58              # double 0.093310969133015731
	.quad	0x3fc48f9c912de690              # double 0.16063267792542435
	.quad	0x3fdf400c41ed3f2a              # double 0.48828417242201516
	.quad	0x3fc6e19d9caf5184              # double 0.17876024389864764
	.quad	0x3fe5fe181db73a77              # double 0.68726735881666812
	.quad	0x3fe0d7beca3777ed              # double 0.5263360929054649
	.quad	0x3fbdaf630240be78              # double 0.11595743947031589
	.quad	0x3fd0ee949b9d0124              # double 0.26456179806338498
	.quad	0x3fed61516b8815ab              # double 0.9181296444154915
	.quad	0x3fe0a3a5a80fa7c9              # double 0.51997645210689669
	.quad	0x3fc05ae283e5bc88              # double 0.12777358475020528
	.quad	0x3fe6f4ccdbe76980              # double 0.71738284063330582
	.quad	0x3fee510016ec7a25              # double 0.94738773801129084
	.quad	0x3fbe5405568aa8c0              # double 0.11846955645401902
	.quad	0x3fe14f116f33a061              # double 0.5409018680484331
	.quad	0x3fdb45d2c633af3c              # double 0.42613667827275825
	.quad	0x3fe38bba3f1b18b6              # double 0.61080658269272337
	.quad	0x3fedbac642896bf1              # double 0.92904961581677814
	.quad	0x3fe4576a49d44b94              # double 0.6356707994440165
	.quad	0x3fe5a9cb6ab5dfe4              # double 0.67697687951931274
	.quad	0x3fec258cbeb90be4              # double 0.8795837140136169
	.quad	0x3fdff218fcb490ca              # double 0.499151465208581
	.quad	0x3fe7fcb6f2af42b3              # double 0.74959895514810737
	.quad	0x3fea9a5c4755781e              # double 0.83134283001323062
	.quad	0x3fc05b1dd3b83290              # double 0.12778065526835691
	.quad	0x3fb1dbd8204fe6f0              # double 0.069760806931210118
	.quad	0x3fc38cba474bd200              # double 0.15273216706522419
	.quad	0x3fb9c95918373668              # double 0.10072857705309846
	.quad	0x3fed3fdd8d433d4c              # double 0.91404607382166025
	.quad	0x3fd61b1250fa16ee              # double 0.34540231616880035
	.quad	0x3fee5278d6618e23              # double 0.94756738539985397
	.quad	0x3fc1a898bb79c17c              # double 0.13795766023714495
	.quad	0x3fc45fd0d0bd59fc              # double 0.1591740626560777
	.quad	0x3fd627ff0d48eb48              # double 0.34619118020389239
	.quad	0x3fc92672944291f0              # double 0.19648582686671956
	.quad	0x3fe7534d65425081              # double 0.72891874100834297
	.quad	0x3fcdf08ed58f2c9c              # double 0.23390374591540286
	.quad	0x3fb71c71fc050ce8              # double 0.090277790096525146
	.quad	0x3f94ad34894b6ea0              # double 0.020191975478936031
	.quad	0x3fe05e2255117283              # double 0.51149098029016249
	.quad	0x3fdcdf45eef09d96              # double 0.45112751325583511
	.quad	0x3fe1034e01d4a51c              # double 0.5316534076456807
	.quad	0x3fc330900eb4a8f0              # double 0.1499195167355718
	.quad	0x3fc40d0fa1c92118              # double 0.15664859199228753
	.quad	0x3fe53e06d8c73cd1              # double 0.66382162417894552
	.quad	0x3fdc5e41aee1e99e              # double 0.44325296476713472
	.quad	0x3fe21b3b1596b1cd              # double 0.56582407204182916
	.quad	0x3fe3b4911234fa73              # double 0.61579183155102013
	.quad	0x3fe2925db7f8c9c3              # double 0.5803669541549471
	.quad	0x3fed85c7461cc956              # double 0.92258037275159199
	.quad	0x3fcf22d621d5588c              # double 0.24325062419911025
	.quad	0x3fe8871736666fd0              # double 0.76649056077030231
	.quad	0x3feea76b6ff13b7c              # double 0.95793697227223573
	.quad	0x3fd2e550fc6d5a1a              # double 0.29524635935868704
	.quad	0x3fdaa5151aff1306              # double 0.41632583271375301
	.quad	0x3fe1aac5b8fc4deb              # double 0.55209623460762935
	.quad	0x3fe71a590342e82e              # double 0.72196627270682767
	.quad	0x3fe267161a6230fa              # double 0.57508378174819019
	.quad	0x3fcb9ac18a2eee88              # double 0.21566027877075933
	.quad	0x3fa52799249bb2d0              # double 0.041317735403799127
	.quad	0x3fe5f486432a90ca              # double 0.68609917753612959
	.quad	0x3fd87b110be66caa              # double 0.38251138841742238
	.quad	0x3fee18e32ee3364d              # double 0.94053801686977467
	.quad	0x3fe7fe0a12b972e4              # double 0.74976066262351226
	.quad	0x3feb84fd1110e159              # double 0.85998395283881301
	.quad	0x3fd0eecdd18daeda              # double 0.26457543815807372
	.quad	0x3fe3448de34ca3f6              # double 0.60211843866738834
	.quad	0x3fdc94b16e86c20c              # double 0.44657550614923092
	.quad	0x3fb91b79829716c0              # double 0.098075479872103521
	.quad	0x3fe89598cfe36286              # double 0.76826134303253535
	.quad	0x3feba6df44d0a8b6              # double 0.86412013473934368
	.quad	0x3fed3e86539d2ffc              # double 0.91388241129743574
	.quad	0x3fdd0535cdf5b160              # double 0.45344300378089564
	.quad	0x3fb8f754f0d5fab0              # double 0.097523983762566102
	.quad	0x3fd33acb64435bc4              # double 0.30046353141136373
	.quad	0x3fb8937a1a1e90f8              # double 0.096000319840246706
	.quad	0x3fe7c90d865ada49              # double 0.74329258195104686
	.quad	0x3fe291eb11bdfa97              # double 0.58031228509192345
	.quad	0x3feabf68342eaed0              # double 0.83586511794916341
	.quad	0x3fd4774e2a53e3b8              # double 0.31978181966365637
	.quad	0x3fe0a6bd19c75626              # double 0.52035384211439317
	.quad	0x3fe818493dc83f0a              # double 0.75296461169088613
	.quad	0x3fd298c9eed5e48a              # double 0.29057548831730939
	.quad	0x3fe325893d534bf9              # double 0.59833204248059169
	.quad	0x3fd8a25dd81f3b80              # double 0.38491006951965545
	.quad	0x3fec54c9c28f729e              # double 0.88535011291567733
	.quad	0x3fd2c3f7244b1dc4              # double 0.29321077865867218
	.quad	0x3fe509c712b93756              # double 0.65744355828222001
	.quad	0x3fe4daeaddc2199c              # double 0.65172332107686115
	.quad	0x3feec13af77dc85b              # double 0.96108768785621678
	.quad	0x3feb774fafdbbd1b              # double 0.85831436488470858
	.quad	0x3fe9b5d35f4de66c              # double 0.80344551672096775
	.quad	0x3fe765d07d63d629              # double 0.73117851724845651
	.quad	0x3fd12cb387b7edb6              # double 0.26835335019833495
	.quad	0x3fe8d969890abd88              # double 0.77653958097464315
	.quad	0x3fd4b6863ee45860              # double 0.32364040509981429
	.quad	0x3febe2e9e55ae368              # double 0.87144942088989996
	.quad	0x3fccf29436be7e90              # double 0.2261529223733203
	.quad	0x3fbc085729fcc800              # double 0.10950226569255506
	.quad	0x3fe1519d19cef52e              # double 0.54121260681828232
	.quad	0x3fe4b248bdec1490              # double 0.64676320165803425
	.quad	0x3fd251ee46088de8              # double 0.28625065650177683
	.quad	0x3fed252471a3e73f              # double 0.91078397937165068
	.quad	0x3fef8e98eec963c8              # double 0.98615690839789582
	.quad	0x3fefd08d2554cf9c              # double 0.99420792857425821
	.quad	0x3fc37d87a97bba0c              # double 0.15226836944152955
	.quad	0x3fd3056d934a5afe              # double 0.29720630058129405
	.quad	0x3fe40fc32eb45ad4              # double 0.62692412492728034
	.quad	0x3feda53b79e5f1ae              # double 0.92641996200796028
	.quad	0x3fdb7334817df7da              # double 0.42890656133374494
	.quad	0x3fea942cd7643efc              # double 0.8305877882830539
	.quad	0x3fe2f12ecff8c123              # double 0.59194126719925
	.quad	0x3fee360147c13ae5              # double 0.9440924073658975
	.quad	0x3fd6aca061c42d4a              # double 0.35428628489963343
	.quad	0x3fd0597ca8d139ea              # double 0.25546185003341171
	.quad	0x3fed758204a9525b              # double 0.92059422407562452
	.quad	0x3fe538e2d3b392ed              # double 0.66319409702245269
	.quad	0x3fde547ec5320c5e              # double 0.47390717751858868
	.quad	0x3fdfcb263a774478              # double 0.49677425107535766
	.quad	0x3fc49317316b5954              # double 0.16073884881070433
	.quad	0x3fd6c354a7c99f28              # double 0.35567203889375998
	.quad	0x3fe462c86af004d7              # double 0.63705845724339383
	.quad	0x3fe78238be453046              # double 0.73464619791185082
	.quad	0x3fea6ab967f89b24              # double 0.82552786166056479
	.quad	0x3fd45a0f647213ae              # double 0.31799683388845323
	.quad	0x3fef416dd0c3950b              # double 0.97673693441598297
	.quad	0x3fd84bfec5ab52e8              # double 0.37963837913166154
	.quad	0x3feec054579e53aa              # double 0.96097771752339622
	.quad	0x3fd88d638de4054e              # double 0.38362969261659863
	.quad	0x3fe21776ad62db59              # double 0.56536420692905687
	.quad	0x3fed38d02555d5c6              # double 0.91318518917130898
	.quad	0x3fdf2bfe383b4e80              # double 0.48706012240766228
	.quad	0x3febe8a8dbbbecdd              # double 0.87215083042920194
	.quad	0x3fc65893211d10fc              # double 0.17457808606025782
	.quad	0x3fedf40640172ad4              # double 0.93603813665080304
	.quad	0x3fc75eeeac14df88              # double 0.18258460428637258
	.quad	0x3fed7d57113f7574              # double 0.92155030602195475
	.quad	0x3fd7dd2eb0e66ca4              # double 0.37287490153694081
	.quad	0x3fcc72d1f9700e58              # double 0.22225403480125538
	.quad	0x3fc3985adc926ce0              # double 0.15308700342288883
	.quad	0x3fd672cd01c9673e              # double 0.35075688528523929
	.quad	0x3feea3d6d856e94e              # double 0.95749990705307098
	.quad	0x3fb9f38670a12150              # double 0.10137214898816649
	.quad	0x3fdd47cd9b76b012              # double 0.45750751668924849
	.quad	0x3fb90870a1f34fa0              # double 0.097785033739738569
	.quad	0x3f97df2414f10fa0              # double 0.023312152651001505
	.quad	0x3fe1bce7cf4bca9a              # double 0.55430975425254592
	.quad	0x3fe57cc4fa3a4a79              # double 0.6714806449184173
	.quad	0x3fd52c4d7c76d79c              # double 0.33082902102193557
	.quad	0x3fa3c150a42b9900              # double 0.038584251442260964
	.quad	0x3fcb9907fead09b8              # double 0.21560764251087305
	.quad	0x3fecea826018565c              # double 0.90362662094657819
	.quad	0x3fd0790dc24fbbfe              # double 0.25738853431442965
	.quad	0x3fe9e1747e329b57              # double 0.80877136848435327
	.quad	0x3fe68b9f6cf83377              # double 0.70454379351723062
	.quad	0x3fd899419b028874              # double 0.38435402047810574
	.quad	0x3fc86bd65c396480              # double 0.19079093459257379
	.quad	0x3fe4a35fcb94afbf              # double 0.64494313966633132
	.quad	0x3fd67876ee9a66ea              # double 0.35110257435881798
	.quad	0x3fe19236703f40d8              # double 0.54909822390802798
	.quad	0x3fe7b2b2f787966b              # double 0.74056385369904143
	.quad	0x3fcc2646a11e6944              # double 0.21991808764580345
	.quad	0x3fdc45e42429e784              # double 0.44176581889734501
	.quad	0x3fee944b7923277c              # double 0.95560239467270902
	.quad	0x3fdd5f0fc28ac016              # double 0.45892709730378678
	.quad	0x3fd42f28c167a154              # double 0.31537836920917539
	.quad	0x3fd392ff69b912aa              # double 0.30584702801233254
	.quad	0x3fe21037817ce1b3              # double 0.56447959223355892
	.quad	0x3feb0e20b2d1dad2              # double 0.84547457624179345
	.quad	0x3fe27ca233d6eb2f              # double 0.57771406292827077
	.quad	0x3fdf7dcb3d6e0150              # double 0.49205285071368099
	.quad	0x3fd82ce7fa7f7ca6              # double 0.37774085486121078
	.quad	0x3fe7e25c635aa2f9              # double 0.74638194470489261
	.quad	0x3fdf70f9bb9f6ba2              # double 0.49127047846348593
	.quad	0x3fe3c4567eb73102              # double 0.6177170252717874
	.quad	0x3fed13fcb48baea0              # double 0.90868983519381529
	.quad	0x3fea8c63111383bb              # double 0.82963708243561685
	.quad	0x3feb1c94a6ec4c66              # double 0.84723885156780621
	.quad	0x3fee6744cf4dc4e3              # double 0.9501060532476483
	.quad	0x3febf46b9354225e              # double 0.87358645224692189
	.quad	0x3fc55216f296e500              # double 0.1665676769751272
	.quad	0x3fe45f68f981427a              # double 0.63664673549108319
	.quad	0x3fe344ff908e28c1              # double 0.60217264398058756
	.quad	0x3fe3d7b16b0b08af              # double 0.62007971674781526
	.quad	0x3fd6fe84d9f72696              # double 0.3592846039360692
	.quad	0x3fbe2f2fd76726d0              # double 0.11790751465664617
	.quad	0x3fecd1c154ff04f8              # double 0.90060488320173615
	.quad	0x3fe19b47300ce39c              # double 0.55020484337648012
	.quad	0x3fdbb95543474d24              # double 0.43318683214347886
	.quad	0x3fd6326cdf3ec942              # double 0.34682771493239184
	.quad	0x3fe92bb56937cf3f              # double 0.78658552694694339
	.quad	0x3fe477a54b46f7d4              # double 0.63960518553335044
	.quad	0x3fc70861ea9e5bd4              # double 0.17994331317888046
	.quad	0x3fec32a0728a88da              # double 0.88118002291983122
	.quad	0x3fadd0b5cce97420              # double 0.058232957137740238
	.quad	0x3fd66a646f546102              # double 0.35024367210418472
	.quad	0x3fe7daf9dfa11a35              # double 0.74548047711943488
	.quad	0x3fd284c9ea033b3e              # double 0.28935478070063769
	.quad	0x3fd45d7fa79aa582              # double 0.3182067047842666
	.quad	0x3fe267b6cf222a5b              # double 0.57516041236642523
	.quad	0x3fe879413a99f442              # double 0.7648016113813656
	.quad	0x3fd64734d624b3fc              # double 0.34809609329641922
	.quad	0x3fdde324a6ff5db6              # double 0.46698871906616135
	.quad	0x3fdaf142dacf2b64              # double 0.4209754120644702
	.quad	0x3fe4a6f42354847e              # double 0.64538008594912788
	.quad	0x3fe53c346ea2ef4a              # double 0.66359922035869912
	.quad	0x3fe2f9914a25c468              # double 0.59296478731097313
	.quad	0x3fd9a70bb38e0e90              # double 0.40082066092166091
	.quad	0x3fd840b2b6449af0              # double 0.37894885825737301
	.quad	0x3fe1658edfdf25bd              # double 0.54364722943244426
	.quad	0x3fc15b8c799f9b1c              # double 0.13560634554524931
	.quad	0x3fd79efedf06d0b4              # double 0.36907932071631966
	.quad	0x3fe404c90d980139              # double 0.62558415083916608
	.quad	0x3fdfd0eb3a001e74              # double 0.49712639488323096
	.quad	0x3f6cca9f2a21e600              # double 0.0035145863230894303
	.quad	0x3fef596bad7bb64e              # double 0.97966560252616275
	.quad	0x3fe2fb17c3b0e87a              # double 0.59315098019511869
	.quad	0x3febf9f201dc006c              # double 0.87426090586815297
	.quad	0x3fd2693bc63fa1a4              # double 0.28767294273577648
	.quad	0x3fe000f3b056a61c              # double 0.50011619988544309
	.quad	0x3fd9fa1a16ef07ae              # double 0.40589000930423935
	.quad	0x3fdf8370b51106c8              # double 0.49239747698093739
	.quad	0x3fda988d1a87d67c              # double 0.41556098547821541
	.quad	0x3fe99a8bf50546ef              # double 0.80011556487644764
	.quad	0x3fe5c57fef21a9a1              # double 0.68035885529871021
	.quad	0x3fea26828ca4e29c              # double 0.81720092267558497
	.quad	0x3fe504440d07cd9f              # double 0.65677073044792056
	.quad	0x3fdcc5e83834df98              # double 0.4495792912380181
	.quad	0x3fed34a3b94c30a4              # double 0.91267572585049494
	.quad	0x3fc2db0a96c15fb8              # double 0.14730961190320868
	.quad	0x3fd75e9f9c067818              # double 0.3651503585514333
	.quad	0x3fe455beab89e100              # double 0.63546689513808019
	.quad	0x3fb3010a5dbd9470              # double 0.074234626661181968
	.quad	0x3fc627a0a4a01678              # double 0.1730843356928522
	.quad	0x3fba1434640cfd78              # double 0.10187079851765712
	.quad	0x3facea4e06cffa10              # double 0.056475103694527573
	.quad	0x3feaeb1345316aff              # double 0.84119571222558409
	.quad	0x3fe8fc212969f9f1              # double 0.78077753151575113
	.quad	0x3fccf1ea882d8930              # double 0.22613269471464426
	.quad	0x3fecce85d4a2ac1b              # double 0.90021029978140932
	.quad	0x3fe71bcadff4a459              # double 0.72214263669333001
	.quad	0x3feee636507b9ba6              # double 0.96560207099252149
	.quad	0x3fe4b57db0b2665f              # double 0.64715466033085167
	.quad	0x3fe12eac433945c6              # double 0.5369473755801486
	.quad	0x3feb85cb754658cd              # double 0.8600823679469386
	.quad	0x3fd9907228bad44e              # double 0.39944128015060165
	.quad	0x3fec3daf516d7c59              # double 0.88252988723605619
	.quad	0x3fefdf7e86b4260c              # double 0.99603201207463731
	.quad	0x3fd5f1f40e1feca6              # double 0.34289265994420715
	.quad	0x3fcf8ebccc25b334              # double 0.24654350250366408
	.quad	0x3fe162a9a137e524              # double 0.54329377639729559
	.quad	0x3fe8ac85f618c4e1              # double 0.77105997148296634
	.quad	0x3fdfdcad6fb71fee              # double 0.49784408483219422
	.quad	0x3fd86b204589e2a8              # double 0.38153845587616297
	.quad	0x3fee9fd986a635f0              # double 0.95701290415462203
	.quad	0x3fc4f7347d6d2708              # double 0.16379409908613973
	.quad	0x3fd2340a996debae              # double 0.28442635520303383
	.quad	0x3fe1365c03ad02d1              # double 0.53788567274031085
	.quad	0x3fe76b82f74cdb47              # double 0.73187397290062328
	.quad	0x3feff588c32c23c6              # double 0.9987224399529786
	.quad	0x3fee97ba40c2cf48              # double 0.95602142952564239
	.quad	0x3fc89df9a17bda3c              # double 0.19232101807547675
	.quad	0x3fc0543710139244              # double 0.12757004055960597
	.quad	0x3fe102ae447c64a1              # double 0.53157723785547628
	.quad	0x3fe3ec73bf3a240f              # double 0.62261378621144725
	.quad	0x3fe532de198ace88              # double 0.66245942105020195
	.quad	0x3fd8a2ee2bf384ae              # double 0.38494447986711122
	.quad	0x3fe1c99183217a12              # double 0.55585551845053005
	.quad	0x3fd297861550c8d8              # double 0.29049827653501614
	.quad	0x3feca54a625d4f87              # double 0.89517707073035602
	.quad	0x3fb4a2c98a81ece8              # double 0.080608936610520154
	.quad	0x3fe5b68fa1c4b774              # double 0.67853528590579382
	.quad	0x3fdc04f2be4f446a              # double 0.4378020151608043
	.quad	0x3fc4b22f96aa1a28              # double 0.16168780190146603
	.quad	0x3fd5ea9d17af8920              # double 0.34244468033843312
	.quad	0x3fd46fb387ce8b2e              # double 0.31931770574935825
	.quad	0x3fd27fa44f5694ec              # double 0.28904063938018854
	.quad	0x3fefe9d142c224e7              # double 0.9972921661257289
	.quad	0x3fd746cafe3a1da2              # double 0.36369585825783635
	.quad	0x3fcd4d1ac66c6b4c              # double 0.22891554535530145
	.quad	0x3fdaf7fdf1337700              # double 0.42138622813023119
	.quad	0x3febba24fab020cf              # double 0.86647271120548364
	.quad	0x3fef51f68bd5c1ff              # double 0.97875525771638638
	.quad	0x3fd6ac659d408d1e              # double 0.35427227360396951
	.quad	0x3fd3f3e6557e337c              # double 0.31176145886347917
	.quad	0x3fca5c15bbe09684              # double 0.2059352080697644
	.quad	0x3feddd4825f6df6f              # double 0.93326194205199708
	.quad	0x3fe77643bfb9d8f3              # double 0.73318660208204134
	.quad	0x3fe59cdb4219d22e              # double 0.67539751921009894
	.quad	0x3fece7443b99ced6              # double 0.90323077812942176
	.quad	0x3fd924f6f1d02c8a              # double 0.392881141801532
	.quad	0x3fca8b87a60b3c60              # double 0.20738311393367592
	.quad	0x3fe3a1ffabd9db79              # double 0.61352523388528291
	.quad	0x3fc56701dc528668              # double 0.1672060323517599
	.quad	0x3fdb29aa8aacc27e              # double 0.42441810171570882
	.quad	0x3fc6d2fc02e4b668              # double 0.17831373349456503
	.quad	0x3fe9d769a05b6f07              # double 0.80754548377760293
	.quad	0x3fb621b1b22b0520              # double 0.086451631544168794
	.quad	0x3fedd5f2c252ea02              # double 0.93236673311122353
	.quad	0x3fbae15cf196d390              # double 0.10500126741574278
	.quad	0x3fb7fc443bd807f0              # double 0.093693031893081757
	.quad	0x3fde737d395fb780              # double 0.47579889872474013
	.quad	0x3fd0844fac921da6              # double 0.25807563641179809
	.quad	0x3fd7e675f4a5ccf4              # double 0.37344120875714215
	.quad	0x3fdb6d4c46c5c068              # double 0.42854601775525802
	.quad	0x3fcddef39c6a6f74              # double 0.23336644303787646
	.quad	0x3fcff1077eeeeb4c              # double 0.24954312990106542
	.quad	0x3fe3aadcf475a786              # double 0.61460731264126944
	.quad	0x3fc16087e2933f30              # double 0.1357583862613807
	.quad	0x3fed5d55c2f873ca              # double 0.91764343338183463
	.quad	0x3fc57cc4753d2ce8              # double 0.1678700993019
	.quad	0x3fddcaedb2576ef2              # double 0.46551077285924614
	.quad	0x3fe12e22636ed643              # double 0.5368816320466937
	.quad	0x3fe03200f50f5bea              # double 0.50610397208481328
	.quad	0x3febb964d07d81be              # double 0.86638107987169355
	.quad	0x3fd7d00a198e2a3c              # double 0.37207272048604856
	.quad	0x3fd496c2d9ea2ace              # double 0.32170172959073973
	.quad	0x3fe38f968c13df59              # double 0.61127784117614248
	.quad	0x3fda06a4958a1386              # double 0.40665545085385479
	.quad	0x3fed5f43eb671615              # double 0.91787906624876092
	.quad	0x3fc333c276249880              # double 0.15001707810114695
	.quad	0x3fd5bdbec621f34e              # double 0.33970612858665994
	.quad	0x3fdd86bd9f03892e              # double 0.46134892014210294
	.quad	0x3fe7e717cebcabd1              # double 0.74695959451980276
	.quad	0x3fde3ca782d12674              # double 0.47245204711052868
	.quad	0x3fb6efd3808b0da8              # double 0.089596957094775775
	.quad	0x3fe647e7ef4d60ff              # double 0.69627758730624112
	.quad	0x3fbbd7e7948049c0              # double 0.10876319289699321
	.quad	0x3fef240e5b3c87f6              # double 0.97315137691134512
	.quad	0x3fb101d3bfbdba28              # double 0.066434130012318904
	.quad	0x3fdfb6e3bc2f4cfe              # double 0.49553769471567921
	.quad	0x3fea7ba2fe977999              # double 0.82759237027112242
	.quad	0x3fe0ca2c3238cd42              # double 0.5246792775055058
	.quad	0x3fdd27532501846c              # double 0.4555251943002705
	.quad	0x3fd97ed241ac06fa              # double 0.39836555875091018
	.quad	0x3fe6770020f95a35              # double 0.70202642860642206
	.quad	0x3fe8e3bbbf372e85              # double 0.77779948565280732
	.quad	0x3f81ad4a89e538c0              # double 0.0086313079197249953
	.quad	0x3fbe26a30e505970              # double 0.11777705287417972
	.quad	0x3fea017daa70f59a              # double 0.81268199242883843
	.quad	0x3fdda596707fc18e              # double 0.46323166834101748
	.quad	0x3fe970b40bcf30d8              # double 0.79500772768508465
	.quad	0x3feb7e583069c72f              # double 0.85917291122152573
	.quad	0x3fcde46914b343f0              # double 0.23353303442721041
	.quad	0x3fe998acc24914a4              # double 0.79988706537610143
	.quad	0x3fafdf07e2bff800              # double 0.062248464993885477
	.quad	0x3fd2288b40aff940              # double 0.28372460667732824
	.quad	0x3fd6b3272fddc78a              # double 0.3546846358723249
	.quad	0x3fdd713268ff588a              # double 0.46003399137169565
	.quad	0x3fc5f12508f43164              # double 0.17142165124131303
	.quad	0x3fea228e2d7b164b              # double 0.81671818621607295
	.quad	0x3fb90448cfeb4380              # double 0.097721625100588127
	.quad	0x3fd10f4f2e6b77c2              # double 0.26655940564330305
	.quad	0x3fe1a616ff070664              # double 0.55152463731810686
	.quad	0x3fe2737a45d4ecf6              # double 0.57659639014255393
	.quad	0x3fd011ff6d8bc77c              # double 0.25109849641659543
	.quad	0x3fe5f605f6f7bff8              # double 0.68628214107411534
	.quad	0x3fef255d7eda5d2a              # double 0.97331118370030834
	.quad	0x3fdfc2894ed40e42              # double 0.49624855707245186
	.quad	0x3fdb84eb377b79e6              # double 0.42998772066303415
	.quad	0x3fe3300fb4a88234              # double 0.59961686405956138
	.quad	0x3fcfa0429973bb54              # double 0.24707825176980214
	.quad	0x3fe2dadfe33068a0              # double 0.58921808598394776
	.quad	0x3fed7527a14e5cd4              # double 0.92055112366770197
	.quad	0x3fe83618daa0c4a5              # double 0.7566036481931816
	.quad	0x3fc0f92ad7994574              # double 0.13260398413926178
	.quad	0x3fdd65a0bef372c2              # double 0.45932787559085508
	.quad	0x3fc675ba3667eb24              # double 0.17546775490321764
	.quad	0x3fd169715330f1ac              # double 0.27206071018351952
	.quad	0x3fd268df83a6f130              # double 0.28765094620372889
	.quad	0x3fcf1518f5f511ac              # double 0.24283134469636758
	.quad	0x3fed45cd4747f5e1              # double 0.91477073595131853
	.quad	0x3fd26b83f9c475ea              # double 0.28781222716665289
	.quad	0x3feab85ae40217f1              # double 0.83500427754256468
	.quad	0x3fbafe5f091bb1d0              # double 0.10544389698379253
	.quad	0x3fcd861a593be380              # double 0.23065499646306975
	.quad	0x3fd8feaeb4b12d5c              # double 0.39054458280289395
	.quad	0x3fd21c19c3909f16              # double 0.28296512697350928
	.quad	0x3fd9ef715b802718              # double 0.40523942885975961
	.quad	0x3fdd6dbd245f2a64              # double 0.45982292701652328
	.quad	0x3fb900999bccf6c0              # double 0.097665405785813952
	.quad	0x3fb638b4a4dcbdb0              # double 0.086802759408547869
	.quad	0x3fe53c21c96fed86              # double 0.66359032958227782
	.quad	0x3fce390e3024475c              # double 0.23611619330091116
	.quad	0x3fdf6e0a0e356078              # double 0.49109126460599084
	.quad	0x3fe2611de5913aa3              # double 0.57435507619250747
	.quad	0x3fbe6b11bf95dfa0              # double 0.11882124831561081
	.quad	0x3febe90be61983f5              # double 0.87219805661527394
	.quad	0x3fe1e56700c97c10              # double 0.55925321725578847
	.quad	0x3fe291a50339a32c              # double 0.58027887945090617
	.quad	0x3fe829153a4e1c48              # double 0.75501500499456942
	.quad	0x3fed5aefa6ff0a58              # double 0.9173506032605685
	.quad	0x3fe2fe0267b935a0              # double 0.59350700624934305
	.quad	0x3fdd2b22a7abd134              # double 0.45575777410637675
	.quad	0x3fe7ae38991b8eab              # double 0.74001722244107293
	.quad	0x3fe49243be508e62              # double 0.64285456820330134
	.quad	0x3fe394a3387e4516              # double 0.61189423593364967
	.quad	0x3fe813355a3cb22a              # double 0.75234477638656938
	.quad	0x3fc35acc21decf9c              # double 0.15120841649843164
	.quad	0x3fd62494f104eb48              # double 0.34598277604134298
	.quad	0x3fce1dc9e9b91cd8              # double 0.23528407966862264
	.quad	0x3fe052b5f49352e1              # double 0.51009652870797251
	.quad	0x3fe33a2c2df5ecde              # double 0.60085114456833444
	.quad	0x3fdaa1062b41e8b8              # double 0.41607813095437107
	.quad	0x3fe1032ded928061              # double 0.53163811112245807
	.quad	0x3feb8db1913360be              # double 0.86104658469687201
	.quad	0x3fe4227154648061              # double 0.629204430417314
	.quad	0x3fde8f5109c80e78              # double 0.47749734835836177
	.quad	0x3fec6832134b0602              # double 0.88771919029403557
	.quad	0x3fdbdc3dea85127c              # double 0.43531749632192152
	.quad	0x3fe9b8b56c2c33a8              # double 0.80379744651292118
	.quad	0x3fdb944631940d96              # double 0.4309249385989572
	.quad	0x3fefc0e74f33b3a3              # double 0.99229779690869113
	.quad	0x3fd191041b04a28c              # double 0.27447607649313777
	.quad	0x3fe29fb7cee81946              # double 0.58199682628109239
	.quad	0x3fe3606856039340              # double 0.60551850127794893
	.quad	0x3fb1ac89a7baf0a0              # double 0.069038966607822605
	.quad	0x3fe738234e4065e3              # double 0.72560277255541583
	.quad	0x3fec47e62b9f5111              # double 0.88377674598680944
	.quad	0x3fec8b2e82108f56              # double 0.89198995021113592
	.quad	0x3fec8f3eb1f5345a              # double 0.89248595006359754
	.quad	0x3fe88df4cf5198b9              # double 0.76732864849034066
	.quad	0x3fe5a1cdde145d75              # double 0.67600148558533013
	.quad	0x3fdc166bc16f539c              # double 0.43886846437572458
	.quad	0x3fe2a8181b0c41a3              # double 0.5830193069723929
	.quad	0x3fee59ee68111030              # double 0.94847793889539922
	.quad	0x3fec2b0fe47adbd6              # double 0.88025660157188201
	.quad	0x3fd3e6a8c7a042d6              # double 0.31095332617500782
	.quad	0x3fabd9cffe929cf0              # double 0.054396152330179137
	.quad	0x3fe92a6d98c98fb3              # double 0.78642921296385848
	.quad	0x3fc0d8f46c26fb9c              # double 0.13162093430397881
	.quad	0x3fe5c5fb999d1b4c              # double 0.68041782381701799
	.quad	0x3fe6e69c25575981              # double 0.71565062802510238
	.quad	0x3fc39a7f045eba54              # double 0.15315234864597704
	.quad	0x3fe9f278a5c32284              # double 0.81084854484022672
	.quad	0x3fc8fa979450e4e0              # double 0.1951474641989881
	.quad	0x3fb416ff1ab42118              # double 0.078475898761216079
	.quad	0x3fc71337db9d90bc              # double 0.18027399276173195
	.quad	0x3fccc9178c81cc34              # double 0.22488684044546547
	.quad	0x3fcb90d09932df40              # double 0.21535689812093928
	.quad	0x3fe573f0fbf19909              # double 0.67040299613725651
	.quad	0x3fe5e5d92af9a1be              # double 0.68430765527323678
	.quad	0x3feefece8ddd0276              # double 0.96860435207061246
	.quad	0x3fdf65e743e9e29a              # double 0.49059468872250422
	.quad	0x3fefe6e3cb69502b              # double 0.99693479279313146
	.quad	0x3fdd24daa25dd970              # double 0.45537439209092323
	.quad	0x3fe34dc6fd54651d              # double 0.60324429968310123
	.quad	0x3fbbc95ad6673e18              # double 0.10854118093924858
	.quad	0x3fe9cbabf5728f75              # double 0.80611226977315076
	.quad	0x3fdb68b0142715f4              # double 0.42826463668856651
	.quad	0x3fd86f43be8cf7d6              # double 0.38179105385267798
	.quad	0x3fceecaf46156108              # double 0.24159804269834972
	.quad	0x3fdf750b091cc002              # double 0.49151874437211529
	.quad	0x3feb2a089a4545d1              # double 0.84888105517364398
	.quad	0x3f8c415c5b9c7d80              # double 0.013796540780787181
	.quad	0x3fda111175764856              # double 0.40729176016714541
	.quad	0x3fe3ab5d3ed61426              # double 0.61466848633483973
	.quad	0x3fc72ea25c33a5f4              # double 0.18111066343344329
	.quad	0x3fed710b43bf6bc7              # double 0.92004931671123635
	.quad	0x3fef853acdca4a8c              # double 0.98501339143179356
	.quad	0x3fea666a1bef6471              # double 0.82500176864699715
	.quad	0x3fe39f8734517ca3              # double 0.61322365015430014
	.quad	0x3fe23e615575ad4e              # double 0.57011477176039604
	.quad	0x3fe4d064f40ed8ba              # double 0.65043876330925987
	.quad	0x3fe098ab680bbdea              # double 0.51863642045458147
	.quad	0x3fcee8b78efb5b10              # double 0.24147696000610397
	.quad	0x3fe18ab281d9b46e              # double 0.54818082200439533
	.quad	0x3fdd7546de2b2996              # double 0.46028300949242273
	.quad	0x3fdb3530eb09f6d6              # double 0.42512152627010147
	.quad	0x3fcf796d23f1abd8              # double 0.24589313750342856
	.quad	0x3fea7a0402ad88fd              # double 0.82739449046155722
	.quad	0x3fb0020c594a22a0              # double 0.062531253623215211
	.quad	0x3fd94a87d7ac3256              # double 0.39517398893147992
	.quad	0x3fd33aa03230f248              # double 0.30045323277935099
	.quad	0x3fceb620743e9b18              # double 0.2399330680466043
	.quad	0x3fed355e3be1f307              # double 0.91276466079543261
	.quad	0x3fd9218a5b549852              # double 0.39267214697827513
	.quad	0x3fc64cab52e27020              # double 0.17421475932212704
	.quad	0x3fdcd1c59d6c0c9e              # double 0.45030346272705823
	.quad	0x3fd5737d0e4acd0c              # double 0.33517385860177806
	.quad	0x3fc0edb782dc3664              # double 0.13225454225214428
	.quad	0x3fd55ef14495106e              # double 0.33391982743729087
	.quad	0x3fe68db01e05ef7a              # double 0.70479589332488435
	.quad	0x3fe45bb69943aa36              # double 0.63619546827732765
	.quad	0x3fee5abe9c5a7c64              # double 0.94857721841607345
	.quad	0x3fcb3afc84e565d8              # double 0.21273762215677894
	.quad	0x3fc2cc178820b490              # double 0.14685339114058538
	.quad	0x3febec275983bd9c              # double 0.87257735713312767
	.quad	0x3fc23c23c198ce54              # double 0.14246031716321517
	.quad	0x3fc77dec2099d858              # double 0.18353034583896277
	.quad	0x3fb210f1a53c2840              # double 0.070571043816159751
	.quad	0x3fd3f5eb0f7322ac              # double 0.31188465603603777
	.quad	0x3fc49464a071c020              # double 0.16077859720417198
	.quad	0x3f905fd2e1dc31a0              # double 0.015990538630875073
	.quad	0x3fed13ce7825d174              # double 0.90866778818467119
	.quad	0x3fcea55d21a6eb0c              # double 0.23942150252499805
	.quad	0x3fea8e912bd3da2c              # double 0.82990320739810874
	.quad	0x3fb383cc637eb300              # double 0.07622983388018767
	.quad	0x3fd1be8ef6b677d2              # double 0.27725576489490067
	.quad	0x3fe74929b9f0be88              # double 0.72768102947698399
	.quad	0x3fdf86be8e20efd0              # double 0.49259914283515815
	.quad	0x3fe58efdd6668ed4              # double 0.67370502352829442
	.quad	0x3fe0e7394ca3e5f8              # double 0.52822556465906612
	.quad	0x3fd623d7ce417fd2              # double 0.34593768255399227
	.quad	0x3fe999cbe0adbaa4              # double 0.80002397425217397
	.quad	0x3fb1cf6e4732c880              # double 0.069571392424025547
	.quad	0x3fd44f9a2acdbf3e              # double 0.31735853366898314
	.quad	0x3fec703d6f1fe968              # double 0.88870116905245045
	.quad	0x3fef37ea6f5e709a              # double 0.97557565452327144
	.quad	0x3fcdbbc29214cd20              # double 0.23229248173593309
	.quad	0x3febbf59566429e2              # double 0.86710802911084905
	.quad	0x3fdef93c201aa18c              # double 0.48396208892020165
	.quad	0x3fac3fb80f78e760              # double 0.0551736372839986
	.quad	0x3fd0dd1daf5674c4              # double 0.26349584696602002
	.quad	0x3fde57eb369a52b0              # double 0.47411613781268169
	.quad	0x3fe36226f106f29e              # double 0.60573145938504402
	.quad	0x3fde97dbce50fdac              # double 0.47801871440966681
	.quad	0x3fe63c5fa3bfd5a4              # double 0.69486982328696856
	.quad	0x3fdc94a4587337f0              # double 0.4465723861475217
	.quad	0x3fd0b048aa9a16fc              # double 0.26075951252310836
	.quad	0x3febac8846aaf95c              # double 0.86481107523267608
	.quad	0x3fe2992d21187753              # double 0.58119827712992345
	.quad	0x3fe7a48737477cd8              # double 0.73883400723198189
	.quad	0x3fedc40f55242a9b              # double 0.93018309239535613
	.quad	0x3fdbef9e22be329a              # double 0.43650010483615065
	.quad	0x3fed78364b786b72              # double 0.92092432728109785
	.quad	0x3fc032315b246190              # double 0.12653176260279198
	.quad	0x3fd81410fd90b53a              # double 0.37622475397332134
	.quad	0x3fcbdf16a6bf2214              # double 0.21774562017368793
	.quad	0x3fe4e818d8015628              # double 0.65333215893287377
	.quad	0x3fc39ef8b405d9fc              # double 0.15328892507723413
	.quad	0x3fc591395aaea728              # double 0.16849438598483713
	.quad	0x3feb65804667cc06              # double 0.85614026785913278
	.quad	0x3fe8fc018fbca427              # double 0.78076246331796006
	.quad	0x3fba25d7df2f5350              # double 0.10213994215821498
	.quad	0x3fbdc5889ef1d1e8              # double 0.11629537468417761
	.quad	0x3fe55eadc7461a6b              # double 0.66780747337982171
	.quad	0x3fd7d15230447ef2              # double 0.37215094293240647
	.quad	0x3fd751266237f540              # double 0.36432799903544222
	.quad	0x3fee8a46164da526              # double 0.95437912326921004
	.quad	0x3fde731d8aacbcfa              # double 0.47577608625847712
	.quad	0x3feef30b45cd21d7              # double 0.96716846116128862
	.quad	0x3fe01f1227cd3fd0              # double 0.50379283689289345
	.quad	0x3fd9ea8e01c81a4c              # double 0.40494108366002446
	.quad	0x3fe8cb2388cf6938              # double 0.77479721756689113
	.quad	0x3fef02607f5a7425              # double 0.96904015420625866
	.quad	0x3fe174e5d64ee651              # double 0.54551975113936113
	.quad	0x3fe8f6ca4505d3a2              # double 0.78012574654586708
	.quad	0x3fe5948430689ac3              # double 0.67437943892294816
	.quad	0x3fef1049a890511c              # double 0.97073824808697706
	.quad	0x3fd045f92c8e3e90              # double 0.25427083350312163
	.quad	0x3fdccde38f8a7988              # double 0.45006646173160236
	.quad	0x3fd8d679391638b8              # double 0.3880904252517996
	.quad	0x3fedccecafdf79bb              # double 0.93126520490823539
	.quad	0x3fe95668128f516a              # double 0.79179767250984168
	.quad	0x3fb840c772006e68              # double 0.094738450367395921
	.quad	0x3fee48dc5ab26cb6              # double 0.94639413561107832
	.quad	0x3fc2190102a2a43c              # double 0.14138805988958036
	.quad	0x3fc9254cdc5bf12c              # double 0.19645081290935573
	.quad	0x3fecd1c204203606              # double 0.90060520940613809
	.quad	0x3fb21158453ba1a8              # double 0.070577160742351652
	.quad	0x3fe0455f2c4cd97a              # double 0.5084682336080697
	.quad	0x3fe990d7bfefe009              # double 0.79893100249955851
	.quad	0x3fef182b8a3e8df5              # double 0.97170044899797736
	.quad	0x3fc0a509ca038480              # double 0.13003656734420943
	.quad	0x3fc8045c4d1c5eb4              # double 0.1876330734746624
	.quad	0x3feaf90f4bab32a3              # double 0.84290280131388717
	.quad	0x3fd62c0332712602              # double 0.34643630910849776
	.quad	0x3fe865198edc942c              # double 0.76234128859198824
	.quad	0x3fbb2a6109ce8d30              # double 0.10611540307450151
	.quad	0x3fe36c38a62d8f66              # double 0.60696060616144787
	.quad	0x3fd8502eb567eea8              # double 0.379893948702128
	.quad	0x3fd76ab8cd04e574              # double 0.36588878651999512
	.quad	0x3fe154767469ed56              # double 0.54156038987222632
	.quad	0x3fdd806a618b2a1e              # double 0.46096286321395208
	.quad	0x3fe30441b20fa36c              # double 0.59426960732990386
	.quad	0x3fe014a29bd33dcd              # double 0.50251894411661058
	.quad	0x3fe5271e980aad6f              # double 0.66102533050199763
	.quad	0x3fc3d811a95f4538              # double 0.15503140230297574
	.quad	0x3fe0c0db8393527c              # double 0.52354217241607115
	.quad	0x3fd8a38eea963896              # double 0.38498280438296584
	.quad	0x3fe9e5be72982ae9              # double 0.80929491407127074
	.quad	0x3fecec745b26e892              # double 0.90386407664415658
	.quad	0x3f83b7d66044fac0              # double 0.0096279857758622133
	.quad	0x3fe94e78a458dea8              # double 0.79082901095440139
	.quad	0x3fe117011c993ddc              # double 0.53405814729370205
	.quad	0x3fd2fdd03dcc9f66              # double 0.29674154315079304
	.quad	0x3fd2e32bd6f70dca              # double 0.29511543266945905
	.quad	0x3fd20e62647af198              # double 0.28212795078777608
	.quad	0x3fe4327f8257c28b              # double 0.63116431672649875
	.quad	0x3feac50ff4832351              # double 0.83655545955944366
	.quad	0x3fb66df3923b8c98              # double 0.08761522598392657
	.quad	0x3fdee9daffc2c3d4              # double 0.48302340485230144
	.quad	0x3fcdd02e6fbc1514              # double 0.232915691907842
	.quad	0x3fdea6609523594e              # double 0.47890486301675572
	.quad	0x3fd18cdf41467cfa              # double 0.27422315001054154
	.quad	0x3fba50eaaf593028              # double 0.10279719143835619
	.quad	0x3fecfaeb59746f8c              # double 0.90562980147977745
	.quad	0x3fdb273945dd5bb6              # double 0.42426902601931304
	.quad	0x3fd0ae0a3b1406fc              # double 0.26062255639418175
	.quad	0x3fec339f3c579754              # double 0.88130151544167256
	.quad	0x3fe7b7cdd9668283              # double 0.74118702374478607
	.quad	0x3f944aa664994800              # double 0.019816017046032641
	.quad	0x3fc69325b8c751bc              # double 0.17636558077232489
	.quad	0x3fec4bef824ff4a8              # double 0.88426948024393415
	.quad	0x3fc0e208f70dac68              # double 0.13189804137377625
	.quad	0x3fc75b00d63f54cc              # double 0.18246469937608933
	.quad	0x3fe0f98eade78cc3              # double 0.53046354261132256
	.quad	0x3faff10e90fe21f0              # double 0.062385993193917133
	.quad	0x3feae945a17fe457              # double 0.84097558539282147
	.quad	0x3fe045f0014fb191              # double 0.50853729492296129
	.quad	0x3fec67b31a2e9aa1              # double 0.88765864480668111
	.quad	0x3fe284627f9ded6c              # double 0.57866024899651114
	.quad	0x3fefc17c425405fa              # double 0.99236882166604734
	.quad	0x3fea3981f04f0ca7              # double 0.81951996741590427
	.quad	0x3fb22edb99ce70a8              # double 0.071027493524925434
	.quad	0x3fd50d7b3b3ad6a8              # double 0.32894783767856461
	.quad	0x3fe47c33d66d976a              # double 0.64016143684851312
	.quad	0x3fbe3c4ed87400c0              # double 0.11810772690296556
	.quad	0x3feb1c88751b119a              # double 0.84723303672994921
	.quad	0x3fefb008c05ca2c2              # double 0.99023854799914823
	.quad	0x3fb4599d212ead40              # double 0.079492397881655741
	.quad	0x3fcbc735094dfee0              # double 0.21701682047204596
	.quad	0x3fd6590faf4af15a              # double 0.34918586843902732
	.quad	0x3fe73e14712006eb              # double 0.72632810683009319
	.quad	0x3fc326aeaf388e30              # double 0.14961799197873082
	.quad	0x3fa59c92c16d8c00              # double 0.042210184203916867
	.quad	0x3fee7312ed157e05              # double 0.95154711060962482
	.quad	0x3feb903ae55b7312              # double 0.86135620876629759
	.quad	0x3feab51c9e1e9082              # double 0.83460837252324915
	.quad	0x3fdfe2d0fcd54340              # double 0.49821877184608709
	.quad	0x3fcd937675d86018              # double 0.23106270555649711
	.quad	0x3fe83b1bb3d981c0              # double 0.75721535803682372
	.quad	0x3fdfacb3481f13ca              # double 0.49491579096894311
	.quad	0x3fd2089347e0a390              # double 0.28177339572226234
	.quad	0x3fe9f181aaa5aa87              # double 0.81073077516096326
	.quad	0x3feaa411da8bdaaf              # double 0.83252804455590546
	.quad	0x3fcbfdb570a45b4c              # double 0.21868007660006084
	.quad	0x3fe92c06291a3c53              # double 0.78662403133228975
	.quad	0x3fa610c6a8552d20              # double 0.043096740768840514
	.quad	0x3feee6c4f50227e7              # double 0.96567008832175538
	.quad	0x3fce0a43b352b958              # double 0.23468824630749441
	.quad	0x3fe4c998b3c3fc8d              # double 0.64960894690001825
	.quad	0x3fa5d42f28c65500              # double 0.042634462096581061
	.quad	0x3fe7522baec046c5              # double 0.72878059512205395
	.quad	0x3fdfde2952ceba36              # double 0.49793465696976413
	.quad	0x3fdba12810b62d3a              # double 0.43171121246333011
	.quad	0x3fde77d429260834              # double 0.47606376665510486
	.quad	0x3fc872dc8144edf0              # double 0.19100529014563916
	.quad	0x3fa1ab99502b3d80              # double 0.034512320553058196
	.quad	0x3fc05cbcdcee2f04              # double 0.1278301314126723
	.quad	0x3fd7d8f4ee0aaba0              # double 0.37261698957689227
	.quad	0x3feb0356ddf8789c              # double 0.84415763238554886
	.quad	0x3fd96a5b4a48b446              # double 0.39711649183556508
	.quad	0x3fe61382323eb32a              # double 0.68988141835652539
	.quad	0x3fd9f90680349392              # double 0.40582430381828616
	.quad	0x3fd8b23af6533010              # double 0.3858783154980765
	.quad	0x3fc4d844249df4dc              # double 0.16284992015781696
	.quad	0x3feea50983ea52df              # double 0.9576461388083678
	.quad	0x3fdd3035cf786362              # double 0.4560675169064351
	.quad	0x3fc23b7160da6794              # double 0.14243905285985348
	.quad	0x3fb5a6f6d9ffb448              # double 0.084578922483801056
	.quad	0x3fca797acf32f4dc              # double 0.20683226697102597
	.quad	0x3fdcc349c6fb99ea              # double 0.44941944534221412
	.quad	0x3fc780105df69138              # double 0.18359570110363577
	.quad	0x3fe3696b74a52463              # double 0.60661862165683222
	.quad	0x3fca1cb590a5117c              # double 0.20400113642439155
	.quad	0x3fe5b492a14d99c7              # double 0.67829257492558603
	.quad	0x3fe218d866f208e5              # double 0.56553287607701164
	.quad	0x3fe692300f82dcde              # double 0.7053451827004229
	.quad	0x3fcc2f1964f14664              # double 0.2201873534091191
	.quad	0x3fea10ecd1a0a88b              # double 0.81456604903111562
	.quad	0x3fd83b8e67912a48              # double 0.37863502611131539
	.quad	0x3feddbf1b42a90ff              # double 0.93309865177846507
	.quad	0x3fda82dc71b2eff6              # double 0.41423712829032355
	.quad	0x3fe613486a913f57              # double 0.68985386671009052
	.quad	0x3fde0ac2acb611ce              # double 0.4694067656166937
	.quad	0x3fe084e7fc466701              # double 0.51622390053236711
	.quad	0x3fce5c82483ee7ac              # double 0.23719814803717776
	.quad	0x3fd1df739cc50bd4              # double 0.27926340398351823
	.quad	0x3fe5524fe7ba8aba              # double 0.66629786738879848
	.quad	0x3fe97836977fbbb6              # double 0.79592446889534219
	.quad	0x3fe51078cabb01a7              # double 0.65826072307395556
	.quad	0x3fec9b1cb4de3dc7              # double 0.89393458677107496
	.quad	0x3fe961e626c61cee              # double 0.79320056508086423
	.quad	0x3fcfca9fdd9a0530              # double 0.2483711082495943
	.quad	0x3fef8ef156abc1ad              # double 0.98619906356730313
	.quad	0x3feef294128e3c50              # double 0.96711162208692691
	.quad	0x3fd1e2d16f568dd2              # double 0.27946887848721957
	.quad	0x3fdad0c99db98ebe              # double 0.4189933815270982
	.quad	0x3fe14511d23f9812              # double 0.53968134941237822
	.quad	0x3fd081f81483118e              # double 0.25793268206714337
	.quad	0x3feb23fd1f8ccf53              # double 0.84814315950505159
	.quad	0x3f9d2620b637c1a0              # double 0.028465758439723765
	.quad	0x3fbdfbc375b8b368              # double 0.11712285636958841
	.quad	0x3fe79cc150ffef6f              # double 0.73788514919531945
	.quad	0x3fe14b9f6279e8c0              # double 0.54048127397188495
	.quad	0x3fee167fd14a5903              # double 0.94024649502787871
	.quad	0x3fefd29fb1d8b86d              # double 0.99446091399819425
	.quad	0x3fcf9081f8a1778c              # double 0.24659752502605803
	.quad	0x3fc20fa341d53a50              # double 0.14110222544191453
	.quad	0x3fe3c0859a227ad0              # double 0.6172512064402671
	.quad	0x3fb03193fb9a7a30              # double 0.063256501127832321
	.quad	0x3fc7cd44edaa0574              # double 0.18595182041830649
	.quad	0x3fe4f9c78d74db9f              # double 0.65549066189020155
	.quad	0x3f9a1c40cda471e0              # double 0.025498402167714818
	.quad	0x3fb0043020d87530              # double 0.062563903826647005
	.quad	0x3fcae6949e2f5070              # double 0.21016175960415096
	.quad	0x3fd2de54e5db4590              # double 0.29482004591872002
	.quad	0x3feefdaf0d27267d              # double 0.96846726006442873
	.quad	0x3fd5ba8038e52f7c              # double 0.33950810962846112
	.quad	0x3fdc0344175891dc              # double 0.43769933967476304
	.quad	0x3f176593e44b2000              # double 8.9251662824030298E-5
	.quad	0x3f86f71bf3f3cb80              # double 0.011213510877927879
	.quad	0x3fb179a1399eae50              # double 0.068262173240037471
	.quad	0x3fdc09ed5e04f5b0              # double 0.43810590917186243
	.quad	0x3fb223f7ca1287b0              # double 0.070861327013090003
	.quad	0x3fe46fc075947a51              # double 0.63864157643167563
	.quad	0x3feb6fc3c98ccdd6              # double 0.85739316334950888
	.quad	0x3fdae822139ff91a              # double 0.42041828075879695
	.quad	0x3fd4f96c89b879b6              # double 0.32772363137510341
	.quad	0x3fe1dbd788ece119              # double 0.55808617346977762
	.quad	0x3f73dd2a36edd780              # double 0.0048495911604414799
	.quad	0x3fe0d158ba1f1569              # double 0.52555500366058283
	.quad	0x3fc9015ccd7a41c0              # double 0.19535408051571146
	.quad	0x3feca081f290ee1b              # double 0.89459321380803958
	.quad	0x3fef663f48634204              # double 0.98123134744861362
	.quad	0x3fe45abae0723bf8              # double 0.63607543790010279
	.quad	0x3fe5a8047a575900              # double 0.67675994772687886
	.quad	0x3fc9cfea62652f40              # double 0.2016575794644897
	.quad	0x3fe2a92dd428568b              # double 0.58315173565888878
	.quad	0x3fe21d04c8f55e96              # double 0.56604232072546057
	.quad	0x3fc6f58e478e0294              # double 0.17936876768000742
	.quad	0x3fd4dc0cde5df908              # double 0.32593080249343176
	.quad	0x3fee145dc7441050              # double 0.93998612326732633
	.quad	0x3fc9dadad8622508              # double 0.20199142041773421
	.quad	0x3fd7e7c8050b987c              # double 0.37352180950836789
	.quad	0x3fb87659b4cb3f50              # double 0.095555884017128223
	.quad	0x3fc19410cd64920c              # double 0.13733110455463338
	.quad	0x3fea076fabafcb4f              # double 0.81340774090345203
	.quad	0x3fb70843189866a0              # double 0.089969819550243191
	.quad	0x3fd76292e82260e0              # double 0.36539147061695409
	.quad	0x3fe9e00ffb3a12e2              # double 0.80860137050384773
	.quad	0x3fc44839a13d9f60              # double 0.15845413563806243
	.quad	0x3feb10655c22833e              # double 0.84575145716744493
	.quad	0x3fe4d958856c3f90              # double 0.6515314680018367
	.quad	0x3fee246d4950508b              # double 0.94194664305770581
	.quad	0x3febb5c2109103eb              # double 0.865937263828639
	.quad	0x3fea262f44140c07              # double 0.81716121002716668
	.quad	0x3fbebe7eca14e270              # double 0.12009422715790108
	.quad	0x3fddf36ecfe1e59e              # double 0.46798296261803241
	.quad	0x3fa3148b0c456c60              # double 0.037266106841990831
	.quad	0x3fd6089e78a8188e              # double 0.34427606375573638
	.quad	0x3fce164f9be7b554              # double 0.23505587685159901
	.quad	0x3fd7279ee3b785ce              # double 0.36179325330712409
	.quad	0x3fece62a6b89ec00              # double 0.90309639934218922
	.quad	0x3fe683b89c8f746b              # double 0.70357924059102339
	.quad	0x3fc77c129f3f8cb4              # double 0.18347389961045268
	.quad	0x3fdd02b71c7a0e56              # double 0.45329072743354482
	.quad	0x3fb6659f578f7b68              # double 0.087488135220593954
	.quad	0x3fbefd89a7942820              # double 0.12105617848661199
	.quad	0x3fdefd3a994c862a              # double 0.48420586557958478
	.quad	0x3f9b1581972a88a0              # double 0.026449227191399971
	.quad	0x3f7220f65a962600              # double 0.0044259665677457427
	.quad	0x3fe9abbaadb6af1b              # double 0.80221303871573768
	.quad	0x3fc83f1c9be81c70              # double 0.18942601788168956
	.quad	0x3feb4b167951fbad              # double 0.85291598983154915
	.quad	0x3fdb1ad8176d7b6e              # double 0.42351343429429888
	.quad	0x3fcec04c591d1c90              # double 0.24024347640281407
	.quad	0x3fd2b90fcb45d9a2              # double 0.29254526949753246
	.quad	0x3fe096f0136c1724              # double 0.5184250239696877
	.quad	0x3fd3505da1d779ca              # double 0.30178013615468713
	.quad	0x3fe6f1fc08187cd6              # double 0.71703912335569941
	.quad	0x3f6092874e8ab400              # double 0.0020229952536596763
	.quad	0x3fcc59f33047050c              # double 0.22149505479141174
	.quad	0x3fdd1c97d0724574              # double 0.45487017971125643
	.quad	0x3fcd41e18afe4994              # double 0.22857302939207769
	.quad	0x3fe1260593547a87              # double 0.53589133048429083
	.quad	0x3fdd12a7cda7c794              # double 0.45426364024671639
	.quad	0x3fe2c904f84d142b              # double 0.58703850265795177
	.quad	0x3fcf2fb970911aa4              # double 0.24364393230844883
	.quad	0x3feed81d13cd4bb4              # double 0.96388105266156864
	.quad	0x3fa79ee59d00a100              # double 0.046134162345255803
	.quad	0x3fedbcf8f1283ca7              # double 0.92931792355547749
	.quad	0x3fec5c197374ad56              # double 0.88624260473208483
	.quad	0x3faf0676c29ad360              # double 0.060596190696208252
	.quad	0x3fbd6b2217b9b220              # double 0.11491597251160401
	.quad	0x3fd131419708757c              # double 0.26863136052437375
	.quad	0x3fd7ed1d25f9fbfe              # double 0.37384728153841695
	.quad	0x3fdf597f93fd03b2              # double 0.48983754589067552
	.quad	0x3fec5245173eb6a5              # double 0.88504271068605489
	.quad	0x3fc257c268ad9e7c              # double 0.143303204643633
	.quad	0x3fe71a31c0638fc3              # double 0.72194755149802636
	.quad	0x3fafc38555fab290              # double 0.062038580651777697
	.quad	0x3fcf423a47a0abbc              # double 0.24420860764925389
	.quad	0x3feacb1c5b7a58a9              # double 0.83729379526882497
	.quad	0x3fe956c4f5748780              # double 0.7918419641539316
	.quad	0x3fea4fcce49007c5              # double 0.82224125519882618
	.quad	0x3fe3451cb77b80d3              # double 0.60218654476559619
	.quad	0x3fe798693c03ed8a              # double 0.73735486718889942
	.quad	0x3fbe077eeb2c83f8              # double 0.11730187646436707
	.quad	0x3fd7826c1a73cc2e              # double 0.36733534415469904
	.quad	0x3fdc4c886c852318              # double 0.44217119786894576
	.quad	0x3fe61be3b1b2365e              # double 0.69090447145726919
	.quad	0x3fe1d0749d586a8f              # double 0.55669623118895284
	.quad	0x3fc580414be7558c              # double 0.16797653394921175
	.quad	0x3fe972d48b8c4639              # double 0.79526736503084472
	.quad	0x3fcb50fb89e25590              # double 0.21340889198897317
	.quad	0x3fe101dd2d288819              # double 0.53147753543840104
	.quad	0x3fcd0380cf9e3ea4              # double 0.22666940820316939
	.quad	0x3fe139c17e3b7885              # double 0.53830027251002888
	.quad	0x3fe08ed8c55a3c64              # double 0.51743734879881886
	.quad	0x3fe4c875648d61fa              # double 0.64947003974071937
	.quad	0x3fe2d5227fdd2c7c              # double 0.58851742719106381
	.quad	0x3fe0ece22df10c82              # double 0.5289164445206469
	.quad	0x3fe9dd9189f702ca              # double 0.8082969374300657
	.quad	0x3fdb6f756c916f58              # double 0.42867789842943216
	.quad	0x3fece5d61cc9d3a9              # double 0.90305619833690287
	.quad	0x3fe3af2d6ba255ca              # double 0.61513396284379351
	.quad	0x3fe619ae8045778a              # double 0.69063496640204503
	.quad	0x3fef51676113c2b3              # double 0.97868699036015127
	.quad	0x3fe05572505179a9              # double 0.51043048560295745
	.quad	0x3fefa0f68925b0e5              # double 0.98839880739754149
	.quad	0x3fccb9715b62bb38              # double 0.22440926515761261
	.quad	0x3fe11907f8b1c7e2              # double 0.53430555890212994
	.quad	0x3fdfc3a591a39964              # double 0.49631633017124543
	.quad	0x3fc181b15df98f80              # double 0.1367704113828232
	.quad	0x3fd9497b6d69cd5a              # double 0.39510999379054612
	.quad	0x3feeb3a158f7f51f              # double 0.95942752243687212
	.quad	0x3fed48a59b172370              # double 0.91511802950945587
	.quad	0x3fc6b808f5846848              # double 0.17749130237717936
	.quad	0x3fd9916a67427d0a              # double 0.39950046619374346
	.quad	0x3fc320e38dc1cfb0              # double 0.1494411890195102
	.quad	0x3fed71974d4d4a90              # double 0.92011609170943309
	.quad	0x3fe7164a9c234bc5              # double 0.72147112365416233
	.quad	0x3fe84605e6f3f585              # double 0.75854773624421112
	.quad	0x3fec2ebad6cd9406              # double 0.88070432618826611
	.quad	0x3fe2ed49741301e6              # double 0.59146568938018329
	.quad	0x3fbcb5a41a1290e8              # double 0.11214662205253811
	.quad	0x3fe0d556730f0061              # double 0.52604219887144776
	.quad	0x3fce0690d1b4acbc              # double 0.2345753692582998
	.quad	0x3fe6e8bd082078b9              # double 0.71591044986032337
	.quad	0x3fe3f77a91d32317              # double 0.62395981294057179
	.quad	0x3fe9a642f940c2a1              # double 0.80154560739727654
	.quad	0x3fec6a2ece6cd9f8              # double 0.88796177213117655
	.quad	0x3fcd06606200652c              # double 0.2267570951960719
	.quad	0x3fde03ece67293d8              # double 0.4689895868744407
	.quad	0x3fdbef5520619d16              # double 0.43648269808041229
	.quad	0x3fd9d412fdda63cc              # double 0.40356898107853278
	.quad	0x3feb98f20e0ec6d0              # double 0.86242010827683124
	.quad	0x3fb341c2070ffde0              # double 0.075222136234507797
	.quad	0x3fdd5c35792af7a0              # double 0.45875298340603798
	.quad	0x3fd1bf8544447842              # double 0.27731448809379711
	.quad	0x3fcc8649a6c08618              # double 0.22284813539685966
	.quad	0x3fe3a685fe6ad8cd              # double 0.61407756510632228
	.quad	0x3fe68f19d6ce1159              # double 0.70496837572185733
	.quad	0x3fa98928f818a980              # double 0.0498745730258916
	.quad	0x3fda7b519c967c58              # double 0.41377678195744272
	.quad	0x3fd97dff78f933f6              # double 0.39831530393422498
	.quad	0x3fed9d550bcd1d0e              # double 0.925455592202441
	.quad	0x3fe4243411b7f6b4              # double 0.62941935978570607
	.quad	0x3fc024fac3423a04              # double 0.12612852605930425
	.quad	0x3fcb671d3016b5c8              # double 0.21408429000932316
	.quad	0x3fc6a2176c95a638              # double 0.17682164003353917
	.quad	0x3fd36e5526fe49bc              # double 0.30360916908207591
	.quad	0x3fdb5dbad2cb49c4              # double 0.42759581170426153
	.quad	0x3fe72d79766186ad              # double 0.72430108186036579
	.quad	0x3fa9d706d4f33db0              # double 0.050468648428814489
	.quad	0x3fdc844df553ee82              # double 0.44557522733496324
	.quad	0x3fe9dc8afb7a07f6              # double 0.80817174068965758
	.quad	0x3f9d94fff3023160              # double 0.028888701636377134
	.quad	0x3fe767158c3faab1              # double 0.73133351700137983
	.quad	0x3fe2461b69fafa54              # double 0.57105799388211631
	.quad	0x3fe505d8f3959706              # double 0.65696380209985317
	.quad	0x3fe187ce50ec4a1c              # double 0.54782787137293409
	.quad	0x3fedd56e6bfb080f              # double 0.93230362977942771
	.quad	0x3fec2b0277eb827c              # double 0.88025020048014779
	.quad	0x3feb0baeae463ea7              # double 0.84517606771438103
	.quad	0x3fdecc93e020e00a              # double 0.48123642814198375
	.quad	0x3feeb1dd2a3d2013              # double 0.95921190500030417
	.quad	0x3fc2834647d81f20              # double 0.14463118083971782
	.quad	0x3f69ed6019e47800              # double 0.0031649472213208796
	.quad	0x3fc84ba4b7158448              # double 0.1898084539380156
	.quad	0x3fc9dd681badae50              # double 0.20206929542051677
	.quad	0x3feb20d0e3bfe75c              # double 0.84775585634563865
	.quad	0x3fd486ba801f70b6              # double 0.3207231761168815
	.quad	0x3fed52fd263294cb              # double 0.91638047657456789
	.quad	0x3fe378ec76aa1511              # double 0.60851119209897508
	.quad	0x3fac9623b619b2c0              # double 0.055832973460245849
	.quad	0x3fe10a956c37b81a              # double 0.53254195343265853
	.quad	0x3fe95f2ede68db0e              # double 0.79286902846692597
	.quad	0x3fefc83aaf50284e              # double 0.99319204560129903
	.quad	0x3fe8614aa3a2af37              # double 0.76187641105705139
	.quad	0x3fe7102706160c90              # double 0.72072173298546893
	.quad	0x3fdc192bc85c327a              # double 0.43903631750507766
	.quad	0x3fd4de615699f6bc              # double 0.32607301194353133
	.quad	0x3f8c311804462d00              # double 0.013765514021335523
	.quad	0x3fded75bc234f376              # double 0.4818944355536624
	.quad	0x3fe7b62ba6ab6347              # double 0.74098761131890789
	.quad	0x3fe50a167330b2e8              # double 0.65748140810100342
	.quad	0x3fdd67e7b057c71a              # double 0.45946686001762915
	.quad	0x3fe93c706a65a2e3              # double 0.78862782269160581
	.quad	0x3fd8d84db22faef8              # double 0.38820211792948056
	.quad	0x3fc39334521d1e2c              # double 0.15292982110462228
	.quad	0x3fe495161d4fa134              # double 0.64319902157607212
	.quad	0x3fe9e06021622915              # double 0.80863958854868889
	.quad	0x3fcff6d82d8d0910              # double 0.2497205946365928
	.quad	0x3fef8f8a79e6786d              # double 0.98627208527228804
	.quad	0x3fea1d7f7c20f826              # double 0.81610082858947375
	.quad	0x3fe4f5fb416d6292              # double 0.6550270345570246
	.quad	0x3fedb6b63dcce18c              # double 0.92855369634985285
	.quad	0x3fd72dcc1c5f962a              # double 0.36217024584616075
	.quad	0x3fd83d4da0070056              # double 0.37874165179892338
	.quad	0x3fa7d98d9cf4fd10              # double 0.046581674012936003
	.quad	0x3fdf061688ea7c68              # double 0.48474658365916534
	.quad	0x3fc855f76d0f98f0              # double 0.19012348962059589
	.quad	0x3fda3dcfc42a9ac6              # double 0.41002267987134322
	.quad	0x3fef76857f7c1a45              # double 0.98321795367594033
	.quad	0x3fd75ab6d7ce3dea              # double 0.36491175722855351
	.quad	0x3fee1d849ddaf453              # double 0.94110327559577411
	.quad	0x3fd2149e9b412064              # double 0.28250851785242603
	.quad	0x3fbe0b28faf325d0              # double 0.11735778929428098
	.quad	0x3fd0cef87be3918c              # double 0.2626324853756834
	.quad	0x3fea648e37aad582              # double 0.8247748458149291
	.quad	0x3fd45318b8df8b78              # double 0.31757181219125341
	.quad	0x3fdd987016a26814              # double 0.46242906771078762
	.quad	0x3fd51caf197ae196              # double 0.32987573135644632
	.quad	0x3fb3eacd492ed4e0              # double 0.077801542632033982
	.quad	0x3fe556d372c29a22              # double 0.66684887327284437
	.quad	0x3fddc314a0d724c8              # double 0.46503177363463211
	.quad	0x3fbf1236d6cf3f68              # double 0.12137167686819128
	.quad	0x3fe87aaf8952d863              # double 0.7649762804128496
	.quad	0x3fdf7baa36b86aea              # double 0.49192290633952374
	.quad	0x3feab60f45f0fa06              # double 0.83472407970822426
	.quad	0x3fc6900f115f04ac              # double 0.17627132747842233
	.quad	0x3feac42757d4c975              # double 0.83644454149752667
	.quad	0x3fcc3f60ab77d5a4              # double 0.22068413135972975
	.quad	0x3fc0f6404321465c              # double 0.13251498487311408
	.quad	0x3fe6fc0dcf1959e7              # double 0.71826830338505665
	.quad	0x3fd0ca752e93b55e              # double 0.26235703991445358
	.quad	0x3fe2327ddab793c8              # double 0.56866352766211836
	.quad	0x3fd0a8f02f08aba0              # double 0.26031117051268815
	.quad	0x3fe1209313b88941              # double 0.53522638179519089
	.quad	0x3fd30a051430070c              # double 0.29748656245657012
	.quad	0x3fdaa38786fc2f7e              # double 0.41623104269159927
	.quad	0x3fda32c21240c31e              # double 0.40934802801625547
	.quad	0x3fed5269a9bfcd74              # double 0.91631014970918878
	.quad	0x3feb9c6fcba9f1e4              # double 0.86284627702803762
	.quad	0x3fe33bc32dd52754              # double 0.60104521705327807
	.quad	0x3fe24dae352c49a1              # double 0.57198248277045505
	.quad	0x3fe82da7411153ff              # double 0.75557291706593321
	.quad	0x3fbe652c2dde91a8              # double 0.11873127097948688
	.quad	0x3feda39f09a15407              # double 0.92622329598327802
	.quad	0x3fef4903ec766ebf              # double 0.97766300376994041
	.quad	0x3fe4ce995006a29c              # double 0.6502195895200944
	.quad	0x3fec6f6c6f7d3360              # double 0.88860151076515236
	.quad	0x3fcdbecaf004a8d0              # double 0.23238503188742365
	.quad	0x3fb3f8c1fb9155a8              # double 0.078014491956614251
	.quad	0x3fda3297ef2ed588              # double 0.40933798177442116
	.quad	0x3fe551c8ef7514a0              # double 0.66623350876820453
	.quad	0x3fde4172d01872c8              # double 0.47274465867830573
	.quad	0x3fd3f58c0937f29c              # double 0.31186200046776391
	.quad	0x3fc1fe23e3b9a774              # double 0.14056824321169936
	.quad	0x3fd5347ac6c012e2              # double 0.33132810029228044
	.quad	0x3fc182149ef36a94              # double 0.13678224335929612
	.quad	0x3feaa8f5ae822969              # double 0.83312496265106717
	.quad	0x3fdf9ece41141f4e              # double 0.49406772952396671
	.quad	0x3fe19706333cc4ec              # double 0.54968557364750614
	.quad	0x3fe64fa13486369f              # double 0.69722042330404921
	.quad	0x3fc34c4e83aca014              # double 0.1507661955777172
	.quad	0x3fe99bac8bb5e3df              # double 0.80025317465981149
	.quad	0x3fcfdd192811ae5c              # double 0.24893488365647698
	.quad	0x3f98e9a1a676daa0              # double 0.024328733239338818
	.quad	0x3fdcea70d8f0405e              # double 0.45180913148306512
	.quad	0x3feac6305a59cf07              # double 0.83669297835010148
	.quad	0x3fc05d6c3fe9e950              # double 0.1278510391310399
	.quad	0x3fd0934589cfe1c2              # double 0.25898874719817055
	.quad	0x3fd98045218b9028              # double 0.39845398212333061
	.quad	0x3fc3587d4fad6a94              # double 0.15113798513887799
	.quad	0x3fba177f2bbd3c18              # double 0.10192103212214965
	.quad	0x3feeaccaf5c750fd              # double 0.95859287265423598
	.quad	0x3fe5d55a6e5c7fc6              # double 0.68229409747072434
	.quad	0x3fec31f6166f7048              # double 0.88109878904243377
	.quad	0x3fdf99be51296dd4              # double 0.49375875402412572
	.quad	0x3fe1fd8f57b492cc              # double 0.56220214014009562
	.quad	0x3feacca02f43dc3a              # double 0.83747872573338289
	.quad	0x3fd13e44fa1d25b8              # double 0.26942562508755996
	.quad	0x3feb4b5a0b933fb8              # double 0.85294821034221169
	.quad	0x3fd55d9de65621cc              # double 0.33383891576570757
	.quad	0x3fd85db1ac419700              # double 0.38071863004584827
	.quad	0x3fde2326e66f8ebc              # double 0.47089550498479205
	.quad	0x3fbcf50cd6c0bc58              # double 0.11311416857709966
	.quad	0x3fe585fa2b355850              # double 0.67260464133392794
	.quad	0x3fc7a02a3d82a880              # double 0.18457534793316555
	.quad	0x3fc0f278be3f13d4              # double 0.1323996476113779
	.quad	0x3f9df626b7fe41c0              # double 0.029259304981282375
	.quad	0x3fd59fe69d41a3d2              # double 0.33788457257338422
	.quad	0x3fe423f08d3bb046              # double 0.62938716492272628
	.quad	0x3fd0bb6807f36816              # double 0.26143837715574259
	.quad	0x3fd177ab29404498              # double 0.27292899158880735
	.quad	0x3fa0ae277752c440              # double 0.03257869083007181
	.quad	0x3feabf8fea0c8105              # double 0.83588405335106641
	.quad	0x3fb283664571cd40              # double 0.072317497209771098
	.quad	0x3fda99d96535c570              # double 0.41564020999711371
	.quad	0x3fca249d611e7720              # double 0.20424239389552046
	.quad	0x3fe8cb8753ca55ae              # double 0.77484480252558341
	.quad	0x3fc1b8073f0c0a0c              # double 0.13842859819858722
	.quad	0x3fec432145ea7dd2              # double 0.88319457679238611
	.quad	0x3fec01e24baaf118              # double 0.87522997645240519
	.quad	0x3fba27274a8f7558              # double 0.102159934714526
	.quad	0x3fe416a372924bcc              # double 0.62776348473777821
	.quad	0x3fd606fe0648a43e              # double 0.34417677510879574
	.quad	0x3fe9485a3624372e              # double 0.79008207869057911
	.quad	0x3fe1387c0ce923ac              # double 0.53814508935567096
	.quad	0x3f869e551ec7fe00              # double 0.011044182779186507
	.quad	0x3fb24cfe0287e818              # double 0.071487308137790584
	.quad	0x3fe3278c104626a4              # double 0.59857752970238609
	.quad	0x3fe14399687481f2              # double 0.53950186158550495
	.quad	0x3fe92c57c4e1edaa              # double 0.7866629453050582
	.quad	0x3fcc2a3b6f315570              # double 0.22003882340747394
	.quad	0x3fd38bf8cb8d1d9a              # double 0.30541820409822551
	.quad	0x3fc4aac67fc897f0              # double 0.161461651224442
	.quad	0x3faccdb8852ed020              # double 0.056257025010751471
	.quad	0x3fe02398e44b407d              # double 0.50434536541617059
	.quad	0x3fd037981c949f9c              # double 0.25339319983549458
	.quad	0x3fe52516e174c24a              # double 0.66077751192467216
	.quad	0x3fdb0e0a40b00346              # double 0.42273193661826658
	.quad	0x3fb438a297464660              # double 0.078989183361295456
	.quad	0x3fe6568561b84103              # double 0.69806164823424444
	.quad	0x3f9e16563b146e00              # double 0.029382083278603588
	.quad	0x3fe88031fa9b9e32              # double 0.76564883181430887
	.quad	0x3fe1c3cae2281fe3              # double 0.55515045329320534
	.quad	0x3fd3a7d83b1c7f1c              # double 0.30711942455853758
	.quad	0x3fb4ccf59872b500              # double 0.081252431601303243
	.quad	0x3fe90423c223d99d              # double 0.78175533216453952
	.quad	0x3fd462c281bcff1a              # double 0.31852781934502306
	.quad	0x3fec3b4f53c72dde              # double 0.88223997462176462
	.quad	0x3fee7f0637ab26ac              # double 0.95300589440122029
	.quad	0x3feb8d70b47c65b6              # double 0.86101565600545515
	.quad	0x3fc0d21397c76464              # double 0.13141102706029806
	.quad	0x3fe80ec94e9d2346              # double 0.75180497507344834
	.quad	0x3fd7c09a633f7d06              # double 0.37113055889308588
	.quad	0x3feef82b986e8a01              # double 0.96779422542414306
	.quad	0x3fef28f298887f2b              # double 0.9737484912074924
	.quad	0x3fcd0cddc0454374              # double 0.22695514572344744
	.quad	0x3fd3b273f88a16fa              # double 0.30776690741946278
	.quad	0x3fef10ebd4bc43a3              # double 0.97081557798275175
	.quad	0x3fd03cfea844212a              # double 0.25372282440413818
	.quad	0x3fec9e1289a795dd              # double 0.89429594884557739
	.quad	0x3fcf5a0b2f632668              # double 0.24493541539986841
	.quad	0x3fec01b73fd9ed86              # double 0.8752094504447292
	.quad	0x3fb599ac260b2f30              # double 0.084376105583200411
	.quad	0x3fe1e527b9943b0f              # double 0.5592230438795428
	.quad	0x3fec837d2e665c7a              # double 0.89105090200872827
	.quad	0x3fe283e4167d8908              # double 0.57859997170115296
	.quad	0x3fe79e94e5f3c87a              # double 0.73810810959390882
	.quad	0x3fe987ab736057dd              # double 0.79781124624673405
	.quad	0x3fe5eae04e0e2a29              # double 0.68492141003782081
	.quad	0x3fe765080cdef150              # double 0.73108294023362852
	.quad	0x3fed6ea8ef822886              # double 0.91975828913679503
	.quad	0x3fe7fb5c256ec7b9              # double 0.74943358717995701
	.quad	0x3fe1e02bfb9cb386              # double 0.55861472266188694
	.quad	0x3fb20cb317ca0030              # double 0.070506280238988195
	.quad	0x3fd8f1f24b88cd62              # double 0.38976724029926946
	.quad	0x3fd87de32412d250              # double 0.38268354914479108
	.quad	0x3fd88ecafe558f7a              # double 0.38371538960767959
	.quad	0x3fe00a0b8516ca95              # double 0.50122619623137388
	.quad	0x3fecc121068ffacc              # double 0.89857531816218161
	.quad	0x3f71b03d03573180              # double 0.0043184645960078205
	.quad	0x3fd6bf7bca323a38              # double 0.35543722863886584
	.quad	0x3fc44e9b155c5084              # double 0.15864885848043653
	.quad	0x3fd005924e40aa0c              # double 0.2503400577722068
	.quad	0x3fea89f9f439e4c4              # double 0.82934282017154048
	.quad	0x3fe00518b3d72772              # double 0.50062213063323058
	.quad	0x3feb28df405d4ef7              # double 0.84873926707447722
	.quad	0x3fdb27342e4bd530              # double 0.4242678119765797
	.quad	0x3fdb20783199b404              # double 0.42385678142346728
	.quad	0x3fc965214889bc00              # double 0.19839874307533023
	.quad	0x3fde8e06883503a4              # double 0.47741854955170937
	.quad	0x3fdb1b8ed8c7f1f4              # double 0.42355700655005468
	.quad	0x3fe18a2d9af18a6c              # double 0.54811744940191209
	.quad	0x3f90d57c87575f00              # double 0.016439386139466272
	.quad	0x3feab15c05d06529              # double 0.83415032516055476
	.quad	0x3feff9e56ccf6357              # double 0.99925490619635126
	.quad	0x3fc35fafd3ad57c0              # double 0.15135763011738668
	.quad	0x3feac3b80a321628              # double 0.83639146796548847
	.quad	0x3fa4fe081eb7c970              # double 0.041000608205552846
	.quad	0x3fe4c1e649aff89d              # double 0.64866938011234121
	.quad	0x3fdc56de7a2cd83a              # double 0.44280206614655848
	.quad	0x3fdf9481aaa89c58              # double 0.493439118059944
	.quad	0x3fda957fa847965e              # double 0.41537467416342178
	.quad	0x3fb11476a470dd88              # double 0.066718497416209499
	.quad	0x3fe9f5d418fa6601              # double 0.81125836256541117
	.quad	0x3feb50ba8f0f2ceb              # double 0.85360458318009813
	.quad	0x3fed05672ddd33d8              # double 0.90690955121828676
	.quad	0x3fea91c117107166              # double 0.83029226784450993
	.quad	0x3feefe152491455c              # double 0.9685159410675328
	.quad	0x3fde126cf9a6659c              # double 0.46987461452371249
	.quad	0x3feb8df0a8205f14              # double 0.86107666814038674
	.quad	0x3febde03d693c6cb              # double 0.87085143956775235
	.quad	0x3fcbb4fd54cc1640              # double 0.21646086349953642
	.quad	0x3fca1ac36a6fe42c              # double 0.20394175240633794
	.quad	0x3fef883b18c0d660              # double 0.98537974199889433
	.quad	0x3fd72c6c9de68abe              # double 0.36208644313789395
	.quad	0x3fd5c04ed3a9441a              # double 0.33986254377401937
	.quad	0x3fda49bd82631dc4              # double 0.41075074895021779
	.quad	0x3fb6ff2c5de92f50              # double 0.08983113568063783
	.quad	0x3fdc954a1711bc58              # double 0.4466119027410449
	.quad	0x3fd067d2bcdd3f56              # double 0.25633686488889873
	.quad	0x3fe5faefde5e45cc              # double 0.68688195639895744
	.quad	0x3f8cb68f5519cf80              # double 0.014020080360957143
	.quad	0x3fda2d9d183f140c              # double 0.40903403632938828
	.quad	0x3fe946f77e6e6c44              # double 0.7899129361497974
	.quad	0x3fe2c0a8d8eaca35              # double 0.58601801268225151
	.quad	0x3febf8d0f4988ecd              # double 0.87412307522432686
	.quad	0x3fd7bf981feb1670              # double 0.37106898419401713
	.quad	0x3fe045e1efca74dd              # double 0.50853058656835126
	.quad	0x3fbfc34a10e0ca20              # double 0.12407362854063608
	.quad	0x3fe0540e0c401b69              # double 0.51026060478839697
	.quad	0x3fe6f43d357f7036              # double 0.71731434296407914
	.quad	0x3fcaf9b9ce44719c              # double 0.2107460267224156
	.quad	0x3fe83173b03809f7              # double 0.75603660981897647
	.quad	0x3fc0972014932dc4              # double 0.129611978575083
	.quad	0x3fc6e18fab308f20              # double 0.17875858172293935
	.quad	0x3fe646debfaf32bb              # double 0.69615113676407903
	.quad	0x3fdd91033bd675c6              # double 0.46197586864022033
	.quad	0x3fe4009dcdd4f0a7              # double 0.62507524682543625
	.quad	0x3febec058fe81c8f              # double 0.87256124598288121
	.quad	0x3fc8ebbf0c020e7c              # double 0.19469440542535554
	.quad	0x3fec50d8e05b5b87              # double 0.88486903972339881
	.quad	0x3fd658f3db671d3e              # double 0.34917923379949289
	.quad	0x3fcc86a7fc58e768              # double 0.22285938092846469
	.quad	0x3fe8d07476dba217              # double 0.77544615950052076
	.quad	0x3fe35d84c9a356fb              # double 0.60516585714751103
	.quad	0x3fea1a86e566e029              # double 0.81573815159845708
	.quad	0x3fecc5f2fc628df9              # double 0.89916371625844171
	.quad	0x3fe8c80288250301              # double 0.77441526976335251
	.quad	0x3fe42bb9ee0a7370              # double 0.6303376816973536
	.quad	0x3fc6ef1956124930              # double 0.17917172148424632
	.quad	0x3fcba3584abdacf4              # double 0.21592239045580863
	.quad	0x3fe4a162b2031725              # double 0.64470038192732615
	.quad	0x3fef9da1a06f87c7              # double 0.98799210867968489
	.quad	0x3fd0aa8aea92e448              # double 0.26040909679028745
	.quad	0x3fe06d700aebc61f              # double 0.51335909016615122
	.quad	0x3fe44186c85d7b15              # double 0.63299883970089132
	.quad	0x3fe37e8d8fa79ad1              # double 0.60919836099204805
	.quad	0x3fcf66821796c790              # double 0.2453158011608676
	.quad	0x3fd52f4f934c6eea              # double 0.33101262459398006
	.quad	0x3fd942e5cac74916              # double 0.39470810701927073
	.quad	0x3fb1032277c5c018              # double 0.066454080811809368
	.quad	0x3fced422048caabc              # double 0.24084878179686153
	.quad	0x3fdf715b9116afaa              # double 0.49129380387125343
	.quad	0x3fe119124dc22116              # double 0.53431048571750028
	.quad	0x3f9c86391c896a40              # double 0.027855770460840867
	.quad	0x3f839c0aa47a44c0              # double 0.0095749694294532394
	.quad	0x3fe6a0e154af50c7              # double 0.70713869609837665
	.quad	0x3fbdd791389da718              # double 0.11657054550383028
	.quad	0x3fce7be8dc44fc34              # double 0.23815642123551728
	.quad	0x3fe9c19a0ffb6b26              # double 0.80488303300385122
	.quad	0x3feb6233bbd382a5              # double 0.85573755917365146
	.quad	0x3fd90c1577077c26              # double 0.39136253951977762
	.quad	0x3fd5543b0fbaa23e              # double 0.33326603446997527
	.quad	0x3fc1fe8401616704              # double 0.14057970111280593
	.quad	0x3fefd4b647ed0591              # double 0.99471582458515872
	.quad	0x3fa0400ee4b8d5e0              # double 0.031738725109260235
	.quad	0x3fa0f6ddd53108b0              # double 0.033133442186696782
	.quad	0x3fe25f3511148b77              # double 0.57412198387133528
	.quad	0x3fcb58ea4568bdf4              # double 0.2136509741699083
	.quad	0x3fe846fdded24fe8              # double 0.75866597671347069
	.quad	0x3fd9371da6d463e6              # double 0.39398900310476248
	.quad	0x3fed0915616c43fa              # double 0.90735882785713717
	.quad	0x3feb164e4631b135              # double 0.84647287092005874
	.quad	0x3fc458a4839c5394              # double 0.15895515848447117
	.quad	0x3fd93994f0320d00              # double 0.39413951355545862
	.quad	0x3fdfdd2a79ae9818              # double 0.49787389643677349
	.quad	0x3fcdb0c761ca94a8              # double 0.2319573619362576
	.quad	0x3fe93435229c7943              # double 0.78762299308781569
	.quad	0x3fc28263a360ce70              # double 0.14460416295479517
	.quad	0x3fd2e2879fd7b7ec              # double 0.29507628068574721
	.quad	0x3fe2f70b9f702ebd              # double 0.5926569093730546
	.quad	0x3fcf28d18037a3a0              # double 0.24343317757236793
	.quad	0x3fd73411470b22ca              # double 0.36255294740525967
	.quad	0x3fe64c8788aba92c              # double 0.69684197133509462
	.quad	0x3fc7b8a5a7b45dd8              # double 0.18532248200129575
	.quad	0x3fe7c12bdcee0d04              # double 0.7423304858242834
	.quad	0x3fea6fea7dcf823b              # double 0.82616161892298778
	.quad	0x3fd5eb3bc612adca              # double 0.34248251288474008
	.quad	0x3fe434a75537064e              # double 0.63142744678061447
	.quad	0x3fe00e740a44c71c              # double 0.5017643166122272
	.quad	0x3fab49919a332770              # double 0.053295660088749197
	.quad	0x3fd0bc9f1d13f7a8              # double 0.26151254501007282
	.quad	0x3fdc1ba316a39114              # double 0.43918683253129243
	.quad	0x3fdd2144d3c8c194              # double 0.45515556985903882
	.quad	0x3fd09986ee9a63e8              # double 0.25937054921229086
	.quad	0x3fc0bfb8aabecde8              # double 0.13085087144064222
	.quad	0x3fd854601ce767fa              # double 0.38014986822747654
	.quad	0x3fb4b7b4c3008928              # double 0.08092813263695986
	.quad	0x3fc2df7908fa329c              # double 0.1474448484263079
	.quad	0x3fd178eff989d17e              # double 0.27300643319110651
	.quad	0x3fd7eb0c06b47c7e              # double 0.37372112898623999
	.quad	0x3f9f63c02d050a60              # double 0.030653956172736918
	.quad	0x3fcd1bdefde66c1c              # double 0.22741305730309669
	.quad	0x3fe6c681a5b39c68              # double 0.71173174251169957
	.quad	0x3fc0fd44cd1e242c              # double 0.13272914901270505
	.quad	0x3fd68fdf3272af5a              # double 0.35253124167023986
	.quad	0x3fcb26e1d76674ec              # double 0.2121240903624434
	.quad	0x3fd6ee7792a92ada              # double 0.35830487558693636
	.quad	0x3fc095ef2db487c0              # double 0.12957563144396822
	.quad	0x3fc6f2fb4a1832c0              # double 0.17929020994087885
	.quad	0x3fe58b5eaf06fbe6              # double 0.67326292214408734
	.quad	0x3fc5e4466b6e87dc              # double 0.17102890248958047
	.quad	0x3fa244d17b79fd40              # double 0.035681291888062905
	.quad	0x3fe7acfd941be663              # double 0.73986700942550632
	.quad	0x3fe5e8dec69c62e0              # double 0.68467654029072023
	.quad	0x3fd890264b45a04a              # double 0.38379819250849734
	.quad	0x3fd472dfecb03ff4              # double 0.31951139558896036
	.quad	0x3fe3cf26e5597b35              # double 0.61903710169631287
	.quad	0x3fd4f2b84b27cd20              # double 0.32731444682504396
	.quad	0x3fd66cd289f56986              # double 0.35039199326060844
	.quad	0x3fdaaa83e810a4d6              # double 0.41665742552374974
	.quad	0x3fc1956c6461a84c              # double 0.13737254048766301
	.quad	0x3fe39cdf08664534              # double 0.61289931908155504
	.quad	0x3fe8abb6c0633d84              # double 0.7709611661502298
	.quad	0x3fb122b9e881b5d0              # double 0.066936129822088519
	.quad	0x3fc0c49b8eb651bc              # double 0.13099998920792
	.quad	0x3fb8178657f58720              # double 0.094108959650409662
	.quad	0x3fe9f27b863616b2              # double 0.81084991658345573
	.quad	0x3fda6b032d571ca4              # double 0.41278151920091433
	.quad	0x3fb831496f9cda58              # double 0.094502057789989435
	.quad	0x3facc343b5f8a320              # double 0.056177249873434087
	.quad	0x3fdff3ad73649a76              # double 0.49924789685102355
	.quad	0x3fb04a8833da95d8              # double 0.063637268695479476
	.quad	0x3feeee9d0197d309              # double 0.96662760077615061
	.quad	0x3fe360592dbf7b56              # double 0.60551127371932512
	.quad	0x3fda06f61ea86f30              # double 0.40667489046039673
	.quad	0x3fdb57f957735480              # double 0.42724450626457866
	.quad	0x3fa2ffabda2a6c00              # double 0.037106867200428439
	.quad	0x3fc82b14de8e8ea4              # double 0.18881474368128182
	.quad	0x3fd099370f974786              # double 0.25935150644829041
	.quad	0x3fdbe264f8e5f682              # double 0.43569301897500889
	.quad	0x3fe6f449da6eb1a8              # double 0.71732037222459599
	.quad	0x3feac7e5fd4f68e8              # double 0.83690165972373354
	.quad	0x3fef7359c85d6d45              # double 0.9828308976533796
	.quad	0x3f9cde6db8c30340              # double 0.028192247774089241
	.quad	0x3fdc203248a08736              # double 0.43946511356817852
	.quad	0x3fead83db0f14f3c              # double 0.83889660414795441
	.quad	0x3fe69d226d5ebfed              # double 0.70668145524359505
	.quad	0x3fd3656380dcd61e              # double 0.30306327423326873
	.quad	0x3fe7c4fd2ae27f63              # double 0.74279650093010863
	.quad	0x3fe18c3de34c5e97              # double 0.54836935419276045
	.quad	0x3fe30ec4a088fb80              # double 0.59555274347790998
	.quad	0x3fed9144a68b5772              # double 0.92398293045219604
	.quad	0x3fe374b3140bad45              # double 0.60799554743918149
	.quad	0x3fd0979bd86aa53a              # double 0.25925346502716062
	.quad	0x3fc5deabf4b77874              # double 0.17085790108734822
	.quad	0x3fdc569e9ecc1f9e              # double 0.44278684146456182
	.quad	0x3fd58ded5d6eb9d8              # double 0.33678754925031518
	.quad	0x3fd091881b85cf2e              # double 0.25888254821551271
	.quad	0x3f96128e6d8b40e0              # double 0.021555161891968377
	.quad	0x3fdb3f3434750bb4              # double 0.42573266146444699
	.quad	0x3fc93c33e7d87f2c              # double 0.19714974232282978
	.quad	0x3fe724a1a773e8a7              # double 0.72322161393755813
	.quad	0x3fc5ea2a08891298              # double 0.1712086240460351
	.quad	0x3fe8080c03f17d51              # double 0.75098229189090138
	.quad	0x3fb586659343f978              # double 0.084081982091424368
	.quad	0x3fdcf1c6319cd56e              # double 0.45225672574027598
	.quad	0x3fc7fbd06bae1b10              # double 0.18737225778405575
	.quad	0x3fd96bb901653076              # double 0.39719987045533089
	.quad	0x3fdb5ca142ccb1b6              # double 0.42752868197819838
	.quad	0x3fe145ec188670a3              # double 0.53978543081349917
	.quad	0x3fe225b0933c4aae              # double 0.56710079914986067
	.quad	0x3fedc51c7e1ecdb6              # double 0.93031143792034388
	.quad	0x3fe296f0ee860048              # double 0.58092543207750058
	.quad	0x3fd9012a5740bf46              # double 0.39069612999718506
	.quad	0x3fc7258914cc5e8c              # double 0.18083299174826484
	.quad	0x3fc98cc797d9ca68              # double 0.19960875429713387
	.quad	0x3fe1385d61e8aa8c              # double 0.53813046572516177
	.quad	0x3fe84377c2fe8677              # double 0.75823581776440008
	.quad	0x3fd3644e74fa527c              # double 0.30299722121825545
	.quad	0x3fb5e973c9aa1210              # double 0.085593449339349314
	.quad	0x3fe5b6cb1225c931              # double 0.67856362862065656
	.quad	0x3fd8d1632a40e8d8              # double 0.38777999044726874
	.quad	0x3fea47101017e866              # double 0.82117465155830582
	.quad	0x3fe8cb74393bfb3d              # double 0.77483569315504719
	.quad	0x3fe52bc52c098739              # double 0.66159304238337946
	.quad	0x3faceebd69723810              # double 0.056508940812918351
	.quad	0x3fee03983946235e              # double 0.93793879686664261
	.quad	0x3fd9253171272702              # double 0.39289508867351242
	.quad	0x3fee0f20b05ad65f              # double 0.93934664196303774
	.quad	0x3fe84b1a228a220f              # double 0.75916773553859851
	.quad	0x3fe985518de19fd1              # double 0.79752423964691321
	.quad	0x3fe4fe0a168a2c24              # double 0.65601066973011202
	.quad	0x3f861a7ff9adfb80              # double 0.010792732054822229
	.quad	0x3fd31f1e7d66741a              # double 0.29877435918916861
	.quad	0x3fca1772d312e188              # double 0.20384059244475972
	.quad	0x3fe78607e66e353e              # double 0.73511118894536032
	.quad	0x3fe5783cc0eed462              # double 0.67092740709507503
	.quad	0x3fe44ad1cfa20c3a              # double 0.63413324883766298
	.quad	0x3fdac55684aa8f80              # double 0.41829455333412824
	.quad	0x3fe33599d1b3fb84              # double 0.60029307325008618
	.quad	0x3fc67d99eb702bc0              # double 0.17570804592136646
	.quad	0x3fe47d4621c6fd9a              # double 0.64029223057871154
	.quad	0x3fc0e090b29f41c4              # double 0.13185318681509106
	.quad	0x3fee6cfbbf090e54              # double 0.95080363570782333
	.quad	0x3fc9005bae87338c              # double 0.19532342931634294
	.quad	0x3fdd661e0e726002              # double 0.45935775194948303
	.quad	0x3fc4ee642a1380fc              # double 0.16352512411595643
	.quad	0x3fccea0b9a7c2cf4              # double 0.2258924965211474
	.quad	0x3fec5cdf9bf49562              # double 0.8863370939258568
	.quad	0x3fed907863f655e9              # double 0.92388553165318144
	.quad	0x3fdbff99a4e0a13a              # double 0.4374755964404532
	.quad	0x3fe8e37d6199f54b              # double 0.77776974737904803
	.quad	0x3fee780934cc100a              # double 0.9521528273767228
	.quad	0x3fe8f58140d38e95              # double 0.77996885930447724
	.quad	0x3fd38c4d50f88df0              # double 0.30543835551563259
	.quad	0x3fe85f06bfd28c1d              # double 0.76159989800760608
	.quad	0x3fd7c59b6840e9be              # double 0.37143597775471082
	.quad	0x3fe3be97dfd5f237              # double 0.61701577871242008
	.quad	0x3fef4f7398758165              # double 0.97844867493772069
	.quad	0x3fda98090e87754a              # double 0.41552950304852188
	.quad	0x3fe5ab0f436e7495              # double 0.67713130159576684
	.quad	0x3fe5cea2dd1e6ce6              # double 0.68147414386058069
	.quad	0x3fbaa6bb14af7a88              # double 0.10410660986915776
	.quad	0x3feb46bc9e760924              # double 0.85238486241749855
	.quad	0x3fdaa9cdefa54b30              # double 0.41661404040239614
	.quad	0x3fd361b29defe048              # double 0.30283799575363846
	.quad	0x3fe9b17df507f112              # double 0.80291650636312029
	.quad	0x3fd02e9d9adb4a8a              # double 0.25284519312587206
	.quad	0x3fe7190c75212220              # double 0.72180769802895739
	.quad	0x3f83b33ed9a88840              # double 0.0096192274259615517
	.quad	0x3fdb116b6f3aa8a8              # double 0.42293821203441917
	.quad	0x3fcd2a39b7534b10              # double 0.22785111857827944
	.quad	0x3fb4087920fae140              # double 0.078254290153272343
	.quad	0x3fe548a3b97b2be6              # double 0.66511713244233017
	.quad	0x3feddec9a9ad53a8              # double 0.93344576969194737
	.quad	0x3f563bfae3834400              # double 0.001357073791997232
	.quad	0x3fb9f5334a28ecd0              # double 0.10139771042388479
	.quad	0x3fd4e52e37209752              # double 0.32648806937719599
	.quad	0x3fdae82226a40ab6              # double 0.42041829846872802
	.quad	0x3fe281cb86978634              # double 0.57834411895254911
	.quad	0x3fef6003386f30c8              # double 0.9804702856286207
	.quad	0x3fe1ed080bb18e6e              # double 0.56018450054075486
	.quad	0x3fe59c7415f055db              # double 0.67534832272456968
	.quad	0x3fdce0205972aa64              # double 0.45117958769939137
	.quad	0x3fe226203fe29c4d              # double 0.56715404965951566
	.quad	0x3fd8801a66c9da82              # double 0.38281879461229817
	.quad	0x3fee58081de8610f              # double 0.94824605790475569
	.quad	0x3fde3683a3ece9ae              # double 0.47207728393882575
	.quad	0x3fe2a3e0c45dad77              # double 0.58250463822098097
	.quad	0x3f639f68ae5ca600              # double 0.0023953480293996687
	.quad	0x3feeed62c6fd6264              # double 0.96647776475135716
	.quad	0x3fe8d84c8968183a              # double 0.77640368306379703
	.quad	0x3fe4e6f002431a9f              # double 0.65319061700650483
	.quad	0x3fe215cd4a6b05b1              # double 0.56516136679436191
	.quad	0x3fd0fe44c8ccc1e8              # double 0.26551932916029708
	.quad	0x3fd838ceff91e534              # double 0.37846732099531555
	.quad	0x3f443b26e6d7b000              # double 6.1740302561252847E-4
	.quad	0x3fbad83c5046e820              # double 0.10486199340712732
	.quad	0x3fe06cc1c24797f3              # double 0.5132759851956038
	.quad	0x3fd7d5247595f0ca              # double 0.37238418086031955
	.quad	0x3fe1e866fe55cce3              # double 0.55961942362628425
	.quad	0x3fd58164598922b8              # double 0.33602246040076578
	.quad	0x3fefde72dd74723a              # double 0.99590438130287073
	.quad	0x3fe9db90bf84d982              # double 0.8080524197201131
	.quad	0x3fd51cac502bff7e              # double 0.32987506703647529
	.quad	0x3fe82572a5993da3              # double 0.75457126944995812
	.quad	0x3fd04f7fbf960f96              # double 0.25485223493182596
	.quad	0x3fc50d19b858ced0              # double 0.16446229459108119
	.quad	0x3fc0c5ece35d947c              # double 0.13104020215829226
	.quad	0x3fe03a9314e03d16              # double 0.50715021207170952
	.quad	0x3fd8ba692c441f0e              # double 0.38637761423932282
	.quad	0x3fdd01e26e279f26              # double 0.45324002034475297
	.quad	0x3fd153a28b81b248              # double 0.27072967170423512
	.quad	0x3fbc93f257963548              # double 0.11163248670910264
	.quad	0x3fcf56fa8f40a820              # double 0.2448418807483117
	.quad	0x3fedc2deb947cef1              # double 0.93003784358594832
	.quad	0x3fc560e4c29526ec              # double 0.16701945782761329
	.quad	0x3fa59c0d46ac5550              # double 0.042206206204506658
	.quad	0x3fe685d2590da0d5              # double 0.70383565324029951
	.quad	0x3fdd1b566b38ac36              # double 0.4547935530742423
	.quad	0x3fe3653701200689              # double 0.60610532970186271
	.quad	0x3fd83999c8770eb0              # double 0.37851566864649566
	.quad	0x3fcffe8c61aee008              # double 0.24995569963152797
	.quad	0x3fea052300826177              # double 0.81312704181168172
	.quad	0x3f75621f7bde6800              # double 0.0052205304945349695
	.quad	0x3fee12a10735905e              # double 0.93977404983571566
	.quad	0x3fee917b6b322ddc              # double 0.95525904595109123
	.quad	0x3fb753a4ef883078              # double 0.091120060424317972
	.quad	0x3fc397beed4606dc              # double 0.15306841455099274
	.quad	0x3fbba2bfa4f679e0              # double 0.10795209672367134
	.quad	0x3fe06c7cd960f903              # double 0.51324312645718384
	.quad	0x3fcd1c5617682c18              # double 0.22742725508609918
	.quad	0x3fd8103cce178e0a              # double 0.37599105955288847
	.quad	0x3fdde62b76002c6e              # double 0.46717344783309656
	.quad	0x3fd2cba1f316ae98              # double 0.29367874850388764
	.quad	0x3fee71623d4fcc3f              # double 0.95134078955596368
	.quad	0x3f96e62764828400              # double 0.022362342366822219
	.quad	0x3fc0c3302689dbec              # double 0.13095666772616654
	.quad	0x3fa5001b96401180              # double 0.041016447154137659
	.quad	0x3fe02ac8cb226f94              # double 0.50522269892415972
	.quad	0x3fcb60a4bed3aa60              # double 0.21388682668414827
	.quad	0x3fd036c28c799e04              # double 0.25334228246944712
	.quad	0x3fb3995f917c5c48              # double 0.076559041041364684
	.quad	0x3fe793de79df4958              # double 0.73680042079130725
	.quad	0x3fecb7d339379a3e              # double 0.89743958640321586
	.quad	0x3fdacbd1fb14ebfe              # double 0.41869020003986168
	.quad	0x3fe13ac7f57f040d              # double 0.53842542599170573
	.quad	0x3fef458ec5f031f5              # double 0.97724093112770893
	.quad	0x3feb9acf8f6f6577              # double 0.86264780058551949
	.quad	0x3fe6445c6e592c14              # double 0.69584485580833411
	.quad	0x3fee59af19d593be              # double 0.94844775243529233
	.quad	0x3fd47d2c10940e3c              # double 0.32013990038851481
	.quad	0x3fe34f85b2fab1ca              # double 0.60345730740442005
	.quad	0x3fc1ceb1ae7db82c              # double 0.13912030239174678
	.quad	0x3fea3f73c3406579              # double 0.82024562964504277
	.quad	0x3f94acac899dcd00              # double 0.020189948939742131
	.quad	0x3feae34981495ecb              # double 0.84024501086511216
	.quad	0x3fe91e2063667102              # double 0.78492755331129183
	.quad	0x3fac324a4221b240              # double 0.055071182797153728
	.quad	0x3fcf28287cbf5790              # double 0.2434130295866308
	.quad	0x3f7c71dbe07a3f00              # double 0.0069445218029071665
	.quad	0x3fe4eecf1b437761              # double 0.65415149044904919
	.quad	0x3fec2daecac7608c              # double 0.88057651143300708
	.quad	0x3fe45b83be915ba6              # double 0.63617121906542162
	.quad	0x3fec8e9ffce124d7              # double 0.89241027250786942
	.quad	0x3fef0d722ec17716              # double 0.97039136058785647
	.quad	0x3fdc71fdfb2dccce              # double 0.44445752648534842
	.quad	0x3fe2060e85197ca4              # double 0.56323934551246113
	.quad	0x3febccae71c6bf8e              # double 0.86873552534051313
	.quad	0x3fc8c88f8abf09c8              # double 0.19362062716215989
	.quad	0x3fbafc6cbb6b8bb8              # double 0.10541419578252842
	.quad	0x3fef03ecd52aff8b              # double 0.96922914156310591
	.quad	0x3fb3740790b60880              # double 0.075989220456934347
	.quad	0x3fe86514ed941553              # double 0.76233908083001223
	.quad	0x3fe22c1085b51617              # double 0.56787897219391226
	.quad	0x3fe572541e1f51e4              # double 0.6702061260535257
	.quad	0x3f8d24f463c14ec0              # double 0.014230641645702646
	.quad	0x3fdc4546773c8b5e              # double 0.44172822612943274
	.quad	0x3fd515d72fe4d2bc              # double 0.32945804288037173
	.quad	0x3fe2d44016ad9e09              # double 0.58840946606955058
	.quad	0x3fe9170b3d75c99f              # double 0.78406297687461179
	.quad	0x3fea94461920042e              # double 0.83059983165015239
	.quad	0x3fe82612a80039ed              # double 0.75464756786987908
	.quad	0x3fe25afc203f81e3              # double 0.5736065511555889
	.quad	0x3fb3c99ca813b410              # double 0.077295104059615704
	.quad	0x3fcc60de8b4b9c14              # double 0.22170621682673242
	.quad	0x3fc48e156252221c              # double 0.16058604527303622
	.quad	0x3fcfed4a1916cc04              # double 0.24942899918605133
	.quad	0x3fedf330ff0d62c3              # double 0.93593644919300123
	.quad	0x3fda6eb1e6abf5c2              # double 0.41300628210577994
	.quad	0x3fe1fccdbb1d7d8f              # double 0.56210981889664591
	.quad	0x3feefe81aba7781f              # double 0.96856769109922769
	.quad	0x3fdc77358245195e              # double 0.44477594110175811
	.quad	0x3fe0e7a24b3c3666              # double 0.52827562994361865
	.quad	0x3fd4bb08b2184434              # double 0.32391564743108181
	.quad	0x3fd14e4d5914d5ce              # double 0.27040418338159788
	.quad	0x3fd66e33fa8e7ace              # double 0.35047625988401598
	.quad	0x3fe6b1fa8fa8e37c              # double 0.7092259221891335
	.quad	0x3fd7b7e16f720d12              # double 0.37059818156576896
	.quad	0x3fe4c142332beed6              # double 0.64859113687949832
	.quad	0x3fe26b9a7def6e55              # double 0.57563519093259663
	.quad	0x3fce4fdfaf3c1424              # double 0.23681255394345258
	.quad	0x3fb3c551ea264768              # double 0.077229613938724406
	.quad	0x3fe9dcd6ed8cd969              # double 0.80820795437356907
	.quad	0x3fd62e464e441184              # double 0.3465743793788294
	.quad	0x3fcbc15ecf018d10              # double 0.21683869464605054
	.quad	0x3fe19866cd001993              # double 0.54985370673311917
	.quad	0x3fe115d909b0b05e              # double 0.53391696827521762
	.quad	0x3fe2f1b8745f10f6              # double 0.59200690010814472
	.quad	0x3fe2f7ce7509dd3b              # double 0.59274981364334367
	.quad	0x3feca4dfd29b815a              # double 0.89512625822321046
	.quad	0x3fecc7c47ce570db              # double 0.89938568490790816
	.quad	0x3fe31bd9874e0e4f              # double 0.59714962412585659
	.quad	0x3fe02165b4a00d49              # double 0.50407681730613618
	.quad	0x3fde311942e069ac              # double 0.4717467454044264
	.quad	0x3fc39881555e3e68              # double 0.1530915896259899
	.quad	0x3fd1cbe85af8d070              # double 0.2780705345533141
	.quad	0x3fea9dfee13d81f4              # double 0.83178657524336907
	.quad	0x3fe4cc318db454f9              # double 0.64992597271580543
	.quad	0x3fe7616f7fe6301e              # double 0.73064398746783232
	.quad	0x3fe34f087c9d2d2a              # double 0.60339760149637311
	.quad	0x3fe9c163677550fe              # double 0.80485696989720146
	.quad	0x3fd30c8715eaeda8              # double 0.29763962879561712
	.quad	0x3fe8fdb53cf18ea8              # double 0.78097021010440404
	.quad	0x3feabf5e89882512              # double 0.83586050855334038
	.quad	0x3fe53948cd9623d7              # double 0.66324272302255849
	.quad	0x3fe6e29dc8404840              # double 0.71516312705558249
	.quad	0x3fed68900b360226              # double 0.91901399793284066
	.quad	0x3fe451a76fabeed8              # double 0.63496753512250859
	.quad	0x3f93dbf5ce5b6120              # double 0.019393768997219785
	.quad	0x3fc8c0b487b5d438              # double 0.19338089586713791
	.quad	0x3fcda5d2619c39a0              # double 0.23162297979474733
	.quad	0x3fde2c708ad86a98              # double 0.47146237906569288
	.quad	0x3fd0db4bedb563f0              # double 0.26338480199552716
	.quad	0x3fd54684590b9f90              # double 0.33242901511993583
	.quad	0x3fecfdb030a09820              # double 0.90596780297778778
	.quad	0x3fe248613cb35031              # double 0.57133542876773025
	.quad	0x3fe18b02f0aa1dad              # double 0.54821917538440845
	.quad	0x3fcbe7c51c1a969c              # double 0.21801055786379642
	.quad	0x3fbe1b2e0561c318              # double 0.11760223037141448
	.quad	0x3feecc7a16c33a15              # double 0.96246056028195658
	.quad	0x3feb3f2db9bd9ee3              # double 0.85146223332864357
	.quad	0x3fca60bbac6a7008              # double 0.20607705992449632
	.quad	0x3fc41b519ceb8bbc              # double 0.15708370363344482
	.quad	0x3fa40f1e1a607d50              # double 0.039177838058317094
	.quad	0x3fd997ee292f377e              # double 0.39989809057157533
	.quad	0x3fed1d2ea5547995              # double 0.90981228152286298
	.quad	0x3fd010363da5e9c0              # double 0.25098949451753683
	.quad	0x3fe502685ab9d7c9              # double 0.6565439006797017
	.quad	0x3fc69d228ebcb644              # double 0.17667037934863761
	.quad	0x3fd5ffa0a635df1c              # double 0.34372726661193709
	.quad	0x3fe06dac8a1ebb7b              # double 0.51338793732234878
	.quad	0x3f885ded47620340              # double 0.011897901287967749
	.quad	0x3fd7329ef6738cfa              # double 0.36246465747372236
	.quad	0x3fe5da0ae2e2f833              # double 0.68286651910580642
	.quad	0x3fe78d5ae2531c2a              # double 0.73600525096924696
	.quad	0x3fe79361478e282c              # double 0.73674072242397903
	.quad	0x3fc336cbc48287e4              # double 0.1501097402115753
	.quad	0x3fe607466647159f              # double 0.68838806129558694
	.quad	0x3fd51291b4a7cb5e              # double 0.32925837175496564
	.quad	0x3fde9399250fb89a              # double 0.47775868052748083
	.quad	0x3fcb2e3b1de46130              # double 0.21234835586143097
	.quad	0x3fe9dd892ac873ac              # double 0.80829294544274921
	.quad	0x3fe2f180cba8d45a              # double 0.59198035981411157
	.quad	0x3fc97cc9b3e8c9c8              # double 0.19912072453150942
	.quad	0x3fe7e1bf8a290411              # double 0.74630715355317723
	.quad	0x3fba35fba7387028              # double 0.10238621552019878
	.quad	0x3fe4ff9c6577fc75              # double 0.65620250528435398
	.quad	0x3fd9f84084e2303c              # double 0.40577710129651101
	.quad	0x3febe4266384077d              # double 0.87160033642452073
	.quad	0x3fe23292196da1a7              # double 0.5686731812139002
	.quad	0x3fb3e40ff9e7af88              # double 0.077698706161468789
	.quad	0x3fe8857d109d7e56              # double 0.76629498715551381
	.quad	0x3fd1ed1fb8c2c548              # double 0.2800978950791273
	.quad	0x3fe50b044ba7cea6              # double 0.65759482170547723
	.quad	0x3fe9108c815ecef0              # double 0.78327012317319422
	.quad	0x3fe876a75e98db35              # double 0.76448410488123975
	.quad	0x3fb92324e31f3670              # double 0.09819250626534326
	.quad	0x3fe7026b404b46d1              # double 0.71904528195792683
	.quad	0x3fef1161b2f97faf              # double 0.97087178188302469
	.quad	0x3fe4aab34eefedb8              # double 0.64583745400835024
	.quad	0x3fe431fcaef4a0d9              # double 0.63110193415652838
	.quad	0x3fedea67705672a0              # double 0.93486377659754182
	.quad	0x3fbcb4a9cbc1ccf8              # double 0.11213170265709838
	.quad	0x3fe9d20f229a5e7f              # double 0.80689198263549133
	.quad	0x3fdcb9e5bc2a7978              # double 0.44884627700402957
	.quad	0x3fc5c2938c7b3ad4              # double 0.17000049933854788
	.quad	0x3fcedf2dade9de48              # double 0.24118586532471142
	.quad	0x3fe53c968260275b              # double 0.66364598716721035
	.quad	0x3fdfa247858c6ee8              # double 0.49427974740841174
	.quad	0x3fe2194131e8902b              # double 0.56558284518951518
	.quad	0x3fc45ccf1f5170c4              # double 0.15908230809407631
	.quad	0x3fd03866f3ab1444              # double 0.25344251437883636
	.quad	0x3fced72e70162ee8              # double 0.24094181511860957
	.quad	0x3fd1ccb9a7d10970              # double 0.27812043560347544
	.quad	0x3fe5ae00f62906b0              # double 0.67749069288421104
	.quad	0x3fb0d0aa40c97a90              # double 0.065683975999016875
	.quad	0x3fe26432e481f3bb              # double 0.57473129873652995
	.quad	0x3fd9615cce77de36              # double 0.396567536954055
	.quad	0x3fe9d03e1ae34fe4              # double 0.80667023898649548
	.quad	0x3fefb79faceb75d9              # double 0.99116500638381943
	.quad	0x3fb8426f8d7f06f0              # double 0.094763729138346297
	.quad	0x3fd6f231e53f3152              # double 0.35853240382563911
	.quad	0x3fd35e5067e66376              # double 0.30263147493820186
	.quad	0x3fdf33e4150b03f2              # double 0.48754217200263306
	.quad	0x3fd2a0a87f4c1e7e              # double 0.29105579787617575
	.quad	0x3fee414bf73a6bad              # double 0.94547079359778297
	.quad	0x3fdf36f8bab7a8de              # double 0.48773020013926593
	.quad	0x3fd25c8d5ef12e36              # double 0.28689893981638492
	.quad	0x3fe8617e1bd7e573              # double 0.76190095365670485
	.quad	0x3fd5a8538bcf76fe              # double 0.33839882520065589
	.quad	0x3fecfe58db75ccc3              # double 0.90604822982131628
	.quad	0x3fd161f8d4dee69e              # double 0.27160473621516157
	.quad	0x3fe23cc99f893820              # double 0.56992036017777892
	.quad	0x3fe6ac575684e195              # double 0.70853773973708434
	.quad	0x3fdb0f222b03cc84              # double 0.42279867363613044
	.quad	0x3fe573f064657f61              # double 0.67040271385847572
	.quad	0x3fd414d185af0df6              # double 0.31377065711077934
	.quad	0x3feef6160bcffa2d              # double 0.96753980929481075
	.quad	0x3fd8ca15b4ca94e0              # double 0.38733427672771192
	.quad	0x3fdd4a1d036535aa              # double 0.45764851886346014
	.quad	0x3fecd16492c747ea              # double 0.90056065242447159
	.quad	0x3fd08e6a0de46940              # double 0.2586922774950331
	.quad	0x3fbb25c7d2cbda48              # double 0.10604523559946089
	.quad	0x3fe9ff1324ae5ea6              # double 0.81238705791743793
	.quad	0x3fe7e9a3cb566fad              # double 0.74727048601515877
	.quad	0x3fe7e7bb3b6d015c              # double 0.7470375214252658
	.quad	0x3fbf5d8375e2b388              # double 0.12252065303864701
	.quad	0x3fc004f2be82c260              # double 0.12515100767406562
	.quad	0x3fe842624d046fa4              # double 0.75810351412245724
	.quad	0x3fd48a495639f32c              # double 0.3209403364233363
	.quad	0x3fce8b567d503f00              # double 0.23862725371190407
	.quad	0x3fc1bf09352d0b24              # double 0.13864245506746287
	.quad	0x3fe0e34198e934c3              # double 0.52774124017164359
	.quad	0x3fd574edea78c9b0              # double 0.33526180169715314
	.quad	0x3feb47d7aaa90522              # double 0.85251983005597176
	.quad	0x3fbaf89ecbd953a0              # double 0.10535614468365262
	.quad	0x3fe9f616efcde418              # double 0.81129023396272526
	.quad	0x3fe41388814638a8              # double 0.62738442658316718
	.quad	0x3fea993e84951c4f              # double 0.83120656867039056
	.quad	0x3fdaa9c8887532ea              # double 0.41661275220830751
	.quad	0x3fdefea372cd6eba              # double 0.48429189883402624
	.quad	0x3fc67e4b4b610b94              # double 0.1757291906415871
	.quad	0x3fe1bb3dd293c12f              # double 0.55410662773468811
	.quad	0x3fc4cf74477896e4              # double 0.16258100023076516
	.quad	0x3fe341dedc5e9dd2              # double 0.60179083863197946
	.quad	0x3fd93f2c9ce3e0ca              # double 0.39448085137656774
	.quad	0x3fd2ca234519591a              # double 0.29358751056624188
	.quad	0x3fe69c08b9d84b28              # double 0.70654712961036115
	.quad	0x3f9f3e67a99dbc80              # double 0.030511493423031499
	.quad	0x3fe1c317551615a2              # double 0.55506483667766227
	.quad	0x3fe51018cc99642f              # double 0.65821495018747622
	.quad	0x3fc0d2a23d987bac              # double 0.13142803199386088
	.quad	0x3fe2c6774e773469              # double 0.58672681165047635
	.quad	0x3fd33a99658920dc              # double 0.30045161166755263
	.quad	0x3fec7b44a1625910              # double 0.89004737396570199
	.quad	0x3fd0681908f129cc              # double 0.256353625042405
	.quad	0x3fa3d5dee77139a0              # double 0.038741079094154474
	.quad	0x3fdffd94b0179fcc              # double 0.49985234447967453
	.quad	0x3fe2e12d85abe3fd              # double 0.58998752696709256
	.quad	0x3fe93f952f55b775              # double 0.78901156659206484
	.quad	0x3fefc458b6f9ec93              # double 0.99271808373977632
	.quad	0x3fdbdcb5c5e7d24c              # double 0.43534607245172618
	.quad	0x3fac4ab01cf40d70              # double 0.055257323774663969
	.quad	0x3fe2ac7916521005              # double 0.58355383262141969
	.quad	0x3fcb7de144abdd8c              # double 0.21477905133336284
	.quad	0x3fef1f110efcb703              # double 0.97254231383496436
	.quad	0x3feeb7e73abc7e9a              # double 0.95994912597594184
	.quad	0x3fe622e723526b06              # double 0.69176060580079546
	.quad	0x3fe4e42fd0b364eb              # double 0.65285483133189126
	.quad	0x3fda9b02bcf9b57a              # double 0.41571110205298789
	.quad	0x3febbe8895364d46              # double 0.86700848715774081
	.quad	0x3fac47036c5def00              # double 0.055229289034256723
	.quad	0x3fe94c8412d40656              # double 0.79059032132517859
	.quad	0x3fc0b9ba644339e0              # double 0.13066797156939369
	.quad	0x3fd0910ebe8b05ee              # double 0.25885361297340992
	.quad	0x3fd0a278ddc917a4              # double 0.25991651209585087
	.quad	0x3fe3031a1c63d91c              # double 0.59412866158416788
	.quad	0x3fe08b540cd81c22              # double 0.51700785168293728
	.quad	0x3fe52ae7eb2b9574              # double 0.66148754054726888
	.quad	0x3fe1589d37e32108              # double 0.54206715503190228
	.quad	0x3f7da848bbb5fd80              # double 0.0072405663626108341
	.quad	0x3fe518d0932ace83              # double 0.65927914374920282
	.quad	0x3fb8e583e76b8b10              # double 0.097252124785466742
	.quad	0x3fe17dcfbdcf4be0              # double 0.54660784790246097
	.quad	0x3fd4c934393dc69c              # double 0.32478051748248915
	.quad	0x3fe726e15dce0d75              # double 0.72349613496082432
	.quad	0x3fa637b7c88d0180              # double 0.043393843871402105
	.quad	0x3fe52ef8bc5fff72              # double 0.6619838408659986
	.quad	0x3fbd039e0f60a8a8              # double 0.11333644748143235
	.quad	0x3fdb53c7c6a3259e              # double 0.4269885482613861
	.quad	0x3fbc7c5565d3c520              # double 0.11127217994705463
	.quad	0x3fbd0795efd33138              # double 0.11339699845411111
	.quad	0x3fe70fbd66478c5d              # double 0.72067136742078797
	.quad	0x3fe4f3f52a434ccf              # double 0.65477998976202823
	.quad	0x3fd382f216e75766              # double 0.30486728893935433
	.quad	0x3fe69b537552a719              # double 0.70646069445249104
	.quad	0x3fb385339e5ccb80              # double 0.076251245653834232
	.quad	0x3fb9561b56ff8e68              # double 0.098970135440646367
	.quad	0x3fb9304c6059fc28              # double 0.098393224261585588
	.quad	0x3feeaa5e2dd472e0              # double 0.95829686118267076
	.quad	0x3fc4eb88f33b25e8              # double 0.16343795658603644
	.quad	0x3f9bf26e3322a7e0              # double 0.027291986342483088
	.quad	0x3fd64473986263fa              # double 0.3479279506805707
	.quad	0x3fe4623e3d0fa9be              # double 0.63699256826412642
	.quad	0x3fe4a8140bdebedf              # double 0.64551737135294818
	.quad	0x3fe466e53852b11b              # double 0.63756047249401904
	.quad	0x3fef40d6b2a2e009              # double 0.97666487588776462
	.quad	0x3fedd6894995c8d0              # double 0.93243851062859484
	.quad	0x3fe45c4ad6b12dc9              # double 0.63626615459491476
	.quad	0x3fe3fc42e948f0c4              # double 0.6245436245294731
	.quad	0x3fa7054f625c87b0              # double 0.044962387806904203
	.quad	0x3fec5d006d0133f3              # double 0.88635274209957371
	.quad	0x3feb09769b32a604              # double 0.84490518867568242
	.quad	0x3fd5b0ea66849e1e              # double 0.33892307292487256
	.quad	0x3feaf9a01a98127c              # double 0.84297185129305729
	.quad	0x3fdf32b8a260665e              # double 0.48747077805601247
	.quad	0x3fc5b5497551244c              # double 0.16959493854872887
	.quad	0x3fe5368eea47f809              # double 0.66290994413407234
	.quad	0x3fe9358c040c4f1f              # double 0.78778649130478928
	.quad	0x3fe80088ab1ec1c4              # double 0.75006516858962202
	.quad	0x3fea32c06d7ba868              # double 0.81869527228742545
	.quad	0x3fd30faadc907694              # double 0.29783126391871773
	.quad	0x3fda837935b9349e              # double 0.41427450415069156
	.quad	0x3feecc1376710de8              # double 0.96241162427071191
	.quad	0x3fd4e05c7d5aefcc              # double 0.32619392625542498
	.quad	0x3fd3cbb72df0708e              # double 0.30930881010295586
	.quad	0x3fed1a456409a878              # double 0.90945691622370273
	.quad	0x3fd5eeace0082220              # double 0.34269258382895096
	.quad	0x3fcc4d431861ea38              # double 0.22110785189200199
	.quad	0x3fe5628f700e18a4              # double 0.6682812870574435
	.quad	0x3feb3afec685c978              # double 0.85095156454035159
	.quad	0x3fedaa171dee14af              # double 0.92701297612861377
	.quad	0x3fb5a9c4c4e10ef8              # double 0.08462171370143412
	.quad	0x3fad84ff5fd2d000              # double 0.057655315825655862
	.quad	0x3fe64c4ea84bb4c5              # double 0.69681485052355951
	.quad	0x3fe4ae615946b2fb              # double 0.64628665386916795
	.quad	0x3fd3c78fb73a4be4              # double 0.30905526059467392
	.quad	0x3fe4f93b362c72ac              # double 0.65542374211107335
	.quad	0x3fd87e46359bfb2a              # double 0.38270716891558954
	.quad	0x3fdb91d2ddb1dc06              # double 0.43077537202719929
	.quad	0x3fe932716b9d504d              # double 0.78740759867151555
	.quad	0x3fdc1331a6001276              # double 0.43867150507893571
	.quad	0x3fda3e6b0195afa6              # double 0.4100596919513414
	.quad	0x3fb34ed04e2f23d8              # double 0.07542135151665208
	.quad	0x3fe79a9621623bce              # double 0.73762041588076399
	.quad	0x3fe2bd05d555173a              # double 0.58557407061082434
	.quad	0x3fd80dbaf808ca56              # double 0.37583803388694059
	.quad	0x3fe5711569abc5e4              # double 0.67005415572037608
	.quad	0x3fdcf35112614024              # double 0.45235087199125901
	.quad	0x3fb69c4387420d08              # double 0.088321896097159791
	.quad	0x3fe4b81794685c25              # double 0.64747218118543926
	.quad	0x3fdcdbf831195206              # double 0.45092587275328844
	.quad	0x3fb326bf7be5bbc0              # double 0.074809997318637578
	.quad	0x3fc28ef7a6873dbc              # double 0.14498801833404495
	.quad	0x3febde71c5e880a8              # double 0.87090386060665015
	.quad	0x3feb6dbe02d10f4c              # double 0.85714626836895879
	.quad	0x3febe409551f5eb6              # double 0.87158648133750805
	.quad	0x3fe4d2c1b89dcb55              # double 0.65072713907134505
	.quad	0x3f8b9d016204c740              # double 0.013483057788650776
	.quad	0x3feb90ff3b15c507              # double 0.86144982852980057
	.quad	0x3fecb750d7fd00e7              # double 0.89737741646970626
	.quad	0x3fd91a9fdf924ed2              # double 0.3922500308337763
	.quad	0x3fdb42b7a7910f28              # double 0.42594710697106786
	.quad	0x3feaaadeee49a440              # double 0.83335825481947978
	.quad	0x3fe2da29f985c5a1              # double 0.5891313432204478
	.quad	0x3fd97305494db646              # double 0.39764530333090808
	.quad	0x3feea121d2f40b82              # double 0.95716944886986277
	.quad	0x3feee6038a19e0f0              # double 0.96557785961979725
	.quad	0x3fcbb4bef1ac4e94              # double 0.2164534263653094
	.quad	0x3fc4c69c187134ac              # double 0.16231108849971088
	.quad	0x3fdee3b4a685f534              # double 0.48264805089987139
	.quad	0x3fe87803ad7ee79f              # double 0.76465019117243915
	.quad	0x3fe74ddab8177b25              # double 0.72825370746054274
	.quad	0x3fe9008f139e7966              # double 0.78131822425693254
	.quad	0x3fe7132c921c02db              # double 0.7210905889224607
	.quad	0x3fe7874f13f9c468              # double 0.73526719953055153
	.quad	0x3fed2c6b5aa7660e              # double 0.91167228418197666
	.quad	0x3fe19246f840f47e              # double 0.5491061066346814
	.quad	0x3feb777335ad277f              # double 0.85833130344074948
	.quad	0x3fd91e5c39eda15e              # double 0.39247804314665824
	.quad	0x3fed3bfb8a23d3dd              # double 0.91357209186991961
	.quad	0x3fe224f58a990c3c              # double 0.5670116145123596
	.quad	0x3fd8bf0e78dc3b36              # double 0.38666116526376315
	.quad	0x3fedf67a8a288149              # double 0.93633772834804418
	.quad	0x3fd60ca6c68756fe              # double 0.34452218425336401
	.quad	0x3f8cbab81f5e7100              # double 0.014028013665488448
	.quad	0x3feddb9749a76c44              # double 0.93305553803964658
	.quad	0x3fe98b984ad8b0d7              # double 0.79829039209792085
	.quad	0x3fa2fdbcd7d44240              # double 0.037092114778833452
	.quad	0x3fc8a39977f89bb0              # double 0.19249266012158506
	.quad	0x3fe8b0553af6a87f              # double 0.77152501598654044
	.quad	0x3fcdcef14bfa2644              # double 0.23287788591214753
	.quad	0x3fe3537428f3c88a              # double 0.60393722532741489
	.quad	0x3fdd21f71df38908              # double 0.45519807743961893
	.quad	0x3fe936cb4b0f3edf              # double 0.78793873462742769
	.quad	0x3fc97a23e867ae00              # double 0.19903992507839519
	.quad	0x3fa7dadefeb3a160              # double 0.046591728774560748
	.quad	0x3f4f169e70ee5c00              # double 9.4874130614897023E-4
	.quad	0x3fe4a4d42ee11c03              # double 0.64512070804710253
	.quad	0x3fe7dabedb4d07f8              # double 0.7454523356648215
	.quad	0x3fefcc06c3575411              # double 0.99365556862415094
	.quad	0x3fa22545f453da50              # double 0.035440622401371358
	.quad	0x3fe4492596954286              # double 0.63392905627013429
	.quad	0x3f933d8ef3c55940              # double 0.018789514187426137
	.quad	0x3fe65d037a7fa99c              # double 0.69885419774555002
	.quad	0x3fb375c905cc7490              # double 0.076016010204016604
	.quad	0x3fec8041d24b2d63              # double 0.89065638611775133
	.quad	0x3fc80484215edb34              # double 0.18763782147808572
	.quad	0x3fe7650762db1e0b              # double 0.73108262355612064
	.quad	0x3fee88b1cb2c7cf3              # double 0.95418634111766065
	.quad	0x3fbcad386083df68              # double 0.11201813083959922
	.quad	0x3fed9afd97075ee9              # double 0.92516974923907214
	.quad	0x3fe3da519d84dfae              # double 0.62040024533688665
	.quad	0x3fee2b5c6801e5b1              # double 0.94279308618495439
	.quad	0x3fe8f2087537edbc              # double 0.77954504865868257
	.quad	0x3fedadd29301d6b4              # double 0.92746857368793778
	.quad	0x3fcbd6cd76167ce8              # double 0.21749275461204509
	.quad	0x3fc1aaacc8a3a13c              # double 0.13802108570895111
	.quad	0x3fe2d9d08d00181e              # double 0.58908870257505774
	.quad	0x3fee38d0765f3983              # double 0.94443534011388441
	.quad	0x3fe8ca956829c2d5              # double 0.77472944588051951
	.quad	0x3fd64712232d053c              # double 0.34808782038824737
	.quad	0x3f8a65e4a5b49dc0              # double 0.012889658266955872
	.quad	0x3fe5b3ecb831eeb0              # double 0.67821346259684923
	.quad	0x3f6fb49a384a7700              # double 0.0038702976328995886
	.quad	0x3fe6e56b32650aa1              # double 0.71550521700585901
	.quad	0x3fe5637d10b2418e              # double 0.66839459668158141
	.quad	0x3fde19db21d0f7b6              # double 0.47032812406893798
	.quad	0x3fdb925feb8945dc              # double 0.43080900193771554
	.quad	0x3fc6a2fc5c17f4ac              # double 0.17684893128163048
	.quad	0x3fd6aa8bdff036e2              # double 0.3541593253038241
	.quad	0x3fdab4b91f8abeb6              # double 0.41728046493788484
	.quad	0x3fd935f1ada00edc              # double 0.39391748385990666
	.quad	0x3fcc5bb17d8cd380              # double 0.22154825811744772
	.quad	0x3fef6cd09418aac2              # double 0.98203305172986455
	.quad	0x3fe1f15577d0cfd3              # double 0.56070969964502593
	.quad	0x3fe11d386b3afec6              # double 0.53481694167563698
	.quad	0x3fb1cb5a7255fd10              # double 0.06950917521861677
	.quad	0x3fec40aed17b0fc1              # double 0.88289585985375407
	.quad	0x3fdcdfc4289ce476              # double 0.45115760770892821
	.quad	0x3fe028dc391786b2              # double 0.50498782301675349
	.quad	0x3fc71b22ac65e9d0              # double 0.18051560800434041
	.quad	0x3fd4d61376237d78              # double 0.32556616341567901
	.quad	0x3fe8ef3c673cacd2              # double 0.77920360721091186
	.quad	0x3febca24bbf26d08              # double 0.86842571934121882
	.quad	0x3fedf15cf9c0d060              # double 0.93571327953260308
	.quad	0x3fcaeb3bfb1299e4              # double 0.21030378112227688
	.quad	0x3fed177cc6fccd27              # double 0.90911711563822883
	.quad	0x3fd904b21174537e              # double 0.39091159538775588
	.quad	0x3fe55b36bdfb871b              # double 0.66738450151408146
	.quad	0x3fdc02d57bba5298              # double 0.4376729687003631
	.quad	0x3fecba9721f8ffea              # double 0.8977771438148896
	.quad	0x3fdf4e7aa4559112              # double 0.4891649823023424
	.quad	0x3fdee959a86fa390              # double 0.48299256752812258
	.quad	0x3fc9fe575fd17b38              # double 0.20307438067080752
	.quad	0x3fe9dc3a736eb726              # double 0.80813334031492867
	.quad	0x3fcd6356d8468128              # double 0.22959409294436139
	.quad	0x3fef5d1f0313ab5c              # double 0.98011732674545326
	.quad	0x3fe4d28142ef1151              # double 0.65069640229243408
	.quad	0x3fe05df7f8b5a7bd              # double 0.51147078109828892
	.quad	0x3feb508576f20a63              # double 0.85357926589524558
	.quad	0x3fbb1888540b5e78              # double 0.10584308673730358
	.quad	0x3fe1b37bf534800a              # double 0.55315969363800943
	.quad	0x3fe452d3448a7109              # double 0.63511050593254581
	.quad	0x3fe8f541a01aecfe              # double 0.7799385191969177
	.quad	0x3fd414a80a2f46ba              # double 0.3137607669315049
	.quad	0x3fef55008b476407              # double 0.97912623598961168
	.quad	0x3fe21b2a398d826d              # double 0.56581603279853498
	.quad	0x3fd38dca16e34330              # double 0.30552913890010114
	.quad	0x3fe95020ab23b05c              # double 0.79103120256105396
	.quad	0x3fd5e504e7550e9e              # double 0.34210321990051706
	.quad	0x3fdc303b23137666              # double 0.44044378686326124
	.quad	0x3fcc8e097e982d00              # double 0.22308462792748429
	.quad	0x3fe74cefb744475e              # double 0.72814164919166635
	.quad	0x3fdfe0d788ba87c4              # double 0.49809826233297039
	.quad	0x3fd209ff5572f5ba              # double 0.28186019272456131
	.quad	0x3feeef28f277b20e              # double 0.96669432980485381
	.quad	0x3fef8dd1118affdf              # double 0.98606160570488643
	.quad	0x3fec104622064036              # double 0.87698656697649002
	.quad	0x3fc4107eebb737f8              # double 0.15675341138415866
	.quad	0x3feede690c97f9fb              # double 0.96464970073412759
	.quad	0x3fef8394b72a441c              # double 0.98481212400850237
	.quad	0x3fe4ffff9c4f452f              # double 0.65624981431225204
	.quad	0x3fdde4173b1ad43a              # double 0.46704655429795461
	.quad	0x3fbe7e7e1914c160              # double 0.11911762344675969
	.quad	0x3fe743d27a30c7f9              # double 0.72702907433836039
	.quad	0x3feca3d595b313d3              # double 0.89499930608928435
	.quad	0x3fdc06449b4f266a              # double 0.43788256804382419
	.quad	0x3fd9db0d0e19096a              # double 0.40399481178987762
	.quad	0x3fe6e89cb35125c6              # double 0.71589503310058755
	.quad	0x3fdfd79b16f41314              # double 0.49753453485054533
	.quad	0x3fda69994bcef9b6              # double 0.41269524005101788
	.quad	0x3fede80ce1c638c5              # double 0.93457645508331011
	.quad	0x3fe539da82245168              # double 0.66331220072110586
	.quad	0x3fee0d792dd90673              # double 0.93914469675674039
	.quad	0x3fdcf93f77c511fa              # double 0.45271288582105706
	.quad	0x3fe075fb59c223b3              # double 0.51440207987717768
	.quad	0x3fdf5ae276bb84fe              # double 0.48992215723963273
	.quad	0x3fc80f5b2f481c94              # double 0.18796863373447492
	.quad	0x3fea81f5cd9ff150              # double 0.82836427842225113
	.quad	0x3fcfd7aa16fdeb18              # double 0.24876905558252171
	.quad	0x3fe8ce46ea87033b              # double 0.77518029981738523
	.quad	0x3fee3b00471af98e              # double 0.94470228088157326
	.quad	0x3fe2856840158c11              # double 0.57878506199301871
	.quad	0x3fea20727cabf733              # double 0.81646084165524824
	.quad	0x3fc62e1a134cf704              # double 0.17328191702284113
	.quad	0x3fcc487212cc8804              # double 0.22096086423795225
	.quad	0x3fe4eeea9532902a              # double 0.65416459217204204
	.quad	0x3fef27c0f5a3d892              # double 0.97360275246207295
	.quad	0x3fe7249287a85c7a              # double 0.72321440215718202
	.quad	0x3fe060e302b74599              # double 0.51182699709368074
	.quad	0x3fe52bebee43f364              # double 0.66161152397362999
	.quad	0x3fe77f28c6024862              # double 0.73427237199417683
	.quad	0x3fd7a2516ffbd2d8              # double 0.36928211151034196
	.quad	0x3fc58c490725dd38              # double 0.16834366654414068
	.quad	0x3fd16cd0eccb16da              # double 0.27226660847041517
	.quad	0x3fe8397f52fb5706              # double 0.75701872069723275
	.quad	0x3fa481a12ed4ece0              # double 0.040051495520367686
	.quad	0x3fb25526eebacb68              # double 0.071611817630395813
	.quad	0x3fee69276a58dfc8              # double 0.95033617754870025
	.quad	0x3fea02f21716e421              # double 0.81285957822467847
	.quad	0x3feb1a510d7f9706              # double 0.84696247707754035
	.quad	0x3fd093694597acfa              # double 0.25899726673260626
	.quad	0x3fe24af98edcab48              # double 0.57165220167858255
	.quad	0x3fe7719d3f94c0a6              # double 0.73261892717529942
	.quad	0x3fe4891d996606e4              # double 0.64173774681713924
	.quad	0x3fedb05eb0bf1206              # double 0.92777952690863752
	.quad	0x3fd359240d69c68a              # double 0.30231572446710031
	.quad	0x3fd3644db2c37b34              # double 0.30299704034216579
	.quad	0x3fea8b724abfd138              # double 0.82952227210493046
	.quad	0x3f9a8d9f68026a00              # double 0.025930872653228576
	.quad	0x3fef1b6d05145549              # double 0.97209788314891298
	.quad	0x3fe76d03c2c01e48              # double 0.73205745732497807
	.quad	0x3fd5109ac9dfb1a4              # double 0.32913846697081284
	.quad	0x3fd34614ba196ff4              # double 0.30115240262762133
	.quad	0x3fe5619c02204258              # double 0.66816521086918623
	.quad	0x3fd7a69b7485bb2c              # double 0.36954389933719045
	.quad	0x3fc41c0a2cc0e780              # double 0.15710570512038302
	.quad	0x3feb8adcc9a32c50              # double 0.86070098287872021
	.quad	0x3fe50070ff77e9f2              # double 0.65630388160871989
	.quad	0x3fdeadbcf900d59c              # double 0.47935413662647774
	.quad	0x3fef3ae014db0604              # double 0.97593692849494617
	.quad	0x3fbd9fe60012c048              # double 0.11572110654628986
	.quad	0x3fe2b9b987d6c5d9              # double 0.58517147570654082
	.quad	0x3fee2c4b05f483c7              # double 0.94290686762916998
	.quad	0x3fe4f6e0a9dc4bdc              # double 0.65513642478833445
	.quad	0x3fc596b4968ec27c              # double 0.16866166449974063
	.quad	0x3fd3786a7a579f7a              # double 0.30422460505950932
	.quad	0x3fe82f5f1b120e8a              # double 0.75578265464032879
	.quad	0x3fe4d586f0f1ba7c              # double 0.65106532153534102
	.quad	0x3fec67b8dfe8af77              # double 0.88766139728748683
	.quad	0x3febc3fcacb10597              # double 0.86767419556433623
	.quad	0x3fef3450851d286a              # double 0.97513605116661251
	.quad	0x3fd525334e31ddfc              # double 0.33039553295336055
	.quad	0x3fe0be930bf09471              # double 0.52326347667680129
	.quad	0x3fd4a892682f3942              # double 0.32278881239189527
	.quad	0x3fe7450b87f28c71              # double 0.72717834999310871
	.quad	0x3fea0246280e58b3              # double 0.81277759383626458
	.quad	0x3fe4eec8358e07a5              # double 0.65414820156023679
	.quad	0x3fed5d2235877ea9              # double 0.91761885123192599
	.quad	0x3fe7c2eb4b2e033c              # double 0.7425438373903499
	.quad	0x3fef1b739b9cd2a9              # double 0.97210102456172819
	.quad	0x3feb8e8352ad20c9              # double 0.86114660403929932
	.quad	0x3fe8fea06cfd2c01              # double 0.78108235632805656
	.quad	0x3fdf0a5c94d22d88              # double 0.48500742467214097
	.quad	0x3fea9932e688da2d              # double 0.83120102907452564
	.quad	0x3fdc484d418f3578              # double 0.44191295053754898
	.quad	0x3fddce89dd2bc260              # double 0.46573111151432123
	.quad	0x3fe62f688da03982              # double 0.69328715955070686
	.quad	0x3fa34b602828a9d0              # double 0.037684445287897383
	.quad	0x3fe0e30397a0e3d4              # double 0.52771167387902063
	.quad	0x3fbca1e8a804ccf8              # double 0.1118455324365647
	.quad	0x3fe4362ffc441876              # double 0.63161467810347349
	.quad	0x3fb4720ed7173f78              # double 0.079865386497884105
	.quad	0x3fe01c664c88eca2              # double 0.5034667486974238
	.quad	0x3fe5eabff0334a91              # double 0.68490597643024576
	.quad	0x3fe6031d86277ffa              # double 0.68788028909693755
	.quad	0x3f72cd96ac24ad80              # double 0.0045905957834223576
	.quad	0x3fe0698b166b4ae4              # double 0.5128837049363395
	.quad	0x3fbcf34f9a8c9e18              # double 0.1130876304929348
	.quad	0x3fe490bf89f2cd78              # double 0.64266945784622376
	.quad	0x3fefc59bbaa0aab6              # double 0.99287210894302436
	.quad	0x3fe17b466820d7e7              # double 0.5462982209926367
	.quad	0x3fdd5b4e0907b934              # double 0.45869780427792084
	.quad	0x3fd9dc8752202d58              # double 0.40408499736868952
	.quad	0x3fd701e5087ba89e              # double 0.35949064091131244
	.quad	0x3fe3b7c6b6e0fb46              # double 0.6161836215831975
	.quad	0x3fdf701656528f26              # double 0.49121626310283018
	.quad	0x3fe0ac2c8a38c010              # double 0.5210173320429039
	.quad	0x3fb49157f2085690              # double 0.080342766370757212
	.quad	0x3fe81d0df870da54              # double 0.75354670070266616
	.quad	0x3fc4a51105770938              # double 0.16128742949337904
	.quad	0x3fedc49b6f2119bf              # double 0.9302498980039714
	.quad	0x3feda189e2b55867              # double 0.92596906928043843
	.quad	0x3feee22b1782c8f2              # double 0.96510843841522687
	.quad	0x3fd93c19bb04b2b4              # double 0.39429324401389043
	.quad	0x3fe41d38dbd78b9f              # double 0.62856715143094621
	.quad	0x3fef2c491c474c24              # double 0.97415595553537004
	.quad	0x3fe681986cabc3f7              # double 0.7033197519759814
	.quad	0x3fea5e55281194a2              # double 0.82401521516716891
	.quad	0x3fdc9a4ce4f35cf0              # double 0.4469177471014083
	.quad	0x3fe6e90eb09c48d7              # double 0.71594938749538073
	.quad	0x3fe131454e4a0361              # double 0.53726449290125455
	.quad	0x3febf56a88f33c0d              # double 0.87370802639077427
	.quad	0x3fc653d5a102f47c              # double 0.17443342553989172
	.quad	0x3fd793b119043644              # double 0.36838939135563842
	.quad	0x3fbee2e600d70eb0              # double 0.12064969559201688
	.quad	0x3fec16402a9dbfae              # double 0.87771614383199448
	.quad	0x3fd527a00e5c04c6              # double 0.33054353143968418
	.quad	0x3fca919351e38f5c              # double 0.20756761072618246
	.quad	0x3fd1dbd87a31e76c              # double 0.2790433114347397
	.quad	0x3fe173f17b185d1b              # double 0.54540323297524951
	.quad	0x3fdd33755232fe5e              # double 0.45626576449646972
	.quad	0x3febdbfc0401266c              # double 0.87060356886031575
	.quad	0x3fed54d74b655d05              # double 0.91660656667491536
	.quad	0x3fd9abe62f64e7aa              # double 0.40111689213119439
	.quad	0x3fefb3f19494c6bf              # double 0.99071578044659946
	.quad	0x3fe3b055dc26ee04              # double 0.6152753162236313
	.quad	0x3fcf59f2c7a77408              # double 0.24493250607238815
	.quad	0x3fd3cdb628e5e13c              # double 0.30943063730184739
	.quad	0x3fdbaf277cf784f0              # double 0.43256556705280413
	.quad	0x3fd6e594792eee10              # double 0.35776244959171866
	.quad	0x3feb0c5c7057e00a              # double 0.84525892202418729
	.quad	0x3fe3254cab70e43e              # double 0.59830316052023824
	.quad	0x3fe81cb5927b5614              # double 0.75350454911921582
	.quad	0x3fec7d725d4701ef              # double 0.89031332224118198
	.quad	0x3fd2b75d2cd1fa1c              # double 0.29244164826369157
	.quad	0x3fea8f40314314e1              # double 0.82998666402331989
	.quad	0x3fd1ead2f8d7673c              # double 0.27995752621574232
	.quad	0x3fe188bcb9f923a7              # double 0.54794155428782154
	.quad	0x3fe9fc2e6c9b7510              # double 0.81203385555605401
	.quad	0x3fc53cafb2c9482c              # double 0.16591449956701021
	.quad	0x3fd0b0ba6f717d4e              # double 0.26078663714539096
	.quad	0x3fe7496e722bf6f7              # double 0.7277137975613347
	.quad	0x3fed23f0200164d0              # double 0.91063696147025475
	.quad	0x3fca2d18e55d956c              # double 0.20450125884523673
	.quad	0x3fc97aed44922e5c              # double 0.19906392906374293
	.quad	0x3fed77dc6b07d9ba              # double 0.92088147072245552
	.quad	0x3fba6de1f9a61710              # double 0.10323917717877529
	.quad	0x3fcfec358b774864              # double 0.24939603147373923
	.quad	0x3fd56a49a32f9f3c              # double 0.33461228309760194
	.quad	0x3fe41868d84c5412              # double 0.62797968145116756
	.quad	0x3fe6d3b4fae58543              # double 0.71334313395724569
	.quad	0x3f9be52d89549f60              # double 0.027241431719772335
	.quad	0x3fd8c045ab8143a0              # double 0.38673536060837854
	.quad	0x3fe869d01e67ada8              # double 0.76291662157511997
	.quad	0x3fe451709aa82e97              # double 0.63494138914525677
	.quad	0x3fe9076f821c044a              # double 0.78215766345977866
	.quad	0x3fbbc536f8c0f8d0              # double 0.10847800801363694
	.quad	0x3fdcb1273150b6c0              # double 0.44831256690927646
	.quad	0x3fe02e8e3fe0d114              # double 0.50568306423386611
	.quad	0x3fe9a445f2b3bafc              # double 0.80130288508175295
	.quad	0x3fd50281ec23ff0a              # double 0.32827804623228529
	.quad	0x3fe81b719646c8eb              # double 0.7533500609481768
	.quad	0x3fb3e1823b077660              # double 0.077659739886678292
	.quad	0x3fcae5ee46850494              # double 0.21014193003978632
	.quad	0x3fef50de7a3f55ae              # double 0.97862171055264979
	.quad	0x3fe441bb4778ba1f              # double 0.63302387198729437
	.quad	0x3fd00223f83b992e              # double 0.25013064614758462
	.quad	0x3fd1f076f625cfb2              # double 0.28030180013524408
	.quad	0x3fdfa65a12ad9c06              # double 0.49452831100501304
	.quad	0x3fdbc24d601a2030              # double 0.43373426804510284
	.quad	0x3fe19f36d85a8796              # double 0.55068533188408497
	.quad	0x3fe0f64882aed844              # double 0.53006387256642329
	.quad	0x3fe9079597429043              # double 0.78217582266780317
	.quad	0x3fec5f9850f850b3              # double 0.88666930975388991
	.quad	0x3fe35639c96ea3b6              # double 0.60427560178970086
	.quad	0x3fc517c359e6ed84              # double 0.16478769197224719
	.quad	0x3fee95e43dfbaae6              # double 0.955797310887047
	.quad	0x3fe0390d69fd3202              # double 0.50696440411553589
	.quad	0x3fe3ccbcf4da7b48              # double 0.61874244521082122
	.quad	0x3fe74172fd63ca80              # double 0.72673940172383311
	.quad	0x3fd28f7110eaa930              # double 0.29000498439804101
	.quad	0x3fe686953f9539ea              # double 0.70392858904398037
	.quad	0x3fed6a364b47677b              # double 0.91921534254946324
	.quad	0x3fe337df73592ec2              # double 0.60057041672686062
	.quad	0x3fc51db9e979af04              # double 0.16496967220461312
	.quad	0x3fb5879eee71b700              # double 0.084100659574428249
	.quad	0x3fc585c78efb238c              # double 0.16814512711996732
	.quad	0x3f94b784ac0f2f00              # double 0.02023131656805699
	.quad	0x3feec2298a7ddd95              # double 0.96120144890930936
	.quad	0x3fe30773c2a757b6              # double 0.59465969103143013
	.quad	0x3fea9320c1198fc5              # double 0.83045995440306142
	.quad	0x3feae169e7eb54bb              # double 0.84001632019739902
	.quad	0x3fea35cdd8e70790              # double 0.81906788219224502
	.quad	0x3fe357d09eeb6fc1              # double 0.6044695953273661
	.quad	0x3fe12c39b1a36df9              # double 0.53664860434531569
	.quad	0x3fe5962085b7ea65              # double 0.67457605473402948
	.quad	0x3fd5f56e5c49f0a0              # double 0.34310492527561998
	.quad	0x3fd38f286605c512              # double 0.3056126591028071
	.quad	0x3fd9f42db633582c              # double 0.40552847664855807
	.quad	0x3fc495d5546c8430              # double 0.16082255003223755
	.quad	0x3fe1216ac7a5419a              # double 0.53532923692005174
	.quad	0x3fe9f7889e7ca18f              # double 0.81146651224575972
	.quad	0x3fe55dbbd56ff66d              # double 0.66769210516913591
	.quad	0x3fead92d76f7ffb0              # double 0.83901093708117536
	.quad	0x3fb29bdb63a3fa10              # double 0.072690688921263069
	.quad	0x3feffe0344e014cd              # double 0.99975741817675045
	.quad	0x3fdc2a628aea6cc0              # double 0.44008697095859972
	.quad	0x3fc2fb6c0d9ff460              # double 0.14829779305719892
	.quad	0x3fc3bdce79042040              # double 0.15422993573179333
	.quad	0x3fc26a0a708bcd74              # double 0.14386110778250905
	.quad	0x3fe161031f6ce2bf              # double 0.54309230935822217
	.quad	0x3fb1ba28291de4d8              # double 0.069246778524660768
	.quad	0x3fdae977ba9393ee              # double 0.42049973698004706
	.quad	0x3fdcba397a8bef46              # double 0.44886624305194223
	.quad	0x3fc0cf813a1abd40              # double 0.13133254372722014
	.quad	0x3fc2906558b99b58              # double 0.14503161270405474
	.quad	0x3fec6e64bfd3db34              # double 0.88847577539750099
	.quad	0x3fdfcc3b84587aae              # double 0.49684036182763236
	.quad	0x3fb5e4a5ce7605d8              # double 0.085520136743091668
	.quad	0x3fd6eb86c2bee27c              # double 0.35812539117936359
	.quad	0x3f7c0f779b75ee00              # double 0.0068506881865419977
	.quad	0x3fa6b983b2a79190              # double 0.044384112890642702
	.quad	0x3f9a239616c1e320              # double 0.025526375903129339
	.quad	0x3f9a8fd33271bbe0              # double 0.025939273790239414
	.quad	0x3fcd8b09f9085050              # double 0.23080563220776407
	.quad	0x3fda25de1b2a7710              # double 0.40856125500600715
	.quad	0x3fecabc515da16a7              # double 0.89596800106001673
	.quad	0x3fe64102fe0265ba              # double 0.69543599711612747
	.quad	0x3fb0b20625353378              # double 0.06521643074411354
	.quad	0x3fe8ce6bb0fe6dd2              # double 0.77519783562768851
	.quad	0x3fec55455dc622f3              # double 0.88540905299404782
	.quad	0x3fb4fec747358f78              # double 0.082012610325873925
	.quad	0x3fea8e6d85b80db0              # double 0.82988620869621421
	.quad	0x3fe0461f1d1963d5              # double 0.50855975802834996
	.quad	0x3febde774e36bbdf              # double 0.87090649868138914
	.quad	0x3fc6eb75f94182ec              # double 0.17906069441507755
	.quad	0x3fa1d6b6b9a2e510              # double 0.034841261063272566
	.quad	0x3fe108b50d41a618              # double 0.53231289471767962
	.quad	0x3fe143a6521aae9c              # double 0.53950801883680155
	.quad	0x3fd754cafd5acb6a              # double 0.36455034963289867
	.quad	0x3fec52171b517056              # double 0.88502078376360305
	.quad	0x3f85edb6fe71f640              # double 0.010707311286974108
	.quad	0x3fdafb0175b1e082              # double 0.42157017224918303
	.quad	0x3fd9212e58c861cc              # double 0.39265021009626078
	.quad	0x3fd5409f1eab56ce              # double 0.33206918711708233
	.quad	0x3f98eddca44abd00              # double 0.024344871070465679
	.quad	0x3fefefae370cf418              # double 0.9980078768927596
	.quad	0x3fe475de53daf311              # double 0.6393882406042356
	.quad	0x3fe2f5c8cbdb4223              # double 0.59250297370642035
	.quad	0x3fedf01445862b68              # double 0.93555654124189135
	.quad	0x3f81de256cbab6c0              # double 0.0087244914824070596
	.quad	0x3fbf3805114219b0              # double 0.12194854422896273
	.quad	0x3fe9416f16292c02              # double 0.78923754051481887
	.quad	0x3fd43d47f76eb412              # double 0.31624030268977876
	.quad	0x3fdf055a3c75b7d6              # double 0.4847016897609796
	.quad	0x3fe45d3ac0c22338              # double 0.63638055465808119
	.quad	0x3fe3cca563e592b0              # double 0.61873120795333669
	.quad	0x3fe9a516525ef1d4              # double 0.80140224540769589
	.quad	0x3fb68a70415968b0              # double 0.088049903826148634
	.quad	0x3fe1e1e2a9bc1ff7              # double 0.55882390166607265
	.quad	0x3fe11864cf99b538              # double 0.53422775790173826
	.quad	0x3fe37b1b4b927659              # double 0.60877766380481113
	.quad	0x3fe225620274fa65              # double 0.56706333618042193
	.quad	0x3fec3942630a900a              # double 0.88198966354366459
	.quad	0x3fef9dd2fd8b5c56              # double 0.98801564712892787
	.quad	0x3fea673f949474fe              # double 0.82510355968011573
	.quad	0x3fd78797a0d1944e              # double 0.36765089707325138
	.quad	0x3fe3747b015fc1c6              # double 0.60796880977982748
	.quad	0x3fd5941136cfb8be              # double 0.33716230728795071
	.quad	0x3fea08d7d921bfef              # double 0.81357948692857274
	.quad	0x3feb5a60e79e54c3              # double 0.85478253591522735
	.quad	0x3fed5eaac363f720              # double 0.91780603563504215
	.quad	0x3feb09f5a38aeea6              # double 0.84496576253828404
	.quad	0x3fc8cd96c1cc971c              # double 0.1937740751538336
	.quad	0x3fd63a75494e1b70              # double 0.34731800230695509
	.quad	0x3fd340e3e84de20a              # double 0.30083558736762994
	.quad	0x3fe6af7aa26bcae6              # double 0.70892078135360914
	.quad	0x3fe0d0049342a695              # double 0.5253928066424175
	.quad	0x3fd3935b98c4831c              # double 0.30586900633538661
	.quad	0x3f8793114914e7c0              # double 0.011510977785849863
	.quad	0x3fb370dbd4bb8ea0              # double 0.07594083732288448
	.quad	0x3fed60f921094174              # double 0.91808754398702641
	.quad	0x3fe1a15ded8209bf              # double 0.55094810856126475
	.quad	0x3fd6194205d69cc4              # double 0.34529161996983881
	.quad	0x3fd788d35dbb59d6              # double 0.36772617486476855
	.quad	0x3fe6953583917e1f              # double 0.70571399399699775
	.quad	0x3feae7bdce66c47e              # double 0.84078874886303345
	.quad	0x3fdb7c471858c836              # double 0.42946030976884531
	.quad	0x3fc52d26df842748              # double 0.16544042505148071
	.quad	0x3fdfb1998d575eca              # double 0.49521483233318675
	.quad	0x3fe00a5f4a648b34              # double 0.50126614122232249
	.quad	0x3fef6aa0fc46478a              # double 0.9817662169682404
	.quad	0x3fd4fd23cbd99cba              # double 0.32795042903166982
	.quad	0x3fedfcbb2a7d2412              # double 0.93710096644020013
	.quad	0x3fc8e781da0cd2b8              # double 0.1945650400827128
	.quad	0x3fe73cc6d55eecd3              # double 0.72616902994141197
	.quad	0x3fd61ce49450ce24              # double 0.34551348194074394
	.quad	0x3fd5ee84cbef485e              # double 0.34268302836892939
	.quad	0x3fd94828a2ca029e              # double 0.39502921960233006
	.quad	0x3fe87ea8ad7176b4              # double 0.76546129108074589
	.quad	0x3f7ac592adfec800              # double 0.0065360765146795785
	.quad	0x3fe73ea8bc1d2bfb              # double 0.72639881840711895
	.quad	0x3fe141eef24f8bf5              # double 0.53929850889505693
	.quad	0x3fd0ce080308ca96              # double 0.26257515236208329
	.quad	0x3fc994b4f973d80c              # double 0.19985067539499857
	.quad	0x3fdf99584b1b352a              # double 0.49373442968938497
	.quad	0x3fe08ee30fa3b48a              # double 0.51744225554070167
	.quad	0x3fed411cd37ef658              # double 0.91419831569482835
	.quad	0x3fef869603079a7b              # double 0.98517895309198821
	.quad	0x3fb3f301bdaa27e0              # double 0.07792673950657969
	.quad	0x3fe504116f2d8328              # double 0.6567465945664468
	.quad	0x3fe98e580a251ed9              # double 0.79862596494146054
	.quad	0x3fb53746901f2258              # double 0.082874689279500813
	.quad	0x3fd402129168c846              # double 0.312626497269893
	.quad	0x3fe298e7846889b7              # double 0.5811650835133183
	.quad	0x3fc89df03ce5ee64              # double 0.19231989835303687
	.quad	0x3fecd51ba1a6b6ba              # double 0.90101415226464288
	.quad	0x3fe9241437ce91f9              # double 0.78565417194164333
	.quad	0x3fd32b37d5f865f2              # double 0.29951282401597645
	.quad	0x3fee388f560b55a9              # double 0.94440428548357602
	.quad	0x3fcc8462130f81b0              # double 0.22279001169864676
	.quad	0x3fb5132a56e2e8f8              # double 0.082323690617076895
	.quad	0x3fd640ba9898af70              # double 0.34770073797221013
	.quad	0x3fe0ea5d79820922              # double 0.52860902530691001
	.quad	0x3fe73c92841d663e              # double 0.72614408305816602
	.quad	0x3fdd86b1fca0420e              # double 0.46134614630230508
	.quad	0x3fd0aea41ff23ea2              # double 0.26065924758675341
	.quad	0x3f828ca3adb64180              # double 0.0090573108089138099
	.quad	0x3feb4e5abf110d98              # double 0.85331475560853942
	.quad	0x3fc80d00b704bac4              # double 0.18789681374024358
	.quad	0x3fd1d202f1ceaeee              # double 0.27844308485030822
	.quad	0x3fe25992007cac09              # double 0.57343387694470593
	.quad	0x3fed28668370c18d              # double 0.91118169471705956
	.quad	0x3fd012ac418cebb4              # double 0.25113970185673939
	.quad	0x3fea354a7384c519              # double 0.81900522768242745
	.quad	0x3fed532e9cf3c84c              # double 0.9164040627931711
	.quad	0x3f91573c3d962be0              # double 0.016934338816593342
	.quad	0x3fd07b794d1344c2              # double 0.25753624464875824
	.quad	0x3fc4d596d4bc963c              # double 0.16276822459728801
	.quad	0x3fd3211092ae86dc              # double 0.2988931114615363
	.quad	0x3fe7a84cda2a1d49              # double 0.73929445848708852
	.quad	0x3fe4c9f70c6732f8              # double 0.64965393469319022
	.quad	0x3fdbd234a9200bc4              # double 0.43470493808871091
	.quad	0x3fcf85c724c1d234              # double 0.24627007765561049
	.quad	0x3fc3dd24b0019210              # double 0.15518625825929222
	.quad	0x3fe6e25f64b1c433              # double 0.71513337771296503
	.quad	0x3feb683d8880f472              # double 0.85647465382466081
	.quad	0x3fca36224fb90988              # double 0.20477703945841719
	.quad	0x3f8ffdc4ce8c8540              # double 0.015620744279262966
	.quad	0x3fe6714cac92a429              # double 0.70133050637844463
	.quad	0x3fb4b8d1c12d7e58              # double 0.080945119535948407
	.quad	0x3f97fddb1529e120              # double 0.023429320494387729
	.quad	0x3fb65779e7948000              # double 0.08727228072939397
	.quad	0x3fe44c8cd4998793              # double 0.63434449694999484
	.quad	0x3fc0d0f3065f20bc              # double 0.13137662707436515
	.quad	0x3fc8a8cfd932a3f8              # double 0.1926517305885509
	.quad	0x3fd8d64e67ee1506              # double 0.38808021687903282
	.quad	0x3fe919a8904621d2              # double 0.78438213518625788
	.quad	0x3fdc211fa4eb5874              # double 0.4395217047252864
	.quad	0x3fe3d24651da1154              # double 0.61941829668698256
	.quad	0x3feaa438ea8da626              # double 0.83254667102045654
	.quad	0x3fd444758554a720              # double 0.31667840977262252
	.quad	0x3fded7ed87c6d7ba              # double 0.48192919024893011
	.quad	0x3fc58806fc6cd0a4              # double 0.16821372342531504
	.quad	0x3fbf25f072c23330              # double 0.1216726570293758
	.quad	0x3fe66371d405ad5d              # double 0.69963923845845566
	.quad	0x3fb91762f8b082d0              # double 0.098013101306160921
	.quad	0x3fefce04b02dcc42              # double 0.99389871988240253
	.quad	0x3fd7cdd1eda74f82              # double 0.37193725784640475
	.quad	0x3fd03110f66898c0              # double 0.25299476683938948
	.quad	0x3fddb20bd483ad22              # double 0.46399207833629152
	.quad	0x3fb6aaf665d582d0              # double 0.088546180593321865
	.quad	0x3fe50df835d99999              # double 0.65795526998117559
	.quad	0x3fd2fb4783ba9064              # double 0.29658687461983946
	.quad	0x3fe09f2d60181edf              # double 0.51943081634905386
	.quad	0x3fc1b54797bcdeb0              # double 0.13834471615858979
	.quad	0x3fef0d16947f122c              # double 0.97034768107602564
	.quad	0x3fe6465aaa5d2554              # double 0.69608815454663864
	.quad	0x3fd1631578d258fa              # double 0.27167259978286007
	.quad	0x3fdd6048d5270c70              # double 0.45900173965146163
	.quad	0x3febb736ec906868              # double 0.86611505702900349
	.quad	0x3fe5b517c75c30da              # double 0.67835606515429991
	.quad	0x3fee975c23190fde              # double 0.95597655158098482
	.quad	0x3fd2bbf274b4669a              # double 0.29272138020460547
	.quad	0x3fee042c586fa26a              # double 0.93800942680998145
	.quad	0x3f97840f21603520              # double 0.022964702999208275
	.quad	0x3fddcf9464a7e980              # double 0.46579465703657519
	.quad	0x3fe5cf2374221df2              # double 0.68153546030310808
	.quad	0x3fd41ad801a99d00              # double 0.31413841402395803
	.quad	0x3fd2a767b3795386              # double 0.29146759535552069
	.quad	0x3fd8819e3af2e38a              # double 0.38291126019208177
	.quad	0x3fb503f69f553598              # double 0.08209172620737204
	.quad	0x3fc7d409c626c2a8              # double 0.18615839171754556
	.quad	0x3fdf9755605ea308              # double 0.49361166392422762
	.quad	0x3fd0b18876527f5c              # double 0.26083575777919576
	.quad	0x3fe10857bc00de94              # double 0.53226839751637778
	.quad	0x3fe7ded5e95c6ffe              # double 0.74595161035858815
	.quad	0x3fc501e25e51db78              # double 0.16412000279862204
	.quad	0x3fc1a772715e8d84              # double 0.13792257819759979
	.quad	0x3fe95dcdf1f41ddb              # double 0.79270074135359481
	.quad	0x3fc7f9115fc5da90              # double 0.18728844810876355
	.quad	0x3fe2817bf1211cd5              # double 0.57830617042136601
	.quad	0x3fc14e99236659bc              # double 0.13521112659937085
	.quad	0x3fd2bf62f07ec85e              # double 0.29293130384315258
	.quad	0x3fe60ac6d4dafaf6              # double 0.68881551335638735
	.quad	0x3f98f928bea03600              # double 0.024387966761471702
	.quad	0x3fe9bc7410bb3c4b              # double 0.80425456302499165
	.quad	0x3fe6e03babaed41d              # double 0.71487220317669975
	.quad	0x3fd95fac141883a8              # double 0.3964643665549894
	.quad	0x3fe368cd6719d70b              # double 0.60654325615789284
	.quad	0x3fe07571da52749f              # double 0.51433651581796258
	.quad	0x3fe67c5740b384a5              # double 0.70267832409821962
	.quad	0x3f63a7f599bd0800              # double 0.0023994252095755897
	.quad	0x3fcc64b8231be4f8              # double 0.22182370867066203
	.quad	0x3fdc5199da318f0c              # double 0.44248052890746759
	.quad	0x3fd30b47d0790dca              # double 0.29756350859335312
	.quad	0x3fdf336bcced378e              # double 0.48751349460950955
	.quad	0x3fb43a998fc80608              # double 0.079019162752978045
	.quad	0x3fbeea5c57dac8e0              # double 0.12076356072319383
	.quad	0x3fa86cd5201172b0              # double 0.047705326237268308
	.quad	0x3fddb65a21f79758              # double 0.46425488774399559
	.quad	0x3fcf32305bc2e81c              # double 0.24371914368185876
	.quad	0x3fc9338ee95d7d80              # double 0.1968859328726289
	.quad	0x3fe5169709ea7dcd              # double 0.65900756775584457
	.quad	0x3fc647817e2532e0              # double 0.17405718478621335
	.quad	0x3fe44ae4a3871d89              # double 0.63414222659132335
	.quad	0x3fb8b407e0f9c7c8              # double 0.096497051645001553
	.quad	0x3fd3310c54d101a8              # double 0.29986866267065659
	.quad	0x3fa8b7c807c540c0              # double 0.048277140568303789
	.quad	0x3fe22ef2b63e7d5c              # double 0.56823096842337462
	.quad	0x3fe21b996799644a              # double 0.56586904749122735
	.quad	0x3fd6af53e8139606              # double 0.3544511572239063
	.quad	0x3fc5ad4fe97e0194              # double 0.16935156727778333
	.quad	0x3fe16b22b74f6a9e              # double 0.54432807734277211
	.quad	0x3fd3944bd60f6cf6              # double 0.3059262838775817
	.quad	0x3feb27c1d4a30a2a              # double 0.84860316782607481
	.quad	0x3fec01fe39130c3d              # double 0.87524329326004813
	.quad	0x3faf659ed1e420f0              # double 0.061322177049136672
	.quad	0x3fe75e817f479019              # double 0.73028635844503065
	.quad	0x3fcd58c7f854b078              # double 0.22927188516166885
	.quad	0x3fe34f1b8c792fc5              # double 0.60340669094284094
	.quad	0x3fe53500b5032be2              # double 0.66272006372434711
	.quad	0x3feba09c542d59be              # double 0.86335579338884094
	.quad	0x3fe77c5bfc9dc751              # double 0.73393058146596435
	.quad	0x3fd188339602cd08              # double 0.27393808030611
	.quad	0x3fa3f8eaf0db6b50              # double 0.039008466626646254
	.quad	0x3fc75fd6a5d49780              # double 0.1826122579306535
	.quad	0x3fee6f668365cca3              # double 0.95109868682483911
	.quad	0x3fde3a613451e254              # double 0.47231321439133933
	.quad	0x3fcd9a5498e479d4              # double 0.23127229180768316
	.quad	0x3fe3ae303eaec033              # double 0.61501323931407226
	.quad	0x3faa7b14e76df260              # double 0.051720288515728852
	.quad	0x3fe1362efb3fd5e2              # double 0.53786419937267405
	.quad	0x3fea08f29b53d081              # double 0.81359224641211381
	.quad	0x3fe2ff5ddeeb12d5              # double 0.5936726907608213
	.quad	0x3feff8f67e237776              # double 0.99914097439226057
	.quad	0x3fc7a020b149c70c              # double 0.18457420975351402
	.quad	0x3fee43a64fd5ac0e              # double 0.94575801460939757
	.quad	0x3fec439a2e1c6027              # double 0.88325222974799977
	.quad	0x3fd893bdf21fa052              # double 0.38401745457531888
	.quad	0x3fe7f3243bd3eb78              # double 0.7484303635131786
	.quad	0x3fef23e1a4472903              # double 0.97313005528965879
	.quad	0x3fe1c165ed540875              # double 0.55485817292379969
	.quad	0x3fe5d5f1a1bc89c1              # double 0.68236619557529121
	.quad	0x3fe277c630fba021              # double 0.57712087218260788
	.quad	0x3fd5bda4f8350c94              # double 0.33969997633921278
	.quad	0x3fe8caf0bab5c448              # double 0.77477299181749348
	.quad	0x3fde08b0d054c528              # double 0.46928043694340937
	.quad	0x3fd1a29048905770              # double 0.27554709516822751
	.quad	0x3fe7e674b25e0917              # double 0.74688181722038649
	.quad	0x3fd1064abbb55a86              # double 0.26600902872943555
	.quad	0x3fb54b1bd9ccaa90              # double 0.083177319215488987
	.quad	0x3fe547e5552bd8a2              # double 0.66502634654058945
	.quad	0x3fe5fd49275f14c2              # double 0.68716867151001559
	.quad	0x3fe5ba811637fa07              # double 0.67901663150388536
	.quad	0x3fe6fe96431de1cd              # double 0.71857750996337588
	.quad	0x3fe1fcb464c51fef              # double 0.56209773713726274
	.quad	0x3fed66c9b7f7c43e              # double 0.91879735881060021
	.quad	0x3fcbf97d9284fb14              # double 0.21855134634275741
	.quad	0x3fe458a692fe9175              # double 0.63582161626668088
	.quad	0x3fd994907a6f1d58              # double 0.39969264942597738
	.quad	0x3fdf9bf0a444e9a0              # double 0.49389282266533918
	.quad	0x3fd612f0fcc33f7e              # double 0.34490608867508132
	.quad	0x3fb2f5bf0708f550              # double 0.074062289445426588
	.quad	0x3feaf089d44195cf              # double 0.84186259704864053
	.quad	0x3fe2d44fa362cb93              # double 0.58841688071548715
	.quad	0x3fb35f8f6cb1e1c8              # double 0.075676883732632594
	.quad	0x3fc89a619599b170              # double 0.19221133999543438
	.quad	0x3fbe453faf43c098              # double 0.11824415234491636
	.quad	0x3f9b1c7f791fbde0              # double 0.026475898521253316
	.quad	0x3feca8b6dad03e00              # double 0.89559500443459683
	.quad	0x3fc2c081e90096a8              # double 0.14649986149850247
	.quad	0x3fb83703898b10d0              # double 0.0945894442366495
	.quad	0x3fed14782c4366c2              # double 0.90874870915578065
	.quad	0x3fe5cd6611d9f9bc              # double 0.68132308470358494
	.quad	0x3fe6c3ce22bfaf3e              # double 0.7114020041167135
	.quad	0x3feabb248e34e287              # double 0.83534457945559459
	.quad	0x3fe7e14271878882              # double 0.74624750302997733
	.quad	0x3fdddfcd2c805658              # double 0.46678475709754741
	.quad	0x3fe8f87768ad1ebe              # double 0.7803303760965361
	.quad	0x3fdd485f2a8a8160              # double 0.45754222063444239
	.quad	0x3fecc53a0fb691bf              # double 0.89907553738571966
	.quad	0x3fef08355564d3ad              # double 0.96975199392783439
	.quad	0x3fe1221e333cdd49              # double 0.53541479117749546
	.quad	0x3f9a3a09903d2760              # double 0.025612019947664932
	.quad	0x3fcfab3142681474              # double 0.24741187803752818
	.quad	0x3fe250923f007e37              # double 0.5723353605753293
	.quad	0x3fedbba7a99cabea              # double 0.92915709616988562
	.quad	0x3fe65ac05599d37d              # double 0.69857804030344506
	.quad	0x3fed0958e3d8f28b              # double 0.90739101888137108
	.quad	0x3fc6dbad395d8d7c              # double 0.17857899952933198
	.quad	0x3fc76fb810b9db84              # double 0.18309689346980573
	.quad	0x3fef47da234d905b              # double 0.97752100844492006
	.quad	0x3fe4384c4ec3a76a              # double 0.63187232383391501
	.quad	0x3fa0ddce5fdf12d0              # double 0.032942246630715766
	.quad	0x3fcd8cd8a4253b48              # double 0.23086078658021791
	.quad	0x3fea86632a55f37d              # double 0.82890470761013513
	.quad	0x3fe6f03871df90e3              # double 0.71682378998641771
	.quad	0x3fd77f71581f5574              # double 0.36715348821356675
	.quad	0x3fe20efbf34497d3              # double 0.56432912362356047
	.quad	0x3fefa7c3dddb0d0e              # double 0.98922913867173334
	.quad	0x3fda577a59456c9e              # double 0.41158922880067361
	.quad	0x3fe1de6ae14101f8              # double 0.55840057368192131
	.quad	0x3fe3c711d3673e39              # double 0.61805049218850805
	.quad	0x3feb47cb1851a92f              # double 0.85251383542825987
	.quad	0x3fecb06333b90945              # double 0.89653167821988033
	.quad	0x3fbe966e78a90ef0              # double 0.1194829029637352
	.quad	0x3fbc5ed349774b58              # double 0.11082191985705714
	.quad	0x3fdc7bec47511f52              # double 0.44506365742244214
	.quad	0x3fe11f9371f1bf5f              # double 0.5351044869876026
	.quad	0x3fed867e23005f4b              # double 0.92266756855222221
	.quad	0x3fc31ff1348e1a38              # double 0.14941229883352647
	.quad	0x3f9af8581778b120              # double 0.026337982590278419
	.quad	0x3fba34324aec7dc8              # double 0.10235895470804401
	.quad	0x3fd816e2be4c6ffe              # double 0.37639683326574402
	.quad	0x3fd67905a441d288              # double 0.3511365989755082
	.quad	0x3fdc250c387319a6              # double 0.43976121437699545
	.quad	0x3feae911a4ca55c2              # double 0.84095079599017475
	.quad	0x3fecb7e23e68112d              # double 0.89744674862644092
	.quad	0x3fd8aa717eab29ac              # double 0.38540303583126945
	.quad	0x3fecaaf17d8dba36              # double 0.89586710474197306
	.quad	0x3fddcbb288602068              # double 0.46555770223540671
	.quad	0x3fce6aabfd5add8c              # double 0.2376303660473521
	.quad	0x3fdedc4428f1b864              # double 0.48219398497065513
	.quad	0x3fe02c613e1f1cb0              # double 0.50541746266471499
	.quad	0x3fdd06a6eb6700c8              # double 0.45353100765715881
	.quad	0x3fed6cb2981cf98b              # double 0.91951875409704209
	.quad	0x3fd83b7de4c9a0f0              # double 0.37863108961620551
	.quad	0x3fce7e7de8676c4c              # double 0.23823522422648791
	.quad	0x3fda0023d0d43d9a              # double 0.40625853913749099
	.quad	0x3fc5ee971ecf0600              # double 0.17134369854288423
	.quad	0x3fc02e2ca869959c              # double 0.12640913222564343
	.quad	0x3fdc7cc7cfdc53c8              # double 0.4451159982575601
	.quad	0x3fdea9dc1d305306              # double 0.47911742067780982
	.quad	0x3fdd8ae0452a2594              # double 0.46160132173880553
	.quad	0x3fcc39c22f1c444c              # double 0.22051265049279534
	.quad	0x3fcc388ebb00a6b8              # double 0.22047599917396155
	.quad	0x3fe417d29e311ec9              # double 0.62790804764605312
	.quad	0x3fd35b3e103c491c              # double 0.30244399629113317
	.quad	0x3feb679455cc78dc              # double 0.85639397389948213
	.quad	0x3fb11d4de734a7c8              # double 0.066853398272228692
	.quad	0x3fee88eb635f2ac4              # double 0.95421380432647895
	.quad	0x3fcbbe5f0e88488c              # double 0.21674717149341338
	.quad	0x3fe6243039aeecd2              # double 0.69191752687711472
	.quad	0x3fe9796a21de9ee7              # double 0.79607111563833832
	.quad	0x3fe54ea439bd0575              # double 0.66584979321502991
	.quad	0x3fe971532e9f8e3a              # double 0.79508360963922731
	.quad	0x3fd6605ac2fd3afa              # double 0.34963101426994536
	.quad	0x3fc0428d82212958              # double 0.12703102926236443
	.quad	0x3fd24ef773c9961a              # double 0.28606973941200098
	.quad	0x3fe936ee1cacfa6c              # double 0.78795533753129864
	.quad	0x3fe4fbe322ee95d7              # double 0.6557479555382838
	.quad	0x3feef907542dd9bc              # double 0.96789900246840643
	.quad	0x3fc583a544c0b620              # double 0.16808000428265846
	.quad	0x3fe12a2944e0e1c1              # double 0.53639663174458729
	.quad	0x3fd105ee624bc574              # double 0.26598701094834287
	.quad	0x3fe50d2297925adb              # double 0.65785340885016852
	.quad	0x3fb4431839e66c48              # double 0.079148782859577271
	.quad	0x3fc3e662799a1634              # double 0.15546828210442387
	.quad	0x3fdb4462abc7c834              # double 0.42604891562871505
	.quad	0x3feadf20b16a1a6f              # double 0.83973726893675671
	.quad	0x3fc2597b9f89067c              # double 0.14335580148513205
	.quad	0x3fef0b180945e884              # double 0.97010423480175278
	.quad	0x3fc9e349fa51e6f0              # double 0.20224880907681309
	.quad	0x3fb8dc3be0742478              # double 0.097110502527486875
	.quad	0x3fe53446e79cbef2              # double 0.66263146626258007
	.quad	0x3fbb97bead67cf78              # double 0.10778419240506121
	.quad	0x3fd63020d06ae9c4              # double 0.34668751099857453
	.quad	0x3fee0d9315a0ece9              # double 0.9391570494111906
	.quad	0x3fe7b1c1ad88ea3d              # double 0.74044879811783171
	.quad	0x3fc6fe3fe0f24944              # double 0.17963407977783608
	.quad	0x3fa143e1e6dd7ea0              # double 0.033721026832379097
	.quad	0x3fdd6ca4498ebdc6              # double 0.45975596602781044
	.quad	0x3fc5db8ffcab2d10              # double 0.17076301419579254
	.quad	0x3fecd2236c184958              # double 0.90065165626792076
	.quad	0x3fdcf3806fe7abd4              # double 0.45236216476649571
	.quad	0x3fee8062d0502f18              # double 0.95317211805511004
	.quad	0x3faf54d1d8f485b0              # double 0.061193998082909373
	.quad	0x3fd5125eaab83550              # double 0.32924620315391895
	.quad	0x3fc2f8d61d87c024              # double 0.14821888391407001
	.quad	0x3fee12dfc121bd47              # double 0.93980396004727929
	.quad	0x3fcc114519292650              # double 0.21927703598548698
	.quad	0x3feffc7b9c00ab3d              # double 0.99957066029796914
	.quad	0x3fe8c40d0b7cd953              # double 0.77393200153054875
	.quad	0x3f922fd74439f8e0              # double 0.017760623492443339
	.quad	0x3fe2eece6046f08b              # double 0.59165114215967785
	.quad	0x3fe079b4a709c49b              # double 0.51485664963378797
	.quad	0x3fdbd1a1d6c736da              # double 0.43466993307525359
	.quad	0x3fead829a2e39252              # double 0.83888704122780156
	.quad	0x3fe2454df3a247d9              # double 0.57096002182720007
	.quad	0x3fc69b1b966ddfa0              # double 0.17660851330924476
	.quad	0x3fda8a00ff8165e4              # double 0.41467308952050375
	.quad	0x3fe03aa3f49039cc              # double 0.5071582581165841
	.quad	0x3fcfcfb0444bf9b4              # double 0.24852565131000193
	.quad	0x3fb5f5e5158247f8              # double 0.085783307791899577
	.quad	0x3fc26490b5d8c78c              # double 0.14369400862920789
	.quad	0x3fde209c6ea4f52e              # double 0.47074042134393579
	.quad	0x3fdab22441a3b25e              # double 0.4171229020128403
	.quad	0x3fe5dda31a60d402              # double 0.68330531265257854
	.quad	0x3fdf15b61bab33fa              # double 0.48570015623118901
	.quad	0x3fe54dd9086ee3d8              # double 0.66575290343382232
	.quad	0x3fca88d6ab864f88              # double 0.20730098128535368
	.quad	0x3fe5a20fa2a74b7e              # double 0.67603284614811776
	.quad	0x3fd7ba25c67ee49e              # double 0.37073654541343071
	.quad	0x3fc6abd09a557b98              # double 0.17711837325893209
	.quad	0x3fb2f38f20b264d8              # double 0.074028916819219304
	.quad	0x3fc7df36ddd7f530              # double 0.18649946052748012
	.quad	0x3fea1825a92291e4              # double 0.81544764551341275
	.quad	0x3fe37c5719713d36              # double 0.60892825097281533
	.quad	0x3fef1f3674ac3de1              # double 0.97256014621410369
	.quad	0x3fe77efa2eaf009b              # double 0.73425015561953744
	.quad	0x3fed37944e746aa6              # double 0.91303458522027792
	.quad	0x3fed50dfe6d0a097              # double 0.91612238961262704
	.quad	0x3fb12154b6db75d8              # double 0.066914839403998783
	.quad	0x3f8e0355d3cd53c0              # double 0.014654799009500397
	.quad	0x3fd9e4d56a39316a              # double 0.40459189771060855
	.quad	0x3fdd431439ecd7b0              # double 0.45721917778734689
	.quad	0x3fe29f57c58a988d              # double 0.58195103246977598
	.quad	0x3fe42a074549d0ce              # double 0.63013042004470221
	.quad	0x3fe7e6492eaa02fe              # double 0.74686106790622353
	.quad	0x3fe85cb7355d1d2d              # double 0.76131782934763736
	.quad	0x3fe464f1111902c3              # double 0.63732198085207192
	.quad	0x3fe8d1ad833b0be3              # double 0.77559543257700303
	.quad	0x3fcf6ef87c354694              # double 0.24557405533646615
	.quad	0x3fc98fee003252ec              # double 0.19970488557432675
	.quad	0x3fd51049559ac50e              # double 0.32911904678174231
	.quad	0x3fd18abba65feb22              # double 0.2740925907852888
	.quad	0x3fece367ae7b0689              # double 0.90275940016017941
	.quad	0x3f719811bae57b80              # double 0.0042954151707296218
	.quad	0x3fe32ae7964e8328              # double 0.59898738247656969
	.quad	0x3fde91002678f7fc              # double 0.47760013348658936
	.quad	0x3fde6a3a3e5f6bfa              # double 0.47523361292922994
	.quad	0x3fc29a1e85f1e7a4              # double 0.14532834568291009
	.quad	0x3fee44f08ff612d3              # double 0.94591549031664568
	.quad	0x3fec9bb5b88396af              # double 0.89400754964727536
	.quad	0x3fed08f73349fee7              # double 0.90734443681136845
	.quad	0x3fe8457fb25b9ab3              # double 0.75848374209893732
	.quad	0x3febb7a7f0ee672b              # double 0.86616894776236586
	.quad	0x3fcd1dbcfdb13d1c              # double 0.22747003924676157
	.quad	0x3fb244411fc68a30              # double 0.071353979356481245
	.quad	0x3fa7e5a5f90359d0              # double 0.046673952719789136
	.quad	0x3fe4ad1812eed2b0              # double 0.64612964341957557
	.quad	0x3feba1407a40798c              # double 0.86343406560244906
	.quad	0x3fb4744c633deeb0              # double 0.079899572590813816
	.quad	0x3fc4b9670c8bbb9c              # double 0.16190803635205675
	.quad	0x3fe18aa028d53313              # double 0.54817207312734906
	.quad	0x3fe910cb202d5f75              # double 0.78329998287789115
	.quad	0x3fd15208178cba00              # double 0.27063181209351228
	.quad	0x3fe8b52b21f2ebcc              # double 0.77211529379507615
	.quad	0x3fe8165214251cb2              # double 0.75272468504490164
	.quad	0x3fe3aa94bcdbd40f              # double 0.6145728768011639
	.quad	0x3fe1dd88e1192bde              # double 0.55829280819431992
	.quad	0x3fd6b0986f5c22fc              # double 0.35452853083602043
	.quad	0x3fd6b5228685fa64              # double 0.3548055947975739
	.quad	0x3fe2b71b2df0031c              # double 0.5848518273561214
	.quad	0x3fe2f06d354ae841              # double 0.59184894951545897
	.quad	0x3fb239bd12785698              # double 0.071193520554823642
	.quad	0x3fa51dce1c4ccd00              # double 0.041243020014372078
	.quad	0x3fc2007198206274              # double 0.14063854148914212
	.quad	0x3feeadb9f4181bbc              # double 0.95870683359759523
	.quad	0x3fed0d5bcd0f3ce1              # double 0.90788068819702172
	.quad	0x3fd76f6ec4d6a886              # double 0.36617631170759812
	.quad	0x3fc90a36e62f6fe8              # double 0.19562422027126947
	.quad	0x3fe947f01b8d7f09              # double 0.79003148442640836
	.quad	0x3fec3e5835df010a              # double 0.88261042138768286
	.quad	0x3fe862dc67ce8a4a              # double 0.76206798815503274
	.quad	0x3fe1b3b1a2bfa283              # double 0.55318528925734289
	.quad	0x3fde4bc54fa378c2              # double 0.47337467934802302
	.quad	0x3fcd48132420644c              # double 0.22876204742422812
	.quad	0x3fe587dce5d477c7              # double 0.67283482445395115
	.quad	0x3fefb3f203655da2              # double 0.99071598685525353
	.quad	0x3feb3e8521c3fb96              # double 0.85138184161029318
	.quad	0x3fd468bb335b7304              # double 0.31889228835443384
	.quad	0x3f8785e539437d80              # double 0.011485853967711845
	.quad	0x3fde80956e878454              # double 0.47659812730677698
	.quad	0x3fe9299f16d6b6e7              # double 0.78633074246110091
	.quad	0x3f87631a4e8cd5c0              # double 0.011419492265853814
	.quad	0x3fb708620f300688              # double 0.089971665103826592
	.quad	0x3fce4565a268aa08              # double 0.23649282865638122
	.quad	0x3fc463888fd6718c              # double 0.15928751967738852
	.quad	0x3feae21ee0d6d199              # double 0.84010261453527157
	.quad	0x3fe829ea6f47eef3              # double 0.75511666998451543
	.quad	0x3fe2ee81eb477af9              # double 0.59161468461010636
	.quad	0x3fea414eda36c24e              # double 0.82047217006590656
	.quad	0x3fc187d59f6996e4              # double 0.13695783885776003
	.quad	0x3fd41f5c4d3a2602              # double 0.31441409627640848
	.quad	0x3fe131b8ff1874c8              # double 0.53731965850206453
	.quad	0x3fc1063a5b33276c              # double 0.13300256207576966
	.quad	0x3fe01648fad497ff              # double 0.50272034635850094
	.quad	0x3fc557a665798b44              # double 0.16673736529181771
	.quad	0x3fdf613ed0483072              # double 0.49031038608587274
	.quad	0x3fee977ceeccec1b              # double 0.95599218979566858
	.quad	0x3fe0f251a984cd97              # double 0.52957995518811429
	.quad	0x3fe9387d3fdb8d6f              # double 0.78814566108887429
	.quad	0x3fe6b44d0f98d8a6              # double 0.70950940176296196
	.quad	0x3feffee16d909bee              # double 0.99986335181608665
	.quad	0x3fc789b0164940c0              # double 0.18388939941588056
	.quad	0x3fef039d9a3ea999              # double 0.96919136167462049
	.quad	0x3fc16985382a78fc              # double 0.13603272669292454
	.quad	0x3febebbdd42e624c              # double 0.87252704087865984
	.quad	0x3fed91ab6e8654eb              # double 0.92403194033491098
	.quad	0x3fd81ca020ef1420              # double 0.37674716201974157
	.quad	0x3fd40370a5f60736              # double 0.31270996291287945
	.quad	0x3fe51729f7510bda              # double 0.6590776281740276
	.quad	0x3fd7f6b87d9894b0              # double 0.37443363442646227
	.quad	0x3fe8c0d9a5a1ba81              # double 0.77354128217650964
	.quad	0x3fd65ae67d60e830              # double 0.34929811710356073
	.quad	0x3fec76f6fbcfa895              # double 0.88952206785076504
	.quad	0x3fe46aaa60e42933              # double 0.63802069591591815
	.quad	0x3f60458431346400              # double 0.0019862729910866683
	.quad	0x3fd550ad23d5f1a2              # double 0.33304909228879798
	.quad	0x3fd660124fee2ed2              # double 0.34961374097541154
	.quad	0x3febf129d6dec582              # double 0.87318889586292436
	.quad	0x3fe8ad18a4233064              # double 0.7711299138841352
	.quad	0x3fe6550e6bb9bb3e              # double 0.69788285293711971
	.quad	0x3fc1448c73a2b588              # double 0.13490443846005129
	.quad	0x3fe3c1ce944a8acc              # double 0.61740807498093764
	.quad	0x3f909ff0ce126e60              # double 0.016235125138889805
	.quad	0x3fc8e81dcda02654              # double 0.19458363094627151
	.quad	0x3fe0ec37e9efc46f              # double 0.52883525553455779
	.quad	0x3fdd4487ae010bc0              # double 0.45730773918711165
	.quad	0x3fdd540951cdb53e              # double 0.45825417507770172
	.quad	0x3fb02c86ab647470              # double 0.063179413646553106
	.quad	0x3feb63bca16b8b0f              # double 0.85592490699159096
	.quad	0x3fe503c781973e5c              # double 0.65671134291364863
	.quad	0x3fa69561ad52a490              # double 0.044108440787860137
	.quad	0x3fd77433294a0bda              # double 0.36646727592613859
	.quad	0x3fd77b0032d8076e              # double 0.36688237157078774
	.quad	0x3fd4b9474eea566a              # double 0.32380850512104209
	.quad	0x3feb0916f27c8c34              # double 0.84485957489631013
	.quad	0x3fe1ce3c566c3761              # double 0.55642525557935241
	.quad	0x3fd9bfe36bf1f342              # double 0.40233693639293133
	.quad	0x3fe1fa38f37654de              # double 0.56179473448960571
	.quad	0x3fed9604f1f3d552              # double 0.92456290489523441
	.quad	0x3fd3ae758b6faa96              # double 0.30752314202133257
	.quad	0x3fecb5e663d1462f              # double 0.89720458503342637
	.quad	0x3fd99661cf4f2b52              # double 0.39980359311146174
	.quad	0x3fe8149c71393ff5              # double 0.7525160037421289
	.quad	0x3fee8aa000956aa4              # double 0.95442199815746109
	.quad	0x3feb81e7323f4ff3              # double 0.85960731328896001
	.quad	0x3fea5d0feb3b34e0              # double 0.82386012977226741
	.quad	0x3fd64b1605c39d24              # double 0.34833288729574208
	.quad	0x3f7af94e0cf08d00              # double 0.0065854119157251478
	.quad	0x3fe466feb9818c44              # double 0.63757263404512132
	.quad	0x3fe89660ab414c89              # double 0.76835664222962052
	.quad	0x3fec681e44c3e7b7              # double 0.88770974570001371
	.quad	0x3feadf16348f8208              # double 0.83973226800668588
	.quad	0x3fe706fcf29d2a54              # double 0.71960303674252168
	.quad	0x3fe6e22292d3c787              # double 0.71510437657546866
	.quad	0x3fd5eafb80b97e20              # double 0.34246718950996247
	.quad	0x3fe4f76cad3880f3              # double 0.65520318824931534
	.quad	0x3fd8b08a20c97976              # double 0.38577511979919821
	.quad	0x3fee6026f62d1e8b              # double 0.94923732835100461
	.quad	0x3feb56f5ca480539              # double 0.8543652487570973
	.quad	0x3fa8ace35b6ccb60              # double 0.048194031629825274
	.quad	0x3feb4122b1f875e4              # double 0.85170111427185846
	.quad	0x3fec03c00d92e898              # double 0.87545778895516246
	.quad	0x3fd0d407cacd01ce              # double 0.26294131092802508
	.quad	0x3fe5c02c9f268829              # double 0.67970877727589596
	.quad	0x3fd3d3315aa5a51c              # double 0.30976518490077054
	.quad	0x3fe95bb7a8a3b4e9              # double 0.79244597375295911
	.quad	0x3fd822d4749cdd6a              # double 0.37712584865535936
	.quad	0x3fe8d47ff8ccfb49              # double 0.77593992799652611
	.quad	0x3fe75645c3d4071d              # double 0.7292813133974253
	.quad	0x3fa800389dcca240              # double 0.046876687300315911
	.quad	0x3fb6b01945aa03a0              # double 0.088624553211060775
	.quad	0x3feb051b725e8d6f              # double 0.8443734391952783
	.quad	0x3fe40dcb889673c6              # double 0.62668396642003965
	.quad	0x3fba2f4942b085d0              # double 0.10228402975237505
	.quad	0x3fd47f1334e82688              # double 0.32025604407008545
	.quad	0x3fc9a58ea722c8f8              # double 0.2003649059384498
	.quad	0x3febe2fa4477df77              # double 0.87145722744661114
	.quad	0x3fc82ee7f6ea0474              # double 0.18893146091798807
	.quad	0x3fe7f1575b0916d8              # double 0.74821059971210513
	.quad	0x3fe1940973011fe7              # double 0.54932091199679867
	.quad	0x3fdcb8496a829e6c              # double 0.44874797250165588
	.quad	0x3fd6fa4f8fd853e2              # double 0.35902775809637266
	.quad	0x3fdf961a2c64fabe              # double 0.49353651366611107
	.quad	0x3fe4d9d69f709428              # double 0.6515915979440523
	.quad	0x3fd25b67291bbe10              # double 0.2868287946175494
	.quad	0x3fecff6e75830e05              # double 0.90618060065793371
	.quad	0x3fc9d26b590fa7bc              # double 0.20173398827256317
	.quad	0x3facea3b6553ad00              # double 0.056474548453332218
	.quad	0x3fd02c20b1c77c92              # double 0.25269334183935499
	.quad	0x3feb24c8ff752a81              # double 0.84824037450864875
	.quad	0x3fae1bea1c064b40              # double 0.058806720658273637
	.quad	0x3fe97e0b1f794607              # double 0.79663616320812103
	.quad	0x3fede351ca83fe2b              # double 0.93399896196200893
	.quad	0x3fe7954581496fc0              # double 0.7369716191419613
	.quad	0x3fd17fa07e6ec4e8              # double 0.27341472956602653
	.quad	0x3f8f292f0ee95940              # double 0.015215270655215662
	.quad	0x3fd8451b613b710c              # double 0.37921795363742272
	.quad	0x3fbc64aea88ace78              # double 0.11091128935623285
	.quad	0x3fe6c85ab152bb06              # double 0.71195730813437375
	.quad	0x3fe359d47e4d5639              # double 0.6047155825460272
	.quad	0x3fbdd176628f9970              # double 0.11647739321015194
	.quad	0x3feb8874cba9d86f              # double 0.86040725496310511
	.quad	0x3fed6a1dacc2bd57              # double 0.9192036031944707
	.quad	0x3fc284f8bcb490c0              # double 0.14468297208907721
	.quad	0x3fe33c62ce29a754              # double 0.60112133279947466
	.quad	0x3fe294313ee379a4              # double 0.58058988840985082
	.quad	0x3fbfd59bbcb716f0              # double 0.12435315472893271
	.quad	0x3feb4869a8e3e117              # double 0.85258944498403622
	.quad	0x3feef1d2365f4c9a              # double 0.96701918239195384
	.quad	0x3fe77c8365693877              # double 0.73394937331046506
	.quad	0x3fe9b006f44a390f              # double 0.8027376910484082
	.quad	0x3fa952e1c4e4a540              # double 0.049460463795478748
	.quad	0x3fc85a3651b28e48              # double 0.1902530573762411
	.quad	0x3fbf3d9fc1124198              # double 0.12203405822424995
	.quad	0x3fec5934bd1216cc              # double 0.88588940551627493
	.quad	0x3fe9c8323636c124              # double 0.80568800533913931
	.quad	0x3feb3c4d6e92b1cf              # double 0.85111114116949149
	.quad	0x3fce2a03ac49b790              # double 0.23565717613695059
	.quad	0x3fd795b2adbaeef6              # double 0.36851183858719538
	.quad	0x3fefa5bd1f007273              # double 0.98898178153065285
	.quad	0x3fe5346f20584c95              # double 0.66265064542166618
	.quad	0x3fdb40b8247eae5a              # double 0.42582515300703039
	.quad	0x3fe673395f3ff1d2              # double 0.70156544307206503
	.quad	0x3fe9f3f3690722dc              # double 0.81102915299660649
	.quad	0x3feb87100348ecc2              # double 0.86023712770056471
	.quad	0x3fea3a9d3a220ee4              # double 0.81965504984006232
	.quad	0x3fe5d086f6e4b585              # double 0.68170498105398336
	.quad	0x3fd6b42f2590f462              # double 0.35474756878449487
	.quad	0x3fe7d54e0883f3af              # double 0.74478818572207739
	.quad	0x3fc13d99e87b3758              # double 0.13469241954447386
	.quad	0x3feddccd609ce217              # double 0.93320340032284121
	.quad	0x3fe9b6c12961b4be              # double 0.80355890352588921
	.quad	0x3feee9ab6f6f6539              # double 0.96602412953067251
	.quad	0x3fe4c898eacf9620              # double 0.64948697911740183
	.quad	0x3fceb7e59cfe0258              # double 0.23998708882938291
	.quad	0x3fe860a7922d7110              # double 0.76179865408224323
	.quad	0x3f94a6fffb348580              # double 0.020168304164263073
	.quad	0x3fc6e7cd75266b98              # double 0.17894905300348962
	.quad	0x3fe73ca004220135              # double 0.72615052039330996
	.quad	0x3fdf9ecd54a77c38              # double 0.4940675093366198
	.quad	0x3fea874f8dedf905              # double 0.8290174266874436
	.quad	0x3fee0dca7dce7604              # double 0.93918346950130215
	.quad	0x3fd0130625f240d0              # double 0.25116113382047178
	.quad	0x3fe3f03a3109bc72              # double 0.62307462289562765
	.quad	0x3fdfb3e07f5302bc              # double 0.49535381731042682
	.quad	0x3fe9f34812ed1b4f              # double 0.81094745346568142
	.quad	0x3fd9b39b4df7e38e              # double 0.4015873204621635
	.quad	0x3fd31a6146ff00d4              # double 0.29848510678494944
	.quad	0x3facdb5a539608f0              # double 0.056361029342058333
	.quad	0x3fdcec9a5af0782e              # double 0.45194109803003613
	.quad	0x3fc419e895ad0e88              # double 0.15704066570662101
	.quad	0x3fe466a7b5acbf5d              # double 0.63753114207609551
	.quad	0x3fec745648b354ef              # double 0.88920129966086658
	.quad	0x3fd4c20f95193242              # double 0.32434453544991382
	.quad	0x3fa31c019514d280              # double 0.03732304520454921
	.quad	0x3fdb1b71aefcc232              # double 0.4235500534878468
	.quad	0x3fe0a6f4f994e864              # double 0.52038048502369039
	.quad	0x3fe1007c6f54a972              # double 0.53130933517722512
	.quad	0x3fe2acae32ad2d37              # double 0.58357915780781056
	.quad	0x3fe5f96db8ef8fcf              # double 0.68669782753249275
	.quad	0x3fc95d6ea12a65d4              # double 0.19816382283606393
	.quad	0x3fe6a8771c312c3c              # double 0.70806460863366949
	.quad	0x3fe83dd7e495aff7              # double 0.7575492348237266
	.quad	0x3fd3e6159a180766              # double 0.31091823623875425
	.quad	0x3fbdcc667cf64f88              # double 0.11640015173753515
	.quad	0x3fdb6510b1e36a26              # double 0.42804353114994098
	.quad	0x3fb2fe4385f70c60              # double 0.074192257124239713
	.quad	0x3fe39d5feff0ee44              # double 0.61296078551772171
	.quad	0x3fdf3d8480d66646              # double 0.48812973577296181
	.quad	0x3fe8dc711a455945              # double 0.7769094002822291
	.quad	0x3fdfde4f9e79ab04              # double 0.49794378734684153
	.quad	0x3f82cc7e656e7540              # double 0.0091791033462934601
	.quad	0x3fe6b64194b31c6e              # double 0.70974806826496972
	.quad	0x3fc335045992833c              # double 0.1500554501881427
	.quad	0x3f879390eb04d080              # double 0.011511928722576892
	.quad	0x3fd97d4e7d90ba32              # double 0.39827310812225669
	.quad	0x3feb2e2d1f8bb8da              # double 0.84938675080573067
	.quad	0x3fd357c467e3821a              # double 0.30223188538914914
	.quad	0x3fe853fb6e2820cf              # double 0.76025172724714618
	.quad	0x3fe9a17309263d46              # double 0.80095817362772759
	.quad	0x3feca9cf6cb3ae3f              # double 0.89572879057727295
	.quad	0x3fc3b4fde40b86fc              # double 0.15396093020449786
	.quad	0x3fc4393703ef30c8              # double 0.15799606029611923
	.quad	0x3f92ec65e1740f40              # double 0.018479911695080675
	.quad	0x3fe99abc3fb41eb6              # double 0.80013859216793182
	.quad	0x3fe356a4313abe0b              # double 0.60432633986596451
	.quad	0x3fda113d3687eb6c              # double 0.40730219197546691
	.quad	0x3fbb94de9a9e3020              # double 0.1077403190121804
	.quad	0x3fe3310544fb9a73              # double 0.59973395798881624
	.quad	0x3fe39b97ebb51454              # double 0.61274333988752483
	.quad	0x3fda3c036a91e2ba              # double 0.40991292388165912
	.quad	0x3fe9c3209ee38b82              # double 0.80506926568010351
	.quad	0x3fc96cde3f69051c              # double 0.19863489242747157
	.quad	0x3fd00d213989c4a4              # double 0.25080137843094463
	.quad	0x3fdcdf71fb89a1d4              # double 0.45113801540585752
	.quad	0x3fd816df7d12f04e              # double 0.37639605726486003
	.quad	0x3fe14750a4ceec32              # double 0.53995544613952107
	.quad	0x3fef8f254e5b5781              # double 0.9862238436132743
	.quad	0x3feec9accf318060              # double 0.96211853473142738
	.quad	0x3fd70d244dfef54e              # double 0.36017711273946851
	.quad	0x3fcc196cfcde5cac              # double 0.21952593180751501
	.quad	0x3feaef1808b8b1dc              # double 0.84168626502428933
	.quad	0x3fea926849d6776e              # double 0.83037199422299834
	.quad	0x3febb41c72e5a248              # double 0.8657362217027833
	.quad	0x3fde350169fd76ae              # double 0.47198520041079461
	.quad	0x3fd2093d109e0788              # double 0.28181387541564407
	.quad	0x3fe9fb89ddb6b8ec              # double 0.81195538810223188
	.quad	0x3fe49f751c76f79a              # double 0.6444650226546742
	.quad	0x3fe4f9d8f567b835              # double 0.65549896174139255
	.quad	0x3fdfa9e86baeb292              # double 0.494745354803663
	.quad	0x3fd2a1b0a569addc              # double 0.29111877587885515
	.quad	0x3fc9b8c01b56855c              # double 0.20095063528882917
	.quad	0x3fb5078b990d3c80              # double 0.082146382204188128
	.quad	0x3fe4ba7b4923f9bc              # double 0.64776386533031127
	.quad	0x3fed8c83fb169ac3              # double 0.92340277710612673
	.quad	0x3fdf502a49d4d61a              # double 0.48926789484116429
	.quad	0x3fe8120f979afe07              # double 0.75220470056950794
	.quad	0x3fe7e8d110211b9c              # double 0.74717000150927815
	.quad	0x3fcecea79a5fa4f0              # double 0.24068160093091917
	.quad	0x3feb776ee5dbd3b0              # double 0.85832924742009276
	.quad	0x3fbb26f0ec790bc0              # double 0.1060629441572436
	.quad	0x3feb602fbb71c46b              # double 0.8554915104888442
	.quad	0x3fd55e4d09dd58c0              # double 0.33388067210524852
	.quad	0x3fe1d64b62668bda              # double 0.55740899294721236
	.quad	0x3fe132e72bb5c3fe              # double 0.5374637464248051
	.quad	0x3fc6051d66887f98              # double 0.17203109270576245
	.quad	0x3fef13938bf84072              # double 0.97113969171370074
	.quad	0x3fc9fb780922dd58              # double 0.20298672147849106
	.quad	0x3fea32fd84727a0e              # double 0.81872440212811326
	.quad	0x3fe1534f10972455              # double 0.54141953697502265
	.quad	0x3fe82ebaed08a723              # double 0.75570436759628412
	.quad	0x3fdfac9e7580ab3a              # double 0.49491082644333384
	.quad	0x3fd2cf37c4d21272              # double 0.29389757366906288
	.quad	0x3fe54fd0f750c5b9              # double 0.66599319747745434
	.quad	0x3fdacc2bd2dba146              # double 0.41871162025065123
	.quad	0x3fbff69d94b6be28              # double 0.1248568046637436
	.quad	0x3fcc68a721fcf2bc              # double 0.22194375190328752
	.quad	0x3fe8ea7832ca16be              # double 0.77862176818663165
	.quad	0x3fefdd1c5847e47a              # double 0.9957410549387895
	.quad	0x3fe862925bb449e1              # double 0.76203267966257837
	.quad	0x3fdabe4d68641aac              # double 0.41786513513981549
	.quad	0x3fe7b2c619ec4461              # double 0.74057297766752239
	.quad	0x3fd34fbca1f44974              # double 0.30174175086826627
	.quad	0x3fe60cbf65c914c8              # double 0.68905610923743499
	.quad	0x3fefd07f1f7751a5              # double 0.99420124192925085
	.quad	0x3fe932174dd003a8              # double 0.78736462781681826
	.quad	0x3fdab13632734fba              # double 0.41706614424515076
	.quad	0x3fee80e74332ae31              # double 0.95323527454951862
	.quad	0x3fecbcc720b047e5              # double 0.8980441702317391
	.quad	0x3feeffde1fa78584              # double 0.96873384649750038
	.quad	0x3fde7e03217bb4ec              # double 0.47644117612692471
	.quad	0x3feb7978f7ac6ec3              # double 0.85857818959944898
	.quad	0x3fe32b3f64482d74              # double 0.59902925096814252
	.quad	0x3fe33f0c8f924b22              # double 0.60144641915607999
	.quad	0x3fee5871129ca150              # double 0.9482961047661238
	.quad	0x3fbd6fd0987031e0              # double 0.11498740884434921
	.quad	0x3fb915290b5bb5b0              # double 0.097979131005294872
	.quad	0x3fe294a95b61b227              # double 0.58064716194127619
	.quad	0x3fc6ff19fc13da90              # double 0.17966008003687195
	.quad	0x3fe09237e60f9ca7              # double 0.51784892019067719
	.quad	0x3fe0fcd77fa3ec3d              # double 0.53086447648764301
	.quad	0x3f895ce25f131c80              # double 0.012384193922470255
	.quad	0x3fd659bea77bb8bc              # double 0.34922758441724588
	.quad	0x3fed07517cd70ea8              # double 0.9071433485300604
	.quad	0x3feef20897b4854b              # double 0.96704511289514394
	.quad	0x3fe9fb352778ebb2              # double 0.81191499432985936
	.quad	0x3feaa26fe17ae951              # double 0.8323287395390172
	.quad	0x3febdb0680ac6b8a              # double 0.87048649913354947
	.quad	0x3f80cfcb16477240              # double 0.0082088342832601357
	.quad	0x3fe4591971b96b78              # double 0.63587639056946355
	.quad	0x3fe8f1752f6ed2a1              # double 0.77947482361067355
	.quad	0x3fd060f13e095fbe              # double 0.25591689165366549
	.quad	0x3fd62d98c0e44fca              # double 0.3465330012998008
	.quad	0x3fe306a9c893885d              # double 0.59456338095720762
	.quad	0x3feaed669af9978d              # double 0.84147959011601048
	.quad	0x3feedd8cc7a461d3              # double 0.96454466812707051
	.quad	0x3fc777d2a4083ebc              # double 0.18334420213112945
	.quad	0x3fe2d957172ea936              # double 0.58903078582560542
	.quad	0x3fe00947dd0b2cb0              # double 0.50113289997661603
	.quad	0x3fe7ef99fb321922              # double 0.74799822866114973
	.quad	0x3fe8d194ad892c73              # double 0.7755835904475944
	.quad	0x3fe2a0608f288bee              # double 0.58207729302045919
	.quad	0x3feb252d6b15599b              # double 0.84828825869299196
	.quad	0x3fa495150a5c74c0              # double 0.040199906840123756
	.quad	0x3fd1e5eb50611508              # double 0.27965815400632765
	.quad	0x3fd99eaca3ba739e              # double 0.40030971516699221
	.quad	0x3fd86308c7f2d4a6              # double 0.38104457403398795
	.quad	0x3fda1c2e4f764770              # double 0.40797002563441875
	.quad	0x3fdbba73542732aa              # double 0.4332550355727941
	.quad	0x3fdf3d6b53cd675e              # double 0.48812373336624215
	.quad	0x3fee8400eb0645eb              # double 0.953613719017253
	.quad	0x3fe348e10ee4bef2              # double 0.60264637860197312
	.quad	0x3f966b5aa14d8360              # double 0.021893898100987186
	.quad	0x3fe1eedcc3c8d3a6              # double 0.56040800322681572
	.quad	0x3fe4ff4c3c8f4211              # double 0.65616428211257205
	.quad	0x3fe7c14c212e5ad9              # double 0.74234587174108946
	.quad	0x3fb53a05346d6820              # double 0.082916569995547196
	.quad	0x3fe4c68aca0efcb9              # double 0.64923610176619839
	.quad	0x3fef7f73a59b8ffc              # double 0.98430807442900869
	.quad	0x3fddeaf008d48ece              # double 0.46746445524534586
	.quad	0x3fe02ca62c115691              # double 0.50545033080079993
	.quad	0x3fd17256133b81de              # double 0.27260352972191793
	.quad	0x3fed5a8caadc2c18              # double 0.9173034035787877
	.quad	0x3fd1ea41a4d3feb2              # double 0.2799228772782768
	.quad	0x3fe47493ec49deb5              # double 0.6392306914339857
	.quad	0x3fc0b0976c090cfc              # double 0.13038914466060436
	.quad	0x3fe3b375c09f0f88              # double 0.6156567346701971
	.quad	0x3fcb36dbc93c6260              # double 0.21261164976091873
	.quad	0x3fd7ac5d0c04565c              # double 0.3698952309945065
	.quad	0x3f871051e3cec7c0              # double 0.01126159645523106
	.quad	0x3fe1c1d486a3faa5              # double 0.5549109105775939
	.quad	0x3fd6f34a83d6207c              # double 0.35859930872584989
	.quad	0x3fc951ab1549daec              # double 0.19780481852986698
	.quad	0x3fed923e50cea958              # double 0.92410198004408084
	.quad	0x3feae8eb6927b14c              # double 0.84093256509871983
	.quad	0x3fc8811151243c3c              # double 0.19143883192052324
	.quad	0x3fac39b0d18e6430              # double 0.055127645092575839
	.quad	0x3fde62c88c517bac              # double 0.47477925970991453
	.quad	0x3fe68c275d7ad7bf              # double 0.7046086145189675
	.quad	0x3fe4fb5c0035e9f1              # double 0.65568351784832946
	.quad	0x3fd32332e9d9a122              # double 0.2990233691875962
	.quad	0x3fe25cf537280a3c              # double 0.57384739659057216
	.quad	0x3fe87eb25dca60b4              # double 0.76546591108765094
	.quad	0x3fab1776088a20b0              # double 0.052913368742396272
	.quad	0x3fdd4bf325537dfe              # double 0.45776060719614964
	.quad	0x3fda0651cd00fb08              # double 0.40663571376710239
	.quad	0x3feba0ac995590ca              # double 0.86336355159849032
	.quad	0x3fd7f76cc5df3aa2              # double 0.37447661708294266
	.quad	0x3fd51b0398e24c40              # double 0.32977380685878543
	.quad	0x3fe321a61e663f66              # double 0.59785753190406576
	.quad	0x3fd566ba4f85d1e4              # double 0.33439500585453019
	.quad	0x3fe1c3ec096878ed              # double 0.55516626203077879
	.quad	0x3fd5bd4830cf1e9c              # double 0.33967785612592549
	.quad	0x3fdef98358f88c98              # double 0.48397906960071557
	.quad	0x3fdc84a9c6eaf754              # double 0.44559711862153972
	.quad	0x3fe448d01db50414              # double 0.63388829996267981
	.quad	0x3fe9918653c943b0              # double 0.79901424755563788
	.quad	0x3feaae522fadc4e5              # double 0.83377942383063142
	.quad	0x3fdcacc5285e9474              # double 0.44804505293206565
	.quad	0x3fc2ddb2abb0f300              # double 0.14739068396911392
	.quad	0x3fcdc299c98fe24c              # double 0.23250124303719344
	.quad	0x3fe83d5dc9c52533              # double 0.7574910107443088
	.quad	0x3f914d8ad1715f80              # double 0.016897362740877053
	.quad	0x3fbe29c3e62f2f00              # double 0.11782478685125497
	.quad	0x3fda53089a696a20              # double 0.4113179691245552
	.quad	0x3fd4d08885fc39be              # double 0.32522786221025146
	.quad	0x3fe0cdbd02208c09              # double 0.52511454024750137
	.quad	0x3fe54feac6d8e61b              # double 0.66600550496440591
	.quad	0x3fe073ee3f70cd88              # double 0.51415169134854555
	.quad	0x3fc5ca59adafb500              # double 0.17023774128703195
	.quad	0x3fe2985c22e24623              # double 0.58109862149484959
	.quad	0x3fa5952020aa1160              # double 0.042153362262100869
	.quad	0x3fda723abdbbd242              # double 0.41322201279334447
	.quad	0x3fb9e5c8124f1b70              # double 0.10116243788716672
	.quad	0x3fe01f0da209c450              # double 0.50379068039013397
	.quad	0x3fe0b1d7f22d1247              # double 0.52170941638957735
	.quad	0x3fd764e41ecf036a              # double 0.36553290375382252
	.quad	0x3fe621b86fc77077              # double 0.69161626655433295
	.quad	0x3f835cfc614cab40              # double 0.009454700202316979
	.quad	0x3fda3c949c4feb76              # double 0.4099475409017751
	.quad	0x3fa7a6474bd55ff0              # double 0.046190479285257768
	.quad	0x3f8cefcfb19ba480              # double 0.014129278762498254
	.quad	0x3f9895ce383aa360              # double 0.024008962804745848
	.quad	0x3fe6e245571c968d              # double 0.71512095464704972
	.quad	0x3fdf553286ceb6f6              # double 0.48957503475945374
	.quad	0x3fdade5bbeaa336a              # double 0.41982167834867445
	.quad	0x3fe198e673cd2034              # double 0.54991457574306546
	.quad	0x3fba5361632ef0f0              # double 0.10283478423565717
	.quad	0x3fa3066ff2ef4610              # double 0.037158487706289489
	.quad	0x3fe27acefc5578b9              # double 0.57749127658805499
	.quad	0x3fe23fe246dfb68b              # double 0.57029832689814108
	.quad	0x3fcc0a1de2cffe70              # double 0.2190587384684366
	.quad	0x3fe66161d6d5264a              # double 0.69938747367377485
	.quad	0x3fe4dcd578c29ce0              # double 0.65195725999810961
	.quad	0x3fe0fa535852bec9              # double 0.53055732012395496
	.quad	0x3faf279af4d3db90              # double 0.060849039446046693
	.quad	0x3feb6409908c4c8c              # double 0.85596159202613497
	.quad	0x3fa45feb2b8fa3e0              # double 0.039794301097408669
	.quad	0x3fea66df22dd8da7              # double 0.82505757150322701
	.quad	0x3fe04dd6ae98826d              # double 0.50950178242426392
	.quad	0x3fe03b68edd31995              # double 0.50725218248480763
	.quad	0x3fe6d82ded4cff7f              # double 0.71388908717925392
	.quad	0x3fe3f76cfd69405d              # double 0.62395333761561356
	.quad	0x3fe830f3d54cf61c              # double 0.75597564373282777
	.quad	0x3fee9fc27c98dc2f              # double 0.95700191817639346
	.quad	0x3fe0cbaff976d2cb              # double 0.5248641846033818
	.quad	0x3fdffe1ccd112560              # double 0.49988479639121941
	.quad	0x3fdf26415327b234              # double 0.48670991058932889
	.quad	0x3fd762b0a56a20e8              # double 0.36539856103674007
	.quad	0x3fda296dd8ae7d64              # double 0.40877863083183841
	.quad	0x3fd75cffd8f78c3a              # double 0.36505123317892052
	.quad	0x3fe2ab5ce2e2fc65              # double 0.58341831506539832
	.quad	0x3feb279558a4a279              # double 0.8485819560347202
	.quad	0x3fc85b29d96e8e20              # double 0.19028208843984462
	.quad	0x3fec1eb2feef3c41              # double 0.87874746124169445
	.quad	0x3fe98de02bd352fa              # double 0.79856880721726431
	.quad	0x3fe12f719dd8b482              # double 0.53704148129840257
	.quad	0x3febae90c5fba02d              # double 0.86505926769769348
	.quad	0x3fd14acc164c0f7e              # double 0.27019025971843991
	.quad	0x3fe7db702a907ecb              # double 0.74553688348165659
	.quad	0x3fe009b5bf4f544d              # double 0.50118529668055489
	.quad	0x3faabc1815bc7710              # double 0.052216293958038063
	.quad	0x3fd4e8ec694ce3e0              # double 0.32671652110326299
	.quad	0x3fe836a5f7e9907f              # double 0.75667093677886033
	.quad	0x3fdb3f1230d0e4ae              # double 0.42572455184160674
	.quad	0x3fc9805e398336d0              # double 0.19922998245458823
	.quad	0x3fe9daf25fdb7028              # double 0.80797690126519672
	.quad	0x3fc73b33d31002e4              # double 0.18149421506679808
	.quad	0x3fbd2b7b44bfb5d8              # double 0.11394472530783817
	.quad	0x3fe0536e28e18e0b              # double 0.51018436417183588
	.quad	0x3fe624dbf65ab9b4              # double 0.69199941745846738
	.quad	0x3fdfa74d0926a43c              # double 0.4945862378468211
	.quad	0x3f8003e51ef99300              # double 0.0078199291303433505
	.quad	0x3feb06701307348a              # double 0.84453586307940154
	.quad	0x3fe6350aba3daaee              # double 0.69397484183477132
	.quad	0x3fcc3e2d979f5f94              # double 0.22064752486653261
	.quad	0x3fe6be2d3b9db4f3              # double 0.71071492809065118
	.quad	0x3fd97769fb9b2ba2              # double 0.39791345187102867
	.quad	0x3f8bf11fc5350fc0              # double 0.013643501477993314
	.quad	0x3fbb117103cd0390              # double 0.10573488562387312
	.quad	0x3fe54e392137bf0c              # double 0.66579872596591505
	.quad	0x3f837297dcd3b680              # double 0.00949591295872243
	.quad	0x3fee8b9582923f2c              # double 0.95453906538202692
	.quad	0x3fdac20210c30da4              # double 0.41809131276041911
	.quad	0x3fe17ba7b7b3ac6e              # double 0.54634462241427939
	.quad	0x3fc23b93e8666148              # double 0.14244316909458576
	.quad	0x3fe7ff49074f1006              # double 0.74991275241382094
	.quad	0x3febf6f3b87ca40b              # double 0.87389551193803194
	.quad	0x3fe58bf050d5b8cc              # double 0.6733323649221119
	.quad	0x3fec188e771e0722              # double 0.87799762024971906
	.quad	0x3fee5664057f29f6              # double 0.94804574082928528
	.quad	0x3fceb99f59a2dc5c              # double 0.24003974797026018
	.quad	0x3fe0c3aa1e355849              # double 0.52388482952188398
	.quad	0x3fdac35b3663e8ec              # double 0.41817360221433719
	.quad	0x3fe189346ca2cde9              # double 0.54799863069496013
	.quad	0x3fe35b77b9e40d5d              # double 0.60491548830797692
	.quad	0x3fe439ed6fa6e550              # double 0.63207122618693212
	.quad	0x3f63c54088efce00              # double 0.0024133930633014611
	.quad	0x3fefce93037d4cdf              # double 0.99396658593687081
	.quad	0x3fe243da3744c706              # double 0.57078276438389319
	.quad	0x3fca2b17dfa23564              # double 0.20444010181055738
	.quad	0x3fbe203b0947bf30              # double 0.1176793000847709
	.quad	0x3fe6c487abc02469              # double 0.71149047417669664
	.quad	0x3fd8c533abbae3d2              # double 0.38703624506484602
	.quad	0x3f8905c7c96f1600              # double 0.012218056521201781
	.quad	0x3fde1d8a64271e78              # double 0.47055301456973764
	.quad	0x3fd7314140b9f504              # double 0.36238128014504434
	.quad	0x3fd235e14b4e8a98              # double 0.28453857759647283
	.quad	0x3fe5c3c83459d406              # double 0.68014917588027468
	.quad	0x3fe75b05c91ce24f              # double 0.7298611572251249
	.quad	0x3fc9c83dc2be02ec              # double 0.20142337807558108
	.quad	0x3fd18c07d93b4ac4              # double 0.27417179311775564
	.quad	0x3fd1b4bfdab58710              # double 0.27665706976232318
	.quad	0x3fe003ae957224b9              # double 0.50044945896765747
	.quad	0x3fea0497147d6ced              # double 0.81306032182638222
	.quad	0x3fe7af41b974457b              # double 0.74014364453812165
	.quad	0x3fdf207de871e536              # double 0.48635814380357389
	.quad	0x3f95953aa1c119c0              # double 0.021077076075266765
	.quad	0x3fd7405de52a37a6              # double 0.36330363635431195
	.quad	0x3fe4c7aff6df7f3d              # double 0.64937589852704714
	.quad	0x3f86afc17c161900              # double 0.011077415084184583
	.quad	0x3fea76c1d3728c5b              # double 0.826996720298108
	.quad	0x3fe7e4a1285939b8              # double 0.74665887718747737
	.quad	0x3fd36bbce7b64ca2              # double 0.30345080021033699
	.quad	0x3fe2c83a651bcd0d              # double 0.5869419073846146
	.quad	0x3fece03399eeab89              # double 0.90236835541632943
	.quad	0x3fefb937af8d3e90              # double 0.99135956084679044
	.quad	0x3fe210b45457ba39              # double 0.56453911278897018
	.quad	0x3fd0e9b13a2d8e18              # double 0.26426344567718862
	.quad	0x3f9dcfd8e7a29500              # double 0.029113186967738791
	.quad	0x3fbe477f537c7670              # double 0.11827846325146552
	.quad	0x3fcf8eb07ce69698              # double 0.24654203509014816
	.quad	0x3fef47458eb430d1              # double 0.97745015975808702
	.quad	0x3feb6b5e8e533c49              # double 0.85685661123160017
	.quad	0x3fe4acb1440ca66f              # double 0.64608062067891392
	.quad	0x3fd34f303134195e              # double 0.30170826725988842
	.quad	0x3fd7f7f78ce384a4              # double 0.37450970419565466
	.quad	0x3fc216358ec29558              # double 0.14130277128894408
	.quad	0x3fe12d39e040f7f4              # double 0.53677076148573954
	.quad	0x3feb256d3318e9ae              # double 0.84831867198891131
	.quad	0x3fe64b8c5e2a1713              # double 0.69672220603453849
	.quad	0x3fe873e34b920401              # double 0.76414646873320191
	.quad	0x3fea865c61444c85              # double 0.8289014720670741
	.quad	0x3fc43b8d9c141b30              # double 0.15806741829893545
	.quad	0x3fe4afe0f57ec52b              # double 0.64646957348137357
	.quad	0x3fd402acc498c73a              # double 0.31266326140313405
	.quad	0x3fea1d9874839f2e              # double 0.81611273533505879
	.quad	0x3feda9f171067be3              # double 0.92699501109370563
	.quad	0x3fa9b29488b35db0              # double 0.050190583884325846
	.quad	0x3feafd578b7ea733              # double 0.84342553372446216
	.quad	0x3fddb727d3dc9d68              # double 0.46430392922999042
	.quad	0x3fe4c90ea1624c8a              # double 0.64954310913380309
	.quad	0x3fea880ef86ed93b              # double 0.82910870096274125
	.quad	0x3fe37aa559608d8b              # double 0.60872142273403662
	.quad	0x3fd83b5e4be0770c              # double 0.37862355623097765
	.quad	0x3fda0071a4eaba50              # double 0.40627709489027541
	.quad	0x3fe682de49495a03              # double 0.70347513498092018
	.quad	0x3fd6608769602592              # double 0.34964165964682892
	.quad	0x3fe07f07e1a9df80              # double 0.51550668787875509
	.quad	0x3fe5be8e91fd8d03              # double 0.67951134217983655
	.quad	0x3fcc16257941e9ac              # double 0.21942585392737379
	.quad	0x3fd147f0106c7dc6              # double 0.27001573184858463
	.quad	0x3fc59126c126f9ec              # double 0.16849216872465378
	.quad	0x3fd96b89e3e46772              # double 0.39718863730524057
	.quad	0x3fdcfce4b75a2d7c              # double 0.45293538957113078
	.quad	0x3fdf1e15642da8ea              # double 0.48621115477602805
	.quad	0x3fdf875f6789d540              # double 0.4926374922864234
	.quad	0x3fee0af36e82adb7              # double 0.93883678039622154
	.quad	0x3fea0b0d44300f0c              # double 0.81384909933010041
	.quad	0x3fdf4f7dc25b1a6e              # double 0.48922676067414883
	.quad	0x3fc6afb1b7302e20              # double 0.17723676151978029
	.quad	0x3fe617ea7435a385              # double 0.6904194135396301
	.quad	0x3fe5dcf7d75b85d6              # double 0.68322364866269925
	.quad	0x3f8f43a7de9c59c0              # double 0.015265761834183489
	.quad	0x3fe4695fbb5142f3              # double 0.63786303124842758
	.quad	0x3fd8381ab18948a0              # double 0.37842433297658751
	.quad	0x3fc17099c4c559f4              # double 0.13624879939989365
	.quad	0x3fd0634eb73a08a8              # double 0.25606124776107686
	.quad	0x3fb6886776e5fba0              # double 0.088018862274096055
	.quad	0x3fe14fe62798043b              # double 0.54100330098311333
	.quad	0x3fe2ecd44a6e7ed6              # double 0.59140982186724034
	.quad	0x3fed668e5f554f61              # double 0.9187690603234665
	.quad	0x3fc591b8f6fee618              # double 0.16850959835373724
	.quad	0x3fd149d64acfc73a              # double 0.27013165765594105
	.quad	0x3fe16e2a170a6239              # double 0.5446978044520342
	.quad	0x3fb1bb0479391390              # double 0.069259910197685182
	.quad	0x3fa5d73e3de8ba40              # double 0.04265779977537365
	.quad	0x3fe95838e7532d2f              # double 0.79201932125707752
	.quad	0x3fef7869ccbfb230              # double 0.98344888677599407
	.quad	0x3fea8ff83e22949a              # double 0.8300744260383397
	.quad	0x3fe682046c8fc119              # double 0.70337125018525903
	.quad	0x3fe17bb443444583              # double 0.54635060441994232
	.quad	0x3fea8e7c19fc6173              # double 0.82989316058505691
	.quad	0x3fc77e9180816f8c              # double 0.18355006003082186
	.quad	0x3fdc576aa054ca04              # double 0.44283548028320774
	.quad	0x3fd626b9eab20b2e              # double 0.34611366195183535
	.quad	0x3fd31ee9f58b3c36              # double 0.29876183489699615
	.quad	0x3fceb8fef70be4f4              # double 0.24002062857451956
	.quad	0x3fd19a642b48ba9c              # double 0.27504829623186722
	.quad	0x3fe9d869e0d9750a              # double 0.80766767421633401
	.quad	0x3fae8cf24dedd5c0              # double 0.059669086468527421
	.quad	0x3feca929c89604fe              # double 0.8956498067565517
	.quad	0x3fe9829bb7c73ab5              # double 0.79719339269816791
	.quad	0x3fd7c0b291d9100c              # double 0.37113632433852284
	.quad	0x3fce4ddce56e33fc              # double 0.23675118639621917
	.quad	0x3fa4f46342b21b30              # double 0.040927030459945946
	.quad	0x3fd00971e3e8e1e6              # double 0.25057646996313421
	.quad	0x3fc9210de9e613f0              # double 0.19632123871647833
	.quad	0x3fe75bd81d0456db              # double 0.72996144931195361
	.quad	0x3f91931225a34960              # double 0.017162593409758897
	.quad	0x3fedccf81ba1f106              # double 0.93127065083493288
	.quad	0x3fbaa96529b03248              # double 0.10414726512699091
	.quad	0x3fe3f55199e98a25              # double 0.62369613705624671
	.quad	0x3fe08a74ecd87028              # double 0.5169014573944013
	.quad	0x3fcaf0a09e53e820              # double 0.21046836596343699
	.quad	0x3fe0df5401c656fe              # double 0.52726173731454629
	.quad	0x3fc039f8bb92969c              # double 0.12676915320223692
	.quad	0x3fe154d1c4e48fba              # double 0.54160393195751699
	.quad	0x3fe87aa45d69fc4a              # double 0.76497095341609023
	.quad	0x3fe0008d3c2ca776              # double 0.50006734612291726
	.quad	0x3fb1064015ab0d48              # double 0.06650162247665492
	.quad	0x3fe9168e7b916249              # double 0.78400348791462549
	.quad	0x3fe4d6154c2859ee              # double 0.65113320230994787
	.quad	0x3fe66049d2b6306a              # double 0.69925395159363046
	.quad	0x3fcd668b37302e7c              # double 0.22969188875901014
	.quad	0x3fe88ed58e671739              # double 0.76743581593539212
	.quad	0x3fec6070953f84b4              # double 0.88677243375800296
	.quad	0x3fdd375fe821f4d2              # double 0.45650479954913437
	.quad	0x3fd205ae834e403c              # double 0.28159678290194612
	.quad	0x3fd49916cd3ce6ee              # double 0.32184381525767847
	.quad	0x3fd166003018952a              # double 0.27185063073041482
	.quad	0x3fcb5bf36b0d3f0c              # double 0.21374361731658842
	.quad	0x3fbd2ccd364e72a8              # double 0.11396486831513164
	.quad	0x3fdd3342d3dfa402              # double 0.45625372591763391
	.quad	0x3fd9e91a394d4e04              # double 0.40485244365592643
	.quad	0x3fdc7ee5d0430ce2              # double 0.44524522150113743
	.quad	0x3fe1df333f673bfe              # double 0.55849611648034148
	.quad	0x3fc53fd3d61427b8              # double 0.16601036027014771
	.quad	0x3f9448980a4b9ca0              # double 0.019808173778895211
	.quad	0x3fe75993fb7f18c0              # double 0.72968482132343837
	.quad	0x3fb9cc5972c0c9e8              # double 0.10077437450016868
	.quad	0x3fedf0a8d2def040              # double 0.93562737642015036
	.quad	0x3fe7061353908c97              # double 0.71949163743228695
	.quad	0x3fdcf2d7e64c49e8              # double 0.45232198228873566
	.quad	0x3fe8900cc5722c21              # double 0.76758421481770622
	.quad	0x3fde5468b502def4              # double 0.47390191723705688
	.quad	0x3fedcd1bc6ba65c6              # double 0.93128765882573172
	.quad	0x3feb955fd1355a2e              # double 0.8619841657735543
	.quad	0x3fd139c2b387b620              # double 0.26915042431105185
	.quad	0x3faaaf2ff4977bd0              # double 0.052117823226346283
	.quad	0x3fe10f9fc6c7e87a              # double 0.53315724205391679
	.quad	0x3fec58a1df36a5c0              # double 0.88581937404995159
	.quad	0x3fdef15603d174ee              # double 0.4834799802100197
	.quad	0x3fc687505eecbba0              # double 0.17600445399281472
	.quad	0x3fd9525052a0cbd4              # double 0.39564903325225242
	.quad	0x3fec5829b9ac8ce8              # double 0.88576208366830844
	.quad	0x3fd8c9607ad37730              # double 0.38729106898050514
	.quad	0x3fe99feec82da2e1              # double 0.80077303979222958
	.quad	0x3fd51e924f344ab2              # double 0.3299909375647686
	.quad	0x3fe5fe42d1146f12              # double 0.68728772006895356
	.quad	0x3febdb617de72ae9              # double 0.87052988615445515
	.quad	0x3fd48473c9ae9b4a              # double 0.32058424659264928
	.quad	0x3fcd5682c20a1fe0              # double 0.22920259928309772
	.quad	0x3fc3386b8a74e650              # double 0.15015930424287882
	.quad	0x3fd445cd4cc3934a              # double 0.31676037308198046
	.quad	0x3fea3f85fee7b6e0              # double 0.82025432382735274
	.quad	0x3feed279c110d87b              # double 0.96319282253422444
	.quad	0x3fe44d814987f591              # double 0.63446106301823779
	.quad	0x3fe471d9fd65c616              # double 0.63889789096555449
	.quad	0x3fe98fff97b0fd04              # double 0.798827930710019
	.quad	0x3fe0ecb3cbdd5d63              # double 0.5288943273289245
	.quad	0x3fd78a8f63aaff3a              # double 0.3678320382423298
	.quad	0x3fd8faad6d7854c4              # double 0.39030013742860725
	.quad	0x3fea986b6ad5f47c              # double 0.83110590807304118
	.quad	0x3fd1a8aca67e31a2              # double 0.27592006930424351
	.quad	0x3fe57ef594e4ca88              # double 0.67174796181491647
	.quad	0x3f88a7747a6b9680              # double 0.012038145051927573
	.quad	0x3fef11d902433059              # double 0.97092867318998365
	.quad	0x3fa6ee77016ad8d0              # double 0.044788092539805313
	.quad	0x3fde597889e9a4ea              # double 0.47421086757692754
	.quad	0x3fd94fd81c5853a4              # double 0.39549830215519877
	.quad	0x3fe0e7b4407c768b              # double 0.52828419299085405
	.quad	0x3fe4189a3cadce52              # double 0.62800323344567688
	.quad	0x3fe08ba34825a84e              # double 0.51704563227873179
	.quad	0x3feada327478c805              # double 0.83913538692854728
	.quad	0x3fd82745dd3b8ff6              # double 0.37739702801468356
	.quad	0x3fd8743d4d888434              # double 0.38209469386680728
	.quad	0x3fef0218d6291f8d              # double 0.96900598362206979
	.quad	0x3fe3a5a7f27bebfa              # double 0.61397168502969568
	.quad	0x3fccb686057a4d88              # double 0.22432017581432384
	.quad	0x3fd23ba8ed4ff9ca              # double 0.28489134955443929
	.quad	0x3fd219d01dac2812              # double 0.28282549760535958
	.quad	0x3fee115f9739b55c              # double 0.93962077652183095
	.quad	0x3fce690309123a78              # double 0.23757970755510249
	.quad	0x3fe39edd3bb11a49              # double 0.61314260157161826
	.quad	0x3fe90e946c0aacd8              # double 0.78302975751776227
	.quad	0x3fe86d3e0f15b6ed              # double 0.76333525606398001
	.quad	0x3fef66a1701e0a6e              # double 0.98127815149230257
	.quad	0x3fac3db54060c7a0              # double 0.055158294781349371
	.quad	0x3fe60178f98c7481              # double 0.68767975559207184
	.quad	0x3fee84736dafa661              # double 0.95366832182953598
	.quad	0x3f802844ff22f500              # double 0.0078893080102440116
	.quad	0x3fd09427b3dc28f0              # double 0.25904266895726291
	.quad	0x3fc44d48213b919c              # double 0.15860845205965013
	.quad	0x3fed2843f2bd40d9              # double 0.91116521272672479
	.quad	0x3fe07334cca88c4c              # double 0.51406326267568536
	.quad	0x3fda8b5bc8adb48a              # double 0.41475576970589911
	.quad	0x3fd7cde2c6e7e1e6              # double 0.37194127487558004
	.quad	0x3fec362642a34a81              # double 0.88161004080969019
	.quad	0x3f8424e5f4b12c80              # double 0.0098360028552149092
	.quad	0x3fed85b8d33e96b8              # double 0.92257348307312892
	.quad	0x3feed9faa40cce5c              # double 0.96410877266903183
	.quad	0x3fc6e8bd76dcd014              # double 0.17897766403041315
	.quad	0x3fbb91c101090a80              # double 0.10769277835155755
	.quad	0x3fe7db1552cd9687              # double 0.74549356625057406
	.quad	0x3fcd9a5dbdc76390              # double 0.23127338186784785
	.quad	0x3fea3074ed226057              # double 0.81841512980737263
	.quad	0x3fe4aed1efc5f77a              # double 0.64634033995365248
	.quad	0x3fc5deae980ffa50              # double 0.17085821556971093
	.quad	0x3fe61d5c75dcd899              # double 0.6910841276174039
	.quad	0x3fc3cce265fdb35c              # double 0.15469007473020724
	.quad	0x3fed3f3785d16af2              # double 0.91396690498672073
	.quad	0x3fe98aaad4ec4d68              # double 0.79817716204199218
	.quad	0x3fe9b12619f13126              # double 0.80287461344554312
	.quad	0x3feeb55cb3868d51              # double 0.95963892997353117
	.quad	0x3fb6094f0061c6b8              # double 0.086079537957426733
	.quad	0x3fca33165e2883d8              # double 0.20468406293460251
	.quad	0x3fd3b2ca1bce66a8              # double 0.3077874442620705
	.quad	0x3fe28b40fa724733              # double 0.57949875750839508
	.quad	0x3fec015c57a5baf2              # double 0.87516610258702898
	.quad	0x3fcaff39489ca4fc              # double 0.21091381116392671
	.quad	0x3fc6d322137e5fe8              # double 0.17831827117765831
	.quad	0x3fefeb4b9005a895              # double 0.9974725544864379
	.quad	0x3fe1ef419cde2c16              # double 0.56045609129194207
	.quad	0x3fd2077aee2bb6d4              # double 0.28170655497420438
	.quad	0x3fdad0202055835c              # double 0.41895297200794857
	.quad	0x3fe7cd65d232fb4c              # double 0.74382296614190002
	.quad	0x3fe09787be1a61b4              # double 0.51849734429838756
	.quad	0x3fdbb5e27fd5f34c              # double 0.43297636493644087
	.quad	0x3f9db2848e95b000              # double 0.029001303866081685
	.quad	0x3fe6c8b5d09cf34a              # double 0.71200075859778988
	.quad	0x3fa9b860eb7cb640              # double 0.050234822031012261
	.quad	0x3fcc6d3463c470b0              # double 0.2220826613564717
	.quad	0x3fd075b9df08f28e              # double 0.25718542843586867
	.quad	0x3fd11cf1a61ffa9e              # double 0.26739159796844969
	.quad	0x3feb71d185958f0a              # double 0.8576438530985524
	.quad	0x3fc303e160b0d22c              # double 0.148555919849643
	.quad	0x3fef4d5f8471ddeb              # double 0.97819496029017949
	.quad	0x3fc92a6b94a19278              # double 0.19660706288700047
	.quad	0x3fed6381c4d9a944              # double 0.91839683959305107
	.quad	0x3fe0564cd70242bd              # double 0.51053468698417925
	.quad	0x3fec43c2ddadffb9              # double 0.88327163025677813
	.quad	0x3fb1ade588405890              # double 0.069059701694955899
	.quad	0x3fe0fff4f8f42c01              # double 0.5312447416666829
	.quad	0x3fc5cc766dfdcadc              # double 0.17030220385239303
	.quad	0x3febb42d430f861d              # double 0.86574423883229523
	.quad	0x3fe06eca311cc464              # double 0.51352414695987791
	.quad	0x3fe4729914b13dec              # double 0.63898901025271249
	.quad	0x3fe4c2d03ace0340              # double 0.64878093228626454
	.quad	0x3feb838a474efc4f              # double 0.85980714728783336
	.quad	0x3fdb99d996645aee              # double 0.4312652558013913
	.quad	0x3fc09f0c9a3a8cb8              # double 0.12985379725168911
	.quad	0x3fa0b3bff204bdd0              # double 0.032621382039333846
	.quad	0x3fc7438b78f3f640              # double 0.18174880414874117
	.quad	0x3fc3233ca9f705ac              # double 0.14951284693783629
	.quad	0x3fa0bd6754cf8920              # double 0.032695035078875501
	.quad	0x3fe2d5392f6b84d2              # double 0.58852824460714204
	.quad	0x3fee1eb21abceea5              # double 0.94124703619259675
	.quad	0x3fdfa4dcb7da3b7a              # double 0.49443738893835809
	.quad	0x3fe47418f94bceb2              # double 0.63917206469201049
	.quad	0x3fe4a4d4e7a37d17              # double 0.64512105218810489
	.quad	0x3fd96f07e01e89ba              # double 0.397401780001157
	.quad	0x3fd7e71d9cb6ba7a              # double 0.37348118118362772
	.quad	0x3fc5594d32e28454              # double 0.16678776726351663
	.quad	0x3fe03a4a7cc9db77              # double 0.50711559651141058
	.quad	0x3fe8e7f836cac9df              # double 0.77831659986105339
	.quad	0x3fefa1259e9fc29d              # double 0.98842125874769559
	.quad	0x3fec0b48800b3204              # double 0.87637734421292678
	.quad	0x3fc855e6cca18128              # double 0.19012150756589929
	.quad	0x3fe584341b7c2ab8              # double 0.67238812797707848
	.quad	0x3fcec8d96345a2ec              # double 0.24050443026796786
	.quad	0x3fe170ae2e6f3387              # double 0.5450049311563
	.quad	0x3feda16a3dc60758              # double 0.92595398011347196
	.quad	0x3fd1a77700f1357e              # double 0.27584624378217615
	.quad	0x3f85c3b66cb3ea00              # double 0.010627198402734628
	.quad	0x3feca1d0e3407732              # double 0.89475292573090415
	.quad	0x3fdc543fa0b9bece              # double 0.44264212318283291
	.quad	0x3feb050d52cec3d4              # double 0.84436670468687191
	.quad	0x3fe1259877b2424d              # double 0.53583930376232447
	.quad	0x3fd98c7e3207ab98              # double 0.39920000920999987
	.quad	0x3f8431d22bfde6c0              # double 0.0098606509852631196
	.quad	0x3fdbfe990ef46b7c              # double 0.43741442165781286
	.quad	0x3fe2474c4dd25bd2              # double 0.57120337676576072
	.quad	0x3fdd7309af790358              # double 0.46014635215765542
	.quad	0x3fe83793d07d6df6              # double 0.75678435059256688
	.quad	0x3fb939563be582b0              # double 0.098531140921759741
	.quad	0x3fe58f9fb6a4298a              # double 0.67378221199150912
	.quad	0x3fe9a1f49f0d3c92              # double 0.80101996483598925
	.quad	0x3fefc975541fc3df              # double 0.99334207945332397
	.quad	0x3fa7482de9aee930              # double 0.045472559715067695
	.quad	0x3fe7ac31c10f3de3              # double 0.73976981837216405
	.quad	0x3fc097deaf6878a8              # double 0.12963470043991276
	.quad	0x3fd21286e8290f32              # double 0.28238079711830999
	.quad	0x3fc4c5b3c39f15e4              # double 0.16228339244678047
	.quad	0x3fe529f61265e8f8              # double 0.66137221902252374
	.quad	0x3fece2ce9bba580d              # double 0.90268640914541864
	.quad	0x3fdcc8891058acf2              # double 0.44973970981909794
	.quad	0x3fe4ddf366a77083              # double 0.65209360170003128
	.quad	0x3fe13b20bbf1a98a              # double 0.53846775729952978
	.quad	0x3fdbc52c24821eba              # double 0.43390945019971705
	.quad	0x3fcc8e96d0a8e014              # double 0.22310147465191277
	.quad	0x3fd211cbd3387044              # double 0.28233619334219306
	.quad	0x3fde4c2134df383e              # double 0.47339658892895276
	.quad	0x3fe0b5ee04d856df              # double 0.52220822283080881
	.quad	0x3fc51379569b3654              # double 0.16465679863761074
	.quad	0x3fe0c5c915c0f44e              # double 0.52414373635077438
	.quad	0x3fcbb42bffe58df8              # double 0.21643590922313627
	.quad	0x3fe32e79ab5ce2c5              # double 0.59942325085929637
	.quad	0x3f72717d5789e700              # double 0.0045027633828966795
	.quad	0x3fddb67c24c91dfc              # double 0.46426299660058112
	.quad	0x3fee8bfe59c3b136              # double 0.95458905727495025
	.quad	0x3fd0a1abbbb5740e              # double 0.25986760455072122
	.quad	0x3fc21dd804028474              # double 0.14153576083939223
	.quad	0x3fdc33cb7310e394              # double 0.44066129910384544
	.quad	0x3fa5594ab35ca230              # double 0.041696867365605406
	.quad	0x3fe65cd5d34e44ae              # double 0.69883242865230044
	.quad	0x3fed39d74ac448bb              # double 0.91331066706540953
	.quad	0x3f8f54904bd74600              # double 0.015298011126023248
	.quad	0x3feddb28861bd1ac              # double 0.93300272172068821
	.quad	0x3fec36317f13d7da              # double 0.88161539859606397
	.quad	0x3fc55693ea0782d0              # double 0.1667046444627176
	.quad	0x3fe1529ca1c732da              # double 0.54133445355690957
	.quad	0x3fe85f495176abf2              # double 0.76163164053775589
	.quad	0x3fed31f83a8089dc              # double 0.9123498098963938
	.quad	0x3fc4052c8ccfbd8c              # double 0.15640789866982308
	.quad	0x3fe29e5f9170c291              # double 0.5818326798090131
	.quad	0x3fe8f9fe28559247              # double 0.78051669957910341
	.quad	0x3fe6333a9564fcb9              # double 0.69375352076158159
	.quad	0x3fc0002308e0baa8              # double 0.12500417645920447
	.quad	0x3fe0ba3d38052139              # double 0.52273426953710278
	.quad	0x3fd74b7bba29cac6              # double 0.36398213558201709
	.quad	0x3fc8848b1b30d568              # double 0.19154490306543015
	.quad	0x3fe5f2aeed1e1c56              # double 0.6858744269565118
	.quad	0x3fee78fd40ba2657              # double 0.95226919786473274
	.quad	0x3fe78b650fa12336              # double 0.73576596310258569
	.quad	0x3fe6b3b91d984c8a              # double 0.70943885593659783
	.quad	0x3fecf816a0c0ffec              # double 0.90528422734496194
	.quad	0x3fec88762e7895bc              # double 0.89165791584371545
	.quad	0x3fd8d7f0f100553e              # double 0.38818000350268622
	.quad	0x3fd2124678dd0d2e              # double 0.28236543467592667
	.quad	0x3fd0836254065f1c              # double 0.25801904874377768
	.quad	0x3fdd029470190ae8              # double 0.45328246066143985
	.quad	0x3fda326ac41c9662              # double 0.40932721282510987
	.quad	0x3fdc7cd9fa5f2fde              # double 0.44512032938359691
	.quad	0x3fec070699a8eb32              # double 0.87585763942420258
	.quad	0x3fd2ba6a0cb221ea              # double 0.29262782325579784
	.quad	0x3fe4731ce41ccf97              # double 0.63905186227065058
	.quad	0x3fe9b86e5f5827f7              # double 0.80376356718011166
	.quad	0x3fe4e138c2a3e1e4              # double 0.65249288573891961
	.quad	0x3fa0cf08621c0530              # double 0.032829534507991531
	.quad	0x3fd7cd6513a8e692              # double 0.37191130561732522
	.quad	0x3fc927089fbec688              # double 0.19650371360835472
	.quad	0x3fe042b332a028c3              # double 0.50814208877388756
	.quad	0x3fdfd34b7849cd20              # double 0.49727141138937903
	.quad	0x3feb5134a6feea2c              # double 0.85366280189857013
	.quad	0x3fcd885278fda13c              # double 0.2307227221274476
	.quad	0x3fe1a10aa3cfe1c6              # double 0.55090839380778145
	.quad	0x3fd5dfbc3f87f182              # double 0.34178072170450247
	.quad	0x3fe56959f6c167d6              # double 0.6691102809374978
	.quad	0x3fe6d2b74d599f1b              # double 0.71322217090070994
	.quad	0x3fdb6538adb4da7e              # double 0.42805306399842624
	.quad	0x3fe664977f2ecd46              # double 0.6997792705573509
	.quad	0x3fe1c33e92cf8043              # double 0.55508354829726902
	.quad	0x3fb7206790044558              # double 0.090338204059908889
	.quad	0x3fc34ea1a4717234              # double 0.15083714036417606
	.quad	0x3fb41d3f4c29e1e0              # double 0.078571277708654019
	.quad	0x3fd1a358c02629ee              # double 0.27559489025648432
	.quad	0x3fe03e5b98f35cef              # double 0.5076120364491582
	.quad	0x3fc42612145c90f0              # double 0.15741182321756453
	.quad	0x3fd5d748cdf4d70a              # double 0.34126491654329583
	.quad	0x3fd3073f60c8437a              # double 0.29731735659975522
	.quad	0x3fea7af58f6c804e              # double 0.82750967037646617
	.quad	0x3fe8c9a4ccba5b2b              # double 0.77461471544197502
	.quad	0x3fd65bfdcdc177d8              # double 0.34936471074422348
	.quad	0x3fe895d8f55a3bf6              # double 0.76829193039327381
	.quad	0x3fe862de26447eec              # double 0.76206881975300921
	.quad	0x3fede7f7a5c8a1f6              # double 0.93456632976182052
	.quad	0x3fef1c792549b918              # double 0.97222573550041868
	.quad	0x3fdd2e79f3fe529e              # double 0.4559616930721776
	.quad	0x3fd1ce716b8be976              # double 0.27822528364745069
	.quad	0x3fe736e90be87d4f              # double 0.72545292211354162
	.quad	0x3fe219ace38c08aa              # double 0.56563419764304013
	.quad	0x3fdb8eabe87dcc22              # double 0.43058297828901193
	.quad	0x3fec927cc84309b3              # double 0.89288176644941186
	.quad	0x3fe06ec5f2306c67              # double 0.51352212240761907
	.quad	0x3fd6d4722d4d9604              # double 0.35671667503478965
	.quad	0x3fe01ad084c10ec2              # double 0.50327325752774521
	.quad	0x3fdf307c54d40916              # double 0.48733433040628549
	.quad	0x3fbdbf81d83d1c18              # double 0.11620341805711154
	.quad	0x3fe26091febf4a83              # double 0.57428836589163301
	.quad	0x3feae24572875ed8              # double 0.84012100571541293
	.quad	0x3fd6d02f4ee3bf40              # double 0.35645659164491761
	.quad	0x3fc4afc40ec8b268              # double 0.16161394807695051
	.quad	0x3fda80378165caf8              # double 0.41407573353278293
	.quad	0x3fd6a89aa9a57f7e              # double 0.35404078070677503
	.quad	0x3fc26170628c8a30              # double 0.14359860240900124
	.quad	0x3fbf05b2d1b37a00              # double 0.12118070239692003
	.quad	0x3fdea28d8eeebc3a              # double 0.47867144544847273
	.quad	0x3fee1d0d6d761649              # double 0.94104644183307429
	.quad	0x3fbdab54305e75f8              # double 0.11589552098163114
	.quad	0x3fe685d782de5437              # double 0.70383811531303919
	.quad	0x3fe8bf2750a06eee              # double 0.77333417651558789
	.quad	0x3fe5e1d7b74c33fc              # double 0.68381868172002624
	.quad	0x3fec82c75dbabc44              # double 0.89096420580416024
	.quad	0x3fdc46e96c85737e              # double 0.44182811353476115
	.quad	0x3fdf8288dc145778              # double 0.49234220020422681
	.quad	0x3fef1b6aa445a873              # double 0.97209674915690269
	.quad	0x3fe868174b470bc0              # double 0.76270641996995181
	.quad	0x3fec2a51b7fca3f0              # double 0.88016591963707747
	.quad	0x3febc0ee4c55f2af              # double 0.86730112943003757
	.quad	0x3fd3042a66b6c406              # double 0.29712924986512268
	.quad	0x3fd6a39d77049214              # double 0.35373627302968313
	.quad	0x3fe6044015d7eeda              # double 0.68801883951479259
	.quad	0x3fe5a5b59768cca4              # double 0.67647819111006813
	.quad	0x3febece0ee4f4f9f              # double 0.87266584916004664
	.quad	0x3fddbaaff2a8ae62              # double 0.4645194883075644
	.quad	0x3fe1f1e553913912              # double 0.56077829667791179
	.quad	0x3fe02b9c5662a5fa              # double 0.50532357093942371
	.quad	0x3fed33abda88b319              # double 0.91255753214281576
	.quad	0x3fe54718260e7b5e              # double 0.66492850716518226
	.quad	0x3f7f742160bf3f80              # double 0.007679109938138029
	.quad	0x3fb70defaacf0690              # double 0.090056399537411957
	.quad	0x3fec94ca84f6ce6b              # double 0.89316297502086905
	.quad	0x3fc17530ba180030              # double 0.13638886534317995
	.quad	0x3fc8f5fa83111670              # double 0.19500666999572358
	.quad	0x3fdb708fe275c618              # double 0.42874524226417199
	.quad	0x3f950d0d942d14a0              # double 0.020557605904532594
	.quad	0x3fe4f8b6dbfe5df9              # double 0.65536063163284475
	.quad	0x3fd448f47b535fc2              # double 0.3169528202392905
	.quad	0x3fde4f0f3a09bf24              # double 0.47357540767460393
	.quad	0x3fed932d567abf7d              # double 0.92421595469021123
	.quad	0x3fe7bc5e03fcf403              # double 0.74174404887128309
	.quad	0x3fef3e8deed72b8c              # double 0.97638603828942072
	.quad	0x3f993ce663cf5a60              # double 0.024646377412717135
	.quad	0x3feb3076ecaaa9fb              # double 0.84966608261066712
	.quad	0x3fd24d3fe659898a              # double 0.28596494193166022
	.quad	0x3fe0072361716a44              # double 0.50087136298982005
	.quad	0x3fcebc43e83de4ec              # double 0.2401203998559035
	.quad	0x3fc386134fb6a7cc              # double 0.1525291575647415
	.quad	0x3fbb74f1ccf973f8              # double 0.10725318197496836
	.quad	0x3fc31de3aa400048              # double 0.14934964955318919
	.quad	0x3fecbdd1553bc4dc              # double 0.89817110678827871
	.quad	0x3fe7ad0a770554ea              # double 0.73987315412764798
	.quad	0x3fb62ed543c694a0              # double 0.086652115866473256
	.quad	0x3fd5860690fd1186              # double 0.33630527648008302
	.quad	0x3fd0565b70021e18              # double 0.25527082384403021
	.quad	0x3fe7f2e43d09a471              # double 0.74839984818858174
	.quad	0x3fe3bdf37cdd9845              # double 0.61693739307225626
	.quad	0x3fea39b6e7f53f4c              # double 0.81954522423073106
	.quad	0x3feeb795cda1450f              # double 0.95991029893971979
	.quad	0x3fd37ee352ff9c66              # double 0.30461962800331432
	.quad	0x3fe1a21bed854a91              # double 0.55103870764499352
	.quad	0x3fe810a8c1a8cee8              # double 0.75203359436133344
	.quad	0x3fef1dd2b7641315              # double 0.97239051645792307
	.quad	0x3fd50e70a4a89a02              # double 0.32900634841863063
	.quad	0x3fed8ae7e761e8b8              # double 0.92320628349195655
	.quad	0x3fde5db76cea837c              # double 0.47447000156721919
	.quad	0x3fe5bb28eac64615              # double 0.6790966592254245
	.quad	0x3fe3d1149c186997              # double 0.61927252280593137
	.quad	0x3fe40eb31a20ef3f              # double 0.62679438689472267
	.quad	0x3fed73dd10bec033              # double 0.92039349813967986
	.quad	0x3feb6289846fa98c              # double 0.85577846399728363
	.quad	0x3fc8b76a5bde7dc8              # double 0.1930973957614539
	.quad	0x3fec33ed1885f18c              # double 0.88133864202204525
	.quad	0x3fe056dc823f9e81              # double 0.51060319365656437
	.quad	0x3fc95cb620c16728              # double 0.19814182853115736
	.quad	0x3fca334ee3791724              # double 0.20469080073433432
	.quad	0x3faf74b6d3c74d10              # double 0.061437333442564079
	.quad	0x3fe3da2185a17e43              # double 0.6203773126580433
	.quad	0x3fe93ea8ba85e9a2              # double 0.78889881544391849
	.quad	0x3fe15b45c41b5d3c              # double 0.542391665478966
	.quad	0x3fe38457f00acdef              # double 0.60990521319621205
	.quad	0x3feb9638bdb37530              # double 0.86208760310151966
	.quad	0x3fc23f953a9c7d10              # double 0.1425653968990237
	.quad	0x3f6f6cce6e5c7900              # double 0.0038360626084702476
	.quad	0x3fdfb4880be33924              # double 0.49539376412293934
	.quad	0x3fd20f6c78e1349c              # double 0.28219138912829478
	.quad	0x3fd820a169a3c820              # double 0.37699160877594018
	.quad	0x3fd58286c79d5ba0              # double 0.3360917043077567
	.quad	0x3fefaf001bd7d60b              # double 0.99011235654933338
	.quad	0x3fc025ba2ff77204              # double 0.12615134565466246
	.quad	0x3fd9495900ec9060              # double 0.39510178652040473
	.quad	0x3fbd992f92682e70              # double 0.11561868023289334
	.quad	0x3fe32e8e504288ca              # double 0.59943309474717776
	.quad	0x3fea42f1d48ad960              # double 0.8206719542711589
	.quad	0x3fa7d747fd477670              # double 0.046564340274682148
	.quad	0x3fde5bb365e7ae68              # double 0.47434697105084078
	.quad	0x3fe1ff4f30a7f8a9              # double 0.56241569045211748
	.quad	0x3fd7d42581a2cce8              # double 0.37232339534530334
	.quad	0x3fda3e460628cfde              # double 0.41005087472444568
	.quad	0x3fd7f8d791e00266              # double 0.37456311460122149
	.quad	0x3fe722b3670e6019              # double 0.7229859364333634
	.quad	0x3fececed94bf2d3d              # double 0.90392188121896988
	.quad	0x3fef0d61f919a85e              # double 0.97038363125217209
	.quad	0x3fdf30866a350750              # double 0.48733673450270931
	.quad	0x3fdbe45a081a89de              # double 0.4358124808442464
	.quad	0x3fdd3cdbe7ce8e8a              # double 0.45683953893078721
	.quad	0x3fddfe06e5945f50              # double 0.46862957401161953
	.quad	0x3fe040a4ef062894              # double 0.50789114651094502
	.quad	0x3fd7039f487fe2b0              # double 0.35959608154329725
	.quad	0x3feadff97c000db8              # double 0.83984064310828099
	.quad	0x3fca9cd8be64b718              # double 0.20791158005288746
	.quad	0x3fee08210b4144fb              # double 0.93849231909021513
	.quad	0x3fb9ccd505622850              # double 0.10078174001151408
	.quad	0x3fe80787ea17dffd              # double 0.7509193012365355
	.quad	0x3fe6dfa31d031002              # double 0.71479945818327928
	.quad	0x3fc1c1516398c094              # double 0.1387120949089008
	.quad	0x3fc84a207c4c5be0              # double 0.18976217335941126
	.quad	0x3fd1479240bc30be              # double 0.26999336549557629
	.quad	0x3fea4a67b5823c43              # double 0.82158265543865416
	.quad	0x3fdfa59353c5d2c2              # double 0.4944809263318285
	.quad	0x3fb1a67ded371ae8              # double 0.068946714795952269
	.quad	0x3fde30f67fe0bcce              # double 0.47173845756601629
	.quad	0x3fde2a829ecd73f8              # double 0.47134461887418366
	.quad	0x3fd55d2d5afd52b4              # double 0.33381208310792521
	.quad	0x3fb6fc46e752a8f0              # double 0.089786941027941713
	.quad	0x3fe0c25219121405              # double 0.52372078796963761
	.quad	0x3fc54a7f93a7b3fc              # double 0.16633600911828228
	.quad	0x3fdd503f4c667488              # double 0.45802290402372892
	.quad	0x3fe2feda70e2d9be              # double 0.59361002014230002
	.quad	0x3fe43d9373b7be5b              # double 0.63251659966585849
	.quad	0x3fed4daee3f4cbc1              # double 0.91573280832960091
	.quad	0x3fe9a228acc62ee9              # double 0.80104478592826667
	.quad	0x3fe03037d1544dd0              # double 0.50588599094992937
	.quad	0x3fe89507fbdeb58a              # double 0.76819228356696212
	.quad	0x3fc92b46efdbeb60              # double 0.19663321220272234
	.quad	0x3fc2b364221430a4              # double 0.14609958328253925
	.quad	0x3fe137f3cba6a5de              # double 0.53808011794643185
	.quad	0x3f6ad002c8811900              # double 0.0032730154380572474
	.quad	0x3fd0e07f3c20f860              # double 0.26370221015884532
	.quad	0x3fe1009a4e207140              # double 0.53132357844473432
	.quad	0x3fe3899e8e1e7099              # double 0.61054923780058623
	.quad	0x3fc3d83403aae474              # double 0.15503549746589196
	.quad	0x3fd163a5db22c754              # double 0.2717070236204695
	.quad	0x3fe967dfeca8dee9              # double 0.79393001768673088
	.quad	0x3fd15ae020812846              # double 0.27117160009641272
	.quad	0x3fed33d1c82994cd              # double 0.91257561773513773
	.quad	0x3feb7268199713c3              # double 0.85771565435481312
	.quad	0x3feacf9aded7a8cd              # double 0.8378424026862149
	.quad	0x3fdd970edc90bb56              # double 0.46234485187135499
	.quad	0x3fe3cb737b6280c3              # double 0.61858533953275019
	.quad	0x3fe81a5352fce52e              # double 0.75321356018608809
	.quad	0x3fef8aa600353930              # double 0.98567485848051284
	.quad	0x3fda6a569cfe9448              # double 0.41274037677277819
	.quad	0x3fe2e20f6d3da89b              # double 0.59009524665931978
	.quad	0x3fe442a8cb533c7f              # double 0.6331371279901673
	.quad	0x3fef56a423e45db8              # double 0.97932631502310751
	.quad	0x3fe606ddb73f835e              # double 0.68833814421314421
	.quad	0x3fd9db7d010c0d66              # double 0.40402150251630642
	.quad	0x3fee9f1b17522b6a              # double 0.95692209772947234
	.quad	0x3fd50691491ae392              # double 0.32852584971583909
	.quad	0x3fe65352a2302f6f              # double 0.69767123868358094
	.quad	0x3fee832839a2b31f              # double 0.95351039177839769
	.quad	0x3fa3f2b66d1caf90              # double 0.038961125201551927
	.quad	0x3fda4dea79a56a8c              # double 0.41100561027057192
	.quad	0x3fdd6ab6a98ca854              # double 0.45963827664912071
	.quad	0x3fe86b50d3fdcb37              # double 0.76310006527487573
	.quad	0x3fe5ab79e5c58d6f              # double 0.67718214871676519
	.quad	0x3fe420156706acb7              # double 0.62891645548133723
	.quad	0x3fd729517f437286              # double 0.36189687183449626
	.quad	0x3feb754fad3be756              # double 0.85807021937146533
	.quad	0x3fd27c8b36a02aca              # double 0.28885155043159882
	.quad	0x3fe4ac565e239b90              # double 0.64603727709332937
	.quad	0x3fe1ff2ae0291b6c              # double 0.5623983743797516
	.quad	0x3fe029f198de342e              # double 0.50512008530643526
	.quad	0x3fdc3caba3f64ca2              # double 0.44120303165363783
	.quad	0x3fe1f21f9c41766d              # double 0.56080608862585068
	.quad	0x3fe6cbfa40798c49              # double 0.71239960282071835
	.quad	0x3fdbdff6e96d09aa              # double 0.43554470820904589
	.quad	0x3feba4fddc2cebeb              # double 0.86389058115980555
	.quad	0x3fea62768e14bd5a              # double 0.82451942205618001
	.quad	0x3fdff365f82727c4              # double 0.49923085435568404
	.quad	0x3f9b1e2987e5d440              # double 0.026482247275869009
	.quad	0x3fe38db8a3b8a663              # double 0.6110499570542739
	.quad	0x3faddeab447109e0              # double 0.058339454750711672
	.quad	0x3fdf47a55079341e              # double 0.48874791010604379
	.quad	0x3fe6fec6dc47c6d5              # double 0.71860068343650119
	.quad	0x3fe78c1d85c277b0              # double 0.73585392117433024
	.quad	0x3fd9a48a0272326e              # double 0.4006676696670074
	.quad	0x3fc5b4ad5726cd14              # double 0.16957632785270305
	.quad	0x3fe3fb299883e397              # double 0.62440948284266795
	.quad	0x3fe300e60fe83a9b              # double 0.59385970217575179
	.quad	0x3fe230d87aad3ad5              # double 0.56846260032929286
	.quad	0x3fe93f8f3cc7d676              # double 0.78900873061384291
	.quad	0x3feb9ecaaf878368              # double 0.86313375742984721
	.quad	0x3feeb23a6dd4c8e4              # double 0.95925637675670971
	.quad	0x3fec8e9ac05d0927              # double 0.89240777560215612
	.quad	0x3fe93062b94b571e              # double 0.78715645017902935
	.quad	0x3fef25a631b89f6f              # double 0.9733458491436816
	.quad	0x3feeaffc555cd5aa              # double 0.95898262665166567
	.quad	0x3fe2d2e49c70973c              # double 0.58824377588891918
	.quad	0x3fe7a15ed20ec82a              # double 0.73844853426840484
	.quad	0x3fdb0ba911d3faf0              # double 0.4225866960622815
	.quad	0x3fca1be56e4e67e4              # double 0.20397632490204309
	.quad	0x3fea46395b1d8bc0              # double 0.82107227130870086
	.quad	0x3febf71f945b6adc              # double 0.87391642547603565
	.quad	0x3fe3675b0726f348              # double 0.60636664769081339
	.quad	0x3fcdbe986d660cd4              # double 0.2323790105984701
	.quad	0x3fef32aed6778403              # double 0.97493688476618023
	.quad	0x3fa654a8330e6ca0              # double 0.043614631874526966
	.quad	0x3fe9bdef553c951a              # double 0.80443541190894341
	.quad	0x3feacbb4f9ca70e4              # double 0.8373665693975707
	.quad	0x3fec9cfc92b90518              # double 0.89416340500625591
	.quad	0x3fd4ef9059377fec              # double 0.32712181770875648
	.quad	0x3f9287e1671b2640              # double 0.018096467893690127
	.quad	0x3febad90b4f03a0f              # double 0.86493716563728806
	.quad	0x3fefb68deafcad65              # double 0.99103446861174104
	.quad	0x3fe3031eab679026              # double 0.59413083531808719
	.quad	0x3fe51679dac9ce8c              # double 0.65899365169612301
	.quad	0x3feaba00de749eb8              # double 0.83520549248074527
	.quad	0x3fee4256326a1bc6              # double 0.94559774252490381
	.quad	0x3fec99b17845b0fe              # double 0.89376138201399136
	.quad	0x3fd1a9a933916a40              # double 0.2759802821725863
	.quad	0x3fe56e1bd41ac99c              # double 0.6696910040539481
	.quad	0x3fe11d69bed6c275              # double 0.53484046242927141
	.quad	0x3f8dcaa8473f8440              # double 0.014546694444961372
	.quad	0x3feb895d54905608              # double 0.86051813618058848
	.quad	0x3fd98c2ccf2a8f14              # double 0.39918060523108179
	.quad	0x3fd25d58017be3d8              # double 0.28694725174824276
	.quad	0x3fde16132a8d8bae              # double 0.47009734302099104
	.quad	0x3f8aa9d3d8453140              # double 0.013019232785744905
	.quad	0x3feef0607107affc              # double 0.96684286190202284
	.quad	0x3fd8c7afa271640e              # double 0.38718787063186333
	.quad	0x3fe205cac304e779              # double 0.56320703591994381
	.quad	0x3fec164139dac9d5              # double 0.87771664905295188
	.quad	0x3fce9b9707253244              # double 0.23912322853938595
	.quad	0x3fa3dc9372eaaf90              # double 0.038792236116335421
	.quad	0x3feb8710a6268468              # double 0.86023743106137562
	.quad	0x3fea78ef047f54c5              # double 0.82726240995784706
	.quad	0x3fdf564c43b41d36              # double 0.48964220630337552
	.quad	0x3fdbd1b7e8dc54f2              # double 0.43467519512462538
	.quad	0x3fe5e8323cf21bc6              # double 0.68459426787819022
	.quad	0x3fd5480f4a4179f6              # double 0.33252317668475884
	.quad	0x3fdea432ae687d8c              # double 0.47877184898421699
	.quad	0x3feb666cf7d0a791              # double 0.85625313187959951
	.quad	0x3fc1373af2fc810c              # double 0.13449799408500274
	.quad	0x3fbeefed187d2f70              # double 0.12084848258854008
	.quad	0x3fe4dd17182910d4              # double 0.6519885513194148
	.quad	0x3f9a2722364e2900              # double 0.025539907993825217
	.quad	0x3fe4671c9989a76f              # double 0.63758687961420246
	.quad	0x3fe8b6b2c09e2ab1              # double 0.77230203266784347
	.quad	0x3fea9294daff3738              # double 0.8303932454379952
	.quad	0x3fe1e20e3b4c69a2              # double 0.55884467679725369
	.quad	0x3fc9acaa1612f97c              # double 0.20058179929578646
	.quad	0x3feb1b85e6f198ba              # double 0.84710974794577187
	.quad	0x3feb3d59d0f21d94              # double 0.85123911676139352
	.quad	0x3fee19cd56c44061              # double 0.94064967104533193
	.quad	0x3f517c97acc55200              # double 0.0010673028183038058
	.quad	0x3fe9d2a6b9458ea2              # double 0.80696426568870927
	.quad	0x3fbe548e80499d90              # double 0.11847773201008338
	.quad	0x3fd41c3c86beecf6              # double 0.31422341498155448
	.quad	0x3fef57d7d231b5e6              # double 0.9794730286936868
	.quad	0x3fcce2b497c35db0              # double 0.22566850099859215
	.quad	0x3fefbc3469541863              # double 0.99172421047184078
	.quad	0x3feaf44d9e1a61de              # double 0.84232216720107167
	.quad	0x3fd30dcdd8b9d9e0              # double 0.29771753468176421
	.quad	0x3fda288ffa3c944a              # double 0.40872573315784122
	.quad	0x3fc3ac258d01c8dc              # double 0.15369099984270107
	.quad	0x3fdb600b767cdb42              # double 0.42773710795465913
	.quad	0x3fc376f98f2f1544              # double 0.15206832400705583
	.quad	0x3fa25c2cc9ff08a0              # double 0.035859489114515641
	.quad	0x3fd3b8352dfdda38              # double 0.30811814776771795
	.quad	0x3fe25defec24e697              # double 0.573966942996054
	.quad	0x3feb5646d8e49f9e              # double 0.85428182947088138
	.quad	0x3fed5dee2daabb89              # double 0.91771611136742692
	.quad	0x3fd23dc854aef108              # double 0.28502090711460015
	.quad	0x3feb06eaab8a07b0              # double 0.84459432128664069
	.quad	0x3fe2d92e43e29e8a              # double 0.58901131876787471
	.quad	0x3fbc81d5890e4750              # double 0.11135611148918412
	.quad	0x3fb368140e8b74b0              # double 0.075806859541858839
	.quad	0x3fd593528fa4dd96              # double 0.33711685207114195
	.quad	0x3fe6b6bfd4db161c              # double 0.70980826924705154
	.quad	0x3fa2e76788d4d740              # double 0.03692172570519725
	.quad	0x3fef2d7733b25b6c              # double 0.9743000039769476
	.quad	0x3fac17a70b3f7860              # double 0.054867954371488947
	.quad	0x3fd3bb9089fa304c              # double 0.30832303499551439
	.quad	0x3fdd6310f3e931ba              # double 0.45917152232575698
	.quad	0x3fe807037d4bdff6              # double 0.75085615608168044
	.quad	0x3fe9e1e9665d7853              # double 0.80882711404025043
	.quad	0x3fd9948e28078624              # double 0.39969209584350751
	.quad	0x3fe5776551992ad1              # double 0.67082467972917403
	.quad	0x3fd3f9543e3b9d36              # double 0.31209283902576901
	.quad	0x3fd6dbdf2798314e              # double 0.3571699034371435
	.quad	0x3fde5a171ac84300              # double 0.47424867263275416
	.quad	0x3fea2ad160d35c23              # double 0.81772679244284452
	.quad	0x3fea7003cabd377a              # double 0.82617368314252748
	.quad	0x3fce977c32df124c              # double 0.23899795993760831
	.quad	0x3fc849f2ddc3a4a8              # double 0.18975673511821367
	.quad	0x3feda05212493311              # double 0.92582038470718164
	.quad	0x3fca7ac064fa9cc8              # double 0.20687107973683383
	.quad	0x3fda60e0181649a4              # double 0.41216280319454257
	.quad	0x3fe8a24f27797920              # double 0.76981313428749231
	.quad	0x3fce20334fbcc56c              # double 0.23535767930438156
	.quad	0x3fdc7acd24c75f50              # double 0.44499519912414076
	.quad	0x3fed3cf4b052a604              # double 0.91369089544349479
	.quad	0x3fc26adea9134654              # double 0.14388640647534834
	.quad	0x3fde6f480d6b74be              # double 0.47554208097956152
	.quad	0x3fd9b8f227c53ef0              # double 0.40191320308529921
	.quad	0x3fe159bc5f3a38dc              # double 0.54220408057315295
	.quad	0x3fe1ff2d96f0bc3c              # double 0.5623996685079713
	.quad	0x3fe47fe5a74ee37e              # double 0.64061243703245885
	.quad	0x3fe9c2220692d7a2              # double 0.80494786533266827
	.quad	0x3fc3930f1c65e12c              # double 0.15292538534755218
	.quad	0x3fd8dd8e233870ee              # double 0.38852265777110417
	.quad	0x3fbfd62d16bb0cc0              # double 0.12436181836078486
	.quad	0x3fdf9c1afd219be4              # double 0.49390291900493666
	.quad	0x3fec979196a018c7              # double 0.89350203913706927
	.quad	0x3fd3e850407084b2              # double 0.31105428975031224
	.quad	0x3fe93b95770234fe              # double 0.78852341884490307
	.quad	0x3fec792e563d1e1f              # double 0.88979260295394969
	.quad	0x3fd1459ec987d9d0              # double 0.26987428360680799
	.quad	0x3feaaf14731dadc0              # double 0.83387205585079727
	.quad	0x3fe18d53a0f0f9d3              # double 0.548501791323185
	.quad	0x3fd92d000d507e2e              # double 0.3933715944312749
	.quad	0x3fd3e9159d1be890              # double 0.31110134451558569
	.quad	0x3fc6fbbfcaab1524              # double 0.17955777545845664
	.quad	0x3fe1bea354023a1b              # double 0.55452124031018302
	.quad	0x3fe8ad18465468b4              # double 0.7711297391536136
	.quad	0x3fe88d0970f33be3              # double 0.76721641598294033
	.quad	0x3fc2429389507a78              # double 0.14265674786379967
	.quad	0x3feaec11ef94a386              # double 0.84131714623536946
	.quad	0x3fb85c62d275b728              # double 0.095159698850434737
	.quad	0x3fb5e4519120ef08              # double 0.085515115672873176
	.quad	0x3fc1c64e2b0f19fc              # double 0.13886429884423979
	.quad	0x3fd0ec50b4529056              # double 0.26442353829975696
	.quad	0x3feea8a22a7d8b5d              # double 0.95808513926418081
	.quad	0x3fb82cdbc8df1120              # double 0.0944344869049627
	.quad	0x3fe30b78ba93cafa              # double 0.59515034142381684
	.quad	0x3fccb062a24d9f10              # double 0.22413285183869691
	.quad	0x3fe1a087e260fec2              # double 0.55084604467989373
	.quad	0x3fab966f4708ed50              # double 0.053882100507019914
	.quad	0x3fed7da661e62401              # double 0.92158812638183474
	.quad	0x3fc7a617f5c7b7dc              # double 0.18475627423271035
	.quad	0x3fdf06bcdfba5d20              # double 0.48478624199329268
	.quad	0x3fe64214abb21a45              # double 0.69556649717635166
	.quad	0x3fe1bfca8d616057              # double 0.5546620141349291
	.quad	0x3fe43deeca8dcdd2              # double 0.63256015359223228
	.quad	0x3fecaf96cf924a02              # double 0.8964342168931696
	.quad	0x3fe2a9e59b76ea50              # double 0.58323936809694921
	.quad	0x3fe29c619b16ab56              # double 0.58158951082928456
	.quad	0x3fc4a9251feca900              # double 0.1614118963128206
	.quad	0x3fdbe9f12bd1e27e              # double 0.4361536910942404
	.quad	0x3fe5b0e597d65746              # double 0.67784385352818144
	.quad	0x3fd673689e539a5c              # double 0.35079398595408917
	.quad	0x3fee2bc55e398bc6              # double 0.94284313586501223
	.quad	0x3f8b704e228e55c0              # double 0.013397798947873407
	.quad	0x3fe64c9bcbe923b3              # double 0.69685163332279954
	.quad	0x3fc13ad9b0ef65e8              # double 0.13460847033893164
	.quad	0x3fa9e3695f6508a0              # double 0.050563137907844835
	.quad	0x3fe3c7fe77b4dace              # double 0.61816333179634753
	.quad	0x3fd004e9efc78224              # double 0.25029991546583319
	.quad	0x3fe58bbf6f6d78a0              # double 0.67330905688483611
	.quad	0x3f96bcde674811e0              # double 0.022204852155498389
	.quad	0x3fdc3ae76e419592              # double 0.44109521643834981
	.quad	0x3fe1a8e2c9ab4003              # double 0.55186595333543698
	.quad	0x3fed52d07875ac9c              # double 0.91635917212751705
	.quad	0x3fe1919a2ab30e25              # double 0.54902370776875797
	.quad	0x3fef85982e120269              # double 0.98505791662325947
	.quad	0x3fe5f6c818666896              # double 0.68637470975524439
	.quad	0x3fe38a17f27778d2              # double 0.61060712200903766
	.quad	0x3fee31e3ca91f09d              # double 0.94359006466358475
	.quad	0x3fe00997e6f63baa              # double 0.50117106542335432
	.quad	0x3fa47077ff1f0410              # double 0.039920568363875586
	.quad	0x3fe2388ceb43a246              # double 0.56940313291585976
	.quad	0x3fe7618aaa5b3114              # double 0.73065694115351443
	.quad	0x3feb9aeb87392c3d              # double 0.86266113673025979
	.quad	0x3fe61dfc66644842              # double 0.69116039274582186
	.quad	0x3fd51dba429caa80              # double 0.32993942742420046
	.quad	0x3fea01cb41b139d1              # double 0.81271899061703767
	.quad	0x3feb4949543b0ccb              # double 0.85269609881688646
	.quad	0x3fdbf0173247c244              # double 0.43652896795450524
	.quad	0x3fe1a8bd1ee8f262              # double 0.55184799229716597
	.quad	0x3f8c070bf1cb3780              # double 0.013685315433942469
	.quad	0x3fc9336f1cb43524              # double 0.19688214208182686
	.quad	0x3fe9517385e779e3              # double 0.79119278100170864
	.quad	0x3fe6533abab6bfae              # double 0.69765984027434569
	.quad	0x3fed63e6221e5e20              # double 0.91844469703477571
	.quad	0x3fe2d3979af91474              # double 0.58832912700803641
	.quad	0x3fe3c921b4d41b19              # double 0.61830220525812074
	.quad	0x3fe1071eaa0fd99c              # double 0.53211911406724566
	.quad	0x3fd7ca049c62f516              # double 0.37170520088314285
	.quad	0x3fc87f42220c1298              # double 0.19138361608942911
	.quad	0x3fec2d29e9c8a246              # double 0.88051314984210971
	.quad	0x3fef08765bf00232              # double 0.96978300053166877
	.quad	0x3fd6dfe8b4b8d8f6              # double 0.35741632126463629
	.quad	0x3fd1264ec27e710c              # double 0.26796311372324122
	.quad	0x3fd2f903fea318e6              # double 0.29644870631126563
	.quad	0x3fe76142cb6141a8              # double 0.73062267038954065
	.quad	0x3fa940be4cbee1d0              # double 0.049322077625621241
	.quad	0x3fc45f1e3ce3f4e4              # double 0.15915277455488941
	.quad	0x3fee3acea2b086a9              # double 0.94467860961249983
	.quad	0x3fd0c199d2e7ae22              # double 0.26181645961944089
	.quad	0x3feef8864b8e0b5e              # double 0.96783747441109447
	.quad	0x3febcdaf4e261dfb              # double 0.86885800612884567
	.quad	0x3fe7a4351896f286              # double 0.73879484942115492
	.quad	0x3fc626bd5b893b48              # double 0.17305724114927501
	.quad	0x3febac7ece189349              # double 0.86480655911564341
	.quad	0x3fea43891b58925a              # double 0.82074408856403669
	.quad	0x3fd9327244e519e0              # double 0.3937040016939175
	.quad	0x3fd7a80aafc497ee              # double 0.36963145413244447
	.quad	0x3fc1d4e1c93ba618              # double 0.13930914235906822
	.quad	0x3fe026cd17dc15f8              # double 0.50473646793460514
	.quad	0x3fd90c6179a4e79e              # double 0.39138066176712438
	.quad	0x3fd2a0ca925b9d5c              # double 0.29106392185936669
	.quad	0x3fce21a6658dfb60              # double 0.23540191611024408
	.quad	0x3fe51f4ff91e656c              # double 0.66007231384280152
	.quad	0x3fa6211676b740d0              # double 0.04322118949096565
	.quad	0x3fec01858635cca1              # double 0.87518573964043267
	.quad	0x3fd10c88c2398cf6              # double 0.26639002768770526
	.quad	0x3fe6a4cf580a5f95              # double 0.70761840052999736
	.quad	0x3fbbec156df42440              # double 0.10907110151687593
	.quad	0x3fe71fec198830cf              # double 0.72264676081388213
	.quad	0x3fe201367c714ee8              # double 0.56264805131146733
	.quad	0x3fd33665ae6674ec              # double 0.30019514113685264
	.quad	0x3feedec9eeaa6c71              # double 0.96469589819333922
	.quad	0x3fe27f91175a9286              # double 0.57807211457527852
	.quad	0x3fe7b322e5c36898              # double 0.74061722636840255
	.quad	0x3fef127dfa06b1db              # double 0.9710073359797734
	.quad	0x3fdcf5392972cb40              # double 0.45246724174210229
	.quad	0x3fd3be4c6aefadd0              # double 0.30848989909165159
	.quad	0x3feb98faba402eed              # double 0.86242424370854354
	.quad	0x3fec5ca223e08e4b              # double 0.88630778319606784
	.quad	0x3feca0802efcdf31              # double 0.89459237267781166
	.quad	0x3fee66cd62f5d09f              # double 0.95004910782019525
	.quad	0x3fecde67b58ba247              # double 0.90214906175703724
	.quad	0x3fd51d802c0b10b0              # double 0.32992557812782319
	.quad	0x3feaf799670b19f1              # double 0.84272451520592828
	.quad	0x3f88193f50c3ad80              # double 0.011766905452950338
	.quad	0x3fe18ff128bd9ed4              # double 0.54882104832810308
	.quad	0x3fdea6dce5b38ac0              # double 0.47893450195094189
	.quad	0x3fd7d7395db5c364              # double 0.37251123572700906
	.quad	0x3fc05abe2b082734              # double 0.12776925183453047
	.quad	0x3fd7cd60ad04272c              # double 0.37191025634875774
	.quad	0x3fe47f4a2c4cdbe7              # double 0.64053829815281638
	.quad	0x3fe118fa3a0a0adc              # double 0.53429900489603765
	.quad	0x3fd37d1bbcb005f0              # double 0.30451100756189842
	.quad	0x3fee2a2830e26579              # double 0.94264611766554574
	.quad	0x3febaae83cce9d6c              # double 0.86461269260773354
	.quad	0x3fdcf95a782d7970              # double 0.45271932350251287
	.quad	0x3fe892234dd1e176              # double 0.76783909987629673
	.quad	0x3fec680aa779dfda              # double 0.88770039282007507
	.quad	0x3fa4d4cdf4a55a80              # double 0.040686069597247077
	.quad	0x3f8069c8178dfd40              # double 0.0080142624080951074
	.quad	0x3fe59b3fc1f1890b              # double 0.67520130042638138
	.quad	0x3fe51a7934c016cf              # double 0.65948162367632246
	.quad	0x3fe98d582da170d7              # double 0.79850396072608987
	.quad	0x3fd90890dc6d8c1e              # double 0.39114781881488792
	.quad	0x3febd41d34d3d09f              # double 0.86964283292629208
	.quad	0x3fe9502fa2149051              # double 0.79103833824457059
	.quad	0x3fb4e03ac22ff4f0              # double 0.081546471032158285
	.quad	0x3fb08fa64b457668              # double 0.064691918732444287
	.quad	0x3fe9539d2ec51c7b              # double 0.79145678648718787
	.quad	0x3fea40ae2eed056e              # double 0.82039555707176048
	.quad	0x3fee5d90587bc5c5              # double 0.94892136842661812
	.quad	0x3fed46a241cfb65e              # double 0.91487229207787002
	.quad	0x3fc80d0bf1daaf2c              # double 0.18789815243996466
	.quad	0x3fe5b736892fa496              # double 0.67861487192307623
	.quad	0x3fec57f8b606f084              # double 0.88573871185464314
	.quad	0x3fb4b793a0adda38              # double 0.080926157692240319
	.quad	0x3fe0cbe6f1280edd              # double 0.52489039517282843
	.quad	0x3fd292b898e632dc              # double 0.29020514422954391
	.quad	0x3fcafbd98b524ba4              # double 0.21081084540182105
	.quad	0x3fd223fbf2337822              # double 0.28344629909941166
	.quad	0x3fd5cee85dd9a8b8              # double 0.34075364270269004
	.quad	0x3fb96a9e8f271870              # double 0.099283132504838667
	.quad	0x3feff242a927d6d2              # double 0.99832280195433953
	.quad	0x3fc69732f1c6c458              # double 0.17648922734727779
	.quad	0x3fa3283b1e879110              # double 0.037416312672379104
	.quad	0x3fd630574e02cd9c              # double 0.3467005025697405
	.quad	0x3fed762419238c31              # double 0.92067150983746704
	.quad	0x3fd0cbe95cc0730e              # double 0.26244577462948449
	.quad	0x3fd663dc05162812              # double 0.34984493729337018
	.quad	0x3fef19fbf23b3562              # double 0.97192189513013383
	.quad	0x3fecbbf4bc03c08c              # double 0.89794384690869
	.quad	0x3fd7c928f74296be              # double 0.37165283342833877
	.quad	0x3fe1cef94feb6891              # double 0.55651536568918136
	.quad	0x3fd50c561f212052              # double 0.32887795486431515
	.quad	0x3fe8d960812bbd9f              # double 0.77653527477916728
	.quad	0x3fec39b84ffd8fa9              # double 0.88204589484347651
	.quad	0x3fedf9fe1836f446              # double 0.93676666955401156
	.quad	0x3fcc2d3bd9e275fc              # double 0.22013042582413778
	.quad	0x3fd3e882d294221c              # double 0.31106634678192946
	.quad	0x3faedb1623005b80              # double 0.06026524712813508
	.quad	0x3fe69c452915870d              # double 0.70657594703900062
	.quad	0x3fef56dd15df73c8              # double 0.97935346862834027
	.quad	0x3fe5c1a224f7f252              # double 0.67988688679140297
	.quad	0x3fd8b7a1c07ad5a8              # double 0.38620799824578933
	.quad	0x3fcafbe871f31154              # double 0.2108126217264138
	.quad	0x3fdce50cae740e18              # double 0.45148007427653303
	.quad	0x3fc82b64ea7ba760              # double 0.18882428597799628
	.quad	0x3fda1ba11e4b09d6              # double 0.40793636282265078
	.quad	0x3fe03c7a8f14d05f              # double 0.50738265939299854
	.quad	0x3fed7dc56fd4e624              # double 0.92160293428532158
	.quad	0x3fe110bda11bd76e              # double 0.53329354731134315
	.quad	0x3fef8fd78d99cbd3              # double 0.98630883842849426
	.quad	0x3fb52798168ab5d8              # double 0.082635407927873827
	.quad	0x3fefaee0c577b521              # double 0.99009741371051884
	.quad	0x3fe773ec6bf7f533              # double 0.73290082061399742
	.quad	0x3fe4d4f83273d74e              # double 0.65099725584034629
	.quad	0x3fdf00d66c70266e              # double 0.48442612256676554
	.quad	0x3fcec6e98be67a00              # double 0.24044532137936869
	.quad	0x3fe769c921ac8e5b              # double 0.73166328980409945
	.quad	0x3fea8190e294dfdf              # double 0.8283161569042895
	.quad	0x3fe9278c4866f255              # double 0.78607763424913435
	.quad	0x3fe3a61a4c290cc8              # double 0.61402621150082215
	.quad	0x3fe7792a792fef5c              # double 0.7335407607019806
	.quad	0x3fef7f7938265d79              # double 0.98431073157091397
	.quad	0x3fe9c742db2bd40f              # double 0.80557387167812233
	.quad	0x3fb41ac5428f6370              # double 0.078533486127879248
	.quad	0x3fef86c695ba192f              # double 0.98520211452049533
	.quad	0x3fe3a5fadc86feec              # double 0.61401122161620725
	.quad	0x3fef16dd33fe007d              # double 0.97154102472997261
	.quad	0x3fe884bb96aecbaa              # double 0.76620273046716147
	.quad	0x3fcff8c9da101440              # double 0.24977992198560806
	.quad	0x3f9d8d2e3869e720              # double 0.028858873551576569
	.quad	0x3fe222a80a4d28f7              # double 0.56673051845544264
	.quad	0x3fd4f0901d2303a8              # double 0.32718279691112651
	.quad	0x3fc91219890c4424              # double 0.19586486045639717
	.quad	0x3fe9de45176f297a              # double 0.80838255478856458
	.quad	0x3fe6f0fb828d7af8              # double 0.71691680429998339
	.quad	0x3fe33d2c267d6af8              # double 0.60121734159051154
	.quad	0x3fe272acd56b101f              # double 0.57649842913861338
	.quad	0x3fd181502410e496              # double 0.27351764223164687
	.quad	0x3fdb01edd71e8eea              # double 0.42199274070502091
	.quad	0x3fb28f9752bdbb38              # double 0.072503526401970997
	.quad	0x3feaadfba579365b              # double 0.83373815840759435
	.quad	0x3fdd5a4230ed9c22              # double 0.45863394525662404
	.quad	0x3feb1b82e2563e16              # double 0.84710830885336708
	.quad	0x3fd91b1de5efdfda              # double 0.39228007750307159
	.quad	0x3fd8a77001170240              # double 0.38521957498963744
	.quad	0x3fe9f8de36b1643c              # double 0.81162939722265248
	.quad	0x3fe8e993fee5611c              # double 0.77851295265557807
	.quad	0x3fce134d7cf64420              # double 0.23496407128962549
	.quad	0x3fbbfe00b2a5ee20              # double 0.10934452401664219
	.quad	0x3fe01f427d2393da              # double 0.50381588402944577
	.quad	0x3f9a45d84f995560              # double 0.025657062395415209
	.quad	0x3fded3c009ad7b50              # double 0.48167420334896338
	.quad	0x3fe816f78285f6a1              # double 0.75280356877165755
	.quad	0x3fe2bdf95ad00da0              # double 0.58569019066674244
	.quad	0x3fe01d16527c9a7a              # double 0.50355068312349194
	.quad	0x3fe0a39bdcafb2ad              # double 0.51997178175732517
	.quad	0x3fe12f26f0d0f3f6              # double 0.5370058730546805
	.quad	0x3fc81a6d54d925a4              # double 0.18830649035434732
	.quad	0x3fe47f0051da7b0f              # double 0.64050308215141338
	.quad	0x3fef3264a2dd1b0a              # double 0.97490150269808962
	.quad	0x3fe6214be2dedee4              # double 0.69156450567876648
	.quad	0x3fd9bed25e90d170              # double 0.40227183566027858
	.quad	0x3fcb4cda4e0a4c2c              # double 0.21328285990293361
	.quad	0x3fcaf549bd87a8bc              # double 0.21061059717550801
	.quad	0x3fcf0df368776d14              # double 0.24261324501899451
	.quad	0x3fe88a5b137aa41f              # double 0.76688913158898575
	.quad	0x3fdbbfb60c4e8942              # double 0.43357611848673028
	.quad	0x3fe2ec1c004f68fc              # double 0.59132194576821417
	.quad	0x3fe4c3823fda65e3              # double 0.64886581870376536
	.quad	0x3fe23e604032d74b              # double 0.57011425532139393
	.quad	0x3fc62f87f9f20534              # double 0.1733255358158573
	.quad	0x3fd5735f209df5ae              # double 0.33516672311074103
	.quad	0x3f98a0e0dccf1b40              # double 0.024051202275383377
	.quad	0x3fc34656a37ebc7c              # double 0.15058405860097313
	.quad	0x3fe1a6de6425830c              # double 0.55161971626157102
	.quad	0x3fd742603d156fb8              # double 0.36342626538475598
	.quad	0x3fe02c70b1b3740d              # double 0.50542483050560494
	.quad	0x3fe2bc309da84da5              # double 0.58547240059344985
	.quad	0x3fe7969a8eb49529              # double 0.73713424560688623
	.quad	0x3feea02f506713ae              # double 0.95705381110803045
	.quad	0x3fea779200356c3d              # double 0.82709598580129973
	.quad	0x3fd426add757aff6              # double 0.31486078290504282
	.quad	0x3fc0e94f3d646af8              # double 0.13212004182499704
	.quad	0x3fe8dffae7fe68c5              # double 0.77734132109915122
	.quad	0x3fdede0cc8328c6c              # double 0.4823028521588586
	.quad	0x3fe1f07b8aab688e              # double 0.56060578426264995
	.quad	0x3fe557714f569693              # double 0.66692414756535567
	.quad	0x3fb9556ef0c06608              # double 0.09895985963557774
	.quad	0x3fe5d7ff77142324              # double 0.68261693246413246
	.quad	0x3fbb993845350b00              # double 0.10780669870022663
	.quad	0x3fae7a306fb075b0              # double 0.059525979646632421
	.quad	0x3fdcff927deab470              # double 0.45309889122547187
	.quad	0x3fe5c84405f18a5d              # double 0.68069649849742186
	.quad	0x3fe1c422b8f5444c              # double 0.55519233822463709
	.quad	0x3fe33e736a99fe9c              # double 0.60137339420903713
	.quad	0x3fac71414d34f6c0              # double 0.055551567721051409
	.quad	0x3fe95e37981256b4              # double 0.79275111867419534
	.quad	0x3fdf41768b2fe27e              # double 0.48837054817662551
	.quad	0x3fb68adff2d81b88              # double 0.088056561267974343
	.quad	0x3fee28549dc4b0f7              # double 0.94242316068769483
	.quad	0x3fac64baf5fc3310              # double 0.055456011321529997
	.quad	0x3f874479b10cfc00              # double 0.011361075130137621
	.quad	0x3fe781b97a6c2994              # double 0.73458551321646093
	.quad	0x3fe3a3df6965525d              # double 0.61375399193873259
	.quad	0x3fde07ad5c6eb8de              # double 0.46921857859241622
	.quad	0x3fe5923310cec6c0              # double 0.67409661562688683
	.quad	0x3fe3936284fe75a3              # double 0.61174131369960028
	.quad	0x3fd4518fd97b882c              # double 0.31747814405946673
	.quad	0x3fbdf9b3d57e80e8              # double 0.11709140741595869
	.quad	0x3fdf38b45f8ad940              # double 0.48783597307501125
	.quad	0x3fe54a0ac454b20a              # double 0.66528833719127189
	.quad	0x3f94651c3f6d6b00              # double 0.019916955348302956
	.quad	0x3fe92c13f666771f              # double 0.78663061261224587
	.quad	0x3fd200c9d93a22bc              # double 0.28129812444289448
	.quad	0x3fde00f4e4ea7b68              # double 0.46880838732788854
	.quad	0x3fea8e9873e80626              # double 0.82990667951543595
	.quad	0x3fe8f8d6b3fca421              # double 0.78037581590354332
	.quad	0x3fd42c16d448afda              # double 0.31519098978855953
	.quad	0x3fa9c3bff2cf7660              # double 0.05032157744402066
	.quad	0x3fe80adea3f7f51b              # double 0.75132686638940827
	.quad	0x3fe11f7d52204540              # double 0.53509393730397647
	.quad	0x3fcc02bc7f314e00              # double 0.21883350573135374
	.quad	0x3fe8be0ddbe8d79e              # double 0.7731999678714947
	.quad	0x3fce05d8705ba184              # double 0.23455338941790782
	.quad	0x3fc79c4613175e1c              # double 0.18445659572783846
	.quad	0x3fb08da43a8eb160              # double 0.064661278053511406
	.quad	0x3fea7da44c668070              # double 0.82783713266327474
	.quad	0x3fef51865f948e99              # double 0.97870176952388299
	.quad	0x3fcc05a6bd2febbc              # double 0.21892246472984123
	.quad	0x3fe2e34763868e2d              # double 0.59024400175662139
	.quad	0x3fd9eadab124323c              # double 0.40495936678852096
	.quad	0x3fc5072a0cc8a954              # double 0.16428113578997261
	.quad	0x3fead25725599be8              # double 0.83817632002762554
	.quad	0x3fec1ecf2fbab80a              # double 0.87876090356962888
	.quad	0x3fd29c4f7a66c068              # double 0.29079043343791122
	.quad	0x3fe4c42c5b282d5d              # double 0.64894693187799712
	.quad	0x3fb7eac2c44bd800              # double 0.09342591564549707
	.quad	0x3fd564af24c4ba9e              # double 0.3342702731196513
	.quad	0x3fe94a08740ec6bd              # double 0.79028723399661482
	.quad	0x3fbf47f4dacf0f58              # double 0.12219171850216293
	.quad	0x3febc5933fec3505              # double 0.86786806569003316
	.quad	0x3fe0743217fb9c90              # double 0.51418404277946372
	.quad	0x3fdd5dfe570db5dc              # double 0.45886190892528389
	.quad	0x3fdb452480ae4308              # double 0.42609512869334809
	.quad	0x3fdaf4f2e7760ab8              # double 0.42120049098609114
	.quad	0x3fe9586d39a5c67e              # double 0.79204427012719214
	.quad	0x3fe0d9d2fba935c6              # double 0.52658986237082028
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
